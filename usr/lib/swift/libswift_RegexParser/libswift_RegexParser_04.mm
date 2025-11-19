void Parser.lexOnigurumaCalloutTag()(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4._countAndFlagsBits = 91;
  v4._object = 0xE100000000000000;
  if (Parser.tryEat(_:)(v4))
  {
    v5 = v1[2];
    if (v5 >> 14 < v3 >> 14)
    {
      __break(1u);
    }

    else
    {
      closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 93, 0xE100000000000000, 2u, &v11);
      v6 = v1[2];
      if (v6 >> 14 >= v5 >> 14)
      {
        v7 = v11;
        v8._countAndFlagsBits = 93;
        v8._object = 0xE100000000000000;
        if (!Parser.tryEat(_:)(v8))
        {
          v11 = xmmword_1C0C7E3E0;
          v12 = 0;
          v13 = 0;
          v14 = 3;
          *&v10 = v1[2];
          *(&v10 + 1) = v10;
          Diagnostics.error(_:at:)(&v11, &v10);
        }

        v9 = v1[2];
        if (v6 >> 14 <= v9 >> 14)
        {
          *a1 = v3;
          *(a1 + 8) = v5;
          *(a1 + 16) = v7;
          *(a1 + 32) = v5;
          *(a1 + 40) = v6;
          *(a1 + 48) = v6;
          *(a1 + 56) = v9;
          return;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

void Parser.lexOnigurumaNamedCallout()(__int128 *a1@<X8>)
{
  v2 = v1;
  *&v92[9] = *(v1 + 73);
  v4 = *(v1 + 48);
  v90 = *(v1 + 32);
  v91 = v4;
  *v92 = *(v1 + 64);
  v5 = *(v1 + 16);
  v89[0] = *v1;
  v89[1] = v5;
  v84 = v89[0];
  v85 = v5;
  v86 = v90;
  v87 = v4;
  v88 = *v92;
  v6 = *&v92[16];
  v7 = v92[24];
  outlined init with copy of Parser(v89, &v102);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    v54 = v6;
    v8 = *(v1 + 16);
    closure #1 in Parser.expectIdentifier(_:endingWith:eatEnding:)(v1, 41, 0xE100000000000000, 1u, &v102);
    v9 = *(v1 + 16);
    if (v9 >> 14 < v8 >> 14)
    {
      __break(1u);
    }

    else
    {
      v10 = v102;
      Parser.lexOnigurumaCalloutTag()(&v102);
      v52 = v103;
      v53 = v102;
      v50 = v105;
      v51 = v104;
      v11 = *(v1 + 16);
      v12._countAndFlagsBits = 123;
      v12._object = 0xE100000000000000;
      v55 = v7;
      if (!Parser.tryEat(_:)(v12))
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        goto LABEL_8;
      }

      v13 = *(v1 + 16);
      if (v13 >> 14 >= v11 >> 14)
      {
        *&v93 = v11;
        *(&v93 + 1) = v13;
        Parser.expectOnigurumaCalloutArgList(leftBrace:)(&v93, &v102);
        v15 = *(&v102 + 1);
        v14 = v102;
        v17 = *(&v103 + 1);
        v16 = v103;
        v18 = v104;
LABEL_8:
        v19._countAndFlagsBits = 41;
        v19._object = 0xE100000000000000;
        if (!Parser.tryEat(_:)(v19))
        {
          v70 = xmmword_1C0C7E3A0;
          v71 = 0uLL;
          LOBYTE(v72) = 3;
          *&v102 = *(v1 + 16);
          *(&v102 + 1) = v102;
          Diagnostics.error(_:at:)(&v70, &v102);
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v61);

        v93 = v10;
        *&v94 = v8;
        *(&v94 + 1) = v9;
        v95 = v53;
        v96 = v52;
        v97 = v51;
        v98 = v50;
        *&v99 = v14;
        *(&v99 + 1) = v15;
        *&v100 = v16;
        *(&v100 + 1) = v17;
        *&v101[0] = v18;
        _s12_RegexParser3ASTV4AtomV7CalloutOWOi0_(&v93);
        v108 = v99;
        v109 = v100;
        v110[0] = v101[0];
        *(v110 + 9) = *(v101 + 9);
        v104 = v95;
        v105 = v96;
        v106 = v97;
        v107 = v98;
        v102 = v93;
        v103 = v94;
        AST.root.modify(&v102);
        v81 = v108;
        v82 = v109;
        v83[0] = v110[0];
        *(v83 + 9) = *(v110 + 9);
        v77 = v104;
        v78 = v105;
        v79 = v106;
        v80 = v107;
        v75 = v102;
        v76 = v103;
        v7 = v55;
        v6 = v54;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  _s12_RegexParser3ASTV4AtomV7CalloutOSgWOi0_(&v75);
LABEL_11:
  v99 = v81;
  v100 = v82;
  v101[0] = v83[0];
  *(v101 + 9) = *(v83 + 9);
  v95 = v77;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v93 = v75;
  v94 = v76;
  v108 = v81;
  v109 = v82;
  v110[0] = v83[0];
  *(v110 + 9) = *(v83 + 9);
  v104 = v77;
  v105 = v78;
  v106 = v79;
  v107 = v80;
  v102 = v75;
  v103 = v76;
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v102) != 1)
  {
    v63 = v86;
    v64 = v87;
    v65 = v88;
    v61 = v84;
    v62 = v85;
    *&v66 = v6;
    BYTE8(v66) = v7;
    outlined destroy of Parser(&v61);
    v25 = v82;
    a1[6] = v81;
    a1[7] = v25;
    a1[8] = v83[0];
    *(a1 + 137) = *(v83 + 9);
    v26 = v78;
    a1[2] = v77;
    a1[3] = v26;
    v27 = v80;
    a1[4] = v79;
    a1[5] = v27;
    v28 = v76;
    *a1 = v75;
    a1[1] = v28;
    AST.root.modify(a1);
    return;
  }

  v20 = *&v92[16];
  v21 = v92[24];
  v67 = v81;
  v68 = v82;
  v69[0] = v83[0];
  *(v69 + 9) = *(v83 + 9);
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v61 = v75;
  v62 = v76;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v61);
  v22 = *(v2 + 80);
  v23 = *(v2 + 48);
  v72 = *(v2 + 32);
  v73 = v23;
  v74[0] = *(v2 + 64);
  *(v74 + 9) = *(v2 + 73);
  v24 = *(v2 + 16);
  v70 = *v2;
  v71 = v24;

  outlined destroy of Parser(&v70);
  if (v21 == 1)
  {

LABEL_34:
    v44 = v87;
    *(v2 + 32) = v86;
    *(v2 + 48) = v44;
    *(v2 + 64) = v88;
    v45 = v85;
    *v2 = v84;
    *(v2 + 16) = v45;
    *(v2 + 80) = v6;
    *(v2 + 88) = v7;
    *(a1 + 137) = *(v101 + 9);
    v46 = v101[0];
    a1[7] = v100;
    a1[8] = v46;
    v47 = v99;
    a1[5] = v98;
    a1[6] = v47;
    v48 = v97;
    a1[3] = v96;
    a1[4] = v48;
    v49 = v95;
    a1[1] = v94;
    a1[2] = v49;
    *a1 = v93;
    return;
  }

  v29 = *(v20 + 2);
  v30 = *(v22 + 16);
  if (v30 >= v29)
  {
    v31 = *(v20 + 2);
  }

  else
  {
    v31 = *(v22 + 16);
  }

  if (v29)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 == v30)
  {
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  if (v32 < v30)
  {

    v33 = ~v32 + v30;
    for (i = 80 * v32 + 32; ; i += 80)
    {
      v57 = *(v22 + i);
      v35 = *(v22 + i + 16);
      v36 = *(v22 + i + 32);
      v37 = *(v22 + i + 48);
      *(v60 + 9) = *(v22 + i + 57);
      v59 = v36;
      v60[0] = v37;
      v58 = v35;
      if (!v57)
      {
        outlined init with copy of Diagnostic(&v57, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v39 = *(v20 + 2);
        v38 = *(v20 + 3);
        if (v39 >= v38 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v20);
        }

        *(v20 + 2) = v39 + 1;
        v40 = &v20[80 * v39];
        *(v40 + 2) = v57;
        v41 = v58;
        v42 = v59;
        v43 = v60[0];
        *(v40 + 89) = *(v60 + 9);
        *(v40 + 4) = v42;
        *(v40 + 5) = v43;
        *(v40 + 3) = v41;
        v6 = v20;
      }

      if (!v33)
      {
        break;
      }

      --v33;
    }

    swift_unknownObjectRelease();

    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

uint64_t Parser.lexOnigurumaCalloutOfContents()@<X0>(Swift::String *a1@<X8>)
{
  v2 = v1;
  *&v105[9] = *(v1 + 73);
  v4 = v1[3];
  v103 = v1[2];
  v104 = v4;
  *v105 = v1[4];
  v5 = v1[1];
  v102[0] = *v1;
  v102[1] = v5;
  v97 = v102[0];
  v98 = v5;
  v99 = v103;
  v100 = v4;
  v101 = *v105;
  v6 = *&v105[16];
  v7 = v105[24];
  outlined init with copy of Parser(v102, &v115);
  if (specialized Parser.tryEat<A>(sequence:)(16168, 0xE200000000000000))
  {
    specialized Parser.tryEatPrefix(maxLength:_:)(0, 1, v1, specialized Source.peekPrefix(maxLength:_:), &v115._countAndFlagsBits);
    if (v115._object)
    {
      v63 = v7;
      object = v116._object;
      countAndFlagsBits = v116._countAndFlagsBits;

      v9 = String.count.getter();

      v10._countAndFlagsBits = 125;
      v10._object = 0xE100000000000000;
      v11 = String.init(repeating:count:)(v10, v9);
      v12 = v2[1]._countAndFlagsBits;

      result = specialized Parser.lexUntil(_:)(&v2->_countAndFlagsBits, v11._countAndFlagsBits, v11._object, 125, 0xE100000000000000, 0, &v115);
      v14 = v2[1]._countAndFlagsBits;
      if (v14 >> 14 < v12 >> 14)
      {
        __break(1u);
      }

      else
      {
        v61 = object;
        v15 = v115._object;
        v16 = (v115._object >> 56) & 0xF;
        v60 = v115._countAndFlagsBits;
        if ((v115._object & 0x2000000000000000) == 0)
        {
          v16 = v115._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (!v16)
        {
          v83 = 1uLL;
          v84 = 0;
          LOBYTE(v85._countAndFlagsBits) = 36;
          v115._countAndFlagsBits = v12;
          v115._object = v14;
          Diagnostics.error(_:at:)(&v83, &v115._countAndFlagsBits);
        }

        if ((specialized Parser.tryEat<A>(sequence:)(v11._countAndFlagsBits, v11._object) & 1) == 0)
        {
          v115 = v11;
          *&v70 = String.init<A>(_:)();
          *(&v70 + 1) = v17;
          v71 = 0uLL;
          LOBYTE(v72) = 3;
          v115._countAndFlagsBits = v2[1]._countAndFlagsBits;
          v115._object = v115._countAndFlagsBits;
          Diagnostics.error(_:at:)(&v70, &v115._countAndFlagsBits);
        }

        v18 = v2[1]._countAndFlagsBits;
        if (v14 >> 14 <= v18 >> 14)
        {
          Parser.lexOnigurumaCalloutTag()(&v115);
          v58 = v116;
          v59 = v115;
          v56 = v118;
          v57 = v117;
          v19 = v2[1]._countAndFlagsBits;
          v20._countAndFlagsBits = 62;
          v20._object = 0xE100000000000000;
          result = Parser.tryEat(_:)(v20);
          v64 = v6;
          if (result)
          {
            v21 = 0;
          }

          else
          {
            v22._countAndFlagsBits = 60;
            v22._object = 0xE100000000000000;
            result = Parser.tryEat(_:)(v22);
            if (result)
            {
              v21 = 1;
            }

            else
            {
              v23._countAndFlagsBits = 88;
              v23._object = 0xE100000000000000;
              result = Parser.tryEat(_:)(v23);
              if (result)
              {
                v21 = 2;
              }

              else
              {
                v21 = 0;
              }
            }
          }

          v24 = v2[1]._countAndFlagsBits;
          if (v24 >> 14 >= v19 >> 14)
          {
            v25._countAndFlagsBits = 41;
            v25._object = 0xE100000000000000;
            if (!Parser.tryEat(_:)(v25))
            {
              v66 = xmmword_1C0C7E3A0;
              v67 = 0;
              v68 = 0;
              v69 = 3;
              v115._countAndFlagsBits = v2[1]._countAndFlagsBits;
              v115._object = v115._countAndFlagsBits;
              Diagnostics.error(_:at:)(&v66, &v115._countAndFlagsBits);
            }

            v76 = 0;
            v77 = 0;
            v74 = 0;
            v75 = 0;
            outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v74);
            v106._countAndFlagsBits = countAndFlagsBits;
            v106._object = v61;
            v107._countAndFlagsBits = v60;
            v107._object = v15;
            v108._countAndFlagsBits = v12;
            v108._object = v14;
            v109._countAndFlagsBits = v14;
            v109._object = v18;
            v110 = v59;
            v111 = v58;
            v112 = v57;
            v113 = v56;
            v114[0] = v21;
            *&v114[8] = v19;
            *&v114[16] = v24;
            _s12_RegexParser3ASTV4AtomV7CalloutOWOi1_(&v106);
            v121 = v112;
            v122 = v113;
            v123[0] = *v114;
            *(v123 + 9) = *&v114[9];
            v117 = v108;
            v118 = v109;
            v119 = v110;
            v120 = v111;
            v115 = v106;
            v116 = v107;
            AST.root.modify(&v115);
            v94 = v121;
            v95 = v122;
            v96[0] = v123[0];
            *(v96 + 9) = *(v123 + 9);
            v90 = v117;
            v91 = v118;
            v92 = v119;
            v93 = v120;
            v88 = v115;
            v89 = v116;
            v7 = v63;
            v6 = v64;
            goto LABEL_23;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      __break(1u);
      goto LABEL_49;
    }
  }

  _s12_RegexParser3ASTV4AtomV7CalloutOSgWOi0_(&v88);
LABEL_23:
  v112 = v94;
  v113 = v95;
  *v114 = v96[0];
  *&v114[9] = *(v96 + 9);
  v108 = v90;
  v109 = v91;
  v110 = v92;
  v111 = v93;
  v106 = v88;
  v107 = v89;
  v121 = v94;
  v122 = v95;
  v123[0] = v96[0];
  *(v123 + 9) = *(v96 + 9);
  v117 = v90;
  v118 = v91;
  v119 = v92;
  v120 = v93;
  v115 = v88;
  v116 = v89;
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v115) != 1)
  {
    v76 = v99;
    v77 = v100;
    v78 = v101;
    v74 = v97;
    v75 = v98;
    v79._countAndFlagsBits = v6;
    LOBYTE(v79._object) = v7;
    outlined destroy of Parser(&v74);
    v31 = v95;
    a1[6] = v94;
    a1[7] = v31;
    a1[8] = v96[0];
    *(a1 + 137) = *(v96 + 9);
    v32 = v91;
    a1[2] = v90;
    a1[3] = v32;
    v33 = v93;
    a1[4] = v92;
    a1[5] = v33;
    v34 = v89;
    *a1 = v88;
    a1[1] = v34;
    return AST.root.modify(a1);
  }

  v26 = *&v105[16];
  v27 = v105[24];
  v80 = v94;
  v81 = v95;
  v82[0] = v96[0];
  *(v82 + 9) = *(v96 + 9);
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  v74 = v88;
  v75 = v89;
  outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v74);
  v28 = v2[5]._countAndFlagsBits;
  v29 = v2[3];
  v85 = v2[2];
  v86 = v29;
  v87[0] = v2[4];
  *(v87 + 9) = *(v2 + 73);
  v30 = v2[1];
  v83 = *v2;
  v84 = v30;

  result = outlined destroy of Parser(&v83);
  if (v27 == 1)
  {

LABEL_46:
    v50 = v100;
    v2[2] = v99;
    v2[3] = v50;
    v2[4] = v101;
    v51 = v98;
    *v2 = v97;
    v2[1] = v51;
    v2[5]._countAndFlagsBits = v6;
    LOBYTE(v2[5]._object) = v7;
    *(a1 + 137) = *&v114[9];
    v52 = *v114;
    a1[7] = v113;
    a1[8] = v52;
    v53 = v112;
    a1[5] = v111;
    a1[6] = v53;
    v54 = v110;
    a1[3] = v109;
    a1[4] = v54;
    v55 = v108;
    a1[1] = v107;
    a1[2] = v55;
    *a1 = v106;
    return result;
  }

  v65 = v6;
  v35 = *(v26 + 2);
  v36 = *(v28 + 16);
  if (v36 >= v35)
  {
    v37 = *(v26 + 2);
  }

  else
  {
    v37 = *(v28 + 16);
  }

  if (v35)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v38 == v36)
  {
    result = swift_unknownObjectRelease();
    v6 = v65;
    goto LABEL_46;
  }

  if (v38 < v36)
  {

    v39 = ~v38 + v36;
    v40 = 80 * v38 + 32;
    v6 = v65;
    while (1)
    {
      v70 = *(v28 + v40);
      v41 = *(v28 + v40 + 16);
      v42 = *(v28 + v40 + 32);
      v43 = *(v28 + v40 + 48);
      *(v73 + 9) = *(v28 + v40 + 57);
      v72 = v42;
      v73[0] = v43;
      v71 = v41;
      if (!v70)
      {
        outlined init with copy of Diagnostic(&v70, &v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v45 = *(v26 + 2);
        v44 = *(v26 + 3);
        if (v45 >= v44 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v26);
        }

        *(v26 + 2) = v45 + 1;
        v46 = &v26[80 * v45];
        *(v46 + 2) = v70;
        v47 = v71;
        v48 = v72;
        v49 = v73[0];
        *(v46 + 89) = *(v73 + 9);
        *(v46 + 4) = v48;
        *(v46 + 5) = v49;
        *(v46 + 3) = v47;
        v6 = v26;
      }

      if (!v39)
      {
        break;
      }

      --v39;
      v40 += 80;
    }

    swift_unknownObjectRelease();

    goto LABEL_46;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t Parser.lexBacktrackingDirective()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v85[9] = *(v1 + 73);
  v4 = v1[3];
  v83 = v1[2];
  v84 = v4;
  *v85 = v1[4];
  v5 = v1[1];
  v82[0] = *v1;
  v82[1] = v5;
  v79 = v83;
  v80 = v4;
  v81 = *v85;
  v77 = v82[0];
  v78 = v5;
  v6 = *&v85[16];
  v7 = v85[24];
  outlined init with copy of Parser(v82, &v96);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    v8 = *(v1 + 2);
    result = specialized Parser.tryEat<A>(sequence:)(0x545045434341, 0xE600000000000000);
    v68 = v7;
    if (result)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1279869254, 0xE400000000000000);
    if (result & 1) != 0 || (v12._countAndFlagsBits = 70, v12._object = 0xE100000000000000, result = Parser.tryEat(_:)(v12), (result))
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1263681869, 0xE400000000000000);
    if (result)
    {
      goto LABEL_26;
    }

    v34 = v1[1];
    v96 = *v1;
    v97 = v34;
    v35 = v1[3];
    v98 = v1[2];
    v99 = v35;
    *v100 = v1[4];
    *&v100[9] = *(v1 + 73);
    outlined init with copy of Parser(&v96, &v92);
    v36 = String.subscript.getter();
    if ((v36 ^ v37) >> 14)
    {
      v38 = Substring.subscript.getter();
      v40 = v39;

      outlined destroy of Parser(&v96);
      if (v38 == 58 && v40 == 0xE100000000000000)
      {

        v10 = 1;
        v11 = 2;
        goto LABEL_7;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
LABEL_26:
        v10 = 1;
        v11 = 2;
        goto LABEL_7;
      }
    }

    else
    {

      outlined destroy of Parser(&v96);
    }

    result = specialized Parser.tryEat<A>(sequence:)(0x54494D4D4F43, 0xE600000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 3;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(0x454E555250, 0xE500000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 4;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1346980691, 0xE400000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 5;
      goto LABEL_7;
    }

    result = specialized Parser.tryEat<A>(sequence:)(1313163348, 0xE400000000000000);
    if (result)
    {
      v10 = 0;
      v11 = 6;
LABEL_7:
      if (*(v2 + 2) >> 14 < v8 >> 14)
      {
        __break(1u);
      }

      else
      {
        v73 = *(v2 + 2);
        v13._countAndFlagsBits = 58;
        v13._object = 0xE100000000000000;
        v66 = v6;
        if (!Parser.tryEat(_:)(v13))
        {
          v70 = 0;
          v72 = 0;
          v18 = 0;
          v20 = 0;
LABEL_16:
          v21._countAndFlagsBits = 41;
          v21._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v21))
          {
            v88 = xmmword_1C0C7E3A0;
            v89 = 0;
            v90 = 0;
            v91 = 3;
            *&v96 = *(v2 + 2);
            *(&v96 + 1) = v96;
            Diagnostics.error(_:at:)(&v88, &v96);
          }

          v22 = v10 ^ 1;
          if (v18)
          {
            v22 = 1;
          }

          if ((v22 & 1) == 0)
          {
            v23 = *v2;
            v24 = *(v2 + 1);
            v25 = String.subscript.getter();
            v26 = MEMORY[0x1C68E0B20](v25);
            v28 = v27;

            v86[0] = v26;
            v86[1] = v28;
            v86[2] = 0;
            v86[3] = 0;
            v87 = 13;
            *&v96 = v8;
            *(&v96 + 1) = v73;
            Diagnostics.error(_:at:)(v86, &v96);

            v29 = v20;
LABEL_24:
            v98 = v79;
            v99 = v80;
            *v100 = v81;
            v96 = v77;
            v97 = v78;
            *&v100[16] = v66;
            v100[24] = v68;
            result = outlined destroy of Parser(&v96);
            *a1 = v11;
            *(a1 + 8) = v8;
            *(a1 + 16) = v73;
            *(a1 + 24) = v70;
            *(a1 + 32) = v18;
            *(a1 + 40) = v29;
LABEL_65:
            *(a1 + 48) = v72;
            return result;
          }

          v29 = v20;
          if (v18 != 1)
          {
            goto LABEL_24;
          }

          v30 = v11;
          v7 = v68;
          v32 = v72;
          v31 = v73;
          v6 = v66;
          v33 = v70;
          goto LABEL_43;
        }

        v14._countAndFlagsBits = 41;
        v14._object = 0xE100000000000000;
        v15 = String.init(repeating:count:)(v14, 1);
        v16 = *(v2 + 2);
        result = specialized Parser.lexUntil(_:)(v2, v15._countAndFlagsBits, v15._object, 41, 0xE100000000000000, 0, &v96);
        v17 = *(v2 + 2);
        if (v17 >> 14 >= v16 >> 14)
        {
          v18 = *(&v96 + 1);
          v19 = HIBYTE(*(&v96 + 1)) & 0xFLL;
          v70 = v96;
          v72 = *(v2 + 2);
          if ((*(&v96 + 1) & 0x2000000000000000) == 0)
          {
            v19 = v96 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            v20 = v16;
          }

          else
          {
            v75[0] = 1;
            memset(&v75[1], 0, 24);
            v76 = 36;
            v20 = v16;
            *&v96 = v16;
            *(&v96 + 1) = v17;
            Diagnostics.error(_:at:)(v75, &v96);
          }

          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_68;
    }
  }

  v33 = 0;
  v32 = 0;
  v29 = 0;
  v31 = 0;
  v8 = 0;
  v30 = 0;
LABEL_43:
  v42 = *&v85[16];
  v43 = v85[24];
  v72 = v32;
  v74 = v31;
  v71 = v33;
  v67 = v29;
  outlined consume of AST.Atom.BacktrackingDirective?(v30, v8, v31, v33, 1);
  v44 = *(v2 + 10);
  v45 = v2[3];
  v98 = v2[2];
  v99 = v45;
  *v100 = v2[4];
  *&v100[9] = *(v2 + 73);
  v46 = v2[1];
  v96 = *v2;
  v97 = v46;

  result = outlined destroy of Parser(&v96);
  if (v43 == 1)
  {

LABEL_64:
    v63 = v80;
    v2[2] = v79;
    v2[3] = v63;
    v2[4] = v81;
    v64 = v78;
    *v2 = v77;
    v2[1] = v64;
    *(v2 + 10) = v6;
    *(v2 + 88) = v7;
    *a1 = v30;
    *(a1 + 8) = v8;
    *(a1 + 16) = v74;
    *(a1 + 24) = v71;
    *(a1 + 32) = 1;
    *(a1 + 40) = v67;
    goto LABEL_65;
  }

  v47 = v6;
  v48 = *(v42 + 2);
  v49 = *(v44 + 16);
  if (v49 >= v48)
  {
    v50 = *(v42 + 2);
  }

  else
  {
    v50 = *(v44 + 16);
  }

  if (v48)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v51 == v49)
  {
    result = swift_unknownObjectRelease();
    v6 = v47;
    goto LABEL_64;
  }

  v65 = v30;
  v69 = v7;
  if (v51 < v49)
  {

    v52 = ~v51 + v49;
    v53 = 80 * v51 + 32;
    v6 = v47;
    while (1)
    {
      v92 = *(v44 + v53);
      v54 = *(v44 + v53 + 16);
      v55 = *(v44 + v53 + 32);
      v56 = *(v44 + v53 + 48);
      *(v95 + 9) = *(v44 + v53 + 57);
      v94 = v55;
      v95[0] = v56;
      v93 = v54;
      if (!v92)
      {
        outlined init with copy of Diagnostic(&v92, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
        }

        v58 = *(v42 + 2);
        v57 = *(v42 + 3);
        if (v58 >= v57 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v42);
        }

        *(v42 + 2) = v58 + 1;
        v59 = &v42[80 * v58];
        *(v59 + 2) = v92;
        v60 = v93;
        v61 = v94;
        v62 = v95[0];
        *(v59 + 89) = *(v95 + 9);
        *(v59 + 4) = v61;
        *(v59 + 5) = v62;
        *(v59 + 3) = v60;
        v6 = v42;
      }

      if (!v52)
      {
        break;
      }

      --v52;
      v53 += 80;
    }

    swift_unknownObjectRelease();

    v7 = v69;
    v30 = v65;
    goto LABEL_64;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t Parser.expectGroupLikeAtom()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v85 - v13;
  Parser.lexGroupLikeReference()(v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    outlined init with take of Source.Located<AST.Atom.Kind>?(v8, v14, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    return outlined init with take of AST.Atom.Kind(v14, a1, type metadata accessor for AST.Atom.Kind);
  }

  outlined destroy of _ASTParent?(v8, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  Parser.lexChangeMatchingOptionAtom()(v124);
  v15 = *(&v124[1] + 1);
  v137 = *&v124[1];
  v134 = v125[0];
  v135 = v125[1];
  v136 = v124[0];
  if (*(&v124[1] + 1))
  {
    v16 = v135;
    *a1 = v136;
    *(a1 + 16) = v137;
    *(a1 + 24) = v15;
    *(a1 + 32) = v134;
    *(a1 + 48) = v16;
    type metadata accessor for AST.Atom.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  Parser.lexBacktrackingDirective()(v124);
  v18 = *&v125[0];
  if (*&v125[0] != 1)
  {
    v30 = *(&v124[1] + 1);
    v31 = *(v124 + 8);
    v32 = *(v125 + 8);
    *a1 = v124[0];
    *(a1 + 8) = v31;
    *(a1 + 24) = v30;
    *(a1 + 32) = v18;
    *(a1 + 40) = v32;
    type metadata accessor for AST.Atom.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  Parser.lexGlobalMatchingOption()(&v131);
  if (v131.i64[1] >> 1 != 0xFFFFFFFF)
  {
    v34 = v132;
    v33 = v133;
    v35 = *v2;
    v36 = v2[1];
    v37 = String.subscript.getter();
    v38 = MEMORY[0x1C68E0B20](v37);
    v40 = v39;

    *&v124[0] = v38;
    *(&v124[0] + 1) = v40;
    v124[1] = 0uLL;
    LOBYTE(v125[0]) = 8;
    *&v122[0] = v34;
    *(&v122[0] + 1) = v33;
    Diagnostics.error(_:at:)(v124, v122);
LABEL_17:

    goto LABEL_18;
  }

  Parser.lexPCRECallout()(v122);
  v128 = v122[6];
  v129 = v122[7];
  v130[0] = v123[0];
  *(v130 + 9) = *(v123 + 9);
  v125[0] = v122[2];
  v125[1] = v122[3];
  v126 = v122[4];
  v127 = v122[5];
  v124[0] = v122[0];
  v124[1] = v122[1];
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(v124) != 1)
  {
    v41 = v129;
    *(a1 + 96) = v128;
    *(a1 + 112) = v41;
    *(a1 + 128) = v130[0];
    *(a1 + 137) = *(v130 + 9);
    v42 = v125[1];
    *(a1 + 32) = v125[0];
    *(a1 + 48) = v42;
    v43 = v127;
    *(a1 + 64) = v126;
    *(a1 + 80) = v43;
    v44 = v124[0];
    v45 = v124[1];
LABEL_22:
    *a1 = v44;
    *(a1 + 16) = v45;
    type metadata accessor for AST.Atom.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  Parser.lexOnigurumaNamedCallout()(v111);
  v119 = v111[6];
  v120 = v111[7];
  v121[0] = v112[0];
  *(v121 + 9) = *(v112 + 9);
  v115 = v111[2];
  v116 = v111[3];
  v117 = v111[4];
  v118 = v111[5];
  v113 = v111[0];
  v114 = v111[1];
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v113) != 1)
  {
    v46 = v120;
    *(a1 + 96) = v119;
    *(a1 + 112) = v46;
    *(a1 + 128) = v121[0];
    *(a1 + 137) = *(v121 + 9);
    v47 = v116;
    *(a1 + 32) = v115;
    *(a1 + 48) = v47;
    v48 = v118;
    *(a1 + 64) = v117;
    *(a1 + 80) = v48;
    v44 = v113;
    v45 = v114;
    goto LABEL_22;
  }

  Parser.lexOnigurumaCalloutOfContents()(v100);
  v108 = v100[6];
  v109 = v100[7];
  v110[0] = v101[0];
  *(v110 + 9) = *(v101 + 9);
  v104 = v100[2];
  v105 = v100[3];
  v106 = v100[4];
  v107 = v100[5];
  v102 = v100[0];
  v103 = v100[1];
  if (_s12_RegexParser3ASTV4AtomV7CalloutOSgWOg(&v102) != 1)
  {
    v49 = v109;
    *(a1 + 96) = v108;
    *(a1 + 112) = v49;
    *(a1 + 128) = v110[0];
    *(a1 + 137) = *(v110 + 9);
    v50 = v105;
    *(a1 + 32) = v104;
    *(a1 + 48) = v50;
    v51 = v107;
    *(a1 + 64) = v106;
    *(a1 + 80) = v51;
    v44 = v102;
    v45 = v103;
    goto LABEL_22;
  }

  v19._countAndFlagsBits = 40;
  v19._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v19))
  {
    v138 = xmmword_1C0C7E3F0;
    v139 = 0;
    v140 = 0;
    v141 = 3;
    *&v94 = v1[2];
    *(&v94 + 1) = v94;
    Diagnostics.error(_:at:)(&v138, &v94);
  }

  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = String.subscript.getter();
  v26 = v25;

  v27 = v23;
  if ((v24 ^ v26) < 0x4000)
  {
    goto LABEL_48;
  }

  specialized Parser.tryEat<A>(anyOf:)(&outlined read-only object #0 of closure #1 in Parser.expectGroupLikeAtom());
  v29 = v28;
  swift_arrayDestroy();
  if (v29)
  {

    v27 = v23;
    goto LABEL_48;
  }

  v86 = "Unhandled termination condition";
  v87 = 0;
  v85 = v23;
  v27 = v23;
  while (1)
  {
    while (1)
    {
      v52 = *(v2 + 1);
      v94 = *v2;
      v95 = v52;
      v53 = *(v2 + 3);
      v96 = *(v2 + 2);
      v97 = v53;
      v98[0] = *(v2 + 4);
      *(v98 + 9) = *(v2 + 73);
      v54 = v95;
      outlined init with copy of Parser(&v94, &v91);
      v55 = String.subscript.getter();
      if (!((v55 ^ v56) >> 14))
      {

        result = outlined destroy of Parser(&v94);
        goto LABEL_47;
      }

      v88 = Substring.subscript.getter();
      v89 = v57;

      outlined destroy of Parser(&v94);
      String.subscript.getter();
      v27 = Substring.index(_:offsetBy:limitedBy:)();
      v59 = v58;

      if (v59)
      {
        v60 = *&v98[1];
        v61 = BYTE8(v98[1]);
        strcpy(v90, "UNREACHABLE: ");
        HIWORD(v90[1]) = -4864;
        MEMORY[0x1C68E0BF0](0xD000000000000015, v86 | 0x8000000000000000);
        LOBYTE(v91) = 0;
        *(&v91 + 1) = v90[0];
        *&v92 = v90[1];
        *(&v92 + 1) = v54;
        *&v93[0] = v54;
        *(v93 + 8) = 0u;
        *(&v93[1] + 8) = 0u;
        BYTE8(v93[2]) = -1;
        if (v61)
        {
          outlined destroy of Diagnostic(&v91);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
          }

          v63 = *(v60 + 2);
          v62 = *(v60 + 3);
          if (v63 >= v62 >> 1)
          {
            v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
          }

          *(v60 + 2) = v63 + 1;
          v64 = &v60[80 * v63];
          *(v64 + 2) = v91;
          v65 = v92;
          v66 = v93[0];
          v67 = v93[1];
          *(v64 + 89) = *(&v93[1] + 9);
          *(v64 + 4) = v66;
          *(v64 + 5) = v67;
          *(v64 + 3) = v65;
          v2[10] = v60;
        }

        String.subscript.getter();
        v68 = Substring.distance(from:to:)();

        if (v68 < 1 || (String.subscript.getter(), v27 = Substring.index(_:offsetBy:limitedBy:)(), v70 = v69, result = , (v70 & 1) != 0))
        {
          v27 = v54;
          goto LABEL_42;
        }

        if (*(&v54 + 1) >> 14 < v27 >> 14)
        {
          goto LABEL_56;
        }
      }

      else if (*(&v54 + 1) >> 14 < v27 >> 14)
      {
        __break(1u);
        goto LABEL_55;
      }

      v2[2] = v27;
      v2[3] = *(&v54 + 1);
LABEL_42:
      MEMORY[0x1C68E0BE0](v88, v89);

      v71 = String.subscript.getter();
      v73 = v72;

      if ((v71 ^ v73) < 0x4000)
      {
        goto LABEL_47;
      }

      v74 = *(v2 + 1);
      v91 = *v2;
      v92 = v74;
      v75 = *(v2 + 3);
      v93[0] = *(v2 + 2);
      v93[1] = v75;
      v93[2] = *(v2 + 4);
      *(&v93[2] + 9) = *(v2 + 73);
      outlined init with copy of Parser(&v91, v90);
      v76 = String.subscript.getter();
      if ((v76 ^ v77) >> 14)
      {
        break;
      }

      outlined destroy of Parser(&v91);
    }

    v78 = Substring.subscript.getter();
    v80 = v79;

    v81 = outlined destroy of Parser(&v91);
    v90[0] = v78;
    v90[1] = v80;
    MEMORY[0x1EEE9AC00](v81, v82);
    *(&v85 - 2) = v90;
    v83 = v87;
    if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v85 - 4), &outlined read-only object #0 of Parser.expectGroupLikeAtom()))
    {
      break;
    }

    v87 = v83;
  }

  Parser.advance(_:)(1);
  swift_arrayDestroy();

LABEL_47:
  v23 = v85;
LABEL_48:
  if (v27 >> 14 < v23 >> 14)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  v84 = HIBYTE(*(&v99 + 1)) & 0xFLL;
  if ((*(&v99 + 1) & 0x2000000000000000) == 0)
  {
    v84 = v99 & 0xFFFFFFFFFFFFLL;
  }

  if (!v84)
  {
    v94 = xmmword_1C0C7E3A0;
    v95 = 0uLL;
    LOBYTE(v96) = 3;
    *&v91 = v23;
    *(&v91 + 1) = v27;
    Diagnostics.error(_:at:)(&v94, &v91);
    goto LABEL_17;
  }

  v94 = v99;
  v95 = 0uLL;
  LOBYTE(v96) = 14;
  *&v91 = v23;
  *(&v91 + 1) = v27;

  Diagnostics.error(_:at:)(&v94, &v91);
  swift_bridgeObjectRelease_n();
LABEL_18:
  type metadata accessor for AST.Atom.Kind(0);
  return swift_storeEnumTagMultiPayload();
}

