uint64_t DepthFirstNodeIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v112 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = type metadata accessor for Graph.Node();
  v117 = type metadata accessor for Optional();
  v7 = *(v117 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v117);
  v122 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v131 = &v112 - v11;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v123 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = &v112 - v17;
  MEMORY[0x28223BE20](v18);
  v129 = &v112 - v19;
  v130 = v20;
  MEMORY[0x28223BE20](v21);
  v147 = v4;
  v148 = (&v112 - v22);
  Node = type metadata accessor for DepthFirstNodeIterator.Context();
  v24 = type metadata accessor for Array();
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v120 = Node;
  v121 = 0;
  v139 = v5;
  v140 = (v12 + 48);
  v137 = v12 + 16;
  v138 = v12 + 32;
  v132 = v12;
  v25 = (v12 + 8);
  v26 = v24;
  v127 = v25;
  v128 = v6;
  v116 = (v7 + 8);
  v113 = v24;
  v114 = Node - 8;
  v149 = v3;
LABEL_2:
  while (2)
  {
    v27 = v26;
    WitnessTable = swift_getWitnessTable();
    v29 = swift_getWitnessTable();
    MEMORY[0x266771B30](&v153, v27, WitnessTable, v29);
    v30 = v153;
    if (!v153)
    {
      (*(v132 + 56))(v112, 1, 1, v6);
      _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v144);
      return _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v146);
    }

    v31 = *(&v156 + 1);
    v157 = v153;
    v125 = *(&v153 + 1);
    v126 = v154;
    v158 = v154;
    v118 = v155;
    v119 = *(&v154 + 1);
    v159 = v155;
    v124 = (v154 + 32);
    v142 = v156;
    v160 = v156;
    v32 = type metadata accessor for Array();
    v33 = v131;
    v133 = v32;
    while (1)
    {
      *&v152[0] = v30;

      v141 = swift_getWitnessTable();
      BidirectionalCollection.last.getter();
      v39 = *v140;
      if ((*v140)(v33, 1, v6) == 1)
      {
        v153 = v157;
        v154 = v158;
        v155 = v159;
        v156 = v160;
        (*(*(v120 - 8) + 8))(&v153);
        (*v116)(v33, v117);

        v26 = v113;
        goto LABEL_2;
      }

      v40 = v132;
      v41 = *(v132 + 32);
      v42 = v148;
      v41(v148, v33, v6);
      v135 = v30;

      v43 = *v42;
      v44 = v129;
      v134 = *(v40 + 16);
      v134(v129, v42, v6);
      v45 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v46 = swift_allocObject();
      v47 = v147;
      v46[2] = v139;
      v46[3] = v47;
      v46[4] = v149;
      v136 = v41;
      v41((v46 + v45), v44, v6);
      _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v144);
      v48 = swift_allocObject();
      *(v48 + 16) = partial apply for implicit closure #1 in DepthFirstNodeIterator.next();
      *(v48 + 24) = v46;
      v143 = v46;
      v150 = v48;
      _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v146);
      v49 = *(v142 + 16);
      if (*(&v159 + 1))
      {
        v50 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v43, v142 + 32, v49, *(&v159 + 1) + 16, *(&v159 + 1) + 32);
        if ((v51 & 1) == 0)
        {
          v52 = v50;
          goto LABEL_23;
        }

LABEL_18:
        v53 = specialized OrderedSet._appendNew(_:in:)(v43, v49);
        v142 = v160;
        v54 = *(v160 + 16);
        v55 = *(v150 + 24);
        v56 = (*(v150 + 16))(v53);
        v58 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(&v160 + 1) = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1);
          v31 = *(&v160 + 1);
        }

        v6 = v31[2];
        v60 = v31[3];
        if (v6 >= v60 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v6 + 1, 1);
          v31 = *(&v160 + 1);
        }

        v52 = v54 - 1;
        v31[2] = v6 + 1;
        v61 = &v31[2 * v6];
        v61[4] = v56;
        v61[5] = v58;
        goto LABEL_23;
      }

      if (!v49)
      {
        goto LABEL_18;
      }

      v52 = 0;
      while (*(v142 + 8 * v52 + 32) != v43)
      {
        if (v49 == ++v52)
        {
          v49 = 0;
          goto LABEL_18;
        }
      }

LABEL_23:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v31);
      }

      v62 = &v31[2 * v52];
      v64 = v62[4];
      v63 = v62[5];
      *(&v160 + 1) = v31;
      v65 = *(v64 + 16);
      if (v63 == v65)
      {
        v66 = 0;
        v146 = 0;
        v67 = v63;
      }

      else
      {
        if (v63 >= v65)
        {
          __break(1u);
          goto LABEL_56;
        }

        v68 = v64 + 16 * v63;
        v66 = *(v68 + 32);
        v146 = *(v68 + 40);
        v67 = (v63 + 1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v31);
      }

      v69 = &v31[2 * v52];
      v69[4] = v64;
      v69[5] = v67;
      *(&v160 + 1) = v31;
      v6 = v128;
      if (v63 == v65)
      {
        goto LABEL_5;
      }

      v70 = *v149;

      v71 = v122;
      v72 = v139;
      Graph.node(at:)(v66, v70, v122);
      v73 = v71;

      if (v39(v71, 1, v6) == 1)
      {
        break;
      }

      v63 = v115;
      v74 = v136(v115, v73, v6);
      *&v153 = v135;
      MEMORY[0x28223BE20](v74);
      *(&v112 - 4) = v72;
      *(&v112 - 3) = v75;
      v76 = v146;
      *(&v112 - 2) = v66;
      *(&v112 - 1) = v76;

      swift_getWitnessTable();
      v77 = v121;
      v78 = Sequence.contains(where:)();

      if (v78)
      {
        if (one-time initialization token for logger == -1)
        {
LABEL_50:
          v105 = type metadata accessor for Logger();
          __swift_project_value_buffer(v105, logger);
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            *v108 = 0;
            _os_log_impl(&dword_265D7D000, v106, v107, "Cycle in graph", v108, 2u);
            MEMORY[0x266773120](v108, -1, -1);
          }

          v109 = v132;
          v110 = *(v132 + 8);
          v110(v63, v6);
          v110(v148, v6);
          v153 = v157;
          v154 = v158;
          v155 = v159;
          v156 = v160;
          (*(*(v120 - 8) + 8))(&v153);
          (*(v109 + 56))(v112, 1, 1, v6);
          goto LABEL_53;
        }

LABEL_56:
        swift_once();
        goto LABEL_50;
      }

      v121 = v77;
      v134(v123, v63, v6);
      Array.append(_:)();
      v37 = v63;
LABEL_8:
      v38 = *v127;
      (*v127)(v37, v6);
      v38(v148, v6);
      v146 = partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>);
      v30 = v157;
      v144 = partial apply for implicit closure #1 in DepthFirstNodeIterator.next();
      v145 = v150;
      v33 = v131;
    }

    (*v116)(v71, v117);
LABEL_5:
    v34 = *(v126 + 16);
    if (v125)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v43, v124, v34, v125 + 16, v125 + 32);
      if (v35)
      {
        goto LABEL_38;
      }

      goto LABEL_7;
    }

    v79 = v124;
    if (v34)
    {
      while (1)
      {
        v80 = *v79++;
        if (v80 == v43)
        {
          break;
        }

        if (!--v34)
        {
          goto LABEL_38;
        }
      }

LABEL_7:
      swift_getWitnessTable();
      v36 = v123;
      RangeReplaceableCollection<>.removeLast()();
      v37 = v36;
      goto LABEL_8;
    }

LABEL_38:
    v82 = v149[1];
    v81 = v149[2];

    v83 = v82(v148);

    if (v83)
    {
      v84 = (v118 + 32);
      v85 = *(v118 + 16);
      if (v119)
      {
        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v43, v84, v85, v119 + 16, v119 + 32);
        if (v86)
        {
LABEL_41:
          specialized OrderedSet._append(_:)(v43);
          v152[0] = v157;
          v152[1] = v158;
          v152[2] = v159;
          v152[3] = v160;
          v153 = v157;
          v154 = v158;
          v155 = v159;
          v156 = v160;
          v87 = *(v120 - 8);
          (*(v87 + 16))(v151, v152, v120);
          v88 = v113;
          Array.append(_:)();
          v89 = v149[3];
          v90 = v149[4];

          v146 = v89(v83);

          v91 = MEMORY[0x277D84F90];
          v92 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
          v94 = v93;
          v95 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v91);
          v97 = v96;
          v98 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v91);
          v151[0] = v146;
          v151[1] = v92;
          v26 = v88;
          v151[2] = v94;
          v151[3] = v95;
          v151[4] = v97;
          v151[5] = v98;
          v151[6] = v99;
          v151[7] = v100;
          Array.append(_:)();
          (*v127)(v148, v6);
          v153 = v157;
          v154 = v158;
          v155 = v159;
          v156 = v160;
          (*(v87 + 8))(&v153, v120);
          v146 = partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>);
          v144 = partial apply for implicit closure #1 in DepthFirstNodeIterator.next();
          v145 = v150;
          continue;
        }
      }

      else
      {
        if (!v85)
        {
          goto LABEL_41;
        }

        while (1)
        {
          v101 = *v84++;
          if (v101 == v43)
          {
            break;
          }

          if (!--v85)
          {
            goto LABEL_41;
          }
        }
      }
    }

    break;
  }

  specialized OrderedSet._append(_:)(v43);
  swift_getWitnessTable();
  v102 = v123;
  RangeReplaceableCollection<>.removeLast()();
  v103 = v132;
  (*(v132 + 8))(v102, v6);
  v153 = v157;
  v154 = v158;
  v155 = v159;
  v156 = v160;
  (*(*(v120 - 8) + 8))(&v153);
  v104 = v112;
  v136(v112, v148, v6);
  (*(v103 + 56))(v104, 0, 1, v6);
LABEL_53:
}

uint64_t implicit closure #1 in DepthFirstNodeIterator.next()(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  v5 = a1[4];
  v4 = a1[5];
  v16 = *a1;
  v17 = v4;
  v6 = type metadata accessor for Graph();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v15, &v16, v6);

  type metadata accessor for DepthFirstNodeIterator.Context();
  v8 = type metadata accessor for Array();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v15, &v17, v8);
  NodeIterator = type metadata accessor for DepthFirstNodeIterator();
  v11 = *(NodeIterator + 16);
  v12 = *(NodeIterator + 24);
  v13 = Graph.connectedInputIndices(for:)(a2);
  (*(v7 + 8))(&v16, v6);

  (*(v9 + 8))(&v17, v8);
  return v13;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DepthFirstNodeIterator<A>()
{
  v1 = specialized Sequence._copyToContiguousArray()();
  v2 = *v0;

  v3 = v0[2];

  v4 = v0[4];

  v5 = v0[5];

  return v1;
}

Swift::Void __swiftcall Graph.debugPrint()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_265F1F670;
  *(v0 + 56) = v1;
  strcpy((v0 + 32), "Graph storage:");
  *(v0 + 47) = -18;
  print(_:separator:terminator:)();

  type metadata accessor for Graph.NodeEntry();
  v2 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667716A0](&v4, v2, WitnessTable);
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t closure #1 in Graph.debugPrint()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Graph.Node();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v69 - v14);
  (*(v6 + 16))(v9, a2, v5, v13);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_265F1F670;
    v78 = a1;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v17;
    MEMORY[0x266771550](0x6574656C65642D20, 0xEA00000000002D64);
    v18 = v79;
    v19 = v80;
    v79 = 9;
    v80 = 0xE100000000000000;
    MEMORY[0x266771550](v18, v19);

    v20 = v79;
    v21 = v80;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 32) = v20;
    *(v16 + 40) = v21;
    print(_:separator:terminator:)();
  }

  v70 = v10;
  (*(v10 + 32))(v15, v9, v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v24 = swift_allocObject();
  v77 = xmmword_265F1F670;
  *(v24 + 16) = xmmword_265F1F670;
  v79 = 0;
  v80 = 0xE000000000000000;
  v78 = *v15;
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v25);

  MEMORY[0x266771550](32, 0xE100000000000000);
  v71 = v4;
  v26 = *(v4 + 36);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v27 = v79;
  v28 = v80;
  v79 = 9;
  v80 = 0xE100000000000000;
  MEMORY[0x266771550](v27, v28);

  v29 = v79;
  v30 = v80;
  v31 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 32) = v29;
  *(v24 + 40) = v30;
  print(_:separator:terminator:)();

  v76 = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = v77;
  *(v32 + 56) = v31;
  *(v32 + 32) = 0x696D6F636E690909;
  *(v32 + 40) = 0xEB000000003A676ELL;
  print(_:separator:terminator:)();

  v33 = a2 + *(type metadata accessor for Graph.NodeEntry() + 36);
  v34 = *(v33 + 40);
  v75 = *(v33 + 32);
  v72 = v33;
  v35 = *(v34 + 16);

  v69 = v15;
  v74 = v35;
  if (v35)
  {
    v36 = 0;
    v73 = v75 + 32;
    v37 = (v34 + 48);
    while (v36 < *(v75 + 16))
    {
      if (v36 >= *(v34 + 16))
      {
        goto LABEL_23;
      }

      v49 = *(v73 + 8 * v36);
      if (*v37)
      {
        v41 = 0xE100000000000000;
        v42 = 45;
      }

      else
      {
        v38 = *(v37 - 1);
        v78 = *(v37 - 2);
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v39;
        MEMORY[0x266771550](58, 0xE100000000000000);
        v78 = v38;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v40);

        v42 = v79;
        v41 = v80;
      }

      ++v36;
      v43 = swift_allocObject();
      *(v43 + 16) = v77;
      v79 = 9;
      v80 = 0xE100000000000000;
      MEMORY[0x266771550](v42, v41);

      MEMORY[0x266771550](540945696, 0xE400000000000000);
      v78 = v49;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v44);

      v45 = v79;
      v46 = v80;
      v79 = 2313;
      v80 = 0xE200000000000000;
      MEMORY[0x266771550](v45, v46);

      v47 = v79;
      v48 = v80;
      *(v43 + 56) = MEMORY[0x277D837D0];
      *(v43 + 32) = v47;
      *(v43 + 40) = v48;
      print(_:separator:terminator:)();

      v37 += 24;
      if (v74 == v36)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_11:

    if (!*(v34 + 16))
    {
      v50 = swift_allocObject();
      *(v50 + 16) = v77;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 32) = 0x8588E2090909;
      *(v50 + 40) = 0xA600000000000000;
      print(_:separator:terminator:)();
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v77;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 32) = 0x696F6774756F0909;
    *(v51 + 40) = 0xEB000000003A676ELL;
    print(_:separator:terminator:)();

    v52 = *(v72 + 16);
    v75 = *(v72 + 8);
    v53 = *(v52 + 16);

    v74 = v53;
    if (!v53)
    {
LABEL_18:

      v67 = v70;
      v66 = v71;
      if (!*(v52 + 16))
      {
        v68 = swift_allocObject();
        *(v68 + 16) = v77;
        *(v68 + 56) = MEMORY[0x277D837D0];
        *(v68 + 32) = 0x8588E2090909;
        *(v68 + 40) = 0xA600000000000000;
        print(_:separator:terminator:)();
        v67 = v70;

        v66 = v71;
      }

      return (*(v67 + 8))(v69, v66);
    }

    v54 = 0;
    v72 = v52 + 32;
    v73 = v75 + 32;
    while (v54 < *(v75 + 16))
    {
      if (v54 >= *(v52 + 16))
      {
        goto LABEL_25;
      }

      v55 = *(v73 + 8 * v54);
      v56 = *(v72 + 8 * v54++);
      v57 = swift_allocObject();
      *(v57 + 16) = v77;
      v78 = v55;
      v79 = 9;
      v80 = 0xE100000000000000;

      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v58);

      MEMORY[0x266771550](0x5B203E2D20, 0xE500000000000000);
      v78 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11ShaderGraph0E5IndexVG_SSs5NeverOTg504_s11d89Graph0B0V10debugPrintyyFySi_AC9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyx_GtXEfU_yn9_ShyAA0B5F18VGtXEfU0_SSAJXEfU_Tf1cn_n(v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v59 = BidirectionalCollection<>.joined(separator:)();
      v61 = v60;

      MEMORY[0x266771550](v59, v61);

      MEMORY[0x266771550](93, 0xE100000000000000);
      v62 = v79;
      v63 = v80;
      v79 = 2313;
      v80 = 0xE200000000000000;
      MEMORY[0x266771550](v62, v63);

      v64 = v79;
      v65 = v80;
      *(v57 + 56) = MEMORY[0x277D837D0];
      *(v57 + 32) = v64;
      *(v57 + 40) = v65;
      print(_:separator:terminator:)();

      if (v74 == v54)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  specialized _NativeSet._delete(at:)(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  MEMORY[0x266772770](a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
    if (v13 == a1 && v12 == a2)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  v22 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v18 = v22;
  }

  v19 = (*(v18 + 48) + 16 * v9);
  v20 = *v19;
  v21 = v19[1];
  specialized _NativeSet._delete(at:)(v9);
  result = v20;
  *v2 = v22;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v13);
        MEMORY[0x266772770](v14);
        v15 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized Graph.Adjacent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(type metadata accessor for Graph.Node() + 36);
  result = (*(a3 + 56))(a2, a3);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  MEMORY[0x28223BE20](result);
  v45 = a2;
  v46 = a3;
  v47 = a1;
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for closure #1 in closure #1 in Graph.DepthFirstEdgeIterator.init(_:initial:), v44, 0, v10);
  result = (*(a3 + 48))(a2, a3);
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v45 = a2;
  v46 = a3;
  v47 = a1;
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for closure #1 in closure #1 in Graph.DepthFirstEdgeIterator.init(_:initial:), v44, 0, v12);
  v14 = *(v11 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v50 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v16 = v50;
    v17 = *(v50 + 16);
    v18 = 16 * v17;
    v19 = 40;
    v20 = MEMORY[0x277D84FA0];
    do
    {
      v21 = *(v11 + v19);
      v50 = v16;
      v22 = *(v16 + 24);
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v17 + 1, 1);
        v16 = v50;
      }

      *(v16 + 16) = v23;
      v24 = v16 + v18;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v18 += 16;
      v19 += 16;
      v17 = v23;
      --v14;
    }

    while (v14);

    v15 = MEMORY[0x277D84F90];
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v25 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_ShyAA0B5IndexVGSaySi_AJtGTt0g5Tf4g_n(v16);
  v27 = v26;
  v29 = v28;

  v30 = *(v13 + 16);
  if (v30)
  {
    v48 = v27;
    v49 = v25;
    v50 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v50;
    v32 = *(v50 + 16);
    v33 = 32 * v32;
    v34 = 40;
    do
    {
      v35 = *(v13 + v34);
      v50 = v31;
      v36 = *(v31 + 24);
      v37 = v32 + 1;
      if (v32 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v32 + 1, 1);
        v31 = v50;
      }

      *(v31 + 16) = v37;
      v38 = v31 + v33;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 32) = v35;
      v33 += 32;
      v34 += 16;
      v32 = v37;
      *(v38 + 56) = 1;
      --v30;
    }

    while (v30);

    v27 = v48;
    v25 = v49;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v39 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_AA0B5IndexVSgSaySi_AJtGTt0g5Tf4g_n(v31);
  v41 = v40;
  v43 = v42;

  *a4 = v25;
  a4[1] = v27;
  a4[2] = v29;
  a4[3] = v39;
  a4[4] = v41;
  a4[5] = v43;
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in Graph.Node.outputs.getter(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = type metadata accessor for Graph.Node();
  return a2(v7, v8);
}

