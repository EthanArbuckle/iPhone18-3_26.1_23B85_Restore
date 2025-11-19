uint64_t sub_21791B854(uint64_t a1)
{
  v2 = sub_21796697C();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, a1);
  return sub_21792C9D8(v8);
}

uint64_t sub_21791B914(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = *(v2 + 2);
  v8 = v3;
  v9 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA88, &qword_2179709E8);
  MEMORY[0x21CEA6C70](&v7, v5);
  return v7;
}

uint64_t sub_21791B974(void *a1)
{
  v2 = a1[2];
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    sub_21791C054(319, &qword_2811AD308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_21791C054(319, &qword_27CB8ACD0, &_s8ModuleIDON, MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v5;
    }

    sub_21791C054(319, &qword_27CB8D9F8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v8 > 0x3F)
    {
      return v5;
    }

    sub_21791C054(319, qword_27CB8DA00, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
    if (v9 > 0x3F)
    {
      return v5;
    }

    v10 = a1[3];
    v11 = a1[5];
    _s9ViewModelCMa();
    swift_getWitnessTable();
    v5 = sub_217966ADC();
    if (v12 > 0x3F)
    {
      return v5;
    }

    sub_2178F0DD4();
    if (v13 > 0x3F)
    {
      return v5;
    }

    else
    {
      v16 = a1[4];
      v3 = _s13ItemShelfCellV9ConstantsVMa();
      if (v14 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_21791BB9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_21796697C();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = 8;
  if (v13 > 8)
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v24 = *(((((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }
  }

  else
  {
    v16 = *(v12 + 80) & 0xF8 | 7;
    v17 = ((v14 + ((v16 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 48;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v8 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 2:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_28;
        }

LABEL_24:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          LODWORD(v18) = *a1;
        }

        result = v8 + (v18 | v23) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_21791BDCC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_21796697C() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (((v12 + ((v14 + ((((((v13 + 7) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 16) & ~v14) + 8) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v16 = a3 - v10 + 1;
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
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v9 < 0x7FFFFFFF)
          {
            v20 = ((((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v20[1] = 0;
              v20[2] = 0;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v20[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v10;
    }

    if (v15)
    {
      bzero(a1, v15);
      *a1 = ~v10 + a2;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v19;
        break;
      case 2:
        *(a1 + v15) = v19;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v15) = v19;
        break;
      default:
        return;
    }
  }
}

void sub_21791C054(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21791C0BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21791C114(uint64_t a1)
{
  v2 = 0;
  switch(*(v1 + *(a1 + 60)))
  {
    case 1:
      v2 = 1;
      goto LABEL_4;
    case 0xB:
      return v2 & 1;
    default:
      v2 = sub_21796969C();
LABEL_4:

      break;
  }

  return v2 & 1;
}

uint64_t sub_21791C2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v202 = a2;
  v211 = sub_217966FAC();
  v3 = OUTLINED_FUNCTION_2(v211);
  v201 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v200 = v8 - v7;
  v184 = sub_21796722C();
  v9 = OUTLINED_FUNCTION_2(v184);
  v179 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v176 = v14 - v13;
  v214 = *(a1 - 8);
  v205 = *(v214 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v210 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v207 = *(v18 - 8);
  v19 = *(v207 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14();
  v203 = v21 - v20;
  v215 = *(a1 + 24);
  v208 = v215.i64[1];
  _s11ArtworkViewVMa();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796732C();
  v22 = sub_21796698C();
  v213 = *(a1 + 40);
  v23 = v213;
  OUTLINED_FUNCTION_3_17();
  WitnessTable = swift_getWitnessTable();
  v235 = MEMORY[0x277CDF690];
  v24 = swift_getWitnessTable();
  v25 = MEMORY[0x277CDF918];
  v232 = v24;
  v233 = MEMORY[0x277CDF918];
  v230 = swift_getWitnessTable();
  v231 = v25;
  v26 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  v206 = sub_2178B423C(v27, v28);
  v228 = v26;
  v229 = v206;
  v166 = v22;
  v29 = swift_getWitnessTable();
  v222 = v18;
  v167 = v29;
  v225 = v215.i64[1];
  v168 = v215.i64[0];
  v223 = v215.i64[0];
  v224 = v22;
  v226 = v23;
  v227 = v29;
  v30 = _s9HItemCellVMa();
  OUTLINED_FUNCTION_2(v30);
  v171 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_45_0();
  v169 = v35;
  v36 = OUTLINED_FUNCTION_5_11();
  v222 = v30;
  v223 = v36;
  v162 = v30;
  v163 = v36;
  v37 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(OpaqueTypeMetadata2);
  v178 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_45_0();
  v164 = v43;
  v182 = v44;
  v45 = sub_21796698C();
  OUTLINED_FUNCTION_2(v45);
  v186 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_45_0();
  v181 = v50;
  v51 = sub_21796698C();
  OUTLINED_FUNCTION_2(v51);
  v195 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_45_0();
  v193 = v56;
  v57 = sub_21796698C();
  OUTLINED_FUNCTION_2(v57);
  v198 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_45_0();
  v209 = v62;
  v222 = v30;
  v223 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v220 = OpaqueTypeConformance2;
  v221 = v206;
  v188 = v45;
  v174 = swift_getWitnessTable();
  v218 = v174;
  v219 = MEMORY[0x277CDFC60];
  v197 = v51;
  v175 = swift_getWitnessTable();
  v216 = v175;
  v217 = MEMORY[0x277CE0790];
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x277D83B88];
  v222 = v57;
  v223 = MEMORY[0x277D83B88];
  v65 = MEMORY[0x277D83BA8];
  v224 = v63;
  v225 = MEMORY[0x277D83BA8];
  v66 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v66);
  v194 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_45_0();
  v191 = v71;
  v199 = v57;
  v222 = v57;
  v223 = v64;
  v185 = v63;
  v224 = v63;
  v225 = v65;
  v72 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_20();
  v75 = sub_2178B423C(v73, v74);
  v196 = v66;
  v222 = v66;
  v223 = v211;
  v187 = v72;
  v224 = v72;
  v225 = v75;
  v183 = v75;
  v76 = swift_getOpaqueTypeMetadata2();
  v77 = OUTLINED_FUNCTION_2(v76);
  v189 = v78;
  v190 = v77;
  v80 = *(v79 + 64);
  v81 = MEMORY[0x28223BE20](v77);
  v177 = &v158 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v180 = &v158 - v83;
  v84 = v212;
  (*(v207 + 16))(v203, v212, v18);
  v85 = v84 + *(a1 + 52);
  v87 = *(v85 + 8);
  v86 = *(v85 + 16);
  v88 = *(v85 + 24);
  LOBYTE(v222) = *v85;
  v223 = v87;
  v224 = v86;
  v225 = v88;

  sub_217863EC4(v88);
  v89 = sub_21791C114(a1);
  v90 = *(a1 + 60);
  v91 = (v84 + *(a1 + 56));
  v93 = *v91;
  v92 = v91[1];
  v161 = v93;
  v158 = v92;
  v159 = *(v84 + v90);
  v160 = v89;
  v165 = v84 + *(a1 + 80);
  v94 = *(v165 + 40);
  v95 = v214;
  v96 = v210;
  v206 = *(v214 + 16);
  v207 = v214 + 16;
  v206(v210, v84, a1);
  v97 = *(v95 + 80);
  v98 = (v97 + 48) & ~v97;
  v204 = v98 + v205;
  v205 = v97;
  v99 = swift_allocObject();
  *(v99 + 16) = v18;
  *(v99 + 24) = v215;
  v100 = v213;
  *(v99 + 40) = v213;
  v101 = *(v95 + 32);
  v172 = v98;
  v192 = a1;
  v214 = v95 + 32;
  v170 = v101;
  v101(v99 + v98, v96, a1);
  v102 = v167;
  v103 = v166;
  LOBYTE(v98) = sub_217862E84();
  OUTLINED_FUNCTION_9_12();
  LOBYTE(v65) = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_9_12();
  LOBYTE(v95) = sub_217862E84();
  v104 = v158;

  v156 = v102;
  v105 = v100;
  v106 = v18;
  v107 = v159;
  v155 = v99;
  v108 = v164;
  v109 = v169;
  sub_2178EFD2C(v203, &v222, 0, (v160 & 1) == 0, v161, v104, v98 & 1, v159, v169, v94, v65 & 1, 0, 0, v95 & 1, v215.i64[0], sub_21791DEF0, v155, v106, v215.i64[0], v103, v215.i64[1], v105, v156);
  v110 = v176;
  sub_21796720C();
  v111 = v162;
  sub_2179678AC();
  (*(v179 + 8))(v110, v184);
  (*(v171 + 8))(v109, v111);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v113 = qword_27CB979C8;
  v112 = unk_27CB979D0;
  v114 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796B330;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v116 = *(v208 + 8);
  v117 = sub_21796849C();
  v118 = MEMORY[0x277CD7E90];
  *(inited + 48) = v117;
  *(inited + 56) = v119;
  *(inited + 72) = v118;
  *(inited + 80) = 0x4449746E65726170;
  *(inited + 88) = 0xE800000000000000;
  v208 = v106;
  if (v107 == 11)
  {
    v120 = 0;
    *(inited + 96) = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  else
  {
    *(inited + 96) = v107;
    v120 = &_s8ModuleIDON;
  }

  *(inited + 120) = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v121 = sub_217968EAC();
  v222 = v113;
  v223 = v112;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](1819043139, 0xE400000000000000);

  sub_2178ED924(v121, v222, v223, v114);
  v123 = v122;
  v125 = v124;
  v127 = v126;

  v129 = v181;
  v128 = v182;
  sub_2178ED854(v123, v125, v127);

  (*(v178 + 8))(v108, v128);
  v130 = *(v165 + 32);
  v157 = v188;
  sub_2178935BC();
  v131 = v193;
  sub_2179679AC();
  (*(v186 + 8))(v129, v157);
  v132 = v210;
  v133 = v212;
  v134 = v192;
  v206(v210, v212, v192);
  v135 = swift_allocObject();
  *&v136 = vdupq_laneq_s64(v215, 1).u64[0];
  v137.i64[0] = v208;
  *(&v136 + 1) = v213;
  *(v135 + 16) = vzip1q_s64(v137, v215);
  *(v135 + 32) = v136;
  v138 = v172;
  v139 = v170;
  v170(v135 + v172, v132, v134);
  v140 = v197;
  sub_217967A4C();

  (*(v195 + 8))(v131, v140);
  v222 = sub_21791B914(v134);
  v206(v132, v133, v134);
  v141 = swift_allocObject();
  *(v141 + 16) = v208;
  *(v141 + 24) = v215;
  *(v141 + 40) = v213;
  v139(v141 + v138, v132, v134);
  v142 = v199;
  sub_217862E84();
  v143 = v191;
  v144 = v209;
  sub_217967A5C();

  (*(v198 + 8))(v144, v142);
  v145 = v200;
  v146 = v196;
  v147 = v211;
  v148 = v187;
  v149 = v183;
  sub_217884F70();
  OUTLINED_FUNCTION_59();
  v150 = v177;
  sub_21796773C();
  (*(v201 + 8))(v145, v147);
  (*(v194 + 8))(v143, v146);
  v222 = v146;
  v223 = v147;
  v224 = v148;
  v225 = v149;
  OUTLINED_FUNCTION_4_14();
  swift_getOpaqueTypeConformance2();
  v151 = v180;
  v152 = v190;
  sub_2179560E4(v150, v190);
  v153 = *(v189 + 8);
  v153(v150, v152);
  sub_2179560E4(v151, v152);
  return (v153)(v151, v152);
}

uint64_t sub_21791D26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a3;
  v89 = a6;
  v80 = sub_21796697C();
  v10 = *(v80 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v80);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = &v71 - v15;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s11ArtworkViewVMa();
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x28223BE20](v20);
  v71 = &v71 - v22;
  v23 = sub_21796698C();
  v81 = *(v23 - 8);
  v24 = *(v81 + 64);
  MEMORY[0x28223BE20](v23);
  v72 = &v71 - v25;
  v78 = sub_21796698C();
  v82 = *(v78 - 8);
  v26 = *(v82 + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v71 - v27;
  v28 = sub_21796698C();
  v85 = *(v28 - 8);
  v29 = *(v85 + 64);
  MEMORY[0x28223BE20](v28);
  v73 = &v71 - v30;
  sub_21796732C();
  v86 = v28;
  v31 = sub_21796698C();
  v87 = *(v31 - 8);
  v88 = v31;
  v32 = *(v87 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v83 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v84 = &v71 - v35;
  (*(v16 + 16))(v19, a1, a2);
  *&v98 = a2;
  *(&v98 + 1) = v76;
  v99 = a4;
  v100 = a5;
  v36 = _s13ItemShelfCellVMa();
  v37 = (a1 + *(v36 + 80));
  v38 = *v37;
  v39 = v37[1];
  v40 = v71;
  sub_21790B394();
  v41 = a1 + *(v36 + 76);
  v42 = v75;
  sub_2179565B8();
  v43 = v77;
  v44 = v80;
  (*(v10 + 104))(v77, *MEMORY[0x277CDFA90], v80);
  v45 = v43;
  LOBYTE(v43) = sub_21796696C();
  v46 = *(v10 + 8);
  v46(v45, v44);
  v46(v42, v44);
  if (v43)
  {
    v47 = -1.0;
  }

  else
  {
    v47 = 1.0;
  }

  WitnessTable = swift_getWitnessTable();
  sub_217967EBC();
  v49 = v72;
  MEMORY[0x21CEA66D0](v20, WitnessTable, v47, 1.0, v50, v51);
  (*(v79 + 8))(v40, v20);
  sub_21796742C();
  v52 = v37[3];
  v96 = WitnessTable;
  v97 = MEMORY[0x277CDF690];
  v53 = swift_getWitnessTable();
  v54 = v74;
  sub_217967A0C();
  v55 = v23;
  v56 = v73;
  (*(v81 + 8))(v49, v55);
  sub_21796743C();
  v57 = v37[2];
  v58 = MEMORY[0x277CDF918];
  v94 = v53;
  v95 = MEMORY[0x277CDF918];
  v59 = v78;
  v60 = swift_getWitnessTable();
  sub_217967A0C();
  (*(v82 + 8))(v54, v59);
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v61 = qword_27CB979F0;
  v98 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

  v62 = v98;
  v92 = v60;
  v93 = v58;
  v63 = v86;
  v64 = swift_getWitnessTable();
  v65 = v83;
  sub_2178ED854(v62, *(&v62 + 1), v61);

  (*(v85 + 8))(v56, v63);
  v66 = sub_2178B423C(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v90 = v64;
  v91 = v66;
  v67 = v88;
  swift_getWitnessTable();
  v68 = v84;
  sub_2179560E4(v65, v67);
  v69 = *(v87 + 8);
  v69(v65, v67);
  sub_2179560E4(v68, v67);
  return (v69)(v68, v67);
}

uint64_t sub_21791DB04(uint64_t a1)
{
  result = _s13ItemShelfCellVMa();
  v3 = a1 + *(result + 64);
  if ((*(v3 + 8) & 1) == 0 && !*v3)
  {
    return sub_21791DB5C(result);
  }

  return result;
}

uint64_t sub_21791DB5C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - v7;
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v6);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2179688CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v2, v9);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
    (*(v15 + 32))(v18, v8, v14);
    v19 = *(v2 + *(a1 + 60));
    if (v19 != 11)
    {
      v20 = (v2 + *(a1 + 72));
      v21 = *v20;
      v22 = v20[1];
      v23 = *(a1 + 24);
      v24 = *(a1 + 40);
      _s9ViewModelCMa();
      swift_getWitnessTable();
      sub_217966A9C();
      sub_2178E73EC(v18, v19);
    }

    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
    return sub_21791B568(v8);
  }
}

uint64_t sub_21791DDF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  result = _s13ItemShelfCellVMa();
  v6 = a3 + *(result + 64);
  if ((*(v6 + 8) & 1) == 0 && v4 == *v6)
  {
    return sub_21791DB5C(result);
  }

  return result;
}

BOOL sub_21791DE54(_OWORD *a1, __int128 *a2, void *a3)
{
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *a2;
  v5 = a2[1];
  v12[2] = a1[2];
  v13[0] = v4;
  v6 = a2[2];
  v13[1] = v5;
  v13[2] = v6;
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  return sub_217862E8C(v12, v13);
}

uint64_t sub_21791DEA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21791DEF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  OUTLINED_FUNCTION_10_8();
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_21791D26C(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_21791DF90()
{
  v1 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  OUTLINED_FUNCTION_10_8();
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return sub_21791DB04(v3);
}

uint64_t objectdestroyTm_5()
{
  v15 = *(v0 + 16);
  v16 = *(v0 + 32);
  v1 = (_s13ItemShelfCellVMa() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  (*(*(v15 - 8) + 8))(v3);
  v4 = v3 + v1[15];
  v5 = *(v4 + 16);

  sub_2178643E0(*(v4 + 24));
  v6 = *(v3 + v1[16] + 8);

  v7 = (v3 + v1[19]);
  v8 = *v7;

  v9 = v7[1];

  v10 = *(v3 + v1[20]);

  v11 = v1[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8CCE8, &dword_2179735F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21796697C();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  return swift_deallocObject();
}

uint64_t sub_21791E1D0(uint64_t a1, uint64_t *a2)
{
  v5 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  OUTLINED_FUNCTION_10_8();
  v7 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_21791DDF4(a1, a2, v7);
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_8()
{
  v0 = _s13ItemShelfCellVMa();
  v2 = *(v0 - 8);
  return v0 - 8;
}

void sub_21791E374()
{
  sub_217897C74();
  if (v0 <= 0x3F)
  {
    sub_21791E50C(319, &qword_27CB8DAA8, _s5AlertV7ControlVMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21791E46C()
{
  sub_21791E50C(319, &qword_27CB8DAC0, MEMORY[0x277CDD650]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21791E50C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21796944C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21791E5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 >= 2)
  {
    if (qword_27CB8A380 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (a1 == 1 && a2 >= 2)
  {
    if (qword_27CB8A380 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (qword_27CB8A380 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_39_0();
  }

LABEL_12:
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_3_18();
  v5 = sub_21796560C();
  v31 = v6;
  v32 = v5;
  v7 = _s5AlertVMa(0);
  v8 = *(v7 + 24);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  v9 = (a3 + v8);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_3_18();
  v10 = sub_21796560C();
  v12 = v11;
  v13 = _s5AlertV7ControlVMa(0);
  v14 = *(v13 + 20);
  v15 = sub_2179665FC();
  __swift_storeEnumTagSinglePayload(a3 + v8 + v14, 1, 1, v15);
  *v9 = v10;
  v9[1] = v12;
  *(v9 + *(v13 + 24)) = 0;
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
  v19 = (a3 + *(v7 + 28));
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_3_18();
  v20 = sub_21796560C();
  v22 = v21;
  v23 = *(v13 + 20);
  sub_2179665DC();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v15);
  *v19 = v20;
  v19[1] = v22;
  *(v19 + *(v13 + 24)) = 1;
  OUTLINED_FUNCTION_62_2();
  result = __swift_storeEnumTagSinglePayload(v27, v28, v29, v13);
  *a3 = v32;
  a3[1] = v31;
  a3[2] = 0;
  a3[3] = 0;
  return result;
}

void sub_21791E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v23 = OUTLINED_FUNCTION_48(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&a9 - v26);
  v28 = _s5AlertVMa(0);
  __swift_allocate_value_buffer(v28, qword_27CB97A78);
  v29 = __swift_project_value_buffer(v28, qword_27CB97A78);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  v30 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v31 = sub_21796560C();
  v33 = v32;

  v34 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v35 = sub_21796560C();
  v37 = v36;

  v38 = _s5AlertV7ControlVMa(0);
  v39 = *(v38 + 20);
  sub_2179665DC();
  sub_2179665FC();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  *v27 = v35;
  v27[1] = v37;
  *(v27 + *(v38 + 24)) = 0;
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v38);
  __swift_storeEnumTagSinglePayload(v29 + *(v28 + 28), 1, 1, v38);
  *v29 = v31;
  v29[1] = v33;
  v29[2] = 0;
  v29[3] = 0;
  sub_21791FC48(v27, v29 + *(v28 + 24));
  OUTLINED_FUNCTION_80();
}

uint64_t sub_21791EA3C()
{
  v0 = _s5AlertVMa(0);
  __swift_allocate_value_buffer(v0, qword_27CB97A90);
  v1 = __swift_project_value_buffer(v0, qword_27CB97A90);
  return sub_21791E5A8(1, 1, v1);
}

void sub_21791EA90()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v5 = _s5AlertV7ControlVMa(0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v9);
  v11 = (&v76 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v13 = OUTLINED_FUNCTION_48(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_5();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v76 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DAD8, &unk_217970AD0);
  v23 = OUTLINED_FUNCTION_3(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_5();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v76 - v30;
  v32 = *v4 == *v2 && v4[1] == v2[1];
  if (!v32 && (sub_21796969C() & 1) == 0)
  {
    goto LABEL_42;
  }

  v33 = v4[3];
  v34 = v2[3];
  if (!v33)
  {
    if (v34)
    {
      goto LABEL_42;
    }

LABEL_15:
    v77 = v0;
    v78 = v18;
    v80 = v28;
    v79 = _s5AlertVMa(0);
    v36 = *(v79 + 24);
    v37 = *(v22 + 48);
    v81 = v5;
    OUTLINED_FUNCTION_14_5();
    sub_2178AEC6C(v38, v39, v40, v41);
    OUTLINED_FUNCTION_14_5();
    v42 = v81;
    sub_2178AEC6C(v43, v44, v45, v46);
    OUTLINED_FUNCTION_26_4(v31);
    if (v32)
    {
      OUTLINED_FUNCTION_26_4(&v31[v37]);
      if (v32)
      {
        sub_2178653BC(v31, &qword_27CB8DA90, &qword_2179713F0);
        goto LABEL_31;
      }
    }

    else
    {
      sub_2178AEC6C(v31, v21, &qword_27CB8DA90, &qword_2179713F0);
      OUTLINED_FUNCTION_26_4(&v31[v37]);
      if (!v47)
      {
        sub_21791FB80(&v31[v37], v11);
        v51 = *v21 == *v11 && v21[1] == v11[1];
        if (v51 || (sub_21796969C() & 1) != 0)
        {
          v52 = *(v42 + 24);
          v53 = *(v21 + v52);
          v54 = *(v11 + v52);
          sub_21791FB24(v11);
          sub_21791FB24(v21);
          sub_2178653BC(v31, &qword_27CB8DA90, &qword_2179713F0);
          if (v53 != v54)
          {
            goto LABEL_42;
          }

LABEL_31:
          v55 = *(v79 + 28);
          v56 = *(v22 + 48);
          v57 = v80;
          OUTLINED_FUNCTION_14_5();
          sub_2178AEC6C(v58, v59, v60, v61);
          OUTLINED_FUNCTION_14_5();
          v62 = v81;
          sub_2178AEC6C(v63, v64, v65, v66);
          OUTLINED_FUNCTION_26_4(v57);
          if (v32)
          {
            OUTLINED_FUNCTION_26_4(v57 + v56);
            if (v32)
            {
              sub_2178653BC(v57, &qword_27CB8DA90, &qword_2179713F0);
              goto LABEL_42;
            }
          }

          else
          {
            v67 = v78;
            sub_2178AEC6C(v57, v78, &qword_27CB8DA90, &qword_2179713F0);
            OUTLINED_FUNCTION_26_4(v57 + v56);
            if (!v68)
            {
              v69 = v57 + v56;
              v70 = v77;
              sub_21791FB80(v69, v77);
              v71 = *v67 == *v70 && v67[1] == v70[1];
              if (v71 || (sub_21796969C() & 1) != 0)
              {
                v72 = *(v62 + 24);
                v73 = v78;
                v74 = *(v78 + v72);
                v75 = *(v70 + v72);
                sub_21791FB24(v70);
                sub_21791FB24(v73);
                sub_2178653BC(v57, &qword_27CB8DA90, &qword_2179713F0);
                goto LABEL_42;
              }

              sub_21791FB24(v70);
              sub_21791FB24(v78);
              v48 = &qword_27CB8DA90;
              v49 = &qword_2179713F0;
              goto LABEL_40;
            }

            sub_21791FB24(v67);
          }

          v48 = &qword_27CB8DAD8;
          v49 = &unk_217970AD0;
LABEL_40:
          v50 = v57;
          goto LABEL_41;
        }

        sub_21791FB24(v11);
        sub_21791FB24(v21);
        v48 = &qword_27CB8DA90;
        v49 = &qword_2179713F0;
LABEL_24:
        v50 = v31;
LABEL_41:
        sub_2178653BC(v50, v48, v49);
        goto LABEL_42;
      }

      sub_21791FB24(v21);
    }

    v48 = &qword_27CB8DAD8;
    v49 = &unk_217970AD0;
    goto LABEL_24;
  }

  if (v34)
  {
    v35 = v4[2] == v2[2] && v33 == v34;
    if (v35 || (sub_21796969C() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_42:
  OUTLINED_FUNCTION_80();
}

void sub_21791EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v21;
  a20 = v22;
  v23 = _s5AlertV7ControlVMa(0);
  v24 = OUTLINED_FUNCTION_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_5();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = (&a9 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v34 = OUTLINED_FUNCTION_48(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_5();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  v43 = *v20;
  v44 = v20[1];
  sub_217968FCC();
  if (v20[3])
  {
    v45 = v20[2];
    sub_21796975C();
    sub_217968FCC();
  }

  else
  {
    sub_21796975C();
  }

  v46 = _s5AlertVMa(0);
  sub_2178AEC6C(v20 + *(v46 + 24), v42, &qword_27CB8DA90, &qword_2179713F0);
  OUTLINED_FUNCTION_26_4(v42);
  if (v47)
  {
    sub_21796975C();
  }

  else
  {
    sub_21791FB80(v42, v32);
    sub_21796975C();
    v48 = *v32;
    v49 = v32[1];
    sub_217968FCC();
    v50 = *(v32 + *(v23 + 24));
    sub_21796975C();
    sub_21791FB24(v32);
  }

  sub_2178AEC6C(v20 + *(v46 + 28), v39, &qword_27CB8DA90, &qword_2179713F0);
  OUTLINED_FUNCTION_26_4(v39);
  if (v47)
  {
    sub_21796975C();
  }

  else
  {
    sub_21791FB80(v39, v29);
    sub_21796975C();
    v51 = *v29;
    v52 = v29[1];
    sub_217968FCC();
    v53 = *(v29 + *(v23 + 24));
    sub_21796975C();
    sub_21791FB24(v29);
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_21791F114()
{
  sub_21796973C();
  sub_21791EEFC(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_21796977C();
}

void sub_21791F154()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v2 = OUTLINED_FUNCTION_48(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v5);
  v7 = (&v38 - v6);
  v8 = _s5AlertVMa(0);
  __swift_allocate_value_buffer(v8, qword_27CB97AA8);
  v9 = __swift_project_value_buffer(v8, qword_27CB97AA8);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  v10 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v11 = sub_21796560C();
  v40 = v12;
  v41 = v11;

  v13 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v14 = sub_21796560C();
  v38 = v15;
  v39 = v14;

  v16 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v17 = sub_21796560C();
  v19 = v18;

  v20 = _s5AlertV7ControlVMa(0);
  v21 = *(v20 + 20);
  sub_2179665DC();
  v22 = sub_2179665FC();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  *v7 = v17;
  v7[1] = v19;
  *(v7 + *(v20 + 24)) = 0;
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
  v29 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v30 = sub_21796560C();
  v32 = v31;

  __swift_storeEnumTagSinglePayload(v0 + *(v20 + 20), 1, 1, v22);
  *v0 = v30;
  v0[1] = v32;
  *(v0 + *(v20 + 24)) = 0;
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v20);
  v36 = v40;
  *v9 = v41;
  v9[1] = v36;
  v37 = v38;
  v9[2] = v39;
  v9[3] = v37;
  sub_21791FC48(v7, v9 + *(v8 + 24));
  sub_21791FC48(v0, v9 + *(v8 + 28));
  OUTLINED_FUNCTION_80();
}

void sub_21791F454()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v2 = OUTLINED_FUNCTION_48(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v5);
  v7 = (&v38 - v6);
  v8 = _s5AlertVMa(0);
  __swift_allocate_value_buffer(v8, qword_27CB97AC0);
  v9 = __swift_project_value_buffer(v8, qword_27CB97AC0);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  v10 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v11 = sub_21796560C();
  v38 = v12;
  v39 = v11;

  v13 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v14 = sub_21796560C();
  v16 = v15;

  v17 = _s5AlertV7ControlVMa(0);
  v18 = *(v17 + 20);
  sub_2179665DC();
  v19 = sub_2179665FC();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  *v7 = v14;
  v7[1] = v16;
  *(v7 + *(v17 + 24)) = 0;
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v17);
  v26 = qword_27CB978B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  v27 = sub_21796560C();
  v29 = v28;

  v30 = *(v17 + 20);
  sub_2179665BC();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v19);
  *v0 = v27;
  v0[1] = v29;
  *(v0 + *(v17 + 24)) = 0;
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v17);
  v37 = v38;
  *v9 = v39;
  v9[1] = v37;
  v9[2] = 0;
  v9[3] = 0;
  sub_21791FC48(v7, v9 + *(v8 + 24));
  sub_21791FC48(v0, v9 + *(v8 + 28));
  OUTLINED_FUNCTION_80();
}

uint64_t sub_21791F71C()
{
  sub_21796973C();
  sub_21791EEFC(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_21796977C();
}

uint64_t sub_21791F758()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  v2 = OUTLINED_FUNCTION_48(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = sub_2179665FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = _s5AlertV7ControlVMa(0);
  sub_2178AEC6C(v0 + *(v16 + 20), v6, &qword_27CB8BA20, &qword_217971410);
  OUTLINED_FUNCTION_26_4(v6);
  if (v17)
  {
    sub_2178653BC(v6, &qword_27CB8BA20, &qword_217971410);
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
    sub_2179665DC();
    v18 = sub_2179665CC();
    v19 = *(v8 + 8);
    v19(v12, v7);
    v19(v15, v7);
    if (v18)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21791F92C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_21796969C(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = _s5AlertV7ControlVMa(0);
    v6 = *(a1 + *(v7 + 24)) ^ *(a2 + *(v7 + 24)) ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_21791F998()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217968FCC();
  v3 = *(v0 + *(_s5AlertV7ControlVMa(0) + 24));
  return sub_21796975C();
}

uint64_t sub_21791F9D8()
{
  sub_21796973C();
  v1 = *v0;
  v2 = v0[1];
  sub_217968FCC();
  v3 = *(v0 + *(_s5AlertV7ControlVMa(0) + 24));
  sub_21796975C();
  return sub_21796977C();
}

uint64_t sub_21791FA40(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  v4 = *v2;
  v5 = v2[1];
  sub_217968FCC();
  v6 = *(v2 + *(a2 + 24));
  sub_21796975C();
  return sub_21796977C();
}

uint64_t sub_21791FADC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21791FB24(uint64_t a1)
{
  v2 = _s5AlertV7ControlVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21791FB80(uint64_t a1, uint64_t a2)
{
  v4 = _s5AlertV7ControlVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_21791FC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_10()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for WrappedTextWithLinkView()
{
  result = qword_27CB8DAE0;
  if (!qword_27CB8DAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21791FD98()
{
  sub_21791FE14();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21791FE14()
{
  if (!qword_27CB8DAF0)
  {
    sub_21796572C();
    v0 = sub_21796944C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8DAF0);
    }
  }
}

id sub_21791FEB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v30 - v4;
  v6 = sub_21796572C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[1];
  v30[10] = *v0;
  v30[11] = v11;

  MEMORY[0x21CEA7F50](32, 0xE100000000000000);
  v12 = v0[2];
  v13 = v0[3];

  v14 = OUTLINED_FUNCTION_111();
  MEMORY[0x21CEA7F50](v14);

  sub_2178C2C34(0, qword_27CB8DB10, 0x277CCAB48);

  v15 = sub_2179201C4();
  v16 = type metadata accessor for WrappedTextWithLinkView();
  sub_2179208FC(v1 + *(v16 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

    sub_21792096C(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v17 = sub_217968F2C();

    OUTLINED_FUNCTION_111();
    v18 = sub_217968F2C();
    v19 = [v17 rangeOfString_];
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DB00, &qword_217970BE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21796A340;
    v23 = *MEMORY[0x277D740E8];
    *(inited + 32) = *MEMORY[0x277D740E8];
    *(inited + 64) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 40));
    (*(v7 + 16))(boxed_opaque_existential_1, v10, v6);
    type metadata accessor for Key();
    OUTLINED_FUNCTION_0_18();
    sub_2179207DC(v25, v26);
    v27 = v23;
    OUTLINED_FUNCTION_111();
    v28 = sub_217968EAC();
    sub_2179209D4(v28, v19, v21, v15);
    (*(v7 + 8))(v10, v6);
  }

  return v15;
}

id sub_2179201C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_217968F2C();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_217920238()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  v1 = sub_21791FEB4();
  [v0 setAttributedText_];

  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  v5 = [v2 labelColor];
  [v3 setTextColor_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setUserInteractionEnabled_];
  [v3 setEditable_];
  [v3 setTextContainerInset_];
  return v3;
}

uint64_t sub_2179203B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DB00, &qword_217970BE8);
  inited = swift_initStackObject();
  v10 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21796A340;
  v11 = *v10;
  *(inited + 32) = *v10;
  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D76918];
  v14 = v11;
  v15 = [v12 preferredFontForTextStyle_];
  *(inited + 64) = sub_2178C2C34(0, &qword_27CB8DB08, 0x277D74300);
  *(inited + 40) = v15;
  type metadata accessor for Key();
  OUTLINED_FUNCTION_0_18();
  sub_2179207DC(v16, v17);
  v18 = sub_217968EAC();
  v19 = v5[2];
  v20 = v5[3];
  v37 = *v5;
  v38 = v5[1];

  v21 = OUTLINED_FUNCTION_111();
  MEMORY[0x21CEA7F50](v21);
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_217920824(v37, v38, v18);
  if (a2)
  {
    [a5 intrinsicContentSize];
    v25 = v24;
  }

  else
  {
    v25 = *&a1;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D74260]) init];
  [v26 setMaximumNumberOfLines_];
  [v23 boundingRectWithSize:3 options:v26 context:{v25, 1.79769313e308}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (a2)
  {
    [a5 intrinsicContentSize];
    a1 = v35;
  }

  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  CGRectGetHeight(v39);

  return a1;
}

uint64_t sub_21792065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2179207DC(&qword_27CB8DAF8, type metadata accessor for WrappedTextWithLinkView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2179206F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2179207DC(&qword_27CB8DAF8, type metadata accessor for WrappedTextWithLinkView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_217920784()
{
  sub_2179207DC(&qword_27CB8DAF8, type metadata accessor for WrappedTextWithLinkView);
  sub_217966F3C();
  __break(1u);
}

uint64_t sub_2179207DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_217920824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_217968F2C();

  if (a3)
  {
    type metadata accessor for Key();
    sub_2179207DC(&qword_27CB8A858, type metadata accessor for Key);
    v6 = sub_217968E9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t sub_2179208FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21792096C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2179209D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for Key();
  sub_2179207DC(&qword_27CB8A858, type metadata accessor for Key);
  v7 = sub_217968E9C();

  [a4 setAttributes:v7 range:{a2, a3}];
}

uint64_t sub_217920AC8(uint64_t a1)
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

unsigned __int16 *sub_217920B4C(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 - 1;
    if (v17 < 0)
    {
      v17 = -1;
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 34;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v17 + 1);
}

void sub_217920CAC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              v17[2] = 0;
              v17[3] = 0;
              *v17 = (a2 - 0x7FFFFFFF);
              v17[1] = 0;
            }

            else
            {
              v17[2] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 34);
    if (v10 <= 3)
    {
      v16 = HIWORD(v15) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

__n128 sub_217920EC4@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v14 = *(a2 + 8);
  v10 = *(a2 + 3);
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v11 = _s20DetailViewPropertiesVMa();
  v12 = a6 + v11[9];
  *v12 = v9;
  result = v14;
  *(v12 + 8) = v14;
  *(v12 + 24) = v10;
  *(a6 + v11[10]) = a3;
  *(a6 + v11[11]) = a4;
  return result;
}

uint64_t sub_217920F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) + 8);
  if ((sub_217968F1C() & 1) == 0)
  {
    goto LABEL_4;
  }

  v7 = _s20DetailViewPropertiesVMa();
  v8 = v7[9];
  v10 = *(a1 + v8 + 8);
  v9 = *(a1 + v8 + 16);
  v11 = *(a1 + v8 + 24);
  LOBYTE(v22[0]) = *(a1 + v8);
  v22[1] = v10;
  v22[2] = v9;
  v23 = v11;
  v12 = a2 + v8;
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v15 = *(v12 + 24);
  LOBYTE(v20[0]) = *v12;
  v20[1] = v13;
  v20[2] = v14;
  v21 = v15;

  sub_217863EC4(v11);

  sub_217863EC4(v15);
  LOBYTE(v11) = static MusicPicker.Click.SourceContext.== infix(_:_:)(v22, v20);
  v16 = v21;

  sub_2178643E0(v16);
  v17 = v23;

  sub_2178643E0(v17);
  if ((v11 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(a1 + v7[10]) == *(a2 + v7[10]))
  {
    v18 = *(a1 + v7[11]) ^ *(a2 + v7[11]) ^ 1;
  }

  else
  {
LABEL_4:
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_2179210BC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 32);
  sub_217968ECC();
  v7 = (v2 + *(a2 + 36));
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];
  MEMORY[0x21CEA86B0](*v7);
  sub_21796975C();
  if (v9)
  {
    sub_217968FCC();
  }

  MusicPicker.PageID.hash(into:)(a1);
  v11 = *(v2 + *(a2 + 40));
  sub_21796975C();
  v12 = *(v2 + *(a2 + 44));
  return sub_21796975C();
}

uint64_t sub_21792118C(uint64_t a1)
{
  sub_21796973C();
  sub_2179210BC(v3, a1);
  return sub_21796977C();
}

uint64_t sub_217921204(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  sub_2179210BC(v4, a2);
  return sub_21796977C();
}

void sub_217921248(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = *a4;
  v19 = _s9ItemShelfVMa();
  v20 = &a9[v19[20]];
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *v20 = sub_217966ACC();
  v20[1] = v21;
  v22 = v19[21];
  *&a9[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8CCE8, &dword_2179735F0);
  swift_storeEnumTagMultiPayload();
  v23 = &a9[v19[22]];
  *v23 = sub_217921600();
  v23[1] = v24;
  v25 = &a9[v19[23]];
  v26 = sub_217921638();
  *v25 = v27;
  *(v25 + 1) = v26;
  v28 = &a9[v19[27]];
  *v28 = xmmword_217970C80;
  *(v28 + 2) = 0x4044000000000000;
  *(v28 + 3) = 4;
  *(v28 + 2) = xmmword_217970C90;
  *(v28 + 6) = 0x4050000000000000;
  v28[56] = 0;
  *(v28 + 57) = a12;
  *(v28 + 15) = a12 >> 24;
  *(v28 + 4) = xmmword_217970CA0;
  *(v28 + 10) = 0x4014000000000000;
  *a9 = a1;
  *(a9 + 1) = a2;
  v29 = v19[13];
  v30 = *(a14 + 8);
  v31 = sub_21796810C();
  v44 = *(v31 - 8);
  (*(v44 + 16))(&a9[v29], a3, v31);
  *&a9[v19[14]] = v18;
  *&a9[v19[15]] = a10;
  *&a9[v19[16]] = a5;
  a9[v19[17]] = a6;
  a9[v19[18]] = a7;
  a9[v19[19]] = a8;
  v32 = &a9[v19[24]];
  *v32 = 0;
  *(v32 + 1) = a1;
  *(v32 + 2) = a2;
  *(v32 + 3) = v18;
  v50 = a9;
  v33 = &a9[v19[25]];
  *v33 = 3;
  *(v33 + 1) = a1;
  *(v33 + 2) = a2;
  *(v33 + 3) = v18;

  sub_217863EC4(v18);
  sub_217863EC4(v18);

  OUTLINED_FUNCTION_12_8();
  swift_getWitnessTable();
  v34 = sub_21796930C();
  v35 = 0;
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v38 = v34 / 4;
  while (v38 >= v36 && v35 < sub_21796930C())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v37 + 16);
      sub_2178E8010();
      v37 = v41;
    }

    v39 = *(v37 + 16);
    if (v39 >= *(v37 + 24) >> 1)
    {
      sub_2178E8010();
      v37 = v42;
    }

    *(v37 + 16) = v39 + 1;
    *(v37 + 8 * v39 + 32) = v35;
    ++v36;
    v35 += 4;
    if (v35 == 0x8000000000000000)
    {
      __break(1u);
      return;
    }
  }

  (*(v44 + 8))(a3, v31);
  v43 = (v50 + v19[26]);
  *v43 = v37;
  v43[1] = a10 + -40.0;
  v43[2] = 8.0;
}

uint64_t sub_217921674(uint64_t a1)
{
  v2 = sub_21796697C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_217966BCC();
}

uint64_t sub_21792173C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v95 = a1;
  v3 = a1 - 8;
  v94 = *(a1 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](a1);
  v92 = v5;
  OUTLINED_FUNCTION_52(v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD30, &qword_217970EE8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v7 = *(v3 + 32);
  v10 = *(v3 + 40);
  v9 = *(v3 + 48);
  v126 = *(v3 + 24);
  v8 = v126;
  v127 = v7;
  v104 = v7;
  v128 = v10;
  v129 = v9;
  v103 = v9;
  _s12ItemShelfRowVMa();
  OUTLINED_FUNCTION_36();
  v11 = sub_21796698C();
  v12 = sub_217926268();
  v126 = v6;
  v127 = MEMORY[0x277D83B88];
  v128 = v11;
  v129 = v12;
  v130 = MEMORY[0x277D83B98];
  sub_217967D9C();
  OUTLINED_FUNCTION_11_11();
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x277CDF678];
  v124 = WitnessTable;
  v125 = MEMORY[0x277CDF678];
  OUTLINED_FUNCTION_9_14();
  v123 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  v15 = OUTLINED_FUNCTION_14_6();
  v16 = OUTLINED_FUNCTION_16_8(&qword_27CB8BB00);
  v121 = v15;
  v122 = v16;
  v17 = swift_getWitnessTable();
  v126 = v2;
  v127 = v17;
  OUTLINED_FUNCTION_7_13();
  swift_getOpaqueTypeMetadata2();
  v126 = v2;
  v127 = v17;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_36();
  v18 = sub_21796698C();
  sub_21796736C();
  v119 = OUTLINED_FUNCTION_15_9();
  v120 = v14;
  v19 = swift_getWitnessTable();
  v126 = v18;
  v127 = &qword_27CB8BB08;
  v128 = v19;
  v129 = MEMORY[0x277CDE478];
  OUTLINED_FUNCTION_5_12();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD50, &qword_217970EF8);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796717C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  v85[1] = swift_getWitnessTable();
  v20 = sub_217967CDC();
  v21 = OUTLINED_FUNCTION_2(v20);
  v86 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = v85 - v25;
  v105 = v27;
  v28 = sub_21796698C();
  v29 = OUTLINED_FUNCTION_2(v28);
  v89 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52(v85 - v33);
  v100 = v34;
  v35 = sub_21796698C();
  v36 = OUTLINED_FUNCTION_2(v35);
  v91 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_88();
  v90 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52(v85 - v42);
  v99 = sub_21796944C();
  v43 = OUTLINED_FUNCTION_2(v99);
  v98 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_88();
  v96 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_52(v85 - v49);
  v50 = *(v3 + 60);
  v51 = v10;
  v52 = *(v10 + 8);
  v53 = v8;
  sub_21796810C();
  OUTLINED_FUNCTION_12_8();
  swift_getWitnessTable();
  v54 = v101;
  v55 = sub_21796930C();
  v56 = MEMORY[0x277CE0790];
  if (v55 < 1)
  {
    v79 = v96;
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v35);
    OUTLINED_FUNCTION_7_1();
    v117 = swift_getWitnessTable();
    v72 = MEMORY[0x277CDF918];
    v118 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_8_9();
    v115 = swift_getWitnessTable();
    v116 = v56;
    swift_getWitnessTable();
  }

  else
  {
    v57 = sub_217966E6C();
    MEMORY[0x28223BE20](v57);
    v58 = v105;
    v59 = v104;
    v85[-6] = v8;
    v85[-5] = v59;
    v85[0] = v51;
    v60 = v103;
    v85[-4] = v51;
    v85[-3] = v60;
    v61 = v54;
    v85[-2] = v54;
    sub_217967CCC();
    sub_21796741C();
    OUTLINED_FUNCTION_7_1();
    v62 = swift_getWitnessTable();
    v63 = v87;
    sub_217967A0C();
    (*(v86 + 8))(v26, v58);
    v64 = v94;
    v65 = v93;
    v66 = v61;
    v67 = v95;
    (*(v94 + 16))(v93, v66, v95);
    v68 = (*(v64 + 80) + 48) & ~*(v64 + 80);
    v69 = swift_allocObject();
    v70 = v104;
    *(v69 + 2) = v53;
    *(v69 + 3) = v70;
    v71 = v103;
    *(v69 + 4) = v85[0];
    *(v69 + 5) = v71;
    v56 = MEMORY[0x277CE0790];
    (*(v64 + 32))(&v69[v68], v65, v67);
    v108 = v62;
    v72 = MEMORY[0x277CDF918];
    v109 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_9_14();
    v73 = v100;
    v74 = swift_getWitnessTable();
    v75 = v90;
    sub_217967A4C();

    (*(v89 + 8))(v63, v73);
    v106 = v74;
    v107 = v56;
    swift_getWitnessTable();
    v76 = v88;
    sub_2179560E4(v75, v35);
    v77 = v91;
    v78 = *(v91 + 8);
    v78(v75, v35);
    sub_2179560E4(v76, v35);
    v78(v76, v35);
    v79 = v96;
    (*(v77 + 32))(v96, v75, v35);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v35);
  }

  v80 = v97;
  sub_2178AEE20(v79, v97);
  v81 = *(v98 + 8);
  v82 = v79;
  v83 = v99;
  v81(v82, v99);
  OUTLINED_FUNCTION_7_1();
  v113 = swift_getWitnessTable();
  v114 = v72;
  OUTLINED_FUNCTION_8_9();
  v111 = swift_getWitnessTable();
  v112 = v56;
  v110 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  sub_2179560E4(v80, v83);
  return (v81)(v80, v83);
}

uint64_t sub_217922140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a4;
  v69 = a5;
  v67 = a3;
  v81 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  _s12ItemShelfRowVMa();
  sub_21796698C();
  sub_217926268();
  v89 = MEMORY[0x277D83B98];
  sub_217967D9C();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277CDF678];
  v84[25] = WitnessTable;
  v84[26] = MEMORY[0x277CDF678];
  v84[24] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  sub_21796698C();
  v84[22] = swift_getWitnessTable();
  v84[23] = sub_217898FF8(&qword_27CB8BB00);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_21796666C();
  v10 = sub_21796698C();
  v11 = sub_21796736C();
  v84[20] = swift_getWitnessTable();
  v84[21] = v9;
  v12 = a1;
  v74 = v11;
  v75 = v10;
  v85 = v10;
  v86 = v11;
  v70 = swift_getWitnessTable();
  v87 = v70;
  v88 = MEMORY[0x277CDE478];
  swift_getOpaqueTypeMetadata2();
  v13 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD50, &qword_217970EF8);
  v71 = v13;
  v14 = sub_21796698C();
  sub_21796717C();
  v72 = v14;
  v76 = sub_21796698C();
  v15 = sub_21796698C();
  v16 = *(v15 - 8);
  v78 = v15;
  v79 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v66 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v65 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DD58, &qword_217970F00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DD30, &qword_217970EE8);
  v25 = *(*(v73 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v73);
  v77 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - v28;
  v85 = a2;
  v86 = v67;
  v87 = v68;
  v88 = v69;
  v30 = _s9ItemShelfVMa();
  sub_217922A60(v30, v24);
  LOBYTE(a2) = sub_21796740C();
  v31 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DD60, &qword_217970F08) + 36)];
  *v31 = a2;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  LOBYTE(a2) = sub_21796741C();
  sub_21796660C();
  v32 = &v24[*(v21 + 36)];
  *v32 = a2;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v37 = qword_27CB979B0;
  v38 = *algn_27CB979B8;
  v39 = qword_27CB979C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 0x4449746E65726170;
  *(inited + 40) = 0xE800000000000000;
  v41 = *(v12 + *(v30 + 68));
  if (v41 == 11)
  {
    v42 = 0;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
  }

  else
  {
    *(inited + 48) = v41;
    v42 = &_s8ModuleIDON;
  }

  *(inited + 72) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v43 = sub_217968EAC();
  sub_2178ED924(v43, v37, v38, v39);
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_2178EE0A8(v45, v47, v49);

  sub_217926404();
  v65 = v29;
  sub_21796790C();

  sub_217899038(v24, &qword_27CB8DD58);
  v50 = v66;
  sub_217922F80(v30, v66);
  v85 = v75;
  v86 = v74;
  v87 = v70;
  v88 = MEMORY[0x277CDE478];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_217926608();
  v84[8] = OpaqueTypeConformance2;
  v84[9] = v52;
  v53 = swift_getWitnessTable();
  v54 = sub_217898FF8(&unk_27CB8DDB0);
  v84[6] = v53;
  v84[7] = v54;
  v55 = swift_getWitnessTable();
  v56 = sub_217926AB4(&unk_27CB8DDB8);
  v84[4] = v55;
  v84[5] = v56;
  v84[2] = swift_getWitnessTable();
  v84[3] = MEMORY[0x277CDF918];
  v57 = v78;
  v58 = swift_getWitnessTable();
  v59 = v80;
  sub_2179560E4(v50, v57);
  v60 = v79;
  v61 = *(v79 + 8);
  v61(v50, v57);
  v62 = v29;
  v63 = v77;
  sub_217864D70(v62, v77, &qword_27CB8DD30, &qword_217970EE8);
  v85 = v63;
  (*(v60 + 16))(v50, v59, v57);
  v86 = v50;
  v84[0] = v73;
  v84[1] = v57;
  v82 = sub_21792665C(&unk_27CB8DDC0);
  v83 = v58;
  sub_2178B9390(&v85, 2, v84);
  v61(v59, v57);
  sub_217899038(v65, &qword_27CB8DD30);
  v61(v50, v57);
  return sub_217899038(v63, &qword_27CB8DD30);
}

uint64_t sub_217922A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v6 = &v48 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDD0, &qword_217970F48);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v48 - v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = _s31AdditionalContentViewPropertiesVMa();
  v13 = sub_21796944C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DD90, &qword_217970F18);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  if (*(v2 + *(a1 + 72)) == 1)
  {
    sub_217923CE0(a1, v16);
    v21 = __swift_storeEnumTagSinglePayload(v16, 0, 1, v12);
    v49 = &v48;
    MEMORY[0x28223BE20](v21);
    v22 = *(a1 + 24);
    *(&v48 - 6) = v10;
    *(&v48 - 5) = v22;
    v23 = *(a1 + 40);
    *(&v48 - 4) = v11;
    *(&v48 - 3) = v23;
    *(&v48 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDD8, &qword_217970F50);
    sub_2179269FC();
    swift_getWitnessTable();
    sub_21796687C();
    v24 = sub_21796743C();
    v25 = *(v2 + *(a1 + 108));
    sub_21796660C();
    v26 = &v20[*(v17 + 36)];
    *v26 = v24;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    sub_217864D70(v20, v9, &qword_27CB8DD90, &qword_217970F18);
    swift_storeEnumTagMultiPayload();
    sub_217926550();
    sub_217898AE0();
    sub_217966F8C();
    return sub_217899038(v20, &qword_27CB8DD90);
  }

  else
  {
    v48 = v9;
    v49 = v17;
    v32 = v2[1];
    v53 = *v2;
    v54 = v32;
    sub_217873C34();

    v33 = sub_21796763C();
    v35 = v34;
    LOBYTE(v32) = v36;
    v37 = *(v2 + *(a1 + 64));
    v38 = sub_2179675DC();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_21788C9B8(v33, v35, v32 & 1);

    if (qword_27CB8A3E0 != -1)
    {
      swift_once();
    }

    v45 = qword_27CB979C0;
    v53 = qword_27CB979B0;
    v54 = *algn_27CB979B8;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

    v46 = v53;
    v47 = v54;
    v53 = v38;
    v54 = v40;
    v55 = v42 & 1;
    v56 = v44;
    sub_2178EE0A8(v46, v47, v45);

    sub_21796790C();
    sub_21788C9B8(v38, v40, v42 & 1);

    sub_217864D70(v6, v48, &qword_27CB8B600, &unk_21796BED0);
    swift_storeEnumTagMultiPayload();
    sub_217926550();
    sub_217898AE0();
    sub_217966F8C();
    return sub_217899038(v6, &qword_27CB8B600);
  }
}

uint64_t sub_217922F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v97 = sub_21796697C();
  v96 = *(v97 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21796734C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21796736C();
  v71 = v8;
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v8);
  v92 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v91 = a1;
  v12 = a1[2];
  v90 = a1[3];
  v89 = a1[4];
  v88 = a1[5];
  v118 = v12;
  v119 = v90;
  v120 = v89;
  v121 = v88;
  _s12ItemShelfRowVMa();
  v13 = sub_21796698C();
  v14 = sub_217926268();
  v118 = v11;
  v119 = MEMORY[0x277D83B88];
  v120 = v13;
  v121 = v14;
  v122 = MEMORY[0x277D83B98];
  sub_217967D9C();
  WitnessTable = swift_getWitnessTable();
  v16 = MEMORY[0x277CDF678];
  v116 = WitnessTable;
  v117 = MEMORY[0x277CDF678];
  v17 = MEMORY[0x277CDFAD8];
  v115 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  v18 = sub_21796698C();
  v19 = swift_getWitnessTable();
  v20 = sub_217898FF8(&qword_27CB8BB00);
  v113 = v19;
  v114 = v20;
  v87 = v17;
  v21 = swift_getWitnessTable();
  v118 = v18;
  v119 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v118 = v18;
  v119 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_21796666C();
  v82 = *(v22 - 8);
  v23 = *(v82 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v68 - v24;
  v26 = sub_21796698C();
  v83 = *(v26 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x28223BE20](v26);
  v72 = &v68 - v28;
  v111 = swift_getWitnessTable();
  v112 = v16;
  v74 = swift_getWitnessTable();
  v118 = v26;
  v119 = v8;
  v120 = v74;
  v121 = MEMORY[0x277CDE478];
  v76 = MEMORY[0x277CDEB68];
  v73 = swift_getOpaqueTypeMetadata2();
  v78 = *(v73 - 8);
  v29 = *(v78 + 64);
  MEMORY[0x28223BE20](v73);
  v31 = &v68 - v30;
  v32 = sub_21796698C();
  v81 = *(v32 - 8);
  v33 = *(v81 + 64);
  MEMORY[0x28223BE20](v32);
  v69 = &v68 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD50, &qword_217970EF8);
  v77 = sub_21796698C();
  v84 = *(v77 - 8);
  v35 = *(v84 + 64);
  MEMORY[0x28223BE20](v77);
  v70 = &v68 - v36;
  sub_21796717C();
  v85 = sub_21796698C();
  v86 = *(v85 - 8);
  v37 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  v75 = &v68 - v38;
  sub_2179673CC();
  v100 = v12;
  v101 = v90;
  v102 = v89;
  v103 = v88;
  v39 = v99;
  v104 = v99;
  sub_21796667C();
  v40 = v91;
  v41 = *(v39 + *(v91 + 26) + 8);
  sub_217967E4C();
  v42 = v72;
  sub_21796799C();
  (*(v82 + 8))(v25, v22);
  sub_21796733C();
  v43 = v92;
  sub_21796735C();
  v44 = v71;
  v45 = v74;
  v46 = MEMORY[0x277CDE478];
  sub_2179678BC();
  (*(v94 + 8))(v43, v44);
  (*(v83 + 8))(v42, v26);
  v118 = v26;
  v119 = v44;
  v120 = v45;
  v121 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v69;
  v49 = v73;
  sub_21796796C();
  (*(v78 + 8))(v31, v49);
  v50 = v40;
  v51 = v99;
  v52 = v99 + *(v40 + 21);
  v53 = v95;
  sub_2179565B8();
  v54 = sub_217926608();
  v109 = v47;
  v110 = v54;
  v55 = swift_getWitnessTable();
  v56 = v70;
  sub_21792CB3C();
  (*(v96 + 8))(v53, v97);
  (*(v81 + 8))(v48, v32);
  v57 = sub_2179673EC();
  v58 = v51 + *(v50 + 27);
  v59 = *(v58 + 40);
  v60 = sub_217898FF8(&unk_27CB8DDB0);
  v107 = v55;
  v108 = v60;
  v61 = v77;
  v62 = swift_getWitnessTable();
  v63 = v75;
  sub_2179256EC(v57, v59, 0, v61, v62);
  (*(v84 + 8))(v56, v61);
  sub_2179673EC();
  v64 = *(v58 + 32);
  v65 = sub_217926AB4(&unk_27CB8DDB8);
  v105 = v62;
  v106 = v65;
  v66 = v85;
  swift_getWitnessTable();
  sub_217967A0C();
  return (*(v86 + 8))(v63, v66);
}

uint64_t sub_217923B20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 32) + 8);
  v5 = sub_21796810C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v16 - v8, v1 + *(a1 + 52), v5);
  swift_getWitnessTable();
  sub_2179691AC();
  sub_2179688CC();
  v9 = sub_2179695DC();

  if (v9)
  {
    if (*(v1 + *(a1 + 68)) == 11)
    {
    }

    else
    {
      v11 = (v1 + *(a1 + 80));
      v12 = *v11;
      v13 = v11[1];
      v14 = *(a1 + 24);
      v15 = *(a1 + 40);
      _s9ViewModelCMa();
      swift_getWitnessTable();
      sub_217966A9C();
      sub_2178E7104();
    }
  }

  return result;
}

unint64_t sub_217923CE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v8 = sub_21796810C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-v10];
  v12 = *v2;
  v13 = v2[1];
  (*(v14 + 16))(&v21[-v10], v2 + *(a1 + 52));
  v15 = v2 + *(a1 + 96);
  v16 = *(v15 + 1);
  v17 = *(v15 + 2);
  v18 = *(v15 + 3);
  v19 = *(v2 + *(a1 + 68));
  v21[0] = *v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  sub_217876538(v12, v13, v11, v19, v21, *(v2 + *(a1 + 76)), 0, a2, v6);

  return sub_217863EC4(v18);
}

