__objc2_class **specialized DiscontiguousSlice._copyToContiguousArray()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v43 - v7;
  swift_getAssociatedTypeWitness(255, a3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v4, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v12 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  swift_getAssociatedTypeWitness(0, *(a3 + 8), v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v17 = v16;
  _swift_isClassOrObjCExistentialType(v16, v16);
  v18 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v17);
  v49 = v17;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v52 = &_swiftEmptyArrayStorage;
    v22 = type metadata accessor for Array(0, v17, v19, v20);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v22, v23);
    v21 = _copyCollectionToContiguousArray<A>(_:)(&v52, v22, WitnessTable);
  }

  &_swiftEmptyArrayStorage;
  v52 = v21;
  v26 = *(a1 + *(type metadata accessor for DiscontiguousSlice(0, v4, a3, v25) + 36));
  v27 = v26[2];
  if (v27)
  {
    v28 = v13 + 16;
    v47 = a3 + 88;
    v48 = a1;
    v46 = v13 + 8;
    v26;
    v29 = 0;
    v30 = v50;
    do
    {
      if (v29 >= v27)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*(v13 + 16))(v15, v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29++, v12);
      v31 = *(a3 + 88);
      v45 = v28;
      v31(v15, v4, a3);
      (*(v13 + 8))(v15, v12);
      v44 = type metadata accessor for ContiguousArray(0, v49, v32, v33);
      v34 = v4;
      v35 = v4;
      v36 = v15;
      v37 = v13;
      v38 = v12;
      v39 = v51;
      v40 = swift_getAssociatedConformanceWitness(a3, v34, v51, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
      v41 = v39;
      v12 = v38;
      v13 = v37;
      v15 = v36;
      v4 = v35;
      ContiguousArray.append<A>(contentsOf:)(v30, v44, v41, *(v40 + 8));
      v28 = v45;
      v27 = v26[2];
    }

    while (v29 != v27);
    v21 = v52;
  }

  else
  {
    v26;
  }

  v26;
  return v21;
}

void *_ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5yXl_SiTg581_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_yXl_SiTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyyXlSiIsgyrzo_Tf1cn_nTf4ng_n(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, atomic_ullong *, atomic_ullong))
{
  if (a1 < 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v5, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v7 = AssociatedObject;
    AssociatedObject;
  }

  else
  {
    objc_sync_enter(v5);
    v8 = objc_getAssociatedObject(v5, &_swiftEmptyArrayStorage);
    if (v8)
    {
      v7 = v8;
      swift_retain_n(v8, 2);
    }

    else
    {
      v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
      v7;
      objc_setAssociatedObject(v5, &_swiftEmptyArrayStorage, v7, 1);
    }

    objc_sync_exit(v5);
    v7;
  }

  v9 = v7[2];
  v7;
  result = a2(&v11, v7 + 4, v9);
  if (!v2)
  {
    return v11;
  }

  return result;
}

id specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    goto LABEL_32;
  }

  v9 = a1;
  v10 = *v3;
  if (!(*v3 >> 62))
  {
    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (*(v11 + 16) >= a2)
    {
      goto LABEL_4;
    }

LABEL_32:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10 < 0)
  {
    v21 = *v3;
  }

  else
  {
    v21 = (v10 & 0xFFFFFFFFFFFFFF8);
  }

  if ([v21 count] < a2)
  {
    goto LABEL_32;
  }

LABEL_4:
  v12 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
    __break(1u);
    goto LABEL_34;
  }

  v11 = 1;
  v5 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    if (v4 < 0)
    {
      v22 = v4;
    }

    else
    {
      v22 = v11;
    }

    v23 = [v22 count];
    v14 = v23 + v5;
    if (!__OFADD__(v23, v5))
    {
      goto LABEL_8;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  v6 = *v3 >> 62;
  if (v6)
  {
    goto LABEL_35;
  }

  v13 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = v13 + v5;
  if (__OFADD__(v13, v5))
  {
    goto LABEL_40;
  }

LABEL_8:
  LODWORD(v15) = swift_isUniquelyReferenced_nonNull_bridgeObject(v4);
  *v3 = v4;
  if (v6)
  {
    LODWORD(v15) = 0;
  }

  if (v15 == 1)
  {
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v14 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }
  }

  v17 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (v6)
  {
    goto LABEL_50;
  }

  v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (v18 <= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15, v19, 1, v4);
    *v3 = v4;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    if (v12 < 0)
    {
      goto LABEL_41;
    }

    v9 = v16 + 32 + 8 * v9;
    swift_arrayDestroy(v9, v12, qword_1EEEAC710);
    if (!v5)
    {
      goto LABEL_24;
    }

    v15 = (v16 + 32 + 8 * a2);
    if (v4 >> 62)
    {
      break;
    }

    v17 = *(v16 + 16);
    if (!__OFSUB__(v17, a2))
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v15, &v17[-a2], (v9 + 8));
      v15 = *(v16 + 16);
      v17 = &v15[v5];
      if (!__OFADD__(v15, v5))
      {
        goto LABEL_23;
      }

LABEL_48:
      __break(1u);
    }

LABEL_49:
    __break(1u);
LABEL_50:
    if (v4 < 0)
    {
      v17 = v4;
    }

    v24 = v15;
    v18 = [v17 count];
    LOBYTE(v15) = v24;
  }

  if (v4 >= 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = v4;
  }

  v14 = v16 + 32 + 8 * a2;
  v15 = [v12 count];
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_49;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v16 + 32 + 8 * a2), &v15[-a2], (v9 + 8));
  v15 = [v12 count];
  v17 = &v15[v5];
  if (__OFADD__(v15, v5))
  {
    goto LABEL_48;
  }

LABEL_23:
  *(v16 + 16) = v17;
LABEL_24:
  *v9 = a3;
  *v3 = v4;

  return swift_unknownObjectRetain(a3);
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    goto LABEL_35;
  }

  v8 = a1;
  v9 = *v3;
  if (!(*v3 >> 62))
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (*(v10 + 16) >= a2)
    {
      goto LABEL_4;
    }

LABEL_35:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 < 0)
  {
    v21 = *v3;
  }

  else
  {
    v21 = (v9 & 0xFFFFFFFFFFFFFF8);
  }

  v22 = a3;
  v23 = [v21 count];
  a3 = v22;
  if (v23 < a2)
  {
    goto LABEL_35;
  }

LABEL_4:
  v11 = a2 - v8;
  if (__OFSUB__(a2, v8))
  {
    __break(1u);
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFFF8;
    v6 = a3 >> 62;
    if (!(a3 >> 62))
    {
      v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 - v11;
      if (!__OFSUB__(v12, v11))
      {
        goto LABEL_7;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      if (v4 < 0)
      {
        v27 = v4;
      }

      else
      {
        v27 = v10;
      }

      v28 = a3;
      v29 = [v27 count];
      a3 = v28;
      v15 = &v29[v13];
      if (!__OFADD__(v29, v13))
      {
        goto LABEL_9;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (a3 < 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = v10;
  }

  v25 = a3;
  v26 = [v24 count];
  a3 = v25;
  v12 = v26;
  v13 = &v26[-v11];
  if (__OFSUB__(v26, v11))
  {
    goto LABEL_42;
  }

LABEL_7:
  v4 = *v3;
  v10 = *v3 & 0xFFFFFFFFFFFFFF8;
  v5 = *v3 >> 62;
  if (v5)
  {
    goto LABEL_43;
  }

  v14 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = (v14 + v13);
  if (__OFADD__(v14, v13))
  {
    goto LABEL_48;
  }

LABEL_9:
  v32 = v6;
  v33 = a3;
  LODWORD(v16) = swift_isUniquelyReferenced_nonNull_bridgeObject(v4);
  *v3 = v4;
  if (v5)
  {
    LODWORD(v16) = 0;
  }

  if (v16 == 1)
  {
    v17 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v15 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }
  }

  v18 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (v5)
  {
    goto LABEL_58;
  }

  v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v20, 1, v4);
    *v3 = v4;
    v17 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    if (v11 < 0)
    {
      goto LABEL_49;
    }

    v15 = (v17 + 32);
    v8 = v17 + 32 + 8 * v8;
    swift_arrayDestroy(v8, v11, qword_1EEEAC710);
    if (!v13)
    {
      goto LABEL_25;
    }

    v16 = &v15[8 * a2];
    if (v4 >> 62)
    {
      break;
    }

    v18 = *(v17 + 16);
    if (!__OFSUB__(v18, a2))
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v16, &v18[-a2], (v8 + 8 * v12));
      v16 = *(v17 + 16);
      v18 = &v16[v13];
      if (!__OFADD__(v16, v13))
      {
        goto LABEL_24;
      }

LABEL_56:
      __break(1u);
    }

LABEL_57:
    __break(1u);
LABEL_58:
    if (v4 < 0)
    {
      v18 = v4;
    }

    v31 = v16;
    v19 = [v18 count];
    LOBYTE(v16) = v31;
  }

  if (v4 >= 0)
  {
    v11 = v17;
  }

  else
  {
    v11 = v4;
  }

  v30 = &v15[8 * a2];
  v15 = (v8 + 8 * v12);
  v16 = [v11 count];
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_57;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v30, &v16[-a2], (v8 + 8 * v12));
  v16 = [v11 count];
  v18 = &v16[v13];
  if (__OFADD__(v16, v13))
  {
    goto LABEL_56;
  }

LABEL_24:
  *(v17 + 16) = v18;
LABEL_25:
  if (v12 >= 1)
  {
    MEMORY[0x1EEE9AC00](v16);
    if (v32)
    {
      _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5yXl_ytTg581_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_yXl_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyyXlytIsgyrzo_Tf1ncn_n(v33, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    }

    else
    {
      specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(((v33 & 0xFFFFFFFFFFFFFF8) + 32), *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10), v12, v8);
    }
  }

  *v3 = v4;
}

unint64_t specialized static String.+ infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 && (a1 & ~a2 & 0x2000000000000000) == 0)
  {
    a4;
    return a3;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    a2;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v18 = specialized _SmallString.init(_:appending:)(a1, a2, a3, a4);
      if ((v19 & 1) == 0)
      {
        v21 = v18;
        a2;
        return v21;
      }

      goto LABEL_11;
    }
  }

  else
  {
    a2;
    if ((a4 & 0x2000000000000000) != 0)
    {
LABEL_11:
      v17 = HIBYTE(a4) & 0xF;
      goto LABEL_12;
    }
  }

  v17 = a3 & 0xFFFFFFFFFFFFLL;
LABEL_12:
  _StringGuts.append(_:)(a3, a4, 0, v17, v8, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

Swift::UInt64 specialized Collection.subscript.getter(Swift::UInt64 result, unint64_t a2, unint64_t a3)
{
  v3 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LODWORD(v4) = 1;
  }

  v5 = 11;
  if (v4)
  {
    v5 = 7;
  }

  v6 = 4 * v3;
  v7 = result >> 14;
  if (4 * v3 < result >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = v5 | (v3 << 16);
  v9 = result & 0xC;
  v10 = 4 << v4;
  v11 = v5 & 0xC;
  if ((result & 1) != 0 && v9 != v10 && v11 != v10)
  {
    return result;
  }

  if (v11 == v10)
  {
    v17._rawBits = result;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    result = v17._rawBits;
    if (v9 != v10)
    {
      goto LABEL_13;
    }
  }

  else if (v9 != v10)
  {
    goto LABEL_13;
  }

  v12 = rawBits;
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
  rawBits = v12;
  v7 = result >> 14;
LABEL_13:
  if (v6 < rawBits >> 14 || rawBits >> 14 < v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    if (rawBits)
    {
      return result;
    }

LABEL_23:
    v16 = result;
    _StringGuts.scalarAlignSlow(_:)(rawBits);
    return v16;
  }

  v13 = result;
  v14 = rawBits;
  v15._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
  rawBits = v14;
  result = v13 & 0xC | v15._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

  return result;
}

{
  v3 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LODWORD(v4) = 1;
  }

  v5 = 11;
  if (v4)
  {
    v5 = 7;
  }

  v6 = 4 * v3;
  v7 = result >> 14;
  if (4 * v3 < result >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = v5 | (v3 << 16);
  v9 = result & 0xC;
  v10 = 4 << v4;
  v11 = v5 & 0xC;
  if ((result & 1) != 0 && v9 != v10 && v11 != v10)
  {
    goto LABEL_17;
  }

  if (v11 == v10)
  {
    v17._rawBits = result;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    result = v17._rawBits;
    if (v9 != v10)
    {
      goto LABEL_13;
    }
  }

  else if (v9 != v10)
  {
    goto LABEL_13;
  }

  v12 = rawBits;
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
  rawBits = v12;
  v7 = result >> 14;
LABEL_13:
  if (v6 < rawBits >> 14 || rawBits >> 14 < v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    if (rawBits)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = result;
    v14 = rawBits;
    v15._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
    rawBits = v14;
    result = v13 & 0xC | v15._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  v16 = result;
  _StringGuts.scalarAlignSlow(_:)(rawBits);
  result = v16;
LABEL_17:
  if (result < 0x10000)
  {
    result |= 3uLL;
  }

  return result;
}

uint64_t specialized Collection.subscript.getter(Swift::String::Index a1, unint64_t a2, unint64_t a3)
{
  rawBits = a1._rawBits;
  v6 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v8 = a1._rawBits & 0xC;
  if ((a1._rawBits & 1) == 0 || v8 == v7)
  {
    if (v8 == v7)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v10 < rawBits >> 14)
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((rawBits & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(rawBits);
    }
  }

  else
  {
    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v9 < a1._rawBits >> 16)
    {
      goto LABEL_14;
    }
  }

  return 15;
}

Swift::Int specialized LazyMapSequence<>.formIndex(after:)(Swift::String::Index *a1, uint64_t a2, unint64_t a3)
{
  v6._rawBits = _StringGuts.validateCharacterIndex(_:)(a1->_rawBits)._rawBits;
  v7 = (v6._rawBits >> 8) & 0x3F;
  v8 = a3 & 0x2000000000000000;
  v9 = HIBYTE(a3) & 0xF;
  v10 = a2 & 0xFFFFFFFFFFFFLL;
  if (v7)
  {
    goto LABEL_27;
  }

  if (v8)
  {
    v11 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6._rawBits >> 14 == 4 * v11)
  {
    v7 = 0;
    goto LABEL_27;
  }

  v12 = v6._rawBits >> 16;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_55;
  }

  if (!v8)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v14 = a2 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      rawBits = v6._rawBits;
      v34 = v6._rawBits >> 16;
      v35 = _StringObject.sharedUTF8.getter(a2, a3);
      v12 = v34;
      v13 = v35;
      v6._rawBits = rawBits;
    }

    if (v12 + 1 != v14)
    {
      if (!v13)
      {
        goto LABEL_58;
      }

      v15 = *(v13 + v12);
      if (v15 == 2573 || (v15 & 0x80808080) != 0)
      {
        goto LABEL_55;
      }
    }

    v8 = 0;
LABEL_26:
    v7 = 1;
    goto LABEL_27;
  }

  v36 = a2;
  v37 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (v12 + 1 == v9 || ((v17 = *(&v36 + v12), v17 != 2573) ? (v18 = (v17 & 0x80808080) == 0) : (v18 = 0), v18))
  {
    v8 = 1;
    goto LABEL_26;
  }

LABEL_55:
  v30 = v6._rawBits;
  v7 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v12);
  v6._rawBits = v30;
LABEL_27:
  v19 = v6._rawBits + (v7 << 16);
  v20 = v19 & 0xFFFFFFFFFFFF0000;
  if (v8)
  {
    v21 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v21 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v22 = a3 & 0x1000000000000000;
  if (v20 >> 14 == 4 * v21)
  {
    result = 0;
LABEL_46:
    v20 |= result << 8;
    goto LABEL_47;
  }

  v24 = v19 >> 16;
  if (!v22)
  {
    if (v8)
    {
      v36 = a2;
      v37 = a3 & 0xFFFFFFFFFFFFFFLL;
      if (v24 + 1 == v9)
      {
        goto LABEL_45;
      }

      v25 = &v36;
LABEL_40:
      v26 = *(v25 + v24);
      if (v26 == 2573 || (v26 & 0x80808080) != 0)
      {
        goto LABEL_53;
      }

LABEL_45:
      v22 = 0;
      result = 1;
      goto LABEL_46;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v25 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = v19 >> 16;
      v25 = _StringObject.sharedUTF8.getter(a2, a3);
      v24 = v31;
      v10 = v32;
    }

    if (v24 + 1 == v10)
    {
      goto LABEL_45;
    }

    if (v25)
    {
      goto LABEL_40;
    }

LABEL_58:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_53:
  result = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v24);
  if (result <= 63)
  {
    goto LABEL_46;
  }

LABEL_47:
  v28 = (a2 & 0x800000000000000) != 0 || v22 == 0;
  v29 = 7;
  if (!v28)
  {
    v29 = 11;
  }

  a1->_rawBits = v20 | v29;
  return result;
}

uint64_t specialized LazyMapSequence<>.distance(from:to:)(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v7._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(a1)._rawBits;
  v8._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(a2)._rawBits;
  v9 = v7._rawBits >> 16;
  if (v7._rawBits >> 14 < v8._rawBits >> 14)
  {
    v10 = v8._rawBits >> 16;
    if (v9 < v8._rawBits >> 16)
    {
      v11 = 1;
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_19:
      v14 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v9) + v9;
      while (v14 < v10)
      {
        ++v11;
        v9 = v14;
        if ((a4 & 0x1000000000000000) != 0)
        {
          goto LABEL_19;
        }

LABEL_6:
        if ((a4 & 0x2000000000000000) != 0)
        {
          v25 = a3;
          v26 = a4 & 0xFFFFFFFFFFFFFFLL;
          v14 = v9 + 1;
          if (v9 + 1 != (HIBYTE(a4) & 0xF))
          {
            v16 = *(&v25 + v9);
            if (v16 == 2573 || (v16 & 0x80808080) != 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = a3 & 0xFFFFFFFFFFFFLL;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter(a3, a4);
          }

          v14 = v9 + 1;
          if (v9 + 1 != v13)
          {
            if (!v12)
            {
              goto LABEL_43;
            }

            v15 = *&v12[v9];
            if (v15 == 2573 || (v15 & 0x80808080) != 0)
            {
              goto LABEL_19;
            }
          }
        }
      }

      return v11;
    }

    return 0;
  }

  if (v8._rawBits >> 14 >= v7._rawBits >> 14)
  {
    return 0;
  }

  v18 = v8._rawBits >> 16;
  if (v8._rawBits >> 16 >= v9)
  {
    return 0;
  }

  v11 = -1;
  if (v9 >= 2)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v19 = 1;
LABEL_26:
    v9 -= v19;
    if (v18 >= v9)
    {
      return v11;
    }

    while (1)
    {
      --v11;
      if (v9 < 2)
      {
        break;
      }

LABEL_28:
      if ((a4 & 0x1000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = a3;
        v26 = a4 & 0xFFFFFFFFFFFFFFLL;
        v21 = *&v24[v9];
      }

      else
      {
        v20 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a3 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter(a3, a4);
          if (!v20)
          {
LABEL_43:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v21 = *&v20[v9 - 2];
      }

      if (v21 == 2573 || (v21 & 0x8080) != 0)
      {
LABEL_41:
        v19 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v9);
        goto LABEL_26;
      }

      if (v18 >= --v9)
      {
        return v11;
      }
    }
  }
}

unint64_t specialized LazyMapSequence<>.index(after:)(Swift::String::Index a1, uint64_t a2, unint64_t a3)
{
  v5._rawBits = _StringGuts.validateCharacterIndex(_:)(a1)._rawBits;
  v6 = (v5._rawBits >> 8) & 0x3F;
  v7 = a3 & 0x2000000000000000;
  v8 = HIBYTE(a3) & 0xF;
  v9 = a2 & 0xFFFFFFFFFFFFLL;
  if (v6)
  {
    goto LABEL_21;
  }

  if (v7)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5._rawBits >> 14 == 4 * v10)
  {
    v6 = 0;
    goto LABEL_21;
  }

  v11 = v5._rawBits >> 16;
  if ((a3 & 0x1000000000000000) == 0)
  {
    if (v7)
    {
      v34 = a2;
      v35 = a3 & 0xFFFFFFFFFFFFFFLL;
      if (v11 + 1 == v8 || (v15 = *(&v34 + v11), v15 != 2573) && (v15 & 0x80808080) == 0)
      {
        v7 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v13 = a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        rawBits = v5._rawBits;
        v32 = v5._rawBits >> 16;
        v33 = _StringObject.sharedUTF8.getter(a2, a3);
        v11 = v32;
        v12 = v33;
        v5._rawBits = rawBits;
      }

      if (v11 + 1 == v13)
      {
        goto LABEL_15;
      }

      if (!v12)
      {
        goto LABEL_52;
      }

      v14 = *(v12 + v11);
      if (v14 != 2573 && (v14 & 0x80808080) == 0)
      {
LABEL_15:
        v7 = 0;
LABEL_20:
        v6 = 1;
        goto LABEL_21;
      }
    }
  }

  v28 = v5._rawBits;
  v6 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v11);
  v5._rawBits = v28;
LABEL_21:
  v16 = v5._rawBits + (v6 << 16);
  v17 = v16 & 0xFFFFFFFFFFFF0000;
  if (v7)
  {
    v18 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v18 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v19 = a3 & 0x1000000000000000;
  if (v17 >> 14 == 4 * v18)
  {
    v20 = 0;
LABEL_40:
    v17 |= v20 << 8;
    goto LABEL_41;
  }

  v21 = v16 >> 16;
  if (!v19)
  {
    if (v7)
    {
      v34 = a2;
      v35 = a3 & 0xFFFFFFFFFFFFFFLL;
      if (v21 + 1 == v8)
      {
        goto LABEL_39;
      }

      v22 = &v34;
LABEL_34:
      v23 = *(v22 + v21);
      if (v23 == 2573 || (v23 & 0x80808080) != 0)
      {
        goto LABEL_47;
      }

LABEL_39:
      v19 = 0;
      v20 = 1;
      goto LABEL_40;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v22 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v29 = v16 >> 16;
      v22 = _StringObject.sharedUTF8.getter(a2, a3);
      v21 = v29;
      v9 = v30;
    }

    if (v21 + 1 == v9)
    {
      goto LABEL_39;
    }

    if (v22)
    {
      goto LABEL_34;
    }

LABEL_52:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_47:
  v20 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v21);
  if (v20 <= 63)
  {
    goto LABEL_40;
  }

LABEL_41:
  v25 = (a2 & 0x800000000000000) != 0 || v19 == 0;
  v26 = 7;
  if (!v25)
  {
    v26 = 11;
  }

  return v17 | v26;
}

void *specialized _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = a4 - v8;
  if (__OFSUB__(a4, v8))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v16 = result;
  v17 = *(*(a7 + 8) + 8);
  v18 = (*(v17 + 112))(a5, v17);
  v19 = __OFADD__(v18, v10);
  result = (v18 + v10);
  if (v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(newCount:requiredCapacity:)(result, result, a5, a7);
  v24 = v20;
  result = (*(v17 + 64))(&v23, a5, v17);
  if (!__OFSUB__(v16, v23))
  {
    MEMORY[0x1EEE9AC00](result);
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    v22[5] = a8;
    v22[6] = a3;
    _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v24, v21, a4, partial apply for closure #1 in _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:), v22, a5, a7);
    return v20;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized _UIntBuffer.capacity.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 56))();
  if (!v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 32 / v2;
}

uint64_t specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(uint64_t a1, Swift::String::Index a2, Class *a3, uint64_t a4)
{
  v9._rawBits = _StringGuts.validateScalarRange_5_7(_:)(a2, a2, *v4, v4[1])._rawBits;

  return _StringGuts.replaceSubrange<A>(_:with:)(v9._rawBits, v10._rawBits, a1, a3, a4);
}

