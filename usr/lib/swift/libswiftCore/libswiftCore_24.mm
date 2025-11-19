void *_ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(void *result, uint64_t a2, uint64_t a3)
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

uint64_t _SliceBuffer.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v109 = a4;
  v12 = *(a5 + 16);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v17, v16, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = *(a6 - 1);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v27 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_37;
  }

  v98 = a6;
  v111 = a7;
  v108 = a3;
  v29 = a3 - v28;
  if (__OFSUB__(a3, v28))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = *(v103 + 16);
  v31 = *(v103 + 24) >> 1;
  v32 = v31 - v30;
  if (__OFSUB__(v31, v30))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    LODWORD(v87) = 0;
    v86 = 9012;
    LOBYTE(WitnessTable) = 2;
    goto LABEL_53;
  }

  v93 = v25;
  v94 = v22;
  v99 = v13;
  v91 = v15;
  v92 = v24;
  v100 = v27;
  v110 = v23;
  v33 = *v103;
  v34 = type metadata accessor for __ContiguousArrayStorageBase();
  v35 = swift_unknownObjectRetain(v33);
  v36 = swift_dynamicCastClass(v35, v34);
  if (!v36)
  {
    swift_unknownObjectRelease(v33);
    v36 = &_swiftEmptyArrayStorage;
  }

  v37 = *(v99 + 72);
  if (!v37)
  {
    goto LABEL_39;
  }

  v97 = v32;
  v38 = v36 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
  v39 = *(v103 + 8) + v37 * v30 - v38;
  if (v37 == -1 && v39 == 0x8000000000000000)
  {
    goto LABEL_52;
  }

  v41 = a1 - v30;
  if (__OFSUB__(a1, v30))
  {
    __break(1u);
    goto LABEL_41;
  }

  v101 = v30;
  v42 = v39 / v37;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v44 = a2 - v101;
  if (__OFSUB__(a2, v101))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v96 = v29;
  v45 = v44 + v42;
  if (__OFADD__(v44, v42))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    LODWORD(v87) = 0;
    v86 = 760;
    LOBYTE(WitnessTable) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v45 < v43)
  {
    goto LABEL_44;
  }

  v102 = v36;
  v46 = v98;
  (*(v21 + 16))(v100, v109, v98);
  v47 = v45 - v43;
  if (__OFSUB__(v45, v43))
  {
    __break(1u);
LABEL_46:
    LODWORD(v87) = 0;
    v86 = 1183;
    LOBYTE(WitnessTable) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v47 < 0)
  {
    goto LABEL_46;
  }

  v48 = &v38[v43 * v37];
  v50 = *(v21 + 8);
  v49 = v21 + 8;
  v95 = v50;
  v50(v109, v46);
  swift_arrayDestroy(v48, v45 - v43, v12);
  v51 = v108 - v47;
  if (__OFSUB__(v108, v47))
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v52 = v108;
  v109 = v37;
  v107 = v37 * v108;
  v53 = (v48 + v37 * v108);
  v54 = v102;
  v55 = v111;
  if (v51)
  {
    v56 = v102[2];
    if (__OFSUB__(v56, v45))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    UnsafeMutablePointer.moveInitialize(from:count:)(&v38[v45 * v109], v56 - v45, v53, v12);
    v54 = v102;
    v57 = v102[2];
    v58 = __OFADD__(v57, v51);
    v59 = (v57 + v51);
    if (v58)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      LODWORD(v87) = 0;
      v86 = 9019;
      LOBYTE(WitnessTable) = 2;
LABEL_53:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v102[2] = v59;
  }

  if (v52 <= 0)
  {
    v54;
    v95(v100, v46);
    v81 = v96;
    v82 = v101;
  }

  else
  {
    v90 = v53;
    MEMORY[0x1EEE9AC00](v54);
    v62 = type metadata accessor for _ContiguousArrayBuffer(0, v12, v60, v61);
    v89[-6] = v62;
    v89[-5] = v46;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v62, v63);
    v86 = v55;
    v87 = v52;
    v88 = v48;
    v64 = v100;
    (*(*(v55 + 8) + 72))(v112, closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)partial apply, &v89[-8], &unk_1EEEAC658, v46);
    if (v112[0])
    {
      v89[1] = v49;
      (*(v55 + 64))(v46, v55);
      v65 = v91;
      v66 = v90;
      if (v107 >= 1)
      {
        v67 = v12;
        v107 = *(v111 + 80);
        v108 = v111 + 80;
        v105 = *(v111 + 192);
        v106 = v111 + 192;
        v104 = (v99 + 16);
        v68 = (v99 + 32);
        v69 = v111;
        do
        {
          v70 = v110;
          v71 = v46;
          v72 = (v107)(v112, v110, v46, v69);
          (*v104)(v65);
          v72(v112, 0);
          v46 = v71;
          (*v68)(v48, v65, v67);
          v48 += v109;
          v105(v70, v71, v69);
        }

        while (v48 < v66);
      }

      v73 = v111;
      v74 = v92;
      v75 = v64;
      (*(v111 + 72))(v46, v111);
      v76 = v94;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v73, v46, v94, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
      v78 = v110;
      v79 = (*(*(AssociatedConformanceWitness + 8) + 8))(v110, v74, v76);
      v80 = *(v93 + 8);
      v80(v74, v76);
      if ((v79 & 1) == 0)
      {
        LODWORD(v87) = 0;
        v86 = 173;
        LOBYTE(WitnessTable) = 2;
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v102;
      v80(v78, v76);
      v95(v75, v46);
    }

    else
    {
      v102;
      v95(v64, v46);
    }

    v81 = v96;
    v82 = v101;
  }

  v58 = __OFADD__(v82, v97);
  v83 = v82 + v97;
  if (v58)
  {
    goto LABEL_48;
  }

  if (__OFADD__(v83, v81))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return _SliceBuffer.endIndex.setter(v83 + v81);
}

uint64_t static ArraySlice<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v92 = a6;
  v93 = a2;
  v14 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Optional(255, a9, v16, v17);
  swift_getTupleTypeMetadata2(0, v18, v18, 0, 0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = *(v18 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v64[-v25];
  result = MEMORY[0x1EEE9AC00](v24);
  v34 = &v64[-v30];
  v35 = (a4 >> 1) - v31;
  if (__OFSUB__(a4 >> 1, v31))
  {
    __break(1u);
    goto LABEL_36;
  }

  v36 = a8 >> 1;
  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v35 != (a8 >> 1) - a7)
  {
    return 0;
  }

  if (!v35)
  {
    return 1;
  }

  v90 = v29;
  v87 = v14;
  v37 = *(v14 + 72);
  v38 = v93 + v37 * v31;
  if (v38 == v92 + v37 * a7)
  {
    return 1;
  }

  v77 = v33;
  v78 = v37;
  v85 = v28;
  v86 = v36;
  v71 = v32;
  v84 = a7;
  v79 = a4 >> 1;
  v80 = result;
  v76 = v31;
  if (a4 >> 1 != v31)
  {
    v42 = a1;
    v43 = v31;
    result = specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v31, v42, v93, v31, a4);
    v88 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
      v39 = v14;
      (*(v14 + 16))(v34, v38, a9);
      v40 = *(v14 + 56);
      v40(v34, 0, 1, a9);
      goto LABEL_10;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  v39 = v14;
  v40 = *(v14 + 56);
  v41 = v31;
  v40(&v64[-v30], 1, 1, a9);
  v88 = v41;
LABEL_10:
  v44 = v90;
  v82 = *(v21 + 16);
  v83 = v21 + 16;
  v82(v26, v34, v18);
  v46 = *(v39 + 48);
  v45 = v39 + 48;
  v89 = v46;
  v47 = v46(v26, 1, a9);
  v48 = v21 + 8;
  v49 = *(v21 + 8);
  if (v47 == 1)
  {
LABEL_11:
    v49(v34, v18);
    v49(v26, v18);
    return 1;
  }

  v70 = (v87 + 16);
  v81 = v87 + 56;
  v75 = (v21 + 32);
  v67 = (v87 + 32);
  v68 = a10;
  v66 = a10 + 8;
  v69 = (v87 + 8);
  v50 = v84;
  v72 = v40;
  v73 = v49;
  v74 = v48;
  while (1)
  {
    v49(v26, v18);
    if (v50 == v86)
    {
      v51 = 1;
      v87 = v86;
    }

    else
    {
      if (v50 < v84 || v50 >= v86)
      {
LABEL_31:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*v70)(v85, v92 + v50 * v78, a9);
      v51 = 0;
      v87 = v50 + 1;
    }

    v52 = v85;
    v40(v85, v51, 1, a9);
    v53 = *(v80 + 48);
    v54 = *v75;
    (*v75)(v44, v34, v18);
    v54(&v44[v53], v52, v18);
    v55 = v89;
    if (v89(v44, 1, a9) == 1)
    {
      if (v55(&v44[v53], 1, a9) != 1)
      {
        goto LABEL_33;
      }

      v49 = v73;
      v73(v44, v18);
      goto LABEL_24;
    }

    v56 = v77;
    v82(v77, v44, v18);
    if (v55(&v44[v53], 1, a9) == 1)
    {
      break;
    }

    v57 = &v44[v53];
    v58 = v45;
    v59 = v91;
    (*v67)(v91, v57, a9);
    v65 = (*(v68 + 8))(v56, v59, a9);
    v60 = *v69;
    v61 = v59;
    v45 = v58;
    v44 = v90;
    (*v69)(v61, a9);
    v60(v56, a9);
    v49 = v73;
    v73(v44, v18);
    if ((v65 & 1) == 0)
    {
      return 0;
    }

LABEL_24:
    if (v88 == v79)
    {
      v88 = v79;
      v40 = v72;
      v72(v34, 1, 1, a9);
    }

    else
    {
      v40 = v72;
      if (v88 < v76 || v88 >= v79)
      {
        goto LABEL_31;
      }

      v62 = v88 + 1;
      (*v70)(v34, v93 + v88 * v78, a9);
      v88 = v62;
      v40(v34, 0, 1, a9);
    }

    v82(v26, v34, v18);
    v63 = v89(v26, 1, a9);
    v50 = v87;
    if (v63 == 1)
    {
      goto LABEL_11;
    }
  }

  (*v69)(v56, a9);
LABEL_33:
  (*(v71 + 8))(v44, v80);
  return 0;
}

void ArraySlice<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v13 >> 1;
  if (__OFSUB__(v13 >> 1, v12))
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = v15;
  v20 = v14;
  Hasher._combine(_:)((v13 >> 1) - v12);
  if (v18 == a4)
  {
    return;
  }

  v21 = a2;
  v22 = v18 - a4;
  if (v18 <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v33 = v20;
  v31 = *(v20 + 24);
  v32 = v20 + 24;
  v23 = v21;
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(a4, v21, a3, a4, a5);
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v18 - 1, v23, a3, a4, a5);
  v24 = a3;
  v27 = *(v11 + 16);
  v25 = v11 + 16;
  v26 = v27;
  v28 = *(v25 + 56);
  v29 = v24 + v28 * a4;
  do
  {
    v26(v17, v29, a6);
    v31(v19, a6, v33);
    (*(v25 - 8))(v17, a6);
    v29 += v28;
    --v22;
  }

  while (v22);
}

Swift::Int ArraySlice<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  ArraySlice<A>.hash(into:)(&v6, a1, a2, a3, a4, a5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> ArraySlice<A>(uint64_t a1, uint64_t a2)
{
  specialized Hasher.init(_seed:)(a1, v5);
  ArraySlice<A>.hash(into:)(v5, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a2 + 16));
  return Hasher._finalize()();
}

void *ArraySlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3] >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = *(a3 + 16);
  ArraySlice._makeMutableAndUnique()();
  v9 = *(*(v8 - 8) + 72);
  if (v6 < 0)
  {
    goto LABEL_7;
  }

  v10 = v3[1] + v9 * v3[2];
  v13[0] = v10;
  v13[1] = v6;
  v11 = v6 * v9;
  if ((v6 * v9) >> 64 != (v6 * v9) >> 63)
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 < 0)
  {
    goto LABEL_9;
  }

  a1(v10, v10 + v11);
  return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v13, v10, v6);
}

uint64_t ArraySlice.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 < 0)
  {
    goto LABEL_7;
  }

  v8 = *(*(a7 - 8) + 72);
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  return a1(a4 + v8 * a5, a4 + v8 * a5 + v9);
}

uint64_t _ArrayProtocol.init(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _ArrayProtocol, associated type descriptor for _ArrayProtocol._Buffer);
  v7 = v6;
  v8 = *(a3 + 16);
  v9 = *(*(*(swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for _ArrayProtocol, associated conformance descriptor for _ArrayProtocol._ArrayProtocol._Buffer: _ArrayBufferProtocol) + 8) + 8) + 8);

  return RangeReplaceableCollection.init<A>(_:)(a1, a2, v7, v8, v9);
}

uint64_t specialized RangeReplaceableCollection.init<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v11 = *(AssociatedConformanceWitness + 16);
  v11(&v15, v6, AssociatedConformanceWitness);
  if ((v15 & 0x100) != 0)
  {
    v12 = 0;
  }

  else
  {
    LODWORD(v12) = 0;
    do
    {
      if (BYTE3(v12))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v12 = ((v15 + 1) << (-(__clz(v12) & 0x18) & 0x18)) | v12;
      v11(&v15, v6, AssociatedConformanceWitness);
    }

    while ((v15 & 0x100) == 0);
  }

  (*(v7 + 8))(v9, v6);
  return v12;
}

{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v16 = xmmword_18071DB90;
  v17 = 0;
  v18 = 0xE000000000000000;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v11 = *(AssociatedConformanceWitness + 16);
  v11(&v15, v6, AssociatedConformanceWitness);
  if ((v15 & 0x100000000) == 0)
  {
    do
    {
      v12._rawBits = *(&v16 + 1);
      specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(*(&v16 + 1), v12);
      v11(&v15, v6, AssociatedConformanceWitness);
    }

    while (BYTE4(v15) != 1);
  }

  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t RangeReplaceableCollection.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 24))(a2, a4);
  return (*(a4 + 72))(a1, a3, a5, a2, a4);
}

{
  return RangeReplaceableCollection.init<A>(_:)(a1, a4, a2, a5, a3);
}

__objc2_class **_ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, const char *a3, uint64_t a4)
{
  v50 = a1;
  v51 = a2;
  v6 = *(*(*(a4 + 16) + 8) + 8);
  swift_getAssociatedTypeWitness(255, v6, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v54 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  swift_getAssociatedTypeWitness(0, v6, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v20 = v19;
  v44 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v55 = &_swiftEmptyArrayStorage;
  (*(v6 + 32))(a3, v6);
  v23 = v6;
  v24 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v23, a3, v20, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v27 = AssociatedConformanceWitness + 16;
  v26 = *(AssociatedConformanceWitness + 16);
  v52 = v20;
  v49 = v26;
  v26(v20, AssociatedConformanceWitness);
  v28 = v54;
  v29 = v54 + 48;
  v48 = *(v54 + 48);
  if (v48(v14, 1, v8) == 1)
  {
LABEL_2:
    (*(v44 + 8))(v24, v52);
    (*(v42 + 8))(v14, v43);
    return v55;
  }

  else
  {
    v53 = *(v28 + 32);
    v54 = v28 + 32;
    v45 = v29;
    v46 = (v28 + 8);
    v53(v18, v14, v8);
    while (1)
    {
      v31 = v50(v18);
      if (v4)
      {
        break;
      }

      if (v31)
      {
        v32 = v14;
        v33 = v27;
        v34 = AssociatedConformanceWitness;
        v35 = v24;
        v36 = v47;
        v53(v47, v18, v8);
        v39 = type metadata accessor for ContiguousArray(0, v8, v37, v38);
        v40 = v36;
        v24 = v35;
        AssociatedConformanceWitness = v34;
        v27 = v33;
        v14 = v32;
        ContiguousArray.append(_:)(v40, v39);
      }

      else
      {
        (*v46)(v18, v8);
      }

      v49(v52, AssociatedConformanceWitness);
      if (v48(v14, 1, v8) == 1)
      {
        goto LABEL_2;
      }

      v53(v18, v14, v8);
    }

    (*v46)(v18, v8);
    (*(v44 + 8))(v24, v52);
    return v55;
  }
}

__objc2_class **Sequence._filter(_:)(uint64_t (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a2;
  v51 = a1;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v47 = &v41 - v13;
  v54 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v23 = v22;
  v44 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v55 = &_swiftEmptyArrayStorage;
  (*(v19 + 16))(v21, v53, a3);
  v26 = v25;
  v27 = v47;
  (*(a4 + 32))(a3, a4);
  v28 = a3;
  v29 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v28, v23, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v50 = *(AssociatedConformanceWitness + 16);
  v50(v29, AssociatedConformanceWitness);
  v31 = v54;
  v48 = *(v54 + 48);
  v49 = v54 + 48;
  if (v48(v27, 1, v8) == 1)
  {
LABEL_2:
    (*(v44 + 8))(v26, v29);
    (*(v42 + 8))(v27, v43);
    return v55;
  }

  else
  {
    v53 = *(v31 + 32);
    v54 = v31 + 32;
    v45 = (v31 + 8);
    v53(v18, v27, v8);
    while (1)
    {
      v33 = v51(v18);
      if (v4)
      {
        break;
      }

      if (v33)
      {
        v34 = v26;
        v35 = v29;
        v36 = v46;
        v53(v46, v18, v8);
        v39 = type metadata accessor for ContiguousArray(0, v8, v37, v38);
        v40 = v36;
        v29 = v35;
        v26 = v34;
        v27 = v47;
        ContiguousArray.append(_:)(v40, v39);
      }

      else
      {
        (*v45)(v18, v8);
      }

      v50(v29, AssociatedConformanceWitness);
      if (v48(v27, 1, v8) == 1)
      {
        goto LABEL_2;
      }

      v53(v18, v27, v8);
    }

    (*v45)(v18, v8);
    (*(v44 + 8))(v26, v29);
    return v55;
  }
}

uint64_t UInt8.init(_builtinIntegerLiteral:)(unsigned __int8 *a1, unint64_t a2)
{
  result = 0;
  if (a2 <= 0x9FF && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

unint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5._rawBits = _StringGuts.validateScalarIndex(_:)(15)._rawBits;
    if ((a2 & 0x1000000000000000) != 0)
    {
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v5._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    }

    else
    {
      v7 = v5._rawBits >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v13;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = a2;
        v12 = v5._rawBits >> 16;
        v8 = _StringObject.sharedUTF8.getter(a1, v11);
        v7 = v12;
      }

      value = _decodeScalar(_:startingAt:)(v8, v6._rawBits, v7);
    }
  }

  else
  {
    value = 0;
  }

  LOBYTE(v13[0]) = v2 == 0;
  return value | ((v2 == 0) << 32);
}

uint64_t specialized Collection.first.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    v4 = 0;
  }

  else
  {
    if (a1 >= a2 || a1 < 0 || a1 >= a4)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = *(a3 + a1);
  }

  return v4 | ((a1 == a2) << 8);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v5._rawBits = 15;
  return String.subscript.getter(v5, a1, a2);
}

unint64_t specialized Collection.first.getter(Swift::String::Index a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 ^ a1._rawBits;
  if ((a2 ^ a1._rawBits) >= 0x4000)
  {
    v8._rawBits = _StringGuts.validateScalarIndex(_:in:)(a1, a1._rawBits, a2, a3, a4)._rawBits;
    if ((a4 & 0x1000000000000000) != 0)
    {
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    }

    else
    {
      v10 = v8._rawBits >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v15[0] = a3;
        v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
        v11 = v15;
      }

      else if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = a4;
        v14 = v8._rawBits >> 16;
        v11 = _StringObject.sharedUTF8.getter(a3, v13);
        v10 = v14;
      }

      value = _decodeScalar(_:startingAt:)(v11, v9._rawBits, v10);
    }
  }

  else
  {
    value = 0;
  }

  LOBYTE(v15[0]) = v4 < 0x4000;
  return value | ((v4 < 0x4000) << 32);
}

uint64_t Collection.first.getter@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  (*(a2 + 64))(a1, a2);
  (*(a2 + 72))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = (*(*(AssociatedConformanceWitness + 8) + 8))(v13, v11, v7);
  v16 = *(v8 + 8);
  v16(v11, v7);
  if (v15)
  {
    v16(v13, v7);
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  else
  {
    v19 = (*(a2 + 80))(v25, v13, a1, a2);
    v21 = v20;
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v23 = v22;
    v24 = *(v22 - 8);
    (*(v24 + 16))(a3, v21, v22);
    v19(v25, 0);
    v16(v13, v7);
    return (*(v24 + 56))(a3, 0, 1, v23);
  }
}

uint64_t Optional._unsafelyUnwrappedUnchecked.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  result = (*(v4 + 8))(v6, a1);
  __break(1u);
  return result;
}