uint64_t sub_217923E40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_217966CFC();
  *(a6 + 8) = 0x4010000000000000;
  *(a6 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDF8, &qword_217970F60);
  sub_217923F50(a1, a2, a3, a4, a5, a6 + *(v12 + 44));
  v13 = sub_21796742C();
  v14 = -*(a1 + *(_s9ItemShelfVMa() + 108));
  sub_21796660C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDD8, &qword_217970F50);
  v24 = a6 + *(result + 36);
  *v24 = v13;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_217923F50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a6;
  v79 = sub_217966FAC();
  v77 = *(v79 - 8);
  v11 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BED0, &qword_21796CEB0);
  v13 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v70 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BED8, &qword_21796CEB8);
  v80 = *(v81 - 8);
  v15 = *(v80 + 64);
  v16 = MEMORY[0x28223BE20](v81);
  v78 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ADE8, &qword_21796BE90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v74 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v83 = &v70 - v23;
  v24 = *a1;
  v25 = a1[1];
  v71 = a1;
  __src[0] = v24;
  __src[1] = v25;
  sub_217873C34();

  v26 = sub_21796763C();
  v28 = v27;
  v30 = v29;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  v31 = _s9ItemShelfVMa();
  v32 = *(a1 + *(v31 + 64));
  v33 = sub_2179675DC();
  v35 = v34;
  LOBYTE(a2) = v36;
  sub_21788C9B8(v26, v28, v30 & 1);

  __src[0] = sub_217967B3C();
  v37 = sub_2179675BC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_21788C9B8(v33, v35, a2 & 1);

  v44 = sub_21796742C();
  v45 = *(v71 + *(v31 + 108));
  sub_21796660C();
  v88 = v41 & 1;
  v85 = 0;
  __src[0] = v37;
  __src[1] = v39;
  LOBYTE(__src[2]) = v41 & 1;
  *(&__src[2] + 1) = *v87;
  HIDWORD(__src[2]) = *&v87[3];
  __src[3] = v43;
  LOBYTE(__src[4]) = v44;
  *(&__src[4] + 1) = *v86;
  HIDWORD(__src[4]) = *&v86[3];
  __src[5] = v46;
  __src[6] = v47;
  __src[7] = v48;
  __src[8] = v49;
  LOBYTE(__src[9]) = 0;
  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v51 = qword_27CB979B0;
  v50 = *algn_27CB979B8;
  v52 = qword_27CB979C0;
  __dst[0] = qword_27CB979B0;
  __dst[1] = *algn_27CB979B8;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  v53 = __dst[0];
  v54 = __dst[1];
  memcpy(__dst, __src, 0x49uLL);
  sub_2178EE0A8(v53, v54, v52);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEF0, &qword_21796B628);
  sub_21788CAEC();
  v55 = v83;
  sub_21796790C();
  sub_217899038(__src, &qword_27CB8AEF0);

  __dst[0] = v51;
  __dst[1] = v50;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x64726177726F66, 0xE700000000000000);

  sub_2178EE0A8(__dst[0], __dst[1], v52);

  sub_2178B412C();
  v56 = v73;
  sub_21796790C();

  v57 = v76;
  sub_217966A8C();
  sub_21792665C(&qword_27CB8BEE8);
  sub_217926AB4(&qword_27CB8AE00);
  v58 = v75;
  v59 = v79;
  sub_21796773C();
  (*(v77 + 8))(v57, v59);
  sub_217899038(v56, &qword_27CB8BED0);
  v60 = v74;
  sub_217864D70(v55, v74, &qword_27CB8ADE8, &qword_21796BE90);
  v61 = v80;
  v62 = *(v80 + 16);
  v63 = v78;
  v64 = v81;
  v62(v78, v58, v81);
  v65 = v82;
  sub_217864D70(v60, v82, &qword_27CB8ADE8, &qword_21796BE90);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8DE00, &qword_217970F68);
  v62((v65 + *(v66 + 48)), v63, v64);
  v67 = v65 + *(v66 + 64);
  *v67 = 0;
  *(v67 + 8) = 1;
  v68 = *(v61 + 8);
  v68(v58, v64);
  sub_217899038(v83, &qword_27CB8ADE8);
  v68(v63, v64);
  return sub_217899038(v60, &qword_27CB8ADE8);
}