uint64_t partial apply for closure #2 in Graph.edges(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return closure #2 in Graph.edges(from:)(a1, v2[4], a2);
}

uint64_t specialized Graph.DepthFirstEdgeIterator.init(_:initial:)()
{
  type metadata accessor for Graph.Node();
  type metadata accessor for Array();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph0B5IndexVGMd, &_sSay11ShaderGraph0B5IndexVGMR);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [GraphIndex] and conformance [A], &_sSay11ShaderGraph0B5IndexVGMd, &_sSay11ShaderGraph0B5IndexVGMR);
  return Sequence.flatMap<A>(_:)();
}

uint64_t specialized OrderedSet._minimumCapacity.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_beginAccess();
    v2 = *(v1 + 16) & 0x3FLL;
    if (v2 < 5 || v2 == (*(v1 + 24) & 0x3FLL))
    {
      return 0;
    }

    v4 = vcvtd_n_f64_s64(1 << v2, 2uLL);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

LABEL_15:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t _s11ShaderGraph0B0V3mapyACyqd__Gqd__xqd_0_YKXEqd_0_YKAA0B7ElementRd__s5ErrorRd_0_r0_lFAC9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyqd___GAJyx_Gqd_0_YKXEfU_TA@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 40);
  return _s11ShaderGraph0B0V3mapyACyqd__Gqd__xqd_0_YKXEqd_0_YKAA0B7ElementRd__s5ErrorRd_0_r0_lFAC9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyqd___GAJyx_Gqd_0_YKXEfU_(a1, *(v3 + 64), *(v3 + 72), *(v3 + 24), *(v3 + 32), *(v3 + 48), a3, *(v3 + 56), a2);
}

uint64_t partial apply for closure #1 in Graph.sinkNodes()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in Graph.sinkNodes()(a1, a2);
}

uint64_t partial apply for closure #1 in default argument 2 of DepthFirstNodeIterator.init(graph:extractGraph:extractInitialNodes:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for Graph.Node();

  return static Array._allocateUninitialized(_:)();
}

uint64_t sub_265EB9444()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Graph.Node();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  (*(*(v2 - 8) + 8))(v0 + *(v3 + 36) + v6, v2);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t partial apply for implicit closure #1 in DepthFirstNodeIterator.next()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for Graph.Node() - 8);
  v4 = v0[4];
  v5 = (v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));

  return implicit closure #1 in DepthFirstNodeIterator.next()(v4, v5);
}

uint64_t partial apply for closure #1 in Graph.debugPrint()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in Graph.debugPrint()(a1, a2);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed Graph<A>.NodeEntry) -> ()(char *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *a1;
  type metadata accessor for Graph.NodeEntry();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

unint64_t lazy protocol witness table accessor for type GraphIndex and conformance GraphIndex()
{
  result = lazy protocol witness table cache variable for type GraphIndex and conformance GraphIndex;
  if (!lazy protocol witness table cache variable for type GraphIndex and conformance GraphIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphIndex and conformance GraphIndex);
  }

  return result;
}

uint64_t type metadata instantiation function for Graph()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Graph.Node(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.Node(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for Graph.Node(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t type metadata completion function for Graph.Edge(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for Graph.Output();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Graph.Input();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.Edge(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v12 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v14 | 7;
  v17 = ((v13 + 16) & ~v13) + *(v8 + 64) + (v14 | 7);
  v18 = v14 + 16;
  if (a2 <= v15)
  {
    goto LABEL_28;
  }

  v19 = (v18 & ~v14) + *(*(v10 - 8) + 64) + (v17 & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v22 < 2)
    {
LABEL_27:
      if (v15)
      {
LABEL_28:
        if (v9 >= v12)
        {
          v28 = *(v8 + 48);

          return v28((a1 + v13 + 16) & ~v13, v9, AssociatedTypeWitness);
        }

        else
        {
          v26 = *(v11 + 48);

          return v26((v18 + ((a1 + v17) & ~v16)) & ~v14);
        }
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_27;
  }

LABEL_14:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = (v18 & ~v14) + *(*(v10 - 8) + 64) + (v17 & ~v16);
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v15 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for Graph.Edge(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v10 + 80);
  v17 = ((v16 + 16) & ~v16) + *(v10 + 64);
  v18 = *(v12 + 80);
  v19 = v17 + (v18 | 7);
  v20 = ((v18 + 16) & ~v18) + *(v12 + 64);
  v21 = (v19 & ~(v18 | 7)) + v20;
  if (a3 <= v15)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v15 < a2)
  {
    v23 = ~v15 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_11;
      }

      goto LABEL_67;
    }

    v24 = (v23 >> (8 * v21)) + 1;
    if (v21)
    {
      v27 = v23 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v27;
          if (v22 > 1)
          {
            goto LABEL_11;
          }
        }

        else
        {
          *a1 = v23;
          if (v22 > 1)
          {
LABEL_11:
            if (v22 == 2)
            {
              *&a1[v21] = v24;
            }

            else
            {
              *&a1[v21] = v24;
            }

            return;
          }
        }

LABEL_67:
        if (v22)
        {
          a1[v21] = v24;
        }

        return;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v22 > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v21] = 0;
  }

  else if (v22)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v11 >= v14)
  {
    if (v11 >= a2)
    {
      v33 = *(v10 + 56);

      v33(&a1[v16 + 16] & ~v16, a2, v11, AssociatedTypeWitness);
    }

    else
    {
      if (v17 <= 3)
      {
        v31 = ~(-1 << (8 * v17));
      }

      else
      {
        v31 = -1;
      }

      if (v17)
      {
        v29 = v31 & (~v11 + a2);
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v17);
        if (v30 <= 2)
        {
          if (v30 != 1)
          {
            goto LABEL_43;
          }

          goto LABEL_54;
        }

LABEL_72:
        if (v30 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else
        {
          *a1 = v29;
        }
      }
    }
  }

  else
  {
    a1 = (&a1[v19] & ~(v18 | 7));
    if (v14 >= a2)
    {
      v32 = *(v13 + 56);

      v32(&a1[v18 + 16] & ~v18, a2);
    }

    else
    {
      if (v20 <= 3)
      {
        v28 = ~(-1 << (8 * v20));
      }

      else
      {
        v28 = -1;
      }

      if (v20)
      {
        v29 = v28 & (~v14 + a2);
        if (v20 <= 3)
        {
          v30 = v20;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v20);
        if (v30 <= 2)
        {
          if (v30 != 1)
          {
LABEL_43:
            *a1 = v29;
            return;
          }

LABEL_54:
          *a1 = v29;
          return;
        }

        goto LABEL_72;
      }
    }
  }
}

uint64_t type metadata completion function for Graph.Input(uint64_t a1)
{
  return type metadata completion function for Graph.Input(a1);
}

{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.Input(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  return getEnumTagSinglePayload for Graph.Input(a1, a2, a3);
}

{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
LABEL_23:
    v17 = *(v9 + 48);

    return v17((a1 + v11 + 16) & ~v11);
  }

  v12 = ((v11 + 16) & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v15 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v15 < 2)
    {
LABEL_22:
      if (v10)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_22;
  }

LABEL_11:
  v16 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v16 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v10 + (v12 | v16) + 1;
}

void storeEnumTagSinglePayload for Graph.Input(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  storeEnumTagSinglePayload for Graph.Input(a1, a2, a3, a4);
}

{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = ((v11 + 16) & ~v11) + *(v9 + 64);
  if (a3 <= v10)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 - v10 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (v10 < a2)
  {
    v14 = ~v10 + a2;
    if (v12 < 4)
    {
      v15 = (v14 >> (8 * v12)) + 1;
      if (v12)
      {
        v18 = v14 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_39:
              if (v13 == 2)
              {
                *&a1[v12] = v15;
              }

              else
              {
                *&a1[v12] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v13)
    {
      a1[v12] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v12] = 0;
  }

  else if (v13)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v9 + 56);

  v19(&a1[v11 + 16] & ~v11, a2);
}

uint64_t type metadata instantiation function for Graph.Adjacent()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Graph.DepthFirstEdgeIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ShallowDepthFirstNodeIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for DepthFirstNodeIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DepthFirstNodeIterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DepthFirstNodeIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11ShaderGraph29ShallowDepthFirstNodeIteratorV7ContextVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Graph.NodeEntry(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for Graph.Node();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Graph.Adjacent();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.NodeEntry(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + ((v9 + 8) & ~v9);
  if (v8 < a2)
  {
    v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
    v13 = a2 - v8;
    v14 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v12);
        if (v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v18 = *(a1 + v12);
        if (v18)
        {
          goto LABEL_25;
        }
      }
    }

    else if (v17)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
LABEL_25:
        v19 = v18 - 1;
        if (v14)
        {
          v19 = 0;
          LODWORD(v14) = *a1;
        }

        return v8 + (v14 | v19) + 1;
      }
    }
  }

  if (v7 >= 0x7FFFFFFF)
  {
    if (v6)
    {
      v21 = (*(v5 + 48))((a1 + v9 + 8) & ~v9);
      v22 = v21 != 0;
      result = (v21 - 1);
      if (result != 0 && v22)
      {
        return result;
      }
    }

    return 0;
  }

  v23 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  return (v23 + 1);
}

void storeEnumTagSinglePayload for Graph.NodeEntry(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = ((v11 + 8) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  if (v8)
  {
    v13 = ((v11 + 8) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v10 < a3)
  {
    v15 = a3 - v10;
    if (((v13 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((v13 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v18 = a2 - v10;
    }

    else
    {
      v18 = 1;
    }

    if (((v13 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v19 = ~v10 + a2;
      bzero(a1, ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      *a1 = v19;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *&a1[v14] = v18;
      }

      else
      {
        *&a1[v14] = v18;
      }
    }

    else if (v6)
    {
      a1[v14] = v18;
    }

    return;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v6 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_38;
  }

  *&a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 < 0x7FFFFFFF)
  {
    v23 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v23 + 40) = 0;
      *(v23 + 24) = 0u;
      *(v23 + 8) = 0u;
      *v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v23 + 8) = a2 - 1;
    }

    return;
  }

  if (v9 >= a2)
  {
    if (a2 >= v8)
    {
      if (v12 <= 3)
      {
        v27 = ~(-1 << (8 * v12));
      }

      else
      {
        v27 = -1;
      }

      if (v12)
      {
        v21 = v27 & (a2 - v8);
        if (v12 <= 3)
        {
          v22 = v12;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v12);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            goto LABEL_50;
          }

          goto LABEL_70;
        }

LABEL_71:
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v24 = *(v7 + 56);
      v25 = &a1[v11 + 8] & ~v11;
      v26 = a2 + 1;

      v24(v25, v26);
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v20 = ~(-1 << (8 * v13));
    }

    else
    {
      v20 = -1;
    }

    if (v13)
    {
      v21 = v20 & (~v9 + a2);
      if (v13 <= 3)
      {
        v22 = v13;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v13);
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
LABEL_50:
          *a1 = v21;
          return;
        }

LABEL_70:
        *a1 = v21;
        return;
      }

      goto LABEL_71;
    }
  }
}

uint64_t *partial apply for closure #1 in Graph.DepthFirstEdgeIterator.inputs(opposite:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *a2 = **(v2 + 32);
  a2[1] = v3;
  return result;
}

void partial apply for closure #1 in closure #2 in Graph.removeEdges(connectedTo:)(Swift::Int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #1 in closure #2 in Graph.removeEdges(connectedTo:)(a1, *(v1 + 32));
}

uint64_t OrderedDictionary.values.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedDictionary.isEmpty.getter()
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v6 = *(a3 + 16);
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](a1);
  v50 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v50 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
  v16 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = TupleTypeMetadata2 - 8;
  v19 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v50 - v20;
  v22 = *v3;
  v23 = v3[1];
  v53 = v3;
  v24 = *(a3 + 32);
  v57 = a2;
  v58 = v6;
  v25 = v6;
  v26 = v54;
  v27 = OrderedSet._find(_:)(a2, v22, v23, v25, v24);
  v29 = v28;
  v31 = v30;
  v32 = *(v18 + 56);
  v33 = *(v16 - 8);
  v34 = *(v33 + 16);
  v55 = v16;
  v34(&v21[v32], v59, v16);
  v35 = (*(v26 + 48))(&v21[v32], 1, v10);
  if (v29)
  {
    if (v35 == 1)
    {
      (*(v56 + 8))(v57, v58);
      return (*(v33 + 8))(v59, v55);
    }

    else
    {
      v41 = v52;
      (*(v26 + 32))(v52, &v21[v32], v10);
      v42 = v58;
      v43 = type metadata accessor for OrderedSet();
      v44 = v57;
      OrderedSet._appendNew(_:in:)(v57, v31, v43);
      (*(v26 + 16))(v51, v41, v10);
      type metadata accessor for ContiguousArray();
      ContiguousArray.append(_:)();
      (*(v56 + 8))(v44, v42);
      (*(v33 + 8))(v59, v55);
      return (*(v26 + 8))(v41, v10);
    }
  }

  else if (v35 == 1)
  {
    v36 = v58;
    v37 = type metadata accessor for OrderedSet();
    v38 = v50;
    OrderedSet._removeExistingMember(at:in:)(v27, v31, v37);
    v39 = *(v56 + 8);
    v39(v38, v36);
    type metadata accessor for ContiguousArray();
    v40 = v52;
    ContiguousArray.remove(at:)();
    v39(v57, v36);
    (*(v33 + 8))(v59, v55);
    return (*(v26 + 8))(v40, v10);
  }

  else
  {
    v46 = v52;
    (*(v26 + 32))(v52, &v21[v32], v10);
    v47 = type metadata accessor for ContiguousArray();
    v48 = v53;
    ContiguousArray._makeMutableAndUnique()();
    (*(v56 + 8))(v57, v58);
    (*(v33 + 8))(v59, v55);
    v49 = v48[2];
    ContiguousArray._checkSubscript_mutating(_:)(v27);
    (*(v26 + 40))(v49 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v27, v46, v10);
    return destructiveProjectEnumData for NodePersonality.ShaderType(v47);
  }
}

uint64_t OrderedDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  OrderedSet._find(_:)(a1, a2, a3, a4, a6);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    ContiguousArray.subscript.getter();
    v10 = 0;
  }

  v11 = *(*(a5 - 8) + 56);

  return v11(a7, v10, 1, a5);
}

uint64_t OrderedDictionary.keys.getter(uint64_t a1)
{

  return a1;
}

void (*OrderedDictionary.subscript.modify(uint64_t **a1, uint64_t a2, void *a3))(uint64_t *a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[2] = a2;
  v8[3] = v3;
  v10 = a3[3];
  v8[4] = v10;
  v11 = type metadata accessor for Optional();
  v9[5] = v11;
  v12 = *(v11 - 8);
  v29 = v12;
  v30 = v11;
  v9[6] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
    v9[7] = v14;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
    v9[7] = v14;
    v15 = malloc(v13);
  }

  v16 = v15;
  v9[8] = v15;
  v17 = *v3;
  v18 = v3[1];
  v19 = a3[2];
  v9[9] = v19;
  v20 = a3[4];
  v9[10] = v20;
  v21 = OrderedSet._find(_:)(a2, v17, v18, v19, v20);
  v23 = v22;
  v25 = v24;
  v9[11] = v21;
  *(v9 + 104) = v22;
  v26 = *(*(v10 - 8) + 56);
  v26(v16, 1, 1, v10);
  if (v23)
  {
    goto LABEL_10;
  }

  *v9 = v21;
  v27 = v3[2];
  result = ContiguousArray.count.getter();
  if (!__OFSUB__(result, 1))
  {
    v9[1] = result - 1;
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    MutableCollection.swapAt(_:_:)();
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    v26(v14, 0, 1, v10);
    (*(v29 + 40))(v16, v14, v30);
LABEL_10:
    v9[12] = v25;
    return OrderedDictionary.subscript.modify;
  }

  __break(1u);
  return result;
}

