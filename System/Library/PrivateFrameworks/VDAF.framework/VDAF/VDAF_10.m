uint64_t evaluateUsingHorner<A, B, C>(_:atInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a6;
  v102 = a8;
  v14 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v15 = *(v103 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v99 = &v83 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  *&v107 = &v83 - v24;
  v25 = *(a5 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v23, v27);
  v94 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v83 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v83 - v35;
  v105 = a1;
  v106 = a3;
  v104 = v14;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = *(*(a7 + 8) + 8);
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v85 = v33;
  result = dispatch thunk of Collection.count.getter();
  v39 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = dispatch thunk of Collection.count.getter();
  v40 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v93 = *(v102 + 8);
  result = dispatch thunk of static AdditiveArithmetic.zero.getter();
  v41 = v39 * v40;
  if ((v39 * v40) >> 64 != (v39 * v40) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!__OFADD__(v41, 1))
  {
    v97 = a4;
    v98 = a7;
    v96 = a2;
    v42 = specialized Array.init(repeating:count:)(v36, v41 + 1, a5);
    v43 = *(v25 + 8);
    v92 = v25 + 8;
    v91 = v43;
    v43(v36, a5);
    v110 = v42;
    v44 = v99;
    dispatch thunk of Collection.startIndex.getter();
    v45 = v107;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v84 = v40;
    v46 = v103 + 8;
    v47 = *(v103 + 8);
    v48 = v44;
    v49 = AssociatedTypeWitness;
    v47(v48, AssociatedTypeWitness);
    v50 = dispatch thunk of Collection.subscript.read();
    v51 = *(v25 + 16);
    v52 = v85;
    v89 = v25 + 16;
    v88 = v51;
    v51(v85);
    v50(v109, 0);
    v103 = v46;
    v90 = v47;
    v47(v45, v49);
    v53 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v54 = v110;
    Array._checkSubscript_mutating(_:)(0);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v56 = v54 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v56 = v54;
    }

    v57 = *(v25 + 40);
    v87 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v57(v56 + v87, v52, a5);
    result = destructiveProjectEnumData for SeedCtrlUnadjustedError(v53, v58, v59, v60, v61);
    v62 = v84 - 1;
    if (__OFSUB__(v84, 1))
    {
      goto LABEL_28;
    }

    v63 = 0;
    LODWORD(v85) = 0;
    v86 = v53;
    v64 = v84 == 1;
    if (v62 <= 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    for (i = v62 - 1; ; i = 0)
    {
      *&v108[0] = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd, "4\");
      WitnessTable = swift_getWitnessTable();
      lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>();
      MutableCollection.subscript.getter();
      v107 = v109[0];
      v108[0] = v109[0];
      v108[1] = v109[1];
      v68 = type metadata accessor for ArraySlice();
      v69 = swift_getWitnessTable();
      v70 = swift_getWitnessTable();
      convolveDirectly<A, B, C, D>(_:withKernel:result:)(v108, v96, &v110, v68, v97, v53, a5, v69, v98, WitnessTable, v70, v102);
      result = swift_unknownObjectRelease();
      if (__OFADD__(v63, v39))
      {
        break;
      }

      v71 = v99;
      dispatch thunk of Collection.startIndex.getter();
      v72 = v39;
      v73 = v95;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v74 = AssociatedTypeWitness;
      *&v107 = i;
      v75 = v90;
      v90(v71, AssociatedTypeWitness);
      v76 = dispatch thunk of Collection.subscript.read();
      v77 = v94;
      v88(v94);
      v76(v109, 0);
      v78 = v73;
      v39 = v72;
      v75(v78, v74);
      v53 = v86;
      Array._makeMutableAndUnique()();
      Array._checkSubscript_mutating(_:)(0);
      _swift_isClassOrObjCExistentialType();
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v91(v77, a5);
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v53, v79, v80, v81, v82);
      v63 += v72;
      v62 = v107;
      v64 = v107 == 0;
      if (v107 > 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v66 = !v64;
      if ((v66 | v85))
      {
        return v110;
      }

      LODWORD(v85) = 1;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t evaluateUsingHorner<A, B>(_:atInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v100 = a2;
  v101 = a5;
  v12 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v98 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v18);
  v97 = &v76[-v19];
  v20 = swift_getAssociatedTypeWitness();
  v103 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v96 = v20;
  v95 = swift_getAssociatedTypeWitness();
  v21 = *(v95 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v95, v23);
  v94 = &v76[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v93 = &v76[-v28];
  v30 = MEMORY[0x28223BE20](v27, v29);
  v92 = &v76[-v31];
  v32 = *(a4 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v30, v34);
  v91 = &v76[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v35, v37);
  v108 = &v76[-v39];
  v41 = MEMORY[0x28223BE20](v38, v40);
  v107 = &v76[-v42];
  MEMORY[0x28223BE20](v41, v43);
  v90 = &v76[-v44];
  v45 = type metadata accessor for Optional();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8, v47);
  v49 = &v76[-v48];
  BidirectionalCollection.last.getter();
  result = (*(v32 + 48))(v49, 1, a4);
  if (result != 1)
  {
    v51 = *(v32 + 32);
    v89 = v32 + 32;
    v88 = v51;
    v51(a7, v49, a4);
    result = dispatch thunk of Collection.count.getter();
    v52 = result - 2;
    if (!__OFSUB__(result, 2))
    {
      v85 = v12;
      v86 = a1;
      v77 = 0;
      v106 = (v32 + 16);
      v83 = v103 + 88;
      v82 = AssociatedConformanceWitness + 56;
      v81 = (v21 + 8);
      v80 = v103 + 96;
      v79 = (v13 + 8);
      v78 = (v32 + 8);
      v87 = a3;
      v84 = a7;
      v53 = v103;
      while (1)
      {
        if (v52 > 0)
        {
          v105 = v52 - 1;
        }

        else
        {
          if ((v52 != 0) | v77 & 1)
          {
            return result;
          }

          v105 = 0;
          v77 = 1;
        }

        v104 = *v106;
        v54 = v108;
        v104(v108, a7, a4);
        FieldElement.init(other:)(v54, a4, v53);
        v55 = swift_checkMetadataState();
        v56 = *(v53 + 88);
        v57 = v93;
        v56(a4, v53);
        v58 = v94;
        v56(a4, v53);
        v59 = v92;
        (*(AssociatedConformanceWitness + 56))(v57, v58, v55);
        v60 = *v81;
        v61 = v58;
        v62 = v95;
        (*v81)(v61, v95);
        v60(v57, v62);
        (*(v53 + 96))(v59, a4, v53);
        v63 = v98;
        dispatch thunk of Collection.startIndex.getter();
        v64 = v97;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v65 = *v79;
        v66 = AssociatedTypeWitness;
        (*v79)(v63, AssociatedTypeWitness);
        v67 = dispatch thunk of Collection.subscript.read();
        v68 = v104;
        (v104)(v108);
        v67(v109, 0);
        v65(v64, v66);
        v69 = v91;
        v70 = v107;
        v68(v91, v107, a4);
        v71 = v90;
        FieldElement.init(other:)(v69, a4, v53);
        v72 = *(v53 + 8);
        v73 = v108;
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v74 = *v78;
        (*v78)(v73, a4);
        v74(v70, a4);
        v75 = v84;
        v74(v84, a4);
        a7 = v75;
        result = v88(v75, v71, a4);
        v52 = v105;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t evaluateUsingDFT<A, B, C>(_:atInput:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, void *), void *a8)
{
  v225 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v242 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v235 = swift_getAssociatedTypeWitness();
  v221 = *(v235 - 8);
  v16 = *(v221 + 64);
  v18 = MEMORY[0x28223BE20](v235, v17);
  v234 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v217 = &v194 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v243 = &v194 - v24;
  v231 = a7;
  v25 = *(*(a7 + 1) + 8);
  v224 = swift_getAssociatedTypeWitness();
  v232 = *(v224 - 8);
  v26 = v232[8];
  v28 = MEMORY[0x28223BE20](v224, v27);
  v230 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v241 = (&v194 - v32);
  v239 = a5;
  v222 = *(a5 - 8);
  v33 = *(v222 + 64);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v197 = &v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v210 = &v194 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v209 = &v194 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v208 = &v194 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = &v194 - v48;
  v51 = MEMORY[0x28223BE20](v47, v50);
  v233 = &v194 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v240 = &v194 - v54;
  v211 = a6;
  v55 = *(*(a6 + 8) + 8);
  v214 = swift_getAssociatedTypeWitness();
  v215 = *(v214 - 8);
  v56 = *(v215 + 64);
  v58 = MEMORY[0x28223BE20](v214, v57);
  v207 = &v194 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v63 = &v194 - v62;
  MEMORY[0x28223BE20](v61, v64);
  v213 = &v194 - v65;
  v219 = a1;
  v220 = a3;
  v218 = v55;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v223 = v49;
  v67 = v225;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = dispatch thunk of Collection.count.getter();
  v68 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = dispatch thunk of Collection.count.getter();
  v69 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v70 = v68 * v69;
  if ((v68 * v69) >> 64 != (v68 * v69) >> 63)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  result = v70 + 1;
  if (__OFADD__(v70, 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v71 = specialized FixedWidthInteger.nextPowerOfTwo.getter(result);
  if (!v69)
  {
    v184 = getContiguousArrayStorageType<A>(for:)(v239, v239);
    v185 = *(v184 + 52);
    v186 = v222;
    v187 = *(v222 + 72);
    v188 = (*(v222 + 80) + *(v184 + 48)) & ~*(v222 + 80);
    swift_allocObject();
    v189 = static Array._adoptStorage(_:count:)();
    v191 = v190;
    v192 = v213;
    dispatch thunk of Collection.startIndex.getter();
    v193 = dispatch thunk of Collection.subscript.read();
    (*(v186 + 16))(v191);
    v193(&v245, 0);
    (*(v215 + 8))(v192, v214);
    _finalizeUninitializedArray<A>(_:)();
    return v189;
  }

  v204 = v63;
  v201 = AssociatedTypeWitness;
  v72 = v242[1];
  v216 = a4;
  v73 = v25;
  v74 = v239;
  v75 = v240;
  v76 = v71;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v77 = specialized Array.init(repeating:count:)(v75, v76, v74);
  v79 = v222 + 8;
  v78 = *(v222 + 8);
  v78(v75, v74);
  v247 = v77;
  v212 = v72;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v202 = v76;
  v80 = specialized Array.init(repeating:count:)(v75, v76, v74);
  v81 = v216;
  v236 = v78;
  v237 = v79;
  v78(v75, v74);
  v246 = v80;
  result = dispatch thunk of Collection.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v196 = v68;
    v82 = v224;
    v83 = v230;
    if (result)
    {
      v84 = 0;
      v228 = (v232 + 1);
      v227 = (v222 + 16);
      v226 = (v222 + 40);
      v229 = result;
      v85 = (v232 + 1);
      do
      {
        v232 = (v84 + 1);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v86 = *v85;
        (*v85)(v83, v82);
        v87 = dispatch thunk of Collection.subscript.read();
        v88 = v73;
        v89 = v67;
        v90 = v81;
        v91 = v222;
        v92 = v239;
        (*(v222 + 16))(v233);
        v87(&v245, 0);
        v86(v241, v82);
        v93 = type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        v94 = v246;
        Array._checkSubscript_mutating(_:)(v84);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v96 = v94 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v96 = v94;
        }

        v97 = v96 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v84;
        v98 = *(v91 + 40);
        v81 = v90;
        v67 = v89;
        v73 = v88;
        v83 = v230;
        v98(v97, v233, v92);
        destructiveProjectEnumData for SeedCtrlUnadjustedError(v93, v99, v100, v101, v102);
        v84 = v232;
      }

      while (v229 != v232);
    }

    v103 = v239;
    v104 = v240;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v105 = v202;
    v106 = specialized Array.init(repeating:count:)(v104, v202, v103);
    v236(v104, v103);
    v244 = v106;
    v107 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v194 = swift_getWitnessTable();
    v195 = WitnessTable;
    discreteFourierTransform<A, B, C>(input:size:output:)(v67, v105, &v244, v81, v107, v103, v231, WitnessTable, v194, v242);
    v203 = v244;

    v109 = v204;
    dispatch thunk of Collection.startIndex.getter();
    v110 = dispatch thunk of Collection.subscript.read();
    v111 = v222;
    v112 = *(v222 + 16);
    v113 = v223;
    v206 = v222 + 16;
    v205 = v112;
    v112(v223);
    v110(&v245, 0);
    v114 = *(v215 + 8);
    v215 += 8;
    v204 = v114;
    v114(v109, v214);
    Array._makeMutableAndUnique()();
    v115 = v247;
    Array._checkSubscript_mutating(_:)(0);
    v116 = _swift_isClassOrObjCExistentialType();
    v117 = v115 & 0xFFFFFFFFFFFFFF8;
    if ((v116 & 1) == 0)
    {
      v117 = v115;
    }

    v118 = *(v111 + 40);
    v216 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v118(v117 + v216, v113, v103);
    destructiveProjectEnumData for SeedCtrlUnadjustedError(v107, v119, v120, v121, v122);
    result = dispatch thunk of Collection.count.getter();
    v200 = result;
    if (result < 1)
    {
      goto LABEL_51;
    }

    v241 = v107;
    v198 = v203;
    if (result != 1)
    {
      result = swift_checkMetadataState();
      v123 = v242[12];
      v124 = v242[11];
      v125 = *(AssociatedConformanceWitness + 56);
      v126 = 1;
      v127 = v196;
      v198 = v203;
      v232 = v242 + 12;
      v233 = result;
      v230 = (v242 + 11);
      v231 = v123;
      v229 = v124;
      v228 = AssociatedConformanceWitness + 56;
      v227 = v125;
      v226 = (v221 + 8);
      while (v126 != v200)
      {
        if (v127 < 0)
        {
          goto LABEL_40;
        }

        v128 = 0;
        v199 = v126 + 1;
        v224 = v246;
        v221 = v127;
        v223 = v126;
        while (1)
        {
          v129 = v207;
          dispatch thunk of Collection.startIndex.getter();
          v130 = v213;
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v131 = v214;
          v132 = v204;
          v204(v129, v214);
          v133 = dispatch thunk of Collection.subscript.read();
          v135 = v239;
          v134 = v240;
          v136 = v205;
          (v205)(v240);
          v133(&v245, 0);
          v132(v130, v131);
          v137 = v209;
          Array.subscript.getter();
          v138 = v210;
          v136(v210, v134, v135);
          v139 = v208;
          v140 = v242;
          FieldElement.init(other:)(v138, v135, v242);
          v141 = v217;
          v142 = v229;
          (v229)(v135, v140);
          v143 = v234;
          v142(v135, v140);
          v227(v141, v143);
          v144 = *v226;
          v145 = v143;
          v146 = v135;
          v147 = v235;
          (*v226)(v145, v235);
          v148 = v141;
          v149 = v243;
          v225 = v144;
          v144(v148, v147);
          v231(v149, v135, v140);
          v150 = v236;
          v236(v137, v135);
          v150(v240, v135);
          v151 = v241;
          Array._makeMutableAndUnique()();
          Array._checkSubscript_mutating(_:)(v128);
          _swift_isClassOrObjCExistentialType();
          v152 = *(v222 + 72);
          dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
          v150(v139, v146);
          v153 = v151;
          v154 = v221;
          result = destructiveProjectEnumData for SeedCtrlUnadjustedError(v153, v155, v156, v157, v158);
          if (v154 == v128)
          {
            break;
          }

          if (__OFADD__(v128++, 1))
          {
            __break(1u);
            goto LABEL_39;
          }
        }

        result = dispatch thunk of Collection.count.getter();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_41;
        }

        if (v223 == (result - 1))
        {
          goto LABEL_36;
        }

        v160 = v202;
        if (v202 < 0)
        {
          goto LABEL_42;
        }

        v161 = v217;
        v162 = v197;
        if (v202)
        {
          v163 = 0;
          v164 = v216;
          v201 = v152;
          do
          {
            v224 = v163 + 1;
            v165 = v239;
            Array.subscript.getter();
            Array._makeMutableAndUnique()();
            v166 = v244;
            Array._checkSubscript_mutating(_:)(v163);
            v167 = _swift_isClassOrObjCExistentialType();
            v168 = v166 & 0xFFFFFFFFFFFFFF8;
            if ((v167 & 1) == 0)
            {
              v168 = v166;
            }

            v223 = v168;
            v169 = v242;
            v170 = v229;
            (v229)(v165, v242);
            v171 = v243;
            v172 = v234;
            v170(v165, v169);
            v227(v161, v172);
            v173 = v172;
            v174 = v235;
            v175 = v225;
            v225(v173, v235);
            v175(v161, v174);
            v231(v171, v165, v242);
            v176 = v165;
            v177 = v201;
            v236(v162, v176);
            destructiveProjectEnumData for SeedCtrlUnadjustedError(v241, v178, v179, v180, v181);
            v160 = v202;
            v164 += v177;
            v163 = v224;
          }

          while (v202 != v224);
        }

        v182 = v244;
        v245 = v244;
        result = inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(&v245, v160, &v246, v241, v241, v239, v194, v195, v194, v242);
        if (__OFADD__(v221, v196))
        {
          goto LABEL_43;
        }

        v198 = v182;
        v127 = v221 + v196;
        v126 = v199;
        if (v199 == v200)
        {
          goto LABEL_36;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_36:

    v183 = v247;

    return v183;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void Polynomial.length.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  JUMPOUT(0x2743B2830);
}

uint64_t Polynomial.degree.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v23 - v11;
  v13 = *v2;
  v23[1] = *v2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v15 = MEMORY[0x2743B2830](v13, v4);
  v16 = (v5 + 8);
  do
  {
    v17 = v15;
    if (v15-- < 1)
    {
      break;
    }

    Array.subscript.getter();
    v19 = *(*(a1 + 24) + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v20 = *(v19 + 8);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v16;
    (*v16)(v9, v4);
    v22(v12, v4);
  }

  while ((v21 & 1) != 0);
  result = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t Polynomial.coefficients.getter(uint64_t a1)
{
  result = MEMORY[0x2743B2830](*v1, *(a1 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    return Array.subscript.getter();
  }

  return result;
}

uint64_t Polynomial.init(coefficients:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
  }

  return result;
}

uint64_t Polynomial.init(coefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = getContiguousArrayStorageType<A>(for:)(a2, a2);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(a2 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  v12 = static Array._adoptStorage(_:count:)();
  (*(v9 + 16))(v13, a1, a2);
  _finalizeUninitializedArray<A>(_:)();
  Polynomial.init(coefficients:)(v12, &v15);
  result = (*(v9 + 8))(a1, a2);
  *a3 = v15;
  return result;
}

uint64_t Polynomial.init(coefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  swift_allocObject();
  v15 = static Array._adoptStorage(_:count:)();
  (*(v12 + 16))(v16, a1, AssociatedTypeWitness);
  _finalizeUninitializedArray<A>(_:)();
  Polynomial.init(coefficients:)(v15, a2, a3, &v18);
  result = (*(v12 + 8))(a1, AssociatedTypeWitness);
  *a4 = v18;
  return result;
}

uint64_t Polynomial.init(coefficients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v15 = a1;
    MEMORY[0x28223BE20](result, v11);
    v14[2] = a2;
    v14[3] = a3;
    v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Polynomial.init(coefficients:), v14, v8, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

    *a4 = v13;
  }

  return result;
}

uint64_t closure #1 in Polynomial.init(coefficients:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1);
  return FieldElement.init(_:)(v10, a2, a3);
}

uint64_t static Polynomial.interpolateUsingRootsOfUnity(values:length:)@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2743B2830](v12, v15);
  if (result > a2)
  {
    __break(1u);
  }

  else
  {
    v23 = a1;
    v17 = type metadata accessor for Array();
    swift_getWitnessTable();
    result = Collection.isEmpty.getter();
    if ((result & 1) == 0)
    {
      v18 = *(a4 + 8);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v19 = specialized Array.init(repeating:count:)(v14, a2, a3);
      (*(v10 + 8))(v14, a3);
      v22 = a1;
      v23 = v19;
      WitnessTable = swift_getWitnessTable();
      v21 = swift_getWitnessTable();
      inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(&v22, a2, &v23, v17, v17, a3, WitnessTable, v21, WitnessTable, a4);
      return Polynomial.init(coefficients:)(v23, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t Polynomial.asConstant()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = *v2;
  v17 = *v2;
  if ((Polynomial.degree.getter(a1, v12) & 0x8000000000000000) == 0 && (v17 = v11, (result = Polynomial.degree.getter(a1, v13)) != 0))
  {
    __break(1u);
  }

  else
  {
    v17 = v11;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    v15 = *(v5 - 8);
    result = (*(v15 + 48))(v10, 1, v5);
    if (result != 1)
    {
      return (*(v15 + 32))(a2, v10, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t Polynomial.evaluate(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *v3;
  v14 = *v3;
  if (Polynomial.degree.getter(a2, a2) < 0)
  {
    v12 = *(*(a2 + 24) + 8);
    v13 = *(a2 + 16);
    return dispatch thunk of static AdditiveArithmetic.zero.getter();
  }

  else
  {
    v14 = v7;
    v8 = *(a2 + 16);
    v9 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    return evaluateUsingHorner<A, B>(_:atInput:)(&v14, a1, v9, v8, WitnessTable, *(a2 + 24), a3);
  }
}

uint64_t Polynomial.evaluate(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  v12 = *v3;
  v24 = *v3;
  if (Polynomial.degree.getter(v13, v13) < 0)
  {
    v19 = *(a2 + 24);

    return Polynomial.init()(v6, v19, a3);
  }

  else
  {
    v24 = v11;
    if (Polynomial.degree.getter(a2, v14) < 0)
    {
      Array.subscript.getter();
      return Polynomial.init(coefficient:)(v10, v6, a3);
    }

    else
    {
      v24 = v11;
      if (Polynomial.degree.getter(a2, v15) >= 60)
      {
        v23 = v11;
        v24 = v12;
        v21 = type metadata accessor for Array();
        WitnessTable = swift_getWitnessTable();
        v18 = evaluateUsingDFT<A, B, C>(_:atInput:)(&v24, &v23, v21, v21, v6, WitnessTable, WitnessTable, *(a2 + 24));
      }

      else
      {
        v23 = v11;
        v24 = v12;
        v16 = type metadata accessor for Array();
        v17 = swift_getWitnessTable();
        v18 = evaluateUsingHorner<A, B, C>(_:atInput:)(&v24, &v23, v16, v16, v6, v17, v17, *(a2 + 24));
      }

      return Polynomial.init(coefficients:)(v18, a3);
    }
  }
}

uint64_t Polynomial.evaluateUsingRootsOfUnity(count:)(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v11 = *(v10 + 24);
  v12 = *(v11 + 8);

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = specialized Array.init(repeating:count:)(v8, a1, v4);
  (*(v5 + 8))(v8, v4);
  v18 = v9;
  v19 = v13;
  v14 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  discreteFourierTransform<A, B, C>(input:size:output:)(&v18, a1, &v19, v14, v14, v4, WitnessTable, v16, WitnessTable, v11);

  return v19;
}

uint64_t static Polynomial.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v84 = &v73 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v83 = &v73 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v82 = &v73 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v73 - v21;
  v23 = *v20;
  v25 = *v24;
  v27 = v26;
  v28 = type metadata accessor for Polynomial();
  v88 = v23;
  v90 = v23;
  if ((Polynomial.degree.getter(v28, v29) & 0x8000000000000000) == 0)
  {
    v90 = v25;
    if ((Polynomial.degree.getter(v28, v30) & 0x8000000000000000) == 0)
    {
      v87 = v25;
      v32 = v88;
      v90 = v88;
      v33 = Polynomial.degree.getter(v28, v31);
      v89 = v87;
      v35 = Polynomial.degree.getter(v28, v34);
      if (v35 >= v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = v35;
      }

      v90 = v32;
      v38 = Polynomial.degree.getter(v28, v36);
      v89 = v87;
      v40 = Polynomial.degree.getter(v28, v39);
      if (v40 <= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = v40;
      }

      v79 = *(v27 + 8);
      result = dispatch thunk of static AdditiveArithmetic.zero.getter();
      v86 = v41;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
      }

      else
      {
        v43 = specialized Array.init(repeating:count:)(v22, v41 + 1, a3);
        v77 = *(v6 + 8);
        v78 = v6 + 8;
        result = v77(v22, a3);
        v90 = v43;
        if ((v37 & 0x8000000000000000) == 0)
        {
          v74 = a4;
          v75 = v27;
          v44 = 0;
          v76 = v6 + 16;
          v80 = v6 + 40;
          v81 = v37;
          while (1)
          {
            Array.subscript.getter();
            v45 = v83;
            Array.subscript.getter();
            v46 = v84;
            (*(v6 + 16))(v84, v22, a3);
            v47 = v82;
            FieldElement.init(other:)(v46, a3, v75);
            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            v48 = v45;
            v49 = v77;
            v77(v48, a3);
            v50 = v22;
            v49(v22, a3);
            v51 = type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v52 = v90;
            Array._checkSubscript_mutating(_:)(v44);
            isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
            v54 = v52 & 0xFFFFFFFFFFFFFF8;
            if ((isClassOrObjCExistentialType & 1) == 0)
            {
              v54 = v52;
            }

            v55 = (*(v6 + 80) + 32) & ~*(v6 + 80);
            v56 = *(v6 + 72);
            v22 = *(v6 + 40);
            (v22)(v54 + v55 + v56 * v44, v47, a3);
            result = destructiveProjectEnumData for SeedCtrlUnadjustedError(v51, v57, v58, v59, v60);
            if (v81 == v44)
            {
              break;
            }

            v61 = __OFADD__(v44++, 1);
            v22 = v50;
            if (v61)
            {
              __break(1u);
              break;
            }
          }

          v84 = v55;
          v62 = v81 + 1;
          if (!__OFADD__(v81, 1))
          {
            LODWORD(v83) = 0;
            while (1)
            {
              if (v62 < v86)
              {
                v63 = v62 + 1;
              }

              else
              {
                if ((v62 != v86) | v83 & 1)
                {
                  return Polynomial.init(coefficients:)(v90, v74);
                }

                LODWORD(v83) = 1;
                v63 = v86;
              }

              MEMORY[0x2743B2830](v88, a3);
              MEMORY[0x2743B2830](v87, a3);
              v64 = v85;
              Array.subscript.getter();
              Array._makeMutableAndUnique()();
              v65 = v90;
              Array._checkSubscript_mutating(_:)(v62);
              v66 = _swift_isClassOrObjCExistentialType();
              v67 = v65 & 0xFFFFFFFFFFFFFF8;
              if ((v66 & 1) == 0)
              {
                v67 = v65;
              }

              (v22)(&v84[v67 + v62 * v56], v64, a3);
              destructiveProjectEnumData for SeedCtrlUnadjustedError(v51, v68, v69, v70, v71);
              v62 = v63;
            }
          }

          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }
  }

  return Polynomial.init(coefficients:)(v72, a4);
}

uint64_t static Polynomial.+= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v6 = *a1;
  v8 = *a2;
  v9 = v6;
  a5(&v10, &v9, &v8);

  *a1 = v10;
  return result;
}

uint64_t static Polynomial.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v10;
  v15 = *v14;
  v16 = type metadata accessor for Polynomial();
  *&v61 = v13;
  if ((Polynomial.degree.getter(v16, v17) & 0x8000000000000000) == 0)
  {
    *&v61 = v15;
    if ((Polynomial.degree.getter(v16, v18) & 0x8000000000000000) == 0)
    {
      *&v61 = v13;
      v20 = Polynomial.degree.getter(v16, v19);
      *&v59 = v15;
      result = Polynomial.degree.getter(v16, v21);
      v24 = v20 + result;
      if (__OFADD__(v20, result))
      {
        __break(1u);
      }

      else
      {
        v25 = v24 + 1;
        if (!__OFADD__(v24, 1))
        {
          v53 = a5;
          *&v61 = v13;
          v26 = Polynomial.degree.getter(v16, v23);
          *&v59 = v15;
          v28 = Polynomial.degree.getter(v16, v27);
          if (v28 > v26)
          {
            v26 = v28;
          }

          v29 = a4[1];
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          if (v26 < 61)
          {
            v41 = specialized Array.init(repeating:count:)(v12, v25, a3);
            (*(v8 + 8))(v12, a3);
            v64[0] = v41;
            *&v61 = v13;
            v43 = Polynomial.degree.getter(v16, v42);
            v63 = v13;
            *&v59 = v43;
            v44 = type metadata accessor for Array();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd, "4\");
            WitnessTable = swift_getWitnessTable();
            lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>();
            MutableCollection.subscript.getter();
            v52 = v61;
            v59 = v61;
            v60 = v62;
            *&v56 = v15;
            v47 = Polynomial.degree.getter(v16, v46);
            v58 = v15;
            *&v54 = v47;
            MutableCollection.subscript.getter();
            v51 = v56;
            v54 = v56;
            v55 = v57;
            v48 = type metadata accessor for ArraySlice();
            v49 = swift_getWitnessTable();
            v50 = swift_getWitnessTable();
            convolveDirectly<A, B, C, D>(_:withKernel:result:)(&v59, &v54, v64, v48, v48, v44, a3, v49, v49, WitnessTable, v50, a4);
          }

          else
          {
            v30 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v25);
            v31 = specialized Array.init(repeating:count:)(v12, v30, a3);
            (*(v8 + 8))(v12, a3);
            v64[0] = v31;
            *&v61 = v13;
            v33 = Polynomial.degree.getter(v16, v32);
            v63 = v13;
            *&v59 = v33;
            v34 = type metadata accessor for Array();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd, "4\");
            v35 = swift_getWitnessTable();
            lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>();
            MutableCollection.subscript.getter();
            v52 = v61;
            v59 = v61;
            v60 = v62;
            *&v56 = v15;
            v37 = Polynomial.degree.getter(v16, v36);
            v58 = v15;
            *&v54 = v37;
            MutableCollection.subscript.getter();
            v51 = v56;
            v54 = v56;
            v55 = v57;
            v38 = type metadata accessor for ArraySlice();
            v39 = swift_getWitnessTable();
            v40 = swift_getWitnessTable();
            convolveUsingDFT<A, B, C, D>(_:withKernel:result:)(&v59, &v54, v64, v38, v38, v34, a3, v39, v39, v35, v40, a4);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return Polynomial.init(coefficients:)(v64[0], v53);
        }
      }

      __break(1u);
      return result;
    }
  }

  return Polynomial.init()(a3, a4, a5);
}

uint64_t static Polynomial.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v10 = *(v74 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v88 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v87 = &v70 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v86 = &v70 - v19;
  v20 = *(a3 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v18, v22);
  v85 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v84 = &v70 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v70 - v29;
  v31 = *a2;
  v32 = a4;
  v33 = *(a4 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v34 = *(v33 + 8);
  v90 = a1;
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = v20;
  v92 = *(v20 + 8);
  v93 = v20 + 8;
  v92(v30, a3);
  if (a2)
  {
    return Polynomial.init()(a3, v32, a5);
  }

  v35 = type metadata accessor for Polynomial();
  v96 = v31;
  if (Polynomial.degree.getter(v35, v36) < 0)
  {
    return Polynomial.init()(a3, v32, a5);
  }

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v96 = v31;
  result = Polynomial.degree.getter(v35, v37);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v39 = specialized Array.init(repeating:count:)(v30, result + 1, a3);
  v92(v30, a3);
  v95 = v31;
  v96 = v39;
  result = Polynomial.degree.getter(v35, v40);
  v83 = result;
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v71 = a5;
  v41 = swift_checkMetadataState();
  v42 = 0;
  v43 = *(v32 + 96);
  v81 = v32 + 96;
  v82 = v41;
  v44 = *(v32 + 88);
  v79 = v32 + 88;
  v80 = v43;
  v76 = *(AssociatedConformanceWitness + 56);
  v77 = AssociatedConformanceWitness + 56;
  v78 = v44;
  v75 = v94 + 16;
  v74 += 8;
  v73 = v94 + 40;
  v72 = v31;
  v45 = v84;
  v46 = v87;
  while (1)
  {
    Array.subscript.getter();
    v47 = v85;
    (*(v94 + 16))(v85, v90, a3);
    v48 = a3;
    v49 = a3;
    v50 = v32;
    FieldElement.init(other:)(v47, v48, v32);
    v51 = v32;
    v52 = v78;
    v78(v49, v51);
    v53 = v88;
    v52(v49, v50);
    v54 = v30;
    v55 = v86;
    v76(v46, v53);
    v56 = *v74;
    v57 = v53;
    v58 = AssociatedTypeWitness;
    (*v74)(v57, AssociatedTypeWitness);
    v56(v46, v58);
    v59 = v55;
    v30 = v54;
    a5 = v50;
    v60 = v50;
    a3 = v49;
    v80(v59, v49, v60);
    v92(v54, v49);
    v61 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v62 = v96;
    Array._checkSubscript_mutating(_:)(v42);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v64 = v62 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v64 = v62;
    }

    (*(v94 + 40))(v64 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v42, v45, v49);
    destructiveProjectEnumData for SeedCtrlUnadjustedError(v61, v65, v66, v67, v68);
    if (v83 == v42)
    {
      break;
    }

    v69 = __OFADD__(v42++, 1);
    v32 = a5;
    if (v69)
    {
      __break(1u);
      return Polynomial.init()(a3, v32, a5);
    }
  }

  return Polynomial.init(coefficients:)(v96, v71);
}

uint64_t static Polynomial.*= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  static Polynomial.* infix(_:_:)(a2, &v7, a3, a4, &v6);

  *a1 = v6;
  return result;
}

uint64_t static Polynomial.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v31 - v11;
  v13 = *v10;
  v15 = *v14;
  v34 = *v10;
  v32 = v16;
  v17 = type metadata accessor for Polynomial();
  v19 = Polynomial.degree.getter(v17, v18);
  v31 = v15;
  v33 = v15;
  if (v19 == Polynomial.degree.getter(v17, v20))
  {
    v34 = v13;
    v22 = Polynomial.degree.getter(v17, v21);
    LOBYTE(v17) = 0;
    v23 = 0;
    v24 = (v4 + 8);
    do
    {
      if (v23 < v22)
      {
        v25 = v23 + 1;
      }

      else
      {
        v29 = (v23 != v22) | v17;
        v17 = 1;
        v25 = v22;
        if (v29)
        {
          return v17;
        }
      }

      Array.subscript.getter();
      Array.subscript.getter();
      v26 = *(*(v32 + 8) + 8);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *v24;
      (*v24)(v8, a3);
      v28(v12, a3);
      v23 = v25;
    }

    while ((v27 & 1) != 0);
  }

  return 0;
}

uint64_t static Polynomial.rangeCheck(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v117 = a5;
  swift_getAssociatedTypeWitness();
  v148 = a4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v147 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v9 = *(v147 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v153 = *(AssociatedTypeWitness - 8);
  v11 = *(v153 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v136 = &v115 - v13;
  v135 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  v134 = swift_getAssociatedTypeWitness();
  v14 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134, v15);
  v133 = &v115 - v16;
  v17 = swift_checkMetadataState();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v21 = MEMORY[0x28223BE20](v17, v20);
  v158 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v157 = &v115 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v146 = &v115 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v160 = &v115 - v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v151 = *(TupleTypeMetadata2 - 8);
  v31 = *(v151 + 64);
  v33 = MEMORY[0x28223BE20](TupleTypeMetadata2, v32);
  v144 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v143 = &v115 - v36;
  v37 = *(v9 + 8);
  v38 = type metadata accessor for Range();
  v150 = *(v38 - 8);
  v39 = *(v150 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v142 = &v115 - v41;
  v137 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v162 = v9;
  v167[1] = v9;
  v167[2] = AssociatedConformanceWitness;
  v141 = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  v118 = type metadata accessor for IndexingIterator();
  v43 = *(v118 - 8);
  v44 = *(v43 + 64);
  v46 = MEMORY[0x28223BE20](v118, v45);
  v165 = &v115 - v47;
  v140 = *(a3 - 8);
  v48 = *(v140 + 64);
  v50 = MEMORY[0x28223BE20](v46, v49);
  v131 = &v115 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v130 = &v115 - v54;
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v115 - v56;
  v163 = v17;
  result = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v59 = v148[9];
  v129 = v148 + 9;
  v128 = v59;
  v59(a3);
  Polynomial.init(coefficient:)(v57, a3, v167);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v126 = v57;
    v116 = v43;
    v127 = a3;
    v139 = v37;
    v60 = v18[2];
    v61 = v143;
    v62 = v163;
    v60(v143, a1, v163);
    v63 = TupleTypeMetadata2;
    v64 = &v61[*(TupleTypeMetadata2 + 48)];
    v155 = v60;
    v156 = v18 + 2;
    v60(v64, a2, v62);
    v65 = v151;
    v66 = *(v151 + 16);
    v67 = v144;
    v125 = v151 + 16;
    v124 = v66;
    v66(v144, v61, v63);
    v159 = v38;
    v68 = *(v63 + 48);
    v149 = v18[4];
    v69 = v142;
    v149(v142, v67, v62);
    v70 = v18[1];
    v71 = &v67[v68];
    v72 = v159;
    v70(v71, v62);
    v73 = *(v65 + 32);
    v151 = v65 + 32;
    v123 = v73;
    v73(v67, v61, v63);
    v74 = &v69[*(v72 + 36)];
    v75 = &v67[*(v63 + 48)];
    v138 = v18 + 4;
    v149(v74, v75, v62);
    v164 = v18 + 1;
    v70(v67, v62);
    v76 = v70;
    v77 = v150;
    v78 = v165;
    (*(v150 + 16))(v165, v69, v72);
    v161 = *(v118 + 36);
    Range<>.startIndex.getter();
    v79 = *(v77 + 8);
    v150 = v77 + 8;
    v122 = v79;
    v79(v69, v72);
    v121 = (v153 + 8);
    v120 = v140 + 16;
    v119 = v140 + 8;
    v80 = v146;
    v81 = v160;
    v154 = v70;
    while (1)
    {
      Range<>.endIndex.getter();
      v82 = *(*(v147 + 16) + 8);
      v83 = v163;
      v84 = dispatch thunk of static Equatable.== infix(_:_:)();
      v76(v80, v83);
      if (v84)
      {
        result = (*(v116 + 8))(v78, v118);
        *v117 = v167[0];
        return result;
      }

      v85 = v161;
      v86 = v81;
      v87 = v163;
      v155(v86, &v78[v161], v163);
      v88 = v80;
      v89 = v149;
      v149(v88, &v78[v85], v87);
      Range<>.startIndex.getter();
      Range<>.endIndex.getter();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v90 = v143;
      v91 = v163;
      v89(v143, v157, v163);
      v92 = TupleTypeMetadata2;
      v89(&v90[*(TupleTypeMetadata2 + 48)], v158, v91);
      v93 = v144;
      v124(v144, v90, v92);
      v94 = *(v92 + 48);
      v95 = v142;
      v89(v142, v93, v91);
      v96 = &v93[v94];
      v97 = v154;
      v154(v96, v91);
      v98 = v97;
      v123(v93, v90, v92);
      v99 = v159;
      v89(&v95[*(v159 + 36)], &v93[*(v92 + 48)], v91);
      v98(v93, v91);
      v80 = v146;
      specialized Collection._failEarlyRangeCheck(_:bounds:)();
      v122(v95, v99);
      v100 = v137;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v101 = v136;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      dispatch thunk of Strideable.advanced(by:)();
      (*v121)(v101, v100);
      v98(v80, v91);
      v102 = v127;
      v103 = getContiguousArrayStorageType<A>(for:)(v127, v127);
      v104 = *(v103 + 48);
      v105 = *(v103 + 52);
      v106 = v140;
      v153 = *(v140 + 72);
      v107 = *(v140 + 80);
      swift_allocObject();
      v152 = static Array._adoptStorage(_:count:)();
      v108 = v148;
      v109 = v148[1];
      v110 = v126;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v155(v80, v160, v91);
      v111 = v130;
      FieldElement.init(_:)(v80, v102, v108);
      v112 = v131;
      (*(v106 + 16))(v131, v110, v102);
      FieldElement.init(other:)(v112, v102, v108);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v113 = *(v106 + 8);
      v113(v111, v102);
      v113(v110, v102);
      v76 = v154;
      v78 = v165;
      v128(v102, v108);
      v114 = v152;
      _finalizeUninitializedArray<A>(_:)();
      Polynomial.init(coefficients:)(v114, &v166);
      v168 = v166;
      v169 = v167[0];
      static Polynomial.* infix(_:_:)(&v169, &v168, v102, v108, v167);
      v81 = v160;

      v76(v81, v91);
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, "Vq");
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

unint64_t lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVySiGMd, "4\");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t type metadata instantiation function for Polynomial()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void PINE.shard<A>(_:nonce:seedBytes:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(a3 + 16);
  if (v9 != 16)
  {
    _StringGuts.grow(_:)(44);

    *&v133 = 0xD00000000000002FLL;
    *(&v133 + 1) = 0x8000000270C51F20;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v136 = v9;
LABEL_11:
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v36 = v133;
    *(v36 + 16) = 1;
    swift_willThrow();
    return;
  }

  v10 = v7;
  v125 = a3;
  v126 = a2;
  v127 = v8;
  v119 = a1;
  v13 = *(a5 + 16);
  v14 = *(a5 + 32);
  v130 = *(a5 + 40);
  v131 = v13;
  v15 = *(a5 + 56);
  v16 = a5;
  v17 = *(*(a7 + 8) + 8);
  v128 = *(a5 + 64);
  v129 = v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (v19 != PINE.randomSizeForShard.getter(v16))
  {
    _StringGuts.grow(_:)(39);

    *&v133 = 0xD00000000000002ALL;
    *(&v133 + 1) = 0x8000000270C51F50;
    PINE.randomSizeForShard.getter(v16);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v136 = dispatch thunk of Collection.count.getter();
    goto LABEL_11;
  }

  v115 = v15;
  v116 = v14;
  v114 = a6;
  v113 = a7;
  v20 = PINE.splitSeedBytes<A>(_:)(a4, v16, a6, a7);
  v118 = v21;
  v22 = *(v20 + 16);
  v23 = MEMORY[0x277D84F90];
  v129 = v20;
  v123 = v24;
  v120 = v25;
  v121 = v7;
  if (v22)
  {
    v26 = v20;
    *&v117 = v16;
    *&v133 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v27 = v23;
    v28 = (v26 + 32);
    v29 = v22;
    do
    {
      v30 = *v28;
      *&v133 = v27;
      v32 = v27[2];
      v31 = v27[3];

      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v27 = v133;
      }

      v27[2] = v32 + 1;
      v27[v32 + 4] = v30;
      v28 += 4;
      --v29;
    }

    while (v29);
    v124 = v27;
    *&v133 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v37 = v23;
    v38 = v129;
    v39 = (v129 + 40);
    v40 = v22;
    do
    {
      v41 = *v39;
      *&v133 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);

      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v37 = v133;
      }

      *(v37 + 16) = v43 + 1;
      *(v37 + 8 * v43 + 32) = v41;
      v39 += 4;
      --v40;
    }

    while (v40);
    v122 = v37;
    *&v133 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v44 = v23;
    v45 = (v38 + 48);
    v46 = v22;
    do
    {
      v47 = *v45;
      *&v133 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);

      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
        v44 = v133;
      }

      *(v44 + 16) = v49 + 1;
      *(v44 + 8 * v49 + 32) = v47;
      v45 += 4;
      --v46;
    }

    while (v46);
    *&v133 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v50 = (v129 + 56);
    do
    {
      v51 = *v50;
      *&v133 = v23;
      v53 = *(v23 + 16);
      v52 = *(v23 + 24);

      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
        v23 = v133;
      }

      *(v23 + 16) = v53 + 1;
      *(v23 + 8 * v53 + 32) = v51;
      v50 += 4;
      --v22;
    }

    while (v22);
    v10 = v121;
    v16 = v117;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v136 = Array.init()();
  v54 = *(v16 + 76);
  v133 = v131;
  v134 = v130;
  v135 = v128;
  v55 = type metadata accessor for PINEMainCircuit();
  v56 = PINEMainCircuit.encodedMeasurementLength.getter(v55);
  *(&v117 + 1) = v131;
  v57 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v56);
  WitnessTable = swift_getWitnessTable();
  PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v126, &v136, v55, WitnessTable);
  if (v127)
  {

    return;
  }

  v109 = WitnessTable;
  v112 = v57;
  v110 = v55;
  v111 = v54;
  *&v133 = v16;
  *(&v133 + 1) = *(&v117 + 1);
  v108 = swift_getWitnessTable();
  *&v134 = v108;
  v126 = v130;
  *(&v134 + 1) = v130;
  v59 = type metadata accessor for WraparoundJointRandomness();
  v60 = v10;
  v61 = v136;
  v107 = *v60;
  *&v117 = v16;
  v62 = swift_getWitnessTable();
  v63 = static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(v61, v123, v44, v124, v107, v125, v59, v62);

  v103 = v63;
  v104 = WraparoundJointRandomness.__allocating_init(parts:)(v64);
  v105 = PINECircuit.appendWraparoundCheck<A>(into:random:)(&v136, v104, v55, WitnessTable);
  v65 = v16;
  v133 = v117;
  *&v134 = v108;
  *(&v134 + 1) = v130;
  v66 = type metadata accessor for VerificationJointRandomness();
  v67 = v136;
  v127 = 0;
  v68 = swift_getWitnessTable();
  v69 = static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(v67, v120, v23, v124, v107, v125, v66, v68);
  v101 = v70;
  v71 = v69;

  v72 = v121;
  v109 = *(v121 + *(v117 + 84));
  v106 = VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(3, v109, v71);
  v102 = v71;

  static Array.+= infix(_:_:)();

  LOBYTE(v133) = 3;
  v73 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v133, v117, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_270C44550;
  v75 = *(v72 + *(v65 + 88));
  if ((v75 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v76 = v127;
  v77 = v128;
  if (v75 > 0xFF)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v74 + 32) = v75;
  if ((v109 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v109 > 0xFF)
  {
LABEL_49:
    __break(1u);
    return;
  }

  *(v74 + 33) = v109;
  v125 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v118, v73, v74, v116, v115);

  v132 = Array.init()();
  v78 = v117;
  v79 = PINE.proofLength.getter(v117);
  Array.reserveCapacity(_:)(v79);
  if (!v75)
  {
LABEL_35:
    if (!v109)
    {
      v98 = v122;
LABEL_43:
      MEMORY[0x28223BE20](v80, v81);
      v100[3] = *(&v131 + 1);
      v100[2] = *(&v117 + 1);
      v100[4] = v116;
      v100[7] = *(&v130 + 1);
      v100[5] = v114;
      v100[6] = v126;
      v100[8] = v115;
      v100[9] = v113;
      v100[10] = v128;
      v100[11] = v98;
      v100[12] = v121;
      v99 = v117;
      static VDAFProtocol.splitShare<A, B>(_:into:_:)(&v132, v107, partial apply for closure #5 in PINE.shard<A>(_:nonce:seedBytes:), v100, v117, *(&v117 + 1), v116, v108, v126, v115);

      PINE.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderWraparoundJointRandBlind:leaderVerificationJointRandBlind:helperSeeds:)(v101, v132, v123, v120, v129, v99);

      swift_unknownObjectRelease();
      PINEPublicShare.init(wraparoundJointRandParts:verificationJointRandParts:)(v103, v102, &v133);

      *v119 = v133;

      return;
    }

    v92 = 0;
    while (1)
    {
      v127 = v76;
      v118 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      v93 = VerificationJointRandomness.next()();
      v124 = swift_getWitnessTable();
      v94 = FullyLinearProof.proveRandLength.getter(v110, v124);
      v95 = static FieldElement.randomVector<A>(count:using:)(v94, v125, *(&v117 + 1));
      v96 = v136;
      v97 = swift_getWitnessTable();
      FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(&v132, v96, v95, v93, v110, v112, v124, v97);
      v76 = v127;
      if (v127)
      {
        goto LABEL_44;
      }

      ++v92;
      v98 = v122;
      if (v118 == v109)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  v82 = v75;
  v83 = v130;
  v84 = v131;
  while (1)
  {
    v127 = *(v78 + 80);
    v133 = v84;
    v134 = v83;
    v135 = v77;
    v85 = type metadata accessor for PINENormEqualityCheckCircuit();
    v86 = swift_getWitnessTable();
    v87 = FullyLinearProof.proveRandLength.getter(v85, v86);
    v88 = static FieldElement.randomVector<A>(count:using:)(v87, v125, *(&v117 + 1));
    v89 = v136;
    v90 = Array.init()();
    v91 = swift_getWitnessTable();
    FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(&v132, v89, v88, v90, v85, v112, v86, v91);
    if (v76)
    {
      break;
    }

    --v82;
    v83 = v130;
    v84 = v131;
    v78 = v117;
    v77 = v128;
    if (!v82)
    {
      goto LABEL_35;
    }
  }

LABEL_44:

  swift_unknownObjectRelease();
}

uint64_t PINE.publicShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return PINEPublicShare.init<A>(from:parameter:)(v8, *v3, 0, *(a2 + 32), a3, *(a2 + 56));
}

uint64_t PINE.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v36 = a1;
  v37 = a6;
  v38 = a4;
  v35 = *(a4 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  v21 = a3[2];
  v20 = a3[3];
  v22 = a3[4];
  v23 = a3[5];
  v24 = a3[7];
  v32 = a3[8];
  result = PINEInputShare.DecodableParameter.init<A>(vdaf:aggregatorID:)(v17, a2, v22, v24, &v39);
  if (!v6)
  {
    v26 = v38;
    v34 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v36;
    v31 = *(v35 + 16);
    v36 = 0;
    v31(v12, v30, v38);
    v39 = v34;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    return PINEInputShare.init<A>(from:parameter:)(v12, &v39, v21, v22, v26, v23, v24);
  }

  return result;
}

void PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, void *a2, uint64_t a3, Swift::Int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v173 = a4;
  v157 = a2;
  v158 = a1;
  v13 = *(a9 + 16);
  v14 = *(a9 + 64);
  v170 = *(a9 + 40);
  v171 = v13;
  v181 = v13;
  v182 = v170;
  v169 = v14;
  v183 = v14;
  v168 = type metadata accessor for PINEMainCircuit();
  v165 = *(v168 - 8);
  v15 = *(v165 + 64);
  MEMORY[0x28223BE20](v168, v16);
  v164 = v144 - v17;
  v18 = a6[1];
  v161 = *a6;
  v163 = v18;
  v19 = *a7;
  v20 = *(a7 + 8);
  *&v167 = *(a7 + 16);
  LODWORD(v166) = *(a7 + 24);
  v21 = *(a7 + 40);
  v160 = *(a7 + 32);
  v162 = v21;
  v159 = a3;
  v22 = *(a3 + 16);
  v23 = *(a9 + 32);
  *&v174 = a9;
  v24 = *(a9 + 56);
  v25 = *(v24 + 8);
  if (v22 != v25(v23, v24))
  {
    *&v181 = 0;
    *(&v181 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v181 = 0xD000000000000034;
    *(&v181 + 1) = 0x8000000270C51C00;
    v177 = v25(v23, v24);
LABEL_9:
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v42);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v177 = v22;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v43);

    v44 = v181;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v45 = v44;
    *(v45 + 16) = 1;
    swift_willThrow();
    return;
  }

  v156 = v23;
  v155 = v24;
  v22 = *(a5 + 16);
  if (v22 != 16)
  {
    *&v181 = 0;
    *(&v181 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v181 = 0xD000000000000030;
    *(&v181 + 1) = 0x8000000270C51C40;
    v177 = 16;
    goto LABEL_9;
  }

  v26 = v174;
  WitnessTable = swift_getWitnessTable();
  v28 = v173;
  v29 = v175;
  VDAFProtocol.assertValidAggregatorID(_:)(v173);
  if (v30)
  {
    return;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v172 = a5;
  if (v28 > 0xFF)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = PINE.measurementShareLength.getter(v26);
  v32 = v171;
  v33 = v20;
  v34 = WitnessTable;
  v35 = WitnessTable;
  v36 = v170;
  v152 = static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(v19, v33, v28, v31, v26, v171, v35);
  v184 = v152;
  v37 = PINE.proofLength.getter(v26);
  MEMORY[0x28223BE20](v37, v38);
  v39 = v170;
  *&v144[-10] = v171;
  v144[-8] = v156;
  *&v144[-7] = v39;
  v40 = v169;
  v144[-5] = v155;
  v141 = v40;
  v142 = v29;
  v143 = v36;
  v148 = specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(v167, v166, v41, partial apply for closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), &v144[-12], v26, v32);
  v177 = v148;
  v178 = v46;
  v179 = v47;
  v180 = v48;
  *&v181 = v26;
  *(&v181 + 1) = v32;
  *&v182 = v34;
  *(&v182 + 1) = v36;
  v49 = type metadata accessor for WraparoundJointRandomness();
  v154 = v32;
  v150 = v49;
  v153 = *(v26 + 76);
  v50 = *(v165 + 16);
  v51 = v29 + v153;
  v52 = v164;
  v53 = v168;
  v165 += 16;
  v147 = v50;
  v50(v164, v51, v168);
  v54 = &v52[*(v53 + 64)];
  *&v167 = v34;
  v55 = *(v54 + 3);
  v181 = v171;
  v182 = v170;
  v183 = v40;
  v56 = type metadata accessor for PINECircuitParameter();
  v57 = *(v56 - 8);
  v58 = *(v57 + 8);
  v146 = v56;
  v145 = v58;
  v144[3] = v57 + 8;
  (v58)(v54);
  v176 = v55;
  v59 = type metadata accessor for Array();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeUpToVySiGMd, &_ss16PartialRangeUpToVySiGMR);
  v166 = v59;
  v61 = swift_getWitnessTable();
  v62 = lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
  v144[2] = v60;
  v144[1] = v61;
  v144[0] = v62;
  MutableCollection.subscript.getter();
  v63 = v181;
  v64 = v36;
  v65 = v182;
  v66 = v150;
  v67 = swift_getWitnessTable();
  v68 = v172;
  v69 = static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(v161, v63, *(&v63 + 1), v65, *(&v65 + 1), v160, v28, v172, v66, v67);
  swift_unknownObjectRelease();
  v149 = WraparoundJointRandomness.__allocating_init(parts:)(v69);
  *&v181 = v26;
  *(&v181 + 1) = v154;
  *&v182 = v167;
  *(&v182 + 1) = v64;
  v151 = v64;
  v70 = type metadata accessor for VerificationJointRandomness();
  *&v181 = v152;

  swift_getWitnessTable();
  v71 = ArraySlice.init<A>(_:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = swift_getWitnessTable();
  v79 = v75;
  v80 = v28;
  v81 = v153;
  v82 = v168;
  v83 = static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(v163, v71, v73, v79, v77, v162, v80, v68, v70, v78);
  swift_unknownObjectRelease();
  v84 = *(v175 + *(v26 + 84));
  v85 = VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(3, v84, v83);
  v163 = swift_getWitnessTable();
  v86 = PINECircuit.truncate(measurement:)(v152, v82, v163);
  v87 = v26;
  v152 = v84;
  v150 = v85;
  OutputShare.init(_:)(v86, &v181);
  v148 = v181;
  v88 = v175;
  v89 = v164;
  v147(v164, v175 + v81, v82);
  v90 = *&v89[*(v82 + 64) + 40];
  v145();
  v176 = v90;
  MutableCollection.subscript.getter();
  PINECircuit.wraparoundDotProducts<A>(_:random:)(v181, *(&v181 + 1), v182, *(&v182 + 1), v149, v82, v163);
  swift_unknownObjectRelease();
  static Array.+= infix(_:_:)();

  LOBYTE(v181) = 4;
  v91 = specialized VDAFProtocol.domainSeparationTag(usage:)(&v181, v87, v167);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_270C44550;
  v93 = *(v88 + *(v87 + 88));
  v94 = v151;
  if ((v93 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v95 = v155;
  v96 = v152;
  if (v93 > 0xFF)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v92 + 32) = v93;
  if ((v96 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v96 > 0xFF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v92 + 33) = v96;
  *&v181 = v92;

  specialized Array.append<A>(contentsOf:)(v97);
  v160 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v159, v91, v181, v156, v95);

  v176 = Array.init()();
  v98 = PINE.verifierLength.getter(v87);
  Array.reserveCapacity(_:)(v98);
  if (!v93)
  {
LABEL_18:
    if (!v152)
    {
      v131 = v150;
LABEL_26:
      *&v181 = v148;
      v132 = v149;
      v133 = v149[3];

      v134 = VerificationJointRandomness.seed.getter();
      v135 = v173;
      PINEPrepareState.init(outputShare:wraparoundJointRandSeed:verificationJointRandSeed:aggregatorID:)(&v181, v133, v134, v173, v158);
      v136 = v132[2];
      if (*(v136 + 16) > v135)
      {
        v137 = v131[2];
        if (*(v137 + 16) > v135)
        {
          v138 = v176;
          v139 = *(v136 + 8 * v135 + 32);
          v140 = *(v137 + 8 * v135 + 32);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          PINEPrepareShare.init(verifierShare:wraparoundJointRandPart:verificationJointRandPart:)(v138, v139, v140, v157);

          return;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v116 = 0;
    v117 = v154;
    while (1)
    {
      v172 = 0;
      v165 = v116;
      v164 = (v116 + 1);
      if (__OFADD__(v116, 1))
      {
        goto LABEL_32;
      }

      *&v171 = VerificationJointRandomness.next()();
      v118 = v168;
      v119 = swift_getWitnessTable();
      v120 = v175;
      *&v170 = v119;
      v121 = FullyLinearProof.proofLength.getter(v118, v119);
      v122 = type metadata accessor for ArraySlice();
      v169 = swift_getWitnessTable();
      RandomAccessCollection<>.popFirst(_:)(v121, v122, v169);
      *&v167 = *(&v182 + 1);
      v123 = v182;
      v174 = v181;
      v124 = FullyLinearProof.queryRandLength.getter(v118, v119);
      v125 = static FieldElement.randomVector<A>(count:using:)(v124, v160, v117);
      v126 = v184;
      v181 = v174;
      *&v182 = v123;
      *(&v182 + 1) = v167;
      v127 = *v120;
      v128 = v166;
      v129 = swift_getWitnessTable();
      v130 = v172;
      FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(&v176, v126, &v181, v125, v171, v127, v118, v128, v122, v170, v129, v169);
      if (v130)
      {
        goto LABEL_29;
      }

      swift_unknownObjectRelease();

      v116 = v165 + 1;
      v117 = v154;
      v131 = v150;
      if (v164 == v152)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v172 = 0;
    v161 = v93;
    v99 = *(v87 + 80);
    v181 = v171;
    v182 = v170;
    v183 = v169;
    v100 = type metadata accessor for PINENormEqualityCheckCircuit();
    v101 = swift_getWitnessTable();
    v102 = v175;
    v164 = v99;
    v163 = v101;
    v103 = FullyLinearProof.proofLength.getter(v100, v101);
    v104 = v154;
    v105 = type metadata accessor for ArraySlice();
    v165 = v105;
    v162 = swift_getWitnessTable();
    RandomAccessCollection<>.popFirst(_:)(v103, v105, v162);
    v106 = v182;
    v167 = v181;
    v107 = FullyLinearProof.queryRandLength.getter(v100, v101);
    v108 = v94;
    v109 = static FieldElement.randomVector<A>(count:using:)(v107, v160, v104);
    v110 = v184;
    v181 = v167;
    v182 = v106;
    v111 = Array.init()();
    v112 = *v102;
    v113 = v166;
    v114 = swift_getWitnessTable();
    v115 = v172;
    FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(&v176, v110, &v181, v109, v111, v112, v100, v113, v165, v163, v114, v162);
    if (v115)
    {
      break;
    }

    swift_unknownObjectRelease();

    v93 = v161 - 1;
    v94 = v108;
    v87 = v174;
    if (v161 == 1)
    {
      goto LABEL_18;
    }
  }

LABEL_29:

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t PINE.prepareMessageFrom(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a3;
  v79 = a4;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v12[4];
  v13 = v12[5];
  v15 = v12[7];
  *&v90 = v7;
  *(&v90 + 1) = v14;
  v81 = v14;
  v89 = v13;
  v91 = v13;
  v92 = v15;
  v16 = type metadata accessor for PINEPrepareShare();
  *&v85 = a1;
  v17 = MEMORY[0x2743B2830](a1, v16);
  v88 = v4;
  v18 = *v4;
  if (v17 != *v4)
  {
    v31 = v17;
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v95 = v31;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v95 = v18;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    v34 = v90;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v35 = v34;
    *(v35 + 16) = 1;
    return swift_willThrow();
  }

  v19 = v89;
  v20 = *(v89 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v21 = PINE.verifierLength.getter(v5);
  v22 = specialized Array.init(repeating:count:)(v11, v21, v7);
  v23 = (*(v8 + 8))(v11, v7);
  WitnessTable = &v75;
  v99 = v85;
  v94 = v22;
  MEMORY[0x28223BE20](v23, v24);
  v25 = *(v5 + 24);
  *(&v75 - 8) = v7;
  *(&v75 - 7) = v25;
  v87 = v25;
  v26 = v81;
  *(&v75 - 6) = v81;
  *(&v75 - 5) = v19;
  v27 = *(v5 + 48);
  *(&v75 - 4) = v27;
  *(&v75 - 3) = v15;
  v78 = v15;
  v86 = *(v5 + 64);
  *(&v75 - 2) = v86;
  v28 = type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v29 = v83;
  result = Sequence.reduce<A>(into:_:)();
  if (!v29)
  {
    v36 = v26;
    v99 = v90;
    swift_getWitnessTable();
    v37 = ArraySlice.init<A>(_:)();
    v83 = &v75;
    v95 = v37;
    v96 = v38;
    v97 = v39;
    v98 = v40;
    *&v90 = v85;
    MEMORY[0x28223BE20](v37, v38);
    v80 = (&v75 - 10);
    v41 = v27;
    v84 = v27;
    v42 = v86;
    v43 = v87;
    *(&v75 - 8) = v7;
    *(&v75 - 7) = v43;
    v44 = v89;
    *(&v75 - 6) = v26;
    *(&v75 - 5) = v44;
    *(&v75 - 4) = v41;
    v45 = v78;
    *(&v75 - 3) = v78;
    *(&v75 - 2) = v42;
    WitnessTable = swift_getWitnessTable();
    v77 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in PINE.prepareMessageFrom(_:parameter:), v80, v28, &type metadata for Seed, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v46);
    v83 = &v75;
    *&v90 = v85;
    MEMORY[0x28223BE20](v77, v47);
    *(&v75 - 8) = v7;
    *(&v75 - 7) = v43;
    v48 = v89;
    *(&v75 - 6) = v36;
    *(&v75 - 5) = v48;
    *(&v75 - 4) = v84;
    *(&v75 - 3) = v45;
    *(&v75 - 2) = v42;
    result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in PINE.prepareMessageFrom(_:parameter:), (&v75 - 10), v28, &type metadata for Seed, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v49);
    v50 = v88;
    v51 = *(v88 + *(v5 + 88));
    if (v51 < 0)
    {
      __break(1u);
    }

    else
    {
      v76 = result;
      WitnessTable = v5;
      v83 = v7;
      if (v51)
      {
        while (1)
        {
          v52 = *(v5 + 80);
          *&v90 = v83;
          *(&v90 + 1) = v87;
          v91 = v89;
          v92 = v84;
          v93 = v86;
          v53 = type metadata accessor for PINENormEqualityCheckCircuit();
          v54 = swift_getWitnessTable();
          v55 = FullyLinearProof.verifierLength.getter(v53, v54);
          v56 = type metadata accessor for ArraySlice();
          v57 = swift_getWitnessTable();
          v58 = v55;
          v50 = v88;
          RandomAccessCollection<>.popFirst(_:)(v58, v56, v57);
          v85 = v90;
          if ((FullyLinearProof.decide<A>(verifier:)(&v90, v53, v56, v54, v57) & 1) == 0)
          {
            break;
          }

          result = swift_unknownObjectRelease();
          --v51;
          v5 = WitnessTable;
          if (!v51)
          {
            goto LABEL_9;
          }
        }

LABEL_14:

        lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
        swift_allocError();
        *v74 = 0;
        *(v74 + 8) = 0;
        *(v74 + 16) = 4;
        swift_willThrow();
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

LABEL_9:
      v59 = *(v50 + *(v5 + 84));
      if ((v59 & 0x8000000000000000) == 0)
      {
        v60 = v89;
        v62 = v86;
        v61 = v87;
        v63 = v84;
        v75 = *(v50 + *(v5 + 84));
        if (!v59)
        {
LABEL_13:
          v69 = swift_getWitnessTable();
          v70 = v83;
          *&v90 = v5;
          *(&v90 + 1) = v83;
          v91 = v69;
          v92 = v60;
          type metadata accessor for WraparoundJointRandomness();
          v71 = WraparoundJointRandomness.__allocating_init(parts:)(v77);
          *&v90 = v5;
          *(&v90 + 1) = v70;
          v91 = v69;
          v92 = v60;
          type metadata accessor for VerificationJointRandomness();
          VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(3, v75, v76);
          v72 = *(v71 + 24);

          v73 = VerificationJointRandomness.seed.getter();

          swift_unknownObjectRelease();
          return PINEPrepareMessage.init(wraparoundJointRandSeed:verificationJointRandSeed:)(v72, v73, v79);
        }

        while (1)
        {
          v80 = *(v5 + 76);
          *&v90 = v83;
          *(&v90 + 1) = v61;
          v91 = v60;
          v92 = v63;
          v93 = v62;
          v64 = type metadata accessor for PINEMainCircuit();
          v65 = swift_getWitnessTable();
          v66 = FullyLinearProof.verifierLength.getter(v64, v65);
          v67 = type metadata accessor for ArraySlice();
          v68 = swift_getWitnessTable();
          RandomAccessCollection<>.popFirst(_:)(v66, v67, v68);
          v85 = v90;
          if ((FullyLinearProof.decide<A>(verifier:)(&v90, v64, v67, v65, v68) & 1) == 0)
          {
            goto LABEL_14;
          }

          swift_unknownObjectRelease();
          --v59;
          v5 = WitnessTable;
          v60 = v89;
          v62 = v86;
          v61 = v87;
          v63 = v84;
          if (!v59)
          {
            goto LABEL_13;
          }
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PINE.prepareState<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v27[0] = a1;
  v27[1] = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 76);
  v16 = *(v14 + 64);
  v17 = *(v14 + 16);
  v28 = *(v14 + 40);
  v29 = v17;
  v30 = v17;
  v31 = v28;
  v32 = v16;
  v18 = type metadata accessor for PINEMainCircuit();
  WitnessTable = swift_getWitnessTable();
  v20 = PINECircuit.outputLength.getter(v18, WitnessTable);
  v21 = *(a3 + 32);
  v22 = *(a3 + 56);
  v23 = v29;
  v24 = v28;
  result = PINEPrepareState.DecodableParameter.init(aggregatorID:outputShareCount:)(a2, v20, v21, v22, &v33);
  if (!v6)
  {
    v29 = v33;
    v26 = v34;
    (*(v10 + 16))(v13, v27[0], a4);
    v30 = v29;
    *&v31 = v26;
    BYTE8(v31) = 0;
    return PINEPrepareState.init<A>(from:parameter:)(v13, &v30, v23, v21, a4, v24);
  }

  return result;
}

uint64_t PINE.prepareMessage<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return PINEPrepareMessage.init<A>(from:parameter:)(v11, *(a2 + 32), a3, *(a2 + 56), a4, a5);
}

uint64_t PINE.prepareNext(state:message:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  if ((specialized static Seed.== infix(_:_:)(a1[2], a2[1]) & 1) == 0)
  {
    v21 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v15 = "ize mismatched: ";
    v16 = 43;
LABEL_7:
    MEMORY[0x2743B25F0](v16 | 0xD000000000000010, v15 | 0x8000000000000000);

    v17 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);

    v18 = String.init<A>(describing:)();
    goto LABEL_8;
  }

  if ((specialized static Seed.== infix(_:_:)(v7, v8) & 1) == 0)
  {
    v21 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v15 = "),\nin message: (";
    v16 = 41;
    goto LABEL_7;
  }

  v9 = *(a3 + 16);
  v10 = MEMORY[0x2743B2830](v6, v9);
  v11 = *(a3 + 76);
  v22 = *(a3 + 24);
  v24 = *(a3 + 40);
  v25 = *(a3 + 64);
  v12 = type metadata accessor for PINEMainCircuit();
  WitnessTable = swift_getWitnessTable();
  if (v10 == PINECircuit.outputLength.getter(v12, WitnessTable))
  {
    *a4 = v6;
    *(a4 + 56) = 1;
  }

  _StringGuts.grow(_:)(49);

  v21 = 0xD000000000000033;
  v23 = 0x8000000270C51AE0;
  MEMORY[0x2743B2830](v6, v9);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v20);

  MEMORY[0x2743B25F0](0x203A746F670A2CLL, 0xE700000000000000);
  PINECircuit.outputLength.getter(v12, WitnessTable);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_8:
  MEMORY[0x2743B25F0](v18);

  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v19 = v21;
  *(v19 + 8) = v23;
  *(v19 + 16) = 1;
  return swift_willThrow();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF29OneBlockSparseInnerCorrectionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = (a2 + 41);
      v9 = (a2 + 40);
      v10 = (a1 + 40);
      v11 = (a1 + 41);
      v12 = 1;
      while (1)
      {
        v13 = *v11;
        if (v7)
        {
          if (v5 != v6)
          {
            break;
          }
        }

LABEL_11:
        result = 0;
        if (*v10 == *v9 && ((v13 ^ *v8) & 1) == 0)
        {
          if (v12 == v2)
          {
            return 1;
          }

          result = 0;
          v17 = 16 * v12++;
          v11 = (v3 + v17 + 9);
          v10 = (v3 + v17 + 8);
          v5 = *(v3 + v17);
          v9 = (v4 + v17 + 8);
          v8 = (v4 + v17 + 9);
          v6 = *(v4 + v17);
          v7 = *(v5 + 16);
          if (v7 == *(v6 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v14 = (v5 + 32);
      v15 = (v6 + 32);
      while (*v14 == *v15)
      {
        ++v14;
        ++v15;
        if (!--v7)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF16InnerCorrectionsV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    v4 = (a1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v3 - 1);
      v8 = *v3;

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v5, v7) & 1) == 0)
      {
        break;
      }

      v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(v6, v8);

      if (v9)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return v9 & 1;
    }

    goto LABEL_11;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_133:
    result = 0;
LABEL_135:
    v61 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!v2 || a1 == a2)
  {
LABEL_134:
    result = 1;
    goto LABEL_135;
  }

  v3 = (a1 + 40);
  v4 = (a2 + 40);
  while (1)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v4 - 1);
    v7 = *v4;
    v9 = *v3 >> 62;
    v10 = *v4 >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *v4 >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_139;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_138;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
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
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        goto LABEL_133;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_137;
    }

LABEL_33:
    if (v12 != v17)
    {
      goto LABEL_133;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_140;
      }

      v65 = *(v3 - 1);
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v27 = __DataStorage._bytes.getter();
      if (v27)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_142;
        }

        v27 += v33 - v34;
      }

      MEMORY[0x2743B2250]();
      if (v10 == 2)
      {
        v63 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v55 = __DataStorage._offset.getter();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_156;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_152;
        }

        v57 = MEMORY[0x2743B2250]();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v63;
        if (!v63)
        {
          goto LABEL_167;
        }

        if (!v29)
        {
          goto LABEL_166;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_151;
        }

        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_158;
          }

          v29 += v8 - v35;
        }

        v36 = MEMORY[0x2743B2250]();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_173;
        }

        if (!v29)
        {
          goto LABEL_172;
        }

LABEL_127:
        if (result == v29)
        {
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v65, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_163;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v64 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_144;
      }

      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        goto LABEL_160;
      }

      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v23 + v22);
      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_153;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_146;
      }

      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_159;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    outlined consume of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v64, v6);
    if (v47)
    {
      goto LABEL_133;
    }

LABEL_6:
    v3 += 2;
    v4 += 2;
    if (!--v2)
    {
      goto LABEL_134;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v67 = v7;
      v68 = BYTE2(v7);
      v69 = BYTE3(v7);
      v70 = BYTE4(v7);
      v71 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        goto LABEL_133;
      }

      goto LABEL_6;
    }

    v64 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_154;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_147;
      }

      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_162;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data._Representation(v8, v7);
      v43 = __DataStorage._bytes.getter();
      if (!v43)
      {
        goto LABEL_164;
      }

      v44 = v43;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_149;
      }

      v24 = (v8 - v45 + v44);
      result = MEMORY[0x2743B2250]();
      if (!v24)
      {
        goto LABEL_165;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v65 = *(v3 - 1);
  outlined copy of Data._Representation(v5, v6);
  outlined copy of Data._Representation(v8, v7);
  v27 = __DataStorage._bytes.getter();
  if (v27)
  {
    v28 = __DataStorage._offset.getter();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_141;
    }

    v27 += v26 - v28;
  }

  MEMORY[0x2743B2250]();
  if (v10 == 2)
  {
    v62 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_155;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_150;
    }

    v52 = MEMORY[0x2743B2250]();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v62;
    if (!v62)
    {
      goto LABEL_171;
    }

    if (!v29)
    {
      goto LABEL_170;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_145;
    }

    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_157;
      }

      v29 += v8 - v30;
    }

    v31 = MEMORY[0x2743B2250]();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_169;
    }

    if (!v29)
    {
      goto LABEL_168;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    outlined consume of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v65, v6);
    if (v60)
    {
      goto LABEL_133;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  MEMORY[0x2743B2250]();
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  result = MEMORY[0x2743B2250]();
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_52:
    if (a1 < 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = v4;
    }

    v6 = MEMORY[0x2743B2FD0](v26);
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2 < 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2743B2FD0](v27);
  if (v6 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v6)
  {
    return 1;
  }

  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v5)
  {
    v8 = v9;
  }

  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v10 = v11;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if (v6 < 0)
  {
    goto LABEL_62;
  }

  v12 = 0;
  v13 = a2 & 0xC000000000000001;
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2743B2D10](v12, a1);
      v5 = result;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v5 = *(a1 + 32 + 8 * v12);

      if (v13)
      {
LABEL_22:
        v15 = MEMORY[0x2743B2D10](v12, a2);
        goto LABEL_27;
      }
    }

    if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v15 = *(a2 + 32 + 8 * v12);