uint64_t sub_217924780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v48 = a4;
  v49 = a1;
  v50 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v9 = a3;
  _s12ItemShelfRowVMa();
  v10 = sub_21796698C();
  v11 = sub_217926268();
  v61 = v8;
  v62 = MEMORY[0x277D83B88];
  v63 = v10;
  v64 = v11;
  v65 = MEMORY[0x277D83B98];
  v12 = sub_217967D9C();
  WitnessTable = swift_getWitnessTable();
  v60 = MEMORY[0x277CDF678];
  v58 = swift_getWitnessTable();
  v44 = v12;
  v43 = swift_getWitnessTable();
  v13 = sub_217967CAC();
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v42 = &v37 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  v16 = sub_21796698C();
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - v18;
  v19 = swift_getWitnessTable();
  v37 = v19;
  v20 = sub_217898FF8(&qword_27CB8BB00);
  v56 = v19;
  v57 = v20;
  v38 = swift_getWitnessTable();
  v61 = v16;
  v62 = v38;
  v39 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v22 = *(v40 + 64);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v37 - v26;
  sub_217966D0C();
  v61 = a2;
  v62 = v9;
  v28 = v9;
  v29 = v47;
  v30 = v48;
  v63 = v48;
  v64 = v47;
  v31 = *(v49 + *(_s9ItemShelfVMa() + 104) + 16);
  v51 = a2;
  v52 = v28;
  v53 = v30;
  v54 = v29;
  v55 = v49;
  v32 = v42;
  sub_217967C9C();
  sub_2178FD854();
  sub_217862E84();
  v33 = v41;
  sub_21796779C();
  (*(v46 + 8))(v32, v13);
  v34 = v38;
  sub_21796787C();
  (*(v45 + 8))(v33, v16);
  v61 = v16;
  v62 = v34;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4(v25, OpaqueTypeMetadata2);
  v35 = *(v40 + 8);
  v35(v25, OpaqueTypeMetadata2);
  sub_2179560E4(v27, OpaqueTypeMetadata2);
  return (v35)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_217924CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v39 = a1;
  v42 = a6;
  v46 = a2;
  v47 = a3;
  v35 = a2;
  v36 = a3;
  v48 = a4;
  v49 = a5;
  v37 = a4;
  v10 = _s9ItemShelfVMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v41 = v15;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v34[1] = _s12ItemShelfRowVMa();
  v16 = sub_21796698C();
  v40 = sub_217926268();
  v46 = v15;
  v47 = MEMORY[0x277D83B88];
  v48 = v16;
  v49 = v40;
  v50 = MEMORY[0x277D83B98];
  v17 = sub_217967D9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v34 - v23;
  v25 = v39;
  v26 = *(*(v39 + *(v10 + 104)) + 16);
  v46 = 0;
  v47 = v26;
  v34[0] = swift_getKeyPath();
  (*(v11 + 16))(v14, v25, v10);
  v27 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 2) = v35;
  *(v28 + 3) = v29;
  v30 = v38;
  *(v28 + 4) = v37;
  *(v28 + 5) = v30;
  (*(v11 + 32))(&v28[v27], v14, v10);
  WitnessTable = swift_getWitnessTable();
  v45 = MEMORY[0x277CDF678];
  v33 = swift_getWitnessTable();
  sub_217967D7C();
  v43 = v33;
  swift_getWitnessTable();
  sub_2179560E4(v22, v17);
  v31 = *(v18 + 8);
  v31(v22, v17);
  sub_2179560E4(v24, v17);
  return (v31)(v24, v17);
}