uint64_t specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(uint64_t a1, unsigned int a2, const char *a3)
{
  v7 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  swift_getAssociatedTypeWitness(0, v11, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *v3;
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = *v3;
    while (v19 != a2)
    {
      v20 = v19 >= 0x100;
      v19 >>= 8;
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    v21 = *v3;
    while (v21 != a2)
    {
      v20 = v21 >= 0x100;
      v21 >>= 8;
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  if (v18 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = a1;
  v30 = v3;
  v23 = 0;
  if (v18 != a2)
  {
    v29 = v18;
    while (v18 >= v29 && v29 > a2)
    {
      if (HIBYTE(v23))
      {
        goto LABEL_30;
      }

      v23 |= v29 << (-(__clz(v23) & 0x18) & 0x18);
      v29 >>= 8;
      if (v29 == a2)
      {
        goto LABEL_14;
      }
    }

LABEL_29:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_14:
  (*(v7 + 16))(v9, v22, a3);
  (*(v11 + 32))(a3, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v25 = *(AssociatedConformanceWitness + 16);
  v25(&v31, v14, AssociatedConformanceWitness);
  if ((v31 & 0x100) == 0)
  {
    v26 = v31;
    while (!HIBYTE(v23))
    {
      v23 |= (v26 + 1) << (-(__clz(v23) & 0x18) & 0x18);
      v25(&v31, v14, AssociatedConformanceWitness);
      v26 = v31;
      if ((v31 & 0x100) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_18:
  result = (*(v15 + 8))(v17, v14);
  if (a2)
  {
    v28 = a2;
    while (v28 <= a2)
    {
      if (HIBYTE(v23))
      {
        goto LABEL_30;
      }

      v23 |= v28 << (-(__clz(v23) & 0x18) & 0x18);
      v20 = v28 >= 0x100;
      v28 >>= 8;
      if (!v20)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_29;
  }

LABEL_23:
  *v30 = v23;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, unsigned __int8 *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2(255, &a2[*a2], *a2 >> 32, 0, 0);
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, unsigned __int8 *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2(&a2[*a2], *a2 >> 32, 0, 0);
    *a1 = result;
  }

  return result;
}

unint64_t outlined consume of Mirror.AncestorRepresentation(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
    return a2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return *a1;
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(v3 + 24) & 0xFFFFFFFFFFFFLL) - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v3 + 32 + a2), v6, (v3 + 32 + a1 + a3));
  v7 = a1 + a3;
  if (__OFADD__(a1, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFADD__(v7, v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = *(v3 + 24) >> 63;

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v7 + v6, v8);
}

uint64_t specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a1 >> 16;
  v5 = a2 >> 16;
  v6 = v2[1];
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  v8 = v7 - v5 + v4;
  if (v8 >= 16)
  {
    v9 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v10 & 1) != 0 || v9 < v8)
    {
      v11 = _StringGuts.uniqueNativeCapacity.getter();
      if (v12)
      {
        v13 = v2[1];
        if ((v13 & 0x1000000000000000) != 0)
        {
          v14 = String.UTF8View._foreignCount()();
        }

        else if ((v13 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v13) & 0xF;
        }

        else
        {
          v14 = *v2 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v14 = 2 * v11;
      }

      if (v14 <= v8)
      {
        v15 = v8;
      }

      else
      {
        v15 = v14;
      }

      v16 = v2[1];
      if ((v16 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignGrow(_:)(v15);
      }

      else
      {
        v17 = *v2;
        if ((v16 & 0x2000000000000000) != 0)
        {
          v28[0] = *v3;
          v28[1] = v16 & 0xFFFFFFFFFFFFFFLL;
          v21 = HIBYTE(v16) & 0xF | 0xC000000000000000;
          if ((v16 & 0x4000000000000000) == 0)
          {
            v21 = HIBYTE(v16) & 0xF;
          }

          v22 = v21 | 0x3000000000000000;
          v20 = _allocateStringStorage(codeUnitCapacity:)(v15);
          *(v20 + 16) = v23;
          *(v20 + 24) = v22;
          if (v23 < 0)
          {
            *__StringStorage._breadcrumbsAddress.getter() = 0;
            v22 = *(v20 + 24);
          }

          *(v20 + 32 + (v22 & 0xFFFFFFFFFFFFLL)) = 0;
          specialized UnsafeMutablePointer.initialize(from:count:)(v28, HIBYTE(v16) & 0xF, (v20 + 32));
        }

        else
        {
          if ((v17 & 0x1000000000000000) != 0)
          {
            v18 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v19 = v17 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v15;
            v18 = _StringObject.sharedUTF8.getter(*v3, v3[1]);
            v15 = v27;
          }

          v20 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v18, v19, v15, v17 < 0);
        }

        v24 = *(v20 + 24);
        v16;
        *v3 = v24;
        v3[1] = v20;
      }
    }
  }

  v25 = v3[1] & 0xFFFFFFFFFFFFFFFLL;
  specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(v4, v5, 0);
  *v3 = *(v25 + 24);
  return v4;
}

uint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v7 = *v3;
  v6 = v3[1];
  if ((*v3 & ~v6 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    return specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(a1, a2);
  }

  v57 = a2;
  v9 = _StringGuts.nativeCapacity.getter(v7, v6);
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    if (v9 >= 16)
    {
      v12 = _StringGuts.uniqueNativeCapacity.getter();
      if ((v13 & 1) != 0 || v12 < v11)
      {
        _StringGuts.grow(_:)(v11);
      }
    }
  }

  v14._rawBits = a1;
  v15 = specialized Collection.subscript.getter(v14, v7, v6);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v20;
  v22._rawBits = v15;
  v23._rawBits = v17;
  v24 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v22, v23, v19, v21);
  v21;
  v25 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v24, 1);
  if (!v26 || ((v27 = v25, v28 = v26, v24, v29 = specialized static String.+ infix(_:_:)(0, 0xE000000000000000, v27, v28), v31 = v30, 0xE000000000000000, v28, (v31 & 0x2000000000000000) != 0) ? (v8 = HIBYTE(v31) & 0xF) : (v8 = v29 & 0xFFFFFFFFFFFFLL), (specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0), v32 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(&_swiftEmptyArrayStorage, 1), !v33) || (v34 = v32, v35 = v33, &_swiftEmptyArrayStorage, v36 = specialized static String.+ infix(_:_:)(v29, v31, v34, v35), v38 = v37, v31, v35, v39 = specialized Collection.subscript.getter(v57, v7, v6), v41 = v40, v43 = v42, v45 = v44, v44, v46._rawBits = v39, v47._rawBits = v41, v48 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v46, v47, v43, v45), v45, v49 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v48, 1), !v50)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v51 = v49;
  v52 = v50;
  v48;
  v53 = specialized static String.+ infix(_:_:)(v36, v38, v51, v52);
  v55 = v54;
  v6;
  v38;
  v52;
  *v3 = v53;
  v3[1] = v55;
  return v8;
}

uint64_t specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::String::Index a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = (*v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = a1 & 0xC;
  v7 = 4 << v5;
  v8 = a2._rawBits & 0xC;
  if ((a1 & 1) != 0 && v6 != v7 && (a2._rawBits & 1) != 0 && v8 != v7)
  {
    v9 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v9 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v9 < a2._rawBits >> 16)
    {
      v10 = a1;
      rawBits = a2._rawBits;
      isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
      a2._rawBits = rawBits;
      v13 = isExecutableLinkedOnOrAfter;
      a1 = v10;
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

  if (v8 == v7)
  {
    v17 = a1;
    a2._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a1 = v17;
    if (v6 != v7)
    {
      goto LABEL_14;
    }

LABEL_27:
    v18 = a2._rawBits;
    a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v18;
    goto LABEL_14;
  }

  if (v6 == v7)
  {
    goto LABEL_27;
  }

LABEL_14:
  v14 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v14 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v14 || a2._rawBits >> 14 < a1 >> 14)
  {
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    if (a2._rawBits)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v19 = a1;
    v20 = a2._rawBits;
    v21._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v20;
    a1 = v19 & 0xC | v21._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v20)
    {
      goto LABEL_23;
    }
  }

  v22 = a1;
  v23 = a2._rawBits;
  v24 = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a1 = v22;
  a2._rawBits = v23 & 0xC | v24 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_23:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1, a2._rawBits);
}

uint64_t specialized static String._uncheckedFromASCII(_:)(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 15)
  {
    v4 = a2 | 0xF000000000000000;
    v6 = _allocateStringStorage(codeUnitCapacity:)(a2);
    *(v6 + 16) = v7;
    *(v6 + 24) = v4;
    if (v7 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v4 = *(v6 + 24);
    }

    *(v6 + 32 + (v4 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v6 + 32));
    return *(v6 + 24);
  }

  if (a2 >= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = a2;
  }

  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 > 3)
  {
    v11 = v9 & 0xC;
    a3.i32[0] = *a1;
    v12 = vmovl_u16(*&vmovl_u8(a3));
    v13.i64[0] = v12.u32[0];
    v13.i64[1] = v12.u32[1];
    v14.i64[0] = 255;
    v14.i64[1] = 255;
    v15 = vandq_s8(v13, v14);
    v13.i64[0] = v12.u32[2];
    v13.i64[1] = v12.u32[3];
    v16 = vshlq_u64(vandq_s8(v13, v14), xmmword_18071DBA0);
    v17.i32[1] = 0;
    v18 = vshlq_u64(v15, xmmword_18071DBB0);
    if (v11 != 4)
    {
      v17.i32[0] = *(a1 + 4);
      v19 = vmovl_u16(*&vmovl_u8(v17));
      v20.i64[0] = v19.u32[2];
      v20.i64[1] = v19.u32[3];
      v21 = vandq_s8(v20, v14);
      v20.i64[0] = v19.u32[0];
      v20.i64[1] = v19.u32[1];
      v16 = vorrq_s8(vshlq_u64(v21, xmmword_18071DBD0), v16);
      v18 = vorrq_s8(vshlq_u64(vandq_s8(v20, v14), xmmword_18071DBC0), v18);
    }

    v22 = vorrq_s8(v18, v16);
    v8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    if (v9 == v11)
    {
      goto LABEL_19;
    }

    v10 = 8 * v11;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = 0;
  }

  v23 = v9 - v11;
  v24 = (a1 + v11);
  do
  {
    v25 = *v24++;
    *&v8 |= v25 << (v10 & 0x38);
    v10 += 8;
    --v23;
  }

  while (v23);
LABEL_19:
  v26 = 0;
  v27 = a2 - 8;
  if (a2 > 8)
  {
    v28 = 0;
    v29 = (a1 + 8);
    do
    {
      v30 = *v29++;
      v26 |= v30 << v28;
      v28 += 8;
      --v27;
    }

    while (v27);
  }

  return v8;
}

