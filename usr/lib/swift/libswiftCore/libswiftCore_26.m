void *String.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 32))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t String.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  v7 = v11;
  v8 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 32))(a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  v6 = v10;
  v7 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 32))(v2, v3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t protocol witness for Decodable.init(from:) in conformance String@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v13, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  v9 = (*(v8 + 32))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t RawRepresentable<>.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v168 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v164 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v172 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v169, v14, v13);
  if (!v5)
  {
    v165 = v9;
    v166 = v10;
    v15 = v168;
    v167 = a5;
    v16 = v170;
    v17 = v171;
    __swift_project_boxed_opaque_existential_0Tm(&v169, v170);
    v18 = (*(v17 + 32))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(&v169._countAndFlagsBits);
    v164 = v18;
    v169._countAndFlagsBits = v18;
    v169._object = v20;
    v21 = *(v15 + 16);
    v20;
    v21(&v169, a2, v15);
    v22 = *(a2 - 8);
    if ((*(v22 + 48))(v12, 1, a2) != 1)
    {
      v20;
      (*(v22 + 32))(v167, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v172);
    }

    (*(v166 + 8))(v12, v165);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v24 = v23;
    v25 = v172[3];
    v26 = v172[4];
    __swift_project_boxed_opaque_existential_0Tm(v172, v25);
    v168 = (*(v26 + 8))(v25, v26);
    v27 = _StringGuts.init(_initialCapacity:)(45);
    v37 = v28;
    v169._countAndFlagsBits = v27;
    v169._object = v28;
    v38 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v38 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v38 || (v27 & ~v28 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v28) != 0 && (v39 = specialized _SmallString.init(_:appending:)(v27, v28, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v41 & 1) == 0))
      {
        v44 = v40;
        v45 = v39;
        v37;
        0x800000018066C240 | 0x8000000000000000;
        v169._countAndFlagsBits = v45;
        v169._object = v44;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v42 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v42 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v42, v29, v30, v31, v32, v33, v34, v35, v36);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v28;
      v169._countAndFlagsBits = 0xD000000000000012;
      v169._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(a2, 0);
    if (v47 < 0)
    {
      goto LABEL_102;
    }

    v48 = TypeName;
    v49 = v47;
    v50 = validateUTF8(_:)(TypeName, v47);
    if (v50 < 0)
    {
      v54 = repairUTF8(_:firstKnownBrokenRange:)(v48, v49, v51, v52);
    }

    else
    {
      v54 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v48, v49, v50 & 1, v53);
    }

    countAndFlagsBits = v54;
    v65 = v55;
    object = v169._object;
    v67 = (v169._object >> 56) & 0xF;
    if ((v169._object & 0x2000000000000000) == 0)
    {
      v67 = v169._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v67 || (v169._countAndFlagsBits & ~v169._object & 0x2000000000000000) != 0)
    {
      if ((v169._object & 0x2000000000000000) == 0)
      {
        if ((v55 & 0x2000000000000000) != 0)
        {
          goto LABEL_30;
        }

LABEL_28:
        v68 = v54 & 0xFFFFFFFFFFFFLL;
LABEL_31:
        _StringGuts.append(_:)(countAndFlagsBits, v65, 0, v68, v56, v57, v58, v59, v60, v61, v62, v63);
        v65;
        countAndFlagsBits = v169._countAndFlagsBits;
        v65 = v169._object;
        goto LABEL_32;
      }

      if ((v55 & 0x2000000000000000) == 0)
      {
        goto LABEL_28;
      }

      v69 = specialized _SmallString.init(_:appending:)(v169._countAndFlagsBits, v169._object, v54, v55);
      if (v71)
      {
LABEL_30:
        v68 = HIBYTE(v65) & 0xF;
        goto LABEL_31;
      }

      v123 = v69;
      v124 = v70;
      object;
      v65;
      v169._countAndFlagsBits = v123;
      v169._object = v124;
      v65 = v124;
      countAndFlagsBits = v123;
    }

    else
    {
      v169._object;
      v169._countAndFlagsBits = countAndFlagsBits;
      v169._object = v65;
    }

LABEL_32:
    v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v81 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v81 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v81 || (countAndFlagsBits & ~v65 & 0x2000000000000000) != 0)
    {
      if ((v65 & 0x2000000000000000) == 0)
      {
        if ((v80._object & 0x2000000000000000) != 0)
        {
          goto LABEL_42;
        }

LABEL_40:
        v82 = v80._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_43:
        _StringGuts.append(_:)(v80._countAndFlagsBits, v80._object, 0, v82, v72, v73, v74, v75, v76, v77, v78, v79);
        v80._object;
        goto LABEL_44;
      }

      if ((v80._object & 0x2000000000000000) == 0)
      {
        goto LABEL_40;
      }

      v83 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v65, v80._countAndFlagsBits, v80._object);
      if (v85)
      {
LABEL_42:
        v82 = (v80._object >> 56) & 0xF;
        goto LABEL_43;
      }

      v125 = v83;
      v126 = v84;
      v65;
      v80._object;
      v169._countAndFlagsBits = v125;
      v169._object = v126;
    }

    else
    {
      v65;
      v169 = v80;
    }

LABEL_44:
    v86 = swift_getTypeName(&type metadata for String, 0);
    if ((v87 & 0x8000000000000000) == 0)
    {
      v88 = v86;
      v89 = v87;
      v90 = validateUTF8(_:)(v86, v87);
      if (v90 < 0)
      {
        v94 = repairUTF8(_:firstKnownBrokenRange:)(v88, v89, v91, v92);
      }

      else
      {
        v94 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v88, v89, v90 & 1, v93);
      }

      v104 = v95;
      v105 = v169._object;
      v106 = (v169._object >> 56) & 0xF;
      if ((v169._object & 0x2000000000000000) == 0)
      {
        v106 = v169._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v106 || (v169._countAndFlagsBits & ~v169._object & 0x2000000000000000) != 0)
      {
        if ((v169._object & 0x2000000000000000) == 0)
        {
          v107 = v164;
          if ((v95 & 0x2000000000000000) != 0)
          {
            v108 = HIBYTE(v95) & 0xF;
LABEL_57:
            _StringGuts.append(_:)(v94, v104, 0, v108, v96, v97, v98, v99, v100, v101, v102, v103);
            v104;
            v117 = v169._countAndFlagsBits;
            v104 = v169._object;
            goto LABEL_67;
          }

LABEL_56:
          v108 = v94 & 0xFFFFFFFFFFFFLL;
          goto LABEL_57;
        }

        v107 = v164;
        if ((v95 & 0x2000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v118 = v94;
        v119 = specialized _SmallString.init(_:appending:)(v169._countAndFlagsBits, v169._object, v94, v95);
        if (v121)
        {
          v108 = HIBYTE(v104) & 0xF;
          v94 = v118;
          v107 = v164;
          goto LABEL_57;
        }

        v127 = v120;
        v128 = v119;
        v105;
        v104;
        v169._countAndFlagsBits = v128;
        v169._object = v127;
        v104 = v127;
        v117 = v128;
      }

      else
      {
        v122 = v94;
        v169._object;
        v117 = v122;
        v169._countAndFlagsBits = v122;
        v169._object = v104;
      }

      v107 = v164;
LABEL_67:
      v129 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v129 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (v129 || (v117 & ~v104 & 0x2000000000000000) != 0)
      {
        if (v104 & 0x2000000000000000) == 0 || (v130 = specialized _SmallString.init(_:appending:)(v117, v104, 0x2065756C617620uLL, 0xE700000000000000), (v132))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v109, v110, v111, v112, v113, v114, v115, v116);
          0xE700000000000000;
          v142 = v169._countAndFlagsBits;
          v141 = v169._object;
          goto LABEL_77;
        }

        v142 = v130;
        v141 = v131;
        v104;
        0xE700000000000000;
      }

      else
      {
        v142 = 0x2065756C617620;
        v104;
        v141 = 0xE700000000000000;
      }

      v169._countAndFlagsBits = v142;
      v169._object = v141;
LABEL_77:
      v143 = HIBYTE(v141) & 0xF;
      if ((v141 & 0x2000000000000000) == 0)
      {
        v143 = v142 & 0xFFFFFFFFFFFFLL;
      }

      if (!v143 && (v142 & ~v141 & 0x2000000000000000) == 0)
      {
        v141;
        v169._countAndFlagsBits = v107;
        v169._object = v20;
        goto LABEL_89;
      }

      if ((v141 & 0x2000000000000000) != 0)
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v145 = specialized _SmallString.init(_:appending:)(v142, v141, v107, v20);
          if ((v147 & 1) == 0)
          {
            v162 = v145;
            v163 = v146;
            v141;
            v20;
            v169._countAndFlagsBits = v162;
            v169._object = v163;
            v20 = v163;
            v107 = v162;
            goto LABEL_89;
          }

          goto LABEL_87;
        }
      }

      else if ((v20 & 0x2000000000000000) != 0)
      {
LABEL_87:
        v144 = HIBYTE(v20) & 0xF;
        goto LABEL_88;
      }

      v144 = v107 & 0xFFFFFFFFFFFFLL;
LABEL_88:
      _StringGuts.append(_:)(v107, v20, 0, v144, v133, v134, v135, v136, v137, v138, v139, v140);
      v20;
      v107 = v169._countAndFlagsBits;
      v20 = v169._object;
LABEL_89:
      v156 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v156 = v107 & 0xFFFFFFFFFFFFLL;
      }

      if (v156 || (v107 & ~v20 & 0x2000000000000000) != 0)
      {
        if ((v20 & 0x2000000000000000) != 0 && (v157 = specialized _SmallString.init(_:appending:)(v107, v20, 0, 0xE000000000000000), (v159 & 1) == 0))
        {
          v160 = v157;
          v161 = v158;
          v20;
          0xE000000000000000;
        }

        else
        {
          _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v148, v149, v150, v151, v152, v153, v154, v155);
          0xE000000000000000;
          v160 = v169._countAndFlagsBits;
          v161 = v169._object;
        }
      }

      else
      {
        v20;
        v160 = 0;
        v161 = 0xE000000000000000;
      }

      *v24 = v168;
      *(v24 + 8) = v160;
      *(v24 + 16) = v161;
      *(v24 + 24) = 0;
      *(v24 + 72) = 3;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1Tm(v172);
    }

LABEL_102:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v172);
}

{
  v151 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v148 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v152 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v153, v14, v13);
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v152);
  }

  v148 = v9;
  v149 = v10;
  v15 = v151;
  v150 = a5;
  v16 = v154;
  v17 = v155;
  __swift_project_boxed_opaque_existential_0Tm(&v153, v154);
  v18 = (*(v17 + 40))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v153._countAndFlagsBits);
  v153._countAndFlagsBits = v18;
  (*(v15 + 16))(&v153, a2, v15);
  v19 = *(a2 - 8);
  if ((*(v19 + 48))(v12, 1, a2) != 1)
  {
    (*(v19 + 32))(v150, v12, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v152);
  }

  (*(v149 + 8))(v12, v148);
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v21 = v20;
  v22 = v152[3];
  v23 = v152[4];
  __swift_project_boxed_opaque_existential_0Tm(v152, v22);
  v24 = (*(v23 + 8))(v22, v23);
  v25 = _StringGuts.init(_initialCapacity:)(45);
  v35 = v26;
  v153._countAndFlagsBits = v25;
  v153._object = v26;
  v36 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v36 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v36 || (v25 & ~v26 & 0x2000000000000000) != 0)
  {
    if ((0x800000018066C240 & 0x2000000000000000 & v26) != 0 && (v37 = specialized _SmallString.init(_:appending:)(v25, v26, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v39 & 1) == 0))
    {
      v41 = v38;
      v42 = v37;
      v35;
      0x800000018066C240 | 0x8000000000000000;
      v153._countAndFlagsBits = v42;
      v153._object = v41;
    }

    else
    {
      if ((0x800000018066C240 & 0x2000000000000000) != 0)
      {
        v40 = (0x800000018066C240 >> 56) & 0xF;
      }

      else
      {
        v40 = 18;
      }

      _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v40, v27, v28, v29, v30, v31, v32, v33, v34);
      0x800000018066C240 | 0x8000000000000000;
    }
  }

  else
  {
    v26;
    v153._countAndFlagsBits = 0xD000000000000012;
    v153._object = (0x800000018066C240 | 0x8000000000000000);
  }

  TypeName = swift_getTypeName(a2, 0);
  if (v44 < 0)
  {
LABEL_86:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = TypeName;
  v46 = v44;
  v47 = validateUTF8(_:)(TypeName, v44);
  if (v47 < 0)
  {
    v51 = repairUTF8(_:firstKnownBrokenRange:)(v45, v46, v48, v49);
  }

  else
  {
    v51 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v45, v46, v47 & 1, v50);
  }

  countAndFlagsBits = v51;
  v62 = v52;
  object = v153._object;
  v64 = (v153._object >> 56) & 0xF;
  if ((v153._object & 0x2000000000000000) == 0)
  {
    v64 = v153._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v64 || (v153._countAndFlagsBits & ~v153._object & 0x2000000000000000) != 0)
  {
    if ((v153._object & 0x2000000000000000) == 0)
    {
      if ((v52 & 0x2000000000000000) != 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      v65 = v51 & 0xFFFFFFFFFFFFLL;
LABEL_30:
      _StringGuts.append(_:)(countAndFlagsBits, v62, 0, v65, v53, v54, v55, v56, v57, v58, v59, v60);
      v62;
      countAndFlagsBits = v153._countAndFlagsBits;
      v62 = v153._object;
      goto LABEL_31;
    }

    if ((v52 & 0x2000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v66 = specialized _SmallString.init(_:appending:)(v153._countAndFlagsBits, v153._object, v51, v52);
    if (v68)
    {
LABEL_29:
      v65 = HIBYTE(v62) & 0xF;
      goto LABEL_30;
    }

    v142 = v66;
    v143 = v67;
    object;
    v62;
    v153._countAndFlagsBits = v142;
    v153._object = v143;
    v62 = v143;
    countAndFlagsBits = v142;
  }

  else
  {
    v153._object;
    v153._countAndFlagsBits = countAndFlagsBits;
    v153._object = v62;
  }

LABEL_31:
  v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
  v69 = v78._countAndFlagsBits;
  v79 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v79 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v79 || (countAndFlagsBits & ~v62 & 0x2000000000000000) != 0)
  {
    if ((v62 & 0x2000000000000000) == 0)
    {
      if ((v78._object & 0x2000000000000000) != 0)
      {
        v80 = (v78._object >> 56) & 0xF;
LABEL_40:
        _StringGuts.append(_:)(v69, v78._object, 0, v80, v70, v71, v72, v73, v74, v75, v76, v77);
        v78._object;
        goto LABEL_41;
      }

LABEL_39:
      v80 = v78._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      goto LABEL_40;
    }

    if ((v78._object & 0x2000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v116 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v62, v78._countAndFlagsBits, v78._object);
    if (v118)
    {
      v80 = (v78._object >> 56) & 0xF;
      v69 = v78._countAndFlagsBits;
      goto LABEL_40;
    }

    v144 = v116;
    v145 = v117;
    v62;
    v78._object;
    v153._countAndFlagsBits = v144;
    v153._object = v145;
  }

  else
  {
    v62;
    v153 = v78;
  }

LABEL_41:
  v81 = swift_getTypeName(&type metadata for Double, 0);
  if (v82 < 0)
  {
    goto LABEL_86;
  }

  v83 = v81;
  v84 = v82;
  v85 = validateUTF8(_:)(v81, v82);
  if (v85 < 0)
  {
    v89 = repairUTF8(_:firstKnownBrokenRange:)(v83, v84, v86, v87);
  }

  else
  {
    v89 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v83, v84, v85 & 1, v88);
  }

  v99 = v90;
  v100 = v153._object;
  v101 = (v153._object >> 56) & 0xF;
  if ((v153._object & 0x2000000000000000) == 0)
  {
    v101 = v153._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v101 && (v153._countAndFlagsBits & ~v153._object & 0x2000000000000000) == 0)
  {
    v125 = v89;
    v153._object;
    v111 = v125;
    v153._countAndFlagsBits = v125;
    v153._object = v99;
    goto LABEL_55;
  }

  if ((v153._object & 0x2000000000000000) != 0)
  {
    if ((v90 & 0x2000000000000000) != 0)
    {
      v119 = v89;
      v120 = specialized _SmallString.init(_:appending:)(v153._countAndFlagsBits, v153._object, v89, v90);
      if ((v122 & 1) == 0)
      {
        v146 = v121;
        v147 = v120;
        v100;
        v99;
        v153._countAndFlagsBits = v147;
        v153._object = v146;
        v99 = v146;
        v111 = v147;
        goto LABEL_55;
      }

      v102 = HIBYTE(v99) & 0xF;
      v89 = v119;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v90 & 0x2000000000000000) == 0)
  {
LABEL_53:
    v102 = v89 & 0xFFFFFFFFFFFFLL;
    goto LABEL_54;
  }

  v102 = HIBYTE(v90) & 0xF;
LABEL_54:
  _StringGuts.append(_:)(v89, v99, 0, v102, v91, v92, v93, v94, v95, v96, v97, v98);
  v99;
  v111 = v153._countAndFlagsBits;
  v99 = v153._object;
LABEL_55:
  v112 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v112 = v111 & 0xFFFFFFFFFFFFLL;
  }

  if (v112 || (v111 & ~v99 & 0x2000000000000000) != 0)
  {
    if ((v99 & 0x2000000000000000) != 0 && (v113 = specialized _SmallString.init(_:appending:)(v111, v99, 0x2065756C617620uLL, 0xE700000000000000), (v115 & 1) == 0))
    {
      v123 = v113;
      v124 = v114;
      v99;
      0xE700000000000000;
      v153._countAndFlagsBits = v123;
      v153._object = v124;
    }

    else
    {
      _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v103, v104, v105, v106, v107, v108, v109, v110);
      0xE700000000000000;
    }
  }

  else
  {
    v99;
    v153._countAndFlagsBits = 0x2065756C617620;
    v153._object = 0xE700000000000000;
  }

  specialized Double.write<A>(to:)();
  v134 = v153._object;
  v135 = (v153._object >> 56) & 0xF;
  if ((v153._object & 0x2000000000000000) == 0)
  {
    v135 = v153._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v135 || (v153._countAndFlagsBits & ~v153._object & 0x2000000000000000) != 0)
  {
    if ((v153._object & 0x2000000000000000) != 0 && (v136 = specialized _SmallString.init(_:appending:)(v153._countAndFlagsBits, v153._object, 0, 0xE000000000000000), (v138 & 1) == 0))
    {
      v139 = v136;
      v140 = v137;
      v134;
      0xE000000000000000;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v126, v127, v128, v129, v130, v131, v132, v133);
      0xE000000000000000;
      v139 = v153._countAndFlagsBits;
      v140 = v153._object;
    }
  }

  else
  {
    v153._object;
    v139 = 0;
    v140 = 0xE000000000000000;
  }

  *v21 = v24;
  *(v21 + 8) = v139;
  *(v21 + 16) = v140;
  *(v21 + 24) = 0;
  *(v21 + 72) = 3;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v152);
}

{
  v151 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v148 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v152 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v153, v14, v13);
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v152);
  }

  v148 = v9;
  v149 = v10;
  v15 = v151;
  v150 = a5;
  v16 = v154;
  v17 = v155;
  __swift_project_boxed_opaque_existential_0Tm(&v153, v154);
  v18 = (*(v17 + 48))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v153._countAndFlagsBits);
  *&v153._countAndFlagsBits = v18;
  (*(v15 + 16))(&v153, a2, v15);
  v19 = *(a2 - 8);
  if ((*(v19 + 48))(v12, 1, a2) != 1)
  {
    (*(v19 + 32))(v150, v12, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v152);
  }

  (*(v149 + 8))(v12, v148);
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v21 = v20;
  v22 = v152[3];
  v23 = v152[4];
  __swift_project_boxed_opaque_existential_0Tm(v152, v22);
  v24 = (*(v23 + 8))(v22, v23);
  v25 = _StringGuts.init(_initialCapacity:)(45);
  v35 = v26;
  v153._countAndFlagsBits = v25;
  v153._object = v26;
  v36 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v36 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v36 || (v25 & ~v26 & 0x2000000000000000) != 0)
  {
    if ((0x800000018066C240 & 0x2000000000000000 & v26) != 0 && (v37 = specialized _SmallString.init(_:appending:)(v25, v26, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v39 & 1) == 0))
    {
      v41 = v38;
      v42 = v37;
      v35;
      0x800000018066C240 | 0x8000000000000000;
      v153._countAndFlagsBits = v42;
      v153._object = v41;
    }

    else
    {
      if ((0x800000018066C240 & 0x2000000000000000) != 0)
      {
        v40 = (0x800000018066C240 >> 56) & 0xF;
      }

      else
      {
        v40 = 18;
      }

      _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v40, v27, v28, v29, v30, v31, v32, v33, v34);
      0x800000018066C240 | 0x8000000000000000;
    }
  }

  else
  {
    v26;
    v153._countAndFlagsBits = 0xD000000000000012;
    v153._object = (0x800000018066C240 | 0x8000000000000000);
  }

  TypeName = swift_getTypeName(a2, 0);
  if (v44 < 0)
  {
LABEL_86:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = TypeName;
  v46 = v44;
  v47 = validateUTF8(_:)(TypeName, v44);
  if (v47 < 0)
  {
    v51 = repairUTF8(_:firstKnownBrokenRange:)(v45, v46, v48, v49);
  }

  else
  {
    v51 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v45, v46, v47 & 1, v50);
  }

  countAndFlagsBits = v51;
  v62 = v52;
  object = v153._object;
  v64 = (v153._object >> 56) & 0xF;
  if ((v153._object & 0x2000000000000000) == 0)
  {
    v64 = v153._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v64 || (v153._countAndFlagsBits & ~v153._object & 0x2000000000000000) != 0)
  {
    if ((v153._object & 0x2000000000000000) == 0)
    {
      if ((v52 & 0x2000000000000000) != 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      v65 = v51 & 0xFFFFFFFFFFFFLL;
LABEL_30:
      _StringGuts.append(_:)(countAndFlagsBits, v62, 0, v65, v53, v54, v55, v56, v57, v58, v59, v60);
      v62;
      countAndFlagsBits = v153._countAndFlagsBits;
      v62 = v153._object;
      goto LABEL_31;
    }

    if ((v52 & 0x2000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v66 = specialized _SmallString.init(_:appending:)(v153._countAndFlagsBits, v153._object, v51, v52);
    if (v68)
    {
LABEL_29:
      v65 = HIBYTE(v62) & 0xF;
      goto LABEL_30;
    }

    v142 = v66;
    v143 = v67;
    object;
    v62;
    v153._countAndFlagsBits = v142;
    v153._object = v143;
    v62 = v143;
    countAndFlagsBits = v142;
  }

  else
  {
    v153._object;
    v153._countAndFlagsBits = countAndFlagsBits;
    v153._object = v62;
  }

LABEL_31:
  v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
  v69 = v78._countAndFlagsBits;
  v79 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v79 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v79 || (countAndFlagsBits & ~v62 & 0x2000000000000000) != 0)
  {
    if ((v62 & 0x2000000000000000) == 0)
    {
      if ((v78._object & 0x2000000000000000) != 0)
      {
        v80 = (v78._object >> 56) & 0xF;
LABEL_40:
        _StringGuts.append(_:)(v69, v78._object, 0, v80, v70, v71, v72, v73, v74, v75, v76, v77);
        v78._object;
        goto LABEL_41;
      }

LABEL_39:
      v80 = v78._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      goto LABEL_40;
    }

    if ((v78._object & 0x2000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v116 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v62, v78._countAndFlagsBits, v78._object);
    if (v118)
    {
      v80 = (v78._object >> 56) & 0xF;
      v69 = v78._countAndFlagsBits;
      goto LABEL_40;
    }

    v144 = v116;
    v145 = v117;
    v62;
    v78._object;
    v153._countAndFlagsBits = v144;
    v153._object = v145;
  }

  else
  {
    v62;
    v153 = v78;
  }

LABEL_41:
  v81 = swift_getTypeName(&type metadata for Float, 0);
  if (v82 < 0)
  {
    goto LABEL_86;
  }

  v83 = v81;
  v84 = v82;
  v85 = validateUTF8(_:)(v81, v82);
  if (v85 < 0)
  {
    v89 = repairUTF8(_:firstKnownBrokenRange:)(v83, v84, v86, v87);
  }

  else
  {
    v89 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v83, v84, v85 & 1, v88);
  }

  v99 = v90;
  v100 = v153._object;
  v101 = (v153._object >> 56) & 0xF;
  if ((v153._object & 0x2000000000000000) == 0)
  {
    v101 = v153._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v101 && (v153._countAndFlagsBits & ~v153._object & 0x2000000000000000) == 0)
  {
    v125 = v89;
    v153._object;
    v111 = v125;
    v153._countAndFlagsBits = v125;
    v153._object = v99;
    goto LABEL_55;
  }

  if ((v153._object & 0x2000000000000000) != 0)
  {
    if ((v90 & 0x2000000000000000) != 0)
    {
      v119 = v89;
      v120 = specialized _SmallString.init(_:appending:)(v153._countAndFlagsBits, v153._object, v89, v90);
      if ((v122 & 1) == 0)
      {
        v146 = v121;
        v147 = v120;
        v100;
        v99;
        v153._countAndFlagsBits = v147;
        v153._object = v146;
        v99 = v146;
        v111 = v147;
        goto LABEL_55;
      }

      v102 = HIBYTE(v99) & 0xF;
      v89 = v119;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v90 & 0x2000000000000000) == 0)
  {
LABEL_53:
    v102 = v89 & 0xFFFFFFFFFFFFLL;
    goto LABEL_54;
  }

  v102 = HIBYTE(v90) & 0xF;
LABEL_54:
  _StringGuts.append(_:)(v89, v99, 0, v102, v91, v92, v93, v94, v95, v96, v97, v98);
  v99;
  v111 = v153._countAndFlagsBits;
  v99 = v153._object;
LABEL_55:
  v112 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v112 = v111 & 0xFFFFFFFFFFFFLL;
  }

  if (v112 || (v111 & ~v99 & 0x2000000000000000) != 0)
  {
    if ((v99 & 0x2000000000000000) != 0 && (v113 = specialized _SmallString.init(_:appending:)(v111, v99, 0x2065756C617620uLL, 0xE700000000000000), (v115 & 1) == 0))
    {
      v123 = v113;
      v124 = v114;
      v99;
      0xE700000000000000;
      v153._countAndFlagsBits = v123;
      v153._object = v124;
    }

    else
    {
      _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v103, v104, v105, v106, v107, v108, v109, v110);
      0xE700000000000000;
    }
  }

  else
  {
    v99;
    v153._countAndFlagsBits = 0x2065756C617620;
    v153._object = 0xE700000000000000;
  }

  specialized Float.write<A>(to:)();
  v134 = v153._object;
  v135 = (v153._object >> 56) & 0xF;
  if ((v153._object & 0x2000000000000000) == 0)
  {
    v135 = v153._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v135 || (v153._countAndFlagsBits & ~v153._object & 0x2000000000000000) != 0)
  {
    if ((v153._object & 0x2000000000000000) != 0 && (v136 = specialized _SmallString.init(_:appending:)(v153._countAndFlagsBits, v153._object, 0, 0xE000000000000000), (v138 & 1) == 0))
    {
      v139 = v136;
      v140 = v137;
      v134;
      0xE000000000000000;
    }

    else
    {
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v126, v127, v128, v129, v130, v131, v132, v133);
      0xE000000000000000;
      v139 = v153._countAndFlagsBits;
      v140 = v153._object;
    }
  }

  else
  {
    v153._object;
    v139 = 0;
    v140 = 0xE000000000000000;
  }

  *v21 = v24;
  *(v21 + 8) = v139;
  *(v21 + 16) = v140;
  *(v21 + 24) = 0;
  *(v21 + 72) = 3;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v152);
}

