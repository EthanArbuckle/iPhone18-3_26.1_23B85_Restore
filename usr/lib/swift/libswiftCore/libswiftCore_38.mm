unint64_t *specialized LazyMapSequence<>.formIndex(after:)(unint64_t *result)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  rawBits = *result;
  v7 = (v4 & 0x1000000000000000) == 0 || (v5 & 0x800000000000000) != 0;
  v8 = *result & 0xC;
  v9 = 4 << v7;
  v10 = v3 >> 14;
  if ((rawBits & 2) != 0 && v8 != v9)
  {
    if (rawBits >> 14 >= v2 >> 14 && rawBits >> 14 < v10)
    {
      goto LABEL_26;
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 == v9)
  {
    v37 = result;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    result = v37;
  }

  v12 = v2 >> 14;
  if (rawBits >> 14 < v2 >> 14 || rawBits >> 14 >= v10)
  {
    goto LABEL_19;
  }

  if (rawBits)
  {
    if ((v2 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v39 = result;
    v30 = rawBits;
    v31 = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
    v12 = v2 >> 14;
    result = v39;
    rawBits = v30 & 0xC | v31 & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v2 & 2) != 0)
    {
LABEL_22:
      if ((rawBits & 2) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  if (rawBits >> 14 != v12 && rawBits >> 14 != v10)
  {
    v14 = result;
    rawBits = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(rawBits, v2, v3, v5, v4);
    result = v14;
  }

LABEL_26:
  v15 = (rawBits >> 8) & 0x3F;
  v16 = rawBits >> 16;
  v17 = v3 >> 16;
  if (v15)
  {
    goto LABEL_41;
  }

  if (v16 == v17)
  {
    v15 = 0;
    goto LABEL_41;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v43 = v5;
      v44 = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v16 + 1 == (HIBYTE(v4) & 0xF))
      {
LABEL_40:
        v15 = 1;
        goto LABEL_41;
      }

      v18 = &v43;
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v18 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v19 = v5 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = result;
        v35 = v16;
        v36 = _StringObject.sharedUTF8.getter(v5, v4);
        v17 = v3 >> 16;
        v16 = v35;
        v18 = v36;
        result = v42;
      }

      if (v16 + 1 == v19)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
LABEL_51:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v20 = *(v18 + v16);
    if (v20 != 2573 && (v20 & 0x80808080) == 0)
    {
      goto LABEL_40;
    }
  }

  v40 = result;
  v32 = v16;
  v33 = v17;
  v34 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v16);
  v17 = v33;
  v16 = v32;
  v15 = v34;
  result = v40;
LABEL_41:
  v21 = v15 + v16;
  if (v17 < v21)
  {
    v21 = v17;
  }

  v22 = v21 << 16;
  v23 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0xFFFFFFFFFFFFLL) == v17)
  {
    v24 = 0;
LABEL_60:
    v22 |= v24 << 8;
    goto LABEL_61;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v43 = v5;
      v44 = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v23 + 1 == (HIBYTE(v4) & 0xF))
      {
        goto LABEL_59;
      }

      v25 = &v43;
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v25 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v26 = v5 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = result;
        v25 = _StringObject.sharedUTF8.getter(v5, v4);
        result = v41;
      }

      if (v23 + 1 == v26)
      {
        goto LABEL_59;
      }

      if (!v25)
      {
        goto LABEL_51;
      }
    }

    v27 = *(v25 + v23);
    if (v27 == 2573 || (v27 & 0x80808080) != 0)
    {
      goto LABEL_64;
    }

LABEL_59:
    v24 = 1;
    goto LABEL_60;
  }

LABEL_64:
  v38 = result;
  v24 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v23);
  result = v38;
  if (v24 <= 63)
  {
    goto LABEL_60;
  }

LABEL_61:
  v29 = 8;
  if (v7)
  {
    v29 = 4;
  }

  *result = v2 & 2 | v29 | v22 | 1;
  return result;
}

uint64_t specialized LazyMapSequence<>.subscript.getter(Swift::String::Index a1, uint64_t a2, unint64_t a3, void (*a4)(void *__return_ptr, int *))
{
  v7._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  if ((a3 & 0x1000000000000000) != 0)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v7._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    v9 = v7._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v15[0] = a2;
      v15[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v10 = v15;
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v13 = a3;
      v14 = v7._rawBits >> 16;
      v10 = _StringObject.sharedUTF8.getter(a2, v13);
      v9 = v14;
    }

    value = _decodeScalar(_:startingAt:)(v10, v8._rawBits, v9);
  }

  v16 = value;
  a4(v15, &v16);
  return LODWORD(v15[0]);
}

uint64_t specialized LazyMapSequence<>.subscript.getter(Swift::String::Index a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v7._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  v8 = (v7._rawBits >> 8) & 0x3F;
  v9 = v7._rawBits >> 16;
  if (v8)
  {
    goto LABEL_24;
  }

  v10 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7._rawBits >> 14 != 4 * v11)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
      v36 = a2;
      v37 = a3 & 0xFFFFFFFFFFFFFFLL;
      if (v9 + 1 != (HIBYTE(a3) & 0xF))
      {
        v15 = *(&v36 + v9);
        if (v15 == 2573 || (v15 & 0x80808080) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      if (v9 + 1 != v10)
      {
        if (!v13)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v14 = *&v13[v9];
        if (v14 == 2573 || (v14 & 0x80808080) != 0)
        {
LABEL_38:
          v8 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v9);
          v12 = v8 + v9;
          if ((a3 & 0x1000000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_39:
          v34 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v9, v12);
          object = v34._object;
          countAndFlagsBits = v34._countAndFlagsBits;
          goto LABEL_34;
        }
      }
    }

    v8 = 1;
LABEL_24:
    v12 = v8 + v9;
    if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v8 = 0;
  v12 = v7._rawBits >> 16;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_25:
  if (v12 < v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v36 = a2;
    v37 = a3 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(a3) & 0xF) >= v12 && (v8 & 0x8000000000000000) == 0)
    {
      v26 = _allASCII(_:)((&v36 + v9), v8);
      v24 = &v36 + v9;
      v22 = v26;
      v25 = v8;
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    v31 = a2;
    v32 = v12;
    v17 = _StringObject.sharedUTF8.getter(v31, a3);
    v18 = v33;
    v12 = v32;
    if (v18 >= v32)
    {
      goto LABEL_29;
    }

LABEL_37:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v18 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0xFFFFFFFFFFFFLL) < v12)
  {
    goto LABEL_37;
  }

LABEL_29:
  v19 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v9, v12, v17, v18);
  v21 = v20;
  v22 = _allASCII(_:)(v19, v20);
  v24 = v19;
  v25 = v21;
LABEL_33:
  countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v24, v25, v22, v23);
LABEL_34:
  v29 = object;
  v35[0] = countAndFlagsBits;
  v35[1] = object;
  a4(&v36, v35);
  v29;
  return v36;
}

uint64_t specialized LazyMapSequence<>.subscript.getter(Swift::UInt64 rawBits)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (v5 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0;
  v8 = rawBits & 0xC;
  v9 = 4 << v7;
  v10 = v3 >> 14;
  if ((rawBits & 1) != 0 && v8 != v9)
  {
    if (rawBits >> 14 >= v2 >> 14 && rawBits >> 14 < v10)
    {
      goto LABEL_22;
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 == v9)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
  }

  if (rawBits >> 14 < v2 >> 14 || rawBits >> 14 >= v10)
  {
    goto LABEL_19;
  }

  if ((rawBits & 1) == 0)
  {
    rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
  }

LABEL_22:
  v13 = (rawBits >> 8) & 0x3F;
  v14 = rawBits >> 16;
  v15 = v3 >> 16;
  if (v13)
  {
    goto LABEL_25;
  }

  if (v14 == v15)
  {
    v13 = 0;
    goto LABEL_25;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v44 = v4;
    v45 = v5 & 0xFFFFFFFFFFFFFFLL;
    v35 = v14 + 1;
    if (v14 + 1 != (HIBYTE(v5) & 0xF))
    {
      v36 = *(&v44 + v14);
      goto LABEL_48;
    }

LABEL_50:
    if (v15 >= v35)
    {
      v17 = v35;
    }

    else
    {
      v17 = v15;
    }

    if (v17 >= v14)
    {
      goto LABEL_30;
    }

LABEL_54:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v33 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v34 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = _StringObject.sharedUTF8.getter(v4, v5);
    v15 = v3 >> 16;
  }

  v35 = v14 + 1;
  if (v14 + 1 == v34)
  {
    goto LABEL_50;
  }

  if (!v33)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = *&v33[v14];
LABEL_48:
  if (v36 != 2573 && (v36 & 0x80808080) == 0)
  {
    goto LABEL_50;
  }

LABEL_58:
  v41 = v15;
  v42 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v14);
  v15 = v41;
  v13 = v42;
LABEL_25:
  v16 = v13 + v14;
  if (v15 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v37 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v14, v17);
    object = v37._object;
    countAndFlagsBits = v37._countAndFlagsBits;
    goto LABEL_38;
  }

  if (v17 < v14)
  {
    goto LABEL_54;
  }

LABEL_30:
  if ((v5 & 0x2000000000000000) != 0)
  {
    v44 = v4;
    v45 = v5 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v5) & 0xF) >= v17)
    {
      v27 = v17 - v14;
      if (v17 - v14 >= 0)
      {
        v28 = _allASCII(_:)((&v44 + v14), v17 - v14);
        v25 = &v44 + v14;
        v23 = v28;
        v26 = v27;
        goto LABEL_37;
      }
    }

    goto LABEL_57;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    v38 = v4;
    v39 = v17;
    v18 = _StringObject.sharedUTF8.getter(v38, v5);
    v19 = v40;
    v17 = v39;
    if (v19 >= v39)
    {
      goto LABEL_33;
    }

LABEL_57:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v19 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0xFFFFFFFFFFFFLL) < v17)
  {
    goto LABEL_57;
  }

LABEL_33:
  v20 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v14, v17, v18, v19);
  v22 = v21;
  v23 = _allASCII(_:)(v20, v21);
  v25 = v20;
  v26 = v22;
LABEL_37:
  countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v25, v26, v23, v24);
LABEL_38:
  v31 = object;
  v43[0] = countAndFlagsBits;
  v43[1] = object;
  v6(&v44, v43);
  v31;
  return v44;
}

uint64_t LazyMapSequence<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, *(a3 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-v11];
  v13 = *(v3 + *(a2 + 44));
  v14 = (*(a3 + 80))(v16, a1, v7, a3);
  (*(v10 + 16))(v12);
  v14(v16, 0);
  v13(v12);
  return (*(v10 + 8))(v12, v9);
}

