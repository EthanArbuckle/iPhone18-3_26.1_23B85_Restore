uint64_t sub_26B1908FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static HashDigest.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_26B190968(uint64_t a1)
{
  v2 = *(a1 - 8);
  result = a1 - 8;
  v3 = *(v2 + 64);
  if ((v3 - 0x2000000000000000) >> 62 == 3)
  {
    return 4 * v3;
  }

  __break(1u);
  return result;
}

void XXHash.init(seed:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v59 = *(v2 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_7();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_7();
  v63 = v17;
  v19 = v18;
  v55 = v18;
  *v18 = 0;
  v53 = type metadata accessor for XXHash();
  *(v19 + *(v53 + 40)) = MEMORY[0x277D84F90];
  v20 = *(v1 + 16);
  v56 = v1 + 16;
  v57 = v20;
  v61 = v8;
  OUTLINED_FUNCTION_22_6();
  v22 = v21;
  v23();
  v24 = *(v59 + 8);
  v25 = OUTLINED_FUNCTION_19();
  v24(v25);
  v26 = OUTLINED_FUNCTION_6_16();
  v24(v26);
  v27 = v12;
  (v24)(v12, v3);
  v54 = v15;
  v28 = OUTLINED_FUNCTION_9_10();
  v24(v28);
  v62 = *(v22 + 8);
  v58 = v22;
  sub_26B213940();
  v29 = OUTLINED_FUNCTION_13_9();
  v24(v29);
  OUTLINED_FUNCTION_22_6();
  v30 = v57;
  v57();
  v31 = OUTLINED_FUNCTION_19();
  v24(v31);
  v32 = OUTLINED_FUNCTION_9_10();
  v24(v32);
  v33 = OUTLINED_FUNCTION_6_16();
  v24(v33);
  v34 = OUTLINED_FUNCTION_13_9();
  v24(v34);
  v55 += *(v53 + 36);
  v35 = v63;
  sub_26B213940();
  v36 = OUTLINED_FUNCTION_19();
  v24(v36);
  v37 = OUTLINED_FUNCTION_30_5();
  v24(v37);
  OUTLINED_FUNCTION_22_6();
  v30();
  v38 = OUTLINED_FUNCTION_6_16();
  v24(v38);
  (v24)(v27, v3);
  v39 = OUTLINED_FUNCTION_6_16();
  v24(v39);
  (v24)(v35, v3);
  v64 = v3;
  v65 = v3;
  v66 = v3;
  v67 = v3;
  v40 = OUTLINED_FUNCTION_21_5();
  v41 = v40[12];
  v42 = v55;
  v43 = v60;
  sub_26B213940();
  v44 = OUTLINED_FUNCTION_13_9();
  v24(v44);
  (*(v59 + 16))(&v42[v40[16]], v43, v3);
  OUTLINED_FUNCTION_22_6();
  v57();
  v45 = OUTLINED_FUNCTION_6_16();
  v24(v45);
  v46 = OUTLINED_FUNCTION_12_10();
  v24(v46);
  v47 = OUTLINED_FUNCTION_7_10();
  v24(v47);
  v48 = OUTLINED_FUNCTION_13_9();
  v24(v48);
  v49 = v40[20];
  sub_26B213960();
  v50 = OUTLINED_FUNCTION_19();
  v24(v50);
  v51 = OUTLINED_FUNCTION_7_10();
  v24(v51);
  OUTLINED_FUNCTION_28();
}

void XXHash.finalize()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v171 = v25;
  v26 = *(v23 + 16);
  v189 = v26;
  v190 = v26;
  v191 = v26;
  v192 = v26;
  v27 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_9_0();
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v166 - v33;
  OUTLINED_FUNCTION_9_0();
  v183 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_0();
  v168 = v39 - v40;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_7();
  v175 = v42;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_7();
  v179 = v44;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_7();
  v184 = v46;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_7();
  v187 = v48;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_7();
  v176 = v50;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_33_2();
  v174 = v52;
  v53 = *v20;
  v54 = *(v24 + 24);
  v55 = sub_26B190968(v26);
  v56 = *(v24 + 36);
  v57 = *(v29 + 16);
  v185 = v20;
  v181 = v56;
  v182 = v29 + 16;
  v178 = v57;
  v57(v34, v20 + v56, v27);
  v58 = v27[12];
  v59 = v27[16];
  v167 = v27;
  v60 = v27[20];
  v169 = v53;
  v170 = v24;
  v177 = v54;
  v173 = v59;
  v172 = v60;
  if (v53 >= v55)
  {
    v77 = v183;
    v78 = *(v54 + 8);
    OUTLINED_FUNCTION_37_1();
    v188 = v79;
    if (sub_26B213930() < 2)
    {
      __break(1u);
    }

    else
    {
      v189 = 1;
      v80 = *(v188 + 8);
      v180 = sub_26B16BD74();
      OUTLINED_FUNCTION_11_8();
      v186 = v80;
      sub_26B213530();
      v81 = sub_26B213930();
      if (!__OFSUB__(v81, 1))
      {
        v189 = v81 - 1;
        OUTLINED_FUNCTION_4_15();
        sub_26B213520();
        OUTLINED_FUNCTION_17_6();
        sub_26B213510();
        v83 = *(v77 + 8);
        v82 = v77 + 8;
        v64 = v83;
        v84 = OUTLINED_FUNCTION_7_10();
        v83(v84);
        v85 = OUTLINED_FUNCTION_6_16();
        v83(v85);
        v86 = OUTLINED_FUNCTION_0_25(&a17);
        v83(v86);
        v87 = OUTLINED_FUNCTION_0_25(&a18);
        v83(v87);
        (v83)(&v34[v58], v26);
        v88 = OUTLINED_FUNCTION_9_10();
        v83(v88);
        OUTLINED_FUNCTION_2_19();
        v89 = v167;
        OUTLINED_FUNCTION_16_5();
        v90();
        v91 = v89[12];
        v92 = v89[16];
        v93 = v89[20];
        if (OUTLINED_FUNCTION_38_2() >= 8)
        {
          v189 = 7;
          OUTLINED_FUNCTION_34_1();
          OUTLINED_FUNCTION_4_15();
          sub_26B213530();
          v94 = OUTLINED_FUNCTION_38_2();
          if (!__OFSUB__(v94, 7))
          {
            v189 = v94 - 7;
            OUTLINED_FUNCTION_34_1();
            v172 = v93;
            OUTLINED_FUNCTION_4_15();
            v173 = v91;
            sub_26B213520();
            v166 = v92;
            OUTLINED_FUNCTION_18_5();
            OUTLINED_FUNCTION_17_6();
            sub_26B213510();
            v95 = OUTLINED_FUNCTION_12_10();
            v64(v95);
            v96 = OUTLINED_FUNCTION_7_10();
            v64(v96);
            v97 = OUTLINED_FUNCTION_0_25(&a17);
            v64(v97);
            v98 = OUTLINED_FUNCTION_0_25(&a11);
            v64(v98);
            v99 = OUTLINED_FUNCTION_0_25(&a18);
            v64(v99);
            v100 = OUTLINED_FUNCTION_9_10();
            v64(v100);
            OUTLINED_FUNCTION_17_6();
            sub_26B213940();
            v101 = OUTLINED_FUNCTION_6_16();
            v64(v101);
            v102 = OUTLINED_FUNCTION_30_5();
            v64(v102);
            OUTLINED_FUNCTION_2_19();
            OUTLINED_FUNCTION_16_5();
            v103();
            v104 = v89[12];
            v105 = v89[16];
            v173 = v89[20];
            OUTLINED_FUNCTION_37_1();
            if (sub_26B213930() >= 13)
            {
              v189 = 12;
              OUTLINED_FUNCTION_4_15();
              sub_26B213530();
              v106 = OUTLINED_FUNCTION_38_2();
              if (!__OFSUB__(v106, 12))
              {
                v189 = v106 - 12;
                OUTLINED_FUNCTION_4_15();
                v172 = v104;
                sub_26B213520();
                sub_26B213510();
                v107 = OUTLINED_FUNCTION_19();
                v64(v107);
                v108 = OUTLINED_FUNCTION_6_16();
                v64(v108);
                v109 = OUTLINED_FUNCTION_0_25(&a18);
                v64(v109);
                (v64)(&v34[v105], v26);
                v110 = OUTLINED_FUNCTION_0_25(&a17);
                v64(v110);
                v111 = OUTLINED_FUNCTION_9_10();
                v64(v111);
                OUTLINED_FUNCTION_17_6();
                sub_26B213940();
                v112 = OUTLINED_FUNCTION_7_10();
                v64(v112);
                v113 = OUTLINED_FUNCTION_30_5();
                v64(v113);
                OUTLINED_FUNCTION_2_19();
                OUTLINED_FUNCTION_16_5();
                v114();
                v115 = v89[12];
                v116 = v89[16];
                v117 = v89[20];
                OUTLINED_FUNCTION_37_1();
                if (sub_26B213930() >= 19)
                {
                  v189 = 18;
                  OUTLINED_FUNCTION_34_1();
                  OUTLINED_FUNCTION_4_15();
                  sub_26B213530();
                  v118 = OUTLINED_FUNCTION_38_2();
                  if (!__OFSUB__(v118, 18))
                  {
                    v168 = v82 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                    v189 = v118 - 18;
                    OUTLINED_FUNCTION_34_1();
                    v175 = v115;
                    v119 = v179;
                    OUTLINED_FUNCTION_11_8();
                    v180 = v116;
                    sub_26B213520();
                    v173 = v117;
                    sub_26B213510();
                    (v64)(v119, v26);
                    v120 = OUTLINED_FUNCTION_7_10();
                    v64(v120);
                    v121 = OUTLINED_FUNCTION_0_25(&a18);
                    v64(v121);
                    v122 = OUTLINED_FUNCTION_5_10(v180);
                    v64(v122);
                    v123 = OUTLINED_FUNCTION_5_10(v175);
                    v64(v123);
                    v124 = OUTLINED_FUNCTION_9_10();
                    v64(v124);
                    sub_26B213940();
                    v125 = OUTLINED_FUNCTION_19();
                    v64(v125);
                    v126 = OUTLINED_FUNCTION_6_16();
                    v64(v126);
                    v127 = OUTLINED_FUNCTION_2_19();
                    v128 = v178;
                    (v178)(v127);
                    v129 = v128;
                    v173 = v89[12];
                    v172 = v89[16];
                    v130 = v89[20];
                    v180 = *(v177 + 56);
                    v175 = v177 + 56;
                    v180(v34, v26);
                    (v64)(&v34[v130], v26);
                    v131 = OUTLINED_FUNCTION_0_25(&a17);
                    v64(v131);
                    v132 = OUTLINED_FUNCTION_0_25(&a18);
                    v64(v132);
                    v133 = OUTLINED_FUNCTION_9_10();
                    v64(v133);
                    v134 = v181;
                    v129(v34, v185 + v181, v89);
                    v135 = v89[12];
                    v173 = v89[16];
                    v172 = v89[20];
                    (v180)(&v34[v135], v26, v177);
                    v136 = OUTLINED_FUNCTION_30_5();
                    v64(v136);
                    v137 = OUTLINED_FUNCTION_0_25(&a17);
                    v64(v137);
                    v138 = OUTLINED_FUNCTION_0_25(&a18);
                    v64(v138);
                    (v64)(&v34[v135], v26);
                    v139 = OUTLINED_FUNCTION_9_10();
                    v64(v139);
                    v129(v34, v185 + v134, v89);
                    v179 = v89[12];
                    v140 = v89[16];
                    v141 = v89[20];
                    v142 = v177;
                    (v180)(&v34[v140], v26, v177);
                    v143 = OUTLINED_FUNCTION_30_5();
                    v64(v143);
                    v144 = &v34[v141];
                    v62 = v176;
                    (v64)(v144, v26);
                    (v64)(&v34[v140], v26);
                    v145 = OUTLINED_FUNCTION_5_10(v179);
                    v64(v145);
                    v146 = OUTLINED_FUNCTION_9_10();
                    v64(v146);
                    OUTLINED_FUNCTION_2_19();
                    OUTLINED_FUNCTION_16_5();
                    v147();
                    v184 = v89[12];
                    v148 = v89[16];
                    v149 = v89[20];
                    (v180)(&v34[v149], v26, v142);
                    (v64)(v187, v26);
                    (v64)(&v34[v149], v26);
                    (v64)(&v34[v148], v26);
                    (v64)(&v34[v184], v26);
                    v75 = v174;
                    (v64)(v34, v26);
                    v76 = v183;
                    v150 = *(v183 + 40);
                    v151 = OUTLINED_FUNCTION_18_5();
                    v152(v151);
                    goto LABEL_12;
                  }

LABEL_22:
                  __break(1u);
                  return;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v61 = *(v54 + 16);
  v62 = v176;
  v188 = v58;
  OUTLINED_FUNCTION_22_6();
  v63();
  v64 = *(v183 + 8);
  v168 = (v183 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v65 = OUTLINED_FUNCTION_19();
  v64(v65);
  v66 = OUTLINED_FUNCTION_13_9();
  v64(v66);
  (v64)(v187, v26);
  v67 = OUTLINED_FUNCTION_12_10();
  v64(v67);
  v68 = *(v54 + 8);
  v69 = v173;
  v70 = v174;
  OUTLINED_FUNCTION_17_6();
  sub_26B213940();
  v71 = OUTLINED_FUNCTION_7_10();
  v64(v71);
  v72 = OUTLINED_FUNCTION_0_25(&a17);
  v64(v72);
  (v64)(&v34[v69], v26);
  v73 = OUTLINED_FUNCTION_5_10(v188);
  v64(v73);
  v74 = OUTLINED_FUNCTION_9_10();
  v64(v74);
  v188 = v68;
  v186 = *(v68 + 8);
  v75 = v70;
  v76 = v183;
LABEL_12:
  v189 = v169;
  sub_26B16BD74();
  sub_26B213580();
  v153 = *(v76 + 32);
  OUTLINED_FUNCTION_19_5();
  v153();
  OUTLINED_FUNCTION_18_5();
  sub_26B213940();
  v154 = OUTLINED_FUNCTION_19();
  v64(v154);
  v155 = OUTLINED_FUNCTION_12_10();
  v156 = (v64)(v155);
  v157 = v177;
  if (*(*(v185 + *(v170 + 40)) + 16))
  {
    MEMORY[0x28223BE20](v156);
    *(&v166 - 4) = v26;
    *(&v166 - 3) = v157;
    *(&v166 - 2) = v75;
    sub_26B18E8C8(sub_26B192EBC, (&v166 - 6), v158);
  }

  (*(v157 + 40))(v26, v157);
  v159 = v183;
  v160 = *(v183 + 40);
  v161 = OUTLINED_FUNCTION_18_5();
  v162(v161);
  v163 = *(v159 + 16);
  OUTLINED_FUNCTION_19_5();
  v164();
  (v153)(v171, v62, v26);
  v165 = OUTLINED_FUNCTION_7_10();
  v64(v165);
  OUTLINED_FUNCTION_28();
}

void XXHash.init()()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v56 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9_0();
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_0();
  v49 = v9 - v10;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33_2();
  v48 = v12;
  v57 = v1;
  v13 = *(v1 + 8);
  v14 = *(v13 + 8);
  v15 = *(*(v14 + 24) + 16);
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v18 = *(*(v14 + 32) + 8);
  sub_26B213310();
  OUTLINED_FUNCTION_9_0();
  v52 = v20;
  v53 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  OUTLINED_FUNCTION_9_0();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_33_2();
  v50 = v36;
  OUTLINED_FUNCTION_28_4();
  swift_getAssociatedConformanceWitness();
  sub_26B213ED0();
  sub_26B213E10();
  v54 = v13;
  sub_26B213980();
  if (sub_26B212A10())
  {
    v37 = v27;
    v38 = *(v27 + 32);
    v39 = v48;
    v38(v48, v14, v3);
    v40 = TupleTypeMetadata2;
    v38(v39 + *(TupleTypeMetadata2 + 48), v33, v3);
    v41 = v55;
    v42 = v49;
    (*(v55 + 16))(v49, v39, v40);
    v43 = *(v40 + 48);
    v44 = OUTLINED_FUNCTION_18_5();
    (v38)(v44);
    v47 = *(v37 + 8);
    v47(v42 + v43, v3);
    (*(v41 + 32))(v42, v39, v40);
    v45 = v53;
    v38(&v25[*(v53 + 36)], v42 + *(v40 + 48), v3);
    v47(v42, v3);
    sub_26B2139A0();
    (*(v52 + 8))(v25, v45);
    XXHash.init(seed:)();
    OUTLINED_FUNCTION_28();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B19217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v34 = a2;
  v35 = a3;
  v7 = *(a5 + 16);
  v32 = *(v7 - 8);
  v8 = v32;
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v38 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v31 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v39 = &v31 - v15;
  MEMORY[0x28223BE20](v14);
  v31 = &v31 - v16;
  v41 = v7;
  v42 = v7;
  v43 = v7;
  v44 = v7;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v33 = *(TupleTypeMetadata - 1);
  v18 = *(v33 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v20 = &v31 - v19;
  v21 = *(v8 + 16);
  v21(&v31 - v19, a1, v7);
  v22 = TupleTypeMetadata[12];
  v21(&v20[v22], v34, v7);
  v23 = TupleTypeMetadata[16];
  v21(&v20[v23], v35, v7);
  v35 = TupleTypeMetadata[20];
  v21(&v20[v35], v36, v7);
  v24 = v37 + *(a5 + 36);
  v25 = *(a5 + 24);
  v26 = *(v25 + 48);
  v26(v20, v7, v25);
  v37 = TupleTypeMetadata[12];
  v26(&v20[v22], v7, v25);
  v36 = TupleTypeMetadata[16];
  v26(&v20[v23], v7, v25);
  v27 = TupleTypeMetadata[20];
  v28 = v38;
  v26(&v20[v35], v7, v25);
  (*(v33 + 8))(v20, TupleTypeMetadata);
  v29 = *(v32 + 40);
  v29(v24, v31, v7);
  v29(v24 + v37, v39, v7);
  v29(v24 + v36, v40, v7);
  return (v29)(v24 + v27, v28, v7);
}

void XXHash.update(bufferPointer:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v97 = *(v2 + 16);
  v98 = v97;
  v99 = v97;
  v100 = v97;
  v87 = v97;
  v86 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_0();
  v82 = v13 - v14;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_7();
  v84 = v16;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_33_2();
  v83 = v18;
  v19 = v5 - v7;
  if (!v7)
  {
    v19 = 0;
  }

  v20 = __OFADD__(*v0, v19);
  v21 = *v0 + v19;
  if (v20)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *v0 = v21;
  v22 = *(v3 + 40);
  v23 = *(*(v0 + v22) + 16);
  if (v23)
  {
    v85 = *(v3 + 24);
    v24 = sub_26B190968(v87);
    v25 = v24 - v23;
    if (__OFSUB__(v24, v23))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v26 = v24;
    sub_26B1824FC(v24 - v23, v7, v5);
    sub_26B14DE28(v27, v28, v29, v30);
    sub_26B16CE68(v25, v7, v5);
    if (v33)
    {
      v5 = v33 + v32;
    }

    else
    {
      v5 = 0;
    }

    if (v33)
    {
      v7 = v33 + v31;
    }

    else
    {
      v7 = 0;
    }

    if (*(*(v0 + v22) + 16) != v26)
    {
      goto LABEL_38;
    }

    MEMORY[0x28223BE20](v31);
    v34 = v85;
    v71[-4] = v87;
    v71[-3] = v34;
    v71[-2] = v0;
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_4();
    sub_26B18E8C8(v35, v36, v37);

    v38 = *(v0 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v0 + v22);
    v76 = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_26B18E01C(0, *(v40 + 16));
    }

    else
    {
      v41 = *(v40 + 24);
      v42 = sub_26B18DD0C();

      *(v1 + v22) = v42;
    }
  }

  else
  {
    v76 = *(v3 + 40);
  }

  v43 = v5 - v7;
  if (v7)
  {
    v44 = v5 - v7;
  }

  else
  {
    v44 = 0;
  }

  v45 = sub_26B190968(v87);
  if (!v45)
  {
    goto LABEL_40;
  }

  if (v44 == 0x8000000000000000 && v45 == -1)
  {
    goto LABEL_44;
  }

  v73 = v5;
  v71[1] = 0;
  if (!v7)
  {
    v49 = 0;
LABEL_33:
    v81 = v3;
    v85 = v1;
    v72 = v7;
    v97 = v7;
    v98 = v49;
    v75 = v45;
    v50 = v44 / v45;
    sub_26B212A30();
    swift_getWitnessTable();
    v74 = v50;
    sub_26B2132B0();
    v88 = v92;
    v89 = v93;
    v90 = v94;
    v91 = v95;
    v97 = v92;
    v98 = v93;
    v99 = v94;
    v100 = v95;
    v51 = sub_26B214000();
    sub_26B213FD0();
    v79 = v87 - 8;
    v78 = (v9 + 16);
    v77 = (v9 + 8);
    v80 = v51;
    v52 = v87;
    v53 = v84;
    while (1)
    {
      sub_26B213FE0();
      if (v96 == v92)
      {
        break;
      }

      v54 = v83;
      sub_26B214010();
      sub_26B213FF0();
      v55 = v86;
      v56 = v86[12];
      v57 = v86[16];
      v58 = v86[20];
      v59 = *(v52 - 8);
      v60 = *(v59 + 32);
      v61 = OUTLINED_FUNCTION_31_3();
      v60(v61);
      (v60)(v53 + v56, v54 + v56, v52);
      (v60)(v53 + v57, v54 + v57, v52);
      (v60)(v53 + v58, v54 + v58, v52);
      v62 = v82;
      (*v78)(v82, v53, v55);
      v63 = v55[12];
      v64 = v55[16];
      v65 = v55[20];
      sub_26B19217C(v62, v62 + v63, v62 + v64, v62 + v65, v81);
      (*v77)(v53, v55);
      v66 = *(v59 + 8);
      v66(v62 + v65, v52);
      v66(v62 + v64, v52);
      v66(v62 + v63, v52);
      v66(v62, v52);
    }

    if ((v74 * v75) >> 64 == (v74 * v75) >> 63)
    {
      v67 = sub_26B18E738(v74 * v75, v72, v73);
      sub_26B14DE28(v67, v68, v69, v70);
LABEL_38:
      OUTLINED_FUNCTION_28();
      return;
    }

    goto LABEL_41;
  }

  v47 = *(v9 + 72);
  if (v47)
  {
    if (v43 == 0x8000000000000000 && v47 == -1)
    {
      goto LABEL_45;
    }

    v49 = v43 / v47;
    goto LABEL_33;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_26B192AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v17 = a4;
  v18 = a4;
  v19 = a4;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = a4;
  v15 = a5;
  v16 = a3;
  return sub_26B18E73C(TupleTypeMetadata, sub_26B1939F4, v13, a1, a2, MEMORY[0x277D84B78], TupleTypeMetadata, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v12);
}

uint64_t sub_26B192B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v20 = a4;
  v21 = a4;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8 = sub_26B2133E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v18 = a1;
  v19 = a2;
  sub_26B212A30();
  swift_getWitnessTable();
  sub_26B2132A0();
  result = __swift_getEnumTagSinglePayload(v11, 1, TupleTypeMetadata);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = TupleTypeMetadata[12];
    v14 = TupleTypeMetadata[16];
    v15 = TupleTypeMetadata[20];
    v16 = type metadata accessor for XXHash();
    sub_26B19217C(v11, &v11[v13], &v11[v14], &v11[v15], v16);
    v17 = *(*(a4 - 8) + 8);
    v17(&v11[v15], a4);
    v17(&v11[v14], a4);
    v17(&v11[v13], a4);
    return (v17)(v11, a4);
  }

  return result;
}

uint64_t sub_26B192D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  (*(v10 + 16))(v14, v17, v18);
  if (a1)
  {
    v19 = a2 + a1;
  }

  else
  {
    v19 = 0;
  }

  (*(a5 + 64))(a1, v19, a4, a5);
  (*(v10 + 8))(v14, a4);
  return (*(v10 + 40))(a3, v16, a4);
}

void sub_26B192EF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  XXHash.init()();
}

unint64_t sub_26B192F08(uint64_t a1)
{
  result = sub_26B192F30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B192F30()
{
  result = qword_2803E7688;
  if (!qword_2803E7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7688);
  }

  return result;
}

unint64_t sub_26B192F84(uint64_t a1)
{
  result = sub_26B192FAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B192FAC()
{
  result = qword_2803E7690[0];
  if (!qword_2803E7690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7690);
  }

  return result;
}

uint64_t sub_26B193000(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

void sub_26B193164(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata();
  if (v1 <= 0x3F)
  {
    sub_26B18D1CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B193214(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = ((*(*(v4 - 8) + 64) + v7 + ((*(*(v4 - 8) + 64) + v7 + ((*(*(v4 - 8) + 64) + v7) & ~v7)) & ~v7)) & ~v7) + *(*(v4 - 8) + 64);
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 8) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
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

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B19338C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10) & ~v10)) & ~v10)) & ~v10) + *(*(v6 - 8) + 64);
  v12 = ((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_56:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = (&a1[v10 + 8] & ~v10);
          if (v8 < 0x7FFFFFFF)
          {
            v23 = (&v19[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v24 = (a2 - 1);
            }

            *v23 = v24;
          }

          else if (v8 >= a2)
          {
            v25 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v25, a2, v8, v6);
          }

          else
          {
            if (v11 <= 3)
            {
              v20 = ~(-1 << (8 * v11));
            }

            else
            {
              v20 = -1;
            }

            if (v11)
            {
              v21 = v20 & (~v8 + a2);
              if (v11 <= 3)
              {
                v22 = v11;
              }

              else
              {
                v22 = 4;
              }

              bzero(v19, v11);
              switch(v22)
              {
                case 2:
                  *v19 = v21;
                  break;
                case 3:
                  *v19 = v21;
                  v19[2] = BYTE2(v21);
                  break;
                case 4:
                  *v19 = v21;
                  break;
                default:
                  *v19 = v21;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v9 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B19362C(uint64_t a1)
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

uint64_t sub_26B19369C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26B1937D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_38_2()
{
  v2 = *(v0 - 144);

  return sub_26B213930();
}

uint64_t OSLogInterpolation.appendInterpolation(fourChar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B2125A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B212630();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v26 = sub_26B212B70();
  v25 = v13;
  v14 = sub_26B192F30();
  v31 = sub_26B193DF0();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  LOBYTE(a2) = BYTE2(v15) & 1;
  v21 = v16;
  v22 = v17;
  sub_26B193E60();
  sub_26B193E78();
  v27 = v18;
  LOBYTE(v28) = v19;
  BYTE1(v28) = v20;
  BYTE2(v28) = a2;
  v29 = v21;
  v30 = v22;
  sub_26B193E90(sub_26B193DC0, v12, v18, v28, v21, v22, v11, v7, v26, v25, MEMORY[0x277D84CC0], v14);
  sub_26B193F2C(v7, MEMORY[0x277D85AD0]);
  sub_26B193F2C(v11, MEMORY[0x277D85B10]);
  sub_26B193F8C(v21);
}

uint64_t sub_26B193DC0@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_26B193E90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LOWORD(v13) = a4 & 0x101;
  BYTE2(v13) = BYTE2(a4) & 1;
  return sub_26B194234(a1, a2, a3, v13, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_26B193F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26B193F8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(eightChar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B2125A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B212630();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v26 = sub_26B212B70();
  v25 = v13;
  v14 = sub_26B192FAC();
  v31 = sub_26B193DF0();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  LOBYTE(a2) = BYTE2(v15) & 1;
  v21 = v16;
  v22 = v17;
  sub_26B193E60();
  sub_26B193E78();
  v27 = v18;
  LOBYTE(v28) = v19;
  BYTE1(v28) = v20;
  BYTE2(v28) = a2;
  v29 = v21;
  v30 = v22;
  sub_26B193E90(sub_26B194204, v12, v18, v28, v21, v22, v11, v7, v26, v25, MEMORY[0x277D84D38], v14);
  sub_26B193F2C(v7, MEMORY[0x277D85AD0]);
  sub_26B193F2C(v11, MEMORY[0x277D85B10]);
  sub_26B193F8C(v21);
}

uint64_t sub_26B194204@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_26B194234(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a8;
  v42 = a7;
  v48 = a2;
  v47 = a1;
  v41 = a12;
  v40 = a11;
  v39 = a10;
  v38 = a9;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v14 = a4;
  v15 = BYTE1(a4);
  v16 = BYTE2(a4);
  v44 = sub_26B212580();
  v19 = *(v44 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v44);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v12 + 25);
  result = sub_26B212640();
  if (v23 < result)
  {
    v49 = a3;
    LOBYTE(v50) = v14 & 1;
    BYTE1(v50) = v15 & 1;
    BYTE2(v50) = v16 & 1;
    v45 = a5;
    v51 = a5;
    v46 = a6;
    v52 = a6;
    v25 = a3;
    v26 = v42;
    v27 = v43;
    sub_26B194570(v40, v42, v43, v38, v39, v25, v50, a5, a6, v40, v41);
    v28 = v12;
    sub_26B212B90();

    v29 = *v26;
    v30 = v26[1];
    sub_26B194D18(*v26);
    if (v29)
    {
      sub_26B2125F0();
    }

    v31 = sub_26B2125A0();
    v32 = v44;
    (*(v19 + 16))(v22, v27 + *(v31 + 20), v44);
    if ((*(v19 + 88))(v22, v32) == *MEMORY[0x277D85AC8])
    {
      (*(v19 + 8))(v22, v32);
      v33 = 0;
    }

    else
    {
      (*(v19 + 8))(v22, v32);
      v33 = 1;
    }

    if (v33)
    {
      sub_26B2125E0();
    }

    v34 = v45;
    sub_26B194D18(v45);
    if (v34)
    {
      sub_26B212600();
    }

    sub_26B213930();
    sub_26B2125D0();
    result = sub_26B2125B0();
    v36 = *(v28 + 25);
    v35 = (v28 + 25);
    v37 = v36 + 1;
    if (((v36 + 1) >> 8))
    {
      __break(1u);
    }

    else
    {
      *v35 = v37;
    }
  }

  return result;
}

uint64_t sub_26B194570(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v40 = a2;
  v55 = a6;
  v56 = a7;
  v57 = a8;
  v58 = a9;
  v38 = a7;
  v12 = BYTE1(a7);
  v43 = BYTE2(a7);
  v39 = sub_26B212610();
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v39);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a11;
  v41 = *(a11 + 8);
  v18 = sub_26B213570();
  sub_26B194D18(a8);
  v44 = a6;
  v19 = (v18 & 1) != 0 && a6 != 10;
  sub_26B193F8C(a8);
  if (v19)
  {
    sub_26B212B70();
    result = sub_26B2139E0();
    __break(1u);
  }

  else
  {
    v47 = v44;
    v48 = v38 & 1;
    v49 = v12 & 1;
    v50 = v43 & 1;
    v51 = a8;
    v52 = a9;
    v53 = sub_26B212660();
    v54 = v20;
    sub_26B212B70();
    sub_26B212B90();

    sub_26B194D28(v35, v36, v37);
    if (v21)
    {
      sub_26B212B70();
      sub_26B212B90();

      sub_26B212B90();
      sub_26B212B70();
      sub_26B212B90();
    }

    if (v38)
    {
      v24 = sub_26B213570();
      v22 = v40;
      if (v24)
      {
        sub_26B212B70();
        sub_26B212B90();
      }

      else
      {
        v45 = sub_26B212B70();
        v46 = v25;
        sub_26B2128F0();
        sub_26B194ECC(&v53);
        sub_26B212B90();

        v26 = v45;
        v27 = v46;
        sub_26B2128F0();
        sub_26B194ECC(&v45);
        v53 = v26;
        v54 = v27;
      }

      v23 = v39;
    }

    else
    {
      v22 = v40;
      v23 = v39;
    }

    v28 = sub_26B212630();
    (*(v14 + 16))(v17, v22 + *(v28 + 20), v23);
    if ((*(v14 + 88))(v17, v23) == *MEMORY[0x277D85B08])
    {
      (*(v14 + 8))(v17, v23);
      sub_26B212B70();
      sub_26B212B90();
    }

    else
    {
      (*(v14 + 8))(v17, v23);
    }

    v29 = *v22;
    v30 = v22[1];
    sub_26B194D18(*v22);
    if (v29)
    {

      sub_26B212B70();
      sub_26B212B90();
    }

    sub_26B194D18(a8);
    if (a8)
    {

      sub_26B212B70();
      sub_26B212B90();
    }

    sub_26B212650();
    if (!v31)
    {
      sub_26B212B70();
      sub_26B2139E0();
      __break(1u);
    }

    sub_26B212B90();
    if (v44 == 10)
    {
      sub_26B213570();
    }

    else if (v44 != 8 && v44 != 16)
    {
      sub_26B212B70();
      sub_26B2139E0();
      __break(1u);
    }

    sub_26B212B70();
    sub_26B212B90();

    v32 = v53;
    sub_26B2128F0();
    sub_26B194ECC(&v53);

    return v32;
  }

  return result;
}

uint64_t sub_26B194D18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B194D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26B212560();
  v6 = sub_26B212B70();
  v8 = MEMORY[0x26D66FFB0](a2, a3, v6, v7);

  v9 = v8 ^ 1;
  if ((v5 & 1) == 0)
  {
    v9 = 0;
  }

  sub_26B2128F0();
  v16 = a2;
  v17 = a3;
  if (v9)
  {
    sub_26B212B70();
    sub_26B212B90();
  }

  sub_26B212570();
  if (v10)
  {
    sub_26B212B90();
  }

  sub_26B2128F0();
  v11 = sub_26B212B70();
  v13 = MEMORY[0x26D66FFB0](v16, v17, v11, v12);

  if (v13)
  {
    sub_26B194ECC(&v16);
    return 0;
  }

  else
  {
    v14 = v16;
    sub_26B2128F0();
    sub_26B194ECC(&v16);
  }

  return v14;
}

id sub_26B194F54(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t sub_26B195068(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, &v1[*((v3 & v2) + 0x60)], v4);
  v9 = *(*((v3 & v2) + 0x58) + 8);
  v10 = sub_26B213B90();
  (*(v5 + 8))(v8, v4);
  return v10;
}

id sub_26B1951BC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B212A50();

  return v5;
}

uint64_t sub_26B19522C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, &v1[*((v3 & v2) + 0x60)], v4);
  v9 = (*(*((v3 & v2) + 0x58) + 16))(v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

id sub_26B1953C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OSLogInterpolation.appendInterpolation<A>(redacting:align:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B2125A0();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v12 + 32))(v15 + v14, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_26B212590();

  v16 = swift_allocObject();
  v16[2] = _s25_RedactedDescriptionThunkCMa();
  v16[3] = swift_getWitnessTable();
  v16[4] = sub_26B195760;
  v16[5] = v15;
  sub_26B2125C0();

  sub_26B1958AC(v11);
}

id sub_26B195680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s25_RedactedDescriptionThunkCMa();
  (*(v6 + 16))(v9, a1, a2);
  result = sub_26B194F20(v9);
  *a3 = result;
  return result;
}

uint64_t sub_26B19579C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  v9 = sub_26B213B90();
  (*(v4 + 8))(v8, a3);
  return v9;
}

uint64_t sub_26B1958AC(uint64_t a1)
{
  v2 = sub_26B2125A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B19591C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Logger.Subsystem.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  sub_26B14FCC8();
  v7 = sub_26B213480();
  Logger.Subsystem.subscript.getter(v7, v8, a3);
}

{
  v4 = *(a3 + 16);
  return (*(*(a3 + 24) + 16))(*v3, v3[1], a1, a2);
}

uint64_t static OS_os_log.create(subsystem:category:)()
{
  OUTLINED_FUNCTION_3_15();
  sub_26B195CA0();
  sub_26B2128F0();
  sub_26B2128F0();
  OUTLINED_FUNCTION_4_16();
  return sub_26B2133B0();
}

unint64_t sub_26B195CA0()
{
  result = qword_2803E7818;
  if (!qword_2803E7818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E7818);
  }

  return result;
}

uint64_t sub_26B195CE4@<X0>(uint64_t *a1@<X8>)
{
  result = static OS_os_log.create(subsystem:category:)();
  *a1 = result;
  return result;
}

uint64_t static Logger.create(subsystem:category:)()
{
  OUTLINED_FUNCTION_3_15();
  sub_26B2128F0();
  sub_26B2128F0();
  v0 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x282200DE8](v0, v1, v2, v3);
}