{
  v171 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v169 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v172, v14, v13);
  if (!v5)
  {
    v170 = v9;
    v15 = v171;
    v16 = v173;
    v17 = v174;
    __swift_project_boxed_opaque_existential_0Tm(&v172, v173);
    v18 = (*(v17 + 96))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(&v172._countAndFlagsBits);
    v169[0] = v20;
    v169[1] = 0;
    v172._countAndFlagsBits = v18;
    v172._object = v20;
    (*(v15 + 16))(&v172, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(a5, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    v171 = v18;
    (*(v10 + 8))(v12, v170);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v175[3];
    v25 = v175[4];
    __swift_project_boxed_opaque_existential_0Tm(v175, v24);
    v26 = (*(v25 + 8))(v24, v25);
    v27 = _StringGuts.init(_initialCapacity:)(45);
    v37 = v28;
    v172._countAndFlagsBits = v27;
    v172._object = v28;
    v38 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v38 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v38 || (v27 & ~v28 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v28) != 0 && (v39 = specialized _SmallString.init(_:appending:)(v27, v28, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v41 & 1) == 0))
      {
        v44 = v40;
        v45 = v39;
        v37;
        0x800000018066C240 | 0x8000000000000000;
        v172._countAndFlagsBits = v45;
        v172._object = v44;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v42 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v42 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v42, v29, v30, v31, v32, v33, v34, v35, v36);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v28;
      v172._countAndFlagsBits = 0xD000000000000012;
      v172._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(a2, 0);
    if (v47 < 0)
    {
      goto LABEL_101;
    }

    v48 = TypeName;
    v49 = v47;
    v50 = validateUTF8(_:)(TypeName, v47);
    if (v50 < 0)
    {
      v54 = repairUTF8(_:firstKnownBrokenRange:)(v48, v49, v51, v52);
    }

    else
    {
      v54 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v48, v49, v50 & 1, v53);
    }

    countAndFlagsBits = v54;
    v65 = v55;
    object = v172._object;
    v67 = (v172._object >> 56) & 0xF;
    if ((v172._object & 0x2000000000000000) == 0)
    {
      v67 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v67 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
    {
      if ((v172._object & 0x2000000000000000) == 0)
      {
        if ((v55 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v68 = v54 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v65, 0, v68, v56, v57, v58, v59, v60, v61, v62, v63);
        v65;
        countAndFlagsBits = v172._countAndFlagsBits;
        v65 = v172._object;
        goto LABEL_31;
      }

      if ((v55 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v69 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v54, v55);
      if (v71)
      {
LABEL_29:
        v68 = HIBYTE(v65) & 0xF;
        goto LABEL_30;
      }

      v161 = v69;
      v162 = v70;
      object;
      v65;
      v172._countAndFlagsBits = v161;
      v172._object = v162;
      v65 = v162;
      countAndFlagsBits = v161;
    }

    else
    {
      v172._object;
      v172._countAndFlagsBits = countAndFlagsBits;
      v172._object = v65;
    }

LABEL_31:
    v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v81 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v81 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v81 || (countAndFlagsBits & ~v65 & 0x2000000000000000) != 0)
    {
      if ((v65 & 0x2000000000000000) == 0)
      {
        if ((v80._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v82 = v80._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v80._countAndFlagsBits, v80._object, 0, v82, v72, v73, v74, v75, v76, v77, v78, v79);
        v80._object;
        goto LABEL_43;
      }

      if ((v80._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v83 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v65, v80._countAndFlagsBits, v80._object);
      if (v85)
      {
LABEL_41:
        v82 = (v80._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v163 = v83;
      v164 = v84;
      v65;
      v80._object;
      v172._countAndFlagsBits = v163;
      v172._object = v164;
    }

    else
    {
      v65;
      v172 = v80;
    }

LABEL_43:
    v86 = swift_getTypeName(&type metadata for Int128, 0);
    if ((v87 & 0x8000000000000000) == 0)
    {
      v88 = v86;
      v89 = v87;
      v90 = validateUTF8(_:)(v86, v87);
      if (v90 < 0)
      {
        v94 = repairUTF8(_:firstKnownBrokenRange:)(v88, v89, v91, v92);
      }

      else
      {
        v94 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v88, v89, v90 & 1, v93);
      }

      v104 = v95;
      v105 = v172._object;
      v106 = (v172._object >> 56) & 0xF;
      if ((v172._object & 0x2000000000000000) == 0)
      {
        v106 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v106 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
      {
        if ((v172._object & 0x2000000000000000) == 0)
        {
          if ((v95 & 0x2000000000000000) != 0)
          {
            v107 = HIBYTE(v95) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v94, v104, 0, v107, v96, v97, v98, v99, v100, v101, v102, v103);
            v104;
            v116 = v172._countAndFlagsBits;
            v104 = v172._object;
            goto LABEL_57;
          }

LABEL_55:
          v107 = v94 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v95 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v123 = v94;
        v124 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v94, v95);
        if (v126)
        {
          v107 = HIBYTE(v104) & 0xF;
          v94 = v123;
          goto LABEL_56;
        }

        v165 = v125;
        v166 = v124;
        v105;
        v104;
        v172._countAndFlagsBits = v166;
        v172._object = v165;
        v104 = v165;
        v116 = v166;
      }

      else
      {
        v127 = v94;
        v172._object;
        v116 = v127;
        v172._countAndFlagsBits = v127;
        v172._object = v104;
      }

LABEL_57:
      v117 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v117 = v116 & 0xFFFFFFFFFFFFLL;
      }

      if (v117 || (v116 & ~v104 & 0x2000000000000000) != 0)
      {
        if (v104 & 0x2000000000000000) == 0 || (v118 = specialized _SmallString.init(_:appending:)(v116, v104, 0x2065756C617620uLL, 0xE700000000000000), (v120))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v108, v109, v110, v111, v112, v113, v114, v115);
          0xE700000000000000;
          v122 = v172._countAndFlagsBits;
          v121 = v172._object;
          goto LABEL_73;
        }

        v122 = v118;
        v121 = v119;
        v104;
        0xE700000000000000;
      }

      else
      {
        v122 = 0x2065756C617620;
        v104;
        v121 = 0xE700000000000000;
      }

      v172._countAndFlagsBits = v122;
      v172._object = v121;
LABEL_73:
      v128 = specialized BinaryInteger._description(radix:uppercase:)(0xAuLL, 0, v171, v169[0]);
      v138 = v129;
      v139 = HIBYTE(v121) & 0xF;
      if ((v121 & 0x2000000000000000) == 0)
      {
        v139 = v122 & 0xFFFFFFFFFFFFLL;
      }

      if (!v139 && (v122 & ~v121 & 0x2000000000000000) == 0)
      {
        v160 = v128;
        v121;
        v149 = v160;
        v172._countAndFlagsBits = v160;
        v172._object = v138;
        goto LABEL_83;
      }

      if ((v121 & 0x2000000000000000) != 0)
      {
        if ((v129 & 0x2000000000000000) != 0)
        {
          v156 = v128;
          v157 = specialized _SmallString.init(_:appending:)(v122, v121, v128, v129);
          if ((v159 & 1) == 0)
          {
            v167 = v158;
            v168 = v157;
            v121;
            v138;
            v172._countAndFlagsBits = v168;
            v172._object = v167;
            v138 = v167;
            v149 = v168;
            goto LABEL_83;
          }

          v140 = HIBYTE(v138) & 0xF;
          v128 = v156;
          goto LABEL_82;
        }
      }

      else if ((v129 & 0x2000000000000000) != 0)
      {
        v140 = HIBYTE(v129) & 0xF;
LABEL_82:
        _StringGuts.append(_:)(v128, v138, 0, v140, v130, v131, v132, v133, v134, v135, v136, v137);
        v138;
        v149 = v172._countAndFlagsBits;
        v138 = v172._object;
LABEL_83:
        v150 = HIBYTE(v138) & 0xF;
        if ((v138 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v138 & 0x2000000000000000) != 0)
        {
          if ((v138 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v138, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v138;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v172._countAndFlagsBits;
            v155 = v172._object;
          }
        }

        else
        {
          v138;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v26;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v140 = v128 & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v175);
}

{
  v171 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v169 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v172, v14, v13);
  if (!v5)
  {
    v170 = v9;
    v15 = v171;
    v16 = v173;
    v17 = v174;
    __swift_project_boxed_opaque_existential_0Tm(&v172, v173);
    v18 = (*(v17 + 144))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(&v172._countAndFlagsBits);
    v169[0] = v20;
    v169[1] = 0;
    v172._countAndFlagsBits = v18;
    v172._object = v20;
    (*(v15 + 16))(&v172, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(a5, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    v171 = v18;
    (*(v10 + 8))(v12, v170);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v175[3];
    v25 = v175[4];
    __swift_project_boxed_opaque_existential_0Tm(v175, v24);
    v26 = (*(v25 + 8))(v24, v25);
    v27 = _StringGuts.init(_initialCapacity:)(45);
    v37 = v28;
    v172._countAndFlagsBits = v27;
    v172._object = v28;
    v38 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v38 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v38 || (v27 & ~v28 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v28) != 0 && (v39 = specialized _SmallString.init(_:appending:)(v27, v28, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v41 & 1) == 0))
      {
        v44 = v40;
        v45 = v39;
        v37;
        0x800000018066C240 | 0x8000000000000000;
        v172._countAndFlagsBits = v45;
        v172._object = v44;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v42 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v42 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v42, v29, v30, v31, v32, v33, v34, v35, v36);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v28;
      v172._countAndFlagsBits = 0xD000000000000012;
      v172._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(a2, 0);
    if (v47 < 0)
    {
      goto LABEL_101;
    }

    v48 = TypeName;
    v49 = v47;
    v50 = validateUTF8(_:)(TypeName, v47);
    if (v50 < 0)
    {
      v54 = repairUTF8(_:firstKnownBrokenRange:)(v48, v49, v51, v52);
    }

    else
    {
      v54 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v48, v49, v50 & 1, v53);
    }

    countAndFlagsBits = v54;
    v65 = v55;
    object = v172._object;
    v67 = (v172._object >> 56) & 0xF;
    if ((v172._object & 0x2000000000000000) == 0)
    {
      v67 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v67 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
    {
      if ((v172._object & 0x2000000000000000) == 0)
      {
        if ((v55 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v68 = v54 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v65, 0, v68, v56, v57, v58, v59, v60, v61, v62, v63);
        v65;
        countAndFlagsBits = v172._countAndFlagsBits;
        v65 = v172._object;
        goto LABEL_31;
      }

      if ((v55 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v69 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v54, v55);
      if (v71)
      {
LABEL_29:
        v68 = HIBYTE(v65) & 0xF;
        goto LABEL_30;
      }

      v161 = v69;
      v162 = v70;
      object;
      v65;
      v172._countAndFlagsBits = v161;
      v172._object = v162;
      v65 = v162;
      countAndFlagsBits = v161;
    }

    else
    {
      v172._object;
      v172._countAndFlagsBits = countAndFlagsBits;
      v172._object = v65;
    }

LABEL_31:
    v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v81 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v81 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v81 || (countAndFlagsBits & ~v65 & 0x2000000000000000) != 0)
    {
      if ((v65 & 0x2000000000000000) == 0)
      {
        if ((v80._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v82 = v80._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v80._countAndFlagsBits, v80._object, 0, v82, v72, v73, v74, v75, v76, v77, v78, v79);
        v80._object;
        goto LABEL_43;
      }

      if ((v80._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v83 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v65, v80._countAndFlagsBits, v80._object);
      if (v85)
      {
LABEL_41:
        v82 = (v80._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v163 = v83;
      v164 = v84;
      v65;
      v80._object;
      v172._countAndFlagsBits = v163;
      v172._object = v164;
    }

    else
    {
      v65;
      v172 = v80;
    }

LABEL_43:
    v86 = swift_getTypeName(&type metadata for UInt128, 0);
    if ((v87 & 0x8000000000000000) == 0)
    {
      v88 = v86;
      v89 = v87;
      v90 = validateUTF8(_:)(v86, v87);
      if (v90 < 0)
      {
        v94 = repairUTF8(_:firstKnownBrokenRange:)(v88, v89, v91, v92);
      }

      else
      {
        v94 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v88, v89, v90 & 1, v93);
      }

      v104 = v95;
      v105 = v172._object;
      v106 = (v172._object >> 56) & 0xF;
      if ((v172._object & 0x2000000000000000) == 0)
      {
        v106 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v106 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
      {
        if ((v172._object & 0x2000000000000000) == 0)
        {
          if ((v95 & 0x2000000000000000) != 0)
          {
            v107 = HIBYTE(v95) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v94, v104, 0, v107, v96, v97, v98, v99, v100, v101, v102, v103);
            v104;
            v116 = v172._countAndFlagsBits;
            v104 = v172._object;
            goto LABEL_57;
          }

LABEL_55:
          v107 = v94 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v95 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v123 = v94;
        v124 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v94, v95);
        if (v126)
        {
          v107 = HIBYTE(v104) & 0xF;
          v94 = v123;
          goto LABEL_56;
        }

        v165 = v125;
        v166 = v124;
        v105;
        v104;
        v172._countAndFlagsBits = v166;
        v172._object = v165;
        v104 = v165;
        v116 = v166;
      }

      else
      {
        v127 = v94;
        v172._object;
        v116 = v127;
        v172._countAndFlagsBits = v127;
        v172._object = v104;
      }

LABEL_57:
      v117 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v117 = v116 & 0xFFFFFFFFFFFFLL;
      }

      if (v117 || (v116 & ~v104 & 0x2000000000000000) != 0)
      {
        if (v104 & 0x2000000000000000) == 0 || (v118 = specialized _SmallString.init(_:appending:)(v116, v104, 0x2065756C617620uLL, 0xE700000000000000), (v120))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v108, v109, v110, v111, v112, v113, v114, v115);
          0xE700000000000000;
          v122 = v172._countAndFlagsBits;
          v121 = v172._object;
          goto LABEL_73;
        }

        v122 = v118;
        v121 = v119;
        v104;
        0xE700000000000000;
      }

      else
      {
        v122 = 0x2065756C617620;
        v104;
        v121 = 0xE700000000000000;
      }

      v172._countAndFlagsBits = v122;
      v172._object = v121;
LABEL_73:
      v128 = specialized BinaryInteger._description(radix:uppercase:)(0xAuLL, 0, v171, v169[0]);
      v138 = v129;
      v139 = HIBYTE(v121) & 0xF;
      if ((v121 & 0x2000000000000000) == 0)
      {
        v139 = v122 & 0xFFFFFFFFFFFFLL;
      }

      if (!v139 && (v122 & ~v121 & 0x2000000000000000) == 0)
      {
        v160 = v128;
        v121;
        v149 = v160;
        v172._countAndFlagsBits = v160;
        v172._object = v138;
        goto LABEL_83;
      }

      if ((v121 & 0x2000000000000000) != 0)
      {
        if ((v129 & 0x2000000000000000) != 0)
        {
          v156 = v128;
          v157 = specialized _SmallString.init(_:appending:)(v122, v121, v128, v129);
          if ((v159 & 1) == 0)
          {
            v167 = v158;
            v168 = v157;
            v121;
            v138;
            v172._countAndFlagsBits = v168;
            v172._object = v167;
            v138 = v167;
            v149 = v168;
            goto LABEL_83;
          }

          v140 = HIBYTE(v138) & 0xF;
          v128 = v156;
          goto LABEL_82;
        }
      }

      else if ((v129 & 0x2000000000000000) != 0)
      {
        v140 = HIBYTE(v129) & 0xF;
LABEL_82:
        _StringGuts.append(_:)(v128, v138, 0, v140, v130, v131, v132, v133, v134, v135, v136, v137);
        v138;
        v149 = v172._countAndFlagsBits;
        v138 = v172._object;
LABEL_83:
        v150 = HIBYTE(v138) & 0xF;
        if ((v138 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v138 & 0x2000000000000000) != 0)
        {
          if ((v138 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v138, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v138;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v172._countAndFlagsBits;
            v155 = v172._object;
          }
        }

        else
        {
          v138;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v26;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v140 = v128 & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v175);
}

double Double.init(from:)(uint64_t *a1)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v2 = (*(v7 + 40))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t Double.encode(to:)(void *a1, double a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 40))(v5, v6, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Double(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 40))(v5, v6, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Double@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 40))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

float Float.init(from:)(uint64_t *a1)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v2 = (*(v7 + 48))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t Float.encode(to:)(void *a1, float a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 48))(v5, v6, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Float(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 48))(v5, v6, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Float@<X0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 48))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

__int16 Float16.init(_:)@<H0>(float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t Float16.encode(to:)(void *a1, __n128 _Q0)
{
  __asm { FCVT            S8, H0 }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 40))(v12, v7, v8);
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 48))(v9, v10, _S8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

float Float.init(_:)(__n128 _Q0)
{
  __asm { FCVT            S0, H0 }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Float16(void *a1)
{
  _H0 = *v1;
  __asm { FCVT            S8, H0 }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  (*(v9 + 40))(v13, v8, v9);
  v10 = v14;
  v11 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 48))(v10, v11, _S8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

void protocol witness for Decodable.init(from:) in conformance Float16(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v4 = specialized Float16.init(from:)(a1);
  if (!v2)
  {
    *a2 = LOWORD(v4);
  }
}

void *Int.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 56))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 56))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 56))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 56))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int8.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 64))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int8.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 64))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int8(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 64))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 64))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int16.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 72))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int16.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 72))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int16(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 72))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int16@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 72))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int32.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 80))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int32.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 80))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int32(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 80))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int32@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 80))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int64.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 88))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int64.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 88))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int64(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 88))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 88))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int128.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 96))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int128.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  v7 = v11;
  v8 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 96))(a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int128(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  v6 = v10;
  v7 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 96))(v3, v2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v13, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  v9 = (*(v8 + 96))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

void *UInt.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 104))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 104))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 104))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 104))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt8.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 112))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt8.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 112))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt8(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 112))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 112))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt16.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 120))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt16.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 120))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt16(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 120))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt16@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 120))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt32.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt32.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 128))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt32(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 128))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt32@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 128))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt64.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 136))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt64.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 136))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt64(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 136))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 136))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt128.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 144))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt128.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  v7 = v11;
  v8 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 144))(a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt128(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  v6 = v10;
  v7 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 144))(v3, v2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v13, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  v9 = (*(v8 + 144))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t Optional<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11[3];
  v14 = v11[4];
  __swift_project_boxed_opaque_existential_0Tm(v11, v15);
  (*(v14 + 40))(v25, v15, v14);
  (*(v10 + 16))(v13, v3, a2);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    v16 = v26;
    v17 = v27;
    __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    (*(v17 + 16))(v16, v17);
  }

  else
  {
    v18 = v23;
    (*(v6 + 32))(v23, v13, v5);
    v19 = v26;
    v20 = v27;
    __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    (*(v20 + 152))(v18, v5, v24, v19, v20);
    (*(v6 + 8))(v18, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

uint64_t Optional<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = *(a2 - 8);
  v30 = a3;
  v31 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional(0, v10, v11, v12);
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v16);
  (*(v17 + 40))(v33, v16, v17);
  if (!v4)
  {
    v28 = v15;
    v29 = v13;
    v18 = v34;
    v19 = v35;
    __swift_project_boxed_opaque_existential_0Tm(v33, v34);
    if ((*(v19 + 16))(v18, v19))
    {
      v20 = 1;
      v21 = v31;
      v22 = v36;
      v23 = v28;
    }

    else
    {
      v24 = v34;
      v25 = v35;
      __swift_project_boxed_opaque_existential_0Tm(v33, v34);
      v26 = v9;
      (*(v25 + 152))(a2, a2, v30, v24, v25);
      v22 = v36;
      v21 = v31;
      v23 = v28;
      (*(v31 + 32))(v28, v26, a2);
      v20 = 0;
    }

    (*(v21 + 56))(v23, v20, 1, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    (*(v22 + 32))(v32, v23, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Array<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v29 = a4;
  v6 = *(a3 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v24 = v8;
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v7[3];
  v10 = v7[4];
  __swift_project_boxed_opaque_existential_0Tm(v7, v9);
  (*(v10 + 32))(v32, v9, v10);
  v28 = Array._getCount()();
  if (!v28)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  v11 = 0;
  v26 = (v6 + 16);
  v27 = a2 & 0xC000000000000001;
  v25 = (v6 + 8);
  while (1)
  {
    v12 = v27 == 0;
    v13 = v12 | ~_swift_isClassOrObjCExistentialType(a3, a3);
    Array._checkSubscript(_:wasNativeTypeChecked:)(v11, v13 & 1);
    if (v13)
    {
      (*(v6 + 16))(v30, a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, a3);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v20 = _ArrayBuffer._getElementSlowPath(_:)(v11, a2, a3);
      if (v24 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v35 = v20;
      v21 = v20;
      (*v26)(v30, &v35, a3);
      swift_unknownObjectRelease(v21);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_11:
        __break(1u);
        return __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }
    }

    v15 = a2;
    v16 = v33;
    v17 = v34;
    __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v18 = v30;
    v19 = v31;
    (*(v17 + 160))(v30, a3, v29, v16, v17);
    (*v25)(v18, a3);
    if (v19)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    v31 = 0;
    ++v11;
    a2 = v15;
    if (v14 == v28)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }
  }
}

__objc2_class **Array<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v29 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  v33 = &_swiftEmptyArrayStorage;
  v14 = v10[3];
  v13 = v10[4];
  v15 = __swift_project_boxed_opaque_existential_0Tm(v10, v14);
  (*(v13 + 32))(v30, v14, v13);
  if (v3)
  {
    &_swiftEmptyArrayStorage;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v16 = v31;
    v17 = v32;
    __swift_project_boxed_opaque_existential_0Tm(v30, v31);
    if ((*(v17 + 24))(v16, v17))
    {
      v15 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v28 = v6;
      v18 = (v29 + 32);
      do
      {
        v19 = v31;
        v20 = v32;
        __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
        (*(v20 + 176))(a2, a2, a3, v19, v20);
        (*v18)(v9, v12, a2);
        v23 = type metadata accessor for Array(0, a2, v21, v22);
        Array.append(_:)(v9, v23);
        v24 = v31;
        v25 = v32;
        __swift_project_boxed_opaque_existential_0Tm(v30, v31);
      }

      while (((*(v25 + 24))(v24, v25) & 1) == 0);
      v15 = v33;
      v6 = v28;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return v15;
}

__objc2_class **protocol witness for Decodable.init(from:) in conformance <A> [A]@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t ContiguousArray<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[3];
  v12 = v8[4];
  __swift_project_boxed_opaque_existential_0Tm(v8, v11);
  (*(v12 + 32))(v24, v11, v12);
  v13 = *(a2 + 16);
  if (v13)
  {
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v21 = *(v14 + 56);
    v22 = v15;
    v23 = v14;
    v17 = (v14 - 8);
    while (1)
    {
      v22(v10, v16, a3);
      v18 = v25;
      v19 = v26;
      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      (*(v19 + 160))(v10, a3, v27, v18, v19);
      if (v4)
      {
        break;
      }

      (*v17)(v10, a3);
      v16 += v21;
      if (!--v13)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }
    }

    (*v17)(v10, a3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

__objc2_class **ContiguousArray<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v29 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  v33 = &_swiftEmptyArrayStorage;
  v14 = v10[3];
  v13 = v10[4];
  v15 = __swift_project_boxed_opaque_existential_0Tm(v10, v14);
  (*(v13 + 32))(v30, v14, v13);
  if (v3)
  {
    &_swiftEmptyArrayStorage;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v16 = v31;
    v17 = v32;
    __swift_project_boxed_opaque_existential_0Tm(v30, v31);
    if ((*(v17 + 24))(v16, v17))
    {
      v15 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v28 = v6;
      v18 = (v29 + 32);
      do
      {
        v19 = v31;
        v20 = v32;
        __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
        (*(v20 + 176))(a2, a2, a3, v19, v20);
        (*v18)(v9, v12, a2);
        v23 = type metadata accessor for ContiguousArray(0, a2, v21, v22);
        ContiguousArray.append(_:)(v9, v23);
        v24 = v31;
        v25 = v32;
        __swift_project_boxed_opaque_existential_0Tm(v30, v31);
      }

      while (((*(v25 + 24))(v24, v25) & 1) == 0);
      v15 = v33;
      v6 = v28;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return v15;
}

__objc2_class **protocol witness for Decodable.init(from:) in conformance <A> ContiguousArray<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = ContiguousArray<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Set<>.encode(to:)(void *a1, int64_t a2, Class *a3, uint64_t a4)
{
  v68 = a4;
  v65 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Optional(0, v8, v8, v9);
  v10 = *(v62 - 8);
  v11 = MEMORY[0x1EEE9AC00](v62 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v63 = (&v56 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v71 = (&v56 - v16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v17);
  (*(v18 + 32))(v76, v17, v18);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = type metadata accessor for __CocoaSet.Iterator();
    v21 = swift_allocObject(v20, 0xE8, 7uLL);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    *(v21 + 208) = v19;
    *(v21 + 216) = 0;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0u;
    *(v21 + 128) = 0u;
    *(v21 + 144) = 0u;
    *(v21 + 160) = 0u;
    *(v21 + 176) = 0u;
    *(v21 + 192) = 0u;
    *(v21 + 224) = 0;
    v25 = v21 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(a2 + 32);
    v23 = ~v26;
    v22 = a2 + 56;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v24 = v28 & *(a2 + 56);
    v25 = a2;
  }

  v59 = v13;
  v72 = v25;
  v61 = v25 & 0x7FFFFFFFFFFFFFFFLL;
  v70 = (v65 + 56);
  v58 = (v10 + 16);
  v57 = (v65 + 48);
  v56 = (v10 + 8);
  v69 = (v65 + 32);
  v60 = v23;
  v29 = (v23 + 64) >> 6;
  v64 = v65 + 16;
  v66 = (v65 + 8);
  a2;
  v30 = 0;
  do
  {
    v37 = v24;
    v38 = v30;
    v39 = v72;
    if ((v72 & 0x8000000000000000) != 0)
    {
      v73 = v37;
      v74 = v30;
      v43 = v61;
      v42 = v62;
      v44 = *(v61 + 216);
      v45 = v70;
      v40 = v71;
      v46 = v63;
      if ((v44 & 0x8000000000000000) == 0)
      {
        if (v44 != *(v61 + 224))
        {
          v48 = *(v61 + 24);
          if (v48)
          {
            if (v44 >> 60)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_28:
            v49 = (v48 + 8 * v44);
            if ((v49 & 7) == 0)
            {
              v50 = *v49;
              v43[27] = v44 + 1;
              swift_unknownObjectRetain(v50);
              if (_swift_isClassOrObjCExistentialType(a3, a3))
              {
                v79 = v50;
                swift_dynamicCast(v40, &v79, qword_1EEEAC710, a3, 7uLL);
                v51 = *v45;
              }

              else
              {
                v51 = *v45;
                v51(v46, 1, 1, a3);
                _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v50, a3, v46);
                v52 = v46;
                v53 = v59;
                (*v58)(v59, v52, v42);
                if ((*v57)(v53, 1, a3) == 1)
                {
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                (*v56)(v63, v42);
                swift_unknownObjectRelease(v50);
                (*v69)(v40, v59, a3);
              }

              v51(v40, 0, 1, a3);
              v24 = v73;
              v30 = v74;
              goto LABEL_13;
            }

LABEL_42:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_43:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v47 = [*(v61 + 208) countByEnumeratingWithState:v61 + 16 objects:v61 + 80 count:16];
        v43[28] = v47;
        if (v47)
        {
          v43[27] = 0;
          v48 = v43[3];
          if (v48)
          {
            v44 = 0;
            goto LABEL_28;
          }

          goto LABEL_43;
        }

        v43[27] = -1;
      }

      _sSh8IteratorV8_VariantOySS__GWOe_0(v39);
      (*v45)(v40, 1, 1, a3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v76);
    }

    v40 = v71;
    if (v37)
    {
      v31 = v37;
      v74 = v30;
      goto LABEL_12;
    }

    v41 = v30;
    do
    {
      v30 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v30 >= v29)
      {
        (*v70)(v71, 1, 1, a3);
        v54 = v39;
        goto LABEL_35;
      }

      v31 = *(v22 + 8 * v30);
      ++v41;
    }

    while (!v31);
    v74 = v38;
LABEL_12:
    v73 = v37;
    v24 = (v31 - 1) & v31;
    v32 = v65;
    (*(v65 + 16))(v71, *(v72 + 48) + *(v65 + 72) * (__clz(__rbit64(v31)) | (v30 << 6)), a3);
    (*(v32 + 56))(v40, 0, 1, a3);
LABEL_13:
    v33 = v67;
    (*v69)(v67, v40, a3);
    v35 = v77;
    v34 = v78;
    __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v36 = v75;
    (*(v34 + 160))(v33, a3, v68, v35, v34);
    (*v66)(v33, a3);
    v75 = v36;
  }

  while (!v36);
  v54 = v72;
LABEL_35:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v54);
  return __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

int64_t Set.makeIterator()@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v3 = result;
    }

    else
    {
      v3 = result & 0xFFFFFFFFFFFFFF8;
    }

    v4 = type metadata accessor for __CocoaSet.Iterator();
    v5 = swift_allocObject(v4, 0xE8, 7uLL);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    *(v5 + 208) = v3;
    *(v5 + 216) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 224) = 0;
    result = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1;
    v10 = -1 << *(result + 32);
    v6 = result + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v9 = ~(-1 << v11);
    }

    v8 = v9 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = v8;
  return result;
}

uint64_t Set.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 16);
    v11 = __CocoaSet.Iterator.next()();
    if (v11)
    {
      v13 = v11;
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, v10, v12, a2);
      swift_unknownObjectRelease(v13);
      v14 = *(*(v10 - 1) + 56);
      v15 = a2;
      v16 = 0;
    }

    else
    {
      v14 = *(*(v10 - 1) + 56);
      v15 = a2;
      v16 = 1;
    }

    return v14(v15, v16, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v20 = (v8 - 1) & v8;
      v21 = *(result + 16);
      v22 = *(v21 - 8);
      (*(v22 + 16))(a2, *(v4 + 48) + *(v22 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v21);
      result = (*(v22 + 56))(a2, 0, 1, v21);
      v19 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v19;
      v2[4] = v20;
    }

    else
    {
      v17 = (v6 + 64) >> 6;
      if (v17 <= v7 + 1)
      {
        v18 = v7 + 1;
      }

      else
      {
        v18 = (v6 + 64) >> 6;
      }

      v19 = v18 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v17)
        {
          result = (*(*(*(result + 16) - 8) + 56))(a2, 1, 1);
          v20 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

__objc2_class **Set<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v6 = a1;
  v32 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  v39 = &_swiftEmptySetSingleton;
  v16 = v13[3];
  v17 = v13[4];
  v18 = __swift_project_boxed_opaque_existential_0Tm(v13, v16);
  (*(v17 + 32))(v36, v16, v17);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v33 = v9;
    v19 = v37;
    v20 = v38;
    __swift_project_boxed_opaque_existential_0Tm(v36, v37);
    if ((*(v20 + 24))(v19, v20))
    {
      v18 = &_swiftEmptySetSingleton;
    }

    else
    {
      v31 = v6;
      v21 = (v32 + 32);
      v22 = (v32 + 8);
      do
      {
        v23 = v37;
        v24 = v38;
        __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
        (*(v24 + 176))(a2, a2, v35, v23, v24);
        v25 = v33;
        (*v21)(v33, v15, a2);
        v27 = type metadata accessor for Set._Variant(0, a2, v34, v26);
        Set._Variant.insert(_:)(v12, v25, v27);
        (*v22)(v12, a2);
        v28 = v37;
        v29 = v38;
        __swift_project_boxed_opaque_existential_0Tm(v36, v37);
      }

      while (((*(v29 + 24))(v28, v29) & 1) == 0);
      v18 = v39;
      v6 = v31;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return v18;
}

uint64_t Set.insert(_:)(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Set._Variant(0, *(a3 + 16), *(a3 + 24), a4);

  return Set._Variant.insert(_:)(a1, a2, v6);
}

__objc2_class **protocol witness for Decodable.init(from:) in conformance <> Set<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = Set<>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t FixedWidthInteger.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v204 = a5;
  swift_getTupleTypeMetadata2(0, a3, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v192 = &v183 - v10;
  v199 = *(a4 + 8);
  v11 = *(*(v199 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v197 = (&v183 - v15);
  v211 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v190 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v183 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v196 = &v183 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v189 = &v183 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v194 = &v183 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v195 = &v183 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v191 = &v183 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v188 = &v183 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v183 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v193 = &v183 - v36;
  v212 = a3;
  v39 = type metadata accessor for Optional(255, a3, v37, v38);
  v208 = type metadata accessor for Optional(0, v39, v40, v41);
  v42 = MEMORY[0x1EEE9AC00](v208);
  v44 = &v183 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v209 = &v183 - v46;
  v203 = v39;
  v206 = *(v39 - 8);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v207 = &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v202 = &v183 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v205 = &v183 - v54;
  v55 = HIBYTE(a2) & 0xF;
  v210 = a1;
  v56 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v57 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v57 = v56;
  }

  if (!v57)
  {
    a2;
    v175 = v204;
    v98 = v205;
    v172 = v211;
    v167 = v212;
    v97 = v206;
    v171 = v203;
    goto LABEL_49;
  }

  v200 = v44;
  v201 = v53;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v79 = v209;
      v213[0] = v210;
      v213[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v213, v55, 10, v212, a4, v209);
      goto LABEL_20;
    }

    v198 = a4;
    if ((v210 & 0x1000000000000000) != 0)
    {
      v58 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v56 > 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v51 = _StringObject.sharedUTF8.getter(v210, a2);
      v58 = v51;
      v56 = v55;
      if (v55 > 0)
      {
LABEL_9:
        v59 = *v58;
        v187 = a2;
        if (v59 == 43)
        {
          v100 = specialized Collection.subscript.getter(1, v58, v56);
          v104 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v100, v101, v102, v103);
          if (v105)
          {
            v107 = v104;
            v108 = v105;
            v213[0] = 10;
            v109 = v199;
            v110 = *(v199 + 96);
            v111 = lazy protocol witness table accessor for type Int and conformance Int(v104, v105, v106);
            v112 = v212;
            (v110)(v213, &type metadata for Int, v111, v212, v109);
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v112, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v114 = v197;
            (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v13, AssociatedConformanceWitness);
            v115 = (*(v11 + 24))(v114, v112, v11);
            v78 = v211;
            v80 = v208;
            v79 = v209;
            if (v107)
            {
              v118 = v198 + 96;
              v119 = (v211 + 8);
              v197 = (v211 + 32);
              v120 = (v198 + 80);
              while (1)
              {
                v121 = *v107 - 48;
                if (v121 >= 0xA)
                {
                  break;
                }

                v186 = v107;
                v188 = v108;
                LOBYTE(v213[0]) = v121;
                v122 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v115, v116, v117);
                v123 = v189;
                v196 = v120;
                v124 = v212;
                v185 = v110;
                (v110)(v213, &type metadata for UInt8, v122, v212, v199);
                v125 = v198;
                v126 = *(v198 + 96);
                v127 = v191;
                v128 = v194;
                v184 = v118;
                LODWORD(v193) = v126(v191, v195, v124, v198);
                v91 = *v119;
                (*v119)(v128, v124);
                v190 = *v197;
                (v190)(v128, v127, v124);
                v129 = *(v125 + 80);
                v130 = v192;
                v131 = v124;
                v132 = v125;
                v87 = v124;
                v120 = v196;
                v133 = v129(v192, v123, v131, v132);
                v91(v123, v87);
                v91(v128, v87);
                v115 = (v190)(v128, v130, v87);
                if (v193 & 1) != 0 || (v133)
                {
                  v91(v194, v87);
                  v181 = v195;
                  goto LABEL_58;
                }

                v107 = v186 + 1;
                v108 = v188 - 1;
                v78 = v211;
                v80 = v208;
                v79 = v209;
                v110 = v185;
                v118 = v184;
                if (v188 == 1)
                {
                  goto LABEL_29;
                }
              }

              v161 = v211;
              v160 = v212;
              v162 = *(v211 + 8);
              v162(v194, v212);
              v163 = v195;
LABEL_41:
              v162(v163, v160);
              (*(v161 + 56))(v79, 1, 1, v160);
              goto LABEL_42;
            }

LABEL_29:
            v96 = v212;
            (*(v78 + 8))(v195, v212);
            (*(v78 + 32))(v79, v194, v96);
LABEL_30:
            (*(v78 + 56))(v79, 0, 1, v96);
LABEL_42:
            a2 = v187;
            a4 = v198;
            v98 = v205;
            v97 = v206;
            v99 = v207;
LABEL_43:
            v164 = v203;
            (*(v97 + 56))(v79, 0, 1, v203);
            goto LABEL_44;
          }
        }

        else
        {
          if (v59 != 45)
          {
            v213[0] = 10;
            v134 = v199;
            v135 = (v199 + 96);
            v136 = *(v199 + 96);
            v137 = lazy protocol witness table accessor for type Int and conformance Int(v51, v55, v52);
            v138 = v212;
            v194 = v136;
            (v136)(v213, &type metadata for Int, v137, v212, v134);
            v139 = swift_getAssociatedConformanceWitness(v11, v138, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v140 = v197;
            (*(v139 + 8))(&unk_18071E0A8, 256, v13, v139);
            v141 = (*(v11 + 24))(v140, v138, v11);
            v144 = (v198 + 96);
            v145 = (v211 + 8);
            v195 = (v211 + 32);
            v193 = v198 + 80;
            v99 = v207;
            while (*v58 - 48 < 0xA)
            {
              LOBYTE(v213[0]) = *v58 - 48;
              v146 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v141, v142, v143);
              v197 = v145;
              v147 = v212;
              v188 = v135;
              (v194)(v213, &type metadata for UInt8, v146, v212, v199);
              v148 = v198;
              v149 = *(v198 + 96);
              v150 = v191;
              v151 = v20;
              v186 = v144;
              LODWORD(v189) = v149(v191, v196, v147, v198);
              v152 = *v197;
              (*v197)(v20, v147);
              v153 = *v195;
              (*v195)(v20, v150, v147);
              v154 = v190;
              v155 = (*(v148 + 80))(v192, v190, v147, v148);
              v145 = v197;
              v152(v154, v147);
              v152(v151, v147);
              v20 = v151;
              v185 = v153;
              v141 = (v153)(v151, v192, v147);
              if (v189 & 1) != 0 || (v155)
              {
                v180 = v212;
                v152(v151, v212);
                v152(v196, v180);
                v79 = v209;
                (*(v211 + 56))(v209, 1, 1, v180);
                goto LABEL_59;
              }

              ++v58;
              --v56;
              v99 = v207;
              v135 = v188;
              v144 = v186;
              if (!v56)
              {
                v156 = v212;
                v152(v196, v212);
                v79 = v209;
                v185();
                (*(v211 + 56))(v79, 0, 1, v156);
LABEL_38:
                a2 = v187;
                a4 = v198;
                v98 = v205;
                v97 = v206;
                goto LABEL_21;
              }
            }

            v158 = v211;
            v157 = v212;
            v159 = *(v211 + 8);
            v159(v20, v212);
            v159(v196, v157);
            v79 = v209;
            (*(v158 + 56))(v209, 1, 1, v157);
            goto LABEL_38;
          }

          v60 = specialized Collection.subscript.getter(1, v58, v56);
          v64 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v60, v61, v62, v63);
          if (v65)
          {
            v67 = v64;
            v68 = v65;
            v213[0] = 10;
            v69 = v199;
            v70 = *(v199 + 96);
            v71 = lazy protocol witness table accessor for type Int and conformance Int(v64, v65, v66);
            v72 = v212;
            v196 = v70;
            (v70)(v213, &type metadata for Int, v71, v212, v69);
            v73 = swift_getAssociatedConformanceWitness(v11, v72, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v74 = v197;
            (*(v73 + 8))(&unk_18071E0A8, 256, v13, v73);
            v75 = (*(v11 + 24))(v74, v72, v11);
            v78 = v211;
            v80 = v208;
            v79 = v209;
            if (v67)
            {
              v81 = (v198 + 96);
              v82 = (v211 + 8);
              v197 = (v211 + 32);
              v83 = (v198 + 88);
              while (1)
              {
                v84 = *v67 - 48;
                if (v84 >= 0xA)
                {
                  v161 = v211;
                  v160 = v212;
                  v162 = *(v211 + 8);
                  v162(v35, v212);
                  v163 = v193;
                  goto LABEL_41;
                }

                v186 = v67;
                v189 = v68;
                LOBYTE(v213[0]) = v84;
                v85 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v75, v76, v77);
                v86 = v188;
                v87 = v212;
                (v196)(v213, &type metadata for UInt8, v85, v212, v199);
                v195 = v83;
                v88 = v198;
                v89 = *(v198 + 96);
                v90 = v191;
                v185 = v81;
                LODWORD(v194) = v89(v191, v193, v87, v198);
                v91 = *v82;
                (*v82)(v35, v87);
                v190 = *v197;
                (v190)(v35, v90, v87);
                v92 = *(v88 + 88);
                v93 = v192;
                v94 = v88;
                v83 = v195;
                v95 = v92(v192, v86, v87, v94);
                v91(v86, v87);
                v91(v35, v87);
                v75 = (v190)(v35, v93, v87);
                if (v194 & 1) != 0 || (v95)
                {
                  break;
                }

                v67 = v186 + 1;
                v68 = v189 - 1;
                v78 = v211;
                v80 = v208;
                v79 = v209;
                v81 = v185;
                if (v189 == 1)
                {
                  goto LABEL_18;
                }
              }

              v91(v35, v87);
              v181 = v193;
LABEL_58:
              v91(v181, v87);
              v182 = v87;
              v79 = v209;
              (*(v211 + 56))(v209, 1, 1, v182);
LABEL_59:
              a2 = v187;
              goto LABEL_60;
            }

LABEL_18:
            v96 = v212;
            (*(v78 + 8))(v193, v212);
            (*(v78 + 32))(v79, v35, v96);
            goto LABEL_30;
          }
        }

        v79 = v209;
        (*(v211 + 56))(v209, 1, 1, v212);
LABEL_60:
        a4 = v198;
LABEL_20:
        v98 = v205;
        v97 = v206;
        v99 = v207;
LABEL_21:
        v80 = v208;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v97 = v206;
  v79 = v209;
  v164 = v203;
  (*(v206 + 56))(v209, 1, 1, v203);
  v98 = v205;
  v99 = v207;
  v80 = v208;
LABEL_44:
  v166 = v200;
  v165 = v201;
  (*(v201 + 32))(v200, v79, v80);
  if ((*(v97 + 48))(v166, 1, v164) == 1)
  {
    v167 = v212;
    v168 = a4;
    v169 = v202;
    specialized _parseInteger<A, B>(ascii:radix:)(v210, a2, 10, v212, v168, v202);
    a2;
    (*(v165 + 8))(v166, v80);
    v170 = *(v97 + 32);
    v171 = v164;
  }

  else
  {
    a2;
    v170 = *(v97 + 32);
    v169 = v202;
    v170(v202, v166, v164);
    v171 = v164;
    v167 = v212;
  }

  v172 = v211;
  v170(v99, v169, v171);
  v173 = *(v172 + 48);
  v174 = v173(v99, 1, v167);
  v175 = v204;
  if (v174 == 1)
  {
    (*(v97 + 8))(v99, v171);
LABEL_49:
    v176 = *(v172 + 56);
    v176(v98, 1, 1, v167);
    v177 = (*(v172 + 48))(v98, 1, v167);
    goto LABEL_51;
  }

  (*(v172 + 32))(v98, v99, v167);
  v176 = *(v172 + 56);
  v176(v98, 0, 1, v167);
  v177 = v173(v98, 1, v167);
LABEL_51:
  if (v177)
  {
    (*(v97 + 8))(v98, v171);
    v178 = 1;
  }

  else
  {
    (*(v172 + 32))(v175, v98, v167);
    v178 = 0;
  }

  return (v176)(v175, v178, 1, v167);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _DictionaryCodingKey@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized _DictionaryCodingKey.init(stringValue:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6 & 1;
  return result;
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance _DictionaryCodingKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized _DictionaryCodingKey.init(intValue:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5 & 1;
  return result;
}

void *RawRepresentable<>.codingKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  (*(a2 + 24))(v12, a1, a2);
  v4 = specialized _DictionaryCodingKey.init(stringValue:)(v12[0], v12[1]);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  a3[3] = &type metadata for _DictionaryCodingKey;
  a3[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a3 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  *(result + 40) = v10 & 1;
  return result;
}

{
  (*(a2 + 24))(&v12, a1, a2);
  v4 = specialized _DictionaryCodingKey.init(intValue:)(v12);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  a3[3] = &type metadata for _DictionaryCodingKey;
  a3[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a3 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  *(result + 40) = v10 & 1;
  return result;
}

uint64_t RawRepresentable<>.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a7;
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = (*(a6 + 24))(a3, a6);
  v18 = v17;
  (*(*(a3 - 8) + 8))(a1, a3);
  v26[0] = v16;
  v26[1] = v18;
  (*(a5 + 16))(v26, a2, a5);
  v19 = *(a2 - 8);
  if ((*(v19 + 48))(v15, 1, a2))
  {
    (*(v13 + 8))(v15, v12);
    v20 = 1;
    v21 = v25;
  }

  else
  {
    v22 = v25;
    (*(v19 + 32))(v25, v15, a2);
    v20 = 0;
    v21 = v22;
  }

  return (*(v19 + 56))(v21, v20, 1, a2);
}

{
  v24 = a7;
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = (*(a6 + 40))(a3, a6);
  LOBYTE(a6) = v17;
  (*(*(a3 - 8) + 8))(a1, a3);
  if (a6)
  {
    v18 = *(a2 - 8);
  }

  else
  {
    v25 = v16;
    (*(a5 + 16))(&v25, a2, a5);
    v18 = *(a2 - 8);
    v19 = v18;
    if (!(*(v18 + 48))(v15, 1, a2))
    {
      v23 = v24;
      (*(v18 + 32))(v24, v15, a2);
      v21 = v23;
      v20 = 0;
      return (*(v19 + 56))(v21, v20, 1, a2);
    }

    (*(v13 + 8))(v15, v12);
  }

  v19 = v18;
  v20 = 1;
  v21 = v24;
  return (*(v19 + 56))(v21, v20, 1, a2);
}

void *Int.codingKey.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = specialized _DictionaryCodingKey.init(intValue:)(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a2[3] = &type metadata for _DictionaryCodingKey;
  a2[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a2 = result;
  result[2] = v3;
  result[3] = v5;
  result[4] = v7;
  *(result + 40) = v9 & 1;
  return result;
}

uint64_t Int.init<A>(codingKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized Int.init<A>(codingKey:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void *protocol witness for CodingKeyRepresentable.codingKey.getter in conformance Int@<X0>(void *a1@<X8>)
{
  v3 = specialized _DictionaryCodingKey.init(intValue:)(*v1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a1[3] = &type metadata for _DictionaryCodingKey;
  a1[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a1 = result;
  result[2] = v3;
  result[3] = v5;
  result[4] = v7;
  *(result + 40) = v9 & 1;
  return result;
}

uint64_t protocol witness for CodingKeyRepresentable.init<A>(codingKey:) in conformance Int@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = specialized Int.init<A>(codingKey:)(a1, a2, a3);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  *(a4 + 8) = v9 & 1;
  return result;
}

void *String.codingKey.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  a2;
  v6 = specialized _DictionaryCodingKey.init(stringValue:)(a1, a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  a3[3] = &type metadata for _DictionaryCodingKey;
  a3[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a3 = result;
  result[2] = v6;
  result[3] = v8;
  result[4] = v10;
  *(result + 40) = v12 & 1;
  return result;
}

uint64_t String.init<A>(codingKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized String.init<A>(codingKey:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void *protocol witness for CodingKeyRepresentable.codingKey.getter in conformance String@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v3;
  v5 = specialized _DictionaryCodingKey.init(stringValue:)(v4, v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  a1[3] = &type metadata for _DictionaryCodingKey;
  a1[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a1 = result;
  result[2] = v5;
  result[3] = v7;
  result[4] = v9;
  *(result + 40) = v11 & 1;
  return result;
}

uint64_t protocol witness for CodingKeyRepresentable.init<A>(codingKey:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = specialized String.init<A>(codingKey:)(a1, a2, a3);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t Dictionary<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, swift *a5, uint64_t a6, uint64_t a7)
{
  v411 = a7;
  v385 = a5;
  v8 = a3;
  v379 = a2;
  v390 = type metadata accessor for Optional(0, a4, a3, a4);
  v380 = *(v390 - 8);
  v10 = MEMORY[0x1EEE9AC00](v390);
  v375 = (&v369 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v374 = &v369 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v370 = &v369 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v383 = &v369 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v387 = &v369 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v371 = &v369 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v372 = &v369 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v394 = &v369 - v24;
  v389 = type metadata accessor for Optional(0, v8, v25, v26);
  v409 = *(v389 - 8);
  v27 = MEMORY[0x1EEE9AC00](v389);
  v391 = &v369 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v388 = &v369 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  j = (&v369 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v396 = &v369 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v401 = (&v369 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  i = (&v369 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v369 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v369 - v43);
  v406 = *(a4 - 1);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v384 = (&v369 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x1EEE9AC00](v45);
  v373 = (&v369 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v399 = &v369 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v376 = (&v369 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v398 = &v369 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v377 = (&v369 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v369 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = (&v369 - v61);
  v63 = MEMORY[0x1EEE9AC00](v60);
  v404 = &v369 - v64;
  Description = v8[-1].Description;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v402 = (&v369 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = MEMORY[0x1EEE9AC00](v65);
  v378 = (&v369 - v68);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v381 = (&v369 - v70);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v382 = (&v369 - v72);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v75 = (&v369 - v74);
  MEMORY[0x1EEE9AC00](v73);
  v413 = &v369 - v76;
  v414 = a4;
  swift_getTupleTypeMetadata2(255, v8, a4, "key value ", 0);
  v78 = v77;
  v412 = type metadata accessor for Optional(0, v77, v79, v80);
  v81 = MEMORY[0x1EEE9AC00](v412);
  k = &v369 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v392 = (&v369 - v84);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v407 = (&v369 - v86);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v395 = &v369 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v403 = &v369 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v386 = &v369 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  MEMORY[0x1EEE9AC00](v93);
  v410 = v78;
  if (v8 == &type metadata for String)
  {
    k = &v369 - v94;
    v399 = v96;
    v108 = v95;
    v384 = v75;
    v385 = v62;
    v395 = v59;
    v401 = v44;
    v369 = v41;
    v109 = a1[3];
    v110 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v109);
    (*(v110 + 24))(v416, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v109, v110);
    v111 = v379;
    if ((v379 & 0xC000000000000001) != 0)
    {
      if (v379 < 0)
      {
        v112 = v379;
      }

      else
      {
        v112 = v379 & 0xFFFFFFFFFFFFFF8;
      }

      v113 = type metadata accessor for __CocoaDictionary.Iterator();
      v114 = swift_allocObject(v113, 0xE8, 7uLL);
      v387 = 0;
      v115 = 0;
      v116 = 0;
      *(v114 + 208) = v112;
      *(v114 + 216) = 0;
      *(v114 + 16) = 0u;
      *(v114 + 32) = 0u;
      *(v114 + 48) = 0u;
      *(v114 + 64) = 0u;
      *(v114 + 80) = 0u;
      *(v114 + 96) = 0u;
      *(v114 + 112) = 0u;
      *(v114 + 128) = 0u;
      *(v114 + 144) = 0u;
      *(v114 + 160) = 0u;
      *(v114 + 176) = 0u;
      *(v114 + 192) = 0u;
      *(v114 + 224) = 0;
      v117 = v114 | 0x8000000000000000;
    }

    else
    {
      v135 = -1 << *(v379 + 32);
      v115 = ~v135;
      v136 = *(v379 + 64);
      v387 = (v379 + 64);
      v137 = -v135;
      if (v137 < 64)
      {
        v138 = ~(-1 << v137);
      }

      else
      {
        v138 = -1;
      }

      v116 = (v138 & v136);
      v117 = v379;
    }

    v139 = v394;
    v140 = v380;
    v141 = v401;
    v388 = (v117 & 0x7FFFFFFFFFFFFFFFLL);
    v382 = (Description + 56);
    v381 = (v409 + 16);
    v380 = (Description + 48);
    v378 = (v409 + 8);
    v408 = (Description + 32);
    v377 = (v406 + 56);
    v376 = (v140 + 2);
    v375 = (v406 + 48);
    v374 = (v140 + 1);
    v407 = (v406 + 32);
    v398 = (v78 - 8);
    v383 = v115;
    v386 = ((v115 + 64) >> 6);
    v392 = (Description + 16);
    v391 = (v406 + 16);
    j = (v108 + 32);
    v396 = (v406 + 8);
    v111;
    v142 = 0;
    v143 = k;
    for (i = v117; ; v117 = i)
    {
      v403 = v116;
      v402 = v142;
      if ((v117 & 0x8000000000000000) != 0)
      {
        v146 = v388;
        v147 = *(v388 + 27);
        if ((v147 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        if (v147 == *(v388 + 28))
        {
          v148 = [*(v388 + 26) countByEnumeratingWithState:v388 + 16 objects:v388 + 80 count:16];
          v146[28] = v148;
          if (!v148)
          {
            v146[27] = -1;
LABEL_57:
            v163 = 1;
            v151 = v142;
            v409 = v116;
LABEL_58:
            v161 = v399;
            goto LABEL_59;
          }

          v146[27] = 0;
          v149 = v146[3];
          if (!v149)
          {
            goto LABEL_212;
          }

          v147 = 0;
        }

        else
        {
          v149 = *(v388 + 3);
          if (!v149)
          {
            goto LABEL_212;
          }

          if (v147 >> 60)
          {
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v164 = (v149 + 8 * v147);
        if ((v164 & 7) != 0)
        {
          goto LABEL_207;
        }

        v165 = *v164;
        v146[27] = v147 + 1;
        v166 = v146[26];
        swift_unknownObjectRetain(v165);
        v167 = [v166 &sel:v165 objectForKey:?];
        if (!v167)
        {
          goto LABEL_212;
        }

        v168 = v167;
        if (_swift_isClassOrObjCExistentialType(&type metadata for String, &type metadata for String.Kind))
        {
          *&v419 = v165;
          v169 = v384;
          swift_dynamicCast(v384, &v419, qword_1EEEAC710, &type metadata for String, 7uLL);
        }

        else
        {
          (*v382)(v141, 1, 1, &type metadata for String);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v165, &type metadata for String, v141);
          v184 = v369;
          v185 = v141;
          v186 = v141;
          v187 = v389;
          (*v381)(v369, v185, v389);
          if ((*v380)(v184, 1, &type metadata for String) == 1)
          {
            goto LABEL_213;
          }

          (*v378)(v186, v187);
          swift_unknownObjectRelease(v165);
          v169 = v384;
          (v408->Kind)();
        }

        v170 = v414;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v414, v414);
        v161 = v399;
        if (isClassOrObjCExistentialType)
        {
          *&v419 = v168;
          v172 = v385;
          swift_dynamicCast(v385, &v419, qword_1EEEAC710, v170, 7uLL);
        }

        else
        {
          (*v377)(v139, 1, 1, v170);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v168, v170, v139);
          v188 = v372;
          (*v376)(v372, v394, v390);
          if ((*v375)(v188, 1, v170) == 1)
          {
LABEL_213:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          (*v374)(v394, v390);
          swift_unknownObjectRelease(v168);
          v172 = v385;
          (*v407)(v385, v372, v170);
        }

        v173 = *(v78 + 48);
        (v408->Kind)(v161, v169, &type metadata for String);
        (*v407)(&v161[v173], v172, v170);
        v163 = 0;
        v151 = v402;
        v409 = v403;
      }

      else
      {
        if (!v116)
        {
          if (v386 <= (v142 + 1))
          {
            v150 = v142 + 1;
          }

          else
          {
            v150 = v386;
          }

          v151 = v150 - 1;
          v152 = v142;
          while (1)
          {
            v145 = (v152 + 1);
            if (__OFADD__(v152, 1))
            {
              break;
            }

            if (v145 >= v386)
            {
              v409 = 0;
              v163 = 1;
              goto LABEL_58;
            }

            v144 = *&v387[8 * v145];
            ++v152;
            if (v144)
            {
              goto LABEL_45;
            }
          }

          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v144 = v116;
        v145 = v142;
LABEL_45:
        v409 = ((v144 - 1) & v144);
        v153 = __clz(__rbit64(v144)) | (v145 << 6);
        v154 = Description;
        v155 = v413;
        (*(Description + 2))(v413, *(v117 + 48) + *(Description + 9) * v153, &type metadata for String);
        v156 = v406;
        v157 = *(v117 + 56) + *(v406 + 72) * v153;
        v158 = v404;
        v159 = v414;
        (*(v406 + 16))(v404, v157, v414);
        v160 = *(v410 + 48);
        v161 = v399;
        v162 = v155;
        v78 = v410;
        v154[4](v399, v162, &type metadata for String);
        (*(v156 + 32))(&v161[v160], v158, v159);
        v163 = 0;
        v151 = v145;
        v139 = v394;
        v143 = k;
      }

LABEL_59:
      v174 = *(v78 - 8);
      (*(v174 + 56))(v161, v163, 1, v78);
      (*j)(v143, v161, v412);
      if ((*(v174 + 48))(v143, 1, v78) == 1)
      {
        v189 = i;
LABEL_110:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v189);
        return v416[0];
      }

      v175 = v395;
      v176 = v414;
      (*v407)(v395, (v143 + *(v78 + 48)), v414);
      v177 = v413;
      (v408->Kind)(v413, v143, &type metadata for String);
      swift_dynamicCast(&v419, v177, &type metadata for String, &type metadata for String, 7uLL);
      v178 = specialized _DictionaryCodingKey.init(stringValue:)(v419, *(&v419 + 1));
      v180 = v179;
      *&v419 = v178;
      *(&v419 + 1) = v179;
      v420 = v181;
      LOBYTE(v421) = v182 & 1;
      v183 = v415;
      (*(*v416[0] + 232))(v175, &v419, v176, &type metadata for _DictionaryCodingKey, v411, &protocol witness table for _DictionaryCodingKey);
      v415 = v183;
      if (v183)
      {
        (*v396)(v175, v176);
        v190 = i;
        goto LABEL_112;
      }

      (*v396)(v175, v176);
      v180;
      v142 = v151;
      v116 = v409;
      v141 = v401;
    }
  }

  v97 = v379;
  if (v8 == &type metadata for Int)
  {
    v118 = v95;
    v119 = a1[3];
    v120 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v119);
    (*(v120 + 24))(v416, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v119, v120);
    if ((v97 & 0xC000000000000001) != 0)
    {
      if (v97 < 0)
      {
        v121 = v97;
      }

      else
      {
        v121 = v97 & 0xFFFFFFFFFFFFFF8;
      }

      v122 = type metadata accessor for __CocoaDictionary.Iterator();
      v123 = swift_allocObject(v122, 0xE8, 7uLL);
      k = 0;
      v124 = 0;
      v125 = 0;
      *(v123 + 208) = v121;
      *(v123 + 216) = 0;
      *(v123 + 16) = 0u;
      *(v123 + 32) = 0u;
      *(v123 + 48) = 0u;
      *(v123 + 64) = 0u;
      *(v123 + 80) = 0u;
      *(v123 + 96) = 0u;
      *(v123 + 112) = 0u;
      *(v123 + 128) = 0u;
      *(v123 + 144) = 0u;
      *(v123 + 160) = 0u;
      *(v123 + 176) = 0u;
      *(v123 + 192) = 0u;
      *(v123 + 224) = 0;
      v126 = v123 | 0x8000000000000000;
    }

    else
    {
      v191 = -1 << *(v97 + 32);
      v124 = ~v191;
      v192 = *(v97 + 64);
      k = v97 + 64;
      v193 = -v191;
      if (v193 < 64)
      {
        v194 = ~(-1 << v193);
      }

      else
      {
        v194 = -1;
      }

      v125 = v194 & v192;
      v126 = v97;
    }

    v195 = v387;
    v196 = v380;
    v197 = v401;
    v198 = v386;
    v388 = (v126 & 0x7FFFFFFFFFFFFFFFLL);
    v383 = Description + 56;
    v381 = (v409 + 16);
    v380 = (Description + 48);
    v378 = (v409 + 8);
    v408 = (Description + 32);
    v376 = (v406 + 56);
    v375 = (v196 + 2);
    v374 = (v406 + 48);
    v373 = (v196 + 1);
    v407 = (v406 + 32);
    v396 = (v78 - 8);
    v384 = v124;
    v385 = ((v124 + 64) >> 6);
    v392 = (Description + 16);
    v391 = (v406 + 16);
    v395 = v118 + 32;
    v394 = (v406 + 8);
    v97;
    v199 = 0;
    v200 = v125;
    for (j = v126; ; v126 = j)
    {
      v201 = i;
      v399 = v200;
      v402 = v199;
      if ((v126 & 0x8000000000000000) != 0)
      {
        v204 = v388;
        v205 = *(v388 + 27);
        v206 = v414;
        if ((v205 & 0x8000000000000000) != 0)
        {
          v222 = 1;
          v210 = v199;
LABEL_101:
          v409 = v200;
          v212 = v403;
          goto LABEL_102;
        }

        if (v205 == *(v388 + 28))
        {
          v207 = [*(v388 + 26) countByEnumeratingWithState:v388 + 16 objects:v388 + 80 count:16];
          v204 = v388;
          *(v388 + 28) = v207;
          if (!v207)
          {
            v204[27] = -1;
            v222 = 1;
            v210 = v402;
            goto LABEL_101;
          }

          v204[27] = 0;
          v208 = v204[3];
          if (!v208)
          {
            goto LABEL_212;
          }

          v205 = 0;
        }

        else
        {
          v208 = *(v388 + 3);
          if (!v208)
          {
            goto LABEL_212;
          }

          if (v205 >> 60)
          {
            goto LABEL_209;
          }
        }

        v223 = (v208 + 8 * v205);
        if ((v223 & 7) != 0)
        {
          goto LABEL_207;
        }

        v224 = *v223;
        v204[27] = v205 + 1;
        v225 = v204[26];
        swift_unknownObjectRetain(v224);
        v226 = [v225 &sel:v224 objectForKey:?];
        if (!v226)
        {
          goto LABEL_212;
        }

        v227 = v226;
        if (_swift_isClassOrObjCExistentialType(&type metadata for Int, &type metadata for Int.Kind))
        {
          *&v419 = v224;
          swift_dynamicCast(v382, &v419, qword_1EEEAC710, &type metadata for Int, 7uLL);
        }

        else
        {
          (*v383)(v201, 1, 1, &type metadata for Int);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v224, &type metadata for Int, v201);
          v240 = v197;
          v241 = v201;
          v242 = v197;
          v243 = v389;
          (*v381)(v240, v241, v389);
          if ((*v380)(v242, 1, &type metadata for Int) == 1)
          {
            goto LABEL_213;
          }

          (*v378)(i, v243);
          swift_unknownObjectRelease(v224);
          (v408->Kind)(v382, v401, &type metadata for Int);
        }

        v228 = _swift_isClassOrObjCExistentialType(v206, v206);
        v212 = v403;
        if (v228)
        {
          *&v419 = v227;
          v229 = v377;
          swift_dynamicCast(v377, &v419, qword_1EEEAC710, v206, 7uLL);
        }

        else
        {
          v244 = v371;
          (*v376)(v371, 1, 1, v206);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v227, v206, v244);
          (*v375)(v195, v244, v390);
          if ((*v374)(v195, 1, v206) == 1)
          {
            goto LABEL_213;
          }

          (*v373)(v244, v390);
          v245 = v377;
          (*v407)(v377, v195, v206);
          v246 = v227;
          v229 = v245;
          swift_unknownObjectRelease(v246);
        }

        v230 = *(v78 + 48);
        (v408->Kind)(v212, v382, &type metadata for Int);
        (*v407)(&v212[v230], v229, v206);
        v222 = 0;
        v210 = v402;
        v409 = v399;
      }

      else if (v200)
      {
        v202 = v200;
        v203 = v199;
LABEL_88:
        v409 = ((v202 - 1) & v202);
        v213 = __clz(__rbit64(v202)) | (v203 << 6);
        v214 = Description;
        v215 = v413;
        (*(Description + 2))(v413, *(v126 + 48) + *(Description + 9) * v213, &type metadata for Int);
        v216 = v406;
        v217 = *(v126 + 56) + *(v406 + 72) * v213;
        v218 = v404;
        v219 = v414;
        (*(v406 + 16))(v404, v217, v414);
        v220 = *(v410 + 48);
        v221 = *(v214 + 4);
        v78 = v410;
        v212 = v403;
        v221(v403, v215, &type metadata for Int);
        (*(v216 + 32))(&v212[v220], v218, v219);
        v222 = 0;
        v210 = v203;
        v195 = v387;
        v198 = v386;
      }

      else
      {
        if (v385 <= (v199 + 1))
        {
          v209 = (v199 + 1);
        }

        else
        {
          v209 = v385;
        }

        v210 = (v209 - 1);
        v211 = v199;
        v212 = v403;
        while (1)
        {
          v203 = v211 + 1;
          if (__OFADD__(v211, 1))
          {
            goto LABEL_204;
          }

          if (v203 >= v385)
          {
            break;
          }

          v202 = *(k + 8 * v203);
          v211 = (v211 + 1);
          if (v202)
          {
            goto LABEL_88;
          }
        }

        v409 = 0;
        v222 = 1;
      }

LABEL_102:
      v231 = *(v78 - 8);
      (*(v231 + 56))(v212, v222, 1, v78);
      (*v395)(v198, v212, v412);
      if ((*(v231 + 48))(v198, 1, v78) == 1)
      {
        v189 = j;
        goto LABEL_110;
      }

      v232 = v398;
      v233 = v414;
      (*v407)(v398, &v198[*(v78 + 48)], v414);
      v234 = v413;
      (v408->Kind)(v413, v198, &type metadata for Int);
      swift_dynamicCast(&v419, v234, &type metadata for Int, &type metadata for Int, 7uLL);
      v235 = specialized _DictionaryCodingKey.init(intValue:)(v419);
      v180 = v236;
      *&v419 = v235;
      *(&v419 + 1) = v236;
      v420 = v237;
      LOBYTE(v421) = v238 & 1;
      v239 = v415;
      (*(*v416[0] + 232))(v232, &v419, v233, &type metadata for _DictionaryCodingKey, v411, &protocol witness table for _DictionaryCodingKey);
      v415 = v239;
      if (v239)
      {
        (*v394)(v232, v233);
        v190 = j;
LABEL_112:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v190);
        v180;
        return v416[0];
      }

      (*v394)(v232, v233);
      v180;
      v199 = v210;
      v200 = v409;
      v197 = v401;
    }
  }

  v403 = v95;
  v98 = swift_conformsToProtocol2(v8, &protocol descriptor for CodingKeyRepresentable);
  v99 = v97 & 0xC000000000000001;
  v408 = v8;
  if (!v98 || !v8)
  {
    v127 = a1[3];
    v128 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v127);
    (*(v128 + 32))(&v419, v127, v128);
    v129 = v97;
    if (v99)
    {
      if (v97 < 0)
      {
        v130 = v97;
      }

      else
      {
        v130 = v97 & 0xFFFFFFFFFFFFFF8;
      }

      v131 = type metadata accessor for __CocoaDictionary.Iterator();
      v132 = swift_allocObject(v131, 0xE8, 7uLL);
      v395 = 0;
      v133 = 0;
      v134 = 0;
      *(v132 + 208) = v130;
      *(v132 + 216) = 0;
      *(v132 + 16) = 0u;
      *(v132 + 32) = 0u;
      *(v132 + 48) = 0u;
      *(v132 + 64) = 0u;
      *(v132 + 80) = 0u;
      *(v132 + 96) = 0u;
      *(v132 + 112) = 0u;
      *(v132 + 128) = 0u;
      *(v132 + 144) = 0u;
      *(v132 + 160) = 0u;
      *(v132 + 176) = 0u;
      *(v132 + 192) = 0u;
      *(v132 + 224) = 0;
      v97 = v132 | 0x8000000000000000;
    }

    else
    {
      v248 = -1 << *(v97 + 32);
      v133 = ~v248;
      v249 = *(v97 + 64);
      v395 = (v97 + 64);
      v250 = -v248;
      if (v250 < 64)
      {
        v251 = ~(-1 << v250);
      }

      else
      {
        v251 = -1;
      }

      v134 = (v251 & v249);
    }

    v252 = v414;
    v253 = v390;
    v254 = v391;
    v255 = v388;
    v386 = (v97 & 0x7FFFFFFFFFFFFFFFLL);
    v381 = (Description + 56);
    v379 = (v409 + 16);
    v377 = (Description + 48);
    v370 = v409 + 8;
    v409 = Description + 32;
    v376 = (v406 + 56);
    v372 = (v380 + 2);
    v371 = (v406 + 48);
    ++v380;
    v407 = (v406 + 32);
    v399 = (v78 - 8);
    v382 = v133;
    v383 = ((v133 + 64) >> 6);
    v394 = Description + 16;
    v387 = (v406 + 16);
    v398 = v403 + 32;
    v396 = Description + 8;
    j = (v406 + 8);
    v129;
    v256 = 0;
    i = v97;
    v257 = v389;
    while (1)
    {
      v401 = v134;
      v403 = v256;
      if (v97 < 0)
      {
        break;
      }

      if (v134)
      {
        v258 = v134;
        v259 = v256;
LABEL_134:
        v414 = ((v258 - 1) & v258);
        v270 = __clz(__rbit64(v258)) | (v259 << 6);
        v271 = Description;
        v272 = v413;
        p_Kind = &v408->Kind;
        (*(Description + 2))(v413, *(v97 + 48) + *(Description + 9) * v270, v408);
        v274 = v406;
        v275 = *(v97 + 56) + *(v406 + 72) * v270;
        v276 = v404;
        (*(v406 + 16))(v404, v275, v252);
        v277 = *(v410 + 48);
        v278 = *(v271 + 4);
        v268 = k;
        v279 = v272;
        v78 = v410;
        v278(k, v279, p_Kind);
        (*(v274 + 32))(v268 + v277, v276, v252);
        v280 = 0;
        v265 = v259;
        goto LABEL_145;
      }

      if (v383 <= (v256 + 1))
      {
        v264 = v256 + 1;
      }

      else
      {
        v264 = v383;
      }

      v265 = v264 - 1;
      v266 = v256;
      v267 = v402;
      v268 = k;
      v269 = v392;
      while (1)
      {
        v259 = (v266 + 1);
        if (__OFADD__(v266, 1))
        {
          goto LABEL_206;
        }

        if (v259 >= v383)
        {
          break;
        }

        v258 = *&v395[8 * v259];
        ++v266;
        if (v258)
        {
          goto LABEL_134;
        }
      }

      v414 = 0;
      v280 = 1;
LABEL_149:
      v293 = *(v78 - 8);
      (*(v293 + 56))(v268, v280, 1, v78);
      (*v398)(v269, v268, v412);
      if ((*(v293 + 48))(v269, 1, v78) == 1)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(i);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v419);
      }

      v294 = v78;
      v295 = v265;
      v296 = *(v294 + 48);
      v297 = &v408->Kind;
      (*v409)(v267, v269, v408);
      v298 = v384;
      (*v407)(v384, &v269[v296], v252);
      v299 = v267;
      v300 = v421;
      v301 = v422;
      __swift_mutable_project_boxed_opaque_existential_1(&v419, v421);
      v302 = v415;
      (*(v301 + 160))(v299, v297, v385, v300, v301);
      if (v302)
      {
        v415 = v302;
        _sSh8IteratorV8_VariantOySS__GWOe_0(i);
        (*j)(v298, v252);
        (*v396)(v299, v297);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v419);
      }

      (*v396)(v299, v297);
      v303 = v421;
      v304 = v422;
      __swift_mutable_project_boxed_opaque_existential_1(&v419, v421);
      (*(v304 + 160))(v298, v252, v411, v303, v304);
      v415 = 0;
      (*j)(v298, 0);
      v256 = v295;
      v134 = v414;
      v253 = v390;
      v257 = v389;
      v254 = v391;
      v255 = v388;
      v78 = v410;
      v97 = i;
    }

    v260 = v386;
    v261 = *(v386 + 27);
    if ((v261 & 0x8000000000000000) == 0)
    {
      if (v261 != *(v386 + 28))
      {
        v263 = *(v386 + 3);
        if (!v263)
        {
          goto LABEL_212;
        }

        if (v261 >> 60)
        {
          goto LABEL_211;
        }

LABEL_138:
        v281 = (v263 + 8 * v261);
        if ((v281 & 7) != 0)
        {
          goto LABEL_207;
        }

        v282 = v253;
        v283 = *v281;
        *(v260 + 27) = v261 + 1;
        v284 = *(v260 + 26);
        swift_unknownObjectRetain(v283);
        v285 = [v284 &sel:v283 objectForKey:?];
        if (!v285)
        {
          goto LABEL_212;
        }

        v286 = v285;
        v287 = v408;
        if (_swift_isClassOrObjCExistentialType(v408, &v408->Kind))
        {
          v416[0] = v283;
          swift_dynamicCast(v378, v416, qword_1EEEAC710, v287, 7uLL);
        }

        else
        {
          (*v381)(v255, 1, 1, v287);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v283, v287, v255);
          (*v379)(v254, v255, v257);
          if ((*v377)(v254, 1, v287) == 1)
          {
            goto LABEL_213;
          }

          (*v370)(v255, v257);
          swift_unknownObjectRelease(v283);
          (*v409)(v378, v254, v287);
        }

        v288 = _swift_isClassOrObjCExistentialType(v252, v252);
        v289 = v375;
        v290 = v374;
        v291 = v373;
        v268 = k;
        if (v288)
        {
          v416[0] = v286;
          swift_dynamicCast(v373, v416, qword_1EEEAC710, v252, 7uLL);
        }

        else
        {
          (*v376)(v374, 1, 1, v252);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v286, v252, v290);
          (*v372)(v289, v290, v282);
          if ((*v371)(v289, 1, v252) == 1)
          {
            goto LABEL_213;
          }

          (*v380)(v290, v282);
          swift_unknownObjectRelease(v286);
          (*v407)(v291, v289, v252);
        }

        v292 = *(v78 + 48);
        (*v409)(v268, v378, v408);
        (*v407)((v268 + v292), v291, v252);
        v280 = 0;
        v265 = v403;
        v414 = v401;
LABEL_145:
        v267 = v402;
LABEL_148:
        v269 = v392;
        goto LABEL_149;
      }

      v262 = [*(v386 + 26) countByEnumeratingWithState:v386 + 16 objects:v386 + 80 count:16];
      *(v260 + 28) = v262;
      if (v262)
      {
        *(v260 + 27) = 0;
        v263 = *(v260 + 3);
        if (!v263)
        {
          goto LABEL_212;
        }

        v261 = 0;
        goto LABEL_138;
      }

      *(v260 + 27) = -1;
    }

    v280 = 1;
    v265 = v256;
    v414 = v134;
    v267 = v402;
    v268 = k;
    goto LABEL_148;
  }

  v100 = a1[3];
  v101 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v100);
  (*(v101 + 24))(&v423, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v100, v101);
  if (v99)
  {
    if (v97 < 0)
    {
      v102 = v97;
    }

    else
    {
      v102 = v97 & 0xFFFFFFFFFFFFFF8;
    }

    v103 = type metadata accessor for __CocoaDictionary.Iterator();
    v104 = swift_allocObject(v103, 0xE8, 7uLL);
    v391 = 0;
    v105 = 0;
    v106 = 0;
    *(v104 + 208) = v102;
    *(v104 + 216) = 0;
    *(v104 + 16) = 0u;
    *(v104 + 32) = 0u;
    *(v104 + 48) = 0u;
    *(v104 + 64) = 0u;
    *(v104 + 80) = 0u;
    *(v104 + 96) = 0u;
    *(v104 + 112) = 0u;
    *(v104 + 128) = 0u;
    *(v104 + 144) = 0u;
    *(v104 + 160) = 0u;
    *(v104 + 176) = 0u;
    *(v104 + 192) = 0u;
    *(v104 + 224) = 0;
    v107 = v104 | 0x8000000000000000;
  }

  else
  {
    v305 = -1 << *(v97 + 32);
    v105 = ~v305;
    v306 = *(v97 + 64);
    v391 = (v97 + 64);
    v307 = -v305;
    if (v307 < 64)
    {
      v308 = ~(-1 << v307);
    }

    else
    {
      v308 = -1;
    }

    v106 = v308 & v306;
    v107 = v97;
  }

  v309 = v414;
  v310 = j;
  v311 = v383;
  v312 = v380;
  v313 = v407;
  v314 = v403;
  v386 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
  v382 = (Description + 56);
  v380 = (v409 + 16);
  v378 = (Description + 48);
  v377 = (v409 + 8);
  v403 = Description + 32;
  v375 = (v406 + 56);
  v374 = (v312 + 2);
  v373 = (v406 + 48);
  v372 = (v312 + 1);
  v402 = (v406 + 32);
  v398 = (v78 - 8);
  v384 = v105;
  v385 = ((v105 + 64) >> 6);
  v388 = Description + 16;
  v387 = (v406 + 16);
  v394 = v314 + 32;
  v392 = (v406 + 8);
  v97;
  v315 = 0;
  for (k = v107; ; v107 = k)
  {
    v316 = v396;
    i = v106;
    v401 = v315;
    if ((v107 & 0x8000000000000000) != 0)
    {
      v319 = v386;
      v320 = *(v386 + 27);
      if ((v320 & 0x8000000000000000) == 0)
      {
        if (v320 != *(v386 + 28))
        {
          v322 = *(v386 + 3);
          if (!v322)
          {
            goto LABEL_212;
          }

          if (v320 >> 60)
          {
            goto LABEL_210;
          }

          goto LABEL_180;
        }

        v321 = [*(v386 + 26) countByEnumeratingWithState:v386 + 16 objects:v386 + 80 count:16];
        v319 = v386;
        *(v386 + 28) = v321;
        if (v321)
        {
          *(v319 + 27) = 0;
          v322 = *(v319 + 3);
          if (!v322)
          {
            goto LABEL_212;
          }

          v320 = 0;
LABEL_180:
          v337 = (v322 + 8 * v320);
          if ((v337 & 7) != 0)
          {
            goto LABEL_207;
          }

          v338 = *v337;
          *(v319 + 27) = v320 + 1;
          v339 = *(v319 + 26);
          swift_unknownObjectRetain(v338);
          v340 = [v339 &sel:v338 objectForKey:?];
          if (!v340)
          {
            goto LABEL_212;
          }

          v341 = v340;
          if (_swift_isClassOrObjCExistentialType(v8, &v8->Kind))
          {
            *&v419 = v338;
            swift_dynamicCast(v381, &v419, qword_1EEEAC710, v8, 7uLL);
          }

          else
          {
            (*v382)(v316, 1, 1, v8);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v338, v8, v316);
            v362 = v310;
            v363 = v316;
            v364 = v316;
            v365 = v310;
            v366 = v389;
            (*v380)(v362, v363, v389);
            if ((*v378)(v365, 1, v8) == 1)
            {
              goto LABEL_213;
            }

            (*v377)(v364, v366);
            swift_unknownObjectRelease(v338);
            (*v403)(v381, v365, v8);
            v313 = v407;
          }

          v342 = _swift_isClassOrObjCExistentialType(v309, v309);
          v324 = v401;
          if (v342)
          {
            *&v419 = v341;
            v343 = v376;
            swift_dynamicCast(v376, &v419, qword_1EEEAC710, v309, 7uLL);
          }

          else
          {
            (*v375)(v311, 1, 1, v309);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v341, v309, v311);
            v367 = v370;
            v368 = v390;
            (*v374)(v370, v311, v390);
            if ((*v373)(v367, 1, v309) == 1)
            {
              goto LABEL_213;
            }

            (*v372)(v311, v368);
            swift_unknownObjectRelease(v341);
            v343 = v376;
            (*v402)(v376, v367, v309);
            v324 = v401;
          }

          v344 = *(v78 + 48);
          (*v403)(v313, v381, v8);
          (*v402)((v313 + v344), v343, v309);
          v336 = 0;
          v409 = i;
          goto LABEL_189;
        }

        *(v319 + 27) = -1;
      }

      v336 = 1;
      v324 = v315;
      v409 = v106;
LABEL_189:
      v326 = v399;
      goto LABEL_190;
    }

    if (v106)
    {
      v317 = v106;
      v318 = v315;
LABEL_176:
      v409 = ((v317 - 1) & v317);
      v327 = __clz(__rbit64(v317)) | (v318 << 6);
      v328 = Description;
      v329 = v413;
      v8 = v408;
      (*(Description + 2))(v413, *(v107 + 48) + *(Description + 9) * v327, v408);
      v330 = v406;
      v331 = v404;
      (*(v406 + 16))(v404, *(v107 + 56) + *(v406 + 72) * v327, v309);
      v332 = v410;
      v333 = *(v410 + 48);
      v334 = *(v328 + 4);
      v313 = v407;
      v334(v407, v329, v8);
      v335 = *(v330 + 32);
      v78 = v332;
      v335(v313 + v333, v331, v309);
      v336 = 0;
      v324 = v318;
      v311 = v383;
      goto LABEL_189;
    }

    v323 = v385 <= (v315 + 1) ? (v315 + 1) : v385;
    v324 = (v323 - 1);
    v325 = v315;
    v326 = v399;
    while (1)
    {
      v318 = v325 + 1;
      if (__OFADD__(v325, 1))
      {
        goto LABEL_205;
      }

      if (v318 >= v385)
      {
        break;
      }

      v317 = *&v391[8 * v318];
      v325 = (v325 + 1);
      if (v317)
      {
        goto LABEL_176;
      }
    }

    v409 = 0;
    v336 = 1;
LABEL_190:
    v345 = *(v78 - 8);
    (*(v345 + 56))(v313, v336, 1, v78);
    v346 = v395;
    (*v394)(v395, v313, v412);
    if ((*(v345 + 48))(v346, 1, v78) == 1)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(k);
      return v423;
    }

    (*v402)(v326, &v346[*(v78 + 48)], v309);
    v347 = v413;
    (*v403)(v413, v346, v8);
    v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22CodingKeyRepresentable_pMd, _ss22CodingKeyRepresentable_pMR);
    swift_dynamicCast(v416, v347, v8, v348, 7uLL);
    v349 = v417;
    v350 = v418;
    __swift_project_boxed_opaque_existential_0Tm(v416, v417);
    (*(v350 + 8))(&v419, v349, v350);
    __swift_destroy_boxed_opaque_existential_1Tm(v416);
    _ss9CodingKey_pWOb_0(&v419, v416);
    v351 = v417;
    v352 = v418;
    __swift_project_boxed_opaque_existential_0Tm(v416, v417);
    v353 = (*(v352 + 24))(v351, v352);
    v355 = v354;
    v357 = v417;
    v356 = v418;
    __swift_project_boxed_opaque_existential_0Tm(v416, v417);
    v358 = (*(v356 + 40))(v357, v356);
    LOBYTE(v356) = v359;
    __swift_destroy_boxed_opaque_existential_1Tm(v416);
    v416[0] = v353;
    v416[1] = v355;
    v416[2] = v358;
    v360 = v356 & 1;
    v309 = v414;
    v361 = v415;
    LOBYTE(v417) = v360;
    (*(*v423 + 232))(v326, v416, v414, &type metadata for _DictionaryCodingKey, v411, &protocol witness table for _DictionaryCodingKey);
    v415 = v361;
    if (v361)
    {
      break;
    }

    (*v392)(v326, v309);
    v355;
    v315 = v324;
    v106 = v409;
    v78 = v410;
    v310 = j;
    v313 = v407;
  }

  (*v392)(v326, v309);
  _sSh8IteratorV8_VariantOySS__GWOe_0(k);
  v355;
  return v423;
}

int64_t Dictionary.makeIterator()@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v3 = result;
    }

    else
    {
      v3 = result & 0xFFFFFFFFFFFFFF8;
    }

    v4 = type metadata accessor for __CocoaDictionary.Iterator();
    v5 = swift_allocObject(v4, 0xE8, 7uLL);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    *(v5 + 208) = v3;
    *(v5 + 216) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 224) = 0;
    result = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1;
    v10 = -1 << *(result + 32);
    v6 = result + 64;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v9 = ~(-1 << v11);
    }

    v8 = v9 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = v8;
  return result;
}

uint64_t Dictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 1);
  result = MEMORY[0x1EEE9AC00](v6);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v52 - v13;
  v15 = *v2;
  if (*v2 < 0)
  {
    v26 = &v52 - v13;
    v27 = __CocoaDictionary.Iterator.next()();
    if (v27)
    {
      v30 = v28;
      v31 = v27;
      _forceBridgeFromObjectiveC<A>(_:_:)(v27, v9, v29, v26);
      swift_unknownObjectRelease(v31);
      _forceBridgeFromObjectiveC<A>(_:_:)(v30, v4, v32, v8);
      swift_unknownObjectRelease(v30);
      swift_getTupleTypeMetadata2(0, v9, v4, "key value ", 0);
      v34 = v33;
      v35 = *(v33 + 48);
      (*(v10 + 32))(a2, v26, v9);
      (*(v5 + 32))(a2 + v35, v8, v4);
      return (*(*(v34 - 8) + 56))(a2, 0, 1, v34);
    }

    else
    {
      swift_getTupleTypeMetadata2(0, v9, v4, "key value ", 0);
      v50 = *(*(v49 - 8) + 56);

      return v50(a2, 1, 1, v49);
    }
  }

  else
  {
    v17 = v2[1];
    v16 = v2[2];
    v18 = v2[3];
    v19 = v2[4];
    v57 = v16;
    if (v19)
    {
      v20 = v10;
      v21 = v9;
      v22 = v8;
      v23 = v5;
      v24 = v4;
      v55 = a2;
      v25 = v18;
LABEL_14:
      v56 = (v19 - 1) & v19;
      v39 = __clz(__rbit64(v19)) | (v25 << 6);
      v40 = v20;
      v41 = *(v15 + 48) + *(v20 + 72) * v39;
      v42 = *(v20 + 16);
      v53 = v14;
      v54 = v15;
      v43 = v15;
      v42(v14, v41, v21);
      (*(v23 + 16))(v22, *(v43 + 56) + *(v23 + 72) * v39, v24);
      swift_getTupleTypeMetadata2(0, v21, v24, "key value ", 0);
      v45 = v44;
      v52 = *(v44 + 48);
      v46 = v55;
      (*(v40 + 32))(v55, v53, v21);
      (*(v23 + 32))(v46 + v52, v22, v24);
      result = (*(*(v45 - 8) + 56))(v46, 0, 1, v45);
      v47 = v56;
      v38 = v25;
      v48 = v54;
LABEL_15:
      *v2 = v48;
      v2[1] = v17;
      v2[2] = v57;
      v2[3] = v38;
      v2[4] = v47;
    }

    else
    {
      v36 = (v16 + 64) >> 6;
      if (v36 <= v18 + 1)
      {
        v37 = v18 + 1;
      }

      else
      {
        v37 = (v16 + 64) >> 6;
      }

      v38 = v37 - 1;
      while (1)
      {
        v25 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v25 >= v36)
        {
          v48 = v15;
          swift_getTupleTypeMetadata2(0, v9, v4, "key value ", 0);
          result = (*(*(v51 - 8) + 56))(a2, 1, 1, v51);
          v47 = 0;
          goto LABEL_15;
        }

        v19 = *(v17 + 8 * v25);
        ++v18;
        if (v19)
        {
          v20 = v10;
          v21 = v9;
          v22 = v8;
          v23 = v5;
          v24 = v4;
          v55 = a2;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, swift *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v310 = a6;
  v312 = a5;
  v9 = a3;
  v10 = a2;
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v281 - v15);
  v305 = *(v10 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (v281 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v309 = (v281 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v281 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (v281 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v302 = (v281 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v311 = *(v9 - 1);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v308 = (v281 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v313 = v9;
  if (v10 != &type metadata for String)
  {
    if (v10 != &type metadata for Int)
    {
      v302 = v46;
      v303 = v42;
      v307 = v41;
      v308 = v19;
      v306 = v50;
      v298 = v49;
      v297 = v48;
      v51 = v40;
      v299 = swift_conformsToProtocol2(v10, &protocol descriptor for CodingKeyRepresentable);
      v304 = a1;
      if (v299 && v10)
      {
        v293 = v25;
        v294 = v16;
        v52 = a1;
        v53 = *(a1 + 24);
        v54 = *(a1 + 32);
        __swift_project_boxed_opaque_existential_0Tm(v52, v53);
        v55 = (*(v54 + 24))(&v316, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v53, v54);
        v319 = v7;
        if (v7)
        {
          goto LABEL_121;
        }

        v292 = v13;
        isUniquelyReferenced_nonNull_native = v316;
        v57 = (*(*v316 + 96))(v55);
        v58 = specialized _arrayForceCast<A, B>(_:)(v57);
        v57;
        v59 = v304;
        v286 = v58[2];
        if (!v286)
        {
          isUniquelyReferenced_nonNull_native;
          v58;
          v174 = v59;
          v7 = &_swiftEmptyDictionarySingleton;
          __swift_destroy_boxed_opaque_existential_1Tm(v174);
          return v7;
        }

        v284 = v51;
        v60 = 0;
        v61 = v299;
        v289 = *(v299 + 16);
        v290 = v299 + 16;
        v291 = (v305 + 56);
        v308 = (v305 + 32);
        v296 = (v311 + 4);
        v282 = (v305 + 8);
        v281[1] = v311 + 5;
        v288 = (v305 + 48);
        v283 = (v302 + 1);
        v7 = &_swiftEmptyDictionarySingleton;
        v62 = (v58 + 7);
        v285 = isUniquelyReferenced_nonNull_native;
        v287 = v58;
        while (1)
        {
          if (v60 >= v58[2])
          {
            goto LABEL_169;
          }

          v301 = v60;
          v126 = *(v62 - 3);
          v125 = *(v62 - 2);
          v127 = *(v62 - 1);
          v300 = v62;
          v128 = *v62;
          v302 = v126;
          v303 = v127;
          v314[0] = v126;
          v314[1] = v125;
          v314[2] = v127;
          LODWORD(v306) = v128;
          v315 = v128;
          v129 = MEMORY[0x1EEE9AC00](v125);
          v131 = v281 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
          v307 = v129;
          swift_bridgeObjectRetain_n(v129, 2);
          v289(v314, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v10, v61);
          if ((*v288)(v131, 1, v10) == 1)
          {
            (*v283)(v131, v284);
            v316 = 0u;
            v317 = 0u;
            v318 = 0;
          }

          else
          {
            *(&v317 + 1) = v10;
            v318 = v61;
            v132 = __swift_allocate_boxed_opaque_existential_0Tm(&v316);
            (*v308)(v132, v131, v10);
          }

          v133 = v294;
          v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22CodingKeyRepresentable_pSgMd, _ss22CodingKeyRepresentable_pSgMR);
          if ((swift_dynamicCast(v133, &v316, v134, v10, 6uLL) & 1) == 0)
          {
            break;
          }

          (*v291)(v133, 0, 1, v10);
          v79 = *v308;
          v135 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = v293;
          (*v308)(v293, v133, v10);
          v136 = v307;
          *&v316 = v302;
          *(&v316 + 1) = v307;
          *&v317 = v303;
          BYTE8(v317) = v306;
          v137 = v298;
          v138 = v319;
          (*(*v135 + 248))(v9, &v316, v9, &type metadata for _DictionaryCodingKey, v310, &protocol witness table for _DictionaryCodingKey);
          v319 = v138;
          if (v138)
          {
            (*v282)(isUniquelyReferenced_nonNull_native, v10);
            v135;
            v136;
            v7;
            v208 = &v316 + 8;
            goto LABEL_120;
          }

          v136;
          (v79)(v309, isUniquelyReferenced_nonNull_native, v10);
          v139 = *v296;
          a1 = v297;
          (*v296)(v297, v137, v9);
          v295 = v79;
          v307 = v139;
          if ((v7 & 0xC000000000000001) != 0)
          {
            if (v7 >= 0)
            {
              v7 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v140 = [v7 count];
            v61 = v299;
            if (__OFADD__(v140, 1))
            {
              goto LABEL_176;
            }

            v141 = v312;
            v7 = _NativeDictionary.init(_:capacity:)(v7, v140 + 1, v10, v9, v312);
          }

          else
          {
            v61 = v299;
            v141 = v312;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
          *&v316 = v7;
          v142 = __RawDictionaryStorage.find<A>(_:)(v309, v10, v141);
          v144 = *(v7 + 16);
          v145 = (v143 & 1) == 0;
          v79 = v144 + v145;
          if (__OFADD__(v144, v145))
          {
            goto LABEL_174;
          }

          v146 = v143;
          if (*(v7 + 24) >= v79)
          {
            v150 = v142;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              type metadata accessor for _NativeDictionary(0, v10, v313, v312);
              _NativeDictionary.copy()();
            }
          }

          else
          {
            v147 = v312;
            type metadata accessor for _NativeDictionary(0, v10, v313, v312);
            _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, isUniquelyReferenced_nonNull_native);
            v148 = __RawDictionaryStorage.find<A>(_:)(v309, v10, v147);
            if ((v146 & 1) != (v149 & 1))
            {
              goto LABEL_185;
            }

            v150 = v148;
          }

          isUniquelyReferenced_nonNull_native = v285;
          if (v146)
          {
            (*v282)(v309, v10);
            v7 = v316;
            v124 = *(v316 + 56) + v311[9] * v150;
            v9 = v313;
            (v311[5])(v124, a1, v313);
          }

          else
          {
            v7 = v316;
            *(v316 + 8 * (v150 >> 6) + 64) |= 1 << v150;
            v295(*(v7 + 48) + *(v305 + 72) * v150, v309, v10);
            v151 = *(v7 + 56) + v311[9] * v150;
            v9 = v313;
            (v307)(v151, a1, v313);
            v152 = *(v7 + 16);
            v95 = __OFADD__(v152, 1);
            v153 = v152 + 1;
            if (v95)
            {
              goto LABEL_178;
            }

            *(v7 + 16) = v153;
          }

          v58 = v287;
          v60 = (v301 + 1);
          v62 = v300 + 32;
          if (v286 == (v301 + 1))
          {
            v226 = v304;
            isUniquelyReferenced_nonNull_native;
            v58;
            __swift_destroy_boxed_opaque_existential_1Tm(v226);
            return v7;
          }
        }

        v7;
        v287;
        (*v291)(v133, 1, 1, v10);
        (*v283)(v133, v284);
        v210 = _StringGuts.init(_initialCapacity:)(32);
        v220 = v211;
        *&v316 = v210;
        *(&v316 + 1) = v211;
        v221 = HIBYTE(v211) & 0xF;
        if ((v211 & 0x2000000000000000) == 0)
        {
          v221 = v210 & 0xFFFFFFFFFFFFLL;
        }

        if (v221 || (v210 & ~v211 & 0x2000000000000000) != 0)
        {
          if ((0x800000018066C3A0 & 0x2000000000000000 & v211) != 0 && (v222 = specialized _SmallString.init(_:appending:)(v210, v211, 0xD00000000000001ELL, 0x800000018066C3A0 | 0x8000000000000000), (v224 & 1) == 0))
          {
            v233 = v222;
            v234 = v223;
            v220;
            0x800000018066C3A0 | 0x8000000000000000;
            *&v316 = v233;
            *(&v316 + 1) = v234;
          }

          else
          {
            if ((0x800000018066C3A0 & 0x2000000000000000) != 0)
            {
              v225 = (0x800000018066C3A0 >> 56) & 0xF;
            }

            else
            {
              v225 = 30;
            }

            _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066C3A0 | 0x8000000000000000, 0, v225, v212, v213, v214, v215, v216, v217, v218, v219);
            0x800000018066C3A0 | 0x8000000000000000;
          }
        }

        else
        {
          v211;
          *&v316 = 0xD00000000000001ELL;
          *(&v316 + 1) = 0x800000018066C3A0 | 0x8000000000000000;
        }

        TypeName = swift_getTypeName(v10, 0);
        a1 = v304;
        v237 = v307;
        if (v236 < 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v238 = TypeName;
        v239 = v236;
        v240 = validateUTF8(_:)(TypeName, v236);
        if (v240 < 0)
        {
          v244 = repairUTF8(_:firstKnownBrokenRange:)(v238, v239, v241, v242);
        }

        else
        {
          v244 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v238, v239, v240 & 1, v243);
        }

        v254 = v245;
        v255 = *(&v316 + 1);
        v256 = HIBYTE(*(&v316 + 1)) & 0xFLL;
        if ((*(&v316 + 1) & 0x2000000000000000) == 0)
        {
          v256 = v316 & 0xFFFFFFFFFFFFLL;
        }

        if (!v256 && (v316 & ~*(&v316 + 1) & 0x2000000000000000) == 0)
        {
          v277 = v244;
          *(&v316 + 1);
          v266 = v277;
          *&v316 = v277;
          *(&v316 + 1) = v254;
          goto LABEL_155;
        }

        if ((*(&v316 + 1) & 0x2000000000000000) != 0)
        {
          if ((v245 & 0x2000000000000000) != 0)
          {
            v273 = v244;
            v274 = specialized _SmallString.init(_:appending:)(v316, *(&v316 + 1), v244, v245);
            if ((v276 & 1) == 0)
            {
              v279 = v275;
              v280 = v274;
              v255;
              v254;
              *&v316 = v280;
              *(&v316 + 1) = v279;
              v254 = v279;
              v266 = v280;
              a1 = v304;
              goto LABEL_155;
            }

            v257 = HIBYTE(v254) & 0xF;
            v244 = v273;
            a1 = v304;
            goto LABEL_154;
          }
        }

        else if ((v245 & 0x2000000000000000) != 0)
        {
          v257 = HIBYTE(v245) & 0xF;
LABEL_154:
          _StringGuts.append(_:)(v244, v254, 0, v257, v246, v247, v248, v249, v250, v251, v252, v253);
          v254;
          v254 = *(&v316 + 1);
          v266 = v316;
LABEL_155:
          v267 = HIBYTE(v254) & 0xF;
          if ((v254 & 0x2000000000000000) == 0)
          {
            v267 = v266 & 0xFFFFFFFFFFFFLL;
          }

          if (v267 || (v266 & ~v254 & 0x2000000000000000) != 0)
          {
            if ((v254 & 0x2000000000000000) != 0 && (v268 = specialized _SmallString.init(_:appending:)(v266, v254, 0, 0xE000000000000000), (v270 & 1) == 0))
            {
              v272 = v268;
              v271 = v269;
              v254;
              0xE000000000000000;
            }

            else
            {
              _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v258, v259, v260, v261, v262, v263, v264, v265);
              0xE000000000000000;
              v271 = *(&v316 + 1);
              v272 = v316;
            }
          }

          else
          {
            v254;
            v272 = 0;
            v271 = 0xE000000000000000;
          }

          v7 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
          _ss13DecodingErrorO013dataCorruptedB06forKey2in16debugDescriptionAB0F0Qz_xSSts05KeyedA17ContainerProtocolRzlFZs0jaK0Vys017_DictionaryCodingF0VG_Tt3B5(v302, v237, v303, v306, isUniquelyReferenced_nonNull_native, v272, v271, v278);
          v237;
          isUniquelyReferenced_nonNull_native;
          v271;
          v319 = v7;
          swift_willThrow();
          goto LABEL_122;
        }

        v257 = v244 & 0xFFFFFFFFFFFFLL;
        goto LABEL_154;
      }

      v309 = a4;
      v154 = a1;
      v155 = *(a1 + 24);
      v156 = *(a1 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v154, v155);
      (*(v156 + 32))(&v316, v155, v156);
      v319 = v7;
      if (v7)
      {
        goto LABEL_121;
      }

      v157 = *(&v317 + 1);
      v158 = v318;
      __swift_project_boxed_opaque_existential_0Tm(&v316, *(&v317 + 1));
      v159 = (v158[2])(v157, v158);
      if (v160 & 1) == 0 && (v159)
      {
        v161 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
        v7 = v162;
        v163 = v304;
        v164 = v304[3];
        v165 = v304[4];
        __swift_project_boxed_opaque_existential_0Tm(v304, v164);
        v166 = *(v165 + 8);
        v167 = v165;
        a1 = v163;
        v168 = v166(v164, v167);
        v169 = 0x800000018066C350 | 0x8000000000000000;
        v170 = 0xD00000000000004DLL;
LABEL_83:
        *v7 = v168;
        *(v7 + 8) = v170;
        *(v7 + 16) = v169;
        *(v7 + 24) = 0;
        *(v7 + 72) = 3;
        v319 = v161;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v316);
        goto LABEL_122;
      }

      v172 = *(&v317 + 1);
      v173 = v318;
      __swift_project_boxed_opaque_existential_0Tm(&v316, *(&v317 + 1));
      if ((v173[3])(v172, v173))
      {
        v7 = &_swiftEmptyDictionarySingleton;
LABEL_90:
        __swift_destroy_boxed_opaque_existential_1Tm(&v316);
LABEL_86:
        __swift_destroy_boxed_opaque_existential_1Tm(v304);
        return v7;
      }

      v302 = (v305 + 32);
      v301 = v311 + 4;
      v300 = (v305 + 8);
      v299 = (v311 + 5);
      v7 = &_swiftEmptyDictionarySingleton;
      v182 = v306;
      while (1)
      {
        v185 = *(&v317 + 1);
        v186 = v318;
        __swift_mutable_project_boxed_opaque_existential_1(&v316, *(&v317 + 1));
        v187 = v319;
        (v186[22])(v10, v10, v309, v185, v186);
        v319 = v187;
        if (v187)
        {
LABEL_138:
          v7;
          __swift_destroy_boxed_opaque_existential_1Tm(&v316);
          goto LABEL_121;
        }

        v188 = *(&v317 + 1);
        v189 = v318;
        __swift_project_boxed_opaque_existential_0Tm(&v316, *(&v317 + 1));
        if ((v189[3])(v188, v189))
        {
          (*v300)(v182, v10);
          v7;
          v161 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
          v7 = v227;
          v228 = v304;
          v229 = v304[3];
          v230 = v304[4];
          __swift_project_boxed_opaque_existential_0Tm(v304, v229);
          v231 = *(v230 + 8);
          v232 = v230;
          a1 = v228;
          v168 = v231(v229, v232);
          v169 = 0x800000018066C310 | 0x8000000000000000;
          v170 = 0xD00000000000003DLL;
          goto LABEL_83;
        }

        v190 = *(&v317 + 1);
        a1 = v318;
        __swift_mutable_project_boxed_opaque_existential_1(&v316, *(&v317 + 1));
        v191 = v303;
        v192 = v319;
        (*(a1 + 176))(v9, v9, v310, v190, a1);
        v319 = v192;
        if (v192)
        {
          (*v300)(v182, v10);
          goto LABEL_138;
        }

        v79 = *v302;
        (*v302)(v308, v182, v10);
        v193 = v191;
        isUniquelyReferenced_nonNull_native = *v301;
        (*v301)(v307, v193, v9);
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 >= 0)
          {
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v194 = [v7 count];
          v195 = v312;
          if (__OFADD__(v194, 1))
          {
            goto LABEL_180;
          }

          v7 = _NativeDictionary.init(_:capacity:)(v7, v194 + 1, v10, v9, v312);
        }

        else
        {
          v195 = v312;
        }

        v196 = swift_isUniquelyReferenced_nonNull_native(v7);
        v314[0] = v7;
        v197 = __RawDictionaryStorage.find<A>(_:)(v308, v10, v195);
        v199 = *(v7 + 16);
        v200 = (v198 & 1) == 0;
        v9 = (v199 + v200);
        if (__OFADD__(v199, v200))
        {
          goto LABEL_179;
        }

        v201 = v198;
        if (*(v7 + 24) < v9)
        {
          break;
        }

        a1 = v197;
        if (v196)
        {
          goto LABEL_113;
        }

        v9 = v313;
        type metadata accessor for _NativeDictionary(0, v10, v313, v312);
        _NativeDictionary.copy()();
LABEL_114:
        v182 = v306;
        v205 = v308;
        if (v201)
        {
          (*v300)(v308, v10);
          v7 = v314[0];
          (v311[5])(*(v314[0] + 56) + v311[9] * a1, v307, v9);
        }

        else
        {
          v7 = v314[0];
          *(v314[0] + 8 * (a1 >> 6) + 64) |= 1 << a1;
          (v79)(*(v7 + 48) + *(v305 + 72) * a1, v205, v10);
          (isUniquelyReferenced_nonNull_native)(*(v7 + 56) + v311[9] * a1, v307, v9);
          v206 = *(v7 + 16);
          v95 = __OFADD__(v206, 1);
          v207 = v206 + 1;
          if (v95)
          {
            goto LABEL_181;
          }

          *(v7 + 16) = v207;
        }

        v183 = *(&v317 + 1);
        v184 = v318;
        __swift_project_boxed_opaque_existential_0Tm(&v316, *(&v317 + 1));
        if ((v184[3])(v183, v184))
        {
          goto LABEL_90;
        }
      }

      v202 = v312;
      type metadata accessor for _NativeDictionary(0, v10, v313, v312);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9, v196);
      v203 = __RawDictionaryStorage.find<A>(_:)(v308, v10, v202);
      if ((v201 & 1) != (v204 & 1))
      {
LABEL_185:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v10);
      }

      a1 = v203;
LABEL_113:
      v9 = v313;
      goto LABEL_114;
    }

    v301 = v44;
    v97 = *(a1 + 24);
    v98 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_0Tm(a1, v97);
    v99 = (*(v98 + 24))(&v316, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v97, v98);
    v319 = v7;
    if (v7)
    {
      goto LABEL_122;
    }

    v304 = a1;
    v100 = *(*v316 + 96);
    v300 = v316;
    v101 = v100(v99);
    v69 = specialized _arrayForceCast<A, B>(_:)(v101);
    v101;
    v299 = v69[2];
    if (v299)
    {
      v102 = 0;
      v303 = v311 + 4;
      v296 = (v305 + 16);
      v295 = (v305 + 32);
      v294 = (v311 + 5);
      v297 = (v305 + 8);
      v103 = v69 + 7;
      v7 = &_swiftEmptyDictionarySingleton;
      v10 = &type metadata for Int;
      v298 = v69;
      while (1)
      {
        if (v102 >= v69[2])
        {
          goto LABEL_169;
        }

        isUniquelyReferenced_nonNull_native = *(v103 - 3);
        v104 = *(v103 - 2);
        v79 = *(v103 - 1);
        if (*v103)
        {
          v9 = *(v103 - 2);
          v104;
          v69;
          v300;
          v7;
          a1 = v304;
          v175 = v304[3];
          v176 = v304[4];
          __swift_project_boxed_opaque_existential_0Tm(v304, v175);
          v7 = (*(v176 + 8))(v175, v176);
          if (!swift_isUniquelyReferenced_nonNull_native(v7))
          {
            goto LABEL_182;
          }

          goto LABEL_93;
        }

        v306 = v103;
        v307 = v102;
        v9 = v28;
        *&v316 = isUniquelyReferenced_nonNull_native;
        *(&v316 + 1) = v104;
        *&v317 = v79;
        BYTE8(v317) = 0;
        v105 = *(*v300 + 248);
        isUniquelyReferenced_nonNull_native = *v300 + 248;
        v309 = v104;
        v104;
        v106 = v301;
        v107 = v313;
        v108 = v319;
        v105(v313, &v316, v313, &type metadata for _DictionaryCodingKey, v310, &protocol witness table for _DictionaryCodingKey);
        v319 = v108;
        if (v108)
        {
          v300;
          v309;
          v171 = v7;
          goto LABEL_119;
        }

        *&v316 = v79;
        swift_dynamicCast(v9, &v316, &type metadata for Int, &type metadata for Int, 7uLL);
        v109 = v106;
        a1 = *v303;
        (*v303)(v308, v109, v107);
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 >= 0)
          {
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v110 = [v7 count];
          if (__OFADD__(v110, 1))
          {
            goto LABEL_175;
          }

          v111 = v312;
          v7 = _NativeDictionary.init(_:capacity:)(v7, v110 + 1, &type metadata for Int, v107, v312);
        }

        else
        {
          v111 = v312;
        }

        v112 = swift_isUniquelyReferenced_nonNull_native(v7);
        v314[0] = v7;
        v28 = v9;
        v113 = __RawDictionaryStorage.find<A>(_:)(v9, &type metadata for Int, v111);
        v115 = *(v7 + 16);
        v116 = (v114 & 1) == 0;
        v9 = (v115 + v116);
        if (__OFADD__(v115, v116))
        {
          goto LABEL_173;
        }

        v79 = v114;
        if (*(v7 + 24) < v9)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = v113;
        v309;
        if (v112)
        {
          goto LABEL_51;
        }

        v120 = v313;
        type metadata accessor for _NativeDictionary(0, &type metadata for Int, v313, v312);
        _NativeDictionary.copy()();
        v7 = v314[0];
        if (v79)
        {
LABEL_35:
          (v311[5])(*(v7 + 56) + v311[9] * isUniquelyReferenced_nonNull_native, v308, v120);
          goto LABEL_36;
        }

LABEL_52:
        v121 = v305;
        v9 = v302;
        (*(v305 + 16))(v302, v28, &type metadata for Int);
        *(v7 + 8 * (isUniquelyReferenced_nonNull_native >> 6) + 64) |= 1 << isUniquelyReferenced_nonNull_native;
        (*(v121 + 32))(*(v7 + 48) + *(v121 + 72) * isUniquelyReferenced_nonNull_native, v9, &type metadata for Int);
        (a1)(*(v7 + 56) + v311[9] * isUniquelyReferenced_nonNull_native, v308, v120);
        v122 = *(v7 + 16);
        v95 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v95)
        {
          goto LABEL_177;
        }

        *(v7 + 16) = v123;
LABEL_36:
        v102 = v307 + 1;
        (*v297)(v28, &type metadata for Int);
        v103 = v306 + 32;
        v69 = v298;
        if (v299 == v102)
        {
          goto LABEL_85;
        }
      }

      v117 = v312;
      type metadata accessor for _NativeDictionary(0, &type metadata for Int, v313, v312);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9, v112);
      v118 = __RawDictionaryStorage.find<A>(_:)(v28, &type metadata for Int, v117);
      if ((v79 & 1) != (v119 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int);
      }

      isUniquelyReferenced_nonNull_native = v118;
      v309;
LABEL_51:
      v120 = v313;
      v7 = v314[0];
      if (v79)
      {
        goto LABEL_35;
      }

      goto LABEL_52;
    }

