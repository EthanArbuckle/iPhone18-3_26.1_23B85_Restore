void specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = v3[3] >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    *v1 = v3;
    v8 = v3[3] >> 1;
  }

  v10 = v3[2];
  v11 = v8 - v10;
  if (v11 < 0)
  {
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*(a1 + 16))
  {
    a1;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v11 < v2)
  {
    goto LABEL_20;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, &v3[4 * v10 + 4]);
  a1;
  if (v2)
  {
    v12 = v3[2];
    v13 = __OFADD__(v12, v2);
    v14 = (v12 + v2);
    if (!v13)
    {
      v3[2] = v14;
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
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
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = v3[3] >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    *v1 = v3;
    v8 = v3[3] >> 1;
  }

  v10 = v3[2];
  v11 = v8 - v10;
  if (v11 < 0)
  {
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*(a1 + 16))
  {
    a1;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v11 < v2)
  {
    goto LABEL_20;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, &v3[2 * v10 + 4]);
  a1;
  if (v2)
  {
    v12 = v3[2];
    v13 = __OFADD__(v12, v2);
    v14 = (v12 + v2);
    if (!v13)
    {
      v3[2] = v14;
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
  *v1 = v3;
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v6 = *(a1 + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v5);
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v16 = v7[3] >> 1, v16 < v9))
  {
    if (v8 <= v9)
    {
      v17 = v8 + v6;
    }

    else
    {
      v17 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v7, a2, a3, a4, a5);
    *v5 = v7;
    v16 = v7[3] >> 1;
  }

  v18 = v7[2];
  v19 = v16 - v18;
  if (v19 < 0)
  {
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*(a1 + 16))
  {
    a1;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v19 < v6)
  {
    goto LABEL_20;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v6, &v7[5 * v18 + 4], a4, a5);
  a1;
  if (v6)
  {
    v20 = v7[2];
    v21 = __OFADD__(v20, v6);
    v22 = (v20 + v6);
    if (!v21)
    {
      v7[2] = v22;
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
  *v5 = v7;
}

uint64_t Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a2;
  v9 = *(a2 + 16);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v107 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v99 - v13;
  v16 = type metadata accessor for Optional(0, v9, v14, v15);
  v110 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v111 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v105 = &v99 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v112 = &v99 - v22;
  v23 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v120 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v99 - v27;
  v28 = *(a4 + 40);
  v118 = a4;
  v29 = v28(a3, a4);
  v30 = Array._getCount()();
  v33 = v30 + v29;
  if (__OFADD__(v30, v29))
  {
    __break(1u);
    goto LABEL_41;
  }

  v114 = v26;
  v115 = v29;
  v119 = v10;
  v109 = v16;
  type metadata accessor for _ArrayBuffer(0, v9, v31, v32);
  v34 = _ArrayBuffer.beginCOWMutation()();
  v104 = v5;
  v116 = a3;
  if (v34 && ((v35 = *v5, v36 = *v5 & 0xFFFFFFFFFFFFFF8, !_swift_isClassOrObjCExistentialType(v9, v9)) ? (v37 = v35) : (v37 = v35 & 0xFFFFFFFFFFFFFF8), v33 <= *(v37 + 24) >> 1))
  {
    v38 = a1;
  }

  else
  {
    v39 = *v5;
    if (_swift_isClassOrObjCExistentialType(v9, v9) && (v39 < 0 || (v39 & 0x4000000000000000) != 0))
    {
      if (v39 < 0)
      {
        v98 = v39;
      }

      else
      {
        v98 = (v39 & 0xFFFFFFFFFFFFFF8);
      }

      v42 = [v98 count];
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v9, v9);
      v41 = v39 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v41 = v39;
      }

      v42 = *(v41 + 16);
    }

    v38 = a1;
    if (v42 <= v33)
    {
      v43 = v33;
    }

    else
    {
      v43 = v42;
    }

    v35 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v43, 1, v39, v9);
    *v5 = v35;
    v36 = v35 & 0xFFFFFFFFFFFFFF8;
  }

  if (_swift_isClassOrObjCExistentialType(v9, v9))
  {
    v44 = v36;
  }

  else
  {
    v44 = v35;
  }

  v45 = *(v44 + 16);
  v46 = _swift_isClassOrObjCExistentialType(v9, v9);
  v47 = v119[80];
  v48 = *(v119 + 9);
  if (_swift_isClassOrObjCExistentialType(v9, v9))
  {
    v49 = v36;
  }

  else
  {
    v49 = v35;
  }

  v50 = ((*(v49 + 24) >> 1) - v45);
  if (v50 < 0)
  {
LABEL_41:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v46)
  {
    v51 = v36;
  }

  else
  {
    v51 = v35;
  }

  v108 = v48;
  v52 = v51 + ((v47 + 32) & ~v47) + v48 * v45;
  v53 = v117;
  v54 = v38;
  v55 = v38;
  v56 = v116;
  (*(v23 + 16))(v117, v55, v116);
  v57 = v121;
  v58 = v118[8](v121, v52, v50, v56);
  if (v58 < v115)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v58;
  (*(v23 + 8))(v54, v56);
  if (v59 >= 1)
  {
    if (_swift_isClassOrObjCExistentialType(v9, v9))
    {
      v60 = v36;
    }

    else
    {
      v60 = v35;
    }

    v61 = *(v60 + 16);
    v62 = v61 + v59;
    if (__OFADD__(v61, v59))
    {
      __break(1u);
LABEL_50:
      v74 = (v119 + 32);
      v99 = (v119 + 8);
      v119 = v50;
      v117 = v53;
      do
      {
        (v118)(v59, v62);
        v77 = v104;
        Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v36);
        v78 = *v77;
        v79 = _swift_isClassOrObjCExistentialType(v9, v9);
        v80 = v78 & 0xFFFFFFFFFFFFFF8;
        v100 = v78 & 0xFFFFFFFFFFFFFF8;
        if (!v79)
        {
          v80 = v78;
        }

        v116 = *(v80 + 24);
        v101 = v78;
        v81 = _ArrayBuffer.firstElementAddress.getter(v78, v9);
        v82 = v62;
        v83 = v81;
        v84 = v111;
        (v35)(v111, v112, v82);
        if ((v50)(v84, 1, v9) == 1)
        {
          v85 = v111;
LABEL_64:
          v62 = v109;
          (v118)(v85, v109);
          v89 = v36;
        }

        else
        {
          v86 = v116 >> 1;
          v87 = *v74;
          if (v36 > (v116 >> 1))
          {
            v86 = v36;
          }

          v116 = v86;
          v88 = v83 + v108 * v36;
          v85 = v111;
          while (1)
          {
            v87(v56, v85, v9);
            v89 = v116;
            if (v116 == v36)
            {
              break;
            }

            v90 = v57;
            v91 = v35;
            v92 = v112;
            v93 = v109;
            (v118)(v112, v109);
            v94 = v107;
            v87(v107, v113, v9);
            v87(v88, v94, v9);
            ++v36;
            v102(v120, v115);
            v85 = v111;
            v95 = v92;
            v35 = v91;
            v57 = v90;
            v96 = v93;
            v56 = v113;
            (v35)(v111, v95, v96);
            v97 = (v119)(v85, 1, v9);
            v88 += v108;
            if (v97 == 1)
            {
              goto LABEL_64;
            }
          }

          (*v99)(v56, v9);
          v36 = v89;
          v62 = v109;
        }

        v75 = _swift_isClassOrObjCExistentialType(v9, v9);
        v76 = v101;
        if (v75)
        {
          v76 = v100;
        }

        *(v76 + 16) = v89;
        v59 = v105;
        (v35)(v105, v112, v62);
        v50 = v119;
      }

      while ((v119)(v59, 1, v9) != 1);
      goto LABEL_48;
    }

    if (_swift_isClassOrObjCExistentialType(v9, v9))
    {
      v63 = v36;
    }

    else
    {
      v63 = v35;
    }

    *(v63 + 16) = v62;
  }

  if (v59 != v50 || v56 == v106)
  {
    return (*(v114 + 8))(v57, v120);
  }

  if (_swift_isClassOrObjCExistentialType(v9, v9))
  {
    v65 = v36;
  }

  else
  {
    v65 = v35;
  }

  v36 = *(v65 + 16);
  v66 = v120;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v118, v56, v120, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v68 = *(AssociatedConformanceWitness + 16);
  v69 = v112;
  v115 = AssociatedConformanceWitness;
  v102 = v68;
  v103 = AssociatedConformanceWitness + 16;
  (v68)(v66);
  v70 = v110;
  v53 = (v110 + 16);
  v35 = *(v110 + 16);
  v59 = v105;
  v71 = v69;
  v62 = v109;
  (v35)(v105, v71, v109);
  v57 = (v119 + 48);
  v50 = *(v119 + 6);
  v72 = (v50)(v59, 1, v9);
  v118 = *(v70 + 8);
  v110 = v70 + 8;
  v56 = v113;
  if (v72 != 1)
  {
    goto LABEL_50;
  }

LABEL_48:
  v73 = v118;
  (v118)(v112, v62);
  (*(v114 + 8))(v121, v120);
  return (v73)(v59, v62);
}

uint64_t UnsafeMutableBufferPointer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00]();
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  return (*(a7 + 64))(a1, a3, a4, a6, a7);
}

Swift::Int __swiftcall UnsafeMutableBufferPointer.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall Array.reserveCapacityForAppend(newElementsCount:)(Swift::Int newElementsCount)
{
  v2 = Array._getCount()();
  v3 = __OFADD__(v2, newElementsCount);
  v4 = v2 + newElementsCount;
  if (v3)
  {
    __break(1u);
  }

  else
  {

    Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  }
}

unint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    *v0 = v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = v3 - 1;
  v5 = *(v1 + 8 * v4 + 32) | (*(v1 + 8 * v4 + 36) << 32);
  *(v1 + 16) = v4;
  *v0 = v1;
  return v5;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v0);
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    *v0 = v1;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = v3 - 1;
  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  *v0 = v1;
  return result;
}

uint64_t Array._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Array._makeMutableAndUnique()();
  v5 = *v2;
  v6 = *(a1 + 16);
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = v8 - 1;
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v5;
  }

  v14 = *(v6 - 1);
  (*(v14 + 32))(a2, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v9, v6);
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    v11 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v5;
  }

  *(v11 + 16) = v9;
  v12 = *(v14 + 56);

  return v12(a2, 0, 1, v6);
}

unint64_t specialized Array.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *v1 = v3;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5 - 1;
  v7 = v3 + 8 * a1;
  v8 = *(v7 + 32);
  v7 += 32;
  v9 = *(v7 + 4);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 8), v5 - 1 - a1, v7);
  *(v3 + 16) = v6;
  *v1 = v3;
  return v8 | (v9 << 32);
}

uint64_t specialized Array.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *v1 = v3;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5 - 1;
  v7 = v5 - 1 - a1;
  v8 = v3 + 16 * a1;
  v9 = *(v8 + 32);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 48), v7, (v8 + 32));
  *(v3 + 16) = v6;
  *v1 = v3;
  return v9;
}

{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *v1 = v3;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5 - 1;
  v7 = v5 - 1 - a1;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
  v9 = *(v8 + 0x20);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 40), v7, (v8 + 32));
  *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
  *v1 = v3;
  return v9;
}

BOOL Array.remove(at:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Array._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a2 + 16);
  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v9 + 16);
  if (v10 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(v8 - 1);
  v13 = *(v12 + 72);
  v14 = (v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v13 * a1);
  (*(v12 + 32))(a3, v14, v8);
  UnsafeMutablePointer.moveInitialize(from:count:)(&v14[v13], v10 - 1 - a1, v14, v8);
  result = _swift_isClassOrObjCExistentialType(v8, v8);
  if (result)
  {
    v16 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v16 = v7;
  }

  *(v16 + 16) = v10 - 1;
  return result;
}