uint64_t sub_26B195D90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B195DE4()
{
  v0 = sub_26B212A80();
  v2 = v1;
  if (v0 == sub_26B212A80() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_11();
  }

  return v5 & 1;
}

uint64_t sub_26B195EB4(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 117;
    }

    else
    {
      v3 = 27504;
    }

    if (v2 == 1)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else
  {
    v4 = 0xE100000000000000;
    v3 = 99;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 117;
    }

    else
    {
      v5 = 27504;
    }

    if (a2 == 1)
    {
      v6 = 0xE100000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE100000000000000;
    v5 = 99;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_11();
  }

  return v8 & 1;
}

uint64_t sub_26B195F68(unsigned __int8 a1, char a2)
{
  v2 = 0x4554454C4544;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x4554454C4544;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x455441434E555254;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x54534953524550;
      break;
    case 3:
      v5 = 0x59524F4D454DLL;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 4997463;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 4605519;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x455441434E555254;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x54534953524550;
      break;
    case 3:
      v2 = 0x59524F4D454DLL;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 4997463;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v2 = 4605519;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_11();
  }

  return v8 & 1;
}

uint64_t sub_26B1960D4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x564953554C435845;
  }

  else
  {
    v3 = 0x4C414D524F4ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000045;
  }

  if (a2)
  {
    v5 = 0x564953554C435845;
  }

  else
  {
    v5 = 0x4C414D524F4ELL;
  }

  if (a2)
  {
    v6 = 0xE900000000000045;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_11();
  }

  return v8 & 1;
}

