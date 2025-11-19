atomic_ullong *sequence<A>(first:next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  (*(v9 + 16))(a5, a1, a4);
  (*(v9 + 56))(a5, 0, 1, a4);
  v12 = type metadata accessor for Optional(255, a4, v10, v11);
  swift_getTupleTypeMetadata2(0, v12, &type metadata for Bool, 0, 0);
  v14 = v13;
  *(a5 + *(v13 + 48)) = 1;
  v15 = swift_allocObject(&unk_1EEEAE010, 0x28, 7uLL);
  *(v15 + 2) = a4;
  *(v15 + 3) = a2;
  *(v15 + 4) = a3;
  v17 = type metadata accessor for UnfoldSequence(0, a4, v14, v16);
  *(a5 + *(v17 + 40)) = 0;
  v18 = (a5 + *(v17 + 36));
  *v18 = partial apply for closure #1 in sequence<A>(first:next:);
  v18[1] = v15;

  return a3;
}

uint64_t closure #1 in sequence<A>(first:next:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a2;
  v31 = a5;
  v30 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional(255, v9, v8, v9);
  swift_getTupleTypeMetadata2(0, v10, &type metadata for Bool, 0, 0);
  v12 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  (*(v18 + 16))(&v26 - v16, a1, v12);
  v19 = v17[*(v12 + 48)];
  v20 = *(v10 - 8);
  v21 = *(v20 + 32);
  v21(v15, v17, v10);
  if (v19 == 1)
  {
    result = (v21)(v31, v15, v10);
    *(a1 + *(v12 + 48)) = 0;
  }

  else
  {
    v24 = v30;
    v23 = v31;
    if ((*(v30 + 48))(v15, 1, a4) == 1)
    {
      return (*(v24 + 56))(v23, 1, 1, a4);
    }

    else
    {
      v25 = v27;
      (*(v24 + 32))(v27, v15, a4);
      v29(v25);
      (*(v24 + 8))(v25, a4);
      return (*(v20 + 24))(a1, v23, v10);
    }
  }

  return result;
}

atomic_ullong *sequence<A, B>(state:next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 16))(a6, a1, a5);
  v12 = type metadata accessor for UnfoldSequence(0, a4, a5, v11);
  *(a6 + *(v12 + 40)) = 0;
  v13 = (a6 + *(v12 + 36));
  *v13 = a2;
  v13[1] = a3;

  return a3;
}

