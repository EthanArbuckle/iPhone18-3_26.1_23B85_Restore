uint64_t DiscontiguousSlice._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DiscontiguousSlice.Index(255, *(a2 + 16), *(a2 + 24), a4);
  v9 = type metadata accessor for Optional(0, v6, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v15 = type metadata accessor for Optional(0, v9, v13, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  DiscontiguousSlice._customIndexOfEquatableElement(_:)(a1, a2, (&v24 - v20));
  (*(v16 + 32))(v19, v21, v15);
  if ((*(v10 + 48))(v19, 1, v9) == 1)
  {
    return 2;
  }

  (*(v10 + 32))(v12, v19, v9);
  v22 = (*(*(v6 - 8) + 48))(v12, 1, v6) != 1;
  (*(v10 + 8))(v12, v9);
  return v22;
}

uint64_t DiscontiguousSlice._customIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v116 = a1;
  v97 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v93 - v10;
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v115 = v11;
  v132 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v93 - v12;
  v15 = type metadata accessor for Optional(255, v8, v13, v14);
  v96 = type metadata accessor for Optional(0, v15, v16, v17);
  v101 = *(v96 - 8);
  v18 = MEMORY[0x1EEE9AC00](v96);
  v20 = &v93 - v19;
  v133 = v15;
  v21 = *(v15 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v93 - v25;
  v123 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v108 = v8;
  v28 = type metadata accessor for Range(255, v8, AssociatedConformanceWitness, v27);
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v28, "offset element ", 0);
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v130 = &v93 - v33;
  v131 = v28;
  v34 = *(v28 - 8);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v113 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v129 = &v93 - v37;
  v122 = type metadata accessor for Optional(0, v30, v38, v39);
  v40 = MEMORY[0x1EEE9AC00](v122);
  v126 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v121 = &v93 - v42;
  v43 = *(a2 + 36);
  v44 = v20;
  v117 = v3;
  v45 = *(v3 + v43);
  v128 = v34 + 16;
  v125 = (v34 + 32);
  v99 = (v31 + 32);
  v119 = (v46 + 32);
  v120 = (v31 + 56);
  v127 = v45[2];
  v118 = (v31 + 48);
  v124 = v5;
  v112 = v5 + 11;
  v111 = (v34 + 8);
  v110 = (v132 + 8);
  v109 = (v21 + 48);
  v104 = (v21 + 32);
  v94 = v9;
  v103 = (v9 + 48);
  v102 = (v21 + 8);
  v95 = (v101 + 8);
  v45;
  v101 = 0;
  v47 = 0;
  v98 = 1;
  v107 = v34;
  v106 = v30;
LABEL_2:
  v49 = v130;
  v48 = v131;
  v50 = v129;
  v51 = v127;
  if (v47 == v127)
  {
LABEL_3:
    v52 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    if ((v47 & 0x8000000000000000) != 0 || v47 >= v45[2])
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v34 + 16))(v50, v45 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v47, v48);
    if (v47 >= v45[2])
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v53 = v47;
    v54 = *(v30 + 48);
    v55 = v101;
    *v49 = v101;
    result = (*v125)(&v49[v54], v50, v48);
    v101 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      return result;
    }

    v51 = v53 + 1;
    (*v99)(v126, v49, v30);
    v52 = 0;
LABEL_9:
    v57 = v126;
    (*v120)(v126, v52, 1, v30);
    v58 = v121;
    (*v119)(v121, v57, v122);
    if ((*v118)(v58, 1, v30) == 1)
    {
      break;
    }

    v132 = v51;
    v59 = v24;
    v100 = *v58;
    v60 = v58 + *(v30 + 48);
    v61 = v113;
    (*v125)(v113, v60, v48);
    v62 = v48;
    v64 = v123;
    v63 = v124;
    v65 = v114;
    (v124[11])(v61, v123, v124);
    (*v111)(v61, v62);
    v66 = v63;
    v67 = v133;
    v68 = v115;
    v69 = swift_getAssociatedConformanceWitness(v66, v64, v115, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    (*(v69 + 120))(v116, v68, v69);
    (*v110)(v65, v68);
    if ((*v109)(v44, 1, v67) == 1)
    {
      (*v95)(v44, v96);
      v98 = 0;
      v24 = v59;
      v30 = v106;
      v34 = v107;
      v47 = v132;
      goto LABEL_2;
    }

    v70 = *v104;
    v71 = v105;
    v72 = v133;
    (*v104)(v105, v44, v133);
    v24 = v59;
    v70(v59, v71, v72);
    if ((*v103)(v59, 1, v108) != 1)
    {
      v45;
      v79 = *(v94 + 32);
      v80 = v93;
      v81 = v59;
      v82 = v108;
      v79(v93, v81, v108);
      v84 = type metadata accessor for DiscontiguousSlice.Index(0, v123, v124, v83);
      v85 = v97;
      v79(v97 + *(v84 + 36), v80, v82);
      *v85 = v100;
      (*(*(v84 - 8) + 56))(v85, 0, 1, v84);
      v88 = type metadata accessor for Optional(0, v84, v86, v87);
      return (*(*(v88 - 8) + 56))(v85, 0, 1, v88);
    }

    (*v102)(v59, v133);
    v49 = v130;
    v48 = v131;
    v30 = v106;
    v34 = v107;
    v50 = v129;
    v51 = v127;
    v47 = v132;
    if (v132 == v127)
    {
      goto LABEL_3;
    }
  }

  v45;
  if (v98)
  {
    v74 = type metadata accessor for DiscontiguousSlice.Index(0, v123, v124, v73);
    v75 = v97;
    (*(*(v74 - 8) + 56))(v97, 1, 1, v74);
    v78 = type metadata accessor for Optional(0, v74, v76, v77);
    return (*(*(v78 - 8) + 56))(v75, 0, 1, v78);
  }

  else
  {
    v89 = type metadata accessor for DiscontiguousSlice.Index(255, v123, v124, v73);
    v92 = type metadata accessor for Optional(0, v89, v90, v91);
    return (*(*(v92 - 8) + 56))(v97, 1, 1, v92);
  }
}

__objc2_class **DiscontiguousSlice._copyToContiguousArray()(uint64_t a1)
{
  v3 = specialized DiscontiguousSlice._copyToContiguousArray()(v1, *(a1 + 16), *(a1 + 24));
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

atomic_ullong *RangeSet.ranges.getter@<X0>(atomic_ullong **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DiscontiguousSlice<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 - 8);
  (*(v12 + 16))(a2, v2, a1);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a1, v5);
  v8 = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v7);
  DiscontiguousSlice.startIndex.getter(a1, v9, (a2 + *(v8 + 36)));
  v10 = *(v12 + 8);

  return v10(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance DiscontiguousSlice<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance DiscontiguousSlice<A>(uint64_t a1)
{
  v3 = specialized DiscontiguousSlice._copyToContiguousArray()(v1, *(a1 + 16), *(a1 + 24));
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t DiscontiguousSlice.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(v3 + *(a1 + 36));
  v6 = *(a1 + 24);
  if (*(v5 + 16))
  {
    v7 = *(a1 + 16);
    swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    v9 = v8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v12 = *(type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v11) - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, v14);
    result = (*(*(v9 - 8) + 16))(&a3[*(v15 + 36)], v5 + v13, v9);
  }

  else
  {
    v17 = *(v6 + 72);
    v18 = *(a1 + 16);
    type metadata accessor for DiscontiguousSlice.Index(0, v18, v6, a2);
    result = v17(v18, v6);
  }

  *a3 = 0;
  return result;
}

uint64_t DiscontiguousSlice.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *(*(v3 + *(a1 + 36)) + 16);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(v6 + 72);
  type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, a2);
  result = v8(v7, v6);
  *a3 = v5;
  return result;
}

uint64_t RangeSet.Ranges.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || (v7 = *v4, *(v7 + 16) <= a1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = type metadata accessor for Range(0, *(a2 + 16), *(a2 + 24), a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1;

  return v10(a4, v11, v8);
}

char *DiscontiguousSlice.distance(from:to:)(char *a1, char *a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v10 = v9;
  v96 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v82 - v11;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(255, v13, AssociatedConformanceWitness, v15);
  v19 = type metadata accessor for Optional(0, v16, v17, v18);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v92 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v100 = v16;
  v98 = *(v16 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v99 = &v82 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v93 = a1;
  v31 = *a1;
  v95 = a2;
  v32 = *a2;
  if (v32 < v31)
  {
    LODWORD(v81) = 0;
    v80 = 409;
    LOBYTE(v79) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v30;
  v97 = &v82 - v29;
  v33 = *(a3 + 36);
  v101 = v3;
  v109 = *(v3 + v33);
  v104 = v32;
  v34 = *(v109 + 16);
  v106 = 0;
  v107 = v34;
  v35 = type metadata accessor for RangeSet.Ranges(0, v13, AssociatedConformanceWitness, v28);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v35, v36);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(&v104, &v106, v35, WitnessTable);
  if (__OFADD__(v32, 1))
  {
    __break(1u);
LABEL_17:
    LODWORD(v81) = 0;
    v80 = 691;
    LOBYTE(v79) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v104 = v31;
  v105 = v32 + 1;
  Collection<>.subscript.getter(&v104, v35, WitnessTable, &v106);
  v38 = v106;
  v39 = v108;
  v109 = v107;
  v104 = v106;
  v102 = v107;
  v41 = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v35, v40);
  if (RandomAccessCollection<>.distance(from:to:)(&v104, &v109, v35, v41, &protocol witness table for Int) >= 2)
  {
    v90 = v8;
    v88 = v10;
    v106 = v38;
    v107 = v102;
    v108 = v39;
    v86 = WitnessTable;
    v43 = type metadata accessor for Slice(0, v35, WitnessTable, v42);
    v45 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v43, v44);
    v46 = v91;
    Collection.first.getter(v43, v45, v91);
    v47 = v98;
    v48 = v39;
    v49 = v100;
    v89 = *(v98 + 48);
    if ((v89)(v46, 1, v100) != 1)
    {
      v50 = *(v47 + 32);
      v50(v97, v46, v49);
      v83 = v38;
      v106 = v38;
      v107 = v102;
      v84 = v48;
      v108 = v48;
      v85 = v35;
      v103 = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v35, v51);
      v52 = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v43, &v103);
      v53 = v92;
      v82 = v43;
      BidirectionalCollection.last.getter(v43, v52, v92);
      if ((v89)(v53, 1, v49) == 1)
      {
        v78 = 163;
LABEL_23:
        LODWORD(v81) = 0;
        v80 = v78;
        LOBYTE(v79) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v50(v99, v53, v49);
      v92 = *(v7 + 88);
      v10 = v94;
      v54 = v97;
      v55 = v90;
      (v92)(v97, v90, v7);
      v91 = type metadata accessor for DiscontiguousSlice.Index(0, v55, v7, v56);
      v57 = *(v91 + 36);
      v87 = *(v49 + 36);
      v58 = v88;
      v59 = v55;
      v8 = swift_getAssociatedConformanceWitness(v7, v55, v88, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
      v89 = *(v8 + 152);
      v87 = v89(&v93[v57], &v54[v87], v58, v8);
      v38 = v96 + 8;
      v96 = *(v96 + 8);
      (v96)(v10, v58);
      v60 = v99;
      v93 = v7;
      (v92)(v99, v59, v7);
      v25 = v89(v60, &v95[*(v91 + 36)], v58, v8);
      (v96)(v10, v58);
      v61 = v102;
      v62 = v102 - 1;
      if (__OFSUB__(v102, 1))
      {
        __break(1u);
      }

      else if (v62 > 0)
      {
        v63 = *(v98 + 8);
        v64 = v100;
        v63(v99, v100);
        v63(v97, v64);
        v106 = 1;
        v107 = v62;
        v104 = v83;
        v105 = v61;
        v65 = specialized Collection._failEarlyRangeCheck(_:bounds:)(&v106, &v104, v85, v86);
        v106 = 1;
        v107 = v62;
        v108 = v84;
        MEMORY[0x1EEE9AC00](v65);
        v35 = (&v82 - 6);
        v79 = v90;
        v80 = v93;
        v81 = v101;
        v66 = v82;
        v68 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v82, v67);
        v39 = 0;
        WitnessTable = _sSTsE6reduceyqd__qd___qd__qd___7ElementQztKXEtKlFSixq_q0_s5Error_pRi_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySiACSiIsgnnrzo_xSisAD_pSTRzSiRsd__r__lIetMygndzo_Tp5(0, partial apply for closure #1 in DiscontiguousSlice.distance(from:to:), (&v82 - 6), v66, v68);
        v108;
        v69 = WitnessTable + v87;
        if (!__OFADD__(v87, WitnessTable))
        {
          result = &v25[v69];
          if (!__OFADD__(v69, v25))
          {
            return result;
          }

          __break(1u);
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_21;
      }

      LODWORD(v81) = 0;
      v80 = 760;
      LOBYTE(v79) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_21:
    v78 = 162;
    goto LABEL_23;
  }

LABEL_12:
  v104 = 0;
  v106 = v38;
  v107 = v102;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(&v104, &v106, v35, WitnessTable);
  v71 = v100;
  if (!*(v39 + 16))
  {
    goto LABEL_17;
  }

  v72 = v98;
  (*(v98 + 16))(v25, v39 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v100);
  v39;
  v73 = v94;
  (*(v7 + 88))(v25, v8, v7);
  (*(v72 + 8))(v25, v71);
  v75 = *(type metadata accessor for DiscontiguousSlice.Index(0, v8, v7, v74) + 36);
  v76 = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v77 = (*(v76 + 152))(&v93[v75], &v95[v75], v10, v76);
  (*(v96 + 8))(v73, v10);
  return v77;
}

uint64_t specialized Slice.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < a2 || a1 >= a3 || a1 < 0 || a1 >= a5)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a4 + a1);
}

uint64_t Slice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v48 = a1;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v41 = a2;
  v46 = v3;
  v47 = v4;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v42 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v16);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v39 - v17;
  v19 = *(a2 + 36);
  v20 = *(v7 - 8);
  v21 = v20[2];
  v22 = v14;
  v40 = v14;
  v23 = v14;
  v24 = v50;
  v21(v23, v50, v7);
  v25 = v43;
  v21(&v22[*(v43 + 48)], v24 + v19, v7);
  v26 = v44;
  (*(v44 + 16))(v12, v22, v25);
  v27 = *(v25 + 48);
  v28 = v20[4];
  v28(v18, v12, v7);
  v29 = v20[1];
  v29(&v12[v27], v7);
  (*(v26 + 32))(v12, v40, v25);
  v30 = v42;
  v28(&v18[*(v42 + 36)], &v12[*(v25 + 48)], v7);
  v29(v12, v7);
  v31 = v47;
  v32 = v48;
  v33 = v46;
  (v46[20])(v48, v18, v47);
  (*(v45 + 8))(v18, v30);
  v34 = (v33[10])(v51, v32, v31);
  v36 = v35;
  swift_getAssociatedTypeWitness(0, v33[1], v31, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v37 - 8) + 16))(v49, v36, v37);
  return v34(v51, 0);
}

uint64_t Slice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v40 = a2;
  v43 = v4;
  v44 = v3;
  v45 = a3;
  swift_getAssociatedTypeWitness(255, v4, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = v8;
  v41 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v3, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v46 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v16);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v37 - v17;
  v19 = *(a2 + 36);
  v20 = *(v7 - 8);
  v21 = v20[2];
  v22 = v47;
  v21(v14, v47, v7);
  v23 = &v14[*(v9 + 48)];
  v38 = v14;
  v21(v23, v22 + v19, v7);
  v24 = v41;
  (*(v41 + 16))(v12, v14, v9);
  v25 = *(v9 + 48);
  v26 = v20[4];
  v26(v18, v12, v7);
  v39 = v26;
  v27 = v20[1];
  v27(&v12[v25], v7);
  (*(v24 + 32))(v12, v38, v9);
  v26(&v18[*(v46 + 36)], &v12[*(v9 + 48)], v7);
  v27(v12, v7);
  v28 = v40;
  v29 = *(v40 + 40);
  v30 = v44;
  v31 = v47;
  (v43[22])(v48, v18, v44);
  v32 = v42;
  v33 = v46;
  (*(v42 + 8))(v18, v46);
  v34 = v45;
  (*(*(v30 - 1) + 16))(&v45[*(v28 + 40)], v31 + v29, v30);
  (*(v32 + 16))(v18, v48, v33);
  v35 = v39;
  v39(v34, v18, v7);
  return v35(&v34[*(v28 + 36)], &v18[*(v33 + 36)], v7);
}

uint64_t closure #1 in DiscontiguousSlice.distance(from:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = *a1;
  (*(a4 + 88))(a2, a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v17 = (*(AssociatedConformanceWitness + 112))(v11, AssociatedConformanceWitness);
  result = (*(v12 + 8))(v14, v11);
  if (__OFADD__(v15, v17))
  {
    __break(1u);
  }

  else
  {
    *a5 = v15 + v17;
  }

  return result;
}

uint64_t _sSTsE6reduceyqd__qd___qd__qd___7ElementQztKXEtKlFSixq_q0_s5Error_pRi_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySiACSiIsgnnrzo_xSisAD_pSTRzSiRsd__r__lIetMygndzo_Tp5(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, const char *a4, int **a5)
{
  v53 = a3;
  v45 = a2;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v42 - v11;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - v16;
  v18 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v46 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v42 - v23);
  v58 = a1;
  (*(v18 + 16))(v20, v55, a4);
  v25 = v54;
  (*(v54 + 4))(a4, v54);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, a4, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v27 = *(AssociatedConformanceWitness + 16);
  v54 = v24;
  v55 = v22;
  v28 = v22;
  v29 = v10;
  v51 = v27;
  v52 = AssociatedConformanceWitness;
  v49 = AssociatedConformanceWitness + 16;
  (v27)(v28);
  v30 = v56;
  v50 = *(v56 + 48);
  if (v50(v17, 1, v10) != 1)
  {
    v31 = a1;
    v32 = *(v30 + 32);
    v56 = v30 + 32;
    v33 = (v30 + 8);
    v34 = v44;
    v43 = v29;
    v32(v44, v17, v29);
    v35 = v45;
    v45(&v57, &v58, v34);
    if (v5)
    {
      (*v33)(v34, v43);
      (*(v46 + 8))(v54, v55);
      return v31;
    }

    v36 = *v33;
    v47 = v32;
    v48 = v36;
    v37 = v30 + 8;
    v38 = v43;
    while (1)
    {
      v39 = v37;
      v48(v34, v38);
      v40 = v57;
      v58 = v57;
      v51(v55, v52);
      if (v50(v17, 1, v38) == 1)
      {
        break;
      }

      v47(v34, v17, v38);
      v35(&v57, &v58, v34);
      v37 = v39;
    }

    a1 = v40;
  }

  (*(v46 + 8))(v54, v55);
  return a1;
}

uint64_t Sequence.reduce<A>(_:_:)@<X0>(char *a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a1;
  v59 = a2;
  v60 = a3;
  v50 = a7;
  v51 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v12, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v48 = v13;
  v53 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v19 = type metadata accessor for Optional(0, v16, v17, v18);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v46 - v21;
  v23 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v27 = v26;
  v49 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v46 - v28;
  v30 = *(v51 + 16);
  v61 = a5;
  v30(v50, v62, a5);
  (*(v23 + 16))(v25, v63, a4);
  v31 = v22;
  (*(a6 + 32))(a4, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v27, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = *(AssociatedConformanceWitness + 16);
  v62 = v29;
  v63 = v27;
  v57 = AssociatedConformanceWitness + 16;
  v58 = AssociatedConformanceWitness;
  v56 = v33;
  (v33)(v27);
  v34 = v53;
  v35 = v48;
  v54 = *(v53 + 48);
  v55 = v53 + 48;
  if (v54(v22, 1, v48) == 1)
  {
    return (*(v49 + 8))(v62, v63);
  }

  v37 = *(v34 + 32);
  v36 = v34 + 32;
  v38 = (v36 - 24);
  v39 = v50;
  v52 = v37;
  v53 = v51 + 8;
  v40 = (v51 + 32);
  v41 = v47;
  while (1)
  {
    v42 = v36;
    v52(v15, v31, v35);
    v43 = v64;
    v59(v39, v15);
    if (v43)
    {
      break;
    }

    v64 = 0;
    (*v38)(v15, v35);
    v44 = v61;
    (*v53)(v39, v61);
    (*v40)(v39, v41, v44);
    v56(v63, v58);
    v36 = v42;
    if (v54(v31, 1, v35) == 1)
    {
      return (*(v49 + 8))(v62, v63);
    }
  }

  (*v38)(v15, v35);
  (*(v49 + 8))(v62, v63);
  return (*v53)(v39, v61);
}

uint64_t DiscontiguousSlice.index(after:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v63 = a1;
  v57 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - v9;
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v50 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v58 = AssociatedConformanceWitness;
  v59 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v14);
  v15 = *(v59 - 8);
  v16 = MEMORY[0x1EEE9AC00](v59);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v52 = *(a2 + 36);
  v20 = v63;
  v21 = *v63;
  v55 = *(v3 + v52);
  v67 = v55;
  v23 = type metadata accessor for RangeSet.Ranges(0, v11, AssociatedConformanceWitness, v22);
  v62 = v21;
  v51 = v23;
  RangeSet.Ranges.subscript.getter(v21, v23, v24, v19);
  v25 = *(v5 + 88);
  v26 = v60;
  v56 = v3;
  v25(v19, v6, v5);
  v28 = type metadata accessor for DiscontiguousSlice.Index(0, v6, v5, v27);
  v29 = *(v28 + 36);
  v50 = v5;
  v30 = v5;
  v31 = v11;
  v54 = v6;
  v32 = v6;
  v33 = v64;
  v34 = swift_getAssociatedConformanceWitness(v30, v32, v64, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v35 = v20 + v29;
  v36 = v59;
  v37 = v61;
  (*(v34 + 184))(v35, v33, v34);
  (*(v65 + 8))(v26, v33);
  LOBYTE(v29) = (*(v58 + 16))(v37, &v19[*(v36 + 36)], v11);
  v38 = *(v15 + 8);
  v65 = v15 + 8;
  v38(v19, v36);
  if (v29)
  {
    v39 = v57;
    result = (*(v66 + 32))(v57 + *(v28 + 36), v37, v31);
    *v39 = v62;
  }

  else
  {
    v41 = v28;
    v42 = v66;
    result = (*(v66 + 8))(v37, v31);
    v44 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
    }

    else
    {
      v45 = *(v55 + 16);
      if (v44 >= v45)
      {
        v49 = v57;
        result = (*(v50 + 72))(v54);
        *v49 = v45;
      }

      else
      {
        v46 = v53;
        v67 = *(v56 + v52);
        RangeSet.Ranges.subscript.getter(v44, v51, v43, v53);
        v47 = *(v41 + 36);
        v48 = v57;
        (*(v42 + 16))(v57 + v47, v46, v31);
        result = (v38)(v46, v36);
        *v48 = v44;
      }
    }
  }

  return result;
}

uint64_t DiscontiguousSlice.subscript.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - v9;
  swift_getAssociatedTypeWitness(255, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = *v36;
  v38 = *(v3 + *(a2 + 36));
  v20 = type metadata accessor for RangeSet.Ranges(0, v11, AssociatedConformanceWitness, v19);
  RangeSet.Ranges.subscript.getter(v18, v20, v21, v17);
  v22 = v32;
  (*(v6 + 88))(v17, v5, v6);
  (*(v15 + 8))(v17, v14);
  v24 = *(type metadata accessor for DiscontiguousSlice.Index(0, v5, v6, v23) + 36);
  v25 = v33;
  v26 = swift_getAssociatedConformanceWitness(v6, v5, v33, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v27 = (*(v26 + 80))(v37, v36 + v24, v25, v26);
  v29 = v28;
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v30 - 8) + 16))(v35, v29, v30);
  v27(v37, 0);
  return (*(v34 + 8))(v22, v25);
}

uint64_t DiscontiguousSlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v92 = a2;
  swift_getAssociatedTypeWitness(0, v5, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v106 = v6;
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v82 - v7;
  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v104 = v10;
  v110 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v97 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v103 = &v82 - v14;
  v15 = *(v9 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v100 = &v82 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v82 - v22;
  v25 = type metadata accessor for DiscontiguousSlice.Index(0, v4, v5, v24);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v96 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v82 - v29;
  v93 = v5;
  v107 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v99 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v32);
  v88 = *(v99 - 8);
  v33 = MEMORY[0x1EEE9AC00](v99);
  v89 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v98 = &v82 - v35;
  v36 = *(v26 + 16);
  v36(v30, a1, v25);
  v37 = *(v25 + 36);
  v109 = v15;
  v38 = v15 + 32;
  v39 = *(v15 + 32);
  v39(v23, &v30[v37], v9);
  v41 = a1 + *(type metadata accessor for Range(0, v25, &protocol witness table for DiscontiguousSlice<A>.Index, v40) + 36);
  v42 = v94;
  v43 = v96;
  v36(v96, v41, v25);
  v44 = &v43[*(v25 + 36)];
  v95 = v38;
  v96 = v39;
  v39(v42, v44, v9);
  v45 = AssociatedConformanceWitness + 24;
  v46 = *(AssociatedConformanceWitness + 24);
  v101 = AssociatedConformanceWitness;
  if ((v46(v23, v42, v9, AssociatedConformanceWitness) & 1) == 0 || (v47 = v103, v87 = v46, v48 = v96, v86 = v45, (v96)(v103, v23, v9), v49 = v104, v48(&v47[*(v104 + 48)], v42, v9), v50 = v110, v51 = *(v110 + 16), v52 = v97, v85 = v110 + 16, v84 = v51, v51(v97, v47, v49), v94 = *(v49 + 48), v53 = v98, v48(v98, v52, v9), v54 = v109 + 8, v55 = *(v109 + 8), v55(&v94[v52], v9), v56 = *(v50 + 32), v110 = v50 + 32, v83 = v56, v56(v52, v47, v49), v48(&v53[*(v99 + 36)], &v52[*(v49 + 48)], v9), v109 = v54, v94 = v55, v55(v52, v9), v57 = v93, v58 = v107, (v93[11])(v53, v107, v93), v59 = v106, v60 = swift_getAssociatedConformanceWitness(v57, v58, v106, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection), v61 = v100, (*(v60 + 64))(v59, v60), v62 = v102, (*(v60 + 72))(v59, v60), (v87(v61, v62, v9, v101) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v90 + 8))(v105, v106);
  v63 = v99;
  (*(v88 + 8))(v98, v99);
  v64 = v103;
  v65 = v96;
  (v96)(v103, v100, v9);
  v66 = v104;
  v65(&v64[*(v104 + 48)], v102, v9);
  v67 = v97;
  v84(v97, v64, v66);
  v68 = *(v66 + 48);
  v69 = v89;
  v65(v89, v67, v9);
  v70 = v94;
  (v94)(&v67[v68], v9);
  v83(v67, v64, v66);
  v65((v69 + *(v63 + 36)), &v67[*(v66 + 48)], v9);
  v70(v67, v9);
  v71 = v92;
  v72 = v108;
  v73 = *(v108 + *(v92 + 36));
  v73;
  v74 = v101;
  RangeSet.init(_:)(v69, v9, v101, v75, &v113);
  v76 = v113;
  v111[0] = v113;
  v111[1] = v73;
  v78 = type metadata accessor for RangeSet.Ranges(0, v9, v74, v77);
  RangeSet.Ranges._intersection(_:)(v111, v78, &v112);
  v73;
  v76;
  v79 = v112;
  v80 = v91;
  result = (*(*(v107 - 1) + 16))(v91, v72);
  *(v80 + *(v71 + 36)) = v79;
  return result;
}

void RangeSet.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for Range(0, a2, a3, a4);
  if (((*(*(a3 + 8) + 8))(a1, a1 + *(v9 + 36), a2) & 1) == 0)
  {
    v18 = type metadata accessor for _ContiguousArrayStorage(0, v9, v10, v11);
    v19 = *(v9 - 8);
    v20 = swift_allocObject(v18, (((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72)), *(v19 + 80) | 7);
    v12 = static Array._adoptStorage(_:count:)(v20, 1);
    (*(v19 + 32))(v21, a1, v9);
    v13 = _ArrayBuffer.requestNativeBuffer()(v12, v9);
    if (v13)
    {
LABEL_6:
      v16 = v13;
      v17 = v12;
      goto LABEL_7;
    }

LABEL_5:
    v25 = v12;
    v22 = type metadata accessor for Array(v13, v9, v14, v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v22, v23);
    v13 = _copyCollectionToContiguousArray<A>(_:)(&v25, v22, WitnessTable);
    goto LABEL_6;
  }

  (*(*(v9 - 8) + 8))(a1, v9);
  _swift_isClassOrObjCExistentialType(v9, v9);
  v12 = &_swiftEmptyArrayStorage;
  v13 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v9);
  if (!v13)
  {
    goto LABEL_5;
  }

  v16 = v13;
  v17 = &_swiftEmptyArrayStorage;
LABEL_7:
  v17;
  *a5 = v16;
}