char *sub_26B196168(uint64_t a1, uint64_t a2, char *__dst, size_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_26B2136B0();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_26B182818(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_26B2136B0();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_26B182818(v4, __dst, a4);
}

uint64_t OSState.Snapshot.Decoder.library.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t OSState.Snapshot.Decoder.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26B2128F0();
  return v1;
}

void *sub_26B196254(_DWORD *a1)
{
  __dst[16] = *MEMORY[0x277D85DE8];
  result = *v1;
  if (*(v1 + 32))
  {
    if (*(v1 + 32) != 1)
    {
      *a1 = 1;
      goto LABEL_7;
    }

    *a1 = 3;
    v4 = a1 + 2;
    __dst[0] = result;
    v5 = sub_26B19AD58();
    v7 = v6;
    *&v8 = OUTLINED_FUNCTION_13_10();
    __src[0] = v8;
    __src[1] = v8;
    sub_26B196168(0x63696E6F73, 0xE500000000000000, __src, 0x40uLL);
    sub_26B196168(v5, v7, &__src[4], 0x40uLL);
    memcpy(__dst, __src, 0x80uLL);
  }

  else
  {
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);
    v11 = *(v1 + 8);
    *a1 = 3;
    v4 = a1 + 2;
    *&v12 = OUTLINED_FUNCTION_13_10();
    __src[0] = v12;
    __src[1] = v12;
    sub_26B196168(v13, v14, __src, 0x40uLL);
    sub_26B196168(v10, v9, &__src[4], 0x40uLL);
    memcpy(__dst, __src, 0x80uLL);
  }

  result = memcpy(v4, __dst, 0x80uLL);
LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

double OSState.Snapshot.init<A>(title:propertyList:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = sub_26B211DE0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_26B211DD0();
  sub_26B211DB0();
  OUTLINED_FUNCTION_12_1();
  v12 = sub_26B211DC0();
  if (v4)
  {
    OUTLINED_FUNCTION_16(a3);
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_12_1();
    v17(v16);
  }

  else
  {
    v19 = v12;
    v20 = v13;
    OUTLINED_FUNCTION_16(a3);
    v22 = *(v21 + 8);
    v23 = OUTLINED_FUNCTION_12_1();
    v24(v23);

    *a4 = a1;
    a4[1] = a2;
    a4[2] = v19;
    a4[3] = v20;
    return OUTLINED_FUNCTION_14_8();
  }

  return result;
}

double OSState.Snapshot.init(title:message:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_26B211DE0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_26B211DD0();
  sub_26B211DB0();
  v9 = sub_26B211DC0();
  v11 = v10;

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v9;
  a3[3] = v11;
  return OUTLINED_FUNCTION_14_8();
}

__n128 OSState.Snapshot.init(title:data:as:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  result = *a5;
  v7 = a5[1].n128_u64[0];
  v8 = a5[1].n128_u64[1];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  a6[2] = result;
  a6[3].n128_u64[0] = v7;
  a6[3].n128_u64[1] = v8;
  a6[4].n128_u8[0] = 0;
  return result;
}

uint64_t sub_26B1965D8()
{
  v1 = *(v0 + 8);
  v22 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = OUTLINED_FUNCTION_10_9();
  sub_26B19931C(v9, v10, v11, v12, v13);
  v14 = MEMORY[0x26D66F450](v2, v3);
  result = v14 + 200;
  if (__OFADD__(v14, 200))
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = swift_slowAlloc();
  sub_26B196168(v22, v1, (v16 + 136), 0x40uLL);
  sub_26B196254(v16);
  v17 = OUTLINED_FUNCTION_10_9();
  sub_26B19937C(v17, v18, v19, v20, v21);
  result = sub_26B212040();
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v14))
  {
    *(v16 + 4) = v14;
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_26B1966D4()
{
  qword_2803E7820 = 0x3E656E6F6E3CLL;
  *algn_2803E7828 = 0xE600000000000000;
  byte_2803E7830 = 0;
  dword_2803E7834 = 1;
}

uint64_t OSState.Hint.API.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t OSState.Hint.Reason.description.getter()
{
  v2 = *v0;
  result = 0x6C6172656E6567;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      return 0x696B726F7774656ELL;
    case 4:
      return 0x72616C756C6C6563;
    case 8:
      return 0x69746E6568747561;
    default:
      v4 = MEMORY[0x277D84F90];
      if (v2)
      {
        v15 = MEMORY[0x277D84F90];
        v1 = 1;
        sub_26B15B0A0(0, 1, 1);
        v4 = v15;
        v5 = *(v15 + 16);
        v6 = v5 + 1;
        if (v5 >= *(v15 + 24) >> 1)
        {
          OUTLINED_FUNCTION_1_20(v6);
          OUTLINED_FUNCTION_11_9();
        }

        *(v15 + 16) = v6;
        *(v15 + 4 * v5 + 32) = 1;
        if ((v2 & 2) == 0)
        {
LABEL_7:
          if ((v2 & 4) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      else if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_16();
      }

      OUTLINED_FUNCTION_8_14();
      if (v8)
      {
        OUTLINED_FUNCTION_1_20(v7);
        OUTLINED_FUNCTION_11_9();
      }

      *(v4 + 16) = v7;
      *(v4 + 4 * v1 + 32) = 2;
      if ((v2 & 4) == 0)
      {
LABEL_8:
        if ((v2 & 8) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_16();
      }

      OUTLINED_FUNCTION_8_14();
      if (v8)
      {
        OUTLINED_FUNCTION_1_20(v9);
        OUTLINED_FUNCTION_11_9();
      }

      *(v4 + 16) = v9;
      *(v4 + 4 * v1 + 32) = 4;
      if ((v2 & 8) != 0)
      {
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_16();
        }

        OUTLINED_FUNCTION_8_14();
        if (v8)
        {
          OUTLINED_FUNCTION_1_20(v10);
          OUTLINED_FUNCTION_11_9();
        }

        *(v4 + 16) = v10;
        *(v4 + 4 * v1 + 32) = 8;
      }

LABEL_28:
      v11 = MEMORY[0x26D670290](v4, &type metadata for OSState.Hint.Reason);

      v12 = sub_26B213B90();
      v14 = v13;
      sub_26B2128F0();
      MEMORY[0x26D670040](v12, v14);

      return v11;
  }
}

void sub_26B196A2C(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_26B1CD03C(a1);
}

void sub_26B196A5C(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_26B1CD050(a1);
}

void sub_26B196AA8(_DWORD *a1@<X8>, unsigned int *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_26B1CD104(a1);
}

uint64_t sub_26B196B00@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = OSState.Hint.Reason.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_26B196B40@<X0>(_DWORD *a1@<X8>)
{
  result = OSState.Hint.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t OSState.Hint.requestor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t OSState.Hint.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 5);
  v6 = *(v0 + 16);
  sub_26B2138F0();
  MEMORY[0x26D670040](32, 0xE100000000000000);
  v4 = OSState.Hint.Reason.description.getter();
  MEMORY[0x26D670040](v4);

  MEMORY[0x26D670040](0x209480E220, 0xA500000000000000);
  MEMORY[0x26D670040](v1, v2);
  return 0;
}

void OSState.Registration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void OSState.Registration.Handler.init(capture:options:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = sub_26B212700();
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  swift_unknownObjectWeakInit();
  v46 = MEMORY[0x277D84F90];
  sub_26B198724();
  (*(v9 + 104))(v15, *MEMORY[0x277D851C8], v7);
  v16 = sub_26B213340();
  (*(v9 + 8))(v15, v7);
  v36 = v16;
  v47 = v16;
  swift_unknownObjectWeakAssign();
  v17 = *(a1 + 16);
  if (!v17)
  {

    v19 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v18 = a1 + 32;
  v19 = MEMORY[0x277D84F90];
  do
  {
    sub_26B1987D0(v18, &v42);
    sub_26B150514(&v42, v41);
    sub_26B16C9BC(0, &qword_2803E7848);
    sub_26B16C9BC(0, &qword_2803E7030);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
LABEL_11:
      sub_26B198938(&v38, sub_26B198768);
      goto LABEL_12;
    }

    if (!*(&v39 + 1))
    {
      goto LABEL_11;
    }

    sub_26B150514(&v38, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(v19 + 16);
      sub_26B16AEE4();
      v19 = v22;
    }

    v20 = *(v19 + 16);
    if (v20 >= *(v19 + 24) >> 1)
    {
      sub_26B16AEE4();
      v19 = v23;
    }

    *(v19 + 16) = v20 + 1;
    sub_26B150514(v41, v19 + 40 * v20 + 32);
LABEL_12:
    v18 += 40;
    --v17;
  }

  while (v17);

LABEL_15:
  v24 = 0;
  v25 = *(v19 + 16);
  v26 = v19 + 32;
  v27 = v19 + 32;
  while (v25 != v24)
  {
    if (v24 >= *(v19 + 16))
    {
      __break(1u);
      return;
    }

    ++v24;
    v28 = v27 + 40;
    sub_26B1987D0(v27, &v42);
    v29 = v43;
    v30 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v31 = (*(v30 + 8))(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v27 = v28;
    if ((v31 & 1) == 0)
    {
      swift_unknownObjectRelease();

      MEMORY[0x26D6724E0](v45);

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }
  }

  for (; v25; --v25)
  {
    sub_26B1987D0(v26, &v42);
    v32 = v43;
    v33 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    (*(v33 + 16))(v45, a2, a3, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v26 += 40;
  }

  swift_unknownObjectRelease();

  v34 = type metadata accessor for OSState.Registration.Handler();
  OUTLINED_FUNCTION_16(v34);
  (*(v35 + 32))(a4, v45);
}

uint64_t OSState.Registration.Handler.callAsFunction(os_hint:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B212740();
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  sub_26B185E18();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = v12;
    v39 = v4;
    v19 = *(a1 + 16);
    v42 = *(a1 + 20);
    v41 = Strong;
    v36 = v17;
    v37 = v6;
    if (*(a1 + 8))
    {
      v20 = sub_26B212C20();
      v22 = v21;
    }

    else
    {
      v22 = 0xE90000000000003ELL;
      v20 = 0x6E776F6E6B6E553CLL;
    }

    if (v19 == 3)
    {
      v23 = 2;
    }

    else
    {
      v23 = v19 == 2;
    }

    v24 = *(v2 + 8);
    v25 = (v24 + 40);
    v26 = -*(v24 + 16);
    v27 = -1;
    while (1)
    {
      if (v26 + v27 == -1)
      {
        v32 = sub_26B213020();
        __swift_storeEnumTagSinglePayload(v36, 1, 1, v32);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        *(v33 + 32) = *(a2 + 16);
        *(v33 + 48) = v20;
        *(v33 + 56) = v22;
        *(v33 + 64) = v23;
        *(v33 + 68) = v42;
        *(v33 + 72) = v41;
        swift_unknownObjectRetain();
        v34 = sub_26B197E24(0, 0, v36, 0, 0, &unk_26B218268, v33);
        sub_26B198938(v36, sub_26B185E18);
        sub_26B212730();
        sub_26B184660(v34, __src);
        (*(v37 + 8))(v38, v39);

        v31 = sub_26B1965D8();
        swift_unknownObjectRelease();
        memcpy(v44, __src, 0x41uLL);
        sub_26B198994(v44);
        return v31;
      }

      if (++v27 >= *(v24 + 16))
      {
        break;
      }

      v28 = v25 + 2;
      v30 = *(v25 - 1);
      v29 = *v25;
      v44[0] = v20;
      v44[1] = v22;
      LOBYTE(v44[2]) = v23;
      HIDWORD(v44[2]) = v42;

      v30(v43, v44);

      v25 = v28;
      if ((v43[0] & 1) == 0)
      {
        swift_unknownObjectRelease();

        return 0;
      }
    }

    __break(1u);

    result = OUTLINED_FUNCTION_15_5();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_26B19765C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  return MEMORY[0x2822009F8](sub_26B197690, 0, 0);
}

uint64_t sub_26B197690()
{
  if (qword_2803E6AA0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = v3;
  *(v0 + 32) = v1;
  *(v0 + 36) = HIDWORD(v1);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = *(v0 + 80);
  *(v4 + 32) = v2;
  v5 = *(MEMORY[0x277D85A70] + 4);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_26B1977E4;
  v7 = *(v0 + 40);

  return MEMORY[0x282200908](v7, v0 + 16, &unk_26B218730, v4, 0, 0, 0xD000000000000023, 0x800000026B21FB00);
}

uint64_t sub_26B1977E4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B19792C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_26B197944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B197A74;

  return v12(a1, a3, a4);
}

uint64_t sub_26B197A74()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_26B197B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_26B185E18();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  if (*(a7 + 16))
  {
    v15 = *(a7 + 24);
    v16 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_12_1();
    sub_26B212F70();
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v14);
  v18 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    sub_26B198938(v14, sub_26B185E18);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_16(v18);
    (*(v19 + 8))(v14, v18);
  }

  if (a2)
  {
    sub_26B212B10();
    swift_unknownObjectRetain();

    v20 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_11:
      swift_task_immediate();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    v20 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_11;
    }
  }

  swift_unknownObjectRelease();

  return v20;
}

