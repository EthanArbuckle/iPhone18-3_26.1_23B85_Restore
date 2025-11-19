void closure #1 in MutableCollection<>.sort(by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, unint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(255, *(*(a5 + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = type metadata accessor for UnsafeMutableBufferPointer(0, v7, v8, v9);
  UnsafeMutableBufferPointer._stableSortImpl(by:)(a2, a3, v10);
}

void UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2, unint64_t a3)
{
  v8 = *(v3 + 8);
  if (v8 < 64)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      LODWORD(v24) = 0;
      v23 = 760;
      LOBYTE(v22) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v25 = 0;
    v26 = v8;
    if (!v8)
    {
      return;
    }

LABEL_13:
    v27 = 1;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a3, a3);
    v18 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a3, v17);
    MutableCollection<>._insertionSort(within:sortedEnd:by:)(&v25, &v27, a1, a2, a3, WitnessTable, v18);
    return;
  }

  v9 = 58 - __clz(v8);
  v10 = -1 << v9;
  v11 = v8 >> v9;
  if ((v8 & ~v10) != 0)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= v8)
  {
    v25 = 0;
    v26 = v8;
    goto LABEL_13;
  }

  v13 = MEMORY[0x1EEE9AC00](v8 >> 1);
  v20 = *(a3 + 16);
  v21 = v3;
  v22 = a1;
  v23 = a2;
  v24 = v14;
  v15 = Array.init(_unsafeUninitializedCapacity:initializingWith:)(v13, partial apply for closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), &v19, v20);
  if (!v4)
  {
    v15;
  }
}

uint64_t zip<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 16))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for Zip2Sequence(0, v15);
  return (*(*(a4 - 8) + 16))(a7 + *(v13 + 52), a2, a4);
}

uint64_t Zip2Sequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  MEMORY[0x1EEE9AC00](v7);
  (*(v12 + 32))(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v10);
  v13 = *(a1 + 32);
  (*(v13 + 32))(v10, v13);
  (*(v6 + 32))(v9, v2 + *(a1 + 52), v5);
  v14 = *(a1 + 40);
  v15 = *(v14 + 32);
  *&v16 = v10;
  *(&v16 + 1) = v5;
  *&v17 = v13;
  *(&v17 + 1) = v14;
  v20[0] = v16;
  v20[1] = v17;
  v18 = type metadata accessor for Zip2Sequence.Iterator(0, v20);
  result = v15(v5, v14);
  *(a2 + *(v18 + 56)) = 0;
  return result;
}

uint64_t Zip2Sequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  v5 = *(a1 + 40);
  v67 = *(a1 + 24);
  v68 = v5;
  swift_getAssociatedTypeWitness(255, v5, v67, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v66 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v69 = &v59 - v12;
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v59 - v13;
  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  swift_getAssociatedTypeWitness(255, v14, v15, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v17 = v16;
  v20 = type metadata accessor for Optional(0, v16, v18, v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v59 - v22;
  v71 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v26 = *(a1 + 56);
  if (*(v3 + v26) != 1)
  {
    v32 = v3;
    v61 = v25;
    v62 = &v59 - v24;
    v63 = v26;
    v64 = v7;
    v60 = v10;
    swift_getAssociatedTypeWitness(255, v14, v15, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v34 = v33;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v15, v33, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v36 = *(AssociatedConformanceWitness + 16);
    v37 = swift_checkMetadataState(0, v34);
    v38 = v32;
    v36(v37, AssociatedConformanceWitness);
    if ((*(v71 + 48))(v23, 1, v17) == 1)
    {
      (*(v61 + 8))(v23, v20);
      v39 = v64;
    }

    else
    {
      v40 = v32;
      v41 = v62;
      v61 = *(v71 + 32);
      (v61)(v62, v23, v17);
      v43 = v67;
      v42 = v68;
      swift_getAssociatedTypeWitness(255, v68, v67, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v45 = v44;
      v46 = swift_getAssociatedConformanceWitness(v42, v43, v44, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v47 = *(v46 + 16);
      v48 = swift_checkMetadataState(0, v45);
      v49 = v40;
      v50 = v69;
      v47(v48, v46);
      v51 = v70;
      v39 = v64;
      if ((*(v70 + 48))(v50, 1, v64) != 1)
      {
        v53 = *(v51 + 32);
        v54 = v65;
        v53(v65, v50, v39);
        swift_getTupleTypeMetadata2(0, v17, v39, 0, 0);
        v56 = v55;
        v57 = *(v55 + 48);
        v58 = v72;
        (v61)(v72, v41, v17);
        v53((v58 + v57), v54, v39);
        return (*(*(v56 - 8) + 56))(v58, 0, 1, v56);
      }

      (*(v71 + 8))(v41, v17);
      (*(v66 + 8))(v50, v60);
      v38 = v49;
    }

    *(v38 + v63) = 1;
    swift_getTupleTypeMetadata2(0, v17, v39, 0, 0);
    return (*(*(v52 - 8) + 56))(v72, 1, 1, v52);
  }

  swift_getTupleTypeMetadata2(0, v17, v7, 0, 0);
  v28 = *(*(v27 - 8) + 56);
  v29 = v27;
  v30 = v72;

  return v28(v30, 1, 1, v29);
}

uint64_t MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, void (*a2)(char *), uint64_t (*a3)(char *, char *), uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v75 = a3;
  v76 = a4;
  v82 = a2;
  v78 = a6;
  v9 = *(a6 + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v81 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v74 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = v52 - v14;
  swift_getAssociatedTypeWitness(0, v9, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v80 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v52 - v22;
  v25 = v24;
  v26 = *(v24 + 16);
  v56 = v24 + 16;
  v55 = v26;
  v26(v52 - v22, v82, v16);
  v57 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a5, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v29 = *(type metadata accessor for Range(0, v16, AssociatedConformanceWitness, v28) + 36);
  v30 = *(AssociatedConformanceWitness + 8);
  v31 = *(v30 + 8);
  v72 = a1;
  v54 = v29;
  v79 = v16;
  v70 = v30 + 8;
  v71 = v30;
  v69 = v31;
  if ((v31)(v23, a1 + v29, v16))
  {
    v32 = *(v25 + 8);
    v33 = v79;
  }

  else
  {
    v64 = *(v78 + 32);
    v65 = v78 + 32;
    v61 = *(v9 + 80);
    v60 = (v81 + 16);
    v66 = (v81 + 8);
    v59 = v67 + 64;
    v68 = (v25 + 8);
    v58 = (v25 + 32);
    v63 = v9 + 80;
    v52[1] = v9 + 192;
    v33 = v79;
    v77 = v9;
    v53 = v23;
    v62 = v21;
    v35 = v61;
    while (2)
    {
      v55(v21, v23, v33);
      v36 = v80;
      v37 = v57;
      while (1)
      {
        v64(v21, v37, v78);
        v38 = v11;
        v39 = v77;
        v81 = v35(v83, v21, v37, v77);
        v82 = *v60;
        v40 = v36;
        v41 = v73;
        v82(v73);
        (v81)(v83, 0);
        v42 = v39;
        v11 = v38;
        v43 = v35(v83, v40, v37, v42);
        v44 = v74;
        v82(v74);
        v43(v83, 0);
        v45 = v84;
        v46 = v75(v41, v44);
        v84 = v45;
        if (v45)
        {
          v49 = *v66;
          (*v66)(v44, v11);
          v49(v41, v11);
          v50 = *v68;
          v51 = v79;
          (*v68)(v80, v79);
          v50(v62, v51);
          return (v50)(v53, v51);
        }

        v47 = v46;
        v48 = *v66;
        (*v66)(v44, v11);
        v48(v41, v11);
        v33 = v79;
        if ((v47 & 1) == 0)
        {
          break;
        }

        v21 = v62;
        v36 = v80;
        (*(v67 + 64))(v62, v80, v37);
        v32 = *v68;
        (*v68)(v21, v33);
        (*v58)(v21, v36, v33);
        if (v69(v21, v72, v33, v71))
        {
          v32(v21, v33);
          goto LABEL_11;
        }
      }

      v32 = *v68;
      (*v68)(v80, v79);
      v21 = v62;
      v32(v62, v33);
LABEL_11:
      v23 = v53;
      (*(v77 + 192))();
      if ((v69(v23, v72 + v54, v33, v71) & 1) == 0)
      {
        continue;
      }

      break;
    }
  }

  return (v32)(v23, v33);
}

uint64_t MutableCollection<>._insertionSort(within:by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a6;
  v20 = a2;
  v9 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v9, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v19 - v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a4, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v16);
  result = (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a1 + *(v17 + 36), v11);
  if ((result & 1) == 0)
  {
    (*(v9 + 184))(a1, a4, v9);
    MutableCollection<>._insertionSort(within:sortedEnd:by:)(a1, v14, v20, v21, a4, a5, v22);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t MutableCollection<>._reverse(within:)(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v25 = v9;
  v15 = *(v9 + 16);
  v15(&v24 - v13, a1, v8);
  v30 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v17);
  v15(v12, a1 + *(v18 + 36), v8);
  v19 = *(AssociatedConformanceWitness + 16);
  v33 = v8;
  v29 = AssociatedConformanceWitness;
  if ((v19)(v14, v12, v8, AssociatedConformanceWitness))
  {
    v27 = *(v31 + 40);
    v28 = v31 + 40;
    v26 = *(v32 + 64);
    v20 = v30[24];
    do
    {
      v27(v12, a2, v31);
      v26(v14, v12, a2, v32);
      (v20)(v14, a2, v30);
    }

    while ((v19(v14, v12) & 1) != 0);
  }

  v21 = *(v25 + 8);
  v22 = v33;
  v21(v12, v33);
  return (v21)(v14, v22);
}

uint64_t _merge<A>(low:mid:high:buffer:by:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v8 = v7;
  v9 = a7;
  v86 = a6;
  v10 = a1;
  v11 = *(a7 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v81 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v25 = *(v24 + 72);
  if (!v25 || (v26 = v21 - v10, v21 - v10 == 0x8000000000000000) && v25 == -1 || (v27 = v18 - v21, v18 - v21 == 0x8000000000000000) && v25 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v80 = v23;
  v82 = v18;
  v85 = v20;
  v28 = v26 / v25;
  v90 = v10;
  v89 = v19;
  v29 = v19;
  v30 = v27 / v25;
  if (v26 / v25 >= v27 / v25)
  {
    v87 = v8;
    v33 = v21;
    UnsafeMutablePointer.moveInitialize(from:count:)(v21, v27 / v25, v19, v9);
    v34 = &v29[v30 * v25];
    if (v30 * v25 < 1)
    {
      v39 = v33;
    }

    else
    {
      v78 = -v25;
      v79 = (v11 + 16);
      v35 = (v11 + 8);
      v36 = -v25;
      v84 = v35;
      v37 = &v29[v30 * v25];
      v38 = v82;
      v39 = v33;
      v75 = v29;
      v76 = v10;
      do
      {
        v74 = v34;
        v40 = &v39[v36];
        v77 = &v39[v36];
        v82 = v39;
        while (1)
        {
          if (v39 <= v10)
          {
            v90 = v39;
            v88 = v74;
            goto LABEL_53;
          }

          v41 = v38;
          v42 = v40;
          v83 = v37;
          v43 = &v37[v36];
          v44 = v80;
          v45 = *v79;
          (*v79)(v80, &v37[v36], v9);
          v46 = v81;
          v45(v81, v42, v9);
          v47 = v87;
          v48 = v85(v44, v46);
          v87 = v47;
          if (v47)
          {
            v90 = v82;
            v88 = v34;
            v71 = v46;
            v59 = v44;
            v62 = v9;
            goto LABEL_55;
          }

          v49 = v48;
          v50 = v34;
          v51 = *v84;
          (*v84)(v46, v9);
          v51(v44, v9);
          if (v49)
          {
            break;
          }

          v36 = v78;
          v38 = &v41[v78];
          v34 = v43;
          v52 = v75;
          if (v41 < v83 || v38 >= v83)
          {
            swift_arrayInitWithTakeFrontToBack(&v41[v78], v43, 1, v9);
            v10 = v76;
          }

          else
          {
            v10 = v76;
            if (v41 != v83)
            {
              swift_arrayInitWithTakeBackToFront(&v41[v78], v43, 1, v9);
            }
          }

          v37 = v43;
          v40 = v77;
          v39 = v82;
          if (v43 <= v52)
          {
            goto LABEL_50;
          }
        }

        v38 = &v41[v78];
        v53 = v75;
        if (v41 < v82 || v38 >= v82)
        {
          v55 = v77;
          swift_arrayInitWithTakeFrontToBack(&v41[v78], v77, 1, v9);
          v39 = v55;
          v10 = v76;
          v34 = v50;
        }

        else
        {
          v10 = v76;
          v39 = v77;
          if (v41 != v82)
          {
            v54 = v77;
            swift_arrayInitWithTakeBackToFront(&v41[v78], v77, 1, v9);
            v39 = v54;
          }
        }

        v37 = v83;
        v36 = v78;
      }

      while (v83 > v53);
    }

LABEL_50:
    v90 = v39;
    v88 = v34;
    goto LABEL_53;
  }

  v80 = &v74 - v22;
  v81 = v17;
  v31 = v21;
  UnsafeMutablePointer.moveInitialize(from:count:)(v10, v26 / v25, v19, v9);
  v79 = &v29[v28 * v25];
  v88 = v79;
  if (v28 * v25 < 1 || v31 >= v82)
  {
LABEL_53:
    $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v90, &v89, &v88, v9);
    return 1;
  }

  v56 = v31;
  v77 = *(v11 + 16);
  v78 = v11 + 16;
  v83 = v25;
  v84 = (v11 + 8);
  v57 = v8;
  while (1)
  {
    v58 = v10;
    v59 = v80;
    v60 = v77;
    v61 = v56;
    (v77)(v80, v56, v9);
    v62 = v9;
    v63 = v81;
    (v60)(v81, v29, v62);
    v64 = v85(v59, v63);
    if (v57)
    {
      break;
    }

    v65 = v64;
    v66 = v29;
    v87 = 0;
    v67 = *v84;
    (*v84)(v63, v62);
    v67(v59, v62);
    v9 = v62;
    if (v65)
    {
      v68 = v83;
      v69 = &v61[v83];
      v70 = v58;
      if (v58 < v61 || v58 >= v69)
      {
        swift_arrayInitWithTakeFrontToBack(v58, v61, 1, v9);
        v56 = &v61[v68];
        v57 = v87;
        v29 = v66;
      }

      else
      {
        v57 = v87;
        if (v58 != v61)
        {
          swift_arrayInitWithTakeBackToFront(v58, v61, 1, v9);
        }

        v56 = v69;
        v29 = v66;
      }
    }

    else
    {
      v68 = v83;
      v29 = &v66[v83];
      v70 = v58;
      v56 = v61;
      if (v58 < v66 || v58 >= v29)
      {
        swift_arrayInitWithTakeFrontToBack(v58, v66, 1, v9);
        v56 = v61;
        v68 = v83;
        v57 = v87;
      }

      else
      {
        v57 = v87;
        if (v58 != v66)
        {
          swift_arrayInitWithTakeBackToFront(v58, v66, 1, v9);
          v56 = v61;
          v68 = v83;
        }
      }

      v89 = v29;
    }

    v10 = &v70[v68];
    v90 = v10;
    if (v29 >= v79 || v56 >= v82)
    {
      goto LABEL_53;
    }
  }

  v71 = v63;
LABEL_55:
  v72 = *v84;
  (*v84)(v71, v62);
  v72(v59, v62);
  $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v90, &v89, &v88, v62);
  return 1;
}

char *$defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(char **a1, char **a2, void *a3, unint64_t *a4)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(*(a4 - 1) + 72);
  if (!v7 || ((v8 = *a3 - v6, v7 == -1) ? (v9 = v8 == 0x8000000000000000) : (v9 = 0), v9))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8 / v7, v5, a4);
}

Swift::Int __swiftcall _minimumMergeRunLength(_:)(Swift::Int result)
{
  v1 = 58 - __clz(result);
  v2 = -1 << v1;
  v3 = result >> v1;
  if ((result & ~v2) != 0)
  {
    ++v3;
  }

  if (result >= 64)
  {
    return v3;
  }

  return result;
}

uint64_t _findNextRun<A>(in:from:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, unint64_t a6, uint64_t a7)
{
  v96 = a4;
  v97 = a5;
  v76[0] = a1;
  v10 = *(*(a7 + 8) + 8);
  swift_getAssociatedTypeWitness(0, *(v10 + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v101 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = v76 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v81 = v76 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v98 = v76 - v18;
  swift_getAssociatedTypeWitness(0, v10, a6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v76 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v76 - v28;
  v93 = *(v21 + 16);
  v94 = v21 + 16;
  v93(v76 - v28, a3, v20);
  (*(v10 + 184))(a3, a6, v10);
  v91 = *(v10 + 72);
  v92 = v10 + 72;
  v91(a6, v10);
  v109 = v10;
  v104 = a6;
  v30 = a6;
  v31 = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v30, v20, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v33 = *(AssociatedConformanceWitness + 16);
  v90 = AssociatedConformanceWitness;
  v89 = AssociatedConformanceWitness + 16;
  v88 = v33;
  LOBYTE(a3) = (v33)(v27, v24, v20);
  v34 = *(v21 + 8);
  v95 = v24;
  v106 = v20;
  v34(v24, v20);
  if (a3)
  {
    v86 = v21;
    v102 = v29;
    v103 = v34;
    v35 = v109;
    v36 = *(v109 + 80);
    v85 = v109 + 80;
    v87 = v31;
    v37 = v36(v108, v31, v104, v109);
    v39 = v99 + 16;
    v38 = *(v99 + 16);
    v38(v98);
    v37(v108, 0);
    v40 = v102;
    v84 = v36;
    v41 = v36(v108, v102, v104, v35);
    v42 = v81;
    v83 = v38;
    v38(v81);
    v41(v108, 0);
    v103(v40, v106);
    v43 = v105;
    v44 = v96(v98, v42);
    if (v43)
    {
      v45 = v100;
      v46 = *(v99 + 8);
      v46(v42, v100);
      v46(v98, v45);
      v103(v87, v106);
    }

    else
    {
      v79 = v44;
      v78 = v39;
      v82 = v21 + 8;
      v105 = 0;
      v50 = v100;
      v51 = v99 + 8;
      v52 = *(v99 + 8);
      v52(v42, v100);
      v99 = v51;
      v77 = v52;
      v52(v98, v50);
      v80 = *(v109 + 192);
      v81 = (v109 + 192);
      v53 = v87;
      v54 = v86;
      v76[1] = a2;
      while (1)
      {
        v55 = v102;
        v56 = v106;
        v93(v102, v53, v106);
        v57 = v104;
        v58 = v109;
        v80(v53, v104, v109);
        v59 = v95;
        v91(v57, v58);
        v60 = v88(v53, v59, v56, v90);
        v61 = v56;
        v62 = v103;
        v103(v59, v61);
        if ((v60 & 1) == 0)
        {
          v62(v55, v106);
LABEL_12:
          (*(v54 + 32))(v76[0], v53, v106);
          v47 = v79;
          return v47 & 1;
        }

        v63 = v104;
        v64 = v84;
        v98 = v84(v108, v53, v104, v109);
        v65 = v100;
        v66 = v83;
        v83(v107);
        (v98)(v108, 0);
        v67 = v63;
        v68 = v103;
        v69 = v64(v108, v55, v67, v109);
        v70 = v101;
        v66(v101);
        v69(v108, 0);
        v68(v102, v106);
        v71 = v105;
        v72 = v96(v107, v70);
        v105 = v71;
        if (v71)
        {
          break;
        }

        v73 = v72;
        v74 = v77;
        v77(v101, v65);
        v74(v107, v65);
        v53 = v87;
        v54 = v86;
        if ((v79 ^ v73))
        {
          goto LABEL_12;
        }
      }

      v75 = v77;
      v77(v101, v65);
      v75(v107, v65);
      v68(v87, v106);
    }
  }

  else
  {
    v48 = v106;
    v34(v29, v106);
    (*(v21 + 32))(v76[0], v31, v48);
    v47 = 0;
  }

  return v47 & 1;
}

uint64_t UnsafeMutableBufferPointer._mergeRuns(_:at:buffer:by:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = v7;
  v13 = *a1;
  sub_1802E86D0(a2 - 1, 1, *a1);
  v14 = v13 + 32;
  v15 = *(v13 + 32 + 16 * v8);
  sub_1802E86D0(a2, 1, v13);
  v16 = *v6;
  if (!*v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = *(v14 + 16 * a2 + 8);
  v18 = *(*(*(a6 + 16) - 8) + 72);
  _merge<A>(low:mid:high:buffer:by:)((v16 + v18 * v15), v16 + v18 * *(v14 + 16 * a2), v16 + v18 * v17, a3, a4, a5, *(a6 + 16));
  if (!v25)
  {
    if (v17 >= v15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
      *a1 = v13;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        *a1 = v13;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v8);
      v20 = v13 + 16 * v8;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      *a1 = v13;
      Array.remove(at:)(a2, &unk_1EEEBBEA8, v24);
      return 1;
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 1;
}

uint64_t UnsafeMutableBufferPointer._mergeTopRuns(_:buffer:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *a1;
  if (*(*a1 + 16) >= 2uLL)
  {
    v8 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a1);
    *v8 = v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_58;
    }

    while (1)
    {
      *v8 = v7;
      v62 = v8;
      while (1)
      {
        v10 = Array._getCount()();
        v11 = v10 - 1;
        if (__OFSUB__(v10, 1))
        {
          __break(1u);
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v12 = v10 - 4;
        if (v11 >= 3)
        {
          break;
        }

        if (v10 != 3)
        {
          goto LABEL_19;
        }

        v8 = v6;
        v13 = 0;
LABEL_13:
        sub_1802E86D0(v13, 1, v7);
        v27 = (v7 + 16 * v11);
        v28 = v27[1];
        v6 = (v28 - *v27);
        if (__OFSUB__(v28, *v27))
        {
          goto LABEL_45;
        }

        sub_1802E86D0(v11 - 1, 1, v7);
        v29 = (v7 + 32 + 16 * (v11 - 1));
        v31 = *v29;
        v30 = v29[1];
        v32 = v30 - v31;
        if (__OFSUB__(v30, v31))
        {
          goto LABEL_48;
        }

        sub_1802E86D0(v11, 1, v7);
        v33 = (v7 + 32 + 16 * v11);
        v34 = v33[1];
        v35 = v34 - *v33;
        if (__OFSUB__(v34, *v33))
        {
          goto LABEL_51;
        }

        v24 = __OFADD__(v32, v35);
        v36 = v32 + v35;
        if (v24)
        {
          goto LABEL_53;
        }

        v37 = v36 < v6;
        v6 = v8;
        if (!v37)
        {
          sub_1802E86D0(v13, 1, v7);
          v52 = v27[1];
          v53 = v52 - *v27;
          if (__OFSUB__(v52, *v27))
          {
            goto LABEL_56;
          }

          sub_1802E86D0(v11, 1, v7);
          v54 = v33[1];
          if (__OFSUB__(v54, *v33))
          {
            goto LABEL_57;
          }

          if (v53 < v54 - *v33)
          {
            --v11;
          }

LABEL_33:
          v8 = v62;
          goto LABEL_34;
        }

LABEL_19:
        if (__OFSUB__(v11, 1))
        {
          goto LABEL_47;
        }

        sub_1802E86D0(v11 - 1, 1, v7);
        v38 = (v7 + 32 + 16 * (v11 - 1));
        v40 = *v38;
        v39 = v38[1];
        v41 = v39 - v40;
        if (__OFSUB__(v39, v40))
        {
          goto LABEL_50;
        }

        sub_1802E86D0(v11, 1, v7);
        v42 = (v7 + 32 + 16 * v11);
        v44 = *v42;
        v43 = v42[1];
        v24 = __OFSUB__(v43, v44);
        v45 = v43 - v44;
        v8 = v62;
        if (v24)
        {
          goto LABEL_52;
        }

        if (v45 < v41)
        {
          return 1;
        }

LABEL_34:
        sub_1802E86D0(v11 - 1, 1, v7);
        v55 = v7 + 32;
        v56 = *(v7 + 32 + 16 * (v11 - 1));
        sub_1802E86D0(v11, 1, v7);
        if (!*v67)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v57 = *(v55 + 16 * v11 + 8);
        v58 = *(*(*(a5 + 16) - 8) + 72);
        _merge<A>(low:mid:high:buffer:by:)((*v67 + v58 * v56), *v67 + v58 * *(v55 + 16 * v11), *v67 + v58 * v57, a2, a3, a4, *(a5 + 16));
        if (!v6)
        {
          if (v57 < v56)
          {
            goto LABEL_42;
          }

          v59 = swift_isUniquelyReferenced_nonNull_native(v7);
          *v8 = v7;
          if (!v59)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            *v8 = v7;
          }

          ContiguousArray._checkSubscript_mutating(_:)(v11 - 1);
          v60 = v7 + 16 * (v11 - 1);
          *(v60 + 32) = v56;
          *(v60 + 40) = v57;
          *v8 = v7;
          specialized Array.remove(at:)(v11);
          v7 = *v8;
          if (Array._getCount()() > 1)
          {
            continue;
          }
        }

        return 1;
      }

      sub_1802E86D0(v10 - 4, 1, v7);
      v14 = v7 + 32;
      v15 = (v7 + 32 + 16 * v12);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
        break;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
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
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v8 = v6;
    v13 = v11 - 2;
    sub_1802E86D0(v11 - 2, 1, v7);
    v6 = (v7 + 16 * v11);
    v19 = v6[1];
    v20 = v19 - *v6;
    if (__OFSUB__(v19, *v6))
    {
      goto LABEL_44;
    }

    sub_1802E86D0(v11 - 1, 1, v7);
    v21 = (v14 + 16 * (v11 - 1));
    v23 = *v21;
    v22 = v21[1];
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (v24)
    {
      goto LABEL_46;
    }

    v24 = __OFADD__(v20, v25);
    v26 = v20 + v25;
    if (v24)
    {
      goto LABEL_49;
    }

    if (v26 >= v18)
    {
      sub_1802E86D0(v11 - 2, 1, v7);
      v46 = v6[1];
      v47 = v46 - *v6;
      if (__OFSUB__(v46, *v6))
      {
        goto LABEL_54;
      }

      sub_1802E86D0(v11, 1, v7);
      v48 = (v14 + 16 * v11);
      v50 = *v48;
      v49 = v48[1];
      v24 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v24)
      {
        goto LABEL_55;
      }

      if (v47 < v51)
      {
        --v11;
      }

      v6 = v8;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  return 1;
}

uint64_t UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a1);
  *a1 = v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  *a1 = v8;
  if (Array._getCount()() >= 2)
  {
    do
    {
      v10 = Array._getCount()();
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v12 = v10 - 2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_14;
      }

      sub_1802E86D0(v10 - 2, 1, v8);
      v13 = v8 + 32;
      v14 = *(v8 + 32 + 16 * v12);
      sub_1802E86D0(v11, 1, v8);
      if (!*v24)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v15 = *(v13 + 16 * v11);
      v16 = *(v13 + 16 * v11 + 8);
      v17 = *(*(*(a5 + 16) - 8) + 72);
      _merge<A>(low:mid:high:buffer:by:)((*v24 + v17 * v14), *v24 + v17 * v15, *v24 + v17 * v16, a2, a3, a4, *(a5 + 16));
      if (v5)
      {
        break;
      }

      if (v16 < v14)
      {
        goto LABEL_15;
      }

      v18 = swift_isUniquelyReferenced_nonNull_native(v8);
      *a1 = v8;
      if (!v18)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        *a1 = v8;
      }

      ContiguousArray._checkSubscript_mutating(_:)(v11 - 1);
      v19 = v8 + 16 * v12;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      *a1 = v8;
      specialized Array.remove(at:)(v11);
      v8 = *a1;
    }

    while (Array._getCount()() > 1);
  }

  return 1;
}

void closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void (**a1)(char *, char *, unint64_t *), uint64_t a2, void *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v105 = a4;
  v106 = a5;
  v99 = a1;
  v10 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v97 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = &_swiftEmptyArrayStorage;
  v16 = *(v11 + 8);
  v104 = v14;
  if (v16 >= 1)
  {
    v95 = v13;
    v17 = type metadata accessor for UnsafeMutableBufferPointer(0, v14, v11, v12);
    v18 = 0;
    v101 = v10;
    v102 = a3;
    v96 = v10 + 32;
    v98 = v17;
    while (1)
    {
      v109 = *a3;
      v110 = v16;
      v108 = v18;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v17, v11);
      v20 = _findNextRun<A>(in:from:by:)(&v111, &v109, &v108, v105, v106, v17, WitnessTable);
      if (v8)
      {
        goto LABEL_79;
      }

      v22 = v111;
      if (v20)
      {
        if (v111 < v18)
        {
          goto LABEL_80;
        }

        if (v18 < v111)
        {
          v23 = v111;
          v24 = v18;
          v107 = 0;
          do
          {
            v25 = v23 - 1;
            if (v24 != v23 - 1)
            {
              v26 = a3[1];
              v27 = v24 < v26 && v23 <= v26;
              if (!v27)
              {
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v100 = v22;
              v28 = *a3;
              if (!*a3)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v29 = *(v101 + 72);
              v30 = (v28 + v29 * v24);
              v31 = (v28 + v29 * v25);
              v32 = v104;
              v103 = *(v101 + 32);
              v103(v97, v30, v104);
              if (v29 * v24 < v29 * v25 || v30 >= &v31[v29])
              {
                swift_arrayInitWithTakeFrontToBack(v30, v31, 1, v32);
              }

              else if (v29 * v24 != v29 * v25)
              {
                swift_arrayInitWithTakeBackToFront(v30, v31, 1, v32);
              }

              v103(v31, v97, v32);
              a3 = v102;
              v22 = v100;
            }

            ++v24;
            v23 = v25;
            v27 = v24 < v25;
            v8 = v107;
          }

          while (v27);
        }
      }

      v34 = a3[1];
      if (v22 < v34)
      {
        if (__OFSUB__(v22, v18))
        {
          goto LABEL_95;
        }

        if (v22 - v18 < v95)
        {
          if (__OFADD__(v18, v95))
          {
            goto LABEL_96;
          }

          if (v18 + v95 >= v34)
          {
            v35 = a3[1];
          }

          else
          {
            v35 = v18 + v95;
          }

          if (v35 < v18)
          {
LABEL_80:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v109 = v18;
          v110 = v35;
          v111 = v22;
          v36 = v98;
          v37 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v98, v21);
          v39 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v36, v38);
          MutableCollection<>._insertionSort(within:sortedEnd:by:)(&v109, &v111, v105, v106, v36, v37, v39);
          if (v8)
          {
            goto LABEL_79;
          }

          v22 = v35;
        }
      }

      if (v22 < v18)
      {
        goto LABEL_80;
      }

      v109 = v18;
      v110 = v22;
      v100 = v22;
      Array.append(_:)(&v109, &unk_1EEEBBEA8);
      v103 = *v99;
      if (!v103)
      {
        goto LABEL_97;
      }

      v40 = v112;
      if (v112[2] <= 1)
      {
        goto LABEL_3;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v112))
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      }

      v112 = v40;
      v41 = v40[2];
      while (1)
      {
        v42 = v41 - 1;
        if (v41 < 4)
        {
          break;
        }

        sub_1802E86D0(v41 - 4, 1, v40);
        v44 = v40 + 4;
        v45 = &v40[2 * v41 - 4];
        v47 = *v45;
        v46 = v45[1];
        v48 = v46 - v47;
        if (__OFSUB__(v46, v47))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
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
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v107 = v8;
        v43 = v41 - 3;
        sub_1802E86D0(v41 - 3, 1, v40);
        v49 = &v44[2 * v41 - 6];
        v50 = v49[1];
        v51 = v50 - *v49;
        if (__OFSUB__(v50, *v49))
        {
          goto LABEL_82;
        }

        sub_1802E86D0(v41 - 2, 1, v40);
        v52 = &v40[2 * v41];
        v54 = *v52;
        v53 = v52[1];
        v55 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v55)
        {
          goto LABEL_84;
        }

        v55 = __OFADD__(v51, v56);
        v57 = v51 + v56;
        if (v55)
        {
          goto LABEL_87;
        }

        if (v57 >= v48)
        {
          sub_1802E86D0(v41 - 3, 1, v40);
          v81 = v49[1];
          v82 = v81 - *v49;
          if (__OFSUB__(v81, *v49))
          {
            goto LABEL_91;
          }

          sub_1802E86D0(v41 - 1, 1, v40);
          v83 = &v44[2 * v42];
          v85 = *v83;
          v84 = v83[1];
          v55 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v55)
          {
            goto LABEL_92;
          }

          if (v82 < v86)
          {
            v42 = v41 - 2;
          }

          v8 = v107;
          goto LABEL_70;
        }

LABEL_50:
        sub_1802E86D0(v43, 1, v40);
        v58 = &v40[2 * v43 + 4];
        v59 = v58[1];
        v60 = v59 - *v58;
        if (__OFSUB__(v59, *v58))
        {
          goto LABEL_83;
        }

        v61 = v41 - 2;
        sub_1802E86D0(v41 - 2, 1, v40);
        v62 = &v40[2 * v41];
        v64 = *v62;
        v63 = v62[1];
        v65 = v63 - v64;
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_86;
        }

        sub_1802E86D0(v41 - 1, 1, v40);
        v66 = &v40[2 * v42 + 4];
        v67 = v66[1];
        v68 = v67 - *v66;
        if (__OFSUB__(v67, *v66))
        {
          goto LABEL_89;
        }

        v55 = __OFADD__(v65, v68);
        v69 = v65 + v68;
        if (v55)
        {
          goto LABEL_90;
        }

        v27 = v69 < v60;
        v8 = v107;
        if (v27)
        {
          goto LABEL_61;
        }

        sub_1802E86D0(v43, 1, v40);
        v70 = v58[1];
        v71 = v70 - *v58;
        if (__OFSUB__(v70, *v58))
        {
          goto LABEL_93;
        }

        sub_1802E86D0(v41 - 1, 1, v40);
        v72 = v66[1];
        if (__OFSUB__(v72, *v66))
        {
          goto LABEL_94;
        }

        if (v71 < v72 - *v66)
        {
          v42 = v41 - 2;
        }

LABEL_70:
        sub_1802E86D0(v42 - 1, 1, v40);
        v87 = v40 + 4;
        v88 = v40[2 * v42 + 2];
        sub_1802E86D0(v42, 1, v40);
        a3 = v102;
        if (!*v102)
        {
          goto LABEL_97;
        }

        v89 = v87[2 * v42 + 1];
        _merge<A>(low:mid:high:buffer:by:)((*v102 + *(v101 + 72) * v88), *v102 + *(v101 + 72) * v87[2 * v42], *v102 + *(v101 + 72) * v89, v103, v105, v106, v104);
        if (v8)
        {
          goto LABEL_79;
        }

        if (v89 < v88)
        {
          goto LABEL_80;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v40);
        v112 = v40;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
          v112 = v40;
        }

        ContiguousArray._checkSubscript_mutating(_:)(v42 - 1);
        v91 = &v40[2 * v42 - 2];
        v91[4] = v88;
        v91[5] = v89;
        v112 = v40;
        specialized Array.remove(at:)(v42);
        v40 = v112;
        v41 = v112[2];
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      if (v41 == 3)
      {
        break;
      }

      v61 = v41 - 2;
LABEL_61:
      sub_1802E86D0(v61, 1, v40);
      v73 = &v40[2 * v41];
      v75 = *v73;
      v74 = v73[1];
      v76 = v74 - v75;
      if (__OFSUB__(v74, v75))
      {
        goto LABEL_85;
      }

      v77 = &v40[2 * v42];
      sub_1802E86D0(v41 - 1, 1, v40);
      v78 = v77[4];
      v79 = v77[5];
      v55 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v55)
      {
        goto LABEL_88;
      }

      if (v80 >= v76)
      {
        goto LABEL_70;
      }

      a3 = v102;
