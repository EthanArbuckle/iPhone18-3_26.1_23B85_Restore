void MutableCollection.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v20 = *(*a1 + 96);
  v21 = *(*a1 + 104);
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = v2[8];
    v7 = v2[6];
    v8 = v2[4];
    v16 = v2[5];
    v17 = v2[3];
    v9 = v2[1];
    v18 = v2[2];
    v19 = v2[7];
    v15 = *v2;
    v10 = *(*a1 + 80);
    v11 = *(*a1 + 112);
    (*(v6 + 16))(v5, v10);
    (*(v3 + 32))(v20, v21, v9);
    v11(v8, v15, v16, v9, v17);
    (*(v3 + 8))(v20, v9);
    v4 = v10;
    (*(v18 + 40))(v5, v7, v15);
    (*(v6 + 8))(v10, v19);
  }

  else
  {
    v7 = v2[6];
    v13 = v2[1];
    v12 = v2[2];
    v14 = *v2;
    (*(*a1 + 112))(v2[4], *v2, v2[5], v13, v2[3]);
    (*(v3 + 8))(v21, v13);
    (*(v12 + 40))(v4, v7, v14, v12);
  }

  free(v21);
  free(v20);
  free(v4);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t MutableCollection.subscript.getter@<X0>(const char *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v5, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v49 = v8;
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v42 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v13);
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v43 = &v42 - v16;
  v52 = *(v7 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  v25 = type metadata accessor for PartialRangeFrom(0, v7, AssociatedConformanceWitness, v24);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v29 = *(v5 + 64);
  v54 = a1;
  v55 = v3;
  v53 = v5;
  v29(a1, v5);
  if (((*(*(AssociatedConformanceWitness + 8) + 8))(v23, v23, v7) & 1) == 0 || (v42 = v25, v30 = v52, v31 = *(v52 + 32), v31(v28, v23, v7), (*(v30 + 16))(v21, v28, v7), v32 = v51, (*(v53 + 72))(v54), ((*(AssociatedConformanceWitness + 24))(v21, v32, v7, AssociatedConformanceWitness) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v26 + 8))(v28, v42);
  v33 = v44;
  v31(v44, v21, v7);
  v34 = v49;
  v31(&v33[*(v49 + 48)], v32, v7);
  v36 = v47;
  v35 = v48;
  (*(v47 + 16))(v48, v33, v34);
  v51 = *(v34 + 48);
  v37 = v43;
  v31(v43, v35, v7);
  v38 = *(v52 + 8);
  v38(&v51[v35], v7);
  (*(v36 + 32))(v35, v33, v34);
  v39 = *(v34 + 48);
  v40 = v46;
  v31(&v37[*(v46 + 36)], &v35[v39], v7);
  v38(v35, v7);
  (*(v53 + 88))(v37, v54);
  return (*(v45 + 8))(v37, v40);
}

void (*MutableCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5))(uint64_t *a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x38, 0x4A43uLL);
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a5;
  v9[2] = v5;
  *v9 = a4;
  swift_getAssociatedTypeWitness(0, *(a5 + 8), a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc(v13, 0x4A43uLL);
    v14 = swift_coroFrameAlloc(v13, 0x4A43uLL);
  }

  else
  {
    v10[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[6] = v14;
  MutableCollection.subscript.getter(a4, a5, v14);
  return MutableCollection.subscript.modify;
}

void MutableCollection.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = *(v2 + 8);
    v8 = *v2;
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized MutableCollection.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    specialized MutableCollection.subscript.setter(*(*a1 + 48), *v2, *(v2 + 8));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Range.overlaps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 36);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(v8 + 24);
  if (v9(a1 + v6, v3, v7, v8) & 1) != 0 || (v10 = *(a2 + 36), (v9(v3 + v10, a1, v7, v8)) || (v11 = *(v8 + 8), v12 = *(v11 + 8), (v12(v3, v3 + v10, v7, v11)))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12(a1, a1 + v6, v7, v11) ^ 1;
  }

  return v13 & 1;
}

Swift::Void __swiftcall RangeReplaceableCollection.reserveCapacity(_:)(Swift::Int a1)
{
  _swift_displayCrashMessage();
}

{
  _swift_displayCrashMessage();
}

