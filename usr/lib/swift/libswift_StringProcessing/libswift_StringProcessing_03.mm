uint64_t protocol witness for Sequence.makeIterator() in conformance RangesSequence<A>(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RangesSequence<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t Executor.Matches.Iterator.nextSearchIndex(after:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a1 >> 14 != a2 >> 14)
  {
    return v4;
  }

  v5 = (v3 + *(a3 + 28));
  if (a1 >> 14 >= v5[3] >> 14)
  {
    return 0;
  }

  v6 = *(v3 + *(type metadata accessor for MEProgram(0) + 40));
  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    return String.UnicodeScalarView._foreignIndex(after:)();
  }

  v9 = *v5;
  v8 = v5[1];
  if ((*(v6 + 4 * v7 + 28) & 0x10000) != 0)
  {
    v14 = *v5;
    v15 = v5[1];
    return String.index(after:)();
  }

  v10 = _StringGuts.validateScalarIndex(_:)(v4, *v5, v5[1]);
  if ((v8 & 0x1000000000000000) != 0)
  {
    return String.UnicodeScalarView._foreignIndex(after:)();
  }

  v11 = v10 >> 16;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v20[0] = v9;
    v20[1] = v8 & 0xFFFFFFFFFFFFFFLL;
    v13 = *(v20 + v11);
  }

  else
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v12 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v12 = _StringObject.sharedUTF8.getter();
    }

    v13 = *(v12 + v11);
  }

  v17 = v13;
  v18 = __clz(v13 ^ 0xFF) - 24;
  if (v17 >= 0)
  {
    LOBYTE(v18) = 1;
  }

  return ((v11 + v18) << 16) | 5;
}

uint64_t Regex._literalPattern.getter()
{
  v7 = MEMORY[0x1E69E7CC0];
  v1 = *(*v0 + 24);

  LiteralPrinter.outputNode(_:)(v1);

  v2 = *(v7 + 16);
  MEMORY[0x193ACE810](v2);
  if (v2)
  {
    v3 = (v7 + 48);
    while ((*v3 & 1) == 0)
    {
      v5 = *(v3 - 2);
      v4 = *(v3 - 1);

      MEMORY[0x193ACE8E0](v5, v4);
      outlined consume of PatternSegment(v5, v4, 0);
      v3 += 24;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:

  return 0;
}

void LiteralPrinter.outputNode(_:)(char *a1)
{
  v2 = type metadata accessor for DSLTree.Atom(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree.QuantificationKind(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AST.Group.Kind();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AST.MatchingOptionSequence();
  *&v111 = *(v19 - 8);
  v20 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DSLTree._AST.GroupKind(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      v64 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v65 = *(v64 + 16);
      if (v65)
      {

        v66 = 32;
        do
        {
          v67 = *(v64 + v66);

          LiteralPrinter.outputNode(_:)(v67);

          v66 += 8;
          --v65;
        }

        while (v65);
        goto LABEL_39;
      }

      return;
    case 2uLL:
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28) != 1 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
      {
        v27 = v112;
        v28 = v112[1];
        goto LABEL_3;
      }

      v61 = v112;
      v68 = *v112;
      v69 = *(*v112 + 16);
      if (v69)
      {
        v14 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        LODWORD(v15) = *&v68[4 * v69 + 28];
        v70 = *v112;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_46:
          v72 = *(v68 + 2);
          v71 = *(v68 + 3);
          if (v72 >= v71 >> 1)
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v68);
          }

          *(v68 + 2) = v72 + 1;
          *&v68[4 * v72 + 32] = v15;
          *v61 = v68;
          if (!v19)
          {
            goto LABEL_71;
          }

          v113 = 3948328;
          v114 = 0xE300000000000000;
          MEMORY[0x193ACE8E0](v14, v19);
          MEMORY[0x193ACE8E0](62, 0xE100000000000000);
          v62 = v113;
          v26 = v114;
          v63 = v61[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_50;
        }
      }

      else
      {
        __break(1u);
      }

      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69 + 1, 1, v68);
      goto LABEL_46;
    case 3uLL:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v47 = swift_projectBox();
      v48 = *(v47 + *(v46 + 48));
      outlined init with copy of DSLTree._AST.AbsentFunction(v47, v26, type metadata accessor for DSLTree._AST.GroupKind);

      v49 = DSLTree._AST.GroupKind._patternString.getter();
      v110 = v50;
      if (v50)
      {
        v108 = v48;
        v109 = v49;
        a1 = *v112;
        v51 = *(*v112 + 16);
        if (v51)
        {
          LODWORD(v13) = *&a1[4 * v51 + 28];
          v52 = *v112;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_27;
          }
        }

        else
        {
          __break(1u);
        }

        a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51 + 1, 1, a1);
LABEL_27:
        v54 = *(a1 + 2);
        v53 = *(a1 + 3);
        if (v54 >= v53 >> 1)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, a1);
        }

        *(a1 + 2) = v54 + 1;
        v107 = a1 + 32;
        *&a1[4 * v54 + 32] = v13;
        v55 = v112;
        *v112 = a1;
        v56 = v55[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        v58 = *(v56 + 2);
        v57 = *(v56 + 3);
        if (v58 >= v57 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v56, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        *(v56 + 2) = v58 + 1;
        v59 = &v56[24 * v58];
        v60 = v110;
        *(v59 + 4) = v109;
        *(v59 + 5) = v60;
        v59[48] = 0;

        v61 = v112;
        v112[1] = v56;
        (*(v15 + 32))(v18, v26, v14);
        if ((*(v15 + 88))(v18, v14) == *MEMORY[0x1E69E8E58])
        {
          (*(v15 + 96))(v18, v14);
          v62 = v111;
          (*(v111 + 32))(v22, v18, v19);
          v63 = 0xFFFFFFFFFFFFFFBLL;
          if (!*(a1 + 2))
          {
            goto LABEL_94;
          }

          MatchingOptions.Representation.apply(_:)(v22);
          (*(v62 + 8))(v22, v19);
          *v61 = a1;
        }

        else
        {
          (*(v15 + 8))(v18, v14);
        }

        LiteralPrinter.outputNode(_:)(v108);

        v93 = v61[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        v95 = *(v93 + 2);
        v94 = *(v93 + 3);
        a1 = (v95 + 1);
        if (v95 >= v94 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v93, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        *(v93 + 2) = a1;
        v96 = &v93[24 * v95];
        *(v96 + 2) = xmmword_18E5ED0A0;
        v96[48] = 0;
        v61[1] = v93;
        v26 = *v61;
        if (*(*v61 + 2))
        {
          v97 = *v61;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v98 = *(v26 + 2);
            if (!v98)
            {
              goto LABEL_70;
            }

            goto LABEL_83;
          }
        }

        else
        {
          __break(1u);
        }

        v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
        v98 = *(v26 + 2);
        if (!v98)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          v99 = v61[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 2) + 1, 1, v99, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          }

          v101 = *(v99 + 2);
          v100 = *(v99 + 3);
          v63 = v101 + 1;
          if (v101 >= v100 >> 1)
          {
            v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v99, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          }

          *(v99 + 2) = v63;
          v102 = &v99[24 * v101];
          *(v102 + 2) = xmmword_18E5ED0B0;
          v102[48] = 0;
          for (v61[1] = v99; ; v61[1] = v63)
          {
            LiteralPrinter.outputNode(_:)(a1);
            v103 = v61[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            }

            v62 = *(v103 + 2);
            v104 = *(v103 + 3);
            a1 = (v62 + 1);
            if (v62 >= v104 >> 1)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v62 + 1, 1, v103, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            }

            *(v103 + 2) = a1;
            v105 = &v103[24 * v62];
            *(v105 + 2) = xmmword_18E5ED0A0;
            v105[48] = 0;
            v61[1] = v103;
            v26 = *v61;
            if (*(*v61 + 2))
            {
              v106 = *v61;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v98 = *(v26 + 2);
                if (v98)
                {
                  break;
                }

                goto LABEL_93;
              }
            }

            else
            {
              __break(1u);
            }

            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
            v98 = *(v26 + 2);
            if (v98)
            {
              break;
            }

LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 16) + 1, 1, v63, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
LABEL_50:
            v74 = *(v63 + 16);
            v73 = *(v63 + 24);
            if (v74 >= v73 >> 1)
            {
              v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v63, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            }

            *(v63 + 16) = v74 + 1;
            v75 = v63 + 24 * v74;
            *(v75 + 32) = v62;
            *(v75 + 40) = v26;
            *(v75 + 48) = 0;
          }
        }

LABEL_83:
        *(v26 + 2) = v98 - 1;
        *v61 = v26;
        return;
      }

      outlined destroy of MEProgram(v26, type metadata accessor for DSLTree._AST.GroupKind);

      v27 = v112;
      v28 = v112[1];
LABEL_3:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[24 * v30];
      *(v31 + 4) = a1;
      *(v31 + 5) = 0;
      v31[48] = 1;
      v27[1] = v28;
      return;
    case 4uLL:
      v32 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_12;
    case 5uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
      v27 = v112;
      v28 = v112[1];
      goto LABEL_3;
    case 6uLL:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v77 = swift_projectBox();
      v78 = *(v76 + 48);
      v79 = *(v77 + *(v76 + 64));
      outlined init with copy of DSLTree._AST.AbsentFunction(v77, v13, type metadata accessor for DSLTree._AST.QuantificationAmount);
      outlined init with copy of DSLTree._AST.AbsentFunction(v77 + v78, v9, type metadata accessor for DSLTree.QuantificationKind);

      LiteralPrinter.outputQuantification(_:_:_:)(v13, v9, v79);

      outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.QuantificationKind);
      outlined destroy of MEProgram(v13, type metadata accessor for DSLTree._AST.QuantificationAmount);
      return;
    case 7uLL:
      v92 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v114) = v92;
      LiteralPrinter.outputCustomCharacterClass(_:)(&v113);
      return;
    case 8uLL:
      v33 = swift_projectBox();
      outlined init with copy of DSLTree._AST.AbsentFunction(v33, v5, type metadata accessor for DSLTree.Atom);
      LiteralPrinter.outputAtom(_:)(v5);
      outlined destroy of MEProgram(v5, type metadata accessor for DSLTree.Atom);
      return;
    case 9uLL:
    case 0x10uLL:
      return;
    case 0xAuLL:
      v80 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v81 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v82 = *(v80 + 24);
      v83 = v112;
      v85 = *v112;
      v84 = v112[1];

      v86 = specialized LiteralPrinter.prepareQuotedLiteral(_:)(v81, v82, v85);
      v88 = v87;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 2) + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      v90 = *(v84 + 2);
      v89 = *(v84 + 3);
      if (v90 >= v89 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v84, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v84 + 2) = v90 + 1;
      v91 = &v84[24 * v90];
      *(v91 + 4) = v86;
      *(v91 + 5) = v88;
      v91[48] = 0;

      v83[1] = v84;
      return;
    case 0xCuLL:
      v32 = *swift_projectBox();
LABEL_12:

      LiteralPrinter.outputNode(_:)(v32);

      return;
    default:
      v34 = *(a1 + 2);
      v35 = v34[2];

      v36 = v112;
      if (v35)
      {
        v37 = v34[4];

        LiteralPrinter.outputNode(_:)(v37);

        v38 = v35 - 1;
        if (v35 != 1)
        {
          v39 = v34 + 5;
          v111 = xmmword_18E5ED0C0;
          do
          {
            v41 = *v39++;
            v40 = v41;
            v42 = v36[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            }

            v44 = *(v42 + 2);
            v43 = *(v42 + 3);
            if (v44 >= v43 >> 1)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            }

            *(v42 + 2) = v44 + 1;
            v45 = &v42[24 * v44];
            *(v45 + 2) = v111;
            v45[48] = 0;
            v36 = v112;
            v112[1] = v42;
            LiteralPrinter.outputNode(_:)(v40);

            --v38;
          }

          while (v38);
        }
      }

LABEL_39:

      return;
  }
}