uint64_t specialized UInt8.init(ascii:)(uint64_t result)
{
  if (result >= 0x80)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

int64_t specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(int64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v11 = _allocateStringStorage(codeUnitCapacity:)(a1);
  *(v11 + 16) = v12;
  *(v11 + 24) = 0x3000000000000000;
  if (v12 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v13 = *(v11 + 24) & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
  }

  *(v11 + 32 + v13) = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  closure #1 in StaticBigInt.debugDescription.getter(v11 + 32, a1, a2, a3 & 1, a4, a5);
  if (v5)
  {
    v11;
  }

  else
  {
    *(v11 + 24) = a2 | 0x3000000000000000;
    *(v11 + 32 + (a2 & 0xFFFFFFFFFFFFLL)) = 0;
  }

  return v11;
}

uint64_t specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(int64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v7 = specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(a1, a2, a3, a4, a5);
  if (v6)
  {
    return v5;
  }

  v8 = v7;
  v104 = 0;
  v9 = (v7 + 32);
  v10 = *(v7 + 24) & 0xFFFFFFFFFFFFLL;
  if (_allASCII(_:)((v7 + 32), v10) || !v10)
  {
    v13 = 1;
LABEL_47:
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v10, v13 & 1);
    return *(v8 + 24);
  }

  v11 = 0;
  v12 = v8 + v10 + 32;
  v13 = 1;
  v14 = v9;
  v15 = v9;
  while (1)
  {
    v17 = *v15++;
    v16 = v17;
    if ((v17 & 0x80000000) == 0)
    {
      v18 = 1;
      goto LABEL_7;
    }

    if ((v16 + 11) < 0xCDu)
    {
      LOBYTE(v102) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v16);
      goto LABEL_49;
    }

    if (v16 >= 0xE0u)
    {
      break;
    }

    if (v15 == v12 || (*v15 & 0xC0) != 0x80)
    {
LABEL_168:
      LOBYTE(v102) = 4;
      goto LABEL_49;
    }

    v13 = 0;
    v15 = v14 + 2;
    v18 = 2;
LABEL_7:
    v11 += v18;
    v14 = v15;
    if (v15 == v12)
    {
      goto LABEL_47;
    }
  }

  if (v16 == 224)
  {
    if (v15 == v12)
    {
      goto LABEL_168;
    }

    if (v14[1] - 192 <= 0xFFFFFFDF)
    {
      goto LABEL_169;
    }

    goto LABEL_31;
  }

  if (v16 <= 0xECu)
  {
    goto LABEL_29;
  }

  if (v16 == 237)
  {
    if (v15 == v12)
    {
      goto LABEL_168;
    }

    v19 = v14[1];
    if (v19 > 0x9F || (v19 & 0xC0) != 0x80)
    {
      LOBYTE(v102) = 1;
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  if (v16 <= 0xEFu)
  {
LABEL_29:
    if (v15 == v12 || (v14[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

LABEL_31:
    if (v14 + 2 == v12 || (v14[2] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v13 = 0;
    v15 = v14 + 3;
    v18 = 3;
    goto LABEL_7;
  }

  if (v16 == 240)
  {
    if (v15 == v12)
    {
      goto LABEL_168;
    }

    if (v14[1] - 192 <= 0xFFFFFFCF)
    {
LABEL_169:
      LOBYTE(v102) = 3;
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (v16 <= 0xF3u)
  {
    if (v15 == v12 || (v14[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    goto LABEL_41;
  }

  if (v15 == v12)
  {
    goto LABEL_168;
  }

  v20 = v14[1];
  if (v20 <= 0x8F && (v20 & 0xC0) == 0x80)
  {
LABEL_41:
    if (v14 + 2 == v12 || (v14[2] & 0xC0) != 0x80 || v14 + 3 == v12 || (v14[3] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v13 = 0;
    v15 = v14 + 4;
    v18 = 4;
    goto LABEL_7;
  }

  LOBYTE(v102) = 2;
LABEL_49:
  swift_willThrowTypedImpl(&v102, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v21 = specialized Collection.subscript.getter(v11, v9, v10);
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v21;
  if (v21 != v22)
  {
    specialized Slice.subscript.getter(v21, v21, v22, v23, v24);
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_173;
    }
  }

  v30 = v25;
  if (v29 != v26)
  {
    v31 = specialized Slice.subscript.getter(v29, v25, v26, v27, v28);
    v32 = __OFADD__(v29, 1);
    v33 = v29 + 1;
    if (v32)
    {
      goto LABEL_173;
    }

    v30 = v25;
    if ((v31 & 0xC0) == 0x80)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_180;
      }

      if (v25 + 1 <= v25)
      {
        goto LABEL_173;
      }

      if (v33 != v26)
      {
        v34 = specialized Slice.subscript.getter(v33, v25, v26, v27, v28);
        v32 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v32)
        {
          goto LABEL_173;
        }

        if ((v34 & 0xC0) == 0x80)
        {
          v32 = __OFADD__(v30, 1);
          v30 = v25 + 2;
          if (v32)
          {
            goto LABEL_180;
          }

          if (v25 + 2 <= v25)
          {
            goto LABEL_173;
          }

          if (v35 != v26)
          {
            v36 = specialized Slice.subscript.getter(v35, v25, v26, v27, v28);
            if (v35 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_173;
            }

            if ((v36 & 0xC0) == 0x80)
            {
              v32 = __OFADD__(v30, 1);
              v30 = v25 + 3;
              if (!v32)
              {
                if (v25 + 3 > v25)
                {
                  goto LABEL_66;
                }

LABEL_173:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_180:
              __break(1u);
              goto LABEL_173;
            }
          }
        }
      }
    }

LABEL_66:
    if (v30 < v25)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v37 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
    goto LABEL_173;
  }

  if (v26 < v37)
  {
    goto LABEL_173;
  }

  v38 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v25, v37, v27, v28);
  v40 = v39;
  v97 = v8;
  v41 = *(v8 + 24);
  v102 = 0;
  v103 = 0xE000000000000000;
  v42 = v41 & 0xFFFFFFFFFFFFLL;
  if ((v41 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v43 = v42 + 15;
    v44 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v45 & 1) != 0 || v44 < v43)
    {
      v47 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v47 <= v43)
      {
        v47 = v42 + 15;
      }

      if (v46)
      {
        v48 = v42 + 15;
      }

      else
      {
        v48 = v47;
      }

      v100 = 0;
      v101 = 0;
      v49 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v100, 0, v48, 1);
      v50 = *(v49 + 24);
      0xE000000000000000;
      v102 = v50;
      v103 = v49;
    }
  }

  v51 = v40;
  v52 = v38;
LABEL_79:
  if (v52 < 0)
  {
LABEL_170:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v42;
  if (v42 < v52)
  {
    goto LABEL_173;
  }

  __n = v52;
  v55 = v102;
  v54 = v103;
  v56 = v102 & 0xFFFFFFFFFFFFLL;
  v57 = HIBYTE(v103) & 0xF;
  if ((v103 & 0x2000000000000000) != 0)
  {
    v58 = HIBYTE(v103) & 0xF;
  }

  else
  {
    v58 = v102 & 0xFFFFFFFFFFFFLL;
  }

  v59 = v58 + v53 + 3;
  if (__OFADD__(v58 + v53, 3))
  {
    __break(1u);
    goto LABEL_173;
  }

  v60 = v51;
  if (v59 < 16)
  {
LABEL_89:
    v63 = v60;
    v64 = v9;
  }

  else
  {
    v99 = v103;
    v61 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v62 & 1) == 0 && v61 >= v59)
    {
      v54 = v99;
      goto LABEL_89;
    }

    v65 = _StringGuts.uniqueNativeCapacity.getter();
    if (v66)
    {
      v67 = v99;
      if ((v99 & 0x1000000000000000) != 0)
      {
        v58 = String.UTF8View._foreignCount()();
      }

      v68 = v99 & 0x1000000000000000;
      if (v58 <= v59)
      {
        v58 = v59;
      }
    }

    else
    {
      if (2 * v65 <= v59)
      {
        v58 += v53 + 3;
      }

      else
      {
        v58 = 2 * v65;
      }

      v67 = v99;
      v68 = v99 & 0x1000000000000000;
    }

    v63 = v60;
    if (v68)
    {
      _StringGuts._foreignGrow(_:)(v58);
      v54 = v103;
      v64 = v9;
    }

    else
    {
      v64 = v9;
      if ((v67 & 0x2000000000000000) != 0)
      {
        v70 = (v67 >> 62) & 1;
        v100 = v55;
        v101 = v67 & 0xFFFFFFFFFFFFFFLL;
        v69 = &v100;
        v71 = v57;
      }

      else
      {
        if ((v55 & 0x1000000000000000) != 0)
        {
          v69 = ((v67 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v69 = _StringObject.sharedUTF8.getter(v55, v67);
          v56 = v95;
        }

        v70 = v55 >> 63;
        v71 = v56;
      }

      v72 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v69, v71, v58, v70);
      v67;
      v103 = v72;
      v54 = v72;
    }
  }

  v73 = v54 & 0xFFFFFFFFFFFFFFFLL;
  v74 = (v54 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v75 = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 24);
  specialized UnsafeMutablePointer.initialize(from:count:)(v64, __n, (v74 + (*((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
  v76 = (*v75 & 0xFFFFFFFFFFFFLL) + __n;
  v77 = v76 | 0x3000000000000000;
  *v75 = v76 | 0x3000000000000000;
  *(v74 + (v76 & 0xFFFFFFFFFFFFLL)) = 0;
  v78 = *(v73 + 16);
  if (v78 < 0)
  {
    v79 = ((v74 + (v78 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v80 = *v79;
    *v79 = 0;
    v80;
    v77 = *v75;
  }

  v102 = v77;
  v81 = v104;
  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v102);
  if (v53 < v63)
  {
    goto LABEL_170;
  }

  if (v63 < 0)
  {
    goto LABEL_173;
  }

  v42 = v53 - v63;
  if (v53 - v63 < 0)
  {
    goto LABEL_173;
  }

  v104 = v81;
  v9 = &v64[v63];
  if (!_allASCII(_:)(&v64[v63], v53 - v63) && v53 != v63)
  {
    v82 = 0;
    v83 = &v64[v53];
    v84 = v9;
    v85 = v9;
    do
    {
      v87 = *v85++;
      v86 = v87;
      if ((v87 & 0x80000000) == 0)
      {
        v88 = 1;
        goto LABEL_117;
      }

      if ((v86 + 11) <= 0xCCu)
      {
        LOBYTE(v100) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v86);
        goto LABEL_157;
      }

      if (v86 < 0xE0u)
      {
        if (v85 == v83 || (*v85 & 0xC0) != 0x80)
        {
LABEL_159:
          LOBYTE(v100) = 4;
          goto LABEL_157;
        }

        v85 = v84 + 2;
        v88 = 2;
      }

      else
      {
        if (v86 == 224)
        {
          if (v85 == v83)
          {
            goto LABEL_159;
          }

          if (v84[1] - 192 <= 0xFFFFFFDF)
          {
            goto LABEL_160;
          }

          goto LABEL_141;
        }

        if (v86 <= 0xECu)
        {
          goto LABEL_139;
        }

        if (v86 == 237)
        {
          if (v85 == v83)
          {
            goto LABEL_159;
          }

          v89 = v84[1];
          if (v89 > 0x9F || (v89 & 0xC0) != 0x80)
          {
            LOBYTE(v100) = 1;
            goto LABEL_157;
          }

          goto LABEL_141;
        }

        if (v86 <= 0xEFu)
        {
LABEL_139:
          if (v85 == v83 || (v84[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

LABEL_141:
          if (v84 + 2 == v83 || (v84[2] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

          v85 = v84 + 3;
          v88 = 3;
          goto LABEL_117;
        }

        if (v86 == 240)
        {
          if (v85 == v83)
          {
            goto LABEL_159;
          }

          if (v84[1] - 192 <= 0xFFFFFFCF)
          {
LABEL_160:
            LOBYTE(v100) = 3;
            goto LABEL_157;
          }
        }

        else if (v86 <= 0xF3u)
        {
          if (v85 == v83 || (v84[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }
        }

        else
        {
          if (v85 == v83)
          {
            goto LABEL_159;
          }

          v90 = v84[1];
          if (v90 > 0x8F || (v90 & 0xC0) != 0x80)
          {
            LOBYTE(v100) = 2;
LABEL_157:
            swift_willThrowTypedImpl(&v100, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v91 = specialized Collection.subscript.getter(v82, v9, v42);
            v52 = findInvalidRange #1 (_:) in validateUTF8(_:)(v91, v92, v93, v94);
            if (!v42)
            {
              v75 = &v102;
              goto LABEL_166;
            }

            goto LABEL_79;
          }
        }

        if (v84 + 2 == v83 || (v84[2] & 0xC0) != 0x80 || v84 + 3 == v83 || (v84[3] & 0xC0) != 0x80)
        {
          goto LABEL_159;
        }

        v85 = v84 + 4;
        v88 = 4;
      }

LABEL_117:
      v82 += v88;
      v84 = v85;
    }

    while (v85 != v83);
  }

  __StringStorage.appendInPlace(_:isASCII:)(v9, v42, 0);
LABEL_166:
  v5 = *v75;
  v97;
  return v5;
}

unint64_t specialized String.init(validatingUTF8:)(char *a1)
{
  v2 = _swift_stdlib_strlen(a1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_148;
  }

  v3 = v2;
  if (_allASCII(_:)(a1, v2))
  {
    if (v3)
    {
      if (v3 > 0xF)
      {
LABEL_5:
        v5 = v3 | 0xC000000000000000;
LABEL_6:
        v6 = v5 | 0x3000000000000000;
        v7 = _allocateStringStorage(codeUnitCapacity:)(v3);
        *(v7 + 16) = v8;
        *(v7 + 24) = v6;
        if (v8 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v6 = *(v7 + 24);
        }

        *(v7 + 32 + (v6 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(a1, v3, (v7 + 32));
        return *(v7 + 24);
      }

      v35 = v3 > 8;
      v36 = 8;
      if (v3 < 8)
      {
        v36 = v3;
      }

      if (v36 >= 4)
      {
        goto LABEL_104;
      }

      goto LABEL_96;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v10 = 0;
  v11 = &a1[v3];
  v12 = 1;
  v13 = a1;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v14 = (v13 + 1);
          v15 = *v13;
          if (v15 < 0)
          {
            break;
          }

          ++v10;
          ++v13;
          if (v14 == v11)
          {
            if (v3 <= 15)
            {
              goto LABEL_101;
            }

            v5 = v3;
            if ((v12 & 1) == 0)
            {
              goto LABEL_6;
            }

            goto LABEL_5;
          }
        }

        v16 = *v13;
        if ((v15 + 11) <= 0xCCu)
        {
          v153 = _diagnoseInvalidUTF8MultiByteLeading(_:)(v15);
          goto LABEL_56;
        }

        if (v16 > 0xDF)
        {
          break;
        }

        if (v14 == v11 || (*v14 & 0xC0) != 0x80)
        {
LABEL_100:
          v153 = 4;
          goto LABEL_56;
        }

        v12 = 0;
        v13 += 2;
        v10 += 2;
        if (v13 == v11)
        {
          goto LABEL_52;
        }
      }

      if (v16 != 224)
      {
        break;
      }

      if (v14 == v11)
      {
        goto LABEL_100;
      }

      if (v13[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_135;
      }

LABEL_36:
      if (v13 + 2 == v11 || (v13[2] & 0xC0) != 0x80)
      {
        goto LABEL_100;
      }

      v12 = 0;
      v13 += 3;
      v10 += 3;
      if (v13 == v11)
      {
        goto LABEL_52;
      }
    }

    if (v16 <= 0xEC)
    {
      goto LABEL_34;
    }

    if (v16 == 237)
    {
      if (v14 == v11)
      {
        goto LABEL_100;
      }

      v17 = v13[1];
      if (v17 <= 0x9F && (v17 & 0xC0) == 0x80)
      {
        goto LABEL_36;
      }

      v153 = 1;
LABEL_56:
      swift_willThrowTypedImpl(&v153, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      v19 = specialized Collection.subscript.getter(v10, a1, v3);
      v23 = v20;
      v24 = v21;
      v25 = v22;
      v26 = v19;
      if (v19 != v20)
      {
        v27 = v19;
        specialized Slice.subscript.getter(v19, v19, v20, v21, v22);
        v26 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_148;
        }

        v19 = v27;
      }

      v28 = v19;
      if (v26 == v23)
      {
        goto LABEL_90;
      }

      if (v23 <= v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = v23;
      }

      if (v25 <= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v25;
      }

      if (v26 < v19 || v26 >= v23 || v26 < 0 || v26 >= v25)
      {
        goto LABEL_148;
      }

      v28 = v19;
      if ((*(v24 + v26) & 0xC0) == 0x80)
      {
        v28 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_147;
        }

        if (v19 + 1 <= v19)
        {
          goto LABEL_148;
        }

        v31 = v26 + 1;
        if (v26 + 1 == v23)
        {
          goto LABEL_89;
        }

        if (v26 < v19 || v31 == v29 || v26 < 0 || v31 == v30)
        {
          goto LABEL_148;
        }

        if ((*(v24 + v31) & 0xC0) != 0x80)
        {
          goto LABEL_89;
        }

        v32 = __OFADD__(v28, 1);
        v28 = v19 + 2;
        if (v32)
        {
          goto LABEL_147;
        }

        if (v19 + 2 <= v19)
        {
          goto LABEL_148;
        }

        v33 = v26 + 2;
        if (v26 + 2 == v23)
        {
          goto LABEL_89;
        }

        if (v26 < v19 || v33 == v29 || v26 < 0 || v33 == v30)
        {
          goto LABEL_148;
        }

        if ((*(v24 + v33) & 0xC0) != 0x80)
        {
          goto LABEL_89;
        }

        v32 = __OFADD__(v28, 1);
        v28 = v19 + 3;
        if (v32)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (v19 + 3 <= v19)
        {
          goto LABEL_148;
        }
      }

LABEL_89:
      if (v28 < v19)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_90:
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
      }

      else if (v23 >= v34)
      {
        _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v19, v34, v24, v25);
        return 0;
      }

LABEL_148:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v16 <= 0xEF)
    {
LABEL_34:
      if (v14 == v11 || (v13[1] & 0xC0) != 0x80)
      {
        goto LABEL_100;
      }

      goto LABEL_36;
    }

    if (v16 == 240)
    {
      if (v14 == v11)
      {
        goto LABEL_100;
      }

      if (v13[1] - 192 < 0xFFFFFFD0)
      {
LABEL_135:
        v153 = 3;
        goto LABEL_56;
      }
    }

    else if (v16 <= 0xF3)
    {
      if (v14 == v11 || (v13[1] & 0xC0) != 0x80)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v14 == v11)
      {
        goto LABEL_100;
      }

      v18 = v13[1];
      if (v18 > 0x8F || (v18 & 0xC0) != 0x80)
      {
        v153 = 2;
        goto LABEL_56;
      }
    }

    if (v13 + 2 == v11 || (v13[2] & 0xC0) != 0x80 || v13 + 3 == v11 || (v13[3] & 0xC0) != 0x80)
    {
      goto LABEL_100;
    }

    v12 = 0;
    v13 += 4;
    v10 += 4;
  }

  while (v13 != v11);
LABEL_52:
  v5 = v3;
  if (v3 > 15)
  {
    goto LABEL_6;
  }

LABEL_101:
  v35 = v3 > 8;
  v36 = 8;
  if (v3 < 8)
  {
    v36 = v3;
  }

  if (v36 < 4)
  {
LABEL_96:
    result = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_115;
  }

LABEL_104:
  if (v36 >= 0x10)
  {
    v38 = v36 & 0xFFFFFFFFFFFFFFF0;
    v40 = xmmword_18071DBF0;
    v41 = xmmword_18071DC00;
    v42 = xmmword_18071DC10;
    v43 = xmmword_18071DC20;
    v39 = 8 * (v36 & 0xFFFFFFFFFFFFFFF0);
    v44 = 0uLL;
    v45 = xmmword_18071DBD0;
    v46 = xmmword_18071DBC0;
    v4 = vdupq_n_s64(0x38uLL);
    v47 = v36 & 0xFFFFFFFFFFFFFFF0;
    v48 = vdupq_n_s64(0x80uLL);
    v49 = a1;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = xmmword_18071DBA0;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = xmmword_18071DBB0;
    v56 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    do
    {
      v59 = *v49++;
      v60 = vmovl_u8(*v59.i8);
      v61 = vmovl_high_u16(v60);
      v62.i64[0] = v61.u32[2];
      v62.i64[1] = v61.u32[3];
      v63 = v62;
      v64 = vmovl_high_u8(v59);
      v65 = vmovl_u16(*v64.i8);
      v62.i64[0] = v65.u32[2];
      v62.i64[1] = v65.u32[3];
      v66 = v62;
      v62.i64[0] = v65.u32[0];
      v62.i64[1] = v65.u32[1];
      v67 = v62;
      v62.i64[0] = v61.u32[0];
      v62.i64[1] = v61.u32[1];
      v68 = v62;
      v69 = vmovl_u16(*v60.i8);
      v62.i64[0] = v69.u32[2];
      v62.i64[1] = v69.u32[3];
      v70 = v62;
      v71 = vmovl_high_u16(v64);
      v62.i64[0] = v71.u32[0];
      v62.i64[1] = v71.u32[1];
      v72 = v62;
      v62.i64[0] = v69.u32[0];
      v62.i64[1] = v69.u32[1];
      v73 = v62;
      v62.i64[0] = v71.u32[2];
      v62.i64[1] = v71.u32[3];
      v53 = vorrq_s8(vshlq_u64(v63, vandq_s8(v45, v4)), v53);
      v56 = vorrq_s8(vshlq_u64(v66, vandq_s8(v42, v4)), v56);
      v54 = vorrq_s8(vshlq_u64(v67, vandq_s8(v43, v4)), v54);
      v51 = vorrq_s8(vshlq_u64(v68, vandq_s8(v46, v4)), v51);
      v50 = vorrq_s8(vshlq_u64(v70, vandq_s8(v52, v4)), v50);
      v57 = vorrq_s8(vshlq_u64(v72, vandq_s8(v41, v4)), v57);
      v44 = vorrq_s8(vshlq_u64(v73, vandq_s8(v55, v4)), v44);
      v58 = vorrq_s8(vshlq_u64(v62, vandq_s8(v40, v4)), v58);
      v46 = vaddq_s64(v46, v48);
      v52 = vaddq_s64(v52, v48);
      v55 = vaddq_s64(v55, v48);
      v45 = vaddq_s64(v45, v48);
      v43 = vaddq_s64(v43, v48);
      v42 = vaddq_s64(v42, v48);
      v41 = vaddq_s64(v41, v48);
      v40 = vaddq_s64(v40, v48);
      v47 -= 16;
    }

    while (v47);
    v74 = vorrq_s8(vorrq_s8(vorrq_s8(v44, v54), vorrq_s8(v51, v57)), vorrq_s8(vorrq_s8(v50, v56), vorrq_s8(v53, v58)));
    result = vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    if (v36 == v38)
    {
      goto LABEL_117;
    }

    if ((v36 & 0xC) != 0)
    {
      goto LABEL_110;
    }

    v37 = 8 * (v36 & 0xFFFFFFFFFFFFFFF0);
LABEL_115:
    v91 = v36 - v38;
    v92 = &a1[v38];
    do
    {
      v93 = *v92++;
      result |= v93 << (v37 & 0x38);
      v37 += 8;
      --v91;
    }

    while (v91);
    goto LABEL_117;
  }

  result = 0;
  v39 = 0;
  v38 = 0;
LABEL_110:
  v75 = v38;
  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = 8 * (v36 & 0xFFFFFFFFFFFFFFFCLL);
  v76 = 0uLL;
  v77 = result;
  v78 = vdupq_n_s64(v39);
  v79 = vaddq_s64(v78, xmmword_18071DBA0);
  v80 = vaddq_s64(v78, xmmword_18071DBB0);
  v81 = &a1[v75];
  v82 = v75 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
  v83.i64[0] = 255;
  v83.i64[1] = 255;
  v84 = vdupq_n_s64(0x38uLL);
  v85 = vdupq_n_s64(0x20uLL);
  do
  {
    v86 = *v81;
    v81 += 4;
    v4.i32[0] = v86;
    v87 = vmovl_u16(*&vmovl_u8(*v4.i8));
    v88.i64[0] = v87.u32[2];
    v88.i64[1] = v87.u32[3];
    v89 = vandq_s8(v88, v83);
    v88.i64[0] = v87.u32[0];
    v88.i64[1] = v87.u32[1];
    v4 = vshlq_u64(vandq_s8(v88, v83), vandq_s8(v80, v84));
    v76 = vorrq_s8(vshlq_u64(v89, vandq_s8(v79, v84)), v76);
    v77 = vorrq_s8(v4, v77);
    v79 = vaddq_s64(v79, v85);
    v80 = vaddq_s64(v80, v85);
    v82 += 4;
  }

  while (v82);
  v90 = vorrq_s8(v77, v76);
  result = vorr_s8(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
  if (v36 != v38)
  {
    goto LABEL_115;
  }

LABEL_117:
  if (v35)
  {
    v94 = v3 - 8;
    if ((v3 - 8) < 4)
    {
      v95 = 0;
      v96 = 0;
      v97 = 0;
      goto LABEL_132;
    }

    if (v94 >= 0x10)
    {
      v99 = (a1 + 8);
      v97 = v94 & 0xFFFFFFFFFFFFFFF0;
      v100 = xmmword_18071DBF0;
      v101 = xmmword_18071DC00;
      v102 = xmmword_18071DC10;
      v103 = xmmword_18071DC20;
      v104 = xmmword_18071DBD0;
      v105 = xmmword_18071DBC0;
      v106 = vdupq_n_s64(0x38uLL);
      v4 = vdupq_n_s64(0x80uLL);
      v107 = xmmword_18071DBA0;
      v98 = 8 * (v94 & 0xFFFFFFFFFFFFFFF0);
      v108 = 0uLL;
      v109 = 0uLL;
      v110 = xmmword_18071DBB0;
      v111 = v94 & 0xFFFFFFFFFFFFFFF0;
      v112 = 0uLL;
      v113 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      do
      {
        v118 = *v99++;
        v119 = vmovl_u8(*v118.i8);
        v120 = vmovl_high_u16(v119);
        v121.i64[0] = v120.u32[2];
        v121.i64[1] = v120.u32[3];
        v122 = v121;
        v123 = vmovl_high_u8(v118);
        v124 = vmovl_u16(*v123.i8);
        v121.i64[0] = v124.u32[2];
        v121.i64[1] = v124.u32[3];
        v125 = v121;
        v121.i64[0] = v124.u32[0];
        v121.i64[1] = v124.u32[1];
        v126 = v121;
        v121.i64[0] = v120.u32[0];
        v121.i64[1] = v120.u32[1];
        v127 = v121;
        v128 = vmovl_u16(*v119.i8);
        v121.i64[0] = v128.u32[2];
        v121.i64[1] = v128.u32[3];
        v129 = v121;
        v130 = vmovl_high_u16(v123);
        v121.i64[0] = v130.u32[0];
        v121.i64[1] = v130.u32[1];
        v131 = v121;
        v121.i64[0] = v128.u32[0];
        v121.i64[1] = v128.u32[1];
        v132 = v121;
        v121.i64[0] = v130.u32[2];
        v121.i64[1] = v130.u32[3];
        v113 = vorrq_s8(vshlq_u64(v122, vandq_s8(v104, v106)), v113);
        v115 = vorrq_s8(vshlq_u64(v125, vandq_s8(v102, v106)), v115);
        v114 = vorrq_s8(vshlq_u64(v126, vandq_s8(v103, v106)), v114);
        v112 = vorrq_s8(vshlq_u64(v127, vandq_s8(v105, v106)), v112);
        v109 = vorrq_s8(vshlq_u64(v129, vandq_s8(v107, v106)), v109);
        v116 = vorrq_s8(vshlq_u64(v131, vandq_s8(v101, v106)), v116);
        v108 = vorrq_s8(vshlq_u64(v132, vandq_s8(v110, v106)), v108);
        v117 = vorrq_s8(vshlq_u64(v121, vandq_s8(v100, v106)), v117);
        v105 = vaddq_s64(v105, v4);
        v107 = vaddq_s64(v107, v4);
        v110 = vaddq_s64(v110, v4);
        v104 = vaddq_s64(v104, v4);
        v103 = vaddq_s64(v103, v4);
        v102 = vaddq_s64(v102, v4);
        v101 = vaddq_s64(v101, v4);
        v100 = vaddq_s64(v100, v4);
        v111 -= 16;
      }

      while (v111);
      v133 = vorrq_s8(vorrq_s8(vorrq_s8(v108, v114), vorrq_s8(v112, v116)), vorrq_s8(vorrq_s8(v109, v115), vorrq_s8(v113, v117)));
      v95 = vorr_s8(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
      if (v94 != v97)
      {
        if ((v94 & 0xC) == 0)
        {
          v96 = 8 * (v94 & 0xFFFFFFFFFFFFFFF0);
          goto LABEL_132;
        }

        goto LABEL_127;
      }
    }

    else
    {
      v95 = 0;
      v98 = 0;
      v97 = 0;
LABEL_127:
      v134 = v97;
      v97 = v94 & 0xFFFFFFFFFFFFFFFCLL;
      v96 = 8 * (v94 & 0xFFFFFFFFFFFFFFFCLL);
      v135 = 0uLL;
      v136 = v95;
      v137 = vdupq_n_s64(v98);
      v138 = vaddq_s64(v137, xmmword_18071DBA0);
      v139 = vaddq_s64(v137, xmmword_18071DBB0);
      v140 = &a1[v134 + 8];
      v141 = v134 - (v94 & 0xFFFFFFFFFFFFFFFCLL);
      v142.i64[0] = 255;
      v142.i64[1] = 255;
      v143 = vdupq_n_s64(0x38uLL);
      v144 = vdupq_n_s64(0x20uLL);
      do
      {
        v145 = *v140;
        v140 += 4;
        v4.i32[0] = v145;
        v146 = vmovl_u16(*&vmovl_u8(*v4.i8));
        v147.i64[0] = v146.u32[2];
        v147.i64[1] = v146.u32[3];
        v148 = vandq_s8(v147, v142);
        v147.i64[0] = v146.u32[0];
        v147.i64[1] = v146.u32[1];
        v4 = vshlq_u64(vandq_s8(v147, v142), vandq_s8(v139, v143));
        v135 = vorrq_s8(vshlq_u64(v148, vandq_s8(v138, v143)), v135);
        v136 = vorrq_s8(v4, v136);
        v138 = vaddq_s64(v138, v144);
        v139 = vaddq_s64(v139, v144);
        v141 += 4;
      }

      while (v141);
      v149 = vorrq_s8(v136, v135);
      v95 = vorr_s8(*v149.i8, *&vextq_s8(v149, v149, 8uLL));
      if (v94 != v97)
      {
LABEL_132:
        v150 = v3 - v97 - 8;
        v151 = &a1[v97 + 8];
        do
        {
          v152 = *v151++;
          *&v95 |= v152 << (v96 & 0x38);
          v96 += 8;
          --v150;
        }

        while (v150);
      }
    }
  }

  return result;
}

uint64_t specialized Collection._makeKeyValuePairDescription<A, B>(withTypeName:)(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v196 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v197 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v195 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v192 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v12;
  swift_getTupleTypeMetadata2(255, v12, v13, "key value ", 0);
  v190 = v14;
  v189 = type metadata accessor for Optional(0, v14, v15, v16);
  v194 = *(v189 - 8);
  v17 = MEMORY[0x1EEE9AC00](v189);
  v188 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v187 = &v175 - v20;
  v21 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v24, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v175 - v28;
  if ((*(a4 + 104))(a1, a4))
  {
    return 6109787;
  }

  v176 = v27;
  v201 = 91;
  v202 = 0xE100000000000000;
  (*(v21 + 16))(v23, v4, a1);
  v31 = *(v24 + 32);
  v186 = v29;
  v31(a1, v24);
  v32 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v24, a1, v26, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v183 = *(AssociatedConformanceWitness + 16);
  v184 = AssociatedConformanceWitness + 16;
  v182 = (v194 + 32);
  v33 = v190;
  v181 = v190 - 8;
  v191 = (v195 + 32);
  v196 += 4;
  v34 = 1;
  v195 = xmmword_18071DB30;
  v178 = xmmword_18071DC40;
  v177 = xmmword_18071DB40;
  v179 = v6;
  v35 = v193;
  v36 = v192;
  v37 = v187;
  for (i = v32; ; v32 = i)
  {
    v41 = v188;
    v183(v32, AssociatedConformanceWitness);
    (*v182)(v37, v41, v189);
    if ((*(*(v33 - 8) + 48))(v37, 1, v33) == 1)
    {
      break;
    }

    v30 = *(v33 + 48);
    v42 = *v191;
    (*v191)(v36, v37, v35);
    v43 = v6;
    v194 = *v196;
    (v194)(v197, &v37[v30], v6);
    if (v34)
    {
      goto LABEL_69;
    }

    v45 = v201;
    v44 = v202;
    v46 = HIBYTE(v202) & 0xF;
    v47 = v201 & 0xFFFFFFFFFFFFLL;
    if ((v202 & 0x2000000000000000) != 0)
    {
      v48 = HIBYTE(v202) & 0xF;
    }

    else
    {
      v48 = v201 & 0xFFFFFFFFFFFFLL;
    }

    if (!v48 && (v201 & ~v202 & 0x2000000000000000) == 0)
    {
      v202;
      v201 = 8236;
      v78 = 0xE200000000000000;
LABEL_67:
      v202 = v78;
      goto LABEL_68;
    }

    if ((v202 & 0x2000000000000000) != 0 && v46 <= 0xD)
    {
      v49 = 8 * (HIBYTE(v202) & 7);
      v50 = (-255 << v49) - 1;
      v51 = 44 << v49;
      v52 = v46 + 1;
      if (v46 >= 8)
      {
        v54 = v50 & v202 | v51;
        v53 = 8 * (v52 & 7);
LABEL_37:
        v30 = ((-255 << v53) - 1) & v54 | (32 << v53);
      }

      else
      {
        v45 = (v50 & v201 | v51);
        if (v46 == 7)
        {
          v53 = 0;
          v54 = v202;
          goto LABEL_37;
        }

        v45 = (((-255 << (8 * (v52 & 7u))) - 1) & *&v45 | (32 << (8 * (v52 & 7u))));
        v30 = v202;
      }

      v202;
      0xE200000000000000;
      v79 = 0xE000000000000000;
      if (*&v45 & 0x8080808080808080 | v30 & 0x80808080808080)
      {
        v79 = 0xA000000000000000;
      }

      v78 = (v79 & 0xFF00000000000000 | (v46 << 56) | v30 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
LABEL_66:
      v201 = v45;
      goto LABEL_67;
    }

    0xE200000000000000;
    if ((v44 & 0x1000000000000000) != 0)
    {
      v129 = String.UTF8View._foreignCount()();
      v57 = v129 + 2;
      if (__OFADD__(v129, 2))
      {
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        v169 = String.UTF8View._foreignCount()();
        v142 = v169 + 1;
        if (!__OFADD__(v169, 1))
        {
          goto LABEL_168;
        }

LABEL_221:
        __break(1u);
LABEL_222:
        if ((v47 & 0x1000000000000000) != 0)
        {
          v57 = _StringGuts._foreignConvertedToSmall()(v57, v47);
          v174 = v173;
          v47;
          v47 = v174;
        }

        else
        {
          if ((v57 & 0x1000000000000000) != 0)
          {
            v170 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v171 = v57 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v170 = _StringObject.sharedUTF8.getter(v57, v47);
          }

          closure #1 in _StringGuts._convertedToSmall()(v170, v171, &v200, v141);
          v47;
          v47 = *(&v200 + 1);
          v57 = v200;
        }

LABEL_203:
        v159 = HIBYTE(v142) & 0xF;
        v160 = HIBYTE(v47) & 0xF;
        if (v160 + v159 <= 0xF)
        {
          0xE100000000000000;
          if (v160)
          {
            v161 = 0;
            v162 = 0;
            v163 = 8 * v159;
            do
            {
              v164 = v47 >> (v161 & 0x38);
              if (v162 < 8)
              {
                v164 = v57 >> v161;
              }

              v165 = (v164 << (v163 & 0x38)) | ((-255 << (v163 & 0x38)) - 1) & v142;
              v166 = (v164 << v163) | ((-255 << v163) - 1) & v30;
              if (v159 <= 7)
              {
                v30 = v166;
              }

              else
              {
                v142 = v165;
              }

              ++v159;
              v163 += 8;
              v161 += 8;
              ++v162;
            }

            while (8 * v160 != v161);
          }

          v44;
          0xE100000000000000;
          return v30;
        }

LABEL_227:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v56 = __OFADD__(v48, 2);
      v57 = v48 + 2;
      if (v56)
      {
        goto LABEL_217;
      }
    }

    if ((*&v45 & ~v44 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v44 & 0xFFFFFFFFFFFFFFFLL))
    {
      v58 = _StringGuts.nativeUnusedCapacity.getter(*&v45, v44);
      if (v59)
      {
        goto LABEL_227;
      }

      if (v57 <= 15)
      {
        if ((v44 & 0x2000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v58 < 2)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v57 <= 15)
    {
      if ((v44 & 0x2000000000000000) != 0)
      {
LABEL_39:
        v61 = v44;
      }

      else
      {
LABEL_30:
        if ((v44 & 0x1000000000000000) != 0)
        {
          v45 = _StringGuts._foreignConvertedToSmall()(*&v45, v44);
          v61 = v127;
        }

        else
        {
          if ((*&v45 & 0x1000000000000000) != 0)
          {
            v60 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v60 = _StringObject.sharedUTF8.getter(*&v45, v44);
            v47 = v135;
          }

          closure #1 in _StringGuts._convertedToSmall()(v60, v47, &v200, v55);
          v61 = *(&v200 + 1);
          v45 = v200;
        }
      }

      v62 = 0xE200000000000000;
      0xE200000000000000;
      v63._rawBits = 1;
      v64._rawBits = 131073;
      v65._rawBits = _StringGuts.validateScalarRange(_:)(v63, v64, 0x202CuLL, 0xE200000000000000)._rawBits;
      if (v65._rawBits < 0x10000)
      {
        v65._rawBits |= 3;
      }

      if (v65._rawBits >> 16 || (v68 = 8236, (v66._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
      {
        v68 = specialized static String._copying(_:)(v65._rawBits, v66._rawBits, 0x202CuLL, 0xE200000000000000);
        v62 = v69;
        0xE200000000000000;
      }

      if ((v62 & 0x2000000000000000) != 0)
      {
        v62;
      }

      else if ((v62 & 0x1000000000000000) != 0)
      {
        v68 = _StringGuts._foreignConvertedToSmall()(v68, v62);
        v139 = v138;
        v62;
        v62 = v139;
      }

      else
      {
        if ((v68 & 0x1000000000000000) != 0)
        {
          v132 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v133 = v68 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v132 = _StringObject.sharedUTF8.getter(v68, v62);
        }

        closure #1 in _StringGuts._convertedToSmall()(v132, v133, &v200, v67);
        v62;
        v62 = *(&v200 + 1);
        v68 = v200;
      }

      v30 = HIBYTE(v61) & 0xF;
      v70 = HIBYTE(v62) & 0xF;
      v71 = v70 + v30;
      if (v70 + v30 > 0xF)
      {
        goto LABEL_227;
      }

      0xE200000000000000;
      if (v70)
      {
        v72 = 0;
        v73 = 0;
        v74 = 8 * v30;
        v43 = v179;
        do
        {
          v75 = v62 >> (v72 & 0x38);
          if (v73 < 8)
          {
            v75 = v68 >> v72;
          }

          v76 = (v75 << (v74 & 0x38)) | ((-255 << (v74 & 0x38)) - 1) & v61;
          v77 = (v75 << v74) | ((-255 << v74) - 1) & *&v45;
          if (v30 <= 7)
          {
            v45 = v77;
          }

          else
          {
            v61 = v76;
          }

          ++v30;
          v74 += 8;
          v72 += 8;
          ++v73;
        }

        while (8 * v70 != v72);
      }

      else
      {
        v43 = v179;
      }

      v44;
      0xE200000000000000;
      v80 = 0xE000000000000000;
      if (*&v45 & 0x8080808080808080 | v61 & 0x80808080808080)
      {
        v80 = 0xA000000000000000;
      }

      v78 = v80 & 0xFF00000000000000 | (v71 << 56) | v61 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_66;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v57, 2);
    v200 = v177;
    closure #1 in _StringGuts.append(_:)(&v200, 2uLL, &v201, 1);
    swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_68:
    v35 = v193;
    v36 = v192;
LABEL_69:
    v81 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v81, &v199);
    *(inited + 1) = v195;
    inited[7] = v35;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v42(boxed_opaque_existential_0Tm, v36, v35);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v201);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v84 = v201;
    v47 = v202;
    v85 = HIBYTE(v202) & 0xF;
    v44 = v201 & 0xFFFFFFFFFFFFLL;
    if ((v202 & 0x2000000000000000) != 0)
    {
      v86 = HIBYTE(v202) & 0xF;
    }

    else
    {
      v86 = v201 & 0xFFFFFFFFFFFFLL;
    }

    if (!v86 && (v201 & ~v202 & 0x2000000000000000) == 0)
    {
      v202;
      v201 = 8250;
      v202 = 0xE200000000000000;
      v35 = v193;
      v36 = v192;
      v33 = v190;
      v37 = v187;
      v6 = v43;
      goto LABEL_9;
    }

    v6 = v43;
    if ((v202 & 0x2000000000000000) == 0 || v85 > 0xD)
    {
      0xE200000000000000;
      if ((v47 & 0x1000000000000000) != 0)
      {
        v128 = String.UTF8View._foreignCount()();
        v57 = v128 + 2;
        if (__OFADD__(v128, 2))
        {
LABEL_215:
          __break(1u);
LABEL_216:
          v30 = _StringGuts._foreignConvertedToSmall()(v30, v44);
          v142 = v168;
          goto LABEL_196;
        }
      }

      else
      {
        v56 = __OFADD__(v86, 2);
        v57 = v86 + 2;
        if (v56)
        {
          goto LABEL_215;
        }
      }

      v94 = *&v84 & ~v47;
      if ((v94 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v47 & 0xFFFFFFFFFFFFFFFLL))
      {
        v95 = _StringGuts.nativeUnusedCapacity.getter(*&v84, v47);
        if (v96)
        {
          goto LABEL_227;
        }

        if (v57 > 15)
        {
          goto LABEL_92;
        }

        if ((v47 & 0x2000000000000000) == 0)
        {
          if (v95 < 2)
          {
LABEL_87:
            if ((v47 & 0x1000000000000000) != 0)
            {
              v84 = _StringGuts._foreignConvertedToSmall()(*&v84, v47);
              v98 = v126;
            }

            else
            {
              if ((*&v84 & 0x1000000000000000) != 0)
              {
                v97 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v97 = _StringObject.sharedUTF8.getter(*&v84, v47);
                v44 = v134;
              }

              closure #1 in _StringGuts._convertedToSmall()(v97, v44, &v200, v93);
              v98 = *(&v200 + 1);
              v84 = v200;
            }

LABEL_109:
            v106 = 0xE200000000000000;
            0xE200000000000000;
            v107._rawBits = 1;
            v108._rawBits = 131073;
            v109._rawBits = _StringGuts.validateScalarRange(_:)(v107, v108, 0x203AuLL, 0xE200000000000000)._rawBits;
            if (v109._rawBits < 0x10000)
            {
              v109._rawBits |= 3;
            }

            if (v109._rawBits >> 16 || (v112 = 8250, (v110._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
            {
              v112 = specialized static String._copying(_:)(v109._rawBits, v110._rawBits, 0x203AuLL, 0xE200000000000000);
              v106 = v113;
              0xE200000000000000;
            }

            if ((v106 & 0x2000000000000000) != 0)
            {
              v106;
            }

            else if ((v106 & 0x1000000000000000) != 0)
            {
              v112 = _StringGuts._foreignConvertedToSmall()(v112, v106);
              v137 = v136;
              v106;
              v106 = v137;
            }

            else
            {
              if ((v112 & 0x1000000000000000) != 0)
              {
                v130 = ((v106 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v131 = v112 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v130 = _StringObject.sharedUTF8.getter(v112, v106);
              }

              closure #1 in _StringGuts._convertedToSmall()(v130, v131, &v200, v111);
              v106;
              v106 = *(&v200 + 1);
              v112 = v200;
            }

            v114 = HIBYTE(v98) & 0xF;
            v115 = HIBYTE(v106) & 0xF;
            v116 = v115 + v114;
            if (v115 + v114 > 0xF)
            {
              goto LABEL_227;
            }

            0xE200000000000000;
            if (v115)
            {
              v117 = 0;
              v118 = 0;
              v119 = 8 * v114;
              v120 = 8 * v115;
              v6 = v179;
              do
              {
                v121 = v106 >> (v117 & 0x38);
                if (v118 < 8)
                {
                  v121 = v112 >> v117;
                }

                v122 = (v121 << (v119 & 0x38)) | ((-255 << (v119 & 0x38)) - 1) & v98;
                v123 = (v121 << v119) | ((-255 << v119) - 1) & *&v84;
                if (v114 <= 7)
                {
                  v84 = v123;
                }

                else
                {
                  v98 = v122;
                }

                ++v114;
                v119 += 8;
                v117 += 8;
                ++v118;
              }

              while (v120 != v117);
            }

            else
            {
              v6 = v179;
            }

            v47;
            0xE200000000000000;
            v38 = 0xE000000000000000;
            if (*&v84 & 0x8080808080808080 | v98 & 0x80808080808080)
            {
              v38 = 0xA000000000000000;
            }

            v201 = v84;
            v202 = v38 & 0xFF00000000000000 | (v116 << 56) | v98 & 0xFFFFFFFFFFFFFFLL;
            v35 = v193;
            v36 = v192;
LABEL_8:
            v33 = v190;
            v37 = v187;
            goto LABEL_9;
          }

LABEL_92:
          v30 = v94 & 0x2000000000000000;
          v99 = _StringGuts.nativeUnusedCapacity.getter(*&v84, v47);
          if ((v100 & 1) != 0 || v99 <= 1)
          {
            if (v30)
            {
              swift_isUniquelyReferenced_nonNull_native(v47 & 0xFFFFFFFFFFFFFFFLL);
            }

            v101 = _StringGuts.nativeCapacity.getter(*&v84, v47);
            if (v102)
            {
              v103 = 0;
            }

            else
            {
              v103 = v101;
            }

            if (v103 + 0x4000000000000000 < 0)
            {
              goto LABEL_218;
            }

            v104 = 2 * v103;
            if (v104 > v57)
            {
              v57 = v104;
            }

LABEL_102:
            v35 = v193;
            v36 = v192;
            goto LABEL_103;
          }

          if (!v30)
          {
            goto LABEL_102;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v47 & 0xFFFFFFFFFFFFFFFLL);
          v35 = v193;
          v36 = v192;
          if (!isUniquelyReferenced_nonNull_native)
          {
LABEL_103:
            _StringGuts.grow(_:)(v57);
          }

          v200 = v178;
          closure #1 in _StringGuts.append(_:)(&v200, 2uLL, &v201, 1);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
          goto LABEL_8;
        }
      }

      else
      {
        if (v57 > 15)
        {
          goto LABEL_92;
        }

        if ((v47 & 0x2000000000000000) == 0)
        {
          goto LABEL_87;
        }
      }

      v98 = v47;
      goto LABEL_109;
    }

    v87 = 8 * (HIBYTE(v202) & 7);
    v88 = (-255 << v87) - 1;
    v89 = 58 << v87;
    v90 = v85 + 1;
    if (v85 >= 8)
    {
      v92 = v88 & v202 | v89;
      v91 = 8 * (v90 & 7);
      v37 = v187;
    }

    else
    {
      v84 = (v88 & v201 | v89);
      v37 = v187;
      if (v85 != 7)
      {
        v84 = (((-255 << (8 * (v90 & 7u))) - 1) & *&v84 | (32 << (8 * (v90 & 7u))));
        v105 = v202;
        goto LABEL_128;
      }

      v91 = 0;
      v92 = v202;
    }

    v105 = ((-255 << v91) - 1) & v92 | (32 << v91);
LABEL_128:
    v202;
    0xE200000000000000;
    v124 = 0xE000000000000000;
    if (*&v84 & 0x8080808080808080 | v105 & 0x80808080808080)
    {
      v124 = 0xA000000000000000;
    }

    v201 = v84;
    v202 = (v124 & 0xFF00000000000000 | (v85 << 56) | v105 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v35 = v193;
    v36 = v192;
    v33 = v190;
LABEL_9:
    v39 = swift_initStackObject(v81, v198);
    *(v39 + 1) = v195;
    v39[7] = v6;
    v40 = __swift_allocate_boxed_opaque_existential_0Tm(v39 + 4);
    (v194)(v40, v197, v6);
    specialized _debugPrint<A>(_:separator:terminator:to:)(v39, 32, 0xE100000000000000, 0, 0xE000000000000000, &v201);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v39 + 4);
    v34 = 0;
  }

  (*(v176 + 8))(v186, v32);
  v30 = v201;
  v44 = v202;
  v57 = HIBYTE(v202) & 0xF;
  v47 = v201 & 0xFFFFFFFFFFFFLL;
  if ((v202 & 0x2000000000000000) != 0)
  {
    v140 = HIBYTE(v202) & 0xF;
  }

  else
  {
    v140 = v201 & 0xFFFFFFFFFFFFLL;
  }

  if (!v140 && (v201 & ~v202 & 0x2000000000000000) == 0)
  {
    v202;
    return 93;
  }

  if ((v202 & 0x2000000000000000) == 0 || v57 == 15)
  {
    0xE100000000000000;
    if ((v44 & 0x1000000000000000) != 0)
    {
      goto LABEL_219;
    }

    v56 = __OFADD__(v140, 1);
    v142 = v140 + 1;
    if (v56)
    {
      goto LABEL_221;
    }

LABEL_168:
    v143 = v30 & ~v44;
    if ((v143 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v44 & 0xFFFFFFFFFFFFFFFLL))
    {
      v144 = _StringGuts.nativeUnusedCapacity.getter(v30, v44);
      if (v145)
      {
        goto LABEL_227;
      }

      if (v142 > 15)
      {
        goto LABEL_179;
      }

      if ((v44 & 0x2000000000000000) == 0)
      {
        if (v144 < 1)
        {
LABEL_174:
          if ((v44 & 0x1000000000000000) != 0)
          {
            goto LABEL_216;
          }

          if ((v30 & 0x1000000000000000) != 0)
          {
            v146 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v146 = _StringObject.sharedUTF8.getter(v30, v44);
            v47 = v172;
          }

          closure #1 in _StringGuts._convertedToSmall()(v146, v47, &v200, v141);
          v142 = *(&v200 + 1);
          v30 = v200;
LABEL_196:
          v47 = 0xE100000000000000;
          0xE100000000000000;
          v154._rawBits = 65537;
          v57 = 93;
          v155._rawBits = 1;
          v156._rawBits = _StringGuts.validateScalarRange(_:)(v155, v154, 0x5DuLL, 0xE100000000000000)._rawBits;
          if (v156._rawBits < 0x10000)
          {
            v156._rawBits |= 3;
          }

          if (v156._rawBits >> 16 || (v157._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
          {
            v57 = specialized static String._copying(_:)(v156._rawBits, v157._rawBits, 0x5DuLL, 0xE100000000000000);
            v47 = v158;
            0xE100000000000000;
          }

          if ((v47 & 0x2000000000000000) == 0)
          {
            goto LABEL_222;
          }

          v47;
          goto LABEL_203;
        }

LABEL_179:
        v147 = v143 & 0x2000000000000000;
        v148 = _StringGuts.nativeUnusedCapacity.getter(v30, v44);
        if ((v149 & 1) != 0 || v148 <= 0)
        {
          if (v147)
          {
            swift_isUniquelyReferenced_nonNull_native(v44 & 0xFFFFFFFFFFFFFFFLL);
          }

          v150 = _StringGuts.nativeCapacity.getter(v30, v44);
          if (v151)
          {
            v152 = 0;
          }

          else
          {
            v152 = v150;
          }

          if (v152 + 0x4000000000000000 < 0)
          {
            __break(1u);
            goto LABEL_227;
          }

          v153 = 2 * v152;
          if (v153 > v142)
          {
            v142 = v153;
          }
        }

        else if (v147 && swift_isUniquelyReferenced_nonNull_native(v44 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_193;
        }

        _StringGuts.grow(_:)(v142);
LABEL_193:
        v200 = xmmword_18071DB50;
        closure #1 in _StringGuts.append(_:)(&v200, 1uLL, &v201, 1);
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        return v201;
      }
    }

    else
    {
      if (v142 > 15)
      {
        goto LABEL_179;
      }

      if ((v44 & 0x2000000000000000) == 0)
      {
        goto LABEL_174;
      }
    }

    v142 = v44;
    goto LABEL_196;
  }

  if (v57 < 8)
  {
    v30 = ((-255 << (8 * (HIBYTE(v202) & 7u))) - 1) & v201 | (93 << (8 * (HIBYTE(v202) & 7u)));
  }

  v202;
  0xE100000000000000;
  return v30;
}

uint64_t partial apply for closure #1 in Array.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  v7 = UnsafeRawBufferPointer.init<A>(_:)(a1, a2, *(v3 + 16));
  result = v6(v7);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

double specialized Hasher.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = _swift_stdlib_Hashing_parameters;
  *(a1 + 8) = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  *(a1 + 24) = veorq_s8(v1, xmmword_18071DB70);
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

BOOL specialized _deallocateUninitializedArray<A>(_:)(uint64_t a1, uint64_t *a2)
{
  result = _swift_isClassOrObjCExistentialType(a2, a2);
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!result)
  {
    v4 = a1;
  }

  *(v4 + 16) = 0;
  return result;
}

uint64_t partial apply for closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (*(v2 + 32))
  {
    if (v5 >> 32)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      goto LABEL_10;
    }

    if (v5 >> 16 <= 0x10 && (*(v2 + 16) & 0xFFFFF800) != 0xD800)
    {
      return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(v5, closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)partial apply);
    }
  }

  else if (v5)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(v5, v6, *(v2 + 40), *(v2 + 48), *(v2 + 56), a1, a2, *(v2 + 64), *(v2 + 72));
    }

LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  return partial apply for closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(v8);
}

void partial apply for closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2)
{
  partial apply for closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(a1, a2);
}

{
  closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
}

{
  closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
}

uint64_t lazy protocol witness table accessor for type Int and conformance Int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int, &type metadata for Int, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int, &type metadata for Int, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int, &type metadata for Int, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int, &type metadata for Int, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = type metadata for Any;
  if (!(type metadata for Any[6])(a1, 1, &unk_1EEEAC6F8))
  {
    (v2[1])(a1, &unk_1EEEAC6F8);
  }

  return a1;
}

void *__swift_allocate_boxed_opaque_existential_0Tm(void *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox(result[3]);
    return v1;
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection.init<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5(protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0, a2, a3);
  v4 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v3, 1);
  if (!v5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v4;
  v7 = v5;
  v3;
  v8 = specialized static String.+ infix(_:_:)(0, 0xE000000000000000, v6, v7);
  v7;
  return v8;
}

__objc2_class **_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(*(a1 + 16), _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5);
    v4 = a1 + 32;
    v3;
    while (1)
    {
      outlined init with copy of (String, Any)(v4, v15, &_sSS_yptMd, _sSS_yptMR);
      v5 = v15[0];
      v6 = v15[1];
      outlined init with take of Any(&v16, v14);
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
      v9 = (v3[6] + 16 * v7);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(v14, (v3[7] + 32 * v7));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        break;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {
        v3;
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t specialized _GenericIndexKey.init(intValue:)(uint64_t a1)
{
  v2 = 0x207865646E49;
  v3 = _StringGuts.init(_initialCapacity:)(8);
  v13 = v4;
  v49 = v3;
  v50 = v4;
  v14 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v14 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 || (v3 & ~v4 & 0x2000000000000000) != 0)
  {
    if ((v4 & 0x2000000000000000) != 0 && (v15 = specialized _SmallString.init(_:appending:)(v3, v4, 0x207865646E49uLL, 0xE600000000000000), (v17 & 1) == 0))
    {
      v19 = v15;
      v18 = v16;
      v13;
      v49 = v19;
      v50 = v18;
      v2 = v19;
    }

    else
    {
      _StringGuts.append(_:)(0x207865646E49, 0xE600000000000000, 0, 6, v5, v6, v7, v8, v9, v10, v11, v12);
      v2 = v49;
      v18 = v50;
    }
  }

  else
  {
    v4;
    v18 = 0xE600000000000000;
    v49 = 0x207865646E49;
    v50 = 0xE600000000000000;
  }

  v20 = _int64ToString(_:radix:uppercase:)(a1, 10, 0, swift_int64ToString);
  v30 = v21;
  v31 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v31 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v31 || (v2 & ~v18 & 0x2000000000000000) != 0)
  {
    if ((v18 & 0x2000000000000000) == 0)
    {
      if ((v21 & 0x2000000000000000) != 0)
      {
        v32 = HIBYTE(v21) & 0xF;
LABEL_19:
        _StringGuts.append(_:)(v20, v30, 0, v32, v22, v23, v24, v25, v26, v27, v28, v29);
        v30;
        v41 = v49;
        v30 = v50;
        goto LABEL_20;
      }

LABEL_18:
      v32 = v20 & 0xFFFFFFFFFFFFLL;
      goto LABEL_19;
    }

    if ((v21 & 0x2000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v44 = v20;
    v45 = specialized _SmallString.init(_:appending:)(v2, v18, v20, v21);
    if (v47)
    {
      v32 = HIBYTE(v30) & 0xF;
      v20 = v44;
      goto LABEL_19;
    }

    v41 = v45;
    v48 = v46;
    v18;
    v30;
    v49 = v41;
    v30 = v48;
  }

  else
  {
    v41 = v20;
    v18;
    v49 = v41;
  }

LABEL_20:
  v42 = v41 & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v30) & 0xF;
  }

  if (v42 || (v41 & ~v30 & 0x2000000000000000) != 0)
  {
    if ((v30 & 0x2000000000000000) != 0)
    {
      v30;
      return v41;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v33, v34, v35, v36, v37, v38, v39, v40);
      return v49;
    }
  }

  else
  {
    v30;
    return 0;
  }
}

void sub_180613750()
{
  v0[3];

  swift_deallocObject(v0);
}

uint64_t *__swift_mutable_project_boxed_opaque_existential_1(uint64_t *result, unint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique(result, a2);
    return v2;
  }

  return result;
}

float specialized Float16.init(from:)(uint64_t *a1)
{
  outlined init with copy of MirrorPath(a1, &v56);
  v4 = v58;
  v5 = v59;
  __swift_project_boxed_opaque_existential_0Tm(&v56, v58);
  (*(v5 + 40))(v53, v4, v5);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  }

  else
  {
    v6 = v54;
    v7 = v55;
    __swift_project_boxed_opaque_existential_0Tm(v53, v54);
    _S8 = (*(v7 + 48))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    __swift_destroy_boxed_opaque_existential_1Tm(&v56);
    __asm { FCVT            H9, S8 }

    if (fabsl(*&_S9) == COERCE_SHORT_FLOAT(31744) && (LODWORD(_S8) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
      v15 = v14;
      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v16);
      v60 = (*(v17 + 8))(v16, v17);
      v18 = _StringGuts.init(_initialCapacity:)(46);
      v28 = v19;
      v56 = v18;
      v57 = v19;
      v29 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v29 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v29 || (v18 & ~v19 & 0x2000000000000000) != 0)
      {
        if (("ffer is not allowed" & 0x2000000000000000 & v19) != 0 && (v30 = specialized _SmallString.init(_:appending:)(v18, v19, 0xD000000000000013, 0x8000000180672100), (v32 & 1) == 0))
        {
          v34 = v30;
          v35 = v31;
          v28;
          v56 = v34;
          v57 = v35;
        }

        else
        {
          if (("ffer is not allowed" & 0x2000000000000000) != 0)
          {
            v33 = ("ffer is not allowed" >> 56) & 0xF;
          }

          else
          {
            v33 = 19;
          }

          _StringGuts.append(_:)(0xD000000000000013, 0x8000000180672100, 0, v33, v20, v21, v22, v23, v24, v25, v26, v27);
        }
      }

      else
      {
        v19;
        v56 = 0xD000000000000013;
        v57 = 0x8000000180672100;
      }

      specialized Float.write<A>(to:)();
      v44 = 0x8000000180672120;
      v45 = v57;
      v46 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v46 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (v46 || (v56 & ~v57 & 0x2000000000000000) != 0)
      {
        if (("Parsed JSON number " & 0x2000000000000000 & v57) != 0 && (v47 = specialized _SmallString.init(_:appending:)(v56, v57, 0xD000000000000019, 0x8000000180672120), (v49 & 1) == 0))
        {
          v51 = v47;
          v52 = v48;
          v45;
          v44 = v52;
        }

        else
        {
          if (("Parsed JSON number " & 0x2000000000000000) != 0)
          {
            v50 = ("Parsed JSON number " >> 56) & 0xF;
          }

          else
          {
            v50 = 25;
          }

          _StringGuts.append(_:)(0xD000000000000019, 0x8000000180672120, 0, v50, v36, v37, v38, v39, v40, v41, v42, v43);
          v51 = v56;
          v44 = v57;
        }
      }

      else
      {
        v57;
        v51 = 0xD000000000000019;
      }

      *v15 = v60;
      *(v15 + 8) = v51;
      *(v15 + 16) = v44;
      *(v15 + 24) = 0;
      *(v15 + 72) = 3;
      swift_willThrow();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return _S9;
}

uint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt8, &type metadata for UInt8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt8, &type metadata for UInt8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt8, &type metadata for UInt8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

uint64_t specialized _DictionaryCodingKey.init(stringValue:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      a2;
      specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
      goto LABEL_34;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v40[0] = a1;
      v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      a2;
      specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v40, v4, 10);
      v21 = v20 & 1;
LABEL_33:
      v41 = v21;
      goto LABEL_34;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter(a1, a2);
      v5 = v39;
      if (v39 > 0)
      {
LABEL_9:
        v8 = *v7;
        if (v8 == 43)
        {
          a2;
          v22 = specialized Collection.subscript.getter(1, v7, v5);
          v26 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v22, v23, v24, v25);
          if (v27)
          {
            v28 = 0;
            if (v26)
            {
              do
              {
                v29 = *v26 - 48;
                if (v29 >= 0xA)
                {
                  goto LABEL_32;
                }

                v30 = 10 * v28;
                v31 = (v28 * 10) >> 64 != (10 * v28) >> 63;
                v28 = 10 * v28 + v29;
                v32 = __OFADD__(v30, v29);
                if (v31 || v32)
                {
                  goto LABEL_32;
                }

                ++v26;
              }

              while (--v27);
            }

LABEL_31:
            v41 = 0;
LABEL_34:
            a2;
            return a1;
          }
        }

        else
        {
          if (v8 != 45)
          {
            v34 = 0;
            while (1)
            {
              v35 = *v7 - 48;
              if (v35 >= 0xA)
              {
                break;
              }

              v36 = 10 * v34;
              v37 = (v34 * 10) >> 64 != (10 * v34) >> 63;
              v34 = 10 * v34 + v35;
              v38 = __OFADD__(v36, v35);
              if (v37 || v38)
              {
                break;
              }

              ++v7;
              if (!--v5)
              {
                v41 = 0;
                a2;
                goto LABEL_34;
              }
            }

            v41 = 1;
            a2;
            goto LABEL_34;
          }

          a2;
          v9 = specialized Collection.subscript.getter(1, v7, v5);
          v13 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v9, v10, v11, v12);
          if (v14)
          {
            v15 = 0;
            if (v13)
            {
              while (1)
              {
                v16 = *v13 - 48;
                if (v16 >= 0xA)
                {
                  break;
                }

                v17 = 10 * v15;
                v18 = (v15 * 10) >> 64 != (10 * v15) >> 63;
                v15 = 10 * v15 - v16;
                v19 = __OFSUB__(v17, v16);
                if (v18 || v19)
                {
                  break;
                }

                ++v13;
                if (!--v14)
                {
                  goto LABEL_31;
                }
              }

LABEL_32:
              v21 = 1;
              goto LABEL_33;
            }

            goto LABEL_31;
          }
        }

        v41 = 1;
        goto LABEL_34;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

unint64_t specialized _DictionaryCodingKey.init(intValue:)(uint64_t a1)
{
  v2 = _StringGuts.init(_initialCapacity:)(2);
  v12 = v2;
  v47 = v2;
  v48 = v3;
  v13 = HIBYTE(v3) & 0xF;
  v14 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v3) & 0xF;
  }

  if (v14 || (v2 & ~v3 & 0x2000000000000000) != 0)
  {
    if ((v3 & 0x2000000000000000) == 0)
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = v47;
      v15 = v48;
      goto LABEL_12;
    }

    v16 = v3;
    v3;
    v17 = 0xA000000000000000;
    if (!(v16 & 0x80808080808080 | v12 & 0x8080808080808080))
    {
      v17 = 0xE000000000000000;
    }

    v15 = v17 & 0xFF00000000000000 | (v13 << 56) | v16 & 0xFFFFFFFFFFFFFFLL;
    v47 = v12;
  }

  else
  {
    v3;
    v12 = 0;
    v15 = 0xE000000000000000;
    v47 = 0;
  }

  v48 = v15;
LABEL_12:
  v18 = _int64ToString(_:radix:uppercase:)(a1, 10, 0, swift_int64ToString);
  v28 = v19;
  v29 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v29 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v29 || (v12 & ~v15 & 0x2000000000000000) != 0)
  {
    if ((v15 & 0x2000000000000000) == 0)
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        v30 = HIBYTE(v19) & 0xF;
LABEL_21:
        _StringGuts.append(_:)(v18, v28, 0, v30, v20, v21, v22, v23, v24, v25, v26, v27);
        v28;
        v39 = v47;
        v28 = v48;
        goto LABEL_22;
      }

LABEL_20:
      v30 = v18 & 0xFFFFFFFFFFFFLL;
      goto LABEL_21;
    }

    if ((v19 & 0x2000000000000000) == 0)
    {
      goto LABEL_20;
    }

    v42 = v18;
    v43 = specialized _SmallString.init(_:appending:)(v12, v15, v18, v19);
    if (v45)
    {
      v30 = HIBYTE(v28) & 0xF;
      v18 = v42;
      goto LABEL_21;
    }

    v39 = v43;
    v46 = v44;
    v15;
    v28;
    v47 = v39;
    v28 = v46;
  }

  else
  {
    v39 = v18;
    v15;
    v47 = v39;
  }

LABEL_22:
  v40 = v39 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v28) & 0xF;
  }

  if (v40 || (v39 & ~v28 & 0x2000000000000000) != 0)
  {
    if ((v28 & 0x2000000000000000) != 0)
    {
      v28;
      return v39;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v31, v32, v33, v34, v35, v36, v37, v38);
      return v47;
    }
  }

  else
  {
    v28;
    return 0;
  }
}

uint64_t partial apply for closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1)
{
  return partial apply for closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(a1) & 1;
}

{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  swift_getAssociatedTypeWitness(0, *(v4 + 8), v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  return (*(v6 + 8))(a1, v5) & 1;
}

uint64_t partial apply for closure #1 in BidirectionalCollection<>.lastIndex(of:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  swift_getAssociatedTypeWitness(0, *(*(v4 + 8) + 8), v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  return (*(v6 + 8))(a1, v5) & 1;
}

Swift::UInt64 specialized static _UInt128.% infix(_:_:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  v4.low = a4;
  if (!(a4 | a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4.high = a1;
  specialized _wideDivide22<A>(_:by:)(&v8, &v7, &v6, a2, v4, a3);
  return v6;
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a2;
  v7 = a4(a2, a3);
  if (v5 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = v7;
  if (v5)
  {
    v10 = v8;
    v11 = *(a3 - 8);
    v12 = *(v11 + 16);
    do
    {
      v12(v10, a1, a3);
      v10 += *(v11 + 72);
      --v5;
    }

    while (v5);
  }

  return v9;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized _ContiguousArrayStorage.countByEnumerating(with:objects:count:)(void *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = v1[2];
  v4 = v1 + ((*(*(*(*v1 + 144) - 8) + 80) + 32) & ~*(*(*(*v1 + 144) - 8) + 80));
  *a1 = 1;
  a1[1] = v4;
  a1[2] = &_fastEnumerationStorageMutationsTarget;
  return v3;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error)(a1, a2, a3);
}

{
  result = (*(v3 + 24))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t partial apply for closure #2 in static String._fromCodeUnits<A, B>(_:encoding:repair:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(*(v3 + 32) + 8), *(v3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = UnsafeRawBufferPointer.init<A>(_:)(a1, a2, v7);
  v10 = v8;
  if (v8)
  {
    v11 = v9 - v8;
    if (v9 - v8 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v11 = 0;
  }

  if (_allASCII(_:)(v8, v11))
  {
    result = specialized static String._uncheckedFromASCII(_:)(v10, v11, v12);
  }

  else
  {
    result = 0;
    v14 = 0;
  }

  *a3 = result;
  a3[1] = v14;
  return result;
}

uint64_t _ss9CodingKey_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized _StringGuts._slowWithCString<A>(_:)(unint64_t a1, unint64_t a2, int a3)
{
  v4 = String.utf8CString.getter(a1, a2);
  LOBYTE(a3) = _swift_stdlib_NSObject_isKindOfClass(a3, v4 + 32);
  v4;
  return a3 & 1;
}

id specialized String.withCString<A>(_:)(unint64_t a1, unint64_t a2, void *a3)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    return (specialized _StringGuts._slowWithCString<A>(_:)(a1, a2, a3) & 1);
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = swift_unknownObjectRetain(a3);
    isKindOfClass = _swift_stdlib_NSObject_isKindOfClass(v7, v9);
    swift_unknownObjectRelease(a3);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(a1, a2);
      if (!v4)
      {
        result = swift_unknownObjectRetain(a3);
        __break(1u);
        return result;
      }
    }

    v5 = swift_unknownObjectRetain(a3);
    isKindOfClass = _swift_stdlib_NSObject_isKindOfClass(v5, v4);
    swift_unknownObjectRelease(a3);
  }

  return (isKindOfClass & 1);
}

uint64_t specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  if (!_allASCII(_:)((a1 + 32), v4))
  {
    return _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSays5UInt8VG_s0Q0O5ASCIIOTt0t2g5(a1, a2 & 1);
  }

  if (!v4)
  {
    return 0;
  }

  if (v4 <= 0xF)
  {
    v9 = v4 - 8;
    v10 = 8;
    if (v4 < 8)
    {
      v10 = v4;
    }

    v11 = v10 - 1;
    if (v4 < v10 - 1)
    {
      v11 = v4;
    }

    if (v10 == v11)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = *(a1 + 32);
    if (v4 != 1)
    {
      result |= *(a1 + 33) << 8;
      if (v4 != 2)
      {
        result |= *(a1 + 34) << 16;
        if (v4 != 3)
        {
          result |= *(a1 + 35) << 24;
          if (v4 != 4)
          {
            result |= *(a1 + 36) << 32;
            if (v4 != 5)
            {
              result |= *(a1 + 37) << 40;
              if (v4 != 6)
              {
                result |= *(a1 + 38) << 48;
                if (v4 != 7)
                {
                  result |= *(a1 + 39) << 56;
                }
              }
            }
          }
        }
      }
    }

    if (v4 >= 9)
    {
      v12 = 0;
      v13 = 0;
      v14 = (a1 + 40);
      do
      {
        v15 = *v14++;
        v12 |= v15 << v13;
        v13 += 8;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v5 = v4 | 0xF000000000000000;
    v6 = _allocateStringStorage(codeUnitCapacity:)(v4);
    *(v6 + 16) = v7;
    *(v6 + 24) = v4 | 0xF000000000000000;
    if (v7 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v5 = *(v6 + 24);
    }

    *(v6 + 32 + (v5 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v4, (v6 + 32));
    return *(v6 + 24);
  }

  return result;
}

uint64_t specialized static String._fromCodeUnits<A, B>(_:encoding:repair:)(char *a1, uint64_t a2, char a3)
{
  v6 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(a1, a2);
  if (!v6)
  {
    if (_allASCII(_:)(0, 0))
    {
      return 0;
    }

    return _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys5UInt8VG_s0Q0O5ASCIIOTt0t2g5(a1, a2, a3 & 1);
  }

  v8 = v6;
  v9 = v7;
  v10 = v7 - v6;
  if (!_allASCII(_:)(v6, v7 - v6))
  {
    return _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys5UInt8VG_s0Q0O5ASCIIOTt0t2g5(a1, a2, a3 & 1);
  }

  if (v9 == v8)
  {
    return 0;
  }

  if (v10 <= 15)
  {
    v16 = v10 - 8;
    v17 = 8;
    if (v10 < 8)
    {
      v17 = v10;
    }

    if ((v17 & ~(v17 >> 63)) <= v17 - 1)
    {
      goto LABEL_13;
    }

    if (v17 < 4)
    {
      result = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_27;
    }

    if (v17 >= 0x10)
    {
      v19 = v17 & 0xFFFFFFFFFFFFFFF0;
      v21 = xmmword_18071DBF0;
      v22 = xmmword_18071DC00;
      v23 = xmmword_18071DC10;
      v24 = xmmword_18071DC20;
      v20 = 8 * (v17 & 0xFFFFFFFFFFFFFFF0);
      v25 = 0uLL;
      v26 = xmmword_18071DBD0;
      v27 = xmmword_18071DBC0;
      v11 = vdupq_n_s64(0x38uLL);
      v28 = v17 & 0xFFFFFFFFFFFFFFF0;
      v29 = vdupq_n_s64(0x80uLL);
      v30 = v8;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = xmmword_18071DBA0;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = xmmword_18071DBB0;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      do
      {
        v40 = *v30++;
        v41 = vmovl_u8(*v40.i8);
        v42 = vmovl_high_u16(v41);
        v43.i64[0] = v42.u32[2];
        v43.i64[1] = v42.u32[3];
        v44 = v43;
        v45 = vmovl_high_u8(v40);
        v46 = vmovl_u16(*v45.i8);
        v43.i64[0] = v46.u32[2];
        v43.i64[1] = v46.u32[3];
        v47 = v43;
        v43.i64[0] = v46.u32[0];
        v43.i64[1] = v46.u32[1];
        v48 = v43;
        v43.i64[0] = v42.u32[0];
        v43.i64[1] = v42.u32[1];
        v49 = v43;
        v50 = vmovl_u16(*v41.i8);
        v43.i64[0] = v50.u32[2];
        v43.i64[1] = v50.u32[3];
        v51 = v43;
        v52 = vmovl_high_u16(v45);
        v43.i64[0] = v52.u32[0];
        v43.i64[1] = v52.u32[1];
        v53 = v43;
        v43.i64[0] = v50.u32[0];
        v43.i64[1] = v50.u32[1];
        v54 = v43;
        v43.i64[0] = v52.u32[2];
        v43.i64[1] = v52.u32[3];
        v34 = vorrq_s8(vshlq_u64(v44, vandq_s8(v26, v11)), v34);
        v37 = vorrq_s8(vshlq_u64(v47, vandq_s8(v23, v11)), v37);
        v35 = vorrq_s8(vshlq_u64(v48, vandq_s8(v24, v11)), v35);
        v32 = vorrq_s8(vshlq_u64(v49, vandq_s8(v27, v11)), v32);
        v31 = vorrq_s8(vshlq_u64(v51, vandq_s8(v33, v11)), v31);
        v38 = vorrq_s8(vshlq_u64(v53, vandq_s8(v22, v11)), v38);
        v25 = vorrq_s8(vshlq_u64(v54, vandq_s8(v36, v11)), v25);
        v39 = vorrq_s8(vshlq_u64(v43, vandq_s8(v21, v11)), v39);
        v27 = vaddq_s64(v27, v29);
        v33 = vaddq_s64(v33, v29);
        v36 = vaddq_s64(v36, v29);
        v26 = vaddq_s64(v26, v29);
        v24 = vaddq_s64(v24, v29);
        v23 = vaddq_s64(v23, v29);
        v22 = vaddq_s64(v22, v29);
        v21 = vaddq_s64(v21, v29);
        v28 -= 16;
      }

      while (v28);
      v55 = vorrq_s8(vorrq_s8(vorrq_s8(v25, v35), vorrq_s8(v32, v38)), vorrq_s8(vorrq_s8(v31, v37), vorrq_s8(v34, v39)));
      result = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
      if (v17 == v19)
      {
        goto LABEL_29;
      }

      if ((v17 & 0xC) == 0)
      {
        v18 = 8 * (v17 & 0xFFFFFFFFFFFFFFF0);
LABEL_27:
        v72 = v17 - v19;
        v73 = &v8[v19];
        do
        {
          v74 = *v73++;
          result |= v74 << (v18 & 0x38);
          v18 += 8;
          --v72;
        }

        while (v72);
        goto LABEL_29;
      }
    }

    else
    {
      result = 0;
      v20 = 0;
      v19 = 0;
    }

    v56 = v19;
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = 8 * (v17 & 0xFFFFFFFFFFFFFFFCLL);
    v57 = 0uLL;
    v58 = result;
    v59 = vdupq_n_s64(v20);
    v60 = vaddq_s64(v59, xmmword_18071DBA0);
    v61 = vaddq_s64(v59, xmmword_18071DBB0);
    v62 = &v8[v56];
    v63 = v56 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
    v64.i64[0] = 255;
    v64.i64[1] = 255;
    v65 = vdupq_n_s64(0x38uLL);
    v66 = vdupq_n_s64(0x20uLL);
    do
    {
      v67 = *v62;
      v62 += 4;
      v11.i32[0] = v67;
      v68 = vmovl_u16(*&vmovl_u8(*v11.i8));
      v69.i64[0] = v68.u32[2];
      v69.i64[1] = v68.u32[3];
      v70 = vandq_s8(v69, v64);
      v69.i64[0] = v68.u32[0];
      v69.i64[1] = v68.u32[1];
      v11 = vshlq_u64(vandq_s8(v69, v64), vandq_s8(v61, v65));
      v57 = vorrq_s8(vshlq_u64(v70, vandq_s8(v60, v65)), v57);
      v58 = vorrq_s8(v11, v58);
      v60 = vaddq_s64(v60, v66);
      v61 = vaddq_s64(v61, v66);
      v63 += 4;
    }

    while (v63);
    v71 = vorrq_s8(v58, v57);
    result = vorr_s8(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    if (v17 != v19)
    {
      goto LABEL_27;
    }

LABEL_29:
    if (v10 < 9)
    {
      return result;
    }

    if (v16 <= v9 - v8 - 9)
    {
LABEL_13:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v16 < 4)
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      goto LABEL_45;
    }

    if (v16 >= 0x10)
    {
      v79 = (v8 + 8);
      v77 = v16 & 0xFFFFFFFFFFFFFFF0;
      v80 = xmmword_18071DBF0;
      v81 = xmmword_18071DC00;
      v82 = xmmword_18071DC10;
      v83 = xmmword_18071DC20;
      v84 = xmmword_18071DBD0;
      v85 = xmmword_18071DBC0;
      v86 = vdupq_n_s64(0x38uLL);
      v11 = vdupq_n_s64(0x80uLL);
      v87 = xmmword_18071DBA0;
      v78 = 8 * (v16 & 0xFFFFFFFFFFFFFFF0);
      v88 = 0uLL;
      v89 = 0uLL;
      v90 = xmmword_18071DBB0;
      v91 = v16 & 0xFFFFFFFFFFFFFFF0;
      v92 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      do
      {
        v98 = *v79++;
        v99 = vmovl_u8(*v98.i8);
        v100 = vmovl_high_u16(v99);
        v101.i64[0] = v100.u32[2];
        v101.i64[1] = v100.u32[3];
        v102 = v101;
        v103 = vmovl_high_u8(v98);
        v104 = vmovl_u16(*v103.i8);
        v101.i64[0] = v104.u32[2];
        v101.i64[1] = v104.u32[3];
        v105 = v101;
        v101.i64[0] = v104.u32[0];
        v101.i64[1] = v104.u32[1];
        v106 = v101;
        v101.i64[0] = v100.u32[0];
        v101.i64[1] = v100.u32[1];
        v107 = v101;
        v108 = vmovl_u16(*v99.i8);
        v101.i64[0] = v108.u32[2];
        v101.i64[1] = v108.u32[3];
        v109 = v101;
        v110 = vmovl_high_u16(v103);
        v101.i64[0] = v110.u32[0];
        v101.i64[1] = v110.u32[1];
        v111 = v101;
        v101.i64[0] = v108.u32[0];
        v101.i64[1] = v108.u32[1];
        v112 = v101;
        v101.i64[0] = v110.u32[2];
        v101.i64[1] = v110.u32[3];
        v93 = vorrq_s8(vshlq_u64(v102, vandq_s8(v84, v86)), v93);
        v95 = vorrq_s8(vshlq_u64(v105, vandq_s8(v82, v86)), v95);
        v94 = vorrq_s8(vshlq_u64(v106, vandq_s8(v83, v86)), v94);
        v92 = vorrq_s8(vshlq_u64(v107, vandq_s8(v85, v86)), v92);
        v89 = vorrq_s8(vshlq_u64(v109, vandq_s8(v87, v86)), v89);
        v96 = vorrq_s8(vshlq_u64(v111, vandq_s8(v81, v86)), v96);
        v88 = vorrq_s8(vshlq_u64(v112, vandq_s8(v90, v86)), v88);
        v97 = vorrq_s8(vshlq_u64(v101, vandq_s8(v80, v86)), v97);
        v85 = vaddq_s64(v85, v11);
        v87 = vaddq_s64(v87, v11);
        v90 = vaddq_s64(v90, v11);
        v84 = vaddq_s64(v84, v11);
        v83 = vaddq_s64(v83, v11);
        v82 = vaddq_s64(v82, v11);
        v81 = vaddq_s64(v81, v11);
        v80 = vaddq_s64(v80, v11);
        v91 -= 16;
      }

      while (v91);
      v113 = vorrq_s8(vorrq_s8(vorrq_s8(v88, v94), vorrq_s8(v92, v96)), vorrq_s8(vorrq_s8(v89, v95), vorrq_s8(v93, v97)));
      v75 = vorr_s8(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
      if (v16 == v77)
      {
        return result;
      }

      if ((v16 & 0xC) == 0)
      {
        v76 = 8 * (v16 & 0xFFFFFFFFFFFFFFF0);
        goto LABEL_45;
      }
    }

    else
    {
      v75 = 0;
      v78 = 0;
      v77 = 0;
    }

    v114 = v77;
    v77 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v76 = 8 * (v16 & 0xFFFFFFFFFFFFFFFCLL);
    v115 = 0uLL;
    v116 = v75;
    v117 = vdupq_n_s64(v78);
    v118 = vaddq_s64(v117, xmmword_18071DBA0);
    v119 = vaddq_s64(v117, xmmword_18071DBB0);
    v120 = &v8[v114 + 8];
    v121 = v114 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
    v122.i64[0] = 255;
    v122.i64[1] = 255;
    v123 = vdupq_n_s64(0x38uLL);
    v124 = vdupq_n_s64(0x20uLL);
    do
    {
      v125 = *v120;
      v120 += 4;
      v11.i32[0] = v125;
      v126 = vmovl_u16(*&vmovl_u8(*v11.i8));
      v127.i64[0] = v126.u32[2];
      v127.i64[1] = v126.u32[3];
      v128 = vandq_s8(v127, v122);
      v127.i64[0] = v126.u32[0];
      v127.i64[1] = v126.u32[1];
      v11 = vshlq_u64(vandq_s8(v127, v122), vandq_s8(v119, v123));
      v115 = vorrq_s8(vshlq_u64(v128, vandq_s8(v118, v123)), v115);
      v116 = vorrq_s8(v11, v116);
      v118 = vaddq_s64(v118, v124);
      v119 = vaddq_s64(v119, v124);
      v121 += 4;
    }

    while (v121);
    v129 = vorrq_s8(v116, v115);
    v75 = vorr_s8(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
    if (v16 == v77)
    {
      return result;
    }

LABEL_45:
    v130 = &v8[v77 + 8];
    v131 = (v130 - v9);
    do
    {
      v132 = *v130++;
      *&v75 |= v132 << (v76 & 0x38);
      v76 += 8;
    }

    while (!__CFADD__(v131++, 1));
    return result;
  }

  v12 = v10 | 0xF000000000000000;
  v13 = _allocateStringStorage(codeUnitCapacity:)(v10);
  *(v13 + 16) = v14;
  *(v13 + 24) = v10 | 0xF000000000000000;
  if (v14 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v12 = *(v13 + 24);
  }

  *(v13 + 32 + (v12 & 0xFFFFFFFFFFFFLL)) = 0;
  specialized UnsafeMutablePointer.initialize(from:count:)(v8, v10, (v13 + 32));
  return *(v13 + 24);
}

uint64_t String.init(cString:)(unsigned __int8 *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = v3;
  v5 = validateUTF8(_:)(a1, v3);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v4, v5 & 1, v8);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(a1, v4, v6, v7);
}

uint64_t *outlined destroy of AnyHashable?(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1Tm(result);
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of AnyHashable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized static _DebuggerSupport.stringForPrintObject(_:)(uint64_t a1)
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = &_swiftEmptySetSingleton;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  outlined init with copy of Any(a1, v4);
  outlined init with copy of Any(a1, v3);
  Mirror.init(reflecting:)(v3, v8);
  _ss16_DebuggerSupportO08printForA4Impl33_9EAF632084ADAFB777F8F0FD9902DCCDLL5value6mirror4name6indent8maxDepth6isRoot22parentCollectionStatus15refsAlreadySeen0P11ItemCounter6targetyypSg_s6MirrorVSSSgS2iSbAB0uV0ADLLOShySOGzSizxzts16TextOutputStreamRzlFZSS_Tt9B5(v4, v8, 0, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 1u, 0, &v6, &v7, v5);
  outlined destroy of Mirror(v8);
  outlined destroy of Any?(v4);
  v6;
  return v5[0];
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v119 = a4;
  v118 = a3;
  v136 = a1;
  v130 = *(*(a5 + 24) - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v128 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v109 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v117 = &v109 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v137 = v18;
  v138 = &v109 - v19;
  v120 = *(*(v18 + 16) - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v109 - v23;
  v140 = v22;
  v129 = v24;
  swift_getTupleTypeMetadata2(255, v22, v24, 0, 0);
  v121 = v25;
  v28 = type metadata accessor for Optional(0, v25, v26, v27);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v109 - v30;
  v32 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v36 = v35;
  v110 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v109 - v37;
  (*(v32 + 16))(v34, v136, a6);
  v39 = v121;
  (*(a7 + 32))(a6);
  v40 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v36, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v42 = *(AssociatedConformanceWitness + 16);
  v132 = v36;
  v133 = v38;
  v126 = AssociatedConformanceWitness + 16;
  v127 = AssociatedConformanceWitness;
  v125 = v42;
  (v42)(v36);
  v43 = *(v39 - 8);
  v44 = *(v43 + 48);
  v123 = v43 + 48;
  v124 = v44;
  if (v44(v31, 1, v39) == 1)
  {
LABEL_2:
    (*(v110 + 8))(v133, v132);
    return;
  }

  v45 = *(v120 + 32);
  v134 = (v130 + 32);
  v135 = v45;
  v113 = v130 + 16;
  v115 = (v130 + 8);
  v136 = v120 + 32;
  v112 = (v120 + 8);
  v111 = (v130 + 40);
  v46 = v129;
  v122 = v31;
  v114 = v14;
  while (1)
  {
    v47 = *(v39 + 48);
    v49 = v139;
    v48 = v140;
    v135(v139, v40, v140);
    v50 = *v134;
    (*v134)(v138, &v40[v47], v46);
    v51 = *v141;
    v52 = *(v137 + 32);
    v54 = __RawDictionaryStorage.find<A>(_:)(v49, v48, v52);
    v55 = v51[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v140);
    }

    v58 = v53;
    if (v51[3] >= v57)
    {
      v46 = v129;
      if ((a2 & 1) == 0)
      {
        _NativeDictionary.copy()();
      }
    }

    else
    {
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, a2 & 1);
      v59 = __RawDictionaryStorage.find<A>(_:)(v139, v140, v52);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_20;
      }

      v54 = v59;
      v46 = v129;
    }

    v61 = *v141;
    if (v58)
    {
      break;
    }

    v68 = v116;
    v69 = v140;
    v70 = v135;
    v135(v116, v139, v140);
    v50(v128, v138, v46);
    v61[(v54 >> 6) + 8] |= 1 << v54;
    v70(v61[6] + *(v120 + 72) * v54, v68, v69);
    v50((v61[7] + *(v130 + 72) * v54), v128, v46);
    v71 = v61[2];
    v72 = __OFADD__(v71, 1);
    v73 = v71 + 1;
    if (v72)
    {
      goto LABEL_19;
    }

    v61[2] = v73;
    v39 = v121;
LABEL_4:
    v40 = v122;
    v125(v132, v127);
    a2 = 1;
    if (v124(v40, 1, v39) == 1)
    {
      goto LABEL_2;
    }
  }

  v62 = *(v130 + 72) * v54;
  v63 = v114;
  (*(v130 + 16))(v114, v61[7] + v62, v46);
  v64 = v117;
  v65 = v138;
  v66 = v131;
  v118(v63, v138);
  if (!v66)
  {
    v131 = 0;
    v67 = *v115;
    (*v115)(v63, v46);
    v67(v65, v46);
    (*v112)(v139, v140);
    (*v111)(v61[7] + v62, v64, v46);
    goto LABEL_4;
  }

  v74 = *v115;
  (*v115)(v63, v46);
  v144 = v66;
  swift_errorRetain(v66);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  if (swift_dynamicCast(v75, &v144, v75, &type metadata for _MergeError, 0))
  {
    v76 = _StringGuts.init(_initialCapacity:)(30);
    v86 = v77;
    v142 = v76;
    v143 = v77;
    v87 = HIBYTE(v77) & 0xF;
    if ((v77 & 0x2000000000000000) == 0)
    {
      v87 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (v87 || (v76 & ~v77 & 0x2000000000000000) != 0)
    {
      if (("ment" & 0x2000000000000000 & v77) != 0 && (v88 = specialized _SmallString.init(_:appending:)(v76, v77, 0xD00000000000001BLL, 0x8000000180671FE0), (v90 & 1) == 0))
      {
        v92 = v88;
        v93 = v89;
        v86;
        v142 = v92;
        v143 = v93;
      }

      else
      {
        if (("ment" & 0x2000000000000000) != 0)
        {
          v91 = ("ment" >> 56) & 0xF;
        }

        else
        {
          v91 = 27;
        }

        _StringGuts.append(_:)(0xD00000000000001BLL, 0x8000000180671FE0, 0, v91, v78, v79, v80, v81, v82, v83, v84, v85);
      }
    }

    else
    {
      v77;
      v142 = 0xD00000000000001BLL;
      v143 = 0x8000000180671FE0;
    }

    _print_unlocked<A, B>(_:_:)(v139, &v142, v140, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v102 = v143;
    v103 = HIBYTE(v143) & 0xF;
    if ((v143 & 0x2000000000000000) == 0)
    {
      v103 = v142 & 0xFFFFFFFFFFFFLL;
    }

    if (v103 || (v142 & ~v143 & 0x2000000000000000) != 0)
    {
      if ((v143 & 0x2000000000000000) != 0 && (v106 = specialized _SmallString.init(_:appending:)(v142, v143, 0x27uLL, 0xE100000000000000), (v108 & 1) == 0))
      {
        v105 = v106;
        v104 = v107;
        v102;
      }

      else
      {
        _StringGuts.append(_:)(39, 0xE100000000000000, 0, 1, v94, v95, v96, v97, v98, v99, v100, v101);
        v105 = v142;
        v104 = v143;
      }
    }

    else
    {
      v143;
      v104 = 0xE100000000000000;
      v105 = 39;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v105, v104, "Swift/NativeDictionary.swift", 0x1CuLL, 2, 0x318uLL);
  }

  v74(v65, v46);
  (*v112)(v139, v140);
  (*(v110 + 8))(v133, v132);
  v144;
}

void sub_180615F30(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    a1;
  }
}

void sub_180615F40()
{
  v0[6];

  swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  (*(*(v8 - 8) + 16))(a1, a3);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t outlined assign with take of AnyHashable(__int128 *a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v4 = *a1;
  v5 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v4;
  *(a2 + 16) = v5;
  return a2;
}

unint64_t sub_1806160AC(unint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

uint64_t partial apply for closure #1 in DiscontiguousSlice._index(of:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v3, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v10 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v9);
  return (*(AssociatedConformanceWitness + 32))(a1 + *(v10 + 36), v5, v7, AssociatedConformanceWitness) & 1;
}

uint64_t _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t))
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  v3 = ceil(v2 / 0.75);
  if (v3 == INFINITY || v3 <= -9.22337204e18 || v3 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = __OFADD__(v2, 1);
  v5 = v2 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v5 <= v3)
    {
      v5 = v3;
    }

    v6 = 64 - __clz(v5 - 1);
    if (v5 <= 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    return a2(v7, 0x100000000, 0, 1);
  }

  return result;
}

uint64_t specialized _SwiftDictionaryNSEnumerator.countByEnumerating(with:objects:count:)(uint64_t a1, atomic_ullong **a2)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  offset = v2[4].offset;
  if (offset == v2[5].offset)
  {
    result = 0;
  }

  else
  {
    v10 = _SwiftDictionaryNSEnumerator.bridgedKey(at:)(offset);
    *a2 = v10;
    swift_unknownObjectRelease(v10);
    v2[4].offset = _HashTable.occupiedBucket(after:)(v2[4]).offset;
    *(a1 + 56) = v16;
    *(a1 + 40) = v15;
    *(a1 + 24) = v14;
    result = 1;
  }

  if (v6 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  v12 = &_fastEnumerationStorageMutationsTarget;
  if (v6)
  {
    v13 = v5;
  }

  else
  {
    v13 = a2;
  }

  if (v6)
  {
    v12 = v7;
  }

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v12;
  return result;
}

uint64_t specialized _SwiftDeferredNSDictionary.enumerateKeysAndObjects(options:using:)(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v63 = *(*v1 + 104);
  v2 = *(v63 - 1);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v47 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v62 = (&v46 - v6);
  v64 = *(v7 + 96);
  v8 = *(v64 - 1);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v49 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v65 = (&v46 - v12);
  v13 = _Block_copy(v11);
  v14 = _SwiftDeferredNSDictionary.bridgeKeys()(v13);
  v15 = _SwiftDeferredNSDictionary.bridgeValues()(v14);
  v16 = 0;
  v17 = v1[4];
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  v69 = 0;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v68 = v14;
  v60 = v14 + 40;
  v57 = v8 + 16;
  v48 = (v8 + 32);
  v52 = (v8 + 8);
  v67 = v15;
  v58 = v8;
  v59 = v15 + 40;
  v55 = v2 + 16;
  v46 = (v2 + 32);
  v56 = v2;
  v50 = (v2 + 8);
  v51 = v1;
  v66 = v13 + 16;
  v61 = v13;
  if ((v22 & v18) != 0)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v26 = v16;
    do
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v16 >= v24)
      {
        _Block_release(v13);
        goto LABEL_26;
      }

      v27 = *(v19 + 8 * v16);
      ++v26;
    }

    while (!v27);
    v25 = __clz(__rbit64(v27));
    v23 = (v27 - 1) & v27;
LABEL_10:
    v28 = v25 | (v16 << 6);
    if (!v68)
    {
      v30 = v64;
      (*(v58 + 16))(v65, *(v1[4] + 48) + *(v58 + 72) * v28, v64);
      if (_swift_isClassOrObjCExistentialType(v30, v30))
      {
        if (v54 != 8)
        {
          goto LABEL_29;
        }

        v31 = v65;
        v29 = *v65;
        v32 = *v52;
        swift_unknownObjectRetain(*v65);
        v33 = v31;
        v13 = v61;
        v32(v33, v64);
        if (!v67)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v35 = v49;
        v36 = v64;
        (*v48)(v49, v65, v64);
        v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v35, v36);
        if (!v67)
        {
          goto LABEL_18;
        }
      }

LABEL_16:
      v34 = *&v59[8 * v28];
      swift_unknownObjectRetain(v34);
      goto LABEL_21;
    }

    v29 = *&v60[8 * v28];
    swift_unknownObjectRetain(v29);
    if (v67)
    {
      goto LABEL_16;
    }

LABEL_18:
    v37 = *(v1[4] + 56) + *(v56 + 72) * v28;
    v38 = v63;
    (*(v56 + 16))(v62, v37, v63);
    if (_swift_isClassOrObjCExistentialType(v38, v38))
    {
      if (v53 == 8)
      {
        v39 = v62;
        v34 = *v62;
        v40 = *v50;
        swift_unknownObjectRetain(*v62);
        v41 = v39;
        v42 = v61;
        v1 = v51;
        v40(v41, v63);
        v13 = v42;
        goto LABEL_21;
      }

LABEL_29:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v43 = v47;
    v44 = v63;
    (*v46)(v47, v62, v63);
    v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v43, v44);
LABEL_21:
    (*(v13 + 2))(v13, v29, v34, &v69);
    if (!v69)
    {
      swift_unknownObjectRelease(v29);
      swift_unknownObjectRelease(v34);
      if (!v23)
      {
        continue;
      }

LABEL_4:
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      goto LABEL_10;
    }

    break;
  }

  _Block_release(v13);
  swift_unknownObjectRelease(v29);
  swift_unknownObjectRelease(v34);
LABEL_26:
  v67;
  return v68;
}

int64_t _ss18_DictionaryStorageC6resize8original8capacity4moveAByxq_Gs05__RawaB0C_SiSbtFZSO_SiTt2g5Tf4dnd_nTm(int64_t result, uint64_t (*a2)(void))
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  v3 = ceil(v2 / 0.75);
  if (v3 == INFINITY || v3 <= -9.22337204e18 || v3 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = __OFADD__(v2, 1);
  v5 = v2 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v5 <= v3)
    {
      v5 = v3;
    }

    v6 = 64 - __clz(v5 - 1);
    if (v5 <= 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    return _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSO_SiTt2g5Tm(v7, 0x100000000, 0, 1, a2);
  }

  return result;
}

int64_t specialized static _DictionaryStorage.allocate(capacity:)(int64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  v4 = ceil(v3 / 0.75);
  if (v4 == INFINITY || v4 <= -9.22337204e18 || v4 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = __OFADD__(v3, 1);
  v6 = v3 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 <= v4)
    {
      v6 = v4;
    }

    v7 = 64 - __clz(v6 - 1);
    if (v6 <= 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    return specialized static _DictionaryStorage.allocate(scale:age:seed:)(v8, 0x100000000, 0, 1, a2, a3);
  }

  return result;
}

Swift::Int specialized RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:)(uint64_t a1, atomic_ullong *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Range(0, a4, a5, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v15 = a2[2];
  if (v15 < 2)
  {
    if (v15)
    {
      (*(v11 + 16))(v14, a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);
      if (((*(a5 + 16))(a1 + *(v10 + 36), v14, a4, a5) & 1) == 0)
      {
        v29 = (*(a5 + 40))(a1, &v14[*(v10 + 36)], a4, a5);
        (*(v11 + 8))(v14, v10);
        return v29 & 1;
      }

      (*(v11 + 8))(v14, v10);
    }

    return 0;
  }

  else
  {
    v36 = &v35;
    v38 = a2;
    MEMORY[0x1EEE9AC00](v12);
    v31 = a4;
    v32 = a5;
    LOBYTE(v33) = a3 & 1;
    v34 = a1;
    v18 = type metadata accessor for ContiguousArray(0, v10, v16, v17);
    v35 = a1;
    v19 = v18;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v18, v20);
    Collection._partitioningIndex(where:)(partial apply for closure #1 in RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:), (&v35 - 6), v19, WitnessTable, v37);
    v22 = v37[0];
    if (v15 < v37[0] || (ContiguousArray._checkIndex(_:)(v37[0]), ContiguousArray._checkIndex(_:)(v15), v36 = &v35, v37[0] = a2, v37[1] = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v37[2] = v22, v37[3] = (2 * v15) | 1, MEMORY[0x1EEE9AC00](v23), v31 = a4, v32 = a5, LOBYTE(v33) = a3 & 1, v34 = v35, v26 = type metadata accessor for ArraySlice(0, v10, v24, v25), a2, v28 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v26, v27), Collection._partitioningIndex(where:)(partial apply for closure #2 in RangeSet.Ranges._indicesOfRange(_:in:includeAdjacent:), (&v35 - 6), v26, v28, &v38), a2, v38 < v22))
    {
      v33 = 0;
      v32 = 760;
      LOBYTE(v31) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return v22;
}

uint64_t specialized EmptyCollection.subscript.setter(uint64_t result, uint64_t a2)
{
  if (result | a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A.Sequence.Element) -> (@out A1, @error @owned Error)(uint64_t a1, void *a2)
{
  return partial apply for thunk for @callee_guaranteed (@in_guaranteed A.Sequence.Element) -> (@out A1, @error @owned Error)(a1, a2);
}

{
  result = (*(v2 + 40))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A) -> (@out A1, @error @owned Error)(uint64_t a1, void *a2)
{
  return partial apply for thunk for @callee_guaranteed (@in_guaranteed A) -> (@out A1, @error @owned Error)(a1, a2);
}

{
  result = (*(v2 + 32))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_1806173C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 2);
  v6 = (type metadata accessor for LazyFilterSequence(0, v5, *(v4 + 3), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = (*(*v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = &v4[v7];
  (*(*(v5 - 8) + 8))(&v4[v7], v5);
  *&v9[v6[11] + 8];
  *&v4[v8 + 8];

  swift_deallocObject(v4);
}

uint64_t partial apply for closure #1 in LazyFilterSequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LazyFilterSequence(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  if ((*(v4 + *(v6 + 36) + v8))(a1))
  {
    return v9(a1) & 1;
  }

  else
  {
    return 0;
  }
}

__objc2_class **specialized Sequence.filter(_:)(Swift::String::Index a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v9 = &_swiftEmptyArrayStorage;
  v136 = &_swiftEmptyArrayStorage;
  v10 = a2 >> 14;
  v11 = a1._rawBits >> 14;
  if (a1._rawBits >> 14 != a2 >> 14)
  {
    v15 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LODWORD(v15) = 1;
    }

    v16 = 4 << v15;
    v17 = a2 >> 16;
    v127 = a4 & 0xFFFFFFFFFFFFFFLL;
    v128 = HIBYTE(a4) & 0xF;
    v125 = a3 & 0xFFFFFFFFFFFFLL;
    v126 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v23 = v15 == 0;
    v18 = 8;
    if (!v23)
    {
      v18 = 4;
    }

    v120 = a1._rawBits & 2;
    v19 = v120 | v18;
    v20 = a1._rawBits >> 14;
    rawBits = a1._rawBits;
    v133 = v16;
    while (1)
    {
      v22 = rawBits & 0xC;
      v23 = v22 == v16 || (rawBits & 1) == 0;
      if (v23)
      {
        v24 = rawBits;
        if (v22 == v16)
        {
          v119 = a1._rawBits;
          v124 = v17;
          v109 = v19;
          v78 = a2;
          v115 = a5;
          v132 = v11;
          v112 = v9;
          v79 = a6;
          v80 = v7;
          v81 = a3;
          v82._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          a2 = v78;
          v17 = v124;
          a3 = v81;
          v7 = v80;
          a6 = v79;
          v19 = v109;
          v9 = v112;
          v11 = v132;
          a5 = v115;
          v24 = v82._rawBits;
          a1._rawBits = v119;
        }

        if (v24 >> 14 < v11 || v24 >> 14 >= v10)
        {
LABEL_127:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((v24 & 1) == 0)
        {
          v117 = a1._rawBits;
          v122 = v17;
          v107 = v19;
          v25 = a2;
          v113 = a5;
          v130 = v11;
          v110 = v9;
          v26 = a6;
          v27 = v7;
          v28 = a3;
          v29._rawBits = _StringGuts.scalarAlignSlow(_:)(v24)._rawBits;
          a2 = v25;
          v17 = v122;
          a3 = v28;
          v7 = v27;
          a6 = v26;
          v19 = v107;
          v9 = v110;
          v11 = v130;
          a5 = v113;
          v24 = v29._rawBits;
          a1._rawBits = v117;
        }
      }

      else
      {
        if (v20 < v11)
        {
          goto LABEL_127;
        }

        v24 = rawBits;
        if (v20 >= v10)
        {
          goto LABEL_127;
        }
      }

      v111 = v9;
      v131 = v11;
      v114 = a5;
      v116 = a2;
      v30 = (v24 >> 8) & 0x3F;
      v31 = v24 >> 16;
      v118 = a1._rawBits;
      v121 = a3;
      v123 = v17;
      v108 = v19;
      v129 = v10;
      if (!v30)
      {
        if (v31 == v17)
        {
          v30 = 0;
        }

        else
        {
          if ((a4 & 0x1000000000000000) == 0)
          {
            if ((a4 & 0x2000000000000000) != 0)
            {
              v134 = a3;
              v135 = v127;
              v53 = v31 + 1;
              if (v31 + 1 == v128)
              {
                goto LABEL_73;
              }

              v54 = *(&v134 + v31);
            }

            else
            {
              v52 = v125;
              v51 = v126;
              if ((a3 & 0x1000000000000000) == 0)
              {
                v105 = a6;
                v93 = v17;
                v94 = a3;
                v95 = _StringObject.sharedUTF8.getter(a3, a4);
                a3 = v94;
                v17 = v93;
                v51 = v95;
                a6 = v105;
                v52 = v96;
              }

              v53 = v31 + 1;
              if (v31 + 1 == v52)
              {
LABEL_73:
                if (v17 >= v53)
                {
                  v32 = v53;
                }

                else
                {
                  v32 = v17;
                }

                if (v32 < v31)
                {
LABEL_129:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                goto LABEL_30;
              }

              if (!v51)
              {
                goto LABEL_132;
              }

              v54 = *&v51[v31];
            }

            if (v54 != 2573 && (v54 & 0x80808080) == 0)
            {
              goto LABEL_73;
            }
          }

          v88 = a3;
          v89 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v31);
          a3 = v88;
          v17 = v123;
          v30 = v89;
        }
      }

      if (v17 >= v30 + v31)
      {
        v32 = v30 + v31;
      }

      else
      {
        v32 = v17;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v83 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v31, v32);
        object = v83._object;
        countAndFlagsBits = v83._countAndFlagsBits;
LABEL_43:
        v41 = countAndFlagsBits;
        v37 = v10;
        goto LABEL_44;
      }

      if (v32 < v31)
      {
        goto LABEL_129;
      }

LABEL_30:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v134 = a3;
        v135 = v127;
        if (v128 < v32)
        {
          goto LABEL_130;
        }

        v42 = v32 - v31;
        if (v42 < 0)
        {
          goto LABEL_130;
        }

        v43 = _allASCII(_:)((&v134 + v31), v42);
        countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(&v134 + v31, v42, v43, v44);
        goto LABEL_43;
      }

      v104 = a6;
      v33 = v126;
      if ((a3 & 0x1000000000000000) != 0)
      {
        if (v125 < v32)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v33 = _StringObject.sharedUTF8.getter(a3, a4);
        if (v84 < v32)
        {
          goto LABEL_130;
        }
      }

      v34 = v7;
      if (v33)
      {
        v35 = &v33[v31];
      }

      else
      {
        v35 = 0;
      }

      v36 = v32 - v31;
      if (v36 < 0 || (v37 = v10, v36) && !v35)
      {
LABEL_130:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v38 = _allASCII(_:)(v35, v36);
      v41 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v35, v36, v38, v39);
      v7 = v34;
      a6 = v104;
LABEL_44:
      if (v22 == v133 || (rawBits & 2) == 0)
      {
        if (v22 == v133)
        {
          v85 = object;
          v86 = v41;
          v87._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          v41 = v86;
          object = v85;
          rawBits = v87._rawBits;
        }

        if (rawBits >> 14 < v131 || rawBits >> 14 >= v37)
        {
          goto LABEL_127;
        }

        if (rawBits)
        {
          if (v120)
          {
LABEL_55:
            if ((rawBits & 2) != 0)
            {
              goto LABEL_59;
            }
          }
        }

        else
        {
          v90 = object;
          v91 = v41;
          v92._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
          v41 = v91;
          object = v90;
          rawBits = rawBits & 0xC | v92._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
          if (v120)
          {
            goto LABEL_55;
          }
        }

        if (rawBits >> 14 != v131 && rawBits >> 14 != v37)
        {
          v46 = object;
          v47 = v41;
          v48 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(rawBits, v118, v116, v121, a4);
          v41 = v47;
          object = v46;
          rawBits = v48;
        }

        goto LABEL_59;
      }

      if (v20 < v131 || v20 >= v37)
      {
        goto LABEL_127;
      }

LABEL_59:
      v49 = (rawBits >> 8) & 0x3F;
      v50 = rawBits >> 16;
      if (v49)
      {
        goto LABEL_92;
      }

      if (v50 == v123)
      {
        v49 = 0;
        goto LABEL_92;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        goto LABEL_91;
      }

      if ((a4 & 0x2000000000000000) == 0)
      {
        v55 = object;
        v57 = v125;
        v56 = v126;
        if ((v121 & 0x1000000000000000) == 0)
        {
          v101 = v55;
          v102 = v41;
          v56 = _StringObject.sharedUTF8.getter(v121, a4);
          v41 = v102;
          v55 = v101;
        }

        if (v50 + 1 == v57)
        {
          v49 = 1;
          object = v55;
          goto LABEL_92;
        }

        if (!v56)
        {
          goto LABEL_132;
        }

        object = v55;
        v58 = *&v56[v50];
        if (v58 == 2573)
        {
          goto LABEL_91;
        }

LABEL_89:
        if ((v58 & 0x80808080) == 0)
        {
LABEL_90:
          v49 = 1;
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      v134 = v121;
      v135 = v127;
      if (v50 + 1 == v128)
      {
        goto LABEL_90;
      }

      v58 = *(&v134 + v50);
      if (v58 != 2573)
      {
        goto LABEL_89;
      }

LABEL_91:
      v59 = object;
      v60 = v41;
      v49 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v50);
      v41 = v60;
      object = v59;
LABEL_92:
      v61 = v49 + v50;
      if (v123 < v49 + v50)
      {
        v61 = v123;
      }

      v62 = v61 << 16;
      v63 = v61 & 0xFFFFFFFFFFFFLL;
      if ((v61 & 0xFFFFFFFFFFFFLL) != v123)
      {
        if ((a4 & 0x1000000000000000) == 0)
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v134 = v121;
            v135 = v127;
            if (v63 + 1 != v128)
            {
              v66 = &v134;
              goto LABEL_105;
            }

LABEL_107:
            v67 = 1;
            goto LABEL_109;
          }

          v64 = object;
          v65 = v125;
          v66 = v126;
          if ((v121 & 0x1000000000000000) == 0)
          {
            v97 = v63;
            v98 = v64;
            v99 = v41;
            v100 = _StringObject.sharedUTF8.getter(v121, a4);
            v41 = v99;
            v64 = v98;
            v66 = v100;
            v63 = v97;
          }

          if (v63 + 1 == v65)
          {
            v67 = 1;
            object = v64;
LABEL_109:
            v62 |= v67 << 8;
            goto LABEL_110;
          }

          if (!v66)
          {
LABEL_132:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          object = v64;
LABEL_105:
          v68 = *(v66 + v63);
          if (v68 != 2573 && (v68 & 0x80808080) == 0)
          {
            goto LABEL_107;
          }
        }

        v69 = object;
        v70 = v41;
        v67 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v63);
        v41 = v70;
        object = v69;
        if (v67 > 63)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

LABEL_110:
      v71 = v41;
      v72 = object;
      v73 = v114(v41);
      if (v7)
      {
        v9 = v111;
        v111;
        a4;
        v12 = v72;
        goto LABEL_3;
      }

      v19 = v108;
      rawBits = v108 | v62 | 1;
      v20 = v62 >> 14;
      if (v73)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v111);
        v136 = v111;
        if (isUniquelyReferenced_nonNull_native)
        {
          a3 = v121;
          a2 = v116;
          a1._rawBits = v118;
          a5 = v114;
          v9 = v111;
        }

        else
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 16) + 1, 1);
          a5 = v114;
          a2 = v116;
          v9 = v136;
          a3 = v121;
          a1._rawBits = v118;
        }

        v11 = v131;
        v16 = v133;
        v76 = v9[2];
        v75 = v9[3];
        if (v76 >= v75 >> 1)
        {
          v106 = a6;
          v103 = a3;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
          v11 = v131;
          v16 = v133;
          a5 = v114;
          a2 = v116;
          a1._rawBits = v118;
          a3 = v103;
          a6 = v106;
          v9 = v136;
        }

        v9[2] = (v76 + 1);
        v77 = &v9[2 * v76];
        v77[4] = v71;
        v77[5] = v72;
        v10 = v129;
        v7 = 0;
        v17 = v123;
        v19 = v108;
        if (v20 == v129)
        {
          break;
        }
      }

      else
      {
        v72;
        v10 = v129;
        v11 = v131;
        a3 = v121;
        v17 = v123;
        a2 = v116;
        a1._rawBits = v118;
        a5 = v114;
        v9 = v111;
        v16 = v133;
        if (v20 == v129)
        {
          break;
        }
      }
    }
  }

  v12 = a4;
LABEL_3:
  v12;
  return v9;
}

Swift::UInt64 specialized Sequence.forEach(_:)(Swift::String::Index position, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = a2 >> 14;
  v8 = position._rawBits >> 14;
  if (position._rawBits >> 14 != a2 >> 14)
  {
    v11 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    v46 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v47 = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v13 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v48 = v13;
    while (1)
    {
      v14 = position._rawBits & 0xC;
      rawBits = position._rawBits;
      if (v14 == v12)
      {
        v43._rawBits = position._rawBits;
        v19 = a3;
        v20 = a5;
        v21 = a6;
        v22._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
        a3 = v19;
        a6 = v21;
        a5 = v20;
        rawBits = v22._rawBits;
        position._rawBits = v43._rawBits;
      }

      if (rawBits >> 14 < v8 || rawBits >> 14 >= v7)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v44._rawBits = position._rawBits;
        v23 = a3;
        v24 = v12;
        v25 = a5;
        v26 = a6;
        v27 = String.UTF8View._foreignSubscript(position:)(rawBits);
        a3 = v23;
        a6 = v26;
        a5 = v25;
        v12 = v24;
        v17 = v27;
        position._rawBits = v44._rawBits;
        if (v14 != v24)
        {
          goto LABEL_19;
        }
      }

      else if ((a4 & 0x2000000000000000) != 0)
      {
        v49[0] = a3;
        v49[1] = v47;
        v17 = *(v49 + (rawBits >> 16));
        if (v14 != v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v16 = v46;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v42 = v12;
          v45._rawBits = position._rawBits;
          v37 = a5;
          v38 = a6;
          v39 = a3;
          v40 = _StringObject.sharedUTF8.getter(a3, a4);
          a3 = v39;
          a6 = v38;
          a5 = v37;
          v16 = v40;
          v12 = v42;
          position._rawBits = v45._rawBits;
        }

        v17 = v16[rawBits >> 16];
        if (v14 != v12)
        {
LABEL_19:
          v50 = a3;
          if ((a4 & 0x1000000000000000) != 0)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }
      }

      v28 = a3;
      v29 = a5;
      v30 = a6;
      position._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
      a6 = v30;
      a5 = v29;
      v50 = v28;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_23:
        if (v48 <= position._rawBits >> 16)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v31 = v17;
        v32 = v12;
        v33 = a5;
        v34 = a6;
        v18 = String.UTF8View._foreignIndex(after:)(position)._rawBits;
        a6 = v34;
        a5 = v33;
        v12 = v32;
        v17 = v31;
        goto LABEL_25;
      }

LABEL_20:
      v18 = (position._rawBits & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_25:
      v35 = v17;
      v36 = a6;
      position._rawBits = a5(v35);
      if (!v6)
      {
        position._rawBits = v18;
        a6 = v36;
        a3 = v50;
        if (v18 >> 14 != v7)
        {
          continue;
        }
      }

      break;
    }
  }

  return position._rawBits;
}

float specialized Float16.init(sign:exponentBitPattern:significandBitPattern:)(char a1, char a2, __int16 a3)
{
  if (a1)
  {
    v3 = -32768;
  }

  else
  {
    v3 = 0;
  }

  LODWORD(result) = v3 & 0xFFFF8000 | a3 & 0x3FF | ((a2 & 0x1F) << 10);
  return result;
}

float specialized Float.init(sign:exponentBitPattern:significandBitPattern:)(char a1, unsigned __int8 a2, int a3)
{
  if (a1)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  LODWORD(result) = v3 & 0x80000000 | a3 & 0x7FFFFF | (a2 << 23);
  return result;
}

uint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt16, &type metadata for UInt16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt16, &type metadata for UInt16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt16, &type metadata for UInt16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt and conformance UInt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt, &type metadata for UInt, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt, &type metadata for UInt, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt, &type metadata for UInt, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt64, &type metadata for UInt64, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt64, &type metadata for UInt64, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt64, &type metadata for UInt64, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t partial apply for closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:)(uint64_t a1)
{
  return partial apply for closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:)(a1);
}

{
  return (*(*(*(v1 + 32) - 8) + 104))(a1, *(v1 + 40));
}

unint64_t specialized static _Int128./ infix(_:_:)(uint64_t a1, uint64_t a2, Swift::_Int128 dividingBy)
{
  if (dividingBy.high == -1)
  {
    if (dividingBy.low == -1 && a2 == 0x8000000000000000 && !a1)
    {
LABEL_11:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (!dividingBy.high && !dividingBy.low)
  {
    goto LABEL_11;
  }

  low = dividingBy.low;
  high = dividingBy.high;

  return _Int128.quotientAndRemainder(dividingBy:)(*&low);
}

uint64_t specialized static _UInt128./ infix(_:_:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  v4.low = a4;
  if (!(a4 | a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4.high = a1;
  specialized _wideDivide22<A>(_:by:)(&v8, &v7, &v6, a2, v4, a3);
  return v8;
}

unint64_t specialized static _Int128.* infix(_:_:)(unint64_t a1, int64_t a2, unint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (!a4)
    {
      v5 = -__PAIR128__(v4, a1) >> 64;
      a4 = 0;
      if (a2 >= 0)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        a1 = -a1;
        a2 = v5;
        LOBYTE(v5) = a3 != 0;
      }

      goto LABEL_19;
    }

    if (((a4 ^ a2) & 0x8000000000000000) == 0)
    {
      if (a2 < 0)
      {
LABEL_17:
        v5 = (a4 ^ a2) >> 63;
        v6 = a1 == 0;
        a1 = -a1;
        a2 = -(a2 + !v6);
        if ((a4 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_9;
    }

    if (a2 < 0)
    {
      goto LABEL_17;
    }

    LOBYTE(v5) = 1;
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((a4 & 0x8000000000000000) == 0 || !a1)
    {
LABEL_9:
      LOBYTE(v5) = 0;
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    a2 = 0;
    LOBYTE(v5) = 1;
  }

LABEL_18:
  v6 = a3 == 0;
  a3 = -a3;
  a4 = -(a4 + !v6);
LABEL_19:
  v7 = !is_mul_ok(a2, a3);
  v8 = !is_mul_ok(a1, a4);
  v9 = __CFADD__(a2 * a3, a1 * a4);
  v10 = a1 * a3;
  v11 = (__PAIR128__(a4, a3) * __PAIR128__(a2, a1)) >> 64;
  v12 = __CFADD__(a2 * a3 + a1 * a4, (a1 * a3) >> 64);
  if (a4)
  {
    v13 = a2 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 || v7 || v8 || v9)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_59;
    }

    v12 = 1;
LABEL_40:
    v6 = v10 == 0;
    v14 = -v10;
    if (v6)
    {
      v15 = -v11;
    }

    else
    {
      v15 = ~v11;
    }

    v6 = v14 != 0;
    v16 = v14 - 1;
    v17 = !v6;
    v18 = v15 - v17;
    v6 = __CFADD__(v16, 1);
    v10 = v16 + 1;
    v19 = v6;
    if (v18 == -1)
    {
      if (v12)
      {
        goto LABEL_59;
      }

      v18 = v19 - 1;
    }

    else
    {
      if (v19)
      {
        if (v12)
        {
          goto LABEL_59;
        }

        ++v18;
        goto LABEL_57;
      }

      if (v12)
      {
        goto LABEL_59;
      }
    }

    if (!v18)
    {
      goto LABEL_59;
    }

LABEL_57:
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_59;
    }

    return v10;
  }

  if (v5)
  {
    goto LABEL_40;
  }

  if (v12 || !is_mul_ok(a3, a1) && v11 < 0)
  {
LABEL_59:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v10;
}

unint64_t specialized static _UInt128.* infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = !is_mul_ok(a2, a3);
  v5 = !is_mul_ok(a1, a4);
  v6 = __CFADD__(a2 * a3, a1 * a4);
  v7 = __CFADD__(a2 * a3 + a1 * a4, (a3 * a1) >> 64);
  if (a4)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 || v4 || v5 || v6 || v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a3 * a1;
}

uint64_t *specialized static _UInt128.&>>= infix(_:_:)(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = v3 >> a2;
  v5 = (v3 << -a2) | (*result >> a2);
  if ((a2 & 0x7F) != 0)
  {
    v3 >>= a2;
    v2 = v5;
  }

  if ((a2 & 0x7Fu) > 0x3FuLL)
  {
    v3 = 0;
    v2 = v4;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t *_ss8_UInt128V4alleoiyyABz_ABtFZTf4nnd_nTf4nx_n_0(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  if ((a2 & 0x7F) != 0)
  {
    v3 = (v3 << a2) | (*result >> -a2);
    v2 = *result << a2;
  }

  if ((a2 & 0x7Fu) > 0x3FuLL)
  {
    v3 = *result << a2;
    v2 = 0;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t specialized project #1 <A, B><A1>(_:) in closure #1 in WritableKeyPath._projectMutableAddress(from:)(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6, uint64_t a7)
{
  v81 = a5;
  v10 = a1;
  v11 = *(a7 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v75 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v75 - v19;
  v21 = *v18;
  result = RawKeyPathComponent.value.getter(v22, v23, v24, &v86);
  v28 = v87 >> 61;
  if ((v87 >> 61) <= 2)
  {
    if (v28)
    {
      v70 = *v21;
      v21 = (*v21 + v86);
      v71 = v81;
      v72 = *v81;
      v73 = type metadata accessor for ClassHolder(0, a6, v26, v27);
      v74 = swift_allocObject(v73, 0x38, 7uLL);
      *(v74 + 2) = v72;
      *(v74 + 3) = v70;
      swift_beginAccess(v21, v74 + 4, 0x21uLL, v7);
      *v71 = v74;
      result = swift_unknownObjectRetain(v70);
    }

    else
    {
      v21 = (v21 + v86);
    }
  }

  else
  {
    v79 = v14;
    v80 = v11;
    v29 = a6;
    v30 = v88;
    v31 = v89;
    v33 = v90;
    v32 = v91;
    if (v28 == 3)
    {
      v50 = (v90 - v89);
      if (v91)
      {
        v51 = v89 == 0;
      }

      else
      {
        v51 = 1;
      }

      if (v51)
      {
        v50 = 0;
        v52 = v88;
      }

      else
      {
        v52 = v89;
      }

      v53 = (v88 + 8);
      if (((v88 + 8) & 7) == 0)
      {
        v78 = v52;
        v79 = v50;
        v77 = *v81;
        v54 = v29;
        v82 = v29;
        v83 = a7;
        v84 = &type metadata for UnsafeRawPointer;
        v85 = &type metadata for Int;
        swift_getFunctionTypeMetadata(33685508, &v82, &parameter_flags_3000, &unk_1EEEAC658);
        v76 = *v53;
        if (v76)
        {
          v75[0] = ComputedAccessorsPtr.getter<A, B>()(v30, a7, v29);
          v75[1] = v75;
          v55 = *(v29 - 8);
          MEMORY[0x1EEE9AC00](v75[0]);
          v57 = v75 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
          v58 = v80;
          (*(v80 + 16))(v17, v21, a7);
          v59 = v78;
          v60 = v79;
          (v75[0])(v17, v78, v79);
          (*(v58 + 8))(v17, a7);
          v62 = type metadata accessor for MutatingWritebackBuffer(0, a7, v54, v61);
          v63 = swift_allocObject(v62, *(v62 + 48), *(v62 + 52));
          v64 = v76;
          *(v63 + 2) = v77;
          *(v63 + 3) = v21;
          *(v63 + 4) = v64;
          *(v63 + 5) = v59;
          *(v63 + 6) = v60;
          v21 = &v63[*(*v63 + 136)];
          result = (*(v55 + 32))(v21, v57, v54);
          *v81 = v63;
          goto LABEL_30;
        }

        goto LABEL_32;
      }

LABEL_31:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v28 == 4)
    {
      v78 = v10;
      v34 = *(v80 + 16);
      v34(v20, v21, a7);
      if (v32)
      {
        v35 = v31 == 0;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v33 - v31;
      }

      if (v35)
      {
        v37 = v30;
      }

      else
      {
        v37 = v31;
      }

      v77 = *v81;
      v34(v79, v20, a7);
      v38 = (v30 + 8);
      if (((v30 + 8) & 7) == 0)
      {
        v39 = v29;
        v82 = v29;
        v83 = a7;
        v84 = &type metadata for UnsafeRawPointer;
        v85 = &type metadata for Int;
        swift_getFunctionTypeMetadata(131076, &v82, 0, &unk_1EEEAC658);
        v10 = v78;
        if (*v38)
        {
          v40 = *v38;
          v41 = ComputedAccessorsPtr.getter<A, B>()(v30, a7, v29);
          v76 = v75;
          v42 = *(v29 - 8);
          MEMORY[0x1EEE9AC00](v41);
          v44 = v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          v45(v20, v37, v36);
          v46 = v80;
          (*(v80 + 8))(v20, a7);
          v48 = type metadata accessor for NonmutatingWritebackBuffer(0, a7, v39, v47);
          v49 = swift_allocObject(v48, *(v48 + 48), *(v48 + 52));
          *(v49 + 2) = v77;
          (*(v46 + 32))(&v49[*(*v49 + 104)], v79, a7);
          *&v49[*(*v49 + 112)] = v40;
          *&v49[*(*v49 + 120)] = v37;
          *&v49[*(*v49 + 128)] = v36;
          v21 = &v49[*(*v49 + 136)];
          result = (*(v42 + 32))(v21, v44, v39);
          *v81 = v49;
          goto LABEL_30;
        }

LABEL_32:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_31;
    }

    v65 = v10;
    v66 = type metadata accessor for Optional(0, v29, v26, v27);
    v67 = *(v66 - 8);
    MEMORY[0x1EEE9AC00](v66);
    v69 = v75 - v68;
    (*(v67 + 16))(v75 - v68, v21, v66);
    if ((*(*(v29 - 8) + 48))(v69, 1, v29) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = (*(v67 + 8))(v69, v66);
    v10 = v65;
  }

LABEL_30:
  *v10 = v21;
  return result;
}

unint64_t partial apply for closure #1 in _swift_getKeyPath(pattern:arguments:)(_DWORD *a1, uint64_t a2)
{
  v3 = v2[2];
  result = _instantiateKeyPathBuffer(_:_:_:_:_:)(v2[3], a1, a2, v2[4], v2[5], v2[6]);
  *v3 = result;
  *(v3 + 4) = BYTE4(result) & 1;
  return result;
}

void partial apply for closure #1 in _createOffsetBasedKeyPath(root:value:offset:)(void *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  into._position.value._rawValue = a1;
  into._end.value._rawValue = a2;
  v6 = v3 - 8;
  if (__OFSUB__(v3, 8))
  {
    __break(1u);
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0 || HIDWORD(v6) || (v7 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4), _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytess0E16KeyPathComponentV6HeaderV_Tt1g5Tm(v6 | 0xA0000000, 0, v7._position.value._rawValue, v7._end.value._rawValue), KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4), MetadataKind = swift_getMetadataKind(v4), _MetadataKind.init(rawValue:)(MetadataKind), (v5 & 0x8000000000000000) != 0) || HIDWORD(v5))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, 0);
  }
}

uint64_t partial apply for closure #2 in _rerootKeyPath<A>(_:to:)(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 25);
  v6 = *(v2 + 26);
  v7 = *(v2 + 32);
  into._position.value._rawValue = a1;
  into._end.value._rawValue = a2;
  if ((v3 & 0x8000000000000000) != 0 || HIDWORD(v3))
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4)
  {
    LODWORD(v3) = v3 | 0x80000000;
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    LODWORD(v3) = v3 | 0x40000000;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v6 & 1) == 0)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0x20000000;
LABEL_10:
  v9 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4);
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytess0E16KeyPathComponentV6HeaderV_Tt1g5Tm(v3 | v8, 0, v9._position.value._rawValue, v9._end.value._rawValue);
  KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4);
  v10 = specialized KeyPathBuffer.init(base:)(v7 + 24);
  v12 = v11;
  if (v10)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v15 = v12 - v10 - 4;
    if (__OFSUB__(v12 - v10, 4))
    {
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
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v15 < 0)
    {
      goto LABEL_44;
    }

    v16 = v10 + 4;
    v17 = *v10;
    if ((v17 & 0x7D000000) == 0x1000000)
    {
      v18 = 4 * ((~v17 & 0x7FFFFF) == 0);
    }

    else if ((BYTE3(v17) & 0x7F) == 2)
    {
      v18 = 28;
      if ((v17 & 0x400000) == 0)
      {
        v18 = 20;
      }

      if ((v17 & 0x80000) != 0)
      {
        v19 = 24;
        if ((v17 & 0x400000) == 0)
        {
          v19 = 16;
        }

        v20 = v10 + v19 + 8;
        if ((v20 & 7) != 0)
        {
          goto LABEL_50;
        }

        v18 += ((v17 >> 1) & 8) + *v20 + 16;
        if (v18 < 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = v15 - v18;
    if (v15 - v18 < 0)
    {
      goto LABEL_44;
    }

    v22 = v16 + v18;
    v12 = v16 + v15;
    if (v15 == v18)
    {
      break;
    }

    v23 = (v16 + v18);
    if ((v22 & 7) != 0)
    {
      v24 = -v22 & 7;
      if (__OFADD__(v22, v24))
      {
        goto LABEL_49;
      }

      v23 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v22 + v24, v21 - v24);
      v12 = v25;
    }

    if (__OFSUB__(v12 - v23, 8))
    {
      goto LABEL_46;
    }

    if (((v12 - v23 - 8) & 0x8000000000000000) != 0)
    {
LABEL_44:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = (v23 + 1);
    v26 = *v23;
    RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, (v17 & 0x80000000) != 0);
    if (!v26)
    {
      goto LABEL_41;
    }

LABEL_13:
    if ((v10 & 3) != 0)
    {
      v13 = -v10 & 3;
      if (__OFADD__(v10, v13))
      {
        goto LABEL_47;
      }

      if (__OFSUB__(v12 - v10, v13))
      {
        goto LABEL_48;
      }

      v10 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v10 + v13, v12 - v10 - v13);
      v12 = v14;
    }
  }

  RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, (v17 & 0x80000000) != 0);
LABEL_41:
  if (v12 >= 0xFFFFFFFFFFFFFFF9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v27 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = *v27;
  v29 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(8, 8);
  return _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(v28, 0, v29._position.value._rawValue, v29._end.value._rawValue);
}

void sub_180619698()
{
  v1 = *(v0 + 2);
  v2 = (type metadata accessor for LazyMapSequence(0, v1, *(v0 + 3), *(v0 + 5)) - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  *(v0 + 7);
  (*(*(v1 - 8) + 8))(&v0[v3], v1);
  *&v0[v3 + 8 + v2[13]];

  swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in LazyMapSequence.map<A>(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for LazyMapSequence(0, v3, v4, v1[5]) - 8);
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return closure #1 in LazyMapSequence.map<A>(_:)(a1, v6, v7, v8, v3, v4);
}

void sub_180619850()
{
  v1 = *(v0 + 2);
  v2 = (type metadata accessor for LazyMapSequence(0, v1, *(v0 + 3), *(*(v0 + 5) + 8)) - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  *(v0 + 7);
  (*(*(v1 - 8) + 8))(&v0[v3], v1);
  *&v0[v3 + 8 + v2[13]];

  swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in LazyMapSequence<>.map<A>(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for LazyMapSequence(0, v3, v4, *(v1[5] + 8)) - 8);
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return closure #1 in LazyMapSequence<>.map<A>(_:)(a1, v6, v7, v8, v3, v4);
}

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Slice(0, a3, *(a4 + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v9, v10);

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)(v4, a2, a1, a3, v9, a4, WitnessTable);
}

uint64_t partial apply for closure #1 in MutableCollection.moveSubranges(_:to:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = *(v1[3] + 8);
  swift_getAssociatedTypeWitness(255, v5, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v3, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v10 = type metadata accessor for RangeSet.Ranges(0, v7, AssociatedConformanceWitness, v9);
  v4;
  LOBYTE(v5) = RangeSet.Ranges._contains(_:)(a1, v10);
  v4;
  return v5 & 1;
}

BOOL partial apply for closure #2 in MutableCollection.moveSubranges(_:to:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = *(v1[3] + 8);
  swift_getAssociatedTypeWitness(255, v5, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v3, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v10 = type metadata accessor for RangeSet.Ranges(0, v7, AssociatedConformanceWitness, v9);
  v4;
  LOBYTE(v5) = RangeSet.Ranges._contains(_:)(a1, v10);
  v4;
  return (v5 & 1) == 0;
}

atomic_ullong *outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(atomic_ullong *result, atomic_ullong *a2)
{
  if (result)
  {
    return a2;
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return a2;
  }

  return result;
}

uint64_t specialized Never.init(from:)(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  *v5 = &type metadata for Never;
  *(v5 + 8) = v4;
  *(v5 + 16) = 0xD000000000000026;
  *(v5 + 24) = 0x8000000180671E20;
  *(v5 + 32) = 0;
  *(v5 + 72) = 0;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::String::Index specialized Collection.subscript.getter(unint64_t a1, unint64_t a2)
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
  v7._rawBits = 15;
  result._rawBits = _StringGuts.validateScalarRange(_:)(v7, v6, a1, a2)._rawBits;
  if (result._rawBits < 0x10000)
  {
    return (result._rawBits | 3);
  }

  return result;
}

uint64_t specialized Slice<>.subscript.setter(uint64_t a1, char *a2, const char *a3, uint64_t a4)
{
  v12 = a4;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, a3, &v12);
  v10 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, a3, v9);
  return _writeBackMutableSlice<A, B>(_:bounds:slice:)(v4, a2, a1, a3, a3, WitnessTable, v10);
}

uint64_t specialized MutableCollection.subscript.setter(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, uint64_t a5, swift *a6)
{
  v12 = *(a5 + 8);
  swift_getAssociatedTypeWitness(255, v12, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v13, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v17 = type metadata accessor for Range(0, v14, AssociatedConformanceWitness, v16);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v21 - v18;
  (*(a6 + 3))(v6, a3, v12, a4, a6);
  return (*(a5 + 40))(a1, v19, a3, a5);
}

uint64_t specialized MutableCollection.subscript.setter(uint64_t a1, const char *a2, uint64_t a3)
{
  v48 = a1;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v47 = v9;
  v45 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v39 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v43 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v14);
  v15 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v39 - v16;
  v50 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  v25 = type metadata accessor for PartialRangeFrom(0, v8, AssociatedConformanceWitness, v24);
  v41 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  v28 = *(v6 + 64);
  v51 = a2;
  v52 = v3;
  v28(a2, v6);
  if (((*(*(AssociatedConformanceWitness + 8) + 8))(v23, v23, v8) & 1) == 0 || (v39 = v25, v40 = a3, v29 = v50, v30 = *(v50 + 32), v30(v27, v23, v8), (*(v29 + 16))(v21, v27, v8), v31 = v49, (*(v6 + 72))(v51, v6), ((*(AssociatedConformanceWitness + 24))(v21, v31, v8, AssociatedConformanceWitness) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v41 + 8))(v27, v39);
  v32 = v44;
  v30(v44, v21, v8);
  v33 = v47;
  v30(&v32[*(v47 + 48)], v31, v8);
  v35 = v45;
  v34 = v46;
  (*(v45 + 16))(v46, v32, v33);
  v49 = *(v33 + 48);
  v36 = v42;
  v30(v42, v34, v8);
  v37 = *(v50 + 8);
  v37(&v49[v34], v8);
  (*(v35 + 32))(v34, v32, v33);
  v30(&v36[*(v43 + 36)], &v34[*(v33 + 48)], v8);
  v37(v34, v8);
  return (*(v40 + 40))(v48, v36, v51);
}

uint64_t partial apply for closure #1 in RangeSet.Ranges._contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = type metadata accessor for Range(0, v6, v7, a4);
  return (*(v7 + 40))(a1 + *(v9 + 36), v8, v6, v7) & 1;
}

uint64_t partial apply for closure #1 in RangeSet.isSubset(of:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (((*(v3 + 24))(a1, v5, v4, v3) & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Range(0, v4, v3, v6);
  return (*(v3 + 16))(v5, a1 + *(v7 + 36), v4, v3) & 1;
}

void partial apply for closure #1 in _forEachFieldWithKeyPath<A>(of:options:body:)(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  into._position.value._rawValue = a1;
  into._end.value._rawValue = a2;
  v5 = v3 - 8;
  if (__OFSUB__(v3, 8))
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0 || HIDWORD(v5) || (v6 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4), _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytess0E16KeyPathComponentV6HeaderV_Tt1g5Tm(v5 | 0xA0000000, 0, v6._position.value._rawValue, v6._end.value._rawValue), KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4), (v4 & 0x8000000000000000) != 0) || HIDWORD(v4))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, 0);
  }
}