LABEL_3:
      v16 = a3[1];
      v18 = v100;
      v17 = v98;
      if (v100 >= v16)
      {
        goto LABEL_77;
      }
    }

    v107 = v8;
    v43 = 0;
    goto LABEL_50;
  }

LABEL_77:
  v92 = *v99;
  if (!*v99)
  {
    goto LABEL_97;
  }

  v93 = type metadata accessor for UnsafeMutableBufferPointer(0, v104, v11, v12);
  UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v112, v92, v105, v106, v93);
LABEL_79:
  v112;
}

uint64_t UnsafeRawBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    if (a4 - a3 < a2)
    {
      goto LABEL_12;
    }
  }

  else if (a2 >= 1)
  {
    goto LABEL_12;
  }

  result = a3 ? a3 + a1 : 0;
  v6 = a2 - a1;
  if (v6 < 0 || v6 && !result)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeRawBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - a1;
  if (a3)
  {
    result = a3 + a1;
  }

  else
  {
    result = 0;
  }

  if (v4 < 0 || a2 != a1 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 < result || a4 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else if (a3)
  {
    result += a3;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t UnsafeMutableRawBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = a3 + a1;
  }

  else
  {
    result = 0;
  }

  v5 = a2 - a1;
  if (v5 < 0 || v5 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void _ss10OutputSpanVsRi_zrlEfD(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 1)
  {
    if ((*(*(a4 - 1) + 80) & a1) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    swift_arrayDestroy(a1, a3, a4);
  }
}

uint64_t UnsafeMutableRawPointer.initializeMemory<A>(as:repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = a3;
  if (a3)
  {
    v9 = *(a5 - 8);
    v10 = *(v9 + 16);
    v11 = a4;
    do
    {
      v10(v11, a2, a5);
      v11 += *(v9 + 72);
      --v6;
    }

    while (v6);
  }

  return a4;
}

unint64_t StaticString.unicodeScalar.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (HIDWORD(result))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result >> 16 > 0x10 || (result & 0xFFFFF800) == 0xD800)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t StaticString.utf8CodeUnitCount.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t protocol witness for _ExpressibleByBuiltinUnicodeScalarLiteral.init(_builtinUnicodeScalarLiteral:) in conformance StaticString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 0x7F)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  return result;
}

__n128 _ss12StaticStringVs43ExpressibleByExtendedGraphemeClusterLiteralssACP08extendedfgH0x0efgH4TypeQz_tcfCTW_0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t _ss12StaticStringVs51_ExpressibleByBuiltinExtendedGraphemeClusterLiteralssACP08_builtinfghI017utf8CodeUnitCount7isASCIIxBp_BwBi1_tcfCTW_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t StaticString.description.getter(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a1 >> 16 <= 0x10 && (a1 & 0xFFFFF800) != 0xD800)
    {
      return specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a1);
    }

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = _allASCII(_:)(a1, a2);
  return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v5, v6);
}

uint64_t StaticString.debugDescription.getter(unint64_t a1, uint64_t x1_0, char a3)
{
  v3 = StaticString.description.getter(a1, x1_0, a3);
  v235.value._countAndFlagsBits = 34;
  v235.value._object = 0xE100000000000000;
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v226 = v4;
  v227 = v5;
  v228 = v3;
  if (!v5)
  {
LABEL_224:
    v233 = 34;
    v234 = 0xE100000000000000;
    countAndFlagsBits = v235.value._countAndFlagsBits;
    object = v235.value._object;
    v177 = (v235.value._object >> 56) & 0xF;
    if ((v235.value._object & 0x2000000000000000) == 0)
    {
      v177 = v235.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v177)
    {
LABEL_276:
      v226;
      goto LABEL_279;
    }

    while (1)
    {
      v26 = v233;
      v9 = v234;
      v182 = specialized Collection.first.getter(v233, v234);
      if ((v182 & 0x100000000) != 0)
      {
        goto LABEL_284;
      }

      v231 = countAndFlagsBits;
      v232 = object;
      v235.value._countAndFlagsBits = 0;
      v235.value._object = 0xE000000000000000;
      v183 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v182);
      v185 = v184;
      _StringGuts.append(_:)(v183, v184, v186, v187, v188, v189, v190, v191, v192, v193);
      v185;
      v21 = v231;
      v20 = v232;
      v232;
      0xE000000000000000;
      v235.value._countAndFlagsBits = v21;
      v235.value._object = v20;
      v194 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v194 = v21;
      }

      v195 = 7;
      if (((v20 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
      {
        v195 = 11;
      }

      v196._rawBits = v195 | (v194 << 16);
      v197._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v196)._rawBits;
      rawBits = v197._rawBits;
      if (!(v197._rawBits >> 14))
      {
        break;
      }

      v199 = v197._rawBits >> 16;
      if (v197._rawBits >= 0x20000)
      {
        if ((v20 & 0x1000000000000000) == 0)
        {
          if ((v20 & 0x2000000000000000) != 0)
          {
            v231 = v21;
            v232 = (v20 & 0xFFFFFFFFFFFFFFLL);
            v201 = *&v230[v199];
          }

          else
          {
            if ((v21 & 0x1000000000000000) != 0)
            {
              v200 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v200 = _StringObject.sharedUTF8.getter(v21, v20);
              if (!v200)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v201 = *&v200[v199 - 2];
          }

          if (v201 != 2573 && (v201 & 0x8080) == 0)
          {
            v199 = 1;
LABEL_251:
            v203 = v199 << 8;
            goto LABEL_258;
          }
        }

        v199 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(rawBits >> 16);
      }

      if (v199 >= 64)
      {
        v203 = 63;
      }

      else
      {
        v203 = v199 << 8;
      }

LABEL_258:
      v20;
      v204._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v196)._rawBits;
      if (!(v204._rawBits >> 14))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v205 = v204._rawBits;
      v20;
      if ((v20 & 0x1000000000000000) != 0)
      {
        v210 = String.UnicodeScalarView._foreignIndex(before:)(v205)._rawBits;
        v20;
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v207 = 0;
          v231 = v21;
          v232 = (v20 & 0xFFFFFFFFFFFFFFLL);
          do
          {
            v209 = v230[(v205 >> 16) + 1 + v207--] & 0xC0;
          }

          while (v209 == 128);
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v206 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v206 = _StringObject.sharedUTF8.getter(v21, v20);
          }

          v207 = 0;
          do
          {
            v208 = v206[(v205 >> 16) - 1 + v207--] & 0xC0;
          }

          while (v208 == 128);
        }

        v20;
        v210 = (v205 - -65536 * v207) & 0xFFFFFFFFFFFF0000;
      }

      if (((rawBits - (v199 << 16)) & 0xFFFFFFFFFFFF0000 | v203) >> 14 >= v210 >> 14)
      {
        goto LABEL_278;
      }

      v231 = v21;
      v232 = v20;
      specialized RangeReplaceableCollection<>.removeLast()();
      v212 = v231;
      v211 = v232;
      v232;
      0xE000000000000000;
      v231 = v212;
      v232 = v211;
      v211;
      v213 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v235.value._countAndFlagsBits = v231;
      v235.value._object = v232;
      v214 = Unicode.Scalar._escaped(asASCII:)(1);
      v178 = v214.value._object;
      if (v214.value._object)
      {
        v179 = v214.value._countAndFlagsBits;
      }

      else
      {
        v179 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v213);
      }

      v215 = v178;
      v180._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v180, v179, v215);
      v215;
      countAndFlagsBits = v235.value._countAndFlagsBits;
      object = v235.value._object;
      v181 = (v235.value._object >> 56) & 0xF;
      if ((v235.value._object & 0x2000000000000000) == 0)
      {
        v181 = v235.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v181)
      {
        goto LABEL_276;
      }
    }

    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v199 = 0;
    goto LABEL_251;
  }

  v6 = v4;
  v221 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v222 = v4 & 0xFFFFFFFFFFFFFFLL;
  v4;
  v8 = 0;
  v9 = -255;
  v10 = 1;
  while (1)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v16 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8 << 16));
      scalarLength = v16.scalarLength;
      value = v16._0._value;
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v233 = v228;
        v234 = v222;
        v13 = &v233;
      }

      else
      {
        v13 = v221;
        if ((v228 & 0x1000000000000000) == 0)
        {
          v13 = _StringObject.sharedUTF8.getter(v228, v6);
        }
      }

      value = _decodeScalar(_:startingAt:)(v13, v7, v8);
    }

    v17 = value;
    v8 += scalarLength;
    v18 = Unicode.Scalar._escaped(asASCII:)(0);
    v229 = v8;
    if (!v18.value._object)
    {
      v39 = v235.value._countAndFlagsBits;
      v38 = v235.value._object;
      if ((v10 & 1) == 0)
      {
        goto LABEL_47;
      }

      LODWORD(v233) = 0;
      v40 = specialized BidirectionalCollection.last.getter(v235.value._countAndFlagsBits, v235.value._object);
      if ((v40 & 0x100000000) != 0)
      {
LABEL_284:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (_GraphemeBreakingState.shouldBreak(between:and:)(v40, v17))
      {
LABEL_47:
        v233 = v39;
        v234 = v38;
        v235.value._countAndFlagsBits = 0;
        v235.value._object = 0xE000000000000000;
        v42 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v17);
        v43 = v41;
        v44 = HIBYTE(v38) & 0xF;
        v45 = HIBYTE(v41) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v225 = (v41 & 0x2000000000000000) == 0;
          v46 = v42 & 0xFFFFFFFFFFFFLL;
          v47 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) != 0)
          {
LABEL_68:
            v223 = v46;
            if ((v41 & 0x1000000000000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_141:
            swift_bridgeObjectRetain_n(v41, 2);
            v115._rawBits = 1;
            v116._rawBits = (v47 << 16) | 1;
            v117._rawBits = _StringGuts.validateScalarRange(_:)(v115, v116, v42, v43)._rawBits;
            if (v117._rawBits < 0x10000)
            {
              v117._rawBits |= 3;
            }

            v62 = String.UTF8View.distance(from:to:)(v117, v118);
            v43;
            if ((v38 & 0x1000000000000000) != 0)
            {
              goto LABEL_144;
            }

LABEL_70:
            if ((v38 & 0x2000000000000000) != 0)
            {
              v63 = HIBYTE(v38) & 0xF;
            }

            else
            {
              v63 = *&v39 & 0xFFFFFFFFFFFFLL;
            }

            v64 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
LABEL_280:
              __break(1u);
LABEL_281:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            goto LABEL_74;
          }

LABEL_67:
          v47 = v46;
          goto LABEL_68;
        }

        if ((v41 & 0x2000000000000000) == 0)
        {
          v46 = v42 & 0xFFFFFFFFFFFFLL;
          v225 = 1;
          goto LABEL_67;
        }

        v114 = v45 + v44;
        if (v45 + v44 >= 0x10)
        {
          v225 = 0;
          v47 = HIBYTE(v41) & 0xF;
          v223 = v42 & 0xFFFFFFFFFFFFLL;
          if ((v41 & 0x1000000000000000) != 0)
          {
            goto LABEL_141;
          }

LABEL_69:
          v41;
          v62 = v47;
          if ((v38 & 0x1000000000000000) == 0)
          {
            goto LABEL_70;
          }

LABEL_144:
          v119 = String.UTF8View._foreignCount()();
          v64 = v119 + v62;
          if (__OFADD__(v119, v62))
          {
            goto LABEL_280;
          }

LABEL_74:
          v65 = *&v39 & ~v38;
          if ((v65 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
          {
            v66 = _StringGuts.nativeUnusedCapacity.getter(*&v39, v38);
            if (v67)
            {
              goto LABEL_283;
            }

            if (v64 > 15)
            {
              goto LABEL_86;
            }

            if ((v38 & 0x2000000000000000) == 0)
            {
              if (v66 < v62)
              {
                v43;
LABEL_81:
                if ((v38 & 0x1000000000000000) != 0)
                {
                  v39 = _StringGuts._foreignConvertedToSmall()(*&v39, v38);
                  v71 = v160;
                }

                else
                {
                  if ((*&v39 & 0x1000000000000000) != 0)
                  {
                    v69 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v70 = *&v39 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v69 = _StringObject.sharedUTF8.getter(*&v39, v38);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v69, v70, &v231, v68);
                  v39 = v231;
                  v71 = v232;
                }

LABEL_130:
                v43;
                v106._rawBits = 1;
                v107._rawBits = (v47 << 16) | 1;
                v108._rawBits = _StringGuts.validateScalarRange(_:)(v106, v107, v42, v43)._rawBits;
                if (v108._rawBits < 0x10000)
                {
                  v108._rawBits |= 3;
                }

                if (v108._rawBits >> 16 || v109._rawBits >> 16 != v47)
                {
                  v42 = specialized static String._copying(_:)(v108._rawBits, v109._rawBits, v42, v43);
                  v111 = v122;
                  v43;
                  if ((v111 & 0x2000000000000000) == 0)
                  {
                    goto LABEL_135;
                  }
                }

                else
                {
                  v111 = v43;
                  if ((v43 & 0x2000000000000000) == 0)
                  {
LABEL_135:
                    if ((v111 & 0x1000000000000000) != 0)
                    {
                      v42 = _StringGuts._foreignConvertedToSmall()(v42, v111);
                      v174 = v173;
                      v111;
                      v111 = v174;
                    }

                    else
                    {
                      if ((v42 & 0x1000000000000000) != 0)
                      {
                        v112 = ((v111 & 0xFFFFFFFFFFFFFFFLL) + 32);
                        v113 = v42 & 0xFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v112 = _StringObject.sharedUTF8.getter(v42, v111);
                      }

                      closure #1 in _StringGuts._convertedToSmall()(v112, v113, &v231, v110);
                      v111;
                      v42 = v231;
                      v111 = v232;
                    }

LABEL_154:
                    v123 = HIBYTE(v71) & 0xF;
                    v124 = HIBYTE(v111) & 0xF;
                    v125 = v124 + v123;
                    if (v124 + v123 > 0xF)
                    {
LABEL_283:
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                    }

                    v43;
                    if (v124)
                    {
                      v126 = 0;
                      v127 = 0;
                      v128 = 8 * v123;
                      v129 = 8 * v124;
                      v6 = v226;
                      v8 = v229;
                      do
                      {
                        v130 = v111 >> (v126 & 0x38);
                        if (v127 < 8)
                        {
                          v130 = v42 >> v126;
                        }

                        v131 = (v130 << (v128 & 0x38)) | ((-255 << (v128 & 0x38)) - 1) & v71;
                        v132 = (v130 << v128) | ((-255 << v128) - 1) & *&v39;
                        if (v123 <= 7)
                        {
                          v39 = v132;
                        }

                        else
                        {
                          v71 = v131;
                        }

                        ++v123;
                        v128 += 8;
                        v126 += 8;
                        ++v127;
                      }

                      while (v129 != v126);
                    }

                    else
                    {
                      v6 = v226;
                      v8 = v229;
                    }

                    0xE000000000000000;
                    v38;
                    v134 = 0xE000000000000000;
                    if (*&v39 & 0x8080808080808080 | v71 & 0x80808080808080)
                    {
                      v134 = 0xA000000000000000;
                    }

                    v233 = v39;
                    v234 = v134 & 0xFF00000000000000 | (v125 << 56) | v71 & 0xFFFFFFFFFFFFFFLL;
LABEL_202:
                    v10 = 0;
                    v235.value._countAndFlagsBits = v233;
                    v235.value._object = v234;
                    goto LABEL_12;
                  }
                }

                v111;
                goto LABEL_154;
              }

LABEL_86:
              v72 = v65 & 0x2000000000000000;
              v73 = _StringGuts.nativeUnusedCapacity.getter(*&v39, v38);
              if ((v74 & 1) != 0 || v73 < v62)
              {
                if (v72)
                {
                  swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL);
                }

                v75 = 2 * _StringGuts.nativeCapacity.getter(*&v39, v38);
                if (v76)
                {
                  v75 = 0;
                }

                if (v75 > v64)
                {
                  v64 = v75;
                }

LABEL_94:
                _StringGuts.grow(_:)(v64);
              }

              else if (!v72 || !swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
              {
                goto LABEL_94;
              }

              if ((v43 & 0x1000000000000000) != 0)
              {
                v43;
                _StringGuts._foreignAppendInPlace(_:)(v42, v43, 0, v47);
                0xE000000000000000;
                v120 = v43;
              }

              else
              {
                if (v225)
                {
                  if ((v42 & 0x1000000000000000) != 0)
                  {
                    v77 = (v43 & 0xFFFFFFFFFFFFFFFLL) + 32;
                    v78 = v223;
                    v79 = v223;
                  }

                  else
                  {
                    v168 = _StringObject.sharedUTF8.getter(v42, v43);
                    v78 = v223;
                    if (v169 < v223)
                    {
                      goto LABEL_281;
                    }

                    v77 = v168;
                    v79 = v169;
                  }

                  v6 = v226;
                  v43;
                  v80 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v78, v77, v79);
                  v81 = (v234 & 0xFFFFFFFFFFFFFFFLL);
                  __StringStorage.appendInPlace(_:isASCII:)(v80, v82, v42 < 0);
                  v233 = v81[3];
                  0xE000000000000000;
                  v43;
                  goto LABEL_201;
                }

                v43;
                v231 = v42;
                v232 = (v43 & 0xFFFFFFFFFFFFFFLL);
                v43;
                v144 = (v234 & 0xFFFFFFFFFFFFFFFLL);
                __StringStorage.appendInPlace(_:isASCII:)(&v231, v45, (v43 & 0x4000000000000000) != 0);
                v233 = v144[3];
                v120 = 0xE000000000000000;
              }

              v120;
              v6 = v226;
LABEL_201:
              v8 = v229;
              goto LABEL_202;
            }

            v43;
          }

          else
          {
            if (v64 > 15)
            {
              goto LABEL_86;
            }

            v43;
            if ((v38 & 0x2000000000000000) == 0)
            {
              goto LABEL_81;
            }
          }

          v71 = v38;
          goto LABEL_130;
        }

        v41;
        if (v45)
        {
          v135 = 0;
          v136 = 0;
          v137 = 8 * v44;
          v138 = v38;
          do
          {
            v139 = v43 >> (v135 & 0x38);
            if (v136 < 8)
            {
              v139 = v42 >> v135;
            }

            v140 = (v139 << (v137 & 0x38)) | ((-255 << (v137 & 0x38)) - 1) & v138;
            v141 = (v139 << v137) | ((-255 << v137) - 1) & *&v39;
            if (v44 <= 7)
            {
              v39 = v141;
            }

            else
            {
              v138 = v140;
            }

            ++v44;
            v137 += 8;
            v135 += 8;
            ++v136;
          }

          while (8 * v45 != v135);
        }

        else
        {
          v138 = v38;
        }

        v38;
        0xE000000000000000;
        v156 = 0xE000000000000000;
        if (*&v39 & 0x8080808080808080 | v138 & 0x80808080808080)
        {
          v156 = 0xA000000000000000;
        }

        v233 = v39;
        v234 = v156 & 0xFF00000000000000 | (v114 << 56) | v138 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_201;
      }

      v92 = Unicode.Scalar._escaped(asASCII:)(1);
      v91 = v92.value._object;
      if (v92.value._object)
      {
        v93 = v92.value._countAndFlagsBits;
      }

      else
      {
        v93 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v17);
      }

      v94 = v91;
      v142 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v142 = *&v39 & 0xFFFFFFFFFFFFLL;
      }

      if (!v142 && (*&v39 & ~v38 & 0x2000000000000000) == 0)
      {
        v38;
        v235.value._countAndFlagsBits = v93;
        v235.value._object = v94;
        goto LABEL_11;
      }

      if ((v38 & 0x2000000000000000) != 0)
      {
        if ((v91 & 0x2000000000000000) != 0)
        {
          v145 = specialized _SmallString.init(_:appending:)(*&v39, v38, v93, v91);
          if ((v147 & 1) == 0)
          {
            v157 = v145;
            v158 = v146;
            v38;
            v94;
            v235.value._countAndFlagsBits = v157;
            v235.value._object = v158;
            goto LABEL_11;
          }

          goto LABEL_194;
        }
      }

      else if ((v91 & 0x2000000000000000) != 0)
      {
LABEL_194:
        v143 = HIBYTE(v94) & 0xF;
        goto LABEL_195;
      }

      v143 = v93 & 0xFFFFFFFFFFFFLL;