atomic_ullong *LazyMapSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  (*(a3 + 88))(a1, v8);
  v9 = (v4 + *(a2 + 44));
  v11 = *v9;
  v10 = v9[1];
  swift_getAssociatedTypeWitness(255, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v13 = v12;
  v14 = *(a2 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v16 = (a4 + *(type metadata accessor for LazyMapSequence(0, v13, v14, *(AssociatedConformanceWitness + 8)) + 44));
  *v16 = v11;
  v16[1] = v10;

  return v10;
}

unint64_t specialized LazyMapSequence<>.distance(from:to:)(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3)
{
  rawBits = a1._rawBits;
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = (v8 & 0x1000000000000000) == 0 || (v7 & 0x800000000000000) != 0;
  v10 = a1._rawBits & 0xC;
  v11 = 4 << v9;
  v12 = v5 >> 14;
  if ((a1._rawBits & 2) == 0 || v10 == v11)
  {
    if (v10 == v11)
    {
      goto LABEL_97;
    }

    goto LABEL_12;
  }

  if (a1._rawBits >> 14 < v6 >> 14 || v12 < a1._rawBits >> 14)
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  while (1)
  {
    v18 = a2._rawBits & 0xC;
    if ((a2._rawBits & 2) == 0 || v18 == v11)
    {
      if (v18 == v11)
      {
        a2._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
      }

      if (a2._rawBits >> 14 < v6 >> 14 || v12 < a2._rawBits >> 14)
      {
        goto LABEL_16;
      }

      if (a2._rawBits)
      {
        if ((v6 & 2) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        a2._rawBits = a2._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(a2)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
        if ((v6 & 2) != 0)
        {
LABEL_34:
          if ((a2._rawBits & 2) != 0)
          {
            goto LABEL_38;
          }
        }
      }

      if (a2._rawBits >> 14 != v6 >> 14 && a2._rawBits >> 14 != v12)
      {
        a2._rawBits = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(a2._rawBits, v6, v5, v7, v8);
      }

      goto LABEL_38;
    }

    if (a2._rawBits >> 14 < v6 >> 14 || v12 < a2._rawBits >> 14)
    {
      goto LABEL_16;
    }

LABEL_38:
    v19 = rawBits >> 14;
    v12 = a2._rawBits >> 14;
    if (rawBits >> 14 >= a2._rawBits >> 14)
    {
      break;
    }

    v6 = 0;
    v11 = v5 >> 16;
    v20 = HIBYTE(v8) & 0xF;
    v21 = v8 & 0xFFFFFFFFFFFFFFLL;
    v22 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if (((v8 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v23 = 8;
    }

    else
    {
      v23 = 4;
    }

    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v24 = (rawBits >> 8) & 0x3F;
      v25 = rawBits >> 16;
      if (v24)
      {
        goto LABEL_58;
      }

      if (v25 == v11)
      {
        v24 = 0;
        goto LABEL_58;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v60 = v7;
        v61 = v21;
        if (v25 + 1 == v20)
        {
          goto LABEL_57;
        }

        v27 = *(&v60 + v25);
        if (v27 == 2573)
        {
          goto LABEL_82;
        }

LABEL_56:
        if ((v27 & 0x80808080) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_82;
      }

      v26 = v22;
      a2._rawBits = v7 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x1000000000000000) == 0)
      {
        v55 = v22;
        v59 = v20;
        v39 = v21;
        v26 = _StringObject.sharedUTF8.getter(v7, v8);
        v22 = v55;
        v20 = v59;
        v21 = v39;
      }

      if (v25 + 1 == a2._rawBits)
      {
LABEL_57:
        v24 = 1;
        goto LABEL_58;
      }

      if (!v26)
      {
        goto LABEL_102;
      }

      v27 = *&v26[v25];
      if (v27 != 2573)
      {
        goto LABEL_56;
      }

LABEL_82:
      v53 = v22;
      v57 = v20;
      v36 = v21;
      v24 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v25);
      v22 = v53;
      v20 = v57;
      v21 = v36;
LABEL_58:
      v28 = v24 + v25;
      if (v11 < v24 + v25)
      {
        v28 = v11;
      }

      v29 = v28 << 16;
      v30 = v28 & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0xFFFFFFFFFFFFLL) != v11)
      {
        if ((v8 & 0x1000000000000000) != 0)
        {
          goto LABEL_80;
        }

        if ((v8 & 0x2000000000000000) != 0)
        {
          v60 = v7;
          v61 = v21;
          if (v30 + 1 != v20)
          {
            v33 = *(&v60 + v30);
LABEL_71:
            if (v33 == 2573 || (v33 & 0x8080) != 0)
            {
LABEL_80:
              v52 = v22;
              v56 = v20;
              v35 = v21;
              v31 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v30);
              v22 = v52;
              v20 = v56;
              v21 = v35;
              if (v31 > 63)
              {
                goto LABEL_78;
              }

              goto LABEL_77;
            }
          }
        }

        else
        {
          v32 = v22;
          a2._rawBits = v7 & 0xFFFFFFFFFFFFLL;
          if ((v7 & 0x1000000000000000) == 0)
          {
            v51 = v30;
            v54 = v22;
            v58 = v20;
            v37 = v21;
            v38 = _StringObject.sharedUTF8.getter(v7, v8);
            v22 = v54;
            v20 = v58;
            v21 = v37;
            v32 = v38;
            v30 = v51;
          }

          if (v30 + 1 != a2._rawBits)
          {
            if (!v32)
            {
LABEL_102:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v33 = *&v32[v30];
            goto LABEL_71;
          }
        }

        v31 = 1;
        goto LABEL_77;
      }

      v31 = 0;
LABEL_77:
      v29 |= v31 << 8;
LABEL_78:
      rawBits = v23 | v29;
      ++v6;
      if (v12 <= v29 >> 14)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    v46._rawBits = rawBits;
    v47 = a2._rawBits;
    v48._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v46)._rawBits;
    a2._rawBits = v47;
    rawBits = v48._rawBits;
LABEL_12:
    if (rawBits >> 14 < v6 >> 14 || v12 < rawBits >> 14)
    {
      goto LABEL_16;
    }

    if (rawBits)
    {
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (rawBits >> 14 != v6 >> 14 && rawBits >> 14 != v12)
      {
        v15 = rawBits;
        v16 = a2._rawBits;
        v17 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v15, v6, v5, v7, v8);
        a2._rawBits = v16;
        rawBits = v17;
      }
    }

    else
    {
      v49 = a2._rawBits;
      v50._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      a2._rawBits = v49;
      rawBits = rawBits & 0xC | v50._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      if ((rawBits & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  if (v12 >= v19)
  {
    return 0;
  }

  v5 = 0;
  v11 = v6 >> 14;
  v6 >>= 16;
  if (((v8 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
  {
    v40 = 8;
  }

  else
  {
    v40 = 4;
  }

  do
  {
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_96;
    }

    if (v19 == v11)
    {
      v42 = 0;
    }

    else
    {
      v41 = _StringGuts._opaqueCharacterStride(endingAt:in:)(rawBits >> 16, v6, a3, v7, v8);
      rawBits -= v41 << 16;
      v42 = v41 << 8;
      if (v41 > 63)
      {
        v42 = 0;
      }
    }

    v43 = rawBits & 0xFFFFFFFFFFFF0000 | v42;
    rawBits = v40 | v43;
    v19 = v43 >> 14;
  }

  while (v12 < v19);
  return v5;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0xB536uLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazyMapSequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazyMapSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x40, 0x5C89uLL);
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x5C89uLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  v16 = v15;
  v9[4] = v15;
  v17 = *(a3 + 24);
  v9[5] = v17;
  v18 = *(v17 - 8);
  v9[6] = v18;
  v19 = *(v18 + 64);
  if (swift_coroFrameAlloc)
  {
    v20 = swift_coroFrameAlloc(v19, 0x5C89uLL);
  }

  else
  {
    v20 = malloc(v19);
  }

  v9[7] = v20;
  v21 = *(v4 + *(a3 + 44));
  v22 = (*(a4 + 80))(v9, a2, v10, a4);
  (*(v13 + 16))(v16);
  v22(v9, 0);
  v21(v16);
  (*(v13 + 8))(v16, v12);
  return LazyMapSequence<>.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> LazyDropWhileSequence<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(255, *(a2 - 8), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

atomic_ullong *LazyMapSequence.map<A>(_:)@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v24 = a1;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  (*(*(v15 - 8) + 16))(a5, v6, v15);
  (*(v11 + 16))(v13, v6, a3);
  v16 = *(v11 + 80);
  v17 = (v16 + 64) & ~v16;
  v18 = swift_allocObject(&unk_1EEEADF20, (v17 + v12), v16 | 7);
  v19 = *(a3 + 24);
  v20 = *(a3 + 32);
  *(v18 + 2) = v15;
  *(v18 + 3) = v19;
  *(v18 + 4) = a4;
  *(v18 + 5) = v20;
  *(v18 + 6) = v24;
  *(v18 + 7) = a2;
  (*(v11 + 32))(&v18[v17], v13, a3);
  v21 = (a5 + *(type metadata accessor for LazyMapSequence(0, v15, a4, v20) + 44));
  *v21 = partial apply for closure #1 in LazyMapSequence.map<A>(_:);
  v21[1] = v18;
  return a2;
}

uint64_t closure #1 in LazyMapSequence.map<A>(_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LazyMapSequence(0, v13, v14, v15);
  (*(a4 + *(v16 + 44)))(a1);
  a2(v12);
  return (*(v10 + 8))(v12, a6);
}

atomic_ullong *LazyMapSequence<>.map<A>(_:)@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v24 = a1;
  v25 = a2;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  (*(*(v16 - 8) + 16))(a6, v7, v16);
  (*(v12 + 16))(v14, v7, a3);
  v17 = *(v12 + 80);
  v18 = (v17 + 64) & ~v17;
  v19 = swift_allocObject(&unk_1EEEADF48, (v18 + v13), v17 | 7);
  v20 = *(a3 + 24);
  *(v19 + 2) = v16;
  *(v19 + 3) = v20;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v25;
  *(v19 + 6) = v24;
  *(v19 + 7) = v21;
  (*(v12 + 32))(&v19[v18], v14, a3);
  v22 = (a6 + *(type metadata accessor for LazyMapSequence(0, v16, a4, *(a5 + 8)) + 44));
  *v22 = partial apply for closure #1 in LazyMapSequence<>.map<A>(_:);
  v22[1] = v19;
  return v21;
}

uint64_t closure #1 in LazyMapSequence<>.map<A>(_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LazyMapSequence(0, v14, v15, *(v13 + 8));
  (*(a4 + *(v16 + 44)))(a1);
  a2(v12);
  return (*(v10 + 8))(v12, a6);
}

Swift::Unicode::Scalar_optional __swiftcall Unicode.Scalar.init(_:)(Swift::UInt32 a1)
{
  v1 = HIWORD(a1) > 0x10u || a1 >> 11 == 27;
  v2 = v1;
  v3 = a1;
  if (v1)
  {
    v3 = 0;
  }

  return (v3 | (v2 << 32));
}

Swift::Unicode::Scalar_optional __swiftcall Unicode.Scalar.init(_:)(Swift::UInt16 a1)
{
  if (a1 >> 11 == 27)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return (v1 | ((a1 >> 11 == 27) << 32));
}

Swift::String __swiftcall Unicode.Scalar.escaped(asASCII:)(Swift::Bool asASCII)
{
  v2 = v1;
  v5 = Unicode.Scalar._escaped(asASCII:)(asASCII);
  object = v5.value._object;
  countAndFlagsBits = v5.value._countAndFlagsBits;
  if (!v5.value._object)
  {
    countAndFlagsBits = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v2);
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String_optional __swiftcall Unicode.Scalar._escaped(asASCII:)(Swift::Bool asASCII)
{
  switch(v1)
  {
    case '""':
      v2 = 0xE200000000000000;
      v3 = 8796;
      goto LABEL_299;
    case '\\':
      v2 = 0xE200000000000000;
      v3 = 23644;
      goto LABEL_299;
    case '\'':
      v2 = 0xE200000000000000;
      v3 = 10076;
      goto LABEL_299;
  }

  if (v1 - 127 > 0xFFFFFFA0)
  {
    goto LABEL_33;
  }

  if (v1 > 9)
  {
    if (v1 == 10)
    {
      v2 = 0xE200000000000000;
      v3 = 28252;
      goto LABEL_299;
    }

    if (v1 == 13)
    {
      v2 = 0xE200000000000000;
      v3 = 29276;
      goto LABEL_299;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0xE200000000000000;
      v3 = 12380;
      goto LABEL_299;
    }

    if (v1 == 9)
    {
      v2 = 0xE200000000000000;
      v3 = 29788;
      goto LABEL_299;
    }
  }

  if (v1 <= 0x7F)
  {
    v4 = v1;
    v5 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v1 >> 4);
    v7 = v6;
    v8 = specialized static String.+ infix(_:_:)(0x7B755CuLL, 0xE300000000000000, v5, v6);
    v10 = v9;
    0xE300000000000000;
    v7;
    v11 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v4);
    v13 = v12;
    v14 = specialized static String.+ infix(_:_:)(v8, v10, v11, v12);
    v16 = v15;
    v10;
    v13;
    v17 = specialized static String.+ infix(_:_:)(v14, v16, 0x7DuLL, 0xE100000000000000);
    v19 = v18;
    v16;
    0xE100000000000000;
    v3 = v17;
    v2 = v19;
    goto LABEL_299;
  }

  if (!asASCII)
  {
LABEL_33:
    v3 = 0;
    v2 = 0;
    goto LABEL_299;
  }

  v20 = 8090972;
  v21 = HIWORD(v1);
  if (!v21)
  {
    v316 = 8090972;
    v317 = 0xE300000000000000;
    v22 = v1;
    v38 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v1 >> 12);
    v26 = v38;
    v21 = v39;
    v25 = (HIBYTE(v39) & 0xF);
    if ((v39 & 0x2000000000000000) != 0 && *&v25 <= 0xCuLL)
    {
      if (v25)
      {
        v40 = 0;
        v41 = 0xE300000000000000;
        v42 = 24;
        do
        {
          v43 = v40 + 3;
          v32 = v40 >= 8;
          v44 = v40 + 1;
          v45 = v38 >> (v42 - 24);
          if (v32)
          {
            v45 = v39 >> ((v42 - 24) & 0x38);
          }

          v46 = (v45 << (v42 & 0x38)) | ((-255 << (v42 & 0x38)) - 1) & v41;
          v47 = (v45 << v42) | ((-255 << v42) - 1) & v20;
          if (v43 <= 7)
          {
            v20 = v47;
          }

          else
          {
            v41 = v46;
          }

          v42 += 8;
          v40 = v44;
        }

        while (*&v25 != v44);
        v48 = v41 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = 0;
      }

      0xE300000000000000;
      v21;
      v76 = 0xA000000000000000;
      if (((v20 | v48) & 0x8080808080808080) == 0)
      {
        v76 = 0xE000000000000000;
      }

      v316 = v20;
      v317 = (v76 | (*&v25 << 56) | v48) + 0x300000000000000;
      goto LABEL_216;
    }

    v49 = v38 & 0xFFFFFFFFFFFFLL;
    if ((v39 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v39) & 0xF;
    }

    else
    {
      v27 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if ((v39 & 0x1000000000000000) == 0)
    {
      v39;
      v58 = v27;
      v59 = v27 + 3;
      if (!__OFADD__(v27, 3))
      {
        goto LABEL_62;
      }

      goto LABEL_280;
    }

LABEL_276:
    swift_bridgeObjectRetain_n(v21, 2);
    v297._rawBits = 1;
    v298._rawBits = (v27 << 16) | 1;
    v299._rawBits = _StringGuts.validateScalarRange(_:)(v297, v298, *&v26, v21)._rawBits;
    if (v299._rawBits < 0x10000)
    {
      v299._rawBits |= 3;
    }

    v20 = String.UTF8View.distance(from:to:)(v299, v300);
    v21;
    v58 = v20;
    v59 = v20 + 3;
    if (!__OFADD__(v20, 3))
    {
LABEL_62:
      if (v59 > 15)
      {
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v59, v58);
        if ((v21 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(*&v26, v21, 0, v27);
        }

        else
        {
          if ((v21 & 0x2000000000000000) != 0)
          {
            v64 = (v21 >> 62) & 1;
            v314 = v26;
            v315 = v21 & 0xFFFFFFFFFFFFFFLL;
            v62 = &v314;
            v63 = v25;
          }

          else
          {
            if ((*&v26 & 0x1000000000000000) != 0)
            {
              v60 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v61 = v49;
            }

            else
            {
              v309 = _StringObject.sharedUTF8.getter(*&v26, v21);
              if (v310 < v49)
              {
                goto LABEL_292;
              }

              v60 = v309;
              v61 = v310;
            }

            v62 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v49, v60, v61);
            v64 = *&v26 >> 63;
          }

          closure #1 in _StringGuts.append(_:)(v62, v63, &v316, v64);
        }

        swift_bridgeObjectRelease_n(v21, 2);
        goto LABEL_216;
      }

      v21;
      v69._rawBits = 1;
      v70._rawBits = (v27 << 16) | 1;
      v71._rawBits = _StringGuts.validateScalarRange(_:)(v69, v70, *&v26, v21)._rawBits;
      if (v71._rawBits < 0x10000)
      {
        v71._rawBits |= 3;
      }

      if (v71._rawBits >> 16 || v72._rawBits >> 16 != v27)
      {
        v26 = specialized static String._copying(_:)(v71._rawBits, v72._rawBits, *&v26, v21);
        v74 = v84;
        v21;
      }

      else
      {
        v74 = v21;
      }

      if ((v74 & 0x2000000000000000) != 0)
      {
        v85 = v74;
      }

      else
      {
        v304 = v74;
        if ((v74 & 0x1000000000000000) == 0)
        {
          if ((*&v26 & 0x1000000000000000) != 0)
          {
            v305 = ((v74 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v306 = *&v26 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v305 = _StringObject.sharedUTF8.getter(*&v26, v74);
          }

          closure #1 in _StringGuts._convertedToSmall()(v305, v306, &v314, v73);
          v74;
          v26 = v314;
          v74 = v315;
          goto LABEL_96;
        }

        v26 = _StringGuts._foreignConvertedToSmall()(*&v26, v74);
        v74 = v312;
        v85 = v304;
      }

      v85;
LABEL_96:
      v86 = specialized _SmallString.init(_:appending:)(0x7B755CuLL, 0xE300000000000000, *&v26, v74);
      if (v88)
      {
        goto LABEL_293;
      }

      v89 = v86;
      v90 = v87;
      0xE300000000000000;
      swift_bridgeObjectRelease_n(v21, 2);
      v316 = v89;
      v317 = v90;
LABEL_216:
      v224 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(SBYTE1(v22));
      v225 = v223;
      v226 = v317;
      v227 = HIBYTE(v317) & 0xF;
      if ((v317 & 0x2000000000000000) == 0)
      {
        v227 = v316 & 0xFFFFFFFFFFFFLL;
      }

      if (v227 || (v316 & ~v317 & 0x2000000000000000) != 0)
      {
        if ((v317 & 0x2000000000000000) == 0)
        {
          if ((v223 & 0x2000000000000000) != 0)
          {
            goto LABEL_226;
          }

LABEL_224:
          v228 = v224 & 0xFFFFFFFFFFFFLL;
LABEL_227:
          v225;
          _StringGuts.append(_:)(v224, v225, 0, v228, v232, v233, v234, v235, v236, v237, v238, v239);
          swift_bridgeObjectRelease_n(v225, 2);
          v224 = v316;
          v225 = v317;
          goto LABEL_228;
        }

        if ((v223 & 0x2000000000000000) == 0)
        {
          goto LABEL_224;
        }

        v229 = specialized _SmallString.init(_:appending:)(v316, v317, v224, v223);
        if (v231)
        {
LABEL_226:
          v228 = HIBYTE(v225) & 0xF;
          goto LABEL_227;
        }

        v285 = v229;
        v286 = v230;
        v226;
        v225;
        v316 = v285;
        v317 = v286;
        v225 = v286;
        v224 = v285;
      }

      else
      {
        v317;
        v316 = v224;
        v317 = v225;
      }

LABEL_228:
      v241 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v22 >> 4);
      v242 = v240;
      v243 = HIBYTE(v225) & 0xF;
      if ((v225 & 0x2000000000000000) == 0)
      {
        v243 = v224 & 0xFFFFFFFFFFFFLL;
      }

      if (v243 || (v224 & ~v225 & 0x2000000000000000) != 0)
      {
        if ((v225 & 0x2000000000000000) == 0)
        {
          if ((v240 & 0x2000000000000000) != 0)
          {
            goto LABEL_238;
          }

LABEL_236:
          v244 = v241 & 0xFFFFFFFFFFFFLL;
LABEL_239:
          v242;
          _StringGuts.append(_:)(v241, v242, 0, v244, v248, v249, v250, v251, v252, v253, v254, v255);
          swift_bridgeObjectRelease_n(v242, 2);
          v241 = v316;
          v242 = v317;
          goto LABEL_240;
        }

        if ((v240 & 0x2000000000000000) == 0)
        {
          goto LABEL_236;
        }

        v245 = specialized _SmallString.init(_:appending:)(v224, v225, v241, v240);
        if (v247)
        {
LABEL_238:
          v244 = HIBYTE(v242) & 0xF;
          goto LABEL_239;
        }

        v287 = v245;
        v288 = v246;
        v225;
        v242;
        v316 = v287;
        v317 = v288;
        v242 = v288;
        v241 = v287;
      }

      else
      {
        v225;
        v316 = v241;
        v317 = v242;
      }

LABEL_240:
      v195 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v22);
      v196 = v256;
      v257 = HIBYTE(v242) & 0xF;
      if ((v242 & 0x2000000000000000) == 0)
      {
        v257 = v241 & 0xFFFFFFFFFFFFLL;
      }

      if (v257 || (v241 & ~v242 & 0x2000000000000000) != 0)
      {
        if ((v242 & 0x2000000000000000) == 0)
        {
          if ((v256 & 0x2000000000000000) != 0)
          {
            goto LABEL_250;
          }

LABEL_248:
          v258 = v195 & 0xFFFFFFFFFFFFLL;
LABEL_251:
          v196;
          _StringGuts.append(_:)(v195, v196, 0, v258, v262, v263, v264, v265, v266, v267, v268, v269);
          swift_bridgeObjectRelease_n(v196, 2);
          v195 = v316;
          v196 = v317;
          goto LABEL_252;
        }

        if ((v256 & 0x2000000000000000) == 0)
        {
          goto LABEL_248;
        }

        v259 = specialized _SmallString.init(_:appending:)(v241, v242, v195, v256);
        if (v261)
        {
LABEL_250:
          v258 = HIBYTE(v196) & 0xF;
          goto LABEL_251;
        }

        v289 = v259;
        v290 = v260;
        v242;
        v196;
        v316 = v289;
        v317 = v290;
        v196 = v290;
        v195 = v289;
      }

      else
      {
        v242;
        v316 = v195;
        v317 = v196;
      }

LABEL_252:
      v270 = HIBYTE(v196) & 0xF;
      if ((v196 & 0x2000000000000000) == 0)
      {
        v270 = v195 & 0xFFFFFFFFFFFFLL;
      }

      if (!v270 && (v195 & ~v196 & 0x2000000000000000) == 0)
      {
        goto LABEL_260;
      }

      goto LABEL_256;
    }

LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v316 = 8090972;
  v317 = 0xE300000000000000;
  v22 = v1;
  v23 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v1 >> 28);
  v25 = v23;
  v26 = v24;
  v27 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0 || v27 > 0xC)
  {
    if ((v24 & 0x2000000000000000) != 0)
    {
      v49 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v49 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if ((v24 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v24, 2);
      v292._rawBits = 1;
      v293._rawBits = (v49 << 16) | 1;
      v294._rawBits = _StringGuts.validateScalarRange(_:)(v292, v293, *&v25, *&v26)._rawBits;
      if (v294._rawBits < 0x10000)
      {
        v294._rawBits |= 3;
      }

      v296 = String.UTF8View.distance(from:to:)(v294, v295);
      *&v26;
      v50 = v296;
      v51 = v296 + 3;
      if (!__OFADD__(v296, 3))
      {
LABEL_51:
        if (v51 > 15)
        {
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v51, v50);
          if ((*&v26 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(*&v25, *&v26, 0, v49);
LABEL_102:
            swift_bridgeObjectRelease_n(*&v26, 2);
            goto LABEL_103;
          }

          if ((*&v26 & 0x2000000000000000) != 0)
          {
            v56 = (*&v26 >> 62) & 1;
            v314 = v25;
            v315 = *&v26 & 0xFFFFFFFFFFFFFFLL;
            v54 = &v314;
            v55 = v27;
            goto LABEL_101;
          }

          if ((*&v25 & 0x1000000000000000) != 0)
          {
            v52 = (*&v26 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v53 = *&v25 & 0xFFFFFFFFFFFFLL;
LABEL_56:
            v54 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, *&v25 & 0xFFFFFFFFFFFFLL, v52, v53);
            v56 = *&v25 >> 63;
LABEL_101:
            closure #1 in _StringGuts.append(_:)(v54, v55, &v316, v56);
            goto LABEL_102;
          }

          v307 = _StringObject.sharedUTF8.getter(*&v25, *&v26);
          if (v308 >= (*&v25 & 0xFFFFFFFFFFFFLL))
          {
            v52 = v307;
            v53 = v308;
            goto LABEL_56;
          }

LABEL_292:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        *&v26;
        v65._rawBits = 1;
        v66._rawBits = (v49 << 16) | 1;
        v67._rawBits = _StringGuts.validateScalarRange(_:)(v65, v66, *&v25, *&v26)._rawBits;
        if (v67._rawBits < 0x10000)
        {
          v67._rawBits |= 3;
        }

        if (v67._rawBits >> 16 || v68._rawBits >> 16 != v49)
        {
          v25 = specialized static String._copying(_:)(v67._rawBits, v68._rawBits, *&v25, *&v26);
          v20 = v77;
          *&v26;
        }

        else
        {
          v20 = v26;
        }

        if ((v20 & 0x2000000000000000) != 0)
        {
          v78 = v20;
          goto LABEL_89;
        }

LABEL_281:
        v301 = v20;
        if ((v20 & 0x1000000000000000) == 0)
        {
          if ((*&v25 & 0x1000000000000000) != 0)
          {
            v302 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v303 = *&v25 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v302 = _StringObject.sharedUTF8.getter(*&v25, v20);
          }

          closure #1 in _StringGuts._convertedToSmall()(v302, v303, &v314, v57);
          v20;
          v25 = v314;
          v20 = v315;
LABEL_90:
          v79 = specialized _SmallString.init(_:appending:)(0x7B755CuLL, 0xE300000000000000, *&v25, v20);
          if ((v81 & 1) == 0)
          {
            v82 = v79;
            v83 = v80;
            0xE300000000000000;
            swift_bridgeObjectRelease_n(*&v26, 2);
            v316 = v82;
            v317 = v83;
            goto LABEL_103;
          }

LABEL_293:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v25 = _StringGuts._foreignConvertedToSmall()(*&v25, v20);
        v20 = v311;
        v78 = v301;
LABEL_89:
        v78;
        goto LABEL_90;
      }
    }

    else
    {
      v24;
      v50 = v49;
      v51 = v49 + 3;
      if (!__OFADD__(v49, 3))
      {
        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_276;
  }

  if (v27)
  {
    v28 = 0;
    v29 = 0xE300000000000000;
    v30 = 24;
    do
    {
      v31 = v28 + 3;
      v32 = v28 >= 8;
      v33 = v28 + 1;
      v34 = v23 >> (v30 - 24);
      if (v32)
      {
        v34 = v24 >> ((v30 - 24) & 0x38);
      }

      v35 = (v34 << (v30 & 0x38)) | ((-255 << (v30 & 0x38)) - 1) & v29;
      v36 = (v34 << v30) | ((-255 << v30) - 1) & v20;
      if (v31 <= 7)
      {
        v20 = v36;
      }

      else
      {
        v29 = v35;
      }

      v30 += 8;
      v28 = v33;
    }

    while (v27 != v33);
    v37 = v29 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v37 = 0;
  }

  0xE300000000000000;
  *&v26;
  v75 = 0xA000000000000000;
  if (((v20 | v37) & 0x8080808080808080) == 0)
  {
    v75 = 0xE000000000000000;
  }

  v316 = v20;
  v317 = (v75 | (v27 << 56) | v37) + 0x300000000000000;
LABEL_103:
  v92 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(SHIBYTE(v22));
  v101 = v91;
  v102 = v316;
  v103 = HIBYTE(v317) & 0xF;
  v104 = v316 & 0xFFFFFFFFFFFFLL;
  if ((v317 & 0x2000000000000000) != 0)
  {
    v104 = HIBYTE(v317) & 0xF;
  }

  if (v104 || (v316 & ~v317 & 0x2000000000000000) != 0)
  {
    if ((v317 & 0x2000000000000000) == 0)
    {
      if ((v91 & 0x2000000000000000) != 0)
      {
        v105 = HIBYTE(v91) & 0xF;
LABEL_112:
        _StringGuts.append(_:)(v92, v91, 0, v105, v93, v94, v95, v96, v97, v98, v99, v100);
        v101;
        v92 = v316;
        v101 = v317;
        goto LABEL_113;
      }

LABEL_111:
      v105 = v92 & 0xFFFFFFFFFFFFLL;
      goto LABEL_112;
    }

    if ((v91 & 0x2000000000000000) == 0)
    {
      goto LABEL_111;
    }

    v105 = HIBYTE(v91) & 0xF;
    v111 = v103 + v105;
    if (v103 + v105 > 0xF)
    {
      goto LABEL_112;
    }

    if (v105)
    {
      v112 = 0;
      v113 = 0;
      v114 = 8 * v103;
      v115 = v317;
      do
      {
        v116 = v91 >> (v112 & 0x38);
        if (v113 < 8)
        {
          v116 = v92 >> v112;
        }

        v117 = (v116 << (v114 & 0x38)) | ((-255 << (v114 & 0x38)) - 1) & v115;
        v118 = (v116 << v114) | ((-255 << v114) - 1) & v102;
        if (v103 <= 7)
        {
          v102 = v118;
        }

        else
        {
          v115 = v117;
        }

        ++v103;
        v114 += 8;
        v112 += 8;
        ++v113;
      }

      while (8 * v105 != v112);
    }

    else
    {
      v115 = v317;
    }

    v317;
    v101;
    v291 = 0xA000000000000000;
    if (!(v102 & 0x8080808080808080 | v115 & 0x80808080808080))
    {
      v291 = 0xE000000000000000;
    }

    v101 = v291 & 0xFF00000000000000 | (v111 << 56) | v115 & 0xFFFFFFFFFFFFFFLL;
    v316 = v102;
    v317 = v101;
    v92 = v102;
  }

  else
  {
    v317;
    v316 = v92;
    v317 = v101;
  }

LABEL_113:
  v107 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v22 >> 20);
  v108 = v106;
  v109 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) == 0)
  {
    v109 = v92 & 0xFFFFFFFFFFFFLL;
  }

  if (v109 || (v92 & ~v101 & 0x2000000000000000) != 0)
  {
    if ((v101 & 0x2000000000000000) == 0)
    {
      if ((v106 & 0x2000000000000000) != 0)
      {
        goto LABEL_133;
      }

LABEL_121:
      v110 = v107 & 0xFFFFFFFFFFFFLL;
LABEL_134:
      v108;
      _StringGuts.append(_:)(v107, v108, 0, v110, v122, v123, v124, v125, v126, v127, v128, v129);
      swift_bridgeObjectRelease_n(v108, 2);
      v107 = v316;
      v108 = v317;
      goto LABEL_135;
    }

    if ((v106 & 0x2000000000000000) == 0)
    {
      goto LABEL_121;
    }

    v119 = specialized _SmallString.init(_:appending:)(v92, v101, v107, v106);
    if (v121)
    {
LABEL_133:
      v110 = HIBYTE(v108) & 0xF;
      goto LABEL_134;
    }

    v211 = v119;
    v212 = v120;
    v101;
    v108;
    v316 = v211;
    v317 = v212;
    v108 = v212;
    v107 = v211;
  }

  else
  {
    v101;
    v316 = v107;
    v317 = v108;
  }

LABEL_135:
  v131 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v21);
  v132 = v130;
  v133 = HIBYTE(v108) & 0xF;
  if ((v108 & 0x2000000000000000) == 0)
  {
    v133 = v107 & 0xFFFFFFFFFFFFLL;
  }

  if (v133 || (v107 & ~v108 & 0x2000000000000000) != 0)
  {
    if ((v108 & 0x2000000000000000) == 0)
    {
      if ((v130 & 0x2000000000000000) != 0)
      {
        goto LABEL_145;
      }

LABEL_143:
      v134 = v131 & 0xFFFFFFFFFFFFLL;
LABEL_146:
      v132;
      _StringGuts.append(_:)(v131, v132, 0, v134, v138, v139, v140, v141, v142, v143, v144, v145);
      swift_bridgeObjectRelease_n(v132, 2);
      v131 = v316;
      v132 = v317;
      goto LABEL_147;
    }

    if ((v130 & 0x2000000000000000) == 0)
    {
      goto LABEL_143;
    }

    v135 = specialized _SmallString.init(_:appending:)(v107, v108, v131, v130);
    if (v137)
    {
LABEL_145:
      v134 = HIBYTE(v132) & 0xF;
      goto LABEL_146;
    }

    v213 = v135;
    v214 = v136;
    v108;
    v132;
    v316 = v213;
    v317 = v214;
    v132 = v214;
    v131 = v213;
  }

  else
  {
    v108;
    v316 = v131;
    v317 = v132;
  }

LABEL_147:
  v147 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v22 >> 12);
  v148 = v146;
  v149 = HIBYTE(v132) & 0xF;
  if ((v132 & 0x2000000000000000) == 0)
  {
    v149 = v131 & 0xFFFFFFFFFFFFLL;
  }

  if (v149 || (v131 & ~v132 & 0x2000000000000000) != 0)
  {
    if ((v132 & 0x2000000000000000) == 0)
    {
      if ((v146 & 0x2000000000000000) != 0)
      {
        goto LABEL_157;
      }

LABEL_155:
      v150 = v147 & 0xFFFFFFFFFFFFLL;
LABEL_158:
      v148;
      _StringGuts.append(_:)(v147, v148, 0, v150, v154, v155, v156, v157, v158, v159, v160, v161);
      swift_bridgeObjectRelease_n(v148, 2);
      v147 = v316;
      v148 = v317;
      goto LABEL_159;
    }

    if ((v146 & 0x2000000000000000) == 0)
    {
      goto LABEL_155;
    }

    v151 = specialized _SmallString.init(_:appending:)(v131, v132, v147, v146);
    if (v153)
    {
LABEL_157:
      v150 = HIBYTE(v148) & 0xF;
      goto LABEL_158;
    }

    v215 = v151;
    v216 = v152;
    v132;
    v148;
    v316 = v215;
    v317 = v216;
    v148 = v216;
    v147 = v215;
  }

  else
  {
    v132;
    v316 = v147;
    v317 = v148;
  }

LABEL_159:
  v163 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(SBYTE1(v22));
  v164 = v162;
  v165 = HIBYTE(v148) & 0xF;
  if ((v148 & 0x2000000000000000) == 0)
  {
    v165 = v147 & 0xFFFFFFFFFFFFLL;
  }

  if (v165 || (v147 & ~v148 & 0x2000000000000000) != 0)
  {
    if ((v148 & 0x2000000000000000) == 0)
    {
      if ((v162 & 0x2000000000000000) != 0)
      {
        goto LABEL_169;
      }

LABEL_167:
      v166 = v163 & 0xFFFFFFFFFFFFLL;
LABEL_170:
      v164;
      _StringGuts.append(_:)(v163, v164, 0, v166, v170, v171, v172, v173, v174, v175, v176, v177);
      swift_bridgeObjectRelease_n(v164, 2);
      v163 = v316;
      v164 = v317;
      goto LABEL_171;
    }

    if ((v162 & 0x2000000000000000) == 0)
    {
      goto LABEL_167;
    }

    v167 = specialized _SmallString.init(_:appending:)(v147, v148, v163, v162);
    if (v169)
    {
LABEL_169:
      v166 = HIBYTE(v164) & 0xF;
      goto LABEL_170;
    }

    v217 = v167;
    v218 = v168;
    v148;
    v164;
    v316 = v217;
    v317 = v218;
    v164 = v218;
    v163 = v217;
  }

  else
  {
    v148;
    v316 = v163;
    v317 = v164;
  }

LABEL_171:
  v179 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v22 >> 4);
  v180 = v178;
  v181 = HIBYTE(v164) & 0xF;
  if ((v164 & 0x2000000000000000) == 0)
  {
    v181 = v163 & 0xFFFFFFFFFFFFLL;
  }

  if (v181 || (v163 & ~v164 & 0x2000000000000000) != 0)
  {
    if ((v164 & 0x2000000000000000) == 0)
    {
      if ((v178 & 0x2000000000000000) != 0)
      {
        goto LABEL_181;
      }

LABEL_179:
      v182 = v179 & 0xFFFFFFFFFFFFLL;
LABEL_182:
      v180;
      _StringGuts.append(_:)(v179, v180, 0, v182, v186, v187, v188, v189, v190, v191, v192, v193);
      swift_bridgeObjectRelease_n(v180, 2);
      v179 = v316;
      v180 = v317;
      goto LABEL_183;
    }

    if ((v178 & 0x2000000000000000) == 0)
    {
      goto LABEL_179;
    }

    v183 = specialized _SmallString.init(_:appending:)(v163, v164, v179, v178);
    if (v185)
    {
LABEL_181:
      v182 = HIBYTE(v180) & 0xF;
      goto LABEL_182;
    }

    v219 = v183;
    v220 = v184;
    v164;
    v180;
    v316 = v219;
    v317 = v220;
    v180 = v220;
    v179 = v219;
  }

  else
  {
    v164;
    v316 = v179;
    v317 = v180;
  }

