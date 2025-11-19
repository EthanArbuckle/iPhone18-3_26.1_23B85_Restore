uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(int a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (v9[48])
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v16 = *(v9 + 22);
  v17 = *v9;
  if (v17 >= *(v16 + 116))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *&v189 = *(v9 + 22);
  v18 = *(v16 + 104);
  if (!v18)
  {
    goto LABEL_138;
  }

  v14 = a4;
  v12 = a3;
  *&v192 = *(*(*(v18 + 8 * v17) + 8) + 44);
  v13 = v9 + 56;
  v19 = *(v9 + 72);
  v226[0] = *(v9 + 56);
  v226[1] = v19;
  v227[0] = *(v9 + 88);
  v15 = v9 + 84;
  v20 = v9 + 88;
  v10 = (v9 + 104);
  *(v227 + 9) = *(v9 + 97);
  v21 = (v9 + 56);
  v22 = (v9 + 72);
  v23 = v9 + 84;
  v24 = (v9 + 104);
  *&v188 = a2;
  while (1)
  {
    v25 = *v24;
    if (*v23)
    {
      v26 = *v22;
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v25)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v226);
    }

    v22 = (v25 + 16);
    v23 = (v25 + 28);
    v24 = (v25 + 48);
    v21 = v25;
  }

  v27 = *v21;
  if (!v27)
  {
    goto LABEL_167;
  }

  *&v190 = v9 + 72;
  v28 = *(*(v27 + 24 * *v26) + 112);
  if (!v28)
  {
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
    goto LABEL_145;
  }

  v29 = **(v28 + 32);
  v30 = *(v9 + 20);
  v31 = v9[168];
  v32 = *(v9 + 43);
  v33 = *(v9 + 72);
  v224[0] = *v13;
  v224[1] = v33;
  v225[0] = *(v9 + 88);
  v34 = v9 + 100;
  v35 = *(v9 + 29);
  v26 = (v9 + 56);
  v36 = (v9 + 104);
  *(v225 + 9) = *(v9 + 97);
  v191 = v9;
  v182 = v17;
  v180 = v32;
  v181 = v31;
  while (1)
  {
    v37 = *v36;
    if (v35 < *v34)
    {
      v38 = (*v20 + 8 * v35);
      if ((v38[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v37)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v35, 0, v224);
    }

    v20 = v37 + 8;
    v34 = v37 + 11;
    v36 = (v37 + 12);
    v26 = v37;
  }

  v39 = *v26;
  if (!*v26)
  {
    goto LABEL_172;
  }

  v40 = v29;
  LODWORD(v17) = a4;
  v41 = v39 + 24 * *v38;
  v179 = *(*v41 + 56);
  v8 = *(*v41 + 64);
  v14 = &v210;
  *(&v210 + 1) = 0;
  *&v211 = 0;
  WORD4(v211) = 257;
  LODWORD(v212) = 0;
  HIDWORD(v211) = 0;
  *(&v212 + 1) = 0;
  LOWORD(v213) = 0;
  *(&v213 + 1) = -1;
  *&v215[8] = xmmword_26C32E070;
  *&v215[24] = 0;
  *&v216 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v216 + 1) = v42;
  LODWORD(v210) = v192;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, a5, a6, a7, a8);
  specialized HeterogeneousBuffer.insert<A>(_:)(v188, v12);
  DWORD1(v212) = v40;
  *(&v214 + 4) = v30;
  BYTE12(v214) = v181;
  *v215 = v180;
  LOBYTE(v214) = v17 & 1;
  if ((v8 & 1) == 0)
  {
    *&v215[8] = v179;
  }

  v11 = v189;
  if (v182 >= *(v189 + 116))
  {
    goto LABEL_117;
  }

  v43 = *(v189 + 104);
  if (!v43)
  {
    goto LABEL_140;
  }

  v8 = *(*(v43 + 8 * v182) + 8);
  v44 = *(v8 + 44);
  if (v44 == *(v8 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v44);
  }

  v45 = *(v8 + 32);
  if (!v45)
  {
    goto LABEL_141;
  }

  v46 = *(v8 + 44);
  v47 = (v45 + (v46 << 7));
  v48 = *v215;
  v47[4] = v214;
  v47[5] = v48;
  v49 = v216;
  v47[6] = *&v215[16];
  v47[7] = v49;
  v50 = v211;
  *v47 = v210;
  v47[1] = v50;
  v51 = v213;
  v47[2] = v212;
  v47[3] = v51;
  if (v46 == -1)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v8 + 44) = v46 + 1;
  if (v9[48])
  {
    goto LABEL_142;
  }

  v12 = *(v189 + 116);
  v52 = *v9;
  if (v52 >= v12)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v11 = *(v189 + 104);
  if (!v11)
  {
    goto LABEL_143;
  }

  v53 = *(*&v11[8 * v52] + 8);
  if (v192 >= *(v53 + 44))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v54 = *(v53 + 32);
  if (!v54)
  {
    goto LABEL_144;
  }

  v55 = v54 + (v192 << 7);
  v56 = *(v55 + 8);
  v57 = *(v55 + 16);
  v8 = *(v55 + 24);
  v58 = *(v55 + 25);
  v61 = v55 + 28;
  v59 = *(v55 + 28);
  v60 = *(v61 + 4);
  LOBYTE(v197) = v8;
  v62 = v58 == 0;
  v63 = 256;
  if (v62)
  {
    v63 = 0;
  }

  v64 = v63 | (v59 << 32);
  v65 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v56, v57, v63 | v8, v60);
  if (v65)
  {
    v14 = v191;
    v17 = v192;
  }

  else
  {
    LOBYTE(v197) = v8;
    v65 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v56, v57, v64 | v8, v60, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v14 = v191;
    v17 = v192;
    if (!v65)
    {
      goto LABEL_48;
    }
  }

  if (v14[48])
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v66 = *v14;
  if (v66 >= v12)
  {
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v67 = *v65;
  v8 = *(*&v11[8 * v66] + 8);
  v68 = *(v8 + 60);
  if (v68 == *(v8 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v68);
  }

  v69 = *(v8 + 48);
  if (!v69)
  {
    goto LABEL_158;
  }

  v70 = *(v8 + 60);
  v71 = (v69 + 8 * v70);
  *v71 = v67;
  v71[1] = v17;
  if (v70 == -1)
  {
    goto LABEL_125;
  }

  *(v8 + 60) = v70 + 1;
  if (v14[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v72 = *v14;
  if (v72 >= *(v189 + 116))
  {
    goto LABEL_126;
  }

  v73 = *(v189 + 104);
  if (!v73)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  *(*(*(v73 + 8 * v72) + 8) + 64) = 0;
LABEL_48:
  v74 = *(v14 + 9);
  v205 = *(v14 + 8);
  v206 = v74;
  v207 = *(v14 + 10);
  v75 = *(v14 + 5);
  v201 = *(v14 + 4);
  v202 = v75;
  v76 = *(v14 + 7);
  v203 = *(v14 + 6);
  v204 = v76;
  v77 = *(v14 + 1);
  v197 = *v14;
  v198 = v77;
  v78 = *(v14 + 3);
  v199 = *(v14 + 2);
  v200 = v78;
  v209 = v14[192];
  v80 = *(v14 + 22);
  v79 = *(v14 + 23);
  *&v208 = v80;
  *(&v208 + 1) = v79;
  Interpreter.Iterator.updatingStack.getter();
  if (v82)
  {
    v83 = *v14;
    v17 = v14[48];
    v84 = v13[1];
    v222[0] = *v13;
    v222[1] = v84;
    v223[0] = v13[2];
    *(v223 + 9) = *(v13 + 41);
    v85 = v13;
    v12 = v190;
    v86 = v190;
    v87 = v15;
    v88 = v10;
    while (1)
    {
      v89 = *v88;
      if (*v87)
      {
        v26 = *v86;
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v89)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v222);
      }

      v86 = (v89 + 16);
      v87 = (v89 + 28);
      v88 = (v89 + 48);
      v85 = v89;
    }

    v39 = *v85;
    if (!v39)
    {
      goto LABEL_173;
    }

    v26 = *v26;
    v137 = *(*(v39 + 24 * v26) + 112);
    if (v137)
    {
      v138 = *(*(v137 + 32) + 8);
      v139 = *(v138 + 16);
      v140 = v139 + 1;
      v141 = (v138 + 48 * v139 - 16);
      do
      {
        if (v140-- <= 1)
        {
          goto LABEL_69;
        }

        if (v17)
        {
          goto LABEL_132;
        }

        if (*(v80 + 116) <= v83)
        {
          goto LABEL_113;
        }

        v143 = *(v80 + 104);
        if (!v143)
        {
          goto LABEL_133;
        }

        v81 = *v141;
        v144 = *(*(v143 + 8 * v83) + 8);
        if (v81 >= *(v144 + 44))
        {
          goto LABEL_114;
        }

        v145 = *(v144 + 32);
        if (!v145)
        {
          goto LABEL_134;
        }

        v146 = v145 + (v81 << 7);
        v149 = *(v146 + 8);
        v148 = v146 + 8;
        v147 = v149;
        if (!*(v148 + 24))
        {
          goto LABEL_115;
        }

        if (*(v148 + 16))
        {
          goto LABEL_136;
        }

        if (!v147)
        {
          goto LABEL_135;
        }

        v141 -= 12;
      }

      while (*v147 != &type metadata for Event.Transaction);
      v17 = v192;
      if (v14[48])
      {
        goto LABEL_112;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v12 = v190;
  if (v14[48])
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_55:
  v90 = *v14;
  if (v90 >= *(v80 + 116))
  {
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v91 = *(v80 + 104);
  if (!v91)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v92 = *(*(v91 + 8 * v90) + 8);
  v93 = *(v92 + 44);
  if (v81 >= v93)
  {
    goto LABEL_128;
  }

  v94 = *(v92 + 32);
  if (!v94)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v217);
  }

  if (v17 >= v93)
  {
    goto LABEL_129;
  }

  v95 = (v94 + (v81 << 7));
  v17 = v94 + (v17 << 7);
  v11 = *v17;
  v96 = v95[31];
  if (v96 == v95[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v96);
  }

  v97 = *(v95 + 14);
  if (!v97)
  {
    goto LABEL_163;
  }

  v98 = v95[31];
  v99 = v97 + 8 * v98;
  *v99 = -24064;
  *(v99 + 4) = v11;
  if (v98 == -1)
  {
    goto LABEL_130;
  }

  v95[31] = v98 + 1;
  v8 = *v95;
  v100 = *(v17 + 124);
  if (v100 == *(v17 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v100);
  }

  v101 = *(v17 + 112);
  if (!v101)
  {
    goto LABEL_164;
  }

  v102 = *(v17 + 124);
  v103 = v101 + 8 * v102;
  *v103 = 25088;
  *(v103 + 4) = v8;
  if (v102 == -1)
  {
    goto LABEL_131;
  }

  *(v17 + 124) = v102 + 1;
LABEL_69:
  v104 = v13[1];
  v220[0] = *v13;
  v220[1] = v104;
  v221[0] = v13[2];
  *(v221 + 9) = *(v13 + 41);
  v105 = v13;
  v106 = v12;
  v107 = v15;
  v108 = v10;
  while (1)
  {
    v109 = *v108;
    if (*v107)
    {
      v26 = *v106;
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v109)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v220);
    }

    v106 = (v109 + 16);
    v107 = (v109 + 28);
    v108 = (v109 + 48);
    v105 = v109;
  }

  v110 = *v105;
  if (!v110)
  {
    goto LABEL_168;
  }

  v111 = *(*(v110 + 24 * *v26) + 112);
  if (!v111)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (*(*(*(v111 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v14[48])
    {
      __break(1u);
    }

    else
    {
      v112 = *v14;
      if (v112 >= *(v80 + 116))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v113 = *(v80 + 104);
      if (v113)
      {
        v114 = *(*(v113 + 8 * v112) + 8);
        v115 = *(v114 + 44);
        if (!v115)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v116 = *(v114 + 32);
        if (v116)
        {
          v117 = v116 + (v115 << 7);
          v118 = *(v117 - 112);
          v197 = *(v117 - 128);
          v198 = v118;
          v119 = *(v117 - 48);
          v201 = *(v117 - 64);
          v202 = v119;
          v120 = *(v117 - 16);
          v203 = *(v117 - 32);
          v204 = v120;
          v121 = *(v117 - 80);
          v199 = *(v117 - 96);
          v200 = v121;
          LOBYTE(v217) = BYTE8(v198);
          v122 = HeterogeneousBuffer.type(at:)(0, *(&v197 + 1), v198, SBYTE8(v198), v199);
          v123 = swift_conformsToProtocol2();
          if (v123)
          {
            v124 = v123;
            LOBYTE(v217) = BYTE8(v198);
            v125 = HeterogeneousBuffer.index(after:)(0, *(&v197 + 1), v198, SBYTE8(v198), v199);
            LOBYTE(v217) = BYTE8(v198);
            v126 = HeterogeneousBuffer.type(at:)(v125, *(&v197 + 1), v198, SBYTE8(v198), v199);
            v127 = swift_conformsToProtocol2();
            if (v127)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v126, &v197, v122, v124, v127, &v193);
              v188 = v194;
              v189 = v193;
              v17 = v195;
              v128 = v13[1];
              v217 = *v13;
              v218 = v128;
              v219[0] = v13[2];
              *(v219 + 9) = *(v13 + 41);
              v129 = v190;
              while (1)
              {
                v130 = *v10;
                if (*v15)
                {
                  v26 = *v129;
                  if (((*v129)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v130)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v217);
                }

                v129 = (v130 + 16);
                v15 = (v130 + 28);
                v10 = (v130 + 48);
                v13 = v130;
              }

              if (*v13)
              {
                v131 = *(*(*v13 + 24 * *v26) + 112);
                if (v131)
                {
                  v8 = *(v131 + 32);
                  v11 = *(v8 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v8 + 8) = v11;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_94:
                    v134 = *(v11 + 2);
                    v133 = *(v11 + 3);
                    if (v134 >= v133 >> 1)
                    {
                      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v11);
                      *(v8 + 8) = v11;
                    }

                    *(v11 + 2) = v134 + 1;
                    v135 = &v11[48 * v134];
                    *(v135 + 8) = v192;
                    *(v135 + 40) = v189;
                    *(v135 + 56) = v188;
                    *(v135 + 18) = v17;
                    Interpreter.Iterator.relate(prior:)(v192);
                    return v192;
                  }

LABEL_123:
                  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
                  *(v8 + 8) = v11;
                  goto LABEL_94;
                }

                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

    __break(1u);
    goto LABEL_153;
  }

LABEL_146:
  v150 = *(v14 + 11);
  v207 = *(v14 + 10);
  v208 = v150;
  v209 = v14[192];
  v151 = *(v14 + 7);
  v203 = *(v14 + 6);
  v204 = v151;
  v152 = *(v14 + 9);
  v205 = *(v14 + 8);
  v206 = v152;
  v153 = *(v14 + 3);
  v199 = *(v14 + 2);
  v200 = v153;
  v154 = *(v14 + 5);
  v201 = *(v14 + 4);
  v202 = v154;
  v155 = *(v14 + 1);
  v197 = *v14;
  v198 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v156 = swift_allocObject();
  v192 = xmmword_26C328DC0;
  *(v156 + 16) = xmmword_26C328DC0;
  v190 = xmmword_26C32DAD0;
  v217 = xmmword_26C32DAD0;
  LOBYTE(v218) = 1;
  *&v219[0] = 0;
  *(&v218 + 1) = 0;
  WORD4(v219[0]) = 512;
  v157 = Interpreter.Iterator.describe(state:)(&v217);
  v17 = MEMORY[0x277D837D0];
  *(v156 + 56) = MEMORY[0x277D837D0];
  *(v156 + 32) = v157;
  *(v156 + 40) = v158;
  print(_:separator:terminator:)();

  v159 = v13[1];
  v217 = *v13;
  v218 = v159;
  v219[0] = v13[2];
  *(v219 + 9) = *(v13 + 41);
  while (1)
  {
    v160 = *v10;
    if (*v15)
    {
      v26 = *v12;
      if ((*(*v12 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v160)
    {
      goto LABEL_165;
    }

    v12 = v160 + 16;
    v15 = (v160 + 28);
    v10 = (v160 + 48);
    v13 = v160;
  }

LABEL_170:
  v39 = *v13;
  if (!*v13)
  {
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v161 = *(*(v39 + 24 * *v26) + 112);
  if (!v161)
  {
    __break(1u);
  }

  v162 = *(v161 + 32);
  v164 = v162[1];
  v163 = v162[2];
  v165 = v162[3];
  v166 = v162[4];
  v167 = swift_allocObject();
  *(v167 + 16) = v192;
  v197 = v190;
  LOBYTE(v198) = 1;
  *(&v198 + 1) = 0;
  *&v199 = 0;
  WORD4(v199) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v165);
  v168 = specialized Interpreter.Control.Events.describe(state:)(&v197, v164);
  *(v167 + 56) = v17;
  *(v167 + 32) = v168;
  *(v167 + 40) = v169;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v165);
  v170 = *(v191 + 11);
  v207 = *(v191 + 10);
  v208 = v170;
  v209 = v191[192];
  v171 = *(v191 + 7);
  v203 = *(v191 + 6);
  v204 = v171;
  v172 = *(v191 + 9);
  v205 = *(v191 + 8);
  v206 = v172;
  v173 = *(v191 + 3);
  v199 = *(v191 + 2);
  v200 = v173;
  v174 = *(v191 + 5);
  v201 = *(v191 + 4);
  v202 = v174;
  v175 = *(v191 + 1);
  v197 = *v191;
  v198 = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = v192;
  v193 = v190;
  LOBYTE(v194) = 1;
  *(&v194 + 1) = 0;
  v195 = 0;
  v196 = 512;
  v177 = Interpreter.Iterator.describe(state:)(&v193);
  *(v176 + 56) = v17;
  *(v176 + 32) = v177;
  *(v176 + 40) = v178;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (v4[48])
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v12 = *(v4 + 22);
  v13 = *v4;
  if (v13 >= *(v12 + 116))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *&v177 = *(v4 + 22);
  v14 = *(v12 + 104);
  if (!v14)
  {
    goto LABEL_138;
  }

  v10 = a3;
  v6 = *(*(*(v14 + 8 * v13) + 8) + 44);
  v9 = v4 + 56;
  v15 = *(v4 + 72);
  v214[0] = *(v4 + 56);
  v214[1] = v15;
  v215[0] = *(v4 + 88);
  v8 = v4 + 72;
  v11 = v4 + 84;
  v16 = v4 + 88;
  v5 = (v4 + 104);
  *(v215 + 9) = *(v4 + 97);
  v17 = (v4 + 56);
  v18 = (v4 + 72);
  v19 = v4 + 84;
  v20 = (v4 + 104);
  *&v176 = a2;
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_167;
  }

  *&v180 = v6;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
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
    goto LABEL_145;
  }

  v25 = *(v4 + 20);
  v173 = v4[168];
  v174 = **(v24 + 32);
  v172 = *(v4 + 43);
  v26 = *(v4 + 72);
  v212[0] = *v9;
  v212[1] = v26;
  v213[0] = *(v4 + 88);
  v27 = v4 + 100;
  v28 = *(v4 + 29);
  v22 = (v4 + 56);
  v29 = (v4 + 104);
  *(v213 + 9) = *(v4 + 97);
  v179 = v4;
  *&v178 = v4 + 72;
  while (1)
  {
    v30 = *v29;
    if (v28 < *v27)
    {
      v31 = (*v16 + 8 * v28);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v212);
    }

    v16 = v30 + 8;
    v27 = v30 + 11;
    v29 = (v30 + 12);
    v22 = v30;
  }

  v32 = *v22;
  if (!*v22)
  {
    goto LABEL_172;
  }

  LODWORD(v6) = a3;
  v33 = v32 + 24 * *v31;
  v3 = *(*v33 + 56);
  v34 = *(*v33 + 64);
  v10 = &v198;
  *(&v198 + 1) = 0;
  *&v199 = 0;
  WORD4(v199) = 257;
  LODWORD(v200) = 0;
  HIDWORD(v199) = 0;
  *(&v200 + 1) = 0;
  LOWORD(v201) = 0;
  *(&v201 + 1) = -1;
  v7 = &v198;
  *&v203[8] = xmmword_26C32E070;
  *&v203[24] = 0;
  *&v204 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v204 + 1) = v35;
  LODWORD(v198) = v180;
  specialized HeterogeneousBuffer.insert<A>(_:)();
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, v176);
  DWORD1(v200) = v174;
  *(&v202 + 4) = v25;
  BYTE12(v202) = v173;
  *v203 = v172;
  LOBYTE(v202) = v6 & 1;
  if ((v34 & 1) == 0)
  {
    *&v203[8] = v3;
  }

  v8 = v177;
  if (v13 >= *(v177 + 116))
  {
    goto LABEL_117;
  }

  v36 = *(v177 + 104);
  if (!v36)
  {
    goto LABEL_140;
  }

  v3 = *(*(v36 + 8 * v13) + 8);
  v37 = *(v3 + 44);
  LODWORD(v6) = v180;
  if (v37 == *(v3 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v37);
  }

  v38 = *(v3 + 32);
  if (!v38)
  {
    goto LABEL_141;
  }

  v39 = *(v3 + 44);
  v40 = (v38 + (v39 << 7));
  v41 = *v203;
  v40[4] = v202;
  v40[5] = v41;
  v42 = v204;
  v40[6] = *&v203[16];
  v40[7] = v42;
  v43 = v199;
  *v40 = v198;
  v40[1] = v43;
  v44 = v201;
  v40[2] = v200;
  v40[3] = v44;
  if (v39 == -1)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v3 + 44) = v39 + 1;
  if (v4[48])
  {
    goto LABEL_142;
  }

  v7 = *(v177 + 116);
  v45 = *v4;
  if (v45 >= v7)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v8 = *(v177 + 104);
  if (!v8)
  {
    goto LABEL_143;
  }

  v46 = *(*&v8[8 * v45] + 8);
  if (v180 >= *(v46 + 44))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v47 = *(v46 + 32);
  if (!v47)
  {
    goto LABEL_144;
  }

  v48 = v47 + (v180 << 7);
  v49 = *(v48 + 8);
  v50 = *(v48 + 16);
  v3 = *(v48 + 24);
  v51 = *(v48 + 25);
  v54 = v48 + 28;
  v52 = *(v48 + 28);
  v53 = *(v54 + 4);
  LOBYTE(v185) = v3;
  v55 = v51 == 0;
  v56 = 256;
  if (v55)
  {
    v56 = 0;
  }

  v57 = v56 | (v52 << 32);
  v58 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v49, v50, v56 | v3, v53);
  if (v58)
  {
    v10 = v179;
    v6 = v180;
  }

  else
  {
    LOBYTE(v185) = v3;
    v58 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v49, v50, v57 | v3, v53, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v10 = v179;
    v6 = v180;
    if (!v58)
    {
      goto LABEL_48;
    }
  }

  if (v10[48])
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v59 = *v10;
  if (v59 >= v7)
  {
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v60 = *v58;
  v3 = *(*&v8[8 * v59] + 8);
  v61 = *(v3 + 60);
  if (v61 == *(v3 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v61);
  }

  v62 = *(v3 + 48);
  if (!v62)
  {
    goto LABEL_158;
  }

  v63 = *(v3 + 60);
  v64 = (v62 + 8 * v63);
  *v64 = v60;
  v64[1] = v6;
  if (v63 == -1)
  {
    goto LABEL_125;
  }

  *(v3 + 60) = v63 + 1;
  if (v10[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v65 = *v10;
  if (v65 >= *(v177 + 116))
  {
    goto LABEL_126;
  }

  v66 = *(v177 + 104);
  if (!v66)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  *(*(*(v66 + 8 * v65) + 8) + 64) = 0;
LABEL_48:
  v67 = *(v10 + 9);
  v193 = *(v10 + 8);
  v194 = v67;
  v195 = *(v10 + 10);
  v68 = *(v10 + 5);
  v189 = *(v10 + 4);
  v190 = v68;
  v69 = *(v10 + 7);
  v191 = *(v10 + 6);
  v192 = v69;
  v70 = *(v10 + 1);
  v185 = *v10;
  v186 = v70;
  v71 = *(v10 + 3);
  v187 = *(v10 + 2);
  v188 = v71;
  v197 = v10[192];
  v73 = *(v10 + 22);
  v72 = *(v10 + 23);
  *&v196 = v73;
  *(&v196 + 1) = v72;
  Interpreter.Iterator.updatingStack.getter();
  if (v75)
  {
    v76 = *v10;
    v6 = v10[48];
    v77 = v9[1];
    v210[0] = *v9;
    v210[1] = v77;
    v211[0] = v9[2];
    *(v211 + 9) = *(v9 + 41);
    v78 = v9;
    v8 = v178;
    v79 = v178;
    v80 = v11;
    v81 = v5;
    while (1)
    {
      v82 = *v81;
      if (*v80)
      {
        v22 = *v79;
        if ((v22[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v82)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
      }

      v79 = (v82 + 16);
      v80 = (v82 + 28);
      v81 = (v82 + 48);
      v78 = v82;
    }

    v32 = *v78;
    if (!v32)
    {
      goto LABEL_173;
    }

    v22 = *v22;
    v130 = *(*(v32 + 24 * v22) + 112);
    if (v130)
    {
      v131 = *(*(v130 + 32) + 8);
      v132 = *(v131 + 16);
      v133 = v132 + 1;
      v134 = (v131 + 48 * v132 - 16);
      do
      {
        if (v133-- <= 1)
        {
          goto LABEL_69;
        }

        if (v6)
        {
          goto LABEL_132;
        }

        if (*(v73 + 116) <= v76)
        {
          goto LABEL_113;
        }

        v136 = *(v73 + 104);
        if (!v136)
        {
          goto LABEL_133;
        }

        v74 = *v134;
        v137 = *(*(v136 + 8 * v76) + 8);
        if (v74 >= *(v137 + 44))
        {
          goto LABEL_114;
        }

        v138 = *(v137 + 32);
        if (!v138)
        {
          goto LABEL_134;
        }

        v139 = v138 + (v74 << 7);
        v142 = *(v139 + 8);
        v141 = v139 + 8;
        v140 = v142;
        if (!*(v141 + 24))
        {
          goto LABEL_115;
        }

        if (*(v141 + 16))
        {
          goto LABEL_136;
        }

        if (!v140)
        {
          goto LABEL_135;
        }

        v134 -= 12;
      }

      while (*v140 != &type metadata for Event.Transaction);
      v6 = v180;
      if (v10[48])
      {
        goto LABEL_112;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v8 = v178;
  if (v10[48])
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_55:
  v83 = *v10;
  if (v83 >= *(v73 + 116))
  {
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v84 = *(v73 + 104);
  if (!v84)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v85 = *(*(v84 + 8 * v83) + 8);
  v86 = *(v85 + 44);
  if (v74 >= v86)
  {
    goto LABEL_128;
  }

  v87 = *(v85 + 32);
  if (!v87)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
  }

  if (v6 >= v86)
  {
    goto LABEL_129;
  }

  v88 = (v87 + (v74 << 7));
  v6 = v87 + (v6 << 7);
  v7 = *v6;
  v89 = v88[31];
  if (v89 == v88[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v89);
  }

  v90 = *(v88 + 14);
  if (!v90)
  {
    goto LABEL_163;
  }

  v91 = v88[31];
  v92 = v90 + 8 * v91;
  *v92 = -24064;
  *(v92 + 4) = v7;
  if (v91 == -1)
  {
    goto LABEL_130;
  }

  v88[31] = v91 + 1;
  v3 = *v88;
  v93 = *(v6 + 124);
  if (v93 == *(v6 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v93);
  }

  v94 = *(v6 + 112);
  if (!v94)
  {
    goto LABEL_164;
  }

  v95 = *(v6 + 124);
  v96 = v94 + 8 * v95;
  *v96 = 25088;
  *(v96 + 4) = v3;
  if (v95 == -1)
  {
    goto LABEL_131;
  }

  *(v6 + 124) = v95 + 1;
LABEL_69:
  v97 = v9[1];
  v208[0] = *v9;
  v208[1] = v97;
  v209[0] = v9[2];
  *(v209 + 9) = *(v9 + 41);
  v98 = v9;
  v99 = v8;
  v100 = v11;
  v101 = v5;
  while (1)
  {
    v102 = *v101;
    if (*v100)
    {
      v22 = *v99;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v102)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
    }

    v99 = (v102 + 16);
    v100 = (v102 + 28);
    v101 = (v102 + 48);
    v98 = v102;
  }

  v103 = *v98;
  if (!v103)
  {
    goto LABEL_168;
  }

  v104 = *(*(v103 + 24 * *v22) + 112);
  if (!v104)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (*(*(*(v104 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v10[48])
    {
      __break(1u);
    }

    else
    {
      v105 = *v10;
      if (v105 >= *(v73 + 116))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v106 = *(v73 + 104);
      if (v106)
      {
        v107 = *(*(v106 + 8 * v105) + 8);
        v108 = *(v107 + 44);
        if (!v108)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v109 = *(v107 + 32);
        if (v109)
        {
          v110 = v109 + (v108 << 7);
          v111 = *(v110 - 112);
          v185 = *(v110 - 128);
          v186 = v111;
          v112 = *(v110 - 48);
          v189 = *(v110 - 64);
          v190 = v112;
          v113 = *(v110 - 16);
          v191 = *(v110 - 32);
          v192 = v113;
          v114 = *(v110 - 80);
          v187 = *(v110 - 96);
          v188 = v114;
          LOBYTE(v205) = BYTE8(v186);
          v115 = HeterogeneousBuffer.type(at:)(0, *(&v185 + 1), v186, SBYTE8(v186), v187);
          v116 = swift_conformsToProtocol2();
          if (v116)
          {
            v117 = v116;
            LOBYTE(v205) = BYTE8(v186);
            v118 = HeterogeneousBuffer.index(after:)(0, *(&v185 + 1), v186, SBYTE8(v186), v187);
            LOBYTE(v205) = BYTE8(v186);
            v119 = HeterogeneousBuffer.type(at:)(v118, *(&v185 + 1), v186, SBYTE8(v186), v187);
            v120 = swift_conformsToProtocol2();
            if (v120)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v119, &v185, v115, v117, v120, &v181);
              v176 = v182;
              v177 = v181;
              v6 = v183;
              v121 = v9[1];
              v205 = *v9;
              v206 = v121;
              v207[0] = v9[2];
              *(v207 + 9) = *(v9 + 41);
              v122 = v178;
              while (1)
              {
                v123 = *v5;
                if (*v11)
                {
                  v22 = *v122;
                  if (((*v122)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v123)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v205);
                }

                v122 = (v123 + 16);
                v11 = (v123 + 28);
                v5 = (v123 + 48);
                v9 = v123;
              }

              if (*v9)
              {
                v124 = *(*(*v9 + 24 * *v22) + 112);
                if (v124)
                {
                  v3 = *(v124 + 32);
                  v7 = *(v3 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v3 + 8) = v7;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_94:
                    v127 = *(v7 + 2);
                    v126 = *(v7 + 3);
                    if (v127 >= v126 >> 1)
                    {
                      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v7);
                      *(v3 + 8) = v7;
                    }

                    *(v7 + 2) = v127 + 1;
                    v128 = &v7[48 * v127];
                    *(v128 + 8) = v180;
                    *(v128 + 40) = v177;
                    *(v128 + 56) = v176;
                    *(v128 + 18) = v6;
                    Interpreter.Iterator.relate(prior:)(v180);
                    return v180;
                  }

LABEL_123:
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
                  *(v3 + 8) = v7;
                  goto LABEL_94;
                }

                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

    __break(1u);
    goto LABEL_153;
  }

LABEL_146:
  v143 = *(v10 + 11);
  v195 = *(v10 + 10);
  v196 = v143;
  v197 = v10[192];
  v144 = *(v10 + 7);
  v191 = *(v10 + 6);
  v192 = v144;
  v145 = *(v10 + 9);
  v193 = *(v10 + 8);
  v194 = v145;
  v146 = *(v10 + 3);
  v187 = *(v10 + 2);
  v188 = v146;
  v147 = *(v10 + 5);
  v189 = *(v10 + 4);
  v190 = v147;
  v148 = *(v10 + 1);
  v185 = *v10;
  v186 = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v149 = swift_allocObject();
  v180 = xmmword_26C328DC0;
  *(v149 + 16) = xmmword_26C328DC0;
  v178 = xmmword_26C32DAD0;
  v205 = xmmword_26C32DAD0;
  LOBYTE(v206) = 1;
  *&v207[0] = 0;
  *(&v206 + 1) = 0;
  WORD4(v207[0]) = 512;
  v150 = Interpreter.Iterator.describe(state:)(&v205);
  v6 = MEMORY[0x277D837D0];
  *(v149 + 56) = MEMORY[0x277D837D0];
  *(v149 + 32) = v150;
  *(v149 + 40) = v151;
  print(_:separator:terminator:)();

  v152 = v9[1];
  v205 = *v9;
  v206 = v152;
  v207[0] = v9[2];
  *(v207 + 9) = *(v9 + 41);
  while (1)
  {
    v153 = *v5;
    if (*v11)
    {
      v22 = *v8;
      if ((*(*v8 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v153)
    {
      goto LABEL_165;
    }

    v8 = (v153 + 16);
    v11 = (v153 + 28);
    v5 = (v153 + 48);
    v9 = v153;
  }

LABEL_170:
  v32 = *v9;
  if (!*v9)
  {
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v154 = *(*(v32 + 24 * *v22) + 112);
  if (!v154)
  {
    __break(1u);
  }

  v155 = *(v154 + 32);
  v157 = v155[1];
  v156 = v155[2];
  v158 = v155[3];
  v159 = v155[4];
  v160 = swift_allocObject();
  *(v160 + 16) = v180;
  v185 = v178;
  LOBYTE(v186) = 1;
  *(&v186 + 1) = 0;
  *&v187 = 0;
  WORD4(v187) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v158);
  v161 = specialized Interpreter.Control.Events.describe(state:)(&v185, v157);
  *(v160 + 56) = v6;
  *(v160 + 32) = v161;
  *(v160 + 40) = v162;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v158);
  v163 = *(v179 + 11);
  v195 = *(v179 + 10);
  v196 = v163;
  v197 = v179[192];
  v164 = *(v179 + 7);
  v191 = *(v179 + 6);
  v192 = v164;
  v165 = *(v179 + 9);
  v193 = *(v179 + 8);
  v194 = v165;
  v166 = *(v179 + 3);
  v187 = *(v179 + 2);
  v188 = v166;
  v167 = *(v179 + 5);
  v189 = *(v179 + 4);
  v190 = v167;
  v168 = *(v179 + 1);
  v185 = *v179;
  v186 = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = v180;
  v181 = v178;
  LOBYTE(v182) = 1;
  *(&v182 + 1) = 0;
  v183 = 0;
  v184 = 512;
  v170 = Interpreter.Iterator.describe(state:)(&v181);
  *(v169 + 56) = v6;
  *(v169 + 32) = v170;
  *(v169 + 40) = v171;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(char a1, uint64_t a2, char a3, double a4)
{
  if (v4[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v5 = v4;
  v6 = *(v4 + 22);
  v7 = *v4;
  if (v7 >= *(v6 + 116))
  {
LABEL_87:
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
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v10 = *(*(*(v8 + 8 * v7) + 8) + 44);
  v11 = v4 + 56;
  v12 = *(v4 + 72);
  v141[0] = *(v4 + 56);
  v141[1] = v12;
  v142[0] = *(v4 + 88);
  v13 = v4 + 84;
  v14 = v4 + 88;
  v15 = (v5 + 104);
  *(v142 + 9) = *(v5 + 97);
  v16 = (v5 + 56);
  v17 = (v5 + 72);
  v18 = v5 + 84;
  v19 = (v5 + 104);
  while (1)
  {
    v20 = *v19;
    if (*v18)
    {
      v21 = *v17;
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v141);
    }

    v17 = (v20 + 16);
    v18 = (v20 + 28);
    v19 = (v20 + 48);
    v16 = v20;
  }

  v22 = *v16;
  if (!v22)
  {
    goto LABEL_123;
  }

  v23 = *(*(v22 + 24 * *v21) + 112);
  if (!v23)
  {
    goto LABEL_107;
  }

  v24 = *(v5 + 20);
  v108 = v5[168];
  v109 = **(v23 + 32);
  v107 = *(v5 + 43);
  v25 = *(v5 + 72);
  v139[0] = *v11;
  v139[1] = v25;
  v140[0] = *(v5 + 88);
  v26 = v5 + 100;
  v27 = *(v5 + 29);
  v28 = v5 + 56;
  v29 = (v5 + 104);
  *(v140 + 9) = *(v5 + 97);
  v116 = v6;
  v110 = v7;
  while (1)
  {
    v30 = *v29;
    if (v27 < *v26)
    {
      v31 = (*v14 + 8 * v27);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v27, 0, v139);
    }

    v14 = (v30 + 32);
    v26 = (v30 + 44);
    v29 = (v30 + 48);
    v28 = v30;
  }

  if (!*v28)
  {
    goto LABEL_124;
  }

  v32 = v10;
  v33 = *v28 + 24 * *v31;
  v34 = *(*v33 + 56);
  v35 = *(*v33 + 64);
  *(&v130 + 1) = 0;
  *&v131 = 0;
  WORD4(v131) = 257;
  LODWORD(v132) = 0;
  HIDWORD(v131) = 0;
  *(&v132 + 1) = 0;
  LOWORD(v133) = 0;
  *(&v133 + 1) = -1;
  *&v135[8] = xmmword_26C32E070;
  *&v135[24] = 0;
  *&v136 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v136 + 1) = v36;
  LODWORD(v130) = v10;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1 & 1, a4);
  specialized HeterogeneousBuffer.insert<A>(_:)(a2);
  DWORD1(v132) = v109;
  *(&v134 + 4) = v24;
  BYTE12(v134) = v108;
  *v135 = v107;
  if ((v35 & 1) == 0)
  {
    *&v135[8] = v34;
  }

  if (v110 >= *(v6 + 116))
  {
    goto LABEL_88;
  }

  v37 = *(v6 + 104);
  if (!v37)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v38 = *(*(v37 + 8 * v110) + 8);
  v39 = *(v38 + 44);
  if (v39 == *(v38 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v39);
  }

  v40 = *(v38 + 32);
  if (!v40)
  {
    goto LABEL_109;
  }

  v41 = *(v38 + 44);
  v42 = (v40 + (v41 << 7));
  LOBYTE(v134) = a3 & 1;
  v42[4] = v134;
  v42[5] = *v135;
  v42[6] = *&v135[16];
  v42[7] = v136;
  *v42 = v130;
  v42[1] = v131;
  v42[2] = v132;
  v42[3] = v133;
  if (v41 == -1)
  {
    goto LABEL_89;
  }

  *(v38 + 44) = v41 + 1;
  if (v5[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v43 = *v5;
  if (v43 >= *(v6 + 116))
  {
    goto LABEL_90;
  }

  v44 = *(v6 + 104);
  if (!v44)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v45 = *(*(v44 + 8 * v43) + 8);
  if (v32 >= *(v45 + 44))
  {
    goto LABEL_91;
  }

  v113 = *(v6 + 116);
  v46 = *(v45 + 32);
  if (!v46)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v115 = v32;
  v47 = v46 + (v32 << 7);
  v48 = *(v47 + 8);
  v49 = *(v47 + 16);
  v50 = *(v47 + 24);
  v51 = *(v47 + 25);
  v54 = v47 + 28;
  v52 = *(v47 + 28);
  v53 = *(v54 + 4);
  v55 = v51 == 0;
  v56 = 256;
  if (v55)
  {
    v56 = 0;
  }

  v57 = v56 | (v52 << 32);
  v58 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v48, v49, v56 | v50, v53);
  if (v58)
  {
    v59 = v115;
  }

  else
  {
    v58 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v48, v49, v57 | v50, v53, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v59 = v115;
    if (!v58)
    {
      goto LABEL_48;
    }
  }

  if (v5[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v60 = *v5;
  if (v60 >= v113)
  {
    goto LABEL_92;
  }

  v61 = *v58;
  v62 = *(*(v44 + 8 * v60) + 8);
  v63 = *(v62 + 60);
  if (v63 == *(v62 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v63);
  }

  v64 = *(v62 + 48);
  if (!v64)
  {
    goto LABEL_114;
  }

  v65 = *(v62 + 60);
  v66 = (v64 + 8 * v65);
  *v66 = v61;
  v66[1] = v59;
  if (v65 == -1)
  {
    goto LABEL_93;
  }

  *(v62 + 60) = v65 + 1;
  if (v5[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v67 = *v5;
  if (v67 >= *(v116 + 116))
  {
    goto LABEL_94;
  }

  v68 = *(v116 + 104);
  if (!v68)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v68 + 8 * v67) + 8) + 64) = 0;
LABEL_48:
  v125 = *(v5 + 8);
  v126 = *(v5 + 9);
  v127 = *(v5 + 10);
  v121 = *(v5 + 4);
  v122 = *(v5 + 5);
  v123 = *(v5 + 6);
  v124 = *(v5 + 7);
  v117 = *v5;
  v118 = *(v5 + 1);
  v119 = *(v5 + 2);
  v120 = *(v5 + 3);
  v129 = v5[192];
  v69 = *(v5 + 22);
  v128 = *(v5 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v71)
  {
    v72 = *v5;
    v73 = v5[48];
    v74 = *(v5 + 72);
    v137[0] = *v11;
    v137[1] = v74;
    v138[0] = *(v5 + 88);
    *(v138 + 9) = *(v5 + 97);
    v75 = (v5 + 72);
    while (1)
    {
      v76 = *v15;
      if (*v13)
      {
        if (((*v75)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v76)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v137);
      }

      v75 = (v76 + 16);
      v13 = (v76 + 28);
      v15 = (v76 + 48);
      v11 = v76;
    }

    if (!*v11)
    {
      goto LABEL_125;
    }

    v77 = *(*(*v11 + 24 * **v75) + 112);
    if (v77)
    {
      v78 = *(*(v77 + 32) + 8);
      v79 = *(v78 + 16);
      v80 = v79 + 1;
      v81 = (v78 + 48 * v79 - 16);
      while (v80-- > 1)
      {
        if (v73)
        {
          goto LABEL_100;
        }

        if (*(v69 + 116) <= v72)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v83 = *(v69 + 104);
        if (!v83)
        {
          goto LABEL_101;
        }

        v70 = *v81;
        v84 = *(*(v83 + 8 * v72) + 8);
        if (v70 >= *(v84 + 44))
        {
          goto LABEL_85;
        }

        v85 = *(v84 + 32);
        if (!v85)
        {
          goto LABEL_102;
        }

        v86 = v85 + (v70 << 7);
        v89 = *(v86 + 8);
        v88 = v86 + 8;
        v87 = v89;
        if (!*(v88 + 24))
        {
          goto LABEL_86;
        }

        if (*(v88 + 16))
        {
          goto LABEL_104;
        }

        if (!v87)
        {
          goto LABEL_103;
        }

        v81 -= 12;
        if (*v87 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v5[48])
  {
    goto LABEL_117;
  }

  v90 = *v5;
  if (v90 >= *(v69 + 116))
  {
    goto LABEL_95;
  }

  v91 = *(v69 + 104);
  if (!v91)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v92 = *(*(v91 + 8 * v90) + 8);
  v93 = *(v92 + 44);
  if (v70 >= v93)
  {
    goto LABEL_96;
  }

  v94 = *(v92 + 32);
  if (v94)
  {
    if (v59 < v93)
    {
      v95 = (v94 + (v70 << 7));
      v96 = (v94 + (v59 << 7));
      v97 = *v96;
      v98 = v95[31];
      if (v98 == v95[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v98);
      }

      v99 = *(v95 + 14);
      if (!v99)
      {
        goto LABEL_120;
      }

      v100 = v95[31];
      v101 = v99 + 8 * v100;
      *v101 = -24064;
      *(v101 + 4) = v97;
      if (v100 != -1)
      {
        v95[31] = v100 + 1;
        v102 = *v95;
        v103 = v96[31];
        if (v103 == v96[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v103);
        }

        v104 = *(v96 + 14);
        if (!v104)
        {
          goto LABEL_121;
        }

        v105 = v96[31];
        v106 = v104 + 8 * v105;
        *v106 = 25088;
        *(v106 + 4) = v102;
        if (v105 != -1)
        {
          v96[31] = v105 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v59);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
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
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, __int16 a2, uint64_t a3, unsigned __int8 *a4, unsigned int **a5)
{
  if (v6[48])
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v13 = *(v6 + 22);
  v14 = *v6;
  if (v14 >= *(v13 + 116))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *&v181 = *(v6 + 22);
  v15 = *(v13 + 104);
  if (!v15)
  {
    goto LABEL_138;
  }

  v9 = a5;
  v11 = a4;
  *&v184 = *(*(*(v15 + 8 * v14) + 8) + 44);
  v10 = v6 + 56;
  v16 = *(v6 + 72);
  v218[0] = *(v6 + 56);
  v218[1] = v16;
  v219[0] = *(v6 + 88);
  v12 = v6 + 84;
  v17 = v6 + 88;
  v7 = (v6 + 104);
  *(v219 + 9) = *(v6 + 97);
  v18 = (v6 + 56);
  v19 = (v6 + 72);
  v20 = v6 + 84;
  v21 = (v6 + 104);
  *&v180 = a3;
  while (1)
  {
    v22 = *v21;
    if (*v20)
    {
      v23 = *v19;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v22)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v218);
    }

    v19 = (v22 + 16);
    v20 = (v22 + 28);
    v21 = (v22 + 48);
    v18 = v22;
  }

  v24 = *v18;
  if (!v24)
  {
    goto LABEL_167;
  }

  *&v182 = v6 + 72;
  v25 = *(*(v24 + 24 * *v23) + 112);
  if (!v25)
  {
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
    goto LABEL_145;
  }

  v26 = *(v6 + 20);
  v175 = v6[168];
  v176 = **(v25 + 32);
  v174 = *(v6 + 43);
  v27 = *(v6 + 72);
  v216[0] = *v10;
  v216[1] = v27;
  v217[0] = *(v6 + 88);
  v28 = v6 + 100;
  v29 = *(v6 + 29);
  v23 = (v6 + 56);
  v30 = (v6 + 104);
  *(v217 + 9) = *(v6 + 97);
  v183 = v6;
  v177 = v14;
  while (1)
  {
    v31 = *v30;
    if (v29 < *v28)
    {
      v32 = (*v17 + 8 * v29);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v216);
    }

    v17 = v31 + 8;
    v28 = v31 + 11;
    v30 = (v31 + 12);
    v23 = v31;
  }

  v33 = *v23;
  if (!*v23)
  {
    goto LABEL_172;
  }

  v14 = a4;
  v34 = a5;
  v35 = v33 + 24 * *v32;
  v36 = *(*v35 + 56);
  v5 = *(*v35 + 64);
  v11 = &v202;
  *(&v202 + 1) = 0;
  *&v203 = 0;
  WORD4(v203) = 257;
  LODWORD(v204) = 0;
  HIDWORD(v203) = 0;
  *(&v204 + 1) = 0;
  LOWORD(v205) = 0;
  *(&v205 + 1) = -1;
  v9 = &v202;
  *&v207[8] = xmmword_26C32E070;
  *&v207[24] = 0;
  *&v208 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v208 + 1) = v37;
  LODWORD(v202) = v184;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, a2 & 0x101);
  specialized HeterogeneousBuffer.insert<A>(_:)(v180, v14);
  DWORD1(v204) = v176;
  *(&v206 + 4) = v26;
  BYTE12(v206) = v175;
  *v207 = v174;
  LOBYTE(v206) = v34 & 1;
  if ((v5 & 1) == 0)
  {
    *&v207[8] = v36;
  }

  v8 = v181;
  if (v177 >= *(v181 + 116))
  {
    goto LABEL_117;
  }

  v38 = *(v181 + 104);
  if (!v38)
  {
    goto LABEL_140;
  }

  v5 = *(*(v38 + 8 * v177) + 8);
  v39 = *(v5 + 44);
  if (v39 == *(v5 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v39);
  }

  v40 = *(v5 + 32);
  if (!v40)
  {
    goto LABEL_141;
  }

  v41 = *(v5 + 44);
  v42 = (v40 + (v41 << 7));
  v43 = *v207;
  v42[4] = v206;
  v42[5] = v43;
  v44 = v208;
  v42[6] = *&v207[16];
  v42[7] = v44;
  v45 = v203;
  *v42 = v202;
  v42[1] = v45;
  v46 = v205;
  v42[2] = v204;
  v42[3] = v46;
  if (v41 == -1)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v5 + 44) = v41 + 1;
  if (v6[48])
  {
    goto LABEL_142;
  }

  v9 = *(v181 + 116);
  v47 = *v6;
  if (v47 >= v9)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v8 = *(v181 + 104);
  if (!v8)
  {
    goto LABEL_143;
  }

  v48 = *(*&v8[8 * v47] + 8);
  if (v184 >= *(v48 + 44))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v49 = *(v48 + 32);
  if (!v49)
  {
    goto LABEL_144;
  }

  v50 = v49 + (v184 << 7);
  v51 = *(v50 + 8);
  v52 = *(v50 + 16);
  v5 = *(v50 + 24);
  v53 = *(v50 + 25);
  v56 = v50 + 28;
  v54 = *(v50 + 28);
  v55 = *(v56 + 4);
  LOBYTE(v189) = v5;
  v57 = v53 == 0;
  v58 = 256;
  if (v57)
  {
    v58 = 0;
  }

  v59 = v58 | (v54 << 32);
  v60 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v51, v52, v58 | v5, v55);
  if (v60)
  {
    v11 = v183;
    v14 = v184;
  }

  else
  {
    LOBYTE(v189) = v5;
    v60 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v51, v52, v59 | v5, v55, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v11 = v183;
    v14 = v184;
    if (!v60)
    {
      goto LABEL_48;
    }
  }

  if (v11[48])
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v61 = *v11;
  if (v61 >= v9)
  {
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v62 = *v60;
  v5 = *(*&v8[8 * v61] + 8);
  v63 = *(v5 + 60);
  if (v63 == *(v5 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v63);
  }

  v64 = *(v5 + 48);
  if (!v64)
  {
    goto LABEL_158;
  }

  v65 = *(v5 + 60);
  v66 = (v64 + 8 * v65);
  *v66 = v62;
  v66[1] = v14;
  if (v65 == -1)
  {
    goto LABEL_125;
  }

  *(v5 + 60) = v65 + 1;
  if (v11[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v67 = *v11;
  if (v67 >= *(v181 + 116))
  {
    goto LABEL_126;
  }

  v68 = *(v181 + 104);
  if (!v68)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  *(*(*(v68 + 8 * v67) + 8) + 64) = 0;
LABEL_48:
  v69 = *(v11 + 9);
  v197 = *(v11 + 8);
  v198 = v69;
  v199 = *(v11 + 10);
  v70 = *(v11 + 5);
  v193 = *(v11 + 4);
  v194 = v70;
  v71 = *(v11 + 7);
  v195 = *(v11 + 6);
  v196 = v71;
  v72 = *(v11 + 1);
  v189 = *v11;
  v190 = v72;
  v73 = *(v11 + 3);
  v191 = *(v11 + 2);
  v192 = v73;
  v201 = v11[192];
  v75 = *(v11 + 22);
  v74 = *(v11 + 23);
  *&v200 = v75;
  *(&v200 + 1) = v74;
  Interpreter.Iterator.updatingStack.getter();
  if (v77)
  {
    v78 = *v11;
    v14 = v11[48];
    v79 = v10[1];
    v214[0] = *v10;
    v214[1] = v79;
    v215[0] = v10[2];
    *(v215 + 9) = *(v10 + 41);
    v80 = v10;
    v9 = v182;
    v81 = v182;
    v82 = v12;
    v83 = v7;
    while (1)
    {
      v84 = *v83;
      if (*v82)
      {
        v23 = *v81;
        if ((v23[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v84)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
      }

      v81 = (v84 + 16);
      v82 = (v84 + 28);
      v83 = (v84 + 48);
      v80 = v84;
    }

    v33 = *v80;
    if (!v33)
    {
      goto LABEL_173;
    }

    v23 = *v23;
    v132 = *(*(v33 + 24 * v23) + 112);
    if (v132)
    {
      v133 = *(*(v132 + 32) + 8);
      v134 = *(v133 + 16);
      v135 = v134 + 1;
      v136 = (v133 + 48 * v134 - 16);
      do
      {
        if (v135-- <= 1)
        {
          goto LABEL_69;
        }

        if (v14)
        {
          goto LABEL_132;
        }

        if (*(v75 + 116) <= v78)
        {
          goto LABEL_113;
        }

        v138 = *(v75 + 104);
        if (!v138)
        {
          goto LABEL_133;
        }

        v76 = *v136;
        v139 = *(*(v138 + 8 * v78) + 8);
        if (v76 >= *(v139 + 44))
        {
          goto LABEL_114;
        }

        v140 = *(v139 + 32);
        if (!v140)
        {
          goto LABEL_134;
        }

        v141 = v140 + (v76 << 7);
        v144 = *(v141 + 8);
        v143 = v141 + 8;
        v142 = v144;
        if (!*(v143 + 24))
        {
          goto LABEL_115;
        }

        if (*(v143 + 16))
        {
          goto LABEL_136;
        }

        if (!v142)
        {
          goto LABEL_135;
        }

        v136 -= 12;
      }

      while (*v142 != &type metadata for Event.Transaction);
      v14 = v184;
      if (v11[48])
      {
        goto LABEL_112;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v9 = v182;
  if (v11[48])
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_55:
  v85 = *v11;
  if (v85 >= *(v75 + 116))
  {
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v86 = *(v75 + 104);
  if (!v86)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v87 = *(*(v86 + 8 * v85) + 8);
  v88 = *(v87 + 44);
  if (v76 >= v88)
  {
    goto LABEL_128;
  }

  v89 = *(v87 + 32);
  if (!v89)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v209);
  }

  if (v14 >= v88)
  {
    goto LABEL_129;
  }

  v90 = (v89 + (v76 << 7));
  v14 = v89 + (v14 << 7);
  v8 = *v14;
  v91 = v90[31];
  if (v91 == v90[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v91);
  }

  v92 = *(v90 + 14);
  if (!v92)
  {
    goto LABEL_163;
  }

  v93 = v90[31];
  v94 = v92 + 8 * v93;
  *v94 = -24064;
  *(v94 + 4) = v8;
  if (v93 == -1)
  {
    goto LABEL_130;
  }

  v90[31] = v93 + 1;
  v5 = *v90;
  v95 = *(v14 + 124);
  if (v95 == *(v14 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v95);
  }

  v96 = *(v14 + 112);
  if (!v96)
  {
    goto LABEL_164;
  }

  v97 = *(v14 + 124);
  v98 = v96 + 8 * v97;
  *v98 = 25088;
  *(v98 + 4) = v5;
  if (v97 == -1)
  {
    goto LABEL_131;
  }

  *(v14 + 124) = v97 + 1;
LABEL_69:
  v99 = v10[1];
  v212[0] = *v10;
  v212[1] = v99;
  v213[0] = v10[2];
  *(v213 + 9) = *(v10 + 41);
  v100 = v10;
  v101 = v9;
  v102 = v12;
  v103 = v7;
  while (1)
  {
    v104 = *v103;
    if (*v102)
    {
      v23 = *v101;
      if ((v23[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v104)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
    }

    v101 = (v104 + 16);
    v102 = (v104 + 28);
    v103 = (v104 + 48);
    v100 = v104;
  }

  v105 = *v100;
  if (!v105)
  {
    goto LABEL_168;
  }

  v106 = *(*(v105 + 24 * *v23) + 112);
  if (!v106)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (*(*(*(v106 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v11[48])
    {
      __break(1u);
    }

    else
    {
      v107 = *v11;
      if (v107 >= *(v75 + 116))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v108 = *(v75 + 104);
      if (v108)
      {
        v109 = *(*(v108 + 8 * v107) + 8);
        v110 = *(v109 + 44);
        if (!v110)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v111 = *(v109 + 32);
        if (v111)
        {
          v112 = v111 + (v110 << 7);
          v113 = *(v112 - 112);
          v189 = *(v112 - 128);
          v190 = v113;
          v114 = *(v112 - 48);
          v193 = *(v112 - 64);
          v194 = v114;
          v115 = *(v112 - 16);
          v195 = *(v112 - 32);
          v196 = v115;
          v116 = *(v112 - 80);
          v191 = *(v112 - 96);
          v192 = v116;
          LOBYTE(v209) = BYTE8(v190);
          v117 = HeterogeneousBuffer.type(at:)(0, *(&v189 + 1), v190, SBYTE8(v190), v191);
          v118 = swift_conformsToProtocol2();
          if (v118)
          {
            v119 = v118;
            LOBYTE(v209) = BYTE8(v190);
            v120 = HeterogeneousBuffer.index(after:)(0, *(&v189 + 1), v190, SBYTE8(v190), v191);
            LOBYTE(v209) = BYTE8(v190);
            v121 = HeterogeneousBuffer.type(at:)(v120, *(&v189 + 1), v190, SBYTE8(v190), v191);
            v122 = swift_conformsToProtocol2();
            if (v122)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v121, &v189, v117, v119, v122, &v185);
              v180 = v186;
              v181 = v185;
              v14 = v187;
              v123 = v10[1];
              v209 = *v10;
              v210 = v123;
              v211[0] = v10[2];
              *(v211 + 9) = *(v10 + 41);
              v124 = v182;
              while (1)
              {
                v125 = *v7;
                if (*v12)
                {
                  v23 = *v124;
                  if (((*v124)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v125)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v209);
                }

                v124 = (v125 + 16);
                v12 = (v125 + 28);
                v7 = (v125 + 48);
                v10 = v125;
              }

              if (*v10)
              {
                v126 = *(*(*v10 + 24 * *v23) + 112);
                if (v126)
                {
                  v5 = *(v126 + 32);
                  v8 = *(v5 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + 8) = v8;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_94:
                    v129 = *(v8 + 2);
                    v128 = *(v8 + 3);
                    if (v129 >= v128 >> 1)
                    {
                      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v8);
                      *(v5 + 8) = v8;
                    }

                    *(v8 + 2) = v129 + 1;
                    v130 = &v8[48 * v129];
                    *(v130 + 8) = v184;
                    *(v130 + 40) = v181;
                    *(v130 + 56) = v180;
                    *(v130 + 18) = v14;
                    Interpreter.Iterator.relate(prior:)(v184);
                    return v184;
                  }

LABEL_123:
                  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
                  *(v5 + 8) = v8;
                  goto LABEL_94;
                }

                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

    __break(1u);
    goto LABEL_153;
  }

LABEL_146:
  v145 = *(v11 + 11);
  v199 = *(v11 + 10);
  v200 = v145;
  v201 = v11[192];
  v146 = *(v11 + 7);
  v195 = *(v11 + 6);
  v196 = v146;
  v147 = *(v11 + 9);
  v197 = *(v11 + 8);
  v198 = v147;
  v148 = *(v11 + 3);
  v191 = *(v11 + 2);
  v192 = v148;
  v149 = *(v11 + 5);
  v193 = *(v11 + 4);
  v194 = v149;
  v150 = *(v11 + 1);
  v189 = *v11;
  v190 = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v151 = swift_allocObject();
  v184 = xmmword_26C328DC0;
  *(v151 + 16) = xmmword_26C328DC0;
  v182 = xmmword_26C32DAD0;
  v209 = xmmword_26C32DAD0;
  LOBYTE(v210) = 1;
  *&v211[0] = 0;
  *(&v210 + 1) = 0;
  WORD4(v211[0]) = 512;
  v152 = Interpreter.Iterator.describe(state:)(&v209);
  v14 = MEMORY[0x277D837D0];
  *(v151 + 56) = MEMORY[0x277D837D0];
  *(v151 + 32) = v152;
  *(v151 + 40) = v153;
  print(_:separator:terminator:)();

  v154 = v10[1];
  v209 = *v10;
  v210 = v154;
  v211[0] = v10[2];
  *(v211 + 9) = *(v10 + 41);
  while (1)
  {
    v155 = *v7;
    if (*v12)
    {
      v23 = *v9;
      if (((*v9)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v155)
    {
      goto LABEL_165;
    }

    v9 = (v155 + 16);
    v12 = (v155 + 28);
    v7 = (v155 + 48);
    v10 = v155;
  }

LABEL_170:
  v33 = *v10;
  if (!*v10)
  {
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v156 = *(*(v33 + 24 * *v23) + 112);
  if (!v156)
  {
    __break(1u);
  }

  v157 = *(v156 + 32);
  v159 = v157[1];
  v158 = v157[2];
  v160 = v157[3];
  v161 = v157[4];
  v162 = swift_allocObject();
  *(v162 + 16) = v184;
  v189 = v182;
  LOBYTE(v190) = 1;
  *(&v190 + 1) = 0;
  *&v191 = 0;
  WORD4(v191) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v160);
  v163 = specialized Interpreter.Control.Events.describe(state:)(&v189, v159);
  *(v162 + 56) = v14;
  *(v162 + 32) = v163;
  *(v162 + 40) = v164;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v160);
  v165 = *(v183 + 11);
  v199 = *(v183 + 10);
  v200 = v165;
  v201 = v183[192];
  v166 = *(v183 + 7);
  v195 = *(v183 + 6);
  v196 = v166;
  v167 = *(v183 + 9);
  v197 = *(v183 + 8);
  v198 = v167;
  v168 = *(v183 + 3);
  v191 = *(v183 + 2);
  v192 = v168;
  v169 = *(v183 + 5);
  v193 = *(v183 + 4);
  v194 = v169;
  v170 = *(v183 + 1);
  v189 = *v183;
  v190 = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = v184;
  v185 = v182;
  LOBYTE(v186) = 1;
  *(&v186 + 1) = 0;
  v187 = 0;
  v188 = 512;
  v172 = Interpreter.Iterator.describe(state:)(&v185);
  *(v171 + 56) = v14;
  *(v171 + 32) = v172;
  *(v171 + 40) = v173;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int **a4)
{
  if (v5[48])
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v12 = *(v5 + 22);
  v13 = *v5;
  if (v13 >= *(v12 + 116))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *&v179 = *(v5 + 22);
  v14 = *(v12 + 104);
  if (!v14)
  {
    goto LABEL_138;
  }

  v8 = a4;
  v10 = a3;
  *&v182 = *(*(*(v14 + 8 * v13) + 8) + 44);
  v9 = v5 + 56;
  v15 = *(v5 + 72);
  v216[0] = *(v5 + 56);
  v216[1] = v15;
  v217[0] = *(v5 + 88);
  v11 = v5 + 84;
  v16 = v5 + 88;
  v6 = (v5 + 104);
  *(v217 + 9) = *(v5 + 97);
  v17 = (v5 + 56);
  v18 = (v5 + 72);
  v19 = v5 + 84;
  v20 = (v5 + 104);
  *&v178 = a2;
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_167;
  }

  *&v180 = v5 + 72;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
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
    goto LABEL_145;
  }

  v25 = *(v5 + 20);
  v174 = v5[168];
  v175 = **(v24 + 32);
  v173 = *(v5 + 43);
  v26 = *(v5 + 72);
  v214[0] = *v9;
  v214[1] = v26;
  v215[0] = *(v5 + 88);
  v27 = v5 + 100;
  v28 = *(v5 + 29);
  v22 = (v5 + 56);
  v29 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v181 = v5;
  v176 = v13;
  while (1)
  {
    v30 = *v29;
    if (v28 < *v27)
    {
      v31 = (*v16 + 8 * v28);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v214);
    }

    v16 = v30 + 8;
    v27 = v30 + 11;
    v29 = (v30 + 12);
    v22 = v30;
  }

  v32 = *v22;
  if (!*v22)
  {
    goto LABEL_172;
  }

  v13 = a3;
  v33 = a4;
  v34 = v32 + 24 * *v31;
  v4 = *(*v34 + 56);
  v35 = *(*v34 + 64);
  v10 = &v200;
  *(&v200 + 1) = 0;
  *&v201 = 0;
  WORD4(v201) = 257;
  LODWORD(v202) = 0;
  HIDWORD(v201) = 0;
  *(&v202 + 1) = 0;
  LOWORD(v203) = 0;
  *(&v203 + 1) = -1;
  v8 = &v200;
  *&v205[8] = xmmword_26C32E070;
  *&v205[24] = 0;
  *&v206 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v206 + 1) = v36;
  LODWORD(v200) = v182;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1);
  specialized HeterogeneousBuffer.insert<A>(_:)(v178, v13);
  DWORD1(v202) = v175;
  *(&v204 + 4) = v25;
  BYTE12(v204) = v174;
  *v205 = v173;
  LOBYTE(v204) = v33 & 1;
  if ((v35 & 1) == 0)
  {
    *&v205[8] = v4;
  }

  v7 = v179;
  if (v176 >= *(v179 + 116))
  {
    goto LABEL_117;
  }

  v37 = *(v179 + 104);
  if (!v37)
  {
    goto LABEL_140;
  }

  v4 = *(*(v37 + 8 * v176) + 8);
  v38 = *(v4 + 44);
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_141;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v205;
  v41[4] = v204;
  v41[5] = v42;
  v43 = v206;
  v41[6] = *&v205[16];
  v41[7] = v43;
  v44 = v201;
  *v41 = v200;
  v41[1] = v44;
  v45 = v203;
  v41[2] = v202;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_142;
  }

  v8 = *(v179 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v7 = *(v179 + 104);
  if (!v7)
  {
    goto LABEL_143;
  }

  v47 = *(*&v7[8 * v46] + 8);
  if (v182 >= *(v47 + 44))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_144;
  }

  v49 = v48 + (v182 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v187) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v57 | v4, v54);
  if (v59)
  {
    v10 = v181;
    v13 = v182;
  }

  else
  {
    LOBYTE(v187) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v10 = v181;
    v13 = v182;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v10[48])
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v60 = *v10;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v61 = *v59;
  v4 = *(*&v7[8 * v60] + 8);
  v62 = *(v4 + 60);
  if (v62 == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v62);
  }

  v63 = *(v4 + 48);
  if (!v63)
  {
    goto LABEL_158;
  }

  v64 = *(v4 + 60);
  v65 = (v63 + 8 * v64);
  *v65 = v61;
  v65[1] = v13;
  if (v64 == -1)
  {
    goto LABEL_125;
  }

  *(v4 + 60) = v64 + 1;
  if (v10[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v66 = *v10;
  if (v66 >= *(v179 + 116))
  {
    goto LABEL_126;
  }

  v67 = *(v179 + 104);
  if (!v67)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  *(*(*(v67 + 8 * v66) + 8) + 64) = 0;
LABEL_48:
  v68 = *(v10 + 9);
  v195 = *(v10 + 8);
  v196 = v68;
  v197 = *(v10 + 10);
  v69 = *(v10 + 5);
  v191 = *(v10 + 4);
  v192 = v69;
  v70 = *(v10 + 7);
  v193 = *(v10 + 6);
  v194 = v70;
  v71 = *(v10 + 1);
  v187 = *v10;
  v188 = v71;
  v72 = *(v10 + 3);
  v189 = *(v10 + 2);
  v190 = v72;
  v199 = v10[192];
  v74 = *(v10 + 22);
  v73 = *(v10 + 23);
  *&v198 = v74;
  *(&v198 + 1) = v73;
  Interpreter.Iterator.updatingStack.getter();
  if (v76)
  {
    v77 = *v10;
    v13 = v10[48];
    v78 = v9[1];
    v212[0] = *v9;
    v212[1] = v78;
    v213[0] = v9[2];
    *(v213 + 9) = *(v9 + 41);
    v79 = v9;
    v8 = v180;
    v80 = v180;
    v81 = v11;
    v82 = v6;
    while (1)
    {
      v83 = *v82;
      if (*v81)
      {
        v22 = *v80;
        if ((v22[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v83)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
      }

      v80 = (v83 + 16);
      v81 = (v83 + 28);
      v82 = (v83 + 48);
      v79 = v83;
    }

    v32 = *v79;
    if (!v32)
    {
      goto LABEL_173;
    }

    v22 = *v22;
    v131 = *(*(v32 + 24 * v22) + 112);
    if (v131)
    {
      v132 = *(*(v131 + 32) + 8);
      v133 = *(v132 + 16);
      v134 = v133 + 1;
      v135 = (v132 + 48 * v133 - 16);
      do
      {
        if (v134-- <= 1)
        {
          goto LABEL_69;
        }

        if (v13)
        {
          goto LABEL_132;
        }

        if (*(v74 + 116) <= v77)
        {
          goto LABEL_113;
        }

        v137 = *(v74 + 104);
        if (!v137)
        {
          goto LABEL_133;
        }

        v75 = *v135;
        v138 = *(*(v137 + 8 * v77) + 8);
        if (v75 >= *(v138 + 44))
        {
          goto LABEL_114;
        }

        v139 = *(v138 + 32);
        if (!v139)
        {
          goto LABEL_134;
        }

        v140 = v139 + (v75 << 7);
        v143 = *(v140 + 8);
        v142 = v140 + 8;
        v141 = v143;
        if (!*(v142 + 24))
        {
          goto LABEL_115;
        }

        if (*(v142 + 16))
        {
          goto LABEL_136;
        }

        if (!v141)
        {
          goto LABEL_135;
        }

        v135 -= 12;
      }

      while (*v141 != &type metadata for Event.Transaction);
      v13 = v182;
      if (v10[48])
      {
        goto LABEL_112;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v8 = v180;
  if (v10[48])
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_55:
  v84 = *v10;
  if (v84 >= *(v74 + 116))
  {
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v85 = *(v74 + 104);
  if (!v85)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v86 = *(*(v85 + 8 * v84) + 8);
  v87 = *(v86 + 44);
  if (v75 >= v87)
  {
    goto LABEL_128;
  }

  v88 = *(v86 + 32);
  if (!v88)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
  }

  if (v13 >= v87)
  {
    goto LABEL_129;
  }

  v89 = (v88 + (v75 << 7));
  v13 = v88 + (v13 << 7);
  v7 = *v13;
  v90 = v89[31];
  if (v90 == v89[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v90);
  }

  v91 = *(v89 + 14);
  if (!v91)
  {
    goto LABEL_163;
  }

  v92 = v89[31];
  v93 = v91 + 8 * v92;
  *v93 = -24064;
  *(v93 + 4) = v7;
  if (v92 == -1)
  {
    goto LABEL_130;
  }

  v89[31] = v92 + 1;
  v4 = *v89;
  v94 = *(v13 + 124);
  if (v94 == *(v13 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v94);
  }

  v95 = *(v13 + 112);
  if (!v95)
  {
    goto LABEL_164;
  }

  v96 = *(v13 + 124);
  v97 = v95 + 8 * v96;
  *v97 = 25088;
  *(v97 + 4) = v4;
  if (v96 == -1)
  {
    goto LABEL_131;
  }

  *(v13 + 124) = v96 + 1;
LABEL_69:
  v98 = v9[1];
  v210[0] = *v9;
  v210[1] = v98;
  v211[0] = v9[2];
  *(v211 + 9) = *(v9 + 41);
  v99 = v9;
  v100 = v8;
  v101 = v11;
  v102 = v6;
  while (1)
  {
    v103 = *v102;
    if (*v101)
    {
      v22 = *v100;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v103)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
    }

    v100 = (v103 + 16);
    v101 = (v103 + 28);
    v102 = (v103 + 48);
    v99 = v103;
  }

  v104 = *v99;
  if (!v104)
  {
    goto LABEL_168;
  }

  v105 = *(*(v104 + 24 * *v22) + 112);
  if (!v105)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (*(*(*(v105 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v10[48])
    {
      __break(1u);
    }

    else
    {
      v106 = *v10;
      if (v106 >= *(v74 + 116))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v107 = *(v74 + 104);
      if (v107)
      {
        v108 = *(*(v107 + 8 * v106) + 8);
        v109 = *(v108 + 44);
        if (!v109)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v110 = *(v108 + 32);
        if (v110)
        {
          v111 = v110 + (v109 << 7);
          v112 = *(v111 - 112);
          v187 = *(v111 - 128);
          v188 = v112;
          v113 = *(v111 - 48);
          v191 = *(v111 - 64);
          v192 = v113;
          v114 = *(v111 - 16);
          v193 = *(v111 - 32);
          v194 = v114;
          v115 = *(v111 - 80);
          v189 = *(v111 - 96);
          v190 = v115;
          LOBYTE(v207) = BYTE8(v188);
          v116 = HeterogeneousBuffer.type(at:)(0, *(&v187 + 1), v188, SBYTE8(v188), v189);
          v117 = swift_conformsToProtocol2();
          if (v117)
          {
            v118 = v117;
            LOBYTE(v207) = BYTE8(v188);
            v119 = HeterogeneousBuffer.index(after:)(0, *(&v187 + 1), v188, SBYTE8(v188), v189);
            LOBYTE(v207) = BYTE8(v188);
            v120 = HeterogeneousBuffer.type(at:)(v119, *(&v187 + 1), v188, SBYTE8(v188), v189);
            v121 = swift_conformsToProtocol2();
            if (v121)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v120, &v187, v116, v118, v121, &v183);
              v178 = v184;
              v179 = v183;
              v13 = v185;
              v122 = v9[1];
              v207 = *v9;
              v208 = v122;
              v209[0] = v9[2];
              *(v209 + 9) = *(v9 + 41);
              v123 = v180;
              while (1)
              {
                v124 = *v6;
                if (*v11)
                {
                  v22 = *v123;
                  if (((*v123)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v124)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
                }

                v123 = (v124 + 16);
                v11 = (v124 + 28);
                v6 = (v124 + 48);
                v9 = v124;
              }

              if (*v9)
              {
                v125 = *(*(*v9 + 24 * *v22) + 112);
                if (v125)
                {
                  v4 = *(v125 + 32);
                  v7 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v7;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_94:
                    v128 = *(v7 + 2);
                    v127 = *(v7 + 3);
                    if (v128 >= v127 >> 1)
                    {
                      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v7);
                      *(v4 + 8) = v7;
                    }

                    *(v7 + 2) = v128 + 1;
                    v129 = &v7[48 * v128];
                    *(v129 + 8) = v182;
                    *(v129 + 40) = v179;
                    *(v129 + 56) = v178;
                    *(v129 + 18) = v13;
                    Interpreter.Iterator.relate(prior:)(v182);
                    return v182;
                  }

LABEL_123:
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
                  *(v4 + 8) = v7;
                  goto LABEL_94;
                }

                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

    __break(1u);
    goto LABEL_153;
  }

LABEL_146:
  v144 = *(v10 + 11);
  v197 = *(v10 + 10);
  v198 = v144;
  v199 = v10[192];
  v145 = *(v10 + 7);
  v193 = *(v10 + 6);
  v194 = v145;
  v146 = *(v10 + 9);
  v195 = *(v10 + 8);
  v196 = v146;
  v147 = *(v10 + 3);
  v189 = *(v10 + 2);
  v190 = v147;
  v148 = *(v10 + 5);
  v191 = *(v10 + 4);
  v192 = v148;
  v149 = *(v10 + 1);
  v187 = *v10;
  v188 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v150 = swift_allocObject();
  v182 = xmmword_26C328DC0;
  *(v150 + 16) = xmmword_26C328DC0;
  v180 = xmmword_26C32DAD0;
  v207 = xmmword_26C32DAD0;
  LOBYTE(v208) = 1;
  *&v209[0] = 0;
  *(&v208 + 1) = 0;
  WORD4(v209[0]) = 512;
  v151 = Interpreter.Iterator.describe(state:)(&v207);
  v13 = MEMORY[0x277D837D0];
  *(v150 + 56) = MEMORY[0x277D837D0];
  *(v150 + 32) = v151;
  *(v150 + 40) = v152;
  print(_:separator:terminator:)();

  v153 = v9[1];
  v207 = *v9;
  v208 = v153;
  v209[0] = v9[2];
  *(v209 + 9) = *(v9 + 41);
  while (1)
  {
    v154 = *v6;
    if (*v11)
    {
      v22 = *v8;
      if (((*v8)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v154)
    {
      goto LABEL_165;
    }

    v8 = (v154 + 16);
    v11 = (v154 + 28);
    v6 = (v154 + 48);
    v9 = v154;
  }

LABEL_170:
  v32 = *v9;
  if (!*v9)
  {
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v155 = *(*(v32 + 24 * *v22) + 112);
  if (!v155)
  {
    __break(1u);
  }

  v156 = *(v155 + 32);
  v158 = v156[1];
  v157 = v156[2];
  v159 = v156[3];
  v160 = v156[4];
  v161 = swift_allocObject();
  *(v161 + 16) = v182;
  v187 = v180;
  LOBYTE(v188) = 1;
  *(&v188 + 1) = 0;
  *&v189 = 0;
  WORD4(v189) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v159);
  v162 = specialized Interpreter.Control.Events.describe(state:)(&v187, v158);
  *(v161 + 56) = v13;
  *(v161 + 32) = v162;
  *(v161 + 40) = v163;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v159);
  v164 = *(v181 + 11);
  v197 = *(v181 + 10);
  v198 = v164;
  v199 = v181[192];
  v165 = *(v181 + 7);
  v193 = *(v181 + 6);
  v194 = v165;
  v166 = *(v181 + 9);
  v195 = *(v181 + 8);
  v196 = v166;
  v167 = *(v181 + 3);
  v189 = *(v181 + 2);
  v190 = v167;
  v168 = *(v181 + 5);
  v191 = *(v181 + 4);
  v192 = v168;
  v169 = *(v181 + 1);
  v187 = *v181;
  v188 = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = v182;
  v183 = v180;
  LOBYTE(v184) = 1;
  *(&v184 + 1) = 0;
  v185 = 0;
  v186 = 512;
  v171 = Interpreter.Iterator.describe(state:)(&v183);
  *(v170 + 56) = v13;
  *(v170 + 32) = v171;
  *(v170 + 40) = v172;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(int a1, uint64_t a2, unsigned __int8 *a3, unsigned int **a4)
{
  if (v5[48])
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v12 = *(v5 + 22);
  v13 = *v5;
  if (v13 >= *(v12 + 116))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *&v179 = *(v5 + 22);
  v14 = *(v12 + 104);
  if (!v14)
  {
    goto LABEL_138;
  }

  v8 = a4;
  v10 = a3;
  *&v182 = *(*(*(v14 + 8 * v13) + 8) + 44);
  v9 = v5 + 56;
  v15 = *(v5 + 72);
  v216[0] = *(v5 + 56);
  v216[1] = v15;
  v217[0] = *(v5 + 88);
  v11 = v5 + 84;
  v16 = v5 + 88;
  v6 = (v5 + 104);
  *(v217 + 9) = *(v5 + 97);
  v17 = (v5 + 56);
  v18 = (v5 + 72);
  v19 = v5 + 84;
  v20 = (v5 + 104);
  *&v178 = a2;
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v216);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_167;
  }

  *&v180 = v5 + 72;
  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
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
    goto LABEL_145;
  }

  v25 = *(v5 + 20);
  v174 = v5[168];
  v175 = **(v24 + 32);
  v173 = *(v5 + 43);
  v26 = *(v5 + 72);
  v214[0] = *v9;
  v214[1] = v26;
  v215[0] = *(v5 + 88);
  v27 = v5 + 100;
  v28 = *(v5 + 29);
  v22 = (v5 + 56);
  v29 = (v5 + 104);
  *(v215 + 9) = *(v5 + 97);
  v181 = v5;
  v176 = v13;
  while (1)
  {
    v30 = *v29;
    if (v28 < *v27)
    {
      v31 = (*v16 + 8 * v28);
      if ((v31[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v30)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v214);
    }

    v16 = v30 + 8;
    v27 = v30 + 11;
    v29 = (v30 + 12);
    v22 = v30;
  }

  v32 = *v22;
  if (!*v22)
  {
    goto LABEL_172;
  }

  v13 = a3;
  v33 = a4;
  v34 = v32 + 24 * *v31;
  v4 = *(*v34 + 56);
  v35 = *(*v34 + 64);
  v10 = &v200;
  *(&v200 + 1) = 0;
  *&v201 = 0;
  WORD4(v201) = 257;
  LODWORD(v202) = 0;
  HIDWORD(v201) = 0;
  *(&v202 + 1) = 0;
  LOWORD(v203) = 0;
  *(&v203 + 1) = -1;
  v8 = &v200;
  *&v205[8] = xmmword_26C32E070;
  *&v205[24] = 0;
  *&v206 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v206 + 1) = v36;
  LODWORD(v200) = v182;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1);
  specialized HeterogeneousBuffer.insert<A>(_:)(v178, v13);
  DWORD1(v202) = v175;
  *(&v204 + 4) = v25;
  BYTE12(v204) = v174;
  *v205 = v173;
  LOBYTE(v204) = v33 & 1;
  if ((v35 & 1) == 0)
  {
    *&v205[8] = v4;
  }

  v7 = v179;
  if (v176 >= *(v179 + 116))
  {
    goto LABEL_117;
  }

  v37 = *(v179 + 104);
  if (!v37)
  {
    goto LABEL_140;
  }

  v4 = *(*(v37 + 8 * v176) + 8);
  v38 = *(v4 + 44);
  if (v38 == *(v4 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v38);
  }

  v39 = *(v4 + 32);
  if (!v39)
  {
    goto LABEL_141;
  }

  v40 = *(v4 + 44);
  v41 = (v39 + (v40 << 7));
  v42 = *v205;
  v41[4] = v204;
  v41[5] = v42;
  v43 = v206;
  v41[6] = *&v205[16];
  v41[7] = v43;
  v44 = v201;
  *v41 = v200;
  v41[1] = v44;
  v45 = v203;
  v41[2] = v202;
  v41[3] = v45;
  if (v40 == -1)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v4 + 44) = v40 + 1;
  if (v5[48])
  {
    goto LABEL_142;
  }

  v8 = *(v179 + 116);
  v46 = *v5;
  if (v46 >= v8)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v7 = *(v179 + 104);
  if (!v7)
  {
    goto LABEL_143;
  }

  v47 = *(*&v7[8 * v46] + 8);
  if (v182 >= *(v47 + 44))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
    goto LABEL_144;
  }

  v49 = v48 + (v182 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v4 = *(v49 + 24);
  v52 = *(v49 + 25);
  v55 = v49 + 28;
  v53 = *(v49 + 28);
  v54 = *(v55 + 4);
  LOBYTE(v187) = v4;
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v57 | v4, v54);
  if (v59)
  {
    v10 = v181;
    v13 = v182;
  }

  else
  {
    LOBYTE(v187) = v4;
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v50, v51, v58 | v4, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v10 = v181;
    v13 = v182;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v10[48])
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v60 = *v10;
  if (v60 >= v8)
  {
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v61 = *v59;
  v4 = *(*&v7[8 * v60] + 8);
  v62 = *(v4 + 60);
  if (v62 == *(v4 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v62);
  }

  v63 = *(v4 + 48);
  if (!v63)
  {
    goto LABEL_158;
  }

  v64 = *(v4 + 60);
  v65 = (v63 + 8 * v64);
  *v65 = v61;
  v65[1] = v13;
  if (v64 == -1)
  {
    goto LABEL_125;
  }

  *(v4 + 60) = v64 + 1;
  if (v10[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v66 = *v10;
  if (v66 >= *(v179 + 116))
  {
    goto LABEL_126;
  }

  v67 = *(v179 + 104);
  if (!v67)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  *(*(*(v67 + 8 * v66) + 8) + 64) = 0;
LABEL_48:
  v68 = *(v10 + 9);
  v195 = *(v10 + 8);
  v196 = v68;
  v197 = *(v10 + 10);
  v69 = *(v10 + 5);
  v191 = *(v10 + 4);
  v192 = v69;
  v70 = *(v10 + 7);
  v193 = *(v10 + 6);
  v194 = v70;
  v71 = *(v10 + 1);
  v187 = *v10;
  v188 = v71;
  v72 = *(v10 + 3);
  v189 = *(v10 + 2);
  v190 = v72;
  v199 = v10[192];
  v74 = *(v10 + 22);
  v73 = *(v10 + 23);
  *&v198 = v74;
  *(&v198 + 1) = v73;
  Interpreter.Iterator.updatingStack.getter();
  if (v76)
  {
    v77 = *v10;
    v13 = v10[48];
    v78 = v9[1];
    v212[0] = *v9;
    v212[1] = v78;
    v213[0] = v9[2];
    *(v213 + 9) = *(v9 + 41);
    v79 = v9;
    v8 = v180;
    v80 = v180;
    v81 = v11;
    v82 = v6;
    while (1)
    {
      v83 = *v82;
      if (*v81)
      {
        v22 = *v80;
        if ((v22[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v83)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
      }

      v80 = (v83 + 16);
      v81 = (v83 + 28);
      v82 = (v83 + 48);
      v79 = v83;
    }

    v32 = *v79;
    if (!v32)
    {
      goto LABEL_173;
    }

    v22 = *v22;
    v131 = *(*(v32 + 24 * v22) + 112);
    if (v131)
    {
      v132 = *(*(v131 + 32) + 8);
      v133 = *(v132 + 16);
      v134 = v133 + 1;
      v135 = (v132 + 48 * v133 - 16);
      do
      {
        if (v134-- <= 1)
        {
          goto LABEL_69;
        }

        if (v13)
        {
          goto LABEL_132;
        }

        if (*(v74 + 116) <= v77)
        {
          goto LABEL_113;
        }

        v137 = *(v74 + 104);
        if (!v137)
        {
          goto LABEL_133;
        }

        v75 = *v135;
        v138 = *(*(v137 + 8 * v77) + 8);
        if (v75 >= *(v138 + 44))
        {
          goto LABEL_114;
        }

        v139 = *(v138 + 32);
        if (!v139)
        {
          goto LABEL_134;
        }

        v140 = v139 + (v75 << 7);
        v143 = *(v140 + 8);
        v142 = v140 + 8;
        v141 = v143;
        if (!*(v142 + 24))
        {
          goto LABEL_115;
        }

        if (*(v142 + 16))
        {
          goto LABEL_136;
        }

        if (!v141)
        {
          goto LABEL_135;
        }

        v135 -= 12;
      }

      while (*v141 != &type metadata for Event.Transaction);
      v13 = v182;
      if (v10[48])
      {
        goto LABEL_112;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v8 = v180;
  if (v10[48])
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_55:
  v84 = *v10;
  if (v84 >= *(v74 + 116))
  {
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v85 = *(v74 + 104);
  if (!v85)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v86 = *(*(v85 + 8 * v84) + 8);
  v87 = *(v86 + 44);
  if (v75 >= v87)
  {
    goto LABEL_128;
  }

  v88 = *(v86 + 32);
  if (!v88)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
  }

  if (v13 >= v87)
  {
    goto LABEL_129;
  }

  v89 = (v88 + (v75 << 7));
  v13 = v88 + (v13 << 7);
  v7 = *v13;
  v90 = v89[31];
  if (v90 == v89[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v90);
  }

  v91 = *(v89 + 14);
  if (!v91)
  {
    goto LABEL_163;
  }

  v92 = v89[31];
  v93 = v91 + 8 * v92;
  *v93 = -24064;
  *(v93 + 4) = v7;
  if (v92 == -1)
  {
    goto LABEL_130;
  }

  v89[31] = v92 + 1;
  v4 = *v89;
  v94 = *(v13 + 124);
  if (v94 == *(v13 + 120))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v94);
  }

  v95 = *(v13 + 112);
  if (!v95)
  {
    goto LABEL_164;
  }

  v96 = *(v13 + 124);
  v97 = v95 + 8 * v96;
  *v97 = 25088;
  *(v97 + 4) = v4;
  if (v96 == -1)
  {
    goto LABEL_131;
  }

  *(v13 + 124) = v96 + 1;
LABEL_69:
  v98 = v9[1];
  v210[0] = *v9;
  v210[1] = v98;
  v211[0] = v9[2];
  *(v211 + 9) = *(v9 + 41);
  v99 = v9;
  v100 = v8;
  v101 = v11;
  v102 = v6;
  while (1)
  {
    v103 = *v102;
    if (*v101)
    {
      v22 = *v100;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v103)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
    }

    v100 = (v103 + 16);
    v101 = (v103 + 28);
    v102 = (v103 + 48);
    v99 = v103;
  }

  v104 = *v99;
  if (!v104)
  {
    goto LABEL_168;
  }

  v105 = *(*(v104 + 24 * *v22) + 112);
  if (!v105)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (*(*(*(v105 + 32) + 8) + 16) < 0x12CuLL)
  {
    if (v10[48])
    {
      __break(1u);
    }

    else
    {
      v106 = *v10;
      if (v106 >= *(v74 + 116))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v107 = *(v74 + 104);
      if (v107)
      {
        v108 = *(*(v107 + 8 * v106) + 8);
        v109 = *(v108 + 44);
        if (!v109)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v110 = *(v108 + 32);
        if (v110)
        {
          v111 = v110 + (v109 << 7);
          v112 = *(v111 - 112);
          v187 = *(v111 - 128);
          v188 = v112;
          v113 = *(v111 - 48);
          v191 = *(v111 - 64);
          v192 = v113;
          v114 = *(v111 - 16);
          v193 = *(v111 - 32);
          v194 = v114;
          v115 = *(v111 - 80);
          v189 = *(v111 - 96);
          v190 = v115;
          LOBYTE(v207) = BYTE8(v188);
          v116 = HeterogeneousBuffer.type(at:)(0, *(&v187 + 1), v188, SBYTE8(v188), v189);
          v117 = swift_conformsToProtocol2();
          if (v117)
          {
            v118 = v117;
            LOBYTE(v207) = BYTE8(v188);
            v119 = HeterogeneousBuffer.index(after:)(0, *(&v187 + 1), v188, SBYTE8(v188), v189);
            LOBYTE(v207) = BYTE8(v188);
            v120 = HeterogeneousBuffer.type(at:)(v119, *(&v187 + 1), v188, SBYTE8(v188), v189);
            v121 = swift_conformsToProtocol2();
            if (v121)
            {
              project #1 <A, B>(_:_:) in Event.id.getter(v120, &v187, v116, v118, v121, &v183);
              v178 = v184;
              v179 = v183;
              v13 = v185;
              v122 = v9[1];
              v207 = *v9;
              v208 = v122;
              v209[0] = v9[2];
              *(v209 + 9) = *(v9 + 41);
              v123 = v180;
              while (1)
              {
                v124 = *v6;
                if (*v11)
                {
                  v22 = *v123;
                  if (((*v123)[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v124)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v207);
                }

                v123 = (v124 + 16);
                v11 = (v124 + 28);
                v6 = (v124 + 48);
                v9 = v124;
              }

              if (*v9)
              {
                v125 = *(*(*v9 + 24 * *v22) + 112);
                if (v125)
                {
                  v4 = *(v125 + 32);
                  v7 = *(v4 + 8);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 8) = v7;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_94:
                    v128 = *(v7 + 2);
                    v127 = *(v7 + 3);
                    if (v128 >= v127 >> 1)
                    {
                      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v7);
                      *(v4 + 8) = v7;
                    }

                    *(v7 + 2) = v128 + 1;
                    v129 = &v7[48 * v128];
                    *(v129 + 8) = v182;
                    *(v129 + 40) = v179;
                    *(v129 + 56) = v178;
                    *(v129 + 18) = v13;
                    Interpreter.Iterator.relate(prior:)(v182);
                    return v182;
                  }

LABEL_123:
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
                  *(v4 + 8) = v7;
                  goto LABEL_94;
                }

                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }
    }

    __break(1u);
    goto LABEL_153;
  }

LABEL_146:
  v144 = *(v10 + 11);
  v197 = *(v10 + 10);
  v198 = v144;
  v199 = v10[192];
  v145 = *(v10 + 7);
  v193 = *(v10 + 6);
  v194 = v145;
  v146 = *(v10 + 9);
  v195 = *(v10 + 8);
  v196 = v146;
  v147 = *(v10 + 3);
  v189 = *(v10 + 2);
  v190 = v147;
  v148 = *(v10 + 5);
  v191 = *(v10 + 4);
  v192 = v148;
  v149 = *(v10 + 1);
  v187 = *v10;
  v188 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v150 = swift_allocObject();
  v182 = xmmword_26C328DC0;
  *(v150 + 16) = xmmword_26C328DC0;
  v180 = xmmword_26C32DAD0;
  v207 = xmmword_26C32DAD0;
  LOBYTE(v208) = 1;
  *&v209[0] = 0;
  *(&v208 + 1) = 0;
  WORD4(v209[0]) = 512;
  v151 = Interpreter.Iterator.describe(state:)(&v207);
  v13 = MEMORY[0x277D837D0];
  *(v150 + 56) = MEMORY[0x277D837D0];
  *(v150 + 32) = v151;
  *(v150 + 40) = v152;
  print(_:separator:terminator:)();

  v153 = v9[1];
  v207 = *v9;
  v208 = v153;
  v209[0] = v9[2];
  *(v209 + 9) = *(v9 + 41);
  while (1)
  {
    v154 = *v6;
    if (*v11)
    {
      v22 = *v8;
      if (((*v8)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v154)
    {
      goto LABEL_165;
    }

    v8 = (v154 + 16);
    v11 = (v154 + 28);
    v6 = (v154 + 48);
    v9 = v154;
  }

LABEL_170:
  v32 = *v9;
  if (!*v9)
  {
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

  v155 = *(*(v32 + 24 * *v22) + 112);
  if (!v155)
  {
    __break(1u);
  }

  v156 = *(v155 + 32);
  v158 = v156[1];
  v157 = v156[2];
  v159 = v156[3];
  v160 = v156[4];
  v161 = swift_allocObject();
  *(v161 + 16) = v182;
  v187 = v180;
  LOBYTE(v188) = 1;
  *(&v188 + 1) = 0;
  *&v189 = 0;
  WORD4(v189) = 512;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v159);
  v162 = specialized Interpreter.Control.Events.describe(state:)(&v187, v158);
  *(v161 + 56) = v13;
  *(v161 + 32) = v162;
  *(v161 + 40) = v163;
  print(_:separator:terminator:)();

  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v159);
  v164 = *(v181 + 11);
  v197 = *(v181 + 10);
  v198 = v164;
  v199 = v181[192];
  v165 = *(v181 + 7);
  v193 = *(v181 + 6);
  v194 = v165;
  v166 = *(v181 + 9);
  v195 = *(v181 + 8);
  v196 = v166;
  v167 = *(v181 + 3);
  v189 = *(v181 + 2);
  v190 = v167;
  v168 = *(v181 + 5);
  v191 = *(v181 + 4);
  v192 = v168;
  v169 = *(v181 + 1);
  v187 = *v181;
  v188 = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = v182;
  v183 = v180;
  LOBYTE(v184) = 1;
  *(&v184 + 1) = 0;
  v185 = 0;
  v186 = 512;
  v171 = Interpreter.Iterator.describe(state:)(&v183);
  *(v170 + 56) = v13;
  *(v170 + 32) = v171;
  *(v170 + 40) = v172;
  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  if (v6[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v7 = v6;
  v8 = *(v6 + 22);
  v9 = *v6;
  if (v9 >= *(v8 + 116))
  {
LABEL_87:
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
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v10 = *(v8 + 104);
  if (!v10)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v11 = *(*(*(v10 + 8 * v9) + 8) + 44);
  v12 = v6 + 56;
  v13 = *(v6 + 72);
  v145[0] = *(v6 + 56);
  v145[1] = v13;
  v146[0] = *(v6 + 88);
  v14 = v6 + 84;
  v15 = v6 + 88;
  v16 = (v7 + 104);
  *(v146 + 9) = *(v7 + 97);
  v17 = (v7 + 56);
  v18 = (v7 + 72);
  v19 = v7 + 84;
  v20 = (v7 + 104);
  while (1)
  {
    v21 = *v20;
    if (*v19)
    {
      v22 = *v18;
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v145);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_123;
  }

  v24 = *(*(v23 + 24 * *v22) + 112);
  if (!v24)
  {
    goto LABEL_107;
  }

  v25 = *(v7 + 20);
  v109 = v7[168];
  v110 = **(v24 + 32);
  v108 = *(v7 + 43);
  v26 = *(v7 + 72);
  v143[0] = *v12;
  v143[1] = v26;
  v144[0] = *(v7 + 88);
  v27 = v7 + 100;
  v28 = *(v7 + 29);
  v29 = v7 + 56;
  v30 = (v7 + 104);
  *(v144 + 9) = *(v7 + 97);
  v120 = v8;
  v111 = v9;
  while (1)
  {
    v31 = *v30;
    if (v28 < *v27)
    {
      v32 = (*v15 + 8 * v28);
      if ((v32[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v31)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v28, 0, v143);
    }

    v15 = (v31 + 32);
    v27 = (v31 + 44);
    v30 = (v31 + 48);
    v29 = v31;
  }

  if (!*v29)
  {
    goto LABEL_124;
  }

  v33 = v11;
  v34 = *v29 + 24 * *v32;
  v35 = *(*v34 + 56);
  v36 = *(*v34 + 64);
  *(&v134 + 1) = 0;
  *&v135 = 0;
  WORD4(v135) = 257;
  LODWORD(v136) = 0;
  HIDWORD(v135) = 0;
  *(&v136 + 1) = 0;
  LOWORD(v137) = 0;
  *(&v137 + 1) = -1;
  *&v139[8] = xmmword_26C32E070;
  *&v139[24] = 0;
  *&v140 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v140 + 1) = v37;
  LODWORD(v134) = v11;
  specialized HeterogeneousBuffer.insert<A>(_:)(a1, a2, a3, a4);
  specialized HeterogeneousBuffer.insert<A>(_:)(a5);
  DWORD1(v136) = v110;
  *(&v138 + 4) = v25;
  BYTE12(v138) = v109;
  *v139 = v108;
  if ((v36 & 1) == 0)
  {
    *&v139[8] = v35;
  }

  if (v111 >= *(v8 + 116))
  {
    goto LABEL_88;
  }

  v38 = *(v8 + 104);
  if (!v38)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v39 = *(*(v38 + 8 * v111) + 8);
  v40 = *(v39 + 44);
  if (v40 == *(v39 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v40);
  }

  v41 = *(v39 + 32);
  if (!v41)
  {
    goto LABEL_109;
  }

  v42 = *(v39 + 44);
  v43 = (v41 + (v42 << 7));
  LOBYTE(v138) = a6 & 1;
  v43[4] = v138;
  v43[5] = *v139;
  v43[6] = *&v139[16];
  v43[7] = v140;
  *v43 = v134;
  v43[1] = v135;
  v43[2] = v136;
  v43[3] = v137;
  if (v42 == -1)
  {
    goto LABEL_89;
  }

  *(v39 + 44) = v42 + 1;
  if (v7[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v44 = *v7;
  if (v44 >= *(v8 + 116))
  {
    goto LABEL_90;
  }

  v45 = *(v8 + 104);
  if (!v45)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v46 = *(*(v45 + 8 * v44) + 8);
  if (v33 >= *(v46 + 44))
  {
    goto LABEL_91;
  }

  v117 = *(v8 + 116);
  v47 = *(v46 + 32);
  if (!v47)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v119 = v33;
  v48 = v47 + (v33 << 7);
  v49 = *(v48 + 8);
  v50 = *(v48 + 16);
  v51 = *(v48 + 24);
  v52 = *(v48 + 25);
  v55 = v48 + 28;
  v53 = *(v48 + 28);
  v54 = *(v55 + 4);
  v56 = v52 == 0;
  v57 = 256;
  if (v56)
  {
    v57 = 0;
  }

  v58 = v57 | (v53 << 32);
  v59 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v49, v50, v57 | v51, v54);
  if (v59)
  {
    v60 = v119;
  }

  else
  {
    v59 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v49, v50, v58 | v51, v54, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v60 = v119;
    if (!v59)
    {
      goto LABEL_48;
    }
  }

  if (v7[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v61 = *v7;
  if (v61 >= v117)
  {
    goto LABEL_92;
  }

  v62 = *v59;
  v63 = *(*(v45 + 8 * v61) + 8);
  v64 = *(v63 + 60);
  if (v64 == *(v63 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v64);
  }

  v65 = *(v63 + 48);
  if (!v65)
  {
    goto LABEL_114;
  }

  v66 = *(v63 + 60);
  v67 = (v65 + 8 * v66);
  *v67 = v62;
  v67[1] = v60;
  if (v66 == -1)
  {
    goto LABEL_93;
  }

  *(v63 + 60) = v66 + 1;
  if (v7[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v68 = *v7;
  if (v68 >= *(v120 + 116))
  {
    goto LABEL_94;
  }

  v69 = *(v120 + 104);
  if (!v69)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v69 + 8 * v68) + 8) + 64) = 0;
LABEL_48:
  v129 = *(v7 + 8);
  v130 = *(v7 + 9);
  v131 = *(v7 + 10);
  v125 = *(v7 + 4);
  v126 = *(v7 + 5);
  v127 = *(v7 + 6);
  v128 = *(v7 + 7);
  v121 = *v7;
  v122 = *(v7 + 1);
  v123 = *(v7 + 2);
  v124 = *(v7 + 3);
  v133 = v7[192];
  v70 = *(v7 + 22);
  v132 = *(v7 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v72)
  {
    v73 = *v7;
    v74 = v7[48];
    v75 = *(v7 + 72);
    v141[0] = *v12;
    v141[1] = v75;
    v142[0] = *(v7 + 88);
    *(v142 + 9) = *(v7 + 97);
    v76 = (v7 + 72);
    while (1)
    {
      v77 = *v16;
      if (*v14)
      {
        if (((*v76)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v77)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v141);
      }

      v76 = (v77 + 16);
      v14 = (v77 + 28);
      v16 = (v77 + 48);
      v12 = v77;
    }

    if (!*v12)
    {
      goto LABEL_125;
    }

    v78 = *(*(*v12 + 24 * **v76) + 112);
    if (v78)
    {
      v79 = *(*(v78 + 32) + 8);
      v80 = *(v79 + 16);
      v81 = v80 + 1;
      v82 = (v79 + 48 * v80 - 16);
      while (v81-- > 1)
      {
        if (v74)
        {
          goto LABEL_100;
        }

        if (*(v70 + 116) <= v73)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v84 = *(v70 + 104);
        if (!v84)
        {
          goto LABEL_101;
        }

        v71 = *v82;
        v85 = *(*(v84 + 8 * v73) + 8);
        if (v71 >= *(v85 + 44))
        {
          goto LABEL_85;
        }

        v86 = *(v85 + 32);
        if (!v86)
        {
          goto LABEL_102;
        }

        v87 = v86 + (v71 << 7);
        v90 = *(v87 + 8);
        v89 = v87 + 8;
        v88 = v90;
        if (!*(v89 + 24))
        {
          goto LABEL_86;
        }

        if (*(v89 + 16))
        {
          goto LABEL_104;
        }

        if (!v88)
        {
          goto LABEL_103;
        }

        v82 -= 12;
        if (*v88 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v7[48])
  {
    goto LABEL_117;
  }

  v91 = *v7;
  if (v91 >= *(v70 + 116))
  {
    goto LABEL_95;
  }

  v92 = *(v70 + 104);
  if (!v92)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v93 = *(*(v92 + 8 * v91) + 8);
  v94 = *(v93 + 44);
  if (v71 >= v94)
  {
    goto LABEL_96;
  }

  v95 = *(v93 + 32);
  if (v95)
  {
    if (v60 < v94)
    {
      v96 = (v95 + (v71 << 7));
      v97 = (v95 + (v60 << 7));
      v98 = *v97;
      v99 = v96[31];
      if (v99 == v96[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v99);
      }

      v100 = *(v96 + 14);
      if (!v100)
      {
        goto LABEL_120;
      }

      v101 = v96[31];
      v102 = v100 + 8 * v101;
      *v102 = -24064;
      *(v102 + 4) = v98;
      if (v101 != -1)
      {
        v96[31] = v101 + 1;
        v103 = *v96;
        v104 = v97[31];
        if (v104 == v97[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v104);
        }

        v105 = *(v97 + 14);
        if (!v105)
        {
          goto LABEL_121;
        }

        v106 = v97[31];
        v107 = v105 + 8 * v106;
        *v107 = 25088;
        *(v107 + 4) = v103;
        if (v106 != -1)
        {
          v97[31] = v106 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v60);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
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
}

void specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(uint64_t a1, char a2)
{
  if (v2[48])
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v3 = v2;
  v4 = *(v2 + 22);
  v5 = *v2;
  if (v5 >= *(v4 + 116))
  {
LABEL_87:
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
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v7 = *(*(*(v6 + 8 * v5) + 8) + 44);
  v8 = v2 + 56;
  v9 = *(v2 + 72);
  v137[0] = *(v2 + 56);
  v137[1] = v9;
  v138[0] = *(v2 + 88);
  v10 = v2 + 84;
  v11 = v2 + 88;
  v12 = (v3 + 104);
  *(v138 + 9) = *(v3 + 97);
  v13 = (v3 + 56);
  v14 = (v3 + 72);
  v15 = v3 + 84;
  v16 = (v3 + 104);
  while (1)
  {
    v17 = *v16;
    if (*v15)
    {
      v18 = *v14;
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v137);
    }

    v14 = (v17 + 16);
    v15 = (v17 + 28);
    v16 = (v17 + 48);
    v13 = v17;
  }

  v19 = *v13;
  if (!v19)
  {
    goto LABEL_123;
  }

  v20 = *(*(v19 + 24 * *v18) + 112);
  if (!v20)
  {
    goto LABEL_107;
  }

  v21 = *(v3 + 20);
  v105 = v3[168];
  v106 = **(v20 + 32);
  v104 = *(v3 + 43);
  v22 = *(v3 + 72);
  v135[0] = *v8;
  v135[1] = v22;
  v136[0] = *(v3 + 88);
  v23 = v3 + 100;
  v24 = *(v3 + 29);
  v25 = v3 + 56;
  v26 = (v3 + 104);
  *(v136 + 9) = *(v3 + 97);
  v112 = v4;
  v107 = v5;
  while (1)
  {
    v27 = *v26;
    if (v24 < *v23)
    {
      v28 = (*v11 + 8 * v24);
      if ((v28[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v24, 0, v135);
    }

    v11 = (v27 + 32);
    v23 = (v27 + 44);
    v26 = (v27 + 48);
    v25 = v27;
  }

  if (!*v25)
  {
    goto LABEL_124;
  }

  v29 = v7;
  v30 = *v25 + 24 * *v28;
  v31 = *(*v30 + 56);
  v32 = *(*v30 + 64);
  *(&v126 + 1) = 0;
  *&v127 = 0;
  WORD4(v127) = 257;
  LODWORD(v128) = 0;
  HIDWORD(v127) = 0;
  *(&v128 + 1) = 0;
  LOWORD(v129) = 0;
  *(&v129 + 1) = -1;
  *&v131[8] = xmmword_26C32E070;
  *&v131[24] = 0;
  *&v132 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV8RelativeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v132 + 1) = v33;
  LODWORD(v126) = v7;
  specialized HeterogeneousBuffer.insert<A>(_:)();
  specialized HeterogeneousBuffer.insert<A>(_:)(a1);
  DWORD1(v128) = v106;
  *(&v130 + 4) = v21;
  BYTE12(v130) = v105;
  *v131 = v104;
  if ((v32 & 1) == 0)
  {
    *&v131[8] = v31;
  }

  if (v107 >= *(v4 + 116))
  {
    goto LABEL_88;
  }

  v34 = *(v4 + 104);
  if (!v34)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v35 = *(*(v34 + 8 * v107) + 8);
  v36 = *(v35 + 44);
  if (v36 == *(v35 + 40))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v36);
  }

  v37 = *(v35 + 32);
  if (!v37)
  {
    goto LABEL_109;
  }

  v38 = *(v35 + 44);
  v39 = (v37 + (v38 << 7));
  LOBYTE(v130) = a2 & 1;
  v39[4] = v130;
  v39[5] = *v131;
  v39[6] = *&v131[16];
  v39[7] = v132;
  *v39 = v126;
  v39[1] = v127;
  v39[2] = v128;
  v39[3] = v129;
  if (v38 == -1)
  {
    goto LABEL_89;
  }

  *(v35 + 44) = v38 + 1;
  if (v3[48])
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v40 = *v3;
  if (v40 >= *(v4 + 116))
  {
    goto LABEL_90;
  }

  v41 = *(v4 + 104);
  if (!v41)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v42 = *(*(v41 + 8 * v40) + 8);
  if (v29 >= *(v42 + 44))
  {
    goto LABEL_91;
  }

  v109 = *(v4 + 116);
  v43 = *(v42 + 32);
  if (!v43)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v111 = v29;
  v44 = v43 + (v29 << 7);
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v48 = *(v44 + 25);
  v51 = v44 + 28;
  v49 = *(v44 + 28);
  v50 = *(v51 + 4);
  v52 = v48 == 0;
  v53 = 256;
  if (v52)
  {
    v53 = 0;
  }

  v54 = v53 | (v49 << 32);
  v55 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v45, v46, v53 | v47, v50);
  if (v55)
  {
    v56 = v111;
  }

  else
  {
    v55 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v45, v46, v54 | v47, v50, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    v56 = v111;
    if (!v55)
    {
      goto LABEL_48;
    }
  }

  if (v3[48])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v57 = *v3;
  if (v57 >= v109)
  {
    goto LABEL_92;
  }

  v58 = *v55;
  v59 = *(*(v41 + 8 * v57) + 8);
  v60 = *(v59 + 60);
  if (v60 == *(v59 + 56))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v60);
  }

  v61 = *(v59 + 48);
  if (!v61)
  {
    goto LABEL_114;
  }

  v62 = *(v59 + 60);
  v63 = (v61 + 8 * v62);
  *v63 = v58;
  v63[1] = v56;
  if (v62 == -1)
  {
    goto LABEL_93;
  }

  *(v59 + 60) = v62 + 1;
  if (v3[48])
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v64 = *v3;
  if (v64 >= *(v112 + 116))
  {
    goto LABEL_94;
  }

  v65 = *(v112 + 104);
  if (!v65)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  *(*(*(v65 + 8 * v64) + 8) + 64) = 0;
LABEL_48:
  v121 = *(v3 + 8);
  v122 = *(v3 + 9);
  v123 = *(v3 + 10);
  v117 = *(v3 + 4);
  v118 = *(v3 + 5);
  v119 = *(v3 + 6);
  v120 = *(v3 + 7);
  v113 = *v3;
  v114 = *(v3 + 1);
  v115 = *(v3 + 2);
  v116 = *(v3 + 3);
  v125 = v3[192];
  v66 = *(v3 + 22);
  v124 = *(v3 + 23);
  Interpreter.Iterator.updatingStack.getter();
  if (v68)
  {
    v69 = *v3;
    v70 = v3[48];
    v71 = *(v3 + 72);
    v133[0] = *v8;
    v133[1] = v71;
    v134[0] = *(v3 + 88);
    *(v134 + 9) = *(v3 + 97);
    v72 = (v3 + 72);
    while (1)
    {
      v73 = *v12;
      if (*v10)
      {
        if (((*v72)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v73)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v133);
      }

      v72 = (v73 + 16);
      v10 = (v73 + 28);
      v12 = (v73 + 48);
      v8 = v73;
    }

    if (!*v8)
    {
      goto LABEL_125;
    }

    v74 = *(*(*v8 + 24 * **v72) + 112);
    if (v74)
    {
      v75 = *(*(v74 + 32) + 8);
      v76 = *(v75 + 16);
      v77 = v76 + 1;
      v78 = (v75 + 48 * v76 - 16);
      while (v77-- > 1)
      {
        if (v70)
        {
          goto LABEL_100;
        }

        if (*(v66 + 116) <= v69)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v80 = *(v66 + 104);
        if (!v80)
        {
          goto LABEL_101;
        }

        v67 = *v78;
        v81 = *(*(v80 + 8 * v69) + 8);
        if (v67 >= *(v81 + 44))
        {
          goto LABEL_85;
        }

        v82 = *(v81 + 32);
        if (!v82)
        {
          goto LABEL_102;
        }

        v83 = v82 + (v67 << 7);
        v86 = *(v83 + 8);
        v85 = v83 + 8;
        v84 = v86;
        if (!*(v85 + 24))
        {
          goto LABEL_86;
        }

        if (*(v85 + 16))
        {
          goto LABEL_104;
        }

        if (!v84)
        {
          goto LABEL_103;
        }

        v78 -= 12;
        if (*v84 == &type metadata for Event.Transaction)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_122;
  }

LABEL_68:
  if (v3[48])
  {
    goto LABEL_117;
  }

  v87 = *v3;
  if (v87 >= *(v66 + 116))
  {
    goto LABEL_95;
  }

  v88 = *(v66 + 104);
  if (!v88)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v89 = *(*(v88 + 8 * v87) + 8);
  v90 = *(v89 + 44);
  if (v67 >= v90)
  {
    goto LABEL_96;
  }

  v91 = *(v89 + 32);
  if (v91)
  {
    if (v56 < v90)
    {
      v92 = (v91 + (v67 << 7));
      v93 = (v91 + (v56 << 7));
      v94 = *v93;
      v95 = v92[31];
      if (v95 == v92[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v95);
      }

      v96 = *(v92 + 14);
      if (!v96)
      {
        goto LABEL_120;
      }

      v97 = v92[31];
      v98 = v96 + 8 * v97;
      *v98 = -24064;
      *(v98 + 4) = v94;
      if (v97 != -1)
      {
        v92[31] = v97 + 1;
        v99 = *v92;
        v100 = v93[31];
        if (v100 == v93[30])
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v100);
        }

        v101 = *(v93 + 14);
        if (!v101)
        {
          goto LABEL_121;
        }

        v102 = v93[31];
        v103 = v101 + 8 * v102;
        *v103 = 25088;
        *(v103 + 4) = v99;
        if (v102 != -1)
        {
          v93[31] = v102 + 1;
LABEL_83:
          Interpreter.Iterator.relate(prior:)(v56);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
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
}

uint64_t static Tri.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  v10 = type metadata accessor for Tri();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v31 - v18;
  v34 = v11;
  v35 = v17;
  v20 = *(v17 + 48);
  v21 = *(v11 + 16);
  v21(&v31 - v18, a1, v10);
  v21(&v19[v20], a2, v10);
  v22 = *(v6 + 48);
  v23 = v22(v19, 2, a3);
  if (!v23)
  {
    v31 = v6;
    v21(v36, v19, v10);
    if (!v22(&v19[v20], 2, a3))
    {
      v26 = v31;
      v27 = v32;
      (*(v31 + 32))(v32, &v19[v20], a3);
      v28 = *(v33 + 8);
      v29 = v36;
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v26 + 8);
      v30(v27, a3);
      v30(v29, a3);
      v15 = v34;
      goto LABEL_10;
    }

    (*(v31 + 8))(v36, a3);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v19[v20], 2, a3) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v19[v20], 2, a3) != 2)
  {
LABEL_9:
    v24 = 0;
    v10 = v35;
    goto LABEL_10;
  }

  v24 = 1;
  v15 = v34;
LABEL_10:
  (*(v15 + 8))(v19, v10);
  return v24 & 1;
}

uint64_t Tri.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  v15 = (*(v4 + 48))(v12, 2, v3);
  if (v15)
  {
    return MEMORY[0x26D69DBC0](v15 != 1);
  }

  (*(v4 + 32))(v8, v12, v3);
  MEMORY[0x26D69DBC0](2);
  v16 = *(a2 + 24);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v8, v3);
}

Swift::Int Tri.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  Tri.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Tri<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Tri.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

void PType.Parameter.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(HIDWORD(a4));
}

Swift::Int PType.Parameter.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIDWORD(a3));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Parameter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PType.Parameter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  if (v0[1])
  {
    v3 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Parameter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PType.Kind@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PType.Kind.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PType.Flags@<X0>(_DWORD *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

void PType.IsA.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 32);
  if (v5 <= 1)
  {
    if (*(v2 + 32))
    {
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      v11 = *(v2 + 8);
      MEMORY[0x26D69DBC0](1);
      String.hash(into:)();
      MEMORY[0x26D69DBC0](*(v10 + 16));
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = (v10 + 32);
        do
        {
          v14 = *v13++;
          Hasher._combine(_:)(v14);
          --v12;
        }

        while (v12);
      }

      MEMORY[0x26D69DBC0](*(v9 + 16));
      v15 = *(v9 + 16);
      if (v15)
      {
        v16 = (v9 + 32);
        do
        {
          v17 = *v16++;
          Hasher._combine(_:)(v17);
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      MEMORY[0x26D69DBC0](0);
      MEMORY[0x26D69DBC0](v4 & 1);
    }
  }

  else if (v5 == 2)
  {
    MEMORY[0x26D69DBC0](2);

    specialized Array<A>.hash(into:)(a1, v4);
  }

  else if (v5 == 3)
  {
    MEMORY[0x26D69DBC0](3);
    MEMORY[0x26D69DBC0](*(v4 + 16));
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = (v4 + 32);
      do
      {
        v8 = *v7++;
        Hasher._combine(_:)(v8);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    MEMORY[0x26D69DBC0](4);
    Hasher._combine(_:)(v4);
    Hasher._combine(_:)(HIDWORD(v4));
  }
}

Swift::Int PType.IsA.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.IsA()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.IsA()
{
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t PType.Field.name.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 12) = HIDWORD(a2);
  return result;
}

BOOL static PType.Field.== infix(_:_:)(int a1, unint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1 == -1 && a5 == -1)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  result = 0;
  if (a1 == a5 && !((a6 ^ a2) >> 32) && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

void PType.Field.hash(into:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  v8 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8);
  }

  Hasher._combine(_:)(HIDWORD(a3));
  MEMORY[0x26D69DBC0](a4);
  Hasher._combine(_:)(a5);
}

Swift::Int PType.Field.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIDWORD(a1));
  }

  Hasher._combine(_:)(HIDWORD(a2));
  MEMORY[0x26D69DBC0](a3);
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PType.Field(uint64_t a1, int *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(a2 + 2);
  if (*a1 != -1 || v3 != -1)
  {
    if (*a1 != v3)
    {
      return 0;
    }

    if (*(a1 + 12) != a2[3] || v2 != v4)
    {
      return 0;
    }

    return *(a1 + 24) == a2[6];
  }

  if (v2 == v4)
  {
    return *(a1 + 24) == a2[6];
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Field()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  MEMORY[0x26D69DBC0](v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PType.Field()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  Hasher._combine(_:)(*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  MEMORY[0x26D69DBC0](v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Field()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  MEMORY[0x26D69DBC0](v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void PType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 32);
  PType.IsA.hash(into:)(a1);
}

uint64_t PType.Metadata.ntdPointer.getter()
{
  result = *v0;
  if (!*v0)
  {
    __break(1u);
  }

  return result;
}

uint64_t PType.Metadata.fields.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t PType.Metadata.fields.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

void *one-time initialization function for none()
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5PTypeV5FieldV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&static PType.Metadata.none = -1;
  *(&static PType.Metadata.none + 1) = result;
  qword_280481CC8 = v1;
  qword_280481CD0 = 0x7FFFFFFFFFFFFFFFLL;
  dword_280481CD8 = 0;
  byte_280481CDC = 9;
  return result;
}

double static PType.Metadata.none.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_280481CD0;
  v2 = dword_280481CD8;
  v3 = byte_280481CDC;
  *a1 = static PType.Metadata.none;
  result = *&qword_280481CC8;
  *(a1 + 16) = qword_280481CC8;
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 36) = v3;
  return result;
}

Swift::Void __swiftcall PType.Metadata.deallocate()()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 8) = 0;
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance PType.Metadata()
{
  result = *(v0 + 8);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 8) = 0;
  }

  return result;
}

uint64_t PType.forEachField<A>(within:userData:_:revisitor:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a6;
  v27 = a2;
  v28 = a4;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IterativePair();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = (&v27 - v19);
  v21 = a1[5];
  v39[4] = a1[4];
  v39[5] = v21;
  v39[6] = a1[6];
  v22 = a1[1];
  v39[0] = *a1;
  v39[1] = v22;
  v23 = a1[3];
  v39[2] = a1[2];
  v39[3] = v23;
  v24 = *(v7 + 112);
  v25 = *(v7 + 116);
  v32[2] = a7;
  v32[3] = a3;
  v32[4] = v28;
  v32[5] = v39;
  v31[2] = a7;
  v31[3] = v29;
  v31[4] = v30;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v34 = 0;
    v35 = 1;
    v36 = -1;
    v37 = 0;
    v38 = v24;
    (*(v11 + 16))(v14, v27, a7);
    v33 = 0;
    IterativePair.init(first:second:)(v14, &v33, a7, MEMORY[0x277D83B88], v20);
    *&v26 = &type metadata for PType.Field;
    *(&v26 + 1) = v15;
    static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for closure #1 in PType.forEachField<A>(within:userData:_:revisitor:), v32, partial apply for closure #2 in PType.forEachField<A>(within:userData:_:revisitor:), v31, &v34, v20, 0, 0, 0, v26);
    return (*(v16 + 8))(v20, v15);
  }

  return result;
}

uint64_t specialized closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, unint64_t), uint64_t a8, uint64_t a9)
{
  v9 = *a5 + a3;
  if (__OFADD__(*a5, a3))
  {
    goto LABEL_24;
  }

  v12 = a6[8];
  v13 = *a5 + a3;
  result = a7(result, a2 & 0xFFFFFFFF00000001);
  if ((result & 1) == 0)
  {
    return result;
  }

  v14 = *(a9 + 32);
  if (*(v14 + 16) <= a4)
  {
    goto LABEL_25;
  }

  v15 = *(v14 + 4 * a4 + 32);
  if (v15 >= *(a9 + 12))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*a9)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  result = specialized Sequence.reversed()(*(*a9 + 120 * v15 + 72), *(*a9 + 120 * v15 + 80));
  v16 = *(result + 16);
  if (!v16)
  {
  }

  v32 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = a6;
  v17 = a6[10];
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = *a6;
  v20 = (result + 56);
  v31 = v9;
  while (1)
  {
    v21 = *(v20 - 3);
    v22 = *(v20 - 3);
    v23 = *(v20 - 1);
    v24 = *v20;
    v25 = *(v20 - 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
    }

    v27 = *(v19 + 16);
    v26 = *(v19 + 24);
    if (v27 >= v26 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 16) = v27 + 1;
    v28 = v19 + 48 * v27;
    *(v28 + 32) = v21;
    *(v28 + 40) = v25;
    *(v28 + 41) = v33;
    *(v28 + 43) = v34;
    *(v28 + 44) = v22;
    *(v28 + 48) = v23;
    *(v28 + 56) = v24;
    *(v28 + 64) = v31;
    *(v28 + 72) = v32;
    if (!--v16)
    {
      break;
    }

    v20 += 8;
    if (__OFADD__(v18++, 1))
    {
      goto LABEL_23;
    }
  }

  *v30 = v19;
  v30[10] = v18;
  return result;
}

uint64_t closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v64 = a5;
  v65 = a4;
  v66 = a3;
  v67 = a2;
  v9 = type metadata accessor for IterativePair();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(*(TupleTypeMetadata3 - 8) + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v14 = &v58 - v13;
  v61 = *(v9 - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v71 = &v58 - v17;
  v18 = *(a7 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v59 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = *a1;
  v62 = v18;
  v63 = v24;
  v25 = *(a1 + 8);
  v26 = *(a1 + 3);
  v27 = a1[2];
  v28 = *(a1 + 6);
  v68 = a7;
  v69 = v28;
  v29 = v67;
  v58 = *(v18 + 16);
  result = v58(&v58 - v22, v67, a7);
  v70 = v9;
  v31 = *(v29 + *(v9 + 36));
  if (__OFADD__(v31, v27))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v66;
  v33 = *(v66 + 64);
  v73 = v25;
  v34 = v27;
  v35 = v31 + v27;
  result = v65(v63, v25 | (v26 << 32), v34, v69);
  if ((result & 1) == 0)
  {
    return (*(v62 + 8))(v23, v68);
  }

  v36 = *(v60 + 32);
  v37 = v68;
  if (*(v36 + 16) <= v69)
  {
    goto LABEL_17;
  }

  v38 = *(v36 + 4 * v69 + 32);
  if (v38 >= *(v60 + 12))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v69 = v33;
  if (!*v60)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v39 = v32;
  v40 = *v60 + 120 * v38;
  v41 = *(v40 + 72);
  v42 = *(v40 + 80);
  v43 = v59;
  v58(v59, v23, v68);
  v72 = v35;
  v44 = v71;
  IterativePair.init(first:second:)(v43, &v72, v37, MEMORY[0x277D83B88], v71);
  result = specialized Sequence.reversed()(v41, v42);
  v45 = result;
  v46 = *(result + 16);
  if (v46)
  {
    v47 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v69 = v23;
    v48 = 0;
    v49 = v39;
    v50 = *(v39 + 80);
    v51 = (v61 + 16);
    while (v50 != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++v50;
      v52 = *(v45 + v48 + 56);
      v53 = *(v45 + v48 + 48);
      v54 = *(v45 + v48 + 44);
      v55 = *(v45 + v48 + 40);
      v56 = *(TupleTypeMetadata3 + 48);
      v57 = *(TupleTypeMetadata3 + 64);
      *v14 = *(v45 + v48 + 32);
      v14[8] = v55;
      *(v14 + 3) = v54;
      *(v14 + 2) = v53;
      *(v14 + 6) = v52;
      (*v51)(&v14[v56], v71, v70);
      *&v14[v57] = v47;
      type metadata accessor for Array();
      result = Array.append(_:)();
      v48 += 32;
      if (!--v46)
      {

        (*(v61 + 8))(v71, v70);
        result = (*(v62 + 8))(v69, v68);
        *(v49 + 80) = v50;
        return result;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  (*(v61 + 8))(v44, v70);
  return (*(v62 + 8))(v23, v37);
}

__n128 PType.metadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 100);
  result = *(v1 + 64);
  v5 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 36) = v3;
  *(a1 + 32) = v2;
  return result;
}

uint64_t closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t, void, void, uint64_t))
{
  if (a4)
  {
    v7 = *(result + 24);
    v8 = *(result + 16);
    v9 = *(result + 8);
    v10 = *result;
    v11 = *(result + 12);
    v12 = type metadata accessor for IterativePair();
    return a4(v10, v9 | (v11 << 32), v8, v7, *(a2 + *(v12 + 36)), *(a3 + 64), a2);
  }

  return result;
}

uint64_t PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[5];
  v19[4] = a1[4];
  v19[5] = v12;
  v19[6] = a1[6];
  v13 = a1[1];
  v19[0] = *a1;
  v19[1] = v13;
  v14 = a1[3];
  v19[2] = a1[2];
  v19[3] = v14;
  v17[2] = a7;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = &v18;
  v17[6] = v19;
  v18 = 0;
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a5;
  v15[4] = a6;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5);
  PType.forEachField<A>(within:userData:_:revisitor:)(a1, a2, partial apply for closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:), v17, partial apply for closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:), v15, a7);
}

uint64_t specialized closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a10, void *a11, uint64_t a12)
{
  v12 = a4;
  result = a9(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a5, a6, *a11, a7, a8);
  v14 = result;
  if (result)
  {
    if (!__OFADD__(*a11, 1))
    {
      ++*a11;
      return v14 & 1;
    }

    __break(1u);
    goto LABEL_12;
  }

  v15 = *(a12 + 32);
  if (*(v15 + 16) <= v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v15 + 4 * v12 + 32);
  if (v16 >= *(a12 + 12))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!*a12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = *a12 + 120 * v16;
  v18 = *v17;
  v19 = *(v17 + 16);
  v20 = *(v17 + 48);
  v38[2] = *(v17 + 32);
  v38[3] = v20;
  v38[0] = v18;
  v38[1] = v19;
  v21 = *(v17 + 64);
  v22 = *(v17 + 80);
  v23 = *(v17 + 96);
  *(v39 + 14) = *(v17 + 110);
  v38[5] = v22;
  v39[0] = v23;
  v38[4] = v21;
  v24 = MEMORY[0x28223BE20](result);
  v35[8] = a11;
  v37 = 0;
  MEMORY[0x28223BE20](v24);
  v35[2] = partial apply for closure #1 in closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:);
  v35[3] = v25;
  v35[4] = &v37;
  v35[5] = a12;
  v26 = swift_allocObject();
  v27 = MEMORY[0x28223BE20](v26);
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v34[2] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v34[3] = v35;
  v34[4] = a12;
  result = MEMORY[0x28223BE20](v27);
  v33[2] = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v33[3] = result;
  if ((BYTE4(v39[1]) & 1) == 0)
  {
    v28 = v39[1];
    v29 = swift_allocObject();
    *(v29 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v29 + 24) = v34;
    v30 = swift_allocObject();
    *(v30 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v30 + 24) = v33;
    outlined init with copy of PType(v38, v36);
    v36[0] = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v30, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v29, 0, 0, 0, 0, 1, -1, 0, v28, 0);
    outlined destroy of PType(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v32 = swift_isEscapingClosureAtFileLocation();

      if ((v32 & 1) == 0)
      {
        return v14 & 1;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a10, void *a11, uint64_t a12)
{
  v12 = a4;
  result = a9(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a5, a6, *a11, a7, a8);
  v14 = result;
  if (result)
  {
    if (!__OFADD__(*a11, 1))
    {
      ++*a11;
      return v14 & 1;
    }

    __break(1u);
    goto LABEL_12;
  }

  v15 = *(a12 + 32);
  if (*(v15 + 16) <= v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v15 + 4 * v12 + 32);
  if (v16 >= *(a12 + 12))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!*a12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = *a12 + 120 * v16;
  v18 = *v17;
  v19 = *(v17 + 16);
  v20 = *(v17 + 48);
  v38[2] = *(v17 + 32);
  v38[3] = v20;
  v38[0] = v18;
  v38[1] = v19;
  v21 = *(v17 + 64);
  v22 = *(v17 + 80);
  v23 = *(v17 + 96);
  *(v39 + 14) = *(v17 + 110);
  v38[5] = v22;
  v39[0] = v23;
  v38[4] = v21;
  v24 = MEMORY[0x28223BE20](result);
  v35[8] = a11;
  v37 = 0;
  MEMORY[0x28223BE20](v24);
  v35[2] = closure #1 in closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)partial apply;
  v35[3] = v25;
  v35[4] = &v37;
  v35[5] = a12;
  v26 = swift_allocObject();
  v27 = MEMORY[0x28223BE20](v26);
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v34[2] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v34[3] = v35;
  v34[4] = a12;
  result = MEMORY[0x28223BE20](v27);
  v33[2] = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v33[3] = result;
  if ((BYTE4(v39[1]) & 1) == 0)
  {
    v28 = v39[1];
    v29 = swift_allocObject();
    *(v29 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v29 + 24) = v34;
    v30 = swift_allocObject();
    *(v30 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v30 + 24) = v33;
    outlined init with copy of PType(v38, v36);
    v36[0] = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v30, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v29, 0, 0, 0, 0, 1, -1, 0, v28, 0);
    outlined destroy of PType(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v32 = swift_isEscapingClosureAtFileLocation();

      if ((v32 & 1) == 0)
      {
        return v14 & 1;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t PType.linearizedField(where:within:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = a3[5];
  v36[4] = a3[4];
  v36[5] = v4;
  v36[6] = a3[6];
  v5 = a3[1];
  v36[0] = *a3;
  v36[1] = v5;
  v6 = a3[3];
  v36[2] = a3[2];
  v36[3] = v6;
  v7 = *(v3 + 112);
  v8 = *(v3 + 116);
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v35 = 1;
  v27 = a1;
  v28 = a2;
  v29 = v33;
  v30 = v36;
  v32 = 0;
  v22 = partial apply for closure #1 in PType.linearizedField(where:within:);
  v23 = &v26;
  v24 = &v32;
  v25 = v36;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  v18 = partial apply for specialized closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:);
  v19 = &v21;
  v20 = v36;
  v15 = partial apply for specialized closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:);
  v16 = result;
  if ((v8 & 1) == 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for specialized closure #1 in PType.forEachField<A>(within:userData:_:revisitor:);
    *(v10 + 24) = &v17;
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for specialized closure #2 in PType.forEachField<A>(within:userData:_:revisitor:);
    *(v11 + 24) = &v14;
    v31 = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> (), v11, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v10, 0, 0, 0, 0, 1, -1, 0, v7, 0);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v13 = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        return v33[0];
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PType.linearizedField(named:within:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = HIDWORD(a2);
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 && v13 == 0xFFFFFFFF)
  {
    v18 = 0;
    return v18 & 1;
  }

  v82 = a2;
  v80 = a7;
  v19 = (a6 + 40);
  v20 = *(a6 + 56);
  v103[0] = *(a6 + 40);
  v103[1] = v20;
  v104[0] = *(a6 + 72);
  v21 = (a6 + 72);
  v22 = (a6 + 84);
  v23 = (a6 + 88);
  v83 = a6;
  v84 = a1;
  v24 = 8 * a1;
  *(v104 + 9) = *(a6 + 81);
  v25 = (a6 + 40);
  v26 = (a6 + 72);
  v27 = (a6 + 84);
  v28 = (a6 + 88);
  v81 = v17;
  while (1)
  {
    v29 = *v28;
    if (a1 < *v27)
    {
      v30 = (*v26 + v24);
      if ((v30[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v29)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v84, 0, v103);
    }

    v26 = (v29 + 32);
    v27 = (v29 + 44);
    v28 = (v29 + 48);
    v25 = v29;
  }

  v31 = *v25;
  if (!v31)
  {
    goto LABEL_67;
  }

  v32 = (v31 + 24 * *v30);
  v33 = *v32;
  v34 = *(*v32 + 196);
  v35 = 0uLL;
  v79 = a8;
  if (!v34)
  {
LABEL_41:
    v53 = 0;
    v54 = 0;
    v39 = v83;
    v49 = v84;
    v50 = v82;
    goto LABEL_42;
  }

  v36 = *(v33 + 184);
  if (!v36)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v37 = v34 - 1;
  if (v13 <= *(v36 + 32 * (v34 - 1)))
  {
    v42 = v34 >> 1;
    v43 = *(v36 + 32 * (v34 >> 1));
    if (v34 != 1 && v43 != v13)
    {
      v45 = *(v33 + 192) | (v34 << 32);
      v78 = *(v33 + 184);
      if (v13 >= v43)
      {
        v47 = v42 + 1;
        v46 = v13;
        v42 = v34;
      }

      else
      {
        v46 = v13;
        v47 = 0;
      }

      v55 = specialized Collection<>.binarySearch(for:)(v46, v47, v42, v36, v45);
      if (v56)
      {
        v42 = v34 - 1;
      }

      else
      {
        v42 = v55;
      }

      v35 = 0uLL;
      v36 = v78;
    }

    v57 = (v36 + 32 * v42);
    v37 = v42;
    while (v42 < v34)
    {
      if (*v57 <= v13)
      {
        goto LABEL_14;
      }

      if (!v37)
      {
        goto LABEL_41;
      }

      --v37;
      v57 -= 8;
      if (v37 > v34)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_14:
  v38 = v19[1];
  v101[0] = *v19;
  v101[1] = v38;
  v102[0] = v19[2];
  *(v102 + 9) = *(v19 + 41);
  v39 = v83;
  while (1)
  {
    v40 = *v23;
    if (a1 < *v22)
    {
      v41 = (*v21 + v24);
      if ((v41[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v40)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v84, 0, v101);
    }

    v21 = (v40 + 32);
    v22 = (v40 + 44);
    v23 = (v40 + 48);
    v19 = v40;
  }

  if (!*v19)
  {
    goto LABEL_69;
  }

  v48 = *v19 + 24 * *v41;
  v49 = v84;
  v50 = v82;
  if (v37 >= *(*v48 + 196))
  {
    goto LABEL_61;
  }

  v51 = *(*v48 + 184);
  if (!v51)
  {
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

  v52 = (v51 + 32 * v37);
  v53 = *v52;
  v54 = *(v52 + 1);
  v35 = *(v52 + 1);
LABEL_42:
  v92 = v50 & 1;
  *&v98 = v49;
  *(&v98 + 1) = v50 & 0xFFFFFFFF00000001;
  *&v99 = v53;
  *(&v99 + 1) = v54;
  v100[0] = v35;
  LOBYTE(v100[1]) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v39, &v98, 0, 0, v87);
  if (Interpreter.Iterator.read()())
  {
    v98 = v88;
    v99 = v89;
    v100[0] = *v90;
    *(v100 + 9) = *&v90[9];
    v58 = v88;
    v59 = *v90;
    v60 = *&v90[16];
    if (v91 >= *&v90[12])
    {
      goto LABEL_45;
    }

    while (1)
    {
      v61 = (v59 + 8 * v91);
      if ((v61[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_45:
        if (!v60)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v91, 0, &v98);
        }

        v58 = *v60;
        v59 = v60[4];
        v62 = *(v60 + 11);
        v60 = v60[6];
      }

      while (v91 >= v62);
    }

    if (!v58)
    {
      goto LABEL_68;
    }

    v63 = (v58 + 24 * *v61);
    v64 = *v63;
    v65 = *(*v63 + 96);
    if (v65 != 2)
    {
      v66 = *(v64 + 104);
      v67 = *(v64 + 88);
      v93 = *(v64 + 72);
      v94 = v67;
      v95 = v65 & 0x101;
      v96 = HIDWORD(v65);
      v97 = v66 & 1;
      v68 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v70 & 1) == 0)
      {
        v71 = v69 - v68;
        if (!v68)
        {
          v71 = 0;
        }

        v85 = v68;
        v86 = v71;
        static String.Encoding.utf8.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        v72 = String.init<A>(bytes:encoding:)();
        if (v73)
        {
          v74 = v72;
          v75 = v73;
          specialized EvolutionTable.deallocate()();
          if (v74 == v80 && v75 == v79)
          {

            v18 = 1;
          }

          else
          {
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return v18 & 1;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_70:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in PType.linearizedField(where:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a4;
  result = a10(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a7);
  if ((result & 1) == 0)
  {
    return 1;
  }

  v16 = *(a13 + 32);
  if (*(v16 + 16) <= v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = *(v16 + 4 * v14 + 32);
  if (v17 >= *(a13 + 12))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*a13)
  {
    v18 = *(*a13 + 120 * v17 + 88);
    v19 = __OFADD__(a5, v18);
    v20 = a5 + v18;
    if (!v19)
    {
      if (v20 >= a5)
      {
        *a12 = a5;
        *(a12 + 8) = v20;
        *(a12 + 16) = v14;
        *(a12 + 20) = 0;
        return 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PType.forEachLinearizedField(atOffset:within:do:)(int a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[5];
  v33[4] = a2[4];
  v33[5] = v5;
  v33[6] = a2[6];
  v6 = a2[1];
  v33[0] = *a2;
  v33[1] = v6;
  v7 = a2[3];
  v33[2] = a2[2];
  v33[3] = v7;
  v8 = *(v4 + 112);
  v9 = *(v4 + 116);
  v28 = a1;
  v29 = a3;
  v30 = a4;
  v32 = 0;
  v23 = partial apply for closure #1 in PType.forEachLinearizedField(atOffset:within:do:);
  v24 = &v27;
  v25 = &v32;
  v26 = v33;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  v19 = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v20 = &v22;
  v21 = v33;
  v16 = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v17 = result;
  if (v9)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
  *(v11 + 24) = &v18;
  v12 = swift_allocObject();
  *(v12 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
  *(v12 + 24) = &v15;
  v31 = 1;
  specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v12, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v11, 0, 0, 0, 0, 1, -1, 0, v8, 0);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

double PType.linearizedField(offset:nested:within:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 == 0;
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v15 = 1;
  v11[2] = &v16;
  v11[3] = v6;
  v11[4] = &v12;
  PType.forEachLinearizedField(atOffset:within:do:)(a1, a3, partial apply for closure #1 in PType.linearizedField(offset:nested:within:), v11);
  v7 = v14;
  v8 = v15;
  result = *&v12;
  v10 = v13;
  *a4 = v12;
  *(a4 + 16) = v10;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  return result;
}

double PType._metadata.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 100);
  *a1 = *(v1 + 64);
  result = *(v1 + 80);
  *(a1 + 16) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  return result;
}

uint64_t PType.typeId.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

uint64_t PType.fields.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

_OWORD *PType.fullName(within:)(_OWORD *result)
{
  v2 = result;
  v3 = result[5];
  v120 = result[4];
  v121 = v3;
  v122 = result[6];
  v4 = result[1];
  v116 = *result;
  v117 = v4;
  v5 = result[3];
  v118 = result[2];
  v119 = v5;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v125 = v1[2];
  v126 = v8;
  v123 = v6;
  v124 = v7;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  *&v129[14] = *(v1 + 110);
  v128 = v10;
  *v129 = v11;
  v127 = v9;
  if (v125 > 1u)
  {
    v12 = v123;
    if (v125 == 2)
    {
      *&v93 = 40;
      *(&v93 + 1) = 0xE100000000000000;
      v18 = swift_allocObject();
      v19 = v2[5];
      v18[5] = v2[4];
      v18[6] = v19;
      v18[7] = v2[6];
      v20 = v2[1];
      v18[1] = *v2;
      v18[2] = v20;
      v21 = v2[3];
      v18[3] = v2[2];
      v18[4] = v21;
      *&v100 = v12;
      *(&v100 + 1) = partial apply for closure #2 in PType.fullName(within:);
      *&v101 = v18;
      outlined init with copy of PType(&v123, &v107);
      outlined init with copy of Interpreter.Storage.Types(&v116, &v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMd, &_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMR);
      lazy protocol witness table accessor for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>();
      v22 = BidirectionalCollection<>.joined(separator:)();
      v24 = v23;
      outlined destroy of PType(&v123);

      MEMORY[0x26D69CDB0](v22, v24);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v93;
    }

    if (v125 == 3)
    {
      v13 = swift_allocObject();
      v14 = v2[5];
      v13[5] = v2[4];
      v13[6] = v14;
      v13[7] = v2[6];
      v15 = v2[1];
      v13[1] = *v2;
      v13[2] = v15;
      v16 = v2[3];
      v13[3] = v2[2];
      v13[4] = v16;
      *&v100 = v12;
      *(&v100 + 1) = partial apply for closure #3 in PType.fullName(within:);
      *&v101 = v13;
      outlined init with copy of PType(&v123, &v107);
      outlined init with copy of Interpreter.Storage.Types(&v116, &v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySays6UInt32VGSSGMd, &_ss15LazyMapSequenceVySays6UInt32VGSSGMR);
      lazy protocol witness table accessor for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>();
      v17 = BidirectionalCollection<>.joined(separator:)();
      outlined destroy of PType(&v123);

      return v17;
    }

    v114 = 0;
    v115 = 0xE000000000000000;
    v25 = HIDWORD(v116);
    if (v123 < HIDWORD(v116))
    {
      v26 = v116;
      if (!v116)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v27 = DWORD1(v123);
      v28 = (v116 + 120 * v123);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[3];
      v88 = v28[2];
      v89 = v31;
      v86 = v29;
      v87 = v30;
      v32 = v28[4];
      v33 = v28[5];
      v34 = v28[6];
      *(v92 + 14) = *(v28 + 110);
      v91 = v33;
      v92[0] = v34;
      v90 = v32;
      v111 = v28[4];
      v112 = v28[5];
      v113[0] = v28[6];
      *(v113 + 14) = *(v28 + 110);
      v107 = *v28;
      v108 = v28[1];
      v109 = v28[2];
      v110 = v28[3];
      outlined init with copy of PType(&v86, &v100);
      v35 = PType.fullName(within:)(v2);
      v37 = v36;
      v97 = v111;
      v98 = v112;
      v99[0] = v113[0];
      *(v99 + 14) = *(v113 + 14);
      v93 = v107;
      v94 = v108;
      v95 = v109;
      v96 = v110;
      outlined destroy of PType(&v93);
      MEMORY[0x26D69CDB0](v35, v37);

      result = MEMORY[0x26D69CDB0](540945696, 0xE400000000000000);
      if (HIDWORD(v12) < v25)
      {
        v38 = (v26 + 120 * v27);
        v39 = *v38;
        v40 = v38[1];
        v41 = v38[3];
        v102 = v38[2];
        v103 = v41;
        v100 = v39;
        v101 = v40;
        v42 = v38[4];
        v43 = v38[5];
        v44 = v38[6];
        *(v106 + 14) = *(v38 + 110);
        v105 = v43;
        v106[0] = v44;
        v104 = v42;
        v45 = v38[5];
        v83 = v38[4];
        v84 = v45;
        v85[0] = v38[6];
        *(v85 + 14) = *(v38 + 110);
        v46 = v38[1];
        v79 = *v38;
        v80 = v46;
        v47 = v38[3];
        v81 = v38[2];
        v82 = v47;
        v78[4] = v120;
        v78[5] = v121;
        v78[6] = v122;
        v78[0] = v116;
        v78[1] = v117;
        v78[2] = v118;
        v78[3] = v119;
        outlined init with copy of PType(&v100, &v107);
        v48 = PType.fullName(within:)(v78);
        v50 = v49;
        v111 = v83;
        v112 = v84;
        v113[0] = v85[0];
        *(v113 + 14) = *(v85 + 14);
        v107 = v79;
        v108 = v80;
        v109 = v81;
        v110 = v82;
        outlined destroy of PType(&v107);
        MEMORY[0x26D69CDB0](v48, v50);

        return v114;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v125)
  {
    return 0xD000000000000014;
  }

  v51 = v124;
  *&v79 = PType.basename(within:)(result);
  *(&v79 + 1) = v52;
  v53 = *(v124 + 16);
  if (v53)
  {
    *&v78[0] = 60;
    *(&v78[0] + 1) = 0xE100000000000000;
    v114 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53, 0);
    if (*(v124 + 16))
    {
      v54 = 0;
      v55 = v116;
      v77 = HIDWORD(v116);
      v56 = v53 - 1;
      v57 = v114;
      while (1)
      {
        v58 = *(v51 + 32 + 4 * v54);
        if (v58 >= v77)
        {
          break;
        }

        if (!v55)
        {
          goto LABEL_29;
        }

        v59 = (v55 + 120 * v58);
        v60 = *v59;
        v61 = v59[1];
        v62 = v59[3];
        v102 = v59[2];
        v103 = v62;
        v100 = v60;
        v101 = v61;
        v63 = v59[4];
        v64 = v59[5];
        v65 = v59[6];
        *(v106 + 14) = *(v59 + 110);
        v105 = v64;
        v106[0] = v65;
        v104 = v63;
        v97 = v59[4];
        v98 = v59[5];
        v99[0] = v59[6];
        *(v99 + 14) = *(v59 + 110);
        v93 = *v59;
        v94 = v59[1];
        v95 = v59[2];
        v96 = v59[3];
        v90 = v120;
        v91 = v121;
        v92[0] = v122;
        v86 = v116;
        v87 = v117;
        v88 = v118;
        v89 = v119;
        outlined init with copy of PType(&v100, &v107);
        v66 = PType.fullName(within:)(&v86);
        v68 = v67;
        v111 = v97;
        v112 = v98;
        v113[0] = v99[0];
        *(v113 + 14) = *(v99 + 14);
        v107 = v93;
        v108 = v94;
        v109 = v95;
        v110 = v96;
        result = outlined destroy of PType(&v107);
        v114 = v57;
        v70 = *(v57 + 16);
        v69 = *(v57 + 24);
        if (v70 >= v69 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
          v57 = v114;
        }

        *(v57 + 16) = v70 + 1;
        v71 = v57 + 16 * v70;
        *(v71 + 32) = v66;
        *(v71 + 40) = v68;
        if (v56 == v54)
        {
          *&v107 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
          v72 = BidirectionalCollection<>.joined(separator:)();
          v74 = v73;

          MEMORY[0x26D69CDB0](v72, v74);

          MEMORY[0x26D69CDB0](62, 0xE100000000000000);
          v76 = *(&v78[0] + 1);
          v75 = *&v78[0];
          goto LABEL_24;
        }

        if (++v54 >= *(v51 + 16))
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v75 = 0;
  v76 = 0xE000000000000000;
LABEL_24:
  MEMORY[0x26D69CDB0](v75, v76);

  return v79;
}

uint64_t PType.basename(within:)(uint64_t result)
{
  v2 = result;
  v3 = *(result + 80);
  v152 = *(result + 64);
  v153 = v3;
  v154 = *(result + 96);
  v4 = *(result + 16);
  v148 = *result;
  v149 = v4;
  v5 = *(result + 48);
  v150 = *(result + 32);
  v151 = v5;
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        v11 = swift_allocObject();
        v12 = v2[5];
        v11[5] = v2[4];
        v11[6] = v12;
        v11[7] = v2[6];
        v13 = v2[1];
        v11[1] = *v2;
        v11[2] = v13;
        v14 = v2[3];
        v11[3] = v2[2];
        v11[4] = v14;
        *&v132 = v6;
        *(&v132 + 1) = partial apply for closure #2 in PType.basename(within:);
        *&v133 = v11;
        outlined copy of PType.IsA(v6, v7, v9, v8, 3u);
        outlined init with copy of Interpreter.Storage.Types(&v148, &v139);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySays6UInt32VGSSGMd, &_ss15LazyMapSequenceVySays6UInt32VGSSGMR);
        lazy protocol witness table accessor for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>();
        v15 = BidirectionalCollection<>.joined(separator:)();
        outlined consume of PType.IsA(v6, v7, v9, v8, 3u);

        return v15;
      }

      v146 = 0;
      v147 = 0xE000000000000000;
      v40 = HIDWORD(v148);
      if (v6 < HIDWORD(v148))
      {
        v41 = v148;
        if (!v148)
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return result;
        }

        v42 = HIDWORD(v6);
        v43 = (v148 + 120 * v6);
        v44 = *v43;
        v45 = v43[1];
        v46 = v43[3];
        v120 = v43[2];
        v121 = v46;
        v118 = v44;
        v119 = v45;
        v47 = v43[4];
        v48 = v43[5];
        v49 = v43[6];
        *(v124 + 14) = *(v43 + 110);
        v123 = v48;
        v124[0] = v49;
        v122 = v47;
        v143 = v43[4];
        v144 = v43[5];
        v145[0] = v43[6];
        *(v145 + 14) = *(v43 + 110);
        v139 = *v43;
        v140 = v43[1];
        v141 = v43[2];
        v142 = v43[3];
        outlined init with copy of PType(&v118, &v132);
        v50 = PType.basename(within:)(v2);
        v52 = v51;
        v129 = v143;
        v130 = v144;
        v131[0] = v145[0];
        *(v131 + 14) = *(v145 + 14);
        v125 = v139;
        v126 = v140;
        v127 = v141;
        v128 = v142;
        outlined destroy of PType(&v125);
        MEMORY[0x26D69CDB0](v50, v52);

        result = MEMORY[0x26D69CDB0](540945696, 0xE400000000000000);
        if (v42 < v40)
        {
          v53 = (v41 + 120 * v42);
          v54 = *v53;
          v55 = v53[1];
          v56 = v53[3];
          v134 = v53[2];
          v135 = v56;
          v132 = v54;
          v133 = v55;
          v57 = v53[4];
          v58 = v53[5];
          v59 = v53[6];
          *(v138 + 14) = *(v53 + 110);
          v137 = v58;
          v138[0] = v59;
          v136 = v57;
          v60 = v53[5];
          v115 = v53[4];
          v116 = v60;
          v117[0] = v53[6];
          *(v117 + 14) = *(v53 + 110);
          v61 = v53[1];
          v111 = *v53;
          v112 = v61;
          v62 = v53[3];
          v113 = v53[2];
          v114 = v62;
          v110[4] = v152;
          v110[5] = v153;
          v110[6] = v154;
          v110[0] = v148;
          v110[1] = v149;
          v110[2] = v150;
          v110[3] = v151;
          outlined init with copy of PType(&v132, &v139);
          v63 = PType.basename(within:)(v110);
          v65 = v64;
          v143 = v115;
          v144 = v116;
          v145[0] = v117[0];
          *(v145 + 14) = *(v117 + 14);
          v139 = v111;
          v140 = v112;
          v141 = v113;
          v142 = v114;
          outlined destroy of PType(&v139);
          MEMORY[0x26D69CDB0](v63, v65);

          return v146;
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    *&v111 = 40;
    *(&v111 + 1) = 0xE100000000000000;
    v16 = *(v6 + 16);
    v17 = MEMORY[0x277D84F90];
    if (!v16)
    {
LABEL_34:
      *&v139 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v78 = BidirectionalCollection<>.joined(separator:)();
      v80 = v79;

      MEMORY[0x26D69CDB0](v78, v80);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v111;
    }

    v146 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v108 = v6;
    if (*(v6 + 16))
    {
      v18 = 0;
      v19 = v148;
      v106 = HIDWORD(v148);
      v20 = (v6 + 52);
      v21 = v16 - 1;
      v17 = v146;
      while (1)
      {
        v22 = *(v20 - 3);
        v23 = *(v20 - 4);
        v24 = *v20;
        *&v110[0] = 0;
        *(&v110[0] + 1) = 0xE000000000000000;
        v25 = (v23 & 1) != 0 ? 0x2074756F6E69 : 0;
        v26 = (v23 & 1) != 0 ? 0xE600000000000000 : 0xE000000000000000;

        MEMORY[0x26D69CDB0](v25, v26);

        result = MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        if (v24 >= v106)
        {
          break;
        }

        if (!v19)
        {
          goto LABEL_56;
        }

        v27 = (v19 + 120 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[3];
        v134 = v27[2];
        v135 = v30;
        v132 = v28;
        v133 = v29;
        v31 = v27[4];
        v32 = v27[5];
        v33 = v27[6];
        *(v138 + 14) = *(v27 + 110);
        v137 = v32;
        v138[0] = v33;
        v136 = v31;
        v129 = v27[4];
        v130 = v27[5];
        v131[0] = v27[6];
        *(v131 + 14) = *(v27 + 110);
        v125 = *v27;
        v126 = v27[1];
        v127 = v27[2];
        v128 = v27[3];
        v122 = v152;
        v123 = v153;
        v124[0] = v154;
        v118 = v148;
        v119 = v149;
        v120 = v150;
        v121 = v151;
        outlined init with copy of PType(&v132, &v139);
        v34 = PType.basename(within:)(&v118);
        v36 = v35;
        v143 = v129;
        v144 = v130;
        v145[0] = v131[0];
        *(v145 + 14) = *(v131 + 14);
        v139 = v125;
        v140 = v126;
        v141 = v127;
        v142 = v128;
        outlined destroy of PType(&v139);
        MEMORY[0x26D69CDB0](v34, v36);

        v37 = v110[0];
        v146 = v17;
        v39 = *(v17 + 16);
        v38 = *(v17 + 24);
        if (v39 >= v38 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v17 = v146;
        }

        *(v17 + 16) = v39 + 1;
        *(v17 + 16 * v39 + 32) = v37;
        if (v21 == v18)
        {
          goto LABEL_34;
        }

        v20 += 6;
        if (++v18 >= *(v108 + 16))
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_48:
      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }

  if (!*(v1 + 32))
  {
    return 0xD000000000000014;
  }

  result = 0x6C616E6F6974704FLL;
  if (v6 == 0x6C616E6F6974704FLL && v7 == 0xE800000000000000 || (v66 = *v1, v105 = *(v1 + 8), result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    if (*(v9 + 16))
    {
      v67 = *(v9 + 32);
      if (v67 < HIDWORD(v148))
      {
        if (v148)
        {
          v68 = (v148 + 120 * v67);
          v69 = *v68;
          v70 = v68[1];
          v71 = v68[3];
          v134 = v68[2];
          v135 = v71;
          v132 = v69;
          v133 = v70;
          v72 = v68[4];
          v73 = v68[5];
          v74 = v68[6];
          *(v138 + 14) = *(v68 + 110);
          v137 = v73;
          v138[0] = v74;
          v136 = v72;
          v129 = v68[4];
          v130 = v68[5];
          v131[0] = v68[6];
          *(v131 + 14) = *(v68 + 110);
          v125 = *v68;
          v126 = v68[1];
          v127 = v68[2];
          v128 = v68[3];
          outlined init with copy of PType(&v132, &v139);
          v75 = PType.basename(within:)(v2);
          v77 = v76;
          v143 = v129;
          v144 = v130;
          v145[0] = v131[0];
          *(v145 + 14) = *(v131 + 14);
          v139 = v125;
          v140 = v126;
          v141 = v127;
          v142 = v128;
          outlined destroy of PType(&v139);
          MEMORY[0x26D69CDB0](v75, v77);

          MEMORY[0x26D69CDB0](63, 0xE100000000000000);
          return v118;
        }

        goto LABEL_59;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v81 = *(v8 + 16);
  v82 = 0xE000000000000000;
  if (v81)
  {
    v109 = v6;
    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    *&v110[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
    if (*(v8 + 16))
    {
      v83 = 0;
      v84 = v148;
      v107 = HIDWORD(v148);
      v85 = v81 - 1;
      v86 = *&v110[0];
      do
      {
        v87 = *(v8 + 32 + 4 * v83);
        if (v87 >= v107)
        {
          goto LABEL_51;
        }

        if (!v84)
        {
          goto LABEL_57;
        }

        v88 = (v84 + 120 * v87);
        v89 = *v88;
        v90 = v88[1];
        v91 = v88[3];
        v134 = v88[2];
        v135 = v91;
        v132 = v89;
        v133 = v90;
        v92 = v88[4];
        v93 = v88[5];
        v94 = v88[6];
        *(v138 + 14) = *(v88 + 110);
        v137 = v93;
        v138[0] = v94;
        v136 = v92;
        v129 = v88[4];
        v130 = v88[5];
        v131[0] = v88[6];
        *(v131 + 14) = *(v88 + 110);
        v125 = *v88;
        v126 = v88[1];
        v127 = v88[2];
        v128 = v88[3];
        v122 = v152;
        v123 = v153;
        v124[0] = v154;
        v118 = v148;
        v119 = v149;
        v120 = v150;
        v121 = v151;
        outlined init with copy of PType(&v132, &v139);
        v95 = PType.basename(within:)(&v118);
        v97 = v96;
        v143 = v129;
        v144 = v130;
        v145[0] = v131[0];
        *(v145 + 14) = *(v131 + 14);
        v139 = v125;
        v140 = v126;
        v141 = v127;
        v142 = v128;
        result = outlined destroy of PType(&v139);
        *&v110[0] = v86;
        v99 = *(v86 + 16);
        v98 = *(v86 + 24);
        if (v99 >= v98 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
          v86 = *&v110[0];
        }

        *(v86 + 16) = v99 + 1;
        v100 = v86 + 16 * v99;
        *(v100 + 32) = v95;
        *(v100 + 40) = v97;
        if (v85 == v83)
        {
          *&v139 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
          v101 = BidirectionalCollection<>.joined(separator:)();
          v103 = v102;

          MEMORY[0x26D69CDB0](v101, v103);

          MEMORY[0x26D69CDB0](46, 0xE100000000000000);
          v82 = *(&v111 + 1);
          v104 = v111;
          v6 = v109;
          goto LABEL_47;
        }
      }

      while (++v83 < *(v8 + 16));
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v104 = 0;
LABEL_47:
  *&v139 = v104;
  *(&v139 + 1) = v82;

  MEMORY[0x26D69CDB0](v6, v105);

  return v139;
}

uint64_t closure #2 in PType.fullName(within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(result + 20);
  if (v4 >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v6 = *a2 + 120 * v4;
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = *(v6 + 48);
    v23[2] = *(v6 + 32);
    v23[3] = v9;
    v23[0] = v7;
    v23[1] = v8;
    v10 = *(v6 + 64);
    v11 = *(v6 + 80);
    v12 = *(v6 + 96);
    *(v24 + 14) = *(v6 + 110);
    v23[5] = v11;
    v24[0] = v12;
    v23[4] = v10;
    v20 = *(v6 + 64);
    v21 = *(v6 + 80);
    *v22 = *(v6 + 96);
    *&v22[14] = *(v6 + 110);
    v16 = *v6;
    v17 = *(v6 + 16);
    v18 = *(v6 + 32);
    v19 = *(v6 + 48);
    outlined init with copy of PType(v23, v25);
    v13 = PType.fullName(within:)(a2);
    v15 = v14;
    v25[4] = v20;
    v25[5] = v21;
    v26[0] = *v22;
    *(v26 + 14) = *&v22[14];
    v25[0] = v16;
    v25[1] = v17;
    v25[2] = v18;
    v25[3] = v19;
    result = outlined destroy of PType(v25);
    *a3 = v13;
    a3[1] = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t PType.genericParamCount.getter()
{
  v1 = v0[5];
  v21 = v0[4];
  v22 = v1;
  v23[0] = v0[6];
  *(v23 + 14) = *(v0 + 110);
  v2 = v0[1];
  v17 = *v0;
  v18 = v2;
  v3 = v0[2];
  v4 = v0[3];
  v19 = v3;
  v20 = v4;
  v5 = v18;
  if (v3 == 1)
  {
    return *(v18 + 16);
  }

  v7 = *(&v18 + 1);
  v8 = v17;
  v15 = 0;
  v16 = 0xE000000000000000;
  v9 = v3;
  outlined init with copy of PType(&v17, &v11);
  _StringGuts.grow(_:)(42);

  v15 = 0xD000000000000027;
  v16 = 0x800000026C33C270;
  v11 = v8;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v10 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PType.moduleName(within:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(v1 + 64);

  v8 = v4(v2, v7);

  return v8;
}

_DWORD *closure #4 in PType.limitedName(within:limit:module:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*result >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v7 = *a2 + 120 * *result;
    v8 = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 48);
    v24[2] = *(v7 + 32);
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = *(v7 + 64);
    v12 = *(v7 + 80);
    v13 = *(v7 + 96);
    *(v25 + 14) = *(v7 + 110);
    v24[5] = v12;
    v25[0] = v13;
    v24[4] = v11;
    v21 = *(v7 + 64);
    v22 = *(v7 + 80);
    *v23 = *(v7 + 96);
    *&v23[14] = *(v7 + 110);
    v17 = *v7;
    v18 = *(v7 + 16);
    v19 = *(v7 + 32);
    v20 = *(v7 + 48);
    outlined init with copy of PType(v24, v26);
    v14 = PType.limitedName(within:limit:module:)(a2, a3, 0);
    v16 = v15;
    v26[4] = v21;
    v26[5] = v22;
    v27[0] = *v23;
    *(v27 + 14) = *&v23[14];
    v26[0] = v17;
    v26[1] = v18;
    v26[2] = v19;
    v26[3] = v20;
    result = outlined destroy of PType(v26);
    *a4 = v14;
    a4[1] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in PType.limitedName(within:limit:module:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(result + 20);
  if (v5 >= *(a2 + 12))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a2)
  {
    v7 = *a2 + 120 * v5;
    v8 = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 48);
    v25[2] = *(v7 + 32);
    v25[3] = v10;
    v25[0] = v8;
    v25[1] = v9;
    v11 = *(v7 + 64);
    v12 = *(v7 + 80);
    v13 = *(v7 + 96);
    *(v26 + 14) = *(v7 + 110);
    v25[5] = v12;
    v26[0] = v13;
    v25[4] = v11;
    v22 = *(v7 + 64);
    v23 = *(v7 + 80);
    *v24 = *(v7 + 96);
    *&v24[14] = *(v7 + 110);
    v18 = *v7;
    v19 = *(v7 + 16);
    v20 = *(v7 + 32);
    v21 = *(v7 + 48);
    v14 = a3 - 1;
    if (!__OFSUB__(a3, 1))
    {
      outlined init with copy of PType(v25, v27);
      v15 = PType.limitedName(within:limit:module:)(a2, v14, 0);
      v17 = v16;
      v27[4] = v22;
      v27[5] = v23;
      v28[0] = *v24;
      *(v28 + 14) = *&v24[14];
      v27[0] = v18;
      v27[1] = v19;
      v27[2] = v20;
      v27[3] = v21;
      result = outlined destroy of PType(v27);
      *a4 = v15;
      a4[1] = v17;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

_DWORD *closure #3 in PType.fullName(within:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  if (*result >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v7 = *a2 + 120 * *result;
    v8 = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 48);
    v24[2] = *(v7 + 32);
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = *(v7 + 64);
    v12 = *(v7 + 80);
    v13 = *(v7 + 96);
    *(v25 + 14) = *(v7 + 110);
    v24[5] = v12;
    v25[0] = v13;
    v24[4] = v11;
    v21 = *(v7 + 64);
    v22 = *(v7 + 80);
    *v23 = *(v7 + 96);
    *&v23[14] = *(v7 + 110);
    v17 = *v7;
    v18 = *(v7 + 16);
    v19 = *(v7 + 32);
    v20 = *(v7 + 48);
    outlined init with copy of PType(v24, v26);
    v14 = a3(a2);
    v16 = v15;
    v26[4] = v21;
    v26[5] = v22;
    v27[0] = *v23;
    *(v27 + 14) = *&v23[14];
    v26[0] = v17;
    v26[1] = v18;
    v26[2] = v19;
    v26[3] = v20;
    result = outlined destroy of PType(v26);
    *a4 = v14;
    a4[1] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static PType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  outlined copy of PType.IsA(v17, v2, v3, v4, v9);
  outlined copy of PType.IsA(v5, v6, v7, v8, v10);
  LOBYTE(v5) = specialized static PType.IsA.== infix(_:_:)(&v17, &v12);
  outlined consume of PType.IsA(v12, v13, v14, v15, v16);
  outlined consume of PType.IsA(v17, v18, v19, v20, v21);
  return v5 & 1;
}

uint64_t PType.isFirstParty(within:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(v1 + 64);

  v8 = v4(v2, v7);
  v10 = v9;

  v11 = v8 == 0x49557466697753 && v10 == 0xE700000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v8 == 0xD000000000000012 && 0x800000026C33B970 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v8 == 0x7475626972747441 && v10 == 0xEE00687061724765 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v8 == 0x4349557466697753 && v10 == 0xEB0000000065726FLL)
  {

    return 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v13 & 1;
  }
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PType.Parser.Flags@<X0>(_BYTE *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

unint64_t PType.Parser.parseFunctional(within:)(unint64_t a1)
{
  result = PType.Parser.parseTuple(within:)(a1);
  if (v2)
  {
    return result;
  }

  v5 = v1[1];
  v6 = v1[2];
  v7 = *v1;
  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 == 4 * v8)
  {
    return result;
  }

  v9 = result;
  v10 = _StringGuts.validateScalarIndex(_:)(v1[2], *v1, v1[1]);
  if ((v5 & 0x1000000000000000) != 0)
  {
    if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != 32)
    {
      return v9;
    }

    _StringGuts.validateScalarIndex(_:)(v6, v7, v5);
    v69 = String.UnicodeScalarView._foreignIndex(after:)();
    _StringGuts.validateScalarIndex(_:)(v69, v7, v5);
    v28 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_28;
  }

  v11 = v10 >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v13 = &v72 + v11;
    v15 = *(&v72 + v11);
    result = v9;
    if ((*(&v72 + v11) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v12 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v12 = _StringObject.sharedUTF8.getter();
    }

    result = v9;
    v13 = (v12 + v11);
    v14 = *(v12 + v11);
    v15 = *(v12 + v11);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  v16 = (__clz(v15 ^ 0xFF) - 24);
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v17 = v13[1];
      v18 = v13[2];
      v19 = ((v15 & 0xF) << 12) | ((v17 & 0x3F) << 6);
    }

    else
    {
      v20 = v13[1];
      v21 = v13[2];
      v18 = v13[3];
      v19 = ((v15 & 0xF) << 18) | ((v20 & 0x3F) << 12) | ((v21 & 0x3F) << 6);
    }

    v15 = v19 & 0xFFFFFFC0 | v18 & 0x3F;
  }

  else if (v16 != 1)
  {
    v15 = v13[1] & 0x3F | ((v15 & 0x1F) << 6);
  }

LABEL_19:
  if (v15 != 32)
  {
    return result;
  }

  v22 = _StringGuts.validateScalarIndex(_:)(v6, v7, v5) >> 16;
  v23 = _StringGuts.fastUTF8ScalarLength(startingAt:)(v22);
  v24 = _StringGuts.validateScalarIndex(_:)(((v23 + v22) << 16) | 5, v7, v5) >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v26 = &v72 + v24;
    v28 = *(&v72 + v24);
    if (*(&v72 + v24) < 0)
    {
      v37 = (__clz(v28 ^ 0xFF) - 24);
      if (v37 > 2)
      {
        result = v9;
        if (v37 == 3)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      if (v37 != 1)
      {
        v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
      }
    }

LABEL_28:
    result = v9;
    goto LABEL_29;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v25 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v25 = _StringObject.sharedUTF8.getter();
  }

  result = v9;
  v26 = (v25 + v24);
  v27 = *(v25 + v24);
  v28 = *(v25 + v24);
  if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  v29 = (__clz(v28 ^ 0xFF) - 24);
  if (v29 > 2)
  {
    if (v29 == 3)
    {
LABEL_45:
      v28 = ((v28 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
      goto LABEL_29;
    }

LABEL_47:
    v28 = ((v28 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
    goto LABEL_29;
  }

  if (v29 != 1)
  {
    v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
  }

LABEL_29:
  if (v28 != 45)
  {
    return result;
  }

  v30 = String.UnicodeScalarView.index(_:offsetBy:)(v6, 2, v7, v5);
  v31 = _StringGuts.validateScalarIndex(_:)(v30, v7, v5);
  if ((v5 & 0x1000000000000000) != 0)
  {
    v36 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    result = v9;
    goto LABEL_52;
  }

  v32 = v31 >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v34 = &v72 + v32;
    v36 = *(&v72 + v32);
    result = v9;
    if ((*(&v72 + v32) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v33 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v33 = _StringObject.sharedUTF8.getter();
    }

    result = v9;
    v34 = (v33 + v32);
    v35 = *(v33 + v32);
    v36 = *(v33 + v32);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  v38 = (__clz(v36 ^ 0xFF) - 24);
  if (v38 > 2)
  {
    if (v38 == 3)
    {
      v39 = v34[1];
      v40 = v34[2];
      v41 = ((v36 & 0xF) << 12) | ((v39 & 0x3F) << 6);
    }

    else
    {
      v42 = v34[1];
      v43 = v34[2];
      v40 = v34[3];
      v41 = ((v36 & 0xF) << 18) | ((v42 & 0x3F) << 12) | ((v43 & 0x3F) << 6);
    }

    v36 = v41 & 0xFFFFFFC0 | v40 & 0x3F;
  }

  else if (v38 != 1)
  {
    v36 = v34[1] & 0x3F | ((v36 & 0x1F) << 6);
  }

LABEL_52:
  if (v36 != 62)
  {
    return result;
  }

  v44 = String.UnicodeScalarView.index(_:offsetBy:)(v6, 3, v7, v5);
  v45 = _StringGuts.validateScalarIndex(_:)(v44, v7, v5);
  if ((v5 & 0x1000000000000000) != 0)
  {
    v50 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    result = v9;
    goto LABEL_68;
  }

  v46 = v45 >> 16;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v72 = v7;
    v73 = v5 & 0xFFFFFFFFFFFFFFLL;
    v48 = &v72 + v46;
    v50 = *(&v72 + v46);
    result = v9;
    if ((*(&v72 + v46) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v47 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v47 = _StringObject.sharedUTF8.getter();
    }

    result = v9;
    v48 = (v47 + v46);
    v49 = *(v47 + v46);
    v50 = *(v47 + v46);
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }
  }

  v51 = (__clz(v50 ^ 0xFF) - 24);
  if (v51 > 2)
  {
    if (v51 == 3)
    {
      v52 = v48[1];
      v53 = v48[2];
      v54 = ((v50 & 0xF) << 12) | ((v52 & 0x3F) << 6);
    }

    else
    {
      v55 = v48[1];
      v56 = v48[2];
      v53 = v48[3];
      v54 = ((v50 & 0xF) << 18) | ((v55 & 0x3F) << 12) | ((v56 & 0x3F) << 6);
    }

    v50 = v54 & 0xFFFFFFC0 | v53 & 0x3F;
  }

  else if (v51 != 1)
  {
    v50 = v48[1] & 0x3F | ((v50 & 0x1F) << 6);
  }

LABEL_68:
  if (v50 == 32)
  {
    v1[2] = String.UnicodeScalarView.index(_:offsetBy:)(v6, 4, v7, v5);
    result = PType.Parser.parseTuple(within:)(a1);
    v57 = result;
    LOBYTE(v72) = 1;
    v75 = 1;
    v74 = 1;
    if (one-time initialization token for none != -1)
    {
      result = swift_once();
    }

    v58 = static PType.Metadata.none;
    v59 = qword_280481CC8;
    v60 = qword_280481CD0;
    v61 = dword_280481CD8;
    v62 = byte_280481CDC;
    v63 = v72;
    v64 = v75;
    v65 = v74;
    v66 = *(a1 + 12);
    if (v66 == *(a1 + 8))
    {
      v71 = static PType.Metadata.none;
      v70 = byte_280481CDC;
      result = specialized UnsafeArray.growToCapacity(_:)(2 * v66);
      v62 = v70;
      v58 = v71;
    }

    if (*a1)
    {
      v67 = *(a1 + 12);
      v68 = *a1 + 120 * v67;
      *v68 = v9 | (v57 << 32);
      *(v68 + 8) = 0;
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      *(v68 + 32) = 4;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = v63;
      *(v68 + 60) = -1;
      *(v68 + 64) = v58;
      *(v68 + 80) = v59;
      *(v68 + 88) = v60;
      *(v68 + 96) = v61;
      *(v68 + 100) = v62;
      *(v68 + 104) = 0;
      *(v68 + 108) = v64;
      *(v68 + 112) = 0;
      *(v68 + 116) = v65;
      *(v68 + 117) = 6;
      if (v67 != -1)
      {
        *(a1 + 12) = v67 + 1;
        return v67;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}