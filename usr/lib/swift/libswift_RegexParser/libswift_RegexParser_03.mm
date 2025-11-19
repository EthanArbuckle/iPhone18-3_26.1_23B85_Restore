double Parser.lexTrivia()@<D0>(uint64_t a1@<X8>)
{
  Parser.lexQuote()(closure #1 in Parser.lexComment(), &v6);
  v3 = v7;
  if (v7 || (*(v1 + 64) & 1) != 0 && (specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, v1, specialized Source.peekPrefix(maxLength:_:), &v6), (v3 = v7) != 0))
  {
    v4 = v8;
    *a1 = v6;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
  }

  else
  {
    *&v4 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v4;
}

void closure #1 in closure #1 in Parser.lexMatchingOption()(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[1];
  v44[0] = *a1;
  v44[1] = v4;
  v5 = a1[3];
  v44[2] = a1[2];
  v44[3] = v5;
  v45[0] = a1[4];
  *(v45 + 9) = *(a1 + 73);
  outlined init with copy of Parser(v44, &v35);
  v6 = String.subscript.getter();
  if (!((v6 ^ v7) >> 14))
  {

    outlined destroy of Parser(v44);
LABEL_3:
    v8 = 20;
LABEL_4:
    *a2 = v8;
    return;
  }

  v9 = Substring.subscript.getter();
  v11 = v10;

  outlined destroy of Parser(v44);
  Parser.advance(_:)(1);
  if (v9 == 105 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    *a2 = 0;
    return;
  }

  if (v9 == 74 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_4;
  }

  if (v9 == 109 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 2;
    goto LABEL_4;
  }

  if (v9 == 110 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 3;
    goto LABEL_4;
  }

  if (v9 == 115 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 4;
    goto LABEL_4;
  }

  if (v9 == 85 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 5;
    goto LABEL_4;
  }

  if (v9 == 120 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12._countAndFlagsBits = 120;
    v12._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v12))
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    goto LABEL_4;
  }

  if (v9 == 119 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 8;
    goto LABEL_4;
  }

  if (v9 == 68 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 9;
    goto LABEL_4;
  }

  if (v9 == 80 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 10;
    goto LABEL_4;
  }

  if (v9 == 83 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 11;
    goto LABEL_4;
  }

  if (v9 == 87 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 12;
    goto LABEL_4;
  }

  if ((v9 != 121 || v11 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v9 == 88 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8 = 15;
      goto LABEL_4;
    }

    if (v9 == 117 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8 = 16;
      goto LABEL_4;
    }

    if (v9 == 98 && v11 == 0xE100000000000000)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v8 = 17;
    goto LABEL_4;
  }

  v13._countAndFlagsBits = 123;
  v13._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v13))
  {
    v35 = xmmword_1C0C7E380;
    v36 = 0uLL;
    LOBYTE(v37) = 3;
    v30 = *(a1 + 2);
    v31 = v30;
    v21 = &v35;
    v22 = &v30;
LABEL_74:
    Diagnostics.error(_:at:)(v21, v22);
    v8 = 13;
    goto LABEL_4;
  }

  v14 = a1[1];
  v35 = *a1;
  v36 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v37 = a1[2];
  v38 = v15;
  v17 = *(a1 + 2);
  v39[0] = v16;
  *(v39 + 9) = *(a1 + 73);
  v18 = v36;
  outlined init with copy of Parser(&v35, &v30);
  v19 = String.subscript.getter();
  if (!((v19 ^ v20) >> 14))
  {

    outlined destroy of Parser(&v35);
LABEL_73:
    v30 = 0xD000000000000011;
    v31 = 0x80000001C0C86DD0;
    v32 = 0;
    v33 = 0;
    v34 = 3;
    *&v40 = v18;
    *(&v40 + 1) = v18;
    v21 = &v30;
    v22 = &v40;
    goto LABEL_74;
  }

  v23 = Substring.subscript.getter();
  v25 = v24;

  outlined destroy of Parser(&v35);
  Parser.advance(_:)(1);
  v18 = *(a1 + 2);
  if (v18 >> 14 < v17 >> 14)
  {
    __break(1u);
    return;
  }

  if (!v25)
  {
    goto LABEL_73;
  }

  if (v23 == 125 && v25 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_73;
  }

  if (v23 == 119 && v25 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v26 = 14;
  }

  else
  {
    if (v23 == 103 && v25 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      v30 = v23;
      v31 = v25;
      v32 = 0;
      v33 = 0;
      v34 = 16;
      *&v40 = v17;
      *(&v40 + 1) = v18;

      Diagnostics.error(_:at:)(&v30, &v40);
      swift_bridgeObjectRelease_n();
    }

    v26 = 13;
  }

  v28._countAndFlagsBits = 125;
  v28._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v28))
  {
    v40 = xmmword_1C0C7E390;
    v41 = 0;
    v42 = 0;
    v43 = 3;
    *&v29 = *(a1 + 2);
    *(&v29 + 1) = v29;
    Diagnostics.error(_:at:)(&v40, &v29);
  }

  *a2 = v26;
}

uint64_t Parser.lexMatchingOptionSequence()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v138 = *v1;
  v139 = v4;
  v5 = v1[3];
  v140 = v1[2];
  v141 = v5;
  v142[0] = v1[4];
  *(v142 + 9) = *(v1 + 73);
  v6 = v139;
  outlined init with copy of Parser(&v138, v132);
  v7 = String.subscript.getter();
  if ((v7 ^ v8) >> 14)
  {
    v11 = Substring.subscript.getter();
    v13 = v12;

    outlined destroy of Parser(&v138);
    if (v11 == 41 && v13 == 0xE100000000000000)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    LOBYTE(v132[0]) = 1;
    LOBYTE(v122) = 1;
    *a1 = 0;
    *(a1 + 8) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = v36;
    *(a1 + 48) = 1;
    *(a1 + 56) = v36;
    return result;
  }

  outlined destroy of Parser(&v138);
LABEL_3:
  v9._countAndFlagsBits = 94;
  v9._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v9);
  if (result)
  {
    v103 = *(v2 + 2);
    if (v103 >> 14 < v6 >> 14)
    {
      goto LABEL_89;
    }

    v105 = v6;
  }

  else
  {
    v105 = 0;
    v103 = 0;
  }

  v104 = result;
  v102 = result ^ 1;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = *(v2 + 2);
    v16 = v2[3];
    v17 = v2[4];
    v18 = v2[1];
    v133 = v2[2];
    v134 = v16;
    *v135 = v17;
    *&v135[9] = *(v2 + 73);
    v132[0] = *v2;
    v132[1] = v18;
    v129 = v133;
    v130 = v16;
    v131 = v17;
    v127 = v132[0];
    v128 = v18;
    v19 = *&v135[16];
    v20 = v135[24];
    outlined init with copy of Parser(v132, &v122);
    closure #1 in closure #1 in Parser.lexMatchingOption()(v2, v107);
    v21 = v107[0];
    if (v107[0] == 20)
    {
      break;
    }

    v124 = v129;
    v125 = v130;
    *v126 = v131;
    v122 = v127;
    v123 = v128;
    *&v126[16] = v19;
    v126[24] = v20;
    result = outlined destroy of Parser(&v122);
    v22 = *(v2 + 2);
    if (v22 >> 14 < v15 >> 14)
    {
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
      return result;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v24 >= v23 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v14);
    }

    *(v14 + 2) = v24 + 1;
    v25 = &v14[24 * v24];
    v25[32] = v21;
    *(v25 + 5) = v15;
    *(v25 + 6) = v22;
  }

  v26 = *&v135[16];
  v27 = v135[24];
  v28 = *(v2 + 10);
  v106 = (v2 + 5);
  v29 = v2[3];
  v124 = v2[2];
  v125 = v29;
  *v126 = v2[4];
  *&v126[9] = *(v2 + 73);
  v30 = v2[1];
  v122 = *v2;
  v123 = v30;

  result = outlined destroy of Parser(&v122);
  if (v27 == 1 || ((v31 = *(v26 + 2), v32 = *(v28 + 16), v32 >= v31) ? (v33 = *(v26 + 2)) : (v33 = *(v28 + 16)), v31 ? (v34 = v33) : (v34 = 0), v34 == v32))
  {
  }

  else
  {
    v100 = a1;
    if (v34 >= v32)
    {
      goto LABEL_91;
    }

    v37 = ~v34 + v32;
    for (i = 80 * v34 + 32; ; i += 80)
    {
      v112 = *(v28 + i);
      v39 = *(v28 + i + 16);
      v40 = *(v28 + i + 32);
      v41 = *(v28 + i + 48);
      *&v115[9] = *(v28 + i + 57);
      v114 = v40;
      *v115 = v41;
      v113 = v39;
      if (!v112)
      {
        outlined init with copy of Diagnostic(&v112, &v108);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v43 = *(v26 + 2);
        v42 = *(v26 + 3);
        if (v43 >= v42 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v26);
        }

        *(v26 + 2) = v43 + 1;
        v44 = &v26[80 * v43];
        *(v44 + 2) = v112;
        v45 = v113;
        v46 = v114;
        v47 = *v115;
        *(v44 + 89) = *&v115[9];
        *(v44 + 4) = v46;
        *(v44 + 5) = v47;
        *(v44 + 3) = v45;
        v19 = v26;
      }

      if (!v37)
      {
        break;
      }

      --v37;
    }

    a1 = v100;
  }

  v48 = v130;
  v2[2] = v129;
  v2[3] = v48;
  v2[4] = v131;
  v49 = v128;
  *v2 = v127;
  v2[1] = v49;
  *(v2 + 10) = v19;
  *(v2 + 88) = v20;
  v50 = *(v2 + 2);
  v51._countAndFlagsBits = 45;
  v51._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v51);
  if ((result & 1) == 0)
  {
    v72 = 0;
    v73 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v74 = v105;
    if (((v104 | result) & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (*(v2 + 2) >> 14 < v50 >> 14)
  {
    goto LABEL_90;
  }

  v97 = result;
  v98 = *(v2 + 2);
  v99 = v50;
  if (v104)
  {
    v136[0] = 6;
    memset(&v136[1], 0, 24);
    v137 = 36;
    *&v122 = v105;
    *(&v122 + 1) = v103;
    Diagnostics.error(_:at:)(v136, &v122);
  }

  v101 = a1;
  v52 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v53 = *(v2 + 2);
    v54 = v2[3];
    v55 = v2[4];
    v56 = v2[1];
    v124 = v2[2];
    v125 = v54;
    *v126 = v55;
    *&v126[9] = *(v2 + 73);
    v122 = *v2;
    v123 = v56;
    v119 = v124;
    v120 = v54;
    v121 = v55;
    v117 = v122;
    v118 = v56;
    v57 = *&v126[16];
    v58 = v126[24];
    outlined init with copy of Parser(&v122, &v112);
    closure #1 in closure #1 in Parser.lexMatchingOption()(v2, &v116);
    v59 = v116;
    if (v116 == 20)
    {
      break;
    }

    v114 = v119;
    *v115 = v120;
    *&v115[16] = v121;
    v112 = v117;
    v113 = v118;
    *&v115[32] = v57;
    v115[40] = v58;
    result = outlined destroy of Parser(&v112);
    v60 = *(v2 + 2);
    if (v60 >> 14 < v53 >> 14)
    {
      goto LABEL_88;
    }

    if ((v59 - 15) >= 3)
    {
      if ((v59 - 13) > 1)
      {
        goto LABEL_58;
      }

      LOBYTE(v112) = 1;
      *(&v112 + 1) = 0xD00000000000002FLL;
      *&v113 = 0x80000001C0C865C0;
      *(&v113 + 1) = v53;
      *&v114 = v60;
      v61 = 11;
    }

    else
    {
      LOBYTE(v112) = 1;
      *(&v112 + 1) = 0xD00000000000002CLL;
      *&v113 = 0x80000001C0C86590;
      *(&v113 + 1) = v53;
      *&v114 = v60;
      v61 = 12;
    }

    *(&v114 + 1) = v61;
    memset(v115, 0, 24);
    v115[24] = 36;
    if (*(v2 + 88) == 1)
    {
      outlined destroy of Diagnostic(&v112);
    }

    else
    {
      v62 = *v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v62);
      }

      *(v62 + 2) = v64 + 1;
      v65 = &v62[80 * v64];
      *(v65 + 2) = v112;
      v66 = v113;
      v67 = v114;
      v68 = *v115;
      *(v65 + 89) = *&v115[9];
      *(v65 + 4) = v67;
      *(v65 + 5) = v68;
      *(v65 + 3) = v66;
      *v106 = v62;
    }

LABEL_58:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
    }

    v70 = *(v52 + 2);
    v69 = *(v52 + 3);
    if (v70 >= v69 >> 1)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v52);
    }

    *(v52 + 2) = v70 + 1;
    v71 = &v52[24 * v70];
    v71[32] = v59;
    *(v71 + 5) = v53;
    *(v71 + 6) = v60;
  }

  v75 = *&v126[16];
  v76 = v126[24];
  v77 = *(v2 + 10);
  v78 = v2[3];
  v114 = v2[2];
  *v115 = v78;
  *&v115[16] = v2[4];
  *&v115[25] = *(v2 + 73);
  v79 = v2[1];
  v112 = *v2;
  v113 = v79;

  result = outlined destroy of Parser(&v112);
  if (v76 == 1)
  {
    goto LABEL_73;
  }

  v80 = *(v75 + 2);
  v81 = *(v77 + 16);
  v82 = v81 >= v80 ? *(v75 + 2) : *(v77 + 16);
  v83 = v80 ? v82 : 0;
  if (v83 == v81)
  {
    goto LABEL_73;
  }

  if (v83 >= v81)
  {
    goto LABEL_92;
  }

  v86 = ~v83 + v81;
  for (j = 80 * v83 + 32; ; j += 80)
  {
    v108 = *(v77 + j);
    v88 = *(v77 + j + 16);
    v89 = *(v77 + j + 32);
    v90 = *(v77 + j + 48);
    *(v111 + 9) = *(v77 + j + 57);
    v110 = v89;
    v111[0] = v90;
    v109 = v88;
    if (!v108)
    {
      outlined init with copy of Diagnostic(&v108, v107);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
      }

      v92 = *(v75 + 2);
      v91 = *(v75 + 3);
      if (v92 >= v91 >> 1)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v75);
      }

      *(v75 + 2) = v92 + 1;
      v93 = &v75[80 * v92];
      *(v93 + 2) = v108;
      v94 = v109;
      v95 = v110;
      v96 = v111[0];
      *(v93 + 89) = *(v111 + 9);
      *(v93 + 4) = v95;
      *(v93 + 5) = v96;
      *(v93 + 3) = v94;
      v57 = v75;
    }

    if (!v86)
    {
      break;
    }

    --v86;
  }

LABEL_73:

  v84 = v120;
  v2[2] = v119;
  v2[3] = v84;
  v2[4] = v121;
  v85 = v118;
  *v2 = v117;
  v2[1] = v85;
  *(v2 + 10) = v57;
  *(v2 + 88) = v58;
  v72 = v99;
  a1 = v101;
  v74 = v105;
  v73 = v98;
  result = v97;
  if ((v104 | v97))
  {
LABEL_75:
    LOBYTE(v122) = v102 & 1;
    LOBYTE(v112) = (result ^ 1) & 1;
    *a1 = v74;
    *(a1 + 8) = v103;
    *(a1 + 16) = v102 & 1;
    *(a1 + 24) = v14;
    *(a1 + 32) = v72;
    *(a1 + 40) = v73;
    *(a1 + 48) = (result ^ 1) & 1;
    *(a1 + 56) = v52;
    return result;
  }

LABEL_74:
  if (*(v14 + 2))
  {
    goto LABEL_75;
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Parser.lexChangeMatchingOptionAtom()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v54 = *(v1 + 32);
  v55 = v3;
  *v56 = *(v1 + 64);
  v4 = *v56;
  *&v56[9] = *(v1 + 73);
  v5 = *(v1 + 16);
  v53[0] = *v1;
  v53[1] = v5;
  v50 = v54;
  v51 = v3;
  v52 = v4;
  v48 = v53[0];
  v49 = v5;
  v6 = *&v56[16];
  v7 = v56[24];
  outlined init with copy of Parser(v53, &v43);
  if ((specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000) & 1) == 0 || (Parser.lexMatchingOptionSequence()(&v43), v8 = *(&v44 + 1), v37 = v44, v34 = v45, v35 = v46, v36 = v43, !*(&v44 + 1)))
  {
    v11 = *&v56[16];
    v12 = v56[24];
    v13 = *(v1 + 80);
    v14 = *(v1 + 48);
    v45 = *(v1 + 32);
    v46 = v14;
    *v47 = *(v1 + 64);
    *&v47[9] = *(v1 + 73);
    v15 = *(v1 + 16);
    v43 = *v1;
    v44 = v15;

    result = outlined destroy of Parser(&v43);
    if (v12 == 1)
    {
    }

    else
    {
      v16 = *(v11 + 2);
      v17 = *(v13 + 16);
      if (v17 >= v16)
      {
        v18 = *(v11 + 2);
      }

      else
      {
        v18 = *(v13 + 16);
      }

      if (v16)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == v17)
      {
        result = swift_unknownObjectRelease();
      }

      else
      {
        v33 = v7;
        if (v19 >= v17)
        {
          __break(1u);
          return result;
        }

        v20 = ~v19 + v17;
        for (i = 80 * v19 + 32; ; i += 80)
        {
          v39 = *(v13 + i);
          v22 = *(v13 + i + 16);
          v23 = *(v13 + i + 32);
          v24 = *(v13 + i + 48);
          *(v42 + 9) = *(v13 + i + 57);
          v41 = v23;
          v42[0] = v24;
          v40 = v22;
          if (!v39)
          {
            outlined init with copy of Diagnostic(&v39, v38);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
            }

            v26 = *(v11 + 2);
            v25 = *(v11 + 3);
            if (v26 >= v25 >> 1)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v11);
            }

            *(v11 + 2) = v26 + 1;
            v27 = &v11[80 * v26];
            *(v27 + 2) = v39;
            v28 = v40;
            v29 = v41;
            v30 = v42[0];
            *(v27 + 89) = *(v42 + 9);
            *(v27 + 4) = v29;
            *(v27 + 5) = v30;
            *(v27 + 3) = v28;
            v6 = v11;
          }

          if (!v20)
          {
            break;
          }

          --v20;
        }

        swift_unknownObjectRelease();

        v7 = v33;
      }
    }

    v31 = v51;
    *(v1 + 32) = v50;
    *(v1 + 48) = v31;
    *(v1 + 64) = v52;
    v32 = v49;
    *v1 = v48;
    *(v1 + 16) = v32;
    *(v1 + 80) = v6;
    *(v1 + 88) = v7;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    return result;
  }

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v9))
  {
    v39 = xmmword_1C0C7E3A0;
    v40 = 0uLL;
    LOBYTE(v41) = 3;
    *&v43 = *(v1 + 16);
    *(&v43 + 1) = v43;
    Diagnostics.error(_:at:)(&v39, &v43);
  }

  v45 = v50;
  v46 = v51;
  *v47 = v52;
  v43 = v48;
  v44 = v49;
  *&v47[16] = v6;
  v47[24] = v7;
  result = outlined destroy of Parser(&v43);
  *a1 = v36;
  *(a1 + 16) = v37;
  *(a1 + 24) = v8;
  *(a1 + 32) = v34;
  *(a1 + 48) = v35;
  return result;
}

uint64_t Parser.lexExplicitPCRE2GroupStart()@<X0>(uint64_t a1@<X8>)
{
  *&v67[9] = *(v1 + 73);
  v3 = v1[3];
  v65 = v1[2];
  v66 = v3;
  *v67 = v1[4];
  v4 = v1[1];
  v64[0] = *v1;
  v64[1] = v4;
  v61 = v65;
  v62 = v3;
  v63 = *v67;
  v59 = v64[0];
  v60 = v4;
  v5 = *&v67[16];
  v6 = v67[24];
  outlined init with copy of Parser(v64, &v49);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    if (specialized Parser.tryEat<A>(sequence:)(0x3A63696D6F7461, 0xE700000000000000))
    {
      v7 = 3;
LABEL_7:
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v51 = v61;
      v52 = v62;
      *v53 = v63;
      v49 = v59;
      v50 = v60;
      *&v53[16] = v5;
      v53[24] = v6;
      result = outlined destroy of Parser(&v49);
      *a1 = v7;
      v9 = v54;
      *(a1 + 24) = v55;
      v10 = v57;
      *(a1 + 40) = v56;
      *(a1 + 56) = v10;
      *(a1 + 72) = v58;
      *(a1 + 8) = v9;
      *(a1 + 80) = 3;
      return result;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979463280, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000013, 0x80000001C0C888F0))
    {
      v7 = 4;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979463278, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000013, 0x80000001C0C88910))
    {
      v7 = 5;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979528816, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000014, 0x80000001C0C88930))
    {
      v7 = 7;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(979528814, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000014, 0x80000001C0C88950))
    {
      v7 = 8;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x3A616C70616ELL, 0xE600000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD00000000000001ELL, 0x80000001C0C88970))
    {
      v7 = 6;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x3A626C70616ELL, 0xE600000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD00000000000001FLL, 0x80000001C0C88990))
    {
      v7 = 9;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(3830387, 0xE300000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0x725F747069726373, 0xEB000000003A6E75))
    {
      v7 = 10;
      goto LABEL_7;
    }

    if (specialized Parser.tryEat<A>(sequence:)(980579169, 0xE400000000000000) & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(0xD000000000000012, 0x80000001C0C889B0))
    {
      v7 = 11;
      goto LABEL_7;
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v45 = 0u;
  v46 = 0u;
  v58 = 0;
  v72 = 0;
  v11 = *&v67[16];
  v12 = v67[24];
  v42 = 0;
  v47 = 0;
  v43 = 0u;
  v44 = 0u;
  v48 = -1;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v42);
  v13 = *(v1 + 10);
  v14 = v1[3];
  v51 = v1[2];
  v52 = v14;
  *v53 = v1[4];
  *&v53[9] = *(v1 + 73);
  v15 = v1[1];
  v49 = *v1;
  v50 = v15;

  result = outlined destroy of Parser(&v49);
  if (v12 == 1)
  {

LABEL_50:
    v31 = v62;
    v1[2] = v61;
    v1[3] = v31;
    v1[4] = v63;
    v32 = v60;
    *v1 = v59;
    v1[1] = v32;
    *(v1 + 10) = v5;
    *(v1 + 88) = v6;
    *a1 = 0;
    v33 = v69;
    *(a1 + 8) = v68;
    v34 = v70;
    v35 = v71;
    *(a1 + 72) = v72;
    *(a1 + 56) = v35;
    *(a1 + 40) = v34;
    *(a1 + 24) = v33;
    *(a1 + 80) = -1;
    return result;
  }

  v16 = *(v11 + 2);
  v17 = *(v13 + 16);
  if (v17 >= v16)
  {
    v18 = *(v11 + 2);
  }

  else
  {
    v18 = *(v13 + 16);
  }

  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == v17)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_50;
  }

  v36 = v6;
  if (v19 < v17)
  {

    v20 = ~v19 + v17;
    for (i = 80 * v19 + 32; ; i += 80)
    {
      v38 = *(v13 + i);
      v22 = *(v13 + i + 16);
      v23 = *(v13 + i + 32);
      v24 = *(v13 + i + 48);
      *(v41 + 9) = *(v13 + i + 57);
      v40 = v23;
      v41[0] = v24;
      v39 = v22;
      if (!v38)
      {
        outlined init with copy of Diagnostic(&v38, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v26 = *(v11 + 2);
        v25 = *(v11 + 3);
        if (v26 >= v25 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v11);
        }

        *(v11 + 2) = v26 + 1;
        v27 = &v11[80 * v26];
        *(v27 + 2) = v38;
        v28 = v39;
        v29 = v40;
        v30 = v41[0];
        *(v27 + 89) = *(v41 + 9);
        *(v27 + 4) = v29;
        *(v27 + 5) = v30;
        *(v27 + 3) = v28;
        v5 = v11;
      }

      if (!v20)
      {
        break;
      }

      --v20;
    }

    swift_unknownObjectRelease();

    v6 = v36;
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

void closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = String.subscript.getter();
  v15 = v14;

  if (v13 ^ v15) < 0x4000 || (v16 = String.subscript.getter(), v18 = specialized Sequence<>.starts<A>(with:)(a2, a3, v16, v17), , (v18))
  {
    v91 = a4;
    v92 = 0;
    v93 = 0;
    v94 = 26;
    *&v88 = v11;
    *(&v88 + 1) = v11;
    Diagnostics.error(_:at:)(&v91, &v88);
    goto LABEL_4;
  }

  v76 = a2;
  v19 = *(a1 + 1);
  v78 = *a1;
  v79 = v19;
  v20 = *(a1 + 3);
  v80 = *(a1 + 2);
  v81 = v20;
  v82[0] = *(a1 + 4);
  *(v82 + 9) = *(a1 + 73);
  v21 = v79;
  outlined init with copy of Parser(&v78, &v91);
  v22 = String.subscript.getter();
  if (!((v22 ^ v23) >> 14))
  {
    goto LABEL_43;
  }

  Substring.subscript.getter();
  v25 = v24;

  v26 = String.index(after:)();

  if (v26 >> 14 < v21 >> 14)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:

    outlined destroy of Parser(&v78);
    goto LABEL_44;
  }

  outlined destroy of Parser(&v78);
  if (!v25)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v27 = Character.isNumber.getter();

  if (v27)
  {
    v85[0] = a4;
    memset(&v85[1], 0, 24);
    v86 = 28;
    *&v91 = v21;
    *(&v91 + 1) = v26;
    Diagnostics.error(_:at:)(v85, &v91);
  }

  specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, a1, specialized Source.peekPrefix(maxLength:_:), &v91);
  v28 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v29 = v91;

    *a5 = v29;
    a5[1] = v28;
    return;
  }

  v83[0] = a4;
  memset(&v83[1], 0, 24);
  v84 = 27;
  *&v91 = v21;
  *(&v91 + 1) = v26;
  Diagnostics.error(_:at:)(v83, &v91);

  v101 = 0;
  v102 = 0xE000000000000000;
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  v33 = a1[3];
  v34 = String.subscript.getter();
  v36 = v35;

  if (v34 ^ v36) < 0x4000 || (v37 = String.subscript.getter(), v39 = specialized Sequence<>.starts<A>(with:)(v76, a3, v37, v38), , (v39))
  {

    v40 = v32;
    goto LABEL_37;
  }

  v41 = *a1;
  v42 = a1[1];
  v71 = a1[6];
  v72 = a1[5];
  v70 = *(a1 + 7);
  v68 = a3;
  v69 = *(a1 + 72);
  v67 = v32;
  v40 = v32;
  v73 = *(a1 + 32);
  v74 = *(a1 + 88);
  while (1)
  {
    v44 = a1[2];
    v43 = a1[3];
    v45 = a1[10];
    *&v91 = v41;
    *(&v91 + 1) = v42;
    v92 = v44;
    v93 = v43;
    v94 = v73;
    v95 = v72;
    v96 = v71;
    v97 = v70;
    v98 = v69;
    v99 = v45;
    v100 = v74;
    outlined init with copy of Parser(&v91, &v88);
    v46 = String.subscript.getter();
    if (!((v46 ^ v47) >> 14))
    {
      break;
    }

    v75 = Substring.subscript.getter();
    v49 = v48;

    outlined destroy of Parser(&v91);
    String.subscript.getter();
    v40 = Substring.index(_:offsetBy:limitedBy:)();
    v51 = v50;

    if (v51)
    {
      strcpy(v87, "UNREACHABLE: ");
      HIWORD(v87[1]) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
      LOBYTE(v88) = 0;
      *(&v88 + 1) = v87[0];
      *&v89 = v87[1];
      *(&v89 + 1) = v44;
      *v90 = v44;
      memset(&v90[8], 0, 32);
      v90[40] = -1;
      if (v74)
      {
        outlined destroy of Diagnostic(&v88);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
        }

        v53 = *(v45 + 2);
        v52 = *(v45 + 3);
        if (v53 >= v52 >> 1)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v45);
        }

        *(v45 + 2) = v53 + 1;
        v54 = &v45[80 * v53];
        *(v54 + 2) = v88;
        v55 = v89;
        v56 = *v90;
        v57 = *&v90[16];
        *(v54 + 89) = *&v90[25];
        *(v54 + 4) = v56;
        *(v54 + 5) = v57;
        *(v54 + 3) = v55;
        a1[10] = v45;
      }

      String.subscript.getter();
      v58 = Substring.distance(from:to:)();

      if (v58 < 1 || (String.subscript.getter(), v40 = Substring.index(_:offsetBy:limitedBy:)(), v60 = v59, , (v60 & 1) != 0))
      {
        v40 = v44;
        goto LABEL_32;
      }

      if (v43 >> 14 < v40 >> 14)
      {
        goto LABEL_42;
      }
    }

    else if (v43 >> 14 < v40 >> 14)
    {
      goto LABEL_40;
    }

    a1[2] = v40;
    a1[3] = v43;