uint64_t RangeSet.intersection(_:)@<X0>(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *v4;
  v10[0] = *a1;
  v6 = v10[0];
  v10[1] = v7;
  v8 = type metadata accessor for RangeSet.Ranges(0, *(a2 + 16), *(a2 + 24), a3);
  v10[0];
  RangeSet.Ranges._intersection(_:)(v10, v8, &v11);
  v7;
  result = v6;
  *a4 = v11;
  return result;
}

uint64_t DiscontiguousSlice._index(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v35 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v33 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v11);
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v32 - v13;
  v40 = *(v3 + *(a2 + 36));
  v15 = v40;
  v37 = v7;
  v38 = v6;
  v34 = v6;
  v39 = a1;
  v16 = a1;
  v18 = type metadata accessor for RangeSet.Ranges(0, v9, AssociatedConformanceWitness, v17);
  v15;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v18, v19);
  Collection._partitioningIndex(where:)(partial apply for closure #1 in DiscontiguousSlice._index(of:), v36, v18, WitnessTable, &v41);
  v40;
  v21 = v41;
  v41 = v15;
  v22 = v18;
  v23 = v16;
  RangeSet.Ranges.subscript.getter(v21, v22, v24, v14);
  if ((*(AssociatedConformanceWitness + 24))(v14, v16, v9, AssociatedConformanceWitness))
  {
    v25 = v33;
    v26 = (*(AssociatedConformanceWitness + 16))(v23, &v14[*(v33 + 36)], v9, AssociatedConformanceWitness);
    (*(v12 + 8))(v14, v25);
    if (v26)
    {
      v28 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v34, v27);
      v29 = v35;
      (*(*(v9 - 8) + 16))(v35 + *(v28 + 36), v23, v9);
      *v29 = v21;
      return (*(*(v28 - 8) + 56))(v29, 0, 1, v28);
    }
  }

  else
  {
    (*(v12 + 8))(v14, v33);
  }

  v31 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v34, v27);
  return (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
}

uint64_t Range.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((*(v6 + 24))(v3, a1, v7, v6))
  {
    return (*(v6 + 16))(a1, v3 + *(a2 + 36), v7, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t EnumeratedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 32))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  (*(v7 + 32))(v4, v7);
  result = type metadata accessor for EnumeratedSequence.Iterator(0, v4, v7, v8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6 = v5;
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v5, "offset element ", 0);
  v39 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = (&v34 - v9);
  v12 = type metadata accessor for Optional(0, v6, v10, v11);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - v17;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v20 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v19, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v22 = *(AssociatedConformanceWitness + 16);
  v23 = swift_checkMetadataState(0, v20);
  v22(v23, AssociatedConformanceWitness);
  if ((*(v16 + 48))(v15, 1, v6) == 1)
  {
    (*(v34 + 8))(v15, v35);
    v24 = 1;
    v25 = v38;
    v26 = v39;
    return (*(v8 + 56))(v25, v24, 1, v26);
  }

  v27 = *(v16 + 32);
  v27(v18, v15, v6);
  v28 = v39;
  v29 = *(v39 + 48);
  v30 = v36;
  v31 = *(v37 + 36);
  v32 = *(v2 + v31);
  *v36 = v32;
  result = (v27)(v30 + v29, v18, v6);
  if (!__OFADD__(v32, 1))
  {
    v26 = v28;
    *(v2 + v31) = v32 + 1;
    v25 = v38;
    (*(v8 + 32))(v38, v30, v28);
    v24 = 0;
    return (*(v8 + 56))(v25, v24, 1, v26);
  }

  __break(1u);
  return result;
}

atomic_ullong *DiscontiguousSlice._customLastIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v110 = a1;
  v94 = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v89 - v10;
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v109 = v11;
  v122 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v89 - v12;
  v120 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v89 - v17;
  v111 = v8;
  v20 = type metadata accessor for Optional(255, v8, v18, v19);
  v93 = type metadata accessor for Optional(0, v20, v21, v22);
  v23 = *(v93 - 8);
  v24 = MEMORY[0x1EEE9AC00](v93);
  v106 = &v89 - v25;
  v26 = *(v20 - 8);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v102 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v89 - v29;
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v15, "offset element ", 0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v113 = &v89 - v32;
  v125 = v33;
  v118 = type metadata accessor for Optional(0, v33, v34, v35);
  v36 = MEMORY[0x1EEE9AC00](v118);
  v124 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v117 = &v89 - v38;
  v39 = *(v3 + *(a2 + 36));
  v112 = v16 + 16;
  v123 = (v16 + 32);
  v115 = (v40 + 32);
  v116 = (v31 + 56);
  v114 = (v31 + 48);
  v41 = v39[2];
  v121 = v6;
  v105 = v6 + 11;
  v104 = (v16 + 8);
  ++v122;
  v103 = (v26 + 48);
  v100 = (v26 + 32);
  v91 = v9;
  v99 = (v9 + 48);
  v98 = (v26 + 8);
  v92 = (v23 + 8);
  result = v39;
  v43 = 0;
  v95 = 1;
  v119 = result;
LABEL_2:
  v45 = v124;
  v44 = v125;
  if (v41)
  {
LABEL_3:
    v46 = v41 - 1;
    v47 = result[2];
    if (v41 - 1 >= v47)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v41 != v47)
    {
      v47 = v43;
    }

    v48 = v47 - 1;
    if (!__OFSUB__(v47, 1))
    {
      v49 = *(v44 + 48);
      v50 = v113;
      (*(v16 + 16))(&v113[v49], result + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v46, v15);
      v97 = v48;
      *v45 = v48;
      (*(v16 + 32))(&v45[*(v44 + 48)], &v50[v49], v15);
      v51 = 0;
      v41 = v46;
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v97 = v43;
      v51 = 1;
LABEL_8:
      (*v116)(v45, v51, 1, v44);
      v52 = v117;
      (*v115)(v117, v45, v118);
      if ((*v114)(v52, 1, v44) == 1)
      {
        break;
      }

      v96 = v16;
      v53 = v111;
      v89 = *v52;
      v54 = v107;
      (*v123)(v107, &v52[*(v44 + 48)], v15);
      v56 = v120;
      v55 = v121;
      v57 = v20;
      v58 = v108;
      v59 = v3;
      (v121[11])(v54, v120, v121);
      v60 = v54;
      v61 = v15;
      (*v104)(v60, v15);
      v62 = v55;
      v63 = v109;
      v64 = swift_getAssociatedConformanceWitness(v62, v56, v109, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
      v65 = v106;
      (*(v64 + 128))(v110, v63, v64);
      v66 = v58;
      v20 = v57;
      (*v122)(v66, v63);
      if ((*v103)(v65, 1, v57) == 1)
      {
        (*v92)(v65, v93);
        v95 = 0;
        v15 = v61;
        v16 = v96;
        result = v119;
        v43 = v97;
        goto LABEL_2;
      }

      v67 = *v100;
      v68 = v101;
      (*v100)(v101, v65, v57);
      v69 = v102;
      v67(v102, v68, v20);
      if ((*v99)(v69, 1, v53) != 1)
      {
        v119;
        v76 = *(v91 + 32);
        v77 = v90;
        v78 = v111;
        v76(v90, v69, v111);
        v80 = type metadata accessor for DiscontiguousSlice.Index(0, v120, v121, v79);
        v81 = v94;
        v76(v94 + *(v80 + 36), v77, v78);
        *v81 = v89;
        (*(*(v80 - 8) + 56))(v81, 0, 1, v80);
        v84 = type metadata accessor for Optional(0, v80, v82, v83);
        return (*(*(v84 - 8) + 56))(v81, 0, 1, v84);
      }

      (*v98)(v69, v20);
      v3 = v59;
      v15 = v61;
      v16 = v96;
      v45 = v124;
      v44 = v125;
      result = v119;
      v43 = v97;
      if (v41)
      {
        goto LABEL_3;
      }
    }

    v119;
    if (v95)
    {
      v71 = type metadata accessor for DiscontiguousSlice.Index(0, v120, v121, v70);
      v72 = v94;
      (*(*(v71 - 8) + 56))(v94, 1, 1, v71);
      v75 = type metadata accessor for Optional(0, v71, v73, v74);
      return (*(*(v75 - 8) + 56))(v72, 0, 1, v75);
    }

    else
    {
      v85 = type metadata accessor for DiscontiguousSlice.Index(255, v120, v121, v70);
      v88 = type metadata accessor for Optional(0, v85, v86, v87);
      return (*(*(v88 - 8) + 56))(v94, 1, 1, v88);
    }
  }

  return result;
}

uint64_t ReversedCollection.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t ReversedCollection.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v25 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(v4 + 36);
  (*(v7 + 64))(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(v4) = (*(*(AssociatedConformanceWitness + 8) + 8))(v3 + v13, v12, v9);
  (*(v10 + 8))(v12, v9);
  if (v4)
  {
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v23 - 8) + 56))(v25, 1, 1, v23);
  }

  else
  {
    (*(v6 + 40))(v3 + v13, v5, v6);
    v15 = (*(v7 + 80))(v26, v3 + v13, v5, v7);
    v17 = v16;
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v19 = v18;
    v20 = *(v18 - 8);
    v21 = v25;
    (*(v20 + 16))(v25, v17, v18);
    v15(v26, 0);
    return (*(v20 + 56))(v21, 0, 1, v19);
  }
}