unint64_t specialized RangeReplaceableCollection.init(repeating:count:)(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 || (v2 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5s8RepeatedVys7UnicodeO6ScalarVG_Tg506_sSS17gh42ViewV6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6E8VAHXEfU_Tf1cn_n(a2, a1), v3 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v2, 1), !v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v3;
  v6 = v4;
  v2;
  v7 = specialized static String.+ infix(_:_:)(0, 0xE000000000000000, v5, v6);
  v6;
  return v7;
}

uint64_t specialized RangeReplaceableCollection.init(repeating:count:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 15;
  }

  v2 = a2;
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  do
  {
    v3._rawBits = 7;
    specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(7uLL, v3);
    --v2;
  }

  while (v2);
  return 15;
}

uint64_t specialized RangeReplaceableCollection.init(repeating:count:)(unint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  if (a3)
  {
    if (a3 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    specialized String.append<A>(contentsOf:)(a3, a1, a2, a4, a5, a6, a7, a8, a9, a10, a11);
    a2;
  }

  else
  {
    a2;
  }

  return 15;
}

uint64_t specialized RangeReplaceableCollection.init(repeating:count:)(char a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  LODWORD(result) = 0;
  v4 = (a1 + 1);
  do
  {
    if (BYTE3(result))
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = (v4 << (-(__clz(result) & 0x18) & 0x18)) | result;
    --a2;
  }

  while (a2);
  return result;
}

__objc2_class **specialized Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v43 - v11;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v15 = Array._getCount()();
  if (v15)
  {
    v17 = v15;
    type metadata accessor for _SetStorage(0, a2, a3, v16);
    v18 = static _SetStorage.allocate(capacity:)(v17);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  v51 = Array._getCount()();
  if (v51)
  {
    v19 = 0;
    v48 = *(a3 + 32);
    v49 = a3 + 32;
    v50 = v5 & 0xC000000000000001;
    v57 = (v6 + 16);
    v58 = v18 + 7;
    v53 = (v6 + 32);
    v55 = (v6 + 8);
    v46 = v14;
    v47 = v5;
    v44 = v6;
    v45 = a3;
    do
    {
      v20 = v50 == 0;
      v21 = v20 | ~_swift_isClassOrObjCExistentialType(a2, a2);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v19, v21 & 1);
      if (v21)
      {
        v22 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19;
        v56 = *(v6 + 16);
        v56(v14, v22, a2);
        v23 = __OFADD__(v19, 1);
        v24 = v19 + 1;
        if (v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v40 = _ArrayBuffer._getElementSlowPath(_:)(v19, v5, a2);
        if (v43 != 8)
        {
          goto LABEL_23;
        }

        v60 = v40;
        v41 = v40;
        v56 = *v57;
        v56(v14, &v60, a2);
        swift_unknownObjectRelease(v41);
        v23 = __OFADD__(v19, 1);
        v24 = v19 + 1;
        if (v23)
        {
LABEL_20:
          __break(1u);
          return v18;
        }
      }

      v54 = v24;
      v52 = *v53;
      v52(v59, v14, a2);
      v25 = v48(v18[5], a2, a3);
      v26 = v18;
      v27 = -1 << *(v18 + 32);
      v28 = v25 & ~v27;
      v29 = v28 >> 6;
      v30 = v58[v28 >> 6];
      v31 = 1 << v28;
      if (((1 << v28) & v30) == 0)
      {
        goto LABEL_15;
      }

      v32 = a3;
      v33 = ~v27;
      v34 = *(v6 + 72);
      do
      {
        v18 = v26;
        v56(v9, v26[6] + v34 * v28, a2);
        v35 = (*(*(v32 + 8) + 8))(v9, v59, a2);
        v36 = *v55;
        (*v55)(v9, a2);
        if (v35)
        {
          v36(v59, a2);
          a3 = v32;
          v5 = v47;
          v6 = v44;
          goto LABEL_7;
        }

        v28 = (v28 + 1) & v33;
        v29 = v28 >> 6;
        v30 = v58[v28 >> 6];
        v31 = 1 << v28;
      }

      while (((1 << v28) & v30) != 0);
      v6 = v44;
LABEL_15:
      v37 = v52;
      v52(v9, v59, a2);
      v58[v29] = (v31 | v30);
      v18 = v26;
      v37(v26[6] + *(v6 + 72) * v28, v9, a2);
      v38 = v26[2];
      v23 = __OFADD__(v38, 1);
      v39 = (&v38->isa + 1);
      if (v23)
      {
        __break(1u);
LABEL_23:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v26[2] = v39;
      a3 = v45;
      v5 = v47;
LABEL_7:
      v19 = v54;
      v14 = v46;
    }

    while (v54 != v51);
  }

  return v18;
}

uint64_t partial apply for closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  swift_getAssociatedTypeWitness(0, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  return (*(v6 + 8))(a1, v5) & 1;
}

{
  return partial apply for closure #1 in Sequence<>.split(separator:maxSplits:omittingEmptySubsequences:)(a1) & 1;
}

uint64_t specialized _SwiftSetNSEnumerator.countByEnumerating(with:objects:count:)(uint64_t a1, atomic_ullong **a2)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  offset = v2[4].offset;
  if (offset == v2[5].offset)
  {
    result = 0;
  }

  else
  {
    v10 = _SwiftDictionaryNSEnumerator.bridgedKey(at:)(offset);
    *a2 = v10;
    swift_unknownObjectRelease(v10);
    v2[4].offset = _HashTable.occupiedBucket(after:)(v2[4]).offset;
    *(a1 + 56) = v16;
    *(a1 + 40) = v15;
    *(a1 + 24) = v14;
    result = 1;
  }

  if (v6 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  v12 = &_fastEnumerationStorageMutationsTarget;
  if (v6)
  {
    v13 = v5;
  }

  else
  {
    v13 = a2;
  }

  if (v6)
  {
    v12 = v7;
  }

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v12;
  return result;
}

uint64_t specialized Substring.init<A>(_:)(uint64_t result)
{
  if (&full type metadata for [Character] == &full type metadata for String)
  {
    __break(1u);
  }

  else if (&full type metadata for [Character] != &full type metadata for Substring)
  {
    v1 = result;
    specialized String.append<A>(contentsOf:)(result);
    v1;
    return 15;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #1 in Sequence<>.sorted()(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + 16);
  swift_getAssociatedTypeWitness(0, *(v2 + 24), *(v2 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  return v6(a1, a2, v7, v5) & 1;
}

uint64_t partial apply for implicit closure #1 in MutableCollection<>.sort()(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = *(v5 + 16);
  swift_getAssociatedTypeWitness(0, *(*(v2[3] + 8) + 8), v2[2], &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  return v6(a1, a2, v7, v5) & 1;
}

uint64_t partial apply for closure #1 in String.init<A, B>(validating:as:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static String._validate<A>(_:as:)(a1, a2, *(v3 + 16), *(v3 + 16), *(v3 + 32));
  *a3 = result;
  a3[1] = v6;
  return result;
}

{
  return closure #1 in String.init<A, B>(validating:as:)(a1, a2, *(v3 + 16), *(v3 + 32), a3);
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF8 and conformance Unicode.UTF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF8 and conformance Unicode.UTF8;
  if (!lazy protocol witness table cache variable for type Unicode.UTF8 and conformance Unicode.UTF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF8, &type metadata for Unicode.UTF8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF8 and conformance Unicode.UTF8);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF8.ForwardParser, &type metadata for Unicode.UTF8.ForwardParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF8.ForwardParser, &type metadata for Unicode.UTF8.ForwardParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser);
  }

  return result;
}

unint64_t specialized _SmallString.init(taggedCocoa:)(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = xmmword_18071DD30;
  v3 = _NSStringCopyBytes(_:encoding:into:)(a1, a2, &v7, &v7 | 0xF);
  if (v4)
  {
LABEL_8:
    swift_unknownObjectRelease(a1);
    return 0;
  }

  if (v3 < 1)
  {
    if (v3)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_8;
  }

  if (v3 >= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = v3;
  }

  swift_unknownObjectRelease(a1);
  return v7 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v5) & 0x38));
}

