uint64_t String.init<A>(reflecting:)(uint64_t a1, Class *a2)
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(a1, v5, a2, &type metadata for String, &protocol witness table for String);
  (*(*(a2 - 1) + 1))(a1, a2);
  return v5[0];
}

uint64_t Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *v12;
  v15 = v13[1];
  v31[0] = *v13;
  v14 = v31[0];
  v31[1] = v15;
  v29 = static Mirror._superclassIterator<A>(_:_:)(v9, v31, v16);
  v18 = v17;
  outlined consume of Mirror.AncestorRepresentation(v14, v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v20 = swift_allocObject(v19, 0x48, 7uLL);
  v20[6] = a2;
  v20[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v20[8] = 0;
  v21 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v22 = swift_allocObject(v21, 0x18, 7uLL);
  v22[2] = 0;
  v23 = *(a2 + 16);
  v24 = swift_allocObject(v21, 0x18, 7uLL);
  v24[2] = v23;
  v20[2] = v22;
  v20[3] = &protocol witness table for _IndexBox<A>;
  v20[4] = v24;
  v20[5] = &protocol witness table for _IndexBox<A>;
  (*(v8 + 32))(v11, a1, a3);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v31, v11, a3, v25, 6uLL);
  v27 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  *a4 = a3;
  *(a4 + 8) = v20;
  *(a4 + 16) = v30;
  *(a4 + 24) = v29;
  *(a4 + 32) = v18;
  *(a4 + 40) = v27;
  return result;
}

uint64_t ClosedRange<>.init(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v54 = a4;
  v55 = a1;
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v44 - v9;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v48 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = *(*(swift_getAssociatedConformanceWitness(a3, a2, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v14, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v20 = *(a2 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v46 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v44 - v23;
  v49 = a3;
  v24 = *(a3 + 8);
  v26 = type metadata accessor for Range(0, a2, v24, v25);
  v27 = *(v26 + 36);
  v47 = v24;
  if ((*(*(v24 + 8) + 8))(v55, v55 + v27, a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v11, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v16, AssociatedConformanceWitness);
  (*(v14 + 24))(v19, v11, v14);
  v29 = v55;
  v30 = v45;
  (*(v49 + 48))(v13, a2);
  (*(v48 + 8))(v13, v11);
  v31 = v44;
  v32 = v46;
  (*(v44 + 16))(v46, v29, a2);
  (*(*(v26 - 8) + 8))(v29, v26);
  v33 = *(v31 + 32);
  v34 = v50;
  v33(v50, v32, a2);
  v35 = v52;
  v33(&v34[*(v52 + 48)], v30, a2);
  v36 = v51;
  v37 = v53;
  (*(v51 + 16))(v53, v34, v35);
  v38 = *(v35 + 48);
  v33(v54, v37, a2);
  v39 = *(v31 + 8);
  v39(&v37[v38], a2);
  (*(v36 + 32))(v37, v34, v35);
  v40 = *(v35 + 48);
  v42 = type metadata accessor for ClosedRange(0, a2, v47, v41);
  v33(&v54[*(v42 + 36)], &v37[v40], a2);
  return (v39)(v37, a2);
}

uint64_t ClosedRange.overlaps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(v7 + 16);
  if (v8(a1 + *(a2 + 36), v3, v6, v7))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8(v3 + *(a2 + 36), a1, v6, v7) ^ 1;
  }

  return v9 & 1;
}

{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((*(v6 + 16))(v3 + *(a2 + 36), a1, v5, v6) & 1) != 0 || (v8 = *(type metadata accessor for Range(0, v5, v6, v7) + 36), ((*(v6 + 24))(a1 + v8, v3, v5, v6)))
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(*(v6 + 8) + 8))(a1, a1 + v8, v5) ^ 1;
  }

  return v9 & 1;
}

uint64_t Range.overlaps(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for ClosedRange(0, v8, v9, a4);
  if ((*(v9 + 16))(a1 + *(v10 + 36), v5, v8, v9) & 1) != 0 || (v11 = *(a2 + 36), ((*(v9 + 24))(v5 + v11, a1, v8, v9)))
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(*(v9 + 8) + 8))(v5, v5 + v11, v8) ^ 1;
  }

  return v12 & 1;
}

uint64_t ClosedRange<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  return ClosedRange<>.encode(to:)(a1, a2, a3);
}

{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 32))(v16, v7, v8);
  v9 = v17;
  v10 = v18;
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v11 = *(a2 + 16);
  (*(v10 + 160))(v3, v11, a3, v9, v10);
  if (!v4)
  {
    v12 = *(a2 + 36);
    v13 = v17;
    v14 = v18;
    __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    (*(v14 + 160))(v3 + v12, v11, a3, v13, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t __EmptyArrayStorage._withVerbatimBridgedUnsafeBuffer<A>(_:)@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = a1(0, 0);
  if (!v3)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

void *__EmptyArrayStorage._getNonVerbatimBridgingBuffer()()
{
  type metadata accessor for __BridgingBufferStorage(0);
  result = swift_bufferAllocate(v0, 0x18, 7uLL);
  result[2] = 0;
  return result;
}

uint64_t __ContiguousArrayStorageBase.withUnsafeBufferOfObjects<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Optional(0, a3, a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  result = (*(*v5 + 112))(a1, a2, a3);
  if (!v6)
  {
    v16 = *(a3 - 8);
    if ((*(v16 + 48))(v14, 1, a3) == 1)
    {
      result = (*(v12 + 8))(v14, v11);
      __break(1u);
    }

    else
    {
      return (*(v16 + 32))(a5, v14, a3);
    }
  }

  return result;
}

uint64_t *_ContiguousArrayStorage.deinit()
{
  v1 = *(*(*v0 + 144) - 8);
  swift_arrayDestroy(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[2], *(*v0 + 144));
  return v0;
}

void _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(*(*v0 + 144) - 8);
  swift_arrayDestroy(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[2], *(*v0 + 144));

  swift_deallocClassInstance(v0);
}

uint64_t UnsafeBufferPointer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return UnsafeBufferPointer.subscript.getter(a1, a2, a3, a4, a5);
}

{
  if (a1 < 0 || a3 <= a1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a4 - 8);
  v6 = *(v5 + 16);
  v7 = a2 + *(v5 + 72) * a1;

  return v6(a5, v7, a4);
}

uint64_t _ContiguousArrayStorage.objectAtSubscript(_:)(uint64_t a1)
{
  if (a1 < 0 || v1[2] <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(&v1[a1] + ((*(*(*(*v1 + 144) - 8) + 80) + 32) & ~*(*(*(*v1 + 144) - 8) + 80)));
}

void *_ContiguousArrayStorage.getObjects(_:range:)(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  v4 = v3[2];
  if (v4 < a2)
  {
    goto LABEL_12;
  }

  v5 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5 < 0 || v4 < v5)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v4)
  {
    return result;
  }

  if ((a3 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_15;
  }

  v7 = 8 * a3;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  v6 = *(*(*v3 + 144) - 8);
  v8 = &v3[a2] + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return memmove(result, v8, v7);
}

Swift::Void __swiftcall UnsafeMutableRawPointer.copyMemory(from:byteCount:)(Swift::UnsafeRawPointer from, Swift::Int byteCount)
{
  if (byteCount < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memmove(v2, from._rawValue, byteCount);
}

uint64_t _ContiguousArrayStorage._withVerbatimBridgedUnsafeBuffer<A>(_:)@<X0>(uint64_t (*a1)(char *, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a2;
  v17 = a1;
  v9 = *v5;
  v10 = type metadata accessor for Optional(0, a3, a3, a4);
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = *(*(a3 - 8) + 56);
  v13(a5, 1, 1, a3);
  v14 = *(v9 + 144);
  result = _swift_isClassOrObjCExistentialType(v14, v14);
  if (result)
  {
    (*(v18 + 8))(a5, v10);
    result = v17(&v5[(*(*(v14 - 1) + 80) + 32) & ~*(*(v14 - 1) + 80)], *(v5 + 2));
    if (!v6)
    {
      v13(v12, 0, 1, a3);
      return (*(v18 + 32))(a5, v12, v10);
    }
  }

  return result;
}

void _ContiguousArrayStorage._getNonVerbatimBridgingBuffer()(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v18 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - v6);
  v8 = v1[2];
  type metadata accessor for __BridgingBufferStorage(0);
  if (v8 >> 60)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(8 * v8, 24))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v19 = swift_bufferAllocate(v9, (8 * v8 + 24), 7uLL);
  v19[2] = v8;
  if (v8)
  {
    v10 = v19 + 3;
    v20 = *(v3 + 16);
    v11 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    v17 = (v3 + 32);
    do
    {
      v20(v7, v11, v2);
      if (_swift_isClassOrObjCExistentialType(v2, v2))
      {
        if (v21 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v13 = *v7;
        v14 = *(v3 + 8);
        swift_unknownObjectRetain(*v7);
        v14(v7, v2);
      }

      else
      {
        v15 = v18;
        (*v17)(v18, v7, v2);
        v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v15, v2);
      }

      *v10++ = v13;
      v11 += v12;
      --v8;
    }

    while (v8);
  }
}

Swift::Void __swiftcall _ContiguousArrayBuffer._initStorageHeader(count:capacity:)(Swift::Int count, Swift::Int capacity)
{
  v4 = v2;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v3, v3);
  *(v4 + 16) = count;
  *(v4 + 24) = isClassOrObjCExistentialType | (2 * capacity);
}

uint64_t _ss22_ContiguousArrayBufferV017withUnsafeMutableC7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(*v7 + ((*(*(*(v14 + 16) - 8) + 80) + 32) & ~*(*(*(v14 + 16) - 8) + 80)), *(*v7 + 16), v13);
  if (v8)
  {
    return (*(v11 + 32))(a7, v13, a5);
  }

  return result;
}

atomic_ullong *_ContiguousArrayBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(int64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull_native(*v1) && a1 <= ((*v1)[3] >> 1))
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void (*_ContiguousArrayBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x50, 0xC940uLL);
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = a2;
  v10 = *(a4 - 8);
  v11 = v10;
  v8[3] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[4] = swift_coroFrameAlloc(v12, 0xC940uLL);
    v13 = swift_coroFrameAlloc(v12, 0xC940uLL);
  }

  else
  {
    v8[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[5] = v13;
  v15 = *(v11 + 16);
  v14 = v11 + 16;
  *(v9 + 18) = *(v14 + 64);
  v9[6] = *(v14 + 56);
  v9[7] = v15;
  v9[8] = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15();
  return _ContiguousArrayBuffer.subscript.modify;
}

void _ContiguousArrayBuffer.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[5];
    v5 = v2[3];
    v4 = v2[4];
    v6 = v2[2];
    (*(v5 + 24))(v2[1] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + *v2 * v2[6], v3, v6);
    (*(v5 + 8))(v3, v6);
  }

  else
  {
    v7 = v2[7];
    v3 = v2[5];
    v8 = v2[3];
    v4 = v2[4];
    v9 = v2[2];
    v10 = v2[1] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + *v2 * v2[6];
    (*(v8 + 32))(v4, v3, v9);
    v7(v3, v10, v9);
    (*(v8 + 8))(v3, v9);
    (*(v8 + 40))(v10, v4, v9);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t key path getter for _ContiguousArrayBuffer.count : <A>_ContiguousArrayBuffer<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContiguousArray.count.getter(*a1);
  *a2 = result;
  return result;
}

void *(*_ContiguousArrayBuffer.count.modify(void *a1, uint64_t a2))(void *result)
{
  *a1 = *(a2 + 16);
  a1[1] = a2;
  return _ContiguousArrayBuffer.count.modify;
}

id key path getter for _ContiguousArrayBuffer.subscript(_:) : <A>_ContiguousArrayBuffer<A>A@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = specialized _ContiguousArrayBuffer.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;

  return swift_unknownObjectRetain(v4);
}

uint64_t key path setter for _ArrayBuffer.subscript(_:) : <A>_ArrayBuffer<A>A(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = a5(0, *(a3 + a4 - 8));
  swift_unknownObjectRetain(v7);
  return a6(v8);
}

void (*_ContiguousArrayBuffer.subscript.modify(atomic_ullong **a1, atomic_ullong *a2, uint64_t a3, uint64_t a4))(id *a1, char a2)
{
  if (a3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *v4;
  v7 = *v4 + ((*(*(*(a4 + 16) - 8) + 80) + 32) & ~*(*(*(a4 + 16) - 8) + 80));
  *a1 = *v4;
  a1[1] = v7;
  a1[2] = a2;
  a1[3] = ((2 * a3) | 1);
  v6;
  return _ContiguousArrayBuffer.subscript.modify;
}

void *__SwiftDeferredNSArray.__allocating_init(_nativeStorage:)(uint64_t a1)
{
  result = swift_allocObject(v1, 0x20, 7uLL);
  result[2] = 0;
  result[3] = a1;
  return result;
}

char *protocol witness for _ArrayBufferProtocol._copyContents(subRange:initializing:) in conformance _ContiguousArrayBuffer<A>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *v4;
  v6 = specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, *v4, *(a4 + 16));
  v5;
  return v6;
}

atomic_ullong *protocol witness for _ArrayBufferProtocol.requestNativeBuffer() in conformance _ContiguousArrayBuffer<A>()
{
  v0 = _swift_displayCrashMessage();

  return v0;
}

uint64_t protocol witness for _ArrayBufferProtocol.withUnsafeBufferPointer<A>(_:) in conformance _ArrayBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, void))
{
  v9[2] = *(a4 + 16);
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = a2;
  return a7(a6, v9, *v7);
}

uint64_t _ss12_ArrayBufferVyxGs01_aB8ProtocolssADP010withUnsafeB7Pointeryqd__qd__SRy7ElementQzGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (v6)
  {
    return (*(v9 + 32))(a6, v12, a4);
  }

  return result;
}

uint64_t protocol witness for _ArrayBufferProtocol.withUnsafeMutableBufferPointer<A>(_:) in conformance _ArrayBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t, uint64_t))
{
  v8[2] = *(a4 + 16);
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = a2;
  return a7(a6, v8, a4, a3);
}

uint64_t _ss12_ArrayBufferVyxGs01_aB8ProtocolssADP017withUnsafeMutableB7Pointeryqd__qd__Sry7ElementQzGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (v6)
  {
    return (*(v9 + 32))(a6, v12, a4);
  }

  return result;
}

uint64_t (*protocol witness for _ArrayBufferProtocol.count.modify in conformance _ContiguousArrayBuffer<A>(void *a1))()
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *(v2 + 16);
  return protocol witness for _ArrayBufferProtocol.count.modify in conformance _ContiguousArrayBuffer<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance _ContiguousArrayBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = *v3;
  (*(v6 + 32))(v8, a1, v5);
  v12 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10;
  (*(v6 + 16))(a1, v12, v5);
  (*(v6 + 8))(a1, v5);
  return (*(v6 + 40))(v12, v8, v5);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>(void *a1, uint64_t *a2, uint64_t a3))(void **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x50, 0x57B7uLL);
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *v7 = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v7[1] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[2] = swift_coroFrameAlloc(v12, 0x57B7uLL);
    v13 = swift_coroFrameAlloc(v12, 0x57B7uLL);
  }

  else
  {
    v7[2] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = *a2;
  v8[3] = v13;
  v8[4] = v14;
  v8[5] = *v3;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  *(v8 + 18) = *(v15 + 64);
  v8[6] = *(v15 + 56);
  v8[7] = v16;
  v8[8] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16();
  return protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3];
    v4 = v2[2];
    (*(v2[1] + 40))(v2[5] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + v2[4] * v2[6], v3, *v2);
  }

  else
  {
    v5 = v2[7];
    v3 = v2[3];
    v6 = v2[1];
    v4 = v2[2];
    v7 = *v2;
    v8 = v2[5] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + v2[4] * v2[6];
    (*(v6 + 32))(v4, v3, *v2);
    v5(v3, v8, v7);
    (*(v6 + 8))(v3, v7);
    (*(v6 + 40))(v8, v4, v7);
  }

  free(v3);
  free(v4);

  free(v2);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3))(id *a1, char a2)
{
  v4 = a2[1];
  if ((v4 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *a2;
  v7 = *v3;
  v8 = *v3 + ((*(*(*(a3 + 16) - 8) + 80) + 32) & ~*(*(*(a3 + 16) - 8) + 80));
  *a1 = *v3;
  a1[1] = v8;
  a1[2] = v6;
  a1[3] = ((2 * v4) | 1);
  v7;
  return _ContiguousArrayBuffer.subscript.modify;
}

uint64_t += infix<A, B>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t *a3, const char *a4, uint64_t a5)
{
  v66 = a3;
  v61 = type metadata accessor for Optional(0, a3, a3, a4);
  v9 = *(v61 - 8);
  v10 = MEMORY[0x1EEE9AC00](v61);
  v62 = &v51 - v11;
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v14 = *(a5 + 8);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v14;
  swift_getAssociatedTypeWitness(0, v14, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v65 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v51 - v17;
  v54 = a1;
  v18 = *a1;
  v19 = *(v18 + 16);
  v20 = a2;
  v63 = *(a5 + 112);
  result = v63(a4, a5);
  v58 = v19;
  v24 = __OFADD__(v19, result);
  v25 = v19 + result;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v22 = *(v18 + 24);
    v23 = v22 >> 1;
    v56 = v16;
    v57 = v12;
    if ((v22 >> 1) >= v25)
    {
      v54 = v9;
      v26 = *(v66 - 1);
      v27 = a5;
      v28 = *(v26 + 80);
      v29 = *(v26 + 72);
      v30 = v63(a4, v27);
      if (v30 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v31 = v30;
      v55 = v26;
      v32 = v18 + ((v28 + 32) & ~v28) + v29 * v58;
      *(v18 + 16) = v25;
      v9 = v54;
      goto LABEL_5;
    }
  }

  if ((v23 + 0x4000000000000000) < 0)
  {
    __break(1u);
    return result;
  }

  v41 = v66;
  v42 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(v25, v22 & 0xFFFFFFFFFFFFFFFELL, v66);
  v43 = *(v41 - 1);
  v52 = v42;
  v53 = v43;
  v55 = v43;
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = v42 + v44;
  v46 = v58;
  UnsafeMutablePointer.moveInitialize(from:count:)((v18 + v44), v58, v42 + v44, v41);
  *(v18 + 16) = 0;
  v18;
  v47 = v53;
  *v54 = v52;
  v48 = &v45[*(v47 + 72) * v46];
  v49 = v63(a4, a5);
  v32 = UnsafeMutableBufferPointer.init(start:count:)(v48, v49);
  v31 = v50;
LABEL_5:
  v33 = v57;
  (*(v57 + 16))(v59, v20, a4);
  v34 = v60;
  v35 = (v60[8])(v64, v32, v31, a4, v60);
  v36 = v65;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v34, a4, v65, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v38 = v62;
  (*(AssociatedConformanceWitness + 16))(v36, AssociatedConformanceWitness);
  v39 = (*(v55 + 48))(v38, 1, v66);
  (v9[1])(v38, v61);
  if (v39 != 1 || (v40 = v56, v35 != v31))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v33 + 8))(v20, a4);
  return (*(v40 + 8))(v64, v65);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a2, a3);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss22_ContiguousArrayBufferVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss22_ContiguousArrayBufferVyxGSlsSl5index_8offsetBy07limitedF05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss22_ContiguousArrayBufferVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t *a1@<X8>)
{
  result = ContiguousArray.count.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _ContiguousArrayBuffer<A>(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc(0x28, 0x365CuLL);
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ContiguousArrayBuffer.subscript.read();
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

id protocol witness for Collection.subscript.getter in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = specialized _ContiguousArrayBuffer.subscript.getter(*a1, a1[1], *v2);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;

  return swift_unknownObjectRetain(v4);
}

uint64_t protocol witness for Collection.indices.getter in conformance _ContiguousArrayBuffer<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a2, a3);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _ContiguousArrayBuffer<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance _ArrayBuffer<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, void))
{
  *a1 = a6(a2, a3, *v6, *(a4 + 16));
  a1[1] = v8;
  return v9;
}