LABEL_195:
      v94;
      _StringGuts.append(_:)(v93, v94, 0, v143, v148, v149, v150, v151, v152, v153, v154, v155);
      swift_bridgeObjectRelease_n(v94, 2);
      goto LABEL_11;
    }

    v19 = v18.value._countAndFlagsBits;
    v20 = v18.value._object;
    v22 = v235.value._countAndFlagsBits;
    v21 = v235.value._object;
    v23 = (v235.value._object >> 56) & 0xF;
    v24 = v235.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v235.value._object & 0x2000000000000000) != 0)
    {
      v25 = (v235.value._object >> 56) & 0xF;
    }

    else
    {
      v25 = v235.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v25 && (v235.value._countAndFlagsBits & ~v235.value._object & 0x2000000000000000) == 0)
    {
      v235.value._object;
      v235 = v18;
      goto LABEL_10;
    }

    v26 = (v18.value._object & 0x2000000000000000);
    v27 = (v18.value._object >> 56) & 0xF;
    if ((v18.value._object & 0x2000000000000000 & v235.value._object) == 0)
    {
      break;
    }

    v28 = v23 + v27;
    if (v23 + v27 > 0xF)
    {
      break;
    }

    if (v27)
    {
      v54 = 0;
      v55 = 0;
      v56 = 8 * v23;
      v57 = 8 * v27;
      v58 = v235.value._object;
      v6 = v226;
      do
      {
        v59 = v18.value._object >> (v54 & 0x38);
        if (v55 < 8)
        {
          v59 = v18.value._countAndFlagsBits >> v54;
        }

        v60 = (v59 << (v56 & 0x38)) | ((-255 << (v56 & 0x38)) - 1) & v58;
        v61 = (v59 << v56) | ((-255 << v56) - 1) & *&v22;
        if (v23 <= 7)
        {
          v22 = v61;
        }

        else
        {
          v58 = v60;
        }

        ++v23;
        v56 += 8;
        v54 += 8;
        ++v55;
      }

      while (v57 != v54);
    }

    else
    {
      v58 = v235.value._object;
      v6 = v226;
    }

    v235.value._object;
    v18.value._object;
    v121 = 0xE000000000000000;
    if (*&v22 & 0x8080808080808080 | v58 & 0x80808080808080)
    {
      v121 = 0xA000000000000000;
    }

    v12 = (v121 & 0xFF00000000000000 | (v28 << 56) | v58 & 0xFFFFFFFFFFFFFFLL);
LABEL_9:
    v235.value._countAndFlagsBits = v22;
    v235.value._object = v12;
LABEL_10:
    v8 = v229;
LABEL_11:
    v10 = 1;
LABEL_12:
    if (v8 >= v227)
    {
      v6;
      goto LABEL_224;
    }
  }

  if (v26)
  {
    v29 = (v18.value._object >> 56) & 0xF;
  }

  else
  {
    v29 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v224 = v29;
  if ((v18.value._object & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n(v18.value._object, 2);
    v161._rawBits = 1;
    v162._rawBits = (v29 << 16) | 1;
    v163._rawBits = _StringGuts.validateScalarRange(_:)(v161, v162, v18.value._countAndFlagsBits, v18.value._object)._rawBits;
    if (v163._rawBits < 0x10000)
    {
      v163._rawBits |= 3;
    }

    v29 = String.UTF8View.distance(from:to:)(v163, v164);
    v18.value._object;
    if ((v21 & 0x1000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18.value._object;
    if ((v21 & 0x1000000000000000) == 0)
    {
LABEL_33:
      v31 = __OFADD__(v25, v29);
      v32 = v25 + v29;
      if (v31)
      {
        goto LABEL_277;
      }

LABEL_34:
      if ((*&v22 & ~v21 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v21 & 0xFFFFFFFFFFFFFFFLL))
      {
        v33 = _StringGuts.nativeUnusedCapacity.getter(*&v22, v21);
        if (v34)
        {
          goto LABEL_283;
        }

        if (v32 > 15)
        {
LABEL_51:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, v29);
          if ((v18.value._object & 0x1000000000000000) == 0)
          {
            v8 = v229;
            if (v26)
            {
              v233 = v18.value._countAndFlagsBits;
              v234 = v18.value._object & 0xFFFFFFFFFFFFFFLL;
              v18.value._object;
              v133 = v235.value._object & 0xFFFFFFFFFFFFFFFLL;
              __StringStorage.appendInPlace(_:isASCII:)(&v233, (v18.value._object >> 56) & 0xF, (v18.value._object & 0x4000000000000000) != 0);
              v18.value._object;
              v235.value._countAndFlagsBits = *(v133 + 24);
              v6 = v226;
            }

            else
            {
              if ((v18.value._countAndFlagsBits & 0x1000000000000000) != 0)
              {
                v48 = (v18.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
                v49 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                v50 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v166 = _StringObject.sharedUTF8.getter(v18.value._countAndFlagsBits, v18.value._object);
                v49 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                if (v167 < (v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL))
                {
                  goto LABEL_281;
                }

                v48 = v166;
                v50 = v167;
              }

              v6 = v226;
              v18.value._object;
              v51 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v49, v48, v50);
              v52 = v235.value._object & 0xFFFFFFFFFFFFFFFLL;
              __StringStorage.appendInPlace(_:isASCII:)(v51, v53, v18.value._countAndFlagsBits < 0);
              v235.value._countAndFlagsBits = *(v52 + 24);
              v18.value._object;
            }

            goto LABEL_11;
          }

          _StringGuts._foreignAppendInPlace(_:)(v18.value._countAndFlagsBits, v18.value._object, 0, v224);
          swift_bridgeObjectRelease_n(v18.value._object, 2);
          v6 = v226;
          goto LABEL_10;
        }

        if ((v21 & 0x2000000000000000) == 0)
        {
          if (v33 >= v29)
          {
            goto LABEL_51;
          }

          goto LABEL_40;
        }

LABEL_101:
        v37 = v21;
LABEL_102:
        v35 = v224;
      }

      else
      {
        if (v32 > 15)
        {
          goto LABEL_51;
        }

        if ((v21 & 0x2000000000000000) != 0)
        {
          goto LABEL_101;
        }

LABEL_40:
        if ((v21 & 0x1000000000000000) != 0)
        {
          v22 = _StringGuts._foreignConvertedToSmall()(*&v22, v21);
          v37 = v159;
          goto LABEL_102;
        }

        v35 = v224;
        if ((*&v22 & 0x1000000000000000) != 0)
        {
          v36 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v36 = _StringObject.sharedUTF8.getter(*&v22, v21);
          v24 = v170;
        }

        closure #1 in _StringGuts._convertedToSmall()(v36, v24, &v233, v30);
        v22 = v233;
        v37 = v234;
      }

      v18.value._object;
      v83._rawBits = 1;
      v84._rawBits = (v35 << 16) | 1;
      v85._rawBits = _StringGuts.validateScalarRange(_:)(v83, v84, v18.value._countAndFlagsBits, v18.value._object)._rawBits;
      if (v85._rawBits < 0x10000)
      {
        v85._rawBits |= 3;
      }

      if (v85._rawBits >> 16 || v86._rawBits >> 16 != v35)
      {
        v19 = specialized static String._copying(_:)(v85._rawBits, v86._rawBits, v18.value._countAndFlagsBits, v18.value._object);
        v88 = v95;
        v18.value._object;
        if ((v88 & 0x2000000000000000) == 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v88 = v18.value._object;
        if ((v18.value._object & 0x2000000000000000) == 0)
        {
LABEL_108:
          if ((v88 & 0x1000000000000000) != 0)
          {
            v19 = _StringGuts._foreignConvertedToSmall()(*&v19, v88);
            v172 = v171;
            v88;
            v88 = v172;
          }

          else
          {
            if ((*&v19 & 0x1000000000000000) != 0)
            {
              v89 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v90 = *&v19 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v89 = _StringObject.sharedUTF8.getter(*&v19, v88);
            }

            closure #1 in _StringGuts._convertedToSmall()(v89, v90, &v233, v87);
            v88;
            v19 = v233;
            v88 = v234;
          }

          goto LABEL_118;
        }
      }

      v88;
LABEL_118:
      v96 = HIBYTE(v37) & 0xF;
      v97 = HIBYTE(v88) & 0xF;
      v98 = v97 + v96;
      if (v97 + v96 > 0xF)
      {
        goto LABEL_283;
      }

      v18.value._object;
      if (v97)
      {
        v99 = 0;
        v100 = 0;
        v101 = 8 * v96;
        v102 = 8 * v97;
        v6 = v226;
        do
        {
          v103 = v88 >> (v99 & 0x38);
          if (v100 < 8)
          {
            v103 = *&v19 >> v99;
          }

          v104 = (v103 << (v101 & 0x38)) | ((-255 << (v101 & 0x38)) - 1) & v37;
          v105 = (v103 << v101) | ((-255 << v101) - 1) & *&v22;
          if (v96 <= 7)
          {
            v22 = v105;
          }

          else
          {
            v37 = v104;
          }

          ++v96;
          v101 += 8;
          v99 += 8;
          ++v100;
        }

        while (v102 != v99);
      }

      else
      {
        v6 = v226;
      }

      v18.value._object;
      v21;
      v11 = 0xE000000000000000;
      if (*&v22 & 0x8080808080808080 | v37 & 0x80808080808080)
      {
        v11 = 0xA000000000000000;
      }

      v12 = (v11 & 0xFF00000000000000 | (v98 << 56) | v37 & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_9;
    }
  }

  v165 = String.UTF8View._foreignCount()();
  v32 = v165 + v29;
  if (!__OFADD__(v165, v29))
  {
    goto LABEL_34;
  }

LABEL_277:
  __break(1u);
LABEL_278:
  v226;
  v9;
  v216._rawBits = specialized Collection.dropFirst(_:)(1, *&v26, v9)._rawBits;
  v218 = v217;
  v231 = v21;
  v232 = v20;
  v235.value._countAndFlagsBits = 0;
  v235.value._object = 0xE000000000000000;
  specialized String.UnicodeScalarView.append<A>(contentsOf:)(v216, v236, v219, v217);
  0xE000000000000000;
  v218;
  countAndFlagsBits = v231;
LABEL_279:
  v234;
  return countAndFlagsBits;
}

uint64_t StaticString.customMirror.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a1 >> 16 <= 0x10 && (a1 & 0xFFFFF800) != 0xD800)
    {
      v12 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a1);
      v10 = v13;
      goto LABEL_38;
    }

LABEL_41:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    goto LABEL_41;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = _allASCII(_:)(a1, a2);
  if (a2)
  {
    if (a2 <= 0xF)
    {
      v14 = a2 - 8;
      v15 = 8;
      if (a2 < 8)
      {
        v15 = a2;
      }

      v16 = v15 - 1;
      if (a2 < v15 - 1)
      {
        v16 = a2;
      }

      if (v15 == v16)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v12 = *a1;
      if (a2 != 1)
      {
        v12 |= *(a1 + 1) << 8;
        if (a2 != 2)
        {
          v12 |= *(a1 + 2) << 16;
          if (a2 != 3)
          {
            v12 |= *(a1 + 3) << 24;
            if (a2 != 4)
            {
              v12 |= *(a1 + 4) << 32;
              if (a2 != 5)
              {
                v12 |= *(a1 + 5) << 40;
                if (a2 != 6)
                {
                  v12 |= *(a1 + 6) << 48;
                  if (a2 != 7)
                  {
                    v12 |= *(a1 + 7) << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (a2 < 9)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = (a1 + 8);
        do
        {
          v20 = *v19++;
          v17 |= v20 << v18;
          v18 += 8;
          --v14;
        }

        while (v14);
      }

      v21 = 0xA000000000000000;
      if (((v17 | v12) & 0x8080808080808080) == 0)
      {
        v21 = 0xE000000000000000;
      }

      v10 = v21 | (a2 << 56) | v17;
    }

    else
    {
      v8 = a2 | 0xC000000000000000;
      if (!v7)
      {
        v8 = a2;
      }

      v9 = v8 | 0x3000000000000000;
      v10 = _allocateStringStorage(codeUnitCapacity:)(a2);
      *(v10 + 16) = v11;
      *(v10 + 24) = v9;
      if (v11 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v9 = *(v10 + 24);
      }

      *(v10 + 32 + (v9 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v10 + 32));
      v12 = *(v10 + 24);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0xE000000000000000;
  }

LABEL_38:
  v23[3] = &type metadata for String;
  v23[0] = v12;
  v23[1] = v10;
  return Mirror.init(reflecting:)(v23, a4);
}

uint64_t static Strideable.< infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v25 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v7 = v6;
  v8 = *(*(swift_getAssociatedConformanceWitness(a4, v5, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = swift_checkMetadataState(0, v7);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(a4 + 40))(v25, v5, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v13, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v12, v13, v8);
  v21 = swift_getAssociatedConformanceWitness(a4, v5, v13, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v5) = (*(v21 + 40))(v19, v17, v13, v21);
  v22 = *(v14 + 8);
  v22(v17, v13);
  v22(v19, v13);
  return v5 & 1;
}

uint64_t static Strideable.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v25 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v7 = v6;
  v8 = *(*(swift_getAssociatedConformanceWitness(a4, v5, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = swift_checkMetadataState(0, v7);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(a4 + 40))(v25, v5, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v13, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v12, v13, v8);
  v21 = swift_getAssociatedConformanceWitness(a4, v5, v13, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v5) = (*(*(v21 + 8) + 8))(v19, v17, v13);
  v22 = *(v14 + 8);
  v22(v17, v13);
  v22(v19, v13);
  return v5 & 1;
}

unint64_t _sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs7_Int128V_Tt2t4g5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6);
  v8 = a5 + (a6 >> 63);
  if (__OFADD__(a5, a6 >> 63))
  {
    goto LABEL_6;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v9 = v8 + v7;
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_6:
    v9 = (a6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    v6 = ~(a6 >> 63);
    v10 = 0x8000000000000000;
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:
  *a1 = v6;
  a1[1] = v9;
  return v10;
}

unint64_t _sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6Int128V_Tt2t4gq5(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = 0x8000000000000000;
  if (__OFADD__(__CFADD__(a4, a6), a5) | __OFADD__(a6 >> 63, __CFADD__(a4, a6) + a5))
  {
    v7 = ~(a6 >> 63);
  }

  else
  {
    v6 = 0;
    v7 = a4 + a6;
  }

  if (__OFADD__(__CFADD__(a4, a6), a5) | __OFADD__(a6 >> 63, __CFADD__(a4, a6) + a5))
  {
    v8 = (a6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = (__PAIR128__(a5, a4) + a6) >> 64;
  }

  *a1 = v7;
  a1[1] = v8;
  return v6;
}

_DWORD *_sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs5Int32V_Tt2t4gq5(_DWORD *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 >= 0 != a5 < 0)
  {
    if (a5 > 0xFFFFFFFF7FFFFFFFLL && a5 < 0x80000000)
    {
      LODWORD(v5) = a4 + a5;
      v6 = __OFADD__(a4, a5);
      v7 = !v6;
      if (v6)
      {
        v8 = 0x8000000000000000;
      }

      else
      {
        v8 = 0;
      }

      if (!v7)
      {
        LODWORD(v5) = (a5 >> 63) ^ 0x7FFFFFFF;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = a5 + a4;
  if (!__OFADD__(a5, a4))
  {
    if (v5 > 0xFFFFFFFF7FFFFFFFLL && v5 < 0x80000000)
    {
      v8 = 0;
LABEL_17:
      *result = v5;
      return v8;
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
  return result;
}

_WORD *_sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs5Int16V_Tt2t4gq5(_WORD *result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if (a4 >= 0 != a5 < 0)
  {
    if (a5 > -32769 && a5 < 0x8000)
    {
      LODWORD(v5) = a4 + a5;
      v6 = 0x8000000000000000;
      if (v5 == (a4 + a5))
      {
        v6 = 0;
      }

      else
      {
        LOWORD(v5) = (a5 >> 63) ^ 0x7FFF;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = a5 + a4;
  if (!__OFADD__(a5, a4))
  {
    if (v5 > -32769 && v5 < 0x8000)
    {
      v6 = 0;
LABEL_11:
      *result = v5;
      return v6;
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
  return result;
}

_BYTE *_sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs4Int8V_Tt2t4gq5(_BYTE *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4 >= 0 != a5 < 0)
  {
    if (a5 > -129 && a5 < 128)
    {
      LODWORD(v5) = a4 + a5;
      v6 = 0x8000000000000000;
      if (v5 == (a4 + a5))
      {
        v6 = 0;
      }

      else
      {
        LOBYTE(v5) = (a5 >> 63) ^ 0x7F;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = a5 + a4;
  if (!__OFADD__(a5, a4))
  {
    if (v5 > -129 && v5 < 128)
    {
      v6 = 0;
LABEL_11:
      *result = v5;
      return v6;
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
  return result;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs8_UInt128V_Tt2t4g5(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    v9 = -a6;
    if (__OFSUB__(0, a6))
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      v6 = a4 + a6;
      v10 = a4 < v9;
      v7 = v10 << 63 >> 63;
      v8 = (a5 == 0) & v10;
      goto LABEL_9;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x83uLL);
  }

  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6);
  v8 = (a5 == -1) & v7;
LABEL_9:
  v11 = v7 + a5;
  v12 = 0x8000000000000000;
  if (v8)
  {
    v11 = ~a6 >> 63;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v6 = ~a6 >> 63;
  }

  *a1 = v6;
  a1[1] = v11;
  return v12;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs7UInt128V_Tt2t4gq5(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    v9 = -a6;
    if (__OFSUB__(0, a6))
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      v7 = (__PAIR128__(a5, a4) - v9) >> 64;
      v6 = a4 + a6;
      v8 = __PAIR128__(a5, a4) < v9;
      goto LABEL_8;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000052, 0x8000000180671820, "Swift/UInt128.swift", 0x13uLL, 2, 0x9FuLL);
  }

  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6) + a5;
  v8 = __CFADD__(__CFADD__(a4, a6), a5);
LABEL_8:
  v10 = 0x8000000000000000;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = a6 >> 63;
  if (v8)
  {
    v6 = ~v11;
    v7 = ~v11;
  }

  *a1 = v6;
  a1[1] = v7;
  return v10;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6UInt32V_Tt2t4gq5(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(a5))
    {
      v5 = a4 + a5;
      v6 = __CFADD__(a4, a5);
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 & 0x8000000000000000) != 0 || HIDWORD(v7))
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a4 + a5;
  v6 = a4 < v7;
LABEL_10:
  v8 = 0x8000000000000000;
  if (v6)
  {
    v5 = ~(a5 >> 63);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6UInt16V_Tt2t4gq5(_WORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (a5 < 0x10000)
    {
      v5 = a4 + a5;
      v6 = HIWORD(v5);
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0x8000000000000000) != 0 || v7 >= 0x10000)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a4 - v7;
  LOBYTE(v6) = (v5 & 0xFFFF0000) != 0;
LABEL_8:
  v8 = 0x8000000000000000;
  if (v6)
  {
    LOWORD(v5) = ~(a5 >> 63);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs5UInt8V_Tt2t4gq5(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (a5 < 0x100)
    {
      v5 = a4 + a5;
      v6 = v5 >> 8;
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0x8000000000000000) != 0 || v7 >= 0x100)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a4 - v7;
  LOBYTE(v6) = (v5 & 0xFFFFFF00) != 0;
LABEL_8:
  v8 = 0x8000000000000000;
  if (v6)
  {
    LOBYTE(v5) = ~(a5 >> 63);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

unint64_t _sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZs6UInt64V_Tt2t4gq5Tm(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    v5 = a4 + a5;
    v6 = __CFADD__(a4, a5);
    goto LABEL_8;
  }

  v7 = -a5;
  if (__OFSUB__(0, a5))
  {
    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v5 = a4 + a5;
  v6 = a4 < v7;
LABEL_8:
  v8 = 0x8000000000000000;
  if (v6)
  {
    v5 = ~a5 >> 63;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  return v8;
}

uint64_t static Strideable<>._step(after:from:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int **a8, uint64_t a9)
{
  v42 = a6;
  v43 = a1;
  v40 = a5;
  v44 = a8;
  swift_getAssociatedTypeWitness(0, a8, a7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v14 = v13;
  v39 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v37 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v37 - v17;
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, a7, "index value ", 0);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v37 - v25;
  *v26 = a2;
  v26[8] = a3 & 1;
  v27 = *(a7 - 1);
  (*(v27 + 16))(&v37 + *(v24 + 48) - v25, a4, a7);
  (*(v20 + 16))(v23, v26, v19);
  v28 = *v23;
  v29 = *(v19 + 48);
  v41 = v23[8];
  if (v41)
  {
    (*(v27 + 8))(&v23[v29], a7);
    (v44[6])(v42, a7);
    (*(v20 + 8))(v26, v19);
    return v28;
  }

  v30 = v44;
  (*(v20 + 8))(v26, v19);
  result = (*(v27 + 8))(&v23[v29], a7);
  if (!__OFADD__(v28++, 1))
  {
    v33 = v37;
    (*(a9 + 64))(v28, v14);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v30, a7, v14, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric);
    v35 = v38;
    (*(*(AssociatedConformanceWitness + 8) + 64))(v33, v42, v14);
    v36 = *(v39 + 8);
    v36(v33, v14);
    (*(v30 + 6))(v35, a7, v30);
    v36(v35, v14);
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t static Strideable<>._step(after:from:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v36 = a8;
  v33 = a5;
  v34 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v14, "index value ", 0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v31 - v22;
  *v23 = a2;
  v23[8] = a3 & 1;
  (*(v12 + 16))(&v31 + *(v21 + 48) - v22, a4, a7);
  (*(v17 + 16))(v20, v23, v16);
  v24 = *v20;
  v25 = *(v16 + 48);
  if (v20[8])
  {
    (*(v12 + 8))(&v20[v25], a7);
    (*(*(v36 + 24) + 48))(v35, a7);
    (*(v17 + 8))(v23, v16);
    return v24;
  }

  v26 = v36;
  (*(v17 + 8))(v23, v16);
  v27 = *(v12 + 8);
  result = v27(&v20[v25], a7);
  if (!__OFADD__(v24++, 1))
  {
    v30 = v32;
    (*(v26 + 64))(v24, a7, v26);
    (*(v26 + 256))(v30, v35, a7, v26);
    v27(v30, a7);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t StrideToIterator.init(_start:end:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  v21 = *(a4 - 8);
  (*(v21 + 16))(a6, a1, a4);
  v13 = type metadata accessor for StrideToIterator(0, a4, a5, v12);
  v20 = *(v21 + 32);
  v20(a6 + v13[9], a2, a4);
  v14 = v13[10];
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v15 - 8) + 32))(a6 + v14, a3, v15);
  v16 = a6 + v13[11];
  *v16 = 0;
  *(v16 + 8) = 0;
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, a4, "index value ", 0);
  v18 = v16 + *(v17 + 48);

  return (v20)(v18, a1, a4);
}

uint64_t StrideTo.underestimatedCount.getter(char *a1)
{
  v1 = *(a1 + 2);
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v1, "index value ", 0);
  v4 = v3;
  v84 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v66 - v5;
  v6 = *(a1 + 3);
  swift_getAssociatedTypeWitness(0, v6, v1, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v8 = v7;
  v103 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v66 - v9;
  v69 = v6;
  v101 = *(*(swift_getAssociatedConformanceWitness(v6, v1, v8, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v101, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v97 = &v66 - v12;
  v102 = *(v1 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - v15;
  v96 = type metadata accessor for Optional(0, v1, v17, v18);
  v81 = *(v96 - 8);
  v19 = MEMORY[0x1EEE9AC00](v96);
  v70 = &v66 - v20;
  v99 = a1;
  v21 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StrideToIterator(0, v1, v6, v24);
  v67 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  (*(v21 + 16))(v23, v104, a1);
  v80 = &v27[v25[11]];
  v79 = v4;
  v28 = *(v4 + 48);
  v30 = v102 + 32;
  v29 = *(v102 + 32);
  v29(&v80[v28], v23, v1);
  v31 = v99;
  v32 = *(v99 + 9);
  v95 = v25[9];
  v75 = v30;
  v74 = v29;
  v29(&v27[v95], &v23[v32], v1);
  v33 = *(v31 + 10);
  v68 = v25;
  v35 = v103 + 32;
  v34 = *(v103 + 32);
  v103 = v25[10];
  v34(&v27[v103], &v23[v33], v8);
  v37 = v102 + 16;
  v36 = *(v102 + 16);
  v104 = v28;
  v99 = v27;
  v38 = v27;
  v39 = v80;
  v94 = v36;
  v36(v38, &v80[v28], v1);
  *v39 = 0;
  v39[8] = 0;
  v40 = v101;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v101, v8, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v91 = *(AssociatedConformanceWitness + 8);
  v92 = AssociatedConformanceWitness + 8;
  v41 = v70;
  v89 = v40[3];
  v90 = v40 + 3;
  v42 = v69;
  v43 = 0;
  v88 = swift_getAssociatedConformanceWitness(v69, v1, v8, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  v86 = *(v88 + 40);
  v87 = v88 + 40;
  v85 = (v35 - 24);
  v73 = (v84 + 2);
  v72 = v42 + 56;
  v84 = (v37 - 8);
  v71 = (v37 + 24);
  v83 = (v37 + 40);
  v102 = v37;
  v82 = (v37 + 32);
  ++v81;
  v76 = v16;
  do
  {
    v94(v16, &v39[v104], v1);
    v44 = v97;
    v91(&qword_18071E0A8, 256);
    v45 = v98;
    (v89)(v44, v8, v101);
    v46 = v99;
    v47 = v86(&v99[v103], v45, v8, v88);
    (*v85)(v45, v8);
    v48 = *(v42 + 1);
    if (v47)
    {
      if (((*(v48 + 32))(v16, &v46[v95], v1) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (((*(v48 + 24))(v16, &v46[v95], v1) & 1) == 0)
    {
LABEL_4:
      v49 = v78;
      v50 = v79;
      (*v73)(v78, v39, v79);
      v51 = v8;
      v52 = v41;
      v53 = *(v50 + 48);
      v54 = v77;
      v55 = (*(v42 + 7))(v77, *v49, v49[8], &v49[v53], v46, &v46[v103], v1, v42);
      v56 = v42;
      v58 = v57;
      v59 = &v49[v53];
      v41 = v52;
      v8 = v51;
      v39 = v80;
      (*v84)(v59, v1);
      *v39 = v55;
      v60 = v58 & 1;
      v42 = v56;
      v39[8] = v60;
      v61 = v54;
      v16 = v76;
      (*v71)(&v39[v104], v61, v1);
      v74(v41, v16, v1);
      v62 = 0;
      goto LABEL_7;
    }

    (*v84)(v16, v1);
    v62 = 1;
LABEL_7:
    (*v83)(v41, v62, 1, v1);
    v63 = (*v82)(v41, 1, v1);
    (*v81)(v41, v96);
    if (v63 == 1)
    {
      goto LABEL_11;
    }
  }

  while (!__OFADD__(v43++, 1));
  __break(1u);
LABEL_11:
  (*(v67 + 8))(v99, v68);
  return v43;
}

uint64_t StrideTo._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v6 = v5;
  v7 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = *(*(swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v10, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v26 = *(a2 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v6, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
  v16 = v14;
  v17 = v27;
  (*(v10 + 24))(v16, v6, v10);
  v18 = swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v12) = (*(v18 + 16))(v17 + v26, v9, v6, v18);
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    v22 = *(v4 + 8);
    v23 = v28;
    if (((*(v22 + 16))(v28, v17, v3, v22) & 1) == 0 && ((*(v22 + 24))(v17 + *(a2 + 36), v23, v3, v22) & 1) == 0)
    {
      return 2;
    }

    return 0;
  }

  v19 = *(a2 + 36);
  v20 = *(v4 + 8);
  v21 = v28;
  if ((*(v20 + 24))(v28, v17 + v19, v3, v20) & 1) != 0 || ((*(v20 + 16))(v17, v21, v3, v20))
  {
    return 0;
  }

  return 2;
}

uint64_t StrideToIterator._current.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v5, "index value ", 0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, v2 + *(a2 + 44), v7);
  v11 = *v9;
  (*(*(v5 - 8) + 32))(a1, &v9[*(v7 + 48)], v5);
  return v11;
}

uint64_t StrideToIterator._current.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v9, "index value ", 0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v24 - v17;
  *v18 = a1;
  v18[8] = a2 & 1;
  v19 = *(v9 - 8);
  (*(v19 + 32))(&v24 + *(v16 + 48) - v17, a3, v9);
  (*(v12 + 32))(v15, v18, v11);
  v20 = v15[8];
  v21 = *(v11 + 48);
  v22 = v4 + *(a4 + 44);
  *v22 = *v15;
  *(v22 + 8) = v20;
  return (*(v19 + 40))(v22 + *(v11 + 48), &v15[v21], v9);
}

uint64_t StrideThroughIterator.init(_start:end:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for StrideThroughIterator(0, a4, a5, a4);
  *(a6 + v12[12]) = 0;
  v20 = *(a4 - 8);
  (*(v20 + 16))(a6, a1, a4);
  v19 = *(v20 + 32);
  v19(a6 + v12[9], a2, a4);
  v13 = v12[10];
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v14 - 8) + 32))(a6 + v13, a3, v14);
  v15 = a6 + v12[11];
  *v15 = 0;
  *(v15 + 8) = 0;
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, a4, "index value ", 0);
  v17 = v15 + *(v16 + 48);

  return (v19)(v17, a1, a4);
}

uint64_t specialized StrideThroughIterator.next()()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 40) = v5;
    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

uint64_t StrideThroughIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v5, "index value ", 0);
  v7 = v6;
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v52 - v8;
  v60 = *(a1 + 24);
  v9 = v60;
  swift_getAssociatedTypeWitness(0, v60, v5, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v61 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - v12;
  v14 = *(*(swift_getAssociatedConformanceWitness(v9, v5, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v14, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - v22;
  v24 = v3 + *(a1 + 44);
  v57 = v7;
  v25 = *(v7 + 48);
  v63 = v26;
  v27 = *(v26 + 16);
  v59 = v24;
  v54 = v25;
  v27(&v52 - v22, v24 + v25, v5);
  v28 = *(a1 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v11, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v16, AssociatedConformanceWitness);
  (*(v14 + 24))(v19, v11, v14);
  v30 = v60;
  v31 = swift_getAssociatedConformanceWitness(v60, v5, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  v32 = *(v31 + 40);
  v53 = v28;
  LOBYTE(v16) = v32(v3 + v28, v13, v11, v31);
  v33 = v13;
  v34 = v30;
  (*(v61 + 8))(v33, v11);
  v35 = *(a1 + 36);
  v36 = v30[1];
  if (v16)
  {
    v37 = v23;
    if (((*(v36 + 4))(v23, v3 + v35, v5, v36) & 1) == 0)
    {
LABEL_3:
      v38 = v57;
      v39 = v58;
      v40 = v59;
      (*(v56 + 16))(v58, v59, v57);
      v41 = *(v38 + 48);
      v42 = v55;
      v43 = (v34[7])(v55, *v39, v39[8], &v39[v41], v3, v3 + v53, v5, v34);
      v45 = v44;
      v46 = v63;
      (*(v63 + 8))(&v39[v41], v5);
      *v40 = v43;
      *(v40 + 8) = v45 & 1;
      (*(v46 + 40))(v40 + v54, v42, v5);
      v47 = v46;
      goto LABEL_4;
    }
  }

  else
  {
    v37 = v23;
    if (((*(v36 + 3))(v23, v3 + v35, v5, v36) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if ((*(*(v36 + 1) + 8))(v37, v3 + *(a1 + 36), v5) & 1) == 0 || (v50 = *(a1 + 48), (*(v3 + v50)) || (*(v59 + 8) & 1) == 0 && *v59 == 0x8000000000000000)
  {
    (*(v63 + 8))(v37, v5);
    v49 = 1;
    v48 = v62;
    return (*(v63 + 56))(v48, v49, 1, v5);
  }

  *(v3 + v50) = 1;
  v47 = v63;
LABEL_4:
  v48 = v62;
  (*(v47 + 32))(v62, v37, v5);
  v49 = 0;
  return (*(v63 + 56))(v48, v49, 1, v5);
}

uint64_t DefaultIndices._endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 40);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t StrideTo.init(_start:end:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, const char *, int **)@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v32 = a2;
  v29 = a6;
  v30 = a1;
  v33 = a8;
  v34 = a3;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v12 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = *(*(swift_getAssociatedConformanceWitness(a5, a4, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v15, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, v11, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v17, AssociatedConformanceWitness);
  v21 = *(v15 + 24);
  v22 = v15;
  v23 = v34;
  v21(v19, v11, v22);
  v24 = swift_getAssociatedConformanceWitness(a5, a4, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v19) = (*(*(v24 + 8) + 8))(v23, v14, v11);
  (*(v12 + 8))(v14, v11);
  if (v19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = *(*(a4 - 1) + 32);
  v26 = v33;
  v25(v33, v30, a4);
  v27 = v31(0, a4, a5);
  v25(v26 + *(v27 + 36), v32, a4);
  return (*(v12 + 32))(v26 + *(v27 + 40), v23, v11);
}

uint64_t StrideThrough.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for StrideThroughIterator(0, v7, v8, a2);
  v10 = a3 + v9[11];
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v7, "index value ", 0);
  v18 = *(v11 + 48);
  v12 = *(v7 - 8);
  v13 = *(v12 + 32);
  v13(v10 + v18, v4, v7);
  v13(a3 + v9[9], v4 + *(a1 + 36), v7);
  v14 = *(a1 + 40);
  v15 = v9[10];
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v16 - 8) + 32))(a3 + v15, v4 + v14, v16);
  *(a3 + v9[12]) = 0;
  result = (*(v12 + 16))(a3, v10 + v18, v7);
  *v10 = 0;
  *(v10 + 8) = 0;
  return result;
}

uint64_t StrideThrough.underestimatedCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Optional(0, v7, a3, a4);
  v40 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 + 24);
  v36 = a1;
  v16 = type metadata accessor for StrideThroughIterator(0, v7, v39, v15);
  v35 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  (*(v12 + 16))(v14, v5, a1);
  v37 = &v18[v16[11]];
  v19 = v37;
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v7, "index value ", 0);
  v21 = *(v20 + 48);
  v38 = v21;
  v22 = *(v7 - 8);
  v23 = *(v22 + 32);
  v24 = &v19[v21];
  v25 = v14;
  v23(v24, v14, v7);
  v26 = v36;
  v23(&v18[v16[9]], &v25[*(v36 + 36)], v7);
  v27 = *(v26 + 40);
  v28 = v16[10];
  swift_getAssociatedTypeWitness(0, v39, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v29 - 8) + 32))(&v18[v28], &v25[v27], v29);
  v18[v16[12]] = 0;
  v30 = v37;
  (*(v22 + 16))(v18, &v37[v38], v7);
  v31 = 0;
  *v30 = 0;
  v30[8] = 0;
  v32 = (v40 + 8);
  while (1)
  {
    StrideThroughIterator.next()(v16, v11);
    if ((*(v22 + 48))(v11, 1, v7) == 1)
    {
      break;
    }

    (*v32)(v11, v8);
    if (__OFADD__(v31++, 1))
    {
      __break(1u);
      break;
    }
  }

  (*(v35 + 8))(v18, v16);
  (*v32)(v11, v8);
  return v31;
}

uint64_t StrideThrough._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v6 = v5;
  v7 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = *(*(swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v10, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v30 = *(a2 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v6, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
  v16 = *(v10 + 24);
  v17 = v10;
  v18 = v31;
  v16(v14, v6, v17);
  v19 = swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v12) = (*(v19 + 16))(v18 + v30, v9, v6, v19);
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    v24 = a2;
    v25 = *(v4 + 8);
    v26 = *(v25 + 16);
    v27 = v32;
    if ((v26(v32, v18, v3, v25) & 1) == 0 && (v26(v18 + *(v24 + 36), v27, v3, v25) & 1) == 0)
    {
      return 2;
    }

    return 0;
  }

  v20 = *(a2 + 36);
  v21 = *(v4 + 8);
  v22 = *(v21 + 16);
  v23 = v32;
  if (v22(v32, v18 + v20, v3, v21) & 1) != 0 || (v22(v18, v23, v3, v21))
  {
    return 0;
  }

  return 2;
}

uint64_t StrideTo.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v6 = v4;
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v41 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  (*(v9 + 16))(&v39 - v12, v6, a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject(v14, 0xB0, 7uLL);
  *(v15 + 1) = xmmword_18071DD20;
  v15[4] = 1836020326;
  v15[5] = 0xE400000000000000;
  v16 = *(a1 + 16);
  v15[9] = v16;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v15 + 6);
  v18 = *(*(v16 - 8) + 16);
  v18(boxed_opaque_existential_0Tm, v6, v16);
  v19 = v40;
  v15[10] = a2;
  v15[11] = v19;
  v20 = *(a1 + 36);
  v15[15] = v16;
  v21 = __swift_allocate_boxed_opaque_existential_0Tm(v15 + 12);
  v18(v21, v6 + v20, v16);
  v15[16] = 31074;
  v15[17] = 0xE200000000000000;
  v22 = *(a1 + 40);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), v16, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v24 = v23;
  v15[21] = v23;
  v25 = __swift_allocate_boxed_opaque_existential_0Tm(v15 + 18);
  (*(*(v24 - 8) + 16))(v25, v6 + v22, v24);
  v42[0] = 0;
  v42[1] = 0;
  v26 = static Mirror._superclassIterator<A>(_:_:)(v13, v42, a1);
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v30 = swift_allocObject(v29, 0x48, 7uLL);
  v30[6] = v15;
  v30[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v30[8] = 0;
  v31 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v32 = swift_allocObject(v31, 0x18, 7uLL);
  v32[2] = 0;
  v33 = v15[2];
  v34 = swift_allocObject(v31, 0x18, 7uLL);
  v34[2] = v33;
  v30[2] = v32;
  v30[3] = &protocol witness table for _IndexBox<A>;
  v30[4] = v34;
  v30[5] = &protocol witness table for _IndexBox<A>;
  v35 = v41;
  (*(v9 + 32))(v41, v13, a1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v42, v35, a1, v36, 6uLL);
  v38 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  *a4 = a1;
  *(a4 + 8) = v30;
  *(a4 + 16) = 9;
  *(a4 + 24) = v26;
  *(a4 + 32) = v28;
  *(a4 + 40) = v38;
  return result;
}

uint64_t stride<A>(from:to:by:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, const char *, swift *)@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a8;
  v39 = a6;
  v45 = a5;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v44 = *(*(swift_getAssociatedConformanceWitness(a5, a4, v10, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v44, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v39 - v14;
  v15 = swift_checkMetadataState(0, v11);
  v16 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v39 - v21;
  v23 = *(a4 - 1);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v39 - v27;
  v40 = v23;
  v29 = *(v23 + 16);
  v29(&v39 - v27, v46, a4);
  v46 = v26;
  v29(v26, v47, a4);
  v30 = v45;
  (*(v16 + 16))(v22, v48, v15);
  v31 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v15, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v33 = v43;
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v13, AssociatedConformanceWitness);
  (v31[3])(v33, v15, v31);
  v34 = swift_getAssociatedConformanceWitness(v30, a4, v15, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v13) = (*(*(v34 + 8) + 8))(v22, v19, v15);
  (*(v16 + 8))(v19, v15);
  if (v13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35 = *(v40 + 32);
  v36 = v42;
  v35(v42, v28, a4);
  v37 = v41(0, a4, v30);
  v35(v36 + *(v37 + 36), v46, a4);
  return (*(v16 + 32))(v36 + *(v37 + 40), v22, v15);
}

uint64_t _StringGuts.withFastUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
    v8[0] = a3;
    v8[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v8;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter(a3, a4);
  }

  return a1(v5, v6);
}

void _StringGutsSlice._normalizedHash(into:)(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if ((a3 & 0x1000000000000000) == 0 && (v5 & 0x4000000000000000) != 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v16[0] = a2;
      v16[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      if ((a4 & 0x8000000000000000) == 0 && (HIBYTE(a3) & 0xF) >= a5 && a5 - a4 >= 0)
      {
        v10 = v16 + a4;
        v11 = v16 + a5;
        goto LABEL_16;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v7 = a2 & 0xFFFFFFFFFFFFLL;
        if (a4 < 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = a5;
        v15 = a4;
        v12 = _StringObject.sharedUTF8.getter(a2, a3);
        a5 = v14;
        a4 = v15;
        v6 = v12;
        v7 = v13;
        if (v15 < 0)
        {
          goto LABEL_20;
        }
      }

      if (v7 >= a5)
      {
        v8 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a4, a5, v6, v7);
        v10 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v8, v9);
LABEL_16:
        Hasher.combine(bytes:)(*&v10);
        goto LABEL_17;
      }
    }

LABEL_20:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized _StringGutsSlice._withNFCCodeUnits(_:)(a2, a3, a4, a5, a1);
LABEL_17:
  Hasher._combine(_:)(0xFFu);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Character(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Hasher.init(_seed:)(a1, v5);
  String.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

void StringProtocol.hash(into:)(uint64_t a1, Class *a2)
{
  v4 = *(a2 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v29 - v9);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v29 - v12);
  if (v14 == &type metadata for String)
  {
    v22 = *v2;
    v23 = v2[1];
    if ((v23 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v23) & 0xF;
    }

    else
    {
      v24 = *v2 & 0xFFFFFFFFFFFFLL;
    }

    v25 = 0;
  }

  else
  {
    if (a2 != &type metadata for Substring)
    {
      v15 = v11;
      v16 = *(v4 + 16);
      v16(&v29 - v12, v2, a2);
      if (swift_dynamicCast(&v29, v13, a2, &type metadata for String, 6uLL))
      {
        v17 = 0;
        v18 = v29;
        v19 = v30;
        v20 = HIBYTE(v30) & 0xF;
        v21 = v29 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v16(v10, v2, a2);
        if (swift_dynamicCast(&v29, v10, a2, &type metadata for Substring, 6uLL))
        {
          v18 = v31;
          v19 = v32;
          v17 = v29 >> 16;
          v26 = v30 >> 16;
LABEL_19:
          _StringGutsSlice._normalizedHash(into:)(v15, v18, v19, v17, v26);
          v19;
          return;
        }

        v16(v7, v2, a2);
        v27 = String.init<A>(_:)(v7, a2);
        v19 = v28;
        v18 = v27;
        v17 = 0;
        v20 = HIBYTE(v19) & 0xF;
        v21 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if ((v19 & 0x2000000000000000) != 0)
      {
        v26 = v20;
      }

      else
      {
        v26 = v21;
      }

      goto LABEL_19;
    }

    v22 = v2[2];
    v23 = v2[3];
    v25 = *v2 >> 16;
    v24 = v2[1] >> 16;
  }

  _StringGutsSlice._normalizedHash(into:)(v11, v22, v23, v25, v24);
}

unsigned __int8 *specialized _StringGutsSlice.withFastUTF8<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a3 & 0x8000000000000000) == 0 && (HIBYTE(a2) & 0xF) >= a4)
    {
      v9 = a4 - a3;
      if (a4 - a3 >= 0)
      {
        v8 = v15 + a3;
        return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
      }
    }

    goto LABEL_13;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = a4;
    v14 = a3;
    v11 = _StringObject.sharedUTF8.getter(a1, a2);
    a4 = v13;
    a3 = v14;
    v6 = v11;
    v7 = v12;
    if (v14 < 0)
    {
      goto LABEL_13;
    }
  }

  if (v7 < a4)
  {
LABEL_13:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v6, v7);
  return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
}

unint64_t specialized _StringGutsSlice.withFastUTF8<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a3 & 0x8000000000000000) == 0 && (HIBYTE(a2) & 0xF) >= a4)
    {
      v9 = a4 - a3;
      if (a4 - a3 >= 0)
      {
        v8 = v15 + a3;
        return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
      }
    }

    goto LABEL_13;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = a1 & 0xFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = a4;
    v14 = a3;
    v11 = _StringObject.sharedUTF8.getter(a1, a2);
    a4 = v13;
    a3 = v14;
    v6 = v11;
    v7 = v12;
    if (v14 < 0)
    {
      goto LABEL_13;
    }
  }

  if (v7 < a4)
  {
LABEL_13:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v6, v7);
  return specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(v8, v9, a5);
}

uint64_t specialized _StringGutsSlice.withFastUTF8<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a3;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = result & 0xFFFFFFFFFFFFLL;
      if (v8 < 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = _StringObject.sharedUTF8.getter(result, a2);
      v10 = v14;
      if (v8 < 0)
      {
        goto LABEL_21;
      }
    }

    if (v10 >= a4)
    {
      result = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, a4, v9, v10);
      if (result)
      {
        v12 = v11;
        if (v11)
        {
          v13 = result;
          do
          {
            result = a5(*v13);
            if (v5)
            {
              break;
            }

            ++v13;
            --v12;
          }

          while (v12);
        }
      }

      return result;
    }

LABEL_21:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v15[0] = result;
  v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a3 < 0 || (HIBYTE(a2) & 0xF) < a4 || a4 - a3 < 0)
  {
    goto LABEL_21;
  }

  if (a4 != a3)
  {
    do
    {
      result = a5(*(v15 + v8));
      if (v5)
      {
        break;
      }

      ++v8;
    }

    while (a4 != v8);
  }

  return result;
}

void specialized _StringGutsSlice._withNFCCodeUnits(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v11._rawBits = (a3 << 16) | 1;
  v12._rawBits = (a4 << 16) | 1;
  v13._rawBits = _StringGuts.validateScalarRange(_:)(v11, v12, a1, a2)._rawBits;
  if (v13._rawBits < 0x10000)
  {
    v13._rawBits |= 3;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a1;
  }

  if ((v15 & 0x4000000000000000) != 0)
  {
    specialized Sequence.forEach(_:)(v13, v14._rawBits, a1, a2);
    return;
  }

  rawBits = v14._rawBits;
  v17 = v13._rawBits;
  v41 = 1;
  v40 = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v18 = v13._rawBits >> 14;
    v42 = v14._rawBits >> 14;
    if (v13._rawBits >> 14 == v14._rawBits >> 14)
    {
      return;
    }

    v30 = 4 << ((a1 & 0x800000000000000) != 0);
    v19 = v13._rawBits;
    v20 = v13._rawBits >> 14;
    while (1)
    {
      v21 = v19;
      if ((v19 & 0xC) == v30)
      {
        v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v19)._rawBits;
      }

      else if (v19)
      {
        if (v20 < v18 || (v21 = v19, v20 >= v42))
        {
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_22;
      }

      if (v21 >> 14 < v18 || v21 >> 14 >= v42)
      {
        goto LABEL_42;
      }

      if ((v21 & 1) == 0)
      {
        v21 = _StringGuts.scalarAlignSlow(_:)(v21)._rawBits;
      }

LABEL_22:
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v21 & 0xFFFFFFFFFFFF0000))._0._value;
      v23._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      v19 = String.UnicodeScalarView._foreignIndex(after:)(v23)._rawBits;
      if (!_isScalarNFCQC(_:_:)(value, &v40))
      {
        goto LABEL_37;
      }

      v20 = v19 >> 14;
      if (v19 >> 14 == v42)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v24 = a1 & 0xFFFFFFFFFFFFLL;
        }

        do
        {
          v25 = v17;
          if ((v17 & 0xC) == v30)
          {
            v25 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v25 >> 14 < v18 || v25 >> 14 >= v42)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = String.UTF8View._foreignSubscript(position:)(v25);
          if ((v17 & 0xC) == v30)
          {
            v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v24 <= v17 >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v17 = String.UTF8View._foreignIndex(after:)(v17)._rawBits;
          Hasher._combine(_:)(v26);
        }

        while (!v5 && v42 != v17 >> 14);
        return;
      }
    }
  }

  _StringGutsSlice._fastNFCCheck(_:_:)(&v41, &v40);
  if (v41)
  {
    specialized _StringGutsSlice.withFastUTF8<A>(_:)(a1, a2, a3, a4, a5);
  }

  else
  {
LABEL_37:
    LOBYTE(v31[0]) = 1;
    *&v33 = v17;
    *(&v33 + 1) = rawBits;
    *&v34 = a1;
    *(&v34 + 1) = a2;
    *&v35 = v17;
    WORD4(v35) = 1;
    BYTE10(v35) = 0;
    LOBYTE(v36) = 1;
    *(&v36 + 1) = &_swiftEmptyArrayStorage;
    LOBYTE(v37) = 0;
    *(&v37 + 4) = 0x1000000000000;
    *&v38 = &_swiftEmptyArrayStorage;
    BYTE8(v38) = 0;
    HIDWORD(v38) = 0;
    v39 = 1;
    v27 = a2;
    do
    {
      v29 = specialized Unicode._InternalNFC.Iterator.next()(v27, v28);
      if ((v29 & 0x100000000) != 0)
      {
        break;
      }

      v27 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v29, a5);
    }

    while (!v5);
    v31[4] = v37;
    v31[5] = v38;
    v32 = v39;
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    outlined destroy of _HasContiguousBytes?(v31, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
  }
}

Swift::String::Index specialized _StringGutsSlice._withNFCCodeUnits(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11._rawBits = (a3 << 16) | 1;
  v12._rawBits = (a4 << 16) | 1;
  result._rawBits = _StringGuts.validateScalarRange(_:)(v11, v12, a1, a2)._rawBits;
  if (result._rawBits < 0x10000)
  {
    result._rawBits |= 3;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a1;
  }

  if ((v15 & 0x4000000000000000) != 0)
  {
    return specialized Sequence.forEach(_:)(result, v14._rawBits, a1, a2, a5);
  }

  rawBits = v14._rawBits;
  v17 = result._rawBits;
  v41 = 1;
  v40 = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v18 = result._rawBits >> 14;
    v42 = v14._rawBits >> 14;
    if (result._rawBits >> 14 == v14._rawBits >> 14)
    {
      return result;
    }

    v30 = 4 << ((a1 & 0x800000000000000) != 0);
    v19 = result._rawBits;
    v20 = result._rawBits >> 14;
    while (1)
    {
      v21 = v19;
      if ((v19 & 0xC) == v30)
      {
        v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v19)._rawBits;
      }

      else if (v19)
      {
        if (v20 < v18 || (v21 = v19, v20 >= v42))
        {
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_22;
      }

      if (v21 >> 14 < v18 || v21 >> 14 >= v42)
      {
        goto LABEL_42;
      }

      if ((v21 & 1) == 0)
      {
        v21 = _StringGuts.scalarAlignSlow(_:)(v21)._rawBits;
      }

LABEL_22:
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v21 & 0xFFFFFFFFFFFF0000))._0._value;
      v23._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      v19 = String.UnicodeScalarView._foreignIndex(after:)(v23)._rawBits;
      if (!_isScalarNFCQC(_:_:)(value, &v40))
      {
        goto LABEL_37;
      }

      v20 = v19 >> 14;
      if (v19 >> 14 == v42)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v24 = a1 & 0xFFFFFFFFFFFFLL;
        }

        do
        {
          v25 = v17;
          if ((v17 & 0xC) == v30)
          {
            v25 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v25 >> 14 < v18 || v25 >> 14 >= v42)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = String.UTF8View._foreignSubscript(position:)(v25);
          if ((v17 & 0xC) == v30)
          {
            v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
          }

          if (v24 <= v17 >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v17 = String.UTF8View._foreignIndex(after:)(v17)._rawBits;
          result._rawBits = closure #1 in String._nfcCodeUnits.getter(v26, a5);
        }

        while (!v5 && v42 != v17 >> 14);
        return result;
      }
    }
  }

  _StringGutsSlice._fastNFCCheck(_:_:)(&v41, &v40);
  if (v41)
  {
    return specialized _StringGutsSlice.withFastUTF8<A>(_:)(a1, a2, a3, a4, a5);
  }

LABEL_37:
  LOBYTE(v31[0]) = 1;
  *&v33 = v17;
  *(&v33 + 1) = rawBits;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  *&v35 = v17;
  WORD4(v35) = 1;
  BYTE10(v35) = 0;
  LOBYTE(v36) = 1;
  *(&v36 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v37) = 0;
  *(&v37 + 4) = 0x1000000000000;
  *&v38 = &_swiftEmptyArrayStorage;
  BYTE8(v38) = 0;
  HIDWORD(v38) = 0;
  v39 = 1;
  v27 = a2;
  do
  {
    v29 = specialized Unicode._InternalNFC.Iterator.next()(v27, v28);
    if ((v29 & 0x100000000) != 0)
    {
      break;
    }

    v27 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v29, a5);
  }

  while (!v5);
  v31[4] = v37;
  v31[5] = v38;
  v32 = v39;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  return outlined destroy of _HasContiguousBytes?(v31, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
}

Swift::String::Index _StringGutsSlice._withNFCCodeUnits(_:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v13._rawBits = (a5 << 16) | 1;
  v14._rawBits = (a6 << 16) | 1;
  result._rawBits = _StringGuts.validateScalarRange(_:)(v13, v14, a3, a4)._rawBits;
  if (result._rawBits < 0x10000)
  {
    result._rawBits |= 3;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = a3;
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    return specialized Sequence.forEach(_:)(result, v16._rawBits, a3, a4, a1, a2);
  }

  rawBits = v16._rawBits;
  v45._rawBits = result._rawBits;
  v44 = 1;
  v43 = 0;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v32 = v16._rawBits >> 14;
    v33 = v45._rawBits >> 14;
    if (v45._rawBits >> 14 == v16._rawBits >> 14)
    {
      return result;
    }

    v31 = 4 << ((a3 & 0x800000000000000) != 0);
    v19._rawBits = v45._rawBits;
    v20 = v45._rawBits >> 14;
    while (1)
    {
      if ((v19._rawBits & 0xC) == v31)
      {
        v21._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v19)._rawBits;
      }

      else
      {
        v21._rawBits = v19._rawBits;
        if (v19._rawBits)
        {
          if (v20 < v33 || (v21._rawBits = v19._rawBits, v20 >= v32))
          {
LABEL_42:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          goto LABEL_22;
        }
      }

      if (v21._rawBits >> 14 < v33 || v21._rawBits >> 14 >= v32)
      {
        goto LABEL_42;
      }

      if ((v21._rawBits & 1) == 0)
      {
        v21._rawBits = _StringGuts.scalarAlignSlow(_:)(v21)._rawBits;
      }

LABEL_22:
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v21._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
      v22._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      v19._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v22)._rawBits;
      if (!_isScalarNFCQC(_:_:)(value, &v43))
      {
        goto LABEL_37;
      }

      v20 = v19._rawBits >> 14;
      if (v19._rawBits >> 14 == v32)
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v23 = HIBYTE(a4) & 0xF;
        }

        else
        {
          v23 = a3 & 0xFFFFFFFFFFFFLL;
        }

        do
        {
          v24 = v45._rawBits;
          v25 = v45._rawBits & 0xC;
          if (v25 == v31)
          {
            v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(v45)._rawBits;
          }

          if (v24 >> 14 < v33 || v24 >> 14 >= v32)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = String.UTF8View._foreignSubscript(position:)(v24);
          if (v25 == v31)
          {
            v45._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v45)._rawBits;
          }

          if (v23 <= v45._rawBits >> 16)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v45._rawBits = String.UTF8View._foreignIndex(after:)(v45)._rawBits;
          result._rawBits = (a1)(v26);
        }

        while (!v6 && v32 != v45._rawBits >> 14);
        return result;
      }
    }
  }

  _StringGutsSlice._fastNFCCheck(_:_:)(&v44, &v43);
  if (v44)
  {
    return specialized _StringGutsSlice.withFastUTF8<A>(_:)(a3, a4, a5, a6, a1);
  }

