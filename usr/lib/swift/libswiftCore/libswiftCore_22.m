uint64_t _ss12_ArrayBufferV017withUnsafeMutableB7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMglrzo_Tpq5(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a3 + 16);
  v7 = Array._baseAddressIfContiguous.getter(*v3, v6);
  if (_swift_isClassOrObjCExistentialType(v6, v6) && (v5 < 0 || (v5 & 0x4000000000000000) != 0))
  {
    if (v5 < 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    v14 = [v13 count];
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_16:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = v14;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v6, v6);
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v9 = v5;
    }

    v10 = *(v9 + 16);
  }

  if (v10)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_16;
  }

  return a1(v7);
}

uint64_t _ss12_ArrayBufferV017withUnsafeMutableB7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v7;
  v14 = *(v13 + 16);
  v15 = Array._baseAddressIfContiguous.getter(*v7, v14);
  if (_swift_isClassOrObjCExistentialType(v14, v14) && (v12 < 0 || (v12 & 0x4000000000000000) != 0))
  {
    if (v12 < 0)
    {
      v22 = v12;
    }

    else
    {
      v22 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    v23 = [v22 count];
    if ((v23 & 0x8000000000000000) != 0)
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = v23;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v14, v14);
    v17 = v12 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v17 = v12;
    }

    v18 = *(v17 + 16);
  }

  if (v18)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = v26;
  result = v25(v15);
  if (v20)
  {
    return (*(v9 + 32))(v24, v11, a5);
  }

  return result;
}

BOOL _ArrayBuffer.count.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = _swift_isClassOrObjCExistentialType(*(a2 + 16), *(a2 + 16));
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!result)
  {
    v6 = v4;
  }

  *(v6 + 16) = a1;
  return result;
}

BOOL (*protocol witness for _ArrayBufferProtocol.count.modify in conformance _ArrayBuffer<A>(void *a1, uint64_t a2))(uint64_t *a1)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  a1[1] = v4;
  a1[2] = v5;
  if (_swift_isClassOrObjCExistentialType(v5, v5) && (v4 < 0 || (v4 & 0x4000000000000000) != 0))
  {
    v10 = _ArrayBuffer._nonNative.getter(v4);
    v8 = [v10 count];
    swift_unknownObjectRelease(v10);
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v5, v5);
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v7 = v4;
    }

    v8 = *(v7 + 16);
  }

  *a1 = v8;
  return protocol witness for _ArrayBufferProtocol.count.modify in conformance _ArrayBuffer<A>;
}

BOOL protocol witness for _ArrayBufferProtocol.count.modify in conformance _ArrayBuffer<A>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  result = _swift_isClassOrObjCExistentialType(a1[2], a1[2]);
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!result)
  {
    v4 = v1;
  }

  *(v4 + 16) = v2;
  return result;
}

BOOL (*_ArrayBuffer.count.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  a1[1] = v4;
  a1[2] = v5;
  if (_swift_isClassOrObjCExistentialType(v5, v5) && (v4 < 0 || (v4 & 0x4000000000000000) != 0))
  {
    if (v4 < 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = (v4 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = [v10 count];
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v5, v5);
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v7 = v4;
    }

    v8 = *(v7 + 16);
  }

  *a1 = v8;
  return protocol witness for _ArrayBufferProtocol.count.modify in conformance _ArrayBuffer<A>;
}

id _ArrayBuffer.capacity.getter(uint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (a1 < 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    return [v7 count];
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v5 = a1;
    }

    return (*(v5 + 24) >> 1);
  }
}

id protocol witness for _ArrayBufferProtocol.owner.getter in conformance _ArrayBuffer<A>(uint64_t a1)
{
  v2 = specialized _ArrayBuffer.owner.getter(*v1, *(a1 + 16));

  return swift_unknownObjectRetain(v2);
}

id _ArrayBuffer.owner.getter(uint64_t a1, uint64_t *a2)
{
  v2 = specialized _ArrayBuffer.owner.getter(a1, a2);

  return swift_unknownObjectRetain(v2);
}

uint64_t _ArrayBuffer.identity.getter(uint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2) && a1 >> 62)
  {
    if (a1 < 0)
    {
      return a1;
    }

    else
    {
      return a1 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v6 = a1;
    }

    return v6 + ((*(*(a2 - 1) + 80) + 32) & ~*(*(a2 - 1) + 80));
  }
}

void _ArrayBuffer.subscript.setter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CollectionOfOne(0, a4, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_swift_isClassOrObjCExistentialType(a4, a4) && ((a3 & 0x8000000000000000) != 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = a3;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a2)
    {
      (*(v12 + 32))(v11, a1, a4);
      v19 = type metadata accessor for _ArrayBuffer(0, a4, v17, v18);
      a3;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v19, v20);
      v23 = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v8, v22);
      _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a2, a2 + 1, 1, v11, v19, v8, WitnessTable, v23);
      v25;
      return;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4))
  {
    v15 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v15 = a3;
  }

  (*(v12 + 32))(v14, a1, a4);
  v16 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a2;
  (*(v12 + 16))(a1, v16, a4);
  (*(v12 + 8))(a1, a4);
  (*(v12 + 40))(v16, v14, a4);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _ArrayBuffer<A>(void *a1, unint64_t *a2, uint64_t a3))(uint64_t ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x30, 0x78C3uLL);
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *v7 = v9;
  v10 = *(v9 - 1);
  v7[1] = v10;
  v11 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[2] = swift_coroFrameAlloc(v11, 0x78C3uLL);
    v12 = swift_coroFrameAlloc(v11, 0x78C3uLL);
  }

  else
  {
    v7[2] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v14 = *a2;
  v8[3] = v13;
  v8[4] = v14;
  v15 = *v3;
  v8[5] = *v3;
  _ArrayBuffer.subscript.getter(v14, v15, v9, v13);
  return protocol witness for MutableCollection.subscript.modify in conformance _ArrayBuffer<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _ArrayBuffer<A>(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v7 = *v2;
    v8 = v2[1];
    (v8[2])((*a1)[2], v6, *v2);
    _ArrayBuffer.subscript.setter(v5, v4, v3, v7);
    (v8[1])(v6, v7);
  }

  else
  {
    _ArrayBuffer.subscript.setter((*a1)[3], v4, v3, *v2);
  }

  free(v6);
  free(v5);

  free(v2);
}

void (*_ArrayBuffer.subscript.modify(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4))(uint64_t *a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x30, 0xA81DuLL);
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = a2;
  v10 = *(a4 - 1);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[4] = swift_coroFrameAlloc(v11, 0xA81DuLL);
    v12 = swift_coroFrameAlloc(v11, 0xA81DuLL);
  }

  else
  {
    v8[4] = malloc(v11);
    v12 = malloc(v11);
  }

  v9[5] = v12;
  _ArrayBuffer.subscript.getter(a2, a3, a4, v12);
  return _ArrayBuffer.subscript.modify;
}

void _ArrayBuffer.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *v2;
    v7 = *(v2 + 8);
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    _ArrayBuffer.subscript.setter(v3, v8, v7, v5);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    _ArrayBuffer.subscript.setter(*(*a1 + 40), *v2, *(v2 + 8), *(v2 + 16));
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _ArrayBuffer<A>(uint64_t *a1, uint64_t *a2, uint64_t a3))(id *a1, char a2)
{
  *a1 = _ArrayBuffer.subscript.getter(*a2, a2[1], *v3, *(a3 + 16));
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return protocol witness for MutableCollection.subscript.modify in conformance _ArrayBuffer<A>;
}

void (*_ArrayBuffer.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(id *a1, char a2)
{
  *a1 = _ArrayBuffer.subscript.getter(a2, a3, *v4, *(a4 + 16));
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return protocol witness for MutableCollection.subscript.modify in conformance _ArrayBuffer<A>;
}

void *MutableCollection<>.partition(by:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a6;
  v11 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v11, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v28 = a2;
  v16 = v22;
  result = (*(a5 + 80))(&v29, partial apply for closure #1 in MutableCollection<>.partition(by:), v23, &type metadata for Int, a3, a5);
  if (!v16)
  {
    if (v30)
    {
      return MutableCollection<>._partitionImpl(by:)(a1, a2, a3, a4, a5, v21);
    }

    else
    {
      v18 = v29;
      (*(v11 + 64))(a3, v11);
      (*(a4 + 48))(v15, v18, a3, a4);
      return (*(v20 + 8))(v15, v13);
    }
  }

  return result;
}

uint64_t specialized MutableCollection.swapAt(_:_:)(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = 8 * (result & 7);
    if (result >= 8)
    {
      v6 = v2[1];
    }

    else
    {
      v6 = *v2;
    }

    v7 = v6 >> v5;
    if (a2 >= 8)
    {
      v8 = v2[1];
    }

    else
    {
      v8 = *v2;
    }

    v9 = 8 * (a2 & 7);
    v10 = v8 >> v9;
    v11 = (-255 << v5) - 1;
    v12 = v10 << v5;
    if (result > 7)
    {
      v4 = v12 | v4 & v11;
      v2[1] = v4;
    }

    else
    {
      v3 = v12 | v3 & v11;
      *v2 = v3;
    }

    v13 = v7 << v9;
    if (a2 >= 8)
    {
      v3 = v4;
    }

    v2[a2 > 7] = v3 & ((-255 << v9) - 1) | v13;
  }

  return result;
}

uint64_t MutableCollection.swapAt(_:_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v28 - v12;
  swift_getAssociatedTypeWitness(0, *(v8 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v33 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v28 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v19 = a1;
  result = (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, v10);
  if ((result & 1) == 0)
  {
    v32 = a2;
    v29 = *(v8 + 80);
    v21 = v29(v37, a1, a3, v8);
    v31 = a4;
    v28 = *(v14 + 16);
    v28(v36);
    v21(v37, 0);
    v22 = *(v11 + 16);
    v30 = v11 + 16;
    v23 = v34;
    v22(v34, v19, v10);
    v24 = v29(v37, v32, a3, v8);
    v25 = v33;
    v28(v33);
    v24(v37, 0);
    v26 = v31;
    v27 = *(v31 + 24);
    v27(v25, v23, a3, v31);
    v22(v23, v32, v10);
    return (v27)(v36, v23, a3, v26);
  }

  return result;
}

uint64_t MutableCollection._withUnsafeMutableBufferPointerIfSupported<A>(_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  return (*(*(a1 - 8) + 56))(a2, 1, 1);
}

{
  return MutableCollection.withContiguousMutableStorageIfAvailable<A>(_:)(a1, a2);
}

unint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    return result;
  }

  if (HIWORD(a3))
  {
    if (result < 3)
    {
      return result;
    }

LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result > 1)
  {
    goto LABEL_6;
  }

  return result;
}

{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    return result;
  }

  if (a3 >= 0x80)
  {
    if (a3 >= 0x800)
    {
      if (HIWORD(a3))
      {
        if (result <= 4)
        {
          return result;
        }
      }

      else if (result <= 3)
      {
        return result;
      }

LABEL_7:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (result > v5)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, id a3)
{
  v3 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = [a3 count];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if (v3 > v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v3;
}

unint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
  }

  else if (result > (HIBYTE(a4) & 0xF))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
    return result;
  }

  if (!a3)
  {
    if (!result)
    {
      return result;
    }

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < 0 || a4 - a3 < result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t RandomAccessCollection<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a1;
  v10 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness(0, v10, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v24 = *(a5 + 8);
  v25 = type metadata accessor for ClosedRange(0, v12, v24, v18);
  v19 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v21 = &v23 - v20;
  v27 = a2;
  (*(a5 + 48))(&v27, v12, a5);
  (*(v10 + 64))(a3, v10);
  (*(v10 + 72))(a3, v10);
  ClosedRange.init(uncheckedBounds:)(v17, v15, v12, v24, v21);
  (*(v10 + 168))(a6, v21, a3, v10);
  return (*(v19 + 8))(v21, v25);
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unsigned int a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a1)
  {
    if (!a4)
    {
      goto LABEL_27;
    }

    v4 = a4;
    while (v4 != a1)
    {
      v10 = v4 > 0xFF;
      v4 >>= 8;
      if (!v10)
      {
        goto LABEL_27;
      }
    }
  }

  if (a3)
  {
    if (!a4)
    {
      goto LABEL_27;
    }

    v5 = a4;
    while (v5 != a3)
    {
      v10 = v5 > 0xFF;
      v5 >>= 8;
      if (!v10)
      {
        goto LABEL_27;
      }
    }
  }

  v6 = __clz(a1);
  v7 = (v6 - __clz(a3)) >> 3;
  if (a2 < 1)
  {
    v10 = v7 > 0 || v7 <= a2;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v7 < 0 || v7 >= a2)
  {
LABEL_22:
    if (a4)
    {
      if (a1)
      {
        v11 = a4;
        while (v11 != a1)
        {
          v10 = v11 > 0xFF;
          v11 >>= 8;
          if (!v10)
          {
            goto LABEL_27;
          }
        }
      }
    }

    else if (a1)
    {
      goto LABEL_27;
    }

    v12 = __clz(a4);
    v13 = __OFADD__(a2, (v12 - v6) >> 3);
    v14 = a2 + ((v12 - v6) >> 3);
    if (v13)
    {
      __break(1u);
    }

    else if ((v14 & 0x8000000000000000) == 0 && 4 - (v12 >> 3) >= v14)
    {
      v9 = 0;
      v8 = a4 >> (4 * (v14 & 7)) >> (4 * (v14 & 7));
      return v8 | (v9 << 32);
    }

LABEL_27:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_16:
  v8 = 0;
  v9 = 1;
  return v8 | (v9 << 32);
}

uint64_t RandomAccessCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = (*(a5 + 48))(a1, a3, a4, a5);
  if (a2 < 1)
  {
    if (v11 <= 0 && v11 > a2)
    {
      goto LABEL_4;
    }
  }

  else if ((v11 & 0x8000000000000000) == 0 && v11 < a2)
  {
LABEL_4:
    v12 = 1;
    goto LABEL_11;
  }

  (*(a5 + 32))(a1, a2, a4, a5);
  v12 = 0;
LABEL_11:
  swift_getAssociatedTypeWitness(0, *(*(a5 + 8) + 8), a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = *(*(v14 - 8) + 56);

  return v15(a6, v12, 1, v14);
}

unint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = 1;
  if (HIWORD(a3))
  {
    v3 = 2;
  }

  if (a1 < 0 || v3 < a1)
  {
    goto LABEL_9;
  }

  if (!HIWORD(a3))
  {
    if (a2 <= 1)
    {
      return a2 - a1;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 >= 3)
  {
    goto LABEL_9;
  }

  return a2 - a1;
}

unint64_t specialized RandomAccessCollection<>.distance(from:to:)(unint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a3 < 0x80)
  {
    if (a1 <= 1 && a2 < 2)
    {
      return a2 - a1;
    }

LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 >= 0x800)
  {
    if (a3 >= 0x10000)
    {
      if (a1 >= 5 || a2 > 4)
      {
        goto LABEL_15;
      }
    }

    else if (a1 > 3 || a2 > 3)
    {
      goto LABEL_15;
    }
  }

  else if (a1 > 2 || a2 > 2)
  {
    goto LABEL_15;
  }

  return a2 - a1;
}

unint64_t specialized RandomAccessCollection<>.distance(from:to:)(unint64_t a1, unint64_t a2, id a3)
{
  v6 = [a3 count];
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if (v6 < a1)
  {
    goto LABEL_5;
  }

  v7 = [a3 count];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 < a2)
  {
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 - a1;
}

unint64_t specialized RandomAccessCollection<>.distance(from:to:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if (v4 < a1 || v4 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 - a1;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4 - a3;
  }

  else
  {
    v4 = 0;
  }

  if (a1 < 0 || v4 < a1)
  {
    goto LABEL_11;
  }

  if (!a3)
  {
    if (!a2)
    {
      return a2 - a1;
    }

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0 || a4 - a3 < a2)
  {
    goto LABEL_11;
  }

  return a2 - a1;
}

uint64_t RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a2;
  v33 = a1;
  v7 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v32 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v27 = *(a5 + 8);
  v14 = v27;
  v34 = type metadata accessor for ClosedRange(0, v15, v27, v16);
  v29 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v24 - v17;
  v28 = *(v7 + 64);
  v28(a3, v7);
  v26 = *(v7 + 72);
  v24 = v11;
  v26(a3, v7);
  ClosedRange.init(uncheckedBounds:)(v13, v11, v32, v14, v18);
  v25 = *(v7 + 168);
  v25(v33, v18, a3, v7);
  v19 = *(v29 + 8);
  v19(v18, v34);
  v28(a3, v7);
  v20 = v24;
  v26(a3, v7);
  v21 = v32;
  ClosedRange.init(uncheckedBounds:)(v13, v20, v32, v27, v18);
  v22 = v31;
  v25(v31, v18, a3, v7);
  v19(v18, v34);
  (*(v30 + 40))(&v35, v22, v21);
  return v35;
}