unint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a1;
  BYTE8(v28) = 1;
  v4 = &_swiftEmptyArrayStorage;
  *v29 = &_swiftEmptyArrayStorage;
  v29[8] = 0;
  *&v29[12] = 0x1000000000000;
  a4;
  result = specialized Unicode._InternalNFD.Iterator.next()();
  v6 = 0;
  if ((result & 0x100000000) == 0)
  {
    v7 = &_swiftEmptySetSingleton;
    while (1)
    {
      if (!v6)
      {
        v8 = v4[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = result;
        v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        v12 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>();
        v13 = swift_allocObject(v12, (4 * v11 + 32), 7uLL);
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 29;
        }

        v16 = v15 >> 2;
        v13[2] = v11;
        v13[3] = (2 * (v15 >> 2));
        v17 = (v13 + 4);
        v18 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v17 >= v4 + 4 * v18 + 32)
          {
            memmove(v13 + 4, v4 + 4, 4 * v18);
          }

          v4[2] = 0;
        }

        v7 = (v17 + 4 * v18);
        v6 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        v4;
        v4 = v13;
        result = v9;
      }

      v20 = __OFSUB__(v6--, 1);
      if (v20)
      {
        break;
      }

      *v7 = result;
      v7 = (v7 + 4);
      result = specialized Unicode._InternalNFD.Iterator.next()();
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v24[2] = v28;
  v24[3] = *v29;
  v25 = *&v29[16];
  v24[0] = v26;
  v24[1] = v27;
  result = outlined destroy of Unicode._NFD.Iterator(v24);
  v21 = v4[3];
  if (v21 < 2)
  {
    return v4;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v6);
  v23 = (v22 - v6);
  if (!v20)
  {
    v4[2] = v23;
    return v4;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = 1;
  v45 = 1;
  *&v47 = a1;
  *(&v47 + 1) = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  *&v48 = a3;
  *(&v48 + 1) = a4;
  *&v49 = a1;
  WORD4(v49) = 1;
  BYTE10(v49) = (v4 & 0x4000000000000000) != 0;
  LOBYTE(v50) = 1;
  v5 = &_swiftEmptyArrayStorage;
  *(&v50 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v51) = 0;
  *(&v51 + 4) = 0x1000000000000;
  *&v52 = &_swiftEmptyArrayStorage;
  BYTE8(v52) = 0;
  HIDWORD(v52) = 0;
  v53 = 1;
  v6 = a4;
  v7 = 0;
  for (i = &_swiftEmptySetSingleton; ; i = (i + 4))
  {
    MEMORY[0x1EEE9AC00](v6);
    if (BYTE9(v49) != 1)
    {
      if (BYTE10(v49))
      {
        v6 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v47, v9);
        if ((v6 & 0x100000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v6 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v49 + 8, closure #1 in Unicode._InternalNFC.Iterator.next()specialized partial apply);
        if ((v6 & 0x100000000) == 0)
        {
LABEL_21:
          v10 = v6;
LABEL_22:
          if (v7)
          {
            goto LABEL_36;
          }

LABEL_23:
          v18 = v5[3];
          if (((v18 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_56;
          }

          v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
          if (v19 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = v19;
          }

          v21 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>();
          v22 = swift_allocObject(v21, (4 * v20 + 32), 7uLL);
          v23 = _swift_stdlib_malloc_size(v22);
          v24 = v23 - 32;
          if (v23 < 32)
          {
            v24 = v23 - 29;
          }

          v25 = v24 >> 2;
          v22[2] = v20;
          v22[3] = (2 * (v24 >> 2));
          v26 = (v22 + 4);
          v27 = v5[3] >> 1;
          if (v5[2])
          {
            v28 = v5 + 4;
            if (v22 != v5 || v26 >= v28 + 4 * v27)
            {
              memmove(v22 + 4, v28, 4 * v27);
            }

            v5[2] = 0;
          }

          i = (v26 + 4 * v27);
          v7 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;
          v6 = v5;
          v5 = v22;
          goto LABEL_36;
        }
      }
    }

    BYTE9(v49) = 1;
    if (BYTE10(v49))
    {
      goto LABEL_51;
    }

    v6 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v49 + 8);
    v10 = v6;
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    v11 = HIDWORD(v52);
    v12 = v53;
    HIDWORD(v52) = v6;
    v53 = 1;
    if (v12 != 1)
    {
      v10 = v11;
      if (v7)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    v13 = v52;
    v14 = *(v52 + 16);
    if (!v14)
    {
      break;
    }

    if ((BYTE8(v52) & 1) == 0)
    {
      v15 = v14 - 1;
      if (v14 != 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v52);
        *&v52 = v13;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        }

        *&v52 = v13;
        v31 = &v13[v14 + 3] + 2;
        v32 = v13 + 18;
        v33 = 1;
        do
        {
          if (v33 - 1 != v15)
          {
            v35 = v13[2];
            if (v33 - 1 >= v35 || v15 >= v35)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v36 = *v32;
            v37 = *(v32 - 1);
            v38 = *v31;
            *(v32 - 1) = *(v31 - 1);
            *v32 = v38;
            *(v31 - 1) = v37;
            *v31 = v36;
          }

          --v15;
          v31 -= 4;
          v32 += 4;
        }

        while (v33++ < v15);
        *&v52 = v13;
      }

      BYTE8(v52) = 1;
      if (!v13[2])
      {
        goto LABEL_57;
      }
    }

    v6 = swift_isUniquelyReferenced_nonNull_native(v13);
    *&v52 = v13;
    if (v6)
    {
      v16 = v13[2];
      if (!v16)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v13 = v6;
      *&v52 = v6;
      v16 = *(v6 + 16);
      if (!v16)
      {
LABEL_58:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v17 = (v16 - 1);
    v10 = v13[v17 + 4];
    v13[2] = v17;
    *&v52 = v13;
    if (!v7)
    {
      goto LABEL_23;
    }

LABEL_36:
    v29 = __OFSUB__(v7--, 1);
    if (v29)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *i = v10;
  }

  BYTE8(v52) = 0;
LABEL_51:
  v43[4] = v51;
  v43[5] = v52;
  v44 = v53;
  v43[0] = v47;
  v43[1] = v48;
  v43[3] = v50;
  v43[2] = v49;
  result = outlined destroy of Unicode._NFC.Iterator(v43);
  v40 = v5[3];
  if (v40 < 2)
  {
    return v5;
  }

  v41 = v40 >> 1;
  v29 = __OFSUB__(v41, v7);
  v42 = (v41 - v7);
  if (!v29)
  {
    v5[2] = v42;
    return v5;
  }

  __break(1u);
  return result;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v2 = type metadata accessor for __CocoaDictionary.Iterator();
  v3 = swift_allocObject(v2, 0xE8, 7uLL);
  *(v3 + 1) = 0u;
  v3[27] = 0;
  v4 = v3 + 27;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 5) = 0u;
  v3[28] = 0;
  v3[26] = a1;
  swift_unknownObjectRetain(a1);
  v5 = 0;
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v8 = &_swiftEmptySetSingleton;
  while (v6 != v3[28])
  {
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_36;
    }

    if (v6 >> 60)
    {
      __break(1u);
LABEL_32:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v11 = (v10 + 8 * v6);
    if ((v11 & 7) != 0)
    {
      goto LABEL_32;
    }

    v12 = *v11;
    v3[27] = v6 + 1;
    v13 = v3[26];
    swift_unknownObjectRetain(v12);
    v14 = [v13 &sel:v12 objectForKey:?];
    if (!v14)
    {
      goto LABEL_36;
    }

    if (!v5)
    {
      v15 = v7[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_34;
      }

      v16 = v14;
      v17 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXl3key_yXl5valuetGMd, _ss23_ContiguousArrayStorageCyyXl3key_yXl5valuetGMR);
      v20 = swift_allocObject(v19, (16 * v18 + 32), 7uLL);
      v21 = _swift_stdlib_malloc_size(v20);
      v22 = v21 - 32;
      if (v21 < 32)
      {
        v22 = v21 - 17;
      }

      v23 = v22 >> 4;
      v20[2] = v18;
      v20[3] = (2 * (v22 >> 4));
      v24 = (v20 + 4);
      v25 = v7[3] >> 1;
      if (v7[2])
      {
        v26 = v7 + 4;
        if (v20 != v7 || v24 >= v26 + 16 * v25)
        {
          memmove(v20 + 4, v26, 16 * v25);
        }

        v7[2] = 0;
      }

      v8 = (v24 + 16 * v25);
      v5 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;
      v7;
      v7 = v20;
      v14 = v16;
      v4 = v3 + 27;
    }

    v27 = __OFSUB__(v5--, 1);
    if (v27)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *v8 = v12;
    v8[1] = v14;
    v8 += 2;
    v6 = *v4;
    if ((*v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }
  }

  v9 = [v3[26] countByEnumeratingWithState:v3 + 2 objects:v3 + 10 count:16];
  v3[28] = v9;
  if (v9)
  {
    v3[27] = 0;
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_36;
    }

    v6 = 0;
    goto LABEL_8;
  }

  *v4 = -1;
LABEL_27:
  v3;
  v28 = v7[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v27 = __OFSUB__(v29, v5);
    v30 = (v29 - v5);
    if (v27)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7[2] = v30;
  }

  return v7;
}

{
  v2 = type metadata accessor for __CocoaSet.Iterator();
  v3 = swift_allocObject(v2, 0xE8, 7uLL);
  *(v3 + 1) = 0u;
  v3[27] = 0;
  v4 = v3 + 27;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 5) = 0u;
  v3[28] = 0;
  v3[26] = a1;
  swift_unknownObjectRetain(a1);
  v5 = 0;
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v8 = &_swiftEmptySetSingleton;
  while (v6 != v3[28])
  {
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_35;
    }

    if (v6 >> 60)
    {
      __break(1u);
LABEL_31:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v11 = (v10 + 8 * v6);
    if ((v11 & 7) != 0)
    {
      goto LABEL_31;
    }

    v12 = *v11;
    *v4 = v6 + 1;
    swift_unknownObjectRetain(v12);
    if (!v5)
    {
      v13 = v7[3];
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_33;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
      v17 = swift_allocObject(v16, (8 * v15 + 32), 7uLL);
      v18 = _swift_stdlib_malloc_size(v17);
      v19 = v18 - 32;
      if (v18 < 32)
      {
        v19 = v18 - 25;
      }

      v20 = v19 >> 3;
      v17[2] = v15;
      v17[3] = ((2 * (v19 >> 3)) | 1);
      v21 = (v17 + 4);
      v22 = v7[3] >> 1;
      if (v7[2])
      {
        v23 = v7 + 4;
        if (v17 != v7 || v21 >= v23 + 8 * v22)
        {
          memmove(v17 + 4, v23, 8 * v22);
        }

        v7[2] = 0;
      }

      v8 = (v21 + 8 * v22);
      v5 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;
      v7;
      v7 = v17;
    }

    v24 = __OFSUB__(v5--, 1);
    if (v24)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v8++ = v12;
    v6 = *v4;
    if ((*v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }
  }

  v9 = [v3[26] countByEnumeratingWithState:v3 + 2 objects:v3 + 10 count:16];
  v3[28] = v9;
  if (v9)
  {
    v3[27] = 0;
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_35;
    }

    v6 = 0;
    goto LABEL_8;
  }

  *v4 = -1;
LABEL_26:
  v3;
  v25 = v7[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v24 = __OFSUB__(v26, v5);
    v27 = (v26 - v5);
    if (v24)
    {
      goto LABEL_34;
    }

    v7[2] = v27;
  }

  return v7;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = &_swiftEmptyArrayStorage;
  if (result)
  {
    v2 = result;
    v3 = 0;
    v4 = &_swiftEmptySetSingleton;
    while (1)
    {
      if (!v3)
      {
        v5 = v1[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        v8 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt8>();
        v9 = swift_allocObject(v8, (v7 + 32), 7uLL);
        v10 = 2 * _swift_stdlib_malloc_size(v9) - 64;
        v9[2] = v7;
        v9[3] = v10;
        v11 = (v9 + 4);
        v12 = v1[3] >> 1;
        if (v1[2])
        {
          if (v9 != v1 || v11 >= v1 + v12 + 32)
          {
            memmove(v9 + 4, v1 + 4, v12);
          }

          v1[2] = 0;
        }

        v4 = (v11 + v12);
        v3 = (v10 >> 1) - v12;
        result = v1;
        v1 = v9;
      }

      v14 = __OFSUB__(v3--, 1);
      if (v14)
      {
        break;
      }

      *v4 = v2 - 1;
      v4 = (v4 + 1);
      v15 = v2 > 0xFF;
      v2 >>= 8;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = 0;
LABEL_21:
  v16 = v1[3];
  if (v16 < 2)
  {
    return v1;
  }

  v17 = v16 >> 1;
  v14 = __OFSUB__(v17, v3);
  v18 = (v17 - v3);
  if (!v14)
  {
    v1[2] = v18;
    return v1;
  }

LABEL_27:
  __break(1u);
  return result;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(unint64_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    goto LABEL_54;
  }

  result = &_swiftEmptyArrayStorage;
  if (!a2)
  {
    v15 = 0;
    v12 = 0;
    v14 = &_swiftEmptySetSingleton;
    goto LABEL_27;
  }

  v5 = 0;
  for (i = 0; i != a2; ++i)
  {
    v7 = v5;
    v8 = vcnt_s8(a1[i]);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    v10 = __OFADD__(v5, v8.u32[0]);
    v5 += v8.u32[0];
    if (v10)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (!v5)
  {
    v15 = 0;
    v12 = 0;
    v14 = &_swiftEmptySetSingleton;
    v13 = *a1;
    goto LABEL_22;
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(v5, 0);
  if (v5 < 0)
  {
    goto LABEL_54;
  }

  v11 = 0;
  v12 = 0;
  v13 = *a1;
  v14 = result + 4;
  v15 = (result[3] >> 1) - (v9 + v7);
  do
  {
    if (v11 == v5)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v13)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
    }

    else
    {
      v17 = v12;
      do
      {
        v12 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_52;
        }

        if (v12 >= a2)
        {
          goto LABEL_57;
        }

        v18 = a1[v12];
        ++v17;
      }

      while (!v18);
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
    }

    ++v11;
    *v14++ = (v16 | (v12 << 6));
  }

  while (v11 != v5);
LABEL_22:
  if (v13)
  {
LABEL_23:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v12 << 6);
    if (!v15)
    {
      goto LABEL_32;
    }

LABEL_24:
    v10 = __OFSUB__(v15--, 1);
    if (!v10)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_27:
  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_51;
    }

    if (v12 >= a2)
    {
      break;
    }

    v22 = a1[v12];
    ++v21;
    if (v22)
    {
      v13 = (v22 - 1) & v22;
      v20 = __clz(__rbit64(v22)) | (v12 << 6);
      if (v15)
      {
        goto LABEL_24;
      }

LABEL_32:
      v23 = result[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      v26 = result;
      v27 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int>();
      v28 = swift_allocObject(v27, (8 * v25 + 32), 7uLL);
      v29 = _swift_stdlib_malloc_size(v28);
      v31 = v29 - 32;
      v30 = v29 < 32;
      v32 = v29 - 25;
      v33 = v26;
      if (v30)
      {
        v31 = v32;
      }

      v34 = v31 >> 3;
      v28[2] = v25;
      v28[3] = (2 * (v31 >> 3));
      v35 = (v28 + 4);
      v36 = v26[3] >> 1;
      if (v26[2])
      {
        v37 = v26 + 4;
        if (v28 != v26 || v35 >= v37 + 8 * v36)
        {
          memmove(v28 + 4, v37, 8 * v36);
          v33 = v26;
        }

        *(v33 + 16) = 0;
      }

      v14 = (v35 + 8 * v36);
      v38 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v36;
      v33;
      result = v28;
      v10 = __OFSUB__(v38, 1);
      v15 = v38 - 1;
      if (v10)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v14++ = v20;
      if (v13)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  v39 = result[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v10 = __OFSUB__(v40, v15);
    v41 = (v40 - v15);
    if (v10)
    {
      goto LABEL_56;
    }

    result[2] = v41;
  }

  return result;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = vcnt_s8(a1);
    v2.i16[0] = vaddlv_u8(v2);
    v3 = v2.u32[0];
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(v2.u32[0], 0);
    v5 = v4 + 4;
    v6 = (v4[3] >> 1) - v3;
    do
    {
      if (!v3)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (!v1)
      {
        goto LABEL_35;
      }

      v7 = (v1 - 1) & v1;
      *v5++ = __clz(__rbit64(v1));
      v1 = v7;
      --v3;
    }

    while (v3);
    if (v7)
    {
      while (1)
      {
        if (!v6)
        {
          v8 = v4[3];
          if (((v8 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
          if (v9 <= 1)
          {
            v10 = 1;
          }

          else
          {
            v10 = v9;
          }

          v11 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int>();
          v12 = swift_allocObject(v11, (8 * v10 + 32), 7uLL);
          v13 = _swift_stdlib_malloc_size(v12);
          v14 = v13 - 32;
          if (v13 < 32)
          {
            v14 = v13 - 25;
          }

          v15 = v14 >> 3;
          v12[2] = v10;
          v12[3] = (2 * (v14 >> 3));
          v16 = (v12 + 4);
          v17 = v4[3] >> 1;
          if (v4[2])
          {
            if (v12 != v4 || v16 >= &v4[v17 + 4])
            {
              memmove(v12 + 4, v4 + 4, 8 * v17);
            }

            v4[2] = 0;
          }

          v5 = (v16 + 8 * v17);
          v6 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
          v4;
          v4 = v12;
        }

        v19 = __OFSUB__(v6--, 1);
        if (v19)
        {
          break;
        }

        *v5++ = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        if (!v7)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
    v20 = qword_1EE3221C8;
    &_swiftEmptyArrayStorage;
    v6 = v20 >> 1;
  }

LABEL_28:
  v21 = v4[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v19 = __OFSUB__(v22, v6);
    v23 = (v22 - v6);
    if (v19)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4[2] = v23;
  }

  return v4;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(void *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = 0;
  if (a2 + 1 < 64)
  {
    v5 = ~(-1 << (a2 + 1));
  }

  else
  {
    v5 = -1;
  }

  v6 = *result & v5;
  v7 = &_swiftEmptyArrayStorage;
  v8 = &_swiftEmptySetSingleton;
  v9 = (a2 + 64) >> 6;
  if (!v6)
  {
LABEL_9:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v4 >= v9)
      {
        break;
      }

      v14 = v2[v4];
      ++v13;
      if (v14)
      {
        v6 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v4 << 6);
        if (v3)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    v27 = v7[3];
    if (v27 >= 2)
    {
      v28 = v27 >> 1;
      v12 = __OFSUB__(v28, v3);
      v29 = (v28 - v3);
      if (v12)
      {
        goto LABEL_35;
      }

      v7[2] = v29;
    }

    return v7;
  }

  while (1)
  {
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v4 << 6);
    if (!v3)
    {
      break;
    }

LABEL_6:
    v12 = __OFSUB__(v3--, 1);
    if (v12)
    {
      goto LABEL_33;
    }

LABEL_26:
    *v8++ = v11;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  v15 = v7[3];
  if (((v15 >> 1) + 0x4000000000000000) < 0)
  {
    goto LABEL_34;
  }

  v30 = v11;
  v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_HashTable.Bucket>();
  v19 = swift_allocObject(v18, (8 * v17 + 32), 7uLL);
  v20 = _swift_stdlib_malloc_size(v19);
  v21 = v20 - 32;
  if (v20 < 32)
  {
    v21 = v20 - 25;
  }

  v22 = v21 >> 3;
  v19[2] = v17;
  v19[3] = (2 * (v21 >> 3));
  v23 = (v19 + 4);
  v24 = v7[3] >> 1;
  if (v7[2])
  {
    v25 = v7 + 4;
    if (v19 != v7 || v23 >= v25 + 8 * v24)
    {
      memmove(v19 + 4, v25, 8 * v24);
    }

    v7[2] = 0;
  }

  v8 = (v23 + 8 * v24);
  v26 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
  result = v7;
  v7 = v19;
  v11 = v30;
  v12 = __OFSUB__(v26, 1);
  v3 = v26 - 1;
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(char *a1, char *a2)
{
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    v3 = a1;
    if (a2 >= a1)
    {
      v4 = a2 - a1;
    }

    else
    {
      v4 = 0;
    }

    v5 = &_swiftEmptyArrayStorage;
    if (a1 != a2)
    {
      v6 = 0;
      v7 = &_swiftEmptySetSingleton;
      while (1)
      {
        if (!v4)
        {
          goto LABEL_31;
        }

        v8 = *v3;
        if (!v6)
        {
          v9 = v5[3];
          if (((v9 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_33;
          }

          v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
          if (v10 <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = v10;
          }

          v12 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt8>();
          v13 = swift_allocObject(v12, (v11 + 32), 7uLL);
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v11;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v5[3] >> 1;
          if (v5[2])
          {
            if (v13 != v5 || v15 >= v5 + v16 + 32)
            {
              memmove(v13 + 4, v5 + 4, v16);
            }

            v5[2] = 0;
          }

          v7 = (v15 + v16);
          v6 = (v14 >> 1) - v16;
          v5;
          v5 = v13;
        }

        v18 = __OFSUB__(v6--, 1);
        if (v18)
        {
          break;
        }

        ++v3;
        *v7 = v8;
        v7 = (v7 + 1);
        --v4;
        if (v3 == a2)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_31:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    v5 = &_swiftEmptyArrayStorage;
  }

LABEL_27:
  v19 = v5[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v6);
    v21 = (v20 - v6);
    if (!v18)
    {
      v5[2] = v21;
      return v5;
    }

    goto LABEL_34;
  }

  return v5;
}

__objc2_class **_copySequenceToContiguousArray<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v78 - v8;
  v82 = v9;
  v12 = type metadata accessor for Optional(0, v9, v10, v11);
  v81 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v92 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - v16;
  v18 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v94 = v21;
  v80 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v78 - v22;
  v23 = a3;
  v24 = (*(a3 + 40))(a2, a3);
  v25 = v24;
  v93 = v7;
  v90 = v17;
  if (v24)
  {
    if (v24 <= 0)
    {
      v30 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v26 = getContiguousArrayStorageType<A>(for:)(v82, v82);
      v27 = v7;
      v28 = *(v7 + 72);
      v29 = *(v27 + 80);
      v30 = swift_allocObject(v26, (((v29 + *(v26 + 48)) & ~v29) + v28 * v25), v29 | *(v26 + 52));
      v31 = _swift_stdlib_malloc_size(v30);
      if (!v28 || ((v32 = v31 - ((v29 + 32) & ~v29), v32 == 0x8000000000000000) ? (v33 = v28 == -1) : (v33 = 0), v33))
      {
LABEL_54:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v34 = v32 / v28;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v82, v82);
      v30[2] = v25;
      v30[3] = (isClassOrObjCExistentialType | (2 * v34));
      v7 = v93;
    }

    v30;
  }

  else
  {
    v30 = &_swiftEmptyArrayStorage;
  }

  v36 = *(v7 + 80);
  v37 = v30[3];
  v30;
  (*(v18 + 16))(v20, a1, a2);
  v38 = v23;
  (*(v23 + 4))(a2, v23);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v79 = v12;
  v39 = v37 >> 1;
  v86 = (v36 + 32) & ~v36;
  v40 = v30 + v86;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v38, a2, v94, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v42 = AssociatedConformanceWitness;
  v84 = v36;
  if (v25)
  {
    v89 = v30;
    v91 = *(AssociatedConformanceWitness + 16);
    v43 = (v93 + 48);
    v39 -= v25;
    v44 = v82;
    v45 = v90;
    do
    {
      v46 = v42;
      v91(v94, v42);
      if ((*v43)(v45, 1, v44) == 1)
      {
        goto LABEL_57;
      }

      v47 = v93;
      (*(v93 + 32))(v40, v45, v44);
      v40 += *(v47 + 72);
      --v25;
      v42 = v46;
    }

    while (v25);
    v48 = v93;
    v36 = v84;
    v30 = v89;
  }

  else
  {
    v48 = v93;
  }

  v49 = *(v42 + 16);
  v50 = v92;
  v90 = (v42 + 16);
  v91 = v42;
  v89 = v49;
  (v49)(v94, v42);
  v51 = v50;
  v52 = v82;
  v87 = v48[6];
  v88 = v48 + 6;
  v53 = v87(v50, 1, v82);
  v54 = v85;
  if (v53 != 1)
  {
    v83 = ~v36;
    v56 = v48[4];
    while (1)
    {
      v56(v54, v51, v52);
      if (v39)
      {
        v55 = v30;
        v57 = __OFSUB__(v39--, 1);
        if (v57)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v58 = v30[3];
        if (((v58 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v59 = v58 & 0xFFFFFFFFFFFFFFFELL;
        if (v59 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = v59;
        }

        v61 = getContiguousArrayStorageType<A>(for:)(v52, v52);
        v62 = v48[9];
        v55 = swift_allocObject(v61, (((*(v61 + 48) + v84) & v83) + v62 * v60), *(v61 + 52) | v84);
        v63 = _swift_stdlib_malloc_size(v55);
        if (!v62)
        {
          goto LABEL_54;
        }

        v64 = v86;
        if (v63 - v86 == 0x8000000000000000 && v62 == -1)
        {
          goto LABEL_54;
        }

        v66 = (v63 - v86) / v62;
        v67 = _swift_isClassOrObjCExistentialType(v52, v52);
        v55[2] = v60;
        v55[3] = (v67 | (2 * v66));
        v68 = v55 + v64;
        v69 = v30[3] >> 1;
        v70 = v69 * v62;
        if (v30[2])
        {
          v71 = v30 + v86;
          if (v55 < v30 || v68 >= v30 + v86 + v70)
          {
            swift_arrayInitWithTakeFrontToBack(v68, v71, v69, v52);
          }

          else if (v55 != v30)
          {
            swift_arrayInitWithTakeBackToFront(v68, v71, v69, v52);
          }

          v30[2] = 0;
        }

        v40 = &v68[v70];
        v73 = (v66 & 0x7FFFFFFFFFFFFFFFLL) - v69;
        v30;
        v48 = v93;
        v54 = v85;
        v57 = __OFSUB__(v73, 1);
        v39 = v73 - 1;
        if (v57)
        {
LABEL_51:
          __break(1u);
          goto LABEL_54;
        }
      }

      v56(v40, v54, v52);
      v40 += v48[9];
      (v89)(v94, v91);
      v51 = v92;
      v30 = v55;
      if (v87(v92, 1, v52) == 1)
      {
        goto LABEL_47;
      }
    }
  }

  v55 = v30;
LABEL_47:
  (*(v80 + 8))(v95, v94);
  (*(v81 + 8))(v51, v79);
  v74 = v55[3];
  if (v74 >= 2)
  {
    v75 = v74 >> 1;
    v57 = __OFSUB__(v75, v39);
    v76 = (v75 - v39);
    if (v57)
    {
      __break(1u);
LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v55[2] = v76;
  }

  return v55;
}

__objc2_class **_UnsafePartiallyInitializedContiguousArrayBuffer.init(initialCapacity:)(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a1 < 1)
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v4 = getContiguousArrayStorageType<A>(for:)(a2, a2);
      v5 = *(*(a2 - 1) + 72);
      v6 = *(*(a2 - 1) + 80);
      v7 = swift_allocObject(v4, (((v6 + *(v4 + 48)) & ~v6) + v5 * a1), v6 | *(v4 + 52));
      v8 = _swift_stdlib_malloc_size(v7);
      if (!v5 || ((v9 = v8 - ((v6 + 32) & ~v6), v9 == 0x8000000000000000) ? (v10 = v5 == -1) : (v10 = 0), v10))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v11 = v9 / v5;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
      v7[2] = a1;
      v7[3] = (isClassOrObjCExistentialType | (2 * v11));
    }

    v7;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v7;
  return v7;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.addWithExistingCapacity(_:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v5;
    v6 = *(v2 + 8);
    v7 = *(*(a2 + 16) - 8) + 16;
    result = (*v7)(v6, result);
    *(v2 + 8) = v6 + *(v7 + 56);
  }

  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.add(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  if (!v4)
  {
    v5 = *v2;
    v6 = *(*v2 + 24);
    if (((v6 >> 1) + 0x4000000000000000) < 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = a2;
    v10 = *(a2 + 16);
    v11 = getContiguousArrayStorageType<A>(for:)(v10, v10);
    v12 = *(*(v10 - 1) + 72);
    v13 = *(*(v10 - 1) + 80);
    v14 = swift_allocObject(v11, (((v13 + *(v11 + 48)) & ~v13) + v12 * v8), v13 | *(v11 + 52));
    v15 = _swift_stdlib_malloc_size(v14);
    if (!v12 || ((v16 = (v13 + 32) & ~v13, v15 - v16 == 0x8000000000000000) ? (v17 = v12 == -1) : (v17 = 0), v17))
    {
LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = (v15 - v16) / v12;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v10, v10);
    v14[2] = v8;
    v14[3] = isClassOrObjCExistentialType | (2 * v18);
    v20 = *(v5 + 24) >> 1;
    v4 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
    v2[1] = v14 + v16 + v20 * v12;
    v2[2] = v4;
    if (*(v5 + 16))
    {
      UnsafeMutablePointer.moveInitialize(from:count:)((v5 + v16), v20, v14 + v16, v10);
      *(v5 + 16) = 0;
    }

    v5;
    *v2 = v14;
    a2 = v9;
  }

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v2[2] = v4 - 1;
  v21 = v2[1];
  v22 = *(*(a2 + 16) - 8) + 16;
  result = (*v22)(v21, a1);
  v2[1] = v21 + *(v22 + 56);
  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.finish()()
{
  result = *v0;
  v2 = *(*v0 + 24);
  if (v2 < 2)
  {
    goto LABEL_4;
  }

  v3 = v2 >> 1;
  v4 = v0[2];
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (!v5)
  {
    *(result + 16) = v6;
LABEL_4:
    *v0 = &_swiftEmptyArrayStorage;
    v0[2] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.result.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

uint64_t _UnsafePartiallyInitializedContiguousArrayBuffer.finishWithOriginalCount()()
{
  result = *v0;
  *v0 = &_swiftEmptyArrayStorage;
  v0[2] = 0;
  return result;
}

uint64_t static String._fromUTF8Repairing(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = validateUTF8(_:)(a1, a2);
  if (v4 < 0)
  {
    return repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v5, v6);
  }

  else
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v7);
  }
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFs4Int8V_s5UInt8Vs5NeverOSSTt1g5019_sSS7cStringSSSPys4f14VG_tcfcSSSRys5G7VGXEfU_Tf1cn_n(unsigned __int8 *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = validateUTF8(_:)(a1, a2);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v7);
    }

    v11 = v5;
    v12 = v6;
    v13 = a1;
    v14 = a2;
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

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tgq507_sSRys4f5VGxs5E35_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TGq5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    if (a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a3(&var2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    (a3)((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return a1(0, 0, &v5);
  }

  if (a4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1(a3, a4, &v5);
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__sAD_pqd_1_Isgyrzr_AEqd_1_sAD_psAD_pRsd_0_Ri_zRi_d__Ri_d_1_r_1_lIetMgyrzo_Tp5(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t String.init(cString:)(char *a1)
{
  v2 = _swift_stdlib_strlen_unsigned(a1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = v2;
  v4 = validateUTF8(_:)(a1, v2);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v3, v4 & 1, v7);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(a1, v3, v5, v6);
}

uint64_t specialized String.withCString<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(__objc2_class **, uint64_t), uint64_t (*a5)(void))
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    LOBYTE(v7) = specialized _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4);
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v10[0] = a1;
    v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = (a5)(v10, a3);
      if (v7)
      {
        LOBYTE(v7) = *v7 == 0;
      }
    }
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10[3] = a3;
      v9 = a5;
      v5 = _StringObject.sharedUTF8.getter(a1, a2);
      a5 = v9;
    }

    v6 = *v5;
    if (v6 <= 0x20 && ((0x100003E01uLL >> v6) & 1) != 0)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = a5();
      if (v7)
      {
        LOBYTE(v7) = *v7 == 0;
      }
    }
  }

  return v7 & 1;
}

uint64_t String.withCString<A>(_:)(void (*a1)(__objc2_class **), uint64_t a2, unint64_t a3, unint64_t a4)
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
    v15[3] = partial apply for closure #1 in _StringGuts.withCString<A>(_:);
    v15[4] = v16;
    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error), v15, v13, v12);
  }
}

uint64_t static String._tryFromUTF8(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = validateUTF8(_:)(a1, a2);
  if (v4 < 0)
  {
    return 0;
  }

  else
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v5);
  }
}

uint64_t static String.decodeCString<A>(_:as:repairingInvalidCodeUnits:)(char *a1, ValueMetadata *a2, int a3, const char *a4, int **a5)
{
  v76 = a3;
  v75 = a2;
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v9 = v8;
  v10 = *(swift_getAssociatedConformanceWitness(a5, a4, v8, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v11 = *(*(v10 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - v14;
  v16 = swift_checkMetadataState(0, v9);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v60 - v22;
  if (a4 == &type metadata for Unicode.UTF8)
  {
    if (a1)
    {
      v34 = _swift_stdlib_strlen_unsigned(a1);
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v25 = v34;
      v28 = validateUTF8(_:)(a1, v34);
      v32 = v28;
      if (v76)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v25, v28 & 1, v31);
        }

        return repairUTF8(_:firstKnownBrokenRange:)(a1, v25, v29, v30);
      }

      goto LABEL_22;
    }

    return 0;
  }

  if (a4 != &type metadata for Unicode.UTF16)
  {
    if (a1)
    {
      if (v75 == &type metadata for Unicode.UTF8)
      {
        v24 = _swift_stdlib_strlen_unsigned(a1);
        if (v24 < 0)
        {
          goto LABEL_35;
        }

        v25 = v24;
        v26 = *(v17 + 72);
        if (v26 != 1)
        {
          if ((v24 * v26) >> 64 != (v24 * v26) >> 63)
          {
            __break(1u);
            return 0;
          }

          if (v26 < 1 && v26 != -1)
          {
            if (!v26)
            {
              goto LABEL_58;
            }

            v62 = 0;
            v61 = 2142;
            LOBYTE(v60) = 2;
LABEL_35:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v25 = v24 * v26;
          if (v24 * v26 < 0)
          {
            goto LABEL_35;
          }
        }

        v28 = validateUTF8(_:)(a1, v25);
        v32 = v28;
        if (v76)
        {
          if ((v28 & 0x8000000000000000) == 0)
          {
            return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v25, v28 & 1, v31);
          }

          return repairUTF8(_:firstKnownBrokenRange:)(a1, v25, v29, v30);
        }

LABEL_22:
        if ((v32 & 0x8000000000000000) == 0)
        {
          return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v25, v32 & 1, v31);
        }

        return 0;
      }

      v40 = *(v10 + 64);
      v69 = v17;
      v70 = v40;
      v41 = *(v17 + 16);
      v66 = v10 + 128;
      v67 = v41;
      v71 = v10 + 64;
      v64 = v10 + 96;
      v68 = v17 + 16;
      v73 = (v17 + 8);
      v74 = v21;
      v60 = v11 + 24;
      v61 = v10 + 120;
      for (i = a1; ; i = &v72[*(v69 + 72)])
      {
        v72 = i;
        v45 = v74;
        v67(v23);
        if (v70(v45, v10))
        {
          v46 = (*(v10 + 128))(v74, v10);
        }

        else
        {
          LODWORD(v65) = v70(v74, v10);
          v46 = (*(v10 + 128))(v74, v10);
          if (v65)
          {
            if (v46 > 64)
            {
              goto LABEL_37;
            }

            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v74, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v13, AssociatedConformanceWitness);
            (*(v11 + 24))(v15);
            v50 = (*(*(*(v10 + 32) + 8) + 32))(v23, v20);
            v65 = *v73;
            v65(v20, v74);
            if (v50)
            {
              v51 = (*(v10 + 120))(v74, v10);
              v65(v23, v74);
              if (!v51)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v65(v23, v74);
            }

            continue;
          }
        }

        if (v46 >= 64)
        {
LABEL_37:
          v77[0] = 0;
          v65 = *(v10 + 96);
          v43 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
          v44 = v74;
          (v65)(v77, &type metadata for Int, v43, v74, v10);
          v63 = (*(*(*(v10 + 16) + 8) + 8))(v23, v20, v44);
          v65 = *v73;
          v65(v20, v44);
          v65(v23, v44);
          if (v63)
          {
            goto LABEL_50;
          }

          continue;
        }

        v52 = (*(v10 + 120))(v74, v10);
        (*v73)(v23, v74);
        if (!v52)
        {
LABEL_50:
          v53 = *(v69 + 72);
          if (v53 && (v72 - a1 != 0x8000000000000000 || v53 != -1))
          {
            v77[0] = UnsafeBufferPointer.init(start:count:)(a1, (v72 - a1) / v53);
            v77[1] = v54;
            v57 = type metadata accessor for UnsafeBufferPointer(0, v74, v55, v56);
            swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, v57, v58);
            result = static String._fromCodeUnits<A, B>(_:encoding:repair:)(v77, v75, v76 & 1, v57);
            if (v59)
            {
              return result;
            }

            return 0;
          }

LABEL_58:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v35 = a1;
  if (*a1)
  {
    v36 = (a1 + 2);
    v35 = a1;
    do
    {
      v37 = *v36++;
      v35 += 2;
    }

    while (v37);
  }

  v38 = v35 - a1;
  if (v38 <= -2)
  {
    goto LABEL_35;
  }

  result = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(a1, v38 / 2, v75, v76 & 1);
  if (!v39)
  {
    return 0;
  }

  return result;
}

BOOL static BinaryInteger.!= infix<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v64 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v64, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v57 - v13;
  v61 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v61, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - v16;
  v68 = *(a4 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 64);
  v21 = v20(a3, a5);
  if ((v21 ^ (*(a6 + 64))(a4, a6)))
  {
    v22 = v20(a3, a5);
    v23 = *(a5 + 128);
    v58 = a1;
    v24 = v23(a3, a5);
    v25 = *(a6 + 128);
    v57 = a2;
    v26 = v25(a4, a6);
    if (v22)
    {
      v28 = v66;
      v27 = v67;
      if (v26 < v24)
      {
        (*(v68 + 16))(v67, v57, a4);
        v29 = v65;
        (*(a5 + 96))(v27, a4, a6, a3, a5);
        v30 = (*(*(*(a5 + 16) + 8) + 8))(v58, v29, a3);
LABEL_16:
        v34 = v30;
        (*(v28 + 8))(v29, a3);
        return (v34 & 1) == 0;
      }

      v42 = v60;
      v43 = v61;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v61, a3, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v45 = v59;
      (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v42, AssociatedConformanceWitness);
      v46 = v65;
      (v43[3])(v45, a3, v43);
      v47 = v58;
      LOBYTE(v42) = (*(*(*(a5 + 32) + 8) + 32))(v58, v46, a3);
      (*(v28 + 8))(v46, a3);
      v48 = v68;
      if (v42)
      {
        (*(v28 + 16))(v46, v47, a3);
        (*(a6 + 96))(v46, a3, a5, a4, a6);
        v34 = (*(*(*(a6 + 16) + 8) + 8))(v27, v57, a4);
        (*(v48 + 8))(v27, a4);
        return (v34 & 1) == 0;
      }

LABEL_17:
      v34 = 0;
      return (v34 & 1) == 0;
    }

    v28 = v66;
    v37 = v67;
    if (v24 >= v26)
    {
      v49 = v63;
      v50 = v64;
      v51 = swift_getAssociatedConformanceWitness(v64, a4, v63, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v62;
      (*(v51 + 8))(&unk_18071E0A8, 256, v49, v51);
      (v50[3])(v52, a4, v50);
      v53 = v57;
      LOBYTE(v49) = (*(*(*(a6 + 32) + 8) + 32))(v57, v37, a4);
      v54 = v68;
      (*(v68 + 8))(v37, a4);
      v55 = v58;
      if (v49)
      {
        (*(v54 + 16))(v37, v53, a4);
        v29 = v65;
        (*(a5 + 96))(v37, a4, a6, a3, a5);
        v30 = (*(*(*(a5 + 16) + 8) + 8))(v55, v29, a3);
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v38 = v65;
    (*(v66 + 16))(v65, v58, a3);
    (*(a6 + 96))(v38, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 16) + 8) + 8))(v37, v57, a4);
    v35 = *(v68 + 8);
    v36 = v37;
  }

  else
  {
    v31 = (*(a5 + 128))(a3, a5);
    if (v31 >= (*(a6 + 128))(a4, a6))
    {
      v40 = v67;
      (*(v68 + 16))(v67, a2, a4);
      v41 = v65;
      (*(a5 + 96))(v40, a4, a6, a3, a5);
      v34 = (*(*(*(a5 + 16) + 8) + 8))(a1, v41, a3);
      v35 = *(v66 + 8);
      v36 = v41;
      v39 = a3;
      goto LABEL_11;
    }

    v32 = v65;
    (*(v66 + 16))(v65, a1, a3);
    v33 = v67;
    (*(a6 + 96))(v32, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 16) + 8) + 8))(v33, a2, a4);
    v35 = *(v68 + 8);
    v36 = v33;
  }

  v39 = a4;
LABEL_11:
  v35(v36, v39);
  return (v34 & 1) == 0;
}

uint64_t _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt0t2g5(char *a1, uint64_t a2, char a3)
{
  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for UnsafeBufferPointer<UInt8> && &full type metadata for Unicode.UTF16 == &full type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a2, a3 & 1);
  }

  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for [UInt8] && &full type metadata for Unicode.UTF16 == &full type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a3 & 1);
  }

  return _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0Q0O5UTF16OTt0t2g5(a1, a2, a3 & 1);
}