LABEL_183:
  v195 = lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(v22);
  v196 = v194;
  v197 = HIBYTE(v180) & 0xF;
  if ((v180 & 0x2000000000000000) == 0)
  {
    v197 = v179 & 0xFFFFFFFFFFFFLL;
  }

  if (v197 || (v179 & ~v180 & 0x2000000000000000) != 0)
  {
    if ((v180 & 0x2000000000000000) == 0)
    {
      if ((v194 & 0x2000000000000000) != 0)
      {
        goto LABEL_193;
      }

LABEL_191:
      v198 = v195 & 0xFFFFFFFFFFFFLL;
LABEL_194:
      v196;
      _StringGuts.append(_:)(v195, v196, 0, v198, v202, v203, v204, v205, v206, v207, v208, v209);
      swift_bridgeObjectRelease_n(v196, 2);
      v195 = v316;
      v196 = v317;
      goto LABEL_195;
    }

    if ((v194 & 0x2000000000000000) == 0)
    {
      goto LABEL_191;
    }

    v199 = specialized _SmallString.init(_:appending:)(v179, v180, v195, v194);
    if (v201)
    {
LABEL_193:
      v198 = HIBYTE(v196) & 0xF;
      goto LABEL_194;
    }

    v221 = v199;
    v222 = v200;
    v180;
    v196;
    v316 = v221;
    v317 = v222;
    v196 = v222;
    v195 = v221;
  }

  else
  {
    v180;
    v316 = v195;
    v317 = v196;
  }

LABEL_195:
  v210 = HIBYTE(v196) & 0xF;
  if ((v196 & 0x2000000000000000) == 0)
  {
    v210 = v195 & 0xFFFFFFFFFFFFLL;
  }

  if (!v210 && (v195 & ~v196 & 0x2000000000000000) == 0)
  {
LABEL_260:
    v196;
    v2 = 0xE100000000000000;
    v3 = 125;
    goto LABEL_299;
  }

LABEL_256:
  if ((v196 & 0x2000000000000000) != 0 && (v271 = specialized _SmallString.init(_:appending:)(v195, v196, 0x7DuLL, 0xE100000000000000), (v273 & 1) == 0))
  {
    v282 = v271;
    v283 = v196;
    v284 = v272;
    v283;
    0xE100000000000000;
    v3 = v282;
    v2 = v284;
  }

  else
  {
    0xE100000000000000;
    _StringGuts.append(_:)(125, 0xE100000000000000, 0, 1, v274, v275, v276, v277, v278, v279, v280, v281);
    swift_bridgeObjectRelease_n(0xE100000000000000, 2);
    v3 = v316;
    v2 = v317;
  }

LABEL_299:
  result.value._object = v2;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t lowNibbleAsHex #1 (_:) in Unicode.Scalar._escaped(asASCII:)(char a1)
{
  if ((a1 & 0xFu) >= 0xA)
  {
    v1 = (a1 & 0xF) + 55;
  }

  else
  {
    v1 = a1 & 0xF | 0x30;
  }

  return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v1);
}

uint64_t static UInt32.+ infix(_:_:)(int a1, int a2)
{
  v2 = __CFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static UInt32.- infix(_:_:)(unsigned int a1, unsigned int a2)
{
  v2 = a1 >= a2;
  result = a1 - a2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Unicode.Scalar.debugDescription.getter(void *a1)
{
  v3 = _StringGuts.init(_initialCapacity:)(4);
  v5 = v3;
  object = v4;
  v146 = v3;
  v147 = v4;
  v7 = HIBYTE(v4) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 && (v3 & ~v4 & 0x2000000000000000) == 0)
  {
    v4;
    v146 = 34;
    v147 = 0xE100000000000000;
    goto LABEL_66;
  }

  if ((v4 & 0x2000000000000000) == 0 || v7 == 15)
  {
    0xE100000000000000;
    if ((object & 0x1000000000000000) != 0)
    {
      v124 = String.UTF8View._foreignCount()();
      countAndFlagsBits = v124 + 1;
      if (!__OFADD__(v124, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v19 = __OFADD__(v9, 1);
      countAndFlagsBits = v9 + 1;
      if (!v19)
      {
LABEL_18:
        v21 = v5 & ~object;
        if ((v21 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
        {
          v22 = _StringGuts.nativeUnusedCapacity.getter(v5, object);
          if (v23)
          {
            goto LABEL_230;
          }

          if (countAndFlagsBits > 15)
          {
            goto LABEL_29;
          }

          if ((object & 0x2000000000000000) == 0)
          {
            if (v22 < 1)
            {
              goto LABEL_24;
            }

LABEL_29:
            v25 = v21 & 0x2000000000000000;
            v26 = _StringGuts.nativeUnusedCapacity.getter(v5, object);
            if ((v27 & 1) != 0 || v26 <= 0)
            {
              if (v25)
              {
                swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
              }

              v28 = _StringGuts.nativeCapacity.getter(v5, object);
              if (v29)
              {
                v30 = 0;
              }

              else
              {
                v30 = v28;
              }

              if (v30 + 0x4000000000000000 < 0)
              {
                __break(1u);
                goto LABEL_225;
              }

              v31 = 2 * v30;
              if (v31 > countAndFlagsBits)
              {
                countAndFlagsBits = v31;
              }
            }

            else if (v25 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_43;
            }

            _StringGuts.grow(_:)(countAndFlagsBits);
LABEL_43:
            *v145[0].i8 = xmmword_18071DC80;
            closure #1 in _StringGuts.append(_:)(v145, 1uLL, &v146, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            goto LABEL_66;
          }
        }

        else
        {
          if (countAndFlagsBits > 15)
          {
            goto LABEL_29;
          }

          if ((object & 0x2000000000000000) == 0)
          {
LABEL_24:
            if ((object & 0x1000000000000000) != 0)
            {
              v5 = _StringGuts._foreignConvertedToSmall()(v5, object);
              countAndFlagsBits = v122;
            }

            else
            {
              if ((v5 & 0x1000000000000000) != 0)
              {
                v24 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v24 = _StringObject.sharedUTF8.getter(v5, object);
                v8 = v134;
              }

              closure #1 in _StringGuts._convertedToSmall()(v24, v8, v145, v18);
              countAndFlagsBits = v145[1];
              v5 = v145[0];
            }

LABEL_46:
            v32 = 0xE100000000000000;
            0xE100000000000000;
            v33 = 34;
            v34._rawBits = 1;
            v35._rawBits = 65537;
            v36._rawBits = _StringGuts.validateScalarRange(_:)(v34, v35, 0x22uLL, 0xE100000000000000)._rawBits;
            if (v36._rawBits < 0x10000)
            {
              v36._rawBits |= 3;
            }

            if (v36._rawBits >> 16 || (v37._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
            {
              v33 = specialized static String._copying(_:)(v36._rawBits, v37._rawBits, 0x22uLL, 0xE100000000000000);
              v32 = v39;
              0xE100000000000000;
            }

            if ((v32 & 0x2000000000000000) != 0)
            {
              v32;
              goto LABEL_53;
            }

            goto LABEL_215;
          }
        }

        countAndFlagsBits = object;
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_206;
  }

  v10 = 8 * (HIBYTE(v4) & 7);
  v11 = (-255 << v10) - 1;
  v12 = 34 << v10;
  v13 = v12 | v11 & v4;
  v14 = v12 | v11 & v3;
  if (v7 >= 8)
  {
    v15 = v13;
  }

  else
  {
    v15 = v4;
  }

  if (v7 < 8)
  {
    v5 = v14;
  }

  v4;
  0xE100000000000000;
  v16 = 0xA000000000000000;
  if (!(v5 & 0x8080808080808080 | v15 & 0x80808080808080))
  {
    v16 = 0xE000000000000000;
  }

  for (i = (v16 & 0xFF00000000000000 | (v7 << 56) | v15 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000; ; i = v48 & 0xFF00000000000000 | (v1 << 56) | countAndFlagsBits & 0xFFFFFFFFFFFFFFLL)
  {
    v146 = v5;
    v147 = i;
LABEL_66:
    v49 = Unicode.Scalar._escaped(asASCII:)(1);
    if (v49.value._object)
    {
      countAndFlagsBits = v49.value._countAndFlagsBits;
      object = v49.value._object;
      a1 = 0;
    }

    else
    {
      v50 = a1;
      a1 = 0;
      countAndFlagsBits = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v50);
      object = v51;
    }

    v32 = v146;
    v5 = v147;
    v52 = HIBYTE(v147) & 0xF;
    v53 = v146 & 0xFFFFFFFFFFFFLL;
    if ((v147 & 0x2000000000000000) != 0)
    {
      v54 = HIBYTE(v147) & 0xF;
    }

    else
    {
      v54 = v146 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54 && (v146 & ~v147 & 0x2000000000000000) == 0)
    {
      v147;
      v146 = countAndFlagsBits;
      v147 = object;
      goto LABEL_162;
    }

    v1 = HIBYTE(object) & 0xF;
    if ((v147 & 0x2000000000000000) == 0)
    {
      v143 = (object & 0x2000000000000000) == 0;
      v144 = 0;
      v55 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v56 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) != 0)
      {
LABEL_80:
        v142 = v55;
        if ((object & 0x1000000000000000) == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_120;
      }

LABEL_79:
      v56 = v55;
      goto LABEL_80;
    }

    if ((object & 0x2000000000000000) == 0)
    {
      v144 = 0;
      v55 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v143 = 1;
      goto LABEL_79;
    }

    v80 = v52 + v1;
    if (v52 + v1 < 0x10)
    {
      if (v1)
      {
        v97 = 0;
        v98 = 0;
        v99 = 8 * v52;
        v100 = v147;
        do
        {
          v101 = object >> (v97 & 0x38);
          if (v98 < 8)
          {
            v101 = countAndFlagsBits >> v97;
          }

          v102 = (v101 << (v99 & 0x38)) | ((-255 << (v99 & 0x38)) - 1) & v100;
          v103 = (v101 << v99) | ((-255 << v99) - 1) & v32;
          if (v52 <= 7)
          {
            v32 = v103;
          }

          else
          {
            v100 = v102;
          }

          ++v52;
          v99 += 8;
          v97 += 8;
          ++v98;
        }

        while (8 * v1 != v97);
      }

      else
      {
        v100 = v147;
      }

      v147;
      object;
      v104 = 0xA000000000000000;
      if (!(v32 & 0x8080808080808080 | v100 & 0x80808080808080))
      {
        v104 = 0xE000000000000000;
      }

      v146 = v32;
      v147 = v104 & 0xFF00000000000000 | (v80 << 56) | v100 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_162;
    }

    v144 = 0;
    v143 = 0;
    v56 = HIBYTE(object) & 0xF;
    v142 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((object & 0x1000000000000000) == 0)
    {
LABEL_81:
      object;
      v33 = v56;
      if ((v5 & 0x1000000000000000) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_123;
    }

LABEL_120:
    swift_bridgeObjectRetain_n(object, 2);
    v81._rawBits = 1;
    v82._rawBits = (v56 << 16) | 1;
    v83._rawBits = _StringGuts.validateScalarRange(_:)(v81, v82, countAndFlagsBits, object)._rawBits;
    if (v83._rawBits < 0x10000)
    {
      v83._rawBits |= 3;
    }

    v33 = String.UTF8View.distance(from:to:)(v83, v84);
    object;
    if ((v5 & 0x1000000000000000) == 0)
    {
LABEL_82:
      v19 = __OFADD__(v54, v33);
      v58 = v54 + v33;
      if (v19)
      {
        goto LABEL_125;
      }

      goto LABEL_83;
    }

LABEL_123:
    v85 = String.UTF8View._foreignCount()();
    v58 = v85 + v33;
    if (__OFADD__(v85, v33))
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

LABEL_83:
    v59 = v32 & ~v5;
    if ((v59 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
    {
      v60 = _StringGuts.nativeUnusedCapacity.getter(v32, v5);
      if (v61)
      {
        goto LABEL_230;
      }

      if (v58 <= 15)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          goto LABEL_112;
        }

        if (v60 < v33)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v58 <= 15)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
LABEL_112:
        v1 = v5;
      }

      else
      {
LABEL_89:
        if ((v5 & 0x1000000000000000) != 0)
        {
          v32 = _StringGuts._foreignConvertedToSmall()(v32, v5);
          v1 = v121;
        }

        else
        {
          if ((v32 & 0x1000000000000000) != 0)
          {
            v62 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v62 = _StringObject.sharedUTF8.getter(v32, v5);
            v53 = v133;
          }

          closure #1 in _StringGuts._convertedToSmall()(v62, v53, v145, v57);
          v1 = v145[1];
          v32 = v145[0];
        }
      }

      object;
      v74._rawBits = 1;
      v75._rawBits = (v56 << 16) | 1;
      v76._rawBits = _StringGuts.validateScalarRange(_:)(v74, v75, countAndFlagsBits, object)._rawBits;
      if (v76._rawBits < 0x10000)
      {
        v76._rawBits |= 3;
      }

      if (v76._rawBits >> 16 || v77._rawBits >> 16 != v56)
      {
        countAndFlagsBits = specialized static String._copying(_:)(v76._rawBits, v77._rawBits, countAndFlagsBits, object);
        v79 = v86;
        object;
      }

      else
      {
        v79 = object;
      }

      if ((v79 & 0x2000000000000000) == 0)
      {
        goto LABEL_209;
      }

      v79;
      goto LABEL_130;
    }

    a1 = (v59 & 0x2000000000000000);
    v63 = _StringGuts.nativeUnusedCapacity.getter(v32, v5);
    if ((v64 & 1) == 0 && v63 >= v33)
    {
      break;
    }

    if (a1)
    {
      swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL);
    }

    v65 = _StringGuts.nativeCapacity.getter(v32, v5);
    if (v66)
    {
      v67 = 0;
    }

    else
    {
      v67 = v65;
    }

    if (v67 + 0x4000000000000000 >= 0)
    {
      v68 = 2 * v67;
      if (v68 > v58)
      {
        v58 = v68;
      }

      goto LABEL_104;
    }

    __break(1u);
LABEL_215:
    if ((v32 & 0x1000000000000000) != 0)
    {
      v33 = _StringGuts._foreignConvertedToSmall()(v33, v32);
      v139 = v138;
      v32;
      v32 = v139;
    }

    else
    {
      if ((v33 & 0x1000000000000000) != 0)
      {
        v127 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v128 = v33 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v127 = _StringObject.sharedUTF8.getter(v33, v32);
      }

      closure #1 in _StringGuts._convertedToSmall()(v127, v128, v145, v38);
      v32;
      v32 = v145[1];
      v33 = v145[0];
    }

LABEL_53:
    v40 = HIBYTE(countAndFlagsBits) & 0xF;
    v41 = HIBYTE(v32) & 0xF;
    v1 = v41 + v40;
    if (v41 + v40 > 0xF)
    {
      goto LABEL_230;
    }

    0xE100000000000000;
    if (v41)
    {
      v42 = 0;
      v43 = 0;
      v44 = 8 * v40;
      do
      {
        v45 = v32 >> (v42 & 0x38);
        if (v43 < 8)
        {
          v45 = v33 >> v42;
        }

        v46 = (v45 << (v44 & 0x38)) | ((-255 << (v44 & 0x38)) - 1) & countAndFlagsBits;
        v47 = (v45 << v44) | ((-255 << v44) - 1) & v5;
        if (v40 <= 7)
        {
          v5 = v47;
        }

        else
        {
          countAndFlagsBits = v46;
        }

        ++v40;
        v44 += 8;
        v42 += 8;
        ++v43;
      }

      while (8 * v41 != v42);
    }

    object;
    0xE100000000000000;
    v48 = 0xA000000000000000;
    if (!(v5 & 0x8080808080808080 | countAndFlagsBits & 0x80808080808080))
    {
      v48 = 0xE000000000000000;
    }
  }

  if (!a1 || !swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
  {
LABEL_104:
    _StringGuts.grow(_:)(v58);
  }

  if ((object & 0x1000000000000000) != 0)
  {
LABEL_126:
    _StringGuts._foreignAppendInPlace(_:)(countAndFlagsBits, object, 0, v56);
    swift_bridgeObjectRelease_n(object, 2);
    a1 = 0;
    goto LABEL_162;
  }

  if (!v143)
  {
    v145[0] = countAndFlagsBits;
    v145[1] = (object & 0xFFFFFFFFFFFFFFLL);
    closure #1 in _StringGuts.append(_:)(v145, HIBYTE(object) & 0xF, &v146, (object & 0x4000000000000000) != 0);
    a1 = 0;
    goto LABEL_157;
  }

  a1 = 0;
  if ((countAndFlagsBits & 0x1000000000000000) == 0)
  {
LABEL_225:
    v131 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
    if (v132 < v142)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_239;
  }

  v69 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
  v70 = v142;
  v71 = v142;
LABEL_109:
  v72 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v70, v69, v71);
  closure #1 in _StringGuts.append(_:)(v72, v73, &v146, countAndFlagsBits < 0);
  if (a1)
  {
    goto LABEL_237;
  }

LABEL_157:
  swift_bridgeObjectRelease_n(object, 2);
  while (1)
  {
LABEL_162:
    v5 = v146;
    object = v147;
    v105 = HIBYTE(v147) & 0xF;
    countAndFlagsBits = v146 & 0xFFFFFFFFFFFFLL;
    if ((v147 & 0x2000000000000000) != 0)
    {
      v79 = HIBYTE(v147) & 0xF;
    }

    else
    {
      v79 = v146 & 0xFFFFFFFFFFFFLL;
    }

    if (!v79 && (v146 & ~v147 & 0x2000000000000000) == 0)
    {
      v147;
      return 34;
    }

    if ((v147 & 0x2000000000000000) != 0 && v105 != 15)
    {
      break;
    }

    0xE100000000000000;
    if ((object & 0x1000000000000000) != 0)
    {
LABEL_206:
      v79 = String.UTF8View._foreignCount()();
      v32 = v79 + 1;
      if (!__OFADD__(v79, 1))
      {
LABEL_174:
        if ((v5 & ~object & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
        {
          v107 = _StringGuts.nativeUnusedCapacity.getter(v5, object);
          if ((v108 & 1) == 0)
          {
            if (v32 > 15)
            {
              goto LABEL_186;
            }

            if ((object & 0x2000000000000000) == 0)
            {
              if (v107 < 1)
              {
                goto LABEL_180;
              }

LABEL_186:
              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, 1);
              *v145[0].i8 = xmmword_18071DC80;
              closure #1 in _StringGuts.append(_:)(v145, 1uLL, &v146, 1);
              if (!a1)
              {
                swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                return v146;
              }

LABEL_237:
              a1;
              __break(1u);
LABEL_238:
              v144;
              __break(1u);
LABEL_239:
              v69 = v131;
              v71 = v132;
              v70 = v142;
              goto LABEL_109;
            }

LABEL_189:
            countAndFlagsBits = object;
            goto LABEL_190;
          }
        }

        else
        {
          if (v32 > 15)
          {
            goto LABEL_186;
          }

          if ((object & 0x2000000000000000) != 0)
          {
            goto LABEL_189;
          }

LABEL_180:
          if ((object & 0x1000000000000000) != 0)
          {
            v5 = _StringGuts._foreignConvertedToSmall()(v5, object);
            countAndFlagsBits = v123;
          }

          else
          {
            if ((v5 & 0x1000000000000000) != 0)
            {
              v109 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v109 = _StringObject.sharedUTF8.getter(v5, object);
              countAndFlagsBits = v135;
            }

            closure #1 in _StringGuts._convertedToSmall()(v109, countAndFlagsBits, v145, v78);
            if (a1)
            {
              goto LABEL_237;
            }

            countAndFlagsBits = v145[1];
            v5 = v145[0];
          }

LABEL_190:
          v110 = 0xE100000000000000;
          0xE100000000000000;
          v111 = 34;
          v112._rawBits = 1;
          v113._rawBits = 65537;
          v114._rawBits = _StringGuts.validateScalarRange(_:)(v112, v113, 0x22uLL, 0xE100000000000000)._rawBits;
          if (v114._rawBits < 0x10000)
          {
            v114._rawBits |= 3;
          }

          if (v114._rawBits >> 16 || (v115._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
          {
            v111 = specialized static String._copying(_:)(v114._rawBits, v115._rawBits, 0x22uLL, 0xE100000000000000);
            v110 = v117;
            0xE100000000000000;
          }

          if ((v110 & 0x2000000000000000) != 0)
          {
            v110;
          }

          else if ((v110 & 0x1000000000000000) != 0)
          {
            v111 = _StringGuts._foreignConvertedToSmall()(v111, v110);
            v141 = v140;
            v110;
            v110 = v141;
          }

          else
          {
            if ((v111 & 0x1000000000000000) != 0)
            {
              v129 = ((v110 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v130 = v111 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v129 = _StringObject.sharedUTF8.getter(v111, v110);
            }

            closure #1 in _StringGuts._convertedToSmall()(v129, v130, v145, v116);
            if (a1)
            {
              goto LABEL_237;
            }

            v110;
            v110 = v145[1];
            v111 = v145[0];
          }

          v118 = specialized _SmallString.init(_:appending:)(v5, countAndFlagsBits, v111, v110);
          if ((v119 & 1) == 0)
          {
            v120 = v118;
            object;
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v120;
          }
        }

LABEL_230:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v32 = v79 + 1;
      if (!__OFADD__(v79, 1))
      {
        goto LABEL_174;
      }
    }

    __break(1u);
LABEL_209:
    if ((v79 & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v79);
      v137 = v136;
      v79;
      v79 = v137;
    }

    else
    {
      a1 = v144;
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v125 = ((v79 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v126 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v125 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v79);
      }

      closure #1 in _StringGuts._convertedToSmall()(v125, v126, v145, v78);
      if (v144)
      {
        goto LABEL_238;
      }

      v79;
      v79 = v145[1];
      countAndFlagsBits = v145[0];
    }

LABEL_130:
    v87 = HIBYTE(v1) & 0xF;
    v88 = HIBYTE(v79) & 0xF;
    v89 = v88 + v87;
    if (v88 + v87 > 0xF)
    {
      goto LABEL_230;
    }

    object;
    if (v88)
    {
      v90 = 0;
      v91 = 0;
      v92 = 8 * v87;
      do
      {
        v93 = v79 >> (v90 & 0x38);
        if (v91 < 8)
        {
          v93 = countAndFlagsBits >> v90;
        }

        v94 = (v93 << (v92 & 0x38)) | ((-255 << (v92 & 0x38)) - 1) & v1;
        v95 = (v93 << v92) | ((-255 << v92) - 1) & v32;
        if (v87 <= 7)
        {
          v32 = v95;
        }

        else
        {
          v1 = v94;
        }

        ++v87;
        v92 += 8;
        v90 += 8;
        ++v91;
      }

      while (8 * v88 != v90);
    }

    v5;
    object;
    v96 = 0xA000000000000000;
    if (!(v32 & 0x8080808080808080 | v1 & 0x80808080808080))
    {
      v96 = 0xE000000000000000;
    }

    v146 = v32;
    v147 = v96 & 0xFF00000000000000 | (v89 << 56) | v1 & 0xFFFFFFFFFFFFFFLL;
    a1 = v144;
  }

  if (v105 < 8)
  {
    v5 = ((-255 << (8 * (HIBYTE(v147) & 7u))) - 1) & v146 | (34 << (8 * (HIBYTE(v147) & 7u)));
  }

  v147;
  0xE100000000000000;
  return v5;
}

Swift::Unicode::Scalar_optional __swiftcall Unicode.Scalar.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = specialized Collection.first.getter(a1._countAndFlagsBits, a1._object);
  if ((v3 & 0x100000000) != 0)
  {
    object;
    goto LABEL_5;
  }

  v4 = v3;
  rawBits = specialized Collection.count.getter(countAndFlagsBits, object)._rawBits;
  object;
  if (rawBits != 1)
  {
LABEL_5:
    v4 = 0;
    v6 = 1;
    return (v4 | (v6 << 32));
  }

  v6 = 0;
  return (v4 | (v6 << 32));
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Unicode.Scalar(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = specialized Collection.first.getter(a1, a2);
  if ((v6 & 0x100000000) != 0)
  {
    a2;
    goto LABEL_5;
  }

  v7 = v6;
  rawBits = specialized Collection.count.getter(a1, a2)._rawBits;
  a2;
  if (rawBits != 1)
  {
LABEL_5:
    v7 = 0;
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:
  *a3 = v7;
  *(a3 + 4) = v9;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Unicode.Scalar()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Unicode.Scalar(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Unicode::Scalar_optional __swiftcall Unicode.Scalar.init(_:)(Swift::Int a1)
{
  if (HIDWORD(a1) || a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800)
  {
    a1 = 0;
    v1 = 1;
  }

  else
  {
    v1 = 0;
  }

  return (a1 | (v1 << 32));
}

uint64_t static Unicode.UTF16.width(_:)(unsigned int a1)
{
  if (HIWORD(a1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t Unicode.Scalar.UTF16View.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = WORD1(a2);
  if (a1 == 1)
  {
    if (v2)
    {
      return a2 & 0x3FF | 0xFFFFDC00;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v2)
  {
    return a2;
  }

  result = ((a2 + 67043328) >> 10) + 55296;
  if ((result & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t static Unicode.UTF16.trailSurrogate(_:)(unsigned int a1)
{
  if (!HIWORD(a1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 & 0x3FF | 0xFFFFDC00;
}

uint64_t static Unicode.UTF16.leadSurrogate(_:)(unsigned int a1)
{
  if (!HIWORD(a1))
  {
LABEL_4:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = ((a1 + 67043328) >> 10) + 55296;
  if ((result & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_4;
  }

  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Unicode.Scalar.UTF16View@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Unicode.Scalar.UTF16View(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    if (*(v1 + 2))
    {
      if (v2 >= 2)
      {
        goto LABEL_4;
      }
    }

    else if (*result != 1)
    {
LABEL_4:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *result = v2;
  }

  return result;
}

unint64_t _ss7UnicodeO6ScalarV9UTF16ViewVSksSk5index_8offsetBy5IndexQzAJ_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3);
  *a3 = result;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Unicode.Scalar.UTF16View@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4);
  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8);
    v11 = 0;
    goto LABEL_11;
  }

  if (v9 < 0 || v9 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v11 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v11;
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance Unicode.Scalar.UTF16View(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*(v1 + 2))
  {
    v2 = 2;
  }

  *a1 = v2;
}

void protocol witness for Collection.indices.getter in conformance Unicode.Scalar.UTF16View(void *a1@<X8>)
{
  v2 = 1;
  if (*(v1 + 2))
  {
    v2 = 2;
  }

  *a1 = 0;
  a1[1] = v2;
}

unint64_t protocol witness for Collection.index(after:) in conformance Unicode.Scalar.UTF16View@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance Unicode.Scalar.UTF16View(unint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1);
  *a1 = result;
  return result;
}

unint64_t _ss7UnicodeO6ScalarV9UTF16ViewVSlsSl5countSivgTW_0()
{
  if (HIWORD(*v0))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return specialized RandomAccessCollection<>.distance(from:to:)(0, v1, *v0);
}

uint64_t Unicode.Scalar.UTF8View.endIndex.getter(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  if (a1 >= 0x10000)
  {
    v2 = 4;
  }

  if (a1 > 0x7FF)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t Unicode.Scalar.UTF8View.subscript.getter(unint64_t a1, unsigned int a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        if (a1 < 4)
        {
          return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a2, a1);
        }
      }

      else if (a1 < 3)
      {
        return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a2, a1);
      }
    }

    else if (a1 < 2)
    {
      return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a2, a1);
    }

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    goto LABEL_7;
  }

  return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a2, a1);
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t result, unint64_t *a2)
{
  v2 = 0;
  v3 = (result & 0x3F) << 8;
  v4 = (result >> 6) + v3 + 33217;
  v5 = (v3 | (result >> 6) & 0x3F) << 8;
  v6 = (((v5 | (result >> 12) & 0x3F) << 8) | (result >> 18)) - 2122219023;
  v7 = (result >> 12) + v5 + 8487393;
  if (WORD1(result))
  {
    v7 = v6;
  }

  if (result >= 0x800)
  {
    v4 = v7;
  }

  if (result < 0x80)
  {
    v8 = result + 1;
  }

  else
  {
    v8 = v4;
  }

  v9 = 4 - (__clz(v8) >> 3);
  v22 = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * v9));
  v10 = *a2;
  do
  {
    v21 = *(&v22 + v2);
    if ((~v10 & 0x700000000000000) != 0)
    {
      v11 = (v21 << ((v10 >> 53) & 0x38)) | v10;
    }

    else
    {
      v11 = v10 & 0xFF00000000000000;
      v12 = v10 & 0xFFFFFFFFFFFFFFLL | (v21 << 56);
      v13 = a2[4] ^ v12;
      v14 = a2[2];
      v15 = v14 + a2[1];
      v16 = v15 ^ __ROR8__(v14, 51);
      v17 = a2[3] + v13;
      v18 = v17 ^ __ROR8__(v13, 48);
      v19 = v18 + __ROR8__(v15, 32);
      v20 = v17 + v16;
      result = v20 ^ __ROR8__(v16, 47);
      a2[3] = __ROR8__(v20, 32);
      a2[4] = v19 ^ __ROR8__(v18, 43);
      a2[1] = v19 ^ v12;
      a2[2] = result;
    }

    ++v2;
    v10 = v11 + 0x100000000000000;
  }

  while (v9 != v2);
  *a2 = v10;
  return result;
}

unint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(unsigned int a1, uint64_t *a2)
{
  v3 = (a1 & 0x3F) << 8;
  v4 = (a1 >> 6) + v3 + 33217;
  v5 = (v3 | (a1 >> 6) & 0x3F) << 8;
  v6 = (((v5 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
  v7 = (a1 >> 12) + v5 + 8487393;
  if (HIWORD(a1))
  {
    v7 = v6;
  }

  if (a1 >= 0x800)
  {
    v4 = v7;
  }

  if (a1 < 0x80)
  {
    v4 = a1 + 1;
  }

  v8 = __clz(v4);
  v24 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (v8 & 0x18)));
  v9 = (v4 - 1) & ~(-1 << (32 - (v8 & 0x18)));
  v10 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native(*a2);
  *a2 = v10;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *a2 = result;
  }

  v12 = v8 >> 3;
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v10);
    v10 = result;
    *a2 = result;
  }

  *(v10 + 16) = v14 + 1;
  *(v10 + v14 + 32) = v9;
  if (v12 != 3)
  {
    v15 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native(*a2);
    *a2 = v15;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
      v15 = result;
      *a2 = result;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
      v15 = result;
      *a2 = result;
    }

    *(v15 + 16) = v17 + 1;
    *(v15 + v17 + 32) = BYTE1(v24);
    if (v12 != 2)
    {
      v18 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native(*a2);
      *a2 = v18;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
        v18 = result;
        *a2 = result;
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
        v18 = result;
        *a2 = result;
      }

      *(v18 + 16) = v20 + 1;
      *(v18 + v20 + 32) = BYTE2(v24);
      if (v12 != 1)
      {
        v21 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native(*a2);
        *a2 = v21;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
          v21 = result;
          *a2 = result;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
          *a2 = result;
        }

        *(v21 + 16) = v23 + 1;
        *(v21 + v23 + 32) = BYTE3(v24);
      }
    }
  }

  return result;
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(unsigned int a1, uint64_t (*a2)(void))
{
  if (a1 >= 0x80)
  {
    v8 = (a1 & 0x3F) << 8;
    if (a1 >= 0x800)
    {
      v9 = (v8 | (a1 >> 6) & 0x3F) << 8;
      v10 = (((v9 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
      v4 = (a1 >> 12) + v9 + 8487393;
      if (HIWORD(a1))
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (a1 >> 6) + v8 + 33217;
    }
  }

  else
  {
    v4 = a1 + 1;
  }

  v5 = __clz(v4);
  v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (v5 & 0x18)));
  result = a2();
  if (!v2)
  {
    v7 = v5 >> 3;
    if (v7 != 3)
    {
      result = (a2)(BYTE1(v11));
      if (v7 != 2)
      {
        result = (a2)(BYTE2(v11));
        if (v7 != 1)
        {
          return (a2)(BYTE3(v11));
        }
      }
    }
  }

  return result;
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(unsigned int a1, uint64_t *a2)
{
  v3 = (a1 & 0x3F) << 8;
  v4 = (a1 >> 6) + v3 + 33217;
  v5 = (v3 | (a1 >> 6) & 0x3F) << 8;
  v6 = (((v5 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
  v7 = (a1 >> 12) + v5 + 8487393;
  if (HIWORD(a1))
  {
    v7 = v6;
  }

  if (a1 >= 0x800)
  {
    v4 = v7;
  }

  if (a1 < 0x80)
  {
    v4 = a1 + 1;
  }

  v8 = __clz(v4);
  v9 = 4 - (v8 >> 3);
  __src = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v8 >> 3))));
  v10 = a2[1] & 0xFFFFFFFFFFFFFFFLL;
  result = specialized UnsafeMutablePointer.initialize(from:count:)(&__src, v9, (v10 + 32 + (*(v10 + 0x18) & 0xFFFFFFFFFFFFLL)));
  v12 = *(v10 + 16);
  v13 = (*(v10 + 24) & 0xFFFFFFFFFFFFLL) + v9;
  v14 = v13 | 0x3000000000000000;
  *(v10 + 24) = v13 | 0x3000000000000000;
  *(v10 + 32 + (v13 & 0xFFFFFFFFFFFFLL)) = 0;
  if (v12 < 0)
  {
    v15 = __StringStorage._breadcrumbsAddress.getter();
    v16 = *v15;
    *v15 = 0;
    result = v16;
    v14 = *(v10 + 24);
  }

  *a2 = v14;
  return result;
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(unsigned int a1)
{
  if (a1 >= 0x80)
  {
    v7 = (a1 & 0x3F) << 8;
    if (a1 >= 0x800)
    {
      v8 = (v7 | (a1 >> 6) & 0x3F) << 8;
      v9 = (((v8 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
      v1 = (a1 >> 12) + v8 + 8487393;
      if (HIWORD(a1))
      {
        v1 = v9;
      }
    }

    else
    {
      v1 = (a1 >> 6) + v7 + 33217;
    }
  }

  else
  {
    v1 = a1 + 1;
  }

  v2 = __clz(v1);
  v3 = 4 - (v2 >> 3);
  v10 = (v1 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v2 >> 3))));
  v4 = _allASCII(_:)(&v10, v3);
  return specialized static String._uncheckedFromUTF8(_:isASCII:)(&v10, v3, v4, v5);
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(unsigned int a1, unint64_t a2)
{
  if (a1 >= 0x80)
  {
    v5 = (a1 & 0x3F) << 8;
    if (a1 >= 0x800)
    {
      v6 = (v5 | (a1 >> 6) & 0x3F) << 8;
      v7 = (((v6 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
      v2 = (a1 >> 12) + v6 + 8487393;
      if (HIWORD(a1))
      {
        v2 = v7;
      }
    }

    else
    {
      v2 = (a1 >> 6) + v5 + 33217;
    }
  }

  else
  {
    v2 = a1 + 1;
  }

  v3 = 4 - (__clz(v2) >> 3);
  v8 = (v2 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * v3));
  if ((a2 & 0x8000000000000000) != 0 || v3 <= a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(&v8 + a2);
}

uint64_t _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(unsigned int a1, uint64_t (*a2)(uint64_t *))
{
  if (a1 >= 0x80)
  {
    v4 = (a1 & 0x3F) << 8;
    if (a1 >= 0x800)
    {
      v5 = (v4 | (a1 >> 6) & 0x3F) << 8;
      v6 = (((v5 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
      v2 = (a1 >> 12) + v5 + 8487393;
      if (HIWORD(a1))
      {
        v2 = v6;
      }
    }

    else
    {
      v2 = (a1 >> 6) + v4 + 33217;
    }
  }

  else
  {
    v2 = a1 + 1;
  }

  v7 = (v2 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v2) >> 3))));
  return a2(&v7);
}

uint64_t Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unsigned int a3)
{
  if (a3 >= 0x80)
  {
    v5 = (a3 & 0x3F) << 8;
    if (a3 >= 0x800)
    {
      v6 = (v5 | (a3 >> 6) & 0x3F) << 8;
      v7 = (((v6 | (a3 >> 12) & 0x3F) << 8) | (a3 >> 18)) - 2122219023;
      v3 = (a3 >> 12) + v6 + 8487393;
      if (HIWORD(a3))
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (a3 >> 6) + v5 + 33217;
    }
  }

  else
  {
    v3 = a3 + 1;
  }

  v8 = (v3 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v3) >> 3))));
  return a1(&v8);
}

unint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance Unicode.Scalar.UTF8View@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4);
  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8);
    v11 = 0;
    goto LABEL_11;
  }

  if (v9 < 0 || v9 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v11 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v11;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Unicode.Scalar.UTF8View@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Unicode.Scalar.UTF8View(unint64_t *result)
{
  v2 = *result - 1;
  if (!__OFSUB__(*result, 1))
  {
    v3 = *v1;
    if (*v1 < 0x80)
    {
      if (*result != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    if (v3 > 0x7FF)
    {
      if (HIWORD(v3))
      {
        if (v2 < 4)
        {
          goto LABEL_7;
        }
      }

      else if (v2 < 3)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 2)
    {
LABEL_7:
      *result = v2;
      return result;
    }

LABEL_4:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
  return result;
}

unint64_t _ss7UnicodeO6ScalarV8UTF8ViewVSksSk5index_8offsetBy5IndexQzAJ_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3);
  *a3 = result;
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance Unicode.Scalar.UTF8View(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 2;
  v4 = 3;
  if (*v1 >= 0x10000)
  {
    v4 = 4;
  }

  if (v2 > 0x7FF)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
}

uint64_t protocol witness for Collection.subscript.getter in conformance Unicode.Scalar.UTF16View@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1], *v3);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance Unicode.Scalar.UTF8View@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RandomAccessCollection<>.indices.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t protocol witness for Collection.index(after:) in conformance Unicode.Scalar.UTF8View@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance Unicode.Scalar.UTF8View(unint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1);
  *a1 = result;
  return result;
}

unint64_t protocol witness for Collection.count.getter in conformance Unicode.Scalar.UTF8View()
{
  v1 = *v0;
  v2 = 2;
  v3 = 3;
  if (*v0 >= 0x10000)
  {
    v3 = 4;
  }

  if (v1 > 0x7FF)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    v4 = v2;
  }

  else
  {
    v4 = 1;
  }

  return specialized RandomAccessCollection<>.distance(from:to:)(0, v4, v1);
}

uint64_t static Unicode.UTF8.encode(_:)(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    v3 = (a1 & 0x3F) << 8;
    v4 = (v3 | (a1 >> 6) & 0x3F) << 8;
    v5 = (((v4 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
    v6 = (a1 >> 12) + v4 + 8487393;
    if (HIWORD(a1))
    {
      v6 = v5;
    }

    v1 = (a1 >> 6) + v3 + 33217;
    if (a1 > 0x7FF)
    {
      return v6;
    }
  }

  else
  {
    return a1 + 1;
  }

  return v1;
}

uint64_t Float.customMirror.getter@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *(&v16 + 1) = a2;
  v15[0] = 0;
  v15[1] = 0;
  v4 = static Mirror._superclassIterator<A>(_:_:)(&v16 + 4, v15, &type metadata for Float);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v8 = swift_allocObject(v7, 0x40, 7uLL);
  v8[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v8[7] = 0;
  v9 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v10 = swift_allocObject(v9, 0x18, 7uLL);
  v10[2] = 0;
  v11 = swift_allocObject(v9, 0x18, 7uLL);
  v11[2] = 0;
  v8[2] = v10;
  v8[3] = &protocol witness table for _IndexBox<A>;
  v8[4] = v11;
  v8[5] = &protocol witness table for _IndexBox<A>;
  *&v16 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v15, &v16, &type metadata for Float, v12, 6uLL);
  v14 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  *a1 = &type metadata for Float;
  *(a1 + 8) = v8;
  *(a1 + 16) = 9;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v14;
  return result;
}

float protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance Float@<S0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 32) = 3;
  return result;
}

uint64_t Double.customMirror.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v17 = a2;
  v15[0] = 0;
  v15[1] = 0;
  v4 = static Mirror._superclassIterator<A>(_:_:)(&v17, v15, &type metadata for Double);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v8 = swift_allocObject(v7, 0x40, 7uLL);
  v8[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v8[7] = 0;
  v9 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v10 = swift_allocObject(v9, 0x18, 7uLL);
  v10[2] = 0;
  v11 = swift_allocObject(v9, 0x18, 7uLL);
  v11[2] = 0;
  v8[2] = v10;
  v8[3] = &protocol witness table for _IndexBox<A>;
  v8[4] = v11;
  v8[5] = &protocol witness table for _IndexBox<A>;
  v16 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v15, &v16, &type metadata for Double, v12, 6uLL);
  v14 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  *a1 = &type metadata for Double;
  *(a1 + 8) = v8;
  *(a1 + 16) = 9;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v14;
  return result;
}

double protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance Double@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 32) = 4;
  return result;
}

uint64_t Bool.customMirror.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  BYTE1(v16) = a1;
  v15[0] = 0;
  v15[1] = 0;
  v4 = static Mirror._superclassIterator<A>(_:_:)(&v16 + 1, v15, &type metadata for Bool);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v8 = swift_allocObject(v7, 0x40, 7uLL);
  v8[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v8[7] = 0;
  v9 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v10 = swift_allocObject(v9, 0x18, 7uLL);
  v10[2] = 0;
  v11 = swift_allocObject(v9, 0x18, 7uLL);
  v11[2] = 0;
  v8[2] = v10;
  v8[3] = &protocol witness table for _IndexBox<A>;
  v8[4] = v11;
  v8[5] = &protocol witness table for _IndexBox<A>;
  LOBYTE(v16) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v15, &v16, &type metadata for Bool, v12, 6uLL);
  v14 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  *a2 = &type metadata for Bool;
  *(a2 + 8) = v8;
  *(a2 + 16) = 9;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v14;
  return result;
}

uint64_t Bool.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[32] = 13;
  return result;
}