LABEL_32:
    MEMORY[0x1C68E0BE0](v75, v49);

    v61 = String.subscript.getter();
    v63 = v62;

    if ((v61 ^ v63) >= 0x4000)
    {
      v64 = String.subscript.getter();
      v66 = specialized Sequence<>.starts<A>(with:)(v76, v68, v64, v65);

      if ((v66 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  outlined destroy of Parser(&v91);
LABEL_36:

  v32 = v67;
LABEL_37:
  if (v40 >> 14 < v32 >> 14)
  {
    goto LABEL_41;
  }

LABEL_4:
  *a5 = 0;
  a5[1] = 0xE000000000000000;
}

uint64_t Character.isWordCharacter.getter(uint64_t a1, uint64_t a2)
{
  if ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter() & 1) != 0 || a1 == 95 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void Parser.expectNamedGroup(endingWith:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = 0u;
  v19 = 0u;
  lexBalanced #1 (_:) in Parser.expectNamedGroup(endingWith:)(&v18, v2, a1, v29);
  v33 = v29[2];
  v34 = v29[3];
  v35 = v29[4];
  v31 = v29[0];
  v32 = v29[1];
  v5 = v30;
  if (v30 == 255)
  {
    v8 = v2[2];
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, a1, 0xE100000000000000, 0, &v18);
    v9 = v2[2];
    if (v9 >> 14 < v8 >> 14)
    {
      __break(1u);
    }

    else
    {
      v10 = v18;
      v15 = v18;
      v16 = v8;
      v17 = v9;

      lexBalanced #1 (_:) in Parser.expectNamedGroup(endingWith:)(&v15, v2, a1, &v18);

      v26 = v20;
      v27 = v21;
      v28 = v22;
      v24 = v18;
      v25 = v19;
      v11 = v23;
      if (v23 == 255)
      {
        if ((specialized Parser.tryEat<A>(sequence:)(a1, 0xE100000000000000) & 1) == 0)
        {
          *&v18 = a1;
          *(&v18 + 1) = 0xE100000000000000;

          *&v18 = String.init<A>(_:)();
          *(&v18 + 1) = v14;
          v19 = 0uLL;
          LOBYTE(v20) = 3;
          *&v15 = v2[2];
          *(&v15 + 1) = v15;
          Diagnostics.error(_:at:)(&v18, &v15);
        }

        *a2 = v10;
        *(a2 + 16) = v8;
        *(a2 + 24) = v9;
        *(a2 + 80) = 0;
      }

      else
      {

        v12 = v27;
        *(a2 + 32) = v26;
        *(a2 + 48) = v12;
        *(a2 + 64) = v28;
        v13 = v25;
        *a2 = v24;
        *(a2 + 16) = v13;
        *(a2 + 80) = v11;
      }
    }
  }

  else
  {
    v6 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v6;
    *(a2 + 64) = v35;
    v7 = v32;
    *a2 = v31;
    *(a2 + 16) = v7;
    *(a2 + 80) = v5;
  }
}

void lexBalanced #1 (_:) in Parser.expectNamedGroup(endingWith:)(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a1[1];
  v16 = *a1;
  v7 = a2[2];
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v8))
  {
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    v14 = -1;
LABEL_8:
    *(a4 + 80) = v14;
    return;
  }

  v9 = a2[2];
  if (v9 >> 14 < v7 >> 14)
  {
    __break(1u);
  }

  else
  {
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(a2, a3, 0xE100000000000000, 0, &v18);
    v10 = a2[2];
    if (v9 >> 14 <= v10 >> 14)
    {
      v11 = v18;
      v12 = v19;
      if ((specialized Parser.tryEat<A>(sequence:)(a3, 0xE100000000000000) & 1) == 0)
      {
        v18 = a3;
        v19 = 0xE100000000000000;

        v18 = String.init<A>(_:)();
        v19 = v13;
        v20 = 0;
        v21 = 0;
        v22 = 3;
        *&v17 = a2[2];
        *(&v17 + 1) = v17;
        Diagnostics.error(_:at:)(&v18, &v17);
      }

      *a4 = v16;
      *(a4 + 16) = v15;
      *(a4 + 32) = v7;
      *(a4 + 40) = v9;
      *(a4 + 48) = v11;
      *(a4 + 56) = v12;
      *(a4 + 64) = v9;
      *(a4 + 72) = v10;
      v14 = 1;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t Parser.lexGroupStart()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[1];
  v65 = v1[2];
  v66 = v4;
  *v67 = v5;
  *&v67[9] = *(v1 + 73);
  v64[0] = *v1;
  v64[1] = v6;
  v56 = v65;
  v57 = v4;
  v58 = v5;
  v54 = v64[0];
  v55 = v6;
  v7 = *&v67[16];
  v8 = v67[24];
  outlined init with copy of Parser(v64, &v43);
  closure #1 in closure #1 in Parser.lexGroupStart()(v1, &v48);
  v9 = v53;
  if (v53 != 255)
  {
    v45 = v56;
    v46 = v57;
    *v47 = v58;
    v43 = v54;
    v44 = v55;
    *&v47[16] = v7;
    v47[24] = v8;
    result = outlined destroy of Parser(&v43);
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v59 = v48;
    v60 = v49;
    v11 = *(v1 + 2);
    if (v11 >> 14 >= v3 >> 14)
    {
      v12 = v62;
      *(a1 + 32) = v61;
      *(a1 + 48) = v12;
      *(a1 + 64) = v63;
      v13 = v60;
      *a1 = v59;
      *(a1 + 16) = v13;
      *(a1 + 80) = v9;
      *(a1 + 88) = v3;
      *(a1 + 96) = v11;
      return result;
    }

    __break(1u);
    goto LABEL_27;
  }

  v14 = *&v67[16];
  v15 = v67[24];
  v41[2] = v50;
  v41[3] = v51;
  v41[4] = v52;
  v42 = v53;
  v41[0] = v48;
  v41[1] = v49;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v41);
  v16 = *(v1 + 10);
  v17 = v1[3];
  v45 = v1[2];
  v46 = v17;
  *v47 = v1[4];
  *&v47[9] = *(v1 + 73);
  v18 = v1[1];
  v43 = *v1;
  v44 = v18;

  result = outlined destroy of Parser(&v43);
  if (v15 == 1)
  {
    goto LABEL_24;
  }

  v19 = *(v14 + 2);
  v20 = *(v16 + 16);
  if (v20 >= v19)
  {
    v21 = *(v14 + 2);
  }

  else
  {
    v21 = *(v16 + 16);
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == v20)
  {
    result = swift_unknownObjectRelease();
LABEL_25:
    v34 = v57;
    v1[2] = v56;
    v1[3] = v34;
    v1[4] = v58;
    v35 = v55;
    *v1 = v54;
    v1[1] = v35;
    *(v1 + 10) = v7;
    *(v1 + 88) = v8;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 255;
    return result;
  }

  if (v22 < v20)
  {

    v23 = ~v22 + v20;
    for (i = 80 * v22 + 32; ; i += 80)
    {
      v37 = *(v16 + i);
      v25 = *(v16 + i + 16);
      v26 = *(v16 + i + 32);
      v27 = *(v16 + i + 48);
      *(v40 + 9) = *(v16 + i + 57);
      v39 = v26;
      v40[0] = v27;
      v38 = v25;
      if (!v37)
      {
        outlined init with copy of Diagnostic(&v37, &v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v29 = *(v14 + 2);
        v28 = *(v14 + 3);
        if (v29 >= v28 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v14);
        }

        *(v14 + 2) = v29 + 1;
        v30 = &v14[80 * v29];
        *(v30 + 2) = v37;
        v31 = v38;
        v32 = v39;
        v33 = v40[0];
        *(v30 + 89) = *(v40 + 9);
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        *(v30 + 3) = v31;
        v7 = v14;
      }

      if (!v23)
      {
        break;
      }

      --v23;
    }

    swift_unknownObjectRelease();
LABEL_24:

    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in Parser.lexGroupStart()(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  Parser.lexExplicitPCRE2GroupStart()(v72);
  v76 = v72[2];
  v77 = v72[3];
  v78 = v72[4];
  v74 = v72[0];
  v75 = v72[1];
  v4 = v73;
  if (v73 == 255)
  {
    v7 = a1[3];
    v67 = a1[2];
    v68 = v7;
    v69[0] = a1[4];
    v8 = v69[0];
    *(v69 + 9) = *(a1 + 73);
    v9 = a1[1];
    v66[0] = *a1;
    v66[1] = v9;
    *&v65[9] = *(v69 + 9);
    v63 = v67;
    v64 = v7;
    *v65 = v8;
    v61 = v66[0];
    v62 = v9;
    outlined init with copy of Parser(v66, &v57);
    closure #1 in Parser.shouldLexGroupLikeAtom()(&v61, &v48);
    v10 = *&v65[16];
    v11 = v65[24];
    v70[2] = v63;
    v70[3] = v64;
    v71[0] = *v65;
    *(v71 + 9) = *&v65[9];
    v70[0] = v61;
    v70[1] = v62;

    outlined destroy of Parser(v70);
    *&v57 = v10;
    BYTE8(v57) = v11;
    v79.diags._rawValue = &v57;
    Diagnostics.appendNewFatalErrors(from:)(v79);

    if ((v48 & 1) != 0 || (v12._countAndFlagsBits = 40, v12._object = 0xE100000000000000, !Parser.tryEat(_:)(v12)))
    {
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v4 = -1;
      goto LABEL_10;
    }

    v13._countAndFlagsBits = 63;
    v13._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v13))
    {
      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v14))
      {
        v15._countAndFlagsBits = 124;
        v15._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v15))
        {
          v16 = 2;
LABEL_48:
          *a2 = v16;
          *(a2 + 8) = 0u;
          *(a2 + 24) = 0u;
          *(a2 + 40) = 0u;
          *(a2 + 56) = 0u;
          *(a2 + 72) = 0;
          v4 = 3;
          goto LABEL_10;
        }

        v18._countAndFlagsBits = 62;
        v18._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v18))
        {
          *a2 = 3;
          *(a2 + 8) = 0u;
          *(a2 + 24) = 0u;
          *(a2 + 40) = 0u;
          *(a2 + 56) = 0u;
          *(a2 + 72) = 0;
          *(a2 + 80) = 3;
          return;
        }

        v19._countAndFlagsBits = 61;
        v19._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v19))
        {
          v16 = 4;
          goto LABEL_48;
        }

        v20._countAndFlagsBits = 33;
        v20._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v20))
        {
          v16 = 5;
          goto LABEL_48;
        }

        v21._countAndFlagsBits = 42;
        v21._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v21))
        {
          v16 = 6;
          goto LABEL_48;
        }

        if (specialized Parser.tryEat<A>(sequence:)(15676, 0xE200000000000000))
        {
          v16 = 7;
          goto LABEL_48;
        }

        if (specialized Parser.tryEat<A>(sequence:)(8508, 0xE200000000000000))
        {
          v16 = 8;
          goto LABEL_48;
        }

        if (specialized Parser.tryEat<A>(sequence:)(10812, 0xE200000000000000))
        {
          v16 = 9;
          goto LABEL_48;
        }

        v22._countAndFlagsBits = 60;
        v22._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v22) || (specialized Parser.tryEat<A>(sequence:)(15440, 0xE200000000000000) & 1) != 0)
        {
          v23 = 62;
LABEL_34:
          Parser.expectNamedGroup(endingWith:)(v23, &v61);
          v24 = v64;
          *(a2 + 32) = v63;
          *(a2 + 48) = v24;
          *(a2 + 64) = *v65;
          *(a2 + 80) = v65[16];
          v25 = v62;
          *a2 = v61;
          *(a2 + 16) = v25;
          return;
        }

        v26._countAndFlagsBits = 39;
        v26._object = 0xE100000000000000;
        if (Parser.tryEat(_:)(v26))
        {
          v23 = 39;
          goto LABEL_34;
        }

        Parser.lexMatchingOptionSequence()(&v48);
        v27 = v50;
        v56 = v49;
        v53 = v51;
        v54 = v52;
        v55 = v48;
        if (v50)
        {
          v28._countAndFlagsBits = 58;
          v28._object = 0xE100000000000000;
          if (Parser.tryEat(_:)(v28))
          {
            goto LABEL_53;
          }

          v29 = a1[1];
          v61 = *a1;
          v62 = v29;
          v30 = a1[3];
          v63 = a1[2];
          v64 = v30;
          *v65 = a1[4];
          *&v65[9] = *(a1 + 73);
          v31 = v62;
          outlined init with copy of Parser(&v61, &v57);
          v32 = String.subscript.getter();
          if (!((v32 ^ v33) >> 14))
          {

            outlined destroy of Parser(&v61);
LABEL_52:
            v57 = xmmword_1C0C7E3A0;
            v58 = 0;
            v59 = 0;
            v60 = 3;
            *&v48 = v31;
            *(&v48 + 1) = v31;
            Diagnostics.error(_:at:)(&v57, &v48);
            goto LABEL_53;
          }

          v42 = Substring.subscript.getter();
          v44 = v43;

          v45 = String.index(after:)();

          if (v45 >> 14 >= v31 >> 14)
          {
            outlined destroy of Parser(&v61);
            if (!v44)
            {
              goto LABEL_52;
            }

            *&v57 = v42;
            *(&v57 + 1) = v44;
            v58 = 0;
            v59 = 0;
            v60 = 17;
            *&v48 = v31;
            *(&v48 + 1) = v45;

            Diagnostics.error(_:at:)(&v57, &v48);
            swift_bridgeObjectRelease_n();
LABEL_53:
            v46 = v54;
            *a2 = v55;
            *(a2 + 16) = v56;
            *(a2 + 24) = v27;
            *(a2 + 32) = v53;
            *(a2 + 48) = v46;
            v4 = 2;
            goto LABEL_10;
          }

LABEL_55:
          __break(1u);
          return;
        }

        v34 = a1[1];
        v61 = *a1;
        v62 = v34;
        v35 = a1[3];
        v63 = a1[2];
        v64 = v35;
        *v65 = a1[4];
        *&v65[9] = *(a1 + 73);
        v36 = v62;
        outlined init with copy of Parser(&v61, &v57);
        v37 = String.subscript.getter();
        if (!((v37 ^ v38) >> 14))
        {

          outlined destroy of Parser(&v61);
LABEL_46:
          v57 = 9uLL;
          v58 = 0;
          v59 = 0;
          v60 = 36;
          *&v47 = v36;
          *(&v47 + 1) = v36;
          Diagnostics.error(_:at:)(&v57, &v47);
          goto LABEL_47;
        }

        Substring.subscript.getter();
        v40 = v39;

        v41 = String.index(after:)();

        if (v41 >> 14 < v36 >> 14)
        {
          __break(1u);
          goto LABEL_55;
        }

        outlined destroy of Parser(&v61);
        if (!v40)
        {
          goto LABEL_46;
        }

        *&v57 = 0;
        *(&v57 + 1) = 0xE000000000000000;
        MEMORY[0x1C68E0BF0](63, 0xE100000000000000);

        Character.write<A>(to:)();

        v58 = 0;
        v59 = 0;
        v60 = 14;
        *&v47 = v36;
        *(&v47 + 1) = v41;
        Diagnostics.error(_:at:)(&v57, &v47);
      }

LABEL_47:
      v16 = 1;
      goto LABEL_48;
    }

    v17 = *(a1 + 8);
    if ((v17 & 0x20) != 0)
    {
      if (specialized Parser.tryEat<A>(sequence:)(14943, 0xE200000000000000))
      {
        goto LABEL_47;
      }

      v17 = *(a1 + 8);
    }

    if ((v17 & 0x80) == 0)
    {
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v4 = 3;
      goto LABEL_10;
    }

    goto LABEL_47;
  }

  v5 = v77;
  *(a2 + 32) = v76;
  *(a2 + 48) = v5;
  *(a2 + 64) = v78;
  v6 = v75;
  *a2 = v74;
  *(a2 + 16) = v6;
LABEL_10:
  *(a2 + 80) = v4;
}

uint64_t Parser.getClosingDelimiter(for:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 != 39 || a2 != 0xE100000000000000)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v3 == 34 && a2 == 0xE100000000000000;
    v7 = v6;
    if ((v5 & 1) == 0 && !v7)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v3 == 96 && a2 == 0xE100000000000000;
      v10 = v9;
      if ((v8 & 1) == 0 && !v10)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = v3 == 94 && a2 == 0xE100000000000000;
        v13 = v12;
        if ((v11 & 1) == 0 && !v13)
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v3 == 37 && a2 == 0xE100000000000000;
          v16 = v15;
          if ((v14 & 1) == 0 && !v16)
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v18 = v3 == 35 && a2 == 0xE100000000000000;
            v19 = v18;
            if ((v17 & 1) == 0 && !v19)
            {
              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v21 = v3 == 36 && a2 == 0xE100000000000000;
              v22 = v21;
              if ((v20 & 1) == 0 && !v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                if (v3 == 60 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  return 62;
                }

                if (v3 == 123 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  return 125;
                }

                v23._countAndFlagsBits = 0x656C646E61686E55;
                v23._object = 0xEE00657361632064;
                Parser.unreachable(_:)(v23);
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

void Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 2);
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[1];
  v74 = v3[2];
  v75 = v9;
  *v76 = v10;
  *&v76[9] = *(v3 + 73);
  v73[0] = *v3;
  v73[1] = v11;
  v71 = v9;
  v72 = v10;
  v68 = v73[0];
  v69 = v11;
  v70 = v74;
  v12 = *&v76[16];
  v55 = v76[24];
  outlined init with copy of Parser(v73, &v63);
  v13 = *(v3 + 2);
  v14._countAndFlagsBits = 43;
  v14._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v14))
  {
    v15 = *(v3 + 2);
    if (v15 >> 14 < v13 >> 14)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    Parser.lexNumber(_:)(1, &v63);
    if ((v65 & 1) == 0)
    {
      v31 = v64;
      if (v13 >> 14 < v64 >> 14)
      {
        v31 = v13;
      }

      if (v15 >> 14 >= *(&v64 + 1) >> 14)
      {
        v32 = v15;
      }

      else
      {
        v32 = *(&v64 + 1);
      }

      if (v32 >> 14 < v31 >> 14)
      {
        goto LABEL_66;
      }

      v53 = v32;
      v54 = v31;
      v28 = v55;
      v57 = BYTE8(v63);
      v30 = v63;
      v29 = 1;
      goto LABEL_34;
    }
  }

  v16 = *(v3 + 2);
  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v17))
  {
    v18 = *(v3 + 2);
    if (v18 >> 14 < v16 >> 14)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    Parser.lexNumber(_:)(1, &v63);
    if ((v65 & 1) == 0)
    {
      v28 = v55;
      v33 = v64;
      v30 = v63;
      v57 = BYTE8(v63);
      if ((BYTE8(v63) & 1) == 0)
      {
        v30 = -v63;
        if (__OFSUB__(0, v63))
        {
          goto LABEL_69;
        }
      }

      if (v16 >> 14 < v64 >> 14)
      {
        v33 = v16;
      }

      if (v18 >> 14 >= *(&v64 + 1) >> 14)
      {
        v34 = v18;
      }

      else
      {
        v34 = *(&v64 + 1);
      }

      if (v34 >> 14 < v33 >> 14)
      {
        goto LABEL_67;
      }

      v53 = v34;
      v54 = v33;
      v29 = 1;
      goto LABEL_34;
    }
  }

  Parser.lexNumber(_:)(1, &v63);
  if ((v65 & 1) == 0)
  {
    v28 = v55;
    v29 = 0;
    v53 = *(&v64 + 1);
    v54 = v64;
    v30 = v63;
    v57 = BYTE8(v63);
LABEL_34:
    v65 = v70;
    v66 = v71;
    *v67 = v72;
    v63 = v68;
    v64 = v69;
    *&v67[16] = v12;
    v67[24] = v28;
    outlined destroy of Parser(&v63);
    v35 = *(v4 + 2);
    if (v35 >> 14 >= v8 >> 14)
    {
      if (((v29 | a1) & 1) == 0 && (v57 & 1) == 0 && !v30)
      {
        v63 = 5uLL;
        v64 = 0uLL;
        LOBYTE(v65) = 36;
        *&v59 = v8;
        *(&v59 + 1) = v35;
        Diagnostics.error(_:at:)(&v63, &v59);
        v30 = 0;
      }

      if ((a2 & 1) == 0)
      {
        v37 = 0;
        v38 = 0;
        v36 = 0uLL;
        v39 = 1;
        goto LABEL_49;
      }

      Parser.lexRecursionLevel()(&v59);
      v36 = v59;
      v38 = *(&v60 + 1);
      v37 = v60;
      if (v61)
      {
        v39 = 1;
LABEL_49:
        LOBYTE(v59) = v39;
        *a3 = v30;
        *(a3 + 8) = v57 & 1;
        *(a3 + 16) = v54;
        *(a3 + 24) = v53;
        *(a3 + 32) = v29;
        *(a3 + 40) = v36;
        *(a3 + 56) = v37;
        *(a3 + 64) = v38;
        *(a3 + 72) = v39;
        *(a3 + 80) = v8;
        *(a3 + 88) = v35;
        return;
      }

      if (v8 >> 14 >= v60 >> 14)
      {
        v8 = v60;
      }

      if (v35 >> 14 < *(&v60 + 1) >> 14)
      {
        v35 = *(&v60 + 1);
      }

      if (v35 >> 14 >= v8 >> 14)
      {
        v39 = 0;
        goto LABEL_49;
      }

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_64;
  }

  v19 = *&v76[16];
  v20 = v76[24];
  outlined consume of AST.Reference.Kind?(0, 0, 0, 0, 255);
  v21 = *(v3 + 10);
  v22 = v4[3];
  v65 = v4[2];
  v66 = v22;
  *v67 = v4[4];
  *&v67[9] = *(v4 + 73);
  v23 = v4[1];
  v63 = *v4;
  v64 = v23;

  outlined destroy of Parser(&v63);
  if (v20 == 1)
  {
LABEL_61:

    goto LABEL_62;
  }

  v56 = v12;
  v24 = *(v19 + 2);
  v25 = *(v21 + 16);
  if (v25 >= v24)
  {
    v26 = *(v19 + 2);
  }

  else
  {
    v26 = *(v21 + 16);
  }

  if (v24)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 == v25)
  {
    swift_unknownObjectRelease();
    v12 = v56;
LABEL_62:
    v51 = v71;
    v4[2] = v70;
    v4[3] = v51;
    v4[4] = v72;
    v52 = v69;
    *v4 = v68;
    v4[1] = v52;
    *(v4 + 10) = v12;
    *(v4 + 88) = v55;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 255;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    return;
  }

  if (v27 < v25)
  {

    v40 = ~v27 + v25;
    v41 = 80 * v27 + 32;
    v12 = v56;
    while (1)
    {
      v59 = *(v21 + v41);
      v42 = *(v21 + v41 + 16);
      v43 = *(v21 + v41 + 32);
      v44 = *(v21 + v41 + 48);
      *(v62 + 9) = *(v21 + v41 + 57);
      v61 = v43;
      v62[0] = v44;
      v60 = v42;
      if (!v59)
      {
        outlined init with copy of Diagnostic(&v59, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
        }

        v46 = *(v19 + 2);
        v45 = *(v19 + 3);
        if (v46 >= v45 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v19);
        }

        *(v19 + 2) = v46 + 1;
        v47 = &v19[80 * v46];
        *(v47 + 2) = v59;
        v48 = v60;
        v49 = v61;
        v50 = v62[0];
        *(v47 + 89) = *(v62 + 9);
        *(v47 + 4) = v49;
        *(v47 + 5) = v50;
        *(v47 + 3) = v48;
        v12 = v19;
      }

      if (!v40)
      {
        break;
      }

      --v40;
      v41 += 80;
    }

    swift_unknownObjectRelease();
    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
}

