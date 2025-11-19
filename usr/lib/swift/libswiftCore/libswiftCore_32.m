char *_RandomAccessCollectionBox._index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v69 = a1;
  v7 = *v5;
  v62 = *(*v5 + 384);
  v66 = *(*(v62 + 8) + 8);
  v8 = *(v7 + 376);
  swift_getAssociatedTypeWitness(0, v66, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v55 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v70 = &v55 - v17;
  v18 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v23 = type metadata accessor for Optional(0, v10, v21, v22);
  v67 = *(v23 - 8);
  v68 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v58 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v55 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v55 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v57 = &v55 - v32;
  v33 = *(v7 + 392);
  v59 = v20;
  v60 = v18;
  (*(v18 + 16))(v20, v5 + v33, v8);
  ObjectType = swift_getObjectType(v69);
  v35 = *(a2 + 16);
  v36 = v66;
  v66 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v35(v10, AssociatedConformanceWitness, ObjectType, a2);
  v69 = v11;
  v38 = *(v11 + 48);
  if (v38(v31, 1, v10) == 1)
  {
    (*(v67 + 8))(v31, v68);
    goto LABEL_9;
  }

  v39 = *(v69 + 32);
  v39(v70, v31, v10);
  v40 = swift_getObjectType(v64);
  v41 = *(v65 + 2);
  v55 = AssociatedConformanceWitness;
  v41(v10, AssociatedConformanceWitness, v40);
  v65 = v38;
  if (v38(v28, 1, v10) == 1)
  {
    (*(v67 + 8))(v28, v68);
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x49BuLL);
  }

  v42 = v61;
  v64 = v39;
  v39(v61, v28, v10);
  v43 = v57;
  v44 = v70;
  v45 = v59;
  v46 = v66;
  (*(v62 + 40))(v70, v63, v42, v66);
  v47 = *(v69 + 8);
  v47(v42, v10);
  v47(v44, v10);
  (*(v60 + 8))(v45, v46);
  v48 = v58;
  (*(v67 + 32))(v58, v43, v68);
  if (v65(v48, 1, v10) == 1)
  {
    return 0;
  }

  v50 = v56;
  v51 = v64;
  v64(v56, v48, v10);
  v53 = type metadata accessor for _IndexBox(0, v10, v55, v52);
  v54 = swift_allocObject(v53, *(v53 + 48), *(v53 + 52));
  v51(&v54[*(*v54 + 96)], v50, v10);
  return v54;
}

uint64_t _RandomAccessCollectionBox._formIndex(_:offsetBy:)(uint64_t *a1, uint64_t a2)
{
  v22 = *v2;
  v23 = a2;
  v4 = *(*(v22[48] + 8) + 8);
  v5 = v22[47];
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  v15 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for _IndexBox(0, v7, AssociatedConformanceWitness, v17);
  v19 = swift_dynamicCastClass(v15, v18);
  if (!v19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4A6uLL);
  }

  v20 = v19;
  (*(v12 + 16))(v14, &v2[v22[49]], v5);
  (*(v8 + 32))(v11, v20 + *(*v20 + 96), v7);
  (*(v4 + 136))(v11, v23, v5, v4);
  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v14, v5);
}

BOOL _RandomAccessCollectionBox._formIndex(_:offsetBy:limitedBy:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = *v4;
  v7 = *v4;
  v44 = a2;
  v45 = v7;
  v8 = *(*(*(v6 + 384) + 8) + 8);
  v9 = *(v6 + 376);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = *(v11 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v42 = &v40 - v22;
  v49 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - v23;
  v25 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v28 = type metadata accessor for _IndexBox(0, v11, AssociatedConformanceWitness, v27);
  v48 = swift_dynamicCastClass(v25, v28);
  if (!v48)
  {
    v39 = 1200;
    goto LABEL_9;
  }

  (*(v49 + 16))(v24, &v4[*(v45 + 392)], v9);
  ObjectType = swift_getObjectType(v46);
  (*(v47 + 16))(v11, AssociatedConformanceWitness, ObjectType);
  v47 = v20[6];
  if ((v47)(v19, 1, v11) == 1)
  {
    (*(v40 + 8))(v19, v41);
    v39 = 1198;
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, v39);
  }

  v30 = v42;
  v45 = v20[4];
  (v45)(v42, v19, v11);
  v46 = v11;
  v31 = v48;
  v32 = *(*v48 + 96);
  v33 = v43;
  (*(v8 + 144))(v48 + v32, v44, v30, v9, v8);
  (*(v49 + 8))(v24, v9);
  v34 = v20[1];
  v35 = v31 + v32;
  v36 = v46;
  v34(v35, v46);
  v37 = (v47)(v33, 1, v36);
  if (v37 == 1)
  {
    (*(v40 + 8))(v33, v41);
    v33 = v30;
  }

  else
  {
    v34(v30, v36);
  }

  (v45)(v48 + v32, v33, v36);
  return v37 != 1;
}

uint64_t _RandomAccessCollectionBox._distance(from:to:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v7 = *v4;
  v46 = *(*v4 + 384);
  v8 = *(*(v46 + 8) + 8);
  v9 = *(v7 + 376);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = *(v11 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v45 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v51 = &v40 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v43 = &v40 - v25;
  v44 = v26;
  (*(v26 + 16))();
  ObjectType = swift_getObjectType(a1);
  v28 = *(a2 + 16);
  v47 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v28(v11, AssociatedConformanceWitness, ObjectType, a2);
  v30 = v20[6];
  if (v30(v19, 1, v11) == 1 || (v31 = v20[4], v31(v51, v19, v11), v32 = swift_getObjectType(v49), v19 = v48, (*(v50 + 16))(v11, AssociatedConformanceWitness, v32), v30(v19, 1, v11) == 1))
  {
    (*(v41 + 8))(v19, v42);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4B8uLL);
  }

  v33 = v45;
  v31(v45, v19, v11);
  v34 = v47;
  v35 = v51;
  v36 = v43;
  v37 = (*(v46 + 48))(v51, v33, v47);
  v38 = v20[1];
  v38(v33, v11);
  v38(v35, v11);
  (*(v44 + 8))(v36, v34);
  return v37;
}

uint64_t _RandomAccessCollectionBox._count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 392), v3);
  v7 = (*(*(*(*(v2 + 384) + 8) + 8) + 112))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

char *_RandomAccessCollectionBox._index(before:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*(*(*v2 + 384) + 8) + 8);
  v44 = *(*(*v2 + 384) + 8);
  v45 = v6;
  v7 = *(v5 + 376);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = *(v9 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v38 - v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v42 = &v38 - v22;
  v23 = *(v5 + 392);
  v43 = v24;
  v25 = *(v24 + 16);
  v41 = v21;
  v25(v21, &v2[v23], v7);
  ObjectType = swift_getObjectType(a1);
  v27 = *(a2 + 16);
  v28 = v45;
  v45 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v17 + 48))(v15, 1, v9) == 1)
  {
    (*(v39 + 8))(v15, v40);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4C2uLL);
  }

  v30 = *(v17 + 32);
  v30(v20, v15, v9);
  v31 = v45;
  v32 = v41;
  v33 = v42;
  (*(v44 + 32))(v20, v45);
  (*(v17 + 8))(v20, v9);
  (*(v43 + 8))(v32, v31);
  v35 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v34);
  v36 = swift_allocObject(v35, *(v35 + 48), *(v35 + 52));
  v30(&v36[*(*v36 + 96)], v33, v9);
  return v36;
}

uint64_t _RandomAccessCollectionBox._formIndex(before:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v9 = *(*(v8 + 384) + 8);
  v10 = *(v9 + 8);
  swift_getAssociatedTypeWitness(255, v10, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v4, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for _IndexBox(0, v12, AssociatedConformanceWitness, v14);
  v16 = swift_dynamicCastClass(a1, v15);
  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x4CAuLL);
  }

  v17 = v16;
  (*(v5 + 16))(v7, v1 + *(v3 + 392), v4);
  (*(v9 + 40))(v17 + *(*v17 + 96), v4, v9);
  return (*(v5 + 8))(v7, v4);
}

uint64_t _ClosureBasedSequence._makeUnderlyingIterator.setter(uint64_t a1, uint64_t a2)
{
  result = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _ClosureBasedSequence<A>()
{
  v1 = *(v0 + 8);
  _ClosureBasedSequence.makeIterator()(*v0);

  return v1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _ClosureBasedSequence<A>(uint64_t a1, uint64_t a2)
{
  v3 = specialized Sequence._copyToContiguousArray()(v2, a1, a2);
  *(v2 + 8);
  return v3;
}

void *AnySequence.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ClosureBasedSequence(255, a4, a5, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ClosureBasedSequence<A>, v7, v8);
  v11 = type metadata accessor for _SequenceBox(0, v7, WitnessTable, v10);
  result = swift_allocObject(v11, 0x20, 7uLL);
  result[2] = a1;
  result[3] = a2;
  return result;
}

char *AnySequence.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _SequenceBox(0, a3, a4, a4);
  v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
  (*(*(a3 - 8) + 32))(&v7[*(*v7 + 224)], a1, a3);
  return v7;
}

uint64_t _ss13AnyCollectionVyxGSTsST22_copyToContiguousArrays0eF0Vy7ElementQzGyFTW_0()
{
  v1 = *v0;
  v2 = specialized AnyBidirectionalCollection._copyToContiguousArray()(*v0);
  v1;
  return v2;
}

uint64_t AnySequence._copyToContiguousArray()(uint64_t a1)
{
  v2 = specialized AnyBidirectionalCollection._copyToContiguousArray()(a1);
  a1;
  return v2;
}

void *AnySequence._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized AnyBidirectionalCollection._copyContents(initializing:)(a1, a2, a3, a4);
  a3;
  return v5;
}

uint64_t AnySequence.dropLast(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 176))();
  a2;
  return v3;
}

uint64_t AnySequence.prefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a3 + 192))();
  a3;
  return v4;
}

uint64_t AnySequence.suffix(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 200))();
  a2;
  return v3;
}

void *specialized thunk for @callee_guaranteed (@in_guaranteed A) -> (@out A1, @error @out B1)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  result = a2(a1, &v6);
  if (v2)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    result = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
    *v5 = v6;
  }

  return result;
}

uint64_t AnySequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnySequence.filter(_:)(a1, a2, a3);
}

{
  v4 = (*(*a3 + 120))();
  a3;
  return v4;
}

uint64_t AnySequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnySequence.forEach(_:)(a1, a2, a3);
}

{
  (*(*a3 + 128))();
  return a3;
}

uint64_t AnySequence.drop(while:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnySequence.drop(while:)(a1, a2, a3);
}

{
  v4 = (*(*a3 + 160))();
  a3;
  return v4;
}

uint64_t AnyCollection.prefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AnyCollection.prefix(while:)(a1, a2, a3);
}

{
  v4 = (*(*a3 + 240))();
  a3;
  return v4;
}

uint64_t AnyCollection.makeIterator()(uint64_t a1)
{
  v2 = (*(*a1 + 96))(a1);
  a1;
  return v2;
}

uint64_t AnyCollection.dropLast(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 232))();
  a2;
  return v3;
}

uint64_t AnyCollection.suffix(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 248))();
  a2;
  return v3;
}

uint64_t AnySequence.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = a2;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = &v12;
  result = (*(*a3 + 112))(a7, v11, a5);
  if (v7)
  {
    v17 = v7;
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    swift_willThrowTypedImpl(&v17, v10, &protocol self-conformance witness table for Error);
    return v9;
  }

  return result;
}

uint64_t AnySequence.dropFirst(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 168))();
  a2;
  return v3;
}

uint64_t AnySequence.prefix(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 184))();
  a2;
  return v3;
}

uint64_t _IndexBox._unsafeUnbox(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (!swift_dynamicCastClass(a1, *v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(*(*(v6 + 80) - 8) + 16);
  v8 = a1 + *(*a1 + 96);

  return v7(a2, v8);
}

uint64_t _IndexBox._unbox<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = type metadata accessor for _IndexBox(0, a1, a2, a3);
  v9 = swift_dynamicCastClass(v5, v8);
  if (v9)
  {
    v14 = *(a1 - 8);
    (*(v14 + 16))(a4, v9 + *(*v9 + 96), a1);
    v10 = v14;
    v11 = 0;
  }

  else
  {
    v10 = *(a1 - 8);
    v11 = 1;
  }

  v12 = *(v10 + 56);

  return v12(a4, v11, 1, a1);
}

uint64_t _IndexBox._isEqual(to:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v12 = *(v5 + 16);
  v12(&v16 - v9, v1 + *(v11 + 96), v4);
  if (!swift_dynamicCastClass(a1, v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12(v8, (a1 + *(*a1 + 96)), v4);
  v13 = (*(*(*(v3 + 88) + 8) + 8))(v10, v8, v4);
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13 & 1;
}

uint64_t _IndexBox._isLess(than:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v12 = *(v5 + 16);
  v12(&v16 - v9, v1 + *(v11 + 96), v4);
  if (!swift_dynamicCastClass(a1, v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12(v8, (a1 + *(*a1 + 96)), v4);
  v13 = (*(*(v3 + 88) + 16))(v10, v8, v4);
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13 & 1;
}

void AnyIndex._box.setter(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease(*v2);
  *v2 = a1;
  *(v2 + 8) = a2;
}

char *AnyIndex.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _IndexBox(0, a2, a3, a4);
  v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
  (*(*(a2 - 8) + 32))(&v7[*(*v7 + 96)], a1, a2);
  return v7;
}

uint64_t AnyCollection.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return AnyCollection.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for _CollectionBox, specialized _CollectionBox.init(_base:));
}

{
  return AnyCollection.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for _BidirectionalCollectionBox, specialized _BidirectionalCollectionBox.init(_base:));
}

{
  return AnyCollection.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for _RandomAccessCollectionBox, specialized _RandomAccessCollectionBox.init(_base:));
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyCollection<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x1D1CuLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AnyCollection.subscript.read(v7, *a2, a2[1], *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*AnyCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  *a1 = a5;
  v9 = *(a5 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xE087uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  (*(*a4 + 256))(a2, a3);
  return _ArrayBuffer.subscript.read;
}

double _ss13AnyCollectionVyxGSlsSl34_customLastIndexOfEquatableElementy0E0QzSgSg0H0QzFTW_0@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_180672740;
  return result;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance AnySequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = specialized AnyBidirectionalCollection._copyContents(initializing:)(a2, a3, v6, *(a4 + 16));
  v9 = v8;
  v6;
  *a1 = v7;
  return v9;
}

uint64_t protocol witness for Collection.index(after:) in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], *v3);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, uint64_t, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], a2, *v4);
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, void, uint64_t, void, void, void)@<X5>, uint64_t *a5@<X8>)
{
  result = a4(*a1, a1[1], a2, *a3, a3[1], *v5);
  *a5 = result;
  a5[1] = v8;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyBidirectionalCollection<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0xF7B7uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AnyBidirectionalCollection.subscript.read(v7, *a2, a2[1], *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*AnyBidirectionalCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  *a1 = a5;
  v9 = *(a5 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x894BuLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  (*(*a4 + 256))(a2, a3);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance AnyCollection<A>@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3], *v3);
  *a3 = result;
  return result;
}

uint64_t AnyCollection.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  v9 = a5(0, a3, a4);
  swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
  v10 = a6(a1);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v10;
}

uint64_t AnyBidirectionalCollection.init(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  result = swift_dynamicCastClass(a1, v4);
  if (!result)
  {
    a1;
    return 0;
  }

  return result;
}

void AnyCollection.formIndex(after:)(unint64_t *a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*a1);
  v6 = *a1;
  v5 = a1[1];
  v7 = *a2;
  if (isUniquelyReferenced_nonNull)
  {
    (*(v7 + 272))(v6, v5);
  }

  else
  {
    v8 = (*(v7 + 264))(v6, v5);
    v10 = v9;
    swift_unknownObjectRelease(v6);
    *a1 = v8;
    a1[1] = v10;
  }
}

void AnyCollection.formIndex(_:offsetBy:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (swift_isUniquelyReferenced_nonNull(*a1))
  {
    (*(*a3 + 296))(a1, a2);
  }

  else
  {
    v6 = *a1;
    v7 = (*(*a3 + 280))(*a1, a1[1], a2);
    v9 = v8;
    swift_unknownObjectRelease(v6);
    *a1 = v7;
    a1[1] = v9;
  }
}

uint64_t AnyCollection.formIndex(_:offsetBy:limitedBy:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (swift_isUniquelyReferenced_nonNull(*a1))
  {
    return (*(*a5 + 304))(a1, a2, a3, a4) & 1;
  }

  v11 = *a1;
  v12 = (*(*a5 + 288))(*a1, a1[1], a2, a3, a4);
  v14 = v13;
  swift_unknownObjectRelease(v11);
  if (v12)
  {
    *a1 = v12;
    a1[1] = v14;
    return 1;
  }

  else
  {
    *a1 = a3;
    a1[1] = a4;
    swift_unknownObjectRetain(a3);
    return 0;
  }
}

void AnyBidirectionalCollection.formIndex(before:)(unint64_t *a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*a1);
  v6 = *a1;
  v5 = a1[1];
  v7 = *a2;
  if (isUniquelyReferenced_nonNull)
  {
    (*(v7 + 360))(v6, v5);
  }

  else
  {
    v8 = (*(v7 + 352))(v6, v5);
    v10 = v9;
    swift_unknownObjectRelease(v6);
    *a1 = v8;
    a1[1] = v10;
  }
}

id protocol witness for Collection.startIndex.getter in conformance AnyCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X2>, void *a3@<X8>)
{
  v5 = a2(*v3, *(a1 + 16));
  *a3 = v5;
  a3[1] = v6;

  return swift_unknownObjectRetain(v5);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyRandomAccessCollection<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x843DuLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AnyRandomAccessCollection.subscript.read(v7, *a2, a2[1], *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*AnyRandomAccessCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  *a1 = a5;
  v9 = *(a5 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x7EC4uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  (*(*a4 + 256))(a2, a3);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AnySequence<A>@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = (*(*v3 + 96))();
  result = v3;
  *a1 = v4;
  return result;
}

uint64_t LazyFilterSequence.Iterator.init(_base:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for LazyFilterSequence.Iterator(0, a4, a5, v13);
  v15 = (a6 + *(result + 36));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t LazyFilterSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v37 = a1;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6 = v5;
  v9 = type metadata accessor for Optional(0, v5, v7, v8);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v16, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v19 = *(AssociatedConformanceWitness + 16);
  v36 = v17;
  v20 = swift_checkMetadataState(0, v17);
  v34 = v19;
  v35 = AssociatedConformanceWitness;
  v19(v20, AssociatedConformanceWitness);
  v32 = v13;
  v33 = *(v13 + 48);
  if (v33(v12, 1, v6) == 1)
  {
LABEL_5:
    (*(v29 + 8))(v12, v30);
    v24 = 1;
    v25 = v31;
  }

  else
  {
    v21 = *(v32 + 32);
    v22 = (v32 + 8);
    while (1)
    {
      v21(v15, v12, v6);
      if ((*(v2 + *(v37 + 36)))(v15))
      {
        break;
      }

      (*v22)(v15, v6);
      v23 = swift_checkMetadataState(0, v36);
      v34(v23, v35);
      if (v33(v12, 1, v6) == 1)
      {
        goto LABEL_5;
      }
    }

    v26 = v31;
    v21(v31, v15, v6);
    v25 = v26;
    v24 = 0;
  }

  return (*(v32 + 56))(v25, v24, 1, v6);
}

__n128 LazyFilterSequence.makeIterator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 32))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6);
  v9 = *(a1 + 24);
  (*(v9 + 32))(v6, v9);
  v10 = *(a1 + 36);
  v12 = type metadata accessor for LazyFilterSequence.Iterator(0, v6, v9, v11);
  result = *(v3 + v10);
  *(a2 + *(v12 + 36)) = result;
  return result;
}