uint64_t String.customMirror.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v17[0] = 0;
  v17[1] = 0;
  a2;
  v6 = static Mirror._superclassIterator<A>(_:_:)(v19, v17, &type metadata for String);
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v10 = swift_allocObject(v9, 0x40, 7uLL);
  v10[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v10[7] = 0;
  v11 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v12 = swift_allocObject(v11, 0x18, 7uLL);
  v12[2] = 0;
  v13 = swift_allocObject(v11, 0x18, 7uLL);
  v13[2] = 0;
  v10[2] = v12;
  v10[3] = &protocol witness table for _IndexBox<A>;
  v10[4] = v13;
  v10[5] = &protocol witness table for _IndexBox<A>;
  v18[0] = a1;
  v18[1] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v17, v18, &type metadata for String, v14, 6uLL);
  v16 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  *a3 = &type metadata for String;
  *(a3 + 8) = v10;
  *(a3 + 16) = 9;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = v16;
  return result;
}

uint64_t Character.customMirror.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v17[0] = 0;
  v17[1] = 0;
  a2;
  v6 = static Mirror._superclassIterator<A>(_:_:)(v19, v17, &type metadata for Character);
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v10 = swift_allocObject(v9, 0x40, 7uLL);
  v10[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v10[7] = 0;
  v11 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v12 = swift_allocObject(v11, 0x18, 7uLL);
  v12[2] = 0;
  v13 = swift_allocObject(v11, 0x18, 7uLL);
  v13[2] = 0;
  v10[2] = v12;
  v10[3] = &protocol witness table for _IndexBox<A>;
  v10[4] = v13;
  v10[5] = &protocol witness table for _IndexBox<A>;
  v18[0] = a1;
  v18[1] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v17, v18, &type metadata for Character, v14, 6uLL);
  v16 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  *a3 = &type metadata for Character;
  *(a3 + 8) = v10;
  *(a3 + 16) = 9;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = v16;
  return result;
}

unint64_t Character.customPlaygroundQuickLook.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 32) = 0;
  return a2;
}

unint64_t _sSSs30_CustomPlaygroundQuickLookablessAAP06custombC4Looks01_bcF0OvgTW_0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 32) = 0;
  return v2;
}

uint64_t Unicode.Scalar.customMirror.getter@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  HIDWORD(v16) = a1;
  v15[0] = 0;
  v15[1] = 0;
  v4 = static Mirror._superclassIterator<A>(_:_:)(&v16 + 4, v15, &type metadata for Unicode.Scalar);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v8 = swift_allocObject(v7, 0x40, 7uLL);
  v8[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v8[7] = 0;
  v9 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v10 = swift_allocObject(v9, 0x18, 7uLL);
  v10[2] = 0;
  v11 = swift_allocObject(v9, 0x18, 7uLL);
  v11[2] = 0;
  v8[2] = v10;
  v8[3] = &protocol witness table for _IndexBox<A>;
  v8[4] = v11;
  v8[5] = &protocol witness table for _IndexBox<A>;
  LODWORD(v16) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v15, &v16, &type metadata for Unicode.Scalar, v12, 6uLL);
  v14 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  *a2 = &type metadata for Unicode.Scalar;
  *(a2 + 8) = v8;
  *(a2 + 16) = 9;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v14;
  return result;
}

uint64_t UInt8.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 2;
  return result;
}

uint64_t UInt8.customMirror.getter@<X0>(char a1@<W0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  BYTE1(v20) = a1;
  v19[0] = 0;
  v19[1] = 0;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v20 + 1, v19, a2);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x40, 7uLL);
  v12[6] = a3;
  v12[7] = 0;
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 0;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  LOBYTE(v20) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v19, &v20, a2, v16, 6uLL);
  v18 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  *a4 = a2;
  *(a4 + 8) = v12;
  *(a4 + 16) = 9;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = v18;
  return result;
}

uint64_t Int8.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 1;
  return result;
}

uint64_t UInt16.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 2;
  return result;
}

uint64_t UInt16.customMirror.getter@<X0>(__int16 a1@<W0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WORD1(v20) = a1;
  v19[0] = 0;
  v19[1] = 0;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v20 + 2, v19, a2);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x40, 7uLL);
  v12[6] = a3;
  v12[7] = 0;
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 0;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  LOWORD(v20) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v19, &v20, a2, v16, 6uLL);
  v18 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  *a4 = a2;
  *(a4 + 8) = v12;
  *(a4 + 16) = 9;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = v18;
  return result;
}

uint64_t Int16.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 1;
  return result;
}

uint64_t UInt32.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 2;
  return result;
}

uint64_t UInt32.customMirror.getter@<X0>(int a1@<W0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  HIDWORD(v20) = a1;
  v19[0] = 0;
  v19[1] = 0;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v20 + 4, v19, a2);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x40, 7uLL);
  v12[6] = a3;
  v12[7] = 0;
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 0;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  LODWORD(v20) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v19, &v20, a2, v16, 6uLL);
  v18 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  *a4 = a2;
  *(a4 + 8) = v12;
  *(a4 + 16) = 9;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = v18;
  return result;
}

uint64_t Int32.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 1;
  return result;
}

uint64_t UInt64.customMirror.getter@<X0>(unint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  v19[0] = 0;
  v19[1] = 0;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v21, v19, a2);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x40, 7uLL);
  v12[6] = a3;
  v12[7] = 0;
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 0;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  v20 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v19, &v20, a2, v16, 6uLL);
  v18 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  *a4 = a2;
  *(a4 + 8) = v12;
  *(a4 + 16) = 9;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = v18;
  return result;
}

uint64_t UInt.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 2;
  return result;
}

uint64_t Int.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 1;
  return result;
}

uint64_t UInt128.customMirror.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[0] = a1;
  v23[1] = a2;
  v21[0] = 0;
  v21[1] = 0;
  v10 = static Mirror._superclassIterator<A>(_:_:)(v23, v21, a3);
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v14 = swift_allocObject(v13, 0x40, 7uLL);
  v14[6] = a4;
  v14[7] = 0;
  v15 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v16 = swift_allocObject(v15, 0x18, 7uLL);
  v16[2] = 0;
  v17 = swift_allocObject(v15, 0x18, 7uLL);
  v17[2] = 0;
  v14[2] = v16;
  v14[3] = &protocol witness table for _IndexBox<A>;
  v14[4] = v17;
  v14[5] = &protocol witness table for _IndexBox<A>;
  v22[0] = a1;
  v22[1] = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v21, v22, a3, v18, 6uLL);
  v20 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  *a5 = a3;
  *(a5 + 8) = v14;
  *(a5 + 16) = 9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v12;
  *(a5 + 40) = v20;
  return result;
}

id _autorelease(_:)(void *a1)
{
  v1 = a1;

  return swift_unknownObjectRetain(v1);
}