Swift::Int protocol witness for Collection.endIndex.getter in conformance _ArrayBuffer<A>@<X0>(Swift::Int *a1@<X8>)
{
  result = Array._getCount()();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>(uint64_t ***a1, unint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x5A73uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = _ArrayBuffer.subscript.read(v7, *a2, *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*specialized _ArrayBuffer.subscript.read(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)(a2, a3);
  }

  else
  {
    v4 = swift_unknownObjectRetain(*(a3 + 8 * a2 + 32));
  }

  *a1 = v4;
  return _ArrayBuffer.subscript.readspecialized ;
}

uint64_t (*_ArrayBuffer.subscript.read(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t *a4))()
{
  v8 = *(a4 - 1);
  *a1 = a4;
  a1[1] = v8;
  v9 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc(v9, 0xA2A7uLL);
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[2] = v10;
  _ArrayBuffer.subscript.getter(a2, a3, a4, v10);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance _ArrayBuffer<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _ArrayBuffer.subscript.getter(*a1, a1[1], *v3, *(a2 + 16));
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance _ArrayBuffer<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t RandomAccessCollection<>.indices.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v33 = a3;
  v34 = a4;
  v5 = *(*(a2 + 8) + 8);
  swift_getAssociatedTypeWitness(255, v5, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = *(v7 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  (*(v5 + 64))(a1, v5);
  (*(v5 + 72))(a1, v5);
  v22 = *(v33 + 8);
  if (((*(v22 + 24))(v21, v19, v7, v22) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = *(v16 + 32);
  v23(v15, v21, v7);
  v23(&v15[*(v9 + 48)], v19, v7);
  v24 = v32;
  (*(v10 + 16))(v32, v15, v9);
  v25 = *(v9 + 48);
  v33 = v22;
  v23(v34, v24, v7);
  v26 = *(v16 + 8);
  v26(&v24[v25], v7);
  (*(v10 + 32))(v24, v15, v9);
  v27 = *(v9 + 48);
  v29 = type metadata accessor for Range(0, v7, v33, v28);
  v23(&v34[*(v29 + 36)], &v24[v27], v7);
  return (v26)(v24, v7);
}

BOOL _sSlsE7isEmptySbvgSS9UTF16ViewV_Tgq5_0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

uint64_t Collection.isEmpty.getter(const char *a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  (*(a2 + 64))(a1, a2);
  (*(a2 + 72))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v5, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v13 = (*(*(AssociatedConformanceWitness + 8) + 8))(v11, v9, v5);
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  return v13 & 1;
}

id protocol witness for Collection.count.getter in conformance _ArrayBuffer<A>(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  if (_swift_isClassOrObjCExistentialType(v3, v3) && (v2 < 0 || (v2 & 0x4000000000000000) != 0))
  {
    v7 = _ArrayBuffer._nonNative.getter(v2);
    v8 = [v7 count];
    swift_unknownObjectRelease(v7);
    return v8;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v3, v3);
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v5 = v2;
    }

    return *(v5 + 16);
  }
}

id _ArrayBuffer.count.getter(uint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (a1 < 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    return [v7 count];
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v5 = a1;
    }

    return *(v5 + 16);
  }
}

uint64_t Collection._customIndexOfEquatableElement(_:)@<X0>(unint64_t a1@<X1>, int **a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

{
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance _SliceBuffer<A>()
{
  return Collection._failEarlyRangeCheck(_:bounds:)();
}

{
  return Collection._failEarlyRangeCheck(_:bounds:)();
}

uint64_t _sSlsE20_failEarlyRangeCheck_6boundsy5IndexQz_SnyADGtFs16_ValidUTF8BufferV_Tt1gq5(uint64_t result, uint64_t a2)
{
  if (a2 < result || HIDWORD(a2) >= result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t _sSlsE20_failEarlyRangeCheck_6boundsy5IndexQz_SnyADGtFs7UnicodeO6ScalarV9UTF16ViewV_Tt1gq5_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || result >= a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _sSs17UnicodeScalarViewV20_failEarlyRangeCheck_6boundsySS5IndexV_SnyAFGtF_0(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _sSlsE20_failEarlyRangeCheck_6boundsy5IndexQz_SNyADGtFSs_Tt1gq5_0(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (result >> 14 < a2 >> 14 || a3 >> 14 < result >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance _ArrayBuffer<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a2, a3);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

unint64_t specialized RandomAccessCollection<>.index(after:)(unint64_t a1, unsigned int a2)
{
  if (HIWORD(a2))
  {
    if (a1 >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 + 1;
}

{
  if (a2 >= 0x80)
  {
    if (a2 >= 0x800)
    {
      if (HIWORD(a2))
      {
        if (a1 < 4)
        {
          return a1 + 1;
        }
      }

      else if (a1 < 3)
      {
        return a1 + 1;
      }

LABEL_6:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2 <= a1)
  {
    goto LABEL_6;
  }

  return a1 + 1;
}

unint64_t specialized RandomAccessCollection<>.index(after:)(unint64_t a1, id a2)
{
  v3 = [a2 count];
  if ((v3 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v3 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 + 1;
}

unint64_t specialized RandomAccessCollection<>.index(after:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((HIBYTE(a3) & 0xF) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 + 1;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a1 < 0 || a3 - a2 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 + 1;
}

unint64_t specialized RandomAccessCollection<>.index(after:)(unint64_t a1, uint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = a1;
    if (a2 < 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v4 = [v3 count];
    if ((v4 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5 = v4;
    a1 = v2;
    if (v5 <= v2)
    {
LABEL_3:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    goto LABEL_3;
  }

  return a1 + 1;
}

uint64_t RandomAccessCollection<>.index(after:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v23 = a1;
  v24 = a5;
  v7 = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness(0, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *(a4 + 8);
  v17 = type metadata accessor for Range(0, v9, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v22 - v19;
  (*(v7 + 64))(a2, v7);
  (*(v7 + 72))(a2, v7);
  Range.init(uncheckedBounds:)(v14, v12, v9, v15, v20);
  (*(v7 + 160))(v23, v20, a2, v7);
  (*(v18 + 8))(v20, v17);
  v25 = 1;
  return (*(v22 + 48))(&v25, v9);
}

uint64_t Collection.formIndex(after:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  (*(a3 + 184))(v10, a2, a3);
  return (*(v8 + 8))(v10, v7);
}

{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  (*(a3 + 184))(v10, a2, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _ArrayBuffer<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a2, a3);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

unint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, unsigned int a2)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else if (HIWORD(a2))
  {
    if (result >= 2)
    {
      goto LABEL_4;
    }
  }

  else if (result)
  {
LABEL_4:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    return result;
  }

  if (a2 >= 0x80)
  {
    if (a2 >= 0x800)
    {
      if (HIWORD(a2))
      {
        if (result < 4)
        {
          return result;
        }
      }

      else if (result < 3)
      {
        return result;
      }

LABEL_7:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (result >= v4)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, id a2)
{
  v2 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = [a2 count];
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if (v2 >= v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v2;
}

unint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if (result >= (HIBYTE(a3) & 0xF))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if (!a2 || result < 0 || result >= a3 - a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t RandomAccessCollection<>.index(before:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a1;
  v8 = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v22 = *(a4 + 8);
  v23 = type metadata accessor for Range(0, v10, v22, v16);
  v17 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v19 = &v21 - v18;
  v25 = -1;
  (*(a4 + 48))(&v25, v10, a4);
  (*(v8 + 64))(a2, v8);
  (*(v8 + 72))(a2, v8);
  Range.init(uncheckedBounds:)(v15, v13, v10, v22, v19);
  (*(v8 + 160))(a5, v19, a2, v8);
  return (*(v17 + 8))(v19, v23);
}

Swift::String::Index *specialized BidirectionalCollection.formIndex(before:)(Swift::String::Index *result, uint64_t a2, unint64_t a3)
{
  rawBits = result->_rawBits;
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result->_rawBits & 0xC) == 4 << v5)
  {
    v16 = result;
    v17 = a3;
    v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result->_rawBits)._rawBits;
    a3 = v17;
    rawBits = v18._rawBits;
    result = v16;
    if (rawBits < 0x4000)
    {
      goto LABEL_26;
    }
  }

  else if (rawBits < 0x4000)
  {
    goto LABEL_26;
  }

  v6 = HIBYTE(a3) & 0xF;
  v7 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v8 < rawBits >> 14)
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v19 = result;
    v10 = specialized String.UTF16View._foreignIndex(before:)(rawBits);
    result = v19;
    goto LABEL_37;
  }

  v9 = (a3 >> 62) & 1;
  if ((a3 & 0x2000000000000000) == 0)
  {
    LOBYTE(v9) = a2 < 0;
  }

  if (v9)
  {
    v10 = (rawBits & 0xFFFFFFFFFFFF0000) - 65523;
    goto LABEL_37;
  }

  if ((rawBits & 0xC000) != 0)
  {
    v10 = rawBits & 0xFFFFFFFFFFFF0000 | 5;
    goto LABEL_37;
  }

  if (rawBits)
  {
    v11 = rawBits >> 16;
    if ((a3 & 0x2000000000000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v24 = result;
    v20 = a3;
    v21._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
    a3 = v20;
    rawBits = v21._rawBits;
    v7 = a2 & 0xFFFFFFFFFFFFLL;
    result = v24;
    v11 = rawBits >> 16;
    if ((a3 & 0x2000000000000000) == 0)
    {
LABEL_18:
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if (rawBits < 0x10000)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 = result;
        v23 = rawBits;
        v12 = _StringObject.sharedUTF8.getter(a2, a3);
        rawBits = v23;
        result = v24;
        if (v23 < 0x10000)
        {
          goto LABEL_38;
        }
      }

      v13 = v12 - 1;
      v14 = 1;
      v15 = v11;
      do
      {
        if (v11 > v7)
        {
          break;
        }

        if ((v13[v15] & 0xC0) != 0x80)
        {
          goto LABEL_35;
        }

        ++v14;
        --v15;
      }

      while (v15);
LABEL_38:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v25[0] = a2;
  v25[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (rawBits < 0x10000)
  {
    goto LABEL_38;
  }

  v14 = 1;
  v22 = v11 - 1;
  while (1)
  {
    if (v11 - 1 >= v6)
    {
      goto LABEL_38;
    }

    if ((*(v25 + v22) & 0xC0) != 0x80)
    {
      break;
    }

    ++v14;
    if (--v22 == -1)
    {
      goto LABEL_38;
    }
  }

LABEL_35:
  v10 = (rawBits & 0xFFFFFFFFFFFF0000) - 245756;
  if (v14 != 4)
  {
    v10 = ((v11 - v14) << 16) | 5;
  }

LABEL_37:
  result->_rawBits = v10;
  return result;
}

uint64_t BidirectionalCollection.formIndex(before:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, *(a3 + 8), a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  (*(a3 + 32))(v10, a2, a3);
  return (*(v8 + 8))(v10, v7);
}

{
  swift_getAssociatedTypeWitness(0, *(a3 + 8), a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  (*(a3 + 32))(v10, a2, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t _ss12_ArrayBufferVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss12_ArrayBufferVyxGSlsSl5index_8offsetBy07limitedE05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss12_ArrayBufferVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _ArrayBuffer<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

int64_t specialized _ArrayBuffer._copyContents(initializing:)(char *a1, uint64_t a2, int64_t a3)
{
  if (a3 >> 62)
  {
    if (a2 >= 1)
    {
      if (!a1)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = (a3 & 0xFFFFFFFFFFFFFF8);
      }

      a3;
      v8 = _CocoaArrayWrapper._copyContents(initializing:)(a1, a2, v7);
      swift_unknownObjectRelease(v8);
    }
  }

  else if (a2 >= 1)
  {
    if (!a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a3;
    specialized UnsafeMutablePointer.initialize(from:count:)(((a3 & 0xFFFFFFFFFFFFFF8) + 32), v5, a1);
    a3;
  }

  return a3;
}

int64_t _ArrayBuffer._copyContents(initializing:)(char *a1, uint64_t a2, int64_t a3, uint64_t *a4)
{
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    if (a2 >= 1)
    {
      if (!a1)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a3 < 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = (a3 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v10);
      v11 = _CocoaArrayWrapper._copyContents(initializing:)(a1, a2, v10);
      swift_unknownObjectRelease(v11);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v8 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v8 = a3;
    }

    if (a2 > 0)
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v8 + 16) < a2)
      {
        a2 = *(v8 + 16);
      }

      v9 = (*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80);
      a3;
      UnsafeMutablePointer.initialize(from:count:)((v8 + v9), a2, a1, a4);
      a3;
    }
  }

  return a3;
}

Swift::Bool __swiftcall _ArrayBuffer.isUniquelyReferenced()()
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(*(v0 + 16), *(v0 + 16));
  v3 = *v1;
  if (!isClassOrObjCExistentialType)
  {
    return swift_isUniquelyReferenced_nonNull_native(*v1);
  }

  result = 0;
  if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    return swift_isUniquelyReferenced_nonNull_bridgeObject(*v1);
  }

  return result;
}

Swift::Bool __swiftcall _BridgeStorage.isUniquelyReferencedNative()()
{
  result = 0;
  if ((*v0 & 0x8000000000000000) == 0 && (*v0 & 0x4000000000000000) == 0)
  {
    return swift_isUniquelyReferenced_nonNull_bridgeObject(*v0);
  }

  return result;
}

BOOL specialized _ArrayBuffer.beginCOWMutation()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native(*v0);
  *v0 = v1;
  return result;
}

Swift::Bool __swiftcall _ArrayBuffer.beginCOWMutation()()
{
  v2 = *(v0 + 16);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v2, v2);
  v4 = *v1;
  if (isClassOrObjCExistentialType)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v1);
    *v1 = v4;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      v6 = _swift_isClassOrObjCExistentialType(v2, v2);
      v8 = (v4 & 0x4000000000000000) == 0 && v4 >= 0;
      LOBYTE(isUniquelyReferenced_nonNull_bridgeObject) = !v6 || v8;
    }
  }

  else
  {
    LOBYTE(isUniquelyReferenced_nonNull_bridgeObject) = swift_isUniquelyReferenced_nonNull_native(*v1);
    *v1 = v4;
  }

  return isUniquelyReferenced_nonNull_bridgeObject;
}

__objc2_class **_ContiguousArrayBuffer._asCocoaArray()(atomic_ullong *a1, uint64_t *a2, void *a3)
{
  if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
  {
    swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, a3);
  }

  if (!_bridgeInitializedSuccessfully)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _orphanedFoundationSubclassesReparented = 1;
  if (a1[2])
  {
    if (_swift_isClassOrObjCExistentialType(a2, a2))
    {
      v7 = type metadata accessor for _ContiguousArrayStorage(0, a2, v5, v6);
      a1;
      _swift_setClassMetadata(v7, a1);
      a1;
    }

    else
    {
      v8 = type metadata accessor for __StaticArrayStorage();
      if (swift_dynamicCastClass(a1, v8))
      {
        v11 = type metadata accessor for __SwiftDeferredStaticNSArray(0, a2, v9, v10);
      }

      else
      {
        v11 = type metadata accessor for __SwiftDeferredNSArray();
      }

      v12 = swift_allocObject(v11, 0x20, 7uLL);
      v12[2] = 0;
      v12[3] = a1;
      return v12;
    }
  }

  else
  {
    a1;
    return &_swiftEmptyArrayStorage;
  }

  return a1;
}

id _ArrayBuffer._nonNative.getter(uint64_t a1)
{
  v1 = specialized _ArrayBuffer._nonNative.getter(a1);

  return swift_unknownObjectRetain(v1);
}

__objc2_class **specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = [a1 count];
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, v1);
}

uint64_t _ArrayBuffer._consumeAndCreateNew()(uint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v6 = [v8 count];
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v5 = a1;
    }

    v6 = *(v5 + 16);
  }

  return _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, a1, a2);
}

__objc2_class **specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, unint64_t a4)
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
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v8, v7);
  v10 = v9;
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v9 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v9 + 32, a4);
  }

  a4;
  return v10;
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
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV6scalar_AG9_NormDataV04normL0t_Tt1g5(v8, v7);
  v10 = v9;
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v9 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v9 + 32, a4);
  }

  a4;
  return v10;
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
      v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Bool>();
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

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v11 + 32, a4);
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
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
LABEL_15:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v11 + 32);
        *(a4 + 16) = 0;
LABEL_18:
        a4;
        return v11;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v11 + 32, a4);
    goto LABEL_18;
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
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
LABEL_15:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v11 + 32);
        *(a4 + 16) = 0;
LABEL_18:
        a4;
        return v11;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v11 + 32, a4);
    goto LABEL_18;
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
      v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Range<Int>>();
      v11 = swift_allocObject(v10, (16 * v9 + 32), 7uLL);
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 17;
      }

      v11[2] = v8;
      v11[3] = (2 * (v13 >> 4));
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
LABEL_15:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v11 + 32);
        *(a4 + 16) = 0;
LABEL_18:
        a4;
        return v11;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v11 + 32, a4);
    goto LABEL_18;
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
      v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt8>();
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
      v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.UTF8.ValidationError>();
      v11 = swift_allocObject(v10, (24 * v9 + 32), 7uLL);
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v8;
      v11[3] = (2 * ((v12 - 32) / 24));
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

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v11 + 32, a4);
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
      v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int>();
      v11 = swift_allocObject(v10, (8 * v9 + 32), 7uLL);
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v8;
      v11[3] = (2 * (v13 >> 3));
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
LABEL_15:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v11 + 32);
        *(a4 + 16) = 0;