LABEL_37:
  LOBYTE(v34[0]) = 1;
  *&v36 = v45;
  *(&v36 + 1) = rawBits;
  *&v37 = a3;
  *(&v37 + 1) = a4;
  *&v38 = v45;
  WORD4(v38) = 1;
  BYTE10(v38) = 0;
  LOBYTE(v39) = 1;
  *(&v39 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v40) = 0;
  *(&v40 + 4) = 0x1000000000000;
  *&v41 = &_swiftEmptyArrayStorage;
  BYTE8(v41) = 0;
  HIDWORD(v41) = 0;
  v42 = 1;
  v27 = a4;
  do
  {
    v29 = specialized Unicode._InternalNFC.Iterator.next()(v27, v28);
    if ((v29 & 0x100000000) != 0)
    {
      break;
    }

    v27 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v29, a1);
  }

  while (!v6);
  v34[4] = v40;
  v34[5] = v41;
  v35 = v42;
  v34[0] = v36;
  v34[1] = v37;
  v34[2] = v38;
  v34[3] = v39;
  return outlined destroy of _HasContiguousBytes?(v34, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
}

BOOL specialized == infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v24 = a4;
  swift_getTupleTypeMetadata2(0, a5, &type metadata for Int, 0, 0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *(*(a5 - 8) + 16);
  v18(&v23 - v16, a1, a5);
  *&v17[*(v11 + 48)] = a2;
  v18(v15, v23, a5);
  v19 = v24;
  *&v15[*(v11 + 48)] = v24;
  v20 = (*(a6 + 8))(v17, v15, a5, a6);
  v21 = *(v12 + 8);
  if (v20)
  {
    v21(v17, v11);
    v21(v15, v11);
    return a2 == v19;
  }

  else
  {
    v21(v15, v11);
    v21(v17, v11);
    return 0;
  }
}

uint64_t == infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v27 = a2;
  v29 = a4;
  v30 = a7;
  v28 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v19 = *(*(a5 - 8) + 16);
  v19(&v25 - v17, a1, a5);
  v20 = *(*(a6 - 8) + 16);
  v25 = *(v12 + 48);
  v20(&v18[v25], v27, a6);
  v19(v16, v28, a5);
  v21 = *(v12 + 48);
  v20(&v16[v21], v29, a6);
  if ((*(v30 + 8))(v18, v16, a5))
  {
    v22 = (*(v26 + 8))(&v18[v25], &v16[v21], a6);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v13 + 8);
  v23(v16, v12);
  v23(v18, v12);
  return v22 & 1;
}