uint64_t sub_21792506C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a7;
  v13 = *(a5 + 8);
  v65 = sub_21796810C();
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v65);
  v17 = &v51[-v16];
  __dst[0] = a3;
  __dst[1] = a4;
  __dst[2] = a5;
  __dst[3] = a6;
  v18 = _s12ItemShelfRowVMa();
  v64 = *(v18 - 8);
  v19 = *(v64 + 64);
  MEMORY[0x28223BE20](v18);
  v57 = &v51[-v20];
  v56 = v21;
  v22 = sub_21796698C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v58 = &v51[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v63 = &v51[-v27];
  v28 = *a1;
  v62 = a3;
  __dst[0] = a3;
  __dst[1] = a4;
  v60 = a4;
  v59 = a5;
  __dst[2] = a5;
  __dst[3] = a6;
  v29 = v17;
  v30 = _s9ItemShelfVMa();
  result = (*(v14 + 16))(v17, a2 + v30[13], v65);
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v65 = v23;
    v32 = (a2 + v30[26]);
    if (v28 < *(*v32 + 16))
    {
      v55 = sub_217925550(*(*v32 + 8 * v28 + 32), v30);
      v54 = v33;
      v53 = v34;
      v35 = a2 + v30[25];
      v36 = *v35;
      v38 = *(v35 + 8);
      v37 = *(v35 + 16);
      v52 = *(a2 + v30[17]);
      v39 = *(v35 + 24);
      v69[0] = v36;
      v70 = v38;
      v71 = v37;
      v72 = v39;
      v40 = *(a2 + v30[19]);
      v68 = *(a2 + v30[22]);

      sub_217863EC4(v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDC8, &qword_2179711D0);
      sub_217967C3C();
      v41 = __dst[0];
      v42 = __dst[1];
      v43 = __dst[2];
      memcpy(__dst, (a2 + v30[27]), sizeof(__dst));
      v44 = v57;
      sub_217950850(v29, v55, v54, v53, v52, v69, v40, v41, v57, v42, v43, __dst, v62, v60, v59);
      v45 = v32[1];
      v46 = v56;
      WitnessTable = swift_getWitnessTable();
      sub_217967E3C();
      v48 = v58;
      sub_21796799C();
      (*(v64 + 8))(v44, v46);
      v66 = WitnessTable;
      v67 = MEMORY[0x277CDF678];
      swift_getWitnessTable();
      v49 = v63;
      sub_2179560E4(v48, v22);
      v50 = *(v65 + 8);
      v50(v48, v22);
      sub_2179560E4(v49, v22);
      return (v50)(v49, v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217925550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = *(a2 + 52);
  v6 = *(a2 + 16);
  v7 = *(*(a2 + 32) + 8);
  sub_21796810C();
  v8 = 0;
  v9 = v2 + 24;
  v10 = MEMORY[0x277D84F90];
  for (i = a1; ; a1 = i)
  {
    v12 = a1 + v8;
    swift_getWitnessTable();
    result = sub_21796930C();
    v14 = *(a2 + 108);
    if (a1 + v8 >= result)
    {
      break;
    }

    v15 = *(v9 + v14);
    if (v8 >= v15)
    {
      goto LABEL_10;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = *(v10 + 16);
      sub_2178E8010();
      v10 = v18;
    }

    v16 = *(v10 + 16);
    if (v16 >= *(v10 + 24) >> 1)
    {
      sub_2178E8010();
      v10 = v19;
    }

    *(v10 + 16) = v16 + 1;
    *(v10 + 8 * v16 + 32) = v12;
    ++v8;
  }

  v15 = *(v3 + v14 + 24);
LABEL_10:
  if (!v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = *(v10 + 16) % v15;
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v15 - v20;
  if (__OFSUB__(v15, v20))
  {
    __break(1u);
LABEL_15:
    v21 = 0;
  }

  result = sub_217925828(0, v21);
  if (a1 != 0x8000000000000000 || v15 != -1)
  {
    return v10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_2179256EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21796717C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_21796660C();
    *(&v13 + 1) = v15;
    *(&v14 + 1) = v16;
  }

  v18[0] = v13;
  v18[1] = v14;
  v19 = a3 & 1;
  sub_21796716C();
  MEMORY[0x21CEA69A0](v12, a4, v8, a5);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_217925828(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_21796912C();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_21796E3C0)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2179258CC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v8 = sub_2178E7730(a1, a2) & (a3 == a5);
  if (a4 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217925918(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_2178EFAF8(a1, a2);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  MEMORY[0x21CEA86D0](*&v6);
  if (a4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a4;
  }

  return MEMORY[0x21CEA86D0](*&v7);
}

uint64_t sub_217925978(uint64_t a1, double a2, double a3)
{
  sub_21796973C();
  sub_217925918(v7, a1, a2, a3);
  return sub_21796977C();
}

uint64_t sub_2179259D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_2178E7730(a1, a4))
  {
    return sub_2178E7730(a2, a5) & (a3 == a6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217925A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2178EFAF8(a1, a2);
  sub_2178EFAF8(a1, a3);
  return MEMORY[0x21CEA86B0](a4);
}

uint64_t sub_217925A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21796973C();
  sub_217925A38(v7, a1, a2, a3);
  return sub_21796977C();
}

uint64_t sub_217925B18()
{
  sub_21796973C();
  sub_217925918(v2, *v0, *(v0 + 8), *(v0 + 16));
  return sub_21796977C();
}

uint64_t sub_217925BB0()
{
  sub_21796973C();
  sub_217925A38(v2, *v0, v0[1], v0[2]);
  return sub_21796977C();
}

void sub_217925CB0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_4_15();
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_4_15();
  MEMORY[0x21CEA86B0](*(v0 + 24));
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_4_15();
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_4_15();
  v6 = *(v0 + 48);
  OUTLINED_FUNCTION_4_15();
  v7 = *(v0 + 56);
  sub_21796975C();
  v8 = *(v0 + 64);
  OUTLINED_FUNCTION_4_15();
  v9 = *(v0 + 72);
  OUTLINED_FUNCTION_4_15();
  v10 = *(v0 + 80);
  OUTLINED_FUNCTION_4_15();
}

uint64_t sub_217925D48()
{
  sub_21796973C();
  sub_217925CB0();
  return sub_21796977C();
}

uint64_t sub_217925D94()
{
  sub_21796973C();
  sub_217925CB0();
  return sub_21796977C();
}

void sub_217925DDC(void *a1)
{
  v2 = a1[2];
  v3 = *(a1[4] + 8);
  sub_21796810C();
  if (v4 <= 0x3F)
  {
    sub_217926048(319, &qword_27CB8ACD0, &_s8ModuleIDON, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      v6 = a1[3];
      v7 = a1[5];
      _s9ViewModelCMa();
      swift_getWitnessTable();
      sub_217966ADC();
      if (v8 <= 0x3F)
      {
        sub_2178F0DD4();
        if (v9 <= 0x3F)
        {
          sub_217926048(319, &qword_27CB8DC20, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
          if (v10 <= 0x3F)
          {
            sub_217926048(319, qword_27CB8DC28, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v11 <= 0x3F)
            {
              _s9ItemShelfV6LayoutVMa();
              if (v12 <= 0x3F)
              {
                _s9ItemShelfV9ConstantsVMa();
                if (v13 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_217926048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2179260C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21792610C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 88))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217926158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2179261B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217926224(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_217926268()
{
  result = qword_27CB8DD40;
  if (!qword_27CB8DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
    sub_2179262F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DD40);
  }

  return result;
}

unint64_t sub_2179262F4()
{
  result = qword_27CB8DD48;
  if (!qword_27CB8DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DD48);
  }

  return result;
}

uint64_t sub_217926360()
{
  v1 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v2 = *(*(_s9ItemShelfVMa() - 8) + 80);

  return sub_217923AE0();
}

unint64_t sub_217926464(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = OUTLINED_FUNCTION_35_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2179264C4()
{
  result = qword_27CB8DD78;
  if (!qword_27CB8DD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD80, &qword_217970F10);
    sub_217926550();
    sub_217898AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DD78);
  }

  return result;
}

unint64_t sub_217926550()
{
  result = qword_27CB8DD88;
  if (!qword_27CB8DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD90, &qword_217970F18);
    sub_217898FF8(&unk_27CB8DD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DD88);
  }

  return result;
}

unint64_t sub_217926608()
{
  result = qword_27CB8DDA8;
  if (!qword_27CB8DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DDA8);
  }

  return result;
}

unint64_t sub_21792665C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_63_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_217926AB4(&qword_27CB8A710);
    result = OUTLINED_FUNCTION_35_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);
  v1 = _s9ItemShelfVMa();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[13];
  v6 = *(v23 + 8);
  v7 = sub_21796810C();
  OUTLINED_FUNCTION_3(v7);
  (*(v8 + 8))(v3 + v5);
  sub_2178643E0(*(v3 + v1[14]));
  v9 = *(v3 + v1[16]);

  v10 = *(v3 + v1[20]);

  v11 = v1[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8CCE8, &dword_2179735F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21796697C();
    OUTLINED_FUNCTION_3(v12);
    (*(v13 + 8))(v3 + v11);
  }

  else
  {
    v14 = *(v3 + v11);
  }

  v15 = *(v3 + v1[22] + 8);

  v16 = *(v3 + v1[23] + 8);

  v17 = v3 + v1[24];
  v18 = *(v17 + 16);

  sub_2178643E0(*(v17 + 24));
  v19 = v3 + v1[25];
  v20 = *(v19 + 16);

  sub_2178643E0(*(v19 + 24));
  v21 = *(v3 + v1[26]);

  return swift_deallocObject();
}

uint64_t sub_217926910@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(_s9ItemShelfVMa() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_21792506C(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_2179269FC()
{
  result = qword_27CB8DDE0;
  if (!qword_27CB8DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DDD8, &qword_217970F50);
    sub_217898FF8(&unk_27CB8DDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DDE0);
  }

  return result;
}

unint64_t sub_217926AB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_217926AF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217926B34(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217926B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_15()
{

  JUMPOUT(0x21CEA86D0);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_16_8(uint64_t a1)
{

  return sub_217898FF8(a1);
}

uint64_t sub_217926D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + *(sub_217967C4C() + 28)) = 0;
  v6 = *(*(a2 - 8) + 32);

  return v6(a3, a1, a2);
}

unint64_t sub_217926D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v10 = *a5;
  v12 = *(a5 + 1);
  v11 = *(a5 + 2);
  v13 = *(a5 + 3);
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *(a7 + 64) = sub_217966ACC();
  *(a7 + 72) = v14;
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v15 = OUTLINED_FUNCTION_29_5();
  v16 = a7 + v15[19];
  *v16 = sub_21785853C() & 1;
  *(v16 + 8) = v17;
  v18 = (a7 + v15[20]);
  *v18 = sub_217921600();
  v18[1] = v19;
  v20 = (a7 + v15[23]);
  *v20 = xmmword_217971040;
  v20[1] = xmmword_217971050;
  *a7 = a1;
  *(a7 + 8) = a2;
  v21 = v15[18];
  v22 = *(a9 + 8);
  v23 = sub_21796810C();
  sub_217926D08(a3, v23, a7 + v21);
  *(a7 + 16) = a4;
  *(a7 + 24) = v10;
  *(a7 + 32) = v12;
  *(a7 + 40) = v11;
  *(a7 + 48) = v13;
  *(a7 + 56) = a6;
  v24 = swift_allocObject();
  *(v24 + 16) = v10;
  *(v24 + 24) = v12;
  *(v24 + 32) = v11;
  *(v24 + 40) = v13;
  v25 = v24 | 0x4000000000000000;
  *(a7 + v15[21]) = v24 | 0x4000000000000000;
  v26 = a7 + v15[22];
  *v26 = 1;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = v24 | 0x4000000000000000;

  sub_217863EC4(v13);
  return sub_217863EC4(v25);
}

void sub_217926F5C(void *a1)
{
  sub_217926048(319, &qword_27CB8ACD0, &_s8ModuleIDON, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = a1[3];
    v4 = a1[5];
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966ADC();
    if (v5 <= 0x3F)
    {
      sub_21788C1DC();
      if (v6 <= 0x3F)
      {
        v7 = a1[2];
        v8 = *(a1[4] + 8);
        sub_21796810C();
        sub_217967C4C();
        if (v9 <= 0x3F)
        {
          sub_217926048(319, qword_27CB8A648, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v10 <= 0x3F)
          {
            sub_217926048(319, &qword_27CB8DC20, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
            if (v11 <= 0x3F)
            {
              _s21AdditionalContentViewV9ConstantsVMa();
              if (v12 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2179271B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21792720C@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  OUTLINED_FUNCTION_0_1();
  v121 = v1;
  v122 = *(v2 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_52(v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v5[2];
  v7 = v5[4];
  v8 = v5;
  v9 = *(v7 + 8);
  v10 = sub_21796810C();
  v11 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v118 = v8;
  v125 = v8[3];
  *&v13 = v6;
  *(&v13 + 1) = v125;
  v128 = v13;
  v124 = v8[5];
  *&v14 = v7;
  *(&v14 + 1) = v124;
  v127 = v14;
  v142 = v14;
  v141 = v13;
  _s13ItemShelfCellVMa();
  v15 = OUTLINED_FUNCTION_13_11();
  *&v141 = v8;
  *(&v141 + 1) = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217966DCC();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v17 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v141 = v10;
  *(&v141 + 1) = AssociatedTypeWitness;
  *&v142 = v17;
  *(&v142 + 1) = WitnessTable;
  v143 = AssociatedConformanceWitness;
  sub_217967D9C();
  OUTLINED_FUNCTION_19_0();
  v140[4] = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v20 = sub_21796665C();
  OUTLINED_FUNCTION_18_0();
  v21 = swift_getWitnessTable();
  *&v141 = v20;
  *(&v141 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v117 = v16;
  sub_21796698C();
  sub_21796698C();
  *&v141 = v20;
  *(&v141 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_16();
  v25 = sub_21792C55C(v23, v24);
  v140[2] = OpaqueTypeConformance2;
  v140[3] = v25;
  v116 = MEMORY[0x277CDFAD8];
  v140[0] = swift_getWitnessTable();
  v140[1] = v25;
  v119 = v25;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_12_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v26 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  v27 = swift_getWitnessTable();
  v28 = sub_217873C34();
  *&v141 = v26;
  *(&v141 + 1) = MEMORY[0x277D837D0];
  v101[1] = v26;
  *&v142 = v27;
  *(&v142 + 1) = v28;
  v101[4] = v27;
  v101[3] = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v111 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_52(v101 - v33);
  _s18NavigationBarStyleVMa();
  v34 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v112 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52(v101 - v39);
  done = _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  v41 = swift_getWitnessTable();
  *&v141 = done;
  *(&v141 + 1) = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  *&v141 = v26;
  *(&v141 + 1) = MEMORY[0x277D837D0];
  *&v142 = v27;
  *(&v142 + 1) = v28;
  v43 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  v44 = swift_getWitnessTable();
  v138 = v43;
  v139 = v44;
  v45 = swift_getWitnessTable();
  v103 = v45;
  *&v141 = done;
  *(&v141 + 1) = v41;
  v102 = swift_getOpaqueTypeConformance2();
  *&v141 = v34;
  *(&v141 + 1) = v42;
  *&v142 = v45;
  *(&v142 + 1) = v102;
  v106 = MEMORY[0x277CDEEF8];
  v104 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v110 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  v51 = v101 - v50;
  sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v115 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52(v101 - v56);
  v116 = v57;
  v108 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v117 = v58;
  v60 = *(v59 + 64);
  v62 = MEMORY[0x28223BE20](v61);
  v113 = v101 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52(v101 - v64);
  v65 = v118;
  v66 = v126;
  sub_217927E2C(v118, &v141);
  v137 = v141;
  v67 = v66[1];
  v135 = *v66;
  v136 = v67;
  swift_checkMetadataState();
  v68 = v109;
  sub_2179677EC();

  v69 = OpaqueTypeMetadata2;
  v70 = v125;
  v71 = j__OUTLINED_FUNCTION_59();
  v72 = v107;
  sub_21792D7FC(v71 & 1, v70, v69, v70, v43);
  OUTLINED_FUNCTION_54(&v137);
  v73(v68, v69);
  v130 = v127;
  v129 = v128;
  v74 = swift_checkMetadataState();
  v75 = v103;
  v76 = v102;
  sub_217967A1C();
  OUTLINED_FUNCTION_54(&v137 + 8);
  v77(v72, v34);
  v78 = v121;
  v79 = v120;
  (*(v121 + 16))(v120, v126, v65);
  v80 = v78;
  v81 = (*(v78 + 80) + 48) & ~*(v78 + 80);
  v82 = swift_allocObject();
  v83 = v127;
  *(v82 + 16) = v128;
  *(v82 + 32) = v83;
  (*(v80 + 32))(v82 + v81, v79, v65);
  v84 = v101[2];
  *&v141 = v34;
  *(&v141 + 1) = v74;
  *&v142 = v75;
  *(&v142 + 1) = v76;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v104;
  sub_2178D0790(sub_21792C10C, v82, v104, v85);

  OUTLINED_FUNCTION_54(&v136);
  v87(v51, v86);
  if (qword_27CB8A390 != -1)
  {
    swift_once();
  }

  v88 = qword_27CB978D0;
  v141 = xmmword_27CB978C0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0xD000000000000015, 0x8000000217976440);

  v89 = v141;
  v90 = sub_217864644();
  v133 = v85;
  v134 = v90;
  v91 = v116;
  v92 = swift_getWitnessTable();
  sub_2178ED854(v89, *(&v89 + 1), v88);

  OUTLINED_FUNCTION_54(v140);
  v93(v84, v91);
  v131 = v92;
  v132 = v119;
  v94 = v108;
  swift_getWitnessTable();
  v95 = v114;
  v96 = OUTLINED_FUNCTION_27_5();
  sub_2179560E4(v96, v97);
  v98 = *(v117 + 8);
  v99 = OUTLINED_FUNCTION_27_5();
  v98(v99);
  sub_2179560E4(v95, v94);
  return (v98)(v95, v94);
}

uint64_t sub_217927E2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v7 = a1[2];
  v8 = a1[3];
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  v9 = a1[4];
  v10 = a1[5];
  *(v6 + 4) = v9;
  *(v6 + 5) = v10;
  (*(v3 + 32))(&v6[v5], v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = v9[1];
  v12 = sub_21796810C();
  v26[1] = v9[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v14 = _s13ItemShelfCellVMa();
  WitnessTable = swift_getWitnessTable();
  v33 = v14;
  v34 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  v38 = *(v9[4] + 8);
  swift_getWitnessTable();
  sub_217966DCC();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  v16 = sub_217967E9C();
  v17 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v12;
  v34 = AssociatedTypeWitness;
  v35 = v16;
  v36 = v17;
  v37 = AssociatedConformanceWitness;
  sub_217967D9C();
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  v19 = sub_21796665C();
  v20 = swift_getWitnessTable();
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  v33 = v19;
  v34 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_21792C55C(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v30 = OpaqueTypeConformance2;
  v31 = v22;
  v28 = swift_getWitnessTable();
  v29 = v22;
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  result = sub_21796685C();
  v24 = v27;
  *v27 = result;
  v24[1] = v25;
  return result;
}

uint64_t sub_2179282D4()
{
  *&v4 = sub_2178C3764();
  *(&v4 + 1) = v0;
  done = _s15DoneToolbarItemVMa();
  WitnessTable = swift_getWitnessTable();
  sub_2178B9358(&v4, done, &v5);

  v4 = v5;
  MEMORY[0x21CEA6000](&v4, done, WitnessTable);
}

uint64_t sub_217928398(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v28 = a5;
  v9 = type metadata accessor for MusicPicker.Click.ControlID();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217956100();
  v13 = v34;
  if (v34)
  {
    v27 = a3;
    v14 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    swift_storeEnumTagMultiPayload();
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = *(a1 + 48);
    LOBYTE(v29) = *(a1 + 24);
    v30 = v16;
    v31 = v15;
    v32 = v17;
    v18 = a4;
    v19 = *(v14 + 16);

    sub_217863EC4(v17);
    v20 = v14;
    a3 = v27;
    v19(v12, &v29, v13, v20);
    a4 = v18;
    v21 = v32;

    sub_2178643E0(v21);
    sub_21792C198(v12);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_2178653BC(v33, &qword_27CB8A630, qword_21796A7B0);
  }

  sub_217956100();
  v22 = v34;
  if (!v34)
  {
    return sub_2178653BC(v33, &qword_27CB8A630, qword_21796A7B0);
  }

  v23 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = v28;
  v29 = *(a1 + *(_s21AdditionalContentViewVMa() + 84));
  v24 = *(v23 + 8);
  sub_217863EC4(v29);
  v24(&v29, v22, v23);
  sub_2178643E0(v29);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_2179285A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  v23 = a3;
  v25 = a1;
  v26 = a6;
  v9 = a4[1];
  sub_21796810C();
  v10 = a4[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v39 = a4;
  v40 = a5;
  v37 = _s13ItemShelfCellVMa();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  v42 = *(a4[4] + 8);
  swift_getWitnessTable();
  sub_217966DCC();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  v39 = sub_217967E9C();
  v40 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_217967D9C();
  v36 = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_21796665C();
  v12 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  v37 = v11;
  WitnessTable = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_21792C55C(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v32 = swift_getWitnessTable();
  v33 = v35;
  swift_getWitnessTable();
  v13 = sub_21796666C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - v19;
  sub_2179673DC();
  v27 = a2;
  v28 = v23;
  v29 = a4;
  v30 = v24;
  v31 = v25;
  sub_21796667C();
  swift_getWitnessTable();
  sub_2179560E4(v18, v13);
  v21 = *(v14 + 8);
  v21(v18, v13);
  sub_2179560E4(v20, v13);
  return (v21)(v20, v13);
}

uint64_t sub_217928A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a5;
  v80 = a3;
  v89 = a1;
  v93 = a6;
  v92 = sub_21796722C();
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21796708C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a4[1];
  v16 = sub_21796810C();
  v17 = a4[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v106 = a2;
  v107 = a3;
  v108 = a4;
  v109 = a5;
  v19 = _s13ItemShelfCellVMa();
  WitnessTable = swift_getWitnessTable();
  v106 = v19;
  v107 = WitnessTable;
  v77 = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  v111 = *(a4[4] + 8);
  swift_getWitnessTable();
  sub_217966DCC();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  v21 = sub_217967E9C();
  v22 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = v16;
  v107 = AssociatedTypeWitness;
  v108 = v21;
  v109 = v22;
  v110 = AssociatedConformanceWitness;
  v74[2] = sub_217967D9C();
  v105 = swift_getWitnessTable();
  v74[1] = swift_getWitnessTable();
  v24 = sub_21796665C();
  v78 = *(v24 - 8);
  v25 = *(v78 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v74 - v26;
  v75 = swift_getWitnessTable();
  v106 = v24;
  v107 = v75;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  v28 = *(v79 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v74[0] = v74 - v29;
  v30 = sub_21796698C();
  v84 = *(v30 - 8);
  v31 = *(v84 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = v74 - v32;
  v85 = v34;
  v87 = sub_21796698C();
  v86 = *(v87 - 8);
  v35 = *(v86 + 64);
  v36 = MEMORY[0x28223BE20](v87);
  v82 = v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v83 = v74 - v38;
  sub_217966E6C();
  v39 = a2;
  v106 = a2;
  v40 = v80;
  v107 = v80;
  v108 = a4;
  v41 = a4;
  v42 = v81;
  v109 = v81;
  v43 = _s21AdditionalContentViewVMa();
  v44 = v89;
  v45 = *(v89 + *(v43 + 92) + 16);
  v94 = v39;
  v95 = v40;
  v46 = v33;
  v96 = v41;
  v97 = v42;
  v98 = v89;
  sub_21789A9E0();
  sub_21796664C();
  v47 = v90;
  sub_21796721C();
  v48 = v74[0];
  v49 = v75;
  sub_2179678AC();
  (*(v91 + 8))(v47, v92);
  (*(v78 + 8))(v27, v24);
  v50 = *(v44 + 8);
  v106 = *v44;
  v107 = v50;
  v103 = v24;
  v104 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_217873C34();
  v52 = OpaqueTypeMetadata2;
  sub_21796784C();
  (*(v79 + 8))(v48, v52);
  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v53 = qword_27CB979B0;
  v54 = *algn_27CB979B8;
  v55 = qword_27CB979C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 0x4449746E65726170;
  *(inited + 40) = 0xE800000000000000;
  v57 = *(v44 + 16);
  if (v57 == 11)
  {
    v58 = 0;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
  }

  else
  {
    *(inited + 48) = v57;
    v58 = &_s8ModuleIDON;
  }

  *(inited + 72) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v59 = sub_217968EAC();
  sub_2178ED924(v59, v53, v54, v55);
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v66 = sub_21792C55C(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v101 = OpaqueTypeConformance2;
  v102 = v66;
  v67 = v85;
  v68 = swift_getWitnessTable();
  v69 = v82;
  sub_2178ED854(v61, v63, v65);

  (*(v84 + 8))(v46, v67);
  v99 = v68;
  v100 = v66;
  v70 = v87;
  swift_getWitnessTable();
  v71 = v83;
  sub_2179560E4(v69, v70);
  v72 = *(v86 + 8);
  v72(v69, v70);
  sub_2179560E4(v71, v70);
  return (v72)(v71, v70);
}

uint64_t sub_2179294B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a6;
  v57 = a2;
  v58 = a3;
  v49 = a3;
  v50 = a5;
  v59 = a4;
  v60 = a5;
  v51 = _s21AdditionalContentViewVMa();
  v53 = *(v51 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v42 - v11;
  v12 = a4[1];
  v13 = sub_21796810C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v46 = a4[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v57 = a2;
  v58 = a3;
  v43 = a2;
  v59 = a4;
  v60 = a5;
  v48 = a4;
  v16 = _s13ItemShelfCellVMa();
  WitnessTable = swift_getWitnessTable();
  v57 = v16;
  v58 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  v62 = *(a4[4] + 8);
  swift_getWitnessTable();
  sub_217966DCC();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  v18 = sub_217967E9C();
  v44 = v18;
  v19 = swift_getWitnessTable();
  v45 = v19;
  v47 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v13;
  v58 = AssociatedTypeWitness;
  v42 = v13;
  v59 = v18;
  v60 = v19;
  v61 = AssociatedConformanceWitness;
  v21 = sub_217967D9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - v27;
  v29 = v51;
  v30 = *(v51 + 72);
  sub_217967C4C();
  sub_217967C1C();
  v32 = v52;
  v31 = v53;
  v33 = v29;
  (*(v53 + 16))(v52, a1, v29);
  v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v37 = v48;
  v36 = v49;
  *(v35 + 2) = v43;
  *(v35 + 3) = v36;
  v38 = v50;
  *(v35 + 4) = v37;
  *(v35 + 5) = v38;
  (*(v31 + 32))(&v35[v34], v32, v33);
  v39 = swift_getWitnessTable();
  sub_217967D8C();
  v56 = v39;
  swift_getWitnessTable();
  sub_2179560E4(v26, v21);
  v40 = *(v22 + 8);
  v40(v26, v21);
  sub_2179560E4(v28, v21);
  return (v40)(v28, v21);
}

uint64_t sub_2179299EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v200 = a1;
  v193 = a7;
  v160 = *(a5 + 8);
  v12 = sub_21796810C();
  v191 = *(v12 - 8);
  v13 = *(v191 + 64);
  MEMORY[0x28223BE20](v12);
  v190 = &v147 - v14;
  v204 = a3;
  v205 = a4;
  v206 = a5;
  v207 = a6;
  v198 = a6;
  v15 = _s21AdditionalContentViewVMa();
  v186 = *(v15 - 8);
  v184 = *(v186 + 64);
  MEMORY[0x28223BE20](v15);
  v185 = &v147 - v16;
  v17 = sub_21796722C();
  v156 = *(v17 - 8);
  v157 = v17;
  v18 = *(v156 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v152 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = *(a3 - 8);
  v21 = *(v197 + 64);
  MEMORY[0x28223BE20](v19);
  v183 = v22;
  v196 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = a3;
  v205 = a4;
  v206 = a5;
  v207 = a6;
  v23 = _s13ItemShelfCellVMa();
  v148 = v23;
  v151 = *(v23 - 8);
  v24 = *(v151 + 64);
  MEMORY[0x28223BE20](v23);
  v149 = &v147 - v25;
  WitnessTable = swift_getWitnessTable();
  v204 = v23;
  v205 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v159 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v159 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v194 = &v147 - v28;
  sub_21796732C();
  v161 = OpaqueTypeMetadata2;
  v29 = sub_21796698C();
  v164 = *(v29 - 8);
  v30 = *(v164 + 64);
  MEMORY[0x28223BE20](v29);
  v162 = &v147 - v31;
  v165 = v32;
  v33 = sub_21796698C();
  v166 = *(v33 - 8);
  v34 = *(v166 + 64);
  MEMORY[0x28223BE20](v33);
  v163 = &v147 - v35;
  v167 = v36;
  v37 = sub_21796698C();
  v171 = *(v37 - 8);
  v38 = *(v171 + 64);
  MEMORY[0x28223BE20](v37);
  v195 = &v147 - v39;
  v173 = v40;
  v41 = sub_21796698C();
  v178 = *(v41 - 8);
  v42 = *(v178 + 64);
  MEMORY[0x28223BE20](v41);
  v176 = &v147 - v43;
  v203[28] = *(*(a5 + 32) + 8);
  v44 = swift_getWitnessTable();
  v192 = v12;
  v169 = v44;
  v45 = sub_217966DCC();
  v180 = v41;
  v174 = v45;
  v182 = sub_21796698C();
  v177 = *(v182 - 8);
  v46 = *(v177 + 64);
  v47 = MEMORY[0x28223BE20](v182);
  v181 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v172 = &v147 - v50;
  MEMORY[0x28223BE20](v49);
  v179 = &v147 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v147 - v54;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v56 = *(*(v168 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v168);
  v175 = &v147 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v147 - v59;
  sub_217967D6C();
  LOBYTE(v12) = sub_21796742C();
  v153 = (a2 + *(v15 + 92));
  v61 = v153[3];
  sub_21796660C();
  v62 = &v55[*(v52 + 36)];
  *v62 = v12;
  *(v62 + 1) = v63;
  *(v62 + 2) = v64;
  *(v62 + 3) = v65;
  *(v62 + 4) = v66;
  v62[40] = 0;
  sub_2178D05C4(v55, v60);
  v170 = v60;
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v52);
  v67 = v196;
  v68 = v200;
  v154 = *(v197 + 16);
  v155 = v197 + 16;
  v154(v196, v200, a3);
  v69 = a2 + *(v15 + 88);
  v71 = *(v69 + 8);
  v70 = *(v69 + 16);
  v72 = *(v69 + 24);
  LOBYTE(v204) = *v69;
  v205 = v71;
  v206 = v70;
  v207 = v72;

  sub_217863EC4(v72);
  v189 = v15;
  v73 = v15;
  v74 = a2;
  v75 = sub_21792A9B0(v68, v73);
  v77 = v76;
  v78 = sub_2178AA2C4();
  v188 = a5;
  v187 = a4;
  v146 = a4;
  v80 = v148;
  v79 = v149;
  sub_21791B630(v67, &v204, v75, v77, 11, 0, 1, v78, v149, v81, v82, v146, a3);
  v83 = v152;
  sub_21796720C();
  v84 = WitnessTable;
  sub_2179678AC();
  (*(v156 + 8))(v83, v157);
  (*(v151 + 8))(v79, v80);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v85 = qword_27CB979C8;
  v86 = unk_27CB979D0;
  v87 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796B330;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v89 = sub_21796849C();
  v90 = MEMORY[0x277CD7E90];
  *(inited + 48) = v89;
  *(inited + 56) = v91;
  *(inited + 72) = v90;
  *(inited + 80) = 0x4449746E65726170;
  *(inited + 88) = 0xE800000000000000;
  v92 = *(v74 + 16);
  v199 = v74;
  v158 = a3;
  if (v92 == 11)
  {
    v93 = 0;
    *(inited + 96) = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  else
  {
    *(inited + 96) = v92;
    v93 = &_s8ModuleIDON;
  }

  *(inited + 120) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v94 = sub_217968EAC();
  v204 = v85;
  v205 = v86;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](1819043139, 0xE400000000000000);

  sub_2178ED924(v94, v204, v205, v87);
  v96 = v95;
  v98 = v97;
  v100 = v99;

  v204 = v80;
  v205 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = v162;
  v103 = v96;
  v104 = v161;
  v105 = v194;
  sub_2178ED854(v103, v98, v100);

  (*(v159 + 8))(v105, v104);
  sub_21796742C();
  v106 = v153;
  v107 = *v153;
  v108 = sub_21792C55C(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v203[10] = OpaqueTypeConformance2;
  v203[11] = v108;
  v194 = MEMORY[0x277CDFAD8];
  v109 = v165;
  v110 = swift_getWitnessTable();
  v111 = v163;
  sub_217967A0C();
  (*(v164 + 8))(v102, v109);
  sub_21796743C();
  v112 = v106[1];
  v203[8] = v110;
  v203[9] = MEMORY[0x277CDF918];
  v113 = v167;
  v165 = swift_getWitnessTable();
  sub_217967A0C();
  (*(v166 + 8))(v111, v113);
  v114 = v185;
  v115 = v186;
  v116 = v189;
  (*(v186 + 16))(v185, v199, v189);
  v117 = v196;
  v118 = v158;
  v154(v196, v200, v158);
  v119 = (*(v115 + 80) + 48) & ~*(v115 + 80);
  v120 = v197;
  v121 = (v184 + *(v197 + 80) + v119) & ~*(v197 + 80);
  v122 = swift_allocObject();
  v123 = v187;
  v124 = v188;
  *(v122 + 2) = v118;
  *(v122 + 3) = v123;
  v125 = v198;
  *(v122 + 4) = v124;
  *(v122 + 5) = v125;
  (*(v115 + 32))(&v122[v119], v114, v116);
  (*(v120 + 32))(&v122[v121], v117, v118);
  v203[6] = v165;
  v203[7] = MEMORY[0x277CDF918];
  v126 = v173;
  v127 = swift_getWitnessTable();
  v128 = v176;
  v129 = v195;
  sub_217967A4C();

  (*(v171 + 8))(v129, v126);
  sub_217967E6C();
  v130 = *(v116 + 72);
  v131 = v192;
  sub_217967C4C();
  v132 = v190;
  sub_217967C1C();
  v203[4] = v127;
  v203[5] = MEMORY[0x277CE0790];
  v133 = v180;
  v134 = swift_getWitnessTable();
  v135 = v172;
  sub_217967A9C();

  (*(v191 + 8))(v132, v131);
  (*(v178 + 8))(v128, v133);
  v136 = swift_getWitnessTable();
  v203[2] = v134;
  v203[3] = v136;
  v137 = v182;
  v138 = swift_getWitnessTable();
  v139 = v179;
  sub_2179560E4(v135, v137);
  v140 = v177;
  v141 = *(v177 + 8);
  v141(v135, v137);
  v142 = v170;
  v143 = v175;
  sub_2178D0634(v170, v175);
  v204 = v143;
  v144 = v181;
  (*(v140 + 16))(v181, v139, v137);
  v205 = v144;
  v203[0] = v168;
  v203[1] = v137;
  v201 = sub_2178D06A4();
  v202 = v138;
  sub_2178B9390(&v204, 2, v203);
  v141(v139, v137);
  sub_2178653BC(v142, &qword_27CB8A6E0, &qword_21796A8E0);
  v141(v144, v137);
  return sub_2178653BC(v143, &qword_27CB8A6E0, &qword_21796A8E0);
}

uint64_t sub_21792A9B0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0B0, &unk_21796BF60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v47 - v6;
  v53 = sub_2179689AC();
  v51 = *(v53 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v47 - v12;
  v14 = *(a2 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v11);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v22 = sub_2179688CC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  if (*(v2 + 56) != 1)
  {
    return v27;
  }

  v49 = v24;
  v28 = *(v15 + 16);
  v29 = v54;
  v28(v21, v54, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v22);
    sub_2178653BC(v13, &qword_27CB8CA28, &unk_21796F610);
    goto LABEL_11;
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  v30 = v49;
  (*(v49 + 32))(v26, v13, v22);
  v31 = sub_21796883C();
  if (!v32)
  {
    (*(v30 + 8))(v26, v22);
    goto LABEL_11;
  }

  v33 = v32;
  v48 = v31;
  sub_217884BBC();
  if (!v35)
  {
    (*(v49 + 8))(v26, v22);

LABEL_11:
    v28(v19, v29, v14);
    v41 = v52;
    v42 = v53;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
      v44 = v50;
      v43 = v51;
      (*(v51 + 32))(v50, v41, v42);
      sub_217884808();
      v27 = v45;
      (*(v43 + 8))(v44, v42);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v42);
      sub_2178653BC(v41, &qword_27CB8B0B0, &unk_21796BF60);
      return 0;
    }

    return v27;
  }

  v36 = v35;
  v37 = v34;
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  sub_21796560C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_21796B330;
  v39 = MEMORY[0x277D837D0];
  *(v38 + 56) = MEMORY[0x277D837D0];
  v40 = sub_21788C964();
  *(v38 + 32) = v48;
  *(v38 + 40) = v33;
  *(v38 + 96) = v39;
  *(v38 + 104) = v40;
  *(v38 + 64) = v40;
  *(v38 + 72) = v37;
  *(v38 + 80) = v36;
  v27 = sub_217968F7C();

  (*(v49 + 8))(v26, v22);
  return v27;
}

uint64_t sub_21792AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v36 = a4;
  v37 = a6;
  v43 = a5;
  v44 = a6;
  v9 = _s21AdditionalContentViewVMa();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = &v34 - v14;
  v15 = *(a5 + 8);
  v16 = sub_21796810C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = *(v9 + 72);
  sub_217967C4C();
  sub_217967C1C();
  swift_getWitnessTable();
  v22 = *(*(a5 + 32) + 8);
  sub_21796933C();
  (*(v17 + 8))(v20, v16);
  v23 = v40;
  LOBYTE(v16) = v41;
  v42 = *(a1 + *(v9 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDC8, &qword_2179711D0);
  result = sub_217967C1C();
  if ((v16 & 1) == 0 && v23 == v39)
  {
    v25 = sub_21796923C();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v25);
    v27 = v34;
    v26 = v35;
    (*(v35 + 16))(v34, a1, v9);
    sub_21796920C();
    v28 = sub_2179691FC();
    v29 = (*(v26 + 80) + 64) & ~*(v26 + 80);
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 2) = v28;
    *(v30 + 3) = v31;
    v33 = v36;
    v32 = v37;
    *(v30 + 4) = a3;
    *(v30 + 5) = v33;
    *(v30 + 6) = a5;
    *(v30 + 7) = v32;
    (*(v26 + 32))(&v30[v29], v27, v9);
    sub_2178D207C();
  }

  return result;
}

uint64_t sub_21792B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = sub_21796920C();
  v8[7] = sub_2179691FC();
  v13 = swift_task_alloc();
  v8[8] = v13;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v14 = _s21AdditionalContentViewVMa();
  *v13 = v8;
  v13[1] = sub_21792B360;

  return sub_21792B4F8(v14);
}

uint64_t sub_21792B360()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v5 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21792B49C, v5, v4);
}

uint64_t sub_21792B49C()
{
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_21792B4F8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *(a1 + 16);
  v3 = *(a1 + 32);
  v2[15] = v3;
  v2[16] = *(v3 + 8);
  v4 = sub_21796810C();
  v2[17] = v4;
  v5 = sub_21796944C();
  v2[18] = v5;
  v6 = *(v5 - 8);
  v2[19] = v6;
  v7 = *(v6 + 64) + 15;
  v2[20] = swift_task_alloc();
  v8 = *(v4 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_21796920C();
  v2[25] = sub_2179691FC();
  v11 = sub_2179691BC();
  v2[26] = v11;
  v2[27] = v10;

  return MEMORY[0x2822009F8](sub_21792B680, v11, v10);
}

uint64_t sub_21792B680()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);
  *(v0 + 288) = *(*(v0 + 96) + 72);
  *(v0 + 224) = sub_217967C4C();
  sub_217967C1C();
  swift_getWitnessTable();
  v5 = sub_21796932C();
  v6 = *(v2 + 8);
  *(v0 + 232) = v6;
  *(v0 + 240) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33 = v6;
  v6(v1, v3);
  if (v5)
  {
    goto LABEL_11;
  }

  v7 = (*(v0 + 104) + *(*(v0 + 96) + 76));
  v8 = *v7;
  *(v0 + 295) = *v7;
  v9 = *(v7 + 1);
  *(v0 + 16) = v8;
  *(v0 + 248) = v9;
  *(v0 + 24) = v9;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  if ((*(v0 + 292) & 1) != 0 || (v10 = *(v0 + 192), v11 = *(v0 + 136), sub_217967C1C(), v12 = sub_2179680BC(), v33(v10, v11), (v12 & 1) == 0))
  {
LABEL_11:
    v28 = *(v0 + 200);

    OUTLINED_FUNCTION_22_5();

    OUTLINED_FUNCTION_39();

    return v29();
  }

  else
  {
    *(v0 + 32) = v8;
    *(v0 + 40) = v9;
    *(v0 + 293) = 1;

    sub_217967C2C();
    if (qword_27CB8A480 != -1)
    {
      swift_once();
    }

    v13 = sub_21796653C();
    *(v0 + 264) = __swift_project_value_buffer(v13, qword_27CB97B00);
    v14 = sub_21796651C();
    v15 = sub_21796939C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_217846000, v14, v15, "Fetching next batch of items in the expanded list.", v16, 2u);
      MEMORY[0x21CEA8ED0](v16, -1, -1);
    }

    v17 = *(v0 + 192);
    v18 = *(v0 + 136);
    v31 = *(v0 + 176);
    v32 = *(v0 + 120);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);

    sub_217967C1C();
    v21 = sub_21796930C();
    v33(v17, v18);
    *(v0 + 48) = *(v20 + *(v19 + 80));
    *(v0 + 80) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDC8, &qword_2179711D0);
    sub_217967C2C();
    sub_217967C1C();
    v22 = *(MEMORY[0x277CD7C70] + 4);
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    v24 = *(v32 + 16);
    *v23 = v0;
    v23[1] = sub_21792BA78;
    v25 = *(v0 + 176);
    v26 = *(v0 + 160);
    v27 = *(v0 + 136);

    return MEMORY[0x282124620](v26, 0, 1, v27);
  }
}

uint64_t sub_21792BA78()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 176);
  v7 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 280) = v0;

  v5(v6, v7);
  v9 = *(v2 + 216);
  v10 = *(v2 + 208);
  if (v0)
  {
    v11 = sub_21792BDC0;
  }

  else
  {
    v11 = sub_21792BC20;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_21792BC20()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = *(v0 + 184);
  if (EnumTagSinglePayload == 1)
  {
    v6 = *(v0 + 160);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 112);
    sub_21796911C();
    sub_2179680AC();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    }
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 136));
  }

  v20 = *(v0 + 232);
  v21 = *(v0 + 240);
  v10 = *(v0 + 224);
  v11 = *(v0 + 288);
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  sub_217967C1C();
  sub_2179680CC();
  v20(v13, v14);
  sub_217967C2C();
  OUTLINED_FUNCTION_17_10();

  OUTLINED_FUNCTION_22_5();

  OUTLINED_FUNCTION_39();

  return v18();
}

uint64_t sub_21792BDC0()
{
  v18 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[25];

  v4 = v1;
  v5 = sub_21796651C();
  v6 = sub_21796937C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v0[11] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v11 = sub_217968F8C();
    v13 = sub_217957F4C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_217846000, v5, v6, "Failed to fetch next batch of items in the expanded list with error: %{public}s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CEA8ED0](v9, -1, -1);
    MEMORY[0x21CEA8ED0](v8, -1, -1);
  }

  else
  {
    v14 = v0[35];
  }

  OUTLINED_FUNCTION_17_10();

  OUTLINED_FUNCTION_22_5();

  OUTLINED_FUNCTION_39();

  return v15();
}

uint64_t sub_21792BF80(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

BOOL sub_21792C018(double *a1, double *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a3[2];
  v12 = a3[3];
  v14 = a3[4];
  v13 = a3[5];
  return sub_2178D11F8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21792C038(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_21792BF80(*v1, v1[1], v1[2], v1[3]);
}

uint64_t sub_21792C050(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_2178D12D0(*v2, v2[1], v2[2], v2[3]);
}

uint64_t sub_21792C068(uint64_t a1, void *a2)
{
  sub_21796973C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_2178D12D0(*v2, v2[1], v2[2], v2[3]);
  return sub_21796977C();
}

uint64_t sub_21792C0B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21792C100()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_2179282D4();
}

uint64_t sub_21792C10C()
{
  v5 = *(OUTLINED_FUNCTION_19_6() - 8);
  v6 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_217928398(v6, v0, v2, v3, v4);
}

uint64_t sub_21792C198(uint64_t a1)
{
  v2 = type metadata accessor for MusicPicker.Click.ControlID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_10Tm()
{
  v25 = *(v1 + 16);
  v24 = *(v1 + 32);
  v3 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  v7 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  v8 = *(v7 + 8);

  v9 = *(v7 + 40);

  sub_2178643E0(*(v7 + 48));
  v10 = *(v7 + 64);

  if (*(v7 + 120))
  {
    if (*(v7 + 104))
    {
      v11 = __swift_destroy_boxed_opaque_existential_1((v7 + 80));
    }
  }

  else
  {
    v19 = *(v7 + 80);
  }

  v20 = OUTLINED_FUNCTION_16_9(v11, v12, v13, v14, v15, v16, v17, v18, v24);
  OUTLINED_FUNCTION_3(v20);
  (*(v21 + 8))(v2, v20);
  v22 = *(v2 + *(sub_217967C4C() + 28));

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_15_10();
  sub_2178643E0(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_21792C3B4(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(_s21AdditionalContentViewVMa() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_21792C47C()
{
  v5 = *(OUTLINED_FUNCTION_19_6() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1 + ((v6 + *(v5 + 64) + *(*(v0 - 8) + 80)) & ~*(*(v0 - 8) + 80));

  return sub_21792AF40(v1 + v6, v7, v0, v2, v3, v4);
}

uint64_t sub_21792C55C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21792C5A4(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(_s21AdditionalContentViewVMa() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_21792C6CC;

  return sub_21792B278(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_21792C6CC()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t OUTLINED_FUNCTION_13_11()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  sub_2178643E0(*(v1 + *(v0 + 84)));
  v2 = *(v1 + *(v0 + 88) + 16);
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v10 + *(v9 + 72);
  v13 = *(a9 + 8);

  return sub_21796810C();
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  *(v0 + 64) = *(v0 + 295);
  *(v0 + 72) = v3;
  *(v0 + 294) = 0;

  return sub_217967C2C();
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return _s21AdditionalContentViewVMa();
}

uint64_t OUTLINED_FUNCTION_22_5()
{
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[20];
}

uint64_t OUTLINED_FUNCTION_23_6()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  v3 = *(v1 + *(v0 + 80) + 8);
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  v3 = *(v1 + *(v0 + 76) + 8);
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return _s21AdditionalContentViewVMa();
}

uint64_t sub_21792C990()
{
  sub_21792CAD8();

  return sub_217966CCC();
}

uint64_t sub_21792C9D8(uint64_t a1)
{
  v2 = sub_21796697C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_21792CAD8();
  sub_217966CDC();
  return (*(v3 + 8))(a1, v2);
}

unint64_t sub_21792CAD8()
{
  result = qword_27CB8DFA0;
  if (!qword_27CB8DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DFA0);
  }

  return result;
}

uint64_t sub_21792CB3C()
{
  swift_getKeyPath();
  sub_21796772C();
}

uint64_t sub_21792CBB0()
{
  v0 = sub_21796697C();
  __swift_allocate_value_buffer(v0, qword_27CB8DF88);
  v1 = __swift_project_value_buffer(v0, qword_27CB8DF88);
  v2 = *MEMORY[0x277CDFA88];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_21792CC38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CB8A440 != -1)
  {
    swift_once();
  }

  v2 = sub_21796697C();
  v3 = __swift_project_value_buffer(v2, qword_27CB8DF88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21792CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21792CD44();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21792CD44()
{
  result = qword_27CB8DFA8[0];
  if (!qword_27CB8DFA8[0])
  {
    sub_21796697C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8DFA8);
  }

  return result;
}

uint64_t sub_21792CDA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return MusicLibraryPlaylistViewModel.rawCoverArtworkRecipe.setter();
}

uint64_t (*MusicLibraryPlaylistViewModel.rawCoverArtworkRecipe.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvg_0();
  a1[1] = v3;
  return sub_21792CE2C;
}

uint64_t sub_21792CE2C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvs_0();
  }

  else
  {
    v7 = *a1;
    return _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvs_0();
  }
}

uint64_t MusicLibraryPlaylistViewModel.coverArtworkRecipes.getter()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  v72 = v61 - v3;
  v71 = sub_21796809C();
  v4 = OUTLINED_FUNCTION_2(v71);
  v64 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = sub_217968DFC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v63 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_5();
  v62 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v61 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100);
  v21 = *(*(v69 - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v22);
  v24 = v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v26 = OUTLINED_FUNCTION_2(v25);
  v73 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_5();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v61 - v34;
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB88, &qword_21796B168) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v37);
  v39 = v61 - v38;
  v40 = sub_217965BFC();
  if (v40)
  {
    return v40;
  }

  v61[0] = v39;
  v61[1] = v0;
  v66 = v20;
  v67 = v10;
  sub_217965C2C();
  v42 = v73;
  (*(v73 + 16))(v32, v35, v25);
  sub_21792D45C(&qword_27CB8D398);
  v70 = v24;
  sub_21796905C();
  v43 = *(v69 + 36);
  sub_21792D45C(&qword_27CB8AB28);
  v44 = v62;
  v68 = v35;
  v69 = (v63 + 4);
  ++v64;
  v65 = (v63 + 2);
  ++v63;
  v45 = v25;
  v46 = v35;
  while (1)
  {
    v47 = v70;
    sub_2179692EC();
    if (*(v47 + v43) == v74[0])
    {
      sub_217875F0C(v47, &qword_27CB8AB20, &unk_21796B100);
      (*(v42 + 8))(v46, v45);
      v58 = 1;
      v59 = v61[0];
      goto LABEL_9;
    }

    v48 = sub_21796934C();
    v49 = v66;
    (*v65)(v66);
    v48(v74, 0);
    v50 = v43;
    v51 = v45;
    sub_2179692FC();
    v52 = *v69;
    (*v69)(v44, v49, v11);
    v53 = v67;
    sub_2179684BC();
    v54 = v44;
    v55 = v72;
    sub_21796808C();
    (*v64)(v53, v71);
    v56 = sub_21796862C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v56);
    sub_217875F0C(v55, &qword_27CB8AC40, &qword_21796B248);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    (*v63)(v54, v11);
    v44 = v54;
    v45 = v51;
    v42 = v73;
    v46 = v68;
    v43 = v50;
  }

  sub_217875F0C(v70, &qword_27CB8AB20, &unk_21796B100);
  (*(v73 + 8))(v68, v51);
  v59 = v61[0];
  v52(v61[0], v54, v11);
  v58 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v59, v58, 1, v11);
  v41 = sub_217917224(v59);

  sub_217965C0C();
  sub_217875F0C(v59, &qword_27CB8AB88, &qword_21796B168);
  return v41;
}

uint64_t sub_21792D45C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAE8, &qword_21796AFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MusicLibraryPlaylistViewModel.artwork(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a1;
  v3 = sub_21796877C();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_5();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  v18 = v30 - v17;
  v19 = sub_217968E3C();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  sub_217965C3C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_217875F0C(v18, qword_27CB8AC48, &unk_21796FF10);
    v28 = sub_217968C2C();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v28);
  }

  else
  {
    (*(v22 + 32))(v27, v18, v19);
    sub_21796604C();
    (*(v6 + 16))(v11, v14, v3);
    sub_217968D7C();
    sub_217968B3C();
    (*(v6 + 8))(v14, v3);
    return (*(v22 + 8))(v27, v19);
  }
}

uint64_t MusicLibraryPlaylistViewModel.select(_:)()
{
  v0 = sub_21796877C();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_21796604C();
  sub_21796876C();
  (*(v3 + 8))(v8, v0);
  return _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvs_0();
}

uint64_t sub_21792D7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = sub_21792D898();
  v11[1] = v7;
  v12 = v8 & 1;
  v9 = _s18NavigationBarStyleVMa();
  MEMORY[0x21CEA69A0](v11, a3, v9, a5);
}

uint64_t sub_21792D898()
{
  _s9ViewModelCMa();
  swift_getWitnessTable();
  return sub_217966ACC();
}

uint64_t sub_21792D910()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21792D94C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21792D9A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21792DA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  LODWORD(v37[0]) = a4;
  v37[1] = a7;
  _s18NavigationBarStyleVMa();
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  v12 = sub_2179670BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v37 - v15;
  (*(v13 + 16))(v37 - v15, a1, v12);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = v37[0];

  v37[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E030, &qword_217971330);
  OUTLINED_FUNCTION_45_2();
  WitnessTable = swift_getWitnessTable();
  v40 = v12;
  v41 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = sub_217967E0C();
  v40 = v12;
  v41 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = OpaqueTypeMetadata2;
  v41 = v22;
  v24 = MEMORY[0x277CE1320];
  v42 = OpaqueTypeConformance2;
  v43 = MEMORY[0x277CE1320];
  v25 = swift_getOpaqueTypeMetadata2();
  v40 = MEMORY[0x277CE1350];
  v41 = MEMORY[0x277CE1340];
  OUTLINED_FUNCTION_3_19();
  v26 = swift_getOpaqueTypeConformance2();
  v40 = OpaqueTypeMetadata2;
  v41 = v22;
  v42 = OpaqueTypeConformance2;
  v43 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37[0];
  v40 = v12;
  v41 = v37[0];
  v42 = v25;
  v43 = WitnessTable;
  v44 = v26;
  v45 = v27;
  v29 = swift_getOpaqueTypeMetadata2();
  v40 = v12;
  v41 = v28;
  v42 = v25;
  v43 = WitnessTable;
  v44 = v26;
  v45 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v40 = v29;
  v41 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v40 = v29;
  v41 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_21792EBC8();
  v40 = v31;
  v41 = &_s27PickerNavigationItemAdaptorVN;
  v42 = v32;
  v43 = v33;
  swift_getOpaqueTypeMetadata2();
  v40 = v31;
  v41 = &_s27PickerNavigationItemAdaptorVN;
  v42 = v32;
  v43 = v33;
  swift_getOpaqueTypeConformance2();
  v38 = sub_21796685C();
  v39 = v34;
  v35 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  sub_2179560E4(&v38, v35);

  v38 = v40;
  v39 = v41;
  sub_2179560E4(&v38, v35);
}

uint64_t sub_21792DE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a6;
  v79 = a7;
  v75 = a5;
  v57[1] = a4;
  v57[0] = a3;
  v72 = a2;
  v76 = a1;
  v77 = a8;
  v8 = sub_21796676C();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E030, &qword_217971330);
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = v57 - v13;
  _s18NavigationBarStyleVMa();
  swift_getWitnessTable();
  v14 = sub_2179670BC();
  WitnessTable = swift_getWitnessTable();
  v82 = v14;
  v83 = WitnessTable;
  v16 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_217967E0C();
  v82 = v14;
  v83 = v16;
  v19 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = OpaqueTypeMetadata2;
  v83 = v18;
  v21 = MEMORY[0x277CE1320];
  v84 = OpaqueTypeConformance2;
  v85 = MEMORY[0x277CE1320];
  v22 = swift_getOpaqueTypeMetadata2();
  v82 = MEMORY[0x277CE1350];
  v83 = MEMORY[0x277CE1340];
  v23 = swift_getOpaqueTypeConformance2();
  v82 = OpaqueTypeMetadata2;
  v83 = v18;
  v84 = OpaqueTypeConformance2;
  v85 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v82 = v14;
  v83 = v11;
  v61 = v11;
  v59 = v22;
  v84 = v22;
  v85 = v19;
  v63 = v19;
  v86 = v23;
  v87 = v24;
  v62 = v23;
  v25 = v24;
  v60 = v24;
  v26 = swift_getOpaqueTypeMetadata2();
  v64 = *(v26 - 8);
  v27 = *(v64 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v57 - v28;
  v82 = v14;
  v83 = v11;
  v84 = v22;
  v85 = v19;
  v86 = v23;
  v87 = v25;
  v30 = swift_getOpaqueTypeConformance2();
  v82 = v26;
  v83 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v68 = *(v31 - 8);
  v32 = *(v68 + 64);
  MEMORY[0x28223BE20](v31);
  v58 = v57 - v33;
  v82 = v26;
  v83 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_21792EBC8();
  v82 = v31;
  v83 = &_s27PickerNavigationItemAdaptorVN;
  v66 = v34;
  v84 = v34;
  v85 = v35;
  v65 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v67 = *(v36 - 8);
  v37 = *(v67 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = v57 - v41;
  sub_217967E1C();
  v43 = v69;
  sub_217966DBC();
  v80 = v78;
  v81 = v79;
  swift_checkMetadataState();
  swift_checkMetadataState();
  v44 = v61;
  sub_217967A8C();
  v45 = v43;
  v46 = v58;
  (*(v70 + 8))(v45, v44);
  v47 = v71;
  sub_21796675C();
  sub_21796778C();
  (*(v73 + 8))(v47, v74);
  (*(v64 + 8))(v29, v26);
  if (v75)
  {
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966A9C();
    sub_2178DA848();
    v49 = v48;
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0xE000000000000000;
  }

  sub_21796680C();
  v82 = v49;
  v83 = v51;
  v84 = v52;
  v53 = v66;
  v54 = v65;
  sub_2179678EC();

  (*(v68 + 8))(v46, v31);
  v82 = v31;
  v83 = &_s27PickerNavigationItemAdaptorVN;
  v84 = v53;
  v85 = v54;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4(v40, v36);
  v55 = *(v67 + 8);
  v55(v40, v36);
  sub_2179560E4(v42, v36);
  return (v55)(v42, v36);
}

uint64_t sub_21792E624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v42 = a2;
  v2 = sub_217967E0C();
  v35 = v2;
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18NavigationBarStyleVMa();
  swift_getWitnessTable();
  v5 = sub_2179670BC();
  WitnessTable = swift_getWitnessTable();
  v43 = v5;
  v44 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = OpaqueTypeMetadata2;
  v38 = *(OpaqueTypeMetadata2 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v10 = &v31 - v9;
  v43 = v5;
  v44 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v44 = v2;
  v45 = OpaqueTypeConformance2;
  v46 = MEMORY[0x277CE1320];
  v36 = MEMORY[0x277CDE968];
  v11 = swift_getOpaqueTypeMetadata2();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v31 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E040, &qword_217971338);
  v17 = *(sub_217966A5C() - 8);
  v18 = *(v17 + 72);
  v19 = *(v17 + 80);
  v20 = swift_allocObject();
  v31 = xmmword_21796A340;
  *(v20 + 16) = xmmword_21796A340;
  sub_217966A4C();
  v21 = swift_checkMetadataState();
  MEMORY[0x21CEA6780](1, v20, v21, WitnessTable);

  v22 = v39;
  sub_217967DEC();
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  sub_217966A4C();
  v25 = v34;
  v24 = v35;
  v26 = OpaqueTypeConformance2;
  v27 = MEMORY[0x277CE1320];
  MEMORY[0x21CEA6790](v22, v23, v34, v35, OpaqueTypeConformance2, MEMORY[0x277CE1320]);

  (*(v41 + 8))(v22, v24);
  (*(v38 + 8))(v10, v25);
  v43 = v25;
  v44 = v24;
  v45 = v26;
  v46 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_2179560E4(v15, v11);
  v29 = *(v37 + 8);
  v29(v15, v11);
  sub_2179560E4(v28, v11);
  return (v29)(v28, v11);
}

uint64_t sub_21792EAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  _s18NavigationBarStyleVMa();
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  v7 = *(sub_2179670BC() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);

  return sub_21792DE50(a1, v2 + v8, v10, v11, v12, v5, v6, a2);
}