void Parser.lexKnownConditionalStart()(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v199 = v1[2];
  v200 = v4;
  *v201 = v1[4];
  v5 = *v201;
  *&v201[9] = *(v1 + 73);
  v6 = v1[1];
  v198[0] = *v1;
  v198[1] = v6;
  v195 = v199;
  v196 = v4;
  v197 = v5;
  v194 = v6;
  v193 = v198[0];
  v7 = *&v201[16];
  v8 = v201[24];
  outlined init with copy of Parser(v198, &v185);
  if ((specialized Parser.tryEat<A>(sequence:)(2637608, 0xE300000000000000) & 1) == 0)
  {
    goto LABEL_81;
  }

  v9 = *(v1 + 2);
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[1];
  v173 = v1[2];
  v174 = v10;
  *v175 = v11;
  *&v175[9] = *(v1 + 73);
  v172[0] = *v1;
  v172[1] = v12;
  v162 = v10;
  v163 = v11;
  v160 = v12;
  v161 = v173;
  v159 = v172[0];
  v13 = *&v175[16];
  v14 = v175[24];
  outlined init with copy of Parser(v172, &v145);
  v15._countAndFlagsBits = 82;
  v15._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v15))
  {
    v19 = v13;
    v20 = v14;
    v138 = v9;
    v21 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in closure #1 in Parser.lexKnownCondition());
    v23 = v22;
    swift_arrayDestroy();
    if (v23)
    {
      v135 = v19;
      v139 = v20;
      v142 = v8;
      v24 = Parser.getClosingDelimiter(for:)(v21, v23);
      v26 = v25;

      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 0, &v145);
      v28 = *(&v145 + 1);
      v27 = v145;
      v29 = *v147;
      v30 = v147[40];
      LODWORD(v207) = *&v147[41];
      *(&v207 + 3) = *&v147[44];
      if (v147[0] == 0xFF)
      {
        v31 = *(v2 + 2);
        closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, v24, v26, 0, &v145);
        v132 = *(v2 + 2);
        if (v132 >> 14 < v31 >> 14)
        {
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v28 = *(&v145 + 1);
        v27 = v145;
        v129 = v31;
        if ((specialized Parser.tryEat<A>(sequence:)(v24, v26) & 1) == 0)
        {
          *&v145 = v24;
          *(&v145 + 1) = v26;
          *&v216 = String.init<A>(_:)();
          *(&v216 + 1) = v32;
          v217 = 0uLL;
          v218[0] = 3;
          *&v145 = *(v2 + 2);
          *(&v145 + 1) = v145;
          Diagnostics.error(_:at:)(&v216, &v145);
        }

        v13 = v135;
        v30 = 1;
        v222 = 1;
        v33 = 0uLL;
        v34 = 2;
        v35 = 0uLL;
        v36 = 0uLL;
      }

      else
      {
        v126 = v146;
        v127 = *&v147[24];
        v128 = *&v147[8];
        v132 = *&v147[56];
        v129 = *&v147[48];
        if ((specialized Parser.tryEat<A>(sequence:)(v24, v26) & 1) == 0)
        {
          *&v145 = v24;
          *(&v145 + 1) = v26;
          *&v216 = String.init<A>(_:)();
          *(&v216 + 1) = v37;
          v217 = 0uLL;
          v218[0] = 3;
          *&v145 = *(v2 + 2);
          *(&v145 + 1) = v145;
          Diagnostics.error(_:at:)(&v216, &v145);
        }

        v13 = v135;
        LODWORD(v211) = v207;
        *(&v211 + 3) = *(&v207 + 3);
        v34 = v29;
        v35 = v127;
        v33 = v128;
        v36 = v126;
      }

      *&v202 = v27;
      *(&v202 + 1) = v28;
      v203 = v36;
      v204[0] = v34;
      v204[7] = HIBYTE(v29);
      *&v204[5] = HIDWORD(v29) >> 8;
      *&v204[1] = v29 >> 8;
      *&v204[8] = v33;
      *&v204[24] = v35;
      v204[40] = v30;
      *&v204[41] = v211;
      *&v204[44] = *(&v211 + 3);
      *&v204[48] = v129;
      *&v204[56] = v132;
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(&v202);
      *&v147[32] = *&v204[32];
      *&v147[48] = *&v204[48];
      v148 = v205;
      v149 = v206;
      v145 = v202;
      v146 = v203;
      *v147 = *v204;
      *&v147[16] = *&v204[16];
      AST.root.modify(&v145);
      v155 = *&v147[32];
      v156 = *&v147[48];
      v157 = v148;
      v158 = v149;
      v151 = v145;
      v152 = v146;
      v153 = *v147;
      v154 = *&v147[16];
      v14 = v139;
      v8 = v142;
      v9 = v138;
      goto LABEL_51;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x454E49464544, 0xE600000000000000))
    {
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi4_(&v202);
      *&v147[32] = *&v204[32];
      *&v147[48] = *&v204[48];
      v148 = v205;
      v149 = v206;
      v145 = v202;
      v146 = v203;
      *v147 = *v204;
      *&v147[16] = *&v204[16];
      AST.root.modify(&v145);
      v155 = *&v147[32];
      v156 = *&v147[48];
      v157 = v148;
      v158 = v149;
      v151 = v145;
      v152 = v146;
      v153 = *v147;
      v154 = *&v147[16];
      v14 = v20;
LABEL_16:
      v13 = v19;
      goto LABEL_51;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x4E4F4953524556, 0xE700000000000000))
    {
      v143 = v8;
      v38 = *(v2 + 2);
      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      v40 = Parser.tryEat(_:)(v39);
      v41._countAndFlagsBits = 61;
      v41._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v41))
      {
        v207 = xmmword_1C0C7E3B0;
        v208 = 0uLL;
        v209[0] = 3;
        *&v145 = *(v2 + 2);
        *(&v145 + 1) = v145;
        Diagnostics.error(_:at:)(&v207, &v145);
      }

      v42 = *(v2 + 2);
      v43 = v42 >> 14;
      if (v42 >> 14 < v38 >> 14)
      {
        goto LABEL_111;
      }

      v130 = v40;
      v133 = v38;
      v136 = v19;
      v140 = v20;
      Parser.lexNumber(_:)(1, &v145);
      if (v147[0])
      {
        v145 = xmmword_1C0C7E360;
        v146 = xmmword_1C0C7E3C0;
        v147[0] = 2;
        v44 = *(v2 + 2);
        *&v202 = v44;
        *(&v202 + 1) = v44;
        Diagnostics.error(_:at:)(&v145, &v202);
        v45 = 0;
        v46 = 1;
        v47 = v44;
      }

      else
      {
        v47 = *(&v146 + 1);
        v44 = v146;
        v46 = BYTE8(v145);
        v45 = v145;
      }

      v56._countAndFlagsBits = 46;
      v56._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v56))
      {
        v202 = xmmword_1C0C7E330;
        v203 = 0uLL;
        v204[0] = 3;
        *&v216 = *(v2 + 2);
        *(&v216 + 1) = v216;
        Diagnostics.error(_:at:)(&v202, &v216);
      }

      Parser.lexNumber(_:)(1, &v216);
      if (v218[0])
      {
        v216 = xmmword_1C0C7E360;
        v217 = xmmword_1C0C7E3C0;
        v218[0] = 2;
        v57 = v46;
        v58 = v47;
        v59 = v45;
        v60 = *(v2 + 2);
        *&v211 = v60;
        *(&v211 + 1) = v60;
        Diagnostics.error(_:at:)(&v216, &v211);
        v61 = 0;
        v62 = vdupq_n_s64(v60);
        v45 = v59;
        v47 = v58;
        v46 = v57;
        v43 = v42 >> 14;
        v63 = 1;
      }

      else
      {
        v62 = v217;
        v63 = BYTE8(v216);
        v61 = v216;
      }

      LOBYTE(v211) = v46 & 1;
      v222 = v63 & 1;
      v64 = *(v2 + 2);
      if (v43 > v64 >> 14)
      {
        goto LABEL_112;
      }

      v221 = v211;
      v220 = v222 & 1;
      LOBYTE(v145) = v130;
      *(&v145 + 1) = v133;
      *&v146 = v42;
      *(&v146 + 1) = v45;
      v147[0] = v211 & 1;
      *&v147[8] = v44;
      *&v147[16] = v47;
      *&v147[24] = v61;
      v147[32] = v222 & 1;
      *&v147[40] = v62;
      *&v147[56] = v42;
      *&v148 = v64;
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi1_(&v145);
      *&v204[32] = *&v147[32];
      *&v204[48] = *&v147[48];
      v205 = v148;
      v206 = v149;
      v202 = v145;
      v203 = v146;
      *v204 = *v147;
      *&v204[16] = *&v147[16];
      AST.root.modify(&v202);
      v155 = *&v204[32];
      v156 = *&v204[48];
      v157 = v205;
      v158 = v206;
      v151 = v202;
      v152 = v203;
      v153 = *v204;
      v154 = *&v204[16];
    }

    else
    {
      v14 = v20;
      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 1, &v216);
      if (v218[0] != 0xFF)
      {
        v202 = v216;
        v203 = v217;
        *&v204[8] = *&v218[8];
        *&v204[24] = *&v218[24];
        *&v204[40] = *&v218[40];
        *v204 = *v218;
        *&v204[56] = v219;
        _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(&v202);
        *&v147[32] = *&v204[32];
        *&v147[48] = *&v204[48];
        v148 = v205;
        v149 = v206;
        v145 = v202;
        v146 = v203;
        *v147 = *v204;
        *&v147[16] = *&v204[16];
        AST.root.modify(&v145);
        v155 = *&v147[32];
        v156 = *&v147[48];
        v157 = v148;
        v158 = v149;
        v151 = v145;
        v152 = v146;
        v153 = *v147;
        v154 = *&v147[16];
        goto LABEL_16;
      }

      v136 = v19;
      v140 = v20;
      v143 = v8;
      v48 = v2[3];
      v213 = v2[2];
      v214 = v48;
      v215[0] = v2[4];
      *(v215 + 9) = *(v2 + 73);
      v49 = *v2;
      v212 = v2[1];
      v211 = v49;
      v50 = v212;
      outlined init with copy of Parser(&v211, &v145);
      closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, 41, 0xE100000000000000, 0, &v145);
      v51 = *(v2 + 2);
      if (v51 >> 14 < v50 >> 14)
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        return;
      }

      v53 = *(&v145 + 1);
      v52 = v145;
      Parser.lexRecursionLevel()(&v145);
      v131 = v145;
      v134 = v146;
      v54 = v147[0];
      outlined destroy of Parser(&v211);
      if (v54)
      {
        v55 = v134;
      }

      else
      {
        v55 = v134;
        if (v50 >> 14 >= v134 >> 14)
        {
          v50 = v134;
        }

        if (v51 >> 14 < *(&v134 + 1) >> 14)
        {
          v51 = *(&v134 + 1);
        }

        if (v51 >> 14 < v50 >> 14)
        {
          goto LABEL_114;
        }
      }

      v222 = v54;
      *&v207 = v52;
      *(&v207 + 1) = v53;
      v208 = 0uLL;
      v209[0] = 2;
      *&v209[8] = v131;
      *&v209[24] = v55;
      v209[40] = v54;
      *&v210 = v50;
      *(&v210 + 1) = v51;
      v65 = *(v2 + 6);

      outlined init with copy of AST.Reference(&v207, &v145);
      v66 = specialized Set.contains(_:)(v52, v53, v65);
      outlined destroy of AST.Reference(&v207, outlined consume of AST.Reference.Kind);

      if (v66)
      {
        *v204 = *v209;
        *&v204[16] = *&v209[16];
        *&v204[32] = *&v209[32];
        *&v204[48] = v210;
        v202 = v207;
        v203 = v208;
        _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi_(&v202);
        *&v147[32] = *&v204[32];
        *&v147[48] = *&v204[48];
        v148 = v205;
        v149 = v206;
        v145 = v202;
        v146 = v203;
        *v147 = *v204;
        *&v147[16] = *&v204[16];
        AST.root.modify(&v145);
        v155 = *&v147[32];
        v156 = *&v147[48];
        v157 = v148;
        v158 = v149;
        v151 = v145;
        v152 = v146;
        v153 = *v147;
        v154 = *&v147[16];
      }

      else
      {
        outlined destroy of AST.Reference(&v207, outlined consume of AST.Reference.Kind);
        _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOSgWOi0_(&v151);
      }
    }

    v14 = v140;
    v8 = v143;
    v13 = v136;
    v9 = v138;
    goto LABEL_51;
  }

  v16._countAndFlagsBits = 38;
  v16._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v16))
  {
    v17 = *(v1 + 2);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, 41, 0xE100000000000000, 0, &v145);
    v18 = *(v2 + 2);
    if (v18 >> 14 < v17 >> 14)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    LOBYTE(v216) = 1;
    v202 = v145;
    v203 = 0uLL;
    v204[0] = 2;
    memset(&v204[8], 0, 32);
    v204[40] = 1;
    *&v204[48] = v17;
    *&v204[56] = v18;
    _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi0_(&v202);
    *&v147[32] = *&v204[32];
    *&v147[48] = *&v204[48];
    v148 = v205;
    v149 = v206;
    v145 = v202;
    v146 = v203;
    *v147 = *v204;
    *&v147[16] = *&v204[16];
    AST.root.modify(&v145);
    v155 = *&v147[32];
    v156 = *&v147[48];
    v157 = v148;
    v158 = v149;
    v151 = v145;
    v152 = v146;
    v153 = *v147;
    v154 = *&v147[16];
  }

  else
  {
    Parser.lexNumber(_:)(1, &v216);
    if (v218[0])
    {
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi3_(&v202);
    }

    else
    {
      LOBYTE(v207) = 1;
      *&v202 = v216;
      *(&v202 + 1) = BYTE8(v216) & 1;
      v203 = v217;
      v204[0] = 0;
      memset(&v204[8], 0, 32);
      v204[40] = 1;
      *&v204[48] = v217;
      _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi0_(&v202);
    }

    *&v147[32] = *&v204[32];
    *&v147[48] = *&v204[48];
    v148 = v205;
    v149 = v206;
    v145 = v202;
    v146 = v203;
    *v147 = *v204;
    *&v147[16] = *&v204[16];
    AST.root.modify(&v145);
    v155 = *&v147[32];
    v156 = *&v147[48];
    v157 = v148;
    v158 = v149;
    v151 = v145;
    v152 = v146;
    v153 = *v147;
    v154 = *&v147[16];
  }

LABEL_51:
  v180 = v155;
  v181 = v156;
  v182 = v157;
  v183 = v158;
  v176 = v151;
  v177 = v152;
  v178 = v153;
  v179 = v154;
  v184[2] = v153;
  v184[3] = v154;
  v184[0] = v151;
  v184[1] = v152;
  v184[6] = v157;
  v184[7] = v158;
  v184[4] = v155;
  v184[5] = v156;
  if (sub_1C0C7C864(v184) != 1)
  {
    *v147 = v161;
    *&v147[16] = v162;
    *&v147[32] = v163;
    v145 = v159;
    v146 = v160;
    *&v147[48] = v13;
    v147[56] = v14;
    outlined destroy of Parser(&v145);
    v168 = v155;
    v169 = v156;
    v170 = v157;
    v171 = v158;
    v164 = v151;
    v165 = v152;
    v166 = v153;
    v167 = v154;
    goto LABEL_76;
  }

  v67 = v9;
  v68 = v8;
  v137 = v7;
  v69 = v13;
  v70 = *&v175[16];
  v71 = v175[24];
  *&v147[32] = v155;
  *&v147[48] = v156;
  v148 = v157;
  v149 = v158;
  v145 = v151;
  v146 = v152;
  *v147 = v153;
  *&v147[16] = v154;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v145);
  v72 = *(v2 + 10);
  v73 = v2[3];
  *v204 = v2[2];
  *&v204[16] = v73;
  *&v204[32] = v2[4];
  *&v204[41] = *(v2 + 73);
  v74 = v2[1];
  v202 = *v2;
  v203 = v74;

  outlined destroy of Parser(&v202);
  if (v71 == 1)
  {
  }

  else
  {
    v141 = v14;
    v75 = *(v70 + 2);
    v76 = *(v72 + 16);
    if (v76 >= v75)
    {
      v77 = *(v70 + 2);
    }

    else
    {
      v77 = *(v72 + 16);
    }

    if (v75)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    if (v78 != v76)
    {
      v144 = v68;
      if (v78 >= v76)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v80 = ~v78 + v76;
      v81 = 80 * v78 + 32;
      v79 = v69;
      v7 = v137;
      while (1)
      {
        v216 = *(v72 + v81);
        v82 = *(v72 + v81 + 16);
        v83 = *(v72 + v81 + 32);
        v84 = *(v72 + v81 + 48);
        *&v218[25] = *(v72 + v81 + 57);
        *v218 = v83;
        *&v218[16] = v84;
        v217 = v82;
        if (!v216)
        {
          outlined init with copy of Diagnostic(&v216, &v207);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
          }

          v86 = *(v70 + 2);
          v85 = *(v70 + 3);
          if (v86 >= v85 >> 1)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v70);
          }

          *(v70 + 2) = v86 + 1;
          v87 = &v70[80 * v86];
          *(v87 + 2) = v216;
          v88 = v217;
          v89 = *v218;
          v90 = *&v218[16];
          *(v87 + 89) = *&v218[25];
          *(v87 + 4) = v89;
          *(v87 + 5) = v90;
          *(v87 + 3) = v88;
          v79 = v70;
        }

        if (!v80)
        {
          break;
        }

        --v80;
        v81 += 80;
      }

      swift_unknownObjectRelease();

      v14 = v141;
      v8 = v144;
      v9 = v67;
      goto LABEL_75;
    }

    swift_unknownObjectRelease();
  }

  v79 = v69;
  v7 = v137;
  v8 = v68;
  v9 = v67;
LABEL_75:
  v91 = v162;
  v2[2] = v161;
  v2[3] = v91;
  v2[4] = v163;
  v92 = v160;
  *v2 = v159;
  v2[1] = v92;
  *(v2 + 10) = v79;
  *(v2 + 88) = v14;
  v170 = v182;
  v171 = v183;
  v168 = v180;
  v169 = v181;
  v166 = v178;
  v167 = v179;
  v164 = v176;
  v165 = v177;
LABEL_76:
  *&v204[32] = v168;
  *&v204[48] = v169;
  v205 = v170;
  v206 = v171;
  v202 = v164;
  v203 = v165;
  *v204 = v166;
  *&v204[16] = v167;
  if (sub_1C0C7C864(&v202) == 1)
  {
    sub_1C0C7C844(&v185);
  }

  else
  {
    v93 = *(v2 + 2);
    if (v93 >> 14 < v9 >> 14)
    {
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    *&v188[16] = v168;
    v189 = v169;
    v190 = v170;
    v191 = v171;
    v185 = v164;
    v186 = v165;
    v187 = v166;
    *v188 = v167;
    *&v192 = v9;
    *(&v192 + 1) = v93;
    AST.root.modify(&v185);
  }

  v148 = v190;
  v149 = v191;
  v150 = v192;
  *v147 = v187;
  *&v147[16] = *v188;
  *&v147[32] = *&v188[16];
  *&v147[48] = v189;
  v145 = v185;
  v146 = v186;
  if (sub_1C0C7C864(&v145) == 1)
  {
LABEL_81:
    v94 = *&v201[16];
    v95 = v201[24];
    v96 = *(v2 + 10);
    v97 = v2[3];
    *v147 = v2[2];
    *&v147[16] = v97;
    *&v147[32] = v2[4];
    *&v147[41] = *(v2 + 73);
    v98 = v2[1];
    v145 = *v2;
    v146 = v98;

    outlined destroy of Parser(&v145);
    if (v95 == 1)
    {

LABEL_105:
      v120 = v196;
      v2[2] = v195;
      v2[3] = v120;
      v2[4] = v197;
      v121 = v194;
      *v2 = v193;
      v2[1] = v121;
      *(v2 + 10) = v7;
      *(v2 + 88) = v8;
      sub_1C0C7C844(&v185);
      v122 = v191;
      a1[6] = v190;
      a1[7] = v122;
      a1[8] = v192;
      v123 = *v188;
      a1[2] = v187;
      a1[3] = v123;
      v124 = v189;
      a1[4] = *&v188[16];
      a1[5] = v124;
      v125 = v186;
      *a1 = v185;
      a1[1] = v125;
      return;
    }

    v99 = *(v94 + 2);
    v100 = *(v96 + 16);
    if (v100 >= v99)
    {
      v101 = *(v94 + 2);
    }

    else
    {
      v101 = *(v96 + 16);
    }

    if (v99)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    if (v102 == v100)
    {
      swift_unknownObjectRelease();
      goto LABEL_105;
    }

    if (v102 < v100)
    {

      v109 = ~v102 + v100;
      for (i = 80 * v102 + 32; ; i += 80)
      {
        v185 = *(v96 + i);
        v111 = *(v96 + i + 16);
        v112 = *(v96 + i + 32);
        v113 = *(v96 + i + 48);
        *&v188[9] = *(v96 + i + 57);
        v187 = v112;
        *v188 = v113;
        v186 = v111;
        if (!v185)
        {
          outlined init with copy of Diagnostic(&v185, &v202);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
          }

          v115 = *(v94 + 2);
          v114 = *(v94 + 3);
          if (v115 >= v114 >> 1)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v94);
          }

          *(v94 + 2) = v115 + 1;
          v116 = &v94[80 * v115];
          *(v116 + 2) = v185;
          v117 = v186;
          v118 = v187;
          v119 = *v188;
          *(v116 + 89) = *&v188[9];
          *(v116 + 4) = v118;
          *(v116 + 5) = v119;
          *(v116 + 3) = v117;
          v7 = v94;
        }

        if (!v109)
        {
          break;
        }

        --v109;
      }

      swift_unknownObjectRelease();

      goto LABEL_105;
    }

    goto LABEL_107;
  }

  v103 = v150;
  v155 = *&v147[32];
  v156 = *&v147[48];
  v157 = v148;
  v158 = v149;
  v151 = v145;
  v152 = v146;
  v153 = *v147;
  v154 = *&v147[16];
  v104._countAndFlagsBits = 41;
  v104._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v104))
  {
    v207 = xmmword_1C0C7E3A0;
    v208 = 0uLL;
    v209[0] = 3;
    *&v216 = *(v2 + 2);
    *(&v216 + 1) = v216;
    Diagnostics.error(_:at:)(&v207, &v216);
  }

  *v218 = v195;
  *&v218[16] = v196;
  *&v218[32] = v197;
  v216 = v193;
  v217 = v194;
  *&v218[48] = v7;
  LOBYTE(v219) = v8;
  outlined destroy of Parser(&v216);
  v105 = v156;
  a1[4] = v155;
  a1[5] = v105;
  v106 = v158;
  a1[6] = v157;
  a1[7] = v106;
  v107 = v152;
  *a1 = v151;
  a1[1] = v107;
  v108 = v154;
  a1[2] = v153;
  a1[3] = v108;
  a1[8] = v103;
  AST.root.modify(a1);
}