uint64_t _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(char *a1, uint64_t a2, ValueMetadata *a3, char a4)
{
  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for UnsafeBufferPointer<UInt8> && a3 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a2, a4 & 1);
  }

  if (&full type metadata for UnsafeBufferPointer<UInt16> == &full type metadata for [UInt8] && a3 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, a4 & 1);
  }

  return _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0Q0O5UTF16OTt0t2g5(a1, a2, a4 & 1);
}

uint64_t static String._fromCodeUnits<A, B>(_:encoding:repair:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *(a4 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v16 = (&v139 - v15);
  if (v17 == &unk_1EEEBDEB0 && v12 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(*a1, *(a1 + 8), v11 & 1);
  }

  if (a4 == &unk_1EEEBDE20 && v12 == &type metadata for Unicode.ASCII)
  {
    return specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(*a1, v11 & 1);
  }

  if (v10 != &type metadata for Unicode.ASCII)
  {
    v50 = v11 & 1;
    v51 = a1;
    v52 = a4;
    v53 = v12;
    v54 = v13;
    v55 = v14;
    return static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(v51, v50, v52, v53, v54, v55);
  }

  v19 = v12;
  v20 = v13;
  v21 = v14;
  v142 = v11;
  v22 = *(v6 + 16);
  (v22)(&v139 - v15, a1, a4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v144, v16, a4, v23, 6uLL) & 1) == 0)
  {
    v141 = v22;
    v145 = 0;
    memset(v144, 0, sizeof(v144));
    HasContiguous = outlined destroy of _HasContiguousBytes?(v144, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
    v30 = v20;
    v31 = v19;
    goto LABEL_14;
  }

  v143 = v19;
  _ss9CodingKey_pWOb_0(v144, &v146);
  v24 = v148;
  v25 = v149;
  __swift_project_boxed_opaque_existential_0Tm(&v146, v148);
  if (((*(v25 + 16))(v24, v25) & 1) == 0)
  {
    v141 = v22;
    HasContiguous = __swift_destroy_boxed_opaque_existential_1Tm(&v146);
    v30 = v20;
    v31 = v143;
LABEL_14:
    v143 = &v139;
    MEMORY[0x1EEE9AC00](HasContiguous);
    v135 = a4;
    v136 = v31;
    v137 = v30;
    v138 = v21;
    v32 = *(v30 + 8);
    (*(v32 + 72))(&v146, partial apply for closure #2 in static String._fromCodeUnits<A, B>(_:encoding:repair:));
    if (v147 != 1)
    {
      if (v147)
      {
        return v146;
      }

      v50 = v142 & 1;
      v51 = a1;
      v52 = a4;
      v53 = v31;
      v54 = v30;
      v55 = v21;
      return static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(v51, v50, v52, v53, v54, v55);
    }

    (v141)(v9, a1, a4);
    v33 = (*(v32 + 56))(a4, v32);
    v34 = MEMORY[0x1EEE9AC00](v33);
    v135 = a4;
    v136 = v31;
    v143 = v31;
    v140 = v30;
    v141 = v21;
    v137 = v30;
    v138 = v21;
    v35 = v34;
    swift_getAssociatedTypeWitness(0, v32, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v37 = v36;
    if (!_swift_isClassOrObjCExistentialType(v36, v36) || (v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
    {
      _swift_isClassOrObjCExistentialType(v37, v37);
      v38 = *(v37 - 1);
      v39 = *(v38 + 80);
      if (_swift_isClassOrObjCExistentialType(v37, v37) && (v35 < 0 || (v35 & 0x4000000000000000) != 0))
      {
        if (v35 < 0)
        {
          v134 = v35;
        }

        else
        {
          v134 = (v35 & 0xFFFFFFFFFFFFFF8);
        }

        v40 = [v134 count];
        if (v40 < 0)
        {
          LODWORD(v137) = 0;
          v136 = 1410;
          LOBYTE(v135) = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        _swift_isClassOrObjCExistentialType(v37, v37);
        v40 = *(v35 + 16);
      }

      v41 = *(v38 + 72);
      v42 = v40 * v41;
      if ((v40 * v41) >> 64 == (v40 * v41) >> 63)
      {
        if ((v42 & 0x8000000000000000) == 0)
        {
          v43 = (v39 + 32) & ~v39;
          v44 = (v35 + v43);
          if (_allASCII(_:)((v35 + v43), v42))
          {
            if (!v42)
            {
              v49 = 0;
LABEL_68:
              v35;
              return v49;
            }

            if (v42 > 0xF)
            {
              v46 = v42 | 0xF000000000000000;
              v47 = _allocateStringStorage(codeUnitCapacity:)(v42);
              *(v47 + 16) = v48;
              *(v47 + 24) = v42 | 0xF000000000000000;
              if (v48 < 0)
              {
                *__StringStorage._breadcrumbsAddress.getter() = 0;
                v46 = *(v47 + 24);
              }

              *(v47 + 32 + (v46 & 0xFFFFFFFFFFFFLL)) = 0;
              specialized UnsafeMutablePointer.initialize(from:count:)(v44, v42, (v47 + 32));
              v49 = *(v47 + 24);
              goto LABEL_68;
            }

            if (v42 >= 8)
            {
              v56 = 8;
            }

            else
            {
              v56 = v42;
            }

            v57 = v56 - 1;
            if (v42 < v56 - 1)
            {
              v57 = v42;
            }

            if (v56 == v57)
            {
              LODWORD(v137) = 0;
              v136 = 309;
              LOBYTE(v135) = 2;
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v58 = v42 - 8;
            if (v42 >= 8)
            {
              v61 = v56 & 8;
              v62 = vmovl_u8(*v44);
              v63 = vmovl_u16(*v62.i8);
              v64.i64[0] = v63.u32[2];
              v64.i64[1] = v63.u32[3];
              v65 = v64;
              v66 = vmovl_high_u16(v62);
              v64.i64[0] = v66.u32[2];
              v64.i64[1] = v66.u32[3];
              v67 = v64;
              v64.i64[0] = v63.u32[0];
              v64.i64[1] = v63.u32[1];
              v68 = v64;
              v64.i64[0] = v66.u32[0];
              v64.i64[1] = v66.u32[1];
              v69 = vorrq_s8(vorrq_s8(vshlq_u64(v68, xmmword_18071DBB0), vshlq_u64(v64, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v65, xmmword_18071DBA0), vshlq_u64(v67, xmmword_18071DBD0)));
              v59 = vorr_s8(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
              if (v56 == v61)
              {
                goto LABEL_50;
              }

              v60 = 8 * v61;
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
            }

            v70 = v56 - v61;
            v71 = (v35 + v61 + v43);
            do
            {
              v72 = *v71++;
              *&v59 |= v72 << (v60 & 0x38);
              v60 += 8;
              --v70;
            }

            while (v70);
LABEL_50:
            if (v42 < 9)
            {
LABEL_67:
              v49 = v59;
              goto LABEL_68;
            }

            if (v58 < 4)
            {
              v73 = 0;
              v74 = 0;
              v75 = 0;
              goto LABEL_65;
            }

            if (v58 >= 0x10)
            {
              v77 = &v44[1];
              v75 = v58 & 0xFFFFFFFFFFFFFFF0;
              v78 = xmmword_18071DBF0;
              v79 = xmmword_18071DC00;
              v80 = xmmword_18071DC10;
              v81 = xmmword_18071DC20;
              v82 = xmmword_18071DBD0;
              v83 = xmmword_18071DBC0;
              v84 = vdupq_n_s64(0x38uLL);
              v45 = vdupq_n_s64(0x80uLL);
              v85 = xmmword_18071DBA0;
              v76 = 8 * (v58 & 0xFFFFFFFFFFFFFFF0);
              v86 = 0uLL;
              v87 = 0uLL;
              v88 = xmmword_18071DBB0;
              v89 = v58 & 0xFFFFFFFFFFFFFFF0;
              v90 = 0uLL;
              v91 = 0uLL;
              v92 = 0uLL;
              v93 = 0uLL;
              v94 = 0uLL;
              v95 = 0uLL;
              do
              {
                v96 = *v77++;
                v97 = vmovl_u8(*v96.i8);
                v98 = vmovl_high_u16(v97);
                v99.i64[0] = v98.u32[2];
                v99.i64[1] = v98.u32[3];
                v100 = v99;
                v101 = vmovl_high_u8(v96);
                v102 = vmovl_u16(*v101.i8);
                v99.i64[0] = v102.u32[2];
                v99.i64[1] = v102.u32[3];
                v103 = v99;
                v99.i64[0] = v102.u32[0];
                v99.i64[1] = v102.u32[1];
                v104 = v99;
                v99.i64[0] = v98.u32[0];
                v99.i64[1] = v98.u32[1];
                v105 = v99;
                v106 = vmovl_u16(*v97.i8);
                v99.i64[0] = v106.u32[2];
                v99.i64[1] = v106.u32[3];
                v107 = v99;
                v108 = vmovl_high_u16(v101);
                v99.i64[0] = v108.u32[0];
                v99.i64[1] = v108.u32[1];
                v109 = v99;
                v99.i64[0] = v106.u32[0];
                v99.i64[1] = v106.u32[1];
                v110 = v99;
                v99.i64[0] = v108.u32[2];
                v99.i64[1] = v108.u32[3];
                v91 = vorrq_s8(vshlq_u64(v100, vandq_s8(v82, v84)), v91);
                v93 = vorrq_s8(vshlq_u64(v103, vandq_s8(v80, v84)), v93);
                v92 = vorrq_s8(vshlq_u64(v104, vandq_s8(v81, v84)), v92);
                v90 = vorrq_s8(vshlq_u64(v105, vandq_s8(v83, v84)), v90);
                v87 = vorrq_s8(vshlq_u64(v107, vandq_s8(v85, v84)), v87);
                v94 = vorrq_s8(vshlq_u64(v109, vandq_s8(v79, v84)), v94);
                v86 = vorrq_s8(vshlq_u64(v110, vandq_s8(v88, v84)), v86);
                v95 = vorrq_s8(vshlq_u64(v99, vandq_s8(v78, v84)), v95);
                v83 = vaddq_s64(v83, v45);
                v85 = vaddq_s64(v85, v45);
                v88 = vaddq_s64(v88, v45);
                v82 = vaddq_s64(v82, v45);
                v81 = vaddq_s64(v81, v45);
                v80 = vaddq_s64(v80, v45);
                v79 = vaddq_s64(v79, v45);
                v78 = vaddq_s64(v78, v45);
                v89 -= 16;
              }

              while (v89);
              v111 = vorrq_s8(vorrq_s8(vorrq_s8(v86, v92), vorrq_s8(v90, v94)), vorrq_s8(vorrq_s8(v87, v93), vorrq_s8(v91, v95)));
              v73 = vorr_s8(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
              if (v58 == v75)
              {
                goto LABEL_67;
              }

              if ((v58 & 0xC) == 0)
              {
                v74 = 8 * (v58 & 0xFFFFFFFFFFFFFFF0);
LABEL_65:
                v128 = v42 - v75 - 8;
                v129 = (v75 + v43 + v35 + 8);
                do
                {
                  v130 = *v129++;
                  *&v73 |= v130 << (v74 & 0x38);
                  v74 += 8;
                  --v128;
                }

                while (v128);
                goto LABEL_67;
              }
            }

            else
            {
              v73 = 0;
              v76 = 0;
              v75 = 0;
            }

            v112 = v75;
            v75 = v58 & 0xFFFFFFFFFFFFFFFCLL;
            v74 = 8 * (v58 & 0xFFFFFFFFFFFFFFFCLL);
            v113 = v73;
            v114 = vdupq_n_s64(v76);
            v115 = 0uLL;
            v116 = vaddq_s64(v114, xmmword_18071DBA0);
            v117 = vaddq_s64(v114, xmmword_18071DBB0);
            v118 = (v112 + v43 + v35 + 8);
            v119 = v112 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
            v120.i64[0] = 255;
            v120.i64[1] = 255;
            v121 = vdupq_n_s64(0x38uLL);
            v122 = vdupq_n_s64(0x20uLL);
            do
            {
              v123 = *v118++;
              v45.i32[0] = v123;
              v124 = vmovl_u16(*&vmovl_u8(*v45.i8));
              v125.i64[0] = v124.u32[2];
              v125.i64[1] = v124.u32[3];
              v126 = vandq_s8(v125, v120);
              v125.i64[0] = v124.u32[0];
              v125.i64[1] = v124.u32[1];
              v45 = vshlq_u64(vandq_s8(v125, v120), vandq_s8(v117, v121));
              v115 = vorrq_s8(vshlq_u64(v126, vandq_s8(v116, v121)), v115);
              v113 = vorrq_s8(v45, v113);
              v116 = vaddq_s64(v116, v122);
              v117 = vaddq_s64(v117, v122);
              v119 += 4;
            }

            while (v119);
            v127 = vorrq_s8(v113, v115);
            v73 = vorr_s8(*v127.i8, *&vextq_s8(v127, v127, 8uLL));
            if (v58 == v75)
            {
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          v35;
          goto LABEL_73;
        }
      }

      else
      {
        __break(1u);
      }

      LODWORD(v137) = 0;
      v136 = 1215;
      LOBYTE(v135) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v131 = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOSSSgIsgyrzr_AByxGAhgHRsd__AGRsd_0_r_0_lIetMggozo_Tp5(partial apply for closure #2 in static String._fromCodeUnits<A, B>(_:encoding:repair:), (&v139 - 6), v35, v37);
    v133 = v132;
    v35;
    if (v133)
    {
      return v131;
    }

LABEL_73:
    v50 = v142 & 1;
    v51 = a1;
    v52 = a4;
    v53 = v143;
    v54 = v140;
    v55 = v141;
    return static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(v51, v50, v52, v53, v54, v55);
  }

  v26 = v148;
  v27 = v149;
  __swift_project_boxed_opaque_existential_0Tm(&v146, v148);
  (*(v27 + 8))(v144, closure #1 in static String._fromCodeUnits<A, B>(_:encoding:repair:), 0, &unk_1EEEBDDF0, v26, v27);
  if (*(&v144[0] + 1))
  {
    v28 = *&v144[0];
  }

  else
  {
    v28 = static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(a1, v142 & 1, a4, v143, v20, v21);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v146);
  return v28;
}

void String.withCString<A, B>(encodedAs:_:)(ValueMetadata *a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (**a6)(char *, const char *)@<X5>, const char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a1 == &type metadata for Unicode.UTF8)
  {
    MEMORY[0x1EEE9AC00](a1);
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v12;
    v16[5] = v11;
    v16[6] = v13;
    String.withCString<A>(_:)(partial apply for closure #1 in String.withCString<A, B>(encodedAs:_:), v16, v14, v15);
  }

  else
  {
    String._slowWithCString<A, B>(encodedAs:_:)(a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t String.init<A>(decodingCString:as:)(unsigned __int8 *a1, ValueMetadata *a2, const char *a3, int **a4)
{
  v72 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57[-v13];
  v15 = swift_checkMetadataState(0, v8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v57[-v21];
  if (a3 == &type metadata for Unicode.UTF8)
  {
    return String.init(cString:)(a1, _swift_stdlib_strlen_unsigned);
  }

  if (a3 == &type metadata for Unicode.UTF16)
  {
    if (v72 != &type metadata for Unicode.UTF8)
    {
      if (*a1)
      {
        v29 = (a1 + 2);
        v30 = a1;
        do
        {
          v31 = *v29++;
          v30 += 2;
        }

        while (v31);
      }

      else
      {
        v30 = a1;
      }

      v37 = v30 - a1;
      if (v37 > -2)
      {
        result = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(a1, v37 / 2, v72, 1);
        if (!v38)
        {
          goto LABEL_49;
        }

        return result;
      }

      goto LABEL_30;
    }

    if (!a1)
    {
      goto LABEL_49;
    }

    v32 = _swift_stdlib_strlen_unsigned(a1);
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v25 = v32;
    goto LABEL_23;
  }

  if (v72 == &type metadata for Unicode.UTF8)
  {
    v23 = v20;
    v24 = _swift_stdlib_strlen_unsigned(a1);
    if (v24 < 0)
    {
      goto LABEL_30;
    }

    v25 = v24;
    v26 = *(v23 + 72);
    if (v26 != 1)
    {
      if ((v24 * v26) >> 64 != (v24 * v26) >> 63)
      {
        __break(1u);
LABEL_51:
        if (!v26)
        {
          goto LABEL_52;
        }

        LODWORD(v59) = 0;
        v58 = 2142;
        v57[0] = 2;
LABEL_30:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v26 < 1 && v26 != -1)
      {
        goto LABEL_51;
      }

      v25 = v24 * v26;
      if (v24 * v26 < 0)
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    v33 = validateUTF8(_:)(a1, v25);
    if (v33 < 0)
    {
      return repairUTF8(_:firstKnownBrokenRange:)(a1, v25, v34, v35);
    }

    else
    {
      return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v25, v33 & 1, v36);
    }
  }

  v67 = *(v9 + 64);
  v68 = v9 + 64;
  v64 = v20;
  v65 = *(v20 + 16);
  v66 = v20 + 16;
  v63 = v9 + 128;
  v61 = v9 + 96;
  v70 = (v20 + 8);
  v71 = v19;
  v58 = v10 + 24;
  v59 = v9 + 120;
  for (i = a1; ; i = &v69[*(v64 + 72)])
  {
    v69 = i;
    v42 = v71;
    v65(v22);
    if ((v67)(v42, v9))
    {
      break;
    }

    LODWORD(v62) = v67();
    v43 = (*(v9 + 128))(v71, v9);
    if ((v62 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v43 > 64)
    {
      goto LABEL_32;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v71, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
    (*(v10 + 24))(v14);
    v47 = (*(*(*(v9 + 32) + 8) + 32))(v22, v18);
    v62 = *v70;
    v62(v18, v71);
    if (v47)
    {
      v48 = (*(v9 + 120))(v71, v9);
      v62(v22, v71);
      if (!v48)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v62(v22, v71);
    }

LABEL_33:
    ;
  }

  v43 = (*(v9 + 128))(v71, v9);
LABEL_41:
  if (v43 >= 64)
  {
LABEL_32:
    v73[0] = 0;
    v62 = *(v9 + 96);
    v40 = lazy protocol witness table accessor for type Int and conformance Int(v43, v44, v45);
    v41 = v71;
    (v62)(v73, &type metadata for Int, v40, v71, v9);
    v60 = (*(*(*(v9 + 16) + 8) + 8))(v22, v18, v41);
    v62 = *v70;
    v62(v18, v41);
    v62(v22, v41);
    if (v60)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v49 = (*(v9 + 120))(v71, v9);
  (*v70)(v22, v71);
  if (v49)
  {
    goto LABEL_33;
  }

LABEL_45:
  v50 = *(v64 + 72);
  if (!v50 || v69 - a1 == 0x8000000000000000 && v50 == -1)
  {
LABEL_52:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v73[0] = UnsafeBufferPointer.init(start:count:)(a1, (v69 - a1) / v50);
  v73[1] = v51;
  v54 = type metadata accessor for UnsafeBufferPointer(0, v71, v52, v53);
  swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, v54, v55);
  result = static String._fromCodeUnits<A, B>(_:encoding:repair:)(v73, v72, 1, v54);
  if (!v56)
  {
LABEL_49:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OpaquePointer()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OpaquePointer(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t specialized _Pointer.debugDescription.getter(Swift::UInt64 a1)
{
  v1 = _uint64ToString(_:radix:uppercase:)(a1, 16, 0);
  countAndFlagsBits = v1._countAndFlagsBits;
  object = v1._object;
  if ((v1._object & 0x1000000000000000) != 0)
  {
    v5 = String.UTF16View._foreignCount()();
  }

  else
  {
    v4 = (v1._object >> 56) & 0xF;
    if ((v1._object & 0x2000000000000000) == 0)
    {
      v4 = v1._countAndFlagsBits;
    }

    v5 = String.UTF16View._nativeGetOffset(for:)(((v4 << 16) | 7));
  }

  v14 = 16 - v5;
  if (__OFSUB__(16, v5))
  {
    __break(1u);
LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v14 < 0)
  {
    goto LABEL_24;
  }

  if (v14)
  {
    v15 = v5 - 16;
    do
    {
      while (1)
      {
        if (!v15)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((object & 0x2000000000000000) == 0)
        {
          break;
        }

        v16 = specialized _SmallString.init(_:appending:)(0x30uLL, 0xE100000000000000, countAndFlagsBits, object);
        if (v18)
        {
          break;
        }

        v21 = v16;
        v22 = v17;
        object;
        object = v22;
        countAndFlagsBits = v21;
        v20 = __CFADD__(v15++, 1);
        if (v20)
        {
          goto LABEL_20;
        }
      }

      if ((object & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(object) & 0xF;
      }

      else
      {
        v19 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      _StringGuts.append(_:)(countAndFlagsBits, object, 0, v19, v6, v7, v8, v9, v10, v11, v12, v13);
      object;
      countAndFlagsBits = 48;
      object = 0xE100000000000000;
      v20 = __CFADD__(v15++, 1);
    }

    while (!v20);
  }

LABEL_20:
  v23 = specialized static String.+ infix(_:_:)(0x7830uLL, 0xE200000000000000, countAndFlagsBits, object);
  object;
  return v23;
}

uint64_t Int.init<A>(bitPattern:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  if ((*(v8 + 48))(v7, 1, a2) == 1)
  {
    v11 = type metadata accessor for Optional(0, a2, v9, v10);
    (*(*(v11 - 8) + 8))(a1, v11);
    return 0;
  }

  else
  {
    memcpy(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    return (*(a3 + 48))(a2, a3);
  }
}

uint64_t specialized static Optional<A>.== infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (!a2 || !a4)
  {
    return v4;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  if ((~a2 & 0x6000000000000000) == 0 && (a4 & 0x6000000000000000) == 0x6000000000000000)
  {
    return 0;
  }

  return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, 0);
}

uint64_t specialized static Optional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyHashable?(a1, v23);
  outlined init with copy of AnyHashable?(a2, &v24);
  if (!v23[3])
  {
    if (!*(&v25 + 1))
    {
      outlined destroy of AnyHashable?(v23);
      v9 = 1;
      return v9 & 1;
    }

LABEL_7:
    outlined destroy of _HasContiguousBytes?(v23, &_ss11AnyHashableVSg_ACtMd, _ss11AnyHashableVSg_ACtMR);
    v9 = 0;
    return v9 & 1;
  }

  outlined init with copy of AnyHashable?(v23, &v20);
  if (!*(&v25 + 1))
  {
    outlined destroy of AnyHashable(&v20);
    goto LABEL_7;
  }

  v18[0] = v20;
  v18[1] = v21;
  v3 = v22;
  v19 = v22;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v4 = *(&v21 + 1);
  __swift_project_boxed_opaque_existential_0Tm(v18, *(&v21 + 1));
  (*(v3 + 8))(v12, v4, v3);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_0Tm(v12, v13);
  v7 = *(&v16 + 1);
  v8 = v17;
  __swift_project_boxed_opaque_existential_0Tm(&v15, *(&v16 + 1));
  (*(v8 + 8))(v11, v7, v8);
  v9 = (*(v6 + 16))(v11, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  outlined destroy of AnyHashable(&v15);
  outlined destroy of AnyHashable(v18);
  outlined destroy of AnyHashable?(v23);
  return v9 & 1;
}

uint64_t static Optional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a1;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - v9;
  v12 = type metadata accessor for Optional(0, v10, v10, v11);
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
  v36 = v6;
  v23 = *(v6 + 48);
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
      v24 = (*(v34 + 8))(v27, v29, a3);
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

uint64_t String.init<A>(_:radix:uppercase:)(uint64_t a1, Swift::Int radix, Swift::Bool uppercase, uint64_t a4)
{
  countAndFlagsBits = BinaryInteger._description(radix:uppercase:)(radix, uppercase)._countAndFlagsBits;
  (*(*(a4 - 8) + 8))(a1, a4);
  return countAndFlagsBits;
}

uint64_t static _DebuggerSupport.ivarCount(mirror:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (*(a1 + 24))(&v17);
  v3 = v17;
  if (v17)
  {
    v5 = v20;
    v4 = v21;
    v7 = v18;
    v6 = v19;
    v12[0] = v17;
    v12[1] = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22 & 1;
    v8 = static _DebuggerSupport.ivarCount(mirror:)(v12);
    v2 = outlined consume of Mirror?(v3, v7, v6, v5, v4);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*v1 + 320))(v2);
  v10 = __OFADD__(v8, v9);
  result = v8 + v9;
  if (v10)
  {
    __break(1u);
  }

  return result;
}

void _ss16_DebuggerSupportO08printForA4Impl33_9EAF632084ADAFB777F8F0FD9902DCCDLL5value6mirror4name6indent8maxDepth6isRoot22parentCollectionStatus15refsAlreadySeen0P11ItemCounter6targetyypSg_s6MirrorVSSSgS2iSbAB0uV0ADLLOShySOGzSizxzts16TextOutputStreamRzlFZSS_Tt9B5(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, Swift::Int a5, uint64_t a6, unsigned __int8 a7, unsigned __int8 a8, uint64_t *a9, uint64_t *a10, unint64_t *a11)
{
  v11 = *a10 - 1;
  if (*a10 < 1)
  {
    return;
  }

  v13 = a7;
  v14 = a5;
  v16 = a1;
  v559 = *(a2 + 8);
  v17 = *(a2 + 16);
  v553 = *(a2 + 24);
  v565 = v17;
  if ((a7 & 1) == 0 && !a8 && (specialized static AnyIndex.== infix(_:_:)(*(v559 + 16), *(v559 + 24), *(v559 + 32), *(v559 + 40)) & 1) != 0 && v17 != 1)
  {
    v553(&v577);
    v18 = v577;
    if (v577)
    {
      v20 = *(&v578 + 1);
      v19 = v579;
      v561 = v13;
      v21 = *(&v577 + 1);
      v22 = v578;
      BYTE8(v579) &= 1u;
      v23 = static _DebuggerSupport.ivarCount(mirror:)(&v577);
      v24 = v22;
      v13 = v561;
      v25 = v20;
      v16 = a1;
      v14 = a5;
      outlined consume of Mirror?(v18, v21, v24, v25, v19);
      if (v23 < 1)
      {
        return;
      }
    }
  }

  *a10 = v11;
  v26 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
  v27 = swift_allocObject(v26, 0x40, 7uLL);
  *(v27 + 1) = xmmword_18071DB30;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  v29 = String.init(repeating:count:)(v28, v14);
  v27[7] = &type metadata for String;
  *(v27 + 2) = v29;
  specialized _print<A>(_:separator:terminator:to:)(v27, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, a11);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v27 + 4);
  swift_deallocClassInstance(v27);
  v30 = v565 == 1;
  outlined init with copy of Any?(v16, &v577);
  if (*(&v578 + 1))
  {
    outlined init with take of Any(&v577, v576);
    outlined init with take of Any(v576, &v584);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, _ss17CustomReflectable_pMR);
    if ((swift_dynamicCast(&v577, &v584, byte_1EEEAC6F8, v31, 6uLL) & 1) == 0)
    {
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v577);
  }

  else
  {
    outlined destroy of Any?(&v577);
  }

  v30 = 0;
LABEL_13:
  v32 = (*(*v559 + 320))();
  v33 = 549033698;
  if (a6 > 0)
  {
    v33 = 549426914;
  }

  v554 = v32;
  v34 = 0xA400000000000000;
  if (!v32)
  {
    v34 = 0xE200000000000000;
    v33 = 8237;
  }

  if (v13 & (v30 || v32 == 0))
  {
    v35 = 0xE000000000000000;
  }

  else
  {
    v35 = v34;
  }

  if (v13 & (v30 || v32 == 0))
  {
    v36 = 0;
  }

  else
  {
    v36 = v33;
  }

  v37 = swift_allocObject(v26, 0x40, 7uLL);
  *(v37 + 1) = xmmword_18071DB30;
  v37[7] = &type metadata for String;
  v37[4] = v36;
  v37[5] = v35;
  specialized _print<A>(_:separator:terminator:to:)(v37, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, a11);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v37 + 4);
  swift_deallocClassInstance(v37);
  v38 = v565;
  v39 = v565 - 5;
  if ((v565 - 5) < 3)
  {
    v40 = 0x10201u >> (8 * (v39 & 0x1F));
    goto LABEL_27;
  }

  if (a8 < 5u)
  {
    v40 = 0x500040300uLL >> (8 * (a8 & 0x1Fu));
LABEL_27:
    v562 = v40;
    v41 = a1;
    if (!a4)
    {
      goto LABEL_28;
    }

LABEL_31:
    v42 = swift_allocObject(v26, 0x40, 7uLL);
    *(v42 + 1) = xmmword_18071DB30;
    v43 = _StringGuts.init(_initialCapacity:)(5);
    v53 = v44;
    *&v577 = v43;
    *(&v577 + 1) = v44;
    v54 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v54 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v54 || (v43 & ~v44 & 0x2000000000000000) != 0)
    {
      if (v44 & 0x2000000000000000) == 0 || (v55 = specialized _SmallString.init(_:appending:)(v43, v44, 0, 0xE000000000000000), (v57))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v45, v46, v47, v48, v49, v50, v51, v52);
        0xE000000000000000;
        v67 = *(&v577 + 1);
        v66 = v577;
        goto LABEL_41;
      }

      v67 = v56;
      v68 = v55;
      v53;
      0xE000000000000000;
      v66 = v68;
      v41 = a1;
      *&v577 = v66;
    }

    else
    {
      v44;
      v66 = 0;
      v67 = 0xE000000000000000;
      *&v577 = 0;
    }

    *(&v577 + 1) = v67;
LABEL_41:
    v69 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v69 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v69 || (v66 & ~v67 & 0x2000000000000000) != 0)
    {
      if ((v67 & 0x2000000000000000) != 0 && (a4 & 0x2000000000000000) != 0 && (v70 = specialized _SmallString.init(_:appending:)(v66, v67, a3, a4), (v72 & 1) == 0))
      {
        v83 = v70;
        v84 = v71;
        v67;
        *&v577 = v83;
        *(&v577 + 1) = v84;
        a4 = v84;
        v82 = v83;
        v41 = a1;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v73 = HIBYTE(a4) & 0xF;
        }

        else
        {
          v73 = a3 & 0xFFFFFFFFFFFFLL;
        }

        _StringGuts.append(_:)(a3, a4, 0, v73, v58, v59, v60, v61, v62, v63, v64, v65);
        a4 = *(&v577 + 1);
        v82 = v577;
        v41 = a1;
      }
    }

    else
    {
      a4;
      v67;
      v82 = a3;
      *&v577 = a3;
      *(&v577 + 1) = a4;
    }

    v85 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v85 = v82 & 0xFFFFFFFFFFFFLL;
    }

    if (v85 || (v82 & ~a4 & 0x2000000000000000) != 0)
    {
      if ((a4 & 0x2000000000000000) != 0 && (v86 = specialized _SmallString.init(_:appending:)(v82, a4, 0x203A20uLL, 0xE300000000000000), (v88 & 1) == 0))
      {
        v89 = v86;
        v90 = v87;
        a4;
        0xE300000000000000;
      }

      else
      {
        _StringGuts.append(_:)(2112032, 0xE300000000000000, 0, 3, v74, v75, v76, v77, v78, v79, v80, v81);
        0xE300000000000000;
        v90 = *(&v577 + 1);
        v89 = v577;
      }
    }

    else
    {
      v89 = 2112032;
      a4;
      v90 = 0xE300000000000000;
    }

    v42[7] = &type metadata for String;
    v42[4] = v89;
    v42[5] = v90;
    specialized _print<A>(_:separator:terminator:to:)(v42, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, a11);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v42 + 4);
    swift_deallocClassInstance(v42);
    v38 = v565;
    v556 = v26;
    if ((v13 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  v562 = 0;
  v41 = a1;
  if (a4)
  {
    goto LABEL_31;
  }

LABEL_28:
  v556 = v26;
  if ((v13 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_64:
  outlined init with copy of Any?(v41, &v577);
  if (*(&v578 + 1))
  {
    if (swift_dynamicCast(v576, &v577, byte_1EEEAC6F8, &type metadata for String, 6uLL))
    {
      object = *&v576[8];
      countAndFlagsBits = *v576;
      v93 = a11;
      goto LABEL_230;
    }
  }

  else
  {
    outlined destroy of Any?(&v577);
  }

LABEL_68:
  v94 = *a2;
  if (v38 > 4)
  {
    if (v39 < 3)
    {
LABEL_80:
      if (v554 == 1)
      {
        v109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("1 element", 9uLL, 1);
        countAndFlagsBits = v109._countAndFlagsBits;
        object = v109._object;
        v93 = a11;
        if (!v109._object)
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      v110 = _StringGuts.init(_initialCapacity:)(11);
      v120 = v110;
      v121 = v111;
      *&v577 = v110;
      *(&v577 + 1) = v111;
      v122 = HIBYTE(v111) & 0xF;
      v123 = v110 & 0xFFFFFFFFFFFFLL;
      if ((v111 & 0x2000000000000000) != 0)
      {
        v123 = HIBYTE(v111) & 0xF;
      }

      v93 = a11;
      if (v123 || (v110 & ~v111 & 0x2000000000000000) != 0)
      {
        if ((v111 & 0x2000000000000000) == 0)
        {
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v112, v113, v114, v115, v116, v117, v118, v119);
          0xE000000000000000;
          v124 = *(&v577 + 1);
          v120 = v577;
          goto LABEL_139;
        }

        0xE000000000000000;
        v121;
        v131 = 0xA000000000000000;
        if (!(v121 & 0x80808080808080 | v120 & 0x8080808080808080))
        {
          v131 = 0xE000000000000000;
        }

        v124 = v131 & 0xFF00000000000000 | (v122 << 56) | v121 & 0xFFFFFFFFFFFFFFLL;
        *&v577 = v120;
      }

      else
      {
        v111;
        v120 = 0;
        v124 = 0xE000000000000000;
        *&v577 = 0;
      }

      *(&v577 + 1) = v124;
LABEL_139:
      v184 = _int64ToString(_:radix:uppercase:)(v554, 10, 0, swift_int64ToString);
      v193 = v183;
      v194 = HIBYTE(v124) & 0xF;
      if ((v124 & 0x2000000000000000) == 0)
      {
        v194 = v120 & 0xFFFFFFFFFFFFLL;
      }

      if (v194 || (v120 & ~v124 & 0x2000000000000000) != 0)
      {
        if ((v124 & 0x2000000000000000) == 0)
        {
          if ((v183 & 0x2000000000000000) != 0)
          {
            goto LABEL_149;
          }

LABEL_147:
          v195 = v184 & 0xFFFFFFFFFFFFLL;
LABEL_150:
          _StringGuts.append(_:)(v184, v193, 0, v195, v185, v186, v187, v188, v189, v190, v191, v192);
          v193;
          v193 = *(&v577 + 1);
          v184 = v577;
          goto LABEL_151;
        }

        if ((v183 & 0x2000000000000000) == 0)
        {
          goto LABEL_147;
        }

        v196 = specialized _SmallString.init(_:appending:)(v120, v124, v184, v183);
        if (v198)
        {
LABEL_149:
          v195 = HIBYTE(v193) & 0xF;
          goto LABEL_150;
        }

        v215 = v196;
        v216 = v197;
        v193;
        v124;
        *&v577 = v215;
        *(&v577 + 1) = v216;
        v193 = v216;
        v184 = v215;
      }

      else
      {
        v124;
        *&v577 = v184;
        *(&v577 + 1) = v193;
      }

LABEL_151:
      v207 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" elements", 9uLL, 1);
      countAndFlagsBits = v207._countAndFlagsBits;
      object = v207._object;
      v208 = HIBYTE(v193) & 0xF;
      if ((v193 & 0x2000000000000000) == 0)
      {
        v208 = v184 & 0xFFFFFFFFFFFFLL;
      }

      if (!v208 && (v184 & ~v193 & 0x2000000000000000) == 0)
      {
        v193;
        if (!v207._object)
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      if ((v193 & 0x2000000000000000) != 0)
      {
        if ((v207._object & 0x2000000000000000) != 0)
        {
          v210 = specialized _SmallString.init(_:appending:)(v184, v193, v207._countAndFlagsBits, v207._object);
          if ((v212 & 1) == 0)
          {
            v217 = v210;
            v218 = v211;
            v207._object;
            v193;
            countAndFlagsBits = v217;
            object = v218;
            if (!v218)
            {
              goto LABEL_231;
            }

            goto LABEL_230;
          }

          goto LABEL_161;
        }
      }

      else if ((v207._object & 0x2000000000000000) != 0)
      {
LABEL_161:
        v209 = (v207._object >> 56) & 0xF;
        goto LABEL_162;
      }

      v209 = v207._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_162:
      _StringGuts.append(_:)(v207._countAndFlagsBits, v207._object, 0, v209, v199, v200, v201, v202, v203, v204, v205, v206);
      v213 = v207._object;
      goto LABEL_163;
    }

    if (v38 != 8)
    {
LABEL_90:
      outlined init with copy of Any?(v41, &v584);
      v93 = a11;
      if (v586)
      {
        outlined init with copy of Any?(&v584, &v580);
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (swift_dynamicCast(&v577, &v580, byte_1EEEAC6F8, v125, 0) || (v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v577, &v580, byte_1EEEAC6F8, v127, 0)))
        {
          _ss9CodingKey_pWOb_0(&v577, v576);
          v128 = *&v576[24];
          v129 = *&v576[32];
          __swift_project_boxed_opaque_existential_0Tm(v576, *&v576[24]);
          countAndFlagsBits = (*(v129 + 8))(v128, v129);
          object = v130;
          __swift_destroy_boxed_opaque_existential_1Tm(v576);
          __swift_destroy_boxed_opaque_existential_1Tm(&v580);
          goto LABEL_229;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v580);
      }

      if (v554 < 1)
      {
        outlined init with copy of Any?(v41, &v577);
        if (*(&v578 + 1))
        {
          outlined init with take of Any(&v577, v576);
          *&v580 = 0;
          *(&v580 + 1) = 0xE000000000000000;
          _debugPrint_unlocked<A, B>(_:_:)(v576, &v580, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
          __swift_destroy_boxed_opaque_existential_1Tm(v576);
          object = *(&v580 + 1);
          countAndFlagsBits = v580;
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0;
        }

        goto LABEL_229;
      }

      v150 = _StringGuts.init(_initialCapacity:)(2);
      v160 = v150;
      v161 = v151;
      *&v577 = v150;
      *(&v577 + 1) = v151;
      v162 = HIBYTE(v151) & 0xF;
      v163 = v150 & 0xFFFFFFFFFFFFLL;
      if ((v151 & 0x2000000000000000) != 0)
      {
        v163 = HIBYTE(v151) & 0xF;
      }

      if (v163 || (v150 & ~v151 & 0x2000000000000000) != 0)
      {
        if ((v151 & 0x2000000000000000) == 0)
        {
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v152, v153, v154, v155, v156, v157, v158, v159);
          0xE000000000000000;
          goto LABEL_178;
        }

        0xE000000000000000;
        v161;
        v164 = 0xA000000000000000;
        if (!(v161 & 0x80808080808080 | v160 & 0x8080808080808080))
        {
          v164 = 0xE000000000000000;
        }

        v165 = v164 & 0xFF00000000000000 | (v162 << 56) | v161 & 0xFFFFFFFFFFFFFFLL;
        *&v577 = v160;
      }

      else
      {
        v151;
        v165 = 0xE000000000000000;
        *&v577 = 0;
      }

      *(&v577 + 1) = v165;
LABEL_178:
      TypeName = swift_getTypeName(v94, 0);
      if (v220 < 0)
      {
        goto LABEL_431;
      }

      v221 = TypeName;
      v222 = v220;
      v223 = validateUTF8(_:)(TypeName, v220);
      if (v223 < 0)
      {
        v227 = repairUTF8(_:firstKnownBrokenRange:)(v221, v222, v224, v225);
      }

      else
      {
        v227 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v221, v222, v223 & 1, v226);
      }

      countAndFlagsBits = v227;
      v237 = v228;
      v238 = *(&v577 + 1);
      v239 = HIBYTE(*(&v577 + 1)) & 0xFLL;
      if ((*(&v577 + 1) & 0x2000000000000000) == 0)
      {
        v239 = v577 & 0xFFFFFFFFFFFFLL;
      }

      if (v239 || (v577 & ~*(&v577 + 1) & 0x2000000000000000) != 0)
      {
        if ((*(&v577 + 1) & 0x2000000000000000) == 0)
        {
          if ((v228 & 0x2000000000000000) != 0)
          {
            goto LABEL_192;
          }

LABEL_190:
          v240 = v227 & 0xFFFFFFFFFFFFLL;
LABEL_193:
          _StringGuts.append(_:)(countAndFlagsBits, v237, 0, v240, v229, v230, v231, v232, v233, v234, v235, v236);
          v237;
          v237 = *(&v577 + 1);
          countAndFlagsBits = v577;
          goto LABEL_194;
        }

        if ((v228 & 0x2000000000000000) == 0)
        {
          goto LABEL_190;
        }

        v241 = specialized _SmallString.init(_:appending:)(v577, *(&v577 + 1), v227, v228);
        if (v243)
        {
LABEL_192:
          v240 = HIBYTE(v237) & 0xF;
          goto LABEL_193;
        }

        v254 = v241;
        v255 = v242;
        v237;
        v238;
        *&v577 = v254;
        *(&v577 + 1) = v255;
        v237 = v255;
        countAndFlagsBits = v254;
      }

      else
      {
        *(&v577 + 1);
        *&v577 = countAndFlagsBits;
        *(&v577 + 1) = v237;
      }

LABEL_194:
      v252 = HIBYTE(v237) & 0xF;
      v253 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if ((v237 & 0x2000000000000000) != 0)
      {
        v253 = HIBYTE(v237) & 0xF;
      }

      if (v253 || (countAndFlagsBits & ~v237 & 0x2000000000000000) != 0)
      {
        if ((v237 & 0x2000000000000000) == 0)
        {
LABEL_199:
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v244, v245, v246, v247, v248, v249, v250, v251);
          0xE000000000000000;
          object = *(&v577 + 1);
          countAndFlagsBits = v577;
          goto LABEL_229;
        }

        goto LABEL_225;
      }

      goto LABEL_228;
    }

LABEL_94:
    outlined init with copy of Any?(v41, &v584);
    if (v586)
    {
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
      v93 = a11;
      if (swift_dynamicCast(&v577, &v584, byte_1EEEAC6F8, v126, 0) || (v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v577, &v584, byte_1EEEAC6F8, v146, 0)))
      {
        _ss9CodingKey_pWOb_0(&v577, v576);
        v147 = *&v576[24];
        v148 = *&v576[32];
        __swift_project_boxed_opaque_existential_0Tm(v576, *&v576[24]);
        countAndFlagsBits = (*(v148 + 8))(v147, v148);
        object = v149;
        __swift_destroy_boxed_opaque_existential_1Tm(v576);
        __swift_destroy_boxed_opaque_existential_1Tm(&v584);
        if (!object)
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      outlined init with take of Any(&v584, &v577);
      v168 = _StringGuts.init(_initialCapacity:)(10);
      v178 = v169;
      *v576 = v168;
      *&v576[8] = v169;
      v179 = HIBYTE(v169) & 0xF;
      if ((v169 & 0x2000000000000000) == 0)
      {
        v179 = v168 & 0xFFFFFFFFFFFFLL;
      }

      if (v179 || (v168 & ~v169 & 0x2000000000000000) != 0)
      {
        if ((v169 & 0x2000000000000000) != 0 && (v180 = specialized _SmallString.init(_:appending:)(v168, v169, 0x3CuLL, 0xE100000000000000), (v182 & 1) == 0))
        {
          v463 = v180;
          v464 = v181;
          0xE100000000000000;
          v178;
          *v576 = v463;
          *&v576[8] = v464;
        }

        else
        {
          _StringGuts.append(_:)(60, 0xE100000000000000, 0, 1, v170, v171, v172, v173, v174, v175, v176, v177);
          0xE100000000000000;
        }
      }

      else
      {
        v169;
        *v576 = 60;
        *&v576[8] = 0xE100000000000000;
      }

      v467 = *(&v578 + 1);
      v468 = __swift_project_boxed_opaque_existential_0Tm(&v577, *(&v578 + 1));
      DynamicType = swift_getDynamicType(v468, v467, 1);
      v470 = swift_getTypeName(DynamicType, 0);
      if (v471 < 0)
      {
        goto LABEL_431;
      }

      v472 = v470;
      v473 = v471;
      v474 = validateUTF8(_:)(v470, v471);
      if (v474 < 0)
      {
        v478 = repairUTF8(_:firstKnownBrokenRange:)(v472, v473, v475, v476);
      }

      else
      {
        v478 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v472, v473, v474 & 1, v477);
      }

      v488 = v479;
      v489 = *&v576[8];
      v490 = HIBYTE(*&v576[8]) & 0xFLL;
      if ((*&v576[8] & 0x2000000000000000) == 0)
      {
        v490 = *v576 & 0xFFFFFFFFFFFFLL;
      }

      if (v490 || (*v576 & ~*&v576[8] & 0x2000000000000000) != 0)
      {
        if ((*&v576[8] & 0x2000000000000000) == 0)
        {
          if ((v479 & 0x2000000000000000) != 0)
          {
            v491 = HIBYTE(v479) & 0xF;
LABEL_385:
            _StringGuts.append(_:)(v478, v488, 0, v491, v480, v481, v482, v483, v484, v485, v486, v487);
            v488;
            v488 = *&v576[8];
            v500 = *v576;
            goto LABEL_386;
          }

LABEL_384:
          v491 = v478 & 0xFFFFFFFFFFFFLL;
          goto LABEL_385;
        }

        if ((v479 & 0x2000000000000000) == 0)
        {
          goto LABEL_384;
        }

        v505 = v478;
        v506 = specialized _SmallString.init(_:appending:)(*v576, *&v576[8], v478, v479);
        if (v508)
        {
          v491 = HIBYTE(v488) & 0xF;
          v478 = v505;
          goto LABEL_385;
        }

        v549 = v507;
        v550 = v506;
        v489;
        v488;
        *v576 = v550;
        *&v576[8] = v549;
        v488 = v549;
        v500 = v550;
      }

      else
      {
        v511 = v478;
        *&v576[8];
        v500 = v511;
        *v576 = v511;
        *&v576[8] = v488;
      }

LABEL_386:
      v501 = HIBYTE(v488) & 0xF;
      if ((v488 & 0x2000000000000000) == 0)
      {
        v501 = v500 & 0xFFFFFFFFFFFFLL;
      }

      if (v501 || (v500 & ~v488 & 0x2000000000000000) != 0)
      {
        if ((v488 & 0x2000000000000000) != 0 && (v502 = specialized _SmallString.init(_:appending:)(v500, v488, 0x7830203AuLL, 0xE400000000000000), (v504 & 1) == 0))
        {
          v509 = v502;
          v510 = v503;
          v488;
          0xE400000000000000;
          *v576 = v509;
          *&v576[8] = v510;
        }

        else
        {
          _StringGuts.append(_:)(2016419898, 0xE400000000000000, 0, 4, v492, v493, v494, v495, v496, v497, v498, v499);
          0xE400000000000000;
        }
      }

      else
      {
        v488;
        *v576 = 2016419898;
        *&v576[8] = 0xE400000000000000;
      }

      v512 = *(&v578 + 1);
      v513 = __swift_project_boxed_opaque_existential_0Tm(&v577, *(&v578 + 1));
      v514 = swift_getDynamicType(v513, v512, 1);
      if (swift_isClassType(v514) && v514)
      {
        v515 = _unsafeDowncastToAnyObject(fromAny:)(&v577);
        __swift_destroy_boxed_opaque_existential_1Tm(&v577);
        swift_unknownObjectRelease(v515);
        v516 = v515;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v577);
        v516 = 0;
      }

      v517 = _int64ToString(_:radix:uppercase:)(v516, 16, 0, swift_int64ToString);
      v527 = v518;
      v528 = *&v576[8];
      v529 = HIBYTE(*&v576[8]) & 0xFLL;
      if ((*&v576[8] & 0x2000000000000000) == 0)
      {
        v529 = *v576 & 0xFFFFFFFFFFFFLL;
      }

      if (v529 || (*v576 & ~*&v576[8] & 0x2000000000000000) != 0)
      {
        if ((*&v576[8] & 0x2000000000000000) == 0)
        {
          if ((v518 & 0x2000000000000000) != 0)
          {
            v530 = HIBYTE(v518) & 0xF;
LABEL_411:
            _StringGuts.append(_:)(v517, v527, 0, v530, v519, v520, v521, v522, v523, v524, v525, v526);
            v527;
            v527 = *&v576[8];
            v539 = *v576;
            goto LABEL_412;
          }

LABEL_410:
          v530 = v517 & 0xFFFFFFFFFFFFLL;
          goto LABEL_411;
        }

        if ((v518 & 0x2000000000000000) == 0)
        {
          goto LABEL_410;
        }

        v544 = v517;
        v545 = specialized _SmallString.init(_:appending:)(*v576, *&v576[8], v517, v518);
        if (v547)
        {
          v530 = HIBYTE(v527) & 0xF;
          v517 = v544;
          goto LABEL_411;
        }

        v551 = v546;
        v552 = v545;
        v527;
        v528;
        *v576 = v552;
        *&v576[8] = v551;
        v527 = v551;
        v539 = v552;
      }

      else
      {
        v548 = v517;
        *&v576[8];
        v539 = v548;
        *v576 = v548;
        *&v576[8] = v527;
      }

LABEL_412:
      v540 = HIBYTE(v527) & 0xF;
      if ((v527 & 0x2000000000000000) == 0)
      {
        v540 = v539 & 0xFFFFFFFFFFFFLL;
      }

      if (v540 || (v539 & ~v527 & 0x2000000000000000) != 0)
      {
        if ((v527 & 0x2000000000000000) != 0 && (v541 = specialized _SmallString.init(_:appending:)(v539, v527, 0x3EuLL, 0xE100000000000000), (v543 & 1) == 0))
        {
          countAndFlagsBits = v541;
          object = v542;
          v527;
          0xE100000000000000;
          if (!object)
          {
            goto LABEL_231;
          }
        }

        else
        {
          _StringGuts.append(_:)(62, 0xE100000000000000, 0, 1, v531, v532, v533, v534, v535, v536, v537, v538);
          0xE100000000000000;
          object = *&v576[8];
          countAndFlagsBits = *v576;
          if (!*&v576[8])
          {
            goto LABEL_231;
          }
        }
      }

      else
      {
        v527;
        object = 0xE100000000000000;
        countAndFlagsBits = 62;
      }

      goto LABEL_230;
    }

    v132 = _StringGuts.init(_initialCapacity:)(2);
    v142 = v132;
    v143 = v133;
    *&v577 = v132;
    *(&v577 + 1) = v133;
    v144 = HIBYTE(v133) & 0xF;
    v145 = v132 & 0xFFFFFFFFFFFFLL;
    if ((v133 & 0x2000000000000000) != 0)
    {
      v145 = HIBYTE(v133) & 0xF;
    }

    v93 = a11;
    if (v145 || (v132 & ~v133 & 0x2000000000000000) != 0)
    {
      if ((v133 & 0x2000000000000000) == 0)
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v134, v135, v136, v137, v138, v139, v140, v141);
        0xE000000000000000;
        goto LABEL_204;
      }

      0xE000000000000000;
      v143;
      v166 = 0xA000000000000000;
      if (!(v143 & 0x80808080808080 | v142 & 0x8080808080808080))
      {
        v166 = 0xE000000000000000;
      }

      v167 = v166 & 0xFF00000000000000 | (v144 << 56) | v143 & 0xFFFFFFFFFFFFFFLL;
      *&v577 = v142;
    }

    else
    {
      v133;
      v167 = 0xE000000000000000;
      *&v577 = 0;
    }

    *(&v577 + 1) = v167;
LABEL_204:
    v256 = swift_getTypeName(v94, 0);
    if (v257 < 0)
    {
      goto LABEL_431;
    }

    v258 = v256;
    v259 = v257;
    v260 = validateUTF8(_:)(v256, v257);
    if (v260 < 0)
    {
      v264 = repairUTF8(_:firstKnownBrokenRange:)(v258, v259, v261, v262);
    }

    else
    {
      v264 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v258, v259, v260 & 1, v263);
    }

    countAndFlagsBits = v264;
    v237 = v265;
    v274 = *(&v577 + 1);
    v275 = HIBYTE(*(&v577 + 1)) & 0xFLL;
    if ((*(&v577 + 1) & 0x2000000000000000) == 0)
    {
      v275 = v577 & 0xFFFFFFFFFFFFLL;
    }

    if (v275 || (v577 & ~*(&v577 + 1) & 0x2000000000000000) != 0)
    {
      if ((*(&v577 + 1) & 0x2000000000000000) == 0)
      {
        if ((v265 & 0x2000000000000000) != 0)
        {
          goto LABEL_218;
        }

LABEL_216:
        v276 = v264 & 0xFFFFFFFFFFFFLL;
LABEL_219:
        _StringGuts.append(_:)(countAndFlagsBits, v237, 0, v276, v266, v267, v268, v269, v270, v271, v272, v273);
        v237;
        v237 = *(&v577 + 1);
        countAndFlagsBits = v577;
        goto LABEL_220;
      }

      if ((v265 & 0x2000000000000000) == 0)
      {
        goto LABEL_216;
      }

      v277 = specialized _SmallString.init(_:appending:)(v577, *(&v577 + 1), v264, v265);
      if (v279)
      {
LABEL_218:
        v276 = HIBYTE(v237) & 0xF;
        goto LABEL_219;
      }

      v461 = v277;
      v462 = v278;
      v237;
      v274;
      *&v577 = v461;
      *(&v577 + 1) = v462;
      v237 = v462;
      countAndFlagsBits = v461;
    }

    else
    {
      *(&v577 + 1);
      *&v577 = countAndFlagsBits;
      *(&v577 + 1) = v237;
    }

LABEL_220:
    v252 = HIBYTE(v237) & 0xF;
    v280 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v237 & 0x2000000000000000) != 0)
    {
      v280 = HIBYTE(v237) & 0xF;
    }

    if (v280 || (countAndFlagsBits & ~v237 & 0x2000000000000000) != 0)
    {
      if ((v237 & 0x2000000000000000) == 0)
      {
        goto LABEL_199;
      }

LABEL_225:
      v237;
      0xE000000000000000;
      v281 = 0xA000000000000000;
      if (!(v237 & 0x80808080808080 | countAndFlagsBits & 0x8080808080808080))
      {
        v281 = 0xE000000000000000;
      }

      object = v281 & 0xFF00000000000000 | (v252 << 56) | v237 & 0xFFFFFFFFFFFFFFLL;
LABEL_229:
      outlined destroy of Any?(&v584);
      if (object)
      {
        goto LABEL_230;
      }

      goto LABEL_231;
    }

LABEL_228:
    v237;
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_229;
  }

  if (v38 <= 1)
  {
    if (!v38)
    {
      goto LABEL_90;
    }

    goto LABEL_94;
  }

  if (v38 == 2)
  {
    goto LABEL_90;
  }

  if (v38 == 3)
  {
    goto LABEL_80;
  }

  if (v554 >= 1)
  {
    v95 = _StringGuts.init(_initialCapacity:)(2);
    v105 = v95;
    v106 = v96;
    *&v577 = v95;
    *(&v577 + 1) = v96;
    v107 = HIBYTE(v96) & 0xF;
    v108 = v95 & 0xFFFFFFFFFFFFLL;
    if ((v96 & 0x2000000000000000) != 0)
    {
      v108 = HIBYTE(v96) & 0xF;
    }

    v93 = a11;
    if (v108 || (v95 & ~v96 & 0x2000000000000000) != 0)
    {
      if ((v96 & 0x2000000000000000) != 0)
      {
        0xE000000000000000;
        v106;
        v214 = 0xA000000000000000;
        if (!(v106 & 0x80808080808080 | v105 & 0x8080808080808080))
        {
          v214 = 0xE000000000000000;
        }

        *&v577 = v105;
        *(&v577 + 1) = v214 & 0xFF00000000000000 | (v107 << 56) | v106 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v97, v98, v99, v100, v101, v102, v103, v104);
        0xE000000000000000;
      }
    }

    else
    {
      v96;
      *&v577 = 0;
      *(&v577 + 1) = 0xE000000000000000;
    }

    v426 = swift_getTypeName(v94, 0);
    if (v427 < 0)
    {
      goto LABEL_431;
    }

    v428 = v426;
    v429 = v427;
    v430 = validateUTF8(_:)(v426, v427);
    if (v430 < 0)
    {
      v434 = repairUTF8(_:firstKnownBrokenRange:)(v428, v429, v431, v432);
    }

    else
    {
      v434 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v428, v429, v430 & 1, v433);
    }

    countAndFlagsBits = v434;
    v444 = v435;
    v445 = *(&v577 + 1);
    v446 = HIBYTE(*(&v577 + 1)) & 0xFLL;
    if ((*(&v577 + 1) & 0x2000000000000000) == 0)
    {
      v446 = v577 & 0xFFFFFFFFFFFFLL;
    }

    if (v446 || (v577 & ~*(&v577 + 1) & 0x2000000000000000) != 0)
    {
      if ((*(&v577 + 1) & 0x2000000000000000) == 0)
      {
        if ((v435 & 0x2000000000000000) != 0)
        {
          goto LABEL_354;
        }

LABEL_352:
        v447 = v434 & 0xFFFFFFFFFFFFLL;
LABEL_355:
        _StringGuts.append(_:)(countAndFlagsBits, v444, 0, v447, v436, v437, v438, v439, v440, v441, v442, v443);
        v444;
        v444 = *(&v577 + 1);
        countAndFlagsBits = v577;
        goto LABEL_356;
      }

      if ((v435 & 0x2000000000000000) == 0)
      {
        goto LABEL_352;
      }

      v448 = specialized _SmallString.init(_:appending:)(v577, *(&v577 + 1), v434, v435);
      if (v450)
      {
LABEL_354:
        v447 = HIBYTE(v444) & 0xF;
        goto LABEL_355;
      }

      v465 = v448;
      v466 = v449;
      v444;
      v445;
      *&v577 = v465;
      *(&v577 + 1) = v466;
      v444 = v466;
      countAndFlagsBits = v465;
    }

    else
    {
      *(&v577 + 1);
      *&v577 = countAndFlagsBits;
      *(&v577 + 1) = v444;
    }

LABEL_356:
    v459 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v444 & 0x2000000000000000) != 0)
    {
      v459 = HIBYTE(v444) & 0xF;
    }

    if (v459 || (countAndFlagsBits & ~v444 & 0x2000000000000000) != 0)
    {
      if ((v444 & 0x2000000000000000) == 0)
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v451, v452, v453, v454, v455, v456, v457, v458);
        v213 = 0xE000000000000000;
LABEL_163:
        v213;
        object = *(&v577 + 1);
        countAndFlagsBits = v577;
        if (!*(&v577 + 1))
        {
          goto LABEL_231;
        }

        goto LABEL_230;
      }

      v444;
      0xE000000000000000;
      v460 = 0xA000000000000000;
      if (!(v444 & 0x80808080808080 | countAndFlagsBits & 0x8080808080808080))
      {
        v460 = 0xE000000000000000;
      }

      object = v460 & 0xFF00000000000000 | ((HIBYTE(v444) & 0xF) << 56) | v444 & 0xFFFFFFFFFFFFFFLL;
      if (!object)
      {
        goto LABEL_231;
      }
    }

    else
    {
      v444;
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

LABEL_230:
    v282 = swift_allocObject(v556, 0x40, 7uLL);
    *(v282 + 1) = xmmword_18071DB30;
    v282[7] = &type metadata for String;
    v282[4] = countAndFlagsBits;
    v282[5] = object;
    specialized _print<A>(_:separator:terminator:to:)(v282, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v93);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v282);
    __swift_destroy_boxed_opaque_existential_1Tm(v282 + 4);
    swift_deallocClassInstance(v282);
    goto LABEL_231;
  }

  outlined init with copy of Any?(v41, &v577);
  v93 = a11;
  if (*(&v578 + 1))
  {
    outlined init with take of Any(&v577, v576);
    *&v584 = 0;
    *(&v584 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v576, &v584, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
    __swift_destroy_boxed_opaque_existential_1Tm(v576);
    object = *(&v584 + 1);
    countAndFlagsBits = v584;
    if (*(&v584 + 1))
    {
      goto LABEL_230;
    }
  }

LABEL_231:
  v564 = a6 - 1;
  v283 = a6 < 1 || v30;
  if (v283)
  {
    v284 = swift_allocObject(v556, 0x40, 7uLL);
    v285 = v284;
    *(v284 + 1) = xmmword_18071DB30;
    v284[7] = &type metadata for String;
    v284[4] = 0;
    v286 = v284 + 4;
    v287 = 0xE000000000000000;
LABEL_236:
    v284[5] = v287;
    specialized _print<A>(_:separator:terminator:to:)(v284, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000, v93);
    swift_bridgeObjectRelease_n(0xE100000000000000, 2);
    swift_setDeallocating(v285);
    v288 = v286;
    goto LABEL_237;
  }

  outlined init with copy of Any?(v41, &v577);
  if (*(&v578 + 1))
  {
    outlined init with take of Any(&v577, v576);
    v289 = *&v576[24];
    v290 = __swift_project_boxed_opaque_existential_0Tm(v576, *&v576[24]);
    v291 = swift_getDynamicType(v290, v289, 1);
    if (swift_isClassType(v291) && v291)
    {
      v292 = _unsafeDowncastToAnyObject(fromAny:)(v576);
      __swift_destroy_boxed_opaque_existential_1Tm(v576);
      swift_unknownObjectRelease(v292);
      if (specialized Set.contains(_:)(v292, *a9))
      {
        v284 = swift_allocObject(v556, 0x40, 7uLL);
        v285 = v284;
        *(v284 + 1) = xmmword_18071DB30;
        v284[7] = &type metadata for String;
        v284[4] = 0x7D202E2E2E207B20;
        v286 = v284 + 4;
        v287 = 0xE800000000000000;
        goto LABEL_236;
      }

      specialized Set._Variant.insert(_:)(&v577, v292);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v576);
    }
  }

  v293 = swift_allocObject(v556, 0x40, 7uLL);
  *(v293 + 1) = xmmword_18071DB30;
  v293[7] = &type metadata for String;
  v293[4] = 0;
  v293[5] = 0xE000000000000000;
  specialized _print<A>(_:separator:terminator:to:)(v293, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000, v93);
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  swift_setDeallocating(v293);
  __swift_destroy_boxed_opaque_existential_1Tm(v293 + 4);
  swift_deallocClassInstance(v293);
  v294 = (v553)(&v577);
  v295 = v577;
  if (v577)
  {
    v296 = *(&v577 + 1);
    v298 = v578;
    v297 = v579;
    v584 = v577;
    v585 = v578;
    v586 = *(&v578 + 1);
    v587 = v579;
    v588 = BYTE8(v579) & 1;
    v577 = 0u;
    v578 = 0u;
    if (__OFADD__(a5, 2))
    {
      goto LABEL_430;
    }

    _ss16_DebuggerSupportO08printForA4Impl33_9EAF632084ADAFB777F8F0FD9902DCCDLL5value6mirror4name6indent8maxDepth6isRoot22parentCollectionStatus15refsAlreadySeen0P11ItemCounter6targetyypSg_s6MirrorVSSSgS2iSbAB0uV0ADLLOShySOGzSizxzts16TextOutputStreamRzlFZSS_Tt9B5(&v577, &v584, 0x7265707573, 0xE500000000000000, a5 + 2, v564, 0, 0, a9, a10, v93);
    outlined consume of Mirror?(v295, v296, v298, *(&v298 + 1), v297);
    0xE500000000000000;
    v294 = outlined destroy of Any?(&v577);
  }

  v299 = (*(*v559 + 96))(v294);
  v300 = *(*v299 + 96);
  v300(v576);
  v578 = *&v576[16];
  v579 = *&v576[32];
  v577 = *v576;
  if (!*&v576[40])
  {
LABEL_295:
    v299;
    return;
  }

  v301 = 0;
  v558 = v93;
  v302 = __OFADD__(a5, 2);
  while (1)
  {
    v304 = *(&v577 + 1);
    v303 = v577;
    outlined init with take of Any(&v578, v575);
    if (v304)
    {
      goto LABEL_286;
    }

    v305 = _StringGuts.init(_initialCapacity:)(2);
    v315 = v306;
    *v576 = v305;
    *&v576[8] = v306;
    v316 = HIBYTE(v306) & 0xF;
    if ((v306 & 0x2000000000000000) == 0)
    {
      v316 = v305 & 0xFFFFFFFFFFFFLL;
    }

    if (v316 || (v305 & ~v306 & 0x2000000000000000) != 0)
    {
      if (v306 & 0x2000000000000000) == 0 || (v317 = specialized _SmallString.init(_:appending:)(v305, v306, 0, 0xE000000000000000), (v319))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v307, v308, v309, v310, v311, v312, v313, v314);
        0xE000000000000000;
        v320 = *&v576[8];
        v321 = *v576;
        goto LABEL_263;
      }

      v321 = v317;
      v320 = v318;
      v315;
      0xE000000000000000;
      *v576 = v321;
    }

    else
    {
      v306;
      v321 = 0;
      v320 = 0xE000000000000000;
      *v576 = 0;
    }

    *&v576[8] = v320;
LABEL_263:
    v322 = _int64ToString(_:radix:uppercase:)(v301, 10, 0, swift_int64ToString);
    v332 = v323;
    v333 = HIBYTE(v320) & 0xF;
    if ((v320 & 0x2000000000000000) == 0)
    {
      v333 = v321 & 0xFFFFFFFFFFFFLL;
    }

    if (!v333 && (v321 & ~v320 & 0x2000000000000000) == 0)
    {
      v352 = v322;
      v320;
      v343 = v352;
      *v576 = v352;
      *&v576[8] = v332;
      goto LABEL_273;
    }

    if ((v320 & 0x2000000000000000) != 0)
    {
      if ((v323 & 0x2000000000000000) != 0)
      {
        v348 = v322;
        v349 = specialized _SmallString.init(_:appending:)(v321, v320, v322, v323);
        if ((v351 & 1) == 0)
        {
          v362 = v350;
          v363 = v349;
          v320;
          v332;
          *v576 = v363;
          *&v576[8] = v362;
          v332 = v362;
          v343 = v363;
          goto LABEL_273;
        }

        v334 = HIBYTE(v332) & 0xF;
        v322 = v348;
        goto LABEL_272;
      }

LABEL_271:
      v334 = v322 & 0xFFFFFFFFFFFFLL;
      goto LABEL_272;
    }

    if ((v323 & 0x2000000000000000) == 0)
    {
      goto LABEL_271;
    }

    v334 = HIBYTE(v323) & 0xF;
LABEL_272:
    _StringGuts.append(_:)(v322, v332, 0, v334, v324, v325, v326, v327, v328, v329, v330, v331);
    v332;
    v332 = *&v576[8];
    v343 = *v576;
LABEL_273:
    v344 = HIBYTE(v332) & 0xF;
    if ((v332 & 0x2000000000000000) == 0)
    {
      v344 = v343 & 0xFFFFFFFFFFFFLL;
    }

    if (v344 || (v343 & ~v332 & 0x2000000000000000) != 0)
    {
      if ((v332 & 0x2000000000000000) != 0 && (v345 = specialized _SmallString.init(_:appending:)(v343, v332, 0, 0xE000000000000000), (v347 & 1) == 0))
      {
        v303 = v345;
        v304 = v346;
        v332;
        0xE000000000000000;
      }

      else
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v335, v336, v337, v338, v339, v340, v341, v342);
        0xE000000000000000;
        v304 = *&v576[8];
        v303 = *v576;
      }
    }

    else
    {
      v332;
      v303 = 0;
      v304 = 0xE000000000000000;
    }

    v93 = v558;
LABEL_286:
    if (*a10 < 1)
    {
      break;
    }

    outlined init with copy of Any(v575, v574);
    outlined init with take of Any(v575, v573);
    outlined init with copy of Any(v573, v572);
    v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, _ss17CustomReflectable_pMR);
    if (swift_dynamicCast(v576, v572, byte_1EEEAC6F8, v353, 6uLL))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v573);
      _ss9CodingKey_pWOb_0(v576, v571);
      v354 = *&v571[2];
      v355 = *(&v571[1] + 1);
      __swift_project_boxed_opaque_existential_0Tm(v571, *(&v571[1] + 1));
      v356 = v355;
      v93 = v558;
      (*(v354 + 8))(v576, v356, v354);
      v357 = v576[16];
      v566 = *&v576[24];
      v569 = *v576;
      v358 = v576[40];
      __swift_destroy_boxed_opaque_existential_1Tm(v571);
      v360 = v566;
      v359 = v569;
    }

    else
    {
      memset(v576, 0, 40);
      outlined destroy of _HasContiguousBytes?(v576, &_ss17CustomReflectable_pSgMd, _ss17CustomReflectable_pSgMR);
      memset(v571, 0, 41);
      Mirror.init(internalReflecting:subjectType:customAncestor:)(v573, 0, v571, v576);
      v359 = *v576;
      v357 = v576[16];
      v360 = *&v576[24];
      v358 = v576[40];
    }

    v580 = v359;
    v581 = v357;
    v582 = v360;
    v583 = v358;
    if (v302)
    {
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v567 = *(&v360 + 1);
    v570 = *(&v359 + 1);
    _ss16_DebuggerSupportO08printForA4Impl33_9EAF632084ADAFB777F8F0FD9902DCCDLL5value6mirror4name6indent8maxDepth6isRoot22parentCollectionStatus15refsAlreadySeen0P11ItemCounter6targetyypSg_s6MirrorVSSSgS2iSbAB0uV0ADLLOShySOGzSizxzts16TextOutputStreamRzlFZSS_Tt9B5(v574, &v580, v303, v304, a5 + 2, v564, 0, v562, a9, a10, v93);
    v567;
    v570;
    v304;
    v361 = outlined destroy of Any?(v574);
    if (__OFADD__(v301, 1))
    {
      goto LABEL_429;
    }

    (v300)(v576, v361);
    v578 = *&v576[16];
    v579 = *&v576[32];
    v577 = *v576;
    ++v301;
    if (!*&v576[40])
    {
      goto LABEL_295;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v575);
  v304;
  v299;
  v364 = swift_allocObject(v556, 0x40, 7uLL);
  *(v364 + 1) = xmmword_18071DB30;
  if (__OFADD__(a5, 4))
  {
    __break(1u);
    goto LABEL_433;
  }

  v365 = v364;
  v366._countAndFlagsBits = 32;
  v366._object = 0xE100000000000000;
  v367 = String.init(repeating:count:)(v366, a5 + 4);
  *(v365 + 56) = &type metadata for String;
  *(v365 + 32) = v367;
  specialized _print<A>(_:separator:terminator:to:)(v365, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v93);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v365);
  __swift_destroy_boxed_opaque_existential_1Tm((v365 + 32));
  swift_deallocClassInstance(v365);
  v368 = v554 - v301;
  if (__OFSUB__(v554, v301))
  {
LABEL_433:
    __break(1u);
    return;
  }

  v369 = swift_allocObject(v556, 0x40, 7uLL);
  *(v369 + 1) = xmmword_18071DB30;
  v370 = _StringGuts.init(_initialCapacity:)(3);
  v380 = v371;
  *v576 = v370;
  *&v576[8] = v371;
  v381 = HIBYTE(v371) & 0xF;
  if ((v371 & 0x2000000000000000) == 0)
  {
    v381 = v370 & 0xFFFFFFFFFFFFLL;
  }

  if (v381 || (v370 & ~v371 & 0x2000000000000000) != 0)
  {
    if (v371 & 0x2000000000000000) == 0 || (v382 = specialized _SmallString.init(_:appending:)(v370, v371, 0x28uLL, 0xE100000000000000), (v384))
    {
      _StringGuts.append(_:)(40, 0xE100000000000000, 0, 1, v372, v373, v374, v375, v376, v377, v378, v379);
      0xE100000000000000;
      v385 = *&v576[8];
      v386 = *v576;
      goto LABEL_309;
    }

    v386 = v382;
    v385 = v383;
    v380;
    0xE100000000000000;
  }

  else
  {
    v371;
    v386 = 40;
    v385 = 0xE100000000000000;
  }

  *v576 = v386;
  *&v576[8] = v385;