LABEL_18:
        a4;
        return v11;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, v11 + 32, a4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, int64_t a4)
{
  v7 = a4 >> 62;
  if (a4 >> 62)
  {
    if (a4 < 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFF8);
    }

    result = [v16 count];
    if ((a3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (result >= a2)
  {
    a2 = result;
    goto LABEL_9;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    if (2 * result > a2)
    {
      a2 = 2 * result;
    }

LABEL_9:
    if (v7)
    {
      if (a4 < 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = (a4 & 0xFFFFFFFFFFFFFF8);
      }

      v9 = [v10 count];
    }

    else
    {
      v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a2 <= v9)
    {
      a2 = v9;
    }

    if (a2)
    {
      v11 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
      v12 = swift_allocObject(v11, (8 * a2 + 32), 7uLL);
      v13 = _swift_stdlib_malloc_size(v12);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 25;
      }

      v12[2] = v9;
      v12[3] = ((2 * (v14 >> 3)) | 1);
      if (a1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = &_swiftEmptyArrayStorage;
      if (a1)
      {
LABEL_21:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(((a4 & 0xFFFFFFFFFFFFFF8) + 32), v9, v12 + 32);
        *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
LABEL_30:
        a4;
        return v12;
      }
    }

    if (v9 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v7)
    {
      if (a4 < 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = (a4 & 0xFFFFFFFFFFFFFF8);
      }

      specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(0, v9, (v12 + 4), v15);
    }

    else
    {
      specialized UnsafeMutablePointer.initialize(from:count:)(((a4 & 0xFFFFFFFFFFFFFF8) + 32), v9, v12 + 32);
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

{
  v7 = a4 >> 62;
  if (a4 >> 62)
  {
    if (a4 < 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFF8);
    }

    result = [v16 count];
    if ((a3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (result >= a2)
  {
    a2 = result;
    goto LABEL_9;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    if (2 * result > a2)
    {
      a2 = 2 * result;
    }

LABEL_9:
    if (v7)
    {
      if (a4 < 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = (a4 & 0xFFFFFFFFFFFFFF8);
      }

      v9 = [v10 count];
    }

    else
    {
      v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a2 <= v9)
    {
      a2 = v9;
    }

    if (a2)
    {
      v11 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
      v12 = swift_allocObject(v11, (8 * a2 + 32), 7uLL);
      v13 = _swift_stdlib_malloc_size(v12);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 25;
      }

      v12[2] = v9;
      v12[3] = ((2 * (v14 >> 3)) | 1);
      if (a1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = &_swiftEmptyArrayStorage;
      if (a1)
      {
LABEL_21:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(((a4 & 0xFFFFFFFFFFFFFF8) + 32), v9, v12 + 32);
        *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
LABEL_30:
        a4;
        return v12;
      }
    }

    if (v9 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v7)
    {
      if (a4 < 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = (a4 & 0xFFFFFFFFFFFFFF8);
      }

      specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(0, v9, (v12 + 4), v15);
    }

    else
    {
      specialized UnsafeMutablePointer.initialize(from:count:)(((a4 & 0xFFFFFFFFFFFFFF8) + 32), v9, v12 + 32);
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

__objc2_class **specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, unint64_t a4, uint64_t (*a5)(void), void (*a6)(unint64_t, __objc2_class *, __objc2_class **), void (*a7)(void, __objc2_class *, __objc2_class **, unint64_t))
{
  v10 = result;
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    goto LABEL_8;
  }

  v11 = *(a4 + 24);
  v12 = v11 >> 1;
  if ((v11 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v12 + 0x4000000000000000 >= 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v12 = a2;
    }

LABEL_8:
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
      v16 = swift_allocObject(v15, (8 * v14 + 32), 7uLL);
      v17 = _swift_stdlib_malloc_size(v16);
      v18 = v17 - 32;
      if (v17 < 32)
      {
        v18 = v17 - 25;
      }

      v16[2] = v13;
      v16[3] = (2 * (v18 >> 3));
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = &_swiftEmptyArrayStorage;
      if (result)
      {
LABEL_15:
        a6(a4 + 32, v13, v16 + 4);
        *(a4 + 16) = 0;
LABEL_18:
        a4;
        return v16;
      }
    }

    a7(0, v13, v16 + 4, a4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

__objc2_class **specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, unsigned __int8 *a6, uint64_t *a7, unsigned __int8 *a8)
{
  v11 = result;
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_8;
  }

  v12 = *(a4 + 24);
  v13 = v12 >> 1;
  if ((v12 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v13 + 0x4000000000000000 >= 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v13 = a2;
    }

LABEL_8:
    v14 = *(a4 + 16);
    if (v13 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v17 = swift_allocObject(v16, (40 * v15 + 32), 7uLL);
      v18 = _swift_stdlib_malloc_size(v17);
      v17[2] = v14;
      v17[3] = (2 * ((v18 - 32) / 40));
      if (v11)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v14, v17 + 32);
        *(a4 + 16) = 0;
LABEL_16:
        a4;
        return v17;
      }
    }

    else
    {
      v17 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v14, v17 + 32, a4, a7, a8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  result = _ArrayBuffer.capacity.getter(a4, a5);
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v11 = result;
  if (result >= a2)
  {
LABEL_8:
    if (_swift_isClassOrObjCExistentialType(a5, a5) && (a4 < 0 || (a4 & 0x4000000000000000) != 0))
    {
      if (a4 < 0)
      {
        v27 = a4;
      }

      else
      {
        v27 = (a4 & 0xFFFFFFFFFFFFFF8);
      }

      v14 = [v27 count];
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a5, a5);
      v13 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v13 = a4;
      }

      v14 = *(v13 + 16);
    }

    if (v11 <= v14)
    {
      v11 = v14;
    }

    if (v11)
    {
      v15 = getContiguousArrayStorageType<A>(for:)(a5, a5);
      v16 = *(*(a5 - 1) + 72);
      v17 = *(*(a5 - 1) + 80);
      v18 = swift_allocObject(v15, (((v17 + *(v15 + 48)) & ~v17) + v16 * v11), v17 | *(v15 + 52));
      v19 = _swift_stdlib_malloc_size(v18);
      if (!v16 || ((v20 = v19 - ((v17 + 32) & ~v17), v20 == 0x8000000000000000) ? (v21 = v16 == -1) : (v21 = 0), v21))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v22 = v20 / v16;
      v23 = _swift_isClassOrObjCExistentialType(a5, a5);
      v18[2] = v14;
      v18[3] = (v23 | (2 * v22));
      if (a1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = &_swiftEmptyArrayStorage;
      if (a1)
      {
LABEL_23:
        v24 = (*(*(a5 - 1) + 80) + 32) & ~*(*(a5 - 1) + 80);
        if (_swift_isClassOrObjCExistentialType(a5, a5))
        {
          v25 = a4 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v25 = a4;
        }

        UnsafeMutablePointer.moveInitialize(from:count:)((v25 + v24), v14, v18 + v24, a5);
        if (_swift_isClassOrObjCExistentialType(a5, a5))
        {
          v26 = a4 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v26 = a4;
        }

        *(v26 + 16) = 0;
        a4;
        return v18;
      }
    }

    if (v14 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    _ArrayBuffer._copyContents(subRange:initializing:)(0, v14, v18 + ((*(*(a5 - 1) + 80) + 32) & ~*(*(a5 - 1) + 80)), a4, a5);
    return v18;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    if (2 * result <= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 2 * result;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

__objc2_class **_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV6scalar_AG9_NormDataV04normL0t_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarV6scalar_AD9_NormDataV04normH0tGMd, _ss23_ContiguousArrayStorageCys7UnicodeO6ScalarV6scalar_AD9_NormDataV04normH0tGMR);
  v5 = swift_allocObject(v4, (8 * v2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

__objc2_class **_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt8>();
  v5 = swift_allocObject(v4, (v2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return result;
}

__objc2_class **_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt16>();
  v5 = swift_allocObject(v4, (2 * v2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = (v6 - 32 + ((v6 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

__objc2_class **_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int>();
  v5 = swift_allocObject(v4, (8 * v2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

__objc2_class **_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a3(0);
  v6 = swift_allocObject(v5, (16 * v3 + 32), 7uLL);
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

__objc2_class **_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a3(0);
  v6 = swift_allocObject(v5, (4 * v3 + 32), 7uLL);
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

__objc2_class **_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyXl_Tt1gq5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v5 = swift_allocObject(v4, (8 * v2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = (2 * (v10 >> 3)) | 1;
  return result;
}

__objc2_class **_ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = getContiguousArrayStorageType<A>(for:)(a3, a3);
  v7 = *(*(a3 - 1) + 72);
  v8 = *(*(a3 - 1) + 80);
  v9 = swift_allocObject(v6, (((v8 + *(v6 + 48)) & ~v8) + v7 * v3), v8 | *(v6 + 52));
  v10 = _swift_stdlib_malloc_size(v9);
  if (!v7 || ((v11 = v10 - ((v8 + 32) & ~v8), v11 == 0x8000000000000000) ? (v12 = v7 == -1) : (v12 = 0), v12))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = v11 / v7;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a3, a3);
  v9[2] = a1;
  v9[3] = isClassOrObjCExistentialType | (2 * v13);
  return v9;
}

unint64_t _ArrayBuffer.firstElementAddress.getter(uint64_t a1, uint64_t *a2)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v5 = a1;
  }

  return v5 + ((*(*(a2 - 1) + 80) + 32) & ~*(*(a2 - 1) + 80));
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[16 * a2] <= __dst)
  {

    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[4 * a2] <= __dst)
  {

    return memmove(__dst, __src, 4 * a2);
  }

  return __src;
}

{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 8 * a2;
  if (__dst != __src || &__src[v4] <= __dst)
  {

    return memmove(__dst, __src, v4);
  }

  return __src;
}

{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[8 * a2] <= __dst)
  {

    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 32 * a2;
  if (__dst != __src || &__src[v4] <= __dst)
  {

    return memmove(__dst, __src, v4);
  }

  return __src;
}

{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[32 * a2] <= __dst)
  {

    return memmove(__dst, __src, 32 * a2);
  }

  return __src;
}

{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[24 * a2] <= __dst)
  {

    return memmove(__dst, __src, 24 * a2);
  }

  return __src;
}

{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[40 * a2] <= __dst)
  {

    return memmove(__dst, __src, 40 * a2);
  }

  return __src;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, size_t __len, char *__dst)
{
  if ((__len & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[__len] <= __dst)
  {

    return memmove(__dst, __src, __len);
  }

  return __src;
}

{
  if ((__len & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst != __src || &__src[__len] <= __dst)
  {

    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst, unint64_t *a4)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__dst < __src || &__src[*(*(a4 - 1) + 72) * a2] <= __dst)
  {

    return swift_arrayInitWithTakeFrontToBack(__dst, __src, a2, a4);
  }

  else if (__dst != __src)
  {

    return swift_arrayInitWithTakeBackToFront(__dst, __src, a2, a4);
  }

  return __src;
}

Swift::Void __swiftcall _ArrayBuffer._typeCheckSlowPath(_:)(Swift::Int a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v2 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = (&v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v148 - v10);
  if (_swift_isClassOrObjCExistentialType(v12, v12) && (v4 < 0 || (v4 & 0x4000000000000000) != 0))
  {
    if (v4 < 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = (v4 & 0xFFFFFFFFFFFFFF8);
    }

    v15 = [v14 objectAtIndex_];
    v148._countAndFlagsBits = v15;
    swift_unknownObjectRetain(v15);
    if (swift_dynamicCast(v9, &v148, qword_1EEEAC710, v3, 6uLL))
    {
      swift_unknownObjectRelease(v15);
      (*(v6 + 8))(v9, v3);
      return;
    }

    v148._countAndFlagsBits = _StringGuts.init(_initialCapacity:)(85);
    v148._object = v121;
    v122._countAndFlagsBits = 0xD000000000000046;
    v122._object = (0x800000018066B290 | 0x8000000000000000);
    String.write(_:)(v122);
    0x800000018066B290 | 0x8000000000000000;
    TypeName = swift_getTypeName(v3, 0);
    if ((v124 & 0x8000000000000000) == 0)
    {
      v125 = TypeName;
      v126 = v124;
      v127 = validateUTF8(_:)(TypeName, v124);
      v131 = v127 < 0 ? repairUTF8(_:firstKnownBrokenRange:)(v125, v126, v128, v129) : specialized static String._uncheckedFromUTF8(_:isASCII:)(v125, v126, v127 & 1, v130);
      v133 = v132;
      String.write(_:)(*&v131);
      v133;
      v134 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1);
      object = v134._object;
      String.write(_:)(v134);
      object;
      ObjectType = swift_getObjectType(v15);
      v137 = swift_getTypeName(ObjectType, 0);
      if ((v138 & 0x8000000000000000) == 0)
      {
        v139 = v137;
        v140 = v138;
        v141 = validateUTF8(_:)(v137, v138);
        if (v141 < 0)
        {
          v145 = repairUTF8(_:firstKnownBrokenRange:)(v139, v140, v142, v143);
        }

        else
        {
          v145 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v139, v140, v141 & 1, v144);
        }

        v147 = v146;
        String.write(_:)(*&v145);
        v147;
        _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v148._countAndFlagsBits, v148._object, 0);
      }
    }

    goto LABEL_91;
  }

  v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v148._countAndFlagsBits = v13;
  swift_unknownObjectRetain(v13);
  if (!swift_dynamicCast(v11, &v148, qword_1EEEAC710, v3, 6uLL))
  {
    v16 = _StringGuts.init(_initialCapacity:)(82);
    v26 = v17;
    v148._countAndFlagsBits = v16;
    v148._object = v17;
    v27 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v27 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v27 || (v16 & ~v17 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066B200 & 0x2000000000000000 & v17) != 0 && (v28 = specialized _SmallString.init(_:appending:)(v16, v17, 0xD000000000000043, 0x800000018066B200 | 0x8000000000000000), (v30 & 1) == 0))
      {
        v32 = v28;
        v33 = v29;
        v26;
        0x800000018066B200 | 0x8000000000000000;
        v148._countAndFlagsBits = v32;
        v148._object = v33;
      }

      else
      {
        if ((0x800000018066B200 & 0x2000000000000000) != 0)
        {
          v31 = (0x800000018066B200 >> 56) & 0xF;
        }

        else
        {
          v31 = 67;
        }

        _StringGuts.append(_:)(0xD000000000000043, 0x800000018066B200 | 0x8000000000000000, 0, v31, v18, v19, v20, v21, v22, v23, v24, v25);
        0x800000018066B200 | 0x8000000000000000;
      }
    }

    else
    {
      v17;
      v148._countAndFlagsBits = 0xD000000000000043;
      v148._object = (0x800000018066B200 | 0x8000000000000000);
    }

    v34 = swift_getTypeName(v3, 0);
    if (v35 < 0)
    {
      goto LABEL_91;
    }

    v36 = v34;
    v37 = v35;
    v38 = validateUTF8(_:)(v34, v35);
    if (v38 < 0)
    {
      v42 = repairUTF8(_:firstKnownBrokenRange:)(v36, v37, v39, v40);
    }

    else
    {
      v42 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v36, v37, v38 & 1, v41);
    }

    v52 = v42;
    v53 = v43;
    v54 = v148._object;
    v55 = (v148._object >> 56) & 0xF;
    if ((v148._object & 0x2000000000000000) == 0)
    {
      v55 = v148._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v55 && (v148._countAndFlagsBits & ~v148._object & 0x2000000000000000) == 0)
    {
      v148._object;
      v148._countAndFlagsBits = v52;
      v148._object = v53;
      goto LABEL_41;
    }

    if ((v148._object & 0x2000000000000000) != 0)
    {
      if ((v43 & 0x2000000000000000) != 0)
      {
        v57 = specialized _SmallString.init(_:appending:)(v148._countAndFlagsBits, v148._object, v42, v43);
        if ((v59 & 1) == 0)
        {
          v115 = v57;
          v116 = v58;
          v54;
          v53;
          v148._countAndFlagsBits = v115;
          v148._object = v116;
          v53 = v116;
          v52 = v115;
LABEL_41:
          v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1);
          v69 = HIBYTE(v53) & 0xF;
          if ((v53 & 0x2000000000000000) == 0)
          {
            v69 = v52 & 0xFFFFFFFFFFFFLL;
          }

          if (!v69 && (v52 & ~v53 & 0x2000000000000000) == 0)
          {
            v53;
            v148 = v68;
            goto LABEL_54;
          }

          if ((v53 & 0x2000000000000000) != 0)
          {
            if ((v68._object & 0x2000000000000000) != 0)
            {
              v71 = specialized _SmallString.init(_:appending:)(v52, v53, v68._countAndFlagsBits, v68._object);
              if ((v73 & 1) == 0)
              {
                v117 = v71;
                v118 = v72;
                v53;
                v68._object;
                v148._countAndFlagsBits = v117;
                v148._object = v118;
LABEL_54:
                v74 = swift_getObjectType(v13);
                v75 = swift_getTypeName(v74, 0);
                if ((v76 & 0x8000000000000000) == 0)
                {
                  v77 = v75;
                  v78 = v76;
                  v79 = validateUTF8(_:)(v75, v76);
                  if (v79 < 0)
                  {
                    v83 = repairUTF8(_:firstKnownBrokenRange:)(v77, v78, v80, v81);
                  }

                  else
                  {
                    v83 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v77, v78, v79 & 1, v82);
                  }

                  v93 = v83;
                  v94 = v84;
                  v95 = v148._object;
                  v96 = (v148._object >> 56) & 0xF;
                  if ((v148._object & 0x2000000000000000) == 0)
                  {
                    v96 = v148._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v96 && (v148._countAndFlagsBits & ~v148._object & 0x2000000000000000) == 0)
                  {
                    v148._object;
                    v148._countAndFlagsBits = v93;
                    v148._object = v94;
                    goto LABEL_71;
                  }

                  if ((v148._object & 0x2000000000000000) != 0)
                  {
                    if ((v84 & 0x2000000000000000) != 0)
                    {
                      v106 = specialized _SmallString.init(_:appending:)(v148._countAndFlagsBits, v148._object, v83, v84);
                      if ((v108 & 1) == 0)
                      {
                        v119 = v106;
                        v120 = v107;
                        v95;
                        v94;
                        v148._countAndFlagsBits = v119;
                        v148._object = v120;
                        v94 = v120;
                        v93 = v119;
LABEL_71:
                        v109 = HIBYTE(v94) & 0xF;
                        if ((v94 & 0x2000000000000000) == 0)
                        {
                          v109 = v93 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v109 || (v93 & ~v94 & 0x2000000000000000) != 0)
                        {
                          if ((v94 & 0x2000000000000000) != 0 && (v112 = specialized _SmallString.init(_:appending:)(v93, v94, 0, 0xE000000000000000), (v114 & 1) == 0))
                          {
                            countAndFlagsBits = v112;
                            v111 = v113;
                            v94;
                            0xE000000000000000;
                          }

                          else
                          {
                            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v97, v98, v99, v100, v101, v102, v103, v104);
                            0xE000000000000000;
                            countAndFlagsBits = v148._countAndFlagsBits;
                            v111 = v148._object;
                          }
                        }

                        else
                        {
                          v94;
                          countAndFlagsBits = 0;
                          v111 = 0xE000000000000000;
                        }

                        _assertionFailure(_:_:flags:)("Fatal error", 11, 2, countAndFlagsBits, v111, 0);
                      }

                      goto LABEL_69;
                    }
                  }

                  else if ((v84 & 0x2000000000000000) != 0)
                  {
LABEL_69:
                    v105 = HIBYTE(v94) & 0xF;
                    goto LABEL_70;
                  }

                  v105 = v83 & 0xFFFFFFFFFFFFLL;
LABEL_70:
                  _StringGuts.append(_:)(v93, v94, 0, v105, v85, v86, v87, v88, v89, v90, v91, v92);
                  v94;
                  v93 = v148._countAndFlagsBits;
                  v94 = v148._object;
                  goto LABEL_71;
                }

LABEL_91:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              goto LABEL_52;
            }
          }

          else if ((v68._object & 0x2000000000000000) != 0)
          {
LABEL_52:
            v70 = (v68._object >> 56) & 0xF;
            goto LABEL_53;
          }

          v70 = v68._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_53:
          _StringGuts.append(_:)(v68._countAndFlagsBits, v68._object, 0, v70, v60, v61, v62, v63, v64, v65, v66, v67);
          v68._object;
          goto LABEL_54;
        }

        goto LABEL_39;
      }
    }

    else if ((v43 & 0x2000000000000000) != 0)
    {
LABEL_39:
      v56 = HIBYTE(v53) & 0xF;
      goto LABEL_40;
    }

    v56 = v42 & 0xFFFFFFFFFFFFLL;
LABEL_40:
    _StringGuts.append(_:)(v52, v53, 0, v56, v44, v45, v46, v47, v48, v49, v50, v51);
    v53;
    v52 = v148._countAndFlagsBits;
    v53 = v148._object;
    goto LABEL_41;
  }

  (*(v6 + 8))(v11, v3);
}

Swift::DefaultStringInterpolation __swiftcall DefaultStringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  if (interpolationCount + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = __OFADD__(literalCapacity, 2 * interpolationCount);
  literalCapacity += 2 * interpolationCount;
  if (v2)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  literalCapacity = _StringGuts.init(_initialCapacity:)(literalCapacity);
LABEL_6:
  result._storage._object = interpolationCount;
  result._storage._countAndFlagsBits = literalCapacity;
  return result;
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  if ((utf8CodeUnitCount & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (utf8CodeUnitCount)
  {
    if (utf8CodeUnitCount <= 0xF)
    {
      v7 = utf8CodeUnitCount - 8;
      v8 = 8;
      if (utf8CodeUnitCount < 8)
      {
        v8 = utf8CodeUnitCount;
      }

      v9 = v8 - 1;
      if (utf8CodeUnitCount < v8 - 1)
      {
        v9 = utf8CodeUnitCount;
      }

      if (v8 == v9)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v5 = *_builtinStringLiteral;
      if (utf8CodeUnitCount != 1)
      {
        v5 |= *(_builtinStringLiteral + 1) << 8;
        if (utf8CodeUnitCount != 2)
        {
          v5 |= *(_builtinStringLiteral + 2) << 16;
          if (utf8CodeUnitCount != 3)
          {
            v5 |= *(_builtinStringLiteral + 3) << 24;
            if (utf8CodeUnitCount != 4)
            {
              v5 |= *(_builtinStringLiteral + 4) << 32;
              if (utf8CodeUnitCount != 5)
              {
                v5 |= *(_builtinStringLiteral + 5) << 40;
                if (utf8CodeUnitCount != 6)
                {
                  v5 |= *(_builtinStringLiteral + 6) << 48;
                  if (utf8CodeUnitCount != 7)
                  {
                    v5 |= *(_builtinStringLiteral + 7) << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (utf8CodeUnitCount < 9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = _builtinStringLiteral + 8;
        do
        {
          v13 = *v12++;
          v10 |= v13 << v11;
          v11 += 8;
          --v7;
        }

        while (v7);
      }

      v14 = 0xA000000000000000;
      if (((v10 | v5) & 0x8080808080808080) == 0)
      {
        v14 = 0xE000000000000000;
      }

      v6 = (v14 | (utf8CodeUnitCount << 56) | v10);
    }

    else
    {
      v4 = utf8CodeUnitCount | 0xC000000000000000;
      if (!isASCII)
      {
        v4 = utf8CodeUnitCount;
      }

      v5 = v4 | 0x1000000000000000;
      v6 = ((_builtinStringLiteral + 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

void _assertionFailure(_:_:flags:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, int a6)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a1 = _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a1, partial apply for closure #1 in _assertionFailure(_:_:flags:));
    __break(1u);
  }

  else if (!a1)
  {
    goto LABEL_10;
  }

  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  closure #1 in _assertionFailure(_:_:flags:)(a1, a2, a4, a5, a6);
  __break(1u);
  goto LABEL_10;
}

id _CocoaArrayWrapper.subscript.getter(uint64_t a1, id a2)
{
  v2 = [a2 objectAtIndex_];

  return v2;
}

void _ArrayBuffer._typeCheck(_:)(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t *a4)
{
  if (_swift_isClassOrObjCExistentialType(a4, a4) && _swift_isClassOrObjCExistentialType(a4, a4) && (a3 & 0xC000000000000001) != 0 && !swift_dynamicCastMetatype(qword_1EEEAC710, a4))
  {
    if (a2 < a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    for (; a2 != a1; ++a1)
    {
      if (a2 == a1)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      _ArrayBuffer._typeCheckSlowPath(_:)(a1);
    }
  }
}

char *_ContiguousArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t *a5)
{
  v6 = specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, a4, a5);
  a4;
  return v6;
}

uint64_t _CocoaArrayWrapper._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(a1, a2, a3, a4);
  swift_unknownObjectRelease(a4);
  return v5;
}

uint64_t _ContiguousArrayBuffer._copyContents(initializing:)(char *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a2 >= 1)
  {
    if (*(a3 + 16) >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *(a3 + 16);
    }

    if (!a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = (a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)));
    v7 = *(*(a4 - 1) + 72) * v5;
    v8 = &a1[v7];
    v9 = &v6[v7];
    if (v6 < v8 && v9 > a1)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    swift_arrayInitWithCopy(a1, v6, v5, a4);
  }

  return a3;
}

uint64_t IndexingIterator.init(_elements:_position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = *(type metadata accessor for IndexingIterator(0, a3, a4, v9) + 36);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = *(*(v11 - 8) + 32);

  return v12(a5 + v10, a2, v11);
}

uint64_t UnsafeMutableBufferPointer.init(start:count:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0 || a2 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

id _CocoaArrayWrapper._copyContents(initializing:)(uint64_t a1, uint64_t a2, id a3)
{
  if (a2 >= 1)
  {
    if (!a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5 = a2;
    v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, [a3 count], a3);
    if ((v6 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v6 < v5)
    {
      v5 = v6;
    }

    swift_unknownObjectRetain(a3);
    specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(0, v5, a1, a3);
    swift_unknownObjectRelease(a3);
  }

  return a3;
}

uint64_t key path getter for _ArrayBuffer.subscript(_:) : <A>_ArrayBuffer<A>A@<X0>(int64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = _ArrayBuffer.subscript.getter(*a2, a2[1], *a1, *(a2 + a3 - 8));
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

__objc2_class **_CocoaArrayWrapper.subscript.getter(uint64_t a1, uint64_t a2, id a3)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
    v8 = &_swiftEmptyArrayStorage;
    return _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfCyXl_Tt1g5(v8, a1);
  }

  v5 = a3;
  v7 = [a3 count];
  if (v7 < 0)
  {
    goto LABEL_18;
  }

  if (_CocoaArrayWrapper.contiguousStorage(_:)(0, v7, v5))
  {
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    swift_unknownObjectRetain(v5);
    return v5;
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyXl_Tt1gq5Tm(v3, 0);
  if (v3 < 0)
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = result;
  v11 = 0;
  while (1)
  {
    if (v3 == v11)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (__OFADD__(v11, a1))
    {
      break;
    }

    v12 = v11 + 1;
    v13 = &v10[v11];
    result = [v5 objectAtIndex_];
    v13[4] = result;
    v11 = v12;
    if (v3 == v12)
    {
      v8 = v10;
      return _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfCyXl_Tt1g5(v8, a1);
    }
  }

  __break(1u);
  return result;
}

void key path getter for _ArrayBuffer.count : <A>_ArrayBuffer<A>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  if (_swift_isClassOrObjCExistentialType(v5, v5) && (v6 < 0 || (v6 & 0x4000000000000000) != 0))
  {
    v10 = _ArrayBuffer._nonNative.getter(v6);
    v9 = [v10 count];
    swift_unknownObjectRelease(v10);
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v5, v5);
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v8 = v6;
    }

    v9 = *(v8 + 16);
  }

  *a4 = v9;
}

BOOL key path setter for _ArrayBuffer.count : <A>_ArrayBuffer<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for _ArrayBuffer(0, *(a3 + a4 - 8), a3, a4);
  return _ArrayBuffer.count.setter(v4, v5);
}

uint64_t _ArrayBuffer.mutableCount.getter(uint64_t a1, uint64_t *a2)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v4 = a1;
  }

  return *(v4 + 16);
}

BOOL key path getter for _ArrayBuffer.mutableCount : <A>_ArrayBuffer<A>@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  result = _swift_isClassOrObjCExistentialType(*(a2 + a3 - 8), *(a2 + a3 - 8));
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!result)
  {
    v7 = v5;
  }

  *a4 = *(v7 + 16);
  return result;
}

BOOL key path setter for _ArrayBuffer.mutableCount : <A>_ArrayBuffer<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  result = _swift_isClassOrObjCExistentialType(*(a3 + a4 - 8), *(a3 + a4 - 8));
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!result)
  {
    v7 = v5;
  }

  *(v7 + 16) = v4;
  return result;
}

Swift::Void __swiftcall _ArrayBuffer._checkInoutAndNativeBounds(_:wasNative:)(Swift::Int _, Swift::Bool wasNative)
{
  v4 = v3;
  v5 = v2;
  if (_swift_isClassOrObjCExistentialType(v3, v3))
  {
    v8 = (v5 >> 62) & 1;
    if (v5 < 0)
    {
      LODWORD(v8) = 1;
    }

    if (v8 != wasNative)
    {
      if (!wasNative)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!wasNative)
  {
    goto LABEL_13;
  }

LABEL_8:
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
  if (_ < 0)
  {
    goto LABEL_12;
  }

  v10 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v10 = v5;
  }

  if (*(v10 + 16) <= _)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

uint64_t _precondition(_:_:file:line:)(uint64_t (*a1)(void))
{
  result = a1();
  if ((result & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall _ArrayBuffer._checkInoutAndNativeTypeCheckedBounds(_:wasNativeTypeChecked:)(Swift::Int _, Swift::Bool wasNativeTypeChecked)
{
  v4 = v3;
  v5 = v2;
  v6 = wasNativeTypeChecked;
  if (_swift_isClassOrObjCExistentialType(v3, v3))
  {
    if ((((v5 & 0xC000000000000001) != 0) ^ v6))
    {
      if (!v6)
      {
        return;
      }

      goto LABEL_6;
    }

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_6:
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
  if (_ < 0)
  {
    goto LABEL_10;
  }

  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v9 = v5;
  }

  if (*(v9 + 16) <= _)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

unint64_t specialized Collection.count.getter(uint64_t a1, unint64_t a2, void (*a3)(void *__return_ptr, int *))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  v9 = v8;
  if (v6)
  {
    v9 = 15;
    v10._rawBits = 15;
    specialized LazyMapSequence<>.subscript.getter(v10, a1, a2, a3);
  }

  v11._rawBits = v9;
  return specialized FlattenSequence<>.distance(from:to:)(v11, 0, v6 == 0, v8, 0, 1, a1, a2, a3);
}

Swift::String::Index specialized Collection.count.getter(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6._rawBits = v5 | (v4 << 16);
  rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(15)._rawBits;
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(v6)._rawBits;
  result._rawBits = rawBits;
  v10 = rawBits >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
      }

      else
      {
        v14 = result._rawBits >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter(a1, a2);
          }

          v16 = v15[v14];
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result._rawBits = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result._rawBits >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(before:)(result)._rawBits;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result._rawBits >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result._rawBits >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result._rawBits;
            v20 = _StringObject.sharedUTF8.getter(a1, a2);
            result._rawBits = v27;
          }

          v21 = 0;
          v22 = v20 + (result._rawBits >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result._rawBits = (result._rawBits - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result._rawBits >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

uint64_t Collection.count.getter(unint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(a2 + 64))(a1, a2);
  (*(a2 + 72))(a1, a2);
  v12 = (*(a2 + 152))(v11, v9, a1, a2);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  return v12;
}

id specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, uint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v6 = [v5 objectAtIndex_];

    return v6;
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0 || *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);

    return swift_unknownObjectRetain(v3);
  }
}

id _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v184 - v10;
  if (!_swift_isClassOrObjCExistentialType(v12, v12) || !(a2 >> 62))
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a3, a3);
    if ((a1 & 0x8000000000000000) != 0 || (!isClassOrObjCExistentialType ? (v16 = a2) : (v16 = a2 & 0xFFFFFFFFFFFFFF8), *(v16 + 16) <= a1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    v184._countAndFlagsBits = v14;
    swift_unknownObjectRetain_n(v14, 2);
    if (swift_dynamicCast(v11, &v184, &unk_1EEEAC710, a3, 6))
    {
      (*(v6 + 8))(v11, a3);
      return v14;
    }

    v30 = _StringGuts.init(_initialCapacity:)(82);
    v40 = v31;
    v184._countAndFlagsBits = v30;
    v184._object = v31;
    v41 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v41 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v41 || (v30 & ~v31 & 0x2000000000000000) != 0)
    {
      if (("ize with negative count" & 0x2000000000000000 & v31) != 0 && (v46 = specialized _SmallString.init(_:appending:)(v30, v31, 0xD000000000000043, 0x800000018066B200), (v48 & 1) == 0))
      {
        v116 = v46;
        v117 = v47;
        v40;
        v184._countAndFlagsBits = v116;
        v184._object = v117;
      }

      else
      {
        if (("ize with negative count" & 0x2000000000000000) != 0)
        {
          v49 = ("ize with negative count" >> 56) & 0xF;
        }

        else
        {
          v49 = 67;
        }

        _StringGuts.append(_:)(0xD000000000000043, 0x800000018066B200, 0, v49, v32, v33, v34, v35, v36, v37, v38, v39);
      }
    }

    else
    {
      v31;
      v184._countAndFlagsBits = 0xD000000000000043;
      v184._object = 0x800000018066B200;
    }

    TypeName = swift_getTypeName(a3, 0);
    if (v119 < 0)
    {
      goto LABEL_133;
    }

    v120 = TypeName;
    v121 = v119;
    v122 = validateUTF8(_:)(TypeName, v119);
    if (v122 < 0)
    {
      v126 = repairUTF8(_:firstKnownBrokenRange:)(v120, v121, v123, v124);
    }

    else
    {
      v126 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v120, v121, v122 & 1, v125);
    }

    v136 = v126;
    v137 = v127;
    object = v184._object;
    v139 = (v184._object >> 56) & 0xF;
    if ((v184._object & 0x2000000000000000) == 0)
    {
      v139 = v184._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v139 && (v184._countAndFlagsBits & ~v184._object & 0x2000000000000000) == 0)
    {
      v184._object;
      v184._countAndFlagsBits = v136;
      v184._object = v137;
      goto LABEL_97;
    }

    if ((v184._object & 0x2000000000000000) != 0)
    {
      if ((v127 & 0x2000000000000000) != 0)
      {
        v141 = specialized _SmallString.init(_:appending:)(v184._countAndFlagsBits, v184._object, v126, v127);
        if ((v143 & 1) == 0)
        {
          v180 = v141;
          v181 = v142;
          v137;
          object;
          v184._countAndFlagsBits = v180;
          v184._object = v181;
          v137 = v181;
          v136 = v180;
LABEL_97:
          v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1);
          v153 = HIBYTE(v137) & 0xF;
          if ((v137 & 0x2000000000000000) == 0)
          {
            v153 = v136 & 0xFFFFFFFFFFFFLL;
          }

          if (!v153 && (v136 & ~v137 & 0x2000000000000000) == 0)
          {
            v137;
            v184 = v152;
            goto LABEL_110;
          }

          if ((v137 & 0x2000000000000000) != 0)
          {
            if ((v152._object & 0x2000000000000000) != 0)
            {
              v155 = specialized _SmallString.init(_:appending:)(v136, v137, v152._countAndFlagsBits, v152._object);
              if ((v157 & 1) == 0)
              {
                v182 = v155;
                v183 = v156;
                v152._object;
                v137;
                v184._countAndFlagsBits = v182;
                v184._object = v183;
LABEL_110:
                ObjectType = swift_getObjectType(v14);
                v159 = swift_getTypeName(ObjectType, 0);
                if ((v160 & 0x8000000000000000) == 0)
                {
                  v161 = v159;
                  v162 = v160;
                  v163 = validateUTF8(_:)(v159, v160);
                  if (v163 < 0)
                  {
                    v167 = repairUTF8(_:firstKnownBrokenRange:)(v161, v162, v164, v165);
                  }

                  else
                  {
                    v167 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v161, v162, v163 & 1, v166);
                  }

                  v111 = v167;
                  v112 = v168;
                  countAndFlagsBits = v184._countAndFlagsBits;
                  v114 = v184._object;
                  v169 = (v184._object >> 56) & 0xF;
                  if ((v184._object & 0x2000000000000000) == 0)
                  {
                    v169 = v184._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                  }

                  if (v169 || (v184._countAndFlagsBits & ~v184._object & 0x2000000000000000) != 0)
                  {
LABEL_119:
                    if ((v114 & 0x2000000000000000) != 0)
                    {
                      if ((v112 & 0x2000000000000000) != 0)
                      {
                        v171 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v114, v111, v112);
                        if ((v173 & 1) == 0)
                        {
                          v174 = v171;
                          v175 = v172;
                          v112;
                          v114;
                          v184._countAndFlagsBits = v174;
                          v184._object = v175;
                          v112 = v175;
                          v111 = v174;
LABEL_125:
                          _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v111, v112, 0);
                        }

                        v170 = HIBYTE(v112) & 0xF;
LABEL_124:
                        _StringGuts.append(_:)(v111, v112, 0, v170, v103, v104, v105, v106, v107, v108, v109, v110);
                        v112;
                        v111 = v184._countAndFlagsBits;
                        v112 = v184._object;
                        goto LABEL_125;
                      }
                    }

                    else if ((v112 & 0x2000000000000000) != 0)
                    {
                      v170 = HIBYTE(v112) & 0xF;
                      goto LABEL_124;
                    }

                    v170 = v111 & 0xFFFFFFFFFFFFLL;
                    goto LABEL_124;
                  }

LABEL_118:
                  v114;
                  v184._countAndFlagsBits = v111;
                  v184._object = v112;
                  goto LABEL_125;
                }

LABEL_133:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              goto LABEL_108;
            }
          }

          else if ((v152._object & 0x2000000000000000) != 0)
          {
LABEL_108:
            v154 = (v152._object >> 56) & 0xF;
            goto LABEL_109;
          }

          v154 = v152._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_109:
          _StringGuts.append(_:)(v152._countAndFlagsBits, v152._object, 0, v154, v144, v145, v146, v147, v148, v149, v150, v151);
          v152._object;
          goto LABEL_110;
        }

        goto LABEL_95;
      }
    }

    else if ((v127 & 0x2000000000000000) != 0)
    {
LABEL_95:
      v140 = HIBYTE(v137) & 0xF;
      goto LABEL_96;
    }

    v140 = v126 & 0xFFFFFFFFFFFFLL;
LABEL_96:
    _StringGuts.append(_:)(v136, v137, 0, v140, v128, v129, v130, v131, v132, v133, v134, v135);
    v137;
    v136 = v184._countAndFlagsBits;
    v137 = v184._object;
    goto LABEL_97;
  }

  if (a2 < 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  v14 = [v13 objectAtIndex_];
  v184._countAndFlagsBits = v14;
  swift_unknownObjectRetain(v14);
  if (!swift_dynamicCast(v9, &v184, &unk_1EEEAC710, a3, 6))
  {
    v18 = _StringGuts.init(_initialCapacity:)(85);
    v28 = v19;
    v184._countAndFlagsBits = v18;
    v184._object = v19;
    v29 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v29 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v29 || (v18 & ~v19 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066B290 & 0x2000000000000000 & v19) != 0 && (v42 = specialized _SmallString.init(_:appending:)(v18, v19, 0xD000000000000046, 0x800000018066B290 | 0x8000000000000000), (v44 & 1) == 0))
      {
        v50 = v42;
        v51 = v43;
        0x800000018066B290 | 0x8000000000000000;
        v28;
        v184._countAndFlagsBits = v50;
        v184._object = v51;
      }

      else
      {
        if ((0x800000018066B290 & 0x2000000000000000) != 0)
        {
          v45 = (0x800000018066B290 >> 56) & 0xF;
        }

        else
        {
          v45 = 70;
        }

        _StringGuts.append(_:)(0xD000000000000046, 0x800000018066B290 | 0x8000000000000000, 0, v45, v20, v21, v22, v23, v24, v25, v26, v27);
        0x800000018066B290 | 0x8000000000000000;
      }
    }

    else
    {
      v19;
      v184._countAndFlagsBits = 0xD000000000000046;
      v184._object = (0x800000018066B290 | 0x8000000000000000);
    }

    v52 = swift_getTypeName(a3, 0);
    if (v53 < 0)
    {
      goto LABEL_133;
    }

    v54 = v52;
    v55 = v53;
    v56 = validateUTF8(_:)(v52, v53);
    if (v56 < 0)
    {
      v60 = repairUTF8(_:firstKnownBrokenRange:)(v54, v55, v57, v58);
    }

    else
    {
      v60 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v54, v55, v56 & 1, v59);
    }

    v70 = v60;
    v71 = v61;
    v72 = v184._object;
    v73 = (v184._object >> 56) & 0xF;
    if ((v184._object & 0x2000000000000000) == 0)
    {
      v73 = v184._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v73 && (v184._countAndFlagsBits & ~v184._object & 0x2000000000000000) == 0)
    {
      v184._object;
      v184._countAndFlagsBits = v70;
      v184._object = v71;
      goto LABEL_57;
    }

    if ((v184._object & 0x2000000000000000) != 0)
    {
      if ((v61 & 0x2000000000000000) != 0)
      {
        v75 = specialized _SmallString.init(_:appending:)(v184._countAndFlagsBits, v184._object, v60, v61);
        if ((v77 & 1) == 0)
        {
          v176 = v75;
          v177 = v76;
          v71;
          v72;
          v184._countAndFlagsBits = v176;
          v184._object = v177;
          v71 = v177;
          v70 = v176;
LABEL_57:
          v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1);
          v87 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v87 = v70 & 0xFFFFFFFFFFFFLL;
          }

          if (!v87 && (v70 & ~v71 & 0x2000000000000000) == 0)
          {
            v71;
            v184 = v86;
            goto LABEL_70;
          }

          if ((v71 & 0x2000000000000000) != 0)
          {
            if ((v86._object & 0x2000000000000000) != 0)
            {
              v89 = specialized _SmallString.init(_:appending:)(v70, v71, v86._countAndFlagsBits, v86._object);
              if ((v91 & 1) == 0)
              {
                v178 = v89;
                v179 = v90;
                v86._object;
                v71;
                v184._countAndFlagsBits = v178;
                v184._object = v179;
LABEL_70:
                v92 = swift_getObjectType(v14);
                v93 = swift_getTypeName(v92, 0);
                if ((v94 & 0x8000000000000000) == 0)
                {
                  v95 = v93;
                  v96 = v94;
                  v97 = validateUTF8(_:)(v93, v94);
                  if (v97 < 0)
                  {
                    v101 = repairUTF8(_:firstKnownBrokenRange:)(v95, v96, v98, v99);
                  }

                  else
                  {
                    v101 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v95, v96, v97 & 1, v100);
                  }

                  v111 = v101;
                  v112 = v102;
                  countAndFlagsBits = v184._countAndFlagsBits;
                  v114 = v184._object;
                  v115 = (v184._object >> 56) & 0xF;
                  if ((v184._object & 0x2000000000000000) == 0)
                  {
                    v115 = v184._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                  }

                  if (v115 || (v184._countAndFlagsBits & ~v184._object & 0x2000000000000000) != 0)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_118;
                }

                goto LABEL_133;
              }

              goto LABEL_68;
            }
          }

          else if ((v86._object & 0x2000000000000000) != 0)
          {
LABEL_68:
            v88 = (v86._object >> 56) & 0xF;
            goto LABEL_69;
          }

          v88 = v86._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_69:
          _StringGuts.append(_:)(v86._countAndFlagsBits, v86._object, 0, v88, v78, v79, v80, v81, v82, v83, v84, v85);
          v86._object;
          goto LABEL_70;
        }

        goto LABEL_55;
      }
    }

    else if ((v61 & 0x2000000000000000) != 0)
    {
LABEL_55:
      v74 = HIBYTE(v71) & 0xF;
      goto LABEL_56;
    }

    v74 = v60 & 0xFFFFFFFFFFFFLL;