unint64_t sub_21792EBC8()
{
  result = qword_27CB8E038;
  if (!qword_27CB8E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E038);
  }

  return result;
}

uint64_t sub_21792EC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_21792E624(a1, a2);
}

uint64_t sub_21792EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = _s20FailureAlertModifierVMa();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2178745BC();
  v15 = &v14[*(v9 + 20)];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v14[*(v9 + 24)];
  v19[15] = 0;

  sub_217967C0C();
  v17 = v20;
  *v16 = v19[16];
  *(v16 + 1) = v17;
  MEMORY[0x21CEA69A0](v14, a4, v9, a5);
  return sub_2179309BC(v14, _s20FailureAlertModifierVMa);
}

uint64_t _s20FailureAlertModifierVMa()
{
  result = qword_27CB8E048;
  if (!qword_27CB8E048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21792EDFC()
{
  sub_21792EE98();
  if (v0 <= 0x3F)
  {
    sub_217875494();
    if (v1 <= 0x3F)
    {
      sub_21788C240();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21792EE98()
{
  if (!qword_27CB8E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
    v0 = sub_217967D5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8E058);
    }
  }
}

uint64_t sub_21792EF18(uint64_t a1)
{
  v3 = _s20FailureAlertModifierVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E060, &qword_2179713B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  sub_21792F170(a1, &v17 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  MEMORY[0x21CEA6C70](v14);
  sub_21793058C(v1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  swift_allocObject();
  sub_217930964();
  sub_217930670();
  sub_217930878();
  sub_217967A5C();

  sub_2178653BC(v9, &qword_27CB8A578, &qword_21796A750);
  return sub_2178653BC(v13, &qword_27CB8E060, &qword_2179713B0);
}

uint64_t sub_21792F170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0A8, &qword_2179713D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0B0, &qword_2179713E0);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = _s5AlertVMa(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  MEMORY[0x21CEA6C70](v19);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2178653BC(v14, &qword_27CB8A578, &qword_21796A750);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E070, &qword_2179713B8);
    (*(*(v20 - 8) + 16))(v7, a1, v20);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E078, &qword_2179713C0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E080, &unk_2179713C8);
    v23 = sub_217864B2C(&qword_27CB8E088, &qword_27CB8E070, &qword_2179713B8);
    v24 = sub_217873C34();
    v25 = sub_217864B2C(&qword_27CB8E090, &qword_27CB8E078, &qword_2179713C0);
    v26 = sub_2179307FC();
    v63 = v20;
    v64 = MEMORY[0x277D837D0];
    v65 = v21;
    v66 = v22;
    v67 = v23;
    v68 = v24;
    v69 = v25;
    v70 = v26;
    swift_getOpaqueTypeConformance2();
    return sub_217966F8C();
  }

  else
  {
    v55 = _s5AlertVMa;
    sub_217930964();
    v28 = v18[1];
    v61 = *v18;
    v62 = v28;
    v54 = v28;
    v29 = (v2 + *(_s20FailureAlertModifierVMa() + 24));
    v30 = *v29;
    v31 = *(v29 + 1);
    v59 = v30;
    v60 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
    v32 = sub_217967C3C();
    v53 = &v42;
    v50 = v64;
    v51 = v63;
    v52 = v65;
    v33 = MEMORY[0x28223BE20](v32);
    v48 = v41;
    MEMORY[0x28223BE20](v33);
    v47 = v41;
    v49 = v7;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E070, &qword_2179713B8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E078, &qword_2179713C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E080, &unk_2179713C8);
    v34 = sub_217864B2C(&qword_27CB8E088, &qword_27CB8E070, &qword_2179713B8);
    v46 = v4;
    v35 = v34;
    v36 = sub_217873C34();
    v37 = sub_217864B2C(&qword_27CB8E090, &qword_27CB8E078, &qword_2179713C0);
    v38 = sub_2179307FC();
    v41[2] = v37;
    v41[3] = v38;
    v41[0] = v35;
    v41[1] = v36;
    v39 = v56;
    sub_21796798C();

    v40 = v58;
    (*(v8 + 16))(v49, v39, v58);
    swift_storeEnumTagMultiPayload();
    v63 = v43;
    v64 = MEMORY[0x277D837D0];
    v65 = v44;
    v66 = v45;
    v67 = v35;
    v68 = v36;
    v69 = v37;
    v70 = v38;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    (*(v8 + 8))(v39, v40);
    return sub_2179309BC(v18, v55);
  }
}