LABEL_309:
  v387 = _int64ToString(_:radix:uppercase:)(v368, 10, 0, swift_int64ToString);
  v397 = v388;
  v398 = HIBYTE(v385) & 0xF;
  if ((v385 & 0x2000000000000000) == 0)
  {
    v398 = v386 & 0xFFFFFFFFFFFFLL;
  }

  if (v398 || (v386 & ~v385 & 0x2000000000000000) != 0)
  {
    if ((v385 & 0x2000000000000000) != 0)
    {
      if ((v388 & 0x2000000000000000) == 0)
      {
        goto LABEL_317;
      }

      v415 = v387;
      v416 = specialized _SmallString.init(_:appending:)(v386, v385, v387, v388);
      if (v418)
      {
        v399 = HIBYTE(v397) & 0xF;
        v387 = v415;
        goto LABEL_318;
      }

      v424 = v417;
      v425 = v416;
      v385;
      v397;
      *v576 = v425;
      *&v576[8] = v424;
      v397 = v424;
      v408 = v425;
    }

    else
    {
      if ((v388 & 0x2000000000000000) != 0)
      {
        v399 = HIBYTE(v388) & 0xF;
        goto LABEL_318;
      }

LABEL_317:
      v399 = v387 & 0xFFFFFFFFFFFFLL;
LABEL_318:
      _StringGuts.append(_:)(v387, v397, 0, v399, v389, v390, v391, v392, v393, v394, v395, v396);
      v397;
      v397 = *&v576[8];
      v408 = *v576;
    }
  }

  else
  {
    v419 = v387;
    v385;
    v408 = v419;
    *v576 = v419;
    *&v576[8] = v397;
  }

  v409 = HIBYTE(v397) & 0xF;
  if ((v397 & 0x2000000000000000) == 0)
  {
    v409 = v408 & 0xFFFFFFFFFFFFLL;
  }

  if (v409 || (v408 & ~v397 & 0x2000000000000000) != 0)
  {
    if ((v397 & 0x2000000000000000) != 0 && (v410 = specialized _SmallString.init(_:appending:)(v408, v397, 0, 0xE000000000000000), (v412 & 1) == 0))
    {
      v413 = v410;
      v414 = v411;
      v397;
      0xE000000000000000;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v400, v401, v402, v403, v404, v405, v406, v407);
      0xE000000000000000;
      v414 = *&v576[8];
      v413 = *v576;
    }
  }

  else
  {
    v397;
    v413 = 0;
    v414 = 0xE000000000000000;
  }

  v369[7] = &type metadata for String;
  v369[4] = v413;
  v369[5] = v414;
  specialized _print<A>(_:separator:terminator:to:)(v369, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v93);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(v369);
  __swift_destroy_boxed_opaque_existential_1Tm(v369 + 4);
  swift_deallocClassInstance(v369);
  if (v301 >= 1)
  {
    v420 = swift_allocObject(v556, 0x40, 7uLL);
    *(v420 + 1) = xmmword_18071DB30;
    v420[7] = &type metadata for String;
    v420[4] = 0x65726F6D20;
    v420[5] = 0xE500000000000000;
    specialized _print<A>(_:separator:terminator:to:)(v420, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, v93);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v420);
    __swift_destroy_boxed_opaque_existential_1Tm(v420 + 4);
    swift_deallocClassInstance(v420);
  }

  v285 = swift_allocObject(v556, 0x40, 7uLL);
  *(v285 + 1) = xmmword_18071DB30;
  if (v368 == 1)
  {
    v421 = 0xE700000000000000;
    v422 = 0x29646C69686320;
  }

  else
  {
    v423 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" children)", 0xAuLL, 1);
    v421 = v423._object;
    v422 = v423._countAndFlagsBits;
  }

  v285[7] = &type metadata for String;
  v285[4] = v422;
  v285[5] = v421;
  specialized _print<A>(_:separator:terminator:to:)(v285, 0x20uLL, 0xE100000000000000, 10, 0xE100000000000000, v93);
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  swift_setDeallocating(v285);
  v288 = v285 + 4;