Swift::String_optional __swiftcall _getFunctionFullNameFromMangledName(mangledName:)(Swift::String mangledName)
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(mangledName._countAndFlagsBits, mangledName._object);
  FunctionFullNameFromMangledName = swift_getFunctionFullNameFromMangledName(v1 + 4, v1[2]);
  if (v3)
  {
    v4 = v3;
    if (v3 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5 = FunctionFullNameFromMangledName;
    v1;
    v6 = validateUTF8(_:)(v5, v4);
    if (v6 < 0)
    {
      v10 = repairUTF8(_:firstKnownBrokenRange:)(v5, v4, v7, v8);
    }

    else
    {
      v10 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v5, v4, v6 & 1, v9);
    }
  }

  else
  {
    v1;
    v10 = 0;
    v11 = 0;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t _mangledTypeName(_:)(unint64_t a1)
{
  MangledTypeName = swift_getMangledTypeName(a1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = MangledTypeName;
  v4 = v2;
  v5 = validateUTF8(_:)(MangledTypeName, v2);
  if (v5 < 0)
  {
    repairUTF8(_:firstKnownBrokenRange:)(v3, v4, v6, v7);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return specialized static String._uncheckedFromUTF8(_:isASCII:)(v3, v4, v5 & 1, v8);
}

uint64_t _typeByName(_:)(unint64_t a1, unint64_t a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  TypeByMangledNameUntrusted = swift_stdlib_getTypeByMangledNameUntrusted(v2 + 32, v2[2]);
  v2;
  return TypeByMangledNameUntrusted;
}

uint64_t MutableCollection.subscript.getter@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a1;
  v58 = a4;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v55 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v52 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v56 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v22);
  v53 = *(v56 - 8);
  v23 = MEMORY[0x1EEE9AC00](v56);
  v54 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  (*(v6 + 64))(a2, v6);
  v27 = *(v6 + 72);
  v59 = v4;
  v57 = a2;
  v51 = v6;
  v27(a2, v6);
  if (((*(AssociatedConformanceWitness + 24))(v20, v18, v8, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = v52;
  v29 = *(v52 + 32);
  v29(v15, v20, v8);
  v29(&v15[*(v10 + 48)], v18, v8);
  v30 = v29;
  v31 = v55;
  v32 = v26;
  v33 = v50;
  (*(v55 + 16))(v50, v15, v10);
  v48 = *(v10 + 48);
  v29(v32, v33, v8);
  v49 = v29;
  v34 = *(v28 + 8);
  v34(&v33[v48], v8);
  (*(v31 + 32))(v33, v15, v10);
  v35 = v56;
  v30(&v32[*(v56 + 36)], &v33[*(v10 + 48)], v8);
  v34(v33, v8);
  v36 = v51;
  v37 = v59;
  v38 = v60;
  v39 = v57;
  (*(v51 + 176))(v60, v32, v57, v51);
  v40 = v53;
  (*(v53 + 8))(v32, v35);
  v42 = type metadata accessor for Slice(0, v39, v36, v41);
  v43 = v58;
  (*(*(v39 - 8) + 16))(&v58[*(v42 + 40)], v37, v39);
  v44 = v54;
  (*(v40 + 16))(v54, v38, v35);
  v45 = v49;
  v49(v43, v44, v8);
  return v45(&v43[*(v42 + 36)], &v44[*(v35 + 36)], v8);
}

uint64_t MutableCollection.subscript.setter(uint64_t a1, char *a2, const char *a3, uint64_t a4)
{
  specialized MutableCollection<>.subscript.setter(a1, a2, a3, a4);
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v13 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v12);
  (*(*(v13 - 8) + 8))(a2, v13);
  v15 = type metadata accessor for Slice(0, a3, v8, v14);
  v16 = *(*(v15 - 8) + 8);

  return v16(a1, v15);
}

uint64_t _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v106 = a3;
  v99 = a2;
  v104 = a6;
  v11 = *(a6 + 8);
  swift_getAssociatedTypeWitness(0, *(v11 + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v102 = v12;
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v83 - v13;
  swift_getAssociatedTypeWitness(255, v11, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  swift_getTupleTypeMetadata2(0, v15, v15, "lower upper ", 0);
  v97 = v16;
  v92 = *(v16 - 1);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v98 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v94 = &v83 - v20;
  v21 = *(v15 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v100 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v90 = &v83 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v89 = &v83 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v105 = &v83 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v91 = &v83 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v83 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v83 - v35;
  v108 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v39 = type metadata accessor for Range(0, v15, AssociatedConformanceWitness, v38);
  v95 = *(v39 - 8);
  v96 = v39;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v111 = &v83 - v41;
  v42 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v44 = *(v42 + 16);
  v93 = &v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44();
  (*(v11 + 64))(a4, v11);
  v45 = *(v11 + 72);
  v103 = a1;
  v107 = a4;
  v45(a4, v11);
  if (((*(AssociatedConformanceWitness + 24))(v36, v34, v15, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = *(v21 + 32);
  v88 = AssociatedConformanceWitness;
  v47 = v94;
  v46(v94, v36, v15);
  v87 = v42;
  v48 = v97;
  v46(&v47[*(v97 + 12)], v34, v15);
  v49 = v92;
  v50 = v98;
  (*(v92 + 16))(v98, v47, v48);
  v86 = *(v48 + 12);
  v46(v111, v50, v15);
  v109 = v11;
  v110 = v21;
  v51 = v21 + 8;
  v52 = *(v21 + 8);
  v52(&v50[v86], v15);
  (*(v49 + 32))(v50, v47, v48);
  v53 = *(v48 + 12);
  v54 = v96;
  v55 = v111;
  v46(&v111[*(v96 + 36)], &v50[v53], v15);
  v86 = v51;
  v85 = v52;
  v52(v50, v15);
  v56 = v99;
  v57 = v93;
  v58 = v107;
  (*(v109 + 176))(v99, v55, v107);
  (*(v95 + 8))(v55, v54);
  (*(v87 + 8))(v57, v58);
  v60 = v110 + 16;
  v59 = *(v110 + 16);
  v59(v91, v56, v15);
  v110 = v60;
  v61 = &v56[*(v54 + 36)];
  v62 = v105;
  v99 = v59;
  v59(v105, v61, v15);
  v63 = v89;
  v64 = v108;
  (*(a7 + 64))(v108, a7);
  v65 = v90;
  (*(a7 + 72))(v64, a7);
  v66 = *(v88 + 8);
  v111 = *(v66 + 1);
  v67 = v65;
  v68 = v91;
  if (((v111)(v91, v62, v15, v66) & 1) == 0)
  {
    v96 = a7 + 80;
    v95 = v84 + 16;
    v94 = (v104 + 24);
    v93 = (v109 + 192);
    v92 = a7 + 192;
    v97 = v66 + 8;
    v98 = v66;
    do
    {
      if ((v111)(v63, v67, v15, v66))
      {
        break;
      }

      v69 = v100;
      (v99)(v100, v68, v15);
      v70 = v67;
      v71 = v108;
      v72 = (*(a7 + 80))(v112, v63, v108, a7);
      v73 = v15;
      v74 = v63;
      v75 = v101;
      (*v95)(v101);
      v72(v112, 0);
      v76 = v75;
      v77 = v107;
      (*(v104 + 24))(v76, v69, v107);
      v78 = v77;
      v63 = v74;
      v15 = v73;
      (*(v109 + 192))(v68, v78);
      v62 = v105;
      v79 = v71;
      v67 = v70;
      v66 = v98;
      (*(a7 + 192))(v63, v79, a7);
    }

    while (((v111)(v68, v62, v15, v66) & 1) == 0);
  }

  v80 = v111;
  if (((v111)(v68, v62, v15, v66) & 1) == 0 || (v80(v63, v67, v15, v66) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v81 = v85;
  v85(v67, v15);
  v81(v63, v15);
  v81(v62, v15);
  return (v81)(v68, v15);
}

uint64_t (*MutableCollection.subscript.modify(void *a1, uint64_t a2, const char *a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x58, 0x1B2EuLL);
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v11 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v12 = *(a4 + 8);
  v13 = type metadata accessor for Slice(0, a3, v12, v10);
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[5] = swift_coroFrameAlloc(v15, 0x1B2EuLL);
    v16 = swift_coroFrameAlloc(v15, 0x1B2EuLL);
  }

  else
  {
    v11[5] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness(255, v12, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a3, v18, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = type metadata accessor for Range(0, v19, AssociatedConformanceWitness, v21);
  v11[7] = v22;
  v23 = *(v22 - 8);
  v24 = v23;
  v11[8] = v23;
  v25 = *(v23 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[9] = swift_coroFrameAlloc(v25, 0x1B2EuLL);
    v26 = swift_coroFrameAlloc(v25, 0x1B2EuLL);
  }

  else
  {
    v11[9] = malloc(v25);
    v26 = malloc(v25);
  }

  v11[10] = v26;
  (*(v24 + 16))();
  MutableCollection.subscript.getter(a2, a3, a4, v17);
  return MutableCollection.subscript.modify;
}

void MutableCollection<>.subscript.modify(unint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[9];
  v5 = (*a1)[8];
  v17 = (*a1)[7];
  v18 = (*a1)[10];
  v6 = (*a1)[5];
  v7 = (*a1)[6];
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    (*(v9 + 16))(v3[5], v3[6], v3[3]);
    (*(v5 + 32))(v4, v18, v17);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v8, v13);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v11, v4, v6, v12, v8, v10, WitnessTable);
    (*(v5 + 8))(v4, v17);
    v15 = *(v9 + 8);
    v15(v6, v8);
    v15(v7, v8);
  }

  else
  {
    v16 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v3[3], a3);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v11, v18, v7, v12, v8, v10, v16);
    (*(v5 + 8))(v18, v17);
    (*(v9 + 8))(v7, v8);
  }

  free(v18);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t MutableCollection.moveSubranges(_:to:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v78 = a5;
  v96 = a4;
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v9, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  swift_getTupleTypeMetadata2(0, v11, v11, "lower upper ", 0);
  v101 = v12;
  v107 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v76 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a3, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v100 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v16);
  v103 = *(v100 - 8);
  v17 = MEMORY[0x1EEE9AC00](v100);
  v80 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v85 = &v76 - v20;
  v21 = *(v11 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v87 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v79 = &v76 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v91 = &v76 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v97 = &v76 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - v30;
  v32 = *a1;
  v33 = *(v9 + 64);
  v93 = v9 + 64;
  v94 = v32;
  v105 = v33;
  v33(a3, v9);
  v99 = *(v9 + 152);
  v81 = v99(v31, a2, a3, v9);
  v104 = v21;
  v34 = *(v21 + 8);
  v34(v31, v11);
  v35 = *(v9 + 72);
  v83 = v9 + 72;
  v82 = v35;
  v35(a3, v9);
  v36 = v11;
  v37 = v99(a2, v31, a3, v9);
  v98 = v34;
  v99 = (v21 + 8);
  v34(v31, v11);
  v38 = v91;
  v88 = v5;
  v95 = a3;
  v86 = v9;
  v105(a3, v9);
  v39 = *(AssociatedConformanceWitness + 24);
  v105 = a2;
  v92 = v39;
  v93 = AssociatedConformanceWitness + 24;
  if (((v39)(v38, a2, v11) & 1) == 0 || (v77 = v37, v40 = v104, v41 = *(v104 + 32), v42 = v102, v41(v102, v38, v36), v43 = v101, v44 = *(v40 + 16), v45 = &v42[*(v101 + 48)], v104 = v40 + 16, v76 = v44, v44(v45, v105, v36), v46 = v107, v47 = v84, v90 = *(v107 + 16), v91 = (v107 + 16), v90(v84, v42, v43), v48 = *(v43 + 48), v49 = v85, v41(v85, v47, v36), v50 = v98, v98(&v47[v48], v36), v51 = *(v46 + 32), v107 = v46 + 32, v89 = v51, v51(v47, v42, v43), v52 = v100, v41((v49 + *(v100 + 36)), &v47[*(v43 + 48)], v36), v53 = v50(v47, v36), MEMORY[0x1EEE9AC00](v53), v54 = v95, v73 = v95, v74 = v96, v75 = v94, MutableCollection._indexedStablePartition(count:range:by:)(v81, v49, partial apply for closure #1 in MutableCollection.moveSubranges(_:to:), (&v76 - 6), v95, v96, v97), v81 = 0, v55 = v52, v56 = v103 + 8, v85 = *(v103 + 8), (v85)(v49, v55), v57 = v87, v82(v54, v86), (v92(v105, v57, v36, AssociatedConformanceWitness) & 1) == 0) || (v58 = v102, v76(v102, v105, v36), v59 = v101, v41(&v58[*(v101 + 48)], v57, v36), v90(v47, v58, v59), v60 = *(v59 + 48), v103 = v56, v61 = v80, v41(v80, v47, v36), v62 = v98, v98(&v47[v60], v36), v89(v47, v58, v59), v63 = *(v59 + 48), v64 = v100, v41((v61 + *(v100 + 36)), &v47[v63], v36), v65 = v62(v47, v36), MEMORY[0x1EEE9AC00](v65), v73 = v95, v74 = v96, v75 = v94, v66 = v79, MutableCollection._indexedStablePartition(count:range:by:)(v77, v61, partial apply for closure #2 in MutableCollection.moveSubranges(_:to:), (&v76 - 6), v95, v96, v79), (v85)(v61, v64), (v92(v97, v66, v36, AssociatedConformanceWitness) & 1) == 0))
  {
    LODWORD(v75) = 0;
    v74 = 760;
    LOBYTE(v73) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = v102;
  v41(v102, v97, v36);
  v68 = v101;
  v41(&v67[*(v101 + 48)], v66, v36);
  v90(v47, v67, v68);
  v69 = *(v68 + 48);
  v70 = v78;
  v41(v78, v47, v36);
  v71 = v98;
  v98(&v47[v69], v36);
  v89(v47, v67, v68);
  v41(&v70[*(v100 + 36)], &v47[*(v68 + 48)], v36);
  return v71(v47, v36);
}

uint64_t RangeSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  v6;
  LOBYTE(a1) = RangeSet.Ranges._contains(_:)(a1, v7);
  v6;
  return a1 & 1;
}

uint64_t _NativeDictionary.uncheckedInitialize(at:toKey:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a5 - 8) + 32))(*(a4 + 48) + *(*(a5 - 8) + 72) * a1, a2, a5);
  v10 = *(a6 - 8);
  v11 = *(v10 + 32);
  v12 = *(a4 + 56) + *(v10 + 72) * a1;

  return v11(v12, a3, a6);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(int64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    a1 = *(*v2 + 24);
  }

  v6 = _ss18_DictionaryStorageC6resize8original8capacity4moveAByxq_Gs05__RawaB0C_SiSbtFZSO_SiTt2g5Tf4dnd_nTm(a1, canonical specialized generic type metadata accessor for _DictionaryStorage<ObjectIdentifier, Int>);
  v7 = v6;
  if (v5[1].i64[0])
  {
    v26 = a2;
    v8 = 0;
    v9 = v5 + 4;
    v10 = 1 << v5[2].i8[0];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v5[4].i64[0];
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9->u64[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        while (2)
        {
          v18 = v15 | (v8 << 6);
          v19 = *(v5[3].i64[0] + 8 * v18);
          v20 = *(v5[3].i64[1] + 8 * v18);
          v21 = specialized static Hasher._hash(seed:_:)(v7[5], v19);
          v22 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v19, v21);
          if ((v23 & 1) == 0)
          {
            *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
            *(v7[6] + 8 * v22) = v19;
            *(v7[7] + 8 * v22) = v20;
            ++v7[2];
            if (!v12)
            {
              goto LABEL_8;
            }

LABEL_7:
            v15 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            continue;
          }

          break;
        }

LABEL_23:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for ObjectIdentifier);
      }
    }

    if (v26)
    {
      v24 = 1 << v5[2].i8[0];
      if (v24 > 63)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v24 + 63) >> 6, v5 + 4);
      }

      else
      {
        v9->i64[0] = -1 << v24;
      }

      v5[1].i64[0] = 0;
    }
  }

  result = v5;
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    a1 = *(*v2 + 24);
  }

  v6 = _ss18_DictionaryStorageC6resize8original8capacity4moveAByxq_Gs05__RawaB0C_SiSbtFZSO_SiTt2g5Tf4dnd_nTm(a1, canonical specialized generic type metadata accessor for _DictionaryStorage<Int, Int>);
  v7 = v6;
  if (v5[1].i64[0])
  {
    v26 = a2;
    v8 = 0;
    v9 = v5 + 4;
    v10 = 1 << v5[2].i8[0];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v5[4].i64[0];
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9->u64[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        while (2)
        {
          v18 = v15 | (v8 << 6);
          v19 = *(v5[3].i64[0] + 8 * v18);
          v20 = *(v5[3].i64[1] + 8 * v18);
          v21 = specialized static Hasher._hash(seed:_:)(v7[5], v19);
          v22 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v19, v21);
          if ((v23 & 1) == 0)
          {
            *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
            *(v7[6] + 8 * v22) = v19;
            *(v7[7] + 8 * v22) = v20;
            ++v7[2];
            if (!v12)
            {
              goto LABEL_8;
            }

LABEL_7:
            v15 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            continue;
          }

          break;
        }

LABEL_23:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int);
      }
    }

    if (v26)
    {
      v24 = 1 << v5[2].i8[0];
      if (v24 > 63)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v24 + 63) >> 6, v5 + 4);
      }

      else
      {
        v9->i64[0] = -1 << v24;
      }

      v5[1].i64[0] = 0;
    }
  }

  result = v5;
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = *v2;
  if (*(*v2 + 24) > a1)
  {
    a1 = *(*v2 + 24);
  }

  v4 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(a1, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SSTt2g5);
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 64);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 64);
    v11 = (v8 + 63) >> 6;
    v30 = v4 + 64;
    v31 = v3;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_8:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7->u64[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        while (2)
        {
          v15 = 16 * (v12 | (v6 << 6));
          v16 = (*(v3 + 48) + v15);
          v17 = *v16;
          v18 = v16[1];
          v19 = (*(v3 + 56) + v15);
          v20 = *v19;
          v21 = v19[1];
          if ((a2 & 1) == 0)
          {
            v16[1];
            v21;
          }

          v22 = _swift_stdlib_Hashing_parameters ^ v5[5];
          v33[0] = 0;
          v33[1] = v22 ^ 0x736F6D6570736575;
          v33[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
          v33[3] = v22 ^ 0x6C7967656E657261;
          v33[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
          v34 = 0u;
          v35 = 0u;
          String.hash(into:)(v33, v17, v18);
          v23 = Hasher._finalize()();
          v24 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v17, v18, v23);
          if ((v25 & 1) == 0)
          {
            *(v30 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
            v26 = (v5[6] + 16 * v24);
            *v26 = v17;
            v26[1] = v18;
            v27 = (v5[7] + 16 * v24);
            *v27 = v20;
            v27[1] = v21;
            ++v5[2];
            v3 = v31;
            if (!v10)
            {
              goto LABEL_8;
            }

LABEL_7:
            v12 = __clz(__rbit64(v10));
            v10 &= v10 - 1;
            continue;
          }

          break;
        }

LABEL_25:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }
    }

    if (a2)
    {
      v28 = 1 << *(v3 + 32);
      if (v28 > 63)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v7);
      }

      else
      {
        v7->i64[0] = -1 << v28;
      }

      *(v3 + 16) = 0;
    }
  }

  result = v3;
  *v2 = v5;
  return result;
}

{
  v3 = *v2;
  if ((*v2)[1].i64[1] > a1)
  {
    a1 = (*v2)[1].i64[1];
  }

  v4 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(a1, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_s11AnyHashableVTt2g5);
  v5 = v4;
  if (v3[1].i64[0])
  {
    v6 = 0;
    v7 = v3 + 4;
    v8 = 1 << v3[2].i8[0];
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v3[4].i64[0];
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 64;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_8:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7->u64[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        while (2)
        {
          v16 = v13 | (v6 << 6);
          v17 = (v3[3].i64[0] + 16 * v16);
          v18 = *v17;
          v19 = v17[1];
          v20 = v3[3].i64[1] + 40 * v16;
          if (a2)
          {
            v21 = *v20;
            v22 = *(v20 + 16);
            v39 = *(v20 + 32);
            v37 = v21;
            v38 = v22;
          }

          else
          {
            outlined init with copy of AnyHashable(v20, &v37);
            v19;
          }

          v23 = _swift_stdlib_Hashing_parameters ^ v5[2].i64[1];
          v34[0] = 0;
          v34[1] = v23 ^ 0x736F6D6570736575;
          v34[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
          v34[3] = v23 ^ 0x6C7967656E657261;
          v34[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
          v35 = 0u;
          v36 = 0u;
          String.hash(into:)(v34, v18, v19);
          v24 = Hasher._finalize()();
          v25 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v18, v19, v24);
          if ((v26 & 1) == 0)
          {
            *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
            v27 = (v5[3].i64[0] + 16 * v25);
            *v27 = v18;
            v27[1] = v19;
            v28 = v5[3].i64[1] + 40 * v25;
            v29 = v37;
            v30 = v38;
            *(v28 + 32) = v39;
            *v28 = v29;
            *(v28 + 16) = v30;
            ++v5[1].i64[0];
            if (!v10)
            {
              goto LABEL_8;
            }

LABEL_7:
            v13 = __clz(__rbit64(v10));
            v10 &= v10 - 1;
            continue;
          }

          break;
        }

LABEL_27:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }
    }

    if (a2)
    {
      v31 = 1 << v3[2].i8[0];
      if (v31 >= 64)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v31 + 63) >> 6, v3 + 4);
      }

      else
      {
        v7->i64[0] = -1 << v31;
      }

      v3[1].i64[0] = 0;
    }
  }

  result = v3;
  *v2 = v5;
  return result;
}

{
  v3 = *v2;
  if ((*v2)[1].i64[1] > a1)
  {
    a1 = (*v2)[1].i64[1];
  }

  v4 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(a1, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5);
  if (v3[1].i64[0])
  {
    v5 = 0;
    v6 = v3 + 4;
    v7 = 1 << v3[2].i8[0];
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v3[4].i64[0];
    v10 = (v7 + 63) >> 6;
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_8:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6->u64[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        while (2)
        {
          v14 = v11 | (v5 << 6);
          v15 = (v3[3].i64[0] + 16 * v14);
          v16 = *v15;
          v17 = v15[1];
          v18 = (v3[3].i64[1] + 32 * v14);
          if (a2)
          {
            outlined init with take of Any(v18, v30);
          }

          else
          {
            outlined init with copy of Any(v18, v30);
            v17;
          }

          v19 = _swift_stdlib_Hashing_parameters ^ v4[2].i64[1];
          v27[0] = 0;
          v27[1] = v19 ^ 0x736F6D6570736575;
          v27[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
          v27[3] = v19 ^ 0x6C7967656E657261;
          v27[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
          v28 = 0u;
          v29 = 0u;
          String.hash(into:)(v27, v16, v17);
          v20 = Hasher._finalize()();
          v21 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v16, v17, v20);
          if ((v22 & 1) == 0)
          {
            *(v4[4].i64 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
            v23 = (v4[3].i64[0] + 16 * v21);
            *v23 = v16;
            v23[1] = v17;
            outlined init with take of Any(v30, (v4[3].i64[1] + 32 * v21));
            ++v4[1].i64[0];
            if (!v9)
            {
              goto LABEL_8;
            }

LABEL_7:
            v11 = __clz(__rbit64(v9));
            v9 &= v9 - 1;
            continue;
          }

          break;
        }

LABEL_27:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }
    }

    if (a2)
    {
      v24 = 1 << v3[2].i8[0];
      if (v24 >= 64)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v24 + 63) >> 6, v3 + 4);
      }

      else
      {
        v6->i64[0] = -1 << v24;
      }

      v3[1].i64[0] = 0;
    }
  }

  result = v3;
  *v2 = v4;
  return result;
}