uint64_t Parser.lexGroupConditionalStart()@<X0>(uint64_t a1@<X8>)
{
  *&v104[9] = *(v1 + 73);
  v3 = v1[3];
  v102 = v1[2];
  v103 = v3;
  *v104 = v1[4];
  v4 = v1[1];
  v101[0] = *v1;
  v101[1] = v4;
  v98 = v102;
  v99 = v3;
  v100 = *v104;
  v96 = v101[0];
  v97 = v4;
  v5 = *&v104[16];
  v6 = v104[24];
  outlined init with copy of Parser(v101, &v85);
  if ((specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000) & 1) == 0)
  {
LABEL_27:
    v39 = *&v104[16];
    v40 = v104[24];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    *v89 = 0u;
    v90 = 0;
    *&v89[16] = 255;
    *&v89[24] = 0;
    outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v85);
    v41 = *(v1 + 10);
    v42 = v1[3];
    v93 = v1[2];
    v94 = v42;
    *v95 = v1[4];
    *&v95[9] = *(v1 + 73);
    v43 = v1[1];
    v91 = *v1;
    v92 = v43;

    result = outlined destroy of Parser(&v91);
    if (v40 == 1)
    {
    }

    else
    {
      v44 = *(v39 + 2);
      v45 = *(v41 + 16);
      if (v45 >= v44)
      {
        v46 = *(v39 + 2);
      }

      else
      {
        v46 = *(v41 + 16);
      }

      if (v44)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      if (v47 == v45)
      {
        result = swift_unknownObjectRelease();
      }

      else
      {
        v65 = v6;
        if (v47 >= v45)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v48 = ~v47 + v45;
        for (i = 80 * v47 + 32; ; i += 80)
        {
          v75 = *(v41 + i);
          v50 = *(v41 + i + 16);
          v51 = *(v41 + i + 32);
          v52 = *(v41 + i + 48);
          *&v78[9] = *(v41 + i + 57);
          v77 = v51;
          *v78 = v52;
          v76 = v50;
          if (!v75)
          {
            outlined init with copy of Diagnostic(&v75, v73);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
            }

            v54 = *(v39 + 2);
            v53 = *(v39 + 3);
            if (v54 >= v53 >> 1)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v39);
            }

            *(v39 + 2) = v54 + 1;
            v55 = &v39[80 * v54];
            *(v55 + 2) = v75;
            v56 = v76;
            v57 = v77;
            v58 = *v78;
            *(v55 + 89) = *&v78[9];
            *(v55 + 4) = v57;
            *(v55 + 5) = v58;
            *(v55 + 3) = v56;
            v5 = v39;
          }

          if (!v48)
          {
            break;
          }

          --v48;
        }

        swift_unknownObjectRelease();

        v6 = v65;
      }
    }

    v59 = v99;
    v1[2] = v98;
    v1[3] = v59;
    v1[4] = v100;
    v60 = v97;
    *v1 = v96;
    v1[1] = v60;
    *(v1 + 10) = v5;
    *(v1 + 88) = v6;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 255;
    return result;
  }

  v7 = *(v1 + 2);
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[1];
  v87 = v1[2];
  v88 = v8;
  *v89 = v9;
  *&v89[9] = *(v1 + 73);
  v85 = *v1;
  v86 = v10;
  v82 = v87;
  v83 = v8;
  v84 = v9;
  v80 = v85;
  v81 = v10;
  v11 = *&v89[16];
  v12 = v89[24];
  outlined init with copy of Parser(&v85, &v91);
  closure #1 in closure #1 in Parser.lexGroupStart()(v1, &v75);
  v13 = v79;
  if (v79 != 255)
  {
    v63 = v76;
    v66 = v75;
    v61 = *v78;
    v62 = v77;
    v14 = *&v78[16];
    v93 = v82;
    v94 = v83;
    *v95 = v84;
    v91 = v80;
    v92 = v81;
    *&v95[16] = v11;
    v95[24] = v12;
    result = outlined destroy of Parser(&v91);
    v16 = *(v1 + 2);
    if (v16 >> 14 >= v7 >> 14)
    {
      v87 = v98;
      v88 = v99;
      *v89 = v100;
      v85 = v96;
      v86 = v97;
      *&v89[16] = v5;
      v89[24] = v6;
      result = outlined destroy of Parser(&v85);
      *a1 = v66;
      *(a1 + 16) = v63;
      *(a1 + 32) = v62;
      *(a1 + 48) = v61;
      *(a1 + 64) = v14;
      *(a1 + 80) = v13;
      *(a1 + 88) = v7;
      *(a1 + 96) = v16;
      return result;
    }

    __break(1u);
    goto LABEL_50;
  }

  v67 = v12;
  v17 = *&v89[16];
  v18 = v89[24];
  v73[2] = v77;
  v73[3] = *v78;
  v73[4] = *&v78[16];
  v74 = v79;
  v73[0] = v75;
  v73[1] = v76;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(v73);
  v19 = *(v1 + 10);
  v20 = v1[3];
  v93 = v1[2];
  v94 = v20;
  *v95 = v1[4];
  *&v95[9] = *(v1 + 73);
  v21 = v1[1];
  v91 = *v1;
  v92 = v21;

  result = outlined destroy of Parser(&v91);
  if (v18 == 1)
  {

LABEL_26:
    v37 = v83;
    v1[2] = v82;
    v1[3] = v37;
    v1[4] = v84;
    v38 = v81;
    *v1 = v80;
    v1[1] = v38;
    *(v1 + 10) = v11;
    *(v1 + 88) = v12;
    goto LABEL_27;
  }

  v22 = *(v17 + 2);
  v23 = *(v19 + 16);
  if (v23 >= v22)
  {
    v24 = *(v17 + 2);
  }

  else
  {
    v24 = *(v19 + 16);
  }

  if (v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == v23)
  {
    swift_unknownObjectRelease();
    v12 = v67;
    goto LABEL_26;
  }

  v64 = v6;
  if (v25 < v23)
  {

    v26 = ~v25 + v23;
    v27 = 80 * v25 + 32;
    v12 = v67;
    while (1)
    {
      v69 = *(v19 + v27);
      v28 = *(v19 + v27 + 16);
      v29 = *(v19 + v27 + 32);
      v30 = *(v19 + v27 + 48);
      *(v72 + 9) = *(v19 + v27 + 57);
      v71 = v29;
      v72[0] = v30;
      v70 = v28;
      if (!v69)
      {
        outlined init with copy of Diagnostic(&v69, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v32 = *(v17 + 2);
        v31 = *(v17 + 3);
        if (v32 >= v31 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v17);
        }

        *(v17 + 2) = v32 + 1;
        v33 = &v17[80 * v32];
        *(v33 + 2) = v69;
        v34 = v70;
        v35 = v71;
        v36 = v72[0];
        *(v33 + 89) = *(v72 + 9);
        *(v33 + 4) = v35;
        *(v33 + 5) = v36;
        *(v33 + 3) = v34;
        v11 = v17;
        v12 = v67;
      }

      if (!v26)
      {
        break;
      }

      --v26;
      v27 += 80;
    }

    swift_unknownObjectRelease();

    v6 = v64;
    goto LABEL_26;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t Parser.lexCustomCCStart()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v65 - v11;
  v13 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v72 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v74 = &v65 - v21;
  v22 = *(v2 + 16);
  v23 = *(v2 + 16);
  v24 = *(v2 + 48);
  v96 = *(v2 + 32);
  v97 = v24;
  v25 = *(v2 + 48);
  v98[0] = *(v2 + 64);
  v93 = v24;
  v94[0] = v98[0];
  *(v98 + 9) = *(v2 + 73);
  v91 = v23;
  v92 = v96;
  v26 = *(v2 + 16);
  v95[0] = *v2;
  v95[1] = v23;
  v70 = v22;
  v71 = v23;
  *(v94 + 9) = *(v98 + 9);
  *&v100[9] = *(v2 + 73);
  v27 = *(v2 + 64);
  v99[3] = v25;
  *v100 = v27;
  v99[1] = v26;
  v99[2] = v96;
  v99[0] = *v2;
  v89 = v27;
  v90 = v95[0];
  v87 = v96;
  v88 = v25;
  v85 = v99[0];
  v86 = v26;
  v28 = *&v100[16];
  v29 = v100[24];
  outlined init with copy of Parser(v95, &v80);
  outlined init with copy of Parser(v99, &v80);
  closure #1 in closure #1 in Parser.lexPOSIXCharacterProperty()(&v90, v9);
  v73 = *(v14 + 48);
  if (v73(v9, 1, v13) != 1)
  {
    v82 = v87;
    v83 = v88;
    v84[0] = v89;
    v80 = v85;
    v81 = v86;
    *&v84[1] = v28;
    BYTE8(v84[1]) = v29;
    outlined destroy of Parser(&v80);
    outlined init with take of AST.Atom.Kind(v9, v12, type metadata accessor for AST.Atom.CharacterProperty);
    (*(v14 + 56))(v12, 0, 1, v13);
    goto LABEL_25;
  }

  v69 = v29;
  v66 = v13;
  v67 = v12;
  v68 = a1;
  v30 = *&v100[16];
  v31 = v100[24];
  outlined destroy of _ASTParent?(v9, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  v32 = *&v94[1];
  v82 = v92;
  v83 = v93;
  v84[0] = v94[0];
  *(v84 + 9) = *(v94 + 9);
  v80 = v90;
  v81 = v91;

  result = outlined destroy of Parser(&v80);
  if (v31 == 1)
  {
    goto LABEL_23;
  }

  v34 = *(v30 + 2);
  v35 = *(v32 + 16);
  if (v35 >= v34)
  {
    v36 = *(v30 + 2);
  }

  else
  {
    v36 = *(v32 + 16);
  }

  if (v34)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = v69;
  if (v37 == v35)
  {
    swift_unknownObjectRelease();
LABEL_24:
    v92 = v87;
    v93 = v88;
    v94[0] = v89;
    v90 = v85;
    v91 = v86;
    *&v94[1] = v28;
    BYTE8(v94[1]) = v38;
    v13 = v66;
    v12 = v67;
    (*(v14 + 56))(v67, 1, 1, v66);
    a1 = v68;
LABEL_25:
    v50 = v73(v12, 1, v13);
    v51 = v74;
    if (v50 == 1)
    {
      outlined destroy of _ASTParent?(v12, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
    }

    else
    {
      v53 = v12;
      v54 = v72;
      outlined init with take of AST.Atom.Kind(v53, v72, type metadata accessor for AST.Atom.CharacterProperty);
      result = outlined init with take of AST.Atom.Kind(v54, v51, type metadata accessor for AST.Atom.CharacterProperty);
      v55 = v91;
      v56 = v71;
      if (v91 >> 14 < v71 >> 14)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      v58 = (v51 + *(v57 + 28));
      *v58 = v56;
      v58[1] = v55;
      (*(*(v57 - 8) + 56))(v51, 0, 1, v57);
    }

    outlined destroy of _ASTParent?(v51, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
    v59 = *&v94[1];
    v60 = BYTE8(v94[1]);
    v82 = v92;
    v83 = v93;
    v84[0] = v94[0];
    *(v84 + 9) = *(v94 + 9);
    v80 = v90;
    v81 = v91;

    outlined destroy of Parser(&v80);
    *&v85 = v59;
    BYTE8(v85) = v60;
    v101.diags._rawValue = &v85;
    Diagnostics.appendNewFatalErrors(from:)(v101);

    if (v50 != 1 || (v61._countAndFlagsBits = 91, v61._object = 0xE100000000000000, result = Parser.tryEat(_:)(v61), (result & 1) == 0))
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 2;
      return result;
    }

    v62._countAndFlagsBits = 94;
    v62._object = 0xE100000000000000;
    result = Parser.tryEat(_:)(v62);
    v63 = *(v2 + 16);
    v64 = v70;
    if (v63 >> 14 >= v70 >> 14)
    {
      *a1 = result & 1;
      a1[1] = v64;
      a1[2] = v63;
      return result;
    }

    goto LABEL_35;
  }

  if (v37 < v35)
  {

    v39 = ~v37 + v35;
    for (i = 80 * v37 + 32; ; i += 80)
    {
      v76 = *(v32 + i);
      v41 = *(v32 + i + 16);
      v42 = *(v32 + i + 32);
      v43 = *(v32 + i + 48);
      *(v79 + 9) = *(v32 + i + 57);
      v78 = v42;
      v79[0] = v43;
      v77 = v41;
      if (!v76)
      {
        outlined init with copy of Diagnostic(&v76, &v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v45 = *(v30 + 2);
        v44 = *(v30 + 3);
        if (v45 >= v44 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v30);
        }

        *(v30 + 2) = v45 + 1;
        v46 = &v30[80 * v45];
        *(v46 + 2) = v76;
        v47 = v77;
        v48 = v78;
        v49 = v79[0];
        *(v46 + 89) = *(v79 + 9);
        *(v46 + 4) = v48;
        *(v46 + 5) = v49;
        *(v46 + 3) = v47;
        v28 = v30;
      }

      if (!v39)
      {
        break;
      }

      --v39;
    }

    swift_unknownObjectRelease();
LABEL_23:

    v38 = v69;
    goto LABEL_24;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t Parser.lexCustomCCBinOp()@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v27[0] = *v1;
  v27[1] = v3;
  v4 = v1[3];
  v5 = v1[4];
  v27[2] = v1[2];
  v27[3] = v4;
  v6 = *(v1 + 2);
  v28[0] = v5;
  *(v28 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v27, &v22);
  v7 = String.subscript.getter();
  v8 = 11565;
  v10 = specialized Sequence<>.starts<A>(with:)(11565, 0xE200000000000000, v7, v9);

  if (v10)
  {
    v11 = 0;
LABEL_5:
    outlined destroy of Parser(v27);
    goto LABEL_6;
  }

  v12 = String.subscript.getter();
  v8 = 32382;
  v14 = specialized Sequence<>.starts<A>(with:)(32382, 0xE200000000000000, v12, v13);

  if (v14)
  {
    v11 = 2;
    goto LABEL_5;
  }

  v18 = String.subscript.getter();
  v8 = 9766;
  v20 = specialized Sequence<>.starts<A>(with:)(9766, 0xE200000000000000, v18, v19);

  result = outlined destroy of Parser(v27);
  if ((v20 & 1) == 0)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 3;
    return result;
  }

  v11 = 1;
LABEL_6:
  result = specialized Parser.tryEat<A>(sequence:)(v8, 0xE200000000000000);
  if ((result & 1) == 0)
  {
    v22 = v8;
    v23 = 0xE200000000000000;
    v22 = String.init<A>(_:)();
    v23 = v16;
    v24 = 0;
    v25 = 0;
    v26 = 3;
    *&v21 = *(v1 + 2);
    *(&v21 + 1) = v21;
    Diagnostics.error(_:at:)(&v22, &v21);
  }

  v17 = *(v1 + 2);
  if (v17 >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    *a1 = v11;
    a1[1] = v6;
    a1[2] = v17;
  }

  return result;
}

unint64_t closure #1 in Parser.canLexDotNetCharClassSubtraction()@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v554 = a2;
  v562 = type metadata accessor for Unicode.Scalar.Properties();
  v3 = *(*(v562 - 8) + 64);
  MEMORY[0x1EEE9AC00](v562, v4);
  v561 = &v551 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v555 = "Unhandled termination condition";
  v558 = 0x80000001C0C86FA0;
  v560 = (v6 + 8);
  while (1)
  {
    v7 = *(a1 + 32);
    v559 = a1[2];
    if ((v7 & 1) == 0)
    {
      v8 = *a1;
      v9 = a1[1];
      v10 = a1[3];
      v11 = String.subscript.getter();
      v13 = specialized Sequence<>.starts<A>(with:)(2309928, 0xE300000000000000, v11, v12);

      if (v13)
      {
        v14 = String.count.getter();
        if (!Source.tryAdvance(_:)(v14))
        {
          v15 = a1[2];
          strcpy(v568, "UNREACHABLE: ");
          *&v568[14] = -4864;
          MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
          v570[0] = 0;
          *&v570[8] = *v568;
          *&v570[24] = v15;
          *&v571[0] = v15;
          *(v571 + 8) = 0u;
          *(&v571[1] + 8) = 0u;
          BYTE8(v571[2]) = -1;
          if (*(a1 + 88) == 1)
          {
            outlined destroy of Diagnostic(v570);
          }

          else
          {
            v43 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
            }

            v45 = *(v43 + 2);
            v44 = *(v43 + 3);
            if (v45 >= v44 >> 1)
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
            }

            *(v43 + 2) = v45 + 1;
            v46 = &v43[80 * v45];
            *(v46 + 2) = *v570;
            v47 = *&v570[16];
            v48 = v571[0];
            v49 = v571[1];
            *(v46 + 89) = *(&v571[1] + 9);
            *(v46 + 4) = v48;
            *(v46 + 5) = v49;
            *(v46 + 3) = v47;
            a1[10] = v43;
          }

          v50 = *a1;
          v51 = a1[1];
          v52 = a1[2];
          v53 = a1[3];
          String.subscript.getter();
          v54 = Substring.distance(from:to:)();

          Source.tryAdvance(_:)(v54);
        }

        v55 = a1[2];
        *&v563 = 0;
        *(&v563 + 1) = 0xE000000000000000;
        result = specialized Parser.tryEatNonEmpty<A>(sequence:)(41, 0xE100000000000000);
        v557 = v55;
        if (result)
        {
LABEL_57:
          if (v55 >> 14 >= v557 >> 14)
          {
            goto LABEL_96;
          }

          goto LABEL_338;
        }

        while (1)
        {
          v63 = *(a1 + 1);
          *v570 = *a1;
          *&v570[16] = v63;
          v64 = *(a1 + 3);
          v571[0] = *(a1 + 2);
          v571[1] = v64;
          v571[2] = *(a1 + 4);
          *(&v571[2] + 9) = *(a1 + 73);
          v65 = *&v570[16];
          outlined init with copy of Parser(v570, v568);
          v66 = String.subscript.getter();
          if (!((v66 ^ v67) >> 14))
          {

            result = outlined destroy of Parser(v570);
            goto LABEL_57;
          }

          v68 = Substring.subscript.getter();
          v70 = v69;

          outlined destroy of Parser(v570);
          v71 = *a1;
          v72 = a1[1];
          v73 = a1[2];
          v74 = a1[3];
          String.subscript.getter();
          v55 = Substring.index(_:offsetBy:limitedBy:)();
          v76 = v75;

          if ((v76 & 1) == 0)
          {
            break;
          }

          v568[0] = 0;
          *&v568[8] = 0xD000000000000022;
          *&v568[16] = v558;
          *&v568[24] = v65;
          *&v569[0] = v65;
          *(v569 + 8) = 0u;
          *(&v569[1] + 8) = 0u;
          BYTE8(v569[2]) = -1;
          if (BYTE8(v571[3]))
          {
            outlined destroy of Diagnostic(v568);
          }

          else
          {
            v77 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77);
            }

            v79 = *(v77 + 2);
            v78 = *(v77 + 3);
            if (v79 >= v78 >> 1)
            {
              v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v77);
            }

            *(v77 + 2) = v79 + 1;
            v80 = &v77[80 * v79];
            *(v80 + 2) = *v568;
            v81 = *&v568[16];
            v82 = v569[0];
            v83 = v569[1];
            *(v80 + 89) = *(&v569[1] + 9);
            *(v80 + 4) = v82;
            *(v80 + 5) = v83;
            *(v80 + 3) = v81;
            a1[10] = v77;
          }

          v84 = *a1;
          v85 = a1[1];
          v86 = a1[2];
          v87 = a1[3];
          String.subscript.getter();
          v88 = Substring.distance(from:to:)();

          if (v88 >= 1)
          {
            v89 = *a1;
            v90 = a1[1];
            v91 = a1[2];
            v92 = a1[3];
            String.subscript.getter();
            v55 = Substring.index(_:offsetBy:limitedBy:)();
            v94 = v93;

            if ((v94 & 1) == 0)
            {
              if (*(&v65 + 1) >> 14 < v55 >> 14)
              {
                goto LABEL_333;
              }

              goto LABEL_47;
            }
          }

          v55 = v65;
LABEL_48:
          MEMORY[0x1C68E0BE0](v68, v70);

          *v568 = 41;
          *&v568[8] = 0xE100000000000000;
          v95 = String.init<A>(_:)();
          v97 = v96;
          v584 = v95;
          v585 = v96;
          v586 = 0;
          v587 = 0;
          v588 = 3;
          v98 = *a1;
          v99 = a1[1];
          v100 = a1[2];
          v101 = a1[3];
          v102 = String.subscript.getter();
          v104 = v103;

          if ((v102 ^ v104) >> 14)
          {

            v56 = *a1;
            v57 = a1[1];
            v58 = a1[2];
            v59 = a1[3];
            v60 = String.subscript.getter();
            v62 = specialized Sequence<>.starts<A>(with:)(41, 0xE100000000000000, v60, v61);

            if (v62)
            {
              v220 = String.count.getter();
              result = Source.tryAdvance(_:)(v220);
              if ((result & 1) == 0)
              {
                v221 = a1[2];
                strcpy(v577, "UNREACHABLE: ");
                HIWORD(v577[1]) = -4864;
                MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
                v568[0] = 0;
                *&v568[8] = v577[0];
                *&v568[16] = v577[1];
                *&v568[24] = v221;
                *&v569[0] = v221;
                *(v569 + 8) = 0u;
                *(&v569[1] + 8) = 0u;
                BYTE8(v569[2]) = -1;
                if (a1[11])
                {
                  outlined destroy of Diagnostic(v568);
                }

                else
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  v276 = *(a1[10] + 16);
                  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v276);
                  v277 = a1[10];
                  *(v277 + 16) = v276 + 1;
                  v278 = (v277 + 80 * v276);
                  v278[2] = *v568;
                  v279 = *&v568[16];
                  v280 = v569[0];
                  v281 = v569[1];
                  *(v278 + 89) = *(&v569[1] + 9);
                  v278[4] = v280;
                  v278[5] = v281;
                  v278[3] = v279;
                  a1[10] = v277;
                }

                v282 = *a1;
                v283 = a1[1];
                v284 = a1[2];
                v285 = a1[3];
                String.subscript.getter();
                v286 = Substring.distance(from:to:)();

                result = Source.tryAdvance(_:)(v286);
              }

              goto LABEL_57;
            }
          }

          else
          {
            v105 = a1[2];
            v106 = ParseError.description.getter();
            v568[0] = 1;
            *&v568[8] = v106;
            *&v568[16] = v107;
            *&v568[24] = v105;
            *&v569[0] = v105;
            *(&v569[0] + 1) = v95;
            v569[1] = v97;
            *&v569[2] = 0;
            BYTE8(v569[2]) = 3;
            if (*(a1 + 88) == 1)
            {
              outlined destroy of Diagnostic(v568);
            }

            else
            {
              v108 = a1[10];

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              a1[10] = v108;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v108 + 2) + 1, 1, v108);
                a1[10] = v108;
              }

              v111 = *(v108 + 2);
              v110 = *(v108 + 3);
              if (v111 >= v110 >> 1)
              {
                a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v108);
              }

              v112 = a1[10];
              *(v112 + 16) = v111 + 1;
              v113 = (v112 + 80 * v111);
              v113[2] = *v568;
              v114 = *&v568[16];
              v115 = v569[0];
              v116 = v569[1];
              *(v113 + 89) = *(&v569[1] + 9);
              v113[4] = v115;
              v113[5] = v116;
              v113[3] = v114;
              a1[10] = v112;
            }
          }
        }

        if (*(&v65 + 1) >> 14 < v55 >> 14)
        {
          goto LABEL_324;
        }

LABEL_47:
        a1[2] = v55;
        a1[3] = *(&v65 + 1);
        goto LABEL_48;
      }
    }

    v16 = a1[8];
    if ((v16 & 8) == 0 || (v17 = *a1, v18 = a1[1], v19 = a1[2], v20 = a1[3], v21 = String.subscript.getter(), v23 = specialized Sequence<>.starts<A>(with:)(10799, 0xE200000000000000, v21, v22), , (v23 & 1) == 0))
    {
      if ((v16 & 2) == 0)
      {
        goto LABEL_99;
      }

      v26 = *(a1 + 1);
      *v570 = *a1;
      *&v570[16] = v26;
      v27 = *(a1 + 3);
      v571[0] = *(a1 + 2);
      v571[1] = v27;
      v571[2] = *(a1 + 4);
      *(&v571[2] + 9) = *(a1 + 73);
      outlined init with copy of Parser(v570, v568);
      v28 = String.subscript.getter();
      if (!((v28 ^ v29) >> 14))
      {

        outlined destroy of Parser(v570);
        goto LABEL_99;
      }

      v30 = Substring.subscript.getter();
      v32 = v31;

      outlined destroy of Parser(v570);
      if (v30 == 35 && v32 == 0xE100000000000000)
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      v34 = *a1;
      v35 = a1[1];
      v37 = a1[2];
      v36 = a1[3];
      String.subscript.getter();
      v38 = Substring.index(_:offsetBy:limitedBy:)();
      v40 = v39;

      if (v40)
      {
        v42 = a1[2];
        strcpy(&v563, "UNREACHABLE: ");
        HIWORD(v563) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
        v568[0] = 0;
        *&v568[8] = v563;
        *&v568[24] = v42;
        *&v569[0] = v42;
        *(v569 + 8) = 0u;
        *(&v569[1] + 8) = 0u;
        BYTE8(v569[2]) = -1;
        if (*(a1 + 88) == 1)
        {
          outlined destroy of Diagnostic(v568);
        }

        else
        {
          v224 = a1[10];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v224 + 2) + 1, 1, v224);
          }

          v226 = *(v224 + 2);
          v225 = *(v224 + 3);
          if (v226 >= v225 >> 1)
          {
            v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v225 > 1), v226 + 1, 1, v224);
          }

          *(v224 + 2) = v226 + 1;
          v227 = &v224[80 * v226];
          *(v227 + 2) = *v568;
          v228 = *&v568[16];
          v229 = v569[0];
          v230 = v569[1];
          *(v227 + 89) = *(&v569[1] + 9);
          *(v227 + 4) = v229;
          *(v227 + 5) = v230;
          *(v227 + 3) = v228;
          a1[10] = v224;
        }

        v231 = *a1;
        v232 = a1[1];
        v233 = a1[2];
        v234 = a1[3];
        String.subscript.getter();
        v235 = Substring.distance(from:to:)();

        if (v235 < 1)
        {
          goto LABEL_142;
        }

        v236 = *a1;
        v237 = a1[1];
        v238 = a1[2];
        v36 = a1[3];
        String.subscript.getter();
        v38 = Substring.index(_:offsetBy:limitedBy:)();
        LOBYTE(v238) = v239;

        if (v238)
        {
LABEL_142:
          v240 = a1[2];
          v577[0] = 0;
          v577[1] = 0xE000000000000000;
          result = closure #1 in closure #1 in Parser.lexComment()(a1);
          v241 = v240;
          v242 = v240;
          if (result)
          {
            goto LABEL_161;
          }

          while (1)
          {
            v243 = *(a1 + 1);
            *v568 = *a1;
            *&v568[16] = v243;
            v244 = *(a1 + 3);
            v569[0] = *(a1 + 2);
            v569[1] = v244;
            v569[2] = *(a1 + 4);
            *(&v569[2] + 9) = *(a1 + 73);
            v245 = *&v568[24];
            v241 = *&v568[16];
            outlined init with copy of Parser(v568, &v563);
            v246 = String.subscript.getter();
            if (!((v246 ^ v247) >> 14))
            {

              result = outlined destroy of Parser(v568);
              v241 = v242;
LABEL_161:
              if (v241 >> 14 < v240 >> 14)
              {
                goto LABEL_347;
              }

              v191 = v577[1];
              goto LABEL_97;
            }

            v248 = Substring.subscript.getter();
            v250 = v249;

            outlined destroy of Parser(v568);
            v251 = *a1;
            v252 = a1[1];
            v253 = a1[2];
            v254 = a1[3];
            String.subscript.getter();
            v255 = Substring.index(_:offsetBy:limitedBy:)();
            v257 = v256;

            if (v257)
            {
              LOBYTE(v563) = 0;
              *(&v563 + 1) = 0xD000000000000022;
              *&v564 = v558;
              *(&v564 + 1) = v241;
              *&v565[0] = v241;
              *(v565 + 8) = 0u;
              *(&v565[1] + 8) = 0u;
              BYTE8(v565[2]) = -1;
              if (BYTE8(v569[3]))
              {
                outlined destroy of Diagnostic(&v563);
              }

              else
              {
                v258 = a1[10];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v258 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v258 + 2) + 1, 1, v258);
                }

                v260 = *(v258 + 2);
                v259 = *(v258 + 3);
                if (v260 >= v259 >> 1)
                {
                  v258 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v259 > 1), v260 + 1, 1, v258);
                }

                *(v258 + 2) = v260 + 1;
                v261 = &v258[80 * v260];
                *(v261 + 2) = v563;
                v262 = v564;
                v263 = v565[0];
                v264 = v565[1];
                *(v261 + 89) = *(&v565[1] + 9);
                *(v261 + 4) = v263;
                *(v261 + 5) = v264;
                *(v261 + 3) = v262;
                a1[10] = v258;
              }

              v265 = *a1;
              v266 = a1[1];
              v267 = a1[2];
              v268 = a1[3];
              String.subscript.getter();
              v269 = Substring.distance(from:to:)();

              if (v269 < 1)
              {
                goto LABEL_146;
              }

              v270 = *a1;
              v271 = a1[1];
              v272 = a1[2];
              v273 = a1[3];
              String.subscript.getter();
              v255 = Substring.index(_:offsetBy:limitedBy:)();
              v275 = v274;

              if (v275)
              {
                goto LABEL_146;
              }

              if (v245 >> 14 < v255 >> 14)
              {
                goto LABEL_345;
              }
            }

            else if (v245 >> 14 < v255 >> 14)
            {
              goto LABEL_332;
            }

            a1[2] = v255;
            a1[3] = v245;
            v241 = v255;
LABEL_146:
            MEMORY[0x1C68E0BE0](v248, v250);

            result = closure #1 in closure #1 in Parser.lexComment()(a1);
            v242 = v241;
            if (result)
            {
              goto LABEL_161;
            }
          }
        }

        if (v36 >> 14 < v38 >> 14)
        {
          goto LABEL_355;
        }
      }

      else if (v36 >> 14 < v38 >> 14)
      {
        goto LABEL_351;
      }

      a1[2] = v38;
      a1[3] = v36;
      goto LABEL_142;
    }

    v24 = String.count.getter();
    if (!Source.tryAdvance(_:)(v24))
    {
      v25 = a1[2];
      strcpy(v568, "UNREACHABLE: ");
      *&v568[14] = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
      v570[0] = 0;
      *&v570[8] = *v568;
      *&v570[24] = v25;
      *&v571[0] = v25;
      *(v571 + 8) = 0u;
      *(&v571[1] + 8) = 0u;
      BYTE8(v571[2]) = -1;
      if (*(a1 + 88) == 1)
      {
        outlined destroy of Diagnostic(v570);
      }

      else
      {
        v117 = a1[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
        }

        v119 = *(v117 + 2);
        v118 = *(v117 + 3);
        if (v119 >= v118 >> 1)
        {
          v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1, v117);
        }

        *(v117 + 2) = v119 + 1;
        v120 = &v117[80 * v119];
        *(v120 + 2) = *v570;
        v121 = *&v570[16];
        v122 = v571[0];
        v123 = v571[1];
        *(v120 + 89) = *(&v571[1] + 9);
        *(v120 + 4) = v122;
        *(v120 + 5) = v123;
        *(v120 + 3) = v121;
        a1[10] = v117;
      }

      v124 = *a1;
      v125 = a1[1];
      v126 = a1[2];
      v127 = a1[3];
      String.subscript.getter();
      v128 = Substring.distance(from:to:)();

      Source.tryAdvance(_:)(v128);
    }

    v129 = a1[2];
    *&v563 = 0;
    *(&v563 + 1) = 0xE000000000000000;
    result = specialized Parser.tryEatNonEmpty<A>(sequence:)(12074, 0xE200000000000000);
    v557 = v129;
    if (result)
    {
      goto LABEL_95;
    }

    do
    {
      while (1)
      {
        v137 = *(a1 + 1);
        *v570 = *a1;
        *&v570[16] = v137;
        v138 = *(a1 + 3);
        v571[0] = *(a1 + 2);
        v571[1] = v138;
        v571[2] = *(a1 + 4);
        *(&v571[2] + 9) = *(a1 + 73);
        v139 = *&v570[16];
        outlined init with copy of Parser(v570, v568);
        v140 = String.subscript.getter();
        if (!((v140 ^ v141) >> 14))
        {

          result = outlined destroy of Parser(v570);
          goto LABEL_95;
        }

        v142 = Substring.subscript.getter();
        v144 = v143;

        outlined destroy of Parser(v570);
        v145 = *a1;
        v146 = a1[1];
        v147 = a1[2];
        v148 = a1[3];
        String.subscript.getter();
        v129 = Substring.index(_:offsetBy:limitedBy:)();
        v150 = v149;

        if (v150)
        {
          v568[0] = 0;
          *&v568[8] = 0xD000000000000022;
          *&v568[16] = v558;
          *&v568[24] = v139;
          *&v569[0] = v139;
          *(v569 + 8) = 0u;
          *(&v569[1] + 8) = 0u;
          BYTE8(v569[2]) = -1;
          if (BYTE8(v571[3]))
          {
            outlined destroy of Diagnostic(v568);
          }

          else
          {
            v151 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v151 + 2) + 1, 1, v151);
            }

            v153 = *(v151 + 2);
            v152 = *(v151 + 3);
            if (v153 >= v152 >> 1)
            {
              v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v151);
            }

            *(v151 + 2) = v153 + 1;
            v154 = &v151[80 * v153];
            *(v154 + 2) = *v568;
            v155 = *&v568[16];
            v156 = v569[0];
            v157 = v569[1];
            *(v154 + 89) = *(&v569[1] + 9);
            *(v154 + 4) = v156;
            *(v154 + 5) = v157;
            *(v154 + 3) = v155;
            a1[10] = v151;
          }

          v158 = *a1;
          v159 = a1[1];
          v160 = a1[2];
          v161 = a1[3];
          String.subscript.getter();
          v162 = Substring.distance(from:to:)();

          if (v162 < 1)
          {
            goto LABEL_83;
          }

          v163 = *a1;
          v164 = a1[1];
          v165 = a1[2];
          v166 = a1[3];
          String.subscript.getter();
          v129 = Substring.index(_:offsetBy:limitedBy:)();
          v168 = v167;

          if (v168)
          {
LABEL_83:
            v129 = v139;
            goto LABEL_86;
          }

          if (*(&v139 + 1) >> 14 < v129 >> 14)
          {
            goto LABEL_334;
          }
        }

        else if (*(&v139 + 1) >> 14 < v129 >> 14)
        {
          goto LABEL_325;
        }

        a1[2] = v129;
        a1[3] = *(&v139 + 1);
LABEL_86:
        MEMORY[0x1C68E0BE0](v142, v144);

        *v568 = 12074;
        *&v568[8] = 0xE200000000000000;
        v169 = String.init<A>(_:)();
        v171 = v170;
        v579 = v169;
        v580 = v170;
        v581 = 0;
        v582 = 0;
        v583 = 3;
        v172 = *a1;
        v173 = a1[1];
        v174 = a1[2];
        v175 = a1[3];
        v176 = String.subscript.getter();
        v178 = v177;

        if ((v176 ^ v178) >> 14)
        {
          break;
        }

        v179 = a1[2];
        v180 = ParseError.description.getter();
        v568[0] = 1;
        *&v568[8] = v180;
        *&v568[16] = v181;
        *&v568[24] = v179;
        *&v569[0] = v179;
        *(&v569[0] + 1) = v169;
        v569[1] = v171;
        *&v569[2] = 0;
        BYTE8(v569[2]) = 3;
        if (*(a1 + 88) == 1)
        {
          outlined destroy of Diagnostic(v568);
        }

        else
        {
          v182 = a1[10];

          v183 = swift_isUniquelyReferenced_nonNull_native();
          a1[10] = v182;
          if ((v183 & 1) == 0)
          {
            v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v182 + 2) + 1, 1, v182);
            a1[10] = v182;
          }

          v185 = *(v182 + 2);
          v184 = *(v182 + 3);
          if (v185 >= v184 >> 1)
          {
            a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v184 > 1), v185 + 1, 1, v182);
          }

          v186 = a1[10];
          *(v186 + 16) = v185 + 1;
          v187 = (v186 + 80 * v185);
          v187[2] = *v568;
          v188 = *&v568[16];
          v189 = v569[0];
          v190 = v569[1];
          *(v187 + 89) = *(&v569[1] + 9);
          v187[4] = v189;
          v187[5] = v190;
          v187[3] = v188;
          a1[10] = v186;
        }
      }

      v130 = *a1;
      v131 = a1[1];
      v132 = a1[2];
      v133 = a1[3];
      v134 = String.subscript.getter();
      v136 = specialized Sequence<>.starts<A>(with:)(12074, 0xE200000000000000, v134, v135);
    }

    while ((v136 & 1) == 0);
    v222 = String.count.getter();
    result = Source.tryAdvance(_:)(v222);
    if ((result & 1) == 0)
    {
      v223 = a1[2];
      strcpy(v577, "UNREACHABLE: ");
      HIWORD(v577[1]) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
      v568[0] = 0;
      *&v568[8] = v577[0];
      *&v568[16] = v577[1];
      *&v568[24] = v223;
      *&v569[0] = v223;
      *(v569 + 8) = 0u;
      *(&v569[1] + 8) = 0u;
      BYTE8(v569[2]) = -1;
      if (a1[11])
      {
        outlined destroy of Diagnostic(v568);
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v287 = *(a1[10] + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v287);
        v288 = a1[10];
        *(v288 + 16) = v287 + 1;
        v289 = (v288 + 80 * v287);
        v289[2] = *v568;
        v290 = *&v568[16];
        v291 = v569[0];
        v292 = v569[1];
        *(v289 + 89) = *(&v569[1] + 9);
        v289[4] = v291;
        v289[5] = v292;
        v289[3] = v290;
        a1[10] = v288;
      }

      v293 = *a1;
      v294 = a1[1];
      v295 = a1[2];
      v296 = a1[3];
      String.subscript.getter();
      v297 = Substring.distance(from:to:)();

      result = Source.tryAdvance(_:)(v297);
    }