LABEL_56:
    _StringGuts.append(_:)(v70, v71, 0, v74, v62, v63, v64, v65, v66, v67, v68, v69);
    v71;
    v70 = v184._countAndFlagsBits;
    v71 = v184._object;
    goto LABEL_57;
  }

  (*(v6 + 8))(v9, a3);
  return v14;
}

uint64_t unsafeBitCast<A, B>(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(*(a2 - 8) + 64) != *(*(a3 - 8) + 64))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(*(a3 - 8) + 16);

  return v5(a4, a1, a3);
}

void _ArrayBuffer.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (_swift_isClassOrObjCExistentialType(a3, a3) && (a2 & 0xC000000000000001) != 0)
  {
    v11 = _ArrayBuffer._getElementSlowPath(_:)(a1, a2, a3);
    v12 = *(a3 - 1);
    if (*(v12 + 64) != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v14 = v11;
    v13 = v11;
    (*(v12 + 16))(a4, &v14, a3);
    swift_unknownObjectRelease(v13);
  }

  else
  {
    v8 = *(a3 - 1);
    v9 = *(v8 + 16);
    v10 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1;

    v9(a4, v10, a3);
  }
}

void key path setter for _ArrayBuffer.subscript(_:) : <A>_ArrayBuffer<A>A(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v9 = *v8;
  (*(v10 + 16))(&v11 - v6);
  _ArrayBuffer.subscript.setter(v7, v9, *a2, v5);
}