uint64_t DiscontiguousSlice._failEarlyRangeCheck(_:bounds:)(int64_t *a1, int64_t *a2, uint64_t a3)
{
  v100 = a1;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v87 = a3;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v95 = v8;
  v93 = *(v8 - 1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v94 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v92 = v81 - v12;
  v103 = *(v7 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v83 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v81 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v98 = (v81 - v18);
  v20 = type metadata accessor for DiscontiguousSlice.Index(0, v5, v4, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v85 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v97 = v81 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v81 - v26;
  v89 = v4;
  v99 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v102 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v29);
  v84 = *(v102 - 8);
  v30 = MEMORY[0x1EEE9AC00](v102);
  v82 = v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v101 = v81 - v32;
  v86 = v21;
  v33 = *(v21 + 16);
  v33(v27, a2, v20);
  v34 = *(v103 + 32);
  v35 = &v27[*(v20 + 36)];
  v36 = v17;
  v37 = v98;
  (v34)(v98, v35, v7);
  v39 = *(type metadata accessor for Range(0, v20, &protocol witness table for DiscontiguousSlice<A>.Index, v38) + 36);
  v96 = a2;
  v91 = v39;
  v40 = a2 + v39;
  v41 = v97;
  v33(v97, v40, v20);
  v88 = v20;
  (v34)(v36, v41 + *(v20 + 36), v7);
  v42 = *(AssociatedConformanceWitness + 24);
  v97 = AssociatedConformanceWitness;
  if ((v42(v37, v36, v7, AssociatedConformanceWitness) & 1) == 0 || (v81[0] = v42, v81[1] = AssociatedConformanceWitness + 24, v43 = v92, (v34)(v92, v37, v7), v44 = v95, (v34)(&v43[v95[12]], v36, v7), v46 = v93, v45 = v94, (*(v93 + 16))(v94, v43, v44), v47 = v44[12], v48 = v101, (v34)(v101, v45, v7), v98 = v34, v50 = v103 + 8, v49 = *(v103 + 8), (v49)(&v45[v47], v7), (*(v46 + 32))(v45, v43, v44), (v98)(&v48[*(v102 + 36)], &v45[v44[12]], v7), v98 = v7, v95 = v49, (v49)(v45, v7), v51 = *v96, v52 = *(v96 + v91), v52 < *v96))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v48;
  v103 = v50;
  v55 = v88;
  v54 = v89;
  v56 = *(v88 + 36);
  v58 = v99;
  v57 = v100;
  v59 = v90;
  (v89[20])(v100 + v56, v53, v99, v89);
  v60 = *v57;
  if (v60 < v51 || v60 >= v52)
  {
    goto LABEL_8;
  }

  v61 = v58;
  v62 = *(v87 + 36);
  v63 = *(*(v59 + v62) + 16);
  v64 = v54[9];
  v65 = v85;
  (v64)(v61, v54);
  *v65 = v63;
  (*(v86 + 8))(v65, v55);
  if (v60 == v63)
  {
    v67 = v83;
    (v64)(v99, v54);
    v68 = v98;
    v69 = (*(*(v97 + 8) + 8))(v100 + v56, v67, v98);
    (v95)(v67, v68);
    if (v69)
    {
      return (*(v84 + 8))(v101, v102);
    }

LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v104 = *(v59 + v62);
  v71 = v56;
  v73 = v97;
  v72 = v98;
  v74 = type metadata accessor for RangeSet.Ranges(0, v98, v97, v66);
  v75 = v82;
  RangeSet.Ranges.subscript.getter(v60, v74, v76, v82);
  v77 = v100;
  if (((v81[0])(v75, v100 + v71, v72, v73) & 1) == 0)
  {
    (*(v84 + 8))(v75, v102);
    goto LABEL_8;
  }

  v78 = v102;
  v79 = (*(v73 + 16))(v77 + v71, v75 + *(v102 + 36), v72, v73);
  v80 = *(v84 + 8);
  v80(v75, v78);
  if ((v79 & 1) == 0)
  {
    goto LABEL_8;
  }

  return (v80)(v101, v78);
}

{
  v100 = a1;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v88 = a3;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v103 = AssociatedConformanceWitness;
  v84 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v9);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = v80 - v10;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v96 = *(v11 - 1);
  v97 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v95 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v94 = v80 - v15;
  v16 = *(v7 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v81 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = (v80 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v80 - v21;
  v90 = v5;
  v91 = v4;
  v24 = type metadata accessor for DiscontiguousSlice.Index(0, v5, v4, v23);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v86 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v80 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v80 - v31;
  v102 = type metadata accessor for ClosedRange(0, v7, AssociatedConformanceWitness, v33);
  v85 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = v80 - v34;
  v87 = v25;
  v35 = *(v25 + 16);
  v35(v32, a2, v24);
  v36 = *(v24 + 36);
  v104 = v16;
  v37 = *(v16 + 32);
  v38 = &v32[v36];
  v39 = v99;
  (v37)(v22, v38, v7);
  v41 = *(type metadata accessor for ClosedRange(0, v24, &protocol witness table for DiscontiguousSlice<A>.Index, v40) + 36);
  v98 = a2;
  v93 = v41;
  v35(v30, (a2 + v41), v24);
  v89 = v24;
  (v37)(v39, &v30[*(v24 + 36)], v7);
  v42 = v103 + 24;
  v43 = *(v103 + 24);
  if ((v43(v22, v39, v7) & 1) == 0 || (v80[0] = v43, v80[1] = v42, v44 = v94, (v37)(v94, v22, v7), v45 = v97, (v37)(&v44[v97[12]], v39, v7), v47 = v95, v46 = v96, (*(v96 + 16))(v95, v44, v45), v48 = v45[12], v49 = v101, (v37)(v101, v47, v7), v99 = v37, v51 = v104 + 8, v50 = *(v104 + 8), (v50)(&v47[v48], v7), (*(v46 + 32))(v47, v44, v45), (v99)(&v49[*(v102 + 36)], &v47[v45[12]], v7), v99 = v7, v97 = v50, (v50)(v47, v7), v52 = *v98, v53 = *(v98 + v93), v53 < *v98))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v54 = v49;
  v104 = v51;
  v56 = v89;
  v55 = v90;
  v57 = *(v89 + 36);
  v59 = v91;
  v58 = v92;
  v60 = v100;
  (v91[21])(v100 + v57, v54, v90, v91);
  v61 = *v60;
  if (v61 < v52 || v53 < v61)
  {
    goto LABEL_7;
  }

  v98 = *(v88 + 36);
  v62 = *(*(v98 + v58) + 16);
  v63 = v55;
  v64 = v59[9];
  v65 = v86;
  (v64)(v63, v59);
  *v65 = v62;
  (*(v87 + 8))(v65, v56);
  if (v61 != v62)
  {
    v105 = *(v98 + v58);
    v70 = v57;
    v71 = v99;
    v72 = v103;
    v73 = type metadata accessor for RangeSet.Ranges(0, v99, v103, v66);
    v74 = v82;
    RangeSet.Ranges.subscript.getter(v61, v73, v75, v82);
    v76 = v100;
    if ((v80[0])(v74, v100 + v70, v71, v72))
    {
      v77 = v84;
      v78 = (*(v72 + 16))(v76 + v70, v74 + *(v84 + 36), v71, v72);
      (*(v83 + 8))(v74, v77);
      if (v78)
      {
        return (*(v85 + 8))(v101, v102);
      }
    }

    else
    {
      (*(v83 + 8))(v74, v84);
    }

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = v81;
  (v64)(v63, v59);
  v68 = v99;
  v69 = (*(*(v103 + 8) + 8))(v100 + v57, v67, v99);
  (v97)(v67, v68);
  if ((v69 & 1) == 0)
  {
    goto LABEL_7;
  }

  return (*(v85 + 8))(v101, v102);
}

{
  v170 = a2;
  v154 = a1;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v143 = a3;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = v5;
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v169 = v7;
  v173 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v168 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v167 = &v140 - v11;
  v12 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v142 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v157 = &v140 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v156 = &v140 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v175 = &v140 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v164 = &v140 - v21;
  v23 = type metadata accessor for DiscontiguousSlice.Index(0, v4, v3, v22);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v145 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v155 = &v140 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v153 = &v140 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v166 = &v140 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v140 - v33;
  v158 = v3;
  v161 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v172 = type metadata accessor for Range(0, v6, AssociatedConformanceWitness, v36);
  v144 = *(v172 - 8);
  v37 = MEMORY[0x1EEE9AC00](v172);
  v140 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v141 = &v140 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v165 = &v140 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v171 = &v140 - v43;
  v160 = v24;
  v44 = *(v24 + 16);
  v45 = v170;
  v44(v34, v170, v23);
  v46 = *(v23 + 36);
  v174 = v12;
  v47 = v12 + 32;
  v48 = *(v12 + 32);
  v49 = &v34[v46];
  v50 = v164;
  v51 = v6;
  v48(v164, v49, v6);
  v150 = type metadata accessor for Range(0, v23, &protocol witness table for DiscontiguousSlice<A>.Index, v52);
  v149 = *(v150 + 36);
  v53 = v45 + v149;
  v54 = v175;
  v55 = v166;
  v152 = v24 + 16;
  v151 = v44;
  v44(v166, v53, v23);
  v56 = v51;
  v48(v54, (v55 + *(v23 + 36)), v51);
  v57 = (AssociatedConformanceWitness + 24);
  v58 = *(AssociatedConformanceWitness + 24);
  v166 = AssociatedConformanceWitness;
  if ((v58(v50, v54, v56, AssociatedConformanceWitness) & 1) == 0 || (v59 = v167, v48(v167, v50, v56), v164 = v57, v60 = v169, v48(&v59[*(v169 + 48)], v54, v56), v163 = v58, v61 = v173, v62 = *(v173 + 16), v63 = v168, v148 = v173 + 16, v147 = v62, v62(v168, v59, v60), v162 = *(v60 + 48), v64 = v171, v48(v171, v63, v56), v175 = v47, v65 = v48, v66 = v23, v67 = *(v174 + 8), v174 += 8, v67(v162 + v63, v56), v68 = *(v61 + 32), v173 = v61 + 32, v146 = v68, v68(v63, v59, v60), v65(&v64[*(v172 + 36)], &v63[*(v60 + 48)], v56), v162 = v67, v67(v63, v56), v69 = v153, v70 = v154, v71 = v151, v151(v153, v154, v66), v72 = v156, v65(v156, &v69[*(v66 + 9)], v56), v153 = *(v150 + 36), v73 = v155, v71(v155, &v153[v70], v66), v74 = v157, v65(v157, &v73[*(v66 + 9)], v56), (v163(v72, v74, v56, v166) & 1) == 0) || (v155 = v66, v75 = v167, v65(v167, v72, v56), v76 = v169, v65(&v75[*(v169 + 48)], v74, v56), v77 = v168, v147(v168, v75, v76), v78 = *(v76 + 48), v79 = v165, v65(v165, v77, v56), v80 = &v77[v78], v81 = v162, v162(v80, v56), v146(v77, v75, v76), v82 = *(v76 + 48), v173 = *(v172 + 36), v65(&v79[v173], &v77[v82], v56), v81(v77, v56), v83 = *v170, v84 = *(v170 + v149), v84 < *v170) || (v85 = *v70, v86 = *&v153[v70], v86 < v85))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v87 = v79;
  v89 = v158;
  v88 = v159;
  v90 = v161;
  (v158[22])(v87, v171, v161, v158);
  if (v85 < v83 || v85 >= v84 || v84 < v86)
  {
    goto LABEL_10;
  }

  v175 = v56;
  v169 = v86;
  v91 = *(v143 + 36);
  v92 = v88;
  v170 = *&v91[v88];
  v93 = v170[2];
  v94 = v89[9];
  v95 = v155;
  v96 = v145;
  (v94)(v90, v89);
  *v96 = v93;
  v97 = *(v160 + 8);
  v160 += 8;
  v168 = v97;
  (v97)(v96, v95);
  v167 = v91;
  if (v85 == v93)
  {
    v99 = v142;
    v100 = v161;
    (v94)(v161, v89);
    v101 = v175;
    v102 = (*(*(v166 + 8) + 8))(v165, v99, v175);
    v103 = v101;
    v104 = v100;
    v162(v99, v103);
    v105 = v144;
    if ((v102 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v170 = *&v91[v88];
    v176 = v170;
    v106 = v175;
    v107 = v166;
    v108 = type metadata accessor for RangeSet.Ranges(0, v175, v166, v98);
    v109 = v141;
    RangeSet.Ranges.subscript.getter(v85, v108, v110, v141);
    v111 = v165;
    v112 = v163(v109, v165, v106, v107);
    v105 = v144;
    if ((v112 & 1) == 0)
    {
      (*(v144 + 8))(v109, v172);
      goto LABEL_10;
    }

    v113 = v172;
    v114 = (*(v107 + 16))(v111, v109 + *(v172 + 36), v106, v107);
    (*(v105 + 8))(v109, v113);
    v89 = v158;
    v92 = v159;
    v104 = v161;
    if ((v114 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v115 = v170[2];
  v116 = v155;
  v117 = v145;
  (v94)(v104, v89);
  *v117 = v115;
  (v168)(v117, v116);
  v119 = v169;
  if (v169 == v115)
  {
    v120 = v142;
    (v94)(v104, v89);
    v121 = v165;
    v122 = v175;
    v123 = (*(*(v166 + 8) + 8))(&v165[v173], v120, v175);
    v162(v120, v122);
    v125 = v171;
    v124 = v172;
    if (v123)
    {
      v126 = *(v105 + 8);
      v126(v121, v172);
      return (v126)(v125, v124);
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v176 = *&v167[v92];
  v128 = v175;
  v129 = v166;
  v130 = type metadata accessor for RangeSet.Ranges(0, v175, v166, v118);
  v131 = v140;
  RangeSet.Ranges.subscript.getter(v119, v130, v132, v140);
  v133 = v165;
  v134 = v173;
  v135 = v163(v131, &v165[v173], v128, v129);
  v137 = v171;
  v136 = v172;
  if ((v135 & 1) == 0)
  {
    (*(v105 + 8))(v131, v172);
    goto LABEL_10;
  }

  v138 = (*(v129 + 16))(&v133[v134], v131 + *(v172 + 36), v128, v129);
  v139 = *(v105 + 8);
  v139(v131, v136);
  if ((v138 & 1) == 0)
  {
    goto LABEL_10;
  }

  v139(v133, v136);
  return (v139)(v137, v136);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance DiscontiguousSlice<A>(void *a1, unint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xD183uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = DiscontiguousSlice.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*DiscontiguousSlice.subscript.read(void *a1, unint64_t *a2, uint64_t a3))(uint64_t a1)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x48, 0x9B0DuLL);
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0x9B0DuLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  v37 = v11;
  v6[4] = v11;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v13, AssociatedConformanceWitness, v14);
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  if (swift_coroFrameAlloc)
  {
    v17 = swift_coroFrameAlloc(v16, 0x9B0DuLL);
  }

  else
  {
    v17 = malloc(v16);
  }

  v18 = v17;
  v6[5] = v17;
  swift_getAssociatedTypeWitness(0, *(v7 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v6[6] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v6[7] = v20;
  v22 = *(v20 + 64);
  if (swift_coroFrameAlloc)
  {
    v23 = swift_coroFrameAlloc(v22, 0x9B0DuLL);
  }

  else
  {
    v23 = malloc(v22);
  }

  v25 = v23;
  v6[8] = v23;
  v26 = *a2;
  v27 = type metadata accessor for RangeSet.Ranges(0, v13, AssociatedConformanceWitness, v24);
  RangeSet.Ranges.subscript.getter(v26, v27, v28, v18);
  (*(v7 + 88))(v18, v8, v7);
  (*(v35 + 8))(v18, v36);
  v30 = *(type metadata accessor for DiscontiguousSlice.Index(0, v8, v7, v29) + 36);
  v31 = swift_getAssociatedConformanceWitness(v7, v8, v39, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v32 = (*(v31 + 80))(v6, a2 + v30, v39, v31);
  (*(v21 + 16))(v25);
  v32(v6, 0);
  (*(v38 + 8))(v37, v39);
  return DiscontiguousSlice.subscript.read;
}

void DiscontiguousSlice.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  (*(*(*a1 + 56) + 8))(v2, *(*a1 + 48));
  free(v2);
  free(v3);
  free(v4);

  free(v1);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance DiscontiguousSlice<A>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DiscontiguousSlice.Index(0, *(a2 + 16), *(a2 + 24), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v11 - v8);
  (*(v7 + 32))(&v11 - v8, a1, v6);
  DiscontiguousSlice.index(after:)(v9, a2, a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DiscontiguousSlice<>.index(before:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, swift *a3@<X2>, unint64_t *a4@<X8>)
{
  v78 = a1;
  v70 = a4;
  v66 = a3;
  v6 = *(a3 + 1);
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v59 - v9;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v74 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  v71 = *(v74 - 8);
  v14 = MEMORY[0x1EEE9AC00](v74);
  v73 = &v59 - v15;
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  v19 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - v21;
  v72 = a2;
  v77 = v4;
  DiscontiguousSlice.startIndex.getter(a2, v23, &v59 - v21);
  v24 = *(v19 + 36);
  v25 = *(AssociatedConformanceWitness + 16);
  v76 = AssociatedConformanceWitness;
  v26 = v25(&v22[v24], v78 + v24, v11, AssociatedConformanceWitness);
  (*(v20 + 8))(v22, v19);
  if ((v26 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v63 = v19;
  v64 = v6;
  v27 = *(v19 + 36);
  v28 = *(v6 + 72);
  v65 = v7;
  v28(v7, v6);
  v29 = *(v76 + 8);
  v30 = *(v29 + 8);
  v31 = v30(v78 + v27, v17, v11, v29);
  v32 = *(v75 + 8);
  result = v32(v17, v11);
  if ((v31 & 1) == 0)
  {
    v60 = *(v72 + 36);
    v35 = *v78;
    v79 = *(v77 + v60);
    v36 = type metadata accessor for RangeSet.Ranges(0, v11, v76, v34);
    v61 = v35;
    v62 = v27;
    v37 = v73;
    v59 = v36;
    RangeSet.Ranges.subscript.getter(v35, v36, v38, v73);
    (*(v75 + 16))(v17, v37, v11);
    v39 = v37;
    v40 = v62;
    v75 = *(v71 + 8);
    (v75)(v39, v74);
    v41 = v30(v78 + v40, v17, v11, v29);
    result = v32(v17, v11);
    if ((v41 & 1) == 0)
    {
      v42 = v61;
      v79 = *(v77 + v60);
      v53 = v73;
      RangeSet.Ranges.subscript.getter(v61, v59, v34, v73);
      v54 = v67;
      v55 = v65;
      (*(v64 + 88))(v53, v65);
      (v75)(v53, v74);
      v56 = v55;
      v57 = v69;
      v58 = swift_getAssociatedConformanceWitness(v66, v56, v69, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
      v52 = v70;
      (*(v58 + 32))(v78 + v40, v57, v58);
      result = (*(v68 + 8))(v54, v57);
      goto LABEL_7;
    }
  }

  v42 = *v78 - 1;
  if (!__OFSUB__(*v78, 1))
  {
    v79 = *(v77 + *(v72 + 36));
    v43 = type metadata accessor for RangeSet.Ranges(0, v11, v76, v34);
    v44 = v73;
    RangeSet.Ranges.subscript.getter(v42, v43, v45, v73);
    v46 = v65;
    v47 = v67;
    (*(v64 + 88))(v44, v65);
    v48 = v74;
    v49 = *(v74 + 36);
    v50 = v69;
    v51 = swift_getAssociatedConformanceWitness(v66, v46, v69, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
    v52 = v70;
    (*(v51 + 32))(v44 + v49, v50, v51);
    (*(v68 + 8))(v47, v50);
    result = (*(v71 + 8))(v44, v48);
LABEL_7:
    *v52 = v42;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> DiscontiguousSlice<A>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for DiscontiguousSlice.Index(0, *(a2 + 16), v6[1], a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v12 - v9);
  (*(v8 + 32))(&v12 - v9, a1, v7);
  DiscontiguousSlice<>.index(before:)(v10, a2, v6, a1);
  return (*(v8 + 8))(v10, v7);
}

uint64_t DiscontiguousSlice<>.subscript.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a1;
  v6 = *(a3 + 8);
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - v10;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = *v37;
  v39 = *(v4 + *(a2 + 36));
  v21 = type metadata accessor for RangeSet.Ranges(0, v12, AssociatedConformanceWitness, v20);
  RangeSet.Ranges.subscript.getter(v19, v21, v22, v18);
  v23 = v33;
  (*(v6 + 88))(v18, v7, v6);
  (*(v16 + 8))(v18, v15);
  v25 = *(type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, v24) + 36);
  v26 = v34;
  v27 = swift_getAssociatedConformanceWitness(v6, v7, v34, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v28 = (*(v27 + 80))(v38, v37 + v25, v26, v27);
  v30 = v29;
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v31 - 8) + 16))(v36, v30, v31);
  v28(v38, 0);
  return (*(v35 + 8))(v23, v26);
}

uint64_t key path setter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v15 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v8, v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v22 - v16);
  (*(v18 + 16))(&v22 - v16, a3);
  (*(v11 + 16))(v13, a1, v10);
  v20 = type metadata accessor for DiscontiguousSlice(0, v7, v8, v19);
  return DiscontiguousSlice<>.subscript.setter(v13, v17, v20, v6);
}

uint64_t DiscontiguousSlice<>.subscript.setter(uint64_t a1, unint64_t *a2, uint64_t a3, int ***a4)
{
  v35 = a4;
  v38 = a1;
  v7 = a4[1];
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v34 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v14);
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = *(v4 + *(a3 + 36));
  v19 = *a2;
  v40 = v18;
  v21 = type metadata accessor for RangeSet.Ranges(0, v10, AssociatedConformanceWitness, v20);
  RangeSet.Ranges.subscript.getter(v19, v21, v22, v17);
  v24 = type metadata accessor for DiscontiguousSlice.Index(0, v8, v7, v23);
  v25 = v34;
  (*(v11 + 32))(v34, a2 + *(v24 + 36), v10);
  v26 = v35;
  v27 = (*(v35 + 6))(v39, v17, v8, v35);
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v29 = v28;
  v30 = swift_getAssociatedConformanceWitness(v26, v8, v28, &protocol requirements base descriptor for MutableCollection, associated conformance descriptor for MutableCollection.Collection.SubSequence: MutableCollection);
  v31 = *(v30 + 24);
  v32 = swift_checkMetadataState(0, v29);
  v31(v38, v25, v32, v30);
  v27(v39, 0);
  return (*(v36 + 8))(v17, v37);
}

void (*DiscontiguousSlice<>.subscript.modify(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x120, 0x4D96uLL);
  }

  else
  {
    v7 = malloc(0x120uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a4;
  v7[13] = v53;
  v9 = *(a4 + 8);
  v10 = *(a3 + 16);
  v7[14] = v10;
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v8[15] = v11;
  v13 = *(v11 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x4D96uLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  v8[17] = v15;
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v8[18] = v16;
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0x4D96uLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v49 = v18;
  v8[19] = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v10, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v19);
  v8[20] = v20;
  v47 = *(v20 - 8);
  v48 = v20;
  v21 = *(v47 + 64);
  if (swift_coroFrameAlloc)
  {
    v22 = swift_coroFrameAlloc(v21, 0x4D96uLL);
  }

  else
  {
    v22 = malloc(v21);
  }

  v23 = v22;
  v8[21] = v22;
  swift_getAssociatedTypeWitness(0, *(v9 + 8), v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8[22] = v24;
  v25 = *(v24 - 8);
  v26 = v25;
  v8[23] = v25;
  v27 = *(v25 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[24] = swift_coroFrameAlloc(v27, 0x4D96uLL);
    v28 = swift_coroFrameAlloc(v27, 0x4D96uLL);
  }

  else
  {
    v8[24] = malloc(v27);
    v28 = malloc(v27);
  }

  v45 = v28;
  v8[25] = v28;
  v30 = type metadata accessor for DiscontiguousSlice.Index(0, v10, v9, v29);
  v8[26] = v30;
  v31 = *(v30 - 8);
  v32 = v31;
  v8[27] = v31;
  v33 = *(v31 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[28] = swift_coroFrameAlloc(v33, 0x4D96uLL);
    v34 = swift_coroFrameAlloc(v33, 0x4D96uLL);
  }

  else
  {
    v8[28] = malloc(v33);
    v34 = malloc(v33);
  }

  v8[29] = v34;
  (*(v32 + 16))();
  *(v8 + 70) = *(a3 + 36);
  v35 = *a2;
  v37 = type metadata accessor for RangeSet.Ranges(0, v12, AssociatedConformanceWitness, v36);
  v8[30] = v37;
  RangeSet.Ranges.subscript.getter(v35, v37, v38, v23);
  (*(v9 + 88))(v23, v10, v9);
  v39 = *(v47 + 8);
  v8[31] = v39;
  v8[32] = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v23, v48);
  v40 = *(v30 + 36);
  v41 = swift_getAssociatedConformanceWitness(v9, v10, v51, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v42 = (*(v41 + 80))(v8, a2 + v40, v51, v41);
  v43 = *(v26 + 16);
  v8[33] = v43;
  v8[34] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v45);
  v42(v8, 0);
  (*(v50 + 8))(v49, v51);
  return DiscontiguousSlice<>.subscript.modify;
}

void DiscontiguousSlice<>.subscript.modify(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v41 = *(*a1 + 248);
  if (a2)
  {
    v5 = *(v4 + 232);
    v46 = *(v4 + 240);
    v34 = v5;
    v7 = *(v4 + 216);
    v6 = *(v4 + 224);
    v8 = *(v4 + 208);
    v42 = *(v4 + 192);
    v44 = *(v4 + 200);
    v9 = *(v4 + 168);
    v36 = *(v4 + 176);
    v37 = *(v4 + 160);
    v39 = *(v4 + 184);
    v48 = *(v4 + 152);
    v33 = *(v4 + 144);
    v11 = *(v4 + 128);
    v10 = *(v4 + 136);
    v31 = *(v4 + 120);
    v32 = *(v4 + 112);
    v12 = *(v4 + 96);
    (*(v4 + 264))();
    (*(v7 + 32))(v6, v5, v8);
    RangeSet.Ranges.subscript.getter(*v6, v46, v13, v9);
    v47 = v6;
    (*(v11 + 32))(v10, v6 + *(v8 + 36), v31);
    v14 = v10;
    v15 = (*(v12 + 6))(v4 + 32, v9, v32, v12);
    v16 = v12;
    v18 = v42;
    v17 = v44;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v16, v32, v33, &protocol requirements base descriptor for MutableCollection, associated conformance descriptor for MutableCollection.Collection.SubSequence: MutableCollection);
    (*(AssociatedConformanceWitness + 24))(v42, v10, v33, AssociatedConformanceWitness);
    v15(v4 + 32, 0);
    v41(v9, v37);
    (*(v39 + 8))(v44, v36);
    v20 = v34;
  }

  else
  {
    v21 = *(v4 + 232);
    v35 = *(v4 + 208);
    v45 = *(v4 + 200);
    v47 = *(v4 + 224);
    v43 = *(v4 + 192);
    v9 = *(v4 + 168);
    v40 = *(v4 + 160);
    v48 = *(v4 + 152);
    v38 = *(v4 + 144);
    v22 = *(v4 + 128);
    v23 = *(v4 + 136);
    v24 = *(v4 + 112);
    v25 = *(v4 + 120);
    v26 = *(v4 + 96);
    RangeSet.Ranges.subscript.getter(*v21, *(v4 + 240), a4, v9);
    v27 = v25;
    v18 = v43;
    (*(v22 + 32))(v23, v21 + *(v35 + 36), v27);
    v14 = v23;
    v28 = (*(v26 + 6))(v4 + 64, v9, v24, v26);
    v29 = v24;
    v17 = v45;
    v30 = swift_getAssociatedConformanceWitness(v26, v29, v38, &protocol requirements base descriptor for MutableCollection, associated conformance descriptor for MutableCollection.Collection.SubSequence: MutableCollection);
    (*(v30 + 24))(v45, v23, v38, v30);
    v28(v4 + 64, 0);
    v41(v9, v40);
    v20 = v21;
  }

  free(v20);
  free(v47);
  free(v17);
  free(v18);
  free(v9);
  free(v48);
  free(v14);

  free(v4);
}

atomic_ullong *Collection.subscript.getter@<X0>(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  *(a4 + *(type metadata accessor for DiscontiguousSlice(0, a2, a3, v9) + 36)) = v8;

  return v8;
}

uint64_t Collection.removingSubranges(_:)@<X0>(const char *a1@<X1>, int **a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v12 = type metadata accessor for RangeSet(0, v9, AssociatedConformanceWitness, v11);
  RangeSet._inverted<A>(within:)(v12, a1, a2, &v16);
  v13 = v16;
  (*(*(a1 - 1) + 16))(a3, v4, a1);
  result = type metadata accessor for DiscontiguousSlice(0, a1, a2, v14);
  *(a3 + *(result + 36)) = v13;
  return result;
}

uint64_t RangeSet._inverted<A>(within:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v48 = a4;
  v8 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v44 = v9;
  v47 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v42 = &v37 - v13;
  v46 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = *(a1 + 24);
  v45 = type metadata accessor for Range(0, v8, v19, v20);
  v21 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v37 - v22;
  v49 = *v4;
  v23 = *(a3 + 64);
  v49;
  v23(a2, a3);
  (*(a3 + 72))(a2, a3);
  v24 = *(v19 + 24);
  v43 = v19;
  if ((v24(v18, v16, v8, v19) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = v46;
  v26 = *(v46 + 32);
  v27 = v42;
  v26(v42, v18, v8);
  v39 = v21;
  v28 = v44;
  v26(&v27[*(v44 + 48)], v16, v8);
  v29 = v47;
  v30 = v41;
  (*(v47 + 16))(v41, v27, v28);
  v38 = *(v28 + 48);
  v31 = v40;
  v26(v40, v30, v8);
  v32 = *(v25 + 8);
  v32(&v30[v38], v8);
  (*(v29 + 32))(v30, v27, v28);
  v33 = v45;
  v26((v31 + *(v45 + 36)), &v30[*(v28 + 48)], v8);
  v32(v30, v8);
  v35 = type metadata accessor for RangeSet.Ranges(0, v8, v43, v34);
  RangeSet.Ranges._gaps(boundedBy:)(v31, v35, &v50);
  (*(v39 + 8))(v31, v33);
  result = v49;
  *v48 = v50;
  return result;
}

uint64_t LazyDropWhileSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v31 = v2;
  v16 = *v2;
  v39 = a1;
  v17 = *(a1 + 36);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v18, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v21 = *(AssociatedConformanceWitness + 16);
  v38 = v19;
  v22 = swift_checkMetadataState(0, v19);
  if (v16 == 1)
  {
    return v21(v22, AssociatedConformanceWitness);
  }

  v35 = AssociatedConformanceWitness;
  v36 = v17;
  v24 = v31;
  v21(v22, AssociatedConformanceWitness);
  v34 = *(v33 + 48);
  if (v34(v13, 1, v7) == 1)
  {
LABEL_7:
    (*(v29 + 8))(v13, v30);
    return (*(v33 + 56))(v32, 1, 1, v7);
  }

  else
  {
    v37 = *(v33 + 32);
    v25 = (v33 + 8);
    while (1)
    {
      v37(v15, v13, v7);
      if (((*&v24[*(v39 + 40)])(v15) & 1) == 0)
      {
        break;
      }

      (*v25)(v15, v7);
      v26 = swift_checkMetadataState(0, v38);
      v21(v26, v35);
      if (v34(v13, 1, v7) == 1)
      {
        goto LABEL_7;
      }
    }

    *v24 = 1;
    v27 = v32;
    v37(v32, v15, v7);
    return (*(v33 + 56))(v27, 0, 1, v7);
  }
}

uint64_t LazyDropWhileSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    if ((v23 & 1) == 0)
    {
      break;
    }

    (*(a2 + 192))(v16, v17, a2);
  }

  return result;
}

uint64_t LazyDropWhileSequence<>.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(a3 + 72))(v5, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v5, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v12 = (*(AssociatedConformanceWitness + 16))(a1, v10, v7, AssociatedConformanceWitness);
  (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(a3 + 184))(a1, v5, a3);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazyDropWhileSequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0x1EDBuLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazyDropWhileSequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazyDropWhileSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x38, 0xAEE8uLL);
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
    v15 = swift_coroFrameAlloc(v14, 0xAEE8uLL);
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

uint64_t LazyDropWhileSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v16[1] = a4;
  v7 = *(a3 + 8);
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  LazyDropWhileSequence<>.startIndex.getter(v5, v7, v16 - v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(v5) = (*(AssociatedConformanceWitness + 40))(a1, v13, v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v13, v10);
  if ((v5 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(a3 + 32))(a1, v8, a3);
}

uint64_t dump<A, B>(_:to:name:indent:maxDepth:maxItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v24 = a7;
  v23 = &_swiftEmptyDictionarySingleton;
  (*(a11 + 8))(a10, a11);
  v22[3] = a8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v22);
  v18 = *(*(a8 - 8) + 16);
  v18(boxed_opaque_existential_0Tm, a1, a8);
  _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v22, a2, a3, a4, a5, a6, &v24, &v23, a10, a11);
  v23;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v18(a9, a1, a8);
  return (*(a11 + 16))(a10, a11);
}

void _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (*a7 < 1)
  {
    return;
  }

  --*a7;
  if (a5 < 0)
  {
LABEL_60:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a5)
  {
    v14 = *(a10 + 24);
    v15 = a5;
    do
    {
      v16 = a5;
      v14(32, 0xE100000000000000, a9, a10);
      0xE100000000000000;
      a5 = v16;
      --v15;
    }

    while (v15);
  }

  v59 = a5;
  v71 = a8;
  outlined init with copy of Any(a1, v78);
  v17 = Mirror.init(reflecting:)(v78, &v73);
  v63 = v73;
  v18 = v74;
  v65 = v76;
  v66 = *(&v75 + 1);
  v61 = v77;
  v62 = v75;
  v19 = (*(*v74 + 320))(v17);
  v20 = v19;
  v21 = 12162786;
  if (a6 > 0)
  {
    v21 = 12556002;
  }

  v22 = v19 == 0;
  if (v19)
  {
    v23 = v21;
  }

  else
  {
    v23 = 45;
  }

  if (v22)
  {
    v24 = 0xE100000000000000;
  }

  else
  {
    v24 = 0xA300000000000000;
  }

  v25 = *(a10 + 24);
  v60 = v24;
  v25(v23);
  (v25)(32, 0xE100000000000000, a9, a10);
  0xE100000000000000;
  if (a4)
  {
    (v25)(a3, a4, a9, a10);
    (v25)(8250, 0xE200000000000000, a9, a10);
    0xE200000000000000;
  }

  v64 = v25;
  v73 = v63;
  v74 = v18;
  LOBYTE(v75) = v62;
  *(&v75 + 1) = v66;
  v76 = v65;
  v77 = v61;
  _dumpPrint_unlocked<A, B>(_:_:_:)(a1, &v73, a2, byte_1EEEAC6F8, a9, a10);
  v26 = a1[3];
  v27 = __swift_project_boxed_opaque_existential_0Tm(a1, v26);
  DynamicType = swift_getDynamicType(v27, v26, 1);
  if (swift_isClassType(DynamicType) && DynamicType)
  {
    v29 = _unsafeDowncastToAnyObject(fromAny:)(a1);
    swift_unknownObjectRelease(v29);
  }

  else
  {
    outlined init with copy of Any(a1, &v73);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
    v31 = v25;
    if (!swift_dynamicCast(v78, &v73, byte_1EEEAC6F8, v30, 6uLL))
    {
      v40 = a10;
      goto LABEL_28;
    }

    v29 = *&v78[0];
  }

  v32 = *a8;
  v33 = *(*a8 + 16);
  if (v33)
  {
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if (v35)
    {
      v36 = v34;
      v65;
      v18;
      v60;
      v37 = *(*(v32 + 56) + 8 * v36);
      v64(8992, 0xE200000000000000, a9, a10);
      0xE200000000000000;
      v73 = v37;
      _print_unlocked<A, B>(_:_:)(&v73, a2, &type metadata for Int, a9, a10);
      v64(10, 0xE100000000000000, a9, a10);
      object = 0xE100000000000000;
      goto LABEL_46;
    }

    v39 = a8;
    v32 = *a8;
  }

  else
  {
    v39 = a8;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v32);
  v73 = *v39;
  *v39 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v29, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), canonical specialized generic type metadata accessor for _DictionaryStorage<ObjectIdentifier, Int>, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for ObjectIdentifier);
  *v39 = v73;
  v40 = a10;
  v31 = v64;
  v64(8992, 0xE200000000000000, a9, a10);
  0xE200000000000000;
  v73 = v33;
  _print_unlocked<A, B>(_:_:)(&v73, a2, &type metadata for Int, a9, a10);
LABEL_28:
  v31(10, 0xE100000000000000, a9, v40);
  0xE100000000000000;
  v42 = a6 < 1;
  v69 = a6 - 1;
  if (v42)
  {
    goto LABEL_45;
  }

  v66(&v73);
  v43 = v73;
  if (v73)
  {
    v44 = v74;
    v46 = v75;
    v45 = v76;
    v77 &= 1u;
    if (__OFADD__(v59, 2))
    {
      __break(1u);
      goto LABEL_62;
    }

    _dumpSuperclass_unlocked<A>(mirror:to:indent:maxDepth:maxItemCounter:visitedItems:)(&v73, a2, v59 + 2, v69, a7, v71, a9, a10);
    outlined consume of Mirror?(v43, v44, v46, *(&v46 + 1), v45);
  }

  if (v20 < 0)
  {
    goto LABEL_60;
  }

  if (!v20)
  {
    goto LABEL_45;
  }

  v67 = v20;
  v48 = *(v18 + 16);
  v47 = *(v18 + 24);
  v49 = __OFADD__(v59, 2);
  swift_unknownObjectRetain(*(v18 + 16));
  v50 = 0;
  do
  {
    if (*a7 <= 0)
    {
      v57 = v59 + 4;
      if (!__OFADD__(v59, 4))
      {
        if ((v57 & 0x8000000000000000) == 0)
        {
          v65;
          v18;
          v60;
          do
          {
            if (!v57)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v73 = 32;
            v74 = 0xE100000000000000;
            _print_unlocked<A, B>(_:_:)(&v73, a2, &type metadata for String, a9, a10);
            0xE100000000000000;
            --v57;
          }

          while (v57);
          v64(40, 0xE100000000000000, a9, a10);
          0xE100000000000000;
          v73 = v67 - v50;
          _print_unlocked<A, B>(_:_:)(&v73, a2, &type metadata for Int, a9, a10);
          if (v50)
          {
            v64(0x65726F6D20, 0xE500000000000000, a9, a10);
            0xE500000000000000;
          }

          if (v67 - 1 == v50)
          {
            v64(0xA29646C69686320, 0xE800000000000000, a9, a10);
            swift_unknownObjectRelease(v48);
            object = 0xE800000000000000;
          }

          else
          {
LABEL_59:
            v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" children)\n", 0xBuLL, 1);
            (v64)(v58._countAndFlagsBits);
            swift_unknownObjectRelease(v48);
            object = v58._object;
          }

          goto LABEL_46;
        }

        goto LABEL_60;
      }

LABEL_62:
      __break(1u);
      return;
    }

    (*(*v18 + 256))(&v73, v48, v47);
    v51 = v73;
    v52 = v74;
    outlined init with take of Any(&v75, v78);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(v48);
    v54 = *v18;
    if (isUniquelyReferenced_nonNull)
    {
      (*(v54 + 272))(v48, v47);
    }

    else
    {
      v55 = (*(v54 + 264))(v48, v47);
      v47 = v56;
      swift_unknownObjectRelease(v48);
      v48 = v55;
    }

    if (v49)
    {
      __break(1u);
      goto LABEL_59;
    }

    ++v50;
    _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v78, a2, v51, v52, v59 + 2, v69, a7, v71, a9, a10);
    v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
  }

  while (v67 != v50);
  swift_unknownObjectRelease(v48);
LABEL_45:
  v65;
  v18;
  object = v60;
LABEL_46:
  object;
}

void dump<A>(_:name:indent:maxDepth:maxItems:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v20 = a6;
  v19 = &_swiftEmptyDictionarySingleton;
  _swift_stdlib_flockfile_stdout();
  v18[3] = a7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v18);
  v16 = *(*(a7 - 8) + 16);
  v16(boxed_opaque_existential_0Tm, a1, a7);
  _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v18, v17, a2, a3, a4, a5, &v20, &v19, &type metadata for _Stdout, &protocol witness table for _Stdout);
  v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v16(a8, a1, a7);
  _swift_stdlib_funlockfile_stdout();
}

void _dumpPrint_unlocked<A, B>(_:_:_:)(unint64_t *a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v281 = a5;
  v282 = a3;
  v9 = *(a4 - 1);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v277[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v277[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v277[-v18];
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *(v17 + 16);
  v23 = *(v17 + 24);
  if (v22 == 9)
  {
    goto LABEL_2;
  }

  if (*(v17 + 16) > 5u)
  {
    if (v22 != 6)
    {
      if (v22 != 7)
      {
        goto LABEL_2;
      }

      v35 = (*(*v21 + 320))(v16, v23);
      if (v35 == 1)
      {
        object = 0xE800000000000000;
        v37 = 0x7265626D656D2031;
        v38 = v281;
LABEL_116:
        v204 = *(a6 + 24);
        v45 = v37;
        v205 = object;
LABEL_140:
        v222 = v38;
LABEL_174:
        v204(v45, v205, v222, a6);

        object;
        return;
      }

      v69 = v35;
      v70 = _StringGuts.init(_initialCapacity:)(10);
      v80 = v71;
      v283 = v70;
      v284 = v71;
      v81 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v81 = v70 & 0xFFFFFFFFFFFFLL;
      }

      v38 = v281;
      if (v81 || (v70 & ~v71 & 0x2000000000000000) != 0)
      {
        if (v71 & 0x2000000000000000) == 0 || (v82 = specialized _SmallString.init(_:appending:)(v70, v71, 0, 0xE000000000000000), (v84))
        {
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v72, v73, v74, v75, v76, v77, v78, v79);
          0xE000000000000000;
          v86 = v283;
          v85 = v284;
          goto LABEL_93;
        }

        v86 = v82;
        v85 = v83;
        v80;
        0xE000000000000000;
        v283 = v86;
      }

      else
      {
        v71;
        v86 = 0;
        v85 = 0xE000000000000000;
        v283 = 0;
      }

      v284 = v85;
LABEL_93:
      v172 = _int64ToString(_:radix:uppercase:)(v69, 10, 0, swift_int64ToString);
      v182 = v173;
      v183 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v183 = v86 & 0xFFFFFFFFFFFFLL;
      }

      if (!v183 && (v86 & ~v85 & 0x2000000000000000) == 0)
      {
        v203 = v172;
        v85;
        v193 = v203;
        v283 = v203;
        v284 = v182;
        goto LABEL_103;
      }

      if ((v85 & 0x2000000000000000) != 0)
      {
        if ((v173 & 0x2000000000000000) != 0)
        {
          v198 = v172;
          v199 = specialized _SmallString.init(_:appending:)(v86, v85, v172, v173);
          if ((v201 & 1) == 0)
          {
            v265 = v200;
            v266 = v199;
            v85;
            v182;
            v283 = v266;
            v284 = v265;
            v182 = v265;
            v193 = v266;
            goto LABEL_103;
          }

          v184 = HIBYTE(v182) & 0xF;
          v172 = v198;
          goto LABEL_102;
        }
      }

      else if ((v173 & 0x2000000000000000) != 0)
      {
        v184 = HIBYTE(v173) & 0xF;
LABEL_102:
        _StringGuts.append(_:)(v172, v182, 0, v184, v174, v175, v176, v177, v178, v179, v180, v181);
        v182;
        v193 = v283;
        v182 = v284;
LABEL_103:
        v37 = 0x737265626D656D20;
        v194 = HIBYTE(v182) & 0xF;
        if ((v182 & 0x2000000000000000) == 0)
        {
          v194 = v193 & 0xFFFFFFFFFFFFLL;
        }

        if (v194 || (v193 & ~v182 & 0x2000000000000000) != 0)
        {
          if ((v182 & 0x2000000000000000) != 0 && (v195 = specialized _SmallString.init(_:appending:)(v193, v182, 0x737265626D656D20uLL, 0xE800000000000000), (v197 & 1) == 0))
          {
            v202 = v195;
            object = v196;
            v182;
            0xE800000000000000;
            v37 = v202;
          }

          else
          {
            _StringGuts.append(_:)(0x737265626D656D20, 0xE800000000000000, 0, 8, v185, v186, v187, v188, v189, v190, v191, v192);
            0xE800000000000000;
            v37 = v283;
            object = v284;
          }
        }

        else
        {
          v182;
          object = 0xE800000000000000;
        }

        goto LABEL_116;
      }

      v184 = v172 & 0xFFFFFFFFFFFFLL;
      goto LABEL_102;
    }

    v47 = 0xD000000000000010;
    v48 = (*(*v21 + 320))(v16, v23);
    if (v48 == 1)
    {
      object = 0x8000000180671FA0 | 0x8000000000000000;
      v49 = v281;
LABEL_173:
      v204 = *(a6 + 24);
      v45 = v47;
      v205 = object;
      v222 = v49;
      goto LABEL_174;
    }

    v105 = v48;
    v106 = _StringGuts.init(_initialCapacity:)(18);
    v116 = v107;
    v283 = v106;
    v284 = v107;
    v117 = HIBYTE(v107) & 0xF;
    if ((v107 & 0x2000000000000000) == 0)
    {
      v117 = v106 & 0xFFFFFFFFFFFFLL;
    }

    v49 = v281;
    if (v117 || (v106 & ~v107 & 0x2000000000000000) != 0)
    {
      if (v107 & 0x2000000000000000) == 0 || (v118 = specialized _SmallString.init(_:appending:)(v106, v107, 0, 0xE000000000000000), (v120))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v108, v109, v110, v111, v112, v113, v114, v115);
        0xE000000000000000;
        v122 = v283;
        v121 = v284;
        goto LABEL_147;
      }

      v122 = v118;
      v121 = v119;
      v116;
      0xE000000000000000;
      v283 = v122;
    }

    else
    {
      v107;
      v122 = 0;
      v121 = 0xE000000000000000;
      v283 = 0;
    }

    v284 = v121;
LABEL_147:
    v230 = _int64ToString(_:radix:uppercase:)(v105, 10, 0, swift_int64ToString);
    v240 = v231;
    v241 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v241 = v122 & 0xFFFFFFFFFFFFLL;
    }

    if (!v241 && (v122 & ~v121 & 0x2000000000000000) == 0)
    {
      v262 = v230;
      v121;
      v251 = v262;
      v283 = v262;
      v284 = v240;
      goto LABEL_157;
    }

    if ((v121 & 0x2000000000000000) != 0)
    {
      if ((v231 & 0x2000000000000000) != 0)
      {
        v258 = v230;
        v259 = specialized _SmallString.init(_:appending:)(v122, v121, v230, v231);
        if ((v261 & 1) == 0)
        {
          v269 = v260;
          v270 = v259;
          v121;
          v240;
          v283 = v270;
          v284 = v269;
          v240 = v269;
          v251 = v270;
          goto LABEL_157;
        }

        v242 = HIBYTE(v240) & 0xF;
        v230 = v258;
        goto LABEL_156;
      }
    }

    else if ((v231 & 0x2000000000000000) != 0)
    {
      v242 = HIBYTE(v231) & 0xF;
LABEL_156:
      _StringGuts.append(_:)(v230, v240, 0, v242, v232, v233, v234, v235, v236, v237, v238, v239);
      v240;
      v251 = v283;
      v240 = v284;
LABEL_157:
      object = 0x8000000180671F80 | 0x8000000000000000;
      v252 = HIBYTE(v240) & 0xF;
      if ((v240 & 0x2000000000000000) == 0)
      {
        v252 = v251 & 0xFFFFFFFFFFFFLL;
      }

      if (v252 || (v251 & ~v240 & 0x2000000000000000) != 0)
      {
        if ((0x8000000180671F80 & 0x2000000000000000 & v240) != 0 && (v253 = specialized _SmallString.init(_:appending:)(v251, v240, 0xD000000000000010, 0x8000000180671F80 | 0x8000000000000000), (v255 & 1) == 0))
        {
          v47 = v253;
          v257 = v254;
          v240;
          0x8000000180671F80 | 0x8000000000000000;
          object = v257;
        }

        else
        {
          if ((0x8000000180671F80 & 0x2000000000000000) != 0)
          {
            v256 = (0x8000000180671F80 >> 56) & 0xF;
          }

          else
          {
            v256 = 16;
          }

          _StringGuts.append(_:)(0xD000000000000010, 0x8000000180671F80 | 0x8000000000000000, 0, v256, v243, v244, v245, v246, v247, v248, v249, v250);
          0x8000000180671F80 | 0x8000000000000000;
          v47 = v283;
          object = v284;
        }
      }

      else
      {
        v240;
      }

      goto LABEL_173;
    }

    v242 = v230 & 0xFFFFFFFFFFFFLL;
    goto LABEL_156;
  }

  if (v22 == 3)
  {
    v44 = (*(*v21 + 320))(v16, v23);
    if (v44 == 1)
    {
      v28 = "(1 element)";
      v29 = 11;
      goto LABEL_21;
    }

    v87 = v44;
    v88 = _StringGuts.init(_initialCapacity:)(13);
    v98 = v89;
    v283 = v88;
    v284 = v89;
    v99 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v99 = v88 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v281;
    if (v99 || (v88 & ~v89 & 0x2000000000000000) != 0)
    {
      if (v89 & 0x2000000000000000) == 0 || (v100 = specialized _SmallString.init(_:appending:)(v88, v89, 0x28uLL, 0xE100000000000000), (v102))
      {
        _StringGuts.append(_:)(40, 0xE100000000000000, 0, 1, v90, v91, v92, v93, v94, v95, v96, v97);
        0xE100000000000000;
        v104 = v283;
        v103 = v284;
        goto LABEL_119;
      }

      v104 = v100;
      v103 = v101;
      v98;
      0xE100000000000000;
    }

    else
    {
      v89;
      v104 = 40;
      v103 = 0xE100000000000000;
    }

    v283 = v104;
    v284 = v103;
LABEL_119:
    v145 = _int64ToString(_:radix:uppercase:)(v87, 10, 0, swift_int64ToString);
    v154 = v206;
    v215 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v215 = v104 & 0xFFFFFFFFFFFFLL;
    }

    if (v215 || (v104 & ~v103 & 0x2000000000000000) != 0)
    {
      if ((v103 & 0x2000000000000000) == 0)
      {
        if ((v206 & 0x2000000000000000) != 0)
        {
          goto LABEL_129;
        }

LABEL_127:
        v216 = v145 & 0xFFFFFFFFFFFFLL;
LABEL_130:
        _StringGuts.append(_:)(v145, v154, 0, v216, v207, v208, v209, v210, v211, v212, v213, v214);
        v154;
        v145 = v283;
        v154 = v284;
        goto LABEL_131;
      }

      if ((v206 & 0x2000000000000000) == 0)
      {
        goto LABEL_127;
      }

      v217 = specialized _SmallString.init(_:appending:)(v104, v103, v145, v206);
      if (v219)
      {
LABEL_129:
        v216 = HIBYTE(v154) & 0xF;
        goto LABEL_130;
      }

      v267 = v217;
      v268 = v218;
      v103;
      v154;
      v283 = v267;
      v284 = v268;
      v154 = v268;
      v145 = v267;
    }

    else
    {
      v103;
      v283 = v145;
      v284 = v154;
    }

