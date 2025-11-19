Swift::UInt64 specialized Collection.firstIndex(where:)(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = a2;
    v6 = a1;
    v7 = 4 * v4;
    v8 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LODWORD(v8) = 1;
    }

    v9 = 4 << v8;
    v13 = v8 == 0;
    v10 = 11;
    if (!v13)
    {
      v10 = 7;
    }

    v63 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v64 = v10;
    v11._rawBits = 15;
    v65 = 4 * v4;
    v66 = v9;
    while (1)
    {
      v12 = v11._rawBits & 0xC;
      v13 = v12 == v9 || (v11._rawBits & 1) == 0;
      if (v13)
      {
        rawBits = v11._rawBits;
        if (v12 == v9)
        {
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
          v12 = v11._rawBits & 0xC;
          if (v4 <= rawBits >> 16)
          {
            goto LABEL_115;
          }
        }

        else if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }

        if ((rawBits & 1) == 0)
        {
          v15 = v12;
          rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
          v12 = v15;
        }
      }

      else
      {
        rawBits = v11._rawBits;
        if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }
      }

      v16 = (rawBits >> 8) & 0x3F;
      v17 = rawBits >> 16;
      v69 = v12;
      if (v16)
      {
        break;
      }

      if (v7 != rawBits >> 14)
      {
        if ((v5 & 0x1000000000000000) == 0)
        {
          if ((v5 & 0x2000000000000000) != 0)
          {
            v67 = v6;
            v68 = v62;
            v18 = v17 + 1;
            if (v17 + 1 == v2 || (v34 = *(&v67 + v17), v34 != 2573) && (v34 & 0x80808080) == 0)
            {
LABEL_50:
              v67 = v6;
              v68 = v62;
              if (v2 < v18)
              {
                goto LABEL_114;
              }

              v35 = v18 - v17;
              if (v35 < 0)
              {
                goto LABEL_114;
              }

              v36 = _allASCII(_:)((&v67 + v17), v35);
              countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(&v67 + v17, v35, v36, v37);
              if (countAndFlagsBits != 48)
              {
                goto LABEL_61;
              }

              goto LABEL_53;
            }
          }

          else
          {
            v31 = v63;
            v32 = v3;
            if ((v6 & 0x1000000000000000) == 0)
            {
              v31 = _StringObject.sharedUTF8.getter(v6, v5);
            }

            v18 = v17 + 1;
            if (v17 + 1 == v32)
            {
              goto LABEL_28;
            }

            if (!v31)
            {
              goto LABEL_117;
            }

            v33 = *&v31[v17];
            if (v33 != 2573 && (v33 & 0x80808080) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        v18 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v17) + v17;
        if ((v5 & 0x1000000000000000) != 0)
        {
LABEL_60:
          v39 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v17, v18);
          object = v39._object;
          countAndFlagsBits = v39._countAndFlagsBits;
          if (v39._countAndFlagsBits != 48)
          {
            goto LABEL_61;
          }

          goto LABEL_53;
        }

        goto LABEL_23;
      }

      v18 = rawBits >> 16;
      if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_60;
      }

LABEL_27:
      if ((v5 & 0x2000000000000000) != 0)
      {
        goto LABEL_50;
      }

LABEL_28:
      v19 = v63;
      if ((v6 & 0x1000000000000000) != 0)
      {
        if (v3 < v18)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v19 = _StringObject.sharedUTF8.getter(v6, v5);
        if (v38 < v18)
        {
          goto LABEL_114;
        }
      }

      v20 = v5;
      v21 = v4;
      v22 = v3;
      v23 = v2;
      v24 = v6;
      if (v19)
      {
        v25 = &v19[v17];
      }

      else
      {
        v25 = 0;
      }

      v26 = v18 - v17;
      if (v26 < 0 || v26 && !v25)
      {
LABEL_114:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v27 = _allASCII(_:)(v25, v26);
      countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v25, v26, v27, v28);
      v6 = v24;
      v2 = v23;
      v3 = v22;
      v4 = v21;
      v5 = v20;
      if (countAndFlagsBits != 48)
      {
        goto LABEL_61;
      }

LABEL_53:
      if (object == 0xE100000000000000)
      {
        0xE100000000000000;
        goto LABEL_63;
      }

LABEL_61:
      if ((~object & 0x6000000000000000) == 0)
      {
        object;
        return v11._rawBits;
      }

      v40 = object;
      v41 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, object, 0x30uLL, 0xE100000000000000, 0);
      v40;
      if ((v41 & 1) == 0)
      {
        return v11._rawBits;
      }

LABEL_63:
      v9 = v66;
      if (v69 == v66 || (v11._rawBits & 2) == 0)
      {
        v7 = v65;
        if (v69 == v66)
        {
          v54._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
          v9 = v66;
          v11._rawBits = v54._rawBits;
          if (v4 <= v54._rawBits >> 16)
          {
LABEL_115:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }

        if (v11._rawBits)
        {
          if ((v11._rawBits & 2) != 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v55._rawBits = _StringGuts.scalarAlignSlow(_:)(v11)._rawBits;
          v9 = v66;
          v56 = v11._rawBits & 0xC | v55._rawBits & 0xFFFFFFFFFFFFFFF3;
          v11._rawBits = v56 | 1;
          if ((v56 & 2) != 0)
          {
            goto LABEL_71;
          }
        }

        if (v11._rawBits >= 0x10000 && v11._rawBits >> 16 != v4)
        {
          v57._rawBits = _StringGuts._slowRoundDownToNearestCharacter(_:)(v11)._rawBits;
          v9 = v66;
          v11._rawBits = v57._rawBits;
        }
      }

      else
      {
        v7 = v65;
        if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }
      }

LABEL_71:
      v42 = (v11._rawBits >> 8) & 0x3F;
      if (v42)
      {
        goto LABEL_74;
      }

      if (v7 == v11._rawBits >> 14)
      {
        v42 = 0;
        goto LABEL_74;
      }

      v48 = v11._rawBits >> 16;
      if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_109;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v67 = v6;
        v68 = v62;
        if (v48 + 1 == v2)
        {
          goto LABEL_93;
        }

        v49 = &v67;
      }

      else
      {
        v49 = v63;
        v50 = v3;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v60 = _StringObject.sharedUTF8.getter(v6, v5);
          v9 = v66;
          v49 = v60;
          v48 = v11._rawBits >> 16;
        }

        if (v48 + 1 == v50)
        {
          goto LABEL_93;
        }

        if (!v49)
        {
LABEL_117:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v51 = *(v49 + v48);
      if (v51 == 2573 || (v51 & 0x80808080) != 0)
      {
LABEL_109:
        v42 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v48);
        v9 = v66;
LABEL_74:
        v43 = v11._rawBits + (v42 << 16);
        v44 = v43 & 0xFFFFFFFFFFFF0000;
        if (v7 != (v43 & 0xFFFFFFFFFFFF0000) >> 14)
        {
          v45 = v43 >> 16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            if ((v5 & 0x2000000000000000) != 0)
            {
              goto LABEL_95;
            }

            goto LABEL_77;
          }

          goto LABEL_101;
        }

        goto LABEL_10;
      }

LABEL_93:
      v44 = (v11._rawBits + 0x10000) & 0xFFFFFFFFFFFF0000;
      if (v7 != v44 >> 14)
      {
        v45 = (v11._rawBits + 0x10000) >> 16;
        if ((v5 & 0x2000000000000000) != 0)
        {
LABEL_95:
          v67 = v6;
          v68 = v62;
          if (v45 + 1 != v2)
          {
            v46 = &v67;
            goto LABEL_97;
          }

LABEL_99:
          v53 = 1;
LABEL_100:
          v44 |= v53 << 8;
          goto LABEL_10;
        }

LABEL_77:
        v46 = v63;
        v47 = v3;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v58 = v45;
          v59 = _StringObject.sharedUTF8.getter(v6, v5);
          v9 = v66;
          v46 = v59;
          v45 = v58;
        }

        if (v45 + 1 == v47)
        {
          goto LABEL_99;
        }

        if (!v46)
        {
          goto LABEL_117;
        }

LABEL_97:
        v52 = *(v46 + v45);
        if (v52 != 2573 && (v52 & 0x80808080) == 0)
        {
          goto LABEL_99;
        }

LABEL_101:
        v53 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v45);
        v9 = v66;
        if (v53 > 63)
        {
          goto LABEL_10;
        }

        goto LABEL_100;
      }

LABEL_10:
      v11._rawBits = v44 | v64;
      if (v7 == v44 >> 14)
      {
        return 0;
      }
    }

    v18 = v16 + v17;
    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_23:
    if (v18 < v17)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_27;
  }

  return 0;
}