void *static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = *(a3 + 8);
  v8 = (*(v7 + 56))(a2, v7);
  v26 = a2;
  v27 = a3;
  swift_getAssociatedTypeWitness(0, v7, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  if (_swift_isClassOrObjCExistentialType(v9, v9) && (v8 < 0 || (v8 & 0x4000000000000000) != 0))
  {
    v22 = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOSS6result_Sb11repairsMadetIsgyrzr_AByxGSSAH_SbAItAGSSAH_SbAItRsd__AGRsd_0_r_0_lIetMggozo_Tpq5(partial apply for closure #1 in static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:), v25, v8, v10);
    goto LABEL_14;
  }

  _swift_isClassOrObjCExistentialType(v10, v10);
  v11 = *(v10 - 1);
  v12 = *(v11 + 80);
  if (_swift_isClassOrObjCExistentialType(v10, v10) && (v8 < 0 || (v8 & 0x4000000000000000) != 0))
  {
    if (v8 < 0)
    {
      v24 = v8;
    }

    else
    {
      v24 = (v8 & 0xFFFFFFFFFFFFFF8);
    }

    v13 = [v24 count];
    if (v13 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    _swift_isClassOrObjCExistentialType(v10, v10);
    v13 = *(v8 + 16);
  }

  v14 = *(v11 + 72);
  v15 = v13 * v14;
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
    __break(1u);
LABEL_16:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 < 0)
  {
    goto LABEL_16;
  }

  v16 = (v12 + 32) & ~v12;
  v17 = validateUTF8(_:)((v8 + v16), v15);
  if (v17 < 0)
  {
    v21 = repairUTF8(_:firstKnownBrokenRange:)((v8 + v16), v15, v18, v19);
  }

  else
  {
    v21 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v8 + v16, v15, v17 & 1, v20);
  }

  v22 = v21;
LABEL_14:
  v8;
  return v22;
}

uint64_t closure #1 in static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = UnsafeRawBufferPointer.init<A>(_:)(a1, a2, v8);
  result = _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOSS6result_Sb11repairsMadetTt1gq50119_sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSSAB_SbACtSRy7ElementQzGXEfU_SSAB_z8ACtSRys5F7VGXEfU_Tf1cn_n(v9, v10);
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13 & 1;
  return result;
}

uint64_t _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOSS6result_Sb11repairsMadetTt1gq50119_sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSSAB_SbACtSRy7ElementQzGXEfU_SSAB_z8ACtSRys5F7VGXEfU_Tf1cn_n(unsigned __int8 *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
    if (a2 - a1 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = validateUTF8(_:)(a1, a2 - a1);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v3, v4 & 1, v7);
    }

    v11 = v5;
    v12 = v6;
    v13 = a1;
    v14 = v3;
  }

  else
  {
    if ((validateUTF8(_:)(0, 0) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v11 = v9;
    v12 = v10;
    v13 = 0;
    v14 = 0;
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v13, v14, v11, v12);
}

uint64_t String.init<A, B>(decoding:as:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v10 != &type metadata for Unicode.UTF8)
  {
    v19 = static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, v10, 1, a3);
    if (!v21)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v9);
  (*(*(a5 + 8) + 72))(v24, partial apply for closure #1 in String.init<A, B>(decoding:as:));
  if (v24[1])
  {
    v13 = v24[0];
LABEL_11:
    (*(v8 + 8))(a1, a3);
    return v13;
  }

  (*(v8 + 16))(v12, a1, a3);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v22, v12, a3, v14, 6uLL) & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    outlined destroy of _HasContiguousBytes?(v22, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
LABEL_9:
    v19 = static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(a1, a3, a5);
LABEL_10:
    v13 = v19;
    goto LABEL_11;
  }

  _ss9CodingKey_pWOb_0(v22, v24);
  v15 = v25;
  v16 = v26;
  __swift_project_boxed_opaque_existential_0Tm(v24, v25);
  if (((*(v16 + 16))(v15, v16) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    goto LABEL_9;
  }

  v17 = v25;
  v18 = v26;
  __swift_project_boxed_opaque_existential_0Tm(v24, v25);
  (*(v18 + 8))(v22, closure #2 in String.init<A, B>(decoding:as:), 0, &type metadata for String, v17, v18);
  (*(v8 + 8))(a1, a3);
  v13 = *&v22[0];
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v13;
}

uint64_t closure #1 in String.init<A, B>(decoding:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = UnsafeRawBufferPointer.init<A>(_:)(a1, a2, v8);
  v11 = v9;
  if (v9)
  {
    v12 = v10 - v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = validateUTF8(_:)(v9, v12);
  if (v13 < 0)
  {
    result = repairUTF8(_:firstKnownBrokenRange:)(v11, v12, v14, v15);
  }

  else
  {
    result = specialized static String._uncheckedFromUTF8(_:isASCII:)(v11, v12, v13 & 1, v16);
  }

  *a5 = result;
  a5[1] = v18;
  return result;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = validateUTF8(_:)(a1, v5);
  if (v6 < 0)
  {
    result = repairUTF8(_:firstKnownBrokenRange:)(a1, v5, v7, v8);
  }

  else
  {
    result = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v5, v6 & 1, v9);
  }

  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t String.init<A, B>(validating:as:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, int **a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v12 = v11;
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v99 = (v79 - v13);
  v101 = type metadata accessor for Unicode.ParseResult(0, v12, v14, v15);
  MEMORY[0x1EEE9AC00](v101);
  v100 = (v79 - v16);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v18 = v17;
  v85 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v88 = v79 - v20;
  v21 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v87 = v24;
  v91 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v86 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v79 - v27;
  v92 = a3;
  v103 = a3;
  v104 = a4;
  v90 = a5;
  v105 = a5;
  v106 = a6;
  (*(a6 + 72))(&v107, partial apply for closure #1 in String.init<A, B>(validating:as:), v102, &unk_1EEEBDDF0, a4, a6);
  v29 = v108;
  if (v108 == 1)
  {
    v84 = v12;
    v30 = (*(a6 + 40))(a4, a6);
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30 & ~(v30 >> 63), 0, &_swiftEmptyArrayStorage);
    v81 = v21;
    v32 = *(v21 + 16);
    v82 = a1;
    v32(v23, a1, a4);
    (*(a6 + 32))(a4, a6);
    v33 = *(v91 + 16);
    v34 = v86;
    v80 = v28;
    v35 = v87;
    v33(v86, v28, v87);
    v36 = v90;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v90, v92, v18, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
    v38 = *(AssociatedConformanceWitness + 24);
    v39 = v88;
    v98 = v18;
    v38(v18, AssociatedConformanceWitness);
    v97 = AssociatedConformanceWitness;
    v95 = *(AssociatedConformanceWitness + 32);
    v96 = AssociatedConformanceWitness + 32;
    v83 = a4;
    v40 = swift_getAssociatedConformanceWitness(a6, a4, v35, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v41 = v31;
    v94 = v40;
    v93 = (v89 + 32);
    v42 = (v89 + 8);
    v79[1] = v36 + 88;
    v43 = 1;
    v44 = v39;
    v45 = v35;
    v46 = v34;
LABEL_3:
    v89 = v41;
    v47 = v92;
    v48 = v84;
    while (1)
    {
      v49 = v100;
      v50 = v46;
      v51 = v45;
      v52 = v44;
      v53 = v98;
      v95();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v49, v101);
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v55 = v99;
      (*v93)(v99, v49, v48);
      if (v47 == &type metadata for Unicode.UTF16)
      {
        if (v48 != __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR))
        {
          goto LABEL_38;
        }

        v56 = *v55;
        v57 = *v55;
        if (v57 > 0x7F)
        {
          v60 = (*v55 & 0x3F) << 8;
          if (v57 < 0x800)
          {
            v61 = v57 >> 6;
            (*v42)(v55, v48);
            v62 = v60 + v61;
            goto LABEL_16;
          }

          if ((*v55 & 0xF800) == 0xD800)
          {
LABEL_25:
            v68 = (v90[11])(v55);
            (*v42)(v55, v48);
            if (v68 >= 0x80)
            {
              v69 = (v68 & 0x3F) << 8;
              if (v68 >= 0x800)
              {
                v70 = (v69 | (v68 >> 6) & 0x3F) << 8;
                v71 = (((v70 | (v68 >> 12) & 0x3F) << 8) | (v68 >> 18)) - 2122219023;
                v72 = (v68 >> 12) + v70 + 8487393;
                if (HIWORD(v68))
                {
                  v58 = v71;
                }

                else
                {
                  v58 = v72;
                }
              }

              else
              {
                v62 = (v68 >> 6) + v69;
LABEL_16:
                v58 = v62 + 33217;
              }
            }

            else
            {
              v58 = v68 + 1;
            }
          }

          else
          {
            v67 = (v60 | (v57 >> 6) & 0x3F) << 8;
            (*v42)(v55, v48);
            v58 = (v67 & 0xFFFFFFF0 | (v56 >> 12)) + 8487393;
          }

          v44 = v52;
          v45 = v51;
          v46 = v50;
LABEL_18:
          v41 = v89;
          v63 = *(v89 + 16);
          do
          {
            v64 = *(v41 + 24);
            if (v63 >= v64 >> 1)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v63 + 1, 1, v41);
              v45 = v51;
              v44 = v52;
              v41 = v66;
              v46 = v50;
            }

            *(v41 + 16) = v63 + 1;
            *(v41 + v63 + 32) = v58 - 1;
            v43 &= (v58 - 1) >= 0;
            ++v63;
            v65 = v58 >= 0x100;
            v58 >>= 8;
          }

          while (v65);
          goto LABEL_3;
        }

        (*v42)(v55, v48);
        v58 = (v56 + 1);
      }

      else
      {
        if (v47 != &type metadata for Unicode.UTF8)
        {
          goto LABEL_25;
        }

        if (v48 != &type metadata for _ValidUTF8Buffer)
        {
LABEL_38:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v59 = v55;
        v58 = *v55;
        (*v42)(v59);
        v47 = v92;
      }

      v44 = v52;
      v45 = v51;
      v46 = v50;
      if (v58)
      {
        goto LABEL_18;
      }
    }

    v74 = EnumCaseMultiPayload == 1;
    (*(v81 + 8))(v82, v83);
    (*(v85 + 8))(v44, v53);
    v75 = *(v91 + 8);
    v75(v50, v51);
    v75(v80, v51);
    if (v74)
    {
      v89;
      return 0;
    }

    else
    {
      v77 = v89;
      v73 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v77 + 32, *(v77 + 16), v43 & 1, v76);
      v77;
    }
  }

  else
  {
    v73 = v107;
    (*(v21 + 8))(a1, a4);
    if (!v29)
    {
      return 0;
    }
  }

  return v73;
}

uint64_t static String._validate<A>(_:as:)(unsigned __int8 *a1, uint64_t a2, ValueMetadata *a3, const char *a4, int **a5)
{
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v76 - v13;
  v90 = v12;
  v92 = type metadata accessor for Unicode.ParseResult(0, v12, v14, v15);
  MEMORY[0x1EEE9AC00](v92);
  v91 = (&v76 - v16);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v76 - v20;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v24 = v23;
  if (v23 == &type metadata for UInt8)
  {
    if (type metadata accessor for UnsafeBufferPointer(0, &type metadata for UInt8, v21, v22) != &unk_1EEEBDEB0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3 == &type metadata for Unicode.UTF8)
    {
      v66 = validateUTF8(_:)(a1, a2);
      if (v66 < 0)
      {
        return 0;
      }

      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v66 & 1, v67);
    }

    if (a3 == &type metadata for Unicode.ASCII)
    {
      if (!_allASCII(_:)(a1, a2))
      {
        return 0;
      }

      return specialized static String._uncheckedFromASCII(_:)(a1, a2, v31);
    }
  }

  v25 = 3 * a2;
  if ((a2 * 3) >> 64 != (3 * a2) >> 63)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_84:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = swift_slowAlloc((3 * a2), 0xFFFFFFFFFFFFFFFFLL);
  if (v25 < 0)
  {
    goto LABEL_84;
  }

  v93 = v26;
  v80 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v18, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  (*(AssociatedConformanceWitness + 24))(v18, AssociatedConformanceWitness);
  v84 = a4;
  v88 = v18;
  if (a1)
  {
    v30 = &a1[*(*(v24 - 8) + 72) * a2];
  }

  else
  {
    v30 = 0;
  }

  v95[0] = a1;
  v95[1] = v30;
  v33 = AssociatedConformanceWitness;
  v36 = *(AssociatedConformanceWitness + 32);
  v34 = AssociatedConformanceWitness + 32;
  v35 = v36;
  v38 = type metadata accessor for UnsafeBufferPointer.Iterator(0, v24, v28, v29);
  v39 = 0;
  v83 = a5;
  v86 = a5 + 11;
  v87 = (v11 + 32);
  v85 = (v11 + 8);
  v40 = 1;
  v41 = v25;
  v81 = 1;
  v79 = v33;
  while (1)
  {
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>.Iterator, v38, v37);
    v43 = v91;
    v35(v95, v38, WitnessTable, v88, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v43, v92);
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v82 = v38;
    v77 = v35;
    v78 = v34;
    v45 = v89;
    v46 = v43;
    v47 = v90;
    (*v87)(v89, v46, v90);
    v48 = (v83[11])(v45);
    (*v85)(v45, v47);
    if (v48 >= 0x80)
    {
      v62 = (v48 & 0x3F) << 8;
      v50 = v93;
      if (v48 >= 0x800)
      {
        v63 = (v62 | (v48 >> 6) & 0x3F) << 8;
        v64 = (((v63 | (v48 >> 12) & 0x3F) << 8) | (v48 >> 18)) - 2122219023;
        v65 = (v48 >> 12) + v63 + 8487393;
        if (HIWORD(v48))
        {
          v49 = v64;
        }

        else
        {
          v49 = v65;
        }
      }

      else
      {
        v49 = (v48 >> 6) + v62 + 33217;
      }
    }

    else
    {
      v49 = v48 + 1;
      v50 = v93;
    }

    v51 = __clz(v49) >> 3;
    v52 = 4 - v51;
    v53 = __OFADD__(v39, v52);
    v54 = v39 + v52;
    if (v53)
    {
      goto LABEL_81;
    }

    if (v41 >= v54)
    {
      v55 = v25;
      if ((v40 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v25 = v55;
      if (v51 != 3)
      {
        goto LABEL_41;
      }

LABEL_31:
      v38 = v82;
      if (v25 < v39)
      {
        goto LABEL_79;
      }

      if (v39 < 0)
      {
        goto LABEL_84;
      }

      v40 = 1;
      goto LABEL_44;
    }

    v55 = v41 + (v41 >> 1);
    if (__OFADD__(v41, v41 >> 1))
    {
      goto LABEL_83;
    }

    v56 = swift_slowAlloc((v41 + (v41 >> 1)), 0xFFFFFFFFFFFFFFFFLL);
    if (v55 < 0)
    {
      goto LABEL_84;
    }

    v50 = v56;
    v57 = v93;
    if (v39 < 0)
    {
      goto LABEL_79;
    }

    if (v25 < v39)
    {
      goto LABEL_84;
    }

    if (v39)
    {
      if (!v93)
      {
        goto LABEL_84;
      }

      if (v55 < v39)
      {
        goto LABEL_86;
      }

      if (v50 < v93 || v50 >= &v93[v39] || v50 != v93)
      {
        memmove(v50, v93, v39);
        v57 = v93;
      }

LABEL_35:
      v57;
      v41 += v41 >> 1;
      if ((v40 & 1) == 0)
      {
LABEL_36:
        v38 = v82;
        if (v55 < v39)
        {
          goto LABEL_79;
        }

        if (v39 < 0)
        {
          goto LABEL_84;
        }

        v40 = 0;
        v25 = v55;
        goto LABEL_44;
      }

      goto LABEL_30;
    }

    if (v93)
    {
      goto LABEL_35;
    }

    if (v40)
    {
      v25 = v41 + (v41 >> 1);
      v41 = v25;
      if (v51 != 3)
      {
LABEL_41:
        v38 = v82;
        if (v25 < v39)
        {
LABEL_79:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v39 < 0)
        {
          goto LABEL_84;
        }

        v40 = 0;
        v81 = 0;
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    v40 = 0;
    v25 = v41 + (v41 >> 1);
    v41 = v25;
    v38 = v82;
LABEL_44:
    if (v50)
    {
      v58 = &v50[v39];
    }

    else
    {
      v58 = 0;
    }

    v59 = v25 - v39;
    if (v25 - v39 < 0)
    {
      goto LABEL_84;
    }

    if (!v59)
    {
LABEL_86:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v58)
    {
      goto LABEL_84;
    }

    for (i = 0; i != v59; ++i)
    {
      if (v59 == i)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v61 = v49;
      if (!v49)
      {
        v59 = i;
        goto LABEL_58;
      }

      v58[i] = v49 - 1;
      v49 >>= 8;
    }

    if (v61 >= 0x100)
    {
      goto LABEL_86;
    }

LABEL_58:
    v93 = v50;
    v53 = __OFADD__(v39, v59);
    v39 += v59;
    v34 = v78;
    v33 = v79;
    v35 = v77;
    if (v53)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v80 + 8))(v94, v88);
    v68 = v93;
    v69 = specialized Collection.prefix(upTo:)(v39, v93, v25);
    specialized Slice.deinitialize<A>()(v69, v70, v71);
    if (v68)
    {
      v68;
    }

    return 0;
  }

  else
  {
    (*(v80 + 8))(v94, v88);
    if (!v93)
    {
      return 0;
    }

    if (v81)
    {
      v72 = v39 | 0xC000000000000000;
    }

    else
    {
      v72 = v39;
    }

    v73 = v93;
    v74 = type metadata accessor for __SharedStringStorage();
    v75 = swift_allocObject(v74, 0x31, 7uLL);
    result = v72;
    v75[2] = 0;
    v75[3] = v73;
    *(v75 + 48) = 0;
    v75[4] = v72;
    v75[5] = 0;
  }

  return result;
}

uint64_t _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys6UInt16V_G_s0J0O5UTF16OAR4UTF8OTt0t1g5033_sSS19_uncheckedFromUTF16ySSSRys6N18VGFZys5UInt8VXEfU_Says0X0VGTf1nnc_n(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = a3;
  v37 = 0;
  v6 = isUniquelyReferenced_nonNull_native;
  v7 = 0;
  v39 = 0;
  for (i = 0; ; v7 = i)
  {
    if (v7)
    {
      v8 = v39;
      if ((v39 & 0xF800) != 0xD800)
      {
        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(isUniquelyReferenced_nonNull_native, a2, a3);
        v17 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
        specialized RangeReplaceableCollection.remove(at:)(0);
        isUniquelyReferenced_nonNull_native = (v17)(v38, 0);
        v8 = v8;
        v14 = 1;
        goto LABEL_22;
      }

      if (v6)
      {
        v9 = v6;
        if (v6 != a2)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      if (!v6 || v6 == a2)
      {
        return v37 & 1;
      }

      v8 = *v6;
      v9 = v6 + 1;
      if ((v8 & 0xF800) != 0xD800)
      {
        v14 = 1;
        ++v6;
        goto LABEL_22;
      }

      v8 |= HIWORD(v39) << 16;
      v7 = 16;
      ++v6;
      if (v9 != a2)
      {
LABEL_9:
        v10 = v7;
        if (v7 > 0x1Fu)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = v9 + 1;
        v8 = (*v9 << v7) | ((-65535 << v7) - 1) & v8;
        v7 += 16;
        if (v10 <= 0xF && v6 != a2)
        {
          v6 = v9 + 2;
          v8 = (v9[1] << v7) | ((0x10000 << v10) - 1) & v8;
          v7 = v10 | 0x20;
        }
      }
    }

    v11 = v8 & 0xFC00FC00;
    v12 = (v8 & 0xFC00FC00) == 0xDC00D800 ? 32 : 16;
    i = v7 - v12;
    v13 = v11 == -603924480 ? 32 : 16;
    v39 = v8 >> v13;
    if (v11 != -603924480)
    {
      break;
    }

    v14 = 0;
LABEL_22:
    if (v8 >= 0x80u)
    {
      v16 = (v8 & 0x3F) << 8;
      if (v8 >= 0x800u)
      {
        if ((v8 & 0xF800) == 0xD800)
        {
          if (v14)
          {
            if (v8 >= 0x80u)
            {
              v30 = (v8 & 0x3F) << 8;
              if (v8 >= 0x800u)
              {
                v15 = ((v8 >> 12) | ((v30 | (v8 >> 6) & 0x3F) << 8)) + 8487393;
              }

              else
              {
                v15 = (v8 >> 6) + v30 + 33217;
              }
            }

            else
            {
              v15 = v8 + 1;
            }
          }

          else
          {
            v29 = ((v8 & 0x3FF) << 10) | HIWORD(v8) & 0x3FF;
            v15 = (((v29 + 0x10000) >> 4) & 0x3F00 | ((v29 + 0x10000) >> 18) | (((v29 >> 6) & 0x3F | (((v29 + 0x10000) & 0x3F) << 8)) << 16)) - 2122219023;
          }
        }

        else
        {
          v15 = (((v16 | (v8 >> 6) & 0x3F) << 8) | (v8 >> 12)) + 8487393;
        }
      }

      else
      {
        v15 = v16 + (v8 >> 6) + 33217;
      }
    }

    else
    {
      v15 = (v8 + 1);
      if (v8 == 0xFF)
      {
        continue;
      }
    }

    do
    {
      v31 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
      *a4 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
        *a4 = isUniquelyReferenced_nonNull_native;
      }

      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      if (v33 >= v32 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
        *a4 = isUniquelyReferenced_nonNull_native;
      }

      *(v31 + 16) = v33 + 1;
      *(v31 + v33 + 32) = v15 - 1;
      v34 = v15 >= 0x100;
      v15 >>= 8;
    }

    while (v34);
LABEL_3:
    ;
  }

  if ((v36 & 1) == 0)
  {
    v18 = *a4;
    v19 = swift_isUniquelyReferenced_nonNull_native(*a4);
    *a4 = v18;
    if (!v19)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      *a4 = v18;
    }

    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      *a4 = v18;
    }

    *(v18 + 16) = v21 + 1;
    *(v18 + v21 + 32) = -17;
    v22 = *a4;
    v23 = swift_isUniquelyReferenced_nonNull_native(*a4);
    *a4 = v22;
    if (!v23)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
      *a4 = v22;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
      *a4 = v22;
    }

    *(v22 + 16) = v25 + 1;
    *(v22 + v25 + 32) = -65;
    v26 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
    *a4 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1, v26);
      v26 = isUniquelyReferenced_nonNull_native;
      *a4 = isUniquelyReferenced_nonNull_native;
    }

    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    if (v28 >= v27 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
      v26 = isUniquelyReferenced_nonNull_native;
      *a4 = isUniquelyReferenced_nonNull_native;
    }

    *(v26 + 16) = v28 + 1;
    *(v26 + v28 + 32) = -67;
    v37 = 1;
    goto LABEL_3;
  }

  v37 = 1;
  return v37 & 1;
}

