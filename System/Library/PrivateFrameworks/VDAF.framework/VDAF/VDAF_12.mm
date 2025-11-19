uint64_t PINECircuit.outputLength.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = *(v8 + 8);
  swift_getAssociatedTypeWitness();
  v18[1] = AssociatedTypeWitness;
  v18[2] = v6;
  v18[3] = AssociatedConformanceWitness;
  v18[4] = v8;
  v18[5] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PINECircuitParameter();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - v14;
  (*(a2 + 56))(a1, a2);
  v16 = *(v15 + 5);
  (*(v11 + 8))(v15, v10);
  return v16;
}

uint64_t PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v11 = *a5;
  v12 = *(*a5 + 88);
  v13 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(v11 + 104);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  v37 = v12;
  v38 = AssociatedTypeWitness;
  v39 = v15;
  v40 = AssociatedConformanceWitness;
  v41 = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for PINECircuitParameter();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v33 - v22;
  (*(a7 + 56))(a6, a7);
  v24 = *&v23[*(v18 + 92)];
  result = (*(v19 + 8))(v23, v18);
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = 0;
    v38 = v24;
    MEMORY[0x28223BE20](result, v26);
    *(&v33 - 8) = a6;
    *(&v33 - 7) = a7;
    v27 = v34;
    v28 = v35;
    *(&v33 - 6) = a1;
    *(&v33 - 5) = v27;
    v29 = v36;
    *(&v33 - 4) = v28;
    *(&v33 - 3) = v29;
    *(&v33 - 2) = a5;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v31 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:), (&v33 - 10), v30, v12, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);
  }

  return result;
}

uint64_t PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v202 = a2;
  v181 = a1;
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v210 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v194 = swift_getAssociatedConformanceWitness();
  v190 = AssociatedTypeWitness;
  v193 = swift_getAssociatedTypeWitness();
  v170 = *(v193 - 8);
  v9 = *(v170 + 64);
  v11 = MEMORY[0x28223BE20](v193, v10);
  v168 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v166 = &v163 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v184 = &v163 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v189 = &v163 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v191 = &v163 - v23;
  swift_getAssociatedTypeWitness();
  v206 = a4;
  v198 = swift_getAssociatedConformanceWitness();
  v24 = *(v198 + 8);
  v25 = swift_getAssociatedTypeWitness();
  v199 = *(v25 - 8);
  v26 = *(v199 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v187 = &v163 - v28;
  v29 = type metadata accessor for Optional();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v192 = &v163 - v32;
  v33 = swift_checkMetadataState();
  v178 = *(v33 - 8);
  v34 = *(v178 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v177 = &v163 - v36;
  v179 = v24;
  v37 = a3;
  v38 = AssociatedConformanceWitness;
  v195 = swift_getAssociatedTypeWitness();
  v169 = *(v195 - 8);
  v39 = *(v169 + 64);
  MEMORY[0x28223BE20](v195, v40);
  v201 = &v163 - v41;
  v42 = swift_checkMetadataState();
  v171 = *(v42 - 8);
  v43 = *(v171 + 64);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v188 = &v163 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v209 = &v163 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v211 = (&v163 - v52);
  MEMORY[0x28223BE20](v51, v53);
  v203 = &v163 - v54;
  v200 = v25;
  v55 = swift_getAssociatedConformanceWitness();
  v212 = v42;
  v213 = v33;
  v214 = v38;
  v215 = v198;
  v186 = v55;
  v216 = v55;
  v56 = type metadata accessor for PINECircuitParameter();
  v207 = *(v56 - 8);
  v57 = *(v207 + 64);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v164 = &v163 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v59, v61);
  v165 = &v163 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v185 = &v163 - v66;
  MEMORY[0x28223BE20](v65, v67);
  v69 = &v163 - v68;
  v70 = (*(v210 + 48))(v37);
  v210 = v42;
  v183 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v70);
  v180 = v33;
  v71 = dispatch thunk of Collection.count.getter();
  v72 = v206 + 56;
  v73 = v207;
  v74 = *(v206 + 56);
  v205 = v37;
  v74();
  v75 = *(v69 + 5);
  v78 = *(v73 + 8);
  v77 = v73 + 8;
  v76 = v78;
  v204 = v56;
  v78(v69, v56);
  if (v71 == v75)
  {
    v207 = v77;
    v167 = v69;
    v196 = v74;
    v197 = v72;
    v198 = v76;
    v79 = v203;
    v182 = *(v38 + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    (*(v178 + 16))(v177, v181, v180);
    dispatch thunk of Sequence.makeIterator()();
    v80 = v195;
    v81 = swift_getAssociatedConformanceWitness();
    v82 = v192;
    v181 = v81;
    dispatch thunk of IteratorProtocol.next()();
    v83 = v199;
    v84 = *(v199 + 48);
    v180 = v199 + 48;
    v179 = v84;
    v85 = v79;
    if (v84(v82, 1, v200) == 1)
    {
      v86 = v209;
LABEL_8:
      v163 = v38;
      (*(v169 + 8))(v201, v80);
      v119 = v191;
      v120 = v210;
      FieldElement.integerValue.getter(v210, v38);
      v121 = v167;
      (v196)(v205, v206);
      v122 = v204;
      v123 = v171;
      v124 = *(v171 + 16);
      v125 = &v121[*(v204 + 84)];
      v209 = (v171 + 16);
      v201 = v124;
      (v124)(v86, v125, v120);
      (v198)(v121, v122);
      v126 = v86;
      v127 = v189;
      FieldElement.integerValue.getter(v120, v38);
      v128 = *(v123 + 8);
      v171 = v123 + 8;
      v128(v126, v120);
      v129 = v193;
      v130 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      v131 = *(*(v130 + 32) + 8);
      v132 = v119;
      LOBYTE(v119) = dispatch thunk of static Comparable.<= infix(_:_:)();
      v133 = v170 + 8;
      v134 = v127;
      v135 = *(v170 + 8);
      v135(v134, v129);
      v135(v132, v129);
      v211 = v128;
      if (v119)
      {
        v200 = v135;
        v170 = v133;
        v136 = v210;
        dispatch thunk of static AdditiveArithmetic.zero.getter();
        v137 = v167;
        v138 = v206;
        v139 = v205;
        (v196)(v205, v206);
        v140 = v204;
        v141 = v188;
        (v201)(v188, &v137[*(v204 + 84)], v136);
        (v198)(v137, v140);
        v142 = v166;
        static PINECircuit.computeRangeCheck(_:lowerBound:upperBound:)(v166, v168, v203, v126, v141, v139, v138);
        v128(v141, v136);
        v128(v126, v136);
        v143 = v165;
        (v196)(v139, v138);
        v144 = *(v143 + 6);
        (v198)(v143, v140);
        v145 = v202;
        v146 = v144;
        v147 = v163;
        v148 = v208;
        static FieldElement.encode(_:into:with:)(v142, v202, v146, v136, v163);
        if (v148)
        {
          v149 = v193;
          v150 = v200;
          v200(v168, v193);
        }

        else
        {
          v160 = v164;
          (v196)(v205, v138);
          v161 = *(v160 + 6);
          (v198)(v160, v204);
          v162 = v168;
          static FieldElement.encode(_:into:with:)(v168, v145, v161, v210, v147);
          v149 = v193;
          v150 = v200;
          v200(v162, v193);
        }

        v150(v142, v149);
        return v211(v203, v210);
      }

      else
      {
        v212 = 0;
        v213 = 0xE000000000000000;
        v151 = v132;
        _StringGuts.grow(_:)(32);
        MEMORY[0x2743B25F0](0x2064657261757173, 0xED00003D6D726F6ELL);
        v152 = v210;
        v153 = v163;
        FieldElement.integerValue.getter(v210, v163);
        v208 = *(v130 + 8);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v135(v132, v129);
        MEMORY[0x2743B25F0](0x6B63656863203E20, 0xEF3D646E756F6220);
        v154 = v167;
        (v196)(v205, v206);
        v155 = v204;
        (v201)(v126, &v154[*(v204 + 84)], v152);
        (v198)(v154, v155);
        FieldElement.integerValue.getter(v152, v153);
        v156 = v211;
        v211(v126, v152);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v135(v151, v129);
        v157 = v212;
        v158 = v213;
        lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
        swift_allocError();
        *v159 = v157;
        *(v159 + 8) = v158;
        *(v159 + 16) = 1;
        swift_willThrow();
        return v156(v203, v152);
      }
    }

    else
    {
      v95 = v82;
      v177 = *(v83 + 32);
      v176 = (v171 + 16);
      v175 = v38 + 88;
      v174 = v194 + 56;
      v173 = (v170 + 8);
      v172 = v38 + 96;
      v178 = v171 + 8;
      v86 = v209;
      v96 = v200;
      v199 = v83 + 32;
      while (1)
      {
        v97 = v187;
        (v177)(v187, v95, v96);
        v98 = v185;
        (v196)(v205, v206);
        v99 = *(v98 + 4);
        (v198)(v98, v204);
        v100 = v208;
        FieldElement.init<A>(floatValue:fractionalBitCount:)(v97, v99, v210, v96, v38, v186, v211);
        if (v100)
        {
          break;
        }

        v208 = 0;
        v101 = *v176;
        v102 = v210;
        v103 = v211;
        (*v176)(v86);
        Array.append(_:)();
        v104 = v188;
        (v101)(v188, v103, v102);
        FieldElement.init(other:)(v104, v102, v38);
        v105 = swift_checkMetadataState();
        v106 = v38;
        v107 = *(v38 + 88);
        v108 = v189;
        v107(v102, v38);
        v109 = v184;
        v107(v102, v38);
        v110 = v191;
        v111 = v203;
        (*(v194 + 56))(v108, v109, v105);
        v112 = *v173;
        v113 = v193;
        (*v173)(v109, v193);
        v114 = v108;
        v86 = v209;
        v115 = v113;
        v38 = v106;
        v96 = v200;
        v112(v114, v115);
        v85 = v111;
        (*(v38 + 96))(v110, v102, v38);
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v116 = *v178;
        (*v178)(v86, v102);
        v116(v211, v102);
        v117 = v192;
        v80 = v195;
        dispatch thunk of IteratorProtocol.next()();
        v118 = v179(v117, 1, v96);
        v95 = v117;
        if (v118 == 1)
        {
          goto LABEL_8;
        }
      }

      (*(v169 + 8))(v201, v195);
      return (*v178)(v85, v210);
    }
  }

  else
  {
    v212 = 0;
    v213 = 0xE000000000000000;
    v87 = v76;
    _StringGuts.grow(_:)(44);

    v212 = 0xD00000000000001DLL;
    v213 = 0x8000000270C52030;
    v217 = dispatch thunk of Collection.count.getter();
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v88);

    MEMORY[0x2743B25F0](0x746365707865202CLL, 0xEB000000003D6465);
    (v74)(v205, v206);
    v89 = *(v69 + 5);
    v87(v69, v204);
    v217 = v89;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v90);

    v91 = v212;
    v92 = v213;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v93 = v91;
    *(v93 + 8) = v92;
    *(v93 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t PINECircuit.appendWraparoundCheck<A>(into:random:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v118 = a1;
  v7 = *a2;
  v8 = *(a4 + 8);
  v135 = a2;
  v9 = *(v7 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = swift_getAssociatedConformanceWitness();
  v112 = AssociatedTypeWitness;
  v128 = swift_getAssociatedTypeWitness();
  v124 = *(v128 - 8);
  v12 = *(v124 + 8);
  v14 = MEMORY[0x28223BE20](v128, v13);
  v127 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v105 - v18;
  v117 = *(v9 - 8);
  v20 = *(v117 + 64);
  v22 = MEMORY[0x28223BE20](v17, v21);
  v115 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v136 = &v105 - v26;
  v106 = v27;
  MEMORY[0x28223BE20](v25, v28);
  v129 = &v105 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 8);
  swift_getAssociatedTypeWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v139[0] = v9;
  v139[1] = v30;
  v116 = AssociatedConformanceWitness;
  v139[2] = AssociatedConformanceWitness;
  v139[3] = v31;
  v34 = a4;
  v139[4] = v33;
  v35 = type metadata accessor for PINECircuitParameter();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v114 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v113 = &v105 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v105 - v45;
  v47 = *v118;
  v48 = *(v34 + 56);
  v137 = v34;
  v138 = v4;
  v140 = a3;
  v49 = a3;
  v51 = v50;
  v132 = v48;
  v133 = v34 + 56;
  v48(v49, v34);
  v52 = *(v46 + 5);
  v54 = *(v36 + 8);
  v53 = v36 + 8;
  v119 = v46;
  v131 = v54;
  result = (v54)(v46, v51);
  if (v52 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v130 = v53;
  v107 = Array.subscript.getter();
  v59 = PINECircuit.wraparoundDotProducts<A>(_:random:)(v107, v56, v57, v58, v135, v140, v137);

  if (MEMORY[0x2743B2860](v60, v9))
  {
    v61 = 0;
    v135 = 0;
    v126 = (v117 + 16);
    v110 = (v117 + 8);
    v123 = (v124 + 8);
    v124 = v19;
    v125 = v9;
    v62 = v119;
    v108 = v51;
    v109 = v59;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v64 = *(v117 + 16);
        (v64)(v129, v59 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v61, v9);
        v65 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v106 != 8)
        {
          goto LABEL_25;
        }

        v139[0] = result;
        v64 = *v126;
        (*v126)(v129, v139, v9);
        swift_unknownObjectRelease();
        v65 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      v120 = v65;
      v121 = v61;
      v66 = v62;
      v67 = v137;
      v68 = v140;
      v122 = v64;
      v69 = v132;
      v132(v140, v137);
      PINECircuitParameter.wraparoundCheckLowerBound.getter(v51, v70);
      v71 = v131;
      v131(v66, v51);
      v72 = v113;
      v69(v68, v67);
      v73 = v115;
      v74 = v125;
      v122(v115, &v72[*(v51 + 100)], v125);
      v71(v72, v51);
      v75 = v127;
      v76 = v51;
      v77 = v129;
      v78 = v136;
      v79 = static PINECircuit.computeRangeCheck(_:lowerBound:upperBound:)(v124, v127, v129, v136, v73, v140, v137);
      v80 = *v110;
      (*v110)(v77, v74);
      v80(v73, v74);
      v80(v78, v74);
      v81 = *v123;
      (*v123)(v75, v128);
      if (v79)
      {
        v82 = v119;
        v83 = v132;
        v132(v140, v137);
        v84 = *&v82[*(v76 + 96)];
        v85 = v82;
        v86 = v76;
        v87 = v76;
        v88 = v131;
        v131(v85, v86);
        v89 = v135 < v84;
        v90 = v83;
        v91 = v88;
      }

      else
      {
        v89 = 0;
        v87 = v76;
        v91 = v131;
        v90 = v132;
      }

      v92 = v114;
      v90(v140, v137);
      v93 = *&v92[*(v87 + 88)];
      v91(v92, v87);
      v94 = v124;
      v9 = v125;
      v95 = v116;
      v96 = v134;
      static FieldElement.encode(_:into:with:)(v124, v118, v93, v125, v116);
      v134 = v96;
      if (v96)
      {
        swift_unknownObjectRelease();
        v59 = v109;
        swift_bridgeObjectRelease_n();
        v81(v94, v128);
        return v59;
      }

      v139[0] = v89;
      v97 = v128;
      v98 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      lazy protocol witness table accessor for type Int and conformance Int();
      v122 = v89;
      v99 = v127;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      FieldElement.init(_:)(v99, v9, v95);
      type metadata accessor for Array();
      Array.append(_:)();
      result = (v81)(v94, v97);
      v100 = __OFADD__(v135, v122);
      v135 = (v122 + v135);
      if (v100)
      {
        break;
      }

      v59 = v109;
      v101 = MEMORY[0x2743B2860](v109, v9);
      v61 = v121 + 1;
      v51 = v108;
      v62 = v119;
      if (v120 == v101)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_17:
  v135 = 0;
  v62 = v119;
LABEL_18:

  v132(v140, v137);
  v102 = *&v62[*(v51 + 96)];
  v131(v62, v51);
  if (v135 != v102)
  {

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    v103 = swift_allocError();
    *v104 = 0xD000000000000023;
    *(v104 + 8) = 0x8000000270C51FA0;
    *(v104 + 16) = 4;
    v134 = v103;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v59;
}

uint64_t PINECircuitParameter.wraparoundCheckLowerBound.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v17 - v11;
  v13 = *(v10 + 32);
  (*(v13 + 72))(v3, v13);
  v14 = *(a1 + 100);
  (*(v4 + 16))(v8, v12, v3);
  FieldElement.init(other:)(v8, v3, v13);
  v15 = *(v13 + 8);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  return (*(v4 + 8))(v12, v3);
}

uint64_t PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, char *a11, int *a12)
{
  v253 = a7;
  v252 = a5;
  v256 = a4;
  v265 = a1;
  v254 = a9;
  swift_getAssociatedTypeWitness();
  v263 = a8;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v17 = a2;
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  v264 = *(v18 + 8);
  v259 = *(v264 + 3);
  v262 = *(v259 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v20);
  v260 = v227 - v21;
  v22 = swift_checkMetadataState();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  MEMORY[0x28223BE20](v26, v27);
  v30 = MEMORY[0x28223BE20](v227 - v28, v29);
  v32 = MEMORY[0x28223BE20](v30, v227 - v31);
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v38 = MEMORY[0x28223BE20](v36, v37);
  v40 = MEMORY[0x28223BE20](v38, v39);
  v42 = MEMORY[0x28223BE20](v40, v41);
  v44 = MEMORY[0x28223BE20](v42, v43);
  v46 = MEMORY[0x28223BE20](v44, v45);
  v48 = v227 - v47;
  v50 = MEMORY[0x28223BE20](v46, v49);
  v258 = v227 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v257 = v227 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v58 = v227 - v57;
  v60 = MEMORY[0x28223BE20](v56, v59);
  v62 = MEMORY[0x28223BE20](v60, v61);
  v64 = v227 - v63;
  v66 = MEMORY[0x28223BE20](v62, v65);
  v78 = v227 - v77;
  if (v17 > 0x7F)
  {
    v266 = 0.0;
    v267 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v266 = -2.31584178e77;
    v267 = 0x8000000270C53330;
    v271 = v17;
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v92);

    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C53350);
    v93 = v266;
    v94 = v267;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v95 = v93;
    *(v95 + 8) = v94;
    *(v95 + 16) = 1;
    swift_willThrow();
    return (*(v23 + 8))(v265, v22);
  }

  v255 = v22;
  if (a3 < 1)
  {
    v266 = 0.0;
    v267 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v266 = -2.31584178e77;
    v267 = 0x8000000270C53370;
    v271 = a3;
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v97);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53310);
    v98 = v266;
    v99 = v267;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v100 = v98;
    *(v100 + 8) = v99;
    *(v100 + 16) = 1;
    swift_willThrow();
    return (*(v23 + 8))(v265, v255);
  }

  v244 = v48;
  v238 = v73;
  v239 = v72;
  v240 = v71;
  v241 = v70;
  v242 = v69;
  v236 = v68;
  v237 = v67;
  v235 = v66;
  v232 = v76;
  v231 = a3;
  v246 = v75;
  v248 = v17;
  v250 = v74;
  v249 = *&a6;
  *&v266 = 1;
  v79 = lazy protocol witness table accessor for type Int and conformance Int();
  v80 = v255;
  v81 = v264;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v243 = v18;
  *&v266 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() / 2;
  v230 = v79;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v247 = v23;
  v83 = v23 + 8;
  v82 = *(v23 + 8);
  v82(v64, v80);
  v84 = v265;
  v233 = *(*(v81 + 4) + 8);
  LOBYTE(v81) = dispatch thunk of static Comparable.< infix(_:_:)();
  v251 = v82;
  v82(v78, v80);
  if ((v81 & 1) == 0)
  {
    v266 = 0.0;
    v267 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C53390);
    v101 = *(v264 + 1);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C533B0);
    v271 = v248;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v102);

    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C533D0);
    v103 = v266;
    v104 = v267;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v105 = v103;
    *(v105 + 8) = v104;
    *(v105 + 16) = 1;
    swift_willThrow();
    return v251(v84, v80);
  }

  v85 = v259;
  dispatch thunk of static Numeric.* infix(_:_:)();
  static FieldElement.modulus.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v227[1] = *(v85 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v228 = v64;
  v86 = v251;
  v251(v64, v80);
  v234 = v78;
  v86(v78, v80);
  v87 = v80;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v106 = v264;
    v107 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v108 = dispatch thunk of BinaryInteger._lowWord.getter();
    v86(v58, v80);
    if (v107)
    {
      v89 = v108;
    }

    else
    {
      v89 = v108;
    }

    v90 = v247;
    v91 = v106;
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v88 = v264;
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v86(v58, v80);
    v89 = v266;
    v90 = v247;
    v91 = v88;
  }

  v110 = v257;
  v109 = v258;
  v112 = *(v90 + 16);
  v111 = v90 + 16;
  v258 = v112;
  (v112)(v257, v250, v87);
  v113 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v245 = v83;
  if (v113 <= 64)
  {
    v116 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v114 = v91;
    v117 = dispatch thunk of BinaryInteger._lowWord.getter();
    v251(v110, v87);
    if (v116)
    {
      v115 = v117;
    }

    else
    {
      v115 = v117;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v114 = v91;
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v251(v110, v87);
    v115 = v266;
  }

  v118 = v265;
  if (v115 >= v89 / 3.0)
  {
    v266 = 0.0;
    v267 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C53390);
    v123 = *(v114 + 1);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C533B0);
    v271 = v248;
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v124);

    MEMORY[0x2743B25F0](0xD00000000000002ALL, 0x8000000270C53400);
    v125 = v87;
    v126 = v234;
    static FieldElement.modulus.getter();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v127 = v251;
    v251(v126, v125);
    v128 = v266;
    v129 = v267;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v130 = v128;
    *(v130 + 8) = v129;
    *(v130 + 16) = 1;
    swift_willThrow();
    v127(v118, v125);
    return (v127)(v250, v125);
  }

  (v258)(v109, v265, v87);
  v119 = v114;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v131 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v132 = dispatch thunk of BinaryInteger._lowWord.getter();
    v133 = v109;
    v121 = v251;
    v251(v133, v87);
    if (v131)
    {
      v122 = v132;
    }

    else
    {
      v122 = v132;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v120 = v109;
    v121 = v251;
    v251(v120, v87);
    v122 = v266;
  }

  v134 = v244;
  static FieldElement.modulus.getter();
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v139 = dispatch thunk of BinaryInteger._lowWord.getter();
    v140 = v134;
    v136 = v121;
    v121(v140, v87);
    if (v138)
    {
      v137 = v139;
    }

    else
    {
      v137 = v139;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v135 = v134;
    v136 = v121;
    v121(v135, v87);
    v137 = v266;
  }

  if (v122 >= v137 / a10)
  {
    v266 = 0.0;
    v267 = 0xE000000000000000;
    _StringGuts.grow(_:)(88);
    MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C53430);
    v144 = *(v119 + 1);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C533B0);
    v271 = v248;
    v145 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v145);

    MEMORY[0x2743B25F0](0x3D6168706C61202CLL, 0xE800000000000000);
    Double.write<A>(to:)();
    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C53450);
    v146 = v87;
    v147 = v234;
    static FieldElement.modulus.getter();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v136(v147, v146);
    v148 = v266;
    v149 = v267;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v150 = v148;
    *(v150 + 8) = v149;
    *(v150 + 16) = 1;
    swift_willThrow();
    v136(v118, v146);
    return (v136)(v250, v146);
  }

  v141 = v238;
  (v258)(v238, v118, v87);
  v142 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v247 = v111;
  if (v142 < 65)
  {
    v151 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v152 = dispatch thunk of BinaryInteger._lowWord.getter();
    v136(v141, v87);
    if (v151)
    {
      v143 = v152;
    }

    else
    {
      v143 = v152;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v136(v141, v87);
    v143 = v266;
  }

  v266 = ceil(v143 * a10) + 1.0;
  lazy protocol witness table accessor for type Double and conformance Double();
  v153 = v239;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  FixedWidthInteger.nextPowerOfTwo.getter(v87, v243, v246);
  v136(v153, v87);
  v154 = v240;
  static FieldElement.modulus.getter();
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v157 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v158 = dispatch thunk of BinaryInteger._lowWord.getter();
    v136(v154, v87);
    if (v157)
    {
      v155 = v158;
    }

    else
    {
      v155 = v158;
    }

    v156 = v246;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v136(v154, v87);
    v155 = v266;
    v156 = v246;
  }

  v159 = v258;
  v160 = v241;
  (v258)(v241, v156, v87);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v163 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v164 = dispatch thunk of BinaryInteger._lowWord.getter();
    v136(v160, v87);
    if (v163)
    {
      v161 = v164;
    }

    else
    {
      v161 = v164;
    }

    v162 = v246;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v136(v160, v87);
    v161 = v266;
    v162 = v246;
  }

  v165 = v242;
  v159(v242, v162, v87);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v167 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v168 = dispatch thunk of BinaryInteger._lowWord.getter();
    v136(v165, v87);
    if (v167)
    {
      v166 = v168;
    }

    else
    {
      v166 = v168;
    }
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v136(v165, v87);
    v166 = v266;
  }

  if (v166 / 4000.0 > v155 / v161)
  {
    goto LABEL_67;
  }

  v169 = v236;
  static FieldElement.modulus.getter();
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v172 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v173 = dispatch thunk of BinaryInteger._lowWord.getter();
    v136(v169, v87);
    v170 = (v172 & 1) != 0 ? v173 : v173;
    v171 = v246;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v136(v169, v87);
    v170 = v266;
    v171 = v246;
  }

  v174 = v237;
  v159(v237, v171, v87);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v176 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v177 = dispatch thunk of BinaryInteger._lowWord.getter();
    v136(v174, v87);
    v175 = (v176 & 1) != 0 ? v177 : v177;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v136(v174, v87);
    v175 = v266;
  }

  if (v175 > v170 / 2600.0)
  {
    goto LABEL_67;
  }

  v187 = v234;
  static FieldElement.modulus.getter();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v188 = v228;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v189 = v235;
  dispatch thunk of static BinaryInteger./ infix(_:_:)();
  v136(v188, v87);
  v136(v187, v87);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v191 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v192 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v191)
    {
      if (v192 > 64)
      {
        v193 = *&v256;
        goto LABEL_82;
      }

      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v198 = v235;
      v199 = dispatch thunk of static Comparable.< infix(_:_:)();
      v136(v187, v87);
      if (v199)
      {
        v136(v198, v87);
        goto LABEL_67;
      }

      v196 = dispatch thunk of BinaryInteger._lowWord.getter();
      v197 = v198;
    }

    else
    {
      if (v192 >= 64)
      {
        v193 = *&v256;
        if (v256 < 1)
        {
          v136(v235, v87);
          goto LABEL_88;
        }

LABEL_82:
        v266 = v193;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v200 = v235;
        v201 = dispatch thunk of static Comparable.< infix(_:_:)();
        v136(v187, v87);
        v136(v200, v87);
        if (v201)
        {
          goto LABEL_67;
        }

        goto LABEL_88;
      }

      v195 = v235;
      v196 = dispatch thunk of BinaryInteger._lowWord.getter();
      v197 = v195;
    }

    v136(v197, v87);
    if (v196 < v256)
    {
      goto LABEL_67;
    }

    goto LABEL_88;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v190 = dispatch thunk of BinaryInteger._lowWord.getter();
    v136(v189, v87);
    if (v190 >= v256)
    {
      goto LABEL_88;
    }