uint64_t Collection.firstIndex(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v44 = a1;
  v45 = a2;
  v37 = a5;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v43 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v35 - v9;
  swift_getAssociatedTypeWitness(0, a4, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  (*(a4 + 64))(v6, a4);
  v49 = *(a4 + 72);
  v50 = a4 + 72;
  v53 = v11;
  v48 = *(swift_getAssociatedConformanceWitness(a4, v6, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v46 = *(v48 + 8);
  v47 = v48 + 8;
  v36 = v12;
  v52 = (v12 + 8);
  v39 = (v8 + 16);
  v40 = a4 + 80;
  v41 = (v8 + 8);
  v38 = a4 + 192;
  while (1)
  {
    v17 = v51;
    v49(v6, a4);
    v18 = v53;
    v19 = v46(v16, v17, v53, v48);
    v20 = *v52;
    (*v52)(v17, v18);
    if (v19)
    {
      v29 = v53;
      v20(v16, v53);
      v30 = 1;
      v31 = v37;
      v32 = v36;
      return (*(v32 + 56))(v31, v30, 1, v29);
    }

    v21 = v16;
    v22 = v6;
    v23 = (*(a4 + 80))(v54, v16, v6, a4);
    v25 = v42;
    v24 = v43;
    (*v39)(v42);
    v23(v54, 0);
    v26 = v55;
    v27 = v44(v25);
    if (v26)
    {
      (*v41)(v25, v24);
      return (v20)(v21, v53);
    }

    v28 = v27;
    (*v41)(v25, v24);
    if (v28)
    {
      break;
    }

    v55 = 0;
    v16 = v21;
    v6 = v22;
    (*(a4 + 192))(v21, v22, a4);
  }

  v32 = v36;
  v31 = v37;
  v34 = v21;
  v29 = v53;
  (*(v36 + 32))(v37, v34, v53);
  v30 = 0;
  return (*(v32 + 56))(v31, v30, 1, v29);
}

uint64_t BidirectionalCollection.last(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v11 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v11, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = type metadata accessor for Optional(0, v12, v13, v14);
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  result = BidirectionalCollection.lastIndex(where:)(a1, a2, a3, a4, &v20 - v16);
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v20 - 4) = a3;
    *(&v20 - 3) = a4;
    *(&v20 - 2) = v5;
    swift_getAssociatedTypeWitness(0, *(v11 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5(partial apply for closure #1 in BidirectionalCollection.last(where:), v15, v19, v21);
    return (*(v20 + 8))(v17, v15);
  }

  return result;
}

uint64_t BidirectionalCollection.lastIndex(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v42 = a1;
  v43 = a2;
  v35 = a5;
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, *(v7 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v41 = v8;
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v33 - v9;
  swift_getAssociatedTypeWitness(0, v7, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  (*(v7 + 72))(v6, v7);
  v48 = *(v7 + 64);
  v49 = v7 + 64;
  v50 = v11;
  v47 = *(swift_getAssociatedConformanceWitness(v7, v6, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v45 = *(v47 + 8);
  v46 = v47 + 8;
  v34 = v12;
  v51 = (v12 + 8);
  v44 = a4;
  v37 = v7 + 80;
  v38 = a4 + 40;
  v36 = (v39 + 2);
  ++v39;
  while (1)
  {
    v48(v6, v7);
    v18 = v50;
    v19 = v45(v17, v15, v50, v47);
    v20 = *v51;
    (*v51)(v15, v18);
    if (v19)
    {
      v20(v17, v18);
      v31 = 1;
      v30 = v35;
      v29 = v34;
      return (*(v29 + 56))(v30, v31, 1, v18);
    }

    (*(v44 + 40))(v17, v6);
    v21 = v6;
    v22 = v7;
    v23 = (*(v7 + 80))(v52, v17, v6, v7);
    v25 = v40;
    v24 = v41;
    (*v36)(v40);
    v23(v52, 0);
    v26 = v53;
    v27 = v42(v25);
    if (v26)
    {
      break;
    }

    v28 = v27;
    v53 = 0;
    (*v39)(v25, v24);
    v6 = v21;
    v7 = v22;
    if (v28)
    {
      v29 = v34;
      v30 = v35;
      v18 = v50;
      (*(v34 + 32))(v35, v17, v50);
      v31 = 0;
      return (*(v29 + 56))(v30, v31, 1, v18);
    }
  }

  (*v39)(v25, v24);
  return (v20)(v17, v50);
}

uint64_t closure #1 in BidirectionalCollection.last(where:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 8);
  v7 = (*(v6 + 80))(v12, a1, a2, v6);
  v9 = v8;
  swift_getAssociatedTypeWitness(0, *(v6 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v10 - 8) + 16))(a4, v9, v10);
  return v7(v12, 0);
}

uint64_t BidirectionalCollection<>.lastIndex(of:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = type metadata accessor for Optional(255, v8, v9, v10);
  v14 = type metadata accessor for Optional(0, v11, v12, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v28 - v20;
  v22 = *(v7 + 128);
  v30 = a1;
  v22(a1, a2, v7);
  if ((*(v19 + 48))(v18, 1, v11) == 1)
  {
    v23 = (*(v15 + 8))(v18, v14);
    MEMORY[0x1EEE9AC00](v23);
    v24 = v29;
    *(&v28 - 4) = a2;
    *(&v28 - 3) = v24;
    v25 = v30;
    *(&v28 - 2) = v31;
    *(&v28 - 1) = v25;
    return BidirectionalCollection.lastIndex(where:)(partial apply for closure #1 in BidirectionalCollection<>.lastIndex(of:), (&v28 - 6), a2, v24, v32);
  }

  else
  {
    v27 = *(v19 + 32);
    v27(v21, v18, v11);
    return (v27)(v32, v21, v11);
  }
}

void Collection.indices(where:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v176 = a2;
  v175 = a1;
  v141 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v190 = v10;
  v194 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v189 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v188 = &v138 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v198 = AssociatedConformanceWitness;
  v16 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v15);
  v181 = *(v16 - 1);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v148 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v152 = &v138 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v138 - v21;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v174 = v22;
  v180 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v151 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v150 = &v138 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v158 = &v138 - v27;
  v173 = type metadata accessor for PartialRangeFrom(0, v9, AssociatedConformanceWitness, v28);
  v186 = *(v173 - 8);
  v29 = MEMORY[0x1EEE9AC00](v173);
  v155 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v138 - v31;
  v140 = type metadata accessor for Optional(0, v9, v33, v34);
  v139 = *(v140 - 8);
  v35 = MEMORY[0x1EEE9AC00](v140);
  v157 = &v138 - v36;
  v196 = *(v9 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v147 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v149 = &v138 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v154 = &v138 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v153 = &v138 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v138 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v160 = &v138 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v138 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v168 = &v138 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v138 - v55;
  v187 = v16;
  _swift_isClassOrObjCExistentialType(v16, v16);
  v201 = &_swiftEmptyArrayStorage;
  v57 = *(a4 + 64);
  v58 = v5;
  v199 = a3;
  v200 = a4;
  v57(a3, a4);
  v59 = v196;
  v60 = v196 + 16;
  v61 = *(v196 + 16);
  v184 = v56;
  v62 = v56;
  v63 = v52;
  v61(v52, v62, v9);
  v64 = v59;
  v65 = *(v198 + 8);
  v66 = *(v65 + 8);
  v167 = v65;
  v166 = v65 + 8;
  v165 = v66;
  if (((v66)(v63, v63, v9) & 1) == 0)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = v32;
  v69 = *(v64 + 32);
  v68 = v64 + 32;
  v191 = v200 + 72;
  v192 = v198 + 24;
  v193 = v69;
  v172 = (v186 + 1);
  v186 = (v194 + 16);
  v177 = (v68 - 24);
  v185 = (v194 + 32);
  v171 = v200 + 88;
  v170 = (v181 + 8);
  v169 = (v180 + 8);
  v156 = (v68 + 16);
  v146 = v198 + 16;
  v142 = v200 + 192;
  v195 = v58;
  v145 = v32;
  v196 = v68;
  v144 = v47;
  v143 = v63;
  v182 = v61;
  v183 = v60;
  while (1)
  {
    v70 = v193;
    v193(v67, v63, v9);
    v71 = v160;
    v61(v160, v67, v9);
    v180 = *(v200 + 72);
    v180(v199);
    v181 = *(v198 + 24);
    if (((v181)(v71, v47, v9) & 1) == 0)
    {
      goto LABEL_19;
    }

    v194 = *v172;
    (v194)(v67, v173);
    v72 = v71;
    v73 = v188;
    v70(v188, v72, v9);
    v74 = v190;
    v70(&v73[*(v190 + 48)], v47, v9);
    v75 = v70;
    v76 = v189;
    v179 = *v186;
    v179(v189, v73, v74);
    v77 = *(v74 + 48);
    v78 = v159;
    v75(v159, v76, v9);
    v79 = *v177;
    (*v177)(&v76[v77], v9);
    v178 = *v185;
    v178(v76, v73, v74);
    v80 = v187;
    v81 = &v76[*(v74 + 48)];
    v82 = v193;
    v193(&v78[*(v187 + 9)], v81, v9);
    v83 = v79;
    v79(v76, v9);
    v84 = v200;
    v85 = v158;
    v163 = *(v200 + 88);
    v163(v78, v199, v200);
    v86 = v85;
    v162 = *v170;
    v162(v78, v80);
    v87 = v84;
    v88 = v199;
    v89 = v174;
    v90 = swift_getAssociatedConformanceWitness(v87, v199, v174, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v91 = v157;
    v164 = v90;
    v92 = v197;
    Collection.firstIndex(where:)(v175, v176, v89, v90, v157);
    if (v92)
    {
      (*v169)(v86, v89);
      v136 = v184;
LABEL_16:
      v83(v136, v9);
      v201;
      return;
    }

    v197 = 0;
    v93 = *v169;
    (*v169)(v86, v89);
    v94 = (*v156)(v91, 1, v9);
    v95 = v184;
    if (v94 == 1)
    {
      v83(v184, v9);
      (*(v139 + 8))(v91, v140);
      v128 = v198;
      goto LABEL_18;
    }

    v161 = v93;
    v96 = v168;
    v82(v168, v91, v9);
    if ((v165(v96, v96, v9, v167) & 1) == 0)
    {
      goto LABEL_19;
    }

    v83(v95, v9);
    v97 = v155;
    v98 = v182;
    v182(v155, v96, v9);
    v99 = v83;
    v100 = v153;
    v98(v153, v97, v9);
    v101 = v154;
    (v180)(v88, v200);
    if (((v181)(v100, v101, v9, v198) & 1) == 0)
    {
      goto LABEL_19;
    }

    (v194)(v97, v173);
    v194 = v99;
    v102 = v188;
    v82(v188, v100, v9);
    v103 = v82;
    v104 = v190;
    v103(&v102[*(v190 + 48)], v101, v9);
    v105 = v189;
    v179(v189, v102, v104);
    v106 = *(v104 + 48);
    v107 = v152;
    v103(v152, v105, v9);
    v108 = &v105[v106];
    v109 = v194;
    (v194)(v108, v9);
    v178(v105, v102, v104);
    v110 = v187;
    v103(&v107[*(v187 + 9)], &v105[*(v104 + 48)], v9);
    v111 = v105;
    v112 = v174;
    v109(v111, v9);
    v83 = v109;
    v163(v107, v199, v200);
    v162(v107, v110);
    v113 = v150;
    v114 = v164;
    v115 = v197;
    Collection.prefix(while:)(v175, v176, v112, v164, v150);
    v197 = v115;
    if (v115)
    {
      v136 = v168;
      goto LABEL_16;
    }

    v116 = v184;
    (v114[9])(v112, v114);
    v161(v113, v112);
    v117 = v149;
    v182(v149, v116, v9);
    v118 = v168;
    if (((v181)(v168, v117, v9, v198) & 1) == 0)
    {
      goto LABEL_19;
    }

    v119 = v188;
    v120 = v193;
    v193(v188, v118, v9);
    v121 = v190;
    v120(&v119[*(v190 + 48)], v117, v9);
    v122 = v189;
    v179(v189, v119, v121);
    v123 = *(v121 + 48);
    v124 = v148;
    v120(v148, v122, v9);
    (v194)(&v122[v123], v9);
    v125 = v119;
    v126 = v184;
    v178(v122, v125, v121);
    v127 = v187;
    v120((v124 + *(v187 + 9)), &v122[*(v121 + 48)], v9);
    v128 = v198;
    v129 = v194;
    (v194)(v122, v9);
    v132 = type metadata accessor for Array(0, v127, v130, v131);
    Array.append(_:)(v124, v132);
    v133 = v147;
    v134 = v199;
    (v180)(v199, v200);
    LOBYTE(v121) = (*(v128 + 16))(v126, v133, v9, v128);
    v129(v133, v9);
    if ((v121 & 1) == 0)
    {
      break;
    }

    (*(v200 + 192))(v126, v134);
    v63 = v143;
    v61 = v182;
    v182(v143, v126, v9);
    v135 = v165(v63, v63, v9, v167);
    v67 = v145;
    v47 = v144;
    if ((v135 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v129(v126, v9);
LABEL_18:
  RangeSet.init(_orderedRanges:)(v201, v9, v128, v137, v141);
}

uint64_t static Comparable.... postfix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return static Comparable.... postfix(_:)(a1, a2, a3, a4);
}

{
  if (((*(*(a3 + 8) + 8))(a1, a1, a2) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(*(a2 - 8) + 16);

  return v7(a4, a1, a2);
}

uint64_t specialized Collection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < a1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t specialized Collection.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Collection.subscript.getter(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a2, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  (*(a5 + 24))(v5, a2, a4, a3, a5);
  (*(a4 + 88))(v17, a2, a4);
  return (*(v15 + 8))(v17, v14);
}

void RangeSet.init(_orderedRanges:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for Range(0, a2, a3, a4);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v12 = Array._getCount()();
  if (v12 == 1)
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v7, v7);
    v19 = ((a1 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
    Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
    if (v19)
    {
      v20 = *(v8 + 80);
      v21 = (v20 + 32) & ~v20;
      (*(v8 + 16))(v11, a1 + v21, v7);
      a1;
    }

    else
    {
      v31 = _ArrayBuffer._getElementSlowPath(_:)(0, a1, v7);
      if (v9 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v34 = v31;
      v32 = v31;
      (*(v8 + 16))(v11, &v34, v7);
      a1;
      swift_unknownObjectRelease(v32);
      v20 = *(v8 + 80);
      v21 = (v20 + 32) & ~v20;
    }

    v24 = type metadata accessor for _ContiguousArrayStorage(0, v7, v22, v23);
    v25 = swift_allocObject(v24, (v21 + *(v8 + 72)), v20 | 7);
    a1 = static Array._adoptStorage(_:count:)(v25, 1);
    (*(v8 + 32))(v26, v11, v7);
    v13 = _ArrayBuffer.requestNativeBuffer()(a1, v7);
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v12)
  {
    v27 = a1;
    v16 = _ArrayBuffer.requestNativeBuffer()(v27, v7);
    a1;
    if (v16)
    {
LABEL_13:
      v17 = a1;
      goto LABEL_14;
    }

    v34 = a1;
    v13 = 0;
    goto LABEL_11;
  }

  a1;
  _swift_isClassOrObjCExistentialType(v7, v7);
  a1 = &_swiftEmptyArrayStorage;
  v13 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v7);
  if (!v13)
  {
LABEL_8:
    v34 = a1;
LABEL_11:
    v28 = type metadata accessor for Array(v13, v7, v14, v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v28, v29);
    v13 = _copyCollectionToContiguousArray<A>(_:)(&v34, v28, WitnessTable);
LABEL_12:
    v16 = v13;
    goto LABEL_13;
  }

  v16 = v13;
  v17 = &_swiftEmptyArrayStorage;
LABEL_14:
  v17;
  *a5 = v16;
}

void Collection<>.indices(of:)(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  Collection.indices(where:)(partial apply for closure #1 in Collection<>.indices(of:), v5, a2, a3, a5);
}

uint64_t MutableCollection._halfStablePartition(isSuffixElement:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v47 = a4;
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v63 = v10;
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v41 - v11;
  swift_getAssociatedTypeWitness(255, v9, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v45 = *(v13 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v41 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v41 - v24;
  v59 = v26;
  v65 = a1;
  v27 = v61;
  result = Collection.firstIndex(where:)(a1, a2, a3, v9, v26);
  if (!v27)
  {
    v60 = v20;
    v46 = v25;
    v58 = a2;
    v61 = v5;
    v29 = v45;
    v30 = v59;
    if ((*(v45 + 48))(v59, 1, v13) == 1)
    {
      (*(v56 + 8))(v30, v57);
      return (*(v9 + 72))(a3, v9);
    }

    else
    {
      v31 = v46;
      v42 = *(v29 + 32);
      v42(v46, v30, v13);
      (*(v9 + 184))(v31, a3, v9);
      v56 = *(v9 + 72);
      v57 = v9 + 72;
      v55 = *(swift_getAssociatedConformanceWitness(v9, a3, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
      v53 = *(v55 + 8);
      v54 = v55 + 8;
      v45 = v29 + 32;
      v59 = (v29 + 8);
      v50 = (v52 + 2);
      v51 = v9 + 80;
      ++v52;
      v44 = v47 + 64;
      v49 = (v9 + 192);
      v48 = (v9 + 192) & 0xFFFFFFFFFFFFLL | 0x8421000000000000;
      while (1)
      {
        v34 = v60;
        (v56)(a3, v9);
        v35 = v53(v23, v34, v13, v55);
        v36 = *v59;
        (*v59)(v34, v13);
        if (v35)
        {
          break;
        }

        v37 = v13;
        v38 = (*(v9 + 80))(v64, v23, a3, v9);
        v39 = v62;
        v40 = v63;
        (*v50)(v62);
        (v38)(v64, 0);
        LOBYTE(v38) = v65(v39);
        (*v52)(v39, v40);
        if (v38)
        {
          v33 = *v49;
        }

        else
        {
          v32 = v46;
          (*(v47 + 64))(v46, v23, a3);
          v33 = *(v9 + 192);
          v33(v32, a3, v9);
        }

        v13 = v37;
        v33(v23, a3, v9);
      }

      v36(v23, v13);
      return v42(v43, v46, v13);
    }
  }

  return result;
}

uint64_t closure #1 in MutableCollection<>.partition(by:)@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_getAssociatedTypeWitness(255, *(*(a4 + 8) + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = type metadata accessor for UnsafeMutableBufferPointer(0, v9, v10, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v12, v13);
  v16 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v12, v15);
  result = MutableCollection<>._partitionImpl(by:)(a1, a2, v12, WitnessTable, v16, &v18);
  if (!v5)
  {
    *a5 = v18;
  }

  return result;
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(char *))
{
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *v1;
    if (v6 >= 8)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v1;
    }

    v17 = v8 >> (8 * (v6 & 7u));
    v9 = a1(&v17);
    if (v2)
    {
      break;
    }

    v10 = HIBYTE(v3) & 0xF;
    if (v9)
    {
      v15 = a1;
      v11 = 8 * v4 + 56;
      v12 = v4;
      do
      {
        if (--v12 < 0 || v4 > v10)
        {
          goto LABEL_21;
        }

        if (v6 >= v12)
        {
          return v6;
        }

        v13 = v3 >> (v11 & 0x38);
        if (v12 <= 7)
        {
          v13 = v7 >> v11;
        }

        v16 = v13;
        v11 -= 8;
      }

      while ((v15(&v16) & 1) != 0);
      specialized MutableCollection.swapAt(_:_:)(v6, v12);
      v3 = v1[1];
      v6 = specialized RandomAccessCollection<>.index(after:)(v6, *v1, v3);
      v4 = v12;
      a1 = v15;
    }

    else
    {
      if (v6 >= v10)
      {
LABEL_21:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      ++v6;
    }
  }

  while (v6 < v4);
  return v6;
}

{
  v3 = v1[1];
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *v1;
  v7 = v1[1];
  do
  {
    if (v5 == v3)
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v15 = *(v6 + v5);
    v8 = a1(&v15);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v7;
      while (1)
      {
        v10 = v9 - 1;
        if (v5 >= v9 - 1)
        {
          return v5;
        }

        if (v7 > v3)
        {
          goto LABEL_17;
        }

        v14 = *(v6 + v9 - 1);
        v11 = a1(&v14);
        v9 = v10;
        if ((v11 & 1) == 0)
        {
          v12 = *(v6 + v5);
          *(v6 + v5) = *(v6 + v10);
          *(v6 + v10) = v12;
          v7 = v10;
          goto LABEL_13;
        }
      }
    }

    v10 = v7;
LABEL_13:
    ++v5;
  }

  while (v5 < v10);
  return v5;
}

Swift::Int specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(char *))
{
  v3 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v4 = v1[1];
  v5 = v4 - v3;
  if (v4 - v3 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = v4 - v3;
  do
  {
    if (v7 < 0 || v7 >= v5)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v15 = *(v3 + v7);
    v9 = a1(&v15);
    if (v2)
    {
      break;
    }

    if (v9)
    {
      v10 = v8;
      while (1)
      {
        if (v8 > v5)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v11 = v10 - 1;
        if (v7 >= v10 - 1)
        {
          return v7;
        }

        v14 = *(v3 - 1 + v10);
        v12 = a1(&v14);
        v10 = v11;
        if ((v12 & 1) == 0)
        {
          UnsafeMutableRawBufferPointer.swapAt(_:_:)(v7, v11);
          v7 = specialized RandomAccessCollection<>.index(after:)(v7, v3, v4);
          v8 = v11;
          goto LABEL_14;
        }
      }
    }

    ++v7;
LABEL_14:
    ;
  }

  while (v7 < v8);
  return v7;
}

uint64_t MutableCollection<>._partitionImpl(by:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v68 = a1;
  v69 = a2;
  v52 = a6;
  v63 = a4;
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v60 = v10;
  v64 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v49 - v13;
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v53 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v49 - v19;
  (*(v9 + 64))(a3, v9);
  (*(v9 + 72))(a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a3, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = *(AssociatedConformanceWitness + 16);
  v72 = v20;
  v54 = v18;
  v70 = v15;
  v66 = AssociatedConformanceWitness + 16;
  v67 = AssociatedConformanceWitness;
  v65 = v22;
  if ((v22)(v20, v18, v15))
  {
    v23 = a3;
    v24 = *(v9 + 80);
    v25 = (v64 + 2);
    ++v64;
    v49[1] = v9 + 192;
    v59 = (v63 + 40);
    v49[0] = v51 + 64;
    v26 = v60;
    v27 = v72;
    v28 = v50;
    v61 = v6;
    v62 = a3;
    v57 = v24;
    v58 = v9 + 80;
    v56 = v25;
    while (1)
    {
      v29 = v24(v71, v27, v23, v9);
      v30 = *v25;
      (*v25)(v28);
      v29(v71, 0);
      v31 = v68(v28);
      if (v7)
      {
        (*v64)(v28, v26);
        v47 = *(v53 + 8);
        v48 = v70;
        v47(v54, v70);
        return (v47)(v72, v48);
      }

      v32 = v31;
      v33 = *v64;
      (*v64)(v28, v26);
      if (v32)
      {
        break;
      }

      v27 = v72;
      v23 = v62;
      (*(v9 + 192))(v72);
LABEL_10:
      v42 = v65(v27, v54);
      v24 = v57;
      v25 = v56;
      if ((v42 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v34 = *v59;
    v35 = v54;
    while (1)
    {
      v36 = v9;
      v37 = v62;
      v34(v35, v62, v63);
      if ((v65(v72, v35) & 1) == 0)
      {
        break;
      }

      v38 = v37;
      v9 = v36;
      v39 = v57(v71, v35, v38, v36);
      v40 = v55;
      v26 = v60;
      v30(v55);
      (v39)(v71, 0);
      LOBYTE(v39) = v68(v40);
      v33(v40, v26);
      if ((v39 & 1) == 0)
      {
        v27 = v72;
        v41 = v62;
        (*(v51 + 64))(v72, v35, v62);
        v23 = v41;
        (*(v9 + 192))(v27, v41, v9);
        v28 = v50;
        goto LABEL_10;
      }
    }
  }

  v27 = v72;
LABEL_13:
  v43 = v27;
  v44 = v53;
  v45 = v70;
  (*(v53 + 8))(v54, v70);
  return (*(v44 + 32))(v52, v43, v45);
}

uint64_t MutableCollection._indexedStablePartition(count:range:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v139 = a2;
  v135 = a4;
  v136 = a3;
  v133 = a6;
  v134 = a7;
  v9 = *(a6 + 8);
  swift_getAssociatedTypeWitness(255, v9, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  swift_getTupleTypeMetadata2(0, v11, v11, "lower upper ", 0);
  v131 = v12;
  v137 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v106 - v16;
  v138 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a5, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v19 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = *(v11 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v106 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v106 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v41 = (&v106 - v40);
  if (a1 != 1)
  {
    if (!a1)
    {
      return (*(v23 + 16))(v134, v139, v11);
    }

    v130 = v36;
    v122 = v35;
    v125 = v33;
    v111 = v39;
    v112 = v38;
    v126 = v15;
    v107 = v37;
    v128 = v34;
    v113 = a1;
    v46 = a1 / 2;
    v47 = *(v9 + 136);
    v48 = v139;
    v121 = v46;
    v49 = v23;
    v50 = AssociatedConformanceWitness;
    v47(v139);
    v51 = v11;
    v52 = v49;
    v55 = *(v49 + 16);
    v53 = v49 + 16;
    v54 = v55;
    v55(v30, v48, v51);
    v56 = *(v50 + 24);
    v119 = v50;
    v118 = v50 + 24;
    v117 = v56;
    if (v56(v30, v41, v51, v50))
    {
      v108 = v26;
      v57 = v53;
      v129 = v52;
      v59 = v52 + 32;
      v58 = *(v52 + 32);
      v60 = v54;
      v61 = v131;
      v62 = v132;
      v58(v132, v30, v51);
      v63 = v58;
      v127 = v58;
      v64 = &v62[*(v61 + 48)];
      v124 = v41;
      v110 = v57;
      v109 = v60;
      v60(v64, v41, v51);
      v65 = v137;
      v66 = *(v137 + 16);
      v67 = v126;
      v116 = v137 + 16;
      v115 = v66;
      v66(v126, v62, v61);
      v123 = *(v61 + 48);
      v68 = v122;
      v63(v122, v67, v51);
      v69 = v129 + 8;
      v70 = *(v129 + 8);
      v70(v123 + v67, v51);
      v71 = *(v65 + 32);
      v137 = v65 + 32;
      v114 = v71;
      v71(v67, v62, v61);
      v72 = v128;
      v127(&v68[*(v128 + 36)], &v67[*(v61 + 48)], v51);
      v120 = v51;
      v123 = v70;
      v70(v67, v51);
      v73 = v121;
      v74 = v140;
      MutableCollection._indexedStablePartition(count:range:by:)(v121, v68, v136, v135, v138, v133);
      if (v74)
      {
        (*(v130 + 8))(v68, v72);
        return v123(v124, v120);
      }

      v75 = v109;
      v106 = v59;
      v140 = 0;
      v76 = *(v130 + 8);
      v130 += 8;
      result = v76(v68, v72);
      v121 = v113 - v73;
      if (__OFSUB__(v113, v73))
      {
        __break(1u);
        return result;
      }

      v122 = v76;
      v129 = v69;
      v77 = (v139 + *(v72 + 36));
      v78 = v108;
      v79 = v120;
      v80 = v75;
      v75(v108, v77, v120);
      v81 = v124;
      v82 = v117(v124, v78, v79, v119);
      v83 = v126;
      if (v82)
      {
        v84 = v132;
        v80(v132, v81, v79);
        v85 = v131;
        v86 = v78;
        v87 = v127;
        v127(&v84[*(v131 + 48)], v86, v79);
        v115(v83, v84, v85);
        v88 = *(v85 + 48);
        v89 = v112;
        v87(v112, v83, v79);
        v90 = v123;
        v123(&v83[v88], v79);
        v114(v83, v84, v85);
        v91 = v128;
        v87(v89 + *(v128 + 36), &v83[*(v85 + 48)], v79);
        v90(v83, v79);
        v92 = v111;
        v93 = v140;
        MutableCollection._indexedStablePartition(count:range:by:)(v121, v89, v136, v135, v138, v133);
        if (v93)
        {
          (v122)(v89, v91);
          v90(v125, v79);
          return (v90)(v124, v79);
        }

        v140 = 0;
        (v122)(v89, v91);
        v94 = v125;
        if (v117(v125, v92, v79, v119))
        {
          v95 = v132;
          v96 = v127;
          v127(v132, v94, v79);
          v97 = v131;
          v96(&v95[*(v131 + 48)], v92, v79);
          v115(v83, v95, v97);
          v98 = *(v97 + 48);
          v99 = v107;
          v96(v107, v83, v79);
          v100 = &v83[v98];
          v101 = v123;
          v123(v100, v79);
          v114(v83, v95, v97);
          v102 = *(v97 + 48);
          v103 = v128;
          v96(&v99[*(v128 + 36)], &v83[v102], v79);
          v104 = v101;
          v101(v83, v79);
          v105 = v124;
          MutableCollection._rotate(in:shiftingToStart:)(v99, v124, v138, v133, v134);
          (v122)(v99, v103);
          return v104(v105, v79);
        }
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v43 = v34;
  v44 = v139;
  v45 = v140;
  result = v136(v139);
  if (!v45)
  {
    if (result)
    {
      return (*(v23 + 16))(v134, v44, v11);
    }

    else
    {
      return (*(v23 + 16))(v134, v44 + *(v43 + 36), v11);
    }
  }

  return result;
}

uint64_t static Int./ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static Int./ infix(_:_:)(a1, a2);
}

{
  if (!a2 || a1 == 0x8000000000000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

uint64_t MutableCollection._rotate(in:shiftingToStart:)@<X0>(char *a1@<X0>, void (**a2)(char *, char *, const char *, uint64_t)@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v136 = a1;
  v137 = a2;
  v101 = a5;
  v131 = a4;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v6, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v107 = v9;
  v135 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v111 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v101 - v12;
  v130 = v6;
  v129 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v14);
  v132 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v138 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v140 = &v101 - v19;
  v20 = *(v8 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v104 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v139 = &v101 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v106 = &v101 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v109 = &v101 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v108 = &v101 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v105 = &v101 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v113 = &v101 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v102 = &v101 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v101 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v101 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v101 - v43;
  v45 = *(v20 + 16);
  v45(&v101 - v43, v137, v8);
  v46 = v136;
  v45(v42, v136, v8);
  v123 = v15;
  v47 = &v46[*(v15 + 36)];
  v125 = v20 + 16;
  v128 = v45;
  v45(v39, v47, v8);
  v119 = AssociatedConformanceWitness;
  v48 = *(AssociatedConformanceWitness + 8);
  v49 = *(v48 + 8);
  if (v49(v42, v44, v8, v48))
  {
    v50 = *(v20 + 8);
    v50(v42, v8);
    v50(v44, v8);
    return (*(v20 + 32))(v101, v39, v8);
  }

  else
  {
    v122 = v42;
    v133 = v49;
    v134 = v48;
    if (v49(v44, v39, v8, v48))
    {
      v52 = *(v20 + 8);
      v52(v39, v8);
      v52(v44, v8);
      return (*(v20 + 32))(v101, v122, v8);
    }

    else
    {
      v112 = v48 + 8;
      v118 = v39;
      v126 = v44;
      v128(v102, v39, v8);
      v121 = (v20 + 32);
      v117 = (v135 + 16);
      v124 = (v20 + 8);
      v53 = (v135 + 32);
      v136 = (v130 + 24);
      v137 = (v131 + 64);
      v103 = (v132 + 8);
      v54 = v111;
      v55 = v110;
      v56 = v108;
      v116 = v119 + 24;
      for (i = (v135 + 32); ; v53 = i)
      {
        v57 = v128;
        v128(v56, v122, v8);
        v58 = v109;
        v57(v109, v126, v8);
        v59 = *(v119 + 24);
        if ((v59(v56, v58, v8) & 1) == 0 || (v132 = v59, v60 = *v121, (*v121)(v55, v56, v8), v61 = v107, v60(&v55[*(v107 + 48)], v58, v8), v62 = v54, v120 = *v117, (v120)(v54, v55, v61), v135 = *(v61 + 48), v63 = v53, v64 = v140, v60(v140, v54, v8), v65 = *v124, (*v124)(&v54[v135], v8), v114 = *v63, v114(v54, v55, v61), v66 = *(v61 + 48), v135 = *(v123 + 36), v127 = v60, v60(&v64[v135], &v54[v66], v8), v67 = v65, v65(v62, v8), v68 = v106, v128(v106, v126, v8), v69 = v118, ((v132)(v68, v118, v8, v119) & 1) == 0))
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v67(v122, v8);
        v70 = v68;
        v71 = v127;
        v127(v55, v70, v8);
        v128(&v55[*(v61 + 48)], v69, v8);
        (v120)(v62, v55, v61);
        v72 = *(v61 + 48);
        v73 = v138;
        v71(v138, v62, v8);
        v67(&v62[v72], v8);
        v114(v62, v55, v61);
        v74 = *(v61 + 48);
        v132 = *(v123 + 36);
        v71(&v132[v73], &v62[v74], v8);
        v120 = v67;
        v67(v62, v8);
        v75 = v128;
        v128(v139, v140, v8);
        v76 = v104;
        v75(v104, v73, v8);
        v77 = *v137;
        v78 = *v136;
        do
        {
          v79 = v139;
          v80 = v129;
          v77(v139, v76, v129, v131);
          v81 = v130;
          v78(v79, v80, v130);
          v82 = v80;
          v83 = v140;
          v84 = v81;
          v85 = v134;
          v78(v76, v82, v84);
          v86 = v79;
          v87 = v133;
        }

        while ((v133(v86, &v83[v135], v8, v85) & 1) == 0 && (v87(v76, &v132[v138], v8, v85) & 1) == 0);
        v88 = *v103;
        v89 = v123;
        (*v103)(v138, v123);
        v88(v83, v89);
        v90 = v87;
        v91 = v113;
        v92 = v127;
        v127(v113, v139, v8);
        v93 = v105;
        v92(v105, v76, v8);
        v94 = v118;
        if (v90(v93, v118, v8, v85))
        {
          if (v90(v102, v94, v8, v85))
          {
            v95 = v102;
            v120(v102, v8);
            v128(v95, v113, v8);
          }

          v91 = v113;
          v90 = v133;
          v85 = v134;
          if (v133(v113, v126, v8, v134))
          {
            break;
          }
        }

        v96 = v122;
        v97 = v91;
        v98 = v127;
        v127(v122, v97, v8);
        v99 = v126;
        if (v90(v96, v126, v8, v85))
        {
          v120(v99, v8);
          v98(v99, v93, v8);
        }

        else
        {
          v120(v93, v8);
        }

        v54 = v111;
        v55 = v110;
        v56 = v108;
      }

      v100 = v120;
      v120(v93, v8);
      v100(v91, v8);
      v100(v94, v8);
      v100(v126, v8);
      return (v127)(v101, v102, v8);
    }
  }
}

uint64_t Collection._partitioningIndex(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = v6;
  v43 = a1;
  v44 = a2;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v42 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v40 = *(v15 - 8);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = (*(a4 + 112))(a3, a4);
  v19 = *(a4 + 64);
  v48 = a5;
  v45 = a3;
  v46 = v5;
  result = v19(a3, a4);
  if (v18 >= 1)
  {
    v21 = *(a4 + 136);
    v38 = a4 + 80;
    v39 = v21;
    v36 = (v12 + 8);
    v37 = (v12 + 16);
    v22 = (v40 + 8);
    v40 = a4 + 136;
    v34[1] = a4 + 184;
    while (1)
    {
      v26 = v45;
      v39(v48, v18 >> 1, v45, a4);
      v27 = (*(a4 + 80))(v47, v17, v26, a4);
      v28 = v42;
      (*v37)(v14);
      v27(v47, 0);
      v29 = v43(v14);
      if (v7)
      {
        break;
      }

      v30 = v29;
      (*v36)(v14, v28);
      v31 = *v22;
      if (v30)
      {
        result = (v31)(v17, v41);
        v18 = v18 >> 1;
      }

      else
      {
        v35 = 0;
        v23 = v14;
        v24 = v41;
        v31(v48, v41);
        (*(a4 + 184))(v17, v45, a4);
        v25 = v24;
        v14 = v23;
        v7 = v35;
        result = (v31)(v17, v25);
        v18 += ~(v18 >> 1);
      }

      if (v18 <= 0)
      {
        return result;
      }
    }

    (*v36)(v14, v28);
    v32 = *v22;
    v33 = v41;
    (*v22)(v17, v41);
    return (v32)(v48, v33);
  }

  return result;
}

uint64_t Sequence.shuffled<A>(using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v23 = (*(a4 + 56))(a2, a4);
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = type metadata accessor for ContiguousArray(0, v13, v14, v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v16, v17);
  v20 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v16, v19);
  MutableCollection<>.shuffle<A>(using:)(a1, v16, a3, WitnessTable, v20, a5);
  return v23;
}

uint64_t specialized MutableCollection<>.shuffle<A>(using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v23 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - v12;
  v14 = *(v6 + 112);
  result = v14(a2, v6);
  if (result >= 2)
  {
    v16 = v14(a2, v6);
    (*(v6 + 64))(a2, v6);
    if (v16 <= 1)
    {
      v18 = *(v8 + 8);
    }

    else
    {
      v21[3] = a3 + 64;
      v21[4] = v22 + 32;
      v17 = (v8 + 8);
      v21[1] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v21[2] = v6 + 192;
      do
      {
        __buf = 0;
        swift_stdlib_random(&__buf, 8uLL);
        if (v16 > (__buf * v16))
        {
          v20 = -v16 % v16;
          while (v20 > __buf * v16)
          {
            __buf = 0;
            swift_stdlib_random(&__buf, 8uLL);
          }
        }

        (*(v22 + 32))(v13);
        (*(a3 + 64))(v13, v11, a2, a3);
        v18 = *v17;
        (*v17)(v11, v23);
        (*(v6 + 192))(v13, a2, v6);
      }

      while (v16-- > 2);
    }

    return (v18)(v13, v23);
  }

  return result;
}

uint64_t MutableCollection<>.shuffle<A>(using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v43 = a5;
  v10 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v44 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *(v10 + 112);
  result = v17(a2, v10);
  if (result >= 2)
  {
    v31 = v12;
    v19 = v17(a2, v10);
    (*(v10 + 64))(a2, v10);
    if (v19 <= 1)
    {
      return (*(v31 + 8))(v16, v44);
    }

    else
    {
      v39 = v6;
      v40 = v16;
      v37 = v10;
      v38 = a2;
      v20 = *(a6 + 8);
      v34 = v42 + 64;
      v35 = v43 + 32;
      v32 = v10 + 192;
      v33 = (v31 + 8);
      v31 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v36 = a3;
      for (i = v20(a3, a6); ; i = v20(a3, a6))
      {
        if (v19 > (i * v19))
        {
          v29 = -v19 % v19;
          if (v29 > i * v19)
          {
              ;
            }
          }
        }

        v45 = v19 - 1;
        v22 = a6;
        v23 = v40;
        v24 = v41;
        v25 = v38;
        (*(v43 + 32))(v40);
        (*(v42 + 64))(v23, v24, v25);
        v26 = *v33;
        v27 = v24;
        a6 = v22;
        a3 = v36;
        (*v33)(v27, v44);
        (*(v37 + 192))(v23, v25);
        v28 = v19 <= 2;
        v19 = v45;
        if (v28)
        {
          break;
        }
      }

      return v26(v40, v44);
    }
  }

  return result;
}

uint64_t Sequence.shuffled()(unint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v17 = (*(a2 + 56))(a1, a2);
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = type metadata accessor for ContiguousArray(0, v7, v8, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v10, v11);
  v14 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v10, v13);
  specialized MutableCollection<>.shuffle<A>(using:)(v14, v10, WitnessTable, v14);
  return v17;
}

uint64_t == infix<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  v16 = *(a4 + 24);
  v16(a3, a4);
  v16(a3, a4);
  LOBYTE(a5) = (*(a5 + 8))(v15, v13, v9, a5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  return a5 & 1;
}

BOOL != infix<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  v16 = *(a4 + 24);
  v16(a3, a4);
  v16(a3, a4);
  LOBYTE(a5) = (*(a5 + 8))(v15, v13, v9, a5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  return (a5 & 1) == 0;
}

BOOL != infix<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  v17 = *(a5 + 24);
  v17(a3, a5);
  v17(a3, a5);
  LOBYTE(a6) = (*(a6 + 8))(v16, v14, v10, a6);
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  return (a6 & 1) == 0;
}

uint64_t RawRepresentable<>.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(a4 + 24))(a2, a4);
  (*(a5 + 24))(a1, v10, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ExpressibleByStringInterpolation<>.init(stringInterpolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return (*(*(a4 + 8) + 32))(v5, a3);
}

Swift::Void __swiftcall ContiguousArray._makeMutableAndUnique()()
{
  v2 = v0;
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    *v1 = _ContiguousArrayBuffer._consumeAndCreateNew()(v3, *(v2 + 16));
  }
}

Swift::Void __swiftcall ContiguousArray._checkSubscript_native(_:)(Swift::Int a1)
{
  if (a1 < 0 || *(v1 + 16) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

Swift::Void __swiftcall ContiguousArray._checkIndex(_:)(Swift::Int a1)
{
  if (*(v1 + 16) < a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

id ContiguousArray._owner.getter()
{
  v0 = _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

id protocol witness for _ArrayProtocol._owner.getter in conformance ContiguousArray<A>()
{
  v0 = _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

uint64_t protocol witness for _ArrayProtocol.init(_:) in conformance ContiguousArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for _ContiguousArrayBuffer(0, *(a2 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v7, v8);
  result = Array.init<A>(_:)(a1, v10, v7, WitnessTable);
  *a5 = result;
  return result;
}

atomic_ullong *protocol witness for _ArrayProtocol._buffer.getter in conformance ContiguousArray<A>@<X0>(atomic_ullong **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t ContiguousArray.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || *(a2 + 16) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a3 - 8);
  v6 = *(v5 + 16);
  v7 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1;

  return v6(a4, v7);
}

uint64_t key path setter for ContiguousArray.subscript(_:) : <A>ContiguousArray<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  return key path setter for Array.subscript(_:) : <A>[A]A(a1, a2, a3, a4, type metadata accessor for ContiguousArray, ContiguousArray.subscript.modify);
}

{
  return key path setter for Array.subscript(_:) : <A>[A]A(a1, a2, a3, a4, type metadata accessor for ContiguousArray, ContiguousArray.subscript.setter);
}

uint64_t key path setter for Array.subscript(_:) : <A>[A]A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t), uint64_t (*a6)(_BYTE *, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  v9 = *a3;
  v10 = a5(0, v8);
  v11 = a6(v14, v9, v10);
  (*(*(v8 - 8) + 24))(v12, a1, v8);
  return v11(v14, 0);
}

uint64_t (*ContiguousArray.subscript.modify(uint64_t a1, Swift::Int a2))()
{
  ContiguousArray._makeMutableAndUnique()();
  ContiguousArray._checkSubscript_mutating(_:)(a2);
  return _swift_displayCrashMessage;
}

uint64_t ContiguousArray.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  ContiguousArray._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a3 + 16);
  ContiguousArray._checkSubscript_mutating(_:)(a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 40);
  v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2;

  return v10(v11, a1, v8);
}

id key path getter for ContiguousArray.subscript(_:) : <A>ContiguousArray<A>A@<X0>(uint64_t *a1@<X0>, Swift::Int *a2@<X1>, void *a3@<X8>)
{
  v4 = specialized ContiguousArray.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;

  return swift_unknownObjectRetain(v4);
}

uint64_t key path setter for Array.subscript(_:) : <A>[A]A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = a5(0, *(a3 + a4 - 8));
  v14 = swift_unknownObjectRetain(v9);
  return a6(v14, v10, v11, v12, v7, v8, v13);
}

void ContiguousArray.subscript.setter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, Swift::Int a5, Swift::Int a6, uint64_t a7)
{
  v15 = *v7;
  v16 = *(a7 + 16);
  ContiguousArray._checkIndex(_:)(a5);
  ContiguousArray._checkIndex(_:)(a6);
  ContiguousArray._checkIndex(_:)(a5);
  ContiguousArray._checkIndex(_:)(a6);
  if (a6 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * a5 != a2 + *(*(v16 - 8) + 72) * a3)
  {
    goto LABEL_3;
  }

  if ((a4 >> 1) < a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a5 == a3 && a4 >> 1 == a6)
  {

    swift_unknownObjectRelease(a1);
  }

  else
  {
LABEL_3:
    v22[0] = a1;
    v22[1] = a2;
    v22[2] = a3;
    v22[3] = a4;
    v19 = type metadata accessor for ArraySlice(0, v16, v17, v18);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v19, v20);
    ContiguousArray.replaceSubrange<A>(_:with:)(a5, a6, v22, a7, v19, WitnessTable);
  }
}

uint64_t ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(a4 + 16);
  v83 = *(v12 - 1);
  v84 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v15, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v92 = &v76 - v22;
  if (a1 < 0)
  {
    LODWORD(v74) = 0;
    v73 = 1360;
    LOBYTE(v72) = 2;
    goto LABEL_31;
  }

  if (*(*v7 + 16) < a2)
  {
    LODWORD(v74) = 0;
    v73 = 1363;
    LOBYTE(v72) = 2;
LABEL_31:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v90 = a2;
  v23 = __OFSUB__(a2, a1);
  v24 = a2 - a1;
  if (v23)
  {
    __break(1u);
    goto LABEL_33;
  }

  v79 = v14;
  v80 = v21;
  v25 = *(a6 + 112);
  v82 = a5;
  v93 = a6;
  v26 = v25(a5, a6);
  v27 = v26 - v24;
  if (__OFSUB__(v26, v24))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v77 = v20;
  v28 = v12;
  v78 = v17;
  v29 = *v7;
  v30 = *(*v7 + 16);
  v31 = v30 + v27;
  if (__OFADD__(v30, v27))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v32 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v7);
  *v7 = v29;
  if (!isUniquelyReferenced_nonNull_native || v31 > *(v29 + 24) >> 1)
  {
    if (v30 <= v31)
    {
      v34 = v30 + v27;
    }

    else
    {
      v34 = v30;
    }

    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34, 1);
    v29 = *v7;
  }

  if (v24 < 0)
  {
LABEL_35:
    LODWORD(v74) = 0;
    v73 = 1183;
    LOBYTE(v72) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35 = v83;
  v36 = v29 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v37 = *(v83 + 72);
  v38 = v36 + v37 * a1;
  v91 = v37;
  v89 = v37 * v32;
  v81 = (v38 + v37 * v32);
  v39 = v28;
  swift_arrayDestroy(v38, v24, v28);
  v41 = v84;
  v42 = v82;
  if (!v27)
  {
    goto LABEL_17;
  }

  v43 = *(v29 + 16);
  if (__OFSUB__(v43, v90))
  {
    __break(1u);
    goto LABEL_37;
  }

  v40 = UnsafeMutablePointer.moveInitialize(from:count:)((v36 + v91 * v90), v43 - v90, v81, v39);
  v44 = *(v29 + 16);
  v23 = __OFADD__(v44, v27);
  v45 = v44 + v27;
  if (v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v29 + 16) = v45;
LABEL_17:
  if (v32 <= 0)
  {
    v71 = *(*(v42 - 1) + 8);

    return v71(v41, v42);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v40);
    v48 = type metadata accessor for _ContiguousArrayBuffer(0, v39, v46, v47);
    *(&v76 - 6) = v48;
    *(&v76 - 5) = v42;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v48, v49);
    v51 = v93;
    v72 = WitnessTable;
    v73 = v93;
    v74 = v32;
    v75 = v38;
    (*(*(v93 + 8) + 72))(v94, closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)partial apply, &v76 - 8, &unk_1EEEAC658, v42);
    if (v94[0])
    {
      v52 = v41;
      (*(v51 + 64))(v42, v51);
      v90 = v39;
      v53 = v79;
      v54 = v81;
      if (v89 >= 1)
      {
        v88 = *(v93 + 80);
        v89 = v93 + 80;
        v86 = *(v93 + 192);
        v87 = v93 + 192;
        v85 = (v35 + 16);
        v55 = (v35 + 32);
        do
        {
          v56 = v42;
          v57 = v52;
          v59 = v92;
          v58 = v93;
          v60 = v88(v94, v92, v56, v93);
          v61 = v90;
          (*v85)(v53);
          v60(v94, 0);
          (*v55)(v38, v53, v61);
          v38 += v91;
          v62 = v59;
          v52 = v57;
          v42 = v56;
          v86(v62, v56, v58);
        }

        while (v38 < v54);
      }

      v63 = v93;
      v64 = v77;
      (*(v93 + 72))(v42, v93);
      v65 = v80;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v63, v42, v80, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
      v67 = v92;
      v68 = (*(*(AssociatedConformanceWitness + 8) + 8))(v92, v64, v65);
      v69 = *(v78 + 8);
      v69(v64, v65);
      if (v68)
      {
        (*(*(v42 - 1) + 8))(v52, v42);
        return (v69)(v67, v65);
      }

LABEL_38:
      LODWORD(v74) = 0;
      v73 = 173;
      LOBYTE(v72) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(*(v42 - 1) + 8))(v41, v42);
  }
}

void (*ContiguousArray.subscript.modify(atomic_ullong ***a1, Swift::Int a2, Swift::Int a3, atomic_ullong *a4))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x40, 0x952uLL);
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[6] = a4;
  v9[7] = v4;
  v9[4] = a2;
  v9[5] = a3;
  v11 = *v4;
  v12 = a4[2];
  ContiguousArray._checkIndex(_:)(a2);
  ContiguousArray._checkIndex(_:)(a3);
  if (a3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = (v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)));
  *v10 = v11;
  v10[1] = v13;
  v10[2] = a2;
  v10[3] = ((2 * a3) | 1);
  v11;
  return ContiguousArray.subscript.modify;
}

void Array.subscript.modify(void ***a1, char a2, void (*a3)(id, void *, void *, void *, void *, void *, void *))
{
  v4 = *a1;
  v5 = **a1;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[6];
  v11 = v4[4];
  v10 = v4[5];
  if (a2)
  {
    v12 = swift_unknownObjectRetain(v5);
    a3(v12, v6, v7, v8, v11, v10, v9);
    swift_unknownObjectRelease(*v4);
  }

  else
  {
    a3(v5, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
  }

  free(v4);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ContiguousArray<A>(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v6 = *a2;
  ContiguousArray._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a3 + 16);
  ContiguousArray._checkSubscript_mutating(_:)(v6);
  (*(*(v8 - 8) + 40))(v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6, a1, v8);

  return _swift_displayCrashMessage();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ContiguousArray<A>(void *a1, Swift::Int *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0xBD18uLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = ContiguousArray.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ContiguousArray<A>(void *a1, Swift::Int *a2, uint64_t a3))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xA638uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = v3;
  v7[5] = a3;
  v9 = *a2;
  v10 = a2[1];
  v8[6] = *a2;
  v8[7] = v10;
  v11 = specialized ContiguousArray.subscript.getter(v9, v10, *v3);
  *v8 = v11;
  v8[1] = v12;
  v8[2] = v13;
  v8[3] = v14;
  swift_unknownObjectRetain(v11);
  return protocol witness for MutableCollection.subscript.modify in conformance ContiguousArray<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance [A](void ***a1, char a2, void (*a3)(id, void *, void *, void *, void *, void *, void *))
{
  v4 = *a1;
  v5 = **a1;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v10 = v4[6];
  v9 = v4[7];
  v11 = v4[5];
  if (a2)
  {
    v12 = swift_unknownObjectRetain(v5);
    a3(v12, v6, v7, v8, v10, v9, v11);
    swift_unknownObjectRelease(*v4);
  }

  else
  {
    a3(v5, v4[1], v4[2], v4[3], v4[6], v4[7], v4[5]);
  }

  free(v4);
}

void *ContiguousArray._withUnsafeMutableBufferPointerIfSupported<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14 = a3;
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(*v4 + 16);
  v13[0] = *v4 + ((*(*(*(a2 + 16) - 8) + 80) + 32) & ~*(*(*(a2 + 16) - 8) + 80));
  v10 = v13[0];
  v13[1] = v9;
  a1(v13);
  if (v5)
  {
    return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v13, v10, v9);
  }

  v12 = v14;
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v13, v10, v9);
  return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
}

{
  return ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:)(a1, a2, a3, a4);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ContiguousArray<A>(void *a1, unint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x28, 0xD6C4uLL);
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v5[4] = ContiguousArray.subscript.read(v5, *a2, *v2);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*ContiguousArray.subscript.read(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

id protocol witness for Collection.subscript.getter in conformance ContiguousArray<A>@<X0>(Swift::Int *a1@<X0>, void *a2@<X8>)
{
  v4 = specialized ContiguousArray.subscript.getter(*a1, a1[1], *v2);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;

  return swift_unknownObjectRetain(v4);
}

uint64_t protocol witness for Collection.indices.getter in conformance ContiguousArray<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ContiguousArray<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t ContiguousArray._copyContents(initializing:)(char *__dst, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    if (!__dst || v5 > a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    UnsafeMutablePointer.initialize(from:count:)((a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80))), v5, __dst, a4);
  }

  return a3;
}

uint64_t ContiguousArray.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(unint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = a1(a2 + ((*(*(a3 - 8) + 80) + 32) & ~*(*(a3 - 8) + 80)), *(a2 + 16));
  if (!v5)
  {
    return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }

  return result;
}

uint64_t Array._copyToContiguousArray()(unint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      v12 = a1;
      v8 = type metadata accessor for Array(0, a2, v4, v5);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v8, v9);
      v11 = _copyCollectionToContiguousArray<A>(_:)(&v12, v8, WitnessTable);
      a1;
      return v11;
    }

    else
    {
      a1;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
      a1;
      if (isClassOrObjCExistentialType)
      {
        return a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        return a1;
      }
    }
  }

  else if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    return a1;
  }
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance ContiguousArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array._copyToContiguousArray()(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = specialized Array.init(repeating:count:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

__objc2_class **static ContiguousArray._allocateUninitialized(_:)(uint64_t a1, uint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
  result[2] = a1;
  return result;
}

__objc2_class **ContiguousArray.init(_uninitializedCount:)(uint64_t a1, uint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
  result[2] = a1;
  return result;
}

uint64_t specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native(*v3);
  *v3 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {

    return a3();
  }

  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt32>, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:));
  *v3 = result;
  return result;
}

__objc2_class **specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_DictionaryCodingKey>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized UnsafeMutablePointer.initialize(from:count:));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized UnsafeMutablePointer.initialize(from:count:));
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

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t), void (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
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

  v14 = *(a4 + 16);
  v15 = a6(v14, v13, a5);
  v16 = v15;
  if (v11)
  {
    a7(a4 + 32, v14, v15 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    a8(0, v14, v15 + 32, a4);
  }

  a4;
  return v16;
}

__objc2_class **specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v11 = swift_allocObject(v10, (40 * v9 + 32), 7uLL);
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v8;
      v11[3] = (2 * ((v12 - 32) / 40));
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v11 + 32);
        *(a4 + 16) = 0;
LABEL_16:
        a4;
        return v11;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v8, v11 + 32, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int8>();
      v11 = swift_allocObject(v10, (v9 + 32), 7uLL);
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v8;
      v11[3] = (2 * v12 - 64);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v11 + 32);
        *(a4 + 16) = 0;