uint64_t sub_26B197E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[0] = a5;
  v27[1] = a6;
  sub_26B185E18();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a7 + 16))
  {
    v15 = *(a7 + 24);
    v16 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_26B212F70();
    v19 = v18;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v17 = 0;
    v19 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v14);
  v21 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_26B198938(v14, sub_26B185E18);
  }

  else
  {
    sub_26B213010();
    (*(*(v21 - 8) + 8))(v14, v21);
  }

  if (a2)
  {
    v22 = sub_26B212B10() + 32;
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v29[0] = 0;
      v29[1] = 0;
      v23 = v29;
      v29[2] = v17;
      v29[3] = v19;
    }

    else
    {
      v23 = 0;
    }

    if (a4 != 1)
    {
      v28[0] = 6;
      v28[1] = v23;
      v28[2] = a4;
      v28[3] = v27[0];
      v23 = v28;
    }

    v27[2] = 7;
    v27[3] = v23;
    v27[4] = v22;
    v25 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v30[0] = 0;
      v30[1] = 0;
      v24 = v30;
      v30[2] = v17;
      v30[3] = v19;
    }

    else
    {
      v24 = 0;
    }

    if (a4 != 1)
    {
      v29[4] = 6;
      v29[5] = v24;
      v29[6] = a4;
      v29[7] = v27[0];
    }

    v25 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();
  return v25;
}

uint64_t OSState.Registration.register<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  swift_unknownObjectRetain();
  sub_26B2128F0();
  OSState.Registration.Handler.init(capture:options:)(a2, a3, a4, v13);
  if (v13[1])
  {
    v9 = type metadata accessor for OSState.Registration.Handler();
    (*(*(v9 - 8) + 32))(v8 + 16, v13);

    MEMORY[0x28223BE20](v10);
    os_unfair_lock_lock(v4);
    sub_26B1989C4(&v4[2]);
    sub_26B1992A8(0, &qword_2803E7858, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    j__os_unfair_lock_unlock(v4);
  }

  else
  {
    type metadata accessor for OSState.Registration.Handler();
    v12 = sub_26B2133E0();
    (*(*(v12 - 8) + 8))(v13, v12);
    return swift_deallocUninitializedObject();
  }
}

void sub_26B198394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) == 1)
  {
    v15[14] = v4;
    v15[15] = v5;
    v10 = *(a2 + 32);
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a2;
    v12 = v10;
    v15[4] = sub_26B1992F8;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_26B19850C;
    v15[3] = &block_descriptor_0;
    v13 = _Block_copy(v15);

    v14 = os_state_add_handler();
    _Block_release(v13);

    *a1 = v14;
    *(a1 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B19850C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

void OSState.Registration.deinit()
{
  os_unfair_lock_lock(v0);
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(v0 + 8);
    os_state_remove_handler();
  }

  os_unfair_lock_unlock(v0);
}

uint64_t sub_26B1985BC()
{
  if (qword_2803E6A98 != -1)
  {
    swift_once();
  }

  sub_26B1992A8(0, qword_2803E7910, &type metadata for OSState.Hint, MEMORY[0x277D85A78]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_26B2128F0();
  result = sub_26B2141B0();
  qword_2803E7838 = result;
  return result;
}

uint64_t static OSState.$hint.getter()
{
  if (qword_2803E6AA0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }
}

uint64_t static OSState.hint.getter()
{
  if (qword_2803E6AA0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  return sub_26B2141C0();
}

unint64_t sub_26B198724()
{
  result = qword_2803E7840;
  if (!qword_2803E7840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E7840);
  }

  return result;
}

void sub_26B198768()
{
  if (!qword_2803E7850)
  {
    sub_26B16C9BC(255, &qword_2803E7030);
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7850);
    }
  }
}

uint64_t sub_26B1987D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_16(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_26B198848(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64) | (*(v1 + 68) << 32);
  v10 = *(v1 + 72);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_10(v11);
  *v12 = v13;
  v12[1] = sub_26B1994BC;

  return sub_26B19765C(a1, v5, v6, v7, v8, v9, v10, v3);
}

uint64_t sub_26B198938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_26B1989EC()
{
  result = qword_2803E7860;
  if (!qword_2803E7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7860);
  }

  return result;
}

unint64_t sub_26B198A44()
{
  result = qword_2803E7868;
  if (!qword_2803E7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7868);
  }

  return result;
}

unint64_t sub_26B198A9C()
{
  result = qword_2803E7870;
  if (!qword_2803E7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7870);
  }

  return result;
}

unint64_t sub_26B198AF4()
{
  result = qword_2803E7878;
  if (!qword_2803E7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7878);
  }

  return result;
}

unint64_t sub_26B198B4C()
{
  result = qword_2803E7880;
  if (!qword_2803E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7880);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OSState(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15SonicFoundation7OSStateO8SnapshotV8DataTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_26B198C8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_26B198CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B198D30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_26B198D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B198DD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B198E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B198E5C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OSState.Hint.API(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_26B198FBC()
{
  if (!qword_2803E7888[0])
  {
    sub_26B1992A8(255, &qword_2803E7858, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    v0 = sub_26B212130();
    if (!v1)
    {
      atomic_store(v0, qword_2803E7888);
    }
  }
}

void sub_26B199038(uint64_t a1)
{
  MEMORY[0x26D6724E0]();
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

uint64_t sub_26B199078(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  v4 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v4;
  return result;
}

uint64_t sub_26B1990A4(uint64_t a1, uint64_t a2)
{
  v4 = *(swift_unknownObjectWeakTakeAssign() + 8);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_26B1990F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_26B199130(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t dispatch thunk of OSState.Snapshotting.snapshot.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_10(v8);
  *v9 = v10;
  v9[1] = sub_26B1994BC;

  return v12(a1, a2, a3);
}

void sub_26B1992A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B1992F8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_26B1984C0(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B19931C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
    sub_26B2128F0();

    return sub_26B2128F0();
  }

  return result;
}

uint64_t sub_26B19937C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
  }

  return result;
}

uint64_t sub_26B1993F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v7[1] = sub_26B197A74;

  return sub_26B197944(a1, v5, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return sub_26B213E30();
}

double OUTLINED_FUNCTION_14_8()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return swift_unexpectedError();
}

uint64_t static OSState.Codable.stateDataType.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t OSState.Codable<>.state.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26B199600, 0, 0);
}

uint64_t sub_26B199600()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);
  swift_unknownObjectRetain();

  return v2();
}

uint64_t OSState.Snapshotting<>.snapshot.getter()
{
  OUTLINED_FUNCTION_25();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[12] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B199750, 0, 0);
}

uint64_t sub_26B199750()
{
  v1 = v0[9];
  v12 = v0[10];
  v0[16] = (*(v12 + 32))();
  v0[17] = v2;
  v3 = *(v12 + 48);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_26B199884;
  v6 = v0[15];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];

  return v11(v6, v9, v7);
}

uint64_t sub_26B199884()
{
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);

    v5 = sub_26B199CAC;
  }

  else
  {
    v5 = sub_26B19999C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B19999C()
{
  v45 = v0;
  v1 = v0[9];
  (*(v0[10] + 40))(v41);
  v3 = v41[0];
  v2 = v41[1];
  v5 = v41[2];
  v4 = v41[3];
  if (v42)
  {
    if (v42 == 1)
    {
      v6 = v0[19];
      v7 = v0[15];
      v8 = v0[12];
      v10 = v0[9];
      v9 = v0[10];
      v43 = v41[0];
      swift_getAssociatedConformanceWitness();
      v11 = sub_26B19A96C(v7, v8);
      v13 = v0[17];
      if (v6)
      {
        (*(v0[13] + 8))(v0[15], v0[12]);

        OUTLINED_FUNCTION_0_27();
      }

      else
      {
        v27 = v12;
        v40 = v0[16];
        v28 = v0[13];
        v35 = v0[12];
        v36 = v0[15];
        v29 = v0[8];
        v43 = v3;
        v37 = v11;
        v30 = sub_26B19AD58();
        v38 = v31;
        (*(v28 + 8))(v36, v35);
        OUTLINED_FUNCTION_0_27();
        *v29 = v40;
        *(v29 + 8) = v13;
        *(v29 + 16) = v37;
        *(v29 + 24) = v27;
        *(v29 + 32) = xmmword_26B218810;
        *(v29 + 48) = v30;
        *(v29 + 56) = v38;
        *(v29 + 64) = 0;
      }
    }

    else
    {
      v39 = v0[19];
      v18 = v0[16];
      v19 = v0[17];
      v20 = v0[15];
      v22 = v0[12];
      v21 = v0[13];
      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      (*(v21 + 16))(v0[14], v20, v22);
      swift_getAssociatedConformanceWitness();
      v26 = OSState.Snapshot.init<A>(title:propertyList:)(v18, v19, v22, v25);
      (*(v21 + 8))(v20, v22, v26);
    }

    v33 = v0[14];
    v32 = v0[15];

    OUTLINED_FUNCTION_10_0();

    return v34();
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_26B2136C0();
    v14 = v44;
    v0[6] = v43;
    v0[7] = v14;
    MEMORY[0x26D670040](0xD000000000000015, 0x800000026B21FBF0);
    v0[2] = v3;
    v0[3] = v2;
    v0[4] = v5;
    v0[5] = v4;
    sub_26B2138F0();
    v15 = v0[6];
    v16 = v0[7];
    return sub_26B2139E0();
  }
}

uint64_t sub_26B199CAC()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t dispatch thunk of OSState.Codable.state.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26B199E64;

  return v11(a1, a2, a3);
}

uint64_t sub_26B199E64()
{
  OUTLINED_FUNCTION_25();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_10_0();

  return v2();
}

uint64_t sub_26B199F50(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  OUTLINED_FUNCTION_40();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  sub_26B2128F0();
  sub_26B19A904(v4, v5);
  sub_26B16A500();
  v7 = *(*(a1 + 8) + 16);
  result = sub_26B16A6BC(v7);
  v9 = *(a1 + 8);
  *(v9 + 16) = v7 + 1;
  v10 = v9 + 16 * v7;
  *(v10 + 32) = sub_26B19A8F8;
  *(v10 + 40) = v6;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_26B199FFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  if (!sub_26B174EB4(*(a1 + 16), a2))
  {
    goto LABEL_4;
  }

  if (!a4)
  {
    result = v10 == 2;
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    if (v8 == a3 && v9 == a4)
    {
      result = 1;
    }

    else
    {
      result = sub_26B213E30();
    }
  }

  else
  {
LABEL_4:
    result = 0;
  }

LABEL_5:
  *a5 = result & 1;
  return result;
}

uint64_t static OSState.SnapshotOption<>.when(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = xmmword_26B218860;
  return sub_26B2128F0();
}

uint64_t static OSState.SnapshotOption<>.when(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = &unk_287BBABD8;
  a2[1] = v2;
  a2[2] = v3;
  return sub_26B2128F0();
}

uint64_t static OSState.SnapshotOption.when<A>(feature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_26B19A1BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  OUTLINED_FUNCTION_40();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v7 = v3;
  sub_26B2128F0();
  sub_26B16A500();
  v8 = *(*(a1 + 8) + 16);
  result = sub_26B16A6BC(v8);
  v10 = *(a1 + 8);
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 16 * v8;
  *(v11 + 32) = sub_26B19A8EC;
  *(v11 + 40) = v6;
  *(a1 + 8) = v10;
  return result;
}

void sub_26B19A260(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = sub_26B212A50();
  LOBYTE(a1) = [a1 BOOLForKey_];

  *a2 = a1;
}

id static OSState.SnapshotOption<>.when(defaults:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  sub_26B2128F0();

  return a1;
}

uint64_t sub_26B19A304()
{
  v1 = *v0;
  swift_getAtKeyPath();
  return v3;
}