{
  v3 = *v2;
  if ((*v2)[1].i64[1] > a1)
  {
    a1 = (*v2)[1].i64[1];
  }

  v4 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(a1, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_ypTt2g5);
  v5 = v4;
  if (!v3[1].i64[0])
  {
    goto LABEL_25;
  }

  v6 = 0;
  v7 = v3 + 4;
  v8 = 1 << v3[2].i8[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v3[4].i64[0];
  v11 = (v8 + 63) >> 6;
  v32 = v2;
  v33 = v4 + 64;
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_8:
  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v6 >= v11)
    {
      break;
    }

    v14 = v7->u64[v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      while (2)
      {
        v15 = v12 | (v6 << 6);
        v16 = v3[3].i64[0] + 40 * v15;
        if (a2)
        {
          v17 = *v16;
          v18 = *(v16 + 16);
          v41 = *(v16 + 32);
          v39 = v17;
          v40 = v18;
          outlined init with take of Any((v3[3].i64[1] + 32 * v15), v38);
        }

        else
        {
          outlined init with copy of AnyHashable(v16, &v39);
          outlined init with copy of Any(v3[3].i64[1] + 32 * v15, v38);
        }

        v19 = v5[2].i64[1];
        v20 = *(&v40 + 1);
        v21 = v41;
        __swift_project_boxed_opaque_existential_0Tm(&v39, *(&v40 + 1));
        (*(v21 + 8))(v35, v20, v21);
        v22 = v36;
        v23 = v37;
        __swift_project_boxed_opaque_existential_0Tm(v35, v36);
        v24 = (*(v23 + 40))(v19, v22, v23);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        v25 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(&v39, v24);
        if ((v26 & 1) == 0)
        {
          *(v33 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          v27 = v5[3].i64[0] + 40 * v25;
          v28 = v39;
          v29 = v40;
          *(v27 + 32) = v41;
          *v27 = v28;
          *(v27 + 16) = v29;
          outlined init with take of Any(v38, (v5[3].i64[1] + 32 * v25));
          ++v5[1].i64[0];
          if (!v10)
          {
            goto LABEL_8;
          }

LABEL_7:
          v12 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          continue;
        }

        break;
      }

LABEL_28:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
    }
  }

  if (a2)
  {
    v30 = 1 << v3[2].i8[0];
    v2 = v32;
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 4);
    }

    else
    {
      v7->i64[0] = -1 << v30;
    }

    v3[1].i64[0] = 0;
LABEL_25:
    result = v3;
    goto LABEL_26;
  }

  result = v3;
  v2 = v32;
LABEL_26:
  *v2 = v5;
  return result;
}

{
  v3 = *v2;
  if (*(*v2 + 24) > a1)
  {
    a1 = *(*v2 + 24);
  }

  v4 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(a1, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_SSTt2g5);
  v5 = v4;
  if (!*(v3 + 16))
  {
    goto LABEL_25;
  }

  v6 = 0;
  v7 = (v3 + 64);
  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v3 + 64);
  v11 = (v8 + 63) >> 6;
  v36 = v2;
  v37 = v4 + 64;
  v38 = v3;
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_8:
  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v6 >= v11)
    {
      break;
    }

    v14 = v7->u64[v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      while (2)
      {
        v15 = v12 | (v6 << 6);
        v16 = *(v3 + 48) + 40 * v15;
        if (a2)
        {
          v17 = *v16;
          v18 = *(v16 + 16);
          v46 = *(v16 + 32);
          v44 = v17;
          v45 = v18;
          v19 = (*(v3 + 56) + 16 * v15);
          v20 = v19[1];
          v40 = *v19;
        }

        else
        {
          outlined init with copy of AnyHashable(v16, &v44);
          v21 = (*(v3 + 56) + 16 * v15);
          v20 = v21[1];
          v40 = *v21;
          v20;
        }

        v22 = v5[5];
        v23 = *(&v45 + 1);
        v24 = v46;
        __swift_project_boxed_opaque_existential_0Tm(&v44, *(&v45 + 1));
        (*(v24 + 8))(v41, v23, v24);
        v25 = v42;
        v26 = v43;
        __swift_project_boxed_opaque_existential_0Tm(v41, v42);
        v27 = (*(v26 + 40))(v22, v25, v26);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        v28 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(&v44, v27);
        if ((v29 & 1) == 0)
        {
          *(v37 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
          v30 = v5[6] + 40 * v28;
          v31 = v44;
          v32 = v45;
          *(v30 + 32) = v46;
          *v30 = v31;
          *(v30 + 16) = v32;
          v33 = (v5[7] + 16 * v28);
          *v33 = v40;
          v33[1] = v20;
          ++v5[2];
          v3 = v38;
          if (!v10)
          {
            goto LABEL_8;
          }

LABEL_7:
          v12 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          continue;
        }

        break;
      }

LABEL_28:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
    }
  }

  if (a2)
  {
    v34 = 1 << *(v3 + 32);
    v2 = v36;
    if (v34 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v34 + 63) >> 6, v7);
    }

    else
    {
      v7->i64[0] = -1 << v34;
    }

    *(v3 + 16) = 0;
LABEL_25:
    result = v3;
    goto LABEL_26;
  }

  result = v3;
  v2 = v36;
LABEL_26:
  *v2 = v5;
  return result;
}

{
  v3 = *v2;
  if ((*v2)[1].i64[1] > a1)
  {
    a1 = (*v2)[1].i64[1];
  }

  v4 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(a1, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SiTt2g5);
  v5 = v4;
  if (v3[1].i64[0])
  {
    v6 = 0;
    v7 = v3 + 4;
    v8 = 1 << v3[2].i8[0];
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v3[4].i64[0];
    v11 = (v8 + 63) >> 6;
    v27 = v4 + 64;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_8:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7->u64[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        while (2)
        {
          v15 = v12 | (v6 << 6);
          v16 = (v3[3].i64[0] + 16 * v15);
          v17 = *v16;
          v18 = v16[1];
          v19 = *(v3[3].i64[1] + 8 * v15);
          if ((a2 & 1) == 0)
          {
            v16[1];
          }

          v20 = _swift_stdlib_Hashing_parameters ^ v5[2].i64[1];
          v29[0] = 0;
          v29[1] = v20 ^ 0x736F6D6570736575;
          v29[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
          v29[3] = v20 ^ 0x6C7967656E657261;
          v29[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
          v30 = 0u;
          v31 = 0u;
          String.hash(into:)(v29, v17, v18);
          v21 = Hasher._finalize()();
          v22 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v17, v18, v21);
          if ((v23 & 1) == 0)
          {
            *(v27 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
            v24 = (v5[3].i64[0] + 16 * v22);
            *v24 = v17;
            v24[1] = v18;
            *(v5[3].i64[1] + 8 * v22) = v19;
            ++v5[1].i64[0];
            if (!v10)
            {
              goto LABEL_8;
            }

LABEL_7:
            v12 = __clz(__rbit64(v10));
            v10 &= v10 - 1;
            continue;
          }

          break;
        }

LABEL_25:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }
    }

    if (a2)
    {
      v25 = 1 << v3[2].i8[0];
      if (v25 > 63)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v25 + 63) >> 6, v3 + 4);
      }

      else
      {
        v7->i64[0] = -1 << v25;
      }

      v3[1].i64[0] = 0;
    }
  }

  result = v3;
  *v2 = v5;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t a3)
{
  v48 = a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if ((*v3)[1].i64[1] > v6)
  {
    v6 = (*v3)[1].i64[1];
  }

  v11 = *(v7 + 32);
  v12 = specialized static _DictionaryStorage.allocate(capacity:)(v6, v4, v11);
  v13 = v12;
  if (!v10[1].i64[0])
  {
    goto LABEL_25;
  }

  v14 = 0;
  v15 = v10[4].i64[0];
  v40 = v3;
  v41 = v10 + 4;
  v16 = 1 << v10[2].i8[0];
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = v16 + 63;
  v20 = v11;
  v21 = v19 >> 6;
  v49 = (v5 + 32);
  v45 = v20 + 32;
  v46 = v20;
  v47 = v12;
  v42 = (v5 + 16);
  v43 = v12 + 64;
  v44 = v5;
  v22 = v20;
  if (v18)
  {
    goto LABEL_7;
  }

LABEL_8:
  v24 = v14;
  while (1)
  {
    v14 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= v21)
    {
      break;
    }

    v25 = v41->u64[v14];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
      while (2)
      {
        v26 = v23 | (v14 << 6);
        v27 = v10[3].i64[0] + *(v5 + 72) * v26;
        v50 = *(v5 + 72);
        if (v48)
        {
          (*v49)(v9, v27, v4);
        }

        else
        {
          (*v42)(v9, v27, v4);
        }

        v28 = v10;
        v29 = v10[3].i64[1] + 16 * v26;
        v30 = *(v29 + 8);
        v31 = *v29;
        v32 = v47;
        v33 = (*(v22 + 32))(v47[5], v4, v22);
        v34 = __RawDictionaryStorage.find<A>(_:hashValue:)(v9, v33, v4, v22);
        if ((v35 & 1) == 0)
        {
          v36 = v34;
          *(v43 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
          (*v49)((v32[6] + v50 * v34), v9, v4);
          v37 = v32[7] + 16 * v36;
          *v37 = v31;
          *(v37 + 8) = v30;
          ++v32[2];
          v10 = v28;
          v5 = v44;
          v18 = v51;
          if (!v51)
          {
            goto LABEL_8;
          }

LABEL_7:
          v23 = __clz(__rbit64(v18));
          v51 = (v18 - 1) & v18;
          continue;
        }

        break;
      }

LABEL_28:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v4);
    }
  }

  if (v48)
  {
    v38 = 1 << v10[2].i8[0];
    v3 = v40;
    v13 = v47;
    if (v38 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v38 + 63) >> 6, v41);
    }

    else
    {
      v41->i64[0] = -1 << v38;
    }

    v10[1].i64[0] = 0;
LABEL_25:
    result = v10;
    goto LABEL_26;
  }

  result = v10;
  v3 = v40;
  v13 = v47;
LABEL_26:
  *v3 = v13;
  return result;
}

Swift::Void __swiftcall _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(Swift::Int capacity, Swift::Bool moveElements)
{
  v4 = v3;
  v56 = moveElements;
  v5 = *(*(v2 + 24) - 8);
  v6 = MEMORY[0x1EEE9AC00](capacity);
  v60 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  if (*(*v3 + 24) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(*v3 + 24);
  }

  v18 = *(v12 + 32);
  v61 = v13;
  type metadata accessor for _DictionaryStorage(0, v9, v13, v18);
  v19 = static _DictionaryStorage.allocate(capacity:)(v17, static _DictionaryStorage.allocate(scale:age:seed:));
  v20 = v19;
  if (*(v16 + 16))
  {
    v21 = v18;
    v22 = 0;
    v23 = v5;
    v24 = (v16 + 64);
    v25 = 1 << *(v16 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v16 + 64);
    v28 = (v25 + 63) >> 6;
    v47[0] = v4;
    v47[1] = v23 + 16;
    v53 = v21;
    v54 = v23;
    v57 = (v23 + 32);
    v58 = (v10 + 32);
    v51 = v16;
    v52 = v21 + 32;
    v55 = v19;
    v48 = (v10 + 16);
    v49 = v19 + 64;
    v29 = v10;
    v50 = v10;
    v30 = v19;
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_9:
    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v24->u64[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v59 = (v33 - 1) & v33;
        while (2)
        {
          v34 = v31 | (v22 << 6);
          v35 = *(v29 + 72);
          v36 = *(v16 + 48) + v35 * v34;
          if (v56)
          {
            (*v58)(v15, v36, v9);
            v37 = *(v16 + 56);
            v38 = *(v54 + 72);
            (*(v54 + 32))(v60, v37 + v38 * v34, v61);
          }

          else
          {
            (*v48)(v15, v36, v9);
            v39 = *(v16 + 56);
            v38 = *(v54 + 72);
            (*(v54 + 16))(v60, v39 + v38 * v34, v61);
          }

          v10 = v9;
          v40 = v15;
          v41 = v53;
          v42 = (*(v53 + 32))(v30[5], v10, v53);
          v43 = __RawDictionaryStorage.find<A>(_:hashValue:)(v40, v42, v10, v41);
          if ((v44 & 1) == 0)
          {
            v45 = v43;
            *(v49 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
            (*v58)((v30[6] + v35 * v43), v40, v10);
            (*v57)(v30[7] + v38 * v45, v60, v61);
            ++v30[2];
            v29 = v50;
            v16 = v51;
            v15 = v40;
            v9 = v10;
            v27 = v59;
            if (!v59)
            {
              goto LABEL_9;
            }

LABEL_8:
            v31 = __clz(__rbit64(v27));
            v59 = (v27 - 1) & v27;
            continue;
          }

          break;
        }

LABEL_29:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v10);
      }
    }

    if (v56)
    {
      v46 = 1 << *(v16 + 32);
      v20 = v55;
      if (v46 > 63)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v46 + 63) >> 6, v24);
      }

      else
      {
        v24->i64[0] = -1 << v46;
      }

      *(v16 + 16) = 0;
      v16;
      v4 = v47[0];
    }

    else
    {
      v16;
      v4 = v47[0];
      v20 = v55;
    }
  }

  else
  {
    v16;
  }

  *v4 = v20;
}

uint64_t specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(char a1, uint64_t a2)
{
  return specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(a1, a2, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());
}

{
  return specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(a1, a2, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());
}

{
  return specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(a1, a2, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());
}

{
  return specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(a1, a2, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());
}

{
  return specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(a1, a2, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());
}

uint64_t specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  a3(v6, v7);
  return 1;
}

Swift::Bool __swiftcall _NativeDictionary.ensureUnique(isUnique:capacity:)(Swift::Bool isUnique, Swift::Int capacity)
{
  v4 = *(*v2 + 24);
  if (v4 >= capacity)
  {
    if (!isUnique)
    {
      _NativeDictionary.copy()();
    }
  }

  else
  {
    if (isUnique)
    {
      v5 = capacity;
      v6 = 1;
    }

    else
    {
      v5 = capacity;
      v6 = 0;
    }

    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v5, v6);
  }

  return v4 < capacity;
}

Swift::_HashTable::Bucket __swiftcall _NativeDictionary.validatedBucket(for:)(Swift::_HashTable::Index a1)
{
  if (a1.bucket.offset < 0 || 1 << *(v1 + 32) <= a1.bucket.offset || ((*(v1 + 8 * (a1.bucket.offset >> 6) + 64) >> SLOBYTE(a1.bucket.offset)) & 1) == 0 || *(v1 + 36) != a1.age)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1.bucket;
}

uint64_t _NativeDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (*(a2 + 16) && (v9 = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5), (v10 & 1) != 0))
  {
    v15 = *(a4 - 8);
    (*(v15 + 16))(a6, *(a2 + 56) + *(v15 + 72) * v9, a4);
    v11 = v15;
    v12 = 0;
  }

  else
  {
    v11 = *(a4 - 8);
    v12 = 1;
  }

  v13 = *(v11 + 56);

  return v13(a6, v12, 1, a4);
}

uint64_t key path getter for _NativeDictionary.subscript(_:isUnique:) : <A, B>_NativeDictionary<A, B>AB@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = __RawDictionaryStorage.find<A>(_:)(a2, *(a2 + a3 - 24), *(a2 + a3 - 8)), (v8 & 1) != 0))
  {
    v13 = *(v5 - 8);
    (*(v13 + 16))(a4, *(v6 + 56) + *(v13 + 72) * v7, v5);
    v9 = v13;
    v10 = 0;
  }

  else
  {
    v9 = *(v5 - 8);
    v10 = 1;
  }

  v11 = *(v9 + 56);

  return v11(a4, v10, 1, v5);
}