LABEL_16:
        a4;
        return v11;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v8, v11 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v11 = swift_allocObject(v10, (8 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v8;
    v11[3] = ((2 * (v13 >> 3)) | 1);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>();
    v11 = swift_allocObject(v10, (16 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v8;
    v11[3] = (2 * (v13 >> 4));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    v11 = swift_allocObject(v10, (32 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    v11[2] = v8;
    v11[3] = (2 * (v13 >> 5));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v11 = swift_allocObject(v10, (8 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v8;
    v11[3] = ((2 * (v13 >> 3)) | 1);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Character>();
    v11 = swift_allocObject(v10, (16 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v8;
    v11[3] = (2 * (v13 >> 4));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

__objc2_class **specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, __objc2_class *, __objc2_class **), void (*a7)(uint64_t, __objc2_class *, __objc2_class **))
{
  v10 = result;
  if (a3)
  {
    v11 = *(a4 + 24);
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(a4 + 16);
  if (v12 <= v13)
  {
    v14 = *(a4 + 16);
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = a5(0);
    v16 = swift_allocObject(v15, (32 * v14 + 32), 7uLL);
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v13;
    v16[3] = (2 * (v18 >> 5));
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  v19 = a4 + 32;
  v20 = v16 + 4;
  if (v10)
  {
    a6(v19, v13, v20);
    *(a4 + 16) = 0;
  }

  else
  {
    a7(v19, v13, v20);
  }

  a4;
  return v16;
}

__objc2_class **_ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
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

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    v12 = getContiguousArrayStorageType<A>(for:)(a5, a5);
    v13 = *(*(a5 - 1) + 72);
    v14 = *(*(a5 - 1) + 80);
    v15 = swift_allocObject(v12, (((v14 + *(v12 + 48)) & ~v14) + v13 * v11), v14 | *(v12 + 52));
    v16 = _swift_stdlib_malloc_size(v15);
    if (!v13 || ((v17 = v16 - ((v14 + 32) & ~v14), v17 == 0x8000000000000000) ? (v18 = v13 == -1) : (v18 = 0), v18))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v19 = v17 / v13;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a5, a5);
    v15[2] = v10;
    v15[3] = (isClassOrObjCExistentialType | (2 * v19));
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v21 = (*(*(a5 - 1) + 80) + 32) & ~*(*(a5 - 1) + 80);
  v22 = (a4 + v21);
  v23 = v15 + v21;
  if (v7)
  {
    UnsafeMutablePointer.moveInitialize(from:count:)(v22, v10, v23, a5);
    *(a4 + 16) = 0;
  }

  else
  {
    UnsafeMutablePointer.initialize(from:count:)(v22, v10, v23, a5);
  }

  a4;
  return v15;
}

Swift::Void __swiftcall ContiguousArray._copyToNewBuffer(oldCount:)(Swift::Int oldCount)
{
  v13 = *v4;
  v6 = type metadata accessor for _ContiguousArrayBuffer(0, *(v1 + 16), v2, v3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v6, v7);
  v9 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(oldCount, oldCount + 1, v6, WitnessTable);
  v13 = v9;
  v10 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v6, WitnessTable);
  v12 = v11;
  _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v13, oldCount, 0, v10, v11, v6, WitnessTable);
  v12;
  v9;
}

uint64_t specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(void, uint64_t, uint64_t))
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v2;
  if ((result & 1) == 0)
  {
    v4 = *(v2 + 16) + 1;

    return a1(0, v4, 1);
  }

  return result;
}

Swift::Void __swiftcall ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16) + 1;

    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 1);
  }
}

__objc2_class **specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(__objc2_class **result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), result + 1, 1);
  }

  return result;
}

Swift::Void __swiftcall ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(Swift::Int oldCount)
{
  v2 = *(*v1 + 24);
  if (oldCount + 1 > (v2 >> 1))
  {
    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2 > 1, oldCount + 1, 1);
  }
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

_OWORD *specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  return outlined init with take of Any(a2, (v3 + 32 * a1 + 32));
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 8 * result + 32) = a2;
  return result;
}

uint64_t ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = a1 + 1;
  v5 = *(*(a3 + 16) - 8);
  return (*(v5 + 32))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1);
}

uint64_t specialized ContiguousArray.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v8 - v10 < 0)
  {
LABEL_42:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized Sequence._copySequenceContents(initializing:)(&v36, (v3 + 16 * v10 + 32), v11, a1);
  if (result < v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
      return result;
    }

    *(v3 + 16) = v15;
  }

  v35 = v36;
  if (result == v11)
  {
    v16 = *(v3 + 16);
    v17 = v37;
    v18 = v39;
    if (v40)
    {
      v34 = v1;
      v19 = (v40 - 1) & v40;
      v20 = __clz(__rbit64(v40)) | (v39 << 6);
      v21 = (v38 + 64) >> 6;
    }

    else
    {
      v21 = (v38 + 64) >> 6;
      do
      {
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          goto LABEL_37;
        }

        v23 = *(v37 + 8 * v22);
        ++v18;
      }

      while (!v23);
      v34 = v1;
      v19 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v22 << 6);
      v18 = v22;
    }

    v24 = (*(v36 + 48) + 16 * v20);
    v25 = *v24;
    v26 = v24[1];
    v39 = v18;
    v40 = v19;
    v26;
    while (1)
    {
LABEL_24:
      v27 = *(v3 + 24);
      if (v16 + 1 > (v27 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v16 + 1, 1);
      }

      v3 = *v34;
      v28 = *(*v34 + 24) >> 1;
      if (v16 < v28)
      {
        break;
      }

      *(v3 + 16) = v16;
    }

LABEL_29:
    v31 = (v3 + 32 + 16 * v16);
    *v31 = v25;
    v31[1] = v26;
    ++v16;
    if (v19)
    {
      goto LABEL_28;
    }

    v32 = v18;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v21)
      {
        *(v3 + 16) = v16;
        v1 = v34;
        goto LABEL_37;
      }

      v19 = *(v17 + 8 * v33);
      ++v32;
      if (v19)
      {
        v18 = v33;
LABEL_28:
        v29 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v30 = (*(v35 + 48) + ((v18 << 10) | (16 * v29)));
        v25 = *v30;
        v26 = v30[1];
        v26;
        if (v16 != v28)
        {
          goto LABEL_29;
        }

        v16 = v28;
        *(v3 + 16) = v28;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_37:
  result = _sSh8IteratorV8_VariantOySS__GWOe_0(v35);
  *v1 = v3;
  return result;
}

