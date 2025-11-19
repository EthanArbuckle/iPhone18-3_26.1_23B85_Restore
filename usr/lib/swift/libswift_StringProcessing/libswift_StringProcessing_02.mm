uint64_t specialized closure #1 in propertyScalarPredicate(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for Unicode.Scalar.Properties();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Unicode.Scalar.properties.getter();
  LOBYTE(a2) = a2(v8);
  (*(v4 + 8))(v7, v3);
  return a2 & 1;
}

uint64_t closure #1 in propertyScalarPredicate(_:)(uint64_t a1, uint64_t (*a2)(char *))
{
  v3 = type metadata accessor for Unicode.Scalar.Properties();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  LOBYTE(a2) = a2(v7);
  (*(v4 + 8))(v7, v3);
  return a2 & 1;
}

uint64_t (*consumeScalar(_:)(uint64_t a1, uint64_t a2))(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return partial apply for closure #1 in consumeScalar(_:);
}

uint64_t specialized closure #1 in consumeScalar(_:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() <= 0x7F)
    {
      _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
      return String.UnicodeScalarView._foreignIndex(after:)();
    }

    return 0;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    if (_decodeScalar(_:startingAt:)() <= 0x7F)
    {
      v6 = _StringGuts.validateScalarIndex(_:)(a3, a1, a2) >> 16;
      if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter();
      }

      v8 = *(v7 + v6);
      goto LABEL_12;
    }

    return 0;
  }

  v12 = a1;
  v13 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (_decodeScalar(_:startingAt:)() > 0x7F)
  {
    return 0;
  }

  v6 = _StringGuts.validateScalarIndex(_:)(a3, a1, a2) >> 16;
  v12 = a1;
  v13 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = *(&v12 + v6);
LABEL_12:
  v10 = v8;
  v11 = __clz(v8 ^ 0xFF) - 24;
  if (v10 >= 0)
  {
    LOBYTE(v11) = 1;
  }

  return ((v6 + v11) << 16) | 5;
}

uint64_t (*consumeCharacterWithLeadingScalar(_:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return partial apply for closure #1 in consumeCharacterWithLeadingScalar(_:);
}

uint64_t specialized closure #1 in consumeCharacterWithSingleScalar(_:)()
{
  String.subscript.getter();
  v0 = Character.hasExactlyOneScalar.getter();

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v1 = String.subscript.getter();
  v3 = specialized Collection.first.getter(v1, v2);

  if ((v3 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((v3 & 0xFFFFFF80) != 0)
    {
      return 0;
    }

    return String.index(after:)();
  }

  return result;
}

uint64_t closure #1 in invert #1 (_:) in AST.Atom.CharacterProperty.generateConsumer(_:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  result = a5();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(a7 + 16);
  if (v13)
  {
    return String.index(after:isScalarSemantics:)(a3, (*(a7 + 4 * v13 + 28) & 0x10000) == 0, a1, a2);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t (*a2)(void *, uint64_t), void *a3)
{
  v172 = a3;
  v165 = a2;
  v140 = type metadata accessor for AST.Atom.CharacterProperty.JavaSpecial();
  v139 = *(v140 - 8);
  v4 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for AST.Atom.CharacterProperty.PCRESpecialCategory();
  v142 = *(v143 - 8);
  v6 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for Unicode.POSIXProperty();
  v145 = *(v146 - 8);
  v8 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Unicode.Block();
  v148 = *(v149 - 8);
  v10 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v153 = *(v154 - 8);
  v12 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v152 = v13;
  v151 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Unicode.NumericType();
  v158 = *(v14 - 8);
  v159 = v14;
  v15 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v16;
  v17 = type metadata accessor for Unicode.Script();
  v162 = *(v17 - 8);
  v163 = v17;
  v18 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v160 = v19;
  v161 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Unicode.BinaryProperty();
  v167 = *(v20 - 8);
  v168 = v20;
  v21 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v23 = *(v171 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v26 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v155 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v138 - v33);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v164 = &v138 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v138 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v138 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v138 - v43;
  v150 = a1;
  AST.Atom.CharacterProperty.kind.getter();
  result = (*(v28 + 88))(v44, v27);
  if (result == *MEMORY[0x1E69E8C88])
  {
    (*(v28 + 16))(v42, v44, v27);
    (*(v28 + 96))(v42, v27);
    (*(v23 + 32))(v26, v42, v171);
    v46 = v170;
    v47 = Unicode.ExtendedGeneralCategory.generateConsumer(_:)(v172);
    if (!v46)
    {
      v34 = v47;
    }

    (*(v23 + 8))(v26, v171);
    goto LABEL_23;
  }

  v48 = v172;
  v169 = v44;
  v171 = v28;
  if (result == *MEMORY[0x1E69E8CD0])
  {
    v34 = v171;
    (*(v171 + 16))(v39, v169, v27);
    (*(v34 + 12))(v39, v27);
    v49 = v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMd, &_ss7UnicodeO12_RegexParserE14BinaryPropertyO_Sb5valuetMR) + 48)];
    v50 = v166;
    v51 = v167;
    v52 = v168;
    (*(v167 + 32))(v166, v39, v168);
    v53 = v170;
    v54 = Unicode.BinaryProperty.generateConsumer(_:)(v48);
    if (v53)
    {
      (*(v51 + 8))(v50, v52);
      v28 = v171;
      v44 = v169;
    }

    else
    {
      v34 = v54;
      v72 = v55;
      (*(v51 + 8))(v50, v52);
      if ((v49 & 1) == 0)
      {
        v73 = swift_allocObject();
        v73[2] = v34;
        v73[3] = v72;
        v73[4] = v48;

        v34 = closure #1 in invert #1 (_:) in AST.Atom.CharacterProperty.generateConsumer(_:)partial apply;
      }

      v28 = v171;
      v44 = v169;
    }

    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CD8])
  {
    v28 = v171;
    v56 = v164;
    v57 = v169;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v56, v27);
    v58 = v161;
    v60 = v162 + 32;
    v59 = *(v162 + 32);
    v61 = v163;
    v59(v161, v56, v163);
    v62 = (*(v60 + 48) + 16) & ~*(v60 + 48);
    v63 = swift_allocObject();
    v59((v63 + v62), v58, v61);
    v44 = v57;
    v64 = partial apply for closure #1 in scriptScalarPredicate(_:);
LABEL_12:
    v34 = v165(v64, v63);

LABEL_23:
    (*(v28 + 8))(v44, v27);
    return v34;
  }

  v28 = v171;
  v44 = v169;
  if (result == *MEMORY[0x1E69E8C90])
  {
    v65 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v65, v27);
    v66 = v44;
    v67 = v161;
    v69 = v162 + 32;
    v68 = *(v162 + 32);
    v70 = v163;
    v68(v161, v65, v163);
    v71 = (*(v69 + 48) + 16) & ~*(v69 + 48);
    v63 = swift_allocObject();
    v68((v63 + v71), v67, v70);
    v44 = v66;
    v64 = partial apply for closure #1 in scriptExtensionScalarPredicate(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8CC0])
  {
    (*(v171 + 16))(v34, v169, v27);
    result = (*(v28 + 96))(v34, v27);
    v74 = v48[2];
    if (v74)
    {
      v76 = *v34;
      v75 = *(v34 + 1);
      if ((*(v48 + v74 + 7) & 0x10000) != 0)
      {
        v77 = consumeCharacterWithLeadingScalar(_:);
      }

      else
      {
        v77 = consumeScalar(_:);
      }

      v78 = swift_allocObject();
      *(v78 + 16) = v76;
      *(v78 + 24) = v75;
      v79 = swift_allocObject();
      *(v79 + 16) = closure #1 in consumeName(_:opts:)partial apply;
      *(v79 + 24) = v78;
      v80 = v77(closure #1 in propertyScalarPredicate(_:)partial apply, v79);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (result == *MEMORY[0x1E69E8C70])
  {
    v81 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v81, v27);
    v82 = v44;
    v83 = v159;
    v85 = v158 + 32;
    v84 = *(v158 + 32);
    v86 = v156;
    v84(v156, v81, v159);
    v87 = (*(v85 + 48) + 16) & ~*(v85 + 48);
    v63 = swift_allocObject();
    v84((v63 + v87), v86, v83);
    v44 = v82;
    v64 = partial apply for closure #5 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8C80])
  {
    v88 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v88, v27);
    v89 = *v88;
    v63 = swift_allocObject();
    *(v63 + 16) = v89;
    v64 = partial apply for closure #4 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8CE8])
  {
    v90 = v155;
    (*(v171 + 16))(v155, v169, v27);
    (*(v28 + 96))(v90, v27);
    v91 = &v90[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV17CharacterPropertyV4KindO03MapG0O_SStMd, &_s12_RegexParser3ASTV4AtomV17CharacterPropertyV4KindO03MapG0O_SStMR) + 48)];
    v93 = *v91;
    v92 = *(v91 + 1);
    v94 = type metadata accessor for AST.Atom.CharacterProperty.Kind.MapKind();
    v95 = *(v94 - 8);
    v96 = (*(v95 + 88))(v90, v94);
    if (v96 == *MEMORY[0x1E69E8C50])
    {
      v97 = swift_allocObject();
      *(v97 + 16) = v93;
      *(v97 + 24) = v92;
      v98 = partial apply for closure #7 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    }

    else if (v96 == *MEMORY[0x1E69E8C60])
    {
      v97 = swift_allocObject();
      *(v97 + 16) = v93;
      *(v97 + 24) = v92;
      v98 = partial apply for closure #8 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    }

    else
    {
      if (v96 != *MEMORY[0x1E69E8C58])
      {

        (*(v95 + 8))(v90, v94);
        goto LABEL_44;
      }

      v97 = swift_allocObject();
      *(v97 + 16) = v93;
      *(v97 + 24) = v92;
      v98 = partial apply for closure #9 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    }

    v80 = v165(v98, v97);
LABEL_22:
    v34 = v80;

    v44 = v169;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CA8])
  {
    v99 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v99, v27);
    v100 = v44;
    v102 = v153 + 32;
    v101 = *(v153 + 32);
    v103 = v151;
    v104 = v154;
    v101(v151, v99, v154);
    v105 = (*(v102 + 48) + 16) & ~*(v102 + 48);
    v63 = swift_allocObject();
    v101((v63 + v105), v103, v104);
    v44 = v100;
    v64 = partial apply for closure #6 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8C98])
  {
    v106 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v106, v27);
    v107 = *v106;
    v108 = *(v106 + 1);
    v63 = swift_allocObject();
    *(v63 + 16) = v107;
    *(v63 + 24) = v108;
    v64 = partial apply for closure #3 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
    goto LABEL_12;
  }

  if (result == *MEMORY[0x1E69E8CB8])
  {
    v109 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v109, v27);
    v110 = v148;
    v111 = v147;
    v112 = v109;
    v113 = v149;
    (*(v148 + 32))(v147, v112, v149);
    v173 = 0;
    v174 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    MEMORY[0x193ACE8E0](0xD000000000000011, 0x800000018E5F3350);
    _print_unlocked<A, B>(_:_:)();
    (*(v110 + 8))(v111, v113);
    v34 = v173;
    v114 = v174;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
    swift_allocError();
    v115 = v34;
    v116 = v114;
    v117 = 424;
LABEL_42:
    MEMORY[0x193ACDF10](v115, v116, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, v117);
    swift_willThrow();
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CC8])
  {
    v120 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v120, v27);
    v121 = v145;
    v122 = v144;
    v123 = v146;
    (*(v145 + 32))(v144, v120, v146);
    v34 = Unicode.POSIXProperty.generateConsumer(_:)(v48);
    v124 = v122;
    v44 = v169;
    (*(v121 + 8))(v124, v123);
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8C78])
  {
    v125 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v125, v27);
    v126 = v142;
    v127 = v141;
    v128 = v125;
    v129 = v143;
    (*(v142 + 32))(v141, v128, v143);
    v173 = 0;
    v174 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    MEMORY[0x193ACE8E0](0xD000000000000018, 0x800000018E5F3330);
    _print_unlocked<A, B>(_:_:)();
    (*(v126 + 8))(v127, v129);
    v34 = v173;
    v130 = v174;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
    swift_allocError();
    v115 = v34;
    v116 = v130;
    v117 = 430;
    goto LABEL_42;
  }

  if (result == *MEMORY[0x1E69E8C68])
  {
    v131 = v164;
    (*(v171 + 16))(v164, v169, v27);
    (*(v28 + 96))(v131, v27);
    v132 = v139;
    v133 = v138;
    v134 = v131;
    v135 = v140;
    (*(v139 + 32))(v138, v134, v140);
    v173 = 0;
    v174 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    MEMORY[0x193ACE8E0](0xD000000000000018, 0x800000018E5F3310);
    _print_unlocked<A, B>(_:_:)();
    (*(v132 + 8))(v133, v135);
    v34 = v173;
    v136 = v174;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
    swift_allocError();
    v115 = v34;
    v116 = v136;
    v117 = 433;
    goto LABEL_42;
  }

  if (result == *MEMORY[0x1E69E8CE0])
  {
    v34 = type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988]);
    swift_allocError();
    MEMORY[0x193ACDEF0](0xD000000000000017, 0x800000018E5F32F0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, 436);
    swift_willThrow();
    v28 = v171;
    v44 = v169;
    goto LABEL_23;
  }

  if (result == *MEMORY[0x1E69E8CA0])
  {
    v34 = closure #1 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:);
LABEL_63:
    v28 = v171;
    v44 = v169;
    goto LABEL_23;
  }

LABEL_56:
  if (result == *MEMORY[0x1E69E8CF0])
  {
    v34 = v165(closure #2 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:), 0);
    goto LABEL_63;
  }

  v28 = v171;
  if (result != *MEMORY[0x1E69E8CB0])
  {
LABEL_44:
    v173 = 0;
    v174 = 0xE000000000000000;
    MEMORY[0x193ACE8E0](0x206E776F6E6B6E55, 0xED000020646E696BLL);
    v118 = v164;
    AST.Atom.CharacterProperty.kind.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v28 + 8))(v118, v27);
    v34 = v173;
    v119 = v174;
    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988]);
    swift_allocError();
    MEMORY[0x193ACDEF0](v34, v119, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, 440);
    swift_willThrow();
    v44 = v169;
    goto LABEL_23;
  }

  v137 = v48[2];
  if (v137)
  {
    if ((*(v48 + v137 + 7) & 0x10000) != 0)
    {
      v34 = specialized closure #1 in consumeCharacterWithSingleScalar(_:);
    }

    else
    {
      v34 = specialized closure #1 in consumeScalar(_:);
    }

    goto LABEL_63;
  }

  __break(1u);
  return result;
}

BOOL closure #2 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)()
{
  v0 = type metadata accessor for Unicode.GeneralCategory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x1E69E7810], v0);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);
  return (v13 & 1) == 0;
}