uint64_t RangeReplaceableCollection.init(repeating:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  swift_getAssociatedTypeWitness(255, *(a4[1] + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v13 = type metadata accessor for Repeated(0, v9, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = a4[3];
  v28 = a5;
  v20(a3, a4);
  if (a2)
  {
    v21 = v29;
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v17 = a2;
    (*(*(v10 - 8) + 32))(&v17[*(v13 + 28)], v21, v10);
    (*(v14 + 32))(v19, v17, v13);
    v22 = a4[9];
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, v13, v23);
    return v22(v19, v13, WitnessTable, a3, a4);
  }

  else
  {
    v26 = *(*(v10 - 8) + 8);
    v27 = v29;

    return v26(v27, v10);
  }
}

uint64_t RangeReplaceableCollection.append(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v6 + 72))(a2, v6);
  (*(a3 + 80))(a1, v11, a2, a3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t specialized RangeReplaceableCollection.append<A>(contentsOf:)(uint64_t a1, const char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v7, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v12 = *(AssociatedConformanceWitness + 16);
  v12(&v15, v7, AssociatedConformanceWitness);
  if ((v15 & 0x100) == 0)
  {
    do
    {
      if (HIBYTE(*v3))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      *v3 |= (v15 + 1) << (-(__clz(*v3) & 0x18) & 0x18);
      v12(&v15, v7, AssociatedConformanceWitness);
    }

    while (BYTE1(v15) != 1);
  }

  return (*(v8 + 8))(v10, v7);
}

{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v7, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v12 = *(AssociatedConformanceWitness + 16);
  v12(&v16, v7, AssociatedConformanceWitness);
  if ((v16 & 0x100000000) == 0)
  {
    do
    {
      v13._rawBits = *(v3 + 8);
      specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v13._rawBits, v13);
      v12(&v16, v7, AssociatedConformanceWitness);
    }

    while (BYTE4(v16) != 1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t RangeReplaceableCollection.append<A>(contentsOf:)(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v8 = *(*(a4 + 8) + 8);
  v32 = a2;
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v16 = type metadata accessor for Optional(0, v10, v14, v15);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v20 = v19;
  v29 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v20, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v24 = *(AssociatedConformanceWitness + 16);
  v34 = v22;
  v35 = v20;
  v30 = v24;
  v31 = AssociatedConformanceWitness;
  (v24)(v20);
  v25 = v10;
  v26 = *(v11 + 48);
  if (v26(v18, 1, v25) != 1)
  {
    v27 = *(v11 + 32);
    do
    {
      v27(v13, v18, v25);
      (*(v33 + 64))(v13, v32);
      v30(v35, v31);
    }

    while (v26(v18, 1, v25) != 1);
  }

  return (*(v29 + 8))(v34, v35);
}

uint64_t specialized RangeReplaceableCollection.insert(_:at:)(uint64_t result, unsigned int a2)
{
  v3 = *v2;
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = *v2;
    while (v4 != a2)
    {
      v5 = v4 >= 0x100;
      v4 >>= 8;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    v6 = *v2;
    while (v6 != a2)
    {
      v5 = v6 >= 0x100;
      v6 >>= 8;
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v3 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v3 == a2)
  {
    v7 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v10 = 0;
  v11 = *v2;
  do
  {
    if (v3 < v11 || v11 <= a2)
    {
      goto LABEL_27;
    }

    if (HIBYTE(v10))
    {
      goto LABEL_10;
    }

    v10 |= v11 << (-(__clz(v10) & 0x18) & 0x18);
    v11 >>= 8;
  }

  while (v11 != a2);
  if (HIBYTE(v10))
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = __clz(v10) & 0x18;
LABEL_15:
  v8 = ((result + 1) << (-v7 & 0x18)) | v10;
  if (a2)
  {
    v9 = a2;
    while (v9 <= a2)
    {
      if (HIBYTE(v8))
      {
        goto LABEL_10;
      }

      v8 |= v9 << (-(__clz(v8) & 0x18) & 0x18);
      v5 = v9 >= 0x100;
      v9 >>= 8;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

LABEL_27:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_20:
  *v2 = v8;
  return result;
}

uint64_t RangeReplaceableCollection.insert(_:at:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = v4;
  v52 = a1;
  v47 = a4;
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, *(v8 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v50 = v9;
  v51 = type metadata accessor for CollectionOfOne(0, v9, v10, v11);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v42 - v12;
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  swift_getTupleTypeMetadata2(0, v14, v14, "lower upper ", 0);
  v16 = v15;
  v46 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v53 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v24 = type metadata accessor for Range(0, v14, AssociatedConformanceWitness, v23);
  v48 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - v25;
  if (((*(AssociatedConformanceWitness + 24))(a2, a2, v14, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v27 = *(v14 - 8);
  v28 = v27;
  v44 = v24;
  v29 = *(v27 + 16);
  v45 = v5;
  v29(v21, a2, v14);
  v29(&v21[*(v16 + 48)], a2, v14);
  v30 = v46;
  (*(v46 + 16))(v19, v21, v16);
  v42 = *(v16 + 48);
  v43 = v26;
  v31 = *(v28 + 32);
  v31(v26, v19, v14);
  v32 = *(v28 + 8);
  v32(&v19[v42], v14);
  (*(v30 + 32))(v19, v21, v16);
  v33 = v44;
  v31(&v26[*(v44 + 36)], &v19[*(v16 + 48)], v14);
  v32(v19, v14);
  v34 = v49;
  (*(*(v50 - 8) + 32))(v49, v52);
  v35 = v47;
  v36 = *(v47 + 32);
  v37 = v51;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v51, v38);
  v40 = v43;
  v36(v43, v34, v37, WitnessTable, v53, v35);
  return (*(v48 + 8))(v40, v33);
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(Swift::UInt64 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  if ((v3 & 0x1000000000000000) != 0)
  {
    v10 = *&_StringGuts.foreignErrorCorrectedScalar(startingAt:)((v6._rawBits & 0xFFFFFFFFFFFF0000));
    v18._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
    v16._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v18)._rawBits;
  }

  else
  {
    v8 = v6._rawBits >> 16;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v20 = v2;
      v21 = v3 & 0xFFFFFFFFFFFFFFLL;
      v10 = _decodeScalar(_:startingAt:)(&v20, v7._rawBits, v8);
      v11._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits >> 16;
      v20 = v2;
      v21 = v3 & 0xFFFFFFFFFFFFFFLL;
      v13 = *(&v20 + v11._rawBits);
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v9 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = v6._rawBits >> 16;
        v9 = _StringObject.sharedUTF8.getter(v2, v3);
        v8 = v19;
      }

      v10 = _decodeScalar(_:startingAt:)(v9, v7._rawBits, v8);
      v11._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits >> 16;
      if ((v2 & 0x1000000000000000) != 0)
      {
        v12 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v12 = _StringObject.sharedUTF8.getter(v2, v3);
      }

      v13 = v12[v11._rawBits];
    }

    v14 = v13;
    v15 = __clz(v13 ^ 0xFF) - 24;
    if (v14 >= 0)
    {
      LOBYTE(v15) = 1;
    }

    v16._rawBits = ((v11._rawBits + v15) << 16) | 5;
  }

  if (v16._rawBits >> 14 < a1 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(a1, v16);
  return v10;
}

{
  if (!((*(v1 + 8) ^ *v1) >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = Substring.subscript.getter(a1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v4._rawBits = Substring.index(after:)(a1)._rawBits;
  if (v4._rawBits >> 14 < a1 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5._rawBits = v4._rawBits;
  v6._rawBits = a1;
  specialized Substring._replaceSubrange<A>(_:with:)(v6, v5);
  return v3;
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(unsigned int a1)
{
  v2 = *v1;
  if (!*v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_16:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = a1 >> 8;
  v4 = a1 >> 8;
  v5 = *v1;
  while (v5 != a1)
  {
    v6 = v5 >= 0x100;
    v5 >>= 8;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  if (a1 >= 0x100)
  {
    v9 = *v1;
    while (v9 != v3)
    {
      v6 = v9 >= 0x100;
      v9 >>= 8;
      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  if (v2 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = 0;
  if (v2 != a1)
  {
    v10 = *v1;
    do
    {
      if (v2 < v10 || v10 <= a1)
      {
        goto LABEL_27;
      }

      if (HIBYTE(v7))
      {
        goto LABEL_16;
      }

      v7 |= v10 << (-(__clz(v7) & 0x18) & 0x18);
      v10 >>= 8;
    }

    while (v10 != a1);
    if (v2 < v3)
    {
LABEL_27:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (a1 >= 0x100)
  {
    while (v4 - 1 < v3)
    {
      if (HIBYTE(v7))
      {
        goto LABEL_16;
      }

      v7 |= v4 << (-(__clz(v7) & 0x18) & 0x18);
      v6 = v4 >= 0x100;
      v4 >>= 8;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_27;
  }

LABEL_12:
  result = a1 - 1;
  *v1 = v7;
  return result;
}

{
  v2 = *(v1 + 4);
  if (!*(v1 + 4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0xF0u)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *v1;
  v4 = a1 + 16;
  if (v2 < a1)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 16);
  if (v2 < v5)
  {
    v5 = *(v1 + 4);
  }

  if (v5 != v4 || (v6 = -(((a1 + 16) - a1 + ((((a1 + 16) - a1) & 0xF000u) >> 12)) >> 4), (v6 + (v2 >> 4)) >= 3))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 = (v3 >> ((v4 >> 1) & 0x18) >> ((v4 >> 1) & 0x18) << ((16 * v6 + v4) & 0x10)) | v3 & ((1 << ((a1 >> 1) & 0x18) << ((a1 >> 1) & 0x18)) - 1);
  *(v1 + 4) = v2 + 16 * v6;
  return v3 >> a1;
}

{
  v2 = *(v1 + 4);
  if (!*(v1 + 4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0xF8u)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *v1;
  v4 = a1 + 8;
  if (v2 < a1)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 8);
  if (v2 < v5)
  {
    v5 = *(v1 + 4);
  }

  if (v5 != v4 || (v6 = -(((a1 + 8) - a1 + ((((a1 + 8) - a1) & 0xE000u) >> 13)) >> 3), (v6 + (v2 >> 3)) >= 5))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 = (v3 >> ((v4 >> 1) & 0x1C) >> ((v4 >> 1) & 0x1C) << ((8 * v6 + v4) & 0x18)) | v3 & ((1 << ((a1 >> 1) & 0x1C) << ((a1 >> 1) & 0x1C)) - 1);
  *(v1 + 4) = v2 + 8 * v6;
  return v3 >> a1;
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(Swift::String::Index a1, uint64_t a2)
{
  v3 = *v2 >> 14;
  v4 = v2[1] >> 14;
  if (v3 == v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5._rawBits = a1._rawBits;
  v6 = v2[2];
  v7 = v2[3];
  v8 = (v7 & 0x1000000000000000) == 0 || (v6 & 0x800000000000000) != 0;
  v9 = a1._rawBits & 0xC;
  v10 = 4 << v8;
  if ((a1._rawBits & 1) != 0 && v9 != v10)
  {
    if (a1._rawBits >> 14 >= v3 && a1._rawBits >> 14 < v4)
    {
      goto LABEL_22;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 == v10)
  {
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
  }

  if (a1._rawBits >> 14 < v3 || a1._rawBits >> 14 >= v4)
  {
    goto LABEL_20;
  }

  if ((a1._rawBits & 1) == 0)
  {
    a1._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    v15 = *&_StringGuts.foreignErrorCorrectedScalar(startingAt:)((a1._rawBits & 0xFFFFFFFFFFFF0000));
    v23._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits;
    v21._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v23)._rawBits;
    goto LABEL_33;
  }

LABEL_22:
  if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  v13 = a1._rawBits >> 16;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v27 = v6;
    v28 = v7 & 0xFFFFFFFFFFFFFFLL;
    v15 = _decodeScalar(_:startingAt:)(&v27, a2, v13);
    v16._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits >> 16;
    v27 = v6;
    v28 = v7 & 0xFFFFFFFFFFFFFFLL;
    v18 = *(&v27 + v16._rawBits);
  }

  else
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v14 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = a1._rawBits >> 16;
      v14 = _StringObject.sharedUTF8.getter(v6, v7);
      v13 = v24;
    }

    v15 = _decodeScalar(_:startingAt:)(v14, a2, v13);
    v16._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits >> 16;
    if ((v6 & 0x1000000000000000) != 0)
    {
      v17 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = v6;
      rawBits = v16._rawBits;
      v17 = _StringObject.sharedUTF8.getter(v25, v7);
      v16._rawBits = rawBits;
    }

    v18 = v17[v16._rawBits];
  }

  v19 = v18;
  v20 = __clz(v18 ^ 0xFF) - 24;
  if (v19 >= 0)
  {
    LOBYTE(v20) = 1;
  }

  v21._rawBits = ((v16._rawBits + v20) << 16) | 5;
LABEL_33:
  if (v21._rawBits >> 14 < v5._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v5._rawBits, v21);
  return v15;
}

uint64_t RangeReplaceableCollection.remove(at:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v61 = a1;
  v59 = a4;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v50 - v14;
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v19 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v50 - v21;
  if ((*(v7 + 104))(a2, v7))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v51 = v20;
  v52 = v19;
  v53 = a3;
  v22 = v61;
  v23 = (*(v7 + 80))(v62, v61, a2, v7);
  v24 = a2;
  v26 = v25;
  swift_getAssociatedTypeWitness(0, *(v7 + 8), v24, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v28 = *(*(v27 - 8) + 16);
  v50 = v27;
  v28(v59, v26);
  v23(v62, 0);
  v29 = *(v7 + 184);
  v30 = v16;
  v59 = v24;
  v29(v22, v24, v7);
  if (((*(AssociatedConformanceWitness + 24))(v22, v16, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v31 = v54;
  v32 = *(v54 + 16);
  v33 = v56;
  v34 = v61;
  v61 = v4;
  v32(v56, v34, v9);
  v35 = v58;
  v36 = *(v31 + 32);
  v36(&v33[*(v58 + 48)], v30, v9);
  v37 = v57;
  v38 = v55;
  (*(v57 + 16))(v55, v33, v35);
  v39 = *(v35 + 48);
  v36(v60, v38, v9);
  v40 = *(v31 + 8);
  v40(&v38[v39], v9);
  (*(v37 + 32))(v38, v33, v35);
  v41 = *(v35 + 48);
  v42 = v52;
  v43 = v60;
  v36(&v60[*(v52 + 36)], &v38[v41], v9);
  v40(v38, v9);
  v44 = *(v53 + 32);
  v47 = type metadata accessor for EmptyCollection(0, v50, v45, v46);
  swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v47, v48);
  v44(v43);
  return (*(v51 + 8))(v43, v42);
}

uint64_t RangeReplaceableCollection._customRemoveLast()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return RangeReplaceableCollection._customRemoveLast()(a1, a2, a3);
}

{
  swift_getAssociatedTypeWitness(0, *(*(a2 + 8) + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

void specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1)
{
  if (a1)
  {
    v2 = v1[1];
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *v1;
    }

    v4 = 7;
    if (((v2 >> 60) & ((*v1 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5._rawBits = v4 | (v3 << 16);
    specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v5);
  }

  else
  {
    v1[1];
    *v1 = 0;
    v1[1] = 0xE000000000000000;
  }
}

double specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1, void (*a2)(void))
{
  if (a1)
  {
    if (v2[1] >> 14 < *v2 >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a2();
  }

  else
  {
    v2[3];
    *&result = 15;
    *v2 = xmmword_18071DB90;
    v2[2] = 0;
    v2[3] = 0xE000000000000000;
  }

  return result;
}

Swift::Void __swiftcall RangeReplaceableCollection.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = v1;
  v5 = v2;
  v6 = *(v2 + 8);
  swift_getAssociatedTypeWitness(255, v6, v1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v54 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v46 - v15;
  v52 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v55 = v6;
  v56 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v23 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  if (keepingCapacity)
  {
    v50 = v5;
    v51 = &v46 - v25;
    v48 = v26;
    v49 = v24;
    v47 = v10;
    v27 = v55;
    v28 = v56;
    (v55[8])(v56, v55);
    (v27[9])(v28, v27);
    if (((*(AssociatedConformanceWitness + 24))(v20, v18, v8, AssociatedConformanceWitness) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v30 = v52;
    v29 = v53;
    v31 = *(v52 + 32);
    v31(v53, v20, v8);
    v32 = v54;
    v31(&v29[*(v54 + 48)], v18, v8);
    v33 = v47;
    (*(v47 + 16))(v13, v29, v32);
    v34 = *(v32 + 48);
    v31(v51, v13, v8);
    v35 = *(v30 + 8);
    v35(&v13[v34], v8);
    (*(v33 + 32))(v13, v29, v32);
    v36 = *(v32 + 48);
    v37 = v49;
    v38 = v51;
    v31(&v51[*(v49 + 36)], &v13[v36], v8);
    v35(v13, v8);
    v39 = *(v50 + 32);
    swift_getAssociatedTypeWitness(255, v55[1], v56, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v43 = type metadata accessor for EmptyCollection(0, v40, v41, v42);
    swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v43, v44);
    v39(v38);
    (*(v48 + 8))(v38, v37);
  }

  else
  {
    v45 = v56;
    (*(*(v56 - 1) + 8))(v57, v56);
    (*(v5 + 24))(v45, v5);
  }
}

uint64_t RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(char *), uint64_t a2, const char *a3, uint64_t a4)
{
  return RangeReplaceableCollection.removeAll(where:)(a1, a2, a3, a4);
}

{
  v52 = a4;
  v56 = a1;
  v57 = a2;
  v59 = *(*(a4 + 8) + 8);
  v6 = v59;
  swift_getAssociatedTypeWitness(0, v59, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v48 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v15 = type metadata accessor for Optional(0, v8, v13, v14);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  swift_getAssociatedTypeWitness(0, v6, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v19 = v18;
  v45 = *(v18 - 1);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v44 = v26;
  (*(v26 + 16))(&v43 - v27, v46, a3);
  v28 = *(v52 + 24);
  v50 = v25;
  v28(a3);
  v29 = v59;
  (v59[4])(a3);
  v51 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v29, a3, v19, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v31 = *(AssociatedConformanceWitness + 16);
  v58 = v22;
  v59 = v19;
  v54 = v31;
  v55 = AssociatedConformanceWitness;
  (v31)(v19);
  v32 = v48;
  v53 = *(v48 + 48);
  if (v53(v17, 1, v8) == 1)
  {
LABEL_2:
    v33 = v44;
    v34 = v46;
    v35 = v51;
    (*(v44 + 8))(v46, v51);
    (*(v45 + 8))(v58, v59);
    return (*(v33 + 32))(v34, v50, v35);
  }

  else
  {
    v39 = *(v32 + 32);
    v37 = v32 + 32;
    v38 = v39;
    v47 = v52 + 64;
    v48 = v37 - 24;
    while (1)
    {
      v41 = v37;
      v38(v12, v17, v8);
      v42 = v56(v12);
      if (v4)
      {
        break;
      }

      if (v42)
      {
        (*v48)(v12, v8);
      }

      else
      {
        v40 = v49;
        v38(v49, v12, v8);
        (*(v52 + 64))(v40, v51);
      }

      v54(v59, v55);
      v37 = v41;
      if (v53(v17, 1, v8) == 1)
      {
        goto LABEL_2;
      }
    }

    (*v48)(v12, v8);
    (*(v45 + 8))(v58, v59);
    return (*(v44 + 8))(v50, v51);
  }
}

void specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(void *))
{
  v4 = v1[1];
  v5 = 0xE000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  v30[2] = *v1;
  v30[3] = v4;
  v30[4] = 0;
  v30[5] = v6;
  v31 = 0;
  v33 = v4;
  v4;
  v7 = String.Iterator.next()();
  if (v7.value._object)
  {
    countAndFlagsBits = v7.value._countAndFlagsBits;
    object = v7.value._object;
    while (1)
    {
      v30[0] = countAndFlagsBits;
      v30[1] = object;
      v12 = a1(v30);
      if (v2)
      {
        v33;
        object;
        v32;
        return;
      }

      if ((v12 & 1) == 0)
      {
        v21 = v32;
        v22 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v22 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v22 && (v31 & ~v32 & 0x2000000000000000) == 0)
        {
          v32;
          v31 = countAndFlagsBits;
          v32 = object;
          goto LABEL_10;
        }

        if ((object & 0x2000000000000000 & v32) != 0)
        {
          v23 = specialized _SmallString.init(_:appending:)(v31, v32, countAndFlagsBits, object);
          if ((v25 & 1) == 0)
          {
            v26 = v23;
            v27 = v24;
            object;
            v21;
            v31 = v26;
            v32 = v27;
            goto LABEL_10;
          }
        }

        if ((object & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(object) & 0xF;
        }

        else
        {
          v10 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        _StringGuts.append(_:)(countAndFlagsBits, object, 0, v10, v13, v14, v15, v16, v17, v18, v19, v20);
      }

      object;
LABEL_10:
      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
      if (!v11.value._object)
      {
        v28 = v31;
        v5 = v32;
        goto LABEL_24;
      }
    }
  }

  v28 = 0;
LABEL_24:
  swift_bridgeObjectRelease_n(v33, 2);
  *v29 = v28;
  v29[1] = v5;
}

void specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v43 = 0;
  v44 = 0xE000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v45 = v6;
  if (!v6)
  {
    v4;
    v38 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_27;
  }

  v7 = a2;
  v9 = 0;
  v41 = v5;
  do
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v9 << 16));
      scalarLength = v14.scalarLength;
      value = v14._0._value;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v42[0] = v5;
        v42[1] = v4 & 0xFFFFFFFFFFFFFFLL;
        v11 = v42;
      }

      else
      {
        v11 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          v11 = _StringObject.sharedUTF8.getter(v5, v4);
        }
      }

      value = _decodeScalar(_:startingAt:)(v11, a2, v9);
    }

    v15 = value;
    v16 = scalarLength;
    LODWORD(v42[0]) = value;
    v17 = a1(v42);
    if (v3)
    {
      v44;
      return;
    }

    if ((v17 & 1) == 0)
    {
      v18 = a1;
      v19 = v7;
      v21 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v15);
      v30 = v20;
      v31 = v44;
      if ((v44 & 0x2000000000000000) != 0)
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v32 = specialized _SmallString.init(_:appending:)(v43, v44, v21, v20);
          if ((v34 & 1) == 0)
          {
            v35 = v32;
            v36 = v30;
            v37 = v33;
            v36;
            v31;
            v43 = v35;
            v44 = v37;
            goto LABEL_7;
          }

          goto LABEL_23;
        }
      }

      else if ((v20 & 0x2000000000000000) != 0)
      {
LABEL_23:
        v10 = HIBYTE(v30) & 0xF;
        goto LABEL_6;
      }

      v10 = v21 & 0xFFFFFFFFFFFFLL;
LABEL_6:
      _StringGuts.append(_:)(v21, v30, 0, v10, v22, v23, v24, v25, v26, v27, v28, v29);
      v30;
LABEL_7:
      v7 = v19;
      a1 = v18;
      v5 = v41;
    }

    v9 += v16;
  }

  while (v9 < v45);
  v4;
  v38 = v43;
  v39 = v44;
  v2 = v40;
LABEL_27:
  *v2 = v38;
  v2[1] = v39;
}

{
  v24 = a2;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *&v21[0]._rawBits = xmmword_18071DB90;
  v8 = 0xE000000000000000;
  v22 = 0;
  v23 = 0xE000000000000000;
  if ((v4 ^ v5) >= 0x4000)
  {
    v12._rawBits = v4;
    do
    {
      v13 = Substring.subscript.getter(v12._rawBits, v4, v5, v7, v6);
      v15 = v14;
      v12._rawBits = Substring.index(after:)(v12)._rawBits;
      v20[0] = v13;
      v20[1] = v15;
      v16 = a1(v20);
      if (v3)
      {
        v15;
        v23;
        return;
      }

      if ((v16 & 1) == 0)
      {
        v17._rawBits = v21[1]._rawBits;
        v18._rawBits = v21[1]._rawBits;
        specialized Substring._replaceSubrange<A>(_:with:)(v17, v18, v13, v15);
      }

      v15;
    }

    while ((v12._rawBits ^ v5) >= 0x4000);
    rawBits = v21[0]._rawBits;
    v11 = v21[1]._rawBits;
    v9 = v22;
    v8 = v23;
  }

  else
  {
    v9 = 0;
    rawBits = 15;
    v11 = 7;
  }

  v6;
  *v2 = rawBits;
  v2[1] = v11;
  v2[2] = v9;
  v2[3] = v8;
}

void specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(unint64_t *), uint64_t a2)
{
  v5._rawBits = *v2;
  v4 = v2[1];
  v6 = v2[3];
  v36 = v2[2];
  *&v39[0]._rawBits = xmmword_18071DB90;
  v40 = 0;
  v41 = 0xE000000000000000;
  v7 = v4 >> 14;
  v8 = v5._rawBits >> 14;
  if (v5._rawBits >> 14 == v4 >> 14)
  {
    v6;
    v9 = xmmword_18071DB90;
    v10 = 0;
    v11 = 0xE000000000000000;
LABEL_3:
    *v2 = v9;
    v2[2] = v10;
    v2[3] = v11;
  }

  else
  {
    v42 = a1;
    v12 = (v36 >> 59) & 1;
    if ((v6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v12) = 1;
    }

    v13 = 4 << v12;
    v14 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v15 = v5._rawBits >> 14;
    while (1)
    {
      if ((v5._rawBits & 0xC) == v13 || (v5._rawBits & 1) == 0)
      {
        rawBits = v5._rawBits;
        if ((v5._rawBits & 0xC) == v13)
        {
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
        }

        if (rawBits >> 14 < v8 || rawBits >> 14 >= v7)
        {
LABEL_37:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((rawBits & 1) == 0)
        {
          rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
        }
      }

      else
      {
        if (v15 < v8)
        {
          goto LABEL_37;
        }

        rawBits = v5._rawBits;
        if (v15 >= v7)
        {
          goto LABEL_37;
        }
      }

      v33 = v14;
      v34 = v13;
      if ((v6 & 0x1000000000000000) != 0)
      {
        value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
        v30._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits;
        v26 = value;
        v5._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v30)._rawBits;
      }

      else
      {
        v18 = rawBits >> 16;
        if ((v6 & 0x2000000000000000) != 0)
        {
          v37 = v36;
          v38 = v6 & 0xFFFFFFFFFFFFFFLL;
          v35 = _decodeScalar(_:startingAt:)(&v37, a2, v18);
          v22 = _StringGuts.validateScalarIndex(_:)(v5)._rawBits >> 16;
          v37 = v36;
          v38 = v6 & 0xFFFFFFFFFFFFFFLL;
          v23 = *(&v37 + v22);
        }

        else
        {
          v19 = v14;
          if ((v36 & 0x1000000000000000) == 0)
          {
            v31 = v18;
            v19 = _StringObject.sharedUTF8.getter(v36, v6);
            v18 = v31;
          }

          v35 = _decodeScalar(_:startingAt:)(v19, a2, v18);
          v20._rawBits = _StringGuts.validateScalarIndex(_:)(v5)._rawBits;
          v21 = v14;
          if ((v36 & 0x1000000000000000) == 0)
          {
            v32 = v20._rawBits;
            v21 = _StringObject.sharedUTF8.getter(v36, v6);
            v20._rawBits = v32;
          }

          v22 = v20._rawBits >> 16;
          v23 = v21[v22];
        }

        v24 = v23;
        v25 = __clz(v23 ^ 0xFF) - 24;
        if (v24 >= 0)
        {
          LOBYTE(v25) = 1;
        }

        v5._rawBits = ((v22 + v25) << 16) | 5;
        v26 = v35;
      }

      LODWORD(v37) = v26;
      v27 = v42(&v37);
      if (v3)
      {
        break;
      }

      if ((v27 & 1) == 0)
      {
        v28._rawBits = v39[1]._rawBits;
        specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v39[1]._rawBits, v28);
      }

      v15 = v5._rawBits >> 14;
      v14 = v33;
      v13 = v34;
      if (v5._rawBits >> 14 == v7)
      {
        v6;
        v9 = *&v39[0]._rawBits;
        v10 = v40;
        v11 = v41;
        goto LABEL_3;
      }
    }

    v41;
  }
}

uint64_t specialized RangeReplaceableCollection.removeAll(where:)(uint64_t result)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = result;
    v5 = 0;
LABEL_3:
    v6 = v3;
    while (1)
    {
      v8 = v6 - 1;
      result = v4(&v8);
      if (v2)
      {
        break;
      }

      v3 = v6 >> 8;
      if ((result & 1) == 0)
      {
        if (HIBYTE(v5))
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v5 |= v6 << (-(__clz(v5) & 0x18) & 0x18);
        if (v6 >= 0x100)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }

      v7 = v6 >= 0x100;
      v6 >>= 8;
      if (!v7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_12:
    *v1 = v5;
  }

  return result;
}

uint64_t Repeated.init(_repeating:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a5 = a2;
  v8 = type metadata accessor for Repeated(0, a3, a3, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a1, a3);
}

uint64_t RangeReplaceableCollection.replaceSubrange<A, B>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, swift *a8)
{
  v25 = a4;
  v26 = a7;
  v24 = a2;
  v13 = *(a6 + 8);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a8, a5, v14, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v18 = type metadata accessor for Range(0, v15, AssociatedConformanceWitness, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - v20;
  (*(a8 + 3))(v8, a3, v13, a5, a8);
  (*(a6 + 32))(v21, v24, v25, v26, a3, a6);
  return (*(v19 + 8))(v21, v18);
}

uint64_t RangeReplaceableCollection.removeSubrange<A>(_:)(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, swift *a5)
{
  v10 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v10, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v11, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v15 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - v17;
  (*(a5 + 3))(v5, a2, v10, a3, a5);
  (*(a4 + 104))(v18, a2, a4);
  return (*(v16 + 8))(v18, v15);
}

uint64_t specialized RangeReplaceableCollection<>._customRemoveLast()()
{
  rawBits = v0->_rawBits;
  v2 = v0[1]._rawBits;
  v3 = v0->_rawBits >> 14;
  if (v3 == v2 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v0[2]._rawBits;
  v4 = v0[3]._rawBits;
  v6._rawBits = Substring.index(before:)(v0[1])._rawBits;
  v7 = Substring.subscript.getter(v6._rawBits, rawBits, v2, v5, v4);
  v8._rawBits = Substring.index(before:)(v2)._rawBits;
  if (v3 > v8._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9._rawBits = v8._rawBits;
  v10 = specialized Substring.subscript.getter(rawBits, v9, rawBits, v2, v5, v4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v15;
  v4;
  v0->_rawBits = v10;
  v0[1]._rawBits = v12;
  v0[2]._rawBits = v14;
  v0[3]._rawBits = v16;
  return v7;
}

{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5._rawBits = v1;
  v6 = specialized BidirectionalCollection.last.getter(*v0, v5, v3, v4);
  if ((v6 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6;
  v8._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v1)._rawBits;
  if (!(v8._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v8)._rawBits;
  }

  else
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v24[0] = v3;
      v24[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v24 + (v8._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v14 = v24 + (v8._rawBits >> 16) - 2;
        v13 = 1;
        do
        {
          ++v13;
          v15 = *v14--;
        }

        while ((v15 & 0xC0) == 0x80);
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v9 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v23 = v8._rawBits;
        v9 = _StringObject.sharedUTF8.getter(v3, v4);
        v8._rawBits = v23;
      }

      v10 = 0;
      v11 = v9 + (v8._rawBits >> 16) - 1;
      do
      {
        v12 = *(v11 + v10--) & 0xC0;
      }

      while (v12 == 128);
      v13 = -v10;
    }

    rawBits = (v8._rawBits - (v13 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  if (rawBits >> 14 < v2 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4;
  v17._rawBits = v2;
  v18._rawBits = rawBits;
  v19 = _StringGuts.validateScalarRange(_:in:)(v17, v18, v2, v1, v3, v4)._rawBits;
  v21 = v20;
  v4;
  *v0 = v19;
  v0[1] = v21;
  v0[2] = v3;
  v0[3] = v4;
  LOBYTE(v24[0]) = 0;
  return v7;
}

uint64_t RangeReplaceableCollection<>._customRemoveLast()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = *(v9 - 8);
  v79 = v9;
  v80 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v67 - v14;
  v87 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v83 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v84 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v67 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v78 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v20);
  v75 = *(v78 - 8);
  v21 = MEMORY[0x1EEE9AC00](v78);
  v74 = &v67 - v22;
  v23 = *(a1 - 1);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v67 - v27;
  swift_getAssociatedTypeWitness(255, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v29 = v28;
  v32 = type metadata accessor for Optional(0, v28, v30, v31);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v67 - v34;
  v36 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v85 = &v67 - v37;
  v89 = a1;
  v38 = a1;
  v39 = a2;
  BidirectionalCollection.last.getter(v38, a2, v35);
  if ((*(v36 + 48))(v35, 1, v29) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v70 = v36;
  v71 = v29;
  v40 = *(v36 + 32);
  v69 = v36 + 32;
  v68 = v40;
  v40(v85, v35, v29);
  v41 = *(v23 + 16);
  v42 = v89;
  v41(v88, v3, v89);
  v43 = v86;
  (*(v6 + 64))(v42, v6);
  v41(v26, v3, v42);
  v44 = *(v6 + 72);
  v45 = v83;
  v72 = v6;
  v44(v42, v6);
  v48 = *(v23 + 8);
  v46 = v23 + 8;
  v47 = v48;
  v73 = v3;
  v48(v3, v42);
  v49 = v39;
  v50 = *(v39 + 32);
  v51 = v84;
  v50(v45, v42, v49);
  v83 = *(v87 + 8);
  (v83)(v45, v8);
  v48(v26, v42);
  if (((*(AssociatedConformanceWitness + 24))(v43, v51, v8) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = v47;
  v52 = *(v87 + 32);
  v87 = v46;
  v53 = v76;
  v52(v76, v86, v8);
  v54 = v79;
  v52(&v53[*(v79 + 48)], v51, v8);
  v55 = v80;
  v56 = v77;
  (*(v80 + 16))(v77, v53, v54);
  v57 = *(v54 + 48);
  v58 = v74;
  v52(v74, v56, v8);
  v59 = &v56[v57];
  v60 = v83;
  (v83)(v59, v8);
  (*(v55 + 32))(v56, v53, v54);
  v61 = v78;
  v52(&v58[*(v78 + 36)], &v56[*(v54 + 48)], v8);
  v60(v56, v8);
  v62 = v88;
  v63 = v89;
  (*(v72 + 88))(v58, v89);
  (*(v75 + 8))(v58, v61);
  (AssociatedConformanceWitness)(v62, v63);
  v64 = v81;
  v65 = v71;
  v68(v81, v85, v71);
  return (*(v70 + 56))(v64, 0, 1, v65);
}

uint64_t RangeReplaceableCollection<>.removeLast(_:)(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  return RangeReplaceableCollection<>.removeLast(_:)(a1, a2, a3, a4, 892, 899);
}

{
  return RangeReplaceableCollection<>.removeLast(_:)(a1, a2, a3, a4, 966, 973);
}

uint64_t RangeReplaceableCollection<>.popLast()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v33 = a3;
  v34 = a4;
  v31 = a2;
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v32 = v6;
  v30 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  swift_getAssociatedTypeWitness(255, *(v5 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  if ((*(v5 + 104))(a1, v5))
  {
    v23 = v34;
    v24 = *(v35 + 56);

    return v24(v23, 1, 1, v13);
  }

  else
  {
    (*(v33 + 112))(a1);
    if ((*(v35 + 48))(v20, 1, v13) == 1)
    {
      (*(v17 + 8))(v20, v16);
      (*(v5 + 72))(a1, v5);
      (*(v31 + 32))(v9, a1);
      v26 = *(v30 + 8);
      v27 = v32;
      v26(v9, v32);
      v28 = v34;
      (*(v33 + 96))(v11, a1);
      v26(v11, v27);
    }

    else
    {
      v29 = *(v35 + 32);
      v29(v22, v20, v13);
      v28 = v34;
      v29(v34, v22, v13);
    }

    return (*(v35 + 56))(v28, 0, 1, v13);
  }
}

uint64_t RangeReplaceableCollection<>.removeLast()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v32 = a5;
  v30 = a2;
  v7 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v7, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v31 = v8;
  v29 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  swift_getAssociatedTypeWitness(255, *(v7 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = v14;
  v18 = type metadata accessor for Optional(0, v14, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  if ((*(v7 + 104))(a1, v7))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(a3 + 112);
  v28 = a3;
  v22(a1, a3);
  v23 = *(v15 - 8);
  if ((*(v23 + 48))(v21, 1, v15) != 1)
  {
    return (*(v23 + 32))(v32, v21, v15);
  }

  (*(v19 + 8))(v21, v18);
  (*(v7 + 72))(a1, v7);
  (*(v30 + 32))(v11, a1);
  v24 = *(v29 + 8);
  v25 = v31;
  v24(v11, v31);
  (*(v28 + 96))(v13, a1);
  return (v24)(v13, v25);
}

uint64_t RangeReplaceableCollection<>.removeLast(_:)(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v60 = a4;
  v61 = a5;
  v59 = a3;
  v9 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v9, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  swift_getTupleTypeMetadata2(0, v11, v11, "lower upper ", 0);
  v57 = v12;
  v55 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v48 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a2, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v16);
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v48 - v18;
  v21 = type metadata accessor for Optional(0, v11, v19, v20);
  v48 = *(v21 - 8);
  v49 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - v23;
  v25 = *(v11 - 8);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v48 - v30;
  result = MEMORY[0x1EEE9AC00](v29);
  v34 = &v48 - v33;
  if (!a1)
  {
    return result;
  }

  if (a1 < 0)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35 = *(v60 + 120);
  v61 = v6;
  result = v35(a1, a2);
  if (result)
  {
    return result;
  }

  (*(v9 + 72))(a2, v9);
  (*(v9 + 64))(a2, v9);
  (*(v59 + 7))(v34, -a1, v28, a2);
  v36 = *(v25 + 8);
  (v36)(v28, v11);
  if ((*(v25 + 48))(v24, 1, v11) == 1)
  {
    (*(v48 + 8))(v24, v49);
    goto LABEL_8;
  }

  v37 = *(v25 + 32);
  v37(v31, v24, v11);
  if ((AssociatedConformanceWitness[3](v31, v34, v11) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = v36;
  v59 = a2;
  v38 = v52;
  v37(v52, v31, v11);
  v39 = v57;
  v37(&v38[*(v57 + 48)], v34, v11);
  v41 = v55;
  v40 = v56;
  (*(v55 + 16))(v56, v38, v39);
  v42 = *(v39 + 48);
  v43 = v51;
  v37(v51, v40, v11);
  v44 = &v40[v42];
  v45 = AssociatedConformanceWitness;
  (AssociatedConformanceWitness)(v44, v11);
  (*(v41 + 32))(v40, v38, v39);
  v46 = *(v39 + 48);
  v47 = v54;
  v37(&v43[*(v54 + 36)], &v40[v46], v11);
  (v45)(v40, v11);
  (*(v60 + 104))(v43, v59);
  return (*(v53 + 8))(v43, v47);
}

uint64_t static RangeReplaceableCollection.+ infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v16 - 8) + 16))(a7);
  (*(v13 + 16))(v15, a2, a4);
  return (*(a5 + 72))(v15, a4, a6, a3, a5);
}

{
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v16 - 8) + 16))(a7);
  (*(v13 + 16))(v15, a2, a4);
  return (*(a5 + 72))(v15, a4, *(*(a6 + 8) + 8), a3, a5);
}

uint64_t static RangeReplaceableCollection.+ infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v32 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 24);
  v31[1] = v20;
  v19(v21, v18);
  v22 = *(a5 + 8);
  v23 = *(v22 + 112);
  v35 = a2;
  v24 = v23(a3, v22);
  v25 = *(a6 + 40);
  v34 = a6;
  v26 = v25(a4, a6);
  v27 = __OFADD__(v24, v26);
  result = v24 + v26;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    (*(a5 + 40))(result, a3, a5);
    (*(v15 + 16))(v17, a1, a4);
    v29 = *(a5 + 72);
    v29(v17, a4, v34, a3, a5);
    v30 = v32;
    (*(v33 + 16))(v32, v35, a3);
    return (v29)(v30, a3, *(v22 + 8), a3, a5);
  }

  return result;
}

uint64_t static RangeReplaceableCollection.+= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return (*(a5 + 72))(v11, a4, a6, a3, a5);
}

uint64_t RangeReplaceableCollection.filter(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a1;
  v49 = a2;
  v50 = *(*(a4 + 8) + 8);
  v9 = v50;
  swift_getAssociatedTypeWitness(0, v50, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v40 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v18 = type metadata accessor for Optional(0, v11, v16, v17);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v37 - v19;
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v38 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v37 - v23);
  v25 = *(a4 + 24);
  v42 = a5;
  v44 = a4;
  v25(a3, a4);
  v26 = v50;
  (v50[4])(a3, v50);
  v43 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v26, a3, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v28 = *(AssociatedConformanceWitness + 16);
  v50 = v24;
  v51 = v22;
  v46 = v28;
  v47 = AssociatedConformanceWitness;
  (v28)(v22);
  v29 = v40;
  v45 = *(v40 + 48);
  if (v45(v20, 1, v11) == 1)
  {
    return (*(v38 + 8))(v50, v51);
  }

  v33 = *(v29 + 32);
  v31 = v29 + 32;
  v32 = v33;
  v39 = v44 + 64;
  v40 = v31 - 24;
  while (1)
  {
    v34 = v31;
    v32(v15, v20, v11);
    v35 = v48(v15);
    if (v5)
    {
      break;
    }

    if (v35)
    {
      v36 = v41;
      v32(v41, v15, v11);
      (*(v44 + 64))(v36, v43);
    }

    else
    {
      (*v40)(v15, v11);
    }

    v46(v51, v47);
    v31 = v34;
    if (v45(v20, 1, v11) == 1)
    {
      return (*(v38 + 8))(v50, v51);
    }
  }

  (*v40)(v15, v11);
  (*(v38 + 8))(v50, v51);
  return (*(*(v43 - 1) + 8))(v42, v43);
}

uint64_t RangeReplaceableCollection.removeSubranges(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v45 - v8;
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v13 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v51 = v22;
    v25 = type metadata accessor for RangeSet(0, v10, AssociatedConformanceWitness, v21);
    RangeSet._inverted<A>(within:)(v25, a2, v6, &v58);
    (*(v3 + 24))(a2, v3);
    v26 = v58;
    v27 = *(v58 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = v14 + 16;
      v30 = v14 + 32;
      v50 = v6 + 88;
      v49 = v14 + 8;
      v31 = v3 + 72;
      do
      {
        if (v28 >= v27)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v32 = v26 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28;
        v33 = *(v14 + 16);
        v52 = v31;
        v53 = v29;
        v34 = v54;
        v48 = v26;
        v33(v54, v32, v13);
        (*(v14 + 32))(v19, v34, v13);
        ++v28;
        v35 = *(v6 + 88);
        v47 = v30;
        v36 = v13;
        v37 = v3;
        v38 = v55;
        v35(v19, a2, v6);
        (*(v14 + 8))(v19, v36);
        v46 = *(v37 + 72);
        v39 = v56;
        v40 = *(swift_getAssociatedConformanceWitness(v6, a2, v56, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection) + 8);
        v41 = v38;
        v3 = v37;
        v13 = v36;
        v30 = v47;
        v46(v41, v39, v40, a2, v3);
        v31 = v52;
        v29 = v53;
        v26 = v48;
        v27 = *(v48 + 16);
      }

      while (v28 != v27);
    }

    v42 = v51;
    v43 = v57;
    v44 = v26;
    (*(v51 + 8))(v57, a2);
    v44;
    return (*(v42 + 32))(v43, v24, a2);
  }

  return result;
}

uint64_t MutableCollection<>.removeSubranges(_:)(atomic_ullong **a1, const char *a2, char *a3, uint64_t a4)
{
  v129 = a4;
  v147 = a3;
  v6 = *(a3 + 1);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v128 = v9;
  v126 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v127 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v125 = &v110 - v13;
  v136 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v131 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v130 = &v110 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v146 = &v110 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v145 = &v110 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v137 = &v110 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v110 - v24;
  v132 = v6;
  v133 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v28 = type metadata accessor for Range(255, v8, AssociatedConformanceWitness, v27);
  v144 = type metadata accessor for Optional(0, v28, v29, v30);
  v31 = *(v144 - 8);
  v32 = MEMORY[0x1EEE9AC00](v144);
  v34 = &v110 - v33;
  v35 = *(v28 - 8);
  v36 = MEMORY[0x1EEE9AC00](v32);
  v124 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v138 = &v110 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v139 = &v110 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v110 - v42;
  v44 = *a1;
  v149 = v44;
  v135 = AssociatedConformanceWitness;
  v46 = type metadata accessor for RangeSet.Ranges(0, v8, AssociatedConformanceWitness, v45);
  v143 = v44;
  v44;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v46, v47);
  Collection.first.getter(v46, WitnessTable, v34);
  v149;
  if ((*(v35 + 48))(v34, 1, v28) == 1)
  {
    return (*(v31 + 8))(v34, v144);
  }

  v134 = v35;
  v50 = *(v35 + 32);
  v119 = v35 + 32;
  v118 = v50;
  v50(v43, v34, v28);
  v51 = v46;
  v52 = v136;
  v54 = v136 + 16;
  v53 = *(v136 + 16);
  v53(v25, v43, v8);
  v123 = v28;
  v53(v137, &v43[*(v28 + 36)], v8);
  v148 = v143;
  v143;
  Collection.dropFirst(_:)(1uLL, v51, WitnessTable, &v149);
  v55 = v149;
  v56 = v150;
  v57 = v151;
  v58 = v147;
  if (v149 != v150)
  {
    v82 = *(v135 + 8);
    v83 = (v82 + 8);
    v84 = *(v82 + 8);
    v85 = v134 + 16;
    v86 = v147 + 64;
    v87 = (v132 + 24);
    v117 = (v52 + 8);
    v88 = (v134 + 8);
    v89 = v149;
    do
    {
      if (v89 >= v56)
      {
        goto LABEL_21;
      }

      v141 = v25;
      v113 = v88;
      v114 = v87;
      v140 = v86;
      v142 = v84;
      v143 = v83;
      v144 = v82;
      v115 = v56;
      v122 = v53;
      v116 = v55;
      if (v55 < 0 || v89 >= *(v57 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v90 = v57 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v89;
      v91 = *(v134 + 16);
      v92 = v89;
      v93 = v139;
      v94 = v123;
      v112 = v85;
      v91(v139, v90, v123);
      v95 = *(v57 + 16);
      v111 = v92;
      v96 = v145;
      if (v92 >= v95)
      {
LABEL_21:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v110 = v57;
      v120 = v43;
      v97 = v138;
      v118(v138, v93, v94);
      v121 = v54;
      v122(v96, v97, v8);
      v98 = v137;
      v99 = (v142)(v137, v96, v8, v144);
      v101 = v132;
      v100 = v133;
      v25 = v141;
      v87 = v114;
      if ((v99 & 1) == 0)
      {
        v102 = *v140;
        v103 = *v114;
        do
        {
          v102(v25, v98, v100, v147);
          v103(v25, v100, v101);
          v103(v98, v100, v101);
        }

        while (((v142)(v98, v145, v8, v144) & 1) == 0);
      }

      v104 = v111 + 1;
      v105 = *v117;
      (*v117)(v145, v8);
      v105(v98, v8);
      v106 = v123;
      v107 = v138;
      v54 = v121;
      v53 = v122;
      v122(v98, &v138[*(v123 + 36)], v8);
      v108 = v106;
      v88 = v113;
      (*v113)(v107, v108);
      v56 = v115;
      v109 = v104 == v115;
      v52 = v136;
      v58 = v147;
      v89 = v104;
      v43 = v120;
      v57 = v110;
      v55 = v116;
      v83 = v143;
      v82 = v144;
      v84 = v142;
      v85 = v112;
      v86 = v140;
    }

    while (!v109);
  }

  v122 = v53;
  v121 = v54;
  v120 = v43;
  v141 = v25;
  v144 = v8;
  v57;
  v60 = v132;
  v59 = v133;
  v142 = v132[9];
  v143 = (v132 + 9);
  v140 = *(v135 + 8);
  v61 = *(v140 + 1);
  v145 = (v52 + 8);
  v138 = v58 + 64;
  v139 = v61;
  for (i = v137; ; (v68)(i, v59, v60))
  {
    v63 = v146;
    (v142)(v59, v60);
    v64 = v144;
    v65 = (v139)(i, v63, v144, v140);
    v66 = *v145;
    (*v145)(v63, v64);
    if (v65)
    {
      break;
    }

    v67 = v141;
    (*(v147 + 8))(v141, i, v59);
    v68 = v60[24];
    (v68)(v67, v59, v60);
  }

  v69 = v130;
  v70 = v141;
  v71 = v144;
  v122(v130, v141, v144);
  v72 = v131;
  (v142)(v59, v60);
  if (((*(v135 + 24))(v69, v72, v71) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v66(v137, v71);
  v66(v70, v71);
  v73 = *(v134 + 8);
  v134 += 8;
  v147 = v73;
  (v73)(v120, v123);
  v74 = *(v136 + 32);
  v75 = v125;
  v74(v125, v69, v71);
  v76 = v128;
  v74(&v75[*(v128 + 48)], v72, v71);
  v77 = v126;
  v78 = v127;
  (*(v126 + 16))(v127, v75, v76);
  v79 = *(v76 + 48);
  v80 = v124;
  v74(v124, v78, v71);
  v66(&v78[v79], v71);
  (*(v77 + 32))(v78, v75, v76);
  v81 = v123;
  v74(&v80[*(v123 + 36)], &v78[*(v76 + 48)], v71);
  v66(v78, v71);
  (*(v129 + 104))(v80, v133);
  return (v147)(v80, v81);
}

uint64_t RangeSet._ranges.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *v1;
  *v1 = v2;
  return result;
}

void RangeSet.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, __objc2_class ***a4@<X8>)
{
  v5 = type metadata accessor for Range(0, a1, a2, a3);
  _swift_isClassOrObjCExistentialType(v5, v5);
  v6 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v5);
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
    v10 = type metadata accessor for Array(0, v5, v7, v8);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v10, v11);
    v9 = _copyCollectionToContiguousArray<A>(_:)(&v13, v10, WitnessTable);
  }

  &_swiftEmptyArrayStorage;
  *a4 = v9;
}

void RangeSet.Ranges.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, __objc2_class ***a4@<X8>)
{
  v5 = type metadata accessor for Range(0, a1, a2, a3);
  _swift_isClassOrObjCExistentialType(v5, v5);
  v6 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v5);
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
    v10 = type metadata accessor for Array(0, v5, v7, v8);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v10, v11);
    v9 = _copyCollectionToContiguousArray<A>(_:)(&v13, v10, WitnessTable);
  }

  &_swiftEmptyArrayStorage;
  *a4 = v9;
}

void RangeSet.Ranges.init(_range:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for Range(255, a2, a3, a4);
  v10 = type metadata accessor for _ContiguousArrayStorage(0, v7, v8, v9);
  v11 = *(v7 - 1);
  v12 = swift_allocObject(v10, (((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72)), *(v11 + 80) | 7);
  v13 = static Array._adoptStorage(_:count:)(v12, 1);
  (*(v11 + 32))(v14, a1, v7);
  v15 = _ArrayBuffer.requestNativeBuffer()(v13, v7);
  if (!v15)
  {
    v22 = v13;
    v18 = type metadata accessor for Array(0, v7, v16, v17);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v18, v19);
    v15 = _copyCollectionToContiguousArray<A>(_:)(&v22, v18, WitnessTable);
  }

  v21 = v15;
  v13;
  *a5 = v21;
}

uint64_t RangeSet.init<A>(_:)@<X0>(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, atomic_ullong **a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (type metadata accessor for RangeSet.Ranges(0, v15, v16, v16) == a3)
  {
    v19 = *a1;
    v20 = *(v12 + 8);
    *a1;
    result = v20(a1, a3);
  }

  else
  {
    (*(v12 + 32))(v14, a1, a3);
    v17 = (*(a5 + 56))(a3, a5);
    result = RangeSet.Ranges.init(_unorderedRanges:)(v17, a2, a4, &v22);
    v19 = v22;
  }

  *a6 = v19;
  return result;
}

uint64_t RangeSet.Ranges.init(_unorderedRanges:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v156 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v155 = &v144 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v169 = &v144 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v168 = &v144 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v157 = &v144 - v20;
  v21 = *(a2 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v160 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v161 = &v144 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v159 = &v144 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v171 = &v144 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v144 - v30;
  v32 = type metadata accessor for Range(0, a2, a3, v31);
  v186 = *(v32 - 1);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v154 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v167 = &v144 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v179 = &v144 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v182 = &v144 - v39;
  v40 = a1;
  v41 = _ArrayBuffer.requestNativeBuffer()(v40, v32);
  a1;
  v174 = a1;
  v175 = a4;
  v158 = v9;
  v165 = v10;
  v164 = v21;
  if (!v41)
  {
    v193 = a1;
    v45 = type metadata accessor for Array(0, v32, v43, v44);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v45, v46);
    v42 = _copyCollectionToContiguousArray<A>(_:)(&v193, v45, WitnessTable);
    v41 = v42;
  }

  v193 = v41;
  MEMORY[0x1EEE9AC00](v42);
  v188 = a2;
  v189 = v32;
  v142 = a2;
  v143 = a3;
  v50 = type metadata accessor for ContiguousArray(0, v32, v48, v49);
  v52 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v50, v51);
  v54 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v50, v53);
  v166 = v50;
  v173 = v52;
  MutableCollection<>.sort(by:)(partial apply for closure #1 in RangeSet.Ranges.init(_unorderedRanges:), v140, v50, v52, v54);
  v55 = v193;
  v181 = *(v193 + 16);
  if (v181)
  {
    v56 = 0;
    v184 = v186 + 16;
    v185 = a3;
    v187 = v186 + 8;
    v180 = v193;
    v57 = v186;
    v58 = v182;
    while (1)
    {
      if (v56 >= *(v55 + 16))
      {
LABEL_48:
        LODWORD(v142) = 0;
        v141 = 691;
        v140[0] = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v183 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v59 = *(v57 + 72);
      v60 = *(v57 + 16);
      v61 = v189;
      v60(v58, v55 + v183 + v59 * v56, v189);
      v62 = *(a3 + 8);
      v63 = *(v62 + 8);
      LODWORD(v190) = v63(v58, &v58[*(v61 + 9)]);
      v64 = *(v57 + 8);
      v64(v58, v61);
      if ((v190 & 1) == 0)
      {
        break;
      }

      ++v56;
      v55 = v180;
      a3 = v185;
      if (v181 == v56)
      {
        goto LABEL_8;
      }
    }

    v176 = v64;
    v177 = v62 + 8;
    v70 = v62;
    v178 = v63;
    v180 = v60;
    v71 = v183;
    v191 = v56;
    v192 = 0;
    MutableCollection.swapAt(_:_:)(&v192, &v191, v166, v173);
    v72 = v56 + 1;
    v73 = v193;
    v74 = *(v193 + 16);
    if (v72 < v74)
    {
      v75 = 0;
      v181 = 0;
      v163 = (v164 + 16);
      v162 = v185 + 32;
      v170 = (v164 + 8);
      v149 = (v186 + 40);
      v148 = (v164 + 32);
      v147 = v185 + 24;
      v146 = (v165 + 16);
      v145 = (v165 + 32);
      v76 = v71 + v59 * v72;
      v77 = v188;
      v173 = v70;
      v78 = v59;
      v151 = v59;
      while (1)
      {
        if (v72 >= v74)
        {
          goto LABEL_48;
        }

        v190 = v72;
        v90 = v73;
        v91 = v179;
        v92 = v189;
        v180(v179, v73 + v76, v189);
        v93 = v178(v91, &v91[*(v92 + 9)], v77, v173);
        v176(v91, v92);
        if (v93)
        {
          goto LABEL_20;
        }

        if ((v181 & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        if (v181 >= *(v90 + 16))
        {
          goto LABEL_48;
        }

        v94 = v181 * v78;
        v150 = v90 + v183;
        v95 = v77;
        v96 = *(v92 + 9);
        v97 = *v163;
        v165 = v90 + v183 + v181 * v78;
        v98 = v172;
        v97(v172, v165 + v96, v95);
        if (v190 >= *(v90 + 16))
        {
          goto LABEL_48;
        }

        v152 = v94;
        v186 = v76;
        v99 = v171;
        v97(v171, v90 + v76, v95);
        v153 = *(v185 + 32);
        v100 = v153(v98, v99, v95);
        v101 = *v170;
        (*v170)(v99, v95);
        v164 = v101;
        (v101)(v98, v95);
        if ((v100 & 1) == 0)
        {
          break;
        }

        if (v181 >= *(v90 + 16))
        {
          goto LABEL_48;
        }

        v102 = v165 + v96;
        v103 = v161;
        v104 = v188;
        v97(v161, v102, v188);
        if (v190 >= *(v90 + 16))
        {
          goto LABEL_48;
        }

        v105 = v160;
        v97(v160, v90 + v186 + *(v189 + 9), v104);
        v106 = v185;
        v107 = (v153)(v105, v103, v104, v185);
        v108 = (v107 & 1) == 0;
        v109 = (v107 & 1) != 0 ? v103 : v105;
        v110 = v108 ? v103 : v105;
        (v164)(v109, v104);
        v111 = v159;
        v112 = *v148;
        (*v148)(v159, v110, v104);
        if (v181 >= *(v90 + 16))
        {
          goto LABEL_48;
        }

        v113 = v111;
        v114 = v157;
        v97(v157, v165, v104);
        v115 = v158;
        v116 = *(v158 + 48);
        v112(&v114[v116], v113, v104);
        if (((*(v106 + 24))(v114, &v114[v116], v104, v106) & 1) == 0)
        {
          LODWORD(v142) = 0;
          v141 = 180;
          v140[0] = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v117 = *v146;
        v118 = v168;
        (*v146)(v168, v114, v115);
        v165 = *(v115 + 48);
        v153 = *v145;
        v119 = v169;
        v153(v169, v114, v115);
        v120 = *(v115 + 48);
        v121 = v155;
        v112(v155, v118, v188);
        v112(&v121[*(v115 + 48)], &v119[v120], v188);
        v122 = v156;
        v117(v156, v121, v115);
        v123 = *(v115 + 48);
        v124 = v167;
        v112(v167, v122, v188);
        v125 = &v122[v123];
        v126 = v164;
        (v164)(v125, v188);
        v153(v122, v121, v115);
        v77 = v188;
        v127 = v189;
        v112(&v124[*(v189 + 9)], &v122[*(v115 + 48)], v188);
        v126(v122, v77);
        v126(v169, v77);
        v126(&v168[v165], v77);
        v128 = v193;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v193);
        v193 = v128;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v128 = _ContiguousArrayBuffer._consumeAndCreateNew()(v128, *(v166 + 2));
          v193 = v128;
        }

        v89 = v190;
        v78 = v151;
        v76 = v186;
        v130 = v181;
        ContiguousArray._checkSubscript_mutating(_:)(v181);
        (*v149)(v128 + v183 + v152, v167, v127);
        v75 = v130;
LABEL_21:
        v72 = v89 + 1;
        v73 = v193;
        v74 = *(v193 + 16);
        v76 += v78;
        if (v72 >= v74)
        {
          goto LABEL_15;
        }
      }

      v131 = v181 + 1;
      v89 = v190;
      v75 = v190;
      v181 = v190;
      v77 = v188;
      v76 = v186;
      v78 = v151;
      if (v190 == v131)
      {
        goto LABEL_21;
      }

      v132 = *(v90 + 16);
      if (v190 >= v132)
      {
        goto LABEL_48;
      }

      v133 = v189;
      v134 = v180;
      v180(v154, v90 + v186, v189);
      if (v131 >= v132)
      {
        goto LABEL_48;
      }

      v134(v182, v150 + v131 * v78, v133);
      v135 = v193;
      v136 = swift_isUniquelyReferenced_nonNull_native(v193);
      v193 = v135;
      if (!v136)
      {
        v135 = _ContiguousArrayBuffer._consumeAndCreateNew()(v135, *(v166 + 2));
        v193 = v135;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v190);
      v137 = *v149;
      (*v149)(v135 + v76, v182, v133);
      v138 = v193;
      v139 = swift_isUniquelyReferenced_nonNull_native(v193);
      v193 = v138;
      if (!v139)
      {
        v138 = _ContiguousArrayBuffer._consumeAndCreateNew()(v138, *(v166 + 2));
        v193 = v138;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v131);
      v137(v138 + v183 + v131 * v78, v154, v133);
      v75 = v131;
      v181 = v131;
      v77 = v188;
LABEL_20:
      v89 = v190;
      goto LABEL_21;
    }

    v75 = 0;
LABEL_15:
    if (__OFADD__(v75, 1))
    {
      __break(1u);
    }

    else if (v74 >= (v75 + 1))
    {
      v174;
      v85 = type metadata accessor for EmptyCollection(0, v189, v83, v84);
      v87 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v85, v86);
      result = ContiguousArray.replaceSubrange<A>(_:with:)(v75 + 1, v74, v88, v166, v85, v87);
      v69 = v193;
      goto LABEL_18;
    }

    LODWORD(v142) = 0;
    v141 = 760;
    v140[0] = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_8:
  v174;
  v65 = v189;
  _swift_isClassOrObjCExistentialType(v189, v189);
  v66 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v65);
  if (v66)
  {
    v69 = v66;
  }

  else
  {
    v192 = &_swiftEmptyArrayStorage;
    v79 = type metadata accessor for Array(0, v65, v67, v68);
    v81 = swift_getWitnessTable(protocol conformance descriptor for [A], v79, v80);
    v69 = _copyCollectionToContiguousArray<A>(_:)(&v192, v79, v81);
  }

  &_swiftEmptyArrayStorage;
  result = v193;
LABEL_18:
  *v175 = v69;
  return result;
}

uint64_t RangeSet.Ranges._contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v11 = type metadata accessor for Range(0, v4, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v29 = *v2;
  v15 = v29;
  v26 = v4;
  v27 = v9;
  v24 = a1;
  v28 = a1;
  v18 = type metadata accessor for ContiguousArray(0, v11, v16, v17);
  v15;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v18, v19);
  Collection._partitioningIndex(where:)(partial apply for closure #1 in RangeSet.Ranges._contains(_:), v25, v18, WitnessTable, &v30);
  v15;
  if (v30 == v15[2])
  {
    v21 = 0;
  }

  else
  {
    ContiguousArray.subscript.getter(v30, v15, v11, v14);
    (*(v5 + 16))(v7, v14, v4);
    (*(v12 + 8))(v14, v11);
    v21 = (*(v9 + 24))(v7, v24, v4, v9);
    (*(v5 + 8))(v7, v4);
  }

  return v21 & 1;
}

uint64_t RangeSet.insert(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for Range(0, v5, v6, a4);
  result = (*(*(v6 + 8) + 8))(a1, a1 + *(v7 + 36), v5);
  if ((result & 1) == 0)
  {
    v10 = type metadata accessor for RangeSet.Ranges(0, v5, v6, v9);

    return RangeSet.Ranges._insert(contentsOf:)(a1, v10);
  }

  return result;
}

uint64_t RangeSet.Ranges._insert(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v5, v5, "lower upper ", 0);
  v94 = v6;
  v92 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v91 = &v85 - v10;
  v98 = *(v5 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v96 = &v85 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v97 = &v85 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v85 - v17;
  v18 = *(a2 + 24);
  v20 = type metadata accessor for Range(255, v5, v18, v19);
  v101 = type metadata accessor for CollectionOfOne(0, v20, v21, v22);
  v23 = MEMORY[0x1EEE9AC00](v101);
  v100 = &v85 - v24;
  v25 = *(v20 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v88 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v103 = &v85 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v95 = &v85 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v85 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v85 - v35;
  v102 = v2;
  v37 = *v2;
  *v2;
  v38 = a1;
  v39 = specialized RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:)(a1, v37, 1, v5, v18);
  v41 = v40;
  v37;
  v105 = v41;
  if (v39 == v41)
  {
    (*(v25 + 16))(v36, v38, v20);
    ContiguousArray._checkIndex(_:)(v39);
    v42 = v100;
    (*(v25 + 32))(v100, v36, v20);
    v45 = type metadata accessor for ContiguousArray(0, v20, v43, v44);
    v46 = v101;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v101, v47);
    v49 = v39;
    v50 = v39;
    goto LABEL_18;
  }

  v86 = v39;
  v87 = v37;
  ContiguousArray.subscript.getter(v39, v37, v20, v34);
  v52 = v97;
  v51 = v98;
  v53 = *(v98 + 16);
  v53(v97, v34, v5);
  v85 = v25;
  v89 = *(v25 + 8);
  v90 = v25 + 8;
  v89(v34, v20);
  if ((*(v18 + 2))(v38, v52, v5, v18))
  {
    (*(v51 + 8))(v52, v5);
    v53(v104, v38, v5);
  }

  else
  {
    (*(v51 + 32))(v104, v52, v5);
  }

  v54 = v99;
  if (__OFSUB__(v105, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = v53;
  v56 = v38;
  v57 = v95;
  ContiguousArray.subscript.getter(v105 - 1, v87, v20, v95);
  v55(v54, v57 + *(v20 + 36), v5);
  v89(v57, v20);
  v58 = *(v20 + 36);
  if ((*(v18 + 4))(v56 + v58, v54, v5, v18))
  {
    (*(v51 + 8))(v54, v5);
    v59 = v56 + v58;
    v60 = v96;
    v55(v96, v59, v5);
  }

  else
  {
    v60 = v96;
    (*(v51 + 32))(v96, v54, v5);
  }

  v61 = v104;
  if (((*(v18 + 3))(v104, v60, v5, v18) & 1) == 0)
  {
LABEL_21:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v97 = v18;
  v99 = v20;
  v62 = v91;
  v63 = v51;
  v64 = *(v51 + 32);
  v64(v91, v61, v5);
  v65 = v94;
  v64(&v62[*(v94 + 48)], v60, v5);
  v66 = v92;
  v67 = v93;
  (*(v92 + 16))(v93, v62, v65);
  v104 = *(v65 + 48);
  v68 = v103;
  v64(v103, v67, v5);
  v69 = *(v63 + 8);
  v69(&v104[v67], v5);
  v70 = v62;
  v71 = v99;
  (*(v66 + 32))(v67, v70, v65);
  v72 = *(v65 + 48);
  v73 = *(v71 + 36);
  v64(&v73[v68], &v67[v72], v5);
  result = (v69)(v67, v5);
  v75 = v86;
  if (__OFSUB__(v105, v86))
  {
    __break(1u);
    return result;
  }

  v104 = v73;
  v76 = v85;
  v77 = v103;
  if ((v105 - v86) == 1)
  {
    v78 = v88;
    ContiguousArray.subscript.getter(v86, v87, v71, v88);
    v79 = *(v97 + 1);
    v80 = *(v79 + 8);
    if (v80(v77, v78, v5, v79))
    {
      v81 = v80(&v104[v77], v78 + *(v71 + 36), v5, v79);
      v89(v78, v71);
      if (v81)
      {
        v89(v77, v71);
        return 0;
      }
    }

    else
    {
      v89(v78, v71);
    }
  }

  v42 = v100;
  (*(v76 + 32))(v100, v77, v71);
  v45 = type metadata accessor for ContiguousArray(0, v71, v82, v83);
  v46 = v101;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v101, v84);
  v49 = v75;
  v50 = v105;
LABEL_18:
  ContiguousArray.replaceSubrange<A>(_:with:)(v49, v50, v42, v45, v46, WitnessTable);
  return 1;
}

uint64_t RangeSet.remove(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for Range(0, v5, v6, a4);
  result = (*(*(v6 + 8) + 8))(a1, a1 + *(v7 + 36), v5);
  if ((result & 1) == 0)
  {
    v10 = type metadata accessor for RangeSet.Ranges(0, v5, v6, v9);

    return RangeSet.Ranges._remove(contentsOf:)(a1, v10, v11, v12);
  }

  return result;
}

uint64_t RangeSet.Ranges._remove(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Range(255, v6, v7, a4);
  v176 = type metadata accessor for _Pair(0, v8, v9, v10);
  MEMORY[0x1EEE9AC00](v176);
  v175 = v163 - v11;
  v191 = type metadata accessor for CollectionOfOne(0, v8, v12, v13);
  MEMORY[0x1EEE9AC00](v191);
  v190 = v163 - v14;
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v194 = v15;
  v199 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v193 = v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v198 = v163 - v19;
  v202 = *(v6 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v180 = v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v179 = v163 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v187 = v163 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v186 = v163 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v185 = (v163 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v183 = v163 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v184 = v163 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = v163 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v203 = v163 - v38;
  v201 = *(v8 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v178 = v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v174 = v163 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = v163 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v189 = v163 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v182 = v163 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = v163 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v181 = v163 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v177 = v163 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v163 - v57;
  v59 = *v4;
  *v4;
  v204 = a1;
  v200 = v7;
  v60 = specialized RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:)(a1, v59, 0, v6, v7);
  v62 = v61;
  result = v59;
  if (v60 != v62)
  {
    v164 = v45;
    v163[1] = v52;
    v165 = v36;
    v173 = v4;
    v188 = v60;
    ContiguousArray.subscript.getter(v60, v59, v8, v58);
    v64 = v202;
    v65 = v203;
    v67 = v202 + 16;
    v66 = *(v202 + 16);
    v196 = v59;
    v197 = v66;
    v66(v203, v58, v6);
    v68 = v8;
    v69 = v201 + 8;
    v70 = *(v201 + 8);
    v192 = v68;
    v70(v58);
    v71 = v200;
    v72 = (*(v200 + 40))(v204, v65, v6, v200);
    v74 = *(v64 + 8);
    v73 = v64 + 8;
    v195 = v74;
    v74(v65, v6);
    if (__OFSUB__(v62, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v169 = v62;
    v75 = v192;
    v172 = v72;
    v76 = *(v192 + 36);
    v167 = v62 - 1;
    ContiguousArray.subscript.getter(v62 - 1, v196, v192, v58);
    v77 = &v58[*(v75 + 36)];
    v78 = v203;
    v170 = v67;
    v197(v203, v77, v6);
    v171 = v70;
    (v70)(v58, v75);
    v79 = *(v71 + 16);
    v80 = v204;
    v166 = v76;
    v81 = v204 + v76;
    v82 = v6;
    v83 = v79(v81, v78, v6, v71);
    v168 = v73;
    v195(v78, v6);
    v86 = v69;
    if (v172)
    {
      if (v83)
      {
        v87 = v164;
        ContiguousArray.subscript.getter(v188, v196, v75, v164);
        v88 = v186;
        v89 = v197;
        v197(v186, v87, v82);
        v90 = v87;
        v91 = v88;
        v191 = v86;
        v171(v90, v75);
        v92 = v187;
        v89(v187, v80, v82);
        v93 = *(v71 + 24);
        v203 = (v71 + 24);
        v190 = v93;
        v94 = (v93)(v91, v92, v82, v71);
        v95 = v194;
        v96 = v199;
        if (v94)
        {
          v97 = *(v202 + 32);
          v98 = v198;
          v97(v198, v91, v82);
          v97(&v98[*(v95 + 48)], v92, v82);
          v99 = *(v96 + 16);
          v100 = v193;
          v202 = v96 + 16;
          v187 = v99;
          (v99)(v193, v98, v95);
          v101 = *(v95 + 48);
          v102 = v189;
          v97(v189, v100, v82);
          v103 = v195;
          v195(&v100[v101], v82);
          v104 = *(v96 + 32);
          v199 = v96 + 32;
          v186 = v104;
          (v104)(v100, v98, v95);
          v105 = v192;
          v106 = &v102[*(v192 + 36)];
          v107 = &v100[*(v95 + 48)];
          v185 = v97;
          v97(v106, v107, v82);
          v103(v100, v82);
          v108 = v179;
          v109 = v197;
          v197(v179, (v204 + v166), v82);
          v110 = v178;
          ContiguousArray.subscript.getter(v167, v196, v105, v178);
          v111 = v180;
          v109(v180, v110 + *(v105 + 36), v82);
          v171(v110, v105);
          if ((v190)(v108, v111, v82, v200))
          {
            v112 = v198;
            v113 = v108;
            v114 = v185;
            v185(v198, v113, v82);
            v114(&v112[*(v95 + 48)], v111, v82);
            (v187)(v100, v112, v95);
            v115 = *(v95 + 48);
            v116 = v174;
            v114(v174, v100, v82);
            v117 = v195;
            v195(&v100[v115], v82);
            (v186)(v100, v112, v95);
            v114(&v116[*(v105 + 36)], &v100[*(v95 + 48)], v82);
            v117(v100, v82);
            v118 = *(v201 + 32);
            v119 = v175;
            v118(v175, v189, v105);
            swift_getTupleTypeMetadata2(0, v105, v105, "first second ", 0);
            v118(&v119[*(v120 + 48)], v116, v105);
            v123 = type metadata accessor for ContiguousArray(0, v105, v121, v122);
            v124 = v176;
            WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, v176, v125);
            v127 = v188;
            v128 = v169;
            v129 = v119;
LABEL_14:
            v156 = v123;
            v157 = v124;
            return ContiguousArray.replaceSubrange<A>(_:with:)(v127, v128, v129, v156, v157, WitnessTable);
          }
        }

LABEL_19:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v143 = v182;
      ContiguousArray.subscript.getter(v188, v196, v75, v182);
      v144 = v183;
      v145 = v197;
      v197(v183, v143, v82);
      v171(v143, v75);
      v146 = v185;
      v145(v185, v80, v82);
      v147 = (*(v71 + 24))(v144, v146, v82, v71);
      v137 = v194;
      v138 = v199;
      if ((v147 & 1) == 0)
      {
        goto LABEL_19;
      }

      v136 = *(v202 + 32);
      v140 = v198;
      v136(v198, v144, v82);
      v136(&v140[*(v137 + 48)], v146, v82);
      v139 = v193;
      (*(v138 + 16))(v193, v140, v137);
      v141 = *(v137 + 48);
      v142 = &v195;
    }

    else
    {
      v130 = v198;
      if ((v83 & 1) == 0)
      {
        v158 = type metadata accessor for ContiguousArray(0, v75, v84, v85);
        v161 = type metadata accessor for EmptyCollection(0, v75, v159, v160);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v161, v162);
        v127 = v188;
        v128 = v169;
        v156 = v158;
        v157 = v161;
        return ContiguousArray.replaceSubrange<A>(_:with:)(v127, v128, v129, v156, v157, WitnessTable);
      }

      v131 = (v80 + v166);
      v132 = v165;
      v133 = v197;
      v197(v165, v131, v6);
      v134 = v181;
      ContiguousArray.subscript.getter(v167, v196, v75, v181);
      v135 = v184;
      v133(v184, v134 + *(v75 + 36), v82);
      v171(v134, v75);
      if (((*(v71 + 24))(v132, v135, v82, v71) & 1) == 0)
      {
        goto LABEL_19;
      }

      v136 = *(v202 + 32);
      v136(v130, v132, v82);
      v137 = v194;
      v136(&v130[*(v194 + 48)], v135, v82);
      v138 = v199;
      v139 = v193;
      (*(v199 + 16))(v193, v130, v137);
      v140 = v130;
      v141 = *(v137 + 48);
      v142 = &v205;
    }

    v148 = *(v142 - 32);
    v136(v148, v139, v82);
    v149 = v195;
    v195(&v139[v141], v82);
    (*(v138 + 32))(v139, v140, v137);
    v150 = *(v137 + 48);
    v151 = v192;
    v136(&v148[*(v192 + 36)], &v139[v150], v82);
    v149(v139, v82);
    v152 = v190;
    (*(v201 + 32))(v190, v148, v151);
    v123 = type metadata accessor for ContiguousArray(0, v151, v153, v154);
    v124 = v191;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v191, v155);
    v127 = v188;
    v128 = v169;
    v129 = v152;
    goto LABEL_14;
  }

  return result;
}

uint64_t static RangeSet.== infix(_:_:)(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v7 = type metadata accessor for Range(0, a3, a4, a4);
  v35 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = *a1;
  v14 = *a2;
  v15 = (*a1)[2];
  if (v15 == v14[2])
  {
    if (!v15 || v13 == v14)
    {
      v23 = 1;
    }

    else
    {
      v16 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v30 = v14 + v16;
      v31 = v35 + 16;
      v32 = v13 + v16;
      v17 = (v35 + 8);
      v13;
      v33 = v14;
      v14;
      v18 = 0;
      v29 = v15 - 1;
      while (1)
      {
        if (v18 >= v13[2] || (v19 = *(v35 + 72) * v18, v20 = *(v35 + 16), v20(v12, &v32[v19], v7), v18 >= v33[2]))
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v20(v10, &v30[v19], v7);
        v21 = *(v34 + 8);
        v22 = *(v21 + 8);
        if ((v22(v12, v10, a3, v21) & 1) == 0)
        {
          break;
        }

        v23 = v22(&v12[*(v7 + 36)], &v10[*(v7 + 36)], a3, v21);
        v24 = *v17;
        (*v17)(v10, v7);
        v24(v12, v7);
        if ((v23 & 1) != 0 && v29 != v18++)
        {
          continue;
        }

        goto LABEL_15;
      }

      v26 = *v17;
      (*v17)(v10, v7);
      v26(v12, v7);
      v23 = 0;
LABEL_15:
      v13;
      v33;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t static RangeSet.Ranges.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = type metadata accessor for Range(0, a3, a4, a4);
  v37 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = *(v12 + 16);
  if (v14 != *(*a2 + 16))
  {
LABEL_14:
    v23 = 0;
    return v23 & 1;
  }

  if (v14 && v12 != v13)
  {
    v15 = 0;
    v16 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v32 = v9;
    v33 = v13 + v16;
    v34 = (v37 + 8);
    v35 = v12 + v16;
    v29 = v14 - 1;
    v30 = v37 + 16;
    v31 = v13;
    while (1)
    {
      if (v15 >= *(v12 + 16) || (v17 = *(v37 + 72) * v15, v18 = *(v37 + 16), v18(v11, v35 + v17, v7), v15 >= *(v13 + 16)))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v19 = v12;
      v20 = v32;
      v18(v32, v33 + v17, v7);
      v21 = *(v36 + 8);
      v22 = *(v21 + 8);
      if ((v22(v11, v20, a3, v21) & 1) == 0)
      {
        break;
      }

      v23 = v22(&v11[*(v7 + 36)], &v20[*(v7 + 36)], a3, v21);
      v24 = *v34;
      (*v34)(v20, v7);
      v24(v11, v7);
      if (v23)
      {
        v25 = v29 == v15++;
        v12 = v19;
        v13 = v31;
        if (!v25)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    v26 = *v34;
    (*v34)(v20, v7);
    v26(v11, v7);
    goto LABEL_14;
  }

  v23 = 1;
  return v23 & 1;
}

void RangeSet<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  v26 = *(a2 + 16);
  v24 = type metadata accessor for Range(0, v26, v7, a4);
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v19 - v9;
  v10 = *v4;
  v11 = (*v4)[2];
  v27 = a1;
  Hasher._combine(_:)(v11);
  v25 = v11;
  if (v11)
  {
    v21 = a3 + 24;
    v22 = v8 + 16;
    v19[1] = v8 + 8;
    v10;
    v12 = 0;
    v20 = v10;
    v13 = v23;
    v14 = v26;
    do
    {
      if (v12 >= v10[2])
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v15 = v24;
      (*(v8 + 16))(v13, v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12++, v24);
      v16 = *(a3 + 24);
      v17 = v27;
      v16(v27, v14, a3);
      v18 = v17;
      v10 = v20;
      v16(v18, v14, a3);
      (*(v8 + 8))(v13, v15);
    }

    while (v25 != v12);
    v10;
  }
}

Swift::Int RangeSet<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = 0u;
  v9 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  RangeSet<>.hash(into:)(&v6, a1, a2, a4);
  return Hasher._finalize()();
}

uint64_t RangeSet.init<A, B>(_:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, const char *a5@<X4>, int **a6@<X5>, swift *a7@<X6>, __objc2_class ***a8@<X8>)
{
  v91 = a2;
  v85 = a1;
  v69 = a8;
  swift_getTupleTypeMetadata2(0, a3, a3, "lower upper ", 0);
  v89 = v13;
  v71 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v87 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v67 - v16;
  v90 = a7;
  v92 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, a3, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, a3, AssociatedConformanceWitness, v17);
  v70 = *(v18 - 1);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v67 - v20;
  v21 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - v25;
  v29 = type metadata accessor for Optional(0, a3, v27, v28);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v67 - v30;
  v95 = a6;
  v32 = a6;
  v33 = a4;
  swift_getAssociatedTypeWitness(0, v32, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v94 = v34;
  v68 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v93 = &v67 - v35;
  _swift_isClassOrObjCExistentialType(v18, v18);
  v36 = v18;
  v37 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v18);
  if (v37)
  {
    v40 = v37;
  }

  else
  {
    v97 = &_swiftEmptyArrayStorage;
    v41 = type metadata accessor for Array(0, v18, v38, v39);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v41, v42);
    v40 = _copyCollectionToContiguousArray<A>(_:)(&v97, v41, WitnessTable);
  }

  &_swiftEmptyArrayStorage;
  v97 = v40;
  v44 = v95;
  (v95[4])(v33, v95);
  v45 = v33;
  v46 = v94;
  v47 = swift_getAssociatedConformanceWitness(v44, v45, v94, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v48 = *(v47 + 16);
  v84 = v47 + 16;
  v85 = v47;
  v83 = v48;
  (v48)(v46);
  v81 = *(v21 + 48);
  v82 = v21 + 48;
  if (v81(v31, 1, a3) != 1)
  {
    v50 = *(v21 + 32);
    v49 = v21 + 32;
    v95 = v50;
    v79 = AssociatedConformanceWitness + 24;
    v80 = v90 + 184;
    v75 = (v49 - 16);
    v74 = v71 + 2;
    v73 = v49 - 24;
    v71 += 4;
    ++v70;
    v77 = v26;
    v78 = v24;
    v76 = v31;
    v72 = v36;
    v51 = (v49 - 24);
    do
    {
      (v95)(v26, v31, a3);
      (*(v90 + 23))(v26, v92);
      if (((*(AssociatedConformanceWitness + 24))(v26, v24, a3) & 1) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v52 = v88;
      (*v75)(v88, v26, a3);
      v53 = v89;
      v54 = v95;
      (v95)(&v52[*(v89 + 48)], v24, a3);
      v55 = v87;
      (*v74)(v87, v52, v53);
      v56 = *(v53 + 48);
      v57 = v86;
      (v54)(v86, v55, a3);
      v58 = v49;
      v59 = *v51;
      (*v51)(&v55[v56], a3);
      (*v71)(v55, v52, v53);
      v60 = *(v53 + 48);
      v61 = v72;
      v31 = v76;
      (v54)(v57 + *(v72 + 9), &v55[v60], a3);
      v62 = v55;
      v26 = v77;
      v59(v62, a3);
      v64 = type metadata accessor for RangeSet.Ranges(0, a3, AssociatedConformanceWitness, v63);
      RangeSet.Ranges._insert(contentsOf:)(v57, v64);
      v65 = v57;
      v24 = v78;
      (*v70)(v65, v61);
      v59(v26, a3);
      v49 = v58;
      v83(v94, v85);
    }

    while (v81(v31, 1, a3) != 1);
  }

  (*(*(v92 - 1) + 8))(v91);
  result = (*(v68 + 8))(v93, v94);
  *v69 = v97;
  return result;
}

uint64_t RangeSet.insert<A>(_:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v8 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 24);
  v21 = type metadata accessor for Range(0, v8, v19, v20);
  v40 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  (*(a5 + 184))(a1, v41, a5);
  v24 = *(v19 + 24);
  v41 = v19;
  if ((v24(a1, v18, v8, v19) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v16 + 16))(v15, a1, v8);
  v25 = v38;
  v26 = *(v38 + 48);
  v36 = v21;
  v27 = *(v16 + 32);
  v27(&v15[v26], v18, v8);
  v28 = v39;
  v29 = v37;
  (*(v39 + 16))(v37, v15, v25);
  v35 = *(v25 + 48);
  v27(v23, v29, v8);
  v30 = *(v16 + 8);
  v30(&v29[v35], v8);
  (*(v28 + 32))(v29, v15, v25);
  v31 = v36;
  v27(&v23[*(v36 + 36)], &v29[*(v25 + 48)], v8);
  v30(v29, v8);
  v33 = type metadata accessor for RangeSet.Ranges(0, v8, v41, v32);
  LOBYTE(v29) = RangeSet.Ranges._insert(contentsOf:)(v23, v33);
  (*(v40 + 8))(v23, v31);
  return v29 & 1;
}

uint64_t RangeSet.remove<A>(_:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v8 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v41 = v9;
  v44 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - v14;
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 24);
  v43 = type metadata accessor for Range(0, v8, v19, v20);
  v21 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - v22;
  (*(a5 + 184))(a1, v45, a5);
  v23 = *(v19 + 24);
  v45 = v19;
  if ((v23(a1, v18, v8, v19) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v21;
  (*(v16 + 16))(v15, a1, v8);
  v24 = v41;
  v25 = *(v16 + 32);
  v25(&v15[*(v41 + 48)], v18, v8);
  v26 = v44;
  (*(v44 + 16))(v12, v15, v24);
  v39 = *(v24 + 48);
  v27 = v42;
  v25(v42, v12, v8);
  v28 = *(v16 + 8);
  v28(&v12[v39], v8);
  (*(v26 + 32))(v12, v15, v24);
  v29 = *(v24 + 48);
  v30 = v43;
  v31 = *(v43 + 36);
  v25((v27 + v31), &v12[v29], v8);
  v28(v12, v8);
  v32 = v45;
  if (((*(*(v45 + 8) + 8))(v27, v27 + v31, v8) & 1) == 0)
  {
    v34 = type metadata accessor for RangeSet.Ranges(0, v8, v32, v33);
    RangeSet.Ranges._remove(contentsOf:)(v27, v34, v35, v36);
  }

  return (*(v40 + 8))(v27, v30);
}

void RangeSet.Ranges._gaps(boundedBy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v152 = a3;
  v6 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v8 = *(v7 - 8);
  v150 = v7;
  v151 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v149 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v117 - v11;
  v12 = *(a2 + 24);
  v14 = type metadata accessor for Range(0, v6, v12, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v138 = &v117 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v145 = &v117 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v153 = &v117 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v147 = &v117 - v26;
  v27 = *(v6 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v140 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v139 = &v117 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v146 = &v117 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v154 = &v117 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v117 - v36;
  v38 = *v3;
  v39 = *v3;
  v155 = v12;
  v40 = specialized RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:)(a1, v39, 1, v6, v12);
  if (v40 == v41)
  {
    (*(v15 + 16))(v18, a1, v14);
    v44 = type metadata accessor for _ContiguousArrayStorage(0, v14, v42, v43);
    v45 = swift_allocObject(v44, (((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72)), *(v15 + 80) | 7);
    v46 = static Array._adoptStorage(_:count:)(v45, 1);
    (*(v15 + 32))(v47, v18, v14);
    v48 = _ArrayBuffer.requestNativeBuffer()(v46, v14);
    if (v48)
    {
LABEL_5:
      v55 = v48;
      goto LABEL_6;
    }

    v157 = v46;
    v51 = type metadata accessor for Array(0, v14, v49, v50);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v51, v52);
    v54 = &v157;
LABEL_4:
    v48 = _copyCollectionToContiguousArray<A>(_:)(v54, v51, WitnessTable);
    goto LABEL_5;
  }

  v56 = v40;
  v57 = v41;
  _swift_isClassOrObjCExistentialType(v14, v14);
  v58 = *(v15 + 80);
  v157 = &_swiftEmptyArrayStorage;
  v59 = *(v27 + 16);
  v142 = v27 + 16;
  v143 = v37;
  v141 = v59;
  v59(v37, a1, v6);
  ContiguousArray._checkIndex(_:)(v56);
  ContiguousArray._checkIndex(_:)(v57);
  v144 = v57;
  if (v57 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v38;
  v126 = a1;
  v61 = v38 + ((v58 + 32) & ~v58);
  v62 = v15 + 16;
  v133 = v15 + 32;
  v137 = v155 + 24;
  v136 = (v27 + 8);
  v135 = (v27 + 32);
  v134 = v151 + 2;
  v151 += 4;
  v63 = (v15 + 8);
  v125 = v60;
  v60;
  v64 = v154;
  v65 = v144;
  do
  {
    if (v56 >= v65)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v131 = v63;
    v66 = *(v15 + 72);
    v130 = v61;
    v67 = &v61[v66 * v56];
    v68 = *(v15 + 16);
    v69 = v147;
    v129 = v62;
    v68(v147, v67, v14);
    v70 = v153;
    (*(v15 + 32))(v153, v69, v14);
    v71 = v143;
    v72 = v141;
    v141(v64, v143, v6);
    v73 = v146;
    v72(v146, v70, v6);
    v74 = *(v155 + 24);
    if ((v74(v64, v73, v6) & 1) == 0)
    {
      goto LABEL_23;
    }

    v124 = v74;
    v127 = v56;
    v128 = v15;
    v75 = *v136;
    (*v136)(v71, v6);
    v76 = *v135;
    v132 = v14;
    v77 = v148;
    v76(v148, v64, v6);
    v78 = v73;
    v79 = v150;
    v76(&v77[*(v150 + 48)], v78, v6);
    v80 = v149;
    v122 = *v134;
    v122(v149, v77, v79);
    v81 = *(v79 + 48);
    v82 = v145;
    v76(v145, v80, v6);
    v75(&v80[v81], v6);
    v83 = v77;
    v14 = v132;
    v119 = *v151;
    v119(v80, v83, v79);
    v84 = *(v14 + 36);
    v85 = &v80[*(v79 + 48)];
    v123 = v76;
    v76(&v82[v84], v85, v6);
    v86 = v80;
    v87 = v82;
    v88 = v75;
    v75(v86, v6);
    v89 = *(v155 + 8);
    v90 = *(v89 + 8);
    v91 = v90(v87, v87 + v84, v6, v89);
    v121 = v89;
    v120 = v89 + 8;
    v118 = v90;
    if (v91)
    {
      v94 = v87;
      v63 = v131;
      (*v131)(v94, v14);
    }

    else
    {
      v95 = type metadata accessor for Array(0, v14, v92, v93);
      Array.append(_:)(v87, v95);
      v63 = v131;
    }

    v61 = v130;
    v56 = v127 + 1;
    v96 = v153;
    v141(v143, &v153[*(v14 + 36)], v6);
    v97 = *v63;
    (*v63)(v96, v14);
    v65 = v144;
    v64 = v154;
    v15 = v128;
    v62 = v129;
  }

  while (v144 != v56);
  v125;
  v98 = v139;
  v99 = v143;
  v100 = v141;
  v141(v139, v143, v6);
  v101 = v140;
  v100(v140, v126 + *(v14 + 36), v6);
  if ((v124(v98, v101, v6, v155) & 1) == 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v117 = v88;
  v88(v99, v6);
  v102 = v148;
  v103 = v123;
  v123(v148, v98, v6);
  v104 = v150;
  v103(&v102[*(v150 + 48)], v101, v6);
  v105 = v149;
  v122(v149, v102, v104);
  v106 = *(v104 + 48);
  v107 = v138;
  v103(v138, v105, v6);
  v117(&v105[v106], v6);
  v119(v105, v102, v104);
  v108 = v132;
  v109 = *(v132 + 36);
  v103((v107 + v109), &v105[*(v104 + 48)], v6);
  v117(v105, v6);
  if (v118(v107, v107 + v109, v6, v121))
  {
    v97(v107, v108);
  }

  else
  {
    v112 = type metadata accessor for Array(0, v108, v110, v111);
    Array.append(_:)(v107, v112);
  }

  v46 = v157;
  v113 = v157;
  v55 = _ArrayBuffer.requestNativeBuffer()(v113, v108);
  v46;
  if (!v55)
  {
    v156 = v46;
    v51 = type metadata accessor for Array(0, v108, v114, v115);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v51, v116);
    v54 = &v156;
    goto LABEL_4;
  }

LABEL_6:
  v46;
  *v152 = v55;
}

uint64_t RangeSet.formUnion(_:)(atomic_ullong **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  v7 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  RangeSet.Ranges._union(_:)(v9, v7, &v10);
  v6;
  result = v5;
  *v4 = v10;
  return result;
}

uint64_t RangeSet.union(_:)@<X0>(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *v4;
  v10[0] = *a1;
  v6 = v10[0];
  v10[1] = v7;
  v8 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a3);
  RangeSet.Ranges._union(_:)(v10, v8, &v11);
  v7;
  result = v6;
  *a4 = v11;
  return result;
}

uint64_t RangeSet.formIntersection(_:)(atomic_ullong **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  v7 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  v9[0];
  RangeSet.Ranges._intersection(_:)(v9, v7, &v10);
  v6;
  result = v5;
  *v4 = v10;
  return result;
}

uint64_t RangeSet.formSymmetricDifference(_:)(atomic_ullong **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[0] = *a1;
  v7[1] = v5;
  result = RangeSet.symmetricDifference(_:)(v7, a2, a4, &v8);
  *v4 = v8;
  return result;
}

uint64_t RangeSet.symmetricDifference(_:)@<X0>(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, atomic_ullong **a4@<X8>)
{
  v8 = *v4;
  v15 = *a1;
  v7 = v15;
  v16 = v8;
  v9 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a3);
  v8;
  v15;
  RangeSet.Ranges._union(_:)(&v15, v9, &v17);
  v8;
  v7;
  v10 = v17;
  v15 = v7;
  v16 = v8;
  RangeSet.Ranges._intersection(_:)(&v15, v9, &v17);
  v8;
  v7;
  v11 = v17;
  *a4 = v10;
  v17 = v11;
  RangeSet.subtract(_:)(&v17, a2, v12, v13);

  return v11;
}

uint64_t RangeSet.subtract(_:)(atomic_ullong **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Range(0, v6, v7, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = *a1;
  v16 = (*a1)[2];
  if (v16)
  {
    v26 = v4;
    v17 = v9 + 16;
    v28 = (v9 + 8);
    v29 = v9 + 32;
    v15;
    v18 = 0;
    do
    {
      if (v18 >= v16)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v19 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18;
      v20 = *(v9 + 16);
      v27 = v17;
      v20(v14, v19, v8);
      (*(v9 + 32))(v12, v14, v8);
      if (((*(*(v7 + 8) + 8))(v12, &v12[*(v8 + 36)], v6) & 1) == 0)
      {
        v22 = type metadata accessor for RangeSet.Ranges(0, v6, v7, v21);
        RangeSet.Ranges._remove(contentsOf:)(v12, v22, v23, v24);
      }

      ++v18;
      (*v28)(v12, v8);
      v16 = v15[2];
      v17 = v27;
    }

    while (v18 != v16);
  }

  else
  {
    v15;
  }

  return v15;
}

void RangeSet.Ranges._union(_:)(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, atomic_ullong **a3@<X8>)
{
  v7 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v114 = v8;
  v129 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v113 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v99 - v11;
  v131 = *(a2 + 24);
  v13 = type metadata accessor for Range(0, v7, v131, v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v103 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v111 = &v99 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v132 = &v99 - v19;
  v20 = *(v7 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v117 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v115 = &v99 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v99 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v99 - v28;
  v29 = *a1;
  v121 = *v3;
  v30 = v29;
  if (v29[2])
  {
    if (v121[2])
    {
      v99 = a3;
      v31 = v121;
      v136 = v29;
      v137 = v121;
      v102 = v27;
      v121;
      v30;
      _swift_isClassOrObjCExistentialType(v13, v13);
      v34 = v102;
      v35 = *(v102 + 80);
      v135 = &_swiftEmptyArrayStorage;
      if (v31[2])
      {
        v36 = 0;
        v37 = 0;
        v119 = (v35 + 32) & ~v35;
        v38 = (v20 + 16);
        v101 = v131 + 2;
        v130 = (v20 + 8);
        v100 = (v102 + 16);
        v123 = v131 + 4;
        v110 = v131 + 3;
        v109 = (v102 + 8);
        v108 = (v20 + 32);
        v107 = (v129 + 16);
        v106 = (v129 + 32);
        v116 = (v102 + 32);
        v126 = (v20 + 16);
        v105 = v13;
        while (v37 < v30[2])
        {
          v43 = *(v34 + 72);
          v44 = v37;
          v45 = *v38;
          v46 = v104;
          (*v38)(v104, v30 + v119 + v43 * v37, v7);
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v47 = v119;
          v48 = v121 + v119 + v43 * v36;
          v120 = v36;
          v49 = v127;
          v125 = v45;
          v45(v127, v48, v7);
          LODWORD(v128) = v131[2](v46, v49, v7);
          v50 = *v130;
          (*v130)(v49, v7);
          v129 = v50;
          (v50)(v46, v7);
          v51 = ((v128 & 1) != 0 ? v120 : v44);
          v52 = (v128 & 1) != 0 ? v44 : v120;
          v53 = (v128 & 1) != 0 ? v30 : v121;
          v54 = (v128 & 1) != 0 ? v121 : v30;
          if (v52 >= v53[2])
          {
            goto LABEL_47;
          }

          (*v100)(v132, v53 + v47 + v52 * v43, v13);
          v120 = v52 + 1;
          v55 = v54[2];
          if (v51 < v55)
          {
            v124 = *(v13 + 36);
            v56 = v125;
            v118 = v43;
            while ((v51 & 0x8000000000000000) == 0 && v51 < v55)
            {
              v57 = v54 + v119 + v51 * v43;
              v58 = v127;
              v56(v127, v57, v7);
              v59 = v131[4];
              v60 = v59(&v132[v124], v58, v7);
              (v129)(v58, v7);
              if ((v60 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (v51 >= v54[2])
              {
                break;
              }

              v122 = v53;
              v128 = v54;
              v61 = v13;
              v62 = *(v13 + 36);
              v63 = v127;
              v64 = v125;
              v125(v127, &v57[v62], v7);
              v65 = (v59)(&v132[v124], v63, v7, v131);
              (v129)(v63, v7);
              if (v65)
              {
                ++v51;
                v53 = v122;
                v121 = v122;
                v13 = v61;
                v54 = v128;
              }

              else
              {
                v66 = v115;
                v64(v115, v132, v7);
                if (v51 >= v128[2])
                {
                  break;
                }

                v67 = v117;
                v64(v117, &v57[v62], v7);
                if ((v131[3](v66, v67, v7) & 1) == 0)
                {
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v68 = v132;
                (*v109)(v132, v61);
                v69 = *v108;
                v70 = v112;
                (*v108)(v112, v66, v7);
                v71 = v114;
                v69(&v70[*(v114 + 48)], v117, v7);
                v72 = v113;
                (*v107)(v113, v70, v71);
                v73 = *(v71 + 48);
                v74 = v111;
                v69(v111, v72, v7);
                v121 = v51;
                v75 = v129;
                (v129)(&v72[v73], v7);
                v76 = v70;
                v13 = v105;
                (*v106)(v72, v76, v71);
                v69(&v74[*(v13 + 36)], &v72[*(v71 + 48)], v7);
                v75(v72, v7);
                (*v116)(v68, v74, v13);
                v51 = v120;
                v120 = v121 + 1;
                v53 = v128;
                v54 = v122;
                v121 = v128;
              }

              v55 = v54[2];
              v43 = v118;
              v56 = v125;
              if (v51 >= v55)
              {
                goto LABEL_6;
              }
            }

LABEL_47:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_5:
          v121 = v53;
LABEL_6:
          v30 = v54;
          v39 = v103;
          (*v116)(v103, v132, v13);
          v42 = type metadata accessor for Array(0, v13, v40, v41);
          Array.append(_:)(v39, v42);
          v38 = v126;
          v37 = v51;
          v36 = v120;
          v34 = v102;
          if (v120 >= v121[2])
          {
            goto LABEL_40;
          }
        }

        v136 = v30;
        v137 = v121;
        v51 = v36;
        v78 = type metadata accessor for ContiguousArray(0, v13, v32, v33);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v78, v81);
      }

      else
      {
        v51 = 0;
LABEL_40:
        v136 = v30;
        v137 = v121;
        if (v51 >= v30[2])
        {
          goto LABEL_44;
        }

        v78 = type metadata accessor for ContiguousArray(0, v13, v32, v33);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v78, v79);
      }

      specialized MutableCollection.subscript.getter(v51, v78, WitnessTable);
      v133[0] = v134[0];
      v133[1] = v134[1];
      v84 = type metadata accessor for Array(0, v13, v82, v83);
      v87 = type metadata accessor for ArraySlice(0, v13, v85, v86);
      v89 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v87, v88);
      Array.append<A>(contentsOf:)(v133, v84, v87, v89);
LABEL_44:
      v90 = v99;
      v91 = v135;
      v92 = v135;
      v93 = _ArrayBuffer.requestNativeBuffer()(v92, v13);
      v91;
      if (!v93)
      {
        *&v134[0] = v91;
        v96 = type metadata accessor for Array(0, v13, v94, v95);
        v98 = swift_getWitnessTable(protocol conformance descriptor for [A], v96, v97);
        v93 = _copyCollectionToContiguousArray<A>(_:)(v134, v96, v98);
      }

      v121;
      v30;
      v91;
      *v90 = v93;
      return;
    }

    *a3 = v29;
    v77 = v29;
  }

  else
  {
    v77 = v121;
    *a3 = v121;
  }

  v77;
}

void RangeSet.Ranges._intersection(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v106 = v9;
  v124 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v105 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v104 = &v86 - v13;
  v14 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v86 - v17;
  v18 = *(a2 + 24);
  v20 = type metadata accessor for Range(0, v8, v18, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v102 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v86 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v101 = &v86 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v107 = &v86 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v88 = &v86 - v32;
  v33 = *a1;
  v34 = *v4;
  v126 = v31;
  _swift_isClassOrObjCExistentialType(v31, v31);
  v35 = v34;
  v36 = *(v21 + 80);
  v37 = &_swiftEmptyArrayStorage;
  v128 = &_swiftEmptyArrayStorage;
  v93 = *(v35 + 16);
  if (v93)
  {
    v87 = a3;
    v125 = 0;
    v38 = 0;
    v39 = (v36 + 32) & ~v36;
    v91 = v35 + v39;
    v113 = v21 + 16;
    v112 = v21 + 32;
    v118 = v18 + 24;
    v121 = v18 + 16;
    v120 = v18 + 40;
    v116 = (v14 + 16);
    v92 = v21;
    v111 = (v21 + 8);
    v100 = (v14 + 32);
    v99 = (v124 + 16);
    v98 = (v14 + 8);
    v97 = (v124 + 32);
    v89 = v33 + v39;
    v96 = v18;
    v95 = v26;
    v40 = v107;
    v41 = v88;
    v114 = v33;
    v90 = v35;
    while (1)
    {
      if (v38 >= *(v35 + 16))
      {
LABEL_41:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v42 = v92;
      v43 = *(v92 + 72);
      v94 = v38;
      v44 = v126;
      v110 = *(v92 + 16);
      v110(v41, v91 + v43 * v38, v126);
      v45 = *(v42 + 32);
      v46 = v114;
      v109 = v45;
      v45(v40, v41, v44);
      v47 = *(v46 + 16);
      v48 = v125;
      v123 = v43;
      v124 = v47;
      if (v125 >= v47)
      {
        goto LABEL_15;
      }

      v49 = v125;
      v50 = v89 + v125 * v43;
      do
      {
        if (v125 < 0 || v49 >= *(v46 + 16))
        {
          goto LABEL_41;
        }

        if (((*(v18 + 24))(v50 + *(v126 + 9), v40, v8, v18) & 1) == 0)
        {
          v48 = v49;
          v43 = v123;
LABEL_15:
          if (v48 >= v124)
          {
            goto LABEL_4;
          }

          v51 = v89 + v48 * v43;
          while (2)
          {
            if (v48 >= *(v46 + 16))
            {
              goto LABEL_41;
            }

            v52 = *(v18 + 16);
            v122 = *(v126 + 9);
            if ((v52(v51, &v40[v122], v8, v18) & 1) == 0)
            {
              goto LABEL_3;
            }

            if (v48 >= *(v46 + 16))
            {
              goto LABEL_41;
            }

            v125 = v48;
            v110(v26, v51, v126);
            v119 = *(v18 + 40);
            if (v119(v40, v26, v8, v18))
            {
              v53 = v26;
              v54 = *v116;
              (*v116)(v117, v40, v8);
              v55 = v122;
            }

            else
            {
              v56 = v122;
              v57 = v52(&v40[v122], v26, v8, v18);
              v54 = *v116;
              if (v57)
              {
                v53 = v26;
                v58 = &v40[v56];
                v59 = v117;
              }

              else
              {
                v59 = v117;
                v53 = v26;
                v58 = v26;
              }

              v54(v59, v58, v8);
              v55 = v56;
            }

            v60 = *(v126 + 9);
            v61 = v52(&v40[v55], &v53[v60], v8, v18);
            v115 = v51;
            if (v61)
            {
              v108 = *v111;
              v108(v53, v126);
              v62 = &v40[v55];
              v63 = v103;
              v64 = v103;
              goto LABEL_30;
            }

            if (v119(v40, &v53[v60], v8, v18))
            {
              v108 = *v111;
              v108(v53, v126);
              v63 = v103;
              v64 = v103;
              v62 = v40;
LABEL_30:
              v54(v64, v62, v8);
            }

            else
            {
              v63 = v103;
              v54(v103, &v53[v60], v8);
              v108 = *v111;
              v108(v53, v126);
            }

            v65 = *v100;
            v66 = v104;
            (*v100)(v104, v117, v8);
            v67 = v106;
            v65(&v66[*(v106 + 48)], v63, v8);
            v68 = v105;
            (*v99)(v105, v66, v67);
            v69 = *(v67 + 48);
            v70 = v101;
            v65(v101, v68, v8);
            v71 = *v98;
            (*v98)(&v68[v69], v8);
            (*v97)(v68, v66, v67);
            v72 = v126;
            v65(&v70[*(v126 + 9)], &v68[*(v67 + 48)], v8);
            v71(v68, v8);
            v73 = v102;
            v109(v102, v70, v72);
            v76 = type metadata accessor for Array(0, v72, v74, v75);
            Array.append(_:)(v73, v76);
            v46 = v114;
            v77 = v125;
            if (v125 >= *(v114 + 16))
            {
              goto LABEL_41;
            }

            v40 = v107;
            v78 = v115;
            v18 = v96;
            if ((v119(&v107[v122], (v115 + *(v126 + 9)), v8, v96) & 1) == 0)
            {
              v108(v40, v126);
              v26 = v95;
              v41 = v88;
              goto LABEL_5;
            }

            v48 = v77 + 1;
            v51 = v78 + v123;
            v26 = v95;
            if (v124 == v48)
            {
              v48 = v124;
LABEL_3:
              v41 = v88;
              goto LABEL_4;
            }

            continue;
          }
        }

        ++v49;
        v50 += v123;
      }

      while (v124 != v49);
      v48 = v124;
LABEL_4:
      v125 = v48;
      (*v111)(v40, v126);
LABEL_5:
      v38 = v94 + 1;
      v35 = v90;
      if (v94 + 1 == v93)
      {
        v37 = v128;
        a3 = v87;
        break;
      }
    }
  }

  v79 = v37;
  v80 = _ArrayBuffer.requestNativeBuffer()(v79, v126);
  v37;
  if (!v80)
  {
    v127 = v37;
    v83 = type metadata accessor for Array(0, v126, v81, v82);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v83, v84);
    v80 = _copyCollectionToContiguousArray<A>(_:)(&v127, v83, WitnessTable);
  }

  v37;
  *a3 = v80;
}

uint64_t RangeSet.subtracting(_:)@<X0>(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  *a5 = *v5;
  v8 = v6;
  return RangeSet.subtract(_:)(&v8, a2, a3, a4);
}

uint64_t RangeSet.isSubset(of:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v10 = type metadata accessor for Range(0, v4, v8, v9);
  v67 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  v18 = *v2;
  v60 = *a1;
  *&v72 = v60;
  v20 = type metadata accessor for RangeSet.Ranges(0, v4, v8, v19);
  v18;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v20, v21);
  Collection.subscript.getter(v20, WitnessTable, &v76);
  v74 = v18;
  v75 = 0;
  v64 = v18[2];
  if (v64)
  {
    v24 = v5;
    v25 = 0;
    v68 = 0;
    v61 = (v67 + 4);
    v59 = (v24 + 16);
    ++v67;
    v58 = v8 + 16;
    v57 = (v24 + 8);
    v56 = v18;
    v55 = v20;
    v54 = WitnessTable;
    while (1)
    {
      RangeSet.Ranges.subscript.getter(v25, v20, v23, v17);
      v69 = v25;
      *&v72 = 0;
      *(&v72 + 1) = v64;
      specialized Collection._failEarlyRangeCheck(_:bounds:)(&v69, &v72, v20, WitnessTable);
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_15:
        LODWORD(v52) = 0;
        v51 = 760;
        LOBYTE(v50) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v65 = v25 + 1;
      v66 = v25;
      v75 = v25 + 1;
      v26 = (*v61)(v15, v17, v10);
      v27 = v77;
      v72 = v76;
      v73 = v77;
      MEMORY[0x1EEE9AC00](v26);
      v50 = v4;
      v51 = v8;
      v52 = v15;
      v29 = v8;
      v30 = type metadata accessor for Slice(0, v20, WitnessTable, v28);
      v27;
      v32 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v30, v31);
      v33 = v68;
      Collection.firstIndex(where:)(partial apply for closure #1 in RangeSet.isSubset(of:), (&v53 - 6), v30, v32, &v69);
      v73;
      if (v70)
      {
        v77;
        v74;
        (*v67)(v15, v10);
        return 0;
      }

      v68 = v33;
      v34 = v17;
      v35 = v69;
      v36 = v77;
      v72 = v76;
      v73 = v77;
      v37 = v62;
      Slice.subscript.getter(&v69, v30, v62);
      v36;
      v38 = v63;
      (*v59)(v63, v37 + *(v10 + 36), v4);
      v39 = *v67;
      (*v67)(v37, v10);
      v40 = v4;
      v41 = v10;
      v42 = &v15[*(v10 + 36)];
      v43 = v29;
      v44 = (*(v29 + 16))(v38, v42, v40, v29);
      (*v57)(v38, v40);
      if (v44)
      {
        break;
      }

      v71 = v60;
      v45 = *(v60 + 16);
      if (v45 < v35)
      {
        goto LABEL_15;
      }

      v69 = v35;
      v70 = v45;
      v46 = v55;
      v47 = v54;
      Collection<>.subscript.getter(&v69, v55, v54, &v72);
      v76 = v72;
      v77 = v73;
      v39(v15, v41);
      WitnessTable = v47;
      v8 = v43;
      v10 = v41;
      v4 = v40;
      v17 = v34;
      v20 = v46;
      v25 = v66 + 1;
      if (v65 == v56[2])
      {
        v18 = v74;
        goto LABEL_9;
      }
    }

    v74;
    v39(v15, v41);
    return 0;
  }

  else
  {
LABEL_9:
    v48 = v77;
    v18;
    v48;
    return 1;
  }
}

uint64_t RangeSet.isSuperset(of:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[0] = *v2;
  v5[1] = v3;
  return RangeSet.isSubset(of:)(v5, a2) & 1;
}

uint64_t RangeSet.isStrictSubset(of:)(atomic_ullong **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v8 = *a1;
  v9 = v5;
  if (static RangeSet.== infix(_:_:)(&v9, &v8, *(a2 + 16), *(a2 + 24)))
  {
    v6 = 0;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v6 = RangeSet.isSubset(of:)(&v8, a2);
  }

  return v6 & 1;
}

uint64_t RangeSet.isStrictSuperset(of:)(atomic_ullong **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v8 = v5;
  v9 = v4;
  if (static RangeSet.== infix(_:_:)(&v9, &v8, *(a2 + 16), *(a2 + 24)))
  {
    v6 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v4;
    v6 = RangeSet.isSubset(of:)(&v8, a2);
  }

  return v6 & 1;
}

BOOL RangeSet.isDisjoint(_:)(atomic_ullong **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v10[0] = *a1;
  v5 = v10[0];
  v10[1] = v6;
  v7 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a4);
  v10[0];
  v6;
  RangeSet.Ranges._intersection(_:)(v10, v7, &v11);
  v6;
  v5;
  v8 = *(v11 + 16);
  v11;
  return v8 == 0;
}

uint64_t RangeSet.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for Range(0, v6, v5, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v98 - v12;
  v14 = *v4;
  0xE000000000000000;
  v110 = 91;
  v111 = 0xE100000000000000;
  v15 = *(v14 + 16);
  if (v15)
  {
    v105 = v8 + 16;
    v106 = v8 + 32;
    v14;
    v16 = 0;
    v17 = 1;
    v104 = xmmword_18071DB30;
    v102 = xmmword_18071DB40;
    while (1)
    {
      if (v16 >= v15)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*(v8 + 16))(v13, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v7);
      *(&v108 + 1) = v15;
      v109 = v16;
      *&v108 = 0;
      v19 = type metadata accessor for RangeSet.Ranges(0, v6, v5, v18);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v19, v20);
      specialized Collection._failEarlyRangeCheck(_:bounds:)(&v109, &v108, v19, WitnessTable);
      v103 = *(v8 + 32);
      v103(v11, v13, v7);
      if (v17)
      {
        goto LABEL_50;
      }

      v101 = v5;
      v99 = v6;
      v22 = v110;
      v23 = v111;
      v24 = HIBYTE(v111) & 0xF;
      v25 = v110 & 0xFFFFFFFFFFFFLL;
      v26 = (v111 & 0x2000000000000000) != 0 ? HIBYTE(v111) & 0xF : v110 & 0xFFFFFFFFFFFFLL;
      if (!v26 && (v110 & ~v111 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v111 & 0x2000000000000000) != 0 && v24 <= 0xD)
      {
        v27 = 8 * (HIBYTE(v111) & 7);
        v28 = (-255 << v27) - 1;
        v29 = 44 << v27;
        v30 = v24 + 1;
        if (v24 >= 8)
        {
          v32 = v28 & v111 | v29;
          v31 = 8 * (v30 & 7);
          v6 = v99;
LABEL_31:
          v100 = v22;
          v40 = ((-255 << v31) - 1) & v32 | (32 << v31);
        }

        else
        {
          v22 = (v28 & v110 | v29);
          v6 = v99;
          if (v24 == 7)
          {
            v31 = 0;
            v32 = v111;
            goto LABEL_31;
          }

          v100 = (((-255 << (8 * (v30 & 7u))) - 1) & *&v22 | (32 << (8 * (v30 & 7u))));
          v40 = v111;
        }

        v111;
        0xE200000000000000;
        v54 = 0xE000000000000000;
        if (*&v100 & 0x8080808080808080 | v40 & 0x80808080808080)
        {
          v54 = 0xA000000000000000;
        }

        v110 = v100;
        v111 = (v54 & 0xFF00000000000000 | (v24 << 56) | v40 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
LABEL_49:
        v5 = v101;
        goto LABEL_50;
      }

      v100 = v110;
      0xE200000000000000;
      if ((v23 & 0x1000000000000000) != 0)
      {
        v26 = String.UTF8View._foreignCount()();
      }

      v34 = __OFADD__(v26, 2);
      v35 = v26 + 2;
      v5 = v101;
      if (v34)
      {
        goto LABEL_125;
      }

      if ((*&v100 & ~v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
      {
        v36 = _StringGuts.nativeUnusedCapacity.getter(*&v100, v23);
        if (v37)
        {
          goto LABEL_132;
        }

        if (v35 <= 15)
        {
          if ((v23 & 0x2000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v36 < 2)
          {
            goto LABEL_24;
          }
        }
      }

      else if (v35 <= 15)
      {
        if ((v23 & 0x2000000000000000) != 0)
        {
LABEL_33:
          v39 = v23;
        }

        else
        {
LABEL_24:
          if ((v23 & 0x1000000000000000) != 0)
          {
            v100 = _StringGuts._foreignConvertedToSmall()(*&v100, v23);
            v39 = v58;
          }

          else
          {
            if ((*&v100 & 0x1000000000000000) != 0)
            {
              v38 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v38 = _StringObject.sharedUTF8.getter(*&v100, v23);
              v25 = v61;
            }

            closure #1 in _StringGuts._convertedToSmall()(v38, v25, &v108, v33);
            v39 = *(&v108 + 1);
            v100 = v108;
          }
        }

        v41 = 0xE200000000000000;
        0xE200000000000000;
        v42._rawBits = 131073;
        v43._rawBits = 1;
        v44._rawBits = _StringGuts.validateScalarRange(_:)(v43, v42, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v44._rawBits < 0x10000)
        {
          v44._rawBits |= 3;
        }

        if (v44._rawBits >> 16 || (v47 = 8236, (v45._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v47 = specialized static String._copying(_:)(v44._rawBits, v45._rawBits, 0x202CuLL, 0xE200000000000000);
          v41 = v48;
          0xE200000000000000;
        }

        if ((v41 & 0x2000000000000000) != 0)
        {
          v41;
        }

        else if ((v41 & 0x1000000000000000) != 0)
        {
          v98 = _StringGuts._foreignConvertedToSmall()(v47, v41);
          v63 = v62;
          v41;
          v41 = v63;
          v47 = v98;
        }

        else
        {
          if ((v47 & 0x1000000000000000) != 0)
          {
            v59 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v60 = v47 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v59 = _StringObject.sharedUTF8.getter(v47, v41);
          }

          closure #1 in _StringGuts._convertedToSmall()(v59, v60, &v108, v46);
          v41;
          v41 = *(&v108 + 1);
          v47 = v108;
        }

        v49 = specialized _SmallString.init(_:appending:)(*&v100, v39, v47, v41);
        if (v51)
        {
          goto LABEL_132;
        }

        v52 = v49;
        v53 = v50;
        v23;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v110 = v52;
        v111 = v53;
        goto LABEL_44;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v35, 2);
      v108 = v102;
      closure #1 in _StringGuts.append(_:)(&v108, 2uLL, &v110, 1);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v6 = v99;
LABEL_50:
      ++v16;
      v55 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
      inited = swift_initStackObject(v55, v107);
      *(inited + 1) = v104;
      inited[7] = v7;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v103(boxed_opaque_existential_0Tm, v11, v7);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v110);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v17 = 0;
      v15 = *(v14 + 16);
      if (v16 == v15)
      {
        v35 = v110;
        v23 = v111;
        goto LABEL_62;
      }
    }

    v111;
    v110 = 8236;
    v111 = 0xE200000000000000;
LABEL_44:
    v6 = v99;
    goto LABEL_49;
  }

  v14;
  v23 = 0xE100000000000000;
  v35 = 91;
LABEL_62:
  v14;
  v14 = HIBYTE(v23) & 0xF;
  v7 = v35 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v64 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64 && (v35 & ~v23 & 0x2000000000000000) == 0)
  {
    v23;
    return 93;
  }

  if ((v23 & 0x2000000000000000) == 0 || v14 == 15)
  {
    0xE100000000000000;
    if ((v23 & 0x1000000000000000) != 0)
    {
      v91 = String.UTF8View._foreignCount()();
      v16 = v91 + 1;
      if (!__OFADD__(v91, 1))
      {
        goto LABEL_74;
      }
    }

    else
    {
      v34 = __OFADD__(v64, 1);
      v16 = v64 + 1;
      if (!v34)
      {
LABEL_74:
        v65 = v35 & ~v23;
        if ((v65 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
        {
          v66 = _StringGuts.nativeUnusedCapacity.getter(v35, v23);
          if (v67)
          {
            goto LABEL_132;
          }

          if (v16 > 15)
          {
            goto LABEL_85;
          }

          if ((v23 & 0x2000000000000000) == 0)
          {
            if (v66 < 1)
            {
LABEL_80:
              if ((v23 & 0x1000000000000000) == 0)
              {
                if ((v35 & 0x1000000000000000) != 0)
                {
                  v68 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_83:
                  closure #1 in _StringGuts._convertedToSmall()(v68, v7, &v108, v33);
                  v16 = *(&v108 + 1);
                  v35 = v108;
                  goto LABEL_102;
                }

LABEL_131:
                v68 = _StringObject.sharedUTF8.getter(v35, v23);
                v7 = v95;
                goto LABEL_83;
              }

              v35 = _StringGuts._foreignConvertedToSmall()(v35, v23);
              v16 = v90;
LABEL_102:
              v7 = 0xE100000000000000;
              0xE100000000000000;
              v14 = 93;
              v76._rawBits = 1;
              v77._rawBits = 65537;
              v78._rawBits = _StringGuts.validateScalarRange(_:)(v76, v77, 0x5DuLL, 0xE100000000000000)._rawBits;
              if (v78._rawBits < 0x10000)
              {
                v78._rawBits |= 3;
              }

              if (v78._rawBits >> 16 || (v79._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
              {
                v14 = specialized static String._copying(_:)(v78._rawBits, v79._rawBits, 0x5DuLL, 0xE100000000000000);
                v7 = v80;
                0xE100000000000000;
              }

              if ((v7 & 0x2000000000000000) != 0)
              {
                v7;
                goto LABEL_109;
              }

LABEL_126:
              v92 = v23;
              if ((v7 & 0x1000000000000000) != 0)
              {
                v14 = _StringGuts._foreignConvertedToSmall()(v14, v7);
                v97 = v96;
                v7;
                v7 = v97;
                v23 = v92;
              }

              else
              {
                if ((v14 & 0x1000000000000000) != 0)
                {
                  v93 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v94 = v14 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v93 = _StringObject.sharedUTF8.getter(v14, v7);
                }

                closure #1 in _StringGuts._convertedToSmall()(v93, v94, &v108, v33);
                v7;
                v7 = *(&v108 + 1);
                v14 = v108;
              }

LABEL_109:
              v81 = HIBYTE(v16) & 0xF;
              v82 = HIBYTE(v7) & 0xF;
              if (v82 + v81 <= 0xF)
              {
                0xE100000000000000;
                if (v82)
                {
                  v83 = 0;
                  v84 = 0;
                  v85 = 8 * v81;
                  do
                  {
                    v86 = v7 >> (v83 & 0x38);
                    if (v84 < 8)
                    {
                      v86 = v14 >> v83;
                    }

                    v87 = (v86 << (v85 & 0x38)) | ((-255 << (v85 & 0x38)) - 1) & v16;
                    v88 = (v86 << v85) | ((-255 << v85) - 1) & v35;
                    if (v81 <= 7)
                    {
                      v35 = v88;
                    }

                    else
                    {
                      v16 = v87;
                    }

                    ++v81;
                    v85 += 8;
                    v83 += 8;
                    ++v84;
                  }

                  while (8 * v82 != v83);
                }

                goto LABEL_71;
              }

LABEL_132:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_85:
            v69 = v65 & 0x2000000000000000;
            v70 = _StringGuts.nativeUnusedCapacity.getter(v35, v23);
            if ((v71 & 1) != 0 || v70 <= 0)
            {
              if (v69)
              {
                swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL);
              }

              v72 = _StringGuts.nativeCapacity.getter(v35, v23);
              if (v73)
              {
                v74 = 0;
              }

              else
              {
                v74 = v72;
              }

              if (v74 + 0x4000000000000000 < 0)
              {
                __break(1u);
                goto LABEL_131;
              }

              v75 = 2 * v74;
              if (v75 > v16)
              {
                v16 = v75;
              }
            }

            else if (v69 && swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_99;
            }

            _StringGuts.grow(_:)(v16);
LABEL_99:
            v108 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v108, 1uLL, &v110, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v110;
          }
        }

        else
        {
          if (v16 > 15)
          {
            goto LABEL_85;
          }

          if ((v23 & 0x2000000000000000) == 0)
          {
            goto LABEL_80;
          }
        }

        v16 = v23;
        goto LABEL_102;
      }
    }

    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v14 < 8)
  {
    v35 = ((-255 << (8 * (HIBYTE(v23) & 7u))) - 1) & v35 | (93 << (8 * (HIBYTE(v23) & 7u)));
  }

LABEL_71:
  v23;
  0xE100000000000000;
  return v35;
}

uint64_t RangeSet.Ranges.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = type metadata accessor for Range(0, *(a1 + 16), *(a1 + 24), a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v98 - v11;
  v13 = *v4;
  0xE000000000000000;
  v110 = 91;
  v111 = 0xE100000000000000;
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v7 + 16;
    v106 = v7 + 32;
    v13;
    v16 = 0;
    v17 = 1;
    v105 = xmmword_18071DB30;
    v104 = xmmword_18071DB40;
    while (1)
    {
      if (v16 >= v14)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*(v7 + 16))(v12, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v6);
      *(&v108 + 1) = v14;
      v109 = v16;
      *&v108 = 0;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, *&v5, v18);
      specialized Collection._failEarlyRangeCheck(_:bounds:)(&v109, &v108, *&v5, WitnessTable);
      v20 = *(v7 + 32);
      v20(v10, v12, v6);
      if (v17)
      {
        goto LABEL_51;
      }

      v103 = v20;
      v101 = v15;
      v102 = v10;
      v21 = v110;
      v22 = v111;
      v23 = HIBYTE(v111) & 0xF;
      v24 = *&v110 & 0xFFFFFFFFFFFFLL;
      if ((v111 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v111) & 0xF;
      }

      else
      {
        v25 = *&v110 & 0xFFFFFFFFFFFFLL;
      }

      if (!v25 && (*&v110 & ~v111 & 0x2000000000000000) == 0)
      {
        v111;
        v110 = 8236;
        v54 = 0xE200000000000000;
        goto LABEL_48;
      }

      if ((v111 & 0x2000000000000000) != 0 && v23 <= 0xD)
      {
        break;
      }

      v100 = v110;
      0xE200000000000000;
      if ((v22 & 0x1000000000000000) != 0)
      {
        v25 = String.UTF8View._foreignCount()();
      }

      v33 = __OFADD__(v25, 2);
      v34 = v25 + 2;
      v20 = v103;
      if (v33)
      {
        goto LABEL_126;
      }

      if ((*&v100 & ~v22 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v22 & 0xFFFFFFFFFFFFFFFLL))
      {
        v35 = _StringGuts.nativeUnusedCapacity.getter(*&v100, v22);
        if (v36)
        {
          goto LABEL_133;
        }

        if (v34 <= 15)
        {
          if ((v22 & 0x2000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v35 < 2)
          {
            goto LABEL_24;
          }
        }
      }

      else if (v34 <= 15)
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
LABEL_33:
          v38 = v22;
        }

        else
        {
LABEL_24:
          if ((v22 & 0x1000000000000000) != 0)
          {
            v100 = _StringGuts._foreignConvertedToSmall()(*&v100, v22);
            v38 = v59;
          }

          else
          {
            if ((*&v100 & 0x1000000000000000) != 0)
            {
              v37 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v37 = _StringObject.sharedUTF8.getter(*&v100, v22);
              v24 = v62;
            }

            closure #1 in _StringGuts._convertedToSmall()(v37, v24, &v108, v32);
            v38 = *(&v108 + 1);
            v100 = v108;
          }
        }

        v41 = 0xE200000000000000;
        0xE200000000000000;
        v42._rawBits = 131073;
        v43._rawBits = 1;
        v44._rawBits = _StringGuts.validateScalarRange(_:)(v43, v42, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v44._rawBits < 0x10000)
        {
          v44._rawBits |= 3;
        }

        if (v44._rawBits >> 16 || (v47 = 8236, (v45._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v47 = specialized static String._copying(_:)(v44._rawBits, v45._rawBits, 0x202CuLL, 0xE200000000000000);
          v41 = v48;
          0xE200000000000000;
        }

        if ((v41 & 0x2000000000000000) != 0)
        {
          v41;
        }

        else if ((v41 & 0x1000000000000000) != 0)
        {
          v47 = _StringGuts._foreignConvertedToSmall()(v47, v41);
          v99 = v63;
          v41;
          v41 = v99;
        }

        else
        {
          if ((v47 & 0x1000000000000000) != 0)
          {
            v60 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v61 = v47 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v60 = _StringObject.sharedUTF8.getter(v47, v41);
          }

          closure #1 in _StringGuts._convertedToSmall()(v60, v61, &v108, v46);
          v41;
          v41 = *(&v108 + 1);
          v47 = v108;
        }

        v49 = specialized _SmallString.init(_:appending:)(*&v100, v38, v47, v41);
        if (v51)
        {
          goto LABEL_133;
        }

        v52 = v49;
        v53 = v50;
        v22;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v110 = v52;
        v111 = v53;
        goto LABEL_49;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v34, 2);
      v108 = v104;
      closure #1 in _StringGuts.append(_:)(&v108, 2uLL, &v110, 1);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v10 = v102;
LABEL_50:
      v15 = v101;
LABEL_51:
      ++v16;
      v56 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
      inited = swift_initStackObject(v56, v107);
      *(inited + 1) = v105;
      inited[7] = v6;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v20(boxed_opaque_existential_0Tm, v10, v6);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v110);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v17 = 0;
      v14 = *(v13 + 16);
      if (v16 == v14)
      {
        v5 = v110;
        v22 = v111;
        goto LABEL_63;
      }
    }

    v26 = 8 * (HIBYTE(v111) & 7);
    v27 = (-255 << v26) - 1;
    v28 = 44 << v26;
    v29 = v23 + 1;
    if (v23 >= 8)
    {
      v31 = v27 & v111 | v28;
      v30 = 8 * (v29 & 7);
LABEL_31:
      v39 = v21;
      v40 = ((-255 << v30) - 1) & v31 | (32 << v30);
    }

    else
    {
      v21 = (v27 & *&v110 | v28);
      if (v23 == 7)
      {
        v30 = 0;
        v31 = v111;
        goto LABEL_31;
      }

      v39 = ((-255 << (8 * (v29 & 7u))) - 1) & *&v21 | (32 << (8 * (v29 & 7u)));
      v40 = v111;
    }

    v111;
    0xE200000000000000;
    v55 = 0xA000000000000000;
    if (!(v39 & 0x8080808080808080 | v40 & 0x80808080808080))
    {
      v55 = 0xE000000000000000;
    }

    v54 = (v55 & 0xFF00000000000000 | (v23 << 56) | v40 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v110 = v39;
LABEL_48:
    v111 = v54;
LABEL_49:
    v10 = v102;
    v20 = v103;
    goto LABEL_50;
  }

  v13;
  v22 = 0xE100000000000000;
  v5 = 91;
LABEL_63:
  v13;
  v7 = HIBYTE(v22) & 0xF;
  v13 = *&v5 & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v64 = *&v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64 && (*&v5 & ~v22 & 0x2000000000000000) == 0)
  {
    v22;
    return 93;
  }

  if ((v22 & 0x2000000000000000) == 0 || v7 == 15)
  {
    0xE100000000000000;
    if ((v22 & 0x1000000000000000) != 0)
    {
      v91 = String.UTF8View._foreignCount()();
      v6 = v91 + 1;
      if (!__OFADD__(v91, 1))
      {
        goto LABEL_75;
      }
    }

    else
    {
      v33 = __OFADD__(v64, 1);
      v6 = v64 + 1;
      if (!v33)
      {
LABEL_75:
        v65 = *&v5 & ~v22;
        if ((v65 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v22 & 0xFFFFFFFFFFFFFFFLL))
        {
          v66 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v22);
          if (v67)
          {
            goto LABEL_133;
          }

          if (v6 > 15)
          {
            goto LABEL_86;
          }

          if ((v22 & 0x2000000000000000) == 0)
          {
            if (v66 < 1)
            {
LABEL_81:
              if ((v22 & 0x1000000000000000) == 0)
              {
                if ((*&v5 & 0x1000000000000000) != 0)
                {
                  v68 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_84:
                  closure #1 in _StringGuts._convertedToSmall()(v68, v13, &v108, v32);
                  v6 = *(&v108 + 1);
                  v5 = v108;
                  goto LABEL_103;
                }

LABEL_132:
                v68 = _StringObject.sharedUTF8.getter(*&v5, v22);
                v13 = v95;
                goto LABEL_84;
              }

              v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v22);
              v6 = v90;
LABEL_103:
              v13 = 0xE100000000000000;
              0xE100000000000000;
              v7 = 93;
              v76._rawBits = 1;
              v77._rawBits = 65537;
              v78._rawBits = _StringGuts.validateScalarRange(_:)(v76, v77, 0x5DuLL, 0xE100000000000000)._rawBits;
              if (v78._rawBits < 0x10000)
              {
                v78._rawBits |= 3;
              }

              if (v78._rawBits >> 16 || (v79._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
              {
                v7 = specialized static String._copying(_:)(v78._rawBits, v79._rawBits, 0x5DuLL, 0xE100000000000000);
                v13 = v80;
                0xE100000000000000;
              }

              if ((v13 & 0x2000000000000000) != 0)
              {
                v13;
                goto LABEL_110;
              }

LABEL_127:
              v92 = v22;
              if ((v13 & 0x1000000000000000) != 0)
              {
                v7 = _StringGuts._foreignConvertedToSmall()(v7, v13);
                v97 = v96;
                v13;
                v13 = v97;
                v22 = v92;
              }

              else
              {
                if ((v7 & 0x1000000000000000) != 0)
                {
                  v93 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v94 = v7 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v93 = _StringObject.sharedUTF8.getter(v7, v13);
                }

                closure #1 in _StringGuts._convertedToSmall()(v93, v94, &v108, v32);
                v13;
                v13 = *(&v108 + 1);
                v7 = v108;
              }

LABEL_110:
              v81 = HIBYTE(v6) & 0xF;
              v82 = HIBYTE(v13) & 0xF;
              if (v82 + v81 <= 0xF)
              {
                0xE100000000000000;
                if (v82)
                {
                  v83 = 0;
                  v84 = 0;
                  v85 = 8 * v81;
                  do
                  {
                    v86 = v13 >> (v83 & 0x38);
                    if (v84 < 8)
                    {
                      v86 = v7 >> v83;
                    }

                    v87 = (v86 << (v85 & 0x38)) | ((-255 << (v85 & 0x38)) - 1) & v6;
                    v88 = (v86 << v85) | ((-255 << v85) - 1) & *&v5;
                    if (v81 <= 7)
                    {
                      v5 = v88;
                    }

                    else
                    {
                      v6 = v87;
                    }

                    ++v81;
                    v85 += 8;
                    v83 += 8;
                    ++v84;
                  }

                  while (8 * v82 != v83);
                }

                goto LABEL_72;
              }

LABEL_133:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_86:
            v69 = v65 & 0x2000000000000000;
            v70 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v22);
            if ((v71 & 1) != 0 || v70 <= 0)
            {
              if (v69)
              {
                swift_isUniquelyReferenced_nonNull_native(v22 & 0xFFFFFFFFFFFFFFFLL);
              }

              v72 = _StringGuts.nativeCapacity.getter(*&v5, v22);
              if (v73)
              {
                v74 = 0;
              }

              else
              {
                v74 = v72;
              }

              if (v74 + 0x4000000000000000 < 0)
              {
                __break(1u);
                goto LABEL_132;
              }

              v75 = 2 * v74;
              if (v75 > v6)
              {
                v6 = v75;
              }
            }

            else if (v69 && swift_isUniquelyReferenced_nonNull_native(v22 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_100;
            }

            _StringGuts.grow(_:)(v6);
LABEL_100:
            v108 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v108, 1uLL, &v110, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v110;
          }
        }

        else
        {
          if (v6 > 15)
          {
            goto LABEL_86;
          }

          if ((v22 & 0x2000000000000000) == 0)
          {
            goto LABEL_81;
          }
        }

        v6 = v22;
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v7 < 8)
  {
    v5 = (((-255 << (8 * (HIBYTE(v22) & 7u))) - 1) & *&v5 | (93 << (8 * (HIBYTE(v22) & 7u))));
  }

LABEL_72:
  v22;
  0xE100000000000000;
  return v5;
}

void *MutableCollection<>.sort(by:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v123 = a5;
  v125 = a2;
  v8 = *(a4 + 8);
  v121 = *(v8 + 8);
  swift_getAssociatedTypeWitness(0, v121, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v119 = v9;
  v115 = *(v9 - 1);
  v104 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v95 - v10;
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v108 = type metadata accessor for Optional(0, v11, v13, v14);
  v107 = *(v108 - 8);
  v15 = MEMORY[0x1EEE9AC00](v108);
  v116 = &v95 - v16;
  v118 = *(v12 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v110 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v95 - v19;
  v117 = v12;
  swift_getTupleTypeMetadata2(0, v12, &type metadata for Int, 0, 0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v105 = &v95 - v21;
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Indices);
  v23 = v22;
  v113 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v95 - v24;
  v122 = v8;
  v25 = *(swift_getAssociatedConformanceWitness(v8, a3, v23, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Indices: Collection) + 8);
  v27 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, protocol conformance descriptor for <> Range<A>, v26);
  v133 = v23;
  v134 = &unk_1EEEBBF38;
  v135 = v25;
  v136 = v27;
  v111 = type metadata accessor for Zip2Sequence(0, &v133);
  MEMORY[0x1EEE9AC00](v111);
  v29 = (&v95 - v28);
  v133 = v23;
  v134 = &unk_1EEEBBF38;
  v30 = v25;
  v135 = v25;
  v136 = v27;
  v31 = type metadata accessor for Zip2Sequence.Iterator(0, &v133);
  v109 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v95 - v33;
  v120 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = a3;
  v129 = a4;
  v37 = v124;
  v130 = v123;
  v131 = a1;
  v123 = a1;
  v132 = v125;
  result = (*(a4 + 80))(&v133, partial apply for closure #1 in MutableCollection<>.sort(by:), v127, &unk_1EEEAC658, a3, a4);
  if (!v37)
  {
    v98 = v29;
    v99 = v30;
    v39 = v121;
    v100 = v23;
    v40 = v122;
    v103 = v34;
    v101 = v31;
    v124 = a3;
    v102 = a4;
    if (v133 == 1)
    {
      v41 = v124;
      (v120[2])(v36, v126, v124);
      v133 = (v39[7])(v41, v39);
      v42 = v119;
      v45 = type metadata accessor for ContiguousArray(0, v119, v43, v44);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v45, v46);
      v49 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v45, v48);
      MutableCollection<>.sort(by:)(v123, v125, v45, WitnessTable, v49);
      v50 = v133;
      v125 = 0;
      v51 = v98;
      (*(v40 + 96))(v41, v40);
      v123 = v50;
      v137 = v50;
      v54 = type metadata accessor for Array(0, v42, v52, v53);
      v56 = swift_getWitnessTable(protocol conformance descriptor for [A], v54, v55);
      RandomAccessCollection<>.indices.getter(v54, v56, &protocol witness table for Int, &v133);
      v58 = v133;
      v57 = v134;
      v59 = (v51 + *(v111 + 52));
      *v59 = v133;
      v59[1] = v57;
      v60 = v51;
      v61 = v100;
      (*(v113 + 32))(v112, v60, v100);
      v62 = v99;
      v63 = v103;
      (*(v99 + 32))(v61, v99);
      v64 = v101;
      v65 = &v63[*(v101 + 52)];
      *v65 = v58;
      v65[1] = v57;
      v120 = v65;
      v65[2] = v58;
      v121 = *(v64 + 56);
      v122 = v57;
      *(v121 + v63) = 0;
      swift_getAssociatedTypeWitness(255, v62, v61, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v67 = v66;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v62, v61, v66, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v69 = AssociatedConformanceWitness + 16;
      v70 = *(AssociatedConformanceWitness + 16);
      v113 = v67;
      v71 = swift_checkMetadataState(0, v67);
      v72 = v116;
      v112 = AssociatedConformanceWitness;
      v111 = v70;
      v70(v71, AssociatedConformanceWitness);
      v73 = v72;
      v74 = v117;
      v75 = *(v118 + 48);
      v100 = (v118 + 48);
      if (v75(v72, 1, v117) == 1)
      {
LABEL_4:
        v123;
        (*(v107 + 8))(v73, v108);
      }

      else
      {
        v78 = v118 + 32;
        v77 = *(v118 + 32);
        v99 = v123 & 0xC000000000000001;
        v98 = (v115 + 16);
        v97 = v102 + 24;
        while (1)
        {
          v79 = v77;
          v80 = v78;
          v77(v114, v73, v74);
          if (v122 == v58)
          {
            break;
          }

          if (v58 >= v122)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v95 = v69;
          v96 = v75;
          v81 = v99 == 0;
          v120[2] = v58 + 1;
          v82 = v105;
          v79(v105, v114, v74);
          v79(v110, v82, v74);
          v83 = v119;
          v84 = v81 | ~_swift_isClassOrObjCExistentialType(v119, v119);
          v85 = v123;
          Array._checkSubscript(_:wasNativeTypeChecked:)(v58, v84 & 1);
          if (v84)
          {
            v86 = v106;
            (*(v115 + 16))(v106, v85 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v58, v83);
          }

          else
          {
            v91 = _ArrayBuffer._getElementSlowPath(_:)(v58, v85, v83);
            if (v104 != 8)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v92 = v91;
            v133 = v91;
            v93 = v106;
            (*v98)(v106, &v133, v119);
            v94 = v92;
            v86 = v93;
            swift_unknownObjectRelease(v94);
            v41 = v124;
          }

          v75 = v96;
          v69 = v95;
          (*(v102 + 24))(v86, v110, v41);
          v87 = swift_checkMetadataState(0, v113);
          v88 = v116;
          (v111)(v87, v112);
          v73 = v88;
          v89 = v88;
          v74 = v117;
          v90 = v75(v89, 1, v117);
          ++v58;
          v77 = v79;
          v78 = v80;
          if (v90 == 1)
          {
            goto LABEL_4;
          }
        }

        (*(v118 + 8))(v114, v74);
        v123;
      }

      v76 = v109;
      *(v121 + v103) = 1;
      return (*(v76 + 8))();
    }
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance RangeSet<A>.Ranges(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RangeSet<A>.Ranges(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  *v3;
  return v6;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance RangeSet<A>.Ranges@<X0>(uint64_t *a1@<X8>)
{
  result = RangeSet.Ranges.count.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance RangeSet<A>.Ranges(uint64_t **a1, unint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xFBEEuLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = RangeSet.Ranges.subscript.read(v6, *a2, a3, v7);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*RangeSet.Ranges.subscript.read(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for Range(0, *(a3 + 16), *(a3 + 24), a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  a1[1] = v8;
  v10 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x8951uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  if ((a2 & 0x8000000000000000) != 0 || *(*v4 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v9 + 16))(v11, *v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, v7);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection.indices.getter in conformance RangeSet<A>.Ranges@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a3);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a3);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance RangeSet<A>.Ranges(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, unint64_t, unint64_t, _UNKNOWN **))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance RangeSet<A>.Ranges@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t protocol witness for BidirectionalCollection.distance(from:to:) in conformance RangeSet<A>.Ranges(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

void RangeSet.Ranges<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v6 = *(a2 + 24);
  v26 = *(a2 + 16);
  v24 = type metadata accessor for Range(0, v26, v6, a4);
  v28 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v19 - v7;
  v8 = *v4;
  v9 = *(*v4 + 16);
  v27 = a1;
  Hasher._combine(_:)(v9);
  v25 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = v29;
    v21 = v29 + 24;
    v22 = v28 + 16;
    v19[1] = v28 + 8;
    v20 = v8;
    v12 = v26;
    do
    {
      if (v10 >= *(v8 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v13 = v28;
      v14 = v23;
      v15 = v24;
      (*(v28 + 16))(v23, v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10++, v24);
      v16 = *(v11 + 24);
      v17 = v27;
      v16(v27, v12, v11);
      v18 = v17;
      v8 = v20;
      v16(v18, v12, v11);
      (*(v13 + 8))(v14, v15);
    }

    while (v25 != v10);
  }
}

Swift::Int RangeSet.Ranges<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = 0u;
  v9 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  RangeSet.Ranges<>.hash(into:)(&v6, a1, a2, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> RangeSet<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, double))
{
  v6 = *(a3 - 8);
  v7 = specialized Hasher.init(_seed:)(a1, v9);
  a4(v9, a2, v6, v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a2, a3);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t protocol witness for BidirectionalCollection.distance(from:to:) in conformance _Pair<A>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _Pair<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0x2CA3uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = _Pair.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*_Pair.subscript.read(void *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x5C18uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *v7 = v9;
  swift_getTupleTypeMetadata2(0, v9, v9, "first second ", 0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  if (swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc(v13, 0x5C18uLL);
  }

  else
  {
    v14 = malloc(v13);
  }

  v15 = v14;
  v8[1] = v14;
  v16 = *(v9 - 8);
  v17 = v16;
  v8[2] = v16;
  v18 = *(v16 + 64);
  if (swift_coroFrameAlloc)
  {
    v19 = swift_coroFrameAlloc(v18, 0x5C18uLL);
  }

  else
  {
    v19 = malloc(v18);
  }

  v20 = v19;
  v8[3] = v19;
  if (a2 == 1)
  {
    (*(v12 + 16))(v15, v3, v11);
    v21 = &v15[*(v11 + 48)];
  }

  else
  {
    if (a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v12 + 16))(v15, v3, v11);
    v21 = v15;
    v15 += *(v11 + 48);
  }

  (*(v17 + 32))(v20, v21, v9);
  v22 = *(v17 + 8);
  v8[4] = v22;
  v22(v15, v9);
  return _Pair.subscript.read;
}

void _Pair.subscript.read(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[1];
  ((*a1)[4])(v2, **a1);
  free(v2);
  free(v3);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance _Pair<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance _Pair<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a2, a3);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _Pair<A>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, unint64_t, unint64_t, _UNKNOWN **))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _Pair<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  (*(*(a1 - 8) + 32))(a2, v4, a1);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, v6);
  result = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _Pair<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _Pair<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Pair<A>, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

uint64_t Mirror.init(internalReflecting:subjectType:customAncestor:)@<X0>(unint64_t *a1@<X0>, objc_class *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3[1];
  v193 = *a3;
  v194[0] = v6;
  *(v194 + 9) = *(a3 + 25);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v8 = a1[3];
    v9 = __swift_project_boxed_opaque_existential_0Tm(a1, v8);
    DynamicType = swift_getDynamicType(v9, v8, 1);
    v7 = swift_reflectionMirror_normalizedType(a1, DynamicType, byte_1EEEAC6F8);
  }

  v11 = swift_reflectionMirror_count(a1, v7, byte_1EEEAC6F8);
  if (v11 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = v11;
  outlined init with copy of Any(a1, v192);
  v13 = swift_allocObject(&unk_1EEEBE918, 0x38, 7uLL);
  outlined init with take of Any(v192, v13 + 1);
  v13[6] = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVySnySiGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVySnySiGSSSg5label_yp5valuetGGMR);
  v15 = swift_allocObject(v14, 0x50, 7uLL);
  v15[6] = 0;
  v15[7] = v12;
  v15[8] = partial apply for closure #1 in Mirror.init(internalReflecting:subjectType:customAncestor:);
  v15[9] = v13;
  v16 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v17 = swift_allocObject(v16, 0x18, 7uLL);
  v17[2] = 0;
  v18 = swift_allocObject(v16, 0x18, 7uLL);
  v18[2] = v12;
  v15[2] = v17;
  v15[3] = &protocol witness table for _IndexBox<A>;
  v15[4] = v18;
  v15[5] = &protocol witness table for _IndexBox<A>;
  outlined init with copy of Any(a1, v192);
  v19 = swift_allocObject(&unk_1EEEBE940, 0x68, 7uLL);
  v19[2] = v7;
  v20 = v194[0];
  *(v19 + 3) = v193;
  *(v19 + 5) = v20;
  *(v19 + 49) = *(v194 + 9);
  outlined init with take of Any(v192, v19 + 9);
  v13;
  outlined init with copy of Mirror?(&v193, v192);
  v21 = swift_reflectionMirror_displayStyle(a1, byte_1EEEAC6F8);
  if ((v21 & 0x80) != 0)
  {
    goto LABEL_21;
  }

  if (v21 > 0x65u)
  {
    switch(v21)
    {
      case 'f':
        v22 = 8;
        goto LABEL_19;
      case 's':
        v22 = 0;
        goto LABEL_19;
      case 't':
        v22 = 3;
        goto LABEL_19;
    }

LABEL_21:
    v187 = v21;
    v24 = _StringGuts.init(_initialCapacity:)(30);
    v26 = v25;
    *&v192[0] = v24;
    *(&v192[0] + 1) = v25;
    v189 = 0x8000000180672010 | 0x8000000000000000;
    v27 = HIBYTE(v25) & 0xF;
    v28 = v24;
    v29 = v24 & 0xFFFFFFFFFFFFLL;
    if ((v25 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(v25) & 0xF;
    }

    else
    {
      v30 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30 && (v24 & ~v25 & 0x2000000000000000) == 0)
    {
      v25;
      *&v192[0] = 0xD00000000000001BLL;
      v31 = 0x8000000180672010 | 0x8000000000000000;
LABEL_93:
      *(&v192[0] + 1) = v31;
      goto LABEL_100;
    }

    v32 = 0x8000000180672010 & 0x2000000000000000;
    v33 = (0x8000000180672010 >> 56) & 0xF;
    if ((0x8000000180672010 & 0x2000000000000000 & v25) != 0)
    {
      v34 = v27 + v33;
      if (v27 + v33 <= 0xF)
      {
        if (v33)
        {
          v73 = 0;
          v74 = 0;
          v75 = 8 * v27;
          v56 = v25;
          v57 = 0x8000000180672010 | 0x8000000000000000;
          v58 = v24;
          do
          {
            v76 = v27 + v74;
            v67 = v74 >= 8;
            v77 = v74 + 1;
            v78 = v189 >> (v73 & 0x38);
            if (!v67)
            {
              v78 = 0xD00000000000001BLL >> v73;
            }

            v79 = (v78 << ((v75 + v73) & 0x38)) | ((-255 << ((v75 + v73) & 0x38)) - 1) & v56;
            v80 = (v78 << (v75 + v73)) | ((-255 << (v75 + v73)) - 1) & v58;
            if (v76 <= 7)
            {
              v58 = v80;
            }

            else
            {
              v56 = v79;
            }

            v73 += 8;
            v74 = v77;
          }

          while (v33 != v77);
        }

        else
        {
          v56 = v25;
          v57 = 0x8000000180672010 | 0x8000000000000000;
          v58 = v24;
        }

        v81 = v57;
        v82 = v58;
        v26;
        v81;
        v83 = 0xA000000000000000;
        if (!(v82 & 0x8080808080808080 | v56 & 0x80808080808080))
        {
          v83 = 0xE000000000000000;
        }

        v31 = v83 & 0xFF00000000000000 | (v34 << 56) | v56 & 0xFFFFFFFFFFFFFFLL;
        *&v192[0] = v82;
        goto LABEL_93;
      }
    }

    if (v32)
    {
      v35 = (0x8000000180672010 >> 56) & 0xF;
    }

    else
    {
      v35 = 27;
    }

    if ((0x8000000180672010 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v189, 2);
      v164._rawBits = 1;
      v165._rawBits = (v35 << 16) | 1;
      v166._rawBits = _StringGuts.validateScalarRange(_:)(v164, v165, 0xD00000000000001BLL, v189)._rawBits;
      if (v166._rawBits < 0x10000)
      {
        v166._rawBits |= 3;
      }

      v37 = String.UTF8View.distance(from:to:)(v166, v167);
      v189;
      if ((v26 & 0x1000000000000000) == 0)
      {
LABEL_34:
        v38 = __OFADD__(v30, v37);
        v39 = v30 + v37;
        if (!v38)
        {
LABEL_35:
          v40 = v28 & ~v26;
          if ((v40 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v26 & 0xFFFFFFFFFFFFFFFLL))
          {
            v41 = _StringGuts.nativeUnusedCapacity.getter(v28, v26);
            if (v42)
            {
              goto LABEL_201;
            }

            if (v39 > 15)
            {
              goto LABEL_46;
            }

            if ((v26 & 0x2000000000000000) == 0)
            {
              if (v41 < v37)
              {
                goto LABEL_41;
              }

LABEL_46:
              v44 = v40 & 0x2000000000000000;
              v45 = _StringGuts.nativeUnusedCapacity.getter(v28, v26);
              if ((v46 & 1) != 0 || v45 < v37)
              {
                if (v44)
                {
                  swift_isUniquelyReferenced_nonNull_native(v26 & 0xFFFFFFFFFFFFFFFLL);
                }

                v47 = 2 * _StringGuts.nativeCapacity.getter(v28, v26);
                if (v48)
                {
                  v47 = 0;
                }

                if (v47 > v39)
                {
                  v39 = v47;
                }
              }

              else if (v44 && swift_isUniquelyReferenced_nonNull_native(v26 & 0xFFFFFFFFFFFFFFFLL))
              {
                goto LABEL_55;
              }

              _StringGuts.grow(_:)(v39);
LABEL_55:
              if ((0x8000000180672010 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignAppendInPlace(_:)(0xD00000000000001BLL, v189, 0, v35);
                v59 = 0x8000000180672010 | 0x8000000000000000;
              }

              else
              {
                if (v32)
                {
                  v51 = (0x8000000180672010 >> 62) & 1;
                  *&v191 = 0xD00000000000001BLL;
                  *(&v191 + 1) = 0x8000000180672010 & 0xFFFFFFFFFFFFF0;
                  v49 = &v191;
                  v50 = (0x8000000180672010 >> 56) & 0xF;
                }

                else
                {
                  v49 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 27, (0x8000000180672010 & 0xFFFFFFFFFFFFFF0) + 32, 27);
                  LOBYTE(v51) = 1;
                }

                closure #1 in _StringGuts.append(_:)(v49, v50, v192, v51);
                v59 = 0x8000000180672010 | 0x8000000000000000;
              }

              swift_bridgeObjectRelease_n(v59, 2);
LABEL_100:
              v84 = _int64ToString(_:radix:uppercase:)(v187, 10, 0, swift_int64ToString);
              v86 = v85;
              v87 = *(&v192[0] + 1);
              v88 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
              v188 = *&v192[0];
              v190 = v84;
              v89 = *&v192[0] & 0xFFFFFFFFFFFFLL;
              if ((*(&v192[0] + 1) & 0x2000000000000000) != 0)
              {
                v90 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
              }

              else
              {
                v90 = *&v192[0] & 0xFFFFFFFFFFFFLL;
              }

              if (!v90 && (*&v192[0] & ~*(&v192[0] + 1) & 0x2000000000000000) == 0)
              {
                *(&v192[0] + 1);
                *&v192[0] = v190;
                *(&v192[0] + 1) = v86;
                goto LABEL_167;
              }

              v91 = (v85 & 0x2000000000000000) == 0;
              v92 = HIBYTE(v85) & 0xF;
              if ((*(&v192[0] + 1) & 0x2000000000000000) != 0)
              {
                if ((v85 & 0x2000000000000000) != 0)
                {
                  v113 = v88 + v92;
                  if ((v88 + v92) < 0x10)
                  {
                    if (v92)
                    {
                      v127 = 0;
                      v128 = 0;
                      v129 = 8 * v88;
                      v125 = *(&v192[0] + 1);
                      v126 = *&v192[0];
                      do
                      {
                        v130 = v88 + v128;
                        v67 = v128 >= 8;
                        v131 = v128 + 1;
                        v132 = v85 >> (v127 & 0x38);
                        if (!v67)
                        {
                          v132 = v84 >> v127;
                        }

                        v133 = (v132 << ((v129 + v127) & 0x38)) | ((-255 << ((v129 + v127) & 0x38)) - 1) & v125;
                        v134 = (v132 << (v129 + v127)) | ((-255 << (v129 + v127)) - 1) & v126;
                        if (v130 <= 7)
                        {
                          v126 = v134;
                        }

                        else
                        {
                          v125 = v133;
                        }

                        v127 += 8;
                        v128 = v131;
                      }

                      while (v92 != v131);
                    }

                    else
                    {
                      v125 = *(&v192[0] + 1);
                      v126 = *&v192[0];
                    }

                    *(&v192[0] + 1);
                    v86;
                    v135 = 0xA000000000000000;
                    if (!(v126 & 0x8080808080808080 | v125 & 0x80808080808080))
                    {
                      v135 = 0xE000000000000000;
                    }

                    *&v192[0] = v126;
                    for (*(&v192[0] + 1) = v135 & 0xFF00000000000000 | (v113 << 56) | v125 & 0xFFFFFFFFFFFFFFLL; ; *(&v192[0] + 1) = v124)
                    {
LABEL_167:
                      v86 = *(&v192[0] + 1);
                      v87 = *&v192[0];
                      v136 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
                      v101 = *&v192[0] & 0xFFFFFFFFFFFFLL;
                      if ((*(&v192[0] + 1) & 0x2000000000000000) != 0)
                      {
                        v137 = HIBYTE(*(&v192[0] + 1)) & 0xFLL;
                      }

                      else
                      {
                        v137 = *&v192[0] & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v137 && (*&v192[0] & ~*(&v192[0] + 1) & 0x2000000000000000) == 0)
                      {
                        *(&v192[0] + 1);
                        v138 = 0xE100000000000000;
                        v87 = 39;
                        goto LABEL_203;
                      }

                      if ((*(&v192[0] + 1) & 0x2000000000000000) != 0 && v136 != 15)
                      {
                        v139 = 8 * (HIBYTE(*(&v192[0] + 1)) & 7);
                        v140 = (-255 << v139) - 1;
                        v141 = 39 << v139;
                        v142 = v140 & *(&v192[0] + 1) | v141;
                        v143 = v140 & *&v192[0] | v141;
                        if (v136 >= 8)
                        {
                          v144 = v142;
                        }

                        else
                        {
                          v144 = *(&v192[0] + 1);
                        }

                        if (v136 < 8)
                        {
                          v87 = v143;
                        }

                        *(&v192[0] + 1);
                        0xE100000000000000;
                        v145 = 0xA000000000000000;
                        if (!(v87 & 0x8080808080808080 | v144 & 0x80808080808080))
                        {
                          v145 = 0xE000000000000000;
                        }

                        v138 = (v145 & 0xFF00000000000000 | (v136 << 56) | v144 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
                        goto LABEL_203;
                      }

                      0xE100000000000000;
                      if ((v86 & 0x1000000000000000) != 0)
                      {
                        v171 = String.UTF8View._foreignCount()();
                        v112 = v171 + 1;
                        if (!__OFADD__(v171, 1))
                        {
LABEL_185:
                          if ((v87 & ~v86 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v86 & 0xFFFFFFFFFFFFFFFLL))
                          {
                            v146 = _StringGuts.nativeUnusedCapacity.getter(v87, v86);
                            if (v147)
                            {
                              goto LABEL_201;
                            }

                            if (v112 > 15)
                            {
                              goto LABEL_190;
                            }

                            if ((v86 & 0x2000000000000000) == 0)
                            {
                              if (v146 < 1)
                              {
                                goto LABEL_207;
                              }

LABEL_190:
                              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v112, 1);
                              v191 = xmmword_18071DCC0;
                              closure #1 in _StringGuts.append(_:)(&v191, 1uLL, v192, 1);
                              swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                              v138 = *(&v192[0] + 1);
                              v87 = *&v192[0];
LABEL_203:
                              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v87, v138, "Swift/ReflectionMirror.swift", 0x1CuLL, 2, 0xB6uLL);
                            }

LABEL_192:
                            v148 = v86;
                          }

                          else
                          {
                            if (v112 > 15)
                            {
                              goto LABEL_190;
                            }

                            if ((v86 & 0x2000000000000000) != 0)
                            {
                              goto LABEL_192;
                            }

LABEL_207:
                            if ((v86 & 0x1000000000000000) != 0)
                            {
                              v87 = _StringGuts._foreignConvertedToSmall()(v87, v86);
                              v148 = v163;
                            }

                            else
                            {
                              if ((v87 & 0x1000000000000000) != 0)
                              {
                                v160 = ((v86 & 0xFFFFFFFFFFFFFFFLL) + 32);
                              }

                              else
                              {
                                v160 = _StringObject.sharedUTF8.getter(v87, v86);
                                v101 = v180;
                              }

                              closure #1 in _StringGuts._convertedToSmall()(v160, v101, &v191, v111);
                              v148 = *(&v191 + 1);
                              v87 = v191;
                            }
                          }

                          v149 = 0xE100000000000000;
                          0xE100000000000000;
                          v150 = 39;
                          v151._rawBits = 1;
                          v152._rawBits = 65537;
                          v153._rawBits = _StringGuts.validateScalarRange(_:)(v151, v152, 0x27uLL, 0xE100000000000000)._rawBits;
                          if (v153._rawBits < 0x10000)
                          {
                            v153._rawBits |= 3;
                          }

                          if (v153._rawBits >> 16 || (v154._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
                          {
                            v150 = specialized static String._copying(_:)(v153._rawBits, v154._rawBits, 0x27uLL, 0xE100000000000000);
                            v149 = v156;
                            0xE100000000000000;
                          }

                          if ((v149 & 0x2000000000000000) != 0)
                          {
                            v149;
                          }

                          else if ((v149 & 0x1000000000000000) != 0)
                          {
                            v150 = _StringGuts._foreignConvertedToSmall()(v150, v149);
                            v186 = v185;
                            v149;
                            v149 = v186;
                          }

                          else
                          {
                            if ((v150 & 0x1000000000000000) != 0)
                            {
                              v174 = ((v149 & 0xFFFFFFFFFFFFFFFLL) + 32);
                              v175 = v150 & 0xFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v174 = _StringObject.sharedUTF8.getter(v150, v149);
                            }

                            closure #1 in _StringGuts._convertedToSmall()(v174, v175, &v191, v155);
                            v149;
                            v149 = *(&v191 + 1);
                            v150 = v191;
                          }

                          v157 = specialized _SmallString.init(_:appending:)(v87, v148, v150, v149);
                          if (v159)
                          {
LABEL_201:
                            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                          }

                          v87 = v157;
                          v138 = v158;
                          v86;
                          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                          goto LABEL_203;
                        }
                      }

                      else
                      {
                        v38 = __OFADD__(v137, 1);
                        v112 = v137 + 1;
                        if (!v38)
                        {
                          goto LABEL_185;
                        }
                      }

                      __break(1u);
LABEL_227:
                      if ((v112 & 0x1000000000000000) != 0)
                      {
                        v190 = _StringGuts._foreignConvertedToSmall()(v190, v112);
                        v184 = v183;
                        v112;
                        v120 = specialized _SmallString.init(_:appending:)(v188, v101, v190, v184);
                      }

                      else
                      {
                        if ((v190 & 0x1000000000000000) != 0)
                        {
                          v172 = ((v112 & 0xFFFFFFFFFFFFFFFLL) + 32);
                          v173 = v190 & 0xFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v172 = _StringObject.sharedUTF8.getter(v190, v112);
                        }

                        closure #1 in _StringGuts._convertedToSmall()(v172, v173, &v191, v111);
                        v112;
                        v190 = v191;
                        v120 = specialized _SmallString.init(_:appending:)(v188, v101, v191, *(&v191 + 1));
                      }

LABEL_150:
                      if (v122)
                      {
                        goto LABEL_201;
                      }

                      v123 = v120;
                      v124 = v121;
                      v87;
                      swift_bridgeObjectRelease_n(v86, 2);
                      *&v192[0] = v123;
                    }
                  }

                  v91 = 0;
                  v93 = v84 & 0xFFFFFFFFFFFFLL;
                  v94 = HIBYTE(v85) & 0xF;
                  if ((v85 & 0x1000000000000000) == 0)
                  {
LABEL_113:
                    v85;
                    v96 = v94;
                    if ((v87 & 0x1000000000000000) == 0)
                    {
                      goto LABEL_114;
                    }

                    goto LABEL_143;
                  }

LABEL_140:
                  swift_bridgeObjectRetain_n(v85, 2);
                  v114._rawBits = 1;
                  v115._rawBits = (v94 << 16) | 1;
                  v116._rawBits = _StringGuts.validateScalarRange(_:)(v114, v115, v190, v86)._rawBits;
                  if (v116._rawBits < 0x10000)
                  {
                    v116._rawBits |= 3;
                  }

                  v96 = String.UTF8View.distance(from:to:)(v116, v117);
                  v86;
                  if ((v87 & 0x1000000000000000) == 0)
                  {
LABEL_114:
                    v38 = __OFADD__(v90, v96);
                    v97 = v90 + v96;
                    if (!v38)
                    {
LABEL_115:
                      if ((v188 & ~v87 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v87 & 0xFFFFFFFFFFFFFFFLL))
                      {
                        v98 = _StringGuts.nativeUnusedCapacity.getter(v188, v87);
                        if (v99)
                        {
                          goto LABEL_201;
                        }

                        if (v97 > 15)
                        {
                          goto LABEL_126;
                        }

                        if ((v87 & 0x2000000000000000) == 0)
                        {
                          if (v98 < v96)
                          {
                            goto LABEL_121;
                          }

LABEL_126:
                          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v97, v96);
                          if ((v86 & 0x1000000000000000) == 0)
                          {
                            if (v91)
                            {
                              if ((v190 & 0x1000000000000000) != 0)
                              {
                                v102 = (v86 & 0xFFFFFFFFFFFFFFFLL) + 32;
                                v103 = v93;
                              }

                              else
                              {
                                v176 = _StringObject.sharedUTF8.getter(v190, v86);
                                if (v177 < v93)
                                {
                                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                                }

                                v102 = v176;
                                v103 = v177;
                              }

                              v104 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v93, v102, v103);
                              v106 = v190 >> 63;
                            }

                            else
                            {
                              v106 = (v86 >> 62) & 1;
                              *&v191 = v190;
                              *(&v191 + 1) = v86 & 0xFFFFFFFFFFFFFFLL;
                              v104 = &v191;
                              v105 = HIBYTE(v86) & 0xF;
                            }

                            closure #1 in _StringGuts.append(_:)(v104, v105, v192, v106);
                            goto LABEL_156;
                          }

LABEL_146:
                          _StringGuts._foreignAppendInPlace(_:)(v190, v86, 0, v94);
LABEL_156:
                          swift_bridgeObjectRelease_n(v86, 2);
                          goto LABEL_167;
                        }
                      }

                      else
                      {
                        if (v97 > 15)
                        {
                          goto LABEL_126;
                        }

                        if ((v87 & 0x2000000000000000) == 0)
                        {
LABEL_121:
                          if ((v87 & 0x1000000000000000) != 0)
                          {
                            v188 = _StringGuts._foreignConvertedToSmall()(v188, v87);
                            v101 = v162;
                          }

                          else
                          {
                            if ((v188 & 0x1000000000000000) != 0)
                            {
                              v100 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
                            }

                            else
                            {
                              v100 = _StringObject.sharedUTF8.getter(v188, v87);
                              v89 = v179;
                            }

                            closure #1 in _StringGuts._convertedToSmall()(v100, v89, &v191, v95);
                            v101 = *(&v191 + 1);
                            v188 = v191;
                          }

                          goto LABEL_133;
                        }
                      }

                      v101 = v87;
LABEL_133:
                      v86;
                      v107._rawBits = 1;
                      v108._rawBits = (v94 << 16) | 1;
                      v109._rawBits = _StringGuts.validateScalarRange(_:)(v107, v108, v190, v86)._rawBits;
                      if (v109._rawBits < 0x10000)
                      {
                        v109._rawBits |= 3;
                      }

                      if (v109._rawBits >> 16 || v110._rawBits >> 16 != v94)
                      {
                        v190 = specialized static String._copying(_:)(v109._rawBits, v110._rawBits, v190, v86);
                        v112 = v119;
                        v86;
                      }

                      else
                      {
                        v112 = v86;
                      }

                      if ((v112 & 0x2000000000000000) == 0)
                      {
                        goto LABEL_227;
                      }

                      v112;
                      v120 = specialized _SmallString.init(_:appending:)(v188, v101, v190, v112);
                      goto LABEL_150;
                    }

LABEL_145:
                    __break(1u);
                    goto LABEL_146;
                  }

LABEL_143:
                  v118 = String.UTF8View._foreignCount()();
                  v97 = v118 + v96;
                  if (!__OFADD__(v118, v96))
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_145;
                }

                v93 = v84 & 0xFFFFFFFFFFFFLL;
                v91 = 1;
              }

              else
              {
                v93 = v84 & 0xFFFFFFFFFFFFLL;
                v94 = HIBYTE(v85) & 0xF;
                if ((v85 & 0x2000000000000000) != 0)
                {
LABEL_112:
                  if ((v85 & 0x1000000000000000) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_140;
                }
              }

              v94 = v93;
              goto LABEL_112;
            }
          }

          else
          {
            if (v39 > 15)
            {
              goto LABEL_46;
            }

            if ((v26 & 0x2000000000000000) == 0)
            {
LABEL_41:
              if ((v26 & 0x1000000000000000) != 0)
              {
                v28 = _StringGuts._foreignConvertedToSmall()(v28, v26);
                v33 = v161;
              }

              else
              {
                if ((v28 & 0x1000000000000000) != 0)
                {
                  v43 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v43 = _StringObject.sharedUTF8.getter(v28, v26);
                  v29 = v178;
                }

                closure #1 in _StringGuts._convertedToSmall()(v43, v29, &v191, v36);
                v33 = *(&v191 + 1);
                v28 = v191;
              }

LABEL_60:
              v29 = 0xD00000000000001BLL;
              v189;
              v52._rawBits = 1;
              v53._rawBits = (v35 << 16) | 1;
              v54._rawBits = _StringGuts.validateScalarRange(_:)(v52, v53, 0xD00000000000001BLL, v189)._rawBits;
              if (v54._rawBits < 0x10000)
              {
                v54._rawBits |= 3;
              }

              if (v54._rawBits >> 16 || v55._rawBits >> 16 != v35)
              {
                v29 = specialized static String._copying(_:)(v54._rawBits, v55._rawBits, 0xD00000000000001BLL, v189);
                v35 = v60;
                v189;
              }

              else
              {
                v35 = 0x8000000180672010 | 0x8000000000000000;
              }

              if ((v35 & 0x2000000000000000) != 0)
              {
                v35;
LABEL_71:
                v61 = HIBYTE(v33) & 0xF;
                v62 = HIBYTE(v35) & 0xF;
                if ((v62 + v61) > 0xF)
                {
                  goto LABEL_201;
                }

                v189;
                if (v62)
                {
                  v63 = 0;
                  v64 = 0;
                  v65 = 8 * v61;
                  do
                  {
                    v66 = v61 + v64;
                    v67 = v64 >= 8;
                    v68 = v64 + 1;
                    v69 = v35 >> (v63 & 0x38);
                    if (!v67)
                    {
                      v69 = v29 >> v63;
                    }

                    v70 = (v69 << ((v65 + v63) & 0x38)) | ((-255 << ((v65 + v63) & 0x38)) - 1) & v33;
                    v71 = (v69 << (v65 + v63)) | ((-255 << (v65 + v63)) - 1) & v28;
                    if (v66 <= 7)
                    {
                      v28 = v71;
                    }

                    else
                    {
                      v33 = v70;
                    }

                    v63 += 8;
                    v64 = v68;
                  }

                  while (v62 != v68);
                }

                v26;
                v189;
                v72 = 0xA000000000000000;
                if (!(v28 & 0x8080808080808080 | v33 & 0x80808080808080))
                {
                  v72 = 0xE000000000000000;
                }

                v31 = v72 & 0xFF00000000000000 | ((v62 + v61) << 56) | v33 & 0xFFFFFFFFFFFFFFLL;
                *&v192[0] = v28;
                goto LABEL_93;
              }

LABEL_220:
              if ((v35 & 0x1000000000000000) != 0)
              {
                v29 = _StringGuts._foreignConvertedToSmall()(v29, v35);
                v182 = v181;
                v35;
                v35 = v182;
              }

              else
              {
                if ((v29 & 0x1000000000000000) != 0)
                {
                  v169 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v170 = v29 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v169 = _StringObject.sharedUTF8.getter(v29, v35);
                }

                closure #1 in _StringGuts._convertedToSmall()(v169, v170, &v191, v36);
                v35;
                v35 = *(&v191 + 1);
                v29 = v191;
              }

              goto LABEL_71;
            }
          }

          v33 = v26;
          goto LABEL_60;
        }

LABEL_219:
        __break(1u);
        goto LABEL_220;
      }
    }

    else
    {
      v189;
      v37 = v35;
      if ((v26 & 0x1000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    v168 = String.UTF8View._foreignCount()();
    v39 = v168 + v37;
    if (!__OFADD__(v168, v37))
    {
      goto LABEL_35;
    }

    goto LABEL_219;
  }

  if (!v21)
  {
    v22 = 9;
    goto LABEL_19;
  }

  if (v21 == 99)
  {
    v22 = 1;
    goto LABEL_19;
  }

  if (v21 != 101)
  {
    goto LABEL_21;
  }

  v22 = 2;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined destroy of Mirror?(&v193);
  result = v13;
  *a4 = v7;
  *(a4 + 8) = v15;
  *(a4 + 16) = v22;
  *(a4 + 24) = partial apply for closure #2 in Mirror.init(internalReflecting:subjectType:customAncestor:);
  *(a4 + 32) = v19;
  *(a4 + 40) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance _EachFieldOptions(_DWORD *a1, int *a2)
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

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance _EachFieldOptions@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
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

int *protocol witness for SetAlgebra.update(with:) in conformance _EachFieldOptions@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t SetAlgebra.subtracting(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[0] = a1;
  v20[1] = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v20 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v20 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = *(v7 + 16);
  v17(v20 - v18, v4, a2);
  v17(v13, v4, a2);
  v17(v10, v20[0], a2);
  (*(a3 + 64))(v10, a2, a3);
  (*(a3 + 56))(v16, a2, a3);
  return (*(v7 + 8))(v16, a2);
}

{
  SetAlgebra.subtracting(_:)(a1, a2, a3, a4);
  v6 = *(*(a2 - 8) + 8);

  return v6(v4, a2);
}

uint64_t SetAlgebra.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v8 + 16))(v11, v4, a2);
  (*(a3 + 56))(v7, a2, a3);
  LOBYTE(v7) = (*(*(a3 + 8) + 8))(v13, v4, a2);
  (*(v8 + 8))(v13, a2);
  return v7 & 1;
}

uint64_t SetAlgebra.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v7 + 16))(v10, v3, a2);
  (*(a3 + 56))(a1, a2, a3);
  LOBYTE(a3) = (*(a3 + 152))(a2, a3);
  (*(v7 + 8))(v12, a2);
  return a3 & 1;
}

uint64_t SetAlgebra.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v7);
  LOBYTE(v3) = (*(*(a2 + 8) + 8))(v3, v9, a1);
  (*(v6 + 8))(v9, a1);
  return v3 & 1;
}

uint64_t specialized SetAlgebra.init<A>(_:)@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v12 = *(AssociatedConformanceWitness + 16);
  v12(&v17, v7, AssociatedConformanceWitness);
  if ((v17 & 0x100000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v17;
      if ((v17 & ~v13) == 0)
      {
        v14 = 0;
      }

      v13 |= v14;
      v12(&v17, v7, AssociatedConformanceWitness);
    }

    while (BYTE4(v17) != 1);
  }

  result = (*(v8 + 8))(v10, v7);
  *a3 = v13;
  return result;
}

uint64_t SetAlgebra.init<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a1;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for SetAlgebra, associated type descriptor for SetAlgebra.Element);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v44 - v16;
  v19 = type metadata accessor for Optional(0, v12, v17, v18);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v44 - v20;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v45 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v25 = *(a4 + 32);
  v53 = a6;
  v54 = a2;
  v55 = a4;
  v26 = a4;
  v28 = v27;
  v25(a2, v26);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v28, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v30 = *(AssociatedConformanceWitness + 16);
  v49 = AssociatedConformanceWitness + 16;
  v50 = AssociatedConformanceWitness;
  v48 = v30;
  (v30)(v28);
  v31 = v13;
  v34 = *(v13 + 48);
  v33 = v13 + 48;
  v32 = v34;
  if (v34(v21, 1, v12) != 1)
  {
    v35 = *(v31 + 32);
    v46 = v55 + 72;
    v47 = v35;
    v36 = (v31 + 8);
    do
    {
      v37 = v52;
      v47(v52, v21, v12);
      v38 = v33;
      v39 = v24;
      v40 = v28;
      v41 = v51;
      (*(v55 + 72))(v51, v37, v54);
      v42 = v41;
      v28 = v40;
      v24 = v39;
      v33 = v38;
      (*v36)(v42, v12);
      v48(v28, v50);
    }

    while (v32(v21, 1, v12) != 1);
  }

  return (*(v45 + 8))(v24, v28);
}

uint64_t SetAlgebra.subtract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  v17 = *(v8 + 16);
  v17(v14, v4, a2);
  v17(v11, a1, a2);
  (*(a3 + 64))(v11, a2, a3);
  (*(a3 + 104))(v16, a2, a3);
  return (*(v8 + 8))(v16, a2);
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance _EachFieldOptions@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void specialized SetAlgebra<>.init(arrayLiteral:)(unint64_t a1@<X0>, _DWORD *a2@<X8>)
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

  a1;
  *a2 = v4;
}

uint64_t SetAlgebra<>.init(arrayLiteral:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = a1;
  v5 = *(a3 + 160);
  swift_getAssociatedTypeWitness(255, *(a3 + 16), a2, &protocol requirements base descriptor for ExpressibleByArrayLiteral, associated type descriptor for ExpressibleByArrayLiteral.ArrayLiteralElement);
  v9 = type metadata accessor for Array(0, v6, v7, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v9, v10);
  return v5(&v13, v9, WitnessTable, a2, a3);
}

Swift::_MetadataKind_optional __swiftcall _MetadataKind.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue > 770)
  {
    if (rawValue > 1023)
    {
      if (rawValue > 1280)
      {
        if (rawValue == 1281)
        {
          *v1 = 14;
          return rawValue;
        }

        if (rawValue == 0xFFFF)
        {
          *v1 = 15;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 1024)
        {
          *v1 = 12;
          return rawValue;
        }

        if (rawValue == 1280)
        {
          *v1 = 13;
          return rawValue;
        }
      }

      goto LABEL_37;
    }

    if (rawValue > 772)
    {
      if (rawValue == 773)
      {
        *v1 = 10;
        return rawValue;
      }

      if (rawValue == 774)
      {
        *v1 = 11;
        return rawValue;
      }

      goto LABEL_37;
    }

    if (rawValue == 771)
    {
      *v1 = 8;
    }

    else
    {
      *v1 = 9;
    }
  }

  else if (rawValue > 514)
  {
    if (rawValue <= 768)
    {
      if (rawValue == 515)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 768)
      {
        *v1 = 5;
        return rawValue;
      }

      goto LABEL_37;
    }

    if (rawValue == 769)
    {
      *v1 = 6;
    }

    else
    {
      *v1 = 7;
    }
  }

  else
  {
    if (rawValue <= 512)
    {
      if (!rawValue)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 512)
      {
        *v1 = 1;
        return rawValue;
      }

LABEL_37:
      *v1 = 16;
      return rawValue;
    }

    if (rawValue == 513)
    {
      *v1 = 2;
    }

    else
    {
      *v1 = 3;
    }
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _MetadataKind()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(qword_18072A0B0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _MetadataKind(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(qword_18072A0B0[v2]);
  return Hasher._finalize()();
}

uint64_t _forEachField(of:options:body:)(uint64_t *a1, int *a2, uint64_t (*a3)(void))
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (swift_isClassType(a1) != ((static _EachFieldOptions.classType & ~v5) != 0))
  {
    v6 = swift_reflectionMirror_recursiveCount(a1);
    if (v6 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = v6;
    if (!v6)
    {
      return 1;
    }

    v8 = 0;
    while (1)
    {
      swift_reflectionMirror_recursiveChildOffset(a1, v8);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v9 = swift_reflectionMirror_recursiveChildMetadata(a1, v8, &v14);
      MetadataKind = swift_getMetadataKind(v9);
      _MetadataKind.init(rawValue:)(MetadataKind);
      v11 = v13 == 16 ? 15 : v13;
      v13 = v11;
      if ((a3() & 1) == 0)
      {
        break;
      }

      if (v15)
      {
        v15(v14);
      }

      if (v7 == ++v8)
      {
        return 1;
      }
    }

    if (v15)
    {
      v15(v14);
    }
  }

  return 0;
}

uint64_t _forEachFieldWithKeyPath<A>(of:options:body:)(uint64_t *a1, int *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (swift_isClassType(a1) || (static _EachFieldOptions.classType & ~v7) == 0)
  {
    return 0;
  }

  v23 = static _EachFieldOptions.ignoreUnknown;
  v10 = swift_reflectionMirror_recursiveCount(a1);
  if (v10 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  v8 = 1;
  if (v10)
  {
    v12 = 0;
    v22 = v23 & v7;
    while (1)
    {
      swift_reflectionMirror_recursiveChildOffset(a1, v12);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v13 = swift_reflectionMirror_recursiveChildMetadata(a1, v12, &v26);
      MetadataKind = swift_getMetadataKind(v13);
      _MetadataKind.init(rawValue:)(MetadataKind);
      v16 = v25 > 0xBu || ((1 << v25) & 0x94F) == 0;
      if (v16 || (v28 & 1) == 0)
      {
        v18 = v27;
        if (v22 != v23)
        {
          if (!v27)
          {
            return 0;
          }

          goto LABEL_28;
        }

        if (v27)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (HIBYTE(v28) == 1)
        {
          v17 = type metadata accessor for WritableKeyPath(0, a5, v13, v15);
        }

        else
        {
          v17 = type metadata accessor for KeyPath(0, a5, v13, v15);
        }

        v19 = MEMORY[0x1EEE9AC00](v17);
        v20 = swift_allocObject(v19, (((*(v19 + 48) + 3) & 0x1FFFFFFFCLL) + 12), *(v19 + 52) | 3);
        v20[2] = 0;
        partial apply for closure #1 in _forEachFieldWithKeyPath<A>(of:options:body:)(v20 + 3, v20 + 36);
        v21 = a3();
        v20;
        if ((v21 & 1) == 0)
        {
          v18 = v27;
          if (!v27)
          {
            return 0;
          }

LABEL_28:
          v18(v26);
          return 0;
        }

        v18 = v27;
        if (v27)
        {
LABEL_8:
          v18(v26);
        }
      }

      if (v11 == ++v12)
      {
        return 1;
      }
    }
  }

  return v8;
}

uint64_t Repeated.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || *v3 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a2 + 16) - 8) + 16);
  v5 = v3 + *(a2 + 28);

  return v4(a3, v5);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Repeated<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a3);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss8RepeatedVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss8RepeatedVyxGSlsSl5index_8offsetBy07limitedD05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss8RepeatedVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Repeated<A>@<X0>(uint64_t *a1@<X8>)
{
  result = Repeated.count.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Repeated<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0x5E33uLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Repeated.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*Repeated.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || *v2 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t protocol witness for Collection.indices.getter in conformance Repeated<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance Repeated<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a3);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Repeated<A>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, unint64_t, unint64_t, _UNKNOWN **))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Repeated<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  (*(*(a1 - 8) + 32))(a2, v4, a1);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a1, v6);
  result = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance Repeated<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t repeatElement<A>(_:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a4 = a2;
  v12 = type metadata accessor for Repeated(0, a3, v10, v11);
  return (*(v7 + 32))(&a4[*(v12 + 28)], v9, a3);
}

Swift::Void __swiftcall _replPrintLiteralString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
  inited = swift_initStackObject(v3, v5);
  *(inited + 1) = xmmword_18071DB30;
  inited[7] = &type metadata for String;
  inited[4] = countAndFlagsBits;
  inited[5] = object;
  object;
  print(_:separator:terminator:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000);
  swift_setDeallocating(inited);
  __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
}

uint64_t _replDebugPrintln<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
  inited = swift_initStackObject(v4, v8);
  *(inited + 1) = xmmword_18071DB30;
  inited[7] = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0Tm, a1, a2);
  debugPrint(_:separator:terminator:)(inited, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000);
  swift_setDeallocating(inited);
  return __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
}

uint64_t static Result<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v45 = a1;
  v46 = a2;
  v43 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  v14 = type metadata accessor for Result(0, v12, v11, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  swift_getTupleTypeMetadata2(0, v14, v14, 0, 0);
  v22 = v21;
  v41 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v37 - v24);
  v26 = *(v23 + 48);
  v27 = *(v15 + 16);
  v27(&v37 - v24, v45, v14);
  v27(v25 + v26, v46, v14);
  if (swift_getEnumCaseMultiPayload(v25, v14) != 1)
  {
    v27(v20, v25, v14);
    if (swift_getEnumCaseMultiPayload((v25 + v26), v14) != 1)
    {
      v33 = v42;
      v34 = v37;
      (*(v42 + 32))(v37, v25 + v26, a3);
      v31 = (*(v39 + 8))(v20, v34, a3);
      v35 = *(v33 + 8);
      v35(v34, a3);
      v35(v20, a3);
      goto LABEL_9;
    }

    (*(v42 + 8))(v20, a3);
    goto LABEL_7;
  }

  v27(v18, v25, v14);
  if (swift_getEnumCaseMultiPayload((v25 + v26), v14) != 1)
  {
    (*(v43 + 8))(v18, v44);
LABEL_7:
    v31 = 0;
    v15 = v41;
    v14 = v22;
    goto LABEL_9;
  }

  v29 = v43;
  v28 = v44;
  v30 = v38;
  (*(v43 + 32))(v38, v25 + v26, v44);
  v31 = (*(v40 + 8))(v18, v30, v28);
  v32 = *(v29 + 8);
  v32(v30, v28);
  v32(v18, v28);
LABEL_9:
  (*(v15 + 8))(v25, v14);
  return v31 & 1;
}

uint64_t Result<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v9);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v21, a2);
  if (swift_getEnumCaseMultiPayload(v19, a2) == 1)
  {
    (*(v8 + 32))(v11, v19, v7);
    Hasher._combine(_:)(1uLL);
    (*(v24 + 24))(a1, v7);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v14 + 32))(v17, v19, v13);
    Hasher._combine(_:)(0);
    (*(a3 + 24))(a1, v13, a3);
    return (*(v14 + 8))(v17, v13);
  }
}

Swift::Int Result<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  Result<>.hash(into:)(&v4, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> FlattenSequence<A><>.Index(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t, double))
{
  v7 = *(a3 - 16);
  v6 = *(a3 - 8);
  v8 = specialized Hasher.init(_seed:)(a1, v10);
  a4(v10, a2, v6, v7, v8);
  return Hasher._finalize()();
}

void Result.map<A>(_:)(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v8 = a2[2];
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v16);
  if (swift_getEnumCaseMultiPayload(v14, a2) == 1)
  {
    v17 = a2[3];
    (*(*(v17 - 8) + 32))(a4, v14, v17);
    v18 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v14, v8);
    a1(v12);
    (*(v9 + 8))(v12, v8);
    v18 = 0;
    v17 = a2[3];
  }

  v19 = type metadata accessor for Result(0, a3, v17, a2[4]);
  swift_storeEnumTagMultiPayload(a4, v19, v18);
}

void Result.mapError<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v18);
  if (swift_getEnumCaseMultiPayload(v16, a2) == 1)
  {
    (*(v11 + 32))(v14, v16, v10);
    a1(v14);
    (*(v11 + 8))(v14, v10);
    v19 = *(a2 + 16);
    v20 = 1;
  }

  else
  {
    v19 = *(a2 + 16);
    (*(*(v19 - 8) + 32))(a5, v16, v19);
    v20 = 0;
  }

  v21 = type metadata accessor for Result(0, v19, a3, a4);
  swift_storeEnumTagMultiPayload(a5, v21, v20);
}

void Result.flatMap<A>(_:)(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v8 = a2[2];
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v16);
  if (swift_getEnumCaseMultiPayload(v14, a2) == 1)
  {
    v17 = a2[3];
    (*(*(v17 - 8) + 32))(a4, v14, v17);
    v18 = type metadata accessor for Result(0, a3, v17, a2[4]);
    swift_storeEnumTagMultiPayload(a4, v18, 1u);
  }

  else
  {
    (*(v9 + 32))(v12, v14, v8);
    a1(v12);
    (*(v9 + 8))(v12, v8);
  }
}

void Result.flatMapError<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v18);
  if (swift_getEnumCaseMultiPayload(v16, a2) == 1)
  {
    (*(v11 + 32))(v14, v16, v10);
    a1(v14);
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v19 = *(a2 + 16);
    (*(*(v19 - 8) + 32))(a5, v16, v19);
    v20 = type metadata accessor for Result(0, v19, a3, a4);
    swift_storeEnumTagMultiPayload(a5, v20, 0);
  }
}

uint64_t Result.get()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  if (swift_getEnumCaseMultiPayload(v10, a1) != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a2, v10);
  }

  v12 = *(v5 + 32);
  v12(v8, v10, v4);
  swift_allocError(v4, a1[4], 0, 0);
  v12(v13, v8, v4);
  return swift_willThrow();
}