void specialized ContiguousArray.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v10 = *(v3 + 16);
  v11 = __OFSUB__(v8, v10);
  v12 = v8 - v10;
  if (v11)
  {
    goto LABEL_18;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (!*(a1 + 16))
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v12 < v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, (v3 + 16 * v10 + 32));
  if (v2)
  {
    v13 = *(v3 + 16);
    v11 = __OFADD__(v13, v2);
    v14 = v13 + v2;
    if (!v11)
    {
      *(v3 + 16) = v14;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_16:
  a1;
  *v1 = v3;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
    goto LABEL_41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v8 - v10 < 0)
  {
LABEL_41:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    if (!v2)
    {
      if (v8 == v10)
      {
        goto LABEL_18;
      }

LABEL_36:
      a1;
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  if (v11 < v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, (v3 + 32 * v10 + 32));
  if (v2)
  {
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, v2);
    v15 = v13 + v2;
    if (!v14)
    {
      *(v3 + 16) = v15;
      goto LABEL_14;
    }

    __break(1u);
LABEL_44:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_14:
  if (v2 != v11)
  {
    goto LABEL_36;
  }

  v10 = *(v3 + 16);
LABEL_18:
  v25 = 0u;
  v26 = 0u;
  outlined init with copy of Any?(&v25, &v23);
  if (v24)
  {
    v16 = v12;
    do
    {
      outlined destroy of Any?(&v23);
      v18 = *(v3 + 24);
      if (v10 + 1 > (v18 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v10 + 1, 1);
      }

      v3 = *v1;
      v19 = *(*v1 + 24);
      outlined init with copy of Any?(&v25, &v21);
      if (v22)
      {
        if (v10 <= (v19 >> 1))
        {
          v17 = v19 >> 1;
        }

        else
        {
          v17 = v10;
        }

        v20 = (v3 + 32 * v10 + 32);
        while (1)
        {
          outlined init with take of Any(&v21, &v23);
          if (v17 == v10)
          {
            break;
          }

          outlined destroy of Any?(&v25);
          outlined init with take of Any(&v23, v20);
          if (v16 == v12)
          {
            v25 = 0u;
            v26 = 0u;
            v16 = v12;
          }

          else
          {
            if (v16 >= *(a1 + 16))
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            outlined init with copy of Any(a1 + 32 + 32 * v16++, &v25);
          }

          outlined init with copy of Any?(&v25, &v21);
          v20 += 2;
          ++v10;
          if (!v22)
          {
            goto LABEL_20;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        v10 = v17;
      }

      else
      {
LABEL_20:
        outlined destroy of Any?(&v21);
        v17 = v10;
      }

      *(v3 + 16) = v17;
      outlined init with copy of Any?(&v25, &v23);
    }

    while (v24);
  }

  outlined destroy of Any?(&v25);
  a1;
  outlined destroy of Any?(&v23);
LABEL_38:
  *v1 = v3;
}

uint64_t ContiguousArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = v4;
  v66 = a2;
  v72 = *(*(a2 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v85 = v10;
  v86 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional(0, v10, v11, v12);
  v80 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v66 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v66 - v21;
  v23 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v76 = v25;
  v67 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v66 - v26;
  v27 = *(a4 + 40);
  v83 = a3;
  v84 = a1;
  v82 = a4;
  v28 = v27(a3, a4);
  v29 = *v5;
  v30 = *(*v5 + 16);
  v31 = v30 + v28;
  if (__OFADD__(v30, v28))
  {
    __break(1u);
    goto LABEL_32;
  }

  v79 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v29);
  *v5 = v29;
  if (!isUniquelyReferenced_nonNull_native || (v33 = *(v29 + 24) >> 1, v33 < v31))
  {
    if (v30 <= v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = v30;
    }

    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34, 1);
    v29 = *v5;
    v33 = *(*v5 + 24) >> 1;
  }

  v35 = *(v29 + 16);
  v36 = v33 - v35;
  if (v33 - v35 < 0)
  {
LABEL_32:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = *(v72 + 72);
  v69 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v78 = v37;
  v75 = v29 + v69 + v37 * v35;
  v38 = v83;
  (*(v23 + 16))(v81, v84, v83);
  v39 = *(v82 + 8);
  v40 = v75;
  v75 = v36;
  v41 = v39(v77, v40, v36, v38);
  if (v41 < v79)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v42 = v41;
  result = (*(v23 + 8))(v84, v38);
  v44 = v86;
  if (v42 >= 1)
  {
    v45 = *(v29 + 16);
    v46 = __OFADD__(v45, v42);
    v47 = v45 + v42;
    if (v46)
    {
      __break(1u);
      return result;
    }

    *(v29 + 16) = v47;
  }

  if (v42 != v75)
  {
    return (*(v67 + 8))(v77, v76);
  }

  v48 = *(v29 + 16);
  v49 = v76;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v82, v83, v76, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v51 = *(AssociatedConformanceWitness + 16);
  v74 = AssociatedConformanceWitness + 16;
  v75 = AssociatedConformanceWitness;
  v73 = v51;
  (v51)(v49);
  v52 = v80;
  v83 = *(v80 + 16);
  v84 = v80 + 16;
  (v83)(v19, v22, v13);
  v53 = v72;
  v81 = *(v72 + 48);
  v82 = (v72 + 48);
  v54 = (v81)(v19, 1, v85);
  v79 = *(v52 + 8);
  v80 = v52 + 8;
  if (v54 != 1)
  {
    v56 = (v53 + 32);
    v68 = (v53 + 8);
    v70 = v19;
    v71 = v5;
    do
    {
      v79(v19, v13);
      v72 = *v5;
      v58 = *(v72 + 24);
      v59 = v58 >> 1;
      if ((v58 >> 1) < v48 + 1)
      {
        ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v48 + 1, 1);
        v72 = *v5;
        v59 = *(v72 + 24) >> 1;
      }

      v60 = v13;
      (v83)(v16, v22, v13);
      if ((v81)(v16, 1, v85) == 1)
      {
        v61 = v85;
LABEL_30:
        v13 = v60;
        v79(v16, v60);
        v63 = v48;
      }

      else
      {
        v62 = *v56;
        if (v48 <= v59)
        {
          v63 = v59;
        }

        else
        {
          v63 = v48;
        }

        v64 = v72 + v69 + v78 * v48;
        v61 = v85;
        while (1)
        {
          v62(v44, v16, v61);
          if (v63 == v48)
          {
            break;
          }

          v79(v22, v60);
          v62(v64, v86, v61);
          ++v48;
          v73(v76, v75);
          v61 = v85;
          v44 = v86;
          (v83)(v16, v22, v60);
          v65 = (v81)(v16, 1, v61);
          v64 += v78;
          if (v65 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v68)(v44, v61);
        v48 = v63;
        v13 = v60;
      }

      *(v72 + 16) = v63;
      v19 = v70;
      (v83)(v70, v22, v13);
      v57 = (v81)(v19, 1, v61);
      v5 = v71;
    }

    while (v57 != 1);
  }

  v55 = v79;
  v79(v22, v13);
  (*(v67 + 8))(v77, v76);
  return v55(v19, v13);
}

Swift::Void __swiftcall ContiguousArray.reserveCapacityForAppend(newElementsCount:)(Swift::Int newElementsCount)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 + newElementsCount;
  if (__OFADD__(v3, newElementsCount))
  {
    __break(1u);
LABEL_12:
    if (v3 <= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_8;
  }

  LODWORD(newElementsCount) = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v2;
  if (newElementsCount)
  {
    if (v4 <= *(v2 + 24) >> 1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

LABEL_8:

  ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(newElementsCount, v5, 1);
}

uint64_t ContiguousArray._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ContiguousArray._makeMutableAndUnique()();
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (!v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6 - 1;
  v8 = *(a1 + 16);
  v11 = *(v8 - 8);
  (*(v11 + 32))(a2, v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v6 - 1), v8);
  *(v5 + 16) = v7;
  v9 = *(v11 + 56);

  return v9(a2, 0, 1, v8);
}

char *ContiguousArray.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ContiguousArray._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = *(a2 + 16);
  v10 = *(v9 - 1);
  v11 = *(v10 + 72);
  v12 = (v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1);
  (*(v10 + 32))(a3, v12, v9);
  result = UnsafeMutablePointer.moveInitialize(from:count:)(&v12[v11], v8 - 1 - a1, v12, v9);
  *(v7 + 16) = v8 - 1;
  return result;
}

uint64_t ContiguousArray.insert(_:at:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for CollectionOfOne(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  ContiguousArray._checkIndex(_:)(a2);
  (*(*(v7 - 8) + 32))(v10, a1, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v8, v11);
  return ContiguousArray.replaceSubrange<A>(_:with:)(a2, a2, v10, a3, v8, WitnessTable);
}

Swift::Void __swiftcall ContiguousArray.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *v2;
  if (keepingCapacity)
  {
    v5 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
    v8 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v19[2] = *v2;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v5, v7);
      RandomAccessCollection<>.indices.getter(v5, WitnessTable, &protocol witness table for Int, v19);
      v10 = v19[0];
      v11 = v19[1];
      v14 = type metadata accessor for EmptyCollection(0, *(v5 + 16), v12, v13);
      v16 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v14, v15);
      ContiguousArray.replaceSubrange<A>(_:with:)(v10, v11, v17, v5, v14, v16);
    }

    else
    {
      v18 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, *(v8 + 24) >> 1, *(v5 + 16));
      v8;
      *v2 = v18;
    }
  }

  else
  {
    v4;
    *v2 = &_swiftEmptyArrayStorage;
  }
}

atomic_ullong *_ContiguousArrayBuffer.requestNativeBuffer()()
{
  v0 = _swift_displayCrashMessage();

  return v0;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance ContiguousArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = specialized Array.init(repeating:count:)(a1, a2, v6, static ContiguousArray._allocateUninitialized(_:));
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t ContiguousArray.customMirror.getter@<X0>(atomic_ullong *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v7 = type metadata accessor for ContiguousArray(0, a2, a3, a4);
  v29[0] = 0;
  v29[1] = 0;
  a1;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v32, v29, v7);
  v10 = v9;
  v11 = swift_allocObject(&unk_1EEEADDB8, 0x28, 7uLL);
  v11[2] = v7;
  v11[3] = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v7, v12);
  v11[4] = WitnessTable;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v16 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v7, v15);
  v17 = type metadata accessor for LazyMapSequence(255, v7, v14, v16);
  v31 = WitnessTable;
  v18 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v17, &v31);
  v20 = type metadata accessor for _CollectionBox(0, v17, v18, v19);
  v21 = swift_allocObject(v20, 0x48, 7uLL);
  v21[6] = a1;
  v21[7] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v21[8] = v11;
  v22 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v23 = swift_allocObject(v22, 0x18, 7uLL);
  v23[2] = 0;
  v24 = a1[2];
  v25 = swift_allocObject(v22, 0x18, 7uLL);
  v25[2] = v24;
  v21[2] = v23;
  v21[3] = &protocol witness table for _IndexBox<A>;
  v21[4] = v25;
  v21[5] = &protocol witness table for _IndexBox<A>;
  v30 = a1;
  a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v29, &v30, v7, v26, 6uLL);
  v28 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  *a5 = v7;
  *(a5 + 8) = v21;
  *(a5 + 16) = 5;
  *(a5 + 24) = v8;
  *(a5 + 32) = v10;
  *(a5 + 40) = v28;
  return result;
}