LABEL_27:
    v16 = *(v5 + 16);
    v17 = *(v15 + 16);
    v4 = *(v16 + 16);
    if (v4 != *(v17 + 16))
    {
      goto LABEL_48;
    }

    if (v4)
    {
      v18 = v16 == v17;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = (v16 + 32);
      v20 = (v17 + 32);
      while (v4)
      {
        if (*v19 != *v20)
        {
          goto LABEL_48;
        }

        ++v19;
        ++v20;
        if (!--v4)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_36:
    v21 = *(v5 + 24);
    v22 = *(v15 + 24);
    v4 = *(v21 + 16);
    if (v4 != *(v22 + 16))
    {
LABEL_48:

      return 0;
    }

    if (v4)
    {
      v23 = v21 == v22;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v21 + 32);
      v25 = (v22 + 32);
      while (v4)
      {
        if (*v24 != *v25)
        {
          goto LABEL_48;
        }

        ++v24;
        ++v25;
        if (!--v4)
        {
          goto LABEL_45;
        }
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_45:

    result = 1;
    v12 = v14;
    if (v14 == v6)
    {
      return result;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t PINE.measurementShareLength.getter(uint64_t a1)
{
  v2 = v1;
  v23 = *(a1 + 64);
  v4 = v23;
  v5 = *(a1 + 40);
  v19 = *(a1 + 16);
  v20 = v5;
  v21 = v19;
  v22 = v5;
  v6 = type metadata accessor for PINEMainCircuit();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v19 - v11;
  v13 = *(a1 + 76);
  v14 = PINEMainCircuit.encodedMeasurementLength.getter(v10);
  (*(v7 + 16))(v12, v2 + v13, v6);
  v15 = &v12[*(v6 + 64)];
  v21 = v19;
  v22 = v20;
  v23 = v4;
  v16 = type metadata accessor for PINECircuitParameter();
  v17 = *&v15[*(v16 + 92)];
  (*(*(v16 - 8) + 8))(v15, v16);
  result = v14 - v17;
  if (__OFSUB__(v14, v17))
  {
    __break(1u);
  }

  return result;
}

uint64_t PINE.randomSizeForShard.getter(uint64_t result)
{
  v2 = *v1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*v1 + 0x3FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = 2 * (*v1 - 1);
  v4 = __OFADD__(v3, 2 * v2);
  v5 = v3 + 2 * v2;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5 | 1;
  v7 = (*(*(result + 56) + 8))(*(result + 32));
  result = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t PINE.flp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v5 = type metadata accessor for PINEMainCircuit();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t PINE.flpNormEqualityCheck.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v5 = type metadata accessor for PINENormEqualityCheckCircuit();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t PINE.proofLength.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  v6 = *(v2 + *(a1 + 88));
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);
  v19 = *(a1 + 16);
  v18 = *(a1 + 40);
  v9 = type metadata accessor for PINENormEqualityCheckCircuit();
  WitnessTable = swift_getWitnessTable();
  result = a2(v9, WitnessTable);
  v12 = v6 * result;
  if ((v6 * result) >> 64 != (v6 * result) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = *(v4 + *(a1 + 84));
  v14 = *(a1 + 76);
  v15 = type metadata accessor for PINEMainCircuit();
  v16 = swift_getWitnessTable();
  result = a2(v15, v16);
  v17 = v13 * result;
  if ((v13 * result) >> 64 != (v13 * result) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v12 + v17;
  if (__OFADD__(v12, v17))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t PINE.init(l2NormBoundInt:fractionalBitCount:measurementLength:numOfAggregators:numOfProofs:numOfProofsNormEquality:chunkLength:chunkLengthNormEquality:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int *a16, int *a17, int *a18, uint64_t a19, int *a20)
{
  LODWORD(v88) = a7;
  v89 = a6;
  v97 = a1;
  v98 = a5;
  v94 = a2;
  v95 = a3;
  v87 = a8;
  v99 = a14;
  v100 = a15;
  v101 = a17;
  v102 = a18;
  v103 = a20;
  v83 = type metadata accessor for PINENormEqualityCheckCircuit();
  v82 = *(v83 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v83, v23);
  v85 = (&v73 - v24);
  v99 = a14;
  v100 = a15;
  v96 = a15;
  v101 = a17;
  v102 = a18;
  v92 = a18;
  v93 = a20;
  v103 = a20;
  v86 = type metadata accessor for PINEMainCircuit();
  v84 = *(v86 - 8);
  v25 = *(v84 + 64);
  MEMORY[0x28223BE20](v86, v26);
  v91 = &v73 - v27;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = &v73 - v34;
  v36 = *(*(AssociatedTypeWitness - 8) + 64);
  v38 = MEMORY[0x28223BE20](v33, v37);
  v40 = MEMORY[0x28223BE20](v38, v39);
  v42 = &v73 - v41;
  MEMORY[0x28223BE20](v40, v43);
  if ((v45 - 2) > 0xFD)
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    v55 = v45;
    _StringGuts.grow(_:)(46);

    v99 = 0xD000000000000031;
    v100 = 0x8000000270C52D00;
    v109 = 2;
    v107 = 0xE000000000000000;
    v108 = 256;
    v106 = 0;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](v106, v107);

    MEMORY[0x2743B25F0](0x20746F67202CLL, 0xE600000000000000);
    v106 = v55;
LABEL_10:
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v56);

    v57 = v99;
    v58 = v100;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v59 = v57;
    *(v59 + 8) = v58;
    *(v59 + 16) = 1;
    return swift_willThrow();
  }

  if ((a4 - 1) > 0xFE)
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v99 = 0xD00000000000003BLL;
    v100 = 0x8000000270C52D40;
LABEL_9:
    v106 = a4;
    goto LABEL_10;
  }

  v80 = a4;
  a4 = v98;
  if ((v98 - 1) > 0xFE)
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000004CLL, 0x8000000270C52D80);
    goto LABEL_9;
  }

  v79 = v30;
  v78 = v47;
  v81 = &v73 - v44;
  v77 = v45;
  v99 = v97;
  v48 = v46;
  v49 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 24);
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  dispatch thunk of Numeric.init<A>(exactly:)();
  if ((*(v48 + 48))(v35, 1, AssociatedTypeWitness) == 1)
  {
    (*(v79 + 8))(v35, v29);
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C52DD0);
    v106 = v97;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v50);

    MEMORY[0x2743B25F0](0xD000000000000035, 0x8000000270C52DF0);
    v51 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v51);

    v52 = v99;
    v53 = v100;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v54 = v52;
    *(v54 + 8) = v53;
    *(v54 + 16) = 1;
    return swift_willThrow();
  }

  v61 = v81;
  (*(v48 + 32))(v81, v35, AssociatedTypeWitness);
  v79 = *(v48 + 16);
  (v79)(v42, v61, AssociatedTypeWitness);
  *(&v71 + 1) = v92;
  *&v71 = a17;
  v62 = v90;
  v63 = v89;
  v89 = a12;
  v97 = a13;
  PINEMainCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v42, v94, v95, v63, v88 & 1, a12, a13, a14, v91, a9, v96, v71, v93);
  if (v62)
  {
    return (*(v48 + 8))(v81, AssociatedTypeWitness);
  }

  v90 = v48;
  v76 = a11;
  v88 = a10;
  v99 = a14;
  v100 = v96;
  v101 = a16;
  v102 = a17;
  v65 = v92;
  v64 = v93;
  v103 = v92;
  v104 = a19;
  v105 = v93;
  v74 = type metadata accessor for PINE();
  v66 = *(v84 + 32);
  v75 = *(v74 + 76);
  v66(v87 + v75, v91, v86);
  v67 = v78;
  (v79)(v78, v81, AssociatedTypeWitness);
  *(&v72 + 1) = v65;
  *&v72 = a17;
  v68 = v85;
  PINENormEqualityCheckCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v67, v94, v95, v88, v76 & 1, v89, v97, a14, v85, a9, v96, v72, v64);
  (*(v90 + 8))(v81, AssociatedTypeWitness);
  v69 = v74;
  v70 = v87;
  result = (*(v82 + 32))(v87 + *(v74 + 80), v68, v83);
  *v70 = v77;
  *(v70 + *(v69 + 84)) = v80;
  *(v70 + *(v69 + 88)) = v98;
  return result;
}