LABEL_95:
    if (v129 >> 14 < v557 >> 14)
    {
      goto LABEL_342;
    }

LABEL_96:
    v191 = *(&v563 + 1);
LABEL_97:
    if (a1[2] >> 14 < v559 >> 14)
    {
      goto LABEL_330;
    }

    if (v191)
    {
      goto LABEL_2;
    }

LABEL_99:
    if ((a1[8] & 1) == 0)
    {
      goto LABEL_168;
    }

    v192 = *a1;
    v193 = a1[1];
    v195 = a1[2];
    v194 = a1[3];
    result = String.subscript.getter();
    if (v196 >> 14 < result >> 14)
    {
      goto LABEL_326;
    }

    v557 = v195;
    v197 = Substring.subscript.getter();
    v199 = v198;

    v559 = v199 >> 14;
    if (v197 >> 14 == v199 >> 14)
    {
      goto LABEL_119;
    }

    v556 = v197 >> 14;
    v200 = v197 >> 14;
    while (2)
    {
      result = Substring.subscript.getter();
      if ((v201 & 0x2000000000000000) != 0)
      {
        v202 = HIBYTE(v201) & 0xF;
      }

      else
      {
        v202 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v202)
      {
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
        goto LABEL_340;
      }

      if ((v201 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v201 & 0x2000000000000000) != 0)
        {
          *v570 = result;
          *&v570[8] = v201 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((result & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        _decodeScalar(_:startingAt:)();
      }

      v203 = v561;
      Unicode.Scalar.properties.getter();
      v204 = Unicode.Scalar.Properties.isPatternWhitespace.getter();
      result = (*v560)(v203, v562);
      if ((v204 & 1) == 0)
      {
        goto LABEL_118;
      }

      result = Substring.index(after:)();
      v200 = result >> 14;
      if (result >> 14 != v559)
      {
        continue;
      }

      break;
    }

    v200 = v559;
LABEL_118:
    if (v200 < v556)
    {
      goto LABEL_327;
    }

LABEL_119:
    v205 = Substring.subscript.getter();
    v207 = v206;
    v209 = v208;
    v211 = v210;

    if (!((v205 ^ v207) >> 14))
    {

LABEL_168:
      v298 = a1[2];
      v299._countAndFlagsBits = 45;
      v299._object = 0xE100000000000000;
      result = Parser.tryEat(_:)(v299);
      if ((result & 1) == 0)
      {
        goto LABEL_320;
      }

      if (a1[2] >> 14 < v298 >> 14)
      {
        goto LABEL_353;
      }

      v552 = a1[2];
      v553 = v298;
      while (2)
      {
        v300 = *(a1 + 32);
        v559 = a1[2];
        if ((v300 & 1) == 0)
        {
          v301 = *a1;
          v302 = a1[1];
          v303 = a1[3];
          v304 = String.subscript.getter();
          v306 = specialized Sequence<>.starts<A>(with:)(2309928, 0xE300000000000000, v304, v305);

          if (v306)
          {
            v307 = String.count.getter();
            if (!Source.tryAdvance(_:)(v307))
            {
              v308 = a1[2];
              strcpy(v568, "UNREACHABLE: ");
              *&v568[14] = -4864;
              MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
              v570[0] = 0;
              *&v570[8] = *v568;
              *&v570[24] = v308;
              *&v571[0] = v308;
              *(v571 + 8) = 0u;
              *(&v571[1] + 8) = 0u;
              BYTE8(v571[2]) = -1;
              if (*(a1 + 88) == 1)
              {
                outlined destroy of Diagnostic(v570);
              }

              else
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v335 = *(a1[10] + 16);
                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v335);
                v336 = a1[10];
                *(v336 + 16) = v335 + 1;
                v337 = (v336 + 80 * v335);
                v337[2] = *v570;
                v338 = *&v570[16];
                v339 = v571[0];
                v340 = v571[1];
                *(v337 + 89) = *(&v571[1] + 9);
                v337[4] = v339;
                v337[5] = v340;
                v337[3] = v338;
                a1[10] = v336;
              }

              v341 = *a1;
              v342 = a1[1];
              v343 = a1[2];
              v344 = a1[3];
              String.subscript.getter();
              v345 = Substring.distance(from:to:)();

              Source.tryAdvance(_:)(v345);
            }

            v346 = a1[2];
            *&v563 = 0;
            *(&v563 + 1) = 0xE000000000000000;
            result = specialized Parser.tryEatNonEmpty<A>(sequence:)(41, 0xE100000000000000);
            v557 = v346;
            if (result)
            {
LABEL_222:
              if (v346 >> 14 < v557 >> 14)
              {
                goto LABEL_346;
              }

              goto LABEL_257;
            }

            while (2)
            {
              v347 = *(a1 + 1);
              *v570 = *a1;
              *&v570[16] = v347;
              v348 = *(a1 + 3);
              v571[0] = *(a1 + 2);
              v571[1] = v348;
              v571[2] = *(a1 + 4);
              *(&v571[2] + 9) = *(a1 + 73);
              v349 = *&v570[16];
              outlined init with copy of Parser(v570, v568);
              v350 = String.subscript.getter();
              if (!((v350 ^ v351) >> 14))
              {

                result = outlined destroy of Parser(v570);
                goto LABEL_222;
              }

              v352 = Substring.subscript.getter();
              v354 = v353;

              outlined destroy of Parser(v570);
              v355 = *a1;
              v356 = a1[1];
              v357 = a1[2];
              v358 = a1[3];
              String.subscript.getter();
              v346 = Substring.index(_:offsetBy:limitedBy:)();
              v360 = v359;

              if (v360)
              {
                v568[0] = 0;
                *&v568[8] = 0xD000000000000022;
                *&v568[16] = v558;
                *&v568[24] = v349;
                *&v569[0] = v349;
                *(v569 + 8) = 0u;
                *(&v569[1] + 8) = 0u;
                BYTE8(v569[2]) = -1;
                if (BYTE8(v571[3]))
                {
                  outlined destroy of Diagnostic(v568);
                }

                else
                {
                  v361 = a1[10];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v361 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v361 + 2) + 1, 1, v361);
                  }

                  v363 = *(v361 + 2);
                  v362 = *(v361 + 3);
                  if (v363 >= v362 >> 1)
                  {
                    v361 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v362 > 1), v363 + 1, 1, v361);
                  }

                  *(v361 + 2) = v363 + 1;
                  v364 = &v361[80 * v363];
                  *(v364 + 2) = *v568;
                  v365 = *&v568[16];
                  v366 = v569[0];
                  v367 = v569[1];
                  *(v364 + 89) = *(&v569[1] + 9);
                  *(v364 + 4) = v366;
                  *(v364 + 5) = v367;
                  *(v364 + 3) = v365;
                  a1[10] = v361;
                }

                v368 = *a1;
                v369 = a1[1];
                v370 = a1[2];
                v371 = a1[3];
                String.subscript.getter();
                v372 = Substring.distance(from:to:)();

                if (v372 < 1)
                {
                  goto LABEL_210;
                }

                v373 = *a1;
                v374 = a1[1];
                v375 = a1[2];
                v376 = a1[3];
                String.subscript.getter();
                v346 = Substring.index(_:offsetBy:limitedBy:)();
                v378 = v377;

                if (v378)
                {
LABEL_210:
                  v346 = v349;
                  goto LABEL_213;
                }

                if (*(&v349 + 1) >> 14 < v346 >> 14)
                {
                  goto LABEL_343;
                }
              }

              else if (*(&v349 + 1) >> 14 < v346 >> 14)
              {
                goto LABEL_329;
              }

              a1[2] = v346;
              a1[3] = *(&v349 + 1);
LABEL_213:
              MEMORY[0x1C68E0BE0](v352, v354);

              *v568 = 41;
              *&v568[8] = 0xE100000000000000;
              v379 = String.init<A>(_:)();
              v381 = v380;
              v577[0] = v379;
              v577[1] = v380;
              v577[2] = 0;
              v577[3] = 0;
              v578 = 3;
              v382 = *a1;
              v383 = a1[1];
              v384 = a1[2];
              v385 = a1[3];
              v386 = String.subscript.getter();
              v388 = v387;

              if ((v386 ^ v388) >> 14)
              {

                result = specialized Parser.tryEat<A>(sequence:)(41, 0xE100000000000000);
                if (result)
                {
                  goto LABEL_222;
                }
              }

              else
              {
                v389 = a1[2];
                v390 = ParseError.description.getter();
                v568[0] = 1;
                *&v568[8] = v390;
                *&v568[16] = v391;
                *&v568[24] = v389;
                *&v569[0] = v389;
                *(&v569[0] + 1) = v379;
                v569[1] = v381;
                *&v569[2] = 0;
                BYTE8(v569[2]) = 3;
                if (*(a1 + 88) == 1)
                {
                  outlined destroy of Diagnostic(v568);
                }

                else
                {
                  v392 = a1[10];

                  v393 = swift_isUniquelyReferenced_nonNull_native();
                  a1[10] = v392;
                  if ((v393 & 1) == 0)
                  {
                    v392 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v392 + 2) + 1, 1, v392);
                    a1[10] = v392;
                  }

                  v395 = *(v392 + 2);
                  v394 = *(v392 + 3);
                  if (v395 >= v394 >> 1)
                  {
                    a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v394 > 1), v395 + 1, 1, v392);
                  }

                  v396 = a1[10];
                  *(v396 + 16) = v395 + 1;
                  v397 = (v396 + 80 * v395);
                  v397[2] = *v568;
                  v398 = *&v568[16];
                  v399 = v569[0];
                  v400 = v569[1];
                  *(v397 + 89) = *(&v569[1] + 9);
                  v397[4] = v399;
                  v397[5] = v400;
                  v397[3] = v398;
                  a1[10] = v396;
                }
              }

              continue;
            }
          }
        }

        v309 = a1[8];
        if ((v309 & 8) != 0)
        {
          v310 = *a1;
          v311 = a1[1];
          v312 = a1[2];
          v313 = a1[3];
          v314 = String.subscript.getter();
          v316 = specialized Sequence<>.starts<A>(with:)(10799, 0xE200000000000000, v314, v315);

          if (v316)
          {
            v317 = String.count.getter();
            if (!Source.tryAdvance(_:)(v317))
            {
              v318 = a1[2];
              strcpy(v568, "UNREACHABLE: ");
              *&v568[14] = -4864;
              MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
              v570[0] = 0;
              *&v570[8] = *v568;
              *&v570[24] = v318;
              *&v571[0] = v318;
              *(v571 + 8) = 0u;
              *(&v571[1] + 8) = 0u;
              BYTE8(v571[2]) = -1;
              if (*(a1 + 88) == 1)
              {
                outlined destroy of Diagnostic(v570);
              }

              else
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v401 = *(a1[10] + 16);
                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v401);
                v402 = a1[10];
                *(v402 + 16) = v401 + 1;
                v403 = (v402 + 80 * v401);
                v403[2] = *v570;
                v404 = *&v570[16];
                v405 = v571[0];
                v406 = v571[1];
                *(v403 + 89) = *(&v571[1] + 9);
                v403[4] = v405;
                v403[5] = v406;
                v403[3] = v404;
                a1[10] = v402;
              }

              v407 = *a1;
              v408 = a1[1];
              v409 = a1[2];
              v410 = a1[3];
              String.subscript.getter();
              v411 = Substring.distance(from:to:)();

              Source.tryAdvance(_:)(v411);
            }

            v412 = a1[2];
            *&v563 = 0;
            *(&v563 + 1) = 0xE000000000000000;
            result = specialized Parser.tryEatNonEmpty<A>(sequence:)(12074, 0xE200000000000000);
            v557 = v412;
            if (result)
            {
LABEL_256:
              if (v412 >> 14 < v557 >> 14)
              {
                goto LABEL_349;
              }

LABEL_257:
              v467 = *(&v563 + 1);
LABEL_258:
              if (a1[2] >> 14 < v559 >> 14)
              {
                goto LABEL_339;
              }

              if (v467)
              {
LABEL_171:

                continue;
              }

LABEL_260:
              if ((a1[8] & 1) == 0)
              {
                goto LABEL_319;
              }

              v468 = *a1;
              v469 = a1[1];
              v471 = a1[2];
              v470 = a1[3];
              result = String.subscript.getter();
              if (v472 >> 14 < result >> 14)
              {
                goto LABEL_335;
              }

              v557 = v471;
              v473 = Substring.subscript.getter();
              v475 = v474;

              v476 = v473 >> 14;
              v559 = v475 >> 14;
              if (v473 >> 14 != v475 >> 14)
              {
                v556 = v473 >> 14;
                while (1)
                {
                  result = Substring.subscript.getter();
                  if (!((v477 & 0x2000000000000000) != 0 ? HIBYTE(v477) & 0xF : result & 0xFFFFFFFFFFFFLL))
                  {
                    goto LABEL_323;
                  }

                  if ((v477 & 0x1000000000000000) != 0)
                  {
                    _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
                  }

                  else
                  {
                    if ((v477 & 0x2000000000000000) != 0)
                    {
                      *v570 = result;
                      *&v570[8] = v477 & 0xFFFFFFFFFFFFFFLL;
                    }

                    else if ((result & 0x1000000000000000) == 0)
                    {
                      _StringObject.sharedUTF8.getter();
                    }

                    _decodeScalar(_:startingAt:)();
                  }

                  v479 = v561;
                  Unicode.Scalar.properties.getter();
                  v480 = Unicode.Scalar.Properties.isPatternWhitespace.getter();
                  result = (*v560)(v479, v562);
                  if ((v480 & 1) == 0)
                  {
                    goto LABEL_279;
                  }

                  result = Substring.index(after:)();
                  v476 = result >> 14;
                  if (result >> 14 == v559)
                  {
                    v476 = v559;
LABEL_279:
                    if (v476 < v556)
                    {
                      goto LABEL_336;
                    }

                    break;
                  }
                }
              }

              v481 = Substring.subscript.getter();
              v483 = v482;
              v485 = v484;
              v487 = v486;

              if ((v481 ^ v483) >> 14)
              {
                if (Substring.distance(from:to:)() >= 1)
                {
                  v488 = *a1;
                  v489 = a1[1];
                  v491 = a1[2];
                  v490 = a1[3];
                  String.subscript.getter();
                  v492 = Substring.index(_:offsetBy:limitedBy:)();
                  LOBYTE(v491) = v493;

                  if ((v491 & 1) == 0)
                  {
                    if (v490 >> 14 < v492 >> 14)
                    {
                      goto LABEL_348;
                    }

                    a1[2] = v492;
                    a1[3] = v490;
                  }
                }

                MEMORY[0x1C68E0B20](v481, v483, v485, v487);
                v495 = v494;

                if (a1[2] >> 14 < v557 >> 14)
                {
                  goto LABEL_337;
                }

                if (!v495)
                {
                  goto LABEL_319;
                }

                goto LABEL_171;
              }

LABEL_319:
              result = Parser.lexCustomCCStart()(v570);
              if (v570[0] != 2)
              {
                v549 = v554;
                v550 = v552;
                *v554 = v553;
                v549[1] = v550;
                *(v549 + 16) = 0;
                return result;
              }

LABEL_320:
              v548 = v554;
              *v554 = 0;
              v548[1] = 0;
              *(v548 + 16) = 1;
              return result;
            }

            while (2)
            {
              v413 = *(a1 + 1);
              *v570 = *a1;
              *&v570[16] = v413;
              v414 = *(a1 + 3);
              v571[0] = *(a1 + 2);
              v571[1] = v414;
              v571[2] = *(a1 + 4);
              *(&v571[2] + 9) = *(a1 + 73);
              v415 = *&v570[16];
              outlined init with copy of Parser(v570, v568);
              v416 = String.subscript.getter();
              if (!((v416 ^ v417) >> 14))
              {

                result = outlined destroy of Parser(v570);
                goto LABEL_256;
              }

              v418 = Substring.subscript.getter();
              v420 = v419;

              outlined destroy of Parser(v570);
              v421 = *a1;
              v422 = a1[1];
              v423 = a1[2];
              v424 = a1[3];
              String.subscript.getter();
              v412 = Substring.index(_:offsetBy:limitedBy:)();
              v426 = v425;

              if (v426)
              {
                v568[0] = 0;
                *&v568[8] = 0xD000000000000022;
                *&v568[16] = v558;
                *&v568[24] = v415;
                *&v569[0] = v415;
                *(v569 + 8) = 0u;
                *(&v569[1] + 8) = 0u;
                BYTE8(v569[2]) = -1;
                if (BYTE8(v571[3]))
                {
                  outlined destroy of Diagnostic(v568);
                }

                else
                {
                  v427 = a1[10];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v427 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v427 + 2) + 1, 1, v427);
                  }

                  v429 = *(v427 + 2);
                  v428 = *(v427 + 3);
                  if (v429 >= v428 >> 1)
                  {
                    v427 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v428 > 1), v429 + 1, 1, v427);
                  }

                  *(v427 + 2) = v429 + 1;
                  v430 = &v427[80 * v429];
                  *(v430 + 2) = *v568;
                  v431 = *&v568[16];
                  v432 = v569[0];
                  v433 = v569[1];
                  *(v430 + 89) = *(&v569[1] + 9);
                  *(v430 + 4) = v432;
                  *(v430 + 5) = v433;
                  *(v430 + 3) = v431;
                  a1[10] = v427;
                }

                v434 = *a1;
                v435 = a1[1];
                v436 = a1[2];
                v437 = a1[3];
                String.subscript.getter();
                v438 = Substring.distance(from:to:)();

                if (v438 < 1)
                {
                  goto LABEL_244;
                }

                v439 = *a1;
                v440 = a1[1];
                v441 = a1[2];
                v442 = a1[3];
                String.subscript.getter();
                v412 = Substring.index(_:offsetBy:limitedBy:)();
                v444 = v443;

                if (v444)
                {
LABEL_244:
                  v412 = v415;
                  goto LABEL_247;
                }

                if (*(&v415 + 1) >> 14 < v412 >> 14)
                {
                  goto LABEL_344;
                }
              }

              else if (*(&v415 + 1) >> 14 < v412 >> 14)
              {
                goto LABEL_331;
              }

              a1[2] = v412;
              a1[3] = *(&v415 + 1);
LABEL_247:
              MEMORY[0x1C68E0BE0](v418, v420);

              *v568 = 12074;
              *&v568[8] = 0xE200000000000000;
              v445 = String.init<A>(_:)();
              v447 = v446;
              v572 = v445;
              v573 = v446;
              v574 = 0;
              v575 = 0;
              v576 = 3;
              v448 = *a1;
              v449 = a1[1];
              v450 = a1[2];
              v451 = a1[3];
              v452 = String.subscript.getter();
              v454 = v453;

              if ((v452 ^ v454) >> 14)
              {

                result = specialized Parser.tryEat<A>(sequence:)(12074, 0xE200000000000000);
                if (result)
                {
                  goto LABEL_256;
                }
              }

              else
              {
                v455 = a1[2];
                v456 = ParseError.description.getter();
                v568[0] = 1;
                *&v568[8] = v456;
                *&v568[16] = v457;
                *&v568[24] = v455;
                *&v569[0] = v455;
                *(&v569[0] + 1) = v445;
                v569[1] = v447;
                *&v569[2] = 0;
                BYTE8(v569[2]) = 3;
                if (*(a1 + 88) == 1)
                {
                  outlined destroy of Diagnostic(v568);
                }

                else
                {
                  v458 = a1[10];

                  v459 = swift_isUniquelyReferenced_nonNull_native();
                  a1[10] = v458;
                  if ((v459 & 1) == 0)
                  {
                    v458 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v458 + 2) + 1, 1, v458);
                    a1[10] = v458;
                  }

                  v461 = *(v458 + 2);
                  v460 = *(v458 + 3);
                  if (v461 >= v460 >> 1)
                  {
                    a1[10] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v460 > 1), v461 + 1, 1, v458);
                  }

                  v462 = a1[10];
                  *(v462 + 16) = v461 + 1;
                  v463 = (v462 + 80 * v461);
                  v463[2] = *v568;
                  v464 = *&v568[16];
                  v465 = v569[0];
                  v466 = v569[1];
                  *(v463 + 89) = *(&v569[1] + 9);
                  v463[4] = v465;
                  v463[5] = v466;
                  v463[3] = v464;
                  a1[10] = v462;
                }
              }

              continue;
            }
          }
        }

        break;
      }

      if ((v309 & 2) == 0)
      {
        goto LABEL_260;
      }

      v319 = *(a1 + 1);
      *v570 = *a1;
      *&v570[16] = v319;
      v320 = *(a1 + 3);
      v571[0] = *(a1 + 2);
      v571[1] = v320;
      v571[2] = *(a1 + 4);
      *(&v571[2] + 9) = *(a1 + 73);
      outlined init with copy of Parser(v570, v568);
      v321 = String.subscript.getter();
      if (!((v321 ^ v322) >> 14))
      {

        outlined destroy of Parser(v570);
        goto LABEL_260;
      }

      v323 = Substring.subscript.getter();
      v325 = v324;

      outlined destroy of Parser(v570);
      if (v323 == 35 && v325 == 0xE100000000000000)
      {
      }

      else
      {
        v326 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v326 & 1) == 0)
        {
          goto LABEL_260;
        }
      }

      v327 = *a1;
      v328 = a1[1];
      v330 = a1[2];
      v329 = a1[3];
      String.subscript.getter();
      v331 = Substring.index(_:offsetBy:limitedBy:)();
      v333 = v332;

      if ((v333 & 1) == 0)
      {
        if (v329 >> 14 < v331 >> 14)
        {
          goto LABEL_354;
        }

        goto LABEL_296;
      }

      v334 = a1[2];
      strcpy(&v563, "UNREACHABLE: ");
      HIWORD(v563) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v555 | 0x8000000000000000);
      v568[0] = 0;
      *&v568[8] = v563;
      *&v568[24] = v334;
      *&v569[0] = v334;
      *(v569 + 8) = 0u;
      *(&v569[1] + 8) = 0u;
      BYTE8(v569[2]) = -1;
      if (*(a1 + 88) == 1)
      {
        outlined destroy of Diagnostic(v568);
      }

      else
      {
        v496 = a1[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v496 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v496 + 2) + 1, 1, v496);
        }

        v498 = *(v496 + 2);
        v497 = *(v496 + 3);
        if (v498 >= v497 >> 1)
        {
          v496 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v497 > 1), v498 + 1, 1, v496);
        }

        *(v496 + 2) = v498 + 1;
        v499 = &v496[80 * v498];
        *(v499 + 2) = *v568;
        v500 = *&v568[16];
        v501 = v569[0];
        v502 = v569[1];
        *(v499 + 89) = *(&v569[1] + 9);
        *(v499 + 4) = v501;
        *(v499 + 5) = v502;
        *(v499 + 3) = v500;
        a1[10] = v496;
      }

      v503 = *a1;
      v504 = a1[1];
      v505 = a1[2];
      v506 = a1[3];
      String.subscript.getter();
      v507 = Substring.distance(from:to:)();

      if (v507 >= 1)
      {
        v508 = *a1;
        v509 = a1[1];
        v510 = a1[2];
        v329 = a1[3];
        String.subscript.getter();
        v331 = Substring.index(_:offsetBy:limitedBy:)();
        LOBYTE(v510) = v511;

        if ((v510 & 1) == 0)
        {
          if (v329 >> 14 < v331 >> 14)
          {
            goto LABEL_356;
          }

LABEL_296:
          a1[2] = v331;
          a1[3] = v329;
        }
      }

      v512 = a1[2];
      v566 = 0;
      v567 = 0xE000000000000000;
      result = closure #1 in closure #1 in Parser.lexComment()(a1);
      v513 = v512;
      v514 = v512;
      if (result)
      {
LABEL_316:
        if (v513 >> 14 < v512 >> 14)
        {
          goto LABEL_352;
        }

        v467 = v567;
        goto LABEL_258;
      }

      while (2)
      {
        v515 = *(a1 + 1);
        *v568 = *a1;
        *&v568[16] = v515;
        v516 = *(a1 + 3);
        v569[0] = *(a1 + 2);
        v569[1] = v516;
        v569[2] = *(a1 + 4);
        *(&v569[2] + 9) = *(a1 + 73);
        v517 = *&v568[24];
        v513 = *&v568[16];
        outlined init with copy of Parser(v568, &v563);
        v518 = String.subscript.getter();
        if (!((v518 ^ v519) >> 14))
        {

          result = outlined destroy of Parser(v568);
          v513 = v514;
          goto LABEL_316;
        }

        v520 = Substring.subscript.getter();
        v522 = v521;

        outlined destroy of Parser(v568);
        v523 = *a1;
        v524 = a1[1];
        v525 = a1[2];
        v526 = a1[3];
        String.subscript.getter();
        v527 = Substring.index(_:offsetBy:limitedBy:)();
        v529 = v528;

        if (v529)
        {
          LOBYTE(v563) = 0;
          *(&v563 + 1) = 0xD000000000000022;
          *&v564 = v558;
          *(&v564 + 1) = v513;
          *&v565[0] = v513;
          *(v565 + 8) = 0u;
          *(&v565[1] + 8) = 0u;
          BYTE8(v565[2]) = -1;
          if (BYTE8(v569[3]))
          {
            outlined destroy of Diagnostic(&v563);
          }

          else
          {
            v530 = a1[10];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v530 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v530 + 2) + 1, 1, v530);
            }

            v532 = *(v530 + 2);
            v531 = *(v530 + 3);
            if (v532 >= v531 >> 1)
            {
              v530 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v531 > 1), v532 + 1, 1, v530);
            }

            *(v530 + 2) = v532 + 1;
            v533 = &v530[80 * v532];
            *(v533 + 2) = v563;
            v534 = v564;
            v535 = v565[0];
            v536 = v565[1];
            *(v533 + 89) = *(&v565[1] + 9);
            *(v533 + 4) = v535;
            *(v533 + 5) = v536;
            *(v533 + 3) = v534;
            a1[10] = v530;
          }

          v537 = *a1;
          v538 = a1[1];
          v539 = a1[2];
          v540 = a1[3];
          String.subscript.getter();
          v541 = Substring.distance(from:to:)();

          if (v541 >= 1)
          {
            v542 = *a1;
            v543 = a1[1];
            v544 = a1[2];
            v545 = a1[3];
            String.subscript.getter();
            v527 = Substring.index(_:offsetBy:limitedBy:)();
            v547 = v546;

            if ((v547 & 1) == 0)
            {
              if (v517 >> 14 < v527 >> 14)
              {
                goto LABEL_350;
              }

LABEL_300:
              a1[2] = v527;
              a1[3] = v517;
              v513 = v527;
            }
          }

          MEMORY[0x1C68E0BE0](v520, v522);

          result = closure #1 in closure #1 in Parser.lexComment()(a1);
          v514 = v513;
          if (result)
          {
            goto LABEL_316;
          }

          continue;
        }

        break;
      }

      if (v517 >> 14 < v527 >> 14)
      {
        goto LABEL_341;
      }

      goto LABEL_300;
    }

    if (Substring.distance(from:to:)() >= 1)
    {
      v212 = *a1;
      v213 = a1[1];
      v215 = a1[2];
      v214 = a1[3];
      String.subscript.getter();
      v216 = Substring.index(_:offsetBy:limitedBy:)();
      LOBYTE(v215) = v217;

      if ((v215 & 1) == 0)
      {
        break;
      }
    }