void OrderedDictionary.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  $defer #1 <A, B>() in OrderedDictionary.subscript.modify(*(*a1 + 88), *(v1 + 104) & 1, *(v1 + 64), *(v1 + 24), *(v1 + 96), *(v1 + 16), *(v1 + 72), *(v1 + 32), *(v1 + 80));
  (*(v5 + 8))(v2, v4);
  free(v2);
  free(v3);

  free(v1);
}

uint64_t OrderedDictionary.updateValue<A>(forKey:default:with:)(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(unint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *(*(a6 + 24) - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = OrderedSet._find(_:)(v12, *v7, v7[1], *(v11 + 16), *(v11 + 32));
  if (v15)
  {
    v16 = v14;
    v17 = type metadata accessor for OrderedSet();
    OrderedSet._appendNew(_:in:)(a1, v16, v17);
    a2();
    v18 = type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    v19 = *(v7[2] + 16) - 1;
    ContiguousArray._makeMutableAndUnique()();
    v20 = v7[2];
    ContiguousArray._checkSubscript_mutating(_:)(v19);
    v21 = v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19;
  }

  else
  {
    v22 = v13;
    v18 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v23 = v7[2];
    ContiguousArray._checkSubscript_mutating(_:)(v22);
    v21 = v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22;
  }

  a4(v21);
  return destructiveProjectEnumData for NodePersonality.ShaderType(v18);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5))(uint64_t **a1)
{
  v6 = v5;
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x40uLL);
  }

  v12 = v11;
  *a1 = v11;
  *v11 = v6;
  v13 = a5[3];
  v11[1] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v11[2] = v14;
  v16 = *(v14 + 64);
  if (v10)
  {
    v11[3] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v11[3] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v12[4] = v17;
  v18 = a5[2];
  v12[5] = v18;
  v12[6] = a5[4];
  v19 = type metadata accessor for OrderedSet();
  v20 = OrderedSet._append(_:)(a2, v19);
  v22 = v21;
  if (v20)
  {
    a3();
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
  }

  v12[7] = v22;
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v23 = *(v6 + 16);
  v24 = *(v23 + 16);
  v28[0] = v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v25 = v28[0];
  v28[1] = v24;
  closure #1 in OrderedDictionary.subscript.modify(v28, v22, v18, v13);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v28, v25, v24);
  return OrderedDictionary.subscript.modify;
}

void OrderedDictionary.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[6];
  v3 = (*a1)[4];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[1];
  $defer #1 <A, B>() in OrderedDictionary.subscript.modify(**a1, (*a1)[7], v4, (*a1)[5], v6);
  (*(v5 + 8))(v4, v6);
  free(v3);
  free(v4);

  free(v1);
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = OrderedSet._find(_:)(a1, a4, a5, a7, a9);
  if (v11)
  {
    return a2(v10);
  }

  return ContiguousArray.subscript.getter();
}

uint64_t OrderedDictionary._keys.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  v6 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderedDictionary._values.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t key path setter for OrderedDictionary.values : <A, B>OrderedDictionary<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v19 = a2[1];
  v20 = *a2;
  v18 = a2[2];

  swift_getTupleTypeMetadata2();
  v11 = static Array._allocateUninitialized(_:)();
  v12 = specialized OrderedDictionary.init(dictionaryLiteral:)(v11, v5, v6, v7);
  v14 = v13;
  v16 = v15;

  *a2 = v12;
  a2[1] = v14;
  a2[2] = v16;
  v21[0] = v8;
  v21[1] = v9;
  v21[2] = v10;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(a2, v21);
}

void (*OrderedDictionary.values.modify(uint64_t *a1, void *a2))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = v2;
  v7 = *(v2 + 8);
  *v5 = *v2;
  *(v5 + 8) = v7;
  v8 = a2[2];
  *(v5 + 32) = v8;
  v9 = a2[3];
  *(v5 + 40) = v9;
  swift_getTupleTypeMetadata2();
  v10 = static Array._allocateUninitialized(_:)();
  v11 = a2[4];
  *(v6 + 48) = v11;
  v12 = specialized OrderedDictionary.init(dictionaryLiteral:)(v10, v8, v9, v11);
  v14 = v13;
  v16 = v15;

  *v2 = v12;
  *(v2 + 8) = v14;
  *(v2 + 16) = v16;
  return OrderedDictionary.values.modify;
}

void OrderedDictionary.values.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[6];
  v4 = (*a1)[4];
  $defer #1 <A, B>() in OrderedDictionary.elements.modify((*a1)[3], *a1);
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];

  free(v1);
}

uint64_t OrderedDictionary.values.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = v4[1];
  v18 = *v4;
  v8 = v4[2];
  v9 = a4[2];
  v10 = a4[3];
  swift_getTupleTypeMetadata2();
  v11 = static Array._allocateUninitialized(_:)();
  v12 = specialized OrderedDictionary.init(dictionaryLiteral:)(v11, v9, v10, a4[4]);
  v14 = v13;
  v16 = v15;

  *v5 = v12;
  v5[1] = v14;
  v5[2] = v16;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(v5, v22);
}

uint64_t $defer #1 <A, B>() in OrderedDictionary.subscript.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a5;
  v49 = a7;
  v50 = a1;
  v51 = a4;
  v12 = *(a7 - 8);
  v45 = a6;
  v46 = v12;
  v13 = *(v12 + 64);
  v47 = a9;
  MEMORY[0x28223BE20](a1);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
  v25 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(*(TupleTypeMetadata2 - 8) + 64);
  v28 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v30 = &v44 - v29;
  v32 = *(v31 + 56);
  (*(*(v25 - 8) + 16))(&v44 + v32 - v29, a3, v25, v28);
  result = (*(v17 + 48))(&v30[v32], 1, a8);
  if (a2)
  {
    if (result == 1)
    {
      return result;
    }

    (*(v17 + 32))(v24, &v30[v32], a8);
    v34 = type metadata accessor for OrderedSet();
    OrderedSet._appendNew(_:in:)(v45, v48, v34);
    (*(v17 + 16))(v21, v24, a8);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    return (*(v17 + 8))(v24, a8);
  }

  if (result != 1)
  {
    (*(v17 + 32))(v24, &v30[v32], a8);
    (*(v17 + 16))(v21, v24, a8);
    type metadata accessor for ContiguousArray();
    v41 = v51;
    ContiguousArray.append(_:)();
    v53 = v50;
    v42 = *(v41 + 16);

    v43 = ContiguousArray.count.getter();

    if (__OFSUB__(v43, 1))
    {
      __break(1u);
      return result;
    }

    v52 = v43 - 1;
    swift_getWitnessTable();
    MutableCollection.swapAt(_:_:)();
    return (*(v17 + 8))(v24, a8);
  }

  v35 = *(v51 + 16);

  v36 = ContiguousArray.count.getter();

  v37 = v36 <= v50;
  v38 = v50;
  if (!v37)
  {
    type metadata accessor for ContiguousArray();
    ContiguousArray.remove(at:)();
    (*(v17 + 16))(v21, v24, a8);
    ContiguousArray.append(_:)();
    (*(v17 + 8))(v24, a8);
  }

  v39 = v49;
  v40 = type metadata accessor for OrderedSet();
  OrderedSet._removeExistingMember(at:in:)(v38, v48, v40);
  return (*(v46 + 8))(v15, v39);
}

uint64_t key path setter for OrderedDictionary.subscript(_:) : <A, B>OrderedDictionary<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *(*(v6 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  (*(v19 + 16))(&v22 - v17, a3, v6, v16);
  (*(v10 + 16))(v13, a1, v9);
  v20 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.setter(v13, v18, v20);
}

uint64_t closure #1 in OrderedDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v9 = result + *(*(a4 - 8) + 72) * a2;
    return UnsafeMutablePointer.move()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *$defer #1 <A, B>() in OrderedDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v10 = *(a1 + 16);
  v11 = *(v10 + 16);
  v14[0] = v10 + ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80));
  v12 = v14[0];
  v14[1] = v11;
  closure #1 in $defer #1 <A, B>() in OrderedDictionary.subscript.modify(v14, a2, a3, a4, a5);
  return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v14, v12, v11);
}

uint64_t OrderedDictionary.subscript.setter(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a3;
  v30 = a1;
  v8 = *(a5 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = *(v14 + 16);
  v16 = *(v14 + 32);
  v17 = type metadata accessor for OrderedSet();
  v29 = a2;
  v18 = OrderedSet._append(_:)(a2, v17);
  v20 = v19;
  if (v18)
  {
    v28(v18);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
  }

  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v21 = *(v6 + 16);
  v22 = *(v21 + 16);
  v31[0] = v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v23 = v31[0];
  v31[1] = v22;
  v24 = v20;
  closure #1 in OrderedDictionary.subscript.modify(v31, v20, v15, v8);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v31, v23, v22);
  v25 = *(v9 + 8);
  v25(v12, v8);
  v26 = v30;
  (*(v9 + 16))(v12, v30, v8);
  $defer #1 <A, B>() in OrderedDictionary.subscript.modify(v6, v24, v12, v15, v8);
  (*(*(v15 - 8) + 8))(v29, v15);
  v25(v26, v8);
  return (v25)(v12, v8);
}

uint64_t OrderedDictionary.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 24);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OrderedSet._find(_:)(a2, *v4, v4[1], *(v12 + 16), *(v12 + 32));
  if (v15)
  {
    v16 = v14;
    v17 = type metadata accessor for OrderedSet();
    OrderedSet._appendNew(_:in:)(a2, v16, v17);
    (*(v25 + 16))(v11, a1, v8);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    return (*(v25 + 56))(a4, 1, 1, v8);
  }

  else
  {
    v19 = v4[2];
    v20 = v13;
    ContiguousArray.subscript.getter();
    v21 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v22 = v4[2];
    ContiguousArray._checkSubscript_mutating(_:)(v20);
    (*(v25 + 24))(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, a1, v8);
    destructiveProjectEnumData for NodePersonality.ShaderType(v21);
    v23 = *(v25 + 56);

    return v23(a4, 0, 1, v8);
  }
}

Swift::Int OrderedDictionary.updateValue(_:forKey:insertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v15 + 32);
  v18 = type metadata accessor for OrderedSet();
  v19 = OrderedSet.insert(_:at:)(a3, a4, v18);
  v21 = v20;
  if (v19)
  {
    (*(v11 + 16))(v14, a2, v10);
    type metadata accessor for ContiguousArray();
    ContiguousArray.insert(_:at:)();
    (*(v11 + 56))(a1, 1, 1, v10);
  }

  else
  {
    v22 = *(v5 + 16);
    ContiguousArray.subscript.getter();
    v23 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v24 = *(v5 + 16);
    ContiguousArray._checkSubscript_mutating(_:)(v21);
    (*(v11 + 24))(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, a2, v10);
    destructiveProjectEnumData for NodePersonality.ShaderType(v23);
    (*(v11 + 56))(a1, 0, 1, v10);
  }

  return v21;
}

uint64_t OrderedDictionary.updateValue<A>(forKey:insertingDefault:at:with:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(unint64_t), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v28 = *(*(a7 + 24) - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = OrderedSet._find(_:)(v13, *v8, v8[1], *(v12 + 16), *(v12 + 32));
  if (v16)
  {
    v17 = v15;
    v18 = type metadata accessor for OrderedSet();
    OrderedSet._insertNew(_:at:in:)(a1, a4, v17, v18);
    a2(v19, v20);
    v21 = type metadata accessor for ContiguousArray();
    ContiguousArray.insert(_:at:)();
    ContiguousArray._makeMutableAndUnique()();
    v22 = v8[2];
    ContiguousArray._checkSubscript_mutating(_:)(a4);
    v23 = v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * a4;
  }

  else
  {
    v24 = v14;
    v21 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v25 = v8[2];
    ContiguousArray._checkSubscript_mutating(_:)(v24);
    v23 = v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24;
  }

  a5(v23);
  return destructiveProjectEnumData for NodePersonality.ShaderType(v21);
}

uint64_t OrderedDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OrderedSet._find(_:)(v11, *v3, v3[1], v6, a2[4]);
  if (v14)
  {
    v15 = *(*(a2[3] - 8) + 56);

    return v15(a3, 1, 1);
  }

  else
  {
    v17 = v13;
    v18 = v12;
    v19 = type metadata accessor for OrderedSet();
    OrderedSet._removeExistingMember(at:in:)(v18, v17, v19);
    (*(v7 + 8))(v10, v6);
    v20 = a2[3];
    type metadata accessor for ContiguousArray();
    ContiguousArray.remove(at:)();
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }
}

uint64_t OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return OrderedDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

{
  return OrderedDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

uint64_t closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v11, v14);
  if (!v6)
  {
    (*(v9 + 8))(a1, a6);
    return (*(v9 + 32))(a1, v13, a6);
  }

  return result;
}

uint64_t closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v20 = *(swift_getTupleTypeMetadata2() + 48);
  v16 = *(v9 + 16);
  v16(v15, a1, TupleTypeMetadata2);
  v21 = *(TupleTypeMetadata2 + 48);
  v17 = *(a2 - 8);
  (*(v17 + 32))(a4, v15, a2);
  v16(v12, a1, TupleTypeMetadata2);
  v18 = *(a3 - 8);
  (*(v18 + 32))(a4 + v20, &v12[*(TupleTypeMetadata2 + 48)], a3);
  (*(v17 + 8))(v12, a2);
  return (*(v18 + 8))(&v15[v21], a3);
}

uint64_t OrderedDictionary.merging<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return OrderedDictionary.merging<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

{
  return OrderedDictionary.merging<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

uint64_t OrderedDictionary.merging<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = type metadata accessor for OrderedDictionary();

  a12(a1, a2, a3, v14, a9, a11);
  if (v18)
  {

    (*(*(a9 - 8) + 8))(a1, a9);
  }

  else
  {
    (*(*(a9 - 8) + 8))(a1, a9);

    return a4;
  }
}

uint64_t OrderedDictionary.filter(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a5;
  v65 = a1;
  v66 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v58 = *(TupleTypeMetadata2 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v55 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = v53 - v17;
  MEMORY[0x28223BE20](v18);
  v69 = v53 - v19;
  v20 = type metadata accessor for Optional();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v53 - v22;
  swift_getTupleTypeMetadata2();
  v24 = static Array._allocateUninitialized(_:)();
  v25 = specialized OrderedDictionary.init(dictionaryLiteral:)(v24, a6, a7, a8);
  v68 = v26;
  v64 = v27;

  v74 = 0;
  v75 = v25;
  v28 = TupleTypeMetadata2;
  v76 = v68;
  v77 = v64;
  v71 = a3;
  v72 = a4;
  v73 = v54;
  v56 = a8;
  v29 = v23;
  v30 = type metadata accessor for OrderedDictionary.Iterator();
  v53[1] = a3;
  v31 = v58;

  v53[0] = a4;

  v64 = v30;
  OrderedDictionary.Iterator.next()(v30, v23);
  v62 = *(v31 + 48);
  v63 = v31 + 48;
  if (v62(v23, 1, TupleTypeMetadata2) == 1)
  {
LABEL_2:

    return v75;
  }

  else
  {
    v33 = *(a6 - 8);
    v34 = *(v33 + 32);
    v60 = v33 + 32;
    v61 = v34;
    v68 = (v31 + 16);
    v35 = (v33 + 8);
    v58 = v31 + 8;
    v59 = a7 - 8;
    v57 = v23;
    while (1)
    {
      v36 = *(v28 + 48);
      v37 = v69;
      v61(v69, v29, a6);
      v38 = a6;
      v39 = *(a7 - 8);
      (*(v39 + 32))(v37 + v36, v29 + v36, a7);
      v40 = v28;
      v41 = v67;
      v42 = *v68;
      (*v68)(v67, v37, v40);
      v43 = v40;
      v44 = *(v40 + 48);
      v45 = v70;
      v46 = v65(v41, &v41[v44]);
      v70 = v45;
      if (v45)
      {
        break;
      }

      v47 = v46;
      (*(v39 + 8))(&v41[v44], a7);
      v48 = *v35;
      (*v35)(v41, v38);
      a6 = v38;
      if (v47)
      {
        v49 = type metadata accessor for OrderedSet();
        v50 = v69;
        OrderedSet._appendNew(_:)(v69, v49);
        v51 = v55;
        v42(v55, v50, v43);
        v28 = v43;
        v52 = *(v43 + 48);
        type metadata accessor for ContiguousArray();
        ContiguousArray.append(_:)();
        (*v58)(v50, v43);
        v48(v51, a6);
      }

      else
      {
        v28 = v43;
        (*v58)(v69, v43);
      }

      v29 = v57;
      OrderedDictionary.Iterator.next()(v64, v57);
      if (v62(v29, 1, v28) == 1)
      {
        goto LABEL_2;
      }
    }

    (*v58)(v69, v43);

    (*(v39 + 8))(&v41[v44], a7);
    return (*v35)(v41, v38);
  }
}

uint64_t OrderedDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a1;
  v18[7] = a2;
  v12 = type metadata accessor for ContiguousArray();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed B) -> (@out A1, @error @owned Error), v18, v12, a8, v13, WitnessTable, MEMORY[0x277D84950], &v19);
  if (v9)
  {
  }

  else
  {
    v16 = v15;

    v20 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Array.init<A>(_:)();
  }

  return a3;
}