double Parser.lexGlobalMatchingOption()@<D0>(int64x2_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v64;
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 16);
  v65 = *(v1 + 32);
  v66 = v6;
  *v67 = v7;
  *&v67[9] = *(v1 + 73);
  v64[0] = *v1;
  v64[1] = v8;
  v62 = v6;
  v63 = v7;
  v59 = v64[0];
  v60 = v8;
  v61 = v65;
  v9 = *&v67[16];
  v10 = v67[24];
  outlined init with copy of Parser(v64, &v54);
  if (specialized Parser.tryEat<A>(sequence:)(10792, 0xE200000000000000))
  {
    v11 = *(v1 + 16);
    if (specialized Parser.tryEat<A>(sequence:)(0x43594E415F525342, 0xEB00000000464C52))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v14 = 0;
      v5 = 0x8000000000000000;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(0x43494E555F525342, 0xEB0000000045444FLL))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x8000000000000000;
      v14 = 1;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(1179406915, 0xE400000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 2;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(21059, 0xE200000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v14 = 0;
      v5 = 0x6000000000000000;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(0x464C5243594E41, 0xE700000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 3;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(5852737, 0xE300000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 4;
    }

    else if (specialized Parser.tryEat<A>(sequence:)(17996, 0xE200000000000000))
    {
      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
      v14 = 1;
    }

    else
    {
      if ((specialized Parser.tryEat<A>(sequence:)(5002574, 0xE300000000000000) & 1) == 0)
      {
        if (specialized Parser.tryEat<A>(sequence:)(0x45445F54494D494CLL, 0xEB00000000485450))
        {
          v39._countAndFlagsBits = 61;
          v39._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v39))
          {
            v72 = xmmword_1C0C7E3B0;
            v73 = 0;
            v74 = 0;
            v75 = 3;
            *&v68[0] = *(v1 + 16);
            *(&v68[0] + 1) = *&v68[0];
            Diagnostics.error(_:at:)(&v72, v68);
          }

          Parser.lexNumber(_:)(1, v68);
          if ((v69 & 1) == 0)
          {
            v15 = v68[1];
            v14 = *&v68[0];
            v5 = BYTE8(v68[0]) & 1;
            goto LABEL_72;
          }

          LOBYTE(v12) = v10;
          v70[0] = xmmword_1C0C7E360;
          v70[1] = xmmword_1C0C7E3C0;
          v71 = 2;
          v13 = *(v1 + 16);
          *&v68[0] = v13;
          *(&v68[0] + 1) = v13;
          Diagnostics.error(_:at:)(v70, v68);
          v14 = 0;
          v5 = 1;
        }

        else if (specialized Parser.tryEat<A>(sequence:)(0x45485F54494D494CLL, 0xEA00000000005041))
        {
          v40._countAndFlagsBits = 61;
          v40._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v40))
          {
            v46 = xmmword_1C0C7E3B0;
            v47 = 0;
            v48 = 0;
            v49 = 3;
            *&v68[0] = *(v1 + 16);
            *(&v68[0] + 1) = *&v68[0];
            Diagnostics.error(_:at:)(&v46, v68);
          }

          Parser.lexNumber(_:)(1, v68);
          if ((v69 & 1) == 0)
          {
            goto LABEL_66;
          }

          LOBYTE(v12) = v10;
          v76[0] = xmmword_1C0C7E360;
          v76[1] = xmmword_1C0C7E3C0;
          v77 = 2;
          v13 = *(v1 + 16);
          *&v68[0] = v13;
          *(&v68[0] + 1) = v13;
          Diagnostics.error(_:at:)(v76, v68);
          v14 = 0;
          v5 = 0x2000000000000001;
        }

        else if (specialized Parser.tryEat<A>(sequence:)(0x414D5F54494D494CLL, 0xEB00000000484354))
        {
          v41._countAndFlagsBits = 61;
          v41._object = 0xE100000000000000;
          if (!Parser.tryEat(_:)(v41))
          {
            v54 = xmmword_1C0C7E3B0;
            v55 = 0uLL;
            LOBYTE(v56) = 3;
            *&v68[0] = *(v1 + 16);
            *(&v68[0] + 1) = *&v68[0];
            Diagnostics.error(_:at:)(&v54, v68);
          }

          Parser.lexNumber(_:)(1, v68);
          if ((v69 & 1) == 0)
          {
            goto LABEL_70;
          }

          LOBYTE(v12) = v10;
          v50 = xmmword_1C0C7E360;
          v51 = xmmword_1C0C7E3C0;
          LOBYTE(v52) = 2;
          v13 = *(v1 + 16);
          *&v68[0] = v13;
          *(&v68[0] + 1) = v13;
          Diagnostics.error(_:at:)(&v50, v68);
          v14 = 0;
          v5 = 0x4000000000000001;
        }

        else
        {
          v5 = 0xD000000000000010;
          LOBYTE(v12) = v10;
          if (specialized Parser.tryEat<A>(sequence:)(0xD000000000000010, 0x80000001C0C86C70))
          {
            v13 = 0;
            v5 = 0xA000000000000000;
            v14 = 1;
          }

          else
          {
            if ((specialized Parser.tryEat<A>(sequence:)(0x5954504D45544F4ELL, 0xE800000000000000) & 1) == 0)
            {
              goto LABEL_77;
            }

            v13 = 0;
            v14 = 0;
            v5 = 0xA000000000000000;
          }
        }

        goto LABEL_19;
      }

      LOBYTE(v12) = v10;
      v13 = 0;
      v5 = 0x6000000000000000;
LABEL_18:
      v14 = 5;
    }

LABEL_19:
    v15 = vdupq_n_s64(v13);
    v10 = v12;
    while (1)
    {
      if (*(v2 + 16) >> 14 < v11 >> 14)
      {
        __break(1u);
LABEL_66:
        v15 = *(v5 + 120);
        v14 = *&v68[0];
        v42 = BYTE8(v68[0]);
        v43 = 0x2000000000000000;
      }

      else
      {
        if (v5 >> 1 == 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

        v45 = v15;
        v56 = v61;
        v57 = v62;
        *v58 = v63;
        v54 = v59;
        v55 = v60;
        *&v58[16] = v9;
        v58[24] = v10;
        outlined destroy of Parser(&v54);
        v23._countAndFlagsBits = 41;
        v23._object = 0xE100000000000000;
        if (!Parser.tryEat(_:)(v23))
        {
          v50 = xmmword_1C0C7E3A0;
          v51 = 0uLL;
          LOBYTE(v52) = 3;
          *&v46 = *(v2 + 16);
          *(&v46 + 1) = v46;
          Diagnostics.error(_:at:)(&v50, &v46);
        }

        v24 = *(v2 + 16);
        result = *v45.i64;
        if (v24 >> 14 >= v4 >> 14)
        {
          a1->i64[0] = v14;
          a1->i64[1] = v5;
          a1[1] = v45;
          a1[2].i64[0] = v4;
          a1[2].i64[1] = v24;
          return result;
        }

        __break(1u);
LABEL_70:
        v15 = *(v5 + 120);
        v14 = *&v68[0];
        v42 = BYTE8(v68[0]);
        v43 = 0x4000000000000000;
      }

      v5 = v43 & 0xFFFFFFFFFFFFFFFELL | v42 & 1;
LABEL_72:
      if (v5 >> 1 == 0xFFFFFFFF)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
LABEL_22:
    v11 = &v50;
    v4 = *&v67[16];
    v16 = v67[24];
    v17 = *(v2 + 80);
    v18 = *(v2 + 48);
    v56 = *(v2 + 32);
    v57 = v18;
    *v58 = *(v2 + 64);
    *&v58[9] = *(v2 + 73);
    v19 = *(v2 + 16);
    v54 = *v2;
    v55 = v19;

    outlined destroy of Parser(&v54);
    if (v16 == 1)
    {

      goto LABEL_48;
    }

    v44 = v10;
    v20 = *(v4 + 16);
    v12 = *(v17 + 16);
    if (v12 >= v20)
    {
      v21 = *(v4 + 16);
    }

    else
    {
      v21 = *(v17 + 16);
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == v12)
    {
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    if (v22 < v12)
    {
      break;
    }

    __break(1u);
LABEL_77:
    if (specialized Parser.tryEat<A>(sequence:)(0x5F4F5455415F4F4ELL, 0xEF53534553534F50))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 2;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(v5 + 1, 0x80000001C0C86C50))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 3;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x54494A5F4F4ELL, 0xE600000000000000))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 4;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(0x54524154535F4F4ELL, 0xEC00000054504F5FLL))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      goto LABEL_18;
    }

    if (specialized Parser.tryEat<A>(sequence:)(4609109, 0xE300000000000000))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 6;
      goto LABEL_19;
    }

    if (specialized Parser.tryEat<A>(sequence:)(5260117, 0xE300000000000000))
    {
      v13 = 0;
      v5 = 0xA000000000000000;
      v14 = 7;
      goto LABEL_19;
    }

    v10 = v12;
  }

  v26 = ~v22 + v12;
  for (i = 80 * v22 + 32; ; i += 80)
  {
    v50 = *(v17 + i);
    v28 = *(v17 + i + 16);
    v29 = *(v17 + i + 32);
    v30 = *(v17 + i + 48);
    *(v53 + 9) = *(v17 + i + 57);
    v52 = v29;
    v53[0] = v30;
    v51 = v28;
    if (!v50)
    {
      outlined init with copy of Diagnostic(&v50, &v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      }

      v32 = *(v4 + 16);
      v31 = *(v4 + 24);
      if (v32 >= v31 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v4);
      }

      *(v4 + 16) = v32 + 1;
      v33 = (v4 + 80 * v32);
      *(v33 + 2) = v50;
      v34 = v51;
      v35 = v52;
      v36 = v53[0];
      *(v33 + 89) = *(v53 + 9);
      *(v33 + 4) = v35;
      *(v33 + 5) = v36;
      *(v33 + 3) = v34;
      v9 = v4;
    }

    if (!v26)
    {
      break;
    }

    --v26;
  }

  swift_unknownObjectRelease();

LABEL_47:
  v10 = v44;
LABEL_48:
  v37 = v62;
  *(v2 + 32) = v61;
  *(v2 + 48) = v37;
  *(v2 + 64) = v63;
  v38 = v60;
  *v2 = v59;
  *(v2 + 16) = v38;
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  result = 0.0;
  *a1 = xmmword_1C0C7E370;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t Parser.lexAtom()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v42 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for AST.Atom.Kind(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v42 - v26;
  v28 = *(v2 + 16);
  closure #1 in Parser.lexAtom()(v2, *(v2 + 32));
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of _ASTParent?(v12, &_s12_RegexParser3ASTV4AtomV4KindOSgMd, &_s12_RegexParser3ASTV4AtomV4KindOSgMR);
    v29 = 1;
  }

  else
  {
    outlined init with take of AST.Atom.Kind(v12, v18, type metadata accessor for AST.Atom.Kind);
    result = outlined init with take of AST.Atom.Kind(v18, v27, type metadata accessor for AST.Atom.Kind);
    v31 = *(v2 + 16);
    if (v31 >> 14 < v28 >> 14)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    v32 = &v27[*(v3 + 28)];
    *v32 = v28;
    *(v32 + 1) = v31;
  }

  (*(v4 + 56))(v27, v29, 1, v3);
  outlined init with take of Source.Located<AST.Atom.Kind>?(v27, v24, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
  if ((*(v4 + 48))(v24, 1, v3) == 1)
  {
    outlined destroy of _ASTParent?(v24, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGSgMR);
    v33 = type metadata accessor for AST.Atom(0);
    return (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
  }

  else
  {
    v34 = v24;
    v35 = v42;
    outlined init with take of Source.Located<AST.Atom.Kind>?(v34, v42, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    v36 = v43;
    outlined init with copy of AST.CustomCharacterClass.Member(v35, v43, type metadata accessor for AST.Atom.Kind);
    v37 = (v35 + *(v3 + 28));
    v38 = *v37;
    v39 = v37[1];
    outlined destroy of _ASTParent?(v35, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV4AtomV4KindOGMR);
    v40 = type metadata accessor for AST.Atom(0);
    v41 = (v36 + *(v40 + 20));
    *v41 = v38;
    v41[1] = v39;
    return (*(*(v40 - 8) + 56))(v36, 0, 1, v40);
  }
}

unint64_t Character.isConfusable.getter(unint64_t a1, unint64_t a2)
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

  if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, v5 | (v4 << 16), a1, a2) < 2)
  {
    goto LABEL_12;
  }

  result = specialized Collection.first.getter(a1, a2);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF80) == 0 && (a1 != 2573 || a2 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (Character.isLetter.getter() & 1) == 0)
    {
      v7 = Character.isNumber.getter() ^ 1;
      return v7 & 1;
    }

LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

_RegexParser::AST::GlobalMatchingOptionSequence_optional __swiftcall Parser.lexGlobalMatchingOptionSequence()()
{
  v1 = v0;
  Parser.lexGlobalMatchingOption()(&v16);
  v3 = v16.i64[1];
  v4 = MEMORY[0x1E69E7CC0];
  if (v16.i64[1] >> 1 != 0xFFFFFFFF)
  {
    v6 = v17;
    v5 = v18;
    do
    {
      v14 = v6;
      v15 = v5;
      v7 = v16.i64[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      v11 = v14;
      v10 = v15;
      if (v9 >= v8 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
        v11 = v14;
        v10 = v15;
        v4 = v13;
      }

      *(v4 + 2) = v9 + 1;
      v12 = &v4[48 * v9];
      *(v12 + 4) = v7;
      *(v12 + 5) = v3;
      *(v12 + 3) = v11;
      *(v12 + 4) = v10;
      Parser.lexGlobalMatchingOption()(&v16);
      v3 = v16.i64[1];
      v6 = v17;
      v5 = v18;
    }

    while (v16.i64[1] >> 1 != 0xFFFFFFFF);
  }

  if (!*(v4 + 2))
  {

    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
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
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t Parser.parse()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  Parser.lexGlobalMatchingOptionSequence()();
  v4 = v25[0];
  if (v25[0])
  {
    v5 = *(v25[0] + 16);
    v6 = v25[0] + 48 * v5 + 32;
    v7 = v5 + 1;
    while (--v7)
    {
      v8 = (v6 - 48);
      v9 = *(v6 - 40) >> 61;
      v6 -= 48;
      if (v9 == 3)
      {
        *(v1 + 72) = *v8;
        break;
      }
    }
  }

  Parser.parseNode()(v25);
  v10 = v25[0];
  v11 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = String.subscript.getter();
  v17 = v16;

  if ((v15 ^ v17) < 0x4000)
  {
    goto LABEL_11;
  }

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  result = Parser.tryEat(_:)(v18);
  if ((result & 1) == 0)
  {
    v21._object = 0x80000001C0C86F00;
    v21._countAndFlagsBits = 0xD00000000000001FLL;
    Parser.unreachable(_:)(v21);
    goto LABEL_11;
  }

  v20 = v2[2];
  if (v20 >> 14 >= v14 >> 14)
  {
    v25[0] = 10;
    memset(&v25[1], 0, 24);
    v26 = 36;
    *&v24 = v14;
    *(&v24 + 1) = v20;
    Diagnostics.error(_:at:)(v25, &v24);
LABEL_11:
    v22 = v2[10];
    v23 = *(v2 + 88);
    *a1 = v10;

    *(a1 + 8) = v4;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;
    return result;
  }

  __break(1u);
  return result;
}

void Parser.parseNode()(void *a1@<X8>)
{
  v3 = v1[7];
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    goto LABEL_29;
  }

  v5 = v1;
  v1[7] = v4;
  if (v4 > 63)
  {
    goto LABEL_7;
  }

  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v5[3];
  v10 = v5[2];
  v11 = String.subscript.getter();
  v13 = v12;

  if (!((v11 ^ v13) >> 14))
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v9;
    *a1 = v14 | 0xB000000000000000;
    v15 = v4 - 1;
    if (!__OFSUB__(v4, 1))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_7:
    v37[0] = 16;
    memset(&v37[1], 0, 24);
    v38 = 36;
    v16 = v5[2];
    *&v36 = v16;
    *(&v36 + 1) = v16;
    Diagnostics.error(_:at:)(v37, &v36);
    *(v5 + 88) = 1;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v16;
    *a1 = v17 | 0xB000000000000000;
    v15 = v4 - 1;
LABEL_8:
    v5[7] = v15;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C0C7E2F0;
  Parser.parseConcatenation()((v18 + 32));
  v19 = v5[2];
  v20._countAndFlagsBits = 124;
  v20._object = 0xE100000000000000;
  v21 = Parser.tryEat(_:)(v20);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    while (1)
    {
      v23 = v5[2];
      if (v23 >> 14 < v19 >> 14)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
      }

      *(v22 + 2) = v25 + 1;
      v26 = &v22[16 * v25];
      *(v26 + 4) = v19;
      *(v26 + 5) = v23;
      Parser.parseConcatenation()(v37);
      v27 = v37[0];
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v18);
      }

      *(v18 + 16) = v29 + 1;
      *(v18 + 8 * v29 + 32) = v27;
      v19 = v5[2];
      v30._countAndFlagsBits = 124;
      v30._object = 0xE100000000000000;
      if (!Parser.tryEat(_:)(v30))
      {
        goto LABEL_18;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  v31 = *(v18 + 16);
  if (v31 == 1)
  {

    if (!*(v18 + 16))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    *a1 = *(v18 + 32);

    v32 = v5[7];
    v33 = __OFSUB__(v32, 1);
    v15 = v32 - 1;
    if (!v33)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v34 = swift_allocObject();
  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(v22 + 2) == v31 - 1)
  {
    *(v34 + 16) = v18;
    *(v34 + 24) = v22;
    *a1 = v34;
    v35 = v5[7];
    v33 = __OFSUB__(v35, 1);
    v15 = v35 - 1;
    if (!v33)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
}

void Parser.parseConcatenation()(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v115 = *(v1 + 16);
  v5 = String.subscript.getter();
  v7 = v6;

  if ((v5 ^ v7) >= 0x4000)
  {
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = *(v1 + 16);
      v154[0] = *v1;
      v154[1] = v10;
      v11 = *(v1 + 48);
      v154[2] = *(v1 + 32);
      v154[3] = v11;
      v155[0] = *(v1 + 64);
      *(v155 + 9) = *(v1 + 73);
      outlined init with copy of Parser(v154, &v132);
      v12 = String.subscript.getter();
      if ((v12 ^ v13) >> 14)
      {
        v14 = Substring.subscript.getter();
        v16 = v15;

        outlined destroy of Parser(v154);
        if (v14 == 124 && v16 == 0xE100000000000000)
        {
LABEL_82:

LABEL_83:
          v9 = *(v8 + 2);
          if (!v9)
          {
            goto LABEL_89;
          }

LABEL_84:
          if (v9 == 1)
          {
            *a1 = *(v8 + 4);

            return;
          }

          v105 = swift_allocObject();
          v106 = *(v1 + 16);
          if (v106 >> 14 >= v115 >> 14)
          {
            *(v105 + 16) = v8;
            *(v105 + 24) = v115;
            *(v105 + 32) = v106;
            v107 = v105 | 0x1000000000000000;
            goto LABEL_91;
          }

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          return;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_83;
        }
      }

      else
      {

        outlined destroy of Parser(v154);
      }

      v18 = *(v1 + 16);
      v149 = *v1;
      v150 = v18;
      v19 = *(v1 + 48);
      v151 = *(v1 + 32);
      v152 = v19;
      v153[0] = *(v1 + 64);
      *(v153 + 9) = *(v1 + 73);
      v20 = v150;
      outlined init with copy of Parser(&v149, &v132);
      v21 = String.subscript.getter();
      if ((v21 ^ v22) >> 14)
      {
        v23 = Substring.subscript.getter();
        v25 = v24;

        outlined destroy of Parser(&v149);
        if (v23 == 41 && v25 == 0xE100000000000000)
        {
          goto LABEL_82;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
          goto LABEL_83;
        }
      }

      else
      {

        outlined destroy of Parser(&v149);
      }

      closure #1 in Parser.lexComment()(v1, &v132);
      v27 = *(&v132 + 1);
      if (*(&v132 + 1))
      {
        break;
      }

      v117 = v8;
      if (*(v1 + 64))
      {
        v35 = *(v1 + 8);
        v36 = *(v1 + 16);
        v37 = *(v1 + 24);
        *&v132 = *v1;
        *(&v132 + 1) = v35;
        *&v133 = v36;
        *(&v133 + 1) = v37;

        v38 = specialized Source.peekPrefix(maxLength:_:)(0, 1, &v132);
        v40 = v39;
        v42 = v41;
        v44 = v43;

        if (v44)
        {
          v112 = v37;
          v114 = v42;
          v28 = v36;
          if (Substring.distance(from:to:)() >= 1)
          {
            String.subscript.getter();
            v45 = Substring.index(_:offsetBy:limitedBy:)();
            v47 = v46;

            v28 = v36;
            if ((v47 & 1) == 0)
            {
              if (v112 >> 14 < v45 >> 14)
              {
                goto LABEL_97;
              }

              *(v1 + 16) = v45;
              *(v1 + 24) = v112;
              v28 = v45;
            }
          }

          v29 = MEMORY[0x1C68E0B20](v38, v40, v114, v44);
          v27 = v48;

          if (v28 >> 14 < v36 >> 14)
          {
            goto LABEL_94;
          }

          if (v27)
          {
            v20 = v36;
            v8 = v117;
LABEL_18:
            v30 = swift_allocObject();
            *(v30 + 16) = v29;
            *(v30 + 24) = v27;
            *(v30 + 32) = v20;
            *(v30 + 40) = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
            }

            v32 = *(v8 + 2);
            v31 = *(v8 + 3);
            v33 = v32 + 1;
            if (v32 >= v31 >> 1)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
            }

            v34 = v30 | 0x6000000000000000;
            goto LABEL_56;
          }
        }
      }

      v49 = *(v1 + 16);
      closure #1 in Parser.lexQuote()(v1, &v132);
      v50 = *(&v132 + 1);
      if (*(&v132 + 1))
      {
        v51 = *(v1 + 16);
        v8 = v117;
        if (v51 >> 14 < v49 >> 14)
        {
          goto LABEL_93;
        }

        v52 = v132;
        v53 = swift_allocObject();
        *(v53 + 16) = v52;
        *(v53 + 24) = v50;
        *(v53 + 32) = v49;
        *(v53 + 40) = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
        }

        v32 = *(v8 + 2);
        v54 = *(v8 + 3);
        v33 = v32 + 1;
        if (v32 >= v54 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v32 + 1, 1, v8);
        }

        v34 = v53 | 0x5000000000000000;
      }

      else
      {
        Parser.lexInterpolation()(&v132);
        v55 = *(&v132 + 1);
        v8 = v117;
        if (*(&v132 + 1))
        {
          v56 = v133;
          v57 = v132;
          v58 = swift_allocObject();
          *(v58 + 16) = v57;
          *(v58 + 24) = v55;
          *(v58 + 32) = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
          }

          v32 = *(v8 + 2);
          v59 = *(v8 + 3);
          v33 = v32 + 1;
          if (v32 >= v59 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v32 + 1, 1, v8);
          }

          v34 = v58 | 0x7000000000000000;
        }

        else
        {
          Parser.parseQuantifierOperand()(&v148);
          v60 = v148;
          if ((~v148 & 0xF000000000000007) == 0)
          {
            v108._object = 0x80000001C0C86F40;
            v108._countAndFlagsBits = 0xD000000000000023;
            Parser.unreachable(_:)(v108);
            v9 = *(v117 + 2);
            if (v9)
            {
              goto LABEL_84;
            }

            goto LABEL_89;
          }

          *&v147[9] = *(v1 + 73);
          v61 = *(v1 + 48);
          v145 = *(v1 + 32);
          v146 = v61;
          *v147 = *(v1 + 64);
          v62 = *(v1 + 16);
          v144[0] = *v1;
          v144[1] = v62;
          v141 = v145;
          v142 = v61;
          v143 = *v147;
          v139 = v144[0];
          v140 = v62;
          v63 = *&v147[16];
          v64 = v147[24];
          outlined init with copy of Parser(v144, &v123);
          closure #1 in Parser.lexQuantifier()(v1, &v132);
          v65 = *(&v132 + 1);
          v66 = *(&v134 + 1);
          if (*(&v132 + 1) >> 1 == 0xFFFFFFFFLL && *(&v134 + 1) <= 1uLL)
          {
            v67 = *&v147[16];
            v68 = v147[24];
            v127 = v136;
            v128 = v137;
            v129 = v138;
            v123 = v132;
            v124 = v133;
            v125 = v134;
            v126 = v135;
            outlined destroy of _ASTParent?(&v123, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOG_AEy_AI4KindOGSayAG6TriviaVGtSgMR);
            v69 = *(v1 + 80);
            v70 = *(v1 + 48);
            v130[2] = *(v1 + 32);
            v130[3] = v70;
            v131[0] = *(v1 + 64);
            *(v131 + 9) = *(v1 + 73);
            v71 = *(v1 + 16);
            v130[0] = *v1;
            v130[1] = v71;

            outlined destroy of Parser(v130);
            if (v68 == 1 || ((v86 = *(v67 + 2), v87 = *(v69 + 16), v87 >= v86) ? (v88 = *(v67 + 2)) : (v88 = *(v69 + 16)), v86 ? (v89 = v88) : (v89 = 0), v89 == v87))
            {
            }

            else
            {
              if (v89 >= v87)
              {
                goto LABEL_99;
              }

              v90 = ~v89 + v87;
              for (i = 80 * v89 + 32; ; i += 80)
              {
                v119 = *(v69 + i);
                v92 = *(v69 + i + 16);
                v93 = *(v69 + i + 32);
                v94 = *(v69 + i + 48);
                *(v122 + 9) = *(v69 + i + 57);
                v121 = v93;
                v122[0] = v94;
                v120 = v92;
                if (!v119)
                {
                  outlined init with copy of Diagnostic(&v119, v118);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
                  }

                  v96 = *(v67 + 2);
                  v95 = *(v67 + 3);
                  if (v96 >= v95 >> 1)
                  {
                    v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v67);
                  }

                  *(v67 + 2) = v96 + 1;
                  v97 = &v67[80 * v96];
                  *(v97 + 2) = v119;
                  v98 = v120;
                  v99 = v121;
                  v100 = v122[0];
                  *(v97 + 89) = *(v122 + 9);
                  *(v97 + 4) = v99;
                  *(v97 + 5) = v100;
                  *(v97 + 3) = v98;
                  v63 = v67;
                }

                if (!v90)
                {
                  break;
                }

                --v90;
              }

              swift_bridgeObjectRelease_n();
            }

            v101 = v142;
            *(v1 + 32) = v141;
            *(v1 + 48) = v101;
            *(v1 + 64) = v143;
            v102 = v140;
            *v1 = v139;
            *(v1 + 16) = v102;
            *(v1 + 80) = v63;
            *(v1 + 88) = v64;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
            }

            v104 = *(v8 + 2);
            v103 = *(v8 + 3);
            if (v104 >= v103 >> 1)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v8);
            }

            *(v8 + 2) = v104 + 1;
            *&v8[8 * v104 + 32] = v60;
            goto LABEL_57;
          }

          v125 = v141;
          v126 = v142;
          v127 = v143;
          v123 = v139;
          v124 = v140;
          *&v128 = v63;
          BYTE8(v128) = v64;
          outlined destroy of Parser(&v123);
          v72 = *(v1 + 16);
          if (v72 >> 14 < v20 >> 14)
          {
            goto LABEL_98;
          }

          v73 = *(&v137 + 1);
          v113 = v138;
          v74 = v137;
          v75 = v132;
          v76 = swift_allocObject();
          *(v76 + 16) = v75;
          *(v76 + 24) = v65;
          *(v76 + 32) = v133;
          *(v76 + 48) = v134;
          *(v76 + 56) = v66;
          v77 = v136;
          *(v76 + 64) = v135;
          *(v76 + 80) = v77;
          *(v76 + 96) = v74;
          *(v76 + 104) = v73;
          *(v76 + 112) = v113;
          *(v76 + 120) = v60;
          *(v76 + 128) = v20;
          *(v76 + 136) = v72;
          *(v76 + 144) = *(&v113 + 1);
          v8 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
          }

          v32 = *(v8 + 2);
          v78 = *(v8 + 3);
          v33 = v32 + 1;
          if (v32 >= v78 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v32 + 1, 1, v8);
          }

          v34 = v76 | 0x4000000000000000;
        }
      }

LABEL_56:
      *(v8 + 2) = v33;
      *&v8[8 * v32 + 32] = v34;
LABEL_57:
      v79 = *v1;
      v80 = *(v1 + 8);
      v81 = *(v1 + 16);
      v82 = *(v1 + 24);
      v83 = String.subscript.getter();
      v85 = v84;

      if ((v83 ^ v85) < 0x4000)
      {
        goto LABEL_83;
      }
    }

    v28 = *(v1 + 16);
    if (v28 >> 14 < v20 >> 14)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v29 = v132;
    goto LABEL_18;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v9)
  {
    goto LABEL_84;
  }

LABEL_89:
  v109 = swift_allocObject();
  v110 = *(v1 + 16);
  if (v110 >> 14 < v115 >> 14)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v111 = v109;
  *(v109 + 16) = v115;
  *(v109 + 24) = v110;

  v107 = v111 | 0xB000000000000000;
LABEL_91:
  *a1 = v107;
}

void Parser.parseQuantifierOperand()(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AST.Atom.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for AST.Atom(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 16);
  Parser.lexKnownConditionalStart()(v79);
  v86 = v79[6];
  v87 = v79[7];
  v88 = v79[8];
  v82 = v79[2];
  v83 = v79[3];
  v84 = v79[4];
  v85 = v79[5];
  v80 = v79[0];
  v81 = v79[1];
  if (sub_1C0C7C864(&v80) != 1)
  {
    v72[1] = v86;
    v73 = v87;
    v74 = v88;
    v69 = v82;
    v70 = v83;
    v71 = v84;
    v72[0] = v85;
    v67 = v80;
    v68 = v81;
    Parser.parseConditionalBranches(start:_:)(v19, &v67, &v51);
    outlined destroy of AST.Atom.Callout.OnigurumaTag?(v79);
    v26 = v51;
LABEL_11:
    *a1 = v26;
    return;
  }

  v50 = v18;
  Parser.lexGroupConditionalStart()(v76);
  if (v77 != 0xFF)
  {
    v53 = v76[2];
    v54 = v76[3];
    v55 = v76[4];
    v51 = v76[0];
    v52 = v76[1];
    *(v56 + 8) = v78;
    *&v56[0] = v77;
    Parser.parseGroupBody(start:_:)(v78, &v51, &v67);
    outlined destroy of AST.Atom.Callout.OnigurumaTag?(v76);
    v63 = v71;
    v64 = v72[0];
    v65 = v72[1];
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v27 = v73;
    v66 = v73;
    _s12_RegexParser3ASTV11ConditionalV9ConditionV4KindOWOi2_(&v59);
    v55 = v63;
    v56[0] = v64;
    v56[1] = v65;
    v57 = v66;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v58 = v27;
    Parser.parseConditionalBranches(start:_:)(v19, &v51, &v75);
    v72[1] = v56[1];
    v73 = v57;
    v74 = v58;
    v69 = v53;
    v70 = v54;
    v71 = v55;
    v72[0] = v56[0];
    v67 = v51;
    v68 = v52;
    sub_1C0C61070(&v67);
    v26 = v75;
    goto LABEL_11;
  }

  v48 = v13;
  v49 = a1;
  v20 = *(v1 + 16);
  v21 = specialized Parser.tryEat<A>(sequence:)(2088648488, 0xE400000000000000);
  if (v21 & 1) != 0 || (specialized Parser.tryEat<A>(sequence:)(8273704, 0xE300000000000000))
  {
    v22 = *(v1 + 16);
    if (v22 >> 14 >= v20 >> 14)
    {
      v23 = swift_allocObject();
      LOBYTE(v67) = (v21 & 1) == 0;
      *(&v67 + 1) = v20;
      *&v68 = v22;
      Parser.parseAbsentFunctionBody(_:)(&v67, v23 + 16);
      v24 = 0xA000000000000000;
LABEL_7:
      v25 = v23 | v24;
LABEL_8:
      *v49 = v25;
      return;
    }

    __break(1u);
  }

  else
  {
    Parser.lexGroupStart()(&v67);
    v28 = *&v72[0];
    v29 = v48;
    if (LOBYTE(v72[0]) != 0xFF)
    {
      v31 = swift_allocObject();
      v53 = v69;
      v54 = v70;
      v55 = v71;
      v51 = v67;
      v52 = v68;
      *&v56[0] = v28;
      *(v56 + 8) = *(v72 + 8);
      Parser.parseGroupBody(start:_:)(v19, &v51, v31 + 16);
      outlined destroy of AST.Atom.Callout.OnigurumaTag?(&v67);
      v25 = v31 | 0x2000000000000000;
      goto LABEL_8;
    }

    Parser.lexCustomCCStart()(&v51);
    v30 = v51;
    if (v51 != 2)
    {
      v33 = *(&v51 + 1);
      v32 = v52;
      v23 = swift_allocObject();
      LOBYTE(v51) = v30 & 1;
      *(&v51 + 1) = v33;
      *&v52 = v32;
      Parser.parseCustomCharacterClass(_:)(&v51, (v23 + 16));
      v24 = 0x9000000000000000;
      goto LABEL_7;
    }

    Parser.lexAtom()(v12);
    if ((*(v14 + 48))(v12, 1, v29) == 1)
    {
      outlined destroy of _ASTParent?(v12, &_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
      v25 = 0xF000000000000007;
      goto LABEL_8;
    }

    v34 = v50;
    outlined init with take of AST.Atom.Kind(v12, v50, type metadata accessor for AST.Atom);
    outlined init with copy of AST.CustomCharacterClass.Member(v34, v7, type metadata accessor for AST.Atom.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = v49;
    if (EnumCaseMultiPayload == 13)
    {
      v38 = v7[1];
      v51 = *v7;
      v52 = v38;
      v39 = v7[3];
      v53 = v7[2];
      v54 = v39;
      *&v59 = 128;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v36);
      *(&v47 - 16) = 3;
      mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v59, partial apply for closure #1 in mapOption #2 (_:_:) in Parser.applySyntaxOptions(of:isScoped:), (&v47 - 4), &v51, v1);
      if ((*(v1 + 64) & 0x40) != 0)
      {
        v40 = (*(&v54 + 1) + 32);
        v41 = *(*(&v54 + 1) + 16) + 1;
        while (--v41)
        {
          v42 = v40 + 24;
          v43 = *v40 & 0xFE;
          v40 += 24;
          if (v43 == 6)
          {
            v59 = 0xDuLL;
            v60 = 0uLL;
            LOBYTE(v61) = 36;
            v44 = *(v42 - 1);
            goto LABEL_29;
          }
        }

        if (v52)
        {
          goto LABEL_30;
        }

        v59 = 0xEuLL;
        v60 = 0uLL;
        LOBYTE(v61) = 36;
        v44 = v51;
LABEL_29:
        v75 = v44;
        Diagnostics.error(_:at:)(&v59, &v75);
      }

      else
      {
        *&v59 = 3;
        mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v59, specialized implicit closure #3 in Parser.applySyntaxOptions(of:isScoped:), 0, &v51, v1);
      }

LABEL_30:
      outlined destroy of AST.MatchingOptionSequence(&v51);
    }

    else
    {
      outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom.Kind);
    }

    v45 = swift_allocBox();
    outlined init with take of AST.Atom.Kind(v50, v46, type metadata accessor for AST.Atom);
    *v37 = v45 | 0x8000000000000000;
  }
}