uint64_t Array.insert(_:at:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for CollectionOfOne(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  Array._checkIndex(_:)(a2);
  (*(*(v7 - 8) + 32))(v10, a1, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v8, v11);
  return Array.replaceSubrange<A>(_:with:)(a2, a2, v10, a3, v8, WitnessTable);
}

Swift::Void __swiftcall Array.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (keepingCapacity)
  {
    v3 = v1;
    v4 = *(v1 + 16);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
    v6 = *v2;
    if (isClassOrObjCExistentialType)
    {
      if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0 || (swift_isUniquelyReferenced_nonNull_bridgeObject(v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (!swift_isUniquelyReferenced_nonNull_native(v6))
    {
LABEL_6:
      v8 = *v2;
      v9 = Array._getCapacity()();
      v10 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, v9, v4);
      v8;
      *v2 = v10;
      return;
    }

    v20[2] = *v2;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v3, v7);
    RandomAccessCollection<>.indices.getter(v3, WitnessTable, &protocol witness table for Int, v20);
    v12 = v20[0];
    v13 = v20[1];
    v16 = type metadata accessor for EmptyCollection(0, v4, v14, v15);
    v18 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v16, v17);
    Array.replaceSubrange<A>(_:with:)(v12, v13, v19, v3, v16, v18);
  }

  else
  {
    *v2;
    *v2 = &_swiftEmptyArrayStorage;
  }
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v8 = String.UTF8View.distance(from:to:)(a1, a2);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v8, 0);
  if (v9 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12._rawBits = a1;
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v26, (v11 + 4), v9, v12, a2, a3, a4);
  v14 = v30._rawBits >> 14;
  v15 = v27 >> 14;
  if (v30._rawBits >> 14 != v27 >> 14)
  {
    rawBits = v26._rawBits;
    v18 = v28;
    v19 = v29;
    v20 = (v28 >> 59) & 1;
    if ((v29 & 0x1000000000000000) == 0)
    {
      LOBYTE(v20) = 1;
    }

    v21 = v30._rawBits & 0xC;
    v22 = 4 << v20;
    after = v30._rawBits;
    v23 = v30._rawBits;
    if (v21 == 4 << v20)
    {
      v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(v30)._rawBits;
      v14 = v23 >> 14;
      if (v23 >> 14 < rawBits >> 14)
      {
        goto LABEL_25;
      }
    }

    else if (v14 < v26._rawBits >> 14)
    {
      goto LABEL_25;
    }

    if (v14 < v15)
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        String.UTF8View._foreignSubscript(position:)(v23);
        if (v21 == v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v19 & 0x2000000000000000 | v18 & 0x1000000000000000)
        {
          if (v21 != v22)
          {
            goto LABEL_18;
          }

LABEL_30:
          after = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
          if ((v19 & 0x1000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        _StringObject.sharedUTF8.getter(v18, v19);
        if (v21 == v22)
        {
          goto LABEL_30;
        }
      }

LABEL_18:
      if ((v19 & 0x1000000000000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v24 = v18 & 0xFFFFFFFFFFFFLL;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v19) & 0xF;
      }

      if (v24 <= after >> 16)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      String.UTF8View._foreignIndex(after:)(after);
LABEL_23:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 != v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29;
  return v11;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v5 = swift_allocObject(v4, 0x30, 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = v6 - 32;
  if (v6 < 32)
  {
    v7 = v6 - 25;
  }

  v5[2] = 2;
  v5[3] = 2 * (v7 >> 3);
  v5[4] = a1;
  v5[5] = a2;
  return v5;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(unsigned int a1)
{
  if (HIWORD(a1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2, a1);
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v3, 0);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5;
  v7 = specialized Sequence._copySequenceContents(initializing:)(&v11, v5 + 16, v4, a1);
  v8 = v11;
  if (HIWORD(v11))
  {
    if (v12 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v12 != 1)
  {
LABEL_8:
    v9 = v12;
    Unicode.Scalar.UTF16View.subscript.getter(v12, v11);
    specialized RandomAccessCollection<>.index(after:)(v9, v8);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

{
  v2 = 2;
  v3 = 3;
  if (a1 >= 0x10000)
  {
    v3 = 4;
  }

  if (a1 > 0x7FF)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v4 = v2;
  }

  else
  {
    v4 = 1;
  }

  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, a1);
  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v5, 0);
  if (v6 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v7;
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v13, v7 + 32, v6, a1);
  v10 = v13;
  if (v13 < 0x80)
  {
    v11 = v14;
    if (v14 != 1)
    {
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_31:
      specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v13, v11);
      specialized RandomAccessCollection<>.index(after:)(v11, v10);
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_26;
  }

  if (v13 >= 0x800)
  {
    v11 = v14;
    if (HIWORD(v13))
    {
      if (v14 == 4)
      {
        goto LABEL_26;
      }
    }

    else if (v14 == 3)
    {
      goto LABEL_26;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (HIWORD(v13))
      {
        if (v14 < 4)
        {
          goto LABEL_31;
        }
      }

      else if (v14 < 3)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_13;
  }

  v11 = v14;
  if (v14 != 2)
  {
    if (v14 < 2)
    {
      goto LABEL_31;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_26:
  if (v9 != v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v8;
}

{
  v1 = __clz(a1) >> 3;
  if (v1 == 4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = 4 - v1;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(4 - v1, 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, (v5 + 4), v4, a1);
  if (v7)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unsigned int a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unsigned __int16 a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unsigned __int8 a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(int a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(__int16 a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(char a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(void *a1)
{
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, [a1 count], a1);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyXl_Tt1gq5Tm(v2, 0);
  if ((v3 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v4;
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, [a1 count], a1);
  if (v3 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v6 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v6;
  swift_unknownObjectRetain(a1);
  specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(0, v7, (v5 + 4), a1);
  swift_unknownObjectRelease(a1);
  if (v7 != [a1 count])
  {
    v10 = [a1 objectAtIndex_];
    specialized RandomAccessCollection<>.index(after:)(v7, a1);
    swift_unknownObjectRelease(v10);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v3 > v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(HIBYTE(a2) & 0xF, 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, v5 + 32, v2, a1, a2);
  if (v10 != (HIBYTE(v9) & 0xF))
  {
    specialized RandomAccessCollection<>.index(after:)(v10, v8, v9);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 != v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

{
  if ((a2 & 0x1000000000000000) == 0)
  {
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
      goto LABEL_6;
    }

    return &_swiftEmptyArrayStorage;
  }

  v4 = String.UTF8View._foreignCount()();
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_6:
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v4, 0);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5;
  v7 = _StringGuts.copyUTF8(into:)(v5 + 32, v4, a1, a2);
  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(char *a1, unint64_t a2)
{
  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = a2 - a1;
  if (a2 == a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(a2 - a1, 0);
  UnsafeMutableRawBufferPointer._copyContents(initializing:)(v6 + 4, v2, a1, a2);
  v8 = v7;
  if ((*&UnsafeRawBufferPointer.Iterator.next()() & 0x100) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 != v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = Substring.distance(from:to:)(a1, a2);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(v8, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Character>);
  if (v9 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12 = specialized Sequence._copySequenceContents(initializing:)(&v17, v11 + 4, v9, a1, a2, a3, a4);
  v13._rawBits = v21;
  if ((v21 ^ v18) >= 0x4000)
  {
    Substring.subscript.getter(v21, v17, v18, v19, v20);
    v16 = v15;
    Substring.index(after:)(v13);
    v16;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v12 != v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v20;
  return v11;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(Swift::UInt64 a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4)
{
  v8 = String.UTF16View.distance(from:to:)(a1, a2);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v8, 0);
  if (v9 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12._rawBits = a1;
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v32, (v11 + 4), v9, v12, a2, a3, a4);
  v15 = v36._rawBits >> 14;
  v16 = v33 >> 14;
  if (v36._rawBits >> 14 != v33 >> 14)
  {
    rawBits = v32._rawBits;
    v19 = v34;
    v20 = v35;
    v21 = (v34 >> 59) & 1;
    if ((v35 & 0x1000000000000000) == 0)
    {
      LOBYTE(v21) = 1;
    }

    v22 = v36._rawBits & 0xC;
    v23 = 4 << v21;
    v30 = v36._rawBits;
    v24 = v36._rawBits;
    if (v22 == 4 << v21)
    {
      v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(v36)._rawBits;
      v15 = v24 >> 14;
      if (v24 >> 14 < rawBits >> 14)
      {
        goto LABEL_21;
      }
    }

    else if (v15 < v32._rawBits >> 14)
    {
      goto LABEL_21;
    }

    if (v15 < v16)
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        String.UTF16View._foreignSubscript(position:)(v24);
        goto LABEL_26;
      }

      if (v24)
      {
        v25 = v24 >> 16;
        if ((v20 & 0x2000000000000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v25 = _StringGuts.scalarAlignSlow(_:)(v24)._rawBits >> 16;
        if ((v20 & 0x2000000000000000) == 0)
        {
LABEL_18:
          if ((v19 & 0x1000000000000000) != 0)
          {
            v26 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = _StringObject.sharedUTF8.getter(v19, v20);
          }

          goto LABEL_25;
        }
      }

      v31[0] = v19;
      v31[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      v26 = v31;
LABEL_25:
      v27 = _decodeScalar(_:startingAt:)(v26, v14, v25);
      Unicode.Scalar.UTF16View.subscript.getter(v15 & 3, v27);
LABEL_26:
      if (v22 == v23)
      {
        v30 = _StringGuts._slowEnsureMatchingEncoding(_:)(v30)._rawBits;
      }

      v28 = v19 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v28 = HIBYTE(v20) & 0xF;
      }

      if (v28 > v30 >> 16)
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          specialized String.UTF16View._foreignIndex(after:)(v30);
        }

        else
        {
          v29 = (v20 >> 62) & 1;
          if ((v20 & 0x2000000000000000) == 0)
          {
            LOBYTE(v29) = v19 < 0;
          }

          if ((v29 & 1) == 0)
          {
            if ((v30 & 0xC001) == 0)
            {
              _StringGuts.scalarAlignSlow(_:)(v30);
            }

            if (!(v20 & 0x2000000000000000 | v19 & 0x1000000000000000))
            {
              _StringObject.sharedUTF8.getter(v19, v20);
            }
          }
        }

        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_21:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 != v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35;
  return v11;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v8._rawBits = specialized Collection.count.getter(a1, a2, a3, a4)._rawBits;
  if (!v8._rawBits)
  {
    return &_swiftEmptyArrayStorage;
  }

  rawBits = v8._rawBits;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v8._rawBits, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>);
  if ((rawBits & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12._rawBits = a1._rawBits;
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v30, (v11 + 4), rawBits, v12, a2._rawBits, a3, a4);
  v15 = v34._rawBits >> 14;
  v16 = v31 >> 14;
  if (v34._rawBits >> 14 != v31 >> 14)
  {
    v18 = v30._rawBits;
    v20 = v32;
    v19 = v33;
    v21 = (v33 & 0x1000000000000000) == 0 || (v32 & 0x800000000000000) != 0;
    v22 = v34._rawBits & 0xC;
    v23 = 4 << v21;
    v28 = v34._rawBits;
    if ((v34._rawBits & 1) == 0 || v22 == v23)
    {
      v24 = v34._rawBits;
      if (v22 == v23)
      {
        v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(v34)._rawBits;
        v15 = v24 >> 14;
        if (v24 >> 14 < v18 >> 14)
        {
          goto LABEL_9;
        }
      }

      else if (v15 < v30._rawBits >> 14)
      {
        goto LABEL_9;
      }

      if (v15 >= v16)
      {
        goto LABEL_9;
      }

      if ((v24 & 1) == 0)
      {
        v24 = _StringGuts.scalarAlignSlow(_:)(v24)._rawBits;
        if ((v19 & 0x1000000000000000) == 0)
        {
LABEL_23:
          v25 = v24 >> 16;
          if ((v19 & 0x2000000000000000) != 0)
          {
            v29[0] = v20;
            v29[1] = v19 & 0xFFFFFFFFFFFFFFLL;
            _decodeScalar(_:startingAt:)(v29, v14, v25);
            _StringGuts.validateScalarIndex(_:)(v28);
          }

          else
          {
            if ((v20 & 0x1000000000000000) != 0)
            {
              v26 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v26 = _StringObject.sharedUTF8.getter(v20, v19);
            }

            _decodeScalar(_:startingAt:)(v26, v14, v25);
            _StringGuts.validateScalarIndex(_:)(v28);
            if ((v20 & 0x1000000000000000) == 0)
            {
              _StringObject.sharedUTF8.getter(v20, v19);
            }
          }

LABEL_29:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_33:
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v24 & 0xFFFFFFFFFFFF0000));
        v27._rawBits = _StringGuts.validateScalarIndex(_:)(v28)._rawBits;
        String.UnicodeScalarView._foreignIndex(after:)(v27);
        goto LABEL_29;
      }
    }

    else if (v15 >= v16 || (v24 = v34._rawBits, v15 < v30._rawBits >> 14))
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  if (v13 != rawBits)
  {
    goto LABEL_9;
  }

  v33;
  return v11;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(a2 - a1, 0);
  if (a2 <= a1)
  {
    v7 = 0;
    v6 = v5;
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = v5;
    memmove(v5 + 4, a1, v4);
    v7 = v4;
  }

  if ((*&UnsafeRawBufferPointer.Iterator.next()() & 0x100) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = String.distance(from:to:)(15, (v5 | (v4 << 16)));
  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = v6;
  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(v6, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Character>);
  if (v7 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = v8;
  a2;
  v10 = specialized Sequence._copySequenceContents(initializing:)(v13, v9 + 2, v7, a1, a2);
  v11 = String.Iterator.next()();
  if (v11.value._object)
  {
    v11.value._object;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10 != v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14;
  return v9;
}

{
  if ((a2 & 0x1000000000000000) == 0)
  {
    v4 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v4 = a1;
    }

    v5 = String.UTF16View._nativeGetOffset(for:)(((v4 << 16) | 7));
    if (v5)
    {
      goto LABEL_5;
    }

    return &_swiftEmptyArrayStorage;
  }

  v5 = String.UTF16View._foreignCount()();
  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_5:
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v5, 0);
  if (v5 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6;
  a2;
  v8 = specialized Sequence._copySequenceContents(initializing:)(v11, (v7 + 4), v5, a1, a2);
  *&v9 = String.UTF16View.Iterator.next()();
  if ((v9 & 0x10000) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 != v5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12;
  return v7;
}

{
  v4._rawBits = specialized Collection.count.getter(a1, a2)._rawBits;
  if (v4._rawBits)
  {
    rawBits = v4._rawBits;
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v4._rawBits, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>);
    if ((rawBits & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = v6;
    a2;
    v8 = specialized Sequence._copySequenceContents(initializing:)(&v15, (v7 + 4), rawBits, a1, a2);
    v9 = v17;
    if (v17 < v18)
    {
      v10 = v15;
      if ((v16 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v17 << 16));
      }

      else
      {
        if ((v16 & 0x2000000000000000) != 0)
        {
          v14[0] = v15;
          v14[1] = v16 & 0xFFFFFFFFFFFFFFLL;
          v11 = v14;
        }

        else if ((v15 & 0x1000000000000000) != 0)
        {
          v11 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v13 = v17;
          v11 = _StringObject.sharedUTF8.getter(v15, v16);
          v9 = v13;
        }

        _decodeScalar(_:startingAt:)(v11, v10, v9);
      }

      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v8 != rawBits)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v16;
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }

  return v7;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v5 = swift_allocObject(v4, (8 * a2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = v6 - 32;
  if (v6 < 32)
  {
    v7 = v6 - 25;
  }

  *(v5 + 2) = a2;
  *(v5 + 3) = (2 * (v7 >> 3)) | 1;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, v5 + 32);
  return v5;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>();
  v4 = swift_allocObject(v3, (16 * v1 + 32), 7uLL);
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  v4[2] = v1;
  v4[3] = 2 * (v6 >> 4);
  a1;
  v7 = specialized Sequence._copySequenceContents(initializing:)(v11, v4 + 4, v1, a1);
  if (v11[4])
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v11[3];
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_15:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v9 >= ((v11[2] + 64) >> 6))
    {
      break;
    }

    ++v8;
    if (*(v11[1] + 8 * v9))
    {
      goto LABEL_9;
    }
  }

  if (v7 != v1)
  {
    goto LABEL_15;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v11[0]);
  return v4;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>();
  v4 = swift_allocObject(v3, (16 * v1 + 32), 7uLL);
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  *(v4 + 2) = v1;
  *(v4 + 3) = 2 * (v6 >> 4);
  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v1, v4 + 32);
  return v4;
}

{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v2 = [a1 count];
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v4 = swift_allocObject(v3, (8 * v2 + 32), 7uLL);
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  *(v4 + 2) = v2;
  *(v4 + 3) = (2 * (v6 >> 3)) | 1;
  v1;
  v7 = specialized _ArrayBuffer._copyContents(initializing:)(v4 + 32, v2, v1);
  if (v7 >> 62)
  {
    v11 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (v7 < 0)
    {
      v11 = v7;
    }

    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = [v11 count];
    v9 = v14;
    v8 = v13;
    v16 = v15;
    v7 = v12;
    if (v13 == v16)
    {
      goto LABEL_8;
    }

LABEL_18:
    v17 = v7;
    v18 = v8;
    v19 = specialized _ArrayBuffer.subscript.read(v22, v8, v7);
    v21 = *v20;
    swift_unknownObjectRetain(*v20);
    (v19)(v22, 0);
    specialized RandomAccessCollection<>.index(after:)(v18, v17);
    swift_unknownObjectRelease(v21);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 != *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v9 != v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7;
  return v4;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(char *a1, int64_t a2)
{
  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int8>();
  v5 = swift_allocObject(v4, (a2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  *(v5 + 2) = a2;
  *(v5 + 3) = 2 * v6 - 64;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, v5 + 32);
  return v5;
}

__objc2_class **_copyCollectionToContiguousArray<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v46 = &v39 - v14;
  v43 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v44 = v17;
  v42 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = *(a3 + 112);
  v45 = a1;
  v21 = v20(a2, a3);
  if (!v21)
  {
    return &_swiftEmptyArrayStorage;
  }

  v22 = v21;
  v40 = v12;
  v41 = v11;
  if (v21 < 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = getContiguousArrayStorageType<A>(for:)(v8, v8);
  v24 = *(v8 - 1);
  v25 = *(v24 + 72);
  v26 = *(v24 + 80);
  v27 = swift_allocObject(v23, (((v26 + *(v23 + 48)) & ~v26) + v25 * v22), v26 | *(v23 + 52));
  v28 = _swift_stdlib_malloc_size(v27);
  if (!v25 || ((v29 = (v26 + 32) & ~v26, v28 - v29 == 0x8000000000000000) ? (v30 = v25 == -1) : (v30 = 0), v30))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v31 = (v28 - v29) / v25;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v8, v8);
  v27[2] = v22;
  v27[3] = isClassOrObjCExistentialType | (2 * v31);
  (*(v43 + 16))(v16, v45, a2);
  v33 = (*(v6 + 64))(v19, v27 + v29, v22, a2, v6);
  v34 = v6;
  v35 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v34, a2, v44, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v37 = v46;
  (*(AssociatedConformanceWitness + 16))(v35, AssociatedConformanceWitness);
  LODWORD(v31) = (*(v24 + 48))(v37, 1, v8);
  (*(v40 + 8))(v37, v41);
  if (v31 != 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v33 != v22)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v42 + 8))(v19, v35);
  return v27;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = specialized Array.init(repeating:count:)(a1, a2, v6, static Array._allocateUninitialized(_:));
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array.init<A>(_:)(a1, a2, a2, a3);
  *a4 = result;
  return result;
}

uint64_t RangeReplaceableCollection.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v41 = a6;
  v42 = a1;
  v43 = a4;
  v39 = a5;
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness(255, v10, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, v12, v12, "lower upper ", 0);
  v14 = v13;
  v40 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v44 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a3, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - v24;
  if (((*(AssociatedConformanceWitness + 24))(a2, a2, v12, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = *(v12 - 8);
  v27 = v26;
  v36 = v22;
  v28 = *(v26 + 16);
  v38 = v7;
  v28(v19, a2, v12);
  v28(&v19[*(v14 + 48)], a2, v12);
  v37 = v23;
  v29 = v40;
  (*(v40 + 16))(v17, v19, v14);
  v35 = *(v14 + 48);
  v30 = *(v27 + 32);
  v30(v25, v17, v12);
  v31 = *(v27 + 8);
  v31(&v17[v35], v12);
  (*(v29 + 32))(v17, v19, v14);
  v32 = *(v14 + 48);
  v33 = v36;
  v30(&v25[*(v36 + 36)], &v17[v32], v12);
  v31(v17, v12);
  (*(v39 + 32))(v25, v42, v43, v41, v44);
  return (*(v37 + 8))(v25, v33);
}

unint64_t specialized RangeReplaceableCollection.removeSubrange(_:)(unint64_t result)
{
  v2 = *v1;
  if (result)
  {
    if (!v2)
    {
      goto LABEL_18;
    }

    v3 = *v1;
    while (v3 != result)
    {
      v4 = v3 >= 0x100;
      v3 >>= 8;
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = HIDWORD(result);
  if (!HIDWORD(result))
  {
    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_18:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *v1;
  while (v6 != HIDWORD(result))
  {
    v4 = v6 >= 0x100;
    v6 >>= 8;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

LABEL_8:
  if (v2 < result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v2 == result)
  {
    if (result < HIDWORD(result))
    {
      goto LABEL_30;
    }

    v7 = 0;
    if (v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = 0;
    v8 = *v1;
    do
    {
      if (v2 < v8 || v8 <= result)
      {
        goto LABEL_30;
      }

      if (HIBYTE(v7))
      {
        goto LABEL_18;
      }

      v7 |= v8 << (-(__clz(v7) & 0x18) & 0x18);
      v8 >>= 8;
    }

    while (v8 != result);
    if (v2 < HIDWORD(result))
    {
LABEL_30:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v5)
    {
LABEL_25:
      v9 = HIDWORD(result);
      while ((v9 - 1) < HIDWORD(result))
      {
        if (HIBYTE(v7))
        {
          goto LABEL_18;
        }

        v7 |= v9 << (-(__clz(v7) & 0x18) & 0x18);
        v4 = v9 >= 0x100;
        LODWORD(v9) = v9 >> 8;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_30;
    }
  }

LABEL_13:
  *v1 = v7;
  return result;
}

uint64_t RangeReplaceableCollection.removeSubrange(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10 = *(a3 + 32);
  swift_getAssociatedTypeWitness(255, *(*(a3 + 8) + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = type metadata accessor for EmptyCollection(0, v4, v5, v6);
  swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v7, v8);

  return v10(a1);
}

uint64_t specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = v0[1];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2 || (v3 = specialized Collection.first.getter(*v0, v1), !v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v3;
  specialized RangeReplaceableCollection.removeFirst(_:)(1);
  return v5;
}

unint64_t specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = specialized Collection.first.getter(*v0, *(v0 + 8));
  if ((v4 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v9 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(15, 1, (v6 | (v3 << 16)));
  if (v9.is_nil)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7._rawBits = v9.value._rawBits;
  specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v7);
  return v5;
}

uint64_t RangeReplaceableCollection.removeFirst()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - v12;
  if (((*(v6 + 104))(a1, v6) & 1) != 0 || (Collection.first.getter(a1, v6, v13), v14 = *(v8 - 8), (*(v14 + 48))(v13, 1, v8) == 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v14 + 32))(a3, v13, v8);
  return (*(a2 + 136))(1, a1, a2);
}

Swift::Int specialized RangeReplaceableCollection.removeFirst(_:)(Swift::Int offsetBy)
{
  if (offsetBy)
  {
    if (offsetBy < 0)
    {
      goto LABEL_12;
    }

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

    v7 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(15, offsetBy, (v4 | (v3 << 16)));
    if (v7.is_nil)
    {
LABEL_12:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5._rawBits = v7.value._rawBits;

    return specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v5);
  }

  return offsetBy;
}

void specialized RangeReplaceableCollection.removeFirst(_:)(Swift::Int offsetBy)
{
  if (offsetBy)
  {
    if (offsetBy < 0)
    {
      goto LABEL_12;
    }

    v2 = *v1;
    v3 = v1[1];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *v1;
    }

    v5 = 7;
    if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v12 = String.index(_:offsetBy:limitedBy:)(15, offsetBy, (v5 | (v4 << 16)));
    if (v12.is_nil)
    {
LABEL_12:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    rawBits = v12.value._rawBits;
    v7._rawBits = 15;
    v8._rawBits = rawBits;
    v9._rawBits = _StringGuts.validateScalarRange(_:)(v7, v8, v2, v3)._rawBits;

    _StringGuts.remove(from:to:)(v9, v10);
  }
}

unint64_t specialized RangeReplaceableCollection.removeFirst(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0 || (v2 = *v1, v3 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*v1, result, 0, *v1), (v3 & 0x100000000) != 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v2 < v3)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = v2 | (v3 << 32);

    return specialized RangeReplaceableCollection.removeSubrange(_:)(v4);
  }

  return result;
}

Swift::Void __swiftcall RangeReplaceableCollection.removeFirst(_:)(Swift::Int a1)
{
  v4 = v2;
  v5 = v1;
  v7 = *(v2 + 8);
  swift_getAssociatedTypeWitness(255, v7, v1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v66 = v10;
  v64 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v13;
  v69 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v15);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v52 - v17;
  v20 = type metadata accessor for Optional(0, v9, v18, v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v68 = &v52 - v22;
  v23 = *(v9 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v67 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v52 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v52 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  if (!a1)
  {
    return;
  }

  if (a1 < 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v58 = &v52 - v33;
  v59 = AssociatedConformanceWitness;
  v52 = v34;
  v53 = v32;
  v56 = v4;
  v35 = v69;
  v57 = *(v7 + 64);
  v57(v69, v7);
  (*(v7 + 72))(v35, v7);
  v36 = v35;
  v37 = v68;
  (*(v7 + 144))(v31, a1, v28, v36, v7);
  v38 = *(v23 + 8);
  v38(v28, v9);
  v54 = v23 + 8;
  v55 = v38;
  v38(v31, v9);
  if ((*(v23 + 48))(v37, 1, v9) == 1)
  {
    (*(v52 + 8))(v37, v53);
    goto LABEL_7;
  }

  v41 = *(v23 + 32);
  v39 = (v23 + 32);
  v40 = v41;
  v42 = v58;
  v41(v58, v37, v9);
  v43 = v67;
  v68 = v3;
  v57(v69, v7);
  if (((*(v59 + 24))(v43, v42, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v61;
  v40(v61, v43, v9);
  v45 = v66;
  v40(&v44[*(v66 + 48)], v42, v9);
  v47 = v64;
  v46 = v65;
  (*(v64 + 16))(v65, v44, v45);
  v48 = *(v45 + 48);
  v49 = v60;
  v40(v60, v46, v9);
  v67 = v39;
  v50 = v55;
  v55(&v46[v48], v9);
  (*(v47 + 32))(v46, v44, v45);
  v51 = v63;
  v40(&v49[*(v63 + 36)], &v46[*(v45 + 48)], v9);
  v50(v46, v9);
  (*(v56 + 104))(v49, v69);
  (*(v62 + 8))(v49, v51);
}

uint64_t RangeReplaceableCollection<>.removeAll(where:)(uint64_t (*a1)(char *), uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v65 = a2;
  v59 = a5;
  v63 = a4;
  v64 = a1;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v6, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v58 = v9;
  v56 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v49 - v12;
  v60 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v14);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v61 = AssociatedConformanceWitness;
  v19 = type metadata accessor for PartialRangeFrom(0, v8, AssociatedConformanceWitness, v18);
  v52 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  v62 = *(v8 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v49 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v49 - v29;
  v31 = v66;
  result = MutableCollection._halfStablePartition(isSuffixElement:)(v64, v65, a3, v63, &v49 - v29);
  if (!v31)
  {
    v65 = v25;
    v66 = a3;
    v51 = v19;
    v34 = v61;
    v33 = v62;
    v63 = v17;
    v64 = 0;
    if (((*(*(v61 + 8) + 8))(v30, v30, v8) & 1) == 0 || (v35 = v33, v36 = *(v33 + 32), v37 = v22, v36(v22, v30, v8), (*(v35 + 16))(v28, v22, v8), v38 = v65, (v60[9])(v66), ((*(v34 + 24))(v28, v38, v8, v34) & 1) == 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v52 + 8))(v37, v51);
    v39 = v53;
    v36(v53, v28, v8);
    v40 = v58;
    v36(&v39[*(v58 + 48)], v38, v8);
    v41 = v56;
    v42 = *(v56 + 16);
    v43 = v36;
    v50 = v36;
    v44 = v57;
    v42(v57, v39, v40);
    v65 = *(v40 + 48);
    v46 = v62;
    v45 = v63;
    v43(v63, v44, v8);
    v47 = *(v46 + 8);
    v47(&v44[v65], v8);
    (*(v41 + 32))(v44, v39, v40);
    v48 = v55;
    v50(v45 + *(v55 + 36), &v44[*(v40 + 48)], v8);
    v47(v44, v8);
    (*(v59 + 104))(v45, v66);
    return (*(v54 + 8))(v45, v48);
  }

  return result;
}

unint64_t static Array.+ infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v11 = a1;
  v6 = type metadata accessor for Array(0, a3, a3, a4);
  a1;
  a2;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v6, v7);
  Array.append<A>(contentsOf:)(&v10, v6, v6, WitnessTable);
  return v11;
}

uint64_t static Array.+= infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v5 = type metadata accessor for Array(0, a3, a3, a4);
  a2;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v5, v6);
  return Array.append<A>(contentsOf:)(&v9, v5, v5, WitnessTable);
}

uint64_t Array.customMirror.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v7 = type metadata accessor for Array(0, a2, a3, a4);
  v29[0] = 0;
  v29[1] = 0;
  a1;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v32, v29, v7);
  v10 = v9;
  v11 = swift_allocObject(&unk_1EEEADCC8, 0x28, 7uLL);
  v11[2] = v7;
  v11[3] = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v7, v12);
  v11[4] = WitnessTable;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v16 = swift_getWitnessTable(protocol conformance descriptor for [A], v7, v15);
  v17 = type metadata accessor for LazyMapSequence(255, v7, v14, v16);
  v31 = WitnessTable;
  v18 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v17, &v31);
  v20 = type metadata accessor for _CollectionBox(0, v17, v18, v19);
  v21 = swift_allocObject(v20, 0x48, 7uLL);
  v21[6] = a1;
  v21[7] = partial apply for closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v21[8] = v11;
  v22 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v23 = swift_allocObject(v22, 0x18, 7uLL);
  v23[2] = 0;
  a1;
  v24 = Array._getCount()();
  v25 = swift_allocObject(v22, 0x18, 7uLL);
  v25[2] = v24;
  v21[2] = v23;
  v21[3] = &protocol witness table for _IndexBox<A>;
  v21[4] = v25;
  v21[5] = &protocol witness table for _IndexBox<A>;
  v30 = a1;
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

uint64_t Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t *a4@<X3>, Class *a5@<X4>, const char *a6@<X5>, uint64_t a7@<X6>, Class **a8@<X8>)
{
  v59 = a2;
  v62 = a1;
  v70 = a8;
  v69 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v68 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness(0, v16, v15, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = *(v17 - 8);
  v63 = v17;
  v64 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v56 - v19;
  v20 = *(a7 + 8);
  v22 = type metadata accessor for LazySequence(0, a6, v20, v21);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v26 = type metadata accessor for LazyMapSequence(0, a6, v25, v20);
  v58 = *(v26 - 8);
  v27 = v58;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v56 - v28;
  v67 = *a3;
  v30 = *a4;
  v31 = a4[1];
  v71[0] = v30;
  v71[1] = v31;
  v60 = a5;
  v32 = static Mirror._superclassIterator<A>(_:_:)(a1, v71, a5);
  v65 = v33;
  v66 = v32;
  outlined consume of Mirror.AncestorRepresentation(v30, v31);
  v34 = *(*(a6 - 1) + 32);
  v34(v24, v59, a6);
  v35 = swift_allocObject(&unk_1EEEADCF0, 0x28, 7uLL);
  v35[2] = a5;
  v35[3] = a6;
  v35[4] = a7;
  v34(v29, v24, a6);
  v36 = &v29[*(v26 + 44)];
  *v36 = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  *(v36 + 1) = v35;
  v72 = a7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v26, &v72);
  v57 = v26;
  v39 = type metadata accessor for _CollectionBox(0, v26, WitnessTable, v38);
  v40 = swift_allocObject(v39, *(v39 + 48), *(v39 + 52));
  (*(v27 + 16))(&v40[*(*v40 + 360)], v29, v26);
  v41 = v61;
  (*(a7 + 64))(a6, a7);
  v42 = v63;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v63, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v45 = type metadata accessor for _IndexBox(0, v42, AssociatedConformanceWitness, v44);
  v46 = swift_allocObject(v45, *(v45 + 48), *(v45 + 52));
  v47 = *(v64 + 32);
  v47(&v46[*(*v46 + 96)], v41, v42);
  (*(a7 + 72))(a6, a7);
  (*(v58 + 8))(v29, v57);
  v48 = swift_allocObject(v45, *(v45 + 48), *(v45 + 52));
  v47(&v48[*(*v48 + 96)], v41, v42);
  *(v40 + 2) = v46;
  *(v40 + 3) = &protocol witness table for _IndexBox<A>;
  *(v40 + 4) = v48;
  *(v40 + 5) = &protocol witness table for _IndexBox<A>;
  v49 = v60;
  v50 = v68;
  (*(v69 + 32))(v68, v62, v60);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v71, v50, v49, v51, 6uLL);
  v53 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v54 = v70;
  *v70 = v49;
  v54[1] = v40;
  *(v54 + 16) = v67;
  v55 = v65;
  v54[3] = v66;
  v54[4] = v55;
  *(v54 + 40) = v53;
  return result;
}

Swift::String __swiftcall Collection._makeCollectionDescription(withTypeName:)(Swift::String_optional withTypeName)
{
  v4 = v3;
  v5 = v1;
  object = withTypeName.value._object;
  countAndFlagsBits = withTypeName.value._countAndFlagsBits;
  v8 = *(v2 + 8);
  swift_getAssociatedTypeWitness(0, v8, v1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v113 - v12;
  v16 = type metadata accessor for Optional(0, v10, v14, v15);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v113 - v18;
  v119 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v8, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v121 = v21;
  v113 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v113 - v22;
  v114 = object;
  if (!object)
  {
    v48 = 0xE100000000000000;
    v49 = 91;
    goto LABEL_36;
  }

  v116 = v11;
  v117 = v3;
  v23 = _StringGuts.init(_initialCapacity:)(4);
  v33 = v24;
  v123 = v23;
  v124 = v24;
  v34 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v34 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34 && (v23 & ~v24 & 0x2000000000000000) == 0)
  {
    v24;
    v46 = 0;
    v47 = 0xE000000000000000;
    v123 = 0;
    goto LABEL_12;
  }

  if ((v24 & 0x2000000000000000) != 0)
  {
    v35 = specialized _SmallString.init(_:appending:)(v23, v24, 0, 0xE000000000000000);
    if ((v37 & 1) == 0)
    {
      v47 = v36;
      v50 = countAndFlagsBits;
      v51 = v35;
      v33;
      0xE000000000000000;
      v46 = v51;
      countAndFlagsBits = v50;
      v123 = v46;
LABEL_12:
      v124 = v47;
      goto LABEL_13;
    }
  }

  _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v25, v26, v27, v28, v29, v30, v31, v32);
  0xE000000000000000;
  v46 = v123;
  v47 = v124;
LABEL_13:
  v52 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v52 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v52 || (v46 & ~v47 & 0x2000000000000000) != 0)
  {
    if ((v47 & 0x2000000000000000) != 0 && (object & 0x2000000000000000) != 0 && (v53 = specialized _SmallString.init(_:appending:)(v46, v47, countAndFlagsBits, object), (v55 & 1) == 0))
    {
      v66 = v53;
      v65 = v54;
      v47;
      v123 = v66;
      v124 = v65;
      countAndFlagsBits = v66;
    }

    else
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(object) & 0xF;
      }

      else
      {
        v56 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      _StringGuts.append(_:)(countAndFlagsBits, object, 0, v56, v38, v39, v40, v41, v42, v43, v44, v45);
      countAndFlagsBits = v123;
      v65 = v124;
    }
  }

  else
  {
    object;
    v47;
    v123 = countAndFlagsBits;
    v124 = object;
    v65 = object;
  }

  v67 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v67 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v67 || (countAndFlagsBits & ~v65 & 0x2000000000000000) != 0)
  {
    if ((v65 & 0x2000000000000000) != 0 && (v68 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v65, 0x5B28uLL, 0xE200000000000000), (v70 & 1) == 0))
    {
      v49 = v68;
      v48 = v69;
      v65;
      0xE200000000000000;
    }

    else
    {
      _StringGuts.append(_:)(23336, 0xE200000000000000, 0, 2, v57, v58, v59, v60, v61, v62, v63, v64);
      0xE200000000000000;
      v49 = v123;
      v48 = v124;
    }
  }

  else
  {
    v65;
    v48 = 0xE200000000000000;
    v49 = 23336;
  }

  v11 = v116;
  v4 = v117;
LABEL_36:
  0xE000000000000000;
  v123 = v49;
  v124 = v48;
  (*(v119 + 16))(v118, v4, v5);
  (*(v8 + 32))(v5, v8);
  v71 = v121;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v5, v121, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v73 = *(AssociatedConformanceWitness + 16);
  v118 = (AssociatedConformanceWitness + 16);
  v119 = AssociatedConformanceWitness;
  v117 = v73;
  v73(v71);
  v116 = *(v11 + 6);
  if (v116(v19, 1, v10) != 1)
  {
    v89 = *(v11 + 4);
    v89(v13, v19, v10);
    v90 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    v115 = xmmword_18071DB30;
    while (1)
    {
      inited = swift_initStackObject(v90, v122);
      *(inited + 1) = v115;
      inited[7] = v10;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v89(boxed_opaque_existential_0Tm, v13, v10);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v123);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v117(v121, v119);
      if (v116(v19, 1, v10) == 1)
      {
        break;
      }

      v89(v13, v19, v10);
      v101 = v124;
      v102 = HIBYTE(v124) & 0xF;
      if ((v124 & 0x2000000000000000) == 0)
      {
        v102 = v123 & 0xFFFFFFFFFFFFLL;
      }

      if (v102 || (v123 & ~v124 & 0x2000000000000000) != 0)
      {
        if (v124 & 0x2000000000000000) == 0 || (v103 = specialized _SmallString.init(_:appending:)(v123, v124, 0x202CuLL, 0xE200000000000000), (v105))
        {
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v93, v94, v95, v96, v97, v98, v99, v100);
          0xE200000000000000;
        }

        else
        {
          v106 = v103;
          v107 = v104;
          v101;
          0xE200000000000000;
          v123 = v106;
          v124 = v107;
        }
      }

      else
      {
        v124;
        v123 = 8236;
        v124 = 0xE200000000000000;
      }
    }
  }

  (*(v113 + 8))(v120, v121);
  if (v114)
  {
    v82 = 10589;
  }

  else
  {
    v82 = 93;
  }

  if (v114)
  {
    v83 = 0xE200000000000000;
  }

  else
  {
    v83 = 0xE100000000000000;
  }

  v84 = v124;
  v85 = HIBYTE(v124) & 0xF;
  if ((v124 & 0x2000000000000000) == 0)
  {
    v85 = v123 & 0xFFFFFFFFFFFFLL;
  }

  if (v85 || (v123 & ~v124 & 0x2000000000000000) != 0)
  {
    if ((v124 & 0x2000000000000000) != 0 && (v86 = specialized _SmallString.init(_:appending:)(v123, v124, *&v82, v83), (v88 & 1) == 0))
    {
      v108 = v86;
      v109 = v87;
      v84;
      v83;
      v83 = v109;
      v82 = v108;
    }

    else
    {
      _StringGuts.append(_:)(*&v82, v83, 0, HIBYTE(v83) & 3, v74, v75, v76, v77, v78, v79, v80, v81);
      v83;
      v82 = v123;
      v83 = v124;
    }
  }

  else
  {
    v124;
  }

  v110 = v82;
  v111 = v83;
  result._object = v111;
  result._countAndFlagsBits = v110;
  return result;
}

uint64_t Array.description.getter(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v94 - v8;
  0xE000000000000000;
  v9 = 91;
  v10 = 0xE100000000000000;
  v107 = 91;
  v108 = 0xE100000000000000;
  v103 = Array._getCount()();
  if (!v103)
  {
    goto LABEL_67;
  }

  v95 = v5;
  v10 = 0;
  v101 = (v4 + 16);
  v102 = v3 & 0xC000000000000001;
  v11 = v4 + 32;
  v12 = 1;
  v100 = xmmword_18071DB30;
  v96 = xmmword_18071DB40;
  v98 = v4;
  v99 = v3;
  v97 = v7;
  while (1)
  {
    v16 = v102 == 0;
    v9 = v16 | ~_swift_isClassOrObjCExistentialType(a2, a2);
    Array._checkSubscript(_:wasNativeTypeChecked:)(v10, v9 & 1);
    if (v9)
    {
      (*(v4 + 16))(v104, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, a2);
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      goto LABEL_9;
    }

    v52 = _ArrayBuffer._getElementSlowPath(_:)(v10, v3, a2);
    if (v95 != 8)
    {
      goto LABEL_137;
    }

    *&v105 = v52;
    v9 = v52;
    (*v101)(v104, &v105, a2);
    swift_unknownObjectRelease(v9);
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

LABEL_9:
    v18 = *v11;
    (*v11)(v7, v104, a2);
    if (v12)
    {
      goto LABEL_6;
    }

    v19 = v107;
    v9 = v108;
    v20 = HIBYTE(v108) & 0xF;
    v21 = v107 & 0xFFFFFFFFFFFFLL;
    if ((v108 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v108) & 0xF;
    }

    else
    {
      v22 = v107 & 0xFFFFFFFFFFFFLL;
    }

    if (v22 || (v107 & ~v108 & 0x2000000000000000) != 0)
    {
      if ((v108 & 0x2000000000000000) != 0 && v20 <= 0xD)
      {
        v23 = 8 * (HIBYTE(v108) & 7);
        v24 = (-255 << v23) - 1;
        v25 = 44 << v23;
        v26 = v20 + 1;
        if (v20 >= 8)
        {
          v28 = v24 & v108 | v25;
          v27 = 8 * (v26 & 7);
          v3 = v99;
        }

        else
        {
          v19 = (v24 & v107 | v25);
          v3 = v99;
          if (v20 != 7)
          {
            v19 = (((-255 << (8 * (v26 & 7u))) - 1) & *&v19 | (32 << (8 * (v26 & 7u))));
            v49 = v108;
            goto LABEL_48;
          }

          v27 = 0;
          v28 = v108;
        }

        v49 = ((-255 << v27) - 1) & v28 | (32 << v27);
LABEL_48:
        v108;
        0xE200000000000000;
        v50 = 0xE000000000000000;
        if (*&v19 & 0x8080808080808080 | v49 & 0x80808080808080)
        {
          v50 = 0xA000000000000000;
        }

        v107 = v19;
        v108 = (v50 & 0xFF00000000000000 | (v20 << 56) | v49 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
        goto LABEL_5;
      }

      0xE200000000000000;
      if ((v9 & 0x1000000000000000) != 0)
      {
        v53 = String.UTF8View._foreignCount()();
        v31 = v53 + 2;
        if (__OFADD__(v53, 2))
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }

      else
      {
        v30 = __OFADD__(v22, 2);
        v31 = v22 + 2;
        if (v30)
        {
          goto LABEL_128;
        }
      }

      if ((*&v19 & ~v9 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
      {
        v32 = _StringGuts.nativeUnusedCapacity.getter(*&v19, v9);
        if (v33)
        {
          goto LABEL_139;
        }

        if (v31 <= 15)
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            goto LABEL_34;
          }

          if (v32 < 2)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v31 <= 15)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
LABEL_34:
          v35 = v9;
        }

        else
        {
LABEL_28:
          if ((v9 & 0x1000000000000000) != 0)
          {
            v19 = _StringGuts._foreignConvertedToSmall()(*&v19, v9);
            v35 = v51;
          }

          else
          {
            if ((*&v19 & 0x1000000000000000) != 0)
            {
              v34 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v34 = _StringObject.sharedUTF8.getter(*&v19, v9);
              v21 = v56;
            }

            closure #1 in _StringGuts._convertedToSmall()(v34, v21, &v105, v29);
            v35 = *(&v105 + 1);
            v19 = v105;
          }
        }

        v36 = 0xE200000000000000;
        0xE200000000000000;
        v37._rawBits = 131073;
        v38._rawBits = 1;
        v39._rawBits = _StringGuts.validateScalarRange(_:)(v38, v37, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v39._rawBits < 0x10000)
        {
          v39._rawBits |= 3;
        }

        if (v39._rawBits >> 16 || (v42 = 8236, (v40._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v42 = specialized static String._copying(_:)(v39._rawBits, v40._rawBits, 0x202CuLL, 0xE200000000000000);
          v36 = v43;
          0xE200000000000000;
        }

        if ((v36 & 0x2000000000000000) != 0)
        {
          v36;
        }

        else if ((v36 & 0x1000000000000000) != 0)
        {
          v42 = _StringGuts._foreignConvertedToSmall()(v42, v36);
          v94 = v57;
          v36;
          v36 = v94;
        }

        else
        {
          if ((v42 & 0x1000000000000000) != 0)
          {
            v54 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v55 = v42 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = _StringObject.sharedUTF8.getter(v42, v36);
          }

          closure #1 in _StringGuts._convertedToSmall()(v54, v55, &v105, v41);
          v36;
          v36 = *(&v105 + 1);
          v42 = v105;
        }

        v44 = specialized _SmallString.init(_:appending:)(*&v19, v35, v42, v36);
        if (v46)
        {
          goto LABEL_139;
        }

        v47 = v44;
        v48 = v45;
        v9;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v107 = v47;
        v108 = v48;
        goto LABEL_4;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v31, 2);
      v105 = v96;
      0xE200000000000000;
      _StringGuts.appendInPlace(_:isASCII:)(&v105, 2uLL, 1);
      0xE200000000000000;
    }

    else
    {
      v108;
      v107 = 8236;
      v108 = 0xE200000000000000;
    }

LABEL_4:
    v3 = v99;
LABEL_5:
    v4 = v98;
    v7 = v97;
LABEL_6:
    v13 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v13, v106);
    *(inited + 1) = v100;
    inited[7] = a2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v18(boxed_opaque_existential_0Tm, v7, a2);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v107);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v12 = 0;
    ++v10;
    if (v17 == v103)
    {
      v9 = v107;
      v10 = v108;
LABEL_67:
      v20 = HIBYTE(v10) & 0xF;
      v11 = v9 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v58 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v58 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (!v58 && (v9 & ~v10 & 0x2000000000000000) == 0)
      {
        v10;
        return 93;
      }

      if ((v10 & 0x2000000000000000) != 0 && v20 != 15)
      {
        if (v20 < 8)
        {
          v9 = ((-255 << (8 * (HIBYTE(v10) & 7u))) - 1) & v9 | (93 << (8 * (HIBYTE(v10) & 7u)));
        }

        goto LABEL_76;
      }

      0xE100000000000000;
      if ((v10 & 0x1000000000000000) == 0)
      {
        v30 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (!v30)
        {
          goto LABEL_79;
        }

        goto LABEL_131;
      }

LABEL_129:
      v87 = String.UTF8View._foreignCount()();
      v60 = v87 + 1;
      if (!__OFADD__(v87, 1))
      {
LABEL_79:
        v61 = v9 & ~v10;
        if ((v61 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
        {
          if (v60 > 15)
          {
            goto LABEL_90;
          }

          if ((v10 & 0x2000000000000000) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_106;
        }

        v62 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
        if ((v63 & 1) == 0)
        {
          if (v60 > 15)
          {
            goto LABEL_90;
          }

          if ((v10 & 0x2000000000000000) == 0)
          {
            if (v62 < 1)
            {
LABEL_85:
              if ((v10 & 0x1000000000000000) != 0)
              {
                goto LABEL_127;
              }

              if ((v9 & 0x1000000000000000) != 0)
              {
                v64 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v64 = _StringObject.sharedUTF8.getter(v9, v10);
                v11 = v91;
              }

              closure #1 in _StringGuts._convertedToSmall()(v64, v11, &v105, v59);
              v60 = *(&v105 + 1);
              v9 = v105;
              goto LABEL_107;
            }

LABEL_90:
            v65 = v61 & 0x2000000000000000;
            v66 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
            if ((v67 & 1) != 0 || v66 <= 0)
            {
              if (v65)
              {
                swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL);
              }

              v68 = _StringGuts.nativeCapacity.getter(v9, v10);
              if (v69)
              {
                v70 = 0;
              }

              else
              {
                v70 = v68;
              }

              if (v70 + 0x4000000000000000 < 0)
              {
                __break(1u);
LABEL_137:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v71 = 2 * v70;
              if (v71 > v60)
              {
                v60 = v71;
              }
            }

            else if (v65 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_104;
            }

            _StringGuts.grow(_:)(v60);
LABEL_104:
            v105 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v105, 1uLL, &v107, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v107;
          }

LABEL_106:
          v60 = v10;
          goto LABEL_107;
        }

LABEL_139:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }
  }

  __break(1u);
LABEL_127:
  v9 = _StringGuts._foreignConvertedToSmall()(v9, v10);
  v60 = v86;
LABEL_107:
  v11 = 0xE100000000000000;
  0xE100000000000000;
  v20 = 93;
  v72._rawBits = 1;
  v73._rawBits = 65537;
  v74._rawBits = _StringGuts.validateScalarRange(_:)(v72, v73, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v74._rawBits < 0x10000)
  {
    v74._rawBits |= 3;
  }

  if (v74._rawBits >> 16 || (v75._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v20 = specialized static String._copying(_:)(v74._rawBits, v75._rawBits, 0x5DuLL, 0xE100000000000000);
    v11 = v76;
    0xE100000000000000;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v11;
    goto LABEL_114;
  }

LABEL_132:
  v88 = v9;
  if ((v11 & 0x1000000000000000) != 0)
  {
    v20 = _StringGuts._foreignConvertedToSmall()(v20, v11);
    v93 = v92;
    v11;
    v11 = v93;
    v9 = v88;
  }

  else
  {
    if ((v20 & 0x1000000000000000) != 0)
    {
      v89 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v90 = v20 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v89 = _StringObject.sharedUTF8.getter(v20, v11);
    }

    closure #1 in _StringGuts._convertedToSmall()(v89, v90, &v105, v59);
    v11;
    v11 = *(&v105 + 1);
    v20 = v105;
  }

LABEL_114:
  v77 = HIBYTE(v60) & 0xF;
  v78 = HIBYTE(v11) & 0xF;
  if (v78 + v77 > 0xF)
  {
    goto LABEL_139;
  }

  0xE100000000000000;
  if (v78)
  {
    v79 = 0;
    v80 = 0;
    v81 = 8 * v77;
    do
    {
      v82 = v11 >> (v79 & 0x38);
      if (v80 < 8)
      {
        v82 = v20 >> v79;
      }

      v83 = (v82 << (v81 & 0x38)) | ((-255 << (v81 & 0x38)) - 1) & v60;
      v84 = (v82 << v81) | ((-255 << v81) - 1) & v9;
      if (v77 <= 7)
      {
        v9 = v84;
      }

      else
      {
        v60 = v83;
      }

      ++v77;
      v81 += 8;
      v79 += 8;
      ++v80;
    }

    while (8 * v78 != v79);
  }

LABEL_76:
  v10;
  0xE100000000000000;
  return v9;
}

uint64_t Array._cPointerArgs()(int64_t a1, uint64_t *a2)
{
  a1;
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (Array._getCount()())
    {
      v8 = type metadata accessor for _ArrayBuffer(0, a2, v6, v7);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v8, v9);
      return (*(WitnessTable + 56))(v8, WitnessTable);
    }

    a1;
  }

  else
  {
    a1;
    _swift_isClassOrObjCExistentialType(a2, a2);
  }

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

id _ContiguousArrayBuffer.owner.getter()
{
  v0 = _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

__objc2_class **_sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs4Int8V_Tt1g5026_ss15_persistCStringySays4F31VGSgSPyACGSgFySryACGz_SiztXEfU_SPyAFGSiTf1nc_n(unint64_t a1, char *a2, size_t a3)
{
  result = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZs4Int8V_Tt0g5(a1);
  if ((a1 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != a2 || v7 >= &a2[a3])
  {
    v8 = result;
    memmove(v7, a2, a3);
    result = v8;
  }

  if (a1 < a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result[2] = a3;
  return result;
}

unint64_t Array.init(_unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, void (*a2)(void *, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v8 = static Array._allocateUninitialized(_:)(a1, a4);
  v20 = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = v8;
  v11 = v9;
  v19[0] = v9;
  v19[1] = a1;
  a2(v19, &v20);
  if (v4)
  {
    v12 = v20;
    if (v20 <= a1 && v19[0] && v11 == v19[0])
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
      v14 = v10 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v14 = v10;
      }

      *(v14 + 16) = v12;
      v10;
      return v10;
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v15 = v20;
  if (v20 > a1 || !v19[0] || v11 != v19[0])
  {
    goto LABEL_16;
  }

  v16 = _swift_isClassOrObjCExistentialType(a4, a4);
  v17 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!v16)
  {
    v17 = v10;
  }

  *(v17 + 16) = v15;
  return v10;
}

uint64_t Array.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v19 = a2;
  v16 = a4;
  v17 = a5;
  v18 = a1;
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tp5(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)partial apply, v15, a3, a4);
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4))
  {
    v8 = ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v8 = a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80));
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = (a3 & 0xFFFFFFFFFFFFFF8);
    }

    v14 = [v13 count];
    if ((v14 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v11 = v14;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
    v10 = a3 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v10 = a3;
    }

    v11 = *(v10 + 16);
  }

  return a1(v8, v11);
}

void *Array.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  Array._makeMutableAndUnique()();
  v6 = *v3;
  v7 = *(a3 + 16);
  if (_swift_isClassOrObjCExistentialType(v7, v7))
  {
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 16);
  if (_swift_isClassOrObjCExistentialType(v7, v7))
  {
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v6;
  }

  v13[0] = v10 + ((*(*(v7 - 1) + 80) + 32) & ~*(*(v7 - 1) + 80));
  v11 = v13[0];
  v13[1] = v9;
  a1(v13);
  return $defer #1 <A><A1>() in Array.__abi_withUnsafeMutableBufferPointer<A>(_:)(v13, v11, v9);
}

void *$defer #1 <A><A1>() in Array.__abi_withUnsafeMutableBufferPointer<A>(_:)(void *result, uint64_t a2, uint64_t a3)
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

void *_sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5(void *result, uint64_t a2, uint64_t a3)
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

uint64_t IndexingIterator.init(_elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(a2 - 8);
  (*(v11 + 16))(a4, a1, a2);
  v7 = *(a3 + 64);
  type metadata accessor for IndexingIterator(0, a2, a3, v8);
  v7(a2, a3);
  v9 = *(v11 + 8);

  return v9(a1, a2);
}

Swift::Int __swiftcall UnsafeMutableBufferPointer.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static Array<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v38 = a4;
  v7 = *(a3 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = Array._getCount()();
  if (v13 == Array._getCount()())
  {
    if (!v13 || (v14 = _ArrayBuffer.identity.getter(a1, a3), v14 == _ArrayBuffer.identity.getter(a2, a3)))
    {
      v21 = 1;
    }

    else
    {
      if (v13 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v15 = 0;
      v16 = a1 & 0xC000000000000001;
      v36 = a2 & 0xC000000000000001;
      v37 = (v7 + 16);
      v34 = (v7 + 8);
      v35 = v38 + 8;
      do
      {
        if (!v13)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v32 = v16;
        v17 = (v16 == 0) | ~_swift_isClassOrObjCExistentialType(a3, a3);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v15, v17 & 1);
        if (v17)
        {
          v18 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15;
          v33 = *(v7 + 16);
          v33(v12, v18, a3);
        }

        else
        {
          v24 = v15;
          v25 = _ArrayBuffer._getElementSlowPath(_:)(v15, a1, a3);
          if (v8 != 8)
          {
            goto LABEL_24;
          }

          v39 = v25;
          v26 = v25;
          v33 = *v37;
          v33(v12, &v39, a3);
          swift_unknownObjectRelease(v26);
          v15 = v24;
        }

        v19 = v36 == 0;
        v20 = v19 | ~_swift_isClassOrObjCExistentialType(a3, a3);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v15, v20 & 1);
        v30 = v15;
        v31 = v7;
        if (v20)
        {
          v33(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, a3);
        }

        else
        {
          v27 = _ArrayBuffer._getElementSlowPath(_:)(v15, a2, a3);
          if (v8 != 8)
          {
LABEL_24:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v39 = v27;
          v28 = v27;
          v33(v10, &v39, a3);
          swift_unknownObjectRelease(v28);
        }

        v21 = (*(v38 + 8))(v12, v10, a3);
        v22 = *v34;
        (*v34)(v10, a3);
        v22(v12, a3);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v7 = v31;
        v15 = v30 + 1;
        v23 = v13-- == 1;
        v16 = v32;
      }

      while (!v23);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

BOOL static _Pointer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = v6(a3, a4);
  return v7 == v6(a3, a4);
}

Swift::Int Array<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v20 = a4;
  v7 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v8;
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Array._getCount()();
  v19 = a1;
  Hasher._combine(_:)(v10);
  v21 = a2;
  result = Array._getCount()();
  if (result)
  {
    v12 = result;
    if (result >= 1)
    {
      v13 = 0;
      v14 = *(v20 + 24);
      v18 = v21 & 0xC000000000000001;
      while (1)
      {
        if (_swift_isClassOrObjCExistentialType(a3, a3) && v18)
        {
          v15 = _ArrayBuffer._getElementSlowPath(_:)(v13, v21, a3);
          if (v17 != 8)
          {
            goto LABEL_13;
          }

          v22 = v15;
          v16 = v15;
          (*(v7 + 16))(v9, &v22, a3);
          swift_unknownObjectRelease(v16);
        }

        else
        {
          (*(v7 + 16))(v9, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, a3);
        }

        ++v13;
        v14(v19, a3, v20);
        result = (*(v7 + 8))(v9, a3);
        if (v12 == v13)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int Array<A>.hashValue.getter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18 = a3;
  v5 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v6;
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0u;
  v25 = 0u;
  v21 = 0;
  v22 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v23 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v8 = Array._getCount()();
  Hasher._combine(_:)(v8);
  v19 = a1;
  v9 = Array._getCount()();
  if (v9)
  {
    v10 = v9;
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = *(v18 + 24);
      v17 = v19 & 0xC000000000000001;
      while (1)
      {
        if (_swift_isClassOrObjCExistentialType(a2, a2) && v17)
        {
          v13 = _ArrayBuffer._getElementSlowPath(_:)(v11, v19, a2);
          if (v16 != 8)
          {
            goto LABEL_13;
          }

          v20 = v13;
          v14 = v13;
          (*(v5 + 16))(v7, &v20, a2);
          swift_unknownObjectRelease(v14);
        }

        else
        {
          (*(v5 + 16))(v7, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, a2);
        }

        ++v11;
        v12(&v21, a2, v18);
        (*(v5 + 8))(v7, a2);
        if (v10 == v11)
        {
          return Hasher._finalize()();
        }
      }
    }

    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return Hasher._finalize()();
}

Swift::Int __swiftcall Hashable._rawHashValue(seed:)(Swift::Int seed)
{
  v4 = 0u;
  v5 = 0u;
  v3[0] = 0;
  v3[1] = _swift_stdlib_Hashing_parameters ^ seed ^ 0x736F6D6570736575;
  v3[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v3[3] = _swift_stdlib_Hashing_parameters ^ seed ^ 0x6C7967656E657261;
  v3[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  (*(v1 + 24))(v3);
  return Hasher._finalize()();
}

{
  v3 = v2;
  v4 = v1;
  v5 = specialized Hasher.init(_seed:)(seed, v7);
  (*(v3 + 24))(v7, v4, v3, v5);
  return Hasher._finalize()();
}

void *Array.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  Array._makeMutableAndUnique()();
  v7 = *v4;
  v8 = *(a3 + 16);
  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v9 + 16);
  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(v8 - 1);
  v13 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17[0] = v13;
  v17[1] = v10;
  v14 = *(v12 + 72);
  v15 = v10 * v14;
  if ((v10 * v14) >> 64 != (v10 * v14) >> 63)
  {
    __break(1u);
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 < 0)
  {
    goto LABEL_11;
  }

  a1(v13, v13 + v15);
  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5(v17, v13, v10);
}

uint64_t _sSwySwSryxGclufCs5UInt8V_Tt0g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0 || a2 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeMutableRawBufferPointer.init<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  v4 = a2 * v3;
  if ((a2 * v3) >> 64 != (a2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || v4 && !result)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Array.withUnsafeBytes<A>(_:)(uint64_t (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v21 = a2;
  v18 = a4;
  v19 = a5;
  v20 = a1;
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(partial apply for closure #1 in Array.withUnsafeBytes<A>(_:), v17, a3, a4);
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4))
  {
    v8 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = a3;
  }

  v9 = *(a4 - 1);
  v10 = *(v9 + 80);
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    if (a3 < 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = (a3 & 0xFFFFFFFFFFFFFF8);
    }

    v12 = [v16 count];
    if (v12 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v11 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v11 = a3;
    }

    v12 = *(v11 + 16);
  }

  v13 = *(v9 + 72);
  v14 = v12 * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
    __break(1u);
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v14 < 0)
  {
    goto LABEL_19;
  }

  return a1(v8 + ((v10 + 32) & ~v10), v8 + ((v10 + 32) & ~v10) + v14);
}

uint64_t _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(uint64_t result, uint64_t a2)
{
  if (a2 < 0 || a2 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeRawBufferPointer.init<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  v4 = a2 * v3;
  if ((a2 * v3) >> 64 != (a2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || v4 && !result)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _bridgeCocoaArray<A>(_:)(unint64_t a1)
{
  v1 = specialized _bridgeCocoaArray<A>(_:)(a1);

  return v1;
}

__objc2_class **Array._bridgeToObjectiveCImpl()(int64_t a1, uint64_t *a2)
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

    return swift_unknownObjectRetain(v7);
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

    return _ContiguousArrayBuffer._asCocoaArray()(v4, a2, v5);
  }
}

uint64_t static Array._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)(atomic_ullong *a1, uint64_t a2)
{
  v4 = type metadata accessor for __SwiftDeferredNSArray();
  v5 = swift_unknownObjectRetain(a1);
  v6 = swift_dynamicCastClass(v5, v4);
  if (v6)
  {
    v9 = *(v6 + 24);
    v9;
    swift_unknownObjectRelease(a1);
    a1 = v9;
  }

  v10 = type metadata accessor for _ContiguousArrayStorage(0, a2, v7, v8);
  result = swift_dynamicCastClass(a1, v10);
  if (!result)
  {
    swift_unknownObjectRelease(a1);
    return 0;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a1;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  v16 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    return (*(*(a3 - 8) + 56))(a4, v16, 1, a3);
  }

  (*(v8 + 32))(v11, v13, v7);
  v19(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    return (*(*(a3 - 8) + 56))(a4, v16, 1, a3);
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t Array<A>._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = type metadata accessor for _ArrayAnyHashableBox(0, a2, a3, a4);
  a5[3] = result;
  a5[4] = &protocol witness table for _ArrayAnyHashableBox<A>;
  *a5 = a1;
  return result;
}

unint64_t _ArrayAnyHashableBox._base.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  a5[3] = type metadata accessor for Array(0, a2, a3, a4);
  *a5 = a1;

  return a1;
}

uint64_t _ArrayAnyHashableBox.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Description = a3[-1].Description;
  v11 = Description[8];
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v32 - v14);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v16, v16);
  v18 = ((a2 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
  Array._checkSubscript(_:wasNativeTypeChecked:)(a1, (a2 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
  if (v18)
  {
    v19 = Description[2];
    v19(v15, a2 + ((*(Description + 80) + 32) & ~*(Description + 80)) + Description[9] * a1, a3);
  }

  else
  {
    v30 = _ArrayBuffer._getElementSlowPath(_:)(a1, a2, &a3->Kind);
    if (v11 != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *&v35 = v30;
    v19 = Description[2];
    v31 = v30;
    v19(v15, &v35, a3);
    swift_unknownObjectRelease(v31);
  }

  if (a3 == &type metadata for String)
  {
    *(&v36 + 1) = type metadata accessor for _ConcreteHashableBox(0, &type metadata for String, a4, v20);
    v37 = &protocol witness table for _ConcreteHashableBox<A>;
    v27 = __swift_allocate_boxed_opaque_existential_0Tm(&v35);
    v19(v27, v15, &type metadata for String);
    goto LABEL_10;
  }

  v19(v13, v15, a3);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
  if ((swift_dynamicCast(&v35, v13, a3, v21, 6uLL) & 1) == 0)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    outlined destroy of _HasContiguousBytes?(&v35, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    goto LABEL_9;
  }

  v22 = *(&v36 + 1);
  v23 = v37;
  v24 = __swift_project_boxed_opaque_existential_0Tm(&v35, *(&v36 + 1));
  MEMORY[0x1EEE9AC00](v24);
  (*(v26 + 16))(&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (v23[1])(&v32, v22, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  if (!*(&v33 + 1))
  {
LABEL_9:
    outlined destroy of AnyHashable?(&v32);
    *(&v36 + 1) = &unk_1EEEBDCA0;
    v37 = &protocol witness table for _ConcreteHashableBox<A>;
    LOBYTE(v35) = 0;
    _swift_makeAnyHashableUpcastingToHashableBaseType(v15, &v35, a3, a4);
    goto LABEL_10;
  }

  v35 = v32;
  v36 = v33;
  v37 = v34;
LABEL_10:
  v28 = v36;
  *a5 = v35;
  *(a5 + 16) = v28;
  *(a5 + 32) = v37;
  return (Description[1])(v15, a3);
}

uint64_t _convertToAnyHashable<A>(_:)@<X0>(uint64_t a1@<X0>, swift *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return AnyHashable.init<A>(_:)(v8, a2, a3, a4);
}

uint64_t _ArrayAnyHashableBox._isEqual(to:)(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  Description = a3[-1].Description;
  v8 = *(Description + 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v43 - v12);
  outlined init with copy of MirrorPath(v11, &v58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25_ArrayAnyHashableProtocol_pMd, _ss25_ArrayAnyHashableProtocol_pMR);
  if (swift_dynamicCast(&v55, &v58, v14, v15, 6uLL))
  {
    v50 = a4;
    _ss9CodingKey_pWOb_0(&v55, v61);
    v16 = Array._getCount()();
    v18 = v62;
    v17 = v63;
    __swift_project_boxed_opaque_existential_0Tm(v61, v62);
    if (v16 == (*(v17 + 16))(v18, v17))
    {
      if (v16 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v16)
      {
        v19 = 0;
        v20 = a2 & 0xC000000000000001;
        v48 = (Description + 16);
        v49 = (Description + 8);
        do
        {
          if (v16 == v19)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v47 = v16;
          v46 = v20;
          v21 = (v20 == 0) | ~_swift_isClassOrObjCExistentialType(a3, &a3->Kind);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v19, v21 & 1);
          if (v21)
          {
            v22 = *(Description + 2);
            v22(v13, (a2 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v19), a3);
          }

          else
          {
            v40 = _ArrayBuffer._getElementSlowPath(_:)(v19, a2, &a3->Kind);
            if (v8 != 8)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            *&v58 = v40;
            v22 = *v48;
            v41 = v40;
            (*v48)(v13, &v58, a3);
            swift_unknownObjectRelease(v41);
          }

          v45 = a2;
          v44 = Description;
          v43 = v10;
          if (a3 == &type metadata for String)
          {
            *(&v56 + 1) = type metadata accessor for _ConcreteHashableBox(0, &type metadata for String, v50, v23);
            v57 = &protocol witness table for _ConcreteHashableBox<A>;
            v31 = __swift_allocate_boxed_opaque_existential_0Tm(&v55);
            v22(v31, v13, &type metadata for String);
          }

          else
          {
            v22(v10, v13, a3);
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
            if ((swift_dynamicCast(&v55, v10, a3, v24, 6uLL) & 1) == 0)
            {
              v57 = 0;
              v55 = 0u;
              v56 = 0u;
              outlined destroy of _HasContiguousBytes?(&v55, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
              v58 = 0u;
              v59 = 0u;
              v60 = 0;
              v30 = v50;
LABEL_15:
              outlined destroy of AnyHashable?(&v58);
              *(&v56 + 1) = &unk_1EEEBDCA0;
              v57 = &protocol witness table for _ConcreteHashableBox<A>;
              LOBYTE(v55) = 0;
              _swift_makeAnyHashableUpcastingToHashableBaseType(v13, &v55, a3, v30);
              goto LABEL_16;
            }

            v25 = *(&v56 + 1);
            v26 = v57;
            v27 = __swift_project_boxed_opaque_existential_0Tm(&v55, *(&v56 + 1));
            MEMORY[0x1EEE9AC00](v27);
            (*(v29 + 16))(&v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
            (v26[1])(&v58, v25, v26);
            __swift_destroy_boxed_opaque_existential_1Tm(&v55);
            v30 = v50;
            if (!*(&v59 + 1))
            {
              goto LABEL_15;
            }

            v55 = v58;
            v56 = v59;
            v57 = v60;
          }

LABEL_16:
          v58 = v55;
          v59 = v56;
          v60 = v57;
          (*v49)(v13, a3);
          v32 = v62;
          v33 = v63;
          __swift_project_boxed_opaque_existential_0Tm(v61, v62);
          (*(v33 + 24))(&v55, v19, v32, v33);
          v34 = *(&v59 + 1);
          v35 = v60;
          __swift_project_boxed_opaque_existential_0Tm(&v58, *(&v59 + 1));
          (v35[1])(v52, v34, v35);
          v36 = v53;
          v37 = v54;
          __swift_project_boxed_opaque_existential_0Tm(v52, v53);
          v38 = *(&v56 + 1);
          v39 = v57;
          __swift_project_boxed_opaque_existential_0Tm(&v55, *(&v56 + 1));
          (v39[1])(v51, v38, v39);
          LOBYTE(v36) = (*(v37 + 16))(v51, v36, v37);
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          outlined destroy of AnyHashable(&v55);
          outlined destroy of AnyHashable(&v58);
          if ((v36 & 1) == 0)
          {
            goto LABEL_22;
          }

          ++v19;
          v16 = v47;
          a2 = v45;
          Description = v44;
          v10 = v43;
          v20 = v46;
        }

        while (v47 != v19);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      return 1;
    }

    else
    {
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      return 0;
    }
  }

  else
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    outlined destroy of _HasContiguousBytes?(&v55, &_ss25_ArrayAnyHashableProtocol_pSgMd, _ss25_ArrayAnyHashableProtocol_pSgMR);
    return 2;
  }
}

Swift::Int _ArrayAnyHashableBox._hashValue.getter(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  _ArrayAnyHashableBox._hash(into:)(&v4, a1, a2, a3);
  return Hasher.finalize()();
}

__n128 Hasher.init()@<Q0>(uint64_t a1@<X8>)
{
  specialized Hasher.init()(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void _ArrayAnyHashableBox._hash(into:)(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v8 = Array._getCount()();
  Hasher._combine(_:)(v8);
  if ((v8 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if (v8 == v9)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v10 = v9 + 1;
      _ArrayAnyHashableBox.subscript.getter(v9, a2, a3, a4, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_0Tm(v18, v19);
      (*(v12 + 8))(v15, v11, v12);
      v13 = v16;
      v14 = v17;
      __swift_project_boxed_opaque_existential_0Tm(v15, v16);
      (*(v14 + 32))(a1, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      outlined destroy of AnyHashable(v18);
      v9 = v10;
    }

    while (v8 != v10);
  }
}

Swift::Int __swiftcall Hasher.finalize()()
{
  v1 = v0[2];
  v2 = v0[4] ^ *v0;
  v3 = v1 + v0[1];
  v4 = v3 ^ __ROR8__(v1, 51);
  v5 = v2 + v0[3];
  v6 = __ROR8__(v2, 48);
  v7 = (v5 ^ v6) + __ROR8__(v3, 32);
  v8 = v7 ^ __ROR8__(v5 ^ v6, 43);
  v9 = v5 + v4;
  v10 = v9 ^ __ROR8__(v4, 47);
  v11 = (v7 ^ *v0) + v10;
  v12 = v11 ^ __ROR8__(v10, 51);
  v13 = (__ROR8__(v9, 32) ^ 0xFFLL) + v8;
  v14 = __ROR8__(v8, 48);
  v15 = __ROR8__(v11, 32) + (v13 ^ v14);
  v16 = v15 ^ __ROR8__(v13 ^ v14, 43);
  v17 = v12 + v13;
  v18 = v17 ^ __ROR8__(v12, 47);
  v19 = v18 + v15;
  v20 = v19 ^ __ROR8__(v18, 51);
  v21 = __ROR8__(v17, 32) + v16;
  v22 = __ROR8__(v16, 48);
  v23 = __ROR8__(v19, 32) + (v21 ^ v22);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v20 + v21;
  v26 = v25 ^ __ROR8__(v20, 47);
  v27 = (v26 + v23) ^ __ROR8__(v26, 51);
  v28 = __ROR8__(v25, 32) + v24;
  return __ROR8__(v28 ^ __ROR8__(v24, 48), 43) ^ __ROR8__(v27, 47) ^ __ROR8__(v27 + v28, 32) ^ (v27 + v28);
}

Swift::Int __swiftcall _ArrayAnyHashableBox._rawHashValue(_seed:)(Swift::Int _seed)
{
  v43 = v3;
  v4 = v2;
  v5 = v1;
  Description = v2[-1].Description;
  v7 = *(Description + 8);
  v8 = MEMORY[0x1EEE9AC00](_seed);
  v9 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v38 - v11);
  v13 = *(&_swift_stdlib_Hashing_parameters + 1);
  v14 = _swift_stdlib_Hashing_parameters ^ v10;
  v15 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  v16 = _swift_stdlib_Hashing_parameters ^ v10 ^ 0x6C7967656E657261;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  v50[0] = 0;
  v50[1] = v14 ^ 0x736F6D6570736575;
  v50[2] = v13 ^ 0x646F72616E646F6DLL;
  v50[3] = v16;
  v50[4] = v15;
  v18 = Array._getCount()();
  Hasher._combine(_:)(v18);
  if ((v18 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v18)
  {
    v19 = 0;
    v20 = v5 & 0xC000000000000001;
    v21 = (Description + 16);
    v42 = (Description + 8);
    do
    {
      if (v18 == v19)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v41 = v20;
      v22 = (v20 == 0) | ~_swift_isClassOrObjCExistentialType(v4, &v4->Kind);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v19, v22 & 1);
      if (v22)
      {
        v23 = *(Description + 2);
        v23(v12, v5 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v19, v4);
      }

      else
      {
        v36 = _ArrayBuffer._getElementSlowPath(_:)(v19, v5, &v4->Kind);
        if (v7 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        *&v47 = v36;
        v23 = *v21;
        v38 = v36;
        v23(v12, &v47, v4);
        swift_unknownObjectRelease(v38);
      }

      v40 = v9;
      v39 = v21;
      if (v4 == &type metadata for String)
      {
        *(&v45 + 1) = type metadata accessor for _ConcreteHashableBox(0, &type metadata for String, v43, v24);
        v46 = &protocol witness table for _ConcreteHashableBox<A>;
        v31 = __swift_allocate_boxed_opaque_existential_0Tm(&v44);
        v23(v31, v12, &type metadata for String);
      }

      else
      {
        v23(v9, v12, v4);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
        if ((swift_dynamicCast(&v44, v9, v4, v25, 6uLL) & 1) == 0)
        {
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
          outlined destroy of _HasContiguousBytes?(&v44, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
          v47 = 0u;
          v48 = 0u;
          v49 = 0;
LABEL_13:
          outlined destroy of AnyHashable?(&v47);
          *(&v45 + 1) = &unk_1EEEBDCA0;
          v46 = &protocol witness table for _ConcreteHashableBox<A>;
          LOBYTE(v44) = 0;
          _swift_makeAnyHashableUpcastingToHashableBaseType(v12, &v44, v4, v43);
          goto LABEL_14;
        }

        v26 = *(&v45 + 1);
        v27 = v46;
        v28 = __swift_project_boxed_opaque_existential_0Tm(&v44, *(&v45 + 1));
        v38 = &v38;
        MEMORY[0x1EEE9AC00](v28);
        (*(v30 + 16))(&v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
        (v27[1])(&v47, v26, v27);
        __swift_destroy_boxed_opaque_existential_1Tm(&v44);
        if (!*(&v48 + 1))
        {
          goto LABEL_13;
        }

        v44 = v47;
        v45 = v48;
        v46 = v49;
      }

LABEL_14:
      ++v19;
      v47 = v44;
      v48 = v45;
      v49 = v46;
      (*v42)(v12, v4);
      v32 = *(&v48 + 1);
      v33 = v49;
      __swift_project_boxed_opaque_existential_0Tm(&v47, *(&v48 + 1));
      (v33[1])(&v44, v32, v33);
      v34 = *(&v45 + 1);
      v35 = v46;
      __swift_project_boxed_opaque_existential_0Tm(&v44, *(&v45 + 1));
      (v35[4])(v50, v34, v35);
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      outlined destroy of AnyHashable(&v47);
      v9 = v40;
      v20 = v41;
      v21 = v39;
    }

    while (v18 != v19);
  }

  return Hasher._finalize()();
}

__n128 Hasher.init(_seed:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Hasher.init(_seed:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

Swift::Int __swiftcall Hasher._finalize()()
{
  v1 = v0[2];
  v2 = v1 + v0[1];
  v3 = v2 ^ __ROR8__(v1, 51);
  v4 = v0[4] ^ *v0;
  v5 = v0[3] + v4;
  v6 = __ROR8__(v4, 48);
  v7 = (v5 ^ v6) + __ROR8__(v2, 32);
  v8 = v7 ^ __ROR8__(v5 ^ v6, 43);
  v9 = v5 + v3;
  v10 = v9 ^ __ROR8__(v3, 47);
  v11 = (v7 ^ *v0) + v10;
  v12 = v11 ^ __ROR8__(v10, 51);
  v13 = (__ROR8__(v9, 32) ^ 0xFFLL) + v8;
  v14 = __ROR8__(v8, 48);
  v15 = __ROR8__(v11, 32) + (v13 ^ v14);
  v16 = v15 ^ __ROR8__(v13 ^ v14, 43);
  v17 = v12 + v13;
  v18 = v17 ^ __ROR8__(v12, 47);
  v19 = v18 + v15;
  v20 = v19 ^ __ROR8__(v18, 51);
  v21 = __ROR8__(v17, 32) + v16;
  v22 = __ROR8__(v16, 48);
  v23 = __ROR8__(v19, 32) + (v21 ^ v22);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v20 + v21;
  v26 = v25 ^ __ROR8__(v20, 47);
  v27 = v26 + v23;
  v28 = v27 ^ __ROR8__(v26, 51);
  v29 = __ROR8__(v25, 32) + v24;
  v30 = __ROR8__(v24, 48);
  v31 = __ROR8__(v27, 32) + (v29 ^ v30);
  v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
  v33 = v28 + v29;
  v34 = v33 ^ __ROR8__(v28, 47);
  v35 = __ROR8__(v33, 32);
  v0[3] = v35;
  v0[4] = v32;
  v0[1] = v31;
  v0[2] = v34;
  return v34 ^ v31 ^ v35 ^ v32;
}

uint64_t _ArrayAnyHashableBox._unbox<A>()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, swift *a5@<X8>)
{
  v11 = a1;
  v8 = type metadata accessor for Array(0, a2, a3, a4);
  a1;
  v9 = swift_dynamicCast(a5, &v11, v8, a3, 6uLL);
  return (*(*(a3 - 1) + 7))(a5, v9 ^ 1u, 1, a3);
}

uint64_t _ArrayAnyHashableBox._downCastConditional<A>(into:)(char *a1, unint64_t a2, uint64_t a3, Class *a4)
{
  v8 = type metadata accessor for Optional(0, a4, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v23 - v11);
  v13 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v18 = type metadata accessor for Array(0, a3, v16, v17);
  a2;
  v19 = swift_dynamicCast(v12, &v24, v18, a4, 6uLL);
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v12, 0, 1, a4);
    v21 = *(v13 + 32);
    v21(v15, v12, a4);
    v21(a1, v15, a4);
  }

  else
  {
    v20(v12, 1, 1, a4);
    (*(v9 + 8))(v12, v8);
  }

  return v19;
}

uint64_t _AnyHashableBox._canonicalBox.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0Tm, v3, a1);
}

void *_allocateUninitializedArray<A>(_:)(uint64_t a1, uint64_t *a2)
{
  if (a1 < 1)
  {

    return static Array._allocateUninitialized(_:)(a1, a2);
  }

  else
  {
    v4 = getContiguousArrayStorageType<A>(for:)(a2, a2);
    v5 = swift_allocObject(v4, (((*(*(a2 - 1) + 80) + *(v4 + 48)) & ~*(*(a2 - 1) + 80)) + *(*(a2 - 1) + 72) * a1), *(*(a2 - 1) + 80) | *(v4 + 52));

    return static Array._adoptStorage(_:count:)(v5, a1);
  }
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t *a2)
{
  if (swift_isClassType(a2) && a2)
  {

    return canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2, v3, v4);
  }
}

void _deallocateUninitializedArray<A>(_:)(unint64_t a1, uint64_t *a2)
{
  specialized _deallocateUninitializedArray<A>(_:)(a1, a2);

  a1;
}

void static String.+= infix(_:_:)(unint64_t *a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v12 = a1[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (*a1 & ~v12 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    a3;
    v12;
    *a1 = a2;
    a1[1] = a3;
  }
}

uint64_t _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  specialized _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(*(a6 - 8) + 8);

  return v10(a3, a6);
}

uint64_t closure #1 in _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness(0, *(*(*(a6 + 8) + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v47 = v11;
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v39 - v12;
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v45 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  (*(a7 + 64))(a5, a7);
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    v20 = a7 + 80;
    v21 = *(a7 + 80);
    v22 = v50 + 32;
    v43 = a7 + 192;
    v44 = v50 + 16;
    do
    {
      v48 = v21;
      v49 = v20;
      v23 = v21(v51, v19, a5, a7);
      v41 = v19;
      v42 = a1;
      v24 = a5;
      v25 = v14;
      v26 = v23;
      v27 = v50;
      v28 = *(v50 + 16);
      v40 = v22;
      v29 = v46;
      v30 = v17;
      v31 = v47;
      v28(v46);
      v26(v51, 0);
      v14 = v25;
      a5 = v24;
      v32 = v42;
      v33 = v29;
      v34 = v31;
      v17 = v30;
      v22 = v40;
      v19 = v41;
      (*(v27 + 32))(v42, v33, v34);
      (*(a7 + 192))(v19, a5, a7);
      v21 = v48;
      v20 = v49;
      a1 = v32 + *(v27 + 72);
      --a2;
    }

    while (a2);
  }

  (*(a7 + 72))(a5, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v36 = (*(*(AssociatedConformanceWitness + 8) + 8))(v19, v17, v14);
  v37 = *(v45 + 8);
  v37(v17, v14);
  if ((v36 & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v37)(v19, v14);
}

uint64_t _debugPrecondition(_:_:file:line:)(uint64_t (*a1)(void))
{
  result = a1();
  if ((result & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int __swiftcall _growArrayCapacity(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result *= 2;
  }

  return result;
}

uint64_t static Int.* infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

__objc2_class **_ArrayBufferProtocol._forceCreateUniqueMutableBufferImpl(countForBuffer:minNewCapacity:requiredCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 144);
  v11 = v10(a4, a5);
  v12 = v10(a4, a5);
  if (v11 < a2)
  {
    if (v12 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    v12 *= 2;
  }

  if (v12 <= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = v13;
  }

  if (!v14)
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_getAssociatedTypeWitness(0, *(*(*(a5 + 8) + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = v15;
  v17 = getContiguousArrayStorageType<A>(for:)(v15, v15);
  v18 = *(*(v16 - 1) + 72);
  v19 = *(*(v16 - 1) + 80);
  v20 = swift_allocObject(v17, (((v19 + *(v17 + 48)) & ~v19) + v18 * v14), v19 | *(v17 + 52));
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18 || ((v22 = v21 - ((v19 + 32) & ~v19), v22 == 0x8000000000000000) ? (v23 = v18 == -1) : (v23 = 0), v23))
  {
LABEL_21:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = v22 / v18;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v16, v16);
  v20[2] = a1;
  v20[3] = isClassOrObjCExistentialType | (2 * v24);
  return v20;
}

Swift::Void __swiftcall _ArrayBufferProtocol._outlinedMakeUniqueBuffer(bufferCount:)(Swift::Int bufferCount)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(v2 + 56))();
  if (!v6)
  {
    v7 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(newCount:requiredCapacity:)(bufferCount, bufferCount, v4, v3);
    v11 = v7;
    v8 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v4, v3);
    v10 = v9;
    _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v11, bufferCount, 0, v8, v9, v4, v3);
    v10;
    v6 = v7;
  }

  v6;
}

uint64_t _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a1;
  v62 = a4;
  v9 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v75 = v10;
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v53 - v11;
  v15 = type metadata accessor for Optional(0, v12, v13, v14);
  v70 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v53 - v21;
  v23 = a3;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v53 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  v28 = *(v9 + 112);
  v61 = a2;
  v29 = a2;
  v30 = v5;
  v31 = v28(v29, v9);
  (*(a5 + 32))(v23, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, v23, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = *(AssociatedConformanceWitness + 16);
  v66 = v27;
  v67 = v25;
  v64 = AssociatedConformanceWitness + 16;
  v65 = AssociatedConformanceWitness;
  v63 = v33;
  (v33)(v25);
  v34 = v60;
  v35 = v75;
  v36 = v70;
  v73 = *(v70 + 16);
  v74 = v70 + 16;
  v73(v60, v22, v15);
  v71 = *(v68 + 48);
  v72 = v68 + 48;
  v37 = v71(v34, 1, v35);
  v69 = *(v36 + 8);
  v70 = v36 + 8;
  if (v37 == 1)
  {
LABEL_2:
    v38 = v69;
    v69(v22, v15);
    (*(v53 + 8))(v66, v67);
    return v38(v34, v15);
  }

  else
  {
    v57 = v62 + 160;
    v58 = v62 + 144;
    v40 = (v68 + 32);
    v54 = (v68 + 8);
    v56 = v62 + 128;
    v59 = v30;
    v55 = v15;
    while (1)
    {
      result = v69(v34, v15);
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v42 = v61;
      v43 = v62;
      v44 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v31, v31 + 1, v61, v62);
      v77 = v44;
      v45 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v42, v43);
      v47 = v46;
      _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v77, v31, 0, v45, v46, v42, v43);
      v47;
      v44;
      v41 = (*(v43 + 144))(v42, v43);
      v48 = (*(v43 + 160))(v42, v43);
      v49 = v55;
      v50 = v75;
      (v73)(v18, v22);
      if (v71(v18, 1, v50) == 1)
      {
LABEL_4:
        v15 = v49;
        v69(v18, v49);
        v41 = v31;
      }

      else
      {
        v51 = *v40;
        if (v41 <= v31)
        {
          v41 = v31;
        }

        v52 = v76;
        while (1)
        {
          v51(v52, v18, v50);
          if (v41 == v31)
          {
            break;
          }

          v69(v22, v49);
          v51((v48 + *(v68 + 72) * v31++), v76, v50);
          v63(v67, v65);
          v50 = v75;
          v52 = v76;
          v73(v18, v22, v49);
          if (v71(v18, 1, v50) == 1)
          {
            goto LABEL_4;
          }
        }

        (*v54)(v52, v50);
        v31 = v41;
        v15 = v49;
      }

      (*(v62 + 128))(v41, v61);
      v34 = v60;
      v73(v60, v22, v15);
      if (v71(v34, 1, v75) == 1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  return result;
}

void ArraySlice._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRelease(*v4);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfCyXl_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 < a2)
  {
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t _SliceBuffer.init(_buffer:shiftedToStartIndex:)(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 < a2)
  {
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int __swiftcall ArraySlice._getCapacity()()
{
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    __break(1u);
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      return v5;
    }

    v6 = v4;
    v7 = v2;
    v8 = v1;
    v9 = result;
    v10 = type metadata accessor for __ContiguousArrayStorageBase();
    v11 = swift_unknownObjectRetain(v9);
    v12 = swift_dynamicCastClass(v11, v10);
    if (!v12)
    {
      swift_unknownObjectRelease(v9);
      v12 = &_swiftEmptyArrayStorage;
    }

    v13 = *(v6 - 8);
    v14 = v12[2];
    if ((v8 + *(v13 + 72) * v7 + *(v13 + 72) * v5) != (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v14))
    {
      v12;
      return v5;
    }

    v15 = v12[3];
    result = v12;
    v16 = (v15 >> 1) - v14;
    v17 = __OFADD__(v5, v16);
    v5 += v16;
    if (!v17)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ArraySlice._makeMutableAndUnique()()
{
  v4 = v0;
  v5 = v3[3];
  v6 = *v3;
  if (v5)
  {
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v3);
    *v3 = v6;
    if (isUniquelyReferenced_nonNull)
    {
      return;
    }

    v5 = v3[3];
  }

  v8 = type metadata accessor for _SliceBuffer(0, *(v4 + 16), v1, v2);
  v9 = v3[1];
  v10 = v3[2];
  v14[0] = v6;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v5;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v8, v11);
  _ArrayBufferProtocol.init(copying:)(v14, v8, WitnessTable, v15);
  v13 = v15[1];
  *v3 = v15[0];
  *(v3 + 1) = v13;
}

Swift::Void __swiftcall ArraySlice._checkSubscript_native(_:)(Swift::Int a1)
{
  if (a1 < v1 || (v2 >> 1) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

Swift::Void __swiftcall ArraySlice._checkIndex(_:)(Swift::Int a1)
{
  if (a1 > (v2 >> 1) || a1 < v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

id ArraySlice._owner.getter()
{
  v0 = _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

id protocol witness for _ArrayProtocol._owner.getter in conformance ArraySlice<A>()
{
  v0 = _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

uint64_t protocol witness for _ArrayProtocol.init(_:) in conformance ArraySlice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for _SliceBuffer(0, v7, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v8, v9);
  result = ArraySlice.init<A>(_:)(a1, v7, v8, WitnessTable);
  *a5 = result;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
  return result;
}

uint64_t ArraySlice.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 56))(a3, a4);

  return _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v4, 0);
}

id protocol witness for _ArrayProtocol._buffer.getter in conformance ArraySlice<A>@<X0>(__int128 *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return swift_unknownObjectRetain(v2);
}

Swift::Int __swiftcall ArraySlice.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ArraySlice.formIndex(after:)(Swift::Int *after)
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

Swift::Int __swiftcall ArraySlice.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ArraySlice.formIndex(before:)(Swift::Int *before)
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

Swift::Int __swiftcall ArraySlice.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall ArraySlice.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = specialized Array.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall ArraySlice.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t ArraySlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a1 < a3 || (a4 >> 1) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(a5 - 8);
  v8 = *(v7 + 16);
  v9 = a2 + *(v7 + 72) * a1;

  return v8(a6, v9, a5);
}

uint64_t key path setter for ArraySlice.subscript(_:) : <A>ArraySlice<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  type metadata accessor for ArraySlice(0, v5, a3, a4);
  v7 = ArraySlice.subscript.modify(v10, v6);
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return (v7)(v10, 0);
}

uint64_t (*ArraySlice.subscript.modify(uint64_t a1, uint64_t a2))()
{
  ArraySlice._makeMutableAndUnique()();
  if (*(v2 + 16) > a2 || *(v2 + 24) >> 1 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t ArraySlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArraySlice._makeMutableAndUnique()();
  if (v3[2] > a2 || v3[3] >> 1 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 40);
  v10 = v3[1] + *(v8 + 72) * a2;

  return v9(v10, a1);
}

id key path getter for ArraySlice.subscript(_:) : <A>ArraySlice<A>A@<X0>(uint64_t *a1@<X0>, Swift::Int *a2@<X1>, void *a3@<X8>)
{
  v4 = specialized ArraySlice.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;

  return swift_unknownObjectRetain(v4);
}

void key path setter for ArraySlice.subscript(_:) : <A>ArraySlice<A>A(uint64_t a1, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for ArraySlice(0, *(a3 + a4 - 8), a3, a4);
  v11 = swift_unknownObjectRetain(v6);
  ArraySlice.subscript.setter(v11, v7, v8, v9, v4, v5, v10);
}

void ArraySlice.subscript.setter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, Swift::Int a5, Swift::Int a6, unint64_t a7)
{
  v12 = *v7;
  v13 = *(a7 + 16);
  ArraySlice._checkIndex(_:)(a5);
  ArraySlice._checkIndex(_:)(a6);
  specialized _SliceBuffer.subscript.getter(a5, a6, v12);
  if (v15 + *(*(v13 - 8) + 72) * v14 != a2 + *(*(v13 - 8) + 72) * a3)
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
    v20[0] = a1;
    v20[1] = a2;
    v20[2] = a3;
    v20[3] = a4;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a7, v14);
    ArraySlice.replaceSubrange<A>(_:with:)(a5, a6, v20, a7, a7, WitnessTable);
  }
}

uint64_t ArraySlice.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v7 = v6[2];
  if (v7 > result || (v8 = v6, v10 = v6[3], v11 = v10 >> 1, (v10 >> 1) < a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v11 - v7;
  if (__OFSUB__(v11, v7))
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = result;
  v13 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = (*(a6 + 112))(a5, a6);
  v19 = __OFSUB__(result, v13);
  v20 = result - v13;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = result;
  if ((v10 & 1) == 0 || (v22 = *v8, isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v8), *v8 = v22, !isUniquelyReferenced_nonNull))
  {
LABEL_15:
    v38 = type metadata accessor for _SliceBuffer(0, *(a4 + 16), v17, v18);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v38, v39);
    specialized _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(v12, a2, a3, v21, v38, a5, WitnessTable, a6);
    v41 = *(*(a5 - 1) + 8);

    return v41(a3, a5);
  }

  v43 = v20;
  v44 = v8[1];
  v24 = type metadata accessor for __ContiguousArrayStorageBase();
  v25 = swift_unknownObjectRetain(v22);
  v26 = swift_dynamicCastClass(v25, v24);
  if (!v26)
  {
    swift_unknownObjectRelease(v22);
    v26 = &_swiftEmptyArrayStorage;
  }

  v27 = *(a4 + 16);
  v28 = *(v27 - 8);
  v29 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v30 = v26[2];
  v31 = *(v28 + 72);
  v32 = v44 + v31 * v7;
  v33 = v45;
  if ((v32 + v31 * v45) == &v29[v31 * v30])
  {
    v35 = v26[3];
    result = v26;
    v36 = v35 >> 1;
    v33 = v45;
    v37 = v36 - v30;
    v19 = __OFADD__(v45, v37);
    v34 = v45 + v37;
    if (v19)
    {
LABEL_26:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = v26;
    v34 = v45;
  }

  if (__OFADD__(v33, v43))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v34 < (v33 + v43))
  {
    goto LABEL_15;
  }

  v42 = type metadata accessor for _SliceBuffer(0, v27, v17, v18);

  return _SliceBuffer.replaceSubrange<A>(_:with:elementsOf:)(v12, a2, v21, a3, v42, a5, a6);
}

void (*ArraySlice.subscript.modify(void *a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x40, 0x15D5uLL);
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
  ArraySlice._checkIndex(_:)(a2);
  ArraySlice._checkIndex(_:)(a3);
  v12 = specialized _SliceBuffer.subscript.getter(a2, a3, v11);
  *v10 = v12;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  swift_unknownObjectRetain(v12);
  return ArraySlice.subscript.modify;
}

void ArraySlice.subscript.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[6];
  v9 = v2[4];
  v8 = v2[5];
  if (a2)
  {
    v10 = swift_unknownObjectRetain(v3);
    ArraySlice.subscript.setter(v10, v4, v5, v6, v9, v8, v7);
    swift_unknownObjectRelease(*v2);
  }

  else
  {
    ArraySlice.subscript.setter(v3, v2[1], v2[2], v2[3], v2[4], v2[5], v2[6]);
  }

  free(v2);
}

uint64_t ArraySlice.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ArraySlice<A>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  ArraySlice._makeMutableAndUnique()();
  if (v6 < v3[2] || v6 >= v3[3] >> 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(*(*(a3 + 16) - 8) + 40))(v3[1] + *(*(*(a3 + 16) - 8) + 72) * v6, a1);

  return _swift_displayCrashMessage();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0xC7AFuLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = ArraySlice.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>(void *a1, Swift::Int *a2, uint64_t a3))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x118BuLL);
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
  ArraySlice._checkIndex(_:)(v10);
  ArraySlice._checkIndex(_:)(v9);
  v12 = specialized _SliceBuffer.subscript.getter(v10, v9, v11);
  *v8 = v12;
  v8[1] = v13;
  v8[2] = v14;
  v8[3] = v15;
  swift_unknownObjectRetain(v12);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[6];
  v7 = v2[7];
  v9 = v2[5];
  if (a2)
  {
    v10 = swift_unknownObjectRetain(v3);
    ArraySlice.subscript.setter(v10, v4, v5, v6, v8, v7, v9);
    swift_unknownObjectRelease(*v2);
  }

  else
  {
    ArraySlice.subscript.setter(v3, v2[1], v2[2], v2[3], v2[6], v2[7], v2[5]);
  }

  free(v2);
}

void *ArraySlice._withUnsafeMutableBufferPointerIfSupported<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = v4[2];
  v8 = v4[3] >> 1;
  v9 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
LABEL_8:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a2 + 16);
  ArraySlice._makeMutableAndUnique()();
  if (v9 < 0)
  {
    goto LABEL_8;
  }

  v13 = v4[1] + *(*(v12 - 8) + 72) * v4[2];
  v15[0] = v13;
  v15[1] = v9;
  a1(v15);
  if (v5)
  {
    return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v15, v13, v9);
  }

  _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v15, v13, v9);
  return (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
}

{
  return ArraySlice.withContiguousMutableStorageIfAvailable<A>(_:)(a1, a2, a3, a4);
}

unint64_t _ss12_SliceBufferVyxGSlsSl8endIndex0D0QzvgTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = ArraySlice.endIndex.getter(a1, a2, a3, *(v4 + 24));
  *a4 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArraySlice<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0xB73AuLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = ArraySlice.subscript.read(v7, *a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*ArraySlice.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7))()
{
  v11 = *(a7 - 8);
  v12 = v11;
  *a1 = a7;
  a1[1] = v11;
  v13 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc(v13, 0xB8E7uLL);
  }

  else
  {
    v14 = malloc(v13);
  }

  a1[2] = v14;
  if (a2 < a5 || (a6 >> 1) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))();
  return _ArrayBuffer.subscript.read;
}

id protocol witness for Collection.subscript.getter in conformance ArraySlice<A>@<X0>(Swift::Int *a1@<X0>, void *a2@<X8>)
{
  v4 = specialized ArraySlice.subscript.getter(*a1, a1[1], *v2);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;

  return swift_unknownObjectRetain(v4);
}

uint64_t protocol witness for Collection.indices.getter in conformance ArraySlice<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

__n128 protocol witness for Sequence.makeIterator() in conformance ArraySlice<A>@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v3;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArraySlice<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **ArraySlice._copyToContiguousArray()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v12 = a2;
  v13 = a5;
  v14 = type metadata accessor for __ContiguousArrayStorageBase();
  v15 = swift_unknownObjectRetain_n(a1, 2);
  v16 = swift_dynamicCastClass(v15, v14);
  if (!v16)
  {
    swift_unknownObjectRelease(a1);
    v16 = &_swiftEmptyArrayStorage;
  }

  v17 = v16[2];
  v18 = v16;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = a1;
  if (v17 != ((a4 >> 1) - a3))
  {
LABEL_11:
    swift_unknownObjectRelease(v18);
    a5 = v13;
    a2 = v12;
LABEL_2:
    v20[0] = a1;
    v20[1] = a2;
    v20[2] = a3;
    v20[3] = a4;
    v8 = type metadata accessor for ArraySlice(0, a5, a3, a4);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v8, v9);
    v11 = _copyCollectionToContiguousArray<A>(_:)(v20, v8, WitnessTable);
    swift_unknownObjectRelease(a1);
    return v11;
  }

  v11 = swift_dynamicCastClass(a1, v14);
  swift_unknownObjectRelease(a1);
  if (!v11)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptyArrayStorage;
  }

  return v11;
}

__n128 protocol witness for Sequence._copyContents(initializing:) in conformance ArraySlice<A>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ArraySlice._copyContents(initializing:)(a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(a4 + 16), v8);
  v6 = v9;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v6;
  return result;
}

char *ArraySlice._copyContents(initializing:)@<X0>(char *__dst@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X6>, void *a8@<X8>)
{
  v13 = a6 >> 1;
  if (a6 >> 1 != a5)
  {
    if (__dst)
    {
      v14 = v13 - a5;
      if (__OFSUB__(v13, a5))
      {
        __break(1u);
      }

      else if (v14 <= a2)
      {
        __dst = UnsafeMutablePointer.initialize(from:count:)((a4 + *(*(a7 - 1) + 72) * a5), v13 - a5, __dst, a7);
        goto LABEL_7;
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = 0;
  v13 = a5;
LABEL_7:
  *a8 = a3;
  a8[1] = a4;
  a8[2] = a5;
  a8[3] = a6;
  a8[4] = v13;
  a8[5] = v14;
  return __dst;
}

uint64_t ArraySlice.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((a4 >> 1) - a3) & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  result = a1(a2 + *(*(a5 - 8) + 72) * a3);
  if (!v7)
  {
    return (*(*(a6 - 8) + 56))(a7, 0, 1, a6);
  }

  return result;
}

uint64_t ArraySlice.init(arrayLiteral:)(unint64_t a1, uint64_t *a2)
{
  v4 = _ArrayBuffer.requestNativeBuffer()(a1, a2);
  if (!v4)
  {
    v12 = a1;
    v7 = type metadata accessor for Array(0, a2, v5, v6);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v7, v8);
    v4 = _copyCollectionToContiguousArray<A>(_:)(&v12, v7, WitnessTable);
  }

  v10 = v4;
  a1;
  return _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v10, 0);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance ArraySlice<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ArraySlice.init(arrayLiteral:)(a1, *(a2 + 16));
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

__objc2_class **ArraySlice.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a2;
  if (!a2)
  {
    (*(*(a3 - 1) + 8))(a1, a3);
    return &_swiftEmptyArrayStorage;
  }

  v6 = static ArraySlice._allocateBufferUninitialized(minimumCapacity:)(a2, a3);
  v10 = v9 >> 1;
  v11 = (v9 >> 1) - v8;
  if (__OFSUB__(v9 >> 1, v8))
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v4 - v11;
  if (__OFSUB__(v4, v11))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v6;
  v14 = v7;
  v15 = v8;
  if (!v12)
  {
    goto LABEL_11;
  }

  v16 = type metadata accessor for __ContiguousArrayStorageBase();
  v17 = swift_unknownObjectRetain(v13);
  v18 = swift_dynamicCastClass(v17, v16);
  if (!v18)
  {
    swift_unknownObjectRelease(v13);
    v18 = &_swiftEmptyArrayStorage;
  }

  v19 = v18[2];
  v20 = __OFADD__(v19, v12);
  v21 = (v19 + v12);
  if (v20)
  {
    goto LABEL_21;
  }

  v18[2] = v21;
  v18;
  if (__OFADD__(v10, v12))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (((v10 + v12) & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  v22 = *(a3 - 1);
  v27 = v22;
  v23 = *(v22 + 72);
  v24 = v14 + v23 * v15;
  v25 = *(v22 + 16);
  do
  {
    if (!v4)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v25(v24, a1, a3);
    v24 += v23;
    --v4;
  }

  while (v4);
  (*(v27 + 8))(a1, a3);
  return v13;
}

uint64_t static ArraySlice._allocateBufferUninitialized(minimumCapacity:)(uint64_t a1, uint64_t *a2)
{
  v2 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, a1, a2);

  return _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v2, 0);
}

__objc2_class **_SliceBuffer.count.setter(__objc2_class **result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = result - v5;
  if (__OFSUB__(result, v5))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = type metadata accessor for __ContiguousArrayStorageBase();
  v9 = swift_unknownObjectRetain(v7);
  result = swift_dynamicCastClass(v9, v8);
  if (!result)
  {
    swift_unknownObjectRelease(v7);
    result = &_swiftEmptyArrayStorage;
  }

  v10 = result[2];
  v4 = __OFADD__(v10, v6);
  v11 = &v6[v10];
  if (v4)
  {
    goto LABEL_14;
  }

  result[2] = v11;
  result;
  result = &v6[v3];
  if (__OFADD__(v3, v6))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return _SliceBuffer.endIndex.setter(result);
}

__objc2_class **ArraySlice.init(_uninitializedCount:)(uint64_t a1, uint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = static ArraySlice._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
  v5 = v4 >> 1;
  v7 = (v4 >> 1) - v6;
  if (__OFSUB__(v4 >> 1, v6))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = a1 - v7;
  if (__OFSUB__(a1, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v3;
  if (v8)
  {
    v10 = type metadata accessor for __ContiguousArrayStorageBase();
    v11 = swift_unknownObjectRetain(v9);
    v12 = swift_dynamicCastClass(v11, v10);
    if (!v12)
    {
      swift_unknownObjectRelease(v9);
      v12 = &_swiftEmptyArrayStorage;
    }

    v13 = v12[2];
    v14 = __OFADD__(v13, v8);
    v15 = (v13 + v8);
    if (!v14)
    {
      v12[2] = v15;
      v12;
      if (!__OFADD__(v5, v8))
      {
        if (((v5 + v8) & 0x8000000000000000) == 0)
        {
          return v9;
        }

LABEL_19:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return v9;
}

__objc2_class **static ArraySlice._allocateUninitialized(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __objc2_class ***a3@<X8>)
{
  result = ArraySlice.init(_uninitializedCount:)(a1, a2);
  v6 = *(*(a2 - 1) + 72);
  *a3 = result;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = (v7 + v6 * v8);
  return result;
}

Swift::Void __swiftcall ArraySlice.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = v2[3];
  v6 = *v2;
  v7 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v2);
  *v2 = v6;
  if (!isUniquelyReferenced_nonNull)
  {
    goto LABEL_11;
  }

  v9 = v2[2];
  v10 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
    __break(1u);
    goto LABEL_30;
  }

  v11 = v2[1];
  v12 = type metadata accessor for __ContiguousArrayStorageBase();
  v13 = swift_unknownObjectRetain(v6);
  v14 = swift_dynamicCastClass(v13, v12);
  if (!v14)
  {
    swift_unknownObjectRelease(v6);
    v14 = &_swiftEmptyArrayStorage;
  }

  v15 = *(*(v3 + 16) - 8);
  v16 = v14[2];
  if ((v11 + *(v15 + 72) * v9 + *(v15 + 72) * v10) == (v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v16))
  {
    v17 = v14[3];
    v14;
    v18 = (v17 >> 1) - v16;
    v19 = __OFADD__(v10, v18);
    v10 += v18;
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_30:
    __break(1u);
    return;
  }

  v14;
LABEL_9:
  if (v10 >= a1)
  {
    return;
  }

  v6 = *v2;
LABEL_11:
  v20 = v2[2];
  v21 = v2[3] >> 1;
  v22 = v21 - v20;
  if (__OFSUB__(v21, v20))
  {
    __break(1u);
    goto LABEL_27;
  }

  v23 = v2[1];
  v24 = *(v3 + 16);
  if (v22 > a1)
  {
    a1 = v21 - v20;
  }

  if (!a1)
  {
    v28 = &_swiftEmptyArrayStorage;
    if (v7 >= v20)
    {
      goto LABEL_21;
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = getContiguousArrayStorageType<A>(for:)(v24, v24);
  v26 = *(*(v24 - 1) + 72);
  v27 = *(*(v24 - 1) + 80);
  v28 = swift_allocObject(v25, (((v27 + *(v25 + 48)) & ~v27) + v26 * a1), v27 | *(v25 + 52));
  v29 = _swift_stdlib_malloc_size(v28);
  if (!v26 || ((v30 = v29 - ((v27 + 32) & ~v27), v30 == 0x8000000000000000) ? (v31 = v26 == -1) : (v31 = 0), v31))
  {
LABEL_28:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = v30 / v26;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v24, v24);
  v28[2] = v22;
  v28[3] = (isClassOrObjCExistentialType | (2 * v32));
  if (v7 < v20)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (__OFSUB__(v7, v20))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  UnsafeMutablePointer.initialize(from:count:)((v23 + *(*(v24 - 1) + 72) * v20), v7 - v20, v28 + ((*(*(v24 - 1) + 80) + 32) & ~*(*(v24 - 1) + 80)), v24);
  v34 = _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v28, v20);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  swift_unknownObjectRelease(v6);
  *v2 = v34;
  v2[1] = v36;
  v2[2] = v38;
  v2[3] = v40;
}

char *_SliceBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  swift_unknownObjectRelease(a4);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(*(a8 - 1) + 72);
  if (v13 < 0 || ((v15 = (a5 + v14 * a1), v16 = v14 * v13, v17 = &a3[v16], v18 = &v15[v16], v15 < v17) ? (v19 = v18 > a3) : (v19 = 0), v19))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_arrayInitWithCopy(a3, v15, v13, a8);
  return v17;
}

Swift::Void __swiftcall ArraySlice._copyToNewBuffer(oldCount:)(Swift::Int oldCount)
{
  v6 = v4[1];
  v14[0] = *v4;
  v14[1] = v6;
  v7 = type metadata accessor for _SliceBuffer(0, *(v1 + 16), v2, v3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v7, v8);
  v10 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(oldCount, oldCount + 1, v7, WitnessTable);
  *&v14[0] = v10;
  v11 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v7, WitnessTable);
  v13 = v12;
  _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v14, oldCount, 0, v11, v12, v7, WitnessTable);
  v13;
  v10;
}

Swift::Void __swiftcall ArraySlice._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = v0[3];
  if ((v1 & 1) == 0 || (v2 = *v0, isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v0), *v0 = v2, (isUniquelyReferenced_nonNull & 1) == 0))
  {
    v4 = v0[2];
    if (__OFSUB__(v1 >> 1, v4))
    {
      __break(1u);
    }

    else
    {

      ArraySlice._copyToNewBuffer(oldCount:)((v1 >> 1) - v4);
    }
  }
}

Swift::Void __swiftcall ArraySlice._reserveCapacityAssumingUniqueBuffer(oldCount:)(Swift::Int oldCount)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = (v4 >> 1) - v5;
  if (__OFSUB__(v4 >> 1, v5))
  {
    __break(1u);
LABEL_11:

    ArraySlice._copyToNewBuffer(oldCount:)(v3);
    return;
  }

  v7 = v1;
  v3 = oldCount;
  if (v4)
  {
    v8 = *v2;
    v9 = *(v2 + 8);
    v10 = type metadata accessor for __ContiguousArrayStorageBase();
    v11 = swift_unknownObjectRetain(v8);
    v12 = swift_dynamicCastClass(v11, v10);
    if (!v12)
    {
      swift_unknownObjectRelease(v8);
      v12 = &_swiftEmptyArrayStorage;
    }

    v13 = *(*(v7 + 16) - 8);
    v14 = v12[2];
    if ((v9 + *(v13 + 72) * v5 + *(v13 + 72) * v6) == (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v14))
    {
      v15 = v12[3];
      v12;
      v16 = (v15 >> 1) - v14;
      v17 = __OFADD__(v6, v16);
      v6 += v16;
      if (v17)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v12;
    }
  }

  if (v6 < v3 + 1)
  {
    goto LABEL_11;
  }
}

Swift::Bool __swiftcall _SliceBuffer.isMutableAndUniquelyReferenced()()
{
  if (*(v0 + 24))
  {
    return swift_isUniquelyReferenced_nonNull(*v0);
  }

  else
  {
    return 0;
  }
}

__objc2_class **ArraySlice._appendElementAssumeUniqueAndCapacity(_:newElement:)(__objc2_class **result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24) >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = result - v6 + 1;
  if (__OFSUB__(result + 1, v6))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v8)
  {
    v17 = *(a3 + 16);
    goto LABEL_10;
  }

  v10 = a2;
  v11 = *v3;
  v12 = type metadata accessor for __ContiguousArrayStorageBase();
  v13 = swift_unknownObjectRetain(v11);
  result = swift_dynamicCastClass(v13, v12);
  if (!result)
  {
    swift_unknownObjectRelease(v11);
    result = &_swiftEmptyArrayStorage;
  }

  v14 = result[2];
  v15 = __OFADD__(v14, v8);
  v16 = &v8[v14];
  if (v15)
  {
    goto LABEL_15;
  }

  result[2] = v16;
  result;
  result = &v8[v5];
  if (__OFADD__(v5, v8))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *(a3 + 16);
  _SliceBuffer.endIndex.setter(result);
  a2 = v10;
LABEL_10:
  v18 = *(v17 - 8);
  v19 = *(v18 + 32);
  v20 = *(v3 + 8) + *(v18 + 72) * v4 + *(v18 + 72) * v7;

  return v19(v20, a2, v17);
}

void ArraySlice.append(_:)(uint64_t a1, uint64_t a2)
{
  ArraySlice._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24) >> 1;
  v7 = (v6 - v5);
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
  }

  else
  {
    ArraySlice._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6 - v5);

    ArraySlice._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7, a1, a2);
  }
}