uint64_t UnfoldSequence.init(_state:_next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for UnfoldSequence(0, a4, a5, a4);
  *(a6 + *(v11 + 40)) = 0;
  result = (*(*(a5 - 8) + 32))(a6, a1, a5);
  v13 = (a6 + *(v11 + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t LazyDropWhileSequence._predicate.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v2[1];
  return v3;
}

uint64_t UnfoldSequence.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Optional(0, v8, a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = *(a1 + 40);
  if (*(v5 + v13))
  {
    v14 = *(*(v8 - 8) + 56);

    return v14(a4, 1, 1, v8);
  }

  else
  {
    (*(v5 + *(a1 + 36)))(v5);
    v16 = *(v8 - 8);
    if ((*(v16 + 48))(v12, 1, v8) == 1)
    {
      (*(v10 + 8))(v12, v9);
      *(v5 + v13) = 1;
      return (*(v16 + 56))(a4, 1, 1, v8);
    }

    else
    {
      (*(v16 + 32))(a4, v12, v8);
      return (*(v16 + 56))(a4, 0, 1, v8);
    }
  }
}

void *UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v42 = a3;
  v9 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  v15 = type metadata accessor for EnumeratedSequence(0, v14, v13, v14);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v19 = type metadata accessor for EnumeratedSequence.Iterator(0, a4, v13, v18);
  v40 = *(v19 - 8);
  v41 = v19;
  result = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v38 - 6) = a4;
    *(&v38 - 5) = a5;
    v34 = a1;
    v35 = a2;
    v36 = v42;
    v37 = a2;
    result = (*(v13 + 72))(&v44, partial apply for closure #1 in UnsafeMutableRawBufferPointer.copyBytes<A>(from:));
    if (v44 == 1)
    {
      (*(v9 + 16))(v17, a1, a4);
      (*(v9 + 32))(v11, v17, a4);
      (*(v13 + 32))(a4, v13);
      v23 = v41;
      v24 = *(v41 + 36);
      *&v22[v24] = 0;
      swift_getAssociatedTypeWitness(255, v13, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v26 = v25;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v13, a4, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v28 = *(AssociatedConformanceWitness + 16);
      v29 = swift_checkMetadataState(0, v26);
      v28(v43, v29, AssociatedConformanceWitness);
      v30 = 0;
      if ((v43[0] & 0x100) == 0)
      {
        v39 = v24;
        v31 = 0;
        v32 = v42 - a2;
        do
        {
          v30 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
LABEL_12:
            LODWORD(v36) = 0;
            v35 = 551;
            LOBYTE(v34) = 2;
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (v31 >= v32)
          {
            goto LABEL_12;
          }

          *(a2 + v31) = v43[0];
          v33 = swift_checkMetadataState(0, v26);
          v28(v43, v33, AssociatedConformanceWitness);
          ++v31;
        }

        while (BYTE1(v43[0]) != 1);
        v23 = v41;
        v24 = v39;
      }

      *&v22[v24] = v30;
      return (*(v40 + 8))(v22, v23);
    }
  }

  return result;
}

uint64_t UnsafeMutableRawBufferPointer.initializeMemory<A>(as:repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v6 = *(*(a5 - 8) + 72);
    if (!v6 || (v7 = a4 - a3, a4 - a3 == 0x8000000000000000) && v6 == -1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v8 = v7 / v6;
    UnsafeMutableRawPointer.initializeMemory<A>(as:repeating:count:)(a1, a2, v7 / v6, a3, a5);
    if (v8 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return a3;
}

uint64_t UnsafeMutableRawBufferPointer.initializeMemory<A>(as:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6, int **a7)
{
  v7 = a7;
  v57 = a5;
  v54 = a1;
  swift_getAssociatedTypeWitness(255, a7, a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v15 = type metadata accessor for Optional(0, v11, v13, v14);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v50 - v17;
  v55 = *(v12 - 8);
  v18 = v55;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v50 - v20;
  v21 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v7, a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v63 = v24;
  v53 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  (*(v21 + 16))(v23, a3, a6);
  v27 = v7[4];
  v62 = v26;
  (v27)(a6, v7);
  v28 = *(v18 + 72);
  v29 = v7[5];
  v30 = (v29)(a6, v7);
  if (!a4)
  {
    if (!v28)
    {
      goto LABEL_30;
    }

    if (v30 <= 0)
    {
      if (!(v29)(a6, v7))
      {
        (*(v53 + 32))(v54, v62, v63);
        return a4;
      }

LABEL_29:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_27:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v28 || (v59 = v57 - a4, v57 - a4 == 0x8000000000000000) && v28 == -1)
  {
LABEL_30:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v59 / v28 < v30 || (*(v55 + 80) & a4) != 0)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(0, v28))
  {
    __break(1u);
    goto LABEL_29;
  }

  v31 = 0;
  v57 = v57 - v28 + 1;
  v58 = a4;
  v56 = (v55 + 48);
  v32 = (v55 + 32);
  while (1)
  {
    v33 = (v58 + v31);
    v34 = v57 >= v58 + v31;
    if (v28 > 0)
    {
      v34 = v58 + v31 >= v57;
    }

    if (v34)
    {
      goto LABEL_23;
    }

    v35 = v7;
    v36 = v7;
    v37 = v63;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, a6, v63, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v39 = v12;
    v40 = v61;
    (*(AssociatedConformanceWitness + 16))(v37, AssociatedConformanceWitness);
    v41 = v40;
    v12 = v39;
    if ((*v56)(v41, 1, v39) == 1)
    {
      break;
    }

    v42 = v41;
    v43 = *v32;
    v44 = v60;
    (*v32)(v60, v42, v39);
    v43(v33, v44, v39);
    v45 = v31 + v28;
    if (__OFADD__(v31, v28))
    {
      __break(1u);
      goto LABEL_30;
    }

    if ((v45 & 0x8000000000000000) == 0)
    {
      v7 = v35;
      v31 += v28;
      if (v59 >= v45)
      {
        continue;
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v51 + 8))(v41, v52);
LABEL_23:
  v47 = v53;
  v49 = v62;
  v48 = v63;
  (*(v53 + 16))(v54, v62, v63);
  (*(v47 + 8))(v49, v48);
  a4 = v58;
  if (v31 / v28 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a4;
}

uint64_t UnsafeMutableRawBufferPointer.load<A>(fromByteOffset:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = __OFADD__(a1, v6);
  v8 = a1 + v6;
  if (v7)
  {
    __break(1u);
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a2)
  {
    if (v8 < 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 - a2 < v8)
  {
    goto LABEL_14;
  }

  if ((*(v5 + 80) & (a2 + a1)) != 0)
  {
    goto LABEL_11;
  }

  v9 = *(v5 + 16);

  return v9(a5);
}

Swift::Int __swiftcall Int.advanced(by:)(Swift::Int by)
{
  v2 = __OFADD__(v1, by);
  result = v1 + by;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMutableBufferPointer.assign(repeating:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return UnsafeMutablePointer.assign(repeating:count:)(result, a3, a2, a4);
  }

  return result;
}

uint64_t specialized UnsafeMutableBufferPointer.update<A>(fromContentsOf:)(uint64_t a1, unint64_t a2, char *a3, int64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (a4)
    {
      v6 = 0;
      if (!v8)
      {
        return v6;
      }

      v9 = 4 << ((a1 & 0x800000000000000) != 0);
      rawBits = 15;
      v11 = a4 & ~(a4 >> 63);
      while (1)
      {
        if ((rawBits & 0xC) == v9)
        {
          v12 = a3;
          v15._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          if (v8 <= v15._rawBits >> 16 || (v13 = String.UTF8View._foreignSubscript(position:)(v15), rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits, rawBits >> 16 >= v8))
          {
LABEL_29:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else
        {
          if (rawBits >> 16 >= v8)
          {
            goto LABEL_29;
          }

          v12 = a3;
          v13 = String.UTF8View._foreignSubscript(position:)(rawBits);
        }

        v14._rawBits = String.UTF8View._foreignIndex(after:)(rawBits)._rawBits;
        if (v11 == v6)
        {
          break;
        }

        rawBits = v14._rawBits;
        a3 = v12;
        v12[v6++] = v13;
        if (4 * v8 == v14._rawBits >> 14)
        {
          return v6;
        }
      }
    }

    else if (!v8)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = a3;
      v17 = a4;
      v18 = _StringObject.sharedUTF8.getter(a1, a2);
      a4 = v17;
      a3 = v16;
      v4 = v18;
    }

    return specialized closure #1 in UnsafeMutableBufferPointer.update<A>(fromContentsOf:)(v4, v5, a3, a4);
  }

  v6 = HIBYTE(a2) & 0xF;
  __src[0] = a1;
  __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (v6 > a4)
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, HIBYTE(a2) & 0xF, a3);
  return v6;
}

uint64_t _sSrsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_Sryqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSryxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__sAD_pqd_1_Isgyrzr_AEqd_1_sAD_psAD_pRsd_0_Ri_zRi_d__Ri_d_1_r_1_lIetMgyrzo_Tp5(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return a1(0, 0, &v13);
  }

  v6 = *(a6 - 8);
  if ((*(v6 + 80) & a3) != 0)
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(v6 + 72);
  v8 = *(*(a5 - 8) + 72);
  if (v7 != v8)
  {
    v9 = a4 * v8;
    if ((a4 * v8) >> 64 == (a4 * v8) >> 63)
    {
      if (v7)
      {
        if (v9 != 0x8000000000000000 || v7 != -1)
        {
          if (v8 >= v7)
          {
            if (v8 != 0x8000000000000000 || v7 != -1)
            {
              v11 = v8 % v7;
              goto LABEL_17;
            }
          }

          else if (v8)
          {
            v11 = v7 % v8;
LABEL_17:
            if (v11)
            {
              goto LABEL_25;
            }

            a4 = v9 / v7;
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_19:
  if (a4 < 0)
  {
    goto LABEL_25;
  }

  return a1(a3, a4, &v13);
}

void withVaList<A>(_:_:)(uint64_t a1, void (*a2)(char *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a1 + 32;
    do
    {
      outlined init with copy of MirrorPath(v7 + 40 * v3, v36);
      _ss9CodingKey_pWOb_0(v36, v33);
      v8 = v34;
      v9 = v35;
      __swift_project_boxed_opaque_existential_0Tm(v33, v34);
      v10 = (*(v9 + 8))(v8, v9);
      v11 = *(v10 + 16);
      v12 = v6 + v11;
      if (__OFADD__(v6, v11))
      {
        goto LABEL_43;
      }

      if (v5 >= v12)
      {
        if (!v4)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v5 + 0x4000000000000000 < 0)
        {
          goto LABEL_44;
        }

        if (2 * v5 <= v12)
        {
          v13 = v6 + v11;
        }

        else
        {
          v13 = 2 * v5;
        }

        if ((v13 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_45;
        }

        v14 = v10;
        v15 = swift_slowAlloc((8 * v13), 7uLL);
        v16 = v15;
        if (v4)
        {
          if (v6 < 0)
          {
            goto LABEL_46;
          }

          if (v15 != v4 || v15 >= &v4[8 * v6])
          {
            memmove(v15, v4, 8 * v6);
          }

          if ((v5 - 0x1000000000000000) >> 61 != 7)
          {
            __break(1u);
            goto LABEL_48;
          }

          v4;
        }

        v4 = v16;
        v5 = v13;
        v10 = v14;
      }

      if (v11)
      {
        v18 = v6 ^ 0x7FFFFFFFFFFFFFFFLL;
        if (v11 - 1 < (v6 ^ 0x7FFFFFFFFFFFFFFFuLL))
        {
          v18 = v11 - 1;
        }

        v19 = v18 + 1;
        if (v19 > 4 && (v20 = &v4[8 * v6], &v20[-v10 - 32] >= 0x20))
        {
          v23 = v19 & 3;
          if ((v19 & 3) == 0)
          {
            v23 = 4;
          }

          v21 = v19 - v23;
          v22 = v6 + v21;
          v24 = v20 + 16;
          v25 = (v10 + 48);
          v26 = v21;
          do
          {
            v27 = *v25;
            *(v24 - 1) = *(v25 - 1);
            *v24 = v27;
            v24 += 2;
            v25 += 2;
            v26 -= 4;
          }

          while (v26);
        }

        else
        {
          v21 = 0;
          v22 = v6;
        }

        v28 = v21 + v6 - 0x7FFFFFFFFFFFFFFFLL;
        v29 = v11 - v21;
        v30 = (v10 + 8 * v21 + 32);
        v6 = v22;
        while (1)
        {
          v31 = *v30++;
          *&v4[8 * v6] = v31;
          if (!v28)
          {
            break;
          }

          ++v6;
          ++v28;
          if (!--v29)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_3:
      ++v3;
      v10;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
    }

    while (v3 != v2);
    a2(v4);
    if (v4)
    {
      if ((v5 - 0x1000000000000000) >> 61 == 7)
      {
        v4;
        return;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    a2(static __VaListBuilder.alignedStorageForEmptyVaLists);
  }
}

void *__VaListBuilder.__allocating_init()()
{
  result = swift_allocObject(v0, 0x30, 7uLL);
  result[2] = 8;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void __VaListBuilder.append(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  __VaListBuilder.appendWords(_:)(v3);

  v3;
}

uint64_t _withVaList<A>(_:_:)(uint64_t a1, uint64_t (*a2)(void *))
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = &static __VaListBuilder.alignedStorageForEmptyVaLists;
  }

  return a2(v2);
}

Swift::CVaListPointer __swiftcall __VaListBuilder.va_list()()
{
  if (v0[5]._value._rawValue)
  {
    return v0[5]._value._rawValue;
  }

  else
  {
    return &static __VaListBuilder.alignedStorageForEmptyVaLists;
  }
}

Swift::CVaListPointer __swiftcall getVaList(_:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject(v2, 0x30, 7uLL);
  v3[2]._value._rawValue = 8;
  v3[3]._value._rawValue = 0;
  v4 = v3 + 3;
  v3[4]._value._rawValue = 0;
  v3[5]._value._rawValue = 0;
  v5 = v3;
  v6 = *(a1._rawValue + 2);
  if (v6)
  {
    v7 = 0;
    v30 = 0;
    v8 = 0;
    v9 = 0;
    v10 = a1._rawValue + 32;
    v27 = v10;
    v28 = v6;
    do
    {
      v11 = v6;
      outlined init with copy of MirrorPath(&v10[40 * v9], v34);
      _ss9CodingKey_pWOb_0(v34, v31);
      v12 = v32;
      v13 = v33;
      __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      v14 = (*(v13 + 8))(v12, v13);
      v15 = *(v14 + 16);
      v16 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_34;
      }

      v17 = v30;
      if (v30 >= v16)
      {
        v6 = v11;
      }

      else
      {
        if (v30 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        if (2 * v30 <= v16)
        {
          v18 = v8 + v15;
        }

        else
        {
          v18 = 2 * v30;
        }

        v5[4]._value._rawValue = v18;
        if ((v18 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v29 = v14;
        v19 = swift_slowAlloc((8 * v18), 7uLL);
        v20 = v19;
        v5[5]._value._rawValue = v19;
        if (v7)
        {
          if (v8 < 0)
          {
            goto LABEL_37;
          }

          if (v19 != v7 || v19 >= &v7[8 * v8])
          {
            memmove(v19, v7, 8 * v8);
          }

          if ((v30 - 0x1000000000000000) >> 61 != 7)
          {
            __break(1u);
LABEL_39:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v7;
        }

        v7 = v20;
        v17 = v18;
        v6 = v28;
        v14 = v29;
        v10 = v27;
      }

      if (!v7)
      {
        goto LABEL_39;
      }

      v30 = v17;
      if (!v15)
      {
        goto LABEL_3;
      }

      v22 = (v14 + 32);
      do
      {
        v23 = *v22++;
        *&v7[8 * v8] = v23;
        v24 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v4->_value._rawValue = v24;
        ++v8;
        --v15;
      }

      while (v15);
      v8 = v24;
LABEL_3:
      ++v9;
      v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }

    while (v9 != v6);
  }

  v25 = v5;
  if (v5[5]._value._rawValue)
  {
    return v5[5]._value._rawValue;
  }

  else
  {
    return static __VaListBuilder.alignedStorageForEmptyVaLists;
  }
}

__objc2_class **_encodeBitsAsWords<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  if (__OFADD__(v5, 8))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5 + 14;
  if ((v5 + 8) >= 1)
  {
    v6 = v5 + 7;
  }

  v7 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, v6 >> 3);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(v7 + 4, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  (*(v4 + 8))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return v7;
}

__objc2_class **Int._cVarArgEncoding.getter(__objc2_class *a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  result[4] = a1;
  return result;
}

__objc2_class **_ss5Int64Vs7CVarArgssACP05_cVarC8EncodingSaySiGvgTW_0()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  result[4] = v1;
  return result;
}

__objc2_class **Bool._cVarArgEncoding.getter(char a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  result[4] = 0;
  *(result + 8) = a1 & 1;
  return result;
}

__objc2_class **Int32._cVarArgEncoding.getter(int a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  result[4] = 0;
  *(result + 8) = a1;
  return result;
}

__objc2_class **_ss6UInt32Vs7CVarArgssACP05_cVarC8EncodingSaySiGvgTW_0()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  *(result + 8) = v1;
  return result;
}

__objc2_class **Int16._cVarArgEncoding.getter(__int16 a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  result[4] = 0;
  *(result + 8) = a1;
  return result;
}

__objc2_class **protocol witness for CVarArg._cVarArgEncoding.getter in conformance Int16()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  *(result + 8) = v1;
  return result;
}

__objc2_class **Int8._cVarArgEncoding.getter(char a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  result[4] = 0;
  *(result + 8) = a1;
  return result;
}

__objc2_class **protocol witness for CVarArg._cVarArgEncoding.getter in conformance Int8()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  *(result + 8) = v1;
  return result;
}

__objc2_class **UInt16._cVarArgEncoding.getter(unsigned __int16 a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  result[4] = 0;
  *(result + 8) = a1;
  return result;
}

__objc2_class **protocol witness for CVarArg._cVarArgEncoding.getter in conformance UInt16()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  *(result + 8) = v1;
  return result;
}

__objc2_class **UInt8._cVarArgEncoding.getter(unsigned __int8 a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  result[4] = 0;
  *(result + 8) = a1;
  return result;
}

__objc2_class **protocol witness for CVarArg._cVarArgEncoding.getter in conformance UInt8()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  *(result + 8) = v1;
  return result;
}

__objc2_class **UnsafePointer._cVarArgEncoding.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a1;
  v3 = a3(0);
  return _encodeBitsAsWords<A>(_:)(&v5, v3);
}

double Float._cVarArgEncoding.getter(float a1)
{
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[2] = 1;
  result = a1;
  *(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 + 4) = a1;
  return result;
}

__objc2_class **protocol witness for CVarArg._cVarArgEncoding.getter in conformance Float()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  *(result + 4) = v1;
  return result;
}

__objc2_class **Double._cVarArgEncoding.getter(double a1)
{
  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(1);
  result[2] = 1;
  *(result + 4) = a1;
  return result;
}

__objc2_class **protocol witness for CVarArg._cVarArgEncoding.getter in conformance Double()
{
  v1 = *v0;
  result = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, 1uLL);
  result[4] = v1;
  return result;
}

void *__VaListBuilder.init()()
{
  result = v0;
  v0[2] = 8;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  return result;
}

Swift::Void __swiftcall __VaListBuilder.appendWords(_:)(Swift::OpaquePointer a1)
{
  v2 = v1[3];
  v3 = *(a1._rawValue + 2);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v1[4];
  if (v6 < v4)
  {
    if (v6 + 0x4000000000000000 < 0)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v1[5];
    if (2 * v6 > v4)
    {
      v4 = 2 * v6;
    }

    v1[4] = v4;
    if ((v4 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_19;
    }

    v8 = swift_slowAlloc((8 * v4), 7uLL);
    v1[5] = v8;
    if (v7)
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, v2, v8);
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v7;
    }
  }

  v9 = v1[5];
  if (!v9)
  {
    goto LABEL_21;
  }

  if (v3)
  {
    v10 = (a1._rawValue + 32);
    v11 = v1[3];
    while (1)
    {
      v12 = *v10++;
      *(v9 + 8 * v11) = v12;
      v13 = v1[3];
      v14 = __OFADD__(v13, 1);
      v11 = v13 + 1;
      if (v14)
      {
        break;
      }

      v1[3] = v11;
      if (!--v3)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }
}

unint64_t __VaListBuilder.allocStorage(wordCount:)(unint64_t result)
{
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    return swift_slowAlloc((8 * result), 7uLL);
  }

  __break(1u);
  return result;
}

void __VaListBuilder.deallocStorage(wordCount:storage:)(uint64_t a1, void *a2)
{
  if ((a1 - 0x1000000000000000) >> 61 == 7)
  {
    a2;
  }

  else
  {
    __break(1u);
  }
}

Swift::tuple_Builtin_Word_Builtin_Word __swiftcall __VaListBuilder.rawSizeAndAlignment(_:)(Swift::Int a1)
{
  if ((a1 - 0x1000000000000000) >> 61 == 7)
  {
    a1 *= 8;
    v1 = 8;
  }

  else
  {
    __break(1u);
  }

  result._1 = v1;
  result._0 = a1;
  return result;
}

void *__VaListBuilder.deinit()
{
  result = *(v0 + 40);
  if (!result)
  {
    return v0;
  }

  if ((*(v0 + 32) - 0x1000000000000000) >> 61 == 7)
  {
    result;
    return v0;
  }

  __break(1u);
  return result;
}

void __VaListBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    if ((*(v0 + 32) - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
      return;
    }

    v1;
  }

  swift_deallocClassInstance(v0);
}

uint64_t Zip2Sequence.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for Zip2Sequence(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t LazyMapSequence.Iterator._base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a1 + 32), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t LazyMapSequence.Iterator._base.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 32), *(a2 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t Zip2Sequence.Iterator._baseStream2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  swift_getAssociatedTypeWitness(0, *(a1 + 40), *(a1 + 24), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Zip2Sequence.Iterator._baseStream2.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  swift_getAssociatedTypeWitness(0, *(a2 + 40), *(a2 + 24), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Zip2Sequence.Iterator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int **a5@<X4>, int **a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v14 = type metadata accessor for Zip2Sequence.Iterator(0, v19);
  *(a7 + *(v14 + 56)) = 0;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = *(v14 + 52);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  return (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
}

uint64_t Zip2Sequence.underestimatedCount.getter(void *a1)
{
  v2 = (*(a1[4] + 40))(a1[2]);
  result = (*(a1[5] + 40))(a1[3]);
  if (result >= v2)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IndexingIterator<A>(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

void *_stdlib_AtomicInt.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject(v1, 0x18, 7uLL);
  result[2] = a1;
  return result;
}

Swift::Int __swiftcall _stdlib_AtomicInt.addAndFetch(_:)(Swift::Int a1)
{
  add = atomic_fetch_add((v1 + 16), a1);
  v3 = __OFADD__(add, a1);
  result = add + a1;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall _stdlib_AtomicInt.compareExchange(expected:desired:)(Swift::Int *expected, Swift::Int desired)
{
  v3 = *expected;
  v4 = *expected;
  atomic_compare_exchange_strong((v2 + 16), &v4, desired);
  *expected = v4;
  return v4 == v3;
}

uint64_t Float16.init<A>(_:)(uint64_t *a1, ValueMetadata *a2)
{
  v2 = Substring.init<A>(_:)(a1, a2);
  v4 = v3;
  v13 = 0;
  v7 = Substring.description.getter(v2, v5, v6, v3);
  v9 = v8;
  v4;
  v10 = specialized String.withCString<A>(_:)(v7, v9, &v13, _swift_stdlib_strtof16_clocale, _swift_stdlib_strtof16_clocale);
  v9;
  if (v10)
  {
    v11 = v13;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 0xFFFEFFFF | (((v10 & 1) == 0) << 16);
}

uint64_t Float16.init(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v11 = 0;
  v5 = Substring.description.getter(a1, a2, a3, a4);
  v7 = v6;
  a4;
  v8 = specialized String.withCString<A>(_:)(v5, v7, &v11, _swift_stdlib_strtof16_clocale, _swift_stdlib_strtof16_clocale);
  v7;
  if (v8)
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 0xFFFEFFFF | (((v8 & 1) == 0) << 16);
}

__int16 Float16.init(_builtinFloatLiteral:)@<H0>(double _D0@<D0>)
{
  __asm { FCVT            H0, D0 }

  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Float16(uint64_t a1@<X8>)
{
  v2 = Substring.init(unicodeScalarLiteral:)();
  v4 = v3;
  v12 = 0;
  v7 = Substring.description.getter(v2, v5, v6, v3);
  v9 = v8;
  v4;
  v10 = specialized String.withCString<A>(_:)(v7, v9, &v12, _swift_stdlib_strtof16_clocale, _swift_stdlib_strtof16_clocale);
  v9;
  v11 = v12;
  if ((v10 & 1) == 0)
  {
    v11 = 0;
  }

  *a1 = v11;
  *(a1 + 2) = (v10 & 1) == 0;
}

unint64_t _sSfySfSgxcSyRzlufCSS_Tt0gq5(unint64_t a1, unint64_t a2)
{
  v12 = 0;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    v6 = specialized _StringGuts._slowWithCString<A>(_:)(a1, a2, &v12, _swift_stdlib_strtof_clocale);
  }

  else
  {
    v3 = MEMORY[0x1EEE9AC00](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__s = v3;
      v11 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtof_clocale(__s, &v12)) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(v3, a2);
      }

      v6 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v4, v5, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
    }
  }

  a2;
  v8 = v12;
  __s[0] = (v6 & 1) == 0;
  if ((v6 & 1) == 0)
  {
    v8 = 0;
  }

  return v8 | (((v6 & 1) == 0) << 32);
}

unint64_t Float.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v10 + 1) = 0;
  v9[2] = &v10 + 1;
  (*(a3 + 200))(&v10, partial apply for closure #1 in closure #1 in Float.init<A>(_:), v9, &type metadata for Bool, a2, a3);
  v5 = v10;
  v6 = *(&v10 + 1);
  (*(*(a2 - 8) + 8))(a1, a2);
  BYTE1(v10) = v5 ^ 1;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v5 ^ 1u) << 32);
}

unint64_t Float.init(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v11 = 0;
  v5 = Substring.description.getter(a1, a2, a3, a4);
  v7 = v6;
  a4;
  v8 = specialized String.withCString<A>(_:)(v5, v7, &v11, _swift_stdlib_strtof_clocale, _swift_stdlib_strtof_clocale);
  v7;
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v9 = 0;
  }

  return v9 | (((v8 & 1) == 0) << 32);
}

unint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance Float@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _sSfySfSgxcSyRzlufCSS_Tt0gq5(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0gq5(unint64_t a1, unint64_t a2)
{
  v11 = 0;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    v6 = specialized _StringGuts._slowWithCString<A>(_:)(a1, a2, &v11, _swift_stdlib_strtod_clocale);
  }

  else
  {
    v3 = MEMORY[0x1EEE9AC00](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__s = v3;
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtod_clocale(__s, &v11)) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(v3, a2);
      }

      v6 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v4, v5, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    }
  }

  a2;
  if (v6)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t Double.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v7[2] = &v9;
  (*(a3 + 200))(&v8, partial apply for closure #1 in closure #1 in Double.init<A>(_:), v7, &type metadata for Bool, a2, a3);
  if (v8)
  {
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t Double.init(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v9 = 0;
  v5 = Substring.description.getter(a1, a2, a3, a4);
  v7 = v6;
  v4;
  LOBYTE(v4) = specialized String.withCString<A>(_:)(v5, v7, &v9, _swift_stdlib_strtod_clocale, _swift_stdlib_strtod_clocale);
  v7;
  if (v4)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance Double@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _sSdySdSgxcSyRzlufCSS_Tt0gq5(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unint64_t Float16.description.getter(__n128 a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((~a1.n128_u32[0] & 0x7C00) == 0 && (a1.n128_u16[0] & 0x3FF) != 0)
  {
    return 7233902;
  }

  _float16ToString(_:debug:)(v14, a1);
  __src[0] = v14[0];
  __src[1] = v14[1];
  v2 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v15)
  {
    return 0;
  }

  if (v15 <= 0xF)
  {
    v7 = v15 - 8;
    v8 = 8;
    if (v15 < 8)
    {
      v8 = v15;
    }

    v9 = v8 - 1;
    if (v15 < v8 - 1)
    {
      v9 = v15;
    }

    if (v8 == v9)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = LOBYTE(__src[0]);
    if (v15 != 1)
    {
      result = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
      if (v15 != 2)
      {
        result |= BYTE2(__src[0]) << 16;
        if (v15 != 3)
        {
          result |= BYTE3(__src[0]) << 24;
          if (v15 != 4)
          {
            result |= BYTE4(__src[0]) << 32;
            if (v15 != 5)
            {
              result |= BYTE5(__src[0]) << 40;
              if (v15 != 6)
              {
                result |= BYTE6(__src[0]) << 48;
                if (v15 != 7)
                {
                  result |= BYTE7(__src[0]) << 56;
                }
              }
            }
          }
        }
      }
    }

    if (v15 >= 9)
    {
      v10 = 0;
      v11 = 0;
      v12 = __src + 8;
      do
      {
        v13 = *v12++;
        v10 |= v13 << v11;
        v11 += 8;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v3 = v15 | 0xF000000000000000;
    v4 = _allocateStringStorage(codeUnitCapacity:)(v15);
    *(v4 + 16) = v5;
    *(v4 + 24) = v3;
    if (v5 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v3 = *(v4 + 24);
    }

    *(v4 + 32 + (v3 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, v2, (v4 + 32));
    return *(v4 + 24);
  }

  return result;
}

unint64_t Float16.debugDescription.getter(__n128 a1)
{
  v16 = *MEMORY[0x1E69E9840];
  _float16ToString(_:debug:)(v13, a1);
  __src[0] = v13[0];
  __src[1] = v13[1];
  v1 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v14)
  {
    return 0;
  }

  if (v14 <= 0xF)
  {
    v6 = v14 - 8;
    v7 = 8;
    if (v14 < 8)
    {
      v7 = v14;
    }

    v8 = v7 - 1;
    if (v14 < v7 - 1)
    {
      v8 = v14;
    }

    if (v7 == v8)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = LOBYTE(__src[0]);
    if (v14 != 1)
    {
      result = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
      if (v14 != 2)
      {
        result |= BYTE2(__src[0]) << 16;
        if (v14 != 3)
        {
          result |= BYTE3(__src[0]) << 24;
          if (v14 != 4)
          {
            result |= BYTE4(__src[0]) << 32;
            if (v14 != 5)
            {
              result |= BYTE5(__src[0]) << 40;
              if (v14 != 6)
              {
                result |= BYTE6(__src[0]) << 48;
                if (v14 != 7)
                {
                  result |= BYTE7(__src[0]) << 56;
                }
              }
            }
          }
        }
      }
    }

    if (v14 >= 9)
    {
      v9 = 0;
      v10 = 0;
      v11 = __src + 8;
      do
      {
        v12 = *v11++;
        v9 |= v12 << v10;
        v10 += 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v2 = v14 | 0xF000000000000000;
    v3 = _allocateStringStorage(codeUnitCapacity:)(v14);
    *(v3 + 16) = v4;
    *(v3 + 24) = v2;
    if (v4 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v2 = *(v3 + 24);
    }

    *(v3 + 32 + (v2 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, v1, (v3 + 32));
    return *(v3 + 24);
  }

  return result;
}

uint64_t Float16.write<A>(to:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  _float16ToString(_:debug:)(v6, a1);
  v8[0] = v6[0];
  v8[1] = v6[1];
  if (v7 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(a4 + 32))(v8);
}

uint64_t static UInt16.- infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  result = a1 - a2;
  if ((result & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  return result;
}

float Float16.init(nan:signaling:)(int a1, char a2)
{
  if (a1 >= 0x100u)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  LODWORD(result) = (0x200u >> (a2 & 1)) | a1 | 0x7C00;
  return result;
}

__int16 Float16.ulp.getter@<H0>(float a1@<S0>)
{
  v1 = (LODWORD(a1) >> 10) & 0x1F;
  if (!v1)
  {
    return 1;
  }

  if (v1 == 31)
  {
    return 32256;
  }

  *&result = COERCE_SHORT_FLOAT(LOWORD(a1) & 0x7C00) * COERCE_SHORT_FLOAT(5120);
  return result;
}

uint64_t Float16.exponent.getter(float a1)
{
  v1 = (LODWORD(a1) >> 10) & 0x1F;
  if (v1 == 31)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = LOWORD(a1) & 0x3FF;
  if (!(v1 | v3))
  {
    return 0x8000000000000000;
  }

  if (v1)
  {
    return v1 - 15;
  }

  if ((LOWORD(a1) & 0x3FF) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return -9 - __clz(v3 << 16);
}

BOOL Float16.isZero.getter()
{
  __asm { FCMP            H0, #0 }

  return _ZF != 0;
}

float Float16.significand.getter(float result)
{
  v1 = (LODWORD(result) >> 10) & 0x1F;
  v2 = LOWORD(result) & 0x3FF;
  if ((LOWORD(result) & 0x3FF) == 0 || v1 != 31)
  {
    if (v1)
    {
      if (v1 != 31)
      {
        v4 = v2 | 0x3C00;
        return *&v4;
      }
    }

    else if ((LOWORD(result) & 0x3FF) != 0)
    {
      LODWORD(result) = (LODWORD(result) << ((__clz(v2 << 16) + 11) & 0xF)) & 0x3FF | 0x3C00;
      return result;
    }

    v4 = v1 << 10;
    return *&v4;
  }

  return result;
}

__int16 static Float16.*= infix(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 * *a2.n128_u16;
  *a1 = *&result;
  return result;
}

__n128 Float16.nextUp.getter(__n128 a1)
{
  v1 = *a1.n128_u16;
  result.n128_u16[1] = 0;
  *result.n128_u16 = *a1.n128_u16 + COERCE_SHORT_FLOAT(0);
  if (v1 != COERCE_SHORT_FLOAT(31744))
  {
    result.n128_u32[0] += (result.n128_i16[0] >> 15) | 1;
  }

  return result;
}

__int16 Float16.init(_builtinIntegerLiteral:)@<H0>(uint64_t *a1@<X0>, unint64_t a2@<X1>)
{
  _S0 = swift_intToFloat32(a1, a2);
  __asm { FCVT            H0, S0 }

  return result;
}

double Float16.init(signOf:magnitudeOf:)(int8x16_t a1, int8x16_t a2)
{
  v2.i64[0] = 0x8000800080008000;
  v2.i64[1] = 0x8000800080008000;
  *&result = vbslq_s8(v2, a2, a1).u64[0];
  return result;
}

Swift::Void __swiftcall Float16.round(_:)(Swift::FloatingPointRoundingRule a1)
{
  v2 = *a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3u:
        v3 = *v1;
        break;
      case 4u:
        *v1 = truncl(*v1);
        return;
      case 5u:
        v3 = *v1;
        if ((*v1 & 0x8000) == 0)
        {
          goto LABEL_10;
        }

        break;
      default:
LABEL_14:
        Float16._roundSlowPath(_:)(a1);
        return;
    }

    *v1 = floorl(v3);
    return;
  }

  if (!*a1)
  {
    *v1 = roundl(*v1);
    return;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = *v1;
LABEL_10:
      *v1 = ceill(v3);
      return;
    }

    goto LABEL_14;
  }

  *v1 = rintl(*v1);
}

Swift::Void __swiftcall Float16._roundSlowPath(_:)(Swift::FloatingPointRoundingRule a1)
{
  v4 = *a1;
  if (v4 > 2u)
  {
    switch(v4)
    {
      case 3u:
        v2 = *v1;
        break;
      case 4u:
        v3 = truncl(*v1);
        goto LABEL_17;
      case 5u:
        v2 = *v1;
        if ((*v1 & 0x8000) == 0)
        {
          goto LABEL_10;
        }

        break;
      default:
        goto LABEL_14;
    }

    v3 = floorl(v2);
    goto LABEL_17;
  }

  if (!v4)
  {
    v3 = roundl(*v1);
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    v3 = rintl(*v1);
    goto LABEL_17;
  }

  if (v4 != 2)
  {
LABEL_14:
    Float16._roundSlowPath(_:)(&v4);
    return;
  }

  v2 = *v1;
LABEL_10:
  v3 = ceill(v2);
LABEL_17:
  *v1 = v3;
}

__int16 static Float16.+= infix(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 + *a2.n128_u16;
  *a1 = *&result;
  return result;
}

__int16 static Float16.-= infix(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 - *a2.n128_u16;
  *a1 = *&result;
  return result;
}

__int16 static Float16./= infix(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 / *a2.n128_u16;
  *a1 = *&result;
  return result;
}

__int16 Float16.formRemainder(dividingBy:)@<H0>(__n128 _Q0@<Q0>)
{
  _H1 = *v1;
  __asm
  {
    FCVT            S2, H1
    FCVT            S1, H0; float
  }

  _S0 = remainderf(_S2, _S1);
  __asm { FCVT            H0, S0 }

  *v1 = result;
  return result;
}

__int16 Float16.formTruncatingRemainder(dividingBy:)@<H0>(__n128 _Q0@<Q0>)
{
  _H2 = *v1;
  __asm
  {
    FCVT            S1, H0; float
    FCVT            S0, H2; float
  }

  _S0 = fmodf(_S0, _S1);
  __asm { FCVT            H0, S0 }

  *v1 = result;
  return result;
}

Swift::Void __swiftcall Float16.formSquareRoot()()
{
  _H0 = *v0;
  __asm { FCVT            S0, H0 }

  _S0 = sqrtf(_S0);
  __asm { FCVT            H0, S0 }

  *v0 = LOWORD(_S0);
}

__int16 Float16.addProduct(_:_:)@<H0>(__n128 a1@<Q0>, __n128 a2@<Q1>)
{
  *&result = *v2 + (*a1.n128_u16 * *a2.n128_u16);
  *v2 = *&result;
  return result;
}

__int16 Float16.binade.getter@<H0>(float a1@<S0>)
{
  v1 = (LODWORD(a1) >> 10) & 0x1F;
  if (v1 == 31)
  {
    return 32256;
  }

  if ((LOWORD(a1) & 0x3FF) == 0 || v1 != 0)
  {
    return LOWORD(a1) & 0xFC00;
  }

  *&result = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT16(*&a1 * COERCE_SHORT_FLOAT(25600)) & 0xFC00) * COERCE_SHORT_FLOAT(5120);
  return result;
}

uint64_t Float16.significandWidth.getter(float a1)
{
  v1 = __clz(__rbit32(LOWORD(a1) & 0x3FF | 0x10000));
  v2 = (LODWORD(a1) >> 10) & 0x1F;
  if (v2)
  {
    v3 = v2 == 31;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if ((LOWORD(a1) & 0x3FF) != 0 && v2 == 0)
    {
      return 16 - (__clz(LOWORD(a1) & 0x3FF) + v1 - 15);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v6 = 10 - v1;
    if ((LOWORD(a1) & 0x3FF) != 0)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

__int16 protocol witness for BinaryFloatingPoint.init(_:) in conformance Float16@<H0>(_WORD *a1@<X8>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *a1 = result;
  return result;
}

__int16 _ss7Float16Vs33_ExpressibleByBuiltinFloatLiteralssACP08_builtineF0xBf64__tcfCTW_0@<H0>(_WORD *a1@<X8>, double _D0@<D0>)
{
  __asm { FCVT            H0, D0 }

  *a1 = result;
  return result;
}

uint64_t protocol witness for BinaryFloatingPoint.init<A>(exactly:) in conformance Float16@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized BinaryFloatingPoint.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 2) = BYTE2(result) & 1;
  return result;
}

double protocol witness for FloatingPoint.init(signOf:magnitudeOf:) in conformance Float16@<D0>(unsigned __int16 *a1@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  a4.i16[0] = *a1;
  a5.i16[0] = *a2;
  v5.i64[0] = 0x8000800080008000;
  v5.i64[1] = 0x8000800080008000;
  a4.i64[0] = vbslq_s8(v5, a5, a4).u64[0];
  *a3 = a4.i16[0];
  return *a4.i64;
}

short float protocol witness for FloatingPoint.init(_:) in conformance Float16@<H0>(uint64_t a1@<X0>, short float *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for FloatingPoint.init<A>(_:) in conformance Float16@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (**a3)(void, void)@<X2>, short float *a4@<X8>)
{
  if ((a3)[16](a2, a3) < 65)
  {
    v10 = (a3)[8](a2, a3);
    v11 = (a3)[15](a2, a3);
    result = (*(*(a2 - 1) + 8))(a1, a2);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v12, a1, a2, a3);
    result = (*(*(a2 - 1) + 8))(a1, a2);
    v9 = v12;
  }

  *a4 = v9;
  return result;
}

__int16 Float16.init<A>(_:)@<H0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (**a3)(void, void)@<X2>)
{
  if ((a3)[16](a2, a3) <= 64)
  {
    v7 = (a3)[8](a2, a3);
    v8 = (a3)[15](a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    if (v7)
    {
      *&result = v8;
    }

    else
    {
      *&result = v8;
    }
  }

  else
  {
    specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v9, a1, a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    return v9;
  }

  return result;
}

uint64_t _ss7Float16VSjsSj7exactlyxSgqd___tcSzRd__lufCTW_0@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (**a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  result = Float16.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t Float16.init<A>(exactly:)(uint64_t a1, const char *a2, uint64_t (**a3)(void, void))
{
  if ((a3)[16](a2, a3) > 64)
  {
    v7 = specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v16, a1, a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    if (v7)
    {
      LOWORD(v3) = v16;
LABEL_12:
      v14 = 0;
      v13 = v3;
      return v13 | (v14 << 16);
    }

    goto LABEL_9;
  }

  v8 = (a3)[8](a2, a3);
  v9 = (a3)[15](a2, a3);
  v10 = v9;
  if (v8)
  {
    *&v3 = v9;
    v11 = COERCE_UNSIGNED_INT16(v9) & 0x7FFF;
    (*(*(a2 - 1) + 8))(a1, a2);
    if (v11 <= 31743 && v10 == *&v3)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = 0;
    v14 = 1;
    return v13 | (v14 << 16);
  }

  *&v3 = v9;
  (*(*(a2 - 1) + 8))(a1, a2);
  v13 = 0;
  v14 = 1;
  if (*&v3 != COERCE_SHORT_FLOAT(31744) && v10 == *&v3)
  {
    goto LABEL_12;
  }

  return v13 | (v14 << 16);
}

__int16 protocol witness for static FloatingPoint.pi.getter in conformance Float16@<H0>(_WORD *a1@<X8>)
{
  result = 16968;
  *a1 = 16968;
  return result;
}

__int16 protocol witness for static FloatingPoint.ulpOfOne.getter in conformance Float16@<H0>(_WORD *a1@<X8>)
{
  result = 5120;
  *a1 = 5120;
  return result;
}

__int16 protocol witness for static FloatingPoint.leastNormalMagnitude.getter in conformance Float16@<H0>(_WORD *a1@<X8>)
{
  result = 1024;
  *a1 = 1024;
  return result;
}

__int16 protocol witness for static FloatingPoint.leastNonzeroMagnitude.getter in conformance Float16@<H0>(_WORD *a1@<X8>)
{
  result = 1;
  *a1 = 1;
  return result;
}

uint64_t protocol witness for FloatingPoint.exponent.getter in conformance Float16@<X0>(uint64_t *a1@<X8>, float a2@<S0>)
{
  LOWORD(a2) = *v2;
  result = Float16.exponent.getter(a2);
  *a1 = result;
  return result;
}

void protocol witness for FloatingPoint.significand.getter in conformance Float16(_WORD *a1@<X8>, float a2@<S0>)
{
  LOWORD(a2) = *v2;
  v4 = Float16.significand.getter(a2);
  *a1 = LOWORD(v4);
}

short float protocol witness for static FloatingPoint./ infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>, short float *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

__int16 protocol witness for static FloatingPoint./= infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>)
{
  *&result = *a1 / *a2;
  *a1 = *&result;
  return result;
}

__int16 protocol witness for FloatingPoint.remainder(dividingBy:) in conformance Float16@<H0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  _H1 = *a1;
  _H0 = *v2;
  __asm
  {
    FCVT            S0, H0; float
    FCVT            S1, H1; float
  }

  _S0 = _stdlib_remainderf(_S0, _S1);
  __asm { FCVT            H0, S0 }

  *a2 = result;
  return result;
}

__int16 protocol witness for FloatingPoint.formRemainder(dividingBy:) in conformance Float16@<H0>(__int16 *a1@<X0>)
{
  _H1 = *a1;
  _H0 = *v1;
  __asm
  {
    FCVT            S0, H0; float
    FCVT            S1, H1; float
  }

  _S0 = _stdlib_remainderf(_S0, _S1);
  __asm { FCVT            H0, S0 }

  *v1 = result;
  return result;
}

__int16 protocol witness for FloatingPoint.truncatingRemainder(dividingBy:) in conformance Float16@<H0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  _H1 = *a1;
  _H0 = *v2;
  __asm
  {
    FCVT            S0, H0; float
    FCVT            S1, H1; float
  }

  _S0 = fmodf(_S0, _S1);
  __asm { FCVT            H0, S0 }

  *a2 = result;
  return result;
}

__int16 protocol witness for FloatingPoint.formTruncatingRemainder(dividingBy:) in conformance Float16@<H0>(__int16 *a1@<X0>)
{
  _H1 = *a1;
  _H0 = *v1;
  __asm
  {
    FCVT            S0, H0; float
    FCVT            S1, H1; float
  }

  _S0 = fmodf(_S0, _S1);
  __asm { FCVT            H0, S0 }

  *v1 = result;
  return result;
}

__int16 protocol witness for FloatingPoint.squareRoot() in conformance Float16@<H0>(_WORD *a1@<X8>)
{
  _H0 = *v1;
  __asm { FCVT            S0, H0 }

  _S0 = _stdlib_squareRootf(_S0);
  __asm { FCVT            H0, S0 }

  *a1 = result;
  return result;
}

__int16 protocol witness for FloatingPoint.formSquareRoot() in conformance Float16@<H0>()
{
  _H0 = *v0;
  __asm { FCVT            S0, H0 }

  _S0 = _stdlib_squareRootf(_S0);
  __asm { FCVT            H0, S0 }

  *v0 = result;
  return result;
}

short float protocol witness for FloatingPoint.addingProduct(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>, short float *a3@<X8>)
{
  result = *v3 + (*a1 * *a2);
  *a3 = result;
  return result;
}

__int16 protocol witness for FloatingPoint.addProduct(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>)
{
  *&result = *v2 + (*a1 * *a2);
  *v2 = *&result;
  return result;
}

short float *protocol witness for static FloatingPoint.minimum(_:_:) in conformance Float16@<X0>(short float *result@<X0>, _WORD *a2@<X1>, short float *a3@<X8>, float a4@<S1>)
{
  v4 = *result;
  LOWORD(a4) = *a2;
  if (*result <= *a2)
  {
    goto LABEL_7;
  }

  if ((~LODWORD(a4) & 0x7C00) != 0)
  {
    v4 = *a2;
LABEL_7:
    *a3 = v4;
    return result;
  }

  if ((LOWORD(a4) & 0x3FF) == 0)
  {
    v4 = *a2;
  }

  *a3 = v4;
  return result;
}

short float *protocol witness for static FloatingPoint.maximum(_:_:) in conformance Float16@<X0>(short float *result@<X0>, _WORD *a2@<X1>, short float *a3@<X8>, float a4@<S1>)
{
  v4 = *result;
  LOWORD(a4) = *a2;
  if (*a2 < *result)
  {
    goto LABEL_7;
  }

  if ((~LODWORD(a4) & 0x7C00) != 0)
  {
    v4 = *a2;
LABEL_7:
    *a3 = v4;
    return result;
  }

  if ((LOWORD(a4) & 0x3FF) == 0)
  {
    v4 = *a2;
  }

  *a3 = v4;
  return result;
}

short float *protocol witness for static FloatingPoint.minimumMagnitude(_:_:) in conformance Float16@<X0>(short float *result@<X0>, short float *a2@<X1>, short float *a3@<X8>, float a4@<S1>)
{
  v4 = *result;
  *&a4 = *a2;
  if (fabsl(*result) <= fabsl(*a2))
  {
    goto LABEL_7;
  }

  if ((~LODWORD(a4) & 0x7C00) != 0)
  {
    v4 = *a2;
LABEL_7:
    *a3 = v4;
    return result;
  }

  if ((LOWORD(a4) & 0x3FF) == 0)
  {
    v4 = *a2;
  }

  *a3 = v4;
  return result;
}

short float *protocol witness for static FloatingPoint.maximumMagnitude(_:_:) in conformance Float16@<X0>(short float *result@<X0>, short float *a2@<X1>, short float *a3@<X8>, float a4@<S1>)
{
  v4 = *result;
  *&a4 = *a2;
  if (fabsl(*a2) < fabsl(*result))
  {
    goto LABEL_7;
  }

  if ((~LODWORD(a4) & 0x7C00) != 0)
  {
    v4 = *a2;
LABEL_7:
    *a3 = v4;
    return result;
  }

  if ((LOWORD(a4) & 0x3FF) == 0)
  {
    v4 = *a2;
  }

  *a3 = v4;
  return result;
}

void protocol witness for FloatingPoint.rounded(_:) in conformance Float16(_BYTE *a1@<X0>, short float *a2@<X8>)
{
  LOWORD(v3) = *v2;
  v8 = *v2;
  v4 = *a1;
  if (v4 <= 2)
  {
    if (!*a1)
    {
      v5 = roundl(*&v3);
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      v5 = rintl(*&v3);
      goto LABEL_18;
    }

    if (v4 == 2)
    {
      v5 = ceill(*&v3);
      goto LABEL_18;
    }

LABEL_13:
    v7 = a2;
    Float16._roundSlowPath(_:)(a1);
    a2 = v7;
    v5 = v8;
    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v5 = floorl(*&v3);
    goto LABEL_18;
  }

  if (v4 == 4)
  {
    v5 = truncl(*&v3);
    goto LABEL_18;
  }

  if (v4 != 5)
  {
    goto LABEL_13;
  }

  v6 = a2;
  if (Float16.sign.getter(v3))
  {
    v5 = floorl(*&v3);
  }

  else
  {
    v5 = ceill(*&v3);
  }

  a2 = v6;
LABEL_18:
  *a2 = v5;
}

void protocol witness for FloatingPoint.round(_:) in conformance Float16(_BYTE *a1)
{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3u:
        v4 = floorl(*v1);
        goto LABEL_19;
      case 4u:
        v4 = truncl(*v1);
        goto LABEL_19;
      case 5u:
        *&v2 = *v1;
        if (Float16.sign.getter(v2))
        {
          v4 = floorl(*&v2);
        }

        else
        {
          v4 = ceill(*&v2);
        }

        goto LABEL_19;
    }
  }

  else
  {
    if (!*a1)
    {
      v4 = roundl(*v1);
      goto LABEL_19;
    }

    if (v3 == 1)
    {
      v4 = rintl(*v1);
      goto LABEL_19;
    }

    if (v3 == 2)
    {
      v4 = ceill(*v1);
LABEL_19:
      *v1 = v4;
      return;
    }
  }

  Float16._roundSlowPath(_:)(a1);
}

void protocol witness for FloatingPoint.nextUp.getter in conformance Float16(short float *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 + COERCE_SHORT_FLOAT(0);
  v5 = specialized Float16.init(sign:exponentBitPattern:significandBitPattern:)(0, 31, 0);
  if (v3 < *&v5)
  {
    LOWORD(v4) += (SLOWORD(v4) >> 15) | 1;
  }

  *a1 = v4;
}

short float protocol witness for FloatingPoint.nextDown.getter in conformance Float16@<H0>(short float *a1@<X8>)
{
  v3 = COERCE_SHORT_FLOAT(0) - *v1;
  v4 = specialized Float16.init(sign:exponentBitPattern:significandBitPattern:)(0, 31, 0);
  if (v3 < *&v4)
  {
    LOWORD(v3) += (SLOWORD(v3) >> 15) | 1;
  }

  result = -v3;
  *a1 = -v3;
  return result;
}

uint64_t protocol witness for FloatingPoint.isTotallyOrdered(belowOrEqualTo:) in conformance Float16(_WORD *a1, float a2, float a3)
{
  LOWORD(a2) = *a1;
  LOWORD(a3) = *v3;
  return specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(a2, a3);
}

BOOL protocol witness for FloatingPoint.isSignalingNaN.getter in conformance Float16()
{
  v1 = *v0;
  v2 = ~v1 & 0x7C00;
  v3 = v1 & 0x3FF;
  v4 = (v1 & 0x200) == 0;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  return !v5 && v4;
}

__int16 protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance Float16@<H0>(__int16 *a1@<X0>, __int16 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

short float protocol witness for static SignedNumeric.- prefix(_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X8>)
{
  result = -*a1;
  *a2 = result;
  return result;
}

__int16 protocol witness for SignedNumeric.negate() in conformance Float16@<H0>()
{
  *&result = -*v0;
  *v0 = *&result;
  return result;
}

short float protocol witness for Numeric.magnitude.getter in conformance Float16@<H0>(short float *a1@<X8>)
{
  result = fabsl(*v1);
  *a1 = result;
  return result;
}

short float protocol witness for static Numeric.* infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>, short float *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

__int16 protocol witness for static Numeric.*= infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>)
{
  *&result = *a2 * *a1;
  *a1 = *&result;
  return result;
}

double protocol witness for static AdditiveArithmetic.zero.getter in conformance Float16@<D0>(_WORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0;
  return result;
}

short float protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>, short float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

__int16 protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>)
{
  *&result = *a2 + *a1;
  *a1 = *&result;
  return result;
}

short float protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>, short float *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

__int16 protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X1>)
{
  *&result = *a1 - *a2;
  *a1 = *&result;
  return result;
}

__int16 protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance Float16@<H0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  _S0 = swift_intToFloat32(a1, a2);
  __asm { FCVT            H0, S0 }

  *a3 = result;
  return result;
}

short float protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance Float16@<H0>(uint64_t *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void Float16.hash(into:)()
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    _H0 = COERCE_SHORT_FLOAT(0);
  }

  Hasher._combine(_:)(LOWORD(_H0));
}

Swift::Int __swiftcall Float16._rawHashValue(seed:)(Swift::Int seed)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    *&_S0 = COERCE_SHORT_FLOAT(0);
  }

  return specialized static Hasher._hash(seed:bytes:count:)(seed, _S0, 2);
}