void key path setter for _NativeDictionary.subscript(_:isUnique:) : <A, B>_NativeDictionary<A, B>AB(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v48 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v46 = &v44 - v10;
  v53 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - v13;
  v16 = type metadata accessor for Optional(0, v7, v14, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v51 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - v20;
  swift_getTupleTypeMetadata2(0, v6, &type metadata for Bool, 0, 0);
  v23 = *(a3 + *(v22 + 48));
  v24 = *a2;
  v49 = a3;
  v55 = __RawDictionaryStorage.find<A>(_:)(a3, v6, v8);
  v26 = *(v24 + 16);
  v27 = (v25 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = v25;
  v54 = v7;
  type metadata accessor for _NativeDictionary(0, v6, v7, v8);
  v30 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v28);
  v50 = v6;
  if (!v30)
  {
    v32 = v53;
    v33 = v54;
    if ((v29 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v55 = __RawDictionaryStorage.find<A>(_:)(v49, v6, v8);
  v32 = v53;
  if ((v29 & 1) != (v31 & 1))
  {
LABEL_16:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v50);
  }

  v33 = v54;
  if ((v29 & 1) == 0)
  {
LABEL_5:
    (*(v32 + 56))(v21, 1, 1, v33);
    goto LABEL_8;
  }

LABEL_7:
  (*(v32 + 32))(v21, *(*a2 + 56) + *(v32 + 72) * v55, v33);
  (*(v32 + 56))(v21, 0, 1, v33);
LABEL_8:
  v34 = *(v17 + 8);
  v34(v21, v16);
  (*(v17 + 16))(v21, v52, v16);
  v35 = v51;
  (*(v17 + 32))();
  if ((*(v32 + 48))(v35, 1, v33) == 1)
  {
    v34(v35, v16);
    if (v29)
    {
      v36.offset = v55;
      (*(v48 + 8))(*(*a2 + 48) + *(v48 + 72) * v55, v50);
      _NativeDictionary._delete(at:)(v36);
    }
  }

  else
  {
    v37 = *(v32 + 32);
    v38 = v47;
    v37(v47, v35, v33);
    v39 = *a2;
    v40 = v33;
    v41 = v50;
    if (v29)
    {
      v37((v39[7] + *(v32 + 72) * v55), v38, v40);
    }

    else
    {
      v42 = v46;
      (*(v48 + 16))(v46, v49, v50);
      v43 = v45;
      v37(v45, v38, v40);
      _NativeDictionary._insert(at:key:value:)(v55, v42, v43, v39, v41, v40);
    }
  }
}

void _NativeDictionary.subscript.setter(char *a1, uint64_t a2, int a3, void *a4)
{
  LODWORD(v50) = a3;
  v49 = a1;
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - v11;
  v48 = type metadata accessor for Optional(0, v7, v12, v13);
  v14 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v43 - v15;
  v17 = v4;
  v18 = *v4;
  v19 = a4[2];
  v20 = a2;
  v21 = v19;
  v46 = a4[4];
  v23 = __RawDictionaryStorage.find<A>(_:)(a2, v19, v46);
  v24 = *(v18 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = v22;
  v28 = *(v18 + 24);
  v47 = v20;
  if (v28 >= v26 && (v50 & 1) != 0)
  {
    v29 = v17;
    v20 = v21;
    goto LABEL_10;
  }

  if (v28 >= v26 && (v50 & 1) == 0)
  {
    v29 = v17;
    v30 = v23;
    _NativeDictionary.copy()();
    v23 = v30;
    v20 = v21;
    goto LABEL_10;
  }

  v29 = v17;
  _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, v50 & 1);
  v31 = v20;
  v20 = v21;
  v32 = __RawDictionaryStorage.find<A>(_:)(v31, v21, v46);
  if ((v27 & 1) != (v33 & 1))
  {
LABEL_21:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v20);
  }

  v23 = v32;
LABEL_10:
  v35 = v48;
  v34 = v49;
  v50 = v23;
  if (v27)
  {
    (*(v8 + 32))(v16, *(*v29 + 56) + *(v8 + 72) * v23, v7);
    (*(v8 + 56))(v16, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v16, 1, 1, v7);
  }

  v36 = *(v14 + 8);
  v36(v16, v35);
  if ((*(v8 + 48))(v34, 1, v7) == 1)
  {
    v49 = *(v20 - 8);
    v37 = *(v49 + 1);
    v37(v47, v20);
    v36(v34, v35);
    if (v27)
    {
      v38.offset = v50;
      v37(*(*v29 + 48) + *(v49 + 9) * v50, v20);
      _NativeDictionary._delete(at:)(v38);
    }
  }

  else
  {
    v39 = *(v8 + 32);
    v40 = v45;
    v39(v45, v34, v7);
    if (v27)
    {
      (*(*(v20 - 8) + 8))(v47, v20);
      v39((*(*v29 + 56) + *(v8 + 72) * v50), v40, v7);
    }

    else
    {
      v41 = *v29;
      v42 = v44;
      v39(v44, v40, v7);
      _NativeDictionary._insert(at:key:value:)(v50, v47, v42, v41, v20, v7);
    }
  }
}

void KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(unint64_t a1)
{
  v2 = _StringGuts.init(_initialCapacity:)(196);
  v4 = v2;
  v5 = v3;
  v230 = v2;
  v231 = v3;
  v6 = "Duplicate keys of type '";
  v7 = 0x800000018066D970 | 0x8000000000000000;
  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v9 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 && (v2 & ~v3 & 0x2000000000000000) == 0)
  {
    v3;
    v230 = 0xD000000000000018;
    v231 = 0x800000018066D970 | 0x8000000000000000;
    goto LABEL_54;
  }

  v10 = 0x800000018066D970 & 0x2000000000000000;
  v11 = (0x800000018066D970 >> 56) & 0xF;
  if ((0x800000018066D970 & 0x2000000000000000 & v3) != 0)
  {
    v12 = v8 + v11;
    if (v8 + v11 <= 0xF)
    {
      if (v11)
      {
        v64 = 0;
        v65 = 0;
        v66 = 8 * v8;
        v63 = v3;
        do
        {
          v67 = v8 + v65;
          v55 = v65 >= 8;
          v68 = v65 + 1;
          v69 = v7 >> (v64 & 0x38);
          if (!v55)
          {
            v69 = 0xD000000000000018 >> v64;
          }

          v70 = (v69 << ((v66 + v64) & 0x38)) | ((-255 << ((v66 + v64) & 0x38)) - 1) & v63;
          v71 = (v69 << (v66 + v64)) | ((-255 << (v66 + v64)) - 1) & v4;
          if (v67 <= 7)
          {
            v4 = v71;
          }

          else
          {
            v63 = v70;
          }

          v64 += 8;
          v65 = v68;
        }

        while (v11 != v68);
      }

      else
      {
        v63 = v3;
      }

      v3;
      0x800000018066D970 | 0x8000000000000000;
      v72 = 0xA000000000000000;
      if (!(v4 & 0x8080808080808080 | v63 & 0x80808080808080))
      {
        v72 = 0xE000000000000000;
      }

      v230 = v4;
      v231 = v72 & 0xFF00000000000000 | (v12 << 56) | v63 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }
  }

  v227 = a1;
  if (v10)
  {
    v13 = (0x800000018066D970 >> 56) & 0xF;
  }

  else
  {
    v13 = 24;
  }

  if ((0x800000018066D970 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n(0x800000018066D970 | 0x8000000000000000, 2);
    v215._rawBits = 1;
    v216._rawBits = (v13 << 16) | 1;
    v217._rawBits = _StringGuts.validateScalarRange(_:)(v215, v216, 0xD000000000000018, 0x800000018066D970 | 0x8000000000000000)._rawBits;
    if (v217._rawBits < 0x10000)
    {
      v217._rawBits |= 3;
    }

    v22 = String.UTF8View.distance(from:to:)(v217, v218);
    0x800000018066D970 | 0x8000000000000000;
    if ((v5 & 0x1000000000000000) == 0)
    {
LABEL_14:
      v23 = __OFADD__(v9, v22);
      v24 = &v22[v9];
      if (!v23)
      {
LABEL_15:
        if ((v4 & ~v5 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
        {
          v25 = _StringGuts.nativeUnusedCapacity.getter(v4, v5);
          if (v26)
          {
            goto LABEL_164;
          }

          v27 = (v5 >> 61) & 1;
          if (v25 < v22)
          {
            LODWORD(v27) = 1;
          }

          if (v24 <= 15 && v27)
          {
            goto LABEL_22;
          }
        }

        else if (v24 <= 15)
        {
LABEL_22:
          v28 = _StringGuts._convertedToSmall()(v4, v5, v14, v15, v16, v17, v18, v19, v20, v21);
          v30 = v29;
          0x800000018066D970 | 0x8000000000000000;
          v31._rawBits = 1;
          v32._rawBits = (v13 << 16) | 1;
          v33._rawBits = _StringGuts.validateScalarRange(_:)(v31, v32, 0xD000000000000018, 0x800000018066D970 | 0x8000000000000000)._rawBits;
          if (v33._rawBits < 0x10000)
          {
            v33._rawBits |= 3;
          }

          v35 = Substring.description.getter(v33._rawBits, v34._rawBits, 0xD000000000000018, 0x800000018066D970 | 0x8000000000000000);
          v37 = v36;
          0x800000018066D970 | 0x8000000000000000;
          v46 = _StringGuts._convertedToSmall()(v35, v37, v38, v39, v40, v41, v42, v43, v44, v45);
          v48 = v47;
          v37;
          v49 = HIBYTE(v30) & 0xF;
          v50 = HIBYTE(v48) & 0xF;
          if ((v50 + v49) > 0xF)
          {
            goto LABEL_164;
          }

          0x800000018066D970 | 0x8000000000000000;
          if (v50)
          {
            v51 = 0;
            v52 = 0;
            v53 = 8 * v49;
            do
            {
              v54 = v49 + v52;
              v55 = v52 >= 8;
              v56 = v52 + 1;
              v57 = v48 >> (v51 & 0x38);
              if (!v55)
              {
                v57 = v46 >> v51;
              }

              v58 = (v57 << ((v53 + v51) & 0x38)) | ((-255 << ((v53 + v51) & 0x38)) - 1) & v30;
              v59 = (v57 << (v53 + v51)) | ((-255 << (v53 + v51)) - 1) & v28;
              if (v54 <= 7)
              {
                v28 = v59;
              }

              else
              {
                v30 = v58;
              }

              v51 += 8;
              v52 = v56;
            }

            while (v50 != v56);
          }

          v5;
          0x800000018066D970 | 0x8000000000000000;
          v60 = 0xA000000000000000;
          if (!(v28 & 0x8080808080808080 | v30 & 0x80808080808080))
          {
            v60 = 0xE000000000000000;
          }

          v230 = v28;
          v231 = v60 & 0xFF00000000000000 | ((v50 + v49) << 56) | v30 & 0xFFFFFFFFFFFFFFLL;
          a1 = v227;
LABEL_54:
          TypeName = swift_getTypeName(a1, 0);
          if (v75 < 0)
          {
LABEL_169:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v76 = TypeName;
          v77 = v75;
          v78 = validateUTF8(_:)(TypeName, v75);
          if (v78 < 0)
          {
            v82 = repairUTF8(_:firstKnownBrokenRange:)(v76, v77, v79, v80);
          }

          else
          {
            v82 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v76, v77, v78 & 1, v81);
          }

          v7 = v82;
          v10 = v83;
          v85 = v230;
          v84 = v231;
          v86 = HIBYTE(v231) & 0xF;
          if ((v231 & 0x2000000000000000) != 0)
          {
            v87 = HIBYTE(v231) & 0xF;
          }

          else
          {
            v87 = v230 & 0xFFFFFFFFFFFFLL;
          }

          if (!v87 && (v230 & ~v231 & 0x2000000000000000) == 0)
          {
            v231;
            v230 = v7;
            v231 = v10;
            goto LABEL_122;
          }

          v88 = (v83 & 0x2000000000000000) == 0;
          v89 = HIBYTE(v83) & 0xF;
          if ((v231 & 0x2000000000000000) != 0)
          {
            if ((v83 & 0x2000000000000000) != 0)
            {
              v143 = v86 + v89;
              if (v86 + v89 < 0x10)
              {
                if (v89)
                {
                  v151 = 0;
                  v152 = 0;
                  v153 = 8 * v86;
                  v149 = v231;
                  do
                  {
                    v154 = v86 + v152;
                    v55 = v152 >= 8;
                    v155 = v152 + 1;
                    v156 = v83 >> (v151 & 0x38);
                    if (!v55)
                    {
                      v156 = v82 >> v151;
                    }

                    v157 = (v156 << ((v153 + v151) & 0x38)) | ((-255 << ((v153 + v151) & 0x38)) - 1) & v149;
                    v158 = (v156 << (v153 + v151)) | ((-255 << (v153 + v151)) - 1) & v85;
                    if (v154 <= 7)
                    {
                      v85 = v158;
                    }

                    else
                    {
                      v149 = v157;
                    }

                    v151 += 8;
                    v152 = v155;
                  }

                  while (v89 != v155);
                }

                else
                {
                  v149 = v231;
                }

                v231;
                v10;
                v159 = 0xA000000000000000;
                if (!(v85 & 0x8080808080808080 | v149 & 0x80808080808080))
                {
                  v159 = 0xE000000000000000;
                }

                v136 = v159 & 0xFF00000000000000 | (v143 << 56) | v149 & 0xFFFFFFFFFFFFFFLL;
                goto LABEL_121;
              }

              v88 = 0;
              v91 = HIBYTE(v83) & 0xF;
              v227 = v82 & 0xFFFFFFFFFFFFLL;
              if ((v83 & 0x1000000000000000) == 0)
              {
LABEL_70:
                v83;
                v100 = v91;
                if ((v84 & 0x1000000000000000) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_104;
              }

LABEL_101:
              swift_bridgeObjectRetain_n(v83, 2);
              v144._rawBits = 1;
              v145._rawBits = (v91 << 16) | 1;
              v146._rawBits = _StringGuts.validateScalarRange(_:)(v144, v145, v7, v10)._rawBits;
              if (v146._rawBits < 0x10000)
              {
                v146._rawBits |= 3;
              }

              v100 = String.UTF8View.distance(from:to:)(v146, v147);
              v10;
              if ((v84 & 0x1000000000000000) == 0)
              {
LABEL_71:
                v23 = __OFADD__(v87, v100);
                v101 = v87 + v100;
                if (!v23)
                {
LABEL_72:
                  if ((v85 & ~v84 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v84 & 0xFFFFFFFFFFFFFFFLL))
                  {
                    v102 = _StringGuts.nativeUnusedCapacity.getter(v85, v84);
                    if (v103)
                    {
                      goto LABEL_164;
                    }

                    v104 = (v84 >> 61) & 1;
                    if (v102 < v100)
                    {
                      LODWORD(v104) = 1;
                    }

                    if (v101 <= 15 && v104)
                    {
LABEL_79:
                      v85 = _StringGuts._convertedToSmall()(v85, v84, v92, v93, v94, v95, v96, v97, v98, v99);
                      v106 = v105;
                      v10;
                      v107._rawBits = 1;
                      v108._rawBits = (v91 << 16) | 1;
                      v109._rawBits = _StringGuts.validateScalarRange(_:)(v107, v108, v7, v10)._rawBits;
                      if (v109._rawBits < 0x10000)
                      {
                        v109._rawBits |= 3;
                      }

                      v111 = Substring.description.getter(v109._rawBits, v110._rawBits, v7, v10);
                      v113 = v112;
                      v10;
                      v122 = _StringGuts._convertedToSmall()(v111, v113, v114, v115, v116, v117, v118, v119, v120, v121);
                      v124 = v123;
                      v113;
                      v125 = HIBYTE(v106) & 0xF;
                      v126 = HIBYTE(v124) & 0xF;
                      if ((v126 + v125) <= 0xF)
                      {
                        v10;
                        if (v126)
                        {
                          v127 = 0;
                          v128 = 0;
                          v129 = 8 * v125;
                          do
                          {
                            v130 = v125 + v128;
                            v55 = v128 >= 8;
                            v131 = v128 + 1;
                            v132 = v124 >> (v127 & 0x38);
                            if (!v55)
                            {
                              v132 = v122 >> v127;
                            }

                            v133 = (v132 << ((v129 + v127) & 0x38)) | ((-255 << ((v129 + v127) & 0x38)) - 1) & v106;
                            v134 = (v132 << (v129 + v127)) | ((-255 << (v129 + v127)) - 1) & v85;
                            if (v130 <= 7)
                            {
                              v85 = v134;
                            }

                            else
                            {
                              v106 = v133;
                            }

                            v127 += 8;
                            v128 = v131;
                          }

                          while (v126 != v131);
                        }

                        v84;
                        v10;
                        v135 = 0xA000000000000000;
                        if (!(v85 & 0x8080808080808080 | v106 & 0x80808080808080))
                        {
                          v135 = 0xE000000000000000;
                        }

                        v136 = v135 & 0xFF00000000000000 | ((v126 + v125) << 56) | v106 & 0xFFFFFFFFFFFFFFLL;
LABEL_121:
                        v230 = v85;
                        v231 = v136;
                        goto LABEL_122;
                      }

LABEL_164:
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                    }
                  }

                  else if (v101 <= 15)
                  {
                    goto LABEL_79;
                  }

                  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v101, v100);
                  if ((v10 & 0x1000000000000000) == 0)
                  {
                    if (v88)
                    {
                      if ((v7 & 0x1000000000000000) == 0)
                      {
                        goto LABEL_182;
                      }

                      v137 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
                      v138 = v227;
                      v139 = v227;
                      goto LABEL_98;
                    }

                    v228 = v7;
                    v229 = v10 & 0xFFFFFFFFFFFFFFLL;
                    v10;
                    v150 = v231 & 0xFFFFFFFFFFFFFFFLL;
                    __StringStorage.appendInPlace(_:isASCII:)(&v228, HIBYTE(v10) & 0xF, (v10 & 0x4000000000000000) != 0);
                    v10;
                    v230 = *(v150 + 24);
                    while (1)
                    {
LABEL_122:
                      v22 = "' were found in a Dictionary.\nThis usually means either that the type violates Hashable's requirements, or\nthat members of such a dictionary were mutated after insertion.";
                      v10 = 0x800000018066D990 | 0x8000000000000000;
                      v5 = v230;
                      v7 = v231;
                      v160 = HIBYTE(v231) & 0xF;
                      if ((v231 & 0x2000000000000000) != 0)
                      {
                        v13 = HIBYTE(v231) & 0xF;
                      }

                      else
                      {
                        v13 = v230 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v13 && (v230 & ~v231 & 0x2000000000000000) == 0)
                      {
                        v231;
                        v5 = 0xD0000000000000AALL;
                        goto LABEL_168;
                      }

                      v6 = (0x800000018066D990 & 0x2000000000000000);
                      v4 = (0x800000018066D990 >> 56) & 0xF;
                      if ((0x800000018066D990 & 0x2000000000000000 & v231) != 0)
                      {
                        v161 = v160 + v4;
                        if (v160 + v4 <= 0xF)
                        {
                          if (v4)
                          {
                            v179 = 0;
                            v180 = 0;
                            v181 = 8 * v160;
                            v178 = v231;
                            do
                            {
                              v182 = v160 + v180;
                              v55 = v180 >= 8;
                              v183 = v180 + 1;
                              v184 = v10 >> (v179 & 0x38);
                              if (!v55)
                              {
                                v184 = 0xD0000000000000AALL >> v179;
                              }

                              v185 = (v184 << ((v181 + v179) & 0x38)) | ((-255 << ((v181 + v179) & 0x38)) - 1) & v178;
                              v186 = (v184 << (v181 + v179)) | ((-255 << (v181 + v179)) - 1) & v5;
                              if (v182 <= 7)
                              {
                                v5 = v186;
                              }

                              else
                              {
                                v178 = v185;
                              }

                              v179 += 8;
                              v180 = v183;
                            }

                            while (v4 != v183);
                          }

                          else
                          {
                            v178 = v231;
                          }

                          v231;
                          0x800000018066D990 | 0x8000000000000000;
                          v187 = 0xA000000000000000;
                          if (!(v5 & 0x8080808080808080 | v178 & 0x80808080808080))
                          {
                            v187 = 0xE000000000000000;
                          }

                          v10 = v187 & 0xFF00000000000000 | (v161 << 56) | v178 & 0xFFFFFFFFFFFFFFLL;
                          goto LABEL_168;
                        }
                      }

                      if (v6)
                      {
                        v11 = (0x800000018066D990 >> 56) & 0xF;
                      }

                      else
                      {
                        v11 = 170;
                      }

                      if ((0x800000018066D990 & 0x1000000000000000) != 0)
                      {
LABEL_176:
                        swift_bridgeObjectRetain_n(v10, 2);
                        v220._rawBits = 1;
                        v221._rawBits = (v11 << 16) | 1;
                        v222._rawBits = _StringGuts.validateScalarRange(_:)(v220, v221, 0xD0000000000000AALL, v10)._rawBits;
                        if (v222._rawBits < 0x10000)
                        {
                          v222._rawBits |= 3;
                        }

                        v170 = String.UTF8View.distance(from:to:)(v222, v223);
                        v10;
                        if ((v7 & 0x1000000000000000) == 0)
                        {
LABEL_135:
                          v23 = __OFADD__(v13, v170);
                          v171 = v13 + v170;
                          if (!v23)
                          {
                            goto LABEL_136;
                          }

                          goto LABEL_181;
                        }
                      }

                      else
                      {
                        0x800000018066D990 | 0x8000000000000000;
                        v170 = v11;
                        if ((v7 & 0x1000000000000000) == 0)
                        {
                          goto LABEL_135;
                        }
                      }

                      v224 = String.UTF8View._foreignCount()();
                      v171 = v224 + v170;
                      if (!__OFADD__(v224, v170))
                      {
LABEL_136:
                        if ((v5 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
                        {
                          v172 = _StringGuts.nativeUnusedCapacity.getter(v5, v7);
                          if (v173)
                          {
                            goto LABEL_164;
                          }

                          v188 = (v7 >> 61) & 1;
                          if (v172 < v170)
                          {
                            LODWORD(v188) = 1;
                          }

                          if (v171 <= 15 && v188)
                          {
LABEL_161:
                            v189 = _StringGuts._convertedToSmall()(v5, v7, v162, v163, v164, v165, v166, v167, v168, v169);
                            v191 = v190;
                            v10;
                            v192._rawBits = 1;
                            v193._rawBits = (v11 << 16) | 1;
                            v194._rawBits = _StringGuts.validateScalarRange(_:)(v192, v193, 0xD0000000000000AALL, v10)._rawBits;
                            if (v194._rawBits < 0x10000)
                            {
                              v194._rawBits |= 3;
                            }

                            v196 = Substring.description.getter(v194._rawBits, v195._rawBits, 0xD0000000000000AALL, v10);
                            v198 = v197;
                            v10;
                            v207 = _StringGuts._convertedToSmall()(v196, v198, v199, v200, v201, v202, v203, v204, v205, v206);
                            v209 = v208;
                            v198;
                            v210 = specialized _SmallString.init(_:appending:)(v189, v191, v207, v209);
                            if (v212)
                            {
                              goto LABEL_164;
                            }

                            v5 = v210;
                            v213 = v211;
                            v7;
                            swift_bridgeObjectRelease_n(v10, 2);
                            v10 = v213;
LABEL_168:
                            _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v5, v10, 0);
                          }
                        }

                        else if (v171 <= 15)
                        {
                          goto LABEL_161;
                        }

                        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v171, v170);
                        if (((v22 + 0x7FFFFFFFFFFFFFE0) & 0x1000000000000000) != 0)
                        {
                          _StringGuts._foreignAppendInPlace(_:)(0xD0000000000000AALL, v10, 0, v11);
                          swift_bridgeObjectRelease_n(v10, 2);
                          v5 = v230;
                          v10 = v231;
                        }

                        else
                        {
                          if (v6)
                          {
                            v228 = 0xD0000000000000AALL;
                            v229 = (v22 + 0x7FFFFFFFFFFFFFE0) & 0xFFFFFFFFFFFFF0;
                            v10;
                            v175 = v231;
                            v214 = v231 & 0xFFFFFFFFFFFFFFFLL;
                            __StringStorage.appendInPlace(_:isASCII:)(&v228, v4, ((v22 + 0x7FFFFFFFFFFFFFE0) & 0x4000000000000000) != 0);
                            v10;
                            v5 = *(v214 + 24);
                          }

                          else
                          {
                            v10;
                            v174 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 170, ((v22 + 0x7FFFFFFFFFFFFFE0) & 0xFFFFFFFFFFFFFF0) + 32, 170);
                            v175 = v231;
                            v176 = v231 & 0xFFFFFFFFFFFFFFFLL;
                            __StringStorage.appendInPlace(_:isASCII:)(v174, v177, 1);
                            v5 = *(v176 + 24);
                            v10;
                          }

                          v10 = v175;
                        }

                        goto LABEL_168;
                      }

LABEL_181:
                      __break(1u);
LABEL_182:
                      v225 = _StringObject.sharedUTF8.getter(v7, v10);
                      if (v226 < v227)
                      {
                        goto LABEL_169;
                      }

                      v137 = v225;
                      v139 = v226;
                      v138 = v227;
LABEL_98:
                      v10;
                      v140 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v138, v137, v139);
                      v141 = v231 & 0xFFFFFFFFFFFFFFFLL;
                      __StringStorage.appendInPlace(_:isASCII:)(v140, v142, v7 < 0);
                      v230 = *(v141 + 24);
                      v10;
                    }
                  }

LABEL_107:
                  _StringGuts._foreignAppendInPlace(_:)(v7, v10, 0, v91);
                  swift_bridgeObjectRelease_n(v10, 2);
                  goto LABEL_122;
                }

LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

LABEL_104:
              v148 = String.UTF8View._foreignCount()();
              v101 = v148 + v100;
              if (!__OFADD__(v148, v100))
              {
                goto LABEL_72;
              }

              goto LABEL_106;
            }

            v90 = v82 & 0xFFFFFFFFFFFFLL;
            v88 = 1;
          }

          else
          {
            v90 = v82 & 0xFFFFFFFFFFFFLL;
            v91 = HIBYTE(v83) & 0xF;
            if ((v83 & 0x2000000000000000) != 0)
            {
              goto LABEL_69;
            }
          }

          v91 = v90;
LABEL_69:
          v227 = v90;
          if ((v83 & 0x1000000000000000) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_101;
        }

        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v24, v22);
        if ((0x800000018066D970 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(0xD000000000000018, 0x800000018066D970 | 0x8000000000000000, 0, v13);
          swift_bridgeObjectRelease_n(0x800000018066D970 | 0x8000000000000000, 2);
          a1 = v227;
        }

        else
        {
          a1 = v227;
          if (v10)
          {
            v228 = 0xD000000000000018;
            v229 = 0x800000018066D970 & 0xFFFFFFFFFFFFF0;
            0x800000018066D970 | 0x8000000000000000;
            v73 = v231 & 0xFFFFFFFFFFFFFFFLL;
            __StringStorage.appendInPlace(_:isASCII:)(&v228, (0x800000018066D970 >> 56) & 0xF, (0x800000018066D970 & 0x4000000000000000) != 0);
            0x800000018066D970 | 0x8000000000000000;
            v230 = *(v73 + 24);
          }

          else
          {
            0x800000018066D970 | 0x8000000000000000;
            v61 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 24, (0x800000018066D970 & 0xFFFFFFFFFFFFFF0) + 32, 24);
            __StringStorage.appendInPlace(_:isASCII:)(v61, v62, 1);
            v230 = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            0x800000018066D970 | 0x8000000000000000;
          }
        }

        goto LABEL_54;
      }

LABEL_175:
      __break(1u);
      goto LABEL_176;
    }
  }

  else
  {
    0x800000018066D970 | 0x8000000000000000;
    v22 = v13;
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

  v219 = String.UTF8View._foreignCount()();
  v24 = &v22[v219];
  if (!__OFADD__(v219, v22))
  {
    goto LABEL_15;
  }

  goto LABEL_175;
}

__objc2_class **specialized _NativeDictionary.extractDictionary(using:count:)(uint64_t a1, uint64_t a2, uint64_t a3, atomic_ullong *a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v40 - v15;
  if (!v12)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] != v12)
  {
    v41 = v10;
    v16 = v12;
    v17 = v11;
    v18 = v13;
    v19 = v14;
    v49 = specialized static _DictionaryStorage.allocate(capacity:)(v12, v13, v14);
    v40 = v17;
    if (v17 < 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *v41;
    }

    v21 = 0;
    v47 = v6 + 16;
    v48 = v19;
    v44 = v49 + 64;
    v45 = v19 + 32;
    v22 = v16;
    v23 = v49;
    v42 = v6;
    v43 = a4;
    v46 = v6 + 32;
    while (1)
    {
      if (v20)
      {
        v53 = v22;
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
        goto LABEL_16;
      }

      v25 = v21;
      do
      {
        v21 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v18);
        }

        if (v21 >= v40)
        {
          return v23;
        }

        v26 = v41[v21];
        ++v25;
      }

      while (!v26);
      v53 = v22;
      v24 = __clz(__rbit64(v26));
      v51 = (v26 - 1) & v26;
LABEL_16:
      v27 = v24 | (v21 << 6);
      v28 = *(v6 + 72);
      v29 = v50;
      (*(v6 + 16))(v50, a4[6] + v28 * v27, v18);
      v30 = a4[7] + 16 * v27;
      v31 = *v30;
      v52 = *(v30 + 8);
      v32 = *(v6 + 32);
      v32(v9, v29, v18);
      v33 = v48;
      v23 = v49;
      v34 = (*(v48 + 32))(*(v49 + 40), v18, v48);
      v35 = __RawDictionaryStorage.find<A>(_:hashValue:)(v9, v34, v18, v33);
      if (v36)
      {
        goto LABEL_23;
      }

      v37 = v35;
      *(v44 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v32((v23[6] + v35 * v28), v9, v18);
      v38 = v23[7] + 16 * v37;
      *v38 = v31;
      *(v38 + 8) = v52;
      ++v23[2];
      v22 = v53 - 1;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_22;
      }

      v6 = v42;
      a4 = v43;
      v20 = v51;
      if (v53 == 1)
      {
        return v23;
      }
    }
  }

  a4;
  return a4;
}

__objc2_class **_NativeDictionary.extractDictionary(using:count:)(uint64_t a1, uint64_t a2, uint64_t a3, atomic_ullong *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v51 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v50 = v43 - v15;
  v54 = v16;
  v52 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v49 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v48 = v43 - v20;
  if (!v21)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {
    a4;
    return a4;
  }

  v46 = a4;
  v22 = v19;
  type metadata accessor for _DictionaryStorage(0, v54, a6, a7);
  result = static _DictionaryStorage.allocate(capacity:)(a3);
  v47 = result;
  v43[0] = v22;
  if (a2 < 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = *v22;
  }

  v25 = 0;
  v26 = v54;
  v43[3] = v53 + 16;
  v43[4] = v52 + 16;
  v43[1] = v53 + 32;
  v43[2] = v52 + 32;
  v44 = a6;
  v45 = a7;
  v27 = v48;
  while (v24)
  {
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_16:
    v31 = v28 | (v25 << 6);
    v32 = v46;
    v33 = v52;
    (*(v52 + 16))(v27, v46[6] + *(v52 + 72) * v31, v26);
    v34 = v53;
    v35 = v32[7] + *(v53 + 72) * v31;
    v36 = v50;
    v37 = v44;
    (*(v53 + 16))(v50, v35, v44);
    v38 = *(v33 + 32);
    v39 = v49;
    v38(v49, v27, v26);
    v40 = *(v34 + 32);
    v41 = v51;
    v40(v51, v36, v37);
    result = _NativeDictionary._unsafeInsertNew(key:value:)(v39, v41, v47, v26, v37, v45);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v47;
    }
  }

  v29 = v25;
  while (1)
  {
    v25 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v25 >= a2)
    {
      return v47;
    }

    v30 = *(v43[0] + 8 * v25);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v24 = (v30 - 1) & v30;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int __swiftcall _NativeDictionary.hashValue(at:)(Swift::_HashTable::Bucket at)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = *(v2 - 8);
  v8 = MEMORY[0x1EEE9AC00](at.offset);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v11 + 48) + *(v12 + 72) * v8);
  v13 = (*(v4 + 32))(*(v6 + 40), v5, v4);
  (*(v7 + 8))(v10, v5);
  return v13;
}

uint64_t protocol witness for _HashTableDelegate.hashValue(at:) in conformance _NativeDictionary<A, B>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  (*(v5 + 16))(v8, *(v9 + 48) + *(v10 + 72) * v6, v4);
  v11 = (*(*(a2 + 32) + 32))(*(v9 + 40), v4);
  (*(v5 + 8))(v8, v4);
  return v11;
}