LABEL_237:
  __swift_destroy_boxed_opaque_existential_1Tm(v288);
  swift_deallocClassInstance(v285);
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  if (count < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = count;
  object = repeating._object;
  countAndFlagsBits = repeating._countAndFlagsBits;
  if (count >= 2)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    if ((repeating._object & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(repeating._object) & 0xF;
    }

    else
    {
      v5 = repeating._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    String.reserveCapacity(_:)(v5 * count);
    while (1)
    {
      v15 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v15 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 && (v24 & ~v25 & 0x2000000000000000) == 0)
      {
        object;
        v25;
        v24 = countAndFlagsBits;
        v25 = object;
        goto LABEL_9;
      }

      v14 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if ((v25 & 0x2000000000000000) != 0)
      {
        if ((object & 0x2000000000000000) == 0)
        {
          goto LABEL_8;
        }

        v16 = specialized _SmallString.init(_:appending:)(v24, v25, countAndFlagsBits, object);
        if ((v18 & 1) == 0)
        {
          v19 = v16;
          v20 = v17;
          v25;
          v24 = v19;
          v25 = v20;
          goto LABEL_9;
        }
      }

      else if ((object & 0x2000000000000000) == 0)
      {
        goto LABEL_8;
      }

      v14 = HIBYTE(object) & 0xF;
LABEL_8:
      _StringGuts.append(_:)(countAndFlagsBits, object, 0, v14, v6, v7, v8, v9, v10, v11, v12, v13);
LABEL_9:
      if (!--v2)
      {
        object;
        countAndFlagsBits = v24;
        object = v25;
        goto LABEL_24;
      }
    }
  }

  if (!count)
  {
    repeating._object;
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

LABEL_24:
  v21 = countAndFlagsBits;
  v22 = object;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = specialized static Hasher._hash(seed:_:)(*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = _swift_stdlib_Hashing_parameters ^ *(a3 + 40);
  v17 = 0u;
  v18 = 0u;
  v16[0] = 0;
  v16[1] = v6 ^ 0x736F6D6570736575;
  v16[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v16[3] = v6 ^ 0x6C7967656E657261;
  v16[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v16, a1, a2);
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
    v12 = v11[1];
    if (*v11 == a1 && v12 == a2)
    {
      break;
    }

    v14 = (~v12 & 0x6000000000000000) == 0 && (a2 & 0x6000000000000000) == 0x6000000000000000;
    if (!v14 && (_stringCompareInternal(_:_:expecting:)(*v11, v12, a1, a2, 0) & 1) != 0)
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

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), v5 = a1[3], v6 = a1[4], __swift_project_boxed_opaque_existential_0Tm(a1, v5), (*(v6 + 8))(v25, v5, v6), v7 = v26, v8 = v27, __swift_project_boxed_opaque_existential_0Tm(v25, v26), v9 = (*(v8 + 40))(v4, v7, v8), __swift_destroy_boxed_opaque_existential_1Tm(v25), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v20 = ~v10;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v11, v25);
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_0Tm(v25, v26);
      (*(v13 + 8))(v22, v12, v13);
      v14 = v23;
      v15 = v24;
      __swift_project_boxed_opaque_existential_0Tm(v22, v23);
      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v16);
      (*(v17 + 8))(v21, v16, v17);
      v18 = (*(v15 + 16))(v21, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      outlined destroy of AnyHashable(v25);
      if (v18)
      {
        break;
      }

      v11 = (v11 + 1) & v20;
    }

    while (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t Mirror.init(reflecting:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v17);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, _ss17CustomReflectable_pMR);
  if (swift_dynamicCast(v15, v17, byte_1EEEAC6F8, v4, 6uLL))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    _ss9CodingKey_pWOb_0(v15, v14);
    v6 = *&v14[2];
    v5 = *(&v14[1] + 1);
    __swift_project_boxed_opaque_existential_0Tm(v14, *(&v14[1] + 1));
    (*(v6 + 8))(v15, v5, v6);
    v7 = v15[16];
    v12 = *&v15[24];
    v13 = *v15;
    v8 = v16;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v11 = v12;
    v10 = v13;
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    outlined destroy of _HasContiguousBytes?(v15, &_ss17CustomReflectable_pSgMd, _ss17CustomReflectable_pSgMR);
    memset(v14, 0, 41);
    result = Mirror.init(internalReflecting:subjectType:customAncestor:)(a1, 0, v14, v15);
    v10 = *v15;
    v7 = v15[16];
    v11 = *&v15[24];
    v8 = v16;
  }

  *a2 = v10;
  *(a2 + 16) = v7;
  *(a2 + 24) = v11;
  *(a2 + 40) = v8;
  return result;
}