uint64_t Float16.hashValue.getter(float _S0)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    *&_S0 = COERCE_SHORT_FLOAT(0);
  }

  return specialized static Hasher._hash(seed:bytes:count:)(0, LODWORD(_S0), 2);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Float16(float _S0)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    *&_S0 = COERCE_SHORT_FLOAT(0);
  }

  return specialized static Hasher._hash(seed:bytes:count:)(0, LODWORD(_S0), 2);
}

void protocol witness for Hashable.hash(into:) in conformance Float16()
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    _H0 = COERCE_SHORT_FLOAT(0);
  }

  Hasher._combine(_:)(LOWORD(_H0));
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Float16(uint64_t a1, float _S0)
{
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    *&_S0 = COERCE_SHORT_FLOAT(0);
  }

  return specialized static Hasher._hash(seed:bytes:count:)(a1, LODWORD(_S0), 2);
}

uint64_t Int.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

unint64_t UInt.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

uint64_t Float16.init(exactly:)(float _S0, float _S1)
{
  __asm
  {
    FCVT            H1, S0
    FCVT            S2, H1
  }

  v7 = _S1;
  if (_S2 != _S0)
  {
    v7 = 0.0;
  }

  return LODWORD(v7) | ((_S2 != _S0) << 16);
}

uint64_t Float16.init(exactly:)(double _D0, float _S1)
{
  __asm
  {
    FCVT            H1, D0
    FCVT            D2, H1
  }

  v7 = _S1;
  if (_D2 != _D0)
  {
    v7 = 0.0;
  }

  return LODWORD(v7) | ((_D2 != _D0) << 16);
}