LABEL_131:
    v220 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" elements)", 0xAuLL, 1);
    countAndFlagsBits = v220._countAndFlagsBits;
    object = v220._object;
    v221 = HIBYTE(v154) & 0xF;
    if ((v154 & 0x2000000000000000) == 0)
    {
      v221 = v145 & 0xFFFFFFFFFFFFLL;
    }

    if (v221 || (v145 & ~v154 & 0x2000000000000000) != 0)
    {
      if ((v154 & 0x2000000000000000) == 0)
      {
LABEL_89:
        if ((object & 0x2000000000000000) != 0)
        {
          v171 = HIBYTE(object) & 0xF;
LABEL_138:
          _StringGuts.append(_:)(countAndFlagsBits, object, 0, v171, v161, v162, v163, v164, v165, v166, v167, v168);
          object;
          v45 = v283;
          object = v284;
          goto LABEL_139;
        }

LABEL_137:
        v171 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        goto LABEL_138;
      }

LABEL_136:
      if ((object & 0x2000000000000000) != 0)
      {
        v223 = countAndFlagsBits;
        v224 = specialized _SmallString.init(_:appending:)(v145, v154, countAndFlagsBits, object);
        if ((v226 & 1) == 0)
        {
          v228 = v225;
          v229 = v224;
          v154;
          object;
          v45 = v229;
          object = v228;
          goto LABEL_139;
        }

        v171 = HIBYTE(object) & 0xF;
        countAndFlagsBits = v223;
        goto LABEL_138;
      }

      goto LABEL_137;
    }

LABEL_143:
    v227 = countAndFlagsBits;
    v154;
    v45 = v227;
    goto LABEL_139;
  }

  if (v22 == 5)
  {
    v27 = (*(*v21 + 320))(v16, v23);
    if (v27 == 1)
    {
      v28 = "1 element";
      v29 = 9;
LABEL_21:
      v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v28, v29, 1);
      v45 = v46._countAndFlagsBits;
      object = v46._object;
      v38 = v281;
LABEL_139:
      v204 = *(a6 + 24);
      v205 = object;
      goto LABEL_140;
    }

    v51 = v27;
    v52 = _StringGuts.init(_initialCapacity:)(11);
    v62 = v53;
    v283 = v52;
    v284 = v53;
    v63 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v63 = v52 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v281;
    if (v63 || (v52 & ~v53 & 0x2000000000000000) != 0)
    {
      if (v53 & 0x2000000000000000) == 0 || (v64 = specialized _SmallString.init(_:appending:)(v52, v53, 0, 0xE000000000000000), (v66))
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v54, v55, v56, v57, v58, v59, v60, v61);
        0xE000000000000000;
        v68 = v283;
        v67 = v284;
        goto LABEL_72;
      }

      v68 = v64;
      v67 = v65;
      v62;
      0xE000000000000000;
      v283 = v68;
    }

    else
    {
      v53;
      v68 = 0;
      v67 = 0xE000000000000000;
      v283 = 0;
    }

    v284 = v67;
LABEL_72:
    v145 = _int64ToString(_:radix:uppercase:)(v51, 10, 0, swift_int64ToString);
    v154 = v144;
    v155 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v155 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v155 || (v68 & ~v67 & 0x2000000000000000) != 0)
    {
      if ((v67 & 0x2000000000000000) == 0)
      {
        if ((v144 & 0x2000000000000000) != 0)
        {
          goto LABEL_82;
        }

LABEL_80:
        v156 = v145 & 0xFFFFFFFFFFFFLL;
LABEL_83:
        _StringGuts.append(_:)(v145, v154, 0, v156, v146, v147, v148, v149, v150, v151, v152, v153);
        v154;
        v145 = v283;
        v154 = v284;
        goto LABEL_84;
      }

      if ((v144 & 0x2000000000000000) == 0)
      {
        goto LABEL_80;
      }

      v157 = specialized _SmallString.init(_:appending:)(v68, v67, v145, v144);
      if (v159)
      {
LABEL_82:
        v156 = HIBYTE(v154) & 0xF;
        goto LABEL_83;
      }

      v263 = v157;
      v264 = v158;
      v67;
      v154;
      v283 = v263;
      v284 = v264;
      v154 = v264;
      v145 = v263;
    }

    else
    {
      v67;
      v283 = v145;
      v284 = v154;
    }

LABEL_84:
    v169 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" elements", 9uLL, 1);
    countAndFlagsBits = v169._countAndFlagsBits;
    object = v169._object;
    v170 = HIBYTE(v154) & 0xF;
    if ((v154 & 0x2000000000000000) == 0)
    {
      v170 = v145 & 0xFFFFFFFFFFFFLL;
    }

    if (v170 || (v145 & ~v154 & 0x2000000000000000) != 0)
    {
      if ((v154 & 0x2000000000000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_136;
    }

    goto LABEL_143;
  }

LABEL_2:
  v278 = *(v17 + 40);
  v279 = v23;
  v280 = v20;
  v24 = a6;
  v25 = *(v9 + 16);
  v25(&v277[-v18], a1, a4);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v288, v19, a4, v26, 6uLL) || (v290 = 0, v288 = 0u, v289 = 0u, outlined destroy of _HasContiguousBytes?(&v288, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR), v25(v15, a1, a4), v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v288, v15, a4, v30, 6uLL)))
  {
    _ss9CodingKey_pWOb_0(&v288, &v283);
    v31 = v286;
    __swift_project_boxed_opaque_existential_0Tm(&v283, v286.n128_i64[0]);
    v32 = (*(v31.n128_u64[1] + 8))(v31.n128_u64[0], v31.n128_u64[1]);
    v34 = v33;
    (*(v24 + 24))(v32);
    v34;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(&v283);
    return;
  }

  v290 = 0;
  v288 = 0u;
  v289 = 0u;
  outlined destroy of _HasContiguousBytes?(&v288, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v25(v12, a1, a4);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  v40 = swift_dynamicCast(&v288, v12, a4, v39, 6uLL);
  v41 = v281;
  v42 = v282;
  if (v40)
  {
    _ss9CodingKey_pWOb_0(&v288, &v283);
    v43 = v286;
    __swift_project_boxed_opaque_existential_0Tm(&v283, v286.n128_i64[0]);
    (*(v43.n128_u64[1] + 8))(v42, v41, v24, v43.n128_u64[0], v43.n128_u64[1]);
    goto LABEL_11;
  }

  v290 = 0;
  v288 = 0u;
  v289 = 0u;
  outlined destroy of _HasContiguousBytes?(&v288, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v50 = v24;
  if (v22 == 9)
  {
LABEL_25:
    v283 = v280;
    v284 = v21;
    v285 = v22;
    v286 = v279;
    v287 = v278;
    _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, &v283, v42, 1, a4, v41, v24);
    return;
  }

  if (v22 < 2)
  {
LABEL_57:
    TypeName = swift_getTypeName(v280, 1);
    if ((v124 & 0x8000000000000000) == 0)
    {
      v125 = TypeName;
      v126 = v124;
      v127 = validateUTF8(_:)(TypeName, v124);
      if (v127 < 0)
      {
        v131 = repairUTF8(_:firstKnownBrokenRange:)(v125, v126, v128, v129);
      }

      else
      {
        v131 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v125, v126, v127 & 1, v130);
      }

      v133 = v132;
      (*(v24 + 24))(v131);
      goto LABEL_66;
    }

LABEL_185:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v22 != 2)
  {
    if (v22 != 8)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

  v134 = swift_getTypeName(v280, 1);
  if (v135 < 0)
  {
    goto LABEL_185;
  }

  v136 = v134;
  v137 = v135;
  v138 = validateUTF8(_:)(v134, v135);
  if (v138 < 0)
  {
    v142 = repairUTF8(_:firstKnownBrokenRange:)(v136, v137, v139, v140);
  }

  else
  {
    v142 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v136, v137, v138 & 1, v141);
  }

  v271 = v143;
  v272 = *(v50 + 24);
  v272(v142);
  v271;
  v273 = swift_EnumCaseName(a1, a4);
  if (v273)
  {
    v274 = specialized String.init(validatingUTF8:)(v273);
    if (v275)
    {
      v276 = v274;
      v133 = v275;
      (v272)(46, 0xE100000000000000, v41, v50);
      0xE100000000000000;
      (v272)(v276, v133, v41, v50);
LABEL_66:
      v133;
    }
  }
}

void _print_unlocked<A, B>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v60 = a4;
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v58 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v57 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v57 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v57 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v57 - v20);
  v63 = v22;
  v23 = __swift_allocate_boxed_opaque_existential_0Tm(&v61);
  v24 = *(v8 + 16);
  v24(v23, a1, a3);
  v25 = v63;
  v26 = __swift_project_boxed_opaque_existential_0Tm(&v61, v63);
  DynamicType = swift_getDynamicType(v26, v25, 1);
  LODWORD(v25) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  if (v25)
  {
    v24(v21, a1, a3);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v61, v21, a3, v28, 7uLL);
    v29 = v63;
    v30 = v64;
    __swift_project_boxed_opaque_existential_0Tm(&v61, v63);
    v31 = (*(v30 + 8))(v29, v30);
    v33 = v32;
    v34 = *(a5 + 24);
LABEL_3:
    v34(v31);
LABEL_4:
    v33;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(&v61);
    return;
  }

  v35 = v59;
  v24(v19, a1, a3);
  if (swift_dynamicCast(&v61, v19, a3, &type metadata for String, 6uLL))
  {
    v36 = v62;
    (*(a5 + 24))(v61, v62, v60, a5);
    v36;
  }

  else
  {
    v24(v16, a1, a3);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v65, v16, a3, v37, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v65, &v61);
      v38 = v63;
      v39 = v64;
      __swift_project_boxed_opaque_existential_0Tm(&v61, v63);
      (*(v39 + 8))(v35, v60, a5, v38, v39);
      goto LABEL_5;
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    outlined destroy of _HasContiguousBytes?(&v65, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v24(v13, a1, a3);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    v41 = v35;
    if (swift_dynamicCast(&v65, v13, a3, v40, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v65, &v61);
      v42 = v63;
      v43 = v64;
      __swift_project_boxed_opaque_existential_0Tm(&v61, v63);
      v31 = (*(v43 + 8))(v42, v43);
      v33 = v44;
      v34 = *(a5 + 24);
      goto LABEL_3;
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    outlined destroy of _HasContiguousBytes?(&v65, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
    v45 = v58;
    v24(v58, a1, a3);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    v47 = swift_dynamicCast(&v65, v45, a3, v46, 6uLL);
    v48 = a5;
    v49 = v60;
    if (v47)
    {
      _ss9CodingKey_pWOb_0(&v65, &v61);
      v50 = v63;
      v51 = v64;
      __swift_project_boxed_opaque_existential_0Tm(&v61, v63);
      v52 = (*(v51 + 8))(v50, v51);
      v33 = v53;
      (*(a5 + 24))(v52);
      goto LABEL_4;
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    outlined destroy of _HasContiguousBytes?(&v65, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
    *(&v66 + 1) = a3;
    v54 = __swift_allocate_boxed_opaque_existential_0Tm(&v65);
    v24(v54, a1, a3);
    Mirror.init(reflecting:)(&v65, &v61);
    v55 = v62;
    v56 = v64;
    _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, &v61, v41, 0, a3, v49, v48);
    v56;
    v55;
  }
}

void _dumpSuperclass_unlocked<A>(mirror:to:indent:maxDepth:maxItemCounter:visitedItems:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a5 < 1)
  {
    return;
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  --*a5;
  if (a3 < 0)
  {
LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = a2;
  v49 = v10;
  v54 = a7;
  v55 = a8;
  if (a3)
  {
    v15 = *(a8 + 24);
    v16 = a3;
    do
    {
      v15(32, 0xE100000000000000, a7, a8);
      0xE100000000000000;
      v14 = a2;
      a7 = v54;
      a8 = v55;
      --v16;
    }

    while (v16);
  }

  v47 = v12;
  v48 = a3;
  v17 = a8;
  v18 = a7;
  v19 = v14;
  v20 = (*(*v11 + 320))();
  v21 = 12162786;
  if (a4 > 0)
  {
    v21 = 12556002;
  }

  v51 = v20;
  v22 = v20 == 0;
  if (v20)
  {
    v23 = v21;
  }

  else
  {
    v23 = 45;
  }

  if (v22)
  {
    v24 = 0xE100000000000000;
  }

  else
  {
    v24 = 0xA300000000000000;
  }

  v25 = *(v17 + 24);
  v25(v23, v24, v18, v17);
  v25(0x203A726570757320, 0xE800000000000000, v18, v17);
  0xE800000000000000;
  v56 = v49;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
  _debugPrint_unlocked<A, B>(_:_:)(&v56, v19, v26, v18, v17);
  v45 = v25;
  v25(10, 0xE100000000000000, v18, v17);
  0xE100000000000000;
  v50 = a4 - 1;
  if (a4 < 1)
  {
    object = v24;
    goto LABEL_33;
  }

  v46 = v24;
  v47(&v56);
  v27 = v56;
  if (v56)
  {
    v28 = v57;
    v30 = v58;
    v29 = v59;
    v60 &= 1u;
    if (__OFADD__(v48, 2))
    {
      __break(1u);
      goto LABEL_49;
    }

    _dumpSuperclass_unlocked<A>(mirror:to:indent:maxDepth:maxItemCounter:visitedItems:)(&v56, a2, v48 + 2, v50, a5, a6, v54, v55);
    outlined consume of Mirror?(v27, v28, v30, *(&v30 + 1), v29);
  }

  v31 = v51;
  if (v51 < 0)
  {
    goto LABEL_47;
  }

  if (!v51)
  {
    goto LABEL_31;
  }

  v33 = *(v11 + 2);
  v32 = *(v11 + 3);
  v34 = __OFADD__(v48, 2);
  swift_unknownObjectRetain(*(v11 + 2));
  v35 = 0;
  do
  {
    if (*a5 <= 0)
    {
      v43 = v48 + 4;
      if (!__OFADD__(v48, 4))
      {
        v11 = v45;
        if ((v43 & 0x8000000000000000) == 0)
        {
          v46;
          do
          {
            if (!v43)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v45(32, 0xE100000000000000, v54, v55);
            0xE100000000000000;
            --v43;
          }

          while (v43);
          v45(40, 0xE100000000000000, v54, v55);
          0xE100000000000000;
          v56 = v31 - v35;
          _print_unlocked<A, B>(_:_:)(&v56, a2, &type metadata for Int, v54, v55);
          if (v35)
          {
            v45(0x65726F6D20, 0xE500000000000000, v54, v55);
            0xE500000000000000;
          }

          if (v31 - 1 == v35)
          {
            v45(0xA29646C69686320, 0xE800000000000000, v54, v55);
            swift_unknownObjectRelease(v33);
            object = 0xE800000000000000;
          }

          else
          {
LABEL_46:
            v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" children)\n", 0xBuLL, 1);
            (v11)(v44._countAndFlagsBits);
            swift_unknownObjectRelease(v33);
            object = v44._object;
          }

          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_49:
      __break(1u);
      return;
    }

    (*(*v11 + 256))(&v56, v33, v32);
    v36 = v56;
    v37 = v57;
    outlined init with take of Any(&v58, v61);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(v33);
    v39 = *v11;
    if (isUniquelyReferenced_nonNull)
    {
      (*(v39 + 272))(v33, v32);
    }

    else
    {
      v40 = (*(v39 + 264))(v33, v32);
      v32 = v41;
      swift_unknownObjectRelease(v33);
      v33 = v40;
    }

    if (v34)
    {
      __break(1u);
      goto LABEL_46;
    }

    ++v35;
    _dump_unlocked<A>(_:to:name:indent:maxDepth:maxItemCounter:visitedItems:)(v61, a2, v36, v37, v48 + 2, v50, a5, a6, v54, v55);
    v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v31 = v51;
  }

  while (v51 != v35);
  swift_unknownObjectRelease(v33);
LABEL_31:
  object = v46;
LABEL_33:
  object;
}

uint64_t _debugPrint_unlocked<A, B>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v34 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v34 - v17);
  v19 = *(v10 + 16);
  v19(v34 - v17, a1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v37, v18, a3, v20, 6uLL) || (v39 = 0, v37 = 0u, v38 = 0u, outlined destroy of _HasContiguousBytes?(&v37, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR), (v19)(v16, a1, a3), v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR), swift_dynamicCast(&v37, v16, a3, v21, 6uLL)))
  {
    _ss9CodingKey_pWOb_0(&v37, v34);
    v22 = v35;
    v23 = v36;
    __swift_project_boxed_opaque_existential_0Tm(v34, v35);
    v24 = (*(v23 + 8))(v22, v23);
    v26 = v25;
    (*(a5 + 24))(v24);
    v26;
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  outlined destroy of _HasContiguousBytes?(&v37, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  (v19)(v13, a1, a3);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v37, v13, a3, v28, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v37, v34);
    v29 = v35;
    v30 = v36;
    __swift_project_boxed_opaque_existential_0Tm(v34, v35);
    (*(v30 + 8))(a2, a4, a5, v29, v30);
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  outlined destroy of _HasContiguousBytes?(&v37, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  *(&v38 + 1) = a3;
  v31 = __swift_allocate_boxed_opaque_existential_0Tm(&v37);
  (v19)(v31, a1, a3);
  Mirror.init(reflecting:)(&v37, v34);
  v32 = v34[1];
  v33 = v36;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, v34, a2, 1, a3, a4, a5);
  v33;
  return v32;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance EmptyCollection<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance EmptyCollection<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a1, a3);

  return specialized Collection._copyToContiguousArray()(WitnessTable, a1, WitnessTable);
}