uint64_t OrderedDictionary.compactMapValues<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v58 = a5;
  v56 = a4;
  v57 = a3;
  v69 = a9;
  v68 = type metadata accessor for Optional();
  v59 = *(v68 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v68);
  v75 = &v53 - v17;
  v72 = *(a8 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x28223BE20](v19);
  v67 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = &v53 - v22;
  v71 = *(a7 - 8);
  v23 = *(v71 + 64);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a6 - 8);
  v27 = *(v55 + 64);
  MEMORY[0x28223BE20](v28);
  v82 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = type metadata accessor for Optional();
  v77 = *(v81 - 8);
  v30 = *(v77 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v79 = &v53 - v33;
  swift_getTupleTypeMetadata2();
  v34 = static Array._allocateUninitialized(_:)();
  v35 = specialized OrderedDictionary.init(dictionaryLiteral:)(v34, a6, a8, a9);
  v83 = v36;
  v78 = v37;

  v88 = v35;
  v89 = v83;
  v90 = v78;
  v84 = v57;
  v85 = v56;
  v86 = v58;
  v87 = 0;
  v83 = a6;
  v38 = TupleTypeMetadata2;
  v39 = type metadata accessor for OrderedDictionary.Iterator();
  v77 += 32;
  v78 = v39;
  v76 = v38 - 8;
  v74 = (v55 + 32);
  v73 = (v71 + 32);
  v70 = (v72 + 48);
  v62 = (v72 + 32);
  v61 = (v72 + 16);
  v60 = (v72 + 8);
  v71 += 8;
  v72 = v55 + 8;
  v59 += 8;

  v66 = a2;
  v64 = v26;
  v63 = a1;
  while (1)
  {
    v40 = v80;
    OrderedDictionary.Iterator.next()(v78, v80);
    v41 = v79;
    (*v77)(v79, v40, v81);
    if ((*(*(v38 - 8) + 48))(v41, 1, v38) == 1)
    {

      return v88;
    }

    v42 = v38;
    v43 = *(v38 + 48);
    (*v74)(v82, v41, v83);
    (*v73)(v26, &v41[v43], a7);
    v44 = v75;
    a1(v26);
    if (v10)
    {
      break;
    }

    if ((*v70)(v44, 1, a8) == 1)
    {
      (*v71)(v26, a7);
      (*v72)(v82, v83);
      (*v59)(v44, v68);
    }

    else
    {
      v45 = v65;
      (*v62)(v65, v44, a8);
      v46 = a7;
      v47 = v83;
      v48 = type metadata accessor for OrderedSet();
      v49 = v82;
      OrderedSet._appendNew(_:)(v82, v48);
      (*v61)(v67, v45, a8);
      type metadata accessor for ContiguousArray();
      v10 = 0;
      ContiguousArray.append(_:)();
      v50 = v45;
      v26 = v64;
      (*v60)(v50, a8);
      (*v71)(v26, v46);
      v51 = v47;
      a7 = v46;
      a1 = v63;
      (*v72)(v49, v51);
    }

    v38 = v42;
  }

  (*v71)(v26, a7);
  (*v72)(v82, v83);
}

uint64_t closure #1 in $defer #1 <A, B>() in OrderedDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v12;
  v13 = v12[1];
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v16 = result + *(v8 + 72) * a2;
    (*(v8 + 16))(v11, a3, a5);
    return (*(v8 + 32))(v16, v11, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, uint64_t *a4)
{
  v5 = a4[2];
  v60 = a4 + 2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(a1 + 16);
  *v60 = v5;
  if (!v7)
  {
    return result;
  }

  v8 = 0;
  v58 = a1 + 32;
  v56 = v7;
  do
  {
    v57 = v5 + 32;
    v62 = v5;
    while (1)
    {
      if (v8 >= v7)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      v16 = (v58 + (v8 << 6));
      v17 = v16[1];
      v71[0] = *v16;
      v71[1] = v17;
      v18 = v16[3];
      v71[2] = v16[2];
      v71[3] = v18;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_35;
      }

      v20 = v16[1];
      v67 = *v16;
      v68 = v20;
      v21 = v16[3];
      v69 = v16[2];
      v70 = v21;
      outlined init with copy of (String, BuiltInDefinition)(v71, &v72);
      a2(&v72, &v67);
      v22 = v72;
      v23 = v73;
      v65 = *(&v74 + 1);
      v66 = v74;
      v24 = v75;
      v72 = v67;
      v73 = v68;
      v74 = v69;
      v75 = v70;
      result = outlined destroy of (String, BuiltInDefinition)(&v72);
      if (!*(&v22 + 1))
      {
        return result;
      }

      v26 = *a4;
      v25 = a4[1];
      v27 = *(v25 + 16);
      if (*a4)
      {
        break;
      }

      if (!v27)
      {
        goto LABEL_28;
      }

      v28 = 0;
      v49 = (v25 + 40);
      while (1)
      {
        result = *(v49 - 1);
        if (result == v22 && *(&v22 + 1) == *v49)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v28;
        v49 += 2;
        if (v27 == v28)
        {
          v27 = 0;
          goto LABEL_28;
        }
      }

LABEL_14:
      if (v28 >= *(v5 + 16))
      {
        goto LABEL_37;
      }

      v64 = v8;
      v32 = (v57 + 48 * v28);
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = v32[3];
      v38 = v32[4];
      v37 = v32[5];
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v76 = v33;
      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, logger);

      outlined copy of MaterialXAvailability(v38, v37);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      outlined consume of MaterialXAvailability(v38, v37);
      if (os_log_type_enabled(v40, v41))
      {
        v55 = v35;
        v42 = swift_slowAlloc();
        v54 = v38;
        v43 = v34;
        v44 = v40;
        v45 = swift_slowAlloc();
        *&v72 = v45;
        *v42 = 136315138;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v43, &v72);
        v46 = v41;
        v47 = v44;
        _os_log_impl(&dword_265D7D000, v44, v46, "Duplicate NodeDef: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        v34 = v43;
        v38 = v54;
        MEMORY[0x266773120](v45, -1, -1);
        v48 = v42;
        v35 = v55;
        MEMORY[0x266773120](v48, -1, -1);
      }

      else
      {
      }

      v63 = v37;

      outlined copy of MaterialXAvailability(v38, v37);

      v9 = v34;
      v10 = v32[1];
      v11 = v32[2];
      v12 = v32[3];
      v13 = v32[4];
      v14 = v35;
      v15 = v32[5];

      outlined consume of MaterialXAvailability(v13, v15);

      result = outlined consume of MaterialXAvailability(v24, *(&v24 + 1));
      *v32 = v76;
      v32[1] = v9;
      v32[2] = v14;
      v32[3] = v36;
      v5 = v62;
      v32[4] = v38;
      v32[5] = v63;
      *v60 = v62;
      v7 = v56;
      v8 = v64;
      if (v64 == v56)
      {
        return result;
      }
    }

    v28 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v22, *(&v22 + 1), v25 + 32, v27, (v26 + 16), v26 + 32);
    v30 = v29;
    v27 = v31;

    if ((v30 & 1) == 0)
    {
      v5 = v62;
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    v5 = v62;
LABEL_28:
    specialized OrderedSet._appendNew(_:in:)(v22, *(&v22 + 1), v27);
    a4[2] = v5;
    v52 = *(v5 + 16);
    v51 = *(v5 + 24);
    if (v52 >= v51 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
    }

    v5 = *v60;
    *(v5 + 16) = v52 + 1;
    v53 = v5 + 48 * v52;
    *(v53 + 32) = v23;
    *(v53 + 48) = v66;
    *(v53 + 56) = v65;
    *(v53 + 64) = v24;
    *v60 = v5;
  }

  while (v8 != v7);
  return result;
}

uint64_t specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, void *a4)
{
  v39 = a4;
  v6 = a4 + 2;
  v5 = a4[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v6 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  result = specialized ContiguousArray._endMutation()();
  v35 = *(a1 + 16);
  if (!v35)
  {
    return result;
  }

  v9 = 0;
  v34 = a1 + 32;
  while (1)
  {
    v13 = (v34 + 24 * v9);
    v14 = v13[1];
    v15 = v13[2];
    v38[0] = *v13;
    v38[1] = v14;
    v38[2] = v15;

    v16 = v15;
    a2(v37, v38);

    v17 = v37[0];
    v18 = v37[1];
    v19 = v37[2];
    v20 = *v39;
    v21 = v39[1];
    v22 = *(v21 + 16);
    if (*v39)
    {
      v23 = *v39;

      v24 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v17, v18, v21 + 32, v22, (v20 + 16), v20 + 32);
      v26 = v25;
      v22 = v27;

      if (v26)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!v22)
      {
LABEL_5:
        v10 = v39;
        specialized OrderedSet._appendNew(_:in:)(v17, v18, v22);
        v11 = v19;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = *(v10[2] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();

        goto LABEL_6;
      }

      v24 = 0;
      v32 = (v21 + 40);
      while (1)
      {
        v33 = *(v32 - 1) == v17 && *v32 == v18;
        if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v24;
        v32 += 2;
        if (v22 == v24)
        {
          v22 = 0;
          goto LABEL_5;
        }
      }
    }

    v28 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v28;
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v28);
      v28 = result;
      *v6 = result;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 >= *(v28 + 16))
    {
      goto LABEL_25;
    }

    v29 = v28 + 8 * v24;
    v30 = *(v29 + 32);

    v31 = *(v29 + 32);

    *(v29 + 32) = v30;
    result = specialized ContiguousArray._endMutation()();
LABEL_6:
    if (++v9 == v35)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a2;
  v61 = a3;
  v80 = a1;
  v10 = *(a4 + 24);
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](a1);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v55 - v14;
  v70 = v15;
  v68 = *(*(v15 + 16) - 8);
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = type metadata accessor for Optional();
  v72 = *(v76 - 8);
  v21 = *(v72 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = &v55 - v24;
  v25 = *(a5 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v31 = *(v57 + 64);
  v32 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v55 - v33;
  (*(v25 + 16))(v29, v80, a5, v32);
  v79 = v34;
  v35 = v10;
  v36 = v56;
  dispatch thunk of Sequence.makeIterator()();
  v37 = type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  destructiveProjectEnumData for NodePersonality.ShaderType(v37);
  ContiguousArray._makeMutableAndUnique()();
  destructiveProjectEnumData for NodePersonality.ShaderType(v37);
  v62 = a5;
  v63 = a6;
  v38 = TupleTypeMetadata2;
  v80 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 += 32;
  v73 = AssociatedConformanceWitness;
  v71 = v38 - 8;
  v65 = (v64 + 32);
  v66 = (v68 + 32);
  v67 = (v64 + 8);
  v68 += 8;
  v58 = (v64 + 16);
  while (1)
  {
    v42 = v75;
    dispatch thunk of IteratorProtocol.next()();
    v43 = v74;
    (*v72)(v74, v42, v76);
    if ((*(*(v38 - 8) + 48))(v43, 1, v38) == 1)
    {
      return (*(v57 + 8))(v79, v80);
    }

    v44 = *(v38 + 48);
    v45 = v69;
    (*v66)(v19, v43, v69);
    (*v65)(v36, &v43[v44], v35);
    v46 = v36;
    v47 = OrderedSet._find(_:)(v19, *v7, v7[1], v45, *(v70 + 32));
    v49 = v35;
    if (v50)
    {
      v40 = v48;
      v41 = type metadata accessor for OrderedSet();
      OrderedSet._appendNew(_:in:)(v19, v40, v41);
      (*v58)(v59, v46, v35);
      ContiguousArray.append(_:)();
      (*v67)(v46, v35);
      (*v68)(v19, v45);
      goto LABEL_3;
    }

    v51 = v47;
    ContiguousArray._makeMutableAndUnique()();
    v52 = v7[2];
    ContiguousArray._checkSubscript_mutating(_:)(v51);
    v53 = v78;
    closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v52 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v51, v60, v61, v46, v45, v49);
    v78 = v53;
    v35 = v49;
    if (v53)
    {
      break;
    }

    (*v67)(v46, v49);
    (*v68)(v19, v45);
    destructiveProjectEnumData for NodePersonality.ShaderType(v37);
LABEL_3:
    v36 = v46;
    v38 = TupleTypeMetadata2;
  }

  (*v67)(v46, v49);
  (*v68)(v19, v45);
  (*(v57 + 8))(v79, v80);
  return destructiveProjectEnumData for NodePersonality.ShaderType(v37);
}

{
  v30 = a3;
  v29 = a2;
  v9 = type metadata accessor for LazySequence();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = *(a4 + 24);
  v24 = *(a4 + 16);
  v25 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for LazyMapSequence();
  v28 = *(v14 - 8);
  v15 = *(v28 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  MEMORY[0x2667716D0](a5, a6, v16);
  v19 = swift_allocObject();
  v19[2] = v24;
  v19[3] = v13;
  v20 = v25;
  v21 = *(v25 + 32);
  v19[4] = a5;
  v19[5] = v21;
  v19[6] = a6;
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  (*(v27 + 8))(v12, v9);
  WitnessTable = swift_getWitnessTable();
  specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v18, v29, v30, v20, v14, WitnessTable);
  return (*(v28 + 8))(v18, v14);
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed B) -> (@out A1, @error @owned Error)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

__n128 sub_265EBFD8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined init with copy of (String, BuiltInDefinition)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph17BuiltInDefinitionVtMd, &_sSS_11ShaderGraph17BuiltInDefinitionVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (String, BuiltInDefinition)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph17BuiltInDefinitionVtMd, &_sSS_11ShaderGraph17BuiltInDefinitionVtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  return closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)(a1, v2[2], v2[3], a2);
}

BOOL OrderedSet.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = ContiguousArray.count.getter();
  if (v14 < ContiguousArray.count.getter())
  {
    return 0;
  }

  v16 = 0;
  v17 = *(a4 + 16);
  v18 = (v10 + 8);
  do
  {
    v15 = v17 == v16;
    if (v17 == v16)
    {
      break;
    }

    ContiguousArray.subscript.getter();
    ++v16;
    v19 = OrderedSet.contains(_:)(v13, a1, a2, a5, v22);
    (*v18)(v13, a5);
  }

  while (v19);
  return v15;
}

BOOL OrderedSet.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Set.count.getter();
  if (v13 < ContiguousArray.count.getter())
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a3 + 16);
  v17 = (v9 + 8);
  do
  {
    v14 = v16 == v15;
    if (v16 == v15)
    {
      break;
    }

    ContiguousArray.subscript.getter();
    ++v15;
    v18 = MEMORY[0x2667719A0](v12, a1, a4, a5);
    (*v17)(v12, a4);
  }

  while ((v18 & 1) != 0);
  return v14;
}

void *OrderedSet.isSubset<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v3 = 1;
    return (v3 & 1);
  }

  v4 = ContiguousArray.count.getter();
  MEMORY[0x28223BE20](v4);
  LOBYTE(v7) = 2;
  result = _s11ShaderGraph13_UnsafeBitsetV014_withTemporaryD08capacity3runySi_yACzKXEtKFZ04_s11a8Graph13_cd8V013withf32D08capacity3runxSi_xACzKXEtKlFZyN12KXEfU_Sb_Tg5SbSgACxs5Error_pRi_zRi0_zlySbIsglrzo_Tf1ncn_nTf4ndnn_n(v5, &v7, partial apply for closure #1 in OrderedSet.isSubset<A>(of:));
  v3 = v7;
  if (v7 != 2)
  {
    return (v3 & 1);
  }

  __break(1u);
  return result;
}

BOOL OrderedSet.isSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return OrderedSet.isSubset(of:)(a3, a4, a3, a2, a5, a6);
}

{
  return OrderedSet.isSubset(of:)(a3, a4, a3, a2, a5, a6);
}

BOOL OrderedSet.isSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ContiguousArray.count.getter();
  if (v10 >= Set.count.getter())
  {
    v14 = a1;
    v12 = type metadata accessor for Set();
    swift_getWitnessTable();
    return OrderedSet._isSuperset<A>(of:)(&v14, a2, a3, a4, v12, a5);
  }

  else
  {
    return 0;
  }
}

BOOL OrderedSet.isStrictSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = ContiguousArray.count.getter();
  if (v11 >= ContiguousArray.count.getter())
  {
    return 0;
  }

  return OrderedSet.isSubset(of:)(a1, a2, v12, a4, a5, a6);
}

BOOL OrderedSet.isStrictSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ContiguousArray.count.getter();
  if (v9 >= Set.count.getter())
  {
    return 0;
  }

  return OrderedSet.isSubset(of:)(a1, v10, a3, a4, a5);
}

BOOL OrderedSet.isStrictSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = ContiguousArray.count.getter();
  if (ContiguousArray.count.getter() >= v11)
  {
    return 0;
  }

  return OrderedSet.isSubset(of:)(a3, a4, v12, a2, a5, a6);
}

uint64_t OrderedSet.isStrictSuperset(of:)()
{
  v0 = ContiguousArray.count.getter();
  if (Set.count.getter() >= v0)
  {
    v1 = 0;
  }

  else
  {
    type metadata accessor for OrderedSet();
    swift_getWitnessTable();
    v1 = Set.isSubset<A>(of:)();
  }

  return v1 & 1;
}

void *OrderedSet.isStrictSubset<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *(*a8)(char *__return_ptr, void **))
{
  v9 = ContiguousArray.count.getter();
  v11 = 2;
  result = _s11ShaderGraph13_UnsafeBitsetV014_withTemporaryD08capacity3runySi_yACzKXEtKFZ04_s11a8Graph13_cd8V013withf32D08capacity3runxSi_xACzKXEtKlFZyN12KXEfU_Sb_Tg5SbSgACxs5Error_pRi_zRi0_zlySbIsglrzo_Tf1ncn_nTf4ndnn_n(v9, &v11, a8);
  if (v11 != 2)
  {
    return (v11 & 1);
  }

  __break(1u);
  return result;
}