uint64_t ArraySlice.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = v4;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v50 = type metadata accessor for IteratorSequence(0, v11, AssociatedConformanceWitness, v13);
  v14 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v49 - v15;
  v16 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v49 - v20;
  v55 = a1;
  v21 = (*(a4 + 40))(a3, a4);
  ArraySlice.reserveCapacityForAppend(newElementsCount:)(v21);
  v22 = *(v4 + 16);
  v23 = *(v5 + 24) >> 1;
  v24 = v23 - v22;
  if (__OFSUB__(v23, v22))
  {
    __break(1u);
    goto LABEL_13;
  }

  v52 = v11;
  v25 = *(a2 + 16);
  v26 = *(v5 + 8);
  v56 = v5;
  v27 = *(*(v25 - 8) + 72);
  v51 = v25;
  v28 = ArraySlice._getCapacity()();
  v29 = v28 - v24;
  if (__OFSUB__(v28, v24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v29 < 0)
  {
    goto LABEL_14;
  }

  v30 = v26 + v27 * v22 + v27 * v24;
  v31 = v55;
  (*(v16 + 16))(v19, v55, a3);
  v32 = v54;
  v33 = (*(a4 + 64))(v54, v30, v29, a3, a4);
  if (v33 < v21)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v34 = v33;
  result = (*(v16 + 8))(v31, a3);
  v39 = v51;
  v38 = v52;
  if (v34 >= 1)
  {
    if (__OFADD__(v24, v34))
    {
      __break(1u);
      return result;
    }

    type metadata accessor for _SliceBuffer(0, v51, v36, v37);
    _SliceBuffer.count.setter((v24 + v34));
  }

  if (v34 != v29)
  {
    return (*(v53 + 8))(v32, v38);
  }

  v40 = v49;
  (*(v53 + 32))(v49, v32, v38);
  v43 = type metadata accessor for _SliceBuffer(0, v39, v41, v42);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v43, v44);
  v46 = v50;
  v48 = swift_getWitnessTable(protocol conformance descriptor for IteratorSequence<A>, v50, v47);
  return _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(v40, v43, v46, WitnessTable, v48);
}