uint64_t UnsignedInteger<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v105 = a1;
  v100 = a6;
  v103 = *(a4 + 8);
  v94 = *(*(v103 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v94, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v93 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v92 = &v86 - v12;
  v101 = a2;
  v96 = *(a2 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v99 = &v86 - v16;
  v102 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a5[3] + 16);
  swift_getAssociatedTypeWitness(0, v19, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v86 - v22;
  v98 = a5[8];
  if (v98(a3, a5))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v19, a3, v21, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v21, AssociatedConformanceWitness);
    (*(v19 + 24))(v23, a3, v19);
    v25 = (*(*(a5[4] + 8) + 32))(v105, v18, a3);
    (*(v102 + 8))(v18, a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v89 = v23;
  v90 = v21;
  v91 = v19;
  v97 = v18;
  v26 = a5[16];
  v27 = v105;
  v28 = (v26)(a3, a5);
  v104 = a5;
  v29 = v101;
  if (v28 >= (*(a4 + 56))(v101, a4))
  {
    v87 = v26;
    v30 = v99;
    (*(a4 + 64))(v29, a4);
    v31 = v103;
    v32 = *(v103 + 64);
    v33 = v32(v29, v103);
    v88 = a3;
    if ((v33 ^ v98(a3, v104)))
    {
      v34 = v32(v29, v31);
      v35 = (*(v31 + 128))(v29, v31);
      a3 = v88;
      v36 = v104;
      v37 = v87(v88);
      if (v34)
      {
        if (v37 >= v35)
        {
          v61 = a3;
          v62 = v93;
          v63 = v94;
          v64 = swift_getAssociatedConformanceWitness(v94, v29, v93, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v65 = v92;
          (*(v64 + 8))(&unk_18071E0A8, 256, v62, v64);
          v66 = v95;
          (v63[3])(v65, v29, v63);
          v67 = v99;
          LOBYTE(v62) = (*(*(*(v31 + 32) + 8) + 16))(v99, v66, v29);
          v45 = v29;
          v68 = *(v96 + 8);
          v68(v66, v45);
          if (v62)
          {
            v68(v67, v45);
            goto LABEL_26;
          }

          v69 = v97;
          v70 = v67;
          a3 = v61;
          (v36[12])(v70, v45, v31, v61, v36);
          v27 = v105;
          v44 = (*(*(v36[4] + 8) + 16))(v69, v105, v61);
          (*(v102 + 8))(v69, v61);
        }

        else
        {
          v38 = v97;
          v39 = v105;
          (*(v102 + 16))(v97, v105, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral);
          v40 = v95;
          (*(v31 + 96))(v38, a3, v36, v29, v31);
          v41 = *(v31 + 32);
          v27 = v39;
          v42 = a3;
          v43 = v99;
          v44 = (*(*(v41 + 8) + 16))(v99, v40, v29);
          v45 = v29;
          v46 = *(v96 + 8);
          v46(v40, v45);
          v47 = v43;
          a3 = v42;
          v46(v47, v45);
        }

        v29 = v45;
        if (v44)
        {
LABEL_26:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v53 = v35 < v37;
        v54 = v102;
        v55 = v97;
        if (v53)
        {
          (v36[12])(v99, v29, v31, a3, v36);
          v27 = v105;
          v56 = (*(*(v36[4] + 8) + 16))(v55, v105, a3);
          (*(v54 + 8))(v55, a3);
        }

        else
        {
          v71 = v90;
          v72 = v91;
          v73 = swift_getAssociatedConformanceWitness(v91, a3, v90, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v74 = v89;
          (*(v73 + 8))(&unk_18071E0A8, 256, v71, v73);
          (*(v72 + 3))(v74, a3, v72);
          v75 = v36;
          v76 = *(*(v36[4] + 8) + 40);
          v77 = v105;
          v78 = v76(v105, v55, a3);
          (*(v54 + 8))(v55, a3);
          if ((v78 & 1) == 0)
          {
            (*(v96 + 8))(v99, v29);
            v27 = v77;
            return (*(v103 + 96))(v27, a3, v104, v29);
          }

          (*(v54 + 16))(v55, v77, a3);
          v79 = v95;
          (*(v31 + 96))(v55, a3, v75, v29, v31);
          v80 = a3;
          v81 = v99;
          v56 = (*(*(*(v31 + 32) + 8) + 16))(v99, v79, v29);
          v82 = v29;
          v83 = *(v96 + 8);
          v83(v79, v82);
          v84 = v81;
          a3 = v80;
          v83(v84, v82);
          v29 = v82;
          v27 = v77;
        }

        if (v56)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v48 = (*(v31 + 128))(v29, v31);
      v49 = v105;
      a3 = v88;
      if (v48 >= (v87)(v88, v104))
      {
        v57 = v97;
        (*(v102 + 16))(v97, v49, a3);
        v58 = v95;
        (*(v31 + 96))(v57, a3, v104, v29, v31);
        v52 = (*(*(*(v31 + 32) + 8) + 16))(v30, v58, v29);
        v59 = v29;
        v60 = *(v96 + 8);
        v60(v58, v59);
        v60(v30, v59);
        v29 = v59;
      }

      else
      {
        v50 = v104;
        v51 = v97;
        (v104[12])(v30, v29, v31, a3, v104);
        v52 = (*(*(v50[4] + 8) + 16))(v51, v49, a3);
        (*(v102 + 8))(v51, a3);
      }

      v27 = v49;
      if (v52)
      {
        goto LABEL_26;
      }
    }
  }

  return (*(v103 + 96))(v27, a3, v104, v29);
}

uint64_t static Unicode.ASCII.encode(_:)(unsigned int a1)
{
  v1 = a1;
  if (a1 > 0x7F)
  {
    v1 = 0;
  }

  return v1 | ((a1 > 0x7F) << 8);
}

uint64_t static BinaryInteger.< infix<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v61 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v61, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - v13;
  v58 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v58, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v57 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v54 - v16;
  v65 = *(a4 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 64);
  v21 = v20(a3, a5);
  if ((v21 ^ (*(a6 + 64))(a4, a6)))
  {
    v22 = v20(a3, a5);
    v23 = *(a5 + 128);
    v55 = a1;
    v24 = v23(a3, a5);
    v25 = *(a6 + 128);
    v54 = a2;
    v26 = v25(a4, a6);
    if ((v22 & 1) == 0)
    {
      v28 = v63;
      v35 = v64;
      if (v24 < v26)
      {
        v36 = v62;
        (*(v63 + 16))(v62, v55, a3);
        (*(a6 + 96))(v36, a3, a5, a4, a6);
        v34 = (*(*(*(a6 + 32) + 8) + 16))(v35, v54, a4);
        (*(v65 + 8))(v35, a4);
        return v34 & 1;
      }

      v46 = v60;
      v47 = v61;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v61, a4, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v49 = v59;
      (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v46, AssociatedConformanceWitness);
      (v47[3])(v49, a4, v47);
      v50 = v54;
      LOBYTE(v46) = (*(*(*(a6 + 32) + 8) + 40))(v54, v35, a4);
      v51 = v65;
      (*(v65 + 8))(v35, a4);
      v52 = v55;
      if ((v46 & 1) == 0)
      {
        v34 = 0;
        return v34 & 1;
      }

      (*(v51 + 16))(v35, v50, a4);
      v29 = v62;
      (*(a5 + 96))(v35, a4, a6, a3, a5);
      v30 = (*(*(*(a5 + 32) + 8) + 16))(v52, v29, a3);
      goto LABEL_15;
    }

    v28 = v63;
    v27 = v64;
    if (v26 < v24)
    {
      (*(v65 + 16))(v64, v54, a4);
      v29 = v62;
      (*(a5 + 96))(v27, a4, a6, a3, a5);
      v30 = (*(*(*(a5 + 32) + 8) + 16))(v55, v29, a3);
LABEL_15:
      v34 = v30;
      (*(v28 + 8))(v29, a3);
      return v34 & 1;
    }

    v39 = v57;
    v40 = v58;
    v41 = swift_getAssociatedConformanceWitness(v58, a3, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v42 = v56;
    (*(v41 + 8))(&unk_18071E0A8, 256, v39, v41);
    v43 = v62;
    (v40[3])(v42, a3, v40);
    v44 = v55;
    LOBYTE(v39) = (*(*(*(a5 + 32) + 8) + 16))(v55, v43, a3);
    (*(v28 + 8))(v43, a3);
    v45 = v65;
    if (v39)
    {
      v34 = 1;
    }

    else
    {
      (*(v28 + 16))(v43, v44, a3);
      (*(a6 + 96))(v43, a3, a5, a4, a6);
      v34 = (*(*(*(a6 + 32) + 8) + 16))(v27, v54, a4);
      (*(v45 + 8))(v27, a4);
    }
  }

  else
  {
    v31 = (*(a5 + 128))(a3, a5);
    if (v31 >= (*(a6 + 128))(a4, a6))
    {
      v37 = v64;
      (*(v65 + 16))(v64, a2, a4);
      v38 = v62;
      (*(a5 + 96))(v37, a4, a6, a3, a5);
      v34 = (*(*(*(a5 + 32) + 8) + 16))(a1, v38, a3);
      (*(v63 + 8))(v38, a3);
    }

    else
    {
      v32 = v62;
      (*(v63 + 16))(v62, a1, a3);
      v33 = v64;
      (*(a6 + 96))(v32, a3, a5, a4, a6);
      v34 = (*(*(*(a6 + 32) + 8) + 16))(v33, a2, a4);
      (*(v65 + 8))(v33, a4);
    }
  }

  return v34 & 1;
}

uint64_t static Unicode.ASCII.transcode<A>(_:from:)(int *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  if (a3 == &type metadata for Unicode.UTF16)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR);
    swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF16, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (v7 == v6)
    {
      v8 = *a1;
      v9 = (*a1 & 0xFF80) != 0;
      if ((*a1 & 0xFF80) != 0)
      {
        LOBYTE(v8) = 0;
      }

      return v8 | (v9 << 8);
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 != &type metadata for Unicode.UTF8)
  {
    v13 = (*(a4 + 88))(a1, a3, a4);
    v9 = v13 > 0x7F;
    if (v13 <= 0x7F)
    {
      LOBYTE(v8) = v13;
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    return v8 | (v9 << 8);
  }

  swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  if (v11 != &type metadata for _ValidUTF8Buffer)
  {
    goto LABEL_10;
  }

  if (!*a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = (*a1 - 1);
  v9 = v12 < 0;
  v8 = v12 & ~(v12 >> 31);
  return v8 | (v9 << 8);
}

uint64_t _identityCast<A, B>(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(*(a4 - 8) + 16);

  return v6(a5, a1, a4);
}

uint64_t UInt32.init(_builtinIntegerLiteral:)(unsigned int *a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 9 <= 0x10 && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

uint64_t protocol witness for static _UnicodeEncoding.encode(_:) in conformance Unicode.ASCII@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 0x7F)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  a2[1] = result > 0x7F;
  return result;
}

void protocol witness for static _UnicodeEncoding.transcode<A>(_:from:) in conformance Unicode.ASCII(int *a1@<X0>, ValueMetadata *a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (a2 == &type metadata for Unicode.UTF16)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR);
    swift_getAssociatedTypeWitness(0, a3, &type metadata for Unicode.UTF16, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (v8 == v7)
    {
      v9 = *a1;
      v10 = (*a1 & 0xFF80) != 0;
      if ((*a1 & 0xFF80) != 0)
      {
        LOBYTE(v9) = 0;
      }

      goto LABEL_5;
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 != &type metadata for Unicode.UTF8)
  {
    v13 = (*(a3 + 88))(a1, a2, a3);
    v10 = v13 > 0x7F;
    if (v13 <= 0x7F)
    {
      LOBYTE(v9) = v13;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    goto LABEL_5;
  }

  swift_getAssociatedTypeWitness(0, a3, &type metadata for Unicode.UTF8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  if (v11 != &type metadata for _ValidUTF8Buffer)
  {
    goto LABEL_10;
  }

  if (!*a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = (*a1 - 1);
  v10 = v12 < 0;
  v9 = v12 & ~(v12 >> 31);
LABEL_5:
  *a4 = v9;
  a4[1] = v10;
}

uint64_t Unicode.ASCII.Parser.parseScalar<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(&v5, a2, a3);
  if ((v5 & 0x80u) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  if (BYTE1(v5))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t Int8.init(_builtinIntegerLiteral:)(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 <= 0x8FF)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for _UnicodeParser.parseScalar<A>(from:) in conformance Unicode.ASCII.Parser@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = Unicode.ASCII.Parser.parseScalar<A>(from:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

Swift::String __swiftcall String.init()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void _assertionFailure(_:_:file:line:flags:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, const char *a6, unint64_t a7, char a8, unint64_t a9)
{
  v9 = a9;
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

    a1 = _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a1, partial apply for closure #1 in _assertionFailure(_:_:file:line:flags:));
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

  closure #1 in _assertionFailure(_:_:file:line:flags:)(a1, a2, a4, a5, a6, a7, a8, v9);
  __break(1u);
  goto LABEL_10;
}

uint64_t assert(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, const char *a5, unint64_t a6, char a7, unint64_t a8, unint64_t a9, uint64_t a10)
{
  result = a1();
  if ((result & 1) == 0)
  {
    v16 = a3();
    _assertionFailure(_:_:file:line:flags:)(a9, a10, 2, v16, v17, a5, a6, a7, a8);
  }

  return result;
}

void _assertionFailure(_:_:file:line:flags:)(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      goto LABEL_29;
    }

    if (a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_28;
    }

    a1 = _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a1, partial apply for closure #1 in _assertionFailure(_:_:file:line:flags:));
    __break(1u);
  }

  else if (!a1)
  {
LABEL_28:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    goto LABEL_29;
  }

  if (a2 < 0)
  {
    goto LABEL_30;
  }

  v3 = MEMORY[0x1EEE9AC00](a1);
  if ((v6 & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_28;
    }

    if (v5 < 0)
    {
      goto LABEL_30;
    }

    v7 = MEMORY[0x1EEE9AC00](v3);
    if (v15)
    {
LABEL_24:
      if (!(v11 >> 32))
      {
        if (v11 >> 16 <= 0x10 && (v11 & 0xFFFFF800) != 0xD800)
        {
          _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(v11, partial apply for closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:));
          __break(1u);
        }

        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (!v11)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    if (v8 >> 31 || v10 >> 31 || v12 >> 31 || HIDWORD(v14))
    {
LABEL_29:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
LABEL_30:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    _swift_stdlib_reportFatalErrorInFile(v7, v8, v9, v10, v11, v12, v14, v13);
    __break(1u);
  }

  if (HIDWORD(v4))
  {
    goto LABEL_29;
  }

  if (v4 >> 16 > 0x10 || (v4 & 0xFFFFF800) == 0xD800)
  {
    goto LABEL_28;
  }

  _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(v4, partial apply for closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:));
  __break(1u);
  goto LABEL_24;
}

uint64_t _overflowChecked<A>(_:file:line:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22[1] = a5;
  v22[2] = a3;
  v22[3] = a4;
  swift_getTupleTypeMetadata2(0, a6, &type metadata for Bool, 0, 0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  v19 = *(a6 - 8);
  (*(v19 + 16))(v22 - v17, a1, a6);
  v18[*(v12 + 48)] = a2;
  (*(v13 + 16))(v16, v18, v12);
  v20 = v16[*(v12 + 48)];
  (*(v19 + 32))(a7, v16, a6);
  if (v20 == 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v13 + 8))(v18, v12);
}

uint64_t Int32.init(_builtinIntegerLiteral:)(unsigned int *a1, unint64_t a2)
{
  if (a2 >> 8 <= 0x20)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2, const char *a3, unint64_t a4, char a5, const char *a6, uint64_t a7, unint64_t a8, int a9)
{
  v9 = a3;
  v10 = a9;
  if ((a5 & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a3 >> 32)
  {
    goto LABEL_18;
  }

  if (a3 >> 16 > 0x10 || (a3 & 0xFFFFF800) == 0xD800)
  {
    while (1)
    {
LABEL_7:
      a1 = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
LABEL_8:
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (a6)
      {
        if (a7 <= 0xFFFFFFFF7FFFFFFFLL || a7 >= 0x80000000)
        {
          goto LABEL_18;
        }

        if (a1)
        {
          break;
        }
      }
    }

    if (a2 > 0xFFFFFFFF7FFFFFFFLL && a2 < 0x80000000 && !(a4 >> 31) && !HIDWORD(a8))
    {
      _swift_stdlib_reportFatalErrorInFile(a6, a7, a1, a2, v9, a4, a8, v10);
      __break(1u);
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a3, closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)partial apply);
}

void closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, unint64_t a7, int a8)
{
  if (!a3)
  {
    goto LABEL_8;
  }

  if (a4 < 0xFFFFFFFF80000000 || a4 > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  if (!a5)
  {
    goto LABEL_8;
  }

  if (a6 < 0xFFFFFFFF80000000 || a6 >= 0x80000000)
  {
    goto LABEL_13;
  }

  if (!a1)
  {
LABEL_8:
    a1 = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 >= 0xFFFFFFFF80000000 && a2 < 0x80000000 && !HIDWORD(a7))
  {
    _swift_stdlib_reportFatalErrorInFile(a3, a4, a5, a6, a1, a2, a7, a8);
    __break(1u);
  }

  while (1)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

{
  if (!a3)
  {
    goto LABEL_15;
  }

  if (a4 < 0xFFFFFFFF80000000 || a4 > 0x7FFFFFFF)
  {
    goto LABEL_14;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  if (a6 < 0xFFFFFFFF80000000 || a6 >= 0x80000000)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0xFFFFFFFF80000000 || a2 >= 0x80000000 || HIDWORD(a7))
  {
    goto LABEL_14;
  }

  _swift_stdlib_reportFatalErrorInFile(a3, a4, a5, a6, a1, a2, a7, a8);
}

uint64_t StaticString.withUTF8Buffer<A>(_:)(uint64_t (*a1)(unint64_t, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (HIDWORD(a3))
    {
      LODWORD(v14) = 0;
      v13 = 3053;
      LOBYTE(v12) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3 >> 16 <= 0x10 && (a3 & 0xFFFFF800) != 0xD800)
    {
      MEMORY[0x1EEE9AC00](a1);
      v12 = v7;
      v13 = v8;
      v14 = a2;
      return Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for closure #1 in StaticString.withUTF8Buffer<A>(_:), &v11, v9);
    }

    v10 = 148;
LABEL_14:
    LODWORD(v14) = 0;
    v13 = v10;
    LOBYTE(v12) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v10 = 136;
    goto LABEL_14;
  }

  if (a4 < 0)
  {
    LODWORD(v14) = 0;
    v13 = 1410;
    LOBYTE(v12) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1(a3, a4);
}

void closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, unint64_t a6, char a7, unint64_t a8)
{
  v11 = a4;
  v16 = a4;
  if ((v11 & 0x1000000000000000) == 0)
  {
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v22[0] = a3;
    v22[1] = v11 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v16);
    if (a7)
    {
      if (a5 >> 32)
      {
        goto LABEL_36;
      }

      if (a5 >> 16 <= 0x10 && (a5 & 0xFFFFF800) != 0xD800)
      {
        _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a5, partial apply for closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:));
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (!a5)
    {
      goto LABEL_39;
    }

    if ((a6 & 0x8000000000000000) == 0)
    {
      if (!a1)
      {
        goto LABEL_39;
      }

      if (a2 > 0xFFFFFFFF7FFFFFFFLL && a2 < 0x80000000 && !(a6 >> 31) && !HIDWORD(a8))
      {
        v17 = v22;
LABEL_30:
        _swift_stdlib_reportFatalErrorInFile(a1, a2, v17, v18, a5, a6, a8, v19);
        goto LABEL_35;
      }

      goto LABEL_36;
    }

LABEL_37:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a3 = specialized static String._copying(_:)(a3, v11);
  v21 = v20;
  v11;
  v11 = v21;
  if ((v21 & 0x2000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((a3 & 0x1000000000000000) == 0)
  {
    v16 = _StringObject.sharedUTF8.getter(a3, v11);
  }

  MEMORY[0x1EEE9AC00](v16);
  if ((a7 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    if ((a6 & 0x8000000000000000) == 0)
    {
      if (!a1)
      {
        goto LABEL_39;
      }

      if (a2 > 0xFFFFFFFF7FFFFFFFLL && a2 < 0x80000000)
      {
        if (v17)
        {
          if (v18 >= 0x80000000 || a6 >> 31 || HIDWORD(a8))
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        }

LABEL_39:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_37;
  }

  if (a5 >> 32)
  {
    goto LABEL_36;
  }

  if (a5 >> 16 > 0x10 || (a5 & 0xFFFFF800) == 0xD800)
  {
    goto LABEL_39;
  }

  _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a5, closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)partial apply);
LABEL_35:
  v11;
}

uint64_t String.withUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  if ((v4 & 0x1000000000000000) != 0)
  {
    v8 = specialized static String._copying(_:)(v3, v1[1]);
    v10 = v9;
    v4;
    v3 = v8;
    *v1 = v8;
    v1[1] = v10;
    v4 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v4) & 0xF;
    v12[0] = v3;
    v12[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    v7 = v12;
    return a1(v7, v6);
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter(v3, v4);
  }

  v7 = v5;
  return a1(v7, v6);
}

void closure #1 in _assertionFailure(_:_:flags:)(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = a4;
  a4;
  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v15[0] = a3;
    v15[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (a1)
    {
      if (a2 >= 0xFFFFFFFF80000000 && a2 < 0x80000000)
      {
        _swift_stdlib_reportFatalError(a1, a2, v15, HIBYTE(v6) & 0xF, a5);
        v6;
        return;
      }

LABEL_17:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_19;
  }

  a3 = specialized static String._copying(_:)(a3, v6);
  v13 = v12;
  v6;
  v6 = v13;
  if ((v13 & 0x2000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((a3 & 0x1000000000000000) == 0)
  {
    v10 = _StringObject.sharedUTF8.getter(a3, v6);
    v11 = v14;
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v11 = a3 & 0xFFFFFFFFFFFFLL;
  if (!a1)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (a2 <= 0xFFFFFFFF7FFFFFFFLL || a2 >= 0x80000000)
  {
    goto LABEL_17;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  if (v11 >= 0x80000000)
  {
    goto LABEL_17;
  }

  _swift_stdlib_reportFatalError(a1, a2, v10, v11, a5);

  v6;
}

void _unimplementedInitializer(className:initName:file:line:column:)(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      goto LABEL_18;
    }

    if (a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_17;
    }

    a1 = _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a1, partial apply for closure #1 in _unimplementedInitializer(className:initName:file:line:column:));
    __break(1u);
  }

  else if (!a1)
  {
    goto LABEL_17;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = MEMORY[0x1EEE9AC00](a1);
    if (v12)
    {
      goto LABEL_13;
    }

    if (!v5)
    {
      goto LABEL_17;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(v5, v6, v7, v8, v10, v3, v4, v9, v11);
      __break(1u);
LABEL_13:
      if (!(v5 >> 32))
      {
        if (v5 >> 16 <= 0x10 && (v5 & 0xFFFFF800) != 0xD800)
        {
          _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(v5, partial apply for closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:));
          __break(1u);
        }

LABEL_17:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
}

void closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(const char *a1, uint64_t a2, const char *a3, uint64_t a4, char a5, const char *a6, unint64_t a7, char a8, unint64_t a9, unint64_t a10)
{
  if (a5)
  {
    if (a3 >> 32)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3 >> 16 <= 0x10 && (a3 & 0xFFFFF800) != 0xD800)
    {
      _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a3, closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)partial apply);
      return;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  if (a4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(a3, a4, a6, a7, a8, a1, a2, a9, a10);
}

void closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(const char *a1, uint64_t a2, const char *a3, unint64_t a4, char a5, const char *a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  if (a5)
  {
    if (a3 >> 32)
    {
      goto LABEL_20;
    }

    if (a3 >> 16 <= 0x10 && (a3 & 0xFFFFF800) != 0xD800)
    {
      _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a3, partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:));
      return;
    }

    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a6)
  {
    goto LABEL_22;
  }

  if (a7 <= 0xFFFFFFFF7FFFFFFFLL || a7 >= 0x80000000)
  {
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 <= 0xFFFFFFFF7FFFFFFFLL || a2 >= 0x80000000 || a4 >> 31 || HIDWORD(a8) || HIDWORD(a9))
  {
    goto LABEL_20;
  }

  _swift_stdlib_reportUnimplementedInitializerInFile(a6, a7, a1, a2, a3, a4, a8, a9, 0);
}

void closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(const char *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    goto LABEL_14;
  }

  if (a4 < 0xFFFFFFFF80000000 || a4 > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  if (!a5)
  {
    goto LABEL_14;
  }

  if (a6 < 0xFFFFFFFF80000000 || a6 >= 0x80000000)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0xFFFFFFFF80000000 || a2 >= 0x80000000 || HIDWORD(a7) || HIDWORD(a8))
  {
    goto LABEL_13;
  }

  _swift_stdlib_reportUnimplementedInitializerInFile(a3, a4, a5, a6, a1, a2, a7, a8, 0);
}

void _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(unint64_t a1, uint64_t a2, uint64_t a3, Class *a4)
{
  v7 = _StringGuts.init(_initialCapacity:)(39);
  v17 = v8;
  v88._countAndFlagsBits = v7;
  v88._object = v8;
  v18 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v18 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 || (v7 & ~v8 & 0x2000000000000000) != 0)
  {
    if ((0x800000018066BCD0 & 0x2000000000000000 & v8) != 0 && (v19 = specialized _SmallString.init(_:appending:)(v7, v8, 0xD000000000000016, 0x800000018066BCD0 | 0x8000000000000000), (v21 & 1) == 0))
    {
      v23 = v19;
      v24 = v20;
      v17;
      0x800000018066BCD0 | 0x8000000000000000;
      v88._countAndFlagsBits = v23;
      v88._object = v24;
    }

    else
    {
      if ((0x800000018066BCD0 & 0x2000000000000000) != 0)
      {
        v22 = (0x800000018066BCD0 >> 56) & 0xF;
      }

      else
      {
        v22 = 22;
      }

      _StringGuts.append(_:)(0xD000000000000016, 0x800000018066BCD0 | 0x8000000000000000, 0, v22, v9, v10, v11, v12, v13, v14, v15, v16);
      0x800000018066BCD0 | 0x8000000000000000;
    }
  }

  else
  {
    v8;
    v88._countAndFlagsBits = 0xD000000000000016;
    v88._object = (0x800000018066BCD0 | 0x8000000000000000);
  }

  TypeName = swift_getTypeName(a1, 0);
  if (v26 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v27 = TypeName;
  v28 = v26;
  v29 = validateUTF8(_:)(TypeName, v26);
  if (v29 < 0)
  {
    v33 = repairUTF8(_:firstKnownBrokenRange:)(v27, v28, v30, v31);
  }

  else
  {
    v33 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v27, v28, v29 & 1, v32);
  }

  v43 = v33;
  v44 = v34;
  v45 = (v88._object >> 56) & 0xF;
  if ((v88._object & 0x2000000000000000) == 0)
  {
    v45 = v88._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v45 && (v88._countAndFlagsBits & ~v88._object & 0x2000000000000000) == 0)
  {
    v88._object;
    v88._countAndFlagsBits = v43;
    v88._object = v44;
    goto LABEL_30;
  }

  if ((v88._object & 0x2000000000000000) != 0)
  {
    if ((v34 & 0x2000000000000000) != 0)
    {
      v47 = specialized _SmallString.init(_:appending:)(v88._countAndFlagsBits, v88._object, v33, v34);
      if ((v49 & 1) == 0)
      {
        v84 = v47;
        v85 = v48;
        v88._object;
        v44;
        v88._countAndFlagsBits = v84;
        v88._object = v85;
        v44 = v85;
        v43 = v84;
LABEL_30:
        v59 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(rawValue: ", 0xBuLL, 1);
        countAndFlagsBits = v59._countAndFlagsBits;
        v60 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v60 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (!v60 && (v43 & ~v44 & 0x2000000000000000) == 0)
        {
          v44;
          v88 = v59;
          goto LABEL_41;
        }

        if ((v44 & 0x2000000000000000) != 0)
        {
          if ((v59._object & 0x2000000000000000) != 0)
          {
            v77 = specialized _SmallString.init(_:appending:)(v43, v44, v59._countAndFlagsBits, v59._object);
            if ((v79 & 1) == 0)
            {
              v86 = v77;
              v87 = v78;
              v44;
              v59._object;
              v88._countAndFlagsBits = v86;
              v88._object = v87;
LABEL_41:
              _print_unlocked<A, B>(_:_:)(a2, &v88, a4, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
              object = v88._object;
              v71 = (v88._object >> 56) & 0xF;
              if ((v88._object & 0x2000000000000000) == 0)
              {
                v71 = v88._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              }

              if (v71 || (v88._countAndFlagsBits & ~v88._object & 0x2000000000000000) != 0)
              {
                if ((v88._object & 0x2000000000000000) != 0 && (v74 = specialized _SmallString.init(_:appending:)(v88._countAndFlagsBits, v88._object, 0x2729uLL, 0xE200000000000000), (v76 & 1) == 0))
                {
                  v80 = v74;
                  v81 = object;
                  v82 = v80;
                  v83 = v75;
                  v81;
                  0xE200000000000000;
                  v73 = v83;
                  v72 = v82;
                  v88._countAndFlagsBits = v82;
                  v88._object = v83;
                }

                else
                {
                  _StringGuts.append(_:)(10025, 0xE200000000000000, 0, 2, v62, v63, v64, v65, v66, v67, v68, v69);
                  0xE200000000000000;
                  v72 = v88._countAndFlagsBits;
                  v73 = v88._object;
                }
              }

              else
              {
                v88._object;
                v72 = 10025;
                v73 = 0xE200000000000000;
                v88._countAndFlagsBits = 10025;
                v88._object = 0xE200000000000000;
              }

              _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v72, v73, 0);
            }

            v61 = (v59._object >> 56) & 0xF;
            countAndFlagsBits = v59._countAndFlagsBits;
LABEL_40:
            _StringGuts.append(_:)(countAndFlagsBits, v59._object, 0, v61, v51, v52, v53, v54, v55, v56, v57, v58);
            v59._object;
            goto LABEL_41;
          }
        }

        else if ((v59._object & 0x2000000000000000) != 0)
        {
          v61 = (v59._object >> 56) & 0xF;
          goto LABEL_40;
        }

        v61 = v59._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        goto LABEL_40;
      }

      goto LABEL_28;
    }
  }

  else if ((v34 & 0x2000000000000000) != 0)
  {
LABEL_28:
    v46 = HIBYTE(v44) & 0xF;
    goto LABEL_29;
  }

  v46 = v33 & 0xFFFFFFFFFFFFLL;
LABEL_29:
  _StringGuts.append(_:)(v43, v44, 0, v46, v35, v36, v37, v38, v39, v40, v41, v42);
  v44;
  v43 = v88._countAndFlagsBits;
  v44 = v88._object;
  goto LABEL_30;
}

void _diagnoseUnexpectedEnumCase<A>(type:)(unint64_t a1)
{
  v2 = _StringGuts.init(_initialCapacity:)(58);
  v12 = v3;
  v67 = v2;
  v68 = v3;
  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (v2 & ~v3 & 0x2000000000000000) != 0)
  {
    if ((0x800000018066BD00 & 0x2000000000000000 & v3) != 0 && (v14 = specialized _SmallString.init(_:appending:)(v2, v3, 0xD000000000000037, 0x800000018066BD00 | 0x8000000000000000), (v16 & 1) == 0))
    {
      v18 = v14;
      v19 = v15;
      v12;
      0x800000018066BD00 | 0x8000000000000000;
      v67 = v18;
      v68 = v19;
    }

    else
    {
      if ((0x800000018066BD00 & 0x2000000000000000) != 0)
      {
        v17 = (0x800000018066BD00 >> 56) & 0xF;
      }

      else
      {
        v17 = 55;
      }

      _StringGuts.append(_:)(0xD000000000000037, 0x800000018066BD00 | 0x8000000000000000, 0, v17, v4, v5, v6, v7, v8, v9, v10, v11);
      0x800000018066BD00 | 0x8000000000000000;
    }
  }

  else
  {
    v3;
    v67 = 0xD000000000000037;
    v68 = 0x800000018066BD00 | 0x8000000000000000;
  }

  TypeName = swift_getTypeName(a1, 0);
  if (v21 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = TypeName;
  v23 = v21;
  v24 = validateUTF8(_:)(TypeName, v21);
  if (v24 < 0)
  {
    v28 = repairUTF8(_:firstKnownBrokenRange:)(v22, v23, v25, v26);
  }

  else
  {
    v28 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v22, v23, v24 & 1, v27);
  }

  v38 = v29;
  v39 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v39 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39 && (v67 & ~v68 & 0x2000000000000000) == 0)
  {
    v40 = v28;
    v68;
    v49 = v40;
    v67 = v40;
    v68 = v38;
    goto LABEL_28;
  }

  if ((v68 & 0x2000000000000000) != 0)
  {
    if ((v29 & 0x2000000000000000) != 0)
    {
      v57 = v28;
      v58 = specialized _SmallString.init(_:appending:)(v67, v68, v28, v29);
      if ((v60 & 1) == 0)
      {
        v65 = v59;
        v66 = v58;
        v68;
        v38;
        v67 = v66;
        v68 = v65;
        v38 = v65;
        v49 = v66;
LABEL_28:
        v51 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v51 = v49 & 0xFFFFFFFFFFFFLL;
        }

        if (v51 || (v49 & ~v38 & 0x2000000000000000) != 0)
        {
          if ((v38 & 0x2000000000000000) != 0 && (v54 = specialized _SmallString.init(_:appending:)(v49, v38, 0x27uLL, 0xE100000000000000), (v56 & 1) == 0))
          {
            v61 = v54;
            v62 = v38;
            v63 = v55;
            v64 = v61;
            v62;
            0xE100000000000000;
            v53 = v64;
            v52 = v63;
          }

          else
          {
            _StringGuts.append(_:)(39, 0xE100000000000000, 0, 1, v41, v42, v43, v44, v45, v46, v47, v48);
            0xE100000000000000;
            v53 = v67;
            v52 = v68;
          }
        }

        else
        {
          v38;
          v52 = 0xE100000000000000;
          v53 = 39;
        }

        _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v53, v52, 0);
      }

      v50 = HIBYTE(v38) & 0xF;
      v28 = v57;
LABEL_27:
      _StringGuts.append(_:)(v28, v38, 0, v50, v30, v31, v32, v33, v34, v35, v36, v37);
      v38;
      v49 = v67;
      v38 = v68;
      goto LABEL_28;
    }
  }

  else if ((v29 & 0x2000000000000000) != 0)
  {
    v50 = HIBYTE(v29) & 0xF;
    goto LABEL_27;
  }

  v50 = v28 & 0xFFFFFFFFFFFFLL;
  goto LABEL_27;
}

uint64_t BidirectionalCollection.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *(v12 + 16);
  if (a2 < 0)
  {
    v18(v15, a1, v11);
    v20 = 0;
    v21 = *(a4 + 40);
    do
    {
      --v20;
      v21(v15, a3, a4);
    }

    while (v20 > a2);
    v17 = v15;
  }

  else
  {
    v18(&v23 - v16, a1, v11);
    if (a2)
    {
      v19 = *(v9 + 192);
      do
      {
        v19(v17, a3, v9);
        --a2;
      }

      while (a2);
    }
  }

  return (*(v12 + 32))(v24, v17, v11);
}

uint64_t BidirectionalCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a3;
  v32 = a6;
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v10, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v31 = v18;
  v19 = *(v18 + 16);
  if (a2 < 0)
  {
    v19(v15, a1, v12);
    v33 = a4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a4, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v25 = 0;
    v26 = *(AssociatedConformanceWitness + 8);
    v27 = *(v26 + 8);
    while ((v27(v15, v34, v12, v26) & 1) == 0)
    {
      --v25;
      (*(a5 + 40))(v15, v33, a5);
      if (v25 <= a2)
      {
        v23 = v31;
        v22 = v32;
        (*(v31 + 32))(v32, v15, v12);
        goto LABEL_11;
      }
    }

    v23 = v31;
    (*(v31 + 8))(v15, v12);
    goto LABEL_14;
  }

  v19(&v30 - v16, a1, v12);
  if (a2)
  {
    v20 = *(swift_getAssociatedConformanceWitness(v10, a4, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v21 = *(v20 + 8);
    while ((v21(v17, v34, v12, v20) & 1) == 0)
    {
      (*(v10 + 192))(v17, a4, v10);
      if (!--a2)
      {
        goto LABEL_6;
      }
    }

    v23 = v31;
    (*(v31 + 8))(v17, v12);
LABEL_14:
    v28 = 1;
    v22 = v32;
    return (*(v23 + 56))(v22, v28, 1, v12);
  }

LABEL_6:
  v23 = v31;
  v22 = v32;
  (*(v31 + 32))(v32, v17, v12);
LABEL_11:
  v28 = 0;
  return (*(v23 + 56))(v22, v28, 1, v12);
}

unint64_t specialized BidirectionalCollection._index(_:offsetBy:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  if (a2 < 0)
  {
    v18 = 0;
    v21[0]._rawBits = result;
    do
    {
      --v18;
      specialized BidirectionalCollection.formIndex(before:)(v21, a3, a4);
    }

    while (v18 > v6);
    return v21[0]._rawBits;
  }

  else if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v7 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = (a4 & 0x4000000000000000) != 0;
    }

    else
    {
      v8 = a3 < 0;
    }

    v9 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((a4 & 0x1000000000000000) != 0)
    {
      v10 = 4 << ((a3 & 0x800000000000000) != 0);
    }

    else
    {
      v10 = 8;
    }

    do
    {
      if ((result & 0xC) == v10)
      {
        v15 = v9;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        v9 = v15;
      }

      v11 = result >> 16;
      if (result >> 16 >= v7)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v16 = v9;
        result = specialized String.UTF16View._foreignIndex(after:)(result);
        v9 = v16;
        goto LABEL_13;
      }

      if (v8)
      {
        result = (result & 0xFFFFFFFFFFFF0000) + 65549;
        goto LABEL_13;
      }

      if ((result & 0xC001) != 0)
      {
        if ((a4 & 0x2000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v17 = v9;
        result = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
        v9 = v17;
        v11 = result >> 16;
        if ((a4 & 0x2000000000000000) == 0)
        {
LABEL_21:
          v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v19 = v9;
            v20 = result;
            v12 = _StringObject.sharedUTF8.getter(a3, a4);
            v9 = v19;
            result = v20;
          }

          v13 = v12[v11];
          if ((v13 & 0x80) == 0)
          {
LABEL_32:
            v14 = 1;
            goto LABEL_33;
          }

          goto LABEL_24;
        }
      }

      v21[0]._rawBits = a3;
      v21[1]._rawBits = v9;
      v13 = *(&v21[0]._rawBits + v11);
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_32;
      }

LABEL_24:
      LODWORD(v14) = __clz(v13 ^ 0xFF) - 24;
      if (v14 != 4)
      {
        v14 = v14;
        goto LABEL_33;
      }

      if ((result & 0xC000) != 0)
      {
        v14 = 4;
LABEL_33:
        result = (result + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_13;
      }

      result = result & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_13:
      --v6;
    }

    while (v6);
  }

  return result;
}

Swift::UInt64 specialized BidirectionalCollection._index(_:offsetBy:)(Swift::UInt64 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    v11 = 0;
    if ((a4 & 0x1000000000000000) != 0)
    {
      v12 = 4 << ((a3 & 0x800000000000000) != 0);
    }

    else
    {
      v12 = 8;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      if ((result & 0xC) == v12)
      {
        v14 = a2;
        v15 = a3;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v14;
        a3 = v15;
        if (!(result >> 14))
        {
          goto LABEL_33;
        }
      }

      else if (!(result >> 14))
      {
        goto LABEL_33;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        if (v13 < result >> 16)
        {
LABEL_33:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v16 = a2;
        v17 = a3;
        result = String.UTF8View._foreignIndex(before:)(result)._rawBits;
        a3 = v17;
        a2 = v16;
      }

      else
      {
        result = (result & 0xFFFFFFFFFFFF0000) - 65532;
      }

      if (--v11 <= a2)
      {
        return result;
      }
    }
  }

  if (a2)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v5 = 4 << ((a3 & 0x800000000000000) != 0);
    }

    else
    {
      v5 = 8;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v6 = a3 & 0xFFFFFFFFFFFFLL;
    }

    do
    {
      while ((result & 0xC) == v5)
      {
        v7 = a2;
        v8 = a3;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v7;
        a3 = v8;
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_14:
        if (v6 <= result >> 16)
        {
          goto LABEL_33;
        }

        v9 = a2;
        v10 = a3;
        result = String.UTF8View._foreignIndex(after:)(result)._rawBits;
        a3 = v10;
        a2 = v9 - 1;
        if (v9 == 1)
        {
          return result;
        }
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t StrideTo.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for StrideToIterator(0, v7, v8, a2);
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
  result = (*(v12 + 16))(a3, v10 + v18, v7);
  *v10 = 0;
  *(v10 + 8) = 0;
  return result;
}

uint64_t StrideToIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, v5, "index value ", 0);
  v7 = v6;
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v48 - v8;
  v56 = *(a1 + 24);
  v9 = v56;
  swift_getAssociatedTypeWitness(0, v56, v5, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v57 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = *(*(swift_getAssociatedConformanceWitness(v9, v5, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v14, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  v20 = *(v5 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v51 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v55 = a1;
  v23 = v3 + *(a1 + 44);
  v53 = v7;
  v24 = *(v20 + 16);
  v49 = *(v7 + 48);
  v50 = v23;
  v59 = &v48 - v25;
  v24();
  v26 = *(a1 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v11, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v16, AssociatedConformanceWitness);
  v28 = v19;
  v29 = v26;
  (*(v14 + 24))(v28, v11, v14);
  v30 = v56;
  v31 = swift_getAssociatedConformanceWitness(v56, v5, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v16) = (*(v31 + 40))(v3 + v26, v13, v11, v31);
  v32 = v11;
  v33 = v30;
  (*(v57 + 8))(v13, v32);
  v34 = *(v55 + 36);
  v35 = v30[1];
  if ((v16 & 1) == 0)
  {
    if (((*(v35 + 3))(v59, v3 + v34, v5) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    (*(v20 + 8))(v59, v5);
    v46 = 1;
    v45 = v58;
    return (*(v20 + 56))(v45, v46, 1, v5);
  }

  if ((*(v35 + 4))(v59, v3 + v34, v5))
  {
    goto LABEL_5;
  }

LABEL_3:
  v36 = v53;
  v37 = v54;
  v38 = v50;
  (*(v52 + 16))(v54, v50, v53);
  v39 = *(v36 + 48);
  v40 = v3 + v29;
  v41 = v51;
  v42 = (v33[7])(v51, *v37, v37[8], &v37[v39], v3, v40, v5, v33);
  v44 = v43;
  (*(v20 + 8))(&v37[v39], v5);
  *v38 = v42;
  *(v38 + 8) = v44 & 1;
  (*(v20 + 40))(v38 + v49, v41, v5);
  v45 = v58;
  (*(v20 + 32))(v58, v59, v5);
  v46 = 0;
  return (*(v20 + 56))(v45, v46, 1, v5);
}

unint64_t specialized BidirectionalCollection._index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (a2 < 0)
  {
    v16 = 0;
    v18[0]._rawBits = result;
    while ((v18[0]._rawBits ^ a3) >= 0x4000)
    {
      --v16;
      specialized BidirectionalCollection.formIndex(before:)(v18, a4, a5);
      if (v16 <= v8)
      {
        return v18[0]._rawBits;
      }
    }

    return 0;
  }

  else if (a2)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v9 = 4 << ((a4 & 0x800000000000000) != 0);
    }

    else
    {
      v9 = 8;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v11 = (a5 & 0x4000000000000000) != 0;
    }

    else
    {
      v11 = a4 < 0;
    }

    do
    {
      if ((result ^ a3) < 0x4000)
      {
        return 0;
      }

      if ((result & 0xC) == v9)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
      }

      v12 = result >> 16;
      if (result >> 16 >= v10)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = specialized String.UTF16View._foreignIndex(after:)(result);
        goto LABEL_13;
      }

      if (v11)
      {
        result = (result & 0xFFFFFFFFFFFF0000) + 65549;
        goto LABEL_13;
      }

      if ((result & 0xC001) != 0)
      {
        if ((a5 & 0x2000000000000000) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
        v12 = result >> 16;
        if ((a5 & 0x2000000000000000) == 0)
        {
LABEL_23:
          v13 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = result;
            v13 = _StringObject.sharedUTF8.getter(a4, a5);
            result = v17;
          }

          v14 = v13[v12];
          if ((v14 & 0x80) == 0)
          {
LABEL_34:
            v15 = 1;
            goto LABEL_35;
          }

          goto LABEL_26;
        }
      }

      v18[0]._rawBits = a4;
      v18[1]._rawBits = a5 & 0xFFFFFFFFFFFFFFLL;
      v14 = *(&v18[0]._rawBits + v12);
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_34;
      }

LABEL_26:
      LODWORD(v15) = __clz(v14 ^ 0xFF) - 24;
      if (v15 != 4)
      {
        v15 = v15;
        goto LABEL_35;
      }

      if ((result & 0xC000) != 0)
      {
        v15 = 4;
LABEL_35:
        result = (result + (v15 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_13;
      }

      result = result & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_13:
      --v8;
    }

    while (v8);
  }

  return result;
}

Swift::UInt64 specialized BidirectionalCollection._index(_:offsetBy:limitedBy:)(Swift::UInt64 result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 < 0)
  {
    v14 = 0;
    if ((a5 & 0x1000000000000000) != 0)
    {
      v15 = 4 << ((a4 & 0x800000000000000) != 0);
    }

    else
    {
      v15 = 8;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v16 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while ((result ^ a3) >= 0x4000)
    {
      if ((result & 0xC) == v15)
      {
        v17 = a2;
        v18 = a3;
        v19 = a4;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v17;
        a3 = v18;
        a4 = v19;
        if (!(result >> 14))
        {
          goto LABEL_37;
        }
      }

      else if (!(result >> 14))
      {
        goto LABEL_37;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        if (v16 < result >> 16)
        {
LABEL_37:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v20 = a2;
        v21 = a3;
        v22 = a4;
        result = String.UTF8View._foreignIndex(before:)(result)._rawBits;
        a4 = v22;
        a3 = v21;
        a2 = v20;
      }

      else
      {
        result = (result & 0xFFFFFFFFFFFF0000) - 65532;
      }

      if (--v14 <= a2)
      {
        return result;
      }
    }

    return 0;
  }

  else if (a2)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v6 = 4 << ((a4 & 0x800000000000000) != 0);
    }

    else
    {
      v6 = 8;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v7 = a4 & 0xFFFFFFFFFFFFLL;
    }

    do
    {
      while (1)
      {
        if ((result ^ a3) < 0x4000)
        {
          return 0;
        }

        if ((result & 0xC) != v6)
        {
          break;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v8;
        a3 = v9;
        a4 = v10;
        if ((a5 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (v7 <= result >> 16)
        {
          goto LABEL_37;
        }

        v11 = a2;
        v12 = a3;
        v13 = a4;
        result = String.UTF8View._foreignIndex(after:)(result)._rawBits;
        a4 = v13;
        a3 = v12;
        a2 = v11 - 1;
        if (v11 == 1)
        {
          return result;
        }
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t Collection._advanceForward(_:by:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a3;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = v13;
  v23 = a6;
  (*(v13 + 16))(v15, a1, v12);
  if (a2)
  {
    v16 = *(swift_getAssociatedConformanceWitness(a5, a4, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v17 = *(v16 + 8);
    while ((v17(v15, v24, v12, v16) & 1) == 0)
    {
      (*(a5 + 192))(v15, a4, a5);
      if (!--a2)
      {
        goto LABEL_6;
      }
    }

    v19 = v22;
    (*(v22 + 8))(v15, v12);
    v20 = 1;
    v18 = v23;
  }

  else
  {
LABEL_6:
    v19 = v22;
    v18 = v23;
    (*(v22 + 32))(v23, v15, v12);
    v20 = 0;
  }

  return (*(v19 + 56))(v18, v20, 1, v12);
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(Swift::UInt64 rawBits, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2 >> 14;
  if (rawBits >> 14 < a2 >> 14)
  {
    v6 = 0;
    v7 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v7) = 1;
    }

    v8 = 4 << v7;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v9 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if ((rawBits & 0xC) == v8)
      {
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
        if ((a4 & 0x1000000000000000) == 0)
        {
LABEL_7:
          rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_8;
        }
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

      if (v9 <= rawBits >> 16)
      {
        goto LABEL_38;
      }

      rawBits = String.UTF8View._foreignIndex(after:)(rawBits)._rawBits;
LABEL_8:
      ++v6;
      if (v5 == rawBits >> 14)
      {
        return v10;
      }
    }
  }

  if (v5 >= rawBits >> 14)
  {
    return 0;
  }

  v10 = 0;
  v11 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  do
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if ((rawBits & 0xC) == v12)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
      if (!(rawBits >> 14))
      {
        goto LABEL_38;
      }
    }

    else if (!(rawBits >> 14))
    {
      goto LABEL_38;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      if (v13 < rawBits >> 16)
      {
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      rawBits = String.UTF8View._foreignIndex(before:)(rawBits)._rawBits;
    }

    else
    {
      rawBits = (rawBits & 0xFFFFFFFFFFFF0000) - 65532;
    }
  }

  while (v5 != rawBits >> 14);
  return v10;
}

uint64_t BidirectionalCollection._distance(from:to:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v28 = a4;
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  (*(v10 + 16))(&v26 - v11, a1, v9);
  v29 = v7;
  v30 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  if ((*(AssociatedConformanceWitness + 16))(v12, a2, v9, AssociatedConformanceWitness))
  {
    v14 = *(*(AssociatedConformanceWitness + 8) + 8);
    v28 = *(AssociatedConformanceWitness + 8);
    v15 = v14;
    result = (v14)(v12, a2, v9);
    if ((result & 1) == 0)
    {
      v17 = a2;
      v27 = v10;
      v18 = 0;
      v19 = v29[24];
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        (v19)(v12, v30, v29);
        result = v15(v12, v17, v9, v28);
        ++v18;
        if (result)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  else if ((*(AssociatedConformanceWitness + 40))(v12, a2, v9, AssociatedConformanceWitness))
  {
    v21 = *(AssociatedConformanceWitness + 8);
    v22 = *(v21 + 8);
    result = v22(v12, a2, v9, v21);
    if ((result & 1) == 0)
    {
      v23 = a2;
      v27 = v10;
      v20 = 0;
      v24 = *(v28 + 40);
      while (!__OFSUB__(v20--, 1))
      {
        v24(v12, v30, v28);
        result = v22(v12, v23, v9, v21);
        if (result)
        {
LABEL_13:
          v10 = v27;
          goto LABEL_14;
        }
      }

      goto LABEL_16;
    }
  }

  v20 = 0;
LABEL_14:
  (*(v10 + 8))(v12, v9);
  return v20;
}

uint64_t BidirectionalCollection<>.popLast()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v89 = a3;
  v91 = a2;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v83 = v9;
  v81 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v77 = &v73 - v13;
  v87 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v86 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v73 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v19);
  v79 = *(v20 - 8);
  v80 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v78 = &v73 - v22;
  v23 = *(a1 - 1);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v73 - v27;
  swift_getAssociatedTypeWitness(255, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v30 = v29;
  v33 = type metadata accessor for Optional(0, v29, v31, v32);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v73 - v35;
  v95 = v30;
  v94 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v73 - v37;
  v39 = *(v6 + 104);
  v92 = a1;
  v93 = v4;
  v88 = v6;
  if (v39(a1, v6))
  {
    v40 = v95;
    v41 = *(v94 + 56);
    v42 = v89;

    return v41(v42, 1, 1, v40);
  }

  else
  {
    BidirectionalCollection.last.getter(v92, v91, v36);
    if ((*(v94 + 48))(v36, 1, v95) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v44 = *(v94 + 32);
    v74 = v38;
    v75 = v44;
    v76 = v94 + 32;
    v44(v38, v36, v95);
    v45 = *(v23 + 16);
    v73 = v28;
    v47 = v92;
    v46 = v93;
    v45(v28, v93, v92);
    v48 = v88;
    (*(v88 + 64))(v47, v88);
    v45(v26, v46, v47);
    v49 = v84;
    (*(v48 + 72))(v47, v48);
    v51 = *(v23 + 8);
    v50 = v23 + 8;
    (v51)(v46, v47);
    v52 = v86;
    v91[4](v49, v47);
    v53 = v87;
    v84 = *(v87 + 8);
    (v84)(v49, v8);
    v54 = v26;
    v55 = v90;
    v56 = v47;
    v57 = v52;
    v91 = v51;
    (v51)(v54, v56);
    if (((*(AssociatedConformanceWitness + 24))(v55, v52, v8) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    AssociatedConformanceWitness = v50;
    v58 = *(v53 + 32);
    v59 = v77;
    v58(v77, v55, v8);
    v60 = v83;
    v58(&v59[*(v83 + 48)], v57, v8);
    v61 = v81;
    v62 = v82;
    (*(v81 + 16))(v82, v59, v60);
    v63 = *(v60 + 48);
    v64 = v78;
    v58(v78, v62, v8);
    v65 = &v62[v63];
    v66 = v84;
    (v84)(v65, v8);
    (*(v61 + 32))(v62, v59, v60);
    v67 = *(v60 + 48);
    v68 = v80;
    v58(&v64[*(v80 + 36)], &v62[v67], v8);
    v66(v62, v8);
    v69 = v92;
    v70 = v73;
    (*(v88 + 88))(v64, v92);
    (*(v79 + 8))(v64, v68);
    (v91)(v70, v69);
    v71 = v89;
    v72 = v95;
    v75(v89, v74, v95);
    return (*(v94 + 56))(v71, 0, 1, v72);
  }
}

unint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v6._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v5 | (v2 << 16)))._rawBits;
    if (!(v6._rawBits >> 14))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v6)._rawBits;
      v20._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v20._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v24 + (v6._rawBits >> 16) - 1) & 0xC0) == 0x80)
        {
          v13 = &v24 + (v6._rawBits >> 16) - 2;
          v11 = 1;
          do
          {
            ++v11;
            v14 = *v13--;
          }

          while ((v14 & 0xC0) == 0x80);
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          rawBits = v6._rawBits;
          v7 = _StringObject.sharedUTF8.getter(a1, a2);
          v6._rawBits = rawBits;
        }

        v8 = 0;
        v9 = v7 + (v6._rawBits >> 16) - 1;
        do
        {
          v10 = *(v9 + v8--) & 0xC0;
        }

        while (v10 == 128);
        v11 = -v8;
      }

      v16._rawBits = _StringGuts.validateScalarIndex(_:)(((v6._rawBits - (v11 << 16)) & 0xFFFFFFFFFFFF0000 | 5))._rawBits >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        v17 = &v24;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v17 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v21 = a2;
        v22 = v16._rawBits;
        v17 = _StringObject.sharedUTF8.getter(a1, v21);
        v16._rawBits = v22;
      }

      value = _decodeScalar(_:startingAt:)(v17, v15._rawBits, v16._rawBits);
    }
  }

  else
  {
    value = 0;
  }

  LOBYTE(v24) = v2 == 0;
  return value | ((v2 == 0) << 32);
}

unint64_t specialized BidirectionalCollection.last.getter(unint64_t a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v4 = a1 >> 14;
  v5 = a2._rawBits >> 14;
  if (a1 >> 14 == a2._rawBits >> 14)
  {
    value = 0;
    goto LABEL_3;
  }

  v10._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;
  if (!(v10._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v10)._rawBits;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v28 = a3;
      v29 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v28 + (v10._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v17 = &v28 + (v10._rawBits >> 16) - 2;
        v16 = 1;
        do
        {
          ++v16;
          v18 = *v17--;
        }

        while ((v18 & 0xC0) == 0x80);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v27 = v10._rawBits;
        v12 = _StringObject.sharedUTF8.getter(a3, a4);
        v10._rawBits = v27;
      }

      v13 = 0;
      v14 = v12 + (v10._rawBits >> 16) - 1;
      do
      {
        v15 = *(v14 + v13--) & 0xC0;
      }

      while (v15 == 128);
      v16 = -v13;
    }

    rawBits = (v10._rawBits - (v16 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  v20 = (a4 & 0x1000000000000000) == 0 || (a3 & 0x800000000000000) != 0;
  v21 = 4 << v20;
  if ((rawBits & 0xC) == v21 || (rawBits & 1) == 0)
  {
    if ((rawBits & 0xC) == v21)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    }

    if (rawBits >> 14 >= v4 && rawBits >> 14 < v5)
    {
      if ((rawBits & 1) == 0)
      {
        rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      }

      goto LABEL_34;
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (rawBits >> 14 < v4 || rawBits >> 14 >= v5)
  {
    goto LABEL_38;
  }

LABEL_34:
  if ((a4 & 0x1000000000000000) != 0)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    v23 = rawBits >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v28 = a3;
      v29 = a4 & 0xFFFFFFFFFFFFFFLL;
      v24 = &v28;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v24 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = a4;
      v26 = rawBits >> 16;
      v24 = _StringObject.sharedUTF8.getter(a3, v25);
      v23 = v26;
    }

    value = _decodeScalar(_:startingAt:)(v24, v11._rawBits, v23);
  }

LABEL_3:
  LOBYTE(v28) = v4 == v5;
  return value | ((v4 == v5) << 32);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6._rawBits = String.index(before:)((v5 | (v2 << 16)))._rawBits;
  return String.subscript.getter(v6, a1, a2);
}

uint64_t BidirectionalCollection.last.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13];
  if ((*(v6 + 104))(a1, v6))
  {
    swift_getAssociatedTypeWitness(0, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v16 = *(*(v15 - 8) + 56);

    return v16(a3, 1, 1, v15);
  }

  else
  {
    (*(v6 + 72))(a1, v6);
    (*(a2 + 32))(v12, a1, a2);
    v18 = *(v9 + 8);
    v18(v12, v8);
    v19 = (*(v6 + 80))(v25, v14, a1, v6);
    v21 = v20;
    swift_getAssociatedTypeWitness(0, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v23 = v22;
    v24 = *(v22 - 8);
    (*(v24 + 16))(a3, v21, v22);
    v19(v25, 0);
    v18(v14, v8);
    return (*(v24 + 56))(a3, 0, 1, v23);
  }
}

uint64_t BidirectionalCollection<>.removeLast()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v7, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = v66 - v15;
  v78 = *(v9 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v77 = v66 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a1, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v71 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v21);
  v69 = *(v71 - 8);
  v22 = MEMORY[0x1EEE9AC00](v71);
  v67 = v66 - v23;
  v24 = *(a1 - 1);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v66 - v28;
  v80 = v7;
  swift_getAssociatedTypeWitness(255, *(v7 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v31 = v30;
  v34 = type metadata accessor for Optional(0, v30, v32, v33);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = v66 - v35;
  v79 = a1;
  v37 = a1;
  v38 = a2;
  BidirectionalCollection.last.getter(v37, a2, v66 - v35);
  v39 = *(v31 - 8);
  if ((*(v39 + 48))(v36, 1, v31) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v39 + 32))(a3, v36, v31);
  v40 = *(v24 + 16);
  v66[0] = v29;
  v41 = v29;
  v42 = v24;
  v43 = v79;
  v40(v41, v3, v79);
  v44 = v80;
  v45 = v77;
  (*(v80 + 64))(v43, v80);
  v40(v27, v3, v43);
  v46 = v75;
  (*(v44 + 72))(v43, v44);
  v49 = *(v42 + 8);
  v47 = (v42 + 8);
  v48 = v49;
  v66[1] = v3;
  v49(v3, v43);
  v50 = v38;
  v51 = *(v38 + 32);
  v52 = v76;
  v51(v46, v43, v50);
  v75 = *(v78 + 1);
  (v75)(v46, v9);
  v49(v27, v43);
  if (((*(AssociatedConformanceWitness + 24))(v45, v52, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = *(v78 + 4);
  v78 = v48;
  v54 = v68;
  v53(v68, v77, v9);
  v55 = v72;
  v53(&v54[*(v72 + 48)], v52, v9);
  v77 = v47;
  v56 = v73;
  v57 = v70;
  (*(v73 + 16))(v70, v54, v55);
  v58 = *(v55 + 48);
  v59 = v67;
  v53(v67, v57, v9);
  v60 = &v57[v58];
  v61 = v75;
  (v75)(v60, v9);
  (*(v56 + 32))(v57, v54, v55);
  v62 = v71;
  v53(&v59[*(v71 + 36)], &v57[*(v55 + 48)], v9);
  v61(v57, v9);
  v63 = v79;
  v64 = v66[0];
  (*(v80 + 88))(v59, v79);
  (*(v69 + 8))(v59, v62);
  return v78(v64, v63);
}

uint64_t BidirectionalCollection<>.removeLast(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v78 = a3;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v5, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = v8;
  v74 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v61 - v13;
  v14 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a2, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v15);
  v73 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v71 = &v61 - v18;
  v80 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Optional(0, v7, v20, v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v77 = &v61 - v24;
  v81 = *(v7 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v75 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v61 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v61 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  if (!v35)
  {
    return result;
  }

  if (v35 < 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = v36;
  v63 = result;
  v70 = &v61 - v34;
  v65 = v16;
  v66 = v12;
  v67 = v9;
  v37 = v35;
  (*(v5 + 72))(a2, v5);
  v38 = -v37;
  v39 = v3;
  v68 = *(v14 + 64);
  v69 = v14 + 64;
  v68(a2, v14);
  v40 = v77;
  (*(v78 + 56))(v32, v38, v29, a2);
  v41 = v81;
  v42 = v81 + 8;
  v43 = *(v81 + 8);
  v43(v29, v7);
  v78 = v42;
  v64 = v43;
  v43(v32, v7);
  if ((*(v41 + 48))(v40, 1, v7) == 1)
  {
    (*(v62 + 8))(v40, v63);
    goto LABEL_7;
  }

  v44 = *(v41 + 32);
  v81 = v41 + 32;
  v45 = v70;
  v44(v70, v40, v7);
  v46 = v80;
  (*(v80 + 16))(v79, v39, a2);
  v47 = v75;
  v68(a2, v14);
  v49 = *(v46 + 8);
  v48 = v46 + 8;
  v77 = v49;
  (v49)(v39, a2);
  if (((*(AssociatedConformanceWitness + 24))(v47, v45, v7) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = a2;
  v51 = v72;
  v75 = v39;
  AssociatedConformanceWitness = v50;
  v69 = v14;
  v44(v72, v47, v7);
  v52 = v67;
  v44(&v51[*(v67 + 48)], v45, v7);
  v80 = v48;
  v53 = v74;
  v54 = v66;
  (*(v74 + 16))(v66, v51, v52);
  v55 = *(v52 + 48);
  v56 = v71;
  v44(v71, v54, v7);
  v57 = v64;
  v64(&v54[v55], v7);
  (*(v53 + 32))(v54, v51, v52);
  v58 = v65;
  v44(&v56[*(v65 + 36)], &v54[*(v52 + 48)], v7);
  v57(v54, v7);
  v59 = AssociatedConformanceWitness;
  v60 = v79;
  (*(v69 + 88))(v56, AssociatedConformanceWitness);
  (*(v73 + 8))(v56, v58);
  return (v77)(v60, v59);
}

uint64_t static SignedNumeric.- prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  return (*(a3 + 24))(a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  return (*(a3 + 24))(a2, a3);
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(a3, -a1, a2);
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 > a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t BidirectionalCollection.dropLast(_:)@<X0>(void (*a1)(void, void)@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v74 = a4;
  v79 = a3;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v73 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v66 - v14;
  v84 = v6;
  v82 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v15);
  v72 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v66 - v17;
  v20 = type metadata accessor for Optional(0, v8, v18, v19);
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v83 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  v26 = *(v8 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v78 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v66 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v66 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v75 = &v66 - v35;
  if ((v81 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = v81;
  v67 = v16;
  v68 = v13;
  v69 = v10;
  v37 = v84;
  v38 = v82;
  (v84[9])(v82, v84);
  v81 = v37[8];
  (v81)(v38, v37);
  v79[7](v34, -v36, v31, v38);
  v39 = (v26 + 8);
  v40 = *(v26 + 8);
  (v40)(v31, v8);
  v79 = v40;
  (v40)(v34, v8);
  v42 = v76;
  v41 = v77;
  v43 = v83;
  (*(v76 + 32))(v83, v25, v77);
  v44 = (*(v26 + 48))(v43, 1, v8);
  v66 = v26;
  if (v44 == 1)
  {
    v45 = v75;
    v46 = v84;
    (v81)(v38, v84);
    (*(v42 + 8))(v83, v41);
    v47 = v4;
    v48 = v38;
    v49 = v46;
    v50 = v45;
  }

  else
  {
    v50 = v75;
    (*(v26 + 32))(v75, v83, v8);
    v47 = v4;
    v48 = v38;
    v49 = v84;
  }

  v51 = v78;
  (v81)(v48, v49);
  if (((*(AssociatedConformanceWitness + 24))(v51, v50, v8) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v81 = v39;
  v52 = *(v66 + 32);
  v83 = v47;
  v53 = v70;
  v52(v70, v51, v8);
  v54 = v69;
  v52(&v53[*(v69 + 48)], v50, v8);
  v55 = v73;
  v56 = v68;
  (*(v73 + 16))(v68, v53, v54);
  v57 = *(v54 + 48);
  v58 = v71;
  v52(v71, v56, v8);
  v59 = &v56[v57];
  v60 = v79;
  (v79)(v59, v8);
  (*(v55 + 32))(v56, v53, v54);
  v61 = *(v54 + 48);
  v62 = v67;
  v52(&v58[*(v67 + 36)], &v56[v61], v8);
  (v60)(v56, v8);
  v63 = v83;
  v64 = v82;
  (v84[11])(v58, v82);
  (*(*(v64 - 1) + 8))(v63, v64);
  return (*(v72 + 8))(v58, v62);
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(a3, -a1, a2);
  if (v6)
  {
    result = a2;
  }

  if (result > a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t BidirectionalCollection.suffix(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v82 = a3;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v77 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v66 - v15;
  v85 = v7;
  v86 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v17);
  v76 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v66 - v19;
  v22 = type metadata accessor for Optional(0, v9, v20, v21);
  v79 = *(v22 - 8);
  v80 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v84 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = *(v9 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v81 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v66 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v66 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v83 = &v66 - v36;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v73 = AssociatedConformanceWitness;
  v68 = v14;
  v69 = v18;
  v70 = v11;
  v38 = v85;
  v37 = v86;
  v39 = v35;
  v71 = v85[9];
  v72 = v85 + 9;
  (v71)(v86, v85);
  v67 = v38[8];
  (v67)(v37, v38);
  (*(v82 + 7))(v34, -a1, v31, v37);
  v40 = *(v26 + 8);
  v40(v31, v9);
  v82 = v40;
  v40(v34, v9);
  v42 = v79;
  v41 = v80;
  v43 = v84;
  (*(v79 + 32))(v84, v39, v80);
  v44 = v26;
  if ((*(v26 + 48))(v43, 1, v9) == 1)
  {
    v46 = v85;
    v45 = v86;
    (v67)(v86, v85);
    (*(v42 + 8))(v84, v41);
    v47 = v4;
    v48 = v45;
    v49 = v46;
    v50 = v83;
  }

  else
  {
    v50 = v83;
    (*(v26 + 32))(v83, v84, v9);
    v47 = v4;
    v49 = v85;
    v48 = v86;
  }

  v51 = v81;
  (v71)(v48, v49);
  if (((*(v73 + 24))(v50, v51, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v52 = *(v44 + 32);
  v53 = v74;
  v52(v74, v50, v9);
  v84 = v47;
  v54 = v70;
  v52(&v53[*(v70 + 48)], v51, v9);
  v55 = v77;
  v56 = v68;
  (*(v77 + 16))(v68, v53, v54);
  v57 = *(v54 + 48);
  v58 = v75;
  v52(v75, v56, v9);
  v59 = &v56[v57];
  v60 = v82;
  v82(v59, v9);
  (*(v55 + 32))(v56, v53, v54);
  v61 = *(v54 + 48);
  v62 = v69;
  v52(&v58[*(v69 + 36)], &v56[v61], v9);
  v60(v56, v9);
  v63 = v84;
  v64 = v86;
  (v85[11])(v58, v86);
  (*(*(v64 - 1) + 8))(v63, v64);
  return (*(v76 + 8))(v58, v62);
}

unint64_t static UInt./ infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

unint64_t static UInt.% infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

uint64_t static FixedWidthInteger.&* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  return (*(a2 + 96))(a3, a1);
}

{
  return (*(a2 + 96))(a3, a1);
}

Swift::Bool __swiftcall _UnsafeBitset.uncheckedInsert(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = 1 << a1;
  v4 = *(v1 + v2);
  result = (v4 & (1 << a1)) == 0;
  *(v1 + v2) = v4 | v3;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.uncheckedInsert(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) == 0;
  *v1 |= v2;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.uncheckedRemove(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = 1 << a1;
  v4 = *(v1 + v2);
  result = (v4 & (1 << a1)) != 0;
  *(v1 + v2) = v4 & ~v3;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.uncheckedRemove(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) != 0;
  *v1 &= ~v2;
  return result;
}

unint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(unint64_t result, unint64_t a2, int64x2_t *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    if (a2 < 4)
    {
      v3 = 0;
LABEL_8:
      v7 = a2 - v3;
      v8 = a3 + v3;
      do
      {
        *v8++ = result;
        --v7;
      }

      while (v7);
      return result;
    }

    v3 = a2 & 0x7FFFFFFFFFFFFFFCLL;
    v4 = vdupq_n_s64(result);
    v5 = a3 + 1;
    v6 = a2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v5[-1] = v4;
      *v5 = v4;
      v5 += 2;
      v6 -= 4;
    }

    while (v6);
    if (v3 != a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a2;
  if (a2)
  {
    v7 = result;
    v8 = *(a4 - 8);
    v9 = *(v8 + 24);
    v10 = *(v8 + 72);
    do
    {
      result = v9(a3, v7, a4);
      a3 += v10;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _UnsafeBitset.count.getter(int8x8_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    goto LABEL_7;
  }

  v2 = 0;
  if (a2)
  {
    while (1)
    {
      v3 = *a1++;
      v4 = vcnt_s8(v3);
      v4.i16[0] = vaddlv_u8(v4);
      v5 = __OFADD__(v2, v4.u32[0]);
      v2 += v4.u32[0];
      if (v5)
      {
        break;
      }

      if (!--a2)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v2;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Iterator.next()()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = 0;
    v0[3] = (v1 - 1) & v1;
    v3 = __clz(__rbit64(v1)) | (v0[2] << 6);
  }

  else
  {
    v4 = v0[1];
    v5 = v0[2];
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v4)
      {
        v3 = 0;
        v2 = 1;
        goto LABEL_10;
      }

      v0[2] = v6;
      v7 = *(*v0 + 8 * v6);
      v0[3] = v7;
      ++v5;
      if (v7)
      {
        v2 = 0;
        v0[3] = (v7 - 1) & v7;
        v3 = __clz(__rbit64(v7)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

LABEL_10:
  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Word.next()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = __clz(__rbit64(v1));
    *v0 = (v1 - 1) & v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 == 0;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Iterator@<X0>(uint64_t a1@<X8>)
{
  v3 = _UnsafeBitset.Iterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

void protocol witness for Sequence.makeIterator() in conformance _UnsafeBitset(uint64_t **a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = v4;
}

uint64_t Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = a3(v3, a1, a2);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v5;
}

uint64_t static FixedWidthInteger.&<< infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v13);
  (*(*(a5 + 8) + 96))(v13, a4, a6, a3);
  (*(a5 + 216))(a1, v17, a3, a5);
  return (*(v15 + 8))(v17, a3);
}

unint64_t _UnsafeBitset.Word.maximum.getter(unint64_t a1)
{
  v1 = 63 - __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t static UnsignedInteger<>.max.getter(const char *a1)
{
  v2 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 8);
  v7 = *(*(v6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v7, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a1, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v9, AssociatedConformanceWitness);
  (*(v7 + 24))(v11, a1, v7);
  (*(v6 + 184))(v4, a1, v6);
  return (*(v2 + 8))(v4, a1);
}

uint64_t _ss6UInt64Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Word(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = __clz(__rbit64(v2));
    *v1 = (v2 - 1) & v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(char *a1, uint64_t a2, char *__src, uint64_t a4, uint64_t (*a5)(char *, uint64_t))
{
  if (a4 < 0 || (&a1[8 * a4] > __src ? (v5 = &__src[8 * a4] > a1) : (v5 = 0), v5))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(a1, __src, 8 * a4);
  return a5(a1, a2);
}

uint64_t static FixedWidthInteger.>> infix<A>(_:_:)@<X0>(uint64_t a1@<X1>, const char *a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v6 = a5;
  v8 = a3;
  v150 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v150, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v149 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v148 = &v145 - v13;
  v160 = *(a4 + 8);
  v163 = *(*(v160 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v163, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v158 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v145 - v16;
  v161 = *(v8 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v151 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v153 = &v145 - v21;
  v22 = *(a2 - 1);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v157 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v162 = &v145 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v164 = &v145 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v168 = &v145 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v22[2];
  v159 = &v145 - v32;
  v31();
  v33 = *(a4 + 56);
  v165 = a4;
  v166 = v33;
  v167 = a4 + 56;
  v34 = v33(a2, a4);
  v35 = -v34;
  if (__OFSUB__(0, v34))
  {
    __break(1u);
LABEL_65:
    v146 = v22;
    (a4)(v164, a2);
    v136 = v165;
    v137 = v166(a2, v165);
    if (!__OFSUB__(0, v137))
    {
      if (-v137 < v6)
      {
        v138 = (a4)(v35, a2);
        v169[0] = -v6;
        v139 = *(v8 + 96);
        v142 = lazy protocol witness table accessor for type Int and conformance Int(v138, v140, v141);
        v133 = v162;
        v139(v169, &type metadata for Int, v142, a2, v8);
        v134 = v168;
        (*(v136 + 216))(v168, v133, a2, v136);
        goto LABEL_63;
      }

      goto LABEL_73;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    (a4)(v168, a2);
    v143 = v155;
    v144 = v35;
    return (v161)(v143, v144, a2);
  }

  v155 = a6;
  a4 = *(v6 + 64);
  v36 = (a4)(v8, v6);
  v156 = v17;
  v154 = a4;
  if (v36)
  {
    v152 = *(v6 + 128);
    v37 = v152(v8, v6);
    if (v37 < 64)
    {
      v40 = (*(v6 + 120))(v8, v6);
      v41 = v165;
      if (v40 >= v35)
      {
        goto LABEL_18;
      }

LABEL_16:
      v55 = v166(a2, v41);
      v6 = -v55;
      if (__OFSUB__(0, v55))
      {
        __break(1u);
        goto LABEL_71;
      }

      v35 = v168;
      goto LABEL_30;
    }

    goto LABEL_8;
  }

  a4 = (a4)(v8, v6);
  v152 = *(v6 + 128);
  v37 = v152(v8, v6);
  if ((a4 & 1) == 0)
  {
    v41 = v165;
    if (v37 >= 64)
    {
      if (v35 > 0)
      {
        v169[0] = v35;
        a4 = v6 + 96;
        v35 = *(v6 + 96);
        v45 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
        v46 = v153;
        (v35)(v169, &type metadata for Int, v45, v8, v6);
        v47 = (*(*(*(v6 + 32) + 8) + 16))(a1, v46, v8);
        v48 = v46;
        v41 = v165;
        (*(v161 + 8))(v48, v8);
        if (v47)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_18;
    }

LABEL_15:
    if ((*(v6 + 120))(v8, v6) >= v35)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v37 <= 64)
  {
    v49 = v149;
    a4 = v150;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v150, v8, v149, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v51 = *(AssociatedConformanceWitness + 8);
    v147 = a1;
    v52 = v148;
    v51(&unk_18071E0A8, 256, v49, AssociatedConformanceWitness);
    v53 = v153;
    v54 = v52;
    a1 = v147;
    (*(a4 + 24))(v54, v8, a4);
    LOBYTE(v49) = (*(*(*(v6 + 32) + 8) + 16))(a1, v53, v8);
    (*(v161 + 8))(v53, v8);
    v41 = v165;
    if (v49)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_8:
  v169[0] = v35;
  a4 = v6 + 96;
  v35 = *(v6 + 96);
  v42 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
  v43 = v153;
  (v35)(v169, &type metadata for Int, v42, v8, v6);
  v44 = (*(*(*(v6 + 32) + 8) + 16))(a1, v43, v8);
  (*(v161 + 8))(v43, v8);
  v41 = v165;
  if (v44)
  {
    goto LABEL_16;
  }

LABEL_18:
  v56 = v166(a2, v41);
  v57 = v154(v8, v6);
  v147 = v6 + 128;
  v58 = v152(v8, v6);
  if (v57)
  {
    if (v58 <= 64)
    {
      v66 = (*(v6 + 120))(v8, v6);
      v35 = v168;
      if (v56 >= v66)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v169[0] = v56;
      v61 = *(v6 + 96);
      v62 = lazy protocol witness table accessor for type Int and conformance Int(v58, v59, v60);
      v63 = v153;
      v61(v169, &type metadata for Int, v62, v8, v6);
      v64 = (*(*(*(v6 + 32) + 8) + 16))(v63, a1, v8);
      v65 = v63;
      v41 = v165;
      (*(v161 + 8))(v65, v8);
      v35 = v168;
      if ((v64 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

  v35 = v168;
  if (v58 < 64)
  {
    if (v56 >= (*(v6 + 120))(v8, v6))
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v56 < 0 || (v169[0] = v56, v67 = *(v6 + 96), v68 = lazy protocol witness table accessor for type Int and conformance Int(v58, v59, v60), v69 = v153, v67(v169, &type metadata for Int, v68, v8, v6), v35 = v168, v70 = (*(*(*(v6 + 32) + 8) + 16))(v69, a1, v8), v71 = v69, v41 = v165, (*(v161 + 8))(v71, v8), (v70 & 1) != 0))
  {
LABEL_29:
    v6 = v166(a2, v41);
LABEL_30:
    v72 = v163;
    goto LABEL_56;
  }

LABEL_31:
  v73 = v151;
  (*(v161 + 16))(v151, a1, v8);
  v74 = v154(v8, v6);
  v75 = v152;
  if ((v74 & 1) == 0 || v152(v8, v6) < 65)
  {
    goto LABEL_45;
  }

  v76 = v154;
  if ((v154(v8, v6) & 1) == 0)
  {
    v146 = v22;
    v85 = v73;
    v86 = v76(v8, v6);
    v87 = v85;
    v88 = v75(v8, v6);
    if ((v86 & 1) == 0)
    {
      v75 = v152;
      v73 = v85;
      v22 = v146;
      if (v88 >= 64)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (v88 <= 64)
    {
      v95 = v149;
      v96 = v150;
      v97 = swift_getAssociatedConformanceWitness(v150, v8, v149, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v98 = v148;
      (*(v97 + 8))(&unk_18071E0A8, 256, v95, v97);
      v99 = v153;
      (v96[3])(v98, v8, v96);
      v73 = v87;
      LOBYTE(v95) = (*(*(*(v6 + 32) + 8) + 16))(v87, v99, v8);
      (*(v161 + 8))(v99, v8);
      v41 = v165;
      v75 = v152;
      v22 = v146;
      if ((v95 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v169[0] = 0x8000000000000000;
      v91 = *(v6 + 96);
      v92 = lazy protocol witness table accessor for type Int and conformance Int(v88, v89, v90);
      v93 = v153;
      v91(v169, &type metadata for Int, v92, v8, v6);
      v73 = v85;
      v94 = (*(*(*(v6 + 32) + 8) + 16))(v85, v93, v8);
      (*(v161 + 8))(v93, v8);
      v41 = v165;
      v75 = v152;
      v22 = v146;
      if ((v94 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

LABEL_49:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v77 = v75(v8, v6);
  if (v77 < 64)
  {
LABEL_44:
    (*(v6 + 120))(v8, v6);
    goto LABEL_45;
  }

  v169[0] = 0x8000000000000000;
  v146 = v22;
  v80 = *(v6 + 96);
  v81 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
  v82 = v153;
  v80(v169, &type metadata for Int, v81, v8, v6);
  v22 = v146;
  v75 = v152;
  v83 = (*(*(*(v6 + 32) + 8) + 16))(v73, v82, v8);
  v84 = v82;
  v41 = v165;
  (*(v161 + 8))(v84, v8);
  if (v83)
  {
    goto LABEL_49;
  }

LABEL_45:
  v152 = (v6 + 64);
  v100 = v75(v8, v6);
  v101 = v75;
  v72 = v163;
  if (v100 <= 64 && (v101(v8, v6) != 64 || (v154(v8, v6) & 1) != 0))
  {
    goto LABEL_55;
  }

  v146 = v22;
  v102 = v154(v8, v6);
  v103 = v101(v8, v6);
  if (v102)
  {
    if (v103 >= 65)
    {
      goto LABEL_48;
    }
  }

  else if (v103 >= 64)
  {
LABEL_48:
    v169[0] = 0x7FFFFFFFFFFFFFFFLL;
    v106 = *(v6 + 96);
    v107 = lazy protocol witness table accessor for type Int and conformance Int(v103, v104, v105);
    v108 = v153;
    v106(v169, &type metadata for Int, v107, v8, v6);
    v73 = v151;
    v109 = (*(*(*(v6 + 32) + 8) + 16))(v108, v151, v8);
    v110 = v108;
    v41 = v165;
    (*(v161 + 8))(v110, v8);
    v22 = v146;
    if (v109)
    {
      goto LABEL_49;
    }

    goto LABEL_55;
  }

  v73 = v151;
  (*(v6 + 120))(v8, v6);
  v22 = v146;
LABEL_55:
  v6 = (*(v6 + 120))(v8, v6);
  (*(v161 + 8))(v73, v8);
  v35 = v168;
LABEL_56:
  a4 = v22[4];
  (a4)(v35, v159, a2);
  v8 = v160;
  v111 = (*(v160 + 64))(a2, v160);
  v161 = a4;
  if (v111)
  {
    v112 = v166(a2, v41);
    if (!__OFSUB__(v112, 1))
    {
      v169[0] = v112 - 1;
      v115 = *(v8 + 96);
      v116 = lazy protocol witness table accessor for type Int and conformance Int(v112, v113, v114);
      v117 = v22;
      v118 = v41;
      v119 = v162;
      v115(v169, &type metadata for Int, v116, a2, v8);
      (*(v118 + 200))(v168, v119, a2, v118);
      v120 = v117[1];
      v22 = v117;
      v72 = v163;
      v120(v119, a2);
      v121 = v158;
      v122 = swift_getAssociatedConformanceWitness(v72, a2, v158, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v123 = v156;
      goto LABEL_60;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v124 = v158;
  v122 = swift_getAssociatedConformanceWitness(v72, a2, v158, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v123 = v156;
  (*(v122 + 8))(&unk_18071E0A8, 256, v124, v122);
  (v72[3])(v123, a2, v72);
  v121 = v124;
LABEL_60:
  (*(v122 + 8))(&unk_18071E0A8, 256, v121, v122);
  v35 = v157;
  (v72[3])(v123, a2, v72);
  v125 = v22[1];
  ++v22;
  a4 = v125;
  if (v6 < 0)
  {
    goto LABEL_65;
  }

  (a4)(v35, a2);
  v126 = v165;
  if (v6 < v166(a2, v165))
  {
    v127 = (a4)(v164, a2);
    v169[0] = v6;
    v128 = *(v8 + 96);
    v131 = lazy protocol witness table accessor for type Int and conformance Int(v127, v129, v130);
    v132 = v126;
    v133 = v162;
    v128(v169, &type metadata for Int, v131, a2, v8);
    v134 = v168;
    (*(v132 + 200))(v168, v133, a2, v132);
LABEL_63:
    (a4)(v133, a2);
    return (a4)(v134, a2);
  }

  (a4)(v168, a2);
  v143 = v155;
  v144 = v164;
  return (v161)(v143, v144, a2);
}

BOOL static Bool.random()()
{
  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  return (__buf & 0x20000) == 0;
}

uint64_t Bool.description.getter(char a1)
{
  if (a1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Bool()
{
  if (*v0)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Bool()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Bool(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Bool_optional __swiftcall Bool.init(_:)(Swift::String a1)
{
  if (a1._countAndFlagsBits == 1702195828 && a1._object == 0xE400000000000000)
  {
    object = a1._object;
LABEL_11:
    object;
    return 1;
  }

  if ((~a1._object & 0x6000000000000000) == 0)
  {
    if (a1._countAndFlagsBits != 0x65736C6166 || a1._object != 0xE500000000000000)
    {
      a1._object;
      return 2;
    }

    goto LABEL_16;
  }

  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = a1._object;
  if (_stringCompareInternal(_:_:expecting:)(a1._countAndFlagsBits, a1._object, 0x65757274uLL, 0xE400000000000000, 0))
  {
    object = v5;
    goto LABEL_11;
  }

  a1._object = v5;
  if (countAndFlagsBits == 0x65736C6166 && v5 == 0xE500000000000000)
  {
LABEL_16:
    a1._object;
    return 0;
  }

  v6 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, v5, 0x65736C6166uLL, 0xE500000000000000, 0);
  v5;
  result.value = 0;
  if ((v6 & 1) == 0)
  {
    return 2;
  }

  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Bool(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 1702195828 && a2 == 0xE400000000000000)
  {
    v6 = a2;
    goto LABEL_11;
  }

  if ((~a2 & 0x6000000000000000) != 0)
  {
    v8 = a2;
    if ((_stringCompareInternal(_:_:expecting:)(a1, a2, 0x65757274uLL, 0xE400000000000000, 0) & 1) == 0)
    {
      a2 = v8;
      if (a1 != 0x65736C6166 || v8 != 0xE500000000000000)
      {
        v9 = _stringCompareInternal(_:_:expecting:)(a1, v8, 0x65736C6166uLL, 0xE500000000000000, 0);
        v8;
        v5 = 0;
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_16:
      a2;
      v5 = 0;
      goto LABEL_17;
    }

    v6 = v8;
LABEL_11:
    v6;
    v5 = 1;
    goto LABEL_17;
  }

  if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {
    goto LABEL_16;
  }

  a2;
LABEL_9:
  v5 = 2;
LABEL_17:
  *a3 = v5;
}

uint64_t _SwiftCreateBridgedArray_DoNotCall(values:numValues:)(char *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  if ((result & 0x8000000000000000) == 0 && (result & 0x4000000000000000) == 0)
  {
    if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
    {
      v6 = result;
      swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, v3);
      result = v6;
    }

    if (!_bridgeInitializedSuccessfully)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    _orphanedFoundationSubclassesReparented = 1;
    if (*(result + 16))
    {
      v4 = result;
      v5 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
      v4;
      _swift_setClassMetadata(v5, v4);
      result = v4;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    result;
    return v4;
  }

  return result;
}

void *_SwiftCreateBridgedMutableArray(char *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = type metadata accessor for _SwiftNSMutableArray();
  result = swift_allocObject(v3, 0x18, 7uLL);
  result[2] = v2;
  return result;
}

void *_SwiftCreateBridgedMutableArray_DoNotCall(values:numValues:)(char *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = type metadata accessor for _SwiftNSMutableArray();
  result = swift_allocObject(v3, 0x18, 7uLL);
  result[2] = v2;
  return result;
}

objc_class *one-time initialization function for _bridgeInitializedSuccessfully()
{
  result = swift_stdlib_connectNSBaseClasses();
  _bridgeInitializedSuccessfully = result & 1;
  return result;
}

uint64_t static _BridgeableMetatype._forceBridgeFromObjectiveC(_:result:)(void *a1, void *a2)
{
  v6 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v5, &v6, qword_1EEEAC710, v3, 7uLL);
  *a2 = v5;
  return result;
}

uint64_t static _BridgeableMetatype._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, void *a2)
{
  v7 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v6, &v7, qword_1EEEAC710, v3, 6uLL);
  if (result)
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t static _BridgeableMetatype._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v5, &v6, qword_1EEEAC710, v3, 7uLL);
  *a2 = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance _BridgeableMetatype(void *a1, void *a2)
{
  v6 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v5, &v6, qword_1EEEAC710, v3, 7uLL);
  *a2 = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance _BridgeableMetatype(void *a1, void *a2)
{
  v7 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v6, &v7, qword_1EEEAC710, v3, 6uLL);
  if (result)
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

atomic_ullong *_bridgeAnythingToObjectiveC<A>(_:)(id *a1, unsigned __int8 *a2)
{
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    if (v5 != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return swift_unknownObjectRetain(*a1);
  }

  else
  {
    (*(v4 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    return _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)((&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0)), a2);
  }
}

id _bridgeAnyObjectToAny(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    ObjectType = swift_getObjectType(a1);
    a1 = v3;
    v5 = v3;
  }

  else
  {
    v5 = 0;
    ObjectType = &unk_1EEEBE040;
  }

  a2[3] = ObjectType;
  *a2 = v5;

  return swift_unknownObjectRetain(a1);
}

uint64_t _forceBridgeFromObjectiveC<A>(_:_:)@<X0>(void *a1@<X0>, swift *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Optional(0, a2, a2, a3);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v16 - v12);
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    v17 = a1;
    swift_unknownObjectRetain(a1);
    return swift_dynamicCast(a4, &v17, &unk_1EEEAC710, a2, 7);
  }

  else
  {
    v15 = *(a2 - 1);
    (*(v15 + 56))(v13, 1, 1, a2);
    _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(a1, a2, v13);
    (*(v8 + 16))(v11, v13, v7);
    if ((*(v15 + 48))(v11, 1, a2) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v8 + 8))(v13, v7);
    return (*(v15 + 32))(a4, v11, a2);
  }
}

uint64_t _forceBridgeFromObjectiveC_bridgeable<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional(0, a2, a2, a3);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = *(a2 - 8);
  (*(v15 + 56))(&v17 - v13, 1, 1, a2);
  (*(a3 + 24))(a1, v14, a2, a3);
  (*(v9 + 16))(v12, v14, v8);
  if ((*(v15 + 48))(v12, 1, a2) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v9 + 8))(v14, v8);
  return (*(v15 + 32))(a4, v12, a2);
}

uint64_t _conditionallyBridgeFromObjectiveC<A>(_:_:)@<X0>(void *a1@<X0>, Class *a2@<X2>, uint64_t a3@<X3>, swift *a4@<X8>)
{
  v7 = type metadata accessor for Optional(0, a2, a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    v14 = a1;
    swift_unknownObjectRetain(a1);
    v11 = swift_dynamicCast(a4, &v14, qword_1EEEAC710, a2, 6uLL);
    return (*(*(a2 - 1) + 7))(a4, v11 ^ 1u, 1, a2);
  }

  else
  {
    (*(*(a2 - 1) + 7))(v10, 1, 1, a2);
    _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)(a1, a2, v10);
    return (*(v8 + 32))(a4, v10, v7);
  }
}

id _bridgeNonVerbatimFromObjectiveCToAny(void *a1, void *a2)
{
  outlined destroy of Any?(a2);
  a2[3] = swift_getObjectType(a1);
  *a2 = a1;

  return swift_unknownObjectRetain(a1);
}

uint64_t _bridgeNonVerbatimBoxedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  (*(*(v7 - 8) + 8))(a2, v7);
  v10 = *(a3 - 8);
  (*(v10 + 16))(a2, a1, a3);
  v8 = *(v10 + 56);

  return v8(a2, 0, 1, a3);
}

BOOL _isBridgedToObjectiveC<A>(_:)(uint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    return 1;
  }

  return _isBridgedNonVerbatimToObjectiveC<A>(_:)(a2, a2);
}

void _getBridgedObjectiveCType<A>(_:)(uint64_t a1, swift *a2)
{
  if (!_swift_isClassOrObjCExistentialType(a2, a2))
  {

    _getBridgedNonVerbatimObjectiveCType<A>(_:)(a2, a2);
  }
}

uint64_t AutoreleasingUnsafeMutablePointer.pointee.getter@<X0>(id *a1@<X0>, Class *a2@<X1>, swift *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    v5 = swift_unknownObjectRetain(v5);
  }

  v7 = v5;
  return swift_dynamicCast(a3, &v7, qword_1EEEBE040, a2, 7uLL);
}

uint64_t key path getter for AutoreleasingUnsafeMutablePointer.pointee : <A>AutoreleasingUnsafeMutablePointer<A>@<X0>(id **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = **a1;
  if (v6)
  {
    v6 = swift_unknownObjectRetain(v6);
  }

  v8 = v6;
  return swift_dynamicCast(a4, &v8, qword_1EEEBE040, v5, 7uLL);
}

id key path setter for AutoreleasingUnsafeMutablePointer.pointee : <A>AutoreleasingUnsafeMutablePointer<A>(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = (&v11 - v6);
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  swift_dynamicCast(&v12, v7, v5, qword_1EEEBE040, 7uLL);
  result = v12;
  *v9 = result;
  return result;
}

id AutoreleasingUnsafeMutablePointer.pointee.setter(unint64_t *a1, void *a2, Class *a3)
{
  swift_dynamicCast(&v5, a1, a3, qword_1EEEBE040, 7uLL);
  result = v5;
  *a2 = result;
  return result;
}

uint64_t _unsafeReferenceCast<A, B>(_:to:)@<X0>(uint64_t a1@<X0>, Class *a2@<X2>, Class *a3@<X3>, swift *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  return swift_dynamicCast(a4, v8, a2, a3, 7uLL);
}

void (*AutoreleasingUnsafeMutablePointer.pointee.modify(unint64_t **a1, id *a2, Class *a3))(uint64_t *a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x40, 0xF8A2uLL);
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[3] = a2;
  v6[4] = a3;
  v8 = *(a3 - 1);
  v6[5] = v8;
  v9 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v6[6] = swift_coroFrameAlloc(v9, 0xF8A2uLL);
    v10 = swift_coroFrameAlloc(v9, 0xF8A2uLL);
  }

  else
  {
    v6[6] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v7[7] = v10;
  v12 = *a2;
  if (*a2)
  {
    v12 = swift_unknownObjectRetain(v12);
  }

  *v7 = v12;
  swift_dynamicCast(v11, v7, qword_1EEEBE040, a3, 7uLL);
  return AutoreleasingUnsafeMutablePointer.pointee.modify;
}

void AutoreleasingUnsafeMutablePointer.pointee.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  (*(*(v3 + 40) + 16))(*(*a1 + 48), *(v3 + 56), *(v3 + 32));
  v6 = *(v3 + 48);
  v5 = *(v3 + 56);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  if (a2)
  {
    v9 = 8;
  }

  else
  {
    v9 = 16;
  }

  swift_dynamicCast((v3 + v9), *(v3 + 48), *(v3 + 32), qword_1EEEBE040, 7uLL);
  *v8 = *(v3 + v9);
  (*(v4 + 8))(v5, v7);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t AutoreleasingUnsafeMutablePointer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, swift *a4@<X8>)
{
  v6 = *(a2 + *(*(a3 - 1) + 9) * a1);
  if (v6)
  {
    v6 = swift_unknownObjectRetain(v6);
  }

  v8 = v6;
  return swift_dynamicCast(a4, &v8, qword_1EEEBE040, a3, 7uLL);
}

uint64_t _Pointer.advanced(by:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 48))(a2, a3);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  return (*(a3 + 56))(v6 + *(*(v7 - 8) + 72) * a1, a2, a3);
}

void protocol witness for Hashable.hash(into:) in conformance AutoreleasingUnsafeMutablePointer<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a2, a3);

  _Pointer.hash(into:)(a1, a2, WitnessTable);
}

void _Pointer.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20[1] = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = type metadata accessor for Optional(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v20 - v17;
  memcpy(v20 - v17, v4, v8);
  (*(v7 + 56))(v18, 0, 1, a2);
  (*(v13 + 32))(v16, v18, v12);
  if ((*(v7 + 48))(v16, 1, a2) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v19 = 0;
  }

  else
  {
    memcpy(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8);
    v19 = (*(a3 + 48))(a2, a3);
  }

  Hasher._combine(_:)(v19);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoreleasingUnsafeMutablePointer<A>(Swift::Int a1, unint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a2, a3);

  return _Pointer._rawHashValue(seed:)(a1);
}

Swift::Int __swiftcall _Pointer._rawHashValue(seed:)(Swift::Int seed)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v22 = seed;
  v7 = *(v1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](seed);
  v12 = type metadata accessor for Optional(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  memcpy(&v21 - v17, v4, v8);
  (*(v7 + 56))(v18, 0, 1, v6);
  (*(v13 + 32))(v16, v18, v12);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v19 = 0;
  }

  else
  {
    memcpy(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8);
    v19 = (*(v5 + 48))(v6, v5);
  }

  return specialized static Hasher._hash(seed:_:)(v22, v19);
}

void *_sSPyxGSxsRi_zrlSx8distance2to6StrideQzx_tFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(*(a2 + 16) - 8) + 72);
  if (!v4 || ((v5 = *result - *v3, v4 == -1) ? (v6 = v5 == 0x8000000000000000) : (v6 = 0), v6))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v5 / v4;
  return result;
}

uint64_t _Pointer.distance(to:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v6 = v5(a2, a3);
  v7 = v5(a2, a3);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  v9 = *(*(v8 - 8) + 72);
  if (!v9 || (v6 - v7 == 0x8000000000000000 ? (v10 = v9 == -1) : (v10 = 0), v10))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v6 - v7) / v9;
}

uint64_t static Strideable._step(after:from:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static Strideable._step(after:from:by:)(a1, a2, a3 & 1, a4, a5, a6, a7, a8);
  return 0;
}

{
  swift_getTupleTypeMetadata2(0, &unk_1EEEBE0E0, a7, "index value ", 0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v21 - v18;
  *v19 = a2;
  v19[8] = a3 & 1;
  (*(*(a7 - 8) + 16))(&v21 + *(v17 + 48) - v18, a4, a7);
  (*(a8 + 48))(a6, a7, a8);
  (*(v16 + 8))(v19, v15);
  return 0;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutoreleasingUnsafeMutablePointer<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a1, a3);

  return _Pointer.debugDescription.getter(a1, WitnessTable);
}

uint64_t _Pointer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))();

  return OpaquePointer.debugDescription.getter(v2);
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance AutoreleasingUnsafeMutablePointer<A>@<X0>(Class *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a1, a2);

  return _Pointer.customMirror.getter(a1, a3);
}

uint64_t specialized _Pointer.customMirror.getter@<X0>(unint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v7 = swift_allocObject(v6, 0x50, 7uLL);
  *(v7 + 1) = xmmword_18071DB30;
  strcpy(v7 + 32, "pointerValue");
  *(v7 + 45) = 0;
  *(v7 + 23) = -5120;
  v7[9] = &type metadata for UInt64;
  v7[6] = a1;
  v19[0] = 0;
  v19[1] = 0;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v21, v19, a2);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x48, 7uLL);
  v12[6] = v7;
  v12[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v12[8] = 0;
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 1;
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

  *a3 = a2;
  *(a3 + 8) = v12;
  *(a3 + 16) = 9;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10;
  *(a3 + 40) = v18;
  return result;
}

uint64_t _Pointer.customMirror.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(a1 - 1) + 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-1] - v9;
  v12 = (*(v11 + 48))(v8);
  memcpy(v10, v2, v5);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject(v13, 0x50, 7uLL);
  *(v14 + 1) = xmmword_18071DB30;
  strcpy(v14 + 32, "pointerValue");
  *(v14 + 45) = 0;
  *(v14 + 23) = -5120;
  v14[9] = &type metadata for UInt64;
  v14[6] = v12;
  v27[0] = 0;
  v27[1] = 0;
  v15 = static Mirror._superclassIterator<A>(_:_:)(v10, v27, a1);
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v19 = swift_allocObject(v18, 0x48, 7uLL);
  v19[6] = v14;
  v19[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v19[8] = 0;
  v20 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v21 = swift_allocObject(v20, 0x18, 7uLL);
  v21[2] = 0;
  v22 = swift_allocObject(v20, 0x18, 7uLL);
  v22[2] = 1;
  v19[2] = v21;
  v19[3] = &protocol witness table for _IndexBox<A>;
  v19[4] = v22;
  v19[5] = &protocol witness table for _IndexBox<A>;
  memcpy(v7, v10, v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v27, v7, a1, v23, 6uLL);
  v25 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  *a2 = a1;
  *(a2 + 8) = v19;
  *(a2 + 16) = 9;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v25;
  return result;
}

uint64_t _sSLsE1goiySbx_xtFZs8AnyIndexV_Tt1gq5(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType(a3);
  v9 = (*(a4 + 8))(ObjectType, a4);
  v10 = swift_getObjectType(a1);
  if (v9 != (*(a2 + 8))(v10, a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = swift_getObjectType(a3);
  return (*(a4 + 32))(a1, a2, v11, a4) & 1;
}

uint64_t _Pointer.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 48))(a2, a3);
  v6 = *(a3 + 56);

  return v6(v5, a2, a3);
}

{
  return (*(a3 + 56))();
}

uint64_t static FixedWidthInteger.<< infix<A>(_:_:)@<X0>(uint64_t (*a1)(uint64_t, char *, const char *)@<X1>, const char *a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a5;
  v9 = a3;
  v171 = a1;
  v157 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v157, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v156 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v155 = v153 - v13;
  v165 = *(a4 + 8);
  v168 = *(*(v165 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v168, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v15 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v163 = v153 - v17;
  v166 = *(v9 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v158 = v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v159 = v153 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v162 = v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v167 = v153 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v169 = v153 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v174 = v153 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v170 = v30;
  v31 = *(v30 + 16);
  v164 = v153 - v32;
  v31();
  v33 = *(a4 + 56);
  v175 = a4;
  v172 = v33;
  v173 = a4 + 56;
  v34 = v33(a2, a4);
  v35 = -v34;
  if (__OFSUB__(0, v34))
  {
    __break(1u);
LABEL_64:
    v170 = v6;
    v9(v35, a2);
    v143 = v175;
    v144 = v172(a2, v175);
    if (!__OFSUB__(0, v144))
    {
      v35 = v174;
      if (-v144 < v15)
      {
        v145 = (v9)(v169, a2);
        v176[0] = -v15;
        v146 = *(v7 + 96);
        v149 = lazy protocol witness table accessor for type Int and conformance Int(v145, v147, v148);
        v150 = v167;
        v146(v176, &type metadata for Int, v149, a2, v7);
        (*(v143 + 200))(v35, v150, a2, v143);
        v9(v150, a2);
        v141 = v35;
        return (v9)(v141, a2);
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v9(v35, a2);
    v151 = v160;
    v152 = v169;
    return v171(v151, v152, a2);
  }

  v160 = a6;
  v36 = (v7 + 64);
  v37 = *(v7 + 64);
  v38 = v37(v9, v7);
  v161 = v15;
  if ((v38 & 1) == 0)
  {
    v44 = v37(v9, v7);
    v39 = *(v7 + 128);
    v40 = v171;
    v41 = v39(v9, v7);
    if (v44)
    {
      v154 = v39;
      if (v41 <= 64)
      {
        v56 = v156;
        v57 = v157;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v157, v9, v156, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v59 = v155;
        (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v56, AssociatedConformanceWitness);
        v60 = v159;
        (v57[3])(v59, v9, v57);
        v40 = v171;
        LOBYTE(v56) = (*(*(*(v7 + 32) + 8) + 16))(v171, v60, v9);
        (*(v166 + 8))(v60, v9);
        v39 = v154;
        if ((v56 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v176[0] = v35;
        v35 = *(v7 + 96);
        v45 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
        v46 = v37;
        v47 = v159;
        (v35)(v176, &type metadata for Int, v45, v9, v7);
        v48 = v171;
        v49 = (*(*(*(v7 + 32) + 8) + 16))(v171, v47, v9);
        v50 = v47;
        v37 = v46;
        v40 = v48;
        (*(v166 + 8))(v50, v9);
        v39 = v154;
        if ((v49 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_15:
      v61 = v172(a2, v175);
      v15 = -v61;
      if (__OFSUB__(0, v61))
      {
        __break(1u);
        goto LABEL_70;
      }

      v35 = v174;
      goto LABEL_29;
    }

    if (v41 < 64)
    {
      goto LABEL_14;
    }

    if (v35 <= 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v176[0] = v35;
    v35 = *(v7 + 96);
    v51 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
    v154 = (v7 + 64);
    v52 = v37;
    v53 = v159;
    (v35)(v176, &type metadata for Int, v51, v9, v7);
    v54 = (*(*(*(v7 + 32) + 8) + 16))(v171, v53, v9);
    v55 = v53;
    v37 = v52;
    v40 = v171;
    v36 = v154;
    (*(v166 + 8))(v55, v9);
    if ((v54 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v39 = *(v7 + 128);
  v40 = v171;
  v41 = v39(v9, v7);
  if (v41 >= 64)
  {
    goto LABEL_11;
  }

LABEL_14:
  if ((*(v7 + 120))(v9, v7) < v35)
  {
    goto LABEL_15;
  }

LABEL_17:
  v62 = v172(a2, v175);
  v63 = v37(v9, v7);
  v153[1] = v7 + 128;
  v64 = v39(v9, v7);
  if (v63)
  {
    if (v64 <= 64)
    {
      v73 = (*(v7 + 120))(v9, v7);
      v35 = v174;
      if (v62 >= v73)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v176[0] = v62;
      v67 = *(v7 + 96);
      v68 = lazy protocol witness table accessor for type Int and conformance Int(v64, v65, v66);
      v154 = v36;
      v69 = v37;
      v70 = v159;
      v67(v176, &type metadata for Int, v68, v9, v7);
      v71 = (*(*(*(v7 + 32) + 8) + 16))(v70, v171, v9);
      v72 = v70;
      v37 = v69;
      v40 = v171;
      v36 = v154;
      (*(v166 + 8))(v72, v9);
      v35 = v174;
      if ((v71 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_28:
    v15 = v172(a2, v175);
LABEL_29:
    v80 = v168;
    goto LABEL_55;
  }

  v35 = v174;
  if (v64 < 64)
  {
    if (v62 >= (*(v7 + 120))(v9, v7))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v62 < 0)
  {
    goto LABEL_28;
  }

  v176[0] = v62;
  v74 = *(v7 + 96);
  v75 = lazy protocol witness table accessor for type Int and conformance Int(v64, v65, v66);
  v154 = v36;
  v76 = v37;
  v77 = v159;
  v74(v176, &type metadata for Int, v75, v9, v7);
  v35 = v174;
  v78 = (*(*(*(v7 + 32) + 8) + 16))(v77, v171, v9);
  v79 = v77;
  v37 = v76;
  v40 = v171;
  v36 = v154;
  (*(v166 + 8))(v79, v9);
  if (v78)
  {
    goto LABEL_28;
  }

LABEL_30:
  v81 = v158;
  (*(v166 + 16))(v158, v40, v9);
  if ((v37(v9, v7) & 1) == 0 || v39(v9, v7) < 65)
  {
    goto LABEL_44;
  }

  if ((v37(v9, v7) & 1) == 0)
  {
    v92 = v37(v9, v7);
    v93 = v39(v9, v7);
    if ((v92 & 1) == 0)
    {
      if (v93 >= 64)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v154 = v39;
    if (v93 <= 64)
    {
      v102 = v156;
      v103 = v157;
      v104 = swift_getAssociatedConformanceWitness(v157, v9, v156, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v105 = v155;
      (*(v104 + 8))(&unk_18071E0A8, 256, v102, v104);
      v106 = v103;
      v107 = v103[3];
      v108 = v159;
      (v107)(v105, v9, v106);
      LOBYTE(v102) = (*(*(*(v7 + 32) + 8) + 16))(v81, v108, v9);
      (*(v166 + 8))(v108, v9);
      v39 = v154;
      if ((v102 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v176[0] = 0x8000000000000000;
      v96 = *(v7 + 96);
      v97 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
      v98 = v37;
      v99 = v159;
      v96(v176, &type metadata for Int, v97, v9, v7);
      v100 = (*(*(*(v7 + 32) + 8) + 16))(v81, v99, v9);
      v101 = v99;
      v37 = v98;
      (*(v166 + 8))(v101, v9);
      v39 = v154;
      if ((v100 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_48:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v82 = v39(v9, v7);
  if (v82 < 64)
  {
LABEL_43:
    (*(v7 + 120))(v9, v7);
    goto LABEL_44;
  }

  v176[0] = 0x8000000000000000;
  v154 = v36;
  v85 = v39;
  v86 = *(v7 + 96);
  v87 = lazy protocol witness table accessor for type Int and conformance Int(v82, v83, v84);
  v88 = v37;
  v89 = v159;
  v86(v176, &type metadata for Int, v87, v9, v7);
  v39 = v85;
  v90 = (*(*(*(v7 + 32) + 8) + 16))(v81, v89, v9);
  v91 = v89;
  v37 = v88;
  (*(v166 + 8))(v91, v9);
  if (v90)
  {
    goto LABEL_48;
  }

LABEL_44:
  v109 = v37;
  v110 = v39(v9, v7);
  v80 = v168;
  if (v110 <= 64 && (v39(v9, v7) != 64 || (v109(v9, v7) & 1) != 0))
  {
    goto LABEL_54;
  }

  v111 = v109(v9, v7);
  v112 = v39(v9, v7);
  if (v111)
  {
    if (v112 >= 65)
    {
      goto LABEL_47;
    }

LABEL_53:
    (*(v7 + 120))(v9, v7);
    goto LABEL_54;
  }

  if (v112 < 64)
  {
    goto LABEL_53;
  }

LABEL_47:
  v176[0] = 0x7FFFFFFFFFFFFFFFLL;
  v115 = *(v7 + 96);
  v116 = lazy protocol witness table accessor for type Int and conformance Int(v112, v113, v114);
  v117 = v159;
  v115(v176, &type metadata for Int, v116, v9, v7);
  v118 = (*(*(*(v7 + 32) + 8) + 16))(v117, v81, v9);
  (*(v166 + 8))(v117, v9);
  if (v118)
  {
    goto LABEL_48;
  }

LABEL_54:
  v15 = (*(v7 + 120))(v9, v7);
  (*(v166 + 8))(v81, v9);
  v35 = v174;
LABEL_55:
  v119 = *(v170 + 32);
  v119(v35, v164, a2);
  v7 = v165;
  v120 = (*(v165 + 64))(a2, v165);
  v171 = v119;
  if (v120)
  {
    v121 = v172(a2, v175);
    if (!__OFSUB__(v121, 1))
    {
      v176[0] = v121 - 1;
      v124 = *(v7 + 96);
      v125 = lazy protocol witness table accessor for type Int and conformance Int(v121, v122, v123);
      v126 = v170;
      v127 = v175;
      v128 = v167;
      v124(v176, &type metadata for Int, v125, a2, v7);
      (*(v127 + 200))(v174, v128, a2, v127);
      v80 = v168;
      (*(v126 + 8))(v128, a2);
      v129 = v161;
      v130 = swift_getAssociatedConformanceWitness(v80, a2, v161, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v131 = v163;
      goto LABEL_59;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v129 = v161;
  v130 = swift_getAssociatedConformanceWitness(v80, a2, v161, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v131 = v163;
  (*(v130 + 8))(&unk_18071E0A8, 256, v129, v130);
  (v80[3])(v131, a2, v80);
  v126 = v170;
LABEL_59:
  (*(v130 + 8))(&unk_18071E0A8, 256, v129, v130);
  v35 = v162;
  (v80[3])(v131, a2, v80);
  v132 = *(v126 + 8);
  v6 = v126 + 8;
  v9 = v132;
  if (v15 < 0)
  {
    goto LABEL_64;
  }

  v9(v169, a2);
  v133 = v175;
  if (v15 < v172(a2, v175))
  {
    v134 = (v9)(v35, a2);
    v176[0] = v15;
    v135 = *(v7 + 96);
    v138 = lazy protocol witness table accessor for type Int and conformance Int(v134, v136, v137);
    v139 = v167;
    v135(v176, &type metadata for Int, v138, a2, v7);
    v140 = v174;
    (*(v133 + 216))(v174, v139, a2, v133);
    v9(v139, a2);
    v141 = v140;
    return (v9)(v141, a2);
  }

  v9(v174, a2);
  v151 = v160;
  v152 = v35;
  return v171(v151, v152, a2);
}

uint64_t _BridgeStorage.isObjC.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    return 1;
  }

  else
  {
    return (a1 >> 62) & 1;
  }
}

void *ManagedBufferPointer.init(_uncheckedBufferClass:minimumCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  v6 = v5 + 1;
  v7 = *(v4 + 64);
  v8 = (v5 + 16) & ~v5;
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(a4 - 8);
  v12 = *(v11 + 80);
  v13 = v12 + 1;
  v14 = __CFADD__(v10, v12 + 1);
  v15 = v10 + v12 + 1;
  if (v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = *(v11 + 72);
  v17 = a2 * v16;
  if ((a2 * v16) >> 64 != (a2 * v16) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = (v15 - 1) & ~v12;
  if (__OFADD__(v18, v17))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v13 > v6)
  {
    v6 = v13;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  return swift_bufferAllocate(result, (v18 + v17), v6 - 1);
}

uint64_t static UInt.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t _roundUpImpl(_:toAlignment:)(uint64_t result, uint64_t a2)
{
  if (!__CFADD__(result, a2))
  {
    return (result + a2 - 1) & -a2;
  }

  __break(1u);
  return result;
}

id _reinterpretCastToAnyObject<A>(_:)(void **a1, uint64_t a2)
{
  if (*(*(a2 - 8) + 64) != 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *a1;

  return swift_unknownObjectRetain(v3);
}

BOOL == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 == a2;
    }

    return 0;
  }

  return !a2;
}

uint64_t != infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 != a2;
    }

    return 1;
  }

  return a2 != 0;
}

id unsafeDowncast<A>(_:to:)(void *a1, uint64_t a2, Class *a3)
{
  v7 = a1;
  swift_unknownObjectRetain(a1);
  if (!swift_dynamicCast(&v6, &v7, qword_1EEEAC710, a3, 6uLL))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_unknownObjectRelease(v6);
  return swift_unknownObjectRetain(a1);
}

uint64_t _class_getInstancePositiveExtentSize(_:)(uint64_t a1)
{
  _swift_getObjCClassInstanceExtents(a1);
  if (v1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v1;
}

BOOL static BinaryInteger.>= infix<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6)
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
  if (((v21 ^ (*(a6 + 64))(a4, a6)) & 1) == 0)
  {
    v31 = (*(a5 + 128))(a3, a5);
    if (v31 >= (*(a6 + 128))(a4, a6))
    {
      v40 = v67;
      (*(v68 + 16))(v67, a2, a4);
      v41 = v65;
      (*(a5 + 96))(v40, a4, a6, a3, a5);
      v34 = (*(*(*(a5 + 32) + 8) + 16))(a1, v41, a3);
      v35 = *(v66 + 8);
      v36 = v41;
      v39 = a3;
      goto LABEL_11;
    }

    v32 = v65;
    (*(v66 + 16))(v65, a1, a3);
    v33 = v67;
    (*(a6 + 96))(v32, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 32) + 8) + 16))(v33, a2, a4);
    v35 = *(v68 + 8);
    v36 = v33;
LABEL_9:
    v39 = a4;
LABEL_11:
    v35(v36, v39);
    return (v34 & 1) == 0;
  }

  v22 = v20(a3, a5);
  v23 = *(a5 + 128);
  v58 = a1;
  v24 = v23(a3, a5);
  v25 = *(a6 + 128);
  v57 = a2;
  v26 = v25(a4, a6);
  if ((v22 & 1) == 0)
  {
    v28 = v66;
    v37 = v67;
    if (v24 >= v26)
    {
      v49 = v63;
      v50 = v64;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v64, a4, v63, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v62;
      (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v49, AssociatedConformanceWitness);
      (v50[3])(v52, a4, v50);
      v53 = v57;
      LOBYTE(v49) = (*(*(*(a6 + 32) + 8) + 40))(v57, v37, a4);
      v54 = v68;
      (*(v68 + 8))(v37, a4);
      v55 = v58;
      if ((v49 & 1) == 0)
      {
        v34 = 0;
        return (v34 & 1) == 0;
      }

      (*(v54 + 16))(v37, v53, a4);
      v29 = v65;
      (*(a5 + 96))(v37, a4, a6, a3, a5);
      v30 = (*(*(*(a5 + 32) + 8) + 16))(v55, v29, a3);
      goto LABEL_16;
    }

    v38 = v65;
    (*(v66 + 16))(v65, v58, a3);
    (*(a6 + 96))(v38, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 32) + 8) + 16))(v37, v57, a4);
    v35 = *(v68 + 8);
    v36 = v37;
    goto LABEL_9;
  }

  v28 = v66;
  v27 = v67;
  if (v26 < v24)
  {
    (*(v68 + 16))(v67, v57, a4);
    v29 = v65;
    (*(a5 + 96))(v27, a4, a6, a3, a5);
    v30 = (*(*(*(a5 + 32) + 8) + 16))(v58, v29, a3);
LABEL_16:
    v34 = v30;
    (*(v28 + 8))(v29, a3);
    return (v34 & 1) == 0;
  }

  v42 = v60;
  v43 = v61;
  v44 = swift_getAssociatedConformanceWitness(v61, a3, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v45 = v59;
  (*(v44 + 8))(&unk_18071E0A8, 256, v42, v44);
  v46 = v65;
  (v43[3])(v45, a3, v43);
  v47 = v58;
  LOBYTE(v42) = (*(*(*(a5 + 32) + 8) + 16))(v58, v46, a3);
  (*(v28 + 8))(v46, a3);
  v48 = v68;
  if (v42)
  {
    v34 = 1;
  }

  else
  {
    (*(v28 + 16))(v46, v47, a3);
    (*(a6 + 96))(v46, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 32) + 8) + 16))(v27, v57, a4);
    (*(v48 + 8))(v27, a4);
  }

  return (v34 & 1) == 0;
}

id _bridgeObject(toNonTaggedObjC:)(uint64_t a1)
{
  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return swift_unknownObjectRetain(a1);
}

uint64_t _nativeObject(fromBridge:)(int64_t a1)
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

unint64_t _getSuperclass(_:)(uint64_t *a1)
{
  if (!swift_isClassType(a1) || !a1)
  {
    return 0;
  }

  return _swift_class_getSuperclass(a1);
}

atomic_ullong *_unsafeDowncastToAnyObject(fromAny:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_0Tm(a1, v1);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v1, v1);
  if (isClassOrObjCExistentialType)
  {
    if (*(*(v1 - 1) + 64) != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return swift_unknownObjectRetain(*v2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v2, v1);
    return _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v6, v1);
  }
}

uint64_t StaticString.utf8Start.getter(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || !result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void Character._str.setter(uint64_t a1, uint64_t a2)
{
  v2[1];
  *v2 = a1;
  v2[1] = a2;
}

Swift::String __swiftcall Character.init(_:)(Swift::String a1)
{
  if ((a1._object & 0x2000000000000000) != 0)
  {
    v1 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
  if (String._uncheckedIndex(after:)(v4)._rawBits >> 14 != 4 * v1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(object & 0x2000000000000000 | countAndFlagsBits & 0x1000000000000000))
  {
    countAndFlagsBits = specialized static String._copying(_:)(countAndFlagsBits, object);
    v8 = v7;
    object;
    object = v8;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

BOOL String.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

Swift::String::Index __swiftcall String.index(after:)(Swift::String::Index after)
{
  v1._rawBits = _StringGuts.validateCharacterIndex(_:)(after)._rawBits;

  return String._uncheckedIndex(after:)(v1);
}

unsigned __int8 *protocol witness for _ExpressibleByBuiltinExtendedGraphemeClusterLiteral.init(_builtinExtendedGraphemeClusterLiteral:utf8CodeUnitCount:isASCII:) in conformance Character@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    if (a2 <= 0xF)
    {
      v7 = a2 - 8;
      v8 = 8;
      if (a2 < 8)
      {
        v8 = a2;
      }

      v9 = v8 - 1;
      if (a2 < v8 - 1)
      {
        v9 = a2;
      }

      if (v8 == v9)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v5 = *result;
      if (a2 != 1)
      {
        v5 |= result[1] << 8;
        if (a2 != 2)
        {
          v5 |= result[2] << 16;
          if (a2 != 3)
          {
            v5 |= result[3] << 24;
            if (a2 != 4)
            {
              v5 |= result[4] << 32;
              if (a2 != 5)
              {
                v5 |= result[5] << 40;
                if (a2 != 6)
                {
                  v5 |= result[6] << 48;
                  if (a2 != 7)
                  {
                    v5 |= result[7] << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (a2 < 9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = result + 8;
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

      v6 = v14 | (a2 << 56) | v10;
    }

    else
    {
      v4 = a2 | 0xC000000000000000;
      if ((a3 & 1) == 0)
      {
        v4 = a2;
      }

      v5 = v4 | 0x1000000000000000;
      v6 = (result + 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a4 = v5;
  a4[1] = v6;
  return result;
}

uint64_t protocol witness for _ExpressibleByBuiltinUnicodeScalarLiteral.init(_builtinUnicodeScalarLiteral:) in conformance Character@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X8>)
{
  result = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance StaticBigInt@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _GenericIndexKey()
{
  v1 = *v0;
  v0[1];
  return v1;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Character(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a2;
  v6 = a1;
  v7._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
  if (String._uncheckedIndex(after:)(v7)._rawBits >> 14 != 4 * v4)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(v5 & 0x2000000000000000 | v6 & 0x1000000000000000))
  {
    v6 = specialized static String._copying(_:)(v6, v5);
    v9 = v8;
    v5;
    v5 = v9;
  }

  *a3 = v6;
  a3[1] = v5;
}

void String.debugDescription.getter(uint64_t a1, unint64_t x1_0)
{
  v2 = 34;
  v248 = 34;
  v249 = 0xE100000000000000;
  v3 = HIBYTE(x1_0) & 0xF;
  if ((x1_0 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v239 = v3;
  if (v3)
  {
    v4 = x1_0;
    v5 = 0;
    v233 = (x1_0 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v234 = x1_0 & 0xFFFFFFFFFFFFFFLL;
    v6 = 1;
    while (1)
    {
      while (1)
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v5 << 16));
          scalarLength = v10.scalarLength;
          value = v10._0._value;
        }

        else
        {
          if ((v4 & 0x2000000000000000) != 0)
          {
            v246 = a1;
            v247 = v234;
            v7 = &v246;
          }

          else
          {
            v7 = v233;
            if ((a1 & 0x1000000000000000) == 0)
            {
              v7 = _StringObject.sharedUTF8.getter(a1, v4);
            }
          }

          value = _decodeScalar(_:startingAt:)(v7, x1_0, v5);
        }

        v5 += scalarLength;
        switch(value)
        {
          case '""':
            v11 = 0xE200000000000000;
            v12 = 8796;
            goto LABEL_20;
          case '\\':
            v11 = 0xE200000000000000;
            v12 = 23644;
            goto LABEL_20;
          case '\'':
            v11 = 0xE200000000000000;
            v12 = 10076;
            goto LABEL_20;
        }

        if (value - 127 > 0xFFFFFFA0)
        {
          break;
        }

        if (value > 9)
        {
          if (value == 10)
          {
            v11 = 0xE200000000000000;
            v12 = 28252;
            goto LABEL_20;
          }

          if (value == 13)
          {
            v11 = 0xE200000000000000;
            v12 = 29276;
            goto LABEL_20;
          }
        }

        else
        {
          if (!value)
          {
            v11 = 0xE200000000000000;
            v12 = 12380;
            goto LABEL_20;
          }

          if (value == 9)
          {
            v11 = 0xE200000000000000;
            v12 = 29788;
            goto LABEL_20;
          }
        }

        if (value > 0x7F)
        {
          break;
        }

        v78 = value;
        v79 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)((value >> 4) | 0x30);
        v81 = v80;
        v82 = specialized static String.+ infix(_:_:)(0x7B755CuLL, 0xE300000000000000, v79, v80);
        v84 = v83;
        0xE300000000000000;
        v81;
        if ((v78 & 0xFu) >= 0xA)
        {
          v85 = (v78 & 0xF) + 55;
        }

        else
        {
          v85 = v78 & 0xF | 0x30;
        }

        v86 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v85);
        v88 = v87;
        v89 = specialized static String.+ infix(_:_:)(v82, v84, v86, v87);
        v91 = v90;
        v84;
        v88;
        v12 = specialized static String.+ infix(_:_:)(v89, v91, 0x7DuLL, 0xE100000000000000);
        v11 = v92;
        v91;
        0xE100000000000000;
LABEL_20:
        v14 = v248;
        v13 = v249;
        v15 = HIBYTE(v249) & 0xF;
        v16 = v248 & 0xFFFFFFFFFFFFLL;
        if ((v249 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v249) & 0xF;
        }

        else
        {
          v17 = v248 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17 && (v248 & ~v249 & 0x2000000000000000) == 0)
        {
          v249;
          v248 = v12;
          v249 = v11;
          goto LABEL_6;
        }

        v241 = v5;
        v18 = HIBYTE(v11) & 0xF;
        if ((v249 & 0x2000000000000000) == 0)
        {
          v237 = (v11 & 0x2000000000000000) == 0;
          v19 = v12 & 0xFFFFFFFFFFFFLL;
          v20 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) != 0)
          {
LABEL_31:
            if ((v11 & 0x1000000000000000) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_78;
          }

LABEL_30:
          v20 = v19;
          goto LABEL_31;
        }

        if ((v11 & 0x2000000000000000) == 0)
        {
          v19 = v12 & 0xFFFFFFFFFFFFLL;
          v237 = 1;
          goto LABEL_30;
        }

        v49 = v15 + v18;
        if (v15 + v18 < 0x10)
        {
          if (v18)
          {
            v68 = 0;
            v69 = 0;
            v70 = 8 * v15;
            v71 = 8 * v18;
            v72 = v249;
            v5 = v241;
            do
            {
              v73 = v11 >> (v68 & 0x38);
              if (v69 < 8)
              {
                v73 = v12 >> v68;
              }

              v74 = (v73 << (v70 & 0x38)) | ((-255 << (v70 & 0x38)) - 1) & v72;
              v75 = (v73 << v70) | ((-255 << v70) - 1) & *&v14;
              if (v15 <= 7)
              {
                v14 = v75;
              }

              else
              {
                v72 = v74;
              }

              ++v15;
              v70 += 8;
              v68 += 8;
              ++v69;
            }

            while (v71 != v68);
          }

          else
          {
            v72 = v249;
            v5 = v241;
          }

          v249;
          v11;
          v77 = 0xA000000000000000;
          if (!(*&v14 & 0x8080808080808080 | v72 & 0x80808080808080))
          {
            v77 = 0xE000000000000000;
          }

          v67 = v77 & 0xFF00000000000000 | (v49 << 56) | v72 & 0xFFFFFFFFFFFFFFLL;
LABEL_122:
          v248 = v14;
          v249 = v67;
          goto LABEL_6;
        }

        v237 = 0;
        v19 = v12 & 0xFFFFFFFFFFFFLL;
        v20 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x1000000000000000) == 0)
        {
LABEL_32:
          v11;
          v22 = v20;
          if ((v13 & 0x1000000000000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_81;
        }

LABEL_78:
        swift_bridgeObjectRetain_n(v11, 2);
        v50._rawBits = 1;
        v51._rawBits = (v20 << 16) | 1;
        v52._rawBits = _StringGuts.validateScalarRange(_:)(v50, v51, v12, v11)._rawBits;
        if (v52._rawBits < 0x10000)
        {
          v52._rawBits |= 3;
        }

        v22 = String.UTF8View.distance(from:to:)(v52, v53);
        v11;
        if ((v13 & 0x1000000000000000) == 0)
        {
LABEL_33:
          v23 = __OFADD__(v17, v22);
          v24 = v17 + v22;
          if (v23)
          {
            goto LABEL_289;
          }

          goto LABEL_34;
        }

LABEL_81:
        v54 = String.UTF8View._foreignCount()();
        v24 = v54 + v22;
        if (__OFADD__(v54, v22))
        {
LABEL_289:
          __break(1u);
LABEL_290:
          v22;
          v229._rawBits = specialized Collection.dropFirst(_:)(1, v13, v22)._rawBits;
          v231 = v230;
          v244 = v14;
          v245 = v20;
          v248 = 0;
          v249 = 0xE000000000000000;
          specialized String.UnicodeScalarView.append<A>(contentsOf:)(v229, v250, v232, v230);
          0xE000000000000000;
          v231;
          goto LABEL_291;
        }

LABEL_34:
        v235 = v19;
        v25 = *&v14 & ~v13;
        if ((v25 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v13 & 0xFFFFFFFFFFFFFFFLL))
        {
          v26 = _StringGuts.nativeUnusedCapacity.getter(*&v14, v13);
          if (v27)
          {
            goto LABEL_296;
          }

          if (v24 <= 15)
          {
            if ((v13 & 0x2000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v26 < v22)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v24 <= 15)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
LABEL_65:
            v29 = v13;
            goto LABEL_66;
          }

LABEL_40:
          if ((v13 & 0x1000000000000000) != 0)
          {
            v14 = _StringGuts._foreignConvertedToSmall()(*&v14, v13);
            v29 = v169;
LABEL_66:
            v5 = v241;
          }

          else
          {
            v5 = v241;
            if ((*&v14 & 0x1000000000000000) != 0)
            {
              v28 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v28 = _StringObject.sharedUTF8.getter(*&v14, v13);
              v16 = v189;
            }

            closure #1 in _StringGuts._convertedToSmall()(v28, v16, &v246, v21);
            v14 = v246;
            v29 = v247;
          }

          v11;
          v41._rawBits = 1;
          v42._rawBits = (v20 << 16) | 1;
          v43._rawBits = _StringGuts.validateScalarRange(_:)(v41, v42, v12, v11)._rawBits;
          if (v43._rawBits < 0x10000)
          {
            v43._rawBits |= 3;
          }

          if (v43._rawBits >> 16 || v44._rawBits >> 16 != v20)
          {
            v12 = specialized static String._copying(_:)(v43._rawBits, v44._rawBits, v12, v11);
            v46 = v55;
            v11;
            if ((v46 & 0x2000000000000000) == 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v46 = v11;
            if ((v11 & 0x2000000000000000) == 0)
            {
LABEL_72:
              if ((v46 & 0x1000000000000000) != 0)
              {
                v12 = _StringGuts._foreignConvertedToSmall()(v12, v46);
                v193 = v192;
                v46;
                v46 = v193;
              }

              else
              {
                if ((v12 & 0x1000000000000000) != 0)
                {
                  v47 = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v48 = v12 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = _StringObject.sharedUTF8.getter(v12, v46);
                }

                closure #1 in _StringGuts._convertedToSmall()(v47, v48, &v246, v45);
                v46;
                v12 = v246;
                v46 = v247;
              }

              goto LABEL_87;
            }
          }

          v46;
LABEL_87:
          v56 = HIBYTE(v29) & 0xF;
          v57 = HIBYTE(v46) & 0xF;
          v58 = v57 + v56;
          if (v57 + v56 > 0xF)
          {
            goto LABEL_296;
          }

          v11;
          if (v57)
          {
            v59 = 0;
            v60 = 0;
            v61 = 8 * v56;
            v62 = 8 * v57;
            v4 = x1_0;
            do
            {
              v63 = v46 >> (v59 & 0x38);
              if (v60 < 8)
              {
                v63 = v12 >> v59;
              }

              v64 = (v63 << (v61 & 0x38)) | ((-255 << (v61 & 0x38)) - 1) & v29;
              v65 = (v63 << v61) | ((-255 << v61) - 1) & *&v14;
              if (v56 <= 7)
              {
                v14 = v65;
              }

              else
              {
                v29 = v64;
              }

              ++v56;
              v61 += 8;
              v59 += 8;
              ++v60;
            }

            while (v62 != v59);
          }

          else
          {
            v4 = x1_0;
          }

          v11;
          v13;
          v66 = 0xA000000000000000;
          if (!(*&v14 & 0x8080808080808080 | v29 & 0x80808080808080))
          {
            v66 = 0xE000000000000000;
          }

          v67 = v66 & 0xFF00000000000000 | (v58 << 56) | v29 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_122;
        }

        v30 = v25 & 0x2000000000000000;
        v31 = _StringGuts.nativeUnusedCapacity.getter(*&v14, v13);
        if ((v32 & 1) != 0 || v31 < v22)
        {
          if (v30)
          {
            swift_isUniquelyReferenced_nonNull_native(v13 & 0xFFFFFFFFFFFFFFFLL);
          }

          v33 = 2 * _StringGuts.nativeCapacity.getter(*&v14, v13);
          if (v34)
          {
            v33 = 0;
          }

          if (v33 > v24)
          {
            v24 = v33;
          }
        }

        else if (v30 && swift_isUniquelyReferenced_nonNull_native(v13 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_54;
        }

        _StringGuts.grow(_:)(v24);
LABEL_54:
        v4 = x1_0;
        if ((v11 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v12, v11, 0, v20);
          swift_bridgeObjectRelease_n(v11, 2);
        }

        else
        {
          if (v237)
          {
            if ((v12 & 0x1000000000000000) != 0)
            {
              v35 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v36 = v235;
              v37 = v235;
            }

            else
            {
              v187 = _StringObject.sharedUTF8.getter(v12, v11);
              v36 = v235;
              if (v188 < v235)
              {
                goto LABEL_292;
              }

              v35 = v187;
              v37 = v188;
            }

            v5 = v241;
            v11;
            v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v36, v35, v37);
            v39 = v249 & 0xFFFFFFFFFFFFFFFLL;
            __StringStorage.appendInPlace(_:isASCII:)(v38, v40, v12 < 0);
            v248 = *(v39 + 24);
            v11;
            goto LABEL_6;
          }

          v246 = v12;
          v247 = v11 & 0xFFFFFFFFFFFFFFLL;
          v11;
          v76 = v249 & 0xFFFFFFFFFFFFFFFLL;
          __StringStorage.appendInPlace(_:isASCII:)(&v246, HIBYTE(v11) & 0xF, (v11 & 0x4000000000000000) != 0);
          v11;
          v248 = *(v76 + 24);
        }

        v5 = v241;
LABEL_6:
        v6 = 1;
        if (v5 >= v239)
        {
          v2 = v248;
          v183 = v249;
          goto LABEL_259;
        }
      }

      v94 = v248;
      v93 = v249;
      if (v6)
      {
        v95 = value;
        LODWORD(v246) = 0;
        v96 = specialized BidirectionalCollection.last.getter(v248, v249);
        if ((v96 & 0x100000000) != 0)
        {
          goto LABEL_297;
        }

        v97 = _GraphemeBreakingState.shouldBreak(between:and:)(v96, v95);
        value = v95;
        if (!v97)
        {
          v128 = Unicode.Scalar._escaped(asASCII:)(1);
          object = v128.value._object;
          if (v128.value._object)
          {
            countAndFlagsBits = v128.value._countAndFlagsBits;
          }

          else
          {
            countAndFlagsBits = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v95);
          }

          v130 = object;
          v167 = HIBYTE(v93) & 0xF;
          if ((v93 & 0x2000000000000000) == 0)
          {
            v167 = v94 & 0xFFFFFFFFFFFFLL;
          }

          if (!v167 && (v94 & ~v93 & 0x2000000000000000) == 0)
          {
            v93;
            v248 = countAndFlagsBits;
            v249 = v130;
            goto LABEL_6;
          }

          if ((v93 & 0x2000000000000000) != 0)
          {
            if ((object & 0x2000000000000000) == 0)
            {
              goto LABEL_227;
            }

            v171 = specialized _SmallString.init(_:appending:)(v94, v93, countAndFlagsBits, object);
            if ((v173 & 1) == 0)
            {
              v184 = v171;
              v185 = v172;
              v93;
              v130;
              v248 = v184;
              v249 = v185;
              goto LABEL_6;
            }

LABEL_235:
            v168 = HIBYTE(v130) & 0xF;
          }

          else
          {
            if ((object & 0x2000000000000000) != 0)
            {
              goto LABEL_235;
            }

LABEL_227:
            v168 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          v130;
          _StringGuts.append(_:)(countAndFlagsBits, v130, 0, v168, v174, v175, v176, v177, v178, v179, v180, v181);
          swift_bridgeObjectRelease_n(v130, 2);
          goto LABEL_6;
        }
      }

      v242 = v5;
      v246 = v94;
      v247 = v93;
      v248 = 0;
      v249 = 0xE000000000000000;
      v99 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(value);
      v100 = v98;
      v101 = (v98 & 0x2000000000000000) == 0;
      v102 = HIBYTE(v93) & 0xF;
      v103 = HIBYTE(v98) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v98 & 0x2000000000000000) == 0)
      {
        v104 = v99 & 0xFFFFFFFFFFFFLL;
        v101 = 1;
LABEL_136:
        v105 = v104;
LABEL_137:
        v238 = v104;
        if ((v98 & 0x1000000000000000) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_184;
      }

      v139 = v103 + v102;
      if (v103 + v102 < 0x10)
      {
        v98;
        if (v103)
        {
          v159 = 0;
          v160 = 0;
          v161 = 8 * v102;
          v162 = 8 * v103;
          v163 = v93;
          v4 = x1_0;
          v5 = v242;
          do
          {
            v164 = v100 >> (v159 & 0x38);
            if (v160 < 8)
            {
              v164 = v99 >> v159;
            }

            v165 = (v164 << (v161 & 0x38)) | ((-255 << (v161 & 0x38)) - 1) & v163;
            v166 = (v164 << v161) | ((-255 << v161) - 1) & v94;
            if (v102 <= 7)
            {
              v94 = v166;
            }

            else
            {
              v163 = v165;
            }

            ++v102;
            v161 += 8;
            v159 += 8;
            ++v160;
          }

          while (v162 != v159);
        }

        else
        {
          v163 = v93;
          v4 = x1_0;
          v5 = v242;
        }

        v93;
        0xE000000000000000;
        v182 = 0xA000000000000000;
        if (!(v94 & 0x8080808080808080 | v163 & 0x80808080808080))
        {
          v182 = 0xE000000000000000;
        }

        v158 = v182 & 0xFF00000000000000 | (v139 << 56) | v163 & 0xFFFFFFFFFFFFFFLL;
LABEL_242:
        v246 = v94;
        v247 = v158;
        goto LABEL_243;
      }

      v101 = 0;
      v105 = HIBYTE(v98) & 0xF;
      v238 = v99 & 0xFFFFFFFFFFFFLL;
      if ((v98 & 0x1000000000000000) == 0)
      {
LABEL_138:
        v98;
        v106 = v105;
        if ((v93 & 0x1000000000000000) != 0)
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      }

LABEL_184:
      swift_bridgeObjectRetain_n(v98, 2);
      v140._rawBits = 1;
      v141._rawBits = (v105 << 16) | 1;
      v142._rawBits = _StringGuts.validateScalarRange(_:)(v140, v141, v99, v100)._rawBits;
      if (v142._rawBits < 0x10000)
      {
        v142._rawBits |= 3;
      }

      v106 = String.UTF8View.distance(from:to:)(v142, v143);
      v100;
      if ((v93 & 0x1000000000000000) != 0)
      {
LABEL_187:
        v144 = String.UTF8View._foreignCount()();
        v108 = v144 + v106;
        if (__OFADD__(v144, v106))
        {
          goto LABEL_293;
        }

        goto LABEL_143;
      }

LABEL_139:
      if ((v93 & 0x2000000000000000) != 0)
      {
        v107 = HIBYTE(v93) & 0xF;
      }

      else
      {
        v107 = v94 & 0xFFFFFFFFFFFFLL;
      }

      v108 = v107 + v106;
      if (__OFADD__(v107, v106))
      {
LABEL_293:
        __break(1u);
LABEL_294:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_143:
      v109 = v94 & ~v93;
      if ((v109 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v93 & 0xFFFFFFFFFFFFFFFLL))
      {
        v110 = _StringGuts.nativeUnusedCapacity.getter(v94, v93);
        if (v111)
        {
          goto LABEL_296;
        }

        if (v108 <= 15)
        {
          if ((v93 & 0x2000000000000000) != 0)
          {
            v100;
            v115 = v93;
            v5 = v242;
            goto LABEL_173;
          }

          if (v110 < v106)
          {
            v100;
            v5 = v242;
            goto LABEL_150;
          }
        }
      }

      else if (v108 <= 15)
      {
        v100;
        v5 = v242;
        if ((v93 & 0x2000000000000000) != 0)
        {
          v115 = v93;
          goto LABEL_173;
        }

LABEL_150:
        if ((v93 & 0x1000000000000000) != 0)
        {
          v94 = _StringGuts._foreignConvertedToSmall()(v94, v93);
          v115 = v186;
        }

        else
        {
          if ((v94 & 0x1000000000000000) != 0)
          {
            v113 = ((v93 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v114 = v94 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v113 = _StringObject.sharedUTF8.getter(v94, v93);
          }

          closure #1 in _StringGuts._convertedToSmall()(v113, v114, &v244, v112);
          v94 = v244;
          v115 = v245;
        }

LABEL_173:
        v100;
        v131._rawBits = 1;
        v132._rawBits = (v105 << 16) | 1;
        v133._rawBits = _StringGuts.validateScalarRange(_:)(v131, v132, v99, v100)._rawBits;
        if (v133._rawBits < 0x10000)
        {
          v133._rawBits |= 3;
        }

        if (v133._rawBits >> 16 || v134._rawBits >> 16 != v105)
        {
          v99 = specialized static String._copying(_:)(v133._rawBits, v134._rawBits, v99, v100);
          v136 = v146;
          v100;
          if ((v136 & 0x2000000000000000) == 0)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v136 = v100;
          if ((v100 & 0x2000000000000000) == 0)
          {
LABEL_178:
            if ((v136 & 0x1000000000000000) != 0)
            {
              v99 = _StringGuts._foreignConvertedToSmall()(v99, v136);
              v195 = v194;
              v136;
              v136 = v195;
            }

            else
            {
              if ((v99 & 0x1000000000000000) != 0)
              {
                v137 = ((v136 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v138 = v99 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v137 = _StringObject.sharedUTF8.getter(v99, v136);
              }

              closure #1 in _StringGuts._convertedToSmall()(v137, v138, &v244, v135);
              v136;
              v99 = v244;
              v136 = v245;
            }

            goto LABEL_195;
          }
        }

        v136;
LABEL_195:
        v147 = HIBYTE(v115) & 0xF;
        v148 = HIBYTE(v136) & 0xF;
        v149 = v148 + v147;
        if (v148 + v147 > 0xF)
        {
LABEL_296:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v100;
        if (v148)
        {
          v150 = 0;
          v151 = 0;
          v152 = 8 * v147;
          v153 = 8 * v148;
          v4 = x1_0;
          do
          {
            v154 = v136 >> (v150 & 0x38);
            if (v151 < 8)
            {
              v154 = v99 >> v150;
            }

            v155 = (v154 << (v152 & 0x38)) | ((-255 << (v152 & 0x38)) - 1) & v115;
            v156 = (v154 << v152) | ((-255 << v152) - 1) & v94;
            if (v147 <= 7)
            {
              v94 = v156;
            }

            else
            {
              v115 = v155;
            }

            ++v147;
            v152 += 8;
            v150 += 8;
            ++v151;
          }

          while (v153 != v150);
        }

        else
        {
          v4 = x1_0;
        }

        0xE000000000000000;
        v93;
        v157 = 0xA000000000000000;
        if (!(v94 & 0x8080808080808080 | v115 & 0x80808080808080))
        {
          v157 = 0xE000000000000000;
        }

        v158 = v157 & 0xFF00000000000000 | (v149 << 56) | v115 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_242;
      }

      v116 = v109 & 0x2000000000000000;
      v117 = _StringGuts.nativeUnusedCapacity.getter(v94, v93);
      if ((v118 & 1) != 0 || v117 < v106)
      {
        if (v116)
        {
          swift_isUniquelyReferenced_nonNull_native(v93 & 0xFFFFFFFFFFFFFFFLL);
        }

        v119 = 2 * _StringGuts.nativeCapacity.getter(v94, v93);
        if (v120)
        {
          v119 = 0;
        }

        if (v119 > v108)
        {
          v108 = v119;
        }

LABEL_163:
        _StringGuts.grow(_:)(v108);
        goto LABEL_164;
      }

      if (!v116 || !swift_isUniquelyReferenced_nonNull_native(v93 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_163;
      }

LABEL_164:
      if ((v100 & 0x1000000000000000) != 0)
      {
        v100;
        _StringGuts._foreignAppendInPlace(_:)(v99, v100, 0, v105);
        0xE000000000000000;
        v145 = v100;
LABEL_233:
        v145;
        v4 = x1_0;
        v5 = v242;
        goto LABEL_243;
      }

      if (!v101)
      {
        v100;
        v244 = v99;
        v245 = v100 & 0xFFFFFFFFFFFFFFLL;
        v100;
        v170 = (v247 & 0xFFFFFFFFFFFFFFFLL);
        __StringStorage.appendInPlace(_:isASCII:)(&v244, v103, (v100 & 0x4000000000000000) != 0);
        v246 = v170[3];
        v145 = 0xE000000000000000;
        goto LABEL_233;
      }

      if ((v99 & 0x1000000000000000) != 0)
      {
        v121 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v122 = v238;
        v123 = v238;
      }

      else
      {
        v190 = _StringObject.sharedUTF8.getter(v99, v100);
        v122 = v238;
        if (v191 < v238)
        {
LABEL_292:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v121 = v190;
        v123 = v191;
      }

      v4 = x1_0;
      v5 = v242;
      v100;
      v124 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v122, v121, v123);
      v125 = (v247 & 0xFFFFFFFFFFFFFFFLL);
      __StringStorage.appendInPlace(_:isASCII:)(v124, v126, v99 < 0);
      v246 = v125[3];
      0xE000000000000000;
      v100;
LABEL_243:
      v6 = 0;
      v2 = v246;
      v183 = v247;
      v248 = v246;
      v249 = v247;
      if (v5 >= v239)
      {
        goto LABEL_259;
      }
    }

    v104 = v99 & 0xFFFFFFFFFFFFLL;
    v105 = HIBYTE(v98) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_137;
  }

  v183 = 0xE100000000000000;
LABEL_259:
  v246 = 34;
  v247 = 0xE100000000000000;
  v196 = HIBYTE(v183) & 0xF;
  if ((v183 & 0x2000000000000000) == 0)
  {
    v196 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v196)
  {
    while (1)
    {
      v13 = v246;
      v22 = v247;
      v201 = specialized Collection.first.getter(v246, v247);
      if ((v201 & 0x100000000) != 0)
      {
        break;
      }

      v244 = v2;
      v245 = v183;
      v248 = 0;
      v249 = 0xE000000000000000;
      v202 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v201);
      v204 = v203;
      _StringGuts.append(_:)(v202, v203, v205, v206, v207, v208, v209, v210, v211, v212);
      v204;
      v14 = v244;
      v20 = v245;
      v245;
      0xE000000000000000;
      v213 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v213 = v14;
      }

      if (((v20 >> 60) & ((*&v14 & 0x800000000000000) == 0)) != 0)
      {
        v214 = 11;
      }

      else
      {
        v214 = 7;
      }

      v215._rawBits = v214 | (v213 << 16);
      v216._rawBits = String.index(before:)(v215)._rawBits;
      v20;
      v217._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v215)._rawBits;
      if (!(v217._rawBits >> 14))
      {
        goto LABEL_294;
      }

      rawBits = v217._rawBits;
      v20;
      if ((v20 & 0x1000000000000000) != 0)
      {
        v223 = String.UnicodeScalarView._foreignIndex(before:)(rawBits)._rawBits;
        v20;
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v220 = 0;
          v244 = v14;
          v245 = v20 & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v222 = *(&v243 + (rawBits >> 16) + v220--) & 0xC0;
          }

          while (v222 == 128);
        }

        else
        {
          if ((*&v14 & 0x1000000000000000) != 0)
          {
            v219 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v219 = _StringObject.sharedUTF8.getter(*&v14, v20);
          }

          v220 = 0;
          do
          {
            v221 = v219[(rawBits >> 16) - 1 + v220--] & 0xC0;
          }

          while (v221 == 128);
        }

        v20;
        v223 = (rawBits - -65536 * v220) & 0xFFFFFFFFFFFF0000;
      }

      if (v216._rawBits >> 14 >= v223 >> 14)
      {
        goto LABEL_290;
      }

      v244 = v14;
      v245 = v20;
      specialized RangeReplaceableCollection<>.removeLast()();
      v225 = v244;
      v224 = v245;
      v245;
      0xE000000000000000;
      v244 = v225;
      v245 = v224;
      v224;
      v226 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v248 = v244;
      v249 = v245;
      v227 = Unicode.Scalar._escaped(asASCII:)(1);
      v197 = v227.value._object;
      if (v227.value._object)
      {
        v198 = v227.value._countAndFlagsBits;
      }

      else
      {
        v198 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v226);
      }

      v228 = v197;
      v199._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v199, v198, v228);
      v228;
      v2 = v248;
      v183 = v249;
      v200 = HIBYTE(v249) & 0xF;
      if ((v249 & 0x2000000000000000) == 0)
      {
        v200 = v248 & 0xFFFFFFFFFFFFLL;
      }

      if (!v200)
      {
        goto LABEL_291;
      }
    }

LABEL_297:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_291:
  v247;
}

uint64_t static String.== infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  if ((~a2 & 0x6000000000000000) != 0 || (a4 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, 0);
  }

  return 0;
}

uint64_t static Character.< infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if ((~a2 & 0x6000000000000000) != 0 || (a4 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, 1);
  }

  v5 = bswap64(a1) < bswap64(a3);
  v6 = bswap64(a2) < bswap64(a4);
  if (a1 == a3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void String.hash(into:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if ((a3 & 0x1000000000000000) != 0 || (v3 & 0x4000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    _StringGutsSlice._normalizedHash(into:)(a1, a2, a3, 0, v8);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v9[0] = a2;
      v9[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v6 = v9;
      v7 = v9 + (HIBYTE(a3) & 0xF);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v4 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      v6 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v4, v5);
    }

    Hasher.combine(bytes:)(*&v6);
    Hasher._combine(_:)(0xFFu);
  }
}

uint64_t _CocoaArrayWrapper.contiguousStorage(_:)(uint64_t a1, uint64_t a2, id a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v5 = [a3 countByEnumeratingWithState:v7 objects:0 count:0];
  result = 0;
  if (v5 >= a2)
  {
    if (!*(&v7[0] + 1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return *(&v7[0] + 1) + 8 * a1;
  }

  return result;
}

void _SliceBuffer.init(owner:subscriptBaseAddress:indices:hasNativeBuffer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

double _makeSwiftNSFastEnumerationState()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _CocoaArrayWrapper@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _CocoaArrayWrapper(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v1);
  *a1 = result;
  return result;
}

unint64_t _ss18_CocoaArrayWrapperVSksSk5index_8offsetBy5IndexQzAF_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3);
  *a3 = result;
  return result;
}

id protocol witness for Collection.endIndex.getter in conformance _CocoaArrayWrapper@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance _CocoaArrayWrapper(void *a1, void *a2))(uint64_t a1)
{
  v4 = [*v2 objectAtIndex_];
  *a1 = v4;
  a1[1] = v4;
  return protocol witness for Collection.subscript.read in conformance _CocoaArrayWrapper;
}

__objc2_class **protocol witness for Collection.subscript.getter in conformance _CocoaArrayWrapper@<X0>(uint64_t *a1@<X0>, __objc2_class ***a2@<X8>)
{
  result = _CocoaArrayWrapper.subscript.getter(*a1, a1[1], *v2);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

unint64_t protocol witness for Collection.indices.getter in conformance _CocoaArrayWrapper@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = 0;
  a1[1] = result;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance _CocoaArrayWrapper@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
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

unint64_t protocol witness for Collection.index(after:) in conformance _CocoaArrayWrapper@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance _CocoaArrayWrapper(unint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1);
  *a1 = result;
  return result;
}

unint64_t _ss18_CocoaArrayWrapperVSlsSl5countSivgTW_0()
{
  v1 = *v0;
  v2 = [*v0 count];

  return specialized RandomAccessCollection<>.distance(from:to:)(0, v2, v1);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance _CocoaArrayWrapper()
{
  v1 = *v0;
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  swift_unknownObjectRelease(v1);
  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance _CocoaArrayWrapper(id *a1, uint64_t a2, uint64_t a3)
{
  *a1 = _CocoaArrayWrapper._copyContents(initializing:)(a2, a3, *v3);
  a1[1] = v5;
  return v6;
}

uint64_t specialized CodingKey.description.getter(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v298 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = _int64ToString(_:radix:uppercase:)(a3, 10, 0, swift_int64ToString);
    v298 = v7;
  }

  v8 = _StringGuts.init(_initialCapacity:)(35);
  v10 = v8;
  v11 = v9;
  v301._countAndFlagsBits = v8;
  v301._object = v9;
  v12 = HIBYTE(v9) & 0xF;
  v13 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 && (v8 & ~v9 & 0x2000000000000000) == 0)
  {
    v9;
    v22 = 0xE000000000000000;
    v301._countAndFlagsBits = 0;
LABEL_24:
    v301._object = v22;
    goto LABEL_35;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v9;
    v13 = 0xE000000000000000;
    0xE000000000000000;
    v21 = 0xA000000000000000;
    if (!(v11 & 0x80808080808080 | v10 & 0x8080808080808080))
    {
      v21 = 0xE000000000000000;
    }

    v22 = (v21 & 0xFF00000000000000 | (v12 << 56) | v11 & 0xFFFFFFFFFFFFFFLL);
    v301._countAndFlagsBits = v10;
    goto LABEL_24;
  }

  0xE000000000000000;
  v16 = v13;
  if ((v11 & 0x1000000000000000) != 0)
  {
    v16 = String.UTF8View._foreignCount()();
    if ((v10 & 0x2000000000000000) == 0)
    {
LABEL_33:
      if (v16 <= 15)
      {
        goto LABEL_16;
      }

LABEL_34:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v16, 0);
      v299 = 0;
      v300 = 0;
      closure #1 in _StringGuts.append(_:)(&v299, 0, &v301, 1);
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
      goto LABEL_35;
    }
  }

  else if ((v10 & 0x2000000000000000) == 0)
  {
    goto LABEL_33;
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  v17 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
  if (v18)
  {
    goto LABEL_336;
  }

  if (v16 > 15 || (v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  if ((v11 & 0x1000000000000000) != 0)
  {
    v20 = _StringGuts._foreignConvertedToSmall()(v10, v11);
    v13 = v23;
  }

  else
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      v19 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = _StringObject.sharedUTF8.getter(v10, v11);
      v13 = v280;
    }

    closure #1 in _StringGuts._convertedToSmall()(v19, v13, &v299, v15);
    v20 = v299;
    v13 = v300;
  }

  0xE000000000000000;
  v24._rawBits = 1;
  v25._rawBits = 1;
  v26._rawBits = _StringGuts.validateScalarRange(_:)(v24, v25, 0, 0xE000000000000000)._rawBits;
  if (v26._rawBits < 0x10000)
  {
    v26._rawBits |= 3;
  }

  v28 = Substring.description.getter(v26._rawBits, v27._rawBits, 0, 0xE000000000000000);
  v4 = v29;
  0xE000000000000000;
  if ((v4 & 0x2000000000000000) == 0)
  {
    goto LABEL_326;
  }

  v4;
  while (2)
  {
    v31 = specialized _SmallString.init(_:appending:)(*&v20, v13, *&v28, v4);
    if (v33)
    {
      goto LABEL_336;
    }

    v34 = v31;
    v35 = v32;
    v11;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v301._countAndFlagsBits = v34;
    v301._object = v35;
LABEL_35:
    TypeName = swift_getTypeName(&type metadata for _DictionaryCodingKey, 0);
    if (v37 < 0)
    {
      goto LABEL_307;
    }

    v38 = TypeName;
    v39 = v37;
    v20 = 0;
    v296 = v6;
    if (_allASCII(_:)(TypeName, v37))
    {
      v41 = 1;
LABEL_38:
      if (!v39)
      {
LABEL_84:
        v43 = 0;
        object = 0xE000000000000000;
        goto LABEL_115;
      }

      if (v39 > 15)
      {
        object = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v38, v39, v39, v41 & 1);
        v43 = *(object + 24);
        goto LABEL_115;
      }

      v75 = v39 - 8;
      v76 = 8;
      if (v39 < 8)
      {
        v76 = v39;
      }

      if (v39 >= 4)
      {
        v78 = v76 & 0xC;
        v40.i32[0] = *v38;
        v79 = vmovl_u16(*&vmovl_u8(v40));
        v80.i64[0] = v79.u32[0];
        v80.i64[1] = v79.u32[1];
        v81.i64[0] = 255;
        v81.i64[1] = 255;
        v82 = vandq_s8(v80, v81);
        v80.i64[0] = v79.u32[2];
        v80.i64[1] = v79.u32[3];
        v83 = vshlq_u64(vandq_s8(v80, v81), xmmword_18071DBA0);
        v84.i32[1] = 0;
        v85 = vshlq_u64(v82, xmmword_18071DBB0);
        if (v78 != 4)
        {
          v84.i32[0] = *(v38 + 4);
          v86 = vmovl_u16(*&vmovl_u8(v84));
          v87.i64[0] = v86.u32[2];
          v87.i64[1] = v86.u32[3];
          v88 = vandq_s8(v87, v81);
          v87.i64[0] = v86.u32[0];
          v87.i64[1] = v86.u32[1];
          v83 = vorrq_s8(vshlq_u64(v88, xmmword_18071DBD0), v83);
          v85 = vorrq_s8(vshlq_u64(vandq_s8(v87, v81), xmmword_18071DBC0), v85);
        }

        v89 = vorrq_s8(v85, v83);
        v43 = vorr_s8(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
        if (v76 != v78)
        {
          v77 = 8 * v78;
          goto LABEL_105;
        }
      }

      else
      {
        v43 = 0;
        v77 = 0;
        v78 = 0;
LABEL_105:
        v90 = v76 - v78;
        v91 = (v38 + v78);
        do
        {
          v92 = *v91++;
          v43 |= v92 << (v77 & 0x38);
          v77 += 8;
          --v90;
        }

        while (v90);
      }

      if (v39 < 9)
      {
        v93 = 0;
      }

      else
      {
        v93 = 0;
        v94 = 0;
        v95 = (v38 + 8);
        do
        {
          v96 = *v95++;
          v93 |= v96 << v94;
          v94 += 8;
          --v75;
        }

        while (v75);
      }

      v97 = 0xA000000000000000;
      if (((v93 | v43) & 0x8080808080808080) == 0)
      {
        v97 = 0xE000000000000000;
      }

      object = v97 | (v39 << 56) | v93;
      goto LABEL_115;
    }

    if (!v39)
    {
      goto LABEL_84;
    }

    v11 = 0;
    v44 = (v38 + v39);
    v41 = 1;
    v45 = v38;
    v46 = v38;
    while (1)
    {
      v48 = *v46++;
      v47 = v48;
      if ((v48 & 0x80000000) == 0)
      {
        v49 = 1;
        goto LABEL_45;
      }

      if ((v47 + 11) <= 0xCCu)
      {
        LOBYTE(v299) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v47);
        goto LABEL_86;
      }

      if (v47 > 0xDFu)
      {
        break;
      }

      if (v46 == v44 || (*v46 & 0xC0) != 0x80)
      {
LABEL_302:
        v271 = 4;
        goto LABEL_303;
      }

      v41 = 0;
      v46 = v45 + 2;
      v49 = 2;
LABEL_45:
      v11 += v49;
      v45 = v46;
      if (v46 == v44)
      {
        goto LABEL_38;
      }
    }

    if (v47 == 224)
    {
      if (v46 == v44)
      {
        goto LABEL_302;
      }

      if (v45[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_306;
      }

      goto LABEL_69;
    }

    if (v47 <= 0xECu)
    {
      goto LABEL_67;
    }

    if (v47 == 237)
    {
      if (v46 == v44)
      {
        goto LABEL_302;
      }

      v50 = v45[1];
      if (v50 > 0x9F || (v50 & 0xC0) != 0x80)
      {
        v271 = 1;
        goto LABEL_303;
      }

      goto LABEL_69;
    }

    if (v47 <= 0xEFu)
    {
LABEL_67:
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

LABEL_69:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      v41 = 0;
      v46 = v45 + 3;
      v49 = 3;
      goto LABEL_45;
    }

    if (v47 == 240)
    {
      if (v46 == v44)
      {
        goto LABEL_302;
      }

      if (v45[1] - 192 < 0xFFFFFFD0)
      {
LABEL_306:
        v271 = 3;
        goto LABEL_303;
      }

      goto LABEL_79;
    }

    if (v47 <= 0xF3u)
    {
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      goto LABEL_79;
    }

    if (v46 == v44)
    {
      goto LABEL_302;
    }

    v51 = v45[1];
    if (v51 <= 0x8F && (v51 & 0xC0) == 0x80)
    {
LABEL_79:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80 || v45 + 3 == v44 || (v45[3] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      v41 = 0;
      v46 = v45 + 4;
      v49 = 4;
      goto LABEL_45;
    }

    v271 = 2;
LABEL_303:
    LOBYTE(v299) = v271;
LABEL_86:
    swift_willThrowTypedImpl(&v299, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v52 = specialized Collection.subscript.getter(v11, v38, v39);
    v28 = findInvalidRange #1 (_:) in validateUTF8(_:)(v52, v53, v54, v55);
    v299 = 0;
    v300 = 0xE000000000000000;
    if (__OFADD__(v39, 15))
    {
      __break(1u);
LABEL_326:
      if ((v4 & 0x1000000000000000) != 0)
      {
        v28 = _StringGuts._foreignConvertedToSmall()(*&v28, v4);
        v294 = v293;
        v4;
        v4 = v294;
      }

      else
      {
        if ((*&v28 & 0x1000000000000000) != 0)
        {
          v278 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v279 = *&v28 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v278 = _StringObject.sharedUTF8.getter(*&v28, v4);
        }

        closure #1 in _StringGuts._convertedToSmall()(v278, v279, &v299, v30);
        v4;
        v28 = v299;
        v4 = v300;
      }

      continue;
    }

    break;
  }

  v13 = v56;
  v11 = &v299;
  _StringGuts.reserveCapacity(_:)(v39 + 15);
  v57 = v28;
  while (1)
  {
    v58 = specialized Collection.subscript.getter(v57, v38, v39);
    v62 = v299 & 0xFFFFFFFFFFFFLL;
    if ((v300 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v300) & 0xF;
    }

    v63 = __OFADD__(v62, v39);
    v64 = v62 + v39;
    if (v63)
    {
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v65 = v58;
    if (__OFADD__(v64, 3))
    {
      goto LABEL_305;
    }

    v4 = v59;
    v66 = v60;
    v6 = v61;
    _StringGuts.reserveCapacity(_:)(v64 + 3);
    v67 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v65, v4, v66, v6);
    v11 = &v299;
    _StringGuts.appendInPlace(_:isASCII:)(v67, v68, 0);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v299);
    v69 = specialized Collection.subscript.getter(v13, v38, v39);
    v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v69, v70, v71, v72);
    v39 = v73;
    if ((validateUTF8(_:)(v38, v73) & 0x8000000000000000) == 0)
    {
      break;
    }

    v13 = v74;
    if (!v39)
    {
      goto LABEL_100;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v38, v39, 0);
LABEL_100:
  v43 = v299;
  object = v300;
LABEL_115:
  countAndFlagsBits = v301._countAndFlagsBits;
  v99 = (v301._object >> 56) & 0xF;
  v100 = v301._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v301._object & 0x2000000000000000) != 0)
  {
    v100 = (v301._object >> 56) & 0xF;
  }

  if (v100 || (v301._countAndFlagsBits & ~v301._object & 0x2000000000000000) != 0)
  {
    if ((v301._object & 0x2000000000000000) == 0)
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v101 = HIBYTE(object) & 0xF;
        goto LABEL_124;
      }

LABEL_123:
      v101 = v43 & 0xFFFFFFFFFFFFLL;
      goto LABEL_124;
    }

    if ((object & 0x2000000000000000) == 0)
    {
      goto LABEL_123;
    }

    v101 = HIBYTE(object) & 0xF;
    v115 = v99 + v101;
    if (v99 + v101 > 0xF)
    {
LABEL_124:
      object;
      _StringGuts.append(_:)(v43, object, 0, v101, v102, v103, v104, v105, v106, v107, v108, v109);
      swift_bridgeObjectRelease_n(object, 2);
      v43 = v301._countAndFlagsBits;
      object = v301._object;
    }

    else
    {
      if (v101)
      {
        v116 = 0;
        v117 = 0;
        v118 = 8 * v99;
        v119 = 8 * v101;
        v120 = v301._object;
        do
        {
          v121 = object >> (v116 & 0x38);
          if (v117 < 8)
          {
            v121 = v43 >> v116;
          }

          v122 = (v121 << (v118 & 0x38)) | ((-255 << (v118 & 0x38)) - 1) & v120;
          v123 = (v121 << v118) | ((-255 << v118) - 1) & countAndFlagsBits;
          if (v99 <= 7)
          {
            countAndFlagsBits = v123;
          }

          else
          {
            v120 = v122;
          }

          ++v99;
          v118 += 8;
          v116 += 8;
          ++v117;
        }

        while (v119 != v116);
      }

      else
      {
        v120 = v301._object;
      }

      v301._object;
      object;
      v185 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v120 & 0x80808080808080))
      {
        v185 = 0xE000000000000000;
      }

      object = v185 & 0xFF00000000000000 | (v115 << 56) | v120 & 0xFFFFFFFFFFFFFFLL;
      v301._countAndFlagsBits = countAndFlagsBits;
      v301._object = object;
      v43 = countAndFlagsBits;
    }
  }

  else
  {
    v301._object;
    v301._countAndFlagsBits = v43;
    v301._object = object;
  }

  v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(stringValue: ", 0xFuLL, 1);
  v111 = v110._countAndFlagsBits;
  v112 = v110._object;
  v113 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v113 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v113 && (v43 & ~object & 0x2000000000000000) == 0)
  {
    object;
    v301 = v110;
    goto LABEL_150;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v110._object & 0x2000000000000000) == 0)
    {
      goto LABEL_133;
    }

    v124 = specialized _SmallString.init(_:appending:)(v43, object, v110._countAndFlagsBits, v110._object);
    if (v126)
    {
      goto LABEL_145;
    }

    v136 = v124;
    v137 = v125;
    object;
    v110._object;
    v301._countAndFlagsBits = v136;
    v301._object = v137;
    v112 = v137;
    v111 = v136;
LABEL_150:
    v127 = a2;
    goto LABEL_151;
  }

  if ((v110._object & 0x2000000000000000) == 0)
  {
LABEL_133:
    v114 = v110._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_146;
  }

LABEL_145:
  v114 = (v110._object >> 56) & 0xF;
LABEL_146:
  v127 = a2;
  v110._object;
  _StringGuts.append(_:)(v110._countAndFlagsBits, v110._object, 0, v114, v128, v129, v130, v131, v132, v133, v134, v135);
  swift_bridgeObjectRelease_n(v110._object, 2);
  v111 = v301._countAndFlagsBits;
  v112 = v301._object;
LABEL_151:
  v138 = HIBYTE(v112) & 0xF;
  v139 = *&v111 & 0xFFFFFFFFFFFFLL;
  if ((v112 & 0x2000000000000000) != 0)
  {
    v140 = HIBYTE(v112) & 0xF;
  }

  else
  {
    v140 = *&v111 & 0xFFFFFFFFFFFFLL;
  }

  if (!v140 && (*&v111 & ~v112 & 0x2000000000000000) == 0)
  {
    v127;
    v112;
    v301._countAndFlagsBits = a1;
    v301._object = v127;
    goto LABEL_219;
  }

  v141 = (v127 & 0x2000000000000000) == 0;
  v142 = HIBYTE(v127) & 0xF;
  if ((v112 & 0x2000000000000000) == 0)
  {
    v143 = a1 & 0xFFFFFFFFFFFFLL;
    v144 = HIBYTE(v127) & 0xF;
    if ((v127 & 0x2000000000000000) == 0)
    {
LABEL_160:
      v144 = v143;
    }

    v295 = v143;
    if ((v127 & 0x1000000000000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_186:
    v145 = v127;
    swift_bridgeObjectRetain_n(v127, 3);
    v167._rawBits = 1;
    v168._rawBits = (v144 << 16) | 1;
    v169._rawBits = _StringGuts.validateScalarRange(_:)(v167, v168, a1, v127)._rawBits;
    if (v169._rawBits < 0x10000)
    {
      v169._rawBits |= 3;
    }

    v149 = String.UTF8View.distance(from:to:)(v169, v170);
    v145;
    if ((v112 & 0x1000000000000000) != 0)
    {
      goto LABEL_189;
    }

LABEL_163:
    v63 = __OFADD__(v140, v149);
    v150 = v140 + v149;
    if (v63)
    {
      goto LABEL_191;
    }

LABEL_164:
    if ((*&v111 & ~v112 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v112 & 0xFFFFFFFFFFFFFFFLL))
    {
      v151 = _StringGuts.nativeUnusedCapacity.getter(*&v111, v112);
      if (v152)
      {
        goto LABEL_336;
      }

      v153 = (v112 >> 61) & 1;
      if (v151 < v149)
      {
        LODWORD(v153) = 1;
      }

      if (v150 <= 15 && v153)
      {
        goto LABEL_171;
      }
    }

    else if (v150 <= 15)
    {
LABEL_171:
      if ((v112 & 0x2000000000000000) != 0)
      {
        v139 = v112;
      }

      else if ((v112 & 0x1000000000000000) != 0)
      {
        v111 = _StringGuts._foreignConvertedToSmall()(*&v111, v112);
        v139 = v285;
      }

      else
      {
        if ((*&v111 & 0x1000000000000000) != 0)
        {
          v272 = ((v112 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v272 = _StringObject.sharedUTF8.getter(*&v111, v112);
          v139 = v291;
        }

        closure #1 in _StringGuts._convertedToSmall()(v272, v139, &v299, v148);
        v111 = v299;
        v139 = v300;
      }

      v145;
      v154._rawBits = 1;
      v155._rawBits = (v144 << 16) | 1;
      rawBits = _StringGuts.validateScalarRange(_:)(v154, v155, a1, v145)._rawBits;
      if (rawBits < 0x10000)
      {
        rawBits |= 3uLL;
      }

      if (rawBits >> 16 || v147 >> 16 != v144)
      {
        goto LABEL_192;
      }

      v157 = v145;
      v158 = a1;
LABEL_193:
      if ((v157 & 0x2000000000000000) != 0)
      {
        v157;
      }

      else if ((v157 & 0x1000000000000000) != 0)
      {
        v158 = _StringGuts._foreignConvertedToSmall()(*&v158, v157);
        v287 = v286;
        v157;
        v157 = v287;
      }

      else
      {
        if ((*&v158 & 0x1000000000000000) != 0)
        {
          v273 = ((v157 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v274 = *&v158 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v273 = _StringObject.sharedUTF8.getter(*&v158, v157);
        }

        closure #1 in _StringGuts._convertedToSmall()(v273, v274, &v299, v156);
        v157;
        v158 = v299;
        v157 = v300;
      }

      v172 = specialized _SmallString.init(_:appending:)(*&v111, v139, *&v158, v157);
      if ((v174 & 1) == 0)
      {
        v175 = v172;
        v176 = v173;
        v112;
        swift_bridgeObjectRelease_n(v145, 2);
        v301._countAndFlagsBits = v175;
        v301._object = v176;
        goto LABEL_219;
      }

      goto LABEL_336;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v150, v149);
    if ((v145 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(a1, v145, 0, v144);
    }

    else
    {
      if (v141)
      {
        v159 = a1;
        if ((a1 & 0x1000000000000000) != 0)
        {
          v160 = (v145 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v161 = v295;
          v162 = v295;
        }

        else
        {
          v281 = _StringObject.sharedUTF8.getter(a1, v145);
          if (v282 < v295)
          {
            goto LABEL_307;
          }

          v160 = v281;
          v162 = v282;
          v159 = a1;
          v161 = v295;
        }

        v163 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v161, v160, v162);
        v165 = v159 >> 63;
      }

      else
      {
        v165 = (v145 >> 62) & 1;
        v299 = a1;
        v300 = v145 & 0xFFFFFFFFFFFFFFLL;
        v163 = &v299;
        v164 = v142;
      }

      closure #1 in _StringGuts.append(_:)(v163, v164, &v301, v165);
    }

    swift_bridgeObjectRelease_n(v145, 2);
    goto LABEL_219;
  }

  if ((v127 & 0x2000000000000000) == 0)
  {
    v143 = a1 & 0xFFFFFFFFFFFFLL;
    v141 = 1;
    goto LABEL_160;
  }

  v166 = v138 + v142;
  if (v138 + v142 >= 0x10)
  {
    v141 = 0;
    v144 = HIBYTE(v127) & 0xF;
    v295 = a1 & 0xFFFFFFFFFFFFLL;
    if ((v127 & 0x1000000000000000) != 0)
    {
      goto LABEL_186;
    }

LABEL_162:
    v145 = v127;
    rawBits = swift_bridgeObjectRetain_n(v127, 2);
    v149 = v144;
    if ((v112 & 0x1000000000000000) == 0)
    {
      goto LABEL_163;
    }

LABEL_189:
    rawBits = String.UTF8View._foreignCount()();
    v150 = rawBits + v149;
    if (!__OFADD__(rawBits, v149))
    {
      goto LABEL_164;
    }

LABEL_191:
    __break(1u);
LABEL_192:
    v158 = specialized static String._copying(_:)(rawBits, v147, a1, v145);
    v157 = v171;
    v145;
    goto LABEL_193;
  }

  if (v142)
  {
    v177 = 0;
    v178 = 0;
    v179 = 8 * v138;
    v180 = 8 * v142;
    v181 = v112;
    do
    {
      v182 = v127 >> (v177 & 0x38);
      if (v178 < 8)
      {
        v182 = a1 >> v177;
      }

      v183 = (v182 << (v179 & 0x38)) | ((-255 << (v179 & 0x38)) - 1) & v181;
      v184 = (v182 << v179) | ((-255 << v179) - 1) & *&v111;
      if (v138 <= 7)
      {
        v111 = v184;
      }

      else
      {
        v181 = v183;
      }

      ++v138;
      v179 += 8;
      v177 += 8;
      ++v178;
    }

    while (v180 != v177);
  }

  else
  {
    v181 = v112;
  }

  v112;
  v186 = 0xA000000000000000;
  if (!(*&v111 & 0x8080808080808080 | v181 & 0x80808080808080))
  {
    v186 = 0xE000000000000000;
  }

  v301._countAndFlagsBits = v111;
  v301._object = (v186 & 0xFF00000000000000 | (v166 << 56) | v181 & 0xFFFFFFFFFFFFFFLL);
LABEL_219:
  v187 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", intValue: ", 0xDuLL, 1);
  v188 = v187._countAndFlagsBits;
  v189 = v187._object;
  v190 = v301._object;
  v191 = (v301._object >> 56) & 0xF;
  if ((v301._object & 0x2000000000000000) == 0)
  {
    v191 = v301._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v191 && (v301._countAndFlagsBits & ~v301._object & 0x2000000000000000) == 0)
  {
    v301._object;
    v301 = v187;
    goto LABEL_231;
  }

  if ((v301._object & 0x2000000000000000) != 0)
  {
    if ((v187._object & 0x2000000000000000) != 0)
    {
      v193 = specialized _SmallString.init(_:appending:)(v301._countAndFlagsBits, v301._object, v187._countAndFlagsBits, v187._object);
      if (v195)
      {
        goto LABEL_229;
      }

      v247 = v193;
      v248 = v194;
      v190;
      v187._object;
      v301._countAndFlagsBits = v247;
      v301._object = v248;
      v189 = v248;
      v188 = v247;
      goto LABEL_231;
    }

LABEL_227:
    v192 = v187._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_230;
  }

  if ((v187._object & 0x2000000000000000) == 0)
  {
    goto LABEL_227;
  }

LABEL_229:
  v192 = (v187._object >> 56) & 0xF;
LABEL_230:
  v187._object;
  _StringGuts.append(_:)(v187._countAndFlagsBits, v187._object, 0, v192, v196, v197, v198, v199, v200, v201, v202, v203);
  swift_bridgeObjectRelease_n(v187._object, 2);
  v188 = v301._countAndFlagsBits;
  v189 = v301._object;
LABEL_231:
  v204 = HIBYTE(v189) & 0xF;
  v205 = *&v188 & 0xFFFFFFFFFFFFLL;
  if ((v189 & 0x2000000000000000) != 0)
  {
    v206 = HIBYTE(v189) & 0xF;
  }

  else
  {
    v206 = *&v188 & 0xFFFFFFFFFFFFLL;
  }

  if (!v206 && (*&v188 & ~v189 & 0x2000000000000000) == 0)
  {
    v189;
    v301._countAndFlagsBits = v296;
    v301._object = v298;
    goto LABEL_293;
  }

  v207 = (v298 & 0x2000000000000000) == 0;
  v208 = HIBYTE(v298) & 0xF;
  if ((v189 & 0x2000000000000000) == 0)
  {
    v209 = *&v296 & 0xFFFFFFFFFFFFLL;
    v210 = HIBYTE(v298) & 0xF;
    if ((v298 & 0x2000000000000000) == 0)
    {
LABEL_240:
      v210 = v209;
    }

    if ((v298 & 0x1000000000000000) == 0)
    {
      goto LABEL_242;
    }

LABEL_267:
    swift_bridgeObjectRetain_n(v298, 2);
    v242._rawBits = 1;
    v243._rawBits = (v210 << 16) | 1;
    v244._rawBits = _StringGuts.validateScalarRange(_:)(v242, v243, *&v296, v298)._rawBits;
    if (v244._rawBits < 0x10000)
    {
      v244._rawBits |= 3;
    }

    v212 = String.UTF8View.distance(from:to:)(v244, v245);
    v298;
    if ((v189 & 0x1000000000000000) != 0)
    {
      goto LABEL_270;
    }

LABEL_243:
    v63 = __OFADD__(v206, v212);
    v213 = v206 + v212;
    if (v63)
    {
      goto LABEL_272;
    }

LABEL_244:
    if ((*&v188 & ~v189 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v189 & 0xFFFFFFFFFFFFFFFLL))
    {
      v214 = _StringGuts.nativeUnusedCapacity.getter(*&v188, v189);
      if (v215)
      {
        goto LABEL_336;
      }

      v216 = (v189 >> 61) & 1;
      if (v214 < v212)
      {
        LODWORD(v216) = 1;
      }

      if (v213 <= 15 && v216)
      {
        goto LABEL_251;
      }
    }

    else if (v213 <= 15)
    {
LABEL_251:
      if ((v189 & 0x2000000000000000) != 0)
      {
        v217 = v189;
        v218 = v298;
        v219 = v296;
      }

      else
      {
        v219 = v296;
        if ((v189 & 0x1000000000000000) != 0)
        {
          v188 = _StringGuts._foreignConvertedToSmall()(*&v188, v189);
          v217 = v288;
          v218 = v298;
        }

        else
        {
          if ((*&v188 & 0x1000000000000000) != 0)
          {
            v275 = ((v189 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v275 = _StringObject.sharedUTF8.getter(*&v188, v189);
            v205 = v292;
          }

          closure #1 in _StringGuts._convertedToSmall()(v275, v205, &v299, v211);
          v188 = v299;
          v217 = v300;
          v218 = v298;
        }
      }

      v220 = (v210 << 16) | 1;
      v221 = v218;
      v218;
      v222._rawBits = 1;
      v223._rawBits = v220;
      v224._rawBits = _StringGuts.validateScalarRange(_:)(v222, v223, v219, v221)._rawBits;
      if (v224._rawBits < 0x10000)
      {
        v224._rawBits |= 3;
      }

      v226 = Substring.description.getter(v224._rawBits, v225._rawBits, v219, v221);
      v228 = v227;
      v221;
      if ((v228 & 0x2000000000000000) != 0)
      {
        v228;
      }

      else if ((v228 & 0x1000000000000000) != 0)
      {
        v226 = _StringGuts._foreignConvertedToSmall()(*&v226, v228);
        v290 = v289;
        v228;
        v228 = v290;
      }

      else
      {
        if ((*&v226 & 0x1000000000000000) != 0)
        {
          v276 = ((v228 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v277 = *&v226 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v276 = _StringObject.sharedUTF8.getter(*&v226, v228);
        }

        closure #1 in _StringGuts._convertedToSmall()(v276, v277, &v299, v229);
        v228;
        v226 = v299;
        v228 = v300;
      }

      v230 = specialized _SmallString.init(_:appending:)(*&v188, v217, *&v226, v228);
      if ((v232 & 1) == 0)
      {
        v233 = v230;
        v234 = v231;
        v189;
        swift_bridgeObjectRelease_n(v298, 2);
        v301._countAndFlagsBits = v233;
        v301._object = v234;
        goto LABEL_293;
      }

LABEL_336:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v213, v212);
    v212 = v298;
    if ((v298 & 0x1000000000000000) != 0)
    {
      goto LABEL_273;
    }

    v235 = v296;
    if (!v207)
    {
      v299 = v296;
      v300 = v298 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v299, v208, &v301, (v298 & 0x4000000000000000) != 0);
      goto LABEL_287;
    }

    if ((*&v296 & 0x1000000000000000) != 0)
    {
      v236 = (v298 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v237 = v209;
LABEL_264:
      v238 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v209, v236, v237);
      closure #1 in _StringGuts.append(_:)(v238, v239, &v301, v235 < 0);
      v240 = v298;
      goto LABEL_288;
    }

    v283 = _StringObject.sharedUTF8.getter(*&v296, v298);
    if (v284 >= v209)
    {
      v236 = v283;
      v237 = v284;
      v235 = v296;
      goto LABEL_264;
    }

LABEL_307:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v298 & 0x2000000000000000) == 0)
  {
    v209 = *&v296 & 0xFFFFFFFFFFFFLL;
    v207 = 1;
    goto LABEL_240;
  }

  v241 = v204 + v208;
  if (v204 + v208 < 0x10)
  {
    if (v208)
    {
      v249 = 0;
      v250 = 0;
      v251 = 8 * v204;
      v252 = v189;
      do
      {
        v253 = v298 >> (v249 & 0x38);
        if (v250 < 8)
        {
          v253 = *&v296 >> v249;
        }

        v254 = (v253 << (v251 & 0x38)) | ((-255 << (v251 & 0x38)) - 1) & v252;
        v255 = (v253 << v251) | ((-255 << v251) - 1) & *&v188;
        if (v204 <= 7)
        {
          v188 = v255;
        }

        else
        {
          v252 = v254;
        }

        ++v204;
        v251 += 8;
        v249 += 8;
        ++v250;
      }

      while (8 * v208 != v249);
    }

    else
    {
      v252 = v189;
    }

    v189;
    v298;
    v256 = 0xA000000000000000;
    if (!(*&v188 & 0x8080808080808080 | v252 & 0x80808080808080))
    {
      v256 = 0xE000000000000000;
    }

    v301._countAndFlagsBits = v188;
    v301._object = (v256 & 0xFF00000000000000 | (v241 << 56) | v252 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v207 = 0;
    v209 = *&v296 & 0xFFFFFFFFFFFFLL;
    v210 = HIBYTE(v298) & 0xF;
    if ((v298 & 0x1000000000000000) != 0)
    {
      goto LABEL_267;
    }

LABEL_242:
    v298;
    v212 = v210;
    if ((v189 & 0x1000000000000000) == 0)
    {
      goto LABEL_243;
    }

LABEL_270:
    v246 = String.UTF8View._foreignCount()();
    v213 = v246 + v212;
    if (!__OFADD__(v246, v212))
    {
      goto LABEL_244;
    }

LABEL_272:
    __break(1u);
LABEL_273:
    _StringGuts._foreignAppendInPlace(_:)(*&v296, v212, 0, v210);
LABEL_287:
    v240 = v212;
LABEL_288:
    swift_bridgeObjectRelease_n(v240, 2);
  }

LABEL_293:
  v257 = v301._object;
  v258 = (v301._object >> 56) & 0xF;
  if ((v301._object & 0x2000000000000000) == 0)
  {
    v258 = v301._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v258 || (v301._countAndFlagsBits & ~v301._object & 0x2000000000000000) != 0)
  {
    if ((v301._object & 0x2000000000000000) != 0 && (v259 = specialized _SmallString.init(_:appending:)(v301._countAndFlagsBits, v301._object, 0x29uLL, 0xE100000000000000), (v260 & 1) == 0))
    {
      v270 = v259;
      v257;
      0xE100000000000000;
      return v270;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v261, v262, v263, v264, v265, v266, v267, v268);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v301._countAndFlagsBits;
    }
  }

  else
  {
    v301._object;
    return 41;
  }
}

{
  if (a4)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = _int64ToString(_:radix:uppercase:)(a3, 10, 0, swift_int64ToString);
  }

  v300 = v5;
  v7 = _StringGuts.init(_initialCapacity:)(35);
  v9 = v7;
  v10 = v8;
  v303._countAndFlagsBits = v7;
  v303._object = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 && (v7 & ~v8 & 0x2000000000000000) == 0)
  {
    v8;
    v35 = 0xE000000000000000;
    v303._countAndFlagsBits = 0;
LABEL_30:
    v303._object = v35;
    goto LABEL_34;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v8;
    0xE000000000000000;
    v34 = 0xA000000000000000;
    if (!(v10 & 0x80808080808080 | v9 & 0x8080808080808080))
    {
      v34 = 0xE000000000000000;
    }

    v35 = (v34 & 0xFF00000000000000 | (v11 << 56) | v10 & 0xFFFFFFFFFFFFFFLL);
    v303._countAndFlagsBits = v9;
    goto LABEL_30;
  }

  0xE000000000000000;
  v15 = v12;
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = String.UTF8View._foreignCount()();
    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_32:
      if (v15 < 16)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v9 & 0x2000000000000000) == 0)
  {
    goto LABEL_32;
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_32;
  }

  v16 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
  if (v17)
  {
    goto LABEL_334;
  }

  if (v15 <= 15 && (v16 & 0x8000000000000000) != 0)
  {
LABEL_16:
    if ((v10 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        v18 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v18 = _StringObject.sharedUTF8.getter(v9, v10);
        v12 = v280;
      }

      closure #1 in _StringGuts._convertedToSmall()(v18, v12, &v301, v14);
      v19 = v301;
      v20 = v302;
      goto LABEL_20;
    }

    goto LABEL_323;
  }

LABEL_33:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v15, 0);
  v301 = 0;
  v302 = 0;
  closure #1 in _StringGuts.append(_:)(&v301, 0, &v303, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_34:
  while (2)
  {
    TypeName = swift_getTypeName(&type metadata for _GenericIndexKey, 0);
    if (v37 < 0)
    {
      goto LABEL_304;
    }

    v38 = TypeName;
    v39 = v37;
    v9 = 0;
    v296 = v6;
    if (_allASCII(_:)(TypeName, v37))
    {
      v41 = 1;
LABEL_37:
      if (!v39)
      {
LABEL_83:
        v43 = 0;
        object = 0xE000000000000000;
        goto LABEL_114;
      }

      if (v39 > 15)
      {
        object = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v38, v39, v39, v41 & 1);
        v43 = *(object + 24);
        goto LABEL_114;
      }

      v78 = v39 - 8;
      v79 = 8;
      if (v39 < 8)
      {
        v79 = v39;
      }

      if (v39 > 3)
      {
        v81 = v79 & 0xC;
        v40.i32[0] = *v38;
        v82 = vmovl_u16(*&vmovl_u8(v40));
        v83.i64[0] = v82.u32[0];
        v83.i64[1] = v82.u32[1];
        v84.i64[0] = 255;
        v84.i64[1] = 255;
        v85 = vandq_s8(v83, v84);
        v83.i64[0] = v82.u32[2];
        v83.i64[1] = v82.u32[3];
        v86 = vshlq_u64(vandq_s8(v83, v84), xmmword_18071DBA0);
        v87.i32[1] = 0;
        v88 = vshlq_u64(v85, xmmword_18071DBB0);
        if (v81 != 4)
        {
          v87.i32[0] = *(v38 + 4);
          v89 = vmovl_u16(*&vmovl_u8(v87));
          v90.i64[0] = v89.u32[2];
          v90.i64[1] = v89.u32[3];
          v91 = vandq_s8(v90, v84);
          v90.i64[0] = v89.u32[0];
          v90.i64[1] = v89.u32[1];
          v86 = vorrq_s8(vshlq_u64(v91, xmmword_18071DBD0), v86);
          v88 = vorrq_s8(vshlq_u64(vandq_s8(v90, v84), xmmword_18071DBC0), v88);
        }

        v92 = vorrq_s8(v88, v86);
        v43 = vorr_s8(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
        if (v79 != v81)
        {
          v80 = 8 * v81;
          goto LABEL_104;
        }
      }

      else
      {
        v43 = 0;
        v80 = 0;
        v81 = 0;
LABEL_104:
        v93 = v79 - v81;
        v94 = (v38 + v81);
        do
        {
          v95 = *v94++;
          v43 |= v95 << (v80 & 0x38);
          v80 += 8;
          --v93;
        }

        while (v93);
      }

      if (v39 < 9)
      {
        v96 = 0;
      }

      else
      {
        v96 = 0;
        v97 = 0;
        v98 = (v38 + 8);
        do
        {
          v99 = *v98++;
          v96 |= v99 << v97;
          v97 += 8;
          --v78;
        }

        while (v78);
      }

      v100 = 0xA000000000000000;
      if (((v96 | v43) & 0x8080808080808080) == 0)
      {
        v100 = 0xE000000000000000;
      }

      object = v100 | (v39 << 56) | v96;
      goto LABEL_114;
    }

    if (!v39)
    {
      goto LABEL_83;
    }

    v10 = 0;
    v44 = (v38 + v39);
    v41 = 1;
    v45 = v38;
    v46 = v38;
    while (1)
    {
      v48 = *v46++;
      v47 = v48;
      if ((v48 & 0x80000000) == 0)
      {
        v49 = 1;
        goto LABEL_44;
      }

      if ((v47 + 11) < 0xCDu)
      {
        LOBYTE(v301) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v47);
        goto LABEL_85;
      }

      if (v47 >= 0xE0u)
      {
        break;
      }

      if (v46 == v44 || (*v46 & 0xC0) != 0x80)
      {
LABEL_300:
        LOBYTE(v301) = 4;
        goto LABEL_85;
      }

      v41 = 0;
      v46 = v45 + 2;
      v49 = 2;
LABEL_44:
      v10 += v49;
      v45 = v46;
      if (v46 == v44)
      {
        goto LABEL_37;
      }
    }

    if (v47 == 224)
    {
      if (v46 == v44)
      {
        goto LABEL_300;
      }

      if (v45[1] - 192 <= 0xFFFFFFDF)
      {
        goto LABEL_303;
      }

      goto LABEL_68;
    }

    if (v47 <= 0xECu)
    {
      goto LABEL_66;
    }

    if (v47 == 237)
    {
      if (v46 == v44)
      {
        goto LABEL_300;
      }

      v50 = v45[1];
      if (v50 > 0x9F || (v50 & 0xC0) != 0x80)
      {
        LOBYTE(v301) = 1;
        goto LABEL_85;
      }

      goto LABEL_68;
    }

    if (v47 <= 0xEFu)
    {
LABEL_66:
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

LABEL_68:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

      v41 = 0;
      v46 = v45 + 3;
      v49 = 3;
      goto LABEL_44;
    }

    if (v47 == 240)
    {
      if (v46 == v44)
      {
        goto LABEL_300;
      }

      if (v45[1] - 192 < 0xFFFFFFD0)
      {
LABEL_303:
        LOBYTE(v301) = 3;
        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v47 <= 0xF3u)
    {
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

      goto LABEL_78;
    }

    if (v46 == v44)
    {
      goto LABEL_300;
    }

    v51 = v45[1];
    if (v51 <= 0x8F && (v51 & 0xC0) == 0x80)
    {
LABEL_78:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80 || v45 + 3 == v44 || (v45[3] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

      v41 = 0;
      v46 = v45 + 4;
      v49 = 4;
      goto LABEL_44;
    }

    LOBYTE(v301) = 2;
LABEL_85:
    swift_willThrowTypedImpl(&v301, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v52 = specialized Collection.subscript.getter(v10, v38, v39);
    v57 = findInvalidRange #1 (_:) in validateUTF8(_:)(v52, v53, v54, v55);
    v301 = 0;
    v302 = 0xE000000000000000;
    if (__OFADD__(v39, 15))
    {
      __break(1u);
LABEL_323:
      v19 = _StringGuts._foreignConvertedToSmall()(v9, v10);
      v20 = v277;
LABEL_20:
      0xE000000000000000;
      v21._rawBits = 1;
      v22._rawBits = 1;
      v23._rawBits = _StringGuts.validateScalarRange(_:)(v21, v22, 0, 0xE000000000000000)._rawBits;
      if (v23._rawBits < 0x10000)
      {
        v23._rawBits |= 3;
      }

      v25 = Substring.description.getter(v23._rawBits, v24._rawBits, 0, 0xE000000000000000);
      v27 = v26;
      0xE000000000000000;
      if ((v27 & 0x2000000000000000) != 0)
      {
        v27;
      }

      else if ((v27 & 0x1000000000000000) != 0)
      {
        v25 = _StringGuts._foreignConvertedToSmall()(*&v25, v27);
        v294 = v293;
        v27;
        v27 = v294;
      }

      else
      {
        if ((*&v25 & 0x1000000000000000) != 0)
        {
          v278 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v279 = *&v25 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v278 = _StringObject.sharedUTF8.getter(*&v25, v27);
        }

        closure #1 in _StringGuts._convertedToSmall()(v278, v279, &v301, v28);
        v27;
        v25 = v301;
        v27 = v302;
      }

      v29 = specialized _SmallString.init(_:appending:)(*&v19, v20, *&v25, v27);
      if (v31)
      {
        goto LABEL_334;
      }

      v32 = v29;
      v33 = v30;
      v10;
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
      v303._countAndFlagsBits = v32;
      v303._object = v33;
      continue;
    }

    break;
  }

  v58 = v56;
  v10 = &v301;
  _StringGuts.reserveCapacity(_:)(v39 + 15);
  v59 = v57;
  while (1)
  {
    v60 = specialized Collection.subscript.getter(v59, v38, v39);
    v64 = v301 & 0xFFFFFFFFFFFFLL;
    if ((v302 & 0x2000000000000000) != 0)
    {
      v64 = HIBYTE(v302) & 0xF;
    }

    v65 = __OFADD__(v64, v39);
    v66 = v64 + v39;
    if (v65)
    {
      __break(1u);
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    v67 = v60;
    if (__OFADD__(v66, 3))
    {
      goto LABEL_302;
    }

    v68 = v61;
    v69 = v62;
    v6 = v63;
    _StringGuts.reserveCapacity(_:)(v66 + 3);
    v70 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v67, v68, v69, v6);
    v10 = &v301;
    _StringGuts.appendInPlace(_:isASCII:)(v70, v71, 0);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v301);
    v72 = specialized Collection.subscript.getter(v58, v38, v39);
    v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v72, v73, v74, v75);
    v39 = v76;
    if ((validateUTF8(_:)(v38, v76) & 0x8000000000000000) == 0)
    {
      break;
    }

    v58 = v77;
    if (!v39)
    {
      goto LABEL_99;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v38, v39, 0);
LABEL_99:
  v43 = v301;
  object = v302;
LABEL_114:
  countAndFlagsBits = v303._countAndFlagsBits;
  v102 = (v303._object >> 56) & 0xF;
  v103 = v303._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v303._object & 0x2000000000000000) != 0)
  {
    v103 = (v303._object >> 56) & 0xF;
  }

  if (v103 || (v303._countAndFlagsBits & ~v303._object & 0x2000000000000000) != 0)
  {
    if ((v303._object & 0x2000000000000000) == 0)
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v104 = HIBYTE(object) & 0xF;
        goto LABEL_123;
      }

LABEL_122:
      v104 = v43 & 0xFFFFFFFFFFFFLL;
      goto LABEL_123;
    }

    if ((object & 0x2000000000000000) == 0)
    {
      goto LABEL_122;
    }

    v104 = HIBYTE(object) & 0xF;
    v118 = v102 + v104;
    if (v102 + v104 > 0xF)
    {
LABEL_123:
      object;
      _StringGuts.append(_:)(v43, object, 0, v104, v105, v106, v107, v108, v109, v110, v111, v112);
      swift_bridgeObjectRelease_n(object, 2);
      v43 = v303._countAndFlagsBits;
      object = v303._object;
    }

    else
    {
      if (v104)
      {
        v119 = 0;
        v120 = 0;
        v121 = 8 * v102;
        v122 = 8 * v104;
        v123 = v303._object;
        do
        {
          v124 = object >> (v119 & 0x38);
          if (v120 < 8)
          {
            v124 = v43 >> v119;
          }

          v125 = (v124 << (v121 & 0x38)) | ((-255 << (v121 & 0x38)) - 1) & v123;
          v126 = (v124 << v121) | ((-255 << v121) - 1) & countAndFlagsBits;
          if (v102 <= 7)
          {
            countAndFlagsBits = v126;
          }

          else
          {
            v123 = v125;
          }

          ++v102;
          v121 += 8;
          v119 += 8;
          ++v120;
        }

        while (v122 != v119);
      }

      else
      {
        v123 = v303._object;
      }

      v303._object;
      object;
      v187 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v123 & 0x80808080808080))
      {
        v187 = 0xE000000000000000;
      }

      object = v187 & 0xFF00000000000000 | (v118 << 56) | v123 & 0xFFFFFFFFFFFFFFLL;
      v303._countAndFlagsBits = countAndFlagsBits;
      v303._object = object;
      v43 = countAndFlagsBits;
    }
  }

  else
  {
    v303._object;
    v303._countAndFlagsBits = v43;
    v303._object = object;
  }

  v113 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(stringValue: ", 0xFuLL, 1);
  v114 = v113._countAndFlagsBits;
  v115 = v113._object;
  v116 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v116 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v116 && (v43 & ~object & 0x2000000000000000) == 0)
  {
    object;
    v303 = v113;
    goto LABEL_149;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v113._object & 0x2000000000000000) == 0)
    {
      goto LABEL_132;
    }

    v127 = specialized _SmallString.init(_:appending:)(v43, object, v113._countAndFlagsBits, v113._object);
    if (v129)
    {
      goto LABEL_144;
    }

    v140 = v127;
    v141 = v128;
    object;
    v113._object;
    v303._countAndFlagsBits = v140;
    v303._object = v141;
    v115 = v141;
    v114 = v140;
LABEL_149:
    v139 = v300;
    v130 = a2;
    goto LABEL_150;
  }

  if ((v113._object & 0x2000000000000000) == 0)
  {
LABEL_132:
    v117 = v113._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_145;
  }

LABEL_144:
  v117 = (v113._object >> 56) & 0xF;
LABEL_145:
  v130 = a2;
  v113._object;
  _StringGuts.append(_:)(v113._countAndFlagsBits, v113._object, 0, v117, v131, v132, v133, v134, v135, v136, v137, v138);
  swift_bridgeObjectRelease_n(v113._object, 2);
  v114 = v303._countAndFlagsBits;
  v115 = v303._object;
  v139 = v300;
LABEL_150:
  v142 = HIBYTE(v115) & 0xF;
  v143 = *&v114 & 0xFFFFFFFFFFFFLL;
  if ((v115 & 0x2000000000000000) != 0)
  {
    v144 = HIBYTE(v115) & 0xF;
  }

  else
  {
    v144 = *&v114 & 0xFFFFFFFFFFFFLL;
  }

  if (!v144 && (*&v114 & ~v115 & 0x2000000000000000) == 0)
  {
    v130;
    v115;
    v303._countAndFlagsBits = a1;
    v303._object = v130;
    goto LABEL_217;
  }

  v145 = (v130 & 0x2000000000000000) == 0;
  v146 = HIBYTE(v130) & 0xF;
  if ((v115 & 0x2000000000000000) == 0)
  {
    v147 = a1 & 0xFFFFFFFFFFFFLL;
    v148 = HIBYTE(v130) & 0xF;
    if ((v130 & 0x2000000000000000) == 0)
    {
LABEL_159:
      v148 = v147;
    }

    v295 = v147;
    if ((v130 & 0x1000000000000000) == 0)
    {
      goto LABEL_161;
    }

LABEL_185:
    v149 = v130;
    swift_bridgeObjectRetain_n(v130, 3);
    v169._rawBits = 1;
    v170._rawBits = (v148 << 16) | 1;
    v171._rawBits = _StringGuts.validateScalarRange(_:)(v169, v170, a1, v130)._rawBits;
    if (v171._rawBits < 0x10000)
    {
      v171._rawBits |= 3;
    }

    v153 = String.UTF8View.distance(from:to:)(v171, v172);
    v149;
    if ((v115 & 0x1000000000000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_162:
    v65 = __OFADD__(v144, v153);
    v154 = v144 + v153;
    if (v65)
    {
      goto LABEL_190;
    }

LABEL_163:
    if ((*&v114 & ~v115 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v115 & 0xFFFFFFFFFFFFFFFLL))
    {
      v155 = _StringGuts.nativeUnusedCapacity.getter(*&v114, v115);
      if (v156)
      {
        goto LABEL_334;
      }

      v157 = (v115 >> 61) & 1;
      if (v155 < v153)
      {
        LOBYTE(v157) = 1;
      }

      if (v154 <= 15 && (v157 & 1) != 0)
      {
        goto LABEL_170;
      }
    }

    else if (v154 < 16)
    {
LABEL_170:
      if ((v115 & 0x2000000000000000) != 0)
      {
        v143 = v115;
      }

      else if ((v115 & 0x1000000000000000) != 0)
      {
        v114 = _StringGuts._foreignConvertedToSmall()(*&v114, v115);
        v143 = v285;
      }

      else
      {
        if ((*&v114 & 0x1000000000000000) != 0)
        {
          v271 = ((v115 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v271 = _StringObject.sharedUTF8.getter(*&v114, v115);
          v143 = v291;
        }

        closure #1 in _StringGuts._convertedToSmall()(v271, v143, &v301, v152);
        v114 = v301;
        v143 = v302;
      }

      v149;
      v158._rawBits = 1;
      v159._rawBits = (v148 << 16) | 1;
      rawBits = _StringGuts.validateScalarRange(_:)(v158, v159, a1, v149)._rawBits;
      if (rawBits < 0x10000)
      {
        rawBits |= 3uLL;
      }

      if (rawBits >> 16 || v151 >> 16 != v148)
      {
        goto LABEL_191;
      }

      v161 = v149;
LABEL_192:
      v139 = v300;
      if ((v161 & 0x2000000000000000) != 0)
      {
        v161;
        v174 = specialized _SmallString.init(_:appending:)(*&v114, v143, a1, v161);
      }

      else if ((v161 & 0x1000000000000000) != 0)
      {
        v299 = _StringGuts._foreignConvertedToSmall()(a1, v161);
        v287 = v286;
        v161;
        v174 = specialized _SmallString.init(_:appending:)(*&v114, v143, v299, v287);
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v272 = ((v161 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v273 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v272 = _StringObject.sharedUTF8.getter(a1, v161);
        }

        closure #1 in _StringGuts._convertedToSmall()(v272, v273, &v301, v160);
        v161;
        v174 = specialized _SmallString.init(_:appending:)(*&v114, v143, v301, v302);
      }

      if ((v176 & 1) == 0)
      {
        v177 = v174;
        v178 = v175;
        v115;
        swift_bridgeObjectRelease_n(v149, 2);
        v303._countAndFlagsBits = v177;
        v303._object = v178;
        goto LABEL_217;
      }

      goto LABEL_334;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v154, v153);
    if ((v149 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(a1, v149, 0, v148);
    }

    else
    {
      if (v145)
      {
        v162 = a1;
        if ((a1 & 0x1000000000000000) != 0)
        {
          v163 = (v149 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v164 = v295;
          v165 = v295;
          v139 = v300;
        }

        else
        {
          v281 = _StringObject.sharedUTF8.getter(a1, v149);
          if (v282 < v295)
          {
            goto LABEL_304;
          }

          v163 = v281;
          v165 = v282;
          v162 = a1;
          v139 = v300;
          v164 = v295;
        }

        v166 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v164, v163, v165);
        closure #1 in _StringGuts.append(_:)(v166, v167, &v303, v162 < 0);
        swift_bridgeObjectRelease_n(v149, 2);
        goto LABEL_217;
      }

      v301 = a1;
      v302 = v149 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v301, v146, &v303, (v149 & 0x4000000000000000) != 0);
    }

    swift_bridgeObjectRelease_n(v149, 2);
    v139 = v300;
    goto LABEL_217;
  }

  if ((v130 & 0x2000000000000000) == 0)
  {
    v147 = a1 & 0xFFFFFFFFFFFFLL;
    v145 = 1;
    goto LABEL_159;
  }

  v168 = v142 + v146;
  if (v142 + v146 >= 0x10)
  {
    v145 = 0;
    v148 = HIBYTE(v130) & 0xF;
    v295 = a1 & 0xFFFFFFFFFFFFLL;
    if ((v130 & 0x1000000000000000) != 0)
    {
      goto LABEL_185;
    }

LABEL_161:
    v149 = v130;
    rawBits = swift_bridgeObjectRetain_n(v130, 2);
    v153 = v148;
    if ((v115 & 0x1000000000000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_188:
    rawBits = String.UTF8View._foreignCount()();
    v154 = rawBits + v153;
    if (!__OFADD__(rawBits, v153))
    {
      goto LABEL_163;
    }

LABEL_190:
    __break(1u);
LABEL_191:
    a1 = specialized static String._copying(_:)(rawBits, v151, a1, v149);
    v161 = v173;
    v149;
    goto LABEL_192;
  }

  if (v146)
  {
    v179 = 0;
    v180 = 0;
    v181 = 8 * v142;
    v182 = 8 * v146;
    v183 = v115;
    do
    {
      v184 = v130 >> (v179 & 0x38);
      if (v180 < 8)
      {
        v184 = a1 >> v179;
      }

      v185 = (v184 << (v181 & 0x38)) | ((-255 << (v181 & 0x38)) - 1) & v183;
      v186 = (v184 << v181) | ((-255 << v181) - 1) & *&v114;
      if (v142 <= 7)
      {
        v114 = v186;
      }

      else
      {
        v183 = v185;
      }

      ++v142;
      v181 += 8;
      v179 += 8;
      ++v180;
    }

    while (v182 != v179);
  }

  else
  {
    v183 = v115;
  }

  v115;
  v188 = 0xA000000000000000;
  if (!(*&v114 & 0x8080808080808080 | v183 & 0x80808080808080))
  {
    v188 = 0xE000000000000000;
  }

  v303._countAndFlagsBits = v114;
  v303._object = (v188 & 0xFF00000000000000 | (v168 << 56) | v183 & 0xFFFFFFFFFFFFFFLL);
LABEL_217:
  v189 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", intValue: ", 0xDuLL, 1);
  v190 = v189._countAndFlagsBits;
  v191 = v189._object;
  v192 = v303._object;
  v193 = (v303._object >> 56) & 0xF;
  if ((v303._object & 0x2000000000000000) == 0)
  {
    v193 = v303._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v193 && (v303._countAndFlagsBits & ~v303._object & 0x2000000000000000) == 0)
  {
    v303._object;
    v303 = v189;
    goto LABEL_229;
  }

  if ((v303._object & 0x2000000000000000) != 0)
  {
    if ((v189._object & 0x2000000000000000) != 0)
    {
      v195 = specialized _SmallString.init(_:appending:)(v303._countAndFlagsBits, v303._object, v189._countAndFlagsBits, v189._object);
      if (v197)
      {
        goto LABEL_227;
      }

      v247 = v195;
      v248 = v196;
      v192;
      v189._object;
      v303._countAndFlagsBits = v247;
      v303._object = v248;
      v191 = v248;
      v190 = v247;
      goto LABEL_229;
    }

LABEL_225:
    v194 = v189._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_228;
  }

  if ((v189._object & 0x2000000000000000) == 0)
  {
    goto LABEL_225;
  }

LABEL_227:
  v194 = (v189._object >> 56) & 0xF;
LABEL_228:
  v189._object;
  _StringGuts.append(_:)(v189._countAndFlagsBits, v189._object, 0, v194, v198, v199, v200, v201, v202, v203, v204, v205);
  swift_bridgeObjectRelease_n(v189._object, 2);
  v190 = v303._countAndFlagsBits;
  v191 = v303._object;
LABEL_229:
  v206 = HIBYTE(v191) & 0xF;
  v207 = *&v190 & 0xFFFFFFFFFFFFLL;
  if ((v191 & 0x2000000000000000) != 0)
  {
    v208 = HIBYTE(v191) & 0xF;
  }

  else
  {
    v208 = *&v190 & 0xFFFFFFFFFFFFLL;
  }

  if (!v208 && (*&v190 & ~v191 & 0x2000000000000000) == 0)
  {
    v191;
    v303._countAndFlagsBits = v296;
    v303._object = v139;
    goto LABEL_291;
  }

  v209 = (v139 & 0x2000000000000000) == 0;
  v210 = HIBYTE(v139) & 0xF;
  if ((v191 & 0x2000000000000000) == 0)
  {
    v211 = v296 & 0xFFFFFFFFFFFFLL;
    v212 = HIBYTE(v139) & 0xF;
    if ((v139 & 0x2000000000000000) == 0)
    {
LABEL_238:
      v212 = v211;
    }

    v298 = v211;
    if ((v139 & 0x1000000000000000) == 0)
    {
      goto LABEL_240;
    }

LABEL_265:
    swift_bridgeObjectRetain_n(v139, 2);
    v241._rawBits = 1;
    v242._rawBits = (v212 << 16) | 1;
    v243._rawBits = _StringGuts.validateScalarRange(_:)(v241, v242, v296, v139)._rawBits;
    if (v243._rawBits < 0x10000)
    {
      v243._rawBits |= 3;
    }

    v245 = String.UTF8View.distance(from:to:)(v243, v244);
    v246 = v139;
    v214 = v245;
    v246;
    if ((v191 & 0x1000000000000000) != 0)
    {
      goto LABEL_268;
    }

LABEL_241:
    v215 = v208 + v214;
    if (__OFADD__(v208, v214))
    {
      goto LABEL_270;
    }

LABEL_242:
    if ((*&v190 & ~v191 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v191 & 0xFFFFFFFFFFFFFFFLL))
    {
      v216 = _StringGuts.nativeUnusedCapacity.getter(*&v190, v191);
      v208 = v296;
      if (v217)
      {
        goto LABEL_334;
      }

      v218 = (v191 >> 61) & 1;
      if (v216 < v214)
      {
        LOBYTE(v218) = 1;
      }

      if (v215 <= 15 && (v218 & 1) != 0)
      {
        goto LABEL_249;
      }
    }

    else
    {
      v208 = v296;
      if (v215 < 16)
      {
LABEL_249:
        if ((v191 & 0x2000000000000000) != 0)
        {
          v219 = v191;
          v220 = v300;
        }

        else
        {
          v220 = v300;
          if ((v191 & 0x1000000000000000) != 0)
          {
            v190 = _StringGuts._foreignConvertedToSmall()(*&v190, v191);
            v219 = v288;
          }

          else
          {
            if ((*&v190 & 0x1000000000000000) != 0)
            {
              v274 = ((v191 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v274 = _StringObject.sharedUTF8.getter(*&v190, v191);
              v207 = v292;
            }

            closure #1 in _StringGuts._convertedToSmall()(v274, v207, &v301, v213);
            v190 = v301;
            v219 = v302;
          }
        }

        v220;
        v221._rawBits = 1;
        v222._rawBits = (v212 << 16) | 1;
        v223._rawBits = _StringGuts.validateScalarRange(_:)(v221, v222, v208, v220)._rawBits;
        if (v223._rawBits < 0x10000)
        {
          v223._rawBits |= 3;
        }

        v225 = Substring.description.getter(v223._rawBits, v224._rawBits, v208, v220);
        v227 = v226;
        v220;
        if ((v227 & 0x2000000000000000) != 0)
        {
          v227;
        }

        else if ((v227 & 0x1000000000000000) != 0)
        {
          v225 = _StringGuts._foreignConvertedToSmall()(*&v225, v227);
          v290 = v289;
          v227;
          v227 = v290;
        }

        else
        {
          if ((*&v225 & 0x1000000000000000) != 0)
          {
            v275 = ((v227 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v276 = *&v225 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v275 = _StringObject.sharedUTF8.getter(*&v225, v227);
          }

          closure #1 in _StringGuts._convertedToSmall()(v275, v276, &v301, v228);
          v227;
          v225 = v301;
          v227 = v302;
        }

        v229 = specialized _SmallString.init(_:appending:)(*&v190, v219, *&v225, v227);
        if ((v231 & 1) == 0)
        {
          v232 = v229;
          v233 = v230;
          v191;
          swift_bridgeObjectRelease_n(v220, 2);
          v303._countAndFlagsBits = v232;
          v303._object = v233;
          goto LABEL_291;
        }

LABEL_334:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v215, v214);
    v215 = v300;
    if ((v300 & 0x1000000000000000) != 0)
    {
      goto LABEL_271;
    }

    if (!v209)
    {
      v239 = (v300 >> 62) & 1;
      v301 = v208;
      v302 = v300 & 0xFFFFFFFFFFFFFFLL;
      v237 = &v301;
      v238 = v210;
      goto LABEL_285;
    }

    if ((v208 & 0x1000000000000000) != 0)
    {
      v234 = (v300 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v235 = v298;
      v236 = v298;
LABEL_262:
      v237 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v235, v234, v236);
      v239 = v208 >> 63;
LABEL_285:
      closure #1 in _StringGuts.append(_:)(v237, v238, &v303, v239);
      goto LABEL_286;
    }

    v283 = _StringObject.sharedUTF8.getter(v208, v300);
    if (v284 >= v298)
    {
      v234 = v283;
      v236 = v284;
      v235 = v298;
      v215 = v300;
      goto LABEL_262;
    }

LABEL_304:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v139 & 0x2000000000000000) == 0)
  {
    v211 = v296 & 0xFFFFFFFFFFFFLL;
    v209 = 1;
    goto LABEL_238;
  }

  v240 = v206 + v210;
  if (v206 + v210 < 0x10)
  {
    if (v210)
    {
      v249 = 0;
      v250 = 0;
      v251 = 8 * v206;
      v252 = v191;
      do
      {
        v253 = v139 >> (v249 & 0x38);
        if (v250 < 8)
        {
          v253 = v296 >> v249;
        }

        v254 = (v253 << (v251 & 0x38)) | ((-255 << (v251 & 0x38)) - 1) & v252;
        v255 = (v253 << v251) | ((-255 << v251) - 1) & *&v190;
        if (v206 <= 7)
        {
          v190 = v255;
        }

        else
        {
          v252 = v254;
        }

        ++v206;
        v251 += 8;
        v249 += 8;
        ++v250;
      }

      while (8 * v210 != v249);
    }

    else
    {
      v252 = v191;
    }

    v191;
    v139;
    v256 = 0xA000000000000000;
    if (!(*&v190 & 0x8080808080808080 | v252 & 0x80808080808080))
    {
      v256 = 0xE000000000000000;
    }

    v303._countAndFlagsBits = v190;
    v303._object = (v256 & 0xFF00000000000000 | (v240 << 56) | v252 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v209 = 0;
    v212 = HIBYTE(v139) & 0xF;
    v298 = v296 & 0xFFFFFFFFFFFFLL;
    if ((v139 & 0x1000000000000000) != 0)
    {
      goto LABEL_265;
    }

LABEL_240:
    v139;
    v214 = v212;
    if ((v191 & 0x1000000000000000) == 0)
    {
      goto LABEL_241;
    }

LABEL_268:
    v208 = String.UTF8View._foreignCount()();
    v215 = v208 + v214;
    if (!__OFADD__(v208, v214))
    {
      goto LABEL_242;
    }

LABEL_270:
    __break(1u);
LABEL_271:
    _StringGuts._foreignAppendInPlace(_:)(v208, v215, 0, v212);
LABEL_286:
    swift_bridgeObjectRelease_n(v215, 2);
  }

LABEL_291:
  v257 = v303._object;
  v258 = (v303._object >> 56) & 0xF;
  if ((v303._object & 0x2000000000000000) == 0)
  {
    v258 = v303._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v258 || (v303._countAndFlagsBits & ~v303._object & 0x2000000000000000) != 0)
  {
    if ((v303._object & 0x2000000000000000) != 0 && (v259 = specialized _SmallString.init(_:appending:)(v303._countAndFlagsBits, v303._object, 0x29uLL, 0xE100000000000000), (v260 & 1) == 0))
    {
      v270 = v259;
      v257;
      0xE100000000000000;
      return v270;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v261, v262, v263, v264, v265, v266, v267, v268);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v303._countAndFlagsBits;
    }
  }

  else
  {
    v303._object;
    return 41;
  }
}