double Double.init(_:)(__n128 _Q0)
{
  __asm { FCVT            D0, H0 }

  return result;
}

short float protocol witness for Strideable.distance(to:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

short float protocol witness for Strideable.advanced(by:) in conformance Float16@<H0>(short float *a1@<X0>, short float *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

short float *protocol witness for static Strideable._step(after:from:by:) in conformance Float16(short float *result, uint64_t a2, char a3, short float *a4, short float *a5, short float *a6)
{
  v6 = a2;
  v7 = *a6;
  if (a3)
  {
    v8 = v7 + *a4;
LABEL_5:
    *result = v8;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = *a5 + (v6 * v7);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t Float.description.getter(float a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((~LODWORD(a1) & 0x7F800000) == 0 && (LODWORD(a1) & 0x7FFFFF) != 0)
  {
    return 7233902;
  }

  _float32ToString(_:debug:)(0, v13);
  __src[0] = v13[0];
  __src[1] = v13[1];
  v2 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v14)
  {
    return 0;
  }

  if (v14 <= 0xF)
  {
    v6 = v14 - 8;
    v7 = 8;
    if (v14 < 8)
    {
      v7 = v14;
    }

    v8 = v7 - 1;
    if (v14 < v7 - 1)
    {
      v8 = v14;
    }

    if (v7 == v8)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = LOBYTE(__src[0]);
    if (v14 != 1)
    {
      result = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
      if (v14 != 2)
      {
        result |= BYTE2(__src[0]) << 16;
        if (v14 != 3)
        {
          result |= BYTE3(__src[0]) << 24;
          if (v14 != 4)
          {
            result |= BYTE4(__src[0]) << 32;
            if (v14 != 5)
            {
              result |= BYTE5(__src[0]) << 40;
              if (v14 != 6)
              {
                result |= BYTE6(__src[0]) << 48;
                if (v14 != 7)
                {
                  result |= BYTE7(__src[0]) << 56;
                }
              }
            }
          }
        }
      }
    }

    if (v14 >= 9)
    {
      v9 = 0;
      v10 = 0;
      v11 = __src + 8;
      do
      {
        v12 = *v11++;
        v9 |= v12 << v10;
        v10 += 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v3 = v14 | 0xF000000000000000;
    v4 = _allocateStringStorage(codeUnitCapacity:)(v14);
    *(v4 + 16) = v5;
    *(v4 + 24) = v3;
    if (v5 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v3 = *(v4 + 24);
    }

    *(v4 + 32 + (v3 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, v2, (v4 + 32));
    return *(v4 + 24);
  }

  return result;
}

unint64_t Float.debugDescription.getter()
{
  v15 = *MEMORY[0x1E69E9840];
  _float32ToString(_:debug:)(1, v12);
  __src[0] = v12[0];
  __src[1] = v12[1];
  v0 = v13;
  if ((v13 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v13)
  {
    return 0;
  }

  if (v13 <= 0xF)
  {
    v5 = v13 - 8;
    v6 = 8;
    if (v13 < 8)
    {
      v6 = v13;
    }

    v7 = v6 - 1;
    if (v13 < v6 - 1)
    {
      v7 = v13;
    }

    if (v6 == v7)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = LOBYTE(__src[0]);
    if (v13 != 1)
    {
      result = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
      if (v13 != 2)
      {
        result |= BYTE2(__src[0]) << 16;
        if (v13 != 3)
        {
          result |= BYTE3(__src[0]) << 24;
          if (v13 != 4)
          {
            result |= BYTE4(__src[0]) << 32;
            if (v13 != 5)
            {
              result |= BYTE5(__src[0]) << 40;
              if (v13 != 6)
              {
                result |= BYTE6(__src[0]) << 48;
                if (v13 != 7)
                {
                  result |= BYTE7(__src[0]) << 56;
                }
              }
            }
          }
        }
      }
    }

    if (v13 >= 9)
    {
      v8 = 0;
      v9 = 0;
      v10 = __src + 8;
      do
      {
        v11 = *v10++;
        v8 |= v11 << v9;
        v9 += 8;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v1 = v13 | 0xF000000000000000;
    v2 = _allocateStringStorage(codeUnitCapacity:)(v13);
    *(v2 + 16) = v3;
    *(v2 + 24) = v1;
    if (v3 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v1 = *(v2 + 24);
    }

    *(v2 + 32 + (v1 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, v0, (v2 + 32));
    return *(v2 + 24);
  }

  return result;
}

void specialized Float.write<A>(to:)()
{
  v14 = *MEMORY[0x1E69E9840];
  _float32ToString(_:debug:)(1, &v9);
  v12 = v9;
  v13 = v10;
  if (v11 < 0)
  {
    v8 = 0;
    v7 = 1410;
    v6 = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _StringGuts.append(_:)(v11 | 0xD000000000000000, (&v6 - 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000, *&v9, *&v10, v0, v1, v2, v3, v4, v5);
}

uint64_t Float.write<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  _float32ToString(_:debug:)(1, v5);
  v7[0] = v5[0];
  v7[1] = v5[1];
  if (v6 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(a3 + 32))(v7);
}

Swift::Float __swiftcall Float.init(nan:signaling:)(Swift::UInt32 nan, Swift::Bool signaling)
{
  if (nan >= 0x200000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  LODWORD(result) = (0x400000u >> signaling) | nan | 0x7F800000;
  return result;
}

float Float.ulp.getter(float a1)
{
  v2 = (LODWORD(a1) >> 23);
  if ((LODWORD(a1) >> 23))
  {
    result = NAN;
    if (v2 != 255)
    {
      return COERCE_FLOAT(LODWORD(a1) & 0x7F800000) * 0.00000011921;
    }
  }

  else
  {
    LODWORD(result) = 1;
  }

  return result;
}

uint64_t Float.exponent.getter(float a1)
{
  v1 = (LODWORD(a1) >> 23);
  if (v1 == 255)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = LODWORD(a1) & 0x7FFFFF;
  if (!(v1 | LODWORD(a1) & 0x7FFFFF))
  {
    return 0x8000000000000000;
  }

  if ((LODWORD(a1) >> 23))
  {
    return v1 - 127;
  }

  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return -118 - __clz(v3);
}

float Float.significand.getter(float result)
{
  v1 = (LODWORD(result) >> 23);
  v2 = LODWORD(result) & 0x7FFFFF;
  if ((LODWORD(result) & 0x7FFFFF) == 0 || v1 != 255)
  {
    if ((LODWORD(result) >> 23))
    {
      if (v1 != 255)
      {
        LODWORD(result) = v2 | 0x3F800000;
        return result;
      }
    }

    else if (v2)
    {
      LODWORD(result) = (LODWORD(result) << (__clz(v2) + 24)) & 0x7FFFFF | 0x3F800000;
      return result;
    }

    LODWORD(result) = v1 << 23;
  }

  return result;
}

float static Float.*= infix(_:_:)(float *a1, float a2)
{
  result = *a1 * a2;
  *a1 = result;
  return result;
}

float Float.nextUp.getter(float a1)
{
  result = a1 + 0.0;
  if (a1 != INFINITY)
  {
    LODWORD(result) += (SLODWORD(result) >> 31) | 1;
  }

  return result;
}

Swift::Float __swiftcall Float.init(signOf:magnitudeOf:)(Swift::Float signOf, Swift::Float magnitudeOf)
{
  v2.i64[0] = 0x8000000080000000;
  v2.i64[1] = 0x8000000080000000;
  LODWORD(result) = vbslq_s8(v2, *&magnitudeOf, *&signOf).u32[0];
  return result;
}

Swift::Void __swiftcall Float.round(_:)(Swift::FloatingPointRoundingRule a1)
{
  v2 = *a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3u:
        v3 = *v1;
        break;
      case 4u:
        *v1 = truncf(*v1);
        return;
      case 5u:
        v3 = *v1;
        if ((*v1 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        break;
      default:
LABEL_14:
        Float._roundSlowPath(_:)(a1);
        return;
    }

    *v1 = floorf(v3);
    return;
  }

  if (!*a1)
  {
    *v1 = roundf(*v1);
    return;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = *v1;
LABEL_10:
      *v1 = ceilf(v3);
      return;
    }

    goto LABEL_14;
  }

  *v1 = rintf(*v1);
}

Swift::Void __swiftcall Float._roundSlowPath(_:)(Swift::FloatingPointRoundingRule a1)
{
  v4 = *a1;
  if (v4 > 2u)
  {
    switch(v4)
    {
      case 3u:
        v2 = *v1;
        break;
      case 4u:
        v3 = truncf(*v1);
        goto LABEL_17;
      case 5u:
        v2 = *v1;
        if ((*v1 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        break;
      default:
        goto LABEL_14;
    }

    v3 = floorf(v2);
    goto LABEL_17;
  }

  if (!v4)
  {
    v3 = roundf(*v1);
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    v3 = rintf(*v1);
    goto LABEL_17;
  }

  if (v4 != 2)
  {
LABEL_14:
    Float._roundSlowPath(_:)(&v4);
    return;
  }

  v2 = *v1;
LABEL_10:
  v3 = ceilf(v2);
LABEL_17:
  *v1 = v3;
}

float static Float.+= infix(_:_:)(float *a1, float a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

float static Float.-= infix(_:_:)(float *a1, float a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

float static Float./= infix(_:_:)(float *a1, float a2)
{
  result = *a1 / a2;
  *a1 = result;
  return result;
}

float Float.binade.getter(float a1)
{
  if ((LODWORD(a1) >> 23) == 255)
  {
    return NAN;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0 && !(LODWORD(a1) >> 23))
  {
    return COERCE_FLOAT(COERCE_UNSIGNED_INT(a1 * 8388600.0) & 0xFF800000) * 0.00000011921;
  }

  LODWORD(result) = LODWORD(a1) & 0xFF800000;
  return result;
}

uint64_t Float.significandWidth.getter(float a1)
{
  v1 = LODWORD(a1) & 0x7FFFFF;
  v2 = __clz(__rbit32(LODWORD(a1) & 0x7FFFFF));
  if ((LODWORD(a1) >> 23) && (LODWORD(a1) >> 23) != 255)
  {
    v5 = 23 - v2;
    if (v1)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = -1;
    if ((LODWORD(a1) & 0x7F800000) == 0)
    {
      v4 = 32 - (__clz(v1) + v2 + 1);
      if (v1)
      {
        return v4;
      }
    }
  }

  return result;
}

float _sSfs33_ExpressibleByBuiltinFloatLiteralssAAP08_builtindE0xBf64__tcfCTW_0@<S0>(float *a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  return result;
}

unint64_t protocol witness for BinaryFloatingPoint.init<A>(exactly:) in conformance Float@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized BinaryFloatingPoint.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

double protocol witness for FloatingPoint.init(signOf:magnitudeOf:) in conformance Float@<D0>(unsigned __int32 *a1@<X0>, unsigned __int32 *a2@<X1>, _DWORD *a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  a4.i32[0] = *a1;
  a5.i32[0] = *a2;
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  a4.i64[0] = vbslq_s8(v5, a5, a4).u64[0];
  *a3 = a4.i32[0];
  return *a4.i64;
}

float protocol witness for FloatingPoint.init(_:) in conformance Float@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for FloatingPoint.init<A>(_:) in conformance Float@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (**a3)(void, void)@<X2>, float *a4@<X8>)
{
  if ((a3)[16](a2, a3) < 65)
  {
    v10 = (a3)[8](a2, a3);
    v11 = (a3)[15](a2, a3);
    result = (*(*(a2 - 1) + 8))(a1, a2);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v12, a1, a2, a3);
    result = (*(*(a2 - 1) + 8))(a1, a2);
    v9 = v12;
  }

  *a4 = v9;
  return result;
}

float Float.init<A>(_:)(uint64_t a1, const char *a2, uint64_t (**a3)(void, void))
{
  if ((a3)[16](a2, a3) <= 64)
  {
    v7 = (a3)[8](a2, a3);
    v8 = (a3)[15](a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    if (v7)
    {
      return v8;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v9, a1, a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    return v9;
  }
}

unint64_t _sSfSjsSj7exactlyxSgqd___tcSzRd__lufCTW_0@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (**a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  result = Float.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t Float.init<A>(exactly:)(uint64_t a1, const char *a2, uint64_t (**a3)(void, void))
{
  if ((a3)[16](a2, a3) <= 64)
  {
    v8 = (a3)[8](a2, a3);
    v9 = (a3)[15](a2, a3);
    v10 = v9;
    if (v8)
    {
      v7 = v9;
      if (v9 >= 9.2234e18)
      {
        (*(*(a2 - 1) + 8))(a1, a2);
      }

      else
      {
        if (v7 <= -9.2234e18)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        (*(*(a2 - 1) + 8))(a1, a2);
        if (v10 == v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v7 = v9;
      (*(*(a2 - 1) + 8))(a1, a2);
      if (v7 < 1.8447e19 && v10 == v7)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v13 = 0;
    v12 = 1;
    goto LABEL_17;
  }

  v6 = specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v15, a1, a2, a3);
  (*(*(a2 - 1) + 8))(a1, a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = v15;
LABEL_14:
  v12 = 0;
  v13 = LODWORD(v7);
LABEL_17:
  v16 = v12;
  return v13 | (v12 << 32);
}

float protocol witness for FloatingPoint.ulp.getter in conformance Float@<S0>(float *a1@<X8>)
{
  if ((*v1 >> 23))
  {
    if ((*v1 >> 23) != 255)
    {
      result = COERCE_FLOAT(*v1 & 0x7F800000) * 0.00000011921;
      *a1 = result;
      return result;
    }

    v3 = NAN;
  }

  else
  {
    LODWORD(v3) = 1;
  }

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t protocol witness for FloatingPoint.exponent.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = Float.exponent.getter(*v1);
  *a1 = result;
  return result;
}

float protocol witness for static FloatingPoint./ infix(_:_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

float protocol witness for static FloatingPoint./= infix(_:_:) in conformance Float(float *a1, float *a2)
{
  result = *a1 / *a2;
  *a1 = result;
  return result;
}

float protocol witness for FloatingPoint.addingProduct(_:_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *v3 + (*a1 * *a2);
  *a3 = result;
  return result;
}

float protocol witness for FloatingPoint.addProduct(_:_:) in conformance Float(float *a1, float *a2)
{
  result = *v2 + (*a1 * *a2);
  *v2 = result;
  return result;
}

float *protocol witness for static FloatingPoint.minimum(_:_:) in conformance Float@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  if (*result > *a2)
  {
    if ((*a2 & 0x7FFFFF) == 0)
    {
      v3 = *a2;
    }

    if ((~*a2 & 0x7F800000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.maximum(_:_:) in conformance Float@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  if (*a2 >= *result)
  {
    if ((*a2 & 0x7FFFFF) == 0)
    {
      v3 = *a2;
    }

    if ((~*a2 & 0x7F800000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.minimumMagnitude(_:_:) in conformance Float@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  if (fabsf(*result) > fabsf(*a2))
  {
    if ((*a2 & 0x7FFFFF) == 0)
    {
      v3 = *a2;
    }

    if ((~*a2 & 0x7F800000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.maximumMagnitude(_:_:) in conformance Float@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  if (fabsf(*a2) >= fabsf(*result))
  {
    if ((*a2 & 0x7FFFFF) == 0)
    {
      v3 = *a2;
    }

    if ((~*a2 & 0x7F800000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

void protocol witness for FloatingPoint.rounded(_:) in conformance Float(_BYTE *a1@<X0>, float *a2@<X8>)
{
  v3 = *v2;
  v10 = *v2;
  v4 = *a1;
  if (v4 <= 2)
  {
    if (!*a1)
    {
      v5 = roundf(v3);
      goto LABEL_17;
    }

    if (v4 == 1)
    {
      v5 = rintf(v3);
      goto LABEL_17;
    }

    if (v4 == 2)
    {
      v5 = ceilf(v3);
      goto LABEL_17;
    }

LABEL_14:
    v9 = a2;
    Float._roundSlowPath(_:)(a1);
    a2 = v9;
    v5 = v10;
    goto LABEL_17;
  }

  if (v4 == 3)
  {
    v5 = floorf(v3);
    goto LABEL_17;
  }

  if (v4 == 4)
  {
    v5 = truncf(v3);
    goto LABEL_17;
  }

  if (v4 != 5)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = Float.sign.getter(v3);
  a2 = v6;
  v5 = floorf(v3);
  v8 = ceilf(v3);
  if ((v7 & 1) == 0)
  {
    v5 = v8;
  }

LABEL_17:
  *a2 = v5;
}

void protocol witness for FloatingPoint.round(_:) in conformance Float(_BYTE *a1)
{
  v2 = *a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3u:
        v3 = floorf(*v1);
        goto LABEL_19;
      case 4u:
        v3 = truncf(*v1);
        goto LABEL_19;
      case 5u:
        v4 = *v1;
        if (Float.sign.getter(*v1))
        {
          v3 = floorf(v4);
        }

        else
        {
          v3 = ceilf(v4);
        }

        goto LABEL_19;
    }
  }

  else
  {
    if (!*a1)
    {
      v3 = roundf(*v1);
      goto LABEL_19;
    }

    if (v2 == 1)
    {
      v3 = rintf(*v1);
      goto LABEL_19;
    }

    if (v2 == 2)
    {
      v3 = ceilf(*v1);
LABEL_19:
      *v1 = v3;
      return;
    }
  }

  Float._roundSlowPath(_:)(a1);
}

void protocol witness for FloatingPoint.nextUp.getter in conformance Float(float *a1@<X8>)
{
  v2 = *v1 + 0.0;
  if (*v1 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  *a1 = v2;
}

float protocol witness for FloatingPoint.nextDown.getter in conformance Float@<S0>(float *a1@<X8>)
{
  v2 = 0.0 - *v1;
  if (v2 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  result = -v2;
  *a1 = result;
  return result;
}

float protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance Float@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float protocol witness for static SignedNumeric.- prefix(_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = -*a1;
  *a2 = result;
  return result;
}

float protocol witness for SignedNumeric.negate() in conformance Float()
{
  result = -*v0;
  *v0 = result;
  return result;
}

float protocol witness for Numeric.magnitude.getter in conformance Float@<S0>(float *a1@<X8>)
{
  result = fabsf(*v1);
  *a1 = result;
  return result;
}

float protocol witness for static Numeric.* infix(_:_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

float protocol witness for static Numeric.*= infix(_:_:) in conformance Float(float *a1, float *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Float(float *a1, float *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Float(float *a1, float *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

float protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance Float@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void Float.hash(into:)(float a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(a1));
}

Swift::Int __swiftcall Float._rawHashValue(seed:)(Swift::Int seed)
{
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return specialized static Hasher._hash(seed:bytes:count:)(seed, LODWORD(v1), 4);
}

uint64_t Float.hashValue.getter(float a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return specialized static Hasher._hash(seed:bytes:count:)(0, LODWORD(a1), 4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Float()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return specialized static Hasher._hash(seed:bytes:count:)(0, LODWORD(v1), 4);
}

void protocol witness for Hashable.hash(into:) in conformance Float()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Float(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return specialized static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

void Float._toCustomAnyHashable()(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 24) = &type metadata for _FloatAnyHashableBox;
  *(a1 + 32) = &protocol witness table for _FloatAnyHashableBox;
  *a1 = a2;
}

float protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Float@<S0>(uint64_t a1@<X8>)
{
  result = *v1;
  *(a1 + 24) = &type metadata for _FloatAnyHashableBox;
  *(a1 + 32) = &protocol witness table for _FloatAnyHashableBox;
  *a1 = result;
  return result;
}

Swift::UInt __swiftcall UInt.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 1.8447e19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t Float.init(exactly:)(__n128 _Q0)
{
  __asm { FCVT            S1, H0 }

  return _S1;
}

float protocol witness for Strideable.distance(to:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

float protocol witness for Strideable.advanced(by:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

float *protocol witness for static Strideable._step(after:from:by:) in conformance Float(float *result, uint64_t a2, char a3, float *a4, float *a5, float *a6)
{
  v6 = a2;
  v7 = *a6;
  if (a3)
  {
    v8 = v7 + *a4;
LABEL_5:
    *result = v8;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = *a5 + (v6 * v7);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void _FloatAnyHashableBox._canonicalBox.getter(uint64_t a1@<X8>, float a2@<S0>)
{
  v3 = truncf(a2);
  if (a2 >= 0.0)
  {
    if (a2 <= -1.0 || a2 >= 1.8447e19 || v3 != a2)
    {
      goto LABEL_18;
    }

    v6 = a2;
    v7 = &_ss22_IntegerAnyHashableBoxVys6UInt64VGMd;
    v8 = &_ss22_IntegerAnyHashableBoxVys6UInt64VGMR;
  }

  else
  {
    if (a2 <= -9.2234e18 || a2 >= 9.2234e18 || v3 != a2)
    {
LABEL_18:
      *(a1 + 24) = &type metadata for _DoubleAnyHashableBox;
      *(a1 + 32) = &protocol witness table for _DoubleAnyHashableBox;
      *a1 = a2;
      return;
    }

    v6 = a2;
    v7 = &_ss22_IntegerAnyHashableBoxVys5Int64VGMd;
    v8 = &_ss22_IntegerAnyHashableBoxVys5Int64VGMR;
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v6;
}

Swift::Double_optional __swiftcall Double.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly;
  result.is_nil = LOBYTE(v1);
  *&result.value = exactly;
  return result;
}

uint64_t _FloatAnyHashableBox._unbox<A>()@<X0>(Class *a1@<X0>, swift *a2@<X8>, float a3@<S0>)
{
  *&v7 = a3;
  v5 = swift_dynamicCast(a2, &v7, &type metadata for Float, a1, 6uLL);
  return (*(*(a1 - 1) + 7))(a2, v5 ^ 1u, 1, a1);
}

uint64_t _FloatAnyHashableBox._downCastConditional<A>(into:)(swift *a1, Class *a2, uint64_t a3, uint64_t a4, float a5)
{
  v8 = type metadata accessor for Optional(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11];
  v13 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v21 = a5;
  v16 = swift_dynamicCast(v12, &v21, &type metadata for Float, a2, 6uLL);
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a2);
    v18 = *(v13 + 32);
    v18(v15, v12, a2);
    v18(a1, v15, a2);
  }

  else
  {
    v17(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
  }

  return v16;
}

uint64_t protocol witness for _AnyHashableBox._isEqual(to:) in conformance _FloatAnyHashableBox(uint64_t a1, Class *a2)
{
  v4 = *v2;
  outlined init with copy of MirrorPath(a1, v8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  if (swift_dynamicCast(&v7, v8, v5, a2, 6uLL))
  {
    return v4 == v7;
  }

  else
  {
    return 2;
  }
}

Swift::Int protocol witness for _AnyHashableBox._hashValue.getter in conformance _FloatAnyHashableBox()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v4);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
  return Hasher.finalize()();
}

Swift::Int protocol witness for _AnyHashableBox._rawHashValue(_seed:) in conformance _FloatAnyHashableBox(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(LODWORD(v3));
  return Hasher.finalize()();
}

float protocol witness for _AnyHashableBox._base.getter in conformance _FloatAnyHashableBox@<S0>(uint64_t a1@<X8>)
{
  result = *v1;
  *(a1 + 24) = &type metadata for Float;
  *a1 = result;
  return result;
}

unint64_t Double.debugDescription.getter()
{
  v15 = *MEMORY[0x1E69E9840];
  _float64ToString(_:debug:)(1, v12);
  __src[0] = v12[0];
  __src[1] = v12[1];
  v0 = v13;
  if ((v13 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v13)
  {
    return 0;
  }

  if (v13 <= 0xF)
  {
    v5 = v13 - 8;
    v6 = 8;
    if (v13 < 8)
    {
      v6 = v13;
    }

    v7 = v6 - 1;
    if (v13 < v6 - 1)
    {
      v7 = v13;
    }

    if (v6 == v7)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = LOBYTE(__src[0]);
    if (v13 != 1)
    {
      result = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
      if (v13 != 2)
      {
        result |= BYTE2(__src[0]) << 16;
        if (v13 != 3)
        {
          result |= BYTE3(__src[0]) << 24;
          if (v13 != 4)
          {
            result |= BYTE4(__src[0]) << 32;
            if (v13 != 5)
            {
              result |= BYTE5(__src[0]) << 40;
              if (v13 != 6)
              {
                result |= BYTE6(__src[0]) << 48;
                if (v13 != 7)
                {
                  result |= BYTE7(__src[0]) << 56;
                }
              }
            }
          }
        }
      }
    }

    if (v13 >= 9)
    {
      v8 = 0;
      v9 = 0;
      v10 = __src + 8;
      do
      {
        v11 = *v10++;
        v8 |= v11 << v9;
        v9 += 8;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v1 = v13 | 0xF000000000000000;
    v2 = _allocateStringStorage(codeUnitCapacity:)(v13);
    *(v2 + 16) = v3;
    *(v2 + 24) = v1;
    if (v3 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v1 = *(v2 + 24);
    }

    *(v2 + 32 + (v1 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, v0, (v2 + 32));
    return *(v2 + 24);
  }

  return result;
}

void specialized Double.write<A>(to:)()
{
  v14 = *MEMORY[0x1E69E9840];
  _float64ToString(_:debug:)(1, &v9);
  v12 = v9;
  v13 = v10;
  if (v11 < 0)
  {
    v8 = 0;
    v7 = 1410;
    v6 = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _StringGuts.append(_:)(v11 | 0xD000000000000000, (&v6 - 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000, *&v9, *&v10, v0, v1, v2, v3, v4, v5);
}

uint64_t Double.write<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  _float64ToString(_:debug:)(1, v5);
  v7[0] = v5[0];
  v7[1] = v5[1];
  if (v6 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(a3 + 32))(v7);
}

Swift::Double __swiftcall Double.init(nan:signaling:)(Swift::UInt64 nan, Swift::Bool signaling)
{
  if (nan >> 50)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *&result = (0x8000000000000uLL >> signaling) | nan | 0x7FF0000000000000;
  return result;
}

double Double.ulp.getter(double a1)
{
  v2 = (*&a1 >> 52) & 0x7FFLL;
  if (v2)
  {
    result = NAN;
    if (v2 != 2047)
    {
      return COERCE_DOUBLE(*&a1 & 0x7FF0000000000000) * 2.22044605e-16;
    }
  }

  else
  {
    *&result = 1;
  }

  return result;
}

unint64_t Double.exponent.getter(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (v1 == 2047)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = *&a1 & 0xFFFFFFFFFFFFFLL;
  if (!(v1 | *&a1 & 0xFFFFFFFFFFFFFLL))
  {
    return 0x8000000000000000;
  }

  if (v1)
  {
    return v1 - 1023;
  }

  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return -1011 - __clz(v3);
}

double Double.significand.getter(double result)
{
  v1 = (*&result >> 52) & 0x7FFLL;
  v2 = *&result & 0xFFFFFFFFFFFFFLL;
  if ((*&result & 0xFFFFFFFFFFFFFLL) == 0 || v1 != 2047)
  {
    if (v1)
    {
      if (v1 != 2047)
      {
        *&result = v2 | 0x3FF0000000000000;
        return result;
      }
    }

    else if (v2)
    {
      *&result = (*&result << (__clz(v2) + 53)) & 0xFFFFFFFFFFFFFLL | 0x3FF0000000000000;
      return result;
    }

    *&result = v1 << 52;
  }

  return result;
}

double static Double.*= infix(_:_:)(double *a1, double a2)
{
  result = *a1 * a2;
  *a1 = result;
  return result;
}

double Double.nextUp.getter(double a1)
{
  result = a1 + 0.0;
  if (a1 != INFINITY)
  {
    *&result += (*&result >> 63) | 1;
  }

  return result;
}

Swift::Double __swiftcall Double.init(signOf:magnitudeOf:)(Swift::Double signOf, Swift::Double magnitudeOf)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *&result = vbslq_s8(vnegq_f64(v2), *&magnitudeOf, *&signOf).u64[0];
  return result;
}

Swift::Void __swiftcall Double.round(_:)(Swift::FloatingPointRoundingRule a1)
{
  v2 = *a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3u:
        v3 = *v1;
        break;
      case 4u:
        *v1 = trunc(*v1);
        return;
      case 5u:
        v3 = *v1;
        if ((*v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

        break;
      default:
LABEL_14:
        Double._roundSlowPath(_:)(a1);
        return;
    }

    *v1 = floor(v3);
    return;
  }

  if (!*a1)
  {
    *v1 = round(*v1);
    return;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = *v1;
LABEL_10:
      *v1 = ceil(v3);
      return;
    }

    goto LABEL_14;
  }

  *v1 = rint(*v1);
}

Swift::Void __swiftcall Double._roundSlowPath(_:)(Swift::FloatingPointRoundingRule a1)
{
  v4 = *a1;
  if (v4 > 2u)
  {
    switch(v4)
    {
      case 3u:
        v2 = *v1;
        break;
      case 4u:
        v3 = trunc(*v1);
        goto LABEL_17;
      case 5u:
        v2 = *v1;
        if ((*v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

        break;
      default:
        goto LABEL_14;
    }

    v3 = floor(v2);
    goto LABEL_17;
  }

  if (!v4)
  {
    v3 = round(*v1);
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    v3 = rint(*v1);
    goto LABEL_17;
  }

  if (v4 != 2)
  {
LABEL_14:
    Double._roundSlowPath(_:)(&v4);
    return;
  }

  v2 = *v1;
LABEL_10:
  v3 = ceil(v2);
LABEL_17:
  *v1 = v3;
}

double static Double.+= infix(_:_:)(double *a1, double a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

double static Double.-= infix(_:_:)(double *a1, double a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

double static Double./= infix(_:_:)(double *a1, double a2)
{
  result = *a1 / a2;
  *a1 = result;
  return result;
}

double Double.binade.getter(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (v1 == 2047)
  {
    return NAN;
  }

  if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0 && !v1)
  {
    return COERCE_DOUBLE(COERCE_UNSIGNED_INT64(a1 * 4.50359963e15) & 0xFFF0000000000000) * 2.22044605e-16;
  }

  *&result = *&a1 & 0xFFF0000000000000;
  return result;
}

uint64_t Double.significandWidth.getter(double a1)
{
  v1 = *&a1 & 0xFFFFFFFFFFFFFLL;
  v2 = __clz(__rbit64(*&a1 & 0xFFFFFFFFFFFFFLL));
  v3 = (*&a1 >> 52) & 0x7FFLL;
  if (v3 && v3 != 2047)
  {
    v6 = 52 - v2;
    if (v1)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = 63 - (__clz(v1) + v2);
    if (v3)
    {
      v4 = -1;
    }

    if (v1)
    {
      return v4;
    }

    else
    {
      return -1;
    }
  }
}

double protocol witness for BinaryFloatingPoint.init(_:) in conformance Double@<D0>(double *a1@<X8>, float a2@<S0>)
{
  result = a2;
  *a1 = result;
  return result;
}

unint64_t protocol witness for BinaryFloatingPoint.init<A>(exactly:) in conformance Double@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized BinaryFloatingPoint.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

double protocol witness for FloatingPoint.init(signOf:magnitudeOf:) in conformance Double@<D0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  a4.i64[0] = *a1;
  a5.i64[0] = *a2;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v5), a5, a4).u64[0];
  *a3 = a4.i64[0];
  return *a4.i64;
}

double protocol witness for FloatingPoint.init(_:) in conformance Double@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for FloatingPoint.init<A>(_:) in conformance Double@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (**a3)(void, void)@<X2>, double *a4@<X8>)
{
  if ((a3)[16](a2, a3) < 65)
  {
    v10 = (a3)[8](a2, a3);
    v11 = (a3)[15](a2, a3);
    result = (*(*(a2 - 1) + 8))(a1, a2);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v12, a1, a2, a3);
    result = (*(*(a2 - 1) + 8))(a1, a2);
    v9 = v12;
  }

  *a4 = v9;
  return result;
}

uint64_t _sSdSjsSj7exactlyxSgqd___tcSzRd__lufCTW_0@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (**a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  result = Double.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t Double.init<A>(exactly:)(uint64_t a1, const char *a2, uint64_t (**a3)(void, void))
{
  if ((a3)[16](a2, a3) <= 64)
  {
    v8 = (a3)[8](a2, a3);
    v9 = (a3)[15](a2, a3);
    v10 = v9;
    if (v8)
    {
      v7 = v9;
      if (v9 >= 9.22337204e18)
      {
        (*(*(a2 - 1) + 8))(a1, a2);
      }

      else
      {
        if (v7 <= -9.22337204e18)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        (*(*(a2 - 1) + 8))(a1, a2);
        if (v10 == v7)
        {
          return *&v7;
        }
      }
    }

    else
    {
      v7 = v9;
      (*(*(a2 - 1) + 8))(a1, a2);
      if (v7 < 1.84467441e19 && v10 == v7)
      {
        return *&v7;
      }
    }
  }

  else
  {
    v6 = specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v13, a1, a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    if (v6)
    {
      v7 = v13;
      return *&v7;
    }
  }

  return 0;
}

double protocol witness for FloatingPoint.ulp.getter in conformance Double@<D0>(double *a1@<X8>)
{
  v2 = (*v1 >> 52) & 0x7FFLL;
  if (v2)
  {
    if (v2 != 2047)
    {
      result = COERCE_DOUBLE(*v1 & 0x7FF0000000000000) * 2.22044605e-16;
      *a1 = result;
      return result;
    }

    v4 = NAN;
  }

  else
  {
    *&v4 = 1;
  }

  result = v4;
  *a1 = v4;
  return result;
}

unint64_t protocol witness for FloatingPoint.exponent.getter in conformance Double@<X0>(unint64_t *a1@<X8>)
{
  result = Double.exponent.getter(*v1);
  *a1 = result;
  return result;
}

double protocol witness for static FloatingPoint./ infix(_:_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

double protocol witness for static FloatingPoint./= infix(_:_:) in conformance Double(double *a1, double *a2)
{
  result = *a1 / *a2;
  *a1 = result;
  return result;
}

double protocol witness for FloatingPoint.addingProduct(_:_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *v3 + *a1 * *a2;
  *a3 = result;
  return result;
}

double protocol witness for FloatingPoint.addProduct(_:_:) in conformance Double(double *a1, double *a2)
{
  result = *v2 + *a1 * *a2;
  *v2 = result;
  return result;
}

double *protocol witness for static FloatingPoint.minimum(_:_:) in conformance Double@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (*result > *a2)
  {
    if ((*&v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v3 = *a2;
    }

    if ((~*&v4 & 0x7FF0000000000000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

double *protocol witness for static FloatingPoint.maximum(_:_:) in conformance Double@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (*a2 >= *result)
  {
    if ((*&v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v3 = *a2;
    }

    if ((~*&v4 & 0x7FF0000000000000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

double *protocol witness for static FloatingPoint.minimumMagnitude(_:_:) in conformance Double@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (fabs(*result) > fabs(*a2))
  {
    if ((*&v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v3 = *a2;
    }

    if ((~*&v4 & 0x7FF0000000000000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

double *protocol witness for static FloatingPoint.maximumMagnitude(_:_:) in conformance Double@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (fabs(*a2) >= fabs(*result))
  {
    if ((*&v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v3 = *a2;
    }

    if ((~*&v4 & 0x7FF0000000000000) != 0)
    {
      v3 = *a2;
    }
  }

  *a3 = v3;
  return result;
}

void protocol witness for FloatingPoint.rounded(_:) in conformance Double(_BYTE *a1@<X0>, double *a2@<X8>)
{
  v3 = *v2;
  v10 = *v2;
  v4 = *a1;
  if (v4 <= 2)
  {
    if (!*a1)
    {
      v5 = round(v3);
      goto LABEL_17;
    }

    if (v4 == 1)
    {
      v5 = rint(v3);
      goto LABEL_17;
    }

    if (v4 == 2)
    {
      v5 = ceil(v3);
      goto LABEL_17;
    }

LABEL_14:
    v9 = a2;
    Double._roundSlowPath(_:)(a1);
    a2 = v9;
    v5 = v10;
    goto LABEL_17;
  }

  if (v4 == 3)
  {
    v5 = floor(v3);
    goto LABEL_17;
  }

  if (v4 == 4)
  {
    v5 = trunc(v3);
    goto LABEL_17;
  }

  if (v4 != 5)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = Double.sign.getter(v3);
  a2 = v6;
  v5 = floor(v3);
  v8 = ceil(v3);
  if ((v7 & 1) == 0)
  {
    v5 = v8;
  }

LABEL_17:
  *a2 = v5;
}

void protocol witness for FloatingPoint.round(_:) in conformance Double(_BYTE *a1)
{
  v2 = *a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3u:
        v3 = floor(*v1);
        goto LABEL_19;
      case 4u:
        v3 = trunc(*v1);
        goto LABEL_19;
      case 5u:
        v4 = *v1;
        if (Double.sign.getter(*v1))
        {
          v3 = floor(v4);
        }

        else
        {
          v3 = ceil(v4);
        }

        goto LABEL_19;
    }
  }

  else
  {
    if (!*a1)
    {
      v3 = round(*v1);
      goto LABEL_19;
    }

    if (v2 == 1)
    {
      v3 = rint(*v1);
      goto LABEL_19;
    }

    if (v2 == 2)
    {
      v3 = ceil(*v1);
LABEL_19:
      *v1 = v3;
      return;
    }
  }

  Double._roundSlowPath(_:)(a1);
}

void protocol witness for FloatingPoint.nextUp.getter in conformance Double(double *a1@<X8>)
{
  v2 = *v1 + 0.0;
  if (*v1 != INFINITY)
  {
    *&v2 += (*&v2 >> 63) | 1;
  }

  *a1 = v2;
}

double protocol witness for FloatingPoint.nextDown.getter in conformance Double@<D0>(double *a1@<X8>)
{
  v2 = 0.0 - *v1;
  if (v2 != INFINITY)
  {
    *&v2 += (*&v2 >> 63) | 1;
  }

  result = -v2;
  *a1 = result;
  return result;
}

double protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance Double@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double protocol witness for static SignedNumeric.- prefix(_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = -*a1;
  *a2 = result;
  return result;
}

double protocol witness for SignedNumeric.negate() in conformance Double()
{
  result = -*v0;
  *v0 = result;
  return result;
}

double protocol witness for Numeric.magnitude.getter in conformance Double@<D0>(double *a1@<X8>)
{
  result = fabs(*v1);
  *a1 = result;
  return result;
}

double protocol witness for static Numeric.* infix(_:_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

double protocol witness for static Numeric.*= infix(_:_:) in conformance Double(double *a1, double *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

double protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Double(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

double protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Double(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

double protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance Double@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void Double.hash(into:)(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
}

Swift::Int __swiftcall Double._rawHashValue(seed:)(Swift::Int seed)
{
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return specialized static Hasher._hash(seed:_:)(seed, *&v1);
}

uint64_t Double.hashValue.getter(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return specialized static Hasher._hash(seed:_:)(0, *&a1);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Double()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return specialized static Hasher._hash(seed:_:)(0, *&v1);
}

void protocol witness for Hashable.hash(into:) in conformance Double()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Double(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return specialized static Hasher._hash(seed:_:)(a1, *&v2);
}

void Double._toCustomAnyHashable()(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 24) = &type metadata for _DoubleAnyHashableBox;
  *(a1 + 32) = &protocol witness table for _DoubleAnyHashableBox;
  *a1 = a2;
}

double protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Double@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *(a1 + 24) = &type metadata for _DoubleAnyHashableBox;
  *(a1 + 32) = &protocol witness table for _DoubleAnyHashableBox;
  *a1 = result;
  return result;
}

Swift::UInt __swiftcall UInt.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 1.84467441e19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t Double.init(exactly:)(__n128 _Q0)
{
  __asm { FCVT            D1, H0 }

  return _D1;
}

Swift::Double_optional __swiftcall Double.init(exactly:)(Swift::Double exactly)
{
  v1 = LOBYTE(exactly);
  result.value = exactly;
  result.is_nil = v1;
  return result;
}

double protocol witness for Strideable.distance(to:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

double protocol witness for Strideable.advanced(by:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

double *protocol witness for static Strideable._step(after:from:by:) in conformance Double(double *result, uint64_t a2, char a3, double *a4, double *a5, double *a6)
{
  v6 = a2;
  v7 = *a6;
  if (a3)
  {
    v8 = v7 + *a4;
LABEL_5:
    *result = v8;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = *a5 + v6 * v7;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void _DoubleAnyHashableBox._canonicalBox.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = trunc(a2);
  if (a2 >= 0.0)
  {
    if (a2 <= -1.0 || a2 >= 1.84467441e19 || v3 != a2)
    {
      goto LABEL_18;
    }

    v6 = a2;
    v7 = &_ss22_IntegerAnyHashableBoxVys6UInt64VGMd;
    v8 = &_ss22_IntegerAnyHashableBoxVys6UInt64VGMR;
  }

  else
  {
    if (a2 <= -9.22337204e18 || a2 >= 9.22337204e18 || v3 != a2)
    {
LABEL_18:
      *(a1 + 24) = &type metadata for _DoubleAnyHashableBox;
      *(a1 + 32) = &protocol witness table for _DoubleAnyHashableBox;
      *a1 = a2;
      return;
    }

    v6 = a2;
    v7 = &_ss22_IntegerAnyHashableBoxVys5Int64VGMd;
    v8 = &_ss22_IntegerAnyHashableBoxVys5Int64VGMR;
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v6;
}

uint64_t _DoubleAnyHashableBox._unbox<A>()@<X0>(Class *a1@<X0>, swift *a2@<X8>, double a3@<D0>)
{
  v7 = a3;
  v5 = swift_dynamicCast(a2, &v7, &type metadata for Double, a1, 6uLL);
  return (*(*(a1 - 1) + 7))(a2, v5 ^ 1u, 1, a1);
}

uint64_t _DoubleAnyHashableBox._downCastConditional<A>(into:)(char *a1, Class *a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = type metadata accessor for Optional(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v20 - v11);
  v13 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a5;
  v16 = swift_dynamicCast(v12, &v21, &type metadata for Double, a2, 6uLL);
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a2);
    v18 = *(v13 + 32);
    v18(v15, v12, a2);
    v18(a1, v15, a2);
  }

  else
  {
    v17(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
  }

  return v16;
}

uint64_t protocol witness for _AnyHashableBox._isEqual(to:) in conformance _DoubleAnyHashableBox(uint64_t a1, Class *a2)
{
  v4 = *v2;
  outlined init with copy of MirrorPath(a1, v8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  if (swift_dynamicCast(&v7, v8, v5, a2, 6uLL))
  {
    return v4 == v7;
  }

  else
  {
    return 2;
  }
}

Swift::Int protocol witness for _AnyHashableBox._hashValue.getter in conformance _DoubleAnyHashableBox()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v4);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher.finalize()();
}

Swift::Int protocol witness for _AnyHashableBox._rawHashValue(_seed:) in conformance _DoubleAnyHashableBox(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
  return Hasher.finalize()();
}

double protocol witness for _AnyHashableBox._base.getter in conformance _DoubleAnyHashableBox@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *(a1 + 24) = &type metadata for Double;
  *a1 = result;
  return result;
}

uint64_t UInt8.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) || *a1.n128_u16 >= COERCE_SHORT_FLOAT(23552))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

uint64_t UInt8.init(exactly:)(__n128 a1)
{
  v1 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0));
  if (*a1.n128_u16 >= COERCE_SHORT_FLOAT(23552))
  {
    v1 = 1;
  }

  if (truncl(*a1.n128_u16) != *a1.n128_u16)
  {
    v1 = 1;
  }

  v2 = *a1.n128_u16;
  if (v1)
  {
    v2 = 0;
  }

  return v2 | (v1 << 8);
}

Swift::UInt8 __swiftcall UInt8.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 256.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt8_optional __swiftcall UInt8.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 256.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    LOWORD(v2) = 0;
  }

  return (v2 | (v1 << 8));
}

Swift::UInt8 __swiftcall UInt8.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 256.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt8_optional __swiftcall UInt8.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 256.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    LOWORD(v2) = 0;
  }

  return (v2 | (v1 << 8));
}

_BYTE *static UInt8.+= infix(_:_:)(_BYTE *result, unsigned __int8 a2)
{
  v2 = *result + a2;
  if ((v2 >> 8))
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_BYTE *static UInt8.-= infix(_:_:)(_BYTE *result, unsigned __int8 a2)
{
  v2 = *result - a2;
  if ((v2 & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_BYTE *static UInt8.*= infix(_:_:)(_BYTE *result, unsigned __int8 a2)
{
  if (((*result * a2) & 0xFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    *result *= a2;
  }

  return result;
}

_BYTE *static UInt8./= infix(_:_:)(_BYTE *result, unsigned __int8 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

Swift::tuple_partialValue_UInt8_overflow_Bool __swiftcall UInt8.addingReportingOverflow(_:)(Swift::UInt8 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt8_overflow_Bool __swiftcall UInt8.subtractingReportingOverflow(_:)(Swift::UInt8 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt8_overflow_Bool __swiftcall UInt8.multipliedReportingOverflow(by:)(Swift::UInt8 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt8_overflow_Bool __swiftcall UInt8.dividedReportingOverflow(by:)(Swift::UInt8 by)
{
  if (by)
  {
    v1 /= by;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt8_overflow_Bool __swiftcall UInt8.remainderReportingOverflow(dividingBy:)(Swift::UInt8 dividingBy)
{
  if (dividingBy)
  {
    v1 %= dividingBy;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_BYTE *static UInt8.%= infix(_:_:)(_BYTE *result, unsigned __int8 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t UInt8.Words.subscript.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

unint64_t _ss5UInt8V5WordsVSksSk5index_8offsetBy5IndexQzAH_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

unint64_t _ss5UInt8V5WordsVSksSk5index_8offsetBy07limitedE05IndexQzSgAI_SiAItFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt8.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xDA80uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt8.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*UInt8.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_high_UInt8_low_UInt8 __swiftcall UInt8.multipliedFullWidth(by:)(Swift::UInt8 by)
{
  v2 = __rev16(v1 * by);
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_UInt8_remainder_UInt8 __swiftcall UInt8.dividingFullWidth(_:)(Swift::tuple_high_UInt8_low_UInt8 a1)
{
  if (!v1 || a1.high >= v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = a1.low | (__PAIR16__(v2, a1.high) << 8);
  v4 = (v3 / v1) | ((v3 % v1) << 8);
  result.quotient = v4;
  result.remainder = v3;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance UInt8(_BYTE *a1, _BYTE *a2)
{
  v3 = (*v2 + *a2) >> 8;
  *a1 = *v2 + *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance UInt8(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *v2 - *a2;
  *a1 = v3;
  return (v3 & 0xFFFFFF00) != 0;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance UInt8(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *v2 * *a2;
  *a1 = v3;
  return (v3 & 0xFF00) != 0;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance UInt8(_BYTE *a1, _BYTE *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 /= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance UInt8(_BYTE *a1, _BYTE *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 %= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

_BYTE *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance UInt8(_BYTE *result, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = *v3 * *a3;
  *result = HIBYTE(v4);
  *a2 = v4;
  return result;
}

Swift::UInt8 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt8(Swift::UInt8 *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  result = UInt8.dividingFullWidth(_:)(__PAIR16__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

char *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance UInt8@<X0>(char *result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = 0;
  if (a2 <= 0x9FF && (a2 & 1) == 0)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v37 = a1;
  v35 = a6;
  v8 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = *(a3 + 64);
  if (v17(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v14, AssociatedConformanceWitness);
    (*(v12 + 24))(v16, a2, v12);
    v19 = (*(*(*(a3 + 32) + 8) + 32))(v37, v10, a2);
    (*(v8 + 8))(v10, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v31 = v16;
  v32 = v12;
  v36 = v8;
  v20 = v37;
  v21 = *(a3 + 128);
  if (v21(a2, a3) < 8)
  {
    goto LABEL_12;
  }

  v38 = -1;
  v22 = v17(a2, a3);
  v23 = v20;
  v24 = v21(a2, a3);
  if ((v22 & 1) == 0)
  {
    if (v24 <= 8)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

LABEL_9:
    (*(a3 + 96))(&v38, v33, v34, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v10, v20, a2);
    (*(v36 + 8))(v10, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v24 > 8)
  {
    goto LABEL_9;
  }

  v25 = v32;
  v26 = swift_getAssociatedConformanceWitness(v32, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v27 = v31;
  (*(v26 + 8))(&qword_18071E0A8, 256, v14, v26);
  v25[3](v27, a2, v25);
  v20 = v23;
  LOBYTE(v25) = (*(*(*(a3 + 32) + 8) + 40))(v23, v10, a2);
  (*(v36 + 8))(v10, a2);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_12:
  v29 = (*(a3 + 120))(a2, a3);
  result = (*(v36 + 8))(v20, a2);
  *v35 = v29;
  return result;
}

_BYTE *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

_BYTE *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt8(_BYTE *result, _BYTE *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

_BYTE *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

_BYTE *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt8(_BYTE *result, _BYTE *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v103 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v103 - v17;
  v108 = *a1;
  v18 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v19 = *(a4 + 128);
    v20 = v19(a3, a4);
    if (v20 >= 64)
    {
      v112 = -8;
      v109 = a2;
      v23 = v19;
      v24 = v16;
      v25 = v13;
      v26 = a5;
      v27 = *(a4 + 96);
      v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v104 = (a4 + 64);
      v29 = v110;
      v27(&v112, &type metadata for Int, v28, a3, a4);
      a5 = v26;
      v13 = v25;
      v16 = v24;
      v19 = v23;
      a2 = v109;
      v30 = (*(*(*(a4 + 32) + 8) + 16))(v109, v29, a3);
      v31 = v29;
      v18 = v104;
      result = (*(v13 + 8))(v31, a3);
      if (v30)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v111(a3, a4);
  v19 = *(a4 + 128);
  v34 = v19(a3, a4);
  if ((v33 & 1) == 0)
  {
    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -8)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v109 = a2;
  v104 = v19;
  if (v34 <= 64)
  {
    v71 = v106;
    v70 = v107;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v73 = v105;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
    v74 = v110;
    (v70[3])(v73, a3, v70);
    a2 = v109;
    LOBYTE(v70) = (*(*(*(a4 + 32) + 8) + 16))(v109, v74, a3);
    result = (*(v13 + 8))(v74, a3);
    if (v70)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v19 = v104;
    if (result < -8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v112 = -8;
    v37 = v16;
    v38 = v13;
    v39 = a5;
    v40 = *(a4 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
    v42 = v110;
    v40(&v112, &type metadata for Int, v41, a3, a4);
    a5 = v39;
    v13 = v38;
    v16 = v37;
    v43 = v109;
    v44 = (*(*(*(a4 + 32) + 8) + 16))(v109, v42, a3);
    v45 = v42;
    v18 = (a4 + 64);
    a2 = v43;
    result = (*(v13 + 8))(v45, a3);
    v19 = v104;
    if (v44)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v46 = v111(a3, a4);
  v103 = a4 + 128;
  v47 = v19(a3, a4);
  if (v46)
  {
    if (v47 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 8)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v47 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v112 = 8;
  v109 = a2;
  v50 = v19;
  v51 = v16;
  v52 = v13;
  v53 = a5;
  v54 = *(a4 + 96);
  v55 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
  v104 = v18;
  v56 = v110;
  v54(&v112, &type metadata for Int, v55, a3, a4);
  a5 = v53;
  v13 = v52;
  v16 = v51;
  v19 = v50;
  a2 = v109;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v56, v109, a3);
  v58 = v56;
  v18 = v104;
  result = (*(v13 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v19(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v76 = v111(a3, a4);
    v77 = v19(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v104 = v19;
    if (v77 <= 64)
    {
      v88 = v106;
      v87 = v107;
      v89 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v105;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v110;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v16, v91, a3);
      (*(v13 + 8))(v91, a3);
      v19 = v104;
      if ((v87 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v80 = v16;
      v81 = v13;
      v82 = a5;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v110;
      v83(&v112, &type metadata for Int, v84, a3, a4);
      a5 = v82;
      v13 = v81;
      v16 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v13 + 8))(v85, a3);
      v19 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v19(a3, a4);
  if (v59 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v62 = v19;
  v63 = v16;
  v64 = v13;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v104 = v18;
  v68 = v110;
  v66(&v112, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v13 = v64;
  v16 = v63;
  v19 = v62;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v19(a3, a4) > 64 || v19(a3, a4) == 64 && (v111(a3, a4) & 1) == 0)
  {
    v92 = v111(a3, a4);
    v93 = v19(a3, a4);
    if (v92)
    {
      if (v93 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v93 >= 64)
    {
LABEL_37:
      v112 = 0x7FFFFFFFFFFFFFFFLL;
      v96 = v16;
      v97 = a5;
      v98 = *(a4 + 96);
      v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
      v100 = v110;
      v98(&v112, &type metadata for Int, v99, a3, a4);
      a5 = v97;
      v16 = v96;
      v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
      (*(v13 + 8))(v100, a3);
      if (v101)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFF8)
    {
      v75 = v108 << -v102;
      goto LABEL_47;
    }
  }

  else if (v102 < 8)
  {
    v75 = v108 >> v102;
    goto LABEL_47;
  }

LABEL_25:
  LOBYTE(v75) = 0;
LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt8(_BYTE *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -8;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if ((v31 & 1) == 0)
  {
    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -8)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v107 = a2;
  v103 = v17;
  if (v32 <= 64)
  {
    v69 = v105;
    v68 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v71 = v104;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
    v72 = v108;
    (v68[3])(v71, a3, v68);
    a2 = v107;
    LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v107, v72, a3);
    result = (*(v11 + 8))(v72, a3);
    if (v68)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v17 = v103;
    if (result < -8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -8;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 8)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v45 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v110 = 8;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) > 64 || v17(a3, a4) == 64 && (v109(a3, a4) & 1) == 0)
  {
    v90 = v109(a3, a4);
    v91 = v17(a3, a4);
    if (v90)
    {
      if (v91 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v91 >= 64)
    {
LABEL_37:
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      v94 = v14;
      v95 = a1;
      v96 = *(a4 + 96);
      v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
      v98 = v108;
      v96(&v110, &type metadata for Int, v97, a3, a4);
      a1 = v95;
      v14 = v94;
      v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
      (*(v11 + 8))(v98, a3);
      if (v99)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 >= 0xFFFFFFFFFFFFFFF9)
    {
      v73 = v101 << -v100;
      goto LABEL_47;
    }
  }

  else if (v100 < 8)
  {
    v73 = v101 >> v100;
    goto LABEL_47;
  }

LABEL_25:
  LOBYTE(v73) = 0;
LABEL_47:
  *a1 = v73;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v103 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v103 - v17;
  v108 = *a1;
  v18 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v19 = *(a4 + 128);
    v20 = v19(a3, a4);
    if (v20 >= 64)
    {
      v112 = -8;
      v109 = a2;
      v23 = v19;
      v24 = v16;
      v25 = v13;
      v26 = a5;
      v27 = *(a4 + 96);
      v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v104 = (a4 + 64);
      v29 = v110;
      v27(&v112, &type metadata for Int, v28, a3, a4);
      a5 = v26;
      v13 = v25;
      v16 = v24;
      v19 = v23;
      a2 = v109;
      v30 = (*(*(*(a4 + 32) + 8) + 16))(v109, v29, a3);
      v31 = v29;
      v18 = v104;
      result = (*(v13 + 8))(v31, a3);
      if (v30)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v111(a3, a4);
  v19 = *(a4 + 128);
  v34 = v19(a3, a4);
  if ((v33 & 1) == 0)
  {
    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -8)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v109 = a2;
  v104 = v19;
  if (v34 <= 64)
  {
    v71 = v106;
    v70 = v107;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v73 = v105;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
    v74 = v110;
    (v70[3])(v73, a3, v70);
    a2 = v109;
    LOBYTE(v70) = (*(*(*(a4 + 32) + 8) + 16))(v109, v74, a3);
    result = (*(v13 + 8))(v74, a3);
    if (v70)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v19 = v104;
    if (result < -8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v112 = -8;
    v37 = v16;
    v38 = v13;
    v39 = a5;
    v40 = *(a4 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
    v42 = v110;
    v40(&v112, &type metadata for Int, v41, a3, a4);
    a5 = v39;
    v13 = v38;
    v16 = v37;
    v43 = v109;
    v44 = (*(*(*(a4 + 32) + 8) + 16))(v109, v42, a3);
    v45 = v42;
    v18 = (a4 + 64);
    a2 = v43;
    result = (*(v13 + 8))(v45, a3);
    v19 = v104;
    if (v44)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v46 = v111(a3, a4);
  v103 = a4 + 128;
  v47 = v19(a3, a4);
  if (v46)
  {
    if (v47 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 8)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v47 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v112 = 8;
  v109 = a2;
  v50 = v19;
  v51 = v16;
  v52 = v13;
  v53 = a5;
  v54 = *(a4 + 96);
  v55 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
  v104 = v18;
  v56 = v110;
  v54(&v112, &type metadata for Int, v55, a3, a4);
  a5 = v53;
  v13 = v52;
  v16 = v51;
  v19 = v50;
  a2 = v109;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v56, v109, a3);
  v58 = v56;
  v18 = v104;
  result = (*(v13 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v19(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v76 = v111(a3, a4);
    v77 = v19(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v104 = v19;
    if (v77 <= 64)
    {
      v88 = v106;
      v87 = v107;
      v89 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v105;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v110;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v16, v91, a3);
      (*(v13 + 8))(v91, a3);
      v19 = v104;
      if ((v87 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v80 = v16;
      v81 = v13;
      v82 = a5;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v110;
      v83(&v112, &type metadata for Int, v84, a3, a4);
      a5 = v82;
      v13 = v81;
      v16 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v13 + 8))(v85, a3);
      v19 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v19(a3, a4);
  if (v59 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v62 = v19;
  v63 = v16;
  v64 = v13;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v104 = v18;
  v68 = v110;
  v66(&v112, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v13 = v64;
  v16 = v63;
  v19 = v62;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v19(a3, a4) > 64 || v19(a3, a4) == 64 && (v111(a3, a4) & 1) == 0)
  {
    v92 = v111(a3, a4);
    v93 = v19(a3, a4);
    if (v92)
    {
      if (v93 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v93 >= 64)
    {
LABEL_37:
      v112 = 0x7FFFFFFFFFFFFFFFLL;
      v96 = v16;
      v97 = a5;
      v98 = *(a4 + 96);
      v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
      v100 = v110;
      v98(&v112, &type metadata for Int, v99, a3, a4);
      a5 = v97;
      v16 = v96;
      v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
      (*(v13 + 8))(v100, a3);
      if (v101)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFF8)
    {
      v75 = v108 >> -v102;
      goto LABEL_47;
    }
  }

  else if (v102 <= 7)
  {
    v75 = v108 << v102;
    goto LABEL_47;
  }

LABEL_25:
  LOBYTE(v75) = 0;
LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt8(_BYTE *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -8;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if ((v31 & 1) == 0)
  {
    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -8)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v107 = a2;
  v103 = v17;
  if (v32 <= 64)
  {
    v69 = v105;
    v68 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v71 = v104;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
    v72 = v108;
    (v68[3])(v71, a3, v68);
    a2 = v107;
    LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v107, v72, a3);
    result = (*(v11 + 8))(v72, a3);
    if (v68)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v17 = v103;
    if (result < -8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -8;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 8)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v45 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v110 = 8;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) > 64 || v17(a3, a4) == 64 && (v109(a3, a4) & 1) == 0)
  {
    v90 = v109(a3, a4);
    v91 = v17(a3, a4);
    if (v90)
    {
      if (v91 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v91 >= 64)
    {
LABEL_37:
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      v94 = v14;
      v95 = a1;
      v96 = *(a4 + 96);
      v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
      v98 = v108;
      v96(&v110, &type metadata for Int, v97, a3, a4);
      a1 = v95;
      v14 = v94;
      v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
      (*(v11 + 8))(v98, a3);
      if (v99)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 > 0xFFFFFFFFFFFFFFF8)
    {
      v73 = v101 >> -v100;
      goto LABEL_47;
    }
  }

  else if (v100 < 8)
  {
    v73 = v101 << v100;
    goto LABEL_47;
  }

LABEL_25:
  LOBYTE(v73) = 0;
LABEL_47:
  *a1 = v73;
  return result;
}

_BYTE *protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt8(_BYTE *result, _BYTE *a2, _BYTE *a3)
{
  if (!*a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v3 / *a3;
  *a2 = *v3 % *a3;
  *result = v4;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt8(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v34 = 0;
    LOBYTE(v33) = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v37[0] = a1;
      v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v37, v5, 10);
      v20 = (v16 >> 8) & 1;
LABEL_42:
      v38 = v20;
      goto LABEL_43;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v36;
      v8 = v35;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v21 = specialized Collection.subscript.getter(1, v8, v6);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            LOBYTE(v16) = 0;
            if (v25)
            {
              while (1)
              {
                v27 = *v25 - 48;
                if (v27 >= 0xA)
                {
                  goto LABEL_41;
                }

                v28 = (10 * v16) & 0xF00;
                v16 = ((10 * v16) & 0xFE) + v27;
                if (v28 || v16 >> 8 != 0)
                {
                  goto LABEL_41;
                }

                ++v25;
                if (!--v26)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LOBYTE(v16) = 0;
            while (1)
            {
              v30 = *v8 - 48;
              if (v30 >= 0xA)
              {
                goto LABEL_41;
              }

              v31 = (10 * v16) & 0xF00;
              v16 = ((10 * v16) & 0xFE) + v30;
              if (v31 || v16 >> 8 != 0)
              {
                goto LABEL_41;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_40;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            LOBYTE(v16) = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = (10 * v16) & 0xF00;
                v16 = ((10 * v16) & 0xFE) - v17;
                if (v18 || (v16 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_40;
                }
              }

LABEL_41:
              LOBYTE(v16) = 0;
              LOBYTE(v20) = 1;
              goto LABEL_42;
            }

LABEL_40:
            v38 = 0;
LABEL_43:
            LOBYTE(v33) = v38;
            a2;
            goto LABEL_44;
          }
        }

        LOBYTE(v16) = 0;
        v38 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v33 = (v16 >> 8) & 1;
LABEL_44:
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v16;
  }

LABEL_47:
  *a3 = v34;
  a3[1] = v33 & 1;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance UInt8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v34 = a4;
  v36 = a5;
  v37 = *(a2 - 1);
  v38 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v35 = *(a3 + 64);
  if ((v35(a2, a3) & 1) == 0 || (v15 = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v15 + 8))(&qword_18071E0A8, 256, v12, v15), (*(v10 + 24))(v14, a2, v10), v16 = (*(*(*(a3 + 32) + 8) + 16))(v38, v8, a2), v17 = *(v37 + 8), v17(v8, a2), (v16 & 1) == 0))
  {
    v18 = *(a3 + 128);
    if (v18(a2, a3) < 8)
    {
      goto LABEL_12;
    }

    v39 = -1;
    v19 = v35(a2, a3);
    v20 = v38;
    v21 = v18(a2, a3);
    if (v19)
    {
      if (v21 <= 8)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        (*(v10 + 24))(v14, a2, v10);
        v25 = (*(*(*(a3 + 32) + 8) + 40))(v20, v8, a2);
        (*(v37 + 8))(v8, a2);
        if ((v25 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v21 < 9)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v26 = *(a3 + 96);
    v27 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v21, v22, v23);
    v26(&v39, v34, v27, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v8, v20, a2);
    v17 = *(v37 + 8);
    v17(v8, a2);
    if ((v28 & 1) == 0)
    {
LABEL_12:
      v32 = v38;
      v30 = (*(a3 + 120))(a2, a3);
      result = (*(v37 + 8))(v32, a2);
      v31 = 0;
      goto LABEL_13;
    }
  }

  result = (v17)(v38, a2);
  v30 = 0;
  v31 = 1;
LABEL_13:
  v33 = v36;
  *v36 = v30;
  v33[1] = v31;
  return result;
}

_BYTE *protocol witness for static Numeric.* infix(_:_:) in conformance UInt8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  if (((*result * *a2) & 0xFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result * *a2;
  }

  return result;
}

_BYTE *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt8(_BYTE *result, _BYTE *a2)
{
  if (((*result * *a2) & 0xFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    *result *= *a2;
  }

  return result;
}

unsigned __int8 *protocol witness for Strideable.distance(to:) in conformance UInt8@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 - v3;
  v6 = v3 >= v4;
  v7 = v3 - v4;
  if (!v6)
  {
    v7 = -v5;
  }

  *a2 = v7;
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt8@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (v3 >= 0x100)
    {
      goto LABEL_8;
    }

    v4 += v3;
    v3 = v4;
    if (v4 == v4)
    {
LABEL_7:
      *a2 = v4;
      return result;
    }

    __break(1u);
  }

  v5 = -v3;
  if (v5 >= 0x100)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 -= v5;
  if ((v4 & 0xFFFFFF00) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unsigned __int8 *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt8@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result + *a2;
  if ((v3 >> 8))
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t static UInt8.+ infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  result = a1 + a2;
  if ((result >> 8))
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt8(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *result + *a2;
  if ((v2 >> 8))
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unsigned __int8 *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt8@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result - *a2;
  if ((v3 & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt8(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *result - *a2;
  if ((v2 & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t UInt8._toCustomAnyHashable()@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5UInt8VGMd, _ss22_IntegerAnyHashableBoxVys5UInt8VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5UInt8VGMd, _ss22_IntegerAnyHashableBoxVys5UInt8VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int8.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(-10232) || *a1.n128_u16 >= COERCE_SHORT_FLOAT(22528))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

uint64_t Int8.init(exactly:)(__n128 a1)
{
  v1 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(-10232);
  if (*a1.n128_u16 >= COERCE_SHORT_FLOAT(22528))
  {
    v1 = 1;
  }

  if (truncl(*a1.n128_u16) != *a1.n128_u16)
  {
    v1 = 1;
  }

  v2 = *a1.n128_u16;
  if (v1)
  {
    v2 = 0;
  }

  return v2 | (v1 << 8);
}

Swift::Int8 __swiftcall Int8.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -129.0 || a1 >= 128.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int8_optional __swiftcall Int8.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -129.0;
  if (exactly >= 128.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 8));
}

Swift::Int8 __swiftcall Int8.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -129.0 || a1 >= 128.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int8_optional __swiftcall Int8.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -129.0;
  if (exactly >= 128.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 8));
}

_BYTE *static Int8.+= infix(_:_:)(_BYTE *result, char a2)
{
  v2 = *result + a2;
  if ((*result + a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *static Int8.-= infix(_:_:)(_BYTE *result, char a2)
{
  v2 = *result - a2;
  if ((*result - a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *static Int8.*= infix(_:_:)(_BYTE *result, char a2)
{
  v2 = *result * a2;
  if ((*result * a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *static Int8./= infix(_:_:)(_BYTE *result, char a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 128)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 / a2;
  return result;
}

Swift::tuple_partialValue_Int8_overflow_Bool __swiftcall Int8.addingReportingOverflow(_:)(Swift::Int8 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int8_overflow_Bool __swiftcall Int8.subtractingReportingOverflow(_:)(Swift::Int8 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int8_overflow_Bool __swiftcall Int8.multipliedReportingOverflow(by:)(Swift::Int8 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int8_overflow_Bool __swiftcall Int8.dividedReportingOverflow(by:)(Swift::Int8 by)
{
  if (by)
  {
    if (by == -1 && v1 == 128)
    {
      v1 = 0x80;
    }

    else
    {
      v1 /= by;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int8_overflow_Bool __swiftcall Int8.remainderReportingOverflow(dividingBy:)(Swift::Int8 dividingBy)
{
  if (dividingBy)
  {
    if (dividingBy == -1 && v1 == 128)
    {
      v1 = 0;
    }

    else
    {
      v1 %= dividingBy;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_BYTE *static Int8.%= infix(_:_:)(_BYTE *result, char a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 128)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 % a2;
  return result;
}

uint64_t Int8.nonzeroBitCount.getter(unsigned __int8 a1, int8x8_t a2)
{
  a2.i32[0] = a1;
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

Swift::Int __swiftcall Int8.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int8.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Int8.Words.subscript.getter(uint64_t a1, char a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int8.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0x1A8DuLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int8.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*Int8.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void *protocol witness for Collection.subscript.getter in conformance UInt8.Words@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

double _ss5UInt8V5WordsVSlsSl7indices7IndicesQzvgTW_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_180672710;
  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UInt8.Words(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Int8.magnitude.getter(char a1)
{
  if (a1 >= 0)
  {
    return a1;
  }

  else
  {
    return -a1;
  }
}

Swift::tuple_high_Int8_low_UInt8 __swiftcall Int8.multipliedFullWidth(by:)(Swift::Int8 by)
{
  v2 = bswap32(v1 * by) >> 16;
  result.high = v2;
  result.low = v1;
  return result;
}

Swift::tuple_quotient_Int8_remainder_Int8 __swiftcall Int8.dividingFullWidth(_:)(Swift::tuple_high_Int8_low_UInt8 a1)
{
  if (!v1 || (v3 = a1.low | (__PAIR16__(v2, a1.high) << 8), v1 == -1) && v3 == 0x8000 || (v4 = v3 / v1, v4 != v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result.remainder = v3;
  result.quotient = v4;
  return result;
}

BOOL protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance Int8(_BYTE *a1, _BYTE *a2)
{
  v3 = *v2 + *a2;
  v4 = v3 != (*v2 + *a2);
  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance Int8(_BYTE *a1, _BYTE *a2)
{
  v3 = *v2 - *a2;
  v4 = v3 != (*v2 - *a2);
  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance Int8(_BYTE *a1, _BYTE *a2)
{
  v3 = *v2 * *a2;
  v4 = v3 != (*v2 * *a2);
  *a1 = v3;
  return v4;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance Int8(_BYTE *a1, _BYTE *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2 || v3 == 255 && v4 == 128)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    LOBYTE(v4) = v4 / v3;
  }

  *a1 = v4;
  return v5;
}

uint64_t protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance Int8(_BYTE *a1, _BYTE *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  if (v3 == 255 && v4 == 128)
  {
    LOBYTE(v4) = 0;
LABEL_7:
    v5 = 1;
    goto LABEL_5;
  }

  v5 = 0;
  LOBYTE(v4) = v4 % v3;
LABEL_5:
  *a1 = v4;
  return v5;
}

_BYTE *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance Int8(_BYTE *result, _BYTE *a2, char *a3)
{
  v4 = *v3 * *a3;
  *result = HIBYTE(v4);
  *a2 = v4;
  return result;
}

Swift::Int8 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int8(Swift::Int8 *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  result = Int8.dividingFullWidth(_:)(__PAIR16__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

uint64_t _ss5UInt8Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

_BYTE *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance Int8@<X0>(_BYTE *result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 <= 0x8FF)
  {
    *a3 = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t (*a5)(void)@<X5>, _BYTE *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v41, a1, a4, a2, v12, a3);
  if ((v41 & 0x100) != 0)
  {
    v40 = v6;
    v41 = static String._createEmpty(withInitialCapacity:)(80);
    v42 = v15;
    TypeName = swift_getTypeName(a2, 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = TypeName;
      v19 = v17;
      v20 = validateUTF8(_:)(TypeName, v17);
      v24 = v20 < 0 ? repairUTF8(_:firstKnownBrokenRange:)(v18, v19, v21, v22) : specialized static String._uncheckedFromUTF8(_:isASCII:)(v18, v19, v20 & 1, v23);
      v26 = v25;
      String.write(_:)(*&v24);
      v26;
      v27._object = 0x800000018066D440;
      v27._countAndFlagsBits = 0xD00000000000001ELL;
      String.write(_:)(v27);
      v28 = swift_getTypeName(v40, 0);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v30 = v28;
        v31 = v29;
        v32 = validateUTF8(_:)(v28, v29);
        if (v32 < 0)
        {
          v36 = repairUTF8(_:firstKnownBrokenRange:)(v30, v31, v33, v34);
        }

        else
        {
          v36 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v30, v31, v32 & 1, v35);
        }

        v38 = v37;
        String.write(_:)(*&v36);
        v38;
        v39._countAndFlagsBits = 0xD00000000000002ELL;
        v39._object = 0x800000018066D460;
        String.write(_:)(v39);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v41, v42, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = v41;
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a6 = v13;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v40 = a6;
  v9 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v41 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 + 64);
  v16 = v42(a2, a3);
  v17 = *(a3 + 128);
  if ((v16 & 1) != 0 && v17(a2, a3) >= 9)
  {
    v36 = v9;
    v43 = 0x80;
    v18 = v42;
    if (v42(a2, a3))
    {
      if (v17(a2, a3) < 8)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v19 = v18(a2, a3);
      v20 = v17(a2, a3);
      if ((v19 & 1) == 0)
      {
        if (v20 >= 8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 <= 8)
      {
        v23 = v36;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
        v25 = v39;
        (*(v23 + 3))(v14, a2, v23);
        v26 = (*(*(*(a3 + 32) + 8) + 16))(a1, v25, a2);
        (*(v41 + 8))(v25, a2);
        if (v26)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v21 = v39;
    (*(a3 + 96))(&v43, v37, v38, a2, a3);
    v22 = (*(*(*(a3 + 32) + 8) + 16))(a1, v21, a2);
    (*(v41 + 8))(v21, a2);
    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v27 = v17(a2, a3);
  v29 = v41;
  v28 = v42;
  if (v27 > 8 || v17(a2, a3) == 8 && (v28(a2, a3) & 1) == 0)
  {
    v44 = 127;
    v30 = v28(a2, a3);
    v31 = v17(a2, a3);
    if (v30)
    {
      if (v31 > 8)
      {
        goto LABEL_17;
      }
    }

    else if (v31 > 7)
    {
LABEL_17:
      v32 = v39;
      (*(a3 + 96))(&v44, v37, v38, a2, a3);
      v33 = (*(*(*(a3 + 32) + 8) + 16))(v32, a1, a2);
      (*(v29 + 8))(v32, a2);
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v34 = (*(a3 + 120))(a2, a3);
  result = (*(v29 + 8))(a1, a2);
  *v40 = v34;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = (*(a3 + 120))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

unsigned __int8 *protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (v4 = *result, v4 == 128) && v3 == 255)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v4 / v3;
  return result;
}

uint64_t static Int8./ infix(_:_:)(unsigned __int8 a1, char a2)
{
  if (!a2 || a1 == 128 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 / a2);
}

_BYTE *protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2 || (v3 = *result, v2 == 255) && v3 == 128)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 / v2;
  return result;
}

unsigned __int8 *protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (v4 = *result, v4 == 128) && v3 == 255)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v4 % v3;
  return result;
}

uint64_t static Int8.% infix(_:_:)(unsigned __int8 a1, char a2)
{
  if (!a2 || a1 == 128 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 % a2);
}

_BYTE *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2 || (v3 = *result, v2 == 255) && v3 == 128)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 % v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v103 = a5;
  v98 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v98, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v97 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v95 - v11;
  v12 = *(a3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v95 - v16;
  v17 = *a1;
  v19 = a4 + 64;
  v18 = *(a4 + 64);
  if ((v18(a3, a4) & 1) == 0)
  {
    v33 = v18(a3, a4);
    v102 = *(a4 + 128);
    v34 = v102(a3, a4);
    if (v33)
    {
      v95 = a2;
      v100 = v18;
      if (v34 <= 64)
      {
        v64 = v97;
        v63 = v98;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v66 = v96;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v64, AssociatedConformanceWitness);
        v67 = v101;
        (v63[3])(v66, a3, v63);
        a2 = v95;
        LOBYTE(v63) = (*(*(*(a4 + 32) + 8) + 16))(v95, v67, a3);
        result = (*(v12 + 8))(v67, a3);
        if (v63)
        {
          goto LABEL_26;
        }

        result = (*(a4 + 120))(a3, a4);
        v18 = v100;
        if (result < -8)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v104 = -8;
      v37 = *(a4 + 96);
      v38 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
      v99 = a4 + 64;
      v39 = v101;
      v37(&v104, &type metadata for Int, v38, a3, a4);
      a2 = v95;
      v40 = (*(*(*(a4 + 32) + 8) + 16))(v95, v39, a3);
      v41 = v39;
      v19 = v99;
      result = (*(v12 + 8))(v41, a3);
      v18 = v100;
      if ((v40 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_26:
      LOBYTE(v55) = 0;
      goto LABEL_48;
    }

    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -8)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  v102 = *(a4 + 128);
  v20 = v102(a3, a4);
  if (v20 < 64)
  {
    goto LABEL_10;
  }

  v104 = -8;
  v100 = v18;
  v23 = v15;
  v24 = v17;
  v25 = v12;
  v26 = a2;
  v27 = *(a4 + 96);
  v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
  v99 = a4 + 64;
  v29 = v101;
  v27(&v104, &type metadata for Int, v28, a3, a4);
  a2 = v26;
  v12 = v25;
  v17 = v24;
  v15 = v23;
  v18 = v100;
  v30 = (*(*(*(a4 + 32) + 8) + 16))(a2, v29, a3);
  v31 = v29;
  v19 = v99;
  result = (*(v12 + 8))(v31, a3);
  if (v30)
  {
    goto LABEL_26;
  }

LABEL_11:
  v42 = v18(a3, a4);
  v95 = a4 + 128;
  v43 = v102(a3, a4);
  if (v42)
  {
    if (v43 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 8)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v43 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v104 = 8;
  v100 = v18;
  v46 = v15;
  v47 = v17;
  v48 = v12;
  v49 = a2;
  v50 = *(a4 + 96);
  v51 = lazy protocol witness table accessor for type Int and conformance Int(v43, v44, v45);
  v99 = v19;
  v52 = v101;
  v50(&v104, &type metadata for Int, v51, a3, a4);
  a2 = v49;
  v12 = v48;
  v17 = v47;
  v15 = v46;
  v18 = v100;
  v53 = (*(*(*(a4 + 32) + 8) + 16))(v52, a2, a3);
  v54 = v52;
  v19 = v99;
  result = (*(v12 + 8))(v54, a3);
  if (v53)
  {
    goto LABEL_17;
  }

LABEL_18:
  (*(v12 + 16))(v15, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v102(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v68 = v18(a3, a4);
    v69 = v102(a3, a4);
    if ((v68 & 1) == 0)
    {
      if (v69 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v100 = v18;
    if (v69 <= 64)
    {
      v76 = v97;
      v77 = v98;
      v78 = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v79 = v96;
      (*(v78 + 8))(&qword_18071E0A8, 256, v76, v78);
      v80 = v77;
      v81 = v77[3];
      v82 = v101;
      (v81)(v79, a3, v80);
      LOBYTE(v79) = (*(*(*(a4 + 32) + 8) + 16))(v15, v82, a3);
      (*(v12 + 8))(v82, a3);
      v18 = v100;
      if ((v79 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v104 = 0x8000000000000000;
      v72 = *(a4 + 96);
      v73 = lazy protocol witness table accessor for type Int and conformance Int(v69, v70, v71);
      v99 = v19;
      v74 = v101;
      v72(&v104, &type metadata for Int, v73, a3, a4);
      v75 = (*(*(*(a4 + 32) + 8) + 16))(v15, v74, a3);
      (*(v12 + 8))(v74, a3);
      v18 = v100;
      if ((v75 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v56 = v102(a3, a4);
  if (v56 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v104 = 0x8000000000000000;
  v100 = v18;
  v59 = *(a4 + 96);
  v60 = lazy protocol witness table accessor for type Int and conformance Int(v56, v57, v58);
  v99 = v19;
  v61 = v101;
  v59(&v104, &type metadata for Int, v60, a3, a4);
  v18 = v100;
  v62 = (*(*(*(a4 + 32) + 8) + 16))(v15, v61, a3);
  (*(v12 + 8))(v61, a3);
  if (v62)
  {
    goto LABEL_39;
  }

LABEL_35:
  v83 = v102;
  if (v102(a3, a4) <= 64 && (v83(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v84 = v18(a3, a4);
  v85 = v83;
  v86 = v84;
  v87 = v85(a3, a4);
  if (v86)
  {
    if (v87 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v87 >= 64)
  {
LABEL_38:
    v104 = 0x7FFFFFFFFFFFFFFFLL;
    v90 = *(a4 + 96);
    v91 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
    v92 = v101;
    v90(&v104, &type metadata for Int, v91, a3, a4);
    v93 = (*(*(*(a4 + 32) + 8) + 16))(v92, v15, a3);
    (*(v12 + 8))(v92, a3);
    if (v93)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v94 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v15, a3);
  if ((v94 & 0x8000000000000000) != 0)
  {
    if (v94 > 0xFFFFFFFFFFFFFFF8)
    {
      v55 = v17 << -v94;
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v94 < 8)
  {
    v55 = v17 >> v94;
    goto LABEL_48;
  }

LABEL_17:
  v55 = v17 >> 7;
LABEL_48:
  *v103 = v55;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int8(_BYTE *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if ((v109(a3, a4) & 1) == 0)
  {
    v31 = v109(a3, a4);
    v17 = *(a4 + 128);
    v32 = v17(a3, a4);
    if (v31)
    {
      v107 = a2;
      v103 = v17;
      if (v32 <= 64)
      {
        v70 = v105;
        v69 = v106;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v72 = v104;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v70, AssociatedConformanceWitness);
        v73 = v108;
        (v69[3])(v72, a3, v69);
        a2 = v107;
        LOBYTE(v69) = (*(*(*(a4 + 32) + 8) + 16))(v107, v73, a3);
        result = (*(v11 + 8))(v73, a3);
        if (v69)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v17 = v103;
        if (result < -8)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v110 = -8;
      v35 = v14;
      v36 = v11;
      v37 = a1;
      v38 = *(a4 + 96);
      v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
      v40 = v108;
      v38(&v110, &type metadata for Int, v39, a3, a4);
      a1 = v37;
      v11 = v36;
      v14 = v35;
      v41 = v107;
      v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
      v43 = v40;
      v16 = (a4 + 64);
      a2 = v41;
      result = (*(v11 + 8))(v43, a3);
      v17 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_25:
      LOBYTE(v68) = 0;
      goto LABEL_47;
    }

    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -8)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v17 = *(a4 + 128);
  v18 = v17(a3, a4);
  if (v18 < 64)
  {
    goto LABEL_10;
  }

  v110 = -8;
  v107 = a2;
  v21 = v17;
  v22 = v14;
  v23 = v11;
  v24 = a1;
  v25 = *(a4 + 96);
  v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
  v103 = (a4 + 64);
  v27 = v108;
  v25(&v110, &type metadata for Int, v26, a3, a4);
  a1 = v24;
  v11 = v23;
  v14 = v22;
  v17 = v21;
  a2 = v107;
  v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
  v29 = v27;
  v16 = v103;
  result = (*(v11 + 8))(v29, a3);
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_21:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 8)
    {
      goto LABEL_14;
    }

LABEL_22:
    v68 = *a1 >> 7;
    goto LABEL_47;
  }

  if (v45 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v110 = 8;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_22;
  }

LABEL_14:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v109(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v90 = v109(a3, a4);
  v91 = v17(a3, a4);
  if (v90)
  {
    if (v91 > 64)
    {
      goto LABEL_37;
    }
  }

  else if (v91 >= 64)
  {
LABEL_37:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = v14;
    v95 = a1;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a1 = v95;
    v14 = v94;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
    (*(v11 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  (*(a4 + 120))(a3, a4);
LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 > 0xFFFFFFFFFFFFFFF8)
    {
      v68 = v101 << -v100;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v100 >= 8)
  {
    v68 = v101 >> 7;
  }

  else
  {
    v68 = v101 >> v100;
  }

LABEL_47:
  *a1 = v68;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v104 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v104, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v103 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v101 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v101 - v17;
  v107 = *a1;
  v19 = a4 + 64;
  v18 = *(a4 + 64);
  if (v18(a3, a4))
  {
    v109 = *(a4 + 128);
    v20 = v109(a3, a4);
    if (v20 >= 64)
    {
      v110 = -8;
      v106 = v18;
      v34 = v16;
      v35 = v13;
      v36 = a2;
      v37 = a5;
      v38 = *(a4 + 96);
      v39 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v105 = a4 + 64;
      v40 = v108;
      v38(&v110, &type metadata for Int, v39, a3, a4);
      a5 = v37;
      a2 = v36;
      v13 = v35;
      v16 = v34;
      v18 = v106;
      v41 = (*(*(*(a4 + 32) + 8) + 16))(a2, v40, a3);
      v42 = v40;
      v19 = v105;
      result = (*(v13 + 8))(v42, a3);
      if (v41)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -9)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v24 = v18(a3, a4);
    v109 = *(a4 + 128);
    v25 = v109(a3, a4);
    if (v24)
    {
      v101 = a2;
      v106 = v18;
      if (v25 <= 64)
      {
        v44 = v103;
        v43 = v104;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v104, a3, v103, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v46 = v102;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v44, AssociatedConformanceWitness);
        v47 = v108;
        (v43[3])(v46, a3, v43);
        a2 = v101;
        LOBYTE(v43) = (*(*(*(a4 + 32) + 8) + 16))(v101, v47, a3);
        result = (*(v13 + 8))(v47, a3);
        if (v43)
        {
          goto LABEL_16;
        }

        result = (*(a4 + 120))(a3, a4);
        v18 = v106;
        if (result < -8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v110 = -8;
        v28 = a5;
        v29 = *(a4 + 96);
        v30 = lazy protocol witness table accessor for type Int and conformance Int(v25, v26, v27);
        v105 = a4 + 64;
        v31 = v108;
        v29(&v110, &type metadata for Int, v30, a3, a4);
        a5 = v28;
        a2 = v101;
        v32 = (*(*(*(a4 + 32) + 8) + 16))(v101, v31, a3);
        v33 = v31;
        v19 = v105;
        result = (*(v13 + 8))(v33, a3);
        v18 = v106;
        if (v32)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v25 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result < -8)
      {
        goto LABEL_16;
      }
    }
  }

  v49 = v18(a3, a4);
  v101 = a4 + 128;
  v50 = v109(a3, a4);
  if (v49)
  {
    if (v50 > 64)
    {
      goto LABEL_19;
    }
  }

  else if (v50 > 64)
  {
LABEL_19:
    v110 = 8;
    v106 = v18;
    v53 = v16;
    v54 = v13;
    v55 = a2;
    v56 = a5;
    v57 = *(a4 + 96);
    v58 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
    v105 = v19;
    v59 = v108;
    v57(&v110, &type metadata for Int, v58, a3, a4);
    a5 = v56;
    a2 = v55;
    v13 = v54;
    v16 = v53;
    v18 = v106;
    v60 = (*(*(*(a4 + 32) + 8) + 16))(v59, a2, a3);
    v61 = v59;
    v19 = v105;
    result = (*(v13 + 8))(v61, a3);
    if (v60)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 8)
  {
LABEL_23:
    LOBYTE(v48) = 0;
    goto LABEL_51;
  }

LABEL_24:
  (*(v13 + 16))(v16, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v109(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v70 = v18(a3, a4);
    v71 = v109(a3, a4);
    if ((v70 & 1) == 0)
    {
      if (v71 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v106 = v18;
    if (v71 <= 64)
    {
      v79 = v103;
      v80 = v104;
      v81 = swift_getAssociatedConformanceWitness(v104, a3, v103, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v82 = v102;
      (*(v81 + 8))(&qword_18071E0A8, 256, v79, v81);
      v83 = v80;
      v84 = v80[3];
      v85 = v108;
      (v84)(v82, a3, v83);
      LOBYTE(v82) = (*(*(*(a4 + 32) + 8) + 16))(v16, v85, a3);
      (*(v13 + 8))(v85, a3);
      v18 = v106;
      if ((v82 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v74 = a5;
      v75 = *(a4 + 96);
      v76 = lazy protocol witness table accessor for type Int and conformance Int(v71, v72, v73);
      v105 = v19;
      v77 = v108;
      v75(&v110, &type metadata for Int, v76, a3, a4);
      a5 = v74;
      v78 = (*(*(*(a4 + 32) + 8) + 16))(v16, v77, a3);
      (*(v13 + 8))(v77, a3);
      v18 = v106;
      if ((v78 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = v109(a3, a4);
  if (v62 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v110 = 0x8000000000000000;
  v106 = v18;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v62, v63, v64);
  v105 = v19;
  v68 = v108;
  v66(&v110, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v18 = v106;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_42;
  }

LABEL_38:
  v86 = v109;
  if (v109(a3, a4) <= 64 && (v86(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v87 = v18(a3, a4);
  v88 = v86;
  v89 = v87;
  v90 = v88(a3, a4);
  if (v89)
  {
    if (v90 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v90 > 64)
  {
LABEL_41:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v93 = v16;
    v94 = v13;
    v95 = a5;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v90, v91, v92);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a5 = v95;
    v13 = v94;
    v16 = v93;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v93, a3);
    (*(v13 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v100 & 0x8000000000000000) == 0)
  {
    if (v100 < 8)
    {
      v48 = v107 << v100;
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  if (v100 > 0xFFFFFFFFFFFFFFF8)
  {
    v48 = v107 >> -v100;
    goto LABEL_51;
  }

LABEL_16:
  v48 = v107 >> 7;
LABEL_51:
  *a5 = v48;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int8(_BYTE *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result > -9)
      {
        goto LABEL_17;
      }

LABEL_16:
      v49 = *a1 >> 7;
      goto LABEL_51;
    }

    v110 = -8;
    v107 = a2;
    v35 = v17;
    v36 = v14;
    v37 = v11;
    v38 = a1;
    v39 = *(a4 + 96);
    v40 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
    v103 = (a4 + 64);
    v41 = v108;
    v39(&v110, &type metadata for Int, v40, a3, a4);
    a1 = v38;
    v11 = v37;
    v14 = v36;
    v17 = v35;
    a2 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v41, a3);
    v43 = v41;
    v16 = v103;
    result = (*(v11 + 8))(v43, a3);
    if (v42)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = v109(a3, a4);
    v17 = *(a4 + 128);
    v23 = v17(a3, a4);
    if (v22)
    {
      v107 = a2;
      v103 = v17;
      if (v23 <= 64)
      {
        v45 = v105;
        v44 = v106;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v47 = v104;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
        v48 = v108;
        (v44[3])(v47, a3, v44);
        a2 = v107;
        LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v107, v48, a3);
        result = (*(v11 + 8))(v48, a3);
        if (v44)
        {
          goto LABEL_16;
        }

        result = (*(a4 + 120))(a3, a4);
        v17 = v103;
        if (result < -8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v110 = -8;
        v26 = v14;
        v27 = v11;
        v28 = a1;
        v29 = *(a4 + 96);
        v30 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
        v31 = v108;
        v29(&v110, &type metadata for Int, v30, a3, a4);
        a1 = v28;
        v11 = v27;
        v14 = v26;
        v32 = v107;
        v33 = (*(*(*(a4 + 32) + 8) + 16))(v107, v31, a3);
        v34 = v31;
        v16 = (a4 + 64);
        a2 = v32;
        result = (*(v11 + 8))(v34, a3);
        v17 = v103;
        if (v33)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v23 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result < -8)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v50 = v109(a3, a4);
  v102[1] = a4 + 128;
  v51 = v17(a3, a4);
  if (v50)
  {
    if (v51 > 64)
    {
      goto LABEL_19;
    }
  }

  else if (v51 >= 64)
  {
LABEL_19:
    v110 = 8;
    v107 = a2;
    v54 = v17;
    v55 = v14;
    v56 = v11;
    v57 = a1;
    v58 = *(a4 + 96);
    v59 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
    v103 = v16;
    v60 = v108;
    v58(&v110, &type metadata for Int, v59, a3, a4);
    a1 = v57;
    v11 = v56;
    v14 = v55;
    v17 = v54;
    a2 = v107;
    v61 = (*(*(*(a4 + 32) + 8) + 16))(v60, v107, a3);
    v62 = v60;
    v16 = v103;
    result = (*(v11 + 8))(v62, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    LOBYTE(v49) = 0;
    goto LABEL_51;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 8)
  {
    goto LABEL_23;
  }

LABEL_24:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v63 = v17(a3, a4);
  if (v63 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v110 = 0x8000000000000000;
  v66 = v17;
  v67 = v14;
  v68 = v11;
  v69 = a1;
  v70 = *(a4 + 96);
  v71 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
  v103 = v16;
  v72 = v108;
  v70(&v110, &type metadata for Int, v71, a3, a4);
  a1 = v69;
  v11 = v68;
  v14 = v67;
  v17 = v66;
  v73 = (*(*(*(a4 + 32) + 8) + 16))(v14, v72, a3);
  (*(v11 + 8))(v72, a3);
  if (v73)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v109(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v90 = v109(a3, a4);
  v91 = v17(a3, a4);
  if (v90)
  {
    if (v91 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v91 >= 64)
  {
LABEL_41:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = v14;
    v95 = a1;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a1 = v95;
    v14 = v94;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
    (*(v11 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) == 0)
  {
    if (v100 < 8)
    {
      v49 = v101 << v100;
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  if (v100 <= 0xFFFFFFFFFFFFFFF8)
  {
    v49 = v101 >> 7;
  }

  else
  {
    v49 = v101 >> -v100;
  }

LABEL_51:
  *a1 = v49;
  return result;
}