uint64_t EmptyCollection.subscript.getter(uint64_t result, uint64_t a2)
{
  if (result | a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t key path setter for EmptyCollection.subscript(_:) : <A>EmptyCollection<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  type metadata accessor for EmptyCollection(0, *(a3 + a4 - 8), a3, a4);
  return specialized EmptyCollection.subscript.setter(v4, v5);
}

uint64_t (*EmptyCollection.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if (a2 | a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::Int __swiftcall EmptyCollection.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  if (_ | offsetBy)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

Swift::Int_optional __swiftcall EmptyCollection.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  if (_ | limitedBy)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = offsetBy != 0;
  v4 = 0;
  result.value = v4;
  result.is_nil = v3;
  return result;
}

Swift::Int __swiftcall EmptyCollection.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  if (from || to)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t EmptyCollection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 || (v6 = type metadata accessor for EmptyCollection(0, a4, a3, a4), WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v6, v7), result = RandomAccessCollection<>.indices.getter(v6, WitnessTable, &protocol witness table for Int, v10), v10[0] != a2) || v10[1] != a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static ClosedRange.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v10 = *(a4 + 8);
  v11 = *(v10 + 8);
  if ((v11(a1, a2, a3, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = a5(0, a3, a4);
  return v11(a1 + *(v12 + 36), a2 + *(v12 + 36), a3, v10) & 1;
}

uint64_t EmptyCollection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EmptyCollection(0, a5, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v9, v10);
  RandomAccessCollection<>.indices.getter(v9, WitnessTable, &protocol witness table for Int, &v13);
  if (v13 != a1 || v14 != a2 || (result = RandomAccessCollection<>.indices.getter(v9, WitnessTable, &protocol witness table for Int, &v13), v13 != a3) || v14 != a4)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance EmptyCollection<A>(uint64_t a1, _OWORD *a2))()
{
  if (*a2 != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::Int _ss15EmptyCollectionVyxGSksSk5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, void *a3@<X8>)
{
  result = EmptyCollection.index(_:offsetBy:)(*a1, a2);
  *a3 = 0;
  return result;
}

Swift::Int _ss15EmptyCollectionVyxGSksSk5index_8offsetBy07limitedE05IndexQzSgAH_SiAHtFTW_0@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = EmptyCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = 0;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

void protocol witness for Collection.subscript.read in conformance EmptyCollection<A>(void *a1)
{
  if (swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc(0x28, 0x23BCuLL);
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  protocol witness for MutableCollection.subscript.modify in conformance EmptyCollection<A>();
}

uint64_t protocol witness for Collection.indices.getter in conformance EmptyCollection<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance EmptyCollection<A>(void *a1, void *a2)
{
  if (*a1 || *a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance EmptyCollection<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  return EmptyCollection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1], *(a3 + 16));
}

{
  return EmptyCollection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1], *(a3 + 16));
}

uint64_t EnumeratedSequence.Iterator.init(_base:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for EnumeratedSequence.Iterator(0, a2, a3, v9);
  *(a4 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  (*(a2 + 64))(v5);
  result = type metadata accessor for EnumeratedSequence<>.Index(0, v5, a2, v6);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence<>.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  (*(a2 + 72))(v5);
  result = type metadata accessor for EnumeratedSequence<>.Index(0, v5, a2, v6);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t EnumeratedSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v7 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(a4 + 72);
  v28 = v4;
  v26 = v13;
  v13(v7, a4);
  v14 = *(swift_getAssociatedConformanceWitness(a4, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v15 = *(v14 + 8);
  v27 = a1;
  v25 = v15;
  v16 = v15(a1, v12, v9, v14);
  v17 = *(v10 + 8);
  v17(v12, v9);
  if (v16)
  {
    return (*(a4 + 152))(v27, v29, v7, a4);
  }

  v26(v7, a4);
  v18 = v25(v29, v12, v9, v14);
  v17(v12, v9);
  if (v18)
  {
    return (*(a4 + 152))(v27, v29, v7, a4);
  }

  v21 = *(type metadata accessor for EnumeratedSequence<>.Index(0, v7, a4, v19) + 36);
  v22 = *(v29 + v21);
  v23 = *(v27 + v21);
  result = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
  }

  return result;
}

uint64_t EnumeratedSequence<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  (*(a3 + 184))(a1, v7);
  result = type metadata accessor for EnumeratedSequence<>.Index(0, v7, a3, v8);
  v10 = *(result + 36);
  v11 = *(a1 + v10);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + v10) = v13;
  }

  return result;
}

uint64_t EnumeratedSequence<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  (*(a4 + 136))(a1, a2, v8, a4);
  if (a2 < 0 && ((*(a4 + 72))(v8, a4), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable), v19 = (*(*(AssociatedConformanceWitness + 8) + 8))(a1, v14, v10), (*(v11 + 8))(v14, v10), (v19 & 1) != 0))
  {
    result = (*(a4 + 112))(v8, a4);
  }

  else
  {
    result = *(a1 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v8, a4, v17) + 36));
  }

  v21 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v22 = v25;
    (*(v11 + 32))(v25, v16, v10);
    result = type metadata accessor for EnumeratedSequence<>.Index(0, v8, a4, v23);
    *(v22 + *(result + 36)) = v21;
  }

  return result;
}

uint64_t EnumeratedSequence<>.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a3;
  v53 = a6;
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness(255, a5, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v50 = type metadata accessor for Optional(0, v11, v13, v14);
  v15 = *(v50 - 8);
  v16 = MEMORY[0x1EEE9AC00](v50);
  v18 = &v48 - v17;
  v19 = *(v12 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v24 = *(a5 + 144);
  v51 = a1;
  v25 = a1;
  v26 = v10;
  v27 = a2;
  v24(v25, a2, v52, v26, a5);
  v28 = v19;
  if ((*(v19 + 48))(v18, 1, v12) == 1)
  {
    (*(v15 + 8))(v18, v50);
    v30 = type metadata accessor for EnumeratedSequence<>.Index(0, v26, a5, v29);
    return (*(*(v30 - 8) + 56))(v53, 1, 1, v30);
  }

  else
  {
    v52 = *(v19 + 32);
    v52(v23, v18, v12);
    v33 = v27;
    if (v27 < 0)
    {
      v50 = v23;
      v37 = v49;
      (*(a5 + 72))(v26, a5);
      v38 = *(*(swift_getAssociatedConformanceWitness(a5, v26, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8) + 8);
      v48 = v6;
      v39 = v26;
      v40 = v51;
      v41 = v38(v51, v37, v12);
      (*(v28 + 8))(v37, v12);
      if (v41)
      {
        v26 = v39;
        v35 = (*(a5 + 112))(v39, a5);
        v36 = v53;
        v23 = v50;
      }

      else
      {
        v43 = v39;
        v35 = *(v40 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v39, a5, v42) + 36));
        v36 = v53;
        v23 = v50;
        v26 = v43;
      }
    }

    else
    {
      v34 = type metadata accessor for EnumeratedSequence<>.Index(0, v26, a5, v32);
      v35 = *(v51 + *(v34 + 36));
      v36 = v53;
    }

    result = (v52)(v36, v23, v12);
    v45 = __OFADD__(v35, v33);
    v46 = v35 + v33;
    if (v45)
    {
      __break(1u);
    }

    else
    {
      v47 = type metadata accessor for EnumeratedSequence<>.Index(0, v26, a5, v44);
      *(v36 + *(v47 + 36)) = v46;
      return (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
    }
  }

  return result;
}

uint64_t EnumeratedSequence<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  (*(a4 + 64))(v6, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v13 = (*(AssociatedConformanceWitness + 24))(v11, a2, v8, AssociatedConformanceWitness);
  v14 = *(v9 + 8);
  v14(v11, v8);
  if ((v13 & 1) == 0 || ((*(a4 + 72))(v6, a4), v15 = (*(AssociatedConformanceWitness + 16))(a2, v11, v8, AssociatedConformanceWitness), v14(v11, v8), (v15 & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = *(a2 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v6, a4, v16) + 36));
  v18 = (*(a4 + 80))(v25, a2, v6, a4);
  v20 = v19;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v21 - 8) + 16))(v24, v20, v21);
  v18(v25, 0);
  return v17;
}

void (*protocol witness for Collection.subscript.read in conformance <> EnumeratedSequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x40, 0xAD9AuLL);
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a4 - 8);
  swift_getAssociatedTypeWitness(255, *(v10 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v11, "offset element ", 0);
  v14 = v13;
  v9[4] = v13;
  v15 = *(v13 - 8);
  v9[5] = v15;
  v16 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v17 = swift_coroFrameAlloc(v16, 0xAD9AuLL);
  }

  else
  {
    v17 = malloc(v16);
  }

  v18 = v17;
  v9[6] = v17;
  v9[7] = EnumeratedSequence<>.subscript.read(v9, a2, a3, v10);
  *v18 = v19;
  (*(*(v12 - 8) + 16))(&v18[*(v14 + 48)], v20, v12);
  return protocol witness for Collection.subscript.read in conformance <> EnumeratedSequence<A>;
}

void protocol witness for Collection.subscript.read in conformance <> EnumeratedSequence<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*EnumeratedSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  swift_getAssociatedTypeWitness(255, *(a4 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v8, "offset element ", 0);
  v10 = v9;
  *a1 = v9;
  v11 = *(v9 - 8);
  a1[1] = v11;
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0xFC9DuLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  a1[2] = v13;
  *v13 = EnumeratedSequence<>.subscript.getter(v13 + *(v10 + 48), a2, a3, a4);
  return EnumeratedSequence<>.subscript.read;
}

void EnumeratedSequence<>.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t static EnumeratedSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, v9) & 1;
}

uint64_t static EnumeratedSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(AssociatedConformanceWitness + 16))(a1, a2, v9, AssociatedConformanceWitness) & 1;
}

uint64_t EnumeratedSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v5 = *(a3 + 8);
  v6 = *(v5 + 8);
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  (*(v5 + 32))(a1, v7, v5);
  (*(v6 + 72))(v7, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = (*(*(AssociatedConformanceWitness + 8) + 8))(a1, v13, v9);
  (*(v10 + 8))(v13, v9);
  if (v17)
  {
    result = (*(v6 + 112))(v7, v6);
  }

  else
  {
    result = *(a1 + *(type metadata accessor for EnumeratedSequence<>.Index(0, v7, v6, v18) + 36));
  }

  v20 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v21 = v24;
    (*(v10 + 32))(v24, v15, v9);
    result = type metadata accessor for EnumeratedSequence<>.Index(0, v7, v6, v22);
    *(v21 + *(result + 36)) = v20;
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> EnumeratedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for EnumeratedSequence<>.Index(0, *(a2 + 16), *(*(v6 + 8) + 8), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  EnumeratedSequence<>.index(before:)(v10, a2, v6, a1);
  return (*(v8 + 8))(v10, v7);
}

uint64_t _swift_stdlib_Equatable_isEqual_indirect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(v7 + 16);
  v13(&v16 - v11);
  (v13)(v10, a2, a3);
  LOBYTE(a4) = (*(a4 + 8))(v12, v10, a3, a4);
  v14 = *(v7 + 8);
  v14(v10, a3);
  v14(v12, a3);
  return a4 & 1;
}

void *_getErrorDomainNSString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 8))(a2, a3);
  v10 = v9;
  (*(v5 + 8))(v7, a2);
  v12 = String._bridgeToObjectiveCImpl()(v8, v10, v11);
  v10;
  return v12;
}

void *String._bridgeToObjectiveCImpl()(uint64_t a1, unint64_t a2, void *a3)
{
  if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
  {
    v13 = a2;
    swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, a3);
    a2 = v13;
  }

  if (!_bridgeInitializedSuccessfully)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _orphanedFoundationSubclassesReparented = 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0 || (a2 & 0xD000000000000000) == 0xC000000000000000)
    {
      IndirectTaggedPointerString = (a2 & 0xFFFFFFFFFFFFFFFLL);
    }

    else if ((~a1 & 0x9000000000000000) != 0 || (a2 & 0x1000000000000000) != 0 || (v12 = a2, IndirectTaggedPointerString = _swift_stdlib_CreateIndirectTaggedPointerString(), a2 = v12, !IndirectTaggedPointerString))
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
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      if (a1 >= 0)
      {
        v5 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = a1 & 0xFFFFFFFFFFFFLL | 0xC000000000000000;
      }

      v6 = type metadata accessor for __SharedStringStorage();
      result = swift_allocObject(v6, 0x31, 7uLL);
      result[2] = 0;
      result[3] = v4;
      *(result + 48) = 1;
      result[4] = v5;
      result[5] = 0;
      return result;
    }

    return swift_unknownObjectRetain(IndirectTaggedPointerString);
  }

  if ((a2 & 0x4000000000000000) == 0 || (v14 = a1, v15 = a2 & 0xFFFFFFFFFFFFFFLL, v8 = a2, result = _swift_stdlib_CFStringCreateTaggedPointerString(&v14, HIBYTE(a2) & 0xF), a2 = v8, !result))
  {
    v14 = a1;
    v15 = a2;
    a2;
    _StringGuts.grow(_:)(16);
    v9 = v15;
    v10 = String._bridgeToObjectiveCImpl()(v14, v15);
    v9;
    return v10;
  }

  return result;
}

uint64_t _getErrorCode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 16))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t _getErrorUserInfoNSDictionary<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 24))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t _getErrorEmbeddedNSErrorIndirect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 32))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

void swift_errorInMain(uint64_t a1)
{
  v2 = 0xD00000000000001BLL;
  v3 = _StringGuts.init(_initialCapacity:)(29);
  v13 = v4;
  v53 = v3;
  v54 = v4;
  v14 = 0x800000018066D000;
  v15 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v3 & ~v4 & 0x2000000000000000) != 0)
  {
    if (("Swift/StringBridge.swift" & 0x2000000000000000 & v4) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v3, v4, 0xD00000000000001BLL, 0x800000018066D000), (v18 & 1) == 0))
    {
      v2 = v16;
      v20 = v17;
      v13;
      v53 = v2;
      v54 = v20;
      v14 = v20;
    }

    else
    {
      if (("Swift/StringBridge.swift" & 0x2000000000000000) != 0)
      {
        v19 = ("Swift/StringBridge.swift" >> 56) & 0xF;
      }

      else
      {
        v19 = 27;
      }

      _StringGuts.append(_:)(0xD00000000000001BLL, 0x800000018066D000, 0, v19, v5, v6, v7, v8, v9, v10, v11, v12);
      v2 = v53;
      v14 = v54;
    }
  }

  else
  {
    v4;
    v53 = 0xD00000000000001BLL;
    v54 = 0x800000018066D000;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  v52 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  _debugPrint_unlocked<A, B>(_:_:)(&v52, &v50, v21, &type metadata for String, &protocol witness table for String);
  v30 = v50;
  v31 = v51;
  v32 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v32 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32 && (v2 & ~v14 & 0x2000000000000000) == 0)
  {
    v14;
    v53 = v30;
    v54 = v31;
    goto LABEL_26;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v51 & 0x2000000000000000) != 0)
    {
      v42 = specialized _SmallString.init(_:appending:)(v2, v14, v50, v51);
      if ((v44 & 1) == 0)
      {
        v48 = v42;
        v49 = v43;
        v14;
        v31;
        v53 = v48;
        v54 = v49;
        v31 = v49;
        v30 = v48;
LABEL_26:
        v45 = v30 & 0xFFFFFFFFFFFFLL;
        if ((v31 & 0x2000000000000000) != 0)
        {
          v45 = HIBYTE(v31) & 0xF;
        }

        if (v45 || (v30 & ~v31 & 0x2000000000000000) != 0)
        {
          if ((v31 & 0x2000000000000000) != 0)
          {
            v31;
            v47 = 0xA000000000000000;
            if (!(v31 & 0x80808080808080 | v30 & 0x8080808080808080))
            {
              v47 = 0xE000000000000000;
            }

            v46 = v47 & 0xFF00000000000000 | ((HIBYTE(v31) & 0xF) << 56) | v31 & 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v33, v34, v35, v36, v37, v38, v39, v40);
            v30 = v53;
            v46 = v54;
          }
        }

        else
        {
          v31;
          v30 = 0;
          v46 = 0xE000000000000000;
        }

        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v30, v46, "Swift/ErrorType.swift", 0x15uLL, 2, 0xFEuLL);
      }

      goto LABEL_24;
    }
  }

  else if ((v51 & 0x2000000000000000) != 0)
  {
LABEL_24:
    v41 = HIBYTE(v31) & 0xF;
    goto LABEL_25;
  }

  v41 = v50 & 0xFFFFFFFFFFFFLL;
LABEL_25:
  _StringGuts.append(_:)(v30, v31, 0, v41, v22, v23, v24, v25, v26, v27, v28, v29);
  v31;
  v30 = v53;
  v31 = v54;
  goto LABEL_26;
}

uint64_t _typeName(_:qualified:)(unint64_t a1, char a2)
{
  TypeName = swift_getTypeName(a1, a2);
  if (v3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = TypeName;
  v5 = v3;
  v6 = validateUTF8(_:)(TypeName, v3);
  if ((v6 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v4, v5, v6 & 1, v9);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v4, v5, v7, v8);
}

uint64_t Error<>._code.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, a3, a1, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(a4 + 8);
  v13 = (*(v12 + 64))();
  (*(a3 + 24))(a1, a3);
  if (v13)
  {
    v14 = _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(v11, v8, v12);
  }

  else
  {
    v14 = specialized numericCast<A, B>(_:)(v11, v8, v12);
  }

  v15 = v14;
  (*(v9 + 8))(v11, v8);
  return v15;
}

char *AnyIterator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _IteratorBox(0, a3, a4, a4);
  v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
  (*(*(a3 - 8) + 32))(&v7[*(*v7 + 120)], a1, a3);
  return v7;
}

char *_IteratorBox.__allocating_init(_:)(uint64_t a1)
{
  v3 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  (*(*(*(v1 + 104) - 8) + 32))(&v3[*(*v3 + 120)], a1);
  return v3;
}

void *AnyIterator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _ClosureBasedIterator(255, a3, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ClosureBasedIterator<A>, v6, v7);
  v10 = type metadata accessor for _IteratorBox(0, v6, WitnessTable, v9);
  result = swift_allocObject(v10, 0x20, 7uLL);
  result[2] = a1;
  result[3] = a2;
  return result;
}

uint64_t _ss17_NativeDictionaryVyxq_GSTsST22_copyToContiguousArrays0eF0Vy7ElementQzGyFTW_0(uint64_t a1, uint64_t a2)
{
  v3 = specialized Sequence._copyToContiguousArray()(v2, a1, a2);
  *v2;
  return v3;
}

void _IteratorBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  swift_deallocClassInstance(v0);
}

void _AnyCollectionBox.__ivar_destroyer()
{
  swift_unknownObjectRelease(*(v0 + 16));
  v1 = *(v0 + 32);

  swift_unknownObjectRelease(v1);
}

void _AnyCollectionBox.__deallocating_deinit()
{
  v1 = v0[2];
  v0;
  swift_unknownObjectRelease(v1);
  v2 = v0[4];
  v0;
  swift_unknownObjectRelease(v2);

  swift_deallocClassInstance(v0);
}

void _AnyCollectionBox.subscript.getter()
{
  _abstract(file:line:)("Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x137uLL);
}

{
  _abstract(file:line:)("Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x18FuLL);
}

void *_AnyCollectionBox.__allocating_init(_startIndex:endIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject(v4, 0x30, 7uLL);
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *_AnyCollectionBox.init(_startIndex:endIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t _AnyCollectionBox.deinit()
{
  swift_unknownObjectRelease(*(v0 + 16));
  swift_unknownObjectRelease(*(v0 + 32));
  return v0;
}

void _AnyBidirectionalCollectionBox.__deallocating_deinit()
{
  swift_unknownObjectRelease(*(v0 + 16));
  swift_unknownObjectRelease(*(v0 + 32));

  swift_deallocClassInstance(v0);
}

char *_SequenceBox._makeIterator()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - v5;
  v7 = *(v2 + 216);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  (*(v4 + 16))(v6, v1 + *(v2 + 224), v3);
  (*(v7 + 32))(v3, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v9, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v15 = type metadata accessor for _IteratorBox(0, v9, AssociatedConformanceWitness, v14);
  v16 = swift_allocObject(v15, *(v15 + 48), *(v15 + 52));
  (*(v10 + 32))(&v16[*(*v16 + 120)], v12, v9);
  return v16;
}

uint64_t _SequenceBox._underestimatedCount.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 224), v3);
  v7 = (*(*(v2 + 216) + 40))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

__objc2_class **_SequenceBox._map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 208);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14[-v10];
  (*(v9 + 16))(&v14[-v10], v3 + *(v7 + 224), v8);
  v15 = v8;
  v16 = a3;
  v17 = *(v7 + 216);
  v18 = a1;
  v19 = a2;
  v12 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADsAE_pqd__Isgnrzr_xABsAE_pSTRzsAE_pRsd_0_r_0_lIetMgnozo_Tpq5Tm(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.Sequence.Element) -> (@out A1, @error @owned Error), v14, v8, a3, v17);
  (*(v9 + 8))(v11, v8);
  return v12;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(uint64_t a1, unint64_t a2)
{
  v4._rawBits = specialized Collection.count.getter(a1, a2)._rawBits;
  v26 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4._rawBits & ~(v4._rawBits >> 63), 0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((v4._rawBits & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v26;
  for (i = 0; v4._rawBits; --v4._rawBits)
  {
    if (i >= v6)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v13 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((i << 16));
      scalarLength = v13.scalarLength;
      value = v13._0._value;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = &v24;
      }

      else
      {
        v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v9 = _StringObject.sharedUTF8.getter(a1, a2);
        }
      }

      value = _decodeScalar(_:startingAt:)(v9, scalarLength, i);
    }

    v26 = v7;
    v12 = v7[2];
    v11 = v7[3];
    if (v12 >= v11 >> 1)
    {
      v21 = value;
      v20 = scalarLength;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
      scalarLength = v20;
      value = v21;
      v7 = v26;
    }

    i += scalarLength;
    v7[2] = (v12 + 1);
    *(v7 + v12 + 8) = value;
  }

  for (; i < v6; *(v7 + v17 + 8) = v15)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((i << 16));
      scalarLength = v18.scalarLength;
      v15 = v18._0._value;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        v14 = &v24;
      }

      else
      {
        v14 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v14 = _StringObject.sharedUTF8.getter(a1, a2);
        }
      }

      v15 = _decodeScalar(_:startingAt:)(v14, scalarLength, i);
    }

    v26 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      v23 = v15;
      v22 = scalarLength;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
      scalarLength = v22;
      v15 = v23;
      v7 = v26;
    }

    i += scalarLength;
    v7[2] = (v17 + 1);
  }

  return v7;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v8._rawBits = specialized Collection.count.getter(a1, a2, a3, a4)._rawBits;
  v129 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8._rawBits & ~(v8._rawBits >> 63), 0);
  if ((v8._rawBits & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = v129;
  v11 = a2._rawBits >> 14;
  if (v8._rawBits)
  {
    v12 = (v5 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v12) = 1;
    }

    v13 = 4 << v12;
    v14 = a1._rawBits >> 14;
    v15 = a4 & 0xFFFFFFFFFFFFFFLL;
    v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v17 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v18._rawBits = a1._rawBits;
    do
    {
      v19 = v18._rawBits >> 14;
      if (v18._rawBits >> 14 == v11)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v20 = v18._rawBits & 0xC;
      v21 = (v18._rawBits & 1) == 0 || v20 == v13;
      v22 = v21;
      if (v21)
      {
        rawBits = v18._rawBits;
        if (v20 == v13)
        {
          v119 = v14;
          v122 = v11;
          v52 = v13;
          v111 = v10;
          v53 = v15;
          v125 = v16;
          v104 = v17;
          v116 = v22;
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v18)._rawBits;
          v22 = v116;
          v17 = v104;
          v11 = v122;
          v16 = v125;
          v15 = v53;
          v10 = v111;
          v14 = v119;
          v13 = v52;
          v19 = rawBits >> 14;
          if (rawBits >> 14 < v119)
          {
            goto LABEL_107;
          }
        }

        else if (v19 < v14)
        {
          goto LABEL_107;
        }

        if (v19 >= v11)
        {
          goto LABEL_107;
        }

        if ((rawBits & 1) == 0)
        {
          v117 = v14;
          v120 = v11;
          v24 = v13;
          v109 = v10;
          v25 = v15;
          v123 = v16;
          v102 = v17;
          v114 = v22;
          rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
          v22 = v114;
          v17 = v102;
          v11 = v120;
          v16 = v123;
          v15 = v25;
          v10 = v109;
          v14 = v117;
          v13 = v24;
        }
      }

      else if (v19 < v14 || (rawBits = v18._rawBits, v19 >= v11))
      {
LABEL_107:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v118 = v14;
      v121 = v11;
      v108 = v15;
      v110 = v10;
      v124 = v16;
      v115 = v22;
      if ((a4 & 0x1000000000000000) != 0)
      {
        v27 = v17;
        v28 = v13;
        v54 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000));
        scalarLength = v54.scalarLength;
        value = v54._0._value;
      }

      else
      {
        v26 = rawBits >> 16;
        v27 = v17;
        v28 = v13;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = v15;
          v29 = &v127;
        }

        else
        {
          v29 = v16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v103 = v26;
            v29 = _StringObject.sharedUTF8.getter(v5, a4);
            v26 = v103;
          }
        }

        value = _decodeScalar(_:startingAt:)(v29, scalarLength, v26);
      }

      v31 = value;
      v13 = v28;
      v17 = v27;
      v107 = v5;
      if (v115)
      {
        v15 = v108;
        v16 = v124;
        if (v20 == v28)
        {
          v56 = value;
          v57._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v18)._rawBits;
          v31 = v56;
          v5 = v107;
          v17 = v27;
          v16 = v124;
          v15 = v108;
          v13 = v28;
          v18._rawBits = v57._rawBits;
          if (v27 <= v57._rawBits >> 16)
          {
            goto LABEL_107;
          }
        }

        else if (v27 <= v18._rawBits >> 16)
        {
          goto LABEL_107;
        }

        if ((v18._rawBits & 1) == 0)
        {
          v100 = v13;
          v32 = v15;
          v33 = v16;
          v34 = v17;
          v35 = v31;
          v36._rawBits = _StringGuts.scalarAlignSlow(_:)(v18)._rawBits;
          v31 = v35;
          v5 = v107;
          v17 = v34;
          v16 = v33;
          v15 = v32;
          v13 = v100;
          v18._rawBits = v18._rawBits & 0xC | v36._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v15 = v108;
        v16 = v124;
        if (v27 <= v18._rawBits >> 16)
        {
          goto LABEL_107;
        }
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v40._rawBits = v18._rawBits;
        v41 = v13;
        v42 = v15;
        v43 = v16;
        v44 = v17;
        v45 = v31;
        v46._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v40)._rawBits;
        v31 = v45;
        v17 = v44;
        v16 = v43;
        v15 = v42;
        v13 = v41;
        v18._rawBits = v46._rawBits;
        v14 = v118;
        v11 = v121;
        v10 = v110;
      }

      else
      {
        v37 = v18._rawBits >> 16;
        v14 = v118;
        v11 = v121;
        v10 = v110;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = v15;
          v39 = *(&v127 + v37);
        }

        else
        {
          v38 = v16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v58 = v13;
            v59 = v15;
            v60 = v16;
            v106 = v17;
            v99 = v31;
            v38 = _StringObject.sharedUTF8.getter(v5, a4);
            v31 = v99;
            v17 = v106;
            v16 = v60;
            v15 = v59;
            v10 = v110;
            v14 = v118;
            v11 = v121;
            v13 = v58;
          }

          v39 = v38[v37];
        }

        v47 = v39;
        v48 = __clz(v39 ^ 0xFF) - 24;
        if (v47 >= 0)
        {
          LOBYTE(v48) = 1;
        }

        v18._rawBits = ((v37 + v48) << 16) | 5;
      }

      v129 = v10;
      v50 = v10[2];
      v49 = v10[3];
      v51 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        v101 = v13;
        v105 = v17;
        v55 = v15;
        v98 = v31;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1);
        v31 = v98;
        v13 = v101;
        v17 = v105;
        v11 = v121;
        v16 = v124;
        v15 = v55;
        v51 = (v50 + 1);
        v14 = v118;
        v10 = v129;
      }

      v10[2] = v51;
      *(v10 + v50 + 8) = v31;
      --v8._rawBits;
      v5 = v107;
    }

    while (v8._rawBits);
  }

  else
  {
    v18._rawBits = a1._rawBits;
  }

  v61 = v18._rawBits >> 14;
  if (v18._rawBits >> 14 != v11)
  {
    v63 = (v5 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v63) = 1;
    }

    v64 = 4 << v63;
    v65 = a1._rawBits >> 14;
    v66 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v66 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v126 = v66;
    do
    {
      v67 = v18._rawBits & 0xC;
      v68 = (v18._rawBits & 1) == 0 || v67 == v64;
      v69 = v68;
      if (v68)
      {
        v70 = v18._rawBits;
        if (v67 == v64)
        {
          v79 = v11;
          v70 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18)._rawBits;
          v11 = v79;
        }

        if (v70 >> 14 < v65 || v70 >> 14 >= v11)
        {
          goto LABEL_107;
        }

        if ((v70 & 1) == 0)
        {
          v71 = v11;
          v70 = _StringGuts.scalarAlignSlow(_:)(v70)._rawBits;
          v11 = v71;
        }
      }

      else
      {
        if (v61 < v65)
        {
          goto LABEL_107;
        }

        v70 = v18._rawBits;
        if (v61 >= v11)
        {
          goto LABEL_107;
        }
      }

      v72 = v65;
      if ((a4 & 0x1000000000000000) != 0)
      {
        v74 = v11;
        v80 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v70 & 0xFFFFFFFFFFFF0000));
        scalarLength = v80.scalarLength;
        v76 = v80._0._value;
        if (!v69)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v73 = v70 >> 16;
        v74 = v11;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = a4 & 0xFFFFFFFFFFFFFFLL;
          v75 = &v127;
        }

        else
        {
          v75 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            v112 = v73;
            v75 = _StringObject.sharedUTF8.getter(v5, a4);
            v73 = v112;
          }
        }

        v76 = _decodeScalar(_:startingAt:)(v75, scalarLength, v73);
        if (!v69)
        {
LABEL_92:
          if (v126 <= v18._rawBits >> 16)
          {
            goto LABEL_107;
          }

          goto LABEL_93;
        }
      }

      if (v67 == v64)
      {
        v93._rawBits = v18._rawBits;
        v94 = v76;
        v95._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v93)._rawBits;
        v76 = v94;
        v18._rawBits = v95._rawBits;
      }

      if (v126 <= v18._rawBits >> 16)
      {
        goto LABEL_107;
      }

      if ((v18._rawBits & 1) == 0)
      {
        v77 = v76;
        v78._rawBits = _StringGuts.scalarAlignSlow(_:)(v18)._rawBits;
        v76 = v77;
        v18._rawBits = v18._rawBits & 0xC | v78._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      }