uint64_t DSLTree._AST.GroupKind._patternString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AST.MatchingOptionSequence();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_SSGMd, &_s12_RegexParser6SourceV7LocatedVy_SSGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = type metadata accessor for AST.Group.Kind();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x1E69E8E10])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    v24 = 3948328;
    v25 = 0xE300000000000000;
    MEMORY[0x193ACE600](v23, v7);
    (*(v8 + 8))(v11, v7);
    MEMORY[0x193ACE8E0](v23[0], v23[1]);

    MEMORY[0x193ACE8E0](62, 0xE100000000000000);
    return v24;
  }

  if (v17 == *MEMORY[0x1E69E8E20])
  {
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  else
  {
    if (v17 == *MEMORY[0x1E69E8E58])
    {
      (*(v13 + 96))(v16, v12);
      (*(v3 + 32))(v6, v16, v2);
      v19 = AST.MatchingOptionSequence._patternString.getter();
      v21 = v20;
      (*(v3 + 8))(v6, v2);
      v24 = v19;
      v25 = v21;

      MEMORY[0x193ACE8E0](58, 0xE100000000000000);

      return v24;
    }

    if (v17 == *MEMORY[0x1E69E8E60])
    {
      return 40;
    }

    else
    {
      v22 = v17;
      result = 2178856;
      if (v22 == *MEMORY[0x1E69E8E08])
      {
        return 3817256;
      }

      else if (v22 == *MEMORY[0x1E69E8E28])
      {
        return 8142632;
      }

      else if (v22 == *MEMORY[0x1E69E8E38])
      {
        return 4079400;
      }

      else if (v22 == *MEMORY[0x1E69E8E68])
      {
        return 4013864;
      }

      else if (v22 != *MEMORY[0x1E69E8E30])
      {
        if (v22 == *MEMORY[0x1E69E8E48])
        {
          return 2768680;
        }

        else if (v22 == *MEMORY[0x1E69E8E00])
        {
          return 1027358504;
        }

        else if (v22 == *MEMORY[0x1E69E8E40])
        {
          return 557596456;
        }

        else if (v22 == *MEMORY[0x1E69E8E50])
        {
          return 708591400;
        }

        else if (v22 == *MEMORY[0x1E69E8E70])
        {
          return 0x3A72732A28;
        }

        else if (v22 == *MEMORY[0x1E69E8E18])
        {
          return 0x3A7273612A28;
        }

        else
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t LiteralPrinter.outputQuantification(_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v7 = type metadata accessor for AST.Atom.Number();
  v81 = *(v7 - 8);
  v8 = *(v81 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v79 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v78 = &v76 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v76 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  v20 = type metadata accessor for AST.Quantification.Amount();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4[1];
  if (LiteralPrinter.requiresGrouping(_:)(a3, *v4))
  {
    v77 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = a1;
    v27 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v29 = *(v25 + 2);
    v28 = *(v25 + 3);
    if (v29 >= v28 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v25 + 2) = v29 + 1;
    v30 = &v25[24 * v29];
    *(v30 + 2) = xmmword_18E5ED0D0;
    v30[48] = 0;
    v4 = v27;
    v27[1] = v25;
    LiteralPrinter.outputNode(_:)(a3);
    v31 = v27[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v7 = v77;
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[24 * v33];
    *(v34 + 2) = xmmword_18E5ED0A0;
    v34[48] = 0;
    v4[1] = v31;
    a1 = v76;
  }

  else
  {
    LiteralPrinter.outputNode(_:)(a3);
  }

  (*(v21 + 16))(v24, a1, v20);
  v35 = (*(v21 + 88))(v24, v20);
  if (v35 == *MEMORY[0x1E69E8AC8])
  {
    (*(v21 + 96))(v24, v20);
    v36 = v81;
    (*(v81 + 32))(v19, v24, v7);
    v84 = 123;
    v85 = 0xE100000000000000;
    v37 = AST.Atom.Number.value.getter();
    if ((v38 & 1) == 0)
    {
      v39 = v37;
      (*(v36 + 8))(v19, v7);
LABEL_15:
      v83 = v39;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v40);

      v41 = 125;
      v42 = 0xE100000000000000;
LABEL_19:
      MEMORY[0x193ACE8E0](v41, v42);
      v49 = v84;
      v48 = v85;
      v50 = v4[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v50 + 2) = v52 + 1;
      v53 = &v50[24 * v52];
      *(v53 + 4) = v49;
      *(v53 + 5) = v48;
      v53[48] = 0;

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_52;
  }

  if (v35 == *MEMORY[0x1E69E8AD0])
  {
    (*(v21 + 96))(v24, v20);
    v43 = v81;
    (*(v81 + 32))(v17, v24, v7);
    v84 = 123;
    v85 = 0xE100000000000000;
    v44 = AST.Atom.Number.value.getter();
    if ((v45 & 1) == 0)
    {
      v46 = v44;
      (*(v43 + 8))(v17, v7);
      v83 = v46;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v47);

      v41 = 32044;
      v42 = 0xE200000000000000;
      goto LABEL_19;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v35 == *MEMORY[0x1E69E8AC0])
  {
    (*(v21 + 96))(v24, v20);
    v55 = v80;
    v56 = v81;
    (*(v81 + 32))(v80, v24, v7);
    v84 = 11387;
    v85 = 0xE200000000000000;
    v57 = AST.Atom.Number.value.getter();
    if ((v58 & 1) == 0)
    {
      v39 = v57;
      (*(v56 + 8))(v55, v7);
      goto LABEL_15;
    }

    goto LABEL_53;
  }

  if (v35 == *MEMORY[0x1E69E8AB8])
  {
    (*(v21 + 96))(v24, v20);
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
    v60 = v81;
    v61 = *(v81 + 32);
    v62 = v78;
    v61(v78, v24, v7);
    v63 = v79;
    v61(v79, &v24[v59], v7);
    v84 = 123;
    v85 = 0xE100000000000000;
    v64 = AST.Atom.Number.value.getter();
    if ((v65 & 1) == 0)
    {
      v83 = v64;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v66);

      MEMORY[0x193ACE8E0](44, 0xE100000000000000);
      v67 = AST.Atom.Number.value.getter();
      if ((v68 & 1) == 0)
      {
        v39 = v67;
        v69 = *(v60 + 8);
        v69(v63, v7);
        v69(v62, v7);
        goto LABEL_15;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v35 == *MEMORY[0x1E69E8AB0])
  {
    v50 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v71 = *(v50 + 2);
    v70 = *(v50 + 3);
    if (v71 >= v70 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v50 + 2) = v71 + 1;
    v72 = xmmword_18E5ED100;
LABEL_50:
    v75 = &v50[24 * v71];
    *(v75 + 2) = v72;
    v75[48] = 0;
LABEL_24:
    v4[1] = v50;
    return LiteralPrinter.outputQuantificationKind(_:)(v82);
  }

  if (v35 == *MEMORY[0x1E69E8AD8])
  {
    v50 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v71 = *(v50 + 2);
    v73 = *(v50 + 3);
    if (v71 >= v73 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v71 + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v50 + 2) = v71 + 1;
    v72 = xmmword_18E5ED0F0;
    goto LABEL_50;
  }

  if (v35 == *MEMORY[0x1E69E8AE0])
  {
    v50 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v71 = *(v50 + 2);
    v74 = *(v50 + 3);
    if (v71 >= v74 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v71 + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v50 + 2) = v71 + 1;
    v72 = xmmword_18E5ED0E0;
    goto LABEL_50;
  }

LABEL_56:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double LiteralPrinter.outputCustomCharacterClass(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DSLTree.Atom(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v83 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v80 - v8;
  v9 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  *&v89 = *(v9 - 8);
  v10 = *(v89 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  *&v88 = &v80 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v80 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v80 - v22;
  v24 = *a1;
  v25 = *(a1 + 8);
  v85 = v13;
  v86 = v20;
  if (v25)
  {
    v19 = 0xE200000000000000;
    v26 = 24155;
    v27 = v87;
  }

  else
  {
    *&v81 = v21;
    v13 = *(v24 + 16);
    if (v13)
    {
      v26 = 0;
      v28 = MEMORY[0x1E69E7CC0];
      while (v26 < *(v24 + 16))
      {
        v29 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v30 = *(v89 + 72);
        outlined init with copy of DSLTree._AST.AbsentFunction(v24 + v29 + v30 * v26, v23, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        outlined init with copy of DSLTree._AST.AbsentFunction(v23, v19, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of MEProgram(v19, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (EnumCaseMultiPayload == 4)
        {
          outlined destroy of MEProgram(v23, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        else
        {
          outlined init with take of DSLTree.QuantificationKind(v23, v88, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1);
            v28 = v90;
          }

          v34 = *(v28 + 2);
          v33 = *(v28 + 3);
          if (v34 >= v33 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
            v28 = v90;
          }

          *(v28 + 2) = v34 + 1;
          outlined init with take of DSLTree.QuantificationKind(v88, &v28[v29 + v34 * v30], type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        if (v13 == ++v26)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_15:
    if (*(v28 + 2) == 1)
    {
      v35 = v81;
      outlined init with copy of DSLTree._AST.AbsentFunction(&v28[(*(v89 + 80) + 32) & ~*(v89 + 80)], v81, type metadata accessor for DSLTree.CustomCharacterClass.Member);

      v36 = swift_getEnumCaseMultiPayload();
      v27 = v87;
      v13 = v85;
      if (v36 == 2)
      {
        v37 = *(v35 + 8);
        v90 = *v35;
        LOBYTE(v91) = v37;
        LiteralPrinter.outputCustomCharacterClass(_:)(&v90);

        return result;
      }

      outlined destroy of MEProgram(v35, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v19 = 0xE100000000000000;
      v26 = 91;
    }

    else
    {

      v19 = 0xE100000000000000;
      v26 = 91;
      v27 = v87;
      v13 = v85;
    }
  }

  v28 = *(v27 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_76:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  v40 = *(v28 + 2);
  v39 = *(v28 + 3);
  if (v40 >= v39 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  *(v28 + 2) = v40 + 1;
  v41 = &v28[24 * v40];
  *(v41 + 4) = v26;
  *(v41 + 5) = v19;
  v41[48] = 0;

  v42 = v87;
  *(v87 + 1) = v28;
  v43 = *(v24 + 16);
  if (v43)
  {
    v24 += (*(v89 + 80) + 32) & ~*(v89 + 80);
    v44 = *(v89 + 72);
    v89 = xmmword_18E5ED140;
    v88 = xmmword_18E5ED130;
    v81 = xmmword_18E5ED120;
    v80 = xmmword_18E5ED110;
    while (1)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v24, v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v47 = swift_getEnumCaseMultiPayload();
      if (v47 <= 3)
      {
        break;
      }

      if (v47 > 5)
      {
        if (v47 == 6)
        {
          v19 = *v13;
          v51 = *(*v13 + 16);
          v52 = *(*v13 + 24);
          v26 = *(*v13 + 32);
          v53 = *(*v13 + 40);
          v90 = v51;
          LOBYTE(v91) = v52;
          LiteralPrinter.outputCustomCharacterClass(_:)(&v90);
          v54 = *(v42 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          }

          v56 = *(v54 + 2);
          v55 = *(v54 + 3);
          if (v56 >= v55 >> 1)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          }

          *(v54 + 2) = v56 + 1;
          v45 = &v54[24 * v56];
          v46 = v81;
        }

        else
        {
          v19 = *v13;
          v73 = *(*v13 + 16);
          v74 = *(*v13 + 24);
          v26 = *(*v13 + 32);
          v53 = *(*v13 + 40);
          v90 = v73;
          LOBYTE(v91) = v74;
          LiteralPrinter.outputCustomCharacterClass(_:)(&v90);
          v54 = *(v42 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          }

          v76 = *(v54 + 2);
          v75 = *(v54 + 3);
          if (v76 >= v75 >> 1)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          }

          *(v54 + 2) = v76 + 1;
          v45 = &v54[24 * v76];
          v46 = v80;
        }
      }

      else
      {
        if (v47 == 4)
        {
          v48 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
          v49 = v13;
LABEL_49:
          outlined destroy of MEProgram(v49, v48);
          goto LABEL_27;
        }

        v19 = *v13;
        v63 = *(*v13 + 16);
        v64 = *(*v13 + 24);
        v26 = *(*v13 + 32);
        v53 = *(*v13 + 40);
        v90 = v63;
        LOBYTE(v91) = v64;
        LiteralPrinter.outputCustomCharacterClass(_:)(&v90);
        v54 = *(v42 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        v66 = *(v54 + 2);
        v65 = *(v54 + 3);
        if (v66 >= v65 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        *(v54 + 2) = v66 + 1;
        v45 = &v54[24 * v66];
        v46 = v88;
      }

      *(v45 + 2) = v46;
      v45[48] = 0;
      v42 = v87;
      *(v87 + 1) = v54;
      v90 = v26;
      LOBYTE(v91) = v53;
      v28 = v42;
      LiteralPrinter.outputCustomCharacterClass(_:)(&v90);

      v13 = v85;
LABEL_27:
      v24 += v44;
      if (!--v43)
      {
        v28 = *(v42 + 1);
        goto LABEL_69;
      }
    }

    if (v47 > 1)
    {
      if (v47 == 2)
      {
        v19 = *v13;
        v50 = v13[8];
        v90 = *v13;
        LOBYTE(v91) = v50;
        v28 = v42;
        LiteralPrinter.outputCustomCharacterClass(_:)(&v90);
      }

      else
      {
        v67 = *(*v42 + 16);
        if (!v67)
        {
          goto LABEL_75;
        }

        v68 = v44;
        v70 = *v13;
        v69 = *(v13 + 1);
        if (*(*v42 + 4 * v67 + 28) & 0x300000) != 0 || (String.containsRegexMetaCharacters.getter(*v13, *(v13 + 1)))
        {
          v90 = 20828;
          v91 = 0xE200000000000000;
          MEMORY[0x193ACE8E0](v70, v69);

          MEMORY[0x193ACE8E0](17756, 0xE200000000000000);
          v70 = v90;
          v69 = v91;
        }

        v28 = *(v42 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        v26 = *(v28 + 2);
        v71 = *(v28 + 3);
        v19 = (v26 + 1);
        if (v26 >= v71 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v26 + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        *(v28 + 2) = v19;
        v72 = &v28[24 * v26];
        *(v72 + 4) = v70;
        *(v72 + 5) = v69;
        v72[48] = 0;

        *(v42 + 1) = v28;
        v44 = v68;
      }

      goto LABEL_27;
    }

    if (v47)
    {
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
      v58 = v83;
      outlined init with take of DSLTree.QuantificationKind(v13, v83, type metadata accessor for DSLTree.Atom);
      outlined init with take of DSLTree.QuantificationKind(&v13[v57], v84, type metadata accessor for DSLTree.Atom);
      LiteralPrinter.outputAtom(_:)(v58);
      outlined destroy of MEProgram(v58, type metadata accessor for DSLTree.Atom);
      v59 = *(v42 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      v19 = (v61 + 1);
      if (v61 >= v60 >> 1)
      {
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v59, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v59 + 2) = v19;
      v62 = &v59[24 * v61];
      *(v62 + 2) = v89;
      v62[48] = 0;
      *(v42 + 1) = v59;
      v26 = v84;
    }

    else
    {
      v26 = v82;
      outlined init with take of DSLTree.QuantificationKind(v13, v82, type metadata accessor for DSLTree.Atom);
    }

    v28 = v42;
    LiteralPrinter.outputAtom(_:)(v26);
    v48 = type metadata accessor for DSLTree.Atom;
    v49 = v26;
    goto LABEL_49;
  }

LABEL_69:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  v78 = *(v28 + 2);
  v77 = *(v28 + 3);
  if (v78 >= v77 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v28, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  *(v28 + 2) = v78 + 1;
  *&result = 93;
  v79 = &v28[24 * v78];
  *(v79 + 2) = xmmword_18E5ED150;
  v79[48] = 0;
  *(v42 + 1) = v28;
  return result;
}

uint64_t LiteralPrinter.outputAtom(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree._AST.Atom(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DSLTree._AST.Reference(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DSLTree.Atom(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v18, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = 25692;
        switch(*v18)
        {
          case 1:
            v6 = 17500;
            break;
          case 2:
            v6 = 26716;
            break;
          case 3:
            v6 = 18524;
            break;
          case 4:
            v6 = 21084;
            break;
          case 5:
            v6 = 20060;
            break;
          case 6:
            v6 = 29532;
            break;
          case 7:
            v6 = 21340;
            break;
          case 8:
            v6 = 30300;
            break;
          case 9:
            v6 = 22108;
            break;
          case 10:
            v6 = 30556;
            break;
          case 11:
            v6 = 22364;
            break;
          case 12:
            v6 = 22620;
            break;
          case 13:
            goto LABEL_38;
          default:
            break;
        }

        v10 = v1[1];

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_142;
        }

        goto LABEL_155;
      }

      if (EnumCaseMultiPayload != 3)
      {
        outlined init with take of DSLTree.QuantificationKind(v18, v14, type metadata accessor for DSLTree._AST.Reference);
        LiteralPrinter.outputReference(_:)(v14);
        v50 = type metadata accessor for DSLTree._AST.Reference;
        v51 = v14;
        return outlined destroy of MEProgram(v51, v50);
      }

      switch(*v18)
      {
        case 1:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v69 = *(v10 + 3);
          if (v34 >= v69 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED240;
          break;
        case 2:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v64 = *(v10 + 3);
          if (v34 >= v64 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED230;
          break;
        case 3:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v65 = *(v10 + 3);
          if (v34 >= v65 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED220;
          break;
        case 4:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v61 = *(v10 + 3);
          if (v34 >= v61 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED210;
          break;
        case 5:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v70 = *(v10 + 3);
          if (v34 >= v70 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED200;
          break;
        case 6:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v71 = *(v10 + 3);
          if (v34 >= v71 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED1F0;
          break;
        case 7:
          v66 = *(*v1 + 2);
          if (!v66)
          {
            __break(1u);
            goto LABEL_157;
          }

          v67 = *&(*v1)[4 * v66 + 28];
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((v67 & 4) == 0)
          {
            if ((result & 1) == 0)
            {
              goto LABEL_159;
            }

            goto LABEL_101;
          }

          if (result)
          {
            goto LABEL_85;
          }

          goto LABEL_146;
        case 8:
          v73 = *(*v1 + 2);
          if (v73)
          {
            v74 = *&(*v1)[4 * v73 + 28];
            v10 = v1[1];
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((v74 & 4) != 0)
            {
              if ((result & 1) == 0)
              {
LABEL_148:
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
                v10 = result;
              }

LABEL_120:
              v34 = *(v10 + 2);
              v72 = *(v10 + 3);
              if (v34 >= v72 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
                v10 = result;
              }

              *(v10 + 2) = v34 + 1;
              v35 = xmmword_18E5ED1B0;
            }

            else
            {
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
                v10 = result;
              }

              v34 = *(v10 + 2);
              v75 = *(v10 + 3);
              if (v34 >= v75 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
                v10 = result;
              }

              *(v10 + 2) = v34 + 1;
              v35 = xmmword_18E5ED1D0;
            }
          }

          else
          {
            __break(1u);
LABEL_159:
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
LABEL_101:
            v34 = *(v10 + 2);
            v68 = *(v10 + 3);
            if (v34 >= v68 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
              v10 = result;
            }

            *(v10 + 2) = v34 + 1;
            v35 = xmmword_18E5ED1E0;
          }

          break;
        case 9:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
LABEL_146:
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

LABEL_85:
          v34 = *(v10 + 2);
          v63 = *(v10 + 3);
          if (v34 >= v63 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED1C0;
          break;
        case 10:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_120;
          }

          goto LABEL_148;
        case 11:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v60 = *(v10 + 3);
          if (v34 >= v60 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED1A0;
          break;
        case 12:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v62 = *(v10 + 3);
          if (v34 >= v62 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED190;
          break;
        default:
          v10 = v1[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
LABEL_157:
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          v34 = *(v10 + 2);
          v33 = *(v10 + 3);
          if (v34 >= v33 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
            v10 = result;
          }

          *(v10 + 2) = v34 + 1;
          v35 = xmmword_18E5ED250;
          break;
      }

LABEL_58:
      v55 = &v10[24 * v34];
      *(v55 + 2) = v35;
      v55[48] = 0;
LABEL_59:
      v1[1] = v10;
      return result;
    }

    if (EnumCaseMultiPayload)
    {
      v40 = Unicode.Scalar.escapedString.getter(*v18);
      v39 = v52;
      v53 = v1[1];
LABEL_64:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      v58 = *(v53 + 2);
      v57 = *(v53 + 3);
      if (v58 >= v57 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v53, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v53 + 2) = v58 + 1;
      v59 = &v53[24 * v58];
      *(v59 + 4) = v40;
      *(v59 + 5) = v39;
      v59[48] = 0;

      v1[1] = v53;
      return result;
    }

    v10 = *v18;
    v6 = *(v18 + 1);
    if (one-time initialization token for metachars == -1)
    {
LABEL_34:
      if (specialized Set.contains(_:)(v10, v6, metachars))
      {
        v82 = 0;
        v83 = 0xE000000000000000;
        MEMORY[0x193ACE8E0](92, 0xE100000000000000);
        Character.write<A>(to:)();

        v40 = v82;
        v39 = v83;
      }

      else
      {
        v40 = Character.escapingConfusable.getter(v10, v6);
        v39 = v56;
      }

      v53 = v1[1];
      goto LABEL_64;
    }

LABEL_150:
    swift_once();
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        v10 = v1[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
LABEL_61:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v10 = result;
        }

LABEL_55:
        v34 = *(v10 + 2);
        v54 = *(v10 + 3);
        if (v34 >= v54 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v10 = result;
        }

        *(v10 + 2) = v34 + 1;
        v35 = xmmword_18E5ED160;
        goto LABEL_58;
      }

      v36 = *(*v1 + 2);
      if (!v36)
      {
        goto LABEL_153;
      }

      v37 = *&(*v1)[4 * v36 + 28];
      v10 = v1[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((v37 & 0x10) != 0)
      {
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v10 = result;
        }

        v34 = *(v10 + 2);
        v38 = *(v10 + 3);
        if (v34 >= v38 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v10 = result;
        }

        *(v10 + 2) = v34 + 1;
        v35 = xmmword_18E5ED170;
        goto LABEL_58;
      }

LABEL_60:
      if ((result & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    v47 = *(*v1 + 2);
    if (v47)
    {
      v48 = *&(*v1)[4 * v47 + 28];
      v10 = v1[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((v48 & 0x10) == 0)
      {
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v10 = result;
        }

        v34 = *(v10 + 2);
        v49 = *(v10 + 3);
        if (v34 >= v49 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v34 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v10 = result;
        }

        *(v10 + 2) = v34 + 1;
        v35 = xmmword_18E5ED180;
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_150;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      outlined init with take of DSLTree.QuantificationKind(v18, v10, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
      v20 = v1;
      v21 = AST.MatchingOptionSequence._patternString.getter();
      v23 = v22;
      v24 = v1[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      v25 = *(v24 + 2);
      v26 = *(v24 + 3);
      v27 = v25 + 1;
      if (v25 >= v26 >> 1)
      {
        v79 = v24;
        v80 = *(v24 + 2);
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v25 + 1, 1, v79, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        v25 = v80;
        v24 = v81;
      }

      *(v24 + 2) = v27;
      v28 = &v24[24 * v25];
      *(v28 + 4) = v21;
      *(v28 + 5) = v23;
      v28[48] = 0;

      v20[1] = v24;
      v6 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v6 >= v29 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v6 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v24 + 2) = v6 + 1;
      v30 = &v24[24 * v6];
      *(v30 + 2) = xmmword_18E5ED0A0;
      v30[48] = 0;
      v20[1] = v24;
      v31 = *v20;
      v1 = *(*v20 + 2);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
        if (v1)
        {
LABEL_13:
          if (v1 <= *(v31 + 2))
          {
            MatchingOptions.Representation.apply(_:)(v10);
            result = outlined destroy of MEProgram(v10, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
            *v20 = v31;
            return result;
          }

          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
LABEL_142:
      v77 = *(v10 + 2);
      v76 = *(v10 + 3);
      if (v77 >= v76 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v10 + 2) = v77 + 1;
      v78 = &v10[24 * v77];
      *(v78 + 4) = v6;
      *(v78 + 5) = 0xE200000000000000;
      v78[48] = 0;

      goto LABEL_59;
    }

    outlined init with take of DSLTree.QuantificationKind(v18, v6, type metadata accessor for DSLTree._AST.Atom);
    LiteralPrinter.outputUnconvertedAST(_:)(v6);
    v50 = type metadata accessor for DSLTree._AST.Atom;
    v51 = v6;
    return outlined destroy of MEProgram(v51, v50);
  }

LABEL_38:
  v41 = swift_allocBox();
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v42, type metadata accessor for DSLTree.Atom);
  v43 = v1[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[24 * v45];
  *(v46 + 4) = v41 | 0x4000000000000000;
  *(v46 + 5) = 0;
  v46[48] = 1;

  v1[1] = v43;
  return result;
}

BOOL LiteralPrinter.requiresGrouping(_:)(unint64_t a1, uint64_t a2)
{
  v3 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v3 == 10)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

    specialized LiteralPrinter.prepareQuotedLiteral(_:)(v9, v10, a2);

    v11 = String.count.getter();

    return v11 > 1;
  }

  else if (v3 == 1 && (v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), (v5 = *(v4 + 16)) != 0))
  {
    if (v5 == 1)
    {
      v6 = *(v4 + 32);

      v7 = LiteralPrinter.requiresGrouping(_:)(v6, a2);

      return v7 & 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t LiteralPrinter.outputQuantificationKind(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.Quantification.Kind();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  v10 = type metadata accessor for DSLTree._AST.QuantificationKind(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v50 - v15);
  v17 = type metadata accessor for DSLTree.QuantificationKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, &v50 - v22, type metadata accessor for DSLTree.QuantificationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      MatchingOptions.defaultQuantificationKind.getter(*v51, v21);
      swift_storeEnumTagMultiPayload();
      LiteralPrinter.outputQuantificationKind(_:)(v21);
      return outlined destroy of MEProgram(v21, type metadata accessor for DSLTree.QuantificationKind);
    }

    outlined init with take of DSLTree.QuantificationKind(v23, v14, type metadata accessor for DSLTree._AST.QuantificationKind);
    (*(v3 + 16))(v7, v14, v2);
    v25 = (*(v3 + 88))(v7, v2);
    if (v25 == *MEMORY[0x1E69E8A88])
    {
      outlined destroy of MEProgram(v14, type metadata accessor for DSLTree._AST.QuantificationKind);
      v16 = v51;
      v2 = v51[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        v2 = result;
      }

      v28 = *(v2 + 16);
      v27 = *(v2 + 24);
      if (v28 >= v27 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        v2 = result;
      }

      *(v2 + 16) = v28 + 1;
      v29 = xmmword_18E5ED260;
LABEL_40:
      v45 = v2 + 24 * v28;
      *(v45 + 32) = v29;
      *(v45 + 48) = 0;
      v16[1] = v2;
      return result;
    }

    v16 = v51;
    if (v25 == *MEMORY[0x1E69E8A90])
    {
      outlined destroy of MEProgram(v14, type metadata accessor for DSLTree._AST.QuantificationKind);
      v2 = v16[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_18:
        v28 = *(v2 + 16);
        v37 = *(v2 + 24);
        if (v28 >= v37 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v28 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v2 = result;
        }

        *(v2 + 16) = v28 + 1;
        v29 = xmmword_18E5ED0E0;
        goto LABEL_40;
      }

LABEL_48:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      v2 = result;
      goto LABEL_18;
    }

    if (v25 == *MEMORY[0x1E69E8A80])
    {
      outlined destroy of MEProgram(v14, type metadata accessor for DSLTree._AST.QuantificationKind);
      v2 = v16[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_37:
        v28 = *(v2 + 16);
        v44 = *(v2 + 24);
        if (v28 >= v44 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v28 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
          v2 = result;
        }

        *(v2 + 16) = v28 + 1;
        v29 = xmmword_18E5ED0F0;
        goto LABEL_40;
      }

LABEL_50:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      v2 = result;
      goto LABEL_37;
    }

    goto LABEL_51;
  }

  outlined init with take of DSLTree.QuantificationKind(v23, v16, type metadata accessor for DSLTree._AST.QuantificationKind);
  (*(v3 + 16))(v9, v16, v2);
  v30 = (*(v3 + 88))(v9, v2);
  if (v30 == *MEMORY[0x1E69E8A88])
  {
    outlined destroy of MEProgram(v16, type metadata accessor for DSLTree._AST.QuantificationKind);
    v31 = v51;
    v32 = *(*v51 + 16);
    if (!v32)
    {
      __break(1u);
      goto LABEL_48;
    }

    v33 = (*(*v51 + 4 * v32 + 28) & 0x20) == 0;
    if ((*(*v51 + 4 * v32 + 28) & 0x20) != 0)
    {
      v34 = 63;
    }

    else
    {
      v34 = 0;
    }

    v35 = 0xE100000000000000;
    v36 = 0xE000000000000000;
LABEL_27:
    if (v33)
    {
      v39 = v36;
    }

    else
    {
      v39 = v35;
    }

    v40 = v31[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[24 * v42];
    *(v43 + 4) = v34;
    *(v43 + 5) = v39;
    v43[48] = 0;

    v31[1] = v40;
    return result;
  }

  v31 = v51;
  if (v30 == *MEMORY[0x1E69E8A90])
  {
    outlined destroy of MEProgram(v16, type metadata accessor for DSLTree._AST.QuantificationKind);
    v38 = *(*v31 + 16);
    if (!v38)
    {
      __break(1u);
      goto LABEL_50;
    }

    v33 = (*(*v31 + 4 * v38 + 28) & 0x20) == 0;
    if ((*(*v31 + 4 * v38 + 28) & 0x20) != 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = 63;
    }

    v35 = 0xE000000000000000;
    v36 = 0xE100000000000000;
    goto LABEL_27;
  }

  if (v30 != *MEMORY[0x1E69E8A80])
  {
LABEL_51:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined destroy of MEProgram(v16, type metadata accessor for DSLTree._AST.QuantificationKind);
  v46 = v31[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    v46 = result;
  }

  v48 = *(v46 + 16);
  v47 = *(v46 + 24);
  if (v48 >= v47 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v46, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    v46 = result;
  }

  *(v46 + 16) = v48 + 1;
  v49 = v46 + 24 * v48;
  *(v49 + 32) = xmmword_18E5ED0F0;
  *(v49 + 48) = 0;
  v31[1] = v46;
  return result;
}

uint64_t Unicode.Scalar.escapedString.getter(int a1)
{
  switch(a1)
  {
    case 9:
      return 29788;
    case 10:
      return 28252;
    case 13:
      return 29276;
  }

  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v2 = String.init<A>(_:radix:uppercase:)();
  v4 = v3;
  v5 = String.count.getter();
  result = String.count.getter();
  if (v5 <= 4)
  {
    v12 = 4 - result;
    if (!__OFSUB__(4, result))
    {
      v13._countAndFlagsBits = 48;
      v13._object = 0xE100000000000000;
      v14 = String.init(repeating:count:)(v13, v12);
      object = v14._object;
      countAndFlagsBits = v14._countAndFlagsBits;
      v11 = 30044;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v6 = 8 - result;
  if (__OFSUB__(8, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7._countAndFlagsBits = 48;
  v7._object = 0xE100000000000000;
  v10 = String.init(repeating:count:)(v7, v6);
  object = v10._object;
  countAndFlagsBits = v10._countAndFlagsBits;
  v11 = 21852;
LABEL_12:
  v15 = v11;
  MEMORY[0x193ACE8E0](countAndFlagsBits, object);

  MEMORY[0x193ACE8E0](v2, v4);

  return v15;
}

uint64_t LiteralPrinter.outputReference(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.Number();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - v10;
  v12 = type metadata accessor for AST.Reference.Kind();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Reference.kind.getter();
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x1E69E8E88])
  {
    (*(v13 + 96))(v16, v12);
    (*(v5 + 32))(v11, v16, v4);
    v18 = AST.Atom.Number.value.getter();
    v20 = v19;
    (*(v5 + 8))(v11, v4);
    if ((v20 & 1) == 0)
    {
      if (v18 <= 9)
      {
        v44 = 92;
        v45 = 0xE100000000000000;
        v43 = v18;
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ACE8E0](v21);

LABEL_23:
        v38 = v44;
        v37 = v45;
        v27 = *(v2 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        v40 = *(v27 + 2);
        v39 = *(v27 + 3);
        if (v40 >= v39 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
        }

        *(v27 + 2) = v40 + 1;
        v41 = &v27[24 * v40];
        *(v41 + 4) = v38;
        *(v41 + 5) = v37;
        v41[48] = 0;

LABEL_28:
        *(v2 + 8) = v27;
        return result;
      }

      v44 = 8087388;
      v45 = 0xE300000000000000;
      v43 = v18;
      goto LABEL_21;
    }

LABEL_7:
    type metadata accessor for DSLTree.Atom(0);
    v25 = swift_allocBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(a1, v26, type metadata accessor for DSLTree._AST.Reference);
    swift_storeEnumTagMultiPayload();
    v27 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[24 * v29];
    *(v30 + 4) = v25 | 0x4000000000000000;
    *(v30 + 5) = 0;
    v30[48] = 1;

    goto LABEL_28;
  }

  if (v17 == *MEMORY[0x1E69E8E90])
  {
    (*(v13 + 96))(v16, v12);
    (*(v5 + 32))(v9, v16, v4);
    v22 = AST.Atom.Number.value.getter();
    v24 = v23;
    (*(v5 + 8))(v9, v4);
    if (v24)
    {
      goto LABEL_7;
    }

    if (v22 >= 0)
    {
      v35 = 43;
    }

    else
    {
      v35 = 45;
    }

    v44 = 8087388;
    v45 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v35, 0xE100000000000000);

    if ((v22 & 0x8000000000000000) == 0 || (v36 = __OFSUB__(0, v22), v22 = -v22, !v36))
    {
      v43 = v22;
LABEL_21:
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (v17 == *MEMORY[0x1E69E8E80])
  {
    (*(v13 + 96))(v16, v12);
    v32 = *v16;
    v33 = v16[1];
    v44 = 8087388;
    v45 = 0xE300000000000000;
    v34 = v33;
LABEL_22:
    MEMORY[0x193ACE8E0](v32, v34);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    goto LABEL_23;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AST.MatchingOptionSequence._patternString.getter()
{
  v1 = type metadata accessor for AST.MatchingOption.Kind();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v99 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v102 = &v66[-v7];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v97 = &v66[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66[-v10];
  v101 = type metadata accessor for AST.MatchingOption();
  v12 = *(v101 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v101);
  v98 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66[-v16];
  v85 = v0;
  v18 = AST.MatchingOptionSequence.adding.getter();
  v19 = *(v18 + 16);
  v100 = v12;
  v83 = v2;
  if (v19)
  {
    v21 = *(v12 + 16);
    v20 = v12 + 16;
    v95 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v82 = v18;
    v23 = v18 + v22;
    v24 = *(v20 + 56);
    v96 = v20;
    v93 = (v20 - 8);
    v94 = v24;
    v92 = (v2 + 16);
    v91 = *MEMORY[0x1E69E8A10];
    v90 = (v2 + 88);
    LODWORD(v88) = *MEMORY[0x1E69E8A60];
    LODWORD(v87) = *MEMORY[0x1E69E8A78];
    LODWORD(v86) = *MEMORY[0x1E69E8A18];
    LODWORD(v84) = *MEMORY[0x1E69E89E0];
    v81 = *MEMORY[0x1E69E8A28];
    v80 = *MEMORY[0x1E69E8A70];
    v79 = *MEMORY[0x1E69E89F8];
    v78 = *MEMORY[0x1E69E8A48];
    v77 = *MEMORY[0x1E69E8A00];
    v76 = *MEMORY[0x1E69E8A30];
    v75 = *MEMORY[0x1E69E8A08];
    v74 = *MEMORY[0x1E69E89E8];
    v73 = *MEMORY[0x1E69E8A58];
    v72 = *MEMORY[0x1E69E8A40];
    v71 = *MEMORY[0x1E69E8A68];
    v70 = *MEMORY[0x1E69E8A50];
    v69 = *MEMORY[0x1E69E89F0];
    v68 = *MEMORY[0x1E69E8A38];
    v67 = *MEMORY[0x1E69E8A20];
    v89 = (v2 + 8);
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = v101;
      (v95)(v17, v23, v101);
      AST.MatchingOption.kind.getter();
      (*v93)(v17, v26);
      v27 = v97;
      (*v92)(v97, v11, v1);
      v28 = (*v90)(v27, v1);
      if (v28 == v91)
      {
        v29 = 0xE100000000000000;
        v30 = 105;
      }

      else if (v28 == v88)
      {
        v29 = 0xE100000000000000;
        v30 = 74;
      }

      else if (v28 == v87)
      {
        v29 = 0xE100000000000000;
        v30 = 109;
      }

      else if (v28 == v86)
      {
        v29 = 0xE100000000000000;
        v30 = 110;
      }

      else if (v28 == v84)
      {
        v29 = 0xE100000000000000;
        v30 = 115;
      }

      else if (v28 == v81)
      {
        v29 = 0xE100000000000000;
        v30 = 85;
      }

      else if (v28 == v80)
      {
        v29 = 0xE100000000000000;
        v30 = 120;
      }

      else if (v28 == v79)
      {
        v29 = 0xE200000000000000;
        v30 = 30840;
      }

      else if (v28 == v78)
      {
        v29 = 0xE100000000000000;
        v30 = 119;
      }

      else if (v28 == v77)
      {
        v29 = 0xE100000000000000;
        v30 = 68;
      }

      else if (v28 == v76)
      {
        v29 = 0xE100000000000000;
        v30 = 80;
      }

      else if (v28 == v75)
      {
        v29 = 0xE100000000000000;
        v30 = 83;
      }

      else if (v28 == v74)
      {
        v29 = 0xE100000000000000;
        v30 = 87;
      }

      else if (v28 == v73)
      {
        v29 = 0xE400000000000000;
        v30 = 2103933817;
      }

      else if (v28 == v72)
      {
        v30 = 2104982393;
        v29 = 0xE400000000000000;
      }

      else if (v28 == v71)
      {
        v29 = 0xE100000000000000;
        v30 = 88;
      }

      else if (v28 == v70)
      {
        v29 = 0xE100000000000000;
        v30 = 117;
      }

      else
      {
        if (v28 != v69)
        {
          if (v28 != v68 && v28 != v67)
          {
LABEL_108:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          (*v89)(v11, v1);
          goto LABEL_44;
        }

        v29 = 0xE100000000000000;
        v30 = 98;
      }

      (*v89)(v11, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v32 = *(v25 + 2);
      v31 = *(v25 + 3);
      if (v32 >= v31 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v25);
      }

      *(v25 + 2) = v32 + 1;
      v33 = &v25[16 * v32];
      *(v33 + 4) = v30;
      *(v33 + 5) = v29;
LABEL_44:
      v23 += v94;
      if (!--v19)
      {

        goto LABEL_50;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v103 = v25;
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  v35 = lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [String] and conformance [A]);
  v36 = BidirectionalCollection<>.joined(separator:)();
  v38 = v37;

  v39 = AST.MatchingOptionSequence.removing.getter();
  v40 = *(v39 + 16);
  if (v40)
  {
    v84 = v35;
    v86 = CanonicalSpecializedMetadata;
    v87 = v36;
    v88 = v38;
    v97 = *(v100 + 16);
    v41 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v82 = v39;
    v42 = v39 + v41;
    v43 = *(v100 + 72);
    v95 = (v100 + 8);
    v96 = v43;
    v94 = v83 + 16;
    v44 = (v83 + 88);
    LODWORD(v93) = *MEMORY[0x1E69E8A10];
    LODWORD(v92) = *MEMORY[0x1E69E8A60];
    v91 = *MEMORY[0x1E69E8A78];
    LODWORD(v90) = *MEMORY[0x1E69E8A18];
    LODWORD(v89) = *MEMORY[0x1E69E89E0];
    v81 = *MEMORY[0x1E69E8A28];
    v80 = *MEMORY[0x1E69E8A70];
    v79 = *MEMORY[0x1E69E89F8];
    v78 = *MEMORY[0x1E69E8A48];
    v77 = *MEMORY[0x1E69E8A00];
    v76 = *MEMORY[0x1E69E8A30];
    v75 = *MEMORY[0x1E69E8A08];
    v74 = *MEMORY[0x1E69E89E8];
    v73 = *MEMORY[0x1E69E8A58];
    v72 = *MEMORY[0x1E69E8A40];
    v71 = *MEMORY[0x1E69E8A68];
    v70 = *MEMORY[0x1E69E8A50];
    v69 = *MEMORY[0x1E69E89F0];
    v68 = *MEMORY[0x1E69E8A38];
    v67 = *MEMORY[0x1E69E8A20];
    v45 = (v83 + 8);
    v46 = MEMORY[0x1E69E7CC0];
    v100 += 16;
    while (1)
    {
      v47 = v98;
      v48 = v101;
      (v97)(v98, v42, v101);
      v49 = v102;
      AST.MatchingOption.kind.getter();
      (*v95)(v47, v48);
      v50 = v99;
      (*v94)(v99, v49, v1);
      v51 = (*v44)(v50, v1);
      if (v51 == v93)
      {
        v52 = 0xE100000000000000;
        v53 = 105;
      }

      else if (v51 == v92)
      {
        v52 = 0xE100000000000000;
        v53 = 74;
      }

      else if (v51 == v91)
      {
        v52 = 0xE100000000000000;
        v53 = 109;
      }

      else if (v51 == v90)
      {
        v52 = 0xE100000000000000;
        v53 = 110;
      }

      else if (v51 == v89)
      {
        v52 = 0xE100000000000000;
        v53 = 115;
      }

      else if (v51 == v81)
      {
        v52 = 0xE100000000000000;
        v53 = 85;
      }

      else if (v51 == v80)
      {
        v52 = 0xE100000000000000;
        v53 = 120;
      }

      else if (v51 == v79)
      {
        v52 = 0xE200000000000000;
        v53 = 30840;
      }

      else if (v51 == v78)
      {
        v52 = 0xE100000000000000;
        v53 = 119;
      }

      else if (v51 == v77)
      {
        v52 = 0xE100000000000000;
        v53 = 68;
      }

      else if (v51 == v76)
      {
        v52 = 0xE100000000000000;
        v53 = 80;
      }

      else if (v51 == v75)
      {
        v52 = 0xE100000000000000;
        v53 = 83;
      }

      else if (v51 == v74)
      {
        v52 = 0xE100000000000000;
        v53 = 87;
      }

      else if (v51 == v73)
      {
        v52 = 0xE400000000000000;
        v53 = 2103933817;
      }

      else if (v51 == v72)
      {
        v53 = 2104982393;
        v52 = 0xE400000000000000;
      }

      else if (v51 == v71)
      {
        v52 = 0xE100000000000000;
        v53 = 88;
      }

      else if (v51 == v70)
      {
        v52 = 0xE100000000000000;
        v53 = 117;
      }

      else
      {
        if (v51 != v69)
        {
          if (v51 != v68 && v51 != v67)
          {
            goto LABEL_108;
          }

          (*v45)(v102, v1);
          goto LABEL_93;
        }

        v52 = 0xE100000000000000;
        v53 = 98;
      }

      (*v45)(v102, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
      }

      v55 = *(v46 + 2);
      v54 = *(v46 + 3);
      if (v55 >= v54 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v46);
      }

      *(v46 + 2) = v55 + 1;
      v56 = &v46[16 * v55];
      *(v56 + 4) = v53;
      *(v56 + 5) = v52;
LABEL_93:
      v42 += v96;
      if (!--v40)
      {

        v36 = v87;
        v38 = v88;
        goto LABEL_99;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v103 = v46;
  v57 = BidirectionalCollection<>.joined(separator:)();
  v59 = v58;

  if (AST.MatchingOptionSequence.resetsCurrentOptions.getter())
  {

    v103 = 6176552;
    v104 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v36, v38);
  }

  else
  {
    v103 = 16168;
    v104 = 0xE200000000000000;
    MEMORY[0x193ACE8E0](v36, v38);

    v61 = v103;
    v60 = v104;
    v62 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v62 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v103 = 45;
      v104 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v57, v59);

      v64 = v103;
      v63 = v104;
    }

    else
    {

      v64 = 0;
      v63 = 0xE000000000000000;
    }

    v103 = v61;
    v104 = v60;

    MEMORY[0x193ACE8E0](v64, v63);
  }

  return v103;
}

uint64_t LiteralPrinter.outputUnconvertedAST(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.CharacterProperty();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AST.Atom.Kind();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Atom.kind.getter();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x1E69E8D80])
  {
    (*(v10 + 96))(v13, v9);
    (*(v5 + 32))(v8, v13, v4);
    v15 = AST.Atom.CharacterProperty._regexBase.getter();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    if (v17)
    {
      v18 = *(v2 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[24 * v20];
      *(v21 + 4) = v15;
      *(v21 + 5) = v17;
      v21[48] = 0;

      *(v2 + 8) = v18;
      return result;
    }

    type metadata accessor for DSLTree.Atom(0);
    v39 = swift_allocBox();
    v41 = v40;
    v42 = type metadata accessor for AST.Atom();
    (*(*(v42 - 8) + 16))(v41, a1, v42);
    swift_storeEnumTagMultiPayload();
    v27 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v44 = *(v27 + 2);
    v43 = *(v27 + 3);
    if (v44 >= v43 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v27 + 2) = v44 + 1;
    v45 = &v27[24 * v44];
    *(v45 + 4) = v39 | 0x4000000000000000;
    *(v45 + 5) = 0;
    v45[48] = 1;

LABEL_24:
    *(v2 + 8) = v27;
    return result;
  }

  if (v14 == *MEMORY[0x1E69E8D20])
  {
    (*(v10 + 96))(v13, v9);
    v23 = *v13;
    v24 = v13[1];
    v46 = 8080988;
    v47 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v23, v24);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    v26 = v46;
    v25 = v47;
    v27 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[24 * v29];
    *(v30 + 4) = v26;
    *(v30 + 5) = v25;
    v30[48] = 0;

    goto LABEL_24;
  }

  type metadata accessor for DSLTree.Atom(0);
  v31 = swift_allocBox();
  v33 = v32;
  v34 = type metadata accessor for AST.Atom();
  (*(*(v34 - 8) + 16))(v33, a1, v34);
  swift_storeEnumTagMultiPayload();
  v35 = *(v2 + 8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14PatternSegmentOGMR);
  }

  *(v35 + 2) = v37 + 1;
  v38 = &v35[24 * v37];
  *(v38 + 4) = v31 | 0x4000000000000000;
  *(v38 + 5) = 0;
  v38[48] = 1;

  *(v2 + 8) = v35;
  return (*(v10 + 8))(v13, v9);
}

uint64_t String.containsRegexMetaCharacters.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v17 = a1;
  v18 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v19 = 0;
  v20 = v2;

  v3 = String.Iterator.next()();
  object = v3.value._object;
  if (v3.value._object)
  {
    countAndFlagsBits = v3.value._countAndFlagsBits;
    while (1)
    {
      if (one-time initialization token for metachars != -1)
      {
        swift_once();
      }

      v7 = metachars;
      if (*(metachars + 16))
      {
        v8 = *(metachars + 40);
        Hasher.init(_seed:)();
        MEMORY[0x193ACE6E0](v16, countAndFlagsBits, object);
        v9 = Hasher._finalize()();
        v10 = -1 << *(v7 + 32);
        v11 = v9 & ~v10;
        if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }
      }

LABEL_5:

      v6 = String.Iterator.next()();
      countAndFlagsBits = v6.value._countAndFlagsBits;
      object = v6.value._object;
      if (!v6.value._object)
      {
        goto LABEL_19;
      }
    }

    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == countAndFlagsBits && object == v13[1];
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    object = 1;
  }

LABEL_19:

  return object;
}

uint64_t AST.Atom.CharacterProperty._regexBase.getter()
{
  v0 = type metadata accessor for Unicode.Script();
  v76 = *(v0 - 8);
  v77 = v0;
  v1 = *(v76 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v74 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v75 = &v70 - v4;
  v5 = type metadata accessor for Unicode.POSIXProperty();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Unicode.BinaryProperty();
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (AST.Atom.CharacterProperty.isInverted.getter())
  {
    v23 = 20572;
  }

  else
  {
    v23 = 28764;
  }

  AST.Atom.CharacterProperty.kind.getter();
  v24 = (*(v19 + 88))(v22, v18);
  if (v24 == *MEMORY[0x1E69E8C88])
  {
    (*(v19 + 96))(v22, v18);
    (*(v9 + 32))(v12, v22, v8);
    v80 = v23;
    v81 = 0xE200000000000000;
    MEMORY[0x193ACE8E0](123, 0xE100000000000000);
    v25 = Unicode.ExtendedGeneralCategory.rawValue.getter();
    v27 = v26;
    (*(v9 + 8))(v12, v8);
    MEMORY[0x193ACE8E0](v25, v27);
LABEL_14:

    v39 = 125;
    v40 = 0xE100000000000000;
    goto LABEL_33;
  }

  v28 = v24;
  if (v24 == *MEMORY[0x1E69E8CD0])
  {
    (*(v19 + 96))(v22, v18);
    v29 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMd, &_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMR) + 48));
    v30 = v79;
    v31 = v22;
    v32 = v78;
    (*(v79 + 32))(v17, v31, v78);
    v33 = v29 == 0;
    if (v29)
    {
      v34 = 0;
    }

    else
    {
      v34 = 0x65736C61663DLL;
    }

    if (v33)
    {
      v35 = 0xE600000000000000;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v80 = v23;
    v81 = 0xE200000000000000;
    MEMORY[0x193ACE8E0](123, 0xE100000000000000);
    v36 = Unicode.BinaryProperty.rawValue.getter();
    v38 = v37;
    (*(v30 + 8))(v17, v32);
    MEMORY[0x193ACE8E0](v36, v38);

    MEMORY[0x193ACE8E0](v34, v35);
    goto LABEL_14;
  }

  if (v24 == *MEMORY[0x1E69E8CD8])
  {

    (*(v19 + 96))(v22, v18);
    v42 = v75;
    v41 = v76;
    v43 = v77;
    (*(v76 + 32))(v75, v22, v77);
    v80 = 14939;
    v81 = 0xE200000000000000;
    v44 = AST.Atom.CharacterProperty.isInverted.getter();
    v45 = (v44 & 1) == 0;
    if (v44)
    {
      v46 = 94;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = 0xE000000000000000;
    }

    else
    {
      v47 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v46, v47);

    v48 = 0x3D747069726373;
    v49 = 0xE700000000000000;
LABEL_31:
    MEMORY[0x193ACE8E0](v48, v49);
    v54 = Unicode.Script.rawValue.getter();
LABEL_32:
    v56 = v54;
    v57 = v55;
    (*(v41 + 8))(v42, v43);
    MEMORY[0x193ACE8E0](v56, v57);

    v39 = 23866;
    v40 = 0xE200000000000000;
    goto LABEL_33;
  }

  if (v24 == *MEMORY[0x1E69E8C90])
  {

    (*(v19 + 96))(v22, v18);
    v41 = v76;
    v43 = v77;
    v42 = v74;
    (*(v76 + 32))(v74, v22, v77);
    v80 = 14939;
    v81 = 0xE200000000000000;
    v50 = AST.Atom.CharacterProperty.isInverted.getter();
    v51 = (v50 & 1) == 0;
    if (v50)
    {
      v52 = 94;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = 0xE000000000000000;
    }

    else
    {
      v53 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v52, v53);

    v48 = 1031299955;
    v49 = 0xE400000000000000;
    goto LABEL_31;
  }

  if (v24 == *MEMORY[0x1E69E8CC0])
  {

    (*(v19 + 96))(v22, v18);
    v59 = *v22;
    v60 = v22[1];
    v80 = 8080988;
    v81 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v59, v60);
    goto LABEL_14;
  }

  if (v24 == *MEMORY[0x1E69E8CC8])
  {

    (*(v19 + 96))(v22, v18);
    v42 = v71;
    v41 = v72;
    v43 = v73;
    (*(v72 + 32))(v71, v22, v73);
    v80 = 14939;
    v81 = 0xE200000000000000;
    v61 = AST.Atom.CharacterProperty.isInverted.getter();
    v62 = (v61 & 1) == 0;
    if (v61)
    {
      v63 = 94;
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v64 = 0xE000000000000000;
    }

    else
    {
      v64 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v63, v64);

    v54 = Unicode.POSIXProperty.rawValue.getter();
    goto LABEL_32;
  }

  if (v24 == *MEMORY[0x1E69E8CA0])
  {
    v80 = v23;
    v81 = 0xE200000000000000;
    v39 = 0x7D796E417BLL;
    v40 = 0xE500000000000000;
  }

  else if (v24 == *MEMORY[0x1E69E8CF0])
  {
    v80 = v23;
    v81 = 0xE200000000000000;
    v39 = 0x656E67697373417BLL;
    v40 = 0xEA00000000007D64;
  }

  else
  {
    v65 = *MEMORY[0x1E69E8CB0];

    if (v28 != v65)
    {
      (*(v19 + 8))(v22, v18);
      return 0;
    }

    v80 = 14939;
    v81 = 0xE200000000000000;
    v66 = AST.Atom.CharacterProperty.isInverted.getter();
    v67 = (v66 & 1) == 0;
    if (v66)
    {
      v68 = 94;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = 0xE000000000000000;
    }

    else
    {
      v69 = 0xE100000000000000;
    }

    MEMORY[0x193ACE8E0](v68, v69);

    v39 = 0x5D3A6969637361;
    v40 = 0xE700000000000000;
  }

LABEL_33:
  MEMORY[0x193ACE8E0](v39, v40);
  return v80;
}

uint64_t one-time initialization function for metachars()
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SSTt0g5(0x7C7D7B29285D5B5CLL, 0xEF2D2E245E3F2A2BLL);
  metachars = result;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SSTt0g5(Swift::Int a1, unint64_t a2)
{
  v4 = String.count.getter();
  v5 = MEMORY[0x193ACEAA0](v4, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E5EE8]);
  v13 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12[2] = a1;
  v12[3] = a2;
  v12[4] = 0;
  v12[5] = v6;
  v7 = String.Iterator.next()();
  if (v7.value._object)
  {
    countAndFlagsBits = v7.value._countAndFlagsBits;
    object = v7.value._object;
    do
    {
      specialized Set._Variant.insert(_:)(v12, countAndFlagsBits, object);

      v10 = String.Iterator.next()();
      countAndFlagsBits = v10.value._countAndFlagsBits;
      object = v10.value._object;
    }

    while (v10.value._object);
    v5 = v13;
  }

  return v5;
}

unint64_t Character.escapingConfusable.getter(unint64_t a1, unint64_t a2)
{
  v4 = Character.isConfusable.getter();

  if (v4)
  {
    v5 = specialized Collection.first.getter(a1, a2);
    if ((v5 & 0x100000000) == 0)
    {
      if ((v5 & 0xFFFFFF80) != 0 || v5 <= 0xFF)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    __break(1u);
LABEL_5:
    v6 = static String._uncheckedFromUTF8(_:)();
    specialized Collection.dropFirst(_:)(1uLL, a1, a2, String.UnicodeScalarView.index(_:offsetBy:limitedBy:), MEMORY[0x1E69E60C0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMR);
    lazy protocol witness table accessor for type [Any.Type] and conformance [A](&lazy protocol witness table cache variable for type LazySequence<FlattenSequence<LazyMapSequence<Substring.UnicodeScalarView, String>>> and conformance LazySequence<A>, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySs17UnicodeScalarViewVSSGGGMR);
    String.append<A>(contentsOf:)();

    return v6;
  }

  return a1;
}

unint64_t specialized implicit closure #1 in String.escapingConfusableCharacters()@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = Character.escapingConfusable.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL specialized Set.contains(_:)(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = a1 >> 14;
  MEMORY[0x193ACEFC0](v5);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = *(*(a2 + 48) + 8 * v8) >> 14;
    result = v10 == v5;
    if (v10 == v5)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v14, a1, a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized implicit closure #1 in Character.escapingConfusable.getter@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Unicode.Scalar.escapedString.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t MatchingOptions.Representation.apply(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.MatchingOption.Kind();
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v84 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v87 = &v58 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v86 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v88 = type metadata accessor for AST.MatchingOption();
  v12 = *(v88 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v88);
  v83 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV8LocationVSgMd, &_s12_RegexParser6SourceV8LocationVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v58 - v20;
  AST.MatchingOptionSequence.caretLoc.getter();
  v22 = type metadata accessor for Source.Location();
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  outlined destroy of SplitSequence<SubstringSearcher>(v21, &_s12_RegexParser6SourceV8LocationVSgMd, &_s12_RegexParser6SourceV8LocationVSgMR);
  if (v23 != 1)
  {
    *v89 = 81984;
  }

  v74 = a1;
  v24 = AST.MatchingOptionSequence.adding.getter();
  v85 = *(v24 + 16);
  if (v85)
  {
    v25 = 0;
    LODWORD(v82) = *MEMORY[0x1E69E8A10];
    v81 = v12 + 16;
    v78 = *MEMORY[0x1E69E8A60];
    v79 = (v75 + 16);
    v80 = v12 + 8;
    v77 = *MEMORY[0x1E69E8A78];
    v26 = (v75 + 88);
    v76 = *MEMORY[0x1E69E8A18];
    v73 = *MEMORY[0x1E69E89E0];
    v72 = *MEMORY[0x1E69E8A28];
    v71 = *MEMORY[0x1E69E8A70];
    v70 = *MEMORY[0x1E69E89F8];
    v69 = *MEMORY[0x1E69E8A48];
    v68 = *MEMORY[0x1E69E8A00];
    v67 = *MEMORY[0x1E69E8A30];
    v66 = *MEMORY[0x1E69E8A08];
    v65 = *MEMORY[0x1E69E89E8];
    v64 = *MEMORY[0x1E69E8A58];
    v63 = *MEMORY[0x1E69E8A40];
    v62 = *MEMORY[0x1E69E8A68];
    v61 = *MEMORY[0x1E69E8A50];
    v60 = *MEMORY[0x1E69E89F0];
    v59 = *MEMORY[0x1E69E8A38];
    v27 = (v75 + 8);
    v58 = *MEMORY[0x1E69E8A20];
    while (v25 < *(v24 + 16))
    {
      v30 = v24;
      v31 = v88;
      (*(v12 + 16))(v17, v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v88);
      AST.MatchingOption.kind.getter();
      (*(v12 + 8))(v17, v31);
      v32 = v86;
      (*v79)(v86, v11, v2);
      v33 = (*v26)(v32, v2);
      if (v33 == v82)
      {
        v34 = 0;
      }

      else if (v33 == v78)
      {
        v34 = 1;
      }

      else if (v33 == v77)
      {
        v34 = 2;
      }

      else if (v33 == v76)
      {
        v34 = 3;
      }

      else if (v33 == v73)
      {
        v34 = 4;
      }

      else if (v33 == v72)
      {
        v34 = 5;
      }

      else if (v33 == v71)
      {
        v34 = 20;
      }

      else if (v33 == v70)
      {
        v34 = 21;
      }

      else if (v33 == v69)
      {
        v34 = 6;
      }

      else if (v33 == v68)
      {
        v34 = 10;
      }

      else if (v33 == v67)
      {
        v34 = 11;
      }

      else if (v33 == v66)
      {
        v34 = 12;
      }

      else if (v33 == v65)
      {
        v34 = 13;
      }

      else if (v33 == v64)
      {
        v34 = 14;
      }

      else if (v33 == v63)
      {
        v34 = 15;
      }

      else if (v33 == v62)
      {
        v34 = 16;
      }

      else if (v33 == v61)
      {
        v34 = 17;
      }

      else if (v33 == v60)
      {
        v34 = 18;
      }

      else if (v33 == v59)
      {
        v34 = 19;
      }

      else
      {
        if (v33 != v58)
        {
          goto LABEL_132;
        }

        v34 = 9;
      }

      (*v27)(v11, v2);
      v28 = 1 << v34;
      if (((1 << v34) & 0x7FF8FFFF) != 0)
      {
        v35 = *v89;
      }

      else
      {
        v35 = *v89 & 0xFFF8FFFF;
      }

      v36 = v35 & 0xFFFF3FFF;
      if ((v28 & 0x7FFF3FFF) != 0)
      {
        v36 = v35;
      }

      v37 = (v35 & 0xC000) != 0 && (v28 & 0x7FFF3FFF) == 0;
      v38 = (v28 & 0x7FF7FFDF) == 0;
      v39 = v36 & 0xFFF7FFDF;
      if ((v28 & 0x7FF7FFDF) != 0)
      {
        v39 = v36;
      }

      if ((v36 & 0x80020) == 0)
      {
        v38 = 0;
      }

      if ((v39 & v28) == 0)
      {
        v38 = 1;
      }

      v40 = (*v89 & 0x70000) != 0 && ((1 << v34) & 0x7FF8FFFF) == 0;
      if (v40 || v37 || v38)
      {
        if ((v39 & v28) != 0)
        {
          v28 = 0;
        }

        v29 = v39 | v28;
        if (!v38)
        {
          v29 = v36;
        }

        *v89 = v29;
      }

      ++v25;
      v24 = v30;
      if (v85 == v25)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_73:

    v41 = AST.MatchingOptionSequence.removing.getter();
    v86 = *(v41 + 16);
    if (!v86)
    {
    }

    v42 = 0;
    LODWORD(v85) = *MEMORY[0x1E69E8A10];
    v81 = v12 + 8;
    v82 = v12 + 16;
    LODWORD(v80) = *MEMORY[0x1E69E8A60];
    v43 = (v75 + 16);
    v44 = (v75 + 88);
    LODWORD(v79) = *MEMORY[0x1E69E8A78];
    v78 = *MEMORY[0x1E69E8A18];
    v77 = *MEMORY[0x1E69E89E0];
    v76 = *MEMORY[0x1E69E8A28];
    LODWORD(v74) = *MEMORY[0x1E69E8A70];
    v73 = *MEMORY[0x1E69E89F8];
    v72 = *MEMORY[0x1E69E8A48];
    v71 = *MEMORY[0x1E69E8A00];
    v70 = *MEMORY[0x1E69E8A30];
    v69 = *MEMORY[0x1E69E8A08];
    v68 = *MEMORY[0x1E69E89E8];
    v67 = *MEMORY[0x1E69E8A58];
    v66 = *MEMORY[0x1E69E8A40];
    v65 = *MEMORY[0x1E69E8A68];
    v64 = *MEMORY[0x1E69E8A50];
    v63 = *MEMORY[0x1E69E89F0];
    v62 = *MEMORY[0x1E69E8A38];
    v45 = (v75 + 8);
    LODWORD(v75) = *MEMORY[0x1E69E8A20];
    v46 = v87;
    while (v42 < *(v41 + 16))
    {
      v48 = v83;
      v49 = v88;
      (*(v12 + 16))(v83, v41 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v42, v88);
      AST.MatchingOption.kind.getter();
      (*(v12 + 8))(v48, v49);
      v50 = v84;
      (*v43)(v84, v46, v2);
      v51 = (*v44)(v50, v2);
      if (v51 == v85)
      {
        v52 = 0;
      }

      else if (v51 == v80)
      {
        v52 = 1;
      }

      else if (v51 == v79)
      {
        v52 = 2;
      }

      else if (v51 == v78)
      {
        v52 = 3;
      }

      else if (v51 == v77)
      {
        v52 = 4;
      }

      else if (v51 == v76)
      {
        v52 = 5;
      }

      else if (v51 == v74)
      {
        v52 = 20;
      }

      else if (v51 == v73)
      {
        v52 = 21;
      }

      else if (v51 == v72)
      {
        v52 = 6;
      }

      else if (v51 == v71)
      {
        v52 = 10;
      }

      else if (v51 == v70)
      {
        v52 = 11;
      }

      else if (v51 == v69)
      {
        v52 = 12;
      }

      else if (v51 == v68)
      {
        v52 = 13;
      }

      else if (v51 == v67)
      {
        v52 = 14;
      }

      else if (v51 == v66)
      {
        v52 = 15;
      }

      else if (v51 == v65)
      {
        v52 = 16;
      }

      else if (v51 == v64)
      {
        v52 = 17;
      }

      else if (v51 == v63)
      {
        v52 = 18;
      }

      else if (v51 == v62)
      {
        v52 = 19;
      }

      else
      {
        if (v51 != v75)
        {
          goto LABEL_132;
        }

        v52 = 9;
      }

      (*v45)(v87, v2);
      v53 = 1 << v52;
      v54 = *v89 & 0xFFF7FFDF;
      if (((1 << v52) & 0x7FF7FFDF) != 0)
      {
        v54 = *v89;
      }

      v55 = (*v89 & 0x80020) != 0 && ((1 << v52) & 0x7FF7FFDF) == 0;
      v56 = v54 & v53;
      if (v55 || v56)
      {
        if (v56)
        {
          v47 = ~v53;
        }

        else
        {
          v47 = -1;
        }

        *v89 = v54 & v47;
      }

      if (v86 == ++v42)
      {
      }
    }
  }

  __break(1u);
LABEL_132:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance MatchingOptions.Representation@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance MatchingOptions.Representation(_DWORD *a1, int *a2)
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

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance MatchingOptions.Representation@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance MatchingOptions.Representation@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MatchingOptions.Representation@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t renderAsBuilderDSL(ast:maxTopDownLevels:minBottomUpLevels:)(uint64_t a1)
{
  v14 = a1;
  v1 = type metadata accessor for AST();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrettyPrinter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrettyPrinter.init(maxTopDownLevels:minBottomUpLevels:)();
  outlined init with copy of Any(v14, v15);
  swift_dynamicCast();
  PrettyPrinter.printAsPattern(_:)();
  (*(v2 + 8))(v5, v1);
  countAndFlagsBits = PrettyPrinter.finish()()._countAndFlagsBits;
  (*(v7 + 8))(v10, v6);
  return countAndFlagsBits;
}

uint64_t PrettyPrinter.printAsPattern(_:)()
{
  v0 = type metadata accessor for AST.Node();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AST.root.getter();
  v5 = convert #1 () in AST.Node.dslTreeNode.getter(v4);
  if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0xC)
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v7 = swift_allocBox();
    v8 = *(v6 + 48);
    *v9 = v5;
    (*(v1 + 32))(v9 + v8, v4, v0);
    v5 = v7 | 0x6000000000000000;
  }

  v21 = v5;
  v22 = DSLTree.Node.getNamedCaptures()(v5);
  v10 = *(v22 + 2);
  if (v10)
  {
    v11 = (v22 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;

      _StringGuts.grow(_:)(34);

      v23._countAndFlagsBits = 544499052;
      v23._object = 0xE400000000000000;
      MEMORY[0x193ACE8E0](v12, v13);

      MEMORY[0x193ACE8E0](0xD00000000000001CLL, 0x800000018E5F33B0);
      PrettyPrinter.print(_:)(v23);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x1EEE9AC00](v14);
  *(&v20 - 2) = v21;
  PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();

  while (1)
  {
    v15 = *(PrettyPrinter.inlineMatchingOptions.getter() + 16);

    if (!v15)
    {
      break;
    }

    v17 = PrettyPrinter.popMatchingOptions()();
    *(&v20 - 2) = MEMORY[0x1EEE9AC00](v17);
    *(&v20 - 8) = v18 & 1;
    PrettyPrinter.printIndented(_:)();

    v19._countAndFlagsBits = 125;
    v19._object = 0xE100000000000000;
    PrettyPrinter.print(_:)(v19);
  }

  return result;
}

uint64_t PrettyPrinter.printBackoff(_:)(unint64_t a1)
{
  v3 = type metadata accessor for Diagnostics();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV28GlobalMatchingOptionSequenceVSgMd, &_s12_RegexParser3ASTV28GlobalMatchingOptionSequenceVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - v9;
  v44 = type metadata accessor for AST.Node();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AST();
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DSLTree._AST.ASTNode(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4NodeOSgMd, &_s12_RegexParser3ASTV4NodeOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v37 - v24;
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xC)
  {
    v38 = v10;
    v39 = v6;
    v41 = v14;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v40 = v1;
    v27 = v26;
    v28 = swift_projectBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(v28 + *(v27 + 48), v21, type metadata accessor for DSLTree._AST.ASTNode);
    v29 = v42;
    v30 = *(v11 + 32);
    v31 = v17;
    v32 = v44;
    v30(v25, v21, v44);
    (*(v11 + 56))(v25, 0, 1, v32);
    outlined destroy of SplitSequence<SubstringSearcher>(v25, &_s12_RegexParser3ASTV4NodeOSgMd, &_s12_RegexParser3ASTV4NodeOSgMR);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v34 = swift_projectBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(v34 + *(v33 + 48), v21, type metadata accessor for DSLTree._AST.ASTNode);
    v30(v43, v21, v32);
    v35 = type metadata accessor for AST.GlobalMatchingOptionSequence();
    (*(*(v35 - 8) + 56))(v38, 1, 1, v35);
    Diagnostics.init()();
    AST.init(_:globalOptions:diags:)();
    PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)();
    return (*(v29 + 8))(v31, v41);
  }

  else
  {
    (*(v11 + 56))(v25, 1, 1, v44);
    result = outlined destroy of SplitSequence<SubstringSearcher>(v25, &_s12_RegexParser3ASTV4NodeOSgMd, &_s12_RegexParser3ASTV4NodeOSgMR);
    __break(1u);
  }

  return result;
}

char *DSLTree.Node.getNamedCaptures()(unint64_t a1)
{
  v25 = MEMORY[0x1E69E7CC0];
  v1 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v1 > 5)
  {
    if (v1 == 6)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v10 = *(swift_projectBox() + *(v22 + 64));
    }

    else
    {
      if (v1 != 12)
      {
        return v25;
      }

      v10 = *swift_projectBox();
    }

    v23 = DSLTree.Node.getNamedCaptures()(v10);

    specialized Array.append<A>(contentsOf:)(v23);
    return v25;
  }

  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (v2)
      {
        v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v7 = *(v5 + 2);
        v6 = *(v5 + 3);
        v8 = (v7 + 1);
        if (v7 >= v6 >> 1)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      }
    }

    return v25;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v11 = *(v2 + 16);
  if (!v11)
  {
    return v25;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

  v8 = MEMORY[0x1E69E7CC0];
  v13 = 32;
  v3 = MEMORY[0x1E69E6158];
  while (1)
  {
    v14 = *(v2 + v13);

    v15 = DSLTree.Node.getNamedCaptures()(v14);

    v7 = *(v15 + 16);
    v16 = *(v8 + 2);
    v17 = v16 + v7;
    if (__OFADD__(v16, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= *(v8 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v7;
      }

      else
      {
        v19 = v16;
      }

      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v19, 1, v8);
      if (*(v15 + 16))
      {
LABEL_23:
        v6 = *(v8 + 2);
        if (((*(v8 + 3) >> 1) - v6) < v7)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v20 = *(v8 + 2);
          v21 = __OFADD__(v20, v7);
          v6 = v20 + v7;
          if (v21)
          {
            goto LABEL_34;
          }

          *(v8 + 2) = v6;
        }

        goto LABEL_13;
      }
    }

    if (v7)
    {
      goto LABEL_32;
    }

LABEL_13:
    v13 += 8;
    if (!--v11)
    {

      return v8;
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
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v8, 1, v5);
LABEL_6:
  *(v5 + 2) = v8;
  v9 = &v5[16 * v7];
  *(v9 + 4) = v3;
  *(v9 + 5) = v2;
  return v5;
}

uint64_t closure #1 in PrettyPrinter.printInlineMatchingOptions()(uint64_t a1, uint64_t a2, char a3)
{
  v34 = a1;
  v35 = type metadata accessor for AST.MatchingOption.Kind();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v35);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(type metadata accessor for AST.MatchingOption() - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = (v5 + 88);
    v14 = *(v11 + 72);
    v21 = (v5 + 8);
    v20 = 0x800000018E5F3410;
    if (a3)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (a3)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = *MEMORY[0x1E69E8A10];
    v33 = *MEMORY[0x1E69E8A78];
    v32 = *MEMORY[0x1E69E89E0];
    v30 = *MEMORY[0x1E69E8A28];
    v18 = *MEMORY[0x1E69E8A00];
    v27 = *MEMORY[0x1E69E8A30];
    v28 = v18;
    v25 = *MEMORY[0x1E69E8A08];
    v22 = *MEMORY[0x1E69E89E8];
    v23 = 0x800000018E5F3430;
    v24 = 0x800000018E5F3450;
    v26 = 0x800000018E5F3470;
    v29 = 0x800000018E5F33D0;
    v31 = 0x800000018E5F33F0;
    do
    {
      AST.MatchingOption.kind.getter();
      result = (*v13)(v9, v35);
      if (result == v17)
      {
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        _StringGuts.grow(_:)(16);

        v36._countAndFlagsBits = 0x7365726F6E67692ELL;
        v19 = 0xED00002865736143;
      }

      else if (result == v33)
      {
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        _StringGuts.grow(_:)(28);

        v36._countAndFlagsBits = 0xD000000000000019;
        v19 = v31;
      }

      else if (result == v32)
      {
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v36._countAndFlagsBits = 0xD000000000000014;
        v19 = v29;
      }

      else
      {
        if (result == v30)
        {
          goto LABEL_16;
        }

        if (result == v28)
        {
          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v36._countAndFlagsBits = 0xD000000000000011;
          v19 = v26;
        }

        else if (result == v27)
        {
          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          v36._countAndFlagsBits = 0xD00000000000001BLL;
          v19 = v24;
        }

        else if (result == v25)
        {
          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          _StringGuts.grow(_:)(24);

          v36._countAndFlagsBits = 0xD000000000000015;
          v19 = v23;
        }

        else
        {
          if (result != v22)
          {
            result = (*v21)(v9, v35);
            goto LABEL_16;
          }

          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          _StringGuts.grow(_:)(28);

          v36._countAndFlagsBits = 0xD000000000000019;
          v19 = v20;
        }
      }

      v36._object = v19;
      MEMORY[0x193ACE8E0](v15, v16);

      MEMORY[0x193ACE8E0](41, 0xE100000000000000);
      PrettyPrinter.print(_:)(v36);

LABEL_16:
      v12 += v14;
      --v10;
    }

    while (v10);
  }

  return result;
}

Swift::Void __swiftcall PrettyPrinter.printConcatenationAsPattern(_:isTopLevel:)(Swift::OpaquePointer _, Swift::Bool isTopLevel)
{
  v3 = isTopLevel;
  v102 = type metadata accessor for DSLTree.Atom(0);
  v5 = *(*(v102 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v102);
  v100 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v94[-v8];
  v9 = *(_._rawValue + 2);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    v117 = 0;
    v118 = 0xE000000000000000;
    v116 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v95 = v3;
      v96 = v2;
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

LABEL_47:
    v85 = v116;
    v86 = *(v116 + 2);
    if (v3)
    {
      if (!v86)
      {
LABEL_49:

        return;
      }
    }

    else if (v86 != 1)
    {
      MEMORY[0x1EEE9AC00](v93);
      *&v94[-16] = v85;
      PrettyPrinter.printBlock(_:startDelimiter:endDelimiter:_:)();

      return;
    }

    v87 = (v116 + 48);
    do
    {
      v88 = *(v87 - 2);
      v89 = *(v87 - 1);
      v90 = *v87;
      if (v90 == 1)
      {
        v91 = *(v87 - 1);

        v92._countAndFlagsBits = v88;
        v92._object = v89;
        PrettyPrinter.print(_:)(v92);
      }

      else
      {

        PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v88, 0);
      }

      outlined consume of PrettyPrinter.NodeToPrint(v88, v89, v90);
      v87 += 24;
      --v86;
    }

    while (v86);
    goto LABEL_49;
  }

  v95 = v3;
  v96 = v2;
  *&v122[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v11 = *&v122[0];
  v12 = (_._rawValue + 32);
  do
  {
    v14 = *v12++;
    v13 = v14;
    if (((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xC)
    {
      v13 = *swift_projectBox();
    }

    *&v122[0] = v11;
    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    v17 = v16 + 1;

    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v11 = *&v122[0];
    }

    *(v11 + 16) = v17;
    v18 = v11 + 24 * v16;
    *(v18 + 32) = v13;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    --v9;
  }

  while (v9);
  v117 = 0;
  v118 = 0xE000000000000000;
  v116 = v10;
LABEL_11:
  v19 = 0;
  v103 = -v17;
  v101 = MEMORY[0x1E69E7CC0];
  v20 = v11 + 48;
  v98 = xmmword_18E5ED040;
  v97 = v11 + 48;
  while (2)
  {
    v21 = 0;
    v22 = (v20 + 24 * v19++);
    while (1)
    {
      if ((v19 - 1) >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      v26 = *v22;
      if (*v22)
      {
        goto LABEL_31;
      }

      v27 = (v24 >> 59) & 0x1E | (v24 >> 2) & 1;
      if (v27 == 10)
      {
        v34 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v35 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        outlined copy of PrettyPrinter.NodeToPrint(*(v22 - 2), *(v22 - 1), 0);

        v37 = String.subscript.getter();
        specialized Collection<>._ranges<A>(of:)(92, 0xE100000000000000, v37, v38, v39, v40, &v108);

        v122[0] = v108;
        v122[1] = v109;
        v122[2] = v110;
        v122[3] = v111;
        v41 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v122, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v34, v35);
        v43 = v42;
        v112 = v108;
        v113 = v109;
        v114 = v110;
        v115 = v111;
        outlined destroy of SplitSequence<SubstringSearcher>(&v112, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

        v44 = String.subscript.getter();
        specialized Collection<>._ranges<A>(of:)(34, 0xE100000000000000, v44, v45, v46, v47, &v104);

        v121[0] = v104;
        v121[1] = v105;
        v121[2] = v106;
        v121[3] = v107;
        v48 = v121;
        goto LABEL_29;
      }

      if (v27 == 9)
      {
        break;
      }

      if (v27 != 8)
      {
        goto LABEL_31;
      }

      v28 = swift_projectBox();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_31;
        }

        v30 = v28;
        v31 = v100;
        outlined init with copy of DSLTree._AST.AbsentFunction(v30, v100, type metadata accessor for DSLTree.Atom);
        v32 = *v31;
        *&v112 = 8090972;
        *(&v112 + 1) = 0xE300000000000000;
        LODWORD(v108) = v32;
        outlined copy of PrettyPrinter.NodeToPrint(v24, v25, 0);
        lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v33 = String.init<A>(_:radix:uppercase:)();
        MEMORY[0x193ACE8E0](v33);

        MEMORY[0x193ACE8E0](125, 0xE100000000000000);
        MEMORY[0x193ACE8E0](v112, *(&v112 + 1));
        goto LABEL_30;
      }

      v49 = v99;
      outlined init with copy of DSLTree._AST.AbsentFunction(v28, v99, type metadata accessor for DSLTree.Atom);
      v50 = *v49;
      v51 = v49[1];

      v52 = String.subscript.getter();
      specialized Collection<>._ranges<A>(of:)(92, 0xE100000000000000, v52, v53, v54, v55, &v108);

      v120[0] = v108;
      v120[1] = v109;
      v120[2] = v110;
      v120[3] = v111;
      v41 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v120, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v50, v51);
      v43 = v56;
      v112 = v108;
      v113 = v109;
      v114 = v110;
      v115 = v111;
      outlined destroy of SplitSequence<SubstringSearcher>(&v112, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

      v57 = String.subscript.getter();
      specialized Collection<>._ranges<A>(of:)(34, 0xE100000000000000, v57, v58, v59, v60, &v104);

      v119[0] = v104;
      v119[1] = v105;
      v119[2] = v106;
      v119[3] = v107;
      v48 = v119;
LABEL_29:
      v61 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v48, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v41, v43);
      v63 = v62;
      v108 = v104;
      v109 = v105;
      v110 = v106;
      v111 = v107;
      outlined destroy of SplitSequence<SubstringSearcher>(&v108, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

      MEMORY[0x193ACE8E0](v61, v63);
LABEL_30:

      outlined consume of PrettyPrinter.NodeToPrint(v24, v25, 0);
LABEL_16:
      ++v19;
      v22 += 24;
      v21 = 1;
      if (v103 + v19 == 1)
      {

        v82 = v117;
        v81 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v98;
        *&v112 = 34;
        *(&v112 + 1) = 0xE100000000000000;
        MEMORY[0x193ACE8E0](v82, v81);
        MEMORY[0x193ACE8E0](34, 0xE100000000000000);
        v84 = *(&v112 + 1);
        *(inited + 32) = v112;
        *(inited + 40) = v84;
        *(inited + 48) = 1;

        v93 = specialized Array.append<A>(contentsOf:)(inited);
        goto LABEL_46;
      }
    }

    v23 = v117 & 0xFFFFFFFFFFFFLL;
    if ((v118 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v118) & 0xF;
    }

    if (v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    if ((v21 & 1) == 0)
    {
      outlined copy of PrettyPrinter.NodeToPrint(v24, v25, v26);
      v20 = v97;
      v74 = v101;
LABEL_38:
      v75 = v74;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v76 = v75;
      }

      else
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
      }

      v78 = *(v76 + 2);
      v77 = *(v76 + 3);
      v101 = v76;
      if (v78 >= v77 >> 1)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v101, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
      }

      v79 = v101;
      *(v101 + 2) = v78 + 1;
      v80 = &v79[24 * v78];
      *(v80 + 4) = v24;
      *(v80 + 5) = v25;
      v80[48] = v26;
      v116 = v79;
      if (!(v103 + v19))
      {

LABEL_46:
        LOBYTE(v3) = v95;
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v65 = v117;
  v64 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
  v66 = swift_initStackObject();
  *(v66 + 16) = v98;
  *&v112 = 34;
  *(&v112 + 1) = 0xE100000000000000;
  outlined copy of PrettyPrinter.NodeToPrint(v24, v25, v26);
  MEMORY[0x193ACE8E0](v65, v64);
  MEMORY[0x193ACE8E0](34, 0xE100000000000000);
  v67 = *(&v112 + 1);
  *(v66 + 32) = v112;
  *(v66 + 40) = v67;
  *(v66 + 48) = 1;

  v68 = v101;
  v69 = *(v101 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v71 = *(v68 + 3) >> 1, v71 <= v69))
  {
    v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v69 + 1, 1, v68, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
    v71 = *(v68 + 3) >> 1;
  }

  v72 = v68;
  v73 = *(v68 + 2);
  v20 = v97;
  if (v71 > v73)
  {
    swift_arrayInitWithCopy();

    ++*(v72 + 2);
    v117 = 0;
    v118 = 0xE000000000000000;
    v74 = v72;
    goto LABEL_38;
  }

LABEL_59:
  __break(1u);
}

uint64_t AST.Quantification.Amount._patternBase.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AST.Atom.Number();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v57 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - v16;
  v18 = type metadata accessor for AST.Quantification.Amount();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v1, v18);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == *MEMORY[0x1E69E8AC8])
  {
    (*(v19 + 96))(v22, v18);
    (*(v3 + 32))(v17, v22, v2);
    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v59, "Repeat(count: ");
    HIBYTE(v59[1]) = -18;
    v24 = AST.Atom.Number.value.getter();
    v25 = v2;
    if (v26)
    {
      v27 = 0x7265626D756E233CLL;
      v28 = 0xEA00000000003E23;
    }

    else
    {
      v58 = v24;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v34;
    }

    (*(v3 + 8))(v17, v25);
LABEL_9:
    MEMORY[0x193ACE8E0](v27, v28);
LABEL_10:

    v35 = 41;
    v36 = 0xE100000000000000;
LABEL_16:
    MEMORY[0x193ACE8E0](v35, v36);
    return v59[0];
  }

  if (v23 == *MEMORY[0x1E69E8AD0])
  {
    (*(v19 + 96))(v22, v18);
    v29 = v2;
    (*(v3 + 32))(v15, v22, v2);
    strcpy(v59, "Repeat(");
    v59[1] = 0xE700000000000000;
    v30 = AST.Atom.Number.value.getter();
    if (v31)
    {
      v32 = 0x7265626D756E233CLL;
      v33 = 0xEA00000000003E23;
    }

    else
    {
      v58 = v30;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v40;
    }

    (*(v3 + 8))(v15, v29);
    MEMORY[0x193ACE8E0](v32, v33);

    v35 = 690892334;
    v36 = 0xE400000000000000;
    goto LABEL_16;
  }

  v37 = v2;
  if (v23 == *MEMORY[0x1E69E8AC0])
  {
    (*(v19 + 96))(v22, v18);
    (*(v3 + 32))(v12, v22, v2);
    v28 = 0xEA00000000003E23;
    strcpy(v59, "Repeat(...");
    BYTE3(v59[1]) = 0;
    HIDWORD(v59[1]) = -369098752;
    v38 = AST.Atom.Number.value.getter();
    if (v39)
    {
      v27 = 0x7265626D756E233CLL;
    }

    else
    {
      v58 = v38;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v56;
    }

    (*(v3 + 8))(v12, v37);
    goto LABEL_9;
  }

  if (v23 == *MEMORY[0x1E69E8AB8])
  {
    v42 = 0xEA00000000003E23;
    v43 = 0x7265626D756E233CLL;
    (*(v19 + 96))(v22, v18);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
    v45 = *(v3 + 32);
    v45(v9, v22, v2);
    v46 = v57;
    v45(v57, &v22[v44], v37);
    strcpy(v59, "Repeat(");
    v59[1] = 0xE700000000000000;
    v47 = AST.Atom.Number.value.getter();
    v48 = 0x7265626D756E233CLL;
    v49 = 0xEA00000000003E23;
    if ((v50 & 1) == 0)
    {
      v58 = v47;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v51;
    }

    v52 = *(v3 + 8);
    v52(v9, v37);
    MEMORY[0x193ACE8E0](v48, v49);

    MEMORY[0x193ACE8E0](3026478, 0xE300000000000000);
    v53 = AST.Atom.Number.value.getter();
    if ((v54 & 1) == 0)
    {
      v58 = v53;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v55;
    }

    v52(v46, v37);
    MEMORY[0x193ACE8E0](v43, v42);
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x1E69E8AB0])
  {
    return 0x6F4D724F6F72655ALL;
  }

  if (v23 == *MEMORY[0x1E69E8AD8])
  {
    return 0x726F4D724F656E4FLL;
  }

  if (v23 == *MEMORY[0x1E69E8AE0])
  {
    return 0x6C616E6F6974704FLL;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void printAtom #1 (_:) in PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, Swift::String *a5)
{
  PrettyPrinter.indent()();
  v9 = *(a4 + 16) == 0x72656761652ELL && *(a4 + 24) == 0xE600000000000000;
  if (v9 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v10 & 1) != 0))
  {
    v14 = a5[1];

    v11 = 40;
    v12 = 0xE100000000000000;
  }

  else
  {
    specialized RangeReplaceableCollection<>.removeLast()(v10);

    v14 = a5[1];

    v11 = 8236;
    v12 = 0xE200000000000000;
  }

  MEMORY[0x193ACE8E0](v11, v12);
  PrettyPrinter.output(_:)(v14);

  MEMORY[0x193ACE8E0](41, 0xE100000000000000);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  PrettyPrinter.output(_:)(v13);

  PrettyPrinter.terminateLine()();
}

void printSimpleCCC #1 (_:) in PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  PrettyPrinter.indent()();
  v8 = *(a3 + 16) == 0x72656761652ELL && *(a3 + 24) == 0xE600000000000000;
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v9 & 1) != 0))
  {
    v10 = *(a4 + 24);
    v16._countAndFlagsBits = *(a4 + 16);
    v16._object = v10;

    v11 = 40;
    v12 = 0xE100000000000000;
  }

  else
  {
    specialized RangeReplaceableCollection<>.removeLast()(v9);

    v13 = *(a4 + 24);
    v16._countAndFlagsBits = *(a4 + 16);
    v16._object = v13;

    v11 = 8236;
    v12 = 0xE200000000000000;
  }

  MEMORY[0x193ACE8E0](v11, v12);
  PrettyPrinter.output(_:)(v16);

  v16._countAndFlagsBits = v6;
  LOBYTE(v16._object) = v7;
  v17.members._rawValue = &v16;
  v17.isInverted = 0;
  PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v17, 0, v14);
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  PrettyPrinter.output(_:)(v15);
  PrettyPrinter.terminateLine()();
}

uint64_t DSLTree.Atom._patternBase(_:)(uint64_t a1)
{
  v73 = a1;
  v72 = type metadata accessor for AST.Quantification.Kind();
  v67 = *(v72 - 8);
  v1 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for AST.MatchingOption.Kind();
  v66 = *(v75 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for AST.MatchingOption();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AST.Atom.CharacterProperty();
  v65 = *(v68 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AST.Atom.Kind();
  v70 = *(v17 - 8);
  v18 = *(v70 + 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DSLTree._AST.Atom(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DSLTree.Atom(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(v74, v28, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        LOBYTE(v76) = *v28;
        return DSLTree.Atom.CharacterClass._patternBase.getter();
      }

      else if (EnumCaseMultiPayload == 3)
      {
        LOBYTE(v76) = *v28;
        return DSLTree.Atom.Assertion._patternBase.getter();
      }

      else
      {
        outlined destroy of MEProgram(v28, type metadata accessor for DSLTree.Atom);
        return 0xD00000000000001ALL;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      v33 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(92, 0xE100000000000000, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, *v28, *(v28 + 1));
      v35 = specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(34, 0xE100000000000000, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v33, v34);
      v37 = v36;

      v76 = 34;
      v77 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v35, v37);

      MEMORY[0x193ACE8E0](34, 0xE100000000000000);

      return v76;
    }

    LODWORD(v76) = *v28;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v38 = String.init<A>(_:radix:uppercase:)();
    v76 = 8090972;
    v77 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v38);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    v39 = v76;
    v40 = v77;
    v76 = 34;
    v77 = 0xE100000000000000;
    MEMORY[0x193ACE8E0](v39, v40);

    v41 = 34;
    v42 = 0xE100000000000000;
LABEL_48:
    MEMORY[0x193ACE8E0](v41, v42);
    return v76;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      return 2037276974;
    }

    if (EnumCaseMultiPayload == 9)
    {
      return 0x4E6E6F4E796E612ELL;
    }

    return 3092015;
  }

  if (EnumCaseMultiPayload == 5)
  {
    return 0xD00000000000001FLL;
  }

  if (EnumCaseMultiPayload != 6)
  {
    outlined init with take of DSLTree.QuantificationKind(v28, v24, type metadata accessor for DSLTree._AST.Atom);
    AST.Atom.kind.getter();
    v43 = v70;
    v44 = (*(v70 + 11))(v20, v17);
    if (v44 == *MEMORY[0x1E69E8D80])
    {
      v43[12](v20, v17);
      v45 = v65;
      v46 = v20;
      v47 = v68;
      (*(v65 + 32))(v16, v46, v68);
      v48 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
      (*(v45 + 8))(v16, v47);
      if (v48)
      {
        goto LABEL_47;
      }

LABEL_29:
      v51 = AST.Atom._dslBase.getter();
      outlined destroy of MEProgram(v24, type metadata accessor for DSLTree._AST.Atom);
      return v51;
    }

    if (v44 == *MEMORY[0x1E69E8D30] || v44 == *MEMORY[0x1E69E8D10] || v44 == *MEMORY[0x1E69E8D38])
    {
      v43[1](v20, v17);
    }

    else
    {
      v49 = *MEMORY[0x1E69E8D20];
      v50 = v44;
      v43[1](v20, v17);
      if (v50 != v49)
      {
        goto LABEL_29;
      }
    }

LABEL_47:
    v76 = 12067;
    v77 = 0xE200000000000000;
    v61 = AST.Atom._regexBase.getter();
    v63 = v62;
    outlined destroy of MEProgram(v24, type metadata accessor for DSLTree._AST.Atom);
    MEMORY[0x193ACE8E0](v61, v63);

    v41 = 9007;
    v42 = 0xE200000000000000;
    goto LABEL_48;
  }

  outlined init with take of DSLTree.QuantificationKind(v28, v13, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
  v30 = *(AST.MatchingOptionSequence.removing.getter() + 16);

  v64 = v30;
  if (v30)
  {
    v31 = AST.MatchingOptionSequence.removing.getter();
  }

  else
  {
    v31 = AST.MatchingOptionSequence.adding.getter();
  }

  v52._rawValue = v31;
  v53 = v69;

  result = outlined destroy of MEProgram(v13, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
  v74 = *(v52._rawValue + 2);
  if (v74)
  {
    v54 = 0;
    v70 = v52._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v68 = v6 + 8;
    v69 = v6 + 16;
    v55 = (v66 + 88);
    v56 = *MEMORY[0x1E69E8A28];
    v57 = MEMORY[0x1E69E8A88];
    if (!v64)
    {
      v57 = MEMORY[0x1E69E8A90];
    }

    LODWORD(v65) = *MEMORY[0x1E69E8A70];
    v66 += 8;
    v58 = (v67 + 104);
    LODWORD(v67) = *v57;
    do
    {
      if (v54 >= *(v52._rawValue + 2))
      {
        __break(1u);
        return result;
      }

      (*(v6 + 16))(v9, &v70[*(v6 + 72) * v54], v53);
      AST.MatchingOption.kind.getter();
      (*(v6 + 8))(v9, v53);
      result = (*v55)(v5, v75);
      if (result == v56)
      {
        (*v58)(v71, v67, v72);
        result = PrettyPrinter.quantificationBehavior.setter();
      }

      else if (result != v65)
      {
        result = (*v66)(v5, v75);
        goto LABEL_36;
      }

      if (*(v52._rawValue + 2) == 1)
      {
        swift_bridgeObjectRelease_n();
        return 0;
      }

LABEL_36:
      ++v54;
    }

    while (v74 != v54);
  }

  v59 = v64 == 0;

  v60._countAndFlagsBits = 0x7B207865676552;
  v60._object = 0xE700000000000000;
  PrettyPrinter.print(_:)(v60);
  PrettyPrinter.pushMatchingOptions(_:isAdded:)(v52, v59);

  return 0;
}

uint64_t DSLTree.CustomCharacterClass.isSimplePrint.getter()
{
  v35[0] = type metadata accessor for DSLTree.Atom(0);
  v1 = *(*(v35[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v35[0]);
  v36 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v37 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v35 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = v35 - v14;
  v17 = *v0;
  v18 = *(*v0 + 16);
  if (v18 == 1)
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v35 - v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of MEProgram(v16, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return (EnumCaseMultiPayload - 8) < 0xFFFFFFFD;
  }

  if (v18)
  {
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v35[1] = v3;
    v38 = v17;
    while (1)
    {
      if (v20 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v25 = v15;
      v26 = *(v15 + 72);
      outlined init with copy of DSLTree._AST.AbsentFunction(v17 + v24 + v26 * v20, v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      outlined init with copy of DSLTree._AST.AbsentFunction(v12, v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v27 = swift_getEnumCaseMultiPayload();
      if (v27 == 4 || v27 == 3)
      {
        break;
      }

      if (v27)
      {
        v29 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
        v30 = v9;
        goto LABEL_17;
      }

      outlined init with take of DSLTree.QuantificationKind(v9, v36, type metadata accessor for DSLTree.Atom);
      v28 = swift_getEnumCaseMultiPayload();
      if (!v28)
      {
        v22 = type metadata accessor for DSLTree.Atom;
        v23 = v36;
        goto LABEL_6;
      }

      if (v28 != 1)
      {
        v29 = type metadata accessor for DSLTree.Atom;
        v30 = v36;
LABEL_17:
        outlined destroy of MEProgram(v30, v29);
        outlined init with take of DSLTree.QuantificationKind(v12, v37, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
          v21 = v39;
        }

        v33 = *(v21 + 16);
        v32 = *(v21 + 24);
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
          v21 = v39;
        }

        *(v21 + 16) = v33 + 1;
        result = outlined init with take of DSLTree.QuantificationKind(v37, v21 + v24 + v33 * v26, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        goto LABEL_8;
      }

LABEL_7:
      result = outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
LABEL_8:
      ++v20;
      v15 = v25;
      v17 = v38;
      if (v18 == v20)
      {
        goto LABEL_24;
      }
    }

    v22 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
    v23 = v9;
LABEL_6:
    outlined destroy of MEProgram(v23, v22);
    goto LABEL_7;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v34 = *(v21 + 16);

  return v34 == 0;
}

uint64_t AST.Atom._regexBase.getter()
{
  v0 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AST.Atom.CharacterProperty();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AST.Atom.Kind();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Atom.kind.getter();
  LODWORD(result) = (*(v11 + 88))(v14, v10);
  if (result == *MEMORY[0x1E69E8D58] || result == *MEMORY[0x1E69E8D60] || result == *MEMORY[0x1E69E8D28])
  {
    v18 = *(v11 + 8);
    v11 += 8;
    v18(v14, v10);
    result = AST.Atom.literalStringValue.getter();
    if (v19)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E8D80])
  {
    (*(v11 + 96))(v14, v10);
    (*(v6 + 32))(v9, v14, v5);
    v20 = AST.Atom.CharacterProperty._regexBase.getter();
    if (v21)
    {
      v22 = v20;
      (*(v6 + 8))(v9, v5);
      return v22;
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    MEMORY[0x193ACE8E0](0xD000000000000013, 0x800000018E5F3180);
    _print_unlocked<A, B>(_:_:)();
    (*(v6 + 8))(v9, v5);
    return v33;
  }

  if (result == *MEMORY[0x1E69E8D70])
  {
    (*(v11 + 96))(v14, v10);
    (*(v1 + 32))(v4, v14, v0);
    v33 = 0;
    v34 = 0xE000000000000000;
    MEMORY[0x193ACE8E0](92, 0xE100000000000000);
    AST.Atom.EscapedBuiltin.character.getter();
    (*(v1 + 8))(v4, v0);
    Character.write<A>(to:)();
LABEL_24:

    return v33;
  }

  if (result == *MEMORY[0x1E69E8D30])
  {
    (*(v11 + 96))(v14, v10);
    v24 = *v14;
    v23 = v14[1];
    v33 = 0;
    v34 = 0xE000000000000000;
    v25 = 25436;
    v26 = 0xE200000000000000;
LABEL_23:
    MEMORY[0x193ACE8E0](v25, v26);
    Character.write<A>(to:)();
    goto LABEL_24;
  }

  if (result == *MEMORY[0x1E69E8D10])
  {
    (*(v11 + 96))(v14, v10);
    v28 = *v14;
    v27 = v14[1];
    v33 = 0;
    v34 = 0xE000000000000000;
    v25 = 2968924;
    v26 = 0xE300000000000000;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8D38])
  {
    (*(v11 + 96))(v14, v10);
    v30 = *v14;
    v29 = v14[1];
    v33 = 0;
    v34 = 0xE000000000000000;
    v25 = 0x2D435C2D4D5CLL;
    v26 = 0xE600000000000000;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8D20])
  {
    (*(v11 + 96))(v14, v10);
    v31 = *v14;
    v32 = v14[1];
    v33 = 8080988;
    v34 = 0xE300000000000000;
    MEMORY[0x193ACE8E0](v31, v32);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    return v33;
  }

  if (result == *MEMORY[0x1E69E8D18])
  {
    (*(v11 + 8))(v14, v10);
    return 0xD00000000000001BLL;
  }

  else if (result == *MEMORY[0x1E69E8CF8])
  {
    (*(v11 + 8))(v14, v10);
    return 0xD000000000000017;
  }

  else if (result == *MEMORY[0x1E69E8D68])
  {
    (*(v11 + 8))(v14, v10);
    return 0xD000000000000014;
  }

  else if (result == *MEMORY[0x1E69E8D40] || result == *MEMORY[0x1E69E8D48])
  {
    (*(v11 + 8))(v14, v10);
    return 0xD000000000000023;
  }

  else if (result == *MEMORY[0x1E69E8D50])
  {
    return 46;
  }

  else if (result == *MEMORY[0x1E69E8D00] || result == *MEMORY[0x1E69E8D08] || result != *MEMORY[0x1E69E8D78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    return 0x2365756C6176233CLL;
  }

  return result;
}

void closure #2 in PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v43 = (&v42 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v42 - v16);
  PrettyPrinter.indent()();
  v19 = *a2;
  v18 = a2[1];
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v50._countAndFlagsBits = 0x28664F796E612ELL;
    v50._object = 0xE700000000000000;
    v48 = 34;
    v49 = 0xE100000000000000;

    MEMORY[0x193ACE8E0](v19, v18);
    MEMORY[0x193ACE8E0](34, 0xE100000000000000);

    MEMORY[0x193ACE8E0](v48, v49);

    MEMORY[0x193ACE8E0](41, 0xE100000000000000);
    PrettyPrinter.output(_:)(v50);

    if (*(a3 + 16))
    {
      v21._countAndFlagsBits = 44;
      v21._object = 0xE100000000000000;
      PrettyPrinter.output(_:)(v21);
    }

    PrettyPrinter.terminateLine()();
  }

  v22 = 0;
  v23 = v9;
  v24 = (v9 + 56);
  v45 = a3;
  v25 = *(a3 + 16);
  v26 = (v23 + 48);
  v27 = v25 - 1;
  v42 = v25 - 1;
  v28 = v46;
  while (1)
  {
    if (v22 == v25)
    {
      v29 = 1;
      v30 = v25;
      goto LABEL_14;
    }

    if (v22 >= v25)
    {
      break;
    }

    v30 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_19;
    }

    v31 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v22;
    v32 = *(v8 + 48);
    v33 = v17;
    v34 = v26;
    v35 = v24;
    v36 = v8;
    v37 = v43;
    *v43 = v22;
    outlined init with copy of DSLTree._AST.AbsentFunction(v31, v37 + v32, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v38 = v37;
    v8 = v36;
    v24 = v35;
    v26 = v34;
    v17 = v33;
    v27 = v42;
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v38, v47, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtMR);
    v29 = 0;
LABEL_14:
    v39 = v47;
    (*v24)(v47, v29, 1, v8);
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v39, v17, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMd, &_sSi6offset_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberO7elementtSgMR);
    if ((*v26)(v17, 1, v8) == 1)
    {
      return;
    }

    v40 = *v17;
    outlined init with take of DSLTree.QuantificationKind(v17 + *(v8 + 48), v28, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    PrettyPrinter.printAsPattern(_:wrap:)(v28, 0);
    outlined destroy of MEProgram(v28, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    if (v40 != v27)
    {
      v41._countAndFlagsBits = 44;
      v41._object = 0xE100000000000000;
      PrettyPrinter.output(_:)(v41);
    }

    PrettyPrinter.terminateLine()();
    v22 = v30;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t DSLTree.Atom.CharacterClass._patternBase.getter()
{
  result = 0x74696769642ELL;
  switch(*v0)
  {
    case 1:
      result = 0x692E74696769642ELL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x707365746968772ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 0xA:
      result = 0x64726F772ELL;
      break;
    case 0xB:
      result = 0x6E692E64726F772ELL;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18E5B5E94);
    default:
      return result;
  }

  return result;
}

uint64_t DSLTree.Atom._regexBase.getter()
{
  v45 = type metadata accessor for AST.MatchingOption.Kind();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AST.MatchingOption();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DSLTree._AST.Atom(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DSLTree.Atom(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(v0, v21, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        result = *v21;
        v36 = v21[1];
        return result;
      }

      LODWORD(v46) = *v21;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v37 = String.init<A>(_:radix:uppercase:)();
      v46 = 8090972;
      v47 = 0xE300000000000000;
      MEMORY[0x193ACE8E0](v37);

      MEMORY[0x193ACE8E0](125, 0xE100000000000000);
      v38 = v46;
      v39 = v47;
      v46 = 34;
      v47 = 0xE100000000000000;
      MEMORY[0x193ACE8E0](v38, v39);

      MEMORY[0x193ACE8E0](34, 0xE100000000000000);
      return v46;
    }

    if (EnumCaseMultiPayload == 2)
    {
      return 0xD00000000000001DLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000016;
    }

    else
    {
      outlined destroy of MEProgram(v21, type metadata accessor for DSLTree.Atom);
      return 0xD00000000000001ALL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 0xD00000000000001FLL;
      }

      if (EnumCaseMultiPayload != 6)
      {
        outlined init with take of DSLTree.QuantificationKind(v21, v17, type metadata accessor for DSLTree._AST.Atom);
        v40 = AST.Atom._regexBase.getter();
        outlined destroy of MEProgram(v17, type metadata accessor for DSLTree._AST.Atom);
        return v40;
      }

      outlined init with take of DSLTree.QuantificationKind(v21, v13, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
      v46 = 0;
      v47 = 0xE000000000000000;
      v23 = AST.MatchingOptionSequence.adding.getter();
      outlined destroy of MEProgram(v13, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
      v24 = *(v23 + 16);
      if (!v24)
      {

        return 0;
      }

      v26 = *(v6 + 16);
      v25 = v6 + 16;
      v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v41[1] = v23;
      v28 = v23 + v27;
      v42 = *(v25 + 56);
      v43 = v26;
      v44 = v25;
      v29 = v1;
      v30 = (v25 - 8);
      v31 = (v29 + 88);
      v32 = *MEMORY[0x1E69E8A28];
      v33 = (v29 + 8);
      v26(v9, v23 + v27, v5);
      while (1)
      {
        AST.MatchingOption.kind.getter();
        (*v30)(v9, v5);
        v34 = v45;
        if ((*v31)(v4, v45) == v32)
        {
          MEMORY[0x193ACE8E0](693452584, 0xE400000000000000);
        }

        else
        {
          (*v33)(v4, v34);
        }

        v28 += v42;
        if (!--v24)
        {
          break;
        }

        v43(v9, v28, v5);
      }

      return v46;
    }

    if (EnumCaseMultiPayload == 8)
    {
      return 0x292E3A733F28;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      return 0x292E3A732D3F28;
    }

    else
    {
      return 46;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StringLiteralBuilder()
{
  MEMORY[0x193ACE8E0](*v0, v0[1]);
  MEMORY[0x193ACE8E0](34, 0xE100000000000000);
  return 34;
}

unint64_t DSLTree.Atom.Assertion._patternBase.getter()
{
  result = 3104303;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      return result;
    case 0xA:
      result = 3089455;
      break;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t AST.Atom.CharacterProperty.isUnprintableProperty.getter()
{
  v0 = type metadata accessor for Unicode.POSIXProperty();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Unicode.BinaryProperty();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AST.Atom.CharacterProperty.kind.getter();
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x1E69E8C88])
  {
    (*(v14 + 96))(v17, v13);
    (*(v4 + 32))(v7, v17, v3);
    if ((*(v4 + 88))(v7, v3) != *MEMORY[0x1E69E9140])
    {
      (*(v4 + 8))(v7, v3);
      return 1;
    }

    return 0;
  }

  if (v18 == *MEMORY[0x1E69E8CD0])
  {
    (*(v14 + 96))(v17, v13);
    (*(v9 + 32))(v12, v17, v8);
    if ((*(v9 + 88))(v12, v8) != *MEMORY[0x1E69E8F00])
    {
      (*(v9 + 8))(v12, v8);
      return 1;
    }

    return 0;
  }

  if (v18 == *MEMORY[0x1E69E8CD8] || v18 == *MEMORY[0x1E69E8C90])
  {
    (*(v14 + 8))(v17, v13);
    return 1;
  }

  if (v18 != *MEMORY[0x1E69E8CC8])
  {
    if (v18 == *MEMORY[0x1E69E8CB0])
    {
      return 1;
    }

    (*(v14 + 8))(v17, v13);
    return 0;
  }

  (*(v14 + 96))(v17, v13);
  v22 = v26;
  v21 = v27;
  v23 = v28;
  (*(v27 + 32))(v26, v17, v28);
  v24 = (*(v21 + 88))(v22, v23);
  result = 0;
  if (v24 != *MEMORY[0x1E69E8EA8] && v24 != *MEMORY[0x1E69E8ED0])
  {
    (*(v21 + 8))(v22, v23);
    return 1;
  }

  return result;
}

uint64_t AST.Atom.CharacterProperty._dslBase.getter()
{
  v0 = type metadata accessor for Unicode.POSIXProperty();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Unicode.BinaryProperty();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AST.Atom.CharacterProperty.kind.getter();
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x1E69E8C88])
  {
    (*(v14 + 96))(v17, v13);
    (*(v4 + 32))(v7, v17, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69E9140])
    {
      return 0x74696769642ELL;
    }

    (*(v4 + 8))(v7, v3);
  }

  else if (v18 == *MEMORY[0x1E69E8CD0])
  {
    (*(v14 + 96))(v17, v13);
    (*(v9 + 32))(v12, v17, v8);
    if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E69E8F00])
    {
      return 0x707365746968772ELL;
    }

    (*(v9 + 8))(v12, v8);
  }

  else if (v18 == *MEMORY[0x1E69E8CC8])
  {
    (*(v14 + 96))(v17, v13);
    v21 = v25;
    v20 = v26;
    v22 = v27;
    (*(v26 + 32))(v25, v17, v27);
    v23 = (*(v20 + 88))(v21, v22);
    if (v23 == *MEMORY[0x1E69E8EA8])
    {
      return 0x64726F772ELL;
    }

    if (v23 == *MEMORY[0x1E69E8ED0])
    {
      return 0x696769447865682ELL;
    }

    (*(v20 + 8))(v21, v22);
  }

  else
  {
    (*(v14 + 8))(v17, v13);
  }

  return 0;
}

uint64_t AST.Atom._dslBase.getter()
{
  v0 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v1 = *(v0 - 8);
  v56 = v0;
  v57 = v1;
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v53 - v5;
  v6 = type metadata accessor for AST.Atom.CharacterProperty();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AST.Atom.ScalarSequence();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AST.Atom.Scalar();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AST.Atom.Kind();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Atom.kind.getter();
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == *MEMORY[0x1E69E8D58])
  {
    (*(v20 + 96))(v23, v19);
    result = *v23;
    v26 = v23[1];
    return result;
  }

  if (v24 == *MEMORY[0x1E69E8D60])
  {
    (*(v20 + 96))(v23, v19);
    (*(v15 + 32))(v18, v23, v14);
    v27 = AST.Atom.Scalar.value.getter();
    (*(v15 + 8))(v18, v14);
    v63 = 8090972;
    v64 = 0xE300000000000000;
    LODWORD(v62) = v27;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v28 = String.init<A>(_:radix:uppercase:)();
    MEMORY[0x193ACE8E0](v28);

    MEMORY[0x193ACE8E0](125, 0xE100000000000000);
    return v63;
  }

  if (v24 == *MEMORY[0x1E69E8D28])
  {
    (*(v20 + 96))(v23, v19);
    v29 = v60;
    (*(v60 + 32))(v13, v23, v10);
    v30 = AST.Atom.ScalarSequence.scalarValues.getter();
    (*(v29 + 8))(v13, v10);
    v31 = *(v30 + 16);
    if (v31)
    {
      v62 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
      v32 = v62;
      v33 = 32;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      do
      {
        v34 = *(v30 + v33);
        v63 = 8090972;
        v64 = 0xE300000000000000;
        v61 = v34;
        v35 = String.init<A>(_:radix:uppercase:)();
        MEMORY[0x193ACE8E0](v35);

        MEMORY[0x193ACE8E0](125, 0xE100000000000000);
        v36 = v63;
        v37 = v64;
        v62 = v32;
        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v32 = v62;
        }

        *(v32 + 16) = v39 + 1;
        v40 = v32 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        v33 += 4;
        --v31;
      }

      while (v31);
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v63 = v32;
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [String] and conformance [A]);
    v49 = BidirectionalCollection<>.joined(separator:)();

    return v49;
  }

  if (v24 == *MEMORY[0x1E69E8D80])
  {
    (*(v20 + 96))(v23, v19);
    v42 = v58;
    v41 = v59;
    (*(v58 + 32))(v9, v23, v59);
    v43 = AST.Atom.CharacterProperty._dslBase.getter();
    (*(v42 + 8))(v9, v41);
    return v43;
  }

  if (v24 == *MEMORY[0x1E69E8D70])
  {
    (*(v20 + 96))(v23, v19);
    v45 = v56;
    v44 = v57;
    v46 = v55;
    (*(v57 + 32))(v55, v23, v56);
    v47 = v54;
    (*(v44 + 16))(v54, v46, v45);
    v48 = (*(v44 + 88))(v47, v45);
    if (v48 == *MEMORY[0x1E69E8B80])
    {
      (*(v44 + 8))(v46, v45);
      return 0x74696769642ELL;
    }

    if (v48 == *MEMORY[0x1E69E8BE0])
    {
      (*(v44 + 8))(v46, v45);
      return 0x692E74696769642ELL;
    }

    if (v48 == *MEMORY[0x1E69E8C00])
    {
      (*(v44 + 8))(v46, v45);
      return 0xD000000000000015;
    }

    if (v48 == *MEMORY[0x1E69E8C08])
    {
      (*(v44 + 8))(v46, v45);
      return 0xD00000000000001ELL;
    }

    if (v48 == *MEMORY[0x1E69E8B58])
    {
      (*(v44 + 8))(v46, v45);
      return 0xD000000000000019;
    }

    if (v48 == *MEMORY[0x1E69E8BD8])
    {
      (*(v44 + 8))(v46, v45);
      return 0xD000000000000010;
    }

    if (v48 == *MEMORY[0x1E69E8B60])
    {
      (*(v44 + 8))(v46, v45);
      return 0x707365746968772ELL;
    }

    if (v48 == *MEMORY[0x1E69E8B98])
    {
      (*(v44 + 8))(v46, v45);
      return 0xD000000000000014;
    }

    if (v48 == *MEMORY[0x1E69E8B78])
    {
      (*(v44 + 8))(v46, v45);
      return 0xD000000000000013;
    }

    if (v48 == *MEMORY[0x1E69E8BB8])
    {
      (*(v57 + 8))(v55, v56);
      return 0xD00000000000001CLL;
    }

    if (v48 == *MEMORY[0x1E69E8BA0])
    {
      (*(v57 + 8))(v55, v56);
      return 0x64726F772ELL;
    }

    if (v48 == *MEMORY[0x1E69E8BF0])
    {
      (*(v57 + 8))(v55, v56);
      return 0x6E692E64726F772ELL;
    }

    if (v48 == *MEMORY[0x1E69E8BD0] || v48 == *MEMORY[0x1E69E8B90])
    {
      goto LABEL_64;
    }

    if (v48 == *MEMORY[0x1E69E8BE8])
    {
      (*(v57 + 8))(v55, v56);
      return 0xD00000000000001CLL;
    }

    if (v48 == *MEMORY[0x1E69E8BC8])
    {
      (*(v57 + 8))(v55, v56);
      return 0xD000000000000015;
    }

    if (v48 == *MEMORY[0x1E69E8C10])
    {
      (*(v57 + 8))(v55, v56);
      return 0xD000000000000020;
    }

    if (v48 == *MEMORY[0x1E69E8B88])
    {
LABEL_64:
      (*(v57 + 8))(v55, v56);
      return 0xD000000000000013;
    }

    if (v48 == *MEMORY[0x1E69E8C18])
    {
      (*(v57 + 8))(v55, v56);
      return 0xD000000000000025;
    }

    if (v48 == *MEMORY[0x1E69E8B68])
    {
      (*(v57 + 8))(v55, v56);
      return 0xD00000000000001ALL;
    }

    if (v48 != *MEMORY[0x1E69E8BB0])
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      MEMORY[0x193ACE8E0](0x7365203A4F444F54, 0xEE00206465706163);
      v50 = v55;
      v51 = v56;
      _print_unlocked<A, B>(_:_:)();
      v52 = *(v57 + 8);
      v52(v50, v51);
      v49 = v63;
      v52(v54, v51);
      return v49;
    }

    (*(v57 + 8))(v55, v56);
    return 0xD000000000000023;
  }

  if (v24 == *MEMORY[0x1E69E8D20])
  {
    (*(v20 + 8))(v23, v19);
    return 0xD00000000000001CLL;
  }

  if (v24 == *MEMORY[0x1E69E8D18])
  {
    (*(v20 + 8))(v23, v19);
    return 0xD00000000000001BLL;
  }

  if (v24 == *MEMORY[0x1E69E8CF8])
  {
    (*(v20 + 8))(v23, v19);
    return 0xD000000000000017;
  }

  if (v24 == *MEMORY[0x1E69E8D68])
  {
    (*(v20 + 8))(v23, v19);
    return 0xD000000000000014;
  }

  if (v24 == *MEMORY[0x1E69E8D40] || v24 == *MEMORY[0x1E69E8D48])
  {
    (*(v20 + 8))(v23, v19);
    return 0xD000000000000023;
  }

  if (v24 == *MEMORY[0x1E69E8D50])
  {
    return 3092015;
  }

  if (v24 == *MEMORY[0x1E69E8D00] || v24 == *MEMORY[0x1E69E8D08])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v20 + 8))(v23, v19);
    return 0;
  }

  return result;
}

uint64_t DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter()
{
  v0 = type metadata accessor for AST.Atom.CharacterProperty();
  v128 = *(v0 - 8);
  v129 = v0;
  v1 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v127 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AST.Atom.Kind();
  v134 = *(v3 - 8);
  v135 = v3;
  v4 = *(v134 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v125 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v131 = &v123 - v7;
  v8 = type metadata accessor for DSLTree._AST.Atom(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v124 = &v123 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v123 - v14;
  v139 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v15 = *(v139 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v139);
  v133 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v123 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v137 = (&v123 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v132 = &v123 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v123 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v136 = (&v123 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v123 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v123 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v123 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v138 = &v123 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v123 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v123 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v123 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v123 - v51;
  outlined init with copy of DSLTree._AST.AbsentFunction(v140, &v123 - v51, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  v140 = v52;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = 0;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      result = outlined init with copy of DSLTree._AST.AbsentFunction(v140, v39, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v78 = 0;
      v79 = *(*v39 + 16);
      v80 = *(*v39 + 32);
      v81 = *(v79 + 16);
      while (v81 != v78)
      {
        if (v78 >= *(v79 + 16))
        {
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
          __break(1u);
LABEL_80:
          __break(1u);
          return result;
        }

        v82 = outlined init with copy of DSLTree._AST.AbsentFunction(v79 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v78++, v36, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v83 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter(v82);
        result = outlined destroy of MEProgram(v36, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v83)
        {

          v54 = 1;
          v55 = v140;
          goto LABEL_64;
        }
      }

      v104 = 0;
      v105 = *(v80 + 16);
      v55 = v140;
      while (v105 != v104)
      {
        if (v104 >= *(v80 + 16))
        {
          goto LABEL_78;
        }

        v106 = outlined init with copy of DSLTree._AST.AbsentFunction(v80 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v104++, v33, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v107 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter(v106);
        result = outlined destroy of MEProgram(v33, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v107)
        {
LABEL_51:

          goto LABEL_52;
        }
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v55 = v140;
      v96 = v136;
      result = outlined init with copy of DSLTree._AST.AbsentFunction(v140, v136, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v97 = 0;
      v98 = *v96;
      v99 = *(v98 + 16);
      v100 = *(v98 + 32);
      v101 = *(v99 + 16);
      while (v101 != v97)
      {
        if (v97 >= *(v99 + 16))
        {
          goto LABEL_77;
        }

        v102 = outlined init with copy of DSLTree._AST.AbsentFunction(v99 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v97++, v28, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v103 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter(v102);
        result = outlined destroy of MEProgram(v28, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v103)
        {
          goto LABEL_51;
        }
      }

      v113 = 0;
      v114 = *(v100 + 16);
      v115 = v132;
      while (v114 != v113)
      {
        if (v113 >= *(v100 + 16))
        {
          goto LABEL_80;
        }

        v116 = outlined init with copy of DSLTree._AST.AbsentFunction(v100 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v113++, v115, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v117 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter(v116);
        result = outlined destroy of MEProgram(v115, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v117)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v55 = v140;
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_64;
      }

      v62 = v137;
      result = outlined init with copy of DSLTree._AST.AbsentFunction(v140, v137, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v63 = 0;
      v64 = *v62;
      v65 = *(v64 + 16);
      v66 = *(v64 + 32);
      v67 = *(v65 + 16);
      while (v67 != v63)
      {
        if (v63 >= *(v65 + 16))
        {
          goto LABEL_76;
        }

        v68 = outlined init with copy of DSLTree._AST.AbsentFunction(v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v63++, v21, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v69 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter(v68);
        result = outlined destroy of MEProgram(v21, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v69)
        {
          goto LABEL_51;
        }
      }

      v108 = 0;
      v109 = *(v66 + 16);
      v110 = v133;
      while (v109 != v108)
      {
        if (v108 >= *(v66 + 16))
        {
          goto LABEL_79;
        }

        v111 = outlined init with copy of DSLTree._AST.AbsentFunction(v66 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v108++, v110, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v112 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter(v111);
        result = outlined destroy of MEProgram(v110, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if (v112)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_63:
    v54 = 0;
    goto LABEL_64;
  }

  if (!EnumCaseMultiPayload)
  {
    v55 = v140;
    outlined init with copy of DSLTree._AST.AbsentFunction(v140, v50, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    type metadata accessor for DSLTree.Atom(0);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v70 = v130;
      outlined init with take of DSLTree.QuantificationKind(v50, v130, type metadata accessor for DSLTree._AST.Atom);
      v71 = v131;
      AST.Atom.kind.getter();
      outlined destroy of MEProgram(v70, type metadata accessor for DSLTree._AST.Atom);
      v73 = v134;
      v72 = v135;
      v74 = (*(v134 + 88))(v71, v135);
      if (v74 == *MEMORY[0x1E69E8D80])
      {
        (*(v73 + 96))(v71, v72);
        v75 = v127;
        v76 = v128;
        v77 = v129;
        (*(v128 + 32))(v127, v71, v129);
        v54 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
        (*(v76 + 8))(v75, v77);
      }

      else if (v74 == *MEMORY[0x1E69E8D30] || v74 == *MEMORY[0x1E69E8D10] || v74 == *MEMORY[0x1E69E8D38])
      {
        (*(v73 + 8))(v71, v72);
LABEL_52:
        v54 = 1;
      }

      else
      {
        v119 = v74 == *MEMORY[0x1E69E8D20];
        v120 = v71;
        v54 = v119;
        (*(v73 + 8))(v120, v72);
      }

      goto LABEL_64;
    }

    v118 = v50;
LABEL_62:
    outlined destroy of MEProgram(v118, type metadata accessor for DSLTree.Atom);
    goto LABEL_63;
  }

  v55 = v140;
  if (EnumCaseMultiPayload == 1)
  {
    v84 = v138;
    outlined init with copy of DSLTree._AST.AbsentFunction(v140, v138, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    type metadata accessor for DSLTree.Atom(0);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v86 = v124;
        outlined init with take of DSLTree.QuantificationKind(v84, v124, type metadata accessor for DSLTree._AST.Atom);
        v87 = v126;
        outlined init with take of DSLTree.QuantificationKind(v84 + v85, v126, type metadata accessor for DSLTree._AST.Atom);
        v88 = v125;
        AST.Atom.kind.getter();
        outlined destroy of MEProgram(v86, type metadata accessor for DSLTree._AST.Atom);
        v90 = v134;
        v89 = v135;
        v91 = (*(v134 + 88))(v88, v135);
        if (v91 == *MEMORY[0x1E69E8D80])
        {
          (*(v90 + 96))(v88, v89);
          v92 = v127;
          v93 = v128;
          v94 = v129;
          (*(v128 + 32))(v127, v88, v129);
          v95 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
          (*(v93 + 8))(v92, v94);
          if (v95)
          {
            goto LABEL_72;
          }

LABEL_70:
          v54 = AST.Atom.isQuantifiable.getter();
LABEL_73:
          outlined destroy of MEProgram(v87, type metadata accessor for DSLTree._AST.Atom);
          goto LABEL_64;
        }

        if (v91 == *MEMORY[0x1E69E8D30] || v91 == *MEMORY[0x1E69E8D10] || v91 == *MEMORY[0x1E69E8D38])
        {
          (*(v90 + 8))(v88, v89);
        }

        else
        {
          v121 = *MEMORY[0x1E69E8D20];
          v122 = v91;
          (*(v90 + 8))(v88, v89);
          if (v122 != v121)
          {
            goto LABEL_70;
          }
        }

LABEL_72:
        v54 = 1;
        goto LABEL_73;
      }

      outlined destroy of MEProgram(v84, type metadata accessor for DSLTree._AST.Atom);
      v118 = v84 + v85;
    }

    else
    {
      outlined destroy of MEProgram(v84 + v85, type metadata accessor for DSLTree.Atom);
      v118 = v84;
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload == 2)
  {
    result = outlined init with copy of DSLTree._AST.AbsentFunction(v140, v47, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v57 = 0;
    v58 = *v47;
    v59 = *(*v47 + 16);
    while (v59 != v57)
    {
      if (v57 >= *(v58 + 16))
      {
        goto LABEL_75;
      }

      v60 = outlined init with copy of DSLTree._AST.AbsentFunction(v58 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v57++, v44, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v61 = DSLTree.CustomCharacterClass.Member.isUnprintableMember.getter(v60);
      result = outlined destroy of MEProgram(v44, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v61)
      {

        goto LABEL_52;
      }
    }

    goto LABEL_63;
  }

LABEL_64:
  outlined destroy of MEProgram(v55, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  return v54 & 1;
}

unint64_t convert #1 () in AST.Node.dslTreeNode.getter(uint64_t a1)
{
  v300 = a1;
  v246 = type metadata accessor for AST.CustomCharacterClass();
  v245 = *(v246 - 8);
  v1 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v243 = &v242 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for AST.Atom.ScalarSequence();
  v247 = *(v248 - 8);
  v3 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v244 = &v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for AST.Atom.Kind();
  v253 = *(v254 - 8);
  v5 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v252 = &v242 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for AST.Atom();
  v250 = *(v251 - 8);
  v7 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v249 = &v242 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for AST.Trivia();
  v256 = *(v257 - 8);
  v9 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v257);
  v255 = &v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for AST.Quote();
  v260 = *(v261 - 8);
  v11 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v259 = &v242 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMR);
  v267 = *(v268 - 8);
  v13 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v266 = &v242 - v14;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMR);
  v264 = *(v265 - 8);
  v15 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v263 = &v242 - v16;
  v276 = type metadata accessor for AST.Quantification();
  v275 = *(v276 - 8);
  v17 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v276);
  v274 = &v242 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = type metadata accessor for AST.Conditional.Condition();
  v278 = *(v279 - 8);
  v19 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v279);
  v277 = &v242 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AST.Conditional();
  v283 = *(v21 - 8);
  v284 = v21;
  v22 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v282 = &v242 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_SSGMd, &_s12_RegexParser6SourceV7LocatedVy_SSGMR);
  v272 = *(v273 - 8);
  v24 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v273);
  v271 = &v242 - v25;
  v26 = type metadata accessor for AST.Group.Kind();
  v286 = *(v26 - 8);
  v287 = v26;
  v27 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v285 = &v242 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMR);
  v30 = *(v29 - 8);
  v288 = v29;
  v289 = v30;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v258 = &v242 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v281 = &v242 - v34;
  v35 = type metadata accessor for AST.Group();
  v294 = *(v35 - 8);
  v295 = v35;
  v36 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v290 = &v242 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for AST.Concatenation();
  v291 = *(v293 - 1);
  v38 = v291[8];
  MEMORY[0x1EEE9AC00](v293);
  v40 = &v242 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AST.Alternation();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v242 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AST.Node();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v262 = &v242 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v270 = &v242 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v269 = &v242 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v280 = &v242 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v242 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v242 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v64 = (&v242 - v63);
  v296 = *(v47 + 16);
  v297 = v47 + 16;
  (v296)(&v242 - v63, v300, v46);
  v65 = (*(v47 + 88))(v64, v46);
  v66 = *MEMORY[0x1E69E8D98];
  v298 = v47;
  v300 = v46;
  if (v65 == v66)
  {
    (*(v47 + 96))(v64, v46);
    v67 = *v64;
    v68 = swift_projectBox();
    (*(v42 + 16))(v45, v68, v41);
    v69 = AST.Alternation.children.getter();
    v70 = v41;
    v71 = v69;
    (*(v42 + 8))(v45, v70);
    v72 = *(v71 + 16);
    if (v72)
    {
      v73 = v46;
      v291 = v67;
      v299[0] = MEMORY[0x1E69E7CC0];
      v295 = v72;
      v65 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
      v74 = 0;
      v75 = v299[0];
      v294 = v71 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v293 = (v47 + 32);
      v64 = (v47 + 8);
      v76 = v292;
      while (v74 < *(v71 + 16))
      {
        v77 = v71;
        (v296)(v62, v294 + *(v47 + 72) * v74, v73);
        v78 = convert #1 () in AST.Node.dslTreeNode.getter(v62);
        if (v76)
        {
          goto LABEL_82;
        }

        v79 = v78;
        if (((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xC)
        {
          v65 = (*v64)(v62, v73);
        }

        else
        {
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
          v81 = swift_allocBox();
          v82 = v73;
          v83 = v81;
          v84 = *(v80 + 48);
          v76 = 0;
          *v85 = v79;
          v65 = (*v293)(v85 + v84, v62, v82);
          v79 = v83 | 0x6000000000000000;
        }

        v299[0] = v75;
        v87 = *(v75 + 16);
        v86 = *(v75 + 24);
        if (v87 >= v86 >> 1)
        {
          v65 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
          v75 = v299[0];
        }

        ++v74;
        *(v75 + 16) = v87 + 1;
        *(v75 + 8 * v87 + 32) = v79;
        v47 = v298;
        v73 = v300;
        v71 = v77;
        if (v295 == v74)
        {
          v292 = v76;

          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_64;
    }

    v75 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v115 = swift_allocObject();

    result = v115;
    *(v115 + 16) = v75;
  }

  else
  {
    if (v65 != *MEMORY[0x1E69E8DA8])
    {
      if (v65 == *MEMORY[0x1E69E8DE0])
      {
        v105 = v300;
        (*(v47 + 96))(v64, v300);
        v106 = *v64;
        v107 = swift_projectBox();
        v108 = v290;
        (*(v294 + 16))(v290, v107, v295);
        v109 = v280;
        AST.Group.child.getter();
        v110 = v292;
        v111 = convert #1 () in AST.Node.dslTreeNode.getter(v109);
        if (!v110)
        {
          v112 = v111;
          v114 = v286;
          v113 = v287;
          v292 = 0;
          v298 = v106;
          if (((v111 >> 59) & 0x1E | (v111 >> 2) & 1) == 0xC)
          {
            v297 = v111;
            (*(v47 + 8))(v109, v105);
          }

          else
          {
            v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
            v131 = swift_allocBox();
            v132 = *(v130 + 48);
            *v133 = v112;
            (*(v47 + 32))(v133 + v132, v109, v105);
            v297 = v131 | 0x6000000000000000;
          }

          v134 = v289;
          v135 = v281;
          AST.Group.kind.getter();
          v136 = v285;
          v137 = v288;
          MEMORY[0x193ACE600](v288);
          v140 = *(v134 + 8);
          v139 = v134 + 8;
          v138 = v140;
          v140(v135, v137);
          v141 = v113;
          v142 = (*(v114 + 88))(v136, v113);
          if (v142 == *MEMORY[0x1E69E8E10])
          {
            (*(v294 + 8))(v108, v295);
            (*(v114 + 96))(v136, v113);
            v143 = v272;
            v144 = v271;
            v145 = v273;
            (*(v272 + 32))(v271, v136, v273);
            v146 = swift_allocObject();
            MEMORY[0x193ACE600](v299, v145);
            (*(v143 + 8))(v144, v145);

            v147 = v299[1];
            *(v146 + 16) = v299[0];
            *(v146 + 24) = v147;
            *(v146 + 32) = 0;
            *(v146 + 40) = 1;
            *(v146 + 48) = v297;
            result = v146 | 0x1000000000000000;
            *(v146 + 56) = 0u;
            *(v146 + 72) = 0u;
            *(v146 + 88) = 0;
            return result;
          }

          if (v142 == *MEMORY[0x1E69E8E20])
          {
            (*(v294 + 8))(v290, v295);

            type metadata accessor for Unsupported();
            lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
            swift_allocError();
            MEMORY[0x193ACDF10](0xD000000000000017, 0x800000018E5F28D0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/Regex/ASTConversion.swift", 160, 2, 56);
            swift_willThrow();
            (*(v114 + 8))(v136, v113);
          }

          v163 = v297;
          if (v142 == *MEMORY[0x1E69E8E60])
          {
            (*(v294 + 8))(v290, v295);
            v164 = swift_allocObject();

            *(v164 + 16) = 0;
            *(v164 + 24) = 0;
            *(v164 + 32) = 0;
            *(v164 + 40) = 1;
            *(v164 + 48) = v163;
            result = v164 | 0x1000000000000000;
            *(v164 + 56) = 0u;
            *(v164 + 72) = 0u;
            *(v164 + 88) = 0;
            return result;
          }

          v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
          v300 = swift_allocBox();
          v289 = v139;
          v203 = v202;
          v296 = *(v201 + 48);
          v204 = v258;
          v205 = v290;
          AST.Group.kind.getter();
          (*(v294 + 8))(v205, v295);
          v206 = v288;
          MEMORY[0x193ACE600](v288);
          v138(v204, v206);
          *&v296[v203] = v163;
          v207 = v300 | 0x1000000000000004;
          (*(v114 + 8))(v136, v141);
          goto LABEL_60;
        }
      }

      else
      {
        v75 = v300;
        if (v65 == *MEMORY[0x1E69E8DA0])
        {
          (*(v47 + 96))(v64, v300);
          v117 = *v64;
          v118 = swift_projectBox();
          (*(v283 + 16))(v282, v118, v284);
          v119 = v269;
          AST.Conditional.trueBranch.getter();
          v120 = v292;
          v121 = convert #1 () in AST.Node.dslTreeNode.getter(v119);
          if (!v120)
          {
            v122 = v121;
            if (((v121 >> 59) & 0x1E | (v121 >> 2) & 1) == 0xC)
            {
              (*(v47 + 8))(v119, v75);
            }

            else
            {
              v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v158 = swift_allocBox();
              v159 = *(v157 + 48);
              *v160 = v122;
              (*(v47 + 32))(v160 + v159, v119, v75);
              v122 = v158 | 0x6000000000000000;
            }

            v161 = v270;
            AST.Conditional.falseBranch.getter();
            v162 = convert #1 () in AST.Node.dslTreeNode.getter(v161);
            v292 = 0;
            if (((v162 >> 59) & 0x1E | (v162 >> 2) & 1) == 0xC)
            {
              v298[1](v161, v75);
            }

            else
            {
              v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v166 = swift_allocBox();
              v167 = *(v165 + 48);
              *v168 = v162;
              (v298[4])(v168 + v167, v161, v75);
              v162 = v166 | 0x6000000000000000;
            }

            v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
            v170 = swift_allocBox();
            v172 = v171;
            v173 = *(v169 + 48);
            v174 = *(v169 + 64);
            v175 = v277;
            v176 = v282;
            AST.Conditional.condition.getter();
            (*(v283 + 8))(v176, v284);
            AST.Conditional.Condition.kind.getter();
            (*(v278 + 8))(v175, v279);

            *(v172 + v173) = v122;
            *(v172 + v174) = v162;
            return v170 | 0x2000000000000004;
          }
        }

        else
        {
          if (v65 != *MEMORY[0x1E69E8DC0])
          {
            if (v65 == *MEMORY[0x1E69E8DE8])
            {
              (*(v47 + 96))(v64, v300);
              v148 = *v64;
              v149 = swift_projectBox();
              v150 = v260;
              v151 = v259;
              v152 = v261;
              (*(v260 + 16))(v259, v149, v261);
              v153 = swift_allocObject();
              v154 = MEMORY[0x193ACE550]();
              v156 = v155;
              (*(v150 + 8))(v151, v152);

              *(v153 + 16) = v154;
              *(v153 + 24) = v156;
              return v153 | 0x5000000000000000;
            }

            if (v65 == *MEMORY[0x1E69E8DF0])
            {
              (*(v47 + 96))(v64, v300);
              v177 = *v64;
              v178 = swift_projectBox();
              v179 = v256;
              v180 = v255;
              v181 = v257;
              (*(v256 + 16))(v255, v178, v257);
              v182 = swift_allocObject();
              v183 = MEMORY[0x193ACE570]();
              v185 = v184;
              (*(v179 + 8))(v180, v181);

              *(v182 + 16) = v183;
              *(v182 + 24) = v185;
              return v182 | 0x4000000000000004;
            }

            if (v65 == *MEMORY[0x1E69E8DB0])
            {
              (*(v47 + 8))(v64, v300);
              type metadata accessor for Unsupported();
              lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
              swift_allocError();
              MEMORY[0x193ACDF10](0xD000000000000013, 0x800000018E5F2800, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/Regex/ASTConversion.swift", 160, 2, 79);
              return swift_willThrow();
            }

LABEL_64:
            if (v65 == *MEMORY[0x1E69E8DD0])
            {
              (*(v47 + 96))(v64, v75);
              v208 = *v64;
              v209 = swift_projectBox();
              v210 = v250;
              v211 = v249;
              v212 = v251;
              (*(v250 + 16))(v249, v209, v251);
              v213 = v252;
              AST.Atom.kind.getter();
              v214 = v253;
              v215 = v254;
              if ((*(v253 + 88))(v213, v254) == *MEMORY[0x1E69E8D28])
              {
                (*(v210 + 8))(v211, v212);
                (*(v214 + 96))(v213, v215);
                v216 = v247;
                v217 = v244;
                v218 = v248;
                (*(v247 + 32))(v244, v213, v248);
                v219 = AST.Atom.ScalarSequence.scalarValues.getter();
                (*(v216 + 8))(v217, v218);
                v220 = *(v219 + 16);
                if (v220)
                {
                  v300 = v208;
                  v299[0] = MEMORY[0x1E69E7CC0];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v220, 0);
                  v221 = v299[0];
                  type metadata accessor for DSLTree.Atom(0);
                  v222 = 32;
                  do
                  {
                    v223 = *(v219 + v222);
                    v224 = swift_allocBox();
                    *v225 = v223;
                    swift_storeEnumTagMultiPayload();
                    v299[0] = v221;
                    v227 = *(v221 + 16);
                    v226 = *(v221 + 24);
                    if (v227 >= v226 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v226 > 1), v227 + 1, 1);
                      v221 = v299[0];
                    }

                    *(v221 + 16) = v227 + 1;
                    *(v221 + 8 * v227 + 32) = v224 | 0x4000000000000000;
                    v222 += 4;
                    --v220;
                  }

                  while (v220);
                }

                else
                {

                  v221 = MEMORY[0x1E69E7CC0];
                }

                v241 = swift_allocObject();
                *(v241 + 16) = v221;
                return v241 | 4;
              }

              type metadata accessor for DSLTree.Atom(0);
              v234 = swift_allocBox();
              AST.Atom.dslTreeAtom.getter(v235);
              (*(v210 + 8))(v211, v212);
              v207 = v234 | 0x4000000000000000;
              (*(v214 + 8))(v213, v215);
LABEL_60:

              return v207;
            }

LABEL_73:
            if (v65 == *MEMORY[0x1E69E8DC8])
            {
              (*(v47 + 96))(v64, v75);
              v228 = *v64;
              v229 = swift_projectBox();
              v230 = v245;
              v231 = v243;
              v232 = v246;
              (*(v245 + 16))(v243, v229, v246);
              v233 = swift_allocObject();
              AST.CustomCharacterClass.dslTreeClass.getter(v233 + 16);
              (*(v230 + 8))(v231, v232);

              return v233 | 0x3000000000000004;
            }

            else if (v65 == *MEMORY[0x1E69E8DB8])
            {
              (*(v47 + 96))(v64, v75);
              v236 = *v64;
              v237 = type metadata accessor for AST.AbsentFunction();
              v238 = swift_projectBox();
              type metadata accessor for DSLTree._AST.AbsentFunction(0);
              v239 = swift_allocBox();
              (*(*(v237 - 8) + 16))(v240, v238, v237);

              return v239 | 0x5000000000000004;
            }

            else if (v65 == *MEMORY[0x1E69E8DD8])
            {
              (*(v47 + 8))(v64, v75);
              return 0x8000000000000000;
            }

            else
            {
              result = _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            return result;
          }

          (*(v47 + 96))(v64, v300);
          v124 = *v64;
          v125 = swift_projectBox();
          (*(v275 + 16))(v274, v125, v276);
          v126 = v262;
          AST.Quantification.child.getter();
          v127 = v292;
          v128 = convert #1 () in AST.Node.dslTreeNode.getter(v126);
          if (!v127)
          {
            v129 = v128;
            v292 = 0;
            v298 = v124;
            if (((v128 >> 59) & 0x1E | (v128 >> 2) & 1) == 0xC)
            {
              (*(v47 + 8))(v126, v300);
            }

            else
            {
              v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v187 = swift_allocBox();
              v188 = *(v186 + 48);
              *v189 = v129;
              (*(v47 + 32))(v189 + v188, v126, v300);
              v129 = v187 | 0x6000000000000000;
            }

            v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
            v191 = swift_allocBox();
            v193 = v192;
            v194 = *(v190 + 48);
            v195 = *(v190 + 64);
            v196 = v263;
            v197 = v274;
            AST.Quantification.amount.getter();
            v198 = v265;
            MEMORY[0x193ACE600](v265);
            (*(v264 + 8))(v196, v198);
            v199 = v266;
            AST.Quantification.kind.getter();
            (*(v275 + 8))(v197, v276);
            v200 = v268;
            MEMORY[0x193ACE600](v268);
            (*(v267 + 8))(v199, v200);
            type metadata accessor for DSLTree.QuantificationKind(0);
            swift_storeEnumTagMultiPayload();

            *(v193 + v195) = v129;
            return v191 | 0x3000000000000000;
          }
        }
      }

      while (1)
      {
LABEL_82:
        swift_unexpectedError();
        __break(1u);
      }
    }

    (*(v47 + 96))(v64, v300);
    v88 = *v64;
    v89 = swift_projectBox();
    v90 = v291;
    v91 = v293;
    (v291[2])(v40, v89, v293);
    v92 = AST.Concatenation.children.getter();
    v90[1](v40, v91);
    v93 = *(v92 + 16);
    if (v93)
    {
      v291 = v88;
      v299[0] = MEMORY[0x1E69E7CC0];
      v65 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
      v94 = 0;
      v75 = v299[0];
      v95 = v92 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v294 = v47 + 32;
      v295 = v95;
      v293 = (v47 + 8);
      v96 = v292;
      v47 = v92;
      while (v94 < *(v92 + 16))
      {
        (v296)(v59, v295 + v298[9] * v94, v300);
        v97 = convert #1 () in AST.Node.dslTreeNode.getter(v59);
        if (v96)
        {
          goto LABEL_82;
        }

        v98 = v97;
        if (((v97 >> 59) & 0x1E | (v97 >> 2) & 1) == 0xC)
        {
          v65 = (*v293)(v59, v300);
        }

        else
        {
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
          v100 = swift_allocBox();
          v101 = *(v99 + 48);
          v96 = 0;
          *v102 = v98;
          v65 = (*v294)(v102 + v101, v59, v300);
          v98 = v100 | 0x6000000000000000;
        }

        v299[0] = v75;
        v104 = *(v75 + 16);
        v103 = *(v75 + 24);
        v64 = (v104 + 1);
        if (v104 >= v103 >> 1)
        {
          v65 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
          v75 = v299[0];
        }

        ++v94;
        *(v75 + 16) = v64;
        *(v75 + 8 * v104 + 32) = v98;
        v92 = v47;
        if (v93 == v94)
        {

          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v75 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v123 = swift_allocObject();
    *(v123 + 16) = v75;
    return v123 | 4;
  }

  return result;
}

uint64_t AST.Atom.dslTreeAtom.getter@<X0>(char *a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for AST.Atom.Scalar();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for AST.Atom.Kind();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v54 = v1;
  AST.Atom.kind.getter();
  v22 = *(v13 + 88);
  v23 = v22(v21, v12);
  v24 = *MEMORY[0x1E69E8D70];
  v52 = v6;
  if (v23 != v24)
  {
    if (v23 == *MEMORY[0x1E69E8D00])
    {
      v25 = 9;
    }

    else
    {
      if (v23 != *MEMORY[0x1E69E8D08])
      {
        LOBYTE(v56[0]) = 13;
        v51 = v13;
        (*(v13 + 8))(v21, v12);
        goto LABEL_3;
      }

      v25 = 10;
    }

LABEL_10:
    *v55 = v25;
    type metadata accessor for DSLTree.Atom(0);
    return swift_storeEnumTagMultiPayload();
  }

  v51 = v13;
  (*(v13 + 96))(v21, v12);
  (*(v6 + 32))(v11, v21, v5);
  AST.Atom.EscapedBuiltin.dslAssertionKind.getter(v56);
  (*(v6 + 8))(v11, v5);
LABEL_3:
  v25 = v56[0];
  if (LOBYTE(v56[0]) != 13)
  {
    goto LABEL_10;
  }

  AST.Atom.kind.getter();
  if (v22(v19, v12) == v24)
  {
    (*(v51 + 96))(v19, v12);
    v26 = v52;
    (*(v52 + 32))(v11, v19, v5);
    AST.Atom.EscapedBuiltin.dslCharacterClass.getter(v56);
    (*(v26 + 8))(v11, v5);
  }

  else
  {
    LOBYTE(v56[0]) = 14;
    (*(v51 + 8))(v19, v12);
  }

  v28 = v53;
  v25 = v56[0];
  if (LOBYTE(v56[0]) != 14)
  {
    goto LABEL_10;
  }

  AST.Atom.kind.getter();
  v29 = v22(v28, v12);
  if (v29 == *MEMORY[0x1E69E8D58])
  {
    (*(v51 + 96))(v28, v12);
    v30 = *(v28 + 1);
    v31 = v55;
    *v55 = *v28;
    *(v31 + 1) = v30;
    type metadata accessor for DSLTree.Atom(0);
    return swift_storeEnumTagMultiPayload();
  }

  v32 = v51;
  if (v29 == *MEMORY[0x1E69E8D60])
  {
    (*(v51 + 96))(v28, v12);
    v33 = v48;
    v34 = v49;
    v35 = v28;
    v36 = v50;
    (*(v49 + 32))(v48, v35, v50);
    v37 = AST.Atom.Scalar.value.getter();
    (*(v34 + 8))(v33, v36);
    *v55 = v37;
    goto LABEL_28;
  }

  if (v29 == v24)
  {
    (*(v51 + 96))(v28, v12);
    v38 = v52;
    v39 = v47;
    (*(v52 + 32))(v47, v28, v5);
    v40 = AST.Atom.EscapedBuiltin.scalarValue.getter();
    if ((v40 & 0x100000000) == 0)
    {
      v41 = v40;
      (*(v38 + 8))(v39, v5);
      *v55 = v41;
      goto LABEL_28;
    }

    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x193ACE8E0](0xD00000000000004BLL, 0x800000018E5F28F0);
    type metadata accessor for AST.Atom();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Atom and conformance AST.Atom, MEMORY[0x1E69E8D88]);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ACE8E0](v45);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v29 == *MEMORY[0x1E69E8D18])
    {
      (*(v51 + 96))(v28, v12);
      v42 = type metadata accessor for AST.Reference();
      (*(*(v42 - 8) + 32))(v55, v28, v42);
      type metadata accessor for DSLTree.Atom(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v29 == *MEMORY[0x1E69E8D48])
    {
      (*(v51 + 96))(v28, v12);
      v43 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v43 - 8) + 32))(v55, v28, v43);
      type metadata accessor for DSLTree.Atom(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v29 == *MEMORY[0x1E69E8D50])
    {
LABEL_28:
      type metadata accessor for DSLTree.Atom(0);
      return swift_storeEnumTagMultiPayload();
    }

    v44 = type metadata accessor for AST.Atom();
    (*(*(v44 - 8) + 16))(v55, v54, v44);
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    return (*(v32 + 8))(v28, v12);
  }

  return result;
}

uint64_t AST.CustomCharacterClass.dslTreeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = type metadata accessor for AST.CustomCharacterClass.Member();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = AST.CustomCharacterClass.members.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    v24[1] = v1;
    v25 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v30;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v16 = *(v14 + 64);
    v24[0] = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v27 = *(v14 + 56);
    v28 = v15;
    v18 = (v14 - 8);
    v19 = v26;
    do
    {
      v20 = v14;
      v28(v6, v17, v19);
      convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter(v6, v10);
      (*v18)(v6, v19);
      v30 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v19 = v26;
        v13 = v30;
      }

      *(v13 + 16) = v22 + 1;
      outlined init with take of DSLTree.QuantificationKind(v10, v13 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v17 += v27;
      --v12;
      v14 = v20;
    }

    while (v12);

    a1 = v25;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  result = AST.CustomCharacterClass.isInverted.getter();
  *a1 = v13;
  *(a1 + 8) = result & 1;
  return result;
}

uint64_t convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v120 = a1;
  v118 = a2;
  v101 = type metadata accessor for AST.Trivia();
  v100 = *(v101 - 8);
  v2 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.CustomCharacterClass.SetOp();
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v106 = *(v117 - 8);
  v7 = *(v106 + 64);
  v8 = MEMORY[0x1EEE9AC00](v117);
  v102 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5SetOpOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5SetOpOGMR);
  v111 = *(v11 - 8);
  v112 = v11;
  v12 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v98 - v13;
  v14 = type metadata accessor for AST.Quote();
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AST.Atom();
  v115 = *(v17 - 8);
  v116 = v17;
  v18 = *(v115 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v114 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v98 - v21;
  v23 = type metadata accessor for AST.CustomCharacterClass.Range();
  v113 = *(v23 - 8);
  v24 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AST.CustomCharacterClass();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AST.CustomCharacterClass.Member();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v98 - v38;
  v40 = v120;
  v119 = *(v33 + 16);
  v120 = v33 + 16;
  v119(&v98 - v38, v40, v32);
  v41 = (*(v33 + 88))(v39, v32);
  if (v41 == *MEMORY[0x1E69E8B40])
  {
    (*(v33 + 96))(v39, v32);
    v42 = (*(v28 + 32))(v31, v39, v27);
    AST.CustomCharacterClass.dslTreeClass.getter(&v121, v42);
    (*(v28 + 8))(v31, v27);
    v43 = v122;
    v44 = v118;
    *v118 = v121;
    v44[8] = v43;
    return swift_storeEnumTagMultiPayload();
  }

  if (v41 == *MEMORY[0x1E69E8B38])
  {
    (*(v33 + 96))(v39, v32);
    v45 = v113;
    (*(v113 + 32))(v26, v39, v23);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    AST.CustomCharacterClass.Range.lhs.getter();
    v47 = v118;
    AST.Atom.dslTreeAtom.getter(v118);
    v48 = *(v115 + 8);
    v49 = v22;
    v50 = v116;
    v48(v49, v116);
    v51 = v114;
    AST.CustomCharacterClass.Range.rhs.getter();
    (*(v45 + 8))(v26, v23);
    AST.Atom.dslTreeAtom.getter(&v47[v46]);
    v48(v51, v50);
    return swift_storeEnumTagMultiPayload();
  }

  if (v41 == *MEMORY[0x1E69E8B28])
  {
    (*(v33 + 96))(v39, v32);
    v53 = v115;
    v52 = v116;
    (*(v115 + 32))(v22, v39, v116);
    AST.Atom.dslTreeAtom.getter(v118);
    (*(v53 + 8))(v22, v52);
    return swift_storeEnumTagMultiPayload();
  }

  if (v41 == *MEMORY[0x1E69E8B30])
  {
    (*(v33 + 96))(v39, v32);
    v55 = v107;
    v54 = v108;
    v56 = v109;
    v57 = (*(v108 + 32))(v107, v39, v109);
    v58 = MEMORY[0x193ACE550](v57);
    v60 = v59;
    (*(v54 + 8))(v55, v56);
    v61 = v118;
    *v118 = v58;
    *(v61 + 1) = v60;
    return swift_storeEnumTagMultiPayload();
  }

  if (v41 == *MEMORY[0x1E69E8B48])
  {
    (*(v33 + 96))(v39, v32);
    v62 = v100;
    v63 = v99;
    v64 = v101;
    v65 = (*(v100 + 32))(v99, v39, v101);
    v66 = MEMORY[0x193ACE570](v65);
    v68 = v67;
    (*(v62 + 8))(v63, v64);
    v69 = v118;
    *v118 = v66;
    *(v69 + 1) = v68;
    return swift_storeEnumTagMultiPayload();
  }

  if (v41 == *MEMORY[0x1E69E8B20])
  {
    (*(v33 + 96))(v39, v32);
    v70 = *v39;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12_RegexParser3ASTV20CustomCharacterClassV6MemberOG_AA6SourceV7LocatedVy_AE5SetOpOGAHtMd, &_sSay12_RegexParser3ASTV20CustomCharacterClassV6MemberOG_AA6SourceV7LocatedVy_AE5SetOpOGAHtMR);
    v72 = *&v39[*(v71 + 64)];
    (*(v111 + 32))(v110, &v39[*(v71 + 48)], v112);
    v73 = *(v70 + 16);
    v74 = MEMORY[0x1E69E7CC0];
    v114 = v72;
    if (v73)
    {
      v121 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
      v75 = v121;
      v76 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v113 = v70;
      v77 = v70 + v76;
      v78 = *(v33 + 72);
      v115 = v33 + 8;
      v116 = v78;
      v79 = v106;
      v80 = v98;
      do
      {
        v119(v37, v77, v32);
        convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter(v37);
        (*v115)(v37, v32);
        v121 = v75;
        v82 = *(v75 + 16);
        v81 = *(v75 + 24);
        if (v82 >= v81 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v81 > 1, v82 + 1, 1);
          v79 = v106;
          v75 = v121;
        }

        *(v75 + 16) = v82 + 1;
        outlined init with take of DSLTree.QuantificationKind(v80, v75 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v82, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v77 += v116;
        --v73;
      }

      while (v73);
      v115 = v75;

      v72 = v114;
      v74 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v115 = MEMORY[0x1E69E7CC0];
    }

    v83 = *(v72 + 2);
    v84 = v102;
    if (v83)
    {
      v121 = v74;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
      v85 = v106;
      v86 = v121;
      v87 = &v72[(*(v33 + 80) + 32) & ~*(v33 + 80)];
      v116 = *(v33 + 72);
      v88 = (v33 + 8);
      do
      {
        v119(v37, v87, v32);
        convert #1 (_:) in AST.CustomCharacterClass.dslTreeClass.getter(v37);
        (*v88)(v37, v32);
        v121 = v86;
        v90 = *(v86 + 16);
        v89 = *(v86 + 24);
        if (v90 >= v89 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v89 > 1, v90 + 1, 1);
          v85 = v106;
          v86 = v121;
        }

        *(v86 + 16) = v90 + 1;
        outlined init with take of DSLTree.QuantificationKind(v84, v86 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v90, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v87 += v116;
        --v83;
      }

      while (v83);
    }

    else
    {

      v86 = MEMORY[0x1E69E7CC0];
    }

    v91 = v103;
    v92 = v112;
    v93 = v110;
    MEMORY[0x193ACE600](v112);
    v94 = (*(v104 + 88))(v91, v105);
    v95 = v118;
    if (v94 == *MEMORY[0x1E69E8AF0] || v94 == *MEMORY[0x1E69E8AF8] || v94 == *MEMORY[0x1E69E8B00])
    {
      (*(v111 + 8))(v93, v92);
      v96 = swift_allocObject();
      *(v96 + 16) = v115;
      *(v96 + 24) = 0;
      *(v96 + 32) = v86;
      *(v96 + 40) = 0;
      *v95 = v96;
      return swift_storeEnumTagMultiPayload();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AST.Atom.EscapedBuiltin.dslAssertionKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E8B90])
  {
    *a1 = 11;
  }

  else if (result == *MEMORY[0x1E69E8BE8])
  {
    *a1 = 12;
  }

  else if (result == *MEMORY[0x1E69E8BC8])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x1E69E8C10])
  {
    *a1 = 1;
  }

  else if (result == *MEMORY[0x1E69E8B88])
  {
    *a1 = 2;
  }

  else if (result == *MEMORY[0x1E69E8C18])
  {
    *a1 = 4;
  }

  else if (result == *MEMORY[0x1E69E8BF8])
  {
    *a1 = 3;
  }

  else if (result == *MEMORY[0x1E69E8B68])
  {
    *a1 = 5;
  }

  else if (result == *MEMORY[0x1E69E8BB0])
  {
    *a1 = 6;
  }

  else
  {
    *a1 = 13;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t AST.Atom.EscapedBuiltin.dslCharacterClass.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E8B80])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x1E69E8BE0])
  {
    *a1 = 1;
  }

  else if (result == *MEMORY[0x1E69E8C00])
  {
    *a1 = 2;
  }

  else if (result == *MEMORY[0x1E69E8C08])
  {
    *a1 = 3;
  }

  else if (result == *MEMORY[0x1E69E8B58])
  {
    *a1 = 5;
  }

  else if (result == *MEMORY[0x1E69E8BD8])
  {
    *a1 = 4;
  }

  else if (result == *MEMORY[0x1E69E8B60])
  {
    *a1 = 6;
  }

  else if (result == *MEMORY[0x1E69E8B98])
  {
    *a1 = 7;
  }

  else if (result == *MEMORY[0x1E69E8B78])
  {
    *a1 = 8;
  }

  else if (result == *MEMORY[0x1E69E8BB8])
  {
    *a1 = 9;
  }

  else if (result == *MEMORY[0x1E69E8BA0])
  {
    *a1 = 10;
  }

  else if (result == *MEMORY[0x1E69E8BF0])
  {
    *a1 = 11;
  }

  else if (result == *MEMORY[0x1E69E8BD0])
  {
    *a1 = 12;
  }

  else
  {
    *a1 = 14;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

__n128 AnyRegexOutput.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *AnyRegexOutput.extractValues<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = a2;
  v5 = v2[2];
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_18:
    *&v38[0] = v7;
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [Any] and conformance [A]);
    static TypeConstruction.tuple<A>(of:)();
    v29 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(v4, v29 ^ 1u, 1, v3);
  }

  v8 = *v2;
  v9 = v2[1];
  v41 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v10 = 0;
  v7 = v41;
  v11 = v5 + 32;
  v32 = v9;
  while (1)
  {
    outlined init with copy of AnyRegexOutput.ElementRepresentation(v11 + 88 * v10, &v39);
    v40[10] = v8;
    v40[11] = v9;
    v12 = v39;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(v40, &v35, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    if (*(&v37 + 1) == 1)
    {
      break;
    }

    v38[0] = v35;
    v38[1] = v36;
    v38[2] = v37;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(v38, &v35, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    if (*(&v37 + 1))
    {

      outlined destroy of SplitSequence<SubstringSearcher>(v38, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      result = outlined init with take of Any(&v36, v33);
    }

    else
    {

      outlined destroy of SplitSequence<SubstringSearcher>(v38, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      v15 = String.subscript.getter();
      v17 = v16;
      v18 = v8;
      v19 = v6;
      v20 = v11;
      v22 = v21;
      v24 = v23;
      v34 = MEMORY[0x1E69E67B0];
      result = swift_allocObject();
      v33[0] = result;
      result[2] = v15;
      result[3] = v17;
      result[4] = v22;
      result[5] = v24;
      v11 = v20;
      v6 = v19;
      v8 = v18;
      v9 = v32;
      if (*(&v37 + 1))
      {
        result = outlined destroy of Any?(&v36);
      }
    }

    if (v12 < 0)
    {
      goto LABEL_20;
    }

    for (; v12; --v12)
    {
      outlined init with copy of Any(v33, &v35);
      v25 = *(&v36 + 1);
      v26 = __swift_project_boxed_opaque_existential_0(&v35, *(&v36 + 1));
      specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v26, v33, v25);
      __swift_destroy_boxed_opaque_existential_0(&v35);
    }

    outlined init with take of Any(v33, &v35);
LABEL_14:
    outlined destroy of AnyRegexOutput.Element(&v39);
    v41 = v7;
    v28 = *(v7 + 16);
    v27 = *(v7 + 24);
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
      v7 = v41;
    }

    ++v10;
    *(v7 + 16) = v28 + 1;
    outlined init with take of Any(&v35, (v7 + 32 * v28 + 32));
    if (v10 == v6)
    {
      v4 = a2;
      v3 = a1;
      goto LABEL_18;
    }
  }

  result = outlined destroy of SplitSequence<SubstringSearcher>(&v35, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v12 >= 1)
  {
    v14 = static TypeConstruction.optionalType<A>(of:depth:)();
    makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v14, &v35);
    goto LABEL_14;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t AnyRegexOutput.Element.substring.getter()
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(v0 + 8, &v4, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v5[3] == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(&v4, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    return 0;
  }

  else
  {
    outlined destroy of Any?(v5);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    return String.subscript.getter();
  }
}

void *AnyRegexOutput.Element.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  return constructExistentialOutputComponent(from:component:optionalCount:)((v1 + 1), *v1, a1);
}

uint64_t AnyRegexOutput.Element.type.getter()
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?((v0 + 1), v8, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v9[3] == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(v8, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  }

  else
  {
    outlined init with copy of Any?(v9, &v6);
    if (v7)
    {
      outlined init with take of Any(&v6, &v4);
      __swift_project_boxed_opaque_existential_0(&v4, v5);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(&v4);
      outlined destroy of Any?(v9);
      return DynamicType;
    }

    outlined destroy of Any?(v9);
  }

  v3 = *v0;
  return static TypeConstruction.optionalType<A>(of:depth:)();
}

uint64_t AnyRegexOutput.Element.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

Swift::Int __swiftcall AnyRegexOutput.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall AnyRegexOutput.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t AnyRegexOutput.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v2[2];
  if (*(v4 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v5 = v2[1];
  outlined init with copy of AnyRegexOutput.ElementRepresentation(v4 + 88 * result + 32, a2);
  *(a2 + 88) = v6;
  *(a2 + 96) = v5;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6 < result || v6 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3 - result;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_13:
  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_16;
  }

  if (result > v6)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance AnyRegexOutput@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AnyRegexOutput(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AnyRegexOutput(void (**a1)(uint64_t **a1), unint64_t *a2))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x68uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v2[2];
    if (v7 < *(v8 + 16))
    {
      v10 = *v2;
      v9 = v2[1];
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v8 + 88 * v7 + 32, result);
      *(v6 + 11) = v10;
      *(v6 + 12) = v9;

      return protocol witness for Collection.subscript.read in conformance AnyRegexOutput;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance AnyRegexOutput(uint64_t **a1)
{
  v1 = *a1;
  outlined destroy of AnyRegexOutput.Element(*a1);

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance AnyRegexOutput@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = v2[2], *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v5;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance AnyRegexOutput(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance AnyRegexOutput@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 16) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance AnyRegexOutput@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance AnyRegexOutput(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 16) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyRegexOutput(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyRegexOutput(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance AnyRegexOutput@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance AnyRegexOutput(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance AnyRegexOutput@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AnyRegexOutput()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t AnyRegexOutput.subscript.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v5 = v3[2];
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *v3;
    v11 = v5 + 32;

    v13 = 0;
    while (v13 < v7)
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v11, v24);
      *(&v26 + 1) = v10;
      v27 = v6;
      *&v21[16] = v25;
      v22 = v26;
      v23 = v6;
      v18 = v24[0];
      v19 = v24[1];
      v20 = v24[2];
      *v21 = v24[3];
      if (v25 && (*&v21[8] == __PAIR128__(a2, a1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v14 = v22;
        *(a3 + 64) = *&v21[16];
        *(a3 + 80) = v14;
        *(a3 + 96) = v23;
        v15 = v19;
        *a3 = v18;
        *(a3 + 16) = v15;
        v16 = *v21;
        *(a3 + 32) = v20;
        *(a3 + 48) = v16;
        return result;
      }

      ++v13;

      result = outlined destroy of AnyRegexOutput.Element(&v18);
      v7 = *(v5 + 16);
      v11 += 88;
      if (v13 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = v3[1];

LABEL_10:

    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t Regex.Match<A>.subscript.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  return String.subscript.getter();
}

uint64_t Regex.Match<A>.subscript.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v5 = v3[2];
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *v3;
    v11 = v5 + 32;

    v13 = 0;
    while (v13 < v7)
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v11, v24);
      *(&v26 + 1) = v10;
      v27 = v6;
      *&v21[16] = v25;
      v22 = v26;
      v23 = v6;
      v18 = v24[0];
      v19 = v24[1];
      v20 = v24[2];
      *v21 = v24[3];
      if (v25 && (*&v21[8] == __PAIR128__(a2, a1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v14 = v22;
        *(a3 + 64) = *&v21[16];
        *(a3 + 80) = v14;
        *(a3 + 96) = v23;
        v15 = v19;
        *a3 = v18;
        *(a3 + 16) = v15;
        v16 = *v21;
        *(a3 + 32) = v20;
        *(a3 + 48) = v16;
        return result;
      }

      ++v13;

      result = outlined destroy of AnyRegexOutput.Element(&v18);
      v7 = *(v5 + 16);
      v11 += 88;
      if (v13 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = v3[1];

LABEL_10:

    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t Regex<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for SyntaxOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AST();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  v17[1] = a2;
  static SyntaxOptions.traditional.getter();
  lazy protocol witness table accessor for type String and conformance String();
  parse<A>(_:_:)();
  (*(v8 + 8))(v11, v7);
  if (v3)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMd, &_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMR);
  swift_allocObject();
  result = specialized Regex.Program.init(ast:)(v15);
  *a3 = result;
  return result;
}

uint64_t Regex.init(ast:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Regex.Program();
  v4 = swift_allocObject();
  result = specialized Regex.Program.init(ast:)(a1);
  *a2 = v4;
  return result;
}

uint64_t Regex.init(_:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for SyntaxOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AST();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  static SyntaxOptions.traditional.getter();
  lazy protocol witness table accessor for type String and conformance String();
  parse<A>(_:_:)();
  if (v4)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v10 + 8))(v13, v9);

    Regex.init(ast:)(v17, &v25);
    v19 = v25;
    v24[0] = v25;
    v20 = type metadata accessor for Regex();
    result = Regex._verifyType()(v20);
    if (result)
    {
      *a4 = v19;
    }

    else
    {
      v22 = v21;

      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      swift_allocError();
      *v23 = a3;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t Regex._verifyType()(uint64_t a1)
{
  v3 = type metadata accessor for CaptureList.Capture();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CaptureList();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13 == &type metadata for AnyRegexOutput)
  {
    return 1;
  }

  v14 = *v1;
  v51 = 0;
  v52 = 0xE000000000000000;
  v46 = *(v14 + 24);
  static CaptureList.Builder.build(_:)(&v46, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = CaptureList.captures.getter();
  result = (*(v9 + 8))(v12, v8);
  v45 = *(v15 + 16);
  if (v45)
  {
    v41 = v14;
    v42 = v13;
    v13 = 0;
    v44 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v43 = v4 + 16;
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v13 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v4 + 16))(v7, v44 + *(v4 + 72) * v13, v3);
      v20 = CaptureList.Capture.type.getter();
      v21 = CaptureList.Capture.optionalDepth.getter();
      if (v21)
      {
        break;
      }

      v23 = v20;
LABEL_12:
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v27 = *(v17 + 2);
      v26 = *(v17 + 3);
      if (v27 >= v26 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v17);
      }

      *(v17 + 2) = v27 + 1;
      *&v17[8 * v27 + 32] = v25;
      v28 = CaptureList.Capture.name.getter();
      v30 = v29;
      (*(v4 + 8))(v7, v3);
      if (v30)
      {
        MEMORY[0x193ACE8E0](v28, v30);
      }

      v13 = (v13 + 1);
      v46 = v51;
      v47 = v52;
      result = String.UnicodeScalarView.append(_:)();
      v19 = v46;
      v18 = v47;
      v51 = v46;
      v52 = v47;
      if (v13 == v45)
      {

        v14 = v41;
        v13 = v42;
        goto LABEL_21;
      }
    }

    v22 = v21;
    while (1)
    {
      v23 = static TypeConstruction.optionalType(of:)();
      if (__OFSUB__(v22--, 1))
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = 0;
    v18 = 0xE000000000000000;
    v17 = MEMORY[0x1E69E7CC0];
LABEL_21:
    if (*(v17 + 2) == 1)
    {

      v31 = DSLTree.Node.outputDefiningNode.getter(*(v14 + 24));
      v32 = (v31 >> 59) & 0x1E | (v31 >> 2) & 1;
      v33 = v31 & 0xFFFFFFFFFFFFFFBLL;
      if (v32 == 14)
      {
        v34 = *(v33 + 16);
      }

      else
      {
        v34 = MEMORY[0x1E69E67B0];
      }

      return v13 == v34;
    }

    v35 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v35 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v46 = v19;
    v47 = v18;
    v48 = 0;
    v49 = v35;
    v50 = v17;

    v38 = String.Iterator.next()();
    object = v38.value._object;
    countAndFlagsBits = v38.value._countAndFlagsBits;
    if (v38.value._object)
    {
      do
      {
        if (countAndFlagsBits == 32 && object == 0xE100000000000000)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v40 = String.Iterator.next()();
        object = v40.value._object;
        countAndFlagsBits = v40.value._countAndFlagsBits;
      }

      while (v40.value._object);
    }
  }

LABEL_37:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypXpGMd, &_sSayypXpGMR);
  lazy protocol witness table accessor for type [Any.Type] and conformance [A](&lazy protocol witness table cache variable for type [Any.Type] and conformance [A], &_sSayypXpGMd, &_sSayypXpGMR);
  v34 = static TypeConstruction.tupleType<A>(of:labels:)();

  return v13 == v34;
}

Swift::Bool __swiftcall Regex.contains(captureNamed:)(Swift::String captureNamed)
{
  object = captureNamed._object;
  countAndFlagsBits = captureNamed._countAndFlagsBits;
  v2 = type metadata accessor for CaptureList.Capture();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &object - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CaptureList();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &object - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*v1 + 24);
  static CaptureList.Builder.build(_:)(&v25, v11);
  v12 = CaptureList.captures.getter();
  result = (*(v8 + 8))(v11, v7);
  v23 = *(v12 + 16);
  if (v23)
  {
    v14 = 0;
    v15 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v14 < *(v12 + 16))
    {
      v17 = v12;
      (*(v3 + 16))(v6, v15 + *(v3 + 72) * v14, v2);
      v18 = CaptureList.Capture.name.getter();
      v20 = v19;
      result = (*(v3 + 8))(v6, v2);
      if (v20)
      {
        if (v18 == countAndFlagsBits && v20 == object)
        {

          v21 = 1;
          goto LABEL_12;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          v21 = 1;
          goto LABEL_12;
        }
      }

      ++v14;
      v12 = v17;
      if (v23 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v21 = 0;
LABEL_12:

    return v21;
  }

  return result;
}

void *Regex<A>.init<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMd, &_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMR);
  result = swift_allocObject();
  result[3] = v3;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

__n128 Regex.Match<A>.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t Regex.init(_:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);

  type metadata accessor for Regex.Program();
  v4 = swift_allocObject();
  v4[3] = v3;
  v4[4] = 0;
  v4[2] = 0;
  v5 = type metadata accessor for Regex();

  v6 = Regex._verifyType()(v5);

  if ((v6 & 1) == 0)
  {

    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Regex.Program.__allocating_init(ast:)(uint64_t a1)
{
  v2 = swift_allocObject();
  specialized Regex.Program.init(ast:)(a1);
  return v2;
}

uint64_t Regex.init(_regexString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for SyntaxOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AST();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17[0] = a1;
  v17[1] = a2;
  static SyntaxOptions.traditional.getter();
  lazy protocol witness table accessor for type String and conformance String();
  parse<A>(_:_:)();
  (*(v7 + 8))(v10, v6);

  result = Regex.init(ast:)(v14, v17);
  *a3 = v17[0];
  return result;
}

uint64_t Regex.init(_regexString:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AST();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = a1;
  v12[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();
  parseWithDelimiters<A>(_:)();

  result = Regex.init(ast:)(v9, v12);
  *a3 = v12[0];
  return result;
}

void *Regex.init(verbatim:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = v6 | 0x5000000000000000;
  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v7;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

uint64_t Regex.Program.ProgramBox.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  outlined init with take of DSLTree.QuantificationKind(a1, v5 + direct field offset for Regex.Program.ProgramBox.value, type metadata accessor for MEProgram);
  return v5;
}

uint64_t Regex.Program.ProgramBox.__deallocating_deinit()
{
  outlined destroy of MEProgram(v0 + direct field offset for Regex.Program.ProgramBox.value, type metadata accessor for MEProgram);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t loadProgram #1 <A>() in Regex.Program.loweredProgram.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = atomic_load((a1 + 16));
  if (v3)
  {
    v4 = direct field offset for Regex.Program.ProgramBox.value;
    swift_unknownObjectRetain();
    outlined init with copy of DSLTree._AST.AbsentFunction(v3 + v4, a2, type metadata accessor for MEProgram);
    swift_unknownObjectRelease();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for MEProgram(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t specialized Regex.Program.init(ast:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Node();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  AST.root.getter();
  v9 = convert #1 () in AST.Node.dslTreeNode.getter(v8);
  v10 = type metadata accessor for AST();
  (*(*(v10 - 8) + 8))(a1, v10);
  if (((v9 >> 59) & 0x1E | (v9 >> 2) & 1) == 0xC)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v12 = swift_allocBox();
    v13 = *(v11 + 48);
    *v14 = v9;
    (*(v5 + 32))(v14 + v13, v8, v4);
    v9 = v12 | 0x6000000000000000;
  }

  *(v2 + 24) = v9;
  return v2;
}

void *Regex.Program.__allocating_init(tree:)(void *a1)
{
  result = swift_allocObject();
  result[3] = *a1;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t Regex.Program.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24) & 0xFFFFFFFFFFFFFFFLL;

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t Regex._forceAction(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MEProgram(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(a1 + 8))
  {
    v8 = v7[3];
    v9 = v7[4];
    type metadata accessor for Compiler();
    inited = swift_initStackObject();
    inited[2] = v8;
    inited[3] = &outlined read-only object #0 of Regex._forceAction(_:);
    inited[4] = v9;

    Compiler.emit()(v6);
    outlined destroy of MEProgram(v6, type metadata accessor for MEProgram);
  }

  else
  {
    v11 = v7[4];
    if ((*a1 & ~v11) != 0)
    {
      v7[4] = v11 | *a1;
    }

    v12 = v7[2];
    v7[2] = 0;
    swift_unknownObjectRelease();
  }

  return 1;
}

void *CustomConsumingRegexComponent.regex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v12 = *(a2 + 8);
  *(v11 + 16) = swift_getAssociatedTypeWitness();
  (*(v8 + 16))(v10, v4, a1);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v8 + 32))(v14 + v13, v10, a1);
  *(v11 + 24) = partial apply for closure #1 in CustomConsumingRegexComponent.regex.getter;
  *(v11 + 32) = v14;
  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v11 | 0x7000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

uint64_t closure #1 in CustomConsumingRegexComponent.regex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v28 = a9;
  v13 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = v33;
  result = (*(a8 + 16))(a1, a2, v29, v30, v31, a7, a8);
  if (!v21)
  {
    v23 = v17;
    v24 = v28;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
    {
      result = (*(v23 + 8))(v20, v16);
      *(v24 + 32) = 0;
      *v24 = 0u;
      *(v24 + 16) = 0u;
    }

    else
    {
      v25 = *(TupleTypeMetadata2 + 48);
      *v24 = *v20;
      *(v24 + 32) = AssociatedTypeWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 8));
      return (*(*(AssociatedTypeWitness - 8) + 32))(boxed_opaque_existential_0, &v20[v25], AssociatedTypeWitness);
    }
  }

  return result;
}