uint64_t _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys5UInt8V_GSbxRi_zRi0_zlyAGIsgn_SbAPRszs0J0O4UTF8ORs_sAHR0_r1_lIetyygd_Tp5(unsigned __int8 *a1, char *a2, int a3, void (*a4)(char *), uint64_t a5, const char *a6, uint64_t a7)
{
  v62 = a4;
  v63 = a5;
  v49 = a3;
  v64 = a2;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v11 = v10;
  v12 = *(v10 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v15;
  v60 = type metadata accessor for Optional(0, v11, v16, v17);
  v18 = MEMORY[0x1EEE9AC00](v60);
  v55 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v47 - v23;
  v25 = 0;
  v50 = 0;
  v66 = 0;
  v67 = 0;
  v26 = (v12 + 48);
  v53 = (v12 + 48);
  v54 = (v27 + 16);
  v51 = (v12 + 32);
  v61 = (v12 + 8);
  v58 = (v27 + 8);
  v59 = a7 + 104;
  v56 = a7 + 80;
  while (v25)
  {
    v34 = v66;
    if ((v66 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(v20, v21, v22);
      v48 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      v20 = (v48)(v65, 0);
      v33 = (v34 + 1);
      goto LABEL_35;
    }

    if (a1)
    {
      v31 = a1;
LABEL_11:
      if (v31 != v64)
      {
        if (v25 > 0x1Fu)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        a1 = v31 + 1;
        v34 = (*v31 << v25) | ((-255 << v25) - 1) & v34;
        v35 = v25 + 8;
        if (v25 <= 0x17u && a1 != v64)
        {
          a1 = v31 + 2;
          v34 = (v31[1] << v35) | ((-65280 << v25) - 1) & v34;
          v35 = v25 + 16;
          if (v25 <= 0xFu && a1 != v64)
          {
            a1 = v31 + 3;
            v34 = (v31[2] << v35) | ((-16711680 << v25) - 1) & v34;
            v35 = v25 + 24;
            if (v25 <= 7u && a1 != v64)
            {
              a1 = v31 + 4;
              v34 = (v31[3] << v35) | ((0x1000000 << v25) - 1) & v34;
              v35 = v25 | 0x20;
            }
          }
        }

        v25 = v35;
      }
    }

    if ((v34 & 0xC0E0) == 0x80C0)
    {
      if ((v34 & 0x1E) == 0)
      {
        goto LABEL_32;
      }

      v36 = 16;
      v37 = 1;
    }

    else if ((v34 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v34 & 0x200F) == 0 || (v34 & 0x200F) == 0x200D)
      {
        goto LABEL_32;
      }

      v36 = 24;
      v37 = 1;
    }

    else
    {
      if ((v34 & 0xC0C0C0F8) != 0x808080F0 || (v34 & 0x3007) == 0 || __rev16(v34 & 0x3007) > 0x400)
      {
LABEL_32:
        v20 = Unicode.UTF8.ForwardParser._invalidLength()();
        v37 = 0;
        v36 = 8 * v20;
        goto LABEL_33;
      }

      v36 = 32;
      v37 = 1;
    }

LABEL_33:
    v66 = v34 >> (v36 & 0x38);
    v67 = v25 - v36;
    if ((v37 & 1) == 0)
    {
      v50 = 1;
      if (v49)
      {
        return v50 & 1;
      }

      goto LABEL_3;
    }

    v33 = ((1 << ((v36 >> 1) & 0x1C) << ((v36 >> 1) & 0x1C)) - 1) & (v34 + 16843009);
LABEL_35:
    v65[0] = v33;
    v38 = *(a7 + 104);
    v39 = lazy protocol witness table accessor for type Unicode.UTF8 and conformance Unicode.UTF8(v20, v21, v22);
    v38(v65, &type metadata for Unicode.UTF8, &type metadata for Unicode.UTF8, v39, a6, a7);
    v40 = *v26;
    if ((*v26)(v24, 1, v11) == 1)
    {
      (*v58)(v24, v60);
LABEL_3:
      v28 = v57;
      (*(a7 + 80))(a6, a7);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v11, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
      Sequence.forEach(_:)(v62, v63, v11, *(*(AssociatedConformanceWitness + 8) + 8));
      v20 = (*v61)(v28, v11);
      goto LABEL_4;
    }

    v41 = v55;
    v42 = v60;
    (*v54)(v55, v24, v60);
    if (v40(v41, 1, v11) == 1)
    {
      v43 = *v58;
      (*v58)(v24, v42);
      v43(v41, v42);
      v26 = v53;
      goto LABEL_3;
    }

    v44 = v52;
    (*v51)(v52, v41, v11);
    v45 = swift_getAssociatedConformanceWitness(a7, a6, v11, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
    Sequence.forEach(_:)(v62, v63, v11, *(*(v45 + 8) + 8));
    (*v61)(v44, v11);
    v20 = (*v58)(v24, v42);
    v26 = v53;
LABEL_4:
    v25 = v67;
  }

  if (a1 && a1 != v64)
  {
    v30 = *a1++;
    v31 = a1;
    v32 = v30;
    if ((v30 & 0x80000000) == 0)
    {
      v33 = v32 + 1;
      goto LABEL_35;
    }

    v34 = v66 & 0xFFFFFF00 | v32;
    v25 = 8;
    goto LABEL_11;
  }

  return v50 & 1;
}

uint64_t transcode<A, B, C>(_:from:to:stoppingOnError:into:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t a7, const char *a8, const char *a9, uint64_t a10, int **a11, int **a12)
{
  v78 = a5;
  v79 = a6;
  v58 = a4;
  v76 = a2;
  v59 = a12;
  v84 = a10;
  v91 = a9;
  swift_getAssociatedTypeWitness(0, a12, a9, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v15 = v14;
  v70 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v57[-v18];
  v71 = type metadata accessor for Optional(0, v15, v19, v20);
  v69 = *(v71 - 8);
  v21 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v57[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57[-v23];
  swift_getAssociatedTypeWitness(0, a11, a8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v64 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v89 = &v57[-v27];
  v90 = v26;
  v83 = type metadata accessor for Unicode.ParseResult(0, v26, v28, v29);
  MEMORY[0x1EEE9AC00](v83);
  v31 = &v57[-v30];
  swift_getAssociatedTypeWitness(0, a11, a8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v33 = v32;
  v61 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v57[-v35];
  MEMORY[0x1EEE9AC00](v34);
  v60 = v38;
  v39 = *(v38 + 16);
  v85 = &v57[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = a7;
  v39();
  v75 = a11;
  v77 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a11, a8, v33, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  v41 = *(AssociatedConformanceWitness + 24);
  v86 = v36;
  v87 = v33;
  v41(v33, AssociatedConformanceWitness);
  v63 = 0;
  v82 = AssociatedConformanceWitness;
  v80 = *(AssociatedConformanceWitness + 32);
  v81 = AssociatedConformanceWitness + 32;
  v73 = (v64 + 4);
  v72 = v59 + 13;
  v42 = (v70 + 6);
  v68 = (v69 + 2);
  v66 = (v70 + 4);
  v43 = (v70 + 1);
  v70 = (v64 + 1);
  ++v69;
  v44 = v59;
  v64 = v59 + 10;
  v45 = v71;
  v80(v85, v88, v84, v87, v82);
  while (1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v83);
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v50 = v89;
    (*v73)(v89, v31, v90);
    (v44[13])(v50, v76, v77, v75);
    v51 = *v42;
    v52 = (*v42)(v24, 1, v15);
    v53 = v74;
    if (v52 == 1)
    {
      (*v70)(v89, v90);
      (*v69)(v24, v71);
LABEL_3:
      v46 = v65;
      v47 = v91;
      (v44[10])(v91, v44);
      v48 = swift_getAssociatedConformanceWitness(v44, v47, v15, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
      Sequence.forEach(_:)(v78, v79, v15, *(*(v48 + 8) + 8));
      (*v43)(v46, v15);
      goto LABEL_4;
    }

    (*v68)(v74, v24, v45);
    if (v51(v53, 1, v15) == 1)
    {
      (*v70)(v89, v90);
      v62 = *v69;
      v62(v24, v45);
      v62(v53, v45);
      goto LABEL_3;
    }

    v54 = v67;
    (*v66)(v67, v53, v15);
    v55 = swift_getAssociatedConformanceWitness(v44, v91, v15, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
    Sequence.forEach(_:)(v78, v79, v15, *(*(v55 + 8) + 8));
    (*v43)(v54, v15);
    (*v70)(v89, v90);
    (*v69)(v24, v45);
LABEL_4:
    v80(v85, v88, v84, v87, v82);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v63 = 1;
    if ((v58 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*(v61 + 8))(v86, v87);
  (*(v60 + 8))(v85, v88);
  return v63 & 1;
}

uint64_t String.init<A, B>(validating:as:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int **a5, uint64_t a6)
{
  v11 = type metadata accessor for LazySequence(0, a4, a6, a4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for LazyMapSequence(0, a4, &type metadata for UInt8, a6);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  v35 = a3;
  v36 = a4;
  v33 = a5;
  v37 = a5;
  v38 = a6;
  (*(a6 + 72))(&v39, partial apply for closure #1 in String.init<A, B>(validating:as:), v34, &unk_1EEEBDDF0, a4, a6);
  v21 = *(a4 - 8);
  if (v40 == 1)
  {
    v22 = *(v21 + 32);
    v22(v13, a1, a4);
    v22(v20, v13, a4);
    v23 = &v20[*(v14 + 44)];
    *v23 = protocol witness for ExpressibleByBooleanLiteral.init(BOOLeanLiteral:) in conformance Bool;
    *(v23 + 1) = 0;
    (*(v15 + 32))(v18, v20, v14);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v14, v24);
    result = String.init<A, B>(validating:as:)(v18, v26, a3, v14, v33, WitnessTable);
    if (v28)
    {
      return result;
    }
  }

  else
  {
    v29 = v39;
    v30 = a1;
    v31 = v40;
    (*(v21 + 8))(v30, a4);
    if (v31)
    {
      return v29;
    }
  }

  return 0;
}

uint64_t closure #1 in String.init<A, B>(validating:as:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, int **a4@<X4>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    if (a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    a2 = 0;
  }

  result = static String._validate<A>(_:as:)(a1, a2, a3, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

unint64_t String.init(unsafeUninitializedCapacity:initializingUTF8With:)(int64_t a1, uint64_t (*a2)(int64_t, int64_t))
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 > 15)
  {
    return specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(a1, a2);
  }

  v14 = xmmword_18071DD30;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = a2(&v14, a1);
  if (!v2)
  {
    if (result <= 0)
    {
      if (result)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v4 = 8;
      if (result <= 8)
      {
        v5 = 8;
      }

      else
      {
        v5 = result;
      }

      v6 = 56 * v5;
      if (result < 8)
      {
        v4 = result;
      }

      v7 = 0xFFFFFFFFFFFFFFFFLL >> (v6 & 0x38);
      if (result <= 8)
      {
        v7 = 0;
      }

      v8 = result;
      result = v14 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v4) & 0x38));
      v9 = *(&v14 + 1) & v7;
      v10 = ((*(&v14 + 1) & v7 | result) & 0x8080808080808080) == 0;
      v11 = 0xA000000000000000;
      if (v10)
      {
        v11 = 0xE000000000000000;
      }

      v12 = v11 | (v8 << 56);
      if (((v12 | v9) & 0x4000000000000000) == 0)
      {
        *&v14 = result;
        *(&v14 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
        closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v14, ((v12 | v9) >> 56) & 0xF, &v13);
        return v13;
      }
    }
  }

  return result;
}

uint64_t closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = validateUTF8(_:)(a1, a2);
  if (v6 < 0)
  {
    result = repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v7, v8);
  }

  else
  {
    result = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v6 & 1, v9);
  }

  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t _StringGuts.withCString<A>(_:)(void (*a1)(__objc2_class **), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    return _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4);
  }

  v4 = MEMORY[0x1EEE9AC00](a1);
  v16[2] = v7;
  v16[3] = v9;
  v16[4] = v10;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v17[0] = v5;
    v17[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    return v9(v17);
  }

  else
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      v16[8] = v7;
      v16[7] = v8;
      v4 = _StringObject.sharedUTF8.getter(v5, v6);
    }

    MEMORY[0x1EEE9AC00](v4);
    v15[2] = v11;
    v15[3] = closure #1 in _StringGuts.withCString<A>(_:)partial apply;
    v15[4] = v16;
    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error)partial apply, v15, v13, v12);
  }
}

void String._slowWithCString<A, B>(encodedAs:_:)(void (*a1)(unint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t (**a5)(char *, const char *)@<X5>, const char *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v132 = a5;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v122 = v15;
  v120 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v117 = v113 - v16;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v18 = v17;
  v130 = *(v17 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v129 = v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = v113 - v21;
  v134 = type metadata accessor for Optional(0, v18, v22, v23);
  v24 = *(v134 - 8);
  v25 = MEMORY[0x1EEE9AC00](v134);
  v127 = v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v113 - v27;
  a4;
  v31 = a3;
  v32 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v133 = a3;
    v128 = v24;
    a3 = specialized static String._copying(_:)(a3, a4);
    v119 = v94;
    a4;
    v24 = v128;
    v31 = v133;
    v32 = v119;
  }

  v118 = a8;
  v119 = v32;
  if ((v32 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v32) & 0xF;
    v136[0] = a3;
    v136[1] = v32 & 0xFFFFFFFFFFFFFFLL;
    v138 = &_swiftEmptyArrayStorage;
    v65 = HIBYTE(a4) & 0xC;
    v66 = v31 & 0xFFFFFFFFFFFCLL;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v65 = v66;
    }

    v67 = v65 >> 2;
    v68 = v122;
    v69 = type metadata accessor for Array(0, v122, v29, v30);
    Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v67 + 1, 0);
    MEMORY[0x1EEE9AC00](v70);
    v109 = v132;
    v110 = a6;
    v111 = a7;
    v112 = &v138;
    _ss9transcode_4from2to15stoppingOnError4intoSbx_q_mq0_mSby8CodeUnitQy0_XEtStRzs16_UnicodeEncodingR_sAHR0_AFQy_7ElementRtzr1_lFSR8IteratorVys5UInt8V_GSbxRi_zRi0_zlyAGIsgn_SbAPRszs0J0O4UTF8ORs_sAHR0_r1_lIetyygd_Tp5(v136, (v71 + v64), 0, partial apply for closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:), &v113[-6], a6, a7);
    v137 = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v68, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger);
    v73 = *(AssociatedConformanceWitness + 8);
    v74 = *(v73 + 88);
    v77 = lazy protocol witness table accessor for type Int and conformance Int(AssociatedConformanceWitness, v75, v76);
    v78 = v117;
    v74(&v137, &type metadata for Int, v77, v68, v73);
    Array.append(_:)(v78, v69);
    v79 = v138;
    v138;
    if (_swift_isClassOrObjCExistentialType(v68, v68) && (v79 < 0 || (v79 & 0x4000000000000000) != 0))
    {
      if (Array._getCount()())
      {
        v137 = v79;
        v103 = type metadata accessor for _ArrayBuffer(0, v68, v98, v99);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v103, v104);
        v93 = (*(WitnessTable + 56))(v103, WitnessTable);
        v80 = v93 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
        goto LABEL_74;
      }

      v79;
      v80 = 0;
    }

    else
    {
      v79;
      if (_swift_isClassOrObjCExistentialType(v68, v68))
      {
        v80 = ((*(v120 + 80) + 32) & ~*(v120 + 80)) + (v79 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v80 = v79 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      }
    }

    if (_swift_isClassOrObjCExistentialType(v68, v68) && (v79 < 0 || (v79 & 0x4000000000000000) != 0))
    {
      if (v79 < 0)
      {
        v93 = v79;
      }

      else
      {
        v93 = (v79 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v93);
      if (v80)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(v68, v68))
      {
        v93 = (v79 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v93 = v79;
      }

      v79;
      if (v80)
      {
        goto LABEL_74;
      }
    }

    v80 = (~*(v120 + 80) | 0xFFFFFF00);
LABEL_74:
    a1(v80);
    goto LABEL_85;
  }

  v128 = v24;
  v116 = a1;
  v115 = a2;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v33 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v34 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v95 = v31;
    v96 = _StringObject.sharedUTF8.getter(a3, v32);
    v31 = v95;
    v33 = v96;
    v34 = v97;
  }

  v138 = &_swiftEmptyArrayStorage;
  v35 = HIBYTE(a4) & 0xC;
  v36 = v31 & 0xFFFFFFFFFFFCLL;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v35 = v36;
  }

  v37 = v35 >> 2;
  v114 = type metadata accessor for Array(0, v122, v29, v30);
  Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v37 + 1, 0);
  v113[1] = v113;
  if (v33)
  {
    v39 = &v33[v34];
  }

  else
  {
    v39 = 0;
  }

  v40 = MEMORY[0x1EEE9AC00](v38);
  v133 = &v113[-6];
  v43 = 0;
  v131 = (v130 + 6);
  v124 = (v128 + 16);
  v125 = v39;
  v109 = v132;
  v110 = a6;
  v121 = (v130 + 4);
  v132 = (v130 + 1);
  v130 = (v128 + 8);
  v128 = a7 + 80;
  v111 = a7;
  v112 = &v138;
  LODWORD(v137) = 0;
  BYTE4(v137) = 0;
  v126 = a7 + 104;
  while (v43)
  {
    v51 = v137;
    if ((v137 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(v40, v41, v42);
      v113[0] = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      v40 = (v113[0])(v136, 0);
      v50 = (v51 + 1);
      goto LABEL_44;
    }

    if (v33)
    {
      v48 = v33;
      if (v33 != v39)
      {
LABEL_21:
        if (v43 > 0x1Fu)
        {
          LODWORD(v111) = 0;
          v110 = 190;
          LOBYTE(v109) = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v33 = v48 + 1;
        v51 = (*v48 << v43) | ((-255 << v43) - 1) & v51;
        v52 = v43 + 8;
        if (v43 <= 0x17u && v33 != v39)
        {
          v33 = v48 + 2;
          v51 = (v48[1] << v52) | ((-65280 << v43) - 1) & v51;
          v52 = v43 + 16;
          if (v43 <= 0xFu && v33 != v39)
          {
            v33 = v48 + 3;
            v51 = (v48[2] << v52) | ((-16711680 << v43) - 1) & v51;
            v52 = v43 + 24;
            if (v43 <= 7u && v33 != v39)
            {
              v33 = v48 + 4;
              v51 = (v48[3] << v52) | ((0x1000000 << v43) - 1) & v51;
              v52 = v43 | 0x20;
            }
          }
        }

        v43 = v52;
      }
    }

LABEL_30:
    if ((v51 & 0xC0E0) == 0x80C0)
    {
      if ((v51 & 0x1E) == 0)
      {
        goto LABEL_41;
      }

      v53 = 16;
      v54 = 1;
    }

    else if ((v51 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v51 & 0x200F) == 0 || (v51 & 0x200F) == 0x200D)
      {
        goto LABEL_41;
      }

      v53 = 24;
      v54 = 1;
    }

    else
    {
      if ((v51 & 0xC0C0C0F8) != 0x808080F0 || (v51 & 0x3007) == 0 || __rev16(v51 & 0x3007) > 0x400)
      {
LABEL_41:
        v40 = Unicode.UTF8.ForwardParser._invalidLength()();
        v54 = 0;
        v53 = 8 * v40;
        goto LABEL_42;
      }

      v53 = 32;
      v54 = 1;
    }

LABEL_42:
    LODWORD(v137) = v51 >> (v53 & 0x38);
    BYTE4(v137) = v43 - v53;
    if ((v54 & 1) == 0)
    {
      goto LABEL_13;
    }

    v50 = ((1 << ((v53 >> 1) & 0x1C) << ((v53 >> 1) & 0x1C)) - 1) & (v51 + 16843009);
LABEL_44:
    LODWORD(v136[0]) = v50;
    v55 = *(a7 + 104);
    v56 = lazy protocol witness table accessor for type Unicode.UTF8 and conformance Unicode.UTF8(v40, v41, v42);
    v55(v136, &type metadata for Unicode.UTF8, &type metadata for Unicode.UTF8, v56, a6, a7);
    v57 = *v131;
    if ((*v131)(v28, 1, v18) == 1)
    {
      (*v130)(v28, v134);
LABEL_13:
      v44 = v129;
      (*(a7 + 80))(a6, a7);
      v45 = swift_getAssociatedConformanceWitness(a7, a6, v18, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
      v46 = v135;
      Sequence.forEach(_:)(closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:)partial apply, v133, v18, *(*(v45 + 8) + 8));
      v135 = v46;
      v40 = (*v132)(v44, v18);
      goto LABEL_14;
    }

    v58 = v127;
    v59 = v134;
    (*v124)(v127, v28, v134);
    if (v57(v58, 1, v18) == 1)
    {
      v60 = *v130;
      (*v130)(v28, v59);
      v60(v58, v59);
      v39 = v125;
      goto LABEL_13;
    }

    v61 = v123;
    (*v121)(v123, v58, v18);
    v62 = swift_getAssociatedConformanceWitness(a7, a6, v18, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.EncodedScalar: BidirectionalCollection);
    v63 = v135;
    Sequence.forEach(_:)(closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:)partial apply, v133, v18, *(*(v62 + 8) + 8));
    v135 = v63;
    (*v132)(v61, v18);
    v40 = (*v130)(v28, v59);
    v39 = v125;
LABEL_14:
    v43 = BYTE4(v137);
  }

  if (v33 && v33 != v39)
  {
    v47 = *v33++;
    v48 = v33;
    v49 = v47;
    if ((v47 & 0x80000000) == 0)
    {
      v50 = v49 + 1;
      goto LABEL_44;
    }

    v51 = v137 & 0xFFFFFF00 | v49;
    v43 = 8;
    if (v33 != v39)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v136[0] = 0;
  v81 = v122;
  v82 = swift_getAssociatedConformanceWitness(a7, a6, v122, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger);
  v83 = *(v82 + 8);
  v84 = *(v83 + 88);
  v87 = lazy protocol witness table accessor for type Int and conformance Int(v82, v85, v86);
  v88 = v117;
  v84(v136, &type metadata for Int, v87, v81, v83);
  v89 = v81;
  Array.append(_:)(v88, v114);
  v79 = v138;
  v138;
  if (_swift_isClassOrObjCExistentialType(v89, v89) && (v79 < 0 || (v79 & 0x4000000000000000) != 0))
  {
    v100 = Array._getCount()();
    v91 = v116;
    if (!v100)
    {
      v79;
      v92 = 0;
      goto LABEL_76;
    }

    v136[0] = v79;
    v106 = type metadata accessor for _ArrayBuffer(0, v81, v101, v102);
    v108 = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v106, v107);
    v93 = (*(v108 + 56))(v106, v108);
    v92 = v93 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
  }

  else
  {
    v79;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v81, v81);
    v91 = v116;
    if (isClassOrObjCExistentialType)
    {
      v92 = ((*(v120 + 80) + 32) & ~*(v120 + 80)) + (v79 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v92 = v79 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    }

LABEL_76:
    if (_swift_isClassOrObjCExistentialType(v89, v89) && (v79 < 0 || (v79 & 0x4000000000000000) != 0))
    {
      if (v79 < 0)
      {
        v93 = v79;
      }

      else
      {
        v93 = (v79 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v93);
      if (!v92)
      {
LABEL_83:
        v92 = (~*(v120 + 80) | 0xFFFFFF00);
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(v89, v89))
      {
        v93 = (v79 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v93 = v79;
      }

      v79;
      if (!v92)
      {
        goto LABEL_83;
      }
    }
  }

  v91(v92);
LABEL_85:
  v79;
  swift_unknownObjectRelease(v93);
  v119;
}

uint64_t _StringGuts.count.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  else
  {
    return a1 & 0xFFFFFFFFFFFFLL;
  }
}

uint64_t closure #1 in closure #1 in String._slowWithCString<A, B>(encodedAs:_:)(uint64_t a1, uint64_t a2, unint64_t a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1, v6);
  v12 = type metadata accessor for Array(0, v6, v10, v11);
  return Array.append(_:)(v8, v12);
}

Swift::Bool __swiftcall _GraphemeBreakingState.shouldBreak(between:and:)(Swift::Unicode::Scalar between, Swift::Unicode::Scalar and)
{
  if (between._value != 13 || and._value != 10)
  {
    if (hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(between._value) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(and._value))
    {
      goto LABEL_81;
    }

    v6 = Unicode._GraphemeBreakProperty.init(from:)(between._value);
    v5 = v6;
    if (v6 == 1)
    {
      return v5 & 1;
    }

    v7 = v6;
    v8 = Unicode._GraphemeBreakProperty.init(from:)(and._value);
    v5 = v8;
    if (v8 <= 5u)
    {
      if (v8 <= 1u)
      {
        if (v8)
        {
          goto LABEL_71;
        }

        if (v7 == 7)
        {
          goto LABEL_70;
        }

        if (!v7)
        {
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      if (v8 != 2)
      {
        if (v8 == 4 || v8 == 5)
        {
          v9 = v7;
          if (v7 == 4)
          {
            goto LABEL_70;
          }

          goto LABEL_33;
        }

LABEL_31:
        v9 = v7;
        if (v7 == 12)
        {
          if (v8 == 3)
          {
            v5 = *(v2 + 1) ^ 1;
            goto LABEL_71;
          }

          goto LABEL_76;
        }

        if (v7 == 8)
        {
          if (v8 == 8)
          {
            v5 = *(v2 + 3);
            *(v2 + 3) = v5 ^ 1;
            goto LABEL_71;
          }

          goto LABEL_76;
        }

LABEL_33:
        if (v9 != 7)
        {
LABEL_76:
          if (*(v2 + 2) == 1 && *v2 == 1 && _swift_stdlib_isInCB_Consonant(and._value))
          {
            v5 = 0;
            *v2 = 0;
            *(v2 + 2) = 0;
            return v5 & 1;
          }

LABEL_80:
          *(v2 + 1) = 0;
LABEL_81:
          v5 = 1;
          return v5 & 1;
        }

LABEL_70:
        v5 = 0;
LABEL_71:
        *(v2 + 1) = 0;
        return v5 & 1;
      }

LABEL_18:
      v10 = v7;
      if (v7 == 3 || (v11 = 0, v10 == 2) && *(v2 + 1))
      {
        v11 = 1;
      }

      v12 = _swift_stdlib_isInCB_Consonant(between._value);
      v13 = _swift_stdlib_isInCB_Consonant(and._value);
      HIDWORD(v15) = and._value - 2381;
      LODWORD(v15) = and._value - 2381;
      v14 = v15 >> 7;
      if (v13)
      {
        v16 = 0;
        if (v14 > 3)
        {
          if (v14 != 4 && v14 != 6 && v14 != 8)
          {
            goto LABEL_67;
          }
        }

        else if (v14 >= 2 && v14 != 3)
        {
LABEL_67:
          v5 = 0;
          *(v2 + 1) = v11;
          *(v2 + 2) = v16;
          return v5 & 1;
        }

LABEL_60:
        if (v12 || *(v2 + 2) == 1)
        {
          v16 = 1;
          *v2 = 1;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_67;
      }

      if (v14 > 3)
      {
        if (v14 == 4 || v14 == 6 || v14 == 8)
        {
          goto LABEL_60;
        }
      }

      else if (v14 < 2 || v14 == 3)
      {
        goto LABEL_60;
      }

      v19 = and._value == 8204 || v12;
      v16 = and._value != 8204 && v12;
      if ((v19 & 1) == 0)
      {
        v16 = *(v2 + 2);
      }

      goto LABEL_67;
    }

    if (v8 <= 9u)
    {
      if (v8 == 6)
      {
        if (v7 == 7 || v7 == 4)
        {
          goto LABEL_70;
        }

        goto LABEL_76;
      }

      if (v8 == 9)
      {
        goto LABEL_70;
      }

      goto LABEL_31;
    }

    switch(v8)
    {
      case 0xAu:
        v17 = v7;
        if (v7 <= 6u)
        {
          if (v7 == 5 || v7 == 6)
          {
            goto LABEL_70;
          }

          goto LABEL_76;
        }

        if (v7 == 7 || v7 == 10)
        {
          goto LABEL_70;
        }

        break;
      case 0xBu:
        v17 = v7;
        if (v7 <= 6u)
        {
          if (v7 == 4 || v7 == 5)
          {
            goto LABEL_70;
          }

          goto LABEL_76;
        }

        if (v7 == 7)
        {
          goto LABEL_70;
        }

        break;
      case 0xCu:
        goto LABEL_18;
      default:
        goto LABEL_31;
    }

    if (v17 != 11)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

  v5 = 0;
  return v5 & 1;
}

Swift::Unicode::Scalar_optional __swiftcall String.UnicodeScalarView.Iterator.next()()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 >= v2)
  {
    v8 = 0;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    if ((v4 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v1 << 16));
      scalarLength = v10.scalarLength;
      value = v10._0._value;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v11[0] = *v0;
        v11[1] = v4 & 0xFFFFFFFFFFFFFFLL;
        v5 = v11;
      }

      else if ((v3 & 0x1000000000000000) != 0)
      {
        v5 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter(*v0, v0[1]);
      }

      value = _decodeScalar(_:startingAt:)(v5, v3, v1);
    }

    v0[2] = scalarLength + v1;
    v8 = value;
  }

  LOBYTE(v11[0]) = v1 >= v2;
  return (v8 | ((v1 >= v2) << 32));
}

void *(*String.unicodeScalars.modify(void *a1))(void *result)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v1;
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return String.unicodeScalars.modify;
}

void *String.unicodeScalars.modify(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

Swift::Void __swiftcall String.UnicodeScalarView.append(_:)(Swift::Unicode::Scalar a1)
{
  v1 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a1._value);
  v3 = v2;
  _StringGuts.append(_:)(v1, v2, v4, v5, v6, v7, v8, v9, v10, v11);

  v3;
}

Swift::String::Index __swiftcall String.index(before:)(Swift::String::Index before)
{
  v1._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(before)._rawBits;
  if (!(v1._rawBits >> 14))
  {
    rawBits = v1._rawBits;
    isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
    v1._rawBits = rawBits;
    if (isExecutableLinkedOnOrAfter)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return String._uncheckedIndex(before:)(v1);
}

Swift::String::Index __swiftcall String.UnicodeScalarView.index(before:)(Swift::String::Index before)
{
  v3 = v2;
  v4 = v1;
  v5._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(before)._rawBits;
  if (!(v5._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    return String.UnicodeScalarView._foreignIndex(before:)(v5);
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v15[0] = v4;
      v15[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v15 + (v5._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v11 = v15 + (v5._rawBits >> 16) - 2;
        v10 = 1;
        do
        {
          ++v10;
          v12 = *v11--;
        }

        while ((v12 & 0xC0) == 0x80);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        rawBits = v5._rawBits;
        v6 = _StringObject.sharedUTF8.getter(v4, v3);
        v5._rawBits = rawBits;
      }

      v7 = 0;
      v8 = v6 + (v5._rawBits >> 16) - 1;
      do
      {
        v9 = *(v8 + v7--) & 0xC0;
      }

      while (v9 == 128);
      v10 = -v7;
    }

    return ((v5._rawBits - (v10 << 16)) & 0xFFFFFFFFFFFF0000 | 5);
  }
}

void specialized String.UnicodeScalarView.append<A>(contentsOf:)(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v5 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(a1, a2, a3, a4);
  v6 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v5, 1);
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v6;
  v9 = v7;
  v5;
  v10 = v4[1];
  v11 = specialized static String.+ infix(_:_:)(*v4, v10, v8, v9);
  v13 = v12;
  v10;
  v9;
  *v4 = v11;
  v4[1] = v13;
}

void String.UnicodeScalarView.append<A>(contentsOf:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = v3;
  v5 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5(protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0, a2, a3);
  v6 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v5, 1);
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v6;
  v9 = v7;
  v5;
  v10 = v4[1];
  v11 = specialized static String.+ infix(_:_:)(*v4, v10, v8, v9);
  v13 = v12;
  v10;
  v9;
  *v4 = v11;
  v4[1] = v13;
}