uint64_t Result<>.init(catching:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, _ss5Error_pMR);
  v7 = type metadata accessor for Result(0, a2, v6, &protocol self-conformance witness table for Error);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  a1(v9);
  swift_storeEnumTagMultiPayload(v11, v7, 0);
  return (*(v8 + 32))(a3, v11, v7);
}

uint64_t ReversedCollection.Iterator._position.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness(0, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ReversedCollection.Iterator._position.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  swift_getAssociatedTypeWitness(0, *(*(a2 + 24) + 8), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ReversedCollection.Iterator.init(_base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *(a2 - 8);
  (*(v12 + 16))(a4, a1, a2);
  v7 = *(a3 + 8);
  v8 = *(v7 + 72);
  type metadata accessor for ReversedCollection.Iterator(0, a2, a3, v9);
  v8(a2, v7);
  v10 = *(v12 + 8);

  return v10(a1, a2);
}

uint64_t protocol witness for IteratorProtocol.next() in conformance ReversedCollection<A>.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v26 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = *(a1 + 36);
  (*(v7 + 64))(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = (*(*(AssociatedConformanceWitness + 8) + 8))(v2 + v13, v12, v9);
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v24 - 8) + 56))(v26, 1, 1, v24);
  }

  else
  {
    (*(v6 + 40))(v4 + v13, v5, v6);
    v16 = (*(v7 + 80))(v27, v4 + v13, v5, v7);
    v18 = v17;
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v20 = v19;
    v21 = *(v19 - 8);
    v22 = v26;
    (*(v21 + 16))(v26, v18, v19);
    v16(v27, 0);
    return (*(v21 + 56))(v22, 0, 1, v20);
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ReversedCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v7);
  (*(v5 + 16))(a2, v7, v4);
  v8 = *(a1 + 24);
  v9 = *(v8 + 8);
  v10 = *(v9 + 72);
  type metadata accessor for ReversedCollection.Iterator(0, v4, v8, v11);
  v10(v4, v9);
  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ReversedCollection<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t ReversedCollection.Index.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ReversedCollection.Index.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a3 + 8), a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = *(*(v6 - 8) + 32);

  return v7(a4, a1, v6);
}