LABEL_93:
      if ((a4 & 0x1000000000000000) != 0)
      {
        v84._rawBits = v18._rawBits;
        v85 = v76;
        v86._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v84)._rawBits;
        v76 = v85;
        v18._rawBits = v86._rawBits;
        v11 = v74;
        v65 = v72;
      }

      else
      {
        v81 = v18._rawBits >> 16;
        v11 = v74;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v127 = v5;
          v128 = a4 & 0xFFFFFFFFFFFFFFLL;
          v83 = *(&v127 + v81);
          v65 = v72;
        }

        else
        {
          v82 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v65 = v72;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v96 = v11;
            v97 = v76;
            v82 = _StringObject.sharedUTF8.getter(v5, a4);
            v76 = v97;
            v11 = v96;
          }

          v83 = v82[v81];
        }

        v87 = v83;
        v88 = __clz(v83 ^ 0xFF) - 24;
        if (v87 >= 0)
        {
          LOBYTE(v88) = 1;
        }

        v18._rawBits = ((v81 + v88) << 16) | 5;
      }

      v129 = v10;
      v90 = v10[2];
      v89 = v10[3];
      if (v90 >= v89 >> 1)
      {
        v113 = v65;
        v91 = v11;
        v92 = v76;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v89 > 1, v90 + 1, 1);
        v76 = v92;
        v11 = v91;
        v65 = v113;
        v10 = v129;
      }

      v10[2] = (v90 + 1);
      *(v10 + v90 + 8) = v76;
      v61 = v18._rawBits >> 14;
    }

    while (v18._rawBits >> 14 != v11);
  }

  return v10;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5s15CollectionOfOneVys7UnicodeO6ScalarVG_Tg506_sSS17ij42ViewV6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6E8VAHXEfU_Tf1cn_n(int a1)
{
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  result = &_swiftEmptyArrayStorage;
  v3 = qword_1EE3221C0;
  v4 = qword_1EE3221C0 + 1;
  if (qword_1EE3221C0 >= qword_1EE3221C8 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(qword_1EE3221C8 > 1, qword_1EE3221C0 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  qword_1EE3221C0 = v4;
  *(&_swiftEmptyArrayStorage + v3 + 8) = a1;
  return result;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5s8RepeatedVys7UnicodeO6ScalarVG_Tg506_sSS17gh42ViewV6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6E8VAHXEfU_Tf1cn_n(uint64_t a1, int a2)
{
  v3 = a1;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
  if (v3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  for (result = &_swiftEmptyArrayStorage; v3; --v3)
  {
    v7 = result;
    v6 = result[2];
    v5 = result[3];
    if (v6 >= v5 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, &v6->isa + 1, 1);
      result = v7;
    }

    result[2] = (&v6->isa + 1);
    *(result + v6 + 8) = a2;
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = v4;
  v60 = a1;
  v61 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v48 - v16;
  v62 = *(v9 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = &v48 - v18;
  v19 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v64 = v22;
  v52 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v59 = a4;
  v25 = (*(a4 + 40))(a3, a4);
  v66 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
  v26 = v66;
  (*(v19 + 16))(v21, v63, a3);
  v27 = v59;
  v28 = *(v59 + 4);
  v63 = v24;
  v28(a3, v59);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25)
  {
    v54 = (v62 + 8);
    v55 = (v62 + 48);
    v29 = v64;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, a3, v64, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v31 = (AssociatedConformanceWitness + 16);
    v32 = *(AssociatedConformanceWitness + 16);
    while (1)
    {
      v33 = v56;
      v59 = AssociatedConformanceWitness;
      v53 = v31;
      v49 = v32;
      v32(v29, AssociatedConformanceWitness);
      if ((*v55)(v33, 1, v9) == 1)
      {
        break;
      }

      v60(&v65, v33);
      if (v5)
      {
        goto LABEL_21;
      }

      v5 = 0;
      v34 = *v54;
      v48 = v9;
      v34(v33, v9);
      v35 = v65;
      v66 = v26;
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1);
        v26 = v66;
      }

      *(v26 + 16) = v37 + 1;
      *(v26 + 4 * v37 + 32) = v35;
      --v25;
      v9 = v48;
      v32 = v49;
      v29 = v64;
      AssociatedConformanceWitness = v59;
      v31 = v53;
      if (!v25)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29 = v64;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, a3, v64, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
LABEL_11:
  v38 = v58;
  v55 = *(AssociatedConformanceWitness + 16);
  v56 = (AssociatedConformanceWitness + 16);
  (v55)(v29, AssociatedConformanceWitness);
  v39 = v62;
  v33 = (v62 + 48);
  v54 = *(v62 + 48);
  v40 = (v54)(v38, 1, v9);
  v41 = v57;
  if (v40 != 1)
  {
    v59 = AssociatedConformanceWitness;
    v53 = *(v39 + 32);
    v62 = v39 + 32;
    v43 = (v39 + 8);
    while (1)
    {
      v53(v41, v38, v9);
      v60(&v65, v41);
      if (v5)
      {
        break;
      }

      v5 = 0;
      (*v43)(v41, v9);
      v44 = v65;
      v66 = v26;
      v46 = *(v26 + 16);
      v45 = *(v26 + 24);
      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1);
        v26 = v66;
      }

      *(v26 + 16) = v46 + 1;
      *(v26 + 4 * v46 + 32) = v44;
      v38 = v58;
      v29 = v64;
      (v55)(v64, v59);
      v47 = (v54)(v38, 1, v9);
      v41 = v57;
      if (v47 == 1)
      {
        goto LABEL_12;
      }
    }

    (*v43)(v41, v9);
    (*(v52 + 8))(v63, v64);
    v26;
    __break(1u);
LABEL_21:
    (*(v52 + 8))(v63, v64);
    v26;
    (*v54)(v33, v9);
    __break(1u);
    goto LABEL_22;
  }

LABEL_12:
  (*(v52 + 8))(v63, v29);
  (*(v50 + 8))(v38, v51);
  return v26;
}

__objc2_class **_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADsAE_pqd__Isgnrzr_xABsAE_pSTRzsAE_pRsd_0_r_0_lIetMgnozo_Tpq5Tm(void (*a1)(char *, uint64_t *), uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v65 = a2;
  v66 = a4;
  v64 = a1;
  v10 = MEMORY[0x1EEE9AC00](a1);
  v61 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v51 - v12;
  swift_getAssociatedTypeWitness(255, a5, v13, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = v14;
  v18 = type metadata accessor for Optional(0, v14, v16, v17);
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v60 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v57 = &v51 - v22;
  v62 = v15;
  v58 = *(v15 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v55 = &v51 - v24;
  v25 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v67 = v28;
  v56 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v51 - v29;
  v31 = (*(a5 + 40))(a3, a5);
  v69 = &_swiftEmptyArrayStorage;
  v63 = type metadata accessor for ContiguousArray(0, v66, v32, v33);
  ContiguousArray.reserveCapacity(_:)(v31);
  (*(v25 + 16))(v27, v5, a3);
  v34 = *(a5 + 32);
  v66 = v30;
  v34(a3, a5);
  if (v31 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v31)
  {
    v59 = (v58 + 48);
    v52 = (v58 + 8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v67, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v36 = *(AssociatedConformanceWitness + 16);
    v37 = v61;
    v38 = v62;
    v39 = v60;
    while (1)
    {
      v40 = AssociatedConformanceWitness;
      v41 = v36;
      v36(v67, AssociatedConformanceWitness);
      if ((*v59)(v39, 1, v38) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v64(v39, &v68);
      if (v7)
      {
        break;
      }

      v7 = 0;
      (*v52)(v39, v38);
      ContiguousArray.append(_:)(v37, v63);
      --v31;
      AssociatedConformanceWitness = v40;
      v36 = v41;
      if (!v31)
      {
        v42 = v67;
        goto LABEL_9;
      }
    }

    (*(v56 + 8))(v66, v67);
    v69;
    return (*v52)(v39, v38);
  }

  else
  {
    v42 = v67;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v67, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v38 = v62;
LABEL_9:
    v43 = *(AssociatedConformanceWitness + 16);
    v61 = (AssociatedConformanceWitness + 16);
    v62 = AssociatedConformanceWitness;
    v60 = v43;
    (v43)(v42, AssociatedConformanceWitness);
    v44 = v57;
    v45 = v58;
    v59 = *(v58 + 48);
    v46 = (v59)(v57, 1, v38);
    v47 = v55;
    if (v46 == 1)
    {
LABEL_13:
      (*(v56 + 8))(v66, v67);
      (*(v53 + 8))(v44, v54);
      return v69;
    }

    else
    {
      v58 = *(v45 + 32);
      v48 = (v45 + 8);
      v49 = v51;
      while (1)
      {
        (v58)(v47, v44, v38);
        v64(v47, &v68);
        if (v7)
        {
          break;
        }

        v7 = 0;
        (*v48)(v47, v38);
        ContiguousArray.append(_:)(v49, v63);
        (v60)(v67, v62);
        if ((v59)(v44, 1, v38) == 1)
        {
          goto LABEL_13;
        }
      }

      (*v48)(v47, v38);
      (*(v56 + 8))(v66, v67);
      return v69;
    }
  }
}

__objc2_class **Sequence.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, const char *a3, uint64_t a4)
{
  v50 = a1;
  v51 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
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
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v20 = v19;
  v44 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v55 = &_swiftEmptyArrayStorage;
  (*(a4 + 32))(a3, a4);
  v23 = a4;
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

uint64_t _SequenceBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 208);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 224), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(v5 + 216));
  return (*(v7 + 8))(v9, v6);
}

Swift::UInt64 specialized Sequence.forEach(_:)(Swift::String::Index position, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2 >> 14;
  v6 = position._rawBits >> 14;
  if (position._rawBits >> 14 != a2 >> 14)
  {
    v9 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v22 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v23 = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v25 = v11;
    do
    {
      v12 = position._rawBits & 0xC;
      rawBits = position._rawBits;
      if (v12 == v10)
      {
        v20 = position._rawBits;
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
        position._rawBits = v20;
      }

      if (rawBits >> 14 < v6 || rawBits >> 14 >= v5)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v18 = position._rawBits;
        v15 = String.UTF8View._foreignSubscript(position:)(rawBits);
        position._rawBits = v18;
        if (v12 != v10)
        {
          goto LABEL_18;
        }
      }

      else if ((a4 & 0x2000000000000000) != 0)
      {
        v24[0] = a3;
        v24[1] = v23;
        v15 = *(v24 + (rawBits >> 16));
        if (v12 != v10)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = v22;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v21 = position._rawBits;
          v14 = _StringObject.sharedUTF8.getter(a3, a4);
          position._rawBits = v21;
        }

        v15 = v14[rawBits >> 16];
        if (v12 != v10)
        {
LABEL_18:
          if ((a4 & 0x1000000000000000) != 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      position._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_22:
        if (v25 <= position._rawBits >> 16)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v16 = v4;
        v17 = String.UTF8View._foreignIndex(after:)(position)._rawBits;
        goto LABEL_24;
      }

LABEL_19:
      v16 = v4;
      v17 = (position._rawBits & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_24:
      Hasher._combine(_:)(v15);
      position._rawBits = v17;
      v4 = v16;
    }

    while (v5 != v17 >> 14);
  }

  return position._rawBits;
}

Swift::UInt64 specialized Sequence.forEach(_:)(Swift::String::Index position, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = a2 >> 14;
  v7 = position._rawBits >> 14;
  if (position._rawBits >> 14 != a2 >> 14)
  {
    v10 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4 << v10;
    v35 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v36 = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v37 = v12;
    do
    {
      v13 = position._rawBits & 0xC;
      rawBits = position._rawBits;
      if (v13 == v11)
      {
        v41 = v11;
        v18 = position._rawBits;
        v19 = a3;
        v20._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
        a3 = v19;
        rawBits = v20._rawBits;
        position._rawBits = v18;
        v11 = v41;
      }

      if (rawBits >> 14 < v7 || rawBits >> 14 >= v6)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v21 = position._rawBits;
        v22 = a3;
        v23 = String.UTF8View._foreignSubscript(position:)(rawBits);
        a3 = v22;
        v39 = v23;
        position._rawBits = v21;
        if (v13 != v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v40[0] = a3;
          v40[1] = v36;
          v16 = *(v40 + (rawBits >> 16));
        }

        else
        {
          v15 = v35;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v41 = position._rawBits;
            v32 = a3;
            v33 = _StringObject.sharedUTF8.getter(a3, a4);
            a3 = v32;
            v15 = v33;
            position._rawBits = v41;
          }

          v16 = v15[rawBits >> 16];
        }

        v39 = v16;
        if (v13 != v11)
        {
LABEL_18:
          if ((a4 & 0x1000000000000000) != 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      v24 = a3;
      position._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(position)._rawBits;
      a3 = v24;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_22:
        if (v37 <= position._rawBits >> 16)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v17 = v5;
        v25 = a3;
        v26._rawBits = String.UTF8View._foreignIndex(after:)(position)._rawBits;
        a3 = v25;
        v41 = v26._rawBits;
        goto LABEL_24;
      }

LABEL_19:
      v17 = v5;
      v41 = (position._rawBits & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_24:
      v38 = a3;
      v27 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a5);
      *a5 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = a5;
      }

      else
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
        v29 = a5;
        *a5 = v27;
      }

      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v5 = v17;
      position._rawBits = v41;
      if (v31 >= v30 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v27);
        position._rawBits = v41;
        *v29 = v27;
      }

      *(v27 + 16) = v31 + 1;
      *(v27 + v31 + 32) = v39;
      a5 = v29;
      a3 = v38;
    }

    while (v6 != position._rawBits >> 14);
  }

  return position._rawBits;
}

uint64_t Sequence.forEach(_:)(void (*a1)(char *), uint64_t a2, const char *a3, int **a4)
{
  v38 = a1;
  v39 = a2;
  v40 = a4;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v13 = type metadata accessor for Optional(0, v8, v11, v12);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31 - v15;
  v17 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v21 = v20;
  v33 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v31 - v22);
  (*(v17 + 16))(v19, v41, a3);
  v24 = v40;
  (v40[4])(a3, v40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v24, a3, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v26 = *(AssociatedConformanceWitness + 16);
  v40 = v23;
  v41 = v21;
  v36 = AssociatedConformanceWitness + 16;
  v37 = AssociatedConformanceWitness;
  v35 = v26;
  (v26)(v21);
  v27 = v32;
  v34 = *(v32 + 48);
  if (v34(v16, 1, v8) != 1)
  {
    v28 = *(v27 + 32);
    v29 = (v27 + 8);
    while (1)
    {
      v28(v10, v16, v8);
      v38(v10);
      if (v4)
      {
        break;
      }

      (*v29)(v10, v8);
      v35(v41, v37);
      if (v34(v16, 1, v8) == 1)
      {
        return (*(v33 + 8))(v40, v41);
      }
    }

    (*v29)(v10, v8);
  }

  return (*(v33 + 8))(v40, v41);
}

uint64_t _SequenceBox.__customContainsEquatableElement(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v1 + *(v3 + 224), v4);
  v8 = (*(*(v3 + 216) + 48))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t _SequenceBox.__copyToContiguousArray()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - v5, v1 + *(v2 + 224), v3);
  return (*(*(v2 + 216) + 56))(v3);
}

char *_SequenceBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v8 = *(v3 + 216);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  (*(v5 + 16))(v7, v2 + *(v3 + 224), v4);
  (*(v8 + 64))(v13, v19, v20, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v16 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v15);
  v17 = swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  (*(v11 + 32))(&v17[*(*v17 + 120)], v13, v10);
  return v17;
}

char *_SequenceBox._dropFirst(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - v6;
  Sequence = type metadata accessor for DropFirstSequence(0, v4, *(v3 + 216), v8);
  v10 = *(Sequence - 8);
  v11 = MEMORY[0x1EEE9AC00](Sequence);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  (*(v5 + 16))(v7, v1 + *(v3 + 224), v4);
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v5 + 32))(v13, v7, v4);
  *&v13[*(Sequence + 36)] = a1;
  v16 = *(v10 + 32);
  v16(v15, v13, Sequence);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DropFirstSequence<A>, Sequence, v17);
  v20 = type metadata accessor for _SequenceBox(0, Sequence, WitnessTable, v19);
  v21 = swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
  v16(&v21[*(*v21 + 224)], v15, Sequence);
  return v21;
}

char *_SequenceBox.__allocating_init(_base:)(uint64_t a1)
{
  v3 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  (*(*(*(v1 + 208) - 8) + 32))(&v3[*(*v3 + 224)], a1);
  return v3;
}

char *_SequenceBox._drop(while:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 208);
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - v8;
  v9 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v13 = type metadata accessor for DropWhileSequence(0, v5, v4, v12);
  v40 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v39 - v20;
  (*(v9 + 16))(v11, v2 + *(v3 + 224), v5);
  v41 = v13;
  v21 = *(v13 + 36);
  v22 = v16;
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v24 = v23;
  (*(*(v23 - 8) + 56))(&v19[v21], 1, 1, v23);
  v25 = v42;
  (*(v4 + 32))(v5, v4);
  v26 = v45;
  DropWhileSequence.init(iterator:predicate:)(v25, v43, v44, v5, v4, v22);
  v29 = type metadata accessor for Optional(0, v24, v27, v28);
  (*(*(v29 - 8) + 8))(&v19[v21], v29);
  if (!v26)
  {
    v30 = *(v40 + 32);
    v31 = v22;
    v32 = v41;
    v30(v19, v31, v41);
    v33 = v39;
    v30(v39, v19, v32);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DropWhileSequence<A>, v32, v34);
    v37 = type metadata accessor for _SequenceBox(0, v32, WitnessTable, v36);
    v25 = swift_allocObject(v37, *(v37 + 48), *(v37 + 52));
    v30(&v25[*(*v25 + 224)], v33, v32);
  }

  return v25;
}

uint64_t Sequence.drop(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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

uint64_t Sequence.dropLast(_:)(int64_t a1, const char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v16 = type metadata accessor for Optional(0, v7, v14, v15);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - v17;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v40 - v21;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    v45 = v11;
    v46 = v20;
    v54 = &_swiftEmptyArrayStorage;
    v55 = &_swiftEmptyArrayStorage;
    v50 = v13;
    v51 = a1;
    v22 = *(a3 + 32);
    &_swiftEmptyArrayStorage;
    v22(a2, a3);
    v23 = v50;
    v24 = v53;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v53, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v49 = *(AssociatedConformanceWitness + 16);
    v49(v24, AssociatedConformanceWitness);
    v48 = *(v8 + 48);
    if (v48(v18, 1, v7) != 1)
    {
      v29 = 0;
      v47 = *(v8 + 32);
      v43 = (v8 + 40);
      v44 = v8 + 16;
      do
      {
        v47(v23, v18, v7);
        v32 = v54[2];
        if (v32 >= v51)
        {
          if (v29 >= v32)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v41 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v42 = AssociatedConformanceWitness;
          v34 = *(v8 + 16);
          v40 = *(v8 + 72) * v29;
          v35 = v45;
          v34(v45, v54 + v41 + v40, v7);
          v38 = type metadata accessor for ContiguousArray(0, v7, v36, v37);
          ContiguousArray.append(_:)(v35, v38);
          v39 = v54;
          if (!swift_isUniquelyReferenced_nonNull_native(v54))
          {
            v39 = _ContiguousArrayBuffer._consumeAndCreateNew()(v39, *(v38 + 16));
            v54 = v39;
          }

          v23 = v50;
          AssociatedConformanceWitness = v42;
          ContiguousArray._checkSubscript_mutating(_:)(v29);
          (*v43)(v39 + v41 + v40, v23, v7);
          if ((v29 + 1) < v51)
          {
            ++v29;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v33 = type metadata accessor for ContiguousArray(0, v7, v30, v31);
          ContiguousArray.append(_:)(v23, v33);
        }

        v49(v53, AssociatedConformanceWitness);
      }

      while (v48(v18, 1, v7) != 1);
    }

    (*(v46 + 8))(v52, v53);
    v26 = v55;
    v54;
    return v26;
  }

  else
  {
    v28 = *(a3 + 56);

    return v28(a2, a3);
  }
}

char *_SequenceBox._prefix(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - v6;
  v9 = type metadata accessor for PrefixSequence(0, v4, *(v3 + 216), v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  (*(v5 + 16))(v7, v1 + *(v3 + 224), v4);
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v5 + 32))(v13, v7, v4);
  *&v13[*(v9 + 36)] = a1;
  v16 = *(v10 + 32);
  v16(v15, v13, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PrefixSequence<A>, v9, v17);
  v20 = type metadata accessor for _SequenceBox(0, v9, WitnessTable, v19);
  v21 = swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
  v16(&v21[*(*v21 + 224)], v15, v9);
  return v21;
}

uint64_t Sequence.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X6>, uint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(*(a2 - 8) + 32))(a5, v5, a2);
  result = a4(0, a2, a3);
  *(a5 + *(result + 36)) = a1;
  return result;
}

uint64_t _SequenceBox._filter(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  v7 = *v3;
  v8 = *(*v3 + 208);
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v12 - v10, v3 + *(v7 + 224), v8);
  return a3(a1, a2, v8, *(v7 + 216));
}

__objc2_class **Sequence.prefix(while:)(uint64_t (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = a1;
  v42 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v35 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v15 = type metadata accessor for Optional(0, v8, v13, v14);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - v16;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v19 = v18;
  v34 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v45 = &_swiftEmptyArrayStorage;
  (*(a4 + 32))(a3, a4);
  v22 = a3;
  v23 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v22, v19, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v25 = *(AssociatedConformanceWitness + 16);
  v43 = v21;
  v44 = v19;
  v38 = AssociatedConformanceWitness + 16;
  v39 = AssociatedConformanceWitness;
  v37 = v25;
  (v25)(v19);
  v36 = *(v23 + 48);
  if (v36(v17, 1, v8) != 1)
  {
    v26 = *(v23 + 32);
    while (1)
    {
      v26(v12, v17, v8);
      v27 = v41(v12);
      if (v4)
      {
        (*(v35 + 8))(v12, v8);
        (*(v34 + 8))(v43, v44);
        return v45;
      }

      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = v40;
      v26(v40, v12, v8);
      v31 = type metadata accessor for ContiguousArray(0, v8, v29, v30);
      ContiguousArray.append(_:)(v28, v31);
      v37(v44, v39);
      if (v36(v17, 1, v8) == 1)
      {
        goto LABEL_9;
      }
    }

    (*(v35 + 8))(v12, v8);
  }

LABEL_9:
  (*(v34 + 8))(v43, v44);
  return v45;
}

uint64_t _SequenceBox._dropLast(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void))
{
  v5 = *v2;
  v6 = *(*v2 + 208);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 224), v6);
  return a2(a1, v6, *(v5 + 216));
}

