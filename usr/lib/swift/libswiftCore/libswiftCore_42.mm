uint64_t DropWhileSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v16 - 8) + 16))(a2, v3, v16);
  (*(v13 + 16))(v15, v3 + *(a1 + 36), v12);
  v18 = *(type metadata accessor for DropWhileSequence.Iterator(0, v7, v6, v17) + 36);
  (*(*(v9 - 8) + 56))(a2 + v18, 1, 1, v9);
  return (*(v13 + 40))(a2 + v18, v15, v12);
}

uint64_t DropWhileSequence.drop(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v36 = a1;
  v37 = a2;
  v38 = a4;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v33 = v9;
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v31 - v10;
  v34 = v8;
  v35 = v7;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v15 = type metadata accessor for Optional(0, v11, v13, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v31 - v21;
  v23 = v5;
  (*(v16 + 16))(v19, v5 + *(a3 + 36), v15);
  if ((*(v20 + 48))(v19, 1, v12) == 1)
  {
    (*(v16 + 8))(v19, v15);
    return (*(*(a3 - 8) + 32))(v38, v23, a3);
  }

  (*(v20 + 32))(v22, v19, v12);
  v26 = v36;
  v25 = v37;
  v27 = v39;
  v28 = v36(v22);
  if (v27)
  {
    (*(*(a3 - 8) + 8))(v23, a3);
    return (*(v20 + 8))(v22, v12);
  }

  else
  {
    v29 = v28;
    (*(v20 + 8))(v22, v12);
    if ((v29 & 1) == 0)
    {
      return (*(*(a3 - 8) + 32))(v38, v23, a3);
    }

    v30 = v32;
    (*(v31 + 16))(v32, v23, v33);
    (*(*(a3 - 8) + 8))(v23, a3);
    return DropWhileSequence.init(iterator:predicate:)(v30, v26, v25, v34, v35, v38);
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DropWhileSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DropWhileSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

__objc2_class **Sequence.map<A>(_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADsAE_pqd__Isgnrzr_xABsAE_pSTRzsAE_pRsd_0_r_0_lIetMgnozo_Tpq5Tm(thunk for @callee_guaranteed (@in_guaranteed A.Sequence.Element) -> (@out A1, @error @owned Error)partial apply, v6, a3, a4, a5);
}

uint64_t Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  v23 = a8;
  v10 = v8;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v19);
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a1;
  v20 = v23(a2, a3, a7, v24, a4, a5);
  (*(v17 + 8))(v10, a4);
  return v20;
}

void Sequence.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, char a2, uint64_t (*a3)(char *), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(a6 + 56))(a5, a6);
  swift_getAssociatedTypeWitness(255, a6, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = type metadata accessor for Array(0, v12, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v15, v16);
  Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(a1, a2 & 1, a3, a4, v15, WitnessTable);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(Swift::String::Index *a1, uint64_t a2, uint64_t a3, Swift::String::Index position, Swift::UInt64 a5, unint64_t a6, unint64_t a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_33:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      v8 = a5 >> 14;
      v9 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v9) = 1;
      }

      v10 = 4 << v9;
      v11 = position._rawBits >> 14;
      v12 = a7 & 0xFFFFFFFFFFFFFFLL;
      v13 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(a7) & 0xF;
      }

      else
      {
        v14 = a6 & 0xFFFFFFFFFFFFLL;
      }

      rawBits = position._rawBits;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_33;
        }

        v16 = rawBits >> 14;
        if (rawBits >> 14 == v8)
        {
          goto LABEL_36;
        }

        v17 = rawBits & 0xC;
        v18 = rawBits;
        if (v17 == v10)
        {
          v68 = v7;
          v73 = a1;
          v64 = a2;
          v78 = a3;
          v83 = a5;
          v22 = a7;
          v23 = a6;
          v24 = position._rawBits;
          v25 = v8;
          v26 = v12;
          v88 = v13;
          v27 = v14;
          v28._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          v14 = v27;
          a5 = v83;
          v13 = v88;
          v12 = v26;
          v8 = v25;
          position._rawBits = v24;
          a6 = v23;
          a7 = v22;
          v18 = v28._rawBits;
          a2 = v64;
          v7 = v68;
          a1 = v73;
          a3 = v78;
          v16 = v18 >> 14;
          if (v18 >> 14 < v11)
          {
LABEL_37:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v16 < v11)
        {
          goto LABEL_37;
        }

        if (v16 >= v8)
        {
          goto LABEL_37;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          v69 = v7;
          v74 = a1;
          v65 = a2;
          v79 = a3;
          v84 = a5;
          v29 = a7;
          v30 = a6;
          v31 = position._rawBits;
          v32 = v8;
          v33 = v12;
          v89 = v13;
          v34 = v14;
          v35 = String.UTF8View._foreignSubscript(position:)(v18);
          v14 = v34;
          a5 = v84;
          v13 = v89;
          v12 = v33;
          v8 = v32;
          position._rawBits = v31;
          a6 = v30;
          a7 = v29;
          v21 = v35;
          a2 = v65;
          v7 = v69;
          a1 = v74;
          a3 = v79;
          if (v17 != v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v19 = v18 >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
            v92[0] = a6;
            v92[1] = v12;
            v21 = *(v92 + v19);
            if (v17 != v10)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v20 = v13;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v72 = v7;
              v77 = a1;
              v63 = v10;
              v67 = a2;
              v55 = a7;
              v56 = a6;
              v82 = v12;
              v87 = a5;
              v57 = position._rawBits;
              v58 = a3;
              v59 = v8;
              v91 = v13;
              v60 = v14;
              v61 = _StringObject.sharedUTF8.getter(a6, a7);
              v14 = v60;
              a5 = v87;
              v13 = v91;
              v8 = v59;
              v10 = v63;
              a2 = v67;
              a3 = v58;
              position._rawBits = v57;
              a6 = v56;
              a7 = v55;
              v20 = v61;
              v7 = v72;
              a1 = v77;
              v12 = v82;
            }

            v21 = v20[v19];
            if (v17 != v10)
            {
LABEL_22:
              if ((a7 & 0x1000000000000000) != 0)
              {
                goto LABEL_28;
              }

              goto LABEL_23;
            }
          }
        }

        v70 = v7;
        v75 = a1;
        v36._rawBits = rawBits;
        v66 = a2;
        v80 = a3;
        v37 = a7;
        v38 = a6;
        v39 = a5;
        v40 = position._rawBits;
        v41 = v8;
        v42 = v12;
        v43 = v13;
        v44 = v14;
        v85 = v21;
        v45._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v36)._rawBits;
        v21 = v85;
        v14 = v44;
        v13 = v43;
        v12 = v42;
        v8 = v41;
        a2 = v66;
        v7 = v70;
        position._rawBits = v40;
        a5 = v39;
        a6 = v38;
        a7 = v37;
        rawBits = v45._rawBits;
        a1 = v75;
        a3 = v80;
        if ((v37 & 0x1000000000000000) != 0)
        {
LABEL_28:
          v86 = v21;
          v90 = v13;
          v76 = v8;
          v81 = v12;
          if (v14 <= rawBits >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v46 = a2;
          v47 = a3;
          v48 = position._rawBits;
          v49 = a1;
          v50 = a5;
          v51 = v14;
          v52._rawBits = rawBits;
          v71 = a7;
          v53 = a6;
          v54._rawBits = String.UTF8View._foreignIndex(after:)(v52)._rawBits;
          a6 = v53;
          a7 = v71;
          v8 = v76;
          rawBits = v54._rawBits;
          a5 = v50;
          a1 = v49;
          position._rawBits = v48;
          a3 = v47;
          a2 = v46;
          v12 = v81;
          v13 = v90;
          v14 = v51;
          v21 = v86;
          goto LABEL_30;
        }

LABEL_23:
        rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_30:
        *(a2 + v7++) = v21;
        if (a3 == v7)
        {
          goto LABEL_35;
        }
      }
    }

    rawBits = position._rawBits;
LABEL_35:
    v7 = a3;
  }

  else
  {
    v7 = 0;
    rawBits = position._rawBits;
  }

LABEL_36:
  a1->_rawBits = position._rawBits;
  a1[1]._rawBits = a5;
  a1[2]._rawBits = a6;
  a1[3]._rawBits = a7;
  a1[4]._rawBits = rawBits;
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      if (a3 == 1)
      {
        v5 = 1;
      }

      else
      {
        a2[1] = a5;
        v5 = 2;
        a3 = 2;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    a3 = 0;
  }

  *a1 = a4;
  a1[1] = a5;
  a1[2] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, _WORD *a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    v5 = 0;
LABEL_16:
    *result = a4;
    *(result + 8) = v5;
    return v5;
  }

  if (a3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_16;
  }

  if (HIWORD(a4))
  {
    v4 = ((a4 + 67043328) >> 10) - 10240;
  }

  else
  {
    v4 = a4;
  }

  if (a4 < 0x10000 || !((((a4 + 67043328) >> 10) + 55296) >> 16))
  {
    *a2 = v4;
    v5 = 1;
    if (a3 != 1 && a4 >= 0x10000)
    {
      a2[1] = a4 & 0x3FF | 0xDC00;
      v5 = 2;
      if (a3 == 2)
      {
        v5 = 2;
      }
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (a3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  *a2 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 0);
  if (a4 >= 0x80)
  {
    if (v6 == 1)
    {
      v8 = 1;
      goto LABEL_13;
    }

    a2[1] = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 1uLL);
    if (v6 == 2)
    {
      v8 = 2;
      goto LABEL_13;
    }

    if (a4 >= 0x800)
    {
      a2[2] = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 2uLL);
      if (v6 == 3)
      {
        v8 = 3;
        goto LABEL_13;
      }

      if (a4 >= 0x10000)
      {
        a2[3] = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a4, 3uLL);
        v8 = v6;
        if (v6 == 4)
        {
          goto LABEL_13;
        }

        v8 = 4;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }

    goto LABEL_6;
  }

  v8 = 1;
  if (v6 != 1)
  {
LABEL_6:
    v6 = v8;
  }

LABEL_13:
  *a1 = a4;
  *(a1 + 8) = v8;
  return v6;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = v4;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v13 = a4;
  *(&v13 + 1) = a5;
  *&v14 = a6;
  *(&v14 + 1) = a7;
  *&v15 = a4;
  BYTE8(v15) = 1;
  *&v16 = &_swiftEmptyArrayStorage;
  BYTE8(v16) = 0;
  HIDWORD(v16) = 0;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a1;
        v11 = specialized Unicode._InternalNFD.Iterator.next()();
        if ((v11 & 0x100000000) != 0)
        {
          break;
        }

        a2 = v8;
        *(v8 + 4 * v7++) = v11;
        a3 = v9;
        a1 = v10;
        if (v9 == v7)
        {
          goto LABEL_10;
        }
      }

      a3 = v7;
      a1 = v10;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_10:
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *(a1 + 64) = 0x10000;
  *a1 = v13;
  *(a1 + 16) = v14;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  *&v34 = a4;
  *(&v34 + 1) = a5;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v8 = a7;
  }

  else
  {
    v8 = a6;
  }

  *&v35 = a6;
  *(&v35 + 1) = a7;
  *&v36 = a4;
  WORD4(v36) = 1;
  BYTE10(v36) = (v8 & 0x4000000000000000) != 0;
  LOBYTE(v37) = 1;
  *(&v37 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v38) = 0;
  *(&v38 + 4) = 0x1000000000000;
  *&v39 = &_swiftEmptyArrayStorage;
  BYTE8(v39) = 0;
  HIDWORD(v39) = 0;
  v40 = 1;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_40:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v10 = a2;
      for (i = 0; i != a3; ++i)
      {
        if (i == a3)
        {
          goto LABEL_40;
        }

        MEMORY[0x1EEE9AC00](a1);
        if (BYTE9(v36) != 1)
        {
          if (BYTE10(v36))
          {
            a1 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v34, v12);
            if ((a1 & 0x100000000) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            a1 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v36 + 8, partial apply for specialized closure #1 in Unicode._InternalNFC.Iterator.next());
            if ((a1 & 0x100000000) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        BYTE9(v36) = 1;
        if (BYTE10(v36))
        {
          goto LABEL_42;
        }

        a1 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v36 + 8);
        if ((a1 & 0x100000000) != 0)
        {
          v13 = HIDWORD(v39);
          v14 = v40;
          HIDWORD(v39) = a1;
          v40 = 1;
          if (v14 == 1)
          {
            v15 = v39;
            v16 = *(v39 + 16);
            if (!v16)
            {
              BYTE8(v39) = 0;
              goto LABEL_42;
            }

            if ((BYTE8(v39) & 1) == 0)
            {
              v17 = v16 - 1;
              if (v16 != 1)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v39);
                *&v39 = v15;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                }

                *&v39 = v15;
                v22 = &v15[v16 + 3] + 2;
                v23 = v15 + 18;
                v24 = 1;
                do
                {
                  if (v24 - 1 != v17)
                  {
                    v26 = v15[2];
                    if (v24 - 1 >= v26 || v17 >= v26)
                    {
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                    }

                    v27 = *v23;
                    v28 = *(v23 - 1);
                    v29 = *v22;
                    *(v23 - 1) = *(v22 - 1);
                    *v23 = v29;
                    *(v22 - 1) = v28;
                    *v22 = v27;
                  }

                  --v17;
                  v22 -= 4;
                  v23 += 4;
                }

                while (v24++ < v17);
                *&v39 = v15;
              }

              BYTE8(v39) = 1;
              if (!v15[2])
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v18 = swift_isUniquelyReferenced_nonNull_native(v15);
            *&v39 = v15;
            if (v18)
            {
              v19 = v15[2];
              if (!v19)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              *&v39 = v15;
              v19 = v15[2];
              if (!v19)
              {
LABEL_47:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v20 = (v19 - 1);
            a1 = LODWORD(v15[v20 + 4]);
            v15[2] = v20;
            *&v39 = v15;
          }

          else
          {
            a1 = v13;
          }
        }

LABEL_26:
        *v10++ = a1;
      }
    }

    i = a3;
  }

  else
  {
    i = 0;
  }