uint64_t get_enum_tag_for_layout_string_15SonicFoundation7OSStateO28_HintConditionSnapshotOptionV7RequestOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B19A36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B19A3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B19A410(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B19A428(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26B19A454(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26B19A590(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B19A7AC(uint64_t *a1, int a2)
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

uint64_t sub_26B19A7EC(uint64_t result, int a2, int a3)
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void sub_26B19A8EC(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_26B19A260(*(v1 + 16), a1);
}

uint64_t sub_26B19A904(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_26B2128F0();
  }

  return result;
}

BOOL sub_26B19A930(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

compression_stream *sub_26B19A96C(uint64_t a1, compression_stream *a2)
{
  v5 = *v2;
  if (*v2)
  {
    v6 = *(v5 + 16);
    v16 = *(v5 + 24);
    v7 = OUTLINED_FUNCTION_12_1();
    v8 = sub_26B19A96C(v7);
    if (!v3)
    {
      v10 = v8;
      v11 = v9;
      a2 = swift_slowAlloc();
      if (compression_stream_init(a2, COMPRESSION_STREAM_ENCODE, dword_26B2162E0[v6]))
      {
        sub_26B15D564();
        swift_allocError();
        swift_willThrow();
        compression_stream_destroy(a2);
        MEMORY[0x26D6723F0](a2, -1, -1);
        sub_26B14FF4C(0, 0xC000000000000000);
      }

      else
      {
        a2 = sub_26B15D26C(v10, v11, a2);
      }

      sub_26B14FF4C(v10, v11);
    }
  }

  else
  {
    v12 = sub_26B211B90();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_26B211B80();
    OUTLINED_FUNCTION_12_1();
    a2 = sub_26B211B70();
  }

  return a2;
}

uint64_t OSState.Snapshot.Decoder.SonicDecoder.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26B1830B0(a1, a2);
  if (v7)
  {
    sub_26B19AC28(v6, v7, &v18);
    v8 = v18;
    if (v18 == 4)
    {
      if (a1 == 1852797802 && a2 == 0xE400000000000000)
      {

LABEL_13:
        result = 0;
        goto LABEL_15;
      }

      v10 = sub_26B213E30();

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = sub_26B16CD98(1uLL, a1, a2);
      v12 = MEMORY[0x26D66FF50](v11);
      v14 = v13;

      OSState.Snapshot.Decoder.SonicDecoder.init(rawValue:)(&v17, v12, v14);
      v15 = v17;
      if (v17 != 1)
      {
        result = swift_allocObject();
        *(result + 16) = v8;
        *(result + 24) = v15;
        goto LABEL_15;
      }
    }
  }

  else
  {
  }

  result = 1;
LABEL_15:
  *a3 = result;
  return result;
}

uint64_t sub_26B19AC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 64 && a2 == 0xE100000000000000;
  if (v5 || (sub_26B213E30() & 1) != 0)
  {

    v8 = 0;
  }

  else
  {
    v9 = a1 == 36 && a2 == 0xE100000000000000;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      v10 = a1 == 37 && a2 == 0xE100000000000000;
      if (v10 || (sub_26B213E30() & 1) != 0)
      {

        v8 = 2;
      }

      else if (a1 == 42 && a2 == 0xE100000000000000)
      {

        v8 = 3;
      }

      else
      {
        v12 = sub_26B213E30();

        if (v12)
        {
          v8 = 3;
        }

        else
        {
          v8 = 4;
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26B19AD58()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1852797802;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_26B19B270();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B2162F0;
  *(v4 + 32) = qword_26B218AA8[v2];
  *(v4 + 40) = 0xE100000000000000;
  sub_26B19AD58();
  v5 = sub_26B182668(v4);

  return v5;
}

char *OSState.Snapshot.Decoder.SonicDecoder.dump(jsonData:)()
{
  v22[4] = *MEMORY[0x277D85DE8];
  v0 = sub_26B212AD0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  OUTLINED_FUNCTION_12_1();
  v5 = sub_26B211FC0();
  v21 = 0;
  v6 = [v4 JSONObjectWithData:v5 options:12 error:&v21];

  v7 = v21;
  if (v6)
  {
    sub_26B213590();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v8 = sub_26B213E20();
    v21 = 0;
    v9 = [v4 dataWithJSONObject:v8 options:15 error:&v21];
    swift_unknownObjectRelease();
    v10 = v21;
    if (v9)
    {
      sub_26B211FF0();

      sub_26B212AC0();
      OUTLINED_FUNCTION_12_1();
      v11 = sub_26B212AA0();
      if (v12)
      {
        v3 = v11;
        v13 = OUTLINED_FUNCTION_12_1();
        sub_26B14FF4C(v13, v14);
      }

      else
      {
        v17 = OUTLINED_FUNCTION_12_1();
        sub_26B14FF4C(v17, v18);
        v3 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      v16 = v10;
      sub_26B211E00();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  else
  {
    v15 = v7;
    sub_26B211E00();

    swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

char *OSState.Snapshot.Decoder.SonicDecoder.dump(data:)(uint64_t a1, unint64_t a2)
{
  dst_ptr = v2->dst_ptr;
  if (v2->dst_ptr)
  {
    v7 = dst_ptr[16];
    v14 = *(dst_ptr + 3);
    v2 = swift_slowAlloc();
    if (compression_stream_init(v2, COMPRESSION_STREAM_DECODE, dword_26B2162E0[v7]))
    {
      sub_26B15D564();
      swift_allocError();
      swift_willThrow();
      compression_stream_destroy(v2);
      MEMORY[0x26D6723F0](v2, -1, -1);
      sub_26B14FF4C(0, 0xC000000000000000);
    }

    else
    {
      v9 = sub_26B15D26C(a1, a2, v2);
      if (!v3)
      {
        v11 = v9;
        v12 = v10;
        v2 = OSState.Snapshot.Decoder.SonicDecoder.dump(data:)();
        sub_26B14FF4C(v11, v12);
      }
    }
  }

  else
  {
    v8 = OSState.Snapshot.Decoder.SonicDecoder.dump(jsonData:)();
    if (!v3)
    {
      return v8;
    }
  }

  return v2;
}

uint64_t sub_26B19B184(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B19B1D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26B19B228(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B19B240(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_26B19B270()
{
  if (!qword_2803E6D50)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6D50);
    }
  }
}

uint64_t sub_26B19B2C8(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  OUTLINED_FUNCTION_19_6();
  result = sub_26B213430();
  if (__OFSUB__(result, v5))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26B213400();
  if (v6)
  {
    v7 = a3;
  }

  else
  {
    v7 = result;
  }

  if (v7 >> 14 >= a2 >> 14)
  {
    OUTLINED_FUNCTION_19_6();
    v8 = sub_26B213450();

    return v8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t static AsyncStream<A>.log(level:subsystem:category:decorated:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = MEMORY[0x277D837D0];
  v13 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v13, v14, v12, v15);
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v23[16] = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  (*(v21 + 104))(&v23[-v20], *MEMORY[0x277D85778]);
  return sub_26B2130C0();
}

uint64_t sub_26B19B4E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v32 = a7;
  v33 = a2;
  v31 = a5;
  sub_26B19E12C(0, &qword_2803E79B0, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = *(v13 + 16);
  v34 = a1;
  v18(v16, a1, v12);
  v19 = (*(v13 + 80) + 57) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = a3;
  v21 = v31;
  *(v20 + 32) = a4;
  *(v20 + 40) = v21;
  *(v20 + 48) = a6;
  *(v20 + 56) = v32;
  (*(v13 + 32))(v20 + v19, v16, v12);
  aBlock[4] = sub_26B19DFD0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B19BC18;
  aBlock[3] = &block_descriptor_1;
  v22 = _Block_copy(aBlock);
  sub_26B2128F0();

  sub_26B2128F0();
  v23 = v33;

  v24 = os_log_set_hook();
  _Block_release(v22);
  if (v24)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v24 = sub_26B19E0A0;
  }

  else
  {
    v25 = 0;
  }

  swift_beginAccess();
  v26 = *(v17 + 16);
  v27 = *(v17 + 24);
  *(v17 + 16) = v24;
  *(v17 + 24) = v25;
  sub_26B193F8C(v26);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = v17;
  return sub_26B213040();
}

uint64_t sub_26B19B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v48 = a8;
  sub_26B19E12C(0, qword_2803E79B8, MEMORY[0x277D837D0], MEMORY[0x277D85760]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v46 - v19;
  if (!a2)
  {
    result = swift_beginAccess();
    v27 = *(a3 + 16);
    if (!v27)
    {
      return result;
    }

    v28 = *(a3 + 24);

    v29 = a1;
    v30 = 0;
LABEL_25:
    v27(v29, v30);
    return sub_26B193F8C(v27);
  }

  v47 = v18;
  if (!a5)
  {
    goto LABEL_15;
  }

  if (!*(a2 + 128))
  {
    result = swift_beginAccess();
    v27 = *(a3 + 16);
    if (!v27)
    {
      return result;
    }

LABEL_24:
    v35 = *(a3 + 24);

    v29 = a1;
    v30 = a2;
    goto LABEL_25;
  }

  v46 = v16;
  if (sub_26B212C20() == a4 && v21 == a5)
  {

    v16 = v46;
    goto LABEL_15;
  }

  v23 = sub_26B213E30();

  v16 = v46;
  if (v23)
  {
LABEL_15:
    v31 = a1;
    if (!a7)
    {
      goto LABEL_27;
    }

    if (*(a2 + 136))
    {
      if (sub_26B212C20() == a6 && v32 == a7)
      {
      }

      else
      {
        v34 = sub_26B213E30();

        if ((v34 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_27:
      if (v48)
      {
        v36 = os_log_copy_decorated_message();
        if (!v36)
        {
          v24 = a3 + 16;
          v25 = v31;
          goto LABEL_36;
        }

        v37 = v36;
        v38 = MEMORY[0x26D670840]();
        v40 = sub_26B19B2C8(1, v38, v39);
        v41 = MEMORY[0x26D66FF50](v40);
        v43 = v42;

        v49 = v41;
        v50 = v43;
      }

      else
      {
        v44 = os_log_copy_message_string();
        if (!v44)
        {
LABEL_34:
          v24 = a3 + 16;
          v25 = v31;
          goto LABEL_36;
        }

        v37 = v44;
        v49 = sub_26B212C20();
        v50 = v45;
      }

      sub_26B19E12C(0, &qword_2803E79B0, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
      sub_26B213060();
      (*(v47 + 8))(v20, v16);
      free(v37);
      return sub_26B19BB9C(a3 + 16, v31, a2);
    }

    result = swift_beginAccess();
    v27 = *(a3 + 16);
    if (!v27)
    {
      return result;
    }

    goto LABEL_24;
  }

  v24 = a3 + 16;
  v25 = a1;
LABEL_36:

  return sub_26B19BB9C(v24, v25, a2);
}

uint64_t sub_26B19BB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 8);

    v7(a2, a3);
    return sub_26B193F8C(v7);
  }

  return result;
}

uint64_t sub_26B19BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_26B19BC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26B19E0FC;
  }

  else
  {
    v7 = nullsub_1;
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  aBlock[4] = sub_26B19E0BC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B19BC18;
  aBlock[3] = &block_descriptor_52;
  v9 = _Block_copy(aBlock);
  sub_26B194D18(v4);

  v10 = os_log_set_hook();
  _Block_release(v9);
  _Block_release(v10);
}

uint64_t capturingLogs<A>(stream:_:)()
{
  OUTLINED_FUNCTION_25();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  OUTLINED_FUNCTION_0_28(v3, &qword_2803E79A0, MEMORY[0x277D837D0]);
  v0[7] = v5;
  v6 = *(v5 - 8);
  v0[8] = v6;
  v0[9] = *(v6 + 64);
  v0[10] = OUTLINED_FUNCTION_31();
  sub_26B185E18();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v0[11] = OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B19BEBC()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  v7 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  v8 = OUTLINED_FUNCTION_16_6();
  v9(v8);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_13_11(v11);
  v13(v12);
  v14 = OUTLINED_FUNCTION_12_11();
  v0[12] = sub_26B19C844(v14, v15, v16, v17, v18, v19, v20);
  sub_26B16239C(v2);
  v21 = *(MEMORY[0x277D857F8] + 4);
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_26B19BFF4;

  return MEMORY[0x282200490]();
}

uint64_t sub_26B19BFF4()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  v4 = v1[13];
  v5 = v1[5];
  v6 = *v0;
  *v3 = *v0;

  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v2[14] = v8;
  *v8 = v6;
  v8[1] = sub_26B19C1B0;
  v9 = v1[6];
  v10 = v1[3];

  return v12(v10);
}

uint64_t sub_26B19C1B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = *(v2 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B19C2B0()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 96);
  v2 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v2, v3, v4, v5);
  v7 = v6;
  sub_26B2130E0();
  v8 = *(MEMORY[0x277D857E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_26B19C398;
  v10 = *(v0 + 96);

  return MEMORY[0x282200460](v0 + 16, v10, v7);
}

uint64_t sub_26B19C398()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B19C47C()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26B19C500()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  OUTLINED_FUNCTION_10_0();
  v5 = v0[15];

  return v4();
}

uint64_t sub_26B19C570(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B19C618;

  return sub_26B1B011C();
}

void sub_26B19C618()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_33();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_26B19C740()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_10_0();
  return v1();
}

uint64_t sub_26B19C76C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_28(v1, &qword_2803E79A0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_21(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_10(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_14_9(v8);

  return sub_26B19C570(v10);
}

uint64_t sub_26B19C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a5;
  v33 = a1;
  sub_26B185E18();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a7 + 16))
  {
    v16 = *(a7 + 24);
    v17 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = sub_26B212F70();
    v20 = v19;
    swift_unknownObjectRelease();
    v34 = v18;
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v34 = 0;
    v20 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v15);
  v22 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v15, 1, v22) == 1)
  {
    sub_26B16239C(v15);
  }

  else
  {
    sub_26B213010();
    (*(*(v22 - 8) + 8))(v15, v22);
  }

  if (a2)
  {
    v33 = sub_26B212B10() + 32;
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;
    sub_26B19E12C(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v24 = v34;
    swift_unknownObjectRetain();

    if (v20 | v24)
    {
      v39[0] = 0;
      v39[1] = 0;
      v25 = v39;
      v39[2] = v24;
      v39[3] = v20;
    }

    else
    {
      v25 = 0;
    }

    if (a4 != 1)
    {
      v38[0] = 6;
      v38[1] = v25;
      v38[2] = a4;
      v38[3] = v32;
      v25 = v38;
    }

    v35 = 7;
    v36 = v25;
    v37 = v33;
    v29 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = a6;
    *(v26 + 24) = a7;
    sub_26B19E12C(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v27 = v34;
    swift_unknownObjectRetain();

    if (v20 | v27)
    {
      v40[0] = 0;
      v40[1] = 0;
      v28 = v40;
      v40[2] = v27;
      v40[3] = v20;
    }

    else
    {
      v28 = 0;
    }

    if (a4 != 1)
    {
      v39[4] = 6;
      v39[5] = v28;
      v39[6] = a4;
      v39[7] = v32;
    }

    v29 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();

  return v29;
}

uint64_t sub_26B19CBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[0] = a5;
  v30[1] = a1;
  sub_26B185E18();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a7 + 16))
  {
    v16 = *(a7 + 24);
    v17 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = sub_26B212F70();
    v20 = v19;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v18 = 0;
    v20 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v15);
  v22 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v15, 1, v22) == 1)
  {
    sub_26B16239C(v15);
  }

  else
  {
    sub_26B213010();
    (*(*(v22 - 8) + 8))(v15, v22);
  }

  if (a2)
  {
    v23 = sub_26B212B10() + 32;
    v24 = swift_allocObject();
    *(v24 + 16) = a6;
    *(v24 + 24) = a7;
    swift_unknownObjectRetain();

    if (v20 | v18)
    {
      v32[0] = 0;
      v32[1] = 0;
      v25 = v32;
      v32[2] = v18;
      v32[3] = v20;
    }

    else
    {
      v25 = 0;
    }

    if (a4 != 1)
    {
      v31[0] = 6;
      v31[1] = v25;
      v31[2] = a4;
      v31[3] = v30[0];
      v25 = v31;
    }

    v30[2] = 7;
    v30[3] = v25;
    v30[4] = v23;
    v28 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = a6;
    *(v26 + 24) = a7;
    swift_unknownObjectRetain();

    if (v20 | v18)
    {
      v33[0] = 0;
      v33[1] = 0;
      v27 = v33;
      v33[2] = v18;
      v33[3] = v20;
    }

    else
    {
      v27 = 0;
    }

    if (a4 != 1)
    {
      v32[4] = 6;
      v32[5] = v27;
      v32[6] = a4;
      v32[7] = v30[0];
    }

    v28 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();

  return v28;
}

uint64_t redirectingLogs<A>(stream:_:)()
{
  OUTLINED_FUNCTION_25();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = *(v2 - 8);
  v0[7] = v6;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_31();
  v0[8] = v8;
  OUTLINED_FUNCTION_0_28(v8, &qword_2803E79A0, MEMORY[0x277D837D0]);
  v0[9] = v9;
  v10 = *(v9 - 8);
  v0[10] = v10;
  v0[11] = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_31();
  sub_26B185E18();
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  v0[13] = OUTLINED_FUNCTION_31();
  v14 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26B19D024()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[3];
  v7 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  v8 = OUTLINED_FUNCTION_16_6();
  v9(v8);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_13_11(v11);
  v13(v12);
  v14 = OUTLINED_FUNCTION_12_11();
  v0[14] = sub_26B19CBDC(v14, v15, v16, v17, v18, v19, v20);
  sub_26B16239C(v2);
  v21 = *(MEMORY[0x277D857F8] + 4);
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_26B19D15C;

  return MEMORY[0x282200490]();
}

uint64_t sub_26B19D15C()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  v4 = v1[15];
  v5 = v1[4];
  v6 = *v0;
  *v3 = *v0;

  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v2[16] = v8;
  *v8 = v6;
  v8[1] = sub_26B19D318;
  v9 = v1[8];
  v10 = v1[5];

  return v12(v9);
}

uint64_t sub_26B19D318()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B19D418()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 112);
  v2 = MEMORY[0x277D84F78];
  sub_26B2130E0();
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_26B19D4D0;
  v5 = *(v0 + 112);

  return MEMORY[0x282200460](v4, v5, v2 + 8);
}