__objc2_class **Sequence.suffix(_:)(Swift::Int a1, const char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v51 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v13 = type metadata accessor for Optional(0, v8, v11, v12);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v46 - v15;
  v17 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v57 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v46 - v22;
  if (a1 < 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    v47 = v21;
    v58 = v10;
    v64 = &_swiftEmptyArrayStorage;
    v23 = *(a3 + 40);
    &_swiftEmptyArrayStorage;
    v55 = v19;
    v24 = v23(a2, a3);
    v27 = a1;
    if (v24 < a1)
    {
      a1 = v24;
    }

    v52 = type metadata accessor for ContiguousArray(0, v8, v25, v26);
    ContiguousArray.reserveCapacity(_:)(a1);
    v48 = v17;
    v49 = v3;
    (*(v17 + 16))(v55, v3, a2);
    (*(a3 + 32))(a2, a3);
    v46 = a2;
    v28 = v57;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v57, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v54 = *(AssociatedConformanceWitness + 16);
    v55 = AssociatedConformanceWitness;
    v54(v28);
    v53 = *(v51 + 48);
    v30 = 0;
    if (v53(v16, 1, v8) != 1)
    {
      v30 = 0;
      v43 = *(v51 + 32);
      v50 = v51 + 40;
      do
      {
        v44 = v58;
        v43(v58, v16, v8);
        v45 = v64;
        if (v64[2] < v27)
        {
          ContiguousArray.append(_:)(v44, v52);
        }

        else
        {
          if (!swift_isUniquelyReferenced_nonNull_native(v64))
          {
            v45 = _ContiguousArrayBuffer._consumeAndCreateNew()(v45, *(v52 + 16));
            v64 = v45;
          }

          ContiguousArray._checkSubscript_mutating(_:)(v30);
          (*(v51 + 40))(v45 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v30, v58, v8);
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

          if (v30 + 1 >= v27)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }
        }

        (v54)(v57, v55);
      }

      while (v53(v16, 1, v8) != 1);
    }

    (*(v47 + 8))(v56, v57);
    if (v30)
    {
      v63 = &_swiftEmptyArrayStorage;
      v31 = v64;
      v32 = v64[2];
      v33 = v52;
      ContiguousArray.reserveCapacity(_:)(v32);
      v35 = v48;
      v34 = v49;
      if (v32 < v30 || (ContiguousArray._checkIndex(_:)(v30), ContiguousArray._checkIndex(_:)(v32), v36 = v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v59 = v31, v60 = v36, v61 = v30, v62 = (2 * v32) | 1, v39 = type metadata accessor for ArraySlice(0, v8, v37, v38), v31, WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v39, v40), ContiguousArray.append<A>(contentsOf:)(&v59, v33, v39, WitnessTable), v30 < 0))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*(v35 + 8))(v34, v46);
      ContiguousArray._checkIndex(_:)(0);
      ContiguousArray._checkIndex(_:)(v30);
      v59 = v31;
      v60 = v36;
      v61 = 0;
      v62 = (2 * v30) | 1;
      ContiguousArray.append<A>(contentsOf:)(&v59, v33, v39, WitnessTable);
      return v63;
    }

    else
    {
      &_swiftEmptyArrayStorage;
      (*(v48 + 8))(v49, v46);
      return v64;
    }
  }

  else
  {
    (*(v17 + 8))(v3, a2);
    _swift_isClassOrObjCExistentialType(v8, v8);
    return &_swiftEmptyArrayStorage;
  }
}

void _SequenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 208) - 8) + 8))(v0 + *(*v0 + 224));

  swift_deallocClassInstance(v0);
}

char *_CollectionBox._makeIterator()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - v5;
  v7 = *(*(v2 + 352) + 8);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  (*(v4 + 16))(v6, v1 + *(v2 + 360), v3);
  (*(v7 + 32))(v3, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v9, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v15 = type metadata accessor for _IteratorBox(0, v9, AssociatedConformanceWitness, v14);
  v16 = swift_allocObject(v15, *(v15 + 48), *(v15 + 52));
  (*(v10 + 32))(&v16[*(*v16 + 120)], v12, v9);
  return v16;
}

uint64_t _CollectionBox._underestimatedCount.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 360), v3);
  v7 = (*(*(*(v2 + 352) + 8) + 40))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

__objc2_class **_CollectionBox._map<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t *a3)
{
  v61 = a1;
  v62 = a2;
  v5 = *v3;
  v6 = *(*v3 + 352);
  v7 = *(*v3 + 344);
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v54 = v8;
  v60 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v10;
  v11 = a3;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v56 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - v21;
  (*(v20 + 16))(&v47 - v21, v3 + *(v5 + 360), v7);
  v23 = *(v6 + 112);
  v65 = v6;
  v24 = v23(v7, v6);
  if (v24)
  {
    v27 = v24;
    v67 = &_swiftEmptyArrayStorage;
    v58 = type metadata accessor for ContiguousArray(0, v11, v25, v26);
    ContiguousArray.reserveCapacity(_:)(v27);
    v28 = *(v65 + 64);
    v50 = v19;
    v51 = v22;
    v28(v7);
    if (v27 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v48 = v20;
    v49 = v14;
    v29 = *(v65 + 80);
    v30 = v53;
    v31 = v54;
    v63 = v7;
    v32 = (v60 + 16);
    v33 = (v60 + 8);
    v59 = v29;
    v60 = v65 + 80;
    v57 = v65 + 192;
    v35 = v50;
    v34 = v51;
    v36 = v55;
    do
    {
      v37 = v59(v66, v35, v63, v65);
      (*v32)(v30);
      v37(v66, 0);
      v38 = v64;
      v61(v30);
      if (v38)
      {
        (*v33)(v30, v31);
        (*(v56 + 8))(v35, v49);
        v67;
        return (*(v48 + 8))(v34, v63);
      }

      v64 = 0;
      (*v33)(v30, v31);
      ContiguousArray.append(_:)(v36, v58);
      (*(v65 + 192))(v35, v63);
      --v27;
    }

    while (v27);
    v39 = v65;
    v40 = v52;
    v41 = v63;
    (*(v65 + 72))(v63, v65);
    v42 = v49;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v39, v41, v49, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v44 = (*(*(AssociatedConformanceWitness + 8) + 8))(v35, v40, v42);
    v45 = *(v56 + 8);
    v45(v40, v42);
    if ((v44 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v45(v35, v42);
    (*(v48 + 8))(v34, v41);
    return v67;
  }

  else
  {
    (*(v20 + 8))(v22, v7);
    _swift_isClassOrObjCExistentialType(v11, v11);
    return &_swiftEmptyArrayStorage;
  }
}

__objc2_class **_CollectionBox._filter(_:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 344);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 360), v6);
  return Sequence.filter(_:)(a1, a2, v6, *(*(v5 + 352) + 8));
}

uint64_t _CollectionBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 344);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 360), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(*(v5 + 352) + 8));
  return (*(v7 + 8))(v9, v6);
}

uint64_t _CollectionBox.__customContainsEquatableElement(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v1 + *(v3 + 360), v4);
  v8 = (*(*(*(v3 + 352) + 8) + 48))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t _CollectionBox.__copyToContiguousArray()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - v5, v1 + *(v2 + 360), v3);
  return (*(*(*(v2 + 352) + 8) + 56))(v3);
}

char *_CollectionBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v8 = *(*(v3 + 352) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  (*(v5 + 16))(v7, v2 + *(v3 + 360), v4);
  (*(v8 + 64))(v13, v19, v20, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v16 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v15);
  v17 = swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  (*(v11 + 32))(&v17[*(*v17 + 120)], v13, v10);
  return v17;
}

char *_CollectionBox.__allocating_init(_base:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  v4 = specialized _CollectionBox.init(_base:)(a1);
  (*(*(*(v2 + 344) - 8) + 8))(a1);
  return v4;
}

char *_CollectionBox._drop(while:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, const char *, int **))
{
  v25 = a3;
  v23 = a2;
  v5 = *v3;
  v6 = *(*v3 + 344);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - v8;
  v10 = *(v5 + 352);
  swift_getAssociatedTypeWitness(0, v10, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12 = v11;
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  (*(v7 + 16))(v9, v3 + *(v5 + 360), v6);
  v15 = v24;
  v16 = v9;
  v25(a1, v23, v6, v10);
  if (!v15)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v6, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v19 = type metadata accessor for _CollectionBox(0, v12, AssociatedConformanceWitness, v18);
    swift_allocObject(v19, *(v19 + 48), *(v19 + 52));
    v16 = specialized _CollectionBox.init(_base:)(v14);
    (*(v22 + 8))(v14, v12);
  }

  return v16;
}

char *_CollectionBox._dropFirst(_:)(uint64_t a1, void (*a2)(uint64_t, const char *, int **))
{
  v19 = a1;
  v20 = a2;
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v8 = *(v3 + 352);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  (*(v5 + 16))(v7, v2 + *(v3 + 360), v4);
  v20(v19, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v16 = type metadata accessor for _CollectionBox(0, v10, AssociatedConformanceWitness, v15);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  v17 = specialized _CollectionBox.init(_base:)(v13);
  (*(v11 + 8))(v13, v10);
  return v17;
}

id *_CollectionBox.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[43] - 8) + 8))(v0 + *(*v0 + 45));
  return v0;
}

void _CollectionBox.__deallocating_deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[43] - 8) + 8))(v0 + *(*v0 + 45));

  swift_deallocClassInstance(v0);
}

char *_CollectionBox.init(_base:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _CollectionBox.init(_base:)(a1);
  (*(*(*(v3 + 344) - 8) + 8))(a1);
  return v4;
}

char *_IndexBox.__allocating_init(_base:)(uint64_t a1)
{
  v3 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  (*(*(*(v1 + 80) - 8) + 32))(&v3[*(*v3 + 96)], a1);
  return v3;
}

uint64_t _CollectionBox._unbox(_:file:line:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a3;
  v30 = a5;
  v29 = a4;
  v31 = a7;
  v10 = *(*v7 + 352);
  v11 = *(*v7 + 344);
  swift_getAssociatedTypeWitness(255, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v25 = *(v16 - 8);
  v26 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  ObjectType = swift_getObjectType(a1);
  v20 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v11, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20(v13, AssociatedConformanceWitness, ObjectType, a2);
  v22 = *(v13 - 8);
  if ((*(v22 + 48))(v18, 1, v13) == 1)
  {
    (*(v25 + 8))(v18, v26);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, v28, v29, v30, v27);
  }

  return (*(v22 + 32))(v31, v18, v13);
}

uint64_t _CollectionBox.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v6 = *v3;
  v44 = *(*v3 + 352);
  v7 = *(v6 + 344);
  swift_getAssociatedTypeWitness(255, v44, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = *(v9 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v41 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v42 = v22;
  v23 = *(v22 + 16);
  v40 = &v37 - v24;
  v23();
  ObjectType = swift_getObjectType(a1);
  v26 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    (*(v38 + 8))(v15, v39);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2D9uLL);
  }

  v28 = *(v16 + 32);
  v28(v19, v15, v9);
  v29 = v41;
  v28(v41, v19, v9);
  v30 = v44;
  v31 = v40;
  v32 = (v44[10])(v45, v29, v7, v44);
  v34 = v33;
  swift_getAssociatedTypeWitness(0, v30[1], v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v35 - 8) + 16))(v43, v34, v35);
  v32(v45, 0);
  (*(v16 + 8))(v29, v9);
  return (*(v42 + 8))(v31, v7);
}

char *_CollectionBox.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v87 = a3;
  v88 = a4;
  v89 = *v4;
  v7 = *(v89 + 44);
  v8 = *(v89 + 43);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v68 - v10;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, v12, v12, "lower upper ", 0);
  v81 = v13;
  v79 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v80 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v68 - v16;
  v70 = type metadata accessor for Optional(0, v12, v17, v18);
  v69 = *(v70 - 8);
  v19 = MEMORY[0x1EEE9AC00](v70);
  v86 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v68 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v68 - v27;
  v82 = v7;
  v28 = v7;
  v30 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v33 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v32);
  v77 = *(v33 - 8);
  v78 = v33;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v75 = &v68 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v76 = v36;
  v37 = *(v36 + 16);
  v73 = &v68 - v38;
  v89 = v8;
  v37();
  ObjectType = swift_getObjectType(a1);
  (*(a2 + 16))(v12, AssociatedConformanceWitness, ObjectType, a2);
  v40 = *(v30 + 48);
  if (v40(v23, 1, v12) == 1)
  {
    (*(v69 + 8))(v23, v70);
    goto LABEL_8;
  }

  v72 = v30;
  v41 = v23;
  v42 = *(v30 + 32);
  v42(v90, v41, v12);
  v43 = swift_getObjectType(v87);
  v44 = v86;
  (*(v88 + 16))(v12, AssociatedConformanceWitness, v43);
  if (v40(v44, 1, v12) == 1)
  {
    (*(v69 + 8))(v44, v70);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2E1uLL);
  }

  v45 = v26;
  v42(v26, v44, v12);
  if (((*(AssociatedConformanceWitness + 24))(v90, v26, v12, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v74;
  v42(v74, v90, v12);
  v47 = v81;
  v42(&v46[*(v81 + 48)], v45, v12);
  v48 = v79;
  v49 = *(v79 + 16);
  v50 = v42;
  v71 = v42;
  v51 = v80;
  v49(v80, v46, v47);
  v52 = *(v47 + 48);
  v53 = v75;
  v50(v75, v51, v12);
  v54 = *(v72 + 8);
  v54(&v51[v52], v12);
  (*(v48 + 32))(v51, v46, v47);
  v55 = *(v47 + 48);
  v56 = v78;
  v71(&v53[*(v78 + 36)], &v51[v55], v12);
  v54(v51, v12);
  v57 = v82;
  v58 = v83;
  v59 = v73;
  v60 = v89;
  (v82[11])(v53, v89, v82);
  (*(v77 + 8))(v53, v56);
  (*(v76 + 8))(v59, v60);
  v61 = v60;
  v62 = v85;
  v63 = swift_getAssociatedConformanceWitness(v57, v61, v85, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v65 = type metadata accessor for _CollectionBox(0, v62, v63, v64);
  swift_allocObject(v65, *(v65 + 48), *(v65 + 52));
  v66 = specialized _CollectionBox.init(_base:)(v58);
  (*(v84 + 8))(v58, v62);
  return v66;
}

char *_CollectionBox._index(after:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v43 = *(*v2 + 352);
  v6 = *(v5 + 344);
  swift_getAssociatedTypeWitness(255, v43, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](&v36 - v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v40 = &v36 - v21;
  v22 = *(v5 + 360);
  v42 = v23;
  v24 = *(v23 + 16);
  v39 = v20;
  v24(v20, &v2[v22], v6);
  ObjectType = swift_getObjectType(a1);
  v26 = *(a2 + 16);
  v41 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v43, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26(v8, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v16 + 48))(v14, 1, v8) == 1)
  {
    (*(v37 + 8))(v14, v38);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2E7uLL);
  }

  v28 = *(v16 + 32);
  v28(v19, v14, v8);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  (v43[23])(v19, v41);
  (*(v16 + 8))(v19, v8);
  (*(v42 + 8))(v29, v31);
  v33 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v32);
  v34 = swift_allocObject(v33, *(v33 + 48), *(v33 + 52));
  v28(&v34[*(*v34 + 96)], v30, v8);
  return v34;
}

uint64_t _CollectionBox._formIndex(after:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *(v8 + 352);
  swift_getAssociatedTypeWitness(255, v9, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v4, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for _IndexBox(0, v11, AssociatedConformanceWitness, v13);
  v15 = swift_dynamicCastClass(a1, v14);
  if (!v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2EFuLL);
  }

  v16 = v15;
  (*(v5 + 16))(v7, v1 + *(v3 + 360), v4);
  (*(v9 + 192))(v16 + *(*v16 + 96), v4, v9);
  return (*(v5 + 8))(v7, v4);
}

char *_CollectionBox._index(_:offsetBy:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = *v3;
  v44 = *(*v3 + 352);
  v7 = *(v6 + 344);
  swift_getAssociatedTypeWitness(255, v44, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = *(v9 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v37 - v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v40 = &v37 - v22;
  v23 = *(v6 + 360);
  v42 = v24;
  v25 = *(v24 + 16);
  v39 = v21;
  v25(v21, &v3[v23], v7);
  ObjectType = swift_getObjectType(a1);
  v27 = *(a2 + 16);
  v41 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v17 + 48))(v15, 1, v9) == 1)
  {
    (*(v37 + 8))(v15, v38);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2F6uLL);
  }

  v29 = *(v17 + 32);
  v29(v20, v15, v9);
  v30 = v39;
  v31 = v40;
  v32 = v41;
  (v44[17])(v20, v43, v41);
  (*(v17 + 8))(v20, v9);
  (*(v42 + 8))(v30, v32);
  v34 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v33);
  v35 = swift_allocObject(v34, *(v34 + 48), *(v34 + 52));
  v29(&v35[*(*v35 + 96)], v31, v9);
  return v35;
}

char *_CollectionBox._index(_:offsetBy:limitedBy:)(unint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v68 = a2;
  v7 = *v5;
  v70 = *(*v5 + 352);
  v8 = *(v7 + 344);
  swift_getAssociatedTypeWitness(0, v70, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v62 = &v55 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v55 - v17;
  v18 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v23 = type metadata accessor for Optional(0, v10, v21, v22);
  v66 = *(v23 - 8);
  v67 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v59 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v55 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v55 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v58 = &v55 - v32;
  v33 = *(v7 + 360);
  v60 = v20;
  v61 = v18;
  (*(v18 + 16))(v20, v5 + v33, v8);
  ObjectType = swift_getObjectType(a1);
  v35 = v68;
  v36 = v68[2];
  v57 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v70, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v36(v10, AssociatedConformanceWitness, ObjectType, v35);
  v68 = v11;
  v38 = v11[6];
  if (v38(v31, 1, v10) == 1)
  {
    (*(v66 + 8))(v31, v67);
    goto LABEL_9;
  }

  v39 = v68[4];
  v39(v69, v31, v10);
  v40 = swift_getObjectType(v64);
  v41 = *(v65 + 2);
  v55 = AssociatedConformanceWitness;
  v41(v10, AssociatedConformanceWitness, v40);
  v65 = v38;
  if (v38(v28, 1, v10) == 1)
  {
    (*(v66 + 8))(v28, v67);
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x2FFuLL);
  }

  v42 = v62;
  v64 = v39;
  v39(v62, v28, v10);
  v43 = v69;
  v45 = v57;
  v44 = v58;
  v46 = v60;
  (v70[18])(v69, v63, v42, v57);
  v47 = v68[1];
  v47(v42, v10);
  v47(v43, v10);
  (*(v61 + 8))(v46, v45);
  v48 = v59;
  (*(v66 + 32))(v59, v44, v67);
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

uint64_t _CollectionBox._formIndex(_:offsetBy:)(uint64_t *a1, uint64_t a2)
{
  v22 = *v2;
  v23 = a2;
  v4 = v22[44];
  v5 = v22[43];
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
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x30AuLL);
  }

  v20 = v19;
  (*(v12 + 16))(v14, &v2[v22[45]], v5);
  (*(v8 + 32))(v11, v20 + *(*v20 + 96), v7);
  (*(v4 + 136))(v11, v23, v5, v4);
  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v14, v5);
}

BOOL _CollectionBox._formIndex(_:offsetBy:limitedBy:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = *v4;
  v7 = *v4;
  v44 = a2;
  v45 = v7;
  v8 = *(v6 + 352);
  v9 = *(v6 + 344);
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
    v39 = 788;
    goto LABEL_9;
  }

  (*(v49 + 16))(v24, &v4[*(v45 + 360)], v9);
  ObjectType = swift_getObjectType(v46);
  (*(v47 + 16))(v11, AssociatedConformanceWitness, ObjectType);
  v47 = v20[6];
  if ((v47)(v19, 1, v11) == 1)
  {
    (*(v40 + 8))(v19, v41);
    v39 = 786;
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

uint64_t _CollectionBox._distance(from:to:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v7 = *v4;
  v50 = *(*v4 + 352);
  v8 = *(v7 + 344);
  swift_getAssociatedTypeWitness(255, v50, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v13 = type metadata accessor for Optional(0, v9, v11, v12);
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = *(v10 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v44 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v49 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v42 = &v39 - v24;
  v43 = v25;
  (*(v25 + 16))();
  ObjectType = swift_getObjectType(a1);
  v27 = *(a2 + 16);
  v45 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v50, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27(v10, AssociatedConformanceWitness, ObjectType, a2);
  v29 = v19[6];
  if (v29(v18, 1, v10) == 1 || (v30 = v19[4], v30(v49, v18, v10), v31 = swift_getObjectType(v47), v18 = v46, (*(v48 + 16))(v10, AssociatedConformanceWitness, v31), v29(v18, 1, v10) == 1))
  {
    (*(v40 + 8))(v18, v41);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x31CuLL);
  }

  v32 = v44;
  v30(v44, v18, v10);
  v33 = v49;
  v34 = v42;
  v35 = v45;
  v36 = (v50[19])(v49, v32, v45);
  v37 = v19[1];
  v37(v32, v10);
  v37(v33, v10);
  (*(v43 + 8))(v34, v35);
  return v36;
}

uint64_t _CollectionBox._count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 360), v3);
  v7 = (*(*(v2 + 352) + 112))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

char *_BidirectionalCollectionBox._makeIterator()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - v5;
  v7 = *(*(*(v2 + 376) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  (*(v4 + 16))(v6, v1 + *(v2 + 384), v3);
  (*(v7 + 32))(v3, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v9, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v15 = type metadata accessor for _IteratorBox(0, v9, AssociatedConformanceWitness, v14);
  v16 = swift_allocObject(v15, *(v15 + 48), *(v15 + 52));
  (*(v10 + 32))(&v16[*(*v16 + 120)], v12, v9);
  return v16;
}

uint64_t _BidirectionalCollectionBox._underestimatedCount.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 384), v3);
  v7 = (*(*(*(*(v2 + 376) + 8) + 8) + 40))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

__objc2_class **_BidirectionalCollectionBox._map<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t *a3)
{
  v61 = a1;
  v62 = a2;
  v5 = *v3;
  v6 = *(*(*v3 + 376) + 8);
  v7 = *(*v3 + 368);
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v54 = v8;
  v60 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v10;
  v11 = a3;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v56 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - v21;
  (*(v20 + 16))(&v47 - v21, v3 + *(v5 + 384), v7);
  v23 = *(v6 + 112);
  v65 = v6;
  v24 = v23(v7, v6);
  if (v24)
  {
    v27 = v24;
    v67 = &_swiftEmptyArrayStorage;
    v58 = type metadata accessor for ContiguousArray(0, v11, v25, v26);
    ContiguousArray.reserveCapacity(_:)(v27);
    v28 = *(v65 + 64);
    v50 = v19;
    v51 = v22;
    v28(v7);
    if (v27 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v48 = v20;
    v49 = v14;
    v29 = *(v65 + 80);
    v30 = v53;
    v31 = v54;
    v63 = v7;
    v32 = (v60 + 16);
    v33 = (v60 + 8);
    v59 = v29;
    v60 = v65 + 80;
    v57 = v65 + 192;
    v35 = v50;
    v34 = v51;
    v36 = v55;
    do
    {
      v37 = v59(v66, v35, v63, v65);
      (*v32)(v30);
      v37(v66, 0);
      v38 = v64;
      v61(v30);
      if (v38)
      {
        (*v33)(v30, v31);
        (*(v56 + 8))(v35, v49);
        v67;
        return (*(v48 + 8))(v34, v63);
      }

      v64 = 0;
      (*v33)(v30, v31);
      ContiguousArray.append(_:)(v36, v58);
      (*(v65 + 192))(v35, v63);
      --v27;
    }

    while (v27);
    v39 = v65;
    v40 = v52;
    v41 = v63;
    (*(v65 + 72))(v63, v65);
    v42 = v49;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v39, v41, v49, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v44 = (*(*(AssociatedConformanceWitness + 8) + 8))(v35, v40, v42);
    v45 = *(v56 + 8);
    v45(v40, v42);
    if ((v44 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v45(v35, v42);
    (*(v48 + 8))(v34, v41);
    return v67;
  }

  else
  {
    (*(v20 + 8))(v22, v7);
    _swift_isClassOrObjCExistentialType(v11, v11);
    return &_swiftEmptyArrayStorage;
  }
}

__objc2_class **_BidirectionalCollectionBox._filter(_:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 368);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 384), v6);
  return Sequence.filter(_:)(a1, a2, v6, *(*(*(v5 + 376) + 8) + 8));
}

uint64_t _BidirectionalCollectionBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 368);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 384), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(*(*(v5 + 376) + 8) + 8));
  return (*(v7 + 8))(v9, v6);
}

uint64_t _BidirectionalCollectionBox.__customContainsEquatableElement(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v1 + *(v3 + 384), v4);
  v8 = (*(*(*(*(v3 + 376) + 8) + 8) + 48))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t _BidirectionalCollectionBox.__copyToContiguousArray()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - v5, v1 + *(v2 + 384), v3);
  return (*(*(*(*(v2 + 376) + 8) + 8) + 56))(v3);
}

char *_BidirectionalCollectionBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v8 = *(*(*(v3 + 376) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  (*(v5 + 16))(v7, v2 + *(v3 + 384), v4);
  (*(v8 + 64))(v13, v19, v20, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v16 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v15);
  v17 = swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  (*(v11 + 32))(&v17[*(*v17 + 120)], v13, v10);
  return v17;
}

char *_BidirectionalCollectionBox.__allocating_init(_base:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  v4 = specialized _BidirectionalCollectionBox.init(_base:)(a1);
  (*(*(*(v2 + 368) - 8) + 8))(a1);
  return v4;
}

char *_BidirectionalCollectionBox._drop(while:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, char *, int **))
{
  v24 = a3;
  v22 = a2;
  v21 = a1;
  v4 = *v3;
  v5 = *(*v3 + 368);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v9 = *(v4 + 376);
  v10 = *(v9 + 1);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12 = v11;
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  (*(v6 + 16))(v8, v3 + *(v4 + 384), v5);
  v15 = v23;
  v24(v21, v22, v5, v10);
  if (!v15)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v5, v12, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
    v18 = type metadata accessor for _BidirectionalCollectionBox(0, v12, AssociatedConformanceWitness, v17);
    swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
    v5 = specialized _BidirectionalCollectionBox.init(_base:)(v14);
    (*(v20 + 8))(v14, v12);
  }

  return v5;
}

char *_BidirectionalCollectionBox._dropFirst(_:)(uint64_t a1, void (*a2)(uint64_t, const char *, int **))
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v8 = *(v3 + 376);
  v9 = *(v8 + 1);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 384), v4);
  v21(v20, v4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v11, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
  v17 = type metadata accessor for _BidirectionalCollectionBox(0, v11, AssociatedConformanceWitness, v16);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  v18 = specialized _BidirectionalCollectionBox.init(_base:)(v14);
  (*(v12 + 8))(v14, v11);
  return v18;
}