LABEL_42:
  v30 = v39;
  *(v7 + 64) = v38;
  *(v7 + 80) = v30;
  *(v7 + 96) = v40;
  v31 = v35;
  *v7 = v34;
  *(v7 + 16) = v31;
  v32 = v37;
  *(v7 + 32) = v36;
  *(v7 + 48) = v32;
  return i;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for __CocoaDictionary.Iterator();
  v9 = swift_allocObject(v8, 0xE8, 7uLL);
  *(v9 + 1) = 0u;
  v9[27] = 0;
  v10 = v9 + 27;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  v9[28] = 0;
  v9[26] = a4;
  if (!a2)
  {
    goto LABEL_17;
  }

  if (a3 < 0)
  {
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v23 = a1;
  v11 = 0;
  v12 = &unk_1E69ED000;
  while (1)
  {
    if (a3 == v11)
    {
      goto LABEL_19;
    }

    v13 = *v10;
    if ((*v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    if (v13 != v9[28])
    {
      v15 = v9[3];
      if (!v15)
      {
        goto LABEL_25;
      }

      if (v13 >> 60)
      {
        __break(1u);
LABEL_24:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_13;
    }

    v14 = [v9[26] countByEnumeratingWithState:v9 + 2 objects:v9 + 10 count:16];
    v9[28] = v14;
    if (!v14)
    {
      break;
    }

    v9[27] = 0;
    v15 = v9[3];
    if (!v15)
    {
      goto LABEL_25;
    }

    v13 = 0;
LABEL_13:
    v16 = (v15 + 8 * v13);
    if ((v16 & 7) != 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v9[27] = v13 + 1;
    v18 = v9[26];
    v19 = v12;
    v20 = v12[432];
    swift_unknownObjectRetain(v17);
    v21 = [v18 v20];
    if (!v21)
    {
LABEL_25:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    ++v11;
    *a2 = v17;
    a2[1] = v21;
    a2 += 2;
    v12 = v19;
    if (a3 == v11)
    {
      v11 = a3;
      goto LABEL_21;
    }
  }

  *v10 = -1;
LABEL_21:
  a1 = v23;
LABEL_18:
  *a1 = v9;
  return v11;
}

{
  if (a2)
  {
    if (a3 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      *a2 = a4;
      v4 = 1;
      a3 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    a3 = 0;
  }

  *a1 = a4;
  a1[1] = v4;
  return a3;
}

{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v15 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v10 = a3;
  if (a3 < 0)
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v11 = a2;
  v12 = 0;
  v13 = 0;
  for (i = (63 - v7) >> 6; v9; v12 = v15)
  {
    v15 = v12;
LABEL_13:
    ++v13;
    v17 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
    v18 = v17[1];
    v9 &= v9 - 1;
    *v11 = *v17;
    v11[1] = v18;
    if (v13 == v10)
    {
      v18;
      goto LABEL_22;
    }

    v11 += 2;
    v18;
  }

  v16 = v12;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v15 >= i)
    {
      break;
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
  if (i <= v12 + 1)
  {
    v19 = v12 + 1;
  }

  else
  {
    v19 = (63 - v7) >> 6;
  }

  v15 = v19 - 1;
  v10 = v13;
LABEL_22:
  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v15;
  a1[4] = v9;
  return v10;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      v4 = 0;
      while (a3 != v4)
      {
        if (!a4)
        {
          goto LABEL_10;
        }

        *(a2 + v4) = a4 - 1;
        a4 >>= 8;
        if (a3 == ++v4)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  *a1 = a4;
  return v4;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t **a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v7 = 0;
    a3 = 0;
    goto LABEL_23;
  }

  v5 = *a4;
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (a3 < 0)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (v6 == a3)
    {
      goto LABEL_17;
    }

    v8 = v7;
    if (v5)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v7 << 6);
      goto LABEL_13;
    }

    do
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_17:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v11 >= a5)
      {
        v5 = 0;
        if (a5 <= v7 + 1)
        {
          v14 = v7 + 1;
        }

        else
        {
          v14 = a5;
        }

        v7 = v14 - 1;
        a3 = v6;
        goto LABEL_23;
      }

      v12 = a4[v11];
      ++v8;
    }

    while (!v12);
    v13 = __clz(__rbit64(v12));
    v5 = (v12 - 1) & v12;
    v10 = v13 | (v11 << 6);
    v7 = v11;
LABEL_13:
    ++v6;
    *a2++ = v10;
  }

  while (v6 != a3);
LABEL_23:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v7;
  a1[3] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (a3 < 0)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      v4 = 0;
      while (a3 != v4)
      {
        if (!a4)
        {
          goto LABEL_10;
        }

        *(a2 + 8 * v4) = __clz(__rbit64(a4));
        a4 &= a4 - 1;
        if (a3 == ++v4)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  *a1 = a4;
  return v4;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, _BYTE *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_23:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v5 = HIBYTE(a5) & 0xF;
      v6 = a3 - 1;
      if (a3 - 1 >= v5)
      {
        v6 = HIBYTE(a5) & 0xF;
      }

      if (v6 >= a3)
      {
        v6 = a3;
      }

      if (v6 >= 8)
      {
        v9 = a2;
        v10 = v6 + 1;
        v11 = v10 & 7;
        if ((v10 & 7) == 0)
        {
          v11 = 8;
        }

        v7 = v10 - v11;
        a2 += v7;
        v12 = vdupq_n_s64(a5);
        v13 = xmmword_18071DCD0;
        v14 = xmmword_18071DCE0;
        v15 = xmmword_18071DCF0;
        v16 = xmmword_180672710;
        v17 = vdupq_n_s64(a4);
        v18 = vdupq_n_s64(0x38uLL);
        v19 = v7;
        do
        {
          v20 = vdupq_n_s64(8uLL);
          v21 = vshlq_n_s64(v13, 3uLL);
          v22 = vshlq_n_s64(v14, 3uLL);
          v23 = vshlq_n_s64(v16, 3uLL);
          v24 = vshlq_n_s64(v15, 3uLL);
          v29.val[1] = vbslq_s8(vcgtq_u64(v20, v15), vshlq_u64(v17, vnegq_s64(v24)), vshlq_u64(v12, vnegq_s64(vandq_s8(v24, v18))));
          v29.val[0] = vbslq_s8(vcgtq_u64(v20, v16), vshlq_u64(v17, vnegq_s64(v23)), vshlq_u64(v12, vnegq_s64(vandq_s8(v23, v18))));
          v29.val[2] = vbslq_s8(vcgtq_u64(v20, v14), vshlq_u64(v17, vnegq_s64(v22)), vshlq_u64(v12, vnegq_s64(vandq_s8(v22, v18))));
          v29.val[3] = vbslq_s8(vcgtq_u64(v20, v13), vshlq_u64(v17, vnegq_s64(v21)), vshlq_u64(v12, vnegq_s64(vandq_s8(v21, v18))));
          *v9++ = vqtbl4q_s8(v29, xmmword_18071DD00).u64[0];
          v14 = vaddq_s64(v14, v20);
          v15 = vaddq_s64(v15, v20);
          v16 = vaddq_s64(v16, v20);
          v13 = vaddq_s64(v13, v20);
          v19 -= 8;
        }

        while (v19);
      }

      else
      {
        v7 = 0;
      }

      v25 = 8 * v7;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_23;
        }

        if (v5 == v7)
        {
          break;
        }

        v26 = v7 >= 8;
        v27 = v7 + 1;
        v28 = a5 >> (v25 & 0x38);
        if (!v26)
        {
          v28 = a4 >> v25;
        }

        *a2++ = v28;
        v25 += 8;
        v7 = v27;
        if (a3 == v27)
        {
          goto LABEL_11;
        }
      }

      a3 = HIBYTE(a5) & 0xF;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a3;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for __CocoaSet.Iterator();
  v9 = swift_allocObject(v8, 0xE8, 7uLL);
  *(v9 + 1) = 0u;
  v9[27] = 0;
  v10 = v9 + 27;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  v9[28] = 0;
  v9[26] = a4;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = 0;
    if (a3)
    {
      while (1)
      {
        if (a3 == result)
        {
          goto LABEL_17;
        }

        v12 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v12 == v9[28])
        {
          v13 = result;
          v14 = [v9[26] countByEnumeratingWithState:v9 + 2 objects:v9 + 10 count:16];
          v9[28] = v14;
          if (!v14)
          {
            *v10 = -1;
            result = v13;
            break;
          }

          v9[27] = 0;
          v15 = v9[3];
          if (!v15)
          {
            goto LABEL_22;
          }

          result = v13;
          v12 = 0;
        }

        else
        {
          v15 = v9[3];
          if (!v15)
          {
LABEL_22:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (v12 >> 60)
          {
            __break(1u);
LABEL_21:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v16 = (v15 + 8 * v12);
        if ((v16 & 7) != 0)
        {
          goto LABEL_21;
        }

        v17 = result + 1;
        v18 = *v16;
        *v10 = v12 + 1;
        *(a2 + 8 * result) = v18;
        swift_unknownObjectRetain(v18);
        result = v17;
        if (a3 == v17)
        {
          result = a3;
          break;
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 + 1 < 64)
  {
    v5 = ~(-1 << (a5 + 1));
  }

  else
  {
    v5 = -1;
  }

  v6 = *a4 & v5;
  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_18;
  }

  if (a3 < 0)
  {
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = 0;
  if (!a3)
  {
    goto LABEL_18;
  }

  v8 = 0;
  v9 = (a5 + 64) >> 6;
  do
  {
    if (v8 == a3)
    {
      goto LABEL_19;
    }

    v10 = v7;
    if (v6)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v7 << 6);
      goto LABEL_15;
    }

    do
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v13 >= v9)
      {
        v6 = 0;
        if (v9 <= (v7 + 1))
        {
          v17 = v7 + 1;
        }

        else
        {
          v17 = (a5 + 64) >> 6;
        }

        v7 = v17 - 1;
        a3 = v8;
        goto LABEL_18;
      }

      v14 = a4[v13];
      ++v10;
    }

    while (!v14);
    v15 = __clz(__rbit64(v14));
    v6 = (v14 - 1) & v14;
    v12 = v15 | (v13 << 6);
    v7 = v13;
LABEL_15:
    ++v8;
    *a2++ = v12;
  }

  while (v8 != a3);
LABEL_18:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v7;
  a1[3] = v6;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
      goto LABEL_10;
    }

    if (a3)
    {
      v11 = 0;
      v12._rawBits = a4;
      while (a3 != v11)
      {
        if ((v12._rawBits ^ a5) < 0x4000)
        {
          goto LABEL_13;
        }

        ++v11;
        v20 = a1;
        v13 = a2;
        v14 = a3;
        v15 = Substring.subscript.getter(v12._rawBits, a4, a5, a6, a7);
        v17 = v16;
        v18._rawBits = Substring.index(after:)(v12)._rawBits;
        a3 = v14;
        v12._rawBits = v18._rawBits;
        a1 = v20;
        *v13 = v15;
        v13[1] = v17;
        a2 = v13 + 2;
        if (v14 == v11)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v12._rawBits = a4;
LABEL_12:
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v12._rawBits = a4;
  }

LABEL_13:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = v12._rawBits;
  return v11;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(Swift::String::Index *a1, uint64_t a2, uint64_t a3, Swift::String::Index a4, Swift::UInt64 a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_58:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      v8 = a5 >> 14;
      v9 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v9) = 1;
      }

      v10 = 4 << v9;
      v11 = a4._rawBits >> 14;
      v12 = a7 & 0xFFFFFFFFFFFFFFLL;
      v13 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v14 = a6 & 0xFFFFFFFFFFFFLL;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(a7) & 0xF;
        v15 = (a7 >> 62) & 1;
      }

      else
      {
        v15 = a6 < 0;
      }

      rawBits = a4._rawBits;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_58;
        }

        v17 = rawBits >> 14;
        if (rawBits >> 14 == v8)
        {
          goto LABEL_61;
        }

        v18 = rawBits;
        if ((rawBits & 0xC) == v10)
        {
          v116 = v11;
          v118 = v8;
          v97 = v7;
          v105 = a1;
          v122 = a2;
          v124 = v13;
          v27 = a3;
          v28 = a7;
          v29 = a6;
          v30 = a5;
          v120 = v10;
          v31 = a4._rawBits;
          v32 = v12;
          v33 = v15;
          v34 = v14;
          v35._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          v14 = v34;
          v15 = v33;
          v12 = v32;
          a3 = v27;
          a4._rawBits = v31;
          v10 = v120;
          a2 = v122;
          v11 = v116;
          v8 = v118;
          v13 = v124;
          a5 = v30;
          a6 = v29;
          a7 = v28;
          v18 = v35._rawBits;
          v7 = v97;
          a1 = v105;
          v17 = v18 >> 14;
          if (v18 >> 14 < v116)
          {
LABEL_62:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v17 < v11)
        {
          goto LABEL_62;
        }

        if (v17 >= v8)
        {
          goto LABEL_62;
        }

        v119 = v10;
        v121 = a2;
        v115 = v11;
        v117 = v8;
        v123 = v13;
        v113 = v14;
        v114 = v15;
        if ((a7 & 0x1000000000000000) != 0)
        {
          v98 = v7;
          v106 = a1;
          v36._rawBits = v18;
          v37 = a3;
          v38 = a7;
          v39 = a6;
          v40 = a5;
          v41 = a4._rawBits;
          v45 = v13;
          v42 = v15;
          v43 = v12;
          v44 = String.UTF16View._foreignSubscript(position:)(v36);
          v12 = v43;
          v15 = v42;
          v13 = v45;
          a3 = v37;
          a4._rawBits = v41;
          v10 = v119;
          a2 = v121;
          a5 = v40;
          a6 = v39;
          a7 = v38;
          LOWORD(v45) = v44;
          v7 = v98;
          a1 = v106;
          goto LABEL_33;
        }

        v112 = a3;
        if (v18)
        {
          v19 = v18 >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v99 = v7;
          v107 = a1;
          v46 = a7;
          v47 = a6;
          v48 = a5;
          v49 = a4._rawBits;
          v50 = v12;
          v51._rawBits = _StringGuts.scalarAlignSlow(_:)(v18)._rawBits;
          v12 = v50;
          a4._rawBits = v49;
          v13 = v123;
          a5 = v48;
          a6 = v47;
          a7 = v46;
          v52 = v51._rawBits;
          v7 = v99;
          a1 = v107;
          v19 = v52 >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
LABEL_24:
            v21 = a4._rawBits;
            v22 = a1;
            v23 = a5;
            v24 = a7;
            v26 = a6;
            v125 = a6;
            v126 = v12;
            v20 = v12;
            v25 = &v125;
            goto LABEL_25;
          }
        }

        v20 = v12;
        v21 = a4._rawBits;
        v22 = a1;
        v23 = a5;
        v24 = a7;
        v25 = v13;
        v26 = a6;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v104 = v19;
          v25 = _StringObject.sharedUTF8.getter(a6, a7);
          v19 = v104;
        }

LABEL_25:
        v53 = _decodeScalar(_:startingAt:)(v25, a2, v19);
        v54 = HIWORD(v53);
        if ((v18 & 0xC000) == 0x4000)
        {
          a3 = v112;
          a2 = v121;
          if (!v54)
          {
            goto LABEL_65;
          }

          a7 = v24;
          a6 = v26;
          a5 = v23;
          a1 = v22;
          a4._rawBits = v21;
          v12 = v20;
          LOWORD(v45) = v53 & 0x3FF | 0xDC00;
          goto LABEL_32;
        }

        a7 = v24;
        a6 = v26;
        a5 = v23;
        a1 = v22;
        a4._rawBits = v21;
        a3 = v112;
        a2 = v121;
        v12 = v20;
        if (!v54)
        {
          LOWORD(v45) = v53;
LABEL_32:
          v10 = v119;
          v13 = v123;
          v15 = v114;
          goto LABEL_33;
        }

        LODWORD(v45) = ((v53 + 67043328) >> 10) + 55296;
        v10 = v119;
        v13 = v123;
        v15 = v114;
        if ((v45 & 0x10000) != 0)
        {
          __break(1u);
LABEL_65:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_33:
        v14 = v113;
        if ((rawBits & 0xC) == v10)
        {
          v101 = v7;
          v109 = a1;
          v65._rawBits = rawBits;
          v66 = a3;
          v67 = a7;
          v68 = a6;
          v69 = a5;
          v70 = a4._rawBits;
          v71 = v12;
          v72 = v15;
          v73._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v65)._rawBits;
          v14 = v113;
          v15 = v72;
          v12 = v71;
          a2 = v121;
          v13 = v123;
          a3 = v66;
          a4._rawBits = v70;
          a5 = v69;
          a6 = v68;
          a7 = v67;
          rawBits = v73._rawBits;
          v7 = v101;
          a1 = v109;
        }

        v55 = rawBits >> 16;
        if (rawBits >> 16 >= v14)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          v102 = v7;
          v110 = a1;
          v74 = rawBits;
          v75 = a7;
          v76 = a6;
          v77 = a5;
          v78 = a4._rawBits;
          v79 = a3;
          v80 = a2;
          v81 = v12;
          v82 = v14;
          v83 = specialized String.UTF16View._foreignIndex(after:)(v74);
          v14 = v82;
          v15 = v114;
          v12 = v81;
          a2 = v80;
          a3 = v79;
          a4._rawBits = v78;
          a5 = v77;
          a6 = v76;
          a7 = v75;
          rawBits = v83;
          v7 = v102;
          a1 = v110;
          v13 = v123;
          goto LABEL_39;
        }

        if (v15)
        {
          rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
LABEL_39:
          v11 = v115;
          v8 = v117;
          goto LABEL_54;
        }

        if ((rawBits & 0xC001) != 0)
        {
          if ((a7 & 0x2000000000000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v103 = v7;
          v111 = a1;
          v84._rawBits = rawBits;
          v85 = a3;
          v86 = a7;
          v87 = a6;
          v88 = a5;
          v89 = a4._rawBits;
          v90 = v12;
          v91 = v15;
          v92 = v14;
          v93._rawBits = _StringGuts.scalarAlignSlow(_:)(v84)._rawBits;
          v14 = v92;
          v15 = v91;
          v12 = v90;
          a2 = v121;
          v13 = v123;
          a3 = v85;
          a4._rawBits = v89;
          a5 = v88;
          a6 = v87;
          a7 = v86;
          rawBits = v93._rawBits;
          v7 = v103;
          a1 = v111;
          v55 = rawBits >> 16;
          if ((v86 & 0x2000000000000000) == 0)
          {
LABEL_42:
            v56 = v13;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v100 = v7;
              v108 = a1;
              v57 = a7;
              v58 = a6;
              v59 = a5;
              v60 = a4._rawBits;
              v61 = a3;
              v62 = v12;
              v63 = v14;
              v64 = _StringObject.sharedUTF8.getter(a6, a7);
              v14 = v63;
              v12 = v62;
              a2 = v121;
              v13 = v123;
              a3 = v61;
              a4._rawBits = v60;
              v15 = v114;
              a5 = v59;
              a6 = v58;
              v10 = v119;
              a7 = v57;
              v56 = v64;
              v7 = v100;
              a1 = v108;
            }

            goto LABEL_47;
          }
        }

        v125 = a6;
        v126 = v12;
        v56 = &v125;
LABEL_47:
        v94 = *(v56 + v55);
        v11 = v115;
        v8 = v117;
        if ((v94 & 0x80) != 0)
        {
          LODWORD(v95) = __clz(v94 ^ 0xFF) - 24;
          if (v95 == 4)
          {
            if ((rawBits & 0xC000) == 0)
            {
              rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 0x4004;
              goto LABEL_54;
            }

            v95 = 4;
          }

          else
          {
            v95 = v95;
          }
        }

        else
        {
          v95 = 1;
        }

        rawBits = (rawBits + (v95 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
LABEL_54:
        *(a2 + 2 * v7++) = v45;
        if (a3 == v7)
        {
          goto LABEL_60;
        }
      }
    }

    rawBits = a4._rawBits;
LABEL_60:
    v7 = a3;
  }

  else
  {
    v7 = 0;
    rawBits = a4._rawBits;
  }

LABEL_61:
  a1->_rawBits = a4._rawBits;
  a1[1]._rawBits = a5;
  a1[2]._rawBits = a6;
  a1[3]._rawBits = a7;
  a1[4]._rawBits = rawBits;
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(Swift::String::Index *a1, uint64_t a2, uint64_t a3, Swift::String::Index a4, Swift::UInt64 a5, unint64_t a6, unint64_t a7)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_55:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      v8 = a5 >> 14;
      v9 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v9) = 1;
      }

      v10 = 4 << v9;
      v11 = a4._rawBits >> 14;
      v12 = a7 & 0xFFFFFFFFFFFFFFLL;
      v13 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(a7) & 0xF;
      }

      else
      {
        v14 = a6 & 0xFFFFFFFFFFFFLL;
      }

      v15._rawBits = a4._rawBits;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_55;
        }

        v16 = v15._rawBits >> 14;
        if (v15._rawBits >> 14 == v8)
        {
          goto LABEL_58;
        }

        v76 = v14;
        v17 = v15._rawBits & 0xC;
        v18 = (v15._rawBits & 1) == 0 || v17 == v10;
        v19 = v18;
        if (v18)
        {
          rawBits = v15._rawBits;
          if (v17 == v10)
          {
            v66 = a1;
            v69 = v7;
            v72 = a2;
            v75 = v12;
            v63 = a3;
            v35 = a7;
            v36 = a6;
            v57 = v13;
            v37 = a5;
            v38 = a4._rawBits;
            v39._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v15)._rawBits;
            a2 = v72;
            v12 = v75;
            a4._rawBits = v38;
            a5 = v37;
            v13 = v57;
            a6 = v36;
            a7 = v35;
            rawBits = v39._rawBits;
            v7 = v69;
            a3 = v63;
            a1 = v66;
            v16 = rawBits >> 14;
            if (rawBits >> 14 < v11)
            {
              goto LABEL_59;
            }
          }

          else if (v16 < v11)
          {
            goto LABEL_59;
          }

          if (v16 >= v8)
          {
            goto LABEL_59;
          }

          if ((rawBits & 1) == 0)
          {
            v64 = a1;
            v67 = v7;
            v70 = a2;
            v73 = v12;
            v61 = a3;
            v21 = a7;
            v22 = a6;
            v56 = v13;
            v23 = a5;
            v24 = a4._rawBits;
            v25._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
            a2 = v70;
            v12 = v73;
            a4._rawBits = v24;
            a5 = v23;
            v13 = v56;
            a6 = v22;
            a7 = v21;
            rawBits = v25._rawBits;
            v7 = v67;
            a3 = v61;
            a1 = v64;
          }
        }

        else
        {
          if (v16 < v11)
          {
            goto LABEL_59;
          }

          rawBits = v15._rawBits;
          if (v16 >= v8)
          {
            goto LABEL_59;
          }
        }

        v68 = v7;
        v71 = a2;
        v60 = a4._rawBits;
        v62 = a3;
        v65 = a1;
        v59 = a5;
        v74 = v12;
        if ((a7 & 0x1000000000000000) != 0)
        {
          v28 = v13;
          v30 = a6;
          v27 = a7;
          value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
          if (v19)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v26 = rawBits >> 16;
          if ((a7 & 0x2000000000000000) != 0)
          {
            v28 = v13;
            v27 = a7;
            v30 = a6;
            v77 = a6;
            v78 = v12;
            v29 = &v77;
          }

          else
          {
            v27 = a7;
            v28 = v13;
            v29 = v13;
            v30 = a6;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v29 = _StringObject.sharedUTF8.getter(a6, a7);
            }
          }

          value = _decodeScalar(_:startingAt:)(v29, a2, v26);
          if (v19)
          {
LABEL_33:
            a7 = v27;
            a6 = v30;
            if (v17 == v10)
            {
              v51._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v15)._rawBits;
              a6 = v30;
              a7 = v27;
              v15._rawBits = v51._rawBits;
            }

            v13 = v28;
            v14 = v76;
            if (v76 <= v15._rawBits >> 16)
            {
LABEL_59:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            if ((v15._rawBits & 1) == 0)
            {
              v32 = a7;
              v33 = a6;
              v34._rawBits = _StringGuts.scalarAlignSlow(_:)(v15)._rawBits;
              a6 = v33;
              a7 = v32;
              v13 = v28;
              v15._rawBits = v15._rawBits & 0xC | v34._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
            }

            goto LABEL_42;
          }
        }

        v14 = v76;
        a7 = v27;
        a6 = v30;
        v13 = v28;
        if (v76 <= v15._rawBits >> 16)
        {
          goto LABEL_59;
        }

LABEL_42:
        if ((a7 & 0x1000000000000000) != 0)
        {
          v44._rawBits = v15._rawBits;
          v45 = a7;
          v46 = v13;
          v47 = a6;
          v48._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v44)._rawBits;
          a6 = v47;
          v13 = v46;
          a7 = v45;
          v15._rawBits = v48._rawBits;
          a5 = v59;
          a4._rawBits = v60;
          a1 = v65;
          v41 = v68;
          a3 = v62;
          a2 = v71;
          v12 = v74;
        }

        else
        {
          v40 = v15._rawBits >> 16;
          a5 = v59;
          a4._rawBits = v60;
          a1 = v65;
          v41 = v68;
          a3 = v62;
          a2 = v71;
          if ((a7 & 0x2000000000000000) != 0)
          {
            v12 = v74;
            v77 = a6;
            v78 = v74;
            v43 = *(&v77 + v40);
          }

          else
          {
            v42 = v13;
            v12 = v74;
            if ((a6 & 0x1000000000000000) == 0)
            {
              v52 = a7;
              v53 = a6;
              v58 = v13;
              v54 = _StringObject.sharedUTF8.getter(a6, a7);
              a2 = v71;
              v12 = v74;
              a3 = v62;
              v13 = v58;
              a4._rawBits = v60;
              a5 = v59;
              a6 = v53;
              a7 = v52;
              v14 = v76;
              v42 = v54;
              a1 = v65;
              v41 = v68;
            }

            v43 = v42[v40];
          }

          v49 = v43;
          v50 = __clz(v43 ^ 0xFF) - 24;
          if (v49 >= 0)
          {
            LOBYTE(v50) = 1;
          }

          v15._rawBits = ((v40 + v50) << 16) | 5;
        }

        *(a2 + 4 * v41) = value;
        v7 = v41 + 1;
        if (a3 == v41 + 1)
        {
          goto LABEL_57;
        }
      }
    }

    v15._rawBits = a4._rawBits;
LABEL_57:
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v15._rawBits = a4._rawBits;
  }