__objc2_class **Dictionary.init(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  type metadata accessor for _DictionaryStorage(0, a2, a3, a4);
  return static _DictionaryStorage.allocate(capacity:)(a1);
}

__objc2_class **Dictionary.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v14, a1, v15);
  v16 = type metadata accessor for Dictionary(0, a2, a3, a5);
  if (swift_dynamicCast(&v23, v14, a4, v16, 6uLL))
  {
    (*(v12 + 8))(a1, a4);
  }

  else
  {
    v17 = (*(a6 + 40))(a4, a6);
    if (v17)
    {
      v18 = v17;
      type metadata accessor for _DictionaryStorage(0, a2, a3, a5);
      v19 = static _DictionaryStorage.allocate(capacity:)(v18);
    }

    else
    {
      v19 = &_swiftEmptyDictionarySingleton;
    }

    v23 = v19;
    MEMORY[0x1EEE9AC00](v19);
    *(&v22 - 6) = a2;
    *(&v22 - 5) = a3;
    *(&v22 - 4) = a4;
    *(&v22 - 3) = a5;
    *(&v22 - 2) = a6;
    v20 = type metadata accessor for _NativeDictionary(0, a2, a3, a5);
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, partial apply for closure #1 in Dictionary.init<A>(uniqueKeysWithValues:), (&v22 - 8), v20, a4, a6);
    (*(v12 + 8))(a1, a4);
  }

  return v23;
}

void swift_unexpectedError(void *a1, const char *a2, unint64_t a3, char a4, unint64_t a5)
{
  v10 = 0xD000000000000030;
  v11 = _StringGuts.init(_initialCapacity:)(50);
  v21 = v12;
  v62 = v11;
  v63 = v12;
  v22 = 0x800000018066C9C0;
  v23 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v23 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 || (v11 & ~v12 & 0x2000000000000000) != 0)
  {
    if (("Swift/StringLegacy.swift" & 0x2000000000000000 & v12) != 0 && (v24 = specialized _SmallString.init(_:appending:)(v11, v12, 0xD000000000000030, 0x800000018066C9C0), (v26 & 1) == 0))
    {
      v10 = v24;
      v28 = v25;
      v21;
      v62 = v10;
      v63 = v28;
      v22 = v28;
    }

    else
    {
      if (("Swift/StringLegacy.swift" & 0x2000000000000000) != 0)
      {
        v27 = ("Swift/StringLegacy.swift" >> 56) & 0xF;
      }

      else
      {
        v27 = 48;
      }

      _StringGuts.append(_:)(0xD000000000000030, 0x800000018066C9C0, 0, v27, v13, v14, v15, v16, v17, v18, v19, v20);
      v10 = v62;
      v22 = v63;
    }
  }

  else
  {
    v12;
    v62 = 0xD000000000000030;
    v63 = 0x800000018066C9C0;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  v61 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  _debugPrint_unlocked<A, B>(_:_:)(&v61, &v59, v29, &type metadata for String, &protocol witness table for String);
  a1;
  v38 = v59;
  v39 = v60;
  v40 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v40 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40 && (v10 & ~v22 & 0x2000000000000000) == 0)
  {
    v22;
    v62 = v38;
    v63 = v39;
    goto LABEL_26;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    if ((v60 & 0x2000000000000000) != 0)
    {
      v50 = specialized _SmallString.init(_:appending:)(v10, v22, v59, v60);
      if ((v52 & 1) == 0)
      {
        v57 = v50;
        v58 = v51;
        v22;
        v39;
        v62 = v57;
        v63 = v58;
        v39 = v58;
        v38 = v57;
LABEL_26:
        v53 = v38 & 0xFFFFFFFFFFFFLL;
        if ((v39 & 0x2000000000000000) != 0)
        {
          v53 = HIBYTE(v39) & 0xF;
        }

        if (v53 || (v38 & ~v39 & 0x2000000000000000) != 0)
        {
          if ((v39 & 0x2000000000000000) != 0)
          {
            v39;
            v55 = 0xA000000000000000;
            if (!(v39 & 0x80808080808080 | v38 & 0x8080808080808080))
            {
              v55 = 0xE000000000000000;
            }

            v54 = v55 & 0xFF00000000000000 | ((HIBYTE(v39) & 0xF) << 56) | v39 & 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v41, v42, v43, v44, v45, v46, v47, v48);
            v38 = v62;
            v54 = v63;
          }
        }

        else
        {
          v39;
          v38 = 0;
          v54 = 0xE000000000000000;
        }

        if (a4)
        {
          v56 = 2;
        }

        else
        {
          v56 = 0;
        }

        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v38, v54, a2, a3, v56, a5);
      }

      goto LABEL_24;
    }
  }

  else if ((v60 & 0x2000000000000000) != 0)
  {
LABEL_24:
    v49 = HIBYTE(v39) & 0xF;
    goto LABEL_25;
  }

  v49 = v59 & 0xFFFFFFFFFFFFLL;
LABEL_25:
  _StringGuts.append(_:)(v38, v39, 0, v49, v30, v31, v32, v33, v34, v35, v36, v37);
  v39;
  v38 = v62;
  v39 = v63;
  goto LABEL_26;
}

uint64_t Dictionary.init<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v28 = a3;
  v27 = a2;
  v14 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v17 + 40))(v18, v17);
  if (v19)
  {
    v20 = v19;
    type metadata accessor for _DictionaryStorage(0, a4, a5, a7);
    v21 = static _DictionaryStorage.allocate(capacity:)(v20);
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  v30 = v21;
  (*(v14 + 32))(v16, a1, a6);
  v22 = type metadata accessor for _NativeDictionary(0, a4, a5, a7);
  v23 = v29;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, 1, v27, v28, v22, a6, a8);
  (*(v14 + 8))(v16, a6);
  v24 = v30;
  if (v23)
  {
    v30;
  }

  return v24;
}