char *_BidirectionalCollectionBox._dropLast(_:)(uint64_t a1, void (*a2)(uint64_t, const char *, int ***))
{
  v21 = a2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v9 = *(v4 + 376);
  swift_getAssociatedTypeWitness(0, v9[1], v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  (*(v6 + 16))(v8, v2 + *(v4 + 384), v5);
  v21(a1, v5, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v5, v11, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
  v17 = type metadata accessor for _BidirectionalCollectionBox(0, v11, AssociatedConformanceWitness, v16);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  v18 = specialized _BidirectionalCollectionBox.init(_base:)(v14);
  (*(v12 + 8))(v14, v11);
  return v18;
}

id *_BidirectionalCollectionBox.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[46] - 8) + 8))(v0 + *(*v0 + 48));
  return v0;
}

void _BidirectionalCollectionBox.__deallocating_deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[46] - 8) + 8))(v0 + *(*v0 + 48));

  swift_deallocClassInstance(v0);
}

char *_BidirectionalCollectionBox.init(_base:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _BidirectionalCollectionBox.init(_base:)(a1);
  (*(*(*(v3 + 368) - 8) + 8))(a1);
  return v4;
}

uint64_t _BidirectionalCollectionBox._unbox(_:file:line:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a3;
  v30 = a5;
  v29 = a4;
  v31 = a7;
  v10 = *(*(*v7 + 376) + 8);
  v11 = *(*v7 + 368);
  swift_getAssociatedTypeWitness(255, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v25 = *(v16 - 8);
  v26 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  ObjectType = swift_getObjectType(a1);
  v20 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v11, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20(v13, AssociatedConformanceWitness, ObjectType, a2);
  v22 = *(v13 - 8);
  if ((*(v22 + 48))(v18, 1, v13) == 1)
  {
    (*(v25 + 8))(v18, v26);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, v28, v29, v30, v27);
  }

  return (*(v22 + 32))(v31, v18, v13);
}

uint64_t _BidirectionalCollectionBox.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v6 = *v3;
  v44 = *(*(*v3 + 376) + 8);
  v7 = *(v6 + 368);
  swift_getAssociatedTypeWitness(255, v44, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = *(v9 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v41 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v42 = v22;
  v23 = *(v22 + 16);
  v40 = &v37 - v24;
  v23();
  ObjectType = swift_getObjectType(a1);
  v26 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    (*(v38 + 8))(v15, v39);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3A0uLL);
  }

  v28 = *(v16 + 32);
  v28(v19, v15, v9);
  v29 = v41;
  v28(v41, v19, v9);
  v30 = v44;
  v31 = v40;
  v32 = (v44[10])(v45, v29, v7, v44);
  v34 = v33;
  swift_getAssociatedTypeWitness(0, v30[1], v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v35 - 8) + 16))(v43, v34, v35);
  v32(v45, 0);
  (*(v16 + 8))(v29, v9);
  return (*(v42 + 8))(v31, v7);
}

char *_BidirectionalCollectionBox.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v76 = *v4;
  v77 = a1;
  v69 = *(v76 + 47);
  v6 = *(v69 + 1);
  v7 = *(v76 + 46);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v58 - v9;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  swift_getTupleTypeMetadata2(0, v11, v11, "lower upper ", 0);
  v67 = v12;
  v65 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v58 - v15;
  v18 = type metadata accessor for Optional(0, v11, v16, v17);
  v58 = *(v18 - 8);
  v59 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v58 - v22;
  v24 = *(v11 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v78 = &v58 - v28;
  v68 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v31 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v30);
  v63 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v60 = &v58 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v61 = &v58 - v34;
  v62 = v35;
  v36 = *(v35 + 16);
  v76 = v7;
  v36();
  ObjectType = swift_getObjectType(v77);
  (*(a2 + 16))(v11, AssociatedConformanceWitness, ObjectType, a2);
  v38 = *(v24 + 48);
  if (v38(v23, 1, v11) == 1 || (v77 = v24, v39 = *(v24 + 32), v39(v78, v23, v11), v40 = swift_getObjectType(v74), v23 = v73, (*(v75 + 16))(v11, AssociatedConformanceWitness, v40), v38(v23, 1, v11) == 1))
  {
    (*(v58 + 8))(v23, v59);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3A9uLL);
  }

  v41 = v27;
  v39(v27, v23, v11);
  if (((*(AssociatedConformanceWitness + 24))(v78, v27, v11, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v42 = v64;
  v39(v64, v78, v11);
  v43 = v67;
  v39(&v42[*(v67 + 48)], v41, v11);
  v45 = v65;
  v44 = v66;
  (*(v65 + 16))(v66, v42, v43);
  v75 = *(v43 + 48);
  v46 = v60;
  v39(v60, v44, v11);
  v78 = v31;
  v47 = *(v77 + 8);
  v47(&v44[v75], v11);
  (*(v45 + 32))(v44, v42, v43);
  v48 = v78;
  v39(&v46[*(v78 + 9)], &v44[*(v43 + 48)], v11);
  v47(v44, v11);
  v49 = v70;
  v50 = v61;
  v51 = v76;
  (v68[11])(v46, v76);
  (*(v63 + 8))(v46, v48);
  (*(v62 + 8))(v50, v51);
  v52 = v72;
  v53 = swift_getAssociatedConformanceWitness(v69, v51, v72, &protocol requirements base descriptor for BidirectionalCollection, associated conformance descriptor for BidirectionalCollection.Collection.SubSequence: BidirectionalCollection);
  v55 = type metadata accessor for _BidirectionalCollectionBox(0, v52, v53, v54);
  swift_allocObject(v55, *(v55 + 48), *(v55 + 52));
  v56 = specialized _BidirectionalCollectionBox.init(_base:)(v49);
  (*(v71 + 8))(v49, v52);
  return v56;
}

char *_BidirectionalCollectionBox._index(after:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v43 = *(*(*v2 + 376) + 8);
  v6 = *(v5 + 368);
  swift_getAssociatedTypeWitness(255, v43, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](&v36 - v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v40 = &v36 - v21;
  v22 = *(v5 + 384);
  v41 = v23;
  v24 = *(v23 + 16);
  v39 = v20;
  v24(v20, &v2[v22], v6);
  ObjectType = swift_getObjectType(a1);
  v26 = *(a2 + 16);
  v42 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v43, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26(v8, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v16 + 48))(v14, 1, v8) == 1)
  {
    (*(v37 + 8))(v14, v38);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3AFuLL);
  }

  v28 = *(v16 + 32);
  v28(v19, v14, v8);
  v29 = v42;
  v30 = v39;
  v31 = v40;
  (v43[23])(v19, v42);
  (*(v16 + 8))(v19, v8);
  (*(v41 + 8))(v30, v29);
  v33 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v32);
  v34 = swift_allocObject(v33, *(v33 + 48), *(v33 + 52));
  v28(&v34[*(*v34 + 96)], v31, v8);
  return v34;
}

uint64_t _BidirectionalCollectionBox._formIndex(after:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *(*(v8 + 376) + 8);
  swift_getAssociatedTypeWitness(255, v9, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v4, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for _IndexBox(0, v11, AssociatedConformanceWitness, v13);
  v15 = swift_dynamicCastClass(a1, v14);
  if (!v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3B7uLL);
  }

  v16 = v15;
  (*(v5 + 16))(v7, v1 + *(v3 + 384), v4);
  (*(v9 + 192))(v16 + *(*v16 + 96), v4, v9);
  return (*(v5 + 8))(v7, v4);
}

char *_BidirectionalCollectionBox._index(_:offsetBy:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v6 = *v3;
  v43 = *(*v3 + 376);
  v45 = *(v43 + 8);
  v7 = *(v6 + 368);
  swift_getAssociatedTypeWitness(255, v45, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = *(v9 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v38 - v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v41 = &v38 - v22;
  v23 = *(v6 + 384);
  v42 = v24;
  v25 = *(v24 + 16);
  v40 = v21;
  v25(v21, &v3[v23], v7);
  ObjectType = swift_getObjectType(a1);
  v27 = *(a2 + 16);
  v28 = v45;
  v45 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v17 + 48))(v15, 1, v9) == 1)
  {
    (*(v38 + 8))(v15, v39);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3BEuLL);
  }

  v30 = *(v17 + 32);
  v30(v20, v15, v9);
  v31 = v40;
  v32 = v41;
  v33 = v45;
  (*(v43 + 48))(v20, v44, v45);
  (*(v17 + 8))(v20, v9);
  (*(v42 + 8))(v31, v33);
  v35 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v34);
  v36 = swift_allocObject(v35, *(v35 + 48), *(v35 + 52));
  v30(&v36[*(*v36 + 96)], v32, v9);
  return v36;
}

char *_BidirectionalCollectionBox._index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), unsigned int (*a5)(char *, uint64_t, uint64_t))
{
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v69 = a1;
  v7 = *v5;
  v62 = *(*v5 + 376);
  v66 = *(v62 + 8);
  v8 = *(v7 + 368);
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
  v33 = *(v7 + 384);
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
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3C7uLL);
  }

  v42 = v61;
  v64 = v39;
  v39(v61, v28, v10);
  v43 = v57;
  v44 = v70;
  v45 = v59;
  v46 = v66;
  (*(v62 + 56))(v70, v63, v42, v66);
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

uint64_t _BidirectionalCollectionBox._formIndex(_:offsetBy:)(uint64_t *a1, uint64_t a2)
{
  v22 = *v2;
  v23 = a2;
  v4 = *(v22[47] + 8);
  v5 = v22[46];
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
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3D2uLL);
  }

  v20 = v19;
  (*(v12 + 16))(v14, &v2[v22[48]], v5);
  (*(v8 + 32))(v11, v20 + *(*v20 + 96), v7);
  (*(v4 + 136))(v11, v23, v5, v4);
  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v14, v5);
}

BOOL _BidirectionalCollectionBox._formIndex(_:offsetBy:limitedBy:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = *v4;
  v7 = *v4;
  v44 = a2;
  v45 = v7;
  v8 = *(*(v6 + 376) + 8);
  v9 = *(v6 + 368);
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
    v39 = 988;
    goto LABEL_9;
  }

  (*(v49 + 16))(v24, &v4[*(v45 + 384)], v9);
  ObjectType = swift_getObjectType(v46);
  (*(v47 + 16))(v11, AssociatedConformanceWitness, ObjectType);
  v47 = v20[6];
  if ((v47)(v19, 1, v11) == 1)
  {
    (*(v40 + 8))(v19, v41);
    v39 = 986;
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

uint64_t _BidirectionalCollectionBox._distance(from:to:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v7 = *v4;
  v46 = *(*v4 + 376);
  v8 = *(v46 + 8);
  v9 = *(v7 + 368);
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
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3E4uLL);
  }

  v33 = v45;
  v31(v45, v19, v11);
  v34 = v47;
  v35 = v51;
  v36 = v43;
  v37 = (*(v46 + 64))(v51, v33, v47);
  v38 = v20[1];
  v38(v33, v11);
  v38(v35, v11);
  (*(v44 + 8))(v36, v34);
  return v37;
}

uint64_t _BidirectionalCollectionBox._count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 384), v3);
  v7 = (*(*(*(v2 + 376) + 8) + 112))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

char *_BidirectionalCollectionBox._index(before:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*(*v2 + 376) + 8);
  v44 = *(*v2 + 376);
  v45 = v6;
  v7 = *(v5 + 368);
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
  v23 = *(v5 + 384);
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
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3EEuLL);
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

uint64_t _BidirectionalCollectionBox._formIndex(before:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v9 = *(v8 + 376);
  v10 = *(v9 + 8);
  swift_getAssociatedTypeWitness(255, v10, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v4, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = type metadata accessor for _IndexBox(0, v12, AssociatedConformanceWitness, v14);
  v16 = swift_dynamicCastClass(a1, v15);
  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x3F6uLL);
  }

  v17 = v16;
  (*(v5 + 16))(v7, v1 + *(v3 + 384), v4);
  (*(v9 + 40))(v17 + *(*v17 + 96), v4, v9);
  return (*(v5 + 8))(v7, v4);
}

char *_RandomAccessCollectionBox._makeIterator()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - v5;
  v7 = *(*(*(*(v2 + 384) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  (*(v4 + 16))(v6, v1 + *(v2 + 392), v3);
  (*(v7 + 32))(v3, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v9, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v15 = type metadata accessor for _IteratorBox(0, v9, AssociatedConformanceWitness, v14);
  v16 = swift_allocObject(v15, *(v15 + 48), *(v15 + 52));
  (*(v10 + 32))(&v16[*(*v16 + 120)], v12, v9);
  return v16;
}

uint64_t _RandomAccessCollectionBox._underestimatedCount.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 392), v3);
  v7 = (*(*(*(*(*(v2 + 384) + 8) + 8) + 8) + 40))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

__objc2_class **_RandomAccessCollectionBox._map<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t *a3)
{
  v61 = a1;
  v62 = a2;
  v5 = *v3;
  v6 = *(*(*(*v3 + 384) + 8) + 8);
  v7 = *(*v3 + 376);
  swift_getAssociatedTypeWitness(0, *(v6 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v53 = v8;
  v60 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v47 - v10;
  v11 = a3;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v56 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - v21;
  (*(v20 + 16))(&v47 - v21, v3 + *(v5 + 392), v7);
  v23 = *(v6 + 112);
  v65 = v6;
  v24 = v23(v7, v6);
  if (v24)
  {
    v27 = v24;
    v67 = &_swiftEmptyArrayStorage;
    v58 = type metadata accessor for ContiguousArray(0, v11, v25, v26);
    ContiguousArray.reserveCapacity(_:)(v27);
    v28 = *(v65 + 64);
    v50 = v19;
    v51 = v22;
    v28(v7);
    if (v27 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v48 = v20;
    v49 = v14;
    v29 = *(v65 + 80);
    v31 = v53;
    v30 = v54;
    v63 = v7;
    v32 = (v60 + 16);
    v33 = (v60 + 8);
    v59 = v29;
    v60 = v65 + 80;
    v57 = v65 + 192;
    v35 = v50;
    v34 = v51;
    v36 = v55;
    do
    {
      v37 = v59(v66, v35, v63, v65);
      (*v32)(v30);
      v37(v66, 0);
      v38 = v64;
      v61(v30);
      if (v38)
      {
        (*v33)(v30, v31);
        (*(v56 + 8))(v35, v49);
        v67;
        return (*(v48 + 8))(v34, v63);
      }

      v64 = 0;
      (*v33)(v30, v31);
      ContiguousArray.append(_:)(v36, v58);
      (*(v65 + 192))(v35, v63);
      --v27;
    }

    while (v27);
    v39 = v65;
    v40 = v52;
    v41 = v63;
    (*(v65 + 72))(v63, v65);
    v42 = v49;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v39, v41, v49, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v44 = (*(*(AssociatedConformanceWitness + 8) + 8))(v35, v40, v42);
    v45 = *(v56 + 8);
    v45(v40, v42);
    if ((v44 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v45(v35, v42);
    (*(v48 + 8))(v34, v41);
    return v67;
  }

  else
  {
    (*(v20 + 8))(v22, v7);
    _swift_isClassOrObjCExistentialType(v11, v11);
    return &_swiftEmptyArrayStorage;
  }
}

__objc2_class **_RandomAccessCollectionBox._filter(_:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 376);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - v8, v2 + *(v5 + 392), v6);
  return Sequence.filter(_:)(a1, a2, v6, *(*(*(*(v5 + 384) + 8) + 8) + 8));
}

uint64_t _RandomAccessCollectionBox._forEach(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 376);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v2 + *(v5 + 392), v6);
  Sequence.forEach(_:)(a1, a2, v6, *(*(*(*(v5 + 384) + 8) + 8) + 8));
  return (*(v7 + 8))(v9, v6);
}

uint64_t _RandomAccessCollectionBox.__customContainsEquatableElement(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v1 + *(v3 + 392), v4);
  v8 = (*(*(*(*(*(v3 + 384) + 8) + 8) + 8) + 48))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t _RandomAccessCollectionBox.__copyToContiguousArray()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - v5, v1 + *(v2 + 392), v3);
  return (*(*(*(*(*(v2 + 384) + 8) + 8) + 8) + 56))(v3);
}

char *_RandomAccessCollectionBox.__copyContents(initializing:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v8 = *(*(*(*(v3 + 384) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  (*(v5 + 16))(v7, v2 + *(v3 + 392), v4);
  (*(v8 + 64))(v13, v19, v20, v4, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v16 = type metadata accessor for _IteratorBox(0, v10, AssociatedConformanceWitness, v15);
  v17 = swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  (*(v11 + 32))(&v17[*(*v17 + 120)], v13, v10);
  return v17;
}

char *_RandomAccessCollectionBox.__allocating_init(_base:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject(v1, *(v1 + 48), *(v1 + 52));
  v4 = specialized _RandomAccessCollectionBox.init(_base:)(a1);
  (*(*(*(v2 + 376) - 8) + 8))(a1);
  return v4;
}

char *_RandomAccessCollectionBox._drop(while:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, char *, int **))
{
  v24 = a3;
  v22 = a2;
  v21 = a1;
  v4 = *v3;
  v5 = *(*v3 + 376);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v9 = *(v4 + 384);
  v10 = *(*(v9 + 1) + 8);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12 = v11;
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  (*(v6 + 16))(v8, v3 + *(v4 + 392), v5);
  v15 = v23;
  v24(v21, v22, v5, v10);
  if (!v15)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v5, v12, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
    v18 = type metadata accessor for _RandomAccessCollectionBox(0, v12, AssociatedConformanceWitness, v17);
    swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
    v5 = specialized _RandomAccessCollectionBox.init(_base:)(v14);
    (*(v20 + 8))(v14, v12);
  }

  return v5;
}

char *_RandomAccessCollectionBox._dropFirst(_:)(uint64_t a1, void (*a2)(uint64_t, const char *, int **))
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v8 = *(v3 + 384);
  v9 = *(*(v8 + 1) + 8);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 392), v4);
  v21(v20, v4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v11, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
  v17 = type metadata accessor for _RandomAccessCollectionBox(0, v11, AssociatedConformanceWitness, v16);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  v18 = specialized _RandomAccessCollectionBox.init(_base:)(v14);
  (*(v12 + 8))(v14, v11);
  return v18;
}

char *_RandomAccessCollectionBox._dropLast(_:)(uint64_t a1, void (*a2)(uint64_t, const char *, uint64_t))
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v8 = *(v3 + 384);
  v9 = *(v8 + 1);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2 + *(v3 + 392), v4);
  v21(v20, v4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v11, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
  v17 = type metadata accessor for _RandomAccessCollectionBox(0, v11, AssociatedConformanceWitness, v16);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  v18 = specialized _RandomAccessCollectionBox.init(_base:)(v14);
  (*(v12 + 8))(v14, v11);
  return v18;
}

id *_RandomAccessCollectionBox.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[47] - 8) + 8))(v0 + *(*v0 + 49));
  return v0;
}

void _RandomAccessCollectionBox.__deallocating_deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[4]);
  (*(*(v1[47] - 8) + 8))(v0 + *(*v0 + 49));

  swift_deallocClassInstance(v0);
}

char *_RandomAccessCollectionBox.init(_base:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _RandomAccessCollectionBox.init(_base:)(a1);
  (*(*(*(v3 + 376) - 8) + 8))(a1);
  return v4;
}

uint64_t _RandomAccessCollectionBox._unbox(_:file:line:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a3;
  v30 = a5;
  v29 = a4;
  v31 = a7;
  v10 = *(*(*(*v7 + 384) + 8) + 8);
  v11 = *(*v7 + 376);
  swift_getAssociatedTypeWitness(255, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v16 = type metadata accessor for Optional(0, v12, v14, v15);
  v25 = *(v16 - 8);
  v26 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  ObjectType = swift_getObjectType(a1);
  v20 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v11, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20(v13, AssociatedConformanceWitness, ObjectType, a2);
  v22 = *(v13 - 8);
  if ((*(v22 + 48))(v18, 1, v13) == 1)
  {
    (*(v25 + 8))(v18, v26);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, v28, v29, v30, v27);
  }

  return (*(v22 + 32))(v31, v18, v13);
}

uint64_t _RandomAccessCollectionBox.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v6 = *v3;
  v44 = *(*(*(*v3 + 384) + 8) + 8);
  v7 = *(v6 + 376);
  swift_getAssociatedTypeWitness(255, v44, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = *(v9 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v41 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v42 = v22;
  v23 = *(v22 + 16);
  v40 = &v37 - v24;
  v23();
  ObjectType = swift_getObjectType(a1);
  v26 = *(a2 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    (*(v38 + 8))(v15, v39);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x475uLL);
  }

  v28 = *(v16 + 32);
  v28(v19, v15, v9);
  v29 = v41;
  v28(v41, v19, v9);
  v30 = v44;
  v31 = v40;
  v32 = (v44[10])(v45, v29, v7, v44);
  v34 = v33;
  swift_getAssociatedTypeWitness(0, v30[1], v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v35 - 8) + 16))(v43, v34, v35);
  v32(v45, 0);
  (*(v16 + 8))(v29, v9);
  return (*(v42 + 8))(v31, v7);
}

char *_RandomAccessCollectionBox.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v77 = a3;
  v78 = a4;
  v6 = *v4;
  v79 = a1;
  v80 = v6;
  v73 = *(v6 + 384);
  v7 = *(*(v73 + 1) + 8);
  v8 = *(v6 + 376);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v60 - v10;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, v12, v12, "lower upper ", 0);
  v70 = v13;
  v68 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v69 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v60 - v16;
  v19 = type metadata accessor for Optional(0, v12, v17, v18);
  v60 = *(v19 - 8);
  v61 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v76 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v25 = *(v12 - 8);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v60 - v29;
  v71 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v33 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v32);
  v66 = *(v33 - 8);
  v67 = v33;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v62 = &v60 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v65 = v36;
  v37 = *(v36 + 16);
  v63 = &v60 - v38;
  v80 = v8;
  v37();
  ObjectType = swift_getObjectType(v79);
  (*(a2 + 16))(v12, AssociatedConformanceWitness, ObjectType, a2);
  v40 = *(v25 + 48);
  if (v40(v24, 1, v12) == 1 || (v79 = v25, v41 = *(v25 + 32), v41(v30, v24, v12), v42 = swift_getObjectType(v77), v24 = v76, (*(v78 + 16))(v12, AssociatedConformanceWitness, v42), v40(v24, 1, v12) == 1))
  {
    (*(v60 + 8))(v24, v61);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x47DuLL);
  }

  v43 = v28;
  v41(v28, v24, v12);
  if (((*(AssociatedConformanceWitness + 24))(v30, v28, v12, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v64;
  v41(v64, v30, v12);
  v45 = v70;
  v41(&v44[*(v70 + 48)], v43, v12);
  v47 = v68;
  v46 = v69;
  (*(v68 + 16))(v69, v44, v45);
  v78 = *(v45 + 48);
  v48 = v62;
  v41(v62, v46, v12);
  v49 = *(v79 + 8);
  v49(&v46[v78], v12);
  (*(v47 + 32))(v46, v44, v45);
  v50 = v67;
  v41(&v48[*(v67 + 36)], &v46[*(v45 + 48)], v12);
  v49(v46, v12);
  v51 = v72;
  v52 = v63;
  v53 = v80;
  (v71[11])(v48, v80);
  (*(v66 + 8))(v48, v50);
  (*(v65 + 8))(v52, v53);
  v54 = v75;
  v55 = swift_getAssociatedConformanceWitness(v73, v53, v75, &protocol requirements base descriptor for RandomAccessCollection, associated conformance descriptor for RandomAccessCollection.Collection.SubSequence: RandomAccessCollection);
  v57 = type metadata accessor for _RandomAccessCollectionBox(0, v54, v55, v56);
  swift_allocObject(v57, *(v57 + 48), *(v57 + 52));
  v58 = specialized _RandomAccessCollectionBox.init(_base:)(v51);
  (*(v74 + 8))(v51, v54);
  return v58;
}

char *_RandomAccessCollectionBox._index(after:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v43 = *(*(*(*v2 + 384) + 8) + 8);
  v6 = *(v5 + 376);
  swift_getAssociatedTypeWitness(255, v43, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](&v36 - v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v40 = &v36 - v21;
  v22 = *(v5 + 392);
  v41 = v23;
  v24 = *(v23 + 16);
  v39 = v20;
  v24(v20, &v2[v22], v6);
  ObjectType = swift_getObjectType(a1);
  v26 = *(a2 + 16);
  v42 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v43, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26(v8, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v16 + 48))(v14, 1, v8) == 1)
  {
    (*(v37 + 8))(v14, v38);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x483uLL);
  }

  v28 = *(v16 + 32);
  v28(v19, v14, v8);
  v29 = v42;
  v30 = v39;
  v31 = v40;
  (v43[23])(v19, v42);
  (*(v16 + 8))(v19, v8);
  (*(v41 + 8))(v30, v29);
  v33 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v32);
  v34 = swift_allocObject(v33, *(v33 + 48), *(v33 + 52));
  v28(&v34[*(*v34 + 96)], v31, v8);
  return v34;
}

uint64_t _RandomAccessCollectionBox._formIndex(after:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *(*(*(v8 + 384) + 8) + 8);
  swift_getAssociatedTypeWitness(255, v9, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v4, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for _IndexBox(0, v11, AssociatedConformanceWitness, v13);
  v15 = swift_dynamicCastClass(a1, v14);
  if (!v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x48BuLL);
  }

  v16 = v15;
  (*(v5 + 16))(v7, v1 + *(v3 + 392), v4);
  (*(v9 + 192))(v16 + *(*v16 + 96), v4, v9);
  return (*(v5 + 8))(v7, v4);
}

char *_RandomAccessCollectionBox._index(_:offsetBy:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v6 = *v3;
  v43 = *(*v3 + 384);
  v45 = *(*(v43 + 8) + 8);
  v7 = *(v6 + 376);
  swift_getAssociatedTypeWitness(255, v45, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = *(v9 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v38 - v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v41 = &v38 - v22;
  v23 = *(v6 + 392);
  v42 = v24;
  v25 = *(v24 + 16);
  v40 = v21;
  v25(v21, &v3[v23], v7);
  ObjectType = swift_getObjectType(a1);
  v27 = *(a2 + 16);
  v28 = v45;
  v45 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, v7, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27(v9, AssociatedConformanceWitness, ObjectType, a2);
  if ((*(v17 + 48))(v15, 1, v9) == 1)
  {
    (*(v38 + 8))(v15, v39);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x800000018066D1C0, "Swift/ExistentialCollection.swift", 0x21uLL, 2, 0x492uLL);
  }

  v30 = *(v17 + 32);
  v30(v20, v15, v9);
  v31 = v40;
  v32 = v41;
  v33 = v45;
  (*(v43 + 32))(v20, v44, v45);
  (*(v17 + 8))(v20, v9);
  (*(v42 + 8))(v31, v33);
  v35 = type metadata accessor for _IndexBox(0, v9, AssociatedConformanceWitness, v34);
  v36 = swift_allocObject(v35, *(v35 + 48), *(v35 + 52));
  v30(&v36[*(*v36 + 96)], v32, v9);
  return v36;
}