uint64_t LazyFilterSequence._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2)
{
  if (((*(v2 + *(a2 + 36)))() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 48);

  return v6(a1, v5);
}

uint64_t LazyFilterSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 8);
  v33 = a1;
  v8 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v32 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v27 - v11;
  swift_getAssociatedTypeWitness(0, a2, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = a3;
  (*(a2 + 64))(v8, a2);
  v38 = *(a2 + 72);
  v39 = a2 + 72;
  v17 = v8;
  v40 = v13;
  v37 = *(swift_getAssociatedConformanceWitness(a2, v8, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v35 = *(v37 + 8);
  v36 = v37 + 8;
  ++v34;
  v29 = (v10 + 16);
  v30 = a2 + 80;
  v27 = a2 + 192;
  v28 = (v10 + 8);
  v18 = v31;
  while (1)
  {
    v38(v17, a2);
    v19 = v40;
    v20 = v35(v16, v15, v40, v37);
    result = (*v34)(v15, v19);
    if (v20)
    {
      break;
    }

    v22 = *(v4 + *(v33 + 36));
    v23 = (*(a2 + 80))(v41, v16, v17, a2);
    v24 = v4;
    v25 = v32;
    (*v29)(v18);
    (v23)(v41, 0);
    LOBYTE(v23) = v22(v18);
    v26 = v25;
    v4 = v24;
    result = (*v28)(v18, v26);
    if (v23)
    {
      break;
    }

    (*(a2 + 192))(v16, v17, a2);
  }

  return result;
}

uint64_t LazyFilterSequence<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, char *a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  (*(*(v8 - 8) + 16))(a4, a1, v8);

  return LazyFilterSequence<>.formIndex(after:)(a4, a2, a3);
}

uint64_t LazyFilterSequence<>.formIndex(after:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(a3 + 8);
  v46 = a2;
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v45 = v10;
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v37 - v11;
  swift_getAssociatedTypeWitness(0, v5, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  (*(v14 + 16))(&v37 - v18, a1, v13);
  v52 = *(v5 + 72);
  v53 = v5 + 72;
  v52(v9, v5);
  v20 = *(swift_getAssociatedConformanceWitness(v5, v9, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v21 = *(v20 + 8);
  v50 = v20 + 8;
  v51 = v20;
  v49 = v21;
  v22 = (v21)(v19, v17, v13);
  v23 = *(v14 + 8);
  v54 = v17;
  v23(v17, v13);
  if (v22)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v38 = v14;
  v39 = a1;
  v23(a1, v13);
  v47 = *(v5 + 192);
  v48 = v5 + 192;
  v41 = (v55 + 16);
  v42 = v5 + 80;
  v40 = (v55 + 8);
  v24 = v23;
  v43 = v14 + 8;
  do
  {
    v47(v19, v9, v5);
    v25 = v54;
    v52(v9, v5);
    v26 = v49(v19, v25, v13, v51);
    v24(v25, v13);
    if (v26)
    {
      break;
    }

    v55 = *(v4 + *(v46 + 36));
    v27 = (*(v5 + 80))(v56, v19, v9, v5);
    v28 = v13;
    v29 = v44;
    v30 = v24;
    v31 = v19;
    v32 = v5;
    v33 = v45;
    (*v41)(v44);
    (v27)(v56, 0);
    LOBYTE(v27) = v55(v29);
    v34 = v29;
    v13 = v28;
    v35 = v33;
    v5 = v32;
    v19 = v31;
    v24 = v30;
    (*v40)(v34, v35);
  }

  while ((v27 & 1) == 0);
  return (*(v38 + 32))(v39, v19, v13);
}

uint64_t LazyFilterSequence<>._advanceIndex(_:step:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v48 = a2;
  v8 = *(a4 + 8);
  v37 = a3;
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v36 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v31 - v12;
  swift_getAssociatedTypeWitness(0, v6, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v45 = *(v6 + 136);
  v46 = v6 + 136;
  v43 = *(v6 + 72);
  v44 = v6 + 72;
  v49 = v9;
  v42 = *(swift_getAssociatedConformanceWitness(v6, v9, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v40 = *(v42 + 8);
  v41 = v42 + 8;
  v18 = *(v15 + 32);
  v47 = v15 + 32;
  v38 = (v15 + 8);
  v39 = v18;
  v33 = (v11 + 16);
  v34 = v6 + 80;
  v32 = (v11 + 8);
  v19 = v36;
  do
  {
    v39(v17, a1, v14);
    v20 = v49;
    v45(v17, v48, v49, v6);
    v21 = *v38;
    (*v38)(v17, v14);
    v43(v20, v6);
    v22 = v40(a1, v17, v14, v42);
    result = (v21)(v17, v14);
    if (v22)
    {
      break;
    }

    v24 = *(v5 + *(v37 + 36));
    v25 = (*(v6 + 80))(v50, a1, v49, v6);
    v26 = v6;
    v27 = a1;
    v28 = v5;
    v29 = v35;
    (*v33)(v35);
    (v25)(v50, 0);
    LOBYTE(v25) = v24(v29);
    v30 = v29;
    v5 = v28;
    a1 = v27;
    v6 = v26;
    result = (*v32)(v30, v19);
  }

  while ((v25 & 1) == 0);
  return result;
}

uint64_t LazyFilterSequence<>._ensureBidirectional(step:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v24 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v15 = type metadata accessor for Optional(0, v7, v13, v14);
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  if (a1 < 0)
  {
    v20 = a1;
    v21 = v17;
    (*(a3 + 72))(v5, a3);
    (*(a3 + 64))(v5, a3);
    (*(a3 + 144))(v12, v20, v10, v5, a3);
    v22 = *(v24 + 8);
    v22(v10, v7);
    v22(v12, v7);
    return (*(v21 + 8))(v19, v15);
  }

  return result;
}

uint64_t LazyFilterSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v32 = *(v9 - 8);
  v11 = v32;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = *(a4 + 152);
  v35 = v4;
  v17(a1, a2, v8, a4);
  v33 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v19 = (*(AssociatedConformanceWitness + 40))(a1, a2, v10, AssociatedConformanceWitness);
  v20 = *(v11 + 16);
  if (v19)
  {
    v21 = a2;
  }

  else
  {
    v21 = a1;
  }

  if (v19)
  {
    v22 = a1;
  }

  else
  {
    v22 = a2;
  }

  if (v19)
  {
    v23 = -1;
  }

  else
  {
    v23 = 1;
  }

  v20(v16, v21, v10);
  v20(v14, v22, v10);
  v24 = v14;
  v25 = *(AssociatedConformanceWitness + 8);
  v26 = *(v25 + 8);
  result = v26(v16, v24, v10, v25);
  v28 = v32;
  v29 = 0;
  if (result)
  {
LABEL_15:
    v31 = *(v28 + 8);
    v31(v24, v10);
    v31(v16, v10);
    return v29;
  }

  else
  {
    v30 = 0;
    while (1)
    {
      v29 = v30 + v23;
      if (__OFADD__(v30, v23))
      {
        break;
      }

      LazyFilterSequence<>.formIndex(after:)(v16, v34, v33);
      result = v26(v16, v24, v10, v25);
      v30 += v23;
      if (result)
      {
        v28 = v32;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t LazyFilterSequence<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift *a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a5;
  v9 = *(a4 + 1);
  v55 = a3;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v54 = v11;
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v47 - v12;
  v71 = a4;
  swift_getAssociatedTypeWitness(0, a4, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v23 = type metadata accessor for Optional(0, v14, v21, v22);
  v66 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v67 = v15;
  result = (*(v15 + 16))(a5, a1, v14);
  v27 = a2 >> 63;
  v70 = v10;
  v56 = a2 >> 63;
  v57 = a2 > 0;
  if (a2 >> 63 < 0)
  {
    v65 = v23;
    v29 = v71;
    (*(v71 + 9))(v10, v71);
    (*(v29 + 8))(v10, v29);
    (*(v29 + 18))(v20, v27 | (a2 > 0), v18, v10, v29);
    v30 = *(v67 + 8);
    v30(v18, v14);
    v30(v20, v14);
    result = v66[1](v25, v65);
    v31 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v31)
    {
      __break(1u);
      return result;
    }

    v27 = v56;
    v28 = v57;
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v28 = a2 > 0;
    if (!a2)
    {
      return result;
    }
  }

  v32 = v71;
  v65 = *(v71 + 17);
  v66 = (v71 + 136);
  v63 = *(v71 + 9);
  v64 = v71 + 72;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v71, v70, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v34 = 0;
  v62 = *(AssociatedConformanceWitness + 8);
  v60 = *(v62 + 8);
  v61 = v62 + 8;
  v35 = *(v67 + 32);
  v67 += 32;
  v58 = (v67 - 24);
  v59 = v35;
  v52 = v32 + 80;
  v51 = (v50 + 2);
  ++v50;
  v48 = a2;
  do
  {
    v49 = v34 + 1;
    do
    {
      v36 = v68;
      v59(v20, v68, v14);
      v37 = v70;
      v38 = v71;
      v65(v20, v27 | v28, v70, v71);
      v39 = *v58;
      (*v58)(v20, v14);
      v63(v37, v38);
      v40 = v60(v36, v20, v14, v62);
      result = (v39)(v20, v14);
      if (v40)
      {
        break;
      }

      v41 = *(v69 + *(v55 + 36));
      v42 = (*(v71 + 10))(v72, v68, v70);
      v43 = v14;
      v44 = v53;
      v45 = v54;
      (*v51)(v53);
      (v42)(v72, 0);
      LOBYTE(v42) = v41(v44);
      v46 = v44;
      v14 = v43;
      v27 = v56;
      v28 = v57;
      result = (*v50)(v46, v45);
    }

    while ((v42 & 1) == 0);
    v34 = v49;
  }

  while (v49 != v48);
  return result;
}

uint64_t abs<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = *(a2 - 1);
  v32 = a1;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v27 = v6;
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 8);
  v8 = *(v7 + 16);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  swift_getAssociatedTypeWitness(0, v7, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v27 - v18;
  if (v17 == a2)
  {
    v26 = v31;
    (*(v7 + 56))(a2, v7);
    if (v16 != v5)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v26 + 16))(v30, v19, a2);
    return (*(v15 + 8))(v19, v14);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a2, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v10, AssociatedConformanceWitness);
    v21 = v28;
    (*(v8 + 24))(v12, a2, v8);
    v22 = v32;
    v23 = (*(v29 + 16))(v32, v21, a2);
    v24 = v31;
    (*(v31 + 8))(v21, a2);
    if (v23)
    {
      return (*(v27 + 16))(v22, a2);
    }

    else
    {
      return (*(v24 + 16))(v30, v22, a2);
    }
  }
}

uint64_t LazyFilterSequence<>.formIndex(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, *(a3 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v10 + 32))(&v14 - v11, a1, v9);
  LazyFilterSequence<>.index(_:offsetBy:)(v12, a2, a3, a4, a1);
  return (*(v10 + 8))(v12, v9);
}

uint64_t LazyFilterSequence<>.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v51 = a2;
  v48 = a5;
  v9 = *(a4 + 8);
  v58 = a3;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v57 = v11;
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v47 - v12;
  swift_getAssociatedTypeWitness(255, a4, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v68 = type metadata accessor for Optional(0, v13, v15, v16);
  v66 = *(v68 - 1);
  v17 = MEMORY[0x1EEE9AC00](v68);
  v70 = &v47 - v18;
  v19 = *(v14 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v69 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = *(v19 + 16);
  v59 = &v47 - v26;
  v25();
  v71 = v10;
  v60 = a1 >> 63;
  v61 = a1 > 0;
  if (((a1 >> 63) & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      v67 = *(v19 + 32);
      v47 = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v27 = v59;
LABEL_4:
      v28 = v27;
      v29 = v48;
      (v67)(v48, v28, v14);
      v30 = 0;
      return (*(v19 + 56))(v29, v30, 1, v14);
    }

LABEL_7:
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v10, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v52 = 0;
    v70 = *(AssociatedConformanceWitness + 8);
    v68 = *(v70 + 1);
    v69 = v70 + 8;
    v65 = (a4 + 72);
    v66 = a4 + 136;
    v36 = (v19 + 8);
    v55 = a4 + 80;
    v54 = (v67 + 16);
    v53 = (v67 + 8);
    v64 = (v19 + 32);
    v47 = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v27 = v59;
    v50 = a1;
    v49 = v19;
    for (i = v68(v59, v51, v14, v70); (i & 1) == 0; i = v68(v27, v51, v14, v70))
    {
      ++v52;
      v38 = *v66;
      v62 = *v65;
      v63 = v38;
      v67 = *v64;
      do
      {
        (v67)(v24, v27, v14);
        v63(v24, v60 | v61, v10, a4);
        v39 = *v36;
        (*v36)(v24, v14);
        v62(v10, a4);
        v40 = v68(v27, v24, v14, v70);
        v39(v24, v14);
        if (v40)
        {
          break;
        }

        v41 = *(v6 + *(v58 + 36));
        v42 = (*(a4 + 80))(v72, v27, v71, a4);
        v44 = v56;
        v43 = v57;
        (*v54)(v56);
        (v42)(v72, 0);
        v45 = v41(v44);
        v10 = v71;
        LOBYTE(v42) = v45;
        v46 = v43;
        v27 = v59;
        (*v53)(v44, v46);
      }

      while ((v42 & 1) == 0);
      v19 = v49;
      if (v52 == v50)
      {
        goto LABEL_4;
      }
    }

    (*v36)(v27, v14);
    v30 = 1;
    v29 = v48;
    return (*(v19 + 56))(v29, v30, 1, v14);
  }

  (*(a4 + 72))(v10, a4);
  (*(a4 + 64))(v10, a4);
  v31 = v69;
  (*(a4 + 144))(v24, (a1 >> 63) | (a1 > 0), v69, v10, a4);
  v32 = *(v19 + 8);
  v32(v31, v14);
  v32(v24, v14);
  result = (*(v66 + 8))(v70, v68);
  v34 = __OFSUB__(0, a1);
  a1 = -a1;
  if (!v34)
  {
    v10 = v71;
    if (a1 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL LazyFilterSequence<>.formIndex(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5)
{
  swift_getAssociatedTypeWitness(255, a5, *(a4 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  LazyFilterSequence<>.index(_:offsetBy:limitedBy:)(a2, a3, a4, a5, &v21 - v16);
  v18 = *(v11 - 8);
  (*(v18 + 8))(a1, v11);
  v19 = (*(v18 + 48))(v17, 1, v11);
  if (v19 == 1)
  {
    (*(v15 + 8))(v17, v14);
    (*(v18 + 16))(a1, a3, v11);
  }

  else
  {
    (*(v18 + 32))(a1, v17, v11);
  }

  return v19 != 1;
}

atomic_ullong *LazyFilterSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  (*(a3 + 88))(a1, v8);
  v9 = (v4 + *(a2 + 36));
  v11 = *v9;
  v10 = v9[1];
  swift_getAssociatedTypeWitness(255, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v16 = (a4 + *(type metadata accessor for LazyFilterSequence(0, v13, *(AssociatedConformanceWitness + 8), v15) + 36));
  *v16 = v11;
  v16[1] = v10;

  return v10;
}

uint64_t LazyFilterSequence<>._customLastIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(v4 + *(a2 + 36)))())
  {
    v9 = *(a3 + 128);
    v10 = *(a2 + 16);

    return v9(a1, v10, a3);
  }

  else
  {
    swift_getAssociatedTypeWitness(0, a3, *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    v13 = v12;
    (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
    v16 = type metadata accessor for Optional(0, v13, v14, v15);
    v17 = *(*(v16 - 8) + 56);

    return v17(a4, 0, 1, v16);
  }
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazyFilterSequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0xB433uLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazyFilterSequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazyFilterSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x38, 0x59D5uLL);
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9[4] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v9[5] = v12;
  v14 = *(v12 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x59D5uLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  v16 = v15;
  v9[6] = v15;
  v17 = (*(a4 + 80))(v9, a2, v10, a4);
  (*(v13 + 16))(v16);
  v17(v9, 0);
  return LazyDropWhileSequence<>.subscript.read;
}

uint64_t LazyFilterSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a3 + 8), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  (*(*(v8 - 8) + 16))(a4, a1, v8);

  return LazyFilterSequence<>.formIndex(before:)(a4, a2, a3);
}

uint64_t LazyFilterSequence<>.formIndex(before:)(char *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v6 = *(a3 + 8);
  v7 = *(v6 + 8);
  v36 = a2;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  swift_getAssociatedTypeWitness(0, v6, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v21 = *(v15 + 32);
  v35 = v15 + 32;
  v33 = v21;
  v21(&v30 - v19, a1, v14);
  v22 = *(v6 + 64);
  v41 = v3;
  v22(v8, v6);
  v39 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v8, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v24 = (*(*(AssociatedConformanceWitness + 8) + 8))(v20, v18, v14);
  (*(v15 + 8))(v18, v14);
  if (v24)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v31 = v14;
  v32 = a1;
  v37 = *(v40 + 40);
  v38 = v40 + 40;
  v36 = *(v41 + *(v36 + 36));
  v25 = *(v39 + 80);
  v26 = (v34 + 16);
  v27 = (v34 + 8);
  do
  {
    v37(v20, v8, v40);
    v28 = v25(v42, v20, v8, v39);
    (*v26)(v12);
    (v28)(v42, 0);
    LOBYTE(v28) = (v36)(v12);
    (*v27)(v12, v10);
  }

  while ((v28 & 1) == 0);
  return v33(v32, v20, v31);
}

atomic_ullong *LazyFilterSequence.filter(_:)@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24 = a1;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  (*(*(v13 - 8) + 16))(a4, v5, v13);
  v14 = *(v9 + 32);
  v14(v11, v5, a3);
  v15 = *(v9 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject(&unk_1EEEADEA8, (v17 + 16), v15 | 7);
  v19 = *(a3 + 24);
  *(v18 + 2) = v13;
  *(v18 + 3) = v19;
  v14(v18 + v16, v11, a3);
  v20 = (v18 + v17);
  *v20 = v24;
  v20[1] = a2;
  v21 = (a4 + *(a3 + 36));
  *v21 = partial apply for closure #1 in LazyFilterSequence.filter(_:);
  v21[1] = v18;
  return a2;
}

atomic_ullong *LazySequenceProtocol.flatMap<A>(_:)@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(a5 + 32))(a3, a5);
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for LazySequenceProtocol, associated type descriptor for LazySequenceProtocol.Elements);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v12, &protocol requirements base descriptor for LazySequenceProtocol, associated conformance descriptor for LazySequenceProtocol.LazySequenceProtocol.Elements: Sequence);
  v15 = (a6 + *(type metadata accessor for LazyMapSequence(0, v13, a4, AssociatedConformanceWitness) + 44));
  *v15 = a1;
  v15[1] = a2;

  return a2;
}

uint64_t LazySequenceProtocol<>.joined()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Optional(0, a2, a2, a3);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v9, 1, a2) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v11 + 32))(a4, v9, a2);
}

uint64_t FlattenSequence.Iterator.init(_base:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int **a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for FlattenSequence.Iterator(0, a2, a3, a4) + 44);
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, a4, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v12 - 8) + 56))(a5 + v10, 1, 1, v12);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = *(*(v13 - 8) + 32);

  return v14(a5, a1, v13);
}