uint64_t OrderedSet.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v30 = a3;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v31 = v17;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 1;
  }

  v31 = a2;
  if (Collection.isEmpty.getter())
  {
    return 1;
  }

  v20 = ContiguousArray.count.getter();
  v21 = (v10 + 8);
  if (ContiguousArray.count.getter() >= v20)
  {
    v25 = 0;
    v26 = *(a4 + 16);
    do
    {
      v18 = v26 == v25;
      if (v26 == v25)
      {
        break;
      }

      ContiguousArray.subscript.getter();
      ++v25;
      v27 = OrderedSet.contains(_:)(v16, v29, a2, a5, a6);
      (*v21)(v16, a5);
    }

    while (!v27);
  }

  else
  {
    v22 = 0;
    v23 = *(a2 + 16);
    do
    {
      v18 = v23 == v22;
      if (v23 == v22)
      {
        break;
      }

      ContiguousArray.subscript.getter();
      ++v22;
      v24 = OrderedSet.contains(_:)(v13, v30, a4, a5, a6);
      (*v21)(v13, a5);
    }

    while (!v24);
  }

  return v18;
}

uint64_t OrderedSet.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v40 - v12;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter() & 1) != 0 || (Set.isEmpty.getter())
  {
    return 1;
  }

  v21 = ContiguousArray.count.getter();
  if (Set.count.getter() >= v21)
  {
    v26 = 0;
    v27 = *(a3 + 16);
    v28 = (v14 + 8);
    do
    {
      v19 = v27 == v26;
      if (v27 == v26)
      {
        break;
      }

      ContiguousArray.subscript.getter();
      ++v26;
      v29 = MEMORY[0x2667719A0](v18, a1, a4, a5);
      (*v28)(v18, a4);
    }

    while ((v29 & 1) == 0);
    return v19;
  }

  v44 = a2;
  v45 = a5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    result = Set.Iterator.init(_cocoa:)();
    a1 = v47;
    v22 = v48;
    v23 = v49;
    v24 = v50;
    v25 = v51;
  }

  else
  {
    v30 = -1 << *(a1 + 32);
    v22 = a1 + 56;
    v23 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v25 = v32 & *(a1 + 56);

    v24 = 0;
  }

  v46 = (v14 + 56);
  v33 = v14;
  v34 = (v23 + 64) >> 6;
  v40[1] = v23;
  v40[2] = v33 + 16;
  v41 = v33;
  v43 = (v33 + 8);
  while (1)
  {
    v36 = v25;
    v37 = v24;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
LABEL_28:
      v19 = 1;
      (*v46)(v13, 1, 1, a4);
LABEL_29:
      outlined consume of [String : GeomPropDef].Iterator._Variant();
      return v19;
    }

    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v42 = v24;
    v25 = v36;
LABEL_18:
    (*v46)(v13, 0, 1, a4);
    v35 = OrderedSet.contains(_:)(v13, v44, a3, a4, v45);
    result = (*v43)(v13, a4);
    if (v35)
    {
      v19 = 0;
      goto LABEL_29;
    }
  }

  v38 = v36;
  if (v36)
  {
LABEL_17:
    v42 = v37;
    v25 = (v38 - 1) & v38;
    (*(v41 + 16))(v13, *(a1 + 48) + *(v41 + 72) * (__clz(__rbit64(v38)) | (v24 << 6)), a4);
    goto LABEL_18;
  }

  v39 = v24;
  while (1)
  {
    v24 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v24 >= v34)
    {
      goto LABEL_28;
    }

    v38 = *(v22 + 8 * v24);
    ++v39;
    if (v38)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t OrderedSet.isDisjoint<A>(with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a1;
  v36 = a2;
  v34 = *(a4 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v33 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v21 = *(v35 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v33 - v22;
  v37 = a3;
  v40 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 1;
  }

  (*(v16 + 16))(v33, v39, a5);
  v39 = v23;
  dispatch thunk of Sequence.makeIterator()();
  v25 = v34;
  v26 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v27 = (v25 + 48);
  v28 = (v25 + 32);
  v29 = (v25 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v30 = (*v27)(v15, 1, a4);
    v24 = v30 == 1;
    if (v30 == 1)
    {
      break;
    }

    (*v28)(v11, v15, a4);
    v31 = OrderedSet.contains(_:)(v11, v36, v37, a4, v38);
    (*v29)(v11, a4);
  }

  while (!v31);
  (*(v35 + 8))(v39, v26);
  return v24;
}

unint64_t closure #1 in OrderedSet.isSubset<A>(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v45 = a9;
  v53 = a8;
  v47 = a7;
  v48 = a1;
  v54 = a4;
  v51 = a3;
  v46 = *(a5 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v43 - v17;
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v25 = *(v44 + 64);
  v26 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v43 - v27;
  (*(v19 + 16))(v23, a2, a6, v26);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = v28;
  v53 = AssociatedTypeWitness;
  v50 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v30 = v46;
  v49 = *(v46 + 48);
  if (v49(v18, 1, a5) != 1)
  {
    v33 = *(v30 + 32);
    v34 = (v30 + 8);
    v35 = v47;
    v33(v14, v18, a5);
    while (1)
    {
      result = OrderedSet._find(_:)(v14, v51, v54, a5, v35);
      if ((v36 & 1) != 0 || (v37 = (result >> 3) & 0x1FFFFFFFFFFFFFF8, v38 = *(*v48 + v37), *(*v48 + v37) = v38 | (1 << result), (v38 & (1 << result)) != 0))
      {
        (*v34)(v14, a5);
      }

      else
      {
        v39 = v48[2];
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
          return result;
        }

        v48[2] = v40;
        v41 = ContiguousArray.count.getter();
        (*v34)(v14, a5);
        v42 = v40 == v41;
        v35 = v47;
        if (v42)
        {
          v31 = 1;
          goto LABEL_3;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v49(v18, 1, a5) == 1)
      {
        break;
      }

      v33(v14, v18, a5);
    }
  }

  v31 = 0;
LABEL_3:
  result = (*(v44 + 8))(v52, v53);
  *v45 = v31;
  return result;
}

BOOL OrderedSet._isSuperset<A>(of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v37 = a6;
  v35 = a2;
  v38 = a1;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v22 = *(v34 + 64);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v33 - v24;
  (*(v16 + 16))(v20, v38, a5, v23);
  v38 = v25;
  dispatch thunk of Sequence.makeIterator()();
  v26 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v27 = (v8 + 48);
  v28 = (v8 + 32);
  v29 = (v8 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v30 = (*v27)(v15, 1, a4);
    if (v30 == 1)
    {
      break;
    }

    (*v28)(v11, v15, a4);
    v31 = OrderedSet.contains(_:)(v11, v35, v36, a4, v37);
    (*v29)(v11, a4);
  }

  while (v31);
  (*(v34 + 8))(v38, v26);
  return v30 == 1;
}

unint64_t closure #1 in OrderedSet.isStrictSubset<A>(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v50 = a1;
  v54 = a3;
  v55 = a7;
  v59 = a4;
  v49 = a8;
  v10 = *(a5 - 8);
  v57 = a2;
  v58 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - v16;
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v24 = *(v48 + 64);
  v25 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v48 - v26;
  (*(v18 + 16))(v22, v57, a6, v25);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v27;
  v57 = AssociatedTypeWitness;
  v53 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v29 = v58;
  v52 = *(v58 + 48);
  if (v52(v17, 1, a5) != 1)
  {
    v33 = 0;
    v34 = 0;
    v36 = *(v29 + 32);
    v35 = v29 + 32;
    v51 = v36;
    v37 = (v35 - 24);
    v58 = v35;
    v36(v13, v17, a5);
    while (1)
    {
      result = OrderedSet._find(_:)(v13, v54, v59, a5, v55);
      if (v38)
      {
        if (v33)
        {
          v34 = 1;
          v33 = 1;
LABEL_6:
          (*v37)(v13, a5);
          v30 = v34;
          goto LABEL_7;
        }

        v39 = v50[2];
        v40 = ContiguousArray.count.getter();
        (*v37)(v13, a5);
        v30 = 1;
        v33 = 1;
        if (v39 == v40)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v41 = v50;
        v42 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
        v43 = *(*v50 + v42);
        *(*v50 + v42) = v43 | (1 << result);
        if ((v43 & (1 << result)) != 0)
        {
          goto LABEL_6;
        }

        v44 = v41[2];
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          return result;
        }

        v41[2] = v45;
        v46 = ContiguousArray.count.getter();
        (*v37)(v13, a5);
        v47 = v45 == v46;
        v30 = (v45 != v46) & v34;
        if (v47 && ((v34 ^ 1) & 1) == 0)
        {
          LOBYTE(v30) = 1;
          goto LABEL_3;
        }
      }

LABEL_7:
      dispatch thunk of IteratorProtocol.next()();
      v34 = v30;
      if (v52(v17, 1, a5) == 1)
      {
        break;
      }

      v51(v13, v17, a5);
    }
  }

  LOBYTE(v30) = 0;
LABEL_3:
  v31 = v49;
  result = (*(v48 + 8))(v56, v57);
  *v31 = v30;
  return result;
}

uint64_t closure #1 in OrderedSet.isStrictSuperset<A>(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, BOOL *a8@<X8>)
{
  v50 = a8;
  v57 = a7;
  v60 = a4;
  v52 = a3;
  v59 = a2;
  v55 = *(a5 - 8);
  v11 = v55[8];
  MEMORY[0x28223BE20](a1);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v49 - v16;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v23 = *(v51 + 64);
  v24 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v49 - v25;
  (*(v17 + 16))(v21, v59, a6, v24);
  v27 = v53;
  dispatch thunk of Sequence.makeIterator()();
  v28 = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v26;
  v59 = AssociatedTypeWitness;
  v30 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v31 = v55;
  v32 = (v55 + 6);
  v56 = v55[6];
  if (v56(v27, 1, a5) != 1)
  {
    v36 = v31[4];
    v37 = v31 + 4;
    v54 = (v31 + 1);
    v55 = v36;
    (v36)(v13, v27, a5);
    while (1)
    {
      v38 = OrderedSet._find(_:)(v13, v28, v60, a5, v57);
      if (v39)
      {
        (*v54)(v13, a5);
LABEL_14:
        result = (*(v51 + 8))(v58, v59);
        v35 = 0;
        goto LABEL_15;
      }

      v40 = (v38 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v41 = *(*a1 + v40);
      *(*a1 + v40) = v41 | (1 << v38);
      if ((v41 & (1 << v38)) != 0)
      {
        (*v54)(v13, a5);
      }

      else
      {
        v42 = v32;
        v43 = v30;
        result = v60;
        v44 = a1[2];
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          return result;
        }

        a1[2] = v45;
        v46 = v37;
        v47 = ContiguousArray.count.getter();
        (*v54)(v13, a5);
        v48 = v45 == v47;
        v37 = v46;
        v27 = v53;
        v30 = v43;
        v32 = v42;
        if (v48)
        {
          goto LABEL_14;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v56(v27, 1, a5) == 1)
      {
        break;
      }

      (v55)(v13, v27, a5);
    }
  }

  (*(v51 + 8))(v58, v59);
  v33 = a1[2];
  result = ContiguousArray.count.getter();
  v35 = v33 < result;
LABEL_15:
  *v50 = v35;
  return result;
}

uint64_t Surface.dataType.getter(char a1)
{
  if (a1 == 3)
  {
    return 54;
  }

  else
  {
    return 53;
  }
}

uint64_t ShaderType.dataType.getter(char a1)
{
  if (a1)
  {
    return 54;
  }

  else
  {
    return 53;
  }
}

uint64_t SGDataType.vectorElementType()(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 3:
    case 7:
    case 9:
      result = a1;
      break;
    case 14:
    case 15:
    case 17:
    case 18:
    case 21:
    case 25:
    case 29:
    case 32:
    case 35:
    case 38:
    case 41:
    case 44:
    case 49:
    case 52:
      result = 9;
      break;
    case 20:
    case 22:
    case 26:
    case 30:
    case 33:
    case 36:
    case 39:
    case 42:
    case 45:
    case 47:
    case 50:
    case 55:
    case 56:
      result = 7;
      break;
    case 24:
    case 28:
    case 31:
      result = 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SGDataTypeStorage.valueString.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  switch(*(v0 + 64))
  {
    case 1:
      LOBYTE(v55) = *v0;
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 2:
    case 3:
      LODWORD(v55) = vmovn_s16(vzip1q_s8(v1, v1)).u32[0];
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 4:
      LOWORD(v55) = *v0;
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 5:
      v55 = 0;
      v56 = 0xE000000000000000;
      Float.write<A>(to:)();
      return v55;
    case 6:
      v41 = *v0;

      return v41;
    case 7:
      v55 = 0;
      v56 = 0xE000000000000000;
      MEMORY[0x266771550](40, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_33;
    case 8:
      v55 = 0;
      v56 = 0xE000000000000000;
      MEMORY[0x266771550](40, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_33;
    case 9:
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      MEMORY[0x266771550](40, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_33:
      Float.write<A>(to:)();
      goto LABEL_34;
    case 0xA:
      LODWORD(v55) = vmovn_s16(vzip1q_s8(v1, v1)).u32[0];
      v7 = &_ss5SIMD2Vys6UInt16VGMd;
      v8 = &_ss5SIMD2Vys6UInt16VGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
      v9 = &lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>;
      goto LABEL_31;
    case 0xB:
      v55 = *v0;
      v7 = &_ss5SIMD3Vys6UInt16VGMd;
      v8 = &_ss5SIMD3Vys6UInt16VGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
      v9 = &lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>;
      goto LABEL_31;
    case 0xC:
      v55 = *v0;
      v7 = &_ss5SIMD4Vys6UInt16VGMd;
      v8 = &_ss5SIMD4Vys6UInt16VGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
      v9 = &lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>;
LABEL_31:
      lazy protocol witness table accessor for type [String] and conformance [A](v9, v7, v8);
      return SIMD.description.getter();
    case 0xD:
      v55 = 40;
      v56 = 0xE100000000000000;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v39);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_26;
    case 0xE:
      v55 = 40;
      v56 = 0xE100000000000000;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v5);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v6);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_26;
    case 0xF:
      v55 = 40;
      v56 = 0xE100000000000000;
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v10);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v11);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v12);

      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_26:
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v40);

LABEL_34:
      v42 = 41;
      goto LABEL_38;
    case 0x10:
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      MEMORY[0x266771550](91, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_29;
    case 0x11:
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      MEMORY[0x266771550](91, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_29;
    case 0x12:
      v52 = *(v0 + 48);
      v54 = *(v0 + 32);
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      MEMORY[0x266771550](91, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_29:
      Float.write<A>(to:)();
      goto LABEL_37;
    case 0x13:
      v55 = 91;
      v56 = 0xE100000000000000;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v43);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v44);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v45);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_36;
    case 0x14:
      v55 = 91;
      v56 = 0xE100000000000000;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v16);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v17);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v18);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v19);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v20);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v21);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v22);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v23);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_36;
    case 0x15:
      v53 = vextq_s8(*(v0 + 16), *(v0 + 16), 8uLL);
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      MEMORY[0x266771550](91, 0xE100000000000000);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v24);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v25);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v26);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v27);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v28);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v29);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v30);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v31);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v32);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v33);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v35);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v36);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v37);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v38);

      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_36:
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v46);

LABEL_37:
      v42 = 93;
LABEL_38:
      MEMORY[0x266771550](v42, 0xE100000000000000);
      return v55;
    case 0x16:
    case 0x17:
      v3 = *v0;
      outlined init with copy of SGDataTypeStorage(v0, &v55);
      v4 = specialized CGColorCodingContainer.init(_:)(v3);
      v48 = v47;
      v50 = v49;
      v55 = MEMORY[0x2667717B0](v4, MEMORY[0x277D85048]);
      v56 = v51;
      MEMORY[0x266771550](2112032, 0xE300000000000000);

      MEMORY[0x266771550](v48, v50);
      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    default:
      v55 = 0;
      v56 = 0xE000000000000000;
      if (v1.i8[0])
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (v1.i8[0])
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      MEMORY[0x266771550](v13, v14);
LABEL_41:

      return v55;
  }
}