uint64_t static ReversedCollection.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, v9) & 1;
}

uint64_t static ReversedCollection.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(AssociatedConformanceWitness + 40))(a1, a2, v9, AssociatedConformanceWitness) & 1;
}

uint64_t ReversedCollection.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, *(*(a2 + 24) + 8), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);

  return v7(a1, v5, a3);
}

Swift::Int ReversedCollection.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v3(&v6, v4, a2);
  return Hasher._finalize()();
}

uint64_t ReversedCollection.index(_:offsetBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = __OFSUB__(0, a2);
  v4 = -a2;
  if (!v3)
  {
    return (*(*(a3 + 24) + 48))(result, v4, *(a3 + 16));
  }

  __break(1u);
  return result;
}

uint64_t ReversedCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, *(v8 + 8), v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v28 - v20;
  if (__OFSUB__(0, a2))
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 56))(a1, -a2, a3, v9, v8);
    (*(v15 + 32))(v18, v21, v14);
    v22 = *(v11 - 8);
    v23 = 1;
    v24 = (*(v22 + 48))(v18, 1, v11);
    v26 = v29;
    if (v24 != 1)
    {
      (*(v22 + 32))(v29, v18, v11);
      v23 = 0;
    }

    v27 = type metadata accessor for ReversedCollection.Index(0, v9, v8, v25);
    return (*(*(v27 - 8) + 56))(v26, v23, 1, v27);
  }

  return result;
}