uint64_t _ContiguousArrayBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1, v11);
  v12 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2;
  (*(v8 + 16))(a1, v12, a4);
  (*(v8 + 8))(a1, a4);
  return (*(v8 + 40))(v12, v10, a4);
}

uint64_t static Int.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t _BridgeStorage.objCInstance.getter(int64_t a1)
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

__objc2_class **_ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
    AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, &_swiftEmptyArrayStorage);
    if (v7)
    {
      v6 = v7;
      swift_retain_n(v7, 2);
    }

    else
    {
      v14 = a1;
      v10 = type metadata accessor for _ArrayBuffer(0, a2, v8, v9);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v10, v11);
      v6 = _copyCollectionToContiguousArray<A>(_:)(&v14, v10, WitnessTable);
      v6;
      objc_setAssociatedObject(v4, &_swiftEmptyArrayStorage, v6, 1);
    }

    objc_sync_exit(v4);
    v6;
  }

  return v6;
}

uint64_t Optional.unsafelyUnwrapped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v4 + 8))(v6, a1);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v8 + 32))(a2, v6, v7);
}

void *_ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOSSSgIsgyrzr_AByxGAhgHRsd__AGRsd_0_r_0_lIetMggozo_Tp5(void *(*a1)(uint64_t *__return_ptr, char *, atomic_ullong), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = (a3 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v8, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v10 = AssociatedObject;
    AssociatedObject;
  }

  else
  {
    objc_sync_enter(v8);
    v11 = objc_getAssociatedObject(v8, &_swiftEmptyArrayStorage);
    if (v11)
    {
      v10 = v11;
      swift_retain_n(v11, 2);
    }

    else
    {
      v21 = a3;
      v14 = type metadata accessor for _ArrayBuffer(0, a4, v12, v13);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v14, v15);
      v10 = _copyCollectionToContiguousArray<A>(_:)(&v21, v14, WitnessTable);
      v10;
      objc_setAssociatedObject(v8, &_swiftEmptyArrayStorage, v10, 1);
    }

    objc_sync_exit(v8);
    v10;
  }

  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = v10[2];
  v10;
  result = a1(&v20, v10 + v17, v18);
  if (!v4)
  {
    return v20;
  }

  __break(1u);
  return result;
}

void *_ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOSS6result_Sb11repairsMadetIsgyrzr_AByxGSSAH_SbAItAGSSAH_SbAItRsd__AGRsd_0_r_0_lIetMggozo_Tpq5(void *(*a1)(uint64_t *__return_ptr, char *, atomic_ullong), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = (a3 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v8, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v10 = AssociatedObject;
    AssociatedObject;
  }

  else
  {
    objc_sync_enter(v8);
    v11 = objc_getAssociatedObject(v8, &_swiftEmptyArrayStorage);
    if (v11)
    {
      v10 = v11;
      swift_retain_n(v11, 2);
    }

    else
    {
      v21 = a3;
      v14 = type metadata accessor for _ArrayBuffer(0, a4, v12, v13);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v14, v15);
      v10 = _copyCollectionToContiguousArray<A>(_:)(&v21, v14, WitnessTable);
      v10;
      objc_setAssociatedObject(v8, &_swiftEmptyArrayStorage, v10, 1);
    }

    objc_sync_exit(v8);
    v10;
  }

  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = v10[2];
  v10;
  result = a1(&v20, v10 + v17, v18);
  if (!v4)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5yXl_ytTg581_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_yXl_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyyXlytIsgyrzo_Tf1ncn_n(uint64_t a1, uint64_t (*a2)(atomic_ullong *, atomic_ullong))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
    AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, &_swiftEmptyArrayStorage);
    if (v7)
    {
      v6 = v7;
      swift_retain_n(v7, 2);
    }

    else
    {
      v6 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
      v6;
      objc_setAssociatedObject(v4, &_swiftEmptyArrayStorage, v6, 1);
    }

    objc_sync_exit(v4);
    v6;
  }

  v8 = v6[2];
  v6;
  return a2(v6 + 4, v8);
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(uint64_t (*a1)(char *, atomic_ullong, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = (a3 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v7, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v9 = AssociatedObject;
    AssociatedObject;
  }

  else
  {
    objc_sync_enter(v7);
    v10 = objc_getAssociatedObject(v7, &_swiftEmptyArrayStorage);
    if (v10)
    {
      v9 = v10;
      swift_retain_n(v10, 2);
    }

    else
    {
      v19 = a3;
      v13 = type metadata accessor for _ArrayBuffer(0, a4, v11, v12);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v13, v14);
      v9 = _copyCollectionToContiguousArray<A>(_:)(&v19, v13, WitnessTable);
      v9;
      objc_setAssociatedObject(v7, &_swiftEmptyArrayStorage, v9, 1);
    }

    objc_sync_exit(v7);
    v9;
  }

  v16 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v17 = v9[2];
  v9;
  return a1(v9 + v16, v17, &v19);
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tp5(uint64_t (*a1)(char *, __objc2_class *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a3, a4);
  v7 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v8 = AssociatedObject[2];
  AssociatedObject;
  return a1(AssociatedObject + v7, v8, &v10);
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, __objc2_class *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v14, v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = AssociatedObject[2];
  AssociatedObject;
  v19 = v23;
  result = a1(AssociatedObject + v17, v18, v13);
  if (v19)
  {
    return (*(v11 + 32))(v22, v13, a6);
  }

  return result;
}

uint64_t UnsafeBufferPointer.init(start:count:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0 || a2 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t _ArrayBuffer.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t), uint64_t a2, int64_t a3, uint64_t *a4)
{
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v21 = a3;
    v14 = type metadata accessor for _ArrayBuffer(0, a4, v7, v8);
    a3;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v14, v15);
    v17 = (*(WitnessTable + 56))(v14, WitnessTable);
    v18 = MEMORY[0x1EEE9AC00](v17);
    partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)(v18 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)), *(v18 + 16), &v21);
    return v18;
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v9 = ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v9 = a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80));
    }

    if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      if (a3 < 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = (a3 & 0xFFFFFFFFFFFFFF8);
      }

      v20 = [v19 count];
      if ((v20 & 0x8000000000000000) != 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v12 = v20;
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
      v11 = a3 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v11 = a3;
      }

      v12 = *(v11 + 16);
    }

    return a1(v9, v12);
  }
}

uint64_t _ArrayBuffer.withUnsafeMutableBufferPointer<A>(_:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a3 + 16);
  v7 = Array._baseAddressIfContiguous.getter(*v3, v6);
  if (_swift_isClassOrObjCExistentialType(v6, v6) && (v5 < 0 || (v5 & 0x4000000000000000) != 0))
  {
    if (v5 < 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    v14 = [v13 count];
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_16:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = v14;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v6, v6);
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v9 = v5;
    }

    v10 = *(v9 + 16);
  }

  if (v10)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_16;
  }

  return a1(v7);
}

uint64_t static Bool.|| infix(_:_:)(char a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return a2() & 1;
  }
}

uint64_t _ArrayBuffer._native.getter(unint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v3 = a1;
  }

  a1;
  return v3;
}

uint64_t static Strideable<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(*(a4 + 32) + 48))(a2, a3);
}

{
  return (*(*(a4 + 32) + 48))(a1, a3);
}

Swift::UnsafeMutableRawPointer __swiftcall UnsafeMutablePointer.deinitialize(count:)(Swift::Int count)
{
  if (count < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3._rawValue = v1;
  swift_arrayDestroy(v1, count, v2);
  return v3;
}

uint64_t static Int.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *static Int.+= infix(_:_:)(void *result, uint64_t a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

char *specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *__src, uint64_t a2, uint64_t a3, char *__dst)
{
  if (a2 != a3 || !__src)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0 || &__dst[8 * a2] > __src && &__src[8 * a2] > __dst)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayInitWithCopy(__dst, __src, a2, qword_1EEEAC710);
}

char *closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3 || !a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0 || ((v11 = *(*(*(a7 + 8) + 8) + 8), swift_getAssociatedTypeWitness(255, v11, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element), v13 = *(*(v12 - 8) + 72) * a2, v14 = &a4[v13], v15 = &a1[v13], v14 > a1) ? (v16 = v15 > a4) : (v16 = 0), v16))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(0, v11, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  return swift_arrayInitWithCopy(a4, a1, a2, v17);
}

Swift::Void __swiftcall _diagnoseUnexpectedNilOptional(_filenameStart:_filenameLength:_filenameIsASCII:_line:_isImplicitUnwrap:)(Builtin::RawPointer _filenameStart, Builtin::Word _filenameLength, Builtin::Int1 _filenameIsASCII, Builtin::Word _line, Builtin::Int1 _isImplicitUnwrap)
{
  if (_isImplicitUnwrap)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
}