__n128 SGDataTypeStorage.init(type:scalar:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  specialized SGDataTypeStorage.init(type:scalar:)(a2, a1, v8);

  if (!v3)
  {
    v7 = v8[3];
    *(a3 + 32) = v8[2];
    *(a3 + 48) = v7;
    *(a3 + 64) = v9;
    result = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 SGDataTypeStorage.init(type:value:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  specialized SGDataTypeStorage.init(type:value:)(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t SGDataType.canonicalized()(uint64_t result)
{
  v1 = result - 32;
  if (result - 32) <= 0x18 && ((0x1F680DBu >> v1))
  {
    return qword_265F28400[v1];
  }

  return result;
}

unint64_t SGDataTypeStorage.bitPattern.getter()
{
  LODWORD(v1) = *v0;
  v2 = *(v0 + 64);
  v3 = *v0;
  if (v2 == 5)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = v4;
    v5 = v2 != 5;
  }

  if (v2 == 3)
  {
    v3 = *v0;
    v5 = 0;
  }

  if (v2 == 2)
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v1) = 0;
    v6 = 1;
  }

  if (v2 == 1)
  {
    LODWORD(v1) = *v0;
    v6 = 0;
  }

  if (!*(v0 + 64))
  {
    LODWORD(v1) = *v0 & 1;
    v6 = 0;
  }

  if (*(v0 + 64) <= 2u)
  {
    v1 = v1;
  }

  else
  {
    v1 = v3;
  }

  if (*(v0 + 64) <= 2u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  return v1 | (v7 << 32);
}

uint64_t CGColorCodingContainer.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CGColorCodingContainer.CodingKeys()
{
  if (*v0)
  {
    result = 0x617073726F6C6F63;
  }

  else
  {
    result = 0x6E656E6F706D6F63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CGColorCodingContainer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617073726F6C6F63 && a2 == 0xEE00656D614E6563)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CGColorCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CGColorCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CGColorCodingContainer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized CGColorCodingContainer.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

ShaderGraph::SGDataTypeStorage::CodingKeys_optional __swiftcall SGDataTypeStorage.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_value;
  }

  else
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

ShaderGraph::SGDataTypeStorage::CodingKeys_optional __swiftcall SGDataTypeStorage.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_value;
  }

  else
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SGDataTypeStorage.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeStorage.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65756C6176;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeStorage.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGDataTypeStorage.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeStorage.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGDataTypeStorage.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SGDataTypeStorage.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGDataTypeStorage.CodingKeys()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGDataTypeStorage.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGDataTypeStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGDataTypeStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 SGDataTypeStorage.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized SGDataTypeStorage.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t SGDataTypeStorage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 16);
  v13 = *(v3 + 32);
  v14 = *(v3 + 48);
  v15 = *(v3 + 8);
  v16 = HIDWORD(*v3);
  v17 = *v3;
  switch(*(v3 + 64))
  {
    case 1:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v41) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 2:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v41) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 3:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v41) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 4:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v41) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 5:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v41) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 6:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v41) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 7:
      v40 = *v3;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v41 = v40;
        v43 = 1;
        v19 = &_ss5SIMD2VySfGMd;
        v20 = &_ss5SIMD2VySfGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>;
        goto LABEL_47;
      }

      break;
    case 8:
      v40 = *v3;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v41 = v40;
        v43 = 1;
        v19 = &_ss5SIMD3VySfGMd;
        v20 = &_ss5SIMD3VySfGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
        goto LABEL_47;
      }

      break;
    case 9:
      v40 = *v3;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v41 = v40;
        v43 = 1;
        v19 = &_ss5SIMD4VySfGMd;
        v20 = &_ss5SIMD4VySfGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>;
        goto LABEL_47;
      }

      break;
    case 0xA:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LODWORD(v41) = v17;
        v43 = 1;
        v19 = &_ss5SIMD2Vys6UInt16VGMd;
        v20 = &_ss5SIMD2Vys6UInt16VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>;
        goto LABEL_47;
      }

      break;
    case 0xB:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v41 = v17;
        v43 = 1;
        v19 = &_ss5SIMD3Vys6UInt16VGMd;
        v20 = &_ss5SIMD3Vys6UInt16VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>;
        goto LABEL_47;
      }

      break;
    case 0xC:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v41 = v17;
        v43 = 1;
        v19 = &_ss5SIMD4Vys6UInt16VGMd;
        v20 = &_ss5SIMD4Vys6UInt16VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>;
        goto LABEL_47;
      }

      break;
    case 0xD:
      v40 = *v3;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v41 = v40;
        v43 = 1;
        v19 = &_ss5SIMD2Vys5Int32VGMd;
        v20 = &_ss5SIMD2Vys5Int32VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD2<Int32> and conformance SIMD2<A>;
        goto LABEL_47;
      }

      break;
    case 0xE:
      v40 = *v3;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v41 = v40;
        v43 = 1;
        v19 = &_ss5SIMD3Vys5Int32VGMd;
        v20 = &_ss5SIMD3Vys5Int32VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD3<Int32> and conformance SIMD3<A>;
        goto LABEL_47;
      }

      break;
    case 0xF:
      v40 = *v3;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v41 = v40;
        v43 = 1;
        v19 = &_ss5SIMD4Vys5Int32VGMd;
        v20 = &_ss5SIMD4Vys5Int32VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
        v21 = &lazy protocol witness table cache variable for type SIMD4<Int32> and conformance SIMD4<A>;
LABEL_47:
        lazy protocol witness table accessor for type [String] and conformance [A](v21, v19, v20);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      break;
    case 0x10:
      v40 = *v3;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_265F21D90;
        *(v18 + 32) = v40;
        *(v18 + 40) = v15;
        *&v41 = v18;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
        lazy protocol witness table accessor for type [SIMD2<Float>] and conformance <A> [A]();
        goto LABEL_41;
      }

      break;
    case 0x11:
      v38 = *(v3 + 32);
      v39 = v12;
      v40 = v11;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
        v22 = swift_allocObject();
        v24 = v39;
        v23 = v40;
        v22[1] = xmmword_265F21D80;
        v22[2] = v23;
        v25 = v38;
        v22[3] = v24;
        v22[4] = v25;
        *&v41 = v22;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
        lazy protocol witness table accessor for type [SIMD3<Float>] and conformance <A> [A]();
        goto LABEL_41;
      }

      break;
    case 0x12:
      v37 = *(v3 + 48);
      v38 = v13;
      v39 = v12;
      v40 = v11;
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
        v28 = swift_allocObject();
        v30 = v39;
        v29 = v40;
        v28[1] = xmmword_265F21D70;
        v28[2] = v29;
        v31 = v37;
        v32 = v38;
        v28[3] = v30;
        v28[4] = v32;
        v28[5] = v31;
        *&v41 = v28;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
        lazy protocol witness table accessor for type [SIMD4<Float>] and conformance <A> [A]();
LABEL_41:
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        goto LABEL_42;
      }

      break;
    case 0x13:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2Vys6UInt16VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2Vys6UInt16VGGMR);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_265F21D90;
        *(v34 + 32) = v17;
        *(v34 + 36) = v16;
        *&v41 = v34;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2Vys6UInt16VGGMd, &_sSays5SIMD2Vys6UInt16VGGMR);
        lazy protocol witness table accessor for type [SIMD2<UInt16>] and conformance <A> [A]();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      break;
    case 0x14:
      v39 = *(v3 + 16);
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3Vys6UInt16VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3Vys6UInt16VGGMR);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_265F21D80;
        *(v26 + 32) = v17;
        *(v26 + 40) = v15;
        *(v26 + 48) = v39;
        *&v41 = v26;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3Vys6UInt16VGGMd, &_sSays5SIMD3Vys6UInt16VGGMR);
        lazy protocol witness table accessor for type [SIMD3<UInt16>] and conformance <A> [A]();
        goto LABEL_34;
      }

      break;
    case 0x15:
      v39 = *(v3 + 16);
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4Vys6UInt16VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4Vys6UInt16VGGMR);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_265F21D70;
        *(v27 + 32) = v17;
        *(v27 + 40) = v15;
        *(v27 + 48) = v39;
        *&v41 = v27;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4Vys6UInt16VGGMd, &_sSays5SIMD4Vys6UInt16VGGMR);
        lazy protocol witness table accessor for type [SIMD4<UInt16>] and conformance <A> [A]();
LABEL_34:
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      break;
    case 0x16:
      LOBYTE(v41) = 0;
      goto LABEL_53;
    case 0x17:
      LOBYTE(v41) = 0;
LABEL_53:
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        outlined init with copy of SGDataTypeStorage(v3, &v41);
        *&v41 = specialized CGColorCodingContainer.init(_:)(v17);
        *(&v41 + 1) = v35;
        v42 = v36;
        v43 = 1;
        lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

LABEL_42:
      }

      break;
    default:
      LOBYTE(v41) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v41) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 protocol witness for Decodable.init(from:) in conformance SGDataTypeStorage@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized SGDataTypeStorage.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SGDataTypeStorage(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return SGDataTypeStorage.encode(to:)(a1);
}

void SGDataTypeStorage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  switch(v0[4].n128_u8[0])
  {
    case 1u:
      v15 = *v0;
      MEMORY[0x266772770](1);
      v3 = v15;
      goto LABEL_26;
    case 2u:
      v12 = *v0;
      v13 = 2;
      goto LABEL_18;
    case 3u:
      v12 = *v0;
      v13 = 3;
LABEL_18:
      MEMORY[0x266772770](v13);
      Hasher._combine(_:)(v12);
      return;
    case 4u:
      v9 = *v0;
      MEMORY[0x266772770](4);
      Hasher._combine(_:)(v9);
      return;
    case 5u:
      v36 = COERCE_FLOAT(*v0);
      MEMORY[0x266772770](5);
      v7 = 0.0;
      if (v36 != 0.0)
      {
        v7 = v36;
      }

      goto LABEL_32;
    case 6u:
      MEMORY[0x266772770](6);

      String.hash(into:)();
      return;
    case 7u:
      v33 = *v0;
      MEMORY[0x266772770](7);
      v14 = v33.n128_f32[0];
      if (v33.n128_f32[0] == 0.0)
      {
        v14 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v14));
      v7 = v33.n128_f32[1];
      goto LABEL_22;
    case 8u:
      v41 = *v0;
      MEMORY[0x266772770](8);
      v16 = v41;
      goto LABEL_44;
    case 9u:
      v31 = *v0;
      MEMORY[0x266772770](9);
      v11 = v31;
      goto LABEL_39;
    case 0xAu:
      v40.n128_u32[0] = *v0;
      MEMORY[0x266772770](10);
      Hasher._combine(_:)(v40.n128_u16[0]);
      Hasher._combine(_:)(v40.n128_u16[1]);
      return;
    case 0xBu:
      v30 = v0->n128_u64[0];
      MEMORY[0x266772770](11);
      Hasher._combine(_:)(v30);
      Hasher._combine(_:)(WORD1(v30));
      v8 = WORD2(v30);
      goto LABEL_29;
    case 0xCu:
      v10 = 12;
      goto LABEL_49;
    case 0xDu:
      v38.n128_u64[0] = v0->n128_u64[0];
      MEMORY[0x266772770](13);
      Hasher._combine(_:)(v38.n128_u32[0]);
      Hasher._combine(_:)(v38.n128_u32[1]);
      return;
    case 0xEu:
      v29 = *v0;
      MEMORY[0x266772770](14);
      Hasher._combine(_:)(v29.n128_u32[0]);
      Hasher._combine(_:)(v29.n128_u32[1]);
      Hasher._combine(_:)(v29.n128_u32[2]);
      return;
    case 0xFu:
      v32 = *v0;
      MEMORY[0x266772770](15);
      Hasher._combine(_:)(v32.n128_u32[0]);
      Hasher._combine(_:)(v32.n128_u32[1]);
      Hasher._combine(_:)(v32.n128_u32[2]);
      Hasher._combine(_:)(v32.n128_u32[3]);
      return;
    case 0x10u:
      v28 = *v0;
      MEMORY[0x266772770](16);
      v4 = v28.n128_f32[0];
      if (v28.n128_f32[0] == 0.0)
      {
        v4 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v4));
      v5 = v28.n128_f32[1];
      if (v28.n128_f32[1] == 0.0)
      {
        v5 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v5));
      v6 = v28.n128_f32[2];
      if (v28.n128_f32[2] == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v6));
      v7 = v28.n128_f32[3];
LABEL_22:
      if (v7 == 0.0)
      {
        v7 = 0.0;
      }

LABEL_32:
      Hasher._combine(_:)(LODWORD(v7));
      return;
    case 0x11u:
      v23 = v0[1];
      v34 = *v0;
      v20 = v0[2];
      MEMORY[0x266772770](17);
      specialized SIMD.hash(into:)(v34);
      specialized SIMD.hash(into:)(v23);
      v16 = v20;
LABEL_44:

      specialized SIMD.hash(into:)(v16);
      return;
    case 0x12u:
      v19 = v0[3];
      v22 = v0[2];
      v26 = v0[1];
      v39 = *v0;
      MEMORY[0x266772770](18);
      specialized SIMD.hash(into:)(v39);
      specialized SIMD.hash(into:)(v26);
      specialized SIMD.hash(into:)(v22);
      v11 = v19;
LABEL_39:

      specialized SIMD.hash(into:)(v11);
      return;
    case 0x13u:
      v10 = 19;
LABEL_49:
      v42 = v0->n128_u64[0];
      MEMORY[0x266772770](v10);
      Hasher._combine(_:)(v42);
      Hasher._combine(_:)(WORD1(v42));
      Hasher._combine(_:)(WORD2(v42));
      v17 = HIWORD(v42);
      goto LABEL_50;
    case 0x14u:
      v24 = v0[1].n128_i64[0];
      v35 = *v0;
      MEMORY[0x266772770](20);
      Hasher._combine(_:)(v35.n128_u16[0]);
      Hasher._combine(_:)(v35.n128_u16[1]);
      Hasher._combine(_:)(v35.n128_u16[2]);
      Hasher._combine(_:)(v35.n128_u16[4]);
      Hasher._combine(_:)(v35.n128_u16[5]);
      Hasher._combine(_:)(v35.n128_u16[6]);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(WORD1(v24));
      v8 = WORD2(v24);
LABEL_29:
      Hasher._combine(_:)(v8);
      return;
    case 0x15u:
      v21 = vextq_s8(v0[1], v0[1], 8uLL).u64[0];
      v25 = v0[1].n128_i64[0];
      v37 = *v0;
      MEMORY[0x266772770](21);
      Hasher._combine(_:)(v37.n128_u16[0]);
      Hasher._combine(_:)(v37.n128_u16[1]);
      Hasher._combine(_:)(v37.n128_u16[2]);
      Hasher._combine(_:)(v37.n128_u16[3]);
      Hasher._combine(_:)(v37.n128_u16[4]);
      Hasher._combine(_:)(v37.n128_u16[5]);
      Hasher._combine(_:)(v37.n128_u16[6]);
      Hasher._combine(_:)(v37.n128_u16[7]);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(WORD1(v25));
      Hasher._combine(_:)(WORD2(v25));
      Hasher._combine(_:)(HIWORD(v25));
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(WORD1(v21));
      Hasher._combine(_:)(WORD2(v21));
      v17 = HIWORD(v21);
LABEL_50:
      Hasher._combine(_:)(v17);
      return;
    case 0x16u:
      v18 = 22;
      goto LABEL_52;
    case 0x17u:
      v18 = 23;
LABEL_52:
      MEMORY[0x266772770](v18);
      type metadata accessor for CGColorRef(0);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      _CFObject.hash(into:)();
      break;
    default:
      v27 = *v0;
      MEMORY[0x266772770](0);
      v3 = v27 & 1;
LABEL_26:
      Hasher._combine(_:)(v3);
      break;
  }
}