uint64_t Parser.parseConditionalBranches(start:_:)@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[7];
  v51 = a2[6];
  v52 = v6;
  v53 = a2[8];
  v7 = a2[3];
  v47 = a2[2];
  v48 = v7;
  v8 = a2[5];
  v49 = a2[4];
  v50 = v8;
  v9 = a2[1];
  v45 = *a2;
  v46 = v9;
  result = Parser.parseNode()(&v36);
  v11 = v36;
  v12 = v36 >> 60;
  if (v36 >> 60)
  {
    v13 = swift_allocObject();
    v14 = 0;
    v15 = *(v3 + 16);
    *(v13 + 16) = v15;
    *(v13 + 24) = v15;
    v34 = v13 | 0xB000000000000000;
    v35 = 0;
    v16 = v11;
LABEL_10:
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v25))
    {
      v39 = xmmword_1C0C7E3A0;
      v40 = 0;
      v41 = 0;
      v42 = 3;
      *&v36 = *(v3 + 16);
      *(&v36 + 1) = v36;
      Diagnostics.error(_:at:)(&v39, &v36);
    }

    result = swift_allocObject();
    v26 = *(v3 + 16);
    if (v26 >> 14 >= a1 >> 14)
    {
      *(result + 16) = a1;
      *(result + 24) = v26;
      v27 = v52;
      *(result + 128) = v51;
      *(result + 144) = v27;
      *(result + 160) = v53;
      v28 = v48;
      *(result + 64) = v47;
      *(result + 80) = v28;
      v29 = v50;
      *(result + 96) = v49;
      *(result + 112) = v29;
      v30 = v46;
      *(result + 32) = v45;
      *(result + 48) = v30;
      *(result + 176) = v16;
      *(result + 184) = v14;
      *(result + 192) = v35;
      *(result + 200) = v12 != 0;
      *(result + 208) = v34;
      *a3 = result | 0x3000000000000000;
      return outlined init with copy of AST.Conditional.Condition(&v45, &v36);
    }

    __break(1u);
    goto LABEL_15;
  }

  v17 = *(v36 + 24);
  if (!v17[2])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = *(v36 + 16);
  v19 = v18[2];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v19 != 1)
  {
    v14 = v17[4];
    v16 = v18[4];
    v20 = v18[5];
    v34 = v20;
    v35 = v17[5];
    if (v19 == 2)
    {
    }

    else
    {
      v43[0] = v18[2];
      memset(&v43[1], 0, 24);
      v44 = 5;
      AST.Node._associatedValue.getter(&v36);
      v32 = a1;
      v33 = a3;
      v22 = v37;
      v21 = v38;
      __swift_project_boxed_opaque_existential_1Tm(&v36, v37);
      v31 = *(v21 + 16);

      v23 = v22;
      v24 = v21;
      a1 = v32;
      a3 = v33;
      v31(&v39, v23, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
      v36 = v39;
      Diagnostics.error(_:at:)(v43, &v36);
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(uint64_t *a1, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if ((*(a4 + 16) & 1) == 0)
  {
    v10 = *(a5 + 64);
    if ((v10 & v9) != 0)
    {
      *(a5 + 64) = v10 & ~v9;
    }
  }

  if (specialized Sequence.contains(where:)(a2, a3, *(a4 + 24)))
  {
    v11 = *(a5 + 64);
    if ((v9 & ~v11) != 0)
    {
      *(a5 + 64) = v11 | v9;
    }
  }

  result = specialized Sequence.contains(where:)(a2, a3, *(a4 + 56));
  if (result)
  {
    v13 = *(a5 + 64);
    if ((v13 & v9) != 0)
    {
      *(a5 + 64) = v13 & ~v9;
    }
  }

  return result;
}

void Parser.parseGroupBody(start:_:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[5];
  v53 = a2[4];
  v54 = v5;
  v55 = *(a2 + 12);
  v6 = a2[1];
  v49 = *a2;
  v50 = v6;
  v7 = a2[3];
  v51 = a2[2];
  v52 = v7;
  v8 = v3[5];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v11 = a1;
  v3[5] = v10;
  v12 = v49;
  v13 = v54;
  if (v54 == 1)
  {
    if (!*(&v49 + 1))
    {
      v14 = v3[8];
      goto LABEL_11;
    }
  }

  else
  {
    if (v54)
    {
      goto LABEL_8;
    }

    outlined init with copy of Source.Located<AST.Group.Kind>(&v49, &v39);
  }

  specialized Set._Variant.insert(_:)(&v39, v12, *(&v12 + 1));

  v13 = v54;
LABEL_8:
  v14 = v3[8];
  if (v13 == 2)
  {
    v48[0] = v49;
    v48[1] = v50;
    v48[2] = v51;
    v48[3] = v52;
    *&v39 = 128;
    MEMORY[0x1EEE9AC00](a1, a2);
    v34[16] = 3;
    mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v39, closure #1 in mapOption #2 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)partial apply, v34, v48, v3);
    *&v39 = 3;
    mapOption #1 (_:_:) in Parser.applySyntaxOptions(of:isScoped:)(&v39, specialized implicit closure #3 in Parser.applySyntaxOptions(of:isScoped:), 0, v48, v3);
  }

LABEL_11:
  v15 = (~v14 & 3) == 0 && (~*(v3 + 16) & 3) != 0;
  Parser.parseNode()(&v39);
  v16 = v39;
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v17))
  {
    v44 = xmmword_1C0C7E3A0;
    v45 = 0;
    v46 = 0;
    v47 = 3;
    *&v39 = v3[2];
    *(&v39 + 1) = v39;
    Diagnostics.error(_:at:)(&v44, &v39);
  }

  v18 = v3[2];
  if (v18 >> 14 < v11 >> 14)
  {
    goto LABEL_23;
  }

  if (v15 && (v3[8] & 0x40) != 0)
  {
    v19 = *v3;
    v35 = v3[1];
    v36 = v19;
    v38 = v16;
    AST.Node._associatedValue.getter(&v39);
    v20 = v11;
    v37 = v14;
    v21 = v40;
    v22 = v41;
    __swift_project_boxed_opaque_existential_1Tm(&v39, v40);
    v23 = *(v22 + 16);
    v24 = v21;
    v11 = v20;
    v25 = v22;
    v14 = v37;
    v23(v42, v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    v26 = String.subscript.getter();
    LOBYTE(v20) = specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(v26, v27, v28, v29);

    if (v20)
    {
      v42[0] = 4;
      memset(&v42[1], 0, 24);
      v43 = 36;
      *&v39 = v11;
      *(&v39 + 1) = v18;
      Diagnostics.error(_:at:)(v42, &v39);
    }
  }

  v30 = v54;
  *(a3 + 64) = v53;
  *(a3 + 80) = v30;
  v31 = v55;
  v32 = v50;
  *a3 = v49;
  *(a3 + 16) = v32;
  v33 = v52;
  *(a3 + 32) = v51;
  *(a3 + 48) = v33;
  *(a3 + 96) = v31;
  *(a3 + 104) = v16;
  *(a3 + 112) = v11;
  *(a3 + 120) = v18;
  v3[8] = v14;
  outlined init with copy of Source.Located<AST.Group.Kind>(&v49, &v39);
}

void Parser.parseAbsentFunctionBody(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = *(a1 + 8);
  if (*a1 == 1)
  {
    Parser.parseNode()(&v33);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v33;
LABEL_19:
    v24._countAndFlagsBits = 41;
    v24._object = 0xE100000000000000;
    if (!Parser.tryEat(_:)(v24))
    {
      v33 = xmmword_1C0C7E3A0;
      v34 = 0uLL;
      LOBYTE(v35) = 3;
      *&v30 = *(v3 + 2);
      *(&v30 + 1) = v30;
      Diagnostics.error(_:at:)(&v33, &v30);
    }

    v25 = *(v3 + 2);
    if (v25 >> 14 >= v28 >> 14)
    {
      *(a2 + 16) = v8;
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      *(a2 + 40) = v7;
      *a2 = v28;
      *(a2 + 48) = v28;
      *(a2 + 56) = v25;
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  v9 = v2[1];
  v33 = *v2;
  v10 = v2[2];
  v11 = v2[3];
  v34 = v9;
  v35 = v10;
  v12 = v2[4];
  v36 = v11;
  v37[0] = v12;
  *(v37 + 9) = *(v2 + 73);
  outlined init with copy of Parser(&v33, &v30);
  v13 = String.subscript.getter();
  if (!((v13 ^ v14) >> 14))
  {

    outlined destroy of Parser(&v33);
    goto LABEL_5;
  }

  v19 = Substring.subscript.getter();
  v21 = v20;

  outlined destroy of Parser(&v33);
  if (v19 == 41 && v21 == 0xE100000000000000)
  {

LABEL_16:
    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 6;
    goto LABEL_19;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  Parser.parseNode()(&v30);
  if (v30 >> 60)
  {
    v5 = 0;
    v6 = 0;
    v7 = 4;
    v8 = v30;
    goto LABEL_19;
  }

  v15 = *(v30 + 16);
  v16 = v15[2];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(v30 + 24);
  if (!v17[2])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16 != 1)
  {
    v5 = v17[4];
    v6 = v17[5];
    v8 = v15[4];
    v18 = v15[5];
    if (v16 == 2)
    {
    }

    else
    {
      v38[0] = v15[2];
      memset(&v38[1], 0, 24);
      v39 = 7;
      AST.Node._associatedValue.getter(&v30);
      v23 = v32;
      v27 = v31;
      __swift_project_boxed_opaque_existential_1Tm(&v30, v31);
      v26 = *(v23 + 16);

      v26(&v29, v27, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(&v30);
      v30 = v29;
      Diagnostics.error(_:at:)(v38, &v30);
    }

    v7 = v18 | 2;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

void Parser.parseCustomCharacterClass(_:)(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v79 - v12);
  v14 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v93 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v92 = &v79 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v83 = &v79 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v79 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v79 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v90 = &v79 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v40 = &v79 - v39;
  MEMORY[0x1EEE9AC00](v38, v41);
  v91 = &v79 - v42;
  v80 = *a1;
  v43 = *(a1 + 2);
  v85 = *(a1 + 1);
  v84 = v43;
  v81 = *(v3 + 32);
  *(v3 + 32) = 1;
  v44 = MEMORY[0x1E69E7CC0];
  into._rawValue = MEMORY[0x1E69E7CC0];
  Parser.parseCCCMember()(v13);
  v95 = *(v15 + 48);
  v96 = v15 + 48;
  if (v95(v13, 1, v14) != 1)
  {
    v89 = v33;
    v45 = v40;
    do
    {
      v46 = v91;
      outlined init with take of AST.Atom.Kind(v13, v91, type metadata accessor for AST.CustomCharacterClass.Member);
      outlined init with take of AST.Atom.Kind(v46, v40, type metadata accessor for AST.CustomCharacterClass.Member);
      rawValue = into._rawValue;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
      }

      v49 = rawValue[2];
      v48 = rawValue[3];
      if (v49 >= v48 >> 1)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, rawValue);
      }

      rawValue[2] = v49 + 1;
      v40 = v45;
      outlined init with take of AST.Atom.Kind(v45, rawValue + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v49, type metadata accessor for AST.CustomCharacterClass.Member);
      into._rawValue = rawValue;
      Parser.parsePotentialCCRange(into:)(&into);
      Parser.parseCCCMember()(v13);
    }

    while (v95(v13, 1, v14) != 1);
    v44 = into._rawValue;
    v33 = v89;
  }

  outlined destroy of _ASTParent?(v13, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
  v50 = *(v44 + 2);
  if (v50)
  {
    v51 = 0;
    while (v51 < *(v44 + 2))
    {
      v52 = v90;
      outlined init with copy of AST.CustomCharacterClass.Member(&v44[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v51], v90, type metadata accessor for AST.CustomCharacterClass.Member);
      outlined init with take of AST.Atom.Kind(v52, v33, type metadata accessor for AST.CustomCharacterClass.Member);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        outlined destroy of AST.CustomCharacterClass.Member(v33, type metadata accessor for AST.CustomCharacterClass.Member);
        goto LABEL_16;
      }

      ++v51;
      outlined destroy of AST.CustomCharacterClass.Member(v33, type metadata accessor for AST.CustomCharacterClass.Member);
      if (v50 == v51)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_41;
  }

LABEL_14:
  v105[0] = 7;
  memset(&v105[1], 0, 24);
  v106 = 36;
  *&v101 = v85;
  *(&v101 + 1) = v84;
  Diagnostics.error(_:at:)(v105, &v101);
LABEL_16:
  Parser.lexCustomCCBinOp()(&v101);
  v53 = v101;
  if (v101 != 3)
  {
    v61 = *(&v101 + 1);
    v60 = v102;
    v86 = xmmword_1C0C7E2F0;
    v87 = v3;
    v94 = v14;
    while (1)
    {
      v88 = v61;
      v89 = v60;
      v90 = v53;
      v91 = v44;
      v66 = MEMORY[0x1E69E7CC0];
      *&v97 = MEMORY[0x1E69E7CC0];
      Parser.parseCCCMember()(v10);
      v67 = v95(v10, 1, v14);
      v68 = v66;
      if (v67 != 1)
      {
        v69 = v94;
        v70 = v83;
        do
        {
          outlined init with take of AST.Atom.Kind(v10, v29, type metadata accessor for AST.CustomCharacterClass.Member);
          outlined init with take of AST.Atom.Kind(v29, v70, type metadata accessor for AST.CustomCharacterClass.Member);
          v71 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71[2] + 1, 1, v71);
          }

          v73 = v71[2];
          v72 = v71[3];
          if (v73 >= v72 >> 1)
          {
            v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1, v71);
          }

          v71[2] = v73 + 1;
          outlined init with take of AST.Atom.Kind(v70, v71 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v73, type metadata accessor for AST.CustomCharacterClass.Member);
          *&v97 = v71;
          Parser.parsePotentialCCRange(into:)(&v97);
          Parser.parseCCCMember()(v10);
        }

        while (v95(v10, 1, v69) != 1);
        v68 = v97;
      }

      outlined destroy of _ASTParent?(v10, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
      v74 = *(v68 + 16);
      if (v74)
      {
        break;
      }

LABEL_23:
      v99[0] = 7;
      memset(&v99[1], 0, 24);
      v100 = 36;
      *&v101 = v85;
      *(&v101 + 1) = v84;
      v3 = v87;
      Diagnostics.error(_:at:)(v99, &v101);
      v62 = *(v15 + 72);
      v63 = (*(v15 + 80) + 32) & ~*(v15 + 80);
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV20CustomCharacterClassV6MemberOGMR);
      v54 = swift_allocObject();
      *(v54 + 16) = v86;
      v64 = v54 + v63;
      *v64 = v91;
      *(v64 + 8) = v90;
      v65 = v89;
      *(v64 + 16) = v88;
      *(v64 + 24) = v65;
      *(v64 + 32) = v68;
      v14 = v94;
      swift_storeEnumTagMultiPayload();
      Parser.lexCustomCCBinOp()(&v101);
      v53 = v101;
      v61 = *(&v101 + 1);
      v60 = v102;
      v44 = v54;
      if (v101 == 3)
      {
        goto LABEL_18;
      }
    }

    v75 = 0;
    while (v75 < *(v68 + 16))
    {
      v63 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v76 = v92;
      outlined init with copy of AST.CustomCharacterClass.Member(v68 + v63 + *(v15 + 72) * v75, v92, type metadata accessor for AST.CustomCharacterClass.Member);
      v77 = v76;
      v78 = v93;
      outlined init with take of AST.Atom.Kind(v77, v93, type metadata accessor for AST.CustomCharacterClass.Member);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        outlined destroy of AST.CustomCharacterClass.Member(v78, type metadata accessor for AST.CustomCharacterClass.Member);
        v3 = v87;
        goto LABEL_24;
      }

      ++v75;
      outlined destroy of AST.CustomCharacterClass.Member(v78, type metadata accessor for AST.CustomCharacterClass.Member);
      if (v74 == v75)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v54 = v44;
LABEL_18:
  v55._countAndFlagsBits = 93;
  v55._object = 0xE100000000000000;
  if (!Parser.tryEat(_:)(v55))
  {
    v101 = xmmword_1C0C7E3E0;
    v102 = 0;
    v103 = 0;
    v104 = 3;
    *&v97 = *(v3 + 16);
    *(&v97 + 1) = v97;
    Diagnostics.error(_:at:)(&v101, &v97);
  }

  v56 = *(v3 + 16);
  v57 = v85;
  v58 = v82;
  if (v56 >> 14 >= v85 >> 14)
  {
    *v82 = v80;
    v59 = v84;
    v58[1] = v57;
    v58[2] = v59;
    v58[3] = v54;
    v58[4] = v57;
    v58[5] = v56;
    *(v3 + 32) = v81;
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t Parser.parseCCCMember()@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v54 - v6;
  v8 = type metadata accessor for AST.Atom(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v18 = String.subscript.getter();
  v20 = v19;

  if ((v18 ^ v20) < 0x4000)
  {
    goto LABEL_12;
  }

  v54 = v9;
  v55 = v7;
  v21 = *(v1 + 1);
  v63[0] = *v1;
  v63[1] = v21;
  v22 = *(v1 + 3);
  v63[2] = *(v1 + 2);
  v63[3] = v22;
  v64[0] = *(v1 + 4);
  *(v64 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v63, v61);
  v23 = String.subscript.getter();
  if ((v23 ^ v24) >> 14)
  {
    v35 = Substring.subscript.getter();
    v37 = v36;

    outlined destroy of Parser(v63);
    if (v35 == 93 && v37 == 0xE100000000000000)
    {

      goto LABEL_12;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_12;
    }
  }

  else
  {

    outlined destroy of Parser(v63);
  }

  v56 = a1;
  v25 = *(v1 + 1);
  v61[0] = *v1;
  v26 = *(v1 + 2);
  v27 = *(v1 + 3);
  v61[1] = v25;
  v61[2] = v26;
  v28 = *(v1 + 4);
  v61[3] = v27;
  v62[0] = v28;
  *(v62 + 9) = *(v1 + 73);
  outlined init with copy of Parser(v61, &v59);
  v29 = String.subscript.getter();
  v31 = specialized Sequence<>.starts<A>(with:)(11565, 0xE200000000000000, v29, v30);

  if (v31 & 1) != 0 || (v32 = String.subscript.getter(), v34 = specialized Sequence<>.starts<A>(with:)(32382, 0xE200000000000000, v32, v33), , (v34))
  {
    outlined destroy of Parser(v61);
  }

  else
  {
    v43 = String.subscript.getter();
    v45 = specialized Sequence<>.starts<A>(with:)(9766, 0xE200000000000000, v43, v44);

    outlined destroy of Parser(v61);
    if ((v45 & 1) == 0)
    {
      Parser.lexCustomCCStart()(&v59);
      if (v59 == 2)
      {
        Parser.lexQuote()(closure #1 in Parser.lexQuote(), &v59);
        v46 = *&v60[0];
        v47 = v56;
        if (*&v60[0])
        {
          v48 = *(v60 + 8);
          *v56 = v59;
          *(v47 + 8) = v46;
          *(v47 + 16) = v48;
          v49 = type metadata accessor for AST.CustomCharacterClass.Member(0);
        }

        else
        {
          Parser.lexTrivia()(&v59);
          v51 = *&v60[0];
          if (*&v60[0])
          {
            v52 = *(v60 + 8);
            *v47 = v59;
            *(v47 + 8) = v51;
            *(v47 + 16) = v52;
            v49 = type metadata accessor for AST.CustomCharacterClass.Member(0);
          }

          else
          {
            v53 = v55;
            Parser.lexAtom()(v55);
            if ((*(v54 + 48))(v53, 1, v8) == 1)
            {
              outlined destroy of _ASTParent?(v53, &_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
              v39 = type metadata accessor for AST.CustomCharacterClass.Member(0);
              v40 = *(*(v39 - 8) + 56);
              v41 = v47;
              return v40(v41, 1, 1, v39);
            }

            outlined init with take of AST.Atom.Kind(v53, v13, type metadata accessor for AST.Atom);
            outlined init with take of AST.Atom.Kind(v13, v47, type metadata accessor for AST.Atom);
            v49 = type metadata accessor for AST.CustomCharacterClass.Member(0);
          }
        }
      }

      else
      {
        v57[0] = v59 & 1;
        v58 = v60[0];
        Parser.parseCustomCharacterClass(_:)(&v59, v57);
        v50 = *&v60[1];
        v47 = v56;
        *v56 = v59;
        *(v47 + 8) = v60[0];
        *(v47 + 24) = v50;
        *(v47 + 32) = *(&v60[1] + 8);
        v49 = type metadata accessor for AST.CustomCharacterClass.Member(0);
      }

      swift_storeEnumTagMultiPayload();
      return (*(*(v49 - 8) + 56))(v47, 0, 1, v49);
    }
  }

  a1 = v56;
LABEL_12:
  v39 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v40 = *(*(v39 - 8) + 56);
  v41 = a1;
  return v40(v41, 1, 1, v39);
}

Swift::Void __swiftcall Parser.parsePotentialCCRange(into:)(Swift::OpaquePointer *into)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v196 - v11;
  v212 = type metadata accessor for AST.Atom(0);
  v210 = *(v212 - 8);
  v13 = *(v210 + 64);
  v15 = MEMORY[0x1EEE9AC00](v212, v14);
  v17 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v209 = &v196 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v211 = (&v196 - v23);
  v24 = type metadata accessor for Unicode.Scalar.Properties();
  v25 = *(v24 - 8);
  v228 = v24;
  v229 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  v227 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, &v196 - v39);
  v42 = MEMORY[0x1EEE9AC00](&v196 - v40, v41);
  v213 = (&v196 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = MEMORY[0x1EEE9AC00](v45, v46);
  v224 = (&v196 - v48);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v52 = &v196 - v51;
  v54 = MEMORY[0x1EEE9AC00](v50, v53);
  v62 = &v196 - v58;
  v63 = into;
  rawValue = into->_rawValue;
  v65 = rawValue[2];
  if (v65)
  {
    v207 = v60;
    v208 = v57;
    v204 = v54;
    v205 = v55;
    v200 = v9;
    v201 = v12;
    v206 = v61;
    v199 = v59;
    v202 = v17;
    v203 = v56;
    v66 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v67 = *(v56 + 72);
    outlined init with copy of AST.CustomCharacterClass.Member(rawValue + v66 + v67 * (v65 - 1), &v196 - v58, type metadata accessor for AST.CustomCharacterClass.Member);
    outlined init with copy of AST.CustomCharacterClass.Member(v62, v52, type metadata accessor for AST.CustomCharacterClass.Member);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of AST.CustomCharacterClass.Member(v62, type metadata accessor for AST.CustomCharacterClass.Member);
      v68 = v52;
    }

    else
    {
      v198 = v62;
      outlined destroy of AST.CustomCharacterClass.Member(v52, type metadata accessor for AST.CustomCharacterClass.Member);
      v197 = rawValue[2];
      v226 = (v229 + 8);
      v69 = v2;
      v223 = v2;
      v70 = v63;
      v217 = v63;
      v218 = v29;
      v215 = v66;
      v216 = v67;
      while (1)
      {
        v225 = rawValue;
        v71 = *(v69 + 16);
        closure #1 in Parser.lexComment()(v69, &v244);
        v72 = *(&v244 + 1);
        if (!*(&v244 + 1))
        {
          break;
        }

        v73 = *(v69 + 16);
        if (v73 >> 14 < v71 >> 14)
        {
          __break(1u);
LABEL_99:
          outlined init with take of AST.Atom.Kind(v66, v71, type metadata accessor for AST.Atom);
          v166 = v225[2] - v197;
          v167 = specialized BidirectionalCollection.suffix(_:)(v166 + 1, v225);
          v29 = (v168 >> 1) - v80;
          v81 = (v168 >> 1) <= v80;
          v228 = v167;
          v229 = v166;
          if (v168 >> 1 == v80)
          {

            v169 = MEMORY[0x1E69E7CC0];
            v170 = v214;
LABEL_101:
            swift_unknownObjectRelease();
            v171 = v217;
            specialized RangeReplaceableCollection<>.removeLast(_:)(v229 + 1);
            v172 = v199;
            outlined init with take of AST.Atom.Kind(v209, v199, type metadata accessor for AST.Atom);
            v173 = type metadata accessor for AST.CustomCharacterClass.Range(0);
            outlined init with take of AST.Atom.Kind(v202, v172 + v173[6], type metadata accessor for AST.Atom);
            v174 = (v172 + v173[5]);
            v175 = v196;
            *v174 = v170;
            v174[1] = v175;
            *(v172 + v173[7]) = v169;
            swift_storeEnumTagMultiPayload();
            v176 = v171->_rawValue;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v176[2] + 1, 1, v176);
            }

            v178 = v176[2];
            v177 = v176[3];
            if (v178 >= v177 >> 1)
            {
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v177 > 1, v178 + 1, 1, v176);
            }

            v176[2] = v178 + 1;
            outlined init with take of AST.Atom.Kind(v199, v176 + v215 + v178 * v216, type metadata accessor for AST.CustomCharacterClass.Member);
            v171->_rawValue = v176;
            v179 = v223[3];
            v239 = v223[2];
            v240 = v179;
            v241[0] = v223[4];
            v180 = v241[0];
            *(v241 + 9) = *(v223 + 73);
            v181 = v223[1];
            v238[0] = *v223;
            v238[1] = v181;
            *(v235 + 9) = *(v241 + 9);
            v233 = v239;
            v234 = v179;
            v235[0] = v180;
            v231 = v238[0];
            v232 = v181;
            outlined init with copy of Parser(v238, v230);
            closure #1 in Parser.canLexDotNetCharClassSubtraction()(&v231, &v236);
            v182 = *&v235[1];
            v183 = BYTE8(v235[1]);
            v242[2] = v233;
            v242[3] = v234;
            v243[0] = v235[0];
            *(v243 + 9) = *(v235 + 9);
            v242[0] = v231;
            v242[1] = v232;

            outlined destroy of Parser(v242);
            *&v230[0] = v182;
            BYTE8(v230[0]) = v183;
            v249.diags._rawValue = v230;
            Diagnostics.appendNewFatalErrors(from:)(v249);

            if ((v237 & 1) == 0)
            {
              v231 = 0x12uLL;
              v232 = 0uLL;
              LOBYTE(v233) = 36;
              v230[0] = v236;
              Diagnostics.error(_:at:)(&v231, v230);
            }

            return;
          }

LABEL_110:
          v170 = v214;
          if (v81)
          {
            __break(1u);
            return;
          }

          v184 = v79;
          v185 = v80;

          v186 = v184 + v185 * v67;
          v169 = MEMORY[0x1E69E7CC0];
          v188 = v206;
          v187 = v207;
          do
          {
            outlined init with copy of AST.CustomCharacterClass.Member(v186, v188, type metadata accessor for AST.CustomCharacterClass.Member);
            outlined init with take of AST.Atom.Kind(v188, v187, type metadata accessor for AST.CustomCharacterClass.Member);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              v189 = *v187;
              v190 = v187[1];
              v192 = v187[2];
              v191 = v187[3];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR);
              }

              v194 = *(v169 + 2);
              v193 = *(v169 + 3);
              if (v194 >= v193 >> 1)
              {
                v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v193 > 1), v194 + 1, 1, v169, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV6TriviaVGMR);
              }

              *(v169 + 2) = v194 + 1;
              v195 = &v169[32 * v194];
              *(v195 + 4) = v189;
              *(v195 + 5) = v190;
              *(v195 + 6) = v192;
              *(v195 + 7) = v191;
              v67 = v216;
              v188 = v206;
              v187 = v207;
              v170 = v214;
            }

            else
            {
              outlined destroy of AST.CustomCharacterClass.Member(v187, type metadata accessor for AST.CustomCharacterClass.Member);
            }

            v186 += v67;
            --v29;
          }

          while (v29);
          goto LABEL_101;
        }

        v74 = v244;