char *specialized UnsafeMutablePointer.initialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (a2 < 0 || (&__dst[16 * a2] > __src ? (v3 = &__src[16 * a2] > __dst) : (v3 = 0), v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayInitWithCopy(__dst, __src, a2, &type metadata for String);
}

{
  if (a2 < 0 || (&__dst[8 * a2] > __src ? (v3 = &__src[8 * a2] > __dst) : (v3 = 0), v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayInitWithCopy(__dst, __src, a2, qword_1EEEAC710);
}

{
  if (a2 < 0 || (&__dst[32 * a2] > __src ? (v3 = &__src[32 * a2] > __dst) : (v3 = 0), v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayInitWithCopy(__dst, __src, a2, &type metadata for _DictionaryCodingKey);
}

{
  if (a2 < 0 || (&__dst[32 * a2] > __src ? (v3 = &__src[32 * a2] > __dst) : (v3 = 0), v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayInitWithCopy(__dst, __src, a2, byte_1EEEAC6F8);
}

{
  if (a2 < 0 || (&__dst[16 * a2] > __src ? (v3 = &__src[16 * a2] > __dst) : (v3 = 0), v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayInitWithCopy(__dst, __src, a2, &type metadata for Character);
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *__src, size_t __n, char *__dst)
{
  if ((__n & 0x8000000000000000) != 0 || &__dst[__n] > __src && &__src[__n] > __dst)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return memcpy(__dst, __src, __n);
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (a2 < 0 || (&__dst[8 * a2] > __src ? (v3 = &__src[8 * a2] > __dst) : (v3 = 0), v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return memcpy(__dst, __src, 8 * a2);
}

char *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, uint64_t a2, char *a3, uint64_t *a4, unsigned __int8 *a5)
{
  if (a2 < 0 || (&a3[40 * a2] > a1 ? (v8 = &a1[40 * a2] > a3) : (v8 = 0), v8))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);

  return swift_arrayInitWithCopy(a3, a1, a2, v9);
}

char *UnsafeMutablePointer.initialize(from:count:)(char *__src, uint64_t a2, char *__dst, unint64_t *a4)
{
  if (a2 < 0 || ((v4 = *(*(a4 - 1) + 72) * a2, v5 = &__dst[v4], v6 = &__src[v4], v5 > __src) ? (v7 = v6 > __dst) : (v7 = 0), v7))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return swift_arrayInitWithCopy(__dst, __src, a2, a4);
}

BOOL static _Pointer.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = v6(a3, a4);
  return v7 < v6(a3, a4);
}

uint64_t static Strideable<>.+= infix(_:_:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  memcpy(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  return (*(*(a4 + 32) + 48))(a2, a3);
}

uint64_t _expectEnd<A>(of:is:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(a4 + 72))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(a2) = (*(*(AssociatedConformanceWitness + 8) + 8))(a2, v11, v8);
  result = (*(v9 + 8))(v11, v8);
  if ((a2 & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void _swift_arrayDownCastIndirect(unint64_t *a1, __objc2_class ***a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a1;
  v7 = _arrayForceCast<A, B>(_:)(v6, a3);
  v5;
  *a2 = v7;
}

__objc2_class **specialized _arrayForceCast<A, B>(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v27 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  _swift_isClassOrObjCExistentialType(v9, v9);
  v10 = Array._getCount()();
  v11 = &_swiftEmptyArrayStorage;
  if (v10)
  {
    v12 = v10;
    v29 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
    if (v12 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v13 = 0;
    v11 = v29;
    v26 = v3 & 0xC000000000000001;
    v24 = v5;
    v25 = (v4 + 16);
    do
    {
      v14 = v26 == 0;
      v15 = v14 | ~_swift_isClassOrObjCExistentialType(a2, a2);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v13, v15 & 1);
      if (v15)
      {
        v16 = v3;
        (*(v4 + 16))(v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, a2);
      }

      else
      {
        v16 = v3;
        v21 = _ArrayBuffer._getElementSlowPath(_:)(v13, v3, a2);
        if (v24 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        *&v28[0] = v21;
        v22 = v21;
        (*v25)(v8, v28, a2);
        swift_unknownObjectRelease(v22);
      }

      v17 = v27;
      (*(v4 + 32))(v27, v8, a2);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd, _ss9CodingKey_pMR);
      swift_dynamicCast(v28, v17, a2, v18, 7uLL);
      v29 = v11;
      v20 = v11[2];
      v19 = v11[3];
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v11 = v29;
      }

      ++v13;
      v11[2] = (v20 + 1);
      _ss9CodingKey_pWOb_0(v28, &v11[5 * v20 + 4]);
      v3 = v16;
    }

    while (v12 != v13);
    if (v12 != Array._getCount()())
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return v11;
}

__objc2_class **specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v18 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of MirrorPath(v4, v15);
      _ss9CodingKey_pWOb_0(v15, v14);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd, _ss9CodingKey_pMR);
      swift_dynamicCast(v16, v14, v5, &type metadata for _DictionaryCodingKey, 7uLL);
      v6 = v16[0];
      v7 = v16[1];
      v8 = v16[2];
      v9 = v17;
      v18 = v2;
      v11 = v2[2];
      v10 = v2[3];
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v2 = v18;
      }

      v2[2] = (v11 + 1);
      v12 = &v2[4 * v11];
      v12[4] = v6;
      v12[5] = v7;
      v12[6] = v8;
      *(v12 + 56) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

__objc2_class **specialized _arrayForceCast<A, B>(_:)(uint64_t a1, Class *a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v4 + 16);
  if (v9)
  {
    v17 = &_swiftEmptyArrayStorage;
    v10 = type metadata accessor for ContiguousArray(0, a2, v5, v6);
    ContiguousArray.reserveCapacity(_:)(v9);
    v11 = a1 + 32;
    do
    {
      outlined init with copy of MirrorPath(v11, v16);
      _ss9CodingKey_pWOb_0(v16, v15);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd, _ss9CodingKey_pMR);
      swift_dynamicCast(v8, v15, v12, a2, 7uLL);
      ContiguousArray.append(_:)(v8, v10);
      v11 += 40;
      --v9;
    }

    while (v9);
    return v17;
  }

  else
  {
    _swift_isClassOrObjCExistentialType(a2, a2);
    return &_swiftEmptyArrayStorage;
  }
}

__objc2_class **_arrayForceCast<A, B>(_:)(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v37 = v11;
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_swift_isClassOrObjCExistentialType(v14, v14) && _swift_isClassOrObjCExistentialType(v37, v37))
  {
    v15 = v3;
    v16 = _ArrayBuffer.requestNativeBuffer()(v15, a2);
    if (v16)
    {
      v17 = v16;
      v18 = _ContiguousArrayBuffer.storesOnlyElementsOfType<A>(_:)(v16, v16, a2, v37);
      v17;
      if ((v18 & 1) == 0)
      {
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        if (!isClassOrObjCExistentialType)
        {
          v20 = v3;
        }

        return (v20 | 1);
      }
    }

    else
    {
      v3;
      v30 = Array._bridgeToObjectiveCImpl()(v3, a2);
      return (~(v30 >> 1) & 0x4000000000000000 | v30);
    }
  }

  else
  {
    v21 = Array._getCount()();
    if (v21)
    {
      v24 = v21;
      v39 = &_swiftEmptyArrayStorage;
      v35 = type metadata accessor for ContiguousArray(0, v37, v22, v23);
      ContiguousArray.reserveCapacity(_:)(v24);
      if (v24 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v36 = v24;
      v33 = v5;
      v25 = 0;
      v34 = v3 & 0xC000000000000001;
      do
      {
        v26 = v34 == 0;
        v27 = v26 | ~_swift_isClassOrObjCExistentialType(a2, a2);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v25, v27 & 1);
        if (v27)
        {
          (*(v4 + 16))(v10, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, a2);
        }

        else
        {
          v28 = _ArrayBuffer._getElementSlowPath(_:)(v25, v3, a2);
          if (v33 != 8)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v38 = v28;
          v29 = v28;
          (*(v4 + 16))(v10, &v38, a2);
          swift_unknownObjectRelease(v29);
        }

        ++v25;
        (*(v4 + 32))(v7, v10, a2);
        swift_dynamicCast(v13, v7, a2, v37, 7);
        ContiguousArray.append(_:)(v13, v35);
      }

      while (v36 != v25);
      if (v36 != Array._getCount()())
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return v39;
    }

    else
    {
      _swift_isClassOrObjCExistentialType(v37, v37);
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t _ContiguousArrayBuffer.storesOnlyElementsOfType<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a4 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - v17;
  v20 = (*(*v19 + 136))(v16);
  if (swift_dynamicCastMetatype(v20, a4))
  {
    return 1;
  }

  v22 = *(a2 + 16);
  if (!v22)
  {
    return 1;
  }

  v41 = v15;
  v42 = a3;
  v23 = 0;
  v26 = *(v12 + 16);
  v25 = v12 + 16;
  v24 = v26;
  v27 = v7;
  v28 = a2 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
  v39 = *(v25 + 56);
  v40 = (v25 + 16);
  v38 = (v27 + 8);
  v29 = v25;
  v30 = a3;
  do
  {
    v31 = v10;
    v32 = v24;
    v24(v18, v28, v30);
    if (v23 >= v22)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v36 = v29;
    v37 = v32;
    v33 = v41;
    (*v40)(v41, v18, v30);
    v10 = v31;
    result = swift_dynamicCast(v31, v33, v30, a4, 6);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v23;
    v34 = result;
    (*v38)(v31, a4);
    result = v34;
    v22 = *(a2 + 16);
    v28 += v39;
    v29 = v36;
    v24 = v37;
  }

  while (v23 != v22);
  return result;
}

__objc2_class **_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg549_ss11CommandLineO10_argumentsSaySSGvpZfiSSSiXEfU_Tf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = a1;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a2;
  }

  v7 = &unk_1ED426000;
  v8 = &unk_1ED426000;
  do
  {
    if (a2 == v4 || v6 == v4)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v7[202] != -1)
    {
      swift_once(&one-time initialization token for _unsafeArgv, one-time initialization function for _unsafeArgv, v5);
    }

    v9 = v8[203];
    v10 = *(v9 + 8 * v4);
    if (!v10)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v11 = v8;
    v12 = _swift_stdlib_strlen(*(v9 + 8 * v4));
    if ((v12 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v13 = v12;
    v14 = validateUTF8(_:)(v10, v12);
    if (v14 < 0)
    {
      v18 = repairUTF8(_:firstKnownBrokenRange:)(v10, v13, v15, v16);
    }

    else
    {
      v18 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v10, v13, v14 & 1, v17);
    }

    v20 = qword_1EE3221C0;
    if (qword_1EE3221C0 >= qword_1EE3221C8 >> 1)
    {
      v23 = v19;
      v24 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(qword_1EE3221C8 > 1, qword_1EE3221C0 + 1, 1);
      v19 = v23;
      v18 = v24;
    }

    qword_1EE3221C0 = v20 + 1;
    v21 = &_swiftEmptyArrayStorage + 2 * v20;
    v21[4] = v18;
    v21[5] = v19;
    ++v4;
    v7 = &unk_1ED426000;
    v8 = v11;
  }

  while (a2 != v4);
  return &_swiftEmptyArrayStorage;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg5(void (*a1)(__objc2_class **__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v8 = a3;
  v23 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v23;
  if (a4 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = a4;
  }

  while (1)
  {
    if (a4 == v8 || v10 == v8)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v20 = v8;
    a1(&v21, &v20);
    if (v4)
    {
      break;
    }

    v11 = v21;
    v12 = v22;
    v23 = v6;
    v14 = v6[2];
    v13 = v6[3];
    v15 = (v14 + 1);
    if (v14 >= v13 >> 1)
    {
      v18 = v21;
      v19 = v22;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
      v12 = v19;
      v11 = v18;
      v15 = (v14 + 1);
      v6 = v23;
    }

    v6[2] = v15;
    v16 = &v6[2 * v14];
    v16[4] = v11;
    v16[5] = v12;
    if (a4 == ++v8)
    {
      return v6;
    }
  }

  result = v6;
  __break(1u);
  return result;
}

BOOL _swift_arrayDownCastConditionalIndirect(unint64_t *a1, __objc2_class ***a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1;
  v10 = _arrayConditionalCast<A, B>(_:)(v8, a3, a4, v9);
  v7;
  if (v10)
  {
    *a2 = v10;
  }

  return v10 != 0;
}

__objc2_class **_arrayConditionalCast<A, B>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v38 - v9;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v47 = &v38 - v14;
  v51 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v53 = &_swiftEmptyArrayStorage;
  v19 = Array._getCount()();
  v46 = type metadata accessor for ContiguousArray(0, a3, v20, v21);
  ContiguousArray.reserveCapacity(_:)(v19);
  v45 = Array._getCount()();
  if (!v45)
  {
    return v53;
  }

  v22 = 0;
  v43 = (v51 + 16);
  v44 = a1 & 0xC000000000000001;
  v41 = (v10 + 56);
  v42 = (v51 + 32);
  v23 = (v10 + 32);
  v24 = v47;
  while (1)
  {
    v25 = v44 == 0;
    v26 = v25 | ~_swift_isClassOrObjCExistentialType(a2, a2);
    Array._checkSubscript(_:wasNativeTypeChecked:)(v22, v26 & 1);
    if (v26)
    {
      v27 = a1;
      (*(v51 + 16))(v18, a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v22, a2);
    }

    else
    {
      v35 = _ArrayBuffer._getElementSlowPath(_:)(v22, a1, a2);
      if (v38 != 8)
      {
        goto LABEL_16;
      }

      v27 = a1;
      v52 = v35;
      v36 = v35;
      (*v43)(v18, &v52, a2);
      swift_unknownObjectRelease(v36);
    }

    v28 = v22 + 1;
    v29 = v50;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_16:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v30 = v49;
    (*v42)(v49, v18, a2);
    if ((swift_dynamicCast(v29, v30, a2, a3, 6) & 1) == 0)
    {
      break;
    }

    (*v41)(v29, 0, 1, a3);
    v31 = v29;
    v32 = *v23;
    (*v23)(v24, v31, a3);
    v33 = v48;
    v32(v48, v24, a3);
    ContiguousArray.append(_:)(v33, v46);
    ++v22;
    v34 = v28 == v45;
    a1 = v27;
    if (v34)
    {
      return v53;
    }
  }

  v53;
  (*v41)(v29, 1, 1, a3);
  (*(v39 + 8))(v29, v40);
  return 0;
}

__objc2_class **specialized ContiguousArray.reserveCapacity(_:)(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

Swift::Void __swiftcall ContiguousArray.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 0);
  }
}

uint64_t specialized ContiguousArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native(*v2);
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
    v5 = *v2;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7 > 1, v8 + 1, 1);
    v5 = *v2;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *v2 = v5;
  return result;
}

_OWORD *specialized ContiguousArray.append(_:)(_OWORD *a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
    v3 = *v1;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
    v3 = *v1;
  }

  *(v3 + 16) = v6 + 1;
  result = outlined init with take of Any(a1, (v3 + 32 * v6 + 32));
  *v1 = v3;
  return result;
}

uint64_t ContiguousArray.append(_:)(uint64_t a1, uint64_t a2)
{
  ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = *v2;
  v7 = *(*v2 + 16);
  v6 = *(*v2 + 24);
  if (v7 >= v6 >> 1)
  {
    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6 > 1, v7 + 1, 1);
    v5 = *v2;
  }

  *(v5 + 16) = v7 + 1;
  v8 = *(*(a2 + 16) - 8);
  v9 = *(v8 + 32);
  v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7;

  return v9(v10, a1);
}

Swift::Int __swiftcall Array._getCapacity()()
{
  v2 = v1;
  v3 = v0;
  if (_swift_isClassOrObjCExistentialType(v1, v1) && (v3 < 0 || (v3 & 0x4000000000000000) != 0))
  {
    if (v3 >= 0)
    {
      v3 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v7 = [swift_unknownObjectRetain(v3) count];
    v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7, v3);
    swift_unknownObjectRelease(v3);
    return v8;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v2, v2);
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v5 = v3;
    }

    return *(v5 + 24) >> 1;
  }
}

Swift::Void __swiftcall Array._makeMutableAndUnique()()
{
  v2 = *(v0 + 16);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v2, v2);
  v4 = *v1;
  if (isClassOrObjCExistentialType)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v1);
    *v1 = v4;
    if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || _swift_isClassOrObjCExistentialType(v2, v2) && (v4 < 0 || (v4 & 0x4000000000000000) != 0))
    {
      goto LABEL_6;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
    *v1 = v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      *v1 = _ArrayBuffer._consumeAndCreateNew()(v4, v2);
    }
  }
}

unint64_t sub_1802E86D0(unint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 && ((result & 0x8000000000000000) != 0 || *(a3 + 16) <= result))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 && ((result & 0x8000000000000000) != 0 || *(a3 + 16) <= result))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  if ((a2 & 1) != 0 && ((result & 0x8000000000000000) != 0 || *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void __swiftcall Array._checkSubscript(_:wasNativeTypeChecked:)(Swift::Int _, Swift::Bool wasNativeTypeChecked)
{
  if (wasNativeTypeChecked)
  {
    v4 = v2;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v3, v3);
    if (_ < 0)
    {
      goto LABEL_7;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v7 = v4;
    }

    if (*(v7 + 16) <= _)
    {
LABEL_7:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }
}

unint64_t specialized Array._checkSubscript_mutating(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0 || *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall ContiguousArray._checkSubscript_mutating(_:)(Swift::Int a1)
{
  if (a1 < 0 || *(v1 + 16) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v3 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v2, v2);
  if (a1 < 0)
  {
    goto LABEL_5;
  }

  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v6 = v3;
  }

  if (*(v6 + 16) <= a1)
  {
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

uint64_t specialized Array._checkIndex(_:)(uint64_t result, uint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = (a2 & 0xFFFFFFFFFFFFFF8);
    if (a2 < 0)
    {
      v2 = a2;
    }

    v3 = result;
    v4 = [v2 count];
    result = v3;
    if (v4 < v3)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < result)
  {
    goto LABEL_8;
  }

  if (result < 0)
  {
    goto LABEL_8;
  }

  return result;
}

Swift::Void __swiftcall Array._checkIndex(_:)(Swift::Int a1)
{
  if (Array._getCount()() < a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

void Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v6 = *(a4 - 1);
    v7 = *(v6 + 16);
    v8 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1;

    v7(a5, v8, a4);
  }

  else
  {
    v10 = _ArrayBuffer._getElementSlowPath(_:)(a1, a3, a4);
    v11 = *(a4 - 1);
    if (*(v11 + 64) != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v13 = v10;
    v12 = v10;
    (*(v11 + 16))(a5, &v13, a4);
    swift_unknownObjectRelease(v12);
  }
}

unint64_t Array._getElementAddress(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (_swift_isClassOrObjCExistentialType(a3, a3))
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v6 = a2;
  }

  return v6 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80)) + *(*(a3 - 1) + 72) * a1;
}

void *Array._owner.getter(int64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    swift_unknownObjectRetain(v4);
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a2, a2))
    {
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v4 = a1;
    }

    a1;
  }

  return v4;
}

unint64_t Array._baseAddressIfContiguous.getter(uint64_t a1, uint64_t *a2)
{
  if (!_swift_isClassOrObjCExistentialType(a2, a2) || (result = 0, (a1 & 0x8000000000000000) == 0) && (a1 & 0x4000000000000000) == 0)
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v6 = a1;
    }

    return v6 + ((*(*(a2 - 1) + 80) + 32) & ~*(*(a2 - 1) + 80));
  }

  return result;
}