uint64_t ContiguousArray.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v96 - v8;
  0xE000000000000000;
  v10 = 91;
  v11 = 0xE100000000000000;
  v107 = 91;
  v108 = 0xE100000000000000;
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_62:
    v23 = HIBYTE(v11) & 0xF;
    v21 = v10 & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v60 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v60 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v60 && (v10 & ~v11 & 0x2000000000000000) == 0)
    {
      v11;
      return 93;
    }

    if ((v11 & 0x2000000000000000) != 0 && v23 != 15)
    {
      if (v23 < 8)
      {
        v10 = ((-255 << (8 * (HIBYTE(v11) & 7u))) - 1) & v10 | (93 << (8 * (HIBYTE(v11) & 7u)));
      }

      goto LABEL_71;
    }

    0xE100000000000000;
    if ((v11 & 0x1000000000000000) != 0)
    {
      goto LABEL_123;
    }

    v33 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (!v33)
    {
      goto LABEL_74;
    }

    goto LABEL_125;
  }

  v14 = *(v4 + 16);
  v13 = v4 + 16;
  v104 = v14;
  v11 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v15 = *(v13 + 56);
  v16 = (v13 + 16);
  v17 = 1;
  v103 = xmmword_18071DB30;
  v98 = xmmword_18071DB40;
  v101 = v7;
  v102 = v13;
  v99 = v15;
  v100 = v9;
  v14(v9, v11, a2);
  while (1)
  {
    v21 = *v16;
    (*v16)(v7, v9, a2);
    if ((v17 & 1) == 0)
    {
      break;
    }

LABEL_6:
    v18 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v18, v106);
    *(inited + 1) = v103;
    inited[7] = a2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    (v21)(boxed_opaque_existential_0Tm, v7, a2);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v107);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v17 = 0;
    v11 += v15;
    if (!--v12)
    {
      v10 = v107;
      v11 = v108;
      goto LABEL_62;
    }

    v104(v9, v11, a2);
  }

  v22 = v107;
  v10 = v108;
  v23 = HIBYTE(v108) & 0xF;
  v24 = v107 & 0xFFFFFFFFFFFFLL;
  if ((v108 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v108) & 0xF;
  }

  else
  {
    v25 = v107 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25 && (v107 & ~v108 & 0x2000000000000000) == 0)
  {
    v108;
    v107 = 8236;
    v108 = 0xE200000000000000;
    goto LABEL_4;
  }

  if ((v108 & 0x2000000000000000) != 0 && v23 <= 0xD)
  {
    v26 = 8 * (HIBYTE(v108) & 7);
    v27 = (-255 << v26) - 1;
    v28 = 44 << v26;
    v29 = v23 + 1;
    if (v23 >= 8)
    {
      v31 = v27 & v108 | v28;
      v30 = 8 * (v29 & 7);
      v9 = v100;
    }

    else
    {
      v22 = (v27 & v107 | v28);
      v9 = v100;
      if (v23 != 7)
      {
        v22 = (((-255 << (8 * (v29 & 7u))) - 1) & *&v22 | (32 << (8 * (v29 & 7u))));
        v52 = v108;
        goto LABEL_47;
      }

      v30 = 0;
      v31 = v108;
    }

    v52 = ((-255 << v30) - 1) & v31 | (32 << v30);
LABEL_47:
    v108;
    0xE200000000000000;
    v53 = 0xE000000000000000;
    if (*&v22 & 0x8080808080808080 | v52 & 0x80808080808080)
    {
      v53 = 0xA000000000000000;
    }

    v107 = v22;
    v108 = (v53 & 0xFF00000000000000 | (v23 << 56) | v52 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v7 = v101;
    goto LABEL_5;
  }

  0xE200000000000000;
  if ((v10 & 0x1000000000000000) == 0)
  {
    v33 = __OFADD__(v25, 2);
    v34 = v25 + 2;
    if (v33)
    {
      goto LABEL_122;
    }

LABEL_21:
    if ((*&v22 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      v35 = _StringGuts.nativeUnusedCapacity.getter(*&v22, v10);
      if (v36)
      {
        goto LABEL_132;
      }

      if (v34 <= 15)
      {
        if ((v10 & 0x2000000000000000) == 0)
        {
          if (v35 < 2)
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        }

LABEL_33:
        v38 = v10;
LABEL_34:
        v39 = 0xE200000000000000;
        0xE200000000000000;
        v40._rawBits = 131073;
        v41._rawBits = 1;
        v42._rawBits = _StringGuts.validateScalarRange(_:)(v41, v40, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v42._rawBits < 0x10000)
        {
          v42._rawBits |= 3;
        }

        if (v42._rawBits >> 16 || (v45 = 8236, (v43._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v45 = specialized static String._copying(_:)(v42._rawBits, v43._rawBits, 0x202CuLL, 0xE200000000000000);
          v39 = v46;
          0xE200000000000000;
        }

        if ((v39 & 0x2000000000000000) != 0)
        {
          v39;
        }

        else if ((v39 & 0x1000000000000000) != 0)
        {
          v45 = _StringGuts._foreignConvertedToSmall()(v45, v39);
          v97 = v59;
          v39;
          v39 = v97;
        }

        else
        {
          if ((v45 & 0x1000000000000000) != 0)
          {
            v56 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v57 = v45 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v56 = _StringObject.sharedUTF8.getter(v45, v39);
          }

          closure #1 in _StringGuts._convertedToSmall()(v56, v57, &v105, v44);
          v39;
          v39 = *(&v105 + 1);
          v45 = v105;
        }

        v47 = specialized _SmallString.init(_:appending:)(*&v22, v38, v45, v39);
        if (v49)
        {
          goto LABEL_132;
        }

        v50 = v47;
        v51 = v48;
        v10;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v107 = v50;
        v108 = v51;
        goto LABEL_4;
      }
    }

    else if (v34 <= 15)
    {
      if ((v10 & 0x2000000000000000) == 0)
      {
LABEL_27:
        if ((v10 & 0x1000000000000000) != 0)
        {
          v22 = _StringGuts._foreignConvertedToSmall()(*&v22, v10);
          v38 = v54;
        }

        else
        {
          if ((*&v22 & 0x1000000000000000) != 0)
          {
            v37 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v37 = _StringObject.sharedUTF8.getter(*&v22, v10);
            v24 = v58;
          }

          closure #1 in _StringGuts._convertedToSmall()(v37, v24, &v105, v32);
          v38 = *(&v105 + 1);
          v22 = v105;
        }

        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_3:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v34, 2);
    v105 = v98;
    0xE200000000000000;
    _StringGuts.appendInPlace(_:isASCII:)(&v105, 2uLL, 1);
    0xE200000000000000;
LABEL_4:
    v7 = v101;
    v9 = v100;
LABEL_5:
    v15 = v99;
    goto LABEL_6;
  }

  v55 = String.UTF8View._foreignCount()();
  v34 = v55 + 2;
  if (!__OFADD__(v55, 2))
  {
    goto LABEL_21;
  }

LABEL_122:
  __break(1u);
LABEL_123:
  v89 = String.UTF8View._foreignCount()();
  v62 = v89 + 1;
  if (__OFADD__(v89, 1))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_74:
  v63 = v10 & ~v11;
  if ((v63 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    v64 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
    if ((v65 & 1) == 0)
    {
      if (v62 > 15)
      {
        goto LABEL_85;
      }

      if ((v11 & 0x2000000000000000) == 0)
      {
        if (v64 < 1)
        {
          goto LABEL_80;
        }

LABEL_85:
        v67 = v63 & 0x2000000000000000;
        v68 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
        if ((v69 & 1) == 0 && v68 > 0)
        {
          if (v67 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
          {
LABEL_99:
            v105 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v105, 1uLL, &v107, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v107;
          }

LABEL_98:
          _StringGuts.grow(_:)(v62);
          goto LABEL_99;
        }

        if (v67)
        {
          swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL);
        }

        v70 = _StringGuts.nativeCapacity.getter(v10, v11);
        if (v71)
        {
          v72 = 0;
        }

        else
        {
          v72 = v70;
        }

        if (v72 + 0x4000000000000000 >= 0)
        {
          v73 = 2 * v72;
          if (v73 > v62)
          {
            v62 = v73;
          }

          goto LABEL_98;
        }

        __break(1u);
LABEL_131:
        v66 = _StringObject.sharedUTF8.getter(v10, v11);
        v21 = v93;
        goto LABEL_83;
      }

LABEL_101:
      v62 = v11;
      goto LABEL_102;
    }

LABEL_132:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v62 > 15)
  {
    goto LABEL_85;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    goto LABEL_101;
  }

LABEL_80:
  if ((v11 & 0x1000000000000000) != 0)
  {
    v10 = _StringGuts._foreignConvertedToSmall()(v10, v11);
    v62 = v88;
  }

  else
  {
    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_131;
    }

    v66 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_83:
    closure #1 in _StringGuts._convertedToSmall()(v66, v21, &v105, v61);
    v62 = *(&v105 + 1);
    v10 = v105;
  }

LABEL_102:
  v21 = 0xE100000000000000;
  0xE100000000000000;
  v23 = 93;
  v74._rawBits = 1;
  v75._rawBits = 65537;
  v76._rawBits = _StringGuts.validateScalarRange(_:)(v74, v75, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v76._rawBits < 0x10000)
  {
    v76._rawBits |= 3;
  }

  if (v76._rawBits >> 16 || (v77._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v23 = specialized static String._copying(_:)(v76._rawBits, v77._rawBits, 0x5DuLL, 0xE100000000000000);
    v21 = v78;
    0xE100000000000000;
  }

  if ((v21 & 0x2000000000000000) != 0)
  {
    v21;
    goto LABEL_109;
  }

LABEL_126:
  v90 = v10;
  if ((v21 & 0x1000000000000000) != 0)
  {
    v23 = _StringGuts._foreignConvertedToSmall()(v23, v21);
    v95 = v94;
    v21;
    v21 = v95;
    v10 = v90;
  }

  else
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      v91 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v92 = v23 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v91 = _StringObject.sharedUTF8.getter(v23, v21);
    }

    closure #1 in _StringGuts._convertedToSmall()(v91, v92, &v105, v61);
    v21;
    v21 = *(&v105 + 1);
    v23 = v105;
  }

LABEL_109:
  v79 = HIBYTE(v62) & 0xF;
  v80 = HIBYTE(v21) & 0xF;
  if (v80 + v79 > 0xF)
  {
    goto LABEL_132;
  }

  0xE100000000000000;
  if (v80)
  {
    v81 = 0;
    v82 = 0;
    v83 = 8 * v79;
    do
    {
      v84 = v21 >> (v81 & 0x38);
      if (v82 < 8)
      {
        v84 = v23 >> v81;
      }

      v85 = (v84 << (v83 & 0x38)) | ((-255 << (v83 & 0x38)) - 1) & v62;
      v86 = (v84 << v83) | ((-255 << v83) - 1) & v10;
      if (v79 <= 7)
      {
        v10 = v86;
      }

      else
      {
        v62 = v85;
      }

      ++v79;
      v83 += 8;
      v81 += 8;
      ++v82;
    }

    while (8 * v80 != v81);
  }

LABEL_71:
  v11;
  0xE100000000000000;
  return v10;
}

uint64_t ContiguousArray.debugDescription.getter(char *a1, int64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v182 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v187 = &v179 - v7;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ContiguousArray", 0xFuLL, 1);
  countAndFlagsBits = v8._countAndFlagsBits;
  object = v8._object;
  v192 = 0;
  v193 = 0xE000000000000000;
  v11 = _StringGuts.init(_initialCapacity:)(4);
  v13 = v11;
  v14 = v12;
  *&v191 = v11;
  *(&v191 + 1) = v12;
  v15 = HIBYTE(v12) & 0xF;
  v16 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v183 = v4;
  if (!v17 && (v11 & ~v12 & 0x2000000000000000) == 0)
  {
    v12;
    v13 = 0;
    v27 = 0xE000000000000000;
    *&v191 = 0;
LABEL_21:
    *(&v191 + 1) = v27;
    goto LABEL_37;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    v12;
    0xE000000000000000;
    v26 = 0xA000000000000000;
    if (!(v14 & 0x80808080808080 | v13 & 0x8080808080808080))
    {
      v26 = 0xE000000000000000;
    }

    v27 = v26 & 0xFF00000000000000 | (v15 << 56) | v14 & 0xFFFFFFFFFFFFFFLL;
    *&v191 = v13;
    goto LABEL_21;
  }

  0xE000000000000000;
  v19 = v16;
  if ((v14 & 0x1000000000000000) != 0)
  {
    v19 = String.UTF8View._foreignCount()();
    if ((v13 & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v13 & 0x2000000000000000) == 0)
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v14 & 0xFFFFFFFFFFFFFFFLL))
  {
    v20 = _StringGuts.nativeUnusedCapacity.getter(v13, v14);
    if (v21)
    {
      goto LABEL_230;
    }

    if (v19 <= 15 && (v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (v19 <= 15)
  {
LABEL_13:
    if ((v14 & 0x1000000000000000) != 0)
    {
      v23 = _StringGuts._foreignConvertedToSmall()(v13, v14);
      v24 = v28;
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v22 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = _StringObject.sharedUTF8.getter(v13, v14);
        v16 = v168;
      }

      closure #1 in _StringGuts._convertedToSmall()(v22, v16, &v188, v18);
      v23 = v188;
      v24 = v189;
    }

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
      v35 = _StringGuts._foreignConvertedToSmall()(*&v35, v29);
      v176 = v175;
      v29;
      v29 = v176;
    }

    else
    {
      if ((*&v35 & 0x1000000000000000) != 0)
      {
        v163 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v164 = *&v35 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v163 = _StringObject.sharedUTF8.getter(*&v35, v29);
      }

      closure #1 in _StringGuts._convertedToSmall()(v163, v164, &v188, v34);
      v29;
      v35 = v188;
      v29 = v189;
    }

    v37 = specialized _SmallString.init(_:appending:)(*&v23, v24, *&v35, v29);
    if (v39)
    {
      goto LABEL_230;
    }

    v13 = v37;
    v27 = v38;
    v14;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    *&v191 = v13;
    *(&v191 + 1) = v27;
    goto LABEL_36;
  }

LABEL_35:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v19, 0);
  v188 = 0;
  v189 = 0;
  closure #1 in _StringGuts.append(_:)(&v188, 0, &v191, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  v27 = *(&v191 + 1);
  v13 = v191;
LABEL_36:
  countAndFlagsBits = v8._countAndFlagsBits;
LABEL_37:
  v40 = HIBYTE(v27) & 0xF;
  v41 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v42 = (HIBYTE(v27) & 0xF);
  }

  else
  {
    v42 = (v13 & 0xFFFFFFFFFFFFLL);
  }

  if (!*&v42 && (v13 & ~v27 & 0x2000000000000000) == 0)
  {
    v8._object;
    v27;
    *&v191 = countAndFlagsBits;
    *(&v191 + 1) = v8._object;
    goto LABEL_97;
  }

  LODWORD(v43) = (v8._object & 0x2000000000000000) == 0;
  v44 = (v8._object >> 56) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v185 = (v8._object >> 56) & 0xF;
    v186 = v3;
    v45 = countAndFlagsBits;
    v46 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    countAndFlagsBits = v185;
    if ((v8._object & 0x2000000000000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_47:
    countAndFlagsBits = v46;
    goto LABEL_48;
  }

  if ((v8._object & 0x2000000000000000) == 0)
  {
    v185 = (v8._object >> 56) & 0xF;
    v186 = v3;
    v45 = countAndFlagsBits;
    v46 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    LODWORD(v43) = 1;
    goto LABEL_47;
  }

  v64 = v40 + v44;
  if (v40 + v44 < 0x10)
  {
    if (v44)
    {
      v71 = 0;
      v72 = 0;
      v73 = 8 * v40;
      v74 = 8 * v44;
      v75 = v27;
      do
      {
        v76 = v8._object >> (v71 & 0x38);
        if (v72 < 8)
        {
          v76 = countAndFlagsBits >> v71;
        }

        v77 = (v76 << (v73 & 0x38)) | ((-255 << (v73 & 0x38)) - 1) & v75;
        v78 = (v76 << v73) | ((-255 << v73) - 1) & v13;
        if (v40 <= 7)
        {
          v13 = v78;
        }

        else
        {
          v75 = v77;
        }

        ++v40;
        v73 += 8;
        v71 += 8;
        ++v72;
      }

      while (v74 != v71);
    }

    else
    {
      v75 = v27;
    }

    v27;
    v79 = 0xA000000000000000;
    if (!(v13 & 0x8080808080808080 | v75 & 0x80808080808080))
    {
      v79 = 0xE000000000000000;
    }

    *&v191 = v13;
    *(&v191 + 1) = v79 & 0xFF00000000000000 | (v64 << 56) | v75 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_97;
  }

  v185 = (v8._object >> 56) & 0xF;
  v186 = v3;
  LODWORD(v43) = 0;
  v45 = countAndFlagsBits;
  v46 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  countAndFlagsBits = v185;
LABEL_48:
  *&v184 = v46;
  v47 = countAndFlagsBits;
  if ((v8._object & 0x1000000000000000) != 0)
  {
    goto LABEL_203;
  }

  if ((v27 & 0x1000000000000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_207:
  v159 = String.UTF8View._foreignCount()();
  v49 = v159 + v47;
  if (__OFADD__(v159, v47))
  {
    goto LABEL_209;
  }

LABEL_51:
  if ((v13 & ~v27 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v27 & 0xFFFFFFFFFFFFFFFLL))
  {
    v50 = _StringGuts.nativeUnusedCapacity.getter(v13, v27);
    if (v51)
    {
      goto LABEL_230;
    }

    if (v49 > 15)
    {
      goto LABEL_62;
    }

    if ((v27 & 0x2000000000000000) == 0)
    {
      if (v50 < v47)
      {
        goto LABEL_57;
      }

LABEL_62:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v49, v47);
      if ((object & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(*&v45, object, 0, countAndFlagsBits);
        v3 = v186;
      }

      else if (v43)
      {
        v53 = v45;
        if ((*&v45 & 0x1000000000000000) != 0)
        {
          v54 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v55 = v184;
          v56 = v184;
          v3 = v186;
        }

        else
        {
          v3 = v186;
          v169 = _StringObject.sharedUTF8.getter(v53, object);
          if (v170 < v184)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v54 = v169;
          v56 = v170;
          v55 = v184;
        }

        v57 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v55, v54, v56);
        closure #1 in _StringGuts.append(_:)(v57, v58, &v191, v53 < 0);
      }

      else
      {
        v188 = v45;
        v189 = object & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v188, v185, &v191, (object & 0x4000000000000000) != 0);
        v3 = v186;
      }

      goto LABEL_97;
    }
  }

  else
  {
    if (v49 > 15)
    {
      goto LABEL_62;
    }

    if ((v27 & 0x2000000000000000) == 0)
    {
LABEL_57:
      if ((v27 & 0x1000000000000000) != 0)
      {
        v13 = _StringGuts._foreignConvertedToSmall()(v13, v27);
        v41 = v150;
      }

      else
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          v52 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v52 = _StringObject.sharedUTF8.getter(v13, v27);
          v41 = v171;
        }

        closure #1 in _StringGuts._convertedToSmall()(v52, v41, &v188, v25);
        v13 = v188;
        v41 = v189;
      }

      goto LABEL_69;
    }
  }

  v41 = v27;
LABEL_69:
  object;
  v59._rawBits = 1;
  v60._rawBits = (countAndFlagsBits << 16) | 1;
  v61._rawBits = _StringGuts.validateScalarRange(_:)(v59, v60, *&v45, object)._rawBits;
  if (v61._rawBits < 0x10000)
  {
    v61._rawBits |= 3;
  }

  if (v61._rawBits >> 16 || v62._rawBits >> 16 != countAndFlagsBits)
  {
    v45 = specialized static String._copying(_:)(v61._rawBits, v62._rawBits, *&v45, object);
    countAndFlagsBits = v65;
    object;
  }

  else
  {
    countAndFlagsBits = object;
  }

  if ((countAndFlagsBits & 0x2000000000000000) == 0)
  {
    goto LABEL_213;
  }

  countAndFlagsBits;
  while (1)
  {
    v66 = specialized _SmallString.init(_:appending:)(v13, v41, *&v45, countAndFlagsBits);
    if (v68)
    {
      goto LABEL_230;
    }

    v69 = v66;
    v70 = v67;
    v27;
    *&v191 = v69;
    *(&v191 + 1) = v70;
    v3 = v186;
LABEL_97:
    v80 = *(&v191 + 1);
    v81 = HIBYTE(*(&v191 + 1)) & 0xFLL;
    if ((*(&v191 + 1) & 0x2000000000000000) == 0)
    {
      v81 = v191 & 0xFFFFFFFFFFFFLL;
    }

    if (v81 || (v191 & ~*(&v191 + 1) & 0x2000000000000000) != 0)
    {
      if ((*(&v191 + 1) & 0x2000000000000000) != 0 && (v82 = specialized _SmallString.init(_:appending:)(v191, *(&v191 + 1), 0x5B28uLL, 0xE200000000000000), (v84 & 1) == 0))
      {
        v13 = v82;
        v49 = v83;
        v80;
        0xE200000000000000;
      }

      else
      {
        0xE200000000000000;
        _StringGuts.append(_:)(23336, 0xE200000000000000, 0, 2, v85, v86, v87, v88, v89, v90, v91, v92);
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v49 = *(&v191 + 1);
        v13 = v191;
      }
    }

    else
    {
      *(&v191 + 1);
      v49 = 0xE200000000000000;
      v13 = 23336;
    }

    0xE000000000000000;
    v192 = v13;
    v193 = v49;
    v93 = v3;
    v45 = *(v3 + 16);
    if (!*&v45)
    {
LABEL_163:
      v133 = HIBYTE(v49) & 0xF;
      v41 = v13 & 0xFFFFFFFFFFFFLL;
      if ((v49 & 0x2000000000000000) != 0)
      {
        v134 = HIBYTE(v49) & 0xF;
      }

      else
      {
        v134 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v134 && (v13 & ~v49 & 0x2000000000000000) == 0)
      {
        v49;
        object;
        return 10589;
      }

      if ((v49 & 0x2000000000000000) != 0 && v133 <= 0xD)
      {
        if (v133 < 8)
        {
          v13 = ((-255 << (8 * (HIBYTE(v49) & 7u))) - 1) & v13 | (93 << (8 * (HIBYTE(v49) & 7u)));
          if (v133 != 7)
          {
            v13 = ((-255 << (8 * ((v133 + 1) & 7))) - 1) & v13 | (41 << (8 * ((v133 + 1) & 7)));
          }
        }

        v49;
        object;
        0xE200000000000000;
        return v13;
      }

      0xE200000000000000;
      if ((v49 & 0x1000000000000000) != 0)
      {
        goto LABEL_210;
      }

      v48 = __OFADD__(v134, 2);
      v2 = v134 + 2;
      if (!v48)
      {
        break;
      }

      goto LABEL_212;
    }

    v180 = object;
    v94 = *(v183 + 16);
    countAndFlagsBits = &v93[(*(v183 + 80) + 32) & ~*(v183 + 80)];
    v185 = *(v183 + 72);
    v186 = v94;
    v43 = (v183 + 32);
    v95 = 1;
    v184 = xmmword_18071DB30;
    v181 = xmmword_18071DB40;
    v96 = v182;
    v183 += 16;
    while (1)
    {
      v27 = v187;
      (v186)(v187, countAndFlagsBits, v2);
      object = *v43;
      (*v43)(v96, v27, v2);
      if (v95)
      {
        goto LABEL_110;
      }

      v42 = v192;
      v13 = v193;
      v100 = HIBYTE(v193) & 0xF;
      v41 = v192 & 0xFFFFFFFFFFFFLL;
      if ((v193 & 0x2000000000000000) != 0)
      {
        v27 = HIBYTE(v193) & 0xF;
      }

      else
      {
        v27 = v192 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27 && (v192 & ~v193 & 0x2000000000000000) == 0)
      {
        v193;
        v192 = 8236;
        v125 = 0xE200000000000000;
        goto LABEL_150;
      }

      if ((v193 & 0x2000000000000000) != 0 && v100 <= 0xD)
      {
        v101 = 8 * (HIBYTE(v193) & 7);
        v102 = (-255 << v101) - 1;
        v103 = 44 << v101;
        v104 = v100 + 1;
        if (v100 >= 8)
        {
          v106 = v102 & v193 | v103;
          v105 = 8 * (v104 & 7);
LABEL_144:
          v124 = ((-255 << v105) - 1) & v106 | (32 << v105);
        }

        else
        {
          v42 = (v102 & v192 | v103);
          if (v100 == 7)
          {
            v105 = 0;
            v106 = v193;
            goto LABEL_144;
          }

          v42 = (((-255 << (8 * (v104 & 7u))) - 1) & *&v42 | (32 << (8 * (v104 & 7u))));
          v124 = v193;
        }

        v193;
        0xE200000000000000;
        v126 = 0xE000000000000000;
        if (*&v42 & 0x8080808080808080 | v124 & 0x80808080808080)
        {
          v126 = 0xA000000000000000;
        }

        v125 = (v126 & 0xFF00000000000000 | (v100 << 56) | v124 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
        v192 = v42;
LABEL_150:
        v193 = v125;
        goto LABEL_109;
      }

      0xE200000000000000;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v48 = __OFADD__(v27, 2);
        v27 += 2;
        if (v48)
        {
          break;
        }

        goto LABEL_124;
      }

      v128 = String.UTF8View._foreignCount()();
      v27 = v128 + 2;
      if (__OFADD__(v128, 2))
      {
        break;
      }

LABEL_124:
      if ((*&v42 & ~v13 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v13 & 0xFFFFFFFFFFFFFFFLL))
      {
        v108 = _StringGuts.nativeUnusedCapacity.getter(*&v42, v13);
        if (v109)
        {
          goto LABEL_230;
        }

        if (v27 <= 15)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
            goto LABEL_136;
          }

          if (v108 < 2)
          {
            goto LABEL_130;
          }
        }
      }

      else if (v27 <= 15)
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
LABEL_136:
          v111 = v13;
        }

        else
        {
LABEL_130:
          if ((v13 & 0x1000000000000000) != 0)
          {
            v42 = _StringGuts._foreignConvertedToSmall()(*&v42, v13);
            v111 = v127;
          }

          else
          {
            if ((*&v42 & 0x1000000000000000) != 0)
            {
              v110 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v110 = _StringObject.sharedUTF8.getter(*&v42, v13);
              v41 = v131;
            }

            closure #1 in _StringGuts._convertedToSmall()(v110, v41, &v191, v107);
            v111 = *(&v191 + 1);
            v42 = v191;
          }
        }

        0xE200000000000000;
        v112._rawBits = 1;
        v113._rawBits = 131073;
        v114._rawBits = _StringGuts.validateScalarRange(_:)(v112, v113, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v114._rawBits < 0x10000)
        {
          v114._rawBits |= 3;
        }

        v116 = Substring.description.getter(v114._rawBits, v115._rawBits, 0x202CuLL, 0xE200000000000000);
        v27 = v117;
        0xE200000000000000;
        if ((v27 & 0x2000000000000000) != 0)
        {
          v27;
        }

        else if ((v27 & 0x1000000000000000) != 0)
        {
          v116 = _StringGuts._foreignConvertedToSmall()(v116, v27);
          v179 = v132;
          v27;
          v27 = v179;
        }

        else
        {
          if ((v116 & 0x1000000000000000) != 0)
          {
            v129 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v130 = v116 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = _StringObject.sharedUTF8.getter(v116, v27);
          }

          closure #1 in _StringGuts._convertedToSmall()(v129, v130, &v191, v118);
          v27;
          v27 = *(&v191 + 1);
          v116 = v191;
        }

        v119 = specialized _SmallString.init(_:appending:)(*&v42, v111, v116, v27);
        if (v121)
        {
          goto LABEL_230;
        }

        v122 = v119;
        v123 = v120;
        v13;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v192 = v122;
        v193 = v123;
        goto LABEL_109;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v27, 2);
      v191 = v181;
      closure #1 in _StringGuts.append(_:)(&v191, 2uLL, &v192, 1);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_109:
      v96 = v182;
LABEL_110:
      v97 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
      inited = swift_initStackObject(v97, v190);
      *(inited + 1) = v184;
      inited[7] = v2;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      (object)(boxed_opaque_existential_0Tm, v96, v2);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v192);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v95 = 0;
      countAndFlagsBits += v185;
      if (!--*&v45)
      {
        v13 = v192;
        v49 = v193;
        object = v180;
        goto LABEL_163;
      }
    }

    __break(1u);
LABEL_203:
    v152._rawBits = (countAndFlagsBits << 16) | 1;
    v153._rawBits = 1;
    v154 = v45;
    v155._rawBits = _StringGuts.validateScalarRange(_:)(v153, v152, *&v45, object)._rawBits;
    *&v181 = v156;
    if (v155._rawBits >= 0x10000)
    {
      rawBits = v155._rawBits;
    }

    else
    {
      rawBits = v155._rawBits | 3;
    }

    object;
    v158._rawBits = rawBits;
    v45 = v154;
    v47 = String.UTF8View.distance(from:to:)(v158, v181);
    object;
    if ((v27 & 0x1000000000000000) != 0)
    {
      goto LABEL_207;
    }

LABEL_50:
    v48 = __OFADD__(*&v42, v47);
    v49 = *&v42 + v47;
    if (!v48)
    {
      goto LABEL_51;
    }

LABEL_209:
    __break(1u);
LABEL_210:
    v160 = String.UTF8View._foreignCount()();
    v2 = v160 + 2;
    if (!__OFADD__(v160, 2))
    {
      break;
    }

LABEL_212:
    __break(1u);
LABEL_213:
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v45 = _StringGuts._foreignConvertedToSmall()(*&v45, countAndFlagsBits);
      v174 = v173;
      countAndFlagsBits;
      countAndFlagsBits = v174;
    }

    else
    {
      if ((*&v45 & 0x1000000000000000) != 0)
      {
        v161 = ((countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v162 = *&v45 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v161 = _StringObject.sharedUTF8.getter(*&v45, countAndFlagsBits);
      }

      closure #1 in _StringGuts._convertedToSmall()(v161, v162, &v188, v63);
      countAndFlagsBits;
      v45 = v188;
      countAndFlagsBits = v189;
    }
  }

  if ((v13 & ~v49 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v2 > 15)
    {
      goto LABEL_186;
    }

    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_189;
  }

  v135 = _StringGuts.nativeUnusedCapacity.getter(v13, v49);
  if (v136)
  {
    goto LABEL_230;
  }

  if (v2 > 15)
  {
    goto LABEL_186;
  }

  if ((v49 & 0x2000000000000000) != 0)
  {
LABEL_189:
    v138 = v49;
    goto LABEL_190;
  }

  if (v135 < 2)
  {
LABEL_181:
    if ((v49 & 0x1000000000000000) != 0)
    {
      v13 = _StringGuts._foreignConvertedToSmall()(v13, v49);
      v138 = v151;
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v137 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v137 = _StringObject.sharedUTF8.getter(v13, v49);
        v41 = v172;
      }

      closure #1 in _StringGuts._convertedToSmall()(v137, v41, &v191, v63);
      v138 = *(&v191 + 1);
      v13 = v191;
    }

LABEL_190:
    0xE200000000000000;
    v139._rawBits = 1;
    v140._rawBits = 131073;
    v141._rawBits = _StringGuts.validateScalarRange(_:)(v139, v140, 0x295DuLL, 0xE200000000000000)._rawBits;
    if (v141._rawBits < 0x10000)
    {
      v141._rawBits |= 3;
    }

    v143 = Substring.description.getter(v141._rawBits, v142._rawBits, 0x295DuLL, 0xE200000000000000);
    v145 = v144;
    0xE200000000000000;
    if ((v145 & 0x2000000000000000) != 0)
    {
      v145;
    }

    else
    {
      v165 = object;
      if ((v145 & 0x1000000000000000) != 0)
      {
        v143 = _StringGuts._foreignConvertedToSmall()(v143, v145);
        v178 = v177;
        v145;
        v145 = v178;
        object = v165;
      }

      else
      {
        if ((v143 & 0x1000000000000000) != 0)
        {
          v166 = ((v145 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v167 = v143 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v166 = _StringObject.sharedUTF8.getter(v143, v145);
        }

        closure #1 in _StringGuts._convertedToSmall()(v166, v167, &v191, v146);
        v145;
        v145 = *(&v191 + 1);
        v143 = v191;
      }
    }

    v147 = specialized _SmallString.init(_:appending:)(v13, v138, v143, v145);
    if ((v148 & 1) == 0)
    {
      v13 = v147;
      v49;
      object;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v13;
    }

LABEL_230:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_186:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v2, 2);
  v191 = xmmword_18071DB80;
  closure #1 in _StringGuts.append(_:)(&v191, 2uLL, &v192, 1);
  object;
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  return v192;
}

uint64_t ContiguousArray.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(unint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  return ContiguousArray.withUnsafeBufferPointer<A>(_:)(a1, a2, a3, a4);
}

{
  return a1(a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)), *(a3 + 16));
}

uint64_t _ss22_ContiguousArrayBufferV010withUnsafeC7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), *(v15 + 16), v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

void *ContiguousArray.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(*v4 + 16);
  v10[0] = *v4 + ((*(*(*(a3 + 16) - 8) + 80) + 32) & ~*(*(*(a3 + 16) - 8) + 80));
  v8 = v10[0];
  v10[1] = v7;
  a1(v10);
  return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v10, v8, v7);
}

void *_ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    v3 = *result == a2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || result[1] != a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static ContiguousArray<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  if (v11 == *(v7 + 16))
  {
    if (!v11 || v6 == v7)
    {
      v19 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = v6 + v12;
      v14 = v7 + v12;
      v16 = *(v8 + 16);
      v15 = v8 + 16;
      v17 = *(v15 + 56);
      v21 = a4 + 8;
      v22 = v16;
      v18 = (v15 - 8);
      do
      {
        v22(v10, v13, a3);
        v19 = (*(a4 + 8))(v10, v14, a3, a4);
        (*v18)(v10, a3);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v14 += v17;
        v13 += v17;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void ContiguousArray<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v16 = a1;
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v15 = *(v8 + 16);
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      v15(v10, v13, a3);
      (*(a4 + 24))(v16, a3, a4);
      (*(v8 + 8))(v10, a3);
      v13 += v14;
      --v12;
    }

    while (v12);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, uint64_t, double))
{
  v7 = *(a3 - 8);
  v8 = specialized Hasher.init(_seed:)(a1, v10);
  a4(v10, *v4, *(a2 + 16), v7, v8);
  return Hasher._finalize()();
}

void *ContiguousArray.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(*v4 + 16);
  v8 = *(*(a3 + 16) - 8);
  v9 = *v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[0] = v9;
  v13[1] = v7;
  v10 = *(v8 + 72);
  v11 = v7 * v10;
  if ((v7 * v10) >> 64 != (v7 * v10) >> 63)
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 < 0)
  {
    goto LABEL_5;
  }

  a1(v9, v9 + v11);
  return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v13, v9, v7);
}

uint64_t ContiguousArray.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(v4 + 80);
  v6 = *(a3 + 16);
  v7 = *(v4 + 72);
  v8 = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < 0)
  {
    goto LABEL_5;
  }

  return a1(a3 + ((v5 + 32) & ~v5), a3 + ((v5 + 32) & ~v5) + v8);
}

uint64_t Array._providesContiguousBytesNoCopy.getter(uint64_t a1, uint64_t *a2)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
  v5 = (a1 & 0x4000000000000000) == 0 && a1 >= 0;
  return !isClassOrObjCExistentialType || v5;
}

uint64_t protocol witness for _HasContiguousBytes._providesContiguousBytesNoCopy.getter in conformance [A](uint64_t a1)
{
  v2 = *v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(*(a1 + 16), *(a1 + 16));
  v5 = (v2 & 0x4000000000000000) == 0 && v2 >= 0;
  return !isClassOrObjCExistentialType || v5;
}

uint64_t UnsafeBufferPointer.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return UnsafeBufferPointer.withUnsafeBytes<A>(_:)(a1, a2, a3, a4, a5);
}

{
  v6 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(a3, *(*(a5 - 8) + 72) * a4);
  return a1(v6);
}

uint64_t _Pointer.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*(a2 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](*(a2 - 8));
  if ((*(v16 + 48))(a1, 1, a2) == 1)
  {
    v11 = type metadata accessor for Optional(0, a2, v9, v10);
    (*(*(v11 - 8) + 8))(a1, v11);
    v12 = *(v16 + 56);

    return v12(a4, 1, 1, a2);
  }

  else
  {
    memcpy(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v14 = (*(a3 + 48))(a2, a3);
    (*(a3 + 56))(v14, a2, a3);
    return (*(v16 + 56))(a4, 0, 1, a2);
  }
}

uint64_t UnsafeMutableRawBufferPointer.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  return a1(a3, v4);
}