LABEL_67:
    v266 = 0.0;
    v267 = 0xE000000000000000;
    _StringGuts.grow(_:)(166);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C53470);
    v178 = *(v119 + 1);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000019, 0x8000000270C53490);
    v271 = v248;
    v179 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v179);

    MEMORY[0x2743B25F0](0x706C612020202020, 0xEB000000003D6168);
    Double.write<A>(to:)();
    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C534B0);
    v271 = v256;
    v180 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v180);

    MEMORY[0x2743B25F0](0xD00000000000001ELL, 0x8000000270C534D0);
    v181 = v246;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000029, 0x8000000270C534F0);
    v182 = v87;
    v183 = v234;
    static FieldElement.modulus.getter();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v136(v183, v182);
    v184 = v266;
    v185 = v267;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v186 = v184;
    *(v186 + 8) = v185;
    *(v186 + 16) = 1;
    swift_willThrow();
    v136(v265, v182);
    v136(v181, v182);
    return (v136)(v250, v182);
  }

  v266 = *&v256;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v194 = dispatch thunk of static Comparable.< infix(_:_:)();
  v136(v187, v87);
  v136(v189, v87);
  if (v194)
  {
    goto LABEL_67;
  }

LABEL_88:
  v264 = a12;
  v257 = a11;
  v251 = FixedWidthInteger.bitLength.getter();
  *(v254 + 48) = v251;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v202 = v232;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v203 = v228;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v136(v202, v87);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v204 = v234;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v136(v202, v255);
  v136(v203, v255);
  v205 = FixedWidthInteger.bitLength.getter();
  v136(v204, v255);
  v266 = v249;
  v267 = v253;
  v268 = v263;
  v269 = v257;
  v270 = v264;
  result = type metadata accessor for PINECircuitParameter();
  v206 = v254;
  v207 = v251;
  *(v254 + *(result + 88)) = v205;
  if (v207 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  v208 = v205 + 1;
  v209 = v231;
  if (__OFADD__(v205, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v210 = v256;
  v211 = v208 * v256;
  if ((v208 * v256) >> 64 != (v208 * v256) >> 63)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v212 = 2 * v207;
  v213 = __OFADD__(2 * v207, v211);
  v214 = 2 * v207 + v211;
  if (v213)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  *(v206 + 8) = v214;
  v213 = __OFADD__(v209, v214);
  v215 = v209 + v214;
  v216 = v248;
  if (v213)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v213 = __OFADD__(v215, v210);
  v217 = v215 + v210;
  if (v213)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  *(v206 + 16) = v217;
  *(v206 + 40) = v209;
  v213 = __OFADD__(v209, v212);
  v218 = v209 + v212;
  if (!v213)
  {
    v219 = result;
    *v206 = a10;
    *(v206 + 24) = v218;
    *(v206 + 32) = v216;
    v220 = v234;
    v221 = v255;
    v222 = v258;
    (v258)(v234, v250, v255);
    v223 = v206 + v219[21];
    v224 = *&v249;
    FieldElement.init(_:)(v220, *&v249, v263);
    *(v206 + v219[23]) = *&v256;
    *(v206 + v219[24]) = v252;
    v264 = v219;
    v225 = v246;
    v222(v220, v246, v221);
    v226 = v206 + v264[25];
    FieldElement.init(_:)(v220, v224, v263);
    v136(v265, v221);
    v136(v225, v221);
    return (v136)(v250, v221);
  }

LABEL_102:
  __break(1u);
  return result;
}

uint64_t PINECircuitParameter.init(l2NormBound:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, int *a12)
{
  v41 = a4;
  v42 = a5;
  v39 = a9;
  v40 = a3;
  v45 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  v19 = *(v43 + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness, v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v37 - v25;
  v27 = a1;
  v28 = a1;
  v38 = a2;
  v29 = a7;
  v30 = v45;
  v31 = v46;
  static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(v28, a2, a6, a8, v45, a12, &v37 - v25);
  if (v31)
  {
    v32 = *(v30 + 8);
    v33 = swift_getAssociatedTypeWitness();
    return (*(*(v33 - 8) + 8))(v27, v33);
  }

  else
  {
    (*(v43 + 16))(v23, v26, v44);
    PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v23, v38, v40, v41, v42, a6, v29, a8, v39, a10, v30, a12);
    v35 = *(v30 + 8);
    v36 = swift_getAssociatedTypeWitness();
    (*(*(v36 - 8) + 8))(v27, v36);
    return (*(v43 + 8))(v26, v44);
  }
}

uint64_t PINECircuit.gadgetParameters.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v13 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_270C44540;
  (*(a2 + 48))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Gadget.parameters.getter(AssociatedTypeWitness, AssociatedConformanceWitness, (v10 + 32));
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v10;
}

uint64_t PINECircuit.evaluateGadget<A>(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v15 = &v18 - v14;
  (*(a5 + 48))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(a2, a4, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

uint64_t PINECircuit.evaluateGadget(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v12 = &v19 - v11;
  (*(a3 + 48))(a2, a3);
  v20 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 72);
  v15 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Polynomial();
  v16 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v14(&v20, v16, WitnessTable, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v12, AssociatedTypeWitness);
}

uint64_t static PINECircuit.computeRangeCheck(_:lowerBound:upperBound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a5;
  v38 = a1;
  v39 = a4;
  v30[2] = a3;
  v36 = a2;
  v8 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedTypeWitness();
  v37 = *(v33 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v33, v11);
  v31 = v30 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v30 - v21;
  v23 = v14[2];
  v23(v19, a3, v13);
  v30[0] = v23;
  FieldElement.init(other:)(v19, v13, AssociatedConformanceWitness);
  v30[1] = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  FieldElement.integerValue.getter(v13, AssociatedConformanceWitness);
  v24 = v14[1];
  v24(v22, v13);
  v25 = v32;
  v23(v19, v32, v13);
  FieldElement.init(other:)(v19, v13, AssociatedConformanceWitness);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  FieldElement.integerValue.getter(v13, AssociatedConformanceWitness);
  v24(v22, v13);
  (v30[0])(v19, v25, v13);
  FieldElement.init(other:)(v19, v13, AssociatedConformanceWitness);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v26 = v31;
  FieldElement.integerValue.getter(v13, AssociatedConformanceWitness);
  v24(v22, v13);
  v27 = v33;
  v28 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 32) + 8);
  LOBYTE(v13) = dispatch thunk of static Comparable.<= infix(_:_:)();
  (*(v37 + 8))(v26, v27);
  return v13 & 1;
}

void closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (*(*(*(*a6 + 88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v8 = *(v7 + 8);
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
  WraparoundJointRandomness.flushBitsLeft()();
}

Swift::Int closure #1 in closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  result = WraparoundJointRandomness.next()();
  if (result == -1)
  {
    v11 = *(v6 + 88);
    v12 = *(a5 + 8);
    v13 = *(swift_getAssociatedConformanceWitness() + 8);
    return dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  }

  else if (result == 1)
  {
    v8 = *(v6 + 88);
    v9 = *(a5 + 8);
    v10 = *(swift_getAssociatedConformanceWitness() + 8);
    return dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  }

  return result;
}

uint64_t PINECircuit.unpack(bitsSlice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v49 = a1;
  v45 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = *(v12 + 8);
  swift_getAssociatedTypeWitness();
  v48 = a2;
  *&v52 = AssociatedTypeWitness;
  *(&v52 + 1) = v10;
  *&v53 = AssociatedConformanceWitness;
  *(&v53 + 1) = v12;
  v54 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for PINECircuitParameter();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v38 - v18;
  v50 = v5;
  v51 = a3;
  v47 = *(a3 + 56);
  v47(a2, a3);
  v20 = *(v19 + 6);
  v21 = *(v15 + 8);
  v21(v19, v14);
  v22 = v21;
  v23 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection<>.popFirst(_:)(v20, v23, WitnessTable);
  v43 = v52;
  v41 = *(&v53 + 1);
  v42 = v53;
  v24 = v47;
  v25 = v48;
  v47(v48, v51);
  v26 = *(v19 + 6);
  v22(v19, v14);
  v44 = v23;
  v27 = v23;
  v28 = WitnessTable;
  RandomAccessCollection<>.popFirst(_:)(v26, v27, WitnessTable);
  v40 = v52;
  v38 = *(&v53 + 1);
  v39 = v53;
  v24(v25, v51);
  v29 = *&v19[*(v14 + 88)];
  result = (v22)(v19, v14);
  v31 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v24(v25, v51);
    v32 = *&v19[*(v14 + 92)];
    v22(v19, v14);
    result = v31 * v32;
    if ((v31 * v32) >> 64 == (v31 * v32) >> 63)
    {
      result = RandomAccessCollection<>.popFirst(_:)(result, v44, v28);
      v34 = v52;
      v33 = v53;
      v35 = v45;
      *v45 = v43;
      v36 = v41;
      *(v35 + 2) = v42;
      *(v35 + 3) = v36;
      v35[2] = v40;
      v37 = v38;
      *(v35 + 6) = v39;
      *(v35 + 7) = v37;
      v35[4] = v34;
      v35[5] = v33;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 PINECircuit.unpack(encodedMeasurement:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v42 = a1;
  v43 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  WitnessTable = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = *(v10 + 8);
  swift_getAssociatedTypeWitness();
  *&v46 = AssociatedTypeWitness;
  *(&v46 + 1) = v8;
  v47.n128_u64[0] = AssociatedConformanceWitness;
  v47.n128_u64[1] = v10;
  v48 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for PINECircuitParameter();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - v16;
  v37 = *(a3 + 56);
  v38 = a3;
  v37(a2, a3);
  v18 = *(v17 + 5);
  v19 = *(v13 + 8);
  v36 = v13 + 8;
  v32 = v12;
  v19(v17, v12);
  v20 = v19;
  v21 = type metadata accessor for ArraySlice();
  v44 = v21;
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection<>.popFirst(_:)(v18, v21, WitnessTable);
  v40 = v47.n128_u64[1];
  v41 = v47.n128_u64[0];
  v39 = v46;
  v23 = v37;
  v22 = v38;
  v37(a2, v38);
  v24 = *(v17 + 1);
  v20(v17, v12);
  RandomAccessCollection<>.popFirst(_:)(v24, v44, WitnessTable);
  v34 = v47.n128_u64[1];
  v35 = v47.n128_u64[0];
  v33 = v46;
  v23(a2, v22);
  v25 = *&v17[*(v32 + 92)];
  (v20)(v17);
  RandomAccessCollection<>.popFirst(_:)(v25, v44, WitnessTable);
  v27 = v46;
  result = v47;
  v28 = v43;
  *v43 = v39;
  v29 = v40;
  *(v28 + 2) = v41;
  *(v28 + 3) = v29;
  v28[2] = v33;
  v30 = v34;
  *(v28 + 6) = v35;
  *(v28 + 7) = v30;
  v28[4] = v27;
  v28[5] = result;
  return result;
}

uint64_t PINENormEqualityCheckCircuit.gadget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
}

uint64_t PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = *(a4 + 16);
  v13 = MEMORY[0x2743B2830](a1, v12);
  if (v13 != *(v6 + *(a4 + 64) + 16))
  {
    v15 = v13;
    _StringGuts.grow(_:)(35);

    *&v42 = 0xD00000000000001BLL;
    *(&v42 + 1) = 0x8000000270C51C80;
    v51[0] = v15;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v51[0] = *(v6 + *(a4 + 64) + 16);
    goto LABEL_5;
  }

  if (MEMORY[0x2743B2830](a2, v12))
  {
    _StringGuts.grow(_:)(33);

    *&v42 = 0xD000000000000019;
    *(&v42 + 1) = 0x8000000270C51CE0;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v51[0] = 0;
LABEL_5:
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);
LABEL_6:

    v18 = *(&v42 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v19 = v42;
    *(v19 + 8) = v18;
    *(v19 + 16) = 2;
    return swift_willThrow();
  }

  v21 = *(a4 + 32);
  type metadata accessor for GadgetEvaluation();
  v22 = MEMORY[0x2743B2830](a3);
  WitnessTable = swift_getWitnessTable();
  v23 = *(PINECircuit.gadgetParameters.getter(a4, WitnessTable) + 16);

  if (v22 != v23)
  {
    _StringGuts.grow(_:)(23);

    *&v42 = 0x2064696C61766E49;
    *(&v42 + 1) = 0xEF203A746E756F63;
    v51[0] = v22;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    PINECircuit.gadgetParameters.getter(a4, WitnessTable);
    v34 = MEMORY[0x2743B2770]();
    v36 = v35;

    MEMORY[0x2743B25F0](v34, v36);
    goto LABEL_6;
  }

  *&v42 = a1;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v51[0] = ArraySlice.init<A>(_:)();
  v51[1] = v24;
  v51[2] = v25;
  v51[3] = v26;
  PINECircuit.unpack(encodedMeasurement:)(v51, a4, WitnessTable, &v42);
  v27 = v42;
  v39 = v43;
  v40 = *(&v42 + 1);
  v38 = v44;
  v28 = v46;
  v29 = v47;
  v37 = v45;
  swift_unknownObjectRelease();
  v48 = v37;
  v49 = v28;
  v50 = v29;
  swift_unknownObjectRetain();
  PINECircuit.unpack(bitsSlice:)(&v48, a4, WitnessTable, &v42);
  v30 = v42;
  v31 = v43;
  *&v37 = v44;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  Array.subscript.getter();
  v32 = v42;
  v52 = v42;
  PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(v27, v40, v39, v38, v30, *(&v30 + 1), v31, v37, a5, &v52, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  outlined consume of GadgetEvaluation<A><A>(v32);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v46 = a7;
  v47 = a8;
  v45 = a6;
  v44 = a5;
  v48 = a3;
  v49 = a4;
  v43 = a9;
  v14 = *(a11 + 16);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v41 - v24;
  v27 = *v26;
  v29 = *(v11 + 40);
  v28 = *(v11 + 48);
  v30 = *(v11 + 24);
  v57 = *(v11 + 8);
  v58 = v30;
  v59 = v29;
  v60 = v28;
  v61 = v27;
  v32 = *(v31 + 24);
  v52 = v14;
  v53 = v32;
  v54 = *(v31 + 32);
  v33 = v54;
  v55 = *(v31 + 48);
  v56 = v11;
  type metadata accessor for PolynomialEvaluationGadget();

  swift_getWitnessTable();
  v34 = type metadata accessor for ParallelSum();
  v35 = v50;
  ParallelSum.chunkEvaluateSum(_:for:_:)(a1, a2, v48, v49, &v61, partial apply for closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), v51, v34, v25);

  if (!v35)
  {
    v37 = v42;
    v38 = swift_unknownObjectRetain();
    FieldElement.init(inputVector:)(v38, v45, v46, v47, v14, v33, v22);
    (*(v37 + 16))(v18, v22, v14);
    FieldElement.init(other:)(v18, v14, v33);
    v39 = *(v33 + 8);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v40 = *(v37 + 8);
    v40(v22, v14);
    return (v40)(v25, v14);
  }

  return result;
}

uint64_t closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](a1, a2);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v56 = &v51 - v21;
  result = ArraySlice.count.getter();
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v57 = v15;
  v52 = a6;
  v51 = v19;
  if (result)
  {
    v23 = 0;
    v53 = v57 + 40;
    v54 = result;
    v55 = a2;
    while (1)
    {
      v24 = ArraySlice.startIndex.getter();
      v25 = __OFADD__(v24, v23);
      result = v24 + v23;
      if (v25)
      {
        break;
      }

      v58 = v23 + 1;
      v26 = v56;
      ArraySlice.subscript.getter();
      v27 = a3;
      v28 = a4;
      v29 = type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v30 = *a5;
      Array._checkSubscript_mutating(_:)(v23);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v32 = v30 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v32 = v30;
      }

      (*(v57 + 40))(v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v23, v26, a7);
      v33 = v29;
      a4 = v28;
      a3 = v27;
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v33, v34, v35, v36, v37);
      v23 = v58;
      if (v54 == v58)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_8:
  result = ArraySlice.count.getter();
  v38 = *(v52 + 48);
  if (v38 < result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = result;
  v40 = v57;
  if (result != v38)
  {
    if (result >= v38)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v58 = *(a9 + 8);
    v56 = (v57 + 40);
    v41 = v51;
    do
    {
      v42 = v39 + 1;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v43 = type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v44 = *a5;
      Array._checkSubscript_mutating(_:)(v39);
      v45 = _swift_isClassOrObjCExistentialType();
      v46 = v44 & 0xFFFFFFFFFFFFFF8;
      if ((v45 & 1) == 0)
      {
        v46 = v44;
      }

      (*(v40 + 40))(v46 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, v41, a7);
      result = destructiveProjectEnumData for SeedCtrlUnadjustedError(v43, v47, v48, v49, v50);
      ++v39;
    }

    while (v38 != v42);
  }

  return result;
}

uint64_t protocol witness for PINECircuit.gadget.getter in conformance PINENormEqualityCheckCircuit<A, B>@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
}