LABEL_35:
        v103 = v224;
        *v224 = v74;
        v103[1] = v72;
        v103[2] = v71;
        v103[3] = v73;
        swift_storeEnumTagMultiPayload();
        rawValue = v225;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
        }

        v69 = v223;
        v105 = rawValue[2];
        v104 = rawValue[3];
        if (v105 >= v104 >> 1)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1, rawValue);
        }

        rawValue[2] = v105 + 1;
        outlined init with take of AST.Atom.Kind(v224, rawValue + v66 + v105 * v67, type metadata accessor for AST.CustomCharacterClass.Member);
        *v70 = rawValue;
      }

      if (*(v69 + 64))
      {
        v75 = *v223;
        v76 = *(v223 + 1);
        v77 = *(v223 + 3);
        v222 = *(v223 + 2);
        v78 = String.subscript.getter();
        v81 = (v79 >> 14) <= (v78 >> 14);
        if (v79 >> 14 < v78 >> 14)
        {
          __break(1u);
LABEL_108:
          __break(1u);
        }

        else
        {
          v219 = v76;
          v220 = v75;
          v221 = v77;
          v82 = Substring.subscript.getter();
          v67 = v83;

          v84 = v82 >> 14;
          v229 = v67 >> 14;
          if (v82 >> 14 == v67 >> 14)
          {
            goto LABEL_28;
          }

          v29 = v82;
          v214 = v82 >> 14;
          do
          {
            v85 = Substring.subscript.getter();
            if ((v86 & 0x2000000000000000) != 0)
            {
              v87 = HIBYTE(v86) & 0xF;
            }

            else
            {
              v87 = v85 & 0xFFFFFFFFFFFFLL;
            }

            if (!v87)
            {
              __break(1u);
LABEL_88:

              v70 = v217;
              v29 = v218;
              v92 = v215;
              v67 = v216;
LABEL_89:
              v151 = v211;
              Parser.parseCCCMember()(v211);
              if ((*(v203 + 48))(v151, 1, v29) == 1)
              {
                outlined destroy of AST.CustomCharacterClass.Member(v198, type metadata accessor for AST.CustomCharacterClass.Member);
                outlined destroy of _ASTParent?(v151, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMd, &_s12_RegexParser3ASTV20CustomCharacterClassV6MemberOSgMR);
                return;
              }

              v152 = v204;
              outlined init with take of AST.Atom.Kind(v151, v204, type metadata accessor for AST.CustomCharacterClass.Member);
              outlined init with copy of AST.CustomCharacterClass.Member(v152, v205, type metadata accessor for AST.CustomCharacterClass.Member);
              v154 = v225[2];
              v153 = v225[3];
              if (v154 >= v153 >> 1)
              {
                v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v153 > 1, v154 + 1, 1, v225);
              }

              v71 = v202;
              v155 = v212;
              v156 = v210;
              v157 = v225;
              v225[2] = v154 + 1;
              outlined init with take of AST.Atom.Kind(v205, v157 + v92 + v154 * v67, type metadata accessor for AST.CustomCharacterClass.Member);
              *v70 = v157;
              v158 = v201;
              v159 = v198;
              v160 = v223;
              makeOperand #1 (_:isLHS:) in Parser.parsePotentialCCRange(into:)(v198, 1, v223);
              outlined destroy of AST.CustomCharacterClass.Member(v159, type metadata accessor for AST.CustomCharacterClass.Member);
              v161 = *(v156 + 48);
              if (v161(v158, 1, v155) == 1)
              {
                outlined destroy of AST.CustomCharacterClass.Member(v204, type metadata accessor for AST.CustomCharacterClass.Member);
                v162 = v158;
              }

              else
              {
                v163 = v158;
                v164 = v209;
                outlined init with take of AST.Atom.Kind(v163, v209, type metadata accessor for AST.Atom);
                v66 = v200;
                v165 = v204;
                makeOperand #1 (_:isLHS:) in Parser.parsePotentialCCRange(into:)(v204, 0, v160);
                outlined destroy of AST.CustomCharacterClass.Member(v165, type metadata accessor for AST.CustomCharacterClass.Member);
                if (v161(v66, 1, v155) != 1)
                {
                  goto LABEL_99;
                }

                outlined destroy of AST.CustomCharacterClass.Member(v164, type metadata accessor for AST.Atom);
                v162 = v66;
              }

              outlined destroy of _ASTParent?(v162, &_s12_RegexParser3ASTV4AtomVSgMd, &_s12_RegexParser3ASTV4AtomVSgMR);
              return;
            }

            if ((v86 & 0x1000000000000000) != 0)
            {
              _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
            }

            else
            {
              if ((v86 & 0x2000000000000000) != 0)
              {
                *&v244 = v85;
                *(&v244 + 1) = v86 & 0xFFFFFFFFFFFFFFLL;
              }

              else if ((v85 & 0x1000000000000000) == 0)
              {
                _StringObject.sharedUTF8.getter();
              }

              _decodeScalar(_:startingAt:)();
            }

            v88 = v227;
            Unicode.Scalar.properties.getter();
            v89 = Unicode.Scalar.Properties.isPatternWhitespace.getter();

            (*v226)(v88, v228);
            if ((v89 & 1) == 0)
            {
              goto LABEL_27;
            }

            v29 = Substring.index(after:)();
            v84 = v29 >> 14;
          }

          while (v29 >> 14 != v229);
          v84 = v229;
LABEL_27:
          v81 = v84 <= v214;
          if (v84 < v214)
          {
            goto LABEL_108;
          }

LABEL_28:
          v90 = Substring.subscript.getter();
          v92 = v91;
          v67 = v93;
          v95 = v94;

          if ((v90 ^ v92) < 0x4000)
          {

            v70 = v217;
            v29 = v218;
            goto LABEL_41;
          }

          v96 = Substring.distance(from:to:)();
          v71 = v222;
          v73 = v222;
          if (v96 >= 1)
          {
            String.subscript.getter();
            v70 = v97;
            v98 = Substring.index(_:offsetBy:limitedBy:)();
            v29 = v99;

            v73 = v71;
            if ((v29 & 1) == 0)
            {
              v100 = v221;
              if (v221 >> 14 >= v98 >> 14)
              {
                v71 = v222;
                v101 = v223;
                *(v223 + 2) = v98;
                *(v101 + 24) = v100;
                v73 = v98;
                goto LABEL_33;
              }

LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }
          }

LABEL_33:
          v74 = MEMORY[0x1C68E0B20](v90, v92, v67, v95);
          v72 = v102;

          v81 = (v73 >> 14) <= (v71 >> 14);
          v70 = v217;
          v29 = v218;
          if (v73 >> 14 >= v71 >> 14)
          {
            v66 = v215;
            v67 = v216;
            if (!v72)
            {
              goto LABEL_41;
            }

            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_110;
      }

LABEL_41:
      v106 = v223[1];
      v244 = *v223;
      v245 = v106;
      v107 = v223[3];
      v246 = v223[2];
      v247 = v107;
      v248[0] = v223[4];
      *(v248 + 9) = *(v223 + 73);
      v90 = *(&v245 + 1);
      v73 = v245;
      outlined init with copy of Parser(&v244, v242);
      v108 = String.subscript.getter();
      v110 = specialized Sequence<>.starts<A>(with:)(11565, 0xE200000000000000, v108, v109);

      if (v110 & 1) != 0 || (v111 = String.subscript.getter(), v92 = v112, v67 = specialized Sequence<>.starts<A>(with:)(32382, 0xE200000000000000, v111, v113), , (v67))
      {
        outlined destroy of Parser(&v244);
      }

      else
      {
        v114 = String.subscript.getter();
        v116 = specialized Sequence<>.starts<A>(with:)(9766, 0xE200000000000000, v114, v115);

        outlined destroy of Parser(&v244);
        if ((v116 & 1) == 0)
        {
          v117._countAndFlagsBits = 45;
          v117._object = 0xE100000000000000;
          v118 = v223;
          if (Parser.tryEat(_:)(v117))
          {
            v119 = *(v118 + 16);
            if (v119 >> 14 < v73 >> 14)
            {
              goto LABEL_127;
            }

            v120 = v208;
            *v208 = 45;
            v120[1] = 0xE100000000000000;
            type metadata accessor for AST.Atom.Kind(0);
            swift_storeEnumTagMultiPayload();
            v121 = (v120 + *(v212 + 20));
            *v121 = v73;
            v121[1] = v119;
            swift_storeEnumTagMultiPayload();
            v90 = v225;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v92 = v215;
            v67 = v216;
            v196 = v119;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
LABEL_128:
              v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 16) + 1, 1, v90);
            }

            v124 = *(v90 + 16);
            v123 = *(v90 + 24);
            v125 = v208;
            if (v124 >= v123 >> 1)
            {
              v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123 > 1, v124 + 1, 1, v90);
              v125 = v208;
            }

            *(v90 + 16) = v124 + 1;
            outlined init with take of AST.Atom.Kind(v125, v90 + v92 + v124 * v67, type metadata accessor for AST.CustomCharacterClass.Member);
            v214 = v73;
            while (1)
            {
              v225 = v90;
              *v70 = v90;
              v126 = v223;
              v127 = *(v223 + 2);
              closure #1 in Parser.lexComment()(v223, v242);
              v128 = *(&v242[0] + 1);
              if (*(&v242[0] + 1))
              {
                v73 = *(v126 + 16);
                if (v73 >> 14 < v127 >> 14)
                {
                  goto LABEL_122;
                }

                v90 = *&v242[0];
              }

              else
              {
                if ((*(v126 + 64) & 1) == 0)
                {
                  goto LABEL_89;
                }

                v129 = *v223;
                v90 = *(v223 + 1);
                v130 = *(v223 + 3);
                v224 = *(v223 + 2);
                v222 = v130;
                v131 = String.subscript.getter();
                if (v132 >> 14 < v131 >> 14)
                {
                  goto LABEL_123;
                }

                v220 = v90;
                v221 = v129;
                v70 = Substring.subscript.getter();
                v29 = v133;
                v67 = v134;

                v90 = v70 >> 14;
                v229 = v29 >> 14;
                if (v70 >> 14 != v29 >> 14)
                {
                  v219 = v70 >> 14;
                  while (1)
                  {
                    v135 = Substring.subscript.getter();
                    v92 = v136;
                    if ((v136 & 0x2000000000000000) != 0)
                    {
                      v137 = HIBYTE(v136) & 0xF;
                    }

                    else
                    {
                      v137 = v135 & 0xFFFFFFFFFFFFLL;
                    }

                    if (!v137)
                    {
                      __break(1u);
                      goto LABEL_121;
                    }

                    if ((v136 & 0x1000000000000000) != 0)
                    {
                      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
                    }

                    else
                    {
                      if ((v136 & 0x2000000000000000) != 0)
                      {
                        *&v242[0] = v135;
                        *(&v242[0] + 1) = v136 & 0xFFFFFFFFFFFFFFLL;
                      }

                      else if ((v135 & 0x1000000000000000) == 0)
                      {
                        _StringObject.sharedUTF8.getter();
                      }

                      _decodeScalar(_:startingAt:)();
                    }

                    v138 = v227;
                    Unicode.Scalar.properties.getter();
                    v73 = Unicode.Scalar.Properties.isPatternWhitespace.getter();

                    (*v226)(v138, v228);
                    if ((v73 & 1) == 0)
                    {
                      break;
                    }

                    v90 = Substring.index(after:)() >> 14;
                    if (v90 == v229)
                    {
                      v90 = v229;
                      break;
                    }
                  }

                  if (v90 < v219)
                  {
                    goto LABEL_124;
                  }
                }

                v92 = Substring.subscript.getter();
                v67 = v139;
                v70 = v140;
                v142 = v141;

                if ((v92 ^ v67) < 0x4000)
                {
                  goto LABEL_88;
                }

                v143 = Substring.distance(from:to:)();
                v127 = v224;
                v73 = v224;
                if (v143 >= 1)
                {
                  String.subscript.getter();
                  v144 = Substring.index(_:offsetBy:limitedBy:)();
                  v29 = v145;
                  v90 = v223;
                  v127 = v224;

                  v73 = v127;
                  if ((v29 & 1) == 0)
                  {
                    v146 = v222;
                    if (v222 >> 14 < v144 >> 14)
                    {
                      goto LABEL_126;
                    }

                    *(v90 + 16) = v144;
                    *(v90 + 24) = v146;
                    v73 = v144;
                  }
                }

                v90 = MEMORY[0x1C68E0B20](v92, v67, v70, v142);
                v128 = v147;

                v29 = v218;
                if (v73 >> 14 < v127 >> 14)
                {
                  goto LABEL_125;
                }

                v67 = v216;
                v70 = v217;
                v92 = v215;
                if (!v128)
                {
                  goto LABEL_89;
                }
              }

              v148 = v213;
              *v213 = v90;
              v148[1] = v128;
              v148[2] = v127;
              v148[3] = v73;
              swift_storeEnumTagMultiPayload();
              v90 = v225;
              v150 = v225[2];
              v149 = v225[3];
              if (v150 >= v149 >> 1)
              {
                v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v149 > 1, v150 + 1, 1, v225);
              }

              *(v90 + 16) = v150 + 1;
              outlined init with take of AST.Atom.Kind(v213, v90 + v92 + v150 * v67, type metadata accessor for AST.CustomCharacterClass.Member);
            }
          }
        }
      }

      v68 = v198;
    }

    outlined destroy of AST.CustomCharacterClass.Member(v68, type metadata accessor for AST.CustomCharacterClass.Member);
  }
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(type metadata accessor for AST.CustomCharacterClass.Member(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized parseWithRecovery<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v29[0] = a1;
  *(&v29[0] + 1) = a2;

  v6 = String.init<A>(_:)();
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v10 = 7;
  if (((v7 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  *&v28[16] = MEMORY[0x1E69E7CC0];
  v28[24] = 0;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  *&v25 = 15;
  *(&v25 + 1) = v10 | (v8 << 16);
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  v27 = MEMORY[0x1E69E7CD0];
  *v28 = a3;
  v28[8] = 3;
  Parser.parse()(&v20);
  v29[2] = v26;
  v29[3] = v27;
  v30[0] = *v28;
  *(v30 + 9) = *&v28[9];
  v29[0] = v24;
  v29[1] = v25;
  outlined destroy of Parser(v29);
  v18[1] = v9;
  v19 = 0;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12[0] = v20;
  v12[1] = v21;
  v12[2] = v22;
  v13 = v23;
  static CaptureList.Builder.build(_:)(v12, v18);
  RegexValidator.validate()(a4);
}

uint64_t parseWithRecovery<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = *v9;
  (*(v11 + 16))(&v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = *(a4 + 40);
  v14 = *(*(*(a4 + 8) + 8) + 8);
  v15 = String.init<A>(_:)();
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15;
  }

  v18 = MEMORY[0x1E69E7CC0];
  v19 = 7;
  if (((v16 >> 60) & ((v15 & 0x800000000000000) == 0)) != 0)
  {
    v19 = 11;
  }

  *&v38[1] = MEMORY[0x1E69E7CC0];
  BYTE8(v38[1]) = 0;
  *&v34 = v15;
  *(&v34 + 1) = v16;
  *&v35 = 15;
  *(&v35 + 1) = v19 | (v17 << 16);
  LOBYTE(v36) = 0;
  *(&v36 + 1) = 0;
  v37 = MEMORY[0x1E69E7CD0];
  *&v38[0] = v10;
  BYTE8(v38[0]) = 3;
  Parser.parse()(&v30);
  v39[2] = v36;
  v39[3] = v37;
  v40[0] = v38[0];
  *(v40 + 9) = *(v38 + 9);
  v39[0] = v34;
  v39[1] = v35;
  outlined destroy of Parser(v39);
  v28[1] = v18;
  v29 = 0;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22[0] = v30;
  v22[1] = v31;
  v22[2] = v32;
  v23 = v33;
  static CaptureList.Builder.build(_:)(v22, v28);
  RegexValidator.validate()(a5);
}

uint64_t validate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v14[1] = MEMORY[0x1E69E7CC0];
  v15 = 0;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v9 = v6;

  static CaptureList.Builder.build(_:)(v8, v14);
  RegexValidator.validate()(a2);
}

uint64_t parse<A>(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v29 = *a2;
  result = parseWithRecovery<A>(_:_:)(a1, &v29, a3, a4, v33);
  v7 = v33[1];
  v8 = v34;
  v9 = v35;
  v10 = *(v34 + 16);
  if (v10)
  {
    v11 = 32;
    while (1)
    {
      v12 = (v34 + v11);
      v29 = *(v34 + v11);
      v13 = *(v34 + v11 + 16);
      v14 = *(v34 + v11 + 32);
      v15 = *(v34 + v11 + 48);
      *(v32 + 9) = *(v34 + v11 + 57);
      v31 = v14;
      v32[0] = v15;
      v30 = v13;
      if (v29 != 2)
      {
        break;
      }

      v11 += 80;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v17 = *(&v30 + 1);
    v16 = v31;
    v18 = v12[3];
    v27 = v12[2];
    v28[0] = v18;
    *(v28 + 9) = *(v12 + 57);
    v19 = v12[1];
    v25 = *v12;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR);
    lazy protocol witness table accessor for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>(&lazy protocol witness table cache variable for type Source.LocatedError<ErrorDiagnostic #1 in Diagnostics.throwAnyError()> and conformance Source.LocatedError<A>, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMd, &_s12_RegexParser6SourceV12LocatedErrorVy_AA11DiagnosticsV08throwAnyE0yyKF0E10DiagnosticL_VGMR);
    swift_allocError();
    *v20 = v25;
    v22 = v27;
    v21 = v28[0];
    v23 = v26;
    *(v20 + 57) = *(v28 + 9);
    *(v20 + 32) = v22;
    *(v20 + 48) = v21;
    *(v20 + 16) = v23;
    *(v20 + 80) = v17;
    *(v20 + 88) = v16;
    swift_willThrow();
    outlined init with copy of Diagnostic(&v29, &v24);
  }

  else
  {
LABEL_5:
    *a5 = v33[0];
    *(a5 + 8) = v7;
    *(a5 + 16) = v8;
    *(a5 + 24) = v9;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t parseWithDelimitersWithRecovery<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v8 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a3 + 40);
  v10 = *(*(*(a3 + 8) + 8) + 8);
  v11 = String.init<A>(_:)();
  v13 = v12;
  stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(0, v11, v12, &v20);
  v14 = v21;
  if (v21 || (stripDelimiter #1 (_:) in droppingRegexDelimiters(_:)(1, v11, v13, &v20), (v14 = v21) != 0))
  {
    v15 = v23;
    v16 = v20;
    v17 = v22;

    if (v17)
    {
      v18 = 61;
    }

    else if (v15 >= 1 && (specialized StringProtocol.spansMultipleLinesInRegexLiteral.getter(v16, v14) & 1) != 0)
    {
      v18 = 67;
    }

    else
    {
      v18 = 0;
    }

    specialized parseWithRecovery<A>(_:_:)(v16, v14, v18, a4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Collection.offsets(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (Collection.offset(of:))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Range();
  result = Collection.offset(of:)(a1 + *(v7 + 36), a2, a3);
  if (result >= v6)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t Collection.index(atOffset:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v3);
  v5 = &v7 - v4;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  return (*(v1 + 8))(v5, AssociatedTypeWitness);
}

uint64_t Error.addingLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = *(v8 + 16);
  v14(&v24[-1] - v15, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser20LocatedErrorProtocol_pMd, &_s12_RegexParser20LocatedErrorProtocol_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v16 = swift_allocError();
    (v14)(v17, v4, a3);
  }

  else
  {
    (v14)(v12, v4, a3);
    v18 = type metadata accessor for Source.LocatedError();
    swift_getWitnessTable();
    v16 = swift_allocError();
    v20 = v19;
    (*(v8 + 32))(v19, v12, a3);
    v21 = (v20 + *(v18 + 36));
    *v21 = a1;
    v21[1] = a2;
  }

  return v16;
}

uint64_t RegexValidator.validate()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 8))
  {
    v4 = *(v1 + 8);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    while (1)
    {
      v7 = *v6;
      v8 = v6[3];
      v9 = v6[4];
      v10 = *v6 >> 61;
      if (v10 <= 2)
      {
        goto LABEL_9;
      }

      if (v10 == 3)
      {
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        *&v36 = 0xD000000000000015;
        *(&v36 + 1) = 0x80000001C0C86CB0;
        MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
        v33[0] = 1;
        *&v33[8] = v36;
        *&v33[24] = v8;
        *&v34 = v9;
        *(&v34 + 1) = 0xD000000000000015;
        *v35 = 0x80000001C0C86CB0;
        *&v35[16] = 0;
        v35[24] = 29;
        if (*(v2 + 48) != 1)
        {
          v11 = *(v2 + 40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        goto LABEL_6;
      }

      if (v10 != 4)
      {
        break;
      }

      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      *&v36 = 0xD00000000000001ELL;
      *(&v36 + 1) = 0x80000001C0C86C90;
      MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
      v33[0] = 1;
      *&v33[8] = v36;
      *&v33[24] = v8;
      *&v34 = v9;
      *(&v34 + 1) = 0xD00000000000001ELL;
      *v35 = 0x80000001C0C86C90;
      *&v35[16] = 0;
      v35[24] = 29;
      if (*(v2 + 48) != 1)
      {
        v11 = *(v2 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      }

LABEL_6:
      outlined destroy of Diagnostic(v33);
LABEL_7:
      v6 += 6;
      if (!--v5)
      {

        goto LABEL_45;
      }
    }

    v12 = *(v6 - 1);
    v13 = v7 == 0xA000000000000000 && (v6[1] | v6[2] | v12) == 0;
    if (!v13 && (v7 != 0xA000000000000000 || v12 != 1 || *(v6 + 1) != 0) && (v7 != 0xA000000000000000 || v12 != 2 || *(v6 + 1) != 0) && (v7 != 0xA000000000000000 || v12 != 3 || *(v6 + 1) != 0) && v7 == 0xA000000000000000 && v12 == 4)
    {
      *(v6 + 1);
    }

LABEL_9:
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    *&v36 = 0xD000000000000016;
    *(&v36 + 1) = 0x80000001C0C86CD0;
    MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
    v33[0] = 1;
    *&v33[8] = v36;
    *&v33[24] = v8;
    *&v34 = v9;
    *(&v34 + 1) = 0xD000000000000016;
    *v35 = 0x80000001C0C86CD0;
    *&v35[16] = 0;
    v35[24] = 29;
    if (*(v2 + 48) != 1)
    {
      v11 = *(v2 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_36:
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

LABEL_37:
      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
LABEL_42:
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v16, 1, v11);
      }

LABEL_38:
      *(v11 + 2) = v16;
      v17 = &v11[80 * v15];
      *(v17 + 2) = *v33;
      v18 = *&v33[16];
      v19 = v34;
      v20 = *v35;
      *(v17 + 89) = *&v35[9];
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
      *(v2 + 40) = v11;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_45:
  v37 = MEMORY[0x1E69E7CD0];
  v21 = *(v2 + 32);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 64);
    do
    {
      v24 = *(v23 - 3);
      if (v24)
      {
        v25 = *(v23 - 4);
        v32 = *v23;
        swift_bridgeObjectRetain_n();
        v26 = specialized Set._Variant.insert(_:)(&v36, v25, v24);

        if ((v26 & 1) == 0)
        {
          *v33 = v25;
          *&v33[8] = v24;
          *&v33[16] = 0uLL;
          LOBYTE(v34) = 33;
          v36 = v32;
          Diagnostics.error(_:at:)(v33, &v36);
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      v23 = (v23 + 56);
      --v22;
    }

    while (v22);
  }

  *v33 = *v2;

  RegexValidator.validateNode(_:)(v33);

  v27 = *(v2 + 8);
  v28 = *(v2 + 16);
  v29 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v27;
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  if (v29 == 1)
  {
  }

  else
  {
    v31 = *(v2 + 40);

    return specialized Array.append<A>(contentsOf:)(v31);
  }
}

void RegexValidator.validateNode(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *a1 >> 60;
  if (v14 > 4)
  {
    if (v14 <= 8)
    {
      if ((v14 - 5) >= 2)
      {
        if (v14 == 7)
        {
          v74 = xmmword_1C0C7E410;
          v75 = 0uLL;
          LOBYTE(v76) = 29;
          v15 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
LABEL_13:
          v69 = v15;
          v17 = &v69;
LABEL_14:
          Diagnostics.error(_:at:)(&v74, v17);
          return;
        }

        v32 = swift_projectBox();
        outlined init with copy of AST.CustomCharacterClass.Member(v32, v12, type metadata accessor for AST.Atom);
        RegexValidator.validateAtom(_:inCustomCharacterClass:)(v12, 0);
        outlined destroy of AST.CustomCharacterClass.Member(v12, type metadata accessor for AST.Atom);
      }

      return;
    }

    if (v14 != 9)
    {
      if (v14 == 10)
      {
        v74 = xmmword_1C0C7E400;
        v75 = 0uLL;
        LOBYTE(v76) = 29;
        v15 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        goto LABEL_13;
      }

      return;
    }

    v22 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v23 = *(v22 + 16);
    if (!v23)
    {
      return;
    }

    v24 = v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v25 = *(v3 + 72);

    do
    {
      outlined init with copy of AST.CustomCharacterClass.Member(v24, v7, type metadata accessor for AST.CustomCharacterClass.Member);
      RegexValidator.validateCharacterClassMember(_:)(v7);
      outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.CustomCharacterClass.Member);
      v24 += v25;
      --v23;
    }

    while (v23);
LABEL_23:

    return;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      v49 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v50 = *(v49 + 16);
      v51 = *(v50 + 16);
      if (!v51)
      {
        return;
      }

      v52 = *(v49 + 16);

      v53 = 32;
      do
      {
        *&v74 = *(v50 + v53);
        RegexValidator.validateNode(_:)(&v74);
        v53 += 8;
        --v51;
      }

      while (v51);
    }

    else
    {
      v18 = *(v13 + 16);
      v19 = *(v18 + 16);
      if (!v19)
      {
        return;
      }

      v20 = *(v13 + 16);

      v21 = 32;
      do
      {
        *&v74 = *(v18 + v21);
        RegexValidator.validateNode(_:)(&v74);
        v21 += 8;
        --v19;
      }

      while (v19);
    }

    goto LABEL_23;
  }

  if (v14 == 2)
  {
    v26 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v27 = *(v26 + 96);
    v66 = *(v26 + 80);
    v67 = v27;
    v28 = *(v26 + 120);
    v68 = *(v26 + 112);
    v29 = *(v26 + 32);
    v63[0] = *(v26 + 16);
    v63[1] = v29;
    v30 = *(v26 + 64);
    v64 = *(v26 + 48);
    v65 = v30;
    v78 = v66;
    *v79 = v67;
    *&v79[16] = v68;
    v74 = v63[0];
    v75 = v29;
    v76 = v64;
    v77 = v30;
    v31 = v63[0];
    if (v67 == 1)
    {
      if (!*(&v63[0] + 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v67)
      {
LABEL_46:
        if (v79[0] > 1u)
        {
          if (v79[0] == 2)
          {
            v69 = v74;
            v70 = v75;
            v71 = v76;
            v72 = v77;
            RegexValidator.validateMatchingOptions(_:)(&v69);
            goto LABEL_56;
          }

          v57 = v76 | *(&v76 + 1) | v77;
          v58 = *(&v77 + 1) | *(&v78 + 1) | v78;
          if (!(v75 | *(&v74 + 1) | v74 | *(&v75 + 1) | v57 | v58))
          {
            goto LABEL_56;
          }

          v59 = v75 | *(&v74 + 1) | *(&v75 + 1) | v57 | v58;
          if (v74 == 1 && !v59)
          {
            goto LABEL_56;
          }

          if (v74 != 2 || v59)
          {
            if ((v74 - 3) <= 2 && !v59)
            {
              goto LABEL_56;
            }

            if (v74 != 6 || v59)
            {
              if ((v74 - 7) > 2 || v59)
              {
                v60 = xmmword_1C0C7E430;
              }

              else
              {
                v60 = xmmword_1C0C7E440;
              }

              v69 = v60;
              goto LABEL_50;
            }

            v55 = 0x80000001C0C86CF0;
            v56 = 0xD000000000000014;
          }

          else
          {
            v55 = 0x80000001C0C86D10;
            v56 = 0xD000000000000012;
          }

LABEL_49:
          *&v69 = v56;
          *(&v69 + 1) = v55;
LABEL_50:
          v70 = 0uLL;
          LOBYTE(v71) = 29;
          v73 = *&v79[8];
          Diagnostics.error(_:at:)(&v69, &v73);
          goto LABEL_56;
        }

        if (!v79[0])
        {
LABEL_56:
          *&v73 = v28;

          RegexValidator.validateNode(_:)(&v73);

          return;
        }

LABEL_48:
        v55 = 0x80000001C0C86D30;
        v56 = 0xD000000000000010;
        goto LABEL_49;
      }

      outlined init with copy of Source.Located<AST.Group.Kind>(&v74, &v69);
    }

    v54 = HIBYTE(*(&v31 + 1)) & 0xFLL;
    if ((*(&v31 + 1) & 0x2000000000000000) == 0)
    {
      v54 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {
      v69 = *&v79[8];
      RegexValidator.expectInvalid(at:)(&v69);
    }

    goto LABEL_46;
  }

  v16 = v13 & 0xFFFFFFFFFFFFFFFLL;
  if (v14 == 3)
  {
    v74 = xmmword_1C0C7E420;
    v75 = 0uLL;
    LOBYTE(v76) = 29;
    v15 = *(v16 + 16);
    goto LABEL_13;
  }

  v33 = *(v16 + 16);
  v34 = *(v16 + 24);
  v35 = *(v16 + 48);
  v36 = *(v16 + 56);
  v62 = *(v16 + 57) | ((*(v16 + 61) | (*(v16 + 63) << 16)) << 32);
  v38 = *(v16 + 128);
  v39 = *(v16 + 136);
  *&v74 = *(v16 + 120);
  v37 = v74;

  RegexValidator.validateNode(_:)(&v74);

  *&v74 = v37;
  if ((AST.Node.isQuantifiable.getter() & 1) == 0)
  {
    v69 = 0x13uLL;
    v70 = 0uLL;
    LOBYTE(v71) = 36;
    *&v73 = v37;
    AST.Node._associatedValue.getter(&v74);
    v61 = v34;
    v40 = v36;
    v41 = v38;
    v42 = v39;
    v43 = v35;
    v44 = v33;
    v45 = *(&v75 + 1);
    v46 = v76;
    __swift_project_boxed_opaque_existential_1Tm(&v74, *(&v75 + 1));
    v47 = *(v46 + 16);
    v48 = v46;
    v33 = v44;
    v35 = v43;
    v39 = v42;
    v38 = v41;
    v36 = v40;
    LOBYTE(v34) = v61;
    v47(v63, v45, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    v74 = v63[0];
    Diagnostics.error(_:at:)(&v69, &v74);
  }

  if (((v62 >> 53) & 7) == 3)
  {
    if (v34 & 1) != 0 || (v36)
    {
      *&v74 = v38;
      *(&v74 + 1) = v39;
      RegexValidator.expectInvalid(at:)(&v74);
    }

    else if (v35 < v33)
    {
      *&v74 = v33;
      *(&v74 + 1) = v35;
      v75 = 0uLL;
      LOBYTE(v76) = 34;
      *&v63[0] = v38;
      *(&v63[0] + 1) = v39;
      v17 = v63;
      goto LABEL_14;
    }
  }
}

__n128 RegexValidator.expectInvalid(at:)(unint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 16);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 80;
    if (v8 < 2)
    {
      return result;
    }
  }

  strcpy(v18, "UNREACHABLE: ");
  HIWORD(v18[1]) = -4864;
  MEMORY[0x1C68E0BF0](0xD00000000000001ELL, 0x80000001C0C86D50);
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v18[0];
  v20.n128_u64[0] = v18[1];
  v20.n128_u64[1] = v3;
  *v21 = v4;
  memset(&v21[8], 0, 32);
  v21[40] = -1;
  if (*(v1 + 48) == 1)
  {
    outlined destroy of Diagnostic(&v19);
  }

  else
  {
    v10 = *(v1 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v13 = v12 + 1;
      v10 = v17;
    }

    *(v10 + 2) = v13;
    v14 = &v10[80 * v12];
    *(v14 + 2) = v19;
    result = v20;
    v15 = *v21;
    v16 = *&v21[16];
    *(v14 + 89) = *&v21[25];
    *(v14 + 4) = v15;
    *(v14 + 5) = v16;
    *(v14 + 3) = result;
    *(v2 + 40) = v10;
  }

  return result;
}

uint64_t RegexValidator.validateMatchingOptions(_:)(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 24);
  v32 = *(result + 56);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 48);
    do
    {
      v6 = *(v5 - 16);
      v8 = *(v5 - 1);
      v7 = *v5;
      if (v6 <= 8)
      {
        if (*(v5 - 16) <= 1u)
        {
          if (*(v5 - 16))
          {
            _StringGuts.grow(_:)(29);

            v9 = 0xD000000000000016;
            v33 = 0xD000000000000016;
            v10 = 0x80000001C0C86E10;
            goto LABEL_20;
          }
        }

        else if (v6 - 2 >= 6)
        {
          _StringGuts.grow(_:)(29);

          v9 = 0xD00000000000001ALL;
          v33 = 0xD00000000000001ALL;
          v10 = 0x80000001C0C86DF0;
          goto LABEL_20;
        }
      }

      else if (*(v5 - 16) > 0xEu)
      {
        if (*(v5 - 16) <= 0x11u)
        {
          if (v6 == 15)
          {
            _StringGuts.grow(_:)(29);

            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = 0xD000000000000016;
            *&v36 = 0x80000001C0C86D70;
            *(&v36 + 1) = v8;
            *&v37 = v7;
            *(&v37 + 1) = 0xD000000000000016;
            *v38 = 0x80000001C0C86D70;
          }

          else
          {
            if (v6 == 16)
            {
              _StringGuts.grow(_:)(29);

              v9 = 0xD00000000000001CLL;
              v33 = 0xD00000000000001CLL;
              v10 = 0x80000001C0C86D90;
            }

            else
            {
              _StringGuts.grow(_:)(29);

              v9 = 0xD000000000000012;
              v33 = 0xD000000000000012;
              v10 = 0x80000001C0C86DB0;
            }

LABEL_20:
            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = v33;
            *&v36 = v10;
            *(&v36 + 1) = v8;
            *&v37 = v7;
            *(&v37 + 1) = v9;
            *v38 = v10;
          }

          *&v38[8] = 0;
          *&v38[16] = 0;
          v38[24] = 29;
          if (*(v2 + 48) == 1)
          {
            result = outlined destroy of Diagnostic(&v35);
          }

          else
          {
            v11 = *(v2 + 40);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
              v11 = result;
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
              v11 = result;
            }

            *(v11 + 16) = v13 + 1;
            v14 = (v11 + 80 * v13);
            v14[2] = v35;
            v15 = v36;
            v16 = v37;
            v17 = *v38;
            *(v14 + 89) = *&v38[9];
            v14[4] = v16;
            v14[5] = v17;
            v14[3] = v15;
            *(v2 + 40) = v11;
          }
        }
      }

      else if (v6 - 9 >= 4)
      {
        _StringGuts.grow(_:)(29);

        v9 = 0xD000000000000011;
        v33 = 0xD000000000000011;
        v10 = 0x80000001C0C86DD0;
        goto LABEL_20;
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  v18 = *(v32 + 16);
  if (v18)
  {
    v19 = (v32 + 48);
    do
    {
      v20 = *(v19 - 16);
      v22 = *(v19 - 1);
      v21 = *v19;
      if (v20 <= 8)
      {
        if (*(v19 - 16) <= 1u)
        {
          if (*(v19 - 16))
          {
            _StringGuts.grow(_:)(29);

            v23 = 0xD000000000000016;
            v34 = 0xD000000000000016;
            v24 = 0x80000001C0C86E10;
            goto LABEL_46;
          }
        }

        else if (v20 - 2 >= 6)
        {
          _StringGuts.grow(_:)(29);

          v23 = 0xD00000000000001ALL;
          v34 = 0xD00000000000001ALL;
          v24 = 0x80000001C0C86DF0;
          goto LABEL_46;
        }
      }

      else if (*(v19 - 16) > 0xEu)
      {
        if (*(v19 - 16) <= 0x11u)
        {
          if (v20 == 15)
          {
            _StringGuts.grow(_:)(29);

            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = 0xD000000000000016;
            *&v36 = 0x80000001C0C86D70;
            *(&v36 + 1) = v22;
            *&v37 = v21;
            *(&v37 + 1) = 0xD000000000000016;
            *v38 = 0x80000001C0C86D70;
          }

          else
          {
            if (v20 == 16)
            {
              _StringGuts.grow(_:)(29);

              v23 = 0xD00000000000001CLL;
              v34 = 0xD00000000000001CLL;
              v24 = 0x80000001C0C86D90;
            }

            else
            {
              _StringGuts.grow(_:)(29);

              v23 = 0xD000000000000012;
              v34 = 0xD000000000000012;
              v24 = 0x80000001C0C86DB0;
            }

LABEL_46:
            MEMORY[0x1C68E0BF0](0xD00000000000001BLL, 0x80000001C0C863B0);
            LOBYTE(v35) = 1;
            *(&v35 + 1) = v34;
            *&v36 = v24;
            *(&v36 + 1) = v22;
            *&v37 = v21;
            *(&v37 + 1) = v23;
            *v38 = v24;
          }

          *&v38[8] = 0;
          *&v38[16] = 0;
          v38[24] = 29;
          if (*(v2 + 48) == 1)
          {
            result = outlined destroy of Diagnostic(&v35);
          }

          else
          {
            v25 = *(v2 + 40);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
              v25 = result;
            }

            v27 = *(v25 + 16);
            v26 = *(v25 + 24);
            if (v27 >= v26 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
              v25 = result;
            }

            *(v25 + 16) = v27 + 1;
            v28 = (v25 + 80 * v27);
            v28[2] = v35;
            v29 = v36;
            v30 = v37;
            v31 = *v38;
            *(v28 + 89) = *&v38[9];
            v28[4] = v30;
            v28[5] = v31;
            v28[3] = v29;
            *(v2 + 40) = v25;
          }
        }
      }

      else if (v20 - 9 >= 4)
      {
        _StringGuts.grow(_:)(29);

        v23 = 0xD000000000000011;
        v34 = 0xD000000000000011;
        v24 = 0x80000001C0C86DD0;
        goto LABEL_46;
      }

      v19 += 3;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t Unicode.BinaryProperty.rawValue.getter()
{
  result = 0x65485F4949435341;
  switch(*v0)
  {
    case 1:
      return 0x7465626168706C41;
    case 2:
      v3 = 1768188226;
      return v3 | 0x6E6F435F00000000;
    case 3:
      return 0x72694D5F69646942;
    case 4:
      return 0x6465736143;
    case 5:
    case 0x17:
    case 0x2A:
      return 0xD000000000000015;
    case 6:
      return 0x6E67495F65736143;
    case 7:
      return 0xD000000000000017;
    case 8:
      return 0xD000000000000017;
    case 9:
    case 0xF:
    case 0x32:
      return 0xD00000000000001CLL;
    case 0xA:
      return 0xD000000000000017;
    case 0xB:
      return 0xD000000000000017;
    case 0xC:
      return 0xD000000000000017;
    case 0xD:
      return 1752392004;
    case 0xE:
      return 0x7461636572706544;
    case 0x10:
      return 0x6974697263616944;
    case 0x11:
    case 0x21:
    case 0x31:
      return 0xD000000000000013;
    case 0x12:
      return 0x6F435F696A6F6D45;
    case 0x13:
      return 0x6F4D5F696A6F6D45;
    case 0x14:
      return 0x696A6F6D45;
    case 0x15:
    case 0x35:
    case 0x3B:
      return 0xD000000000000012;
    case 0x16:
      return 0x7265646E65747845;
    case 0x18:
      return 0xD00000000000001ALL;
    case 0x19:
    case 0x1A:
    case 0x1B:
      return 0x656D656870617247;
    case 0x1C:
      return 0x696769445F786548;
    case 0x1D:
      return 0x6E6568707948;
    case 0x1E:
      return 0x69746E6F435F4449;
    case 0x1F:
      return 0x706172676F656449;
    case 0x20:
      return 0x74726174535F4449;
    case 0x22:
    case 0x38:
      return 0xD000000000000014;
    case 0x23:
      v3 = 1852403530;
      return v3 | 0x6E6F435F00000000;
    case 0x24:
      return 0xD000000000000017;
    case 0x25:
      v2 = 1702326092;
      goto LABEL_13;
    case 0x26:
      return 1752457549;
    case 0x27:
      return 0xD000000000000017;
    case 0x28:
      return 0xD000000000000010;
    case 0x29:
      return 0xD000000000000022;
    case 0x2B:
    case 0x37:
    case 0x39:
      return 0xD000000000000011;
    case 0x2C:
      return 0x44495F726568744FLL;
    case 0x2D:
      return 0x6F4C5F726568744FLL;
    case 0x2E:
      return 0x614D5F726568744FLL;
    case 0x2F:
      return 0x70555F726568744FLL;
    case 0x30:
      return 0x5F6E726574746150;
    case 0x33:
      return 0x6F697461746F7551;
    case 0x34:
      return 0x6C616369646152;
    case 0x36:
      return 0x746F445F74666F53;
    case 0x3A:
      v2 = 1701867605;
LABEL_13:
      result = v2 | 0x7361637200000000;
      break;
    case 0x3C:
      result = 0x70535F6574696857;
      break;
    case 0x3D:
      result = 0x746E6F435F444958;
      break;
    case 0x3E:
      result = 0x726174535F444958;
      break;
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
      result = 0x5F73646E61707845;
      break;
    default:
      return result;
  }

  return result;
}

void RegexValidator.validateCharacterProperty(_:at:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AST.Atom.CharacterProperty.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v9 = a2[1];
  outlined init with copy of AST.CustomCharacterClass.Member(a1, v8, type metadata accessor for AST.Atom.CharacterProperty.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      switch(*v8)
      {
        case 5:
        case 18:
        case 23:
        case 27:
        case 29:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 50:
          v16 = *v8;
          v11 = Unicode.BinaryProperty.rawValue.getter();
          *&v18 = 39;
          *(&v18 + 1) = 0xE100000000000000;
          MEMORY[0x1C68E0BF0](v11);

          MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
          v19 = 0;
          v20 = 0;
          v12 = 29;
          goto LABEL_13;
        case 63:
        case 64:
        case 65:
        case 66:
          v16 = *v8;
          v14 = Unicode.BinaryProperty.rawValue.getter();
          *&v18 = 39;
          *(&v18 + 1) = 0xE100000000000000;
          MEMORY[0x1C68E0BF0](v14);

          MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
          v19 = 0;
          v20 = 0;
          v12 = 30;
LABEL_13:
          v21 = v12;
          *&v17 = v10;
          *(&v17 + 1) = v9;
          Diagnostics.error(_:at:)(&v18, &v17);

          break;
        default:
          return;
      }

      return;
    case 4u:
    case 5u:
    case 7u:
    case 8u:
      outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.Atom.CharacterProperty.Kind);
      return;
    case 0xAu:
      *&v18 = 0xD000000000000016;
      *(&v18 + 1) = 0x80000001C0C86EA0;
      goto LABEL_10;
    case 0xCu:
      v13 = xmmword_1C0C7E460;
      goto LABEL_9;
    case 0xDu:
      v13 = xmmword_1C0C7E450;
LABEL_9:
      v18 = v13;
LABEL_10:
      v19 = 0;
      v20 = 0;
      v21 = 29;
      *&v17 = v10;
      *(&v17 + 1) = v9;
      Diagnostics.error(_:at:)(&v18, &v17);
      break;
    case 0xEu:
      outlined destroy of AST.CustomCharacterClass.Member(v8, type metadata accessor for AST.Atom.CharacterProperty.Kind);
      *&v18 = v10;
      *(&v18 + 1) = v9;
      RegexValidator.expectInvalid(at:)(&v18);
      break;
    default:
      return;
  }
}

void RegexValidator.validateAtom(_:inCustomCharacterClass:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for AST.Atom.CharacterProperty(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AST.Atom.Kind(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AST.CustomCharacterClass.Member(a1, v14, type metadata accessor for AST.Atom.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xEu:
    case 0xFu:
    case 0x10u:
      return;
    case 2u:
      outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.Atom.Kind);
      if (a2)
      {
        v15 = 0x80000001C0C86E30;
        v16 = 0xD000000000000029;
        goto LABEL_15;
      }

      return;
    case 3u:
      outlined init with take of AST.Atom.Kind(v14, v9, type metadata accessor for AST.Atom.CharacterProperty);
      v36 = *(a1 + *(type metadata accessor for AST.Atom(0) + 20));
      RegexValidator.validateCharacterProperty(_:at:)(v9, &v36);
      outlined destroy of AST.CustomCharacterClass.Member(v9, type metadata accessor for AST.Atom.CharacterProperty);
      return;
    case 4u:
      v30 = *v14;
      v31 = type metadata accessor for AST.Atom(0);
      if (((1 << v30) & 0x67FFF7BF) == 0)
      {
        v32 = (a1 + *(v31 + 20));
        v34 = *v32;
        v33 = v32[1];
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        MEMORY[0x1C68E0BF0](23591, 0xE200000000000000);
        LOBYTE(v41) = v30;
        AST.Atom.EscapedBuiltin.character.getter();
        Character.write<A>(to:)();

        MEMORY[0x1C68E0BF0](39, 0xE100000000000000);
        v37 = 0uLL;
        LOBYTE(v38) = 29;
        *&v41 = v34;
        *(&v41 + 1) = v33;
        Diagnostics.error(_:at:)(&v36, &v41);
      }

      return;
    case 5u:
    case 6u:
    case 7u:
      outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.Atom.Kind);
      v15 = 0x80000001C0C86E80;
      v16 = 0xD000000000000010;
      goto LABEL_15;
    case 9u:
      v23 = *(v14 + 3);
      v38 = *(v14 + 2);
      *v39 = v23;
      v24 = *(v14 + 5);
      *&v39[16] = *(v14 + 4);
      v40 = v24;
      v25 = *(v14 + 1);
      v36 = *v14;
      v37 = v25;
      v26 = v36;
      v27 = v38;
      v28 = v40;
      if ((v39[24] & 1) == 0)
      {
        v41 = xmmword_1C0C7E490;
        v42 = 0uLL;
        LOBYTE(v43) = 29;
        countAndFlagsBits = *&v39[8];
        Diagnostics.error(_:at:)(&v41, &countAndFlagsBits);
      }

      if (v27)
      {
        if (v27 != 1)
        {
          v35 = (v26._object >> 56) & 0xF;
          if ((v26._object & 0x2000000000000000) == 0)
          {
            v35 = v26._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (!v35)
          {
            goto LABEL_35;
          }

          *&countAndFlagsBits = *(v2 + 32);
          v50 = CaptureList.indexOfCapture(named:)(v26);
          if (!v50.is_nil)
          {
            goto LABEL_35;
          }

          countAndFlagsBits = v26;
          v47 = 0;
          v48 = 0;
          v49 = 32;
          v45 = v28;
          goto LABEL_34;
        }

        if ((v26._object & 1) == 0)
        {
          *&countAndFlagsBits = 0xD00000000000001ALL;
          *(&countAndFlagsBits + 1) = 0x80000001C0C86EC0;
          v47 = 0;
          v48 = 0;
          v29 = 29;
LABEL_33:
          v49 = v29;
          v45 = v28;
LABEL_34:
          Diagnostics.error(_:at:)(&countAndFlagsBits, &v45);
          goto LABEL_35;
        }

LABEL_25:
        countAndFlagsBits = v28;
        RegexValidator.expectInvalid(at:)(&countAndFlagsBits);
        goto LABEL_35;
      }

      if (v26._object)
      {
        goto LABEL_25;
      }

      if (v26._countAndFlagsBits >= *(*(v2 + 32) + 16))
      {
        countAndFlagsBits = v26._countAndFlagsBits;
        v47 = 0;
        v48 = 0;
        v29 = 31;
        goto LABEL_33;
      }

LABEL_35:
      outlined destroy of AST.Reference(&v36, outlined consume of AST.Reference.Kind);
      return;
    case 0xAu:
      outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.Atom.Kind);
      v22 = xmmword_1C0C7E480;
      goto LABEL_21;
    case 0xBu:
      outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.Atom.Kind);
      v22 = xmmword_1C0C7E470;
LABEL_21:
      v36 = v22;
      goto LABEL_22;
    case 0xCu:
      outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.Atom.Kind);
      v15 = 0x80000001C0C86E60;
      v16 = 0xD000000000000016;
LABEL_15:
      *&v36 = v16;
      *(&v36 + 1) = v15;
LABEL_22:
      v37 = 0uLL;
      LOBYTE(v38) = 29;
      v41 = *(a1 + *(type metadata accessor for AST.Atom(0) + 20));
      Diagnostics.error(_:at:)(&v36, &v41);
      return;
    case 0xDu:
      v17 = *(v14 + 1);
      v36 = *v14;
      v37 = v17;
      v18 = *(v14 + 3);
      v20 = *v14;
      v19 = *(v14 + 1);
      v38 = *(v14 + 2);
      *v39 = v18;
      v41 = v20;
      v42 = v19;
      v21 = *(v14 + 3);
      v43 = *(v14 + 2);
      v44 = v21;
      RegexValidator.validateMatchingOptions(_:)(&v41);
      outlined destroy of AST.MatchingOptionSequence(&v36);
      return;
    case 0x11u:
      v36 = *(a1 + *(type metadata accessor for AST.Atom(0) + 20));
      RegexValidator.expectInvalid(at:)(&v36);
      return;
    default:
      outlined destroy of AST.CustomCharacterClass.Member(v14, type metadata accessor for AST.Atom.Kind);
      return;
  }
}

uint64_t RegexValidator.validateCharacterClassMember(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.Atom(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v45 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v45 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = (&v45 - v28);
  outlined init with copy of AST.CustomCharacterClass.Member(a1, &v45 - v28, type metadata accessor for AST.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v31 = type metadata accessor for AST.CustomCharacterClass.Member;
      v32 = v29;
      return outlined destroy of AST.CustomCharacterClass.Member(v32, v31);
    }

    v38 = v29[4];
    v39 = *(*v29 + 16);
    if (v39)
    {
      v40 = *v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v41 = *(v13 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v40, v22, type metadata accessor for AST.CustomCharacterClass.Member);
        RegexValidator.validateCharacterClassMember(_:)(v22);
        outlined destroy of AST.CustomCharacterClass.Member(v22, type metadata accessor for AST.CustomCharacterClass.Member);
        v40 += v41;
        --v39;
      }

      while (v39);
    }

    v42 = *(v38 + 16);
    if (v42)
    {
      v43 = v38 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v44 = *(v13 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v43, v18, type metadata accessor for AST.CustomCharacterClass.Member);
        RegexValidator.validateCharacterClassMember(_:)(v18);
        outlined destroy of AST.CustomCharacterClass.Member(v18, type metadata accessor for AST.CustomCharacterClass.Member);
        v43 += v44;
        --v42;
      }

      while (v42);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AST.Atom.Kind(v29, v11, type metadata accessor for AST.CustomCharacterClass.Range);
        RegexValidator.validateCharacterClassRange(_:)(v11);
        v31 = type metadata accessor for AST.CustomCharacterClass.Range;
        v32 = v11;
      }

      else
      {
        outlined init with take of AST.Atom.Kind(v29, v6, type metadata accessor for AST.Atom);
        RegexValidator.validateAtom(_:inCustomCharacterClass:)(v6, 1);
        v31 = type metadata accessor for AST.Atom;
        v32 = v6;
      }

      return outlined destroy of AST.CustomCharacterClass.Member(v32, v31);
    }

    v33 = v29[3];
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v36 = *(v13 + 72);
      do
      {
        outlined init with copy of AST.CustomCharacterClass.Member(v35, v26, type metadata accessor for AST.CustomCharacterClass.Member);
        RegexValidator.validateCharacterClassMember(_:)(v26);
        outlined destroy of AST.CustomCharacterClass.Member(v26, type metadata accessor for AST.CustomCharacterClass.Member);
        v35 += v36;
        --v34;
      }

      while (v34);
    }
  }
}

double RegexValidator.validateCharacterClassRange(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.Atom(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - v9;
  outlined init with copy of AST.CustomCharacterClass.Member(a1, &v32 - v9, type metadata accessor for AST.Atom);
  v11 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  outlined init with copy of AST.CustomCharacterClass.Member(a1 + *(v11 + 24), v7, type metadata accessor for AST.Atom);
  RegexValidator.validateAtom(_:inCustomCharacterClass:)(v10, 1);
  RegexValidator.validateAtom(_:inCustomCharacterClass:)(v7, 1);
  if ((AST.Atom.isValidCharacterClassRangeBound.getter() & 1) == 0)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
    v35 = 0;
    v36 = 0;
    v33 = 17;
    v34 = 0;
    v22 = 36;
LABEL_13:
    v37 = v22;
    v23 = &v10[*(v2 + 20)];
    v24 = *v23;
    v25 = *(v23 + 1);
    outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom);
    *&v32 = v24;
    *(&v32 + 1) = v25;
LABEL_15:
    *&result = Diagnostics.error(_:at:)(&v33, &v32).n128_u64[0];
    return result;
  }

  if ((AST.Atom.isValidCharacterClassRangeBound.getter() & 1) == 0)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom);
    v35 = 0;
    v36 = 0;
    v33 = 17;
    v34 = 0;
    v37 = 36;
    v26 = &v7[*(v2 + 20)];
    v27 = *v26;
    v28 = *(v26 + 1);
    outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
    *&v32 = v27;
    *(&v32 + 1) = v28;
    goto LABEL_15;
  }

  v12 = AST.Atom.literalCharacterValue.getter();
  if (!v13)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
    v33 = 0xD00000000000001DLL;
    v34 = 0x80000001C0C86EE0;
    v35 = 0;
    v36 = 0;
    v22 = 29;
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  outlined destroy of AST.CustomCharacterClass.Member(v10, type metadata accessor for AST.Atom);
  v16 = AST.Atom.literalCharacterValue.getter();
  if (!v17)
  {

    v33 = 0xD00000000000001DLL;
    v34 = 0x80000001C0C86EE0;
    v35 = 0;
    v36 = 0;
    v37 = 29;
    v29 = &v7[*(v2 + 20)];
    v30 = *v29;
    v31 = *(v29 + 1);
    outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
    *&v32 = v30;
    *(&v32 + 1) = v31;
    goto LABEL_15;
  }

  v18 = v16;
  v19 = v17;
  outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
  v20 = v18 == v14 && v19 == v15;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = v14;
    v34 = v15;
    v35 = v18;
    v36 = v19;
    v37 = 35;
    v32 = *(a1 + *(v11 + 20));
    Diagnostics.error(_:at:)(&v33, &v32);
  }

  return result;
}