LABEL_58:
  a1->_rawBits = a4._rawBits;
  a1[1]._rawBits = a5;
  a1[2]._rawBits = a6;
  a1[3]._rawBits = a7;
  a1[4]._rawBits = v15._rawBits;
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(char **a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_14:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v5 = 0;
      while (1)
      {
        if (a3 == v5)
        {
          goto LABEL_14;
        }

        if (!a4)
        {
          goto LABEL_13;
        }

        if (!a5)
        {
LABEL_17:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (a4 == a5)
        {
          break;
        }

        if (a4 >= a5)
        {
          goto LABEL_17;
        }

        v6 = *a4++;
        *(a2 + v5++) = v6;
        if (a3 == v5)
        {
          goto LABEL_11;
        }
      }

      a4 = a5;
    }

    else
    {
LABEL_11:
      v5 = a3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:
  *a1 = a4;
  a1[1] = a5;
  return v5;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v5;
  *&v6 = 0;
  *(&v6 + 1) = v5;
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_13:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v7 = 0;
      while (1)
      {
        if (a3 == v7)
        {
          goto LABEL_13;
        }

        v8 = a2;
        v9 = a3;
        v10 = a1;
        v11 = String.Iterator.next()();
        if (!v11.value._object)
        {
          break;
        }

        ++v7;
        *v8 = v11;
        a2 = v8 + 1;
        a3 = v9;
        a1 = v10;
        if (v9 == v7)
        {
          a4 = v13;
          a5 = v14;
          v6 = v15;
          goto LABEL_12;
        }
      }

      a4 = v13;
      a5 = v14;
      a3 = v7;
      v6 = v15;
      a1 = v10;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_12:
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = v6;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (a2)
  {
    if (a3 < 0)
    {
LABEL_26:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = a5 & 0xFFFFFFFFFFFFFFLL;
      v10 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v11 = 1;
      while (1)
      {
        if (a3 == v6)
        {
          goto LABEL_26;
        }

        if (v11)
        {
          if (v8 >= v5)
          {
            v11 = 1;
            a3 = v6;
            goto LABEL_30;
          }

          v31 = v10;
          if ((a5 & 0x1000000000000000) != 0)
          {
            v12 = v9;
            v13 = a2;
            v14 = a3;
            v16 = a1;
            v18 = a4;
            v15 = a5;
            v23 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8 << 16));
            scalarLength = v23.scalarLength;
            v20 = *&v23._0._value;
          }

          else
          {
            if ((a5 & 0x2000000000000000) != 0)
            {
              v13 = a2;
              v14 = a3;
              v15 = a5;
              v16 = a1;
              v18 = a4;
              v32[0] = a4;
              v32[1] = v9;
              v12 = v9;
              v17 = v32;
            }

            else
            {
              v12 = v9;
              v13 = a2;
              v14 = a3;
              v15 = a5;
              v16 = a1;
              v17 = v10;
              v18 = a4;
              if ((a4 & 0x1000000000000000) == 0)
              {
                v17 = _StringObject.sharedUTF8.getter(a4, a5);
              }
            }

            v20 = _decodeScalar(_:startingAt:)(v17, a2, v8);
          }

          v19 = v20;
          v8 += scalarLength;
          v22 = v20 >= 0x10000;
          a1 = v16;
          a5 = v15;
          a4 = v18;
          a3 = v14;
          a2 = v13;
          v9 = v12;
          if (v22)
          {
            v24 = v13;
            v25 = v14;
            v26 = a4;
            v27 = a5;
            v28 = a1;
            v30 = v19;
            result = Unicode.Scalar.UTF16View.subscript.getter(1, v19);
            LODWORD(v19) = ((v30 + 67043328) >> 10) + 55296;
            if ((v19 & 0x10000) != 0)
            {
              __break(1u);
              return result;
            }

            v7 = result;
            v11 = 0;
            a1 = v28;
            a5 = v27;
            a4 = v26;
            a3 = v25;
            a2 = v24;
            v9 = v12;
          }

          else
          {
            v11 = 1;
          }

          v10 = v31;
        }

        else
        {
          v11 = 1;
          LOWORD(v19) = v7;
          v7 = 0;
        }

        *(a2 + 2 * v6++) = v19;
        if (a3 == v6)
        {
          goto LABEL_30;
        }
      }
    }

    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    a3 = 0;
  }

  v11 = 1;
LABEL_30:
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = v8;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 34) = v11;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, Swift::Int scalarLength, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v8 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (scalarLength)
  {
    v9 = a3;
    if (a3 < 0)
    {
LABEL_19:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v10 = scalarLength;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        if (v9 == v11)
        {
          goto LABEL_19;
        }

        if (v12 >= v8)
        {
          break;
        }

        if ((a5 & 0x1000000000000000) != 0)
        {
          v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v12 << 16));
          scalarLength = v15.scalarLength;
          value = v15._0._value;
        }

        else
        {
          if ((a5 & 0x2000000000000000) != 0)
          {
            v17[0] = a4;
            v17[1] = a5 & 0xFFFFFFFFFFFFFFLL;
            v13 = v17;
          }

          else
          {
            v13 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a4 & 0x1000000000000000) == 0)
            {
              v13 = _StringObject.sharedUTF8.getter(a4, a5);
            }
          }

          value = _decodeScalar(_:startingAt:)(v13, scalarLength, v12);
        }

        *(v10 + 4 * v11) = value;
        v12 += scalarLength;
        if (v9 == ++v11)
        {
          goto LABEL_22;
        }
      }

      v9 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

LABEL_22:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v12;
  a1[3] = v8;
  return v9;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_12;
  }

  v5 = *(a4 + 16);
  if (v5)
  {
    result = 0;
    v7 = (a4 + 40);
    v8 = a3 - 1;
    while (1)
    {
      if (result >= v5)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v9 = a3;
      v10 = a1;
      v11 = a4;
      v12 = *v7;
      *a2 = *(v7 - 1);
      a2[1] = v12;
      if (v8 == result)
      {
        break;
      }

      v13 = result;
      v14 = a2;
      v12;
      a4 = v11;
      v5 = *(v11 + 16);
      result = v13 + 1;
      v7 += 2;
      a2 = v14 + 2;
      a1 = v10;
      a3 = v9;
      if (v13 + 1 == v5)
      {
        goto LABEL_12;
      }
    }

    v12;
    result = v9;
    a4 = v11;
    a1 = v10;
  }

  else
  {
LABEL_10:
    result = 0;
  }

LABEL_12:
  *a1 = a4;
  a1[1] = result;
  return result;
}

uint64_t Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v43 = a1;
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v13 = type metadata accessor for Optional(0, v9, v11, v12);
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v33 - v17;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  (*(a5 + 32))(a4, a5);
  if (a2)
  {
    if (a3 < 0)
    {
LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      v38 = v44 + 32;
      v39 = (v44 + 48);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v19, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v24 = 0;
      v25 = AssociatedConformanceWitness + 16;
      v26 = *(AssociatedConformanceWitness + 16);
      while (1)
      {
        if (a3 == v24)
        {
          goto LABEL_11;
        }

        v36 = v26;
        v37 = v25;
        v26(v19, AssociatedConformanceWitness);
        if ((*v39)(v16, 1, v10) == 1)
        {
          break;
        }

        ++v24;
        v34 = v19;
        v35 = v20;
        v27 = v44;
        v28 = *(v44 + 32);
        v33 = AssociatedConformanceWitness;
        v29 = v42;
        v28(v42, v16, v10);
        v30 = v29;
        AssociatedConformanceWitness = v33;
        v28(a2, v30, v10);
        v31 = *(v27 + 72);
        v19 = v34;
        v20 = v35;
        a2 += v31;
        v26 = v36;
        v25 = v37;
        if (a3 == v24)
        {
          goto LABEL_8;
        }
      }

      (*(v40 + 8))(v16, v41);
      (*(v20 + 32))(v43, v22, v19);
      return v24;
    }

    else
    {
LABEL_8:
      (*(v20 + 32))(v43, v22, v19);
    }
  }

  else
  {
    (*(v20 + 32))(v43, v22, v19);
    return 0;
  }

  return a3;
}

uint64_t Sequence.min(by:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a1;
  v60 = a2;
  v52 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v48 - v15;
  v54 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v48 - v20;
  v21 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v53 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  (*(v21 + 16))(v23, v62, a3);
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v30 = v63;
  v61 = v27;
  v62 = v25;
  v31 = v8;
  v48 = v29;
  v29(v25, AssociatedConformanceWitness);
  v32 = v54;
  v33 = *(v54 + 48);
  if (v33(v30, 1, v8) == 1)
  {
    (*(v53 + 8))(v61, v62);
    (*(v50 + 8))(v63, v51);
    return (*(v32 + 56))(v52, 1, 1, v8);
  }

  else
  {
    v58 = AssociatedConformanceWitness + 16;
    v35 = v55;
    v36 = v63;
    v63 = *(v32 + 32);
    (v63)(v64, v36, v8);
    v37 = v49;
    v57 = AssociatedConformanceWitness;
    v38 = v48;
    v48(v62, AssociatedConformanceWitness);
    v39 = v37;
    if (v33(v37, 1, v31) == 1)
    {
LABEL_4:
      v55 = v35;
      (*(v53 + 8))(v61, v62);
      (*(v50 + 8))(v39, v51);
      v40 = v52;
      (v63)(v52, v64, v31);
      return (*(v54 + 56))(v40, 0, 1, v31);
    }

    else
    {
      v41 = v38;
      v56 = v33;
      v42 = (v54 + 8);
      while (1)
      {
        v43 = v39;
        (v63)(v18, v39, v31);
        v44 = v59(v18, v64);
        if (v35)
        {
          break;
        }

        v45 = *v42;
        if (v44)
        {
          v46 = v64;
          v45(v64, v31);
          (v63)(v46, v18, v31);
        }

        else
        {
          v45(v18, v31);
        }

        v41(v62, v57);
        v39 = v43;
        if (v56(v43, 1, v31) == 1)
        {
          goto LABEL_4;
        }
      }

      v47 = *v42;
      (*v42)(v18, v31);
      v47(v64, v31);
      return (*(v53 + 8))(v61, v62);
    }
  }
}

uint64_t Sequence.max(by:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a1;
  v60 = a2;
  v52 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v48 - v15;
  v54 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v48 - v20;
  v21 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v53 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  (*(v21 + 16))(v23, v62, a3);
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v30 = v63;
  v61 = v27;
  v62 = v25;
  v31 = v8;
  v48 = v29;
  v29(v25, AssociatedConformanceWitness);
  v32 = v54;
  v33 = *(v54 + 48);
  if (v33(v30, 1, v8) == 1)
  {
    (*(v53 + 8))(v61, v62);
    (*(v50 + 8))(v63, v51);
    return (*(v32 + 56))(v52, 1, 1, v8);
  }

  else
  {
    v58 = AssociatedConformanceWitness + 16;
    v35 = v55;
    v36 = v63;
    v63 = *(v32 + 32);
    (v63)(v64, v36, v8);
    v37 = v49;
    v57 = AssociatedConformanceWitness;
    v38 = v48;
    v48(v62, AssociatedConformanceWitness);
    v39 = v37;
    if (v33(v37, 1, v31) == 1)
    {
LABEL_4:
      v55 = v35;
      (*(v53 + 8))(v61, v62);
      (*(v50 + 8))(v39, v51);
      v40 = v52;
      (v63)(v52, v64, v31);
      return (*(v54 + 56))(v40, 0, 1, v31);
    }

    else
    {
      v41 = v38;
      v56 = v33;
      v42 = (v54 + 8);
      while (1)
      {
        v43 = v39;
        (v63)(v18, v39, v31);
        v44 = v59(v64, v18);
        if (v35)
        {
          break;
        }

        v45 = *v42;
        if (v44)
        {
          v46 = v64;
          v45(v64, v31);
          (v63)(v46, v18, v31);
        }

        else
        {
          v45(v18, v31);
        }

        v41(v62, v57);
        v39 = v43;
        if (v56(v43, 1, v31) == 1)
        {
          goto LABEL_4;
        }
      }

      v47 = *v42;
      (*v42)(v18, v31);
      v47(v64, v31);
      return (*(v53 + 8))(v61, v62);
    }
  }
}

uint64_t Sequence<>.min()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = a3;
  v53 = a4;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = *(v7 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v62 = &v47 - v21;
  v22 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v26 = v25;
  v50 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v47 - v27;
  (*(v22 + 16))(v24, v60, a1);
  v29 = v16;
  (*(a2 + 32))(a1, a2);
  v30 = a2;
  v31 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v30, a1, v26, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v48 = *(AssociatedConformanceWitness + 16);
  v48(v26, AssociatedConformanceWitness);
  v34 = v29 + 48;
  v33 = *(v29 + 48);
  if (v33(v31, 1, v7) == 1)
  {
    (*(v50 + 8))(v28, v26);
    (*(v51 + 8))(v31, v52);
    return (*(v29 + 56))(v53, 1, 1, v7);
  }

  else
  {
    v47 = v29;
    v58 = *(v29 + 32);
    v59 = v29 + 32;
    v58(v62, v31, v7);
    v37 = v48;
    v36 = v49;
    v60 = v28;
    v57 = AssociatedConformanceWitness;
    v48(v26, AssociatedConformanceWitness);
    v56 = v34;
    if (v33(v36, 1, v7) != 1)
    {
      v39 = v37;
      v54 = (v47 + 8);
      v55 = v61 + 16;
      do
      {
        v40 = v26;
        v41 = v36;
        v42 = v36;
        v43 = v58;
        v58(v19, v42, v7);
        v44 = v62;
        v45 = (*(v61 + 16))(v19, v62, v7);
        v46 = *v54;
        if (v45)
        {
          v46(v44, v7);
          v43(v44, v19, v7);
        }

        else
        {
          v46(v19, v7);
        }

        v36 = v41;
        v26 = v40;
        v39(v40, v57);
      }

      while (v33(v41, 1, v7) != 1);
    }

    (*(v50 + 8))(v60, v26);
    (*(v51 + 8))(v36, v52);
    v38 = v53;
    v58(v53, v62, v7);
    return (*(v47 + 56))(v38, 0, 1, v7);
  }
}

uint64_t Sequence<>.max()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = a3;
  v53 = a4;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = *(v7 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v62 = &v47 - v21;
  v22 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v26 = v25;
  v50 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v47 - v27;
  (*(v22 + 16))(v24, v60, a1);
  v29 = v16;
  (*(a2 + 32))(a1, a2);
  v30 = a2;
  v31 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v30, a1, v26, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v48 = *(AssociatedConformanceWitness + 16);
  v48(v26, AssociatedConformanceWitness);
  v34 = v29 + 48;
  v33 = *(v29 + 48);
  if (v33(v31, 1, v7) == 1)
  {
    (*(v50 + 8))(v28, v26);
    (*(v51 + 8))(v31, v52);
    return (*(v29 + 56))(v53, 1, 1, v7);
  }

  else
  {
    v47 = v29;
    v58 = *(v29 + 32);
    v59 = v29 + 32;
    v58(v62, v31, v7);
    v37 = v48;
    v36 = v49;
    v60 = v28;
    v57 = AssociatedConformanceWitness;
    v48(v26, AssociatedConformanceWitness);
    v56 = v34;
    if (v33(v36, 1, v7) != 1)
    {
      v39 = v37;
      v54 = (v47 + 8);
      v55 = v61 + 16;
      do
      {
        v40 = v26;
        v41 = v36;
        v42 = v36;
        v43 = v58;
        v58(v19, v42, v7);
        v44 = v62;
        v45 = (*(v61 + 16))(v62, v19, v7);
        v46 = *v54;
        if (v45)
        {
          v46(v44, v7);
          v43(v44, v19, v7);
        }

        else
        {
          v46(v19, v7);
        }

        v36 = v41;
        v26 = v40;
        v39(v40, v57);
      }

      while (v33(v41, 1, v7) != 1);
    }

    (*(v50 + 8))(v60, v26);
    (*(v51 + 8))(v36, v52);
    v38 = v53;
    v58(v53, v62, v7);
    return (*(v47 + 56))(v38, 0, 1, v7);
  }
}