uint64_t ReversedCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  (*(v6 + 32))(a1, v5, v6);
  v13 = (*(v7 + 80))(v18, v12, v5, v7);
  v15 = v14;
  swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v16 - 8) + 16))(a3, v15, v16);
  v13(v18, 0);
  return (*(v10 + 8))(v12, v9);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ReversedCollection<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0x8087uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ReversedCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*ReversedCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xAB22uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(v8 + 8);
  swift_getAssociatedTypeWitness(0, v9, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0xAB22uLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[4] = v13;
  swift_getAssociatedTypeWitness(0, *(v9 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6[5] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v6[6] = v16;
  v18 = *(v16 + 64);
  if (swift_coroFrameAlloc)
  {
    v19 = swift_coroFrameAlloc(v18, 0xAB22uLL);
  }

  else
  {
    v19 = malloc(v18);
  }

  v20 = v19;
  v6[7] = v19;
  (*(v8 + 32))(a2, v7, v8);
  v21 = (*(v9 + 80))(v6, v14, v7, v9);
  (*(v17 + 16))(v20);
  v21(v6, 0);
  (*(v11 + 8))(v14, v23);
  return ReversedCollection.subscript.read;
}

void LazyMapSequence<>.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 32);
  (*(*(*a1 + 48) + 8))(v2, *(*a1 + 40));
  free(v2);
  free(v3);

  free(v1);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance ReversedCollection<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for ReversedCollection.Index(255, *(a1 + 16), *(a1 + 24), a2);
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ReversedCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = type metadata accessor for ReversedCollection.Index(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  a4(v10, a2);
  return (*(v8 + 8))(v10, v7);
}

BOOL _stdlib_atomicCompareExchangeStrongPtr(object:expected:desired:)(atomic_ullong *a1, uint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, a3);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

BOOL _stdlib_atomicCompareExchangeStrongPtr<A>(object:expected:desired:)(atomic_ullong *a1, uint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, a3);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, a3);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