Swift::Void __swiftcall ArraySlice.reserveCapacityForAppend(newElementsCount:)(Swift::Int newElementsCount)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = ArraySlice._getCapacity()();
  v7 = v4 + newElementsCount;
  if (__OFADD__(v4, newElementsCount))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 < v7)
  {
    if (v6 + 0x4000000000000000 >= 0)
    {
      v8 = 2 * v6;
      if (v8 > v7)
      {
        v7 = v8;
      }

      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_7:

  ArraySlice.reserveCapacity(_:)(v7);
}

uint64_t ArraySlice._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v10 >> 1;
  if (__OFSUB__(v10 >> 1, v9))
  {
    __break(1u);
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (((v10 >> 1) - v9) <= 0)
  {
    goto LABEL_5;
  }

  v12 = v2[1];
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v11 - 1, *v2, v12, v9, v10);
  (*(v6 + 16))(v8, v12 + *(v6 + 72) * (v11 - 1), v5);
  v15 = type metadata accessor for EmptyCollection(0, v5, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v15, v16);
  ArraySlice.replaceSubrange<A>(_:with:)(v11 - 1, v11, v18, a1, v15, WitnessTable);
  (*(v6 + 32))(a2, v8, v5);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

uint64_t ArraySlice.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v8 = *(a2 + 16);
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(a1, *v3, v7, v3[2], v3[3]);
  (*(*(v8 - 8) + 16))(a3, v7 + *(*(v8 - 8) + 72) * a1, v8);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 + 1 < a1)
  {
    goto LABEL_7;
  }

  v11 = type metadata accessor for EmptyCollection(0, v8, v9, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v11, v12);

  return ArraySlice.replaceSubrange<A>(_:with:)(a1, a1 + 1, v13, a2, v11, WitnessTable);
}