unint64_t specialized Sequence<>.joined(separator:)(unint64_t a1, unint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  v235 = HIBYTE(a2) & 0xF;
  v239 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  v234 = v5;
  v6 = a3[2] + a3[2] * v5;
  v7 = 0xE000000000000000;
  v248 = 0;
  v249 = 0xE000000000000000;
  if (v6 < 16)
  {
    v10 = 0;
  }

  else
  {
    v8 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v9 & 1) != 0 || v8 < v6)
    {
      v12 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v12 <= v6)
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }

      v246 = 0;
      v247 = 0;
      v7 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v246, 0, v13, 1);
      v10 = *(v7 + 24);
      0xE000000000000000;
      v248 = v10;
      v249 = v7;
    }

    else
    {
      v10 = 0;
      v7 = 0xE000000000000000;
    }
  }

  v14 = a3[2];
  v242 = v14;
  if (!v234)
  {
    if (!v14)
    {
      return v248;
    }

    v22 = 0;
    while (1)
    {
      sub_1802E86D0(v22, 1, a3);
      v23 = &a3[2 * v22 + 4];
      v16 = *v23;
      v24 = v23[1];
      v15 = v248;
      v7 = v249;
      v25 = HIBYTE(v249) & 0xF;
      v18 = v248 & 0xFFFFFFFFFFFFLL;
      if ((v249 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v249) & 0xF;
      }

      else
      {
        v26 = v248 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26 && (v248 & ~v249 & 0x2000000000000000) == 0)
      {
        v24;
        v7;
        v248 = v16;
        v249 = v24;
        goto LABEL_27;
      }

      v27 = (v24 & 0x2000000000000000) == 0;
      v28 = HIBYTE(v24) & 0xF;
      if ((v249 & 0x2000000000000000) != 0)
      {
        if ((v24 & 0x2000000000000000) == 0)
        {
          v29 = v16 & 0xFFFFFFFFFFFFLL;
          v27 = 1;
LABEL_38:
          v4 = v29;
          goto LABEL_39;
        }

        v48 = v25 + v28;
        if (v25 + v28 < 0x10)
        {
          if (v28)
          {
            v55 = 0;
            v56 = 0;
            v57 = 8 * v25;
            v58 = 8 * v28;
            v59 = v249;
            v14 = v242;
            do
            {
              v60 = v24 >> (v55 & 0x38);
              if (v56 < 8)
              {
                v60 = v16 >> v55;
              }

              v61 = (v60 << (v57 & 0x38)) | ((-255 << (v57 & 0x38)) - 1) & v59;
              v62 = (v60 << v57) | ((-255 << v57) - 1) & v15;
              if (v25 <= 7)
              {
                v15 = v62;
              }

              else
              {
                v59 = v61;
              }

              ++v25;
              v57 += 8;
              v55 += 8;
              ++v56;
            }

            while (v58 != v55);
          }

          else
          {
            v59 = v249;
            v14 = v242;
          }

          v249;
          v63 = 0xA000000000000000;
          if (!(v15 & 0x8080808080808080 | v59 & 0x80808080808080))
          {
            v63 = 0xE000000000000000;
          }

          v248 = v15;
          v249 = v63 & 0xFF00000000000000 | (v48 << 56) | v59 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_27;
        }

        v27 = 0;
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
      }

      else
      {
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v240 = v27;
      v239 = v29;
      if ((v24 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v24, 3);
        v65._rawBits = 1;
        v66._rawBits = (v4 << 16) | 1;
        v67._rawBits = _StringGuts.validateScalarRange(_:)(v65, v66, v16, v24)._rawBits;
        if (v67._rawBits < 0x10000)
        {
          v67._rawBits |= 3;
        }

        v10 = String.UTF8View.distance(from:to:)(v67, v68);
        v24;
        if ((v7 & 0x1000000000000000) != 0)
        {
LABEL_93:
          v69 = String.UTF8View._foreignCount()();
          v32 = v69 + *&v10;
          if (__OFADD__(v69, *&v10))
          {
            goto LABEL_328;
          }

          goto LABEL_42;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n(v24, 2);
        v10 = v4;
        if ((v7 & 0x1000000000000000) != 0)
        {
          goto LABEL_93;
        }
      }

      v31 = __OFADD__(v26, *&v10);
      v32 = v26 + *&v10;
      if (v31)
      {
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
          v18 = v230;
        }

        else
        {
          if ((*&v10 & 0x1000000000000000) != 0)
          {
            v224 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v224 = _StringObject.sharedUTF8.getter(*&v10, v7);
            v18 = v233;
          }

          closure #1 in _StringGuts._convertedToSmall()(v224, v18, &v246, v30);
          v10 = v246;
          v18 = v247;
        }

LABEL_119:
        v14 = v242;
        v16;
        v84._rawBits = 1;
        v85._rawBits = (v4 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v84, v85, v15, v16)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (!(rawBits >> 16) && v78 >> 16 == v4)
        {
          v87 = v16;
          goto LABEL_139;
        }

LABEL_138:
        v15 = specialized static String._copying(_:)(rawBits, v78, v15, v16);
        v87 = v98;
        v16;
LABEL_139:
        if ((v87 & 0x2000000000000000) != 0)
        {
          v87;
        }

        else
        {
          v225 = v7;
          if ((v87 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v87);
            v232 = v231;
            v87;
            v87 = v232;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v226 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v227 = v15 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v226 = _StringObject.sharedUTF8.getter(v15, v87);
            }

            closure #1 in _StringGuts._convertedToSmall()(v226, v227, &v246, v86);
            v87;
            v15 = v246;
            v87 = v247;
          }

          v7 = v225;
          v14 = v242;
        }

        v99 = HIBYTE(v18) & 0xF;
        v100 = HIBYTE(v87) & 0xF;
        v101 = v100 + v99;
        if (v100 + v99 < 0x10)
        {
          v16;
          if (v100)
          {
            v102 = 0;
            v103 = 0;
            v104 = 8 * v99;
            v105 = 8 * v100;
            v4 = v238;
            do
            {
              v106 = v87 >> (v102 & 0x38);
              if (v103 < 8)
              {
                v106 = v15 >> v102;
              }

              v107 = (v106 << (v104 & 0x38)) | ((-255 << (v104 & 0x38)) - 1) & v18;
              v108 = (v106 << v104) | ((-255 << v104) - 1) & *&v10;
              if (v99 <= 7)
              {
                v10 = v108;
              }

              else
              {
                v18 = v107;
              }

              ++v99;
              v104 += 8;
              v102 += 8;
              ++v103;
            }

            while (v105 != v102);
          }

          else
          {
            v4 = v238;
          }

          v7;
          v16;
          v109 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v18 & 0x80808080808080))
          {
            v109 = 0xE000000000000000;
          }

          v110 = v109 & 0xFF00000000000000 | (v101 << 56) | v18 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_172;
        }

LABEL_342:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_42:
      if ((v15 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v33 = _StringGuts.nativeUnusedCapacity.getter(v15, v7);
        if (v34)
        {
          goto LABEL_342;
        }

        if (v32 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (v33 < *&v10)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v32 < 16)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_59:
          v36 = v7;
          goto LABEL_60;
        }

LABEL_48:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v15 = _StringGuts._foreignConvertedToSmall()(v15, v7);
          v36 = v64;
LABEL_60:
          v14 = v242;
        }

        else
        {
          if ((v15 & 0x1000000000000000) != 0)
          {
            v35 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(v15, v7);
            v18 = v74;
          }

          v14 = v242;
          closure #1 in _StringGuts._convertedToSmall()(v35, v18, &v246, v30);
          v15 = v246;
          v36 = v247;
        }

        v24;
        v42._rawBits = 1;
        v43._rawBits = (v4 << 16) | 1;
        v44._rawBits = _StringGuts.validateScalarRange(_:)(v42, v43, v16, v24)._rawBits;
        if (v44._rawBits < 0x10000)
        {
          v44._rawBits |= 3;
        }

        if (v44._rawBits >> 16 || v45._rawBits >> 16 != v4)
        {
          v16 = specialized static String._copying(_:)(v44._rawBits, v45._rawBits, v16, v24);
          v47 = v49;
          v24;
        }

        else
        {
          v47 = v24;
        }

        if ((v47 & 0x2000000000000000) != 0)
        {
          v47;
        }

        else if ((v47 & 0x1000000000000000) != 0)
        {
          v16 = _StringGuts._foreignConvertedToSmall()(v16, v47);
          v76 = v75;
          v47;
          v47 = v76;
        }

        else
        {
          if ((v16 & 0x1000000000000000) != 0)
          {
            v70 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v71 = v16 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = _StringObject.sharedUTF8.getter(v16, v47);
          }

          closure #1 in _StringGuts._convertedToSmall()(v70, v71, &v246, v46);
          v47;
          v16 = v246;
          v47 = v247;
        }

        v50 = specialized _SmallString.init(_:appending:)(v15, v36, v16, v47);
        if (v52)
        {
          goto LABEL_342;
        }

        v53 = v50;
        v54 = v51;
        v7;
        swift_bridgeObjectRelease_n(v24, 2);
        v248 = v53;
        v249 = v54;
        goto LABEL_27;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, *&v10);
      if ((v24 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v16, v24, 0, v4);
        swift_bridgeObjectRelease_n(v24, 2);
LABEL_84:
        v14 = v242;
        goto LABEL_27;
      }

      if (!v240)
      {
        v246 = v16;
        v247 = v24 & 0xFFFFFFFFFFFFFFLL;
        v24;
        _StringGuts.appendInPlace(_:isASCII:)(&v246, HIBYTE(v24) & 0xF, (v24 & 0x4000000000000000) != 0);
        v24;
        goto LABEL_84;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v37 = (v24 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v38 = v239;
        v39 = v239;
      }

      else
      {
        v72 = _StringObject.sharedUTF8.getter(v16, v24);
        v38 = v239;
        if (v73 < v239)
        {
          goto LABEL_341;
        }

        v37 = v72;
        v39 = v73;
      }

      v14 = v242;
      v24;
      v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v38, v37, v39);
      _StringGuts.appendInPlace(_:isASCII:)(v40, v41, (v16 & 0x8000000000000000) != 0);
      v24;
LABEL_27:
      if (++v22 == v14)
      {
        return v248;
      }
    }
  }

  if (v14)
  {
    v236 = a2;
    sub_1802E86D0(0, 1, a3);
    v15 = a3[4];
    v237 = a3 + 4;
    v238 = v4;
    v16 = a3[5];
    v17 = HIBYTE(v7) & 0xF;
    v18 = *&v10 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v19 = *&v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 && (*&v10 & ~v7 & 0x2000000000000000) == 0)
    {
      v16;
      v7;
      v248 = v15;
      v249 = v16;
      goto LABEL_173;
    }

    v20 = (v16 & 0x2000000000000000) == 0;
    v14 = HIBYTE(v16) & 0xF;
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v93 = v17 + v14;
        if (v17 + v14 < 0x10)
        {
          if (v14)
          {
            v111 = 0;
            v112 = 0;
            v113 = 8 * v17;
            v114 = 8 * v14;
            v115 = v7;
            v14 = v242;
            do
            {
              v116 = v16 >> (v111 & 0x38);
              if (v112 < 8)
              {
                v116 = v15 >> v111;
              }

              v117 = (v116 << (v113 & 0x38)) | ((-255 << (v113 & 0x38)) - 1) & v115;
              v118 = (v116 << v113) | ((-255 << v113) - 1) & *&v10;
              if (v17 <= 7)
              {
                v10 = v118;
              }

              else
              {
                v115 = v117;
              }

              ++v17;
              v113 += 8;
              v111 += 8;
              ++v112;
            }

            while (v114 != v111);
          }

          else
          {
            v115 = v7;
            v14 = v242;
          }

          v7;
          v119 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v115 & 0x80808080808080))
          {
            v119 = 0xE000000000000000;
          }

          v110 = v119 & 0xFF00000000000000 | (v93 << 56) | v115 & 0xFFFFFFFFFFFFFFLL;
LABEL_172:
          v248 = v10;
          v249 = v110;
          goto LABEL_173;
        }

        v20 = 0;
        v4 = HIBYTE(v16) & 0xF;
        v243 = v15 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x1000000000000000) == 0)
        {
LABEL_108:
          rawBits = swift_bridgeObjectRetain_n(v16, 2);
          v79 = v4;
          if ((v7 & 0x1000000000000000) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_135;
        }

LABEL_132:
        swift_bridgeObjectRetain_n(v16, 3);
        v94._rawBits = 1;
        v95._rawBits = (v4 << 16) | 1;
        v96._rawBits = _StringGuts.validateScalarRange(_:)(v94, v95, v15, v16)._rawBits;
        if (v96._rawBits < 0x10000)
        {
          v96._rawBits |= 3;
        }

        v79 = String.UTF8View.distance(from:to:)(v96, v97);
        v16;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_109:
          v31 = __OFADD__(v19, v79);
          v80 = v19 + v79;
          if (!v31)
          {
            goto LABEL_110;
          }

          goto LABEL_137;
        }

LABEL_135:
        rawBits = String.UTF8View._foreignCount()();
        v80 = rawBits + v79;
        if (!__OFADD__(rawBits, v79))
        {
LABEL_110:
          if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
          {
            v81 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
            if (v82)
            {
              goto LABEL_342;
            }

            v83 = (v7 >> 61) & 1;
            if (v81 < v79)
            {
              LOBYTE(v83) = 1;
            }

            if (v80 <= 15 && (v83 & 1) != 0)
            {
LABEL_117:
              if ((v7 & 0x2000000000000000) == 0)
              {
                goto LABEL_331;
              }

              v18 = v7;
              goto LABEL_119;
            }
          }

          else if (v80 < 16)
          {
            goto LABEL_117;
          }

          v7 = &v248;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v80, v79);
          if ((v16 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v15, v16, 0, v4);
          }

          else
          {
            if (v20)
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v88 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v14 = v242;
                v89 = v243;
                v90 = v243;
              }

              else
              {
                v228 = _StringObject.sharedUTF8.getter(v15, v16);
                if (v229 < v243)
                {
LABEL_341:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v88 = v228;
                v90 = v229;
                v14 = v242;
                v89 = v243;
              }

              v4 = v238;
              v91 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v89, v88, v90);
              closure #1 in _StringGuts.append(_:)(v91, v92, &v248, (v15 & 0x8000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              goto LABEL_173;
            }

            v246 = v15;
            v247 = v16 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v246, HIBYTE(v16) & 0xF, &v248, (v16 & 0x4000000000000000) != 0);
          }

          swift_bridgeObjectRelease_n(v16, 2);
          v14 = v242;
          v4 = v238;
LABEL_173:
          v15 = v236;
          if (v14 == 1)
          {
            return v248;
          }

          v121 = 1;
          while (1)
          {
            sub_1802E86D0(v121, 1, a3);
            v122 = v121 + 1;
            if (__OFADD__(v121, 1))
            {
              __break(1u);
              goto LABEL_328;
            }

            v123 = &v237[2 * v121];
            v18 = *v123;
            v16 = v123[1];
            v10 = v248;
            v7 = v249;
            v124 = HIBYTE(v249) & 0xF;
            v125 = v248 & 0xFFFFFFFFFFFFLL;
            if ((v249 & 0x2000000000000000) != 0)
            {
              v126 = HIBYTE(v249) & 0xF;
            }

            else
            {
              v126 = v248 & 0xFFFFFFFFFFFFLL;
            }

            v244 = v18;
            v241 = v122;
            if (!v126 && (v248 & ~v249 & 0x2000000000000000) == 0)
            {
              v16;
              v15;
              v7;
              v248 = v4;
              v249 = v15;
              goto LABEL_235;
            }

            if ((v249 & 0x2000000000000000) != 0)
            {
              v18 = v239;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v235;
                v127 = v124 + v235;
                if (v124 + v235 <= 0xF)
                {
                  if (v235)
                  {
                    v128 = 0;
                    v129 = 0;
                    v130 = 8 * v124;
                    v131 = v249;
                    v18 = v244;
                    do
                    {
                      v132 = v15 >> (v128 & 0x38);
                      if (v129 < 8)
                      {
                        v132 = v4 >> v128;
                      }

                      v133 = (v132 << (v130 & 0x38)) | ((-255 << (v130 & 0x38)) - 1) & v131;
                      v134 = (v132 << v130) | ((-255 << v130) - 1) & *&v10;
                      if (v124 <= 7)
                      {
                        v10 = v134;
                      }

                      else
                      {
                        v131 = v133;
                      }

                      ++v124;
                      v130 += 8;
                      v128 += 8;
                      ++v129;
                    }

                    while (8 * v235 != v128);
                  }

                  else
                  {
                    v131 = v249;
                    v18 = v244;
                  }

                  v16;
                  v7;
                  v159 = 0xA000000000000000;
                  if (!(*&v10 & 0x8080808080808080 | v131 & 0x80808080808080))
                  {
                    v159 = 0xE000000000000000;
                  }

                  v248 = v10;
                  v249 = v159 & 0xFF00000000000000 | (v127 << 56) | v131 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v18 = v239;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v235;
              }
            }

            if ((v15 & 0x1000000000000000) != 0)
            {
              v16;
              v204._rawBits = 1;
              v205._rawBits = (v18 << 16) | 1;
              v206._rawBits = _StringGuts.validateScalarRange(_:)(v204, v205, v4, v15)._rawBits;
              if (v206._rawBits < 0x10000)
              {
                v206._rawBits |= 3;
              }

              v135 = String.UTF8View.distance(from:to:)(v206, v207);
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_201:
                v31 = __OFADD__(v126, v135);
                v136 = v126 + v135;
                if (v31)
                {
                  goto LABEL_329;
                }

                goto LABEL_202;
              }
            }

            else
            {
              v16;
              v135 = v18;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_201;
              }
            }

            v208 = String.UTF8View._foreignCount()();
            v136 = v208 + v135;
            if (__OFADD__(v208, v135))
            {
              goto LABEL_329;
            }

LABEL_202:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v137 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v138)
              {
                goto LABEL_342;
              }

              v139 = (v7 >> 61) & 1;
              if (v137 < v135)
              {
                LOBYTE(v139) = 1;
              }

              if (v136 > 15 || (v139 & 1) == 0)
              {
LABEL_221:
                _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v136, v135);
                if ((v15 & 0x1000000000000000) != 0)
                {
                  _StringGuts._foreignAppendInPlace(_:)(v4, v15, 0, v18);
                  v18 = v244;
                }

                else
                {
                  if ((v15 & 0x2000000000000000) != 0)
                  {
                    v246 = v4;
                    v247 = v236 & 0xFFFFFFFFFFFFFFLL;
                    if (v235 < v18)
                    {
                      goto LABEL_341;
                    }

                    v158 = (v15 >> 62) & 1;
                    v156 = &v246;
                    v157 = v18;
                  }

                  else
                  {
                    v154 = ((v236 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v155 = v239;
                    if ((v4 & 0x1000000000000000) != 0)
                    {
                      if (v239 < v18)
                      {
                        goto LABEL_341;
                      }
                    }

                    else
                    {
                      v154 = _StringObject.sharedUTF8.getter(v4, v15);
                      v155 = v216;
                      if (v216 < v18)
                      {
                        goto LABEL_341;
                      }
                    }

                    v156 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v18, v154, v155);
                    v158 = v4 >> 63;
                  }

                  _StringGuts.appendInPlace(_:isASCII:)(v156, v157, v158);
                  v18 = v244;
                }

                goto LABEL_235;
              }
            }

            else if (v136 >= 16)
            {
              goto LABEL_221;
            }

            if ((v7 & 0x2000000000000000) != 0)
            {
              v140 = v7;
            }

            else if ((v7 & 0x1000000000000000) != 0)
            {
              v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
              v140 = v218;
            }

            else
            {
              if ((*&v10 & 0x1000000000000000) != 0)
              {
                v209 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v209 = _StringObject.sharedUTF8.getter(*&v10, v7);
                v125 = v221;
              }

              closure #1 in _StringGuts._convertedToSmall()(v209, v125, &v246, v30);
              v10 = v246;
              v140 = v247;
            }

            v15;
            v141._rawBits = 1;
            v142._rawBits = (v18 << 16) | 1;
            v143._rawBits = _StringGuts.validateScalarRange(_:)(v141, v142, v4, v15)._rawBits;
            if (v143._rawBits < 0x10000)
            {
              v143._rawBits |= 3;
            }

            if (v143._rawBits >> 16 || (v146 = v15, v147 = v4, v144._rawBits >> 16 != v234))
            {
              v147 = specialized static String._copying(_:)(v143._rawBits, v144._rawBits, v4, v15);
              v146 = v148;
              v15;
            }

            v18 = v244;
            if ((v146 & 0x2000000000000000) != 0)
            {
              v146;
            }

            else if ((v146 & 0x1000000000000000) != 0)
            {
              v147 = _StringGuts._foreignConvertedToSmall()(*&v147, v146);
              v220 = v219;
              v146;
              v146 = v220;
              v18 = v244;
            }

            else
            {
              if ((*&v147 & 0x1000000000000000) != 0)
              {
                v210 = ((v146 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v211 = *&v147 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v210 = _StringObject.sharedUTF8.getter(*&v147, v146);
              }

              closure #1 in _StringGuts._convertedToSmall()(v210, v211, &v246, v145);
              v146;
              v147 = v246;
              v146 = v247;
            }

            v149 = specialized _SmallString.init(_:appending:)(*&v10, v140, *&v147, v146);
            if (v151)
            {
              goto LABEL_342;
            }

            v152 = v149;
            v153 = v150;
            v7;
            v248 = v152;
            v249 = v153;
LABEL_235:
            v10 = v248;
            v7 = v249;
            v160 = HIBYTE(v249) & 0xF;
            v4 = v248 & 0xFFFFFFFFFFFFLL;
            if ((v249 & 0x2000000000000000) != 0)
            {
              v161 = HIBYTE(v249) & 0xF;
            }

            else
            {
              v161 = v248 & 0xFFFFFFFFFFFFLL;
            }

            if (!v161 && (v248 & ~v249 & 0x2000000000000000) == 0)
            {
              v249;
              v248 = v18;
              v249 = v16;
              goto LABEL_177;
            }

            v15 = (v16 & 0x2000000000000000) == 0;
            v162 = HIBYTE(v16) & 0xF;
            if ((v249 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v164 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) != 0)
              {
LABEL_246:
                if ((v16 & 0x1000000000000000) == 0)
                {
                  goto LABEL_247;
                }

                goto LABEL_276;
              }

LABEL_245:
              v164 = v163;
              goto LABEL_246;
            }

            if ((v16 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v15 = 1;
              goto LABEL_245;
            }

            v188 = v160 + v162;
            if (v160 + v162 < 0x10)
            {
              if (v162)
              {
                v194 = 0;
                v195 = 0;
                v196 = 8 * v160;
                v197 = 8 * v162;
                v198 = v249;
                v15 = v236;
                v4 = v238;
                do
                {
                  v199 = v16 >> (v194 & 0x38);
                  if (v195 < 8)
                  {
                    v199 = v18 >> v194;
                  }

                  v200 = (v199 << (v196 & 0x38)) | ((-255 << (v196 & 0x38)) - 1) & v198;
                  v201 = (v199 << v196) | ((-255 << v196) - 1) & *&v10;
                  if (v160 <= 7)
                  {
                    v10 = v201;
                  }

                  else
                  {
                    v198 = v200;
                  }

                  ++v160;
                  v196 += 8;
                  v194 += 8;
                  ++v195;
                }

                while (v197 != v194);
              }

              else
              {
                v198 = v249;
                v15 = v236;
                v4 = v238;
              }

              v249;
              v16;
              v202 = 0xA000000000000000;
              if (!(*&v10 & 0x8080808080808080 | v198 & 0x80808080808080))
              {
                v202 = 0xE000000000000000;
              }

              v248 = v10;
              v249 = v202 & 0xFF00000000000000 | (v188 << 56) | v198 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_178;
            }

            v15 = 0;
            v163 = v18 & 0xFFFFFFFFFFFFLL;
            v164 = HIBYTE(v16) & 0xF;
            if ((v16 & 0x1000000000000000) == 0)
            {
LABEL_247:
              v16;
              v18 = v164;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_248;
              }

              goto LABEL_279;
            }

LABEL_276:
            swift_bridgeObjectRetain_n(v16, 2);
            v189._rawBits = 1;
            v190._rawBits = (v164 << 16) | 1;
            v191._rawBits = _StringGuts.validateScalarRange(_:)(v189, v190, v244, v16)._rawBits;
            if (v191._rawBits < 0x10000)
            {
              v191._rawBits |= 3;
            }

            v18 = String.UTF8View.distance(from:to:)(v191, v192);
            v16;
            if ((v7 & 0x1000000000000000) == 0)
            {
LABEL_248:
              v31 = __OFADD__(v161, v18);
              v165 = v161 + v18;
              if (v31)
              {
                goto LABEL_330;
              }

              goto LABEL_249;
            }

LABEL_279:
            v193 = String.UTF8View._foreignCount()();
            v165 = v193 + v18;
            if (__OFADD__(v193, v18))
            {
              goto LABEL_330;
            }

LABEL_249:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v166 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v167)
              {
                goto LABEL_342;
              }

              if (v165 <= 15)
              {
                if ((v7 & 0x2000000000000000) != 0)
                {
                  goto LABEL_266;
                }

                if (v166 < v18)
                {
                  goto LABEL_255;
                }
              }
            }

            else if (v165 < 16)
            {
              if ((v7 & 0x2000000000000000) != 0)
              {
LABEL_266:
                v170 = v7;
                goto LABEL_267;
              }

LABEL_255:
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v170 = v203;
LABEL_267:
                v15 = v236;
                v169 = v244;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v168 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v168 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v4 = v217;
                }

                v15 = v236;
                v169 = v244;
                closure #1 in _StringGuts._convertedToSmall()(v168, v4, &v246, v30);
                v10 = v246;
                v170 = v247;
              }

              v16;
              v175._rawBits = 1;
              v176._rawBits = (v164 << 16) | 1;
              v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, v169, v16)._rawBits;
              if (v177._rawBits < 0x10000)
              {
                v177._rawBits |= 3;
              }

              v179 = Substring.description.getter(v177._rawBits, v178._rawBits, v169, v16);
              v181 = v180;
              v16;
              if ((v181 & 0x2000000000000000) != 0)
              {
                v181;
                v14 = v242;
                v4 = v238;
              }

              else
              {
                v14 = v242;
                v4 = v238;
                if ((v181 & 0x1000000000000000) != 0)
                {
                  v179 = _StringGuts._foreignConvertedToSmall()(*&v179, v181);
                  v223 = v222;
                  v181;
                  v181 = v223;
                  v15 = v236;
                }

                else
                {
                  if ((*&v179 & 0x1000000000000000) != 0)
                  {
                    v212 = ((v181 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v213 = *&v179 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v212 = _StringObject.sharedUTF8.getter(*&v179, v181);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v212, v213, &v246, v182);
                  v181;
                  v179 = v246;
                  v181 = v247;
                }
              }

              v183 = specialized _SmallString.init(_:appending:)(*&v10, v170, *&v179, v181);
              if (v185)
              {
                goto LABEL_342;
              }

              v186 = v183;
              v187 = v184;
              v7;
              swift_bridgeObjectRelease_n(v16, 2);
              v248 = v186;
              v249 = v187;
              goto LABEL_178;
            }

            v7 = &v248;
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v165, v18);
            if ((v16 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v244, v16, 0, v164);
              swift_bridgeObjectRelease_n(v16, 2);
              v14 = v242;
              v15 = v236;
LABEL_177:
              v4 = v238;
              goto LABEL_178;
            }

            v4 = v238;
            if (v15)
            {
              if ((v244 & 0x1000000000000000) != 0)
              {
                v171 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v172 = v163;
              }

              else
              {
                v214 = _StringObject.sharedUTF8.getter(v244, v16);
                if (v215 < v163)
                {
                  goto LABEL_341;
                }

                v171 = v214;
                v172 = v215;
              }

              v14 = v242;
              v15 = v236;
              v16;
              v173 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v163, v171, v172);
              v7 = &v248;
              _StringGuts.appendInPlace(_:isASCII:)(v173, v174, v244 < 0);
              v16;
            }

            else
            {
              v246 = v244;
              v247 = v16 & 0xFFFFFFFFFFFFFFLL;
              v16;
              _StringGuts.appendInPlace(_:isASCII:)(&v246, HIBYTE(v16) & 0xF, (v16 & 0x4000000000000000) != 0);
              v16;
              v14 = v242;
              v15 = v236;
            }

LABEL_178:
            v121 = v241;
            if (v241 == v14)
            {
              return v248;
            }
          }
        }

LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v20 = 1;
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v4 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) != 0)
      {
        goto LABEL_107;
      }
    }

    v4 = v21;
LABEL_107:
    v243 = v21;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_132;
  }

  return v248;
}