uint64_t PINE.init(l2NormBound:fractionalBitCount:measurementLength:numOfAggregators:numOfProofs:numOfProofsNormEquality:chunkLength:chunkLengthNormEquality:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int *a16, int *a17, uint64_t a18, uint64_t a19, int *a20)
{
  v21 = a7;
  v26 = static PINE.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(a1, a2, a14, a15, a4, a17, a18, a7, a20);
  if (!v20)
  {
    PINE.init(l2NormBoundInt:fractionalBitCount:measurementLength:numOfAggregators:numOfProofs:numOfProofsNormEquality:chunkLength:chunkLengthNormEquality:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v26, a2, a3, a4, a5, a6, v21 & 1, a8, a9, a10, a11 & 1, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v27 = *(a18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t static PINE.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a7;
  v58 = a6;
  v59 = a2;
  v63 = a4;
  v60 = a9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v66 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v11 = *(*(v66 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v16 = &v56 - v15;
  v17 = swift_checkMetadataState();
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v56 = &v56 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v56 - v27;
  v29 = v61;
  static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(a1, v59, a3, v58, v62, v60, &v56 - v27);
  if (!v29)
  {
    v59 = v16;
    v60 = v11;
    v58 = a1;
    v61 = 0;
    v30 = v56;
    (*(v57 + 16))(v56, v28, v17);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v31 = *(*(v66 + 32) + 8);
      v32 = dispatch thunk of static Comparable.< infix(_:_:)();
      v33 = *(v57 + 8);
      v33(v22, v17);
      if (v32)
      {
        v34 = v30;
LABEL_13:
        v33(v34, v17);
        v64 = 0;
        v65 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
        MEMORY[0x2743B25F0](0x6D726F4E326C203ALL, 0xEE003D646E756F42);
        v48 = *(v62 + 8);
        swift_getAssociatedTypeWitness();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C52E30);
        v49 = v64;
        v50 = v65;
        lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
        a1 = swift_allocError();
        *v51 = v49;
        *(v51 + 8) = v50;
        *(v51 + 16) = 1;
        swift_willThrow();
        v33(v28, v17);
        return a1;
      }
    }

    v35 = v57;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
LABEL_16:
      a1 = dispatch thunk of BinaryInteger._lowWord.getter();
      v54 = *(v35 + 8);
      v54(v30, v17);
      v54(v28, v17);
      return a1;
    }

    v64 = -1;
    v36 = v66;
    v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v37)
    {
      if (v38 > 64)
      {
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        v60 = v28;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v39 = *(*(v36 + 32) + 8);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)();
        v41 = *(v35 + 8);
        v42 = v22;
        v28 = v60;
        goto LABEL_11;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v52 = *(*(v36 + 32) + 8);
      v53 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*(v57 + 8))(v22, v17);
      if ((v53 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v38 >= 65)
    {
      v43 = v22;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      v44 = v28;
      v45 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v46 = *(*(v36 + 32) + 8);
      v40 = dispatch thunk of static Comparable.< infix(_:_:)();
      v41 = *(v35 + 8);
      v42 = v45;
      v28 = v44;
LABEL_11:
      v47 = v41;
      v41(v42, v17);
      if (v40)
      {
        v34 = v30;
        v33 = v47;
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_16;
  }

  return a1;
}

ValueMetadata *static PINE.identifier.getter@<X0>(char *a1@<X8>)
{
  type metadata accessor for PINEMainCircuit();
  WitnessTable = swift_getWitnessTable();
  return static PINECircuit.identifier.getter(WitnessTable, a1);
}

char *static PINE.domainSeparationTag(usage:)(unsigned __int8 *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 1;
  v12 = v2;
  static PINE.identifier.getter(&v11);
  v9 = bswap32(dword_270C4797C[v11]);
  v5 = specialized _copyCollectionToContiguousArray<A>(_:)(&v9, v10);
  specialized Array.append<A>(contentsOf:)(v5);
  LOWORD(v9) = __rev16(v1 + 1);
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(&v9, &v9 + 2);
  specialized Array.append<A>(contentsOf:)(v6);
  result = v12;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

ValueMetadata *protocol witness for static VDAFProtocol.identifier.getter in conformance PINE<A, B, C>@<X0>(char *a1@<X8>, void *a2@<X0>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[5];
  v5 = a2[6];
  v6 = a2[8];
  return static PINE.identifier.getter(a1);
}

char *protocol witness for static VDAFProtocol.domainSeparationTag(usage:) in conformance PINE<A, B, C>(unsigned __int8 *a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[5];
  v5 = a2[6];
  v6 = a2[8];
  return static PINE.domainSeparationTag(usage:)(a1);
}

uint64_t closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  LOBYTE(v24[0]) = 1;
  v22 = static PINE.domainSeparationTag(usage:)(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_270C44590;
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a8;
  v24[5] = a9;
  v24[6] = a10;
  result = type metadata accessor for PINE();
  v19 = *(a2 + *(result + 88));
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v19 > 0xFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v17 + 32) = v19;
  v20 = *(a2 + *(result + 84));
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v20 > 0xFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v17 + 33) = v20;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 <= 0xFF)
  {
    *(v17 + 34) = a3;
    v21 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, v22, v17, a6, a9);

    return v21;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t PINE.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 40);
  v14 = *(v13 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v15 = *(a3 + 76);
  v16 = *(a3 + 24);
  v26 = *(a3 + 48);
  v27 = *(a3 + 64);
  *&v17 = v7;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v26;
  v41[0] = v17;
  v41[1] = v18;
  v42 = v27;
  v19 = type metadata accessor for PINEMainCircuit();
  WitnessTable = swift_getWitnessTable();
  v21 = PINECircuit.outputLength.getter(v19, WitnessTable);
  v22 = specialized Array.init(repeating:count:)(v11, v21, v7);
  (*(v8 + 8))(v11, v7);
  AggregateShare.init(_:)(v22, v41);
  v32 = v7;
  v33 = v16;
  v23 = v29;
  v34 = *(a3 + 32);
  v35 = v28;
  v36 = v13;
  v37 = v26;
  v38 = *(a3 + 56);
  v39 = v29;
  v40 = v27;
  type metadata accessor for AggregateShare();
  v24 = *(*(*(v23 + 8) + 8) + 8);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t PINE.isValid(parameter:previousParameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  return specialized PINE.isValid(parameter:previousParameters:)(a1, a2) & 1;
}

uint64_t PINE.prepareShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = PINE.verifierLength.getter(a2);
  return PINEPrepareShare.init<A>(from:parameter:)(v11, v13, 0, *(a2 + 16), *(a2 + 32), a3, *(a2 + 40), *(a2 + 56), a5, a4);
}

uint64_t protocol witness for Aggregator.isValid(parameter:previousParameters:) in conformance PINE<A, B, C>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  return specialized PINE.isValid(parameter:previousParameters:)(a1, a2) & 1;
}

uint64_t PINE.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, void, uint64_t, void, uint64_t))
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return a5(v11, 1, *(a2 + 16), a3, *(a2 + 40), a4);
}