uint64_t ArraySlice.insert(_:at:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for CollectionOfOne(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  ArraySlice._checkIndex(_:)(a2);
  (*(*(v7 - 8) + 32))(v10, a1, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v8, v11);
  return ArraySlice.replaceSubrange<A>(_:with:)(a2, a2, v10, a3, v8, WitnessTable);
}

Swift::Void __swiftcall ArraySlice.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (keepingCapacity)
  {
    if (v2[3])
    {
      v3 = v1;
      isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v2);
      v6 = v2[3];
      if (isUniquelyReferenced_nonNull)
      {
        v7 = v2[2];
        v31 = *v2;
        v32 = v7;
        v33 = v6;
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v3, v5);
        RandomAccessCollection<>.indices.getter(v3, WitnessTable, &protocol witness table for Int, v30);
        v9 = v30[0];
        v10 = v30[1];
        v13 = type metadata accessor for EmptyCollection(0, *(v3 + 16), v11, v12);
        v15 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v13, v14);
        ArraySlice.replaceSubrange<A>(_:with:)(v9, v10, v16, v3, v13, v15);
        return;
      }

      v1 = v3;
    }

    v18 = *v2;
    v19 = v2[2];
    v20 = *(v1 + 16);
    v21 = ArraySlice._getCapacity()();
    v22 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, v21, v20);
    v23 = _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v22, v19);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease(v18);
    *v2 = v23;
    v2[1] = v25;
    v2[2] = v27;
    v2[3] = v29;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage + ((*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80));
    swift_unknownObjectRelease(*v2);
    *v2 = &_swiftEmptyArrayStorage;
    v2[1] = v17;
    *(v2 + 1) = xmmword_180672710;
  }
}