uint64_t sub_26B19D4D0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B19D5B4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  (*(v0[7] + 32))(v0[2], v0[8], v0[6]);
  sub_26B2130E0();

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B19D67C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  sub_26B2130E0();

  OUTLINED_FUNCTION_10_0();
  v6 = v0[17];

  return v5();
}

uint64_t sub_26B19D728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_26B19E12C(0, &qword_2803E79A8, MEMORY[0x277D837D0], MEMORY[0x277D857A8]);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B19D80C, 0, 0);
}

uint64_t sub_26B19D80C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[7];
  v2 = v0[4];
  OUTLINED_FUNCTION_0_28(v3, &qword_2803E79A0, MEMORY[0x277D837D0]);
  sub_26B213090();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_5_12(v5);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_26B19D8B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B19D994()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    sub_26B19E12C(0, &qword_2803E6DE8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26B2162F0;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    sub_26B214020();

    v4 = sub_26B2126C0();
    fflush(v4);
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822003E8]();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    OUTLINED_FUNCTION_10_0();

    return v7();
  }
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_28(a1, &qword_2803E79A0, MEMORY[0x277D837D0]);
  v3 = v2;
  OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v1 + v7, v3);

  return MEMORY[0x2821FE8E8](v1, v7 + v9, v6 | 7);
}

uint64_t sub_26B19DBC0()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_28(v1, &qword_2803E79A0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_21(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_10(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_14_9(v8);

  return sub_26B19D728(v10, v11, v12, v13);
}

uint64_t sub_26B19DC98(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_26B19DD8C;

  return v6(v2 + 16);
}

uint64_t sub_26B19DD8C()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_26B19DEB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B19DF40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B19DFD0(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v5, v6, v7, v8);
  OUTLINED_FUNCTION_21(v9);
  v12 = v2 + ((*(v10 + 80) + 57) & ~*(v10 + 80));
  return sub_26B19B7D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B19E0BC(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a1;
  v6 = a2;
  return v3(&v7, &v6);
}

uint64_t sub_26B19E0FC(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

void sub_26B19E12C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_12(uint64_t result)
{
  *(result + 8) = sub_26B19D8B0;
  v2 = *(v1 + 56);
  v3 = *(v1 + 40);
  return result;
}

uint64_t sub_26B19E1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  type metadata accessor for LRUDictionary.Container();
  swift_getTupleTypeMetadata2();
  sub_26B212EC0();
  sub_26B212250();

  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5 & 1;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *a9 = a8;
  *(a9 + 8) = a10;
  v14 = type metadata accessor for LRUDictionary();
  sub_26B19E35C(v14);
}

uint64_t sub_26B19E35C(void *a1)
{
  v2 = a1;
  v4 = a1[3];
  v5 = a1[4];
  v120 = a1[2];
  v3 = v120;
  v121 = v4;
  v122 = v4;
  v123 = v5;
  v6 = type metadata accessor for LRUDictionary.Container();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v92 - v10;
  v113 = v4;
  v12 = *(v4 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v112 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v114 = *(TupleTypeMetadata2 - 8);
  v15 = *(v114 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v109 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v111 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v110 = &v92 - v20;
  result = MEMORY[0x28223BE20](v19);
  v22 = v1;
  v24 = &v92 - v23;
  if ((v1[8] & 1) == 0)
  {
    v25 = v1[7];
    v26 = v1[4];
    v27 = v22[4];
    v98 = v22;
    result = sub_26B2137F0();
    v22 = v98;
    if (v25 < result)
    {
      result = sub_26B2137F0();
      v94 = result - v25;
      if (__OFSUB__(result, v25))
      {
        goto LABEL_43;
      }

      v28 = v98;
      v29 = *v98;
      if (*v98)
      {
        v92 = v2;
        v116 = v11;
        v96 = v12;
        v95 = v7;
        v93 = v15;
        v30 = v98[1];
        v31 = v98[3];
        v120 = v98[2];
        v121 = v31;
        v122 = v26;
        v117 = v29;
        v108 = v30;
        sub_26B194D18(v29);
        v97 = v5;
        sub_26B2122C0();

        swift_getWitnessTable();
        v32 = sub_26B212DD0();
        v33 = TupleTypeMetadata2;
        v34 = sub_26B212E50();
        v120 = v34;
        if (v34 != sub_26B212EF0())
        {
          v106 = *(v33 + 48);
          v105 = (v115 - 2);
          v104 = (v95 + 32);
          v103 = (v96 + 16);
          v102 = (v95 + 8);
          v101 = (v96 + 8);
          v100 = (v114 + 8);
          v107 = (v114 + 16);
          v99 = (v114 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          do
          {
            v63 = sub_26B212EE0();
            sub_26B212E80();
            if (v63)
            {
              v64 = *(v114 + 16);
              v64(v24, v32 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v34, v33);
            }

            else
            {
              result = sub_26B213730();
              if (v93 != 8)
              {
                goto LABEL_45;
              }

              v119[0] = result;
              v64 = *v107;
              (*v107)(v24, v119, v33);
              swift_unknownObjectRelease();
            }

            sub_26B212F30();
            v65 = *(v33 + 48);
            v66 = v115;
            v67 = *(v115 - 1);
            v68 = v110;
            (*(v67 + 32))(v110, v24, v115);
            (*v104)(&v68[v65], v106 + v24, v6);
            v69 = v111;
            v64(v111, v68, TupleTypeMetadata2);
            v70 = *(TupleTypeMetadata2 + 48);
            v71 = v24;
            v73 = v112;
            v72 = v113;
            (*v103)(v112, &v69[v70], v113);
            (*v102)(&v69[v70], v6);
            (v117)(v68, v73);
            v74 = v73;
            v24 = v71;
            (*v101)(v74, v72);
            (*v100)(v68, TupleTypeMetadata2);
            v75 = v69;
            v33 = TupleTypeMetadata2;
            (*(v67 + 8))(v75, v66);
            v76 = sub_26B212EF0();
            v34 = v120;
          }

          while (v120 != v76);
        }

        sub_26B193F8C(v117);

        v5 = v97;
        v15 = v93;
        v7 = v95;
        v12 = v96;
        v11 = v116;
        v2 = v92;
        v28 = v98;
      }

      sub_26B2122C0();
      result = sub_26B212220();
      v22 = v28;
    }
  }

  v35 = v22 + 5;
  v36 = v22[5];
  if (v22[6])
  {
    return result;
  }

  v37 = v2;
  v39 = v22 + 2;
  v38 = v22[2];
  v40 = *v22;
  v41 = v22[1];
  v43 = v22[3];
  v42 = v22[4];
  *v125 = *v35;
  *&v125[9] = *(v35 + 9);
  v108 = v40;
  v120 = v40;
  v121 = v41;
  v107 = v41;
  v104 = v38;
  v122 = v38;
  v123 = v43;
  v105 = v43;
  v106 = v42;
  v124 = v42;
  result = LRUDictionary.totalCost.getter(v37);
  if (v36 >= result)
  {
    return result;
  }

  v44 = __OFSUB__(result, v36);
  v45 = result - v36;
  if (v44)
  {
    goto LABEL_44;
  }

  v98 = v39;
  v116 = v11;
  v96 = v12;
  v93 = v15;
  v119[0] = v104;
  v119[1] = v105;
  v119[2] = v106;
  v46 = sub_26B212270();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D66FDF0](&v120, v46, WitnessTable);
  v48 = v120;
  v49 = v121;

  v50 = sub_26B2137F0();

  v117 = v6;
  v97 = v5;
  if (!v50)
  {
LABEL_21:

    v58 = v96;
    v59 = v108;
    if (v108)
    {
      v120 = v104;
      v121 = v105;
      v122 = v106;

      sub_26B194D18(v59);
      sub_26B2122C0();
      swift_getWitnessTable();
      v99 = v50;
      v60 = sub_26B212DD0();
      v61 = TupleTypeMetadata2;
      v62 = sub_26B212E50();
      v120 = v62;
      if (v62 != sub_26B212EF0())
      {
        v116 = *(v61 + 48);
        v106 = v115 - 2;
        v105 = (v7 + 32);
        v104 = (v58 + 16);
        v103 = (v7 + 8);
        v102 = (v58 + 8);
        v101 = (v114 + 8);
        v100 = (v114 + 16);
        v77 = v112;
        do
        {
          v78 = sub_26B212EE0();
          sub_26B212E80();
          v79 = v109;
          if (v78)
          {
            v80 = *(v114 + 16);
            (v80)(v109, v60 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v62, v61);
          }

          else
          {
            result = sub_26B213730();
            if (v93 != 8)
            {
              goto LABEL_46;
            }

            v119[0] = result;
            v80 = *v100;
            (*v100)(v79, v119, v61);
            swift_unknownObjectRelease();
          }

          sub_26B212F30();
          v81 = *(v61 + 48);
          v82 = v115;
          v83 = *(v115 - 1);
          v84 = v110;
          (*(v83 + 32))(v110, v79, v115);
          v85 = &v116[v79];
          v86 = v117;
          (*v105)(&v84[v81], v85, v117);
          v87 = v111;
          (v80)(v111, v84, TupleTypeMetadata2);
          v88 = *(TupleTypeMetadata2 + 48);
          v89 = v113;
          (*v104)(v77, &v87[v88], v113);
          (*v103)(&v87[v88], v86);
          (v108)(v84, v77);
          (*v102)(v77, v89);
          v90 = v84;
          v61 = TupleTypeMetadata2;
          (*v101)(v90, TupleTypeMetadata2);
          (*(v83 + 8))(v87, v82);
          v91 = sub_26B212EF0();
          v62 = v120;
        }

        while (v120 != v91);
      }

      sub_26B193F8C(v108);
    }

    sub_26B2122C0();
    return sub_26B212220();
  }

  v102 = v49;
  v103 = v48;
  v51 = 0;
  v52 = &v116[v6[13]];
  v95 = v7;
  v53 = (v7 + 8);
  v99 = v50;
  v54 = v50;
  while (1)
  {
    v44 = __OFSUB__(v54--, 1);
    if (v44)
    {
      break;
    }

    v55 = v116;
    result = sub_26B213830();
    if (__OFADD__(v51, 1))
    {
      goto LABEL_41;
    }

    v56 = *v52;
    v57 = v52[8];
    result = (*v53)(v55, v6);
    if ((v57 & 1) == 0)
    {
      v44 = __OFSUB__(v45, v56);
      v45 -= v56;
      if (v44)
      {
        goto LABEL_42;
      }
    }

    if (v45 < 1)
    {
      v50 = v51 + 1;
      v7 = v95;
      goto LABEL_21;
    }

    ++v51;
    v6 = v117;
    if (!v54)
    {
      v7 = v95;
      v50 = v99;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t LRUDictionary.Container.cost.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t LRUDictionary.Container.cost.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 52);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t (*LRUDictionary.Container.cost.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_26B19F1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for LRUDictionary.Container();
  v9 = a5 + *(result + 52);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t LRUDictionary.maximumCost.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t LRUDictionary.maximumCost.setter(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2 & 1;
  return OUTLINED_FUNCTION_5_13(a1, a2, a3);
}

uint64_t (*LRUDictionary.maximumCost.modify(void *a1, uint64_t a2))(uint64_t result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_26B19F2AC;
}

uint64_t sub_26B19F2AC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 8);
    return sub_26B19E35C(*result);
  }

  return result;
}

uint64_t LRUDictionary.maximumCount.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_26B19F2E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(v6 - 8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = type metadata accessor for LRUDictionary();
  return a5(v10, v11, v12);
}

uint64_t LRUDictionary.maximumCount.setter(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a2 & 1;
  return OUTLINED_FUNCTION_5_13(a1, a2, a3);
}

uint64_t (*LRUDictionary.maximumCount.modify(void *a1, uint64_t a2))()
{
  *a1 = a2;
  a1[1] = v2;
  return sub_26B1A0E38;
}

uint64_t LRUDictionary.totalCost.getter(void *a1)
{
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];

  type metadata accessor for LRUDictionary.Container();
  sub_26B212270();
  OUTLINED_FUNCTION_1_21();
  swift_getWitnessTable();
  sub_26B212DC0();

  return v2;
}

uint64_t sub_26B19F474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for LRUDictionary.Container();
  v7 = (a2 + *(result + 52));
  if (*(v7 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  v9 = __OFADD__(v5, v8);
  v10 = v5 + v8;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_26B19F4F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  return sub_26B19F474(a1, a2, a3);
}

void LRUDictionary.cost(for:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1[3];
  v3 = v1[4];
  v26[0] = v1[2];
  v26[1] = v2;
  v26[2] = v2;
  v26[3] = v3;
  v4 = OUTLINED_FUNCTION_9_12();
  v5 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  OUTLINED_FUNCTION_9_0();
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v19 = v26 - v18;
  v20 = v0[2];
  v21 = v0[3];
  v22 = v0[4];
  sub_26B2122D0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    (*(v7 + 8))(v12, v5);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v4);
    v23 = &v19[*(v4 + 52)];
    v24 = *v23;
    v25 = v23[8];
    (*(v14 + 8))(v19, v4);
  }

  OUTLINED_FUNCTION_28();
}

uint64_t LRUDictionary.keys.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t LRUDictionary.values.getter(void *a1)
{
  v2 = *(v1 + 16);
  v9 = *(v1 + 24);
  v3 = a1[3];
  v4 = a1[4];
  v8[0] = a1[2];
  v8[1] = v3;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v2;
  type metadata accessor for LRUDictionary.Container();
  v5 = sub_26B212270();
  OUTLINED_FUNCTION_1_21();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D6701C0](v8, v5, WitnessTable);
  swift_getKeyPath();
  sub_26B2136D0();
  swift_getWitnessTable();
  sub_26B213A60();
}

void LRUDictionary.subscript.getter()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v21[0] = v3;
  v5 = v4[3];
  v6 = v4[4];
  v21[2] = v4[2];
  v21[3] = v5;
  v21[4] = v5;
  v21[5] = v6;
  v7 = OUTLINED_FUNCTION_9_12();
  v8 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  v16 = v0[2];
  v17 = v0[3];
  v18 = v0[4];
  v21[1] = v2;
  v19 = v21[0];
  sub_26B2122D0();
  v20 = 1;
  if (!__swift_getEnumTagSinglePayload(v15, 1, v7))
  {
    (*(*(v5 - 8) + 16))(v19, v15, v5);
    v20 = 0;
  }

  (*(v10 + 8))(v15, v8);
  __swift_storeEnumTagSinglePayload(v19, v20, 1, v5);
  LRUDictionary.poke(_:)();
  OUTLINED_FUNCTION_28();
}

{
  sub_26B2139E0();
  __break(1u);
}

void LRUDictionary.poke(_:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1[3];
  v3 = v1[4];
  v24 = v1[2];
  v25 = v2;
  v26 = v2;
  v27 = v3;
  v4 = OUTLINED_FUNCTION_9_12();
  v23 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  OUTLINED_FUNCTION_9_0();
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v22 - v20;
  sub_26B2122C0();
  v22 = v0;
  sub_26B212230();
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
  {
    (*(v6 + 8))(v14, v23);
  }

  else
  {
    (*(v16 + 32))(v21, v14, v4);
    sub_26B212240();
    (*(v6 + 8))(v12, v23);
    (*(v16 + 8))(v21, v4);
  }

  OUTLINED_FUNCTION_28();
}