id protocol witness for _ArrayProtocol._owner.getter in conformance [A](uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  if (_swift_isClassOrObjCExistentialType(v3, v3) && ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0))
  {
    return _ArrayBuffer._nonNative.getter(v2);
  }

  if (_swift_isClassOrObjCExistentialType(v3, v3))
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v4 = v2;
  }

  v2;
  return v4;
}

unint64_t protocol witness for _ArrayProtocol._baseAddressIfContiguous.getter in conformance [A](uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  if (!_swift_isClassOrObjCExistentialType(v3, v3) || (result = 0, (v2 & 0x8000000000000000) == 0) && (v2 & 0x4000000000000000) == 0)
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v3, v3);
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v6 = v2;
    }

    return v6 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  }

  return result;
}

uint64_t protocol witness for _ArrayProtocol.init(_:) in conformance [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for _ArrayBuffer(0, *(a2 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v7, v8);
  result = Array.init<A>(_:)(a1, v10, v7, WitnessTable);
  *a5 = result;
  return result;
}

unint64_t protocol witness for _ArrayProtocol._buffer.getter in conformance [A]@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

Swift::Int __swiftcall Array.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Array.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall Array.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Array.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

void *static Int.-= infix(_:_:)(void *result, uint64_t a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

Swift::Int __swiftcall Array.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall Array.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = specialized Array.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall Array.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void Array.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a3, a3);
  v9 = ((a2 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
  Array._checkSubscript(_:wasNativeTypeChecked:)(a1, (a2 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
  if (v9)
  {
    v10 = *(a3 - 1);
    v11 = *(v10 + 16);
    v12 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1;

    v11(a4, v12, a3);
  }

  else
  {
    v13 = _ArrayBuffer._getElementSlowPath(_:)(a1, a2, a3);
    v14 = *(a3 - 1);
    if (*(v14 + 64) != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v16 = v13;
    v15 = v13;
    (*(v14 + 16))(a4, &v16, a3);
    swift_unknownObjectRelease(v15);
  }
}

uint64_t key path setter for Array.subscript(_:) : <A>[A]A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  return key path setter for Array.subscript(_:) : <A>[A]A(a1, a2, a3, a4, type metadata accessor for Array, Array.subscript.modify);
}

{
  return key path setter for Array.subscript(_:) : <A>[A]A(a1, a2, a3, a4, type metadata accessor for Array, Array.subscript.setter);
}

uint64_t (*Array.subscript.modify(uint64_t a1, Swift::Int a2, uint64_t a3))()
{
  Array._makeMutableAndUnique()();
  v5 = *(a3 + 16);
  Array._checkSubscript_mutating(_:)(a2);
  _swift_isClassOrObjCExistentialType(v5, v5);
  return _swift_displayCrashMessage;
}

uint64_t Array.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  Array._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a3 + 16);
  Array._checkSubscript_mutating(_:)(a2);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v8, v8);
  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v10 = v7;
  }

  v11 = *(v8 - 1);
  v12 = *(v11 + 40);
  v13 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a2;

  return v12(v13, a1, v8);
}

uint64_t Array.subscript.getter(Swift::Int a1, Swift::Int a2, int64_t a3, uint64_t *a4)
{
  Array._checkIndex(_:)(a1);
  Array._checkIndex(_:)(a2);

  return _ArrayBuffer.subscript.getter(a1, a2, a3, a4);
}

uint64_t key path getter for Array.subscript(_:) : <A>[A]A@<X0>(int64_t *a1@<X0>, Swift::Int *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array.subscript.getter(*a2, a2[1], *a1, *(a2 + a3 - 8));
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

void Array.subscript.setter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, Swift::Int a5, Swift::Int a6, uint64_t a7)
{
  v14 = *v7;
  v15 = *(a7 + 16);
  Array._checkIndex(_:)(a5);
  Array._checkIndex(_:)(a6);
  v16 = _ArrayBuffer.subscript.getter(a5, a6, v14, v15);
  v18 = v17;
  v20 = v19;
  swift_unknownObjectRelease(v16);
  if (v18 + *(*(v15 - 1) + 72) * v20 != a2 + *(*(v15 - 1) + 72) * a3)
  {
    goto LABEL_2;
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
LABEL_2:
    v27[0] = a1;
    v27[1] = a2;
    v27[2] = a3;
    v27[3] = a4;
    v23 = type metadata accessor for ArraySlice(0, v15, v21, v22);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v23, v24);
    Array.replaceSubrange<A>(_:with:)(a5, a6, v27, a7, v23, WitnessTable);
  }
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a1 < 0)
  {
    goto LABEL_32;
  }

  v10 = a1;
  v11 = *v4;
  if (!(*v4 >> 62))
  {
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
    if (*(v12 + 16) >= a2)
    {
      goto LABEL_4;
    }

LABEL_32:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 < 0)
  {
    v21 = *v4;
  }

  else
  {
    v21 = (v11 & 0xFFFFFFFFFFFFFF8);
  }

  v22 = a3;
  v23 = [v21 count];
  a3 = v22;
  if (v23 < a2)
  {
    goto LABEL_32;
  }

LABEL_4:
  v13 = a2 - v10;
  if (__OFSUB__(a2, v10))
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = a4 - v13;
  if (__OFSUB__(a4, v13))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    if (v5 < 0)
    {
      v24 = v5;
    }

    else
    {
      v24 = v12;
    }

    v25 = a3;
    v26 = [v24 count];
    a3 = v25;
    v15 = &v26[v6];
    if (!__OFADD__(v26, v6))
    {
      goto LABEL_8;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *v4;
  v12 = *v4 & 0xFFFFFFFFFFFFFF8;
  v7 = *v4 >> 62;
  if (v7)
  {
    goto LABEL_35;
  }

  v14 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = (v14 + v6);
  if (__OFADD__(v14, v6))
  {
    goto LABEL_40;
  }

LABEL_8:
  __src = a3;
  LODWORD(v16) = swift_isUniquelyReferenced_nonNull_bridgeObject(v5);
  *v4 = v5;
  if (v7)
  {
    LODWORD(v16) = 0;
  }

  if (v16 == 1)
  {
    v17 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v15 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }
  }

  v18 = (v5 & 0xFFFFFFFFFFFFFF8);
  if (v7)
  {
    goto LABEL_50;
  }

  v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (v19 <= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v19;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v20, 1, v5);
    *v4 = v5;
    v17 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    if (v13 < 0)
    {
      goto LABEL_41;
    }

    v15 = (v17 + 32);
    v10 = v17 + 32 + 8 * v10;
    swift_arrayDestroy(v10, v13, qword_1EEEAC710);
    if (!v6)
    {
      goto LABEL_24;
    }

    v16 = &v15[8 * a2];
    if (v5 >> 62)
    {
      break;
    }

    v18 = *(v17 + 16);
    if (!__OFSUB__(v18, a2))
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v16, &v18[-a2], (v10 + 8 * a4));
      v16 = *(v17 + 16);
      v18 = &v16[v6];
      if (!__OFADD__(v16, v6))
      {
        goto LABEL_23;
      }

LABEL_48:
      __break(1u);
    }

LABEL_49:
    __break(1u);
LABEL_50:
    if (v5 < 0)
    {
      v18 = v5;
    }

    v28 = v16;
    v19 = [v18 count];
    LOBYTE(v16) = v28;
  }

  if (v5 >= 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = v5;
  }

  v27 = &v15[8 * a2];
  v15 = (v10 + 8 * a4);
  v16 = [v13 count];
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_49;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v27, &v16[-a2], (v10 + 8 * a4));
  v16 = [v13 count];
  v18 = &v16[v6];
  if (__OFADD__(v16, v6))
  {
    goto LABEL_48;
  }

LABEL_23:
  *(v17 + 16) = v18;
LABEL_24:
  if (a4 >= 1)
  {
    specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(__src, a4, a4, v10);
  }

  *v4 = v5;
}

uint64_t Array.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(a4 + 16);
  v94 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v15;
  swift_getAssociatedTypeWitness(0, v16, v15, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v91 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v87 - v22;
  if (a1 < 0)
  {
    LODWORD(v85) = 0;
    v84 = 1842;
    LOBYTE(WitnessTable) = 2;
    goto LABEL_59;
  }

  if (Array._getCount()() < a2)
  {
    LODWORD(v85) = 0;
    v84 = 1845;
    LOBYTE(WitnessTable) = 2;
LABEL_59:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_61;
  }

  v102 = a2;
  v103 = a1;
  v23 = *(a6 + 112);
  v93 = a3;
  v24 = a2 - a1;
  v25 = v23(v95, a6);
  v26 = v25 - (a2 - a1);
  if (__OFSUB__(v25, a2 - a1))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = v25;
  v89 = v19;
  v90 = v18;
  v28 = Array._getCount()();
  v31 = v28 + v26;
  if (__OFADD__(v28, v26))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v32 = v26;
  v88 = v14;
  v101 = type metadata accessor for _ArrayBuffer(0, v12, v29, v30);
  v33 = _ArrayBuffer.beginCOWMutation()();
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = *v7;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v12, v12);
  v36 = v34 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v36 = v34;
  }

  if (v31 <= *(v36 + 24) >> 1)
  {
    v37 = v34 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
LABEL_11:
    v38 = *v7;
    if (_swift_isClassOrObjCExistentialType(v12, v12) && (v38 < 0 || (v38 & 0x4000000000000000) != 0))
    {
      if (v38 < 0)
      {
        v82 = v38;
      }

      else
      {
        v82 = (v38 & 0xFFFFFFFFFFFFFF8);
      }

      v41 = [v82 count];
    }

    else
    {
      v39 = _swift_isClassOrObjCExistentialType(v12, v12);
      v40 = v38 & 0xFFFFFFFFFFFFFF8;
      if (!v39)
      {
        v40 = v38;
      }

      v41 = *(v40 + 16);
    }

    if (v41 <= v31)
    {
      v42 = v31;
    }

    else
    {
      v42 = v41;
    }

    v34 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v42, 1, v38, v12);
    *v7 = v34;
    v37 = v34 & 0xFFFFFFFFFFFFFF8;
  }

  if (_swift_isClassOrObjCExistentialType(v12, v12))
  {
    v43 = v37;
  }

  else
  {
    v43 = v34;
  }

  if (v24 < 0)
  {
LABEL_63:
    LODWORD(v85) = 0;
    v84 = 1183;
    LOBYTE(WitnessTable) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v37;
  v45 = v27;
  v46 = (v43 + ((*(v94 + 80) + 32) & ~*(v94 + 80)));
  v47 = *(v94 + 72);
  v48 = v46 + v47 * v103;
  v103 = v47 * v45;
  v92 = (v48 + v47 * v45);
  swift_arrayDestroy(v48, v24, v12);
  v50 = v93;
  if (!v32)
  {
    goto LABEL_45;
  }

  if (_swift_isClassOrObjCExistentialType(v12, v12) && (v34 < 0 || (v34 & 0x4000000000000000) != 0))
  {
    goto LABEL_66;
  }

  if (_swift_isClassOrObjCExistentialType(v12, v12))
  {
    v51 = v44;
  }

  else
  {
    v51 = v34;
  }

  for (i = *(v51 + 16); ; i = [v79 count])
  {
    if (__OFSUB__(i, v102))
    {
      __break(1u);
      goto LABEL_65;
    }

    UnsafeMutablePointer.moveInitialize(from:count:)(v46 + v47 * v102, i - v102, v92, v12);

    v46 = v12;
    if (_swift_isClassOrObjCExistentialType(v12, v12))
    {
      v53 = v44;
    }

    else
    {
      v53 = v34;
    }

    v54 = *(v53 + 16);
    v12 = (v54 + v32);
    if (!__OFADD__(v54, v32))
    {
      goto LABEL_41;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    if (v34 < 0)
    {
      v79 = v34;
    }

    else
    {
      v79 = v44;
    }
  }

  v46 = v12;
  if (v34 < 0)
  {
    v80 = v34;
  }

  else
  {
    v80 = v44;
  }

  v81 = [v80 count];
  v12 = &v81[v32];
  if (__OFADD__(v81, v32))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_41:
  v49 = _swift_isClassOrObjCExistentialType(v46, v46);
  if (v49)
  {
    v55 = v44;
  }

  else
  {
    v55 = v34;
  }

  *(v55 + 16) = v12;
  v12 = v46;
LABEL_45:
  if (v45 <= 0)
  {
    v78 = *(*(v95 - 1) + 8);

    return v78(v50);
  }

  else
  {
    v102 = v47;
    MEMORY[0x1EEE9AC00](v49);
    v56 = v101;
    v57 = v95;
    *(&v87 - 6) = v101;
    *(&v87 - 5) = v57;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v56, v58);
    v84 = a6;
    v85 = v45;
    v86 = v48;
    (*(*(a6 + 8) + 72))(v105, closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)partial apply, &v87 - 8, &unk_1EEEAC658, v57);
    if (v105[0])
    {
      (*(a6 + 64))(v57, a6);
      v59 = v103 < 1;
      v103 = a6;
      v101 = v12;
      v60 = v88;
      v61 = v92;
      if (!v59)
      {
        v99 = *(v103 + 80);
        v100 = v103 + 80;
        v97 = *(v103 + 192);
        v98 = v103 + 192;
        v96 = (v94 + 16);
        v62 = (v94 + 32);
        v63 = v103;
        do
        {
          v64 = v57;
          v65 = v50;
          v66 = v104;
          v67 = v99(v105, v104, v64, v63);
          v68 = v101;
          (*v96)(v60);
          v67(v105, 0);
          (*v62)(v48, v60, v68);
          v48 += v102;
          v69 = v66;
          v50 = v65;
          v57 = v64;
          v97(v69, v64, v63);
        }

        while (v48 < v61);
      }

      v70 = v103;
      v71 = v91;
      (*(v103 + 72))(v57, v103);
      v72 = v90;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v70, v57, v90, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
      v74 = v104;
      v75 = (*(*(AssociatedConformanceWitness + 8) + 8))(v104, v71, v72);
      v76 = *(v89 + 8);
      v76(v71, v72);
      if (v75)
      {
        (*(*(v57 - 1) + 8))(v50, v57);
        return (v76)(v74, v72);
      }

LABEL_76:
      LODWORD(v85) = 0;
      v84 = 173;
      LOBYTE(WitnessTable) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(*(v57 - 1) + 8))(v50, v57);
  }
}

void (*Array.subscript.modify(uint64_t **a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x40, 0xFADAuLL);
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
  v12 = *(a4 + 16);
  Array._checkIndex(_:)(a2);
  Array._checkIndex(_:)(a3);
  *v10 = _ArrayBuffer.subscript.getter(a2, a3, v11, v12);
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  return Array.subscript.modify;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance [A](uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v6 = *a2;
  Array._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a3 + 16);
  Array._checkSubscript_mutating(_:)(v6);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v8, v8);
  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v10 = v7;
  }

  (*(*(v8 - 1) + 40))(v10 + ((*(*(v8 - 1) + 80) + 32) & ~*(*(v8 - 1) + 80)) + *(*(v8 - 1) + 72) * v6, a1, v8);

  return _swift_displayCrashMessage();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance [A](void *a1, Swift::Int *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xDB1uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Array.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance [A](uint64_t **a1, Swift::Int *a2, uint64_t a3))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x5976uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = v3;
  v7[5] = a3;
  v10 = *a2;
  v9 = a2[1];
  v7[6] = v10;
  v7[7] = v9;
  v11 = *v3;
  v12 = *(a3 + 16);
  Array._checkIndex(_:)(v10);
  Array._checkIndex(_:)(v9);
  *v8 = _ArrayBuffer.subscript.getter(v10, v9, v11, v12);
  v8[1] = v13;
  v8[2] = v14;
  v8[3] = v15;
  return protocol witness for MutableCollection.subscript.modify in conformance [A];
}

void *Array._withUnsafeMutableBufferPointerIfSupported<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18 = a3;
  Array._makeMutableAndUnique()();
  v9 = *v4;
  v10 = *(a2 + 16);
  if (_swift_isClassOrObjCExistentialType(v10, v10))
  {
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v11 + 16);
  if (_swift_isClassOrObjCExistentialType(v10, v10))
  {
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = v9;
  }

  v17[0] = v13 + ((*(*(v10 - 1) + 80) + 32) & ~*(*(v10 - 1) + 80));
  v14 = v17[0];
  v17[1] = v12;
  a1(v17);
  if (v5)
  {
    return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5(v17, v14, v12);
  }

  v16 = v18;
  _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5(v17, v14, v12);
  return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
}