LABEL_124:
    MEMORY[0x1C68E0B20](v205, v207, v209, v211);
    v219 = v218;

    if (a1[2] >> 14 < v557 >> 14)
    {
      goto LABEL_328;
    }

    if (!v219)
    {
      goto LABEL_168;
    }

LABEL_2:
  }

  if (v214 >> 14 >= v216 >> 14)
  {
    a1[2] = v216;
    a1[3] = v214;
    goto LABEL_124;
  }

LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
LABEL_349:
  __break(1u);
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
  return result;
}

uint64_t Parser.lexPOSIXCharacterProperty()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 16);
  v19 = *(v2 + 48);
  v20 = *(v2 + 64);
  v21 = *(v2 + 16);
  v79 = *(v2 + 32);
  v80 = v19;
  *v81 = v20;
  *&v81[9] = *(v2 + 73);
  v78[0] = *v2;
  v78[1] = v21;
  v75 = v79;
  v76 = v19;
  v77 = v20;
  v73 = v78[0];
  v74 = v21;
  v22 = *&v81[16];
  v23 = v81[24];
  outlined init with copy of Parser(v78, &v68);
  closure #1 in closure #1 in Parser.lexPOSIXCharacterProperty()(v2, v8);
  v60 = *(v13 + 48);
  v61 = v13 + 48;
  if (v60(v8, 1, v12) == 1)
  {
    v56 = v23;
    v57 = v17;
    v58 = v18;
    v59 = v11;
    v24 = *&v81[16];
    v25 = v81[24];
    outlined destroy of _ASTParent?(v8, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
    v26 = *(v2 + 80);
    v27 = *(v2 + 48);
    v70 = *(v2 + 32);
    v71 = v27;
    v72[0] = *(v2 + 64);
    *(v72 + 9) = *(v2 + 73);
    v28 = *(v2 + 16);
    v68 = *v2;
    v69 = v28;

    result = outlined destroy of Parser(&v68);
    if (v25 == 1)
    {

      v30 = v13;
      v31 = v62;
    }

    else
    {
      v33 = *(v24 + 2);
      v34 = *(v26 + 16);
      if (v34 >= v33)
      {
        v35 = *(v24 + 2);
      }

      else
      {
        v35 = *(v26 + 16);
      }

      if (v33)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if (v36 == v34)
      {
        swift_unknownObjectRelease();
        v31 = v62;
        v30 = v13;
      }

      else
      {
        v55 = v12;
        if (v36 >= v34)
        {
          goto LABEL_30;
        }

        v37 = ~v36 + v34;
        v38 = 80 * v36 + 32;
        v30 = v13;
        while (1)
        {
          v64 = *(v26 + v38);
          v39 = *(v26 + v38 + 16);
          v40 = *(v26 + v38 + 32);
          v41 = *(v26 + v38 + 48);
          *(v67 + 9) = *(v26 + v38 + 57);
          v66 = v40;
          v67[0] = v41;
          v65 = v39;
          if (!v64)
          {
            outlined init with copy of Diagnostic(&v64, &v63);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
            }

            v43 = *(v24 + 2);
            v42 = *(v24 + 3);
            if (v43 >= v42 >> 1)
            {
              v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v24);
            }

            *(v24 + 2) = v43 + 1;
            v44 = &v24[80 * v43];
            *(v44 + 2) = v64;
            v45 = v65;
            v46 = v66;
            v47 = v67[0];
            *(v44 + 89) = *(v67 + 9);
            *(v44 + 4) = v46;
            *(v44 + 5) = v47;
            *(v44 + 3) = v45;
            v22 = v24;
            v30 = v13;
          }

          if (!v37)
          {
            break;
          }

          --v37;
          v38 += 80;
        }

        swift_unknownObjectRelease();

        v31 = v62;
        v12 = v55;
      }
    }

    v48 = v76;
    *(v2 + 32) = v75;
    *(v2 + 48) = v48;
    *(v2 + 64) = v77;
    v49 = v74;
    *v2 = v73;
    *(v2 + 16) = v49;
    *(v2 + 80) = v22;
    *(v2 + 88) = v56;
    v50 = *(v30 + 56);
    v11 = v59;
    v50(v59, 1, 1, v12);
    v17 = v57;
    v18 = v58;
    v32 = v60(v11, 1, v12);
  }

  else
  {
    v70 = v75;
    v71 = v76;
    v72[0] = v77;
    v68 = v73;
    v69 = v74;
    *&v72[1] = v22;
    BYTE8(v72[1]) = v23;
    outlined destroy of Parser(&v68);
    outlined init with take of AST.Atom.Kind(v8, v11, type metadata accessor for AST.Atom.CharacterProperty);
    (*(v13 + 56))(v11, 0, 1, v12);
    v31 = v62;
    v32 = v60(v11, 1, v12);
  }

  if (v32 == 1)
  {
    outlined destroy of _ASTParent?(v11, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
    return (*(*(v51 - 8) + 56))(v31, 1, 1, v51);
  }

  outlined init with take of AST.Atom.Kind(v11, v17, type metadata accessor for AST.Atom.CharacterProperty);
  result = outlined init with take of AST.Atom.Kind(v17, v31, type metadata accessor for AST.Atom.CharacterProperty);
  v52 = *(v2 + 16);
  if (v52 >> 14 >= v18 >> 14)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
    v54 = (v31 + *(v53 + 28));
    *v54 = v18;
    v54[1] = v52;
    return (*(*(v53 - 8) + 56))(v31, 0, 1, v53);
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in Parser.lexPOSIXCharacterProperty()@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((specialized Parser.tryEat<A>(sequence:)(14939, 0xE200000000000000) & 1) == 0)
  {
    v37 = type metadata accessor for AST.Atom.CharacterProperty(0);
    v38 = *(*(v37 - 8) + 56);

    return v38(a2, 1, 1, v37);
  }

  v77 = v8;
  v79 = a2;
  v9._countAndFlagsBits = 94;
  v9._object = 0xE100000000000000;
  v76 = Parser.tryEat(_:)(v9);
  v10 = *(a1 + 2);
  v11 = 0xE000000000000000;
  v91 = 0;
  v92 = 0xE000000000000000;
  result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
  v13 = v10;
  v78 = v10;
  if (result)
  {
LABEL_25:
    if (v13 >> 14 < v10 >> 14)
    {
      goto LABEL_59;
    }

    v39 = v91;
    v40._countAndFlagsBits = 61;
    v40._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v40))
    {
      *&v74 = v39;
      *(&v74 + 1) = v11;
      v41 = *(a1 + 2);
      v91 = 0;
      v92 = 0xE000000000000000;
      result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
      v75 = v41;
      if ((result & 1) == 0)
      {
        v80 = "Unhandled termination condition";
        v42 = v75;
        while (1)
        {
          v43 = a1[1];
          v86 = *a1;
          v87 = v43;
          v44 = a1[3];
          v88 = a1[2];
          v89 = v44;
          *v90 = a1[4];
          *&v90[9] = *(a1 + 73);
          v45 = *(&v87 + 1);
          v41 = v87;
          outlined init with copy of Parser(&v86, &v83);
          v46 = String.subscript.getter();
          if (!((v46 ^ v47) >> 14))
          {
            break;
          }

          v81 = Substring.subscript.getter();
          v49 = v48;

          outlined destroy of Parser(&v86);
          String.subscript.getter();
          v50 = Substring.index(_:offsetBy:limitedBy:)();
          v52 = v51;

          if (v52)
          {
            v53 = *&v90[16];
            v54 = v90[24];
            strcpy(v82, "UNREACHABLE: ");
            HIWORD(v82[1]) = -4864;
            MEMORY[0x1C68E0BF0](0xD000000000000015, v80 | 0x8000000000000000);
            LOBYTE(v83) = 0;
            *(&v83 + 1) = v82[0];
            *&v84 = v82[1];
            *(&v84 + 1) = v41;
            *v85 = v41;
            memset(&v85[8], 0, 32);
            v85[40] = -1;
            if (v54)
            {
              outlined destroy of Diagnostic(&v83);
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
              }

              v56 = *(v53 + 2);
              v55 = *(v53 + 3);
              if (v56 >= v55 >> 1)
              {
                v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v53);
              }

              *(v53 + 2) = v56 + 1;
              v57 = &v53[80 * v56];
              *(v57 + 2) = v83;
              v58 = v84;
              v59 = *v85;
              v60 = *&v85[16];
              *(v57 + 89) = *&v85[25];
              *(v57 + 4) = v59;
              *(v57 + 5) = v60;
              *(v57 + 3) = v58;
              *(a1 + 10) = v53;
            }

            String.subscript.getter();
            v61 = Substring.distance(from:to:)();

            if (v61 >= 1)
            {
              String.subscript.getter();
              v62 = Substring.index(_:offsetBy:limitedBy:)();
              v64 = v63;

              if ((v64 & 1) == 0)
              {
                if (v45 >> 14 < v62 >> 14)
                {
                  goto LABEL_60;
                }

                *(a1 + 2) = v62;
                *(a1 + 3) = v45;
                v41 = v62;
              }
            }
          }

          else
          {
            if (v45 >> 14 < v50 >> 14)
            {
              goto LABEL_57;
            }

            *(a1 + 2) = v50;
            *(a1 + 3) = v45;
            v41 = v50;
          }

          MEMORY[0x1C68E0BE0](v81, v49);

          result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
          v42 = v41;
          if (result)
          {
            goto LABEL_49;
          }
        }

        result = outlined destroy of Parser(&v86);
        v41 = v42;
      }

LABEL_49:
      v67 = v75;
      if (v41 >> 14 < v75 >> 14)
      {
        goto LABEL_61;
      }

      v39 = v91;
      v66 = v92;
      if (specialized Parser.tryEat<A>(sequence:)(23866, 0xE200000000000000))
      {
        if (*(&v74 + 1))
        {
          v86 = v74;
          *&v87 = v78;
          *(&v87 + 1) = v13;
          *&v83 = v39;
          *(&v83 + 1) = v66;
          *&v84 = v67;
          *(&v84 + 1) = v41;
          v68 = v77;
          Parser.classifyCharacterProperty(key:value:)(&v86, &v83, v77);

LABEL_54:

          v69 = v79;
          v70 = v76;
          outlined init with take of AST.Atom.Kind(v68, v79, type metadata accessor for AST.Atom.CharacterProperty.Kind);
          v71 = type metadata accessor for AST.Atom.CharacterProperty(0);
          *(v69 + *(v71 + 20)) = v70;
          *(v69 + *(v71 + 24)) = 1;
          return (*(*(v71 - 8) + 56))(v69, 0, 1, v71);
        }

LABEL_53:
        *&v86 = v39;
        *(&v86 + 1) = v66;
        *&v87 = v67;
        *(&v87 + 1) = v41;
        v68 = v77;
        Parser.classifyCharacterPropertyValueOnly(_:)(&v86, v77);
        goto LABEL_54;
      }
    }

    else if (specialized Parser.tryEat<A>(sequence:)(23866, 0xE200000000000000))
    {
      v65 = v10;
      v66 = v11;
      v67 = v65;
      v41 = v13;
      goto LABEL_53;
    }

    v72 = type metadata accessor for AST.Atom.CharacterProperty(0);
    (*(*(v72 - 8) + 56))(v79, 1, 1, v72);
  }

  v81 = "Unhandled termination condition";
  v14 = v10;
  while (1)
  {
    v15 = a1[1];
    v86 = *a1;
    v87 = v15;
    v16 = a1[3];
    v88 = a1[2];
    v89 = v16;
    *v90 = a1[4];
    *&v90[9] = *(a1 + 73);
    v17 = *(&v87 + 1);
    v13 = v87;
    outlined init with copy of Parser(&v86, &v83);
    v18 = String.subscript.getter();
    if (!((v18 ^ v19) >> 14))
    {

      result = outlined destroy of Parser(&v86);
      v13 = v14;
LABEL_24:
      v11 = v92;
      v10 = v78;
      goto LABEL_25;
    }

    v20 = Substring.subscript.getter();
    v22 = v21;

    outlined destroy of Parser(&v86);
    String.subscript.getter();
    v23 = Substring.index(_:offsetBy:limitedBy:)();
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *&v90[16];
    v27 = v90[24];
    strcpy(v82, "UNREACHABLE: ");
    HIWORD(v82[1]) = -4864;
    MEMORY[0x1C68E0BF0](0xD000000000000015, v81 | 0x8000000000000000);
    LOBYTE(v83) = 0;
    *(&v83 + 1) = v82[0];
    *&v84 = v82[1];
    *(&v84 + 1) = v13;
    *v85 = v13;
    memset(&v85[8], 0, 32);
    v85[40] = -1;
    if (v27)
    {
      outlined destroy of Diagnostic(&v83);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
      }

      v29 = *(v26 + 2);
      v28 = *(v26 + 3);
      if (v29 >= v28 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
      }

      *(v26 + 2) = v29 + 1;
      v30 = &v26[80 * v29];
      *(v30 + 2) = v83;
      v31 = v84;
      v32 = *v85;
      v33 = *&v85[16];
      *(v30 + 89) = *&v85[25];
      *(v30 + 4) = v32;
      *(v30 + 5) = v33;
      *(v30 + 3) = v31;
      *(a1 + 10) = v26;
    }

    String.subscript.getter();
    v34 = Substring.distance(from:to:)();

    if (v34 < 1)
    {
      goto LABEL_6;
    }

    String.subscript.getter();
    v23 = Substring.index(_:offsetBy:limitedBy:)();
    v36 = v35;

    if (v36)
    {
      goto LABEL_6;
    }

    if (v17 >> 14 < v23 >> 14)
    {
      goto LABEL_58;
    }

LABEL_5:
    *(a1 + 2) = v23;
    *(a1 + 3) = v17;
    v13 = v23;
LABEL_6:
    MEMORY[0x1C68E0BE0](v20, v22);

    result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
    v14 = v13;
    if (result)
    {
      goto LABEL_24;
    }
  }

  if (v17 >> 14 >= v23 >> 14)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t Parser.lexNamedCharacter()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AST.Atom.Kind(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 16);
  if (specialized Parser.tryEat<A>(sequence:)(31566, 0xE200000000000000))
  {
    if (specialized Parser.tryEat<A>(sequence:)(11093, 0xE200000000000000))
    {
      specialized Parser.lexUntil(_:)(v1, 125, 0xE100000000000000, v24);
      Parser.validateUnicodeScalar(_:_:)(v24, 2u, &v22);

      *v7 = v22;
      *(v7 + 8) = v23;
    }

    else
    {
      specialized Parser.lexUntil(_:)(v1, 125, 0xE100000000000000, v24);
      v15 = v24[1];
      *v7 = v24[0];
      *(v7 + 1) = v15;
    }

    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of _ASTParent?(v7, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    outlined init with take of AST.Atom.Kind(v7, v13, type metadata accessor for AST.Atom.Kind);
    result = outlined init with take of AST.Atom.Kind(v13, a1, type metadata accessor for AST.Atom.Kind);
    v18 = *(v1 + 16);
    if (v18 >> 14 < v14 >> 14)
    {
      __break(1u);
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      v20 = (a1 + *(v19 + 28));
      *v20 = v14;
      v20[1] = v18;
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }
  }

  return result;
}

uint64_t atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[6];
  v6 = a1[10];

  v7 = String.subscript.getter();
  if (!((v7 ^ v8) >> 14))
  {

LABEL_20:

    return 1;
  }

  v9 = Substring.subscript.getter();
  v11 = v10;

  if (v9 == 61 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 58 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 91 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 93 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 125 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 92 && v11 == 0xE100000000000000)
  {
    goto LABEL_20;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v13 & 1;
}

uint64_t Parser.lexCharacterProperty()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 16);
  closure #1 in Parser.lexCharacterProperty()(v1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of _ASTParent?(v7, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyVSgMR);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    outlined init with take of AST.Atom.Kind(v7, v13, type metadata accessor for AST.Atom.CharacterProperty);
    result = outlined init with take of AST.Atom.Kind(v13, a1, type metadata accessor for AST.Atom.CharacterProperty);
    v17 = *(v1 + 16);
    if (v17 >> 14 < v14 >> 14)
    {
      __break(1u);
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      v19 = (a1 + *(v18 + 28));
      *v19 = v14;
      v19[1] = v17;
      return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
    }
  }

  return result;
}

uint64_t closure #1 in Parser.lexCharacterProperty()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v87 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = String.subscript.getter();
  v13 = specialized Sequence<>.starts<A>(with:)(31600, 0xE200000000000000, v11, v12);

  if ((v13 & 1) == 0)
  {
    v14 = String.subscript.getter();
    v16 = specialized Sequence<>.starts<A>(with:)(31568, 0xE200000000000000, v14, v15);

    if ((v16 & 1) == 0)
    {
      v24 = type metadata accessor for AST.Atom.CharacterProperty(0);
      v25 = *(*(v24 - 8) + 56);
      v26 = v24;
      v27 = v88;

      return v25(v27, 1, 1, v26);
    }
  }

  v17 = *(a1 + 16);
  v101[0] = *a1;
  v101[1] = v17;
  v18 = *(a1 + 48);
  v101[2] = *(a1 + 32);
  v101[3] = v18;
  v102[0] = *(a1 + 64);
  *(v102 + 9) = *(a1 + 73);
  outlined init with copy of Parser(v101, &v96);
  v19 = String.subscript.getter();
  if ((v19 ^ v20) >> 14)
  {
    v21 = Substring.subscript.getter();
    v23 = v22;

    outlined destroy of Parser(v101);
    if (v21 == 80 && v23 == 0xE100000000000000)
    {

      v85 = 1;
    }

    else
    {
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    outlined destroy of Parser(v101);
    v85 = 0;
  }

  Parser.advance(_:)(2);
  v29 = *(a1 + 16);
  v30 = 0xE000000000000000;
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
  v31 = v29;
  v84 = v29;
  if (result)
  {
    goto LABEL_32;
  }

  v89 = "Unhandled termination condition";
  v32 = v29;
  while (1)
  {
    v33 = *(a1 + 16);
    v96 = *a1;
    v97 = v33;
    v34 = *(a1 + 48);
    v98 = *(a1 + 32);
    v99 = v34;
    v100[0] = *(a1 + 64);
    *(v100 + 9) = *(a1 + 73);
    v35 = *(&v97 + 1);
    v31 = v97;
    outlined init with copy of Parser(&v96, &v92);
    v36 = String.subscript.getter();
    if (!((v36 ^ v37) >> 14))
    {
      break;
    }

    v90 = Substring.subscript.getter();
    v39 = v38;

    outlined destroy of Parser(&v96);
    String.subscript.getter();
    v40 = Substring.index(_:offsetBy:limitedBy:)();
    v42 = v41;

    if (v42)
    {
      v43 = *&v100[1];
      v44 = BYTE8(v100[1]);
      strcpy(v91, "UNREACHABLE: ");
      HIWORD(v91[1]) = -4864;
      MEMORY[0x1C68E0BF0](0xD000000000000015, v89 | 0x8000000000000000);
      LOBYTE(v92) = 0;
      *(&v92 + 1) = v91[0];
      *&v93 = v91[1];
      *(&v93 + 1) = v31;
      *&v94[0] = v31;
      *(v94 + 8) = 0u;
      *(&v94[1] + 8) = 0u;
      BYTE8(v94[2]) = -1;
      if (v44)
      {
        outlined destroy of Diagnostic(&v92);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
        }

        v46 = *(v43 + 2);
        v45 = *(v43 + 3);
        if (v46 >= v45 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v43);
        }

        *(v43 + 2) = v46 + 1;
        v47 = &v43[80 * v46];
        *(v47 + 2) = v92;
        v48 = v93;
        v49 = v94[0];
        v50 = v94[1];
        *(v47 + 89) = *(&v94[1] + 9);
        *(v47 + 4) = v49;
        *(v47 + 5) = v50;
        *(v47 + 3) = v48;
        *(a1 + 80) = v43;
      }

      String.subscript.getter();
      v51 = Substring.distance(from:to:)();

      if (v51 < 1)
      {
        goto LABEL_16;
      }

      String.subscript.getter();
      v40 = Substring.index(_:offsetBy:limitedBy:)();
      v53 = v52;

      if (v53)
      {
        goto LABEL_16;
      }

      if (v35 >> 14 < v40 >> 14)
      {
        goto LABEL_63;
      }
    }

    else if (v35 >> 14 < v40 >> 14)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      return result;
    }

    *(a1 + 16) = v40;
    *(a1 + 24) = v35;
    v31 = v40;
LABEL_16:
    MEMORY[0x1C68E0BE0](v90, v39);

    result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
    v32 = v31;
    if (result)
    {
      goto LABEL_31;
    }
  }

  result = outlined destroy of Parser(&v96);
  v31 = v32;
LABEL_31:
  v30 = *(&v95 + 1);
  v29 = v84;
LABEL_32:
  if (v31 >> 14 < v29 >> 14)
  {
    goto LABEL_64;
  }

  v54 = v95;
  v55._countAndFlagsBits = 61;
  v55._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v55))
  {
    goto LABEL_57;
  }

  *&v82 = v54;
  *(&v82 + 1) = v30;
  v56 = *(a1 + 16);
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
  v83 = v56;
  if (result)
  {
    goto LABEL_53;
  }

  v86 = "Unhandled termination condition";
  v57 = v83;
  while (2)
  {
    v58 = *(a1 + 16);
    v96 = *a1;
    v97 = v58;
    v59 = *(a1 + 48);
    v98 = *(a1 + 32);
    v99 = v59;
    v100[0] = *(a1 + 64);
    *(v100 + 9) = *(a1 + 73);
    v60 = *(&v97 + 1);
    v56 = v97;
    outlined init with copy of Parser(&v96, &v92);
    v61 = String.subscript.getter();
    if ((v61 ^ v62) >> 14)
    {
      v89 = Substring.subscript.getter();
      v90 = v63;

      outlined destroy of Parser(&v96);
      String.subscript.getter();
      v64 = Substring.index(_:offsetBy:limitedBy:)();
      v66 = v65;

      if (v66)
      {
        v67 = *&v100[1];
        v68 = BYTE8(v100[1]);
        strcpy(v91, "UNREACHABLE: ");
        HIWORD(v91[1]) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, v86 | 0x8000000000000000);
        LOBYTE(v92) = 0;
        *(&v92 + 1) = v91[0];
        *&v93 = v91[1];
        *(&v93 + 1) = v56;
        *&v94[0] = v56;
        *(v94 + 8) = 0u;
        *(&v94[1] + 8) = 0u;
        BYTE8(v94[2]) = -1;
        if (v68)
        {
          outlined destroy of Diagnostic(&v92);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
          }

          v70 = *(v67 + 2);
          v69 = *(v67 + 3);
          if (v70 >= v69 >> 1)
          {
            v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v67);
          }

          *(v67 + 2) = v70 + 1;
          v71 = &v67[80 * v70];
          *(v71 + 2) = v92;
          v72 = v93;
          v73 = v94[0];
          v74 = v94[1];
          *(v71 + 89) = *(&v94[1] + 9);
          *(v71 + 4) = v73;
          *(v71 + 5) = v74;
          *(v71 + 3) = v72;
          *(a1 + 80) = v67;
        }

        String.subscript.getter();
        v75 = Substring.distance(from:to:)();

        if (v75 >= 1)
        {
          String.subscript.getter();
          v64 = Substring.index(_:offsetBy:limitedBy:)();
          v77 = v76;

          if ((v77 & 1) == 0)
          {
            if (v60 >> 14 < v64 >> 14)
            {
              goto LABEL_65;
            }

LABEL_37:
            *(a1 + 16) = v64;
            *(a1 + 24) = v60;
            v56 = v64;
          }
        }

        MEMORY[0x1C68E0BE0](v89, v90);

        result = atPossibleEnding #1 (_:) in Parser.lexCharacterPropertyKeyValue()(a1);
        v57 = v56;
        if (result)
        {
          goto LABEL_53;
        }

        continue;
      }

      if (v60 >> 14 < v64 >> 14)
      {
        goto LABEL_62;
      }

      goto LABEL_37;
    }

    break;
  }

  result = outlined destroy of Parser(&v96);
  v56 = v57;
LABEL_53:
  v29 = v83;
  if (v56 >> 14 < v83 >> 14)
  {
    goto LABEL_66;
  }

  v30 = *(&v95 + 1);
  if (*(&v82 + 1))
  {
    v96 = v82;
    *&v97 = v84;
    *(&v97 + 1) = v31;
    v92 = v95;
    *&v93 = v83;
    *(&v93 + 1) = v56;
    v78 = v87;
    Parser.classifyCharacterProperty(key:value:)(&v96, &v92, v87);

    goto LABEL_58;
  }

  v31 = v56;
  v54 = v95;
LABEL_57:
  *&v96 = v54;
  *(&v96 + 1) = v30;
  *&v97 = v29;
  *(&v97 + 1) = v31;
  v78 = v87;
  Parser.classifyCharacterPropertyValueOnly(_:)(&v96, v87);
LABEL_58:

  v79._countAndFlagsBits = 125;
  v79._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v79))
  {
    v96 = xmmword_1C0C7E390;
    v97 = 0uLL;
    LOBYTE(v98) = 3;
    *&v92 = *(a1 + 16);
    *(&v92 + 1) = v92;
    Diagnostics.error(_:at:)(&v96, &v92);
  }

  v80 = v88;
  outlined init with take of AST.Atom.Kind(v78, v88, type metadata accessor for AST.Atom.CharacterProperty.Kind);
  v81 = type metadata accessor for AST.Atom.CharacterProperty(0);
  *(v80 + *(v81 + 20)) = v85 & 1;
  *(v80 + *(v81 + 24)) = 0;
  return (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
}