uint64_t Unicode.ExtendedGeneralCategory.generateConsumer(_:)(void *a1)
{
  v3 = type metadata accessor for Unicode.GeneralCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v151 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v150 - v7;
  v9 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[2];
  if (v15)
  {
    if ((*(a1 + v15 + 7) & 0x10000) != 0)
    {
      a1 = consumeCharacterWithLeadingScalar(_:);
    }

    else
    {
      a1 = consumeScalar(_:);
    }

    (*(v10 + 16))(v14, v1, v9);
    v12 = (*(v10 + 88))(v14, v9);
    if (v12 == *MEMORY[0x1E69E91E0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
      v16 = *(v4 + 72);
      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_18E5ED090;
      v19 = v18 + v17;
      v20 = *(v4 + 104);
      v20(v19, *MEMORY[0x1E69E78E0], v3);
      v20(v19 + v16, *MEMORY[0x1E69E78D8], v3);
      v20(v19 + 2 * v16, *MEMORY[0x1E69E78E8], v3);
      v20(v19 + 3 * v16, *MEMORY[0x1E69E7808], v3);
      v20(v19 + 4 * v16, *MEMORY[0x1E69E7810], v3);
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      v22 = closure #1 in categoriesScalarPredicate(_:)partial apply;
LABEL_82:
      v148 = (a1)(v22, v21);

      return v148;
    }

    if (v12 == *MEMORY[0x1E69E9208])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E78E0], v3);
      v23 = *(v4 + 32);
      v24 = v151;
      v23(v151, v8, v3);
      v25 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v23((v21 + v25), v24, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E91E8])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E78D8], v3);
      v26 = *(v4 + 32);
      v27 = v151;
      v26(v151, v8, v3);
      v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v26((v21 + v28), v27, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E9100])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7810], v3);
      v29 = *(v4 + 32);
      v30 = v151;
      v29(v151, v8, v3);
      v31 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v29((v21 + v31), v30, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E90F8])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7808], v3);
      v32 = *(v4 + 32);
      v33 = v151;
      v32(v151, v8, v3);
      v34 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v32((v21 + v34), v33, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E9218])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E78E8], v3);
      v35 = *(v4 + 32);
      v36 = v151;
      v35(v151, v8, v3);
      v37 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v35((v21 + v37), v36, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E91F0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
      v38 = *(v4 + 72);
      v39 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_18E5ED090;
      v41 = v40 + v39;
      v42 = *(v4 + 104);
      v42(v41, *MEMORY[0x1E69E78A0], v3);
      v42(v41 + v38, *MEMORY[0x1E69E7888], v3);
      v42(v41 + 2 * v38, *MEMORY[0x1E69E7898], v3);
      v42(v41 + 3 * v38, *MEMORY[0x1E69E7860], v3);
      v42(v41 + 4 * v38, *MEMORY[0x1E69E7818], v3);
      v21 = swift_allocObject();
      *(v21 + 16) = v40;
      v22 = closure #1 in categoriesScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E9108])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
      v43 = *(v4 + 72);
      v44 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_18E5ED060;
      v46 = v45 + v44;
      v47 = *(v4 + 104);
      v47(v46, *MEMORY[0x1E69E78A0], v3);
      v47(v46 + v43, *MEMORY[0x1E69E7888], v3);
      v47(v46 + 2 * v43, *MEMORY[0x1E69E7898], v3);
      v21 = swift_allocObject();
      *(v21 + 16) = v45;
      v22 = partial apply for closure #1 in categoriesScalarPredicate(_:);
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E9188])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7888], v3);
      v48 = *(v4 + 32);
      v49 = v151;
      v48(v151, v8, v3);
      v50 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v48((v21 + v50), v49, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E9160])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7860], v3);
      v51 = *(v4 + 32);
      v52 = v151;
      v51(v151, v8, v3);
      v53 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v51((v21 + v53), v52, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }

    if (v12 == *MEMORY[0x1E69E9110])
    {
      (*(v4 + 104))(v8, *MEMORY[0x1E69E7818], v3);
      v54 = *(v4 + 32);
      v55 = v151;
      v54(v151, v8, v3);
      v56 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v54((v21 + v56), v55, v3);
      v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
      goto LABEL_82;
    }
  }

  else
  {
    __break(1u);
  }

  if (v12 == *MEMORY[0x1E69E9198])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7898], v3);
    v57 = *(v4 + 32);
    v58 = v151;
    v57(v151, v8, v3);
    v59 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v57((v21 + v59), v58, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91A0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78A0], v3);
    v60 = *(v4 + 32);
    v61 = v151;
    v60(v151, v8, v3);
    v62 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v60((v21 + v62), v61, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91D8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v63 = *(v4 + 72);
    v64 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_18E5ED060;
    v66 = v65 + v64;
    v67 = *(v4 + 104);
    v67(v66, *MEMORY[0x1E69E7870], v3);
    v67(v66 + v63, *MEMORY[0x1E69E7830], v3);
    v67(v66 + 2 * v63, *MEMORY[0x1E69E7848], v3);
    v21 = swift_allocObject();
    *(v21 + 16) = v65;
    v22 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9130])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7830], v3);
    v68 = *(v4 + 32);
    v69 = v151;
    v68(v151, v8, v3);
    v70 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v68((v21 + v70), v69, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9148])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7848], v3);
    v71 = *(v4 + 32);
    v72 = v151;
    v71(v151, v8, v3);
    v73 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v71((v21 + v73), v72, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9170])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7870], v3);
    v74 = *(v4 + 32);
    v75 = v151;
    v74(v151, v8, v3);
    v76 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v74((v21 + v76), v75, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91F8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v77 = *(v4 + 72);
    v78 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_18E5ED060;
    v80 = v79 + v78;
    v81 = *(v4 + 104);
    v81(v80, *MEMORY[0x1E69E7840], v3);
    v81(v80 + v77, *MEMORY[0x1E69E7838], v3);
    v81(v80 + 2 * v77, *MEMORY[0x1E69E7820], v3);
    v21 = swift_allocObject();
    *(v21 + 16) = v79;
    v22 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9140])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7840], v3);
    v82 = *(v4 + 32);
    v83 = v151;
    v82(v151, v8, v3);
    v84 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v82((v21 + v84), v83, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9138])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7838], v3);
    v85 = *(v4 + 32);
    v86 = v151;
    v85(v151, v8, v3);
    v87 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v85((v21 + v87), v86, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9118])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7820], v3);
    v88 = *(v4 + 32);
    v89 = v151;
    v88(v151, v8, v3);
    v90 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v88((v21 + v90), v89, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9128])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v91 = *(v4 + 72);
    v92 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_18E5ED080;
    v94 = v93 + v92;
    v95 = *(v4 + 104);
    v95(v94, *MEMORY[0x1E69E78D0], v3);
    v95(v94 + v91, *MEMORY[0x1E69E7880], v3);
    v95(v94 + 2 * v91, *MEMORY[0x1E69E7890], v3);
    v95(v94 + 3 * v91, *MEMORY[0x1E69E78A8], v3);
    v95(v94 + 4 * v91, *MEMORY[0x1E69E78C0], v3);
    v95(v94 + 5 * v91, *MEMORY[0x1E69E78B0], v3);
    v95(v94 + 6 * v91, *MEMORY[0x1E69E78B8], v3);
    v21 = swift_allocObject();
    *(v21 + 16) = v93;
    v22 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91D0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78D0], v3);
    v96 = *(v4 + 32);
    v97 = v151;
    v96(v151, v8, v3);
    v98 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v96((v21 + v98), v97, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9180])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7880], v3);
    v99 = *(v4 + 32);
    v100 = v151;
    v99(v151, v8, v3);
    v101 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v99((v21 + v101), v100, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91A8])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78A8], v3);
    v102 = *(v4 + 32);
    v103 = v151;
    v102(v151, v8, v3);
    v104 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v102((v21 + v104), v103, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91B0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78B0], v3);
    v105 = *(v4 + 32);
    v106 = v151;
    v105(v151, v8, v3);
    v107 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v105((v21 + v107), v106, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91C0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78C0], v3);
    v108 = *(v4 + 32);
    v109 = v151;
    v108(v151, v8, v3);
    v110 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v108((v21 + v110), v109, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91B8])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78B8], v3);
    v111 = *(v4 + 32);
    v112 = v151;
    v111(v151, v8, v3);
    v113 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v111((v21 + v113), v112, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9190])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7890], v3);
    v114 = *(v4 + 32);
    v115 = v151;
    v114(v151, v8, v3);
    v116 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v114((v21 + v116), v115, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9200])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v117 = *(v4 + 72);
    v118 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_18E5ED070;
    v120 = v119 + v118;
    v121 = *(v4 + 104);
    v121(v120, *MEMORY[0x1E69E7800], v3);
    v121(v120 + v117, *MEMORY[0x1E69E7858], v3);
    v121(v120 + 2 * v117, *MEMORY[0x1E69E7868], v3);
    v121(v120 + 3 * v117, *MEMORY[0x1E69E7828], v3);
    v21 = swift_allocObject();
    *(v21 + 16) = v119;
    v22 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9158])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7858], v3);
    v122 = *(v4 + 32);
    v123 = v151;
    v122(v151, v8, v3);
    v124 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v122((v21 + v124), v123, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9168])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7868], v3);
    v125 = *(v4 + 32);
    v126 = v151;
    v125(v151, v8, v3);
    v127 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v125((v21 + v127), v126, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E90F0])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7800], v3);
    v128 = *(v4 + 32);
    v129 = v151;
    v128(v151, v8, v3);
    v130 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v128((v21 + v130), v129, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9120])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7828], v3);
    v131 = *(v4 + 32);
    v132 = v151;
    v131(v151, v8, v3);
    v133 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v131((v21 + v133), v132, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9210])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO15GeneralCategoryOGMR);
    v134 = *(v4 + 72);
    v135 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_18E5ED060;
    v137 = v136 + v135;
    v138 = *(v4 + 104);
    v138(v137, *MEMORY[0x1E69E7878], v3);
    v138(v137 + v134, *MEMORY[0x1E69E7850], v3);
    v138(v137 + 2 * v134, *MEMORY[0x1E69E78C8], v3);
    v21 = swift_allocObject();
    *(v21 + 16) = v136;
    v22 = closure #1 in categoriesScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9150])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7850], v3);
    v139 = *(v4 + 32);
    v140 = v151;
    v139(v151, v8, v3);
    v141 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v139((v21 + v141), v140, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E91C8])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E78C8], v3);
    v142 = *(v4 + 32);
    v143 = v151;
    v142(v151, v8, v3);
    v144 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v142((v21 + v144), v143, v3);
    v22 = closure #1 in categoryScalarPredicate(_:)partial apply;
    goto LABEL_82;
  }

  if (v12 == *MEMORY[0x1E69E9178])
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E69E7878], v3);
    v145 = *(v4 + 32);
    v146 = v151;
    v145(v151, v8, v3);
    v147 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v145((v21 + v147), v146, v3);
    v22 = partial apply for closure #1 in categoryScalarPredicate(_:);
    goto LABEL_82;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Unicode.BinaryProperty.generateConsumer(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Unicode.BinaryProperty();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_77;
  }

  if ((*(a1 + 4 * v8 + 28) & 0x10000) != 0)
  {
    v9 = consumeCharacterWithLeadingScalar(_:);
  }

  else
  {
    v9 = consumeScalar(_:);
  }

  (*(v4 + 16))(v7, v1, v3);
  v10 = (*(v4 + 88))(v7, v3);
  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E8F58])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E8EE0])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E8F08])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E8F28])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9090])
  {
    return v9(v11, 0);
  }

  if (v10 == *MEMORY[0x1E69E9008])
  {
    goto LABEL_12;
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E8F60])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9018])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9020])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9060])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9028])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9030])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9038])
  {
    return v9(v11, 0);
  }

  v20[1] = v1;
  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9080])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E8EE8])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E9068])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E90D0])
  {
    return v9(v11, 0);
  }

  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 == *MEMORY[0x1E69E8FD0])
  {
    return v9(v11, 0);
  }

  if (v10 != *MEMORY[0x1E69E8F90])
  {
    v11 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v10 == *MEMORY[0x1E69E8F68])
    {
      return v9(v11, 0);
    }

    v11 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v10 == *MEMORY[0x1E69E9098])
    {
      return v9(v11, 0);
    }

    v11 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v10 == *MEMORY[0x1E69E8FD8])
    {
      return v9(v11, 0);
    }

    v11 = specialized closure #1 in propertyScalarPredicate(_:);
    if (v10 == *MEMORY[0x1E69E90B8])
    {
      return v9(v11, 0);
    }

    if (v10 != *MEMORY[0x1E69E9010])
    {
      v11 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v10 == *MEMORY[0x1E69E9058])
      {
        return v9(v11, 0);
      }

      v11 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v10 == *MEMORY[0x1E69E8F40])
      {
        return v9(v11, 0);
      }

      v11 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v10 == *MEMORY[0x1E69E8FB8])
      {
        return v9(v11, 0);
      }

      if (v10 != *MEMORY[0x1E69E8F48])
      {
        v11 = specialized closure #1 in propertyScalarPredicate(_:);
        if (v10 == *MEMORY[0x1E69E90C0])
        {
          return v9(v11, 0);
        }

        if (v10 != *MEMORY[0x1E69E90A0])
        {
          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E8EF0])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E8F10])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E90A8])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E8ED8])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E8FF8])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E8F18])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E9040])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E90D8])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E9088])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E9048])
          {
            return v9(v11, 0);
          }

          if (v10 == *MEMORY[0x1E69E8FA8] || v10 == *MEMORY[0x1E69E9078] || v10 == *MEMORY[0x1E69E9050] || v10 == *MEMORY[0x1E69E8FB0] || v10 == *MEMORY[0x1E69E8F50] || v10 == *MEMORY[0x1E69E8F98] || v10 == *MEMORY[0x1E69E90E0] || v10 == *MEMORY[0x1E69E8FA0])
          {
            goto LABEL_12;
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E8F80])
          {
            return v9(v11, 0);
          }

          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 == *MEMORY[0x1E69E8FE0])
          {
            return v9(v11, 0);
          }

          if (v10 != *MEMORY[0x1E69E9070])
          {
            v11 = specialized closure #1 in propertyScalarPredicate(_:);
            if (v10 != *MEMORY[0x1E69E8F88])
            {
              v11 = specialized closure #1 in propertyScalarPredicate(_:);
              if (v10 != *MEMORY[0x1E69E90B0])
              {
                v11 = closure #2 in Unicode.BinaryProperty.generateConsumer(_:);
                if (v10 != *MEMORY[0x1E69E8FE8])
                {
                  v11 = specialized closure #1 in propertyScalarPredicate(_:);
                  if (v10 != *MEMORY[0x1E69E8EF8])
                  {
                    v11 = specialized closure #1 in propertyScalarPredicate(_:);
                    if (v10 != *MEMORY[0x1E69E8FC0])
                    {
                      v11 = specialized closure #1 in propertyScalarPredicate(_:);
                      if (v10 != *MEMORY[0x1E69E9000])
                      {
                        v11 = specialized closure #1 in propertyScalarPredicate(_:);
                        if (v10 != *MEMORY[0x1E69E8FC8])
                        {
                          v11 = specialized closure #1 in propertyScalarPredicate(_:);
                          if (v10 != *MEMORY[0x1E69E90E8])
                          {
                            v11 = specialized closure #1 in propertyScalarPredicate(_:);
                            if (v10 != *MEMORY[0x1E69E8FF0])
                            {
                              v11 = specialized closure #1 in propertyScalarPredicate(_:);
                              if (v10 != *MEMORY[0x1E69E8F00])
                              {
                                v11 = specialized closure #1 in propertyScalarPredicate(_:);
                                if (v10 != *MEMORY[0x1E69E8F20])
                                {
                                  v11 = specialized closure #1 in propertyScalarPredicate(_:);
                                  if (v10 != *MEMORY[0x1E69E90C8])
                                  {
                                    if (v10 != *MEMORY[0x1E69E8F30] && v10 != *MEMORY[0x1E69E8F38] && v10 != *MEMORY[0x1E69E8F70] && v10 != *MEMORY[0x1E69E8F78])
                                    {
                                      (*(v4 + 8))(v7, v3);
                                      goto LABEL_12;
                                    }

LABEL_77:
                                    v21 = 0;
                                    v22 = 0xE000000000000000;
                                    _StringGuts.grow(_:)(22);
                                    MEMORY[0x193ACE8E0](0xD000000000000014, 0x800000018E5F3370);
                                    _print_unlocked<A, B>(_:_:)();
                                    v18 = v21;
                                    v19 = v22;
                                    type metadata accessor for Unsupported();
                                    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
                                    swift_allocError();
                                    v15 = v18;
                                    v16 = v19;
                                    v17 = 612;
                                    goto LABEL_13;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            return v9(v11, 0);
          }
        }
      }
    }
  }

LABEL_12:
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  MEMORY[0x193ACE8E0](0x616D203A4F444F54, 0xEF20706F72702070);
  _print_unlocked<A, B>(_:_:)();
  v13 = v21;
  v14 = v22;
  type metadata accessor for Unsupported();
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
  swift_allocError();
  v15 = v13;
  v16 = v14;
  v17 = 619;
LABEL_13:
  MEMORY[0x193ACDF10](v15, v16, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, v17);
  return swift_willThrow();
}

BOOL closure #3 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Unicode.Scalar.Properties();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  v10 = Unicode.Scalar.Properties.age.getter();
  v12 = v11;
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  if (v14)
  {
    return 0;
  }

  v16 = v10 <= a2;
  if (v10 == a2)
  {
    return v12 <= a3;
  }

  return v16;
}

uint64_t closure #4 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(double a1)
{
  v2 = type metadata accessor for Unicode.Scalar.Properties();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  v7 = COERCE_DOUBLE(Unicode.Scalar.Properties.numericValue.getter());
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  return (v7 == a1) & ~v9;
}

uint64_t closure #5 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(int a1, uint64_t a2)
{
  v35 = a2;
  v34 = a1;
  v2 = type metadata accessor for Unicode.NumericType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v32 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  v21 = type metadata accessor for Unicode.Scalar.Properties();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.numericType.getter();
  (*(v22 + 8))(v25, v21);
  (*(v3 + 16))(v18, v35, v2);
  (*(v3 + 56))(v18, 0, 1, v2);
  v26 = *(v7 + 56);
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v20, v10, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v18, &v10[v26], &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v27 = *(v3 + 48);
  if (v27(v10, 1, v2) != 1)
  {
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(v10, v15, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
    if (v27(&v10[v26], 1, v2) != 1)
    {
      v29 = v33;
      (*(v3 + 32))(v33, &v10[v26], v2);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v3 + 8);
      v30(v29, v2);
      v30(v15, v2);
      outlined destroy of SplitSequence<SubstringSearcher>(v10, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
      return v28 & 1;
    }

    (*(v3 + 8))(v15, v2);
    goto LABEL_6;
  }

  if (v27(&v10[v26], 1, v2) != 1)
  {
LABEL_6:
    outlined destroy of SplitSequence<SubstringSearcher>(v10, &_ss7UnicodeO11NumericTypeOSg_AEtMd, &_ss7UnicodeO11NumericTypeOSg_AEtMR);
    v28 = 0;
    return v28 & 1;
  }

  outlined destroy of SplitSequence<SubstringSearcher>(v10, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v28 = 1;
  return v28 & 1;
}

uint64_t closure #6 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.canonicalCombiningClass.getter();
  (*(v9 + 8))(v12, v8);
  v13 = MEMORY[0x193ACF0A0](v7, a2);
  (*(v4 + 8))(v7, v3);
  return v13 & 1;
}

uint64_t closure #7 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for Unicode.Scalar.Properties();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Unicode.Scalar.properties.getter();
  v13 = a4(v12);
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  if (v13 == a2 && v15 == a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t Unicode.POSIXProperty.generateConsumer(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Unicode.POSIXProperty();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    __break(1u);
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = *(a1 + 4 * v8 + 28);
  (*(v4 + 16))(v7, v1, v3);
  v10 = (*(v4 + 88))(v7, v3);
  v11 = specialized closure #1 in propertyScalarPredicate(_:);
  if (v10 != *MEMORY[0x1E69E8EB0])
  {
    v11 = closure #2 in Unicode.POSIXProperty.generateConsumer(_:);
    if (v10 != *MEMORY[0x1E69E8EB8])
    {
      v11 = specialized closure #1 in propertyScalarPredicate(_:);
      if (v10 != *MEMORY[0x1E69E8EC0])
      {
        v11 = specialized closure #1 in propertyScalarPredicate(_:);
        if (v10 != *MEMORY[0x1E69E8EC8])
        {
          v11 = specialized closure #1 in propertyScalarPredicate(_:);
          if (v10 != *MEMORY[0x1E69E8EA8])
          {
            v11 = specialized closure #1 in propertyScalarPredicate(_:);
            if (v10 != *MEMORY[0x1E69E8ED0])
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  v12 = consumeCharacterWithLeadingScalar(_:);
  if ((v9 & 0x10000) == 0)
  {
    v12 = consumeScalar(_:);
  }

  return v12(v11, 0);
}

uint64_t closure #2 in Unicode.POSIXProperty.generateConsumer(_:)(int a1)
{
  v2 = type metadata accessor for Unicode.GeneralCategory();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Unicode.Scalar.Properties();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v11 + 8))(v14, v10);
  (*(v3 + 104))(v7, *MEMORY[0x1E69E7878], v2);
  LOBYTE(v14) = MEMORY[0x193ACF080](v9, v7);
  v15 = *(v3 + 8);
  v15(v7, v2);
  v15(v9, v2);
  return v14 & 1 | (a1 == 9);
}

uint64_t closure #3 in Unicode.POSIXProperty.generateConsumer(_:)()
{
  v0 = type metadata accessor for Unicode.GeneralCategory();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  if (Unicode.Scalar.Properties.isWhitespace.getter())
  {
    goto LABEL_4;
  }

  Unicode.Scalar.Properties.generalCategory.getter();
  v8 = v1[13];
  v8(v5, *MEMORY[0x1E69E78E0], v0);
  v9 = MEMORY[0x193ACF080](v7, v5);
  v10 = v1[1];
  v10(v5, v0);
  v10(v7, v0);
  if (v9 & 1) != 0 || (Unicode.Scalar.Properties.generalCategory.getter(), v8(v5, *MEMORY[0x1E69E78E8], v0), v11 = MEMORY[0x193ACF080](v7, v5), v10(v5, v0), v10(v7, v0), (v11))
  {
LABEL_4:
    v12 = 0;
  }

  else
  {
    Unicode.Scalar.Properties.generalCategory.getter();
    v8(v5, *MEMORY[0x1E69E7810], v0);
    v14 = MEMORY[0x193ACF080](v7, v5);
    v10(v5, v0);
    v10(v7, v0);
    v12 = v14 ^ 1;
  }

  return v12 & 1;
}

Swift::Void __swiftcall Processor.SavePoint.takePositionFromQuantifiedRange(_:)(Swift::String a1)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    v3 = *(v1 + 24);
    a1._countAndFlagsBits = *(v1 + 32);
    *(v1 + 8) = a1._countAndFlagsBits;
    *(v1 + 16) = 0;
    v4 = v3 >> 14;
    v5 = a1._countAndFlagsBits >> 14;
    if (v3 >> 14 == a1._countAndFlagsBits >> 14)
    {
      v3 = 0;
      v6 = 0;
LABEL_15:
      *(v1 + 24) = v3;
      *(v1 + 32) = v6;
      *(v1 + 40) = v4 == v5;
      return;
    }

    object = a1._object;
    if (*(v1 + 41) != 1)
    {
      v6 = String.index(before:)();
      if (v4 <= v6 >> 14)
      {
        goto LABEL_15;
      }

      do
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v6 = String.UnicodeScalarView._foreignIndex(before:)();
      }

      while (v4 > v6 >> 14);
      goto LABEL_15;
    }

    v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a1._countAndFlagsBits, countAndFlagsBits, a1._object);
    if (v8 < 0x4000)
    {
      goto LABEL_23;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if ((object & 0x2000000000000000) != 0)
    {
      v17[0] = countAndFlagsBits;
      v17[1] = object & 0xFFFFFFFFFFFFFFLL;
      v13 = v17 + (v8 >> 16);
      if ((*(v13 - 1) & 0xC0) == 0x80)
      {
        v11 = -2;
        do
        {
          v14 = v13[v11--] & 0xC0;
        }

        while (v14 == 128);
        goto LABEL_19;
      }
    }

    else
    {
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v9 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v16 = v8;
        v9 = _StringObject.sharedUTF8.getter();
        v8 = v16;
      }

      v10 = v9 + (v8 >> 16);
      if ((*(v10 - 1) & 0xC0) == 0x80)
      {
        v11 = -2;
        do
        {
          v12 = *(v10 + v11--) & 0xC0;
        }

        while (v12 == 128);
LABEL_19:
        v15 = v11 + 1;
        goto LABEL_21;
      }
    }

    v15 = -1;
LABEL_21:
    v6 = (v8 + (v15 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
    if (v4 <= v6 >> 14)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QuantifyPayload.PayloadType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](qword_18E5EFAF0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QuantifyPayload.PayloadType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](qword_18E5EFAF0[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance QuantifyPayload.PayloadType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized QuantifyPayload.PayloadType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

_StringProcessing::DSLTree::Atom::Assertion_optional __swiftcall DSLTree.Atom.Assertion.init(rawValue:)(Swift::UInt64 rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Instruction@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Instruction.OpCode@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Instruction.OpCode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized TypedSetVector.store(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 8 * v7);
    }
  }

  v10 = v3[1];
  v9 = *(v10 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v3[1] = v10;
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  return v9;
}

uint64_t specialized TypedSetVector.store(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (*(v4 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      return *(*(v4 + 56) + 8 * v5);
    }
  }

  v8 = v2[1];
  v7 = v8[2];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = a1;
  v2[1] = v8;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
  return v7;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;

      PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v3, 0);

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t *_sSa9repeating5countSayxGx_SitcfCyp_Tt1g5(uint64_t *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        outlined init with copy of Any(v3, v5);
        v5 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_0(v3);
    return v4;
  }

  return result;
}

__int128 *_sSa9repeating5countSayxGx_SitcfC17_StringProcessing9ProcessorV14_StoredCaptureV_Tt1g5(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        outlined init with copy of Processor._StoredCapture(v3, v5);
        v5 += 72;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of Processor._StoredCapture(v3);
    return v4;
  }

  return result;
}

uint64_t Character._isHorizontalWhitespace.getter(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Unicode.GeneralCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for Unicode.Scalar.Properties();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = specialized Collection.first.getter(a1, a2);
  if ((v17 & 0x100000000) != 0)
  {
    v18 = 0;
  }

  else if (v17 == 9)
  {
    v18 = 1;
  }

  else
  {
    Unicode.Scalar.properties.getter();
    Unicode.Scalar.Properties.generalCategory.getter();
    (*(v13 + 8))(v16, v12);
    (*(v5 + 104))(v9, *MEMORY[0x1E69E7878], v4);
    v18 = MEMORY[0x193ACF080](v11, v9);
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v11, v4);
  }

  return v18 & 1;
}

uint64_t Character._isNewline.getter(unint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  v3 = (v2 - 8232) < 2 || v2 == 133;
  v4 = (v2 - 14) > 0xFFFFFFFB || v3;
  if ((v2 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall Processor.signalFailure(preservingCaptures:)(Swift::Bool preservingCaptures)
{
  v2 = v1;
  v3 = v1 + 184;
  v4 = *(v1 + 184);
  v5 = *(v4 + 2);
  if (!v5)
  {
    *(v1 + 200) = 1;
    return;
  }

  if (v4[72 * v5])
  {
    specialized Array._customRemoveLast()(&v24);
    if (v27)
    {
      v31 = v26;
      v32 = v27;
      v33 = v28;
      v29 = v24;
      v30 = v25;
    }

    else
    {
      v22[2] = v26;
      v22[3] = v27;
      v23 = v28;
      v22[0] = v24;
      v22[1] = v25;
      outlined destroy of Any?(v22);
      specialized Array.remove(at:)(*(*v3 + 16) - 1, &v29);
    }

    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v16 = v33;
    v28 = v33;
    v12 = *(&v29 + 1);
    v17 = v29;
    v18 = v30;
    v15 = *(&v32 + 1);
    v14 = v32;

    outlined destroy of Processor.SavePoint(&v24);
    v2[12] = v17;
    if ((v18 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 184);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  if (v5 > *(v4 + 2))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = &v4[72 * v5 - 72];
  v11._countAndFlagsBits = v7;
  v11._object = v8;
  Processor.SavePoint.takePositionFromQuantifiedRange(_:)(v11);
  *v3 = v4;
  if (v5 > *(v4 + 2))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v12 = *(v10 + 5);
  v13 = v10[48];
  v14 = *(v10 + 10);
  v15 = *(v10 + 11);
  v16 = *(v10 + 12);
  v2[12] = *(v10 + 4);

  if (v13 == 1)
  {
LABEL_14:
    v12 = v2[11];
  }

LABEL_15:
  v2[11] = v12;
  v19 = v2[20];

  v2[20] = v15;
  v20 = v2[22];

  v2[22] = v16;
  if (preservingCaptures)
  {
  }

  else
  {
    v21 = v2[24];

    v2[24] = v14;
  }
}

unint64_t Processor.isAtStartOfLine(_:)(uint64_t a1)
{
  v3 = v1[11];
  if ((v1[2] ^ v3) < 0x4000)
  {
    return 1;
  }

  v5 = *v1;
  v6 = v1[1];
  if ((a1 & 0x10000000000000) != 0)
  {
    v10 = _StringGuts.validateInclusiveScalarIndex(_:)(v3, v5, v6);
    if (v10 < 0x4000)
    {
      __break(1u);
    }

    else if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v23 = v5;
        v24 = v6 & 0xFFFFFFFFFFFFFFLL;
        v15 = &v23 + (v10 >> 16);
        if ((*(v15 - 1) & 0xC0) == 0x80)
        {
          v13 = -2;
          do
          {
            v16 = v15[v13--] & 0xC0;
          }

          while (v16 == 128);
          goto LABEL_22;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v11 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v22 = v10;
          v11 = _StringObject.sharedUTF8.getter();
          v10 = v22;
        }

        v12 = v11 + (v10 >> 16);
        if ((*(v12 - 1) & 0xC0) == 0x80)
        {
          v13 = -2;
          do
          {
            v14 = *(v12 + v13--) & 0xC0;
          }

          while (v14 == 128);
LABEL_22:
          v17 = v13 + 1;
LABEL_24:
          _StringGuts.validateScalarIndex(_:)((v10 + (v17 << 16)) & 0xFFFFFFFFFFFF0000 | 5, v5, v6);
          if ((v6 & 0x2000000000000000) != 0)
          {
            v23 = v5;
            v24 = v6 & 0xFFFFFFFFFFFFFFLL;
          }

          else if ((v5 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v18 = _decodeScalar(_:startingAt:)();
LABEL_29:
          v19 = v18;
          v20 = v18 - 14;
          result = 1;
          if (v20 <= 0xFFFFFFFB && (v19 - 8232) >= 2 && v19 != 133)
          {
            return 0;
          }

          return result;
        }
      }

      v17 = -1;
      goto LABEL_24;
    }

    v21 = String.UnicodeScalarView._foreignIndex(before:)();
    _StringGuts.validateScalarIndex(_:)(v21, v5, v6);
    v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_29;
  }

  String.index(before:)();
  v7 = String.subscript.getter();
  result = specialized Collection.first.getter(v7, v8);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
    return result;
  }

  v9 = result;

  result = 1;
  if ((v9 - 14) <= 0xFFFFFFFB && (v9 - 8232) >= 2 && v9 != 133)
  {
    return 0;
  }

  return result;
}

unint64_t Processor.isAtEndOfLine(_:)(uint64_t a1)
{
  v3 = v1[11];
  if ((v1[3] ^ v3) < 0x4000)
  {
    return 1;
  }

  v5 = *v1;
  v6 = v1[1];
  if ((a1 & 0x10000000000000) != 0)
  {
    _StringGuts.validateScalarIndex(_:)(v3, v5, v6);
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((v6 & 0x2000000000000000) == 0 && (v5 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v10 = _decodeScalar(_:startingAt:)();
    }

    v11 = v10;
    v12 = v10 - 14;
    result = 1;
    if (v12 <= 0xFFFFFFFB && (v11 - 8232) >= 2)
    {
      return v11 == 133;
    }
  }

  else
  {
    v7 = String.subscript.getter();
    result = specialized Collection.first.getter(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = result;

      result = 1;
      if ((v9 - 14) <= 0xFFFFFFFB && (v9 - 8232) >= 2)
      {
        return v9 == 133;
      }
    }
  }

  return result;
}

uint64_t Processor.builtinAssert(by:)(uint64_t a1)
{
  DSLTree.Atom.Assertion.init(rawValue:)(a1);
  switch(v74)
  {
    case 1:
      v3 = *(v1 + 11);
      v4 = *(v1 + 3) >> 14;
      if (v4 == v3 >> 14)
      {
        goto LABEL_55;
      }

      v6 = *v1;
      v5 = *(v1 + 1);
      if ((a1 & 0x10000000000000) != 0)
      {
        v63 = _StringGuts.validateScalarIndex(_:)(v3, v6, v5);
        if ((v5 & 0x1000000000000000) != 0)
        {
          if (v4 != String.UnicodeScalarView._foreignIndex(after:)() >> 14)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v64 = v63 >> 16;
          if ((v5 & 0x2000000000000000) != 0)
          {
            *&v74 = v6;
            *(&v74 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;
            v66 = *(&v74 + v64);
          }

          else
          {
            if ((v6 & 0x1000000000000000) != 0)
            {
              v65 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v65 = _StringObject.sharedUTF8.getter();
            }

            v66 = *(v65 + v64);
          }

          v67 = v66;
          v68 = __clz(v66 ^ 0xFF) - 24;
          if (v67 >= 0)
          {
            LOBYTE(v68) = 1;
          }

          if (v4 != ((4 * (v64 + v68)) & 0x3FFFFFFFFFFFFLL))
          {
            goto LABEL_73;
          }
        }

        _StringGuts.validateScalarIndex(_:)(v3, v6, v5);
        if ((v5 & 0x1000000000000000) != 0)
        {
          v69 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((v5 & 0x2000000000000000) != 0)
          {
            *&v74 = v6;
            *(&v74 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;
          }

          else if ((v6 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v69 = _decodeScalar(_:startingAt:)();
        }

        v70 = v69;
        v71 = v69 - 14;
        v11 = 1;
        if (v71 <= 0xFFFFFFFB && (v70 - 8232) >= 2 && v70 != 133)
        {
          goto LABEL_73;
        }

        return v11 & 1;
      }

      if (v4 != String.index(after:)() >> 14)
      {
        goto LABEL_73;
      }

      v7 = String.subscript.getter();
      v9 = specialized Collection.first.getter(v7, v8);
      if ((v9 & 0x100000000) != 0)
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v10 = v9;

      v11 = 1;
      if ((v10 - 14) <= 0xFFFFFFFB && (v10 - 8232) >= 2 && v10 != 133)
      {
        goto LABEL_73;
      }

      return v11 & 1;
    case 2:
      goto LABEL_19;
    case 3:
      goto LABEL_96;
    case 4:
      v21 = *(v1 + 11);
      v22 = *(v1 + 9);
      goto LABEL_35;
    case 5:
      v47 = *v1;
      v48 = *(v1 + 1);
      v49 = *(v1 + 11);
      v11 = String.isOnGraphemeClusterBoundary(_:)();
      return v11 & 1;
    case 6:
      v29 = *v1;
      v30 = *(v1 + 1);
      v31 = *(v1 + 11);
      v11 = String.isOnGraphemeClusterBoundary(_:)() ^ 1;
      return v11 & 1;
    case 7:
      goto LABEL_32;
    case 8:
      goto LABEL_20;
    case 9:
      if ((a1 & 0x80000000000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_32:
      v41 = v1[11];
      v84 = v1[10];
      v85 = v41;
      v86 = v1[12];
      v87 = *(v1 + 26);
      v42 = v1[7];
      v80 = v1[6];
      v81 = v42;
      v43 = v1[9];
      v82 = v1[8];
      v83 = v43;
      v44 = v1[3];
      v76 = v1[2];
      v77 = v44;
      v45 = v1[5];
      v78 = v1[4];
      v79 = v45;
      v46 = v1[1];
      v74 = *v1;
      v75 = v46;
      v11 = Processor.isAtStartOfLine(_:)(a1);
      return v11 & 1;
    case 10:
      if ((a1 & 0x80000000000000) != 0)
      {
LABEL_20:
        v23 = v1[11];
        v84 = v1[10];
        v85 = v23;
        v86 = v1[12];
        v87 = *(v1 + 26);
        v24 = v1[7];
        v80 = v1[6];
        v81 = v24;
        v25 = v1[9];
        v82 = v1[8];
        v83 = v25;
        v26 = v1[3];
        v76 = v1[2];
        v77 = v26;
        v27 = v1[5];
        v78 = v1[4];
        v79 = v27;
        v28 = v1[1];
        v74 = *v1;
        v75 = v28;
        v11 = Processor.isAtEndOfLine(_:)(a1);
      }

      else
      {
LABEL_19:
        v21 = *(v1 + 11);
        v22 = *(v1 + 3);
LABEL_35:
        v11 = (v22 ^ v21) < 0x4000;
      }

      return v11 & 1;
    case 11:
      if ((a1 & 0x40000000000000) != 0)
      {
        v57 = v1[11];
        v84 = v1[10];
        v85 = v57;
        v86 = v1[12];
        v87 = *(v1 + 26);
        v58 = v1[7];
        v80 = v1[6];
        v81 = v58;
        v59 = v1[9];
        v82 = v1[8];
        v83 = v59;
        v60 = v1[3];
        v76 = v1[2];
        v77 = v60;
        v61 = v1[5];
        v78 = v1[4];
        v79 = v61;
        v62 = v1[1];
        v74 = *v1;
        v75 = v62;
        v11 = Processor.atSimpleBoundary(_:_:)((a1 & 0x20000000000000) != 0, ((a1 & 0x10000000000000) != 0));
        return v11 & 1;
      }

      v32 = *(v1 + 11);
      v33 = *(v1 + 2);
      v34 = v32 >> 14;
      if (v32 >> 14 == v33 >> 14)
      {
        goto LABEL_55;
      }

      v35 = *(v1 + 3) >> 14;
      if (v34 == v35)
      {
        goto LABEL_55;
      }

      v36 = *v1;
      v37 = *(v1 + 1);
      v38 = *(v1 + 6);
      if (!v38)
      {
        v39 = *(v1 + 7);
        v40 = *(v1 + 64);
        if ((v40 & 1) == 0 && v34 < v39 >> 14)
        {
          goto LABEL_73;
        }

        *(v1 + 6) = MEMORY[0x1E69E7CD0];
LABEL_59:
        if (!v40)
        {
          v33 = v39;
        }

        if (v33 >> 14 >= v35 || v34 < v33 >> 14)
        {
LABEL_85:
          *(v1 + 7) = v33;
          *(v1 + 64) = 0;
          v73 = *(v1 + 6);
          if (v73)
          {
            v11 = specialized Set.contains(_:)(v32, v73);
            return v11 & 1;
          }

LABEL_95:
          __break(1u);
LABEL_96:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          JUMPOUT(0x18E59F22CLL);
        }

        while (*(v1 + 6))
        {
          if ((specialized Set._Variant.insert(_:)(&v74, v33) & 1) == 0)
          {
            goto LABEL_55;
          }

          v33 = String._wordIndex(after:)();
          if (v33 >> 14 >= v35 || v34 < v33 >> 14)
          {
            goto LABEL_85;
          }
        }

LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (!specialized Set.contains(_:)(*(v1 + 11), v38))
      {
        v39 = *(v1 + 7);
        v40 = *(v1 + 64);
        if ((v40 & 1) == 0 && v34 < v39 >> 14)
        {
          goto LABEL_73;
        }

        goto LABEL_59;
      }

      goto LABEL_55;
    case 12:
      if ((a1 & 0x40000000000000) != 0)
      {
        v51 = v1[11];
        v84 = v1[10];
        v85 = v51;
        v86 = v1[12];
        v87 = *(v1 + 26);
        v52 = v1[7];
        v80 = v1[6];
        v81 = v52;
        v53 = v1[9];
        v82 = v1[8];
        v83 = v53;
        v54 = v1[3];
        v76 = v1[2];
        v77 = v54;
        v55 = v1[5];
        v78 = v1[4];
        v79 = v55;
        v56 = v1[1];
        v74 = *v1;
        v75 = v56;
        v11 = !Processor.atSimpleBoundary(_:_:)((a1 & 0x20000000000000) != 0, ((a1 & 0x10000000000000) != 0));
        return v11 & 1;
      }

      v12 = *(v1 + 11);
      v13 = *(v1 + 2);
      v14 = v12 >> 14;
      if (v12 >> 14 == v13 >> 14)
      {
        goto LABEL_73;
      }

      v15 = *(v1 + 3) >> 14;
      if (v14 == v15)
      {
        goto LABEL_73;
      }

      v16 = *v1;
      v17 = *(v1 + 1);
      v18 = *(v1 + 6);
      if (v18)
      {
        if (specialized Set.contains(_:)(*(v1 + 11), v18))
        {
LABEL_73:
          v11 = 0;
          return v11 & 1;
        }

        v19 = *(v1 + 7);
        v20 = *(v1 + 64);
        if ((v20 & 1) != 0 || v14 >= v19 >> 14)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v19 = *(v1 + 7);
        v20 = *(v1 + 64);
        if ((v20 & 1) != 0 || v14 >= v19 >> 14)
        {
          *(v1 + 6) = MEMORY[0x1E69E7CD0];
LABEL_75:
          if (!v20)
          {
            v13 = v19;
          }

          if (v13 >> 14 >= v15 || v14 < v13 >> 14)
          {
LABEL_83:
            *(v1 + 7) = v13;
            *(v1 + 64) = 0;
            v72 = *(v1 + 6);
            if (v72)
            {
              v11 = !specialized Set.contains(_:)(v12, v72);
              return v11 & 1;
            }

            goto LABEL_94;
          }

          while (*(v1 + 6))
          {
            if ((specialized Set._Variant.insert(_:)(&v74, v13) & 1) == 0)
            {
              goto LABEL_73;
            }

            v13 = String._wordIndex(after:)();
            if (v13 >> 14 >= v15 || v14 < v13 >> 14)
            {
              goto LABEL_83;
            }
          }

          __break(1u);
          goto LABEL_92;
        }
      }

LABEL_55:
      v11 = 1;
      return v11 & 1;
    default:
LABEL_31:
      v21 = *(v1 + 11);
      v22 = *(v1 + 2);
      goto LABEL_35;
  }
}

Swift::Bool __swiftcall Processor.atSimpleBoundary(_:_:)(Swift::Bool a1, _StringProcessing::MatchingOptions::SemanticLevel a2)
{
  v3 = v2[2] >> 14;
  v4 = v2[3] >> 14;
  if (v3 == v4)
  {
    v5 = 0;
    return v5 & 1;
  }

  v8 = v2[11];
  v9 = a2 & 1;
  if (v8 >> 14 != v3)
  {
    v14 = *v2;
    v13 = v2[1];
    if ((a2 & 1) == 0)
    {
      v15 = *v2;
      v16 = v2[1];
      v17 = String.index(before:)();
      goto LABEL_25;
    }

    v18 = _StringGuts.validateInclusiveScalarIndex(_:)(v2[11], *v2, v2[1]);
    if (v18 < 0x4000)
    {
      __break(1u);
    }

    else if ((v13 & 0x1000000000000000) == 0)
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v27[0] = v14;
        v27[1] = v13 & 0xFFFFFFFFFFFFFFLL;
        v23 = v27 + (v18 >> 16);
        if ((*(v23 - 1) & 0xC0) == 0x80)
        {
          v21 = -2;
          do
          {
            v24 = v23[v21--] & 0xC0;
          }

          while (v24 == 128);
          goto LABEL_22;
        }
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v19 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v26 = v18;
          v19 = _StringObject.sharedUTF8.getter();
          v18 = v26;
        }

        v20 = v19 + (v18 >> 16);
        if ((*(v20 - 1) & 0xC0) == 0x80)
        {
          v21 = -2;
          do
          {
            v22 = *(v20 + v21--) & 0xC0;
          }

          while (v22 == 128);
LABEL_22:
          v25 = v21 + 1;
LABEL_24:
          v17 = (v18 + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
          goto LABEL_25;
        }
      }

      v25 = -1;
      goto LABEL_24;
    }

    v17 = String.UnicodeScalarView._foreignIndex(before:)();
LABEL_25:
    v5 = matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(v17, v9, v2, a1);
    if (v8 >> 14 != v4)
    {
      v5 ^= matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(v8, v9, v2, a1);
    }

    return v5 & 1;
  }

  v10 = a1;
  v11 = v2[11];
  v12 = a2 & 1;

  return matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(v11, v12, v2, v10);
}

unint64_t String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(unint64_t a1, unint64_t a2, char a3, unint64_t a4, unint64_t a5)
{
  v8 = a1 >> 14;
  v9 = a2 >> 14;
  if ((a3 & 1) == 0)
  {
    if (v8 < v9)
    {
      v10 = String.index(after:)();
      if (v9 >= v10 >> 14)
      {
        v13 = v10;
        v14 = String.subscript.getter();
        v16 = v15;
      }

      else
      {
        v11 = String.subscript.getter();
        if ((v11 ^ v12) < 0x4000)
        {

          return 0;
        }

        v13 = v12;
        v24 = Substring.subscript.getter();
        v16 = v25;

        v14 = v24;
      }

      result = specialized Collection.first.getter(v14, v16);
      if ((result & 0x100000000) != 0)
      {
        __break(1u);
        return result;
      }

      v26 = result;

      if ((v26 - 14) <= 0xFFFFFFFB && (v26 - 8232) >= 2 && v26 != 133)
      {
        return v13;
      }
    }

    return 0;
  }

  if (v8 >= v9)
  {
    return 0;
  }

  _StringGuts.validateScalarIndex(_:)(a1, a4, a5);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  else
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v29 = a4;
      v30 = a5 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    v17 = _decodeScalar(_:startingAt:)();
  }

  v18 = v17;
  if ((v17 - 14) > 0xFFFFFFFB)
  {
    return 0;
  }

  result = 0;
  if ((v18 - 8232) >= 2 && v18 != 133)
  {
    v20 = _StringGuts.validateScalarIndex(_:)(a1, a4, a5);
    if ((a5 & 0x1000000000000000) != 0)
    {
      return String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v21 = v20 >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v29 = a4;
        v30 = a5 & 0xFFFFFFFFFFFFFFLL;
        v23 = *(&v29 + v21);
      }

      else
      {
        if ((a4 & 0x1000000000000000) != 0)
        {
          v22 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v22 = _StringObject.sharedUTF8.getter();
        }

        v23 = *(v22 + v21);
      }

      v27 = v23;
      v28 = __clz(v23 ^ 0xFF) - 24;
      if (v27 >= 0)
      {
        LOBYTE(v28) = 1;
      }

      return ((v21 + v28) << 16) | 5;
    }
  }

  return result;
}

uint64_t String._quickASCIICharacter(at:limitedBy:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 0;
  }

  v5 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = a1 & 0xC;
  v7 = 4 << v5;
  v8 = a1;
  if (v6 == v7)
  {
    v12 = a1;
    v13 = a3;
    v14 = a4;
    v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a3, a4);
    a3 = v13;
    a4 = v14;
    v8 = v15;
    a1 = v12;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v10 = v8 >> 16;
  if (v8 >> 16 >= v9)
  {
    __break(1u);
LABEL_21:
    v16 = a1;
    v17 = a3;
    v18 = a4;
    v19 = String.UTF8View._foreignSubscript(position:)();
    a3 = v17;
    a4 = v18;
    v11 = v19;
    a1 = v16;
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v54 = a3;
    v55 = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = *(&v54 + v10);
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = *((a4 & 0xFFFFFFFFFFFFFFFLL) + 0x20 + (v8 >> 16));
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }
  }

  else
  {
    v32 = a1;
    v33 = a4;
    v34 = a3;
    v35 = _StringObject.sharedUTF8.getter();
    a3 = v34;
    a4 = v33;
    v36 = v35;
    a1 = v32;
    v11 = *(v36 + v10);
    if ((v11 & 0x80) != 0)
    {
      return 0;
    }
  }

LABEL_16:
  if (v6 == v7)
  {
    v6 = a3;
    v20 = a4;
    a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a3, a4);
    a3 = v6;
    a4 = v20;
    if ((v20 & 0x1000000000000000) == 0)
    {
LABEL_18:
      a2 = (a1 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v4 == a2 >> 14)
      {
        return v11;
      }

LABEL_26:
      v6 = a2 & 0xC;
      v24 = a2;
      if (v6 != v7)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    }
  }

  else if ((a4 & 0x1000000000000000) == 0)
  {
    goto LABEL_18;
  }

  if (v9 > a1 >> 16)
  {
    v21 = a3;
    v22 = a4;
    v23 = String.UTF8View._foreignIndex(after:)();
    a3 = v21;
    a4 = v22;
    a2 = v23;
    if (v4 == v23 >> 14)
    {
      return v11;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_45:
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
  a2 = v37;
  a3 = v38;
  a4 = v39;
LABEL_27:
  v25 = v24 >> 16;
  if (v24 >> 16 >= v9)
  {
    __break(1u);
    goto LABEL_47;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    v29 = a2;
    v26 = a4;
    v30 = a3;
    v28 = String.UTF8View._foreignSubscript(position:)();
    a2 = v29;
    a3 = v30;
  }

  else
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v26 = a4;
        v27 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_32:
        v28 = *(v27 + v25);
        goto LABEL_35;
      }

LABEL_47:
      v26 = a4;
      v53 = a2;
      v40 = a3;
      v27 = _StringObject.sharedUTF8.getter();
      a2 = v53;
      a3 = v40;
      goto LABEL_32;
    }

    v26 = a4;
    v54 = a3;
    v55 = a4 & 0xFFFFFFFFFFFFFFLL;
    v28 = *(&v54 + v25);
  }

LABEL_35:
  if (v28 > 0xCBu)
  {
    return 0;
  }

  if (v11 == 13 && v28 == 10)
  {
    if (v6 == v7)
    {
      v41 = a3;
      v42 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, v26);
      a3 = v41;
      v31 = v26;
      a2 = v42;
      if ((v26 & 0x1000000000000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = v26;
      if ((v26 & 0x1000000000000000) == 0)
      {
LABEL_40:
        a2 = (a2 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_51;
      }
    }

    if (v9 <= a2 >> 16)
    {
      __break(1u);
      goto LABEL_66;
    }

    v43 = a3;
    v44 = v31;
    v45 = String.UTF8View._foreignIndex(after:)();
    a3 = v43;
    v31 = v44;
    a2 = v45;
LABEL_51:
    if (v4 == a2 >> 14)
    {
      return 13;
    }

    v46 = a2;
    if ((a2 & 0xC) != v7)
    {
LABEL_53:
      v47 = v46 >> 16;
      if (v46 >> 16 < v9)
      {
        if ((v31 & 0x1000000000000000) != 0)
        {
          v49 = String.UTF8View._foreignSubscript(position:)();
        }

        else
        {
          if ((v31 & 0x2000000000000000) == 0)
          {
            if ((a3 & 0x1000000000000000) != 0)
            {
              v48 = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_58:
              v49 = *(v48 + v47);
              goto LABEL_61;
            }

LABEL_68:
            v48 = _StringObject.sharedUTF8.getter();
            goto LABEL_58;
          }

          v54 = a3;
          v55 = v31 & 0xFFFFFFFFFFFFFFLL;
          v49 = *(&v54 + v47);
        }

LABEL_61:
        if (v49 <= 0xCBu)
        {
          return 13;
        }

        return 0;
      }

      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    v51 = a3;
    v52 = v31;
    v46 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, v31);
    a3 = v51;
    v31 = v52;
    goto LABEL_53;
  }

  return v11;
}

uint64_t String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(int a1, unint64_t a2, unint64_t a3, int a4, char a5, int a6, unint64_t a7, unint64_t a8)
{
  v80 = a6;
  v81 = a4;
  v82 = a1;
  v13 = type metadata accessor for Unicode.GeneralCategory();
  v77 = *(v13 - 8);
  v78 = v13;
  v14 = *(v77 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v76 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v68[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v79 = &v68[-v20];
  v21 = type metadata accessor for Unicode.Scalar.Properties();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v68[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v68[-v27];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v68[-v30];
  v32 = MEMORY[0x1EEE9AC00](v29);
  v35 = &v68[-v34];
  v36 = a3 >> 14;
  if (a3 >> 14 <= a2 >> 14)
  {
    return 0;
  }

  v70 = v33;
  v71 = v32;
  v37 = String.index(after:)();
  if (v36 >= v37 >> 14)
  {
    v73 = v37;
    v72 = String.subscript.getter();
    v74 = v40;
  }

  else
  {
    v38 = String.subscript.getter();
    if ((v38 ^ v39) < 0x4000)
    {

      return 0;
    }

    v73 = v39;
    v72 = Substring.subscript.getter();
    v74 = v41;
  }

  _StringGuts.validateScalarIndex(_:)(a2, a7, a8);
  if ((a8 & 0x1000000000000000) != 0)
  {
    v42 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((a8 & 0x2000000000000000) == 0)
    {
      if ((a7 & 0x1000000000000000) != 0)
      {
        v42 = _decodeScalar(_:startingAt:)();
        if (a5)
        {
          goto LABEL_13;
        }
      }

      else
      {
        _StringObject.sharedUTF8.getter();
        v42 = _decodeScalar(_:startingAt:)();
        if (a5)
        {
          goto LABEL_13;
        }
      }

LABEL_20:
      v44 = v42;
      v69 = 1;
      v43 = v80;
      if ((v80 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_21:
      if (v82 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    v83 = a7;
    v84 = a8 & 0xFFFFFFFFFFFFFFLL;
    v42 = _decodeScalar(_:startingAt:)();
    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  v43 = v80;
  if (v42 > 0x7F || (v80 & 1) == 0)
  {
    v44 = v42;
    v69 = (Character.asciiValue.getter() & 0x100) == 0;
    if ((v43 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (v82 == 1)
  {
LABEL_34:

    goto LABEL_35;
  }

  v44 = v42;
  v69 = 1;
LABEL_22:
  v45 = _StringGuts.validateScalarIndex(_:)(a2, a7, a8);
  if ((a8 & 0x1000000000000000) != 0)
  {
    v73 = String.UnicodeScalarView._foreignIndex(after:)();
  }

  else
  {
    v46 = v45 >> 16;
    if ((a8 & 0x2000000000000000) != 0)
    {
      v83 = a7;
      v84 = a8 & 0xFFFFFFFFFFFFFFLL;
      v48 = *(&v83 + v46);
    }

    else
    {
      if ((a7 & 0x1000000000000000) != 0)
      {
        v47 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v47 = _StringObject.sharedUTF8.getter();
      }

      v48 = *(v47 + v46);
    }

    v49 = v48;
    v50 = __clz(v48 ^ 0xFF) - 24;
    if (v49 >= 0)
    {
      LOBYTE(v50) = 1;
    }

    v73 = ((v46 + v50) << 16) | 5;
  }

LABEL_32:
  if (v82 <= 3u)
  {
    if (v82 < 2u)
    {
      goto LABEL_34;
    }

    if (v82 == 2)
    {
      if (v43)
      {

        Unicode.Scalar.properties.getter();
        v54 = v79;
        Unicode.Scalar.Properties.numericType.getter();
        (*(v70 + 8))(v35, v71);
        v55 = type metadata accessor for Unicode.NumericType();
        v56 = (*(*(v55 - 8) + 48))(v54, 1, v55) != 1;
        outlined destroy of SplitSequence<SubstringSearcher>(v54, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
        goto LABEL_81;
      }

      isHorizontal = Character.isNumber.getter();
      goto LABEL_80;
    }

    if (v43)
    {

      if (v44 != 9)
      {
        Unicode.Scalar.properties.getter();
        v61 = v75;
        Unicode.Scalar.Properties.generalCategory.getter();
        (*(v70 + 8))(v31, v71);
        v63 = v76;
        v62 = v77;
        v64 = v78;
        (*(v77 + 104))(v76, *MEMORY[0x1E69E7878], v78);
        v56 = MEMORY[0x193ACF080](v61, v63);
        v65 = *(v62 + 8);
        v65(v63, v64);
        v65(v61, v64);
LABEL_81:
        v57 = v56 & v69;
        if ((v81 & 1) == 0)
        {
LABEL_82:
          if ((v57 & 1) == 0)
          {
            return 0;
          }

          return v73;
        }

LABEL_73:
        if (v57)
        {
          return 0;
        }

        return v73;
      }

LABEL_68:
      v57 = v69;
      if ((v81 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_73;
    }

    isHorizontal = Character._isHorizontalWhitespace.getter(v72, v74);
LABEL_80:
    v56 = isHorizontal;

    goto LABEL_81;
  }

  if (v82 > 5u)
  {
    if (v82 == 6)
    {
      if (v43)
      {

        Unicode.Scalar.properties.getter();
        v56 = Unicode.Scalar.Properties.isWhitespace.getter();
        (*(v70 + 8))(v28, v71);
        goto LABEL_81;
      }

      isHorizontal = Character.isWhitespace.getter();
      goto LABEL_80;
    }

    if ((v43 & 1) == 0)
    {
      isHorizontal = Character.isWordCharacter.getter();
      goto LABEL_80;
    }

    Unicode.Scalar.properties.getter();
    v58 = Unicode.Scalar.Properties.isAlphabetic.getter();
    (*(v70 + 8))(v25, v71);
    v57 = v58 & v69;
    goto LABEL_72;
  }

  if (v82 != 4)
  {
    if ((v43 & 1) == 0)
    {
      goto LABEL_75;
    }

    if (v44 - 14 > 0xFFFFFFFB || v44 - 8232 < 2)
    {
      goto LABEL_68;
    }

    v57 = v69;
    if (v44 != 133)
    {
LABEL_64:
      if ((v81 & 1) == 0)
      {
        return 0;
      }

      return v73;
    }

LABEL_72:
    if ((v81 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_73;
  }

  if ((v43 & 1) == 0)
  {
LABEL_75:
    isHorizontal = Character._isNewline.getter(v72, v74);
    goto LABEL_80;
  }

  if (v44 - 14 <= 0xFFFFFFFB && v44 - 8232 >= 2 && v44 != 133 || !v69)
  {
    goto LABEL_64;
  }

  if (v44 != 13 || v36 <= v73 >> 14)
  {
    goto LABEL_35;
  }

  _StringGuts.validateScalarIndex(_:)(v73, a7, a8);
  if ((a8 & 0x1000000000000000) != 0)
  {
    if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() == 10)
    {
      _StringGuts.validateScalarIndex(_:)(v73, a7, a8);
      result = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_92;
    }

    goto LABEL_35;
  }

  if ((a8 & 0x2000000000000000) == 0)
  {
    if ((a7 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    if (_decodeScalar(_:startingAt:)() == 10)
    {
      v51 = _StringGuts.validateScalarIndex(_:)(v73, a7, a8) >> 16;
      if ((a7 & 0x1000000000000000) != 0)
      {
        v52 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v52 = _StringObject.sharedUTF8.getter();
      }

      v53 = *(v52 + v51);
      goto LABEL_89;
    }

LABEL_35:
    if (v81)
    {
      return 0;
    }

    return v73;
  }

  v83 = a7;
  v84 = a8 & 0xFFFFFFFFFFFFFFLL;
  if (_decodeScalar(_:startingAt:)() != 10)
  {
    goto LABEL_35;
  }

  v51 = _StringGuts.validateScalarIndex(_:)(v73, a7, a8) >> 16;
  v83 = a7;
  v84 = a8 & 0xFFFFFFFFFFFFFFLL;
  v53 = *(&v83 + v51);
LABEL_89:
  v66 = v53;
  v67 = __clz(v53 ^ 0xFF) - 24;
  if (v66 >= 0)
  {
    LOBYTE(v67) = 1;
  }

  result = ((v51 + v67) << 16) | 5;
LABEL_92:
  if (v81)
  {
    return 0;
  }

  return result;
}

unint64_t String._quickMatch(_:at:limitedBy:isScalarSemantics:)(unsigned __int8 a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6)
{
  v10 = String._quickASCIICharacter(at:limitedBy:)(a2, a3, a5, a6);
  if (v12 == 2)
  {
    return 0;
  }

  v14 = v10;
  result = v11;
  v15 = a1;
  if (a1 <= 3u)
  {
    return result;
  }

  v16 = v14;
  if (a1 - 4 < 2)
  {
    if (v14 - 10 > 3 || (v12 & 1) == 0 || (a4 & 1) == 0 || a1 != 5)
    {
      return result;
    }

    v17 = (a5 >> 59) & 1;
    if ((a6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v17) = 1;
    }

    v16 = 4;
    if ((v11 & 0xC) == 4 << v17)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
      if (result >= 0x4000)
      {
        goto LABEL_13;
      }
    }

    else if (v11 >= 0x4000)
    {
LABEL_13:
      if ((a6 & 0x1000000000000000) == 0)
      {
        return (result & 0xFFFFFFFFFFFF0000) - 65532;
      }

      v18 = HIBYTE(a6) & 0xF;
      v15 = a5;
      if ((a6 & 0x2000000000000000) == 0)
      {
        v18 = a5 & 0xFFFFFFFFFFFFLL;
      }

      if (v18 >= result >> 16)
      {
        return String.UTF8View._foreignIndex(before:)();
      }

      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_18:
  if (v15 != 6 || (v16 - 9) >= 5 && v16 != 32 || (v12 & 1) == 0 || (a4 & 1) == 0)
  {
    return result;
  }

  v19 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v19) = 1;
  }

  if ((result & 0xC) != 4 << v19)
  {
    if (result >= 0x4000)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
  if (result >= 0x4000)
  {
LABEL_26:
    if ((a6 & 0x1000000000000000) == 0)
    {
      return (result & 0xFFFFFFFFFFFF0000) - 65532;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v20 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 >= result >> 16)
  {
    return String.UTF8View._foreignIndex(before:)();
  }

  __break(1u);
  return result;
}

unint64_t MEProgram.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (1)
    {
      v5 = *(v4 + 8 * v3);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v6);

      MEMORY[0x193ACE8E0](8285, 0xE200000000000000);
      v7 = Instruction.description.getter(v5);
      MEMORY[0x193ACE8E0](v7);

      MEMORY[0x193ACE8E0](91, 0xE100000000000000);

      result = specialized Instruction.OpCode.init(rawValue:)(HIBYTE(v5));
      if (result <= 0x12u && ((1 << result) & 0x60010) != 0)
      {
        if ((v5 & 0xFFFFFFFFFFFFFFLL) >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = Instruction.description.getter(*(v4 + 8 * (v5 & 0xFFFFFFFFFFFFFFLL)));
        MEMORY[0x193ACE8E0](v10);

        MEMORY[0x193ACE8E0](539963168, 0xE400000000000000);
      }

      ++v3;
      MEMORY[0x193ACE8E0](10, 0xE100000000000000);
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t Processor.runQuantify(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Quantification.Kind();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v236 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v236 - v10;
  v12 = (a1 >> 27);
  v13 = (a1 >> 18) & 0x1FF;
  v39 = v13 == 1;
  v14 = v13 == 1;
  v15 = v12 + (v13 >> 1);
  if (v39)
  {
    v15 = -1;
  }

  v247 = v15;
  v16 = (a1 >> 16) & 3;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_552;
    }

    v17 = MEMORY[0x1E69E8A80];
  }

  else if (v16)
  {
    v17 = MEMORY[0x1E69E8A90];
  }

  else
  {
    v17 = MEMORY[0x1E69E8A88];
  }

  v18 = v5[13];
  v18(&v236 - v10, *v17, v4);
  v18(v9, *MEMORY[0x1E69E8A88], v4);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = v5[1];
  (v19)(v11, v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (v19)(v9, v4);
  v20 = v258;
  v21 = v256;
  if (v257 == v255 && v258 == v256)
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v23 = a1 & 0x4000000000;
  if ((a1 >> 27))
  {
    v24 = 0;
    v25 = 0;
    if (v12 == 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = v14;
  }

  v14 = 0;
  v25 = v24;
LABEL_19:
  v26 = (a1 >> 35) & 7;
  v250 = v2;
  v252 = a1 & 0x4000000000;
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      if (v26 != 4)
      {
LABEL_529:
        __break(1u);
        goto LABEL_530;
      }

      v67 = v2[1];
      v251 = *v2;
      v249 = v67;
      v68 = specialized _CharacterClassModel.Representation.init(rawValue:)(a1);
      LODWORD(v248) = v68;
      if ((v25 & 1) == 0)
      {
        v245 = v22;
        if (v14)
        {
          if (v68 == 8)
          {
            goto LABEL_550;
          }

          v21 = v2[10];
          v20 = v2[11];
          v247 = v21 >> 14;
          if (v21 >> 14 <= v20 >> 14)
          {
            goto LABEL_524;
          }

          v138 = 0;
          v243 = (a1 >> 10) & 1;
          v246 = (a1 >> 9) & 1;
          v23 = v20;
          v14 = v20;
          v139 = v251;
          v19 = v252;
          while (1)
          {
            v22 = v14;
            v144 = v68;
            a1 = v249;
            v68 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v68, v14, v21, v19 != 0, v139, v249);
            if (v145 == 2)
            {
              v68 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(v144, v14, v21, v246, v243, v19 != 0, v139, a1);
              if (v140)
              {
                goto LABEL_241;
              }
            }

            else if (((v246 ^ v145) & 1) == 0)
            {
LABEL_241:
              v22 = v23;
              v141 = v138;
LABEL_242:
              v66 = v141 == 1;
              if (v141 < 1)
              {
                goto LABEL_524;
              }

              goto LABEL_437;
            }

            v14 = v68;
            v141 = v138 + 1;
            if (v138)
            {
              v142 = v20;
            }

            else
            {
              v142 = v68;
            }

            if (v141 >= 0)
            {
              v20 = v142;
            }

            v143 = v247 > v68 >> 14;
            ++v138;
            v23 = v22;
            LODWORD(v68) = v248;
            if (!v143)
            {
              goto LABEL_242;
            }
          }
        }

        if (v68 == 8)
        {
          goto LABEL_551;
        }

        v20 = v2[11];
        if (v247)
        {
          v207 = v2[10];
          v242 = v207 >> 14;
          if (v207 >> 14 <= v20 >> 14)
          {
            v226 = (a1 >> 27);
            LOBYTE(v208) = 0;
            v227 = 0;
            v22 = v20;
            v14 = v20;
            goto LABEL_496;
          }

          v246 = (a1 >> 27);
          v243 = 0;
          v208 = 0;
          v21 = 1;
          v239 = (a1 >> 10) & 1;
          v244 = (a1 >> 9) & 1;
          v14 = v20;
          v209 = v20;
          v241 = v207;
          while (1)
          {
            v240 = v208;
            v22 = v209;
            v209 = v14;
            a1 = v68;
            v19 = v251;
            v210 = v249;
            v211 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v68, v14, v207, v23 != 0, v251, v249);
            if (v212 == 2)
            {
              v211 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(a1, v14, v207, v244, v239, v23 != 0, v19, v210);
              if (v213)
              {
                v226 = v246;
                v227 = v21 - 1;
                LOBYTE(v208) = v240;
                goto LABEL_496;
              }
            }

            else if (((v244 ^ v212) & 1) == 0)
            {
              v226 = v246;
              LOBYTE(v208) = v240;
              v227 = v243;
LABEL_496:
              if ((v208 & 1) != 0 || v227 < v226)
              {
                goto LABEL_524;
              }

LABEL_498:
              if (v227 != 0 && (v245 & 1) != 0 && v226 < v227)
              {
                goto LABEL_511;
              }

              goto LABEL_516;
            }

            v14 = v211;
            if (v246 == v21)
            {
              v214 = v211;
            }

            else
            {
              v214 = v20;
            }

            if ((v21 & 0x8000000000000000) == 0)
            {
              v20 = v214;
            }

            v68 = v248;
            v207 = v241;
            if ((v21 & 0x8000000000000000) == 0 && v21 >= v247)
            {
              goto LABEL_417;
            }

            v208 = v21++ >> 63;
            ++v243;
            if (v242 <= v14 >> 14)
            {
              v226 = v246;
              v227 = v21 - 1;
              v22 = v209;
              goto LABEL_496;
            }
          }
        }

        v246 = (a1 >> 27);
        v21 = 0;
        v209 = v20;
        v14 = v20;
LABEL_417:
        v22 = v209;
        v227 = v21;
        v226 = v246;
        if (v21 < v246)
        {
          goto LABEL_524;
        }

        goto LABEL_498;
      }

      if (v68 == 8)
      {
        goto LABEL_549;
      }

      v69 = v2[10];
      v20 = v2[11];
      v247 = v69 >> 14;
      if (v69 >> 14 > v20 >> 14)
      {
        v245 = v22;
        v70 = 0;
        v19 = 1;
        v243 = (a1 >> 10) & 1;
        v244 = v69;
        v246 = (a1 >> 9) & 1;
        v23 = v20;
        v14 = v20;
        v71 = v252;
        v72 = v249;
        while (1)
        {
          v21 = v68;
          v77 = v69;
          a1 = v251;
          v78 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v68, v14, v69, v71 != 0, v251, v72);
          if (v79 == 2)
          {
            v73 = v21;
            v21 = v14;
            v74 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(v73, v14, v77, v246, v243, v71 != 0, a1, v72);
            if (v75)
            {
              goto LABEL_435;
            }

            v14 = v74;
            v22 = v21;
          }

          else
          {
            if (((v246 ^ v79) & 1) == 0)
            {
              v70 = v19 - 1;
LABEL_435:
              v22 = v23;
              if ((v70 & 0x8000000000000000) != 0)
              {
                goto LABEL_524;
              }

LABEL_436:
              v66 = v70 == 0;
LABEL_437:
              v219 = !v66;
              if (v245 & v219)
              {
                goto LABEL_511;
              }

              goto LABEL_516;
            }

            v22 = v14;
            v14 = v78;
          }

          ++v70;
          if (v19)
          {
            v76 = v20;
          }

          else
          {
            v76 = v14;
          }

          if ((v19 & 0x8000000000000000) == 0)
          {
            v20 = v76;
          }

          ++v19;
          v23 = v22;
          v68 = v248;
          v69 = v244;
          if (v247 <= v14 >> 14)
          {
            v70 = v19 - 1;
            if (((v19 - 1) & 0x8000000000000000) != 0)
            {
              goto LABEL_524;
            }

            goto LABEL_436;
          }
        }
      }

LABEL_244:
      v14 = v20;
      goto LABEL_516;
    }

    v30 = *v2;
    v19 = v2[1];
    v32 = v2 + 10;
    v31 = v2[10];
    v20 = v32[1];
    v251 = v30;
    v248 = v19;
    v249 = v31;
    if (v25)
    {
      v33 = v31 >> 14;
      if (v31 >> 14 <= v20 >> 14)
      {
        v14 = v20;
        goto LABEL_473;
      }

      v245 = v22;
      v34 = 0;
      v35 = (v30 >> 59) & 1;
      if ((v19 & 0x1000000000000000) == 0)
      {
        LOBYTE(v35) = 1;
      }

      v246 = 4 << v35;
      v247 = v31 >> 14;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v36 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v36 = v30 & 0xFFFFFFFFFFFFLL;
      }

      v242 = v19 & 0xFFFFFFFFFFFFFFLL;
      v243 = v36;
      v241 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v21 = 1;
      v23 = v20;
      v14 = v20;
      v244 = a1;
      while (1)
      {
        v22 = v14;
        if (a1)
        {
          break;
        }

        v84 = v249;
        v85 = v30;
        v86 = String._quickASCIICharacter(at:limitedBy:)(v14, v249, v30, v19);
        if (v88 == 2)
        {
          a1 = v20;
          v89 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v14, v84, v252 != 0, v85, v19);
          if (v90)
          {
            v34 = v21 - 1;
            v22 = v23;
            goto LABEL_470;
          }

          v14 = v89;
          v30 = v251;
          v33 = v247;
          a1 = v244;
        }

        else
        {
          v33 = v247;
          if ((v86 - 14) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            v22 = v23;
LABEL_470:
            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_524;
            }

            if ((v245 & (v34 != 0)) != 0)
            {
              v224 = 0;
              goto LABEL_510;
            }

LABEL_473:
            v20 = 0;
            v22 = 0;
            v224 = 1;
            goto LABEL_510;
          }

          v14 = v87;
          v30 = v251;
          v19 = v248;
          a1 = v244;
        }

LABEL_120:
        ++v34;
        if (v21)
        {
          v83 = v20;
        }

        else
        {
          v83 = v14;
        }

        if ((v21 & 0x8000000000000000) == 0)
        {
          v20 = v83;
        }

        ++v21;
        v23 = v22;
        if (v33 <= v14 >> 14)
        {
          v34 = v21 - 1;
          goto LABEL_470;
        }
      }

      if (!v252)
      {
        v92 = String.index(after:)();
LABEL_138:
        v30 = v251;
        v14 = v92;
        goto LABEL_120;
      }

      if ((v14 & 0xC) == v246 || (v14 & 1) == 0)
      {
        v91 = v14;
        if ((v14 & 0xC) == v246)
        {
          v91 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, v30, v19);
          v30 = v251;
        }

        if (v243 <= v91 >> 16)
        {
          goto LABEL_537;
        }

        if ((v91 & 1) == 0)
        {
          v95 = v91;
          v96 = _StringGuts.scalarAlignSlow(_:)(v91, v30, v19);
          v30 = v251;
          v97 = v95 & 0xC;
          v22 = v14;
          v91 = v97 | v96 & 0xFFFFFFFFFFFFFFF3 | 1;
          if ((v19 & 0x1000000000000000) == 0)
          {
LABEL_144:
            v93 = v91 >> 16;
            if ((v19 & 0x2000000000000000) != 0)
            {
              v257 = v30;
              v258 = v242;
              v80 = *(&v257 + v93);
            }

            else
            {
              v94 = v241;
              if ((v30 & 0x1000000000000000) == 0)
              {
                v94 = _StringObject.sharedUTF8.getter();
                v30 = v251;
              }

              v80 = *(v94 + v93);
            }

            v81 = v80;
            v82 = __clz(v80 ^ 0xFF) - 24;
            if (v81 >= 0)
            {
              LOBYTE(v82) = 1;
            }

            v14 = ((v93 + v82) << 16) | 5;
            goto LABEL_120;
          }

          goto LABEL_149;
        }
      }

      else
      {
        v91 = v14;
        if (v243 <= v14 >> 16)
        {
          goto LABEL_536;
        }
      }

      if ((v19 & 0x1000000000000000) == 0)
      {
        goto LABEL_144;
      }

LABEL_149:
      v92 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_138;
    }

    if (v14)
    {
      v131 = v31 >> 14;
      if (v31 >> 14 <= v20 >> 14)
      {
        goto LABEL_524;
      }

      v132 = v20;
      v245 = v22;
      v133 = 0;
      v134 = (v30 >> 59) & 1;
      if ((v19 & 0x1000000000000000) == 0)
      {
        LOBYTE(v134) = 1;
      }

      v135 = 4 << v134;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v136 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v136 = v30 & 0xFFFFFFFFFFFFLL;
      }

      v246 = v19 & 0xFFFFFFFFFFFFFFLL;
      v247 = v136;
      v243 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v137 = v20;
      while (1)
      {
        v23 = v132;
        if (a1)
        {
          break;
        }

        v21 = v30;
        v151 = String._quickASCIICharacter(at:limitedBy:)(v132, v31, v30, v19);
        if (v153 == 2)
        {
          v132 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v23, v31, v252 != 0, v21, v19);
          if (v154)
          {
            goto LABEL_448;
          }

          v30 = v251;
          v31 = v249;
        }

        else
        {
          if ((v151 - 14) >= 0xFFFFFFFFFFFFFFFCLL)
          {
LABEL_448:
            v132 = v23;
            v23 = v137;
            v149 = v133;
LABEL_449:
            if ((v245 & (v149 != 1)) != 0)
            {
              v221 = v20;
            }

            else
            {
              v221 = 0;
            }

            if ((v245 & (v149 != 1)) != 0)
            {
              v222 = v23;
            }

            else
            {
              v222 = 0;
            }

            v223 = v149 < 1;
            if (v149 >= 1)
            {
              v14 = v132;
            }

            else
            {
              v14 = 0;
            }

            if (v149 >= 1)
            {
              v20 = v221;
            }

            else
            {
              v20 = 0;
            }

            if (v149 >= 1)
            {
              v22 = v222;
            }

            else
            {
              v22 = 0;
            }

            v224 = v149 >= 1 && (v245 & (v149 != 1)) == 0;
            if (!v223)
            {
              goto LABEL_510;
            }

            goto LABEL_524;
          }

          v132 = v152;
          v30 = v251;
          v19 = v248;
          v31 = v249;
        }

LABEL_249:
        v149 = v133 + 1;
        if (v133)
        {
          v150 = v20;
        }

        else
        {
          v150 = v132;
        }

        if (v149 >= 0)
        {
          v20 = v150;
        }

        ++v133;
        v137 = v23;
        if (v131 <= v132 >> 14)
        {
          goto LABEL_449;
        }
      }

      if (!v252)
      {
        v132 = String.index(after:)();
LABEL_267:
        v30 = v251;
        goto LABEL_249;
      }

      if ((v132 & 0xC) == v135 || (v132 & 1) == 0)
      {
        if ((v132 & 0xC) == v135)
        {
          v132 = _StringGuts._slowEnsureMatchingEncoding(_:)(v132, v30, v19);
          v30 = v251;
        }

        if (v247 <= v132 >> 16)
        {
          goto LABEL_544;
        }

        if ((v132 & 1) == 0)
        {
          v157 = v132;
          v158 = _StringGuts.scalarAlignSlow(_:)(v132, v30, v19);
          v30 = v251;
          v132 = v157 & 0xC | v158 & 0xFFFFFFFFFFFFFFF3 | 1;
          if ((v19 & 0x1000000000000000) == 0)
          {
LABEL_273:
            v155 = v132 >> 16;
            if ((v19 & 0x2000000000000000) != 0)
            {
              v257 = v30;
              v258 = v246;
              v146 = *(&v257 + v155);
            }

            else
            {
              v156 = v243;
              if ((v30 & 0x1000000000000000) == 0)
              {
                v156 = _StringObject.sharedUTF8.getter();
                v30 = v251;
              }

              v146 = *(v156 + v155);
            }

            v147 = v146;
            v148 = __clz(v146 ^ 0xFF) - 24;
            if (v147 >= 0)
            {
              LOBYTE(v148) = 1;
            }

            v132 = ((v155 + v148) << 16) | 5;
            goto LABEL_249;
          }

          goto LABEL_278;
        }
      }

      else if (v247 <= v132 >> 16)
      {
        goto LABEL_543;
      }

      if ((v19 & 0x1000000000000000) == 0)
      {
        goto LABEL_273;
      }

LABEL_278:
      v132 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_267;
    }

    v245 = v22;
    v246 = (a1 >> 27);
    if (!v247)
    {
      v21 = 0;
      v23 = v20;
      v14 = v20;
LABEL_413:
      v22 = v23;
      v215 = v21;
      if (v21 < v246)
      {
        goto LABEL_524;
      }

      goto LABEL_521;
    }

    v186 = v31 >> 14;
    v187 = (v30 >> 59) & 1;
    if ((v19 & 0x1000000000000000) == 0)
    {
      LOBYTE(v187) = 1;
    }

    v188 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v188 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v240 = v188;
    if (v186 <= v20 >> 14)
    {
      LOBYTE(v190) = 0;
      v215 = 0;
      v22 = v20;
      v14 = v20;
      goto LABEL_519;
    }

    v189 = 0;
    v190 = 0;
    v241 = 4 << v187;
    v238 = v19 & 0xFFFFFFFFFFFFFFLL;
    v237 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v21 = 1;
    v14 = v20;
    v23 = v20;
    v242 = v186;
    while (1)
    {
      v22 = v23;
      v23 = v14;
      if (a1)
      {
        if (v252)
        {
          if ((v14 & 0xC) == v241 || (v14 & 1) == 0)
          {
            v198 = v14;
            if ((v14 & 0xC) == v241)
            {
              v198 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, v30, v19);
              v30 = v251;
            }

            if (v240 <= v198 >> 16)
            {
              goto LABEL_548;
            }

            if (v198)
            {
              goto LABEL_369;
            }

            v205 = v198;
            v206 = _StringGuts.scalarAlignSlow(_:)(v198, v30, v19);
            v30 = v251;
            v198 = v205 & 0xC | v206 & 0xFFFFFFFFFFFFFFF3 | 1;
            if ((v19 & 0x1000000000000000) == 0)
            {
LABEL_370:
              v199 = v198 >> 16;
              if ((v19 & 0x2000000000000000) != 0)
              {
                v257 = v30;
                v258 = v238;
                v201 = *(&v257 + v199);
              }

              else
              {
                v200 = v237;
                if ((v30 & 0x1000000000000000) == 0)
                {
                  v200 = _StringObject.sharedUTF8.getter();
                }

                v201 = *(v200 + v199);
              }

              v202 = v201;
              v203 = __clz(v201 ^ 0xFF) - 24;
              if (v202 >= 0)
              {
                LOBYTE(v203) = 1;
              }

              v14 = ((v199 + v203) << 16) | 5;
              goto LABEL_378;
            }
          }

          else
          {
            v198 = v14;
            if (v240 <= v14 >> 16)
            {
              goto LABEL_547;
            }

LABEL_369:
            if ((v19 & 0x1000000000000000) == 0)
            {
              goto LABEL_370;
            }
          }

          v14 = String.UnicodeScalarView._foreignIndex(after:)();
          goto LABEL_378;
        }

        v14 = String.index(after:)();
      }

      else
      {
        v243 = v189;
        v191 = v249;
        v192 = v30;
        v193 = String._quickASCIICharacter(at:limitedBy:)(v14, v249, v30, v19);
        if (v195 == 2)
        {
          v239 = v190;
          v196 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v14, v191, v252 != 0, v192, v19);
          if (v197)
          {
            v215 = v243;
            LOBYTE(v190) = v239;
            goto LABEL_519;
          }

          v14 = v196;
        }

        else
        {
          if ((v193 - 14) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            v215 = v21 - 1;
LABEL_519:
            if ((v190 & 1) != 0 || v215 < v246)
            {
              goto LABEL_524;
            }

LABEL_521:
            if (v215 != 0 && (v245 & 1) != 0 && v246 < v215)
            {
              goto LABEL_511;
            }

            goto LABEL_516;
          }

          v14 = v194;
          v19 = v248;
        }

        v186 = v242;
        v189 = v243;
      }

LABEL_378:
      if (v246 == v21)
      {
        v204 = v14;
      }

      else
      {
        v204 = v20;
      }

      if ((v21 & 0x8000000000000000) == 0)
      {
        v20 = v204;
      }

      if ((v21 & 0x8000000000000000) == 0 && v21 >= v247)
      {
        goto LABEL_413;
      }

      v190 = v21++ >> 63;
      ++v189;
      v30 = v251;
      if (v186 <= v14 >> 14)
      {
        v215 = v21 - 1;
        v22 = v23;
        goto LABEL_519;
      }
    }
  }

  if (!v26)
  {
    v48 = *v2;
    v23 = v2[1];
    v49 = v2[15];
    v50 = *(v49 + 16);
    if (!v25)
    {
      v245 = v22;
      if (!v14)
      {
        if (a1 >= v50)
        {
          goto LABEL_546;
        }

        v20 = v2[11];
        v246 = (a1 >> 27);
        if (v247)
        {
          v159 = v49 + 24 * a1;
          v21 = *(v159 + 32);
          a1 = *(v159 + 40);
          v160 = *(v159 + 48);
          v161 = v2[10];
          v19 = v48;
          v162 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(v21, a1, v160, v20, v161, v252 != 0, v48, v23);
          if (v163)
          {
            LOBYTE(v164) = 0;
            v165 = 0;
            v22 = v20;
            v14 = v20;
            goto LABEL_476;
          }

          v216 = 1;
          v14 = v20;
          while (1)
          {
            v22 = v14;
            v165 = v216;
            v14 = v162;
            if (v246 == v216)
            {
              v218 = v162;
            }

            else
            {
              v218 = v20;
            }

            if ((v165 & 0x8000000000000000) == 0)
            {
              v20 = v218;
            }

            if ((v165 & 0x8000000000000000) == 0 && v165 >= v247)
            {
              break;
            }

            v162 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(v21, a1, v160, v162, v161, v252 != 0, v19, v23);
            v216 = v165 + 1;
            if (v217)
            {
              v164 = v165 >> 63;
LABEL_476:
              if ((v164 & 1) != 0 || v165 < v246)
              {
                goto LABEL_524;
              }

LABEL_478:
              if (v165 != 0 && (v245 & 1) != 0 && v246 < v165)
              {
                goto LABEL_511;
              }

              goto LABEL_516;
            }
          }

          v12 = v246;
        }

        else
        {
          v165 = 0;
          v22 = v20;
          v14 = v20;
        }

        if (v165 < v12)
        {
          goto LABEL_524;
        }

        goto LABEL_478;
      }

      v249 = v23;
      if (a1 >= v50)
      {
        goto LABEL_545;
      }

      v98 = v49 + 24 * a1;
      v99 = *(v98 + 32);
      v101 = *(v98 + 40);
      v100 = *(v98 + 48);
      v102 = v2[10];
      v20 = v2[11];
      v19 = v48;
      v103 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(*(v98 + 32), v101, v100, v20, v102, v252 != 0, v48, v249);
      if (v104)
      {
        goto LABEL_524;
      }

      v105 = v103;
      LODWORD(v251) = v99;
      v106 = v100;
      v70 = -1;
      v14 = v20;
      v23 = v102;
      v21 = v252;
      a1 = v249;
      do
      {
        v22 = v14;
        v14 = v105;
        v107 = v70 + 2;
        if (__CFADD__(v70++, 1))
        {
          v109 = v105;
        }

        else
        {
          v109 = v20;
        }

        if (v107 >= 0)
        {
          v20 = v109;
        }

        v105 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(v251, v101, v106, v105, v23, v21 != 0, v19, a1);
      }

      while ((v110 & 1) == 0);
      if (v70 > 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_524;
      }

      goto LABEL_436;
    }

    if (a1 >= v50)
    {
      goto LABEL_538;
    }

    v51 = v2[1];
    v52 = v49 + 24 * a1;
    a1 = *(v52 + 32);
    v54 = *(v52 + 40);
    v53 = *(v52 + 48);
    v55 = v2[10];
    v20 = v2[11];
    v23 = *v2;
    v56 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(*(v52 + 32), v54, v53, v20, v55, v252 != 0, v48, v51);
    if ((v57 & 1) == 0)
    {
      v58 = v56;
      v245 = v22;
      v59 = 1;
      v60 = v20;
      v251 = v55;
      v19 = v252;
      v61 = v53;
      do
      {
        v21 = v60;
        v62 = v59;
        v60 = v58;
        v63 = v59 < 0;
        if (v59)
        {
          v64 = v20;
        }

        else
        {
          v64 = v58;
        }

        if (!v63)
        {
          v20 = v64;
        }

        v58 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(a1, v54, v61, v58, v251, v19 != 0, v23, v51);
        v59 = v62 + 1;
      }

      while ((v65 & 1) == 0);
      if (v62 < 0)
      {
        goto LABEL_524;
      }

      v14 = v60;
      v22 = v21;
      v66 = v59 == 1;
      goto LABEL_437;
    }

    goto LABEL_244;
  }

  v19 = v2[1];
  v251 = *v2;
  LODWORD(v249) = a1;
  a1 = v2[11];
  if (!v25)
  {
    if (v14)
    {
      v248 = v2[10] >> 14;
      if (v248 <= a1 >> 14)
      {
        goto LABEL_524;
      }

      v245 = v22;
      v111 = 0;
      v112 = (v251 >> 59) & 1;
      if ((v19 & 0x1000000000000000) == 0)
      {
        LOBYTE(v112) = 1;
      }

      v21 = 4 << v112;
      v243 = v251 & 0xFFFFFFFFFFFFLL;
      v244 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v113 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v113 = v251 & 0xFFFFFFFFFFFFLL;
      }

      v246 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v247 = v19 & 0xFFFFFFFFFFFFFFLL;
      v23 = a1;
      v14 = a1;
      while (1)
      {
        v116 = v14 & 0xC;
        v117 = (v14 & 1) == 0 || v116 == v21;
        v118 = v117;
        if (v117)
        {
          v119 = v14;
          if (v116 == v21)
          {
            v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, v251, v19);
          }

          v120 = v14 >> 16;
          if (v14 >> 16 >= v113)
          {
            __break(1u);
LABEL_533:
            __break(1u);
LABEL_534:
            __break(1u);
LABEL_535:
            __break(1u);
LABEL_536:
            __break(1u);
LABEL_537:
            __break(1u);
LABEL_538:
            __break(1u);
LABEL_539:
            __break(1u);
LABEL_540:
            __break(1u);
LABEL_541:
            __break(1u);
LABEL_542:
            __break(1u);
LABEL_543:
            __break(1u);
LABEL_544:
            __break(1u);
LABEL_545:
            __break(1u);
LABEL_546:
            __break(1u);
LABEL_547:
            __break(1u);
LABEL_548:
            __break(1u);
LABEL_549:
            __break(1u);
LABEL_550:
            __break(1u);
LABEL_551:
            __break(1u);
LABEL_552:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          if ((v14 & 1) == 0)
          {
            v120 = _StringGuts.scalarAlignSlow(_:)(v14, v251, v19) >> 16;
          }
        }

        else
        {
          v120 = v14 >> 16;
          v119 = v14;
          if (v14 >> 16 >= v113)
          {
            goto LABEL_533;
          }
        }

        if ((v19 & 0x1000000000000000) != 0)
        {
          v121 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((v19 & 0x2000000000000000) != 0)
          {
            v257 = v251;
            v258 = v247;
          }

          else if ((v251 & 0x1000000000000000) == 0)
          {
            v242 = v120;
            _StringObject.sharedUTF8.getter();
          }

          v121 = _decodeScalar(_:startingAt:)();
        }

        if (v121 != v249)
        {
          v14 = v119;
LABEL_484:
          v22 = v23;
          v114 = v111;
LABEL_485:
          v220 = v114 == 1;
          if (v114 >= 1)
          {
            goto LABEL_486;
          }

LABEL_524:
          Processor.signalFailure(preservingCaptures:)(0);
          return 0;
        }

        if (v118)
        {
          v122 = v119;
          if (v116 == v21)
          {
            v122 = _StringGuts._slowEnsureMatchingEncoding(_:)(v119, v251, v19);
            if (v113 <= v122 >> 16)
            {
              goto LABEL_534;
            }
          }

          else if (v113 <= v119 >> 16)
          {
            goto LABEL_534;
          }

          v22 = v119;
          if ((v122 & 1) == 0)
          {
            v123 = v122;
            v124 = _StringGuts.scalarAlignSlow(_:)(v122, v251, v19);
            v125 = v123 & 0xC;
            v22 = v119;
            v122 = v125 | v124 & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v22 = v119;
          v122 = v119;
          if (v113 <= v119 >> 16)
          {
            goto LABEL_535;
          }
        }

        if ((v19 & 0x1000000000000000) != 0)
        {
          v14 = String.UnicodeScalarView._foreignIndex(after:)();
          if (v252)
          {
            goto LABEL_171;
          }
        }

        else
        {
          v126 = v122 >> 16;
          if ((v19 & 0x2000000000000000) != 0)
          {
            v257 = v251;
            v258 = v247;
            v128 = *(&v257 + v126);
          }

          else
          {
            v127 = v246;
            if ((v251 & 0x1000000000000000) == 0)
            {
              v127 = _StringObject.sharedUTF8.getter();
            }

            v128 = *(v127 + v126);
          }

          v129 = v128;
          v130 = __clz(v128 ^ 0xFF) - 24;
          if (v129 >= 0)
          {
            LOBYTE(v130) = 1;
          }

          v14 = ((v126 + v130) << 16) | 5;
          if (v252)
          {
            goto LABEL_171;
          }
        }

        if ((String.isOnGraphemeClusterBoundary(_:)() & 1) == 0)
        {
          v14 = v22;
          goto LABEL_484;
        }

LABEL_171:
        v114 = v111 + 1;
        if (v111)
        {
          v115 = a1;
        }

        else
        {
          v115 = v14;
        }

        if (v114 >= 0)
        {
          a1 = v115;
        }

        ++v111;
        v23 = v22;
        if (v248 <= v14 >> 14)
        {
          goto LABEL_485;
        }
      }
    }

    v245 = v22;
    if (v247)
    {
      v166 = v2[10] >> 14;
      v167 = (v251 >> 59) & 1;
      if ((v19 & 0x1000000000000000) == 0)
      {
        LOBYTE(v167) = 1;
      }

      v239 = HIBYTE(v19) & 0xF;
      v238 = v251 & 0xFFFFFFFFFFFFLL;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v168 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v168 = v251 & 0xFFFFFFFFFFFFLL;
      }

      v248 = v166;
      if (v166 > a1 >> 14)
      {
        v21 = 0;
        v169 = 0;
        v244 = 4 << v167;
        v240 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v241 = v19 & 0xFFFFFFFFFFFFFFLL;
        v170 = 1;
        v171 = a1;
        v23 = a1;
        while (1)
        {
          v242 = v23;
          v243 = v169;
          v172 = v12;
          v23 = v171;
          v173 = v171 & 0xC;
          v39 = (v171 & 1) == 0;
          v174 = v244;
          v175 = v39 || v173 == v244;
          v176 = v175;
          if (v175)
          {
            v177 = v23;
            if (v173 == v244)
            {
              v177 = _StringGuts._slowEnsureMatchingEncoding(_:)(v23, v251, v19);
            }

            if (v177 >> 16 >= v168)
            {
              goto LABEL_539;
            }

            if ((v177 & 1) == 0)
            {
              _StringGuts.scalarAlignSlow(_:)(v177, v251, v19);
            }
          }

          else if (v23 >> 16 >= v168)
          {
            goto LABEL_540;
          }

          if ((v19 & 0x1000000000000000) != 0)
          {
            v178 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
          }

          else
          {
            if ((v19 & 0x2000000000000000) != 0)
            {
              v257 = v251;
              v258 = v241;
            }

            else if ((v251 & 0x1000000000000000) == 0)
            {
              _StringObject.sharedUTF8.getter();
              v174 = v244;
            }

            v178 = _decodeScalar(_:startingAt:)();
          }

          if (v178 != v249)
          {
            v21 = v170 - 1;
            v171 = v23;
            v12 = v172;
LABEL_502:
            v23 = v242;
            LOBYTE(v169) = v243;
            goto LABEL_503;
          }

          if (v176)
          {
            v179 = v23;
            if (v173 == v174)
            {
              v179 = _StringGuts._slowEnsureMatchingEncoding(_:)(v23, v251, v19);
              if (v168 <= v179 >> 16)
              {
                goto LABEL_542;
              }
            }

            else if (v168 <= v23 >> 16)
            {
              goto LABEL_542;
            }

            v12 = v172;
            if ((v179 & 1) == 0)
            {
              v179 = v179 & 0xC | _StringGuts.scalarAlignSlow(_:)(v179, v251, v19) & 0xFFFFFFFFFFFFFFF3 | 1;
            }
          }

          else
          {
            v179 = v23;
            v12 = v172;
            if (v168 <= v23 >> 16)
            {
              goto LABEL_541;
            }
          }

          if ((v19 & 0x1000000000000000) != 0)
          {
            v171 = String.UnicodeScalarView._foreignIndex(after:)();
            if (v252)
            {
              goto LABEL_332;
            }
          }

          else
          {
            v180 = v179 >> 16;
            if ((v19 & 0x2000000000000000) != 0)
            {
              v257 = v251;
              v258 = v241;
              v182 = *(&v257 + v180);
            }

            else
            {
              v181 = v240;
              if ((v251 & 0x1000000000000000) == 0)
              {
                v181 = _StringObject.sharedUTF8.getter();
              }

              v182 = *(v181 + v180);
            }

            v183 = v182;
            v184 = __clz(v182 ^ 0xFF) - 24;
            if (v183 >= 0)
            {
              LOBYTE(v184) = 1;
            }

            v171 = ((v180 + v184) << 16) | 5;
            if (v252)
            {
              goto LABEL_332;
            }
          }

          if ((String.isOnGraphemeClusterBoundary(_:)() & 1) == 0)
          {
            v171 = v23;
            goto LABEL_502;
          }

LABEL_332:
          if (v12 == v170)
          {
            v185 = v171;
          }

          else
          {
            v185 = a1;
          }

          if ((v170 & 0x8000000000000000) == 0)
          {
            a1 = v185;
          }

          if ((v170 & 0x8000000000000000) == 0 && v170 >= v247)
          {
            goto LABEL_410;
          }

          v169 = v170++ >> 63;
          ++v21;
          if (v248 <= v171 >> 14)
          {
            v21 = v170 - 1;
            goto LABEL_503;
          }
        }
      }

      LOBYTE(v169) = 0;
      v21 = 0;
      v23 = a1;
      v171 = a1;
LABEL_503:
      v224 = 0;
      v14 = 0;
      v228 = 1;
      v20 = 0;
      v22 = 0;
      if ((v169 & 1) != 0 || v21 < v12)
      {
LABEL_509:
        if ((v228 & 1) == 0)
        {
          goto LABEL_510;
        }

        goto LABEL_524;
      }
    }

    else
    {
      v170 = 0;
      v23 = a1;
      v171 = a1;
LABEL_410:
      v21 = v170;
      if (v170 < v12)
      {
        goto LABEL_524;
      }
    }

    if (v21 != 0 && (v245 & 1) != 0 && v21 > v12)
    {
      v224 = 0;
      v14 = v171;
      v20 = a1;
      v22 = v23;
      goto LABEL_510;
    }

    v20 = 0;
    v22 = 0;
    v228 = 0;
    v224 = 1;
    v14 = v171;
    goto LABEL_509;
  }

  v248 = v2[10] >> 14;
  if (v248 <= a1 >> 14)
  {
    v14 = a1;
    goto LABEL_491;
  }

  v245 = v22;
  v25 = 0;
  v27 = (v251 >> 59) & 1;
  if ((v19 & 0x1000000000000000) == 0)
  {
    LOBYTE(v27) = 1;
  }

  v21 = 4 << v27;
  v243 = v251 & 0xFFFFFFFFFFFFLL;
  v244 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v28 = v251 & 0xFFFFFFFFFFFFLL;
  }

  v246 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v247 = v19 & 0xFFFFFFFFFFFFFFLL;
  v29 = 1;
  v23 = a1;
  v14 = a1;
  while (1)
  {
    v38 = v14;
    v22 = v14 & 0xC;
    v39 = (v14 & 1) == 0 || v22 == v21;
    v20 = v39;
    if (v39)
    {
      if (v22 == v21)
      {
        v38 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, v251, v19);
      }

      v40 = v38 >> 16;
      if (v38 >> 16 >= v28)
      {
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
LABEL_528:
        __break(1u);
        goto LABEL_529;
      }

      if ((v38 & 1) == 0)
      {
        v40 = _StringGuts.scalarAlignSlow(_:)(v38, v251, v19) >> 16;
      }
    }

    else
    {
      v40 = v14 >> 16;
      if (v14 >> 16 >= v28)
      {
        goto LABEL_526;
      }
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v41 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        v257 = v251;
        v258 = v247;
      }

      else if ((v251 & 0x1000000000000000) == 0)
      {
        v242 = v40;
        _StringObject.sharedUTF8.getter();
      }

      v41 = _decodeScalar(_:startingAt:)();
    }

    if (v41 != v249)
    {
      break;
    }

    if (v20)
    {
      v42 = v14;
      if (v22 == v21)
      {
        v42 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, v251, v19);
        if (v28 <= v42 >> 16)
        {
          goto LABEL_528;
        }
      }

      else if (v28 <= v14 >> 16)
      {
        goto LABEL_528;
      }

      if ((v42 & 1) == 0)
      {
        v42 = v42 & 0xC | _StringGuts.scalarAlignSlow(_:)(v42, v251, v19) & 0xFFFFFFFFFFFFFFF3 | 1;
      }

      v22 = v14;
    }

    else
    {
      v22 = v14;
      v42 = v14;
      if (v28 <= v14 >> 16)
      {
        goto LABEL_527;
      }
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v14 = String.UnicodeScalarView._foreignIndex(after:)();
      if (v252)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v43 = v42 >> 16;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v257 = v251;
        v258 = v247;
        v45 = *(&v257 + v43);
      }

      else
      {
        v44 = v246;
        if ((v251 & 0x1000000000000000) == 0)
        {
          v44 = _StringObject.sharedUTF8.getter();
        }

        v45 = *(v44 + v43);
      }

      v46 = v45;
      v47 = __clz(v45 ^ 0xFF) - 24;
      if (v46 >= 0)
      {
        LOBYTE(v47) = 1;
      }

      v14 = ((v43 + v47) << 16) | 5;
      if (v252)
      {
        goto LABEL_39;
      }
    }

    if ((String.isOnGraphemeClusterBoundary(_:)() & 1) == 0)
    {
      v25 = v29 - 1;
      v14 = v22;
      break;
    }

LABEL_39:
    ++v25;
    if (v29)
    {
      v37 = a1;
    }

    else
    {
      v37 = v14;
    }

    if (v29 >= 0)
    {
      a1 = v37;
    }

    ++v29;
    v23 = v22;
    if (v248 <= v14 >> 14)
    {
      v25 = v29 - 1;
      goto LABEL_445;
    }
  }

  v22 = v23;
LABEL_445:
  if (v25 < 0)
  {
    goto LABEL_524;
  }

  v220 = v25 == 0;
LABEL_486:
  v225 = !v220;
  if (v245 & v225)
  {
    v224 = 0;
    v20 = a1;
    goto LABEL_510;
  }

LABEL_491:
  a1 = 0;
  v22 = 0;
  v224 = 1;
  v20 = 0;
LABEL_510:
  if (!v224)
  {
LABEL_511:
    v229 = v250[12];
    v25 = v229 + 1;
    if (!__OFADD__(v229, 1))
    {
      v21 = v250[20];
      v23 = v250[23];
      v19 = v250[24];
      a1 = v250[22];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_513;
      }

      goto LABEL_531;
    }

LABEL_530:
    __break(1u);
LABEL_531:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
LABEL_513:
    v231 = *(v23 + 16);
    v230 = *(v23 + 24);
    if (v231 >= v230 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v230 > 1), v231 + 1, 1, v23);
    }

    v254 = 1;
    v253 = 0;
    v232 = v252 >> 38;
    *(v23 + 16) = v231 + 1;
    v233 = v23 + 72 * v231;
    *(v233 + 32) = v25;
    *(v233 + 40) = 0;
    *(v233 + 48) = v254;
    v234 = v257;
    *(v233 + 52) = *(&v257 + 3);
    *(v233 + 49) = v234;
    *(v233 + 56) = v20;
    *(v233 + 64) = v22;
    *(v233 + 72) = v253;
    *(v233 + 73) = v232;
    LOWORD(v232) = WORD2(v255);
    *(v233 + 74) = v255;
    *(v233 + 78) = v232;
    *(v233 + 80) = v19;
    *(v233 + 88) = v21;
    *(v233 + 96) = a1;
    v250[23] = v23;
  }

LABEL_516:
  v250[11] = v14;
  return 1;
}

unint64_t String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(char a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, char a6, unint64_t a7, unint64_t a8)
{
  v16 = String._quickASCIICharacter(at:limitedBy:)(a4, a5, a7, a8);
  if (v18 == 2)
  {
    v19 = a4 >> 14;
    v20 = a5 >> 14;
    if (a6)
    {
      if (v19 >= v20)
      {
        return 0;
      }

      _StringGuts.validateScalarIndex(_:)(a4, a7, a8);
      if ((a8 & 0x1000000000000000) != 0)
      {
        v37 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        if (v37 >= 0x80)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((a8 & 0x2000000000000000) != 0)
        {
          v55 = a7;
          v56 = a8 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((a7 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v37 = _decodeScalar(_:startingAt:)();
        if (v37 >= 0x80)
        {
LABEL_38:
          if (a1)
          {
LABEL_73:
            v48 = _StringGuts.validateScalarIndex(_:)(a4, a7, a8);
            if ((a8 & 0x1000000000000000) != 0)
            {
              return String.UnicodeScalarView._foreignIndex(after:)();
            }

            v49 = v48 >> 16;
            if ((a8 & 0x2000000000000000) != 0)
            {
              v55 = a7;
              v56 = a8 & 0xFFFFFFFFFFFFFFLL;
              v51 = *(&v55 + v49);
            }

            else
            {
              if ((a7 & 0x1000000000000000) != 0)
              {
                v50 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                v50 = _StringObject.sharedUTF8.getter();
              }

              v51 = *(v50 + v49);
            }

            v52 = v51;
            v53 = __clz(v51 ^ 0xFF) - 24;
            if (v52 >= 0)
            {
              LOBYTE(v53) = 1;
            }

            return ((v49 + v53) << 16) | 5;
          }

          return 0;
        }
      }

      if (v37 >= 0x40)
      {
        v46 = a3;
      }

      else
      {
        v46 = a2;
      }

      v47 = (1 << v37) & v46;
      if (a1)
      {
        if (!v47)
        {
          goto LABEL_73;
        }
      }

      else if (v47)
      {
        goto LABEL_73;
      }

      return 0;
    }

    if (v19 >= v20)
    {
      return 0;
    }

    v30 = String.index(after:)();
    if (v20 >= v30 >> 14)
    {
      v33 = v30;
      v34 = String.subscript.getter();
      v36 = v35;
      if (v34 == 2573)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v31 = String.subscript.getter();
      if ((v31 ^ v32) < 0x4000)
      {

        return 0;
      }

      v33 = v32;
      v41 = Substring.subscript.getter();
      v36 = v42;

      if (v41 == 2573)
      {
LABEL_47:
        if (v36 == 0xE200000000000000)
        {
          goto LABEL_49;
        }
      }
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v43 = Character.asciiValue.getter();

      if ((v43 & 0x100) == 0)
      {
        result = v33;
        if (v43 > 0x3Fu)
        {
          if (v43 < 64)
          {
            if (a1)
            {
              return result;
            }

            return 0;
          }

          v44 = v43 & 0x3F;
          a2 = a3;
        }

        else
        {
          v44 = v43 & 0x3F;
        }

        v45 = (1 << v44) & a2;
        if (a1)
        {
          if (!v45)
          {
            return result;
          }
        }

        else if (v45)
        {
          return result;
        }

        return 0;
      }

LABEL_50:
      if (a1)
      {
        return v33;
      }

      return 0;
    }

LABEL_49:

    goto LABEL_50;
  }

  v21 = (a3 >> v16) & 1;
  if (v16 < 64)
  {
    LOBYTE(v21) = 0;
  }

  if (v16 <= 0x3F)
  {
    LOBYTE(v21) = (a2 >> v16) & 1;
  }

  v22 = v21 ^ a1;
  v23 = v21 ^ a1 ^ 1;
  if (v22)
  {
    result = v17;
  }

  else
  {
    result = 0;
  }

  if (v23 & 1) == 0 && (v18)
  {
    if ((a6 & 1) == 0)
    {
      if (a1)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }

    v25 = _StringGuts.validateInclusiveScalarIndex(_:)(v17, a7, a8);
    if (v25 < 0x4000)
    {
      __break(1u);
    }

    else if ((a8 & 0x1000000000000000) == 0)
    {
      if ((a8 & 0x2000000000000000) != 0)
      {
        v55 = a7;
        v56 = a8 & 0xFFFFFFFFFFFFFFLL;
        v38 = &v55 + (v25 >> 16);
        if ((*(v38 - 1) & 0xC0) == 0x80)
        {
          v28 = -2;
          do
          {
            v39 = v38[v28--] & 0xC0;
          }

          while (v39 == 128);
          goto LABEL_43;
        }
      }

      else
      {
        if ((a7 & 0x1000000000000000) != 0)
        {
          v26 = (a8 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v54 = v25;
          v26 = _StringObject.sharedUTF8.getter();
          v25 = v54;
        }

        v27 = v26 + (v25 >> 16);
        if ((*(v27 - 1) & 0xC0) == 0x80)
        {
          v28 = -2;
          do
          {
            v29 = *(v27 + v28--) & 0xC0;
          }

          while (v29 == 128);
LABEL_43:
          v40 = v28 + 1;
          return (v25 + (v40 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        }
      }

      v40 = -1;
      return (v25 + (v40 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
    }

    return String.UnicodeScalarView._foreignIndex(before:)();
  }

  return result;
}

uint64_t Processor.reset(currentPosition:searchBounds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  *(v3 + 88) = a1;
  *(v3 + 96) = 0;
  if (*(v3 + 152) == 1)
  {
    specialized MutableCollection._setAll(to:)(0);
    *&v17 = &type metadata for SentinelValue;
    specialized MutableCollection._setAll(to:)(&v15);
    __swift_destroy_boxed_opaque_existential_0(&v15);
    specialized MutableCollection._setAll(to:)(15);
  }

  v5 = (v3 + 184);
  if (*(*(v4 + 184) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v7 + 16));
    }

    else
    {
      v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17_StringProcessing9ProcessorV9SavePointV_Tt1g5(0, *(v7 + 24) >> 1);

      *v5 = v8;
    }
  }

  v9 = *(v4 + 192);
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *(v4 + 192);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_15:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v12 = 0;
    v13 = (v9 + 32);
    do
    {
      v15 = 0uLL;
      v16 = 1;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      v20 = 1;
      if (v12 >= *(v9 + 2))
      {
        __break(1u);
        goto LABEL_15;
      }

      ++v12;
      outlined assign with take of Processor._StoredCapture(&v15, v13);
      v13 += 72;
    }

    while (v10 != v12);
    *(v4 + 192) = v9;
  }

  *(v4 + 200) = 0;
  result = MEMORY[0x193ACF400](*(v4 + 208));
  *(v4 + 208) = 0;
  return result;
}

unint64_t String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(unint64_t result, int64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a3 & 0xC) == 4 << v9)
  {
LABEL_54:
    v26 = result;
    v7 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
    result = v26;
  }

  v11 = result;
  if ((result & 0xC) == v10)
  {
    v27 = result;
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
    result = v27;
  }

  result = _StringGuts.validateInclusiveScalarIndex(_:)(result, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v10 = 0;
    v18 = v11 >> 14;
    while (1)
    {
      if (v18 >= v7 && v7 >= result >> 14)
      {
        return 0;
      }

      if (result < 0x10000)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
        goto LABEL_45;
      }

      v19 = result >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v28 = a4;
        v29 = a5 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v19 - 1) & 0xC0) == 0x80)
        {
          v24 = -2;
          do
          {
            v25 = *(&v28 + v19 + v24--) & 0xC0;
          }

          while (v25 == 128);
          v23 = v24 + 1;
          goto LABEL_44;
        }
      }

      else
      {
        v20 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        if ((*(v20 + v19 - 1) & 0xC0) == 0x80)
        {
          v21 = -2;
          do
          {
            v22 = *(v20 + v19 + v21--) & 0xC0;
          }

          while (v22 == 128);
          v23 = v21 + 1;
          goto LABEL_44;
        }
      }

      v23 = -1;
LABEL_44:
      result = ((v23 + v19) << 16) | 5;
LABEL_45:
      if (--v10 <= a2)
      {
        if (v18 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }
  }

  v12 = v11 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while (v7 < v12 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v10)
      {
        __break(1u);
        goto LABEL_53;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        if (!--a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v28 = a4;
          v29 = a5 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v28 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = _StringObject.sharedUTF8.getter();
          }

          v13 = *(v17 + v16);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        result = ((v16 + v15) << 16) | 5;
        if (!--a2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  if (v7 >= v12 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall Processor.match(_:isCaseInsensitive:)(Swift::String _, Swift::Bool isCaseInsensitive)
{
  v3 = v2[10] >> 14;
  if (v3 <= v2[11] >> 14)
  {
    goto LABEL_17;
  }

  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[11];
  v10 = String.index(after:)();
  if (v3 >= v10 >> 14)
  {
    v13 = v10;
    v14 = String.subscript.getter();
    v16 = v15;
    if (!isCaseInsensitive)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v11 = String.subscript.getter();
  if ((v11 ^ v12) >= 0x4000)
  {
    v13 = v12;
    v21 = Substring.subscript.getter();
    v16 = v22;

    v14 = v21;
    if (!isCaseInsensitive)
    {
LABEL_10:
      if (v14 == countAndFlagsBits && v16 == object)
      {
        goto LABEL_12;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_15;
    }

LABEL_6:
    v17 = MEMORY[0x193ACE660](v14, v16);
    v19 = v18;

    if (v17 == MEMORY[0x193ACE660](countAndFlagsBits, object) && v19 == v20)
    {

LABEL_12:

      goto LABEL_16;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_15:

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v2[11] = v13;
    return 1;
  }

LABEL_17:
  Processor.signalFailure(preservingCaptures:)(0);
  return 0;
}

unint64_t String.matchSeq(_:at:limitedBy:isScalarSemantics:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7, unint64_t a8, unint64_t a9)
{
  v12 = a3;
  if (a7)
  {
    v49 = a1;
    v14 = a2 >> 14;
    if (a2 >> 14 == a1 >> 14)
    {
LABEL_43:
      if (a6 >> 14 >= a5 >> 14)
      {
        return a5;
      }

      else
      {
        return 0;
      }
    }

    v42 = a4 & 0xFFFFFFFFFFFFFFLL;

    v15 = a1;
    while (1)
    {
      _StringGuts.validateScalarIndex(_:in:)(v15, a1, a2, v12, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
        v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) == 0)
        {
          if ((v12 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v16 = _decodeScalar(_:startingAt:)();
          goto LABEL_12;
        }

        v47 = v12;
        v48 = v42;
        v17 = _decodeScalar(_:startingAt:)();
      }

      v16 = v17;
LABEL_12:
      Substring.UnicodeScalarView.formIndex(after:)();
      if (a6 >> 14 <= a5 >> 14)
      {
        goto LABEL_47;
      }

      _StringGuts.validateScalarIndex(_:)(a5, a8, a9);
      if ((a9 & 0x1000000000000000) != 0)
      {
        if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != v16)
        {
          goto LABEL_47;
        }

        _StringGuts.validateScalarIndex(_:)(a5, a8, a9);
        a5 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((a9 & 0x2000000000000000) != 0)
        {
          v47 = a8;
          v48 = a9 & 0xFFFFFFFFFFFFFFLL;
          if (_decodeScalar(_:startingAt:)() != v16)
          {
            goto LABEL_47;
          }

          v20 = _StringGuts.validateScalarIndex(_:)(a5, a8, a9) >> 16;
          v47 = a8;
          v48 = a9 & 0xFFFFFFFFFFFFFFLL;
          v21 = *(&v47 + v20);
        }

        else
        {
          if ((a8 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          if (_decodeScalar(_:startingAt:)() != v16)
          {
            goto LABEL_47;
          }

          v18 = _StringGuts.validateScalarIndex(_:)(a5, a8, a9);
          v19 = (a9 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a8 & 0x1000000000000000) == 0)
          {
            v24 = v18;
            v19 = _StringObject.sharedUTF8.getter();
            v18 = v24;
          }

          v20 = v18 >> 16;
          v21 = *(v19 + v20);
        }

        v22 = v21;
        v23 = __clz(v21 ^ 0xFF) - 24;
        if (v22 >= 0)
        {
          LOBYTE(v23) = 1;
        }

        a5 = ((v20 + v23) << 16) | 5;
      }

      v12 = a3;
      v15 = v49;
      if (v14 == v49 >> 14)
      {

        goto LABEL_43;
      }
    }
  }

  if ((a1 ^ a2) < 0x4000)
  {
    goto LABEL_43;
  }

  v25 = a6 >> 14;
  while (1)
  {
    v27 = Substring.subscript.getter();
    v29 = v28;
    v30 = Substring.index(after:)();
    if (v25 <= a5 >> 14)
    {
      break;
    }

    v31 = v30;
    v32 = String.index(after:)();
    if (v25 >= v32 >> 14)
    {
      v38 = v32;
      v39 = String.subscript.getter();
      v37 = v40;
      a5 = v38;
      if (v39 != v27)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v33 = String.subscript.getter();
      if ((v33 ^ v34) < 0x4000)
      {

        break;
      }

      a5 = v34;
      v35 = Substring.subscript.getter();
      v37 = v36;

      if (v35 != v27)
      {
        goto LABEL_32;
      }
    }

    if (v37 == v29)
    {

      goto LABEL_33;
    }

LABEL_32:
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      return 0;
    }

LABEL_33:
    v25 = a6 >> 14;
    if ((v31 ^ a2) < 0x4000)
    {
      goto LABEL_43;
    }
  }

LABEL_47:

  return 0;
}

uint64_t Processor.matchScalar(_:boundaryCheck:isCaseInsensitive:)(int a1, int a2, char a3)
{
  v37 = a2;
  v6 = type metadata accessor for Unicode.Scalar.Properties();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = v3[11];
  if (v14 >> 14 >= v3[10] >> 14)
  {
    goto LABEL_30;
  }

  v15 = v3[1];
  v16 = v3[11];
  v38 = *v3;
  _StringGuts.validateScalarIndex(_:)(v16, v38, v15);
  if ((v15 & 0x1000000000000000) != 0)
  {
    v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_16:
    v26 = v38;
    if (v17 != a1)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    v39 = v38;
    v40 = v15 & 0xFFFFFFFFFFFFFFLL;
  }

  else if ((v38 & 0x1000000000000000) == 0)
  {
    _StringObject.sharedUTF8.getter();
  }

  v17 = _decodeScalar(_:startingAt:)();
  if ((a3 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v36 = v3;
  Unicode.Scalar.properties.getter();
  v35 = Unicode.Scalar.Properties.lowercaseMapping.getter();
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v13, v6);
  Unicode.Scalar.properties.getter();
  v21 = Unicode.Scalar.Properties.lowercaseMapping.getter();
  v23 = v22;
  v20(v11, v6);
  if (v35 == v21 && v19 == v23)
  {

    v3 = v36;
    v26 = v38;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v36;
    v26 = v38;
    if ((v25 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_17:
  v27 = _StringGuts.validateScalarIndex(_:)(v14, v26, v15);
  if ((v15 & 0x1000000000000000) != 0)
  {
    v31 = String.UnicodeScalarView._foreignIndex(after:)();
    if ((v37 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v28 = v27 >> 16;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v39 = v26;
      v40 = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v39 + v28);
    }

    else
    {
      if ((v26 & 0x1000000000000000) != 0)
      {
        v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    v32 = v30;
    v33 = __clz(v30 ^ 0xFF) - 24;
    if (v32 >= 0)
    {
      LOBYTE(v33) = 1;
    }

    v31 = ((v28 + v33) << 16) | 5;
    if ((v37 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (String.isOnGraphemeClusterBoundary(_:)())
  {
LABEL_29:
    v3[11] = v31;
    return 1;
  }

LABEL_30:
  Processor.signalFailure(preservingCaptures:)(0);
  return 0;
}

unint64_t String.matchUTF8(_:at:limitedBy:boundaryCheck:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v27 = a4;
    v9 = (a1 + 32);
    v10 = a3 >> 14;
    v11 = (a5 >> 59) & 1;
    if ((a6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v28 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v29 = a6 & 0xFFFFFFFFFFFFFFLL;
    result = a2;
    while (1)
    {
      while (1)
      {
        if (v10 <= result >> 14)
        {
          return 0;
        }

        v16 = *v9++;
        v15 = v16;
        v17 = result & 0xC;
        v18 = result;
        if (v17 == v12)
        {
          v26 = result;
          v18 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
          result = v26;
        }

        v19 = v18 >> 16;
        if (v18 >> 16 >= v13)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        if ((a6 & 0x1000000000000000) != 0)
        {
          v21 = result;
          v22 = String.UTF8View._foreignSubscript(position:)();
          result = v21;
          if (v15 != v22)
          {
            return 0;
          }
        }

        else
        {
          if ((a6 & 0x2000000000000000) != 0)
          {
            v30[0] = a5;
            v30[1] = v29;
            v20 = v30;
          }

          else
          {
            v20 = v28;
            if ((a5 & 0x1000000000000000) == 0)
            {
              v25 = result;
              v20 = _StringObject.sharedUTF8.getter();
              result = v25;
            }
          }

          if (v15 != *(v20 + v19))
          {
            return 0;
          }
        }

        if (v17 != v12)
        {
          break;
        }

        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
        if ((a6 & 0x1000000000000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_8:
        result = (result & 0xFFFFFFFFFFFF0000) + 65540;
        if (!--v8)
        {
          goto LABEL_30;
        }
      }

      if ((a6 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (v13 <= result >> 16)
      {
        goto LABEL_36;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (!--v8)
      {
LABEL_30:
        a4 = v27;
        if (v10 < result >> 14)
        {
          return 0;
        }

        goto LABEL_31;
      }
    }
  }

  result = a2;
  if (a3 >> 14 < a2 >> 14)
  {
    return 0;
  }

LABEL_31:
  if (a4)
  {
    v23 = result;
    v24 = String.isOnGraphemeClusterBoundary(_:)();
    result = v23;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t Processor.clearThrough(_:)(uint64_t a1)
{
  v3 = *(v1 + 184);
  while (*(v3 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v5 = *(v3 + 16);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
      v5 = *(result + 16);
      if (!v5)
      {
LABEL_8:
        __break(1u);
LABEL_9:
        *(v1 + 184) = v3;
        v12 = *(v1 + 96);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (!v13)
        {
          *(v1 + 96) = v14;
          return result;
        }

        __break(1u);
        break;
      }
    }

    v6 = v5 - 1;
    v7 = (v3 + 72 * v5);
    v8 = *(v7 - 5);
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    *(v3 + 16) = v6;

    if (v8 == a1)
    {
      goto LABEL_9;
    }
  }

  *(v1 + 184) = v3;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Processor.cycle()()
{
  v8 = *(v1 + 96);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
LABEL_52:
    if (v0 >= *(v2 + 16))
    {
      __break(1u);
LABEL_152:
      v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_5:
      if (v2 >= *(v0 + 16))
      {
        __break(1u);
LABEL_154:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
LABEL_55:
        v79 = *(v5 + 16);
        v78 = *(v5 + 24);
        if (v79 >= v78 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v5);
        }

        *(v5 + 16) = v79 + 1;
        v80 = (v5 + 72 * v79);
        *(v80 + 4) = v0;
        *(v80 + 5) = 0;
        v80[48] = v135;
        v81 = v142;
        *(v80 + 13) = *(v7 + 3);
        *(v80 + 49) = v81;
        *(v80 + 7) = 0;
        *(v80 + 8) = 0;
        v80[72] = v148;
        v80[73] = 0;
        LOWORD(v81) = WORD2(v140[0]);
        *(v80 + 74) = v140[0];
        *(v80 + 39) = v81;
        *(v80 + 10) = v3;
        *(v80 + 11) = v2;
LABEL_97:
        *(v80 + 12) = v4;
        *(v1 + 184) = v5;
      }

      else
      {
        *(v0 + 8 * v2 + 32) = v3;
        *(v1 + 160) = v0;
      }
    }

    else
    {
      *(v2 + 8 * v0 + 32) = v3;
      *(v1 + 176) = v2;
    }

    goto LABEL_105;
  }

  v9 = *(v1 + 40);
  if (v8 >= *(v9 + 16))
  {
    goto LABEL_141;
  }

  v7 = &v142;
  v3 = *(v9 + 8 * v8 + 32);
  v0 = v3 & 0xFFFFFFFFFFFFFFLL;
  switch(specialized Instruction.OpCode.init(rawValue:)(HIBYTE(v3)))
  {
    case 1u:
      v2 = WORD1(v3);
      *(v1 + 152) = 1;
      v0 = *(v1 + 160);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }

      goto LABEL_152;
    case 2u:
      v3 = *(v1 + 88);
      *(v1 + 152) = 1;
      v2 = *(v1 + 176);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_52;
      }

      goto LABEL_150;
    case 3u:
      v96 = *(v1 + 176);
      if (v0 < *(v96 + 16))
      {
        v30 = *(v96 + 8 * v0 + 32);
        goto LABEL_73;
      }

      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
LABEL_85:
      if (v0 < *(v2 + 16))
      {
        v106 = v2 + 72 * v0;
        *(v106 + 88) = v3;
        *(v106 + 96) = 0;
        goto LABEL_104;
      }

      __break(1u);
LABEL_159:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
LABEL_94:
      v110 = *(v5 + 16);
      v109 = *(v5 + 24);
      if (v110 >= v109 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v5);
      }

      *(v5 + 16) = v110 + 1;
      v80 = (v5 + 72 * v110);
      *(v80 + 4) = v0;
      *(v80 + 5) = v2;
      v80[48] = v135;
      v111 = v142;
      *(v80 + 13) = *(&v142 + 3);
      *(v80 + 49) = v111;
      *(v80 + 7) = 0;
      *(v80 + 8) = 0;
      v80[72] = v148;
      v80[73] = 0;
      LOWORD(v111) = WORD2(v140[0]);
      *(v80 + 74) = v140[0];
      *(v80 + 39) = v111;
      *(v80 + 10) = v3;
      *(v80 + 11) = v134;
      goto LABEL_97;
    case 4u:
      goto LABEL_67;
    case 5u:
      v2 = WORD1(v3);
      v0 = *(v1 + 160);
      if (WORD1(v3) >= *(v0 + 16))
      {
        goto LABEL_156;
      }

      v97 = *(v0 + 8 * WORD1(v3) + 32);
      if (!v97)
      {
        goto LABEL_113;
      }

      v3 = v97 - 1;
      if (__OFSUB__(v97, 1))
      {
        goto LABEL_165;
      }

      *(v1 + 152) = 1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_78;
      }

      goto LABEL_166;
    case 6u:
      v55 = *(v1 + 176);
      if (WORD1(v3) >= *(v55 + 16))
      {
        goto LABEL_147;
      }

      if ((*(v1 + 88) ^ *(v55 + 8 * WORD1(v3) + 32)) >> 14)
      {
        goto LABEL_105;
      }

LABEL_113:
      v91 = v3;
      goto LABEL_106;
    case 7u:
      v56 = v3;
      v57 = WORD1(v3);
      v58 = *v1;
      v59 = *(v1 + 8);
      v60 = *(v1 + 80);
      v61 = *(v1 + 88);
      if (v56 == 1)
      {
        v62 = *(v1 + 88);
        v63 = v57;
        goto LABEL_37;
      }

      v128 = *(v1 + 88);
      v129 = *(v1 + 80);
      v130 = *v1;
      v131 = *(v1 + 8);
      v64 = String.index(_:offsetBy:limitedBy:)();
      if ((v132 & 1) == 0)
      {
        goto LABEL_129;
      }

      if (v57 == 1)
      {
        v62 = v61;
        v63 = 1;
LABEL_37:
        v64 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(v62, v63, v60, v58, v59);
        if (v65)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }

      goto LABEL_130;
    case 8u:
      v31 = *(v1 + 104);
      if (WORD1(v3) >= *(v31 + 16))
      {
        goto LABEL_143;
      }

      v32 = v3 == 1;
      v33 = v31 + 16 * WORD1(v3);
      v34 = *(v33 + 32);
      v3 = *(v33 + 40);

      v35._countAndFlagsBits = v34;
      v35._object = v3;
      v2 = v1;
      v0 = Processor.match(_:isCaseInsensitive:)(v35, v32);

      if ((v0 & 1) == 0)
      {
        return;
      }

      v36 = *(v1 + 96);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_169;
      }

      *(v1 + 96) = v38;
      return;
    case 9u:
      v0 = v1;
      if ((Processor.matchScalar(_:boundaryCheck:isCaseInsensitive:)(v3, (v3 >> 54) & 1, (v3 & 0x80000000000000) != 0) & 1) == 0)
      {
        return;
      }

      v68 = *(v1 + 96);
      v37 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (!v37)
      {
        goto LABEL_89;
      }

      __break(1u);
LABEL_46:
      v70 = *(v1 + 128);
      if (v0 >= *(v70 + 16))
      {
        goto LABEL_149;
      }

      v72 = *(v1 + 80);
      v71 = *(v1 + 88);
      v73 = v72 >> 14;
      if (v72 >> 14 <= v71 >> 14)
      {
        goto LABEL_130;
      }

      v74 = v70 + 16 * v0;
      v76 = *(v74 + 32);
      v75 = *(v74 + 40);
      v77 = *(v1 + 8);
      *&v142 = *v1;
      *(&v142 + 1) = v77;
      *&v140[0] = v71;
      *(&v140[0] + 1) = v72;

      v76(&v135, &v142, v140);

      if (BYTE8(v135))
      {
        goto LABEL_130;
      }

      v30 = v135;
      if (v73 < v135 >> 14)
      {
        goto LABEL_130;
      }

      goto LABEL_73;
    case 0xAu:
      v11 = *(v1 + 112);
      if (WORD1(v3) >= *(v11 + 16))
      {
        goto LABEL_142;
      }

      v12 = v3 == 1;
      v13 = *(v11 + 8 * WORD1(v3) + 32);
      v14 = *v1;
      v15 = *(v1 + 8);
      v17 = *(v1 + 80);
      v16 = *(v1 + 88);

      v19 = String.matchUTF8(_:at:limitedBy:boundaryCheck:)(v18, v16, v17, v12, v14, v15);
      LOBYTE(v14) = v20;

      if (v14)
      {
        goto LABEL_130;
      }

      goto LABEL_112;
    case 0xBu:
      v66 = *(v1 + 120);
      if (WORD1(v3) >= *(v66 + 16))
      {
        goto LABEL_148;
      }

      v64 = String.matchASCIIBitset(_:at:limitedBy:isScalarSemantics:)(*(v66 + 24 * WORD1(v3) + 32), *(v66 + 24 * WORD1(v3) + 40), *(v66 + 24 * WORD1(v3) + 48), *(v1 + 88), *(v1 + 80), v3 == 1, *v1, *(v1 + 8));
      if ((v67 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_130;
    case 0xCu:
      v98 = specialized _CharacterClassModel.Representation.init(rawValue:)(v3);
      v100 = *(v1 + 80);
      v99 = *(v1 + 88);
      if (v99 >> 14 >= v100 >> 14)
      {
        goto LABEL_130;
      }

      v101 = *v1;
      v102 = *(v1 + 8);
      v103 = v98;
      v64 = String._quickMatch(_:at:limitedBy:isScalarSemantics:)(v98, *(v1 + 88), *(v1 + 80), (v3 & 0x20000000000000) != 0, *v1, v102);
      if (v104 == 2)
      {
        v64 = String._thoroughMatchBuiltinCC(_:at:limitedBy:isInverted:isStrictASCII:isScalarSemantics:)(v103, v99, v100, (v3 >> 55) & 1, (v3 & 0x40000000000000) != 0, (v3 >> 53) & 1, v101, v102);
        if (v105)
        {
          goto LABEL_130;
        }
      }

      else if ((((v3 >> 55) & 1 ^ v104) & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_129:
      v91 = v8 + 1;
      *(v1 + 88) = v64;
      goto LABEL_106;
    case 0xDu:
      v22 = *(v1 + 80);
      v21 = *(v1 + 88);
      if (v21 >> 14 >= v22 >> 14)
      {
        goto LABEL_130;
      }

      v23 = *v1;
      v24 = *(v1 + 8);
      v25 = String._quickASCIICharacter(at:limitedBy:)(*(v1 + 88), *(v1 + 80), *v1, v24);
      if (v27 == 2)
      {
        v28 = String._thoroughMatchAnyNonNewline(at:limitedBy:isScalarSemantics:)(v21, v22, v0 == 1, v23, v24);
        if (v29)
        {
          goto LABEL_130;
        }

        v30 = v28;
        goto LABEL_73;
      }

      if ((v25 - 14) < 0xFFFFFFFFFFFFFFFCLL)
      {
        v30 = v26;
LABEL_73:
        *(v1 + 88) = v30;
        *(v1 + 96) = v8 + 1;
        return;
      }

LABEL_130:
      v115 = 0;
LABEL_131:

      Processor.signalFailure(preservingCaptures:)(v115);
      return;
    case 0xEu:
      goto LABEL_46;
    case 0xFu:
      v0 = v1;
      v2 = 0;
      if ((Processor.builtinAssert(by:)(v3 & 0xFFFFFFFFFFFFFFLL) & 1) == 0)
      {
        goto LABEL_130;
      }

      v107 = *(v1 + 96);
      v37 = __OFADD__(v107, 1);
      v69 = v107 + 1;
      if (!v37)
      {
        goto LABEL_89;
      }

      goto LABEL_168;
    case 0x10u:
      v41 = *(v1 + 144);
      if (v3 >= *(v41 + 16))
      {
        goto LABEL_145;
      }

      v42 = v41 + 16 * v3;
      v44 = *(v42 + 32);
      v43 = *(v42 + 40);
      v45 = *(v1 + 8);
      v47 = *(v1 + 80);
      v46 = *(v1 + 88);
      v48 = *(v1 + 72);
      *&v135 = *v1;
      *(&v135 + 1) = v45;
      v147 = v46;
      v148 = v48;
      v149 = v47;

      v44(&v142, &v135, &v147, &v148);

      if (!v144)
      {
        outlined destroy of SplitSequence<SubstringSearcher>(&v142, &_sSS5IndexV_yptSgMd, &_sSS5IndexV_yptSgMR);
        goto LABEL_135;
      }

      v2 = v142;
      outlined init with take of Any((&v142 + 8), v140);
      if (v47 >> 14 < v2 >> 14)
      {
        __swift_destroy_boxed_opaque_existential_0(v140);
LABEL_135:
        Processor.signalFailure(preservingCaptures:)(0);
        return;
      }

      v3 = WORD1(v3);
      outlined init with take of Any(v140, &v142);
      *(v1 + 152) = 1;
      v0 = *(v1 + 168);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_138;
      }

      goto LABEL_172;
    case 0x11u:
      v2 = *(v1 + 88);
      v108 = *(v1 + 160);
      v5 = *(v1 + 184);
      v3 = *(v1 + 192);
      LOBYTE(v135) = 0;
      LOBYTE(v148) = 1;
      v4 = *(v1 + 176);
      v134 = v108;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_94;
      }

      goto LABEL_159;
    case 0x12u:
      v2 = *(v1 + 160);
      v5 = *(v1 + 184);
      v3 = *(v1 + 192);
      LOBYTE(v135) = 1;
      LOBYTE(v148) = 1;
      v4 = *(v1 + 176);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_55;
      }

      goto LABEL_154;
    case 0x13u:
      v93 = v1;
      v95 = *(v1 + 184);
      v94 = v1 + 184;
      if (!*(v95 + 16))
      {
        goto LABEL_174;
      }

      specialized Array._customRemoveLast()(&v142);
      if (v145)
      {
        v140[2] = v144;
        v140[3] = v145;
        v141 = v146;
        v140[0] = v142;
        v140[1] = v143;
        outlined destroy of Any?(v140);
      }

      else
      {
        v137 = v144;
        v138 = v145;
        v139 = v146;
        v135 = v142;
        v136 = v143;
        outlined destroy of Any?(&v135);
        specialized Array.remove(at:)(*(*v94 + 16) - 1, v140);
        outlined destroy of Processor.SavePoint(v140);
      }

      *(v93 + 96) = v8 + 1;
      return;
    case 0x14u:

      Processor.clearThrough(_:)(v3 & 0xFFFFFFFFFFFFFFLL);
      return;
    case 0x15u:
      v82 = *(v1 + 88);
      v83 = *(v1 + 160);
      v85 = *(v1 + 184);
      v84 = *(v1 + 192);
      LOBYTE(v135) = 0;
      LOBYTE(v148) = 1;
      v86 = *(v1 + 176);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
      }

      v88 = *(v85 + 2);
      v87 = *(v85 + 3);
      if (v88 >= v87 >> 1)
      {
        v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v85);
      }

      *(v85 + 2) = v88 + 1;
      v89 = &v85[72 * v88];
      *(v89 + 4) = WORD1(v3);
      *(v89 + 5) = v82;
      v89[48] = v135;
      v90 = v142;
      *(v89 + 13) = *(&v142 + 3);
      *(v89 + 49) = v90;
      *(v89 + 7) = 0;
      *(v89 + 8) = 0;
      v89[72] = v148;
      v89[73] = 0;
      LOWORD(v90) = WORD2(v140[0]);
      *(v89 + 74) = v140[0];
      *(v89 + 39) = v90;
      *(v89 + 10) = v84;
      *(v89 + 11) = v83;
      *(v89 + 12) = v86;
      *(v1 + 184) = v85;
      v91 = v3;
      goto LABEL_106;
    case 0x16u:
      v0 = v1;
      if ((Processor.runQuantify(_:)(v3 & 0xFFFFFFFFFFFFFFLL) & 1) == 0)
      {
        return;
      }

      v92 = *(v1 + 96);
      v37 = __OFADD__(v92, 1);
      v69 = v92 + 1;
      if (v37)
      {
        __break(1u);
LABEL_67:
        *(v1 + 96) = v0;
      }

      else
      {
LABEL_89:
        *(v0 + 96) = v69;
      }

      return;
    case 0x17u:
      v3 = *(v1 + 88);
      v2 = *(v1 + 192);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_85;
      }

      goto LABEL_157;
    case 0x18u:
      v3 = *(v1 + 88);
      v2 = *(v1 + 192);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      if (v0 < *(v2 + 16))
      {
        v112 = v2 + 72 * v0;
        if (*(v112 + 96))
        {
          goto LABEL_174;
        }

        v113 = *(v112 + 88);
        if (v3 >> 14 >= v113 >> 14)
        {
          v114 = v112 + 32;
          *(v112 + 32) = v113;
          *(v112 + 40) = v3;
          *(v112 + 48) = 0;
          outlined destroy of Any?(v112 + 56);
          *(v114 + 24) = 0u;
          *(v114 + 40) = 0u;
          *(v114 + 56) = 0;
          *(v114 + 64) = 1;
LABEL_104:
          *(v1 + 192) = v2;
          goto LABEL_105;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_78:
        if (v2 < *(v0 + 16))
        {
          *(v0 + 8 * v2 + 32) = v3;
          *(v1 + 160) = v0;
          goto LABEL_105;
        }

        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_124:
        if (v5 < *(v0 + 16))
        {
          outlined destroy of Any?(v0 + v6 + 56);
          outlined init with take of Any(v140, (v0 + v6 + 56));
          *(v3 + 192) = v0;
          *(v3 + 96) = v8 + 1;
          return;
        }

        __break(1u);
LABEL_172:
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_138:
        if (v3 < *(v0 + 16))
        {
          v133 = v0 + 32 * v3;
          __swift_destroy_boxed_opaque_existential_0((v133 + 32));
          outlined init with take of Any(&v142, (v133 + 32));
          *(v1 + 168) = v0;
          v91 = v8 + 1;
          *(v1 + 88) = v2;
          goto LABEL_106;
        }

        __break(1u);
        while (1)
        {
LABEL_174:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      __break(1u);
LABEL_161:
      v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
LABEL_25:
      if (v2 >= *(v0 + 16))
      {
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v40 = v0 + 72 * v2;
      outlined destroy of Any?(v40 + 56);
      outlined init with take of Any(&v142, (v40 + 56));
      *(v1 + 192) = v0;
LABEL_105:
      v91 = v8 + 1;
LABEL_106:
      *(v1 + 96) = v91;
      return;
    case 0x19u:
      v49 = *(v1 + 136);
      if (WORD1(v3) >= *(v49 + 16))
      {
        goto LABEL_146;
      }

      v5 = v3;
      v0 = *(v1 + 192);
      if (v3 >= *(v0 + 16))
      {
        goto LABEL_163;
      }

      v50 = v49 + 16 * WORD1(v3);
      v52 = *(v50 + 32);
      v51 = *(v50 + 40);
      v3 = v1;
      v54 = *v1;
      v53 = *(v1 + 8);
      v6 = 72 * v5;
      outlined init with copy of Processor._StoredCapture((v0 + 72 * v5 + 32), &v142);
      v148 = v54;
      v149 = v53;

      v1 = v51;
      v2 = 0;
      v52(&v135, &v148, &v142);

      outlined destroy of Processor._StoredCapture(&v142);
      if (!*(&v136 + 1))
      {
        outlined destroy of Any?(&v135);
        Processor.signalFailure(preservingCaptures:)(0);
        return;
      }

      outlined init with take of Any(&v135, v140);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_124;
      }

      goto LABEL_170;
    case 0x1Au:
      v39 = *(v1 + 168);
      if (v3 >= *(v39 + 16))
      {
        goto LABEL_144;
      }

      v2 = WORD1(v3);
      outlined init with copy of Any(v39 + 32 * v3 + 32, &v142);
      v0 = *(v1 + 192);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_25;
      }

      goto LABEL_161;
    case 0x1Bu:
      v116 = *(v1 + 192);
      if (WORD1(v3) >= *(v116 + 16))
      {
        goto LABEL_174;
      }

      v117 = v116 + 72 * WORD1(v3);
      if (*(v117 + 48))
      {
        goto LABEL_130;
      }

      v118 = v3 == 1;
      v119 = *(v117 + 32);
      v120 = *(v117 + 40);
      v121 = *v1;
      v122 = *(v1 + 8);
      v123 = String.subscript.getter();
      v19 = String.matchSeq(_:at:limitedBy:isScalarSemantics:)(v123, v124, v125, v126, *(v1 + 88), *(v1 + 80), v118, v121, v122);
      LOBYTE(v121) = v127;

      if (v121)
      {
        goto LABEL_130;
      }

LABEL_112:
      v91 = v8 + 1;
      *(v1 + 88) = v19;
      goto LABEL_106;
    case 0x1Cu:
      if ((*(v1 + 80) ^ *(v1 + 88)) >= 0x4000 && *(v1 + 32) == 0)
      {
        goto LABEL_130;
      }

      *(v1 + 200) = 2;
      return;
    case 0x1Du:
      v115 = v0 == 1;
      goto LABEL_131;
    default:
      goto LABEL_174;
  }
}

uint64_t specialized MutableCollection._setAll(to:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 4)
    {
      v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      v7 = vdupq_n_s64(v4);
      v8 = (v2 + 48);
      v9 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v8[-1] = v7;
        *v8 = v7;
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      if (v3 == v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v10 = v3 - v6;
    v11 = (v2 + 8 * v6 + 32);
    do
    {
      *v11++ = v4;
      --v10;
    }

    while (v10);
LABEL_12:
    *v1 = v2;
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 4)
    {
      v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      v7 = vdupq_n_s64(v4);
      v8 = (v2 + 48);
      v9 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v8[-1] = v7;
        *v8 = v7;
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      if (v3 == v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v10 = v3 - v6;
    v11 = (v2 + 8 * v6 + 32);
    do
    {
      *v11++ = v4;
      --v10;
    }

    while (v10);
LABEL_12:
    *v1 = v2;
  }

  return result;
}

uint64_t *specialized MutableCollection._setAll(to:)(uint64_t *result)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    v4 = result;
    v5 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v6 = 0;
    v7 = (v2 + 32);
    do
    {
      if (v6 >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v6;
      result = __swift_assign_boxed_opaque_existential_0(v7, v4);
      v7 += 4;
    }

    while (v3 != v6);
    *v1 = v2;
  }

  return result;
}

uint64_t Processor.Registers.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    MEMORY[0x193ACE8E0](8250, 0xE200000000000000);
    v3 = MEMORY[0x193ACEA20](v1, MEMORY[0x1E69E5EE0]);
    MEMORY[0x193ACE8E0](v3);

    MEMORY[0x193ACE8E0](10, 0xE100000000000000);
    v2 = 0x73746E656D656C65;
  }

  v9 = v2;
  v4 = v0[7];
  if (*(v4 + 16))
  {
    MEMORY[0x193ACE8E0](8250, 0xE200000000000000);
    v5 = MEMORY[0x193ACEA20](v4, MEMORY[0x1E69E6530]);
    MEMORY[0x193ACE8E0](v5);

    MEMORY[0x193ACE8E0](10, 0xE100000000000000);
    v6 = 1937010281;
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  MEMORY[0x193ACE8E0](v6, v7);

  return v9;
}

char *static Executor.createExistentialElements(_:matchRange:storedCaptures:wholeMatchValue:)(unsigned int (**a1)(uint64_t, uint64_t, uint64_t), void (**a2)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned int (**a3)(uint64_t, uint64_t, uint64_t), char *a4, char *a5)
{
  v98 = a5;
  v91 = a4;
  v96 = a3;
  v93 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMR);
  v92 = *(v6 - 8);
  v7 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v83 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v83 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
  v89 = *(v99 - 8);
  v14 = *(v89 + 64);
  v15 = MEMORY[0x1EEE9AC00](v99);
  v90 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v94 = (&v83 - v22);
  v97 = type metadata accessor for CaptureList.Capture();
  v23 = *(v97 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v97);
  v100 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v83 - v27);
  v29 = type metadata accessor for MEProgram(0);
  v30 = *(v29 + 32);
  v31 = *(a1 + *(v29 + 36));
  v32 = *(CaptureList.captures.getter() + 16);

  v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 + 1, 0, MEMORY[0x1E69E7CC0]);
  *(&v108 + 1) = v93;
  *&v109 = v96;
  outlined init with copy of Any?(v98, &v109 + 8);
  v96 = a1;
  v93 = v30;
  v34 = a1 + v30;
  v35 = CaptureList.captures.getter();
  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_31;
  }

  v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v37 = v97;
  (*(v23 + 16))(v28, v35 + v30, v97);

  v38 = CaptureList.Capture.visibleInTypedOutput.getter();
  v88 = v23;
  v39 = *(v23 + 8);
  v85 = v23 + 8;
  v84 = v39;
  v39(v28, v37);
  *&v108 = 0;
  *(&v111 + 1) = 0;
  v112 = 0uLL;
  LOBYTE(v113) = 1;
  HIBYTE(v113) = v38 & 1;
  v28 = *(v33 + 2);
  v36 = *(v33 + 3);
  v34 = v28 + 1;
  if (v28 >= v36 >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    *(v33 + 2) = v34;
    v98 = v33;
    v40 = &v33[88 * v28];
    v41 = v109;
    *(v40 + 2) = v108;
    *(v40 + 3) = v41;
    v42 = v110;
    v43 = v111;
    v44 = v112;
    *(v40 + 56) = v113;
    *(v40 + 5) = v43;
    *(v40 + 6) = v44;
    *(v40 + 4) = v42;
    v45 = CaptureList.captures.getter();
    v46 = *(v45 + 16);
    *&v108 = v45;
    *(&v108 + 1) = v45 + v30;
    *&v109 = v46 != 0;
    *(&v109 + 1) = (2 * v46) | 1;
    *&v110 = v109;
    *(&v110 + 1) = v91;
    *&v111 = 0;
    v96 = (v89 + 48);
    v93 = (v92 + 56);
    BYTE8(v111) = 0;
    *&v112 = 0;
    v92 += 48;
    v89 = v88 + 32;

    v91 = 0;
    v88 = v6;
    v87 = v9;
    v86 = v13;
LABEL_4:
    specialized Zip2Sequence.Iterator.next()(v13);
    if ((*v96)(v13, 1, v99) == 1)
    {
      outlined destroy of SplitSequence<SubstringSearcher>(v13, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtSgMR);
      v47 = v95;
      (*v93)(v95, 1, 1, v6);
      goto LABEL_8;
    }

    v34 = v83;
    v28 = &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd;
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v13, v83, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
    v48 = *(v6 + 48);
    v49 = v91;
    *v9 = v91;
    outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v34, v9 + v48, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
    v50 = __OFADD__(v49, 1);
    v33 = v49 + 1;
    if (!v50)
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v34, 1, v33);
  }

  v91 = v33;
  *&v112 = v33;
  v47 = v95;
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v9, v95, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtMR);
  (*v93)(v47, 0, 1, v6);
LABEL_8:
  v51 = v47;
  v52 = v94;
  outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(v51, v94, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMd, &_sSi6offset_12_RegexParser11CaptureListV0D0V_17_StringProcessing9ProcessorV07_StoredD0Vt7elementtSgMR);
  v13 = 1;
  if ((*v92)(v52, 1, v6) != 1)
  {
    v33 = v31;
    v30 = *v52;
    v53 = *(v99 + 48);
    v54 = v52 + *(v6 + 48) + v53;
    v55 = v90;
    v56 = &v90[v53];
    v57 = *v89;
    v58 = v97;
    (*v89)(v90);
    v59 = *(v54 + 3);
    *(v56 + 32) = *(v54 + 2);
    *(v56 + 48) = v59;
    *(v56 + 64) = v54[64];
    v60 = *(v54 + 1);
    *v56 = *v54;
    *(v56 + 16) = v60;
    v61 = v55;
    v6 = v58;
    (v57)(v100, v61, v58);
    v62 = CaptureList.Capture.optionalDepth.getter();
    if (*(v56 + 16))
    {
      v102 = 0u;
      v101 = 0u;
      *&v103 = 0;
      *(&v103 + 1) = 1;
    }

    else
    {
      v101 = *v56;
      outlined init with copy of Any?(v56 + 24, &v102);
    }

    outlined destroy of Processor._StoredCapture(v56);
    v34 = v100;
    v9 = CaptureList.Capture.name.getter();
    v28 = v63;
    v36 = 0;
    v64 = 1 << *(v31 + 32);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & *(v31 + 64);
    v67 = (v64 + 63) >> 6;
    while (v66)
    {
      v68 = v36;
LABEL_22:
      v69 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
      v70 = v69 | (v68 << 6);
      if (*(*(v31 + 56) + 8 * v70) == v30)
      {
        v71 = v62;
        v72 = 0;
        v73 = *(*(v31 + 48) + 8 * v70);
LABEL_25:
        v74 = v100;
        v75 = CaptureList.Capture.visibleInTypedOutput.getter();
        v84(v74, v6);
        v105 = v101;
        v106 = v102;
        v107 = v103;
        v104 = v72;
        v76 = v98;
        v78 = *(v98 + 2);
        v77 = *(v98 + 3);
        v30 = v78 + 1;
        if (v78 >= v77 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v98);
        }

        *(v76 + 2) = v30;
        v98 = v76;
        v79 = &v76[88 * v78];
        *(v79 + 4) = v71;
        v80 = v105;
        v81 = v106;
        *(v79 + 72) = v107;
        *(v79 + 56) = v81;
        *(v79 + 40) = v80;
        *(v79 + 11) = v9;
        *(v79 + 12) = v28;
        *(v79 + 13) = v73;
        v79[112] = v104;
        v79[113] = v75 & 1;
        v6 = v88;
        v9 = v87;
        v13 = v86;
        goto LABEL_4;
      }
    }

    while (1)
    {
      v68 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v68 >= v67)
      {
        v71 = v62;
        v73 = 0;
        v72 = 1;
        goto LABEL_25;
      }

      v66 = *(v31 + 64 + 8 * v68);
      ++v36;
      if (v66)
      {
        v36 = v68;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  return v98;
}

uint64_t Instruction.description.getter(unint64_t a1)
{
  switch(specialized Instruction.OpCode.init(rawValue:)(HIBYTE(a1)))
  {
    case 1u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v2);

      MEMORY[0x193ACE8E0](0x5B746E69203E2D20, 0xE800000000000000);
      goto LABEL_81;
    case 2u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B736F70203E2D20, 0xE800000000000000);
      goto LABEL_81;
    case 4u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      goto LABEL_22;
    case 5u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v19);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v20 = 1953392928;
      goto LABEL_28;
    case 6u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v21);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v20 = 1936683040;
LABEL_28:
      MEMORY[0x193ACE8E0](v20 & 0xFFFF0000FFFFFFFFLL | 0x5B00000000, 0xE500000000000000);
      goto LABEL_81;
    case 7u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb16isScalarDistance_17_StringProcessing8TypedIntVyAB01_C0OGtMd, &_sSb16isScalarDistance_17_StringProcessing8TypedIntVyAB01_C0OGtMR);
      goto LABEL_26;
    case 8u:
      if (a1 == 1)
      {
        v10 = 0x800000018E5F2700;
        v11 = 0xD00000000000001ALL;
LABEL_80:
        v40[0] = v11;
        v40[1] = v10;
      }

      else
      {
        strcpy(v40, "match char[");
        HIDWORD(v40[1]) = -352321536;
      }

      goto LABEL_81;
    case 9u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      if ((a1 & 0x80000000000000) != 0)
      {
        _StringGuts.grow(_:)(49);
        v12 = 0xD00000000000001CLL;
        v13 = 0x800000018E5F2640;
      }

      else
      {
        _StringGuts.grow(_:)(34);
        v12 = 0x616353686374616DLL;
        v13 = 0xED0000272072616CLL;
      }

      MEMORY[0x193ACE8E0](v12, v13);
      Unicode.Scalar.write<A>(to:)();
      MEMORY[0x193ACE8E0](0xD000000000000011, 0x800000018E5F2620);
      if ((a1 & 0x40000000000000) != 0)
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if ((a1 & 0x40000000000000) != 0)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      goto LABEL_23;
    case 0xBu:
      if (a1 == 1)
      {
        v10 = 0x800000018E5F26E0;
        v11 = 0xD000000000000019;
      }

      else
      {
        v10 = 0x800000018E5F26C0;
        v11 = 0xD000000000000013;
      }

      goto LABEL_80;
    case 0xCu:
      strcpy(v40, "matchBuiltin ");
      HIWORD(v40[1]) = -4864;
      v22 = specialized _CharacterClassModel.Representation.init(rawValue:)(a1);
      if (v22 > 3)
      {
        v32 = 0xEC0000003E656361;
        v33 = 0x707365746968773CLL;
        if (v22 != 6)
        {
          v33 = 0x3E64726F773CLL;
          v32 = 0xE600000000000000;
        }

        v34 = 0x800000018E5F2680;
        if (v22 == 4)
        {
          v35 = 0xD000000000000012;
        }

        else
        {
          v35 = 0xD000000000000013;
        }

        if (v22 != 4)
        {
          v34 = 0x800000018E5F2660;
        }

        if (v22 <= 5)
        {
          v27 = v35;
        }

        else
        {
          v27 = v33;
        }

        if (v22 <= 5)
        {
          v28 = v34;
        }

        else
        {
          v28 = v32;
        }
      }

      else
      {
        v23 = 0xE500000000000000;
        v24 = 0x3E796E613CLL;
        v25 = 0xE700000000000000;
        v26 = 0x3E74696769643CLL;
        if (v22 != 2)
        {
          v26 = 0xD000000000000017;
          v25 = 0x800000018E5F26A0;
        }

        if (v22)
        {
          v24 = 0x61726720796E613CLL;
          v23 = 0xEE003E656D656870;
        }

        if (v22 <= 1)
        {
          v27 = v24;
        }

        else
        {
          v27 = v26;
        }

        if (v22 <= 1)
        {
          v28 = v23;
        }

        else
        {
          v28 = v25;
        }
      }

      MEMORY[0x193ACE8E0](v27, v28);

      MEMORY[0x193ACE8E0](10272, 0xE200000000000000);
      if ((a1 & 0x80000000000000) != 0)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if ((a1 & 0x80000000000000) != 0)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      goto LABEL_78;
    case 0xEu:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x656D75736E6F6320, 0xEA00000000005B72);
      goto LABEL_81;
    case 0xFu:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      goto LABEL_26;
    case 0x10u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B686374616D20, 0xE700000000000000);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v3);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v4 = 0x6C6176203E2D205DLL;
      v5 = 0xE90000000000005BLL;
      goto LABEL_50;
    case 0x11u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      goto LABEL_19;
    case 0x12u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
LABEL_19:
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      goto LABEL_22;
    case 0x15u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x3A676E6976617320, 0xE900000000000020);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v14);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      MEMORY[0x193ACE8E0](0x676E69706D756A20, 0xEC000000203A6F54);
LABEL_22:
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v15);

      v16 = 35;
      v17 = 0xE100000000000000;
      goto LABEL_23;
    case 0x16u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v29 = (a1 >> 35) & 7;
      if (v29 > 4 || ((0x17u >> v29) & 1) == 0)
      {
        __break(1u);
        JUMPOUT(0x18E5A65F8);
      }

      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v30);

      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      if (((a1 >> 18) & 0x1FF) == 1)
      {
        v17 = 0xE900000000000064;
        v16 = 0x65646E756F626E75;
      }

      else
      {
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        v16 = BinaryInteger.description.getter();
        v17 = v39;
      }

LABEL_23:
      v18 = v17;
      goto LABEL_44;
    case 0x17u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      goto LABEL_43;
    case 0x18u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      goto LABEL_43;
    case 0x19u:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B736E61727420, 0xE700000000000000);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v6);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      MEMORY[0x193ACE8E0](10333, 0xE200000000000000);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v7);

      v8 = 35;
      v9 = 0xE100000000000000;
LABEL_78:
      MEMORY[0x193ACE8E0](v8, v9);

      v36 = 41;
      goto LABEL_82;
    case 0x1Au:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](0x5B736C617620, 0xE600000000000000);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v31);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v4 = 0x706163203E2D205DLL;
      v5 = 0xEE005B7365727574;
LABEL_50:
      MEMORY[0x193ACE8E0](v4, v5);
LABEL_81:
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ACE8E0](v37);

      MEMORY[0x193ACE8E0](35, 0xE100000000000000);

      v36 = 93;
LABEL_82:
      MEMORY[0x193ACE8E0](v36, 0xE100000000000000);
      break;
    case 0x1Bu:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
LABEL_43:
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ACE8E0](32, 0xE100000000000000);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_44:
      MEMORY[0x193ACE8E0](v16, v18);

      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
LABEL_26:
      _print_unlocked<A, B>(_:_:)();
      break;
  }

  return v40[0];
}

void *static Executor._run(_:_:subjectBounds:searchBounds:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  *(&v26 + 1) = a5;
  v27 = a7;
  v25 = a2;
  *&v26 = a4;
  v12 = a1;
  v24 = a1;
  v28 = a9;
  v13 = type metadata accessor for MEProgram(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(v12, v17, type metadata accessor for MEProgram);
  v36 = 1;
  v18 = *v17;
  LOBYTE(v12) = a8 & 1;
  v19 = (v17 + *(v14 + 56));
  v20 = v19[4];
  v49 = v19[3];
  v50 = v20;
  v21 = v19[2];
  v47 = v19[1];
  v48 = v21;
  v46 = *v19;
  v34 = v49;
  v35 = v20;
  v32 = v47;
  v33 = v21;
  v31 = v46;
  v22 = *(v17 + *(v14 + 60));

  outlined init with copy of Processor.Registers(&v46, v29);

  outlined destroy of MEProgram(v17, type metadata accessor for MEProgram);
  *&v37 = v25;
  *(&v37 + 1) = a3;
  v38 = v26;
  LOBYTE(v39) = v12;
  v40 = 0uLL;
  *(&v39 + 1) = v18;
  LOBYTE(v41) = v36;
  *(&v41 + 1) = a6;
  *&v42 = v27;
  *(&v42 + 1) = a6;
  *&v43[0] = 0;
  *(v43 + 8) = v31;
  *(&v43[4] + 8) = v35;
  *(&v43[3] + 8) = v34;
  *(&v43[2] + 8) = v33;
  *(&v43[1] + 8) = v32;
  *(&v43[5] + 1) = MEMORY[0x1E69E7CC0];
  *&v44 = v22;
  BYTE8(v44) = 0;
  v45 = 0;
  static Executor._run(_:_:)(v24, &v37, v28);
  v29[10] = v43[4];
  v29[11] = v43[5];
  v29[12] = v44;
  v30 = v45;
  v29[6] = v43[0];
  v29[7] = v43[1];
  v29[8] = v43[2];
  v29[9] = v43[3];
  v29[2] = v39;
  v29[3] = v40;
  v29[4] = v41;
  v29[5] = v42;
  v29[0] = v37;
  v29[1] = v38;
  return outlined destroy of Processor(v29);
}

void *static Executor.firstMatch(_:_:subjectBounds:searchBounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a9;
  v27 = a8;
  *(&v24 + 1) = a5;
  v25 = a7;
  v23 = a2;
  *&v24 = a4;
  v12 = type metadata accessor for MEProgram(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v16, type metadata accessor for MEProgram);
  v35 = 1;
  v17 = *v16;
  v18 = (v16 + *(v13 + 56));
  v19 = v18[4];
  v48 = v18[3];
  v49 = v19;
  v20 = v18[2];
  v46 = v18[1];
  v47 = v20;
  v45 = *v18;
  v33 = v48;
  v34 = v19;
  v31 = v46;
  v32 = v20;
  v30 = v45;
  v21 = *(v16 + *(v13 + 60));

  outlined init with copy of Processor.Registers(&v45, v28);

  outlined destroy of MEProgram(v16, type metadata accessor for MEProgram);
  *&v36 = v23;
  *(&v36 + 1) = a3;
  v37 = v24;
  LOBYTE(v38) = 1;
  v39 = 0uLL;
  *(&v38 + 1) = v17;
  LOBYTE(v40) = v35;
  *(&v40 + 1) = a6;
  *&v41 = v25;
  *(&v41 + 1) = a6;
  *&v42[0] = 0;
  *(v42 + 8) = v30;
  *(&v42[4] + 8) = v34;
  *(&v42[3] + 8) = v33;
  *(&v42[2] + 8) = v32;
  *(&v42[1] + 8) = v31;
  *(&v42[5] + 1) = MEMORY[0x1E69E7CC0];
  *&v43 = v21;
  BYTE8(v43) = 0;
  v44 = 0;
  static Executor._firstMatch(_:using:)(a1, &v36, v26);
  v28[10] = v42[4];
  v28[11] = v42[5];
  v28[12] = v43;
  v29 = v44;
  v28[6] = v42[0];
  v28[7] = v42[1];
  v28[8] = v42[2];
  v28[9] = v42[3];
  v28[2] = v38;
  v28[3] = v39;
  v28[4] = v40;
  v28[5] = v41;
  v28[0] = v36;
  v28[1] = v37;
  return outlined destroy of Processor(v28);
}

void static Executor._firstMatch(_:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = type metadata accessor for MEProgram(0);
  v7 = *(a1 + *(v57 + 40));
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_74;
  }

  v9 = *(v7 + 4 * v8 + 28);
  v11 = *(a2 + 72);
  v10 = *(a2 + 80);
  static Executor._run(_:_:)(a1, a2, &v58);
  if (!v3)
  {
    v55 = v9;
    v63 = v10 >> 14;
    v56 = a1;
    while (1)
    {
      v12 = *(&v58 + 1);
      if (*(&v58 + 1))
      {
        v53 = *&v59[16];
        v54 = *v59;
        *a3 = v58;
        *(a3 + 8) = v12;
        *(a3 + 16) = v54;
        *(a3 + 32) = v53;
        return;
      }

      if (*(a1 + *(v57 + 44)) == 1 || v63 == v11 >> 14)
      {
LABEL_69:
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return;
      }

      v13 = *a2;
      v14 = *(a2 + 8);
      if ((v55 & 0x10000) != 0)
      {
        v11 = String.index(after:)();
        goto LABEL_34;
      }

      v15 = (v14 & 0x1000000000000000) == 0 || (v13 & 0x800000000000000) != 0;
      v16 = v11 & 0xC;
      v17 = 4 << v15;
      v18 = HIBYTE(v14) & 0xF;
      if ((v11 & 1) != 0 && v16 != v17)
      {
        break;
      }

      if (v16 == v17)
      {
        v46 = v11;
        v47 = *a2;
        v48 = *(a2 + 8);
        v49 = _StringGuts._slowEnsureMatchingEncoding(_:)(v46, v13, v14);
        v13 = v47;
        v14 = v48;
        v11 = v49;
      }

      v20 = v13 & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v20 = v18;
      }

      if (v20 <= v11 >> 16)
      {
        goto LABEL_77;
      }

      if (v11)
      {
        goto LABEL_25;
      }

      v50 = v13;
      v51 = v14;
      v52 = _StringGuts.scalarAlignSlow(_:)(v11, v13, v14);
      v13 = v50;
      v14 = v51;
      a1 = v56;
      v11 = v11 & 0xC | v52 & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v14 & 0x1000000000000000) != 0)
      {
LABEL_67:
        v11 = String.UnicodeScalarView._foreignIndex(after:)();
        goto LABEL_34;
      }

LABEL_26:
      v21 = v11 >> 16;
      if ((v14 & 0x2000000000000000) != 0)
      {
        *&v58 = v13;
        *(&v58 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
        v23 = v59[v21 - 16];
      }

      else
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          v22 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v22 = _StringObject.sharedUTF8.getter();
        }

        v23 = *(v22 + v21);
      }

      v24 = v23;
      v25 = __clz(v23 ^ 0xFF) - 24;
      if (v24 >= 0)
      {
        LOBYTE(v25) = 1;
      }

      v11 = ((v21 + v25) << 16) | 5;
LABEL_34:
      if (v63 < v11 >> 14)
      {
        goto LABEL_69;
      }

      *(a2 + 88) = v11;
      *(a2 + 96) = 0;
      if (*(a2 + 152) == 1)
      {
        v26 = *(a2 + 160);
        v27 = *(v26 + 2);
        if (v27)
        {
          v28 = *(a2 + 160);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          }

          if (v27 > *(v26 + 2))
          {
            goto LABEL_75;
          }

          bzero(v26 + 32, 8 * v27);
          *(a2 + 160) = v26;
        }

        *&v59[8] = &type metadata for SentinelValue;
        v29 = *(a2 + 168);
        v30 = *(v29 + 2);
        if (v30)
        {
          v31 = *(a2 + 168);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          }

          v32 = 0;
          v33 = (v29 + 32);
          while (v32 < *(v29 + 2))
          {
            ++v32;
            __swift_assign_boxed_opaque_existential_0(v33, &v58);
            v33 += 4;
            if (v30 == v32)
            {
              *(a2 + 168) = v29;
              a1 = v56;
              goto LABEL_48;
            }
          }

LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          return;
        }

LABEL_48:
        __swift_destroy_boxed_opaque_existential_0(&v58);
        v34 = *(a2 + 176);
        v35 = *(v34 + 2);
        if (v35)
        {
          v36 = *(a2 + 176);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
          }

          if (v35 > *(v34 + 2))
          {
            goto LABEL_76;
          }

          memset_pattern16(v34 + 32, &unk_18E5ED280, 8 * v35);
          *(a2 + 176) = v34;
        }
      }

      if (*(*(a2 + 184) + 16))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(a2 + 184);
        if (isUniquelyReferenced_nonNull_native)
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, *(v38 + 16));
        }

        else
        {
          v39 = MEMORY[0x1E69E7CC0];
          if (*(v38 + 24) >= 2uLL)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMR);
            v39 = swift_allocObject();
            v40 = _swift_stdlib_malloc_size(v39);
            v39[2] = 0;
            v39[3] = 2 * ((v40 - 32) / 72);
          }

          *(a2 + 184) = v39;
          a1 = v56;
        }
      }

      v41 = *(a2 + 192);
      v42 = *(v41 + 2);
      if (v42)
      {
        v43 = *(a2 + 192);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
        }

        v44 = 0;
        v45 = (v41 + 32);
        while (1)
        {
          v58 = 0uLL;
          v59[0] = 1;
          *&v59[8] = 0u;
          v60 = 0u;
          v61 = 0;
          v62 = 1;
          if (v44 >= *(v41 + 2))
          {
            break;
          }

          ++v44;
          outlined assign with take of Processor._StoredCapture(&v58, v45);
          v45 += 72;
          if (v42 == v44)
          {
            *(a2 + 192) = v41;
            a1 = v56;
            goto LABEL_4;
          }
        }

        __break(1u);
        goto LABEL_73;
      }