uint64_t protocol witness for FullyLinearProof.outputLength.getter in conformance PINENormEqualityCheckCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.outputLength.getter(a1, WitnessTable);
}

uint64_t protocol witness for FullyLinearProof.gadgetParameters.getter in conformance PINENormEqualityCheckCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.gadgetParameters.getter(a1, WitnessTable);
}

uint64_t protocol witness for FullyLinearProof.decode(data:numOfMeasurements:) in conformance PINENormEqualityCheckCircuit<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  return protocol witness for FullyLinearProof.decode(data:numOfMeasurements:) in conformance PINENormEqualityCheckCircuit<A, B>(a1, a2, a3);
}

{
  WitnessTable = swift_getWitnessTable();
  result = specialized PINECircuit.decode(data:numOfMeasurements:)(a1, a2, WitnessTable);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget<A>(_:at:) in conformance PINENormEqualityCheckCircuit<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget<A>(_:at:)(WitnessTable, a2, a5, a3, WitnessTable, a4);
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget(_:at:) in conformance PINENormEqualityCheckCircuit<A, B>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget(_:at:)(a1, a2, WitnessTable, a3);
}

__n128 PINEMainCircuit.gadget.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

uint64_t PINENormEqualityCheckCircuit.parameters.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = type metadata accessor for PINECircuitParameter();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t PINENormEqualityCheckCircuit.init(l2NormBound:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(char *, void (*)(void, void), uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, double, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v44 = a2;
  v39 = a6;
  v40 = a7;
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v35 = a9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  v19 = *(v41 + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness, v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v33 - v25;
  v27 = v43;
  v34 = a8;
  static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(a1, v44, a8, a12, a13, a14, &v33 - v25);
  if (v27)
  {
    v28 = *(a13 + 8);
    v29 = swift_getAssociatedTypeWitness();
    return (*(*(v29 - 8) + 8))(a1, v29);
  }

  else
  {
    (*(v41 + 16))(v23, v26, v42);
    a15(v23, v44, v37, v38, v36 & 1, v39, v40, v34, a10, a11, a12, a13, a14);
    v31 = *(a13 + 8);
    v32 = swift_getAssociatedTypeWitness();
    (*(*(v32 - 8) + 8))(a1, v32);
    return (*(v41 + 8))(v26, v42);
  }
}

uint64_t PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v272 = a4;
  v282 = a3;
  v273 = a2;
  v248 = a6;
  v8 = *(a5 + 32);
  v9 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v271 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v285 = AssociatedConformanceWitness;
  v292 = AssociatedTypeWitness;
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v289 = *(v12 + 3);
  v288 = *(v289 + 2);
  v287 = swift_getAssociatedTypeWitness();
  v13 = *(*(v287 - 8) + 64);
  MEMORY[0x28223BE20](v287, v14);
  v286 = v237 - v15;
  v16 = swift_checkMetadataState();
  v284 = *(v16 - 8);
  v17 = v284[8];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v254 = v237 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v281 = v237 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v291 = v237 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v275 = v237 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v290 = v237 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v283 = v237 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v263 = v237 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v266 = v237 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v270 = v237 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v259 = v237 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v51 = v237 - v50;
  v267 = *(v9 - 8);
  v52 = v267[8];
  v54 = MEMORY[0x28223BE20](v49, v53);
  v247 = v237 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v256 = v237 - v58;
  v60 = MEMORY[0x28223BE20](v57, v59);
  v257 = v237 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v255 = v237 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v250 = v237 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v249 = v237 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v253 = v237 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v252 = v237 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v258 = v237 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v264 = v237 - v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v269 = v237 - v85;
  v87 = MEMORY[0x28223BE20](v84, v86);
  v268 = v237 - v88;
  v90 = MEMORY[0x28223BE20](v87, v89);
  v92 = v237 - v91;
  v94 = MEMORY[0x28223BE20](v90, v93);
  v262 = v237 - v95;
  v97 = MEMORY[0x28223BE20](v94, v96);
  v265 = v237 - v98;
  MEMORY[0x28223BE20](v97, v99);
  v101 = v237 - v100;
  v260 = a1;
  v102 = a1;
  v103 = v274;
  v104 = MEMORY[0x2743B2830](v102, v9);
  if (v104 != *(v103 + *(a5 + 64) + 16))
  {
    v119 = v104;
    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v293 = 0xD00000000000001BLL;
    *(&v293 + 1) = 0x8000000270C51C80;
    v305[0] = v119;
    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v120);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v121 = *(v103 + *(a5 + 64) + 16);
LABEL_10:
    v305[0] = v121;
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v124);
LABEL_11:

    v125 = v293;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v126 = v125;
    *(v126 + 16) = 2;
    return swift_willThrow();
  }

  v251 = a5;
  v105 = MEMORY[0x2743B2830](v273, v9);
  if (v105 != 3)
  {
    v122 = v105;
    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    *&v293 = 0xD000000000000019;
    *(&v293 + 1) = 0x8000000270C51CE0;
    v305[0] = v122;
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v123);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v121 = 3;
    goto LABEL_10;
  }

  v246 = v101;
  v244 = v92;
  v106 = v271;
  v243 = type metadata accessor for GadgetEvaluation();
  v107 = MEMORY[0x2743B2830](v272);
  v108 = v251;
  WitnessTable = swift_getWitnessTable();
  v110 = *(PINECircuit.gadgetParameters.getter(v108, WitnessTable) + 16);

  if (v107 != v110)
  {
    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v293 = 0x2064696C61766E49;
    *(&v293 + 1) = 0xEF203A746E756F63;
    v305[0] = v107;
    v128 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v128);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    PINECircuit.gadgetParameters.getter(v108, WitnessTable);
    v129 = MEMORY[0x2743B2770]();
    v131 = v130;

    MEMORY[0x2743B25F0](v129, v131);
    goto LABEL_11;
  }

  v241 = WitnessTable;
  *&v293 = v282;
  v280 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v111 = v265;
  FieldElement.init(_:)(v51, v9, v106);
  v112 = v267[2];
  v113 = v262;
  v240 = v267 + 2;
  v239 = v112;
  v112(v262, v111, v9);
  FieldElement.init(other:)(v113, v9, v106);
  v114 = v106[11];
  v237[1] = v106 + 11;
  v238 = v114;
  v114(v9, v106);
  v115 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v242 = v9;
  if (v115)
  {
    v116 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v117 = v285;
    v118 = v284;
    if (v116 >= 64)
    {
      *&v293 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v136 = *(*(v12 + 2) + 8);
      v137 = dispatch thunk of static Equatable.== infix(_:_:)();
      v138 = v118;
      goto LABEL_22;
    }
  }

  else
  {
    v132 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v133 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v117 = v285;
    v106 = v284;
    if ((v132 & 1) == 0)
    {
      if (v133 >= 64)
      {
        goto LABEL_21;
      }

      v118 = v284;
      if (!dispatch thunk of BinaryInteger._lowWord.getter())
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v133 > 64)
    {
      goto LABEL_21;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v134 = *(*(v12 + 4) + 8);
    v135 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v118 = v106;
    (v106[1])(v51, v16);
    if ((v135 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!dispatch thunk of BinaryInteger._lowWord.getter())
  {
    do
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_21:
      *&v293 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v139 = *(*(v12 + 2) + 8);
      v137 = dispatch thunk of static Equatable.== infix(_:_:)();
      v118 = v106;
      v138 = v106;
LABEL_22:
      (v138[1])(v51, v16);
    }

    while ((v137 & 1) != 0);
  }

LABEL_23:
  v292 = swift_checkMetadataState();
  (*(v117 + 24))(v292, v117);
  v282 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v140 = v263;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v141 = *(v289 + 1);
  v142 = v266;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v143 = v118 + 1;
  v144 = v140;
  v145 = v118[1];
  v145(v144, v16);
  v145(v51, v16);
  v147 = v118[2];
  v146 = v118 + 2;
  v147(v283, v270, v16);
  v148 = v290;
  v279 = v147;
  v147(v290, v142, v16);
  *&v293 = 1;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v285 + 64))(v51);
  v149 = v143;
  v145(v51, v16);
  v277 = v285 + 56;
  v278 = (v146 + 2);
  v284 = v146;
  v276 = v12;
  v245 = v51;
  v289 = v145;
  while (1)
  {
    v158 = v291;
    v279(v291, v148, v16);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      break;
    }

    v159 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v160 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v161 = v281;
    if ((v159 & 1) == 0)
    {
      if (v160 >= 128)
      {
        lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v293 = 0uLL;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v173 = *(*(v12 + 2) + 8);
        v174 = v291;
        v175 = dispatch thunk of static Equatable.== infix(_:_:)();
        v145(v51, v16);
        v176 = v174;
        v148 = v290;
        goto LABEL_43;
      }

      v166 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v158 = v291;
      goto LABEL_37;
    }

    if (v160 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v169 = *(*(v12 + 4) + 8);
      v170 = v291;
      v171 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v145(v51, v16);
      if (v171)
      {
        v172 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v170, &type metadata for _UInt128, v16, v172, v12, &v293);
        v145(v170, v16);
        v148 = v290;
        if (v293 == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v145(v170, v16);
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v293 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v162 = *(*(v12 + 2) + 8);
      v163 = v291;
      v164 = dispatch thunk of static Equatable.== infix(_:_:)();
      v145(v51, v16);
      v145(v163, v16);
      v148 = v290;
      if (v164)
      {
        goto LABEL_57;
      }
    }

LABEL_44:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v145(v51, v16);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v177 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v178 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v177)
      {
        if (v178 <= 128)
        {
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v179 = *(*(v12 + 4) + 8);
          v180 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v145(v51, v16);
          if ((v180 & 1) == 0)
          {
            v145(v161, v16);
            v150 = v285;
            v151 = v149;
            v152 = v283;
            v51 = v245;
            v153 = v278;
LABEL_25:
            v154 = v275;
            (*(v150 + 56))(v275, v152, v292, v150);
            v155 = v292;
            v289(v154, v16);
            (*v153)(v154, v51, v16);
            goto LABEL_26;
          }

          v181 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          static FixedWidthInteger._truncatingInit<A>(_:)(v161, &type metadata for _UInt128, v16, v181, v12, &v293);
          v145(v161, v16);
          v182 = *(&v293 + 1) | v293;
          v150 = v285;
          v155 = v292;
          v151 = v149;
          v152 = v283;
          v51 = v245;
          goto LABEL_51;
        }
      }

      else if (v178 < 128)
      {
LABEL_50:
        v183 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v161, &type metadata for _UInt128, v16, v183, v12, &v293);
        v145(v161, v16);
        v182 = *(&v293 + 1) | v293;
        v150 = v285;
        v155 = v292;
        v151 = v149;
        v152 = v283;