uint64_t protocol witness for Collector.unshard<A>(_:numOfMeasurements:parameter:) in conformance PINE<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = specialized PINE.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, a5, a3, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t PINE.splitSeedBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = *(*(*(a4 + 8) + 8) + 8);
  v18 = ArraySlice.init<A>(_:)();
  v68 = v18;
  v69 = v19;
  v70 = v20;
  v71 = v21;
  if (__OFSUB__(*v4, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (*v4 - 1 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  MEMORY[0x28223BE20](v18, v19);
  *(&v61 - 5) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(&v61 - 8) = v4;
  *(&v61 - 7) = a3;
  *(&v61 - 3) = *(a2 + 40);
  v23 = *(a2 + 56);
  v22 = *(a2 + 64);
  *(&v61 - 4) = v23;
  *(&v61 - 3) = a4;
  *(&v61 - 2) = v22;
  *(&v61 - 1) = &v68;
  v64 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AI24wraparoundJointRandBlindAI012verificationjkL0ts5NeverOTg5(partial apply for closure #1 in PINE.splitSeedBytes<A>(_:), (&v61 - 12), 0, v24);
  v25 = *(v23 + 8);
  v66 = v23 + 8;
  v67 = v23;
  v65 = v25;
  v26 = v25(v4, v23);
  v27 = v68;
  v28 = v69;
  v29 = v70;
  v30 = v71;
  v8 = specialized Collection.prefix(_:)(v26, v68, v69, v70, v71);
  v63 = v31;
  v9 = v32;
  a4 = v33;
  v15 = specialized Collection.dropFirst(_:)(v26, v27, v28, v29, v30);
  v5 = v34;
  v6 = v35;
  v7 = v36;
  v68 = v15;
  v69 = v34;
  v70 = v35;
  v71 = v36;
  if (a4)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v39 = swift_dynamicCastClass();
    if (!v39)
    {
      swift_unknownObjectRelease();
      v39 = MEMORY[0x277D84F90];
    }

    v40 = *(v39 + 16);

    if (!__OFSUB__(a4 >> 1, v9))
    {
      if (v40 != (a4 >> 1) - v9)
      {
        goto LABEL_39;
      }

      v38 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v38)
      {
        goto LABEL_13;
      }

      v38 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v63, v9, a4);
    v38 = v37;
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v63 = v38;
    v41 = v65(v4, v67);
    v9 = specialized Collection.prefix(_:)(v41, v15, v5, v6, v7);
    v62 = v42;
    v44 = v43;
    a4 = v45;
    v5 = specialized Collection.dropFirst(_:)(v41, v15, v5, v6, v7);
    v6 = v46;
    v7 = v47;
    v8 = v48;
    v68 = v5;
    v69 = v46;
    v70 = v47;
    v71 = v48;
    if ((a4 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_15:
      specialized _copyCollectionToContiguousArray<A>(_:)(v9, v62, v44, a4);
      v15 = v49;
      goto LABEL_22;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v50 = swift_dynamicCastClass();
    if (!v50)
    {
      swift_unknownObjectRelease();
      v50 = MEMORY[0x277D84F90];
    }

    v15 = *(v50 + 16);

    if (__OFSUB__(a4 >> 1, v44))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v15 != ((a4 >> 1) - v44))
    {
      swift_unknownObjectRelease_n();
      goto LABEL_15;
    }

    v15 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v15)
    {
      goto LABEL_23;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    v51 = v65(v4, v67);
    v52 = specialized Collection.prefix(_:)(v51, v5, v6, v7, v8);
    a4 = v53;
    v55 = v54;
    v9 = v56;
    v4 = specialized Collection.dropFirst(_:)(v51, v5, v6, v7, v8);
    if ((v9 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_25:
      specialized _copyCollectionToContiguousArray<A>(_:)(v52, a4, v55, v9);
      goto LABEL_32;
    }

    v6 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v57 = swift_dynamicCastClass();
    if (!v57)
    {
      swift_unknownObjectRelease();
      v57 = MEMORY[0x277D84F90];
    }

    v5 = *(v57 + 16);

    if (!__OFSUB__(v9 >> 1, v55))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease_n();
  }

  if (v5 != (v9 >> 1) - v55)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_25;
  }

  v58 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v58)
  {
    v59 = v64;
    goto LABEL_33;
  }

LABEL_32:
  v59 = v64;
  swift_unknownObjectRelease();
LABEL_33:
  swift_unknownObjectRelease();
  return v59;
}

unint64_t closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 > 0xFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(a2 + 8 * result + 32);
  LOBYTE(v24[0]) = 1;

  v17 = static PINE.domainSeparationTag(usage:)(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_270C44590;
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a8;
  v24[4] = a9;
  v24[5] = a10;
  v24[6] = a12;
  result = type metadata accessor for PINE();
  v19 = *(a3 + *(result + 88));
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v19 > 0xFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v18 + 32) = v19;
  v20 = *(a3 + *(result + 84));
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 <= 0xFF)
  {
    *(v18 + 33) = v20;
    *(v18 + 34) = v12;
    v21 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v16, v17, v18, a6, a10);

    return v21;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t PINE.inputSharesFrom(leaderMeasurementShare:leaderProofShare:leaderWraparoundJointRandBlind:leaderVerificationJointRandBlind:helperSeeds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6[4];
  v10 = a6[5];
  v12 = a6[7];
  v21[0] = a6[2];
  v21[1] = v11;
  v21[2] = v10;
  v21[3] = v12;
  type metadata accessor for PINEInputShare();
  v22 = Array.init()();
  v13 = *v6;
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(v13);
  PINEInputShare.init(measurementShare:proofShare:wraparoundJointRandBlind:verificationJointRandBlind:)(a1, 0, a2, 0, a3, a4, v21);
  v20 = v21[0];

  result = Array.append(_:)();
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 - 1 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v13 != 1)
  {
    v15 = 0;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMR);
      Array.subscript.getter();

      Array.subscript.getter();

      Array.subscript.getter();

      Array.subscript.getter();

      PINEInputShare.init(measurementShare:proofShare:wraparoundJointRandBlind:verificationJointRandBlind:)(v20, 1, v19, 1, v18, v17, v21);
      v20 = v21[0];
      Array.append(_:)();
      ++v15;
    }

    while (v13 - 1 != v15);
  }

  return v22;
}