uint64_t sub_21792F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s5AlertVMa(0);
  __swift_getEnumTagSinglePayload(a2, 1, v5);
  v6 = (a3 + *(_s20FailureAlertModifierVMa() + 24));
  v8 = *v6;
  v9 = *(v6 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  return sub_217967C2C();
}

uint64_t sub_21792F8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v46 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0B8, &qword_2179713E8);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v6 = v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v44 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - v11;
  v13 = _s5AlertV7ControlVMa(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v42 = (v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v18 = (v41 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0C0, &qword_2179713F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v41 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v41 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v41 - v30;
  v32 = _s5AlertVMa(0);
  v33 = *(v32 + 24);
  sub_2178745BC();
  v43 = v13;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2178653BC(v12, &qword_27CB8DA90, &qword_2179713F0);
    v34 = 1;
  }

  else
  {
    v41[1] = a1;
    sub_217930964();
    sub_21792FD08(v18, v6);
    sub_2179309BC(v18, _s5AlertV7ControlVMa);
    sub_217854F04();
    v34 = 0;
  }

  __swift_storeEnumTagSinglePayload(v31, v34, 1, v47);
  v35 = *(v32 + 28);
  v36 = v44;
  sub_2178745BC();
  if (__swift_getEnumTagSinglePayload(v36, 1, v43) == 1)
  {
    sub_2178653BC(v36, &qword_27CB8DA90, &qword_2179713F0);
    v37 = 1;
  }

  else
  {
    v38 = v42;
    sub_217930964();
    sub_21792FD08(v38, v6);
    sub_2179309BC(v38, _s5AlertV7ControlVMa);
    sub_217854F04();
    v37 = 0;
  }

  __swift_storeEnumTagSinglePayload(v29, v37, 1, v47);
  sub_217854EA4();
  sub_217854EA4();
  sub_217854EA4();
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0C8, &qword_217971400) + 48);
  sub_217854EA4();
  sub_2178653BC(v29, &qword_27CB8E0C0, &qword_2179713F8);
  sub_2178653BC(v31, &qword_27CB8E0C0, &qword_2179713F8);
  sub_2178653BC(v23, &qword_27CB8E0C0, &qword_2179713F8);
  return sub_2178653BC(v26, &qword_27CB8E0C0, &qword_2179713F8);
}