unint64_t specialized Source.peekPrefix(maxLength:_:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  result = String.subscript.getter();
  v11 = result;
  v12 = v10;
  if (a2)
  {
    if (v10 >> 14 < result >> 14)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = result;
    }

    if (v14 >> 14 < v11 >> 14)
    {
      goto LABEL_27;
    }
  }

  v15 = Substring.subscript.getter();
  v17 = v16;

  if (v15 >> 14 != v17 >> 14)
  {
    v18 = v15 >> 14;
    do
    {
      v22 = Substring.subscript.getter();
      v24 = v23;
      if ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter() & 1) != 0 || v22 == 95 && v24 == 0xE100000000000000)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      result = Substring.index(after:)();
      v18 = result >> 14;
    }

    while (result >> 14 != v17 >> 14);
  }

  v18 = v17 >> 14;
LABEL_11:
  if (v18 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v19 = Substring.subscript.getter();
  v21 = v20;

  if (!((v19 ^ v21) >> 14))
  {

    return 0;
  }

  return v19;
}

{
  v35 = type metadata accessor for Unicode.Scalar.Properties();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v35, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a3[3];
  result = String.subscript.getter();
  v17 = result;
  v18 = v16;
  if (a2)
  {
    if (v16 >> 14 < result >> 14)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = result;
    }

    if (v20 >> 14 < v17 >> 14)
    {
      goto LABEL_36;
    }
  }

  v21 = Substring.subscript.getter();
  v23 = v22;

  v24 = v21 >> 14;
  if (v21 >> 14 != v23 >> 14)
  {
    v33 = v21 >> 14;
    v34 = v23 >> 14;
    v25 = v21 >> 14;
    while (1)
    {
      result = Substring.subscript.getter();
      if (!((v26 & 0x2000000000000000) != 0 ? HIBYTE(v26) & 0xF : result & 0xFFFFFFFFFFFFLL))
      {
        break;
      }

      if ((v26 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v26 & 0x2000000000000000) != 0)
        {
          v36 = result;
          v37 = v26 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((result & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        _decodeScalar(_:startingAt:)();
      }

      Unicode.Scalar.properties.getter();
      v28 = Unicode.Scalar.Properties.isPatternWhitespace.getter();
      (*(v6 + 8))(v10, v35);

      if ((v28 & 1) == 0)
      {
        goto LABEL_27;
      }

      result = Substring.index(after:)();
      v25 = result >> 14;
      if (result >> 14 == v34)
      {
        v25 = v34;
LABEL_27:
        v24 = v33;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v25 = v23 >> 14;
LABEL_28:
  if (v25 < v24)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = Substring.subscript.getter();
  v31 = v30;

  if (!((v29 ^ v31) >> 14))
  {

    return 0;
  }

  return v29;
}

{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  result = String.subscript.getter();
  v11 = result;
  v12 = v10;
  if (a2)
  {
    if (v10 >> 14 < result >> 14)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = result;
    }

    if (v14 >> 14 < v11 >> 14)
    {
      goto LABEL_26;
    }
  }

  v15 = Substring.subscript.getter();
  v17 = v16;

  v18 = v15 >> 14;
  if (v15 >> 14 == v17 >> 14)
  {
    v19 = v17 >> 14;
  }

  else
  {
    v19 = v15 >> 14;
    do
    {
      if (Substring.subscript.getter() == 123 && v21 == 0xE100000000000000)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      result = Substring.index(after:)();
      v19 = result >> 14;
    }

    while (result >> 14 != v17 >> 14);
    v19 = v17 >> 14;
LABEL_18:
    v18 = v15 >> 14;
  }

  if (v19 < v18)
  {
    __break(1u);
    goto LABEL_24;
  }

  v22 = Substring.subscript.getter();
  v24 = v23;

  if (!((v22 ^ v24) >> 14))
  {

    return 0;
  }

  return v22;
}

{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  result = String.subscript.getter();
  v11 = result;
  v12 = v10;
  if (a2)
  {
    if (v10 >> 14 < result >> 14)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = result;
    }

    if (v14 >> 14 < v11 >> 14)
    {
      goto LABEL_32;
    }
  }

  v15 = Substring.subscript.getter();
  v17 = v16;

  v18 = v15 >> 14;
  if (v15 >> 14 != v17 >> 14)
  {
    v19 = v15 >> 14;
    while (1)
    {
      v21 = Substring.subscript.getter();
      v23 = v22;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      if (v21 == 48 && v23 == 0xE100000000000000)
      {
        goto LABEL_12;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

        goto LABEL_23;
      }

      if (v21 != 55 || v23 != 0xE100000000000000)
      {
LABEL_12:
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      result = Substring.index(after:)();
      v19 = result >> 14;
      if (result >> 14 == v17 >> 14)
      {
        v19 = v17 >> 14;
LABEL_23:
        v18 = v15 >> 14;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v19 = v17 >> 14;
LABEL_24:
  if (v19 < v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = Substring.subscript.getter();
  v26 = v25;

  if (!((v24 ^ v26) >> 14))
  {

    return 0;
  }

  return v24;
}

{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  result = String.subscript.getter();
  v11 = result;
  v12 = v10;
  if (a2)
  {
    if (v10 >> 14 < result >> 14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = result;
    }

    if (v14 >> 14 < v11 >> 14)
    {
      goto LABEL_21;
    }
  }

  v15 = Substring.subscript.getter();
  v17 = v16;

  if (v15 >> 14 == v17 >> 14)
  {
    goto LABEL_10;
  }

  Substring.subscript.getter();
  Character.hexDigitValue.getter();
  v20 = v19;

  v18 = v15 >> 14;
  if ((v20 & 1) == 0)
  {
    while (1)
    {
      result = Substring.index(after:)();
      v18 = result >> 14;
      if (result >> 14 == v17 >> 14)
      {
        break;
      }

      Substring.subscript.getter();
      Character.hexDigitValue.getter();
      v22 = v21;

      if (v22)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    v18 = v17 >> 14;
  }

LABEL_14:
  if (v18 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v23 = Substring.subscript.getter();
  v25 = v24;

  if (!((v23 ^ v25) >> 14))
  {

    return 0;
  }

  return v23;
}

{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  result = String.subscript.getter();
  v11 = result;
  v12 = v10;
  if (a2)
  {
    if (v10 >> 14 < result >> 14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = result;
    }

    if (v14 >> 14 < v11 >> 14)
    {
      goto LABEL_21;
    }
  }

  v15 = Substring.subscript.getter();
  v17 = v16;

  if (v15 >> 14 == v17 >> 14)
  {
    goto LABEL_10;
  }

  Substring.subscript.getter();
  v19 = Character.isNumber.getter();

  v18 = v15 >> 14;
  if (v19)
  {
    while (1)
    {
      result = Substring.index(after:)();
      v18 = result >> 14;
      if (result >> 14 == v17 >> 14)
      {
        break;
      }

      Substring.subscript.getter();
      v20 = Character.isNumber.getter();

      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    v18 = v17 >> 14;
  }

LABEL_14:
  if (v18 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = Substring.subscript.getter();
  v23 = v22;

  if (!((v21 ^ v23) >> 14))
  {

    return 0;
  }

  return v21;
}

unint64_t Source.peekPrefix(maxLength:_:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  result = String.subscript.getter();
  v12 = result;
  v13 = v11;
  if (a2)
  {
    if (v11 >> 14 < result >> 14)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    if (a1 < 0)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = result;
    }

    if (v15 >> 14 < v12 >> 14)
    {
      goto LABEL_24;
    }
  }

  v16 = Substring.subscript.getter();
  v18 = v17;

  v19 = v16 >> 14;
  if (v16 >> 14 == v18 >> 14)
  {
    v20 = v18 >> 14;
  }

  else
  {
    v21 = Substring.subscript.getter();
    v22 = a3(v21);

    v20 = v16 >> 14;
    if (v22)
    {
      while (1)
      {
        result = Substring.index(after:)();
        v20 = result >> 14;
        if (result >> 14 == v18 >> 14)
        {
          break;
        }

        v23 = Substring.subscript.getter();
        v24 = a3(v23);

        if ((v24 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v20 = v18 >> 14;
LABEL_16:
      v19 = v16 >> 14;
    }
  }

  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = Substring.subscript.getter();
  v27 = v26;

  if ((v25 ^ v27) < 0x4000)
  {

    return 0;
  }

  return v25;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v9 = Substring.subscript.getter();
      v11 = v10;
      v12 = Substring.index(after:)();
      v13 = String.Iterator.next()();
      if (!v13.value._object)
      {
        break;
      }

      if (v9 == v13.value._countAndFlagsBits && v13.value._object == v11)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v12 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t Source.Location.range.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t Source.Location.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

double Source.Location.init<A>(_:in:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  lazy protocol witness table accessor for type String and conformance String();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  (*(*(a3 - 8) + 8))(a1, a3);

  result = *&v10;
  *a4 = v10;
  return result;
}

uint64_t Source.Location.init(from:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{

  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t AST.Empty.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68E11C0](*v0 >> 14);
  return MEMORY[0x1C68E11C0](v1 >> 14);
}

Swift::Int AST.Empty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AST.Empty()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68E11C0](v1 >> 14);
  MEMORY[0x1C68E11C0](v2 >> 14);
  return Hasher._finalize()();
}

__n128 Source.LocatedError.location.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 36));
  *a2 = result;
  return result;
}

uint64_t Source.LocatedError.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for Source.LocatedError();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t Source.LocatedError._typeErasedError.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = swift_allocError();
  (*(*(v3 - 8) + 16))(v5, v1, v3);
  return v4;
}

__n128 Source.Located.location.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

__n128 Source.Located.location.setter(__n128 *a1, uint64_t a2)
{
  result = *a1;
  *(v2 + *(a2 + 28)) = *a1;
  return result;
}

uint64_t (*Source.Located.location.modify(uint64_t a1, uint64_t a2))()
{
  result = AST.root.modify;
  v4 = v2 + *(a2 + 28);
  return result;
}

int64x2_t Source.Located.init(faking:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v4 = type metadata accessor for Source.Located();
  result = vdupq_n_s64(0xFuLL);
  *(a3 + *(v4 + 28)) = result;
  return result;
}

uint64_t Source.Located.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v5);
  if (!v6)
  {
    v16 = (v5 + *(a3 + 28));
    v17 = *v16;
    v18 = v16[1];
    (*(v10 + 32))(a5, v13, a4);
    result = type metadata accessor for Source.Located();
    v19 = (a5 + *(result + 28));
    *v19 = v17;
    v19[1] = v18;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance <A> Source.Located<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static Source.Located<A>.== infix(_:_:)(a1, a2);
}

uint64_t specialized Source.Located<A>.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    MEMORY[0x1C68E1190](1);
    String.hash(into:)();
  }

  else
  {
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x1C68E1190](0);
    if (v2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1C68E1190](v1);
    }

    MEMORY[0x1C68E11C0](v4 >> 14);
    MEMORY[0x1C68E11C0](v3 >> 14);
  }

  v5 = v0[6];
  MEMORY[0x1C68E11C0](v0[5] >> 14);
  return MEMORY[0x1C68E11C0](v5 >> 14);
}

uint64_t Source.Located<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  dispatch thunk of Hashable.hash(into:)();
  v5 = (v2 + *(a2 + 28));
  v6 = v5[1];
  MEMORY[0x1C68E11C0](*v5 >> 14);
  return MEMORY[0x1C68E11C0](v6 >> 14);
}

Swift::Int Source.Located<A>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  Source.Located<A>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> Source.Located<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Source.Located<A>.hash(into:)(v6, a2);
  return Hasher._finalize()();
}

uint64_t Source.LocatedError.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance SyntaxOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance SyntaxOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance SyntaxOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance SyntaxOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized _ASTPrintable._dump()()
{
  v1 = *(v0 + 104);
  v21 = v1;
  v22 = v1;
  outlined init with copy of AST.Node(&v22, &v19);
  if (v1 >> 60 == 6)
  {
    goto LABEL_11;
  }

  v2 = specialized _ASTPrintable._dump()(v1);
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

LABEL_11:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v4;
LABEL_12:
  outlined destroy of AST.Node(&v21);
  v19 = 0x5F70756F7267;
  v20 = 0xE600000000000000;
  v10 = AST.Group.Kind._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v10);

  v11 = v19;
  v12 = *(v6 + 2);
  if (!v12)
  {
LABEL_20:

    return v11;
  }

  if (v12 != 1)
  {
    goto LABEL_17;
  }

  v13 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v13 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
LABEL_17:
    MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    MEMORY[0x1C68E0BF0](v14, v16);

    MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
    return v19;
  }

  if (*(v6 + 2))
  {
    v11 = *(v6 + 4);
    v18 = *(v6 + 5);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

{
  v1 = *(v0 + 104);
  v26 = v1;
  v27 = v1;
  outlined init with copy of AST.Node(&v27, &v24);
  if (v1 >> 60 == 6)
  {
    goto LABEL_11;
  }

  v2 = specialized _ASTPrintable._dump()(v1);
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

LABEL_11:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v4;
LABEL_12:
  outlined destroy of AST.Node(&v26);
  v10 = *(v0 + 80);
  v24 = 0x5F746E617571;
  v25 = 0xE600000000000000;
  v11 = AST.Quantification.Amount._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v11);

  MEMORY[0x1C68E0BF0](95, 0xE100000000000000);
  v12 = 0xE900000000000074;
  v13 = 0x6E617463756C6572;
  if (v10 != 1)
  {
    v13 = 0x6973736573736F70;
    v12 = 0xEA00000000006576;
  }

  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7265676165;
  }

  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1C68E0BF0](v14, v15);

  v16 = v24;
  v17 = *(v6 + 2);
  if (!v17)
  {
    goto LABEL_28;
  }

  if (v17 != 1)
  {
    goto LABEL_25;
  }

  v18 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v18 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