uint64_t closure #1 in PINE.splitSeedBytes<A>(_:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X4>, uint64_t *a3@<X8>, uint64_t a4)
{
  v75 = *(a4 + 8);
  v5 = (v75)(a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = specialized Collection.prefix(_:)(v5, *a1, v7, v8, v9);
  v72 = v11;
  v13 = v12;
  v15 = v14;
  *a1 = specialized Collection.dropFirst(_:)(v5, v6, v7, v8, v9);
  a1[1] = v16;
  a1[2] = v17;
  a1[3] = v18;
  if (v15)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (__OFSUB__(v15 >> 1, v13))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v22 != (v15 >> 1) - v13)
    {
      goto LABEL_45;
    }

    v20 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v20)
    {
      goto LABEL_11;
    }

    v20 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v10, v72, v13, v15);
    v20 = v19;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v72 = v20;
    v23 = (v75)(a2);
    v24 = *a1;
    v25 = a1[1];
    v10 = a1[2];
    v15 = a1[3];
    v26 = specialized Collection.prefix(_:)(v23, *a1, v25, v10, v15);
    v71 = v27;
    v13 = v28;
    v30 = v29;
    *a1 = specialized Collection.dropFirst(_:)(v23, v24, v25, v10, v15);
    a1[1] = v31;
    a1[2] = v32;
    a1[3] = v33;
    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_13;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);

    if (!__OFSUB__(v30 >> 1, v13))
    {
      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_unknownObjectRelease_n();
  }

  if (v37 == (v30 >> 1) - v13)
  {
    v35 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v35)
    {
      v35 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  while (1)
  {
    swift_unknownObjectRelease_n();
LABEL_13:
    specialized _copyCollectionToContiguousArray<A>(_:)(v26, v71, v13, v30);
    v35 = v34;
LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    v71 = v35;
    v38 = v75();
    v10 = *a1;
    v39 = a1[1];
    v40 = a1[2];
    v41 = a1[3];
    v15 = specialized Collection.prefix(_:)(v38, *a1, v39, v40, v41);
    v69 = v42;
    v13 = v43;
    v45 = v44;
    *a1 = specialized Collection.dropFirst(_:)(v38, v10, v39, v40, v41);
    a1[1] = v46;
    a1[2] = v47;
    a1[3] = v48;
    if ((v45 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_23:
      specialized _copyCollectionToContiguousArray<A>(_:)(v15, v69, v13, v45);
      v50 = v49;
      goto LABEL_30;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v51 = swift_dynamicCastClass();
    if (!v51)
    {
      swift_unknownObjectRelease();
      v51 = MEMORY[0x277D84F90];
    }

    v52 = *(v51 + 16);

    if (__OFSUB__(v45 >> 1, v13))
    {
      goto LABEL_44;
    }

    if (v52 != (v45 >> 1) - v13)
    {
      swift_unknownObjectRelease_n();
      goto LABEL_23;
    }

    v50 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v50)
    {
      goto LABEL_31;
    }

    v50 = MEMORY[0x277D84F90];
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    v70 = v50;
    v53 = v75();
    v54 = *a1;
    v55 = a1[1];
    v56 = a1[2];
    v26 = a1[3];
    v13 = specialized Collection.prefix(_:)(v53, *a1, v55, v56, v26);
    v76 = v57;
    v59 = v58;
    v61 = v60;
    *a1 = specialized Collection.dropFirst(_:)(v53, v54, v55, v56, v26);
    a1[1] = v62;
    a1[2] = v63;
    a1[3] = v64;
    if ((v61 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_33:
      specialized _copyCollectionToContiguousArray<A>(_:)(v13, v76, v59, v61);
      v66 = v65;
      goto LABEL_40;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v67 = swift_dynamicCastClass();
    if (!v67)
    {
      swift_unknownObjectRelease();
      v67 = MEMORY[0x277D84F90];
    }

    v30 = *(v67 + 16);

    if (!__OFSUB__(v61 >> 1, v59))
    {
      break;
    }

    __break(1u);
  }

  if (v30 != (v61 >> 1) - v59)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_33;
  }

  v66 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (v66)
  {
    goto LABEL_41;
  }

  v66 = MEMORY[0x277D84F90];
LABEL_40:
  result = swift_unknownObjectRelease();
LABEL_41:
  *a3 = v72;
  a3[1] = v71;
  a3[2] = v70;
  a3[3] = v66;
  return result;
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  v19 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    v14 = type metadata accessor for Array();
    destructiveProjectEnumData for SeedCtrlUnadjustedError(v14, v15, v16, v17, v18);
    return v19;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss16PartialRangeUpToVySiGMd, &_ss16PartialRangeUpToVySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in PINE.prepareMessageFrom(_:parameter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  v5 = *a2;
  v6 = type metadata accessor for Array();
  return Array<A>.elementwiseAdd(_:)(v5, v6, v4);
}

uint64_t specialized PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a6;
  v13 = *(a4 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v19;
  v46 = v18;
  v44 = *(*(v19 + 8) + 8);
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v40 = a2;
    v21 = *(a4 + 40);
    v22 = *(v21 + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v23 = *(a4 + 76);
    v43 = a8;
    v24 = *(a4 + 24);
    v42 = a1;
    v25 = *(a4 + 48);
    v41 = *(a4 + 64);
    v48 = v13;
    v49 = v24;
    v50 = v21;
    v51 = v25;
    v52 = v41;
    v26 = type metadata accessor for PINEMainCircuit();
    WitnessTable = swift_getWitnessTable();
    v38 = v26;
    v39 = v23;
    v37 = WitnessTable;
    v28 = PINECircuit.outputLength.getter(v26, WitnessTable);
    v29 = specialized Array.init(repeating:count:)(v17, v28, v13);
    (*(v14 + 8))(v17, v13);
    v30 = AggregateShare.init(_:)(v29, &v53);
    MEMORY[0x28223BE20](v30, v31);
    *(&v37 - 12) = v13;
    *(&v37 - 11) = v24;
    v32 = v43;
    v33 = v46;
    v34 = v47;
    *(&v37 - 10) = *(a4 + 32);
    *(&v37 - 9) = v33;
    *(&v37 - 8) = v34;
    *(&v37 - 7) = v21;
    v35 = *(a4 + 56);
    *(&v37 - 6) = v25;
    *(&v37 - 5) = v35;
    *(&v37 - 4) = v45;
    *(&v37 - 3) = v32;
    *(&v37 - 2) = v41;
    type metadata accessor for AggregateShare();
    v36 = *(v44 + 8);
    result = Sequence.reduce<A>(into:_:)();
    if (!v8)
    {
      specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(v48, v40, v38, v34, v37, v32);
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in PINE.aggregate<A>(_:parameter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 48);
  v7 = *a2;
  v5 = type metadata accessor for AggregateShare();
  return AggregateShare.accumulate(_:)(&v7, v5);
}

uint64_t specialized PINE.isValid(parameter:previousParameters:)(uint64_t a1, uint64_t a2)
{
  v3 = lazy protocol witness table accessor for type VoidCodable and conformance VoidCodable();

  return MEMORY[0x2821FC600](a2, &type metadata for VoidCodable, v3);
}

uint64_t specialized PINE.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v41 = a5;
  v42 = a4;
  v6 = *(*(a3 + 48) + 8);
  v39 = *(a3 + 48);
  v7 = v39;
  v38 = *(a3 + 24);
  v8 = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = &v37 - v13;
  v15 = *(a3 + 64);
  v16 = *(*(*(*(v15 + 16) + 16) + 8) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v17 = *(a3 + 76);
  v18 = *(a3 + 16);
  v40 = *(a3 + 40);
  *&v19 = v18;
  *(&v19 + 1) = v8;
  *&v20 = v40;
  *(&v20 + 1) = v7;
  v46 = v20;
  v45 = v19;
  v47 = v15;
  v21 = type metadata accessor for PINEMainCircuit();
  WitnessTable = swift_getWitnessTable();
  v23 = PINECircuit.outputLength.getter(v21, WitnessTable);
  v24 = specialized Array.init(repeating:count:)(v14, v23, AssociatedTypeWitness);
  (*(v10 + 8))(v14, AssociatedTypeWitness);
  v48 = v24;
  v25 = *(a3 + 32);
  v26 = type metadata accessor for Array();
  v27 = *(a3 + 56);
  v28 = swift_getWitnessTable();
  v36 = v15;
  v29 = v41;
  v30 = v25;
  v31 = v42;
  default argument 3 of PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)(v18, v38, v30, v42, v26, v40, v39, v27, v41, v28, v36);
  v32 = v44;
  specialized PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)(v43, &v48, v33, a3, v31, v26, v29, v28);
  v34 = v48;
  if (v32)
  {
  }

  return v34;
}

uint64_t type metadata completion function for PINE(uint64_t a1)
{
  v1 = *(a1 + 64);
  v6 = *(a1 + 16);
  v5 = *(a1 + 40);
  result = type metadata accessor for PINEMainCircuit();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for PINENormEqualityCheckCircuit();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PINE(_DWORD *a1, unsigned int a2, uint64_t a3)
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
  v10 = v6 + 8;
  v7 = *(*(*(a3 + 16) - 8) + 64);
  v11 = v7 - ((-57 - v6) | v6 | 7) - ((-9 - v6 - ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v6) - 2;
  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v12 = ((((v11 + (((v10 | v9) + v11) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_28:
    v21 = ~v9;
    v22 = (a1 + v9 + 8) & ~v9;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v10 + ((((((((((((((v6 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & v21) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v6);
    }

    v23 = *(((((v22 + v9 + v11) & v21) + 15) & 0xFFFFFFFFFFFFFFF8) + 0x20);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for PINE(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = v8 | 7;
  v10 = *(*(*(a4 + 16) - 8) + 64) - ((-57 - v8) | v8 | 7) - ((-9 - v8 - ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v8) - 2;
  v11 = ((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v15 = 0;
    v16 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = a3 - v7;
    if (((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        v20 = ~v9;
        v21 = &a1[v9 + 8] & ~v9;
        if (v6 < 0x7FFFFFFF)
        {
          v25 = (((v21 + v9 + v10) & v20) + 15) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v25 + 40) = 0;
            *(v25 + 24) = 0u;
            *(v25 + 8) = 0u;
            *v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v25 + 32) = a2 - 1;
          }
        }

        else if (v6 >= a2)
        {
          v26 = *(v5 + 56);

          v26((v8 + 8 + ((((((((((((((v8 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & v20) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v8);
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
            v23 = v22 & (~v6 + a2);
            if (v10 <= 3)
            {
              v24 = v10;
            }

            else
            {
              v24 = 4;
            }

            bzero((&a1[v9 + 8] & ~v9), v10);
            if (v24 > 2)
            {
              if (v24 == 3)
              {
                *v21 = v23;
                *(v21 + 2) = BYTE2(v23);
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

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((v10 + ((((v8 + 8) | v8 | 7) + v10) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v7 + a2;
    v19 = a1;
    bzero(a1, v11);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *&a1[v11] = v17;
    }

    else
    {
      *&a1[v11] = v17;
    }
  }

  else if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t partial apply for closure #1 in PINE.unshard<A, B>(_:numOfMeasurements:into:parameter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 56);
  v6 = *a2;
  return static AggregateShare.+= infix(_:_:)(a1, &v6, v3, v4);
}

uint64_t partial apply for closure #1 in PINE.splitSeedBytes<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 80);
  return closure #1 in PINE.splitSeedBytes<A>(_:)(*(v1 + 88), *(v1 + 32), a1, *(v1 + 64));
}

uint64_t PINEPrepareMessage.init(wraparoundJointRandSeed:verificationJointRandSeed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PINEPrepareMessage.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v74 = a6;
  v7 = a3;
  v9 = a1;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a4);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15;
  v75 = *(v14 + 8);
  v76 = v14;
  v17 = v75(v15);
  if (v17 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = 2 * v17;
  v20 = *(*(a5 + 8) + 8);
  if (dispatch thunk of Collection.count.getter() != 2 * v17)
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v40 = v10;
    type metadata accessor for PINEPrepareMessage();
    v41 = _typeName(_:qualified:)();
    v43 = v42;

    v77 = v41;
    v78 = v43;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v79 = v19;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v44);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v79 = dispatch thunk of Collection.count.getter();
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v45);

    v46 = v77;
    v47 = v78;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v48 = v46;
    v48[1] = v47;
    swift_willThrow();
    return (*(v40 + 8))(v9, v7);
  }

  v68 = v10;
  v21 = *(v10 + 16);
  v71 = v9;
  v21(v13, v9, v7);
  v22 = *(v20 + 8);
  v72 = v7;
  v23 = ArraySlice.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = (v75)(a2, v76);
  v16 = specialized Collection.prefix(_:)(v30, v23, v25, v27, v29);
  v67 = v31;
  v73 = v32;
  v13 = v33;
  v9 = specialized Collection.dropFirst(_:)(v30, v23, v25, v27, v29);
  v69 = v35;
  v70 = v34;
  v7 = v36;
  if (v13)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v50 = swift_dynamicCastClass();
    if (!v50)
    {
      swift_unknownObjectRelease();
      v50 = MEMORY[0x277D84F90];
    }

    v51 = *(v50 + 16);

    v18 = v73;
    if (!__OFSUB__(v13 >> 1, v73))
    {
      if (v51 != (v13 >> 1) - v73)
      {
        goto LABEL_29;
      }

      v39 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v39)
      {
        goto LABEL_14;
      }

      v39 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  for (i = v73; ; i = v65)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v16, v67, i, v13);
    v39 = v38;
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    v52 = (v75)(a2, v76);
    v13 = v69;
    v53 = v70;
    v16 = specialized Collection.prefix(_:)(v52, v9, v70, v7, v69);
    v76 = v54;
    v56 = v55;
    a2 = v57;
    specialized Collection.dropFirst(_:)(v52, v9, v53, v7, v13);
    if ((a2 & 1) == 0)
    {
      swift_unknownObjectRetain();
      v9 = v71;
      v7 = v72;
      v58 = v68;
LABEL_16:
      specialized _copyCollectionToContiguousArray<A>(_:)(v16, v76, v56, a2);
      v60 = v59;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v58 + 8))(v9, v7);
      goto LABEL_24;
    }

    v75 = v39;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v61 = swift_dynamicCastClass();
    v7 = v72;
    if (!v61)
    {
      swift_unknownObjectRelease();
      v61 = MEMORY[0x277D84F90];
    }

    v62 = *(v61 + 16);

    v9 = v71;
    if (!__OFSUB__(a2 >> 1, v56))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v65 = v18;
    swift_unknownObjectRelease_n();
  }

  if (v62 != (a2 >> 1) - v56)
  {
    swift_unknownObjectRelease_n();
    v58 = v68;
    v39 = v75;
    goto LABEL_16;
  }

  v60 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v63 = v68;
  if (!v60)
  {
    swift_unknownObjectRelease();
    v60 = MEMORY[0x277D84F90];
  }

  (*(v63 + 8))(v9, v7);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v39 = v75;
LABEL_24:
  v64 = v74;
  *v74 = v39;
  v64[1] = v60;
  return result;
}

uint64_t static PINEPrepareMessage.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return specialized static Seed.== infix(_:_:)(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return specialized static Seed.== infix(_:_:)(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t PINEPrepareMessage.encodedLength.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(v0[1] + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareMessage.encode<A>(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  Seed.encode<A>(into:)();

  return Seed.encode<A>(into:)();
}

uint64_t type metadata instantiation function for PINEPrepareMessage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v6;
  result = v34;
  v32 = a1;
  v33 = a2;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v7;
    v12 = v4;
    v13 = v5;
    v14 = v4;
    v15 = v5;
    while (v12)
    {
      if (!v13)
      {
        goto LABEL_23;
      }

      v16 = *v9;
      v17 = *v10;
      v35 = result;
      v19 = *(result + 16);
      v18 = *(result + 24);
      if (v19 >= v18 >> 1)
      {
        v28 = v7;
        v30 = v14;
        v27 = v15;
        v26 = *v9;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v16 = v26;
        v15 = v27;
        v7 = v28;
        v14 = v30;
        result = v35;
      }

      *(result + 16) = v19 + 1;
      --v13;
      *(result + v19 + 32) = v17 ^ v16;
      --v12;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v4;
  v15 = v5;
LABEL_13:
  if (v14 > v15)
  {
    while (v7 < v14)
    {
      v20 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

      if (v15 != v7)
      {
        if (v7 >= v15)
        {
          goto LABEL_26;
        }

        v21 = *(v32 + 32 + v7);
        v22 = *(v33 + 32 + v7);
        v36 = result;
        v24 = *(result + 16);
        v23 = *(result + 24);
        if (v24 >= v23 >> 1)
        {
          v29 = v7;
          v31 = v14;
          v25 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v7 = v29;
          v14 = v31;
          v15 = v25;
          result = v36;
        }

        *(result + 16) = v24 + 1;
        *(result + v24 + 32) = v22 ^ v21;
        ++v7;
        if (v20 != v14)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v32 = a5 & 1;
    if ((a7 | a6) < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = a6 * a7;
      if ((a6 * a7) >> 64 == (a6 * a7) >> 63)
      {
        v16 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v15 != v16)
          {
            _StringGuts.grow(_:)(36);

            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v20 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v20);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v31[4] = v16;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v21);

            v8 = 0xD000000000000020;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v22 = 0xD000000000000020;
            v22[1] = 0x8000000270C531B0;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v30 = a2;
          v9 = a3;
          v10 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x277D84F90];
          }

          v25 = *(v24 + 16);

          if (v25 == v15)
          {
            v18 = swift_dynamicCastClass();
            v26 = swift_unknownObjectRelease();
            if (v18)
            {
LABEL_18:
              v28 = (2 * *(v18 + 16)) | 1;
              v31[0] = v18;
              v31[1] = v18 + 32;
              v31[2] = 0;
              v31[3] = v28;
              MEMORY[0x28223BE20](v26, v27);
              v29[2] = v31;
              v29[3] = a7;
              v29[4] = &v32;
              v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field40VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v29, 0, a6);
              swift_unknownObjectRelease();
              return v8;
            }

            v18 = MEMORY[0x277D84F90];
LABEL_17:
            v26 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v10;
          a3 = v9;
          a2 = v30;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v18 = v17;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0;
LABEL_10:
  swift_willThrow();
  return v8;
}

_BYTE *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_SWTt1g5(_BYTE *result, _BYTE *a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_11:
    swift_willThrow();
    return v6;
  }

  v21 = a3 & 1;
  if ((a5 | a4) < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (result)
      {
        v11 = a2 - result;
        if (v10 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v10)
        {
LABEL_13:
          v16 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v17 = v16[2];
          v20[0] = v16;
          v20[1] = v16 + 4;
          v20[2] = 0;
          v20[3] = (2 * v17) | 1;
          MEMORY[0x28223BE20](v16, v18);
          v19[2] = v20;
          v19[3] = a5;
          v19[4] = &v21;
          v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field40VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v19, 0, a4);
          swift_unknownObjectRelease();
          return v6;
        }

        v11 = 0;
      }

      _StringGuts.grow(_:)(36);

      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v20[4] = v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      v6 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v15 = 0xD000000000000020;
      v15[1] = 0x8000000270C531B0;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA8BitMasksC_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a5[4])
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
LABEL_10:
    swift_willThrow();
    return v5;
  }

  v11 = a5[2];
  v12 = a5[3];
  v13 = *(a5 + 8);
  v32 = *a5;
  v33 = v13 & 1;
  if ((v12 | v11) < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 != v15)
  {
    _StringGuts.grow(_:)(36);

    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v34 = v15;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    v5 = 0xD000000000000021;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v21 = 0xD000000000000021;
    v21[1] = 0x8000000270C52FC0;
    goto LABEL_10;
  }

  v5 = v6;
  if ((a4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = a2;
  v7 = a3;
  v8 = a4;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (v24 != v14)
  {
LABEL_24:
    swift_unknownObjectRelease();
    a4 = v8;
    a3 = v7;
    a2 = v30;
LABEL_8:
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
    v17 = v16;
LABEL_17:
    v25 = swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v17 = swift_dynamicCastClass();
  v25 = swift_unknownObjectRelease();
  if (!v17)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

LABEL_18:
  v27 = (2 * *(v17 + 16)) | 1;
  v31[0] = v17;
  v31[1] = v17 + 32;
  v31[2] = 0;
  v31[3] = v27;
  MEMORY[0x28223BE20](v25, v26);
  v29[2] = v31;
  v29[3] = v12;
  v29[4] = &v32;
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF8BitMasksCsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v29, 0, v11);
  if (!v5)
  {
    v5 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC4VDAF8BitMasksC_SayAFGTt0g5(v28);
  }

  swift_unknownObjectRelease();
  return v5;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA16InnerCorrectionsV_s10ArraySliceVyANGTt1B5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  if ((*(a5 + 40) & 1) == 0)
  {
    v10 = *(a5 + 3);
    v11 = *(a5 + 4);
    v12 = *(a5 + 16);
    v30 = *a5;
    v31 = v12 & 1;
    if ((v11 | v10) < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = v10 * v11;
      if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
      {
        v14 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v13 != v14)
          {
            _StringGuts.grow(_:)(36);

            v17 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v17);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v18 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v18);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v32 = v14;
            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            v5 = 0xD000000000000029;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v20 = 0xD000000000000029;
            v20[1] = 0x8000000270C52FF0;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v28 = a2;
          v6 = a3;
          v7 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v22 = swift_dynamicCastClass();
          if (!v22)
          {
            swift_unknownObjectRelease();
            v22 = MEMORY[0x277D84F90];
          }

          v23 = *(v22 + 16);

          if (v23 == v13)
          {
            v16 = swift_dynamicCastClass();
            v24 = swift_unknownObjectRelease();
            if (v16)
            {
LABEL_18:
              v26 = (2 * *(v16 + 16)) | 1;
              v29[0] = v16;
              v29[1] = v16 + 32;
              v29[2] = 0;
              v29[3] = v26;
              MEMORY[0x28223BE20](v24, v25);
              v27[2] = v29;
              v27[3] = v11;
              v27[4] = &v30;
              v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF16InnerCorrectionsVsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v27, 0, v10);
              swift_unknownObjectRelease();
              return v5;
            }

            v16 = MEMORY[0x277D84F90];
LABEL_17:
            v24 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v7;
          a3 = v6;
          a2 = v28;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v16 = v15;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
LABEL_10:
  swift_willThrow();
  return v5;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA29OneBlockSparseInnerCorrectionV_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if ((a5[4] & 1) == 0)
  {
    v10 = a5[2];
    v11 = a5[3];
    v12 = *(a5 + 8);
    v30 = *a5;
    v31 = v12 & 1;
    if ((v11 | v10) < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = v10 * v11;
      if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
      {
        v14 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v13 != v14)
          {
            _StringGuts.grow(_:)(36);

            v17 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v17);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v18 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v18);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v32 = v14;
            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            v5 = 0xD000000000000036;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v20 = 0xD000000000000036;
            v20[1] = 0x8000000270C53130;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v28 = a2;
          v6 = a3;
          v7 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v22 = swift_dynamicCastClass();
          if (!v22)
          {
            swift_unknownObjectRelease();
            v22 = MEMORY[0x277D84F90];
          }

          v23 = *(v22 + 16);

          if (v23 == v13)
          {
            v16 = swift_dynamicCastClass();
            v24 = swift_unknownObjectRelease();
            if (v16)
            {
LABEL_18:
              v26 = (2 * *(v16 + 16)) | 1;
              v29[0] = v16;
              v29[1] = v16 + 32;
              v29[2] = 0;
              v29[3] = v26;
              MEMORY[0x28223BE20](v24, v25);
              v27[2] = v29;
              v27[3] = v11;
              v27[4] = &v30;
              v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF29OneBlockSparseInnerCorrectionVsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v27, 0, v10);
              swift_unknownObjectRelease();
              return v5;
            }

            v16 = MEMORY[0x277D84F90];
LABEL_17:
            v24 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v7;
          a3 = v6;
          a2 = v28;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v16 = v15;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
LABEL_10:
  swift_willThrow();
  return v5;
}

void *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA22SiblingLeafCorrectionsVyAA7Field32VG_SayANGTt1g5(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    goto LABEL_8;
  }

  v17 = a2 & 1;
  if ((a4 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3 * a4;
    if ((a3 * a4) >> 64 == (a3 * a4) >> 63)
    {
      v9 = result[2];
      if (v8 == v9)
      {
        v16[0] = result;
        v16[1] = result + 4;
        v16[2] = 0;
        v16[3] = (2 * v8) | 1;
        MEMORY[0x28223BE20](result, a2);
        v15[2] = v16;
        v15[3] = v10;
        v15[4] = &v17;
        v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF22SiblingLeafCorrectionsVyAG7Field32VGsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v15, 0, a3);
        swift_unknownObjectRelease();
        return v5;
      }

      _StringGuts.grow(_:)(36);

      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v11);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v16[4] = v9;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      v5 = 0xD000000000000038;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v14 = 0xD000000000000038;
      v14[1] = 0x8000000270C53170;
LABEL_8:
      swift_willThrow();
      return v5;
    }
  }

  __break(1u);
  return result;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v32 = a5 & 1;
    if ((a7 | a6) < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = a6 * a7;
      if ((a6 * a7) >> 64 == (a6 * a7) >> 63)
      {
        v16 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v15 != v16)
          {
            _StringGuts.grow(_:)(36);

            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v20 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v20);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v31[4] = v16;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v21);

            v8 = 0xD000000000000020;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v22 = 0xD000000000000020;
            v22[1] = 0x8000000270C530E0;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v30 = a2;
          v9 = a3;
          v10 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x277D84F90];
          }

          v25 = *(v24 + 16);

          if (v25 == v15)
          {
            v18 = swift_dynamicCastClass();
            v26 = swift_unknownObjectRelease();
            if (v18)
            {
LABEL_18:
              v28 = (2 * *(v18 + 16)) | 1;
              v31[0] = v18;
              v31[1] = v18 + 32;
              v31[2] = 0;
              v31[3] = v28;
              MEMORY[0x28223BE20](v26, v27);
              v29[2] = v31;
              v29[3] = a7;
              v29[4] = &v32;
              v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v29, 0, a6);
              swift_unknownObjectRelease();
              return v8;
            }

            v18 = MEMORY[0x277D84F90];
LABEL_17:
            v26 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v10;
          a3 = v9;
          a2 = v30;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v18 = v17;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0;
LABEL_10:
  swift_willThrow();
  return v8;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt1g5(char *result, _BYTE *a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_11:
    swift_willThrow();
    return v6;
  }

  v21 = a3 & 1;
  if ((a5 | a4) < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (result)
      {
        v11 = a2 - result;
        if (v10 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v10)
        {
LABEL_13:
          v16 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v17 = v16[2];
          v20[0] = v16;
          v20[1] = v16 + 4;
          v20[2] = 0;
          v20[3] = (2 * v17) | 1;
          MEMORY[0x28223BE20](v16, v18);
          v19[2] = v20;
          v19[3] = a5;
          v19[4] = &v21;
          v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v19, 0, a4);
          swift_unknownObjectRelease();
          return v6;
        }

        v11 = 0;
      }

      _StringGuts.grow(_:)(36);

      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v20[4] = v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      v6 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v15 = 0xD000000000000020;
      v15[1] = 0x8000000270C530E0;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyANGTt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v32 = a5 & 1;
    if ((a7 | a6) < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = a6 * a7;
      if ((a6 * a7) >> 64 == (a6 * a7) >> 63)
      {
        v16 = (a4 >> 1) - a3;
        if (!__OFSUB__(a4 >> 1, a3))
        {
          if (v15 != v16)
          {
            _StringGuts.grow(_:)(36);

            v19 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v19);

            MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
            v20 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v20);

            MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
            swift_unknownObjectRelease();
            v31[4] = v16;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v21);

            v8 = 0xD000000000000020;
            lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
            swift_allocError();
            *v22 = 0xD000000000000020;
            v22[1] = 0x8000000270C53050;
            goto LABEL_10;
          }

          if ((a4 & 1) == 0)
          {
            goto LABEL_8;
          }

          v30 = a2;
          v9 = a3;
          v10 = a4;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x277D84F90];
          }

          v25 = *(v24 + 16);

          if (v25 == v15)
          {
            v18 = swift_dynamicCastClass();
            v26 = swift_unknownObjectRelease();
            if (v18)
            {
LABEL_18:
              v28 = (2 * *(v18 + 16)) | 1;
              v31[0] = v18;
              v31[1] = v18 + 32;
              v31[2] = 0;
              v31[3] = v28;
              MEMORY[0x28223BE20](v26, v27);
              v29[2] = v31;
              v29[3] = a7;
              v29[4] = &v32;
              v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field64VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v29, 0, a6);
              swift_unknownObjectRelease();
              return v8;
            }

            v18 = MEMORY[0x277D84F90];
LABEL_17:
            v26 = swift_unknownObjectRelease();
            goto LABEL_18;
          }

LABEL_22:
          swift_unknownObjectRelease();
          a4 = v10;
          a3 = v9;
          a2 = v30;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v18 = v17;
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0;
LABEL_10:
  swift_willThrow();
  return v8;
}

_BYTE *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_SWTt1g5(_BYTE *result, _BYTE *a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_11:
    swift_willThrow();
    return v6;
  }

  v21 = a3 & 1;
  if ((a5 | a4) < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (result)
      {
        v11 = a2 - result;
        if (v10 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v10)
        {
LABEL_13:
          v16 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v17 = v16[2];
          v20[0] = v16;
          v20[1] = v16 + 4;
          v20[2] = 0;
          v20[3] = (2 * v17) | 1;
          MEMORY[0x28223BE20](v16, v18);
          v19[2] = v20;
          v19[3] = a5;
          v19[4] = &v21;
          v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field64VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v19, 0, a4);
          swift_unknownObjectRelease();
          return v6;
        }

        v11 = 0;
      }

      _StringGuts.grow(_:)(36);

      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v20[4] = v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      v6 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v15 = 0xD000000000000020;
      v15[1] = 0x8000000270C53050;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

_BYTE *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA25OneBlockSparsePublicShareVyAA7Field32VG_SWTt1B5(_BYTE *result, _BYTE *a2, __int128 *a3)
{
  if (a3[3])
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
LABEL_11:
    swift_willThrow();
    return v3;
  }

  v5 = *(a3 + 4);
  v6 = *(a3 + 5);
  v7 = *(a3 + 24);
  v8 = *(a3 + 2);
  v20 = *a3;
  v21 = v8;
  v22 = v7 & 1;
  if ((v6 | v5) < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v5 * v6;
    if ((v5 * v6) >> 64 == (v5 * v6) >> 63)
    {
      if (result)
      {
        v10 = a2 - result;
        if (v9 == a2 - result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v9)
        {
LABEL_13:
          v15 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
          v16 = v15[2];
          v19[0] = v15;
          v19[1] = v15 + 4;
          v19[2] = 0;
          v19[3] = (2 * v16) | 1;
          MEMORY[0x28223BE20](v15, v17);
          v18[2] = v19;
          v18[3] = v6;
          v18[4] = &v20;
          v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF25OneBlockSparsePublicShareVyAG7Field32VGsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v18, 0, v5);
          swift_unknownObjectRelease();
          return v3;
        }

        v10 = 0;
      }

      _StringGuts.grow(_:)(36);

      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v11);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v19[4] = v10;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      v3 = 0xD00000000000003BLL;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v14 = 0xD00000000000003BLL;
      v14[1] = 0x8000000270C530A0;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *_sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SayANGTt1g5(char *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    goto LABEL_8;
  }

  v17 = a2 & 1;
  if ((a4 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3 * a4;
    if ((a3 * a4) >> 64 == (a3 * a4) >> 63)
    {
      v9 = *(result + 2);
      if (v8 == v9)
      {
        v16[0] = result;
        v16[1] = result + 32;
        v16[2] = 0;
        v16[3] = (2 * v8) | 1;
        MEMORY[0x28223BE20](result, a2);
        v15[2] = v16;
        v15[3] = v10;
        v15[4] = &v17;
        v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32VsAE_pTg5(partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:), v15, 0, a3);
        swift_unknownObjectRelease();
        return v5;
      }

      _StringGuts.grow(_:)(36);

      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v11);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v16[4] = v9;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      v5 = 0xD000000000000020;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v14 = 0xD000000000000020;
      v14[1] = 0x8000000270C530E0;
LABEL_8:
      swift_willThrow();
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  if (result >= 0xFFF00002)
  {
LABEL_12:
    _StringGuts.grow(_:)(40);

    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (result == -1048575)
  {
    *a2 = 0;
    return result;
  }

  v2 = 266338049 * result;
  v3 = 4293918721 * (1048831 * result);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  v6 = HIDWORD(v5);
  if (v4)
  {
    if (HIDWORD(v5) < 0xFFF00001)
    {
      *a2 = HIDWORD(v5) + 0xFFFFF;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 0xFFF0000100000000)
  {
    LODWORD(v6) = HIDWORD(v5) + 0xFFFFF;
  }

  *a2 = v6;
  return result;
}

unint64_t _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  if (result > 0xFFFEB00001)
  {
    _StringGuts.grow(_:)(40);

    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (result == 0xFFFEB00001)
  {
    *a2 = 0;
  }

  else
  {
    v2 = (result * 0x160DCD7524uLL) >> 64;
    v3 = (0x1B8024032F28ADCLL * result * 0xFFFEB00001uLL) >> 64;
    v4 = v2 + __CFADD__(0xFFFFFFE9F2328ADCLL * result, 0x160DCD7524 * result) + v3;
    if (v4 >= 0xFFFEB00001)
    {
      v5 = v4 - 0xFFFEB00001;
    }

    else
    {
      v5 = v2 + __CFADD__(0xFFFFFFE9F2328ADCLL * result, 0x160DCD7524 * result) + v3;
    }

    *a2 = v5;
  }

  return result;
}

unint64_t _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  if (result >= 0xFFFFFFFF00000002)
  {
LABEL_20:
    _StringGuts.grow(_:)(40);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (result == 0xFFFFFFFF00000001)
  {
    *a2 = 0;
    return result;
  }

  v2 = (result * 0xFFFFFFFE00000001) >> 64;
  v3 = (0xFFFFFFFF * result * 0xFFFFFFFF00000001) >> 64;
  v4 = __CFADD__(0x1FFFFFFFFLL * result, 0xFFFFFFFE00000001 * result);
  v5 = v3 + v2;
  if (__CFADD__(v3, v2))
  {
    v6 = v5 + v4;
LABEL_10:
    v7 = __CFADD__(v6, 0xFFFFFFFFLL);
    v8 = v6 + 0xFFFFFFFFLL;
    if (!v7)
    {
      *a2 = v8;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v5 == -1)
  {
    if (!v4)
    {
      *a2 = 4294967294;
      return result;
    }

    v6 = 0;
    goto LABEL_10;
  }

  v9 = v5 + v4;
  if (v9 >= 0xFFFFFFFF00000001)
  {
    v9 += 0xFFFFFFFFLL;
  }

  *a2 = v9;
  return result;
}

unint64_t _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA8Field128V_Tt1B5@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (one-time initialization token for p != -1)
  {
    v32 = result;
    v33 = a2;
    swift_once();
    result = v32;
    a2 = v33;
  }

  v4 = static MontgomeryFiniteField128.p < result;
  if (*(&static MontgomeryFiniteField128.p + 1) != a2)
  {
    v4 = *(&static MontgomeryFiniteField128.p + 1) < a2;
  }

  if (!v4)
  {
    v5 = *(&static MontgomeryFiniteField128.p + 1) > a2;
    if (*(&static MontgomeryFiniteField128.p + 1) == a2)
    {
      v5 = static MontgomeryFiniteField128.p > result;
    }

    if (!v5)
    {
      v11 = 0;
      v12 = 0;
LABEL_81:
      *a3 = v11;
      a3[1] = v12;
      return result;
    }

    if (one-time initialization token for r2 != -1)
    {
      v34 = result;
      v35 = a2;
      swift_once();
      result = v34;
      a2 = v35;
    }

    v43 = result;
    v44 = a2;
    v42 = static MontgomeryFiniteField128.r2;
    _UInt128.multipliedFullWidth(by:)(&v39, &v45, &v42);
    v6 = v39;
    v7 = v45;
    v45 = static MontgomeryFiniteField128.p;
    v43 = -v7;
    v44 = 0;
    _UInt128.multipliedFullWidth(by:)(&v39, &v40, &v43);
    v8 = __CFADD__(v40, v7);
    v9 = v41 + *(&v7 + 1);
    if (__CFADD__(v41, *(&v7 + 1)))
    {
      v10 = 1;
    }

    else
    {
      if (!((v9 == -1) | v8 & 1))
      {
        v10 = 0;
LABEL_22:
        v13 = v6 + v39;
        v14 = __CFADD__(v6, v39);
        v15 = *(&v6 + 1) + *(&v39 + 1);
        if (__CFADD__(*(&v6 + 1), *(&v39 + 1)))
        {
          if (v14)
          {
LABEL_32:
            ++v15;
            if ((v10 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_29;
          }
        }

        else
        {
          if (v15 == -1)
          {
            v15 = v14 - 1;
            if ((v10 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_29;
          }

          if (v14)
          {
            goto LABEL_32;
          }
        }

        if ((v10 & 1) == 0)
        {
LABEL_33:
          v16 = 0;
LABEL_34:
          v17 = v13 + v16;
          if (__CFADD__(v13, v16))
          {
            v18 = v15 + 1;
          }

          else
          {
            v18 = v15;
          }

          v19 = static MontgomeryFiniteField128.p;
          v42 = static MontgomeryFiniteField128.p;
          v38[0] = -v9;
          v38[1] = 0;
          result = _UInt128.multipliedFullWidth(by:)(&v45, &v43, v38);
          v20 = *(&v45 + 1);
          v21 = __CFADD__(v43, v9);
          v11 = v44 + v17;
          if (__CFADD__(v44, v17))
          {
            v11 += v21;
            v22 = v18 + v45;
            v23 = __CFADD__(v18, v45);
            if (*(&v45 + 1) == -1)
            {
              v20 = v23 - 1;
            }

            else
            {
              v20 = *(&v45 + 1) + v23;
            }

            v24 = 1;
            goto LABEL_70;
          }

          if (v11 != -1 && !v21)
          {
            v22 = v18 + v45;
            v27 = __CFADD__(v18, v45);
            if (*(&v45 + 1) == -1)
            {
              v20 = v27 - 1;
            }

            else
            {
              v20 = *(&v45 + 1) + v27;
            }

            goto LABEL_69;
          }

          v25 = v11 == -1 && v21;
          v11 += (v11 != -1) | v21;
          v22 = v18 + v45;
          v26 = __CFADD__(v18, v45);
          if (*(&v45 + 1) == -1)
          {
            v20 = v26 - 1;
            if (v25)
            {
              goto LABEL_68;
            }
          }

          else
          {
            if (v26)
            {
              v20 = *(&v45 + 1) + 1;
              if (!v25)
              {
                goto LABEL_69;
              }

LABEL_68:
              v24 = 1;
LABEL_70:
              v28 = __CFADD__(v22, v24);
              v12 = v22 + v24;
              v29 = v28;
              if (v20 != v29 << 63 >> 63)
              {
                goto LABEL_77;
              }

              v30 = v11 < v19;
              if (v12 != *(&v19 + 1))
              {
                v30 = v12 < *(&v19 + 1);
              }

              if (!v30)
              {
LABEL_77:
                v28 = v11 >= v19;
                v11 -= v19;
                v31 = !v28;
                v12 = v12 - *(&v19 + 1) - v31;
              }

              goto LABEL_81;
            }

            if (v25)
            {
              goto LABEL_68;
            }
          }

LABEL_69:
          v24 = 0;
          goto LABEL_70;
        }

LABEL_29:
        v16 = 1;
        goto LABEL_34;
      }

      v10 = (v9 == -1) & v8;
      v8 |= v9 != -1;
    }

    v9 += v8 & 1;
    goto LABEL_22;
  }

  _StringGuts.grow(_:)(40);

  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v36);

  MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v37);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAJGTt2g5(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    return;
  }

  if ((a3 >> 1) - a2 == 5)
  {
    v8 = specialized decodeInteger<A, B>(from:encodedLength:)(a1, a2, a3, 5uLL);
    swift_unknownObjectRelease();
    if (v5)
    {
      return;
    }

    if ((v8 & a4) < 0xFFFEB00001)
    {
      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(v8 & a4, a5);
      return;
    }

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 5;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C531E0;
    *(v11 + 16) = 0;
  }

  swift_willThrow();
}

void _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAJGTt2g5(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unsigned int a4@<W4>, _DWORD *a5@<X8>)
{
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    return;
  }

  if ((a3 >> 1) - a2 == 4)
  {
    v8 = specialized decodeInteger<A, B>(from:encodedLength:)(a1, a2, a3, 4);
    swift_unknownObjectRelease();
    if (v5)
    {
      return;
    }

    v9 = v8 & a4;
    if (v9 < 0xFFF00001)
    {
      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v9, a5);
      return;
    }

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 5;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v12 = 0xD000000000000019;
    *(v12 + 8) = 0x8000000270C53110;
    *(v12 + 16) = 0;
  }

  swift_willThrow();
}

void _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAJGTt2g5(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    return;
  }

  if ((a3 >> 1) - a2 == 8)
  {
    v8 = specialized decodeInteger<A, B>(from:encodedLength:)(a1, a2, a3, 8uLL);
    swift_unknownObjectRelease();
    if (v5)
    {
      return;
    }

    if ((v8 & a4) < 0xFFFFFFFF00000001)
    {
      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(v8 & a4, a5);
      return;
    }

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 5;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C53080;
    *(v11 + 16) = 0;
  }

  swift_willThrow();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OneBlockSparseInnerCorrection(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return specialized static OneBlockSparseInnerCorrection.== infix(_:_:)(*a1, v3 | *(a1 + 8), *a2, v4 | *(a2 + 8));
}

uint64_t OneBlockSparseInnerCorrectionDecodableParameter.encodedLength.getter(uint64_t a1)
{
  v1 = __OFADD__(a1, 2);
  result = a1 + 2;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s4VDAF29OneBlockSparseInnerCorrectionV4from9parameterACx_AA0bcdeF18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    if (a5 <= 0)
    {
      swift_unknownObjectRelease();
      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = a5;
      v17 = 1;
      goto LABEL_21;
    }

    if (__OFADD__(a5, 2))
    {
      __break(1u);
    }

    else
    {
      v12 = a4 >> 1;
      if (!__OFSUB__(a4 >> 1, a3))
      {
        if (a5 + 2 != (a4 >> 1) - a3)
        {
          _StringGuts.grow(_:)(31);

          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v18);

          MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
          swift_unknownObjectRelease();
          v19 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v19);

          v7 = 0x8000000270C52E60;
          lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
          swift_allocError();
          *v20 = 0xD00000000000002FLL;
          v20[1] = 0x8000000270C52E60;
          goto LABEL_22;
        }

        v8 = a3 + a5;
        if (!__OFADD__(a3, a5))
        {
          v13 = v8 + 1;
          if (!__OFADD__(v8, 1))
          {
            if (v8 >= a3 && v8 < v12)
            {
              if (v13 >= a3 && v13 < v12)
              {
                if (*(a2 + v8) <= 1u && *(a2 + v13) < 2u)
                {
                  if ((v8 & 0x8000000000000000) == 0)
                  {
                    if ((a4 & 1) == 0)
                    {
LABEL_17:
                      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4 & 1 | (2 * v8));
                      v7 = v14;
                      goto LABEL_30;
                    }

                    v27 = a2;
                    v9 = a3;
                    v10 = a4;
                    v24 = a1;
                    type metadata accessor for __ContiguousArrayStorageBase();
                    swift_unknownObjectRetain_n();
                    v6 = v24;
                    v25 = swift_dynamicCastClass();
                    if (!v25)
                    {
                      swift_unknownObjectRelease();
                      v25 = MEMORY[0x277D84F90];
                    }

                    v26 = *(v25 + 16);

                    if (!__OFSUB__(v8, v9))
                    {
                      if (v26 == v8 - v9)
                      {
                        v7 = swift_dynamicCastClass();
                        swift_unknownObjectRelease();
                        if (v7)
                        {
                          return v7;
                        }

                        v7 = MEMORY[0x277D84F90];
LABEL_30:
                        swift_unknownObjectRelease();
                        return v7;
                      }

                      goto LABEL_40;
                    }

LABEL_39:
                    __break(1u);
LABEL_40:
                    swift_unknownObjectRelease();
                    a3 = v9;
                    a1 = v6;
                    LOBYTE(a4) = v10;
                    a2 = v27;
                    goto LABEL_17;
                  }

LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                swift_unknownObjectRelease();
                _StringGuts.grow(_:)(43);

                v21 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x2743B25F0](v21);

                MEMORY[0x2743B25F0](0x20646E6120, 0xE500000000000000);
                v22 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x2743B25F0](v22);

                v7 = 0x8000000270C52E90;
                lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
                swift_allocError();
                *v16 = 0xD00000000000003DLL;
                *(v16 + 8) = 0x8000000270C52E90;
                *(v16 + 16) = 0;
                v17 = 5;
LABEL_21:
                *(v16 + 24) = v17;
                goto LABEL_22;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v11 = 0;
  v11[1] = 0;
LABEL_22:
  swift_willThrow();
  return v7;
}

uint64_t OneBlockSparseInnerCorrection.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v89 = &v73 - v12;
  v13 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = *(TupleTypeMetadata2 - 8);
  v14 = *(v86 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2, v15);
  v87 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v91 = &v73 - v19;
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for Range();
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v24 = *(v13 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v73 - v30;
  result = MEMORY[0x28223BE20](v29, v32);
  if (a3)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v38 = 0;
    v38[1] = 0;
LABEL_13:
    swift_willThrow();
    (*(*(a4 - 8) + 8))(a1, a4);
    return a3;
  }

  if (a2 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
    *v51 = a2;
    *(v51 + 24) = 1;
    goto LABEL_13;
  }

  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {
    v81 = v37;
    v82 = v24;
    v79 = v36;
    v80 = result;
    v83 = v35;
    v84 = &v73 - v34;
    v85 = a1;
    if (a2 + 2 != dispatch thunk of Collection.count.getter())
    {
      v92 = 0;
      v93 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v92 = 0xD00000000000002FLL;
      v93 = 0x8000000270C52E60;
      v94 = a2 + 2;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v52);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v53 = v85;
      v94 = dispatch thunk of Collection.count.getter();
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v54);

      a3 = v92;
      v55 = v93;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v56 = a3;
      v56[1] = v55;
      swift_willThrow();
      (*(*(a4 - 8) + 8))(v53, a4);
      return a3;
    }

    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v77 = *(v82 + 8);
    v78 = v82 + 8;
    v77(v31, v13);
    dispatch thunk of Collection.index(after:)();
    v39 = dispatch thunk of Collection.subscript.read();
    v41 = *v40;
    v39(&v92, 0);
    v42 = dispatch thunk of Collection.subscript.read();
    v44 = *v43;
    v42(&v92, 0);
    if (v41 > 1 || v44 > 1)
    {
      v92 = 0;
      v93 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v92 = 0xD00000000000003DLL;
      v93 = 0x8000000270C52E90;
      LOBYTE(v94) = v41;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v46);

      MEMORY[0x2743B25F0](0x20646E6120, 0xE500000000000000);
      LOBYTE(v94) = v44;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v47);

      v48 = v92;
      v49 = v93;
      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *v50 = v48;
      *(v50 + 8) = v49;
      *(v50 + 16) = 0;
      *(v50 + 24) = 5;
      swift_willThrow();
      (*(*(a4 - 8) + 8))(v85, a4);
      a3 = v77;
      v77(v83, v13);
      (a3)(v84, v13);
      return a3;
    }

    v75 = v41;
    v76 = v44;
    dispatch thunk of Collection.startIndex.getter();
    v57 = v84;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v58 = v82;
      v59 = *(v82 + 32);
      v60 = v91;
      v59(v91, v31, v13);
      v61 = v59;
      v74 = v59;
      v62 = TupleTypeMetadata2;
      (*(v58 + 16))(&v60[*(TupleTypeMetadata2 + 48)], v57, v13);
      v63 = v86;
      v64 = v87;
      (*(v86 + 16))(v87, v60, v62);
      v65 = *(v62 + 48);
      v61(v81, v64, v13);
      v66 = &v64[v65];
      v67 = v77;
      v77(v66, v13);
      (*(v63 + 32))(v64, v91, v62);
      v68 = *(v62 + 48);
      v69 = v80;
      v70 = v81;
      v74(v81 + *(v80 + 36), &v64[v68], v13);
      v67(v64, v13);
      v71 = v85;
      dispatch thunk of Collection.subscript.getter();
      (*(v79 + 8))(v70, v69);
      v72 = *(swift_getAssociatedConformanceWitness() + 8);
      a3 = Array.init<A>(_:)();
      (*(*(a4 - 8) + 8))(v71, a4);
      v67(v83, v13);
      v67(v84, v13);
      return a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance OneBlockSparseInnerCorrection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = OneBlockSparseInnerCorrection.init<A>(from:parameter:)(a1, *a2, *(a2 + 8), a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8 & 1;
    *(a5 + 9) = HIBYTE(v8) & 1;
  }

  return result;
}

uint64_t OneBlockSparseInnerCorrection.encodedLength.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
  }

  return result;
}

uint64_t OneBlockSparseInnerCorrection.encode<A>(into:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
    dispatch thunk of RangeReplaceableCollection.append(_:)();
    return dispatch thunk of RangeReplaceableCollection.append(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance OneBlockSparseInnerCorrection()
{
  v1 = *(*v0 + 16);
  result = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance OneBlockSparseInnerCorrection(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(v1 + 9);
  return OneBlockSparseInnerCorrection.encode<A>(into:)(a1, *v1);
}

uint64_t static OneBlockSparsePublicShare.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF29OneBlockSparseInnerCorrectionV_Tt1g5(a1, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a6 + 8) + 8);

  return static Array<A>.== infix(_:_:)();
}

uint64_t OneBlockSparsePublicShareDecodableParameter.init(innerLevelCount:seedSize:blockSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  a4[2] = result;
  return result;
}

uint64_t OneBlockSparsePublicShareDecodableParameter.encodedLength.getter(uint64_t result)
{
  v2 = *v1 + 2;
  if (__OFADD__(*v1, 2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v1[2];
  v4 = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v1[1];
  result = (*(*(result + 24) + 64))(*(result + 16));
  v6 = result * v5;
  if ((result * v5) >> 64 != (result * v5) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t _s4VDAF25OneBlockSparsePublicShareV4from9parameterACyxGqd___AA0bcdeF18DecodableParameterVyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1B5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v11 = a7;
    v45 = v10;
    if (a4)
    {
      v8 = a2;
      v17 = a3;
      v9 = a4;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
        v18 = MEMORY[0x277D84F90];
      }

      v19 = *(v18 + 16);

      if (__OFSUB__(v9 >> 1, v17))
      {
        goto LABEL_30;
      }

      if (v19 != (v9 >> 1) - v17)
      {
        goto LABEL_31;
      }

      v16 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v16)
      {
        goto LABEL_12;
      }

      v16 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
      v16 = v15;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v17 = a5 + 2;
      if (__OFADD__(a5, 2))
      {
        __break(1u);
      }

      else
      {
        a1 = v11 * v17;
        if ((v11 * v17) >> 64 == (v11 * v17) >> 63)
        {
          v20 = (2 * *(v16 + 16)) | 1;
          v21 = specialized Collection.prefix(_:)(v11 * v17, v16, v16 + 32, 0, v20);
          v23 = v22;
          v25 = v24;
          v42 = v26;
          v27 = specialized Collection.dropFirst(_:)(v11 * v17, v16, v16 + 32, 0, v20);
          v39 = v29;
          v40 = v28;
          v31 = v30;
          v43[0] = a5;
          v43[1] = 0;
          v43[2] = v11;
          v43[3] = a5 + 2;
          v44 = 0;

          v32 = v45;
          v33 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA29OneBlockSparseInnerCorrectionV_s10ArraySliceVyANGTt1g5(v21, v23, v25, v42, v43);
          if (v32)
          {
            swift_unknownObjectRelease();
            return v11;
          }

          v11 = v33;
          if ((v39 & 1) == 0)
          {
            swift_unknownObjectRetain();
            goto LABEL_18;
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v36 = swift_dynamicCastClass();
          if (!v36)
          {
            swift_unknownObjectRelease();
            v36 = MEMORY[0x277D84F90];
          }

          v37 = *(v36 + 16);

          if (__OFSUB__(v39 >> 1, v31))
          {
            __break(1u);
          }

          else if (v37 == (v39 >> 1) - v31)
          {
            v35 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v35)
            {
              v35 = MEMORY[0x277D84F90];
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          swift_unknownObjectRelease();
LABEL_18:
          specialized _copyCollectionToContiguousArray<A>(_:)(v27, v40, v31, v39);
          v35 = v34;
LABEL_25:
          swift_unknownObjectRelease();
LABEL_26:
          _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SayANGTt1g5(v35, 1, a6, 4, 0);
          swift_unknownObjectRelease();
          return v11;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_unknownObjectRelease();
      a3 = v17;
      a4 = v9;
      a2 = v8;
    }
  }

  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v13 = 0;
  v13[1] = 0;
  swift_willThrow();
  return v11;
}

uint64_t OneBlockSparsePublicShare.init<A>(from:parameter:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v12 = *(a5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = type metadata accessor for Optional();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = *(*(TupleTypeMetadata3 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 24) == 1)
  {
    v29 = v23;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0;
    swift_willThrow();
    return (*(v29 + 8))(a1, a4);
  }

  v80 = v7;
  v81 = TupleTypeMetadata3;
  v76 = v26;
  v77 = v24;
  v82 = v25;
  v83 = a3;
  v33 = *a2;
  v32 = *(a2 + 8);
  v78 = v12;
  v79 = v32;
  v34 = *(a2 + 16);
  v88 = v23;
  (*(v23 + 16))(v28, a1, a4);
  v35 = *(*(*(a6 + 8) + 8) + 8);
  v36 = ArraySlice.init<A>(_:)();
  v89 = v33;
  v40 = __OFADD__(v33, 2);
  v41 = v33 + 2;
  if (v40)
  {
    __break(1u);
    goto LABEL_22;
  }

  v28 = v34 * v41;
  if ((v34 * v41) >> 64 != (v34 * v41) >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = v36;
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v84 = a1;
  v85 = a4;
  v46 = specialized Collection.prefix(_:)(v34 * v41, v36, v37, v38, v39);
  v86 = v47;
  v87 = v46;
  v49 = v48;
  v51 = v50;
  v52 = specialized Collection.dropFirst(_:)(v34 * v41, v42, v43, v44, v45);
  v54 = v53;
  a6 = v55;
  v75 = v56;
  v92[0] = v89;
  v92[1] = 0;
  v92[2] = v34;
  v92[3] = v41;
  v93 = 0;
  swift_unknownObjectRetain();
  v57 = v91;
  v58 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA29OneBlockSparseInnerCorrectionV_s10ArraySliceVyANGTt1g5(v87, v49, v86, v51, v92);
  v7 = v57;
  if (v57)
  {
    (*(v88 + 8))(v84, v85);
    return swift_unknownObjectRelease();
  }

  v91 = v52;
  v87 = v54;
  v89 = v58;
  v12 = v81;
  v59 = v82;
  v60 = *(v81 + 48);
  v61 = *(v81 + 64);
  (*(*(AssociatedTypeWitness - 8) + 56))(v82, 1, 1);
  v62 = v80;
  *(v59 + v60) = v79;
  *(v59 + v61) = (*(v62 + 64))();
  a1 = v75;
  if ((v75 & 1) == 0)
  {
    v63 = v91;
    swift_unknownObjectRetain();
    v28 = a6;
LABEL_9:
    specialized _copyCollectionToContiguousArray<A>(_:)(v63, v87, v28, a1);
    v65 = v64;
    goto LABEL_16;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v66 = swift_dynamicCastClass();
  v28 = a6;
  if (!v66)
  {
    swift_unknownObjectRelease();
    v66 = MEMORY[0x277D84F90];
  }

  v67 = *(v66 + 16);

  v68 = (a1 >> 1) - a6;
  if (__OFSUB__(a1 >> 1, a6))
  {
    goto LABEL_23;
  }

  a6 = v91;
  if (v67 != v68)
  {
LABEL_24:
    swift_unknownObjectRelease();
    v63 = a6;
    goto LABEL_9;
  }

  v65 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v65)
  {
    goto LABEL_17;
  }

  v65 = MEMORY[0x277D84F90];
LABEL_16:
  swift_unknownObjectRelease();
LABEL_17:
  v94 = v65;
  v69 = v76;
  v70 = v77;
  v71 = v82;
  (*(v77 + 16))(v76, v82, v12);
  (*(v70 + 56))(v69, 0, 1, v12);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v73 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  Array<A>.init<A>(from:parameter:)(&v94, v69, v83, v72, v78, v73);
  if (v7)
  {
    swift_unknownObjectRelease();
    (*(v88 + 8))(v84, v85);
    (*(v70 + 8))(v71, v12);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v88 + 8))(v84, v85);
    (*(v70 + 8))(v71, v12);
    return v89;
  }
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance OneBlockSparsePublicShare<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = OneBlockSparsePublicShare.init<A>(from:parameter:)(a1, a2, *(a5 + 16), a3, *(a5 + 24), a4);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

uint64_t OneBlockSparsePublicShare.encodedLength.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = *(*(result + 32) + 16);
  v7 = __OFADD__(v6, 2);
  v8 = v6 + 2;
  if (v7)
  {
    __break(1u);
LABEL_5:
    v8 = 0;
  }

  v9 = v8 * v5;
  if ((v8 * v5) >> 64 != (v8 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = Collection<>.encodedLength.getter(v10, WitnessTable, *(a4 + 40));
  v7 = __OFADD__(v9, v12);
  result = v9 + v12;
  if (v7)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t OneBlockSparsePublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF29OneBlockSparseInnerCorrectionVGMd, &_sSay4VDAF29OneBlockSparseInnerCorrectionVGMR);
  v12 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [OneBlockSparseInnerCorrection] and conformance [A], &_sSay4VDAF29OneBlockSparseInnerCorrectionVGMd, &_sSay4VDAF29OneBlockSparseInnerCorrectionVGMR);
  Collection<>.encode<A>(into:)(a1, v11, a5, v12, a7, &protocol witness table for OneBlockSparseInnerCorrection);
  v13 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encode<A>(into:)(a1, v13, a5, WitnessTable, a7, *(a6 + 40));
}

uint64_t Seed.extend<A>(xof:nonce:domainSeparationTag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 + 16);
  if (v9 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = a6;
  v6 = a5;
  v8 = 2 * v9;
  static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(a4, a3, a2, 2 * v9, a5, a6);
  v10 = (*(*(v7 + 1) + 40))(2 * v9, v6);
  v11 = *(v10 + 16);
  if (v11 < v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v10;
  if (v11 == v9)
  {

    v7 = v6;
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v10, v10 + 32, 0, v8 | 1);
    v7 = v12;
  }

  if (v8 < v9)
  {
    goto LABEL_17;
  }

  v13 = *(v6 + 16);
  if (v13 < v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 == v9)
  {
    if (*(v7 + 2))
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_19:
  specialized _copyCollectionToContiguousArray<A>(_:)(v6, v6 + 32, v9, (4 * v9) | 1);
  v9 = v18;

  v6 = v9;
  if (!*(v7 + 2))
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v6 + 16))
  {
    LOBYTE(v9) = v7[32];
    LOBYTE(v8) = *(v6 + 32);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_12:
  v7[32] &= ~1u;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v6 + 16))
    {
LABEL_14:
      v15 = v9 & 1;
      *(v6 + 32) &= ~1u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_270C44550;
      *(v16 + 32) = v7;
      *(v16 + 40) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_270C44550;
      *(v17 + 32) = v15;
      *(v17 + 33) = v8 & 1;
      swift_unknownObjectRelease();
      return v16;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    if (*(result + 16))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t DPFOneBlockSparse.__allocating_init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  DPFOneBlockSparse.init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t DPFOneBlockSparse.init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *v5;
    v7 = 0xD00000000000001DLL;
    if (((result - 1) & result) != 0)
    {
      v8 = "ntrol bits value not 0 or 1: ";
      v9 = 7;
      goto LABEL_7;
    }

    if (!__OFSUB__(a2, 1))
    {
      if (((a2 - 1) & a2) != 0)
      {
        v8 = "Dimension must be power of 2.";
        v7 = 0xD00000000000001ELL;
        v9 = 8;
      }

      else
      {
        v8 = "Block size must be power of 2.";
        v7 = 0xD00000000000002CLL;
        v9 = 8;
        if (a2 >= 1 && result >= a2)
        {
          v5[4] = result;
          v5[5] = a2;
          v5[6] = result / a2;
          v5[7] = a3;
          v5[2] = a4;
          v5[3] = a5;
          return v5;
        }
      }

LABEL_7:

      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *v10 = v7;
      *(v10 + 8) = v8 | 0x8000000000000000;
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      swift_willThrow();
      v11 = *(v6 + 80);
      v12 = *(v6 + 96);
      type metadata accessor for DPFOneBlockSparse();
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v136 = a2;
  v133 = result;
  v6 = *v4;
  v132 = *v4;
  v7 = v4[7];
  if (v7 < 0)
  {
    goto LABEL_159;
  }

  v8 = v4;

  LODWORD(v11) = MEMORY[0x277D84F90];
  if (!v7)
  {
    v144 = v5;
    v116 = 1;
    v150 = MEMORY[0x277D84F90];
LABEL_110:
    v112 = v6[24];
    v113 = v112(a3, v136);
    v21 = v144;
    if (v144)
    {
      goto LABEL_111;
    }

    LODWORD(v11) = v116;
    v114 = v113;

    v34 = v112(a4, v136);

    v35 = v132[10];
    v27 = v132[12];
    v37 = static Array<A>.elementwiseSubtracting(_:_:)(*(v133 + 24), v114, v35, v27);
LABEL_122:
    v119 = v37;

    v152 = v119;
    v31 = type metadata accessor for Array();
    Array<A>.elementwiseAdd(_:)(v34, v31, v27);
    if (v21)
    {
LABEL_111:
    }

    else
    {
LABEL_134:

      if (v11)
      {
        v151 = v152;
        MEMORY[0x28223BE20](v120, v121);
        v123 = *(v122 + 88);
        v127[2] = v35;
        v127[3] = v123;
        v124 = *(v122 + 104);
        v127[4] = v27;
        v127[5] = v124;
        WitnessTable = swift_getWitnessTable();
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:), v127, v31, v35, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v126);
      }

      return v150;
    }
  }

  v12 = 0;
  LODWORD(v143) = 0;
  v131 = xmmword_270C44550;
  v150 = MEMORY[0x277D84F90];
  LODWORD(v142) = 1;
  v130 = v4;
  v129 = v7;
  while (1)
  {
    v13 = LeafParent.bit(atLevel:)(v12);
    if (v14)
    {
    }

    v15 = v13;
    v141 = v12;
    v144 = 0;
    v16 = v132[11];
    v17 = v8[2];
    v18 = v132[13];
    v19 = Seed.extend<A>(xof:nonce:domainSeparationTag:)(v13, v136, v17, a3, v16, v18);
    v148 = v20;
    v21 = v19;

    v23 = Seed.extend<A>(xof:nonce:domainSeparationTag:)(v22, v136, v17, a4, v16, v18);
    v25 = v24;

    v26 = !v15;
    if (*(v21 + 16) <= v26)
    {
      break;
    }

    if (*(v23 + 16) <= v26)
    {
      goto LABEL_142;
    }

    v146 = v25;
    v147 = v21;
    v27 = *(v21 + 32 + 8 * v26);
    v145 = v23;
    v28 = *(v23 + 32 + 8 * v26);
    v29 = *(v27 + 16);
    v30 = *(v28 + 16);
    if (v29 != v30)
    {

      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v115 = v29;
      *(v115 + 8) = v30;
      *(v115 + 16) = 0;
      swift_willThrow();
    }

    v135 = v21 + 32;
    v149 = v15;
    v134 = v23 + 32;
    v152 = MEMORY[0x277D84F90];

    v31 = v28;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v32 = v152;
    if (v29)
    {
      v11 = 0;
      v33 = *(v27 + 16);
      v34 = v27 + 32;
      v35 = v28 + 32;
      v36 = v27;
      v37 = v28;
      while (v33 != v11)
      {
        if (v11 >= *(v36 + 16))
        {
          goto LABEL_119;
        }

        v38 = *(v37 + 16);
        if (v11 == v38)
        {
          goto LABEL_120;
        }

        if (v11 >= v38)
        {
          goto LABEL_121;
        }

        v27 = *(v34 + v11);
        v21 = *(v35 + v11);
        v152 = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        v31 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v139 = v37;
          v140 = v36;
          v138 = v33;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v33 = v138;
          v37 = v139;
          v36 = v140;
          v32 = v152;
        }

        ++v11;
        *(v32 + 16) = v31;
        *(v32 + v40 + 32) = v21 ^ v27;
        if (v29 == v11)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v36 = v27;
    v37 = v28;
LABEL_19:
    v41 = *(v36 + 16);
    v42 = v149;
    if (v29 != v41)
    {
      v59 = v36 + 32;
      v35 = v37 + 32;
      v43 = v150;
      while (v29 < v41)
      {
        v60 = *(v37 + 16);
        if (v29 == v60)
        {
          goto LABEL_21;
        }

        if (v29 >= v60)
        {
          goto LABEL_133;
        }

        v27 = *(v59 + v29);
        v61 = *(v35 + v29);
        v152 = v32;
        v63 = *(v32 + 16);
        v62 = *(v32 + 24);
        v31 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          v140 = v36;
          v11 = v37;
          v150 = v43;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v37 = v11;
          v36 = v140;
          v42 = v149;
          v43 = v150;
          v32 = v152;
        }

        ++v29;
        *(v32 + 16) = v31;
        *(v32 + v63 + 32) = v61 ^ v27;
        v41 = *(v36 + 16);
        if (v29 == v41)
        {
          goto LABEL_21;
        }
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v43 = v150;
LABEL_21:
    v149 = v32;
    v150 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    result = swift_initStackObject();
    *(result + 16) = v131;
    v44 = v148;
    v45 = *(v148 + 16);
    if (!v45)
    {
      goto LABEL_143;
    }

    v31 = v146;
    v46 = *(v146 + 16);
    if (!v46)
    {
      goto LABEL_144;
    }

    *(result + 32) = ((v42 ^ *(v146 + 32) ^ *(v148 + 32)) & 1) == 0;
    if (v45 == 1)
    {
      goto LABEL_145;
    }

    if (v46 == 1)
    {
      goto LABEL_146;
    }

    v11 = v42 & 1;
    v137 = result + 32;
    v138 = v11;
    v47 = (v42 ^ (*(v44 + 33) ^ *(v31 + 33))) & 1;
    v140 = result;
    *(result + 33) = v47;
    LODWORD(v139) = v47;
    if (v143)
    {
      v27 = v145;
      if (*(v147 + 16) <= v11)
      {
        goto LABEL_151;
      }

      v48 = *(v135 + 8 * v11);
      v49 = *(v48 + 16);
      v50 = *(v149 + 16);
      if (v49 != v50)
      {
        swift_setDeallocating();
        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v117 = v49;
        *(v117 + 8) = v50;
        *(v117 + 16) = 0;
        swift_willThrow();
      }

      v143 = v44 + 32;
      v152 = MEMORY[0x277D84F90];

      v35 = v48;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
      v51 = v152;
      if (v49)
      {
        v52 = 0;
        v53 = *(v48 + 16);
        v54 = v149;
        v11 = v149 + 32;
        v55 = v48;
        while (v53 != v52)
        {
          if (v52 >= *(v55 + 16))
          {
            goto LABEL_125;
          }

          v56 = *(v54 + 16);
          if (v52 == v56)
          {
            goto LABEL_126;
          }

          if (v52 >= v56)
          {
            goto LABEL_127;
          }

          v27 = *(v48 + 32 + v52);
          v57 = *(v11 + v52);
          v152 = v51;
          v35 = *(v51 + 16);
          v58 = *(v51 + 24);
          v31 = v35 + 1;
          if (v35 >= v58 >> 1)
          {
            v135 = v55;
            v128 = v53;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v35 + 1, 1);
            v53 = v128;
            v55 = v135;
            v54 = v149;
            v51 = v152;
          }

          ++v52;
          *(v51 + 16) = v31;
          *(v51 + v35 + 32) = v57 ^ v27;
          if (v49 == v52)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v54 = v149;
      v55 = v48;
LABEL_60:
      v77 = *(v55 + 16);
      if (v49 != v77)
      {
        v82 = v55 + 32;
        v83 = v54 + 32;
        v84 = v150;
        v11 = v138;
        while (v49 < v77)
        {
          v85 = *(v54 + 16);
          if (v49 == v85)
          {
            goto LABEL_62;
          }

          if (v49 >= v85)
          {
            goto LABEL_137;
          }

          v86 = *(v82 + v49);
          v87 = *(v83 + v49);
          v152 = v51;
          v89 = *(v51 + 16);
          v88 = *(v51 + 24);
          if (v89 >= v88 >> 1)
          {
            v135 = v55;
            v90 = v84;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1);
            v55 = v135;
            v54 = v149;
            v84 = v90;
            v11 = v138;
            v51 = v152;
          }

          ++v49;
          *(v51 + 16) = v89 + 1;
          *(v51 + v89 + 32) = v87 ^ v86;
          v77 = *(v55 + 16);
          if (v49 == v77)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v11 = v138;
LABEL_62:

      v64 = v147;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v147);
        v64 = result;
      }

      v35 = v145;
      v31 = v146;
      v44 = v148;
      if (*(v64 + 16) <= v11)
      {
        goto LABEL_153;
      }

      v78 = v64 + 8 * v11;
      v79 = *(v78 + 32);
      *(v78 + 32) = v51;

      if (*(v44 + 16) <= v11)
      {
        goto LABEL_154;
      }

      v80 = *(v143 + v11);

      v81 = *(v137 + v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
        v44 = result;
      }

      if (*(v44 + 16) <= v11)
      {
        goto LABEL_155;
      }

      *(v44 + v11 + 32) = v80 ^ v81;
      if ((v142 & 1) == 0)
      {
LABEL_70:

        goto LABEL_90;
      }
    }

    else
    {
      v35 = v145;

      v64 = v147;
      if ((v142 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    if (*(v35 + 16) <= v11)
    {
      goto LABEL_152;
    }

    v65 = *(v134 + 8 * v11);

    v143 = v65;
    v27 = *(v65 + 16);
    v66 = *(v149 + 16);
    if (v27 != v66)
    {

      swift_setDeallocating();
      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v118 = v27;
      *(v118 + 8) = v66;
      *(v118 + 16) = 0;
      swift_willThrow();
    }

    v147 = v64;
    v148 = v44;
    v152 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v67 = v152;
    if (v27)
    {
      v68 = 0;
      v69 = v143;
      v70 = *(v143 + 16);
      v71 = v143 + 32;
      v72 = v149;
      v11 = v149 + 32;
      while (v70 != v68)
      {
        if (v68 >= *(v69 + 16))
        {
          goto LABEL_129;
        }

        v73 = *(v72 + 16);
        if (v68 == v73)
        {
          goto LABEL_130;
        }

        if (v68 >= v73)
        {
          goto LABEL_131;
        }

        v74 = *(v71 + v68);
        v75 = *(v11 + v68);
        v152 = v67;
        v35 = *(v67 + 16);
        v76 = *(v67 + 24);
        v31 = v35 + 1;
        if (v35 >= v76 >> 1)
        {
          v142 = v70;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v35 + 1, 1);
          v70 = v142;
          v69 = v143;
          v72 = v149;
          v67 = v152;
        }

        ++v68;
        *(v67 + 16) = v31;
        *(v67 + v35 + 32) = v75 ^ v74;
        if (v27 == v68)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_128;
    }

    v72 = v149;
    v69 = v143;
LABEL_80:
    v91 = *(v69 + 16);
    if (v27 != v91)
    {
      v103 = v69 + 32;
      v104 = v72 + 32;
      v105 = v150;
      v11 = v138;
      while (v27 < v91)
      {
        v106 = *(v72 + 16);
        if (v27 == v106)
        {
          goto LABEL_82;
        }

        if (v27 >= v106)
        {
          goto LABEL_139;
        }

        v107 = *(v103 + v27);
        v108 = *(v104 + v27);
        v152 = v67;
        v110 = *(v67 + 16);
        v109 = *(v67 + 24);
        if (v110 >= v109 >> 1)
        {
          v111 = v105;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1);
          v69 = v143;
          v72 = v149;
          v105 = v111;
          v11 = v138;
          v67 = v152;
        }

        ++v27;
        *(v67 + 16) = v110 + 1;
        *(v67 + v110 + 32) = v108 ^ v107;
        v91 = *(v69 + 16);
        if (v27 == v91)
        {
          goto LABEL_82;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return v150;
    }

    v11 = v138;
LABEL_82:

    v35 = v145;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v145);
      v35 = result;
    }

    v31 = v146;
    v64 = v147;
    v44 = v148;
    if (*(v35 + 16) <= v11)
    {
      goto LABEL_156;
    }

    v92 = v35 + 8 * v11;
    v93 = *(v92 + 32);
    *(v92 + 32) = v67;

    if (*(v31 + 16) <= v11)
    {
      goto LABEL_157;
    }

    v94 = *(v31 + 32 + v11);

    v95 = *(v137 + v11);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      v31 = result;
    }

    if (*(v31 + 16) <= v11)
    {
      goto LABEL_158;
    }

    *(v31 + v11 + 32) = v94 ^ v95;
LABEL_90:
    if (*(v64 + 16) <= v11)
    {
      goto LABEL_147;
    }

    if (*(v35 + 16) <= v11)
    {
      goto LABEL_148;
    }

    if (*(v44 + 16) <= v11)
    {
      goto LABEL_149;
    }

    if (*(v31 + 16) <= v11)
    {
      goto LABEL_150;
    }

    v96 = v11;
    LODWORD(v11) = v64;
    a3 = *(v64 + 8 * v96 + 32);
    a4 = *(v35 + 8 * v96 + 32);
    v97 = *(v44 + v96 + 32);
    LODWORD(v142) = *(v31 + v96 + 32);
    v98 = *(v140 + 32);

    LODWORD(v143) = v97;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = v150;
    }

    else
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 2) + 1, 1, v150);
    }

    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    if (v101 >= v100 >> 1)
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v99);
    }

    *(v99 + 2) = v101 + 1;
    v150 = v99;
    v102 = &v99[16 * v101];
    *(v102 + 4) = v149;
    v12 = v141 + 1;
    v102[40] = v98;
    v102[41] = v139;

    v8 = v130;
    if (v12 == v129)
    {
      v6 = *v130;
      v116 = v142;
      goto LABEL_110;
    }
  }

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
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}