double _float16ToString(_:debug:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v3 = swift_float16ToString(&v6, 0x20uLL, a2);
  result = *&v6;
  v5 = v7;
  *a1 = v6;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double _float32ToString(_:debug:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v3 = swift_float32ToString(&v6, 32, a1);
  result = *&v6;
  v5 = v7;
  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

double _float64ToString(_:debug:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v3 = swift_float64ToString(&v6, 32, a1);
  result = *&v6;
  v5 = v7;
  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

Swift::Int specialized Collection.underestimatedCount.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return String.UTF16View._foreignCount()();
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  return String.UTF16View._nativeGetOffset(for:)(((v2 << 16) | 7));
}

void *__SwiftNativeNSSet.__allocating_init(coder:)(void *a1)
{
  swift_unknownObjectRelease(a1);

  return swift_allocObject(v1, 0x10, 7uLL);
}

uint64_t DropFirstSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v32 = type metadata accessor for Optional(0, v7, v9, v10);
  v29 = *(v32 - 8);
  v11 = MEMORY[0x1EEE9AC00](v32);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v11);
  (*(v15 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6);
  v16 = *(v5 + 32);
  v33 = a2;
  v16(v6, v5);
  v30 = v2;
  v31 = a1;
  v17 = *(v2 + *(a1 + 36));
  v18 = v17 - 1;
  if (v17 >= 1)
  {
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v20 = v19;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v19, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v22 = *(AssociatedConformanceWitness + 16);
    v23 = (v29 + 8);
    do
    {
      v24 = swift_checkMetadataState(0, v20);
      v22(v24, AssociatedConformanceWitness);
      v25 = (*(*(v8 - 8) + 48))(v13, 1, v8);
      (*v23)(v13, v32);
    }

    while (v25 != 1 && v18-- != 0);
  }

  return (*(*(v31 - 8) + 8))(v30);
}

uint64_t DropFirstSequence.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4, v8);
  v12 = *(v4 + *(a2 + 36));
  (*(*(a2 - 8) + 8))(v4, a2);
  v13 = v12 + a1;
  if (__OFADD__(v12, a1))
  {
    __break(1u);
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 < 0)
  {
    goto LABEL_5;
  }

  result = (*(v9 + 32))(a3, v11, v8);
  *(a3 + *(a2 + 36)) = v13;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DropFirstSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v29[0] = type metadata accessor for Optional(0, v7, v9, v10);
  v11 = *(v29[0] - 8);
  v12 = MEMORY[0x1EEE9AC00](v29[0]);
  v14 = v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  (*(v16 + 16))(v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6);
  v17 = *(v5 + 32);
  v29[1] = a2;
  v17(v6, v5);
  v18 = *(v2 + *(a1 + 36));
  result = (*(*(a1 - 8) + 8))(v2, a1);
  v20 = v18 - 1;
  if (v18 >= 1)
  {
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v22 = v21;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v24 = *(AssociatedConformanceWitness + 16);
    v25 = (v11 + 8);
    do
    {
      v26 = swift_checkMetadataState(0, v22);
      v24(v26, AssociatedConformanceWitness);
      v27 = (*(*(v8 - 8) + 48))(v14, 1, v8);
      result = (*v25)(v14, v29[0]);
    }

    while (v27 != 1 && v20-- != 0);
  }

  return result;
}