int64_t specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(int64_t a1, uint64_t (*a2)(int64_t, int64_t))
{
  v5 = _allocateStringStorage(codeUnitCapacity:)(a1);
  *(v5 + 16) = v6;
  *(v5 + 24) = 0x3000000000000000;
  if (v6 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v7 = *(v5 + 24) & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 32 + v7) = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = a2(v5 + 32, a1);
  if (v2)
  {
    v5;
  }

  else
  {
    *(v5 + 24) = v8 | 0x3000000000000000;
    *(v5 + 32 + (v8 & 0xFFFFFFFFFFFFLL)) = 0;
  }

  return v5;
}

uint64_t specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(int64_t a1, uint64_t (*a2)(int64_t, int64_t))
{
  v4 = specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(a1, a2);
  if (v3)
  {
    return v2;
  }

  v5 = v4;
  v102 = 0;
  v6 = (v4 + 32);
  v7 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
  if (_allASCII(_:)((v4 + 32), v7) || !v7)
  {
    v10 = 1;
LABEL_47:
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v7, v10 & 1);
    return *(v5 + 24);
  }

  v8 = 0;
  v9 = v5 + v7 + 32;
  v10 = 1;
  v11 = v6;
  v12 = v6;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if ((v14 & 0x80000000) == 0)
    {
      v15 = 1;
      goto LABEL_7;
    }

    if ((v13 + 11) <= 0xCCu)
    {
      LOBYTE(v100) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v13);
      goto LABEL_49;
    }

    if (v13 > 0xDFu)
    {
      break;
    }

    if (v12 == v9 || (*v12 & 0xC0) != 0x80)
    {
LABEL_168:
      v94 = 4;
      goto LABEL_169;
    }

    v10 = 0;
    v12 = v11 + 2;
    v15 = 2;