uint64_t sub_21792FD08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0D0, &qword_217971408);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v37 - v4;
  v5 = sub_2179669DC();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s20FailureAlertModifierVMa();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0D8, &qword_217971418);
  v44 = *(v15 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0E0, &unk_217971420);
  v38 = *(v45 - 8);
  v19 = *(v38 + 64);
  MEMORY[0x28223BE20](v45);
  v21 = &v37 - v20;
  v22 = _s5AlertV7ControlVMa(0);
  v24 = *a1;
  v23 = a1[1];
  if (*(a1 + *(v22 + 24)) == 1)
  {
    v25 = sub_2179665FC();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
    v49 = v24;
    v50 = v23;
    sub_2178745BC();
    sub_21793058C(v43, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v42 + 80) + 17) & ~*(v42 + 80);
    *(swift_allocObject() + 16) = 0;
    sub_217930964();
    sub_217873C34();

    sub_217967C8C();
    sub_2178653BC(v14, &qword_27CB8BA20, &qword_217971410);
    v27 = v39;
    sub_2179669CC();
    v28 = sub_217864B2C(&qword_27CB8E0E8, &qword_27CB8E0D8, &qword_217971418);
    sub_2179677FC();
    (*(v40 + 8))(v27, v41);
    (*(v44 + 8))(v18, v15);
    v29 = v38;
    v30 = v45;
    (*(v38 + 16))(v47, v21, v45);
    swift_storeEnumTagMultiPayload();
    v49 = v15;
    v50 = v28;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    return (*(v29 + 8))(v21, v30);
  }

  else
  {
    v32 = *(v22 + 20);
    v33 = sub_21791F758();
    v49 = v24;
    v50 = v23;
    sub_2178745BC();
    sub_21793058C(v43, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v42 + 80) + 17) & ~*(v42 + 80);
    *(swift_allocObject() + 16) = v33 & 1;
    sub_217930964();
    sub_217873C34();

    sub_217967C8C();
    v35 = v44;
    (*(v44 + 16))(v47, v18, v15);
    swift_storeEnumTagMultiPayload();
    v36 = sub_217864B2C(&qword_27CB8E0E8, &qword_27CB8E0D8, &qword_217971418);
    v49 = v15;
    v50 = v36;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    return (*(v35 + 8))(v18, v15);
  }
}

uint64_t sub_2179303C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    sub_217873C34();

    result = sub_21796763C();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_21793044C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  if (a1)
  {
    v9 = a2 + *(_s20FailureAlertModifierVMa() + 20);
    v10 = *(v9 + 8);
    (*v9)();
  }

  v11 = _s5AlertVMa(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_2178745BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  sub_217967D1C();
  return sub_2178653BC(v8, &qword_27CB8A578, &qword_21796A750);
}

uint64_t sub_21793058C(uint64_t a1, uint64_t a2)
{
  v4 = _s20FailureAlertModifierVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179305F0(uint64_t a1, uint64_t a2)
{
  v5 = *(_s20FailureAlertModifierVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21792F814(a1, a2, v6);
}

unint64_t sub_217930670()
{
  result = qword_27CB8E068;
  if (!qword_27CB8E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E060, &qword_2179713B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E070, &qword_2179713B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E078, &qword_2179713C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E080, &unk_2179713C8);
    sub_217864B2C(&qword_27CB8E088, &qword_27CB8E070, &qword_2179713B8);
    sub_217873C34();
    sub_217864B2C(&qword_27CB8E090, &qword_27CB8E078, &qword_2179713C0);
    sub_2179307FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E068);
  }

  return result;
}

unint64_t sub_2179307FC()
{
  result = qword_27CB8E098;
  if (!qword_27CB8E098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E080, &unk_2179713C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E098);
  }

  return result;
}

unint64_t sub_217930878()
{
  result = qword_27CB8E0A0;
  if (!qword_27CB8E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
    sub_2179308FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E0A0);
  }

  return result;
}

unint64_t sub_2179308FC()
{
  result = qword_27CB8DAD0;
  if (!qword_27CB8DAD0)
  {
    _s5AlertVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DAD0);
  }

  return result;
}

uint64_t sub_217930964()
{
  OUTLINED_FUNCTION_86();
  v2 = v1(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v0;
}

uint64_t sub_2179309BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_4Tm()
{
  v4 = _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  v8 = (v1 + ((*(v5 + 80) + 17) & ~*(v5 + 80)));
  v9 = *v8;

  v10 = v8[1];

  v11 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960) + 32);
  v12 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_52_0(v12))
  {
    v13 = *(v11 + 1);

    v14 = *(v11 + 3);

    v15 = &v11[*(v2 + 24)];
    v16 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_55_0(v16))
    {
      v17 = *(v15 + 1);

      v18 = *(v3 + 20);
      v19 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_4_17(v19))
      {
        OUTLINED_FUNCTION_10(v27);
        (*(v20 + 8))(&v15[v21]);
      }
    }

    if (!OUTLINED_FUNCTION_3_20())
    {
      v22 = *(v11 + 1);

      v23 = *(v3 + 20);
      v24 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_8_12(v24))
      {
        OUTLINED_FUNCTION_10(v2);
        (*(v25 + 8))(&v11[v23], v2);
      }
    }
  }

  OUTLINED_FUNCTION_10_9(*(v0 + 20));
  OUTLINED_FUNCTION_10_9(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_217930BD8()
{
  v1 = *(_s20FailureAlertModifierVMa() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_21793044C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_3_20()
{
  v4 = v0 + *(v1 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_9@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t static PickableMusicItem.catalogSearchableTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971430;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968E3C();
  v6 = MEMORY[0x277CD85D0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t static PickableMusicItem.librarySearchableTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971430;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968CFC();
  v6 = sub_217930E08();
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_217930E08()
{
  result = qword_27CB8E100;
  if (!qword_27CB8E100)
  {
    sub_217968CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E100);
  }

  return result;
}

uint64_t static PickableMusicItem.convertToPickableItem<A>(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_14();
  v14 = *(v11 + 16);
  v14(v16 - v15, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B068, &unk_21796B720);
  if (swift_dynamicCast())
  {
    sub_21784A7D4(&v48, &v45);
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    sub_217967F0C();
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    sub_217875F0C(&v48, &qword_27CB8B070, &unk_217971CA0);
    *(&v49 + 1) = a3;
    v50 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
    (v14)(boxed_opaque_existential_1, a1, a3);
  }

  v18 = dynamic_cast_existential_1_conditional(a2);
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    v42 = a5;
    v22 = *(&v49 + 1);
    v23 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    v41[1] = v41;
    OUTLINED_FUNCTION_0_1();
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20]();
    OUTLINED_FUNCTION_14();
    v28 = v27 - v26;
    (*(v29 + 16))(v27 - v26);
    v30 = *(v21 + 16);
    v31 = sub_21796944C();
    v41[0] = v41;
    OUTLINED_FUNCTION_0_1();
    v33 = v32;
    v35 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20]();
    v37 = v41 - v36;
    v30(v28, v22, v23, v20, v21);
    if (__swift_getEnumTagSinglePayload(v37, 1, v20) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v48);
      (*(v33 + 8))(v37, v31);
      OUTLINED_FUNCTION_2_14();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
    }

    else
    {
      *(&v46 + 1) = v20;
      v47 = v21;
      v39 = __swift_allocate_boxed_opaque_existential_1(&v45);
      (*(*(v20 - 8) + 32))(v39, v37, v20);
      __swift_destroy_boxed_opaque_existential_1(&v48);
      OUTLINED_FUNCTION_2_14();
    }

    sub_217931310(&v45, v43);
    v40 = v42;
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E118, &qword_217971468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E108, &qword_217971458);
      if (swift_dynamicCast())
      {
        return sub_217875F0C(&v45, &qword_27CB8E110, &qword_217971460);
      }
    }

    else
    {
      sub_217875F0C(v43, &qword_27CB8E110, &qword_217971460);
    }

    *(v40 + 32) = 0;
    *v40 = 0u;
    *(v40 + 16) = 0u;
    return sub_217875F0C(&v45, &qword_27CB8E110, &qword_217971460);
  }

  sub_21784A7D4(&v48, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E108, &qword_217971458);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217931310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E110, &qword_217971460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217931384@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2179688CC();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2179313CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2179688CC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_217931488@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  (*(v9 + 16))(v8 - v7);
  v10 = a1(0);
  v11 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v11 ^ 1u, 1, v10);
}

uint64_t sub_217931570@<X0>(uint64_t a1@<X8>)
{
  sub_217968A2C();
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = sub_2179688CC();
  v3 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v3 ^ 1u, 1, v2);
}

uint64_t PickableMusicItem<>.pickableSong.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = sub_2179688CC();
  v3 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v3 ^ 1u, 1, v2);
}

uint64_t sub_217931690@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21796852C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2179688CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217968A2C();
  sub_217967F0C();
  sub_21784A7D4(&v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  if (swift_dynamicCast())
  {
    (*(v8 + 32))(a1, v11, v7);
    v13 = MEMORY[0x277CD8368];
  }

  else
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 1;
      goto LABEL_7;
    }

    (*(v3 + 32))(a1, v6, v2);
    v13 = MEMORY[0x277CD8350];
  }

  (*(*(v12 - 8) + 104))(a1, *v13, v12);
  v14 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(a1, v14, 1, v12);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t PickableMusicItem<>.pickableTrack.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21796852C();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = sub_2179688CC();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14();
  v19 = v18 - v17;
  sub_217967F0C();
  sub_21784A7D4(&v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  if (swift_dynamicCast())
  {
    (*(v13 + 32))(a1, v19, v11);
    v20 = MEMORY[0x277CD8368];
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_217968A2C();
      v23 = OUTLINED_FUNCTION_3_21();
      goto LABEL_7;
    }

    (*(v4 + 32))(a1, v10, v2);
    v20 = MEMORY[0x277CD8350];
  }

  v21 = *v20;
  v22 = sub_217968A2C();
  (*(*(v22 - 8) + 104))(a1, v21, v22);
  v23 = a1;
  v24 = 0;
  v25 = 1;
  v26 = v22;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_217931C40()
{
  v1 = v0;
  v2 = sub_217968E3C();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_217968CFC();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v1, v10);
  v18 = (*(v13 + 88))(v17, v10);
  if (v18 == *MEMORY[0x277D2B320])
  {
    (*(v13 + 8))(v17, v10);
    return 0;
  }

  if (v18 == *MEMORY[0x277D2B328])
  {
    (*(v13 + 96))(v17, v10);
    (*(v5 + 32))(v9, v17, v2);
    v19 = sub_217968D5C();
    (*(v5 + 8))(v9, v2);
    return v19;
  }

  result = sub_21796959C();
  __break(1u);
  return result;
}

uint64_t sub_217931E94()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217931F50(void *a1)
{
  a1[1] = sub_217932068(&qword_27CB8E128);
  a1[2] = sub_217932068(&qword_27CB8E130);
  a1[3] = sub_217932068(&qword_27CB8E138);
  a1[4] = sub_217932068(&qword_27CB8E140);
  result = sub_217932068(&qword_27CB8E148);
  a1[5] = result;
  return result;
}