LABEL_25:
    MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    MEMORY[0x1C68E0BF0](v19, v21);

    MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
    return v24;
  }

  if (*(v6 + 2))
  {
    v16 = *(v6 + 4);
    v23 = *(v6 + 5);

LABEL_28:

    return v16;
  }

  __break(1u);
  return result;
}

{
  v1 = 0xE90000000000003ELL;
  v2 = 0x64696C61766E693CLL;
  v3 = 0x64696C61766E693CLL;
  if ((v0[1] & 1) == 0)
  {
    v8 = *v0;
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v4 = v0[4];
  v5 = *(v0 + 40);
  v9 = v3;
  MEMORY[0x1C68E0BF0](46, 0xE100000000000000);
  if ((v5 & 1) == 0)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v6;
  }

  MEMORY[0x1C68E0BF0](v2, v1);

  return v9;
}

uint64_t specialized _ASTPrintable._dump()(uint64_t a1)
{
  v32[5] = a1;
  AST.Node._associatedValue.getter(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    outlined destroy of _ASTParent?(&v33, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    v32[0] = a1;
    AST.Node._associatedValue.getter(&v33);
    v19 = *(&v34 + 1);
    v20 = v35;
    __swift_project_boxed_opaque_existential_1Tm(&v33, *(&v34 + 1));
    v21 = (*(*(v20 + 8) + 24))(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    return v21;
  }

  v2 = *(&v34 + 1);
  v3 = v35;
  __swift_project_boxed_opaque_existential_1Tm(&v33, *(&v34 + 1));
  v4 = (*(v3 + 16))(v2, v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  v6 = *(v4 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if (v9 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v10 = *(v4 + 32 + 8 * v9);
      if (v10 >> 60 != 6)
      {
        break;
      }

LABEL_5:
      if (v6 == ++v9)
      {
        goto LABEL_20;
      }
    }

    v11 = specialized _ASTPrintable._dump()(v10);
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      goto LABEL_5;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    v7 = v9 + 1;
    *(v8 + 16) = v17;
    v18 = v8 + 16 * v16;
    *(v18 + 32) = v11;
    *(v18 + 40) = v13;
  }

  while (v6 - 1 != v9);
LABEL_20:

  v32[0] = a1;
  AST.Node._associatedValue.getter(&v33);
  v23 = *(&v34 + 1);
  v22 = v35;
  __swift_project_boxed_opaque_existential_1Tm(&v33, *(&v34 + 1));
  v21 = (*(*(v22 + 8) + 24))(v23);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  v26 = *(v8 + 16);
  if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_25;
    }

    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
LABEL_25:
      *&v33 = v21;
      *(&v33 + 1) = v25;
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      v32[0] = v8;
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
      v28 = BidirectionalCollection<>.joined(separator:)();
      v30 = v29;

      MEMORY[0x1C68E0BF0](v28, v30);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      return v33;
    }

    if (*(v8 + 16))
    {
      v21 = *(v8 + 32);
      v31 = *(v8 + 40);

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_28:

    return v21;
  }

  return result;
}

{
  v2 = *(a1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = v4;
      while (1)
      {
        if (v6 >= v2)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        v7 = *(a1 + 32 + 8 * v6);
        if (v7 >> 60 != 6)
        {
          break;
        }

LABEL_5:
        ++v6;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      v8 = specialized _ASTPrintable._dump()(v7);
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v8;
      *(v14 + 40) = v10;
      if (v4 == v2)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_5;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v15 = *(v5 + 16);
  if (v15)
  {
    if (v15 == 1)
    {
      v17 = *(v5 + 32);
      v16 = *(v5 + 40);

      return v17;
    }

    else
    {
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
      v18 = BidirectionalCollection<>.joined(separator:)();
      v20 = v19;

      MEMORY[0x1C68E0BF0](v18, v20);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

void specialized _ASTPrintable._dump()()
{
  v1 = v0[1];
  v29 = *v0;
  v30 = v1;
  v2 = v0[3];
  v31 = v0[2];
  v32 = v2;
  v33[0] = v29;
  v33[1] = v1;
  v33[2] = v31;
  v33[3] = v2;
  v3 = v1;
  v4 = (DWORD2(v31) >> 1) & 3;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v6 = MEMORY[0x1E69E7CC0];
      v7 = *(MEMORY[0x1E69E7CC0] + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C0C7E2F0;
    *(v6 + 32) = v3;
    outlined init with copy of AST.AbsentFunction(v33, v28);
    v7 = 1;
    goto LABEL_7;
  }

  v5 = *(&v31 + 1) & 0xFFFFFFFFFFFFFFF9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV4NodeOGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C0C7E300;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  outlined init with copy of AST.AbsentFunction(v33, v28);
  v7 = 2;
LABEL_7:
  v9 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v9;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v11 = *(v6 + 32 + 8 * v10);
      if (v11 >> 60 != 6)
      {
        break;
      }

LABEL_9:
      if (v7 == ++v10)
      {
        goto LABEL_21;
      }
    }

    v12 = specialized _ASTPrintable._dump()(v11);
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      goto LABEL_9;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
    }

    v9 = v10 + 1;
    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    *(v18 + 4) = v12;
    *(v18 + 5) = v14;
  }

  while (v7 - 1 != v10);
LABEL_21:

  v19 = AST.AbsentFunction._dumpBase.getter();
  v21 = *(v8 + 2);
  if (v21)
  {
    if (v21 != 1)
    {
      goto LABEL_26;
    }

    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {

      if (*(v8 + 2))
      {
        v27 = *(v8 + 4);
        v26 = *(v8 + 5);
      }

      else
      {
LABEL_31:
        __break(1u);
      }
    }

    else
    {
LABEL_26:
      v28[0] = v19;
      v28[1] = v20;
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      v28[8] = v8;
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;

      MEMORY[0x1C68E0BF0](v23, v25);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
    }
  }

  else
  {
  }
}

uint64_t specialized _ASTPrintable._dump()(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v2;
    while (1)
    {
      if (v5 >= v1)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

      v6 = *(v3 + 8 * v5);
      if (v6 >> 60 != 6)
      {
        break;
      }

LABEL_5:
      ++v5;
      if (v2 == v1)
      {
        goto LABEL_19;
      }
    }

    v7 = specialized _ASTPrintable._dump()(v6);
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {

      goto LABEL_5;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v12 + 1;
    v13 = v4 + 16 * v12;
    *(v13 + 32) = v7;
    *(v13 + 40) = v9;
  }

  while (v2 != v1);
LABEL_19:
  strcpy(v22, "alternation<");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68E0BF0](v14);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  v15 = v22[0];
  v16 = *(v4 + 16);
  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_24;
    }

    v17 = HIBYTE(v22[1]) & 0xF;
    if ((v22[1] & 0x2000000000000000) == 0)
    {
      v17 = v22[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
LABEL_24:
      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
      v18 = BidirectionalCollection<>.joined(separator:)();
      v20 = v19;

      MEMORY[0x1C68E0BF0](v18, v20);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      return v22[0];
    }

    if (*(v4 + 16))
    {
      v15 = *(v4 + 32);
      v21 = *(v4 + 40);

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_27:

    return v15;
  }

  return result;
}

Swift::String __swiftcall _ASTPrintable._dump()()
{
  v2 = v1;
  v3 = v0;
  isUniquelyReferenced_nonNull_native = _ASTPrintable._children.getter(v0, v1);
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = isUniquelyReferenced_nonNull_native;
    v7 = *(isUniquelyReferenced_nonNull_native + 16);
    if (!v7)
    {
      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    v8 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v8;
      while (1)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = *(v6 + 32 + 8 * v9);
        if (v10 >> 60 != 6)
        {
          break;
        }

LABEL_5:
        if (v7 == ++v9)
        {
          goto LABEL_20;
        }
      }

      v11 = specialized _ASTPrintable._dump()(v10);
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v29);
        v17 = v16 + 1;
        v29 = isUniquelyReferenced_nonNull_native;
      }

      v8 = v9 + 1;
      *(v29 + 16) = v17;
      v18 = v29 + 16 * v16;
      *(v18 + 32) = v11;
      *(v18 + 40) = v13;
      if (v7 - 1 == v9)
      {
LABEL_20:

        v19 = (*(v2 + 24))(v3, v2);
        v21 = *(v29 + 16);
        if (v21)
        {
          if (v21 != 1)
          {
            goto LABEL_25;
          }

          v22 = HIBYTE(v20) & 0xF;
          if ((v20 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
LABEL_25:
            v30 = v19;
            v31 = v20;
            MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
            swift_getCanonicalSpecializedMetadata();
            lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
            v23 = BidirectionalCollection<>.joined(separator:)();
            v25 = v24;

            MEMORY[0x1C68E0BF0](v23, v25);

            MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
            isUniquelyReferenced_nonNull_native = v30;
            v5 = v31;
            goto LABEL_32;
          }

          if (!*(v29 + 16))
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v26 = *(v29 + 32);
          v27 = *(v29 + 40);
        }

        else
        {
          v26 = v19;
          v27 = v20;
        }

        v5 = v27;
        isUniquelyReferenced_nonNull_native = v26;
        goto LABEL_32;
      }
    }

    goto LABEL_5;
  }

  isUniquelyReferenced_nonNull_native = (*(v2 + 24))(v3, v2);