LABEL_84:
    v7 = &_swiftEmptyDictionarySingleton;
LABEL_85:
    v300;
    v69;
    goto LABEL_86;
  }

  v301 = (v281 - v47);
  v308 = v45;
  v309 = v43;
  v63 = a1;
  v64 = *(a1 + 24);
  v65 = *(a1 + 32);
  v304 = v63;
  __swift_project_boxed_opaque_existential_0Tm(v63, v64);
  v66 = (*(v65 + 24))(&v316, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v64, v65);
  v319 = v7;
  if (v7)
  {
    goto LABEL_121;
  }

  v67 = *(*v316 + 96);
  v300 = v316;
  v68 = v67(v66);
  v69 = specialized _arrayForceCast<A, B>(_:)(v68);
  v68;
  v299 = v69[2];
  if (!v299)
  {
    goto LABEL_84;
  }

  v70 = 0;
  v303 = v311 + 4;
  v296 = (v305 + 16);
  v295 = (v305 + 32);
  v294 = (v311 + 5);
  v297 = (v305 + 8);
  v71 = v69 + 7;
  v7 = &_swiftEmptyDictionarySingleton;
  v298 = v69;
  while (1)
  {
    if (v70 >= v69[2])
    {
LABEL_169:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v306 = v71;
    v307 = v70;
    a1 = v7;
    v10 = *(v71 - 3);
    v73 = *(v71 - 2);
    v74 = *v71;
    v75 = *(v71 - 1);
    *&v316 = v10;
    *(&v316 + 1) = v73;
    *&v317 = v75;
    BYTE8(v317) = v74;
    v76 = *(*v300 + 248);
    v73;
    v7 = v301;
    v77 = v319;
    v76(v9, &v316, v9, &type metadata for _DictionaryCodingKey, v310, &protocol witness table for _DictionaryCodingKey);
    v319 = v77;
    if (v77)
    {
      v300;
      v73;
      v171 = a1;
LABEL_119:
      v171;
      v208 = &v320;
LABEL_120:
      *(v208 - 32);
LABEL_121:
      a1 = v304;
      goto LABEL_122;
    }

    *&v316 = v10;
    *(&v316 + 1) = v73;
    v78 = v309;
    isUniquelyReferenced_nonNull_native = &type metadata for String;
    swift_dynamicCast(v309, &v316, &type metadata for String, &type metadata for String, 7uLL);
    v79 = *v303;
    (*v303)(v308, v7, v9);
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (a1 < 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v80 = [v7 count];
      v81 = v312;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_171;
      }

      a1 = _NativeDictionary.init(_:capacity:)(v7, v80 + 1, &type metadata for String, v9, v312);
    }

    else
    {
      v81 = v312;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native(a1);
    v314[0] = a1;
    v82 = __RawDictionaryStorage.find<A>(_:)(v78, &type metadata for String, v81);
    v84 = *(a1 + 16);
    v85 = (v83 & 1) == 0;
    isUniquelyReferenced_nonNull_native = v84 + v85;
    if (__OFADD__(v84, v85))
    {
      break;
    }

    v86 = v83;
    if (*(a1 + 24) >= isUniquelyReferenced_nonNull_native)
    {
      v90 = v82;
      if ((v10 & 1) == 0)
      {
        type metadata accessor for _NativeDictionary(0, &type metadata for String, v313, v312);
        _NativeDictionary.copy()();
      }

      v10 = v309;
      v7 = v314[0];
      if (v86)
      {
LABEL_11:
        v72 = *(v7 + 56) + v311[9] * v90;
        v9 = v313;
        (v311[5])(v72, v308, v313);
        goto LABEL_12;
      }
    }

    else
    {
      v87 = v312;
      type metadata accessor for _NativeDictionary(0, &type metadata for String, v313, v312);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(isUniquelyReferenced_nonNull_native, v10);
      v10 = v309;
      v88 = __RawDictionaryStorage.find<A>(_:)(v309, &type metadata for String, v87);
      if ((v86 & 1) != (v89 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }

      v90 = v88;
      v7 = v314[0];
      if (v86)
      {
        goto LABEL_11;
      }
    }

    v91 = v305;
    v92 = v302;
    (*(v305 + 16))(v302, v10, &type metadata for String);
    *(v7 + 8 * (v90 >> 6) + 64) |= 1 << v90;
    (*(v91 + 32))(*(v7 + 48) + *(v91 + 72) * v90, v92, &type metadata for String);
    v93 = *(v7 + 56) + v311[9] * v90;
    v9 = v313;
    (v79)(v93, v308, v313);
    v94 = *(v7 + 16);
    v95 = __OFADD__(v94, 1);
    v96 = v94 + 1;
    if (v95)
    {
      goto LABEL_172;
    }

    *(v7 + 16) = v96;
LABEL_12:
    v70 = v307 + 1;
    (*v297)(v10, &type metadata for String);
    v71 = v306 + 32;
    v69 = v298;
    if (v299 == v70)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
LABEL_93:
  v178 = *(v7 + 16);
  v177 = *(v7 + 24);
  if (v178 >= v177 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v178 + 1, 1, v7, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  }

  *(&v317 + 1) = &type metadata for _DictionaryCodingKey;
  v318 = &protocol witness table for _DictionaryCodingKey;
  v179 = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *&v316 = v179;
  v179[2] = isUniquelyReferenced_nonNull_native;
  v179[3] = v9;
  v179[4] = v79;
  *(v179 + 40) = 1;
  *(v7 + 16) = v178 + 1;
  _ss9CodingKey_pWOb_0(&v316, v7 + 40 * v178 + 32);
  v180 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  *v181 = v10;
  *(v181 + 8) = v7;
  *(v181 + 16) = 0xD00000000000002ELL;
  *(v181 + 24) = 0x800000018066C3C0 | 0x8000000000000000;
  *(v181 + 32) = 0;
  *(v181 + 72) = 0;
  v319 = v180;
  swift_willThrow();
LABEL_122:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t static Int.% infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static Int.% infix(_:_:)(a1, a2);
}

{
  if (!a2 || a1 == 0x8000000000000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

uint64_t SingleValueEncodingContainer<>.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v10 = v9;
  v9[3] = &type metadata for Int128;
  v11 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v10 = v11;
  v11[2] = a1;
  v11[3] = a2;
  v10[4] = (*(a5 + 8))(a3, a5);
  v10[5] = 0xD00000000000002ELL;
  v10[6] = 0x800000018066C0B0;
  v10[7] = 0;
  return swift_willThrow();
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v10 = v9;
  v9[3] = &type metadata for UInt128;
  v11 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v10 = v11;
  v11[2] = a1;
  v11[3] = a2;
  v10[4] = (*(a5 + 8))(a3, a5);
  v10[5] = 0xD00000000000002FLL;
  v10[6] = 0x800000018066C0E0;
  v10[7] = 0;
  return swift_willThrow();
}

uint64_t SingleValueDecodingContainer<>.decode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v6 = v5;
  v7 = (*(a3 + 8))(a1, a3);
  *v6 = &type metadata for Int128;
  *(v6 + 8) = v7;
  *(v6 + 16) = 0xD00000000000002ELL;
  *(v6 + 24) = 0x800000018066C110;
  *(v6 + 32) = 0;
  *(v6 + 72) = 0;
  return swift_willThrow();
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v6 = v5;
  v7 = (*(a3 + 8))(a1, a3);
  *v6 = &type metadata for UInt128;
  *(v6 + 8) = v7;
  *(v6 + 16) = 0xD00000000000002FLL;
  *(v6 + 24) = 0x800000018066C140;
  *(v6 + 32) = 0;
  *(v6 + 72) = 0;
  return swift_willThrow();
}

uint64_t protocol witness for IteratorProtocol.next() in conformance IndexingIterator<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v25 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = *(a1 + 36);
  (*(v6 + 72))(v5, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = (*(*(AssociatedConformanceWitness + 8) + 8))(v2 + v12, v11, v8);
  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    swift_getAssociatedTypeWitness(0, *(v6 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
  }

  else
  {
    v17 = (*(v6 + 80))(v26, v4 + v12, v5, v6);
    v19 = v18;
    swift_getAssociatedTypeWitness(0, *(v6 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = v25;
    (*(v22 + 16))(v25, v19, v20);
    v17(v26, 0);
    (*(v6 + 192))(v4 + v12, v5, v6);
    return (*(v22 + 56))(v23, 0, 1, v21);
  }
}

uint64_t Collection._advanceForward(_:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  result = (*(*(v10 - 8) + 16))(a5, a1, v10);
  if (v7)
  {
    v12 = *(a4 + 192);
    do
    {
      result = v12(a5, a3, a4);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t Collection.distance(from:to:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v25 = a4;
  v24 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  if (((*(AssociatedConformanceWitness + 24))(a1, a2, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    goto LABEL_10;
  }

  (*(v10 + 16))(v12, a1, v9);
  v14 = *(*(AssociatedConformanceWitness + 8) + 8);
  v23 = *(AssociatedConformanceWitness + 8);
  v15 = v14;
  if (((v14)(v12, a2, v9) & 1) == 0)
  {
    v22 = v10;
    v17 = a2;
    v18 = 0;
    v19 = v25[24];
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      (v19)(v12, v24, v25);
      ++v18;
      if (v15(v12, v17, v9, v23))
      {
        v10 = v22;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = 0;
LABEL_8:
  (*(v10 + 8))(v12, v9);
  return v16;
}

uint64_t Collection.formIndex(_:offsetBy:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v10 + 32))(&v14 - v11, a1, v9);
  (*(a4 + 136))(v12, a2, a3, a4);
  return (*(v10 + 8))(v12, v9);
}

BOOL Collection.formIndex(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  (*(a5 + 144))(a1, a2, a3, a4, a5);
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

uint64_t specialized Collection.randomElement<A>(using:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26[-v12];
  if ((*(a2 + 104))(a1, a2))
  {
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v15 = *(*(v14 - 8) + 56);

    return v15(a3, 1, 1, v14);
  }

  else
  {
    v17 = (*(a2 + 112))(a1, a2);
    if ((v17 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v17)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = specialized RandomNumberGenerator.next<A>(upperBound:)(v17);
    (*(a2 + 64))(a1, a2);
    (*(a2 + 136))(v11, v18, a1, a2);
    v19 = *(v8 + 8);
    v19(v11, v7);
    v20 = (*(a2 + 80))(v26, v13, a1, a2);
    v22 = v21;
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v24 = v23;
    v25 = *(v23 - 8);
    (*(v25 + 16))(a3, v22, v23);
    v20(v26, 0);
    v19(v13, v7);
    return (*(v25 + 56))(a3, 0, 1, v24);
  }
}

uint64_t Collection.randomElement<A>(using:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a1;
  v34 = a5;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  if ((*(a4 + 104))(a2, a4))
  {
    swift_getAssociatedTypeWitness(0, *(a4 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v19 = *(*(v18 - 8) + 56);

    return v19(a6, 1, 1, v18);
  }

  else
  {
    v32 = a6;
    v21 = (*(a4 + 112))(a2, a4);
    if ((v21 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v21)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v22 = specialized RandomNumberGenerator.next<A>(upperBound:)(v21, a3, v34);
    (*(a4 + 64))(a2, a4);
    (*(a4 + 136))(v15, v22, a2, a4);
    v23 = *(v12 + 8);
    v23(v15, v11);
    v24 = (*(a4 + 80))(v35, v17, a2, a4);
    v26 = v25;
    swift_getAssociatedTypeWitness(0, *(a4 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v28 = v27;
    v29 = *(v27 - 8);
    v30 = v32;
    (*(v29 + 16))(v32, v26, v27);
    v24(v35, 0);
    v23(v17, v11);
    return (*(v29 + 56))(v30, 0, 1, v28);
  }
}

uint64_t specialized static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = *(a3 - 1);
  v41 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9;
  v11 = *(v9 + 1);
  swift_getAssociatedTypeWitness(0, *(v11 + 24), v12, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v14 = v13;
  v44 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v39 = &v35 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v42 = &v35 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  v24 = type metadata accessor for Range(0, a3, *(*(v11 + 32) + 8), v23);
  if ((*(*(*(v11 + 16) + 8) + 8))(a1, a1 + *(v24 + 36), a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v10 + 11))(v8, a1, a3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a3, v14, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v38 = a4;
  v25 = *(AssociatedConformanceWitness + 96);
  v36 = v22;
  v26 = a1;
  v27 = AssociatedConformanceWitness;
  v25(v8, a3, v11, v14);
  (*(v40 + 16))(v8, v26, a3);
  v28 = v39;
  (v25)(v8, a3, v11, v14, v27);
  v29 = swift_getAssociatedConformanceWitness(v10, a3, v14, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  swift_getAssociatedConformanceWitness(v10, a3, v14, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: UnsignedInteger);
  v30 = v43;
  v31 = v36;
  specialized RandomNumberGenerator.next<A>(upperBound:)(v36, v14, v29, v43);
  v32 = *(v44 + 8);
  v32(v31, v14);
  v33 = v42;
  (*(v29 + 80))(v42, v30, v14, v29);
  v32(v30, v14);
  v32(v28, v14);
  return (*(v11 + 96))(v33, v14, AssociatedConformanceWitness, a3, v11);
}

uint64_t static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a6;
  v43 = a5;
  v47 = a4;
  v48 = a2;
  v40 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v12 = *(v10 + 1);
  swift_getAssociatedTypeWitness(0, *(v12 + 24), v13, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v15 = v14;
  v46 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v45 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v41 = &v37 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v44 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v25 = type metadata accessor for Range(0, a3, *(*(v12 + 32) + 8), v24);
  v26 = a1;
  if ((*(*(*(v12 + 16) + 8) + 8))(a1, a1 + *(v25 + 36), a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 11))(v9, a1, a3, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a3, v15, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v28 = *(AssociatedConformanceWitness + 96);
  v38 = v23;
  v39 = AssociatedConformanceWitness;
  v29 = AssociatedConformanceWitness;
  v28(v9, a3, v12, v15);
  (*(v40 + 16))(v9, v26, a3);
  v30 = v41;
  (v28)(v9, a3, v12, v15, v29);
  v31 = swift_getAssociatedConformanceWitness(v11, a3, v15, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  v32 = v45;
  v33 = v38;
  RandomNumberGenerator.next<A>(upperBound:)(v38, v47, v15, v43, v31, v45);
  v34 = *(v46 + 8);
  v34(v33, v15);
  v35 = v44;
  (*(v31 + 80))(v44, v32, v15, v31);
  v34(v32, v15);
  v34(v30, v15);
  return (*(v12 + 96))(v35, v15, v39, a3, v12);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (HIWORD(a3))
  {
    if (result < 0 || a2 >= 3)
    {
      goto LABEL_8;
    }
  }

  else if (result < 0 || a2 > 1)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  if (a3 >= 0x80)
  {
    if (a3 >= 0x800)
    {
      if (HIWORD(a3))
      {
        if ((result & 0x8000000000000000) == 0 && a2 <= 4)
        {
          return result;
        }
      }

      else if ((result & 0x8000000000000000) == 0 && a2 <= 3)
      {
        return result;
      }

LABEL_14:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v3 = 2;
    if (result < 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 1;
    if (result < 0)
    {
      goto LABEL_14;
    }
  }

  if (v3 < a2)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a1;
  v58 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v55 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v52 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v56 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v22);
  v53 = *(v56 - 8);
  v23 = MEMORY[0x1EEE9AC00](v56);
  v54 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  (*(a3 + 64))(a2, a3);
  v27 = *(a3 + 72);
  v59 = v4;
  v57 = a2;
  v51 = a3;
  v27(a2, a3);
  if (((*(AssociatedConformanceWitness + 24))(v20, v18, v8, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = v52;
  v29 = *(v52 + 32);
  v29(v15, v20, v8);
  v29(&v15[*(v10 + 48)], v18, v8);
  v30 = v29;
  v31 = v55;
  v32 = v26;
  v33 = v50;
  (*(v55 + 16))(v50, v15, v10);
  v48 = *(v10 + 48);
  v29(v32, v33, v8);
  v49 = v29;
  v34 = *(v28 + 8);
  v34(&v33[v48], v8);
  (*(v31 + 32))(v33, v15, v10);
  v35 = v56;
  v30(&v32[*(v56 + 36)], &v33[*(v10 + 48)], v8);
  v34(v33, v8);
  v36 = v51;
  v37 = v59;
  v38 = v60;
  v39 = v57;
  (*(v51 + 176))(v60, v32, v57, v51);
  v40 = v53;
  (*(v53 + 8))(v32, v35);
  v42 = type metadata accessor for Slice(0, v39, v36, v41);
  v43 = v58;
  (*(*(v39 - 8) + 16))(&v58[*(v42 + 40)], v37, v39);
  v44 = v54;
  (*(v40 + 16))(v54, v38, v35);
  v45 = v49;
  v49(v43, v44, v8);
  return v45(&v43[*(v42 + 36)], &v44[*(v35 + 36)], v8);
}

uint64_t Slice.init(base:bounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Slice(0, a3, a4, a4);
  (*(*(a3 - 1) + 32))(a5 + *(v10 + 40), a1, a3);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v18 = *(*(v11 - 8) + 32);
  (v18)((v11 - 8), a5, a2, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = *(type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14) + 36);
  v16 = a5 + *(v10 + 36);

  return v18(v16, a2 + v15, v12);
}

uint64_t Collection<>.popFirst()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v74 = v8;
  v72 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v73 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = v64 - v12;
  v79 = *(v7 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v78 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = v64 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v77 = v64 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v19 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v18);
  v71 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v70 = v64 - v21;
  v22 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v80 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(255, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v25 = v24;
  v28 = type metadata accessor for Optional(0, v24, v26, v27);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = v64 - v30;
  v32 = v25;
  v83 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v34 = v64 - v33;
  v35 = *(a2 + 104);
  v82 = v3;
  v36 = a1;
  if (v35(a1, a2))
  {
    v37 = *(v83 + 56);
    v38 = v81;

    return v37(v38, 1, 1, v32);
  }

  else
  {
    v68 = v19;
    Collection.first.getter(a1, a2, v31);
    v40 = v32;
    if ((*(v83 + 48))(v31, 1, v32) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v41 = *(v83 + 32);
    v65 = v34;
    v66 = v41;
    v67 = v83 + 32;
    v41(v34, v31, v32);
    v42 = v82;
    (*(v22 + 16))(v80, v82, v36);
    v43 = v75;
    (*(a2 + 64))(v36, a2);
    v44 = v77;
    (*(a2 + 184))(v43, v36, a2);
    v45 = v79;
    v64[0] = *(v79 + 8);
    v64[1] = v79 + 8;
    (v64[0])(v43, v7);
    v46 = v78;
    (*(a2 + 72))(v36, a2);
    v48 = *(v22 + 8);
    v47 = (v22 + 8);
    v75 = v48;
    (v48)(v42, v36);
    if (((*(AssociatedConformanceWitness + 24))(v44, v46, v7) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v49 = *(v45 + 32);
    v50 = v69;
    v49(v69, v44, v7);
    v51 = v74;
    v49(&v50[*(v74 + 48)], v46, v7);
    v78 = v47;
    v79 = v40;
    v53 = v72;
    v52 = v73;
    v54 = *(v72 + 16);
    v77 = v36;
    v54(v73, v50, v51);
    v55 = *(v51 + 48);
    v56 = v70;
    v49(v70, v52, v7);
    AssociatedConformanceWitness = a2;
    v57 = v64[0];
    (v64[0])(&v52[v55], v7);
    (*(v53 + 32))(v52, v50, v51);
    v58 = *(v51 + 48);
    v59 = v68;
    v49(&v56[*(v68 + 36)], &v52[v58], v7);
    v57(v52, v7);
    v60 = v77;
    v61 = v80;
    (*(AssociatedConformanceWitness + 88))(v56, v77);
    (*(v71 + 8))(v56, v59);
    (v75)(v61, v60);
    v62 = v81;
    v63 = v79;
    v66(v81, v65, v79);
    return (*(v83 + 56))(v62, 0, 1, v63);
  }
}

__objc2_class **Collection.map<A>(_:)(void (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v50 = a1;
  v51 = a2;
  swift_getAssociatedTypeWitness(0, *(a5 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v45 = v8;
  v49 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v20 = *(a5 + 112);
  v54 = a5;
  v21 = v20(a3, a5);
  if (v21)
  {
    v24 = v21;
    v56 = &_swiftEmptyArrayStorage;
    v47 = type metadata accessor for ContiguousArray(0, a4, v22, v23);
    ContiguousArray.reserveCapacity(_:)(v24);
    v25 = *(v54 + 64);
    v52 = v19;
    v25(a3);
    if (v24 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v41 = v15;
    v42 = v14;
    v26 = (v49 + 16);
    v27 = (v49 + 8);
    v48 = *(v54 + 80);
    v49 = v54 + 80;
    v46 = v54 + 192;
    v28 = v44;
    v29 = v45;
    do
    {
      v30 = v48(v55, v52, a3, v54);
      (*v26)(v28);
      v30(v55, 0);
      v31 = v53;
      v50(v28);
      if (v31)
      {
        (*v27)(v28, v29);
        (*(v41 + 8))(v52, v42);
        return v56;
      }

      v53 = 0;
      (*v27)(v28, v29);
      ContiguousArray.append(_:)(v12, v47);
      (*(v54 + 192))(v52, a3);
      --v24;
    }

    while (v24);
    v32 = v54;
    v33 = v43;
    (*(v54 + 72))(a3, v54);
    v34 = a3;
    v35 = v42;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, v34, v42, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v37 = v52;
    v38 = (*(*(AssociatedConformanceWitness + 8) + 8))(v52, v33, v35);
    v39 = *(v41 + 8);
    v39(v33, v35);
    if ((v38 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v39(v37, v35);
    return v56;
  }

  else
  {
    _swift_isClassOrObjCExistentialType(a4, a4);
    return &_swiftEmptyArrayStorage;
  }
}

Swift::String::Index specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = v6 << 16;
  v8 = (a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0;
  if (v8)
  {
    v9._rawBits = v7 | 7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v9._rawBits = v7 | 0xB;
  }

  v10 = (a2 & 0x800000000000000uLL) >> 59;
LABEL_13:
  v35 = v8;
  if ((v9._rawBits & 0xC) == 4 << v10)
  {
    v9._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
  }

  result._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(15)._rawBits;
  v12 = v9._rawBits >> 14;
  if (v5)
  {
    v13 = v6 << 16;
    v14 = v35;
    while (v12 > result._rawBits >> 14)
    {
      v15 = result._rawBits >> 16;
      if (result._rawBits >> 16 >= v6)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v20 = v13;
        result._rawBits = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
        v14 = v35;
        v13 = v20;
        if (!--v5)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v36[0] = a2;
          v36[1] = a3 & 0xFFFFFFFFFFFFFFLL;
          v17 = *(v36 + v15);
        }

        else
        {
          v16 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a2 & 0x1000000000000000) == 0)
          {
            v34 = v13;
            v16 = _StringObject.sharedUTF8.getter(a2, a3);
            v13 = v34;
            v14 = v35;
          }

          v17 = v16[v15];
        }

        v18 = v17;
        v19 = __clz(v17 ^ 0xFF) - 24;
        if (v18 >= 0)
        {
          LOBYTE(v19) = 1;
        }

        result._rawBits = ((v15 + v19) << 16) | 5;
        if (!--v5)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_33:
    if (v14)
    {
      result._rawBits = v13 | 7;
    }

    else
    {
      result._rawBits = v13 | 0xB;
    }

    goto LABEL_36;
  }

  v13 = v6 << 16;
  v14 = v35;
LABEL_32:
  if (v12 < result._rawBits >> 14)
  {
    goto LABEL_33;
  }

LABEL_36:
  v21 = 11;
  if (v14)
  {
    v21 = 7;
  }

  v22 = 4 * v6;
  v23 = result._rawBits >> 14;
  if (4 * v6 < result._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = 4 << v14;
  v25 = v13 | v21;
  v26 = result._rawBits & 0xC;
  v27 = v21 & 0xC;
  if (v27 != 4 << v14 && v26 != v24 && (result._rawBits & 1) != 0)
  {
    return result;
  }

  if (v27 == v24)
  {
    rawBits = result._rawBits;
    v25 = _StringGuts._slowEnsureMatchingEncoding(_:)(v25)._rawBits;
    result._rawBits = rawBits;
    if (v26 != v24)
    {
      goto LABEL_44;
    }
  }

  else if (v26 != v24)
  {
    goto LABEL_44;
  }

  v29 = v25;
  result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
  v25 = v29;
  v23 = result._rawBits >> 14;
LABEL_44:
  if (v22 < v25 >> 14 || v25 >> 14 < v23)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result._rawBits)
  {
    if (v25)
    {
      return result;
    }

LABEL_56:
    v33 = result._rawBits;
    _StringGuts.scalarAlignSlow(_:)(v25);
    return v33;
  }

  v30 = result._rawBits;
  v31 = v25;
  v32._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
  v25 = v31;
  result._rawBits = v30 & 0xC | v32._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  if ((v31 & 1) == 0)
  {
    goto LABEL_56;
  }

  return result;
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(a2, a1, a3);
  if (v6)
  {
    result = a3;
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

uint64_t Collection.dropFirst(_:)@<X0>(unint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v67 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v61 - v15;
  v78 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v68 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v16);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v61 - v17;
  v20 = type metadata accessor for Optional(0, v9, v18, v19);
  v71 = *(v20 - 8);
  v72 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v77 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  v26 = *(v9 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v73 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v61 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v61 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v61 - v35;
  v74 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = v14;
  v63 = v11;
  v36 = v78;
  (*(a3 + 64))(v78, a3);
  v76 = *(a3 + 72);
  (v76)(v36, a3);
  (*(a3 + 144))(v34, v74, v31, v36, a3);
  v37 = v25;
  v38 = *(v26 + 8);
  v38(v31, v9);
  v74 = v38;
  v38(v34, v9);
  v40 = v71;
  v39 = v72;
  v41 = v77;
  (*(v71 + 32))(v77, v37, v72);
  v42 = (*(v26 + 48))(v41, 1, v9);
  v61 = v26;
  v43 = v70;
  if (v42 == 1)
  {
    v44 = v78;
    (v76)(v78, a3);
    (*(v40 + 8))(v77, v39);
    v45 = v4;
  }

  else
  {
    (*(v26 + 32))(v70, v77, v9);
    v45 = v4;
    v44 = v78;
  }

  v46 = v73;
  (v76)(v44, a3);
  if (((*(AssociatedConformanceWitness + 24))(v43, v46, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v76 = a3;
  v77 = v45;
  v47 = *(v61 + 32);
  v48 = v64;
  v47(v64, v43, v9);
  v49 = v63;
  v47(&v48[*(v63 + 48)], v46, v9);
  v50 = v67;
  v51 = v62;
  (*(v67 + 16))(v62, v48, v49);
  v52 = *(v49 + 48);
  v53 = v65;
  v47(v65, v51, v9);
  v54 = &v51[v52];
  v55 = v74;
  v74(v54, v9);
  (*(v50 + 32))(v51, v48, v49);
  v56 = *(v49 + 48);
  v57 = v68;
  v47(&v53[*(v68 + 36)], &v51[v56], v9);
  v55(v51, v9);
  v58 = v77;
  v59 = v78;
  (*(v76 + 88))(v53, v78);
  (*(*(v59 - 1) + 8))(v58, v59);
  return (*(v66 + 8))(v53, v57);
}

uint64_t Collection.dropLast(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v66 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v15);
  v75 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v66 - v17;
  v20 = type metadata accessor for Optional(0, v9, v18, v19);
  v81 = *(v20 - 8);
  v82 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  v85 = *(v9 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v83 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v66 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v66 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v80 = &v66 - v34;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35 = (*(a3 + 112))(a2, a3);
  if (__OFSUB__(v35, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v69 = v16;
  v70 = v13;
  v36 = (v35 - a1) & ~((v35 - a1) >> 63);
  v71 = *(a3 + 64);
  v72 = a3 + 64;
  v71(a2, a3);
  v37 = a2;
  v66 = *(a3 + 72);
  v66(a2, a3);
  v38 = *(a3 + 144);
  v86 = v4;
  v38(v33, v36, v30, a2, a3);
  v39 = v85;
  v40 = v85 + 8;
  v41 = *(v85 + 1);
  v41(v30, v9);
  v67 = v41;
  v68 = v40;
  v41(v33, v9);
  v43 = v81;
  v42 = v82;
  v44 = v79;
  v45 = v25;
  v46 = v39;
  (*(v81 + 32))(v79, v45, v82);
  if ((v39[6])(v44, 1, v9) == 1)
  {
    v47 = v44;
    v48 = v80;
    v66(a2, a3);
    v49 = v42;
    v50 = v48;
    (*(v43 + 8))(v47, v49);
  }

  else
  {
    v50 = v80;
    v39[4](v80, v44, v9);
  }

  v51 = v83;
  v71(v37, a3);
  if (((*(AssociatedConformanceWitness + 24))(v51, v50, v9) & 1) == 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v52 = v37;
  v53 = v46[4];
  v54 = v73;
  v85 = v52;
  v53(v73, v51, v9);
  v55 = v77;
  v53(&v54[*(v77 + 48)], v50, v9);
  v56 = v76;
  v57 = v70;
  (*(v76 + 16))(v70, v54, v55);
  v58 = *(v55 + 48);
  v59 = v74;
  v53(v74, v57, v9);
  AssociatedConformanceWitness = a3;
  v60 = v67;
  v67(&v57[v58], v9);
  (*(v56 + 32))(v57, v54, v55);
  v61 = *(v55 + 48);
  v62 = v69;
  v53(&v59[*(v69 + 36)], &v57[v61], v9);
  v60(v57, v9);
  v63 = v85;
  v64 = v86;
  (*(AssociatedConformanceWitness + 88))(v59, v85);
  (*(*(v63 - 1) + 8))(v64, v63);
  return (*(v75 + 8))(v59, v62);
}

uint64_t Collection.drop(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v7 = a4;
  v79 = a1;
  v80 = a2;
  v68 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v67 = v11;
  v66 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v61 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v64 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v16);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v73 = &v61 - v17;
  swift_getAssociatedTypeWitness(0, v7[1], a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v78 = v18;
  v89 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - v20;
  v22 = *(v10 - 8);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v70 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v69 = &v61 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v84 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v61 - v29;
  (v7[8])(a3, v7);
  v86 = v7[9];
  v72 = AssociatedConformanceWitness;
  v31 = *(AssociatedConformanceWitness + 8);
  v32 = v30;
  v83 = v31;
  v81 = *(v31 + 8);
  v82 = v31 + 8;
  v71 = v22;
  v87 = (v7 + 9);
  v88 = (v22 + 8);
  v75 = (v89 + 16);
  v76 = v7 + 10;
  v77 = (v89 + 8);
  v74 = v7 + 24;
  for (i = v10; ; v10 = i)
  {
    v33 = v84;
    (v86)(a3, v7);
    v34 = v81(v32, v33, v10, v83);
    v89 = *v88;
    (v89)(v33, v10);
    if (v34)
    {
      break;
    }

    v35 = v7[10];
    v36 = v7;
    v37 = v6;
    v38 = a3;
    v39 = v36;
    v40 = (v35)(v90, v32, a3);
    v41 = v78;
    (*v75)(v21);
    v40(v90, 0);
    v42 = v91;
    v43 = v79(v21);
    if (v42)
    {
      (*(*(a3 - 1) + 8))(v37, a3);
      (*v77)(v21, v41);
      return (v89)(v32, i);
    }

    v44 = v43;
    (*v77)(v21, v41);
    if ((v44 & 1) == 0)
    {
      goto LABEL_8;
    }

    v91 = 0;
    v45 = v37;
    v7 = v39;
    v6 = v45;
    (v39[24])(v32, a3, v39);
  }

  v39 = v7;
  v37 = v6;
  v38 = a3;
LABEL_8:
  v47 = v71;
  v48 = v69;
  v49 = i;
  (*(v71 + 16))(v69, v32, i);
  v50 = v37;
  v51 = v70;
  v91 = v50;
  v84 = v39;
  (v86)(v38, v39);
  if (((*(v72 + 24))(v48, v51, v49) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (v89)(v32, v49);
  v52 = *(v47 + 32);
  v87 = v38;
  v53 = v62;
  v52(v62, v48, v49);
  v54 = v67;
  v52(&v53[*(v67 + 48)], v51, v49);
  v55 = v66;
  v56 = v65;
  (*(v66 + 16))(v65, v53, v54);
  v86 = *(v54 + 48);
  v52(v73, v56, v49);
  (v89)(v86 + v56, v49);
  (*(v55 + 32))(v56, v53, v54);
  v57 = v64;
  v58 = v73;
  v52(&v73[*(v64 + 36)], &v56[*(v54 + 48)], v49);
  (v89)(v56, v49);
  v59 = v91;
  v60 = v87;
  (*(v84 + 11))(v58, v87);
  (*(*(v60 - 1) + 8))(v59, v60);
  return (*(v63 + 8))(v58, v57);
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(0, a1, a3);
  if (v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = v4;
  }

  if (v6 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 > a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t Collection.prefix(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v75 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v65 - v14;
  v83 = a3;
  v84 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v15);
  v74 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v65 - v17;
  v20 = type metadata accessor for Optional(0, v8, v18, v19);
  v78 = *(v20 - 8);
  v79 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v82 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v65 - v24;
  v26 = *(v8 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v80 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v65 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v65 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v77 = &v65 - v35;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = v16;
  v68 = v13;
  v69 = v10;
  v37 = v83;
  v36 = v84;
  v70 = v83[8];
  v71 = v83 + 8;
  (v70)(v84, v83);
  v65 = v37[9];
  (v65)(v36, v37);
  (v37[18])(v34, a1, v31, v36, v37);
  v38 = *(v26 + 8);
  v38(v31, v8);
  v66 = v38;
  v38(v34, v8);
  v40 = v78;
  v39 = v79;
  v41 = v82;
  (*(v78 + 32))(v82, v25, v79);
  v42 = v26;
  if ((*(v26 + 48))(v41, 1, v8) == 1)
  {
    v43 = v77;
    v44 = v84;
    v45 = v83;
    (v65)(v84, v83);
    v46 = v39;
    v47 = v43;
    (*(v40 + 8))(v82, v46);
    v48 = v44;
    v49 = v45;
  }

  else
  {
    v47 = v77;
    (*(v26 + 32))(v77, v82, v8);
    v48 = v84;
    v49 = v83;
  }

  v50 = v80;
  (v70)(v48, v49);
  if (((*(AssociatedConformanceWitness + 24))(v50, v47, v8) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v51 = *(v42 + 32);
  v52 = v72;
  v51(v72, v50, v8);
  v53 = v69;
  v51(&v52[*(v69 + 48)], v47, v8);
  v54 = v75;
  v55 = v68;
  (*(v75 + 16))(v68, v52, v53);
  v56 = *(v53 + 48);
  v57 = v73;
  v51(v73, v55, v8);
  v58 = &v55[v56];
  v59 = v66;
  v66(v58, v8);
  (*(v54 + 32))(v55, v52, v53);
  v60 = *(v53 + 48);
  v61 = v67;
  v51(&v57[*(v67 + 36)], &v55[v60], v8);
  v59(v55, v8);
  v62 = v84;
  v63 = v85;
  (v83[11])(v57, v84);
  (*(*(v62 - 1) + 8))(v63, v62);
  return (*(v74 + 8))(v57, v61);
}

uint64_t Collection.prefix(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v7 = a4;
  v8 = a3;
  v88 = a1;
  v89 = a2;
  v75 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v74 = v11;
  v73 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v68 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v71 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v16);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v68 - v17;
  swift_getAssociatedTypeWitness(0, v7[1], v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v87 = v18;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v68 - v21;
  v22 = *(v10 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v78 = &v68 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v95 = &v68 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v68 - v29;
  v31 = v7[8];
  v77 = v7 + 8;
  v76 = v31;
  (v31)(v8, v7);
  v32 = v7[9];
  v80 = v22;
  v81 = AssociatedConformanceWitness;
  v33 = *(AssociatedConformanceWitness + 8);
  v34 = v30;
  v92 = v33;
  v93 = v32;
  v90 = *(v33 + 8);
  v91 = v33 + 8;
  v96 = (v22 + 8);
  v83 = (v19 + 16);
  v84 = v7 + 10;
  v85 = (v19 + 8);
  v94 = v7 + 9;
  v82 = v7 + 24;
  while (1)
  {
    v35 = v95;
    v93(v8, v7);
    v36 = v90(v34, v35, v10, v92);
    v37 = *v96;
    v38 = v10;
    (*v96)(v35, v10);
    if (v36)
    {
      break;
    }

    v39 = v7[10];
    v40 = v34;
    v41 = v7;
    v42 = v6;
    v43 = v8;
    v44 = v41;
    v45 = (v39)(v97, v34, v8);
    v46 = v86;
    v47 = v87;
    (*v83)(v86);
    v45(v97, 0);
    v48 = v98;
    v49 = v88(v46);
    v98 = v48;
    if (v48)
    {
      (*(*(v43 - 1) + 8))(v42, v43);
      (*v85)(v46, v47);
      return v37(v40, v38);
    }

    v50 = v49;
    (*v85)(v46, v47);
    if ((v50 & 1) == 0)
    {
      goto LABEL_7;
    }

    v34 = v40;
    v51 = v42;
    v7 = v44;
    v8 = v43;
    v6 = v51;
    (v44[24])(v40, v8, v44);
    v10 = v38;
  }

  v40 = v34;
  v44 = v7;
  v42 = v6;
  v43 = v8;
LABEL_7:
  v52 = v78;
  v95 = v42;
  v53 = v43;
  (v76)(v43, v44);
  v54 = v80;
  v55 = v79;
  (*(v80 + 16))(v79, v40, v38);
  if (((*(v81 + 24))(v52, v55, v38) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37(v40, v38);
  v56 = *(v54 + 32);
  v94 = v44;
  v57 = v69;
  v56(v69, v52, v38);
  v58 = v74;
  v56(&v57[*(v74 + 48)], v55, v38);
  v59 = v73;
  v60 = *(v73 + 16);
  v93 = v53;
  v61 = v72;
  v60(v72, v57, v58);
  v92 = *(v58 + 48);
  v62 = v68;
  v56(v68, v61, v38);
  v37(&v61[v92], v38);
  (*(v59 + 32))(v61, v57, v58);
  v63 = *(v58 + 48);
  v64 = v71;
  v56(&v62[*(v71 + 36)], &v61[v63], v38);
  v37(v61, v38);
  v65 = v95;
  v66 = v93;
  (v94[11])(v62, v93);
  (*(*(v66 - 1) + 8))(v65, v66);
  return (*(v70 + 8))(v62, v64);
}

uint64_t Collection.suffix(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v68 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = v61 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v69 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v16);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v61 - v17;
  v20 = type metadata accessor for Optional(0, v9, v18, v19);
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v61 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v74 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v61 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v61 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v71 = v61 - v35;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v77 = v34;
  v64 = v33;
  v36 = (*(a3 + 112))(a2, a3);
  if (__OFSUB__(v36, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v62 = v14;
  v63 = v11;
  v37 = (v36 - a1) & ~((v36 - a1) >> 63);
  (*(a3 + 64))(a2, a3);
  v38 = *(a3 + 72);
  v38(a2, a3);
  (*(a3 + 144))(v32, v37, v29, a2, a3);
  v78 = v4;
  v39 = v77;
  v76 = a2;
  v41 = v77 + 8;
  v40 = *(v77 + 8);
  v40(v29, v9);
  v61[0] = v40;
  v61[1] = v41;
  v40(v32, v9);
  v43 = v72;
  v42 = v73;
  v44 = v64;
  (*(v72 + 32))(v64, v24, v73);
  if ((*(v39 + 48))(v44, 1, v9) == 1)
  {
    v45 = v71;
    v46 = v76;
    v38(v76, a3);
    (*(v43 + 8))(v44, v42);
    v47 = v74;
  }

  else
  {
    v45 = v71;
    (*(v39 + 32))(v71, v44, v9);
    v47 = v74;
    v46 = v76;
  }

  v38(v46, a3);
  if (((*(AssociatedConformanceWitness + 24))(v45, v47, v9) & 1) == 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = a3;
  v48 = *(v77 + 32);
  v49 = v65;
  v48(v65, v45, v9);
  v50 = v63;
  v48(&v49[*(v63 + 48)], v47, v9);
  v51 = v68;
  v52 = v62;
  (*(v68 + 16))(v62, v49, v50);
  v53 = *(v50 + 48);
  v54 = v66;
  v48(v66, v52, v9);
  v55 = v61[0];
  (v61[0])(&v52[v53], v9);
  (*(v51 + 32))(v52, v49, v50);
  v56 = *(v50 + 48);
  v57 = v69;
  v48(&v54[*(v69 + 36)], &v52[v56], v9);
  v55(v52, v9);
  v58 = v76;
  v59 = v78;
  (*(AssociatedConformanceWitness + 88))(v54, v76);
  (*(*(v58 - 1) + 8))(v59, v58);
  return (*(v67 + 8))(v54, v57);
}

uint64_t specialized Collection.prefix(upTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < a1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t Collection.prefix(upTo:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v45 = &v38 - v16;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v23 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v22);
  v44 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v42 = a2;
  v43 = &v38 - v24;
  v25 = *(a3 + 64);
  v46 = v4;
  v41 = a3;
  v25(a2, a3);
  if (((*(AssociatedConformanceWitness + 24))(v19, v20, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = v17;
  v40 = v23;
  v27 = *(v17 + 32);
  v28 = v45;
  v27(v45, v19, v9);
  v39 = v27;
  v29 = v47;
  (*(v26 + 16))(&v28[*(v47 + 48)], v20, v9);
  v30 = v48;
  (*(v48 + 16))(v14, v28, v29);
  v31 = *(v29 + 48);
  v32 = v43;
  v27(v43, v14, v9);
  v33 = *(v26 + 8);
  v33(&v14[v31], v9);
  (*(v30 + 32))(v14, v28, v29);
  v34 = v40;
  v39(&v32[*(v40 + 36)], &v14[*(v29 + 48)], v9);
  v33(v14, v9);
  v35 = v42;
  v36 = v46;
  (*(v41 + 88))(v32, v42);
  (*(*(v35 - 1) + 8))(v36, v35);
  return (*(v44 + 8))(v32, v34);
}

uint64_t Collection.suffix(from:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v44 = v10;
  v47 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - v17;
  v19 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v21);
  v42 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v41 = &v37 - v23;
  v24 = *(a3 + 72);
  v45 = v4;
  v43 = a2;
  v24(a2, a3);
  if (((*(AssociatedConformanceWitness + 24))(v19, v18, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = v15;
  (*(v16 + 16))(v15, v19, v9);
  v26 = v44;
  v27 = *(v16 + 32);
  v27(&v25[*(v44 + 48)], v18, v9);
  v28 = v47;
  v29 = *(v47 + 16);
  v40 = v22;
  v30 = v46;
  v29(v46, v25, v26);
  v38 = *(v26 + 48);
  v31 = v41;
  v27(v41, v30, v9);
  v39 = a3;
  v32 = *(v16 + 8);
  v32(&v30[v38], v9);
  (*(v28 + 32))(v30, v25, v26);
  v33 = v40;
  v27(&v31[*(v40 + 36)], &v30[*(v26 + 48)], v9);
  v32(v30, v9);
  v34 = v45;
  v35 = v43;
  (*(v39 + 88))(v31, v43);
  (*(*(v35 - 1) + 8))(v34, v35);
  return (*(v42 + 8))(v31, v33);
}

uint64_t Collection.prefix(through:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - v13;
  v15 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  (*(a3 + 184))(a1, a2, a3);
  (*(v15 + 8))(v4, a2);
  Collection.prefix(upTo:)(v14, a2, a3, a4);
  return (*(v11 + 8))(v14, v10);
}

uint64_t static SignedInteger<>.max.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 72))(v5);
  (*(*(a2 + 8) + 184))(v7, a1);
  return (*(v4 + 8))(v7, a1);
}

void Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, int a2, uint64_t (*a3)(char *), uint64_t a4, const char *a5, uint64_t a6)
{
  v135 = a4;
  v134 = a3;
  v153 = a2;
  swift_getAssociatedTypeWitness(0, *(a6 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v155 = v9;
  v152 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  swift_getAssociatedTypeWitness(0, a6, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v154 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v119 - v13;
  swift_getAssociatedTypeWitness(255, a6, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  swift_getTupleTypeMetadata2(0, v15, v15, "lower upper ", 0);
  v139 = v16;
  v132 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v140 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v137 = &v119 - v19;
  v161 = a6;
  v20 = a6;
  v21 = a1;
  v163 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v20, a5, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v141 = type metadata accessor for Range(0, v15, AssociatedConformanceWitness, v23);
  v133 = *(v141 - 8);
  v24 = MEMORY[0x1EEE9AC00](v141);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v130 = &v119 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v145 = *(v15 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v129 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v131 = &v119 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v156 = &v119 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v160 = &v119 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v119 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v119 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v119 - v45;
  if (v21 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v159 = v44;
  _swift_isClassOrObjCExistentialType(v154, v154);
  v165 = &_swiftEmptyArrayStorage;
  (*(v161 + 64))(v163);
  if (!v21 || ((*(v161 + 104))(v163) & 1) != 0)
  {
    (*(v161 + 72))(v163);
    if ((*(*(AssociatedConformanceWitness + 8) + 8))(v46, v43, v15) & 1) != 0 && (v153)
    {
      (*(*(v163 - 1) + 8))(v162);
      v47 = *(v145 + 8);
      v47(v43, v15);
      v47(v46, v15);
      return;
    }

    v48 = v145;
    (*(v145 + 16))(v40, v46, v15);
    if ((*(AssociatedConformanceWitness + 24))(v40, v43, v15, AssociatedConformanceWitness))
    {
      v160 = *(v48 + 8);
      (v160)(v46, v15);
      v49 = *(v48 + 32);
      v50 = v137;
      v49(v137, v40, v15);
      v51 = v139;
      v49(&v50[*(v139 + 48)], v43, v15);
      v52 = v132;
      v53 = v140;
      (*(v132 + 16))(v140, v50, v51);
      v158 = *(v51 + 48);
      v54 = v159;
      v49(v159, v53, v15);
      (v160)(&v158[v53], v15);
      (*(v52 + 32))(v53, v50, v51);
      v55 = v141;
      v49(&v54[*(v141 + 36)], &v53[*(v51 + 48)], v15);
      (v160)(v53, v15);
      v56 = v162;
      v57 = v138;
      v58 = v163;
      (*(v161 + 88))(v54, v163);
      (*(*(v58 - 1) + 8))(v56, v58);
      (*(v133 + 8))(v54, v55);
      v61 = type metadata accessor for Array(0, v154, v59, v60);
      v62 = v57;
LABEL_27:
      Array.append(_:)(v62, v61);
      return;
    }

    goto LABEL_29;
  }

  v120 = v26;
  v63 = v145;
  v64 = *(v145 + 16);
  v65 = v160;
  v143 = v145 + 16;
  v142 = v64;
  v64(v160, v46, v15);
  v66 = v156;
  (*(v161 + 72))(v163);
  v67 = *(AssociatedConformanceWitness + 8);
  v68 = *(v67 + 1);
  v158 = v67 + 8;
  v159 = v67;
  v157 = v68;
  v69 = (v68)(v65, v66, v15);
  v127 = AssociatedConformanceWitness;
  if (v69)
  {
    v70 = v144;
    v71 = v160;
LABEL_11:
    v72 = v156;
    if (v157(v46, v156, v15, v159) & 1) != 0 && (v153)
    {
      (*(*(v163 - 1) + 8))(v162);
      v73 = v71;
      v74 = *(v145 + 8);
      v74(v72, v15);
      v74(v73, v15);
      v74(v46, v15);
      return;
    }

    v144 = v70;
    v103 = v129;
    v142(v129, v46, v15);
    if ((*(v127 + 24))(v103, v72, v15))
    {
      v104 = v145;
      v105 = *(v145 + 8);
      v159 = v105;
      (v105)(v160, v15);
      (v105)(v46, v15);
      v106 = *(v104 + 32);
      v107 = v137;
      v106(v137, v103, v15);
      v108 = v139;
      v106(&v107[*(v139 + 48)], v72, v15);
      v109 = v132;
      v110 = v140;
      (*(v132 + 16))(v140, v107, v108);
      v160 = *(v108 + 48);
      v111 = v120;
      v106(v120, v110, v15);
      (v159)(&v160[v110], v15);
      (*(v109 + 32))(v110, v107, v108);
      v112 = v141;
      v106(&v111[*(v141 + 36)], &v110[*(v108 + 48)], v15);
      (v159)(v110, v15);
      v113 = v162;
      v114 = v138;
      v115 = v163;
      (*(v161 + 88))(v111, v163);
      (*(*(v115 - 1) + 8))(v113, v115);
      (*(v133 + 8))(v111, v112);
      v61 = type metadata accessor for Array(0, v154, v116, v117);
      v62 = v114;
      goto LABEL_27;
    }

LABEL_29:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v125 = v21;
  v75 = *(v161 + 80);
  v150 = (v152 + 16);
  v151 = v75;
  v149 = (v152 + 8);
  v147 = v161 + 192;
  v126 = AssociatedConformanceWitness + 24;
  v148 = (v63 + 8);
  v136 = (v63 + 32);
  v124 = (v132 + 16);
  v123 = (v132 + 32);
  v152 = v161 + 80;
  v122 = v161 + 88;
  v121 = (v133 + 8);
  v70 = v144;
  v76 = v134;
  v71 = v160;
  v146 = v11;
  while (1)
  {
    v78 = v46;
    v79 = v151(v164, v71, v163, v161);
    v80 = v155;
    (*v150)(v11);
    v79(v164, 0);
    v81 = v76(v11);
    if (v70)
    {
      break;
    }

    v82 = v81;
    (*v149)(v11, v80);
    if (v82)
    {
      v46 = v78;
      v71 = v160;
      if (v157(v78, v160, v15, v159) & 1) != 0 && (v153)
      {
        (*v148)(v78, v15);
        (*(v161 + 192))(v71, v163);
        v142(v78, v71, v15);
      }

      else
      {
        v83 = v131;
        v84 = v142;
        v142(v131, v78, v15);
        if (((*(v127 + 24))(v83, v71, v15) & 1) == 0)
        {
          goto LABEL_29;
        }

        v144 = *v148;
        v144(v78, v15);
        v85 = *v136;
        v86 = v137;
        (*v136)(v137, v83, v15);
        v87 = v85;
        v128 = v85;
        v88 = v139;
        v84(&v86[*(v139 + 48)], v160, v15);
        v89 = v140;
        (*v124)(v140, v86, v88);
        v90 = *(v88 + 48);
        v91 = v130;
        v87(v130, v89, v15);
        v92 = &v89[v90];
        v70 = 0;
        v93 = v161;
        v144(v92, v15);
        (*v123)(v89, v86, v88);
        v94 = *(v88 + 48);
        v95 = v141;
        v128(&v91[*(v141 + 36)], &v89[v94], v15);
        v144(v89, v15);
        v96 = v138;
        (*(v93 + 88))(v91, v163, v93);
        v97 = v95;
        v71 = v160;
        (*v121)(v91, v97);
        v100 = type metadata accessor for Array(0, v154, v98, v99);
        Array.append(_:)(v96, v100);
        v101 = *(v93 + 192);
        v102 = v93;
        v76 = v134;
        v101(v71, v163, v102);
        v142(v78, v71, v15);
        v46 = v78;
        if (Array._getCount()() == v125)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v71 = v160;
      (*(v161 + 192))(v160, v163);
      v46 = v78;
    }

    v77 = v157(v71, v156, v15, v159);
    v11 = v146;
    if (v77)
    {
      goto LABEL_11;
    }
  }

  (*(*(v163 - 1) + 8))(v162);
  (*v149)(v11, v80);
  v118 = *v148;
  (*v148)(v156, v15);
  v118(v160, v15);
  v118(v78, v15);
  v165;
}

uint64_t Collection<>.removeFirst()@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X8>)
{
  v66 = a3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v58 = v8;
  v64 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v54 - v12;
  v68 = *(v7 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v67 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v20);
  v60 = *(v21 - 8);
  v61 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v59 = &v54 - v23;
  v69 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(255, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v27 = v26;
  v30 = type metadata accessor for Optional(0, v26, v28, v29);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v54 - v31;
  v33 = *(a2 + 104);
  v70 = a1;
  v71 = v3;
  if ((v33(a1, a2) & 1) != 0 || (v56 = v7, v57 = AssociatedConformanceWitness, Collection.first.getter(v70, a2, v32), v34 = *(v27 - 8), (*(v34 + 48))(v32, 1, v27) == 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v34 + 32))(v66, v32, v27);
  v35 = v70;
  (*(v69 + 16))(v25, v71, v70);
  (*(a2 + 64))(v35, a2);
  v36 = v65;
  (*(a2 + 184))(v17, v35, a2);
  v37 = v68;
  v38 = v56;
  v66 = *(v68 + 1);
  v66(v17, v56);
  v39 = v67;
  (*(a2 + 72))(v35, a2);
  if (((*(v57 + 3))(v36, v39, v38) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = *(v69 + 8);
  v69 += 8;
  v57 = v40;
  v55 = a2;
  v40(v71, v70);
  v41 = *(v37 + 4);
  v42 = v63;
  v41(v63, v36, v38);
  v68 = v25;
  v43 = v58;
  v41(&v42[*(v58 + 48)], v39, v38);
  v44 = v64;
  v45 = v62;
  (*(v64 + 16))(v62, v42, v43);
  v46 = *(v43 + 48);
  v47 = v59;
  v41(v59, v45, v38);
  v48 = &v45[v46];
  v49 = v66;
  v66(v48, v38);
  (*(v44 + 32))(v45, v42, v43);
  v50 = v61;
  v41(&v47[*(v61 + 36)], &v45[*(v43 + 48)], v38);
  v49(v45, v38);
  v51 = v70;
  v52 = v68;
  (*(v55 + 88))(v47, v70);
  (*(v60 + 8))(v47, v50);
  return v57(v52, v51);
}

uint64_t Collection<>.removeFirst(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = v3;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v71 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v60 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
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
  (*(a3 + 64))(a2, a3);
  v37 = v4;
  v66 = *(a3 + 72);
  v66(a2, a3);
  (*(a3 + 144))(v32, a1, v29, a2, a3);
  v76 = a3;
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

uint64_t Collection<>.firstIndex(of:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v48 = a5;
  swift_getAssociatedTypeWitness(0, *(a3 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v47 - v11;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v47 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = v15;
  v63 = &v47 - v16;
  v19 = type metadata accessor for Optional(255, v15, v17, v18);
  v56 = type metadata accessor for Optional(0, v19, v20, v21);
  v22 = *(v56 - 8);
  v23 = MEMORY[0x1EEE9AC00](v56);
  v25 = &v47 - v24;
  v26 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v47 - v27;
  v29 = *(a3 + 120);
  v58 = a1;
  v30 = a1;
  v61 = v5;
  v31 = a2;
  v29(v30, a2, a3);
  if ((*(v26 + 48))(v25, 1, v19) == 1)
  {
    (*(v22 + 8))(v25, v56);
    (*(a3 + 64))(a2, a3);
    v55 = *(a3 + 72);
    v56 = a3 + 72;
    v54 = *(swift_getAssociatedConformanceWitness(a3, a2, v62, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v52 = *(v54 + 8);
    v53 = v54 + 8;
    v32 = (v47 + 8);
    v33 = (v49 + 16);
    v50 = v60 + 8;
    v51 = a3 + 80;
    v34 = (v49 + 8);
    v49 = a3 + 192;
    while (1)
    {
      v35 = v59;
      v55(v31, a3);
      v36 = v62;
      v37 = v52(v63, v35, v62, v54);
      v38 = *v32;
      (*v32)(v35, v36);
      if (v37)
      {
        v43 = v62;
        v38(v63, v62);
        return (*(v47 + 56))(v48, 1, 1, v43);
      }

      v39 = (*(a3 + 80))(v64, v63, v31, a3);
      v40 = v57;
      (*v33)(v57);
      (v39)(v64, 0);
      LOBYTE(v39) = (*(v60 + 8))(v40, v58, v10);
      (*v34)(v40, v10);
      if (v39)
      {
        break;
      }

      (*(a3 + 192))(v63, v31, a3);
    }

    v45 = v47;
    v44 = v48;
    v46 = v62;
    (*(v47 + 32))(v48, v63, v62);
    return (*(v45 + 56))(v44, 0, 1, v46);
  }

  else
  {
    v41 = *(v26 + 32);
    v41(v28, v25, v19);
    return (v41)(v48, v28, v19);
  }
}