LABEL_7:
    v8 += v15;
    v11 = v12;
    if (v12 == v9)
    {
      goto LABEL_47;
    }
  }

  if (v13 == 224)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    if (v11[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_170;
    }

    goto LABEL_31;
  }

  if (v13 <= 0xECu)
  {
    goto LABEL_29;
  }

  if (v13 == 237)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    v16 = v11[1];
    if (v16 > 0x9F || (v16 & 0xC0) != 0x80)
    {
      v94 = 1;
      goto LABEL_169;
    }

    goto LABEL_31;
  }

  if (v13 <= 0xEFu)
  {
LABEL_29:
    if (v12 == v9 || (v11[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

LABEL_31:
    if (v11 + 2 == v9 || (v11[2] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v10 = 0;
    v12 = v11 + 3;
    v15 = 3;
    goto LABEL_7;
  }

  if (v13 == 240)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    if (v11[1] - 192 < 0xFFFFFFD0)
    {
LABEL_170:
      v94 = 3;
      goto LABEL_169;
    }

    goto LABEL_41;
  }

  if (v13 <= 0xF3u)
  {
    if (v12 == v9 || (v11[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    goto LABEL_41;
  }

  if (v12 == v9)
  {
    goto LABEL_168;
  }

  v17 = v11[1];
  if (v17 <= 0x8F && (v17 & 0xC0) == 0x80)
  {
LABEL_41:
    if (v11 + 2 == v9 || (v11[2] & 0xC0) != 0x80 || v11 + 3 == v9 || (v11[3] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v10 = 0;
    v12 = v11 + 4;
    v15 = 4;
    goto LABEL_7;
  }

  v94 = 2;
LABEL_169:
  LOBYTE(v100) = v94;
LABEL_49:
  swift_willThrowTypedImpl(&v100, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v18 = specialized Collection.subscript.getter(v8, v6, v7);
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v18;
  if (v18 != v19)
  {
    specialized Slice.subscript.getter(v18, v18, v19, v20, v21);
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_174;
    }
  }

  v27 = v22;
  if (v26 != v23)
  {
    v28 = specialized Slice.subscript.getter(v26, v22, v23, v24, v25);
    v29 = __OFADD__(v26, 1);
    v30 = v26 + 1;
    if (v29)
    {
      goto LABEL_174;
    }

    v27 = v22;
    if ((v28 & 0xC0) == 0x80)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_181;
      }

      if (v22 + 1 <= v22)
      {
        goto LABEL_174;
      }

      if (v30 != v23)
      {
        v31 = specialized Slice.subscript.getter(v30, v22, v23, v24, v25);
        v29 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v29)
        {
          goto LABEL_174;
        }

        if ((v31 & 0xC0) == 0x80)
        {
          v29 = __OFADD__(v27, 1);
          v27 = v22 + 2;
          if (v29)
          {
            goto LABEL_181;
          }

          if (v22 + 2 <= v22)
          {
            goto LABEL_174;
          }

          if (v32 != v23)
          {
            v33 = specialized Slice.subscript.getter(v32, v22, v23, v24, v25);
            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_174;
            }

            if ((v33 & 0xC0) == 0x80)
            {
              v29 = __OFADD__(v27, 1);
              v27 = v22 + 3;
              if (!v29)
              {
                if (v22 + 3 > v22)
                {
                  goto LABEL_66;
                }

LABEL_174:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_181:
              __break(1u);
              goto LABEL_174;
            }
          }
        }
      }
    }

LABEL_66:
    if (v27 < v22)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v34 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    goto LABEL_174;
  }

  if (v23 < v34)
  {
    goto LABEL_174;
  }

  v35 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v22, v34, v24, v25);
  v37 = v36;
  v95 = v5;
  v38 = *(v5 + 24);
  v100 = 0;
  v101 = 0xE000000000000000;
  v39 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v40 = v39 + 15;
    v41 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v42 & 1) != 0 || v41 < v40)
    {
      v44 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v44 <= v40)
      {
        v44 = v39 + 15;
      }

      if (v43)
      {
        v45 = v39 + 15;
      }

      else
      {
        v45 = v44;
      }

      v98 = 0;
      v99 = 0;
      v46 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v98, 0, v45, 1);
      v47 = *(v46 + 24);
      0xE000000000000000;
      v100 = v47;
      v101 = v46;
    }
  }

  v48 = v37;
  v49 = v35;