void Parser.lexRecursionLevel()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4._countAndFlagsBits = 43;
  v4._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v4))
  {
    Parser.lexNumber(_:)(1, v9);
    if ((v10 & 1) == 0)
    {
      if ((BYTE8(v9[0]) & 1) == 0)
      {
        v5 = *&v9[0];
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_7:
    v9[0] = xmmword_1C0C7E360;
    v9[1] = xmmword_1C0C7E3C0;
    v10 = 2;
    *&v8 = *(v1 + 16);
    *(&v8 + 1) = v8;
    Diagnostics.error(_:at:)(v9, &v8);
    goto LABEL_8;
  }

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v6))
  {
    goto LABEL_8;
  }

  Parser.lexNumber(_:)(1, v9);
  if (v10)
  {
    goto LABEL_7;
  }

  if ((BYTE8(v9[0]) & 1) == 0)
  {
    v5 = -*&v9[0];
    if (__OFSUB__(0, *&v9[0]))
    {
LABEL_15:
      __break(1u);
      return;
    }

LABEL_12:
    v7 = *(v1 + 16);
    if (v7 >> 14 >= v3 >> 14)
    {
      *a1 = v5;
      *(a1 + 8) = 0;
      *(a1 + 16) = v3;
      *(a1 + 24) = v7;
      *(a1 + 32) = 0;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_8:
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
}

void Parser.lexEscapedReference()(uint64_t a1@<X8>)
{
  v2 = v1;
  v155 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v153 = &v139 - v10;
  v11 = type metadata accessor for AST.Atom.Kind(0);
  v12 = *(v11 - 8);
  v152 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v147 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 2);
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[1];
  v166 = v1[2];
  v167 = v17;
  v168[0] = v18;
  *(v168 + 9) = *(v1 + 73);
  v165[0] = *v1;
  v165[1] = v19;
  v162 = v166;
  v163 = v17;
  v164 = v18;
  v160 = v165[0];
  v161 = v19;
  v154 = *&v168[1];
  v151 = BYTE8(v168[1]);
  outlined init with copy of Parser(v165, &v171);
  v20 = v1[1];
  v175 = *v1;
  v176 = v20;
  v21 = v1[3];
  v177 = v1[2];
  *v178 = v21;
  *&v178[16] = v1[4];
  *&v178[25] = *(v1 + 73);
  outlined init with copy of Parser(&v175, &v171);
  v22 = String.subscript.getter();
  v148 = v16;
  v150 = v11;
  if (!((v22 ^ v23) >> 14))
  {

    outlined destroy of Parser(&v175);
    v24 = *(v12 + 56);
    v24(v8, 1, 1, v11);
    v25 = v11;
    v26 = v12;
    v27 = v155;
    goto LABEL_65;
  }

  v149 = v12;
  v28 = Substring.subscript.getter();
  v30 = v29;

  outlined destroy of Parser(&v175);
  v31._countAndFlagsBits = 103;
  v31._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v31))
  {

    v32._countAndFlagsBits = 123;
    v32._object = 0xE100000000000000;
    v33 = Parser.tryEat(_:)(v32);
    v27 = v155;
    if (v33)
    {
      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 0, &v171);
      v34 = *(&v171 + 1);
      v35 = *&v173[0];
      v36 = BYTE8(v173[2]);
      LODWORD(v169) = *(&v173[2] + 9);
      *(&v169 + 3) = HIDWORD(v173[2]);
      if (LOBYTE(v173[0]) == 0xFF)
      {
        v37 = *(v1 + 2);
        closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 125, 0xE100000000000000, 0, &v171);
        v38 = *(v1 + 2);
        if (v38 >> 14 < v37 >> 14)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v34 = *(&v171 + 1);
        v145 = v171;
        v146 = v38;
        if ((specialized Parser.tryEat<A>(sequence:)(125, 0xE100000000000000) & 1) == 0)
        {
          *&v171 = 125;
          *(&v171 + 1) = 0xE100000000000000;
          *&v171 = String.init<A>(_:)();
          *(&v171 + 1) = v39;
          v172 = 0uLL;
          LOBYTE(v173[0]) = 3;
          *&v156 = *(v1 + 2);
          *(&v156 + 1) = v156;
          Diagnostics.error(_:at:)(&v171, &v156);
        }

        v36 = 1;
        v174 = 1;
        v40 = 0uLL;
        v41 = 2;
        v42 = 0uLL;
        v43 = 0uLL;
        v44 = v145;
      }

      else
      {
        v142 = v172;
        v143 = *(&v173[1] + 8);
        v144 = *(v173 + 8);
        v37 = *&v173[3];
        v145 = v171;
        v146 = *(&v173[3] + 1);
        if ((specialized Parser.tryEat<A>(sequence:)(125, 0xE100000000000000) & 1) == 0)
        {
          *&v171 = 125;
          *(&v171 + 1) = 0xE100000000000000;
          *&v171 = String.init<A>(_:)();
          *(&v171 + 1) = v75;
          v172 = 0uLL;
          LOBYTE(v173[0]) = 3;
          *&v156 = *(v1 + 2);
          *(&v156 + 1) = v156;
          Diagnostics.error(_:at:)(&v171, &v156);
        }

        v174 = v36;
        LODWORD(v156) = v169;
        *(&v156 + 3) = *(&v169 + 3);
        v41 = v35;
        v44 = v145;
        v42 = v143;
        v40 = v144;
        v43 = v142;
      }

      *v8 = v44;
      *(v8 + 1) = v34;
      *(v8 + 1) = v43;
      v8[32] = v41;
      v8[39] = HIBYTE(v35);
      *(v8 + 37) = HIDWORD(v35) >> 8;
      *(v8 + 33) = v35 >> 8;
      *(v8 + 40) = v40;
      *(v8 + 56) = v42;
      v8[72] = v36;
      *(v8 + 73) = v156;
      *(v8 + 19) = *(&v156 + 3);
      *(v8 + 10) = v37;
      v76 = v146;
      goto LABEL_39;
    }

    v61 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in closure #1 in Parser.lexEscapedReference());
    v63 = v62;
    swift_arrayDestroy();
    if (v63)
    {
      v64 = Parser.getClosingDelimiter(for:)(v61, v63);
      v66 = v65;

      Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(1, 0, &v171);
      v67 = *&v173[0];
      v68 = BYTE8(v173[2]);
      LODWORD(v169) = *(&v173[2] + 9);
      *(&v169 + 3) = HIDWORD(v173[2]);
      if (LOBYTE(v173[0]) == 0xFF)
      {
        v69 = *(v2 + 2);
        closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, v64, v66, 0, &v171);
        v70 = *(v2 + 2);
        if (v70 >> 14 < v69 >> 14)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        *&v144 = *(&v171 + 1);
        v145 = v171;
        v71 = specialized Parser.tryEat<A>(sequence:)(v64, v66);
        v146 = v70;
        if ((v71 & 1) == 0)
        {
          *&v171 = v64;
          *(&v171 + 1) = v66;
          *&v171 = String.init<A>(_:)();
          *(&v171 + 1) = v103;
          v172 = 0uLL;
          LOBYTE(v173[0]) = 3;
          *&v156 = *(v2 + 2);
          *(&v156 + 1) = v156;
          Diagnostics.error(_:at:)(&v171, &v156);
        }

        v26 = v149;
        v25 = v150;
        v68 = 1;
        v174 = 1;
        v100 = 0uLL;
        v97 = 2;
        v101 = 0uLL;
        v102 = 0uLL;
        v98 = v145;
        v99 = v144;
      }

      else
      {
        v141 = v172;
        v142 = *(&v173[1] + 8);
        v143 = *(v173 + 8);
        *&v144 = *(&v171 + 1);
        v69 = *&v173[3];
        v145 = v171;
        v146 = *(&v173[3] + 1);
        if ((specialized Parser.tryEat<A>(sequence:)(v64, v66) & 1) == 0)
        {
          *&v171 = v64;
          *(&v171 + 1) = v66;
          *&v171 = String.init<A>(_:)();
          *(&v171 + 1) = v96;
          v172 = 0uLL;
          LOBYTE(v173[0]) = 3;
          *&v156 = *(v2 + 2);
          *(&v156 + 1) = v156;
          Diagnostics.error(_:at:)(&v171, &v156);
        }

        v26 = v149;
        v25 = v150;
        v174 = v68;
        LODWORD(v156) = v169;
        *(&v156 + 3) = *(&v169 + 3);
        v97 = v67;
        v98 = v145;
        v99 = v144;
        v101 = v142;
        v100 = v143;
        v102 = v141;
      }

      *v8 = v98;
      *(v8 + 1) = v99;
      *(v8 + 1) = v102;
      v8[32] = v97;
      v8[39] = HIBYTE(v67);
      *(v8 + 37) = HIDWORD(v67) >> 8;
      *(v8 + 33) = v67 >> 8;
      *(v8 + 40) = v100;
      *(v8 + 56) = v101;
      v8[72] = v68;
      *(v8 + 73) = v156;
      *(v8 + 19) = *(&v156 + 3);
      v104 = v146;
      *(v8 + 10) = v69;
      *(v8 + 11) = v104;
      goto LABEL_63;
    }

    Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 0, &v171);
    v169 = v171;
    v170 = v172;
    v84 = *&v173[0];
    v156 = *(v173 + 8);
    v157 = *(&v173[1] + 8);
    v158 = *(&v173[2] + 8);
    v159 = *(&v173[3] + 1);
    if (LOBYTE(v173[0]) != 0xFF)
    {
      v86 = v170;
      *v8 = v169;
      *(v8 + 1) = v86;
      *(v8 + 4) = v84;
      v87 = v157;
      *(v8 + 40) = v156;
      *(v8 + 56) = v87;
      *(v8 + 72) = v158;
      v76 = v159;
LABEL_39:
      *(v8 + 11) = v76;
      v25 = v150;
      swift_storeEnumTagMultiPayload();
      v26 = v149;
LABEL_64:
      v24 = *(v26 + 56);
      v24(v8, 0, 1, v25);
      goto LABEL_65;
    }

    goto LABEL_46;
  }

  v45._countAndFlagsBits = 107;
  v45._object = 0xE100000000000000;
  v46 = Parser.tryEat(_:)(v45);
  v27 = v155;
  if (!v46)
  {
    if (v28 != 48 || v30 != 0xE100000000000000)
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v26 = v149;
      if ((v72 & 1) == 0)
      {
        Parser.lexNumber(_:)(1, &v171);
        if ((v173[0] & 1) == 0)
        {
          v73 = v172;
          v74 = BYTE8(v171) & 1;
          LOBYTE(v156) = 1;
          *v8 = v171;
          *(v8 + 1) = v74;
          *(v8 + 1) = v73;
          v8[32] = 0;
          *(v8 + 40) = 0u;
          *(v8 + 56) = 0u;
          v8[72] = 1;
          *(v8 + 5) = v73;
          v25 = v150;
LABEL_63:
          swift_storeEnumTagMultiPayload();
          goto LABEL_64;
        }
      }

LABEL_47:
      v24 = *(v26 + 56);
      v25 = v150;
      v24(v8, 1, 1, v150);
      goto LABEL_65;
    }

LABEL_46:
    v26 = v149;
    goto LABEL_47;
  }

  v47 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #1 of closure #1 in closure #1 in Parser.lexEscapedReference());
  v49 = v48;
  swift_arrayDestroy();
  if (v49)
  {
    v50 = Parser.getClosingDelimiter(for:)(v47, v49);
    v52 = v51;

    Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(0, 1, &v171);
    v53 = *&v173[0];
    v54 = BYTE8(v173[2]);
    LODWORD(v169) = *(&v173[2] + 9);
    *(&v169 + 3) = HIDWORD(v173[2]);
    if (LOBYTE(v173[0]) == 0xFF)
    {
      v55 = *(v2 + 2);
      v140 = v50;
      closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, v50, v52, 0, &v171);
      *&v141 = *(v2 + 2);
      v56 = v141 >> 14;
      if (v141 >> 14 < v55 >> 14)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v57 = v55;
      v145 = *(&v171 + 1);
      v146 = v171;
      Parser.lexRecursionLevel()(&v171);
      v54 = v173[0];
      *&v144 = v172;
      v143 = v171;
      *&v142 = *(&v172 + 1);
      if ((v173[0] & 1) == 0)
      {
        if (v55 >> 14 >= v172 >> 14)
        {
          v58 = v172;
        }

        else
        {
          v58 = v55;
        }

        v59 = v141;
        if (v56 < *(&v172 + 1) >> 14)
        {
          v59 = *(&v172 + 1);
        }

        if (v59 >> 14 < v58 >> 14)
        {
          goto LABEL_100;
        }

        v57 = v58;
        *&v141 = v59;
      }

      v27 = v155;
      v60 = v140;
      if ((specialized Parser.tryEat<A>(sequence:)(v140, v52) & 1) == 0)
      {
        *&v171 = v60;
        *(&v171 + 1) = v52;
        *&v171 = String.init<A>(_:)();
        *(&v171 + 1) = v105;
        v172 = 0uLL;
        LOBYTE(v173[0]) = 3;
        *&v156 = *(v2 + 2);
        *(&v156 + 1) = v156;
        Diagnostics.error(_:at:)(&v171, &v156);
      }

      v26 = v149;
      v25 = v150;
      v85 = v141;
      v174 = v54;
      v95 = 0uLL;
      v89 = 2;
      v91 = v145;
      v90 = v146;
      v92 = v144;
      v93 = v143;
      v94 = v142;
    }

    else
    {
      v141 = v172;
      *&v142 = *&v173[2];
      v143 = *(v173 + 8);
      *&v144 = *(&v173[1] + 1);
      v145 = *(&v171 + 1);
      v146 = v171;
      v85 = *(&v173[3] + 1);
      v140 = *&v173[3];
      if ((specialized Parser.tryEat<A>(sequence:)(v50, v52) & 1) == 0)
      {
        *&v171 = v50;
        *(&v171 + 1) = v52;
        *&v171 = String.init<A>(_:)();
        *(&v171 + 1) = v88;
        v172 = 0uLL;
        LOBYTE(v173[0]) = 3;
        *&v156 = *(v2 + 2);
        *(&v156 + 1) = v156;
        Diagnostics.error(_:at:)(&v171, &v156);
      }

      v26 = v149;
      v25 = v150;
      v174 = v54;
      LODWORD(v156) = v169;
      *(&v156 + 3) = *(&v169 + 3);
      v89 = v53;
      v91 = v145;
      v90 = v146;
      v92 = v144;
      v93 = v143;
      v94 = v142;
      v95 = v141;
      v57 = v140;
    }

    *v8 = v90;
    *(v8 + 1) = v91;
    *(v8 + 1) = v95;
    v8[32] = v89;
    v8[39] = HIBYTE(v53);
    *(v8 + 37) = HIDWORD(v53) >> 8;
    *(v8 + 33) = v53 >> 8;
    *(v8 + 40) = v93;
    *(v8 + 7) = v92;
    *(v8 + 8) = v94;
    v8[72] = v54;
    *(v8 + 73) = v156;
    *(v8 + 19) = *(&v156 + 3);
    *(v8 + 10) = v57;
    *(v8 + 11) = v85;
    goto LABEL_63;
  }

  v77._countAndFlagsBits = 123;
  v77._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v77))
  {
    goto LABEL_46;
  }

  v78 = v27;
  v79 = *(v2 + 2);
  closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v2, 125, 0xE100000000000000, 0, &v171);
  v80 = *(v2 + 2);
  if (v80 >> 14 >= v79 >> 14)
  {
    v81 = v171;
    if ((specialized Parser.tryEat<A>(sequence:)(125, 0xE100000000000000) & 1) == 0)
    {
      *&v171 = 125;
      *(&v171 + 1) = 0xE100000000000000;
      *&v171 = String.init<A>(_:)();
      *(&v171 + 1) = v82;
      v172 = 0uLL;
      LOBYTE(v173[0]) = 3;
      *&v156 = *(v2 + 2);
      *(&v156 + 1) = v156;
      Diagnostics.error(_:at:)(&v171, &v156);
    }

    LOBYTE(v156) = 1;
    *v8 = v81;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    v8[32] = 2;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    v8[72] = 1;
    *(v8 + 10) = v79;
    *(v8 + 11) = v80;
    v25 = v150;
    swift_storeEnumTagMultiPayload();
    v83 = v149;
    v24 = *(v149 + 56);
    v24(v8, 0, 1, v25);
    v27 = v78;
    v26 = v83;
LABEL_65:
    v108 = *(v26 + 48);
    v107 = v26 + 48;
    v106 = v108;
    if (v108(v8, 1, v25) != 1)
    {
      v173[0] = v162;
      v173[1] = v163;
      v173[2] = v164;
      v171 = v160;
      v172 = v161;
      *&v173[3] = v154;
      BYTE8(v173[3]) = v151;
      outlined destroy of Parser(&v171);
      v114 = v153;
      outlined init with take of AST.Atom.Kind(v8, v153, type metadata accessor for AST.Atom.Kind);
      v24(v114, 0, 1, v25);
LABEL_90:
      if (v106(v114, 1, v25) == 1)
      {
        outlined destroy of _ASTParent?(v114, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
        (*(*(v133 - 8) + 56))(v27, 1, 1, v133);
        return;
      }

      v134 = v147;
      outlined init with take of AST.Atom.Kind(v114, v147, type metadata accessor for AST.Atom.Kind);
      outlined init with take of AST.Atom.Kind(v134, v27, type metadata accessor for AST.Atom.Kind);
      v135 = *(v2 + 2);
      v136 = v148;
      if (v135 >> 14 >= v148 >> 14)
      {
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
        v138 = (v27 + *(v137 + 28));
        *v138 = v136;
        v138[1] = v135;
        (*(*(v137 - 8) + 56))(v27, 0, 1, v137);
        return;
      }

      __break(1u);
      goto LABEL_95;
    }

    v149 = v107;
    v109 = *&v168[1];
    v110 = BYTE8(v168[1]);
    outlined destroy of _ASTParent?(v8, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
    v111 = *(v2 + 10);
    v112 = v2[3];
    v173[0] = v2[2];
    v173[1] = v112;
    v173[2] = v2[4];
    *(&v173[2] + 9) = *(v2 + 73);
    v113 = v2[1];
    v171 = *v2;
    v172 = v113;

    outlined destroy of Parser(&v171);
    if (v110 == 1)
    {
    }

    else
    {
      v115 = *(v109 + 2);
      v116 = *(v111 + 16);
      if (v116 >= v115)
      {
        v117 = *(v109 + 2);
      }

      else
      {
        v117 = *(v111 + 16);
      }

      if (v115)
      {
        v118 = v117;
      }

      else
      {
        v118 = 0;
      }

      v114 = v153;
      if (v118 == v116)
      {
        swift_unknownObjectRelease();
        v27 = v155;
LABEL_89:
        v131 = v163;
        v2[2] = v162;
        v2[3] = v131;
        v2[4] = v164;
        v132 = v161;
        *v2 = v160;
        v2[1] = v132;
        *(v2 + 10) = v154;
        *(v2 + 88) = v151;
        v25 = v150;
        v24(v114, 1, 1, v150);
        goto LABEL_90;
      }

      if (v118 >= v116)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v119 = ~v118 + v116;
      v120 = 80 * v118 + 32;
      v121 = v154;
      while (1)
      {
        v175 = *(v111 + v120);
        v122 = *(v111 + v120 + 16);
        v123 = *(v111 + v120 + 32);
        v124 = *(v111 + v120 + 48);
        *&v178[9] = *(v111 + v120 + 57);
        v177 = v123;
        *v178 = v124;
        v176 = v122;
        if (!v175)
        {
          outlined init with copy of Diagnostic(&v175, &v156);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 2) + 1, 1, v109);
          }

          v126 = *(v109 + 2);
          v125 = *(v109 + 3);
          if (v126 >= v125 >> 1)
          {
            v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v109);
          }

          *(v109 + 2) = v126 + 1;
          v127 = &v109[80 * v126];
          *(v127 + 2) = v175;
          v128 = v176;
          v129 = v177;
          v130 = *v178;
          *(v127 + 89) = *&v178[9];
          *(v127 + 4) = v129;
          *(v127 + 5) = v130;
          *(v127 + 3) = v128;
          v121 = v109;
        }

        if (!v119)
        {
          break;
        }

        --v119;
        v120 += 80;
      }

      v154 = v121;
      swift_unknownObjectRelease();

      v27 = v155;
    }

    v114 = v153;
    goto LABEL_89;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

void Parser.lexGroupLikeReference()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v72 - v11;
  v13 = type metadata accessor for AST.Atom.Kind(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v75 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 16);
  v19 = *(v1 + 48);
  v20 = *(v1 + 64);
  v21 = *(v1 + 16);
  v94 = *(v1 + 32);
  v95 = v19;
  v96[0] = v20;
  *(v96 + 9) = *(v1 + 73);
  v93[0] = *v1;
  v93[1] = v21;
  v90 = v94;
  v91 = v19;
  v92 = v20;
  v88 = v93[0];
  v89 = v21;
  v81 = *&v96[1];
  v79 = BYTE8(v96[1]);
  outlined init with copy of Parser(v93, &v98);
  v22 = specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000);
  v76 = v18;
  v77 = v13;
  v80 = v14;
  if ((v22 & 1) == 0)
  {
    v27 = *(v14 + 56);
    v27(v9, 1, 1, v13);
    v28 = v14;
LABEL_16:
    v33 = *(v28 + 48);
    v31 = v28 + 48;
    v32 = v33;
    if (v33(v9, 1, v13) == 1)
    {
      v78 = v31;
      v73 = v12;
      v34 = *&v96[1];
      v35 = BYTE8(v96[1]);
      outlined destroy of _ASTParent?(v9, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
      v36 = *(v2 + 80);
      v37 = *(v2 + 48);
      *v100 = *(v2 + 32);
      *&v100[16] = v37;
      *&v100[32] = *(v2 + 64);
      *&v100[41] = *(v2 + 73);
      v38 = *(v2 + 16);
      v98 = *v2;
      v99 = v38;

      outlined destroy of Parser(&v98);
      if (v35 == 1)
      {

        v39 = v81;
      }

      else
      {
        v40 = *(v34 + 2);
        v41 = *(v36 + 16);
        if (v41 >= v40)
        {
          v42 = *(v34 + 2);
        }

        else
        {
          v42 = *(v36 + 16);
        }

        if (v40)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        v39 = v81;
        if (v43 == v41)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v74 = a1;
          if (v43 >= v41)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v44 = ~v43 + v41;
          for (i = 80 * v43 + 32; ; i += 80)
          {
            v84 = *(v36 + i);
            v46 = *(v36 + i + 16);
            v47 = *(v36 + i + 32);
            v48 = *(v36 + i + 48);
            *(v87 + 9) = *(v36 + i + 57);
            v86 = v47;
            v87[0] = v48;
            v85 = v46;
            if (!v84)
            {
              outlined init with copy of Diagnostic(&v84, &v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
              }

              v50 = *(v34 + 2);
              v49 = *(v34 + 3);
              if (v50 >= v49 >> 1)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v34);
              }

              *(v34 + 2) = v50 + 1;
              v51 = &v34[80 * v50];
              *(v51 + 2) = v84;
              v52 = v85;
              v53 = v86;
              v54 = v87[0];
              *(v51 + 89) = *(v87 + 9);
              *(v51 + 4) = v53;
              *(v51 + 5) = v54;
              *(v51 + 3) = v52;
              v39 = v34;
            }

            if (!v44)
            {
              break;
            }

            --v44;
          }

          swift_unknownObjectRelease();

          a1 = v74;
        }
      }

      v55 = v91;
      *(v2 + 32) = v90;
      *(v2 + 48) = v55;
      *(v2 + 64) = v92;
      v56 = v89;
      *v2 = v88;
      *(v2 + 16) = v56;
      *(v2 + 80) = v39;
      *(v2 + 88) = v79;
      v12 = v73;
      v13 = v77;
      v27(v73, 1, 1, v77);
    }

    else
    {
      *v100 = v90;
      *&v100[16] = v91;
      *&v100[32] = v92;
      v98 = v88;
      v99 = v89;
      *&v100[48] = v81;
      v100[56] = v79;
      outlined destroy of Parser(&v98);
      outlined init with take of AST.Atom.Kind(v9, v12, type metadata accessor for AST.Atom.Kind);
      v27(v12, 0, 1, v13);
    }

    if (v32(v12, 1, v13) == 1)
    {
      outlined destroy of _ASTParent?(v12, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      (*(*(v57 - 8) + 56))(a1, 1, 1, v57);
      return;
    }

    v58 = v75;
    outlined init with take of AST.Atom.Kind(v12, v75, type metadata accessor for AST.Atom.Kind);
    outlined init with take of AST.Atom.Kind(v58, a1, type metadata accessor for AST.Atom.Kind);
    v59 = *(v2 + 16);
    v60 = v76;
    if (v59 >> 14 >= v76 >> 14)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      v62 = (a1 + *(v61 + 28));
      *v62 = v60;
      v62[1] = v59;
      (*(*(v61 - 8) + 56))(a1, 0, 1, v61);
      return;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v78 = v14;
  if (specialized Parser.tryEat<A>(sequence:)(15696, 0xE200000000000000))
  {
    v23 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 0, &v98);
    v13 = *(v1 + 16);
    if (v13 >> 14 < v23 >> 14)
    {
      goto LABEL_55;
    }

    v74 = a1;
    v25 = *(&v98 + 1);
    v24 = v98;
    if ((specialized Parser.tryEat<A>(sequence:)(41, 0xE100000000000000) & 1) == 0)
    {
      *&v98 = 41;
      *(&v98 + 1) = 0xE100000000000000;
      *&v98 = String.init<A>(_:)();
      *(&v98 + 1) = v26;
      v99 = 0uLL;
      v100[0] = 3;
      *&v84 = *(v1 + 16);
      *(&v84 + 1) = v84;
      Diagnostics.error(_:at:)(&v98, &v84);
    }

    goto LABEL_15;
  }

  if (specialized Parser.tryEat<A>(sequence:)(15952, 0xE200000000000000))
  {
    v74 = a1;
    v23 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 0, &v98);
    v13 = *(v1 + 16);
    if (v13 >> 14 >= v23 >> 14)
    {
LABEL_13:
      v25 = *(&v98 + 1);
      v24 = v98;
      if ((specialized Parser.tryEat<A>(sequence:)(41, 0xE100000000000000) & 1) == 0)
      {
        *&v98 = 41;
        *(&v98 + 1) = 0xE100000000000000;
        *&v98 = String.init<A>(_:)();
        *(&v98 + 1) = v30;
        v99 = 0uLL;
        v100[0] = 3;
        *&v84 = *(v1 + 16);
        *(&v84 + 1) = v84;
        Diagnostics.error(_:at:)(&v98, &v84);
      }

LABEL_15:
      LOBYTE(v84) = 1;
      *v9 = v24;
      *(v9 + 1) = v25;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      v9[32] = 2;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      v9[72] = 1;
      *(v9 + 10) = v23;
      *(v9 + 11) = v13;
      v13 = v77;
      swift_storeEnumTagMultiPayload();
      v28 = v78;
      v27 = *(v78 + 56);
      v27(v9, 0, 1, v13);
      a1 = v74;
      goto LABEL_16;
    }

    __break(1u);
  }

  v29._countAndFlagsBits = 38;
  v29._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v29))
  {
    v74 = a1;
    v23 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 0, &v98);
    v13 = *(v1 + 16);
    if (v13 >> 14 < v23 >> 14)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_13;
  }

  v63 = *(v1 + 16);
  v64._countAndFlagsBits = 82;
  v64._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v64))
  {
    Parser.lexNumberedReference(allowWholePatternRef:allowRecursionLevel:)(1, 0, &v98);
    v82 = v98;
    v83 = v99;
    v68 = *v100;
    v84 = *&v100[8];
    v85 = *&v100[24];
    v86 = *&v100[40];
    *&v87[0] = *&v100[56];
    if (v100[0] == 0xFF)
    {
      v28 = v78;
      v27 = *(v78 + 56);
      v27(v9, 1, 1, v13);
    }

    else
    {
      v69._countAndFlagsBits = 41;
      v69._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v69))
      {
        v98 = xmmword_1C0C7E3A0;
        v99 = 0uLL;
        v100[0] = 3;
        *&v97 = *(v1 + 16);
        *(&v97 + 1) = v97;
        Diagnostics.error(_:at:)(&v98, &v97);
      }

      v70 = v83;
      *v9 = v82;
      *(v9 + 1) = v70;
      *(v9 + 4) = v68;
      v71 = v85;
      *(v9 + 40) = v84;
      *(v9 + 56) = v71;
      *(v9 + 72) = v86;
      *(v9 + 11) = *&v87[0];
      swift_storeEnumTagMultiPayload();
      v28 = v78;
      v27 = *(v78 + 56);
      v27(v9, 0, 1, v13);
    }

    goto LABEL_16;
  }

  v65 = v13;
  v66 = *(v1 + 16);
  if (v66 >> 14 >= v63 >> 14)
  {
    v67._countAndFlagsBits = 41;
    v67._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v67))
    {
      v98 = xmmword_1C0C7E3A0;
      v99 = 0uLL;
      v100[0] = 3;
      *&v84 = *(v1 + 16);
      *(&v84 + 1) = v84;
      Diagnostics.error(_:at:)(&v98, &v84);
    }

    LOBYTE(v84) = 1;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = v63;
    *(v9 + 3) = v66;
    v9[32] = 0;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    v9[72] = 1;
    *(v9 + 10) = v63;
    *(v9 + 11) = v66;
    v13 = v65;
    swift_storeEnumTagMultiPayload();
    v28 = v78;
    v27 = *(v78 + 56);
    v27(v9, 0, 1, v65);
    goto LABEL_16;
  }

LABEL_58:
  __break(1u);
}