LABEL_51:
        v153 = v278;
        if (v182)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
    {
      goto LABEL_50;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v293 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v184 = *(*(v12 + 2) + 8);
    v185 = dispatch thunk of static Equatable.== infix(_:_:)();
    v145(v51, v16);
    v145(v161, v16);
    v150 = v285;
    v155 = v292;
    v151 = v149;
    v152 = v283;
    v153 = v278;
    if ((v185 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_26:
    (*(v150 + 56))(v152, v152, v155, v150);
    v156 = v151;
    v145 = v289;
    v289(v152, v16);
    v157 = *v153;
    (*v153)(v152, v51, v16);
    *&v293 = 1;
    v148 = v290;
    v12 = v276;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v145(v148, v16);
    v157(v148, v51, v16);
    v149 = v156;
  }

  v165 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v161 = v281;
  if (v165 < 128)
  {
    v166 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
LABEL_37:
    static FixedWidthInteger._truncatingInit<A>(_:)(v158, &type metadata for _UInt128, v16, v166, v12, &v293);
    v145(v158, v16);
    if (v293 == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v293 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v167 = *(*(v12 + 2) + 8);
  v168 = v158;
  v175 = dispatch thunk of static Equatable.== infix(_:_:)();
  v145(v51, v16);
  v176 = v168;
LABEL_43:
  v145(v176, v16);
  if ((v175 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_57:
  v145(v148, v16);
  v145(v283, v16);
  v145(v266, v16);
  v145(v270, v16);
  v186 = v259;
  (*v278)(v259, v275, v16);
  v187 = *(v271 + 96);
  v188 = v242;
  v281 = (v271 + 96);
  v280 = v187;
  (v187)(v186, v242);
  v290 = v267[1];
  v291 = (v267 + 1);
  (v290)(v265, v188);
  Array.subscript.getter();
  Array.subscript.getter();
  Array.subscript.getter();
  *&v293 = v260;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v305[0] = ArraySlice.init<A>(_:)();
  v305[1] = v189;
  v305[2] = v190;
  v305[3] = v191;
  PINECircuit.unpack(encodedMeasurement:)(v305, v251, v241, &v293);
  v193 = v296;
  v192 = v297;
  v195 = v298;
  v194 = v299;
  v284 = v300;
  v279 = v301;
  v278 = v302;
  v276 = v303;
  swift_unknownObjectRelease();
  v304[0] = v193;
  v304[1] = v192;
  v304[2] = v195;
  v304[3] = v194;
  swift_unknownObjectRetain();
  Array.subscript.getter();
  v283 = v293;
  v306 = v293;
  v196 = v192;
  v197 = v251;
  v198 = v261;
  PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)(v193, v196, v195, v194, v244, v246, v251, v264);
  swift_unknownObjectRelease();
  if (v198)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v283);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v199 = v290;
    (v290)(v269, v188);
    v199(v268, v188);
    v199(v244, v188);
    return (v199)(v246, v188);
  }

  else
  {
    outlined consume of GadgetEvaluation<A><A>(v283);
    PINECircuit.unpack(bitsSlice:)(v304, v197, v241, &v293);
    v273 = *(&v293 + 1);
    v200 = v293;
    v270 = v294;
    v266 = v295;
    v201 = v296;
    v202 = v297;
    v265 = v298;
    v261 = v299;
    v283 = v300;
    v260 = v301;
    v259 = v302;
    v241 = v303;
    Array.subscript.getter();
    v275 = v293;
    PINEMainCircuit.evaluateNormRangeCheck(vBits:uBits:inverseNumOfShares:for:)(v273, v270, v266, v201, v202, v265, v261, v258, v246, v236, v197);
    v270 = v200;
    v273 = v201;
    outlined consume of GadgetEvaluation<A><A>(v275);
    Array.subscript.getter();
    v203 = v293;
    v306 = v293;
    v204 = v249;
    v205 = v250;
    PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:)(v249, v250, v283, v260, v259, v241, v284, v279, v278, v276, v268, v246, &v306, v251);
    v206 = v242;
    outlined consume of GadgetEvaluation<A><A>(v203);
    v207 = v267[4];
    v207(v252, v204, v206);
    v207(v253, v205, v206);
    v208 = v256;
    v239(v256, v258, v206);
    v209 = v208;
    v210 = v271;
    FieldElement.init(other:)(v209, v206, v271);
    v211 = v238;
    v238(v206, v210);
    v211(v206, v210);
    v278 = *(v285 + 56);
    v212 = v263;
    v213 = v254;
    (v278)(v263, v254);
    v214 = v289;
    v289(v213, v16);
    v214(v212, v16);
    v215 = v257;
    v280(v51, v206, v210);
    v216 = v256;
    v239(v256, v264, v206);
    FieldElement.init(other:)(v216, v206, v210);
    v279 = *(v210 + 8);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    (v290)(v215, v206);
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    FieldElement.pow(_:)(v51, v206, v210, v256);
    v289(v51, v16);
    v217 = v247;
    v239(v247, v252, v206);
    FieldElement.init(other:)(v217, v206, v210);
    v218 = v238;
    v238(v206, v210);
    v219 = v254;
    v218(v206, v271);
    v220 = v263;
    (v278)(v263, v219);
    v221 = v219;
    v222 = v289;
    v289(v221, v16);
    v222(v220, v16);
    v223 = v271;
    v280(v51, v206, v271);
    v224 = v256;
    (v290)(v256, v206);
    v239(v224, v255, v206);
    FieldElement.init(other:)(v224, v206, v223);
    v225 = v257;
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v226 = v290;
    (v290)(v225, v206);
    v226(v255, v206);
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    FieldElement.pow(_:)(v51, v206, v223, v225);
    v289(v51, v16);
    v227 = v256;
    v239(v256, v253, v206);
    FieldElement.init(other:)(v227, v206, v223);
    v228 = v263;
    v238(v206, v223);
    v229 = v254;
    v238(v206, v271);
    (v278)(v228, v229);
    v230 = v289;
    v289(v229, v16);
    v230(v228, v16);
    v231 = v255;
    v232 = v271;
    v280(v51, v206, v271);
    v233 = v257;
    v234 = v290;
    (v290)(v257, v206);
    v235 = v262;
    v239(v233, v262, v206);
    FieldElement.init(other:)(v233, v206, v232);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v234(v231, v206);
    v234(v235, v206);
    v234(v253, v206);
    v234(v252, v206);
    v234(v258, v206);
    v234(v264, v206);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v234(v269, v206);
    v234(v268, v206);
    v234(v244, v206);
    return (v234)(v246, v206);
  }
}

uint64_t PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a6;
  v30 = a4;
  v29 = a3;
  v28 = a2;
  v27 = a1;
  v26 = a8;
  v11 = *(a7 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  v19 = *(v18 + 32);
  (*(v19 + 72))(v11, v19);
  v20 = *(v8 + 24);
  v40 = *(v8 + 8);
  v41 = v20;
  v42 = *(v8 + 40);
  v43 = v17;
  v21 = *(a7 + 24);
  v32 = v11;
  v33 = v21;
  v34 = v19;
  v35 = *(a7 + 40);
  v36 = v15;
  v37 = v25;
  v38 = a5;
  v39 = v8;
  type metadata accessor for MultiplicationGadget();
  swift_getWitnessTable();
  v22 = type metadata accessor for ParallelSum();
  ParallelSum.chunkEvaluateSum(_:for:_:)(v27, v28, v29, v30, &v43, partial apply for closure #1 in PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:), v31, v22, v26);
  return (*(v12 + 8))(v15, v11);
}

uint64_t PINEMainCircuit.evaluateNormRangeCheck(vBits:uBits:inverseNumOfShares:for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v81 = a6;
  v82 = a7;
  v79 = a4;
  v80 = a5;
  v86 = a2;
  v87 = a3;
  v85 = a1;
  v77 = a8;
  v11 = *(a11 + 32);
  v71 = a11;
  v12 = *(a11 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = AssociatedTypeWitness;
  v14 = swift_getAssociatedTypeWitness();
  v74 = *(v14 - 8);
  v75 = v14;
  v15 = *(v74 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v68 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v68 - v25;
  v83 = *(v12 - 8);
  v27 = *(v83 + 64);
  v29 = MEMORY[0x28223BE20](v24, v28);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = &v68 - v34;
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = &v68 - v38;
  v41 = MEMORY[0x28223BE20](v37, v40);
  v84 = &v68 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v68 - v44;
  v46 = swift_unknownObjectRetain();
  v47 = v11;
  v48 = v92;
  result = FieldElement.init(inputVector:)(v46, v85, v86, v87, v12, v11, v45);
  if (!v48)
  {
    v69 = v31;
    v70 = v39;
    v92 = v45;
    v85 = v26;
    v86 = v22;
    v50 = v83;
    v51 = swift_unknownObjectRetain();
    FieldElement.init(inputVector:)(v51, v80, v81, v82, v12, v11, v84);
    v87 = 0;
    v81 = a9;
    v52 = v11;
    v53 = *(v50 + 16);
    v53(v35, v92, v12);
    FieldElement.init(other:)(v35, v12, v11);
    v82 = *(v11 + 8);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v54 = *(v71 + 64);
    v55 = *(v71 + 24);
    v88 = v12;
    v89 = v55;
    v90 = v47;
    v91 = *(v71 + 40);
    v56 = (v73 + *(type metadata accessor for PINECircuitParameter() + 84) + v54);
    v57 = v69;
    v53(v69, v56, v12);
    FieldElement.init(other:)(v57, v12, v47);
    v58 = swift_checkMetadataState();
    v59 = *(v47 + 88);
    v60 = v86;
    v59(v12, v47);
    v61 = v72;
    v59(v12, v47);
    v62 = v85;
    (*(AssociatedConformanceWitness + 56))(v60, v61, v58);
    v63 = *(v74 + 8);
    v64 = v61;
    v65 = v75;
    v63(v64, v75);
    v63(v60, v65);
    (*(v52 + 96))(v62, v12, v52);
    v66 = v70;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v67 = *(v83 + 8);
    v67(v35, v12);
    v67(v66, v12);
    v67(v84, v12);
    return (v67)(v92, v12);
  }

  return result;
}

uint64_t PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t *a7, uint64_t a8, void (*a9)(uint64_t, char *, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14)
{
  v15 = v14;
  v107 = a8;
  v106 = a7;
  v109 = a6;
  v102 = a5;
  v101 = a4;
  v100 = a3;
  v95 = a2;
  v87 = a1;
  v105 = a9;
  v104 = a10;
  v112 = a12;
  v103 = a11;
  *&v98 = a14 + 24;
  *&v99 = a14 + 40;
  v16 = *(a14 + 32);
  v17 = *(a14 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = AssociatedTypeWitness;
  v93 = swift_getAssociatedTypeWitness();
  v92 = *(v93 - 8);
  v19 = *(v92 + 64);
  v21 = MEMORY[0x28223BE20](v93, v20);
  v90 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v89 = &v82 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v88 = &v82 - v28;
  v110 = *(v17 - 8);
  v29 = v110[8];
  v31 = MEMORY[0x28223BE20](v27, v30);
  v85 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v96 = &v82 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v97 = &v82 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v111 = &v82 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = &v82 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v49 = &v82 - v48;
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v82 - v51;
  v53 = *a13;
  (*(v16 + 72))(v17, v16);
  v132 = 0;
  v54 = v14 + *(a14 + 64);
  v55 = *(a14 + 48);
  *&v56 = v17;
  *(&v56 + 1) = *v98;
  v98 = v56;
  *&v57 = v16;
  *(&v57 + 1) = *v99;
  v99 = v57;
  v129 = v56;
  v130 = v57;
  *&v131 = v55;
  v83 = type metadata accessor for PINECircuitParameter();
  v84 = v54;
  PINECircuitParameter.wraparoundCheckLowerBound.getter(v83, v58);
  v86 = *(v16 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v59 = *(v15 + 24);
  v129 = *(v15 + 8);
  v130 = v59;
  v131 = *(v15 + 40);
  v128 = v53;
  v115 = v99;
  v114 = v98;
  v116 = v55;
  v117 = v100;
  v118 = v101;
  v119 = v102;
  v120 = v109;
  v121 = &v132;
  v122 = v15;
  v123 = v49;
  v124 = v112;
  v125 = v52;
  v102 = v52;
  v109 = v45;
  v126 = v45;
  v127 = v103;
  type metadata accessor for MultiplicationGadget();
  swift_getWitnessTable();
  v60 = type metadata accessor for ParallelSum();
  v61 = v111;
  v62 = v108;
  ParallelSum.chunkEvaluateSum(_:for:_:)(v106, v107, v105, v104, &v128, partial apply for closure #1 in PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:), v113, v60, v111);
  v108 = v62;
  if (v62)
  {
    v63 = v110[1];
    v63(v109, v17);
    v63(v49, v17);
    return (v63)(v102, v17);
  }

  else
  {
    v65 = v110;
    v66 = v110 + 2;
    v67 = v110[2];
    v67(v87, v61, v17);
    v105 = v67;
    v106 = v66;
    v68 = v96;
    FieldElement.init(_:)(*(v84 + *(v83 + 96)), v17, v16, v96);
    v69 = v85;
    v67(v85, v68, v17);
    FieldElement.init(other:)(v69, v17, v16);
    v70 = swift_checkMetadataState();
    v107 = v49;
    v71 = v70;
    v72 = *(v16 + 88);
    v73 = v89;
    v72(v17, v16);
    v74 = v90;
    v72(v17, v16);
    v75 = v88;
    (*(AssociatedConformanceWitness + 56))(v73, v74, v71);
    v76 = *(v92 + 8);
    v77 = v93;
    v76(v74, v93);
    v76(v73, v77);
    v78 = v97;
    (*(v16 + 96))(v75, v17, v16);
    v79 = v65[1];
    v80 = v96;
    v79(v96, v17);
    v81 = v109;
    v105(v80, v109, v17);
    FieldElement.init(other:)(v80, v17, v16);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v79(v78, v17);
    v79(v111, v17);
    v79(v81, v17);
    v79(v107, v17);
    return (v79)(v102, v17);
  }
}

uint64_t closure #1 in PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v129 = a8;
  v128 = a7;
  v157 = a6;
  v130 = a5;
  swift_getAssociatedTypeWitness();
  v131 = a12;
  v16 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness, v19);
  v155 = &v120[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v20, v22);
  v154 = &v120[-v24];
  v26 = MEMORY[0x28223BE20](v23, v25);
  v153 = &v120[-v27];
  v132 = *(a10 - 8);
  v28 = *(v132 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v122 = &v120[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v30, v32);
  v121 = &v120[-v34];
  v36 = MEMORY[0x28223BE20](v33, v35);
  v127 = &v120[-v37];
  v39 = MEMORY[0x28223BE20](v36, v38);
  v126 = &v120[-v40];
  v42 = MEMORY[0x28223BE20](v39, v41);
  v152 = &v120[-v43];
  v45 = MEMORY[0x28223BE20](v42, v44);
  v151 = &v120[-v46];
  MEMORY[0x28223BE20](v45, v47);
  v159 = &v120[-v48];
  v160 = v16;
  v161 = a3;
  v162 = a4;
  result = ArraySlice.count.getter();
  if (result < 0)
  {
    goto LABEL_25;
  }

  v50 = result;
  v51 = v159;
  if (result)
  {
    v150 = swift_checkMetadataState();
    v52 = 0;
    v148 = v131[12];
    v149 = v131 + 12;
    v146 = v131[11];
    v147 = v131 + 11;
    v144 = *(AssociatedConformanceWitness + 56);
    v145 = AssociatedConformanceWitness + 56;
    v142 = (v17 + 8);
    v143 = v132 + 16;
    v141 = v132 + 8;
    v123 = v132 + 40;
    v53 = 1;
    v125 = a2;
    v124 = v50;
    while (1)
    {
      v54 = ArraySlice.startIndex.getter();
      v55 = __OFADD__(v54, v52);
      result = v54 + v52;
      if (v55)
      {
        break;
      }

      result = ArraySlice.subscript.getter();
      if (v52 == 0x4000000000000000)
      {
        goto LABEL_23;
      }

      v140 = v52 + 1;
      v135 = (v53 - 1);
      v56 = v132;
      v57 = *(v132 + 16);
      v136 = v57;
      v139 = v53;
      v57(v152, v157, a10);
      v58 = v126;
      v57(v126, v51, a10);
      v59 = v131;
      FieldElement.init(other:)(v58, a10, v131);
      v60 = v154;
      v61 = v146;
      v146(a10, v59);
      v62 = v155;
      v61(a10, v59);
      v63 = v153;
      v64 = v60;
      v144(v60, v62);
      v65 = *v142;
      v137 = v65;
      v66 = AssociatedTypeWitness;
      v65(v62, AssociatedTypeWitness);
      v65(v64, v66);
      v67 = v151;
      v148(v63, a10, v59);
      v138 = *(v56 + 8);
      v68 = v152;
      (v138)(v152, a10);
      v69 = type metadata accessor for Array();
      v70 = v130;
      Array._makeMutableAndUnique()();
      v71 = *v70;
      v72 = v135;
      Array._checkSubscript_mutating(_:)(v135);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v74 = v71 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v74 = v71;
      }

      v134 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v133 = *(v56 + 72);
      v75 = v74 + v134 + v133 * v72;
      v135 = *(v56 + 40);
      v76 = v159;
      v135(v75, v67, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v69, v77, v78, v79, v80);
      v136(v68, v76, a10);
      v81 = v127;
      v82 = v139;
      FieldElement.init(other:)(v68, a10, v59);
      v83 = v59[1];
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      Array._makeMutableAndUnique()();
      v84 = *v70;
      Array._checkSubscript_mutating(_:)(v82);
      v85 = _swift_isClassOrObjCExistentialType();
      v86 = v84 & 0xFFFFFFFFFFFFFF8;
      if ((v85 & 1) == 0)
      {
        v86 = v84;
      }

      v135(v86 + v134 + v133 * v82, v81, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v69, v87, v88, v89, v90);
      v91 = v154;
      v92 = v146;
      v146(a10, v59);
      v93 = v155;
      v92(a10, v59);
      v94 = v153;
      v144(v91, v93);
      v95 = AssociatedTypeWitness;
      v96 = v137;
      v137(v93, AssociatedTypeWitness);
      v96(v91, v95);
      v148(v94, a10, v59);
      v52 = v140;
      v51 = v159;
      v138();
      v53 = v82 + 2;
      if (v124 == v52)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  result = ArraySlice.count.getter();
  v97 = *(a9 + 48);
  if (v97 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v97 != result)
  {
    v98 = v97 - result;
    if (v97 <= result)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v157 = (v132 + 40);
    v99 = result + 0x4000000000000000;
    v100 = 2 * result;
    while ((v99 & 0x8000000000000000) == 0)
    {
      v161 = v131[1];
      v101 = v121;
      v162 = v98;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v102 = type metadata accessor for Array();
      v103 = v130;
      Array._makeMutableAndUnique()();
      v104 = *v103;
      Array._checkSubscript_mutating(_:)(v100);
      v105 = _swift_isClassOrObjCExistentialType();
      v106 = v104 & 0xFFFFFFFFFFFFFF8;
      if ((v105 & 1) == 0)
      {
        v106 = v104;
      }

      v160 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v107 = *(v132 + 72);
      AssociatedConformanceWitness = *(v132 + 40);
      v159 = v107;
      (AssociatedConformanceWitness)(v106 + v160 + v107 * v100, v101, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v102, v108, v109, v110, v111);
      v112 = v122;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      Array._makeMutableAndUnique()();
      v113 = *v103;
      Array._checkSubscript_mutating(_:)(v100 + 1);
      v114 = _swift_isClassOrObjCExistentialType();
      v115 = v113 & 0xFFFFFFFFFFFFFF8;
      if ((v114 & 1) == 0)
      {
        v115 = v113;
      }

      (AssociatedConformanceWitness)(v115 + v160 + v159 * (v100 + 1), v112, a10);
      result = destructiveProjectEnumData for SeedCtrlUnadjustedError(v102, v116, v117, v118, v119);
      ++v99;
      v100 += 2;
      v98 = v162 - 1;
      if (v162 == 1)
      {
        return result;
      }
    }

    goto LABEL_24;
  }

  return result;
}

Swift::Int closure #1 in PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v239 = a8;
  v210 = a7;
  v238 = a6;
  v213 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v247 = a19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v197 = AssociatedTypeWitness;
  v235 = swift_getAssociatedTypeWitness();
  v28 = *(v235 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v235, v30);
  v234 = &v184 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v233 = &v184 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v232 = &v184 - v38;
  v214 = *(a17 - 8);
  v39 = *(v214 + 64);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v202 = &v184 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v201 = &v184 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v196 = &v184 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v208 = &v184 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v55 = &v184 - v54;
  v57 = MEMORY[0x28223BE20](v53, v56);
  v231 = &v184 - v58;
  v60 = MEMORY[0x28223BE20](v57, v59);
  v236 = &v184 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v209 = &v184 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v230 = &v184 - v67;
  MEMORY[0x28223BE20](v66, v68);
  v70 = &v184 - v69;
  v199 = a1;
  v211 = a3;
  v212 = a4;
  result = ArraySlice.count.getter();
  if (result < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v198 = a2;
  v200 = a11;
  if (result)
  {
    v72 = 0;
    v195 = a21;
    v194 = a20;
    v193 = a18;
    v190 = a16;
    v227 = (v214 + 16);
    v189 = a15;
    v206 = a14;
    v226 = v247 + 11;
    v225 = AssociatedConformanceWitness + 56;
    v224 = (v28 + 8);
    v223 = v247 + 12;
    v192 = a13;
    v191 = a12;
    v222 = (v214 + 8);
    v188 = v214 + 40;
    v187 = v214 + 24;
    v73 = 1;
    v74 = a10;
    v207 = v55;
    v229 = v70;
    v185 = result;
    v186 = a10;
    v228 = a9;
    while (1)
    {
      v240 = v73;
      v241 = v22;
      v221 = v72;
      v75 = ArraySlice.startIndex.getter();
      v76 = *v74;
      v77 = v193;
      v242 = a17;
      v243 = v193;
      v78 = v247;
      v79 = v194;
      v244 = v247;
      v245 = v194;
      v80 = v195;
      v246 = v195;
      v81 = v200 + *(type metadata accessor for PINEMainCircuit() + 64);
      v242 = a17;
      v243 = v77;
      v244 = v78;
      v245 = v79;
      v246 = v80;
      result = type metadata accessor for PINECircuitParameter();
      v82 = *(v81 + *(result + 88));
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      v84 = v76 * v83;
      if ((v76 * v83) >> 64 != (v76 * v83) >> 63)
      {
        goto LABEL_31;
      }

      result = v75 + v84;
      if (__OFADD__(v75, v84))
      {
        goto LABEL_32;
      }

      v85 = (result + v82);
      if (__OFADD__(result, v82))
      {
        goto LABEL_33;
      }

      if (v85 < result)
      {
        goto LABEL_34;
      }

      specialized ArraySlice.subscript.getter(result, result + v82);
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v92 = swift_unknownObjectRetain();
      v93 = v87;
      v94 = v241;
      result = FieldElement.init(inputVector:)(v92, v93, v89, v91, a17, v247, v229);
      if (v94)
      {
        return result;
      }

      v241 = 0;
      v205 = *v227;
      v95 = v236;
      v205(v236, v191, a17);
      v96 = v209;
      v97 = v95;
      v98 = v247;
      FieldElement.init(other:)(v97, a17, v247);
      v99 = swift_checkMetadataState();
      v100 = v98[11];
      v101 = v233;
      v100(a17, v98);
      v215 = v85;
      v102 = v234;
      v219 = v100;
      v100(a17, v98);
      v103 = *(AssociatedConformanceWitness + 56);
      v104 = v232;
      v220 = v99;
      v217 = v103;
      (v103)(v101, v102, v99);
      v105 = *v224;
      v106 = v235;
      (*v224)(v102, v235);
      v218 = v105;
      v105(v101, v106);
      v107 = v98[12];
      v107(v104, a17, v98);
      v108 = v236;
      v109 = v205;
      v205(v236, v229, a17);
      FieldElement.init(other:)(v108, a17, v98);
      v110 = v98[1];
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v216 = *v222;
      v216(v96, a17);
      ArraySlice.subscript.getter();
      v111 = ArraySlice.startIndex.getter();
      v112 = v221;
      v113 = __OFADD__(v111, v221);
      result = v111 + v221;
      if (v113)
      {
        goto LABEL_35;
      }

      v114 = v110;
      v115 = v207;
      result = ArraySlice.subscript.getter();
      if (v112 == 0x4000000000000000)
      {
        goto LABEL_36;
      }

      v203 = v240 - 1;
      v215 = v107;
      v116 = v236;
      v109(v236, v115, a17);
      v117 = v209;
      v118 = v247;
      FieldElement.init(other:)(v116, a17, v247);
      v204 = v114;
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v109(v116, v206, a17);
      v119 = v196;
      v109(v196, v117, a17);
      FieldElement.init(other:)(v119, a17, v118);
      v120 = v233;
      v121 = v219;
      v219(a17, v118);
      v122 = v234;
      v121(a17, v118);
      v123 = v232;
      v217(v120, v122);
      v124 = v122;
      v125 = v235;
      v126 = v218;
      v218(v124, v235);
      v126(v120, v125);
      v127 = v123;
      v128 = v208;
      v215(v127, a17, v118);
      v129 = v216;
      v216(v116, a17);
      v129(v117, a17);
      v130 = type metadata accessor for Array();
      v131 = v213;
      Array._makeMutableAndUnique()();
      v132 = *v131;
      v133 = v203;
      Array._checkSubscript_mutating(_:)(v203);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v135 = v132 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v135 = v132;
      }

      v136 = v214;
      v137 = (*(v214 + 80) + 32) & ~*(v214 + 80);
      v138 = *(v214 + 72);
      (*(v214 + 40))(v135 + v137 + v138 * v133, v128, a17);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v130, v139, v140, v141, v142);
      Array._makeMutableAndUnique()();
      v143 = *v131;
      v144 = v240;
      Array._checkSubscript_mutating(_:)(v240);
      v145 = _swift_isClassOrObjCExistentialType();
      v146 = v143 & 0xFFFFFFFFFFFFFF8;
      if ((v145 & 1) == 0)
      {
        v146 = v143;
      }

      (*(v136 + 24))(v146 + v137 + v138 * v144, v231, a17);
      v147 = v247;
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v130, v148, v149, v150, v151);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v152 = v233;
      v153 = v219;
      v219(a17, v147);
      v154 = v234;
      v153(a17, v147);
      v155 = v207;
      v156 = v232;
      v217(v152, v154);
      v157 = v154;
      v158 = v235;
      v159 = v218;
      v218(v157, v235);
      v159(v152, v158);
      v215(v156, a17, v147);
      v160 = v216;
      v216(v155, a17);
      v160(v231, a17);
      v160(v230, a17);
      result = (v160)(v229, a17);
      v74 = v186;
      if (__OFADD__(*v186, 1))
      {
        goto LABEL_37;
      }

      v72 = v221 + 1;
      ++*v186;
      v22 = v241;
      v73 = v240 + 2;
      if (v185 == v72)
      {
        goto LABEL_18;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_18:
  result = ArraySlice.count.getter();
  v161 = *(v200 + 48);
  if (v161 < result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v241 = v22;
  if (v161 != result)
  {
    v162 = v161 - result;
    if (v161 <= result)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v235 = v214 + 40;
    v163 = result + 0x4000000000000000;
    v164 = 2 * result;
    while ((v163 & 0x8000000000000000) == 0)
    {
      v239 = v247[1];
      v165 = v201;
      v240 = v162;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v166 = type metadata accessor for Array();
      v167 = v213;
      Array._makeMutableAndUnique()();
      v168 = *v167;
      Array._checkSubscript_mutating(_:)(v164);
      v169 = _swift_isClassOrObjCExistentialType();
      v170 = v168 & 0xFFFFFFFFFFFFFF8;
      if ((v169 & 1) == 0)
      {
        v170 = v168;
      }

      v238 = (*(v214 + 80) + 32) & ~*(v214 + 80);
      v171 = *(v214 + 72);
      v236 = *(v214 + 40);
      AssociatedConformanceWitness = v171;
      (v236)(v170 + v238 + v171 * v164, v165, a17);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v166, v172, v173, v174, v175);
      v176 = v202;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      Array._makeMutableAndUnique()();
      v177 = *v167;
      Array._checkSubscript_mutating(_:)(v164 + 1);
      v178 = _swift_isClassOrObjCExistentialType();
      v179 = v177 & 0xFFFFFFFFFFFFFF8;
      if ((v178 & 1) == 0)
      {
        v179 = v177;
      }

      (v236)(v179 + v238 + AssociatedConformanceWitness * (v164 + 1), v176, a17);
      result = destructiveProjectEnumData for SeedCtrlUnadjustedError(v166, v180, v181, v182, v183);
      ++v163;
      v164 += 2;
      v162 = v240 - 1;
      if (v240 == 1)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  return result;
}

__n128 protocol witness for PINECircuit.gadget.getter in conformance PINEMainCircuit<A, B>@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for FullyLinearProof.outputLength.getter in conformance PINEMainCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.outputLength.getter(a1, WitnessTable);
}

uint64_t protocol witness for FullyLinearProof.gadgetParameters.getter in conformance PINEMainCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.gadgetParameters.getter(a1, WitnessTable);
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget<A>(_:at:) in conformance PINEMainCircuit<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget<A>(_:at:)(WitnessTable, a2, a5, a3, WitnessTable, a4);
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget(_:at:) in conformance PINEMainCircuit<A, B>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget(_:at:)(a1, a2, WitnessTable, a3);
}

void partial apply for closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(a1, v1[4], v1[5], v1[6], v1[7], v1[8]);
}

uint64_t specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a6;
  v59 = a2;
  v76 = a1;
  v79 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = *(v12 + 8);
  swift_getAssociatedTypeWitness();
  v72 = a5;
  v81 = AssociatedTypeWitness;
  v82 = v10;
  v70 = swift_getAssociatedConformanceWitness();
  v71 = AssociatedConformanceWitness;
  v83 = AssociatedConformanceWitness;
  v84 = v12;
  v85 = v70;
  v69 = type metadata accessor for PINECircuitParameter();
  v78 = *(v69 - 8);
  v14 = *(v78 + 64);
  v16 = MEMORY[0x28223BE20](v69, v15);
  v68 = &v55 - v17;
  v18 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v19);
  v67 = &v55 - v20;
  v58 = swift_checkMetadataState();
  v21 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v22);
  v57 = &v55 - v23;
  v24 = *(v75 + 8);
  v80 = a4;
  v73 = swift_getAssociatedTypeWitness();
  v77 = *(v73 - 8);
  v25 = *(v77 + 64);
  v27 = MEMORY[0x28223BE20](v73, v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v56 = &v55 - v31;
  v32 = MEMORY[0x2743B2830](v76, AssociatedTypeWitness);
  v33 = v79[9];
  v74 = a3;
  if (v32 != (v33)(a3))
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v81 = 0xD000000000000016;
    v82 = 0x8000000270C519D0;
    v86 = v32;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v49);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v86 = v33(v74, v79);
LABEL_10:
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v51);

    v52 = v81;
    v53 = v82;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v54 = v52;
    *(v54 + 8) = v53;
    *(v54 + 16) = 2;
    return swift_willThrow();
  }

  result = dispatch thunk of Collection.count.getter();
  if (result != v32)
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v81 = 0xD000000000000010;
    v82 = 0x8000000270C519F0;
    v86 = dispatch thunk of Collection.count.getter();
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v50);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v86 = v32;
    goto LABEL_10;
  }

  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    v35 = v32;
    v66 = AssociatedTypeWitness;
    v36 = v24;
    v37 = v58;
    v38 = v57;
    v39 = v73;
    v40 = v56;
    if (v35)
    {
      v41 = 0;
      v62 = *(v72 + 56);
      v63 = v72 + 56;
      v79 = (v77 + 8);
      v61 = (v77 + 16);
      v60 = (v78 + 8);
      v65 = v35;
      v64 = v36;
      do
      {
        v78 = v41 + 1;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.index(_:offsetBy:)();
        v77 = *v79;
        (v77)(v29, v39);
        (*v61)(v29, v40, v39);
        v42 = v29;
        v43 = v37;
        v44 = v67;
        v45 = v66;
        Array.subscript.getter();
        v46 = v68;
        v62(v74, v72);
        v47 = *(v46 + 4);
        (*v60)(v46, v69);
        v48 = v44;
        v37 = v43;
        v29 = v42;
        v39 = v73;
        BinaryFloatingPoint.init<A>(fieldElement:fractionalBitCount:)(v48, v47, v37, v45, v70, v71, v38);
        dispatch thunk of MutableCollection.subscript.setter();
        (v77)(v40, v39);
        result = v80;
        v41 = v78;
      }

      while (v65 != v78);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t specialized PINECircuit.decode(data:numOfMeasurements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v31 = a3;
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v30 = a1;
  v16 = MEMORY[0x2743B2830](a1, v15);
  v17 = *(v7 + 72);
  v33 = v3;
  if (v16 == v17(a2, v7))
  {
    v18 = v31;
    v19 = *(*(*(*(swift_getAssociatedConformanceWitness() + 16) + 16) + 8) + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v20 = specialized Array.init(repeating:count:)(v14, v16, AssociatedTypeWitness);
    (*(v10 + 8))(v14, AssociatedTypeWitness);
    v34 = v20;
    v21 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v23 = v32;
    specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(v30, &v34, a2, v21, v18, WitnessTable);
    result = v34;
    if (v23)
    {
    }
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v34 = 0xD000000000000016;
    v35 = 0x8000000270C519D0;
    v36 = v16;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v36 = v17(a2, v7);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    v27 = v34;
    v28 = v35;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t partial apply for closure #1 in PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  return closure #1 in PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)(a1, a2, a3, a4, a5, *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 16), *(v5 + 24), *(v5 + 32));
}

uint64_t instantiation function for generic protocol witness table for PINENormEqualityCheckCircuit<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PINEMainCircuit<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for PINECircuitParameter(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for PINECircuitParameter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

void storeEnumTagSinglePayload for PINECircuitParameter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + ((((((*(v6 + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + *(v6 + 64);
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
  v19 = (((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t getEnumTagSinglePayload for PINENormEqualityCheckCircuit(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v6 | 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v11 = v7 - ((-57 - v6) | v9) - ((-9 - v6 - ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v6) - 2;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      v17 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((((((((((((((v17 + v9 + 48) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);
      }

      v18 = *(v17 + 32);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for PINENormEqualityCheckCircuit(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8 + ((((((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 56) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 56) & ~(v9 | 7));
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  v20 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v21 = ((v20 + (v9 | 7) + 48) & ~(v9 | 7));
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25((v9 + 8 + ((((((((((((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v20 + 40) = 0;
    *(v20 + 24) = 0u;
    *(v20 + 8) = 0u;
    *v20 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v20 + 32) = a2 - 1;
  }
}

uint64_t type metadata completion function for PINENormEqualityCheckCircuit(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, void))
{
  a4(255, *(a1 + 16), *(a1 + 32));
  swift_getWitnessTable();
  result = type metadata accessor for ParallelSum();
  if (v6 <= 0x3F)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 40);
    result = type metadata accessor for PINECircuitParameter();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PINEMainCircuit(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((v6 + ((((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 48) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = v7 - ((-57 - v6) | v8) - ((-9 - v6 - ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v6) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((v6 + ((((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 48) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v5 + (v10 | v14) + 1;
}

void storeEnumTagSinglePayload for PINEMainCircuit(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) - ((-57 - v8) | v8 | 7) - ((-9 - v8 - ((((((*(v6 + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v8) - 2;
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
      if (*(v6 + 64) - ((-57 - v8) | v8 | 7) - ((-9 - v8 - ((((((*(v6 + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) | v8) != 2)
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
  v19 = (v8 + ((((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + (v8 | 7) + 48) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

  v18(v19);
}

uint64_t SumVectorType.init(bitWidth:measurementLength:chunkLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 < 1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  result = static SumVectorType.encodedLengthFrom(bitWidth:measurementLength:)(result, a2);
  if (v4)
  {
    return result;
  }

  v9 = result + a3;
  if (__OFADD__(result, a3))
  {
    goto LABEL_8;
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = v11 / a3;
  v13 = result;
  v21[0] = MultiplicationGadget.init(numOfCalls:)();
  v21[1] = v14;
  v21[2] = v15;
  v16 = type metadata accessor for MultiplicationGadget();
  WitnessTable = swift_getWitnessTable();
  result = ParallelSum.init(inner:count:)(v21, a3, v16, WitnessTable, v22);
  v18 = v22[0];
  v19 = v22[1];
  v20 = v22[2];
  *a4 = v13;
  *(a4 + 8) = a2;
  *(a4 + 16) = 1;
  *(a4 + 24) = a3;
  *(a4 + 32) = v12;
  *(a4 + 40) = v7;
  *(a4 + 48) = v18;
  *(a4 + 64) = v19;
  *(a4 + 80) = v20;
  return result;
}

uint64_t SumVectorType.init(bitWidth:measurementLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = static SumVectorType.encodedLengthFrom(bitWidth:measurementLength:)(a1, a2);
  if (v3)
  {
    return result;
  }

  v8 = sqrtf(result);
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 9.2234e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  result = SumVectorType.init(bitWidth:measurementLength:chunkLength:)(a1, a2, v9, v13);
  v10 = v13[3];
  a3[2] = v13[2];
  a3[3] = v10;
  v11 = v13[5];
  a3[4] = v13[4];
  a3[5] = v11;
  v12 = v13[1];
  *a3 = v13[0];
  a3[1] = v12;
  return result;
}

uint64_t SumVectorType.gadgetParameters.getter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_270C44540;
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  type metadata accessor for MultiplicationGadget();
  swift_getWitnessTable();
  v8 = type metadata accessor for ParallelSum();
  WitnessTable = swift_getWitnessTable();
  Gadget.parameters.getter(v8, WitnessTable, (v5 + 32));
  return v5;
}

__n128 SumVectorType.gadget.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  return result;
}

uint64_t static SumVectorType.encodedLengthFrom(bitWidth:measurementLength:)(uint64_t result, uint64_t a2)
{
  if (result < 1 || a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = result * a2;
    if ((result * a2) >> 64 != (result * a2) >> 63)
    {
      _StringGuts.grow(_:)(43);

      v9 = 0xD000000000000013;
      v10 = 0x8000000270C52CC0;
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v4);

      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C52CE0);
      goto LABEL_8;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v5 = *(swift_getAssociatedConformanceWitness() + 8);
    result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
    if (!__OFSUB__(result, 1))
    {
      if (result - 1 >= v2)
      {
        return v3;
      }

      v9 = 0;
      v10 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000021, 0x8000000270C52C90);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v6);

      MEMORY[0x2743B25F0](0x74694278616D202CLL, 0xEE003D6874646957);
LABEL_8:
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v7);

      lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
      swift_allocError();
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = 2;
      swift_willThrow();
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t SumVectorType.encode(measurement:)(void (**a1)(char *, char *, uint64_t), void *a2)
{
  v4 = a2[6];
  v145 = a2[5];
  v146 = v4;
  v5 = *(*(v4 + 24) + 16);
  v6 = *(v145 + 8);
  v143 = a2[3];
  swift_getAssociatedTypeWitness();
  v122 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v120 = &v115 - v9;
  v10 = a2[4];
  v11 = a2[2];
  swift_getAssociatedTypeWitness();
  v134 = v10;
  v137 = v11;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v12 = a1;
  v148 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v119 = *(*(v148 + 24) + 16);
  v118 = swift_getAssociatedTypeWitness();
  v13 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118, v14);
  v117 = &v115 - v15;
  v16 = swift_checkMetadataState();
  v141 = *(v16 - 8);
  v17 = *(v141 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v142 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v116 = &v115 - v22;
  v23 = type metadata accessor for Optional();
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v132 = &v115 - v27;
  v129 = *(v143 - 1);
  v28 = *(v129 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v128 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v6;
  v31 = swift_getAssociatedTypeWitness();
  v123 = *(v31 - 8);
  v32 = *(v123 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v138 = &v115 - v34;
  v35 = swift_checkMetadataState();
  v124 = *(v35 - 8);
  v36 = *(v124 + 64);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v133 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v115 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v46 = (&v115 - v45);
  v47 = *v147;
  v48 = v147[1];
  v139 = v147[5];
  v136 = v12;
  if (dispatch thunk of Collection.count.getter() != v48)
  {
    v150 = 0;
    v151 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v150 = 0xD000000000000020;
    v151 = 0x8000000270C52BC0;
    v152 = dispatch thunk of Collection.count.getter();
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v57);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v152 = v48;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v58);

    MEMORY[0x2743B25F0](32, 0xE100000000000000);
    v59 = v150;
    v60 = v151;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v61 = v59;
    *(v61 + 8) = v60;
    *(v61 + 16) = 2;
    return swift_willThrow();
  }

  v152 = Array.init()();
  v130 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v47);
  v150 = 1;
  lazy protocol witness table accessor for type Int and conformance Int();
  v135 = v31;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v150 = v139;
  v147 = v46;
  v49 = v135;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v144 = *(v124 + 8);
  v145 = v124 + 8;
  v144(v43, v35);
  (*(v129 + 16))(v128, v136, v143);
  v50 = v138;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = v132;
  v53 = v50;
  v129 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v54 = v141;
  v55 = *(v141 + 48);
  v128 = (v141 + 48);
  v127 = v55;
  if (v55(v52, 1, v16) == 1)
  {
LABEL_3:
    (*(v123 + 8))(v53, v49);
    v144(v147, v35);
    return v152;
  }

  v131 = v43;
  v63 = *(v54 + 32);
  v62 = v54 + 32;
  v126 = v63;
  v136 = (v62 - 16);
  v124 += 16;
  v143 = (v62 - 24);
  v64 = v140;
  v65 = v116;
  v66 = v132;
  v141 = v62;
  v125 = v16;
  while (1)
  {
    v126(v65, v66, v16);
    v67 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v68 = v146;
    if ((v67 ^ dispatch thunk of static BinaryInteger.isSigned.getter()))
    {
      v140 = v64;
      v69 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v70 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v72 = v65;
      if (v69)
      {
        if (v71 < v70)
        {
          v73 = v142;
          (*v136)(v142, v65, v16);
          v74 = v131;
          v68 = v146;
          v75 = v148;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v76 = *(*(v75 + 32) + 8);
          v77 = v73;
          v78 = dispatch thunk of static Comparable.< infix(_:_:)();
          v144(v74, v35);
          goto LABEL_14;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v94 = v131;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v95 = *(*(v148 + 32) + 8);
        v96 = dispatch thunk of static Comparable.< infix(_:_:)();
        v144(v94, v35);
        v64 = v140;
        v68 = v146;
        if (v96)
        {
          goto LABEL_26;
        }

        (*v124)(v131, v147, v35);
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v97 = *(*(v68 + 32) + 8);
        v98 = dispatch thunk of static Comparable.< infix(_:_:)();
        v77 = v142;
        v99 = v98;
        (*v143)(v142, v16);
        if (v99)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v70 < v71)
        {
          (*v124)(v131, v147, v35);
          v85 = v142;
          v68 = v146;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v86 = *(*(v68 + 32) + 8);
          v77 = v85;
          v78 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*v143)(v77, v16);
LABEL_14:
          v64 = v140;
          if (v78)
          {
            goto LABEL_26;
          }

          goto LABEL_18;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v100 = v142;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v68 = v146;
        v101 = *(*(v146 + 32) + 8);
        v102 = dispatch thunk of static Comparable.> infix(_:_:)();
        v77 = v100;
        v66 = v132;
        v103 = v102;
        (*v143)(v100, v16);
        v64 = v140;
        if (v103)
        {
          (*v136)(v100, v72, v16);
          v104 = v131;
          v105 = v148;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v106 = *(*(v105 + 32) + 8);
          v107 = dispatch thunk of static Comparable.< infix(_:_:)();
          v77 = v142;
          LOBYTE(v105) = v107;
          v108 = v104;
          v16 = v125;
          v144(v108, v35);
          if (v105)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v79 = v147;
      v80 = v148;
      v81 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v81 >= dispatch thunk of BinaryInteger.bitWidth.getter())
      {
        v87 = v142;
        (*v136)(v142, v65, v16);
        v88 = v131;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v89 = *(*(v80 + 32) + 8);
        v77 = v87;
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        v90 = v88;
        v16 = v125;
        v144(v90, v35);
      }

      else
      {
        (*v124)(v131, v79, v35);
        v82 = v142;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v83 = *(*(v68 + 32) + 8);
        v77 = v82;
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*v143)(v77, v16);
      }

      v72 = v65;
      v66 = v132;
      if (v84)
      {
LABEL_26:
        v150 = 0;
        v151 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52BF0);
        v109 = *(v68 + 8);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x2743B25F0](0x646957746962202CLL, 0xEB000000003D6874);
        v149 = v139;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v110);

        v111 = v150;
        v112 = v151;
        lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
        swift_allocError();
        *v113 = v111;
        *(v113 + 8) = v112;
        *(v113 + 16) = 1;
        swift_willThrow();
        (*v143)(v72, v16);
        (*(v123 + 8))(v138, v135);
        v144(v147, v35);
      }
    }

LABEL_18:
    (*v136)(v77, v72, v16);
    v91 = v133;
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v92 = static FieldElement.integerToBitVector(input:bitWidth:)(v91, v139, v137, v134);
    if (v64)
    {
      break;
    }

    v93 = v92;
    v144(v91, v35);
    v150 = v93;
    swift_getWitnessTable();
    Array.append<A>(contentsOf:)();
    (*v143)(v72, v16);
    v53 = v138;
    v49 = v135;
    dispatch thunk of IteratorProtocol.next()();
    v65 = v72;
    if (v127(v66, 1, v16) == 1)
    {
      goto LABEL_3;
    }
  }

  v114 = v144;
  v144(v91, v35);
  (*v143)(v72, v16);
  (*(v123 + 8))(v138, v135);
  v114(v147, v35);
}

uint64_t SumVectorType.truncate(measurement:)(unint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = *(a2 + 16);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v31 = v2[1];
  v12 = v2[5];
  v13 = MEMORY[0x2743B2830](v8, v6);
  if (v13 != v11)
  {
    v14 = v13;
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v32 = 0xD00000000000001BLL;
    v33 = 0x8000000270C51C80;
    v34 = v14;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v34 = v11;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    v17 = v32;
    v5 = v33;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v18 = v17;
    *(v18 + 8) = v5;
    *(v18 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if (v12 == 1)
  {

    return v5;
  }

  v32 = Array.init()();
  v19 = type metadata accessor for Array();
  v20 = v31;
  v31 = v19;
  Array.reserveCapacity(_:)(v20);
  result = MEMORY[0x2743B2830](v5, v6);
  if (v12)
  {
    v22 = result;
    v23 = result >= 0;
    if (v12 > 0)
    {
      v23 = result < 1;
    }

    if (v23)
    {
      return v32;
    }

    result = 0;
    while (1)
    {
      v24 = __OFADD__(result, v12) ? ((result + v12) >> 63) ^ 0x8000000000000000 : result + v12;
      if (__OFADD__(result, v12))
      {
        break;
      }

      if (result + v12 < result)
      {
        goto LABEL_23;
      }

      v25 = Array.subscript.getter();
      FieldElement.init(inputVector:)(v25, v26, v27, v28, v6, *(a2 + 32), v10);
      if (v3)
      {

        return v5;
      }

      Array.append(_:)();
      v29 = v22 >= v24;
      if (v12 > 0)
      {
        v29 = v24 >= v22;
      }

      result = v24;
      if (v29)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SumVectorType.evaluateGadget<A>(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v14 = v5[3];
  v15 = v5[4];
  v16 = v5[5];
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  type metadata accessor for MultiplicationGadget();
  swift_getWitnessTable();
  v12 = type metadata accessor for ParallelSum();
  return ParallelSum.evaluate<A>(at:)(a1, v12, a3, a4, a5);
}

uint64_t SumVectorType.evaluateGadget(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = v3[4];
  v13 = v3[3];
  v14 = v5;
  v15 = v3[5];
  v12 = a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  type metadata accessor for MultiplicationGadget();
  swift_getWitnessTable();
  v8 = type metadata accessor for ParallelSum();
  type metadata accessor for Polynomial();
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return ParallelSum.evaluate<A>(at:)(&v12, v8, v9, WitnessTable, a3);
}

uint64_t SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v189 = a4;
  v200 = a3;
  v192 = a2;
  v183 = a6;
  v8 = *(a5 + 32);
  v191 = a5;
  v9 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v190 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v201 = AssociatedConformanceWitness;
  v210 = AssociatedTypeWitness;
  v226 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v206 = *(v226 + 24);
  v205 = *(v206 + 2);
  v204 = swift_getAssociatedTypeWitness();
  v12 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204, v13);
  v203 = v178 - v14;
  v15 = v9;
  v202 = swift_checkMetadataState();
  v16 = *(v202 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v202, v18);
  v21 = v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v207 = v178 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v193 = v178 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v209 = v178 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v208 = v178 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v196 = v178 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v185 = v178 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v187 = v178 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v180 = v178 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = v178 - v48;
  v186 = *(v9 - 8);
  v50 = *(v186 + 64);
  v52 = MEMORY[0x28223BE20](v47, v51);
  v181 = v178 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52, v54);
  v57 = v178 - v56;
  v59 = MEMORY[0x28223BE20](v55, v58);
  v184 = v178 - v60;
  MEMORY[0x28223BE20](v59, v61);
  v188 = v178 - v62;
  v63 = v6[1];
  v220 = *v6;
  v64 = v6[2];
  v65 = v6[4];
  v66 = v6[5];
  v223 = v6[3];
  v224 = v65;
  v225 = v66;
  v221 = v63;
  v222 = v64;
  v67 = v220;
  v182 = a1;
  v68 = MEMORY[0x2743B2830](a1, v15);
  if (v68 != v67)
  {
    v87 = v68;
    *&v214 = 0;
    *(&v214 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v88 = 0x8000000270C51C80;
    v89 = 0xD00000000000001BLL;
LABEL_10:
    *&v214 = v89;
    *(&v214 + 1) = v88;
    v212 = v87;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v90);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v212 = v67;
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v91);

    v92 = v214;
    v93 = &v228;
LABEL_11:
    v94 = *(v93 - 32);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v95 = v92;
    *(v95 + 8) = v94;
    *(v95 + 16) = 2;
    return swift_willThrow();
  }

  v67 = v221;
  v69 = MEMORY[0x2743B2830](v192, v15);
  if (v69 != v67)
  {
    v87 = v69;
    *&v214 = 0;
    *(&v214 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v88 = 0x8000000270C51CE0;
    v89 = 0xD000000000000019;
    goto LABEL_10;
  }

  v70 = v6[3];
  v216 = v6[2];
  v217 = v70;
  v71 = v6[5];
  v218 = v6[4];
  v219 = v71;
  v72 = v6[1];
  v214 = *v6;
  v215 = v72;
  v73 = v190;
  v178[1] = type metadata accessor for GadgetEvaluation();
  v74 = MEMORY[0x2743B2830](v189);
  v75 = v191;
  v76 = *(SumVectorType.gadgetParameters.getter(v191) + 16);

  if (v74 != v76)
  {
    v212 = 0;
    v213 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v212 = 0x2064696C61766E49;
    v213 = 0xEF203A746E756F63;
    v211 = v74;
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v97);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    SumVectorType.gadgetParameters.getter(v75);
    v98 = MEMORY[0x2743B2770]();
    v100 = v99;

    MEMORY[0x2743B25F0](v98, v100);

    v92 = v212;
    v93 = &v227;
    goto LABEL_11;
  }

  v199 = v16;
  *&v214 = v200;
  v198 = lazy protocol witness table accessor for type Int and conformance Int();
  v77 = v202;
  v78 = v57;
  v79 = v226;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v80 = v184;
  FieldElement.init(_:)(v49, v15, v73);
  (*(v186 + 16))(v78, v80, v15);
  FieldElement.init(other:)(v78, v15, v73);
  v81 = v187;
  (*(v73 + 88))(v15, v73);
  v82 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v197 = v21;
  v178[0] = v15;
  if (v82)
  {
    v83 = v81;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      *&v214 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v105 = *(*(v79 + 16) + 8);
      v106 = dispatch thunk of static Equatable.== infix(_:_:)();
      v81 = v199;
      goto LABEL_23;
    }

    v84 = dispatch thunk of BinaryInteger._lowWord.getter();
    v85 = v201;
    v86 = v199;
    if (!v84)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v101 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v102 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v101)
    {
      v81 = v199;
      if (v102 > 64)
      {
        goto LABEL_22;
      }

      v77 = v202;
      swift_getAssociatedConformanceWitness();
      v86 = v81;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v81 = v226;
      v103 = *(*(v226 + 32) + 8);
      v83 = v187;
      v104 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (*(v86 + 8))(v49, v77);
      v85 = v201;
      if ((v104 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
      {
        do
        {
LABEL_21:
          v177 = 0;
          v176 = 80;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_22:
          *&v214 = 0;
          v77 = v202;
          v108 = v226;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v109 = *(*(v108 + 16) + 8);
          v83 = v187;
          v106 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_23:
          (*(v81 + 8))(v49, v77);
          v85 = v201;
          v86 = v81;
        }

        while ((v106 & 1) != 0);
      }
    }

    else
    {
      v81 = v199;
      if (v102 >= 64)
      {
        goto LABEL_22;
      }

      v83 = v187;
      v77 = v202;
      v107 = dispatch thunk of BinaryInteger._lowWord.getter();
      v85 = v201;
      v86 = v81;
      if (!v107)
      {
        goto LABEL_21;
      }
    }
  }

  v210 = swift_checkMetadataState();
  (*(v85 + 24))(v210, v85);
  v200 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v110 = v196;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v111 = *(v206 + 1);
  v112 = v83;
  v113 = v185;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v114 = v86;
  v115 = v86 + 8;
  v116 = *(v86 + 8);
  v116(v110, v77);
  v116(v49, v77);
  v117 = *(v114 + 16);
  v114 += 16;
  v117(v208, v112, v77);
  v118 = v209;
  v196 = v117;
  v117(v209, v113, v77);
  *&v214 = 1;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v119 = v201;
  (*(v201 + 64))(v49);
  v120 = v116;
  v116(v49, v77);
  v194 = v119 + 56;
  v195 = (v114 + 16);
  v199 = v114;
  v179 = v49;
  v206 = v116;
  while (1)
  {
    v129 = v207;
    (v196)(v207, v118, v77);
    v130 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v131 = v197;
    if ((v130 & 1) == 0)
    {
      v139 = v129;
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
      {
        lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v214 = 0uLL;
        v142 = v226;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v143 = *(*(v142 + 16) + 8);
        v144 = v139;
        v145 = dispatch thunk of static Equatable.== infix(_:_:)();
        v120(v49, v77);
        v146 = v144;
        goto LABEL_42;
      }

      v140 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      goto LABEL_37;
    }

    v132 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v133 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v132 & 1) == 0)
    {
      break;
    }

    if (v133 > 128)
    {
      goto LABEL_41;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v134 = *(*(v226 + 32) + 8);
    v135 = v207;
    v136 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v120(v49, v77);
    if ((v136 & 1) == 0)
    {
      v120(v135, v77);
      goto LABEL_43;
    }

    v137 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v135, &type metadata for _UInt128, v77, v137, v226, &v214);
    v138 = v135;
LABEL_38:
    v120(v138, v77);
    v141 = v208;
    if (v214 == 0)
    {
      goto LABEL_56;
    }

LABEL_43:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v120(v49, v77);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v150 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v151 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v150)
      {
        if (v151 <= 128)
        {
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v152 = *(*(v226 + 32) + 8);
          v153 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v120(v49, v77);
          if ((v153 & 1) == 0)
          {
            v120(v131, v77);
            v121 = v201;
            v122 = v195;
            v49 = v179;
            v123 = v208;
LABEL_26:
            v124 = v193;
            (*(v121 + 56))(v193, v123, v210, v121);
            v125 = v210;
            v206(v124, v77);
            (*v122)(v124, v49, v77);
            goto LABEL_27;
          }

          v154 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          static FixedWidthInteger._truncatingInit<A>(_:)(v131, &type metadata for _UInt128, v77, v154, v226, &v214);
          v120(v131, v77);
          v155 = *(&v214 + 1) | v214;
          v121 = v201;
          v125 = v210;
          v122 = v195;
          v49 = v179;
          goto LABEL_50;
        }
      }

      else if (v151 < 128)
      {
LABEL_49:
        v156 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v131, &type metadata for _UInt128, v77, v156, v226, &v214);
        v120(v131, v77);
        v155 = *(&v214 + 1) | v214;
        v121 = v201;
        v125 = v210;
        v122 = v195;
LABEL_50:
        v123 = v208;
        if (v155)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
    {
      goto LABEL_49;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v214 = 0uLL;
    v157 = v226;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v158 = *(*(v157 + 16) + 8);
    LOBYTE(v157) = dispatch thunk of static Equatable.== infix(_:_:)();
    v120(v49, v77);
    v120(v131, v77);
    v121 = v201;
    v125 = v210;
    v122 = v195;
    v123 = v208;
    if ((v157 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    (*(v121 + 56))(v123, v123, v125, v121);
    v126 = v115;
    v127 = v206;
    v206(v123, v77);
    v128 = *v122;
    (*v122)(v123, v49, v77);
    *&v214 = 1;
    v118 = v209;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v127(v118, v77);
    v128(v118, v49, v77);
    v120 = v127;
    v115 = v126;
  }

  if (v133 < 128)
  {
    v140 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v139 = v207;
LABEL_37:
    static FixedWidthInteger._truncatingInit<A>(_:)(v139, &type metadata for _UInt128, v77, v140, v226, &v214);
    v138 = v139;
    goto LABEL_38;
  }

LABEL_41:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v214 = 0uLL;
  v147 = v226;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v148 = *(*(v147 + 16) + 8);
  v149 = v207;
  v145 = dispatch thunk of static Equatable.== infix(_:_:)();
  v120(v49, v202);
  v146 = v149;
  v77 = v202;
LABEL_42:
  v120(v146, v77);
  v141 = v208;
  if ((v145 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_56:
  v120(v209, v77);
  v120(v141, v77);
  v120(v185, v77);
  v120(v187, v77);
  v159 = v180;
  (*v195)(v180, v193, v77);
  v160 = v190;
  v161 = v188;
  v162 = v178[0];
  (*(v190 + 96))(v159, v178[0], v190);
  v226 = *(v186 + 8);
  (v226)(v184, v162);
  v163 = v181;
  v164 = v192;
  Array.subscript.getter();
  v214 = v223;
  v215 = v224;
  v216 = v225;
  v212 = v182;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v165 = ArraySlice.init<A>(_:)();
  v167 = v166;
  v209 = v168;
  v208 = v169;
  v170 = Array.subscript.getter();
  v210 = v178;
  v211 = v212;
  MEMORY[0x28223BE20](v170, v171);
  v172 = v191;
  v173 = *(v191 + 24);
  v178[-10] = v162;
  v178[-9] = v173;
  v178[-8] = v160;
  *&v178[-7] = *(v172 + 40);
  v178[-5] = v163;
  v178[-4] = v161;
  v178[-3] = v164;
  type metadata accessor for MultiplicationGadget();
  swift_getWitnessTable();
  v174 = type metadata accessor for ParallelSum();
  ParallelSum.chunkEvaluateSum(_:for:_:)(v165, v167, v209, v208, &v211, partial apply for closure #1 in SumVectorType.evaluate(measurement:jointRand:numOfShares:for:), &v178[-12], v174, v183);
  outlined consume of GadgetEvaluation<A><A>(v211);
  swift_unknownObjectRelease();
  v175 = v226;
  (v226)(v163, v162);
  return v175(v188, v162);
}

uint64_t closure #1 in SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)(void (*a1)(unint64_t, _BYTE *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v142 = a8;
  v145 = a7;
  v175 = a6;
  v144 = a5;
  v173 = a4;
  swift_getAssociatedTypeWitness();
  v176 = a12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v168 = &v135[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v167 = &v135[-v22];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v166 = &v135[-v25];
  v146 = *(a10 - 8);
  v26 = *(v146 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v137 = &v135[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v28, v30);
  v136 = &v135[-v32];
  v34 = MEMORY[0x28223BE20](v31, v33);
  v141 = &v135[-v35];
  v37 = MEMORY[0x28223BE20](v34, v36);
  v143 = &v135[-v38];
  v40 = MEMORY[0x28223BE20](v37, v39);
  v174 = &v135[-v41];
  v43 = MEMORY[0x28223BE20](v40, v42);
  v165 = &v135[-v44];
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v135[-v46];
  v171 = a1;
  v172 = a3;
  v48 = a2;
  result = ArraySlice.count.getter();
  if (result < 0)
  {
    goto LABEL_25;
  }

  v50 = result;
  if (result)
  {
    v51 = swift_checkMetadataState();
    v52 = 0;
    v53 = v176[12];
    v162 = v176 + 12;
    v163 = v51;
    v54 = v176[11];
    v160 = v176 + 11;
    v161 = v53;
    v157 = *(AssociatedConformanceWitness + 56);
    v158 = AssociatedConformanceWitness + 56;
    v159 = v54;
    v156 = v146 + 16;
    v155 = (v15 + 8);
    v154 = v146 + 8;
    v138 = v146 + 40;
    v55 = 1;
    v140 = v48;
    v164 = v47;
    v139 = v50;
    while (1)
    {
      v56 = ArraySlice.startIndex.getter();
      v57 = __OFADD__(v56, v52);
      result = v56 + v52;
      if (v57)
      {
        break;
      }

      result = ArraySlice.subscript.getter();
      if (v52 == 0x4000000000000000)
      {
        goto LABEL_23;
      }

      v153 = v52 + 1;
      v149 = v55 - 1;
      v58 = v146;
      v59 = *(v146 + 16);
      v150 = v59;
      v59(v174, v175, a10);
      v60 = v143;
      v59(v143, v47, a10);
      v177 = v55;
      v61 = v176;
      FieldElement.init(other:)(v60, a10, v176);
      v62 = v167;
      v63 = v159;
      v159(a10, v61);
      v64 = v63;
      v65 = v168;
      v66 = v174;
      v64(a10, v61);
      v67 = v166;
      v68 = v62;
      v157(v62, v65);
      v69 = *v155;
      v151 = v69;
      v70 = v65;
      v71 = AssociatedTypeWitness;
      v69(v70, AssociatedTypeWitness);
      v69(v68, v71);
      v72 = v67;
      v73 = v165;
      v161(v72, a10, v61);
      v152 = *(v58 + 8);
      v74 = v66;
      (v152)(v66, a10);
      v75 = type metadata accessor for Array();
      v76 = v144;
      Array._makeMutableAndUnique()();
      v77 = *v76;
      v78 = v149;
      Array._checkSubscript_mutating(_:)(v149);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v80 = v77 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v80 = v77;
      }

      v148 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v147 = *(v58 + 72);
      v81 = *(v58 + 40);
      v81(v80 + v148 + v147 * v78, v73, a10);
      v82 = v81;
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v75, v83, v84, v85, v86);
      v150(v74, v164, a10);
      v87 = v141;
      FieldElement.init(other:)(v74, a10, v61);
      v88 = v61[1];
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      Array._makeMutableAndUnique()();
      v89 = *v76;
      Array._checkSubscript_mutating(_:)(v177);
      v90 = _swift_isClassOrObjCExistentialType();
      v91 = v89 & 0xFFFFFFFFFFFFFF8;
      if ((v90 & 1) == 0)
      {
        v91 = v89;
      }

      v82(v91 + v148 + v147 * v177, v87, a10);
      v92 = v177;
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v75, v93, v94, v95, v96);
      v97 = v74;
      Array.subscript.getter();
      v98 = v167;
      v99 = v176;
      v100 = v159;
      v159(a10, v176);
      v101 = v168;
      v100(a10, v99);
      v102 = v166;
      v157(v98, v101);
      v103 = v101;
      v104 = AssociatedTypeWitness;
      v105 = v151;
      v151(v103, AssociatedTypeWitness);
      v105(v98, v104);
      v161(v102, a10, v99);
      v52 = v153;
      v106 = v152;
      (v152)(v97, a10);
      v47 = v164;
      v106();
      v55 = v92 + 2;
      if (v139 == v52)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  result = ArraySlice.count.getter();
  v107 = *(a9 + 88);
  if (v107 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v107 != result)
  {
    v108 = v107 - result;
    if (v107 <= result)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v177 = v146 + 40;
    v167 = (v146 + 8);
    v168 = (v146 + 16);
    v109 = result + 0x4000000000000000;
    v110 = 2 * result;
    while ((v109 & 0x8000000000000000) == 0)
    {
      v111 = v176[1];
      v112 = v136;
      v175 = v108;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v113 = type metadata accessor for Array();
      AssociatedTypeWitness = v113;
      v114 = v144;
      Array._makeMutableAndUnique()();
      v115 = *v114;
      Array._checkSubscript_mutating(_:)(v110);
      v116 = _swift_isClassOrObjCExistentialType();
      v117 = v115 & 0xFFFFFFFFFFFFFF8;
      if ((v116 & 1) == 0)
      {
        v117 = v115;
      }

      v118 = v146;
      v173 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v172 = *(v146 + 72);
      v171 = *(v146 + 40);
      v171(v117 + v173 + v172 * v110, v112, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v113, v119, v120, v121, v122);
      AssociatedConformanceWitness = v110 + 1;
      v123 = v174;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v124 = v143;
      (*(v118 + 16))(v143, v123, a10);
      v125 = v137;
      FieldElement.init(other:)(v124, a10, v176);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      (*(v118 + 8))(v123, a10);
      v126 = AssociatedTypeWitness;
      Array._makeMutableAndUnique()();
      v127 = *v114;
      v128 = AssociatedConformanceWitness;
      Array._checkSubscript_mutating(_:)(AssociatedConformanceWitness);
      v129 = _swift_isClassOrObjCExistentialType();
      v130 = v127 & 0xFFFFFFFFFFFFFF8;
      if ((v129 & 1) == 0)
      {
        v130 = v127;
      }

      v171(v130 + v173 + v172 * v128, v125, a10);
      result = destructiveProjectEnumData for SeedCtrlUnadjustedError(v126, v131, v132, v133, v134);
      ++v109;
      v110 += 2;
      v108 = v175 - 1;
      if (v175 == 1)
      {
        return result;
      }
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t protocol witness for FullyLinearProof.decode(data:numOfMeasurements:) in conformance SumVectorType<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = specialized SumVectorType.decode(data:numOfMeasurements:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t specialized SumVectorType.decode(data:numOfMeasurements:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = *(a2 + 16);
  if (MEMORY[0x2743B2830](a1, v6) == v5)
  {
    return static FieldElement.elementsToIntegers(_:)(a1, v6, *(a2 + 32));
  }

  _StringGuts.grow(_:)(30);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v8);

  MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v9);

  lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  swift_allocError();
  *v10 = 0xD000000000000016;
  *(v10 + 8) = 0x8000000270C519D0;
  *(v10 + 16) = 2;
  return swift_willThrow();
}

uint64_t partial apply for closure #1 in SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)(void (*a1)(unint64_t, _BYTE *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  return closure #1 in SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)(a1, a2, a3, a4, a5, *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 16), *(v5 + 24), *(v5 + 32));
}

uint64_t type metadata instantiation function for SumVectorType()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SumVectorType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SumVectorType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

uint64_t PINE<>.shardAndEncode(_:nonce:seedBytes:)(float *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v36, a1, a2, v15, a5, a6);

  if (!v7)
  {
    v17 = v36;
    v18 = v37;
    v19 = specialized PINEPublicShare.encodedLength.getter(v36, v37);
    v36 = specialized Data._Representation.init(capacity:)(v19);
    v37 = v20;
    specialized PINEPublicShare.encode<A>(into:)(&v36, v17, v18);

    v8 = v36;
    v21 = *(v16 + 16);
    if (v21)
    {
      v35 = v36;
      v40 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 32;
      v23 = v40;
      do
      {
        v24 = v16;
        v25 = *(v16 + v22);
        v26 = *(v16 + v22 + 32);
        v38[1] = *(v16 + v22 + 16);
        v38[2] = v26;
        v38[0] = v25;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &v36, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v28 = v27;
        v30 = v29;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v22 += 48;
        --v21;
        v16 = v24;
      }

      while (v21);

      return v35;
    }

    else
    {
    }
  }

  return v8;
}

uint64_t PINE<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(float *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v45, a1, a2, v15, a5, a6);

  if (v7)
  {
    return v8;
  }

  v17 = v45;
  v18 = v46;
  v19 = specialized PINEPublicShare.encodedLength.getter(v45, v46);
  v20 = MEMORY[0x277D84F90];
  v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PINEPublicShare.encode<A>(into:)(&v45, v17, v18);

  v8 = v45;
  v21 = *(v16 + 16);
  if (!v21)
  {

    return v8;
  }

  v44 = v45;
  v45 = v20;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = v45;
  for (i = (v16 + 72); ; i += 6)
  {
    v25 = *(i - 5);
    v26 = *(i - 32);
    v27 = *(i - 3);
    v28 = *(i - 16);
    v30 = *(i - 1);
    v29 = *i;
    v31 = *(v25 + 16);
    if ((v26 & 1) == 0 && v31)
    {
      if (v31 >> 60)
      {
        goto LABEL_24;
      }

      v31 *= 8;
    }

    v32 = *(v27 + 16);
    if ((*(i - 2) & 1) == 0 && v32)
    {
      if (v32 >> 60)
      {
        goto LABEL_25;
      }

      v32 *= 8;
    }

    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = *(v30 + 16);
    v33 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (v33)
    {
      goto LABEL_22;
    }

    v37 = *(v29 + 16);
    v33 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v33)
    {
      goto LABEL_23;
    }

    v39 = v38 & ~(v38 >> 63);
    v40 = *(i - 5);

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0, MEMORY[0x277D84F90]);

    specialized Share.encode<A>(into:)(&v48, v25, v26);
    specialized Share.encode<A>(into:)(&v48, v27, v28);
    specialized Array.append<A>(contentsOf:)(v30);
    specialized Array.append<A>(contentsOf:)(v29);

    v41 = v48;
    v45 = v23;
    v43 = *(v23 + 2);
    v42 = *(v23 + 3);
    if (v43 >= v42 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
      v23 = v45;
    }

    *(v23 + 2) = v43 + 1;
    *&v23[8 * v43 + 32] = v41;
    if (!--v21)
    {

      return v44;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

size_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg50118_s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E8VSiXEfU_s10ArraySliceVys5UInt8VGSiTf1cn_n(size_t result, int64_t a2, void *a3, uint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_65;
  }

  v5 = result;
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v30 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (a4 < 0)
    {
      goto LABEL_66;
    }

    if (a2 >= v5 && (v4 & 0x8000000000000000) == 0)
    {
      v24 = a4;
      v8 = 0;
      result = v30;
      v26 = v4;
      v27 = v5 - 1;
      v25 = a3;
      while (1)
      {
        if (v8 >= v4)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
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
          break;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_52;
        }

        v11 = a3[2];
        v10 = a3[3];
        v12 = v10 >> 1;
        v13 = (v10 >> 1) - v11;
        if (__OFSUB__(v10 >> 1, v11))
        {
          goto LABEL_53;
        }

        v15 = *a3;
        v14 = a3[1];
        if (!a4 || v13 < 0 || (v16 = v10 >> 1, v13 >= a4))
        {
          v16 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_61;
          }
        }

        if (v16 < v11)
        {
          goto LABEL_54;
        }

        if (v12 < v11)
        {
          goto LABEL_55;
        }

        if (v12 < v16)
        {
          goto LABEL_56;
        }

        if (v16 < 0)
        {
          goto LABEL_57;
        }

        if (!a4 || v13 < 0 || v13 >= a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_62;
          }

          if (v12 < v11 + a4)
          {
            goto LABEL_58;
          }

          v12 = v11 + a4;
        }

        if (v12 < v11)
        {
          goto LABEL_59;
        }

        v29 = result;
        a3[2] = v12;
        if (v10)
        {
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v20 = swift_dynamicCastClass();
          if (!v20)
          {
            swift_unknownObjectRelease();
            v20 = MEMORY[0x277D84F90];
          }

          v21 = *(v20 + 16);

          v17 = v16 - v11;
          if (__OFSUB__(v16, v11))
          {
            goto LABEL_64;
          }

          if (v21 == v17)
          {
            v19 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            a4 = v24;
            if (v19)
            {
              goto LABEL_43;
            }

            swift_unknownObjectRelease();
LABEL_40:
            v19 = MEMORY[0x277D84F90];
            goto LABEL_43;
          }

          result = swift_unknownObjectRelease_n();
          a4 = v24;
          if (!v17)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v17 = v16 - v11;
          v18 = __OFSUB__(v16, v11);
          result = swift_unknownObjectRetain();
          if (v18)
          {
            goto LABEL_63;
          }

          if (!v17)
          {
            goto LABEL_40;
          }
        }

        if (v17 < 1)
        {
          v19 = MEMORY[0x277D84F90];
          if (v11 == v16)
          {
            goto LABEL_68;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v19 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v19);
          v19[2] = v17;
          v19[3] = 2 * result - 64;
          if (v11 == v16)
          {
            goto LABEL_68;
          }
        }

        memcpy(v19 + 4, (v14 + v11), v17);
LABEL_43:
        swift_unknownObjectRelease();
        result = v29;
        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          result = v29;
        }

        *(result + 16) = v23 + 1;
        *(result + 8 * v23 + 32) = v19;
        ++v8;
        if ((v27 + v8) >= a2)
        {
          goto LABEL_60;
        }

        a3 = v25;
        v4 = v26;
        if (v9 == v26)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
  }

  return result;
}

uint64_t static Prio3PublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(v2, v3))
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t Prio3PublicShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X5>, size_t *a5@<X8>, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == 2 || (v12 & 1) == 0)
  {
    result = (*(v9 + 8))(v11, a4);
    *a5 = 0;
    return result;
  }

  v39 = v13;
  v40 = v15;
  v42 = v11;
  v19 = *(v16 + 8);
  v37 = v14;
  v38 = v16;
  result = v19(v14, v16);
  if ((result * a3) >> 64 == (result * a3) >> 63)
  {
    v21 = result;
    v41 = *(*(a6 + 8) + 8);
    if (result * a3 != dispatch thunk of Collection.count.getter())
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v43 = v39;
      v44 = v37;
      v45 = v40;
      v46 = v38;
      type metadata accessor for Prio3PublicShare();
      v27 = _typeName(_:qualified:)();
      v29 = v28;

      v43 = v27;
      v44 = v29;
      MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
      v47 = v21;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v30);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v47 = a3;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v31);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v32 = v42;
      v47 = dispatch thunk of Collection.count.getter();
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v33);

      v34 = v43;
      v35 = v44;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v36 = v34;
      v36[1] = v35;
      swift_willThrow();
      return (*(v9 + 8))(v32, a4);
    }

    (*(v9 + 16))(v18, v42, a4);
    v22 = *(v41 + 8);
    result = ArraySlice.init<A>(_:)();
    v43 = result;
    v44 = v23;
    v45 = v24;
    v46 = v25;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg50118_s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E8VSiXEfU_s10ArraySliceVys5UInt8VGSiTf1cn_n(0, a3, &v43, v21);
      (*(v9 + 8))(v42, a4);
      result = swift_unknownObjectRelease();
      *a5 = v26;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Prio3PublicShare<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, size_t *a6@<X8>)
{
  v6 = a5[2];
  v7 = a5[3];
  v8 = a5[4];
  v9 = a5[5];
  return Prio3PublicShare.init<A>(from:parameter:)(a1, *a2, a2[1], a3, a6, a4);
}

void Prio3PublicShare.encodedLength.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      while (v3 < *(v1 + 16))
      {
        v5 = *(*(v1 + 32 + 8 * v3) + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v7 = *(v4 + 2);
        v6 = *(v4 + 3);
        v8 = v7 + 1;
        if (v7 >= v6 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
        }

        ++v3;
        *(v4 + 2) = v8;
        *&v4[8 * v7 + 32] = v5;
        if (v2 == v3)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_19;
    }

    v4 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
LABEL_12:
      v9 = 0;
      v10 = 32;
      while (1)
      {
        v11 = *&v4[v10];
        v12 = __OFADD__(v9, v11);
        v9 += v11;
        if (v12)
        {
          break;
        }

        v10 += 8;
        if (!--v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

LABEL_15:
  }
}

uint64_t Prio3PublicShare.encode<A>(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 32);
      do
      {
        v4 = *v3++;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
        lazy protocol witness table accessor for type [UInt8] and conformance [A]();
        result = dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3PublicShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FullyLinearProof.proofLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 104))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v4;
    v6 = v17;
    v7 = (v4 + 64);
    do
    {
      v8 = *(v7 - 4);
      v9 = v8 + *v7;
      if (__OFADD__(v8, *v7))
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        result = v4;
      }

      v7 += 5;
      *(v17 + 16) = v11 + 1;
      *(v17 + 8 * v11 + 32) = v9;
      --v3;
    }

    while (v3);

    v12 = *(v17 + 16);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
LABEL_13:
      v13 = 0;
LABEL_14:

      return v13;
    }
  }

  v13 = 0;
  v14 = (v6 + 32);
  while (1)
  {
    v15 = *v14++;
    v16 = __OFADD__(v13, v15);
    v13 += v15;
    if (v16)
    {
      break;
    }

    if (!--v12)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t FullyLinearProof.verifierLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 104))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v4;
    v6 = 32;
    v7 = v17;
    do
    {
      v8 = *(result + v6);
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        result = v4;
      }

      *(v17 + 16) = v11 + 1;
      *(v17 + 8 * v11 + 32) = v9;
      v6 += 40;
      --v3;
    }

    while (v3);

    v12 = *(v17 + 16);
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v7 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
LABEL_8:
    v13 = 0;
    v14 = (v7 + 32);
    while (1)
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  result = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t FullyLinearProof.queryRandLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 104))() + 16);

  return v2;
}

uint64_t FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t), void *a12)
{
  v111 = a6;
  v118 = a8;
  v112 = a5;
  v113 = a4;
  v121 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  v17 = *(v106 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, AssociatedTypeWitness);
  v119 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v120 = &v101 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v108 = &v101 - v25;
  v109 = *(a9 - 8);
  v26 = *(v109 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a2;
  v114 = v30;
  v31 = MEMORY[0x2743B2830](a2);
  v32 = *(a10 + 48);
  v116 = v12;
  if (v31 != v32(a7, a10))
  {
    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v124 = 0xD00000000000001BLL;
    v125 = 0x8000000270C51C80;
    v123[0] = v31;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v64);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = v32(a7, a10);
LABEL_12:
    v123[0] = v65;
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v69);

    v70 = v124;
    v71 = v125;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v72 = v70;
    *(v72 + 8) = v71;
    *(v72 + 16) = 2;
    return swift_willThrow();
  }

  v105 = a12;
  v33 = *(a12[1] + 8);
  v34 = dispatch thunk of Collection.count.getter();
  v35 = a7;
  v36 = *(a10 + 56);
  v115 = v35;
  if (v34 != v36())
  {
    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v124 = 0xD000000000000015;
    v125 = 0x8000000270C51CA0;
    v123[0] = dispatch thunk of Collection.count.getter();
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v66);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = (v36)(v115, a10);
    goto LABEL_12;
  }

  v37 = v114;
  v38 = MEMORY[0x2743B2830](v113, v114);
  v117 = *(a10 + 96);
  if (v38 != v117(v115, a10))
  {
    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v124 = 0xD000000000000019;
    v125 = 0x8000000270C51CC0;
    v123[0] = v38;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v67);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = v117(v115, a10);
    goto LABEL_12;
  }

  v39 = MEMORY[0x2743B2830](v112, v37);
  v40 = *(a10 + 80);
  result = v40(v115, a10);
  if (v39 != result)
  {
    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v124 = 0xD000000000000019;
    v125 = 0x8000000270C51CE0;
    v123[0] = v39;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v68);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = v40(v115, a10);
    goto LABEL_12;
  }

  v43 = v115;
  v42 = v116;
  if (v111 < 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  (*(v109 + 16))(v29, a3, a9);
  v44 = *(v33 + 8);
  v124 = ArraySlice.init<A>(_:)();
  v125 = v45;
  v126 = v46;
  v127 = v47;
  v102 = (*(a10 + 104))(v43, a10);
  v103 = &v101;
  v123[0] = v102;
  v49 = MEMORY[0x28223BE20](v102, v48);
  v50 = v118;
  *(&v101 - 10) = v43;
  *(&v101 - 9) = v50;
  *(&v101 - 8) = a9;
  *(&v101 - 7) = a10;
  v51 = v105;
  *(&v101 - 6) = a11;
  *(&v101 - 5) = v51;
  v52 = v113;
  *(&v101 - 4) = v42;
  *(&v101 - 3) = v52;
  *(&v101 - 2) = &v124;
  MEMORY[0x28223BE20](v49, v53);
  *(&v101 - 8) = v43;
  *(&v101 - 7) = v54;
  v101 = a9;
  *(&v101 - 6) = a9;
  *(&v101 - 5) = a10;
  *(&v101 - 4) = a11;
  *(&v101 - 3) = v51;
  *(&v101 - 2) = partial apply for closure #1 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:);
  *(&v101 - 1) = v55;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMd, &_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMR);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Gadget = type metadata accessor for QueryGadget();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v58 = lazy protocol witness table accessor for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>();
  v59 = v109;
  v60 = v110;
  v109 = Gadget;
  v61 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed GadgetParameters) -> (@owned QueryGadget<A.FullyLinearProof.F>, @error @owned Error), (&v101 - 10), v59, Gadget, v57, v58, MEMORY[0x277D84950], &v128);

  if (v60)
  {
    return swift_unknownObjectRelease();
  }

  v103 = &v101;
  v123[0] = v61;
  MEMORY[0x28223BE20](v62, v63);
  v73 = v118;
  *(&v101 - 6) = v43;
  *(&v101 - 5) = v73;
  *(&v101 - 4) = v101;
  *(&v101 - 3) = a10;
  *(&v101 - 2) = a11;
  *(&v101 - 1) = v51;
  v74 = type metadata accessor for Array();
  v105 = type metadata accessor for GadgetEvaluation();
  WitnessTable = swift_getWitnessTable();
  v77 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:), (&v101 - 8), v74, v105, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v76);
  v78 = v108;
  (*(a10 + 136))(v107, v112, v111, v77, v43, a10);

  v79 = v78;
  v80 = v106;
  v111 = *(v106 + 16);
  v112 = v106 + 16;
  (v111)(v120, v79, v114);
  dispatch thunk of RangeReplaceableCollection.append(_:)();
  v110 = v61;
  result = MEMORY[0x2743B2830](v61, v109);
  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {

      v84 = *(v80 + 8);
LABEL_24:
      v84(v108, v114);
      return swift_unknownObjectRelease();
    }

    v103 = 0;
    v81 = 0;
    v105 = (v80 + 8);
    v106 = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v82 = v109;
    v107 = result;
    v117 = a11;
    while (1)
    {
      v85 = v81;
      Array.subscript.getter();
      v128 = v123[0];
      v86 = swift_getWitnessTable();
      v87 = Gadget.wirePolynomialLength.getter(v82, v86);

      Array.subscript.getter();
      Array.subscript.getter();
      v88 = QueryGadget.arity.getter();

      if (v88 < 0)
      {
        break;
      }

      v89 = v114;
      v90 = AssociatedConformanceWitness;
      v91 = v109;
      v92 = v85;
      v116 = v87;
      if (v88)
      {
        v93 = 0;
        v115 = v88;
        do
        {
          v94 = v93 + 1;
          v95 = v92;
          v96 = v91;
          Array.subscript.getter();
          v97 = v128;
          swift_beginAccess();
          v98 = *(v97 + 16);
          type metadata accessor for Array();
          Array.subscript.getter();
          v99 = v122;
          swift_endAccess();

          static Polynomial.interpolateUsingRootsOfUnity(values:length:)(v99, v116, v89, v90, v123);

          v100 = type metadata accessor for Polynomial();
          Polynomial.evaluate(at:)(v119, v100, v120);

          dispatch thunk of RangeReplaceableCollection.append(_:)();
          v92 = v95;
          v91 = v96;
          v93 = v94;
        }

        while (v115 != v94);
      }

      v83 = v92 + 1;
      v82 = v91;
      Array.subscript.getter();
      (v111)(v120, v123[0] + *(*v123[0] + 112), v89);

      dispatch thunk of RangeReplaceableCollection.append(_:)();
      v84 = *v105;
      (*v105)(v119, v89);
      v81 = v83;
      if (v83 == v107)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t FullyLinearProof.decide<A>(verifier:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  v11 = *(v82 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v81 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v80 = v70 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v79 = v70 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v75 = v70 - v23;
  v24 = *(a3 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22, v26);
  v28 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(*(a5 + 8) + 8);
  v83 = a1;
  *&v85 = a3;
  v30 = dispatch thunk of Collection.count.getter();
  v31 = *(a4 + 64);
  v84 = a2;
  v32 = a2;
  v33 = v31;
  v93 = a4;
  if (v30 == v31(v32, a4))
  {
    (*(v24 + 16))(v28, v83, v85);
    v34 = *(v29 + 8);
    v89 = ArraySlice.init<A>(_:)();
    v90 = v35;
    v91 = v36;
    v92 = v37;
    v38 = v84;
    v39 = *(swift_getAssociatedConformanceWitness() + 8);
    v40 = v75;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v41 = type metadata accessor for ArraySlice();
    WitnessTable = swift_getWitnessTable();
    v43 = v79;
    v77 = WitnessTable;
    v78 = v41;
    RangeReplaceableCollection<>.removeFirst()();
    v76 = *(v39 + 8);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = v82 + 8;
    v45 = *(v82 + 8);
    v45(v43, AssociatedTypeWitness);
    v75 = v45;
    v45(v40, AssociatedTypeWitness);
    if (v44)
    {
      v47 = AssociatedTypeWitness;
      v48 = v93;
      v49 = *(v93 + 104);
      v73 = v93 + 104;
      v72 = v49;
      v74 = *(v49(v38, v93) + 16);

      v50 = 0;
      v70[2] = v48 + 144;
      v51 = 32;
      v82 = v46;
      v71 = v47;
      do
      {
        LODWORD(v79) = v74 == v50;
        if (v74 == v50)
        {
          break;
        }

        result = v72(v84, v93);
        if (v50 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v83 = v50 + 1;
        v53 = *(result + v51);

        v54 = v78;
        v55 = swift_getWitnessTable();
        RandomAccessCollection<>.popFirst(_:)(v53, v54, v55);
        v56 = v87;
        v57 = v88;
        v85 = v86;
        v58 = v80;
        RangeReplaceableCollection<>.removeFirst()();
        v86 = v85;
        v87 = v56;
        v88 = v57;
        v59 = v81;
        v60 = v55;
        v61 = v71;
        (*(v93 + 144))(v50, &v86, v54, v60, v84);
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        swift_unknownObjectRelease();
        v63 = v75;
        (v75)(v59, v61);
        v63(v58, v61);
        v51 += 40;
        v50 = v83;
      }

      while ((v62 & 1) != 0);
    }

    else
    {
      LODWORD(v79) = 0;
    }

    swift_unknownObjectRelease();
    v69 = v79;
  }

  else
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v89 = 0xD000000000000018;
    v90 = 0x8000000270C51BE0;
    *&v86 = dispatch thunk of Collection.count.getter();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v64);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    *&v86 = v33(v84, v93);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v65);

    v66 = v89;
    v67 = v90;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v68 = v66;
    *(v68 + 8) = v67;
    *(v68 + 16) = 2;
    swift_willThrow();
  }

  return v69 & 1;
}

uint64_t FullyLinearProof.proveRandLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 104))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = v4;
    v6 = v17;
    v7 = *(v17 + 16);
    v8 = 32;
    do
    {
      v9 = *(v5 + v8);
      v10 = *(v17 + 24);
      if (v7 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
        v5 = v4;
      }

      *(v17 + 16) = v7 + 1;
      *(v17 + 8 * v7 + 32) = v9;
      v8 += 40;
      ++v7;
      --v3;
    }

    while (v3);

    v12 = *(v17 + 16);
    if (v12)
    {
LABEL_7:
      v13 = 0;
      v14 = (v6 + 32);
      while (1)
      {
        v15 = *v14++;
        v16 = __OFADD__(v13, v15);
        v13 += v15;
        if (v16)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

uint64_t FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(uint64_t a1, unint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v126 = a6;
  v127 = a8;
  v125 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = *(AssociatedTypeWitness - 8);
  v15 = *(v118 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v117 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v124 = v106 - v20;
  v128 = a2;
  v21 = MEMORY[0x2743B2830](a2, AssociatedTypeWitness);
  v22 = a7[6];
  v121 = v8;
  if (v21 != v22(a5, a7))
  {
    v132 = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v132 = 0xD00000000000001BLL;
    v133 = 0x8000000270C51C80;
    v130[0] = v21;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v58);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v59 = v22(a5, a7);
LABEL_9:
    v130[0] = v59;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v62);

    v63 = v132;
    v64 = v133;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v65 = v63;
    *(v65 + 8) = v64;
    *(v65 + 16) = 2;
    return swift_willThrow();
  }

  v23 = MEMORY[0x2743B2830](a3, AssociatedTypeWitness);
  v24 = a7[11];
  if (v23 != v24(a5, a7))
  {
    v132 = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v132 = 0xD000000000000019;
    v133 = 0x8000000270C51F80;
    v130[0] = v23;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v60);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v59 = v24(a5, a7);
    goto LABEL_9;
  }

  v25 = MEMORY[0x2743B2830](a4, AssociatedTypeWitness);
  v26 = a7[10];
  if (v25 != v26(a5, a7))
  {
    v132 = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v132 = 0xD000000000000019;
    v133 = 0x8000000270C51CE0;
    v130[0] = v25;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v61);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v59 = v26(a5, a7);
    goto LABEL_9;
  }

  v130[0] = a3;
  v27 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v114 = v27;
  v112 = WitnessTable;
  v132 = ArraySlice.init<A>(_:)();
  v133 = v29;
  v134 = v30;
  v135 = v31;
  v32 = a7[13];
  v116 = a7 + 13;
  v115 = v32;
  v33 = v32(a5, a7);
  v120 = a7;
  v123 = v106;
  v130[0] = v33;
  MEMORY[0x28223BE20](v33, v34);
  v35 = v126;
  v106[-6] = a5;
  v106[-5] = v35;
  v36 = v127;
  v106[-4] = v120;
  v106[-3] = v36;
  v106[-2] = &v132;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF16GadgetParametersVGMd, &_sSay4VDAF16GadgetParametersVGMR);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = type metadata accessor for GadgetWireInputs();
  v40 = lazy protocol witness table accessor for type [GadgetParameters] and conformance [A]();
  v41 = v129;
  v43 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:), &v106[-8], v37, v39, MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v42);

  v123 = a4;
  v129 = v43;
  v130[0] = v43;
  MEMORY[0x28223BE20](v44, v45);
  v46 = v126;
  v106[-4] = a5;
  v106[-3] = v46;
  v47 = v127;
  v106[-2] = v120;
  v106[-1] = v47;
  v48 = type metadata accessor for Array();
  v119 = AssociatedConformanceWitness;
  v49 = type metadata accessor for GadgetEvaluation();
  v50 = swift_getWitnessTable();
  v51 = v120;
  v53 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:), &v106[-6], v48, v49, MEMORY[0x277D84A98], v50, MEMORY[0x277D84AC0], v52);
  v54 = v51;
  v55 = v51[17];
  v56 = v124;
  v55(v128, v123, 1, v53, a5, v54);
  if (v41)
  {

    return swift_unknownObjectRelease();
  }

  v106[1] = 0;
  v66 = *(v118 + 8);
  v118 += 8;
  v110 = v66;
  v66(v56, AssociatedTypeWitness);

  v111 = v39;
  result = MEMORY[0x2743B2830](v129, v39);
  if ((result & 0x8000000000000000) == 0)
  {
    v67 = v115;
    if (!result)
    {
LABEL_25:

      return swift_unknownObjectRelease();
    }

    v68 = 0;
    v108 = v54[19];
    v109 = v54 + 19;
    v113 = a5;
    v107 = result;
    while (1)
    {
      result = v67(a5, v54);
      if (v68 >= *(result + 16))
      {
        break;
      }

      v69 = *(result + 40 * v68 + 56);

      v124 = type metadata accessor for Polynomial();
      v136 = Array.init()();
      result = v67(a5, v120);
      if (v68 >= *(result + 16))
      {
        goto LABEL_27;
      }

      v70 = v68;
      v71 = *(result + 40 * v68 + 32);

      if (v71 < 0)
      {
        goto LABEL_28;
      }

      v72 = AssociatedTypeWitness;
      v73 = v119;
      v74 = v111;
      v123 = v69;
      if (v71)
      {
        v75 = v71;
        v76 = 0;
        v122 = v75;
        do
        {
          v128 = v76 + 1;
          v77 = v74;
          Array.subscript.getter();
          v78 = v73;
          v79 = v72;
          v80 = v131;
          swift_beginAccess();
          v81 = *(v80 + 32);
          Array.subscript.getter();
          v82 = v70;
          v83 = v130[4];
          swift_endAccess();
          v72 = v79;
          v73 = v78;

          static Polynomial.interpolateUsingRootsOfUnity(values:length:)(v83, v123, v72, v78, v130);

          type metadata accessor for Array();
          Array.append(_:)();
          Array.subscript.getter();
          v84 = v131;
          swift_beginAccess();
          v85 = *(v84 + 32);
          Array.subscript.getter();
          Array.subscript.getter();
          swift_endAccess();

          v70 = v82;

          dispatch thunk of RangeReplaceableCollection.append(_:)();
          v74 = v77;
          v76 = v128;
        }

        while (v122 != v128);
      }

      AssociatedTypeWitness = v72;
      v86 = v120;
      v87 = v113;
      result = v115(v113, v120);
      if (v70 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v88 = *(result + 40 * v70 + 64);

      v128 = v70;
      v108(v130, v70, v136, v87, v86);

      v89 = v130[0];
      v90 = v124;
      result = Polynomial.degree.getter(v124, v91);
      v92 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_30;
      }

      v93 = v88;
      v131 = v89;
      Polynomial.coefficients.getter(v90);

      if (v92 < 0)
      {
        goto LABEL_31;
      }

      specialized ArraySlice.subscript.getter(0, v92);
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v130[0] = v95;
      v130[1] = v97;
      v130[2] = v99;
      v130[3] = v101;
      type metadata accessor for ArraySlice();
      swift_getWitnessTable();
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v102 = *(v119 + 8);
      v103 = v117;
      result = dispatch thunk of static AdditiveArithmetic.zero.getter();
      v104 = v93 - v92;
      if (__OFSUB__(v93, v92))
      {
        goto LABEL_32;
      }

      v68 = v128 + 1;
      v105 = specialized Array.init(repeating:count:)(v103, v104, AssociatedTypeWitness);
      v110(v103, AssociatedTypeWitness);
      v130[0] = v105;
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v54 = v120;
      a5 = v113;
      v67 = v115;
      if (v68 == v107)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidOutput(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 72);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(30);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000016;
    *(v11 + 8) = 0x8000000270C519D0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidMeasurement(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 48);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(35);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD00000000000001BLL;
    *(v11 + 8) = 0x8000000270C51C80;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidJointRand(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 80);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(33);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C51CE0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidGadgetEvaluationKinds(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for GadgetEvaluation();
  v7 = MEMORY[0x2743B2830](a1._rawValue, v6);
  v8 = *(v3 + 104);
  v9 = *(v8(v4, v3) + 16);

  if (v7 != v9)
  {
    _StringGuts.grow(_:)(23);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v11 = MEMORY[0x2743B2770]();
    v13 = v12;

    MEMORY[0x2743B25F0](v11, v13);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v14 = 0x2064696C61766E49;
    *(v14 + 8) = 0xEF203A746E756F63;
    *(v14 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t FullyLinearProof.prove(measurement:proveRand:jointRand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v17 = Array.init()();
  v9 = (*(a5 + 56))(a4, a5);
  v10 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v9);
  v11 = *(a5 + 168);
  WitnessTable = swift_getWitnessTable();
  v11(&v17, a1, a2, a3, v10, WitnessTable, a4, a5);
  v13 = v17;
  if (v16)
  {
  }

  return v13;
}

uint64_t FullyLinearProof.query(measurement:proof:queryRand:jointRand:numOfShares:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v22 = Array.init()();
  v11 = (*(a7 + 64))(a6, a7);
  v12 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v11);
  v21 = a2;
  v13 = *(a7 + 184);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v13(&v22, a1, &v21, a3, a4, a5, v12, v12, WitnessTable, v15, a6, a7);
  if (v20)
  {
  }

  else
  {
    return v22;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidProveRand(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 88);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(33);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C51F80;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t FullyLinearProof.assertValidProof<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a5 + 8) + 8);
  v8 = dispatch thunk of Collection.count.getter();
  v9 = a2;
  v10 = a4;
  v11 = a4;
  v12 = *(a4 + 56);
  result = v12(v9, v11);
  if (v8 != result)
  {
    _StringGuts.grow(_:)(29);

    dispatch thunk of Collection.count.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v12(v9, v10);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v16 = 0xD000000000000015;
    *(v16 + 8) = 0x8000000270C51CA0;
    *(v16 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidQueryRand(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 96);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(33);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C51CC0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t FullyLinearProof.assertValidVerifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a5 + 8) + 8);
  v8 = dispatch thunk of Collection.count.getter();
  v9 = a2;
  v10 = a4;
  v11 = a4;
  v12 = *(a4 + 64);
  result = v12(v9, v11);
  if (v8 != result)
  {
    _StringGuts.grow(_:)(32);

    dispatch thunk of Collection.count.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v12(v9, v10);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v16 = 0xD000000000000018;
    *(v16 + 8) = 0x8000000270C51BE0;
    *(v16 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for GadgetWireInputs();
  v5 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection<>.popFirst(_:)(v3, v5, WitnessTable);
  v9[0] = v9[2];
  v9[1] = v9[3];
  v7 = specialized GadgetWireInputs.__allocating_init<A>(numOfCalls:proveRand:)(v4, v9, v5, WitnessTable);
  result = swift_unknownObjectRelease();
  *a2 = v7;
  return result;
}

uint64_t closure #1 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = a5;
  v55 = a4;
  *&v47 = a2;
  v48 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v45 = *(AssociatedTypeWitness - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = v43 - v9;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v44 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = v43 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v43 - v22;
  v24 = *(v47 + 16);
  v46 = *v47;
  v49 = v24;
  v43[0] = *(v47 + 32);
  Array.subscript.getter();
  *&v50 = *(&v49 + 1);
  v25 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v48 = v23;
  FieldElement.pow(_:)(v10, v11, AssociatedConformanceWitness, v20);
  (*(v45 + 8))(v10, AssociatedTypeWitness);
  v26 = v44;
  (*(AssociatedConformanceWitness + 72))(v11, AssociatedConformanceWitness);
  *&v47 = AssociatedConformanceWitness;
  v27 = *(*(AssociatedConformanceWitness + 8) + 8);
  LOBYTE(v25) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v12 + 8);
  v28(v26, v11);
  v55 = v12 + 8;
  v28(v20, v11);
  if (v25)
  {
    v29 = *(&v49 + 1);
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v30 = *(v47 + 16);
    v31 = v48;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    *&v54[0] = v29;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v34 = *(&v50 + 1);
    v33 = v50;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = v34;
    *(v35 + 16) = 3;
    swift_willThrow();
    v28(v31, v11);
  }

  else
  {
    v36 = type metadata accessor for ArraySlice();
    WitnessTable = swift_getWitnessTable();
    RandomAccessCollection<>.popFirst(_:)(v46, v36, WitnessTable);
    v44 = v28;
    v38 = v51;
    v45 = v50;
    v39 = v43[0];
    RandomAccessCollection<>.popFirst(_:)(v43[0], v36, WitnessTable);
    v40 = v51;
    type metadata accessor for QueryGadget();
    v47 = v50;
    v54[0] = v50;
    v54[1] = v40;
    v53[0] = v45;
    v53[1] = v38;
    v50 = v46;
    v51 = v49;
    v52 = v39;
    v41 = v48;
    v33 = specialized QueryGadget.__allocating_init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v54, v53, v48, &v50, v36, v36, WitnessTable, WitnessTable);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (v44)(v41, v11);
  }

  return v33;
}

uint64_t partial apply for closure #1 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v8 = *(v2 + 56);
  v7 = *(v2 + 40);
  return closure #1 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 80));
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed GadgetParameters) -> (@owned QueryGadget<A.FullyLinearProof.F>, @error @owned Error)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  result = v7(*a1, a1 + 1);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>()
{
  result = lazy protocol witness table cache variable for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMd, &_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMR);
    lazy protocol witness table accessor for type [GadgetParameters] and conformance [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GadgetParameters] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GadgetParameters] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GadgetParameters] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay4VDAF16GadgetParametersVGMd, &_sSay4VDAF16GadgetParametersVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GadgetParameters] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return closure #1 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(a1, a2);
}

unint64_t instantiation function for generic protocol witness table for FLPTypeError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  result = lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_4VDAF12FLPTypeErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t destructiveInjectEnumTag for FLPTypeError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

char *ClientLevelOutput.nextLevelInput(onPathDirections:prevParty0CtrlList:prevParty1CtrlList:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v63 = a6;
  v66 = *(a1 + 16);
  if (a6 >> 62)
  {
LABEL_57:
    v56 = a6 & 0xFFFFFFFFFFFFFF8;
    if (a6 < 0)
    {
      v56 = a6;
    }

    v57 = a1;
    v58 = a3;
    v59 = a4;
    v60 = a2;
    v61 = MEMORY[0x2743B2FD0](v56);
    a2 = v60;
    a4 = v59;
    a3 = v58;
    v8 = v66;
    a6 = v63;
    v11 = v61;
    a1 = v57;
  }

  else
  {
    v11 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v71 = a4 + 32;
  v72 = a1 + 32;
  v67 = a3 + 32;
  v68 = a2 + 32;
  v73 = *(a4 + 16);
  v64 = a6 & 0xC000000000000001;
  v69 = *(a3 + 2);
  v70 = *(a2 + 16);
  v62 = (a6 + 32);
  v87 = v9;
  v88 = v9;
  a3 = v9;
  v86 = v9;
  v75 = a5;
  v76 = v11;
  v65 = v11 & ~(v11 >> 63);
  while (1)
  {
    if (v12 == v8)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v12 == v73)
    {
      goto LABEL_53;
    }

    v89 = a3;
    v13 = *(v72 + v12);
    v14 = (v71 + 96 * v12);
    if (v13)
    {
      v15 = v14[5];
      v84 = v14[2];
      v85 = v14[3];
      outlined copy of Data._Representation(v84, v85);
      v16 = v14 + 11;
      v17 = (v14 + 9);
      v18 = v14 + 8;
    }

    else
    {
      v15 = v14[4];
      v84 = *v14;
      v85 = v14[1];
      outlined copy of Data._Representation(*v14, v85);
      v18 = v14 + 6;
      v16 = v14 + 10;
      v17 = (v14 + 7);
    }

    v19 = *v16;
    v20 = *v17;
    v21 = *v18;

    v82 = v21;
    v83 = v20;
    outlined copy of Data._Representation(v21, v20);
    v81 = v19;

    if (v12 == v70)
    {
      goto LABEL_54;
    }

    if (v12 == v69)
    {
      goto LABEL_55;
    }

    v22 = *(v68 + 8 * v12);
    v23 = v67[v12];
    v80 = v15;
    if (v76)
    {

      a1 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
      if (v76 < 0)
      {
        goto LABEL_56;
      }

      v74 = v23;
      v77 = v7;
      v24 = v9;
      v25 = v13 ? 24 : 16;
      if (v64)
      {
        v26 = 0;
        v27 = v63;
        do
        {
          v28 = *(MEMORY[0x2743B2D10](v26, v27) + v25);

          swift_unknownObjectRelease();
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v27 = v63;
          }

          ++v26;
          *(v24 + 16) = v30 + 1;
          *(v24 + 8 * v30 + 32) = v28;
        }

        while (v76 != v26);
      }

      else
      {
        v31 = v62;
        v32 = v76;
        do
        {
          v33 = *(*v31 + v25);

          v35 = *(v24 + 16);
          v34 = *(v24 + 24);
          if (v35 >= v34 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
          }

          *(v24 + 16) = v35 + 1;
          *(v24 + 8 * v35 + 32) = v33;
          ++v31;
          --v32;
        }

        while (v32);
      }

      v7 = v77;
      v23 = v74;
      a5 = v75;
    }

    else
    {

      v24 = v9;
    }

    v36 = specialized ClientLevelOutput.nextLevelSeed(unadjusted:prevCtrl:correctionList:)(v84, v85, v22, a5);
    if (v7)
    {
      break;
    }

    v38 = v36;
    v39 = v37;
    v40 = v23;
    v7 = 0;
    v41 = specialized ClientLevelOutput.nextLevelSeed(unadjusted:prevCtrl:correctionList:)(v82, v83, v23, a5);
    v43 = v42;
    v78 = specialized ClientLevelOutput.nextLevelCtrlGroup(unadjusted:prevCtrl:ctrlCorrections:)(v80, v22, v24);

    v79 = specialized ClientLevelOutput.nextLevelCtrlGroup(unadjusted:prevCtrl:ctrlCorrections:)(v81, v40, v24);

    outlined copy of Data._Representation(v38, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
    }

    v45 = *(v87 + 2);
    v44 = *(v87 + 3);
    if (v45 >= v44 >> 1)
    {
      v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v87);
    }

    *(v87 + 2) = v45 + 1;
    v46 = &v87[16 * v45];
    *(v46 + 4) = v38;
    *(v46 + 5) = v39;
    outlined copy of Data._Representation(v41, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v88 + 2) + 1, 1, v88);
    }

    v48 = *(v88 + 2);
    v47 = *(v88 + 3);
    if (v48 >= v47 >> 1)
    {
      v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v88);
    }

    *(v88 + 2) = v48 + 1;
    v49 = &v88[16 * v48];
    *(v49 + 4) = v41;
    *(v49 + 5) = v43;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v50 = v89;
    }

    else
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 2) + 1, 1, v89);
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v90 = v50;
    *&v50[8 * v52 + 32] = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
    }

    v54 = v86[2];
    v53 = v86[3];
    if (v54 >= v53 >> 1)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v86);
    }

    ++v12;
    outlined consume of Data._Representation(v82, v83);

    outlined consume of Data._Representation(v84, v85);

    outlined consume of Data._Representation(v38, v39);
    a1 = outlined consume of Data._Representation(v41, v43);
    v86[2] = v54 + 1;
    v86[v54 + 4] = v79;
    v8 = v66;
    a3 = v90;
    a5 = v75;
    v9 = MEMORY[0x277D84F90];
    if (v12 == v66)
    {
      return v87;
    }
  }

  outlined consume of Data._Representation(v82, v83);

  outlined consume of Data._Representation(v84, v85);

  return v87;
}

uint64_t ClientLevelOutput.correctionWord.getter(uint64_t a1, uint64_t a2)
{

  return a2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF4SideOGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SideOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySbGGMd, &_ss23_ContiguousArrayStorageCySaySbGGMR, &_sSaySbGMd, &_sSaySbGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field40VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field40VGGMR, &_s4VDAF16GadgetEvaluationOyAA7Field40VGMd, &_s4VDAF16GadgetEvaluationOyAA7Field40VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMR, &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field32VGGMR, &_s4VDAF16GadgetEvaluationOyAA7Field32VGMd, &_s4VDAF16GadgetEvaluationOyAA7Field32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field64VGGMd, "TS", &_s4VDAF16GadgetEvaluationOyAA7Field64VGMd, &_s4VDAF16GadgetEvaluationOyAA7Field64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMd, &_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF20PreamblePrepareShareVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF20PreamblePrepareShareVyAC7Field32VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}