unint64_t specialized Sequence<>.joined(separator:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  v249 = HIBYTE(a2) & 0xF;
  v252 = a1 & 0xFFFFFFFFFFFFLL;
  v253 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  v248 = v5;
  v6 = *(a3 + 16) + *(a3 + 16) * v5;
  v7 = 0xE000000000000000;
  v264 = 0;
  v265 = 0xE000000000000000;
  if (v6 < 16)
  {
    v10 = 0;
  }

  else
  {
    v8 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v9 & 1) != 0 || v8 < v6)
    {
      v12 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v12 <= v6)
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }

      v262 = 0;
      v263 = 0;
      v7 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v262, 0, v13, 1);
      v10 = *(v7 + 24);
      0xE000000000000000;
      v264 = v10;
      v265 = v7;
    }

    else
    {
      v10 = 0;
      v7 = 0xE000000000000000;
    }
  }

  v14 = *(*&v3 + 16);
  v260 = v3;
  v261 = v14;
  if (!v248)
  {
    if (!v14)
    {
      return v264;
    }

    v17 = 0;
    v257 = *&v3 + 32;
    while (1)
    {
      sub_1802E86D0(v17, 1, *&v3);
      v18 = (v257 + 32 * v17);
      v16 = *v18;
      v19 = v18[1];
      if (&full type metadata for Substring == &full type metadata for String)
      {
        v18[1];
        v20 = v19;
      }

      else
      {
        v21 = v18[2];
        v20 = v18[3];
        if ((v20 & 0x2000000000000000) != 0)
        {
          v22 = HIBYTE(v20) & 0xF;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFFFFFFLL;
        }

        v20;
        if (v16 >> 16)
        {
          v23 = 0;
        }

        else
        {
          v23 = v19 >> 16 == v22;
        }

        if (v23)
        {
          v16 = v21;
        }

        else
        {
          v16 = specialized static String._copying(_:)(v16, v19, v21, v20);
          v25 = v24;
          v20;
          v20 = v25;
        }
      }

      v15 = v264;
      v7 = v265;
      v26 = HIBYTE(v265) & 0xF;
      v27 = v264 & 0xFFFFFFFFFFFFLL;
      if ((v265 & 0x2000000000000000) != 0)
      {
        v28 = HIBYTE(v265) & 0xF;
      }

      else
      {
        v28 = v264 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28 && (v264 & ~v265 & 0x2000000000000000) == 0)
      {
        v265;
        v264 = v16;
        v265 = v20;
        goto LABEL_21;
      }

      v29 = (v20 & 0x2000000000000000) == 0;
      v30 = HIBYTE(v20) & 0xF;
      if ((v265 & 0x2000000000000000) != 0)
      {
        if ((v20 & 0x2000000000000000) == 0)
        {
          v31 = v16 & 0xFFFFFFFFFFFFLL;
          v29 = 1;
LABEL_43:
          v3 = v31;
          goto LABEL_44;
        }

        v50 = v26 + v30;
        if (v26 + v30 < 0x10)
        {
          if (v30)
          {
            v57 = 0;
            v58 = 0;
            v59 = 8 * v26;
            v60 = v265;
            do
            {
              v61 = v20 >> (v57 & 0x38);
              if (v58 < 8)
              {
                v61 = v16 >> v57;
              }

              v62 = (v61 << (v59 & 0x38)) | ((-255 << (v59 & 0x38)) - 1) & v60;
              v63 = (v61 << v59) | ((-255 << v59) - 1) & v15;
              if (v26 <= 7)
              {
                v15 = v63;
              }

              else
              {
                v60 = v62;
              }

              ++v26;
              v59 += 8;
              v57 += 8;
              ++v58;
            }

            while (8 * v30 != v57);
          }

          else
          {
            v60 = v265;
          }

          v265;
          v20;
          v64 = 0xA000000000000000;
          if (!(v15 & 0x8080808080808080 | v60 & 0x80808080808080))
          {
            v64 = 0xE000000000000000;
          }

          v264 = v15;
          v265 = v64 & 0xFF00000000000000 | (v50 << 56) | v60 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        v29 = 0;
        v31 = v16 & 0xFFFFFFFFFFFFLL;
        v3 = (HIBYTE(v20) & 0xF);
      }

      else
      {
        v31 = v16 & 0xFFFFFFFFFFFFLL;
        v3 = (HIBYTE(v20) & 0xF);
        if ((v20 & 0x2000000000000000) == 0)
        {
          goto LABEL_43;
        }
      }

LABEL_44:
      v254 = v29;
      v253 = v31;
      if ((v20 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v20, 2);
        v66._rawBits = 1;
        v67._rawBits = (*&v3 << 16) | 1;
        v68._rawBits = _StringGuts.validateScalarRange(_:)(v66, v67, v16, v20)._rawBits;
        if (v68._rawBits < 0x10000)
        {
          v68._rawBits |= 3;
        }

        v10 = String.UTF8View.distance(from:to:)(v68, v69);
        v20;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v33 = __OFADD__(v28, *&v10);
          v34 = v28 + *&v10;
          if (v33)
          {
            goto LABEL_349;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v20;
        v10 = v3;
        if ((v7 & 0x1000000000000000) == 0)
        {
          goto LABEL_46;
        }
      }

      v70 = String.UTF8View._foreignCount()();
      v34 = v70 + *&v10;
      if (__OFADD__(v70, *&v10))
      {
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
          v27 = v244;
        }

        else
        {
          if ((*&v10 & 0x1000000000000000) != 0)
          {
            v238 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v238 = _StringObject.sharedUTF8.getter(*&v10, v7);
            v27 = v247;
          }

          closure #1 in _StringGuts._convertedToSmall()(v238, v27, &v262, v32);
          v10 = v262;
          v27 = v263;
        }

LABEL_132:
        v16;
        v93._rawBits = 1;
        v94._rawBits = (*&v3 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v93, v94, v15, v16)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (!(rawBits >> 16) && v87 >> 16 == *&v3)
        {
          v96 = v16;
          goto LABEL_152;
        }

LABEL_151:
        v15 = specialized static String._copying(_:)(rawBits, v87, v15, v16);
        v96 = v107;
        v16;
LABEL_152:
        if ((v96 & 0x2000000000000000) != 0)
        {
          v96;
        }

        else
        {
          v239 = v7;
          if ((v96 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v96);
            v246 = v245;
            v96;
            v96 = v246;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v240 = ((v96 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v241 = v15 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v240 = _StringObject.sharedUTF8.getter(v15, v96);
            }

            closure #1 in _StringGuts._convertedToSmall()(v240, v241, &v262, v95);
            v96;
            v15 = v262;
            v96 = v263;
          }

          v7 = v239;
        }

        v108 = HIBYTE(v27) & 0xF;
        v109 = HIBYTE(v96) & 0xF;
        v110 = v109 + v108;
        if (v109 + v108 < 0x10)
        {
          v16;
          if (v109)
          {
            v111 = 0;
            v112 = 0;
            v113 = 8 * v108;
            v114 = 8 * v109;
            v3 = v260;
            do
            {
              v115 = v96 >> (v111 & 0x38);
              if (v112 < 8)
              {
                v115 = v15 >> v111;
              }

              v116 = (v115 << (v113 & 0x38)) | ((-255 << (v113 & 0x38)) - 1) & v27;
              v117 = (v115 << v113) | ((-255 << v113) - 1) & *&v10;
              if (v108 <= 7)
              {
                v10 = v117;
              }

              else
              {
                v27 = v116;
              }

              ++v108;
              v113 += 8;
              v111 += 8;
              ++v112;
            }

            while (v114 != v111);
          }

          else
          {
            v3 = v260;
          }

          v7;
          v16;
          v118 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v27 & 0x80808080808080))
          {
            v118 = 0xE000000000000000;
          }

          v264 = v10;
          v265 = v118 & 0xFF00000000000000 | (v110 << 56) | v27 & 0xFFFFFFFFFFFFFFLL;
          v14 = v261;
          goto LABEL_184;
        }

LABEL_363:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_47:
      if ((v15 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v35 = _StringGuts.nativeUnusedCapacity.getter(v15, v7);
        if (v36)
        {
          goto LABEL_363;
        }

        if (v34 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v35 < *&v10)
          {
            goto LABEL_53;
          }
        }
      }

      else if (v34 < 16)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_64:
          v38 = v7;
        }

        else
        {
LABEL_53:
          if ((v7 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v7);
            v38 = v65;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v37 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v37 = _StringObject.sharedUTF8.getter(v15, v7);
              v27 = v75;
            }

            closure #1 in _StringGuts._convertedToSmall()(v37, v27, &v262, v32);
            v15 = v262;
            v38 = v263;
          }
        }

        v20;
        v44._rawBits = 1;
        v45._rawBits = (*&v3 << 16) | 1;
        v46._rawBits = _StringGuts.validateScalarRange(_:)(v44, v45, v16, v20)._rawBits;
        if (v46._rawBits < 0x10000)
        {
          v46._rawBits |= 3;
        }

        if (v46._rawBits >> 16 || v47._rawBits >> 16 != *&v3)
        {
          v16 = specialized static String._copying(_:)(v46._rawBits, v47._rawBits, v16, v20);
          v49 = v51;
          v20;
        }

        else
        {
          v49 = v20;
        }

        v3 = v260;
        if ((v49 & 0x2000000000000000) != 0)
        {
          v49;
        }

        else if ((v49 & 0x1000000000000000) != 0)
        {
          v16 = _StringGuts._foreignConvertedToSmall()(v16, v49);
          v77 = v76;
          v49;
          v49 = v77;
        }

        else
        {
          if ((v16 & 0x1000000000000000) != 0)
          {
            v71 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v72 = v16 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = _StringObject.sharedUTF8.getter(v16, v49);
          }

          closure #1 in _StringGuts._convertedToSmall()(v71, v72, &v262, v48);
          v49;
          v16 = v262;
          v49 = v263;
        }

        v52 = specialized _SmallString.init(_:appending:)(v15, v38, v16, v49);
        if (v54)
        {
          goto LABEL_363;
        }

        v55 = v52;
        v56 = v53;
        v7;
        swift_bridgeObjectRelease_n(v20, 2);
        v264 = v55;
        v265 = v56;
        goto LABEL_21;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v34, *&v10);
      if ((v20 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v16, v20, 0, *&v3);
LABEL_88:
        swift_bridgeObjectRelease_n(v20, 2);
        v3 = v260;
        goto LABEL_21;
      }

      if (!v254)
      {
        v262 = v16;
        v263 = v20 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v262, HIBYTE(v20) & 0xF, &v264, (v20 & 0x4000000000000000) != 0);
        goto LABEL_88;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v39 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v40 = v253;
        v41 = v253;
      }

      else
      {
        v73 = _StringObject.sharedUTF8.getter(v16, v20);
        v41 = v74;
        v40 = v253;
        if (v41 < *&v253)
        {
          goto LABEL_362;
        }

        v39 = v73;
      }

      v3 = v260;
      v42 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v40, v39, v41);
      closure #1 in _StringGuts.append(_:)(v42, v43, &v264, (v16 & 0x8000000000000000) != 0);
      swift_bridgeObjectRelease_n(v20, 2);
LABEL_21:
      if (++v17 == v261)
      {
        return v264;
      }
    }
  }

  if (v14)
  {
    v250 = a2;
    sub_1802E86D0(0, 1, *&v3);
    v15 = *(*&v3 + 32);
    v251 = *&v3 + 32;
    v16 = *(*&v3 + 40);
    if (&full type metadata for Substring == &full type metadata for String)
    {
      *(*&v3 + 40);
    }

    else
    {
      v79 = *(*&v3 + 48);
      v78 = *(*&v3 + 56);
      v78;
      v15 = _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(v15, v16, v79, v78);
      v16 = v80;
    }

    v81 = HIBYTE(v7) & 0xF;
    v27 = *&v10 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v82 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v82 = *&v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v82 && (*&v10 & ~v7 & 0x2000000000000000) == 0)
    {
      v7;
      v264 = v15;
      v265 = v16;
      goto LABEL_184;
    }

    v83 = (v16 & 0x2000000000000000) == 0;
    v84 = HIBYTE(v16) & 0xF;
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v102 = v81 + v84;
        if (v81 + v84 < 0x10)
        {
          if (v84)
          {
            v119 = 0;
            v120 = 0;
            v121 = 8 * v81;
            v122 = v7;
            do
            {
              v123 = v16 >> (v119 & 0x38);
              if (v120 < 8)
              {
                v123 = v15 >> v119;
              }

              v124 = (v123 << (v121 & 0x38)) | ((-255 << (v121 & 0x38)) - 1) & v122;
              v125 = (v123 << v121) | ((-255 << v121) - 1) & *&v10;
              if (v81 <= 7)
              {
                v10 = v125;
              }

              else
              {
                v122 = v124;
              }

              ++v81;
              v121 += 8;
              v119 += 8;
              ++v120;
            }

            while (8 * v84 != v119);
          }

          else
          {
            v122 = v7;
          }

          v7;
          v16;
          v126 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v122 & 0x80808080808080))
          {
            v126 = 0xE000000000000000;
          }

          v264 = v10;
          v265 = v126 & 0xFF00000000000000 | (v102 << 56) | v122 & 0xFFFFFFFFFFFFFFLL;
LABEL_184:
          v15 = v250;
          if (v14 == 1)
          {
            return v264;
          }

          v128 = 1;
          while (1)
          {
            sub_1802E86D0(v128, 1, *&v3);
            if (__OFADD__(v128, 1))
            {
              __break(1u);
              goto LABEL_349;
            }

            v259 = v128 + 1;
            v130 = (v251 + 32 * v128);
            v27 = *v130;
            v10 = v130[1];
            v131 = v130[2];
            v16 = v130[3];
            v3 = v264;
            v7 = v265;
            v132 = HIBYTE(v265) & 0xF;
            v133 = v264 & 0xFFFFFFFFFFFFLL;
            if ((v265 & 0x2000000000000000) != 0)
            {
              v134 = HIBYTE(v265) & 0xF;
            }

            else
            {
              v134 = v264 & 0xFFFFFFFFFFFFLL;
            }

            if (!v134 && (v264 & ~v265 & 0x2000000000000000) == 0)
            {
              v16;
              v15;
              v7;
              v264 = v253;
              v265 = v15;
              goto LABEL_247;
            }

            v255 = v131;
            if ((v265 & 0x2000000000000000) != 0)
            {
              v135 = v252;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v135 = v249;
                v136 = v132 + v249;
                if (v132 + v249 <= 0xF)
                {
                  if (v249)
                  {
                    v137 = 0;
                    v138 = 0;
                    v139 = 8 * v132;
                    v140 = v265;
                    do
                    {
                      v141 = v15 >> (v137 & 0x38);
                      if (v138 < 8)
                      {
                        v141 = *&v253 >> v137;
                      }

                      v142 = (v141 << (v139 & 0x38)) | ((-255 << (v139 & 0x38)) - 1) & v140;
                      v143 = (v141 << v139) | ((-255 << v139) - 1) & *&v3;
                      if (v132 <= 7)
                      {
                        v3 = v143;
                      }

                      else
                      {
                        v140 = v142;
                      }

                      ++v132;
                      v139 += 8;
                      v137 += 8;
                      ++v138;
                    }

                    while (8 * v249 != v137);
                  }

                  else
                  {
                    v140 = v265;
                  }

                  v16;
                  v7;
                  v170 = 0xA000000000000000;
                  if (!(*&v3 & 0x8080808080808080 | v140 & 0x80808080808080))
                  {
                    v170 = 0xE000000000000000;
                  }

                  v264 = v3;
                  v265 = v170 & 0xFF00000000000000 | (v136 << 56) | v140 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_246;
                }
              }
            }

            else
            {
              v135 = v252;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v135 = v249;
              }
            }

            if ((v15 & 0x1000000000000000) != 0)
            {
              v16;
              v213._rawBits = 1;
              v214._rawBits = (v135 << 16) | 1;
              v215._rawBits = _StringGuts.validateScalarRange(_:)(v213, v214, *&v253, v15)._rawBits;
              if (v215._rawBits < 0x10000)
              {
                v215._rawBits |= 3;
              }

              v144 = String.UTF8View.distance(from:to:)(v215, v216);
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_212:
                v33 = __OFADD__(v134, v144);
                v145 = v134 + v144;
                if (v33)
                {
                  goto LABEL_350;
                }

                goto LABEL_213;
              }
            }

            else
            {
              v16;
              v144 = v135;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_212;
              }
            }

            v217 = String.UTF8View._foreignCount()();
            v145 = v217 + v144;
            if (__OFADD__(v217, v144))
            {
              goto LABEL_350;
            }

LABEL_213:
            if ((*&v3 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v146 = _StringGuts.nativeUnusedCapacity.getter(*&v3, v7);
              if (v147)
              {
                goto LABEL_363;
              }

              v148 = (v7 >> 61) & 1;
              if (v146 < v144)
              {
                LOBYTE(v148) = 1;
              }

              if (v145 <= 15 && (v148 & 1) != 0)
              {
LABEL_220:
                if ((v7 & 0x2000000000000000) != 0)
                {
                  v149 = v7;
                  v150 = v253;
                }

                else
                {
                  v150 = v253;
                  if ((v7 & 0x1000000000000000) != 0)
                  {
                    v3 = _StringGuts._foreignConvertedToSmall()(*&v3, v7);
                    v149 = v232;
                  }

                  else
                  {
                    if ((*&v3 & 0x1000000000000000) != 0)
                    {
                      v223 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v223 = _StringObject.sharedUTF8.getter(*&v3, v7);
                      v133 = v235;
                    }

                    closure #1 in _StringGuts._convertedToSmall()(v223, v133, &v262, v32);
                    v3 = v262;
                    v149 = v263;
                  }
                }

                v15;
                v151._rawBits = 1;
                v152._rawBits = (v135 << 16) | 1;
                v153._rawBits = _StringGuts.validateScalarRange(_:)(v151, v152, v150, v15)._rawBits;
                if (v153._rawBits < 0x10000)
                {
                  v153._rawBits |= 3;
                }

                v156 = v150;
                if (v153._rawBits >> 16 || (v157 = v15, v158 = v156, v154._rawBits >> 16 != v248))
                {
                  v158 = specialized static String._copying(_:)(v153._rawBits, v154._rawBits, v156, v15);
                  v157 = v159;
                  v15;
                }

                if ((v157 & 0x2000000000000000) != 0)
                {
                  v157;
                }

                else if ((v157 & 0x1000000000000000) != 0)
                {
                  v158 = _StringGuts._foreignConvertedToSmall()(*&v158, v157);
                  v234 = v233;
                  v157;
                  v157 = v234;
                }

                else
                {
                  if ((*&v158 & 0x1000000000000000) != 0)
                  {
                    v224 = ((v157 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v225 = *&v158 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v224 = _StringObject.sharedUTF8.getter(*&v158, v157);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v224, v225, &v262, v155);
                  v157;
                  v158 = v262;
                  v157 = v263;
                }

                v160 = specialized _SmallString.init(_:appending:)(*&v3, v149, *&v158, v157);
                if (v162)
                {
                  goto LABEL_363;
                }

                v163 = v160;
                v164 = v161;
                v7;
                v264 = v163;
                v265 = v164;
                goto LABEL_246;
              }
            }

            else if (v145 < 16)
            {
              goto LABEL_220;
            }

            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v145, v144);
            if ((v15 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(*&v253, v15, 0, v135);
LABEL_246:
              v131 = v255;
              goto LABEL_247;
            }

            v131 = v255;
            if ((v15 & 0x2000000000000000) != 0)
            {
              v262 = v253;
              v263 = v250 & 0xFFFFFFFFFFFFFFLL;
              if (v249 < v135)
              {
                goto LABEL_362;
              }

              v169 = (v15 >> 62) & 1;
              v167 = &v262;
              v168 = v135;
            }

            else
            {
              v165 = ((v250 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v166 = v252;
              if ((*&v253 & 0x1000000000000000) != 0)
              {
                if (v252 < v135)
                {
                  goto LABEL_362;
                }
              }

              else
              {
                v165 = _StringObject.sharedUTF8.getter(*&v253, v15);
                v166 = v230;
                if (v230 < v135)
                {
                  goto LABEL_362;
                }
              }

              v167 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v135, v165, v166);
              v169 = *&v253 >> 63;
            }

            closure #1 in _StringGuts.append(_:)(v167, v168, &v264, v169);
LABEL_247:
            if (&full type metadata for Substring == &full type metadata for String)
            {
              *&v10;
              v16;
              v16 = v10;
            }

            else
            {
              v171 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) == 0)
              {
                v171 = v131 & 0xFFFFFFFFFFFFLL;
              }

              if (v27 >> 16 || *&v10 >> 16 != v171)
              {
                v27 = specialized static String._copying(_:)(v27, *&v10, v131, v16);
                v173 = v172;
                v16;
                v16 = v173;
              }

              else
              {
                v27 = v131;
              }
            }

            v10 = v264;
            v7 = v265;
            v174 = HIBYTE(v265) & 0xF;
            v3 = (v264 & 0xFFFFFFFFFFFFLL);
            if ((v265 & 0x2000000000000000) != 0)
            {
              v175 = HIBYTE(v265) & 0xF;
            }

            else
            {
              v175 = v264 & 0xFFFFFFFFFFFFLL;
            }

            if (!v175 && (v264 & ~v265 & 0x2000000000000000) == 0)
            {
              v265;
              v264 = v27;
              v265 = v16;
              v3 = v260;
              v129 = v261;
LABEL_188:
              v7 = v259;
              goto LABEL_189;
            }

            v15 = (v16 & 0x2000000000000000) == 0;
            v176 = HIBYTE(v16) & 0xF;
            if ((v265 & 0x2000000000000000) != 0)
            {
              if ((v16 & 0x2000000000000000) == 0)
              {
                v177 = v27 & 0xFFFFFFFFFFFFLL;
                v15 = 1;
LABEL_265:
                v178 = v177;
                goto LABEL_266;
              }

              v202 = v174 + v176;
              if (v174 + v176 < 0x10)
              {
                if (v176)
                {
                  v203 = 0;
                  v204 = 0;
                  v205 = 8 * v174;
                  v206 = 8 * v176;
                  v207 = v265;
                  v3 = v260;
                  v129 = v261;
                  v15 = v250;
                  do
                  {
                    v208 = v16 >> (v203 & 0x38);
                    if (v204 < 8)
                    {
                      v208 = v27 >> v203;
                    }

                    v209 = (v208 << (v205 & 0x38)) | ((-255 << (v205 & 0x38)) - 1) & v207;
                    v210 = (v208 << v205) | ((-255 << v205) - 1) & *&v10;
                    if (v174 <= 7)
                    {
                      v10 = v210;
                    }

                    else
                    {
                      v207 = v209;
                    }

                    ++v174;
                    v205 += 8;
                    v203 += 8;
                    ++v204;
                  }

                  while (v206 != v203);
                }

                else
                {
                  v207 = v265;
                  v3 = v260;
                  v129 = v261;
                  v15 = v250;
                }

                v265;
                v16;
                v211 = 0xA000000000000000;
                if (!(*&v10 & 0x8080808080808080 | v207 & 0x80808080808080))
                {
                  v211 = 0xE000000000000000;
                }

                v264 = v10;
                v265 = v211 & 0xFF00000000000000 | (v202 << 56) | v207 & 0xFFFFFFFFFFFFFFLL;
                goto LABEL_188;
              }

              v15 = 0;
              v177 = v27 & 0xFFFFFFFFFFFFLL;
              v178 = HIBYTE(v16) & 0xF;
            }

            else
            {
              v177 = v27 & 0xFFFFFFFFFFFFLL;
              v178 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) == 0)
              {
                goto LABEL_265;
              }
            }

LABEL_266:
            v256 = v177;
            v179 = v27;
            if ((v16 & 0x1000000000000000) != 0)
            {
              swift_bridgeObjectRetain_n(v16, 2);
              v218._rawBits = 1;
              v219._rawBits = (v178 << 16) | 1;
              v220._rawBits = _StringGuts.validateScalarRange(_:)(v218, v219, v27, v16)._rawBits;
              if (v220._rawBits < 0x10000)
              {
                v220._rawBits |= 3;
              }

              v27 = String.UTF8View.distance(from:to:)(v220, v221);
              v16;
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_268:
                v33 = __OFADD__(v175, v27);
                v180 = v175 + v27;
                if (v33)
                {
                  goto LABEL_351;
                }

                goto LABEL_269;
              }
            }

            else
            {
              v16;
              v27 = v178;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_268;
              }
            }

            v222 = String.UTF8View._foreignCount()();
            v180 = v222 + v27;
            if (__OFADD__(v222, v27))
            {
              goto LABEL_351;
            }

LABEL_269:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v181 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v182)
              {
                goto LABEL_363;
              }

              if (v180 <= 15)
              {
                if ((v7 & 0x2000000000000000) != 0)
                {
                  goto LABEL_286;
                }

                if (v181 < v27)
                {
                  goto LABEL_275;
                }
              }
            }

            else if (v180 < 16)
            {
              if ((v7 & 0x2000000000000000) != 0)
              {
LABEL_286:
                v27 = v7;
                goto LABEL_287;
              }

LABEL_275:
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v27 = v212;
LABEL_287:
                v15 = v250;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v183 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v183 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v3 = v231;
                }

                v15 = v250;
                closure #1 in _StringGuts._convertedToSmall()(v183, *&v3, &v262, v32);
                v10 = v262;
                v27 = v263;
              }

              v16;
              v189._rawBits = 1;
              v190._rawBits = (v178 << 16) | 1;
              v191._rawBits = _StringGuts.validateScalarRange(_:)(v189, v190, v179, v16)._rawBits;
              if (v191._rawBits < 0x10000)
              {
                v191._rawBits |= 3;
              }

              v193 = Substring.description.getter(v191._rawBits, v192._rawBits, v179, v16);
              v195 = v194;
              v16;
              if ((v195 & 0x2000000000000000) != 0)
              {
                v195;
                v3 = v260;
              }

              else
              {
                v3 = v260;
                if ((v195 & 0x1000000000000000) != 0)
                {
                  v193 = _StringGuts._foreignConvertedToSmall()(*&v193, v195);
                  v237 = v236;
                  v195;
                  v195 = v237;
                  v15 = v250;
                }

                else
                {
                  if ((*&v193 & 0x1000000000000000) != 0)
                  {
                    v226 = ((v195 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v227 = *&v193 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v226 = _StringObject.sharedUTF8.getter(*&v193, v195);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v226, v227, &v262, v196);
                  v195;
                  v193 = v262;
                  v195 = v263;
                }
              }

              v197 = specialized _SmallString.init(_:appending:)(*&v10, v27, *&v193, v195);
              if (v199)
              {
                goto LABEL_363;
              }

              v200 = v197;
              v201 = v198;
              v7;
              swift_bridgeObjectRelease_n(v16, 2);
              v264 = v200;
              v265 = v201;
              v129 = v261;
              goto LABEL_188;
            }

            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v180, v27);
            if ((v16 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v179, v16, 0, v178);
              swift_bridgeObjectRelease_n(v16, 2);
              v3 = v260;
              v129 = v261;
LABEL_307:
              v15 = v250;
              goto LABEL_188;
            }

            v3 = v260;
            v129 = v261;
            if ((v15 & 1) == 0)
            {
              v262 = v179;
              v263 = v16 & 0xFFFFFFFFFFFFFFLL;
              closure #1 in _StringGuts.append(_:)(&v262, HIBYTE(v16) & 0xF, &v264, (v16 & 0x4000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              goto LABEL_307;
            }

            if ((v179 & 0x1000000000000000) != 0)
            {
              v184 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v185 = v256;
              v186 = v256;
            }

            else
            {
              v228 = _StringObject.sharedUTF8.getter(v179, v16);
              v186 = v229;
              v185 = v256;
              if (v186 < v256)
              {
                goto LABEL_362;
              }

              v184 = v228;
            }

            v15 = v250;
            v7 = v259;
            v187 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v185, v184, v186);
            closure #1 in _StringGuts.append(_:)(v187, v188, &v264, v179 < 0);
            swift_bridgeObjectRelease_n(v16, 2);
LABEL_189:
            v128 = v7;
            if (v7 == v129)
            {
              return v264;
            }
          }
        }

        v83 = 0;
        v3 = (HIBYTE(v16) & 0xF);
        v258 = v15 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x1000000000000000) == 0)
        {
LABEL_121:
          rawBits = v16;
          v88 = v3;
          if ((v7 & 0x1000000000000000) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_148;
        }

LABEL_145:
        swift_bridgeObjectRetain_n(v16, 2);
        v103._rawBits = 1;
        v104._rawBits = (*&v3 << 16) | 1;
        v105._rawBits = _StringGuts.validateScalarRange(_:)(v103, v104, v15, v16)._rawBits;
        if (v105._rawBits < 0x10000)
        {
          v105._rawBits |= 3;
        }

        v88 = String.UTF8View.distance(from:to:)(v105, v106);
        v16;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_122:
          v33 = __OFADD__(v82, v88);
          v89 = v82 + v88;
          if (!v33)
          {
            goto LABEL_123;
          }

          goto LABEL_150;
        }

LABEL_148:
        rawBits = String.UTF8View._foreignCount()();
        v89 = rawBits + v88;
        if (!__OFADD__(rawBits, v88))
        {
LABEL_123:
          if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
          {
            v90 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
            if (v91)
            {
              goto LABEL_363;
            }

            v92 = (v7 >> 61) & 1;
            if (v90 < v88)
            {
              LOBYTE(v92) = 1;
            }

            if (v89 <= 15 && (v92 & 1) != 0)
            {
LABEL_130:
              if ((v7 & 0x2000000000000000) == 0)
              {
                goto LABEL_352;
              }

              v27 = v7;
              goto LABEL_132;
            }
          }

          else if (v89 < 16)
          {
            goto LABEL_130;
          }

          v7 = &v264;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v89, v88);
          if ((v16 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v15, v16, 0, *&v3);
            swift_bridgeObjectRelease_n(v16, 2);
            v3 = v260;
            v14 = v261;
          }

          else
          {
            v14 = v261;
            if (v83)
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v97 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v98 = v258;
                v3 = v260;
                v99 = v258;
              }

              else
              {
                v242 = _StringObject.sharedUTF8.getter(v15, v16);
                if (v243 < v258)
                {
LABEL_362:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v97 = v242;
                v99 = v243;
                v3 = v260;
                v14 = v261;
                v98 = v258;
              }

              v100 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v98, v97, v99);
              closure #1 in _StringGuts.append(_:)(v100, v101, &v264, (v15 & 0x8000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
            }

            else
            {
              v262 = v15;
              v263 = v16 & 0xFFFFFFFFFFFFFFLL;
              closure #1 in _StringGuts.append(_:)(&v262, HIBYTE(v16) & 0xF, &v264, (v16 & 0x4000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              v3 = v260;
            }
          }

          goto LABEL_184;
        }

LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v85 = v15 & 0xFFFFFFFFFFFFLL;
      v83 = 1;
    }

    else
    {
      v85 = v15 & 0xFFFFFFFFFFFFLL;
      v3 = (HIBYTE(v16) & 0xF);
      if ((v16 & 0x2000000000000000) != 0)
      {
        goto LABEL_120;
      }
    }

    v3 = v85;
LABEL_120:
    v258 = v85;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_145;
  }

  return v264;
}