LABEL_32:
  result._object = v5;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t _ASTPrintable._children.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = *(v4 + 16);
  v10(v18 - v11, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
  if (!swift_dynamicCast())
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    outlined destroy of _ASTParent?(&v19, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    v10(v8, v2, a1);
    if (swift_dynamicCast())
    {
      v18[5] = v19;
      AST.Node._associatedValue.getter(v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
      if (swift_dynamicCast())
      {
        v15 = *(&v20 + 1);
        v16 = v21;
        __swift_project_boxed_opaque_existential_1Tm(&v19, *(&v20 + 1));
        v14 = (*(v16 + 16))(v15, v16);
        __swift_destroy_boxed_opaque_existential_1Tm(&v19);

        return v14;
      }

      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      outlined destroy of _ASTParent?(&v19, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
    }

    return 0;
  }

  v12 = *(&v20 + 1);
  v13 = v21;
  __swift_project_boxed_opaque_existential_1Tm(&v19, *(&v20 + 1));
  v14 = (*(v13 + 16))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  return v14;
}

uint64_t AST._dumpBase.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1)
  {
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v1);
    MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
    MEMORY[0x1C68E0BF0](0, 0xE000000000000000);
  }

  v3 = specialized _ASTPrintable._dump()(v2);
  MEMORY[0x1C68E0BF0](v3);

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return AST._dumpBase.getter();
}

uint64_t AST.Node._dumpBase.getter()
{
  v8 = *v0;
  AST.Node._associatedValue.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v3 = (*(*(v2 + 8) + 24))(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Node()
{
  v8 = *v0;
  AST.Node._associatedValue.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v3 = (*(*(v2 + 8) + 24))(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t AST.Conditional.Condition._dumpBase.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Conditional.Condition()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.Conditional.Condition(uint64_t a1)
{
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v5 = *v1;
  v6 = v1[1];
  v3 = lazy protocol witness table accessor for type AST.Conditional.Condition and conformance AST.Conditional.Condition();
  return (*(v3 + 24))(a1, v3);
}

uint64_t AST.Conditional.Condition.PCREVersionCheck.Kind._dumpBase.getter()
{
  if (*v0)
  {
    result = 15678;
  }

  else
  {
    result = 61;
  }

  *v0;
  return result;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Conditional.Condition.PCREVersionCheck.Kind()
{
  if (*v0)
  {
    result = 15678;
  }

  else
  {
    result = 61;
  }

  *v0;
  return result;
}

uint64_t AST.Conditional.Condition.PCREVersionNumber._dumpBase.getter()
{
  v1 = 0xE90000000000003ELL;
  v2 = 0x64696C61766E693CLL;
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = 0x64696C61766E693CLL;
  if ((v0[1] & 1) == 0)
  {
    v8 = *v0;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v9 = v5;
  MEMORY[0x1C68E0BF0](46, 0xE100000000000000);
  if ((v4 & 1) == 0)
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v6;
  }

  MEMORY[0x1C68E0BF0](v2, v1);

  return v9;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.Conditional.Condition.PCREVersionNumber()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return specialized _ASTPrintable._dump()();
}

uint64_t AST.Conditional.Condition.PCREVersionCheck._dumpBase.getter()
{
  v7 = *(v0 + 56);
  v8 = *(v0 + 72);
  v9 = *(v0 + 88);
  v1 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (*v0)
  {
    v2 = 15678;
  }

  else
  {
    v2 = 61;
  }

  if (*v0)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE100000000000000;
  }

  MEMORY[0x1C68E0BF0](v2, v3);

  v4 = specialized _ASTPrintable._dump()();
  MEMORY[0x1C68E0BF0](v4);

  return 0x4E4F4953524556;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Conditional.Condition.PCREVersionCheck()
{
  v7 = *(v0 + 56);
  v8 = *(v0 + 72);
  v9 = *(v0 + 88);
  v1 = *(v0 + 24);
  v6 = *(v0 + 40);
  if (*v0)
  {
    v2 = 15678;
  }

  else
  {
    v2 = 61;
  }

  if (*v0)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE100000000000000;
  }

  MEMORY[0x1C68E0BF0](v2, v3);

  v4 = specialized _ASTPrintable._dump()();
  MEMORY[0x1C68E0BF0](v4);

  return 0x4E4F4953524556;
}

uint64_t AST.Reference._dumpBase.getter()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 6);
  v3 = *(v0 + 72);
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 32);
  _print_unlocked<A, B>(_:_:)();
  result = 0;
  if ((v3 & 1) == 0)
  {
    if (v2)
    {
      v5 = 0xE90000000000003ELL;
      v6 = 0x64696C61766E693CLL;
    }

    else
    {
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v5 = v7;
    }

    MEMORY[0x1C68E0BF0](v6, v5);

    return 0;
  }

  return result;
}

uint64_t AST.Atom.Number._dumpBase.getter()
{
  if (v0[1])
  {
    return 0x64696C61766E693CLL;
  }

  v2 = *v0;
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Number()
{
  if (v0[1])
  {
    return 0x64696C61766E693CLL;
  }

  v2 = *v0;
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t AST.Atom.Callout._dumpBase.getter()
{
  v1 = v0[7];
  v34[6] = v0[6];
  v34[7] = v1;
  v35[0] = v0[8];
  *(v35 + 9) = *(v0 + 137);
  v2 = v0[3];
  v34[2] = v0[2];
  v34[3] = v2;
  v3 = v0[5];
  v34[4] = v0[4];
  v34[5] = v3;
  v4 = v0[1];
  v34[0] = *v0;
  v34[1] = v4;
  v5 = _s12_RegexParser3ASTV4AtomV7CalloutOWOg(v34);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = AST.root.modify(v34);
      v25 = *(v6 + 80);
      v27 = *(v6 + 96);
      v29 = *(v6 + 112);
      v31 = *(v6 + 128);
      v14 = *(v6 + 16);
      v17 = *(v6 + 32);
      v21 = *(v6 + 48);
      v23 = *(v6 + 64);
      v11 = *v6;
      return AST.Atom.Callout.OnigurumaNamed._dumpBase.getter();
    }

    else
    {
      v10 = AST.root.modify(v34);
      v28 = *(v10 + 96);
      v30 = *(v10 + 112);
      v32 = *(v10 + 128);
      v33 = *(v10 + 144);
      v19 = *(v10 + 32);
      v22 = *(v10 + 48);
      v24 = *(v10 + 64);
      v26 = *(v10 + 80);
      v13 = *v10;
      v16 = *(v10 + 16);
      return AST.Atom.Callout.OnigurumaOfContents._dumpBase.getter();
    }
  }

  else
  {
    v8 = AST.root.modify(v34);
    v12 = *v8;
    v15 = *(v8 + 16);
    v18 = *(v8 + 32);
    v20 = *(v8 + 40);
    v9 = lazy protocol witness table accessor for type AST.Atom.Callout.PCRE and conformance AST.Atom.Callout.PCRE();
    return (*(v9 + 24))(&type metadata for AST.Atom.Callout.PCRE, v9);
  }
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Callout()
{
  v1 = v0[7];
  v34[6] = v0[6];
  v34[7] = v1;
  v35[0] = v0[8];
  *(v35 + 9) = *(v0 + 137);
  v2 = v0[3];
  v34[2] = v0[2];
  v34[3] = v2;
  v3 = v0[5];
  v34[4] = v0[4];
  v34[5] = v3;
  v4 = v0[1];
  v34[0] = *v0;
  v34[1] = v4;
  v5 = _s12_RegexParser3ASTV4AtomV7CalloutOWOg(v34);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = AST.root.modify(v34);
      v25 = *(v6 + 80);
      v27 = *(v6 + 96);
      v29 = *(v6 + 112);
      v31 = *(v6 + 128);
      v14 = *(v6 + 16);
      v17 = *(v6 + 32);
      v21 = *(v6 + 48);
      v23 = *(v6 + 64);
      v11 = *v6;
      return AST.Atom.Callout.OnigurumaNamed._dumpBase.getter();
    }

    else
    {
      v10 = AST.root.modify(v34);
      v28 = *(v10 + 96);
      v30 = *(v10 + 112);
      v32 = *(v10 + 128);
      v33 = *(v10 + 144);
      v19 = *(v10 + 32);
      v22 = *(v10 + 48);
      v24 = *(v10 + 64);
      v26 = *(v10 + 80);
      v13 = *v10;
      v16 = *(v10 + 16);
      return AST.Atom.Callout.OnigurumaOfContents._dumpBase.getter();
    }
  }

  else
  {
    v8 = AST.root.modify(v34);
    v12 = *v8;
    v15 = *(v8 + 16);
    v18 = *(v8 + 32);
    v20 = *(v8 + 40);
    v9 = lazy protocol witness table accessor for type AST.Atom.Callout.PCRE and conformance AST.Atom.Callout.PCRE();
    return (*(v9 + 24))(&type metadata for AST.Atom.Callout.PCRE, v9);
  }
}

uint64_t AST.Atom.Callout.PCRE._dumpBase.getter()
{
  v1 = *(v0 + 32);
  MEMORY[0x1C68E0BF0](0x6C61632045524350, 0xED00002074756F6CLL);
  v4 = v0[1];
  v3 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Callout.PCRE()
{
  v1 = *(v0 + 32);
  MEMORY[0x1C68E0BF0](0x6C61632045524350, 0xED00002074756F6CLL);
  v4 = v0[1];
  v3 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.Atom.Callout.PCRE(uint64_t a1)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v3 = lazy protocol witness table accessor for type AST.Atom.Callout.PCRE and conformance AST.Atom.Callout.PCRE();
  return (*(v3 + 24))(a1, v3);
}

uint64_t AST.Atom.Callout.OnigurumaTag._dumpBase.getter()
{
  MEMORY[0x1C68E0BF0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
  return 91;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Atom.Callout.OnigurumaTag()
{
  MEMORY[0x1C68E0BF0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
  return 91;
}

uint64_t AST.Atom.Callout.OnigurumaNamed.ArgList._dumpBase.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  swift_getCanonicalSpecializedMetadata();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;

  MEMORY[0x1C68E0BF0](v9, v11);

  MEMORY[0x1C68E0BF0](125, 0xE100000000000000);
  return 123;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.Atom.Callout.OnigurumaNamed.ArgList()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return AST.Atom.Callout.OnigurumaNamed.ArgList._dumpBase.getter();
}

unint64_t AST.Atom.Callout.OnigurumaNamed._dumpBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[16];
  _StringGuts.grow(_:)(26);

  MEMORY[0x1C68E0BF0](v1, v2);
  if (v4)
  {
    MEMORY[0x1C68E0BF0](v3, v4);
    MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
    MEMORY[0x1C68E0BF0](91, 0xE100000000000000);
  }

  if (v7)
  {
    v10 = AST.Atom.Callout.OnigurumaNamed.ArgList._dumpBase.getter();
    MEMORY[0x1C68E0BF0](v10);
  }

  return 0xD000000000000018;
}

unint64_t AST.Atom.Callout.OnigurumaOfContents._dumpBase.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 128);
  _StringGuts.grow(_:)(34);

  MEMORY[0x1C68E0BF0](v1, v2);
  MEMORY[0x1C68E0BF0](125, 0xE100000000000000);
  if (v4)
  {
    MEMORY[0x1C68E0BF0](v3, v4);
    MEMORY[0x1C68E0BF0](93, 0xE100000000000000);
    MEMORY[0x1C68E0BF0](91, 0xE100000000000000);
  }

  MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68E0BF0](0, 0xE000000000000000);

  return 0xD00000000000001FLL;
}

uint64_t AST.Group.Kind._dumpBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[6];
  v3 = v0[7];
  if (*(v0 + 80) > 1u)
  {
    v6 = v0[2];
    v5 = v0[3];
    if (*(v0 + 80) == 2)
    {
      _StringGuts.grow(_:)(25);

      v7 = AST.MatchingOptionSequence._dumpBase.getter();
      MEMORY[0x1C68E0BF0](v7);

      MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
      return 0xD000000000000016;
    }

    else
    {
      v10 = v0[4] | v0[5] | v4;
      v11 = v3 | v0[9] | v0[8];
      if (v6 | v2 | v1 | v5 | v10 | v11)
      {
        result = 0x75747061436E6F6ELL;
        v12 = v6 | v2 | v5 | v10 | v11;
        if ((v1 != 1 || v12) && (v1 != 2 || v12))
        {
          if (v1 != 3 || v12)
          {
            if (v1 != 4 || v12)
            {
              if (v1 != 5 || v12)
              {
                if (v1 != 6 || v12)
                {
                  if (v1 != 7 || v12)
                  {
                    if (v1 != 8 || v12)
                    {
                      if (v1 != 9 || v12)
                      {
                        if (v1 == 10 && v12 == 0)
                        {
                          return 0x7552747069726373;
                        }

                        else
                        {
                          return 0x635363696D6F7461;
                        }
                      }

                      else
                      {
                        return 0xD000000000000013;
                      }
                    }

                    else
                    {
                      return 0xD000000000000012;
                    }
                  }

                  else
                  {
                    return 0x696865626B6F6F6CLL;
                  }
                }

                else
                {
                  return 0xD000000000000012;
                }
              }

              else
              {
                return 0xD000000000000011;
              }
            }

            else
            {
              return 0x616568616B6F6F6CLL;
            }
          }

          else
          {
            return 0xD000000000000012;
          }
        }
      }

      else
      {
        return 0x65727574706163;
      }
    }
  }

  else
  {
    if (*(v0 + 80))
    {
      v9 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v13 = 0xD000000000000011;
      if (v2)
      {
        v9 = v2;
      }

      else
      {
        v1 = 0;
      }

      MEMORY[0x1C68E0BF0](v1, v9);

      MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
      MEMORY[0x1C68E0BF0](v4, v3);
      MEMORY[0x1C68E0BF0](0, 0xE000000000000000);
    }

    else
    {
      v13 = 0x3C65727574706163;
      MEMORY[0x1C68E0BF0](v1, v2);
      MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
    }

    return v13;
  }

  return result;
}

uint64_t AST.Group._dumpBase.getter()
{
  v0 = AST.Group.Kind._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v0);

  return 0x5F70756F7267;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Group()
{
  v0 = AST.Group.Kind._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v0);

  return 0x5F70756F7267;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.Group()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return specialized _ASTPrintable._dump()();
}

uint64_t AST.Quantification.Amount._canonicalBase.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 45) | (*(v0 + 47) << 16);
  v4 = v3 >> 21;
  if (v3 >> 21 <= 1)
  {
    if (v4)
    {
      v33 = 123;
      if (v2)
      {
        v27 = 0x7265626D756E233CLL;
        v28 = 0xEA00000000003E23;
      }

      else
      {
        v32 = *v0;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v29;
      }

      MEMORY[0x1C68E0BF0](v27, v28);

      v15 = 32044;
      v16 = 0xE200000000000000;
      goto LABEL_34;
    }

    v33 = 123;
    if (v2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v33 = 11387;
    if (v2)
    {
LABEL_13:
      v13 = 0x7265626D756E233CLL;
      v7 = 0xEA00000000003E23;
      goto LABEL_14;
    }

LABEL_11:
    v31 = *v0;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v14;
LABEL_14:
    MEMORY[0x1C68E0BF0](v13, v7);

    v15 = 125;
    v16 = 0xE100000000000000;
LABEL_34:
    MEMORY[0x1C68E0BF0](v15, v16);
    return v33;
  }

  v5 = v0[4];
  v6 = *(v0 + 40);
  if (v4 == 3)
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x64696C61766E693CLL;
    v33 = 123;
    v9 = 0x64696C61766E693CLL;
    v10 = 0xE90000000000003ELL;
    if ((v2 & 1) == 0)
    {
      v30 = *v0;
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v11;
    }

    MEMORY[0x1C68E0BF0](v9, v10);

    MEMORY[0x1C68E0BF0](44, 0xE100000000000000);
    if ((v6 & 1) == 0)
    {
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v12;
    }

    v13 = v8;
    goto LABEL_14;
  }

  v17 = *(v0 + 41) | ((*&v3 & 0xFFFFFFLL) << 32);
  v18 = v0[6];
  v19 = v0[7];
  v20 = v6 | (v17 << 8);
  v21 = (*(v0 + 9) << 8) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 40) | v2;
  v22 = v0[3] | v0[2];
  if (v20 == 0x8000000000000000 && (v22 | v1 | v5 | v18 | v19 | v21) == 0)
  {
    return 42;
  }

  if (v22 | v21 | v5 | v18 | v19)
  {
    v24 = 0;
  }

  else
  {
    v24 = v1 == 1;
  }

  if (v24 && v20 == 0x8000000000000000)
  {
    return 43;
  }

  else
  {
    return 63;
  }
}