__objc2_class **Dictionary.init<A>(grouping:by:)(uint64_t a1, void (*a2)(char *), uint64_t a3, unint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v90 = a4;
  v85 = a6;
  v81 = a2;
  v82 = a3;
  v71 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - v11;
  swift_getAssociatedTypeWitness(0, v13, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = v14;
  v72 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v66 - v18;
  v21 = type metadata accessor for Optional(0, v15, v19, v20);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v66 - v22;
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v66 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - v26;
  v91 = &_swiftEmptyDictionarySingleton;
  (*(a7 + 32))(a5, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v83 = v27;
  v84 = v25;
  v79 = AssociatedConformanceWitness + 16;
  v80 = AssociatedConformanceWitness;
  v78 = v29;
  (v29)(v25);
  v30 = v72;
  v76 = *(v72 + 48);
  v77 = v72 + 48;
  if (v76(v23, 1, v15) != 1)
  {
    v86 = *(v30 + 32);
    v87 = v30 + 32;
    v68 = v71 + 32;
    v67 = (v71 + 8);
    v31 = &_swiftEmptyDictionarySingleton;
    v74 = v15;
    v75 = v12;
    v73 = v23;
    while (1)
    {
      v36 = v88;
      v86(v88, v23, v15);
      v37 = v89;
      v81(v36);
      v89 = v37;
      if (v37)
      {
        (*(v72 + 8))(v88, v15);
        (*(v66 + 8))(v83, v84);
        v31;
        return v31;
      }

      v38 = __RawDictionaryStorage.find<A>(_:)(v12, v90, v85);
      v42 = v31[2];
      v43 = (v39 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v90);
      }

      v45 = v39;
      if (v31[3] >= v44)
      {
        v52 = v38;
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v46 = type metadata accessor for Array(255, v15, v40, v41);
        v47 = v12;
        v48 = v90;
        v49 = v85;
        type metadata accessor for _NativeDictionary(0, v90, v46, v85);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, 1);
        v31 = v91;
        v50 = __RawDictionaryStorage.find<A>(_:)(v47, v48, v49);
        if ((v45 & 1) != (v51 & 1))
        {
          goto LABEL_20;
        }

        v52 = v50;
        v15 = v74;
        v12 = v75;
        v23 = v73;
        if (v45)
        {
LABEL_5:
          (*v67)(v12, v90);
          v32 = v69;
          v86(v69, v88, v15);
          v35 = type metadata accessor for Array(0, v15, v33, v34);
          Array.append(_:)(v32, v35);
          goto LABEL_6;
        }
      }

      v54 = v70;
      v53 = v71;
      v55 = *(v71 + 32);
      v56 = v12;
      v57 = v90;
      v55(v70, v56, v90);
      v58 = getContiguousArrayStorageType<A>(for:)(v15, v15);
      v59 = swift_allocObject(v58, (((*(v72 + 80) + *(v58 + 48)) & ~*(v72 + 80)) + *(v72 + 72)), *(v72 + 80) | *(v58 + 52));
      v60 = static Array._adoptStorage(_:count:)(v59, 1);
      v86(v61, v88, v15);
      v31[(v52 >> 6) + 8] = (v31[(v52 >> 6) + 8] | (1 << v52));
      v55(v31[6] + *(v53 + 72) * v52, v54, v57);
      *(&v31[7]->isa + v52) = v60;
      v62 = v31[2];
      v63 = __OFADD__(v62, 1);
      v64 = (&v62->isa + 1);
      if (v63)
      {
        goto LABEL_19;
      }

      v31[2] = v64;
      v15 = v74;
      v12 = v75;
      v23 = v73;
LABEL_6:
      v78(v84, v80);
      if (v76(v23, 1, v15) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v31 = &_swiftEmptyDictionarySingleton;
LABEL_3:
  (*(v66 + 8))(v83, v84);
  return v31;
}

void Dictionary.filter(_:)(uint64_t a1, __objc2_class **a2, uint64_t a3, uint64_t a4, uint64_t a5, __objc2_class **a6)
{
  v8 = a5;
  v9 = a4;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v14 = v13;
  v106 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v122 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v111 = &v95 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v123 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v95 - v21;
  v24 = type metadata accessor for Optional(0, v8, v22, v23);
  v140 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v126 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v95 - v27;
  v128 = type metadata accessor for Optional(0, v9, v28, v29);
  v136 = *(v128 - 8);
  v30 = MEMORY[0x1EEE9AC00](v128);
  v103 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v104 = (&v95 - v33);
  v114 = *(v9 - 1);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v125 = (&v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v124 = (&v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for Optional(0, v14, v37, v38);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v130 = &v95 - v40;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v139 = v6;
    v120 = a1;
    v121 = a2;
    v112 = a6;
    v142 = &_swiftEmptyDictionarySingleton;
    if (a3 < 0)
    {
      v41 = a3;
    }

    else
    {
      v41 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v42 = type metadata accessor for __CocoaDictionary.Iterator();
    v43 = swift_allocObject(v42, 0xE8, 7uLL);
    *(v43 + 16) = 0u;
    *(v43 + 32) = 0u;
    *(v43 + 48) = 0u;
    *(v43 + 64) = 0u;
    *(v43 + 80) = 0u;
    *(v43 + 96) = 0u;
    *(v43 + 112) = 0u;
    *(v43 + 128) = 0u;
    *(v43 + 144) = 0u;
    *(v43 + 160) = 0u;
    *(v43 + 176) = 0u;
    *(v43 + 192) = 0u;
    *(v43 + 216) = 0;
    *(v43 + 224) = 0;
    *(v43 + 208) = v41;
    v105 = v43;
    v44 = v43 & 0x7FFFFFFFFFFFFFFFLL;
    v45 = *((v43 & 0x7FFFFFFFFFFFFFFFLL) + 0xD8);
    if ((v45 & 0x8000000000000000) == 0)
    {
      v102 = (v114 + 56);
      v101 = (v136 + 2);
      v100 = (v114 + 48);
      v99 = (v136 + 1);
      v98 = (v113 + 56);
      v97 = (v140 + 16);
      v96 = (v113 + 48);
      v95 = (v140 + 8);
      v135 = (v113 + 32);
      v119 = (v106 + 56);
      v118 = (v106 + 48);
      v132 = (v113 + 8);
      v133 = (v114 + 8);
      v134 = (v106 + 16);
      v110 = (v106 + 8);
      v109 = (v106 + 32);
      v127 = &_swiftEmptyDictionarySingleton;
      v108 = v112 + 4;
      v47 = v128;
      v46 = v129;
      v117 = v24;
      v116 = v43 & 0x7FFFFFFFFFFFFFFFLL;
      v136 = (v114 + 32);
      v107 = v14;
      v137 = v8;
      while (1)
      {
        if (v45 == *(v44 + 224))
        {
          v48 = [*(v44 + 208) countByEnumeratingWithState:v44 + 16 objects:v44 + 80 count:16];
          *(v44 + 224) = v48;
          if (!v48)
          {
            *(v44 + 216) = -1;
            goto LABEL_34;
          }

          *(v44 + 216) = 0;
          v49 = *(v44 + 24);
          if (!v49)
          {
            goto LABEL_40;
          }

          v45 = 0;
        }

        else
        {
          v49 = *(v44 + 24);
          if (!v49)
          {
            goto LABEL_40;
          }

          if (v45 >> 60)
          {
            __break(1u);
LABEL_39:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v50 = (v49 + 8 * v45);
        if ((v50 & 7) != 0)
        {
          goto LABEL_39;
        }

        v51 = *v50;
        *(v44 + 216) = v45 + 1;
        v52 = *(v44 + 208);
        swift_unknownObjectRetain(v51);
        v53 = [v52 &sel:v51 objectForKey:?];
        if (!v53)
        {
LABEL_40:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v54 = v53;
        if (_swift_isClassOrObjCExistentialType(v9, v9))
        {
          v141 = v51;
          swift_dynamicCast(v125, &v141, qword_1EEEAC710, v9, 7uLL);
        }

        else
        {
          (*v102)(v104, 1, 1, v9);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v51, v9, v104);
          (*v101)(v103, v104, v47);
          if ((*v100)(v103, 1, v9) == 1)
          {
            goto LABEL_42;
          }

          swift_unknownObjectRelease(v51);
          (*v99)(v104, v47);
          (*v136)(v125, v103, v9);
        }

        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v8, v8);
        v56 = v126;
        v57 = v9;
        if (isClassOrObjCExistentialType)
        {
          v141 = v54;
          v58 = v124;
          swift_dynamicCast(v124, &v141, qword_1EEEAC710, v8, 7uLL);
        }

        else
        {
          (*v98)(v46, 1, 1, v8);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v54, v8, v46);
          (*v97)(v56, v46, v24);
          if ((*v96)(v56, 1, v8) == 1)
          {
LABEL_42:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v54);
          (*v95)(v46, v24);
          v58 = v124;
          (*v135)(v124, v56, v8);
        }

        v59 = *(v14 + 48);
        v60 = *v136;
        v61 = v130;
        (*v136)();
        v62 = *v135;
        (*v135)(&v61[v59], v58, v137);
        (*v119)(v61, 0, 1, v14);
        if ((*v118)(v61, 1, v14) == 1)
        {
          goto LABEL_35;
        }

        v140 = v62;
        v63 = *(v14 + 48);
        v64 = v138;
        v131 = v60;
        (v60)(v138, v61, v57);
        v65 = &v61[v63];
        v66 = v137;
        (v140)(&v64[v63], v65, v137);
        v67 = v57;
        v68 = *v134;
        v69 = v123;
        (*v134)(v123, v64, v14);
        v70 = *(v14 + 48);
        v71 = v139;
        v72 = v120(v69, &v69[v70]);
        if (v71)
        {
          (*v110)(v138, v14);
          _sSh8IteratorV8_VariantOySS__GWOe_0(v105 | 0x8000000000000000);
          v127;
          (*v132)(&v69[v70], v66);
          (*v133)(v69, v67);
          return;
        }

        v73 = v72;
        v139 = 0;
        v74 = *v132;
        v75 = &v69[v70];
        v76 = v66;
        (*v132)(v75, v66);
        v77 = *v133;
        v78 = v67;
        (*v133)(v69, v67);
        if (v73)
        {
          v79 = v111;
          v80 = v138;
          v68(v111, v138, v14);
          (*v109)(v122, v80, v14);
          v115 = *(v14 + 48);
          v81 = v127[2];
          v9 = v67;
          v8 = v76;
          v82 = v112;
          if (v127[3] <= v81)
          {
            type metadata accessor for _NativeDictionary(0, v78, v8, v112);
            _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(&v81->isa + 1, 1);
          }

          v83 = v74;
          v84 = v142;
          v85 = (*(v82 + 32))(v142[5], v9, v82);
          v86 = v84;
          v87 = __RawDictionaryStorage.find<A>(_:hashValue:)(v79, v85, v9, v82);
          v88 = v131;
          if (v89)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v9);
          }

          v90 = v87;
          v86[(v87 >> 6) + 8] = (v86[(v87 >> 6) + 8] | (1 << v87));
          (v88)(v86[6] + *(v114 + 72) * v87, v79, v9);
          v91 = v122;
          (v140)(v86[7] + *(v113 + 72) * v90, &v122[v115], v8);
          v92 = v107;
          v93 = *(v107 + 48);
          v94 = &v86[2]->isa + 1;
          v127 = v86;
          v86[2] = v94;
          v77(v91, v9);
          v83((v79 + v93), v8);
          v14 = v92;
        }

        else
        {
          (*v110)(v138, v14);
          v9 = v67;
          v8 = v76;
        }

        v24 = v117;
        v44 = v116;
        v45 = *(v116 + 216);
        v47 = v128;
        v46 = v129;
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }
      }
    }

    v127 = &_swiftEmptyDictionarySingleton;
LABEL_34:
    (*(v106 + 56))(v130, 1, 1, v14);
LABEL_35:
    _sSh8IteratorV8_VariantOySS__GWOe_0(v105 | 0x8000000000000000);
  }

  else
  {
    _NativeDictionary.filter(_:)(a1, a2, a3, v9, v8, a6);
    a3;
  }
}

uint64_t _NativeDictionary.insertNew(key:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (*(*v3 + 24) <= v6)
  {
    v7 = a1;
    v8 = a2;
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v6 + 1, 1);
    a1 = v7;
    a2 = v8;
    v5 = *v3;
  }

  v9 = a3[2];
  v10 = a3[3];
  v11 = a3[4];

  return _NativeDictionary._unsafeInsertNew(key:value:)(a1, a2, v5, v9, v10, v11);
}

void _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxSiSgIsgnndzo_AByxAHGAIsAG_pSHRzAHRs_r0_lIetMggozo_Tp5(uint64_t isStackAllocationSafe, __objc2_class **a2, uint64_t a3, __objc2_class **a4, __objc2_class **a5)
{
  v10 = isStackAllocationSafe;
  v17[8] = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 32);
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a3;
  v17[6] = isStackAllocationSafe;
  v17[7] = a2;
  v12 = ((1 << v11) + 63) >> 6;
  v13 = (8 * v12);
  if (v11 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v14 = (&v17[-1] - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v12, v14);
    _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_UnsafeBitsetVKXEfU_AhByxSiSgGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxAIIsgnndzo_AJsAK_pSHRzAIRs_r0_lIetyggozo_Tp5(v14, v12, a3, v10, a2, a4, a5);
    if (v5)
    {
      swift_willThrow();
    }
  }

  else
  {
    v15 = swift_slowAlloc(v13, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v12, v15);
    _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_UnsafeBitsetVKXEfU_AhByxSiSgGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxAIIsgnndzo_AJsAK_pSHRzAIRs_r0_lIetyggozo_TP5TA(v15, v12, v17);
    v15;
  }
}

void _NativeDictionary.filter(_:)(uint64_t isStackAllocationSafe, __objc2_class **a2, uint64_t a3, __objc2_class **a4, __objc2_class **a5, __objc2_class **a6)
{
  v9 = isStackAllocationSafe;
  v17[10] = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 32);
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a3;
  v17[7] = isStackAllocationSafe;
  v17[8] = a2;
  v11 = ((1 << v10) + 63) >> 6;
  v12 = (8 * v11);
  if (v10 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v13 = (v15 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v13);
    closure #1 in _NativeDictionary.filter(_:)(v13, v11, v9, a5, a6, &v16);
    if (v6)
    {
      swift_willThrow();
    }
  }

  else
  {
    v14 = swift_slowAlloc(v12, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v14);
    partial apply for closure #1 in _NativeDictionary.filter(_:)(v14, v11, v17);
    v14;
  }
}

unint64_t Dictionary._Variant.index(forKey:)(id *a1, int64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = [v7 &sel:v6 objectForKey:?];
    if (v8)
    {
      swift_unknownObjectRelease(v8);
      v9 = [swift_unknownObjectRetain(v7) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v9, 24))
        {
          v11 = swift_bufferAllocate(v10, (8 * v9 + 24), 7uLL);
          v11[2] = v9;
          [v7 getObjects:0 andKeys:v11 + 3 count:v9];
          a2;
          if ((v11[2] & 0x8000000000000000) == 0)
          {
            v12 = 3;
            do
            {
              v13 = v11[v12];
              swift_unknownObjectRetain(v13);
              isEqual = swift_stdlib_NSObject_isEqual(v6, v13);
              swift_unknownObjectRelease(v13);
              ++v12;
            }

            while ((isEqual & 1) == 0);
            v15 = type metadata accessor for __CocoaDictionary.Index.Storage();
            v16 = swift_allocObject(v15, 0x20, 7uLL);
            v16[2] = v7;
            v16[3] = v11;
            swift_unknownObjectRetain(v7);
            swift_unknownObjectRelease(v6);
            return v16;
          }

LABEL_19:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }

    swift_unknownObjectRelease(v6);
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  result = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void Dictionary._Variant.lookup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, swift *a7, swift *a8, uint64_t a9)
{
  v15 = *(a7 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v20 & 0xC000000000000001) == 0)
  {
    if (v17)
    {
      v41 = a2;
      if (v16 >= 0)
      {
        v29 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v29 = v16;
      }

      v30 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v29, v30))
      {
        goto LABEL_33;
      }

      if (*(a6 + 36) == specialized static Hasher._hash(seed:_:)(0, *(v29 + 16)))
      {
        if (!swift_dynamicCastClass(v29, v30))
        {
          goto LABEL_33;
        }

        v31 = *(v29 + 24);
        if (*(v31 + 16) <= a4)
        {
          goto LABEL_32;
        }

        v32 = *(v31 + 8 * a4 + 24);
        v33 = swift_unknownObjectRetain(v32);
        _forceBridgeFromObjectiveC<A>(_:_:)(v33, a7, v34, v19);
        swift_unknownObjectRelease(v32);
        v35 = __RawDictionaryStorage.find<A>(_:)(v19, a7, a9);
        v37 = v36;
        (*(v15 + 8))(v19, a7);
        if (v37)
        {
          v16 = v35;
          a2 = v41;
LABEL_29:
          v38 = a1;
          v39 = v16;
          (*(v15 + 16))(v38, *(a6 + 48) + *(v15 + 72) * v16, a7);
          (*(*(a8 - 1) + 16))(a2, *(a6 + 56) + *(*(a8 - 1) + 72) * v39, a8);
          return;
        }
      }
    }

    else if ((v16 & 0x8000000000000000) == 0 && 1 << *(a6 + 32) > v16 && ((*(a6 + 8 * (v16 >> 6) + 64) >> v16) & 1) != 0 && *(a6 + 36) == a4)
    {
      goto LABEL_29;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6 >= 0)
  {
    a6 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if ((v17 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v16 >= 0)
  {
    v21 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v21 = v16;
  }

  v22 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v21, v22))
  {
    goto LABEL_33;
  }

  v23 = *(v21 + 16);
  if (v23 != a6)
  {
    goto LABEL_32;
  }

  v24 = *(*(v21 + 24) + 8 * a4 + 24);
  swift_unknownObjectRetain(v24);
  if (!swift_dynamicCastClass(v21, v22))
  {
LABEL_33:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = [v23 &sel:v24 objectForKey:?];
  if (!v25)
  {
LABEL_32:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v27 = v25;
  _forceBridgeFromObjectiveC<A>(_:_:)(v24, a7, v26, a1);
  swift_unknownObjectRelease(v24);
  _forceBridgeFromObjectiveC<A>(_:_:)(v27, a8, v28, a2);

  swift_unknownObjectRelease(v27);
}

id Dictionary._Variant.count.getter(uint64_t a1)
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

uint64_t (*Dictionary.subscript.read(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, swift *a6, swift *a7, uint64_t a8))()
{
  swift_getTupleTypeMetadata2(0, a6, a7, "key value ", 0);
  v17 = v16;
  *a1 = v16;
  v18 = *(v16 - 8);
  a1[1] = v18;
  v19 = *(v18 + 64);
  if (swift_coroFrameAlloc)
  {
    v20 = swift_coroFrameAlloc(v19, 0xB32AuLL);
  }

  else
  {
    v20 = malloc(v19);
  }

  a1[2] = v20;
  Dictionary._Variant.lookup(_:)(v20, v20 + *(v17 + 48), a2, a3, a4 & 1, a5, a6, a7, a8);
  return _ArrayBuffer.subscript.read;
}

void _sSDyxq_GSlsSl34_customLastIndexOfEquatableElementy0C0QzSgSg0F0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t Dictionary._Variant.lookup(_:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, swift *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
    if (a2 < 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v11 = [v10 &sel:v9 objectForKey:?];
    swift_unknownObjectRelease(v9);
    if (v11)
    {
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, a4, v12, a6);
      swift_unknownObjectRelease(v11);
      v13 = 0;
      v14 = *(a4 - 1);
      goto LABEL_11;
    }
  }

  else if (*(a2 + 16))
  {
    v15 = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
    if (v16)
    {
      v19 = *(a4 - 1);
      (*(v19 + 16))(a6, *(a2 + 56) + *(v19 + 72) * v15, a4);
      v14 = v19;
      v13 = 0;
      goto LABEL_11;
    }
  }

  v14 = *(a4 - 1);
  v13 = 1;
LABEL_11:
  v17 = *(v14 + 56);

  return v17(a6, v13, 1, a4);
}

void specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
  v10 = *v4;
  *v4 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *v4 = v10;
}

unint64_t specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
  v9 = *v3;
  *v3 = 0x8000000000000000;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v3 = v9;
  return result;
}

_OWORD *specialized Dictionary._Variant.setValue(_:forKey:)(_OWORD *a1, unint64_t a2, unint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
  v9 = *v3;
  *v3 = 0x8000000000000000;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v3 = v9;
  return result;
}

void specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2, void *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
  v8 = *v3;
  *v3 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v3 = v8;
}

_OWORD *specialized Dictionary._Variant.setValue(_:forKey:)(_OWORD *a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  v7 = *v2;
  *v2 = 0x8000000000000000;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  *v2 = v7;
  return result;
}

id Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = a3[2];
  v10 = a3[3];
  if ((v8 & 0xC000000000000001) == 0)
  {
    v13 = a3[4];
    goto LABEL_8;
  }

  if (v8 < 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = (v8 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v11 count];
  if (!__OFADD__(result, 1))
  {
    v13 = a3[4];
    v8 = _NativeDictionary.init(_:capacity:)(v11, result + 1, v9, v10, v13);
    *v4 = v8;
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v8);
    v16 = *v4;
    *v4 = 0x8000000000000000;
    v15 = type metadata accessor for _NativeDictionary(0, v9, v10, v13);
    result = _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, v15);
    *v4 = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = type metadata accessor for Dictionary._Variant(0, a2[2], a2[3], a2[4]);

  return Dictionary._Variant.removeValue(forKey:)(a1, v5, a3);
}

void (*Dictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(void *a1)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xAB9uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = a3[2];
  v5[4] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v5[5] = v8;
  v10 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xAB9uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v6[6] = v11;
  (*(v9 + 16))();
  v13 = type metadata accessor for Dictionary._Variant(0, v7, a3[3], a3[4]);
  v6[7] = Dictionary._Variant.subscript.modify(v6, v12, v13);
  return Dictionary.subscript.modify;
}

void Dictionary.subscript.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*Dictionary._Variant.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t *a1)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0xA0, 0x939CuLL);
  }

  else
  {
    v7 = malloc(0xA0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = a3[2];
  v7[13] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v7[14] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0x939CuLL);
    v8[15] = v13;
    v14 = swift_coroFrameAlloc(v12, 0x939CuLL);
  }

  else
  {
    v13 = malloc(v12);
    v8[15] = v13;
    v14 = malloc(v12);
  }

  v15 = v14;
  v8[16] = v14;
  v16 = *v3;
  v17 = a3[3];
  if ((*v3 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v16);
    (*(v11 + 16))(v15, a2, v9);
    v8[17] = Dictionary._Variant.asNative.modify(v8 + 4);
    v25 = type metadata accessor for _NativeDictionary(0, v9, v17, a3[4]);
    v8[18] = _NativeDictionary.subscript.modify(v8 + 8, v15, isUniquelyReferenced_nonNull_native, v25);
    return Dictionary._Variant.subscript.modify;
  }

  if (v16 < 0)
  {
    v18 = *v3;
  }

  else
  {
    v18 = (v16 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v18 count];
  if (!__OFADD__(result, 1))
  {
    v20 = a3[4];
    v21 = _NativeDictionary.init(_:capacity:)(v18, result + 1, v9, v17, v20);
    v8[12] = v21;
    *v3 = v21;
    (*(v11 + 16))(v13, a2, v9);
    v21;
    v22 = type metadata accessor for _NativeDictionary(0, v9, v17, v20);
    v8[19] = _NativeDictionary.subscript.modify(v8, v13, 1, v22);
    return Dictionary._Variant.subscript.modify;
  }

  __break(1u);
  return result;
}

void Dictionary._Variant.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 32;
  v3 = *(*a1 + 136);
  v4 = *(*a1 + 128);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 112);
  (*(*a1 + 144))();
  (*(v6 + 8))(v4, v5);
  v3(v2, 0);
  v7 = *(v1 + 120);
  free(*(v1 + 128));
  free(v7);

  free(v1);
}

void Dictionary._Variant.subscript.modify(void *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 112);
  v2 = *(*a1 + 120);
  v4 = *(*a1 + 104);
  (*(*a1 + 152))(*a1, 0);
  (*(v3 + 8))(v2, v4);
  *(v1 + 96);
  v5 = *(v1 + 120);
  free(*(v1 + 128));
  free(v5);

  free(v1);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = (a5[7] + 16 * result);
  *v7 = a3;
  v7[1] = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  (*(*(a5 - 8) + 32))(a4[6] + *(*(a5 - 8) + 72) * a1, a2, a5);
  result = (*(*(a6 - 8) + 32))(a4[7] + *(*(a6 - 8) + 72) * a1, a3, a6);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t Dictionary.subscript.getter@<X0>(id *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a3;
  v32 = a2;
  v14 = type metadata accessor for Optional(0, a6, a3, a4);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  if ((a4 & 0xC000000000000001) != 0)
  {
    v21 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a5);
    if (a4 < 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = (a4 & 0xFFFFFFFFFFFFFF8);
    }

    v23 = [v22 &sel:v21 objectForKey:{v31, v32}];
    swift_unknownObjectRelease(v21);
    if (v23)
    {
      _forceBridgeFromObjectiveC<A>(_:_:)(v23, a6, v24, v20);
      swift_unknownObjectRelease(v23);
      v25 = *(a6 - 1);
      v26 = v25;
LABEL_10:
      (*(v26 + 56))(v20, 0, 1, a6);
      goto LABEL_12;
    }
  }

  else if (*(a4 + 16))
  {
    v27 = __RawDictionaryStorage.find<A>(_:)(a1, a5, a7);
    if (v28)
    {
      v29 = *(a4 + 56);
      v25 = *(a6 - 1);
      (*(v25 + 16))(v20, v29 + *(v25 + 72) * v27, a6);
      v26 = v25;
      goto LABEL_10;
    }
  }

  v25 = *(a6 - 1);
  (*(v25 + 56))(v20, 1, 1, a6);
LABEL_12:
  (*(v15 + 32))(v18, v20, v14);
  if ((*(v25 + 48))(v18, 1, a6) != 1)
  {
    return (*(v25 + 32))(a8, v18, a6);
  }

  v32();
  return (*(v15 + 8))(v18, v14);
}

void (*Dictionary.subscript.modify(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, void *a5))(void **a1)
{
  v6 = v5;
  v11 = a5[2];
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = swift_coroFrameAlloc;
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v13, 0x1535uLL);
  }

  else
  {
    v15 = malloc(v13);
  }

  v16 = v15;
  *a1 = v15;
  v45 = a5[3];
  v17 = *(*(v45 - 1) + 8);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0x1535uLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v42 = v18;
  v43 = v16;
  *(a1 + 1) = v18;
  v19 = *v6;
  v44 = v12;
  if ((*v6 & 0xC000000000000001) == 0)
  {
    moveElements = swift_isUniquelyReferenced_nonNull_native(v19);
    v46 = *v6;
    v21 = *v6;
    *v6 = 0x8000000000000000;
    v12 = a5[4];
    v41 = a2;
    v32 = __RawDictionaryStorage.find<A>(_:)(a2, v11, v12);
    v34 = v21[2];
    v35 = (v33 & 1) == 0;
    v36 = v34 + v35;
    if (!__OFADD__(v34, v35))
    {
      v16 = v32;
      LOBYTE(v14) = v33;
      if (v21[3] < v36)
      {
        type metadata accessor for _NativeDictionary(0, v11, v45, v12);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, moveElements);
        v21 = v46;
        v29 = v41;
        v37 = __RawDictionaryStorage.find<A>(_:)(v41, v11, v12);
        if ((v14 & 1) != (v38 & 1))
        {
          goto LABEL_32;
        }

        v16 = v37;
LABEL_26:
        *v6 = v21;
        if (v14)
        {
          return Dictionary.subscript.modify;
        }

        goto LABEL_22;
      }

      if (moveElements)
      {
LABEL_25:
        v29 = v41;
        goto LABEL_26;
      }

LABEL_31:
      type metadata accessor for _NativeDictionary(0, v11, v45, v12);
      _NativeDictionary.copy()();
      v21 = v46;
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 < 0)
  {
    v14 = *v6;
  }

  else
  {
    v14 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  v20 = [v14 count];
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  v41 = a3;
  a3 = a1;
  v12 = a5[4];
  v21 = _NativeDictionary.init(_:capacity:)(v14, v20 + 1, v11, v45, v12);
  v46 = v21;
  v22 = a2;
  v23 = __RawDictionaryStorage.find<A>(_:)(a2, v11, v12);
  v25 = v21[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = v24;
  if (v21[3] < v27)
  {
    type metadata accessor for _NativeDictionary(0, v11, v45, v12);
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, 1);
    v29 = v22;
    v30 = __RawDictionaryStorage.find<A>(_:)(v22, v11, v12);
    if ((v28 & 1) == (v31 & 1))
    {
      v16 = v30;
      goto LABEL_21;
    }

LABEL_32:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v11);
  }

  v16 = v23;
  v29 = v22;
LABEL_21:
  *v6 = v21;
  a3 = v41;
  if ((v28 & 1) == 0)
  {
LABEL_22:
    a3();
    (*(v44 + 16))(v43, v29, v11);
    _NativeDictionary._insert(at:key:value:)(v16, v43, v42, v21, v11, v45);
  }

  return Dictionary.subscript.modify;
}