char *protocol witness for _HashTableDelegate.moveEntry(from:to:) in conformance _NativeDictionary<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*(*(a3 + 16) - 8) + 72);
  UnsafeMutablePointer.moveInitialize(from:count:)((*(v7 + 48) + v8 * a1), 1, (*(v7 + 48) + v8 * a2), *(a3 + 16));
  v9 = *(v7 + 56);
  v10 = *(a3 + 24);
  v11 = *(*(v10 - 1) + 72);

  return UnsafeMutablePointer.moveInitialize(from:count:)((v9 + v11 * a1), 1, (v9 + v11 * a2), v10);
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::_HashTable::Bucket before, uint64_t a2)
{
  offset = before.offset;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (before.offset + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    before.offset = _HashTable.previousHole(before:)(before).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (before.offset + 1) & v7;
      do
      {
        v10 = (*(a2 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = _swift_stdlib_Hashing_parameters ^ *(a2 + 40);
        v25[0] = 0;
        v25[1] = v13 ^ 0x736F6D6570736575;
        v25[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
        v25[3] = v13 ^ 0x6C7967656E657261;
        v25[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
        v26 = 0u;
        v27 = 0u;
        v12;
        String.hash(into:)(v25, v11, v12);
        v12;
        before.offset = Hasher._finalize()();
        v14 = before.offset & v7;
        if (offset >= v8)
        {
          if (v14 < v8)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v8)
        {
          goto LABEL_11;
        }

        if (offset >= v14)
        {
LABEL_11:
          v15 = *(a2 + 48);
          v16 = (v15 + 16 * offset);
          v17 = (v15 + 16 * v6);
          if (offset != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * offset);
          v20 = (v18 + 32 * v6);
          if (offset != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            offset = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  else
  {
    *(v4 + ((before.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(before.offset)) - 1;
  }

  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return before.offset;
}

{
  offset = before.offset;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (before.offset + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    before.offset = _HashTable.previousHole(before:)(before).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (before.offset + 1) & v7;
      do
      {
        outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v33);
        v9 = *(a2 + 40);
        v10 = v34;
        v11 = v35;
        __swift_project_boxed_opaque_existential_0Tm(v33, v34);
        (*(v11 + 8))(v30, v10, v11);
        v12 = v31;
        v13 = v32;
        __swift_project_boxed_opaque_existential_0Tm(v30, v31);
        v14 = (*(v13 + 40))(v9, v12, v13);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        before.offset = outlined destroy of AnyHashable(v33);
        v15 = v14 & v7;
        if (offset >= v8)
        {
          if (v15 >= v8 && offset >= v15)
          {
LABEL_16:
            v18 = *(a2 + 48);
            v19 = v18 + 40 * offset;
            v20 = (v18 + 40 * v6);
            if (offset != v6 || v19 >= v20 + 40)
            {
              v21 = *v20;
              v22 = v20[1];
              *(v19 + 32) = *(v20 + 4);
              *v19 = v21;
              *(v19 + 16) = v22;
            }

            v23 = *(a2 + 56);
            v24 = (v23 + 16 * offset);
            v25 = (v23 + 16 * v6);
            if (offset != v6 || v24 >= v25 + 1)
            {
              *v24 = *v25;
              offset = v6;
            }
          }
        }

        else if (v15 >= v8 || offset >= v15)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  else
  {
    *(v4 + ((before.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(before.offset)) - 1;
  }

  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return before.offset;
}

{
  offset = before.offset;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (before.offset + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    before.offset = _HashTable.previousHole(before:)(before).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (before.offset + 1) & v7;
      do
      {
        outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v34);
        v10 = *(a2 + 40);
        v11 = v35;
        v12 = v36;
        __swift_project_boxed_opaque_existential_0Tm(v34, v35);
        (*(v12 + 8))(v31, v11, v12);
        v13 = v32;
        v14 = v33;
        __swift_project_boxed_opaque_existential_0Tm(v31, v32);
        v15 = (*(v14 + 40))(v10, v13, v14);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        before.offset = outlined destroy of AnyHashable(v34);
        v16 = v15 & v7;
        if (offset >= v8)
        {
          if (v16 >= v8 && offset >= v16)
          {
LABEL_16:
            v19 = *(a2 + 48);
            v20 = v19 + 40 * offset;
            v21 = (v19 + 40 * v6);
            if (offset != v6 || v20 >= v21 + 40)
            {
              v22 = *v21;
              v23 = v21[1];
              *(v20 + 32) = *(v21 + 4);
              *v20 = v22;
              *(v20 + 16) = v23;
            }

            v24 = *(a2 + 56);
            v25 = (v24 + 32 * offset);
            v26 = (v24 + 32 * v6);
            if (offset != v6 || v25 >= v26 + 2)
            {
              v9 = v26[1];
              *v25 = *v26;
              v25[1] = v9;
              offset = v6;
            }
          }
        }

        else if (v16 >= v8 || offset >= v16)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  else
  {
    *(v4 + ((before.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(before.offset)) - 1;
  }

  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return before.offset;
}

{
  offset = before.offset;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (before.offset + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    before.offset = _HashTable.previousHole(before:)(before).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (before.offset + 1) & v7;
      do
      {
        v11 = (*(a2 + 48) + 16 * v6);
        v12 = *v11;
        v13 = v11[1];
        v14 = _swift_stdlib_Hashing_parameters ^ *(a2 + 40);
        v26[0] = 0;
        v26[1] = v14 ^ 0x736F6D6570736575;
        v26[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
        v26[3] = v14 ^ 0x6C7967656E657261;
        v26[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
        v27 = 0u;
        v28 = 0u;
        v13;
        String.hash(into:)(v26, v12, v13);
        v13;
        before.offset = Hasher._finalize()();
        v15 = before.offset & v7;
        if (offset >= v8)
        {
          if (v15 < v8)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v8)
        {
          goto LABEL_11;
        }

        if (offset >= v15)
        {
LABEL_11:
          v16 = *(a2 + 48);
          v17 = (v16 + 16 * offset);
          v18 = (v16 + 16 * v6);
          if (offset != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 40 * offset;
          v21 = (v19 + 40 * v6);
          if (offset != v6 || v20 >= v21 + 40)
          {
            v9 = *v21;
            v10 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v9;
            *(v20 + 16) = v10;
            offset = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  else
  {
    *(v4 + ((before.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(before.offset)) - 1;
  }

  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return before.offset;
}

{
  offset = before.offset;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (before.offset + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    before.offset = _HashTable.previousHole(before:)(before).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (before.offset + 1) & v7;
      do
      {
        v9 = (*(a2 + 48) + 16 * v6);
        v10 = *v9;
        v11 = v9[1];
        v12 = _swift_stdlib_Hashing_parameters ^ *(a2 + 40);
        v24[0] = 0;
        v24[1] = v12 ^ 0x736F6D6570736575;
        v24[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
        v24[3] = v12 ^ 0x6C7967656E657261;
        v24[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
        v25 = 0u;
        v26 = 0u;
        v11;
        String.hash(into:)(v24, v10, v11);
        v11;
        before.offset = Hasher._finalize()();
        v13 = before.offset & v7;
        if (offset >= v8)
        {
          if (v13 < v8)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v8)
        {
          goto LABEL_11;
        }

        if (offset >= v13)
        {
LABEL_11:
          v14 = *(a2 + 48);
          v15 = (v14 + 16 * offset);
          v16 = (v14 + 16 * v6);
          if (offset != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * offset);
          v19 = (v17 + 16 * v6);
          if (offset != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            offset = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  else
  {
    *(v4 + ((before.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(before.offset)) - 1;
  }

  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return before.offset;
}

Swift::Void __swiftcall _NativeDictionary._delete(at:)(Swift::_HashTable::Bucket at)
{
  v49 = v4;
  v42 = v3;
  v5 = v2;
  v6 = v1;
  offset = at.offset;
  v8 = *(v2 - 1);
  v9 = MEMORY[0x1EEE9AC00](at.offset);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12 + 64;
  v14 = -1 << *(v12 + 32);
  v15 = (v9 + 1) & ~v14;
  if (((1 << v15) & *(v12 + 64 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;
    v17.offset = _HashTable.previousHole(before:)(offset).offset;
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v46 = *(v49 + 32);
      v47 = v49 + 32;
      v45 = (v17.offset + 1) & v16;
      v19 = *(v8 + 16);
      v18 = v8 + 16;
      v50 = *(v18 + 56);
      v48 = v18;
      v20 = (v18 - 8);
      v43 = v42 - 1;
      v44 = v19;
      do
      {
        v21 = v13;
        v22 = v50 * v15;
        v44(v11, *(v6 + 48) + v50 * v15, v5);
        v23 = v46(*(v6 + 40), v5, v49);
        (*v20)(v11, v5);
        v24 = v23 & v16;
        if (offset >= v45)
        {
          if (v24 >= v45 && offset >= v24)
          {
LABEL_16:
            v27 = *(v6 + 48);
            v28 = (v27 + v50 * offset);
            v29 = (v27 + v22);
            v30 = v27 + v22 + v50;
            if (v50 * offset < v22 || v28 >= v30)
            {
              swift_arrayInitWithTakeFrontToBack(v28, v29, 1, v5);
            }

            else if (v50 * offset != v22)
            {
              swift_arrayInitWithTakeBackToFront(v28, v29, 1, v5);
            }

            v32 = *(v6 + 56);
            v33 = *(*v43 + 72);
            v34 = v33 * offset;
            v35 = (v32 + v33 * offset);
            v36 = (v32 + v33 * v15);
            v37 = v33 * offset < (v33 * v15) || v35 >= &v36[v33];
            v13 = v21;
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack(v35, v36, 1, v42);
              offset = v15;
            }

            else
            {
              offset = v15;
              if (v34 != v33 * v15)
              {
                swift_arrayInitWithTakeBackToFront(v35, v36, 1, v42);
                offset = v15;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v45 || offset >= v24)
        {
          goto LABEL_16;
        }

        v13 = v21;
LABEL_5:
        v15 = (v15 + 1) & v16;
      }

      while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    }

    *(v13 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  else
  {
    *(v13 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  v38 = *(v6 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v40;
    ++*(v6 + 36);
  }
}

__objc2_class **_ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_UnsafeBitsetVKXEfU_AhByxSiSgGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxAIIsgnndzo_AJsAK_pSHRzAIRs_r0_lIetyggozo_Tp5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a2;
  v32 = a7;
  v40 = a4;
  v33 = a1;
  v42 = a6;
  result = MEMORY[0x1EEE9AC00](a1);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v8;
  v10 = 0;
  v41 = v11;
  v12 = *(v11 + 64);
  v34 = 0;
  v35 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v36 = v8 + 8;
  v37 = v8 + 16;
  v17 = v42;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v41;
    v24 = v38;
    v23 = v39;
    (*(v39 + 16))(v38, v41[6] + *(v39 + 72) * v21, v17);
    v25 = v22[7] + 16 * v21;
    v26 = *v25;
    LOBYTE(v25) = *(v25 + 8);
    v44 = v26;
    v45 = v25;
    v27 = v46;
    v28 = v40(v24, &v44);
    result = (*(v23 + 8))(v24, v17);
    v46 = v27;
    if (v27)
    {
      return result;
    }

    v15 = v43;
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v33, v31, v34, v41, v42);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v33, v31, v34, v41, v42);
    }

    v20 = *(v35 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v43 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

__objc2_class **closure #1 in _NativeDictionary.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, char *)@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, __objc2_class ***a6@<X8>)
{
  v36 = a5;
  v37 = a1;
  v50 = a3;
  v34 = a2;
  v35 = a6;
  v52 = a4;
  v6 = MEMORY[0x1EEE9AC00](a1);
  v48 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v8;
  result = MEMORY[0x1EEE9AC00](v6);
  v46 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v51 = v14;
  v15 = *(v14 + 64);
  v40 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v38 = 0;
  v39 = (v16 + 63) >> 6;
  v44 = v10 + 16;
  v45 = v11 + 16;
  v49 = v10;
  v47 = v11;
  v42 = v11 + 8;
  v43 = v10 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v53 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v13 << 6);
    v23 = v51;
    v24 = v46;
    v25 = v47;
    (*(v47 + 16))(v46, v51[6] + *(v47 + 72) * v22, v54);
    v26 = v23[7];
    v28 = v48;
    v27 = v49;
    v29 = *(v49 + 72);
    v41 = v22;
    v30 = v52;
    (*(v49 + 16))(v48, v26 + v29 * v22, v52);
    v31 = v55;
    v32 = v50(v24, v28);
    (*(v27 + 8))(v28, v30);
    result = (*(v25 + 8))(v24, v54);
    v55 = v31;
    if (v31)
    {
      return result;
    }

    v18 = v53;
    if (v32)
    {
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_16:
        result = _NativeDictionary.extractDictionary(using:count:)(v37, v34, v38, v51, v54, v52, v36);
        *v35 = result;
        return result;
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v39)
    {
      goto LABEL_16;
    }

    v21 = *(v40 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _NativeDictionary.makeIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  return result;
}

double protocol witness for Sequence.makeIterator() in conformance _NativeDictionary<A, B>@<D0>(uint64_t a1@<X8>)
{
  _NativeDictionary.makeIterator()(v5, *v1);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance _NativeDictionary<A, B>.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[4];
  if (v14)
  {
    v2[4] = (v14 - 1) & v14;
    v15 = __clz(__rbit64(v14)) | (v2[3] << 6);
LABEL_8:
    v20 = *v2;
    (*(v10 + 16))(v13, *(v20 + 48) + *(v10 + 72) * v15, v9);
    (*(v5 + 16))(v8, *(v20 + 56) + *(v5 + 72) * v15, v4);
    swift_getTupleTypeMetadata2(0, v9, v4, "key value ", 0);
    v22 = v21;
    v23 = *(v21 + 48);
    (*(v10 + 32))(a2, v13, v9);
    (*(v5 + 32))(a2 + v23, v8, v4);
    return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  else
  {
    v16 = v2[3];
    v17 = (v2[2] + 64) >> 6;
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v18 >= v17)
      {
        break;
      }

      v2[3] = v18;
      v19 = *(v2[1] + 8 * v18);
      v2[4] = v19;
      ++v16;
      if (v19)
      {
        v2[4] = (v19 - 1) & v19;
        v15 = __clz(__rbit64(v19)) | (v18 << 6);
        goto LABEL_8;
      }
    }

    swift_getTupleTypeMetadata2(0, v9, v4, "key value ", 0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a2, 1, 1, v24);
  }
}

uint64_t _NativeSet._storage.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

__objc2_class **_NativeSet.init(_:)(void *a1, Class *a2, uint64_t a3)
{
  v6 = [a1 count];

  return _NativeSet.init(_:capacity:)(a1, v6, a2, a3);
}

__objc2_class **_NativeSet.init(_:capacity:)(void *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional(0, a3, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = *(a3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptySetSingleton;
  }

  v40 = v16;
  v41 = v15;
  v39 = v13;
  type metadata accessor for _SetStorage(0, a3, a4, v14);
  v19 = specialized static _HashTable.scale(forCapacity:)(a2);
  v20 = specialized static Hasher._hash(seed:_:)(0, a1);
  LOBYTE(v43) = 0;
  v21 = static _SetStorage.allocate(scale:age:seed:)(v19, v20, 0, 1);
  v43 = v21;
  v22 = type metadata accessor for __CocoaSet.Iterator();
  v23 = swift_allocObject(v22, 0xE8, 7uLL);
  v24 = 0;
  *(v23 + 1) = 0u;
  v25 = a1;
  v23[27] = 0;
  v26 = v23 + 27;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 6) = 0u;
  *(v23 + 7) = 0u;
  *(v23 + 8) = 0u;
  *(v23 + 9) = 0u;
  *(v23 + 10) = 0u;
  *(v23 + 11) = 0u;
  *(v23 + 12) = 0u;
  *(v23 + 5) = 0u;
  v37 = (v9 + 16);
  v38 = (v12 + 56);
  v23[28] = 0;
  v35 = (v9 + 8);
  v36 = (v12 + 48);
  v23[26] = v25;
  v34 = (v12 + 32);
  while (1)
  {
    if (v24 != v23[28])
    {
      v28 = v23[3];
      if (!v28)
      {
LABEL_23:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v24 >> 60)
      {
        __break(1u);
LABEL_22:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_10;
    }

    v27 = [v23[26] countByEnumeratingWithState:v23 + 2 objects:v23 + 10 count:16];
    v23[28] = v27;
    if (!v27)
    {
      break;
    }

    v23[27] = 0;
    v28 = v23[3];
    if (!v28)
    {
      goto LABEL_23;
    }

    v24 = 0;
LABEL_10:
    v29 = (v28 + 8 * v24);
    if ((v29 & 7) != 0)
    {
      goto LABEL_22;
    }

    v30 = *v29;
    *v26 = v24 + 1;
    swift_unknownObjectRetain(v30);
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v42 = v30;
      swift_dynamicCast(v18, &v42, qword_1EEEAC710, a3, 7uLL);
    }

    else
    {
      (*v38)(v41, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v30, a3, v41);
      (*v37)(v40, v41, v39);
      if ((*v36)(v40, 1, a3) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v30);
      (*v35)(v41, v39);
      (*v34)(v18, v40, a3);
    }

    v32 = v21[2];
    if (v21[3] <= v32)
    {
      type metadata accessor for _NativeSet(0, a3, a4, v31);
      _NativeSet.resize(capacity:)(v32 + 1);
    }

    v21 = v43;
    _NativeSet._unsafeInsertNew(_:)(v18, v43, a3);
    v24 = *v26;
    if ((*v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }
  }

  v23[27] = -1;
LABEL_19:
  v23;
  return v21;
}

uint64_t static _DictionaryStorage.convert(_:capacity:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  v4 = specialized static _HashTable.scale(forCapacity:)(a2);
  v5 = specialized static Hasher._hash(seed:_:)(0, a1);

  return a3(v4, v5, 0, 1);
}

double __CocoaDictionary.makeIterator()(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = swift_allocObject(v3, 0xE8, 7uLL);
  result = 0.0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  v4[27] = 0;
  v4[28] = 0;
  v4[26] = a1;
  return result;
}

uint64_t _NativeSet.insertNew(_:isUnique:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a2 & 1) == 0)
  {
    v7 = a1;
    if (a2)
    {
      _NativeSet.resize(capacity:)(v5 + 1);
    }

    else if (v6 <= v5)
    {
      _NativeSet.copyAndResize(capacity:)(v5 + 1);
    }

    else
    {
      _NativeSet.copy()();
    }

    a1 = v7;
  }

  v8 = *v3;
  v9 = *(a3 + 16);

  return _NativeSet._unsafeInsertNew(_:)(a1, v8, v9);
}

unint64_t _NativeSet.find(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 40);
  v12 = *(v11 + 32);
  v28 = a1;
  v29 = v11;
  v14 = v12(v10, v13, v11);
  v15 = a2 + 56;
  v27 = a2;
  v16 = -1 << *(a2 + 32);
  v17 = v14 & ~v16;
  if ((*(a2 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v21 = *(v6 + 16);
    v19 = v6 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    v23 = (v19 - 8);
    do
    {
      v20(v8, *(v27 + 48) + v22 * v17, a3);
      v24 = (*(*(v29 + 8) + 8))(v8, v28, a3);
      (*v23)(v8, a3);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return v17;
}

unint64_t _NativeSet.find(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v22 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9 + 56;
  v23 = v9;
  v11 = -1 << *(v9 + 32);
  v13 = v12 & ~v11;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v8, *(v23 + 48) + v18 * v13, a4);
      v19 = (*(*(v24 + 8) + 8))(v8, v22, a4);
      (*(v16 - 8))(v8, a4);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    a1 = *(*v1 + 24);
  }

  v3 = specialized static _HashTable.scale(forCapacity:)(a1);
  result = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSS_Tt2g5(v3, 0x100000000, 0, 1);
  v5 = result;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = (v2 + 56);
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    for (i = (v8 + 63) >> 6; v10; result = specialized _NativeSet._unsafeInsertNew(_:)(*v15, v15[1], v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = (*(v2 + 48) + 16 * (v12 | (v6 << 6)));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v16 + 63) >> 6, (v2 + 56));
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v2 + 16) = 0;
  }

  result = v2;
  *v1 = v5;
  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    a1 = *(*v1 + 24);
  }

  v3 = specialized static _HashTable.scale(forCapacity:)(a1);
  LOBYTE(v17[0]) = 1;
  v4 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v3, 0x100000000, 0, 1);
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = *(v2 + 48) + 40 * (v11 | (v5 << 6));
      v15 = *(v14 + 16);
      v17[0] = *v14;
      v17[1] = v15;
      v18 = *(v14 + 32);
      specialized _NativeSet._unsafeInsertNew(_:)(v17, v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v16 + 63) >> 6, (v2 + 56));
    }

    else
    {
      *v6 = -1 << v16;
    }

    *(v2 + 16) = 0;
  }

  v2;
  *v1 = v4;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void, uint64_t))
{
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    a1 = *(*v3 + 24);
  }

  v7 = specialized static _HashTable.scale(forCapacity:)(a1);
  result = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSO_Tt2g5Tm(v7, 0x100000000, 0, 1, a2);
  v9 = result;
  if (*(v6 + 16))
  {
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v6 + 56);
    for (i = (v12 + 63) >> 6; v14; result = a3(*(*(v6 + 48) + 8 * (v16 | (v10 << 6))), v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    v19 = 1 << *(v6 + 32);
    if (v19 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v19 + 63) >> 6, (v6 + 56));
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v6 + 16) = 0;
  }

  result = v6;
  *v3 = v9;
  return result;
}

Swift::Void __swiftcall _NativeSet.resize(capacity:)(Swift::Int capacity)
{
  v3 = v2;
  v4 = *(v1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](capacity);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(*v2 + 24) <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(*v2 + 24);
  }

  type metadata accessor for _SetStorage(0, v4, *(v7 + 24), v8);
  v13 = specialized static _HashTable.scale(forCapacity:)(v12);
  v27 = 1;
  v26 = static _SetStorage.allocate(scale:age:seed:)(v13, 0x100000000, 0, 1);
  if (*(v11 + 16))
  {
    v25 = v3;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      (*(v5 + 32))(v10, *(v11 + 48) + *(v5 + 72) * (v20 | (v14 << 6)), v4);
      _NativeSet._unsafeInsertNew(_:)(v10, v26, v4);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v19)
      {
        break;
      }

      v22 = v15[v14];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    v23 = 1 << *(v11 + 32);
    if (v23 > 63)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v23 + 63) >> 6, (v11 + 56));
    }

    else
    {
      *v15 = -1 << v23;
    }

    v3 = v25;
    *(v11 + 16) = 0;
  }

  v11;
  *v3 = v26;
}

void *static _SetStorage.resize(original:capacity:move:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized static _HashTable.scale(forCapacity:)(a2);

  return static _SetStorage.allocate(scale:age:seed:)(v2, 0x100000000, 0, 1);
}

__n128 specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 8))(v32, v5, v6);
  v7 = v33;
  v8 = v34;
  __swift_project_boxed_opaque_existential_0Tm(v32, v33);
  v9 = (*(v8 + 40))(v4, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v10 = a2 + 56;
  v27 = a2;
  v11 = -1 << *(a2 + 32);
  v12 = v9 & ~v11;
  v13 = v12 >> 6;
  v14 = *(a2 + 56 + 8 * (v12 >> 6));
  v15 = 1 << v12;
  if (((1 << v12) & v14) != 0)
  {
    v16 = ~v11;
    do
    {
      outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v12, v32);
      v17 = v33;
      v18 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v18 + 8))(v29, v17, v18);
      v19 = v30;
      v20 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v21 = *(a1 + 24);
      v22 = *(a1 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a1, v21);
      (*(v22 + 8))(v28, v21, v22);
      v23 = (*(v20 + 16))(v28, v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      if (v23)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
      }

      v12 = (v12 + 1) & v16;
      v13 = v12 >> 6;
      v14 = *(v10 + 8 * (v12 >> 6));
      v15 = 1 << v12;
    }

    while ((v14 & (1 << v12)) != 0);
  }

  *(v10 + 8 * v13) = v14 | v15;
  v24 = *(v27 + 48) + 40 * v12;
  result = *a1;
  v26 = *(a1 + 16);
  *(v24 + 32) = *(a1 + 32);
  *v24 = result;
  *(v24 + 16) = v26;
  ++*(v27 + 16);
  return result;
}

{
  v4 = *(a2 + 40);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 8))(v32, v5, v6);
  v7 = v33;
  v8 = v34;
  __swift_project_boxed_opaque_existential_0Tm(v32, v33);
  v9 = (*(v8 + 40))(v4, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v10 = a2 + 56;
  v27 = a2;
  v11 = -1 << *(a2 + 32);
  v12 = v9 & ~v11;
  v13 = v12 >> 6;
  v14 = *(a2 + 56 + 8 * (v12 >> 6));
  v15 = 1 << v12;
  if (((1 << v12) & v14) != 0)
  {
    v16 = ~v11;
    do
    {
      outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v12, v32);
      v17 = v33;
      v18 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v18 + 8))(v29, v17, v18);
      v19 = v30;
      v20 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v21 = *(a1 + 24);
      v22 = *(a1 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a1, v21);
      (*(v22 + 8))(v28, v21, v22);
      v23 = (*(v20 + 16))(v28, v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      if (v23)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
      }

      v12 = (v12 + 1) & v16;
      v13 = v12 >> 6;
      v14 = *(v10 + 8 * (v12 >> 6));
      v15 = 1 << v12;
    }

    while (((1 << v12) & v14) != 0);
  }

  *(v10 + 8 * v13) = v15 | v14;
  v24 = *(v27 + 48) + 40 * v12;
  result = *a1;
  v26 = *(a1 + 16);
  *(v24 + 32) = *(a1 + 32);
  *v24 = result;
  *(v24 + 16) = v26;
  ++*(v27 + 16);
  return result;
}