void LRUDictionary.subscript.setter()
{
  OUTLINED_FUNCTION_27_0();
  v49 = v0;
  v50 = v1;
  v3 = v2;
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v53 = v5;
  v54 = v6;
  v55 = v6;
  v56 = v7;
  v47 = v7;
  v48 = v4;
  v44 = OUTLINED_FUNCTION_9_12();
  v8 = *(*(sub_26B2133E0() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  v45 = &v43 - v10;
  OUTLINED_FUNCTION_9_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v52 = v17 - v16;
  v18 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  OUTLINED_FUNCTION_9_0();
  v27 = v26;
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v43 - v34;
  v36 = *(v20 + 16);
  v51 = v3;
  v36(v25, v3, v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v6);
  v46 = v12;
  v38 = (v12 + 16);
  if (EnumTagSinglePayload == 1)
  {
    (*(v20 + 8))(v25, v18);
    v39 = v50;
    (*v38)(v52, v50, v5);
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v44);
    sub_26B2122C0();
    sub_26B2122E0();
    v40 = v48;
  }

  else
  {
    (*(v27 + 32))(v35, v25, v6);
    v39 = v50;
    (*v38)(v52, v50, v5);
    (*(v27 + 16))(v33, v35, v6);
    v41 = v45;
    sub_26B19F1B8(v33, 0, 1, v6, v45);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v44);
    sub_26B2122C0();
    sub_26B2122E0();
    v42 = v48;
    LRUDictionary.poke(_:)();
    (*(v27 + 8))(v35, v6);
    v40 = v42;
  }

  sub_26B19E35C(v40);
  (*(v46 + 8))(v39, v5);
  (*(v20 + 8))(v51, v18);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  v35 = v0;
  v36 = v1;
  v3 = v2;
  v5 = *(v4 + 24);
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v32 = v6;
  v33 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v34 = v15;
  v17 = v15[4];
  v37 = v15[2];
  v16 = v37;
  v38 = v5;
  v39 = v5;
  v40 = v17;
  v18 = OUTLINED_FUNCTION_9_12();
  v19 = *(*(sub_26B2133E0() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  OUTLINED_FUNCTION_9_0();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  (*(v24 + 16))(v29 - v28, v3, v16);
  (*(v7 + 16))(v14, v36, v5);
  sub_26B19F1B8(v14, v33, 0, v5, v22);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v18);
  sub_26B2122C0();
  sub_26B2122E0();
  v30 = v34;
  LRUDictionary.poke(_:)();
  sub_26B19E35C(v30);
  (*(v24 + 8))(v3, v16);
  (*(v32 + 8))(v36, v5);
  OUTLINED_FUNCTION_28();
}

void LRUDictionary.subscript.modify()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *v4 = v5;
  *v5 = v2;
  v5[1] = v0;
  v6 = *(v2 + 24);
  v7 = sub_26B2133E0();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v5[5] = __swift_coroFrameAllocStub(v9);
  v5[6] = *(v2 + 16);
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  v5[7] = v10;
  v13 = *(v12 + 64);
  v5[8] = __swift_coroFrameAllocStub(v13);
  v5[9] = __swift_coroFrameAllocStub(v13);
  (*(v11 + 16))();
  LRUDictionary.subscript.getter();
  OUTLINED_FUNCTION_28();
}

void sub_26B1A0180(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v14 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v14);
    LRUDictionary.subscript.setter();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v12 = *v2;
    v13 = v2[1];
    LRUDictionary.subscript.setter();
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

void LRUDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = *(v26 + 24);
  v28 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  LRUDictionary.subscript.getter();
  if (__swift_getEnumTagSinglePayload(v35, 1, v27) == 1)
  {
    v36 = (*(v30 + 8))(v35, v28);
    v23(v36);
  }

  else
  {
    (*(*(v27 - 8) + 32))(v25, v35, v27);
    LRUDictionary.poke(_:)();
  }

  OUTLINED_FUNCTION_28();
}

void sub_26B1A0438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - v12;
  v14 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v16 + 16))(&v19 - v15, v17, v6);
  v18 = *(a3 + *(swift_getTupleTypeMetadata2() + 48));
  (*(v9 + 16))(v13, a1, v7);
  type metadata accessor for LRUDictionary();
  LRUDictionary.subscript.setter();
}

void LRUDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  OUTLINED_FUNCTION_9_0();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  (*(v8 + 16))();
  LRUDictionary.subscript.getter();
}

uint64_t LRUDictionary.isEmpty.getter(uint64_t a1)
{
  v5 = *(v1 + 32);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for LRUDictionary.Container();
  sub_26B213820();
  swift_getWitnessTable();
  return sub_26B2132C0() & 1;
}

uint64_t LRUDictionary.count.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for LRUDictionary.Container();
  return sub_26B2137F0();
}

uint64_t sub_26B1A098C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_lyxq_Isegnn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26B1A09E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_26B1A0A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26B1A0A94(uint64_t a1)
{
  v1 = *(a1 + 32);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26B1A0DE8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int8 *sub_26B1A0B1C(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = result[v6];
        if (result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v11 = *&result[v6];
        if (*&result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v11 = *&result[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *result;
        }

        else
        {
          v12 = 0;
          v13 = *result;
        }

        return (v5 + (v13 | v12) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_26B1A0C38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
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
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_26B1A0DE8()
{
  if (!qword_2803E7AC0)
  {
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7AC0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return type metadata accessor for LRUDictionary.Container();
}

uint64_t LRUDictionary.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = LRUDictionary.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t LRUDictionary.CodingKeys.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26B213AA0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t LRUDictionary.CodingKeys.stringValue.getter()
{
  *v0;
  if (*v0)
  {
    return 0x436D756D6978616DLL;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t sub_26B1A0F6C()
{
  swift_getWitnessTable();

  return sub_26B213EB0();
}

uint64_t sub_26B1A0FE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26B1A104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A10BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A112C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return LRUDictionary.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_26B1A1138@<X0>(uint64_t *a1@<X8>)
{
  result = LRUDictionary.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1A1164@<X0>(_BYTE *a1@<X8>, void *a2@<X2>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return LRUDictionary.CodingKeys.init(stringValue:)(a1);
}

uint64_t sub_26B1A1178(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B1A11CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void LRUDictionary<>.encode(to:)()
{
  OUTLINED_FUNCTION_11_6();
  v37 = v1;
  v34 = v3;
  v35 = v2;
  v5 = v4;
  v7 = v6[2];
  v31 = v6[3];
  v32 = v7;
  v33 = v6[4];
  type metadata accessor for LRUDictionary.CodingKeys();
  OUTLINED_FUNCTION_2_22();
  WitnessTable = swift_getWitnessTable();
  v29 = sub_26B213B70();
  OUTLINED_FUNCTION_0(v29);
  v36 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v16 = *(v0 + 32);
  v27 = *(v0 + 40);
  v26 = *(v0 + 48);
  v28 = *(v0 + 56);
  v48 = *(v0 + 64);
  v17 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);

  v18 = v15;
  v19 = v29;
  sub_26B214120();
  v45 = v18;
  v46 = v14;
  v47 = v16;
  v41 = v32;
  v42 = v31;
  v43 = v31;
  v44 = v33;
  type metadata accessor for LRUDictionary.Container();
  sub_26B2122C0();
  v40 = v34;
  v20 = swift_getWitnessTable();
  v38 = v35;
  v39 = v20;
  swift_getWitnessTable();
  v21 = v37;
  sub_26B213B50();
  if (v21)
  {

    (*(v36 + 8))(v13, v19);
  }

  else
  {
    v22 = v26;
    v23 = v27;
    v24 = v36;

    v41 = v28;
    LOBYTE(v42) = v48;
    LOBYTE(v45) = 1;
    sub_26B1A0DE8();
    sub_26B1A1518();
    OUTLINED_FUNCTION_4_18();
    v41 = v23;
    LOBYTE(v42) = v22;
    LOBYTE(v45) = 2;
    OUTLINED_FUNCTION_4_18();
    (*(v24 + 8))(v13, v19);
  }

  OUTLINED_FUNCTION_10_2();
}

unint64_t sub_26B1A1518()
{
  result = qword_2803E7AC8[0];
  if (!qword_2803E7AC8[0])
  {
    sub_26B1A0DE8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7AC8);
  }

  return result;
}

void sub_26B1A1588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  LRUDictionary<>.encode(to:)();
}

void LRUDictionary<>.init(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v33 = v1;
  v3 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v32 = v11;
  type metadata accessor for LRUDictionary.CodingKeys();
  OUTLINED_FUNCTION_2_22();
  swift_getWitnessTable();
  v35 = sub_26B213B20();
  OUTLINED_FUNCTION_0(v35);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v14);
  v44 = v8;
  v45 = v6;
  v46 = v6;
  v47 = v3;
  type metadata accessor for LRUDictionary.Container();
  swift_getTupleTypeMetadata2();
  sub_26B212EC0();
  v37 = sub_26B212250();
  v36 = v15;
  v55 = v16;
  v54 = 1;
  v52 = 1;
  v17 = v10[4];
  v38 = v10;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_26B2140F0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    v44 = 0;
    v45 = 0;
    v46 = v37;
    v47 = v36;
    v48 = v55;
    v49 = 0;
    v50 = v54;
    v51 = *v53;
    OUTLINED_FUNCTION_9_13(*&v53[3]);
    v18 = OUTLINED_FUNCTION_7_11();
    (*(*(v18 - 8) + 8))(&v44, v18);
  }

  else
  {
    sub_26B2122C0();
    v39[0] = 0;
    v43 = v33;
    v41 = v34;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_26B213AF0();

    v19 = v44;
    v20 = v45;
    v21 = v46;
    LOBYTE(v44) = 1;
    v22 = sub_26B213AC0();
    v56 = v21;
    v52 = v23 & 1;
    v40 = 2;
    v24 = sub_26B213AC0();
    LOBYTE(v21) = v25;
    v26 = OUTLINED_FUNCTION_1_22();
    v27(v26);
    v54 = v21 & 1;
    *&v39[8] = 0;
    *v39 = 0;
    *&v39[16] = v19;
    *&v39[24] = v20;
    *&v39[32] = v56;
    *&v39[40] = v24;
    v39[48] = v21 & 1;
    *&v39[49] = *v53;
    *&v39[52] = *&v53[3];
    *&v39[56] = v22;
    v39[64] = v52;
    memcpy(v32, v39, 0x41uLL);
    v28 = v19;
    v29 = OUTLINED_FUNCTION_7_11();
    v30 = v20;
    v31 = *(v29 - 8);
    (*(v31 + 16))(&v44, v39, v29);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v44 = 0;
    v45 = 0;
    v46 = v28;
    v47 = v30;
    v48 = v56;
    v49 = v24;
    v50 = v54;
    v51 = *v53;
    OUTLINED_FUNCTION_9_13(*&v53[3]);
    (*(v31 + 8))(&v44, v29);
  }

  OUTLINED_FUNCTION_10_2();
}

void sub_26B1A1A78(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 16);
  v3 = *(a3 - 8);
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  LRUDictionary<>.init(from:)();
}

uint64_t LRUDictionary.Container.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = LRUDictionary.Container.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t LRUDictionary.Container.CodingKeys.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26B213AA0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t LRUDictionary.Container.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 1953722211;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_26B1A1B7C()
{
  swift_getWitnessTable();

  return sub_26B213EB0();
}

uint64_t sub_26B1A1BF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26B1A1C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A1CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A1D3C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return LRUDictionary.Container.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_26B1A1D48@<X0>(uint64_t *a1@<X8>)
{
  result = LRUDictionary.Container.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1A1D74@<X0>(_BYTE *a1@<X8>, void *a2@<X2>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return LRUDictionary.Container.CodingKeys.init(stringValue:)(a1);
}

uint64_t sub_26B1A1D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B1A1DDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void LRUDictionary.Container<>.encode(to:)()
{
  OUTLINED_FUNCTION_11_6();
  v23 = v2;
  v24 = v1;
  v22 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 16);
  v21 = *(v3 + 32);
  v25 = v7;
  v26 = v21;
  type metadata accessor for LRUDictionary.Container.CodingKeys();
  OUTLINED_FUNCTION_3_17();
  v8 = sub_26B213B70();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v17 = v22;
  sub_26B214120();
  LOBYTE(v25) = 0;
  v18 = v24;
  sub_26B213B50();
  if (!v18)
  {
    v19 = (v17 + *(v4 + 52));
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    *&v25 = v20;
    BYTE8(v25) = v19;
    sub_26B1A0DE8();
    sub_26B1A1518();
    sub_26B213B50();
  }

  (*(v10 + 8))(v15, v8);
  OUTLINED_FUNCTION_10_2();
}

void LRUDictionary.Container<>.init(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v48 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v43 = v12;
  v45 = *(v4 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v53 = v18;
  type metadata accessor for LRUDictionary.Container.CodingKeys();
  OUTLINED_FUNCTION_3_17();
  v49 = sub_26B213B20();
  OUTLINED_FUNCTION_0(v49);
  v44 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v22);
  v50 = v9;
  v51 = v7;
  v46 = v5;
  v52 = v5;
  v53 = v3;
  v23 = type metadata accessor for LRUDictionary.Container();
  OUTLINED_FUNCTION_0(v23);
  v42 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - v28;
  v30 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_26B2140F0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v31 = v29;
    v32 = v45;
    LOBYTE(v50) = 0;
    v33 = v46;
    v34 = v47;
    sub_26B213AF0();
    (*(v32 + 32))(v31, v34, v33);
    LOBYTE(v50) = 1;
    v35 = sub_26B213AC0();
    LOBYTE(v34) = v36;
    v37 = &v31[*(v23 + 52)];
    v48 = v31;
    v38 = OUTLINED_FUNCTION_5_14();
    v39(v38);
    *v37 = v35;
    v37[8] = v34 & 1;
    v40 = v42;
    v41 = v48;
    (*(v42 + 16))(v43, v48, v23);
    __swift_destroy_boxed_opaque_existential_1(v11);
    (*(v40 + 8))(v41, v23);
  }

  OUTLINED_FUNCTION_10_2();
}

void sub_26B1A2334(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  LRUDictionary.Container<>.init(from:)();
}

_BYTE *sub_26B1A241C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B1A24E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
  v2 = *(v0 - 280);

  return type metadata accessor for LRUDictionary();
}

void OUTLINED_FUNCTION_9_13(int a1@<W8>)
{
  *(v2 - 124) = a1;
  *(v2 - 120) = v1;
  *(v2 - 112) = *(v2 - 104);
}

uint64_t LRUDictionary.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v55 = v10 - v9;
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_9_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v50 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_46_0();
  v52 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = v49 - v28;
  v58 = 0;
  v59 = 0xE000000000000000;
  memcpy(__dst, v1, 0x41uLL);
  if (LRUDictionary.isEmpty.getter(a1))
  {
    v30 = 6109787;
    v31 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x26D670040](91, 0xE100000000000000);
    memcpy(__dst, v1, 0x41uLL);
    LRUDictionary.makeIterator()(a1, &v56);
    v32 = *(a1 + 32);
    v54 = v3;
    v33 = type metadata accessor for LRUDictionary.Iterator();
    v50 += 4;
    v51 = v33;
    v49[1] = v14 + 32;
    v49[0] = v5 + 32;
    v34 = (v5 + 8);
    v35 = (v14 + 8);
    for (i = 1; ; i = 0)
    {
      v37 = v52;
      LRUDictionary.Iterator.next()(v51, v52);
      (*v50)(v29, v37, v53);
      if (__swift_getEnumTagSinglePayload(v29, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v38 = TupleTypeMetadata2;
      v39 = *(TupleTypeMetadata2 + 48);
      OUTLINED_FUNCTION_9_1(&v61);
      v40(v20, v29, v12);
      OUTLINED_FUNCTION_9_1(&v60);
      v41(v55, &v29[v39], v54);
      if ((i & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
      }

      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_26B213DF0();
      MEMORY[0x26D670040](8250, 0xE200000000000000);
      v42 = v20;
      v43 = v55;
      v44 = v12;
      v45 = v54;
      sub_26B213DF0();
      MEMORY[0x26D670040](__dst[0], __dst[1]);

      v46 = v43;
      v20 = v42;
      v47 = v45;
      v12 = v44;
      (*v34)(v46, v47);
      (*v35)(v42, v44);
      TupleTypeMetadata2 = v38;
    }

    v30 = 93;
    v31 = 0xE100000000000000;
  }

  MEMORY[0x26D670040](v30, v31);
  return v58;
}

uint64_t LRUDictionary.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v74 = v10 - v9;
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_9_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v75 = v19 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  *&v73 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_46_0();
  v70 = v24;
  MEMORY[0x28223BE20](v25);
  v69 = v64 - v26;
  v27 = v1[1];
  v90 = *v1;
  v91 = v27;
  v28 = *(v1 + 5);
  v92 = *(v1 + 4);
  v89[0] = *(v1 + 48);
  v88[0] = *(v1 + 49);
  *(v88 + 3) = *(v1 + 13);
  v29 = *(v1 + 7);
  v87 = *(v1 + 64);
  *&v79[0] = 0;
  *(&v79[0] + 1) = 0xE000000000000000;
  sub_26B2136C0();

  strcpy(v79, "LRUDictionary<");
  HIBYTE(v79[0]) = -18;
  v76 = v12;
  v30 = sub_26B2141F0();
  MEMORY[0x26D670040](v30);

  OUTLINED_FUNCTION_5_15();
  v31 = sub_26B2141F0();
  MEMORY[0x26D670040](v31);

  MEMORY[0x26D670040](10302, 0xE200000000000000);
  v86 = v79[0];
  if ((v87 & 1) == 0)
  {
    *&v79[0] = 0;
    *(&v79[0] + 1) = 0xE000000000000000;
    sub_26B2136C0();

    OUTLINED_FUNCTION_3_18(0xEE00203A746E756FLL);
    *(v32 - 256) = v29;
    v33 = sub_26B213B90();
    MEMORY[0x26D670040](v33);

    OUTLINED_FUNCTION_5_15();
    MEMORY[0x26D670040](*&v79[0], *(&v79[0] + 1));
  }

  if ((v89[0] & 1) == 0)
  {
    *&v79[0] = 0;
    *(&v79[0] + 1) = 0xE000000000000000;
    sub_26B2136C0();

    OUTLINED_FUNCTION_3_18(0xED0000203A74736FLL);
    *(v34 - 256) = v28;
    v35 = sub_26B213B90();
    MEMORY[0x26D670040](v35);

    OUTLINED_FUNCTION_5_15();
    MEMORY[0x26D670040](*&v79[0], *(&v79[0] + 1));
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_4_19();
  v84 = v29;
  v36 = v87;
  v85 = v87;
  if (LRUDictionary.isEmpty.getter(a1))
  {
    v37 = 6109787;
    v38 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x26D670040](91, 0xE100000000000000);
    OUTLINED_FUNCTION_8_16();
    v66 = v28;
    OUTLINED_FUNCTION_4_19();
    v65 = v29;
    v84 = v29;
    v85 = v36;
    LRUDictionary.makeIterator()(a1, v78);
    v67 = a1;
    v39 = *(a1 + 32);
    v68 = type metadata accessor for LRUDictionary.Iterator();
    v40 = (v73 + 32);
    v64[1] = v14 + 32;
    v64[0] = v5 + 32;
    v41 = (v14 + 16);
    v42 = (v5 + 16);
    v43 = (v5 + 8);
    v73 = xmmword_26B2162F0;
    v44 = (v14 + 8);
    for (i = 1; ; i = 0)
    {
      v46 = v70;
      LRUDictionary.Iterator.next()(v68, v70);
      v47 = v69;
      (*v40)(v69, v46, v71);
      v48 = TupleTypeMetadata2;
      if (__swift_getEnumTagSinglePayload(v47, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v49 = *(v48 + 48);
      OUTLINED_FUNCTION_9_1(v89);
      v50(v75, v47, v76);
      OUTLINED_FUNCTION_9_1(v88);
      v51(v74, v47 + v49, v3);
      if ((i & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
      }

      sub_26B1A316C();
      v52 = swift_allocObject();
      OUTLINED_FUNCTION_7_12(v52);
      v53 = v76;
      *(v54 + 56) = v76;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v54 + 32));
      (*v41)(boxed_opaque_existential_0, v75, v53);
      OUTLINED_FUNCTION_2_23();
      sub_26B213630();

      MEMORY[0x26D670040](8250, 0xE200000000000000);
      v79[0] = v90;
      v79[1] = v91;
      v80 = v92;
      v81 = v66;
      v82 = v89[0];
      *v83 = v88[0];
      *&v83[3] = *(v88 + 3);
      v84 = v65;
      v85 = v87;
      LRUDictionary.cost(for:)();
      if ((v57 & 1) == 0)
      {
        *&v79[0] = 9256;
        *(&v79[0] + 1) = 0xE200000000000000;
        v77 = v56;
        v58 = sub_26B213B90();
        MEMORY[0x26D670040](v58);

        MEMORY[0x26D670040](41, 0xE100000000000000);
        MEMORY[0x26D670040](*&v79[0], *(&v79[0] + 1));
      }

      v59 = swift_allocObject();
      OUTLINED_FUNCTION_7_12(v59);
      *(v60 + 56) = v3;
      v61 = __swift_allocate_boxed_opaque_existential_0((v60 + 32));
      v62 = v74;
      (*v42)(v61, v74, v3);
      OUTLINED_FUNCTION_2_23();
      sub_26B213630();

      (*v43)(v62, v3);
      (*v44)(v75, v76);
    }

    v37 = 93;
    v38 = 0xE100000000000000;
  }

  MEMORY[0x26D670040](v37, v38);
  MEMORY[0x26D670040](41, 0xE100000000000000);
  return v86;
}

void sub_26B1A316C()
{
  if (!qword_2803E6DE8)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6DE8);
    }
  }
}