uint64_t closure #1 in Parser.shouldLexGroupLikeAtom()@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v4._countAndFlagsBits = 40;
  v4._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v4);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  v6._countAndFlagsBits = 63;
  v6._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v6))
  {
    v7 = a1[3];
    v36 = a1[2];
    v37 = v7;
    v38[0] = a1[4];
    v8 = v38[0];
    *(v38 + 9) = *(a1 + 73);
    v9 = a1[1];
    v35[0] = *a1;
    v35[1] = v9;
    *&v34[9] = *(v38 + 9);
    v32 = v36;
    v33 = v7;
    *v34 = v8;
    v30 = v35[0];
    v31 = v9;
    outlined init with copy of Parser(v35, &v56);
    v10._countAndFlagsBits = 80;
    v10._object = 0xE100000000000000;
    if (Parser.tryEat(_:)(v10))
    {
      specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in Parser.canLexGroupLikeReference());
      v12 = v11;
      swift_arrayDestroy();
      if (!v12)
      {
        v13 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #1 of closure #1 in Parser.canLexGroupLikeReference());
      v16 = v15;
      swift_arrayDestroy();
      if (!v16)
      {
        v53 = v32;
        v54 = v33;
        *v55 = *v34;
        *&v55[9] = *&v34[9];
        v51 = v30;
        v52 = v31;
        *&v50[9] = *&v34[9];
        v49 = v33;
        *v50 = *v34;
        v47 = v31;
        v48 = v32;
        v46 = v30;
        outlined init with copy of Parser(&v51, &v56);
        specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of Parser.canLexNumberedReference());

        swift_arrayDestroy();
        v56 = v46;
        v57 = v47;
        v58 = v48;
        v59 = v49;
        v60[0] = *v50;
        *(v60 + 9) = *&v50[9];
        outlined init with copy of Parser(&v56, &v39);
        v17 = String.subscript.getter();
        if ((v17 ^ v18) >> 14)
        {
          Substring.subscript.getter();

          outlined destroy of Parser(&v56);
          v13 = Character.isNumber.getter();
        }

        else
        {

          outlined destroy of Parser(&v56);
          v13 = 0;
        }

        v19 = *&v50[16];
        v20 = v50[24];
        v41 = v48;
        v42 = v49;
        v43[0] = *v50;
        *(v43 + 9) = *&v50[9];
        v39 = v46;
        v40 = v47;

        outlined destroy of Parser(&v39);
        v61 = v19;
        v62 = v20;
        v64.diags._rawValue = &v61;
        Diagnostics.appendNewFatalErrors(from:)(v64);

LABEL_14:
        v41 = v32;
        v42 = v33;
        v43[0] = *v34;
        *(v43 + 9) = *&v34[9];
        v39 = v30;
        v40 = v31;

        outlined destroy of Parser(&v39);
        *&v56 = *&v34[16];
        BYTE8(v56) = v34[24];
        v65.diags._rawValue = &v56;
        Diagnostics.appendNewFatalErrors(from:)(v65);

        if (v13)
        {
          goto LABEL_21;
        }

        v21._countAndFlagsBits = 67;
        v21._object = 0xE100000000000000;
        result = Parser.tryEat(_:)(v21);
        if (result)
        {
          goto LABEL_21;
        }

        v22._countAndFlagsBits = 123;
        v22._object = 0xE100000000000000;
        result = Parser.tryEat(_:)(v22);
        if (result)
        {
          goto LABEL_21;
        }

        v23 = a1[3];
        v58 = a1[2];
        v59 = v23;
        v60[0] = a1[4];
        v24 = v60[0];
        *(v60 + 9) = *(a1 + 73);
        v25 = a1[1];
        v56 = *a1;
        v57 = v25;
        *&v55[9] = *(v60 + 9);
        v53 = v58;
        v54 = v23;
        *v55 = v24;
        v51 = v56;
        v52 = v25;
        outlined init with copy of Parser(&v56, &v46);
        Parser.lexMatchingOptionSequence()(&v61);
        if (v63)
        {
          outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v61);
          v26._countAndFlagsBits = 41;
          v26._object = 0xE100000000000000;
          v27 = Parser.tryEat(_:)(v26);
        }

        else
        {
          v27 = 0;
        }

        v28 = *&v55[16];
        v29 = v55[24];
        v48 = v53;
        v49 = v54;
        *v50 = *v55;
        *&v50[9] = *&v55[9];
        v46 = v51;
        v47 = v52;

        outlined destroy of Parser(&v46);
        v44 = v28;
        v45 = v29;
        v66.diags._rawValue = &v44;
        Diagnostics.appendNewFatalErrors(from:)(v66);

        if (v27)
        {
          goto LABEL_21;
        }

LABEL_7:
        *a2 = 0;
        return result;
      }
    }

    v13 = 1;
    goto LABEL_14;
  }

  v14._countAndFlagsBits = 42;
  v14._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v14);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:
  *a2 = 1;
  return result;
}

void closure #1 in Parser.expectEscaped()(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v72 = &v66 - v6;
  v74 = type metadata accessor for AST.Atom.Kind(0);
  v71 = *(v74 - 8);
  v7 = *(v71 + 64);
  v9 = MEMORY[0x1EEE9AC00](v74, v8);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v66 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v68 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
  v73 = *(v21 - 8);
  v22 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v66 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v66 - v39;
  v41 = *(a1 + 32);
  v42._countAndFlagsBits = 99;
  v42._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v42) && (specialized Parser.tryEat<A>(sequence:)(11587, 0xE200000000000000) & 1) == 0)
  {
    if (specialized Parser.tryEat<A>(sequence:)(0x2D435C2D4DLL, 0xE500000000000000))
    {
      Parser.expectASCII()(&v82);
      v45 = *(&v82 + 1);
      if (*(&v82 + 1))
      {
        v46 = v75;
        *v75 = v82;
        v46[1] = v45;
      }

      goto LABEL_11;
    }

    if (specialized Parser.tryEat<A>(sequence:)(11597, 0xE200000000000000))
    {
      Parser.expectASCII()(&v82);
      v47 = *(&v82 + 1);
      if (*(&v82 + 1))
      {
        v48 = v75;
        *v75 = v82;
        v48[1] = v47;
      }

      goto LABEL_11;
    }

    Parser.lexNamedCharacter()(v34);
    v67 = *(v36 + 48);
    if (v67(v34, 1, v35) != 1)
    {
      outlined init with take of Source.Located<AST.Atom.Kind>?(v34, v40, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
      outlined init with take of AST.Atom.Kind(v40, v75, type metadata accessor for AST.Atom.Kind);
      return;
    }

    outlined destroy of _ASTParent?(v34, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
    Parser.lexCharacterProperty()(v20);
    if ((*(v73 + 48))(v20, 1, v21) != 1)
    {
      outlined init with take of Source.Located<AST.Atom.Kind>?(v20, v25, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGMR);
      outlined init with take of AST.Atom.Kind(v25, v75, type metadata accessor for AST.Atom.CharacterProperty);
      goto LABEL_37;
    }

    outlined destroy of _ASTParent?(v20, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV17CharacterPropertyVGSgMR);
    if ((v41 & 1) == 0)
    {
      Parser.lexEscapedReference()(v31);
      if (v67(v31, 1, v35) != 1)
      {
        v59 = v69;
        outlined init with copy of AST.CustomCharacterClass.Member(v31, v69, type metadata accessor for AST.Atom.Kind);
        outlined destroy of _ASTParent?(v31, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
        v57 = v59;
        v58 = &v86[16];
        goto LABEL_26;
      }

      outlined destroy of _ASTParent?(v31, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
    }

    v49 = v72;
    Parser.lexUnicodeScalar()(v72);
    if ((*(v71 + 48))(v49, 1, v74) == 1)
    {
      outlined destroy of _ASTParent?(v49, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
      v50 = a1[1];
      v82 = *a1;
      v83 = v50;
      v51 = a1[3];
      v52 = a1[4];
      v84 = a1[2];
      v85 = v51;
      v53 = *(a1 + 2);
      *v86 = v52;
      *&v86[9] = *(a1 + 73);
      v54 = v83;
      outlined init with copy of Parser(&v82, &v77);
      v55 = String.subscript.getter();
      if ((v55 ^ v56) >> 14)
      {
        v61 = Substring.subscript.getter();
        v63 = v62;

        outlined destroy of Parser(&v82);
        Parser.advance(_:)(1);
        v54 = *(a1 + 2);
        if (v54 >> 14 < v53 >> 14)
        {
          __break(1u);
          return;
        }

        if (v63)
        {
          static AST.Atom.EscapedBuiltin.fromCharacter(_:inCustomCharacterClass:)(v61, v63, v41, &v77);
          v64 = v77;
          if (v77 == 31)
          {

            if (Character.asciiValue.getter() & 0x100) == 0 && ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter()) || (Character.asciiValue.getter() & 0x100) != 0 && (Character.isWhitespace.getter() & 1) == 0)
            {
              v77 = v61;
              v78 = v63;
              v80 = 0;
              v79 = 0;
              v81 = 10;
              *&v76 = v53;
              *(&v76 + 1) = v54;

              Diagnostics.error(_:at:)(&v77, &v76);
              swift_bridgeObjectRelease_n();
            }

            else
            {
            }

            v65 = v75;
            *v75 = v61;
            v65[1] = v63;
          }

          else
          {

            *v75 = v64;
          }

          goto LABEL_37;
        }
      }

      else
      {

        outlined destroy of Parser(&v82);
      }

      v77 = 2;
      v78 = 0;
      v80 = 0;
      v79 = 0;
      v81 = 36;
      *&v76 = v54;
      *(&v76 + 1) = v54;
      Diagnostics.error(_:at:)(&v77, &v76);
LABEL_37:
      swift_storeEnumTagMultiPayload();
      return;
    }

    v57 = v49;
    v58 = &v87;
LABEL_26:
    v60 = *(v58 - 32);
    outlined init with take of AST.Atom.Kind(v57, v60, type metadata accessor for AST.Atom.Kind);
    outlined init with take of AST.Atom.Kind(v60, v75, type metadata accessor for AST.Atom.Kind);
    return;
  }

  Parser.expectASCII()(&v82);
  v43 = *(&v82 + 1);
  if (*(&v82 + 1))
  {
    v44 = v75;
    *v75 = v82;
    v44[1] = v43;
  }

LABEL_11:

  swift_storeEnumTagMultiPayload();
}

void Parser.lexPCRECallout()(_OWORD *a1@<X8>)
{
  v2 = v1;
  if ((specialized Parser.tryEat<A>(sequence:)(4407080, 0xE300000000000000) & 1) == 0)
  {
    _s12_RegexParser3ASTV4AtomV7CalloutOSgWOi0_(&v121);
LABEL_34:
    v49 = v127;
    a1[6] = v126;
    a1[7] = v49;
    a1[8] = v128[0];
    *(a1 + 137) = *(v128 + 9);
    v50 = v124;
    a1[2] = v123;
    a1[3] = v50;
    v51 = *&v125[16];
    a1[4] = *v125;
    a1[5] = v51;
    v52 = v122;
    *a1 = v121;
    a1[1] = v52;
    return;
  }

  v4 = *(v1 + 16);
  Parser.lexNumber(_:)(1, &v137);
  if ((v140 & 1) == 0)
  {
    v26 = 0;
    v27 = v139;
    v20 = v137;
    v21 = v138 & 1;
LABEL_30:
    v47 = *(v2 + 16);
    if (v47 >> 14 >= v4 >> 14)
    {
      v111 = v27;
      v48._countAndFlagsBits = 41;
      v48._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v48))
      {
        v130 = xmmword_1C0C7E3A0;
        v131 = 0uLL;
        v132[0] = 3;
        *&v121 = *(v2 + 16);
        *(&v121 + 1) = v121;
        Diagnostics.error(_:at:)(&v130, &v121);
      }

      *&v113 = v20;
      *(&v113 + 1) = v21;
      v114 = v111;
      LOBYTE(v115) = v26;
      *(&v115 + 1) = v4;
      *v116 = v47;
      _s12_RegexParser3ASTV4AtomV7CalloutOWOi_(&v113);
      v126 = v118;
      v127 = v119;
      v128[0] = v120[0];
      *(v128 + 9) = *(v120 + 9);
      v123 = v115;
      v124 = *v116;
      *v125 = *&v116[16];
      *&v125[16] = v117;
      v121 = v113;
      v122 = v114;
      AST.root.modify(&v121);
      goto LABEL_34;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v5 = *(v1 + 16);
  v121 = *v1;
  v122 = v5;
  v6 = *(v1 + 48);
  v123 = *(v1 + 32);
  v124 = v6;
  *v125 = *(v1 + 64);
  *&v125[9] = *(v1 + 73);
  v7 = v122.i64[0];
  outlined init with copy of Parser(&v121, &v113);
  v8 = String.subscript.getter();
  if ((v8 ^ v9) < 0x4000)
  {

    outlined destroy of Parser(&v121);
    goto LABEL_5;
  }

  v28 = Substring.subscript.getter();
  v30 = v29;

  outlined destroy of Parser(&v121);
  if (v28 == 41 && v30 == 0xE100000000000000)
  {

LABEL_19:
    v26 = 0;
    v20 = 0;
    v21 = 0;
    v27 = vdupq_n_s64(v7);
    goto LABEL_30;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_19;
  }

LABEL_5:
  v10 = specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in Parser.lexPCRECallout());
  v12 = v11;
  swift_arrayDestroy();
  if (!v12)
  {
    v135 = 0;
    v136 = 0xE000000000000000;
    v32 = *v2;
    v33 = *(v2 + 8);
    v35 = *(v2 + 16);
    v34 = *(v2 + 24);
    v36 = String.subscript.getter();
    v38 = v37;

    v39 = v35;
    v101 = v35;
    if ((v36 ^ v38) < 0x4000)
    {
LABEL_21:
      if (v39 >> 14 < v101 >> 14)
      {
        goto LABEL_73;
      }

      v20 = v135;
      v21 = v136;
      v40 = *v2;
      v41 = *(v2 + 8);
      v42 = *(v2 + 24);
      v43 = String.subscript.getter();
      v45 = v44;

      if ((v43 ^ v45) < 0x4000)
      {
        v46 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v46 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (!v46)
        {
          v113 = xmmword_1C0C7E3A0;
          v114 = 0uLL;
          LOBYTE(v115) = 3;
          *&v130 = v35;
          *(&v130 + 1) = v35;
          Diagnostics.error(_:at:)(&v113, &v130);
          goto LABEL_29;
        }
      }

      *&v113 = 4407080;
      *(&v113 + 1) = 0xE300000000000000;

      MEMORY[0x1C68E0BF0](v20, v21);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      v114 = 0uLL;
      LOBYTE(v115) = 15;
      *&v130 = v101;
      *(&v130 + 1) = v39;
      v24 = &v113;
      v25 = &v130;
      goto LABEL_27;
    }

    v54 = *v2;
    v53 = *(v2 + 8);
    v55 = *(v2 + 16);
    v56 = *(v2 + 24);
    v57 = *(v2 + 48);
    v58 = *(v2 + 80);

    v59 = String.subscript.getter();
    if ((v59 ^ v60) >> 14)
    {
      v97 = Substring.subscript.getter();
      v99 = v98;

      if (v97 == 41 && v99 == 0xE100000000000000)
      {

        v35 = v101;
        v39 = v101;
        goto LABEL_21;
      }

      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v35 = v101;
      v39 = v101;
      if (v100)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v61 = *v2;
    v110 = *v2;
    v112 = *(v2 + 8);
    v105 = *(v2 + 48);
    v106 = *(v2 + 40);
    v104 = *(v2 + 56);
    v103 = *(v2 + 72);
    v39 = v101;
    v107 = *(v2 + 32);
    v108 = *(v2 + 88);
    v102 = v4;
    while (1)
    {
      while (1)
      {
        v35 = *(v2 + 16);
        v62 = *(v2 + 24);
        v63 = *(v2 + 80);
        *&v113 = v61;
        *(&v113 + 1) = v112;
        v114.i64[0] = v35;
        v114.i64[1] = v62;
        LOBYTE(v115) = v107;
        *(&v115 + 1) = v106;
        *v116 = v105;
        *&v116[8] = v104;
        v116[24] = v103;
        *&v117 = v63;
        BYTE8(v117) = v108;
        outlined init with copy of Parser(&v113, &v130);
        v64 = String.subscript.getter();
        if (!((v64 ^ v65) >> 14))
        {

          outlined destroy of Parser(&v113);
          v4 = v102;
          goto LABEL_21;
        }

        v109 = Substring.subscript.getter();
        v67 = v66;

        outlined destroy of Parser(&v113);
        String.subscript.getter();
        v39 = Substring.index(_:offsetBy:limitedBy:)();
        v69 = v68;

        if (v69)
        {
          strcpy(v129, "UNREACHABLE: ");
          HIWORD(v129[1]) = -4864;
          MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86F20);
          LOBYTE(v130) = 0;
          *(&v130 + 1) = v129[0];
          *&v131 = v129[1];
          *(&v131 + 1) = v35;
          *v132 = v35;
          memset(&v132[8], 0, 32);
          v132[40] = -1;
          if (v108)
          {
            outlined destroy of Diagnostic(&v130);
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
            }

            v71 = *(v63 + 2);
            v70 = *(v63 + 3);
            if (v71 >= v70 >> 1)
            {
              v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v63);
            }

            *(v63 + 2) = v71 + 1;
            v72 = &v63[80 * v71];
            *(v72 + 2) = v130;
            v73 = v131;
            v74 = *v132;
            v75 = *&v132[16];
            *(v72 + 89) = *&v132[25];
            *(v72 + 4) = v74;
            *(v72 + 5) = v75;
            *(v72 + 3) = v73;
            *(v2 + 80) = v63;
          }

          String.subscript.getter();
          v76 = Substring.distance(from:to:)();

          if (v76 < 1 || (String.subscript.getter(), v39 = Substring.index(_:offsetBy:limitedBy:)(), v78 = v77, , (v78 & 1) != 0))
          {
            v39 = v35;
          }

          else
          {
            if (v62 >> 14 < v39 >> 14)
            {
              goto LABEL_74;
            }

            *(v2 + 16) = v39;
            *(v2 + 24) = v62;
          }
        }

        else
        {
          if (v62 >> 14 < v39 >> 14)
          {
            goto LABEL_71;
          }

          *(v2 + 16) = v39;
          *(v2 + 24) = v62;
        }

        MEMORY[0x1C68E0BE0](v109, v67);

        v79 = String.subscript.getter();
        v81 = v80;

        if ((v79 ^ v81) < 0x4000)
        {
          v35 = v39;
          v4 = v102;
          goto LABEL_21;
        }

        v82 = *(v2 + 8);
        v83 = *(v2 + 16);
        v84 = *(v2 + 24);
        v85 = *(v2 + 32);
        v86 = *(v2 + 40);
        v87 = *(v2 + 48);
        v88 = *(v2 + 72);
        v89 = *(v2 + 80);
        v90 = *(v2 + 88);
        *&v130 = *v2;
        *(&v130 + 1) = v82;
        *&v131 = v83;
        *(&v131 + 1) = v84;
        v132[0] = v85;
        *&v132[8] = v86;
        *&v132[16] = v87;
        *&v132[24] = *(v2 + 56);
        v132[40] = v88;
        v133 = v89;
        v134 = v90;
        outlined init with copy of Parser(&v130, v129);
        v91 = String.subscript.getter();
        v4 = v102;
        if ((v91 ^ v92) >> 14)
        {
          break;
        }

        outlined destroy of Parser(&v130);
        v61 = v110;
      }

      v93 = Substring.subscript.getter();
      v95 = v94;

      outlined destroy of Parser(&v130);
      if (v93 == 41 && v95 == 0xE100000000000000)
      {
        break;
      }

      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v35 = v39;
      v61 = v110;
      if (v96)
      {
        goto LABEL_21;
      }
    }

    v35 = v39;
    goto LABEL_21;
  }

  v13 = Parser.getClosingDelimiter(for:)(v10, v12);
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  v17 = String.init(repeating:count:)(v16, 1);
  v18 = *(v2 + 16);

  specialized Parser.lexUntil(_:)(v2, v17._countAndFlagsBits, v17._object, v13, v15, 0, &v113);
  v19 = *(v2 + 16);
  if (v19 >> 14 >= v18 >> 14)
  {
    v21 = *(&v113 + 1);
    v20 = v113;
    v22 = HIBYTE(*(&v113 + 1)) & 0xFLL;
    if ((*(&v113 + 1) & 0x2000000000000000) == 0)
    {
      v22 = v113 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v113 = 1uLL;
      v114 = 0uLL;
      LOBYTE(v115) = 36;
      *&v130 = v18;
      *(&v130 + 1) = v19;
      Diagnostics.error(_:at:)(&v113, &v130);
    }

    if (specialized Parser.tryEat<A>(sequence:)(v17._countAndFlagsBits, v17._object))
    {
      goto LABEL_28;
    }

    v130 = v17;
    *&v130 = String.init<A>(_:)();
    *(&v130 + 1) = v23;
    v131 = 0uLL;
    v132[0] = 3;
    v129[0] = *(v2 + 16);
    v129[1] = v129[0];
    v24 = &v130;
    v25 = v129;
LABEL_27:
    Diagnostics.error(_:at:)(v24, v25);
LABEL_28:

LABEL_29:
    v27 = 0uLL;
    v26 = 1;
    goto LABEL_30;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

void Parser.expectOnigurumaCalloutArgList(leftBrace:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v75 = a1[1];
  v76 = *a1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = String.subscript.getter();
  if (v9 >> 14 >= v8 >> 14)
  {
    v78 = MEMORY[0x1E69E7CC0];
    v79 = v3;
    while (1)
    {
      v80 = v7;
      v12 = Substring.subscript.getter();
      v14 = v13;

      if (v12 >> 14 == v14 >> 14)
      {
        v15 = v14 >> 14;
      }

      else
      {
        v15 = v12 >> 14;
        while (1)
        {
          v17 = Substring.subscript.getter();
          v18 = v16;
          if (v17 == 44 && v16 == 0xE100000000000000)
          {
            break;
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v17 == 125 && v18 == 0xE100000000000000)
          {
            break;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_17;
          }

          v15 = Substring.index(after:)() >> 14;
          if (v15 == v14 >> 14)
          {
            v15 = v14 >> 14;
            goto LABEL_17;
          }
        }

LABEL_17:
        v3 = v79;
      }

      if (v15 < v12 >> 14)
      {
        goto LABEL_65;
      }

      v20 = Substring.subscript.getter();
      v22 = v21;
      v24 = v23;
      v26 = v25;

      if (!((v20 ^ v22) >> 14))
      {
        break;
      }

      v28 = v80;
      if (Substring.distance(from:to:)() >= 1)
      {
        String.subscript.getter();
        v29 = Substring.index(_:offsetBy:limitedBy:)();
        v31 = v30;

        v28 = v80;
        if ((v31 & 1) == 0)
        {
          if (v6 >> 14 < v29 >> 14)
          {
            goto LABEL_68;
          }

          v79[2] = v29;
          v79[3] = v6;
          v28 = v29;
        }
      }

      v32 = MEMORY[0x1C68E0B20](v20, v22, v24, v26);
      v34 = v33;

      if (v28 >> 14 < v80 >> 14)
      {
        goto LABEL_66;
      }

      if (!v34)
      {
        v27 = v28;
        v3 = v79;
        goto LABEL_33;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMR);
      }

      v36 = *(v78 + 2);
      v35 = *(v78 + 3);
      if (v36 >= v35 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v78, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser6SourceV7LocatedVy_SSGGMR);
      }

      *(v78 + 2) = v36 + 1;
      v37 = &v78[32 * v36];
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
      *(v37 + 6) = v80;
      *(v37 + 7) = v28;
      v3 = v79;
LABEL_34:
      v38 = String.subscript.getter();
      v40 = v39;

      if ((v38 ^ v40) < 0x4000)
      {
        goto LABEL_60;
      }

      v41 = *(v3 + 1);
      v89 = *v3;
      v90 = v41;
      v42 = *(v3 + 3);
      v91 = *(v3 + 2);
      v92 = v42;
      v93[0] = *(v3 + 4);
      *(v93 + 9) = *(v3 + 73);
      v28 = v90;
      outlined init with copy of Parser(&v89, &v84);
      v43 = String.subscript.getter();
      if ((v43 ^ v44) >> 14)
      {
        v45 = Substring.subscript.getter();
        v47 = v46;

        outlined destroy of Parser(&v89);
        if (v45 == 125 && v47 == 0xE100000000000000)
        {

LABEL_60:
          v73._countAndFlagsBits = 125;
          v73._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v73))
          {
            v89 = xmmword_1C0C7E390;
            v90 = 0uLL;
            LOBYTE(v91) = 3;
            *&v84 = v3[2];
            *(&v84 + 1) = v84;
            Diagnostics.error(_:at:)(&v89, &v84);
          }

          v74 = v3[2];
          if (v74 >> 14 >= v28 >> 14)
          {
            *a2 = v76;
            a2[1] = v75;
            a2[2] = v78;
            a2[3] = v28;
            a2[4] = v74;
            return;
          }

          goto LABEL_69;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v48)
        {
          goto LABEL_60;
        }
      }

      else
      {

        outlined destroy of Parser(&v89);
      }

      v49 = *(v3 + 1);
      v84 = *v3;
      v85 = v49;
      v50 = *(v3 + 3);
      v86 = *(v3 + 2);
      v87 = v50;
      *v88 = *(v3 + 4);
      *&v88[9] = *(v3 + 73);
      v51 = v85;
      outlined init with copy of Parser(&v84, &v81);
      v52 = String.subscript.getter();
      if (!((v52 ^ v53) >> 14))
      {

        outlined destroy of Parser(&v84);
LABEL_42:
        v54 = *&v88[16];
        v55 = v88[24];
        MEMORY[0x1C68E0BF0](44, 0xE100000000000000);
        MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
        LOBYTE(v81) = 1;
        *(&v81 + 1) = 0x6465746365707865;
        *&v82 = 0xEA00000000002720;
        *(&v82 + 1) = v51;
        *v83 = v51;
        *&v83[8] = xmmword_1C0C7E3D0;
        *&v83[24] = 0;
        *&v83[32] = 0;
        v83[40] = 3;
        if (v55 == 1)
        {
          outlined destroy of Diagnostic(&v81);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
          }

          v57 = *(v54 + 2);
          v56 = *(v54 + 3);
          if (v57 >= v56 >> 1)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v54);
          }

          *(v54 + 2) = v57 + 1;
          v58 = &v54[80 * v57];
          *(v58 + 2) = v81;
          v59 = v82;
          v60 = *v83;
          v61 = *&v83[16];
          *(v58 + 89) = *&v83[25];
          *(v58 + 4) = v60;
          *(v58 + 5) = v61;
          *(v58 + 3) = v59;
          v3[10] = v54;
        }

        goto LABEL_4;
      }

      v62 = Substring.subscript.getter();
      v64 = v63;

      outlined destroy of Parser(&v84);
      if (v62 == 44 && v64 == 0xE100000000000000)
      {
      }

      else
      {
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v65 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      String.subscript.getter();
      v66 = Substring.index(_:offsetBy:limitedBy:)();
      v68 = v67;

      if (v68)
      {
        v69._object = 0x80000001C0C86F20;
        v69._countAndFlagsBits = 0xD000000000000015;
        Parser.unreachable(_:)(v69);
        String.subscript.getter();
        v70 = Substring.distance(from:to:)();

        if (v70 < 1)
        {
          goto LABEL_4;
        }

        String.subscript.getter();
        v66 = Substring.index(_:offsetBy:limitedBy:)();
        v72 = v71;

        if (v72)
        {
          goto LABEL_4;
        }

        if (*(&v51 + 1) >> 14 < v66 >> 14)
        {
          goto LABEL_70;
        }
      }

      else if (*(&v51 + 1) >> 14 < v66 >> 14)
      {
        goto LABEL_67;
      }

      v3[2] = v66;
      v3[3] = *(&v51 + 1);
LABEL_4:
      v7 = v3[2];
      v6 = v3[3];
      v10 = String.subscript.getter();
      if (v11 >> 14 < v10 >> 14)
      {
        goto LABEL_64;
      }
    }

    v27 = v80;
    v28 = v80;
LABEL_33:
    v94[0] = 15;
    memset(&v94[1], 0, 24);
    v95 = 36;
    *&v89 = v27;
    *(&v89 + 1) = v27;
    Diagnostics.error(_:at:)(v94, &v89);
    goto LABEL_34;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}