uint64_t sub_217932024(uint64_t a1)
{
  result = sub_217932068(&qword_27CB8BFA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217932068(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968CFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932128(void *a1)
{
  a1[2] = sub_2179321D8(&qword_27CB8E150);
  a1[3] = sub_2179321D8(&qword_27CB8E158);
  a1[4] = sub_2179321D8(&qword_27CB8E160);
  result = sub_2179321D8(&qword_27CB8E168);
  a1[5] = result;
  return result;
}

uint64_t sub_2179321D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21796831C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793228C()
{
  v1 = sub_217965F7C();
  if (v0)
  {
    v2 = v0;
    if (qword_27CB8A380 != -1)
    {
      OUTLINED_FUNCTION_39_0();
    }

    OUTLINED_FUNCTION_1_21();
    sub_21796560C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21796A340;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 64) = sub_21788C964();
    *(v3 + 32) = v1;
    *(v3 + 40) = v2;
    v4 = sub_217968F7C();

    return v4;
  }

  else
  {
    if (qword_27CB8A380 != -1)
    {
      OUTLINED_FUNCTION_39_0();
    }

    OUTLINED_FUNCTION_1_21();
    return sub_21796560C();
  }
}

uint64_t sub_217932418(void *a1)
{
  a1[1] = sub_2179324EC(&qword_27CB8E178);
  a1[2] = sub_2179324EC(&qword_27CB8E180);
  a1[3] = sub_2179324EC(&qword_27CB8E188);
  a1[4] = sub_2179324EC(&qword_27CB8E190);
  result = sub_2179324EC(&qword_27CB8E198);
  a1[5] = result;
  return result;
}

uint64_t sub_2179324EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217965F9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793254C()
{
  sub_2179326B8(&qword_27CB8D3F0);
  sub_2179326B8(&qword_27CB8B808);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2179325E4(void *a1)
{
  a1[1] = sub_2179326B8(&qword_27CB8E1A0);
  a1[2] = sub_2179326B8(&qword_27CB8E1A8);
  a1[3] = sub_2179326B8(&qword_27CB8E1B0);
  a1[4] = sub_2179326B8(&qword_27CB8E1B8);
  result = sub_2179326B8(&qword_27CB8E1C0);
  a1[5] = result;
  return result;
}

uint64_t sub_2179326B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21796595C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793276C()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217932820(void *a1)
{
  a1[2] = sub_2179328D0(&qword_27CB8E1D0);
  a1[3] = sub_2179328D0(&qword_27CB8E1D8);
  a1[4] = sub_2179328D0(&qword_27CB8E1E0);
  result = sub_2179328D0(&qword_27CB8E1E8);
  a1[5] = result;
  return result;
}

uint64_t sub_2179328D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179689DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932984()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217932A3C(void *a1)
{
  a1[1] = sub_217932B10(&qword_27CB8E1F8);
  a1[2] = sub_217932B10(&qword_27CB8E200);
  a1[3] = sub_217932B10(&qword_27CB8E208);
  a1[4] = sub_217932B10(&qword_27CB8E210);
  result = sub_217932B10(&qword_27CB8E218);
  a1[5] = result;
  return result;
}

uint64_t sub_217932B10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179661BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932BC4()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217932C84(void *a1)
{
  a1[2] = sub_217932D34(&qword_27CB8E228);
  a1[3] = sub_217932D34(&qword_27CB8E230);
  a1[4] = sub_217932D34(&qword_27CB8E238);
  result = sub_217932D34(&qword_27CB8E240);
  a1[5] = result;
  return result;
}

uint64_t sub_217932D34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21796866C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932DF0(void *a1)
{
  a1[1] = sub_217932F08(&qword_27CB8E250);
  a1[2] = sub_217932F08(&qword_27CB8E258);
  a1[3] = sub_217932F08(&qword_27CB8E260);
  a1[4] = sub_217932F08(&qword_27CB8E268);
  result = sub_217932F08(&qword_27CB8E270);
  a1[5] = result;
  return result;
}

uint64_t sub_217932EC4(uint64_t a1)
{
  result = sub_217932F08(&qword_27CB8D938);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217932F08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968D2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932F4C()
{
  sub_217933098(&qword_27CB8B0E0);
  sub_217933098(&qword_27CB8B0E8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217932FE8(void *a1)
{
  a1[2] = sub_217933098(&qword_27CB8D3B0);
  a1[3] = sub_217933098(&qword_27CB8E278);
  a1[4] = sub_217933098(&qword_27CB8D380);
  result = sub_217933098(&qword_27CB8E280);
  a1[5] = result;
  return result;
}

uint64_t sub_217933098(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968DFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217933168(void *a1)
{
  a1[1] = sub_21793323C(&qword_27CB8E290);
  a1[2] = sub_21793323C(&qword_27CB8E298);
  a1[3] = sub_21793323C(&qword_27CB8E2A0);
  a1[4] = sub_21793323C(&qword_27CB8E2A8);
  result = sub_21793323C(&qword_27CB8E2B0);
  a1[5] = result;
  return result;
}

uint64_t sub_21793323C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217965D6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179332F0()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_2179333A4(void *a1)
{
  a1[1] = sub_217933478(&qword_27CB8E2C0);
  a1[2] = sub_217933478(&qword_27CB8E2C8);
  a1[3] = sub_217933478(&qword_27CB8E2D0);
  a1[4] = sub_217933478(&qword_27CB8E2D8);
  result = sub_217933478(&qword_27CB8E2E0);
  a1[5] = result;
  return result;
}

uint64_t sub_217933478(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179661DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179334BC()
{
  sub_217933624(&qword_27CB8D3E8);
  sub_217933624(&qword_27CB8BFB0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217933550(void *a1)
{
  a1[1] = sub_217933624(&qword_27CB8E2E8);
  a1[2] = sub_217933624(&qword_27CB8E2F0);
  a1[3] = sub_217933624(&qword_27CB8E2F8);
  a1[4] = sub_217933624(&qword_27CB8E300);
  result = sub_217933624(&qword_27CB8E308);
  a1[5] = result;
  return result;
}

uint64_t sub_217933624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21796591C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217933668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E10];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  result = sub_217968E3C();
  v8 = MEMORY[0x277CD85D0];
  *(v0 + 80) = result;
  *(v0 + 88) = v8;
  qword_27CB8E310 = v0;
  return result;
}

uint64_t sub_217933730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E18];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_217968CFC();
  result = sub_217933CC4(&qword_27CB8E100, MEMORY[0x277D2B358]);
  *(v0 + 80) = v7;
  *(v0 + 88) = result;
  qword_27CB8E318 = v0;
  return result;
}

uint64_t sub_217933828(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t sub_21793387C(uint64_t a1)
{
  v2 = MEMORY[0x277CD7E58];
  *(a1 + 16) = sub_217933CC4(&qword_27CB8E320, MEMORY[0x277CD7E58]);
  result = sub_217933CC4(&qword_27CB8AF20, v2);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217933988()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  sub_21796560C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796A340;
  v1 = sub_2179684DC();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21788C964();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v4 = sub_217968F7C();

  return v4;
}

uint64_t sub_217933AC4()
{
  v0 = sub_21796599C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21796852C();
  if (sub_2179687FC())
  {
    sub_21796598C();
    v5 = sub_21796597C();
    (*(v1 + 8))(v4, v0);
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_217933BF0(void *a1)
{
  v2 = MEMORY[0x277CD7E58];
  a1[2] = sub_217933CC4(&qword_27CB8E328, MEMORY[0x277CD7E58]);
  a1[3] = sub_217933CC4(&qword_27CB8E330, v2);
  a1[4] = sub_217933CC4(&qword_27CB8E320, v2);
  result = sub_217933CC4(&qword_27CB8AF20, v2);
  a1[5] = result;
  return result;
}

uint64_t sub_217933CC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217933D78()
{
  v0 = sub_21796896C();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return sub_21796896C();
  }

  else
  {
    return sub_2179688FC();
  }
}

uint64_t sub_217933DD4()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  sub_21796560C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796A340;
  v1 = sub_21796890C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21788C964();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v4 = sub_217968F7C();

  return v4;
}

uint64_t sub_217933F24(void *a1)
{
  a1[2] = sub_217934018(&qword_27CB8A738);
  a1[3] = sub_217934018(&qword_27CB8E340);
  a1[4] = sub_217934018(&qword_27CB8E348);
  result = sub_217934018(&qword_27CB8AF10);
  a1[5] = result;
  return result;
}

uint64_t sub_217933FD4(uint64_t a1)
{
  result = sub_217934018(&qword_27CB8A6D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217934018(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179689AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179340D8(void *a1)
{
  a1[2] = sub_217934188(&qword_27CB8E350);
  a1[3] = sub_217934188(&qword_27CB8E358);
  a1[4] = sub_217934188(&qword_27CB8E360);
  result = sub_217934188(&qword_27CB8E368);
  a1[5] = result;
  return result;
}

uint64_t sub_217934188(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179682DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217934240()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217934300(void *a1)
{
  a1[1] = sub_2179343D4(&qword_27CB8E378);
  a1[2] = sub_2179343D4(&qword_27CB8E380);
  a1[3] = sub_2179343D4(&qword_27CB8E388);
  a1[4] = sub_2179343D4(&qword_27CB8E390);
  result = sub_2179343D4(&qword_27CB8E398);
  a1[5] = result;
  return result;
}

uint64_t sub_2179343D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21796624C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217934418()
{
  v0 = sub_21796599C();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_217968A2C();
  if (sub_2179687FC())
  {
    sub_21796598C();
    v9 = sub_21796597C();
    (*(v3 + 8))(v8, v0);
    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_217934500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971710;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E10];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_217968E3C();
  v8 = MEMORY[0x277CD85D0];
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  result = sub_2179688CC();
  v10 = MEMORY[0x277CD81E8];
  *(v0 + 96) = result;
  *(v0 + 104) = v10;
  qword_27CB8E3A0 = v0;
  return result;
}

uint64_t sub_2179345DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971710;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E18];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_217968CFC();
  v8 = sub_217934D8C(&qword_27CB8E100, MEMORY[0x277D2B358]);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  result = sub_2179688CC();
  v10 = MEMORY[0x277CD81F0];
  *(v0 + 96) = result;
  *(v0 + 104) = v10;
  qword_27CB8E3A8 = v0;
  return result;
}

uint64_t Track.init<A>(pickerItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E3B0, &qword_217971720);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v52 - v7;
  v56 = sub_21796852C();
  v8 = OUTLINED_FUNCTION_2(v56);
  v54 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v53 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v52 - v17;
  v19 = *(a2 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v55 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - v23;
  v25 = sub_2179688CC();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14();
  v33 = (v32 - v31);
  v58 = sub_217968A2C();
  v34 = OUTLINED_FUNCTION_2(v58);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14();
  v41 = v40 - v39;
  (*(v19 + 16))(v24, a1, a2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v25);
    (*(v19 + 8))(a1, a2);
    v42 = *(v28 + 32);
    v42(v33, v18, v25);
    v42(v41, v33, v25);
    v43 = MEMORY[0x277CD8368];
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v25);
    sub_217875F0C(v18, &qword_27CB8CA28, &unk_21796F610);
    (*(v19 + 32))(v55, a1, a2);
    v44 = v57;
    v45 = v56;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v50 = 1;
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
      sub_217875F0C(v44, &qword_27CB8E3B0, &qword_217971720);
      v49 = v58;
      v48 = v59;
      return __swift_storeEnumTagSinglePayload(v48, v50, 1, v49);
    }

    __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
    v46 = v53;
    v47 = *(v54 + 32);
    v47(v53, v44, v45);
    v47(v41, v46, v45);
    v43 = MEMORY[0x277CD8350];
  }

  v49 = v58;
  v48 = v59;
  (*(v36 + 104))(v41, *v43, v58);
  (*(v36 + 32))(v48, v41, v49);
  v50 = 0;
  return __swift_storeEnumTagSinglePayload(v48, v50, 1, v49);
}

uint64_t sub_217934B98(uint64_t a1)
{
  v2 = MEMORY[0x277CD83B8];
  *(a1 + 16) = sub_217934D8C(&qword_27CB8E3B8, MEMORY[0x277CD83B8]);
  result = sub_217934D8C(&qword_27CB8A7B0, v2);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217934CB8(void *a1)
{
  v2 = MEMORY[0x277CD83B8];
  a1[2] = sub_217934D8C(&qword_27CB8E3C0, MEMORY[0x277CD83B8]);
  a1[3] = sub_217934D8C(&qword_27CB8E3C8, v2);
  a1[4] = sub_217934D8C(&qword_27CB8E3B8, v2);
  result = sub_217934D8C(&qword_27CB8A7B0, v2);
  a1[5] = result;
  return result;
}

uint64_t sub_217934D8C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217934E44()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217934EFC(void *a1)
{
  a1[1] = sub_217934FD0(&qword_27CB8E3D8);
  a1[2] = sub_217934FD0(&qword_27CB8E3E0);
  a1[3] = sub_217934FD0(&qword_27CB8E3E8);
  a1[4] = sub_217934FD0(&qword_27CB8E3F0);
  result = sub_217934FD0(&qword_27CB8E3F8);
  a1[5] = result;
  return result;
}

uint64_t sub_217934FD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217965F5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217935098(void *a1)
{
  a1[2] = sub_21793518C(&qword_27CB8CA98);
  a1[3] = sub_21793518C(&qword_27CB8E408);
  a1[4] = sub_21793518C(&qword_27CB8E410);
  result = sub_21793518C(&qword_27CB8E418);
  a1[5] = result;
  return result;
}

uint64_t sub_217935148(uint64_t a1)
{
  result = sub_21793518C(&qword_27CB8AAC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21793518C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968E3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217935240()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217935300()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E438, &unk_217971800);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_21796825C();
  sub_217968ACC();
}

uint64_t sub_217935400(void *a1)
{
  a1[2] = sub_2179354F4(&qword_27CB8AE40);
  a1[3] = sub_2179354F4(&qword_27CB8E428);
  a1[4] = sub_2179354F4(&qword_27CB8E430);
  result = sub_2179354F4(&qword_27CB8B668);
  a1[5] = result;
  return result;
}

uint64_t sub_2179354B0(uint64_t a1)
{
  result = sub_2179354F4(&qword_27CB8AAF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2179354F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968AFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793558C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id sub_21793559C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  _s33MainViewContainerDismissalWrapperV17HostingControllerCMa();
  swift_getWitnessTable();
  sub_2179673AC();
  sub_21796739C();
  v5 = sub_21793568C(v9);
  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2179356C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  _s33MainViewContainerDismissalWrapperV11CoordinatorCMa();
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];

  sub_217936420(v5);
  sub_217936420(v7);
  return sub_217935744(v4, v5, v6, v7, v8);
}

id sub_2179357C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2179356C0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21793582C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_2179358A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_217935924()
{
  swift_getWitnessTable();
  sub_2179672EC();
  __break(1u);
}

id sub_217935964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *MEMORY[0x277D85000];
  v8 = (v5 + qword_27CB8E448);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + qword_27CB8E450);
  *v9 = 0;
  v9[1] = 0;
  *(v5 + qword_27CB8E440) = a1;
  *v8 = a2;
  v8[1] = a3;
  *v9 = a4;
  v9[1] = a5;
  OUTLINED_FUNCTION_1_22();
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_1_22();
  v13 = *(v12 + 88);
  v15.receiver = v5;
  v15.super_class = _s33MainViewContainerDismissalWrapperV11CoordinatorCMa();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_217935A10()
{
  v1 = *(v0 + qword_27CB8E448);
  v2 = *(v0 + qword_27CB8E448 + 8);
  v3 = OUTLINED_FUNCTION_63_0();
  sub_217936420(v3);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217935A48()
{
  v1 = *(v0 + qword_27CB8E450);
  v2 = *(v0 + qword_27CB8E450 + 8);
  v3 = OUTLINED_FUNCTION_63_0();
  sub_217936420(v3);
  return OUTLINED_FUNCTION_63_0();
}

void sub_217935A98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_217935A80(v5);
}

BOOL sub_217935AF8()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_217935A00();
  v3 = *((v2 & v1) + 0x50);
  v4 = sub_21796914C();

  return v4 == 0;
}

uint64_t sub_217935B60(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_217935AF8();

  return a1 & 1;
}

void (*sub_217935BC4(uint64_t a1, uint64_t (*a2)(void)))(void)
{
  result = a2();
  if (result)
  {
    result();
    v3 = OUTLINED_FUNCTION_63_0();

    return sub_21789096C(v3);
  }

  return result;
}

void sub_217935C1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_217935BAC(v5);
}

id sub_217935CBC()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_1_22();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1_22();
  v6 = *(v5 + 88);
  v8.receiver = v0;
  v8.super_class = _s33MainViewContainerDismissalWrapperV11CoordinatorCMa();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_217935D24(uint64_t a1)
{
  v2 = *(a1 + qword_27CB8E440);

  v3 = *(a1 + qword_27CB8E448 + 8);
  sub_21789096C(*(a1 + qword_27CB8E448));
  v4 = *(a1 + qword_27CB8E450);
  v5 = *(a1 + qword_27CB8E450 + 8);

  return sub_21789096C(v4);
}

void sub_217935EAC(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v1;
  v5 = *(v4 + qword_27CB97AD8);
  v6 = *(v4 + qword_27CB97AD8 + 8);
  v11.receiver = v1;
  v11.super_class = _s33MainViewContainerDismissalWrapperV17HostingControllerCMa();
  objc_msgSendSuper2(&v11, sel_didMoveToParentViewController_, a1);
  if (a1)
  {
    v7 = a1;
    v8 = [v7 presentationController];
    if (v8)
    {
      v9 = v8;
      [v8 setDelegate_];
    }
  }

  else
  {
    v10 = [v1 presentationController];
    if (!v10)
    {
      return;
    }

    v7 = v10;
    [v10 setDelegate_];
  }
}

void sub_21793602C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_217935EAC(a3);
}

id sub_217936174()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + qword_27CB97AD8);
  v3 = *(v1 + qword_27CB97AD8 + 8);
  v5.receiver = v0;
  v5.super_class = _s33MainViewContainerDismissalWrapperV17HostingControllerCMa();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_217936274()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2179362DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21793631C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2179363D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217967B0C();
  *a1 = result;
  return result;
}

uint64_t sub_217936420(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217936444@<X0>(uint64_t a1@<X8>)
{
  sub_2179683BC();
  sub_2179377E8(&qword_27CB8E748, MEMORY[0x277CD7DB0]);
  sub_2179692AC();
  sub_2179692EC();
  if (v12[4] == v12[0])
  {
    sub_21796814C();
    v2 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    v6 = sub_21796934C();
    v8 = v7;
    v9 = sub_21796814C();
    OUTLINED_FUNCTION_3(v9);
    (*(v10 + 16))(a1, v8, v9);
    v6(v12, 0);
    v2 = a1;
    v3 = 0;
    v4 = 1;
    v5 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2179365B0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_3_22(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    (*(*(v6 - 8) + 16))(v1, v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v8, 1, v7);
}

uint64_t sub_217936680(uint64_t a1)
{
  OUTLINED_FUNCTION_3_22(a1);
  v4 = _s12SearchColumnVMa();
  v5 = v4;
  if (v3)
  {
    sub_2178A9100(v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v1);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v6, 1, v5);
}

uint64_t sub_217936718@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_217937830(a3, a1, a2);
  sub_2179692AC();
  sub_2179692EC();
  if (v20[4] == v20[0])
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    v14 = sub_21796934C();
    v16 = v15;
    v17 = (a4)(0);
    OUTLINED_FUNCTION_3(v17);
    (*(v18 + 16))(a5, v16, v17);
    v14(v20, 0);
    v10 = a5;
    v11 = 0;
    v12 = 1;
    v13 = v17;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Song.catalogPreviewAssets.getter()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v1[5] = v2;
  OUTLINED_FUNCTION_64_0(v2);
  v1[6] = v3;
  v5 = *(v4 + 64);
  v1[7] = OUTLINED_FUNCTION_16_2();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610) - 8) + 64);
  v1[8] = OUTLINED_FUNCTION_16_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E730, &qword_217971AA0);
  v1[9] = v7;
  OUTLINED_FUNCTION_64_0(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_16_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E738, &qword_217971AA8);
  v1[12] = v11;
  OUTLINED_FUNCTION_64_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_16_2();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_16_2();
  v16 = sub_21796809C();
  v1[16] = v16;
  OUTLINED_FUNCTION_64_0(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_16_2();
  v20 = sub_21796862C();
  v1[19] = v20;
  OUTLINED_FUNCTION_64_0(v20);
  v1[20] = v21;
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x2822009F8](sub_217936AE0, 0, 0);
}

uint64_t sub_217936AE0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[4];
  v0[22] = sub_2179688CC();
  sub_2179684BC();
  sub_21796808C();
  (*(v4 + 8))(v2, v3);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_2178653BC(v0[15], &qword_27CB8AC40, &qword_21796B248);
    v7 = v0[21];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[11];
    v13 = v0[7];
    v12 = v0[8];

    v14 = v0[1];

    return v14(0);
  }

  else
  {
    v16 = v0[14];
    (*(v0[20] + 32))(v0[21], v0[15], v0[19]);
    swift_getKeyPath();
    v0[2] = sub_21796861C();
    v0[3] = v17;
    sub_2179377E8(&qword_27CB8CB28, MEMORY[0x277CD8238]);
    sub_21796837C();
    v18 = *(MEMORY[0x277CD7DA0] + 4);
    v19 = swift_task_alloc();
    v0[23] = v19;
    *v19 = v0;
    v19[1] = sub_217936D38;
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[12];

    return MEMORY[0x282124780](v21, v22);
  }
}

uint64_t sub_217936D38()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_2179370B0;
  }

  else
  {
    v3 = sub_217936E4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_217936E4C()
{
  v1 = v0[22];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  sub_2179683AC();
  sub_217936718(&qword_27CB8B0A8, &unk_21796B760, &qword_27CB8CAD8, MEMORY[0x277CD8238], v4);
  (*(v6 + 8))(v5, v7);
  if (__swift_getEnumTagSinglePayload(v4, 1, v1) == 1)
  {
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v14 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    sub_2178653BC(v14, &qword_27CB8CA28, &unk_21796F610);
    v15 = 0;
  }

  else
  {
    v16 = v0[22];
    v17 = v0[20];
    v34 = v0[19];
    v35 = v0[21];
    v18 = v0[13];
    v33 = v0[14];
    v20 = v0[11];
    v19 = v0[12];
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];
    v15 = sub_21796888C();
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v33, v19);
    (*(v17 + 8))(v35, v34);
    (*(*(v16 - 8) + 8))(v23, v16);
  }

  v24 = v0[21];
  v25 = v0[18];
  v27 = v0[14];
  v26 = v0[15];
  v28 = v0[11];
  v30 = v0[7];
  v29 = v0[8];

  v31 = v0[1];

  return v31(v15);
}

uint64_t sub_2179370B0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[24];

  return v9();
}

uint64_t sub_2179371A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968E3C();
  v6 = MEMORY[0x277CD85D0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  result = sub_2179688CC();
  v8 = MEMORY[0x277CD81E8];
  *(v0 + 80) = result;
  *(v0 + 88) = v8;
  qword_27CB8E720 = v0;
  return result;
}

uint64_t sub_217937270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968CFC();
  v6 = sub_2179377E8(&qword_27CB8E100, MEMORY[0x277D2B358]);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  result = sub_2179688CC();
  v8 = MEMORY[0x277CD81F0];
  *(v0 + 80) = result;
  *(v0 + 88) = v8;
  qword_27CB8E728 = v0;
  return result;
}

uint64_t sub_217937378()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  sub_21796560C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796A340;
  v1 = sub_21796884C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21788C964();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v4 = sub_217968F7C();

  return v4;
}

uint64_t sub_2179374B4()
{
  v0 = sub_21796599C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2179688CC();
  if (sub_2179687FC())
  {
    sub_21796598C();
    v5 = sub_21796597C();
    (*(v1 + 8))(v4, v0);
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2179375C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21796863C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_217937610(uint64_t a1)
{
  v2 = MEMORY[0x277CD8238];
  *(a1 + 16) = sub_2179377E8(qword_27CB8C310, MEMORY[0x277CD8238]);
  result = sub_2179377E8(&qword_27CB8BCC8, v2);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217937714(void *a1)
{
  v2 = MEMORY[0x277CD8238];
  a1[2] = sub_2179377E8(&qword_27CB8CB28, MEMORY[0x277CD8238]);
  a1[3] = sub_2179377E8(&qword_27CB8E740, v2);
  a1[4] = sub_2179377E8(qword_27CB8C310, v2);
  result = sub_2179377E8(&qword_27CB8BCC8, v2);
  a1[5] = result;
  return result;
}

uint64_t sub_2179377E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217937830(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793791C(void *a1)
{
  a1[1] = sub_2179379F0(&qword_27CB8E758);
  a1[2] = sub_2179379F0(&qword_27CB8E760);
  a1[3] = sub_2179379F0(&qword_27CB8E768);
  a1[4] = sub_2179379F0(&qword_27CB8E770);
  result = sub_2179379F0(&qword_27CB8E778);
  a1[5] = result;
  return result;
}

uint64_t sub_2179379F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21796603C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217937AB8(void *a1)
{
  a1[1] = sub_217937B8C(&qword_27CB8E788);
  a1[2] = sub_217937B8C(&qword_27CB8E790);
  a1[3] = sub_217937B8C(&qword_27CB8E798);
  a1[4] = sub_217937B8C(&qword_27CB8E7A0);
  result = sub_217937B8C(&qword_27CB8E7A8);
  a1[5] = result;
  return result;
}

uint64_t sub_217937B8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217965FEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_217937BF0()
{
  OUTLINED_FUNCTION_81();
  v43 = v1;
  v39 = v2;
  v40 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7F8, &qword_217971CD8);
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  v42 = &v38 - v10;
  v41 = sub_2179683BC();
  v11 = OUTLINED_FUNCTION_2(v41);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v38 = sub_21796809C();
  v19 = OUTLINED_FUNCTION_2(v38);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_49_4();
  v24 = sub_21796814C();
  v25 = OUTLINED_FUNCTION_2(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_5();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v38 - v34;
  v5(0);
  sub_21793F4A4(v39, v40);
  sub_2179684BC();
  sub_21796807C();
  (*(v21 + 8))(v0, v38);
  v36 = v42;
  sub_217936444(v42);
  (*(v13 + 8))(v18, v41);
  if (__swift_getEnumTagSinglePayload(v36, 1, v24) == 1)
  {
    sub_2178653BC(v36, &qword_27CB8E7F8, &qword_217971CD8);
  }

  else
  {
    (*(v27 + 32))(v35, v36, v24);
    (*(v27 + 104))(v32, *MEMORY[0x277CD7CD0], v24);
    sub_21796813C();
    v37 = *(v27 + 8);
    v37(v32, v24);
    v37(v35, v24);
  }

  OUTLINED_FUNCTION_80();
}