uint64_t DropFirstSequence.init(_:dropping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X7>, uint64_t a6@<X8>)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(*(a3 - 8) + 32))(a6, a1);
  result = a5(0, a3, a4);
  *(a6 + *(result + 36)) = a2;
  return result;
}

uint64_t PrefixSequence.Iterator.init(_:maxLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PrefixSequence.Iterator(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t PrefixSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(v2 + v4);
  if (v5)
  {
    *(v2 + v4) = v5 - 1;
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v9 = v8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v15 = *(AssociatedConformanceWitness + 16);
    v11 = swift_checkMetadataState(0, v9);

    return v15(v11, AssociatedConformanceWitness);
  }

  else
  {
    swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t PrefixSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6);
  v9 = *(a1 + 24);
  (*(v9 + 32))(v6, v9);
  v10 = *(v2 + *(a1 + 36));
  (*(*(a1 - 8) + 8))(v3, a1);
  result = type metadata accessor for PrefixSequence.Iterator(0, v6, v9, v11);
  *(a2 + *(result + 36)) = v10;
  return result;
}

uint64_t PrefixSequence.prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v9 + *(v8 + 36)) >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + *(v8 + 36));
  }

  v13 = *(v6 + 32);
  v13(v11, v9, v5);
  if (v12 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = (v13)(a3, v11, v5);
  *(a3 + *(a2 + 36)) = v12;
  return result;
}