uint64_t specialized FlattenSequence.Iterator.next()()
{
  v1 = v0[7];
  if (!v1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v2 = v0[6];
    if ((v1 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = v0[8];
    if (v4 >> 14 != 4 * v3)
    {
      v10 = (v2 >> 59) & 1;
      if ((v1 & 0x1000000000000000) == 0)
      {
        LOBYTE(v10) = 1;
      }

      v11 = v0[8] & 0xCLL;
      v12 = 4 << v10;
      rawBits = v0[8];
      if (v11 == v12)
      {
        v20._rawBits = v0[8];
        v17 = v0[6];
        v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        v2 = v17;
        rawBits = v18._rawBits;
        v4 = v20._rawBits;
      }

      v14 = rawBits >> 16;
      if (rawBits >> 16 >= v3)
      {
        goto LABEL_29;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v21._rawBits = v4;
        v8 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v4 = v21._rawBits;
        if (v11 != v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v23[0] = v2;
          v23[1] = v1 & 0xFFFFFFFFFFFFFFLL;
          v15 = v23;
        }

        else if ((v2 & 0x1000000000000000) != 0)
        {
          v15 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22._rawBits = v4;
          v15 = _StringObject.sharedUTF8.getter(v2, v1);
          v4 = v22._rawBits;
        }

        v8 = *(v15 + v14);
        if (v11 != v12)
        {
LABEL_20:
          if ((v1 & 0x1000000000000000) == 0)
          {
LABEL_21:
            v16 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_27:
            v9 = 0;
            v0[8] = v16;
            return v8 | (v9 << 8);
          }

          goto LABEL_25;
        }
      }

      v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
      if ((v1 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      if (v3 > v4 >> 16)
      {
        v16 = String.UTF8View._foreignIndex(after:)(v4)._rawBits;
        goto LABEL_27;
      }

LABEL_29:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_6:
    v5 = specialized LazyMapSequence.Iterator.next()();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v1 = v6;
    v0[7];
    v0[6] = v7;
    v0[7] = v1;
    v0[8] = 15;
  }

  v8 = 0;
  v9 = 1;
  return v8 | (v9 << 8);
}

{
  v1 = v0[8];
  if (!v1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v2 = v0[7];
    if ((v1 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = v0[9];
    if (v4 >> 14 != 4 * v3)
    {
      v10 = (v2 >> 59) & 1;
      if ((v1 & 0x1000000000000000) == 0)
      {
        LOBYTE(v10) = 1;
      }

      v11 = v0[9] & 0xCLL;
      v12 = 4 << v10;
      rawBits = v0[9];
      if (v11 == v12)
      {
        v20._rawBits = v0[9];
        v17 = v0[7];
        v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        v2 = v17;
        rawBits = v18._rawBits;
        v4 = v20._rawBits;
      }

      v14 = rawBits >> 16;
      if (rawBits >> 16 >= v3)
      {
        goto LABEL_29;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v21._rawBits = v4;
        v8 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v4 = v21._rawBits;
        if (v11 != v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v23[0] = v2;
          v23[1] = v1 & 0xFFFFFFFFFFFFFFLL;
          v15 = v23;
        }

        else if ((v2 & 0x1000000000000000) != 0)
        {
          v15 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22._rawBits = v4;
          v15 = _StringObject.sharedUTF8.getter(v2, v1);
          v4 = v22._rawBits;
        }

        v8 = *(v15 + v14);
        if (v11 != v12)
        {
LABEL_20:
          if ((v1 & 0x1000000000000000) == 0)
          {
LABEL_21:
            v16 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_27:
            v9 = 0;
            v0[9] = v16;
            return v8 | (v9 << 8);
          }

          goto LABEL_25;
        }
      }

      v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
      if ((v1 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_25:
      if (v3 > v4 >> 16)
      {
        v16 = String.UTF8View._foreignIndex(after:)(v4)._rawBits;
        goto LABEL_27;
      }

LABEL_29:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_6:
    v5 = specialized LazyMapSequence.Iterator.next()();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v1 = v6;
    v0[8];
    v0[7] = v7;
    v0[8] = v1;
    v0[9] = 15;
  }

  v8 = 0;
  v9 = 1;
  return v8 | (v9 << 8);
}

{
  v1 = v0;
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_2:
  v3 = v1[4];
  v4 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  v5 = v1[6];
  if (v5 >> 14 != 4 * v4)
  {
    v15 = (v3 >> 59) & 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = v1[6] & 0xCLL;
    v17 = 4 << v15;
    rawBits = v1[6];
    if (v16 == v17)
    {
      v33 = v17;
      v36._rawBits = v1[6];
      v22 = v1[4];
      v23 = v4;
      v24._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      v16 = v36._rawBits & 0xC;
      v17 = v33;
      v4 = v23;
      v3 = v22;
      rawBits = v24._rawBits;
      v5 = v36._rawBits;
    }

    v19 = rawBits >> 16;
    if (rawBits >> 16 >= v4)
    {
      goto LABEL_31;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v34 = v17;
      v37._rawBits = v5;
      v25 = v4;
      v31 = v16;
      v26 = String.UTF8View._foreignSubscript(position:)(rawBits);
      v4 = v25;
      v13 = v26;
      v5 = v37._rawBits;
      if (v31 != v34)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v40 = v3;
        v41 = v2 & 0xFFFFFFFFFFFFFFLL;
        v20 = &v40;
      }

      else if ((v3 & 0x1000000000000000) != 0)
      {
        v20 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v35 = v17;
        v38._rawBits = v5;
        v32 = v16;
        v29 = v4;
        v30 = _StringObject.sharedUTF8.getter(v3, v2);
        v16 = v32;
        v17 = v35;
        v4 = v29;
        v20 = v30;
        v5 = v38._rawBits;
      }

      v13 = *(v20 + v19);
      if (v16 != v17)
      {
LABEL_22:
        if ((v2 & 0x1000000000000000) == 0)
        {
LABEL_23:
          v21 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_29:
          v14 = 0;
          v1[6] = v21;
          return v13 | (v14 << 8);
        }

        goto LABEL_27;
      }
    }

    v27 = v4;
    v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
    v4 = v27;
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_27:
    if (v4 > v5 >> 16)
    {
      v21 = String.UTF8View._foreignIndex(after:)(v5)._rawBits;
      goto LABEL_29;
    }

LABEL_31:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_5:
  while (1)
  {
    v6 = v1[1];
    v7 = *(*v1 + 16);
    if (v6 == v7)
    {
      break;
    }

    if (v6 >= v7)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = (*v1 + 16 * v6 + 32);
    v8 = *v10;
    v9 = v10[1];
    v1[1] = v6 + 1;
    v11 = v1[2];
    v39[0] = v8;
    v39[1] = v9;
    v9;
    v11(&v40, v39);
    v9;
    v12 = v40;
    v2 = v41;
    v1[5];
    v1[4] = v12;
    v1[5] = v2;
    v1[6] = 15;
    if (v2)
    {
      goto LABEL_2;
    }
  }

  v13 = 0;
  v14 = 1;
  return v13 | (v14 << 8);
}

{
  v1 = v0;
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_2:
  v3 = v1[4];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v5 = v1[6];
  if (v5 >> 14 != 4 * v4)
  {
    v11 = (v3 >> 59) & 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = v1[6] & 0xC;
    v13 = 4 << v11;
    rawBits = v1[6];
    if (v12 == v13)
    {
      v20._rawBits = v1[6];
      v17 = v1[4];
      v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      v3 = v17;
      rawBits = v18._rawBits;
      v5 = v20._rawBits;
    }

    v7 = rawBits >> 16;
    if (rawBits >> 16 >= v4)
    {
      goto LABEL_30;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v21._rawBits = v5;
      LOBYTE(v7) = String.UTF8View._foreignSubscript(position:)(rawBits);
      v5 = v21._rawBits;
      if (v12 != v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v24 = v3;
        v25 = v2 & 0xFFFFFFFFFFFFFFLL;
        v15 = &v24;
      }

      else if ((v3 & 0x1000000000000000) != 0)
      {
        v15 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22._rawBits = v5;
        v15 = _StringObject.sharedUTF8.getter(v3, v2);
        v5 = v22._rawBits;
      }

      LOBYTE(v7) = *(v15 + v7);
      if (v12 != v13)
      {
LABEL_21:
        if ((v2 & 0x1000000000000000) == 0)
        {
LABEL_22:
          v16 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
          v10 = 0;
          v1[6] = v16;
          return v7 | (v10 << 8);
        }

        goto LABEL_26;
      }
    }

    v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_26:
    if (v4 > v5 >> 16)
    {
      v16 = String.UTF8View._foreignIndex(after:)(v5)._rawBits;
      goto LABEL_28;
    }

LABEL_30:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_6:
  while (1)
  {
    v6 = *v1;
    v7 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    if (!v7)
    {
      break;
    }

    v8 = v1[2];
    v24 = v6;
    v25 = v7;
    v8(v23, &v24);
    v7;
    v9 = v23[0];
    v2 = v23[1];
    v1[5];
    v1[4] = v9;
    v1[5] = v2;
    v1[6] = 15;
    if (v2)
    {
      goto LABEL_2;
    }
  }

  v10 = 1;
  return v7 | (v10 << 8);
}

{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = (v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : v2 & 0xFFFFFFFFFFFFLL;
    v4 = v0[4];
    if (v4 >> 14 != 4 * v3)
    {
      v7 = (v2 >> 59) & 1;
      if ((v1 & 0x1000000000000000) == 0)
      {
        LOBYTE(v7) = 1;
      }

      v8 = v0[4] & 0xCLL;
      v9 = 4 << v7;
      rawBits = v0[4];
      if (v8 == v9)
      {
        v22 = v0[4];
        v25 = v0[2];
        v14 = v0[3];
        v15._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        v1 = v14;
        rawBits = v15._rawBits;
        v4 = v22;
        v2 = v25;
      }

      v11 = rawBits >> 16;
      if (rawBits >> 16 >= v3)
      {
        goto LABEL_27;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v23 = v4;
        v16 = v1;
        v17 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v1 = v16;
        v5 = v17;
        v4 = v23;
        if (v8 != v9)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v26[0] = v2;
          v26[1] = v1 & 0xFFFFFFFFFFFFFFLL;
          v12 = v26;
        }

        else if ((v2 & 0x1000000000000000) != 0)
        {
          v12 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v24 = v4;
          v21 = v1;
          v19 = _StringObject.sharedUTF8.getter(v2, v1);
          v1 = v21;
          v12 = v19;
          v4 = v24;
        }

        v5 = *(v12 + v11);
        if (v8 != v9)
        {
LABEL_18:
          if ((v1 & 0x1000000000000000) == 0)
          {
LABEL_19:
            v13 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_25:
            v6 = 0;
            v0[4] = v13;
            return v5 | (v6 << 8);
          }

          goto LABEL_23;
        }
      }

      v20 = v1;
      v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
      if ((v20 & 0x1000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      if (v3 > v4 >> 16)
      {
        v13 = String.UTF8View._foreignIndex(after:)(v4)._rawBits;
        goto LABEL_25;
      }

LABEL_27:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v5 = 0;
  v6 = 1;
  return v5 | (v6 << 8);
}

uint64_t FlattenSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = *(a1 + 24);
  v75 = *(a1 + 16);
  v76 = v5;
  swift_getAssociatedTypeWitness(255, v5, v75, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v72 = type metadata accessor for Optional(0, v6, v8, v9);
  v10 = *(v72 - 8);
  v11 = MEMORY[0x1EEE9AC00](v72);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v57 - v13;
  v14 = *(a1 + 32);
  swift_getAssociatedTypeWitness(255, v14, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = v15;
  v62 = type metadata accessor for Optional(0, v15, v17, v18);
  v19 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v57 - v20;
  swift_getAssociatedTypeWitness(255, v14, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v25 = type metadata accessor for Optional(0, v21, v23, v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v68 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v80 = &v57 - v29;
  v31 = *(v30 + 16);
  v30 += 16;
  v78 = v22 - 8;
  v79 = v31;
  v32 = *(a1 + 44);
  v77 = (v30 - 8);
  v63 = v16 - 8;
  v64 = v16;
  v58 = v19;
  v60 = (v19 + 8);
  v33 = v32;
  v82 = v14;
  v83 = v7;
  v73 = v7 - 8;
  v69 = (v10 + 16);
  v71 = (v10 + 8);
  v81 = v30;
  v66 = (v30 + 24);
  v67 = v14 + 4;
  for (i = v28; ; (*v66)(v47 + v41, v55, i))
  {
    v34 = v80;
    v79(v80, v3 + v33, v25);
    v35 = *(v22 - 8);
    v36 = *(v35 + 48);
    v37 = v36(v34, 1, v22);
    (*v77)(v34, v25);
    if (v37 == 1)
    {
      goto LABEL_6;
    }

    if (v36((v3 + v33), 1, v22) == 1)
    {
      goto LABEL_11;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v82, v83, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v39 = v61;
    (*(AssociatedConformanceWitness + 16))(v22, AssociatedConformanceWitness);
    if ((*(*(v64 - 8) + 48))(v39, 1) != 1)
    {
      break;
    }

    (*v60)(v39, v62);
LABEL_6:
    v40 = v22;
    v41 = v33;
    v43 = v75;
    v42 = v76;
    swift_getAssociatedTypeWitness(255, v76, v75, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v45 = v44;
    v46 = swift_getAssociatedConformanceWitness(v42, v43, v44, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v47 = v3;
    v48 = *(v46 + 16);
    v49 = swift_checkMetadataState(0, v45);
    v50 = v74;
    v48(v49, v46);
    v51 = v83;
    v52 = *(*(v83 - 1) + 48);
    if (v52(v50, 1, v83) == 1)
    {
      (*v71)(v50, v72);
      return (*(*(v64 - 8) + 56))(v59, 1, 1);
    }

    v53 = v70;
    v54 = v72;
    (*v69)(v70, v50, v72);
    if (v52(v53, 1, v51) == 1)
    {
LABEL_11:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v55 = v68;
    (v82[4])(v51);
    (*v71)(v50, v54);
    v22 = v40;
    (*(v35 + 56))(v55, 0, 1, v40);
    v3 = v47;
    v33 = v41;
    v25 = i;
  }

  return (*(v58 + 32))(v59, v39, v62);
}

uint64_t FlattenSequence.makeIterator()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 32))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[3];
  (*(v7 + 32))(v4, v7);
  v8 = a1[4];
  v9 = *(type metadata accessor for FlattenSequence.Iterator(0, v4, v7, v8) + 44);
  swift_getAssociatedTypeWitness(255, v7, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v8, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  return (*(*(v11 - 8) + 56))(a2 + v9, 1, 1, v11);
}

uint64_t FlattenSequence<>.Index._inner.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 32);
  swift_getAssociatedTypeWitness(255, *(*(a1 + 24) + 8), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, v2 + v4, v10);
}

uint64_t FlattenSequence<>.Index.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = *(type metadata accessor for FlattenSequence<>.Index(0, a3, a4, a5) + 44);
  swift_getAssociatedTypeWitness(255, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, a5, v14, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = type metadata accessor for Optional(0, v15, v16, v17);
  v19 = *(*(v18 - 8) + 32);

  return v19(a6 + v13, a2, v18);
}

uint64_t static FlattenSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int **a5)
{
  swift_getAssociatedTypeWitness(255, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v43 = v10;
  swift_getAssociatedTypeWitness(0, a5, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v41 - v12;
  v46 = v13;
  v16 = type metadata accessor for Optional(0, v13, v14, v15);
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v41 - v17;
  swift_getTupleTypeMetadata2(0, v16, v16, 0, 0);
  v19 = v18;
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v23 = v22;
  v24 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v22, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26 = a1;
  if ((*(*(AssociatedConformanceWitness + 8) + 8))(a1, v24, v23))
  {
    v41 = a5;
    v27 = type metadata accessor for FlattenSequence<>.Index(0, a3, a4, a5);
    v28 = v47;
    v29 = *(v27 + 44);
    v30 = *(v19 + 48);
    v31 = *(v47 + 16);
    v31(v21, v26 + v29, v16);
    v31(&v21[v30], v24 + v29, v16);
    v32 = *(v48 + 48);
    v33 = v46;
    if (v32(v21, 1, v46) == 1)
    {
      if (v32(&v21[v30], 1, v33) == 1)
      {
        v34 = 1;
      }

      else
      {
        v28 = v45;
        v16 = v19;
        v34 = 0;
      }
    }

    else
    {
      v35 = v44;
      v31(v44, v21, v16);
      if (v32(&v21[v30], 1, v33) == 1)
      {
        (*(v48 + 8))(v35, v33);
        v34 = 0;
        v28 = v45;
        v16 = v19;
      }

      else
      {
        v36 = v48;
        v37 = v42;
        (*(v48 + 32))(v42, &v21[v30], v33);
        v38 = swift_getAssociatedConformanceWitness(v41, v43, v33, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
        v34 = (*(*(v38 + 8) + 8))(v35, v37, v33);
        v39 = *(v36 + 8);
        v39(v37, v33);
        v39(v35, v33);
        v28 = v47;
      }
    }

    (*(v28 + 8))(v21, v16);
  }

  else
  {
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t static FlattenSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, swift *a5)
{
  swift_getAssociatedTypeWitness(255, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v68 = a5;
  v63 = v10;
  swift_getAssociatedTypeWitness(255, a5, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v15 = type metadata accessor for Optional(0, v11, v13, v14);
  v69 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v66 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v67 = &v56 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v65 = &v56 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v56 - v23;
  v70 = *(v12 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v62 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v56 - v27;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v29 = v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v28, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v31 = *(*(AssociatedConformanceWitness + 8) + 8);
  v71 = a2;
  if ((v31(a1, a2, v29) & 1) == 0)
  {
    return (*(AssociatedConformanceWitness + 16))(a1, v71, v29, AssociatedConformanceWitness) & 1;
  }

  v61 = type metadata accessor for FlattenSequence<>.Index(0, a3, a4, v68);
  v32 = v69;
  v33 = *(v69 + 16);
  v34 = a1;
  v58 = *(v61 + 44);
  v33(v24, a1 + v58, v15);
  v35 = *(v70 + 48);
  v36 = v35(v24, 1, v12);
  v59 = v35;
  v60 = v33;
  if (v36 == 1)
  {
    v37 = v24;
    goto LABEL_7;
  }

  v57 = a1;
  v39 = v71;
  v40 = v64;
  v41 = v24;
  v42 = *(v70 + 32);
  v42(v64, v41, v12);
  v43 = v39 + *(v61 + 44);
  v37 = v65;
  v33(v65, v43, v15);
  if (v35(v37, 1, v12) == 1)
  {
    (*(v70 + 8))(v40, v12);
    v34 = v57;
    v32 = v69;
LABEL_7:
    v44 = *(v32 + 8);
    v44(v37, v15);
    v45 = v34 + v58;
    v46 = v67;
    v47 = v60;
    v60(v67, v45, v15);
    v48 = v59;
    v49 = v59(v46, 1, v12);
    v44(v46, v15);
    if (v49 != 1 || (v50 = v66, v47(v66, v71 + *(v61 + 44), v15), v51 = v48(v50, 1, v12), v44(v50, v15), v51 != 1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v52 = 0;
    return v52 & 1;
  }

  v53 = v62;
  v42(v62, v37, v12);
  v54 = swift_getAssociatedConformanceWitness(v68, v63, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v52 = (*(v54 + 16))(v40, v53, v12, v54);
  v55 = *(v70 + 8);
  v55(v53, v12);
  v55(v40, v12);
  return v52 & 1;
}

void FlattenSequence<>.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v27 = a4;
  v28 = v6;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(255, *(v6 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v7, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v25 - v13;
  v16 = type metadata accessor for Optional(0, v11, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v20 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v28, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v21 = v29;
  v20(v30, v22, a3);
  (*(v17 + 16))(v19, v21 + *(a2 + 44), v16);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = v26;
    (*(v12 + 32))(v26, v19, v11);
    v24 = v30;
    Hasher._combine(_:)(1u);
    (*(v27 + 24))(v24, v11);
    (*(v12 + 8))(v23, v11);
  }
}

Swift::Int FlattenSequence<>.Index<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = *(a1 + 32);
  v26 = *(a1 + 24);
  v6 = *(a1 + 16);
  swift_getAssociatedTypeWitness(255, v26[1], v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v5, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - v11;
  v14 = type metadata accessor for Optional(0, v9, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  v31 = 0u;
  v32 = 0u;
  v28 = 0;
  v29 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v30 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v18 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v26, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v19 = v27;
  v18(&v28, v20, a2);
  (*(v15 + 16))(v17, v19 + *(a1 + 44), v14);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = v24;
    (*(v10 + 32))(v24, v17, v9);
    Hasher._combine(_:)(1u);
    (*(v25 + 24))(&v28, v9);
    (*(v10 + 8))(v21, v9);
  }

  return Hasher._finalize()();
}

Swift::UInt64 specialized FlattenSequence<>.startIndex.getter(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v15 = (a1 & 0x800000000000000) == 0;
  v16._rawBits = 15;
  if (v4)
  {
    rawBits = 15;
    while (1)
    {
      v8._rawBits = rawBits;
      v9 = specialized LazyMapSequence<>.subscript.getter(v8, a1, a2, a3);
      v11 = v10;
      v10;
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        break;
      }

      specialized LazyMapSequence<>.formIndex(after:)(&v16, a1, a2);
      rawBits = v16._rawBits;
      if (4 * v4 == v16._rawBits >> 14)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = 7;
    if (((a2 >> 60) & v15) != 0)
    {
      v13 = 11;
    }

    return (v4 << 16) | v13;
  }

  return rawBits;
}

Swift::UInt64 specialized FlattenSequence<>.startIndex.getter()
{
  v1 = v0[1];
  v11 = *v0;
  v12 = v1;
  v13 = v0[2];
  result = *(&v11 + 1);
  v3 = v11;
  v10 = v11;
  v4 = *(&v11 + 1) >> 14;
  if (*(&v11 + 1) >> 14 != v11 >> 14)
  {
    v5 = *(&v11 + 1);
    while (1)
    {
      v6 = specialized LazyMapSequence<>.subscript.getter(v3);
      v8 = v7;
      v7;
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        break;
      }

      specialized LazyMapSequence<>.formIndex(after:)(&v10);
      v3 = v10;
      if (v4 == v10 >> 14)
      {
        return v5;
      }
    }

    return v3;
  }

  return result;
}

uint64_t specialized FlattenSequence<>.startIndex.getter(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *i;
    v11[0] = *(i - 1);
    v11[1] = v6;
    v6;
    a2(&v12, v11);
    v6;
    v8 = v12;
    v7 = v13;
    v13;
    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return v2;
    }
  }

  return v4;
}

BOOL specialized FlattenSequence<>.startIndex.getter(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v9[0] = a1;
  v9[1] = a2;
  a2;
  a3(&v10, v9);
  a2;
  v6 = v10;
  v5 = v11;
  v11;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v7 == 0;
}

uint64_t FlattenSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v39 = a4;
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, *(a2 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v49 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v37 - v8;
  swift_getAssociatedTypeWitness(0, a2, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v38 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v37 - v15;
  v37[0] = *(a2 + 72);
  v37[1] = a2 + 72;
  (v37[0])(v5, a2);
  (*(a2 + 64))(v5, a2);
  v17 = *(swift_getAssociatedConformanceWitness(a2, v5, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v18 = *(v17 + 8);
  v46 = v17;
  v47 = v16;
  v44 = v18;
  v45 = v17 + 8;
  if ((v18)(v14, v16, v11))
  {
LABEL_5:
    v25 = *(v38 + 8);
    v25(v14, v11);
    v25(v47, v11);
    v26 = v39;
    (v37[0])(v5, a2);
    v27 = v48;
    v28 = *(type metadata accessor for FlattenSequence<>.Index(0, v5, a2, v48) + 44);
    swift_getAssociatedTypeWitness(0, v27, v49, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    return (*(*(v29 - 8) + 56))(v26 + v28, 1, 1, v29);
  }

  else
  {
    v19 = *(a2 + 80);
    v20 = (v7 + 16);
    v41 = v48 + 104;
    v42 = v19;
    v21 = (v7 + 8);
    v43 = a2 + 80;
    v40 = a2 + 192;
    while (1)
    {
      v22 = v42(v50, v14, v5, a2);
      v23 = v5;
      v24 = v49;
      (*v20)(v9);
      v22(v50, 0);
      if (((*(v48 + 104))(v24) & 1) == 0)
      {
        break;
      }

      (*v21)(v9, v49);
      (*(a2 + 192))(v14, v23, a2);
      v5 = v23;
      if (v44(v14, v47, v11, v46))
      {
        goto LABEL_5;
      }
    }

    v31 = v38;
    (*(v38 + 8))(v47, v11);
    v32 = v39;
    (*(v31 + 32))(v39, v14, v11);
    v33 = v48;
    v34 = *(type metadata accessor for FlattenSequence<>.Index(0, v23, a2, v48) + 44);
    v35 = v49;
    (*(v33 + 64))(v49, v33);
    (*v21)(v9, v35);
    swift_getAssociatedTypeWitness(0, v33, v35, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    return (*(*(v36 - 8) + 56))(v32 + v34, 0, 1, v36);
  }
}

uint64_t FlattenSequence<>.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  (*(a2 + 72))(v7);
  v8 = *(type metadata accessor for FlattenSequence<>.Index(0, v7, a2, a3) + 44);
  swift_getAssociatedTypeWitness(255, *(a2 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, a3, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v8, 1, 1, v10);
}

uint64_t FlattenSequence<>._index(after:)@<X0>(int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a1;
  v91 = a5;
  v78 = a2;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v97 = v9;
  v94 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v88 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v71 - v12;
  swift_getAssociatedTypeWitness(255, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v14 = v13;
  swift_getAssociatedTypeWitness(255, a4, v13, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v19 = type metadata accessor for Optional(0, v15, v17, v18);
  v92 = *(v19 - 8);
  v93 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v77 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v71 - v23;
  v95 = *(v16 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v90 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v71 - v27;
  v28 = swift_checkMetadataState(0, v14);
  v29 = *(v28 - 1);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v87 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v71 - v32;
  v34 = *(a3 + 80);
  v35 = v99;
  v80 = v5;
  v85 = v34;
  v86 = a3 + 80;
  v36 = v34(v100, v99, v8, a3);
  v96 = v29;
  v83 = *(v29 + 16);
  v84 = v29 + 16;
  v83(v33);
  v36(v100, 0);
  v81 = v8;
  v82 = a3;
  v89 = type metadata accessor for FlattenSequence<>.Index(0, v8, a3, a4);
  (v92[2])(v24, v35 + *(v89 + 44), v93);
  v37 = v95;
  if ((*(v95 + 48))(v24, 1, v16) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v38 = v98;
  (*(a4 + 184))(v24, v28, a4);
  v39 = *(v37 + 8);
  v39(v24, v16);
  v40 = v90;
  (*(a4 + 72))(v28, a4);
  v41 = v33;
  v42 = v96 + 8;
  v93 = *(v96 + 8);
  v93(v41, v28);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v28, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v44 = (*(*(AssociatedConformanceWitness + 8) + 8))(v38, v40, v16);
  v39(v40, v16);
  if (v44)
  {
    v49 = a4;
    v96 = v42;
    v75 = v28;
    v72 = v16;
    v39(v98, v16);
    v50 = v82;
    v51 = v79;
    v52 = v80;
    v53 = v81;
    (*(v82 + 184))(v99, v81, v82);
    v54 = *(v50 + 9);
    v92 = (v50 + 72);
    v98 = v54;
    v90 = *(swift_getAssociatedConformanceWitness(v50, v53, v97, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v76 = *(v90 + 1);
    v89 = (v90 + 8);
    v55 = (v94 + 8);
    v99 = v49;
    v74 = v49 + 13;
    v73 = (v50 + 192);
    v56 = v93;
    while (1)
    {
      v57 = v88;
      (v98)(v53, v50);
      v58 = v97;
      v59 = v76(v51, v57, v97, v90);
      v60 = v52;
      v61 = v50;
      v62 = *v55;
      (*v55)(v57, v58);
      if (v59)
      {
        v62(v51, v97);
        return FlattenSequence<>.endIndex.getter(v78, v61, v99, v91);
      }

      v63 = v85(v100, v51, v53, v61);
      v64 = v87;
      v65 = v75;
      v83(v87);
      v63(v100, 0);
      v50 = v61;
      if (((v99[13])(v65) & 1) == 0)
      {
        break;
      }

      v56(v64, v65);
      (*(v61 + 192))(v51, v53, v61);
      v52 = v60;
    }

    v66 = v64;
    v67 = v65;
    v68 = v88;
    (*(v94 + 32))(v88, v51, v97);
    v69 = v99;
    v70 = v77;
    (v99[8])(v67, v99);
    v56(v66, v67);
    (*(v95 + 56))(v70, 0, 1, v72);
    return FlattenSequence<>.Index.init(_:_:)(v68, v70, v53, v50, v69, v91);
  }

  else
  {
    v45 = v91;
    (*(v94 + 16))(v91, v99, v97);
    v46 = v16;
    v47 = *(v89 + 44);
    (*(v37 + 32))(v45 + v47, v98, v46);
    return (*(v37 + 56))(v45 + v47, 0, 1, v46);
  }
}

uint64_t FlattenSequence<>._index(before:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(255, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  swift_getAssociatedTypeWitness(255, a4, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v15 = type metadata accessor for Optional(0, v11, v13, v14);
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v89 = &v73 - v17;
  v75 = *(v12 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v73 - v20;
  v22 = swift_checkMetadataState(0, v10);
  v77 = *(v22 - 1);
  v97 = v77;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v73 - v23;
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v25 = v24;
  v85 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v73 - v29;
  v32 = *(v31 + 16);
  v93 = a1;
  v32(&v73 - v29, a1, v25);
  v33 = a3;
  v34 = *(a3 + 72);
  v35 = v8;
  v98 = v8;
  v36 = v8;
  v37 = v33;
  v34(v36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v37, v35, v25, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(v35) = (*(*(AssociatedConformanceWitness + 8) + 8))(v30, v28, v25);
  v39 = *(v85 + 8);
  v83 = v85 + 8;
  v84 = v28;
  v96 = v25;
  v40 = v25;
  v41 = v98;
  v82 = v39;
  v39(v28, v40);
  if (v35)
  {
    v42 = v84;
    (*(v37 + 136))(v30, -1, v41, v37);
    v43 = v96;
    v82(v30, v96);
    (*(v85 + 32))(v30, v42, v43);
  }

  v44 = *(v37 + 80);
  v81 = v37 + 80;
  v80 = v44;
  v45 = v44(v99, v30, v98, v37);
  v46 = *(v97 + 16);
  v47 = v92;
  v97 += 16;
  v79 = v46;
  v46(v92);
  v45(v99, 0);
  v95 = v37;
  v73 = type metadata accessor for FlattenSequence<>.Index(0, v98, v37, a4);
  v49 = v89;
  v48 = v90;
  v50 = v91;
  (*(v90 + 16))(v89, &v93[*(v73 + 44)], v91);
  v51 = v75;
  v52 = (*(v75 + 48))(v49, 1, v12);
  v93 = v30;
  if (v52 == 1)
  {
    (*(a4 + 72))(v22, a4);
    (*(v48 + 8))(v49, v50);
  }

  else
  {
    (*(v51 + 32))(v21, v49, v12);
  }

  v89 = *(a4 + 64);
  v90 = a4 + 64;
  v88 = *(swift_getAssociatedConformanceWitness(a4, v22, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v86 = *(v88 + 8);
  v87 = v88 + 8;
  v53 = (v51 + 8);
  v91 = (v77 + 8);
  v77 = v95 + 136;
  v85 += 32;
  v76 = a4 + 72;
  v78 = v22;
  v54 = v96;
  while (1)
  {
    v55 = v94;
    (v89)(v22, a4);
    v56 = v86(v21, v55, v12, v88);
    v57 = a4;
    v58 = *v53;
    (*v53)(v55, v12);
    if ((v56 & 1) == 0)
    {
      break;
    }

    v58(v21, v12);
    (*v91)(v47, v22);
    v59 = v95;
    v60 = v53;
    v61 = v84;
    v62 = v93;
    v63 = v21;
    v64 = v12;
    v65 = v98;
    (*(v95 + 136))(v93, -1, v98, v95);
    v82(v62, v54);
    v66 = v61;
    v53 = v60;
    (*v85)(v62, v66, v54);
    v67 = v62;
    v47 = v92;
    v68 = v65;
    v12 = v64;
    v21 = v63;
    v22 = v78;
    v69 = v80(v99, v67, v68, v59);
    v79(v47);
    v69(v99, 0);
    (*(v57 + 72))(v22, v57);
    a4 = v57;
  }

  v70 = v74;
  (*v85)(v74, v93, v96);
  v71 = *(v73 + 44);
  (*(v57 + 136))(v21, -1, v22, v57);
  v58(v21, v12);
  (*v91)(v47, v22);
  return (*(v75 + 56))(v70 + v71, 0, 1, v12);
}

uint64_t FlattenSequence<>.formIndex(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FlattenSequence<>.Index(0, *(a2 + 16), a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v13 - v10);
  (*(v9 + 32))(&v13 - v10, a1, v8);
  FlattenSequence<>._index(after:)(v11, a2, a3, a4, a1);
  return (*(v9 + 8))(v11, v8);
}

unint64_t specialized FlattenSequence<>.distance(from:to:)(Swift::String::Index a1, int64_t a2, char a3, Swift::UInt64 a4, int64_t a5, char a6, uint64_t a7, unint64_t a8, void (*a9)(void *__return_ptr, int *))
{
  rawBits = a4;
  v15 = a4 >> 14;
  v16 = a1._rawBits >> 14;
  if (a4 >> 14 == a1._rawBits >> 14)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v57 = a6;
    if (a3)
    {
      goto LABEL_57;
    }

    v56 = a5;
    if (a5 >= a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v57 = a6;
    v56 = a5;
    if (a4 >> 14 >= a1._rawBits >> 14)
    {
      v18 = specialized LazyMapSequence<>.subscript.getter(a1, a7, a8, a9);
      if (a3)
      {
        goto LABEL_57;
      }

      v19 = 2;
      v20 = 3;
      if (v18 >= 0x10000)
      {
        v20 = 4;
      }

      if (v18 >= 0x800)
      {
        v19 = v20;
      }

      if (v18 <= 0x7F)
      {
        v21 = 1;
      }

      else
      {
        v21 = v19;
      }

      v17 = specialized RandomAccessCollection<>.distance(from:to:)(a2, v21, v18);
      v22 = 1;
      v16 = v15;
      v53 = rawBits;
      v54 = v56;
      v55 = v57;
      rawBits = a1._rawBits;
      goto LABEL_34;
    }
  }

  v23 = HIBYTE(a8) & 0xF;
  if ((a8 & 0x2000000000000000) == 0)
  {
    v23 = a7;
  }

  v24 = 7;
  if (((a8 >> 60) & ((a7 & 0x800000000000000) == 0)) != 0)
  {
    v24 = 11;
  }

  v25._rawBits = v24 | (v23 << 16);
  v26._rawBits = 15;
  specialized Collection.count.getter(v25, v26, a7, a8);
  if (v15 != v16)
  {
    v55 = a3;
    v54 = a2;
    v30._rawBits = rawBits;
    v31 = specialized LazyMapSequence<>.subscript.getter(v30, a7, a8, a9);
    v32 = v31;
    v33 = 3;
    if (v31 >= 0x10000)
    {
      v33 = 4;
    }

    if (v31 < 0x800)
    {
      v33 = 2;
    }

    if (v31 <= 0x7F)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    if (v57)
    {
      goto LABEL_57;
    }

    v17 = specialized RandomAccessCollection<>.distance(from:to:)(v34, v56, v32);
    v22 = -1;
    v53 = a1._rawBits;
LABEL_34:
    v35._rawBits = rawBits;
    v36._rawBits = specialized LazyMapSequence<>.index(after:)(v35, a7, a8);
    v60._rawBits = v36._rawBits;
    if (v16 <= v36._rawBits >> 14)
    {
LABEL_52:
      if (v55)
      {
        return v17;
      }

      v48._rawBits = v53;
      v49 = specialized LazyMapSequence<>.subscript.getter(v48, a7, a8, a9);
      v50 = specialized RandomAccessCollection<>.distance(from:to:)(0, v54, v49);
      v47 = __OFADD__(v17, v50 * v22);
      v17 += v50 * v22;
      if (!v47)
      {
        return v17;
      }
    }

    else
    {
      while (1)
      {
        v37._rawBits = _StringGuts.validateScalarIndex(_:)(v36)._rawBits;
        if ((a8 & 0x1000000000000000) != 0)
        {
          v43 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v37._rawBits & 0xFFFFFFFFFFFF0000));
          scalarLength = v43.scalarLength;
          value = v43._0._value;
        }

        else
        {
          v39 = v37._rawBits >> 16;
          if ((a8 & 0x2000000000000000) != 0)
          {
            v58[0] = a7;
            v58[1] = a8 & 0xFFFFFFFFFFFFFFLL;
            v40 = v58;
          }

          else
          {
            v40 = ((a8 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a7 & 0x1000000000000000) == 0)
            {
              v52 = v39;
              v40 = _StringObject.sharedUTF8.getter(a7, a8);
              v39 = v52;
            }
          }

          value = _decodeScalar(_:startingAt:)(v40, v38._rawBits, v39);
        }

        v59 = value;
        (a9)(v58, &v59, scalarLength);
        if (LODWORD(v58[0]) < 0x10000)
        {
          v44 = 3;
        }

        else
        {
          v44 = 4;
        }

        if (LODWORD(v58[0]) < 0x800)
        {
          v44 = 2;
        }

        v45 = LODWORD(v58[0]) >= 0x80 ? v44 : 1;
        v46 = v45 * v22;
        v47 = __OFADD__(v17, v46);
        v17 += v46;
        if (v47)
        {
          break;
        }

        specialized LazyMapSequence<>.formIndex(after:)(&v60, a7, a8);
        v36._rawBits = v60._rawBits;
        if (v16 <= v60._rawBits >> 14)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  v27 = a3;
  v17 = 0;
  if ((v27 & 1) == 0 && (v57 & 1) == 0)
  {
    v28._rawBits = a1._rawBits;
    v29 = specialized LazyMapSequence<>.subscript.getter(v28, a7, a8, a9);
    return specialized RandomAccessCollection<>.distance(from:to:)(a2, v56, v29);
  }

  return v17;
}

Swift::Int specialized FlattenSequence<>.distance(from:to:)(Swift::String::Index a1, unint64_t a2, unint64_t a3, Swift::UInt64 a4, Swift::UInt64 a5, int a6, uint64_t a7, unint64_t a8, void (*a9)(uint64_t *__return_ptr, void *))
{
  v9 = a8;
  v11 = a5;
  v13 = a3;
  v14 = a2;
  v15 = a4 >> 14;
  v16 = a1._rawBits >> 14;
  if (a4 >> 14 != a1._rawBits >> 14)
  {
    LODWORD(v70) = a6;
    if (a4 >> 14 < a1._rawBits >> 14)
    {
      goto LABEL_18;
    }

    v67 = a5;
    rawBits = a1._rawBits;
    v18 = specialized LazyMapSequence<>.subscript.getter(a1, a7, a8, a9);
    if (v13)
    {
      goto LABEL_93;
    }

    v11 = v19;
    v69 = a4;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v13 = v18 & 0xFFFFFFFFFFFFLL;
    }

    v20 = v13 << 16;
    LODWORD(v16) = (v19 & 0x1000000000000000) == 0 || (v18 & 0x800000000000000) != 0;
    if (v16 == 1)
    {
      v21._rawBits = v20 | 7;
      if ((v19 & 0x1000000000000000) == 0)
      {
        LOBYTE(v22) = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v21._rawBits = v20 | 0xB;
    }

    v22 = (v18 & 0x800000000000000uLL) >> 59;
LABEL_47:
    if ((v14 & 0xC) == 4 << v22)
    {
      goto LABEL_70;
    }

    goto LABEL_48;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

LABEL_93:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  LOBYTE(v70) = a6;
  if (a3)
  {
    goto LABEL_93;
  }

  if (a5 >> 14 >= a2 >> 14)
  {
LABEL_23:
    v27._rawBits = v11;
    v28._rawBits = v14;
    v14 = 0;
    if (v13 & 1) != 0 || (v70)
    {
      return v14;
    }

    v29 = specialized LazyMapSequence<>.subscript.getter(a1, a7, v9, a9);
    v31 = (v29 >> 59) & 1;
    if ((v30 & 0x1000000000000000) == 0)
    {
      LOBYTE(v31) = 1;
    }

    v32 = v28._rawBits;
    v33 = 4 << v31;
    if ((v28._rawBits & 0xC) == 4 << v31)
    {
      v58 = v29;
      v59 = v30;
      v60._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v28)._rawBits;
      v30 = v59;
      v32 = v60._rawBits;
      v29 = v58;
    }

    v34 = v27._rawBits;
    if ((v27._rawBits & 0xC) == v33)
    {
      v61 = v29;
      v62 = v30;
      v63._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v27)._rawBits;
      v30 = v62;
      v34 = v63._rawBits;
      v29 = v61;
      if ((v30 & 0x1000000000000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v30 & 0x1000000000000000) == 0)
    {
LABEL_31:
      v30;
      return (v34 >> 16) - (v32 >> 16);
    }

    v64 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v64 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v64 < v32 >> 16 || v64 < v34 >> 16)
    {
      goto LABEL_92;
    }

    v65 = v30;
    v66 = String.UTF8View._foreignDistance(from:to:)(v32, v34);
    v65;
    return v66;
  }

LABEL_18:
  v23 = HIBYTE(a8) & 0xF;
  if ((a8 & 0x2000000000000000) == 0)
  {
    v23 = a7;
  }

  v24 = 7;
  if (((a8 >> 60) & ((a7 & 0x800000000000000) == 0)) != 0)
  {
    v24 = 11;
  }

  rawBits = a1._rawBits;
  v25._rawBits = v24 | (v23 << 16);
  v26._rawBits = 15;
  specialized LazyMapSequence<>.distance(from:to:)(v25, v26, a7, a8);
  a1._rawBits = rawBits;
  if (v15 == v16)
  {
    goto LABEL_23;
  }

  to = v14;
  v69 = a4;
  v35._rawBits = a4;
  v36 = specialized LazyMapSequence<>.subscript.getter(v35, a7, v9, a9);
  if ((v37 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v15 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v38 = (v36 >> 59) & 1;
  if ((v37 & 0x1000000000000000) == 0)
  {
    LODWORD(v38) = 1;
  }

  v39 = 11;
  if (v38)
  {
    v39 = 7;
  }

  if (v70)
  {
    goto LABEL_93;
  }

  v21._rawBits = v39 | (v15 << 16);
  v14 = 4 << v38;
  if ((v39 & 0xC) == 4 << v38)
  {
LABEL_81:
    v67 = v11;
    v52._rawBits = v21._rawBits;
    v53 = v37;
    v54._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v52)._rawBits;
    v37 = v53;
    v21._rawBits = v54._rawBits;
  }

  if ((v11 & 0xC) == v14)
  {
    v55 = v37;
    v56._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
    v37 = v55;
    v11 = v56._rawBits;
    if ((v55 & 0x1000000000000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_83:
    if (v15 < v21._rawBits >> 16)
    {
      goto LABEL_92;
    }

    v57._rawBits = v11;
    if (v15 < v11 >> 16)
    {
      goto LABEL_92;
    }

    v11 = v37;
    v14 = String.UTF8View._foreignDistance(from:to:)(v21, v57);
    v11;
    goto LABEL_44;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {
    goto LABEL_83;
  }

LABEL_43:
  v37;
  v14 = (v11 >> 16) - (v21._rawBits >> 16);
LABEL_44:
  v21._rawBits = -1;
  v70 = rawBits;
  for (v40._rawBits = v69; ; v40._rawBits = rawBits)
  {
    v41._rawBits = specialized LazyMapSequence<>.index(after:)(v40, a7, v9);
    v72._rawBits = v41._rawBits;
    if (v16 <= v41._rawBits >> 14)
    {
      break;
    }

    while (1)
    {
      v43 = specialized LazyMapSequence<>.subscript.getter(v41, a7, v9, a9);
      v11 = v42;
      if ((v42 & 0x1000000000000000) != 0)
      {
        v15 = String.UTF8View._foreignCount()();
        v11;
      }

      else
      {
        v42;
        v15 = (v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v43 & 0xFFFFFFFFFFFFLL;
      }

      v44 = __OFADD__(v14, v15 * v21._rawBits);
      v14 += v15 * v21._rawBits;
      if (v44)
      {
        break;
      }

      specialized LazyMapSequence<>.formIndex(after:)(&v72, a7, v9);
      v41._rawBits = v72._rawBits;
      if (v16 <= v72._rawBits >> 14)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_70:
    v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14)._rawBits;
LABEL_48:
    if ((v21._rawBits & 0xC) == 4 << v16)
    {
      v21._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v21)._rawBits;
      if ((v11 & 0x1000000000000000) == 0)
      {
LABEL_50:
        v11;
        v14 = (v21._rawBits >> 16) - (v14 >> 16);
        goto LABEL_51;
      }
    }

    else if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_50;
    }

    if (v13 < v14 >> 16 || v13 < v21._rawBits >> 16)
    {
      goto LABEL_92;
    }

    v14 = String.UTF8View._foreignDistance(from:to:)(v14, v21);
    v11;
LABEL_51:
    v21._rawBits = 1;
    v16 = v15;
    to = v67;
    v13 = v70;
    v70 = v69;
  }

LABEL_61:
  if ((v13 & 1) == 0)
  {
    v45._rawBits = v70;
    v46 = specialized LazyMapSequence<>.subscript.getter(v45, a7, v9, a9);
    v48 = (v46 >> 59) & 1;
    if ((v47 & 0x1000000000000000) == 0)
    {
      LOBYTE(v48) = 1;
    }

    if ((to & 0xC) != 4 << v48)
    {
      if ((v47 & 0x1000000000000000) == 0)
      {
        goto LABEL_66;
      }

LABEL_76:
      v51 = v46 & 0xFFFFFFFFFFFFLL;
      v9 = v47;
      if ((v47 & 0x2000000000000000) != 0)
      {
        v51 = HIBYTE(v47) & 0xF;
      }

      if (v51 >= to >> 16)
      {
        v13 = String.UTF8View._foreignDistance(from:to:)(15, to);
        v9;
        goto LABEL_67;
      }

LABEL_92:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v49 = v46;
    v9 = v47;
    v50._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    v47 = v9;
    to = v50._rawBits;
    v46 = v49;
    if ((v9 & 0x1000000000000000) != 0)
    {
      goto LABEL_76;
    }

LABEL_66:
    v47;
    v13 = to >> 16;
LABEL_67:
    v44 = __OFADD__(v14, v13 * v21._rawBits);
    v14 += v13 * v21._rawBits;
    if (v44)
    {
      __break(1u);
      goto LABEL_81;
    }
  }

  return v14;
}

Swift::UInt64 specialized FlattenSequence<>.distance(from:to:)(Swift::UInt64 a1, Swift::UInt64 a2, uint64_t a3, Swift::UInt64 a4, Swift::UInt64 a5, uint64_t a6)
{
  v7 = a6;
  v8._rawBits = a5;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = v6[1];
  v74 = *v6;
  v75 = v12;
  v76 = v6[2];
  v13 = a4 >> 14;
  v14 = a1 >> 14;
  if (a4 >> 14 != a1 >> 14)
  {
    v16 = a4;
    if (a4 >> 14 < a1 >> 14)
    {
      specialized LazyMapSequence<>.distance(from:to:)(*(&v74 + 8), v74, a3);
      v17 = specialized LazyMapSequence<>.subscript.getter(v16);
      if ((v18 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v13 = v17 & 0xFFFFFFFFFFFFLL;
      }

      v19 = (v17 >> 59) & 1;
      if ((v18 & 0x1000000000000000) == 0)
      {
        LODWORD(v19) = 1;
      }

      v20 = 11;
      if (v19)
      {
        v20 = 7;
      }

      if (v7)
      {
        goto LABEL_87;
      }

      rawBits = v20 | (v13 << 16);
      v7 = 4 << v19;
      to = v10;
      if ((v20 & 0xC) == 4 << v19)
      {
        goto LABEL_65;
      }

      while (1)
      {
        if ((v8._rawBits & 0xC) == v7)
        {
          v46._rawBits = v8._rawBits;
          v47 = v18;
          v48._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v46)._rawBits;
          v18 = v47;
          v8._rawBits = v48._rawBits;
          if ((v18 & 0x1000000000000000) == 0)
          {
LABEL_17:
            v18;
            v22 = (v8._rawBits >> 16) - (rawBits >> 16);
            goto LABEL_18;
          }
        }

        else if ((v18 & 0x1000000000000000) == 0)
        {
          goto LABEL_17;
        }

        if (v13 < rawBits >> 16 || v13 < v8._rawBits >> 16)
        {
          goto LABEL_85;
        }

        v49._rawBits = rawBits;
        v50 = v18;
        v22 = String.UTF8View._foreignDistance(from:to:)(v49, v8);
        v50;
LABEL_18:
        v23 = -1;
        v8._rawBits = v11;
LABEL_47:
        v35 = specialized LazyMapSequence<>.index(after:)(v16);
        v73 = v35;
        if (v14 <= v35 >> 14)
        {
LABEL_56:
          if (v9)
          {
            return v22;
          }

          v40 = specialized LazyMapSequence<>.subscript.getter(v8._rawBits);
          v41 = (v40 >> 59) & 1;
          if ((v39 & 0x1000000000000000) == 0)
          {
            LOBYTE(v41) = 1;
          }

          if ((to & 0xC) != 4 << v41)
          {
            if ((v39 & 0x1000000000000000) == 0)
            {
              goto LABEL_61;
            }

LABEL_81:
            v70 = v40 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v70 = HIBYTE(v39) & 0xF;
            }

            if (v70 >= to >> 16)
            {
              v71 = v39;
              v42 = String.UTF8View._foreignDistance(from:to:)(15, to);
              v71;
              goto LABEL_62;
            }

LABEL_85:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v68 = v39;
          v69._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
          v39 = v68;
          to = v69._rawBits;
          if ((v68 & 0x1000000000000000) != 0)
          {
            goto LABEL_81;
          }

LABEL_61:
          v39;
          v42 = to >> 16;
LABEL_62:
          v38 = __OFADD__(v22, v42 * v23);
          v22 += v42 * v23;
          if (!v38)
          {
            return v22;
          }

          __break(1u);
LABEL_87:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        while (1)
        {
          v37 = specialized LazyMapSequence<>.subscript.getter(v35);
          rawBits = v36;
          if ((v36 & 0x1000000000000000) != 0)
          {
            v11 = String.UTF8View._foreignCount()();
            rawBits;
          }

          else
          {
            v36;
            v11 = (rawBits & 0x2000000000000000) != 0 ? HIBYTE(rawBits) & 0xF : v37 & 0xFFFFFFFFFFFFLL;
          }

          v38 = __OFADD__(v22, v11 * v23);
          v22 += v11 * v23;
          if (v38)
          {
            break;
          }

          specialized LazyMapSequence<>.formIndex(after:)(&v73);
          v35 = v73;
          if (v14 <= v73 >> 14)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_65:
        v43._rawBits = rawBits;
        v44 = v18;
        v45._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v43)._rawBits;
        v18 = v44;
        rawBits = v45._rawBits;
      }
    }

    v28 = specialized LazyMapSequence<>.subscript.getter(a1);
    if (v9)
    {
      goto LABEL_87;
    }

    if ((v29 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(v29) & 0xF;
    }

    else
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v31 = v30 << 16;
    v32 = (v29 & 0x1000000000000000) == 0 || (v28 & 0x800000000000000) != 0;
    if (v32 == 1)
    {
      v33 = v31 | 7;
      if ((v29 & 0x1000000000000000) == 0)
      {
        LOBYTE(v34) = 1;
        goto LABEL_41;
      }
    }

    else
    {
      v33 = v31 | 0xB;
    }

    v34 = (v28 & 0x800000000000000uLL) >> 59;
LABEL_41:
    if ((v10 & 0xC) == 4 << v34)
    {
      v59._rawBits = v10;
      v60 = v29;
      v61._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v59)._rawBits;
      v29 = v60;
      v10 = v61._rawBits;
    }

    if ((v33 & 0xC) == 4 << v32)
    {
      v62._rawBits = v33;
      v63 = v29;
      v64._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v62)._rawBits;
      v29 = v63;
      v33 = v64._rawBits;
      if ((v29 & 0x1000000000000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else if ((v29 & 0x1000000000000000) == 0)
    {
LABEL_45:
      v29;
      v22 = (v33 >> 16) - (v10 >> 16);
      goto LABEL_46;
    }

    if (v30 < v10 >> 16 || v30 < v33 >> 16)
    {
      goto LABEL_85;
    }

    v65 = v29;
    v66._rawBits = v33;
    v67 = v65;
    v22 = String.UTF8View._foreignDistance(from:to:)(v10, v66);
    v67;
LABEL_46:
    v23 = 1;
    v14 = v13;
    to = v8._rawBits;
    v9 = v7;
    v8._rawBits = v16;
    v16 = v11;
    goto LABEL_47;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_87;
  }

  if (a3)
  {
    goto LABEL_87;
  }

  if (a5 >> 14 < a2 >> 14)
  {
    specialized LazyMapSequence<>.distance(from:to:)(*(&v74 + 8), v74, a3);
  }

  v25 = specialized LazyMapSequence<>.subscript.getter(v11);
  v26 = (v25 >> 59) & 1;
  if ((v24 & 0x1000000000000000) == 0)
  {
    LOBYTE(v26) = 1;
  }

  v27 = 4 << v26;
  if ((v10 & 0xC) == 4 << v26)
  {
    v51 = v24;
    v52._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v10)._rawBits;
    v24 = v51;
    v10 = v52._rawBits;
  }

  if ((v8._rawBits & 0xC) == v27)
  {
    v53._rawBits = v8._rawBits;
    v54 = v24;
    v55._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v53)._rawBits;
    v24 = v54;
    v8._rawBits = v55._rawBits;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v24 & 0x1000000000000000) == 0)
  {
LABEL_28:
    v24;
    return (v8._rawBits >> 16) - (v10 >> 16);
  }

  v56 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v56 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v56 < v10 >> 16 || v56 < v8._rawBits >> 16)
  {
    goto LABEL_85;
  }

  v57 = v24;
  v58 = String.UTF8View._foreignDistance(from:to:)(v10, v8);
  v57;
  return v58;
}

Swift::UInt64 specialized FlattenSequence<>.distance(from:to:)(int64_t a1, Swift::UInt64 a2, char a3, int64_t a4, Swift::UInt64 a5, Swift::UInt64 a6, uint64_t a7, void (*a8)(unint64_t *__return_ptr, uint64_t *))
{
  v9 = a6;
  v11 = a4;
  rawBits = a2;
  if (a4 != a1)
  {
    v14 = a1;
    v15 = a7 + 32;
    v62 = a7 + 32;
    if (a4 < a1)
    {
      v63 = a3;
      to = a2;
      sub_1802E86D0(a4, 1, a7);
      v16 = (v15 + 16 * v11);
      v17 = v16[1];
      v68 = *v16;
      v69 = v17;
      v17;
      a8(&v70, &v68);
      v17;
      v18 = v71;
      if ((v71 & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(v71) & 0xF;
      }

      else
      {
        v19 = v70 & 0xFFFFFFFFFFFFLL;
      }

      v20 = (v70 >> 59) & 1;
      if ((v71 & 0x1000000000000000) == 0)
      {
        LODWORD(v20) = 1;
      }

      v21 = 11;
      if (v20)
      {
        v21 = 7;
      }

      if ((v9 & 1) == 0)
      {
        v9 = v21 | (v19 << 16);
        v22 = 4 << v20;
        if ((v21 & 0xC) == 4 << v20)
        {
          goto LABEL_70;
        }

        goto LABEL_16;
      }

      goto LABEL_92;
    }

    sub_1802E86D0(a1, 1, a7);
    v31 = (v15 + 16 * v14);
    v32 = v31[1];
    v68 = *v31;
    v69 = v32;
    v32;
    a8(&v70, &v68);
    v32;
    if (a3)
    {
      goto LABEL_92;
    }

    v33 = v71;
    if ((v71 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v71) & 0xF;
    }

    else
    {
      v34 = v70 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 << 16;
    v36 = (v71 & 0x1000000000000000) == 0 || (v70 & 0x800000000000000) != 0;
    if (v36 == 1)
    {
      v18 = v35 | 7;
      if ((v71 & 0x1000000000000000) == 0)
      {
        LOBYTE(v37) = 1;
        goto LABEL_40;
      }
    }

    else
    {
      v18 = v35 | 0xB;
    }

    v37 = (v70 & 0x800000000000000) >> 59;
LABEL_40:
    if ((rawBits & 0xC) == 4 << v37)
    {
      toa._rawBits = v71;
      v52._rawBits = rawBits;
      v53 = v34;
      v54._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v52)._rawBits;
      v34 = v53;
      rawBits = v54._rawBits;
      v33 = toa._rawBits;
    }

    if ((v18 & 0xC) == 4 << v36)
    {
      tob._rawBits = v33;
      v55._rawBits = v18;
      v56 = v34;
      v57._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v55)._rawBits;
      v34 = v56;
      v18 = v57._rawBits;
      v33 = tob._rawBits;
      if ((tob._rawBits & 0x1000000000000000) == 0)
      {
        goto LABEL_44;
      }
    }

    else if ((v33 & 0x1000000000000000) == 0)
    {
LABEL_44:
      v33;
      v23 = (v18 >> 16) - (rawBits >> 16);
LABEL_45:
      v22 = 1;
      to = a5;
      v63 = v9;
      a5 = v11;
      v11 = v14;
      while (1)
      {
        v19 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          if (v19 >= a5)
          {
LABEL_59:
            if (v63)
            {
              return v23;
            }

            sub_1802E86D0(a5, 1, a7);
            v41 = (v62 + 16 * a5);
            v42 = v41[1];
            v68 = *v41;
            v69 = v42;
            v42;
            a8(&v70, &v68);
            v42;
            v44 = v70;
            v43 = v71;
            v45 = (v70 >> 59) & 1;
            if ((v71 & 0x1000000000000000) == 0)
            {
              LOBYTE(v45) = 1;
            }

            if ((to & 0xC) != 4 << v45)
            {
              if ((v71 & 0x1000000000000000) == 0)
              {
                goto LABEL_64;
              }

LABEL_86:
              v60 = v44 & 0xFFFFFFFFFFFFLL;
              if ((v43 & 0x2000000000000000) != 0)
              {
                v60 = HIBYTE(v43) & 0xF;
              }

              if (v60 >= to >> 16)
              {
                v61 = v43;
                v46 = String.UTF8View._foreignDistance(from:to:)(15, to);
                v61;
                goto LABEL_65;
              }

LABEL_90:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v59 = v71;
            to = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
            v43 = v59;
            if ((v59 & 0x1000000000000000) != 0)
            {
              goto LABEL_86;
            }

LABEL_64:
            v43;
            v46 = to >> 16;
LABEL_65:
            v40 = __OFADD__(v23, v46 * v22);
            v23 += v46 * v22;
            if (!v40)
            {
              return v23;
            }

            __break(1u);
LABEL_92:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v9 = a7 + 16 * v11 + 56;
          v14 = v11 + 1;
          while (1)
          {
            if ((v19 & 0x8000000000000000) != 0 || v14 >= *(a7 + 16))
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v38 = *v9;
            v68 = *(v9 - 8);
            v69 = v38;
            v38;
            a8(&v70, &v68);
            v38;
            v39 = v70;
            v18 = v71;
            if ((v71 & 0x1000000000000000) != 0)
            {
              v11 = String.UTF8View._foreignCount()();
              v18;
            }

            else
            {
              v71;
              v11 = (v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : v39 & 0xFFFFFFFFFFFFLL;
            }

            v40 = __OFADD__(v23, v11 * v22);
            v23 += v11 * v22;
            if (v40)
            {
              break;
            }

            ++v14;
            v9 += 16;
            if (a5 == v14)
            {
              goto LABEL_59;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_70:
        v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
LABEL_16:
        if ((a5 & 0xC) == v22)
        {
          a5 = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
          if ((v18 & 0x1000000000000000) == 0)
          {
LABEL_18:
            v18;
            v23 = (a5 >> 16) - (v9 >> 16);
            goto LABEL_19;
          }
        }

        else if ((v18 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }

        if (v19 < v9 >> 16 || v19 < a5 >> 16)
        {
          goto LABEL_90;
        }

        v23 = String.UTF8View._foreignDistance(from:to:)(v9, a5);
        v18;
LABEL_19:
        v22 = -1;
        a5 = v14;
      }
    }

    if (v34 < rawBits >> 16 || v34 < v18 >> 16)
    {
      goto LABEL_90;
    }

    v58._rawBits = v18;
    v18 = v33;
    v23 = String.UTF8View._foreignDistance(from:to:)(rawBits, v58);
    v18;
    goto LABEL_45;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_92;
  }

  if (a3)
  {
    goto LABEL_92;
  }

  sub_1802E86D0(a4, 1, a7);
  v24 = a7 + 16 * v11;
  v25 = *(v24 + 40);
  v68 = *(v24 + 32);
  v69 = v25;
  v25;
  a8(&v70, &v68);
  v25;
  v27 = v70;
  v26 = v71;
  v28 = (v70 >> 59) & 1;
  if ((v71 & 0x1000000000000000) == 0)
  {
    LOBYTE(v28) = 1;
  }

  v29 = 4 << v28;
  if ((rawBits & 0xC) == 4 << v28)
  {
    v47 = v71;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v26 = v47;
  }

  if ((a5 & 0xC) == v29)
  {
    v48 = v26;
    a5 = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
    v26 = v48;
    if ((v48 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v26 & 0x1000000000000000) == 0)
  {
LABEL_27:
    v26;
    return (a5 >> 16) - (rawBits >> 16);
  }

  v49 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v49 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v49 < rawBits >> 16 || v49 < a5 >> 16)
  {
    goto LABEL_90;
  }

  v50 = v26;
  v51 = String.UTF8View._foreignDistance(from:to:)(rawBits, a5);
  v50;
  return v51;
}

unint64_t specialized FlattenSequence<>.distance(from:to:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, int a7, void (*a8)(uint64_t *__return_ptr, int *))
{
  v12 = a3;
  if (a4 == a1)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      goto LABEL_36;
    }

    if (!a4)
    {
      v25 = a7;
      a8(&v26, &v25);
      return specialized RandomAccessCollection<>.distance(from:to:)(a2, a5, v26);
    }

    goto LABEL_34;
  }

  if (a4 >= a1)
  {
    if (a1)
    {
      goto LABEL_34;
    }

    v15 = a4;
    v25 = a7;
    a8(&v26, &v25);
    if (v12)
    {
      goto LABEL_36;
    }

    v19 = 2;
    v20 = 3;
    if (v26 >= 0x10000)
    {
      v20 = 4;
    }

    if (v26 > 0x7FF)
    {
      v19 = v20;
    }

    if (v26 >= 0x80)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(a2, v21, v26);
    v18 = 1;
    a2 = a5;
    v12 = a6;
  }

  else
  {
    if (a4)
    {
      goto LABEL_34;
    }

    v15 = a1;
    v25 = a7;
    a8(&v26, &v25);
    v16 = 3;
    if (v26 >= 0x10000)
    {
      v16 = 4;
    }

    if (v26 <= 0x7FF)
    {
      v16 = 2;
    }

    if (v26 >= 0x80)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1;
    }

    if (a6)
    {
      goto LABEL_36;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(v17, a5, v26);
    v18 = -1;
  }

  if (v15 >= 2)
  {
LABEL_34:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v12 & 1) == 0)
  {
    if (v15)
    {
      goto LABEL_34;
    }

    v25 = a7;
    v22 = result;
    a8(&v26, &v25);
    v23 = specialized RandomAccessCollection<>.distance(from:to:)(0, a2, v26);
    v24 = __OFADD__(v22, v23 * v18);
    result = v22 + v23 * v18;
    if (v24)
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  return result;
}

Swift::UInt64 specialized FlattenSequence<>.distance(from:to:)(uint64_t a1, Swift::UInt64 rawBits, char a3, uint64_t a4, Swift::UInt64 a5, char a6, uint64_t a7, unint64_t a8, void (*a9)(unint64_t *__return_ptr, uint64_t *))
{
  v13 = a3;
  v15 = a9;
  if (a4 == a1)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

LABEL_81:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3)
    {
      goto LABEL_81;
    }

    if (!a4)
    {
      v61 = a7;
      v62 = a8;
      a8;
      a9(&v63, &v61);
      a8;
      v25 = v63;
      v24 = v64;
      v26 = (v63 >> 59) & 1;
      if ((v64 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      if ((rawBits & 0xC) == 4 << v26)
      {
        v42 = v64;
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
        v24 = v42;
      }

      if ((a5 & 0xC) == v27)
      {
        v43 = v24;
        a5 = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
        v24 = v43;
        if ((v43 & 0x1000000000000000) == 0)
        {
          goto LABEL_29;
        }
      }

      else if ((v24 & 0x1000000000000000) == 0)
      {
LABEL_29:
        v24;
        return (a5 >> 16) - (rawBits >> 16);
      }

      v44 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v44 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v44 >= rawBits >> 16 && v44 >= a5 >> 16)
      {
        v45 = v24;
        v46._rawBits = rawBits;
        v47 = v45;
        v48 = String.UTF8View._foreignDistance(from:to:)(v46, a5);
        v47;
        return v48;
      }

LABEL_79:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_59:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a4 < a1)
  {
    if (a4)
    {
      goto LABEL_59;
    }

    v60 = a1;
    v61 = a7;
    v62 = a8;
    a8;
    a9(&v63, &v61);
    a8;
    v17 = v64;
    if ((v64 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v64) & 0xF;
    }

    else
    {
      v18 = v63 & 0xFFFFFFFFFFFFLL;
    }

    v19 = (v63 >> 59) & 1;
    if ((v64 & 0x1000000000000000) == 0)
    {
      LODWORD(v19) = 1;
    }

    v20 = 11;
    if (v19)
    {
      v20 = 7;
    }

    if (a6)
    {
      goto LABEL_81;
    }

    v21 = v20 | (v18 << 16);
    v22 = 4 << v19;
    if ((v20 & 0xC) == 4 << v19)
    {
      v56 = v64;
      v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v21)._rawBits;
      v17 = v56;
    }

    if ((a5 & 0xC) == v22)
    {
      v57 = v17;
      a5 = _StringGuts._slowEnsureMatchingEncoding(_:)(a5)._rawBits;
      v17 = v57;
      v15 = a9;
      if ((v57 & 0x1000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = a9;
      if ((v17 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v17;
        result = (a5 >> 16) - (v21 >> 16);
LABEL_20:
        v23 = -1;
        goto LABEL_49;
      }
    }

    if (v18 < v21 >> 16 || v18 < a5 >> 16)
    {
      goto LABEL_79;
    }

    v39._rawBits = a5;
    v40 = v17;
    v41 = String.UTF8View._foreignDistance(from:to:)(v21, v39);
    v40;
    result = v41;
    goto LABEL_20;
  }

  if (a1)
  {
    goto LABEL_59;
  }

  v60 = a4;
  v61 = a7;
  v62 = a8;
  a8;
  a9(&v63, &v61);
  a8;
  if (v13)
  {
    goto LABEL_81;
  }

  v28 = v64;
  if ((v64 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v64) & 0xF;
  }

  else
  {
    v29 = v63 & 0xFFFFFFFFFFFFLL;
  }

  v30 = v29 << 16;
  v31 = (v64 & 0x1000000000000000) == 0 || (v63 & 0x800000000000000) != 0;
  if (v31 == 1)
  {
    v32._rawBits = v30 | 7;
    if ((v64 & 0x1000000000000000) == 0)
    {
      LOBYTE(v33) = 1;
      goto LABEL_43;
    }
  }

  else
  {
    v32._rawBits = v30 | 0xB;
  }

  v33 = (v63 & 0x800000000000000) >> 59;
LABEL_43:
  if ((rawBits & 0xC) == 4 << v33)
  {
    v58 = v64;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v28 = v58;
  }

  if ((v32._rawBits & 0xC) == 4 << v31)
  {
    v59 = v28;
    v32._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v32)._rawBits;
    v28 = v59;
    if ((v59 & 0x1000000000000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_71:
    if (v29 < rawBits >> 16 || v29 < v32._rawBits >> 16)
    {
      goto LABEL_79;
    }

    v49 = v28;
    v50._rawBits = rawBits;
    v51 = v49;
    v52 = String.UTF8View._foreignDistance(from:to:)(v50, v32);
    v51;
    result = v52;
    goto LABEL_48;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_47:
  v28;
  result = (v32._rawBits >> 16) - (rawBits >> 16);
LABEL_48:
  v23 = 1;
  rawBits = a5;
  v13 = a6;
LABEL_49:
  if (v60 >= 2)
  {
    goto LABEL_59;
  }

  if ((v13 & 1) == 0)
  {
    if (v60)
    {
      goto LABEL_59;
    }

    v34 = result;
    v61 = a7;
    v62 = a8;
    a8;
    v15(&v63, &v61);
    a8;
    v36 = v63;
    v35 = v64;
    v37 = (v63 >> 59) & 1;
    if ((v64 & 0x1000000000000000) == 0)
    {
      LOBYTE(v37) = 1;
    }

    if ((rawBits & 0xC) == 4 << v37)
    {
      v53 = v64;
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
      v35 = v53;
      if ((v53 & 0x1000000000000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else if ((v64 & 0x1000000000000000) == 0)
    {
LABEL_56:
      v35;
      v38 = rawBits >> 16;
LABEL_57:
      result = v34 + v38 * v23;
      if (__OFADD__(v34, v38 * v23))
      {
        __break(1u);
        goto LABEL_81;
      }

      return result;
    }

    v54 = v36 & 0xFFFFFFFFFFFFLL;
    if ((v35 & 0x2000000000000000) != 0)
    {
      v54 = HIBYTE(v35) & 0xF;
    }

    if (v54 < rawBits >> 16)
    {
      goto LABEL_79;
    }

    v55 = v35;
    v38 = String.UTF8View._foreignDistance(from:to:)(15, rawBits);
    v55;
    goto LABEL_57;
  }

  return result;
}

uint64_t FlattenSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5)
{
  v9 = *(a3 + 16);
  v10 = type metadata accessor for FlattenSequence<>.Index(0, v9, a4, a5);
  v151 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v168 = v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v156 = v134 - v13;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v169 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v155 = v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v157 = v134 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v163 = v134 - v19;
  v166 = v20;
  swift_getAssociatedTypeWitness(255, a5, v20, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v22 = v21;
  v146 = type metadata accessor for Optional(0, v21, v23, v24);
  v148 = *(v146 - 8);
  v25 = MEMORY[0x1EEE9AC00](v146);
  v140 = v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v153 = v134 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v154 = v134 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v159 = (v134 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v161 = v134 - v34;
  v147 = v22;
  v150 = *(v22 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v138 = v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v141 = v134 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v139 = v134 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v158 = v134 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v162 = v134 - v43;
  swift_getAssociatedTypeWitness(0, a4, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v45 = v44;
  v144 = *(v44 - 8);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v142 = v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = v134 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = v134 - v51;
  v53 = a2;
  v160 = a1;
  v167 = a5;
  v54 = static FlattenSequence<>.Index.< infix(_:_:)(a2, a1, v9, a4, a5);
  v152 = v10;
  if (v54)
  {
    (*(a4 + 72))(v9, a4);
    (*(a4 + 64))(v9, a4);
    (*(a4 + 152))(v52, v50, v9, a4);
    v55 = *(v144 + 8);
    v55(v50, v45);
    v55(v52, v45);
    v10 = v152;
  }

  v145 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v9, v45, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v165 = v45;
  v56 = v160;
  v57 = (*(*(AssociatedConformanceWitness + 8) + 8))(v160, a2, v45);
  v143 = a4;
  if ((v57 & 1) == 0)
  {
    v67 = *(v151 + 16);
    v68 = v54;
    v69 = (v169 + 16);
    v70 = v147;
    v161 = (v169 + 16);
    v162 = (a4 + 80);
    if (v68)
    {
      v71 = v156;
      v67(v156, v53, v10);
      v67(v168, v56, v10);
      v160 = *(a4 + 80);
      v72 = (v160)(v170, v71, v145, a4);
      v73 = *v69;
      v74 = v157;
      v75 = v166;
      v159 = v73;
      v73(v157);
      v72(v170, 0);
      v76 = v152;
      v77 = v167;
      v78 = v139;
      (v167[9])(v75, v167);
      v79 = &v71[*(v76 + 44)];
      v80 = v154;
      v137 = *(v148 + 16);
      v137(v154, v79, v146);
      v81 = v150;
      v136 = *(v150 + 48);
      if (v136(v80, 1, v70) == 1)
      {
        goto LABEL_25;
      }

      v135 = v77[19];
      v82 = (v135)(v78, v80, v75, v77);
      v83 = v78;
      v66 = v82;
      v158 = -1;
    }

    else
    {
      v88 = v156;
      v67(v156, v56, v10);
      v67(v168, v53, v10);
      v160 = *(a4 + 80);
      v89 = (v160)(v170, v88, v145, a4);
      v90 = v155;
      v75 = v166;
      v159 = *v69;
      v159(v155);
      v89(v170, 0);
      v91 = &v88[*(v152 + 44)];
      v92 = v153;
      v137 = *(v148 + 16);
      v137(v153, v91, v146);
      v81 = v150;
      v136 = *(v150 + 48);
      v93 = v136(v92, 1, v70);
      v77 = v167;
      if (v93 == 1)
      {
        goto LABEL_25;
      }

      v94 = v141;
      (v167[9])(v75, v167);
      v135 = v77[19];
      v66 = (v135)(v92, v94, v75, v77);
      v158 = 1;
      v83 = v94;
      v74 = v90;
      v80 = v92;
    }

    v95 = *(v81 + 8);
    v95(v83, v70);
    v96 = *(v169 + 8);
    v169 += 8;
    v157 = v96;
    (v96)(v74, v75);
    v134[1] = v81 + 8;
    v134[0] = v95;
    v95(v80, v70);
    v97 = v143;
    v98 = v142;
    v99 = v156;
    v100 = v149;
    v101 = v145;
    (*(v143 + 184))(v156, v145, v143);
    v102 = *(v151 + 8);
    v151 += 8;
    v139 = v102;
    (v102)(v99, v152);
    v103 = v165;
    v155 = *(AssociatedConformanceWitness + 16);
    v156 = (AssociatedConformanceWitness + 16);
    if (((v155)(v98, v168, v165) & 1) == 0)
    {
LABEL_17:
      (*(v144 + 8))(v98, v103);
      v112 = v152;
      v113 = v148;
      v114 = v168;
      v115 = v140;
      v116 = v146;
      v137(v140, &v168[*(v152 + 44)], v146);
      v117 = v150;
      v118 = v147;
      if (v136(v115, 1, v147) == 1)
      {
        (v139)(v114, v112);
        (*(v113 + 8))(v115, v116);
        return v66;
      }

      v119 = v115;
      v84 = v138;
      (*(v117 + 32))(v138, v119, v118);
      v120 = v112;
      v121 = (v160)(v170, v114, v145, v97);
      v85 = v163;
      v122 = v166;
      v159(v163);
      v121(v170, 0);
      (v139)(v114, v120);
      v123 = v167;
      v124 = v141;
      (v167[8])(v122, v167);
      v125 = (v135)(v124, v84, v122, v123);
      v87 = v134[0];
      (v134[0])(v124, v118);
      (v157)(v85, v122);
      v87(v84, v118);
      v111 = __OFADD__(v66, v125 * v158);
      v66 += v125 * v158;
      if (!v111)
      {
        return v66;
      }

      __break(1u);
      goto LABEL_22;
    }

    v104 = v77[14];
    v153 = *(v97 + 192);
    v154 = v104;
    while (1)
    {
      v105 = (v160)(v170, v98, v101, v97);
      v106 = v163;
      v107 = v100;
      v108 = v97;
      v109 = v166;
      v159(v163);
      v105(v170, 0);
      v110 = (v154)(v109, v167);
      (v157)(v106, v109);
      v111 = __OFADD__(v66, v110 * v158);
      v66 += v110 * v158;
      if (v111)
      {
        break;
      }

      (v153)(v98, v101, v108);
      v103 = v165;
      v97 = v108;
      v100 = v107;
      if (((v155)(v98, v168, v165, AssociatedConformanceWitness) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v58 = v148;
  v59 = *(v148 + 16);
  v60 = &v56[*(v10 + 44)];
  v61 = v161;
  v62 = v146;
  v59(v161, v60, v146);
  v63 = v150;
  v64 = *(v150 + 48);
  v65 = v147;
  if (v64(v61, 1, v147) != 1)
  {
    v84 = v65;
    v85 = *(v63 + 32);
    (v85)(v162, v61, v65);
    v86 = v53 + *(v152 + 44);
    v87 = v159;
    v59(v159, v86, v62);
    if (v64(v87, 1, v65) == 1)
    {
      (*(v150 + 8))(v162, v65);
      (*(v148 + 8))(v87, v62);
      return 0;
    }

LABEL_22:
    v126 = v158;
    (v85)(v158, v87, v84);
    v127 = (*(v143 + 80))(v170, v160, v145);
    v128 = v169;
    v129 = v163;
    v130 = v166;
    (*(v169 + 16))(v163);
    v127(v170, 0);
    v131 = v162;
    v66 = (v167[19])(v162, v126, v130);
    (*(v128 + 8))(v129, v130);
    v132 = *(v150 + 8);
    v132(v126, v84);
    v132(v131, v84);
    return v66;
  }

  (*(v58 + 8))(v61, v62);
  return 0;
}

uint64_t FlattenSequence<>._advanceIndex(_:step:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for FlattenSequence<>.Index(0, *(a3 + 16), a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = &v16 - v12;
  if (a2 < 0)
  {
    FlattenSequence<>._index(before:)(a1, a3, a4, a5, v14);
  }

  else
  {
    FlattenSequence<>._index(after:)(a1, a3, a4, a5, v14);
  }

  (*(v11 + 8))(a1, v10);
  return (*(v11 + 32))(a1, v13, v10);
}

uint64_t FlattenSequence<>._ensureBidirectional(step:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v24 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v15 = type metadata accessor for Optional(0, v7, v13, v14);
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  if (a1 < 0)
  {
    v20 = a1;
    v21 = v17;
    (*(a3 + 72))(v5, a3);
    (*(a3 + 64))(v5, a3);
    (*(a3 + 144))(v12, v20, v10, v5, a3);
    v22 = *(v24 + 8);
    v22(v10, v7);
    v22(v12, v7);
    return (*(v21 + 8))(v19, v15);
  }

  return result;
}

uint64_t FlattenSequence<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *(a3 + 16);
  v44 = a5;
  v12 = type metadata accessor for FlattenSequence<>.Index(0, v11, a4, a5);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v42 = v11;
  swift_getAssociatedTypeWitness(0, a4, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v41 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v39 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v40 = v21;
  v24 = type metadata accessor for Optional(0, v21, v22, v23);
  v37 = *(v24 - 8);
  v38 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v43 = &v35 - v25;
  result = (*(v13 + 16))(a6, a1, v12);
  v27 = a2 >> 63;
  if (a2 >> 63 < 0)
  {
    v35 = v13;
    v36 = v20;
    v28 = v42;
    (*(a4 + 72))(v42, a4);
    v29 = v39;
    (*(a4 + 64))(v28, a4);
    (*(a4 + 144))(v36, a2 >> 63, v29, v28, a4);
    v42 = *(v41 + 8);
    v30 = v29;
    v31 = v40;
    v42(v30, v40);
    v42(v36, v31);
    result = (*(v37 + 8))(v43, v38);
    v32 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v32)
    {
      __break(1u);
      return result;
    }

    v13 = v35;
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (!a2)
  {
    return result;
  }

  v33 = (v13 + 8);
  v34 = (v13 + 32);
  do
  {
    if (v27 < 0)
    {
      FlattenSequence<>._index(before:)(a6, a3, a4, v44, v15);
    }

    else
    {
      FlattenSequence<>._index(after:)(a6, a3, a4, v44, v15);
    }

    (*v33)(a6, v12);
    result = (*v34)(a6, v15, v12);
    --a2;
  }

  while (a2);
  return result;
}

uint64_t FlattenSequence<>.formIndex(_:offsetBy:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for FlattenSequence<>.Index(0, *(a3 + 16), a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v11 + 32))(&v15 - v12, a1, v10);
  FlattenSequence<>.index(_:offsetBy:)(v13, a2, a3, a4, a5, a1);
  return (*(v11 + 8))(v13, v10);
}

uint64_t FlattenSequence<>.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int **a6@<X5>, char *a7@<X8>)
{
  v9 = a5;
  v109 = a3;
  v110 = a1;
  v81 = a7;
  v11 = *(a5 + 8);
  v105 = a4;
  v12 = *(a4 + 16);
  swift_getAssociatedTypeWitness(255, v11, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v86 = v13;
  swift_getAssociatedTypeWitness(0, a6, v13, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v101 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v80 - v15;
  v95 = v16;
  v19 = type metadata accessor for Optional(0, v16, v17, v18);
  v100 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v80 - v20;
  v96 = v21;
  swift_getTupleTypeMetadata2(0, v21, v21, 0, 0);
  v97 = v22;
  v99 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v80 - v23;
  swift_getAssociatedTypeWitness(0, v9, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v25 = v24;
  v93 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v80 - v29;
  v33 = type metadata accessor for Optional(0, v25, v31, v32);
  v102 = *(v33 - 8);
  v103 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v80 - v34);
  v36 = v12;
  v107 = a6;
  v37 = type metadata accessor for FlattenSequence<>.Index(0, v12, v9, a6);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v106 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v80 - v40;
  v82 = v42;
  v43 = *(v42 + 16);
  v44 = v110;
  v110 = v45;
  v43(&v80 - v40, v44);
  v108 = a2 >> 63;
  v104 = v12;
  if (a2 >> 63 < 0)
  {
    (*(v9 + 72))(v12, v9);
    (*(v9 + 64))(v12, v9);
    v50 = *(v9 + 144);
    v90 = v35;
    v46 = v7;
    v51 = v93;
    v50(v30, a2 >> 63, v28, v36, v9);
    v52 = v51[1];
    (v52)(v28, v25);
    (v52)(v30, v25);
    result = (*(v102 + 8))(v90, v103);
    v54 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v54)
    {
      __break(1u);
      return result;
    }

    v47 = v25;
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v46 = v7;
    v47 = v25;
    if (!a2)
    {
      v48 = *(v82 + 32);
      v49 = v81;
LABEL_21:
      v77 = v110;
      v48(v49, v41, v110);
      return (*(v82 + 56))(v49, 0, 1, v77);
    }
  }

  v104 = *(swift_getAssociatedConformanceWitness(v9, v104, v47, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v102 = *(v104 + 1);
  v103 = v104 + 8;
  v55 = (v100 + 16);
  v93 = (v101 + 6);
  v83 = (v101 + 4);
  v88 = v101 + 1;
  v84 = (v100 + 8);
  v90 = (v99 + 1);
  v101 = (v82 + 8);
  v99 = (v82 + 32);
  v80 = (v82 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v56 = v96;
  v57 = v98;
  v100 += 16;
  v91 = v47;
  v92 = v9;
  v94 = v46;
  for (i = (v102)(v41, v109, v47, v104); ; i = (v102)(v41, v109, v47, v104))
  {
    v61 = v46;
    v64 = v106;
    v65 = v108;
    if ((i & 1) == 0)
    {
      goto LABEL_9;
    }

    v98 = a2;
    v66 = v55;
    v67 = *(v110 + 44);
    v68 = *(v97 + 48);
    v69 = *v66;
    (*v66)(v57, &v41[v67], v56);
    v69(&v57[v68], (v109 + v67), v56);
    v70 = *v93;
    v71 = v95;
    if ((*v93)(v57, 1, v95) == 1)
    {
      break;
    }

    v72 = v89;
    v69(v89, v57, v96);
    if (v70(&v57[v68], 1, v71) == 1)
    {
      (*v88)(v72, v71);
      v60 = v94;
      v65 = v108;
      a2 = v98;
      goto LABEL_8;
    }

    v73 = v85;
    (*v83)(v85, &v57[v68], v71);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, v86, v71, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v87 = (*(*(AssociatedConformanceWitness + 8) + 8))(v72, v73, v71);
    v75 = v71;
    v76 = *v88;
    (*v88)(v73, v75);
    v76(v72, v75);
    v56 = v96;
    (*v84)(v57, v96);
    v61 = v94;
    v47 = v91;
    v9 = v92;
    v65 = v108;
    a2 = v98;
    if (v87)
    {
      goto LABEL_23;
    }

LABEL_9:
    v62 = v9;
    if (v65 < 0)
    {
      v46 = v61;
      FlattenSequence<>._index(before:)(v41, v105, v9, v107, v64);
    }

    else
    {
      v46 = v61;
      FlattenSequence<>._index(after:)(v41, v105, v9, v107, v64);
    }

    v63 = v110;
    (*v101)(v41, v110);
    v48 = *v99;
    (*v99)(v41, v64, v63);
    --a2;
    v9 = v62;
    v55 = v100;
    if (!a2)
    {
      v49 = v81;
      goto LABEL_21;
    }
  }

  v59 = v70(&v57[v68], 1, v71);
  v60 = v94;
  a2 = v98;
  if (v59 != 1)
  {
LABEL_8:
    v61 = v60;
    (*v90)(v57, v97);
    v47 = v91;
    v9 = v92;
    v56 = v96;
    goto LABEL_9;
  }

  (*v84)(v57, v96);
LABEL_23:
  v78 = v82;
  v79 = v110;
  (*(v82 + 8))(v41, v110);
  return (*(v78 + 56))(v81, 1, 1, v79);
}

BOOL FlattenSequence<>.formIndex(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int **a6)
{
  v12 = type metadata accessor for FlattenSequence<>.Index(255, *(a4 + 16), a5, a6);
  v22 = type metadata accessor for Optional(0, v12, v13, v14);
  v15 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v17 = &v21 - v16;
  FlattenSequence<>.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, a5, a6, &v21 - v16);
  v18 = *(v12 - 8);
  (*(v18 + 8))(a1, v12);
  v19 = (*(v18 + 48))(v17, 1, v12);
  if (v19 == 1)
  {
    (*(v15 + 8))(v17, v22);
    (*(v18 + 16))(a1, a3, v12);
  }

  else
  {
    (*(v18 + 32))(a1, v17, v12);
  }

  return v19 != 1;
}

uint64_t FlattenSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(255, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  swift_getAssociatedTypeWitness(255, a4, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v32 = v11;
  v31 = type metadata accessor for Optional(0, v11, v12, v13);
  v14 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v16 = &v30 - v15;
  v17 = swift_checkMetadataState(0, v10);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = (*(a3 + 80))(v33, a1, v8, a3);
  (*(v18 + 16))(v20);
  v21(v33, 0);
  v22 = a1 + *(type metadata accessor for FlattenSequence<>.Index(0, v8, a3, a4) + 44);
  v23 = v32;
  (*(v14 + 16))(v16, v22, v31);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = (*(a4 + 80))(v33, v16, v17, a4);
  v27 = v26;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v17, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v28 - 8) + 16))(v30, v27, v28);
  v25(v33, 0);
  (*(v18 + 8))(v20, v17);
  return (*(v24 + 8))(v16, v23);
}

uint64_t ClosedRange<>.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, void)@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = v8;
  v28 = a1;
  v16 = a5(255, *(a2 + 16));
  v18 = type metadata accessor for Range(0, v16, a6, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  v29[0] = a3;
  v29[1] = a4;
  WitnessTable = swift_getWitnessTable(a7, a2, v29);
  v24 = type metadata accessor for Slice(0, a2, WitnessTable, v23);
  (*(*(a2 - 8) + 16))(a8 + *(v24 + 40), v11, a2);
  (*(v19 + 16))(v21, v28, v18);
  v25 = *(*(v16 - 8) + 32);
  v25(a8, v21, v16);
  return (v25)(a8 + *(v24 + 36), &v21[*(v18 + 36)], v16);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> FlattenSequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0xEC1EuLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = FlattenSequence<>.subscript.read(v8, a2, a3, *(a4 - 8), *(a4 - 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*FlattenSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness(255, *(a4 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v10, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  *a1 = v12;
  v13 = *(v12 - 8);
  a1[1] = v13;
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x6DB8uLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  a1[2] = v15;
  FlattenSequence<>.subscript.getter(a2, a3, a4, a5, v15);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> FlattenSequence<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for FlattenSequence<>.Index(255, *(a1 + 16), *(a2 - 8), *(a2 - 16));
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t FlattenSequence<>.formIndex(before:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 8);
  v7 = *(a4 + 8);
  v8 = type metadata accessor for FlattenSequence<>.Index(0, *(a2 + 16), v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(v9 + 32))(&v13 - v10, a1, v8);
  FlattenSequence<>._index(before:)(v11, a2, v6, v7, a1);
  return (*(v9 + 8))(v11, v8);
}

uint64_t static FloatingPoint.ulpOfOne.getter(const char *a1, uint64_t a2)
{
  return static FloatingPoint.ulpOfOne.getter(a1, a2);
}

{
  v4 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(v7 + 16) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v8, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a1, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v12, a1, v8);
  (*(a2 + 136))(a1, a2);
  return (*(v4 + 8))(v6, a1);
}

uint64_t FloatingPoint.remainder(dividingBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  (*(*(a2 - 8) + 16))(a4, v7, a2);
  return (*(a3 + 216))(a1, a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  return (*(a3 + 216))(a1, a2, a3);
}

uint64_t FloatingPoint.truncatingRemainder(dividingBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  (*(*(a2 - 8) + 16))(a4, v7, a2);
  return (*(a3 + 232))(a1, a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  return (*(a3 + 232))(a1, a2, a3);
}

uint64_t FloatingPoint.squareRoot()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  return (*(a2 + 248))(a1, a2);
}

{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  return (*(a2 + 248))(a1, a2);
}

uint64_t FloatingPoint.addingProduct(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  return (*(a4 + 264))(a1, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, v5);
  return (*(a4 + 264))(a1, a2, a3, a4);
}

uint64_t static FloatingPoint.minimum(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.minimum(_:_:)(a1, a2, a3, a4, a5);
}

{
  if (((*(*(*(a4 + 24) + 8) + 24))() & 1) == 0 && ((*(a4 + 408))(a3, a4) & 1) == 0)
  {
    a1 = a2;
  }

  v10 = *(*(a3 - 8) + 16);

  return v10(a5, a1, a3);
}

uint64_t static FloatingPoint.maximum(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.maximum(_:_:)(a1, a2, a3, a4, a5);
}

{
  if (((*(*(*(a4 + 24) + 8) + 40))() & 1) == 0 && ((*(a4 + 408))(a3, a4) & 1) == 0)
  {
    a1 = a2;
  }

  v10 = *(*(a3 - 8) + 16);

  return v10(a5, a1, a3);
}

uint64_t static FloatingPoint.minimumMagnitude(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.minimumMagnitude(_:_:)(a1, a2, a3, a4, a5);
}

{
  v28 = a5;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v25 - v13;
  v16 = *(*(v15 + 16) + 8);
  v17 = *(v16 + 56);
  v27 = v12;
  v17(v18, v16);
  v26 = a2;
  v17(a3, v16);
  v19 = (*(*(*(a4 + 24) + 8) + 24))(v14, v11, a3);
  v20 = *(v8 + 8);
  v20(v11, a3);
  v20(v14, a3);
  if (v19)
  {
    v21 = v27;
  }

  else
  {
    v22 = v26;
    v23 = (*(a4 + 408))(a3, a4);
    v21 = v27;
    if ((v23 & 1) == 0)
    {
      v21 = v22;
    }
  }

  return (*(v8 + 16))(v28, v21, a3);
}

uint64_t static FloatingPoint.maximumMagnitude(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static FloatingPoint.maximumMagnitude(_:_:)(a1, a2, a3, a4, a5);
}

{
  v28 = a5;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v25 - v13;
  v16 = *(*(v15 + 16) + 8);
  v17 = *(v16 + 56);
  v27 = v12;
  v17(v18, v16);
  v26 = a2;
  v17(a3, v16);
  v19 = (*(*(*(a4 + 24) + 8) + 40))(v14, v11, a3);
  v20 = *(v8 + 8);
  v20(v11, a3);
  v20(v14, a3);
  if (v19)
  {
    v21 = v27;
  }

  else
  {
    v22 = v26;
    v23 = (*(a4 + 408))(a3, a4);
    v21 = v27;
    if ((v23 & 1) == 0)
    {
      v21 = v22;
    }
  }

  return (*(v8 + 16))(v28, v21, a3);
}

uint64_t FloatingPoint.rounded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  (*(*(a2 - 8) + 16))(a4, v7, a2);
  return (*(a3 + 312))(a1, a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  return (*(a3 + 312))(a1, a2, a3);
}

uint64_t FloatingPoint.nextDown.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 + 16);
  v14(v9, a1, v13);
  (*(a2 + 320))(a1, a2);
  v15 = *(v5 + 8);
  v15(v11, a1);
  v14(v8, a1, v13);
  return (v15)(v8, a1);
}

{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v12 = *(v11 + 16);
  v13 = *(v12 + 16);
  v13(v2, a1, v12);
  (*(a2 + 320))(a1, a2);
  v14 = *(v5 + 8);
  v14(v10, a1);
  v13(v8, a1, v12);
  return (v14)(v8, a1);
}

uint64_t specialized FloatingPoint.floatingPointClass.getter(float a1)
{
  v1 = (LODWORD(a1) >> 10) & 0x1F;
  if (SLOWORD(a1) < 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if (SLOWORD(a1) < 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 7;
  }

  if ((LOWORD(a1) & 0x3FF) != 0)
  {
    v2 = v3;
  }

  if (SLOWORD(a1) < 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  if (SLOWORD(a1) < 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 9;
  }

  if ((SLOWORD(a1) & 0x3FF) != 0)
  {
    v6 = (SLOWORD(a1) >> 9) & 1;
  }

  else
  {
    v6 = v5;
  }

  if (v1 != 31)
  {
    v6 = v4;
  }

  if (v1)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

{
  if (a1 < 0.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if (a1 < 0.0)
  {
    v2 = 4;
  }

  else
  {
    v2 = 7;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v1 = v2;
  }

  if (a1 < 0.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 8;
  }

  if (a1 < 0.0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 9;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v5 = (LODWORD(a1) >> 22) & 1;
  }

  else
  {
    v5 = v4;
  }

  if ((LODWORD(a1) >> 23) != 255)
  {
    v5 = v3;
  }

  if ((LODWORD(a1) >> 23))
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t specialized FloatingPoint.floatingPointClass.getter(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (a1 < 0.0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if (a1 < 0.0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 7;
  }

  if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v3;
  }

  if (a1 < 0.0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  if (a1 < 0.0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 9;
  }

  if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = (*&a1 >> 51) & 1;
  }

  else
  {
    v6 = v5;
  }

  if (v1 != 2047)
  {
    v6 = v4;
  }

  if (v1)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t FloatingPoint.floatingPointClass.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 416))())
  {
    return 0;
  }

  if ((*(a2 + 408))(a1, a2))
  {
    return 1;
  }

  if ((*(a2 + 400))(a1, a2))
  {
    if ((*(a2 + 168))(a1, a2))
    {
      return 2;
    }

    else
    {
      return 9;
    }
  }

  else if ((*(a2 + 368))(a1, a2))
  {
    if ((*(a2 + 168))(a1, a2))
    {
      return 3;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    v5 = (*(a2 + 392))(a1, a2);
    v6 = (*(a2 + 168))(a1, a2);
    if (v6)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }

    if (v6)
    {
      v8 = 4;
    }

    else
    {
      v8 = 7;
    }

    if (v5)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }
}

Swift::FloatingPointSign_optional __swiftcall FloatingPointSign.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = Swift_FloatingPointSign_minus;
  }

  else
  {
    v1.value = Swift_FloatingPointSign_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance FloatingPointSign@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FloatingPointClassification()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointClassification(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 64))();
}

{
  return (*(a2 + 72))();
}

double specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v58 - v7;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v12 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v58 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v58 - v19);
  v21 = (*(a3 + 96))(a2, a3);
  v22 = (*(a3 + 104))(a2, a3);
  if (v21 == 11)
  {
    if (v22 == 52)
    {
      (*(v12 + 16))(v15, a1, a2);
      if (!swift_dynamicCast(&v63, v15, a2, &type metadata for Double, 6uLL))
      {
        v25 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v26 = v59;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v59, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v28 = (*(*(AssociatedConformanceWitness + 8) + 120))(v26);
        (*(v58 + 8))(v11, v26);
        v29 = v60;
        (*(a3 + 120))(a2, a3);
        (*(v12 + 8))(a1, a2);
        v30 = a2;
        v31 = v62;
        v32 = swift_getAssociatedConformanceWitness(a3, v30, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v33 = (*(*(v32 + 8) + 120))(v31);
        (*(v61 + 8))(v29, v31);
        *&result = (v25 << 63) | ((v28 & 0x7FF) << 52) | v33 & 0xFFFFFFFFFFFFFLL;
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v21 == 8)
  {
    if (v22 == 23)
    {
      (*(v12 + 16))(v18, a1, a2);
      if (swift_dynamicCast(&v63, v18, a2, &type metadata for Float, 6uLL))
      {
        (*(v12 + 8))(a1, a2);
        return *&v63;
      }

      else
      {
        v34 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v35 = v59;
        v36 = swift_getAssociatedConformanceWitness(a3, a2, v59, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v37 = (*(*(v36 + 8) + 120))(v35);
        (*(v58 + 8))(v11, v35);
        v38 = v60;
        (*(a3 + 120))(a2, a3);
        (*(v12 + 8))(a1, a2);
        v39 = a2;
        v40 = v62;
        v41 = swift_getAssociatedConformanceWitness(a3, v39, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v42 = (*(*(v41 + 8) + 120))(v40);
        (*(v61 + 8))(v38, v40);
        if (v34)
        {
          v43 = 0x80000000;
        }

        else
        {
          v43 = 0;
        }

        return COERCE_FLOAT(v43 & 0x80000000 | (v37 << 23) | v42 & 0x7FFFFF);
      }
    }

    goto LABEL_13;
  }

  if (v21 != 5 || v22 != 10)
  {
LABEL_13:
    specialized static BinaryFloatingPoint._convert<A>(from:)(&v63, a1, a2, a3);
LABEL_14:
    (*(v12 + 8))(a1, a2);
    return v63;
  }

  (*(v12 + 16))(v20, a1, a2);
  if (swift_dynamicCast(&v63, v20, a2, &type metadata for Float16, 6uLL))
  {
    (*(v12 + 8))(a1, a2);
    _H0 = LOWORD(v63);
  }

  else
  {
    v44 = (*(*(a3 + 16) + 168))(a2);
    (*(a3 + 112))(a2, a3);
    v45 = v59;
    v46 = swift_getAssociatedConformanceWitness(a3, a2, v59, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v47 = (*(*(v46 + 8) + 120))(v45);
    (*(v58 + 8))(v11, v45);
    v48 = v60;
    (*(a3 + 120))(a2, a3);
    (*(v12 + 8))(a1, a2);
    v49 = a2;
    v50 = v62;
    v51 = swift_getAssociatedConformanceWitness(a3, v49, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v52 = (*(*(v51 + 8) + 120))(v50);
    (*(v61 + 8))(v48, v50);
    if (v44)
    {
      v53 = 0x8000;
    }

    else
    {
      v53 = 0;
    }

    _H0 = v53 & 0x8000 | ((v47 & 0x1F) << 10) | v52 & 0x3FF;
  }

  __asm { FCVT            D0, H0 }

  return result;
}

float specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v58 - v7;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v12 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v58 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v58 - v19);
  v21 = (*(a3 + 96))(a2, a3);
  v22 = (*(a3 + 104))(a2, a3);
  if (v21 == 11)
  {
    if (v22 == 52)
    {
      (*(v12 + 16))(v15, a1, a2);
      if (swift_dynamicCast(&v63, v15, a2, &type metadata for Double, 6uLL))
      {
        (*(v12 + 8))(a1, a2);
        return v63;
      }

      else
      {
        v35 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v36 = v59;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v59, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v38 = (*(*(AssociatedConformanceWitness + 8) + 120))(v36);
        (*(v58 + 8))(v11, v36);
        v39 = v60;
        (*(a3 + 120))(a2, a3);
        (*(v12 + 8))(a1, a2);
        v40 = a2;
        v41 = v62;
        v42 = swift_getAssociatedConformanceWitness(a3, v40, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v43 = (*(*(v42 + 8) + 120))(v41);
        (*(v61 + 8))(v39, v41);
        return COERCE_DOUBLE((v35 << 63) | ((v38 & 0x7FF) << 52) | v43 & 0xFFFFFFFFFFFFFLL);
      }
    }

    goto LABEL_16;
  }

  if (v21 == 8)
  {
    if (v22 == 23)
    {
      (*(v12 + 16))(v18, a1, a2);
      if (!swift_dynamicCast(&v63, v18, a2, &type metadata for Float, 6uLL))
      {
        v24 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v25 = v59;
        v26 = swift_getAssociatedConformanceWitness(a3, a2, v59, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v27 = (*(*(v26 + 8) + 120))(v25);
        (*(v58 + 8))(v11, v25);
        v28 = v60;
        (*(a3 + 120))(a2, a3);
        (*(v12 + 8))(a1, a2);
        v29 = a2;
        v30 = v62;
        v31 = swift_getAssociatedConformanceWitness(a3, v29, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v32 = (*(*(v31 + 8) + 120))(v30);
        (*(v61 + 8))(v28, v30);
        if (v24)
        {
          v33 = 0x80000000;
        }

        else
        {
          v33 = 0;
        }

        LODWORD(result) = v33 & 0x80000000 | (v27 << 23) | v32 & 0x7FFFFF;
        return result;
      }

LABEL_17:
      (*(v12 + 8))(a1, a2);
      return *&v63;
    }

LABEL_16:
    specialized static BinaryFloatingPoint._convert<A>(from:)(&v63, a1, a2, a3);
    goto LABEL_17;
  }

  if (v21 != 5 || v22 != 10)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v20, a1, a2);
  if (swift_dynamicCast(&v63, v20, a2, &type metadata for Float16, 6uLL))
  {
    (*(v12 + 8))(a1, a2);
    _H0 = LOWORD(v63);
  }

  else
  {
    v44 = (*(*(a3 + 16) + 168))(a2);
    (*(a3 + 112))(a2, a3);
    v45 = v59;
    v46 = swift_getAssociatedConformanceWitness(a3, a2, v59, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v47 = (*(*(v46 + 8) + 120))(v45);
    (*(v58 + 8))(v11, v45);
    v48 = v60;
    (*(a3 + 120))(a2, a3);
    (*(v12 + 8))(a1, a2);
    v49 = a2;
    v50 = v62;
    v51 = swift_getAssociatedConformanceWitness(a3, v49, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v52 = (*(*(v51 + 8) + 120))(v50);
    (*(v61 + 8))(v48, v50);
    if (v44)
    {
      v53 = 0x8000;
    }

    else
    {
      v53 = 0;
    }

    _H0 = v53 & 0x8000 | ((v47 & 0x1F) << 10) | v52 & 0x3FF;
  }

  __asm { FCVT            S0, H0 }

  return result;
}

__int16 specialized BinaryFloatingPoint.init<A>(_:)@<H0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - v7;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - v10;
  v12 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v61 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v61 - v19);
  v21 = (*(a3 + 96))(a2, a3);
  v22 = (*(a3 + 104))(a2, a3);
  if (v21 == 11)
  {
    if (v22 == 52)
    {
      (*(v12 + 16))(v15, a1, a2);
      if (swift_dynamicCast(&v66, v15, a2, &type metadata for Double, 6uLL))
      {
        (*(v12 + 8))(a1, a2);
        _D0 = v66;
        __asm { FCVT            H0, D0 }
      }

      else
      {
        v51 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v52 = v62;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v54 = (*(*(AssociatedConformanceWitness + 8) + 120))(v52);
        (*(v61 + 8))(v11, v52);
        v55 = v63;
        (*(a3 + 120))(a2, a3);
        (*(v12 + 8))(a1, a2);
        v56 = a2;
        v57 = v65;
        v58 = swift_getAssociatedConformanceWitness(a3, v56, v65, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v59 = (*(*(v58 + 8) + 120))(v57);
        (*(v64 + 8))(v55, v57);
        _D0 = (v51 << 63) | ((v54 & 0x7FF) << 52) | v59 & 0xFFFFFFFFFFFFFLL;
        __asm { FCVT            H0, D0 }
      }

      return result;
    }

    goto LABEL_16;
  }

  if (v21 != 8)
  {
    if (v21 == 5 && v22 == 10)
    {
      (*(v12 + 16))(v20, a1, a2);
      if (!swift_dynamicCast(&v66, v20, a2, &type metadata for Float16, 6uLL))
      {
        v23 = (*(*(a3 + 16) + 168))(a2);
        (*(a3 + 112))(a2, a3);
        v24 = v62;
        v25 = swift_getAssociatedConformanceWitness(a3, a2, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v26 = (*(*(v25 + 8) + 120))(v24);
        (*(v61 + 8))(v11, v24);
        v27 = v63;
        (*(a3 + 120))(a2, a3);
        (*(v12 + 8))(a1, a2);
        v28 = a2;
        v29 = v65;
        v30 = swift_getAssociatedConformanceWitness(a3, v28, v65, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v31 = (*(*(v30 + 8) + 120))(v29);
        (*(v64 + 8))(v27, v29);
        if (v23)
        {
          v32 = 0x8000;
        }

        else
        {
          v32 = 0;
        }

        return v32 & 0x8000 | ((v26 & 0x1F) << 10) | v31 & 0x3FF;
      }

LABEL_17:
      (*(v12 + 8))(a1, a2);
      return v66;
    }

LABEL_16:
    specialized static BinaryFloatingPoint._convert<A>(from:)(&v66, a1, a2, a3);
    goto LABEL_17;
  }

  if (v22 != 23)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v18, a1, a2);
  if (swift_dynamicCast(&v66, v18, a2, &type metadata for Float, 6uLL))
  {
    (*(v12 + 8))(a1, a2);
    _S0 = v66;
    __asm { FCVT            H0, S0 }
  }

  else
  {
    v40 = (*(*(a3 + 16) + 168))(a2);
    (*(a3 + 112))(a2, a3);
    v41 = v62;
    v42 = swift_getAssociatedConformanceWitness(a3, a2, v62, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v43 = (*(*(v42 + 8) + 120))(v41);
    (*(v61 + 8))(v11, v41);
    v44 = v63;
    (*(a3 + 120))(a2, a3);
    (*(v12 + 8))(a1, a2);
    v45 = a2;
    v46 = v65;
    v47 = swift_getAssociatedConformanceWitness(a3, v45, v65, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v48 = (*(*(v47 + 8) + 120))(v46);
    (*(v64 + 8))(v44, v46);
    if (v40)
    {
      v49 = 0x80000000;
    }

    else
    {
      v49 = 0;
    }

    _S0 = v49 & 0x80000000 | (v43 << 23) | v48 & 0x7FFFFF;
    __asm { FCVT            H0, S0 }
  }

  return result;
}

uint64_t BinaryFloatingPoint.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a1;
  v100 = a4;
  v101 = a6;
  v9 = *(*(*(a4 + 16) + 16) + 8);
  v97 = *(v9 + 16);
  v98 = v9;
  swift_getAssociatedTypeWitness(0, v97, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v95 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v88 - v12;
  v102 = a2;
  v96 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v88 - v16;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v92 = *(v18 - 8);
  v93 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v88 - v19;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v89 = *(v20 - 8);
  v90 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v88 = &v88 - v22;
  v23 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v88 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v88 - v30);
  v32 = (*(a5 + 96))(a3, a5);
  v33 = (*(a5 + 104))(a3, a5);
  if (v32 == 11)
  {
    if (v33 == 52)
    {
      v42 = v23;
      v43 = v99;
      (*(v23 + 16))(v26, v99, a3);
      if (swift_dynamicCast(v105, v26, a3, &type metadata for Double, 6uLL))
      {
        v44 = v105[0];
        (*(v23 + 8))(v43, a3);
      }

      else
      {
        v64 = (*(*(a5 + 16) + 168))(a3);
        v65 = v88;
        (*(a5 + 112))(a3, a5);
        v66 = v90;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v90, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v68 = (*(*(AssociatedConformanceWitness + 8) + 120))(v66);
        (*(v89 + 8))(v65, v66);
        v69 = v91;
        (*(a5 + 120))(a3, a5);
        (*(v42 + 8))(v43, a3);
        v70 = v93;
        v71 = swift_getAssociatedConformanceWitness(a5, a3, v93, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v72 = (*(*(v71 + 8) + 120))(v70);
        (*(v92 + 8))(v69, v70);
        *&v44 = (v64 << 63) | ((v68 & 0x7FF) << 52) | v72 & 0xFFFFFFFFFFFFFLL;
      }

      return (*(v100 + 72))(v44);
    }

    goto LABEL_13;
  }

  if (v32 != 8)
  {
    if (v32 == 5 && v33 == 10)
    {
      v34 = v23;
      v35 = v99;
      (*(v23 + 16))(v31, v99, a3);
      if (swift_dynamicCast(&v103, v31, a3, &type metadata for Float16, 6uLL))
      {
        _H8 = v103;
        (*(v23 + 8))(v35, a3);
      }

      else
      {
        v73 = (*(*(a5 + 16) + 168))(a3);
        v74 = v88;
        (*(a5 + 112))(a3, a5);
        v75 = v90;
        v76 = swift_getAssociatedConformanceWitness(a5, a3, v90, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v77 = (*(*(v76 + 8) + 120))(v75);
        (*(v89 + 8))(v74, v75);
        v78 = v91;
        (*(a5 + 120))(a3, a5);
        (*(v34 + 8))(v35, a3);
        v79 = a3;
        v80 = v93;
        v81 = swift_getAssociatedConformanceWitness(a5, v79, v93, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v82 = (*(*(v81 + 8) + 120))(v80);
        (*(v92 + 8))(v78, v80);
        if (v73)
        {
          v83 = 0x8000;
        }

        else
        {
          v83 = 0;
        }

        _H8 = v83 & 0x8000 | ((v77 & 0x1F) << 10) | v82 & 0x3FF;
      }

      __asm { FCVT            S0, H8 }

      return (*(v100 + 64))(_Q0);
    }

LABEL_13:
    v45 = v99;
    v46 = v102;
    static BinaryFloatingPoint._convert<A>(from:)(v17, v99, v102, a3, v100, a5);
    (*(v23 + 8))(v45, a3);
    v47 = v97;
    v48 = v95;
    v49 = swift_getAssociatedConformanceWitness(v97, v46, v95, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v50 = v94;
    (*(v49 + 8))(&qword_1806729C0, 512, v48, v49);
    (v47[3])(v50, v46, v47);
    (*(v98 + 64))(v17, v15, v46);
    v51 = *(v96 + 8);
    v51(v15, v46);
    return (v51)(v17, v46);
  }

  if (v33 != 23)
  {
    goto LABEL_13;
  }

  v38 = v23;
  v39 = v99;
  (*(v23 + 16))(v29, v99, a3);
  if (swift_dynamicCast(&v104, v29, a3, &type metadata for Float, 6uLL))
  {
    v40 = v104;
    (*(v23 + 8))(v39, a3);
  }

  else
  {
    v53 = (*(*(a5 + 16) + 168))(a3);
    v54 = v88;
    (*(a5 + 112))(a3, a5);
    v55 = v90;
    v56 = swift_getAssociatedConformanceWitness(a5, a3, v90, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
    v57 = (*(*(v56 + 8) + 120))(v55);
    (*(v89 + 8))(v54, v55);
    v58 = v91;
    (*(a5 + 120))(a3, a5);
    (*(v38 + 8))(v39, a3);
    v59 = a3;
    v60 = v93;
    v61 = swift_getAssociatedConformanceWitness(a5, v59, v93, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
    v62 = (*(*(v61 + 8) + 120))(v60);
    (*(v92 + 8))(v58, v60);
    if (v53)
    {
      v63 = 0x80000000;
    }

    else
    {
      v63 = 0;
    }

    v40 = v63 & 0x80000000 | (v57 << 23) | v62 & 0x7FFFFF;
  }

  v41.n128_u32[0] = v40;
  return (*(v100 + 64))(v41);
}

uint64_t specialized BinaryFloatingPoint.init<A>(exactly:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v187 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v187, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v186 = &v175 - v12;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v14 = v13;
  v195 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v194 = &v175 - v15;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v192 = *(v16 - 8);
  v193 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v191 = &v175 - v18;
  v19 = *(a2 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v190 = (&v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v189 = (&v175 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v188 = (&v175 - v24);
  v25 = swift_checkMetadataState(0, v8);
  v198 = *(v25 - 1);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v196 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v197 = &v175 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v199 = &v175 - v30;
  if ((*(v6 + 408))(a2, v6))
  {
    goto LABEL_2;
  }

  v184 = *(a3 + 96);
  v185 = a3 + 96;
  if (v184(a2, a3) <= 5 && (*(a3 + 104))(a2, a3) < 11 || ((*(v6 + 376))(a2, v6) & 1) == 0 || ((*(v6 + 384))(a2, v6) & 1) != 0)
  {
LABEL_8:
    v33 = v184(a2, a3);
    v34 = (*(a3 + 104))(a2, a3);
    if (v33 == 11)
    {
      if (v34 == 52)
      {
        v52 = v190;
        v19[2](v190, a1, a2);
        if (swift_dynamicCast(v200, v52, a2, &type metadata for Double, 6uLL))
        {
          (v19[1])(a1, a2);
          _D0 = *v200;
          __asm { FCVT            H0, D0 }
        }

        else
        {
          v82 = (*(v6 + 168))(a2, v6);
          v83 = v191;
          (*(a3 + 112))(a2, a3);
          v84 = v193;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v193, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v86 = a1;
          v87 = (*(*(AssociatedConformanceWitness + 8) + 120))(v84);
          (*(v192 + 8))(v83, v84);
          v88 = v194;
          (*(a3 + 120))(a2, a3);
          (v19[1])(v86, a2);
          v89 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v90 = (*(*(v89 + 8) + 120))(v14);
          (*(v195 + 8))(v88, v14);
          _D0 = (v82 << 63) | ((v87 & 0x7FF) << 52) | v90 & 0xFFFFFFFFFFFFFLL;
          __asm { FCVT            H0, D0 }
        }

        goto LABEL_25;
      }
    }

    else if (v33 == 8)
    {
      if (v34 == 23)
      {
        v47 = v189;
        v19[2](v189, a1, a2);
        if (swift_dynamicCast(v200, v47, a2, &type metadata for Float, 6uLL))
        {
          (v19[1])(a1, a2);
          LODWORD(_D0) = *v200;
          __asm { FCVT            H0, S0 }
        }

        else
        {
          v72 = (*(v6 + 168))(a2, v6);
          v73 = v191;
          (*(a3 + 112))(a2, a3);
          v74 = v193;
          v75 = swift_getAssociatedConformanceWitness(a3, a2, v193, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v76 = a1;
          v77 = (*(*(v75 + 8) + 120))(v74);
          (*(v192 + 8))(v73, v74);
          v78 = v194;
          (*(a3 + 120))(a2, a3);
          (v19[1])(v76, a2);
          v79 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v80 = (*(*(v79 + 8) + 120))(v14);
          (*(v195 + 8))(v78, v14);
          if (v72)
          {
            v81 = 0x80000000;
          }

          else
          {
            v81 = 0;
          }

          LODWORD(_D0) = v81 & 0x80000000 | (v77 << 23) | v80 & 0x7FFFFF;
          __asm { FCVT            H0, S0 }
        }

        goto LABEL_25;
      }
    }

    else if (v33 == 5 && v34 == 10)
    {
      v35 = v188;
      v19[2](v188, a1, a2);
      if (!swift_dynamicCast(v200, v35, a2, &type metadata for Float16, 6uLL))
      {
        v36 = (*(v6 + 168))(a2, v6);
        v37 = v191;
        (*(a3 + 112))(a2, a3);
        v38 = v193;
        v39 = swift_getAssociatedConformanceWitness(a3, a2, v193, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v40 = a1;
        v41 = (*(*(v39 + 8) + 120))(v38);
        (*(v192 + 8))(v37, v38);
        v42 = v194;
        (*(a3 + 120))(a2, a3);
        (v19[1])(v40, a2);
        v43 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v44 = (*(*(v43 + 8) + 120))(v14);
        (*(v195 + 8))(v42, v14);
        if (v36)
        {
          v45 = -32768;
        }

        else
        {
          v45 = 0;
        }

        LODWORD(_D0) = v45 & 0xFFFF8000 | ((v41 & 0x1F) << 10) | v44 & 0x3FF;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    specialized static BinaryFloatingPoint._convert<A>(from:)(v200, a1, a2, a3);
LABEL_24:
    (v19[1])(a1, a2);
    *&_D0 = v200[0];
LABEL_25:
    v32 = 0;
    v31 = _D0;
    return v31 | (v32 << 16);
  }

  v180 = v19;
  v178 = v11;
  v54 = *(v6 + 176);
  v55 = v199;
  v181 = a1;
  v54(a2, v6);
  *v200 = -14;
  v56 = *(v9 + 64);
  v57 = v56(v25, v9);
  v182 = v9 + 64;
  v179 = v14;
  if ((v57 & 1) == 0)
  {
    v65 = v56(v25, v9);
    v183 = *(v9 + 128);
    v66 = v183(v25, v9);
    v58 = v56;
    if (v65)
    {
      v19 = v180;
      if (v66 > 64)
      {
        v69 = *(v9 + 96);
        v70 = lazy protocol witness table accessor for type Int and conformance Int(v66, v67, v68);
        v69(v200, &type metadata for Int, v70, v25, v9);
        v71 = (*(*(*(v9 + 32) + 8) + 16))(v199, v197, v25);
        v64 = v198;
        (*(v198 + 8))(v197, v25);
        if (v71)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      v95 = v187;
      v96 = v178;
      v97 = swift_getAssociatedConformanceWitness(v187, v25, v178, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v98 = v186;
      (*(v97 + 8))(&qword_18071E0A8, 256, v96, v97);
      (v95[3])(v98, v25, v95);
      LOBYTE(v96) = (*(*(*(v9 + 32) + 8) + 16))(v199, v197, v25);
      v64 = v198;
      (*(v198 + 8))(v197, v25);
      if (v96)
      {
        goto LABEL_49;
      }

      v94 = (*(v9 + 120))(v25, v9) < -14;
    }

    else
    {
      v19 = v180;
      if (v66 >= 64)
      {
        v64 = v198;
        goto LABEL_53;
      }

      v94 = (*(v9 + 120))(v25, v9) < -14;
      v64 = v198;
    }

    if (v94)
    {
      goto LABEL_49;
    }

LABEL_53:
    *v200 = 15;
    v105 = v58(v25, v9);
    v106 = v183(v25, v9);
    if (v105)
    {
      if (v106 > 64)
      {
        goto LABEL_55;
      }
    }

    else if (v106 > 63)
    {
LABEL_55:
      v109 = *(v9 + 96);
      v110 = lazy protocol witness table accessor for type Int and conformance Int(v106, v107, v108);
      v111 = v197;
      v109(v200, &type metadata for Int, v110, v25, v9);
      v112 = v199;
      v113 = (*(*(*(v9 + 32) + 8) + 16))(v111, v199, v25);
      v114 = *(v198 + 8);
      v114(v111, v25);
      v114(v112, v25);
      a1 = v181;
      if (v113)
      {
        goto LABEL_2;
      }

      goto LABEL_59;
    }

    v115 = v199;
    v116 = (*(v9 + 120))(v25, v9);
    (*(v64 + 8))(v115, v25);
    a1 = v181;
    if (v116 > 15)
    {
      goto LABEL_2;
    }

LABEL_59:
    v117 = (*(a3 + 136))(a2, a3);
    v14 = v179;
    if (v117 < 11)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

  v58 = v56;
  v59 = v55;
  v183 = *(v9 + 128);
  v60 = v183(v25, v9);
  if (v60 >= 64)
  {
    v176 = *(v9 + 96);
    v91 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
    v92 = v197;
    v176(v200, &type metadata for Int, v91, v25, v9);
    v93 = (*(*(*(v9 + 32) + 8) + 16))(v59, v92, v25);
    v64 = v198;
    (*(v198 + 8))(v92, v25);
    v19 = v180;
    if (v93)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  v63 = (*(v9 + 120))(v25, v9);
  v64 = v198;
  v19 = v180;
  if (v63 > -15)
  {
    goto LABEL_53;
  }

LABEL_49:
  *v200 = -24;
  v99 = v58(v25, v9);
  v177 = v58;
  if (v99)
  {
    v100 = v199;
    v101 = v183(v25, v9);
    if (v101 >= 64)
    {
      v180 = *(v9 + 96);
      v126 = lazy protocol witness table accessor for type Int and conformance Int(v101, v102, v103);
      v127 = v197;
      (v180)(v200, &type metadata for Int, v126, v25, v9);
      v64 = v198;
      v128 = (*(*(*(v9 + 32) + 8) + 16))(v100, v127, v25);
      (*(v64 + 8))(v127, v25);
      a1 = v181;
      if ((v128 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v104 = (*(v9 + 120))(v25, v9);
      a1 = v181;
      if (v104 > -25)
      {
        goto LABEL_73;
      }
    }

LABEL_69:
    (v19[1])(a1, a2);
    (*(v64 + 8))(v199, v25);
    goto LABEL_3;
  }

  v118 = v58(v25, v9);
  v119 = v183;
  v120 = v183(v25, v9);
  v183 = v119;
  if (v118)
  {
    a1 = v181;
    if (v120 > 64)
    {
      v180 = *(v9 + 96);
      v123 = lazy protocol witness table accessor for type Int and conformance Int(v120, v121, v122);
      v124 = v197;
      (v180)(v200, &type metadata for Int, v123, v25, v9);
      v125 = (*(*(*(v9 + 32) + 8) + 16))(v199, v124, v25);
      v64 = v198;
      (*(v198 + 8))(v124, v25);
      if ((v125 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

    v129 = v187;
    v130 = v178;
    v131 = swift_getAssociatedConformanceWitness(v187, v25, v178, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v132 = v186;
    (*(v131 + 8))(&qword_18071E0A8, 256, v130, v131);
    v133 = v129;
    v134 = v129[3];
    v135 = v197;
    (v134)(v132, v25, v133);
    LOBYTE(v130) = (*(*(*(v9 + 32) + 8) + 16))(v199, v135, v25);
    v136 = v135;
    v137 = *(v198 + 8);
    v137(v136, v25);
    if (v130)
    {
      (v19[1])(a1, a2);
      v137(v199, v25);
      goto LABEL_3;
    }

    v138 = (*(v9 + 120))(v25, v9);
    v64 = v198;
    if (v138 < -24)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v64 = v198;
    a1 = v181;
    if (v120 < 64 && (*(v9 + 120))(v25, v9) < -24)
    {
      goto LABEL_69;
    }
  }

LABEL_73:
  v180 = (*(a3 + 136))(a2, a3);
  (*(v64 + 16))(v196, v199, v25);
  v139 = v177(v25, v9);
  v140 = v183;
  if ((v139 & 1) == 0 || v183(v25, v9) < 65)
  {
    goto LABEL_87;
  }

  *v200 = 0x8000000000000000;
  v141 = v177;
  if ((v177(v25, v9) & 1) == 0)
  {
    v148 = v141(v25, v9);
    v140 = v183;
    v149 = v183(v25, v9);
    if ((v148 & 1) == 0)
    {
      a1 = v181;
      if (v149 >= 64)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    a1 = v181;
    if (v149 <= 64)
    {
      v155 = v187;
      v156 = v178;
      v157 = swift_getAssociatedConformanceWitness(v187, v25, v178, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v158 = v186;
      (*(v157 + 8))(&qword_18071E0A8, 256, v156, v157);
      v159 = v155;
      v160 = v155[3];
      v161 = v197;
      (v160)(v158, v25, v159);
      LODWORD(v187) = (*(*(*(v9 + 32) + 8) + 16))(v196, v161, v25);
      (*(v198 + 8))(v161, v25);
      v140 = v183;
      if ((v187 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v187 = *(v9 + 96);
      v152 = lazy protocol witness table accessor for type Int and conformance Int(v149, v150, v151);
      v153 = v197;
      (v187)(v200, &type metadata for Int, v152, v25, v9);
      v154 = (*(*(*(v9 + 32) + 8) + 16))(v196, v153, v25);
      (*(v198 + 8))(v153, v25);
      v140 = v183;
      if ((v154 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_91:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v140 = v183;
  v142 = v183(v25, v9);
  a1 = v181;
  if (v142 < 64)
  {
LABEL_86:
    (*(v9 + 120))(v25, v9);
    goto LABEL_87;
  }

  v187 = *(v9 + 96);
  v145 = lazy protocol witness table accessor for type Int and conformance Int(v142, v143, v144);
  v146 = v197;
  (v187)(v200, &type metadata for Int, v145, v25, v9);
  v140 = v183;
  v147 = (*(*(*(v9 + 32) + 8) + 16))(v196, v146, v25);
  (*(v198 + 8))(v146, v25);
  if (v147)
  {
    goto LABEL_91;
  }

LABEL_87:
  v183 = v140;
  v162 = v196;
  v163 = v140(v25, v9);
  v164 = v162;
  if (v163 <= 64 && (v183(v25, v9) != 64 || (v177(v25, v9) & 1) != 0))
  {
    goto LABEL_97;
  }

  *v200 = 0x7FFFFFFFFFFFFFFFLL;
  v165 = v177(v25, v9);
  v166 = v183(v25, v9);
  if (v165)
  {
    if (v166 > 64)
    {
      goto LABEL_90;
    }

LABEL_96:
    v164 = v196;
    (*(v9 + 120))(v25, v9);
    goto LABEL_97;
  }

  if (v166 < 64)
  {
    goto LABEL_96;
  }

LABEL_90:
  v187 = *(v9 + 96);
  v169 = lazy protocol witness table accessor for type Int and conformance Int(v166, v167, v168);
  v170 = v197;
  (v187)(v200, &type metadata for Int, v169, v25, v9);
  v164 = v196;
  v171 = (*(*(*(v9 + 32) + 8) + 16))(v170, v196, v25);
  (*(v198 + 8))(v170, v25);
  if (v171)
  {
    goto LABEL_91;
  }

LABEL_97:
  v172 = (*(v9 + 120))(v25, v9);
  v173 = v164;
  v174 = *(v198 + 8);
  v174(v173, v25);
  result = (v174)(v199, v25);
  if (!__OFADD__(v172, 24))
  {
    v14 = v179;
    if (v172 + 24 >= v180)
    {
      goto LABEL_8;
    }

LABEL_2:
    (v19[1])(a1, a2);
LABEL_3:
    v31 = 0;
    v32 = 1;
    return v31 | (v32 << 16);
  }

  __break(1u);
  return result;
}

unint64_t specialized BinaryFloatingPoint.init<A>(exactly:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v187 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v187, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v186 = &v176 - v12;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v14 = v13;
  v195 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v194 = &v176 - v15;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v192 = *(v16 - 8);
  v193 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v191 = &v176 - v18;
  v19 = *(a2 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v190 = (&v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v189 = (&v176 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v188 = (&v176 - v24);
  v25 = swift_checkMetadataState(0, v8);
  v198 = *(v25 - 1);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v196 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v197 = &v176 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v199 = &v176 - v30;
  if ((*(v6 + 408))(a2, v6))
  {
    goto LABEL_2;
  }

  v184 = *(a3 + 96);
  v185 = a3 + 96;
  if (v184(a2, a3) <= 8 && (*(a3 + 104))(a2, a3) < 24 || ((*(v6 + 376))(a2, v6) & 1) == 0 || ((*(v6 + 384))(a2, v6) & 1) != 0)
  {
LABEL_8:
    v33 = v184(a2, a3);
    v34 = (*(a3 + 104))(a2, a3);
    if (v33 == 11)
    {
      if (v34 == 52)
      {
        v49 = v190;
        v19[2](v190, a1, a2);
        if (swift_dynamicCast(v200, v49, a2, &type metadata for Double, 6uLL))
        {
          (v19[1])(a1, a2);
          _S0 = v200[0];
        }

        else
        {
          v69 = (*(v6 + 168))(a2, v6);
          v70 = v191;
          (*(a3 + 112))(a2, a3);
          v71 = v193;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v193, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v73 = a1;
          v74 = (*(*(AssociatedConformanceWitness + 8) + 120))(v71);
          (*(v192 + 8))(v70, v71);
          v75 = v194;
          (*(a3 + 120))(a2, a3);
          (v19[1])(v73, a2);
          v76 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v77 = (*(*(v76 + 8) + 120))(v14);
          (*(v195 + 8))(v75, v14);
          _S0 = COERCE_DOUBLE((v69 << 63) | ((v74 & 0x7FF) << 52) | v77 & 0xFFFFFFFFFFFFFLL);
        }

        goto LABEL_25;
      }
    }

    else if (v33 == 8)
    {
      if (v34 == 23)
      {
        v37 = v189;
        v19[2](v189, a1, a2);
        if (!swift_dynamicCast(v200, v37, a2, &type metadata for Float, 6uLL))
        {
          v38 = (*(v6 + 168))(a2, v6);
          v39 = v191;
          (*(a3 + 112))(a2, a3);
          v40 = v193;
          v41 = swift_getAssociatedConformanceWitness(a3, a2, v193, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v42 = a1;
          v43 = (*(*(v41 + 8) + 120))(v40);
          (*(v192 + 8))(v39, v40);
          v44 = v194;
          (*(a3 + 120))(a2, a3);
          (v19[1])(v42, a2);
          v45 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v46 = (*(*(v45 + 8) + 120))(v14);
          (*(v195 + 8))(v44, v14);
          if (v38)
          {
            v47 = 0x80000000;
          }

          else
          {
            v47 = 0;
          }

          LODWORD(_S0) = v47 & 0x80000000 | (v43 << 23) | v46 & 0x7FFFFF;
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if (v33 == 5 && v34 == 10)
    {
      v35 = v188;
      v19[2](v188, a1, a2);
      if (swift_dynamicCast(v200, v35, a2, &type metadata for Float16, 6uLL))
      {
        (v19[1])(a1, a2);
        _H0 = LOWORD(v200[0]);
      }

      else
      {
        v78 = (*(v6 + 168))(a2, v6);
        v79 = v191;
        (*(a3 + 112))(a2, a3);
        v80 = v193;
        v81 = swift_getAssociatedConformanceWitness(a3, a2, v193, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v82 = a1;
        v83 = (*(*(v81 + 8) + 120))(v80);
        (*(v192 + 8))(v79, v80);
        v84 = v194;
        (*(a3 + 120))(a2, a3);
        (v19[1])(v82, a2);
        v85 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v86 = (*(*(v85 + 8) + 120))(v14);
        (*(v195 + 8))(v84, v14);
        if (v78)
        {
          v87 = 0x8000;
        }

        else
        {
          v87 = 0;
        }

        _H0 = v87 & 0x8000 | ((v83 & 0x1F) << 10) | v86 & 0x3FF;
      }

      __asm { FCVT            S0, H0 }

      goto LABEL_25;
    }

    specialized static BinaryFloatingPoint._convert<A>(from:)(v200, a1, a2, a3);
LABEL_24:
    (v19[1])(a1, a2);
    _S0 = *v200;
LABEL_25:
    v32 = 0;
    v31 = LODWORD(_S0);
    goto LABEL_26;
  }

  v180 = v19;
  v178 = v11;
  v51 = *(v6 + 176);
  v52 = v199;
  v181 = a1;
  v51(a2, v6);
  v200[0] = NAN;
  v53 = *(v9 + 64);
  v54 = v53(v25, v9);
  v182 = v9 + 64;
  v179 = v14;
  if ((v54 & 1) == 0)
  {
    v62 = v53(v25, v9);
    v183 = *(v9 + 128);
    v63 = v183(v25, v9);
    v55 = v53;
    if (v62)
    {
      v19 = v180;
      if (v63 > 64)
      {
        v66 = *(v9 + 96);
        v67 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
        v66(v200, &type metadata for Int, v67, v25, v9);
        v68 = (*(*(*(v9 + 32) + 8) + 16))(v199, v197, v25);
        v61 = v198;
        (*(v198 + 8))(v197, v25);
        if (v68)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }

      v96 = v187;
      v97 = v178;
      v98 = swift_getAssociatedConformanceWitness(v187, v25, v178, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v99 = v186;
      (*(v98 + 8))(&qword_18071E0A8, 256, v97, v98);
      (v96[3])(v99, v25, v96);
      LOBYTE(v97) = (*(*(*(v9 + 32) + 8) + 16))(v199, v197, v25);
      v61 = v198;
      (*(v198 + 8))(v197, v25);
      if (v97)
      {
        goto LABEL_50;
      }

      v95 = (*(v9 + 120))(v25, v9) < -126;
    }

    else
    {
      v19 = v180;
      if (v63 >= 64)
      {
        v61 = v198;
        goto LABEL_54;
      }

      v95 = (*(v9 + 120))(v25, v9) < -126;
      v61 = v198;
    }

    if (v95)
    {
      goto LABEL_50;
    }

LABEL_54:
    *&v200[0] = 127;
    v106 = v55(v25, v9);
    v107 = v183(v25, v9);
    if (v106)
    {
      if (v107 > 64)
      {
        goto LABEL_56;
      }
    }

    else if (v107 > 63)
    {
LABEL_56:
      v110 = *(v9 + 96);
      v111 = lazy protocol witness table accessor for type Int and conformance Int(v107, v108, v109);
      v112 = v197;
      v110(v200, &type metadata for Int, v111, v25, v9);
      v113 = v199;
      v114 = (*(*(*(v9 + 32) + 8) + 16))(v112, v199, v25);
      v115 = *(v198 + 8);
      v115(v112, v25);
      v115(v113, v25);
      a1 = v181;
      if (v114)
      {
        goto LABEL_2;
      }

      goto LABEL_60;
    }

    v116 = v199;
    v117 = (*(v9 + 120))(v25, v9);
    (*(v61 + 8))(v116, v25);
    a1 = v181;
    if (v117 > 127)
    {
      goto LABEL_2;
    }

LABEL_60:
    v118 = (*(a3 + 136))(a2, a3);
    v14 = v179;
    if (v118 < 24)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

  v55 = v53;
  v56 = v52;
  v183 = *(v9 + 128);
  v57 = v183(v25, v9);
  if (v57 >= 64)
  {
    v176 = *(v9 + 96);
    v92 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
    v93 = v197;
    v176(v200, &type metadata for Int, v92, v25, v9);
    v94 = (*(*(*(v9 + 32) + 8) + 16))(v56, v93, v25);
    v61 = v198;
    (*(v198 + 8))(v93, v25);
    v19 = v180;
    if (v94)
    {
      goto LABEL_50;
    }

    goto LABEL_54;
  }

  v60 = (*(v9 + 120))(v25, v9);
  v61 = v198;
  v19 = v180;
  if (v60 > -127)
  {
    goto LABEL_54;
  }

LABEL_50:
  v200[0] = NAN;
  v100 = v55(v25, v9);
  v177 = v55;
  if (v100)
  {
    v101 = v199;
    v102 = v183(v25, v9);
    if (v102 >= 64)
    {
      v180 = *(v9 + 96);
      v127 = lazy protocol witness table accessor for type Int and conformance Int(v102, v103, v104);
      v128 = v197;
      (v180)(v200, &type metadata for Int, v127, v25, v9);
      v61 = v198;
      v129 = (*(*(*(v9 + 32) + 8) + 16))(v101, v128, v25);
      (*(v61 + 8))(v128, v25);
      a1 = v181;
      if ((v129 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v105 = (*(v9 + 120))(v25, v9);
      a1 = v181;
      if (v105 > -150)
      {
        goto LABEL_74;
      }
    }

LABEL_70:
    (v19[1])(a1, a2);
    (*(v61 + 8))(v199, v25);
    goto LABEL_3;
  }

  v119 = v55(v25, v9);
  v120 = v183;
  v121 = v183(v25, v9);
  v183 = v120;
  if (v119)
  {
    a1 = v181;
    if (v121 > 64)
    {
      v180 = *(v9 + 96);
      v124 = lazy protocol witness table accessor for type Int and conformance Int(v121, v122, v123);
      v125 = v197;
      (v180)(v200, &type metadata for Int, v124, v25, v9);
      v126 = (*(*(*(v9 + 32) + 8) + 16))(v199, v125, v25);
      v61 = v198;
      (*(v198 + 8))(v125, v25);
      if ((v126 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    v130 = v187;
    v131 = v178;
    v132 = swift_getAssociatedConformanceWitness(v187, v25, v178, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v133 = v186;
    (*(v132 + 8))(&qword_18071E0A8, 256, v131, v132);
    v134 = v130;
    v135 = v130[3];
    v136 = v197;
    (v135)(v133, v25, v134);
    LOBYTE(v131) = (*(*(*(v9 + 32) + 8) + 16))(v199, v136, v25);
    v137 = v136;
    v138 = *(v198 + 8);
    v138(v137, v25);
    if (v131)
    {
      (v19[1])(a1, a2);
      v138(v199, v25);
      goto LABEL_3;
    }

    v139 = (*(v9 + 120))(v25, v9);
    v61 = v198;
    if (v139 < -149)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v61 = v198;
    a1 = v181;
    if (v121 < 64 && (*(v9 + 120))(v25, v9) < -149)
    {
      goto LABEL_70;
    }
  }

LABEL_74:
  v180 = (*(a3 + 136))(a2, a3);
  (*(v61 + 16))(v196, v199, v25);
  v140 = v177(v25, v9);
  v141 = v183;
  if ((v140 & 1) == 0 || v183(v25, v9) < 65)
  {
    goto LABEL_88;
  }

  v200[0] = -0.0;
  v142 = v177;
  if ((v177(v25, v9) & 1) == 0)
  {
    v149 = v142(v25, v9);
    v141 = v183;
    v150 = v183(v25, v9);
    if ((v149 & 1) == 0)
    {
      a1 = v181;
      if (v150 >= 64)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    a1 = v181;
    if (v150 <= 64)
    {
      v156 = v187;
      v157 = v178;
      v158 = swift_getAssociatedConformanceWitness(v187, v25, v178, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v159 = v186;
      (*(v158 + 8))(&qword_18071E0A8, 256, v157, v158);
      v160 = v156;
      v161 = v156[3];
      v162 = v197;
      (v161)(v159, v25, v160);
      LODWORD(v187) = (*(*(*(v9 + 32) + 8) + 16))(v196, v162, v25);
      (*(v198 + 8))(v162, v25);
      v141 = v183;
      if ((v187 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v187 = *(v9 + 96);
      v153 = lazy protocol witness table accessor for type Int and conformance Int(v150, v151, v152);
      v154 = v197;
      (v187)(v200, &type metadata for Int, v153, v25, v9);
      v155 = (*(*(*(v9 + 32) + 8) + 16))(v196, v154, v25);
      (*(v198 + 8))(v154, v25);
      v141 = v183;
      if ((v155 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

LABEL_92:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v141 = v183;
  v143 = v183(v25, v9);
  a1 = v181;
  if (v143 < 64)
  {
LABEL_87:
    (*(v9 + 120))(v25, v9);
    goto LABEL_88;
  }

  v187 = *(v9 + 96);
  v146 = lazy protocol witness table accessor for type Int and conformance Int(v143, v144, v145);
  v147 = v197;
  (v187)(v200, &type metadata for Int, v146, v25, v9);
  v141 = v183;
  v148 = (*(*(*(v9 + 32) + 8) + 16))(v196, v147, v25);
  (*(v198 + 8))(v147, v25);
  if (v148)
  {
    goto LABEL_92;
  }

LABEL_88:
  v183 = v141;
  v163 = v196;
  v164 = v141(v25, v9);
  v165 = v163;
  if (v164 <= 64 && (v183(v25, v9) != 64 || (v177(v25, v9) & 1) != 0))
  {
    goto LABEL_98;
  }

  v200[0] = NAN;
  v166 = v177(v25, v9);
  v167 = v183(v25, v9);
  if (v166)
  {
    if (v167 > 64)
    {
      goto LABEL_91;
    }

LABEL_97:
    v165 = v196;
    (*(v9 + 120))(v25, v9);
    goto LABEL_98;
  }

  if (v167 < 64)
  {
    goto LABEL_97;
  }

LABEL_91:
  v187 = *(v9 + 96);
  v170 = lazy protocol witness table accessor for type Int and conformance Int(v167, v168, v169);
  v171 = v197;
  (v187)(v200, &type metadata for Int, v170, v25, v9);
  v165 = v196;
  v172 = (*(*(*(v9 + 32) + 8) + 16))(v171, v196, v25);
  (*(v198 + 8))(v171, v25);
  if (v172)
  {
    goto LABEL_92;
  }

LABEL_98:
  v173 = (*(v9 + 120))(v25, v9);
  v174 = v165;
  v175 = *(v198 + 8);
  v175(v174, v25);
  result = (v175)(v199, v25);
  if (!__OFADD__(v173, 149))
  {
    v14 = v179;
    if (v173 + 149 >= v180)
    {
      goto LABEL_8;
    }

LABEL_2:
    (v19[1])(a1, a2);
LABEL_3:
    v31 = 0;
    v32 = 1;
LABEL_26:
    LOBYTE(v200[0]) = v32;
    return v31 | (v32 << 32);
  }

  __break(1u);
  return result;
}

{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v185 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v185, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v174 - v12;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v14 = v13;
  v193 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v192 = &v174 - v15;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v190 = *(v16 - 8);
  v191 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v189 = &v174 - v18;
  v19 = *(a2 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v188 = (&v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v187 = (&v174 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v186 = (&v174 - v24);
  v25 = swift_checkMetadataState(0, v8);
  v196 = *(v25 - 1);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v194 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v195 = &v174 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v197 = &v174 - v30;
  if ((*(v6 + 408))(a2, v6))
  {
    goto LABEL_2;
  }

  v182 = *(a3 + 96);
  v183 = a3 + 96;
  if (v182(a2, a3) <= 11 && (*(a3 + 104))(a2, a3) < 53 || ((*(v6 + 376))(a2, v6) & 1) == 0 || ((*(v6 + 384))(a2, v6) & 1) != 0)
  {
LABEL_8:
    v32 = v182(a2, a3);
    v33 = (*(a3 + 104))(a2, a3);
    if (v32 == 11)
    {
      if (v33 == 52)
      {
        v38 = v188;
        v19[2](v188, a1, a2);
        if (!swift_dynamicCast(v198, v38, a2, &type metadata for Double, 6uLL))
        {
          v39 = (*(v6 + 168))(a2, v6);
          v40 = v189;
          (*(a3 + 112))(a2, a3);
          v41 = v191;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v191, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v43 = a1;
          v44 = (*(*(AssociatedConformanceWitness + 8) + 120))(v41);
          (*(v190 + 8))(v40, v41);
          v45 = v192;
          (*(a3 + 120))(a2, a3);
          (v19[1])(v43, a2);
          v46 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v47 = (*(*(v46 + 8) + 120))(v14);
          (*(v193 + 8))(v45, v14);
          *&_D0 = (v39 << 63) | ((v44 & 0x7FF) << 52) | v47 & 0xFFFFFFFFFFFFFLL;
          return *&_D0;
        }

LABEL_21:
        (v19[1])(a1, a2);
        _D0 = *v198;
        return *&_D0;
      }
    }

    else if (v32 == 8)
    {
      if (v33 == 23)
      {
        v36 = v187;
        v19[2](v187, a1, a2);
        if (swift_dynamicCast(v198, v36, a2, &type metadata for Float, 6uLL))
        {
          (v19[1])(a1, a2);
          _D0 = *v198;
        }

        else
        {
          v66 = (*(v6 + 168))(a2, v6);
          v67 = v189;
          (*(a3 + 112))(a2, a3);
          v68 = v191;
          v69 = swift_getAssociatedConformanceWitness(a3, a2, v191, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
          v70 = a1;
          v71 = (*(*(v69 + 8) + 120))(v68);
          (*(v190 + 8))(v67, v68);
          v72 = v192;
          (*(a3 + 120))(a2, a3);
          (v19[1])(v70, a2);
          v73 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
          v74 = (*(*(v73 + 8) + 120))(v14);
          (*(v193 + 8))(v72, v14);
          if (v66)
          {
            v75 = 0x80000000;
          }

          else
          {
            v75 = 0;
          }

          _D0 = COERCE_FLOAT(v75 & 0x80000000 | (v71 << 23) | v74 & 0x7FFFFF);
        }

        return *&_D0;
      }
    }

    else if (v32 == 5 && v33 == 10)
    {
      v34 = v186;
      v19[2](v186, a1, a2);
      if (swift_dynamicCast(v198, v34, a2, &type metadata for Float16, 6uLL))
      {
        (v19[1])(a1, a2);
        _H0 = v198[0];
      }

      else
      {
        v76 = (*(v6 + 168))(a2, v6);
        v77 = v189;
        (*(a3 + 112))(a2, a3);
        v78 = v191;
        v79 = swift_getAssociatedConformanceWitness(a3, a2, v191, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger);
        v80 = a1;
        v81 = (*(*(v79 + 8) + 120))(v78);
        (*(v190 + 8))(v77, v78);
        v82 = v192;
        (*(a3 + 120))(a2, a3);
        (v19[1])(v80, a2);
        v83 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
        v84 = (*(*(v83 + 8) + 120))(v14);
        (*(v193 + 8))(v82, v14);
        if (v76)
        {
          v85 = 0x8000;
        }

        else
        {
          v85 = 0;
        }

        _H0 = v85 & 0x8000 | ((v81 & 0x1F) << 10) | v84 & 0x3FF;
      }

      __asm { FCVT            D0, H0 }

      return *&_D0;
    }

    specialized static BinaryFloatingPoint._convert<A>(from:)(v198, a1, a2, a3);
    goto LABEL_21;
  }

  v178 = v19;
  v176 = v11;
  v48 = *(v6 + 176);
  v49 = v197;
  v179 = a1;
  v48(a2, v6);
  v198[0] = -1022;
  v50 = *(v9 + 64);
  v51 = v50(v25, v9);
  v180 = v9 + 64;
  v177 = v14;
  if ((v51 & 1) == 0)
  {
    v59 = v50(v25, v9);
    v181 = *(v9 + 128);
    v60 = v181(v25, v9);
    v52 = v50;
    if (v59)
    {
      v19 = v178;
      if (v60 > 64)
      {
        v63 = *(v9 + 96);
        v64 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
        v63(v198, &type metadata for Int, v64, v25, v9);
        v65 = (*(*(*(v9 + 32) + 8) + 16))(v197, v195, v25);
        v58 = v196;
        (*(v196 + 8))(v195, v25);
        if (v65)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      v94 = v185;
      v95 = v176;
      v96 = swift_getAssociatedConformanceWitness(v185, v25, v176, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v97 = v184;
      (*(v96 + 8))(&qword_18071E0A8, 256, v95, v96);
      (v94[3])(v97, v25, v94);
      LOBYTE(v95) = (*(*(*(v9 + 32) + 8) + 16))(v197, v195, v25);
      v58 = v196;
      (*(v196 + 8))(v195, v25);
      if (v95)
      {
        goto LABEL_49;
      }

      v93 = (*(v9 + 120))(v25, v9) < -1022;
    }

    else
    {
      v19 = v178;
      if (v60 >= 64)
      {
        v58 = v196;
        goto LABEL_53;
      }

      v93 = (*(v9 + 120))(v25, v9) < -1022;
      v58 = v196;
    }

    if (v93)
    {
      goto LABEL_49;
    }

LABEL_53:
    v198[0] = 1023;
    v104 = v52(v25, v9);
    v105 = v181(v25, v9);
    if (v104)
    {
      if (v105 > 64)
      {
        goto LABEL_55;
      }
    }

    else if (v105 > 63)
    {
LABEL_55:
      v108 = *(v9 + 96);
      v109 = lazy protocol witness table accessor for type Int and conformance Int(v105, v106, v107);
      v110 = v195;
      v108(v198, &type metadata for Int, v109, v25, v9);
      v111 = v197;
      v112 = (*(*(*(v9 + 32) + 8) + 16))(v110, v197, v25);
      v113 = *(v196 + 8);
      v113(v110, v25);
      v113(v111, v25);
      a1 = v179;
      if (v112)
      {
        goto LABEL_2;
      }

      goto LABEL_59;
    }

    v114 = v197;
    v115 = (*(v9 + 120))(v25, v9);
    (*(v58 + 8))(v114, v25);
    a1 = v179;
    if (v115 > 1023)
    {
      goto LABEL_2;
    }

LABEL_59:
    v116 = (*(a3 + 136))(a2, a3);
    v14 = v177;
    if (v116 < 53)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

  v52 = v50;
  v53 = v49;
  v181 = *(v9 + 128);
  v54 = v181(v25, v9);
  if (v54 >= 64)
  {
    v174 = *(v9 + 96);
    v90 = lazy protocol witness table accessor for type Int and conformance Int(v54, v55, v56);
    v91 = v195;
    v174(v198, &type metadata for Int, v90, v25, v9);
    v92 = (*(*(*(v9 + 32) + 8) + 16))(v53, v91, v25);
    v58 = v196;
    (*(v196 + 8))(v91, v25);
    v19 = v178;
    if (v92)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  v57 = (*(v9 + 120))(v25, v9);
  v58 = v196;
  v19 = v178;
  if (v57 > -1023)
  {
    goto LABEL_53;
  }

LABEL_49:
  v198[0] = -1074;
  v98 = v52(v25, v9);
  v175 = v52;
  if (v98)
  {
    v99 = v197;
    v100 = v181(v25, v9);
    if (v100 >= 64)
    {
      v178 = *(v9 + 96);
      v125 = lazy protocol witness table accessor for type Int and conformance Int(v100, v101, v102);
      v126 = v195;
      (v178)(v198, &type metadata for Int, v125, v25, v9);
      v58 = v196;
      v127 = (*(*(*(v9 + 32) + 8) + 16))(v99, v126, v25);
      (*(v58 + 8))(v126, v25);
      a1 = v179;
      if ((v127 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v103 = (*(v9 + 120))(v25, v9);
      a1 = v179;
      if (v103 > -1075)
      {
        goto LABEL_73;
      }
    }

LABEL_69:
    (v19[1])(a1, a2);
    (*(v58 + 8))(v197, v25);
    return 0;
  }

  v117 = v52(v25, v9);
  v118 = v181;
  v119 = v181(v25, v9);
  v181 = v118;
  if (v117)
  {
    a1 = v179;
    if (v119 > 64)
    {
      v178 = *(v9 + 96);
      v122 = lazy protocol witness table accessor for type Int and conformance Int(v119, v120, v121);
      v123 = v195;
      (v178)(v198, &type metadata for Int, v122, v25, v9);
      v124 = (*(*(*(v9 + 32) + 8) + 16))(v197, v123, v25);
      v58 = v196;
      (*(v196 + 8))(v123, v25);
      if ((v124 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

    v128 = v185;
    v129 = v176;
    v130 = swift_getAssociatedConformanceWitness(v185, v25, v176, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v131 = v184;
    (*(v130 + 8))(&qword_18071E0A8, 256, v129, v130);
    v132 = v128;
    v133 = v128[3];
    v134 = v195;
    (v133)(v131, v25, v132);
    LOBYTE(v129) = (*(*(*(v9 + 32) + 8) + 16))(v197, v134, v25);
    v135 = v134;
    v136 = *(v196 + 8);
    v136(v135, v25);
    if (v129)
    {
      (v19[1])(a1, a2);
      v136(v197, v25);
      return 0;
    }

    v137 = (*(v9 + 120))(v25, v9);
    v58 = v196;
    if (v137 < -1074)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v58 = v196;
    a1 = v179;
    if (v119 < 64 && (*(v9 + 120))(v25, v9) < -1074)
    {
      goto LABEL_69;
    }
  }

LABEL_73:
  v178 = (*(a3 + 136))(a2, a3);
  (*(v58 + 16))(v194, v197, v25);
  v138 = v175(v25, v9);
  v139 = v181;
  if ((v138 & 1) == 0 || v181(v25, v9) < 65)
  {
    goto LABEL_87;
  }

  v198[0] = 0x8000000000000000;
  v140 = v175;
  if ((v175(v25, v9) & 1) == 0)
  {
    v147 = v140(v25, v9);
    v139 = v181;
    v148 = v181(v25, v9);
    if ((v147 & 1) == 0)
    {
      a1 = v179;
      if (v148 >= 64)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    a1 = v179;
    if (v148 <= 64)
    {
      v154 = v185;
      v155 = v176;
      v156 = swift_getAssociatedConformanceWitness(v185, v25, v176, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v157 = v184;
      (*(v156 + 8))(&qword_18071E0A8, 256, v155, v156);
      v158 = v154;
      v159 = v154[3];
      v160 = v195;
      (v159)(v157, v25, v158);
      LODWORD(v185) = (*(*(*(v9 + 32) + 8) + 16))(v194, v160, v25);
      (*(v196 + 8))(v160, v25);
      v139 = v181;
      if ((v185 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v185 = *(v9 + 96);
      v151 = lazy protocol witness table accessor for type Int and conformance Int(v148, v149, v150);
      v152 = v195;
      (v185)(v198, &type metadata for Int, v151, v25, v9);
      v153 = (*(*(*(v9 + 32) + 8) + 16))(v194, v152, v25);
      (*(v196 + 8))(v152, v25);
      v139 = v181;
      if ((v153 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_91:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v139 = v181;
  v141 = v181(v25, v9);
  a1 = v179;
  if (v141 < 64)
  {
LABEL_86:
    (*(v9 + 120))(v25, v9);
    goto LABEL_87;
  }

  v185 = *(v9 + 96);
  v144 = lazy protocol witness table accessor for type Int and conformance Int(v141, v142, v143);
  v145 = v195;
  (v185)(v198, &type metadata for Int, v144, v25, v9);
  v139 = v181;
  v146 = (*(*(*(v9 + 32) + 8) + 16))(v194, v145, v25);
  (*(v196 + 8))(v145, v25);
  if (v146)
  {
    goto LABEL_91;
  }

LABEL_87:
  v181 = v139;
  v161 = v194;
  v162 = v139(v25, v9);
  v163 = v161;
  if (v162 <= 64 && (v181(v25, v9) != 64 || (v175(v25, v9) & 1) != 0))
  {
    goto LABEL_97;
  }

  v198[0] = 0x7FFFFFFFFFFFFFFFLL;
  v164 = v175(v25, v9);
  v165 = v181(v25, v9);
  if (v164)
  {
    if (v165 > 64)
    {
      goto LABEL_90;
    }

LABEL_96:
    v163 = v194;
    (*(v9 + 120))(v25, v9);
    goto LABEL_97;
  }

  if (v165 < 64)
  {
    goto LABEL_96;
  }

LABEL_90:
  v185 = *(v9 + 96);
  v168 = lazy protocol witness table accessor for type Int and conformance Int(v165, v166, v167);
  v169 = v195;
  (v185)(v198, &type metadata for Int, v168, v25, v9);
  v163 = v194;
  v170 = (*(*(*(v9 + 32) + 8) + 16))(v169, v194, v25);
  (*(v196 + 8))(v169, v25);
  if (v170)
  {
    goto LABEL_91;
  }

LABEL_97:
  v171 = (*(v9 + 120))(v25, v9);
  v172 = v163;
  v173 = *(v196 + 8);
  v173(v172, v25);
  result = (v173)(v197, v25);
  if (!__OFADD__(v171, 1074))
  {
    v14 = v177;
    if (v171 + 1074 >= v178)
    {
      goto LABEL_8;
    }

LABEL_2:
    (v19[1])(a1, a2);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t BinaryFloatingPoint.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v9 = a2;
  v321 = a6;
  v11 = *(a4 + 16);
  swift_getAssociatedTypeWitness(255, v11, a2, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v13 = v12;
  v316 = v11;
  v311 = *(swift_getAssociatedConformanceWitness(v11, v9, v12, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v301 = v311[3];
  v303 = *(v301 + 2);
  swift_getAssociatedTypeWitness(0, v303, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v302 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v304 = &v281[-v15];
  v16 = *(a5 + 16);
  swift_getAssociatedTypeWitness(255, v16, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v18 = v17;
  v317 = *(swift_getAssociatedConformanceWitness(v16, a3, v17, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v299 = *(*(v317 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v299, v18, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v297 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v298 = &v281[-v20];
  v318 = swift_checkMetadataState(0, v13);
  v315 = *(v318 - 1);
  v21 = MEMORY[0x1EEE9AC00](v318);
  v308 = &v281[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v300 = &v281[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v305 = &v281[-v26];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v309 = &v281[-v28];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v310 = &v281[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v281[-v32];
  v322 = *(v9 - 1);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v306 = &v281[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v307 = &v281[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v281[-v39];
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v281[-v41];
  v43 = swift_checkMetadataState(0, v18);
  v313 = *(v43 - 1);
  v314 = v43;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v312 = &v281[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44);
  v319 = &v281[-v46];
  if (((*(v16 + 408))(a3, v16) & 1) == 0)
  {
    v320 = a1;
    v49 = (*(a5 + 96))(a3, a5);
    if ((*(v7 + 96))(v9, v7) >= v49)
    {
      v50 = (*(a5 + 104))(a3, a5);
      if ((*(v7 + 104))(v9, v7) >= v50)
      {
        goto LABEL_8;
      }
    }

    if ((*(v16 + 376))(a3, v16) & 1) == 0 || ((*(v16 + 384))(a3, v16))
    {
      goto LABEL_8;
    }

    v284 = a5;
    v283 = v7;
    v52 = *(v16 + 176);
    v288 = a3;
    v52(a3, v16);
    v53 = v316;
    (v316[19])(v9, v316);
    v54 = v53[22];
    v290 = v53 + 22;
    v289 = v54;
    (v54)(v9, v53);
    v55 = *(v322 + 8);
    v293 = v322 + 8;
    v292 = v55;
    v55(v42, v9);
    v56 = v317;
    v58 = v317 + 64;
    v57 = *(v317 + 64);
    v59 = v314;
    v60 = v57();
    v61 = v311;
    v62 = v311[8];
    v295 = v311 + 8;
    v294 = v62;
    v63 = v62();
    v296 = v9;
    v286 = v58;
    v285 = v57;
    if ((v60 ^ v63))
    {
      v64 = v61;
      v65 = (v57)(v59, v56);
      v287 = *(v56 + 128);
      v66 = v287(v59, v56);
      v291 = v64[16];
      v67 = (v291)(v318, v64);
      if ((v65 & 1) == 0)
      {
        if (v66 < v67)
        {
          v81 = v312;
          v71 = v314;
          (*(v313 + 16))(v312, v319, v314);
          v83 = v310;
          v82 = v311;
          v69 = v318;
          (v311[12])(v81, v71, v317, v318, v311);
          v78 = (*(*(v82[4] + 1) + 16))(v83, v33, v69);
          v84 = *(v315 + 8);
          v84(v83, v69);
          v84(v33, v69);
          v61 = v82;
          goto LABEL_21;
        }

        v125 = v303;
        v69 = v318;
        v126 = v302;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v303, v318, v302, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v128 = v304;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v126, AssociatedConformanceWitness);
        v129 = v310;
        (v125[3])(v128, v69, v125);
        v130 = v311;
        LOBYTE(v126) = (*(*(v311[4] + 1) + 40))(v33, v129, v69);
        v131 = *(v315 + 8);
        v131(v129, v69);
        if ((v126 & 1) == 0)
        {
          v131(v33, v69);
          v71 = v314;
          v61 = v130;
          v87 = v294;
          goto LABEL_44;
        }

        v132 = v317;
        v70 = v312;
        v71 = v314;
        (*(v317 + 96))(v33, v69, v130, v314, v317);
        v61 = v130;
        v86 = (*(*(*(v132 + 32) + 8) + 16))(v319, v70, v71);
LABEL_20:
        v78 = v86;
        (*(v313 + 8))(v70, v71);
LABEL_21:
        v87 = v294;
        if (v78)
        {
          goto LABEL_22;
        }

LABEL_44:
        v151 = v316;
        v152 = v316[15];
        v153 = v306;
        v154 = v296;
        v311 = v316 + 15;
        v309 = v152;
        (v152)(v296, v316);
        v155 = v308;
        (v289)(v154, v151);
        v292(v153, v154);
        LODWORD(v154) = (v87)(v69, v61);
        v156 = v317;
        if ((v154 ^ (v285)(v71, v317)))
        {
          v157 = (v87)(v69, v61);
          v158 = (v291)(v69, v61);
          v159 = v287(v71, v156);
          if (v157)
          {
            v160 = v315;
            v7 = v283;
            if (v159 >= v158)
            {
              v194 = v303;
              v195 = v318;
              v196 = v302;
              v197 = swift_getAssociatedConformanceWitness(v303, v318, v302, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v198 = v304;
              (*(v197 + 8))(&qword_18071E0A8, 256, v196, v197);
              v199 = v310;
              v200 = v308;
              (v194[3])(v198, v195, v194);
              LOBYTE(v196) = (*(*(v61[4] + 1) + 16))(v200, v199, v195);
              v201 = *(v160 + 8);
              v201(v199, v195);
              v202 = v319;
              if (v196)
              {
                v201(v200, v195);
                (*(v313 + 8))(v202, v314);
              }

              else
              {
                v245 = v317;
                v246 = v312;
                v247 = v195;
                v248 = v314;
                (*(v317 + 96))(v200, v247, v61, v314, v317);
                v249 = (*(*(*(v245 + 32) + 8) + 16))(v246, v202, v248);
                v250 = *(v313 + 8);
                v250(v246, v248);
                v250(v202, v248);
                if ((v249 & 1) == 0)
                {
LABEL_76:
                  a5 = v284;
                  a3 = v288;
                  v251 = (*(v284 + 136))(v288, v284);
                  v252 = v307;
                  v9 = v296;
                  (v309)(v296, v316);
                  v253 = (*(v7 + 136))(v9, v7);
                  v292(v252, v9);
                  if (v253 < v251)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_8;
                }
              }
            }

            else
            {
              v161 = v312;
              v162 = v314;
              (*(v313 + 32))(v312, v319, v314);
              v163 = v310;
              v164 = v318;
              (v61[12])(v161, v162, v317, v318, v61);
              LOBYTE(v162) = (*(*(v61[4] + 1) + 16))(v155, v163, v164);
              v165 = *(v160 + 8);
              v165(v163, v164);
              v165(v155, v164);
              if ((v162 & 1) == 0)
              {
                goto LABEL_76;
              }
            }

LABEL_56:
            (*(*(v288 - 1) + 8))(v320);
            goto LABEL_57;
          }

          v173 = v315;
          if (v158 >= v159)
          {
            v203 = v299;
            v204 = v314;
            v205 = v297;
            v206 = swift_getAssociatedConformanceWitness(v299, v314, v297, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v207 = v298;
            (*(v206 + 8))(&qword_18071E0A8, 256, v205, v206);
            v208 = v312;
            (v203[3])(v207, v204, v203);
            v209 = v319;
            LOBYTE(v205) = (*(*(*(v156 + 32) + 8) + 40))(v319, v208, v204);
            v210 = v156;
            v211 = v313;
            v212 = *(v313 + 8);
            v212(v208, v204);
            if ((v205 & 1) == 0)
            {
              (*(v173 + 8))(v308, v318);
              v212(v209, v204);
              v7 = v283;
              goto LABEL_76;
            }

            (*(v211 + 32))(v208, v209, v204);
            v213 = v310;
            v214 = v318;
            (v61[12])(v208, v204, v210, v318, v61);
            v215 = v308;
            v169 = (*(*(v61[4] + 1) + 16))(v308, v213, v214);
            v216 = *(v173 + 8);
            v216(v213, v214);
            v216(v215, v214);
            goto LABEL_55;
          }

          v174 = v312;
          v175 = v314;
          (*(v156 + 96))(v155, v318, v61, v314, v156);
          v176 = *(*(*(v156 + 32) + 8) + 16);
          v177 = v319;
          v169 = v176(v174, v319, v175);
          v170 = *(v313 + 8);
          v170(v174, v175);
          v171 = v177;
          v172 = v175;
        }

        else
        {
          v166 = (v291)(v69, v61);
          v167 = v319;
          if (v166 >= v287(v71, v156))
          {
            v178 = v312;
            (*(v313 + 32))(v312, v167, v71);
            v179 = v156;
            v180 = v310;
            (v61[12])(v178, v71, v179, v69, v61);
            v169 = (*(*(v61[4] + 1) + 16))(v155, v180, v69);
            v181 = *(v315 + 8);
            v181(v180, v69);
            v181(v155, v69);
LABEL_55:
            v7 = v283;
            if ((v169 & 1) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_56;
          }

          v168 = v312;
          (*(v156 + 96))(v155, v69, v61, v71, v156);
          v169 = (*(*(*(v156 + 32) + 8) + 16))(v168, v167, v71);
          v170 = *(v313 + 8);
          v170(v168, v71);
          v171 = v167;
          v172 = v71;
        }

        v170(v171, v172);
        goto LABEL_55;
      }

      if (v67 >= v66)
      {
        v117 = v299;
        v71 = v314;
        v118 = v297;
        v119 = swift_getAssociatedConformanceWitness(v299, v314, v297, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v120 = v298;
        (*(v119 + 8))(&qword_18071E0A8, 256, v118, v119);
        v121 = v312;
        (v117[3])(v120, v71, v117);
        v122 = v317;
        v123 = v319;
        LOBYTE(v118) = (*(*(*(v317 + 32) + 8) + 16))(v319, v121, v71);
        v124 = v313;
        (*(v313 + 8))(v121, v71);
        v61 = v311;
        if (v118)
        {
          v69 = v318;
          (*(v315 + 8))(v33, v318);
          v87 = v294;
        }

        else
        {
          (*(v124 + 16))(v121, v123, v71);
          v147 = v310;
          v148 = v121;
          v69 = v318;
          (v61[12])(v148, v71, v122, v318, v61);
          v282 = (*(*(v61[4] + 1) + 16))(v147, v33, v69);
          v149 = v61;
          v150 = *(v315 + 8);
          v150(v147, v69);
          v150(v33, v69);
          v61 = v149;
          v87 = v294;
          if ((v282 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

LABEL_22:
        v88 = v316;
        v89 = v316[20];
        v90 = v296;
        v308 = v316 + 20;
        v306 = v89;
        (v89)(v296, v316);
        v91 = v61;
        v92 = v309;
        (v289)(v90, v88);
        v292(v40, v90);
        v93 = v71;
        v94 = v71;
        v95 = v317;
        v96 = v69;
        v97 = v285;
        LODWORD(v90) = (v285)(v94, v317);
        if ((v90 ^ (v87)(v69, v91)))
        {
          v98 = v93;
          v99 = (v97)(v93, v95);
          v100 = v319;
          v101 = v287(v98, v95);
          v102 = (v291)(v69, v91);
          v103 = v315;
          if (v99)
          {
            if (v102 >= v101)
            {
              v140 = v299;
              v106 = v314;
              v141 = v297;
              v142 = swift_getAssociatedConformanceWitness(v299, v314, v297, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v143 = v298;
              (*(v142 + 8))(&qword_18071E0A8, 256, v141, v142);
              v105 = v312;
              (v140[3])(v143, v106, v140);
              LOBYTE(v140) = (*(*(*(v95 + 32) + 8) + 16))(v100, v105, v106);
              v144 = v100;
              v145 = v313;
              (*(v313 + 8))(v105, v106);
              v146 = v318;
              if (v140)
              {
                (*(v103 + 8))(v309, v318);
                v108 = v145;
                v100 = v144;
              }

              else
              {
                (*(v145 + 16))(v105, v144, v106);
                v217 = v311;
                v218 = v95;
                v220 = v309;
                v219 = v310;
                (v311[12])(v105, v106, v218, v146, v311);
                LODWORD(v299) = (*(*(v217[4] + 1) + 16))(v219, v220, v146);
                v221 = v144;
                v222 = *(v103 + 8);
                v222(v219, v318);
                v223 = v220;
                v109 = v317;
                v222(v223, v318);
                v104 = v217;
                v96 = v318;
                v108 = v145;
                v100 = v221;
                if ((v299 & 1) == 0)
                {
                  goto LABEL_68;
                }
              }
            }

            else
            {
              v104 = v311;
              v105 = v312;
              v96 = v318;
              v106 = v314;
              (*(v95 + 96))(v309, v318, v311, v314, v95);
              v107 = (*(*(*(v95 + 32) + 8) + 16))(v100, v105, v106);
              v108 = v313;
              (*(v313 + 8))(v105, v106);
              v109 = v95;
              if ((v107 & 1) == 0)
              {
                goto LABEL_68;
              }
            }

            goto LABEL_38;
          }

          if (v101 < v102)
          {
            v105 = v312;
            v106 = v314;
            (*(v313 + 16))(v312, v319, v314);
            v133 = v310;
            v134 = v311;
            v135 = v309;
            v109 = v317;
            v136 = v318;
            (v311[12])(v105, v106, v317, v318, v311);
            v137 = (*(*(v134[4] + 1) + 16))(v133, v135, v136);
            v138 = *(v315 + 8);
            v138(v133, v136);
            v138(v135, v136);
            v104 = v134;
            v96 = v136;
            v108 = v313;
            v100 = v319;
            if ((v137 & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_38;
          }

          v182 = v303;
          v183 = v318;
          v184 = v302;
          v185 = swift_getAssociatedConformanceWitness(v303, v318, v302, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v186 = v304;
          (*(v185 + 8))(&qword_18071E0A8, 256, v184, v185);
          v187 = v310;
          (v182[3])(v186, v183, v182);
          v188 = v311;
          v189 = v309;
          LOBYTE(v184) = (*(*(v311[4] + 1) + 40))(v309, v187, v183);
          v190 = *(v315 + 8);
          v190(v187, v183);
          if (v184)
          {
            v109 = v317;
            v105 = v312;
            v191 = v189;
            v106 = v314;
            (*(v317 + 96))(v191, v183, v188, v314, v317);
            v192 = (*(*(*(v109 + 32) + 8) + 16))(v100, v105, v106);
            v193 = v313;
            (*(v313 + 8))(v105, v106);
            v96 = v183;
            v108 = v193;
            v104 = v188;
            if ((v192 & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_38;
          }

          v190(v189, v183);
          v96 = v183;
          v108 = v313;
          v106 = v314;
          v109 = v317;
          v105 = v312;
          v104 = v188;
        }

        else
        {
          v110 = v319;
          v111 = v287(v93, v95);
          v112 = v111 < (v291)(v69, v91);
          v106 = v93;
          v104 = v91;
          v105 = v312;
          if (v112)
          {
            v108 = v313;
            (*(v313 + 16))(v312, v110, v93);
            v113 = v95;
            v114 = v310;
            (v104[12])(v105, v93, v113, v96, v104);
            v139 = (*(*(v104[4] + 1) + 16))(v114, v92, v96);
            v115 = *(v315 + 8);
            v115(v114, v318);
            v116 = v92;
            v109 = v317;
            v115(v116, v318);
            v96 = v318;
          }

          else
          {
            (*(v95 + 96))(v92, v69, v104, v93, v95);
            v139 = (*(*(*(v95 + 32) + 8) + 16))(v110, v105, v93);
            v108 = v313;
            (*(v313 + 8))(v105, v93);
            v109 = v95;
          }

          v100 = v110;
          if (v139)
          {
LABEL_38:
            (*(*(v288 - 1) + 8))(v320);
            (*(v108 + 8))(v100, v106);
LABEL_57:
            v47 = 1;
            v48 = v321;
            v9 = v296;
            return (*(v322 + 56))(v48, v47, 1, v9);
          }
        }

LABEL_68:
        v224 = v100;
        a3 = v288;
        v312 = (*(v284 + 136))(v288, v284);
        (*(v108 + 16))(v105, v224, v106);
        v225 = v310;
        (v104[11])(v105, v106, v109, v96, v104);
        v226 = v307;
        v9 = v296;
        v227 = v316;
        (v306)(v296, v316);
        v228 = v104;
        v229 = v300;
        (v289)(v9, v227);
        v292(v226, v9);
        v230 = v305;
        (*(*(v301 + 1) + 40))(v225, v229, v96);
        v231 = v315 + 8;
        v232 = *(v315 + 8);
        v232(v229, v96);
        v233 = v225;
        v234 = v230;
        v315 = v231;
        v232(v233, v96);
        v235 = (v294)(v96, v228);
        v236 = v291;
        if ((v235 & 1) == 0 || (v291)(v96, v228) < 65)
        {
          goto LABEL_87;
        }

        v237 = v294;
        if ((v294)(v96, v228))
        {
          v236 = v291;
          v238 = (v291)(v96, v228);
          if (v238 >= 64)
          {
            v323 = 0x8000000000000000;
            v241 = v228[12];
            v242 = lazy protocol witness table accessor for type Int and conformance Int(v238, v239, v240);
            v243 = v310;
            (v241)(&v323, &type metadata for Int, v242, v318, v228);
            v96 = v318;
            v244 = (*(*(v228[4] + 1) + 16))(v305, v243, v318);
            goto LABEL_81;
          }
        }

        else
        {
          v254 = (v237)(v96, v228);
          v255 = v96;
          v256 = v254;
          v236 = v291;
          v257 = (v291)(v255, v228);
          if (v256)
          {
            if (v257 > 64)
            {
              v323 = 0x8000000000000000;
              v260 = v228[12];
              v261 = lazy protocol witness table accessor for type Int and conformance Int(v257, v258, v259);
              v243 = v310;
              v262 = v318;
              (v260)(&v323, &type metadata for Int, v261, v318, v228);
              v96 = v262;
              v244 = (*(*(v228[4] + 1) + 16))(v305, v243, v262);
LABEL_81:
              v263 = v244;
              v264 = v243;
              v234 = v305;
              v232(v264, v96);
              if (v263)
              {
                goto LABEL_91;
              }

LABEL_87:
              if (v236)(v96, v228) <= 64 && ((v236)(v96, v228) != 64 || ((v294)(v96, v228)))
              {
                goto LABEL_97;
              }

              v269 = (v294)(v96, v228);
              v270 = v96;
              v271 = v269;
              v272 = (v236)(v270, v228);
              if (v271)
              {
                if (v272 >= 65)
                {
                  goto LABEL_90;
                }
              }

              else if (v272 >= 64)
              {
LABEL_90:
                v323 = 0x7FFFFFFFFFFFFFFFLL;
                v275 = v228[12];
                v276 = lazy protocol witness table accessor for type Int and conformance Int(v272, v273, v274);
                v277 = v310;
                v278 = v318;
                (v275)(&v323, &type metadata for Int, v276, v318, v228);
                v96 = v278;
                LOBYTE(v278) = (*(*(v228[4] + 1) + 16))(v277, v305, v278);
                v279 = v277;
                v234 = v305;
                v232(v279, v96);
                if (v278)
                {
                  goto LABEL_91;
                }

LABEL_97:
                (*(v313 + 8))(v319, v314);
                v280 = (v228[15])(v96, v228);
                v232(v234, v96);
                v7 = v283;
                a5 = v284;
                if (v280 < v312)
                {
LABEL_98:
                  (*(*(a3 - 1) + 8))(v320, a3);
                  goto LABEL_3;
                }

LABEL_8:
                v48 = v321;
                (*(v7 + 80))(v320, a3, a5, v9, v7);
                v47 = 0;
                return (*(v322 + 56))(v48, v47, 1, v9);
              }

              v96 = v318;
              (v228[15])(v318, v228);
              goto LABEL_97;
            }

            v265 = v303;
            v96 = v318;
            v266 = v302;
            v267 = swift_getAssociatedConformanceWitness(v303, v318, v302, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            (*(v267 + 8))(&qword_18071E0A8, 256, v266, v267);
            v268 = v310;
            (v265[3])(v304, v96, v265);
            LOBYTE(v266) = (*(*(v228[4] + 1) + 16))(v234, v268, v96);
            v232(v268, v96);
            if (v266)
            {
LABEL_91:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }
          }

          else
          {
            v96 = v318;
            if (v257 >= 64)
            {
              goto LABEL_87;
            }
          }
        }

        (v228[15])(v96, v228);
        goto LABEL_87;
      }

      v68 = v317;
      v69 = v318;
      v61 = v311;
      v70 = v312;
      v71 = v314;
      (*(v317 + 96))(v33, v318, v311, v314, v317);
      v72 = *(v68 + 32);
    }

    else
    {
      v71 = v59;
      v287 = *(v56 + 128);
      v73 = v287(v59, v56);
      v291 = v61[16];
      v74 = v56;
      if (v73 < (v291)(v318, v61))
      {
        v75 = v312;
        (*(v313 + 16))(v312, v319, v59);
        v76 = v56;
        v77 = v310;
        v69 = v318;
        (v61[12])(v75, v59, v76, v318, v61);
        v78 = (*(*(v61[4] + 1) + 16))(v77, v33, v69);
        v79 = v61;
        v80 = *(v315 + 8);
        v80(v77, v69);
        v80(v33, v69);
        v61 = v79;
        goto LABEL_21;
      }

      v85 = *(v56 + 96);
      v70 = v312;
      v69 = v318;
      v85(v33, v318, v61, v59, v74);
      v72 = *(v74 + 32);
    }

    v86 = (*(*(v72 + 8) + 16))(v319, v70, v71);
    goto LABEL_20;
  }

  (*(*(a3 - 1) + 8))(a1, a3);
LABEL_3:
  v47 = 1;
  v48 = v321;
  return (*(v322 + 56))(v48, v47, 1, v9);
}