Swift::Int SGDataTypeStorage.hashValue.getter()
{
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeStorage()
{
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeStorage()
{
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeStorage(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8 = a1[4].i8[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static SGDataTypeStorage.== infix(_:_:)(v7, v9) & 1;
}

uint64_t SGDataType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  SGDataType.stringValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

void *protocol witness for Decodable.init(from:) in conformance SGDataType@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized SGDataType.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SGDataType(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  SGDataType.stringValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

Swift::Int ShaderType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int Surface.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

void specialized SIMD.hash(into:)(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
  v4 = a1.n128_f32[3];
  if (a1.n128_f32[3] == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v4));
}

{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

uint64_t specialized static SGDataTypeStorage.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  switch(a1[4].i8[0])
  {
    case 1:
      if (a2[4].i8[0] != 1)
      {
        goto LABEL_102;
      }

      v6 = a2->u8[0] == v2.u8[0];
      return v6 & 1;
    case 2:
      if (a2[4].i8[0] == 2)
      {
        goto LABEL_36;
      }

      goto LABEL_102;
    case 3:
      if (a2[4].i8[0] != 3)
      {
        goto LABEL_102;
      }

LABEL_36:
      v6 = v2.i32[0] == a2->i32[0];
      return v6 & 1;
    case 4:
      if (a2[4].i8[0] != 4)
      {
        goto LABEL_102;
      }

      v6 = a2->u16[0] == v2.u16[0];
      return v6 & 1;
    case 5:
      if (a2[4].i8[0] != 5)
      {
        goto LABEL_102;
      }

      v6 = v2.f32[0] == a2->f32[0];
      return v6 & 1;
    case 6:
      if (a2[4].i8[0] != 6)
      {
        goto LABEL_102;
      }

      if (v2.i64[0] == a2->i64[0] && v2.i64[1] == a2->i64[1])
      {
        v6 = 1;
        return v6 & 1;
      }

      else
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

    case 7:
      if (a2[4].i8[0] == 7)
      {
        v8 = vceq_f32(*v2.f32, *a2->f32);
        if (v8.i8[0])
        {
          goto LABEL_88;
        }
      }

      goto LABEL_102;
    case 8:
      v6 = 0;
      if (a2[4].i8[0] == 8)
      {
        v40 = vmovn_s32(vceqq_f32(v2, *a2));
        if (v40.i8[0] & 1) != 0 && (v40.i8[2])
        {
          v6 = v40.i8[4];
        }
      }

      return v6 & 1;
    case 9:
      v6 = 0;
      if (a2[4].i8[0] != 9)
      {
        return v6 & 1;
      }

      v15 = vmovn_s32(vceqq_f32(v2, *a2));
      if ((v15.i8[0] & 1) == 0 || (v15.i8[2] & 1) == 0 || (v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      goto LABEL_34;
    case 0xA:
      if (a2[4].i8[0] != 10)
      {
        goto LABEL_102;
      }

      v3.i16[0] = a2->i16[0];
      v3.i16[2] = a2->i16[1];
      v2.i32[0] = v2.u16[0];
      v2.i32[1] = HIWORD(a1->u32[0]);
      *v3.f32 = vand_s8(*v3.f32, 0xFFFF0000FFFFLL);
      goto LABEL_87;
    case 0xB:
      if (a2[4].i8[0] != 11)
      {
        goto LABEL_102;
      }

      v11.i32[0] = v2.u16[0];
      v11.i32[1] = v2.u16[1];
      v12 = vceq_s32(v11, *&vmovl_u16(*a2->f32));
      if ((v12.i32[0] & v12.i32[1] & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = vceq_s16(*&v2, *a2).i8[4];
      return v6 & 1;
    case 0xC:
      if (a2[4].i8[0] != 12)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v13.i32[0] = v2.u16[0];
      v13.i32[1] = v2.u16[1];
      v14 = vceq_s32(v13, *&vmovl_u16(*a2->f32));
      if ((v14.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v14.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vceq_s16(*v2.f32, *a2->f32);
      if ((v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      goto LABEL_34;
    case 0xD:
      if (a2[4].i8[0] != 13)
      {
        goto LABEL_102;
      }

      v3.i64[0] = a2->i64[0];
LABEL_87:
      v8 = vceq_s32(*v2.f32, *v3.f32);
      if (v8.i8[0])
      {
        goto LABEL_88;
      }

      goto LABEL_102;
    case 0xE:
      if (a2[4].i8[0] != 14)
      {
        goto LABEL_102;
      }

      v9 = vmovn_s32(vceqq_s32(*a2, v2)).u32[0];
      if ((v9 & HIWORD(v9) & 1) == 0)
      {
        goto LABEL_102;
      }

      v10 = vceqq_s32(*a2, v2);
      goto LABEL_49;
    case 0xF:
      if (a2[4].i8[0] != 15)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v16 = vmovn_s32(vceqq_s32(*a2, v2));
      if ((v16.i8[0] & 1) == 0 || (v16.i8[2] & 1) == 0 || (v16.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vmovn_s32(vceqq_s32(*a2, v2));
      goto LABEL_34;
    case 0x10:
      if (a2[4].i8[0] != 16)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v7 = vceq_f32(*v2.f32, *a2->f32);
      if ((v7.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v7.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v8 = vceq_f32(*&vextq_s8(v2, v2, 8uLL), *&a2->u32[2]);
      if ((v8.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

LABEL_88:
      v6 = v8.i8[4];
      return v6 & 1;
    case 0x11:
      v6 = 0;
      if (a2[4].i8[0] != 17)
      {
        return v6 & 1;
      }

      v17 = vmovn_s32(vceqq_f32(v2, *a2));
      if ((v17.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v6 = 0;
      if ((v17.i8[2] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v17.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v18 = a2[1];
      if ((vmovn_s32(vceqq_f32(v3, v18)).u8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v19 = a2[2];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v4, 8uLL), vextq_s8(vextq_s8(v18, v18, 0xCuLL), v19, 8uLL)))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v10 = vceqq_f32(v4, v19);
LABEL_49:
      v6 = vmovn_s32(v10).i8[4];
      return v6 & 1;
    case 0x12:
      v6 = 0;
      if (a2[4].i8[0] != 18)
      {
        return v6 & 1;
      }

      v36 = vmovn_s32(vceqq_f32(v2, *a2));
      if ((v36.i8[0] & 1) == 0 || (v36.i8[2] & 1) == 0)
      {
        return v6 & 1;
      }

      v37 = a2[1];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v2, v3, 8uLL), vextq_s8(*a2, v37, 8uLL)))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v38 = a2[2];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v3, v4, 8uLL), vextq_s8(v37, v38, 8uLL)))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v39 = a2[3];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v4, v5, 8uLL), vextq_s8(v38, v39, 8uLL)))) & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vmovn_s32(vceqq_f32(v5, v39));
      if ((v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      goto LABEL_34;
    case 0x13:
      if (a2[4].i8[0] != 19)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v3.i16[2] = HIWORD(a1->i64[0]);
      v3.i16[0] = WORD2(a1->i64[0]);
      v4.i16[0] = a2->i16[2];
      v4.i16[2] = a2->i16[3];
      v41.i32[0] = a2->u16[0];
      v41.i32[1] = a2->u16[1];
      v2.i32[0] = v2.u16[0];
      v2.i32[1] = HIWORD(a1->u32[0]);
      *v2.f32 = vceq_s32(*v2.f32, v41);
      if (v2.i8[0] & 1) != 0 && (v2.i8[4] & 1) != 0 && (vceq_s32(vand_s8(*v3.f32, 0xFFFF0000FFFFLL), vand_s8(*v4.f32, 0xFFFF0000FFFFLL)).u32[0])
      {
        v6 = vceq_s32(vand_s8(*&v3, 0xFFFF0000FFFFLL), vand_s8(*&v4, 0xFFFF0000FFFFLL)).i8[4];
      }

      return v6 & 1;
    case 0x14:
      v6 = 0;
      if (a2[4].i8[0] != 20)
      {
        return v6 & 1;
      }

      v20 = *a2->f32;
      if ((vceq_s16(*v2.f32, *a2->f32).u8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v6 = 0;
      v21.i32[0] = v2.u16[1];
      v21.i32[1] = v2.u16[2];
      v20.i32[0] = v20.u16[1];
      v20.i32[1] = v20.u16[2];
      v22 = vceq_s32(vand_s8(v21, 0xFFFF0000FFFFLL), vand_s8(v20, 0xFFFF0000FFFFLL));
      if ((v22.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v22.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v23 = vextq_s8(v2, v2, 8uLL).u64[0];
      v24 = *&a2->u32[2];
      if ((vceq_s16(v23, v24).u8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v25 = *a2[1].f32;
      if ((vminv_u16(vceq_s16(vext_s8(vext_s8(v23, v23, 6uLL), *v3.f32, 4uLL), vext_s8(vext_s8(v24, v24, 6uLL), v25, 4uLL))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = vceq_s16(*&v3, v25).i8[4];
      return v6 & 1;
    case 0x15:
      v6 = 0;
      v27 = *a2->f32;
      v26 = *&a2->u32[2];
      v29 = *a2[1].f32;
      v28 = *&a2[1].u32[2];
      if (a2[4].i8[0] != 21)
      {
        return v6 & 1;
      }

      v30.i32[0] = v2.u16[0];
      v30.i32[1] = v2.u16[1];
      v31 = vceq_s32(v30, *&vmovl_u16(v27));
      if ((v31.i8[0] & 1) == 0 || (v31.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v32 = vextq_s8(v2, v2, 8uLL).u64[0];
      if ((vminv_u16(vceq_s16(vext_s8(*v2.f32, v32, 4uLL), vext_s8(v27, v26, 4uLL))) & 1) == 0 || (vminv_u16(vceq_s16(vext_s8(v32, *v3.f32, 4uLL), vext_s8(v26, v29, 4uLL))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v33 = vextq_s8(v3, v3, 8uLL).u64[0];
      if ((vminv_u16(vceq_s16(vext_s8(*v3.f32, v33, 4uLL), vext_s8(v29, v28, 4uLL))) & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vceq_s16(v28, v33);
      if ((v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

LABEL_34:
      v6 = v15.i8[6];
      return v6 & 1;
    case 0x16:
      if (a2[4].i8[0] == 22)
      {
        goto LABEL_101;
      }

      goto LABEL_102;
    case 0x17:
      if (a2[4].i8[0] != 23)
      {
        goto LABEL_102;
      }

LABEL_101:
      v42 = *a2->f32;
      v43 = a1->i64[0];
      type metadata accessor for CGColorRef(0);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      return static _CFObject.== infix(_:_:)() & 1;
    default:
      if (a2[4].i8[0])
      {
LABEL_102:
        v6 = 0;
      }

      else
      {
        v6 = v2.i8[0] & 1 ^ a2->i8[0] ^ 1;
      }

      return v6 & 1;
  }
}

uint64_t specialized CGColorCodingContainer.init(_:)(CGColor *a1)
{
  v3 = CGColorRef.components.getter();
  if (v3)
  {
    v1 = v3;
    v4 = CGColorGetColorSpace(a1);
    if (v4)
    {
      v5 = v4;
      v6 = CGColorSpaceCopyName(v4);

      if (v6)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          goto LABEL_7;
        }

        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

LABEL_7:
  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v7 = a1;
  *(v7 + 8) = 0;
  *(v7 + 16) = 13;
  swift_willThrow();
  return v1;
}

uint64_t specialized Surface.init(nodeDefID:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000021 && 0x8000000265F2BC10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (a1 == 0xD00000000000001FLL && 0x8000000265F2BC40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0xD000000000000022 && 0x8000000265F2BBE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0xD000000000000021 && 0x8000000265F2D740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  if (a1 == 0xD00000000000002BLL && 0x8000000265F2D770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002FLL && 0x8000000265F2D7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else
  {
    if (a1 == 0xD000000000000021 && 0x8000000265F332A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_8:

      return 0;
    }

    if (a1 == 0xD000000000000010 && 0x8000000265F332D0 == a2)
    {

      return 4;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        return 5;
      }

      return 4;
    }
  }
}

uint64_t specialized SGDataTypeStorage.init(type:scalar:)@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  if (a2 <= 5)
  {
    switch(a2)
    {
      case 1:
        result = [a1 BOOLValue];
        v7 = 0;
        v5 = 0;
        LOBYTE(v6) = 0;
        goto LABEL_17;
      case 2:
        result = [a1 unsignedCharValue];
        v5 = 0;
        LOBYTE(v6) = 0;
        v7 = 1;
        goto LABEL_17;
      case 3:
        result = [a1 intValue];
        v6 = result >> 8;
        v5 = result & 0xFFFF0000;
        v7 = 2;
        goto LABEL_17;
    }

LABEL_14:
    v9 = SGDataType.stringValue.getter();
    v11 = v10;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  if (a2 > 8)
  {
    if (a2 == 9 || a2 == 10)
    {
      [a1 floatValue];
      result = v8;
      v6 = v8 >> 8;
      v5 = v8 & 0xFFFF0000;
      v7 = 5;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a2 == 6)
  {
    result = [a1 unsignedIntValue];
    v6 = result >> 8;
    v5 = result & 0xFFFF0000;
    v7 = 3;
    goto LABEL_17;
  }

  if (a2 != 7)
  {
    goto LABEL_14;
  }

  result = [a1 unsignedShortValue];
  v5 = 0;
  v6 = result >> 8;
  v7 = 4;
LABEL_17:
  *a3 = v5 | (v6 << 8) | result;
  *(a3 + 64) = v7;
  return result;
}

void specialized SGDataTypeStorage.init(type:value:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 14:
      toSIMDMat2fCols(_:)();
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v57 = v32;
      v65 = v31;

      v9 = v57;
      *&v12 = v65;
      *(&v12 + 1) = v57;
      v13 = 16;
      goto LABEL_31;
    case 15:
      toSIMDMat3fCols(_:)();
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v56 = v29;
      v64 = v28;
      v54 = v30;

      v10 = v54;
      v9 = v56;
      v12 = v64;
      v13 = 17;
      goto LABEL_31;
    case 17:
      toSIMDMat4fCols(_:)();
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v58 = v36;
      v67 = v35;
      v53 = v38;
      v55 = v37;

      v11 = v53;
      v10 = v55;
      v9 = v58;
      v12 = v67;
      v13 = 18;
      goto LABEL_31;
    case 18:
    case 29:
    case 44:
      v18 = NSArray.attemptCastToFloatArray(withLength:)(4);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v18);
      v62 = v19;

      v12 = v62;
      v13 = 9;
      goto LABEL_31;
    case 20:
    case 30:
    case 45:
      v16 = NSArray.attemptCastToFloat16Array(withLength:)(4);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys6UInt16VG_SayAJGTt1g5Tf4g_n(v16);
      v61 = v17;

      v12 = v61;
      v13 = 12;
      goto LABEL_31;
    case 21:
    case 49:
      v20 = NSArray.attemptCastToFloatArray(withLength:)(2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v20);
      v63 = v21;

      v12 = v63;
      v13 = 7;
      goto LABEL_31;
    case 22:
    case 47:
      v22 = NSArray.attemptCastToFloat16Array(withLength:)(2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v23 = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys6UInt16VG_SayAJGTt1g5Tf4g_n(v22);

      LODWORD(v12) = v23;
      v13 = 10;
      goto LABEL_31;
    case 24:
      v33 = NSArray.attemptCastToInt32Array(withLength:)(2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v33);
      v66 = v34;

      v12 = v66;
      v13 = 13;
      goto LABEL_31;
    case 25:
    case 32:
    case 35:
    case 38:
    case 41:
    case 52:
      v6 = NSArray.attemptCastToFloatArray(withLength:)(3);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v6);
      v59 = v8;

      v12 = v59;
      v13 = 8;
      goto LABEL_31;
    case 26:
    case 33:
    case 36:
    case 39:
    case 42:
    case 50:
      v14 = NSArray.attemptCastToFloat16Array(withLength:)(3);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys6UInt16VG_SayAJGTt1g5Tf4g_n(v14);
      v60 = v15;

      v12 = v60;
      v13 = 11;
      goto LABEL_31;
    case 28:
      v41 = NSArray.attemptCastToInt32Array(withLength:)(3);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v41);
      v69 = v52;

      v12 = v69;
      v13 = 14;
      goto LABEL_31;
    case 31:
      v39 = NSArray.attemptCastToInt32Array(withLength:)(4);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v39);
      v68 = v40;

      v12 = v68;
      v13 = 15;
LABEL_31:
      *a3 = v12;
      *(a3 + 16) = v9;
      *(a3 + 32) = v10;
      *(a3 + 48) = v11;
      *(a3 + 64) = v13;
      break;
    default:
      v24 = SGDataType.stringValue.getter();
      v26 = v25;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      v7 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 3;
      swift_willThrow();
LABEL_26:
      v81 = v7;
      v42 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {

        v73 = v78;
        v74 = v79;
        v75 = v80;
        v71 = v76;
        v72 = v77;
        lazy protocol witness table accessor for type APIError and conformance APIError();
        v43 = swift_allocError();
        *v44 = xmmword_265F23200;
        *(v44 + 16) = 24;
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        v45 = swift_allocError();
        *v46 = v71;
        v47 = v75;
        v49 = v72;
        v48 = v73;
        v46[3] = v74;
        v46[4] = v47;
        v46[1] = v49;
        v46[2] = v48;
        outlined init with copy of SGInternalError(&v71, v70);
        v50 = specialized NestedError.init(_:_:)(v43, v45);
        lazy protocol witness table accessor for type NestedError and conformance NestedError();
        swift_allocError();
        *v51 = v50;
        swift_willThrow();

        outlined destroy of SGInternalError(&v71);
      }

      else
      {
      }

      break;
  }
}

uint64_t specialized CGColorCodingContainer.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
    v10[7] = 0;
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t specialized SGDataTypeStorage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v73 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v80 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v11;
  v14 = v12;
  v15 = v11 == 1819242338 && v12 == 0xE400000000000000;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v22 = v13 == 0x7261686375 && v14 == 0xE500000000000000;
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v78.n128_u8[0] = 1;
      v23 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v24.n128_u32[0] = v23;
      v76 = v24;
      v18 = 1;
      goto LABEL_11;
    }

    v25 = v13 == 7630441 && v14 == 0xE300000000000000;
    if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v78.n128_u8[0] = 1;
      v26 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v27.n128_u32[0] = v26;
      v76 = v27;
      v18 = 2;
      goto LABEL_11;
    }

    v28 = v13 == 1953393013 && v14 == 0xE400000000000000;
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v78.n128_u8[0] = 1;
      v29 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v30.n128_u32[0] = v29;
      v76 = v30;
      v18 = 3;
      goto LABEL_11;
    }

    if (v13 == 1718378856 && v14 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v78.n128_u8[0] = 1;
      v31 = KeyedDecodingContainer.decode(_:forKey:)();
      v32 = (*(v6 + 8))(v9, v5);
      v32.n128_u32[0] = v31;
      v76 = v32;
      v18 = 4;
      goto LABEL_11;
    }

    if (v13 == 0x74616F6C66 && v14 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v78.n128_u8[0] = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v76 = v33;
      (*(v6 + 8))(v9, v5);
      v18 = 5;
      goto LABEL_11;
    }

    if (v13 == 0x676E69727473 && v14 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v78.n128_u8[0] = 1;
      v34 = KeyedDecodingContainer.decode(_:forKey:)();
      v36 = v35;
      (*(v6 + 8))(v9, v5);
      v37.n128_u64[0] = v34;
      v37.n128_u64[1] = v36;
      v76 = v37;
      v18 = 6;
      goto LABEL_11;
    }

    if (v13 == 0x6632726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v38 = (*(v6 + 8))(v9, v5);
      v38.n128_u64[0] = v78.n128_u64[0];
      v76 = v38;
      v18 = 7;
      goto LABEL_11;
    }

    if (v13 == 0x6633726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v76 = v78;
      v18 = 8;
      goto LABEL_11;
    }

    if (v13 == 0x6634726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v76 = v78;
      v18 = 9;
      goto LABEL_11;
    }

    if (v13 == 0x6832726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>, &_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v39 = (*(v6 + 8))(v9, v5);
      v39.n128_u32[0] = v78.n128_u32[0];
      v76 = v39;
      v18 = 10;
      goto LABEL_11;
    }

    if (v13 == 0x6833726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>, &_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v40 = (*(v6 + 8))(v9, v5);
      v40.n128_u64[0] = v78.n128_u64[0];
      v76 = v40;
      v18 = 11;
      goto LABEL_11;
    }

    if (v13 == 0x6834726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>, &_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v41 = (*(v6 + 8))(v9, v5);
      v41.n128_u64[0] = v78.n128_u64[0];
      v76 = v41;
      v18 = 12;
      goto LABEL_11;
    }

    if (v13 == 0x6932726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Int32> and conformance SIMD2<A>, &_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v42 = (*(v6 + 8))(v9, v5);
      v42.n128_u64[0] = v78.n128_u64[0];
      v76 = v42;
      v18 = 13;
      goto LABEL_11;
    }

    if (v13 == 0x6933726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Int32> and conformance SIMD3<A>, &_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v76 = v78;
      v18 = 14;
      goto LABEL_11;
    }

    if (v13 == 0x6934726F74636576 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Int32> and conformance SIMD4<A>, &_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v76 = v78;
      v18 = 15;
      goto LABEL_11;
    }

    if (v13 == 0x663278697274616DLL && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [SIMD2<Float>] and conformance <A> [A]();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v44 = *(v78.n128_u64[0] + 16);
      if (v44 == 2)
      {
        v43.n128_u64[0] = *(v78.n128_u64[0] + 32);
        v76 = v43;
        v43.n128_u64[0] = *(v78.n128_u64[0] + 40);
        v75 = v43;

        (*(v6 + 8))(v9, v5);
        v45.n128_u64[0] = v76.n128_u64[0];
        v45.n128_u64[1] = v75.n128_u64[0];
        v76 = v45;
        v18 = 16;
        goto LABEL_11;
      }

      v78.n128_u64[0] = 0;
      v78.n128_u64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v47 = "Incorrect number of columns for matrix2f. Expected 2, got ";
      goto LABEL_102;
    }

    if (v13 == 0x663378697274616DLL && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [SIMD3<Float>] and conformance <A> [A]();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v44 = *(v78.n128_u64[0] + 16);
      if (v44 == 3)
      {
        v46 = *(v78.n128_u64[0] + 32);
        v75 = *(v78.n128_u64[0] + 48);
        v76 = v46;
        v74 = *(v78.n128_u64[0] + 64);

        (*(v6 + 8))(v9, v5);
        v18 = 17;
        goto LABEL_11;
      }

      v78.n128_u64[0] = 0;
      v78.n128_u64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v47 = "Incorrect number of columns for matrix3f. Expected 3, got ";
      goto LABEL_102;
    }

    if (v13 == 0x663478697274616DLL && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type [SIMD4<Float>] and conformance <A> [A]();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v44 = *(v78.n128_u64[0] + 16);
      if (v44 == 4)
      {
        v48 = *(v78.n128_u64[0] + 32);
        v75 = *(v78.n128_u64[0] + 48);
        v76 = v48;
        v49 = *(v78.n128_u64[0] + 64);
        v73 = *(v78.n128_u64[0] + 80);
        v74 = v49;

        (*(v6 + 8))(v9, v5);
        v18 = 18;
        goto LABEL_11;
      }

      v78.n128_u64[0] = 0;
      v78.n128_u64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v47 = "Incorrect number of columns for matrix4f. Expected 4, got ";
LABEL_102:
      MEMORY[0x266771550](0xD00000000000003ALL, (v47 - 32) | 0x8000000000000000);
      v77 = v44;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v56);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v58 = v78.n128_u64[1];
      v57 = v78.n128_u64[0];
      lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
      swift_allocError();
      *v59 = 3;
      v59[1] = 0;
      v59[2] = 0;
      v59[3] = 0;
LABEL_103:
      v59[4] = 0x8000000000000000;
      v59[5] = 0;
      v59[6] = 0;
      v59[7] = 0;
      v59[8] = v57;
      v59[9] = v58;
LABEL_104:
      swift_willThrow();
LABEL_3:
      (*(v6 + 8))(v9, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    if (v13 == 0x33726F6C6F636763 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v76.n128_u64[0] = v78.n128_u64[0];
      v50 = v79;
      *&v74 = v78.n128_u64[1];
      v51 = MEMORY[0x266771450]();
      v52 = CGColorSpaceCreateWithName(v51);

      v75.n128_u64[0] = v52;
      if (v52)
      {

        v53 = CGColorCreate(v75.n128_u64[0], (v76.n128_u64[0] + 32));
        if (v53)
        {
          v54 = v53;
          (*(v6 + 8))(v9, v5);

          v55.n128_u64[0] = v54;
          v76 = v55;
          v18 = 22;
          goto LABEL_11;
        }

        goto LABEL_112;
      }
    }

    else
    {
      if ((v13 != 0x34726F6C6F636763 || v14 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v78.n128_u64[0] = 0;
        v78.n128_u64[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(28);

        v78.n128_u64[0] = 0xD00000000000001ALL;
        v78.n128_u64[1] = 0x8000000265F33350;
        MEMORY[0x266771550](v13, v14);

        v58 = v78.n128_u64[1];
        v57 = v78.n128_u64[0];
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        swift_allocError();
        *v59 = 0u;
        *(v59 + 1) = 0u;
        goto LABEL_103;
      }

      LOBYTE(v77) = 1;
      lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v76.n128_u64[0] = v78.n128_u64[0];
      v50 = v79;
      *&v74 = v78.n128_u64[1];
      v60 = MEMORY[0x266771450]();
      v61 = CGColorSpaceCreateWithName(v60);

      v75.n128_u64[0] = v61;
      if (v61)
      {

        v62 = CGColorCreate(v75.n128_u64[0], (v76.n128_u64[0] + 32));
        if (v62)
        {
          v63 = v62;
          (*(v6 + 8))(v9, v5);

          v64.n128_u64[0] = v63;
          v76 = v64;
          v18 = 23;
          goto LABEL_11;
        }

LABEL_112:
        v78.n128_u64[0] = 0;
        v78.n128_u64[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(65);
        MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F333A0);
        v67 = MEMORY[0x2667717B0](v76.n128_u64[0], MEMORY[0x277D85048]);
        v69 = v68;

        MEMORY[0x266771550](v67, v69);

        MEMORY[0x266771550](0xD000000000000011, 0x8000000265F333D0);
        v70 = v75.n128_u64[0];
        v77 = v75.n128_u64[0];
        type metadata accessor for CGColorSpaceRef(0);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x266771550](39, 0xE100000000000000);
        v71 = v78;
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        *v72 = v71;
        v72[1].n128_u8[0] = 14;
        swift_willThrow();

        goto LABEL_3;
      }
    }

    v78.n128_u64[0] = 0;
    v78.n128_u64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v78.n128_u64[0] = 0xD00000000000002ALL;
    v78.n128_u64[1] = 0x8000000265F33370;

    MEMORY[0x266771550](v74, v50);
    swift_bridgeObjectRelease_n();

    MEMORY[0x266771550](39, 0xE100000000000000);
    v65 = v78;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v66 = v65;
    v66[1].n128_u8[0] = 14;
    goto LABEL_104;
  }

  v78.n128_u8[0] = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v18 = 0;
  v19.n128_u32[0] = v16 & 1;
  v76 = v19;
LABEL_11:
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v20 = v75;
  *a2 = v76;
  *(a2 + 16) = v20;
  v21 = v73;
  *(a2 + 32) = v74;
  *(a2 + 48) = v21;
  *(a2 + 64) = v18;
  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer()
{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD4<UInt16>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD4<UInt16>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD4<UInt16>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD4Vys6UInt16VGGMd, &_sSays5SIMD4Vys6UInt16VGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>, &_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD4<UInt16>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD3<UInt16>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD3<UInt16>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD3<UInt16>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD3Vys6UInt16VGGMd, &_sSays5SIMD3Vys6UInt16VGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>, &_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD3<UInt16>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD2<UInt16>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD2<UInt16>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD2<UInt16>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD2Vys6UInt16VGGMd, &_sSays5SIMD2Vys6UInt16VGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>, &_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD2<UInt16>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD4<Float>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD3<Float>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD2<Float>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  result = lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    type metadata accessor for CGColorRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }

  return result;
}

uint64_t specialized SGDataType.init(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261686375 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953393013 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1718378856 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65646F63656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7465737361 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x663278697274616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x663378697274616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x663478697274616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6674617571 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6874617571 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x3274616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x32666C6168 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 846491241 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x3374616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x33666C6168 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 863268457 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x3474616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x34666C6168 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 880045673 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6633746E696F70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6833746E696F70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x66336C616D726F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x68336C616D726F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x6633726F74636576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x6833726F74636576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6633726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x6833726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6634726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x6834726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006832 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006632 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006833 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006633 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x5365636166727573 && a2 == 0xED00007265646168 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265F2BA10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x786574726576 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x33726F6C6F436763 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0x34726F6C6F436763 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_265D7D000, v7, v8, "Unable to construct SGDataType from: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266773120](v10, -1, -1);
      MEMORY[0x266773120](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

void *specialized SGDataType.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;

    v8 = specialized SGDataType.init(_:)(v5, v7);
    if ((v9 & 1) == 0)
    {
      v4 = v8;

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v4;
    }

    _StringGuts.grow(_:)(34);

    MEMORY[0x266771550](v5, v7);

    MEMORY[0x266771550](0x61444753206F7420, 0xEE00657079546174);
    v4 = 0xD000000000000012;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v10 = 0xD000000000000012;
    *(v10 + 8) = 0x8000000265F313E0;
    *(v10 + 16) = 11;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

unint64_t lazy protocol witness table accessor for type ShaderType and conformance ShaderType()
{
  result = lazy protocol witness table cache variable for type ShaderType and conformance ShaderType;
  if (!lazy protocol witness table cache variable for type ShaderType and conformance ShaderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderType and conformance ShaderType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Surface and conformance Surface()
{
  result = lazy protocol witness table cache variable for type Surface and conformance Surface;
  if (!lazy protocol witness table cache variable for type Surface and conformance Surface)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Surface and conformance Surface);
  }

  return result;
}

__n128 __swift_memcpy65_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE9 && *(a1 + 65))
  {
    return (*a1 + 233);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x17)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE8)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 233;
    if (a3 >= 0xE9)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE9)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NestedError and conformance NestedError()
{
  result = lazy protocol witness table cache variable for type NestedError and conformance NestedError;
  if (!lazy protocol witness table cache variable for type NestedError and conformance NestedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NestedError and conformance NestedError);
  }

  return result;
}

uint64_t OrderedDictionary.init<A>(grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v17 = specialized OrderedDictionary.init<A>(_grouping:by:)(a1, a2, a3, a4, v15, a5, a6, WitnessTable, a7);
  if (v7)
  {
    return (*(*(a5 - 8) + 8))(a1, a5);
  }

  v19 = v17;
  (*(*(a5 - 8) + 8))(a1, a5);
  return v19;
}

uint64_t OrderedDictionary.init()(uint64_t a1, uint64_t a2)
{
  v3 = OrderedSet.init()(a1);
  v4 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v4, a2);
  return v3;
}

uint64_t OrderedDictionary.init<A, B>(uniqueKeys:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v33 = a7;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = *(v17 + 16);
  v34 = v23;
  v22(&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v24 = Array.init<A>(_:)();
  v25 = *(v12 + 16);
  v35 = a2;
  v25(v15, a2, a6);
  Array.init<A>(_:)();
  v26 = ContiguousArray.count.getter();
  result = ContiguousArray.count.getter();
  if (v26 == result)
  {
    v36 = v24;
    v28 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    v30 = OrderedSet.init<A>(_:)(&v36, a3, v28, v33, WitnessTable);
    v31 = ContiguousArray.count.getter();
    v32 = ContiguousArray.count.getter();
    (*(v12 + 8))(v35, a6);
    result = (*(v17 + 8))(v34, a5);
    if (v31 == v32)
    {
      return v30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init<A, B>(uncheckedUniqueKeys:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a7;
  v42 = a4;
  v43 = a2;
  v45 = a6;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v41 = a9;
  MEMORY[0x28223BE20](a1);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  v24 = v15[2];
  v44 = v25;
  v24(&v39 - v22, v21);
  (v24)(v19, v23, a5);
  v26 = Array.init<A>(_:)();
  v46 = v26;
  v27 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v28 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v30 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v46, 0, 1, v27, v28, WitnessTable, v40);
  v31 = ContiguousArray.count.getter();
  v32 = 0;
  if (v31 >= 16)
  {

    v32 = v30;
  }

  v40 = OrderedSet.init(_uniqueElements:_:)(v26, v32);

  v33 = v15[1];
  v33(v23, a5);
  v34 = v43;
  v35 = v45;
  (*(v10 + 16))(v13, v43, v45);
  Array.init<A>(_:)();
  v36 = ContiguousArray.count.getter();
  v37 = ContiguousArray.count.getter();
  (*(v10 + 8))(v34, v35);
  result = (v33)(v44, a5);
  if (v36 == v37)
  {
    return v40;
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return OrderedDictionary.init<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

{
  return OrderedDictionary.init<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

uint64_t OrderedDictionary.init(minimumCapacity:persistent:)(Swift::Int a1, Swift::Bool a2, uint64_t a3, uint64_t a4)
{
  v6 = OrderedSet.init(minimumCapacity:persistent:)(a1, a2, a3);
  v7 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v7, a4);
  type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(a1);
  return v6;
}

uint64_t OrderedDictionary.init<A>(uniqueKeysWithValues:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a1;
  v64 = *(a3 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](a1);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v60 - v12;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = type metadata accessor for Optional();
  v73 = *(v79 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v65 = *(a4 - 8);
  v25 = *(v65 + 64);
  MEMORY[0x28223BE20](v26);
  v74 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v29 = *(v62 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v60 - v30;
  v81 = a3;
  if (type metadata accessor for Dictionary() == a4)
  {
    v58 = v66;
    v59 = specialized OrderedDictionary.init<A>(_uncheckedUniqueKeysWithValues:)(v66, a2, v81, a4, v28);
    (*(v65 + 8))(v58, a4);
    return v59;
  }

  else
  {
    v76 = v24;
    v32 = OrderedSet.init()(a2);
    v77 = v18;
    v34 = v33;
    v35 = v81;
    v36 = static Array._allocateUninitialized(_:)();
    v37 = MEMORY[0x266772110](v36, v35);
    v82 = v32;
    v83 = v34;
    v84 = v37;
    v61 = v14;
    v38 = v66;
    v39 = dispatch thunk of Sequence.underestimatedCount.getter();
    v69 = a2;
    v70 = v28;
    type metadata accessor for OrderedDictionary();
    v40 = v39;
    v41 = v77;
    OrderedDictionary.reserveCapacity(_:)(v40);
    (*(v65 + 16))(v74, v38, a4);
    v75 = v31;
    dispatch thunk of Sequence.makeIterator()();
    v60 = a4;
    v42 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v73 += 32;
    v74 = AssociatedConformanceWitness;
    v72 = TupleTypeMetadata2 - 8;
    v67 = (v64 + 32);
    v68 = (v61 + 32);
    v44 = (v64 + 16);
    v45 = (v64 + 8);
    v46 = (v61 + 8);
    while (1)
    {
      v47 = v78;
      v48 = v75;
      dispatch thunk of IteratorProtocol.next()();
      v49 = v76;
      (*v73)(v76, v47, v79);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v49, 1, TupleTypeMetadata2) == 1)
      {
        (*(v65 + 8))(v66, v60);
        (*(v62 + 8))(v48, v42);
        return v82;
      }

      v50 = TupleTypeMetadata2;
      v51 = *(TupleTypeMetadata2 + 48);
      v52 = v69;
      (*v68)(v41, v49, v69);
      (*v67)(v80, &v49[v51], v81);
      v53 = type metadata accessor for OrderedSet();
      result = OrderedSet._append(_:)(v41, v53);
      if ((result & 1) == 0)
      {
        break;
      }

      v55 = v80;
      v56 = v81;
      (*v44)(v71, v80, v81);
      type metadata accessor for ContiguousArray();
      v57 = v55;
      v41 = v77;
      ContiguousArray.append(_:)();
      (*v45)(v57, v56);
      (*v46)(v41, v52);
      TupleTypeMetadata2 = v50;
    }

    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.init<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = OrderedSet.init()(a4);
  v15 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v15, a5);
  v16 = type metadata accessor for OrderedDictionary();
  a9(a1, a2, a3, v16, a6, a8);
  (*(*(a6 - 8) + 8))(a1, a6);
  result = v14;
  if (v19)
  {
  }

  return result;
}

uint64_t OrderedDictionary.init<A>(grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = specialized OrderedDictionary.init<A>(_grouping:by:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v9)
  {
    return (*(*(a6 - 8) + 8))(a1, a6);
  }

  v14 = v12;
  (*(*(a6 - 8) + 8))(a1, a6);
  return v14;
}

uint64_t OrderedDictionary.init<A>(_grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = specialized OrderedDictionary.init<A>(_grouping:by:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v9)
  {
    return (*(*(a6 - 8) + 8))(a1, a6);
  }

  v14 = v12;
  (*(*(a6 - 8) + 8))(a1, a6);
  return v14;
}

uint64_t closure #1 in OrderedDictionary.init<A>(_grouping:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*(a7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v13 + 16))(&v15 - v12, a2, v11);
  return dispatch thunk of RangeReplaceableCollection.append(_:)();
}

uint64_t OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return OrderedDictionary.init<A>(uniqueKeysWithValues:)(a1, a2, a3, a4, a5, a6, specialized OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:));
}

{
  v28 = a1;
  v29 = a5;
  v26 = a2;
  v9 = type metadata accessor for LazySequence();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = a3;
  v25 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for LazyMapSequence();
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  MEMORY[0x2667716D0](a4, a6, v16);
  v19 = swift_allocObject();
  v20 = v26;
  v19[2] = v26;
  v19[3] = v13;
  v21 = v29;
  v19[4] = a4;
  v19[5] = v21;
  v19[6] = a6;
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  (*(v30 + 8))(v12, v9);
  swift_getWitnessTable();
  v22 = specialized OrderedDictionary.init<A>(_uncheckedUniqueKeysWithValues:)(v18, v20, v25, v14, v21);
  (*(*(a4 - 8) + 8))(v28, a4);
  (*(v31 + 8))(v18, v14);
  return v22;
}

uint64_t OrderedDictionary.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = a7();
  (*(*(a4 - 8) + 8))(a1, a4);
  return v9;
}

uint64_t closure #1 in OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v20 = *(swift_getTupleTypeMetadata2() + 48);
  v16 = *(v9 + 16);
  v16(v15, a1, TupleTypeMetadata2);
  v21 = *(TupleTypeMetadata2 + 48);
  v17 = *(a2 - 8);
  (*(v17 + 32))(a4, v15, a2);
  v16(v12, a1, TupleTypeMetadata2);
  v18 = *(a3 - 8);
  (*(v18 + 32))(a4 + v20, &v12[*(TupleTypeMetadata2 + 48)], a3);
  (*(v17 + 8))(v12, a2);
  return (*(v18 + 8))(&v15[v21], a3);
}