void String.withUnsafeBytes<A>(_:)(void (*a1)(void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  a4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    a3 = specialized static String._copying(_:)(a3, v4);
    v12 = v11;
    v4;
    v4 = v12;
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13[0] = a3;
    v13[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    v9 = v13;
    v10 = v13 + (HIBYTE(v4) & 0xF);
    goto LABEL_8;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter(a3, v4);
  }

  v9 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v7, v8);
LABEL_8:
  a1(v9, v10);
  v4;
}

void protocol witness for _HasContiguousBytes.withUnsafeBytes<A>(_:) in conformance String(void (*a1)(void *, char *))
{
  v4 = *v1;
  v3 = v1[1];
  v3;
  if ((v3 & 0x1000000000000000) != 0)
  {
    v4 = specialized static String._copying(_:)(v4, v3);
    v10 = v9;
    v3;
    v3 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11[0] = v4;
    v11[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = v11;
    v8 = v11 + (HIBYTE(v3) & 0xF);
    goto LABEL_8;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 0x1000000000000000) != 0)
  {
    v5 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter(v4, v3);
  }

  v7 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v5, v6);
LABEL_8:
  a1(v7, v8);
  v3;
}

void Substring.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  a6;
  Substring.withUTF8<A>(_:)(partial apply for closure #1 in Substring.withUnsafeBytes<A>(_:));
  a6;
}

uint64_t closure #1 in Substring.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else if (!a1)
  {
    v3 = 0;
    return a3(a1, v3);
  }

  v3 = a2 + a1;
  return a3(a1, v3);
}

uint64_t Substring.withUTF8<A>(_:)(uint64_t (*a1)(char *))
{
  v3 = v1[3];
  if ((v3 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v3 = v1[3];
  }

  v4 = v1[2];
  v5 = *v1 >> 16;
  v6 = v1[1] >> 16;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v14[0] = v1[2];
    v14[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v3) & 0xF) >= v6 && v6 - v5 >= 0)
    {
      v9 = v14 + v5;
      return a1(v9);
    }

    goto LABEL_12;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    v11 = *v1 >> 16;
    v12 = v1[2];
    v15 = v1[1] >> 16;
    v7 = _StringObject.sharedUTF8.getter(v12, v3);
    v5 = v11;
    v8 = v13;
    v6 = v15;
    if (v8 >= v15)
    {
      goto LABEL_6;
    }

LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0xFFFFFFFFFFFFLL) < v6)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v5, v6, v7, v8);
  return a1(v9);
}

void protocol witness for _HasContiguousBytes.withUnsafeBytes<A>(_:) in conformance Substring()
{
  v1 = *(v0 + 24);
  v1;
  Substring.withUTF8<A>(_:)(closure #1 in Substring.withUnsafeBytes<A>(_:)partial apply);
  v1;
}

uint64_t ClosedRange.init(uncheckedBounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  v37 = type metadata accessor for ClosedRange(0, a3, v42, v36);
  v31(v48 + *(v37 + 36), &v32[v35], a3);
  v34(v32, a3);
  v34(v47, a3);
  return (v34)(&v46[v45], a3);
}

uint64_t ClosedRange.relative<A>(to:)@<X0>(uint64_t a1@<X1>, void (*a2)(char *, char *, uint64_t)@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v30 = a2;
  v31 = a4;
  v6 = *(a1 + 16);
  v28 = a1;
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v9 = v8;
  v29 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 184))(v4 + *(a1 + 36), v30, a3);
  (*(v16 + 16))(v15, v4, v6);
  v19 = *(v16 + 32);
  v19(&v15[*(v9 + 48)], v18, v6);
  v30 = v19;
  v20 = v29;
  (*(v29 + 16))(v12, v15, v9);
  v21 = *(v9 + 48);
  v22 = v31;
  v19(v31, v12, v6);
  v23 = *(v16 + 8);
  v23(&v12[v21], v6);
  (*(v20 + 32))(v12, v15, v9);
  v24 = *(v9 + 48);
  v26 = type metadata accessor for Range(0, v6, *(v28 + 24), v25);
  v30(&v22[*(v26 + 36)], &v12[v24], v6);
  return (v23)(v12, v6);
}