{
  return Array.withContiguousMutableStorageIfAvailable<A>(_:)(a1, a2, a3, a4);
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _Int128.Words@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _Int128.Words(void *result)
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

void *_sSayxGSksSk5index_8offsetBy5IndexQzAE_SitFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t _sSayxGSksSk5index_8offsetBy07limitedC05IndexQzSgAF_SiAFtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Array.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _sSayxGSksSk8distance4from2toSi5IndexQz_AFtFTW_0(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Collection.endIndex.getter in conformance [A]@<X0>(Swift::Int *a1@<X8>)
{
  result = Array.count.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance [A](void *a1, unint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0xBC95uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = Array.subscript.read(v7, *a2, *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*Array.subscript.read(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4))(void *a1)
{
  v8 = *(a4 - 1);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x68BAuLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
  v14 = ((a3 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
  Array._checkSubscript(_:wasNativeTypeChecked:)(a2, (a3 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
  if (v14)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
  }

  else
  {
    v16 = _ArrayBuffer._getElementSlowPath(_:)(a2, a3, a4);
    if (v10 != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *a1 = v16;
    v17 = v16;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease(v17);
  }

  return Array.subscript.read;
}

void Array.subscript.read(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance [A]@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array.subscript.getter(*a1, a1[1], *v3, *(a2 + 16));
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance [A]@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

void *protocol witness for Collection.index(after:) in conformance _Int128.Words@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *protocol witness for Collection.formIndex(after:) in conformance _Int128.Words(void *result)
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

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance [A](unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

unint64_t Array._copyContents(initializing:)(char *a1, Swift::Int a2, unint64_t a3, uint64_t *a4)
{
  v7 = a1;
  v8 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Array._getCount()())
  {
    if (v7 && Array._getCount()() <= a2)
    {
      if (!_swift_isClassOrObjCExistentialType(a4, a4) || (a3 & 0x8000000000000000) == 0 && (a3 & 0x4000000000000000) == 0)
      {
        if (_swift_isClassOrObjCExistentialType(a4, a4))
        {
          v11 = a3 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v11 = a3;
        }

        v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v13 = Array._getCount()();
        UnsafeMutablePointer.initialize(from:count:)((v11 + v12), v13, v7, a4);
        if (!_swift_isClassOrObjCExistentialType(a4, a4) || (a3 & 0x8000000000000000) == 0 && (a3 & 0x4000000000000000) == 0)
        {
          _swift_isClassOrObjCExistentialType(a4, a4);
        }

        goto LABEL_14;
      }

      v24[0] = 0;
      v24[1] = a3;
      a3;
      if (!Array._getCount()())
      {
LABEL_21:
        a3;
LABEL_14:
        a3;
        Array._getCount()();
        a3;
        return a3;
      }

      v18 = type metadata accessor for Array(0, a4, v15, v16);
      v19 = 0;
      v22[1] = v8 + 32;
      while (1)
      {
        swift_getWitnessTable(protocol conformance descriptor for [A], v18, v17);
        v20 = protocol witness for Collection.subscript.read in conformance [A](v23, v24, v18);
        (*(v8 + 16))(v10);
        (v20)(v23, 0);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v24[0] = v19 + 1;
        (*(v8 + 32))(v7, v10, a4);
        v7 += *(v8 + 72);
        ++v19;
        if (v21 == Array._getCount()())
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a3;
}

uint64_t Array.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a4;
  v21 = a5;
  v22 = a1;
  v23 = a2;
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(partial apply for closure #1 in Array.withContiguousStorageIfAvailable<A>(_:), v19, a3, a4);
    if (!v6)
    {
      return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v12 = ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v12 = a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80));
    }

    if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      if (a3 < 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = (a3 & 0xFFFFFFFFFFFFFF8);
      }

      v18 = [v17 count];
      if ((v18 & 0x8000000000000000) != 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v15 = v18;
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
      v14 = a3 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v14 = a3;
      }

      v15 = *(v14 + 16);
    }

    result = a1(v12, v15);
    if (!v6)
    {
      return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
    }
  }

  return result;
}

__objc2_class **_sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(a2);
  result[2] = a2;
  v5 = (result + 4);
  if (a2 <= 3)
  {
    v6 = 0;
LABEL_9:
    v10 = a2 - v6;
    do
    {
      *v5++ = a1;
      --v10;
    }

    while (v10);
    return result;
  }

  v6 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = vdupq_n_s64(a1);
  v8 = (result + 6);
  v9 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 += 2;
    v9 -= 4;
  }

  while (v9);
  if (v6 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

__objc2_class **_sSa22_allocateUninitializedySayxG_SpyxGtSiFZs4Int8V_Tt0g5(uint64_t a1)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZs4Int8V_Tt0g5(a1);
  result[2] = a1;
  return result;
}

__objc2_class **_sSa22_allocateUninitializedySayxG_SpyxGtSiFZyXl_Tt0g5(uint64_t a1)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZyXl_Tt0g5(a1);
  *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = a1;
  return result;
}

uint64_t static Array._allocateUninitialized(_:)(uint64_t a1, uint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v6 = v4;
    }

    *(v6 + 16) = a1;
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  _swift_isClassOrObjCExistentialType(a2, a2);
  return v4;
}

__objc2_class **_sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZs4Int8V_Tt0g5(uint64_t a1)
{
  if (a1 < 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int8>();
  v3 = swift_allocObject(v2, (a1 + 32), 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  result = v3;
  v3[2] = 0;
  v3[3] = 2 * v4 - 64;
  return result;
}

__objc2_class **_sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZyXl_Tt0g5(uint64_t a1)
{
  if (a1 < 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v3 = swift_allocObject(v2, (8 * a1 + 32), 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  result = v3;
  v7 = v4 - 32;
  v6 = v4 < 32;
  v8 = v4 - 25;
  if (!v6)
  {
    v8 = v7;
  }

  v3[2] = 0;
  v3[3] = (2 * (v8 >> 3)) | 1;
  return result;
}

__objc2_class **_sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(uint64_t a1)
{
  if (a1 < 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int>();
  v3 = swift_allocObject(v2, (8 * a1 + 32), 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  result = v3;
  v7 = v4 - 32;
  v6 = v4 < 32;
  v8 = v4 - 25;
  if (!v6)
  {
    v8 = v7;
  }

  v3[2] = 0;
  v3[3] = 2 * (v8 >> 3);
  return result;
}

__objc2_class **Array.init(_uninitializedCount:)(uint64_t a1, uint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
  result = v4;
  if (isClassOrObjCExistentialType)
  {
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v7 = v4;
  }

  *(v7 + 16) = a1;
  return result;
}

uint64_t specialized static Array._adoptStorage(_:count:)(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

void *static Array._adoptStorage(_:count:)(void *a1, uint64_t a2)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(*(*a1 + 144), *(*a1 + 144));
  a1[2] = a2;
  a1[3] = isClassOrObjCExistentialType | (2 * a2);
  return a1;
}

void *_ContiguousArrayBuffer.init(count:storage:)(uint64_t a1, void *a2)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(*(*a2 + 144), *(*a2 + 144));
  a2[2] = a1;
  a2[3] = isClassOrObjCExistentialType | (2 * a1);
  return a2;
}

Swift::Void __swiftcall Array._deallocateUninitialized()()
{
  v2 = *v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(*(v0 + 16), *(v0 + 16));
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v4 = v2;
  }

  *(v4 + 16) = 0;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native(*v3);
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

Swift::Void __swiftcall Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(Swift::Int minimumCapacity, Swift::Bool growForAppend)
{
  v6 = *(v2 + 16);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v6, v6);
  v8 = *v3;
  if (!isClassOrObjCExistentialType)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    *v3 = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_12:
    v10 = 0;
LABEL_13:
    if (_swift_isClassOrObjCExistentialType(v6, v6) && (v8 < 0 || (v8 & 0x4000000000000000) != 0))
    {
      if (v8 < 0)
      {
        v18 = v8;
      }

      else
      {
        v18 = (v8 & 0xFFFFFFFFFFFFFF8);
      }

      v16 = [v18 count];
    }

    else
    {
      v14 = _swift_isClassOrObjCExistentialType(v6, v6);
      v15 = v8 & 0xFFFFFFFFFFFFFF8;
      if (!v14)
      {
        v15 = v8;
      }

      v16 = *(v15 + 16);
    }

    if (v16 <= minimumCapacity)
    {
      v17 = minimumCapacity;
    }

    else
    {
      v17 = v16;
    }

    *v3 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v17, growForAppend, v8, v6);
    return;
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v3);
  *v3 = v8;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    goto LABEL_12;
  }

  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    v10 = 0;
    if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_8:
  v12 = _swift_isClassOrObjCExistentialType(v6, v6);
  v13 = v8 & 0xFFFFFFFFFFFFFF8;
  if (!v12)
  {
    v13 = v8;
  }

  if (minimumCapacity > *(v13 + 24) >> 1)
  {
    v10 = 1;
    goto LABEL_13;
  }
}

__objc2_class **specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **a1, int64_t a2, char a3)
{
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3)
{
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall Array._copyToNewBuffer(oldCount:)(Swift::Int oldCount)
{
  v13 = *v4;
  v6 = type metadata accessor for _ArrayBuffer(0, *(v1 + 16), v2, v3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v6, v7);
  v9 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(oldCount, oldCount + 1, v6, WitnessTable);
  v13 = v9;
  v10 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v6, WitnessTable);
  v12 = v11;
  _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v13, oldCount, 0, v10, v11, v6, WitnessTable);
  v12;
  v9;
}

__objc2_class **_ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 144);
  v9 = v8(a3, a4);
  v10 = v8(a3, a4);
  if (v9 < a2)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 *= 2;
  }

  if (v10 <= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = v11;
  }

  if (!v12)
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_getAssociatedTypeWitness(0, *(*(*(a4 + 8) + 8) + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v14 = v13;
  v15 = getContiguousArrayStorageType<A>(for:)(v13, v13);
  v16 = *(*(v14 - 1) + 72);
  v17 = *(*(v14 - 1) + 80);
  v18 = swift_allocObject(v15, (((v17 + *(v15 + 48)) & ~v17) + v16 * v12), v17 | *(v15 + 52));
  v19 = _swift_stdlib_malloc_size(v18);
  if (!v16 || ((v20 = v19 - ((v17 + 32) & ~v17), v20 == 0x8000000000000000) ? (v21 = v16 == -1) : (v21 = 0), v21))
  {
LABEL_21:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = v20 / v16;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v14, v14);
  v18[2] = a1;
  v18[3] = isClassOrObjCExistentialType | (2 * v22);
  return v18;
}

uint64_t (*default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject(&unk_1EEEBE9B8, 0x20, 7uLL);
  v4[2] = a1;
  v4[3] = a2;
  return _swift_displayCrashMessage;
}

void *_ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(atomic_ullong **a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, unint64_t a6, uint64_t a7)
{
  v82 = *(a6 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v69 - v17;
  v19 = *(*(v18 + 8) + 8);
  v20 = *(v19 + 112);
  v83 = v7;
  v22 = v20(v21, v19);
  v23 = *a1;
  v24 = (*a1)[2];
  v25 = __OFSUB__(v24, a2);
  v26 = v24 - a2;
  if (v25)
  {
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26 - a3;
  if (__OFSUB__(v26, a3))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v22;
  v29 = v22 - a2;
  if (__OFSUB__(v22, a2))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v25 = __OFSUB__(v29, v27);
  v30 = v29 - v27;
  if (v25)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v80 = v30;
  v77 = a5;
  v78 = a4;
  swift_getAssociatedTypeWitness(0, *(v19 + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v32 = v31;
  v33 = *(v31 - 1);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v74 = v23;
  v35 = v23 + v34;
  v36 = *(v33 + 72);
  v37 = a3;
  v38 = v36 * a2;
  v79 = v35;
  v76 = v37;
  v72 = &v35[v36 * a2];
  v73 = v28;
  v75 = &v72[v36 * v37];
  v39 = v28;
  v40 = v83;
  v41 = (*(a7 + 56))(v39, a6, a7);
  v42 = a7;
  v81 = a7;
  if (v41)
  {
    v43 = v41;
    v71 = v27;
    v44 = (*(v42 + 160))(a6);
    if (v36)
    {
      v45 = v44;
      v46 = v43 + v34;
      v47 = v44 - v46;
      if (v44 - v46 != 0x8000000000000000 || v36 != -1)
      {
        if (v47 / v36 < 0)
        {
          goto LABEL_25;
        }

        swift_arrayDestroy(v46, v47 / v36, v32);
        UnsafeMutablePointer.moveInitialize(from:count:)(v45, a2, v79, v32);
        if (v80 < 0)
        {
          goto LABEL_25;
        }

        v49 = &v45[v38];
        v50 = &v45[v38];
        v51 = v80;
        swift_arrayDestroy(v50, v80, v32);
        v78(v72, v76);
        UnsafeMutablePointer.moveInitialize(from:count:)(&v49[v36 * v51], v71, v75, v32);
        v52 = &v45[v36 * v73];
        v53 = v46 + *(v43 + 16) * v36 - v52;
        if (v53 != 0x8000000000000000 || v36 != -1)
        {
          if (((v53 / v36) & 0x8000000000000000) == 0)
          {
            swift_arrayDestroy(v52, v53 / v36, v32);
            *(v43 + 16) = 0;
            v43;
            v55 = *(v19 + 64);
            v56 = v81;
LABEL_24:
            v67 = v74;
            v74;
            v68 = v83;
            v55(&v84, a6, v19);
            (*(v82 + 8))(v68, a6);
            return (*(v56 + 32))(v67, v84, a6, v56);
          }

LABEL_25:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v55 = *(v19 + 64);
  result = (v55)(&v84, a6, v19);
  v58 = v84;
  v59 = v84 + a2;
  if (__OFADD__(v84, a2))
  {
    __break(1u);
  }

  else
  {
    v73 = v19;
    v60 = *(v82 + 16);
    v60(v71, v40, a6);
    if (v59 < v58)
    {
      goto LABEL_30;
    }

    v61 = *(v81 + 48);
    v62 = v61(v58, v59, v79, a6);
    result = (v78)(v62, v76);
    v25 = __OFADD__(v59, v80);
    v63 = v59 + v80;
    if (!v25)
    {
      v80 = v61;
      v64 = v83;
      (*(v73 + 72))(&v84, a6);
      v65 = v84;
      v60(v70, v64, a6);
      if (v65 >= v63)
      {
        v66 = v63;
        v56 = v81;
        (v80)(v66, v65, v75, a6, v81);
        v19 = v73;
        goto LABEL_24;
      }

LABEL_30:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject(*v0);
  *v0 = v1;
  if ((result & 1) == 0 || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v4 = v1;
      }

      else
      {
        v4 = (v1 & 0xFFFFFFFFFFFFFF8);
      }

      v3 = [v4 count];
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

Swift::Void __swiftcall Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v2 = *(v0 + 16);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v2, v2);
  v4 = *v1;
  if (isClassOrObjCExistentialType)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v1);
    *v1 = v4;
    if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || _swift_isClassOrObjCExistentialType(v2, v2) && (v4 < 0 || (v4 & 0x4000000000000000) != 0))
    {
      goto LABEL_6;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
    *v1 = v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      v6 = Array._getCount()();
      *v1 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v4, v2);
    }
  }
}

Swift::Void __swiftcall Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(Swift::Int oldCount)
{
  v4 = *v2;
  v5 = *(v1 + 16);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v5, v5);
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v7 = v4;
  }

  v8 = *(v7 + 24);
  if (oldCount + 1 > (v8 >> 1))
  {
    *v2 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, oldCount + 1, 1, *v2, v5);
  }
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

_OWORD *specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  return outlined init with take of Any(a2, (v3 + 32 * a1 + 32));
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2)
{
  v3 = *v2 & 0xFFFFFFFFFFFFFF8;
  *(v3 + 16) = result + 1;
  *(v3 + 8 * result + 32) = a2;
  return result;
}

uint64_t Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 1;
  v7 = *v3;
  v8 = *(a3 + 16);
  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
  }

  else
  {
    *(v7 + 16) = v6;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v8 - 1);
  v12 = *(v11 + 32);
  v13 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1;

  return v12(v13, a2, v8);
}

__objc2_class **specialized Array.append(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native(*v2);
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *v2 = v5;
  return result;
}

_OWORD *specialized Array.append(_:)(_OWORD *a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    *v1 = v3;
  }

  *(v3 + 16) = v6 + 1;
  result = outlined init with take of Any(a1, (v3 + 32 * v6 + 32));
  *v1 = v3;
  return result;
}

uint64_t Array.append(_:)(uint64_t a1, uint64_t a2)
{
  Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = *v2;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(*(a2 + 16), *(a2 + 16));
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v7 = v5;
  }

  v8 = *(v7 + 16);
  Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v8);

  return Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v8, a1, a2);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v1 = v4;
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  if (v9 - v11 < 0)
  {
LABEL_16:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized Sequence._copySequenceContents(initializing:)(&v42, &v4[2 * v11 + 4], v12, a1);
  if (result < v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = result;
  if (result)
  {
    v17 = v4[2];
    v18 = __OFADD__(v17, result);
    v19 = (v17 + result);
    if (v18)
    {
      __break(1u);
      goto LABEL_21;
    }

    v4[2] = v19;
  }

  result = v42;
  if (v16 != v12)
  {
    goto LABEL_14;
  }

  v12 = v4[2];
  v14 = v43;
  v15 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
LABEL_21:
    v22 = (v15 + 64) >> 6;
    if (v22 <= v2 + 1)
    {
      v23 = v2 + 1;
    }

    else
    {
      v23 = (v15 + 64) >> 6;
    }

    v24 = v23 - 1;
    do
    {
      v25 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_50:
        __break(1u);
        return result;
      }

      if (v25 >= v22)
      {
        v45 = v24;
        v46 = 0;
        goto LABEL_14;
      }

      v26 = *(v14 + 8 * v25);
      ++v2;
    }

    while (!v26);
    v39 = v15;
    v20 = (v26 - 1) & v26;
    v21 = __clz(__rbit64(v26)) | (v25 << 6);
    v2 = v25;
    goto LABEL_29;
  }

  v20 = (v46 - 1) & v46;
  v21 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v22 = (v44 + 64) >> 6;
LABEL_29:
  v40 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];
  v45 = v2;
  v46 = v20;
  v28;
  v30 = v41;
LABEL_31:
  while (1)
  {
    v31 = v4[3];
    v32 = (v31 >> 1);
    if ((v31 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v32)
    {
      goto LABEL_33;
    }

LABEL_30:
    v4[2] = v12;
  }

  v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v12 + 1, 1, v4);
  v30 = v41;
  v4 = v37;
  *v1 = v37;
  v32 = (v37[3] >> 1);
  if (v12 >= v32)
  {
    goto LABEL_30;
  }

LABEL_33:
  while (1)
  {
    v33 = &v4[2 * v12 + 4];
    *v33 = v29;
    v33[1] = v28;
    ++v12;
    if (!v20)
    {
      break;
    }

    result = v40;
LABEL_40:
    v36 = (*(result + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v20)))));
    v29 = *v36;
    v28 = v36[1];
    v20 &= v20 - 1;
    v44 = v39;
    v45 = v2;
    v46 = v20;
    v28;
    v30 = v41;
    if (v12 == v32)
    {
      v12 = v32;
      v4[2] = v32;
      goto LABEL_31;
    }
  }

  v34 = v2;
  result = v40;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_40;
    }
  }

  if (v22 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v22;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  v4[2] = v12;
LABEL_14:
  result = _sSh8IteratorV8_VariantOySS__GWOe_0(result);
  *v1 = v4;
  return result;
}