void OUTLINED_FUNCTION_5_15()
{

  JUMPOUT(0x26D670040);
}

__n128 OUTLINED_FUNCTION_7_12(__n128 *a1)
{
  result = *(v1 - 336);
  a1[1] = result;
  return result;
}

uint64_t sub_26B1A3220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 32);
  return static LRUDictionary.Container<>.== infix(_:_:)();
}

uint64_t static LRUDictionary<>.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  type metadata accessor for LRUDictionary.Container();
  swift_getWitnessTable();
  return sub_26B2122B0() & 1;
}

uint64_t sub_26B1A32F4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return static LRUDictionary<>.== infix(_:_:)(a1, a2);
}

void *LRUDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12 = a1;
  swift_getTupleTypeMetadata2();
  v9 = sub_26B212F50();
  WitnessTable = swift_getWitnessTable();
  return LRUDictionary.init<A>(uniqueKeysWithValues:)(&v12, a2, a3, v9, a4, WitnessTable, a5);
}

uint64_t LRUDictionary.Container<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  sub_26B2129A0();
  v5 = (v2 + *(a2 + 52));
  if (*(v5 + 8) == 1)
  {
    return sub_26B214060();
  }

  v7 = *v5;
  sub_26B214060();
  return MEMORY[0x26D671480](v7);
}

uint64_t LRUDictionary.Container<>.hashValue.getter()
{
  OUTLINED_FUNCTION_0_29();
  LRUDictionary.Container<>.hash(into:)(v2, v0);
  return sub_26B214070();
}

uint64_t sub_26B1A3484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26B214030();
  LRUDictionary.Container<>.hash(into:)(v6, a2);
  return sub_26B214070();
}

uint64_t LRUDictionary<>.hash(into:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (*(v2 + 48) == 1)
  {
    sub_26B214060();
    sub_26B214060();
  }

  else
  {
    v7 = *(v2 + 40);
    sub_26B214060();
    MEMORY[0x26D671480](v7);
    sub_26B214060();
    MEMORY[0x26D671480](v7);
  }

  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  type metadata accessor for LRUDictionary.Container();
  swift_getWitnessTable();
  return sub_26B2122A0();
}

uint64_t LRUDictionary<>.hashValue.getter()
{
  OUTLINED_FUNCTION_0_29();
  LRUDictionary<>.hash(into:)(v2, v0);
  return sub_26B214070();
}

uint64_t sub_26B1A3630(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26B214030();
  LRUDictionary<>.hash(into:)(v6, a2);
  return sub_26B214070();
}

void *LRUDictionary.init<A>(uniqueKeysWithValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  return sub_26B1A3FB8(a1, a2, a3, a4, a5, a6, sub_26B1A43E8, sub_26B1A38F4, a7);
}

{
  return sub_26B1A3FB8(a1, a2, a3, a4, a5, a6, sub_26B1A4348, sub_26B1A437C, a7);
}

void *LRUDictionary.init(maximumCount:maximumCost:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a6;
  __src[3] = a7;
  type metadata accessor for LRUDictionary.Container();
  swift_getTupleTypeMetadata2();
  sub_26B212EC0();
  v13 = sub_26B212250();
  sub_26B19E1F4(v13, v14, v15, a3, a4 & 1, a1, a2 & 1, 0, __src, 0);
  return memcpy(a8, __src, 0x41uLL);
}

uint64_t sub_26B1A3824@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  type metadata accessor for LRUDictionary.Container();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_26B1A3920(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v17;
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v58 = &v45 - v21;
  v22 = sub_26B2133E0();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v45 - v28;
  v30 = *(*(a4 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v59 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v56 = *(a3 - 8);
  v34 = *(v56 + 64);
  MEMORY[0x28223BE20](v33);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x28223BE20](v65);
  v38 = &v45 - v37;
  v39 = sub_26B212D20();
  v66 = sub_26B213810();
  v61 = sub_26B213820();
  sub_26B2137B0();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_26B212D10();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26B213460();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v29, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v29, AssociatedTypeWitness);
      sub_26B213800();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_26B213460();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v26, v47);
      return v66;
    }

    (*v42)(v44, v26, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_26B213800();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

void *sub_26B1A3FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(char *, char *)@<X7>, void *a9@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = &v28;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a3;
  __src[3] = a5;
  type metadata accessor for LRUDictionary.Container();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __src[0] = sub_26B1A3920(a8, v20, a4, TupleTypeMetadata2, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], v15);
  sub_26B212F50();
  swift_getWitnessTable();
  v16 = sub_26B212260();
  sub_26B19E1F4(v16, v17, v18, 0, 1, 0, 1, 0, __src, 0);
  (*(*(a4 - 8) + 8))(a1, a4);
  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_26B1A414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v14 - 8) + 16))(v11, v15, v14);
  (*(v9 + 16))(v13, a4, a6);
  return sub_26B19F1B8(v13, 0, 1, a6, a2);
}

uint64_t sub_26B1A4274@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  type metadata accessor for LRUDictionary.Container();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_26B1A434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = v4[5];
  v8 = v4[6];
  return sub_26B1A414C(a1, a2, a3, a4, v4[2], v4[3]);
}

uint64_t LRUDictionary.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, v2, 0x41uLL);
  (*(*(a1 - 8) + 16))(&v6, __dst, a1);
  return sub_26B1A4814(v2, a2);
}

uint64_t LRUDictionary.Iterator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v51 = v2;
  v52 = v3;
  v53 = v3;
  v54 = v4;
  v5 = type metadata accessor for LRUDictionary.Container();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v46 = v8;
  v47 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  OUTLINED_FUNCTION_1_23();
  v13 = swift_getTupleTypeMetadata2();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  OUTLINED_FUNCTION_9_0();
  v45 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v48 = &v43 - v21;
  OUTLINED_FUNCTION_9_0();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_23();
  sub_26B212290();
  sub_26B212280();
  if (__swift_getEnumTagSinglePayload(v12, 1, TupleTypeMetadata2) == 1)
  {
    (*(v46 + 8))(v12, v47);
    OUTLINED_FUNCTION_1_23();
    v29 = swift_getTupleTypeMetadata2();
    v30 = v49;
    v31 = 1;
  }

  else
  {
    v32 = *(TupleTypeMetadata2 + 48);
    v33 = *(v13 + 48);
    v50 = v3;
    v46 = *(v23 + 32);
    v47 = v32;
    (v46)(v16, v12, v2);
    v44 = v28;
    v34 = *(v45 + 32);
    v34(&v16[v33], &v12[v47], v5);
    v35 = *(v13 + 48);
    v36 = v46;
    (v46)(v28, v16, v2);
    v37 = v48;
    v34(v48, &v16[v35], v5);
    OUTLINED_FUNCTION_1_23();
    v38 = v50;
    v39 = swift_getTupleTypeMetadata2();
    v40 = *(v39 + 48);
    v41 = v49;
    v36(v49, v44, v2);
    (*(*(v38 - 8) + 32))(v41 + v40, v37, v38);
    v30 = v41;
    v31 = 0;
    v29 = v39;
  }

  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
}

uint64_t sub_26B1A4814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];

  sub_26B193F8C(v3);

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  return result;
}

uint64_t LRUDictionary.underestimatedCount.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for LRUDictionary.Container();
  return sub_26B2137F0();
}

uint64_t sub_26B1A48EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  LRUDictionary.makeIterator()(a1, a2);
  memcpy(__dst, v2, 0x41uLL);
  return (*(*(a1 - 8) + 8))(__dst, a1);
}

uint64_t sub_26B1A4978()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_26B1A49CC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = MEMORY[0x277D84F90];
  while (a4 != v6)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (v6 >= a4)
    {
      goto LABEL_16;
    }

    v19 = v6;
    a1(&v17, &v19);
    if (v4)
    {

      return;
    }

    v8 = v18;
    if (v18)
    {
      v9 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v7 + 16);
        sub_26B16ACAC();
        v7 = v13;
      }

      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_26B16ACAC();
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      v11 = v7 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
    }

    ++v6;
  }
}

uint64_t NanoID.Configuration.characters.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SonicFoundation::NanoID::Configuration __swiftcall NanoID.Configuration.with(size:)(Swift::Int size)
{
  v3 = v2;
  v4 = v1;
  sub_26B2128F0();
  v6 = v4;
  v7 = v3;
  v8 = size;
  result.size = v8;
  result.characters._object = v7;
  result.characters._countAndFlagsBits = v6;
  return result;
}

void _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a3 == v4)
      {

        v19 = v6;
        sub_26B1A5198();
        sub_26B182AF4();
        sub_26B212CE0();
        return;
      }

      if (v4 >= a3)
      {
        break;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

      ++v4;
      if (v5)
      {
        v8 = sub_26B212BB0();
        if (v8 < 0)
        {
          goto LABEL_24;
        }

        v9 = v8;
        if (!v8)
        {
          goto LABEL_25;
        }

        v19 = 0;
        MEMORY[0x26D672400](&v19, 8);
        if (v9 > v19 * v9)
        {
          v10 = -v9 % v9;
          while (v10 > v19 * v9)
          {
            v19 = 0;
            MEMORY[0x26D672400](&v19, 8);
          }
        }

        sub_26B212BF0();
        v11 = sub_26B212CD0();
        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = *(v6 + 16);
          sub_26B16ACAC();
          v6 = v17;
        }

        v14 = *(v6 + 16);
        if (v14 >= *(v6 + 24) >> 1)
        {
          sub_26B16ACAC();
          v6 = v18;
        }

        *(v6 + 16) = v14 + 1;
        v15 = v6 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
        v4 = v7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t NanoID.init<A>(config:using:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x28223BE20](result);
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v4;
    v12[5] = a2;
    v12[6] = v7;
    v12[7] = v8;
    sub_26B1A49CC(sub_26B1A5174, v12, 0, v9);
    v11 = v10;

    v12[8] = v11;
    sub_26B1A5198();
    sub_26B182AF4();
    return sub_26B212CE0();
  }

  return result;
}

uint64_t static NanoID.small<A>(size:using:)(uint64_t result)
{
  if (result <= 15)
  {
    return OUTLINED_FUNCTION_1_24(64, 0x800000026B21FCB0, result);
  }

  __break(1u);
  return result;
}

uint64_t static NanoID.taggedPointer<A>(size:using:)(uint64_t result)
{
  if (result <= 9)
  {
    return OUTLINED_FUNCTION_1_24(59, 0x800000026B21FD80, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1A5174()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_26B1A50FC();
}

void sub_26B1A5198()
{
  if (!qword_2803E6D90)
  {
    v0 = sub_26B212F50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6D90);
    }
  }
}

uint64_t static NanoID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t NanoID.hashValue.getter()
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  return sub_26B214070();
}

uint64_t sub_26B1A5290()
{
  v1 = *v0;
  v2 = v0[1];
  return NanoID.hashValue.getter();
}