__objc2_class **_SliceBuffer.requestNativeBuffer()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for __ContiguousArrayStorageBase();
  v9 = swift_unknownObjectRetain_n(a1, 2);
  v10 = swift_dynamicCastClass(v9, v8);
  if (!v10)
  {
    swift_unknownObjectRelease(a1);
    v10 = &_swiftEmptyArrayStorage;
  }

  v11 = v10[2];
  v10;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 != ((a4 >> 1) - a3))
  {
LABEL_11:
    swift_unknownObjectRelease(a1);
    return 0;
  }

  result = swift_dynamicCastClass(a1, v8);
  if (!result)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

double protocol witness for RangeReplaceableCollection.init() in conformance ArraySlice<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ArraySlice.init()(*(a1 + 16));
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = v3;
  result = 0.0;
  *(a2 + 16) = xmmword_180672710;
  return result;
}

__objc2_class **protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance ArraySlice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = ArraySlice.init(repeating:count:)(a1, a2, *(a3 + 16));
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance ArraySlice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ArraySlice.init<A>(_:)(a1, *(a4 + 16), a2, a3);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection._customRemoveLast(_:) in conformance ArraySlice<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a2, a3);
  RangeReplaceableCollection<>._customRemoveLast(_:)(a1, a2, WitnessTable);
  return 1;
}

uint64_t specialized RangeReplaceableCollection<>._customRemoveLast(_:)(uint64_t a1)
{
  if (__OFSUB__(0, a1))
  {
    __break(1u);
    goto LABEL_6;
  }

  rawBits = v1->_rawBits;
  v2 = v1[1]._rawBits;
  v4 = v1[2]._rawBits;
  v5 = v1[3]._rawBits;
  v13 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(v2, -a1, v1->_rawBits);
  if (v13.is_nil)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v13.value._rawBits;
  if (v13.value._rawBits >> 14 < rawBits >> 14)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5;
  v7._rawBits = rawBits;
  v8._rawBits = v6;
  v9 = _StringGuts.validateScalarRange(_:in:)(v7, v8, rawBits, v2, v4, v5)._rawBits;
  v11 = v10;
  v5;
  v1->_rawBits = v9;
  v1[1]._rawBits = v11;
  v1[2]._rawBits = v4;
  v1[3]._rawBits = v5;
  return 1;
}

{
  if (__OFSUB__(0, a1))
  {
    __break(1u);
    goto LABEL_6;
  }

  rawBits = v1->_rawBits;
  v2 = v1[1]._rawBits;
  v5 = v1[2]._rawBits;
  v4 = v1[3]._rawBits;
  v15 = Substring.index(_:offsetBy:limitedBy:)(v2, -a1, v1->_rawBits);
  if (v15.is_nil)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15.value._rawBits >> 14 < rawBits >> 14)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6._rawBits = v15.value._rawBits;
  v7 = specialized Substring.subscript.getter(rawBits, v6, rawBits, v2, v5, v4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v12;
  v4;
  v1->_rawBits = v7;
  v1[1]._rawBits = v9;
  v1[2]._rawBits = v11;
  v1[3]._rawBits = v13;
  return 1;
}