uint64_t DropWhileSequence.init(iterator:predicate:)@<X0>(char *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a2;
  v55 = a3;
  v53 = a1;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v58 = *(v10 - 8);
  v12 = v58;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v57 = type metadata accessor for Optional(0, v11, v15, v16);
  v41 = *(v57 - 8);
  v17 = MEMORY[0x1EEE9AC00](v57);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  v40 = type metadata accessor for DropWhileSequence(0, a4, a5, v22);
  v56 = *(v40 + 36);
  (*(v12 + 56))(a6 + v56, 1, 1, v11);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v24 = v23;
  (*(*(v23 - 8) + 32))(a6, v53, v23);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v26 = *(AssociatedConformanceWitness + 16);
  v51 = AssociatedConformanceWitness;
  v52 = v24;
  v49 = v26;
  v50 = AssociatedConformanceWitness + 16;
  (v26)(v24);
  v27 = v41;
  v28 = *(v41 + 40);
  v30 = v56;
  v29 = v57;
  v53 = v21;
  v31 = v21;
  v32 = v58;
  v47 = v28;
  v48 = v41 + 40;
  v28(a6 + v56, v31, v57);
  v45 = *(v27 + 16);
  v46 = v27 + 16;
  v45(v19, a6 + v30, v29);
  v43 = *(v32 + 48);
  v44 = v32 + 48;
  if (v43(v19, 1, v11) == 1)
  {
    return (*(v41 + 8))(v19, v57);
  }

  v42 = *(v32 + 32);
  v58 = v32 + 32;
  v33 = (v32 + 8);
  while (1)
  {
    v42(v14, v19, v11);
    v34 = v54(v14);
    if (v6)
    {
      break;
    }

    v35 = v34;
    result = (*v33)(v14, v11);
    if ((v35 & 1) == 0)
    {
      return result;
    }

    v37 = v53;
    v49(v52, v51);
    v39 = v56;
    v38 = v57;
    v47(a6 + v56, v37, v57);
    v45(v19, a6 + v39, v38);
    if (v43(v19, 1, v11) == 1)
    {
      return (*(v41 + 8))(v19, v57);
    }
  }

  (*v33)(v14, v11);
  return (*(*(v40 - 8) + 8))(a6, v40);
}

uint64_t DropWhileSequence.init(_:predicate:)@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X2>, const char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v12 = type metadata accessor for DropWhileSequence(0, a3, a4, v11);
  v25 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = *(v13 + 36);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v18 = v17;
  (*(*(v17 - 8) + 56))(a5 + v16, 1, 1, v17);
  (*(a4 + 32))(a3, a4);
  v19 = v28;
  DropWhileSequence.init(iterator:predicate:)(v10, v26, v27, a3, a4, v15);
  v22 = type metadata accessor for Optional(0, v18, v20, v21);
  if (v19)
  {
    return (*(*(v22 - 8) + 8))(a5 + v16, v22);
  }

  (*(*(v22 - 8) + 8))(a5 + v16, v22);
  return (*(v25 + 32))(a5, v15, v12);
}

uint64_t DropWhileSequence._nextElement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness(255, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t DropWhileSequence._nextElement.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  swift_getAssociatedTypeWitness(255, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 40);

  return v9(v2 + v4, a1, v8);
}

uint64_t DropWhileSequence.Iterator.init(_:nextElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for DropWhileSequence.Iterator(0, a3, a4, a4) + 36);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v17 = *(*(v16 - 8) + 40);

  return v17(a5 + v10, a2, v16);
}

uint64_t DropWhileSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = *(v12 + 16);
  v28 = *(a1 + 36);
  v17(&v28 - v15, v2 + v28, v11);
  v18 = *(v8 - 8);
  if ((*(v18 + 48))(v16, 1, v8) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a2, v16, v8);
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v21 = v20;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v20, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v23 = a2;
    v24 = *(AssociatedConformanceWitness + 16);
    v25 = swift_checkMetadataState(0, v21);
    v26 = v29;
    v24(v25, AssociatedConformanceWitness);
    a2 = v23;
    (*(v12 + 40))(v2 + v28, v26, v11);
    v19 = 0;
  }

  return (*(v18 + 56))(a2, v19, 1, v8);
}