uint64_t Sequence.starts<A>(with:by:)(char *a1, uint64_t (*a2)(char *, char *), uint64_t a3, unint64_t a4, const char *a5, int **a6, uint64_t a7)
{
  v91 = a1;
  v77 = a2;
  v78 = a3;
  swift_getAssociatedTypeWitness(255, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v71 = type metadata accessor for Optional(0, v11, v13, v14);
  v70 = *(v71 - 8);
  v15 = MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v68 - v18;
  v88 = v12;
  v80 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v68 - v19;
  AssociatedConformanceWitness = a6;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v21 = v20;
  v73 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v68 - v22;
  v25 = type metadata accessor for Optional(0, v21, v23, v24);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v85 = &v68 - v27;
  v82 = a4;
  v28 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v84 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, v30, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v32 = v31;
  v75 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v68 - v34;
  v36 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v90 = v39;
  v74 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v68 - v40;
  (*(v36 + 16))(v38, v91, a5);
  v42 = *(a7 + 32);
  v89 = v41;
  v43 = v72;
  v86 = a5;
  v87 = a7;
  v42(a5, a7);
  v44 = v82;
  (*(v28 + 16))(v84, v92, v82);
  v45 = *(AssociatedConformanceWitness + 32);
  v91 = v35;
  v46 = AssociatedConformanceWitness;
  v45(v44);
  v92 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, v44, v32, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v81 = *(AssociatedConformanceWitness + 16);
  v82 = (AssociatedConformanceWitness + 16);
  v47 = v73 + 48;
  v48 = (v73 + 32);
  v84 = (v80 + 6);
  v49 = (v80 + 4);
  v50 = v80 + 1;
  v80 = (v73 + 8);
  while (1)
  {
    v51 = v85;
    v81(v92, AssociatedConformanceWitness);
    if ((*v47)(v51, 1, v21) == 1)
    {
      (*(v75 + 8))(v91, v92);
      v47 = v90;
      v64 = swift_getAssociatedConformanceWitness(v87, v86, v90, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v65 = v69;
      v66 = v89;
      (*(v64 + 16))(v47, v64);
      (*(v74 + 8))(v66, v47);
      LOBYTE(v47) = (*v84)(v65, 1, v88) == 1;
      (*(v70 + 8))(v65, v71);
      return v47 & 1;
    }

    (*v48)(v43, v51, v21);
    v52 = v90;
    v53 = swift_getAssociatedConformanceWitness(v87, v86, v90, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v54 = v43;
    v55 = v79;
    (*(v53 + 16))(v52, v53);
    v56 = v55;
    v57 = v55;
    v58 = v88;
    if ((*v84)(v57, 1, v88) == 1)
    {
      (*v80)(v54, v21);
      (*(v75 + 8))(v91, v92);
      (*(v74 + 8))(v89, v90);
      (*(v70 + 8))(v56, v71);
      LOBYTE(v47) = 1;
      return v47 & 1;
    }

    v59 = v21;
    v60 = v76;
    (*v49)(v76, v56, v58);
    v61 = v93;
    v62 = v77(v54, v60);
    v93 = v61;
    if (v61)
    {
      break;
    }

    v63 = v62;
    (*v50)(v60, v58);
    v21 = v59;
    (*v80)(v54, v59);
    v43 = v54;
    if ((v63 & 1) == 0)
    {
      (*(v75 + 8))(v91, v92);
      (*(v74 + 8))(v89, v90);
      LOBYTE(v47) = 0;
      return v47 & 1;
    }
  }

  (*v50)(v60, v58);
  (*v80)(v54, v59);
  (*(v75 + 8))(v91, v92);
  (*(v74 + 8))(v89, v90);
  return v47 & 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, const char *a3, swift *a4)
{
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v13, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v15 = v14;
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v34 = a1;
  v35 = a2;
  v36 = 0;
  v37 = v18;
  (*(v9 + 16))(v11, v4, a3);
  v19 = *(a4 + 4);
  a2;
  v19(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v15, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v21 = *(AssociatedConformanceWitness + 16);
  v21(&v32, v15, AssociatedConformanceWitness);
  for (i = v33; v33; i = v33)
  {
    v23 = v32;
    v24 = String.Iterator.next()();
    if (!v24.value._object)
    {
      i;
      (*(v31 + 8))(v17, v15);
      a2;
      return 1;
    }

    if (v23 == v24.value._countAndFlagsBits && i == v24.value._object)
    {
      i;
      v24.value._object;
    }

    else
    {
      if ((~(i & v24.value._object) & 0x6000000000000000) == 0)
      {
        i;
        v24.value._object;
LABEL_20:
        (*(v31 + 8))(v17, v15);
        v28 = a2;
LABEL_21:
        v28;
        return 0;
      }

      v26 = _stringCompareInternal(_:_:expecting:)(v23, i, v24.value._countAndFlagsBits, v24.value._object, 0);
      i;
      v24.value._object;
      if ((v26 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v21(&v32, v15, AssociatedConformanceWitness);
  }

  (*(v31 + 8))(v17, v15);
  object = String.Iterator.next()().value._object;
  a2;
  if (object)
  {
    v28 = object;
    goto LABEL_21;
  }

  return 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1;
  }

  v18 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  v48 = v18;
  v19._rawBits = v18 | (v17 << 16);
  (*(v9 + 16))(v11, v4, a3);
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v21 = *(AssociatedConformanceWitness + 16);
  v49[0] = v14;
  v21(&v50, v14, AssociatedConformanceWitness);
  v22 = v51;
  if (v51)
  {
    v46 = a2 & 0xFFFFFFFFFFFFFFLL;
    v47 = v49 + 6;
    v45 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if (v19._rawBits < 0x4000)
      {
        v22;
        (*(v44 + 8))(v16, v49[0]);
        return 1;
      }

      v23 = v50;
      v24._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v19)._rawBits;
      if (!(v24._rawBits >> 14))
      {
        break;
      }

      v25 = v24._rawBits >> 16;
      if (v24._rawBits >= 0x20000)
      {
        if ((a2 & 0x1000000000000000) == 0)
        {
          if ((a2 & 0x2000000000000000) != 0)
          {
            v49[1] = a1;
            v49[2] = v46;
            v29 = *&v47[v25];
            if (v29 != 2573 && (v29 & 0x80808080) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v26 = v45;
            if ((a1 & 0x1000000000000000) == 0)
            {
              rawBits = v24._rawBits;
              v40 = v24._rawBits >> 16;
              v26 = _StringObject.sharedUTF8.getter(a1, a2);
              v25 = v40;
              v24._rawBits = rawBits;
              if (!v26)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v27 = *&v26[v25 - 2];
            if (v27 != 2573 && (v27 & 0x80808080) == 0)
            {
LABEL_17:
              v25 = 1;
LABEL_18:
              v28 = v25 << 8;
              goto LABEL_26;
            }
          }
        }

        v31 = v24._rawBits;
        v25 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v25);
        v24._rawBits = v31;
      }

      v28 = v25 << 8;
      if (v25 > 63)
      {
        v28 = 0;
      }

LABEL_26:
      v19._rawBits = v28 | v48 | (v24._rawBits - (v25 << 16)) & 0xFFFFFFFFFFFF0000;
      v32._rawBits = v19._rawBits;
      v33 = String.subscript.getter(v32, a1, a2);
      v35 = v34;
      if (v23 == v33 && v22 == v34)
      {
        v22;
        v35;
      }

      else
      {
        if ((~v22 & 0x6000000000000000) == 0 && (v34 & 0x6000000000000000) == 0x6000000000000000)
        {
          v22;
          v35;
LABEL_41:
          (*(v44 + 8))(v16, v49[0]);
          return 0;
        }

        v37 = _stringCompareInternal(_:_:expecting:)(v23, v22, v33, v34, 0);
        v22;
        v35;
        if ((v37 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v21(&v50, v49[0], AssociatedConformanceWitness);
      v22 = v51;
      if (!v51)
      {
        goto LABEL_38;
      }
    }

    v38 = v24._rawBits;
    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v25 = 0;
    v24._rawBits = v38;
    goto LABEL_18;
  }

LABEL_38:
  (*(v44 + 8))(v16, v49[0]);
  if (v19._rawBits < 0x4000)
  {
    return 1;
  }

  v41._rawBits = String.index(before:)(v19)._rawBits;
  String.subscript.getter(v41, a1, a2);
  v42;
  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  a2;
  a4;
  v6 = String.Iterator.next()();
  if (v6.value._object)
  {
    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
    do
    {
      v10 = String.Iterator.next()();
      if (!v10.value._object)
      {
        a2;
        a4;
        object;
        return 1;
      }

      if (countAndFlagsBits == v10.value._countAndFlagsBits && object == v10.value._object)
      {
        object;
        v10.value._object;
      }

      else
      {
        if ((~(object & v10.value._object) & 0x6000000000000000) == 0)
        {
          object;
          v10.value._object;
LABEL_16:
          a2;
          v13 = a4;
LABEL_17:
          v13;
          return 0;
        }

        v11 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, object, v10.value._countAndFlagsBits, v10.value._object, 0);
        object;
        v10.value._object;
        if ((v11 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v9 = String.Iterator.next()();
      countAndFlagsBits = v9.value._countAndFlagsBits;
      object = v9.value._object;
    }

    while (v9.value._object);
  }

  a4;
  v12 = String.Iterator.next()().value._object;
  a2;
  if (v12)
  {
    v13 = v12;
    goto LABEL_17;
  }

  return 1;
}

{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = 7;
  }

  v53 = v7;
  v8._rawBits = v7 | (v6 << 16);
  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = 7;
  }

  if (v9)
  {
    v51 = a4 & 0xFFFFFFFFFFFFFFLL;
    v49 = a2 & 0xFFFFFFFFFFFFFFLL;
    v50 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v48 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13._rawBits = v10 | (v9 << 16);
    v52 = v10;
    while (1)
    {
      v14._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v13)._rawBits;
      if (!(v14._rawBits >> 14))
      {
        break;
      }

      v15 = v14._rawBits >> 16;
      if (v14._rawBits >= 0x20000)
      {
        if ((a4 & 0x1000000000000000) == 0)
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v54 = a3;
            v55 = v51;
            v17 = *(&v53 + v15 + 6);
          }

          else
          {
            v16 = v50;
            if ((a3 & 0x1000000000000000) == 0)
            {
              rawBits = v14._rawBits;
              v41 = v14._rawBits >> 16;
              v16 = _StringObject.sharedUTF8.getter(a3, a4);
              v15 = v41;
              v14._rawBits = rawBits;
              if (!v16)
              {
LABEL_60:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v17 = *&v16[v15 - 2];
          }

          if (v17 != 2573 && (v17 & 0x8080) == 0)
          {
            v15 = 1;
LABEL_28:
            v19 = v15 << 8;
            goto LABEL_34;
          }
        }

        v21 = v14._rawBits;
        v15 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v15);
        v14._rawBits = v21;
      }

      v19 = v15 << 8;
      if (v15 >= 64)
      {
        v19 = 0;
      }

LABEL_34:
      v22 = v19 | (v14._rawBits - (v15 << 16)) & 0xFFFFFFFFFFFF0000;
      v13._rawBits = v22 | v10;
      v23._rawBits = v22 | v10;
      v24 = String.subscript.getter(v23, a3, a4);
      v26 = v25;
      if (v8._rawBits < 0x4000)
      {
        v25;
        return 1;
      }

      v27 = v24;
      v28._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v8)._rawBits;
      if (!(v28._rawBits >> 14))
      {
        v33 = v28._rawBits;
        if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
        {
LABEL_68:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v29 = 0;
        v28._rawBits = v33;
        goto LABEL_45;
      }

      v29 = v28._rawBits >> 16;
      if (v28._rawBits >= 0x20000)
      {
        if ((a2 & 0x1000000000000000) == 0)
        {
          if ((a2 & 0x2000000000000000) != 0)
          {
            v54 = a1;
            v55 = v49;
            v31 = *(&v53 + v29 + 6);
          }

          else
          {
            v30 = v48;
            if ((a1 & 0x1000000000000000) == 0)
            {
              v42 = v28._rawBits;
              v43 = v28._rawBits >> 16;
              v30 = _StringObject.sharedUTF8.getter(a1, a2);
              v29 = v43;
              v28._rawBits = v42;
              if (!v30)
              {
                goto LABEL_60;
              }
            }

            v31 = *&v30[v29 - 2];
          }

          if (v31 != 2573 && (v31 & 0x80808080) == 0)
          {
            v29 = 1;
LABEL_45:
            v32 = v29 << 8;
            goto LABEL_51;
          }
        }

        v34 = v28._rawBits;
        v29 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v29);
        v28._rawBits = v34;
      }

      v32 = v29 << 8;
      if (v29 > 63)
      {
        v32 = 0;
      }

LABEL_51:
      v8._rawBits = v32 | v53 | (v28._rawBits - (v29 << 16)) & 0xFFFFFFFFFFFF0000;
      v35._rawBits = v8._rawBits;
      v37 = String.subscript.getter(v35, a1, a2);
      v38 = v36;
      if (v27 == v37 && v26 == v36)
      {
        v26;
        v38;
      }

      else
      {
        if ((~v26 & 0x6000000000000000) == 0 && (v36 & 0x6000000000000000) == 0x6000000000000000)
        {
          v26;
          v44 = v38;
          goto LABEL_62;
        }

        v39 = _stringCompareInternal(_:_:expecting:)(v27, v26, v37, v36, 0);
        v26;
        v38;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v10 = v52;
      if (v22 < 0x4000)
      {
        goto LABEL_64;
      }
    }

    v20 = v14._rawBits;
    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      goto LABEL_68;
    }

    v15 = 0;
    v14._rawBits = v20;
    goto LABEL_28;
  }

LABEL_64:
  if (v8._rawBits < 0x4000)
  {
    return 1;
  }

  v46._rawBits = String.index(before:)(v8)._rawBits;
  String.subscript.getter(v46, a1, a2);
  v44 = v47;
LABEL_62:
  v44;
  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = a3 ^ a4;
  a2;
  if (v11 >= 0x4000)
  {
    v14._rawBits = a3;
    do
    {
      v15 = Substring.subscript.getter(v14._rawBits, a3, a4, a5, a6);
      v17 = v16;
      v14._rawBits = Substring.index(after:)(v14)._rawBits;
      v18 = String.Iterator.next()();
      if (!v18.value._object)
      {
        a2;
        v17;
        return 1;
      }

      if (v15 == v18.value._countAndFlagsBits && v18.value._object == v17)
      {
        v17;
        v18.value._object;
      }

      else
      {
        if ((~(v17 & v18.value._object) & 0x6000000000000000) == 0)
        {
          v17;
          v18.value._object;
LABEL_16:
          v13 = a2;
LABEL_17:
          v13;
          return 0;
        }

        v19 = _stringCompareInternal(_:_:expecting:)(v15, v17, v18.value._countAndFlagsBits, v18.value._object, 0);
        v17;
        v18.value._object;
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    while ((v14._rawBits ^ a4) >= 0x4000);
  }

  object = String.Iterator.next()().value._object;
  a2;
  if (object)
  {
    v13 = object;
    goto LABEL_17;
  }

  return 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  v9 = a3 >> 14;
  if (a3 >> 14 != a4 >> 14)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = 4;
    if (((a6 >> 60) & ((a5 & 0x800000000000000) == 0)) != 0)
    {
      v14 = 8;
    }

    v47 = a3 & 2 | v14;
    v48 = a3 >> 16;
    v15 = a4;
    while (1)
    {
      v16 = _StringGuts.validateInclusiveCharacterIndex(_:in:)(v15, v13, v12, v11, v10);
      if (v9 >= v16 >> 14)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v18 = v16;
      v19 = _StringGuts._opaqueCharacterStride(endingAt:in:)(v16 >> 16, v48, v17, v11, v10);
      v20 = v19 << 8;
      if (v19 > 63)
      {
        v20 = 0;
      }

      v21 = v47 | v20 | (v18 - (v19 << 16)) & 0xFFFFFFFFFFFF0000;
      v15 = v21 | 1;
      v22 = v13;
      v23 = v12;
      v24 = v11;
      v25 = v11;
      v26 = v10;
      v27 = Substring.subscript.getter(v21 | 1, v22, v12, v25, v10);
      v29 = v28;
      if (v8 < 0x4000)
      {
        break;
      }

      v30 = v27;
      v31 = a1;
      v32._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v8)._rawBits;
      if (!(v32._rawBits >> 14))
      {
        rawBits = v32._rawBits;
        isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
        v32._rawBits = rawBits;
        v31 = a1;
        if (isExecutableLinkedOnOrAfter)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v33._rawBits = String._uncheckedIndex(before:)(v32)._rawBits;
      v8 = v33._rawBits;
      v34 = String.subscript.getter(v33, v31, a2);
      v36 = v35;
      if (v30 == v34 && v29 == v35)
      {
        v29;
        v36;
      }

      else
      {
        if ((~v29 & 0x6000000000000000) == 0 && (v35 & 0x6000000000000000) == 0x6000000000000000)
        {
          v29;
          v42 = v36;
          goto LABEL_29;
        }

        v39 = _stringCompareInternal(_:_:expecting:)(v30, v29, v34, v35, 0);
        v29;
        v36;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v12 = v23;
      v13 = a3;
      v10 = v26;
      v11 = v24;
      if (v9 == v21 >> 14)
      {
        goto LABEL_31;
      }
    }

    v28;
    return 1;
  }

LABEL_31:
  if (v8 < 0x4000)
  {
    return 1;
  }

  v44._rawBits = String.index(before:)(v8)._rawBits;
  String.subscript.getter(v44, a1, a2);
  v42 = v45;
LABEL_29:
  v42;
  return 0;
}

uint64_t Sequence<>.starts<A>(with:)(char *a1, unint64_t a2, const char *a3, int **a4, uint64_t a5, uint64_t a6)
{
  v84 = a1;
  v81 = a6;
  v77 = a2;
  AssociatedConformanceWitness = a4;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v70 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v67 - v14;
  v87 = v13;
  v17 = type metadata accessor for Optional(0, v13, v15, v16);
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v67 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v75 = &v67 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v67 - v23;
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v29 = v28;
  v72 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v67 - v31;
  v33 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v83 = v36;
  v71 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v67 - v37;
  (*(v33 + 16))(v35, v84, a3);
  v39 = *(a5 + 32);
  v82 = v38;
  v79 = a3;
  v80 = a5;
  v39(a3, a5);
  v40 = v77;
  (*(v25 + 16))(v27, v85, v77);
  v41 = *(AssociatedConformanceWitness + 32);
  v84 = v32;
  v42 = AssociatedConformanceWitness;
  v41(v40);
  v85 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v42, v40, v29, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v76 = *(AssociatedConformanceWitness + 16);
  v77 = (AssociatedConformanceWitness + 16);
  v43 = (v70 + 48);
  v44 = (v70 + 32);
  v73 = v81 + 8;
  v45 = (v70 + 8);
  while (1)
  {
    v76(v85, AssociatedConformanceWitness);
    v46 = *v43;
    if ((*v43)(v24, 1, v87) == 1)
    {
      (*(v72 + 8))(v84, v85);
      v62 = v83;
      v63 = swift_getAssociatedConformanceWitness(v80, v79, v83, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v64 = v67;
      v65 = v82;
      (*(v63 + 16))(v62, v63);
      (*(v71 + 8))(v65, v62);
      v66 = v46(v64, 1, v87) == 1;
      (*(v68 + 8))(v64, v69);
      return v66;
    }

    v47 = *v44;
    v48 = v43;
    v49 = v24;
    v50 = v87;
    (*v44)(v86, v24, v87);
    v51 = v83;
    v52 = swift_getAssociatedConformanceWitness(v80, v79, v83, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v53 = v75;
    (*(v52 + 16))(v51, v52);
    v54 = v50;
    v43 = v48;
    if (v46(v53, 1, v54) == 1)
    {
      break;
    }

    v55 = v53;
    v56 = v86;
    v57 = v87;
    v58 = v74;
    v47(v74, v55, v87);
    v59 = (*(v81 + 8))(v56, v58, v57);
    v60 = *v45;
    (*v45)(v58, v57);
    v60(v56, v57);
    v24 = v49;
    if ((v59 & 1) == 0)
    {
      (*(v72 + 8))(v84, v85);
      (*(v71 + 8))(v82, v83);
      return 0;
    }
  }

  (*v45)(v86, v87);
  (*(v72 + 8))(v84, v85);
  (*(v71 + 8))(v82, v83);
  (*(v68 + 8))(v53, v69);
  return 1;
}

uint64_t Sequence.elementsEqual<A>(_:by:)(char *a1, uint64_t (*a2)(char *, char *), uint64_t a3, unint64_t a4, unint64_t a5, int **a6, int **a7)
{
  v75 = a3;
  v74 = a2;
  v94 = a1;
  v81 = a7;
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v67 - v13;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = v14;
  v69 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v67 - v16;
  v19 = type metadata accessor for Optional(255, v15, v17, v18);
  v90 = v12;
  v22 = type metadata accessor for Optional(255, v12, v20, v21);
  swift_getTupleTypeMetadata2(0, v19, v22, 0, 0);
  v88 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v67 - v25;
  v91 = v22;
  v71 = *(v22 - 8);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v87 = &v67 - v28;
  v89 = v19;
  v82 = *(v19 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v86 = &v67 - v30;
  v80 = a5;
  AssociatedConformanceWitness = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v84 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, v32, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v95 = v33;
  v70 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v67 - v35;
  v37 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a6;
  v42 = v41;
  swift_getAssociatedTypeWitness(0, a6, v41, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v44 = v43;
  v68 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v67 - v45;
  (*(v37 + 16))(v39, v93, v42);
  v47 = v40[4];
  v92 = v46;
  v48 = v40;
  (v47)(v42, v40);
  v49 = v80;
  (*(AssociatedConformanceWitness + 16))(v84, v94, v80);
  v50 = v81;
  v51 = *(v81 + 32);
  v94 = v36;
  v52 = v67;
  v51(v49, v81);
  v93 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v42, v44, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v83 = *(AssociatedConformanceWitness + 16);
  v84 = (AssociatedConformanceWitness + 16);
  v81 = swift_getAssociatedConformanceWitness(v50, v49, v95, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v79 = *(v81 + 16);
  v80 = (v81 + 16);
  v78 = (v82 + 4);
  v53 = (v71 + 32);
  v54 = (v69 + 48);
  v82 = (v77 + 6);
  v72 = (v69 + 32);
  v55 = (v77 + 4);
  v76 = v77 + 1;
  v77 = (v69 + 8);
  while (1)
  {
    v56 = v86;
    v83(v93, AssociatedConformanceWitness);
    v57 = v87;
    v79(v95, v81);
    v58 = *(v88 + 48);
    (*v78)(v26, v56, v89);
    (*v53)(&v26[v58], v57, v91);
    if ((*v54)(v26, 1, v15) == 1)
    {
      (*(v70 + 8))(v94, v95);
      (*(v68 + 8))(v92, v93);
      LOBYTE(v53) = 1;
      if ((*v82)(&v26[v58], 1, v90) == 1)
      {
        return v53 & 1;
      }

      (*(v71 + 8))(&v26[v58], v91);
      goto LABEL_10;
    }

    v59 = v15;
    v60 = v90;
    if ((*v82)(&v26[v58], 1, v90) == 1)
    {
      (*(v70 + 8))(v94, v95);
      (*(v68 + 8))(v92, v93);
      (*v77)(v26, v59);
      goto LABEL_10;
    }

    (*v72)(v52, v26, v59);
    v61 = v52;
    v62 = v73;
    (*v55)(v73, &v26[v58], v60);
    v63 = v96;
    v64 = v74(v61, v62);
    v96 = v63;
    if (v63)
    {
      break;
    }

    v65 = v64;
    (*v76)(v62, v60);
    (*v77)(v61, v59);
    v15 = v59;
    v52 = v61;
    if ((v65 & 1) == 0)
    {
      (*(v70 + 8))(v94, v95);
      (*(v68 + 8))(v92, v93);
LABEL_10:
      LOBYTE(v53) = 0;
      return v53 & 1;
    }
  }

  (*v76)(v62, v60);
  (*v77)(v61, v59);
  (*(v70 + 8))(v94, v95);
  (*(v68 + 8))(v92, v93);
  return v53 & 1;
}

BOOL Sequence.lexicographicallyPrecedes<A>(_:by:)(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t (*a2)(char *, char *), uint64_t a3, unint64_t a4, const char *a5, uint64_t a6, swift *a7)
{
  v90 = a7;
  v91 = a1;
  v78 = a2;
  v79 = a3;
  swift_getAssociatedTypeWitness(255, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v72 = type metadata accessor for Optional(0, v11, v13, v14);
  v71 = *(v72 - 8);
  v15 = MEMORY[0x1EEE9AC00](v72);
  v70 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v92 = &v70 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v70 - v20;
  v73 = *(v12 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v80 = &v70 - v24;
  v89 = a5;
  v85 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v86 = v27;
  v75 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v70 - v29;
  v31 = a4;
  v32 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, v31, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v36 = v35;
  v74 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v70 - v37;
  (*(v32 + 16))(v34, v88, v31);
  v39 = *(a6 + 32);
  v87 = v38;
  v39(v31, a6);
  v40 = v89;
  (*(v85 + 2))(v26, v91, v89);
  v41 = *(v90 + 4);
  v85 = v30;
  v41(v40);
  v88 = v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, v31, v36, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v81 = *(AssociatedConformanceWitness + 16);
  v82 = AssociatedConformanceWitness + 16;
  v42 = (v73 + 48);
  v43 = (v73 + 32);
  v44 = (v73 + 8);
  v76 = (v73 + 48);
  while (1)
  {
    v45 = v84;
    v81(v88, AssociatedConformanceWitness);
    v46 = *v42;
    if ((*v42)(v45, 1, v12) == 1)
    {
      (*(v74 + 8))(v87, v88);
      v61 = *(v71 + 8);
      v62 = v72;
      v61(v45, v72);
      v63 = v86;
      v64 = swift_getAssociatedConformanceWitness(v90, v89, v86, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v65 = v70;
      v66 = v85;
      (*(v64 + 16))(v63, v64);
      (*(v75 + 8))(v66, v63);
      v48 = v46(v65, 1, v12) != 1;
      v61(v65, v62);
      return v48;
    }

    v47 = *v43;
    v48 = v42;
    v49 = v80;
    (*v43)(v80, v45, v12);
    v50 = v92;
    v91 = v46;
    v51 = v12;
    v52 = v86;
    v53 = swift_getAssociatedConformanceWitness(v90, v89, v86, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    (*(v53 + 16))(v52, v53);
    v12 = v51;
    if (v91(v50, 1, v51) == 1)
    {
      (*v44)(v49, v51);
      (*(v75 + 8))(v85, v86);
      (*(v74 + 8))(v87, v88);
      (*(v71 + 8))(v92, v72);
      return 0;
    }

    v54 = v77;
    v47(v77, v92, v12);
    v55 = v78;
    v56 = v93;
    v57 = v78(v49, v54);
    if (v56)
    {
      break;
    }

    if (v57)
    {
      v93 = 0;
      v68 = *v44;
      (*v44)(v54, v12);
      v68(v49, v12);
      (*(v75 + 8))(v85, v86);
      (*(v74 + 8))(v87, v88);
      return 1;
    }

    v58 = v55(v54, v49);
    v59 = *v44;
    v93 = 0;
    v60 = v58;
    v59(v54, v12);
    v59(v49, v12);
    v42 = v76;
    if (v60)
    {
      (*(v75 + 8))(v85, v86);
      (*(v74 + 8))(v87, v88);
      return 0;
    }
  }

  v93 = v56;
  v67 = *v44;
  v67(v54, v12);
  v67(v49, v12);
  (*(v75 + 8))(v85, v86);
  (*(v74 + 8))(v87, v88);
  return v48;
}

uint64_t Sequence<>.lexicographicallyPrecedes<A>(_:)(uint64_t a1, const char *a2, const char *a3, uint64_t a4, swift *a5, uint64_t a6)
{
  v97 = a1;
  v83 = a6;
  v98 = a3;
  v99 = a5;
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v79 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v90 = &v78 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  v100 = v11;
  v89 = *(v11 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v88 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v82 = &v78 - v25;
  v26 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v95 = v29;
  v85 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v78 - v31;
  v33 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v37 = v36;
  v84 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v78 - v38;
  (*(v33 + 16))(v35, v96, a2);
  v40 = *(a4 + 32);
  v96 = v39;
  v41 = v83;
  v42 = a4;
  v40(a2, a4);
  v43 = v98;
  (*(v26 + 16))(v28, v97, v98);
  v44 = *(v99 + 4);
  v94 = v32;
  v45 = v43;
  v46 = v82;
  v44(v45);
  v97 = v37;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v42, a2, v37, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v91 = *(AssociatedConformanceWitness + 16);
  v92 = AssociatedConformanceWitness + 16;
  v47 = (v89 + 6);
  v48 = (v89 + 4);
  v86 = v21;
  v87 = v41 + 16;
  ++v89;
  while (1)
  {
    v91(v97, AssociatedConformanceWitness);
    v49 = *v47;
    if ((*v47)(v21, 1, v100) == 1)
    {
      (*(v84 + 8))(v96, v97);
      v67 = v81;
      v68 = v21;
      v69 = *(v80 + 8);
      v69(v68, v81);
      v70 = v95;
      v71 = swift_getAssociatedConformanceWitness(v99, v98, v95, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v72 = v79;
      v73 = v94;
      (*(v71 + 16))(v70, v71);
      (*(v85 + 8))(v73, v70);
      v74 = v49(v72, 1, v100) != 1;
      v69(v72, v67);
      return v74;
    }

    v50 = v41;
    v51 = *v48;
    v52 = v47;
    v53 = v100;
    (*v48)(v46, v21, v100);
    v54 = v46;
    v55 = v95;
    v56 = swift_getAssociatedConformanceWitness(v99, v98, v95, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v57 = v90;
    (*(v56 + 16))(v55, v56);
    v58 = v57;
    v59 = v53;
    v47 = v52;
    if (v49(v57, 1, v59) == 1)
    {
      (*v89)(v54, v100);
      (*(v85 + 8))(v94, v95);
      (*(v84 + 8))(v96, v97);
      (*(v80 + 8))(v57, v81);
      return 0;
    }

    v60 = v88;
    v61 = v58;
    v62 = v100;
    v51(v88, v61, v100);
    v41 = v50;
    v63 = *(v50 + 16);
    v46 = v54;
    if (v63(v54, v60, v62, v50))
    {
      break;
    }

    v64 = v100;
    v65 = v63(v60, v54, v100, v41);
    v66 = *v89;
    (*v89)(v60, v64);
    v66(v54, v64);
    v21 = v86;
    if (v65)
    {
      (*(v85 + 8))(v94, v95);
      (*(v84 + 8))(v96, v97);
      return 0;
    }
  }

  v76 = *v89;
  v77 = v100;
  (*v89)(v60, v100);
  v76(v54, v77);
  (*(v85 + 8))(v94, v95);
  (*(v84 + 8))(v96, v97);
  return 1;
}

BOOL Sequence.contains(where:)(uint64_t (*a1)(char *), uint64_t a2, const char *a3, int **a4)
{
  v35 = a1;
  v36 = a2;
  AssociatedConformanceWitness = a4;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v13 = type metadata accessor for Optional(0, v8, v11, v12);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - v15;
  v17 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v21 = v20;
  v34 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  (*(v17 + 16))(v19, v41, a3);
  v24 = *(AssociatedConformanceWitness + 32);
  v40 = v23;
  v25 = AssociatedConformanceWitness;
  v24(a3);
  v41 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, a3, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v37 = *(AssociatedConformanceWitness + 16);
  v38 = AssociatedConformanceWitness + 16;
  v26 = (v33 + 48);
  v27 = (v33 + 32);
  v28 = (v33 + 8);
  do
  {
    v37(v41, AssociatedConformanceWitness);
    v29 = (*v26)(v16, 1, v8);
    if (v29 == 1)
    {
      break;
    }

    (*v27)(v10, v16, v8);
    v30 = v35(v10);
    if (v4)
    {
      (*v28)(v10, v8);
      break;
    }

    v31 = v30;
    (*v28)(v10, v8);
  }

  while ((v31 & 1) == 0);
  (*(v34 + 8))(v40, v41);
  return v29 != 1;
}

BOOL Sequence.allSatisfy(_:)(uint64_t (*a1)(char *), uint64_t a2, const char *a3, int **a4)
{
  v35 = a1;
  v36 = a2;
  AssociatedConformanceWitness = a4;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v13 = type metadata accessor for Optional(0, v8, v11, v12);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - v15;
  v17 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v21 = v20;
  v34 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  (*(v17 + 16))(v19, v41, a3);
  v24 = *(AssociatedConformanceWitness + 32);
  v40 = v23;
  v25 = AssociatedConformanceWitness;
  v24(a3);
  v41 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, a3, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v37 = *(AssociatedConformanceWitness + 16);
  v38 = AssociatedConformanceWitness + 16;
  v26 = (v33 + 48);
  v27 = (v33 + 32);
  v28 = (v33 + 8);
  do
  {
    v37(v41, AssociatedConformanceWitness);
    v29 = (*v26)(v16, 1, v8);
    if (v29 == 1)
    {
      break;
    }

    (*v27)(v10, v16, v8);
    v30 = v35(v10);
    if (v4)
    {
      (*v28)(v10, v8);
      break;
    }

    v31 = v30;
    (*v28)(v10, v8);
  }

  while ((v31 & 1) != 0);
  (*(v34 + 8))(v40, v41);
  return v29 == 1;
}

atomic_ullong *Sequence.reversed()(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v8 = *(v6 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v52 - v16;
  v17 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  (*(v17 + 16))(&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v19 = (*(a2 + 56))(a1, a2);
  v63 = v19;
  v19;
  v20 = Array._getCount()();
  v19;
  if (v20 <= -2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v17 + 8))(v3, a1);
  if ((v20 + 1) >= 3)
  {
    v22 = 0;
    v23 = v20 / 2;
    v59 = v8 + 32;
    v60 = (v8 + 16);
    v24 = v8 + 40;
    while (1)
    {
      if (v23 == v22)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v25 = v22 + 1;
      v26 = v20 - (v22 + 1);
      if (__OFSUB__(v20, v22 + 1))
      {
        break;
      }

      if (v22 != v26)
      {
        v55 = v22 + 1;
        v56 = v24;
        v57 = v23;
        v27 = v63;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v7, v7);
        v58 = v27 & 0xC000000000000001;
        v29 = ((v27 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
        Array._checkSubscript(_:wasNativeTypeChecked:)(v22, (v27 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
        if (v29)
        {
          v30 = v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22;
          v54 = *(v8 + 16);
          v54(v61, v30, v7);
        }

        else
        {
          v48 = _ArrayBuffer._getElementSlowPath(_:)(v22, v27, v7);
          if (v9 != 8)
          {
            goto LABEL_26;
          }

          v62 = v48;
          v49 = v48;
          v54 = *v60;
          v54(v61, &v62, v7);
          swift_unknownObjectRelease(v49);
        }

        v31 = v58 == 0;
        v32 = v31 | ~_swift_isClassOrObjCExistentialType(v7, v7);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v20 - (v22 + 1), v32 & 1);
        if (v32)
        {
          v54(v14, v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v7);
        }

        else
        {
          v50 = _ArrayBuffer._getElementSlowPath(_:)(v20 - (v22 + 1), v27, v7);
          if (v9 != 8)
          {
            goto LABEL_26;
          }

          v62 = v50;
          v51 = v50;
          v54(v14, &v62, v7);
          swift_unknownObjectRelease(v51);
        }

        (*(v8 + 32))(v11, v14, v7);
        v54 = type metadata accessor for Array(0, v7, v33, v34);
        Array._makeMutableAndUnique()();
        v35 = v63;
        Array._checkSubscript_mutating(_:)(v22);
        v36 = _swift_isClassOrObjCExistentialType(v7, v7);
        v37 = v35 & 0xFFFFFFFFFFFFFF8;
        if (!v36)
        {
          v37 = v35;
        }

        v38 = *(v8 + 80);
        v58 = v14;
        v39 = v11;
        v40 = (v38 + 32) & ~v38;
        v41 = *(v8 + 72);
        v42 = v37 + v40 + v41 * v22;
        v53 = *(v8 + 40);
        v43 = v56;
        v53(v42, v39, v7);
        Array._makeMutableAndUnique()();
        v44 = v63;
        Array._checkSubscript_mutating(_:)(v26);
        v45 = _swift_isClassOrObjCExistentialType(v7, v7);
        v46 = v44 & 0xFFFFFFFFFFFFFF8;
        if (!v45)
        {
          v46 = v44;
        }

        v24 = v43;
        v47 = v46 + v40;
        v11 = v39;
        v14 = v58;
        v53(v47 + v41 * v26, v61, v7);
        v23 = v57;
        v25 = v55;
      }

      v22 = v25;
      if (v23 == v25)
      {
        return v63;
      }
    }

    __break(1u);
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v63;
}

void Sequence.flatMap<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t a4, int **a5, int **a6)
{
  v52 = a4;
  v53 = a6;
  v48 = a1;
  v49 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a5;
  v10 = v9;
  swift_getAssociatedTypeWitness(0, a5, v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  v17 = type metadata accessor for Optional(0, v12, v15, v16);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v40 - v19;
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v41 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v40 - v26);
  swift_getAssociatedTypeWitness(0, v53, v52, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v47 = v28;
  _swift_isClassOrObjCExistentialType(v28, v28);
  v54 = &_swiftEmptyArrayStorage;
  (*(v21 + 16))(v23, v51, v10);
  v29 = v10;
  v30 = v10;
  v31 = v50;
  (v50[4])(v29);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v31, v30, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = *(AssociatedConformanceWitness + 16);
  v50 = v27;
  v51 = v25;
  v45 = AssociatedConformanceWitness + 16;
  v46 = AssociatedConformanceWitness;
  v44 = v33;
  (v33)(v25);
  v34 = v42;
  v43 = *(v42 + 48);
  if (v43(v20, 1, v12) == 1)
  {
LABEL_5:
    (*(v41 + 8))(v50, v51);
  }

  else
  {
    v42 = *(v34 + 32);
    v35 = (v34 + 8);
    v36 = v40;
    while (1)
    {
      (v42)(v14, v20, v12);
      v48(v14);
      if (v6)
      {
        break;
      }

      (*v35)(v14, v12);
      v39 = type metadata accessor for Array(0, v47, v37, v38);
      Array.append<A>(contentsOf:)(v36, v39, v52, v53);
      v44(v51, v46);
      if (v43(v20, 1, v12) == 1)
      {
        goto LABEL_5;
      }
    }

    (*v35)(v14, v12);
    (*(v41 + 8))(v50, v51);
    v54;
  }
}

void Sequence._compactMap<A>(_:)(void (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t *a4, int **a5)
{
  v6 = v5;
  v74 = a4;
  v70 = a1;
  v71 = a2;
  v60 = type metadata accessor for Optional(0, a4, a3, a4);
  v55 = *(v60 - 8);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v12 = &v54 - v11;
  v57 = *(a4 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v54 - v15;
  v72 = a5;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v54 - v19;
  v22 = type metadata accessor for Optional(0, v17, v20, v21);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v62 = &v54 - v24;
  v25 = a3;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v25, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v30 = v29;
  v54 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v54 - v31);
  _swift_isClassOrObjCExistentialType(v74, v74);
  v75 = &_swiftEmptyArrayStorage;
  (*(v26 + 16))(v28, v73, v25);
  v33 = v72;
  (v72[4])(v25, v72);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v33, v25, v30, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v35 = *(AssociatedConformanceWitness + 16);
  v36 = v62;
  v72 = v32;
  v73 = v30;
  v68 = AssociatedConformanceWitness + 16;
  v69 = AssociatedConformanceWitness;
  v67 = v35;
  (v35)(v30);
  v65 = *(v18 + 48);
  v66 = v18 + 48;
  if (v65(v36, 1, v17) == 1)
  {
LABEL_2:
    (*(v54 + 8))(v72, v73);
  }

  else
  {
    v38 = *(v18 + 32);
    v37 = v18 + 32;
    v63 = v38;
    v64 = (v37 - 24);
    v39 = (v57 + 6);
    v56 = v37;
    v57 += 4;
    ++v55;
    v40 = v61;
    v41 = v62;
    v38(v61, v62, v17);
    while (1)
    {
      v70(v40);
      if (v6)
      {
        break;
      }

      (*v64)(v40, v17);
      v51 = v12;
      v52 = v12;
      v53 = v74;
      if ((*v39)(v51, 1, v74) == 1)
      {
        (*v55)(v52, v60);
      }

      else
      {
        v42 = v58;
        v43 = *v57;
        (*v57)(v58, v52, v53);
        v44 = v17;
        v45 = v59;
        v46 = v42;
        v41 = v62;
        v43(v59, v46, v53);
        v49 = type metadata accessor for Array(0, v53, v47, v48);
        v50 = v45;
        v17 = v44;
        v6 = 0;
        v40 = v61;
        Array.append(_:)(v50, v49);
      }

      v12 = v52;
      v67(v73, v69);
      if (v65(v41, 1, v17) == 1)
      {
        goto LABEL_2;
      }

      v63(v40, v41, v17);
    }

    (*v64)(v40, v17);
    (*(v54 + 8))(v72, v73);
    v75;
  }
}

__objc2_class **_NativeSet.init(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptySetSingleton;
  }

  type metadata accessor for _SetStorage(0, a2, a3, a4);
  return static _SetStorage.allocate(capacity:)(a1);
}

__objc2_class **Set.init(arrayLiteral:)(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (Array._getCount()())
  {
    v6 = specialized Set.init(_nonEmptyArrayLiteral:)(a1, a2, a3);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  a1;
  return v6;
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Set<A>(unint64_t a1@<X0>, uint64_t a2@<X1>, __objc2_class ***a3@<X8>)
{
  v6 = *(a2 + 16);
  if (Array._getCount()())
  {
    v7 = specialized Set.init(_nonEmptyArrayLiteral:)(a1, v6, *(a2 + 24));
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  a1;
  *a3 = v7;
}

uint64_t Set._Variant.contains(_:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a3 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v12 = _bridgeAnythingToObjectiveC<A>(_:)(v6, a3);
    v13 = [v11 member_];
    swift_unknownObjectRelease(v12);
    if (v13)
    {
      swift_unknownObjectRelease(v13);
      LOBYTE(v13) = 1;
    }
  }

  else if (*(a2 + 16) && (v14 = v6, v15 = v7, v16 = (*(v7 + 32))(*(a2 + 40), a3, v7), v17 = -1 << *(a2 + 32), v18 = v16 & ~v17, v28 = a2 + 56, ((*(a2 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
  {
    v26 = v15;
    v27 = v14;
    v19 = ~v17;
    v22 = *(v5 + 16);
    v21 = v5 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v9, *(a2 + 48) + v23 * v18, a3);
      LOBYTE(v13) = (*(*(v26 + 8) + 8))(v9, v27, a3);
      (*(v21 - 8))(v9, a3);
      if (v13)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
    }

    while (((*(v28 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

void protocol witness for Sequence.makeIterator() in conformance Set<A>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = type metadata accessor for __CocoaSet.Iterator();
    v6 = swift_allocObject(v5, 0xE8, 7uLL);
    __CocoaSet.Iterator.init(_:)(v4);
    Set.Iterator.init(_cocoa:)(v6, v14);
    v3 = v14[0];
    v7 = v14[1];
    v9 = v14[2];
    v8 = v14[3];
    v10 = v14[4];
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(v3 + 32);
    v7 = v3 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(v3 + 56);
  }

  *a1 = v3;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v8;
  a1[4] = v10;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance Set<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _ArrayBuffer<A>(unint64_t a1, uint64_t a2, int *a3)
{
  WitnessTable = swift_getWitnessTable(a3, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  *v3;
  return v6;
}

__objc2_class **Set._Variant.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v11 = type metadata accessor for Optional(0, a4, a3, a4);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *(a4 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v52 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v23 = (&v40 - v22);
  if ((v19 & 0xC000000000000001) == 0)
  {
    _NativeSet.filter(_:)(a1, a2, v19, a4);
    if (!v5)
    {
      return v38;
    }

    return v6;
  }

  v45 = v20;
  v46 = v21;
  v50 = a1;
  v51 = a2;
  v49 = a5;
  v44 = v18;
  v6 = &_swiftEmptySetSingleton;
  v54 = &_swiftEmptySetSingleton;
  if (v19 < 0)
  {
    v24 = v19;
  }

  else
  {
    v24 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  v25 = type metadata accessor for __CocoaSet.Iterator();
  v26 = swift_allocObject(v25, 0xE8, 7uLL);
  v27 = 0;
  *(v26 + 1) = 0u;
  v48 = v26 + 2;
  v26[27] = 0;
  v28 = v26 + 27;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 7) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 9) = 0u;
  *(v26 + 10) = 0u;
  *(v26 + 11) = 0u;
  *(v26 + 12) = 0u;
  *(v26 + 5) = 0u;
  v47 = v26 + 10;
  v42 = (v12 + 16);
  v43 = (v15 + 56);
  v26[28] = 0;
  v40 = (v12 + 8);
  v41 = (v15 + 48);
  v29 = (v15 + 32);
  v26[26] = v24;
  v30 = (v15 + 8);
  while (1)
  {
    if (v27 != v26[28])
    {
      v32 = v26[3];
      if (!v32)
      {
LABEL_33:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v27 >> 60)
      {
        __break(1u);
LABEL_32:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_13;
    }

    v31 = [v26[26] countByEnumeratingWithState:v48 objects:v47 count:16];
    v26[28] = v31;
    if (!v31)
    {
      break;
    }

    v26[27] = 0;
    v32 = v26[3];
    if (!v32)
    {
      goto LABEL_33;
    }

    v27 = 0;
LABEL_13:
    v33 = (v32 + 8 * v27);
    if ((v33 & 7) != 0)
    {
      goto LABEL_32;
    }

    v34 = *v33;
    *v28 = v27 + 1;
    swift_unknownObjectRetain(v34);
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v53 = v34;
      swift_dynamicCast(v23, &v53, qword_1EEEAC710, a4, 7uLL);
    }

    else
    {
      (*v43)(v46, 1, 1, a4);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v34, a4, v46);
      (*v42)(v45, v46, v44);
      if ((*v41)(v45, 1, a4) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v34);
      (*v40)(v46, v44);
      (*v29)(v23, v45, a4);
    }

    v35 = v50(v23);
    if (v5)
    {
      v26;
      (*v30)(v23, a4);
      v6;
      return v6;
    }

    if (v35)
    {
      (*v29)(v52, v23, a4);
      v37 = v6[2];
      if (v6[3] <= v37)
      {
        type metadata accessor for _NativeSet(0, a4, v49, v36);
        _NativeSet.resize(capacity:)(&v37->isa + 1);
      }

      v6 = v54;
      _NativeSet._unsafeInsertNew(_:)(v52, v54, a4);
      v27 = *v28;
      if ((*v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      (*v30)(v23, a4);
      v27 = *v28;
      if ((*v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }
  }

  *v28 = -1;
LABEL_29:
  v26;
  return v6;
}

void Set.startIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects_];
        a1;
        v6 = type metadata accessor for __CocoaSet.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 56);
    v10 = (63 - (-1 << *(a1 + 32))) >> 6;
    do
    {
      if (*v9++)
      {
        break;
      }

      v8 -= 64;
      --v10;
    }

    while (v10);
  }
}

void Set._Variant.endIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects_];
        a1;
        v6 = type metadata accessor for __CocoaSet.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void Set._Variant.element(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, swift *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v16 = v46 - v15;
  if ((v13 & 0xC000000000000001) != 0)
  {
    if ((v12 & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v6 >= 0)
    {
      v17 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v17 = v6;
    }

    v18 = type metadata accessor for __CocoaSet.Index.Storage();
    if (swift_dynamicCastClass(v17, v18))
    {
      v19 = *(v17 + 24);
      if (*(v19 + 16) > a2)
      {
        v20 = *(v19 + 8 * a2 + 24);
        v21 = swift_unknownObjectRetain(v20);
        _forceBridgeFromObjectiveC<A>(_:_:)(v21, a3, v22, a4);

        swift_unknownObjectRelease(v20);
        return;
      }

LABEL_30:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_32:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v12)
  {
    v23 = v14;
    v24 = v13;
    if (v6 >= 0)
    {
      v6 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v25 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v6, v25))
    {
      goto LABEL_32;
    }

    if (*(v24 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v6 + 16)))
    {
      goto LABEL_31;
    }

    if (!swift_dynamicCastClass(v6, v25))
    {
      goto LABEL_32;
    }

    v26 = *(v6 + 24);
    if (*(v26 + 16) <= a2)
    {
      goto LABEL_30;
    }

    v47 = a4;
    v27 = *(v26 + 8 * a2 + 24);
    v28 = swift_unknownObjectRetain(v27);
    _forceBridgeFromObjectiveC<A>(_:_:)(v28, a3, v29, v16);
    swift_unknownObjectRelease(v27);
    v30 = *(v24 + 40);
    v31 = *(v23 + 32);
    v51 = v16;
    v49 = v23;
    v32 = v31(v30, a3, v23);
    v50 = v24;
    v33 = -1 << *(v24 + 32);
    v34 = v32 & ~v33;
    v48 = v24 + 56;
    if (((*(v24 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      (*(v8 + 8))(v51, a3);
      goto LABEL_31;
    }

    v35 = ~v33;
    v38 = *(v8 + 16);
    v37 = v8 + 16;
    v36 = v38;
    v39 = *(v37 + 56);
    v40 = v37;
    v41 = (v37 - 8);
    v46[2] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v46[1] = v41 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v42 = v39;
      v43 = v36;
      v36(v11, *(v50 + 48) + v39 * v34, a3);
      v44 = (*(*(v49 + 8) + 8))(v11, v51, a3);
      v45 = *v41;
      (*v41)(v11, a3);
      if (v44)
      {
        break;
      }

      v34 = (v34 + 1) & v35;
      v36 = v43;
      v39 = v42;
      if (((*(v48 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        v45(v51, a3);
        goto LABEL_31;
      }
    }

    v45(v51, a3);
    v43(v47, *(v50 + 48) + v42 * v34, a3);
  }

  else
  {
    if (v6 < 0 || 1 << *(v13 + 32) <= v6 || ((*(v13 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0 || *(v13 + 36) != a2)
    {
LABEL_31:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v8 + 16))(a4, *(v13 + 48) + *(v8 + 72) * v6, a3);
  }
}

Swift::Int Set.index(after:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  if ((a4 & 0xC000000000000001) == 0)
  {
    return _NativeSet.index(after:)(a1, a2, a3 & 1, a4).offset;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  if ((a3 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v7 = a1;
  }

  v8 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v7, v8))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v7 + 16) != v6 || *(*(v7 + 24) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5;
  return v5;
}

void Set._Variant.formIndex(after:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!*(a1 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v4 >= 0)
    {
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v8 = *a1;
    }

    v9 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v8, v9))
    {
      goto LABEL_18;
    }

    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native(v8);
    }

    if (!swift_dynamicCastClass(v8, v9))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (*(v8 + 16) != v10 || v5 >= *(*(v8 + 24) + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v11 = v5 + 1;
  }

  else
  {
    offset = _NativeSet.index(after:)(*a1, v5, v6, a2).offset;
    v11 = v13;
    sub_180615F30(v4, v5, v6);
    v4 = offset;
  }

  *a1 = v4;
  *(a1 + 8) = v11;
  *(a1 + 16) = v7 != 0;
}

unint64_t Set.firstIndex(of:)(id *a1, int64_t a2, unsigned __int8 *a3)
{
  v6 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
    if (a2 < 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v13 = [v12 member_];
    if (v13)
    {
      swift_unknownObjectRelease(v13);
      v14 = [swift_unknownObjectRetain(v12) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v14 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v14, 24))
        {
          v16 = swift_bufferAllocate(v15, (8 * v14 + 24), 7uLL);
          v16[2] = v14;
          [v12 getObjects_];
          a2;
          if ((v16[2] & 0x8000000000000000) == 0)
          {
            v17 = 3;
            do
            {
              v18 = v16[v17];
              swift_unknownObjectRetain(v18);
              isEqual = swift_stdlib_NSObject_isEqual(v11, v18);
              swift_unknownObjectRelease(v18);
              ++v17;
            }

            while ((isEqual & 1) == 0);
            v20 = type metadata accessor for __CocoaSet.Index.Storage();
            v21 = swift_allocObject(v20, 0x20, 7uLL);
            *(v21 + 16) = v12;
            *(v21 + 24) = v16;
            swift_unknownObjectRetain(v12);
            swift_unknownObjectRelease(v11);
            return v21;
          }

LABEL_24:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }

    swift_unknownObjectRelease(v11);
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v22 = v7;
  v23 = (*(v7 + 32))(*(a2 + 40), a3, v7);
  v24 = -1 << *(a2 + 32);
  v21 = v23 & ~v24;
  v35 = a2 + 56;
  if (((*(a2 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v33 = ~v24;
  v34 = v22;
  v27 = *(v6 + 16);
  v26 = v6 + 16;
  v25 = v27;
  v28 = *(v26 + 56);
  v29 = (v26 - 8);
  while (1)
  {
    v25(v9, *(a2 + 48) + v28 * v21, a3);
    v30 = (*(*(v34 + 8) + 8))(v9, a1, a3);
    (*v29)(v9, a3);
    if (v30)
    {
      break;
    }

    v21 = (v21 + 1) & v33;
    if (((*(v35 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  return v21;
}

id Set.count.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return [a1 count];
}

BOOL Set.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = [a1 count];
  }

  else
  {
    v3 = *(a1 + 16);
  }

  return v3 == 0;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance Set<A>@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1(*v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Set<A>(swift ***a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x96C4uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = Set.subscript.read(v7, *a2, *(a2 + 8), *(a2 + 16), *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*Set.subscript.read(swift **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, swift *a6))()
{
  v10 = *(a6 - 1);
  *a1 = a6;
  a1[1] = v10;
  v11 = v10[8];
  if (swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc(v11, 0x5732uLL);
  }

  else
  {
    v12 = malloc(v11);
  }

  a1[2] = v12;
  Set._Variant.element(at:)(a2, a3, a6, v12);
  return _ArrayBuffer.subscript.read;
}

unint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance Set<A>@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = Set.firstIndex(of:)(a1, *v3, *(a2 + 16));
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return result;
}

Swift::Int protocol witness for Collection.index(after:) in conformance Set<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = Set.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZs11AnyHashableV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v30 = (v6 - 1) & v6;
LABEL_13:
      outlined init with copy of AnyHashable(*(result + 48) + 40 * (v8 | (v3 << 6)), &v42);
      v39 = v42;
      v40 = v43;
      v11 = v44;
      v41 = v44;
      v12 = *(a2 + 40);
      v13 = *(&v43 + 1);
      __swift_project_boxed_opaque_existential_0Tm(&v39, *(&v43 + 1));
      (*(v11 + 8))(v36, v13, v11);
      v14 = v37;
      v15 = v38;
      __swift_project_boxed_opaque_existential_0Tm(v36, v37);
      v16 = (*(v15 + 40))(v12, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      while (1)
      {
        outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v18, v36);
        v20 = v37;
        v21 = v38;
        __swift_project_boxed_opaque_existential_0Tm(v36, v37);
        (*(v21 + 8))(v33, v20, v21);
        v22 = v34;
        v23 = v35;
        __swift_project_boxed_opaque_existential_0Tm(v33, v34);
        v24 = *(&v40 + 1);
        v25 = v41;
        __swift_project_boxed_opaque_existential_0Tm(&v39, *(&v40 + 1));
        (*(v25 + 8))(v32, v24, v25);
        v26 = (*(v23 + 16))(v32, v22, v23);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        outlined destroy of AnyHashable(v36);
        if (v26)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      outlined destroy of AnyHashable(&v39);
      v7 = v28;
      result = v29;
      v6 = v30;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    outlined destroy of AnyHashable(&v39);
    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Set.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a3 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v40 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v15 = v40 - v14;
  v17 = v16 & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    if (result >= 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    if (v17)
    {
      if (a2 < 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return swift_stdlib_NSObject_isEqual(result, v18);
    }

    v20 = a2;
    goto LABEL_16;
  }

  if (v17)
  {
    v19 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v19 = a2;
    }

    v20 = result;
    result = v19;
LABEL_16:

    return _NativeSet.isEqual(to:)(result, v20, a3);
  }

  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v21 = 0;
  v22 = *(result + 56);
  v40[0] = result + 56;
  v23 = 1 << *(result + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v47 = v13 + 32;
  v50 = a2 + 56;
  v51 = v5 + 16;
  v52 = (v5 + 8);
  v41 = v26;
  v42 = v40 - v14;
  v43 = v5;
  v44 = result;
  v40[1] = v5 + 32;
  if (v25)
  {
    while (1)
    {
      v27 = v13;
      v28 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
LABEL_31:
      v31 = *(v5 + 72);
      v32 = *(result + 48) + v31 * (v28 | (v21 << 6));
      v48 = *(v5 + 16);
      v49 = v31;
      v48(v15, v32, a3);
      (*(v5 + 32))(v11, v15, a3);
      v33 = v27;
      v34 = (*(v27 + 32))(*(a2 + 40), a3);
      v35 = -1 << *(a2 + 32);
      v36 = v34 & ~v35;
      if (((*(v50 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        break;
      }

      v45 = v52 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37 = ~v35;
      while (1)
      {
        v48(v8, *(a2 + 48) + v36 * v49, a3);
        v38 = (*(*(v33 + 8) + 8))(v8, v11, a3);
        v39 = *v52;
        (*v52)(v8, a3);
        if (v38)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v50 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          v39(v11, a3);
          return 0;
        }
      }

      v39(v11, a3);
      v5 = v43;
      result = v44;
      v13 = v33;
      v26 = v41;
      v15 = v42;
      v25 = v46;
      if (!v46)
      {
        goto LABEL_26;
      }
    }

    (*v52)(v11, a3);
    return 0;
  }

LABEL_26:
  v29 = v21;
  while (1)
  {
    v21 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      return 1;
    }

    v30 = *(v40[0] + 8 * v21);
    ++v29;
    if (v30)
    {
      v27 = v13;
      v28 = __clz(__rbit64(v30));
      v46 = (v30 - 1) & v30;
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t Set._Variant.asCocoa.getter(int64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  a1;
  return v1;
}

void specialized Set.hash(into:)(__int128 *a1, unint64_t a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a1;
  v29 = a1[1];
  v30 = v3;
  v31 = v4;
  v32 = *(a1 + 8);
  v28 = v5;
  v19 = Hasher._finalize()();
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  a2;
  v10 = 0;
  for (i = 0; v8; i ^= v18)
  {
    v12 = v10;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    outlined init with copy of AnyHashable(*(a2 + 48) + 40 * (v13 | (v12 << 6)), &v25);
    v23[0] = v25;
    v23[1] = v26;
    v14 = v27;
    v24 = v27;
    v15 = *(&v26 + 1);
    __swift_project_boxed_opaque_existential_0Tm(v23, *(&v26 + 1));
    (*(v14 + 8))(v20, v15, v14);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_0Tm(v20, v21);
    v18 = (*(v17 + 40))(v19, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    outlined destroy of AnyHashable(v23);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      a2;
      Hasher._combine(_:)(i);
      return;
    }

    v8 = *(a2 + 56 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void Set.hash(into:)(__int128 *a1, int64_t a2, Class *a3, uint64_t a4)
{
  v60 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Optional(0, v9, v9, v10);
  v11 = *(v52 - 8);
  v12 = MEMORY[0x1EEE9AC00](v52 - 8);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v54 = (&v49 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v49 - v16);
  v18 = a1[3];
  v71 = a1[2];
  v72 = v18;
  v73 = *(a1 + 8);
  v20 = *a1;
  v19 = a1[1];
  v56 = a1;
  v69 = v20;
  v70 = v19;
  v64 = Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v22 = type metadata accessor for __CocoaSet.Iterator();
    v23 = swift_allocObject(v22, 0xE8, 7uLL);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    *(v23 + 208) = v21;
    *(v23 + 216) = 0;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 96) = 0u;
    *(v23 + 112) = 0u;
    *(v23 + 128) = 0u;
    *(v23 + 144) = 0u;
    *(v23 + 160) = 0u;
    *(v23 + 176) = 0u;
    *(v23 + 192) = 0u;
    *(v23 + 224) = 0;
    v27 = v23 | 0x8000000000000000;
  }

  else
  {
    v28 = -1 << *(a2 + 32);
    v25 = ~v28;
    v24 = a2 + 56;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v26 = v30 & *(a2 + 56);
    v27 = a2;
  }

  v31 = v27 & 0x7FFFFFFFFFFFFFFFLL;
  v67 = (v60 + 56);
  v51 = (v11 + 16);
  v50 = (v60 + 48);
  v49 = (v11 + 8);
  v65 = (v60 + 32);
  v55 = v25;
  v32 = (v25 + 64) >> 6;
  v59 = v60 + 16;
  v61 = (v60 + 8);
  v62 = a4 + 32;
  a2;
  v33 = 0;
  v66 = 0;
  v34 = v58;
  v63 = v27;
  v57 = a4;
  while ((v27 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
      v35 = v66;
      goto LABEL_12;
    }

    v41 = v66;
    do
    {
      v35 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v35 >= v32)
      {
        goto LABEL_34;
      }

      v26 = *(v24 + 8 * v35);
      ++v41;
    }

    while (!v26);
    v66 = v35;
LABEL_12:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v35 << 6);
    v38 = *(v27 + 48);
    v39 = v60;
    (*(v60 + 16))(v17, v38 + *(v60 + 72) * v37, a3);
    (*(v39 + 56))(v17, 0, 1, a3);
LABEL_13:
    (*v65)(v34, v17, a3);
    v40 = (*(a4 + 32))(v64, a3, a4);
    (*v61)(v34, a3);
    v33 ^= v40;
    v27 = v63;
  }

  v42 = *(v31 + 216);
  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_34:
    v43 = v67;
  }

  else
  {
    v43 = v67;
    if (v42 != *(v31 + 224))
    {
      v45 = *(v31 + 24);
      if (v45)
      {
        if (v42 >> 60)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

LABEL_40:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v44 = [*(v31 + 208) countByEnumeratingWithState:v31 + 16 objects:v31 + 80 count:16];
    *(v31 + 224) = v44;
    if (v44)
    {
      *(v31 + 216) = 0;
      v45 = *(v31 + 24);
      if (v45)
      {
        v42 = 0;
LABEL_28:
        v46 = (v45 + 8 * v42);
        if ((v46 & 7) == 0)
        {
          v47 = *v46;
          *(v31 + 216) = v42 + 1;
          swift_unknownObjectRetain(v47);
          if (_swift_isClassOrObjCExistentialType(a3, a3))
          {
            v68 = v47;
            swift_dynamicCast(v17, &v68, qword_1EEEAC710, a3, 7uLL);
            v48 = *v43;
          }

          else
          {
            v48 = *v43;
            v48(v54, 1, 1, a3);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v47, a3, v54);
            (*v51)(v53, v54, v52);
            if ((*v50)(v53, 1, a3) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            swift_unknownObjectRelease(v47);
            (*v49)(v54, v52);
            (*v65)(v17, v53, a3);
          }

          v48(v17, 0, 1, a3);
          a4 = v57;
          v34 = v58;
          goto LABEL_13;
        }

        goto LABEL_39;
      }

      goto LABEL_40;
    }

    *(v31 + 216) = -1;
  }

  (*v43)(v17, 1, 1, a3);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v27);
  Hasher._combine(_:)(v33);
}

Swift::Int ContiguousArray<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v8 = 0u;
  v9 = 0u;
  v5 = 0;
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  a4(&v5, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Set<A>(uint64_t a1, uint64_t a2)
{
  specialized Hasher.init(_seed:)(a1, v5);
  Set.hash(into:)(v5, *v2, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t Set._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = specialized _setUpCast<A, B>(_:)(a1, a2);
  result = type metadata accessor for _SetAnyHashableBox(0, a2, a3, v9);
  a4[3] = result;
  a4[4] = &protocol witness table for _SetAnyHashableBox<A>;
  *a4 = a1;
  a4[1] = v8;
  return result;
}

void specialized _setUpCast<A, B>(_:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v3;
  a1;
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * (v10 | (v9 << 6)), v13);
    v11[0] = v13[0];
    v11[1] = v13[1];
    v12 = v14;
    specialized _NativeSet._unsafeInsertNew(_:)(v11, v3);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v3;
      a1;
      return;
    }

    v6 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
}

atomic_ullong *specialized _setUpCast<A, B>(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v51 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v51 - v18);
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v21 = [v20 count];
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_8:
    v60 = &_swiftEmptySetSingleton;
    goto LABEL_9;
  }

  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_8;
  }

LABEL_6:
  v60 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v21, _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5);
LABEL_9:
  v55 = v14;
  v56 = v17;
  v54 = v10;
  v62 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = type metadata accessor for __CocoaSet.Iterator();
    v24 = swift_allocObject(v23, 0xE8, 7uLL);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    *(v24 + 208) = v22;
    *(v24 + 216) = 0;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
    *(v24 + 64) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 96) = 0u;
    *(v24 + 112) = 0u;
    *(v24 + 128) = 0u;
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
    *(v24 + 176) = 0u;
    *(v24 + 192) = 0u;
    *(v24 + 224) = 0;
    v28 = v24 | 0x8000000000000000;
  }

  else
  {
    v29 = -1 << *(a1 + 32);
    v26 = ~v29;
    v25 = a1 + 56;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & *(a1 + 56);
    v28 = a1;
  }

  v64 = v28;
  v32 = v28 & 0x7FFFFFFFFFFFFFFFLL;
  v63 = (v4 + 56);
  v52 = (v4 + 48);
  v53 = (v11 + 16);
  v51 = (v11 + 8);
  v33 = (v4 + 32);
  v57 = v26;
  v34 = (v26 + 64) >> 6;
  v61 = v4 + 16;
  v35 = v60;
  v60;
  v62;
  v62 = 0;
  v58 = v6;
  v59 = v4;
  while (1)
  {
    v39 = v64;
    if ((v64 & 0x8000000000000000) != 0)
    {
      v41 = *(v32 + 216);
      if ((v41 & 0x8000000000000000) == 0)
      {
        if (v41 != *(v32 + 224))
        {
          v43 = *(v32 + 24);
          if (v43)
          {
            if (v41 >> 60)
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_36:
            v44 = (v43 + 8 * v41);
            if ((v44 & 7) == 0)
            {
              v45 = *v44;
              *(v32 + 216) = v41 + 1;
              swift_unknownObjectRetain(v45);
              isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
              v47 = v63;
              if (isClassOrObjCExistentialType)
              {
                v65[0] = v45;
                swift_dynamicCast(v19, v65, qword_1EEEAC710, a2, 7uLL);
                v48 = *v47;
              }

              else
              {
                v48 = *v63;
                (*v63)(v56, 1, 1, a2);
                _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v45, a2, v56);
                (*v53)(v55, v56, v54);
                if ((*v52)(v55, 1, a2) == 1)
                {
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                (*v51)(v56, v54);
                swift_unknownObjectRelease(v45);
                (*v33)(v19, v55, a2);
              }

              v48(v19, 0, 1, a2);
              v6 = v58;
              v4 = v59;
              v35 = v60;
              goto LABEL_21;
            }

LABEL_48:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_49:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v42 = [*(v32 + 208) countByEnumeratingWithState:v32 + 16 objects:v32 + 80 count:{16, v36.n128_f64[0]}];
        *(v32 + 224) = v42;
        if (v42)
        {
          *(v32 + 216) = 0;
          v43 = *(v32 + 24);
          if (v43)
          {
            v41 = 0;
            goto LABEL_36;
          }

          goto LABEL_49;
        }

        *(v32 + 216) = -1;
        v39 = v64;
      }

      _sSh8IteratorV8_VariantOySS__GWOe_0(v39);
      (*v63)(v19, 1, 1, a2);
      goto LABEL_43;
    }

    if (v27)
    {
      v37 = v62;
      goto LABEL_20;
    }

    v40 = v62;
LABEL_25:
    v37 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v37 >= v34)
    {
      break;
    }

    v27 = *(v25 + 8 * v37);
    ++v40;
    if (!v27)
    {
      goto LABEL_25;
    }

    v62 = v37;
LABEL_20:
    v38 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    (*(v4 + 16))(v19, *(v64 + 48) + *(v4 + 72) * (v38 | (v37 << 6)), a2);
    (*(v4 + 56))(v19, 0, 1, a2);
LABEL_21:
    (*v33)(v6, v19, a2);
    swift_dynamicCast(v65, v6, a2, &type metadata for AnyHashable, 7uLL);
    v36 = specialized _NativeSet._unsafeInsertNew(_:)(v65, v35);
  }

  v49 = v64;
  (*v63)(v19, 1, 1, a2, v36);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v49);
LABEL_43:
  v35;
  return v35;
}

atomic_ullong *_setUpCast<A, B>(_:)(int64_t a1, Class *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v98 = *(a2 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v100 = (&v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v99 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Optional(0, v11, v12, v13);
  v96 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v85 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v85 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v85 - v25;
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v28 = a1;
    }

    else
    {
      v28 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v29 = [v28 count];
    v90 = v20;
    if (v29)
    {
      goto LABEL_6;
    }

LABEL_8:
    v30 = &_swiftEmptySetSingleton;
    goto LABEL_9;
  }

  v29 = *(a1 + 16);
  v90 = v20;
  if (!v29)
  {
    goto LABEL_8;
  }

LABEL_6:
  type metadata accessor for _SetStorage(0, a3, v101, v24);
  v30 = static _SetStorage.allocate(capacity:)(v29);
LABEL_9:
  v102[1] = v30;
  v93 = v30;
  if (a3 != &type metadata for String)
  {
    v88 = v14;
    v89 = v17;
    v95 = a3;
    if (v27)
    {
      if (a1 < 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v32 = type metadata accessor for __CocoaSet.Iterator();
      v33 = swift_allocObject(v32, 0xE8, 7uLL);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(v33 + 208) = v31;
      *(v33 + 216) = 0;
      *(v33 + 16) = 0u;
      *(v33 + 32) = 0u;
      *(v33 + 48) = 0u;
      *(v33 + 64) = 0u;
      *(v33 + 80) = 0u;
      *(v33 + 96) = 0u;
      *(v33 + 112) = 0u;
      *(v33 + 128) = 0u;
      *(v33 + 144) = 0u;
      *(v33 + 160) = 0u;
      *(v33 + 176) = 0u;
      *(v33 + 192) = 0u;
      *(v33 + 224) = 0;
      v37 = v33 | 0x8000000000000000;
    }

    else
    {
      v45 = -1 << *(a1 + 32);
      v35 = ~v45;
      v34 = a1 + 56;
      v46 = -v45;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v36 = v47 & *(a1 + 56);
      v37 = a1;
    }

    v48 = v37 & 0x7FFFFFFFFFFFFFFFLL;
    v97 = (v98 + 56);
    v86 = (v98 + 48);
    v87 = (v96 + 16);
    v85 = (v96 + 8);
    v49 = (v98 + 32);
    v50 = (v35 + 64) >> 6;
    v91 = v35;
    v92 = v98 + 16;
    v30;
    a1;
    v96 = 0;
    v94 = v37;
    while ((v37 & 0x8000000000000000) == 0)
    {
      if (v36)
      {
        v51 = v96;
        goto LABEL_26;
      }

      v60 = v96;
      do
      {
        v51 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v51 >= v50)
        {
          goto LABEL_48;
        }

        v36 = *(v34 + 8 * v51);
        ++v60;
      }

      while (!v36);
      v96 = v51;
LABEL_26:
      v52 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v53 = v52 | (v51 << 6);
      v54 = *(v37 + 48);
      v55 = v98;
      (*(v98 + 16))(v23, v54 + *(v98 + 72) * v53, a2);
      (*(v55 + 56))(v23, 0, 1, a2);
LABEL_27:
      v56 = v100;
      (*v49)(v100, v23, a2);
      v57 = v99;
      v58 = v56;
      v59 = v95;
      swift_dynamicCast(v99, v58, a2, v95, 7uLL);
      _NativeSet._unsafeInsertNew(_:)(v57, v30, v59);
      v37 = v94;
    }

    v61 = *(v48 + 216);
    if ((v61 & 0x8000000000000000) == 0)
    {
      if (v61 != *(v48 + 224))
      {
        v63 = *(v48 + 24);
        if (v63)
        {
          v64 = v97;
          if (v61 >> 60)
          {
            goto LABEL_73;
          }

          goto LABEL_42;
        }

LABEL_75:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v62 = [*(v48 + 208) countByEnumeratingWithState:v48 + 16 objects:v48 + 80 count:16];
      *(v48 + 224) = v62;
      if (v62)
      {
        *(v48 + 216) = 0;
        v63 = *(v48 + 24);
        if (v63)
        {
          v61 = 0;
          v64 = v97;
LABEL_42:
          v65 = (v63 + 8 * v61);
          if ((v65 & 7) == 0)
          {
            v66 = *v65;
            *(v48 + 216) = v61 + 1;
            swift_unknownObjectRetain(v66);
            if (_swift_isClassOrObjCExistentialType(a2, a2))
            {
              v102[0] = v66;
              swift_dynamicCast(v23, v102, qword_1EEEAC710, a2, 7uLL);
              v67 = *v64;
            }

            else
            {
              v67 = *v64;
              v67(v90, 1, 1, a2);
              _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v66, a2, v90);
              (*v87)(v89, v90, v88);
              if ((*v86)(v89, 1, a2) == 1)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              swift_unknownObjectRelease(v66);
              (*v85)(v90, v88);
              (*v49)(v23, v89, a2);
            }

            v67(v23, 0, 1, a2);
            v30 = v93;
            goto LABEL_27;
          }

          goto LABEL_74;
        }

        goto LABEL_75;
      }

      *(v48 + 216) = -1;
    }

LABEL_48:
    (*v97)(v23, 1, 1, a2);
    _sSh8IteratorV8_VariantOySS__GWOe_0(v37);
    goto LABEL_67;
  }

  if (v27)
  {
    if (a1 < 0)
    {
      v38 = a1;
    }

    else
    {
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = type metadata accessor for __CocoaSet.Iterator();
    v40 = swift_allocObject(v39, 0xE8, 7uLL);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    *(v40 + 208) = v38;
    *(v40 + 216) = 0;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 0u;
    *(v40 + 64) = 0u;
    *(v40 + 80) = 0u;
    *(v40 + 96) = 0u;
    *(v40 + 112) = 0u;
    *(v40 + 128) = 0u;
    *(v40 + 144) = 0u;
    *(v40 + 160) = 0u;
    *(v40 + 176) = 0u;
    *(v40 + 192) = 0u;
    *(v40 + 224) = 0;
    v44 = v40 | 0x8000000000000000;
  }

  else
  {
    v68 = -1 << *(a1 + 32);
    v42 = ~v68;
    v41 = a1 + 56;
    v69 = -v68;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v43 = v70 & *(a1 + 56);
    v44 = a1;
  }

  v71 = (v98 + 56);
  v72 = (v42 + 64) >> 6;
  v95 = v42;
  v96 = v98 + 16;
  v73 = (v98 + 32);
  v93;
  a1;
  v97 = 0;
  while ((v44 & 0x8000000000000000) != 0)
  {
    v81 = __CocoaSet.Iterator.next()();
    if (!v81)
    {
      goto LABEL_66;
    }

    v83 = v81;
    _forceBridgeFromObjectiveC<A>(_:_:)(v81, a2, v82, v26);
    swift_unknownObjectRelease(v83);
LABEL_56:
    (*v71)(v26, 0, 1, a2);
    v76 = v100;
    (*v73)(v100, v26, a2);
    v77 = v99;
    swift_dynamicCast(v99, v76, a2, &type metadata for String, 7uLL);
    v79 = type metadata accessor for _NativeSet(0, &type metadata for String, v101, v78);
    _NativeSet._unsafeUpdate(with:)(v77, v79);
  }

  if (v43)
  {
    v74 = v97;
LABEL_55:
    v75 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    (*(v98 + 16))(v26, *(v44 + 48) + *(v98 + 72) * (v75 | (v74 << 6)), a2);
    goto LABEL_56;
  }

  v80 = v97;
  while (1)
  {
    v74 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      goto LABEL_72;
    }

    if (v74 >= v72)
    {
      break;
    }

    v43 = *(v41 + 8 * v74);
    v80 = (v80 + 1);
    if (v43)
    {
      v97 = v74;
      goto LABEL_55;
    }
  }

LABEL_66:
  (*v71)(v26, 1, 1, a2);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v44);
  v30 = v93;
LABEL_67:
  v30;
  return v30;
}

unint64_t _SetAnyHashableBox._base.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for Set(0, a2, a3, a3);
  *a4 = a1;

  return a1;
}

void _SetAnyHashableBox._canonicalBox.getter(unint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  a1;
  specialized _setUpCast<A, B>(_:)(a1);
  a2[3] = &unk_1EEEBF3B0;
  a2[4] = &protocol witness table for _SetAnyHashableBox<A>;
  *a2 = a1;
  a2[1] = v4;
}

uint64_t _SetAnyHashableBox._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MirrorPath(a1, v10);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  if (!swift_dynamicCast(v9, v10, v4, qword_1EEEBF3B0, 6uLL))
  {
    return 2;
  }

  v5 = v9[0];
  v6 = v9[1];
  v7 = _sSh2eeoiySbShyxG_ABtFZs11AnyHashableV_Tt1g5(a3, v9[0]);
  v6;
  v5;
  return v7 & 1;
}

Swift::Int _SetAnyHashableBox._hashValue.getter(uint64_t a1, unint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v3 = 0;
  v4 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  specialized Set.hash(into:)(&v3, a2);
  return Hasher._finalize()();
}

Swift::Int __swiftcall _SetAnyHashableBox._rawHashValue(_seed:)(Swift::Int _seed)
{
  v7 = 0u;
  v8 = 0u;
  *&v3 = 0;
  *(&v3 + 1) = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x736F6D6570736575;
  v4 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v5 = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x6C7967656E657261;
  v6 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  specialized Set.hash(into:)(&v3, v1);
  return Hasher._finalize()();
}

uint64_t _SetAnyHashableBox._unbox<A>()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, Class *a3@<X3>, uint64_t a4@<X4>, swift *a5@<X8>)
{
  v11 = a1;
  v8 = type metadata accessor for Set(0, a2, a4, a3);
  a1;
  v9 = swift_dynamicCast(a5, &v11, v8, a3, 6uLL);
  return (*(*(a3 - 1) + 7))(a5, v9 ^ 1u, 1, a3);
}

uint64_t _SetAnyHashableBox._downCastConditional<A>(into:)(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6)
{
  v11 = type metadata accessor for Optional(0, a5, a3, a4);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - v14);
  v16 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v20 = type metadata accessor for Set(0, a4, a6, v19);
  a2;
  v21 = swift_dynamicCast(v15, &v26, v20, a5, 6uLL);
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v15, 0, 1, a5);
    v23 = *(v16 + 32);
    v23(v18, v15, a5);
    v23(a1, v18, a5);
  }

  else
  {
    v22(v15, 1, 1, a5);
    (*(v12 + 8))(v15, v11);
  }

  return v21;
}

id Set._Variant.update(with:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(a2 + 16);
  if ((v8 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v8);
    v20 = *v4;
    *v4 = 0x8000000000000000;
    v14 = type metadata accessor for _NativeSet(0, v9, *(a2 + 24), v19);
    v15 = a3;
    v16 = a1;
    v17 = isUniquelyReferenced_nonNull_native;
    goto LABEL_8;
  }

  if (v8 < 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v10 count];
  if (!__OFADD__(result, 1))
  {
    v12 = *(a2 + 24);
    v20 = _NativeSet.init(_:capacity:)(v10, result + 1, v9, v12);
    v14 = type metadata accessor for _NativeSet(0, v9, v12, v13);
    v15 = a3;
    v16 = a1;
    v17 = 1;
LABEL_8:
    result = _NativeSet.update(with:isUnique:)(v16, v17, v14, v15);
    *v4 = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Set.update(with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = type metadata accessor for Set._Variant(0, *(a2 + 16), *(a2 + 24), a4);

  return a3(a1, v5);
}

void Set.remove(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Set._Variant(0, *(a4 + 16), *(a4 + 24), a4);

  Set._Variant.remove(at:)(a1, a2, a3 & 1, v9, a5);
}

void Set._Variant.remove(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4;
  v9 = a1;
  v11 = *(a4 + 16);
  v12 = *(v11 - 1);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    v50 = v6;
    v18 = a5;
    if (v17 < 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = (v17 & 0xFFFFFFFFFFFFFF8);
    }

    if ((a3 & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v9 >= 0)
    {
      v9 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v20 = type metadata accessor for __CocoaSet.Index.Storage();
    if (swift_dynamicCastClass(v9, v20))
    {
      v21 = *(v9 + 24);
      if (*(v21 + 16) > a2)
      {
        v22 = *(v21 + 8 * a2 + 24);
        swift_unknownObjectRetain(v22);
        v17;
        _forceBridgeFromObjectiveC<A>(_:_:)(v22, v11, v23, v15);
        swift_unknownObjectRelease(v22);
        Set._Variant._migrateToNative(_:removing:)(v19, v15, v50, v18);
        v17;
        (*(v12 + 8))(v15, v11);
        return;
      }

LABEL_33:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_34:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v54 = v45 - v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v17);
  v26 = *v5;
  if (a3)
  {
    v49 = isUniquelyReferenced_nonNull_native;
    if (v9 >= 0)
    {
      v9 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v27 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v9, v27))
    {
      goto LABEL_34;
    }

    if (*(v26 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v9 + 16)))
    {
      goto LABEL_28;
    }

    if (!swift_dynamicCastClass(v9, v27))
    {
      goto LABEL_34;
    }

    v48 = v5;
    v28 = *(v9 + 24);
    if (*(v28 + 16) <= a2)
    {
      goto LABEL_33;
    }

    v47 = a5;
    v29 = *(v28 + 8 * a2 + 24);
    v30 = swift_unknownObjectRetain(v29);
    _forceBridgeFromObjectiveC<A>(_:_:)(v30, v11, v31, v54);
    swift_unknownObjectRelease(v29);
    v32 = *(v26 + 40);
    v50 = v6;
    v33 = *(*(v6 + 24) + 32);
    v52 = *(v6 + 24);
    v34 = v33(v32, v11);
    v53 = v26;
    v35 = -1 << *(v26 + 32);
    v9 = v34 & ~v35;
    v51 = v26 + 56;
    if (((*(v26 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      (*(v12 + 8))(v54, v11);
      goto LABEL_28;
    }

    v36 = ~v35;
    v46 = v12;
    v39 = *(v12 + 16);
    v37 = v12 + 16;
    v38 = v39;
    v40 = *(v37 + 56);
    v41 = (v37 - 8);
    v45[1] = (v37 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v38(v15, *(v53 + 48) + v40 * v9, v11);
      v42 = (*(*(v52 + 8) + 8))(v15, v54, v11);
      v43 = *v41;
      (*v41)(v15, v11);
      if (v42)
      {
        break;
      }

      v9 = (v9 + 1) & v36;
      if (((*(v51 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v43(v54, v11);
        goto LABEL_28;
      }
    }

    v43(v54, v11);
    a5 = v47;
    v5 = v48;
    v12 = v46;
    v6 = v50;
    v26 = v53;
    LOBYTE(isUniquelyReferenced_nonNull_native) = v49;
  }

  else if (v9 < 0 || 1 << *(v26 + 32) <= v9 || ((*(v26 + 8 * (v9 >> 6) + 56) >> v9) & 1) == 0 || *(v26 + 36) != a2)
  {
LABEL_28:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v55 = v26;
  *v5 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    type metadata accessor for _NativeSet(0, v11, *(v6 + 24), v25);
    _NativeSet.copy()();
    v26 = v55;
  }

  (*(v12 + 32))(a5, *(v26 + 48) + *(v12 + 72) * v9, v11);
  type metadata accessor for _NativeSet(0, v11, *(v6 + 24), v44);
  _NativeSet._delete(at:)(v9);
  *v5 = v26;
}

Swift::Void __swiftcall Set.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for Set._Variant(0, *(v1 + 16), *(v1 + 24), v2);

  Set._Variant.removeAll(keepingCapacity:)(keepingCapacity);
}

Swift::Void __swiftcall Set._Variant.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = *v2;
  if (keepingCapacity)
  {
    v4 = v1;
    v5 = *(v1 + 16);
    if ((v3 & 0xC000000000000001) != 0)
    {
      if (v3 < 0)
      {
        v6 = *v2;
      }

      else
      {
        v6 = (v3 & 0xFFFFFFFFFFFFFF8);
      }

      if ([v6 count] > 0)
      {
        v7 = [v6 count];
        v3;
        if (v7)
        {
          type metadata accessor for _SetStorage(0, v5, *(v4 + 24), v8);
          v9 = static _SetStorage.allocate(capacity:)(v7);
        }

        else
        {
          v9 = &_swiftEmptySetSingleton;
        }

        *v2 = v9;
      }
    }

    else if (*(v3 + 16))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
      v12 = *v2;
      *v2 = 0x8000000000000000;
      type metadata accessor for _NativeSet(0, v5, *(v4 + 24), v11);
      _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      *v2 = v12;
    }
  }

  else
  {
    *v2;
    *v2 = &_swiftEmptySetSingleton;
  }
}

void Set.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    if (*(v6 + 16))
    {
      goto LABEL_6;
    }

LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 < 0)
  {
    v7 = *v3;
  }

  else
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFF8);
  }

  if (![v7 count])
  {
    goto LABEL_14;
  }

LABEL_6:
  v8 = *v3;
  v9 = *(a1 + 16);
  v10 = *v3 & 0xC000000000000001;
  if (!v10)
  {
    v18 = 0;
    v19 = (v8 + 56);
    v20 = -1 << *(v8 + 32);
    v16 = -v20;
    v21 = (63 - v20) >> 6;
    while (1)
    {
      v23 = *v19++;
      v22 = v23;
      if (v23)
      {
        break;
      }

      v18 -= 64;
      if (!--v21)
      {
        goto LABEL_20;
      }
    }

    v16 = __clz(__rbit64(v22)) - v18;
LABEL_20:
    v17 = *(v8 + 36);
    goto LABEL_21;
  }

  if (v8 < 0)
  {
    v11 = *v3;
  }

  else
  {
    v11 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  v12 = [swift_unknownObjectRetain(v11) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v12 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(8 * v12, 24))
  {
LABEL_25:
    __break(1u);
    return;
  }

  v14 = swift_bufferAllocate(v13, (8 * v12 + 24), 7uLL);
  v14[2] = v12;
  [v11 getObjects_];
  v8;
  v15 = type metadata accessor for __CocoaSet.Index.Storage();
  v16 = swift_allocObject(v15, 0x20, 7uLL);
  *(v16 + 16) = v11;
  *(v16 + 24) = v14;
  v8;
  v17 = 0;
LABEL_21:
  v24 = type metadata accessor for Set._Variant(0, v9, *(a1 + 24), a2);
  Set._Variant.remove(at:)(v16, v17, v10 != 0, v24, a3);

  sub_180615F30(v16, v17, v10 != 0);
}

__objc2_class **Set.init<A>(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v47 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v45 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - v12;
  v16 = type metadata accessor for Optional(0, v13, v14, v15);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - v17;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v20 = v19;
  v48 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v54 = &v44 - v22;
  v23 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v25, a1, a3);
  v26 = a4;
  v28 = type metadata accessor for Set(0, a2, a4, v27);
  if (swift_dynamicCast(&v55, v25, a3, v28, 6uLL))
  {
    (*(v23 + 8))(a1, a3);
  }

  else
  {
    v29 = (*(a5 + 40))(a3, a5);
    if (v29)
    {
      v31 = v29;
      type metadata accessor for _SetStorage(0, a2, a4, v30);
      v32 = static _SetStorage.allocate(capacity:)(v31);
    }

    else
    {
      v32 = &_swiftEmptySetSingleton;
    }

    v55 = v32;
    (*(a5 + 32))(a3, a5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v20, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v34 = *(AssociatedConformanceWitness + 16);
    v52 = AssociatedConformanceWitness;
    v53 = v20;
    v51 = v34;
    (v34)(v20);
    v35 = v47;
    v36 = *(v47 + 48);
    v49 = v47 + 48;
    v50 = v36;
    v37 = v36(v18, 1, a2);
    v38 = v45;
    v39 = v46;
    if (v37 != 1)
    {
      v40 = *(v35 + 32);
      do
      {
        v40(v38, v18, a2);
        v42 = type metadata accessor for Set._Variant(0, a2, v26, v41);
        Set._Variant.insert(_:)(v39, v38, v42);
        (*(v35 + 8))(v39, a2);
        v51(v53, v52);
      }

      while (v50(v18, 1, a2) != 1);
    }

    (*(v48 + 8))(v54, v53);
  }

  return v55;
}

uint64_t Set.isSubset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Optional(0, v15, v15, v16);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v40 - v19;
  v21 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v40 = a2 & 0xC000000000000001;
    v41 = &v40 - v19;
    v22 = v12;
    if (a2 < 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v23 count])
    {
      v24 = [v23 count];
      v12 = v22;
      v21 = v40;
      v20 = v41;
      goto LABEL_8;
    }

LABEL_12:
    v30 = 1;
    return v30 & 1;
  }

  v24 = *(a2 + 16);
  if (!v24)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v24 == 1)
  {
    v42 = a2;
    v25 = type metadata accessor for Set(0, a3, a5, v18);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v25, v26);
    Collection.first.getter(v25, WitnessTable, v20);
    v28 = *(a3 - 1);
    if ((*(v28 + 48))(v20, 1, a3) == 1)
    {
      LODWORD(v38) = 0;
      v37 = 714;
      LOBYTE(v36) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v29 = (*(a6 + 48))(v20, a4, a6);
    if (v29 == 2)
    {
      MEMORY[0x1EEE9AC00](v29);
      v36 = a4;
      v37 = a6;
      v38 = *(a5 + 8);
      v39 = v20;
      v30 = Sequence.contains(where:)(partial apply for closure #1 in Sequence<>.contains(_:), (&v40 - 6), a4, a6);
    }

    else
    {
      v30 = v29;
    }

    (*(v28 + 8))(v20, a3);
  }

  else
  {
    (*(v12 + 16))(v14, a1, a4);
    v32 = type metadata accessor for Set(0, a3, a5, v31);
    if (swift_dynamicCast(&v42, v14, a4, v32, 6uLL))
    {
      v33 = v42;
      v30 = Set.isSubset(of:)(v42, a2, a3, a5);
      v33;
    }

    else
    {
      if (v21)
      {
        if (a2 < 0)
        {
          v34 = a2;
        }

        else
        {
          v34 = (a2 & 0xFFFFFFFFFFFFFF8);
        }

        a2;
        a2 = _NativeSet.init(_:capacity:)(v34, [v34 count], a3, a5);
      }

      else
      {
        a2;
      }

      v30 = _NativeSet.isSubset<A>(of:)(a1, a2, a3, a4, a5, a6);
      a2;
    }
  }

  return v30 & 1;
}

uint64_t Set.isSubset(of:)(uint64_t a1, int64_t a2, Class *a3, uint64_t a4)
{
  v92 = a4;
  v6 = a1;
  v7 = *(a3 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v89 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v93 = (&v66 - v10);
  v13 = type metadata accessor for Optional(0, v11, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v86 = (&v66 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v66 - v19);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v22 = [v21 count];
  }

  else
  {
    v22 = *(a2 + 16);
  }

  v83 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v23 = v6;
    }

    else
    {
      v23 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v23 count] < v22)
    {
      return 0;
    }
  }

  else if (*(v6 + 16) < v22)
  {
    return 0;
  }

  v69 = v13;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v25 = type metadata accessor for __CocoaSet.Iterator();
    v26 = swift_allocObject(v25, 0xE8, 7uLL);
    v74 = 0;
    v27 = 0;
    v87 = 0;
    *(v26 + 208) = v24;
    *(v26 + 216) = 0;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 96) = 0u;
    *(v26 + 112) = 0u;
    *(v26 + 128) = 0u;
    *(v26 + 144) = 0u;
    *(v26 + 160) = 0u;
    *(v26 + 176) = 0u;
    *(v26 + 192) = 0u;
    *(v26 + 224) = 0;
    v28 = v26 | 0x8000000000000000;
  }

  else
  {
    v29 = -1 << *(a2 + 32);
    v27 = ~v29;
    v30 = *(a2 + 56);
    v74 = a2 + 56;
    v31 = -v29;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v87 = v32 & v30;
    v28 = a2;
  }

  v33 = v78;
  v34 = v28 & 0x7FFFFFFFFFFFFFFFLL;
  v81 = (v7 + 56);
  v68 = (v14 + 16);
  v67 = (v7 + 48);
  v66 = (v14 + 8);
  v80 = (v7 + 32);
  v73 = v27;
  v71 = (v27 + 64) >> 6;
  v35 = (v6 & 0xFFFFFFFFFFFFFF8);
  if (v6 < 0)
  {
    v35 = v6;
  }

  v76 = v35;
  v90 = v7 + 16;
  v91 = (v7 + 8);
  v72 = v92 + 32;
  v88 = v6 + 56;
  a2;
  v36 = 0;
  v77 = v20;
  v84 = v28;
  while (1)
  {
    v37 = v86;
    if ((v28 & 0x8000000000000000) == 0)
    {
      v38 = v87;
      v39 = v36;
      if (!v87)
      {
        v40 = v36;
        while (1)
        {
          v39 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v39 >= v71)
          {
            goto LABEL_63;
          }

          v38 = *(v74 + 8 * v39);
          ++v40;
          if (v38)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_69:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_32:
      v82 = v36;
      v85 = (v38 - 1) & v38;
      (*(v7 + 16))(v20, *(v28 + 48) + *(v7 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), a3);
      (*(v7 + 56))(v20, 0, 1, a3);
      goto LABEL_44;
    }

    v41 = *(v34 + 216);
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    if (v41 != *(v34 + 224))
    {
      v43 = *(v34 + 24);
      if (!v43)
      {
LABEL_72:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v41 >> 60)
      {
        __break(1u);
LABEL_71:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_40;
    }

    v42 = [*(v34 + 208) countByEnumeratingWithState:v34 + 16 objects:v34 + 80 count:16];
    *(v34 + 224) = v42;
    if (!v42)
    {
      break;
    }

    *(v34 + 216) = 0;
    v43 = *(v34 + 24);
    if (!v43)
    {
      goto LABEL_72;
    }

    v41 = 0;
LABEL_40:
    v44 = (v43 + 8 * v41);
    if ((v44 & 7) != 0)
    {
      goto LABEL_71;
    }

    v82 = v36;
    v45 = *v44;
    *(v34 + 216) = v41 + 1;
    swift_unknownObjectRetain(v45);
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v94 = v45;
      swift_dynamicCast(v20, &v94, qword_1EEEAC710, a3, 7uLL);
      v46 = *v81;
    }

    else
    {
      v46 = *v81;
      (*v81)(v37, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v45, a3, v37);
      (*v68)(v33, v37, v69);
      if ((*v67)(v33, 1, a3) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v45);
      (*v66)(v37, v69);
      (*v80)(v20, v78, a3);
    }

    v46(v20, 0, 1, a3);
    v39 = v82;
    v85 = v87;
    v28 = v84;
LABEL_44:
    v47 = *v80;
    (*v80)(v93, v20, a3);
    if (v83)
    {
      if (_swift_isClassOrObjCExistentialType(a3, a3))
      {
        if (v79 != 8)
        {
          goto LABEL_69;
        }

        v48 = v93;
        v49 = *v93;
        v50 = *v91;
        swift_unknownObjectRetain(*v93);
        v51 = v48;
        v28 = v84;
        v50(v51, a3);
      }

      else
      {
        v63 = v89;
        v47(v89, v93, a3);
        v49 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v63, a3);
      }

      v52 = [v76 member_];
      swift_unknownObjectRelease(v49);
      if (!v52)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v28);
        return 0;
      }

      swift_unknownObjectRelease(v52);
      v36 = v39;
      v87 = v85;
      v20 = v77;
    }

    else
    {
      if (!*(v6 + 16))
      {
        v64 = v28;
        goto LABEL_61;
      }

      v70 = v34;
      v75 = v7;
      v53 = (*(v92 + 32))(*(v6 + 40), a3);
      v54 = -1 << *(v6 + 32);
      v55 = v53 & ~v54;
      if (((*(v88 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
      {
LABEL_60:
        v64 = v84;
LABEL_61:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v64);
        (*v91)(v93, a3);
        return 0;
      }

      v56 = v6;
      v57 = ~v54;
      v58 = *(v75 + 72);
      v59 = *(v75 + 16);
      while (1)
      {
        v60 = v89;
        v59(v89, *(v56 + 48) + v58 * v55, a3);
        v61 = (*(*(v92 + 8) + 8))(v60, v93, a3);
        v62 = *v91;
        (*v91)(v60, a3);
        if (v61)
        {
          break;
        }

        v55 = (v55 + 1) & v57;
        if (((*(v88 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v62(v93, a3);
      v36 = v39;
      v28 = v84;
      v87 = v85;
      v6 = v56;
      v7 = v75;
      v20 = v77;
      v33 = v78;
      v34 = v70;
    }
  }

  *(v34 + 216) = -1;
LABEL_63:
  (*v81)(v20, 1, 1, a3);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v28);
  return 1;
}

uint64_t Set.isStrictSubset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v15);
  v17 = type metadata accessor for Set(0, a3, a5, v16);
  if (swift_dynamicCast(&v23, v13, a4, v17, 6uLL))
  {
    v18 = v23;
    v19 = Set.isStrictSubset(of:)(v23, a2, a3, a5);
    v18;
  }

  else
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      if (a2 < 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      a2;
      a2 = _NativeSet.init(_:capacity:)(v20, [v20 count], a3, a5);
    }

    else
    {
      a2;
    }

    v19 = _NativeSet.isStrictSubset<A>(of:)(a1, a2, a3, a4, a5, a6);
    a2;
  }

  return v19 & 1;
}

uint64_t Set.isStrictSubset(of:)(uint64_t a1, int64_t a2, Class *a3, uint64_t a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = [v8 count];
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_6:
      if (a1 < 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      if (v9 < [v10 count])
      {
        goto LABEL_10;
      }

      return 0;
    }
  }

  else
  {
    v9 = *(a2 + 16);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_6;
    }
  }

  if (v9 >= *(a1 + 16))
  {
    return 0;
  }

LABEL_10:

  return Set.isSubset(of:)(a1, a2, a3, a4);
}

uint64_t Set.isSuperset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v77 = *(a3 - 1);
  v78 = a2;
  v11 = MEMORY[0x1EEE9AC00](a1);
  v82 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v84 = (&v61 - v13);
  v16 = type metadata accessor for Optional(0, v14, v14, v15);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v61 - v17;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v20 = v19;
  v75 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - v22;
  v24 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v26 = (&v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v26, a1, a4);
  v79 = a5;
  v28 = type metadata accessor for Set(0, a3, a5, v27);
  if (swift_dynamicCast(&v85, v26, a4, v28, 6uLL))
  {
    (*(v24 + 8))(a1, a4);
    v29 = v85;
    v30 = Set.isSubset(of:)(v78, v85, a3, v79);
    v29;
    return v30 & 1;
  }

  (*(a6 + 32))(a4, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v20, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = *(AssociatedConformanceWitness + 16);
  v73 = AssociatedConformanceWitness + 16;
  v74 = AssociatedConformanceWitness;
  v72 = v32;
  (v32)(v20);
  v33 = v77;
  v70 = *(v77 + 48);
  v71 = v77 + 48;
  v34 = v70(v18, 1, a3);
  v35 = v20;
  v36 = v23;
  v37 = v78;
  v38 = v79;
  if (v34 == 1)
  {
LABEL_4:
    (*(v75 + 8))(v36, v35);
    v30 = 1;
    return v30 & 1;
  }

  v39 = v33;
  v40 = *(v33 + 32);
  v67 = v78 & 0xC000000000000001;
  v68 = v40;
  if (v78 < 0)
  {
    v41 = v78;
  }

  else
  {
    v41 = (v78 & 0xFFFFFFFFFFFFFF8);
  }

  v83 = (v33 + 8);
  v65 = v79 + 32;
  v66 = v41;
  v69 = v33 + 32;
  v80 = v33 + 16;
  v81 = v78 + 56;
  v64 = v35;
  v63 = v23;
  v62 = v18;
  while (1)
  {
    v68(v84, v18, a3);
    if (!v67)
    {
      break;
    }

    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      if (v76 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v42 = v39;
      v43 = v84;
      v44 = *v84;
      v45 = *v83;
      swift_unknownObjectRetain(*v84);
      v45(v43, a3);
    }

    else
    {
      v42 = v39;
      v59 = v82;
      v68(v82, v84, a3);
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v59, a3);
    }

    v46 = [v66 member_];
    swift_unknownObjectRelease(v44);
    if (!v46)
    {
      goto LABEL_25;
    }

    swift_unknownObjectRelease(v46);
    v39 = v42;
    v38 = v79;
LABEL_22:
    v72(v35, v74);
    if (v70(v18, 1, a3) == 1)
    {
      goto LABEL_4;
    }
  }

  if (*(v37 + 16))
  {
    v47 = (*(v38 + 32))(*(v37 + 40), a3, v38);
    v48 = -1 << *(v37 + 32);
    v49 = v47 & ~v48;
    if ((*(v81 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
    {
      v78 = v83 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v50 = v39;
      v51 = v37;
      v52 = v38;
      v53 = ~v48;
      v54 = *(v50 + 72);
      v55 = *(v50 + 16);
      while (1)
      {
        v56 = v82;
        v55(v82, *(v51 + 48) + v54 * v49, a3);
        v57 = (*(*(v52 + 8) + 8))(v56, v84, a3);
        v58 = *v83;
        (*v83)(v56, a3);
        if (v57)
        {
          break;
        }

        v49 = (v49 + 1) & v53;
        if (((*(v81 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          v35 = v64;
          v36 = v63;
          v58(v84, a3);
          goto LABEL_25;
        }
      }

      v58(v84, a3);
      v38 = v52;
      v37 = v51;
      v39 = v77;
      v35 = v64;
      v36 = v63;
      v18 = v62;
      goto LABEL_22;
    }
  }

  (*v83)(v84, a3);
LABEL_25:
  (*(v75 + 8))(v36, v35);
  v30 = 0;
  return v30 & 1;
}

uint64_t Set.isStrictSuperset<A>(of:)(uint64_t a1, uint64_t a2, Class *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      goto LABEL_6;
    }

LABEL_9:
    v21 = 0;
    return v21 & 1;
  }

  if (a2 < 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  if (![v17 count])
  {
    goto LABEL_9;
  }

LABEL_6:
  (*(v12 + 16))(v14, a1, a4);
  v19 = type metadata accessor for Set(0, a3, a5, v18);
  if (swift_dynamicCast(&v25, v14, a4, v19, 6uLL))
  {
    v20 = v25;
    v21 = Set.isStrictSuperset(of:)(v25, a2, a3, a5);
    v20;
  }

  else
  {
    if (v16)
    {
      if (a2 < 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      a2;
      a2 = _NativeSet.init(_:capacity:)(v22, [v22 count], a3, a5);
    }

    else
    {
      a2;
    }

    v21 = _NativeSet.isStrictSuperset<A>(of:)(a1, a2, a3, a4, a5, a6);
    a2;
  }

  return v21 & 1;
}

uint64_t Set.isStrictSuperset(of:)(int64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = [v8 count];
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_6:
      if (a1 < 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      if ([v10 count] < v9)
      {
        goto LABEL_10;
      }

      return 0;
    }
  }

  else
  {
    v9 = *(a2 + 16);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 16) >= v9)
  {
    return 0;
  }

LABEL_10:

  return Set.isSubset(of:)(a2, a1, a3, a4);
}

uint64_t Set.isDisjoint<A>(with:)(uint64_t a1, uint64_t a2, Class *a3, char *a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v15);
  v17 = type metadata accessor for Set(0, a3, a5, v16);
  if (swift_dynamicCast(&v22, v13, a4, v17, 6uLL))
  {
    v18 = v22;
    v19 = Set.isDisjoint(with:)(v22, a2, a3, a5);
    v18;
  }

  else
  {
    v19 = Set._isDisjoint<A>(with:)(a1, a2, a3, a4, a5, a6);
  }

  return v19 & 1;
}

uint64_t Set.isDisjoint(with:)(int64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v101 = a4;
  v6 = a1;
  v7 = *(a3 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v102 = (&v75 - v11);
  v14 = type metadata accessor for Optional(0, v12, v12, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v96 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v86 = (&v75 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v95 = (&v75 - v20);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    if (![v21 count])
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  v89 = v8;
  v22 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v23 = v6;
    }

    else
    {
      v23 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    if (![v23 count])
    {
      return 1;
    }

LABEL_15:
    v79 = v14;
    if ((a2 & 0xC000000000000001) != 0)
    {
      if (a2 < 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      v25 = [v24 count];
      if (v22)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = *(a2 + 16);
      if (v22)
      {
LABEL_20:
        if (v6 < 0)
        {
          v26 = v6;
        }

        else
        {
          v26 = (v6 & 0xFFFFFFFFFFFFFF8);
        }

        v27 = [v26 count];
        goto LABEL_26;
      }
    }

    v27 = *(v6 + 16);
LABEL_26:
    if (v25 >= v27)
    {
      v28 = v6;
    }

    else
    {
      v28 = a2;
    }

    if (v25 >= v27)
    {
      v6 = a2;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      if (v28 < 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFFFFFFFF8;
      }

      v30 = type metadata accessor for __CocoaSet.Iterator();
      v31 = swift_allocObject(v30, 0xE8, 7uLL);
      v85 = 0;
      v32 = 0;
      v97 = 0;
      *(v31 + 208) = v29;
      *(v31 + 216) = 0;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 80) = 0u;
      *(v31 + 96) = 0u;
      *(v31 + 112) = 0u;
      *(v31 + 128) = 0u;
      *(v31 + 144) = 0u;
      *(v31 + 160) = 0u;
      *(v31 + 176) = 0u;
      *(v31 + 192) = 0u;
      *(v31 + 224) = 0;
      v33 = v31 | 0x8000000000000000;
    }

    else
    {
      v34 = -1 << *(v28 + 32);
      v32 = ~v34;
      v35 = *(v28 + 56);
      v85 = v28 + 56;
      v36 = -v34;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v97 = v37 & v35;
      v33 = v28;
    }

    v38 = v95;
    v39 = v96;
    v94 = v33;
    v87 = v33 & 0x7FFFFFFFFFFFFFFFLL;
    v92 = (v7 + 56);
    v78 = (v15 + 16);
    v77 = (v7 + 48);
    v76 = (v15 + 8);
    v91 = (v7 + 32);
    v82 = v32;
    v83 = (v32 + 64) >> 6;
    v99 = v7 + 16;
    v90 = v6 & 0xC000000000000001;
    v40 = (v6 & 0xFFFFFFFFFFFFFF8);
    if (v6 < 0)
    {
      v40 = v6;
    }

    v88 = v40;
    v41 = (v7 + 8);
    v81 = v101 + 32;
    v98 = v6 + 56;
    v28;
    v100 = v6;
    v6;
    v42 = 0;
    while (1)
    {
      v43 = v97;
      v44 = v42;
      v45 = v94;
      if ((v94 & 0x8000000000000000) != 0)
      {
        v49 = v87;
        v50 = *(v87 + 216);
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        if (v50 == *(v87 + 224))
        {
          v51 = [*(v87 + 208) countByEnumeratingWithState:v87 + 16 objects:v87 + 80 count:16];
          v49[28] = v51;
          if (!v51)
          {
            v49[27] = -1;
            v45 = v94;
LABEL_79:
            _sSh8IteratorV8_VariantOySS__GWOe_0(v45);
            v100;
            (*v92)(v38, 1, 1, a3);
            return 1;
          }

          v49[27] = 0;
          v52 = v49[3];
          if (!v52)
          {
            goto LABEL_89;
          }

          v50 = 0;
        }

        else
        {
          v52 = *(v87 + 24);
          if (!v52)
          {
LABEL_89:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (v50 >> 60)
          {
            __break(1u);
LABEL_88:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v53 = (v52 + 8 * v50);
        if ((v53 & 7) != 0)
        {
          goto LABEL_88;
        }

        v93 = v44;
        v48 = v43;
        v54 = *v53;
        v49[27] = v50 + 1;
        swift_unknownObjectRetain(v54);
        if (_swift_isClassOrObjCExistentialType(a3, a3))
        {
          v103 = v54;
          v55 = v92;
          swift_dynamicCast(v38, &v103, qword_1EEEAC710, a3, 7uLL);
          v56 = *v55;
        }

        else
        {
          v56 = *v92;
          (*v92)(v86, 1, 1, a3);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v54, a3, v86);
          v72 = v39;
          v73 = v79;
          (*v78)(v72, v86, v79);
          if ((*v77)(v96, 1, a3) == 1)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v54);
          (*v76)(v86, v73);
          v39 = v96;
          (*v91)(v38, v96, a3);
        }

        v56(v38, 0, 1, a3);
        v42 = v93;
        v43 = v48;
      }

      else
      {
        v46 = v97;
        if (!v97)
        {
          v47 = v42;
          while (1)
          {
            v42 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              break;
            }

            if (v42 >= v83)
            {
              goto LABEL_79;
            }

            v46 = *(v85 + 8 * v42);
            ++v47;
            if (v46)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_86:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_49:
        v93 = v44;
        v48 = (v46 - 1) & v46;
        (*(v7 + 16))(v38, *(v94 + 48) + *(v7 + 72) * (__clz(__rbit64(v46)) | (v42 << 6)), a3);
        (*(v7 + 56))(v38, 0, 1, a3);
      }

      v57 = *v91;
      (*v91)(v102, v38, a3);
      v97 = v48;
      if (v90)
      {
        if (_swift_isClassOrObjCExistentialType(a3, a3))
        {
          if (v89 != 8)
          {
            goto LABEL_86;
          }

          v58 = v102;
          v59 = *v102;
          v60 = *v41;
          swift_unknownObjectRetain(*v102);
          v61 = v58;
          v39 = v96;
          v60(v61, a3);
          v38 = v95;
        }

        else
        {
          v57(v10, v102, a3);
          v59 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v10, a3);
        }

        v62 = [v88 member_];
        swift_unknownObjectRelease(v59);
        if (v62)
        {
          swift_unknownObjectRelease(v62);
          _sSh8IteratorV8_VariantOySS__GWOe_0(v94);
          v100;
          return 0;
        }
      }

      else
      {
        v80 = v43;
        v63 = v100;
        if (v100[2])
        {
          v84 = v7;
          v64 = (*(v101 + 32))(v100[5], a3);
          v65 = -1 << *(v63 + 32);
          v66 = v64 & ~v65;
          if ((*(v98 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
          {
            v75 = v41 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v67 = ~v65;
            v68 = *(v84 + 72);
            v69 = *(v84 + 16);
            while (1)
            {
              v69(v10, v100[6] + v68 * v66, a3);
              v70 = (*(*(v101 + 8) + 8))(v10, v102, a3);
              v71 = *v41;
              (*v41)(v10, a3);
              if (v70)
              {
                break;
              }

              v66 = (v66 + 1) & v67;
              if (((*(v98 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
              {
                v38 = v95;
                goto LABEL_75;
              }
            }

            _sSh8IteratorV8_VariantOySS__GWOe_0(v94);
            v100;
            v71(v102, a3);
            return 0;
          }

          v71 = *v41;
LABEL_75:
          v71(v102, a3);
          v7 = v84;
          v39 = v96;
        }

        else
        {
          (*v41)(v102, a3);
        }
      }
    }
  }

  if (*(v6 + 16))
  {
    goto LABEL_15;
  }

  return 1;
}