uint64_t RangeReplaceableCollection<>._customRemoveLast(_:)(uint64_t a1, const char *a2, void (*a3)(char *, uint64_t))
{
  v72 = a3;
  v6 = *(a3 + 1);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v69 = v9;
  v67 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v60 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v13);
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v60 - v16;
  v75 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional(0, v8, v18, v19);
  v60 = *(v20 - 8);
  v61 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - v22;
  v24 = *(v8 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v70 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v60 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v60 - v33;
  v35 = *(v6 + 72);
  v76 = v3;
  v77 = v6;
  v35(a2, v6);
  v36 = __OFSUB__(0, a1);
  v37 = -a1;
  if (v36)
  {
    __break(1u);
    goto LABEL_6;
  }

  v62 = *(v77 + 64);
  v62(a2);
  v38 = *(v72 + 7);
  v73 = a2;
  v38(v32, v37, v29, a2);
  v39 = *(v24 + 8);
  v39(v29, v8);
  v72 = v39;
  v39(v32, v8);
  if ((*(v24 + 48))(v23, 1, v8) == 1)
  {
    (*(v60 + 8))(v23, v61);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = *(v24 + 32);
  v40(v34, v23, v8);
  v41 = v75;
  v42 = v76;
  v43 = v73;
  (*(v75 + 16))(v74, v76, v73);
  v44 = v70;
  (v62)(v43, v77);
  v47 = *(v41 + 8);
  v45 = v41 + 8;
  v46 = v47;
  v47(v42, v43);
  if (((*(AssociatedConformanceWitness + 24))(v44, v34, v8) & 1) == 0)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v75 = v45;
  v48 = v64;
  v40(v64, v44, v8);
  v49 = v69;
  v40(&v48[*(v69 + 48)], v34, v8);
  v51 = v67;
  v50 = v68;
  (*(v67 + 16))(v68, v48, v49);
  v52 = *(v49 + 48);
  AssociatedConformanceWitness = v46;
  v53 = v63;
  v40(v63, v50, v8);
  v54 = &v50[v52];
  v55 = v72;
  v72(v54, v8);
  (*(v51 + 32))(v50, v48, v49);
  v56 = v66;
  v40(&v53[*(v66 + 36)], &v50[*(v49 + 48)], v8);
  v55(v50, v8);
  v57 = v73;
  v58 = v74;
  (*(v77 + 88))(v53, v73);
  (*(v65 + 8))(v53, v56);
  (AssociatedConformanceWitness)(v58, v57);
  return 1;
}

unint64_t specialized RangeReplaceableCollection<>.removeFirst()()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 >> 14 == *v0 >> 14 || (v3 = v0[2], v4 = v0[3], v5._rawBits = *v0, v6 = specialized Collection.first.getter(v5, v0[1], v3, v4), (v6 & 0x100000000) != 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6;
  v4;
  v8._rawBits = Substring.UnicodeScalarView.index(after:)(v1)._rawBits;
  if (v2 >> 14 < v8._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = v8._rawBits;
  v4;
  v4;
  v10._rawBits = rawBits;
  v11._rawBits = v2;
  v12 = _StringGuts.validateScalarRange(_:in:)(v10, v11, v1, v2, v3, v4)._rawBits;
  v14 = v13;
  v4;
  *v0 = v12;
  v0[1] = v14;
  v0[2] = v3;
  v0[3] = v4;
  return v7;
}

uint64_t specialized RangeReplaceableCollection<>.removeFirst()()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 >> 14 == *v0 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = v0[2];
  v3 = v0[3];
  v5 = Substring.subscript.getter(*v0, *v0, v0[1], v4, v3);
  v3;
  v6._rawBits = Substring.index(after:)(v1)._rawBits;
  if (v2 >> 14 < v6._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = v6._rawBits;
  v3;
  v8._rawBits = v2;
  v9 = specialized Substring.subscript.getter(rawBits, v8, v1, v2, v4, v3);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v14;
  v3;
  *v0 = v9;
  v0[1] = v11;
  v0[2] = v13;
  v0[3] = v15;
  return v5;
}

uint64_t RangeReplaceableCollection<>.removeFirst()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v67 = a3;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v58 = v9;
  v64 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v53 - v13;
  v69 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v53 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v20);
  v60 = *(v21 - 8);
  v61 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v59 = &v53 - v23;
  v70 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(255, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v27 = v26;
  v30 = type metadata accessor for Optional(0, v26, v28, v29);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v53 - v31;
  if (((*(v6 + 104))(a1, v6) & 1) != 0 || (v57 = v8, Collection.first.getter(a1, v6, v32), v33 = *(v27 - 8), (*(v33 + 48))(v32, 1, v27) == 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v33 + 32))(v67, v32, v27);
  v34 = *(v70 + 16);
  v67 = v25;
  v34(v25, v4, a1);
  (*(v6 + 64))(a1, v6);
  v35 = v66;
  (*(v6 + 184))(v18, a1, v6);
  v36 = v69;
  v37 = v57;
  v56 = *(v69 + 1);
  v56(v18, v57);
  v38 = v68;
  (*(v6 + 72))(a1, v6);
  if (((*(AssociatedConformanceWitness + 3))(v35, v38, v37) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = *(v70 + 8);
  v70 += 8;
  AssociatedConformanceWitness = v39;
  v54 = v6;
  v55 = a1;
  v39(v4, a1);
  v40 = *(v36 + 4);
  v41 = v63;
  v40(v63, v35, v37);
  v42 = v58;
  v40(&v41[*(v58 + 48)], v38, v37);
  v43 = v64;
  v44 = v62;
  (*(v64 + 16))(v62, v41, v42);
  v69 = v4;
  v45 = *(v42 + 48);
  v46 = v59;
  v40(v59, v44, v37);
  v47 = &v44[v45];
  v48 = v56;
  v56(v47, v37);
  (*(v43 + 32))(v44, v41, v42);
  v49 = v61;
  v40(&v46[*(v61 + 36)], &v44[*(v42 + 48)], v37);
  v48(v44, v37);
  v50 = v55;
  v51 = v67;
  (*(v54 + 88))(v46, v55);
  (*(v60 + 8))(v46, v49);
  return AssociatedConformanceWitness(v51, v50);
}

void specialized RangeReplaceableCollection<>.removeFirst(_:)(Swift::Int offsetBy)
{
  if (offsetBy)
  {
    if (offsetBy < 0 || (rawBits = v1->_rawBits, v3 = v1[1]._rawBits, v4 = v1[2]._rawBits, v5 = v1[3]._rawBits, v12 = Substring.UnicodeScalarView.index(_:offsetBy:limitedBy:)(v1->_rawBits, offsetBy, v3), v12.is_nil))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = v12.value._rawBits;
    if (v3 >> 14 < v12.value._rawBits >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5;
    v7._rawBits = v6;
    v8._rawBits = v3;
    v9 = _StringGuts.validateScalarRange(_:in:)(v7, v8, rawBits, v3, v4, v5)._rawBits;
    v11 = v10;
    v5;
    v1->_rawBits = v9;
    v1[1]._rawBits = v11;
    v1[2]._rawBits = v4;
    v1[3]._rawBits = v5;
  }
}

{
  if (offsetBy)
  {
    if (offsetBy < 0 || (rawBits = v1->_rawBits, v3 = v1[1]._rawBits, v5 = v1[2]._rawBits, v4 = v1[3]._rawBits, *&v6 = Substring.index(_:offsetBy:limitedBy:)(v1->_rawBits, offsetBy, v3), (BYTE8(v6) & 1) != 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v3 >> 14 < v6 >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *(&v6 + 1) = v3;
    v7 = specialized Substring.subscript.getter(v6, *(&v6 + 8), rawBits, v3, v5, v4);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v12;
    v4;
    v1->_rawBits = v7;
    v1[1]._rawBits = v9;
    v1[2]._rawBits = v11;
    v1[3]._rawBits = v13;
  }
}

uint64_t RangeReplaceableCollection<>.removeFirst(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v71 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v60 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v15);
  v70 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v60 - v18;
  v78 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Optional(0, v9, v20, v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v60 - v24;
  v75 = *(v9 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v60 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v60 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  v73 = &v60 - v36;
  if (!a1)
  {
    return result;
  }

  if (a1 < 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v35;
  v61 = result;
  v67 = v34;
  v64 = v16;
  v65 = v11;
  (*(v7 + 64))(a2, v7);
  v37 = v4;
  v66 = *(v7 + 72);
  v66(a2, v7);
  (*(v7 + 144))(v32, a1, v29, a2, v7);
  v76 = v7;
  v38 = v75;
  v40 = v75 + 8;
  v39 = *(v75 + 1);
  v39(v29, v9);
  v62 = v40;
  v63 = v39;
  v39(v32, v9);
  v41 = v25;
  if ((*(v38 + 6))(v25, 1, v9) == 1)
  {
    (*(v60 + 8))(v25, v61);
    goto LABEL_7;
  }

  v42 = *(v38 + 4);
  v43 = v73;
  v42(v73, v41, v9);
  v44 = v78;
  (*(v78 + 16))(v77, v4, a2);
  v45 = v67;
  v66(a2, v76);
  v48 = *(v44 + 8);
  v46 = v44 + 8;
  v47 = v48;
  (v48)(v37, a2);
  if (((*(AssociatedConformanceWitness + 24))(v43, v45, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v78 = v46;
  v49 = v69;
  AssociatedConformanceWitness = v37;
  v75 = a2;
  v42(v69, v43, v9);
  v50 = v65;
  v42(&v49[*(v65 + 48)], v45, v9);
  v51 = v71;
  v52 = v72;
  (*(v71 + 16))(v72, v49, v50);
  v53 = *(v50 + 48);
  v54 = v68;
  v42(v68, v52, v9);
  v55 = &v52[v53];
  v73 = v47;
  v56 = v63;
  v63(v55, v9);
  (*(v51 + 32))(v52, v49, v50);
  v57 = v64;
  v42(&v54[*(v64 + 36)], &v52[*(v50 + 48)], v9);
  v56(v52, v9);
  v58 = v77;
  v59 = v75;
  (*(v76 + 88))(v54, v75);
  (*(v70 + 8))(v54, v57);
  return (v73)(v58, v59);
}

uint64_t ArraySlice.customMirror.getter@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v11 = type metadata accessor for ArraySlice(0, a5, a3, a4);
  v33[0] = 0;
  v33[1] = 0;
  swift_unknownObjectRetain(a1);
  v12 = static Mirror._superclassIterator<A>(_:_:)(v36, v33, v11);
  v31 = v13;
  v32 = v12;
  v14 = swift_allocObject(&unk_1EEEADD18, 0x28, 7uLL);
  v14[2] = v11;
  v14[3] = v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v11, v15);
  v14[4] = WitnessTable;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v19 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v11, v18);
  v20 = type metadata accessor for LazyMapSequence(255, v11, v17, v19);
  v35 = WitnessTable;
  v21 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v20, &v35);
  v23 = type metadata accessor for _CollectionBox(0, v20, v21, v22);
  v24 = swift_allocObject(v23, 0x60, 7uLL);
  v24[6] = a1;
  v24[7] = a2;
  v24[8] = a3;
  v24[9] = a4;
  v24[10] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v24[11] = v14;
  v25 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v26 = swift_allocObject(v25, 0x18, 7uLL);
  v26[2] = a3;
  v27 = swift_allocObject(v25, 0x18, 7uLL);
  v27[2] = a4 >> 1;
  v24[2] = v26;
  v24[3] = &protocol witness table for _IndexBox<A>;
  v24[4] = v27;
  v24[5] = &protocol witness table for _IndexBox<A>;
  v34[0] = a1;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = a4;
  swift_unknownObjectRetain(a1);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v33, v34, v11, v28, 6uLL);
  v30 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  *a6 = v11;
  *(a6 + 8) = v24;
  *(a6 + 16) = 5;
  *(a6 + 24) = v32;
  *(a6 + 32) = v31;
  *(a6 + 40) = v30;
  return result;
}

uint64_t ArraySlice.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v111 = a1;
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v101 - v13;
  0xE000000000000000;
  v15 = 91;
  v16 = 0xE100000000000000;
  v116 = 91;
  v117 = 0xE100000000000000;
  v110 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
LABEL_63:
    v37 = HIBYTE(v16) & 0xF;
    v27 = v15 & 0xFFFFFFFFFFFFLL;
    if ((v16 & 0x2000000000000000) != 0)
    {
      v65 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v65 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v65 && (v15 & ~v16 & 0x2000000000000000) == 0)
    {
      v16;
      return 93;
    }

    if ((v16 & 0x2000000000000000) != 0 && v37 != 15)
    {
      if (v37 < 8)
      {
        v15 = ((-255 << (8 * (HIBYTE(v16) & 7u))) - 1) & v15 | (93 << (8 * (HIBYTE(v16) & 7u)));
      }

      goto LABEL_72;
    }

    0xE100000000000000;
    if ((v16 & 0x1000000000000000) != 0)
    {
      goto LABEL_125;
    }

    v36 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (!v36)
    {
      goto LABEL_75;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v112 = v12;
  v109 = v9 + 16;
  v17 = (v9 + 32);
  v15 = 1;
  v107 = xmmword_18071DB30;
  v101 = xmmword_18071DB40;
  v16 = a3;
  v105 = a4;
  v104 = a3;
  v103 = a2;
  v106 = v9;
  v108 = v14;
  v102 = (v9 + 32);
  while (1)
  {
    specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v16, v111, a2, a3, a4);
    (*(v9 + 16))(v14, a2 + *(v9 + 72) * v16, a5);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_123;
    }

    v113 = v16 + 1;
    v18 = v9;
    v23 = v14;
    v24 = *v17;
    v19 = v112;
    (*v17)(v112, v23, a5);
    if (v15)
    {
      goto LABEL_6;
    }

    v25 = v116;
    v15 = v117;
    v26 = HIBYTE(v117) & 0xF;
    v27 = v116 & 0xFFFFFFFFFFFFLL;
    if ((v117 & 0x2000000000000000) != 0)
    {
      v28 = HIBYTE(v117) & 0xF;
    }

    else
    {
      v28 = v116 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28 && (v116 & ~v117 & 0x2000000000000000) == 0)
    {
      v117;
      v116 = 8236;
      v117 = 0xE200000000000000;
      a4 = v105;
      a3 = v104;
LABEL_50:
      a2 = v103;
      v18 = v106;
      goto LABEL_5;
    }

    if ((v117 & 0x2000000000000000) != 0 && v26 <= 0xD)
    {
      v29 = 8 * (HIBYTE(v117) & 7);
      v30 = (-255 << v29) - 1;
      v31 = 44 << v29;
      v32 = v26 + 1;
      if (v26 >= 8)
      {
        v34 = v30 & v117 | v31;
        v33 = 8 * (v32 & 7);
        a3 = v104;
LABEL_44:
        v56 = ((-255 << v33) - 1) & v34 | (32 << v33);
      }

      else
      {
        v25 = (v30 & v116 | v31);
        a3 = v104;
        if (v26 == 7)
        {
          v33 = 0;
          v34 = v117;
          goto LABEL_44;
        }

        v25 = (((-255 << (8 * (v32 & 7u))) - 1) & *&v25 | (32 << (8 * (v32 & 7u))));
        v56 = v117;
      }

      v117;
      0xE200000000000000;
      v57 = 0xE000000000000000;
      if (*&v25 & 0x8080808080808080 | v56 & 0x80808080808080)
      {
        v57 = 0xA000000000000000;
      }

      v116 = v25;
      v117 = (v57 & 0xFF00000000000000 | (v26 << 56) | v56 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      a4 = v105;
      goto LABEL_50;
    }

    0xE200000000000000;
    if ((v15 & 0x1000000000000000) != 0)
    {
      break;
    }

    v36 = __OFADD__(v28, 2);
    v37 = v28 + 2;
    if (v36)
    {
      goto LABEL_124;
    }

LABEL_21:
    if ((*&v25 & ~v15 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL))
    {
      v38 = _StringGuts.nativeUnusedCapacity.getter(*&v25, v15);
      v39 = v106;
      if (v40)
      {
        goto LABEL_134;
      }

      if (v37 <= 15)
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v38 < 2)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v39 = v106;
      if (v37 <= 15)
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
LABEL_33:
          v42 = v15;
        }

        else
        {
LABEL_27:
          if ((v15 & 0x1000000000000000) != 0)
          {
            v25 = _StringGuts._foreignConvertedToSmall()(*&v25, v15);
            v42 = v58;
          }

          else
          {
            if ((*&v25 & 0x1000000000000000) != 0)
            {
              v41 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v41 = _StringObject.sharedUTF8.getter(*&v25, v15);
              v27 = v62;
            }

            closure #1 in _StringGuts._convertedToSmall()(v41, v27, &v114, v35);
            v42 = *(&v114 + 1);
            v25 = v114;
          }
        }

        v43 = 0xE200000000000000;
        0xE200000000000000;
        v44._rawBits = 131073;
        v45._rawBits = 1;
        v46._rawBits = _StringGuts.validateScalarRange(_:)(v45, v44, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v46._rawBits < 0x10000)
        {
          v46._rawBits |= 3;
        }

        if (v46._rawBits >> 16 || (v49 = 8236, (v47._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v49 = specialized static String._copying(_:)(v46._rawBits, v47._rawBits, 0x202CuLL, 0xE200000000000000);
          v43 = v50;
          0xE200000000000000;
        }

        if ((v43 & 0x2000000000000000) != 0)
        {
          v43;
        }

        else if ((v43 & 0x1000000000000000) != 0)
        {
          v49 = _StringGuts._foreignConvertedToSmall()(v49, v43);
          v64 = v63;
          v43;
          v43 = v64;
        }

        else
        {
          if ((v49 & 0x1000000000000000) != 0)
          {
            v60 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v61 = v49 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v60 = _StringObject.sharedUTF8.getter(v49, v43);
          }

          closure #1 in _StringGuts._convertedToSmall()(v60, v61, &v114, v48);
          v43;
          v43 = *(&v114 + 1);
          v49 = v114;
        }

        v18 = v39;
        v51 = specialized _SmallString.init(_:appending:)(*&v25, v42, v49, v43);
        if (v53)
        {
          goto LABEL_134;
        }

        v54 = v51;
        v55 = v52;
        v15;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v116 = v54;
        v117 = v55;
        goto LABEL_4;
      }
    }

    v18 = v39;
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v37, 2);
    v114 = v101;
    0xE200000000000000;
    _StringGuts.appendInPlace(_:isASCII:)(&v114, 2uLL, 1);
    0xE200000000000000;
LABEL_4:
    a4 = v105;
    a3 = v104;
    a2 = v103;
LABEL_5:
    v19 = v112;
    v17 = v102;
LABEL_6:
    v20 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v20, v115);
    *(inited + 1) = v107;
    inited[7] = a5;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v24(boxed_opaque_existential_0Tm, v19, a5);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v116);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v15 = 0;
    ++v16;
    v14 = v108;
    v9 = v18;
    if (v113 == v110)
    {
      v15 = v116;
      v16 = v117;
      goto LABEL_63;
    }
  }

  v59 = String.UTF8View._foreignCount()();
  v37 = v59 + 2;
  if (!__OFADD__(v59, 2))
  {
    goto LABEL_21;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  v94 = String.UTF8View._foreignCount()();
  v67 = v94 + 1;
  if (__OFADD__(v94, 1))
  {
    goto LABEL_127;
  }

LABEL_75:
  v68 = v15 & ~v16;
  if ((v68 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v16 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v67 > 15)
    {
      goto LABEL_86;
    }

    if ((v16 & 0x2000000000000000) != 0)
    {
      goto LABEL_102;
    }

LABEL_81:
    if ((v16 & 0x1000000000000000) == 0)
    {
      if ((v15 & 0x1000000000000000) == 0)
      {
        goto LABEL_133;
      }

      v71 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_84:
      closure #1 in _StringGuts._convertedToSmall()(v71, v27, &v114, v66);
      v67 = *(&v114 + 1);
      v15 = v114;
      goto LABEL_103;
    }

LABEL_123:
    v15 = _StringGuts._foreignConvertedToSmall()(v15, v16);
    v67 = v93;
    goto LABEL_103;
  }

  v69 = _StringGuts.nativeUnusedCapacity.getter(v15, v16);
  if (v70)
  {
    goto LABEL_134;
  }

  if (v67 > 15)
  {
    goto LABEL_86;
  }

  if ((v16 & 0x2000000000000000) == 0)
  {
    if (v69 < 1)
    {
      goto LABEL_81;
    }

LABEL_86:
    v72 = v68 & 0x2000000000000000;
    v73 = _StringGuts.nativeUnusedCapacity.getter(v15, v16);
    if ((v74 & 1) == 0 && v73 > 0)
    {
      if (v72 && swift_isUniquelyReferenced_nonNull_native(v16 & 0xFFFFFFFFFFFFFFFLL))
      {
LABEL_100:
        v114 = xmmword_18071DB50;
        closure #1 in _StringGuts.append(_:)(&v114, 1uLL, &v116, 1);
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        return v116;
      }

LABEL_99:
      _StringGuts.grow(_:)(v67);
      goto LABEL_100;
    }

    if (v72)
    {
      swift_isUniquelyReferenced_nonNull_native(v16 & 0xFFFFFFFFFFFFFFFLL);
    }

    v75 = _StringGuts.nativeCapacity.getter(v15, v16);
    if (v76)
    {
      v77 = 0;
    }

    else
    {
      v77 = v75;
    }

    if (v77 + 0x4000000000000000 >= 0)
    {
      v78 = 2 * v77;
      if (v78 > v67)
      {
        v67 = v78;
      }

      goto LABEL_99;
    }

    __break(1u);
LABEL_133:
    v71 = _StringObject.sharedUTF8.getter(v15, v16);
    v27 = v98;
    goto LABEL_84;
  }

LABEL_102:
  v67 = v16;
LABEL_103:
  v27 = 0xE100000000000000;
  0xE100000000000000;
  v37 = 93;
  v79._rawBits = 1;
  v80._rawBits = 65537;
  v81._rawBits = _StringGuts.validateScalarRange(_:)(v79, v80, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v81._rawBits < 0x10000)
  {
    v81._rawBits |= 3;
  }

  if (v81._rawBits >> 16 || (v82._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v37 = specialized static String._copying(_:)(v81._rawBits, v82._rawBits, 0x5DuLL, 0xE100000000000000);
    v27 = v83;
    0xE100000000000000;
  }

  if ((v27 & 0x2000000000000000) != 0)
  {
    v27;
    goto LABEL_110;
  }

LABEL_128:
  v95 = v15;
  if ((v27 & 0x1000000000000000) != 0)
  {
    v37 = _StringGuts._foreignConvertedToSmall()(v37, v27);
    v100 = v99;
    v27;
    v27 = v100;
    v15 = v95;
  }

  else
  {
    if ((v37 & 0x1000000000000000) != 0)
    {
      v96 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v97 = v37 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = _StringObject.sharedUTF8.getter(v37, v27);
    }

    closure #1 in _StringGuts._convertedToSmall()(v96, v97, &v114, v66);
    v27;
    v27 = *(&v114 + 1);
    v37 = v114;
  }

LABEL_110:
  v84 = HIBYTE(v67) & 0xF;
  v85 = HIBYTE(v27) & 0xF;
  if (v85 + v84 > 0xF)
  {
LABEL_134:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  0xE100000000000000;
  if (v85)
  {
    v86 = 0;
    v87 = 0;
    v88 = 8 * v84;
    do
    {
      v89 = v27 >> (v86 & 0x38);
      if (v87 < 8)
      {
        v89 = v37 >> v86;
      }

      v90 = (v89 << (v88 & 0x38)) | ((-255 << (v88 & 0x38)) - 1) & v67;
      v91 = (v89 << v88) | ((-255 << v88) - 1) & v15;
      if (v84 <= 7)
      {
        v15 = v91;
      }

      else
      {
        v67 = v90;
      }

      ++v84;
      v88 += 8;
      v86 += 8;
      ++v87;
    }

    while (8 * v85 != v86);
  }

LABEL_72:
  v16;
  0xE100000000000000;
  return v15;
}

uint64_t ArraySlice.debugDescription.getter(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a5;
  v177 = a4;
  v184 = a1;
  v185 = a2;
  v186 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v179 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v183 = &v174 - v10;
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ArraySlice", 0xAuLL, 1);
  v12 = v11;
  v13 = *(&v11 + 1);
  v191 = 0;
  v192 = 0xE000000000000000;
  v14 = _StringGuts.init(_initialCapacity:)(4);
  v16 = v14;
  v17 = v15;
  *&v190 = v14;
  *(&v190 + 1) = v15;
  v18 = HIBYTE(v15) & 0xF;
  v19 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v20 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v178 = a3;
  if (!v20 && (v14 & ~v15 & 0x2000000000000000) == 0)
  {
    v15;
    v16 = 0;
    v30 = 0xE000000000000000;
    *&v190 = 0;
LABEL_21:
    *(&v190 + 1) = v30;
    goto LABEL_36;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    v15;
    0xE000000000000000;
    v29 = 0xA000000000000000;
    if (!(v17 & 0x80808080808080 | *&v16 & 0x8080808080808080))
    {
      v29 = 0xE000000000000000;
    }

    v30 = (v29 & 0xFF00000000000000 | (v18 << 56) | v17 & 0xFFFFFFFFFFFFFFLL);
    *&v190 = v16;
    goto LABEL_21;
  }

  0xE000000000000000;
  v22 = v19;
  if ((v17 & 0x1000000000000000) != 0)
  {
    v22 = String.UTF8View._foreignCount()();
    if ((*&v16 & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((*&v16 & 0x2000000000000000) == 0)
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v17 & 0xFFFFFFFFFFFFFFFLL))
  {
    v23 = _StringGuts.nativeUnusedCapacity.getter(*&v16, v17);
    if (v24)
    {
      goto LABEL_233;
    }

    if (v22 <= 15 && (v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_35:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v22, 0);
    v187 = 0;
    v188 = 0;
    closure #1 in _StringGuts.append(_:)(&v187, 0, &v190, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v30 = *(&v190 + 8);
    v16 = v190;
    goto LABEL_36;
  }

LABEL_34:
  if (v22 > 15)
  {
    goto LABEL_35;
  }

LABEL_13:
  if ((v17 & 0x1000000000000000) != 0)
  {
    v26 = _StringGuts._foreignConvertedToSmall()(*&v16, v17);
    v27 = v31;
  }

  else
  {
    if ((*&v16 & 0x1000000000000000) != 0)
    {
      v25 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = _StringObject.sharedUTF8.getter(*&v16, v17);
      v19 = v163;
    }

    closure #1 in _StringGuts._convertedToSmall()(v25, v19, &v187, v21);
    v26 = v187;
    v27 = v188;
  }

  v32 = 0xE000000000000000;
  0xE000000000000000;
  v33._rawBits = 1;
  v34._rawBits = 1;
  v35._rawBits = _StringGuts.validateScalarRange(_:)(v33, v34, 0, 0xE000000000000000)._rawBits;
  if (v35._rawBits < 0x10000)
  {
    v35._rawBits |= 3;
  }

  if (v35._rawBits >> 16 || v36._rawBits >= 0x10000)
  {
    v38 = specialized static String._copying(_:)(v35._rawBits, v36._rawBits, 0, 0xE000000000000000);
    v32 = v39;
    0xE000000000000000;
  }

  else
  {
    v38 = 0;
  }

  if ((v32 & 0x2000000000000000) != 0)
  {
    v32;
  }

  else if ((v32 & 0x1000000000000000) != 0)
  {
    v38 = _StringGuts._foreignConvertedToSmall()(*&v38, v32);
    v171 = v170;
    v32;
    v32 = v171;
  }

  else
  {
    if ((*&v38 & 0x1000000000000000) != 0)
    {
      v159 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v160 = *&v38 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v159 = _StringObject.sharedUTF8.getter(*&v38, v32);
    }

    closure #1 in _StringGuts._convertedToSmall()(v159, v160, &v187, v37);
    v32;
    v38 = v187;
    v32 = v188;
  }

  v40 = specialized _SmallString.init(_:appending:)(*&v26, v27, *&v38, v32);
  if (v42)
  {
    goto LABEL_233;
  }

  v16 = v40;
  v30 = v41;
  v17;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  *&v190 = v16;
  *(&v190 + 1) = v30;
  a3 = v178;
LABEL_36:
  v43 = HIBYTE(*&v30) & 0xFLL;
  v44 = *&v16 & 0xFFFFFFFFFFFFLL;
  if ((*&v30 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(*&v30) & 0xFLL;
  }

  else
  {
    v45 = *&v16 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v179;
  if (!v45 && (*&v16 & ~*&v30 & 0x2000000000000000) == 0)
  {
    *(&v11 + 1);
    *&v30;
    v190 = v11;
    goto LABEL_98;
  }

  LODWORD(v5) = (*(&v11 + 1) & 0x2000000000000000) == 0;
  v47 = HIBYTE(*(&v11 + 1)) & 0xFLL;
  if ((*&v30 & 0x2000000000000000) == 0)
  {
    v48 = v11 & 0xFFFFFFFFFFFFLL;
    v46 = (HIBYTE(*(&v11 + 1)) & 0xFLL);
    if ((*(&v11 + 1) & 0x2000000000000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_46:
    v46 = v48;
    goto LABEL_47;
  }

  if ((*(&v11 + 1) & 0x2000000000000000) == 0)
  {
    v48 = v11 & 0xFFFFFFFFFFFFLL;
    LODWORD(v5) = 1;
    goto LABEL_46;
  }

  v65 = v43 + v47;
  if (v43 + v47 < 0x10)
  {
    if (v47)
    {
      v72 = 0;
      v73 = 0;
      v74 = 8 * v43;
      v75 = 8 * v47;
      v76 = v30;
      do
      {
        v77 = *(&v11 + 1) >> (v72 & 0x38);
        if (v73 < 8)
        {
          v77 = v11 >> v72;
        }

        v78 = (v77 << (v74 & 0x38)) | ((-255 << (v74 & 0x38)) - 1) & v76;
        v79 = (v77 << v74) | ((-255 << v74) - 1) & *&v16;
        if (v43 <= 7)
        {
          v16 = v79;
        }

        else
        {
          v76 = v78;
        }

        ++v43;
        v74 += 8;
        v72 += 8;
        ++v73;
      }

      while (v75 != v72);
    }

    else
    {
      v76 = v30;
    }

    *&v30;
    v80 = 0xA000000000000000;
    if (!(*&v16 & 0x8080808080808080 | v76 & 0x80808080808080))
    {
      v80 = 0xE000000000000000;
    }

    *&v190 = v16;
    *(&v190 + 1) = v80 & 0xFF00000000000000 | (v65 << 56) | v76 & 0xFFFFFFFFFFFFFFLL;
    a3 = v178;
    goto LABEL_98;
  }

  LODWORD(v5) = 0;
  v48 = v11 & 0xFFFFFFFFFFFFLL;
  v46 = (HIBYTE(*(&v11 + 1)) & 0xFLL);
LABEL_47:
  v181 = *&v16 & 0xFFFFFFFFFFFFLL;
  v182 = v48;
  a3 = v46;
  v44 = HIBYTE(*(&v11 + 1)) & 0xFLL;
  if ((*(&v11 + 1) & 0x1000000000000000) != 0)
  {
    goto LABEL_206;
  }

  if ((*&v30 & 0x1000000000000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_210:
  v155 = String.UTF8View._foreignCount()();
  v50 = v155 + a3;
  if (__OFADD__(v155, a3))
  {
    goto LABEL_212;
  }

LABEL_50:
  if ((*&v16 & ~*&v30 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(*&v30 & 0xFFFFFFFFFFFFFFFLL))
  {
    v51 = _StringGuts.nativeUnusedCapacity.getter(*&v16, *&v30);
    if (v52)
    {
      goto LABEL_233;
    }

    if (v50 > 15)
    {
      goto LABEL_61;
    }

    if ((*&v30 & 0x2000000000000000) == 0)
    {
      if (v51 < a3)
      {
        goto LABEL_56;
      }

LABEL_61:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v50, a3);
      if ((v13 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v12, v13, 0, *&v46);
        a3 = v178;
      }

      else
      {
        a3 = v178;
        if (v5)
        {
          if ((v12 & 0x1000000000000000) != 0)
          {
            v54 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v55 = v182;
            v56 = v182;
            v46 = v179;
          }

          else
          {
            v164 = _StringObject.sharedUTF8.getter(v12, v13);
            if (v165 < v182)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v54 = v164;
            v56 = v165;
            a3 = v178;
            v46 = v179;
            v55 = v182;
          }

          v57 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v55, v54, v56);
          closure #1 in _StringGuts.append(_:)(v57, v58, &v190, v12 < 0);
          goto LABEL_98;
        }

        v187 = v12;
        v188 = v13 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v187, v44, &v190, (v13 & 0x4000000000000000) != 0);
      }

      v46 = v179;
      goto LABEL_98;
    }

LABEL_67:
    v44 = v30;
LABEL_68:
    a3 = v178;
    goto LABEL_69;
  }

  if (v50 > 15)
  {
    goto LABEL_61;
  }

  if ((*&v30 & 0x2000000000000000) != 0)
  {
    goto LABEL_67;
  }

LABEL_56:
  if ((*&v30 & 0x1000000000000000) != 0)
  {
    v16 = _StringGuts._foreignConvertedToSmall()(*&v16, *&v30);
    v44 = v148;
    goto LABEL_68;
  }

  a3 = v178;
  if ((*&v16 & 0x1000000000000000) != 0)
  {
    v53 = ((*&v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v53 = _StringObject.sharedUTF8.getter(*&v16, *&v30);
    v181 = v166;
  }

  closure #1 in _StringGuts._convertedToSmall()(v53, v181, &v187, v28);
  v16 = v187;
  v44 = v188;
LABEL_69:
  v13;
  v59._rawBits = 1;
  v60._rawBits = (*&v46 << 16) | 1;
  v61._rawBits = _StringGuts.validateScalarRange(_:)(v59, v60, v12, v13)._rawBits;
  if (v61._rawBits < 0x10000)
  {
    v61._rawBits |= 3;
  }

  if (v61._rawBits >> 16 || v62._rawBits >> 16 != *&v46)
  {
    v12 = specialized static String._copying(_:)(v61._rawBits, v62._rawBits, v12, v13);
    v64 = v66;
    v13;
  }

  else
  {
    v64 = v13;
  }

  v46 = v179;
  if ((v64 & 0x2000000000000000) == 0)
  {
    goto LABEL_216;
  }

  v64;
LABEL_80:
  v67 = specialized _SmallString.init(_:appending:)(*&v16, v44, v12, v64);
  if (v69)
  {
    goto LABEL_233;
  }

  v70 = v67;
  v71 = v68;
  *&v30;
  *&v190 = v70;
  *(&v190 + 1) = v71;
LABEL_98:
  v81 = *(&v190 + 1);
  v82 = HIBYTE(*(&v190 + 1)) & 0xFLL;
  if ((*(&v190 + 1) & 0x2000000000000000) == 0)
  {
    v82 = v190 & 0xFFFFFFFFFFFFLL;
  }

  if (v82 || (v190 & ~*(&v190 + 1) & 0x2000000000000000) != 0)
  {
    if ((*(&v190 + 1) & 0x2000000000000000) != 0 && (v83 = specialized _SmallString.init(_:appending:)(v190, *(&v190 + 1), 0x5B28uLL, 0xE200000000000000), (v85 & 1) == 0))
    {
      v30 = v83;
      v16 = v84;
      v81;
      0xE200000000000000;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(23336, 0xE200000000000000, 0, 2, v86, v87, v88, v89, v90, v91, v92, v93);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v16 = *(&v190 + 8);
      v30 = v190;
    }
  }

  else
  {
    *(&v190 + 1);
    v16 = 0xE200000000000000;
    v30 = 23336;
  }

  0xE000000000000000;
  v191 = v30;
  v192 = v16;
  v45 = v177;
  v182 = v177 >> 1;
  if (v177 >> 1 != a3)
  {
    v175 = v13;
    v181 = v186 + 16;
    v12 = v186 + 32;
    v16 = 1;
    v180 = xmmword_18071DB30;
    v176 = xmmword_18071DB40;
    v30 = a3;
    while (1)
    {
      v97 = v185;
      specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(*&v30, v184, v185, a3, v45);
      v98 = v97 + *(v186 + 72) * *&v30;
      v44 = v183;
      (*(v186 + 16))(v183, v98, v6);
      v13 = *&v30 + 1;
      if (__OFADD__(*&v30, 1))
      {
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        v150._rawBits = (*&v46 << 16) | 1;
        v151._rawBits = 1;
        v152._rawBits = _StringGuts.validateScalarRange(_:)(v151, v150, v12, v13)._rawBits;
        *&v176 = v153;
        *&v180 = v12;
        if (v152._rawBits >= 0x10000)
        {
          rawBits = v152._rawBits;
        }

        else
        {
          rawBits = v152._rawBits | 3;
        }

        v13;
        v12 = v180;
        a3 = String.UTF8View.distance(from:to:)(rawBits, v176);
        v13;
        if ((*&v30 & 0x1000000000000000) != 0)
        {
          goto LABEL_210;
        }

LABEL_49:
        v49 = __OFADD__(v45, a3);
        v50 = v45 + a3;
        if (!v49)
        {
          goto LABEL_50;
        }

LABEL_212:
        __break(1u);
LABEL_213:
        v156 = String.UTF8View._foreignCount()();
        v64 = v156 + 2;
        if (!__OFADD__(v156, 2))
        {
          goto LABEL_177;
        }

LABEL_215:
        __break(1u);
LABEL_216:
        if ((v64 & 0x1000000000000000) != 0)
        {
          v12 = _StringGuts._foreignConvertedToSmall()(v12, v64);
          v169 = v168;
          v64;
          v64 = v169;
          a3 = v178;
        }

        else
        {
          if ((v12 & 0x1000000000000000) != 0)
          {
            v157 = ((v64 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v158 = v12 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v157 = _StringObject.sharedUTF8.getter(v12, v64);
          }

          closure #1 in _StringGuts._convertedToSmall()(v157, v158, &v187, v63);
          v64;
          v12 = v187;
          v64 = v188;
        }

        goto LABEL_80;
      }

      v5 = *v12;
      (*v12)(v46, v44, v6);
      if ((v16.i8[0] & 1) == 0)
      {
        break;
      }

LABEL_112:
      v94 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
      inited = swift_initStackObject(v94, v189);
      *(inited + 1) = v180;
      inited[7] = v6;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v5(boxed_opaque_existential_0Tm, *&v46, v6);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v191);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v16 = 0;
      ++*&v30;
      if (v13 == v182)
      {
        v30 = v191;
        v16 = v192;
        v13 = v175;
        goto LABEL_165;
      }
    }

    v46 = v191;
    v16 = v192;
    v44 = HIBYTE(v192) & 0xF;
    v45 = v191 & 0xFFFFFFFFFFFFLL;
    if ((v192 & 0x2000000000000000) != 0)
    {
      v99 = HIBYTE(v192) & 0xF;
    }

    else
    {
      v99 = v191 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99 && (v191 & ~v192 & 0x2000000000000000) == 0)
    {
      v192;
      v191 = 8236;
      v192 = 0xE200000000000000;
      goto LABEL_110;
    }

    if ((v192 & 0x2000000000000000) != 0 && v44 <= 0xD)
    {
      v100 = 8 * (HIBYTE(v192) & 7);
      v101 = (-255 << v100) - 1;
      v102 = 44 << v100;
      v103 = v44 + 1;
      if (v44 >= 8)
      {
        v105 = v101 & v192 | v102;
        v104 = 8 * (v103 & 7);
        a3 = v178;
      }

      else
      {
        v46 = (v101 & v191 | v102);
        a3 = v178;
        if (v44 != 7)
        {
          v46 = (((-255 << (8 * (v103 & 7u))) - 1) & *&v46 | (32 << (8 * (v103 & 7u))));
          v124 = v192;
          goto LABEL_150;
        }

        v104 = 0;
        v105 = v192;
      }

      v124 = ((-255 << v104) - 1) & v105 | (32 << v104);
LABEL_150:
      v192;
      0xE200000000000000;
      v125 = 0xE000000000000000;
      if (*&v46 & 0x8080808080808080 | v124 & 0x80808080808080)
      {
        v125 = 0xA000000000000000;
      }

      v191 = v46;
      v192 = (v125 & 0xFF00000000000000 | (v44 << 56) | v124 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      v45 = v177;
      goto LABEL_111;
    }

    0xE200000000000000;
    if ((*&v16 & 0x1000000000000000) != 0)
    {
      v127 = String.UTF8View._foreignCount()();
      v107 = v127 + 2;
      if (__OFADD__(v127, 2))
      {
        goto LABEL_205;
      }
    }

    else
    {
      v49 = __OFADD__(v99, 2);
      v107 = v99 + 2;
      if (v49)
      {
        goto LABEL_205;
      }
    }

    if ((*&v46 & ~*&v16 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(*&v16 & 0xFFFFFFFFFFFFFFFLL))
    {
      v108 = _StringGuts.nativeUnusedCapacity.getter(*&v46, *&v16);
      if (v109)
      {
        goto LABEL_233;
      }

      if (v107 <= 15)
      {
        if ((*&v16 & 0x2000000000000000) == 0)
        {
          if (v108 < 2)
          {
            goto LABEL_133;
          }

          goto LABEL_109;
        }

LABEL_139:
        v111 = v16;
LABEL_140:
        0xE200000000000000;
        v112._rawBits = 1;
        v113._rawBits = 131073;
        v114._rawBits = _StringGuts.validateScalarRange(_:)(v112, v113, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v114._rawBits < 0x10000)
        {
          v114._rawBits |= 3;
        }

        v44 = Substring.description.getter(v114._rawBits, v115._rawBits, 0x202CuLL, 0xE200000000000000);
        v117 = v116;
        0xE200000000000000;
        if ((v117 & 0x2000000000000000) != 0)
        {
          v117;
        }

        else if ((v117 & 0x1000000000000000) != 0)
        {
          v44 = _StringGuts._foreignConvertedToSmall()(v44, v117);
          v174 = v131;
          v117;
          v117 = v174;
        }

        else
        {
          if ((v44 & 0x1000000000000000) != 0)
          {
            v128 = ((v117 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v129 = v44 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v128 = _StringObject.sharedUTF8.getter(v44, v117);
          }

          closure #1 in _StringGuts._convertedToSmall()(v128, v129, &v190, v118);
          v117;
          v117 = *(&v190 + 1);
          v44 = v190;
        }

        v119 = specialized _SmallString.init(_:appending:)(*&v46, v111, v44, v117);
        if (v121)
        {
          goto LABEL_233;
        }

        v122 = v119;
        v123 = v120;
        *&v16;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v191 = v122;
        v192 = v123;
        goto LABEL_110;
      }
    }

    else if (v107 <= 15)
    {
      if ((*&v16 & 0x2000000000000000) == 0)
      {
LABEL_133:
        if ((*&v16 & 0x1000000000000000) != 0)
        {
          v46 = _StringGuts._foreignConvertedToSmall()(*&v46, *&v16);
          v111 = v126;
        }

        else
        {
          if ((*&v46 & 0x1000000000000000) != 0)
          {
            v110 = ((*&v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v110 = _StringObject.sharedUTF8.getter(*&v46, *&v16);
            v45 = v130;
          }

          closure #1 in _StringGuts._convertedToSmall()(v110, v45, &v190, v106);
          v111 = *(&v190 + 1);
          v46 = v190;
        }

        goto LABEL_140;
      }

      goto LABEL_139;
    }

LABEL_109:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v107, 2);
    v190 = v176;
    closure #1 in _StringGuts.append(_:)(&v190, 2uLL, &v191, 1);
    swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_110:
    v45 = v177;
    a3 = v178;
LABEL_111:
    v46 = v179;
    goto LABEL_112;
  }

LABEL_165:
  a3 = HIBYTE(*&v16) & 0xFLL;
  v6 = *&v30 & 0xFFFFFFFFFFFFLL;
  if ((*&v16 & 0x2000000000000000) != 0)
  {
    v132 = HIBYTE(*&v16) & 0xFLL;
  }

  else
  {
    v132 = *&v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v132 && (*&v30 & ~*&v16 & 0x2000000000000000) == 0)
  {
    *&v16;
    v13;
    return 10589;
  }

  if ((*&v16 & 0x2000000000000000) == 0 || a3 > 0xD)
  {
    0xE200000000000000;
    if ((*&v16 & 0x1000000000000000) != 0)
    {
      goto LABEL_213;
    }

    v49 = __OFADD__(v132, 2);
    v64 = v132 + 2;
    if (v49)
    {
      goto LABEL_215;
    }

LABEL_177:
    if ((*&v30 & ~*&v16 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(*&v16 & 0xFFFFFFFFFFFFFFFLL))
    {
      v133 = _StringGuts.nativeUnusedCapacity.getter(*&v30, *&v16);
      if (v134)
      {
        goto LABEL_233;
      }

      if (v64 > 15)
      {
        goto LABEL_188;
      }

      if ((*&v16 & 0x2000000000000000) == 0)
      {
        if (v133 < 2)
        {
          goto LABEL_183;
        }

LABEL_188:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v64, 2);
        v190 = xmmword_18071DB80;
        closure #1 in _StringGuts.append(_:)(&v190, 2uLL, &v191, 1);
        v13;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        return v191;
      }
    }

    else
    {
      if (v64 > 15)
      {
        goto LABEL_188;
      }

      if ((*&v16 & 0x2000000000000000) == 0)
      {
LABEL_183:
        if ((*&v16 & 0x1000000000000000) != 0)
        {
          v30 = _StringGuts._foreignConvertedToSmall()(*&v30, *&v16);
          v136 = v149;
        }

        else
        {
          if ((*&v30 & 0x1000000000000000) != 0)
          {
            v135 = ((*&v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v135 = _StringObject.sharedUTF8.getter(*&v30, *&v16);
            v6 = v167;
          }

          closure #1 in _StringGuts._convertedToSmall()(v135, v6, &v190, v63);
          v136 = *(&v190 + 1);
          v30 = v190;
        }

LABEL_192:
        0xE200000000000000;
        v137._rawBits = 1;
        v138._rawBits = 131073;
        v139._rawBits = _StringGuts.validateScalarRange(_:)(v137, v138, 0x295DuLL, 0xE200000000000000)._rawBits;
        if (v139._rawBits < 0x10000)
        {
          v139._rawBits |= 3;
        }

        v141 = Substring.description.getter(v139._rawBits, v140._rawBits, 0x295DuLL, 0xE200000000000000);
        v143 = v142;
        0xE200000000000000;
        if ((v143 & 0x2000000000000000) != 0)
        {
          v143;
        }

        else if ((v143 & 0x1000000000000000) != 0)
        {
          v141 = _StringGuts._foreignConvertedToSmall()(v141, v143);
          v173 = v172;
          v143;
          v143 = v173;
        }

        else
        {
          if ((v141 & 0x1000000000000000) != 0)
          {
            v161 = ((v143 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v162 = v141 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v161 = _StringObject.sharedUTF8.getter(v141, v143);
          }

          closure #1 in _StringGuts._convertedToSmall()(v161, v162, &v190, v144);
          v143;
          v143 = *(&v190 + 1);
          v141 = v190;
        }

        v145 = specialized _SmallString.init(_:appending:)(*&v30, v136, v141, v143);
        if ((v146 & 1) == 0)
        {
          v30 = v145;
          *&v16;
          v13;
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
          return v30;
        }

LABEL_233:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v136 = v16;
    goto LABEL_192;
  }

  if (a3 < 8)
  {
    v30 = (((-255 << (8 * (v16.i8[7] & 7u))) - 1) & *&v30 | (93 << (8 * (v16.i8[7] & 7u))));
    if (a3 != 7)
    {
      v30 = (((-255 << (8 * ((a3 + 1) & 7))) - 1) & *&v30 | (41 << (8 * ((a3 + 1) & 7))));
    }
  }

  *&v16;
  v13;
  0xE200000000000000;
  return v30;
}

uint64_t ArraySlice.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  return ArraySlice.withUnsafeBufferPointer<A>(_:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((a6 >> 1) - a5) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  return a1(a4 + *(*(a7 - 8) + 72) * a5);
}

uint64_t _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((a6 >> 1) - a5) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  return a1(a4 + *(*(a7 - 8) + 72) * a5);
}

uint64_t _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v15 >> 1, v14))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((v15 >> 1) - v14) & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  result = v17(v13 + *(*(v16 - 8) + 72) * v14);
  if (v11)
  {
    return (*(v12 + 32))(a11, v19, a9);
  }

  return result;
}

void *ArraySlice.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3] >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = *(a3 + 16);
  ArraySlice._makeMutableAndUnique()();
  if (v6 < 0)
  {
    goto LABEL_5;
  }

  v9 = v3[1] + *(*(v8 - 8) + 72) * v3[2];
  v11[0] = v9;
  v11[1] = v6;
  a1(v11);
  return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v11, v9, v6);
}