LABEL_79:
  if (v49 < 0)
  {
LABEL_171:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v39;
  if (v39 < v49)
  {
    goto LABEL_174;
  }

  __n = v49;
  v52 = v100;
  v51 = v101;
  v53 = v100 & 0xFFFFFFFFFFFFLL;
  v54 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) != 0)
  {
    v55 = HIBYTE(v101) & 0xF;
  }

  else
  {
    v55 = v100 & 0xFFFFFFFFFFFFLL;
  }

  v56 = v55 + v50 + 3;
  if (__OFADD__(v55 + v50, 3))
  {
    __break(1u);
    goto LABEL_174;
  }

  v57 = v48;
  if (v56 < 16)
  {
LABEL_89:
    v60 = v57;
    v61 = v6;
  }

  else
  {
    v97 = v101;
    v58 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v59 & 1) == 0 && v58 >= v56)
    {
      v51 = v97;
      goto LABEL_89;
    }

    v62 = _StringGuts.uniqueNativeCapacity.getter();
    if (v63)
    {
      v64 = v97;
      if ((v97 & 0x1000000000000000) != 0)
      {
        v55 = String.UTF8View._foreignCount()();
      }

      v65 = v97 & 0x1000000000000000;
      if (v55 <= v56)
      {
        v55 = v56;
      }
    }

    else
    {
      if (2 * v62 <= v56)
      {
        v55 += v50 + 3;
      }

      else
      {
        v55 = 2 * v62;
      }

      v64 = v97;
      v65 = v97 & 0x1000000000000000;
    }

    v60 = v57;
    if (v65)
    {
      _StringGuts._foreignGrow(_:)(v55);
      v51 = v101;
      v61 = v6;
    }

    else
    {
      v61 = v6;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v67 = (v64 >> 62) & 1;
        v98 = v52;
        v99 = v64 & 0xFFFFFFFFFFFFFFLL;
        v66 = &v98;
        v68 = v54;
      }

      else
      {
        if ((v52 & 0x1000000000000000) != 0)
        {
          v66 = ((v64 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v66 = _StringObject.sharedUTF8.getter(v52, v64);
          v53 = v92;
        }

        v67 = v52 >> 63;
        v68 = v53;
      }

      v69 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v66, v68, v55, v67);
      v64;
      v101 = v69;
      v51 = v69;
    }
  }

  v70 = v51 & 0xFFFFFFFFFFFFFFFLL;
  v71 = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v72 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 24);
  specialized UnsafeMutablePointer.initialize(from:count:)(v61, __n, (v71 + (*((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
  v73 = (*v72 & 0xFFFFFFFFFFFFLL) + __n;
  v74 = v73 | 0x3000000000000000;
  *v72 = v73 | 0x3000000000000000;
  *(v71 + (v73 & 0xFFFFFFFFFFFFLL)) = 0;
  v75 = *(v70 + 16);
  if (v75 < 0)
  {
    v76 = ((v71 + (v75 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v77 = *v76;
    *v76 = 0;
    v77;
    v74 = *v72;
  }

  v100 = v74;
  v78 = v102;
  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v100);
  if (v50 < v60)
  {
    goto LABEL_171;
  }

  if (v60 < 0)
  {
    goto LABEL_174;
  }

  v39 = v50 - v60;
  if (v50 - v60 < 0)
  {
    goto LABEL_174;
  }

  v102 = v78;
  v6 = &v61[v60];
  if (!_allASCII(_:)(&v61[v60], v50 - v60) && v50 != v60)
  {
    v79 = 0;
    v80 = &v61[v50];
    v81 = v6;
    v82 = v6;
    do
    {
      v84 = *v82++;
      v83 = v84;
      if ((v84 & 0x80000000) == 0)
      {
        v85 = 1;
        goto LABEL_117;
      }

      if ((v83 + 11) <= 0xCCu)
      {
        LOBYTE(v98) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v83);
        goto LABEL_157;
      }

      if (v83 <= 0xDFu)
      {
        if (v82 == v80 || (*v82 & 0xC0) != 0x80)
        {
LABEL_159:
          LOBYTE(v98) = 4;
          goto LABEL_157;
        }

        v82 = v81 + 2;
        v85 = 2;
      }

      else
      {
        if (v83 == 224)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          if (v81[1] - 192 < 0xFFFFFFE0)
          {
            goto LABEL_160;
          }

          goto LABEL_141;
        }

        if (v83 <= 0xECu)
        {
          goto LABEL_139;
        }

        if (v83 == 237)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          v86 = v81[1];
          if (v86 > 0x9F || (v86 & 0xC0) != 0x80)
          {
            LOBYTE(v98) = 1;
            goto LABEL_157;
          }

          goto LABEL_141;
        }

        if (v83 <= 0xEFu)
        {
LABEL_139:
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

LABEL_141:
          if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

          v82 = v81 + 3;
          v85 = 3;
          goto LABEL_117;
        }

        if (v83 == 240)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          if (v81[1] - 192 < 0xFFFFFFD0)
          {
LABEL_160:
            LOBYTE(v98) = 3;
            goto LABEL_157;
          }
        }

        else if (v83 <= 0xF3u)
        {
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }
        }

        else
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          v87 = v81[1];
          if (v87 > 0x8F || (v87 & 0xC0) != 0x80)
          {
            LOBYTE(v98) = 2;
LABEL_157:
            swift_willThrowTypedImpl(&v98, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v88 = specialized Collection.subscript.getter(v79, v6, v39);
            v49 = findInvalidRange #1 (_:) in validateUTF8(_:)(v88, v89, v90, v91);
            if (!v39)
            {
              v72 = &v100;
              goto LABEL_166;
            }

            goto LABEL_79;
          }
        }

        if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80 || v81 + 3 == v80 || (v81[3] & 0xC0) != 0x80)
        {
          goto LABEL_159;
        }

        v82 = v81 + 4;
        v85 = 4;
      }

LABEL_117:
      v79 += v85;
      v81 = v82;
    }

    while (v82 != v80);
  }

  __StringStorage.appendInPlace(_:isASCII:)(v6, v39, 0);
LABEL_166:
  v2 = *v72;
  v95;
  return v2;
}