uint64_t ClosedRange.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((*(v6 + 32))(a1, v3, v7, v6))
  {
    return (*(v6 + 24))(a1, v3 + *(a2 + 36), v7, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ClosedRange<>._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a3 + 8);
  v9 = *(v8 + 24);
  if (v9(v4, a1, v7, v8))
  {
    v10 = v9(a1, v4 + *(a2 + 36), v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t static ClosedRange<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v32 - v8;
  v34 = v9;
  v12 = type metadata accessor for ClosedRange<>.Index(0, v10, v9, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v32 - v14;
  swift_getTupleTypeMetadata2(0, v12, v12, 0, 0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - v19;
  v21 = *(v18 + 48);
  v35 = v13;
  v22 = *(v13 + 16);
  v22(&v32 - v19, v36, v12);
  v22(&v20[v21], a2, v12);
  v36 = v5;
  v23 = *(v5 + 48);
  if (v23(v20, 1, a3) == 1)
  {
    v24 = 1;
    if (v23(&v20[v21], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v22(v37, v20, v12);
    if (v23(&v20[v21], 1, a3) != 1)
    {
      v25 = v36;
      v26 = *(v36 + 32);
      v27 = v32;
      v26(v32, v37, a3);
      v28 = &v20[v21];
      v29 = v33;
      v26(v33, v28, a3);
      v24 = (*(*(*(v34 + 8) + 8) + 8))(v27, v29, a3);
      v30 = *(v25 + 8);
      v30(v29, a3);
      v30(v27, a3);
LABEL_8:
      v17 = v35;
      goto LABEL_9;
    }

    (*(v36 + 8))(v37, a3);
  }

  v24 = 0;
  v12 = v16;
LABEL_9:
  (*(v17 + 8))(v20, v12);
  return v24 & 1;
}

uint64_t static ClosedRange<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v32 - v8;
  v34 = v9;
  v12 = type metadata accessor for ClosedRange<>.Index(0, v10, v9, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v32 - v14;
  swift_getTupleTypeMetadata2(0, v12, v12, 0, 0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - v19;
  v21 = *(v18 + 48);
  v35 = v13;
  v22 = *(v13 + 16);
  v22(&v32 - v19, v36, v12);
  v22(&v20[v21], a2, v12);
  v36 = v5;
  v23 = *(v5 + 48);
  if (v23(v20, 1, a3) == 1)
  {
    v24 = 0;
    v12 = v16;
  }

  else
  {
    v22(v37, v20, v12);
    if (v23(&v20[v21], 1, a3) == 1)
    {
      (*(v36 + 8))(v37, a3);
      v24 = 1;
    }

    else
    {
      v25 = v36;
      v26 = *(v36 + 32);
      v27 = v32;
      v26(v32, v37, a3);
      v28 = &v20[v21];
      v29 = v33;
      v26(v33, v28, a3);
      v24 = (*(*(v34 + 8) + 16))(v27, v29, a3);
      v30 = *(v25 + 8);
      v30(v29, a3);
      v30(v27, a3);
    }

    v17 = v35;
  }

  (*(v17 + 8))(v20, v12);
  return v24 & 1;
}

void ClosedRange<>.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    Hasher._combine(_:)(1u);
  }

  else
  {
    (*(v6 + 32))(v9, v11, v5);
    Hasher._combine(_:)(0);
    (*(a3 + 24))(a1, v5, a3);
    (*(v6 + 8))(v9, v5);
  }
}

Swift::Int ClosedRange<>.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
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
    Hasher._combine(_:)(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    Hasher._combine(_:)(0);
    (*(a2 + 24))(&v14, v4, a2);
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

uint64_t ClosedRange<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v3, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t ClosedRange<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v35 = a1;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v10 = v9;
  v32 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v30 - v11;
  v12 = *(*(swift_getAssociatedConformanceWitness(a3, v8, v10, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v12, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ClosedRange<>.Index(0, v8, a3, a4);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  (*(v24 + 16))(&v30 - v22, v35);
  if ((*(v18 + 48))(v23, 1, v8) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v18 + 32))(v20, v23, v8);
  if ((*(*(*(a3 + 8) + 8) + 8))(v20, v33 + *(a2 + 36), v8))
  {
    v25 = 1;
    v26 = v34;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v10, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v14, AssociatedConformanceWitness);
    v28 = v31;
    (*(v12 + 24))(v17, v10, v12);
    v26 = v34;
    (*(a3 + 48))(v28, v8, a3);
    (*(v32 + 8))(v28, v10);
    v25 = 0;
  }

  (*(v18 + 8))(v20, v8);
  return (*(v18 + 56))(v26, v25, 1, v8);
}

uint64_t ClosedRange<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a1;
  v33 = a2;
  v34 = a5;
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v32 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = *(*(swift_getAssociatedConformanceWitness(a3, v7, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v12, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ClosedRange<>.Index(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  (*(v24 + 16))(&v31 - v22, v35);
  if ((*(v18 + 48))(v23, 1, v7) != 1)
  {
    (*(v18 + 32))(v20, v23, v7);
    if ((*(*(a3 + 8) + 40))(v20, v36, v7))
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v14, AssociatedConformanceWitness);
      (*(v12 + 24))(v17, v9, v12);
      v28 = v34;
      (*(a3 + 48))(v11, v7, a3);
      (*(v32 + 8))(v11, v9);
      (*(v18 + 8))(v20, v7);
      return (*(v18 + 56))(v28, 0, 1, v7);
    }

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = v33;
  v26 = v36;
  if (((*(*(a3 + 8) + 32))(v36 + *(v33 + 36), v36, v7) & 1) == 0)
  {
    goto LABEL_7;
  }

  v27 = v26 + *(v25 + 36);
  v28 = v34;
  (*(v18 + 16))(v34, v27, v7);
  return (*(v18 + 56))(v28, 0, 1, v7);
}

uint64_t ClosedRange<>.index(_:offsetBy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v147 = a2;
  v145 = a1;
  v141 = a6;
  v143 = a3;
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, a4, v8, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v10 = v9;
  v132 = *(swift_getAssociatedConformanceWitness(a4, v8, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8);
  v136 = *(v132 + 16);
  swift_getAssociatedTypeWitness(0, v136, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v135 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v134 = v127 - v12;
  v142 = swift_checkMetadataState(0, v10);
  v144 = *(v142 - 8);
  v13 = MEMORY[0x1EEE9AC00](v142);
  v133 = v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v137 = v127 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v138 = v127 - v18;
  v19 = *(v8 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v131 = (v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = v127 - v22;
  v140 = a5;
  v24 = type metadata accessor for ClosedRange<>.Index(0, v8, a4, a5);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v127 - v29;
  v31 = *(v25 + 16);
  v31(v127 - v29, v145, v24);
  v32 = (*(v19 + 48))(v30, 1, v8);
  v139 = a4;
  if (v32 != 1)
  {
    v128 = *(v19 + 32);
    v127[1] = (v19 + 32);
    (v128)(v23, v30, v8);
    v36 = *(a4 + 40);
    v37 = &v146[*(v143 + 36)];
    v38 = v138;
    v145 = v23;
    v36(v37, v8, a4);
    v39 = *(v140 + 8);
    v40 = *(v39 + 64);
    v41 = v40();
    v42 = v8;
    v43 = v38;
    v44 = a4;
    v130 = v19;
    v143 = v39 + 64;
    v140 = v40;
    if (v41)
    {
      v45 = v142;
      v129 = *(v39 + 128);
      v46 = v129(v142, v39);
      v49 = v144;
      v50 = v147;
      if (v46 < 64)
      {
        v51 = (*(v39 + 120))(v45, v39);
        v54 = v51 < v50;
        v55 = v50;
        v56 = v137;
        if (!v54)
        {
          goto LABEL_27;
        }

LABEL_24:
        v127[0] = v42;
        v80 = v43;
        v81 = v135;
        v82 = v136;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v136, v45, v135, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v84 = *(AssociatedConformanceWitness + 8);
        v85 = v134;
        v142 = AssociatedConformanceWitness;
        v131 = v84;
        (v84)(&unk_18071E0B0, 257, v81);
        v128 = v82[3];
        (v128)(v85, v45, v82);
        v86 = v133;
        (*(*(v132 + 8) + 40))(v80, v56, v45);
        v87 = *(v49 + 8);
        v144 = v49 + 8;
        v146 = v87;
        (v87)(v56, v45);
        v88 = v140;
        if ((v140)(v45, v39))
        {
          v89 = v129(v45, v39);
          v92 = v130;
          if (v89 < 64)
          {
LABEL_34:
            v116 = (*(v39 + 120))(v45, v39);
            v111 = v146;
            (v146)(v86, v45);
            v117 = v138;
            v108 = v127[0];
            if (v116 != v147)
            {
              goto LABEL_44;
            }

LABEL_43:
            (v111)(v117, v45);
            (*(v92 + 8))(v145, v108);
            return (*(v92 + 56))(v141, 1, 1, v108);
          }

          v148[0] = v147;
          v112 = *(v39 + 96);
          v113 = lazy protocol witness table accessor for type Int and conformance Int(v89, v90, v91);
          v114 = v137;
          v112(v148, &type metadata for Int, v113, v45, v39);
          v108 = v127[0];
          v115 = swift_getAssociatedConformanceWitness(v139, v127[0], v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
          v110 = (*(*(v115 + 8) + 8))(v86, v114, v45);
          v111 = v146;
          (v146)(v114, v45);
          goto LABEL_41;
        }

        v101 = v88(v45, v39);
        v102 = v129(v45, v39);
        if (v101)
        {
          v105 = v137;
          if (v102 > 64)
          {
            v148[0] = v147;
            v106 = *(v39 + 96);
            v107 = lazy protocol witness table accessor for type Int and conformance Int(v102, v103, v104);
            v106(v148, &type metadata for Int, v107, v45, v39);
            v108 = v127[0];
            v109 = swift_getAssociatedConformanceWitness(v139, v127[0], v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
            v110 = (*(*(v109 + 8) + 8))(v86, v105, v45);
            v111 = v146;
            (v146)(v105, v45);
            (v111)(v86, v45);
            v92 = v130;
            goto LABEL_42;
          }

          v118 = v134;
          v131(&unk_18071E0A8, 256);
          (v128)(v118, v45, v136);
          v108 = v127[0];
          v119 = swift_getAssociatedConformanceWitness(v139, v127[0], v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
          LOBYTE(v118) = (*(v119 + 32))(v86, v105, v45, v119);
          v111 = v146;
          (v146)(v105, v45);
          v92 = v130;
          v120 = v147;
          if (v118)
          {
            v121 = (*(v39 + 120))(v45, v39);
            (v111)(v86, v45);
            v117 = v138;
            if (v121 != v120)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v92 = v130;
          if (v102 < 64)
          {
            goto LABEL_34;
          }

          v108 = v127[0];
          v111 = v146;
          if ((v147 & 0x8000000000000000) == 0)
          {
            v148[0] = v147;
            v122 = *(v39 + 96);
            v123 = lazy protocol witness table accessor for type Int and conformance Int(v102, v103, v104);
            v124 = v137;
            v122(v148, &type metadata for Int, v123, v45, v39);
            v125 = swift_getAssociatedConformanceWitness(v139, v108, v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
            v110 = (*(*(v125 + 8) + 8))(v86, v124, v45);
            v126 = v124;
            v111 = v146;
            (v146)(v126, v45);
LABEL_41:
            (v111)(v86, v45);
LABEL_42:
            v117 = v138;
            if ((v110 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }
        }

        (v111)(v86, v45);
        goto LABEL_44;
      }

      v148[0] = v147;
      v65 = v43;
      v66 = v42;
      v67 = *(v39 + 96);
      v68 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
      v56 = v137;
      v67(v148, &type metadata for Int, v68, v45, v39);
      v42 = v66;
      v43 = v65;
      v69 = swift_getAssociatedConformanceWitness(v44, v42, v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
      v70 = (*(v69 + 16))(v65, v56, v45, v69);
      goto LABEL_17;
    }

    v45 = v142;
    v57 = (v40)(v142, v39);
    v129 = *(v39 + 128);
    v51 = v129(v45, v39);
    v58 = v147;
    if (v57)
    {
      if (v51 > 64)
      {
        v148[0] = v147;
        v59 = v43;
        v60 = v42;
        v61 = *(v39 + 96);
        v62 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
        v56 = v137;
        v61(v148, &type metadata for Int, v62, v45, v39);
        v42 = v60;
        v43 = v59;
        v63 = swift_getAssociatedConformanceWitness(v44, v42, v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
        v64 = (*(v63 + 16))(v59, v56, v45, v63);
        v49 = v144;
        goto LABEL_18;
      }

      v75 = v135;
      v74 = v136;
      v76 = swift_getAssociatedConformanceWitness(v136, v45, v135, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v77 = v134;
      (*(v76 + 8))(&unk_18071E0A8, 256, v75, v76);
      v78 = v137;
      (v74[3])(v77, v45, v74);
      v79 = swift_getAssociatedConformanceWitness(v44, v42, v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
      LOBYTE(v75) = (*(v79 + 16))(v43, v78, v45, v79);
      (*(v144 + 8))(v78, v45);
      if (v75)
      {
        v56 = v137;
        v49 = v144;
        goto LABEL_24;
      }
    }

    else if (v51 >= 64)
    {
      v55 = v147;
      v56 = v137;
      v49 = v144;
      if (v147 < 1)
      {
LABEL_27:
        v148[0] = v55;
        v93 = *(v39 + 88);
        v94 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
        v93(v148, &type metadata for Int, v94, v45, v39);
        v95 = v139;
        v96 = v131;
        v97 = v145;
        (*(v139 + 6))(v56, v42, v139);
        v98 = *(v49 + 8);
        v98(v56, v45);
        if (((*(*(v95 + 1) + 32))(v96, v146, v42) & 1) == 0)
        {
          goto LABEL_44;
        }

        v98(v43, v45);
        v99 = v130;
        (*(v130 + 8))(v97, v42);
        v100 = v141;
        (v128)(v141, v96, v42);
        return (*(v99 + 56))(v100, 0, 1, v42);
      }

      v148[0] = v147;
      v71 = *(v39 + 96);
      v72 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
      v71(v148, &type metadata for Int, v72, v45, v39);
      v73 = swift_getAssociatedConformanceWitness(v139, v42, v45, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
      v70 = (*(v73 + 16))(v43, v56, v45, v73);
LABEL_17:
      v64 = v70;
LABEL_18:
      v51 = (*(v49 + 8))(v56, v45);
      v55 = v147;
      if ((v64 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v51 = (*(v39 + 120))(v45, v39);
    v54 = v51 < v58;
    v55 = v58;
    v56 = v137;
    v49 = v144;
    if (!v54)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v33 = v147;
  if (v147)
  {
    if (v147 < 0)
    {
      v34 = v143;
      (*(v19 + 16))(v28, &v146[*(v143 + 36)], v8);
      (*(v19 + 56))(v28, 0, 1, v8);
      ClosedRange<>.index(_:offsetBy:)(v28, v33 + 1, v34, v139, v140);
      return (*(v25 + 8))(v28, v24);
    }

LABEL_44:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v31)(v141, v145, v24);
}

BOOL static BinaryInteger.<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v64 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v64, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v57 - v13;
  v61 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v61, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - v16;
  v68 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 + 64);
  v21 = v20(a4, a6);
  if (((v21 ^ (*(a5 + 64))(a3, a5)) & 1) == 0)
  {
    v31 = (*(a6 + 128))(a4, a6);
    if (v31 >= (*(a5 + 128))(a3, a5))
    {
      v40 = v67;
      (*(v68 + 16))(v67, a1, a3);
      v41 = v65;
      (*(a6 + 96))(v40, a3, a5, a4, a6);
      v34 = (*(*(*(a6 + 32) + 8) + 16))(a2, v41, a4);
      v35 = *(v66 + 8);
      v36 = v41;
      v39 = a4;
      goto LABEL_11;
    }

    v32 = v65;
    (*(v66 + 16))(v65, a2, a4);
    v33 = v67;
    (*(a5 + 96))(v32, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 32) + 8) + 16))(v33, a1, a3);
    v35 = *(v68 + 8);
    v36 = v33;
LABEL_9:
    v39 = a3;
LABEL_11:
    v35(v36, v39);
    return (v34 & 1) == 0;
  }

  v22 = v20(a4, a6);
  v23 = *(a6 + 128);
  v58 = a2;
  v24 = v23(a4, a6);
  v25 = *(a5 + 128);
  v57 = a1;
  v26 = v25(a3, a5);
  if ((v22 & 1) == 0)
  {
    v28 = v66;
    v37 = v67;
    if (v24 >= v26)
    {
      v49 = v63;
      v50 = v64;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v64, a3, v63, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v62;
      (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v49, AssociatedConformanceWitness);
      (v50[3])(v52, a3, v50);
      v53 = v57;
      LOBYTE(v49) = (*(*(*(a5 + 32) + 8) + 40))(v57, v37, a3);
      v54 = v68;
      (*(v68 + 8))(v37, a3);
      v55 = v58;
      if ((v49 & 1) == 0)
      {
        v34 = 0;
        return (v34 & 1) == 0;
      }

      (*(v54 + 16))(v37, v53, a3);
      v29 = v65;
      (*(a6 + 96))(v37, a3, a5, a4, a6);
      v30 = (*(*(*(a6 + 32) + 8) + 16))(v55, v29, a4);
      goto LABEL_16;
    }

    v38 = v65;
    (*(v66 + 16))(v65, v58, a4);
    (*(a5 + 96))(v38, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 32) + 8) + 16))(v37, v57, a3);
    v35 = *(v68 + 8);
    v36 = v37;
    goto LABEL_9;
  }

  v28 = v66;
  v27 = v67;
  if (v26 < v24)
  {
    (*(v68 + 16))(v67, v57, a3);
    v29 = v65;
    (*(a6 + 96))(v27, a3, a5, a4, a6);
    v30 = (*(*(*(a6 + 32) + 8) + 16))(v58, v29, a4);
LABEL_16:
    v34 = v30;
    (*(v28 + 8))(v29, a4);
    return (v34 & 1) == 0;
  }

  v42 = v60;
  v43 = v61;
  v44 = swift_getAssociatedConformanceWitness(v61, a4, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v45 = v59;
  (*(v44 + 8))(&unk_18071E0A8, 256, v42, v44);
  v46 = v65;
  (v43[3])(v45, a4, v43);
  v47 = v58;
  LOBYTE(v42) = (*(*(*(a6 + 32) + 8) + 16))(v58, v46, a4);
  (*(v28 + 8))(v46, a4);
  v48 = v68;
  if (v42)
  {
    v34 = 1;
  }

  else
  {
    (*(v28 + 16))(v46, v47, a4);
    (*(a5 + 96))(v46, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 32) + 8) + 16))(v27, v57, a3);
    (*(v48 + 8))(v27, a3);
  }

  return (v34 & 1) == 0;
}

unint64_t specialized numericCast<A, B>(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0 || result >= 0x100)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v48 = v16;
  (*(v16 + 16))(&v45 - v14, a1, a2);
  v49 = *(a3 + 64);
  v17 = v49(a2, a3);
  v18 = *(a3 + 128);
  if ((v17 & 1) != 0 && v18(a2, a3) >= 65)
  {
    v46 = v6;
    v50 = 0x8000000000000000;
    v19 = v49;
    if (v49(a2, a3))
    {
      v20 = v18(a2, a3);
      if (v20 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v23 = v19(a2, a3);
      v20 = v18(a2, a3);
      if ((v23 & 1) == 0)
      {
        if (v20 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 <= 64)
      {
        v28 = v46;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v8, AssociatedConformanceWitness);
        v30 = v47;
        (*(v28 + 3))(v11, a2, v28);
        v31 = (*(*(*(a3 + 32) + 8) + 16))(v15, v30, a2);
        (*(v48 + 8))(v30, a2);
        if (v31)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v24 = *(a3 + 96);
    v25 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
    v26 = v47;
    v24(&v50, &type metadata for Int, v25, a2, a3);
    v27 = (*(*(*(a3 + 32) + 8) + 16))(v15, v26, a2);
    (*(v48 + 8))(v26, a2);
    if (v27)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v32 = v18(a2, a3);
  v34 = v48;
  v33 = v49;
  if (v32 > 64 || v18(a2, a3) == 64 && (v33(a2, a3) & 1) == 0)
  {
    v50 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = v33(a2, a3);
    v36 = v18(a2, a3);
    if (v35)
    {
      if (v36 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v36 >= 64)
    {
LABEL_17:
      v39 = *(a3 + 96);
      v40 = lazy protocol witness table accessor for type Int and conformance Int(v36, v37, v38);
      v41 = v47;
      v39(&v50, &type metadata for Int, v40, a2, a3);
      v42 = (*(*(*(a3 + 32) + 8) + 16))(v41, v15, a2);
      (*(v34 + 8))(v41, a2);
      if ((v42 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v43 = (*(a3 + 120))(a2, a3);
  (*(v34 + 8))(v15, a2);
  return v43;
}

uint64_t specialized numericCast<A, B>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  (*(v12 + 16))(&v35 - v16, a1, a2);
  v38 = *(a3 + 64);
  if (v38(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v8, AssociatedConformanceWitness);
    (*(v6 + 24))(v11, a2, v6);
    v19 = (*(*(*(a3 + 32) + 8) + 32))(v17, v15, a2);
    (*(v12 + 8))(v15, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v39 = v12;
  v36 = v6;
  v37 = v15;
  v20 = *(a3 + 128);
  if (v20(a2, a3) > 63)
  {
    v40 = -1;
    v21 = v38(a2, a3);
    v22 = v20(a2, a3);
    if (v21)
    {
      if (v22 <= 64)
      {
        v25 = v36;
        v26 = swift_getAssociatedConformanceWitness(v36, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(v26 + 8))(&unk_18071E0A8, 256, v8, v26);
        v27 = v37;
        (*(v25 + 3))(v11, a2, v25);
        v28 = (*(*(*(a3 + 32) + 8) + 40))(v17, v27, a2);
        (*(v39 + 8))(v27, a2);
        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v22 <= 64)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v29 = *(a3 + 96);
    v30 = lazy protocol witness table accessor for type UInt and conformance UInt(v22, v23, v24);
    v31 = v37;
    v29(&v40, &type metadata for UInt, v30, a2, a3);
    v32 = (*(*(*(a3 + 32) + 8) + 16))(v31, v17, a2);
    (*(v39 + 8))(v31, a2);
    if (v32)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

LABEL_12:
  v33 = (*(a3 + 120))(a2, a3);
  (*(v39 + 8))(v17, a2);
  return v33;
}

{
  v6 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  (*(v12 + 16))(&v35 - v16, a1, a2);
  v38 = *(a3 + 64);
  if (v38(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
    (*(v6 + 24))(v11, a2, v6);
    v19 = (*(*(*(a3 + 32) + 8) + 32))(v17, v15, a2);
    (*(v12 + 8))(v15, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v39 = v12;
  v36 = v6;
  v37 = v15;
  v20 = *(a3 + 128);
  if (v20(a2, a3) > 7)
  {
    v40 = -1;
    v21 = v38(a2, a3);
    v22 = v20(a2, a3);
    if (v21)
    {
      if (v22 <= 8)
      {
        v25 = v36;
        v26 = swift_getAssociatedConformanceWitness(v36, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(v26 + 8))(&qword_18071E0A8, 256, v8, v26);
        v27 = v37;
        (*(v25 + 3))(v11, a2, v25);
        v28 = (*(*(*(a3 + 32) + 8) + 40))(v17, v27, a2);
        (*(v39 + 8))(v27, a2);
        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v22 <= 8)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v29 = *(a3 + 96);
    v30 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v22, v23, v24);
    v31 = v37;
    v29(&v40, &type metadata for UInt8, v30, a2, a3);
    v32 = (*(*(*(a3 + 32) + 8) + 16))(v31, v17, a2);
    (*(v39 + 8))(v31, a2);
    if (v32)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

LABEL_12:
  v33 = (*(a3 + 120))(a2, a3);
  (*(v39 + 8))(v17, a2);
  return v33;
}

uint64_t numericCast<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return (*(a5 + 88))(v10, a2, a4, a3, a5);
}

uint64_t static BinaryInteger.== infix<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v61 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v61, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - v13;
  v58 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v58, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v57 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v54 - v16;
  v65 = *(a4 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 64);
  v21 = v20(a3, a5);
  if ((v21 ^ (*(a6 + 64))(a4, a6)))
  {
    v22 = v20(a3, a5);
    v23 = *(a5 + 128);
    v55 = a1;
    v24 = v23(a3, a5);
    v25 = *(a6 + 128);
    v54 = a2;
    v26 = v25(a4, a6);
    if (v22)
    {
      v28 = v63;
      v27 = v64;
      if (v26 < v24)
      {
        (*(v65 + 16))(v64, v54, a4);
        v29 = v62;
        (*(a5 + 96))(v27, a4, a6, a3, a5);
        v30 = (*(*(*(a5 + 16) + 8) + 8))(v55, v29, a3);
LABEL_15:
        v34 = v30;
        (*(v28 + 8))(v29, a3);
        return v34 & 1;
      }

      v39 = v57;
      v40 = v58;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v58, a3, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v42 = v56;
      (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v39, AssociatedConformanceWitness);
      v43 = v62;
      (v40[3])(v42, a3, v40);
      v44 = v55;
      LOBYTE(v39) = (*(*(*(a5 + 32) + 8) + 32))(v55, v43, a3);
      (*(v28 + 8))(v43, a3);
      v45 = v65;
      if (v39)
      {
        (*(v28 + 16))(v43, v44, a3);
        (*(a6 + 96))(v43, a3, a5, a4, a6);
        v34 = (*(*(*(a6 + 16) + 8) + 8))(v27, v54, a4);
        (*(v45 + 8))(v27, a4);
        return v34 & 1;
      }
    }

    else
    {
      v28 = v63;
      v35 = v64;
      if (v24 < v26)
      {
        v36 = v62;
        (*(v63 + 16))(v62, v55, a3);
        (*(a6 + 96))(v36, a3, a5, a4, a6);
        v34 = (*(*(*(a6 + 16) + 8) + 8))(v35, v54, a4);
        (*(v65 + 8))(v35, a4);
        return v34 & 1;
      }

      v46 = v60;
      v47 = v61;
      v48 = swift_getAssociatedConformanceWitness(v61, a4, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v49 = v59;
      (*(v48 + 8))(&unk_18071E0A8, 256, v46, v48);
      (v47[3])(v49, a4, v47);
      v50 = v54;
      LOBYTE(v46) = (*(*(*(a6 + 32) + 8) + 32))(v54, v35, a4);
      v51 = v65;
      (*(v65 + 8))(v35, a4);
      v52 = v55;
      if (v46)
      {
        (*(v51 + 16))(v35, v50, a4);
        v29 = v62;
        (*(a5 + 96))(v35, a4, a6, a3, a5);
        v30 = (*(*(*(a5 + 16) + 8) + 8))(v52, v29, a3);
        goto LABEL_15;
      }
    }

    v34 = 0;
    return v34 & 1;
  }

  v31 = (*(a5 + 128))(a3, a5);
  if (v31 >= (*(a6 + 128))(a4, a6))
  {
    v37 = v64;
    (*(v65 + 16))(v64, a2, a4);
    v38 = v62;
    (*(a5 + 96))(v37, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 16) + 8) + 8))(a1, v38, a3);
    (*(v63 + 8))(v38, a3);
  }

  else
  {
    v32 = v62;
    (*(v63 + 16))(v62, a1, a3);
    v33 = v64;
    (*(a6 + 96))(v32, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 16) + 8) + 8))(v33, a2, a4);
    (*(v65 + 8))(v33, a4);
  }

  return v34 & 1;
}

uint64_t ClosedRange<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v55 = a3;
  v7 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, a4, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v59 = *(swift_getAssociatedConformanceWitness(a4, v7, v8, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8);
  v57 = *(v59 + 16);
  swift_getAssociatedTypeWitness(0, v57, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v53 - v11;
  v12 = swift_checkMetadataState(0, v9);
  v63 = *(v12 - 1);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v53 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v62 = &v53 - v18;
  v19 = *(v7 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - v23;
  v61 = a4;
  v64 = a5;
  v25 = type metadata accessor for ClosedRange<>.Index(255, v7, a4, a5);
  swift_getTupleTypeMetadata2(0, v25, v25, 0, 0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v53 - v28;
  v30 = *(v27 + 56);
  v31 = *(*(v25 - 8) + 16);
  v31(&v53 - v28, v65, v25);
  v31(&v29[v30], v66, v25);
  v32 = v19[6];
  v33 = v32(v29, 1, v7);
  v34 = v32(&v29[v30], 1, v7);
  v35 = v34;
  if (v33 != 1)
  {
    v37 = v19[4];
    v37(v24, v29, v7);
    if (v35 != 1)
    {
      v37(v22, &v29[v30], v7);
      v50 = v62;
      (v61[5])(v22, v7);
      v51 = v19[1];
      v51(v22, v7);
      v51(v24, v7);
      v36 = _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(v50, v12, *(v64 + 8));
      (*(v63 + 8))(v50, v12);
      return v36;
    }

    v38 = v57;
    v39 = v53;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v57, v12, v53, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v41 = v54;
    (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v39, AssociatedConformanceWitness);
    v42 = v58;
    (v38[3])(v41, v12, v38);
    v43 = v56;
    (v61[5])(v60 + *(v55 + 36), v7);
    (v19[1])(v24, v7);
    v44 = v62;
    (*(*(v59 + 8) + 24))(v42, v43, v12);
    goto LABEL_7;
  }

  if (v34 != 1)
  {
    (v19[4])(v24, &v29[v30], v7);
    v42 = v58;
    (v61[5])(v24, v7);
    (v19[1])(v24, v7);
    v45 = v57;
    v46 = v53;
    v47 = swift_getAssociatedConformanceWitness(v57, v12, v53, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v48 = v54;
    (*(v47 + 8))(&qword_1806729C0, 512, v46, v47);
    v43 = v56;
    (v45[3])(v48, v12, v45);
    v44 = v62;
    (*(*(v59 + 8) + 40))(v42, v43, v12);
LABEL_7:
    v49 = *(v63 + 8);
    v49(v43, v12);
    v49(v42, v12);
    v36 = _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(v44, v12, *(v64 + 8));
    v49(v44, v12);
    return v36;
  }

  return 0;
}

uint64_t ClosedRange<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for ClosedRange<>.Index(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *(v7 - 8);
  if ((*(v12 + 48))(v10, 1, v7) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v12 + 32))(a5, v10, v7);
}

uint64_t ClosedRange<>._customIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = *(a2 + 16);
  v13 = *(a3 + 8);
  v14 = *(v13 + 24);
  if (v14(v6, a1, v12, v13) & 1) != 0 && (v14(a1, v6 + *(a2 + 36), v12, v13))
  {
    v15 = *(v12 - 8);
    (*(v15 + 16))(a5, a1, v12);
    (*(v15 + 56))(a5, 0, 1, v12);
    v16 = type metadata accessor for ClosedRange<>.Index(0, v12, a3, a4);
    (*(*(v16 - 8) + 56))(a5, 0, 1, v16);
    v19 = 0;
  }

  else
  {
    v16 = type metadata accessor for ClosedRange<>.Index(255, v12, a3, a4);
    v19 = 1;
  }

  v20 = type metadata accessor for Optional(0, v16, v17, v18);
  v21 = *(*(v20 - 8) + 56);

  return v21(a5, v19, 1, v20);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> ClosedRange<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0x7135uLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = ClosedRange<>.subscript.read(v8, a2, a3, *(a4 - 8), *(a4 - 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*ClosedRange<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v7 = *(a3 + 16);
  *a1 = v7;
  v8 = type metadata accessor for ClosedRange<>.Index(0, v7, a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xB78EuLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[1] = v11;
  v13 = *(v7 - 8);
  v14 = v13;
  a1[2] = v13;
  v15 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v16 = swift_coroFrameAlloc(v15, 0xB78EuLL);
  }

  else
  {
    v16 = malloc(v15);
  }

  v17 = v16;
  a1[3] = v16;
  (*(v9 + 16))(v12, a2, v8);
  if ((*(v14 + 48))(v12, 1, v7) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v14 + 32))(v17, v12, v7);
  return ClosedRange<>.subscript.read;
}

void ClosedRange<>.subscript.read(void *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  (*(a1[2] + 8))(v1, *a1);
  free(v1);

  free(v2);
}

uint64_t Collection<>.indices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  v6 = *(a2 + 64);
  type metadata accessor for DefaultIndices(0, a1, a2, v7);
  v6(a1, a2);
  return (*(a2 + 72))(a1, a2);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> ClosedRange<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 - 16);
  v7 = *(a3 - 8);
  v9 = type metadata accessor for ClosedRange<>.Index(0, *(a2 + 16), v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  (*(v10 + 32))(&v14 - v11, a1, v9);
  a4(v12, a2, v7, v8);
  return (*(v10 + 8))(v12, v9);
}

uint64_t static Comparable...< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v35 = a7;
  v37 = a5;
  v38 = a6;
  swift_getTupleTypeMetadata2(0, a3, a3, "lower upper ", 0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  if (((*(a4 + 24))(a1, a2, a3, a4) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = *(a3 - 8);
  v38 = a8;
  v24 = v23;
  v25 = a1;
  v26 = a2;
  v27 = a9;
  v36 = a9;
  v28 = *(v23 + 16);
  v37 = a4;
  v28(v22, v25, a3);
  v28(&v22[*(v16 + 48)], v26, a3);
  (*(v17 + 16))(v20, v22, v16);
  v29 = *(v16 + 48);
  v30 = *(v24 + 32);
  v30(v27, v20, a3);
  v31 = *(v24 + 8);
  v31(&v20[v29], a3);
  (*(v17 + 32))(v20, v22, v16);
  v32 = *(v16 + 48);
  v33 = v38(0, a3, v37);
  v30(v36 + *(v33 + 36), &v20[v32], a3);
  return (v31)(v20, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> ClosedRange<A><>.Index(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, double))
{
  v6 = *(a3 - 8);
  v7 = specialized Hasher.init(_seed:)(a1, v9);
  a4(v9, a2, v6, v7);
  return Hasher._finalize()();
}

unint64_t ClosedRange.debugDescription.getter(uint64_t a1)
{
  v268 = a1;
  v271 = *(a1 + 16);
  v1 = *(v271 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v270 = &v263 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _StringGuts.init(_initialCapacity:)(14);
  v5 = v4;
  v275._countAndFlagsBits = v3;
  v275._object = v4;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ClosedRange(", 0xCuLL, 1);
  countAndFlagsBits = v6._countAndFlagsBits;
  v8 = HIBYTE(v5) & 0xF;
  v9 = *&v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v10 = *&v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 && (*&v3 & ~v5 & 0x2000000000000000) == 0)
  {
    v5;
    v275 = v6;
    goto LABEL_68;
  }

  v11 = (v6._object & 0x2000000000000000) == 0;
  v12 = (v6._object >> 56) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v272 = v1;
    v13 = v6._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v14 = (v6._object >> 56) & 0xF;
    if ((v6._object & 0x2000000000000000) != 0)
    {
LABEL_12:
      v267 = v13;
      if ((v6._object & 0x1000000000000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_40;
    }

LABEL_11:
    v14 = v13;
    goto LABEL_12;
  }

  if ((v6._object & 0x2000000000000000) == 0)
  {
    v272 = v1;
    v13 = v6._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v11 = 1;
    goto LABEL_11;
  }

  v34 = v12 + v8;
  if (v12 + v8 < 0x10)
  {
    if (v12)
    {
      v46 = 0;
      v47 = 0;
      v48 = 8 * v8;
      v49 = v5;
      do
      {
        v50 = v6._object >> (v46 & 0x38);
        if (v47 < 8)
        {
          v50 = v6._countAndFlagsBits >> v46;
        }

        v51 = (v50 << (v48 & 0x38)) | ((-255 << (v48 & 0x38)) - 1) & v49;
        v52 = (v50 << v48) | ((-255 << v48) - 1) & *&v3;
        if (v8 <= 7)
        {
          v3 = v52;
        }

        else
        {
          v49 = v51;
        }

        ++v8;
        v48 += 8;
        v46 += 8;
        ++v47;
      }

      while (8 * v12 != v46);
    }

    else
    {
      v49 = v5;
    }

    v5;
    v6._object;
    v53 = 0xA000000000000000;
    if (!(*&v3 & 0x8080808080808080 | v49 & 0x80808080808080))
    {
      v53 = 0xE000000000000000;
    }

    v275._countAndFlagsBits = v3;
    v275._object = (v53 & 0xFF00000000000000 | (v34 << 56) | v49 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_68;
  }

  v272 = v1;
  v11 = 0;
  v14 = (v6._object >> 56) & 0xF;
  v267 = (v6._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
  if ((v6._object & 0x1000000000000000) == 0)
  {
LABEL_13:
    v6._object;
    v16 = v14;
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    v39 = String.UTF8View._foreignCount()();
    v18 = v39 + v16;
    if (!__OFADD__(v39, v16))
    {
      goto LABEL_15;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_40:
  swift_bridgeObjectRetain_n(v6._object, 2);
  v35._rawBits = 1;
  v36._rawBits = (v14 << 16) | 1;
  v37._rawBits = _StringGuts.validateScalarRange(_:)(v35, v36, v6._countAndFlagsBits, v6._object)._rawBits;
  if (v37._rawBits < 0x10000)
  {
    v37._rawBits |= 3;
  }

  v16 = String.UTF8View.distance(from:to:)(v37, v38);
  v6._object;
  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_14:
  v17 = __OFADD__(v10, v16);
  v18 = v10 + v16;
  if (v17)
  {
    goto LABEL_45;
  }

LABEL_15:
  if ((*&v3 & ~v5 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v18 > 15)
    {
      goto LABEL_26;
    }

    if ((v5 & 0x2000000000000000) == 0)
    {
LABEL_21:
      if ((v5 & 0x1000000000000000) != 0)
      {
        v3 = _StringGuts._foreignConvertedToSmall()(*&v3, v5);
        v22 = v136;
      }

      else
      {
        if ((*&v3 & 0x1000000000000000) != 0)
        {
          v21 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = _StringObject.sharedUTF8.getter(*&v3, v5);
          v9 = v252;
        }

        closure #1 in _StringGuts._convertedToSmall()(v21, v9, &v273, v15);
        v3 = v273;
        v22 = v274;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v19 = _StringGuts.nativeUnusedCapacity.getter(*&v3, v5);
  if (v20)
  {
    goto LABEL_320;
  }

  if (v18 > 15)
  {
    goto LABEL_26;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
LABEL_32:
    v22 = v5;
LABEL_33:
    v6._object;
    v28._rawBits = 1;
    v29._rawBits = (v14 << 16) | 1;
    v30._rawBits = _StringGuts.validateScalarRange(_:)(v28, v29, v6._countAndFlagsBits, v6._object)._rawBits;
    if (v30._rawBits < 0x10000)
    {
      v30._rawBits |= 3;
    }

    if (v30._rawBits >> 16 || v31._rawBits >> 16 != v14)
    {
      countAndFlagsBits = specialized static String._copying(_:)(v30._rawBits, v31._rawBits, v6._countAndFlagsBits, v6._object);
      object = v40;
      v6._object;
    }

    else
    {
      object = v6._object;
    }

    v1 = v272;
    if ((object & 0x2000000000000000) != 0)
    {
      object;
    }

    else if ((object & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(*&countAndFlagsBits, object);
      v256 = v255;
      object;
      object = v256;
    }

    else
    {
      if ((*&countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v237 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v238 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v237 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, object);
      }

      closure #1 in _StringGuts._convertedToSmall()(v237, v238, &v273, v32);
      object;
      countAndFlagsBits = v273;
      object = v274;
    }

    v41 = specialized _SmallString.init(_:appending:)(*&v3, v22, *&countAndFlagsBits, object);
    if (v43)
    {
      goto LABEL_320;
    }

    v44 = v41;
    v45 = v42;
    v5;
    swift_bridgeObjectRelease_n(v6._object, 2);
    v275._countAndFlagsBits = v44;
    v275._object = v45;
    goto LABEL_68;
  }

  if (v19 < v16)
  {
    goto LABEL_21;
  }

LABEL_26:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v18, v16);
  if ((v6._object & 0x1000000000000000) != 0)
  {
LABEL_46:
    _StringGuts._foreignAppendInPlace(_:)(v6._countAndFlagsBits, v6._object, 0, v14);
LABEL_63:
    swift_bridgeObjectRelease_n(v6._object, 2);
    v1 = v272;
    goto LABEL_68;
  }

  if (!v11)
  {
    v273 = v6._countAndFlagsBits;
    v274 = v6._object & 0xFFFFFFFFFFFFFFLL;
    closure #1 in _StringGuts.append(_:)(&v273, (v6._object >> 56) & 0xF, &v275, (v6._object & 0x4000000000000000) != 0);
    goto LABEL_63;
  }

  v1 = v272;
  if ((v6._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    v23 = (v6._object & 0xFFFFFFFFFFFFFFFLL) + 32;
    v24 = v267;
    v25 = v267;
  }

  else
  {
    v246 = _StringObject.sharedUTF8.getter(v6._countAndFlagsBits, v6._object);
    if (v247 < v267)
    {
      goto LABEL_316;
    }

    v23 = v246;
    v25 = v247;
    v24 = v267;
  }

  v26 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v24, v23, v25);
  closure #1 in _StringGuts.append(_:)(v26, v27, &v275, v6._countAndFlagsBits < 0);
  swift_bridgeObjectRelease_n(v6._object, 2);
LABEL_68:
  v54 = v1 + 16;
  v55 = *(v1 + 16);
  v56 = v270;
  v57 = v271;
  (v55)(v270, v269, v271);
  v273 = 0;
  v274 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v56, &v273, v57, &type metadata for String, &protocol witness table for String);
  v59 = *(v1 + 8);
  v58 = v1 + 8;
  v267 = v59;
  v59(v56, v57);
  v61 = v273;
  v60 = v274;
  v63 = v275._countAndFlagsBits;
  v62 = v275._object;
  v64 = (v275._object >> 56) & 0xF;
  v65 = v275._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v275._object & 0x2000000000000000) != 0)
  {
    v66 = (v275._object >> 56) & 0xF;
  }

  else
  {
    v66 = v275._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v66 && (v275._countAndFlagsBits & ~v275._object & 0x2000000000000000) == 0)
  {
    v275._object;
    v275._countAndFlagsBits = v61;
    v275._object = v60;
    goto LABEL_150;
  }

  v266 = v55;
  v67 = (v274 & 0x2000000000000000) == 0;
  v55 = HIBYTE(v274) & 0xF;
  if ((v275._object & 0x2000000000000000) == 0)
  {
    v272 = v58;
    v68 = *&v273 & 0xFFFFFFFFFFFFLL;
    v69 = (HIBYTE(v274) & 0xF);
    if ((v274 & 0x2000000000000000) != 0)
    {
      goto LABEL_79;
    }

LABEL_78:
    v69 = v68;
    goto LABEL_79;
  }

  if ((v274 & 0x2000000000000000) == 0)
  {
    v272 = v58;
    v68 = *&v273 & 0xFFFFFFFFFFFFLL;
    v67 = 1;
    goto LABEL_78;
  }

  v97 = v64 + v55;
  if (v64 + v55 < 0x10)
  {
    if (v55)
    {
      v109 = 0;
      v110 = 0;
      v111 = 8 * v64;
      v112 = 8 * v55;
      v113 = v275._object;
      v55 = v266;
      do
      {
        v114 = v274 >> (v109 & 0x38);
        if (v110 < 8)
        {
          v114 = *&v273 >> v109;
        }

        v115 = (v114 << (v111 & 0x38)) | ((-255 << (v111 & 0x38)) - 1) & v113;
        v116 = (v114 << v111) | ((-255 << v111) - 1) & *&v63;
        if (v64 <= 7)
        {
          v63 = v116;
        }

        else
        {
          v113 = v115;
        }

        ++v64;
        v111 += 8;
        v109 += 8;
        ++v110;
      }

      while (v112 != v109);
    }

    else
    {
      v113 = v275._object;
      v55 = v266;
    }

    v275._object;
    v60;
    v135 = 0xA000000000000000;
    if (!(*&v63 & 0x8080808080808080 | v113 & 0x80808080808080))
    {
      v135 = 0xE000000000000000;
    }

    v275._countAndFlagsBits = v63;
    v275._object = (v135 & 0xFF00000000000000 | (v97 << 56) | v113 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_150;
  }

  v272 = v58;
  v67 = 0;
  v68 = *&v273 & 0xFFFFFFFFFFFFLL;
  v69 = (HIBYTE(v274) & 0xF);
LABEL_79:
  v264 = v67;
  v263 = v68;
  v265 = v54;
  if ((v274 & 0x1000000000000000) == 0)
  {
    v274;
    v71 = v69;
    if ((v62 & 0x1000000000000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_186:
    v142 = String.UTF8View._foreignCount()();
    v72 = v142 + v71;
    if (!__OFADD__(v142, v71))
    {
      goto LABEL_82;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  swift_bridgeObjectRetain_n(v274, 2);
  v138._rawBits = 1;
  v139._rawBits = (*&v69 << 16) | 1;
  v140._rawBits = _StringGuts.validateScalarRange(_:)(v138, v139, v61, v60)._rawBits;
  if (v140._rawBits < 0x10000)
  {
    v140._rawBits |= 3;
  }

  v71 = String.UTF8View.distance(from:to:)(v140, v141);
  v60;
  if ((v62 & 0x1000000000000000) != 0)
  {
    goto LABEL_186;
  }

LABEL_81:
  v17 = __OFADD__(v66, v71);
  v72 = v66 + v71;
  if (v17)
  {
    goto LABEL_188;
  }

LABEL_82:
  v73 = *&v63 & ~v62;
  if ((v73 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v62 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v72 > 15)
    {
      goto LABEL_93;
    }

    if ((v62 & 0x2000000000000000) == 0)
    {
LABEL_88:
      if ((v62 & 0x1000000000000000) != 0)
      {
        v63 = _StringGuts._foreignConvertedToSmall()(*&v63, v62);
        v77 = v137;
      }

      else
      {
        if ((*&v63 & 0x1000000000000000) != 0)
        {
          v76 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v76 = _StringObject.sharedUTF8.getter(*&v63, v62);
          v65 = v253;
        }

        closure #1 in _StringGuts._convertedToSmall()(v76, v65, &v273, v70);
        v63 = v273;
        v77 = v274;
      }

      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v74 = _StringGuts.nativeUnusedCapacity.getter(*&v63, v62);
  if (v75)
  {
    goto LABEL_320;
  }

  if (v72 > 15)
  {
    goto LABEL_93;
  }

  if ((v62 & 0x2000000000000000) != 0)
  {
LABEL_110:
    v77 = v62;
LABEL_111:
    v60;
    v91._rawBits = 1;
    v92._rawBits = (*&v69 << 16) | 1;
    v93._rawBits = _StringGuts.validateScalarRange(_:)(v91, v92, v61, v60)._rawBits;
    if (v93._rawBits < 0x10000)
    {
      v93._rawBits |= 3;
    }

    if (v93._rawBits >> 16 || v94._rawBits >> 16 != *&v69)
    {
      v61 = specialized static String._copying(_:)(v93._rawBits, v94._rawBits, v61, v60);
      v96 = v98;
      v60;
    }

    else
    {
      v96 = v60;
    }

    if ((v96 & 0x2000000000000000) != 0)
    {
      v96;
    }

    else if ((v96 & 0x1000000000000000) != 0)
    {
      v61 = _StringGuts._foreignConvertedToSmall()(v61, v96);
      v258 = v257;
      v96;
      v96 = v258;
    }

    else
    {
      if ((v61 & 0x1000000000000000) != 0)
      {
        v239 = ((v96 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v240 = v61 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v239 = _StringObject.sharedUTF8.getter(v61, v96);
      }

      closure #1 in _StringGuts._convertedToSmall()(v239, v240, &v273, v95);
      v96;
      v61 = v273;
      v96 = v274;
    }

    v99 = HIBYTE(v77) & 0xF;
    v100 = HIBYTE(v96) & 0xF;
    v101 = v100 + v99;
    if (v100 + v99 > 0xF)
    {
      goto LABEL_320;
    }

    v60;
    if (v100)
    {
      v102 = 0;
      v103 = 0;
      v104 = 8 * v99;
      do
      {
        v105 = v96 >> (v102 & 0x38);
        if (v103 < 8)
        {
          v105 = v61 >> v102;
        }

        v106 = (v105 << (v104 & 0x38)) | ((-255 << (v104 & 0x38)) - 1) & v77;
        v107 = (v105 << v104) | ((-255 << v104) - 1) & *&v63;
        if (v99 <= 7)
        {
          v63 = v107;
        }

        else
        {
          v77 = v106;
        }

        ++v99;
        v104 += 8;
        v102 += 8;
        ++v103;
      }

      while (8 * v100 != v102);
    }

    v62;
    v60;
    v108 = 0xA000000000000000;
    if (!(*&v63 & 0x8080808080808080 | v77 & 0x80808080808080))
    {
      v108 = 0xE000000000000000;
    }

    v275._countAndFlagsBits = v63;
    v275._object = (v108 & 0xFF00000000000000 | (v101 << 56) | v77 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_149;
  }

  if (v74 < v71)
  {
    goto LABEL_88;
  }

LABEL_93:
  v78 = (v73 & 0x2000000000000000);
  v79 = _StringGuts.nativeUnusedCapacity.getter(*&v63, v62);
  if ((v80 & 1) != 0 || v79 < v71)
  {
    if (v78)
    {
      swift_isUniquelyReferenced_nonNull_native(v62 & 0xFFFFFFFFFFFFFFFLL);
    }

    v81 = _StringGuts.nativeCapacity.getter(*&v63, v62);
    if (v83)
    {
      v84 = 0;
    }

    else
    {
      v84 = v81;
    }

    if (v84 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_306:
      if ((v72 & 0x1000000000000000) != 0)
      {
        v78 = _StringGuts._foreignConvertedToSmall()(*&v78, v72);
        v262 = v261;
        v72;
        v72 = v262;
      }

      else
      {
        if ((*&v78 & 0x1000000000000000) != 0)
        {
          v243 = ((v72 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v244 = *&v78 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v243 = _StringObject.sharedUTF8.getter(*&v78, v72);
        }

        closure #1 in _StringGuts._convertedToSmall()(v243, v244, &v273, v82);
        v72;
        v78 = v273;
        v72 = v274;
      }

      goto LABEL_175;
    }

    v85 = 2 * v84;
    if (v85 > v72)
    {
      v72 = v85;
    }

    goto LABEL_103;
  }

  if (!*&v78 || !swift_isUniquelyReferenced_nonNull_native(v62 & 0xFFFFFFFFFFFFFFFLL))
  {
LABEL_103:
    _StringGuts.grow(_:)(v72);
  }

  if ((v60 & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(v61, v60, 0, *&v69);
LABEL_148:
    swift_bridgeObjectRelease_n(v60, 2);
LABEL_149:
    v55 = v266;
    goto LABEL_150;
  }

  if (!v264)
  {
    v273 = v61;
    v274 = v60 & 0xFFFFFFFFFFFFFFLL;
    closure #1 in _StringGuts.append(_:)(&v273, HIBYTE(v60) & 0xF, &v275, (v60 & 0x4000000000000000) != 0);
    goto LABEL_148;
  }

  if ((v61 & 0x1000000000000000) != 0)
  {
    v86 = (v60 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v87 = v263;
    v88 = v263;
    v55 = v266;
  }

  else
  {
    v248 = _StringObject.sharedUTF8.getter(v61, v60);
    if (v249 < v263)
    {
      goto LABEL_316;
    }

    v86 = v248;
    v88 = v249;
    v55 = v266;
    v87 = v263;
  }

  v89 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v87, v86, v88);
  closure #1 in _StringGuts.append(_:)(v89, v90, &v275, v61 < 0);
  swift_bridgeObjectRelease_n(v60, 2);
LABEL_150:
  v60 = v275._countAndFlagsBits;
  v62 = v275._object;
  v117 = (v275._object >> 56) & 0xF;
  v72 = v275._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v275._object & 0x2000000000000000) != 0)
  {
    v118 = (v275._object >> 56) & 0xF;
  }

  else
  {
    v118 = v275._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v118 && (v275._countAndFlagsBits & ~v275._object & 0x2000000000000000) == 0)
  {
    v275._object;
    v60 = 0;
    v125 = 0xE000000000000000;
LABEL_192:
    v272 = v125;
    goto LABEL_193;
  }

  if ((v275._object & 0x2000000000000000) != 0)
  {
    v275._object;
    0xE000000000000000;
    v124 = 0xA000000000000000;
    if (!(v62 & 0x80808080808080 | v60 & 0x8080808080808080))
    {
      v124 = 0xE000000000000000;
    }

    v125 = v124 & 0xFF00000000000000 | (v117 << 56) | v62 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_192;
  }

  0xE000000000000000;
  v120 = v60 & 0xFFFFFFFFFFFFLL;
  if ((v62 & 0x1000000000000000) == 0)
  {
    if ((v60 & 0x2000000000000000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_158;
  }

LABEL_189:
  v120 = String.UTF8View._foreignCount()();
  if ((v60 & 0x2000000000000000) == 0)
  {
LABEL_190:
    if (v120 <= 15)
    {
      goto LABEL_162;
    }

    goto LABEL_191;
  }

LABEL_158:
  if (!swift_isUniquelyReferenced_nonNull_native(v62 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_190;
  }

  v121 = _StringGuts.nativeUnusedCapacity.getter(v60, v62);
  if (v122)
  {
    goto LABEL_320;
  }

  if (v120 > 15 || (v121 & 0x8000000000000000) == 0)
  {
LABEL_191:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v120, 0);
    v273 = 0;
    v274 = 0;
    closure #1 in _StringGuts.append(_:)(&v273, 0, &v275, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v60 = v275._countAndFlagsBits;
    v125 = v275._object;
    goto LABEL_192;
  }

LABEL_162:
  if ((v62 & 0x1000000000000000) != 0)
  {
    v69 = _StringGuts._foreignConvertedToSmall()(v60, v62);
    v65 = v126;
  }

  else
  {
    if ((v60 & 0x1000000000000000) != 0)
    {
      v123 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v123 = _StringObject.sharedUTF8.getter(v60, v62);
      v72 = v245;
    }

    closure #1 in _StringGuts._convertedToSmall()(v123, v72, &v273, v119);
    v69 = v273;
    v65 = v274;
  }

  0xE000000000000000;
  v127._rawBits = 1;
  v128._rawBits = 1;
  v129._rawBits = _StringGuts.validateScalarRange(_:)(v127, v128, 0, 0xE000000000000000)._rawBits;
  if (v129._rawBits < 0x10000)
  {
    v129._rawBits |= 3;
  }

  v78 = Substring.description.getter(v129._rawBits, v130._rawBits, 0, 0xE000000000000000);
  v72 = v131;
  0xE000000000000000;
  if ((v72 & 0x2000000000000000) == 0)
  {
    goto LABEL_306;
  }

  v72;
LABEL_175:
  v132 = specialized _SmallString.init(_:appending:)(*&v69, v65, *&v78, v72);
  if (v134)
  {
    goto LABEL_320;
  }

  v60 = v132;
  v272 = v133;
  v62;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_193:
  v143 = _StringGuts.init(_initialCapacity:)(6);
  v153 = v143;
  v275._countAndFlagsBits = v143;
  v275._object = v144;
  v154 = HIBYTE(v144) & 0xF;
  v155 = v143 & 0xFFFFFFFFFFFFLL;
  if ((v144 & 0x2000000000000000) != 0)
  {
    v155 = HIBYTE(v144) & 0xF;
  }

  if (v155 || (v143 & ~v144 & 0x2000000000000000) != 0)
  {
    if ((v144 & 0x2000000000000000) == 0 || v154 > 0xC)
    {
      _StringGuts.append(_:)(3026478, 0xE300000000000000, 0, 3, v145, v146, v147, v148, v149, v150, v151, v152);
      0xE300000000000000;
      v153 = v275._countAndFlagsBits;
      v162 = v275._object;
      goto LABEL_211;
    }

    v156 = 8 * HIBYTE(v144);
    v157 = (-255 << (v156 & 0x38)) - 1;
    v158 = 46 << (v156 & 0x38);
    v159 = v154 + 1;
    if (v154 >= 8)
    {
      v161 = v157 & v144 | v158;
      v160 = 8 * (v159 & 7);
    }

    else
    {
      v153 = (v157 & v143 | v158);
      if (v154 != 7)
      {
        v153 = (((-255 << (8 * (v159 & 7u))) - 1) & *&v153 | (46 << (8 * (v159 & 7u))));
        if (v154 < 6)
        {
          v153 = (((-255 << ((v156 + 16) & 0x38)) - 1) & *&v153 | (46 << ((v156 + 16) & 0x38)));
          v165 = v144;
          goto LABEL_206;
        }

        v164 = 0;
        v163 = v144;
LABEL_205:
        v165 = ((-255 << v164) - 1) & v163 | (46 << v164);
LABEL_206:
        v144;
        0xE300000000000000;
        v166 = 0xA000000000000000;
        if (!(*&v153 & 0x8080808080808080 | v165 & 0x80808080808080))
        {
          v166 = 0xE000000000000000;
        }

        v162 = (v166 & 0xFF00000000000000 | (v154 << 56) | v165 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
        goto LABEL_210;
      }

      v160 = 0;
      v161 = v144;
    }

    v163 = ((-255 << v160) - 1) & v161 | (46 << v160);
    v164 = (v156 + 16) & 0x38;
    goto LABEL_205;
  }

  v153 = 3026478;
  v144;
  v162 = 0xE300000000000000;
LABEL_210:
  v275._countAndFlagsBits = v153;
  v275._object = v162;
LABEL_211:
  v168 = v270;
  v167 = v271;
  (v55)(v270, v269 + *(v268 + 36), v271);
  v273 = 0;
  v274 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v168, &v273, v167, &type metadata for String, &protocol witness table for String);
  v267(v168, v167);
  v170 = v273;
  v169 = v274;
  v171 = HIBYTE(v162) & 0xF;
  v172 = *&v153 & 0xFFFFFFFFFFFFLL;
  if ((v162 & 0x2000000000000000) != 0)
  {
    v173 = HIBYTE(v162) & 0xF;
  }

  else
  {
    v173 = *&v153 & 0xFFFFFFFFFFFFLL;
  }

  if (!v173 && (*&v153 & ~v162 & 0x2000000000000000) == 0)
  {
    v162;
    v275._countAndFlagsBits = v170;
    v275._object = v169;
    goto LABEL_282;
  }

  v271 = v60;
  v174 = (v274 & 0x2000000000000000) == 0;
  v175 = HIBYTE(v274) & 0xF;
  if ((v162 & 0x2000000000000000) == 0)
  {
    v176 = *&v273 & 0xFFFFFFFFFFFFLL;
    v177 = HIBYTE(v274) & 0xF;
    if ((v274 & 0x2000000000000000) != 0)
    {
LABEL_222:
      v270 = v176;
      if ((v274 & 0x1000000000000000) == 0)
      {
        goto LABEL_223;
      }

      goto LABEL_251;
    }

LABEL_221:
    v177 = v176;
    goto LABEL_222;
  }

  if ((v274 & 0x2000000000000000) == 0)
  {
    v176 = *&v273 & 0xFFFFFFFFFFFFLL;
    v174 = 1;
    goto LABEL_221;
  }

  v196 = v171 + v175;
  if (v171 + v175 >= 0x10)
  {
    v174 = 0;
    v177 = HIBYTE(v274) & 0xF;
    v270 = (*&v273 & 0xFFFFFFFFFFFFLL);
    if ((v274 & 0x1000000000000000) == 0)
    {
LABEL_223:
      v274;
      v179 = v177;
      if ((v162 & 0x1000000000000000) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_254;
    }

LABEL_251:
    swift_bridgeObjectRetain_n(v274, 2);
    v197._rawBits = 1;
    v198._rawBits = (v177 << 16) | 1;
    v199._rawBits = _StringGuts.validateScalarRange(_:)(v197, v198, v170, v169)._rawBits;
    if (v199._rawBits < 0x10000)
    {
      v199._rawBits |= 3;
    }

    v179 = String.UTF8View.distance(from:to:)(v199, v200);
    v169;
    if ((v162 & 0x1000000000000000) == 0)
    {
LABEL_224:
      v17 = __OFADD__(v173, v179);
      v180 = v173 + v179;
      if (!v17)
      {
LABEL_225:
        if ((*&v153 & ~v162 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v162 & 0xFFFFFFFFFFFFFFFLL))
        {
          v181 = _StringGuts.nativeUnusedCapacity.getter(*&v153, v162);
          if (v182)
          {
            goto LABEL_320;
          }

          if (v180 > 15)
          {
            goto LABEL_236;
          }

          if ((v162 & 0x2000000000000000) == 0)
          {
            if (v181 < v179)
            {
LABEL_231:
              if ((v162 & 0x1000000000000000) == 0)
              {
                v60 = v271;
                if ((*&v153 & 0x1000000000000000) != 0)
                {
                  v183 = ((v162 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v183 = _StringObject.sharedUTF8.getter(*&v153, v162);
                  v172 = v254;
                }

                closure #1 in _StringGuts._convertedToSmall()(v183, v172, &v273, v178);
                v153 = v273;
                v184 = v274;
LABEL_244:
                v169;
                v190._rawBits = 1;
                v191._rawBits = (v177 << 16) | 1;
                v192._rawBits = _StringGuts.validateScalarRange(_:)(v190, v191, v170, v169)._rawBits;
                if (v192._rawBits < 0x10000)
                {
                  v192._rawBits |= 3;
                }

                if (v192._rawBits >> 16 || v193._rawBits >> 16 != v177)
                {
                  v170 = specialized static String._copying(_:)(v192._rawBits, v193._rawBits, v170, v169);
                  v195 = v202;
                  v169;
                }

                else
                {
                  v195 = v169;
                }

                if ((v195 & 0x2000000000000000) != 0)
                {
                  v195;
                }

                else if ((v195 & 0x1000000000000000) != 0)
                {
                  v170 = _StringGuts._foreignConvertedToSmall()(v170, v195);
                  v260 = v259;
                  v195;
                  v195 = v260;
                  v60 = v271;
                }

                else
                {
                  if ((v170 & 0x1000000000000000) != 0)
                  {
                    v241 = ((v195 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v242 = v170 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v241 = _StringObject.sharedUTF8.getter(v170, v195);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v241, v242, &v273, v194);
                  v195;
                  v170 = v273;
                  v195 = v274;
                }

                v203 = specialized _SmallString.init(_:appending:)(*&v153, v184, v170, v195);
                if ((v205 & 1) == 0)
                {
                  v206 = v203;
                  v207 = v204;
                  v162;
                  swift_bridgeObjectRelease_n(v169, 2);
                  v275._countAndFlagsBits = v206;
                  v275._object = v207;
                  goto LABEL_282;
                }

LABEL_320:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v153 = _StringGuts._foreignConvertedToSmall()(*&v153, v162);
              v184 = v236;
LABEL_243:
              v60 = v271;
              goto LABEL_244;
            }

LABEL_236:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v180, v179);
            if ((v169 & 0x1000000000000000) == 0)
            {
              if (v174)
              {
                if ((v170 & 0x1000000000000000) != 0)
                {
                  v185 = (v169 & 0xFFFFFFFFFFFFFFFLL) + 32;
                  v186 = v270;
                  v60 = v271;
                  v187 = v270;
LABEL_240:
                  v188 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v186, v185, v187);
                  closure #1 in _StringGuts.append(_:)(v188, v189, &v275, v170 < 0);
                  swift_bridgeObjectRelease_n(v169, 2);
                  goto LABEL_282;
                }

                v250 = _StringObject.sharedUTF8.getter(v170, v169);
                if (v251 >= v270)
                {
                  v185 = v250;
                  v187 = v251;
                  v186 = v270;
                  v60 = v271;
                  goto LABEL_240;
                }

LABEL_316:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v273 = v170;
              v274 = v169 & 0xFFFFFFFFFFFFFFLL;
              closure #1 in _StringGuts.append(_:)(&v273, HIBYTE(v169) & 0xF, &v275, (v169 & 0x4000000000000000) != 0);
              goto LABEL_276;
            }

LABEL_257:
            _StringGuts._foreignAppendInPlace(_:)(v170, v169, 0, v177);
LABEL_276:
            swift_bridgeObjectRelease_n(v169, 2);
            v60 = v271;
            goto LABEL_282;
          }
        }

        else
        {
          if (v180 > 15)
          {
            goto LABEL_236;
          }

          if ((v162 & 0x2000000000000000) == 0)
          {
            goto LABEL_231;
          }
        }

        v184 = v162;
        goto LABEL_243;
      }

LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

LABEL_254:
    v201 = String.UTF8View._foreignCount()();
    v180 = v201 + v179;
    if (!__OFADD__(v201, v179))
    {
      goto LABEL_225;
    }

    goto LABEL_256;
  }

  if (v175)
  {
    v208 = 0;
    v209 = 0;
    v210 = 8 * v171;
    v211 = 8 * v175;
    v212 = v162;
    v60 = v271;
    do
    {
      v213 = v274 >> (v208 & 0x38);
      if (v209 < 8)
      {
        v213 = *&v273 >> v208;
      }

      v214 = (v213 << (v210 & 0x38)) | ((-255 << (v210 & 0x38)) - 1) & v212;
      v215 = (v213 << v210) | ((-255 << v210) - 1) & *&v153;
      if (v171 <= 7)
      {
        v153 = v215;
      }

      else
      {
        v212 = v214;
      }

      ++v171;
      v210 += 8;
      v208 += 8;
      ++v209;
    }

    while (v211 != v208);
  }

  else
  {
    v212 = v162;
    v60 = v271;
  }

  v162;
  v169;
  v216 = 0xA000000000000000;
  if (!(*&v153 & 0x8080808080808080 | v212 & 0x80808080808080))
  {
    v216 = 0xE000000000000000;
  }

  v275._countAndFlagsBits = v153;
  v275._object = (v216 & 0xFF00000000000000 | (v196 << 56) | v212 & 0xFFFFFFFFFFFFFFLL);
LABEL_282:
  v217 = v275._object;
  v218 = (v275._object >> 56) & 0xF;
  if ((v275._object & 0x2000000000000000) == 0)
  {
    v218 = v275._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v218 || (v275._countAndFlagsBits & ~v275._object & 0x2000000000000000) != 0)
  {
    if ((v275._object & 0x2000000000000000) != 0 && (v219 = specialized _SmallString.init(_:appending:)(v275._countAndFlagsBits, v275._object, 0x29uLL, 0xE100000000000000), (v221 & 1) == 0))
    {
      v232 = v219;
      v231 = v220;
      v217;
      0xE100000000000000;
      v230 = v232;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v222, v223, v224, v225, v226, v227, v228, v229);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v230 = v275._countAndFlagsBits;
      v231 = v275._object;
    }
  }

  else
  {
    v275._object;
    v231 = 0xE100000000000000;
    v230 = 41;
  }

  v233 = v272;
  v234 = specialized static String.+ infix(_:_:)(v60, v272, v230, v231);
  v233;
  v231;
  return v234;
}