LABEL_4:
      *(a2 + 200) = 0;
      MEMORY[0x193ACF400](*(a2 + 208));
      *(a2 + 208) = 0;
      static Executor._run(_:_:)(a1, a2, &v58);
    }

    v19 = v13 & 0xFFFFFFFFFFFFLL;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v14) & 0xF;
    }

    if (v19 <= v11 >> 16)
    {
      goto LABEL_78;
    }

LABEL_25:
    if ((v14 & 0x1000000000000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_26;
  }
}

void static Executor._run(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 200);
  if (v5 != 1)
  {
    for (i = *(a2 + 88); !*(a2 + 200); v5 = *(a2 + 200))
    {
      Processor.cycle()();
    }

    if (v5 != 1)
    {
      v9 = *(a2 + 88);
      if (v9 >> 14 < i >> 14)
      {
        __break(1u);
      }

      else
      {
        if (*(a1 + 16))
        {
          memset(v14, 0, sizeof(v14));
LABEL_14:
          v12 = static Executor.createExistentialElements(_:matchRange:storedCaptures:wholeMatchValue:)(a1, i, v9, *(a2 + 192), v14);
          outlined destroy of Any?(v14);
          v13 = *(a2 + 8);
          *a3 = *a2;
          a3[1] = v13;
          a3[2] = v12;
          a3[3] = i;
          a3[4] = v9;

          return;
        }

        v10 = *(a1 + 8);
        if ((v10 & 0x8000000000000000) == 0)
        {
          v11 = *(a2 + 168);
          if (v10 < *(v11 + 16))
          {
            outlined init with copy of Any(v11 + 32 * v10 + 32, v14);
            goto LABEL_14;
          }

LABEL_17:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  v8 = *(a2 + 208);
  if (v8)
  {
    MEMORY[0x193ACF410](v8);
    swift_willThrow();
  }

  else
  {
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}