void Dictionary.subscript.modify(void **a1)
{
  v1 = *a1;
  free(a1[1]);

  free(v1);
}

id Dictionary._Variant.mutatingFind(_:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = a2[2];
  v9 = a2[3];
  if ((*v2 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
    v12 = *v2;
    v27 = *v4;
    *v4 = 0x8000000000000000;
    v3 = a2[4];
    result = __RawDictionaryStorage.find<A>(_:)(a1, v8, v3);
    v22 = v12[2];
    v23 = (v21 & 1) == 0;
    v24 = v22 + v23;
    if (!__OFADD__(v22, v23))
    {
      v17 = v21;
      if (v12[3] < v24)
      {
        type metadata accessor for _NativeDictionary(0, v8, v9, v3);
        v18 = v24;
        v19 = isUniquelyReferenced_nonNull_native;
        goto LABEL_12;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

LABEL_19:
      v26 = result;
      type metadata accessor for _NativeDictionary(0, v8, v9, v3);
      _NativeDictionary.copy()();
      result = v26;
      v12 = v27;
      goto LABEL_15;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 < 0)
  {
    v10 = *v2;
  }

  else
  {
    v10 = (v7 & 0xFFFFFFFFFFFFFF8);
  }

  result = [v10 count];
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = a2[4];
  v12 = _NativeDictionary.init(_:capacity:)(v10, result + 1, v8, v9, v3);
  v27 = v12;
  result = __RawDictionaryStorage.find<A>(_:)(a1, v8, v3);
  v14 = v12[2];
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v13;
  if (v12[3] >= v16)
  {
    goto LABEL_15;
  }

  type metadata accessor for _NativeDictionary(0, v8, v9, v3);
  v18 = v16;
  v19 = 1;
LABEL_12:
  _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v19);
  v12 = v27;
  result = __RawDictionaryStorage.find<A>(_:)(a1, v8, v3);
  if ((v17 & 1) != (v25 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v8);
  }

LABEL_15:
  *v4 = v12;
  return result;
}

uint64_t Dictionary.subscript.setter(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = a1;
  v12 = *(a5 + 24);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v15;
  v16 = *v8;
  v18 = *(v17 + 16);
  v19 = (*v8 & 0xC000000000000001) == 0;
  v46 = v21;
  v47 = v20;
  if (v19)
  {
    LODWORD(v43) = swift_isUniquelyReferenced_nonNull_native(v16);
    v48 = *v8;
    v24 = v48;
    *v8 = 0x8000000000000000;
    v6 = *(a5 + 32);
    v30 = __RawDictionaryStorage.find<A>(_:)(a2, v18, v6);
    v31 = v24[2];
    v32 = (v23 & 1) == 0;
    v33 = v31 + v32;
    if (!__OFADD__(v31, v32))
    {
      v7 = v30;
      if (v24[3] >= v33)
      {
        if (!v43)
        {
          goto LABEL_23;
        }

        *v8 = v24;
        if (v23)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v42 = v23;
        type metadata accessor for _NativeDictionary(0, v18, v12, v6);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v43);
        v24 = v48;
        v34 = __RawDictionaryStorage.find<A>(_:)(v47, v18, v6);
        v36 = v35 & 1;
        v37 = v42;
        if ((v42 & 1) != v36)
        {
          goto LABEL_25;
        }

        v7 = v34;
        *v8 = v24;
        if (v37)
        {
          goto LABEL_10;
        }
      }

LABEL_18:
      v38 = v44;
      v46();
      _NativeDictionary._insert(at:key:value:)(v7, v47, v38, v24, v18, v12);
      return (*(v13 + 40))(v24[7] + *(v13 + 72) * v7, v11, v12);
    }

LABEL_22:
    __break(1u);
LABEL_23:
    v40 = v23;
    type metadata accessor for _NativeDictionary(0, v18, v12, v6);
    _NativeDictionary.copy()();
    v24 = v48;
    *v8 = v48;
    if (v40)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (v16 < 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v22 = [v7 count];
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v43 = v11;
  v6 = *(a5 + 32);
  v24 = _NativeDictionary.init(_:capacity:)(v7, v23, v18, v12, v6);
  v48 = v24;
  v25 = __RawDictionaryStorage.find<A>(_:)(a2, v18, v6);
  v26 = v24[2];
  v27 = (v23 & 1) == 0;
  v11 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v23;
  if (v24[3] < v11)
  {
    type metadata accessor for _NativeDictionary(0, v18, v12, v6);
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, 1);
    v24 = v48;
    v25 = __RawDictionaryStorage.find<A>(_:)(v47, v18, v6);
    if ((v28 & 1) != (v29 & 1))
    {
LABEL_25:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v18);
    }
  }

  v7 = v25;
  v11 = v43;
  *v8 = v24;
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  (*(*(v18 - 1) + 1))(v47, v18);
  return (*(v13 + 40))(v24[7] + *(v13 + 72) * v7, v11, v12);
}

__objc2_class **Dictionary.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.mapValues<A>(_:)(a1, a2, a3, a4, a5, a6);
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return __CocoaDictionary.mapValues<A, B, C>(_:)(a1, a2, a3, a4, a5, a6, a7);
}

__objc2_class **Dictionary._Variant.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.mapValues<A>(_:)(a1, a2, a3, a4, a5, a6);
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return __CocoaDictionary.mapValues<A, B, C>(_:)(a1, a2, a3, a4, a5, a6, a7);
}

__objc2_class **Dictionary.compactMapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v118 = a7;
  v148 = a1;
  v149 = a2;
  v143 = type metadata accessor for Optional(0, a6, a3, a4);
  v11 = *(v143 - 8);
  v12 = MEMORY[0x1EEE9AC00](v143);
  v137 = &v103 - v13;
  i = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v121 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v103 - v16;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v119 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v103 - v22;
  v25 = type metadata accessor for Optional(0, a5, v23, v24);
  v155 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v126 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v103 - v28;
  v112 = type metadata accessor for Optional(0, a4, v29, v30);
  v31 = *(v112 - 8);
  v32 = MEMORY[0x1EEE9AC00](v112);
  v114 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v115 = (&v103 - v35);
  v153 = a5;
  v136 = *(a5 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v125 = (&v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v36);
  v134 = &v103 - v39;
  v154 = a4;
  v135 = *(a4 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v139 = (&v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v132 = &v103 - v42;
  v45 = type metadata accessor for Optional(0, v18, v43, v44);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v103 - v46;
  v160 = &_swiftEmptyDictionarySingleton;
  v147 = a6;
  v111 = v25;
  if ((a3 & 0xC000000000000001) != 0)
  {
    if (a3 < 0)
    {
      v48 = a3;
    }

    else
    {
      v48 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v49 = type metadata accessor for __CocoaDictionary.Iterator();
    v50 = swift_allocObject(v49, 0xE8, 7uLL);
    v124 = 0;
    v51 = 0;
    v52 = 0;
    *(v50 + 208) = v48;
    *(v50 + 216) = 0;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 0u;
    *(v50 + 64) = 0u;
    *(v50 + 80) = 0u;
    *(v50 + 96) = 0u;
    *(v50 + 112) = 0u;
    *(v50 + 128) = 0u;
    *(v50 + 144) = 0u;
    *(v50 + 160) = 0u;
    *(v50 + 176) = 0u;
    *(v50 + 192) = 0u;
    *(v50 + 224) = 0;
    v53 = v50 | 0x8000000000000000;
  }

  else
  {
    v54 = -1 << *(a3 + 32);
    v51 = ~v54;
    v55 = *(a3 + 64);
    v124 = a3 + 64;
    v56 = -v54;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v52 = v57 & v55;
    v53 = a3;
  }

  v127 = v53 & 0x7FFFFFFFFFFFFFFFLL;
  v110 = (v135 + 56);
  v109 = (v31 + 16);
  v108 = (v135 + 48);
  v107 = (v31 + 8);
  v141 = (v135 + 32);
  v106 = (v136 + 56);
  v105 = (v155 + 16);
  v104 = (v136 + 48);
  v103 = (v155 + 8);
  v140 = (v136 + 32);
  v58 = (v19 + 56);
  v122 = v51;
  v138 = (v51 + 64) >> 6;
  v129 = v135 + 16;
  v128 = v136 + 16;
  v150 = (v19 + 32);
  v151 = (v19 + 48);
  v144 = (i + 48);
  v117 = (i + 32);
  v116 = (v136 + 8);
  v145 = (v19 + 8);
  v142 = (v11 + 8);
  a3;
  v59 = 0;
  v123 = &_swiftEmptyDictionarySingleton;
  v60 = v137;
  v133 = v18;
  v131 = v47;
  v152 = v53;
  v130 = (v19 + 56);
  v155 = 0;
  if ((v53 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v61 = v153;
  if (v52)
  {
    v146 = v52;
    v62 = v52;
    v63 = v59;
LABEL_26:
    i = (v62 - 1) & v62;
    v73 = __clz(__rbit64(v62)) | (v63 << 6);
    v74 = v135;
    v75 = v132;
    v76 = v154;
    (*(v135 + 16))(v132, *(v53 + 48) + *(v135 + 72) * v73, v154);
    v77 = v136;
    v78 = *(v53 + 56) + *(v136 + 72) * v73;
    v79 = v134;
    (*(v136 + 16))(v134, v78, v61);
    v80 = *(v133 + 48);
    v81 = *(v74 + 32);
    v18 = v133;
    v47 = v131;
    v81(v131, v75, v76);
    (*(v77 + 32))(&v47[v80], v79, v61);
    v58 = v130;
    (*v130)(v47, 0, 1, v18);
    v71 = v63;
    v60 = v137;
    goto LABEL_37;
  }

  if (v138 <= (v59 + 1))
  {
    v70 = (v59 + 1);
  }

  else
  {
    v70 = v138;
  }

  v71 = (v70 - 1);
  v72 = v59;
  while (1)
  {
    v63 = (v72 + 1);
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v63 >= v138)
    {
      break;
    }

    v62 = *(v124 + 8 * v63);
    ++v72;
    if (v62)
    {
      v146 = 0;
      v61 = v153;
      goto LABEL_26;
    }
  }

  (*v58)(v47, 1, 1, v18);
  for (i = 0; ; i = v52)
  {
LABEL_37:
    if ((*v151)(v47, 1, v18) == 1)
    {
      v53 = v152;
      goto LABEL_54;
    }

    v91 = *v150;
    v92 = v157;
    (*v150)(v157, v47, v18);
    v93 = v158;
    v148(&v92[*(v18 + 48)]);
    v158 = v93;
    v53 = v152;
    if (v93)
    {
      (*v145)(v157, v18);
      _sSh8IteratorV8_VariantOySS__GWOe_0(v53);
      v101 = v123;
      v123;
      return v101;
    }

    if ((*v144)(v60, 1, v147) == 1)
    {
      (*v145)(v157, v18);
      (*v142)(v60, v143);
    }

    else
    {
      v155 = *v117;
      v94 = v147;
      (v155)(v120, v60, v147);
      v91(v119, v157, v18);
      (v155)(v121, v120, v94);
      v95 = v123[2];
      if (v123[3] <= v95)
      {
        type metadata accessor for _NativeDictionary(0, v154, v94, v118);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(&v95->isa + 1, 1);
      }

      v96 = *(v18 + 48);
      v97 = v119;
      v123 = v160;
      _NativeDictionary._unsafeInsertNew(key:value:)(v119, v121, v160, v154, v94, v118);
      (*v116)(v97 + v96, v153);
    }

    v59 = v71;
    v52 = i;
    v155 = v71;
    if ((v53 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v64 = v127;
    v65 = *(v127 + 216);
    v67 = v153;
    v66 = v154;
    if ((v65 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    if (v65 == *(v127 + 224))
    {
      break;
    }

    v69 = *(v127 + 24);
    if (!v69)
    {
      goto LABEL_59;
    }

    if (v65 >> 60)
    {
      goto LABEL_57;
    }

LABEL_29:
    v82 = (v69 + 8 * v65);
    if ((v82 & 7) != 0)
    {
      goto LABEL_58;
    }

    v83 = *v82;
    v64[27] = v65 + 1;
    v84 = v64[26];
    swift_unknownObjectRetain(v83);
    v85 = [v84 &sel:v83 objectForKey:?];
    if (!v85)
    {
LABEL_59:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v86 = v85;
    if (_swift_isClassOrObjCExistentialType(v66, v66))
    {
      v159 = v83;
      swift_dynamicCast(v139, &v159, qword_1EEEAC710, v66, 7uLL);
    }

    else
    {
      (*v110)(v115, 1, 1, v66);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v83, v66, v115);
      (*v109)(v114, v115, v112);
      if ((*v108)(v114, 1, v66) == 1)
      {
        goto LABEL_60;
      }

      swift_unknownObjectRelease(v83);
      (*v107)(v115, v112);
      (*v141)(v139, v114, v66);
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v67, v67);
    v88 = v126;
    if (isClassOrObjCExistentialType)
    {
      v159 = v86;
      v89 = v125;
      swift_dynamicCast(v125, &v159, qword_1EEEAC710, v67, 7uLL);
    }

    else
    {
      v98 = v113;
      (*v106)(v113, 1, 1, v67);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v86, v67, v98);
      v99 = v98;
      v100 = v111;
      (*v105)(v88, v99, v111);
      if ((*v104)(v88, 1, v67) == 1)
      {
LABEL_60:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v86);
      (*v103)(v113, v100);
      v89 = v125;
      (*v140)(v125, v88, v67);
    }

    v90 = *(v18 + 48);
    (*v141)(v47, v139, v154);
    (*v140)(&v47[v90], v89, v67);
    (*v58)(v47, 0, 1, v18);
    v71 = v155;
  }

  v68 = [*(v127 + 208) countByEnumeratingWithState:v127 + 16 objects:v127 + 80 count:16];
  v64[28] = v68;
  if (v68)
  {
    v64[27] = 0;
    v69 = v64[3];
    if (!v69)
    {
      goto LABEL_59;
    }

    v65 = 0;
    goto LABEL_29;
  }

  v64[27] = -1;
LABEL_53:
  (*v58)(v47, 1, 1, v18);
LABEL_54:
  v101 = v123;
  _sSh8IteratorV8_VariantOySS__GWOe_0(v53);
  return v101;
}

uint64_t Sequence.reduce<A>(into:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, int **a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v37 = a5;
  v42 = a2;
  v43 = a3;
  v46 = a1;
  v34 = a7;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v16 = type metadata accessor for Optional(0, v11, v14, v15);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v34 - v18;
  v20 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v24 = v23;
  v36 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v34 - v25);
  (*(v20 + 16))(v22, v45, a4);
  v27 = v44;
  (v44[4])(a4, v44);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, a4, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v44 = v26;
  v45 = v24;
  v30 = v35;
  v40 = AssociatedConformanceWitness + 16;
  v41 = AssociatedConformanceWitness;
  v39 = v29;
  (v29)(v24);
  v38 = *(v30 + 48);
  if (v38(v19, 1, v11) == 1)
  {
LABEL_5:
    (*(v36 + 8))(v44, v45);
    return (*(*(v37 - 8) + 32))(v34, v46);
  }

  else
  {
    v31 = *(v30 + 32);
    v32 = (v30 + 8);
    while (1)
    {
      v31(v13, v19, v11);
      v42(v46, v13);
      if (v7)
      {
        break;
      }

      (*v32)(v13, v11);
      v39(v45, v41);
      if (v38(v19, 1, v11) == 1)
      {
        goto LABEL_5;
      }
    }

    (*v32)(v13, v11);
    (*(v36 + 8))(v44, v45);
    return (*(*(v37 - 8) + 8))(v46);
  }
}

uint64_t Dictionary.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Dictionary._Variant(0, a3[2], a3[3], a3[4]);

  return Dictionary._Variant.updateValue(_:forKey:)(a1, a2, v7, a4);
}

uint64_t Dictionary._Variant.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1;
  v10 = *(a3 + 16);
  v45 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = *(v14 + 24);
  v16 = (*v4 & 0xC000000000000001) == 0;
  v47 = a4;
  v48 = v4;
  v46 = v8;
  if (v16)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
    v49 = *v4;
    v32 = v49;
    *v4 = 0x8000000000000000;
    v5 = *(a3 + 32);
    v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
    v34 = v32[2];
    v35 = (v33 & 1) == 0;
    v36 = v34 + v35;
    if (!__OFADD__(v34, v35))
    {
      LOBYTE(v8) = v33;
      if (v32[3] >= v36)
      {
        if (!isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_23;
        }
      }

      else
      {
        type metadata accessor for _NativeDictionary(0, v10, v15, v5);
        _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
        v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
        if ((v8 & 1) != (v37 & 1))
        {
          goto LABEL_14;
        }
      }

      v19 = v49;
      if ((v8 & 1) == 0)
      {
LABEL_24:
        v43 = v18;
        (*(v45 + 16))(v12, a2, v10);
        v38 = v43;
        goto LABEL_25;
      }

LABEL_18:
      v27 = v19[7];
      v28 = *(v15 - 1);
      v29 = v28;
      v30 = *(v28 + 72) * v18;
      goto LABEL_19;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    v42 = v18;
    type metadata accessor for _NativeDictionary(0, v10, v15, v5);
    _NativeDictionary.copy()();
    v18 = v42;
    v19 = v49;
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (v13 < 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = (v13 & 0xFFFFFFFFFFFFFF8);
  }

  v18 = [v17 count];
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(a3 + 32);
  v19 = _NativeDictionary.init(_:capacity:)(v17, v18 + 1, v10, v15, v5);
  v49 = v19;
  v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
  v21 = v19[2];
  v22 = (v20 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v20;
  if (v19[3] < v23)
  {
    type metadata accessor for _NativeDictionary(0, v10, v15, v5);
    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, 1);
    v19 = v49;
    v18 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v5);
    if ((v24 & 1) != (v25 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v10);
    }
  }

  v26 = v18;
  if ((v24 & 1) == 0)
  {
    (*(v45 + 16))(v12, a2, v10);
    v38 = v26;
LABEL_25:
    _NativeDictionary._insert(at:key:value:)(v38, v12, v46, v19, v10, v15);
    result = (*(*(v15 - 1) + 7))(v47, 1, 1, v15);
    goto LABEL_26;
  }

  v27 = v19[7];
  v28 = *(v15 - 1);
  v29 = v28;
  v30 = *(v28 + 72) * v18;
LABEL_19:
  v39 = *(v28 + 32);
  v40 = v47;
  v39(v47, v27 + v30, v15);
  v39(v19[7] + v30, v46, v15);
  result = (*(v29 + 56))(v40, 0, 1, v15);
LABEL_26:
  *v48 = v19;
  return result;
}

void Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v32 = a6;
  v7 = v6;
  v30 = a2;
  v31 = a3;
  v34 = a5;
  v10 = *(a5 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = *v7;
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  if ((*v7 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v20 = *v7;
    }

    else
    {
      v20 = (v16 & 0xFFFFFFFFFFFFFF8);
    }

    *v7;
    v21 = [v20 count];
    v22 = *(a4 + 32);
    v35 = _NativeDictionary.init(_:capacity:)(v20, v21, v18, v19, v22);
    v23 = v34;
    (*(v10 + 32))(v13, a1, v34);
    v24 = type metadata accessor for _NativeDictionary(0, v18, v19, v22);
    v25 = v33;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v13, 1, v30, v31, v24, v23, v32);
    (*(v10 + 8))(v13, v23);
    if (v25)
    {
      v35;
      return;
    }

    v16;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v7);
    v27 = v34;
    (*(v10 + 32))(v15, a1, v34);
    v35 = *v7;
    *v7 = 0x8000000000000000;
    v28 = type metadata accessor for _NativeDictionary(0, v18, v19, *(a4 + 32));
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v15, isUniquelyReferenced_nonNull_native, v30, v31, v28, v27, v32);
    (*(v10 + 8))(v15, v27);
  }

  *v7 = v35;
}

void Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, void *a4)
{
  v8 = swift_allocObject(&unk_1EEEADDE0, 0x28, 7uLL);
  v9 = a4[2];
  v10 = a4[3];
  v8[2] = v9;
  v8[3] = v10;
  v11 = a4[4];
  v8[4] = v11;
  v12 = swift_allocObject(&unk_1EEEADE08, 0x38, 7uLL);
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  v12[5] = partial apply for closure #1 in Dictionary.merge(_:uniquingKeysWith:);
  v12[6] = v8;
  v21[0] = a1;
  v21[1] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B);
  v21[2] = v12;
  v13 = type metadata accessor for Dictionary._Variant(0, v9, v10, v11);
  swift_getTupleTypeMetadata2(255, v9, v10, 0, 0);
  v15 = v14;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], a4, v16);
  v18 = type metadata accessor for LazyMapSequence(0, a4, v15, WitnessTable);
  v20 = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v18, v19);
  Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v21, a2, a3, v13, v18, v20);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_getTupleTypeMetadata2(0, a3, a4, "key value ", 0);
  v11 = *(v10 + 48);
  swift_getTupleTypeMetadata2(0, a3, a4, 0, 0);
  return a2(a5, a5 + *(v12 + 48), a1, a1 + v11);
}

atomic_ullong *LazySequenceProtocol.map<A>(_:)@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

unint64_t Dictionary.merging<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for Dictionary._Variant(0, a5, a6, a8);
  Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, v14, a7, a9);
  if (v9)
  {
    a4;
  }

  return a4;
}

void Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v14 = swift_allocObject(&unk_1EEEADE30, 0x28, 7uLL);
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v15 = swift_allocObject(&unk_1EEEADE58, 0x38, 7uLL);
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = closure #1 in Dictionary.merge(_:uniquingKeysWith:)partial apply;
  v15[6] = v14;
  v25[0] = a1;
  v25[1] = thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)partial apply;
  v25[2] = v15;
  v16 = type metadata accessor for Dictionary._Variant(0, a5, a6, a7);
  v17 = type metadata accessor for Dictionary(255, a5, a6, a7);
  swift_getTupleTypeMetadata2(255, a5, a6, 0, 0);
  v19 = v18;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], v17, v20);
  v22 = type metadata accessor for LazyMapSequence(0, v17, v19, WitnessTable);
  v24 = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v22, v23);
  Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v25, a2, a3, v16, v22, v24);
  if (v7)
  {
    v26;
  }
}

void Dictionary.remove(at:)(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v11 = type metadata accessor for Dictionary._Variant(0, a6[2], a6[3], a6[4]);

  Dictionary._Variant.remove(at:)(a1, a2, a3, a4, a5 & 1, v11);
}

void Dictionary._Variant.remove(at:)(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v29 = a2;
  v30 = a4;
  v28 = a1;
  v11 = *(a6 + 16);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = *(v16 + 24);
  if ((*v6 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v6);
    v19 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v31 = v19;
      *v7 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v11, v17, *(a6 + 32));
      _NativeDictionary.copy()();
      v19 = v31;
      *v7 = v31;
    }

    v19;
    if (a5)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (a3 < 0 || 1 << *(v19 + 32) <= a3 || ((*(v19 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0 || *(v19 + 36) != v30)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v15 < 0)
  {
    v18 = *v6;
  }

  else
  {
    v18 = (v15 & 0xFFFFFFFFFFFFFF8);
  }

  v15;
  v19 = _NativeDictionary.init(_:capacity:)(v18, [v18 count], v11, v17, *(a6 + 32));
  v19;
  v15;
  if ((a5 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (a3 >= 0)
  {
    v20 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v20 = a3;
  }

  v21 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v20, v21))
  {
    goto LABEL_25;
  }

  if (*(v19 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v20 + 16)))
  {
    goto LABEL_23;
  }

  if (!swift_dynamicCastClass(v20, v21))
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v20 + 24);
  if (*(v22 + 16) <= v30)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = *(v22 + 8 * v30 + 24);
  v24 = swift_unknownObjectRetain(v23);
  _forceBridgeFromObjectiveC<A>(_:_:)(v24, v11, v25, v14);
  swift_unknownObjectRelease(v23);
  a3 = __RawDictionaryStorage.find<A>(_:)(v14, v11, *(a6 + 32));
  LOBYTE(v23) = v26;
  (*(v12 + 8))(v14, v11);
  if ((v23 & 1) == 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_22:
  v19;
  *v7 = 0x8000000000000000;
  (*(v12 + 32))(v28, *(v19 + 48) + *(v12 + 72) * a3, v11);
  (*(*(v17 - 1) + 4))(v29, *(v19 + 56) + *(*(v17 - 1) + 9) * a3, v17);
  _NativeDictionary._delete(at:)(a3);
  *v7 = v19;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  v8 = *v2;
  v12 = *v3;
  *v3 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v12;
  }

  *(*(v8 + 48) + 16 * v6 + 8);
  v9 = *(*(v8 + 56) + 16 * v6);
  v10.offset = v6;
  specialized _NativeDictionary._delete(at:)(v10, v8);
  *v3 = v8;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v10 = *v3;
    v15 = *v4;
    *v4 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v15;
    }

    *(*(v10 + 48) + 16 * v8 + 8);
    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    v13.offset = v8;
    specialized _NativeDictionary._delete(at:)(v13, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v10 = *v3;
    v13 = *v4;
    *v4 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v13;
    }

    *(*(v10 + 48) + 16 * v8 + 8);
    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    v11.offset = v8;
    specialized _NativeDictionary._delete(at:)(v11, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v9 = *v2;
    v12 = *v3;
    *v3 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v12;
    }

    outlined destroy of AnyHashable((*(v9 + 48) + 40 * v7));
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    v10.offset = v7;
    specialized _NativeDictionary._delete(at:)(v10, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}