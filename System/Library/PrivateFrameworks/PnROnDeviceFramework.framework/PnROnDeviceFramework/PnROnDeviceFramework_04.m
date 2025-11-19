uint64_t sub_25E9B5FB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25E9B603C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25E9B6050(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25E9D8290();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_25E9B60B4()
{
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
  return sub_25E9D81B0();
}

uint64_t sub_25E9B60FC()
{
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
  return sub_25E9D81B0();
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E9B6234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25E9B63C0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_25E9B6414()
{
  result = qword_27FD0DC40;
  if (!qword_27FD0DC40)
  {
    sub_25E9D7860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DC40);
  }

  return result;
}

uint64_t sub_25E9B649C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    v46 = *(v11 + 80);
    v44 = *(v11 + 112);
    v45 = *(v11 + 96);
    v36 = *(v11 + 120);
    v42 = *(v11 + 64);
    v43 = *(v11 + 16);
    v40 = *(v11 + 48);
    v41 = *(v11 + 32);
    swift_beginAccess();
    v35 = *(v11 + 128);
    swift_beginAccess();
    v33 = *(v11 + 144);
    v34 = *(v11 + 136);
    v12 = v10[3];

    v32 = sub_25E9C3AB4();
    v14 = v13;
    v15 = v10[4];
    v31 = sub_25E9C3AB4();
    v17 = v16;
    v18 = v10[5];
    v30 = sub_25E9C4F38();
    v20 = v19;
    v21 = v10[6];
    v29 = sub_25E9C3AB4();
    v22 = a5;
    LOBYTE(a5) = v23;
    v24 = v10[7];
    v25 = sub_25E9C3AB4();
    v26 = *(v11 + 104);
    v53 = v14 & 1;
    v52 = v17 & 1;
    v51 = v20 & 1;
    v50 = a5 & 1;
    v49 = v27 & 1;
    *__src = a2;
    *&__src[8] = a3;
    *&__src[16] = a4;
    *&__src[24] = v22;
    *&__src[32] = a6;
    *&__src[40] = a7;
    *&__src[48] = v43;
    *&__src[64] = v41;
    *&__src[80] = v40;
    *&__src[96] = v42;
    *&__src[112] = v46;
    *&__src[128] = v45;
    *&__src[136] = v44;
    *&__src[144] = v36;
    *&__src[152] = v35;
    *&__src[160] = v34;
    *&__src[168] = v33;
    *&__src[176] = v32;
    __src[184] = v14 & 1;
    *&__src[192] = v31;
    __src[200] = v17 & 1;
    *&__src[208] = v30;
    __src[216] = v20 & 1;
    *&__src[224] = v29;
    __src[232] = a5 & 1;
    *&__src[240] = v25;
    __src[248] = v27 & 1;
    *&__src[256] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D828, &qword_25E9D9470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E9D96A0;
    memcpy((inited + 32), __src, 0x108uLL);
    swift_beginAccess();

    sub_25E9B83F4(__src, v47);
    sub_25E9C147C(inited);
    swift_endAccess();
    return sub_25E9B8450(__src);
  }

  return result;
}

uint64_t sub_25E9B676C(void (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v166 = a2;
  v167 = a6;
  v154 = a4;
  v155 = a5;
  v176 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v164 = &v134 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v159 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v158 = &v134 - v20;
  MEMORY[0x28223BE20](v19);
  v163 = &v134 - v21;
  v22 = sub_25E9D7A10();
  v177 = *(v22 - 8);
  v178 = v22;
  v23 = *(v177 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v172 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v179 = &v134 - v26;
  v175 = sub_25E9D7940();
  v27 = *(v175 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v175);
  v30 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25E9D78F0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v138 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD0D588 != -1)
  {
    swift_once();
  }

  v35 = sub_25E9D7F10();
  v36 = __swift_project_value_buffer(v35, qword_27FD0DAD0);

  v165 = v36;
  v37 = sub_25E9D7F00();
  v38 = sub_25E9D8140();

  v39 = os_log_type_enabled(v37, v38);
  v156 = a7;
  v168 = a3;
  v161 = v13;
  v137 = v32;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = v31;
    v42 = swift_slowAlloc();
    *v181 = v42;
    *v40 = 136315394;
    *(v40 + 4) = sub_25E9887EC(v166, a3, v181);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_25E9887EC(v167, a7, v181);
    _os_log_impl(&dword_25E971000, v37, v38, "start for sessionId: %s clientRequestId: %s", v40, 0x16u);
    swift_arrayDestroy();
    v43 = v42;
    v31 = v41;
    v32 = v137;
    MEMORY[0x25F8C51A0](v43, -1, -1);
    MEMORY[0x25F8C51A0](v40, -1, -1);
  }

  v44 = v175;
  v193 = MEMORY[0x277D84F90];
  v45 = *(v32 + 16);
  v135 = v31;
  v45(v138, v176, v31);
  sub_25E9D78E0();
  v46 = sub_25E9D7930();
  (*(v27 + 8))(v30, v44);
  v48 = *(v46 + 16);
  v49 = v168;
  if (v48)
  {
    v171 = 0;
    v176 = *(v177 + 16);
    v50 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v134 = v46;
    v51 = v46 + v50;
    v175 = (v177 + 8);
    v177 += 16;
    v162 = *(v177 + 56);
    v157 = *MEMORY[0x277D23588];
    *&v47 = 136315138;
    v160 = v47;
    v136 = xmmword_25E9D96A0;
    while (1)
    {
      v173 = v51;
      v174 = v48;
      v176(v179);
      v75 = v164;
      sub_25E9D79A0();
      v76 = sub_25E9D7A80();
      v77 = *(v76 - 8);
      v170 = *(v77 + 48);
      if (v170(v75, 1, v76) == 1)
      {
        break;
      }

      v79 = v163;
      sub_25E9D7A70();
      (*(v77 + 8))(v75, v76);
      v80 = sub_25E9D7B90();
      v81 = *(v80 - 8);
      if ((*(v81 + 48))(v79, 1, v80) == 1)
      {
        goto LABEL_15;
      }

      v82 = v158;
      sub_25E986774(v79, v158);
      v83 = (*(v81 + 88))(v82, v80);
      (*(v81 + 8))(v82, v80);
      if (v83 != v157)
      {
        goto LABEL_15;
      }

      sub_25E981210(v79, &qword_27FD0D888, &qword_25E9DBDA0);
      if (v171)
      {
        v84 = v171[2];
        v169 = *(v84 + 80);
        v85 = *(v84 + 96);
        v86 = *(v84 + 120);
        v152 = *(v84 + 112);
        v153 = v85;
        v147 = v86;
        v87 = *(v84 + 16);
        v88 = *(v84 + 32);
        v89 = *(v84 + 48);
        v150 = *(v84 + 64);
        v151 = v87;
        v148 = v89;
        v149 = v88;
        swift_beginAccess();
        v146 = *(v84 + 128);
        swift_beginAccess();
        v90 = *(v84 + 136);
        v144 = *(v84 + 144);
        v145 = v90;
        v91 = v171[3];

        v92 = v155;

        v143 = sub_25E9C3AB4();
        v139 = v93;
        v94 = v171;
        v95 = v171[4];
        v142 = sub_25E9C3AB4();
        v97 = v96;
        v98 = v94[5];
        v141 = sub_25E9C4F38();
        LOBYTE(v90) = v99;
        v100 = v94[6];
        v140 = sub_25E9C3AB4();
        LOBYTE(v86) = v101;
        v102 = v94[7];
        v103 = sub_25E9C3AB4();
        v104 = *(v94[2] + 104);
        v186 = v139 & 1;
        v185 = v97 & 1;
        v184 = v90 & 1;
        v183 = v86 & 1;
        v182 = v105 & 1;
        *v181 = v166;
        *&v181[8] = v168;
        *&v181[16] = v154;
        *&v181[24] = v92;
        *&v181[32] = v167;
        *&v181[40] = v156;
        *&v181[48] = v151;
        *&v181[64] = v149;
        *&v181[80] = v148;
        *&v181[96] = v150;
        *&v181[112] = v169;
        *&v181[128] = v153;
        *&v181[136] = v152;
        *&v181[144] = v147;
        *&v181[152] = v146;
        *&v181[160] = v145;
        *&v181[168] = v144;
        *&v181[176] = v143;
        v181[184] = v139 & 1;
        *&v181[192] = v142;
        v181[200] = v97 & 1;
        *&v181[208] = v141;
        v181[216] = v90 & 1;
        *&v181[224] = v140;
        v181[232] = v86 & 1;
        *&v181[240] = v103;
        v181[248] = v105 & 1;
        *&v181[256] = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D828, &qword_25E9D9470);
        v106 = swift_allocObject();
        *(v106 + 16) = v136;
        memcpy((v106 + 32), v181, 0x108uLL);
        swift_beginAccess();

        sub_25E9B83F4(v181, &v180);
        sub_25E9C147C(v106);
        swift_endAccess();
        sub_25E9B8450(v181);
      }

      v107 = v178;
      v108 = v172;
      type metadata accessor for IERequestGrainSpec();
      swift_allocObject();
      v171 = sub_25E9BDA40();

LABEL_16:
      (v176)(v108, v179, v107);
      v109 = sub_25E9D7F00();
      v110 = sub_25E9D8140();
      if (!os_log_type_enabled(v109, v110))
      {

        v117 = *v175;
        (*v175)(v108, v107);
        v118 = v171;
        if (!v171)
        {
          goto LABEL_26;
        }

        goto LABEL_7;
      }

      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v181 = v112;
      *v111 = v160;
      v113 = v161;
      sub_25E9D79A0();
      if (v170(v113, 1, v76) == 1)
      {
        v114 = v113;
        v115 = &qword_27FD0D880;
        v116 = &unk_25E9D97C0;
LABEL_23:
        sub_25E981210(v114, v115, v116);
        v122 = 0xE300000000000000;
        v123 = 7104878;
        goto LABEL_25;
      }

      v119 = v159;
      sub_25E9D7A70();
      (*(v77 + 8))(v113, v76);
      v120 = sub_25E9D7B90();
      v121 = *(v120 - 8);
      if ((*(v121 + 48))(v119, 1, v120) == 1)
      {
        v114 = v119;
        v115 = &qword_27FD0D888;
        v116 = &qword_25E9DBDA0;
        goto LABEL_23;
      }

      v123 = sub_25E9D7B80();
      v122 = v124;
      (*(v121 + 8))(v119, v120);
LABEL_25:
      v117 = *v175;
      (*v175)(v172, v178);
      v125 = sub_25E9887EC(v123, v122, v181);

      *(v111 + 4) = v125;
      _os_log_impl(&dword_25E971000, v109, v110, "handling event %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x25F8C51A0](v112, -1, -1);
      MEMORY[0x25F8C51A0](v111, -1, -1);

      v118 = v171;
      if (!v171)
      {
LABEL_26:
        v117(v179, v178);
        goto LABEL_8;
      }

LABEL_7:
      v170 = v118[2];
      v52 = v170;
      v53 = type metadata accessor for RequestGrainDimensionsSpec();
      v187[4] = &off_2870ACB78;
      v187[3] = v53;
      v187[0] = v52;
      v54 = v118[3];
      v55 = type metadata accessor for IETranscriptLatencyIntervalSpec();
      v188[4] = &off_2870ACB88;
      v188[3] = v55;
      v188[0] = v54;
      v56 = v118[4];
      v189[4] = &off_2870ACB88;
      v189[3] = v55;
      v189[0] = v56;
      v57 = v118[5];
      v190[4] = &off_2870ACB88;
      v190[3] = v55;
      v190[0] = v57;
      v58 = v118[6];
      v191[4] = &off_2870ACB88;
      v191[3] = v55;
      v191[0] = v58;
      v59 = v118[7];
      v192[4] = &off_2870ACB88;
      v192[3] = v55;
      v192[0] = v59;
      sub_25E986C6C(v187, v181);
      v60 = *&v181[24];
      v61 = *&v181[32];
      __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
      *&v169 = *(v61 + 8);

      v62 = v179;
      (v169)(v179, v60, v61);
      __swift_destroy_boxed_opaque_existential_0(v181);
      sub_25E986C6C(v188, v181);
      v63 = *&v181[24];
      v64 = *&v181[32];
      __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
      (*(v64 + 8))(v62, v63, v64);
      __swift_destroy_boxed_opaque_existential_0(v181);
      sub_25E986C6C(v189, v181);
      v65 = *&v181[24];
      v66 = *&v181[32];
      __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
      (*(v66 + 8))(v62, v65, v66);
      __swift_destroy_boxed_opaque_existential_0(v181);
      sub_25E986C6C(v190, v181);
      v67 = *&v181[24];
      v68 = *&v181[32];
      __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
      (*(v68 + 8))(v62, v67, v68);
      __swift_destroy_boxed_opaque_existential_0(v181);
      sub_25E986C6C(v191, v181);
      v69 = *&v181[24];
      v70 = *&v181[32];
      __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
      (*(v70 + 8))(v62, v69, v70);
      __swift_destroy_boxed_opaque_existential_0(v181);
      sub_25E986C6C(v192, v181);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D898, &unk_25E9DB860);
      swift_arrayDestroy();
      v71 = *&v181[24];
      v72 = *&v181[32];
      __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
      (*(v72 + 8))(v62, v71, v72);
      __swift_destroy_boxed_opaque_existential_0(v181);
      (*v175)(v62, v178);
LABEL_8:
      v73 = v167;
      v49 = v168;
      v74 = v166;
      v51 = v173 + v162;
      v48 = v174 - 1;
      if (v174 == 1)
      {

        v126 = v171;
        goto LABEL_30;
      }
    }

    sub_25E981210(v75, &qword_27FD0D880, &unk_25E9D97C0);
    v78 = sub_25E9D7B90();
    v79 = v163;
    (*(*(v78 - 8) + 56))(v163, 1, 1, v78);
LABEL_15:
    sub_25E981210(v79, &qword_27FD0D888, &qword_25E9DBDA0);
    v107 = v178;
    v108 = v172;
    goto LABEL_16;
  }

  v126 = 0;
  v74 = v166;
  v73 = v167;
LABEL_30:
  v127 = v156;
  v128 = v138;
  sub_25E9B649C(v126, v74, v49, v154, v155, v73, v156);
  (*(v137 + 8))(v128, v135);

  v129 = sub_25E9D7F00();
  v130 = sub_25E9D8140();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v181 = v132;
    *v131 = 136315394;
    *(v131 + 4) = sub_25E9887EC(v74, v49, v181);
    *(v131 + 12) = 2080;
    *(v131 + 14) = sub_25E9887EC(v73, v127, v181);
    _os_log_impl(&dword_25E971000, v129, v130, "end for sessionId: %s clientRequestId: %s", v131, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v132, -1, -1);
    MEMORY[0x25F8C51A0](v131, -1, -1);
  }

  swift_beginAccess();
  return v193;
}

char *sub_25E9B7850()
{
  v124 = sub_25E9D78F0();
  v115 = *(v124 - 8);
  v0 = *(v115 + 64);
  v1 = MEMORY[0x28223BE20](v124);
  v3 = (&v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v1);
  v113 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA98, &qword_25E9DA7B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v97 - v10);
  v12 = sub_25E9D7920();
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA0, &qword_25E9DA7B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v97 - v22;
  if (qword_27FD0D588 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v106 = v23;
    v24 = sub_25E9D7F10();
    v97 = __swift_project_value_buffer(v24, qword_27FD0DAD0);
    v25 = sub_25E9D7F00();
    v26 = sub_25E9D8140();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v12;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25E971000, v25, v26, "calculator start", v28, 2u);
      v29 = v28;
      v12 = v27;
      MEMORY[0x25F8C51A0](v29, -1, -1);
    }

    v30 = sub_25E9D7950();
    v31 = 0;
    v32 = *(v30 + 64);
    v99 = v30 + 64;
    v102 = v30;
    v33 = 1 << *(v30 + 32);
    v34 = v33 < 64 ? ~(-1 << v33) : -1;
    v35 = v34 & v32;
    v98 = (v33 + 63) >> 6;
    v100 = v105 + 16;
    v110 = (v105 + 32);
    v111 = v115 + 16;
    v123 = (v115 + 32);
    v117 = (v115 + 8);
    v125 = MEMORY[0x277D84F90];
    v103 = (v105 + 8);
    v114 = v3;
    v112 = v9;
    v122 = v11;
    v36 = v21;
    v107 = v21;
    v104 = v12;
LABEL_9:
    if (v35)
    {
      break;
    }

    if (v98 <= v31 + 1)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = v98;
    }

    v38 = v37 - 1;
    while (1)
    {
      v23 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v23 >= v98)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
        (*(*(v88 - 8) + 56))(v36, 1, 1, v88);
        v109 = 0;
        goto LABEL_19;
      }

      v35 = *(v99 + 8 * v23);
      ++v31;
      if (v35)
      {
        goto LABEL_18;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v23 = v31;
LABEL_18:
  v109 = (v35 - 1) & v35;
  v39 = __clz(__rbit64(v35)) | (v23 << 6);
  v40 = *(v102 + 56);
  v41 = (*(v102 + 48) + 16 * v39);
  v42 = v41[1];
  v120 = *v41;
  v43 = v105;
  v44 = v101;
  (*(v105 + 16))(v101, v40 + *(v105 + 72) * v39, v12);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  v46 = *(v45 + 48);
  v47 = v107;
  *v107 = v120;
  *(v47 + 1) = v42;
  v48 = v44;
  v36 = v47;
  (*(v43 + 32))(&v47[v46], v48, v12);
  (*(*(v45 - 8) + 56))(v36, 0, 1, v45);

  v38 = v23;
LABEL_19:
  v49 = v106;
  sub_25E98B514(v36, v106, &qword_27FD0DAA0, &qword_25E9DA7B8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) != 1)
  {
    v108 = v38;
    v51 = v49[1];
    v119 = *v49;
    v120 = v51;
    (*v110)(v121, v49 + *(v50 + 48), v12);
    v52 = sub_25E9D7910();
    v21 = 0;
    v54 = v52 + 64;
    v53 = *(v52 + 64);
    v116 = v52;
    v55 = 1 << *(v52 + 32);
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v57 = v56 & v53;
    v23 = (v55 + 63) >> 6;
    v118 = v52 + 64;
    while (v57)
    {
      v58 = v21;
LABEL_36:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = v61 | (v58 << 6);
      v63 = v115;
      v64 = (*(v116 + 48) + 16 * v62);
      v66 = *v64;
      v65 = v64[1];
      v67 = v113;
      v68 = v124;
      (*(v115 + 16))(v113, *(v116 + 56) + *(v115 + 72) * v62, v124);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      v70 = *(v69 + 48);
      v71 = v112;
      *v112 = v66;
      *(v71 + 1) = v65;
      v72 = v67;
      v9 = v71;
      (*(v63 + 32))(&v71[v70], v72, v68);
      (*(*(v69 - 8) + 56))(v9, 0, 1, v69);

      v3 = v114;
      v11 = v122;
LABEL_37:
      sub_25E98B514(v9, v11, &qword_27FD0DA98, &qword_25E9DA7B0);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      if ((*(*(v73 - 8) + 48))(v11, 1, v73) == 1)
      {
        v12 = v104;
        (*v103)(v121, v104);

        v36 = v107;
        v31 = v108;
        v35 = v109;
        goto LABEL_9;
      }

      v74 = *v11;
      v75 = v11[1];
      (*v123)(v3, v11 + *(v73 + 48), v124);
      v76 = sub_25E9D7900();
      v78 = sub_25E9B676C(v3, v119, v120, v76, v77, v74, v75);

      v79 = *(v78 + 16);
      v12 = *(v125 + 2);
      v11 = (v12 + v79);
      if (__OFADD__(v12, v79))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v125;
      if (!isUniquelyReferenced_nonNull_native || v11 > *(v125 + 3) >> 1)
      {
        if (v12 <= v11)
        {
          v82 = v12 + v79;
        }

        else
        {
          v82 = v12;
        }

        v81 = sub_25E9840A8(isUniquelyReferenced_nonNull_native, v82, 1, v125);
      }

      v11 = v122;
      v83 = *(v78 + 16);
      v125 = v81;
      if (v83)
      {
        if ((*(v81 + 3) >> 1) - *(v81 + 2) < v79)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v79)
        {
          v84 = *(v125 + 2);
          v85 = __OFADD__(v84, v79);
          v86 = v84 + v79;
          if (v85)
          {
            goto LABEL_62;
          }

          *(v125 + 2) = v86;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_60;
        }
      }

      (*v117)(v3, v124);
      v54 = v118;
    }

    if (v23 <= (v21 + 1))
    {
      v59 = v21 + 1;
    }

    else
    {
      v59 = v23;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v58 >= v23)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
        (*(*(v87 - 8) + 56))(v9, 1, 1, v87);
        v57 = 0;
        v21 = v60;
        goto LABEL_37;
      }

      v57 = *(v54 + 8 * v58);
      ++v21;
      if (v57)
      {
        v21 = v58;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  v89 = v125;

  v90 = sub_25E9D7F00();
  v91 = sub_25E9D8140();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v89 + 2);

    _os_log_impl(&dword_25E971000, v90, v91, "computed metrics for %ld requests", v92, 0xCu);
    MEMORY[0x25F8C51A0](v92, -1, -1);
  }

  else
  {
  }

  v93 = sub_25E9D7F00();
  v94 = sub_25E9D8140();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_25E971000, v93, v94, "calculator end", v95, 2u);
    MEMORY[0x25F8C51A0](v95, -1, -1);
  }

  return v125;
}

uint64_t PnROnDeviceMetrics.__allocating_init(streamIdentifier:readerDomain:)(_BYTE *a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = *a1;
  *(result + 17) = v5;
  return result;
}

uint64_t PnROnDeviceMetrics.init(streamIdentifier:readerDomain:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = *a1;
  *(v2 + 17) = v3;
  return v2;
}

uint64_t sub_25E9B8528()
{
  v1 = 0xD00000000000001FLL;
  v2 = v0[90];
  v3 = "self.processedstream";
  v4 = 0xD00000000000002BLL;
  if (*(v2 + 16) != 1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = "arplay.self.processedstream";
  }

  if (*(v2 + 16))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (*(v2 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = "ion";
  }

  v7 = *(v2 + 17);
  v8 = "ouse.pnr.PnROnDeviceWorker";
  if (v7 == 1)
  {
    v1 = 0xD000000000000031;
  }

  else
  {
    v8 = "eviceWorkerReader";
  }

  if (v7)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0xD00000000000002ALL;
  }

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = "com.apple.biome.self.teststream";
  }

  type metadata accessor for Bookmark();
  swift_allocObject();
  v0[89] = sub_25E98B630(v5, v6 | 0x8000000000000000, v9, v10 | 0x8000000000000000);
  v11 = swift_task_alloc();
  v0[91] = v11;
  *v11 = v0;
  v11[1] = sub_25E9B8694;

  return SELFProcessedStreamTurnReader.read()();
}

uint64_t sub_25E9B8694(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v6 = *v1;
  *(*v1 + 736) = a1;

  v4 = *(v2 + 712);

  return MEMORY[0x2822009F8](sub_25E9B87B4, 0, 0);
}

uint64_t sub_25E9B87B4()
{
  v68 = v0;
  v1 = *(v0 + 736);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25E9D8290())
    {
      v3 = 0;
      v4 = *(v0 + 736);
      v64 = v4 & 0xFFFFFFFFFFFFFF8;
      v65 = v4 & 0xC000000000000001;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v65)
        {
          v6 = MEMORY[0x25F8C4B40](v3, v1);
        }

        else
        {
          if (v3 >= *(v64 + 16))
          {
            goto LABEL_24;
          }

          v6 = *(v1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        swift_beginAccess();
        v9 = qword_27FD0DD78;
        qword_27FD0DD78 = v7;
        v10 = v7;

        v67 = v10;
        SiriTurnGrainCalculator.extractLatencies()(v66);

        v11 = v66[11];
        *(v0 + 176) = v66[10];
        *(v0 + 192) = v11;
        v12 = v66[13];
        *(v0 + 208) = v66[12];
        *(v0 + 224) = v12;
        v13 = v66[7];
        *(v0 + 112) = v66[6];
        *(v0 + 128) = v13;
        v14 = v66[9];
        *(v0 + 144) = v66[8];
        *(v0 + 160) = v14;
        v15 = v66[3];
        *(v0 + 48) = v66[2];
        *(v0 + 64) = v15;
        v16 = v66[5];
        *(v0 + 80) = v66[4];
        *(v0 + 96) = v16;
        v17 = v66[1];
        *(v0 + 16) = v66[0];
        *(v0 + 32) = v17;
        if (sub_25E97F474(v0 + 16) == 1)
        {

          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_25E9841D0(0, *(v5 + 2) + 1, 1, v5);
        }

        v19 = *(v5 + 2);
        v18 = *(v5 + 3);
        if (v19 >= v18 >> 1)
        {
          v5 = sub_25E9841D0((v18 > 1), v19 + 1, 1, v5);
        }

        *(v5 + 2) = v19 + 1;
        v20 = &v5[224 * v19];
        v21 = *(v0 + 32);
        *(v20 + 2) = *(v0 + 16);
        *(v20 + 3) = v21;
        v22 = *(v0 + 48);
        v23 = *(v0 + 64);
        v24 = *(v0 + 96);
        *(v20 + 6) = *(v0 + 80);
        *(v20 + 7) = v24;
        *(v20 + 4) = v22;
        *(v20 + 5) = v23;
        v25 = *(v0 + 112);
        v26 = *(v0 + 128);
        v27 = *(v0 + 160);
        *(v20 + 10) = *(v0 + 144);
        *(v20 + 11) = v27;
        *(v20 + 8) = v25;
        *(v20 + 9) = v26;
        v28 = *(v0 + 176);
        v29 = *(v0 + 192);
        v30 = *(v0 + 224);
        *(v20 + 14) = *(v0 + 208);
        *(v20 + 15) = v30;
        *(v20 + 12) = v28;
        *(v20 + 13) = v29;
        ++v3;
        if (v8 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_27:

    v36 = *(v5 + 2);
    if (!v36)
    {
      v35 = MEMORY[0x277D84F90];
LABEL_37:

      goto LABEL_38;
    }

    v37 = 0;
    v38 = v5 + 32;
    v35 = MEMORY[0x277D84F90];
    while (v37 < *(v5 + 2))
    {
      v39 = v38[1];
      *(v0 + 240) = *v38;
      *(v0 + 256) = v39;
      v40 = v38[2];
      v41 = v38[3];
      v42 = v38[5];
      *(v0 + 304) = v38[4];
      *(v0 + 320) = v42;
      *(v0 + 272) = v40;
      *(v0 + 288) = v41;
      v43 = v38[6];
      v44 = v38[7];
      v45 = v38[9];
      *(v0 + 368) = v38[8];
      *(v0 + 384) = v45;
      *(v0 + 336) = v43;
      *(v0 + 352) = v44;
      v46 = v38[10];
      v47 = v38[11];
      v48 = v38[13];
      *(v0 + 432) = v38[12];
      *(v0 + 448) = v48;
      *(v0 + 400) = v46;
      *(v0 + 416) = v47;
      sub_25E9B8C60(v0 + 240, v0 + 464);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_25E9841D0(0, *(v35 + 2) + 1, 1, v35);
      }

      v50 = *(v35 + 2);
      v49 = *(v35 + 3);
      if (v50 >= v49 >> 1)
      {
        v35 = sub_25E9841D0((v49 > 1), v50 + 1, 1, v35);
      }

      ++v37;
      *(v35 + 2) = v50 + 1;
      v51 = &v35[224 * v50];
      v52 = *(v0 + 256);
      *(v51 + 2) = *(v0 + 240);
      *(v51 + 3) = v52;
      v53 = *(v0 + 272);
      v54 = *(v0 + 288);
      v55 = *(v0 + 320);
      *(v51 + 6) = *(v0 + 304);
      *(v51 + 7) = v55;
      *(v51 + 4) = v53;
      *(v51 + 5) = v54;
      v56 = *(v0 + 336);
      v57 = *(v0 + 352);
      v58 = *(v0 + 384);
      *(v51 + 10) = *(v0 + 368);
      *(v51 + 11) = v58;
      *(v51 + 8) = v56;
      *(v51 + 9) = v57;
      v59 = *(v0 + 400);
      v60 = *(v0 + 416);
      v61 = *(v0 + 448);
      *(v51 + 14) = *(v0 + 432);
      *(v51 + 15) = v61;
      *(v51 + 12) = v59;
      *(v51 + 13) = v60;
      v38 += 14;
      if (v36 == v37)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else if (qword_280F6FE70 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  v31 = sub_25E9D7F10();
  __swift_project_value_buffer(v31, qword_280F6FE78);
  v32 = sub_25E9D7F00();
  v33 = sub_25E9D8110();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_25E971000, v32, v33, "PnROnDeviceMetrics: No turn sequence to extract Siri latencies", v34, 2u);
    MEMORY[0x25F8C51A0](v34, -1, -1);
  }

LABEL_22:
  v35 = 0;
LABEL_38:
  v62 = *(v0 + 8);

  return v62(v35);
}

unint64_t sub_25E9B8D0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC68, &qword_25E9DBB18);
    v2 = sub_25E9D82C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6E8, &qword_25E9DBB20);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v25 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v29 >= v8)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v29);
      ++v25;
      if (v7)
      {
        while (1)
        {
          v30 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v31 = (v29 << 9) | (8 * v30);
          v32 = *(*(a1 + 48) + v31);
          v33 = *(*(a1 + 56) + v31);

          result = sub_25E979058(v34);
          if (v35)
          {
            v26 = *(v2 + 48);
            v27 = *(v26 + 8 * result);
            *(v26 + 8 * result) = v32;
            v28 = result;

            *(*(v2 + 56) + 8 * v28) = v33;
            v25 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v36 = *(v2 + 16);
            if (v36 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v32;
            *(*(v2 + 56) + 8 * result) = v33;
            *(v2 + 16) = v36 + 1;
            v25 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v29 = v25;
        }
      }
    }
  }

  else
  {
    v9 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a1 + 48) + v14);
      v16 = *(*(a1 + 56) + v14);
      v17 = *(v2 + 40);

      result = sub_25E9D7F60();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v9 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v15;
      *(*(v2 + 56) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_25E9B9054(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC60, &qword_25E9DBB08);
    v2 = sub_25E9D82C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6B8, &qword_25E9DBB10);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v25 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v29 >= v8)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v29);
      ++v25;
      if (v7)
      {
        while (1)
        {
          v30 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v31 = (v29 << 9) | (8 * v30);
          v32 = *(*(a1 + 48) + v31);
          v33 = *(*(a1 + 56) + v31);

          result = sub_25E9790F8(v34);
          if (v35)
          {
            v26 = *(v2 + 48);
            v27 = *(v26 + 8 * result);
            *(v26 + 8 * result) = v32;
            v28 = result;

            *(*(v2 + 56) + 8 * v28) = v33;
            v25 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v36 = *(v2 + 16);
            if (v36 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v32;
            *(*(v2 + 56) + 8 * result) = v33;
            *(v2 + 16) = v36 + 1;
            v25 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v29 = v25;
        }
      }
    }
  }

  else
  {
    v9 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a1 + 48) + v14);
      v16 = *(*(a1 + 56) + v14);
      v17 = *(v2 + 40);

      result = sub_25E9D7F60();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v9 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v15;
      *(*(v2 + 56) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_25E9B939C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC70, &qword_25E9DBB28);
    v2 = sub_25E9D82C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D708, qword_25E9DBB30);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v25 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v29 >= v8)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v29);
      ++v25;
      if (v7)
      {
        while (1)
        {
          v30 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v31 = (v29 << 9) | (8 * v30);
          v32 = *(*(a1 + 48) + v31);
          v33 = *(*(a1 + 56) + v31);

          result = sub_25E97910C(v34);
          if (v35)
          {
            v26 = *(v2 + 48);
            v27 = *(v26 + 8 * result);
            *(v26 + 8 * result) = v32;
            v28 = result;

            *(*(v2 + 56) + 8 * v28) = v33;
            v25 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v36 = *(v2 + 16);
            if (v36 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v32;
            *(*(v2 + 56) + 8 * result) = v33;
            *(v2 + 16) = v36 + 1;
            v25 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v29 = v25;
        }
      }
    }
  }

  else
  {
    v9 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a1 + 48) + v14);
      v16 = *(*(a1 + 56) + v14);
      v17 = *(v2 + 40);

      result = sub_25E9D7F60();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v9 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v15;
      *(*(v2 + 56) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t IERequestGrainMetricsRecord.description.getter()
{
  v0 = IERequestGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t IERequestGrainMetricsRecord.dictionary.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v49 = v0[7];
  v50 = v0[8];
  v51 = v0[9];
  v52 = v0[10];
  v53 = v0[11];
  v54 = v0[12];
  v8 = v0[15];
  v55 = v0[13];
  v56 = v0[14];
  v48 = *(v0 + 17);
  v57 = v0[16];
  v58 = v0[19];
  v59 = v0[20];
  v9 = v0[22];
  v10 = v0[24];
  v60 = *(v0 + 184);
  v61 = *(v0 + 200);
  v11 = v0[26];
  v12 = v0[28];
  v62 = *(v0 + 216);
  v63 = *(v0 + 232);
  v13 = v0[30];
  v64 = *(v0 + 248);
  v65 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_25E9DB8E0;
  *(v14 + 32) = 0x496E6F6973736573;
  v16 = MEMORY[0x277D837D0];
  *(v14 + 40) = 0xE900000000000064;
  *(v14 + 48) = v2;
  *(v14 + 56) = v1;
  *(v14 + 72) = v16;
  strcpy((v14 + 80), "rawSessionId");
  *(v14 + 93) = 0;
  *(v14 + 94) = -5120;
  *(v14 + 96) = v4;
  *(v14 + 104) = v3;
  *(v14 + 120) = v16;
  *(v14 + 128) = 0x6552746E65696C63;
  *(v14 + 136) = 0xEF64497473657571;
  *(v14 + 144) = v6;
  v17 = v16;
  *(v14 + 152) = v5;
  *(v14 + 168) = v16;
  *(v14 + 176) = 0x6D45646C756F6873;
  *(v14 + 184) = 0xEA00000000007469;
  v19 = v7 > 0 || v8 > 0;
  v20 = MEMORY[0x277D839B0];
  *(v14 + 192) = v19;
  *(v14 + 216) = v20;
  *(v14 + 224) = 0x65757165526D756ELL;
  v21 = MEMORY[0x277D83B88];
  *(v14 + 232) = 0xEA00000000007473;
  *(v14 + 240) = v7;
  *(v14 + 264) = v21;
  strcpy((v14 + 272), "numPlanCreated");
  *(v14 + 287) = -18;
  *(v14 + 288) = v49;
  *(v14 + 312) = v21;
  *(v14 + 320) = 0xD000000000000019;
  *(v14 + 328) = 0x800000025E9DE620;
  *(v14 + 336) = v50;
  *(v14 + 360) = v21;
  *(v14 + 368) = 0xD000000000000011;
  *(v14 + 376) = 0x800000025E9DD550;
  *(v14 + 384) = v51;
  *(v14 + 408) = v21;
  *(v14 + 416) = 0xD000000000000010;
  *(v14 + 424) = 0x800000025E9DD530;
  *(v14 + 432) = v52;
  *(v14 + 456) = v21;
  *(v14 + 464) = 0xD000000000000015;
  *(v14 + 472) = 0x800000025E9DD590;
  *(v14 + 480) = v53;
  *(v14 + 504) = v21;
  *(v14 + 512) = 0xD000000000000020;
  *(v14 + 520) = 0x800000025E9DE080;
  *(v14 + 552) = v21;
  *(v14 + 528) = v54;
  *(v14 + 560) = 0xD00000000000001CLL;
  *(v14 + 568) = 0x800000025E9DE640;
  *(v14 + 600) = v21;
  *(v14 + 576) = v55;
  *(v14 + 608) = 0xD00000000000001ALL;
  *(v14 + 616) = 0x800000025E9DE660;
  *(v14 + 648) = v21;
  *(v14 + 624) = v56;
  *(v14 + 656) = 0xD000000000000017;
  *(v14 + 664) = 0x800000025E9DE0B0;
  *(v14 + 696) = v21;
  *(v14 + 672) = v8;
  *(v14 + 704) = 0xD000000000000010;
  *(v14 + 712) = 0x800000025E9DD5B0;
  *(v14 + 744) = v21;
  *(v14 + 720) = v57;
  *(v14 + 752) = 0x6449656C646E7562;
  *(v14 + 760) = 0xE900000000000073;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC48, &qword_25E9DB8F8);
  v15[99] = v22;
  v15[96] = v58;
  v15[100] = 0x7364496C6F6F74;
  v15[101] = 0xE700000000000000;
  v15[105] = v22;
  v15[102] = v59;

  v23 = sub_25E980C94(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v70 = v23;
  if (*(&v48 + 1))
  {
    *(&v67 + 1) = v17;
    v66 = v48;
    sub_25E980EA8(&v66, &v68);
    v24 = v69;
  }

  else
  {
    v25 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v24 = sub_25E9A1988();
    v69 = v24;
    *&v68 = v25;
  }

  if (v24)
  {
    sub_25E980EA8(&v68, &v66);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0xD000000000000013, 0x800000025E9DD4F0, isUniquelyReferenced_nonNull_native);
    v70 = v23;
  }

  else
  {

    sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000013, 0x800000025E9DD4F0, &v66);
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

  v27 = MEMORY[0x277D839F8];
  if (v60)
  {
    v66 = 0u;
    v67 = 0u;
    v28 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v69 = sub_25E9A1988();
    *&v68 = v28;
    if (*(&v67 + 1))
    {
      sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
    }
  }

  else
  {
    *(&v67 + 1) = MEMORY[0x277D839F8];
    *&v66 = v9;
    sub_25E980EA8(&v66, &v68);
  }

  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v29 = v70;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0xD000000000000013, 0x800000025E9DB8E0, v30);
    v70 = v29;
    if (v61)
    {
      goto LABEL_19;
    }

LABEL_22:
    *(&v67 + 1) = v27;
    *&v66 = v10;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_23;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000013, 0x800000025E9DB8E0, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v61 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v66 = 0u;
  v67 = 0u;
  v31 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v31;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_23:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v32 = v70;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x676E696E6E616C70, 0xEC000000656D6954, v33);
    v70 = v32;
    if (v62)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(&v67 + 1) = v27;
    *&v66 = v11;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_29;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0x676E696E6E616C70, 0xEC000000656D6954, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v62 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v66 = 0u;
  v67 = 0u;
  v34 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v34;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_29:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v35 = v70;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x6D69547972657571, 0xE900000000000065, v36);
    v70 = v35;
    if (v63)
    {
      goto LABEL_31;
    }

LABEL_34:
    *(&v67 + 1) = v27;
    *&v66 = v12;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_35;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0x6D69547972657571, 0xE900000000000065, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v63 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v66 = 0u;
  v67 = 0u;
  v37 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v37;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_35:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v38 = v70;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x6F69747563657865, 0xED0000656D69546ELL, v39);
    v70 = v38;
    if (v64)
    {
      goto LABEL_37;
    }

LABEL_40:
    *(&v67 + 1) = v27;
    *&v66 = v13;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_41;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0x6F69747563657865, 0xED0000656D69546ELL, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v64 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v66 = 0u;
  v67 = 0u;
  v40 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v40;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_41:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v41 = v70;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0xD000000000000017, 0x800000025E9DB900, v42);
    v70 = v41;
    if (v65)
    {
LABEL_43:
      v43 = sub_25E9A89B8();
      *(&v67 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
      *&v66 = v43;
      sub_25E980EA8(&v66, &v68);
      goto LABEL_47;
    }
  }

  else
  {
    sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000017, 0x800000025E9DB900, &v66);
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
    if (v65)
    {
      goto LABEL_43;
    }
  }

  v66 = 0u;
  v67 = 0u;
  v44 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v44;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_47:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v45 = v70;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x496572756C696166, 0xEB000000006F666ELL, v46);
    return v45;
  }

  else
  {
    sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0x496572756C696166, 0xEB000000006F666ELL, &v66);
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
    return v70;
  }
}

unint64_t sub_25E9BA388()
{
  v0 = IERequestGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t sub_25E9BA3F0()
{
  v0 = IERequestGrainMetricsRecord.dictionary.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC50, ":h");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9DADD0;
  *(inited + 32) = swift_getKeyPath();
  if (*(v0 + 16) && (v2 = sub_25E978F5C(0x676E696E6E616C70, 0xEC000000656D6954), (v3 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v2, v21), swift_dynamicCast()))
  {
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  *(inited + 40) = v4;
  *(inited + 48) = swift_getKeyPath();
  if (*(v0 + 16) && (v5 = sub_25E978F5C(0x6F69747563657865, 0xED0000656D69546ELL), (v6 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v5, v21), swift_dynamicCast()))
  {
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  *(inited + 56) = v7;
  *(inited + 64) = swift_getKeyPath();
  if (*(v0 + 16) && (v8 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DB8E0), (v9 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v8, v21), swift_dynamicCast()))
  {
    v10 = v20;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 72) = v10;
  *(inited + 80) = swift_getKeyPath();
  if (*(v0 + 16) && (v11 = sub_25E978F5C(0xD000000000000017, 0x800000025E9DB900), (v12 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v11, v21), swift_dynamicCast()))
  {
    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  *(inited + 88) = v13;
  *(inited + 96) = swift_getKeyPath();
  if (!*(v0 + 16) || (v14 = sub_25E978F5C(0x6D69547972657571, 0xE900000000000065), (v15 & 1) == 0))
  {

    goto LABEL_26;
  }

  sub_25E980E4C(*(v0 + 56) + 32 * v14, v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v16 = v20;
LABEL_27:
  *(inited + 104) = v16;
  v17 = sub_25E980DE8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC58, &qword_25E9DBB00);
  swift_arrayDestroy();
  v18 = sub_25E9B9054(v17);

  return v18;
}

BOOL IERequestGrainMetricsRecord.SELFShouldEmit.getter()
{
  v1 = v0[18];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[6];
  v3 = v0[15];
  v4 = v0[17] == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00;
  if (!v4 && (sub_25E9D8300() & 1) == 0)
  {
    return 0;
  }

  return v2 > 0 || v3 > 0;
}

unsigned int *IERequestGrainMetricsRecord.getSELFEvent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v134 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v133 = &v122 - v7;
  MEMORY[0x28223BE20](v6);
  v132 = &v122 - v8;
  v9 = sub_25E9D77F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v131 = &v122 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v130 = &v122 - v18;
  MEMORY[0x28223BE20](v17);
  v129 = &v122 - v19;
  v20 = *v0;
  v143 = v0[1];
  v144 = v20;
  v21 = v0[2];
  v141 = v0[3];
  v142 = v21;
  v22 = v0[4];
  v139 = v0[5];
  v140 = v22;
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[9];
  v137 = v0[8];
  v138 = v24;
  v26 = v0[10];
  v135 = v23;
  v136 = v26;
  v28 = v0[19];
  v27 = v0[20];
  v29 = v0[21];
  v145 = v1[32];
  v146 = v27;
  v30 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = v30;
  v127 = v9;
  v128 = v28;
  v32 = [objc_allocWithZone(MEMORY[0x277D59E78]) init];
  if (!v32)
  {

LABEL_26:
    if (qword_27FD0D588 != -1)
    {
LABEL_62:
      swift_once();
    }

    v60 = sub_25E9D7F10();
    __swift_project_value_buffer(v60, qword_27FD0DAD0);
    v61 = sub_25E9D7F00();
    v62 = sub_25E9D8120();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_25E971000, v61, v62, "PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary init failed!", v63, 2u);
      MEMORY[0x25F8C51A0](v63, -1, -1);
    }

    return 0;
  }

  v33 = v32;
  v161 = v32;
  v34 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v34)
  {
    if (qword_27FD0D588 != -1)
    {
      swift_once();
    }

    v70 = sub_25E9D7F10();
    __swift_project_value_buffer(v70, qword_27FD0DAD0);
    v71 = sub_25E9D7F00();
    v72 = sub_25E9D8120();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_25E971000, v71, v72, "PNRODSchemaPNRODClientEventMetadata init failed!", v73, 2u);
      MEMORY[0x25F8C51A0](v73, -1, -1);
    }

    return 0;
  }

  v123 = v14;
  v124 = v31;
  v125 = v34;
  v126 = v10;
  v35 = sub_25E983188();
  v36 = sub_25E9BB530(v35);

  v37 = *(v36 + 2);
  if (v37)
  {
    v14 = (v36 + 32);
    do
    {
      v38 = *v14++;
      [v33 addRequestFeatureTag_];
      --v37;
    }

    while (v37);
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v37 = v137;
  v39 = v138;
  v40 = v136;
  if (HIDWORD(v25))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  [v33 setNumQueriesCreated_];
  if ((v39 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (HIDWORD(v39))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  [v33 setNumPlansCreated_];
  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (HIDWORD(v40))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v33 setNumActionsCreated_];
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (HIDWORD(v37))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
    goto LABEL_49;
  }

  [v33 setNumPlansCreatedForResponse_];
  [v33 setNumQueriesCreated_];
  v147[0] = v144;
  v147[1] = v143;
  v147[2] = v142;
  v147[3] = v141;
  v147[4] = v140;
  v147[5] = v139;
  v147[6] = v135;
  v147[7] = v39;
  v147[8] = v37;
  v147[9] = v25;
  v147[10] = v40;
  v148 = *(v1 + 11);
  v149 = *(v1 + 13);
  v150 = *(v1 + 15);
  v151 = *(v1 + 17);
  v152 = v128;
  v153 = v146;
  v154 = v29;
  v41 = *(v1 + 14);
  v159 = *(v1 + 15);
  v42 = *(v1 + 12);
  v43 = *(v1 + 13);
  v158 = v41;
  v157 = v43;
  v155 = *(v1 + 11);
  v156 = v42;
  v160 = v145;
  v44 = sub_25E9BA3F0();
  v45 = v44;
  v46 = 0;
  v47 = v44 + 64;
  v48 = 1 << *(v44 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v44 + 64);
  v51 = (v48 + 63) >> 6;
  if (v50)
  {
    while (1)
    {
      v52 = v46;
LABEL_22:
      v53 = (v52 << 9) | (8 * __clz(__rbit64(v50)));
      v54 = *(*(v45 + 48) + v53);
      v55 = *(*(v45 + 56) + v53);
      v56 = objc_allocWithZone(MEMORY[0x277D59E90]);

      v57 = [v56 init];
      if (!v57)
      {
        break;
      }

      v58 = v57;
      v50 &= v50 - 1;
      [v57 setMetricValue_];
      v147[0] = v58;
      v59 = v58;
      swift_setAtWritableKeyPath();

      v46 = v52;
      if (!v50)
      {
        goto LABEL_19;
      }
    }

    if (qword_27FD0D588 != -1)
    {
      swift_once();
    }

    v116 = sub_25E9D7F10();
    __swift_project_value_buffer(v116, qword_27FD0DAD0);
    v117 = sub_25E9D7F00();
    v118 = sub_25E9D8120();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v124;
    if (v119)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_25E971000, v117, v118, "PNROnDeviceProvisionalPNRIntervalDurationMetric init failed!", v121, 2u);
      MEMORY[0x25F8C51A0](v121, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  while (1)
  {
LABEL_19:
    v52 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v52 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v52);
    ++v46;
    if (v50)
    {
      goto LABEL_22;
    }
  }

  v138 = v161;
  v65 = v132;
  sub_25E9D77B0();
  v67 = v126;
  v66 = v127;
  v68 = *(v126 + 48);
  if (v68(v65, 1, v127) == 1)
  {
    sub_25E981210(v65, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v69 = 0;
  }

  else
  {
    v74 = v129;
    (*(v67 + 32))(v129, v65, v66);
    v75 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v76 = sub_25E9D77D0();
    v69 = [v75 initWithNSUUID_];

    (*(v67 + 8))(v74, v66);
  }

  v14 = v124;
  [v138 setClientRequestId_];

  v77 = v133;
  sub_25E9D77B0();
  if (v68(v77, 1, v66) == 1)
  {
    sub_25E981210(v77, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v78 = 0;
  }

  else
  {
    v79 = v126;
    v80 = v130;
    (*(v126 + 32))(v130, v77, v66);
    v81 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v82 = sub_25E9D77D0();
    v78 = [v81 initWithNSUUID_];

    (*(v79 + 8))(v80, v66);
  }

  [v138 setRawSessionId_];

  v83 = v134;
  sub_25E9D77B0();
  if (v68(v83, 1, v66) == 1)
  {
    sub_25E981210(v83, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v84 = 0;
    v37 = v125;
    v85 = v126;
    v86 = 0x279A43000;
  }

  else
  {
    v85 = v126;
    v87 = v131;
    (*(v126 + 32))(v131, v83, v66);
    v88 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v89 = sub_25E9D77D0();
    v86 = 0x279A43000uLL;
    v84 = [v88 initWithNSUUID_];

    (*(v85 + 8))(v87, v66);
    v37 = v125;
  }

  [v138 setClientSessionId_];

  v90 = v145;
  if (v145)
  {
    sub_25E9A8130();
    v90 = v91;
  }

  v92 = v138;
  [v138 setFailureInfo_];

  v93 = sub_25E9D8070();
  [v92 setToolIds_];

  v94 = sub_25E9D8070();
  [v92 setBundleIds_];

  v95 = v123;
  sub_25E9D77E0();
  v96 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v97 = sub_25E9D77D0();
  v98 = [v96 *(v86 + 2808)];

  (*(v85 + 8))(v95, v66);
  [v37 setPnrodId_];

  [v14 setEventMetadata_];
  [v14 setPnrodIntelligenceFlowRequestGrainSummary_];
  if (qword_27FD0D588 != -1)
  {
    goto LABEL_71;
  }

LABEL_49:
  v99 = sub_25E9D7F10();
  __swift_project_value_buffer(v99, qword_27FD0DAD0);
  v100 = v14;
  v101 = sub_25E9D7F00();
  v102 = sub_25E9D8120();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v147[0] = v104;
    *v103 = 136315394;
    v105 = [v100 qualifiedMessageName];
    v106 = sub_25E9D7FB0();
    v108 = v107;

    v109 = sub_25E9887EC(v106, v108, v147);

    *(v103 + 4) = v109;
    *(v103 + 12) = 2080;
    v110 = [v100 formattedJsonBody];
    if (v110)
    {
      v111 = v110;
      v112 = sub_25E9D7FB0();
      v114 = v113;
    }

    else
    {
      v114 = 0xE500000000000000;
      v112 = 0x3E4C494E3CLL;
    }

    v115 = sub_25E9887EC(v112, v114, v147);

    *(v103 + 14) = v115;
    _os_log_impl(&dword_25E971000, v101, v102, "Creating %s\n%s", v103, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v104, -1, -1);
    MEMORY[0x25F8C51A0](v103, -1, -1);
  }

  else
  {
  }

  return v14;
}

char *sub_25E9BB530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 <= 2)
      {
        if (!v4)
        {
          goto LABEL_4;
        }

        if (v4 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v10 = *(v3 + 3);
          v8 = v7 + 1;
          v9 = 1;
          if (v7 >= v10 >> 1)
          {
            v3 = sub_25E983E7C((v10 > 1), v7 + 1, 1, v3);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v12 = *(v3 + 3);
          v8 = v7 + 1;
          if (v7 >= v12 >> 1)
          {
            v3 = sub_25E983E7C((v12 > 1), v7 + 1, 1, v3);
          }

          v9 = 2;
        }
      }

      else if (v4 > 4)
      {
        if (v4 == 5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v11 = *(v3 + 3);
          v8 = v7 + 1;
          if (v7 >= v11 >> 1)
          {
            v3 = sub_25E983E7C((v11 > 1), v7 + 1, 1, v3);
          }

          v9 = 4;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v14 = *(v3 + 3);
          v8 = v7 + 1;
          if (v7 >= v14 >> 1)
          {
            v3 = sub_25E983E7C((v14 > 1), v7 + 1, 1, v3);
          }

          v9 = 7;
        }
      }

      else if (v4 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        v8 = v7 + 1;
        if (v7 >= v6 >> 1)
        {
          v3 = sub_25E983E7C((v6 > 1), v7 + 1, 1, v3);
        }

        v9 = 5;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v13 = *(v3 + 3);
        v8 = v7 + 1;
        if (v7 >= v13 >> 1)
        {
          v3 = sub_25E983E7C((v13 > 1), v7 + 1, 1, v3);
        }

        v9 = 8;
      }

      *(v3 + 2) = v8;
      *&v3[4 * v7 + 32] = v9;
LABEL_4:
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_25E9BB820()
{
  v1 = v0[18];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[6];
  v3 = v0[15];
  v4 = v0[17] == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00;
  if (!v4 && (sub_25E9D8300() & 1) == 0)
  {
    return 0;
  }

  return v2 > 0 || v3 > 0;
}

uint64_t sub_25E9BB8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E9BB8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC88, &qword_25E9DBB80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v108 = &v98 - v2;
  v3 = sub_25E9D7E20();
  v106 = *(v3 - 8);
  v107 = v3;
  v4 = *(v106 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v104 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v105 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC90, &qword_25E9DBB88);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v109 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v111 = &v98 - v13;
  MEMORY[0x28223BE20](v12);
  v110 = &v98 - v14;
  v15 = sub_25E9D7C00();
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v15);
  v114 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC98, &qword_25E9DBB90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v98 - v20;
  v22 = sub_25E9D7D50();
  v116 = *(v22 - 8);
  v117 = v22;
  v23 = *(v116 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v115 = &v98 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCA0, &qword_25E9DBB98);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v98 - v30;
  v32 = sub_25E9D7D00();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v118 = &v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCA8, qword_25E9DBBA0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v98 - v38;
  v40 = sub_25E9D7DA0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E9D7C90();
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    v45 = &qword_27FD0DCA8;
    v46 = qword_25E9DBBA0;
    v47 = v39;
LABEL_7:
    sub_25E981210(v47, v45, v46);
    return 0;
  }

  (*(v41 + 32))(v44, v39, v40);
  sub_25E9D7D90();
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    (*(v41 + 8))(v44, v40);
    v45 = &qword_27FD0DCA0;
    v46 = &qword_25E9DBB98;
    v47 = v31;
    goto LABEL_7;
  }

  v103 = v44;
  v48 = v118;
  (*(v33 + 32))(v118, v31, v32);
  sub_25E9D7CF0();
  v50 = v116;
  v49 = v117;
  if ((*(v116 + 48))(v21, 1, v117) == 1)
  {
    (*(v33 + 8))(v48, v32);
    (*(v41 + 8))(v103, v40);
    v45 = &qword_27FD0DC98;
    v46 = &qword_25E9DBB90;
    v47 = v21;
    goto LABEL_7;
  }

  v101 = v33;
  v102 = v32;
  v52 = v115;
  (*(v50 + 32))(v115, v21, v49);
  (*(v50 + 16))(v26, v52, v49);
  if ((*(v50 + 88))(v26, v49) != *MEMORY[0x277D23608])
  {
    v60 = *(v50 + 8);
    v60(v52, v49);
    (*(v101 + 8))(v118, v102);
    (*(v41 + 8))(v103, v40);
    v60(v26, v49);
    return 0;
  }

  (*(v50 + 96))(v26, v49);
  v53 = v112;
  v54 = v114;
  v55 = v26;
  v56 = v113;
  (*(v112 + 32))(v114, v55, v113);
  v57 = v110;
  sub_25E9D7BF0();
  v58 = sub_25E9D78C0();
  v100 = *(v58 - 8);
  v59 = *(v100 + 48);
  if (v59(v57, 1, v58) == 1)
  {
    (*(v53 + 8))(v54, v56);
    (*(v50 + 8))(v115, v117);
    (*(v101 + 8))(v118, v102);
    (*(v41 + 8))(v103, v40);
    v45 = &qword_27FD0DC90;
    v46 = &qword_25E9DBB88;
    v47 = v57;
    goto LABEL_7;
  }

  sub_25E981210(v57, &qword_27FD0DC90, &qword_25E9DBB88);
  v61 = v111;
  sub_25E9D7BF0();
  v110 = v58;
  v99 = v59;
  result = (v59)(v61, 1, v58);
  if (result == 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v62 = v108;
  sub_25E9D78B0();
  v63 = sub_25E9D78D0();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 48))(v62, 1, v63);
  v66 = v118;
  v67 = v109;
  v68 = v100;
  if (v65 == 1)
  {
    sub_25E981210(v62, &qword_27FD0DC88, &qword_25E9DBB80);
    v69 = v99;
    goto LABEL_23;
  }

  v70 = (*(v64 + 88))(v62, v63);
  v69 = v99;
  if (v70 != *MEMORY[0x277D234B0])
  {
    (*(v64 + 8))(v62, v63);
LABEL_23:
    v92 = *(v68 + 8);
    v93 = v110;
    v92(v111, v110);
    v94 = v114;
    sub_25E9D7BF0();
    result = v69(v67, 1, v93);
    if (result != 1)
    {
      v95 = sub_25E9823C8();
      v97 = v96;
      (*(v112 + 8))(v94, v113, v95);
      (*(v116 + 8))(v115, v117);
      (*(v101 + 8))(v66, v102);
      (*(v41 + 8))(v103, v40);
      v92(v67, v93);
      return v97;
    }

    goto LABEL_26;
  }

  (*(v64 + 96))(v62, v63);
  v72 = v105;
  v71 = v106;
  v73 = v107;
  (*(v106 + 32))(v105, v62, v107);
  (*(v68 + 8))(v111, v110);
  v74 = v104;
  (*(v71 + 16))(v104, v72, v73);
  v120[0] = 89;
  type metadata accessor for PNRError();
  swift_allocObject();
  v75 = sub_25E9A7B94(v74, v120);
  if (qword_27FD0D5A0 != -1)
  {
    swift_once();
  }

  v76 = sub_25E9D7F10();
  __swift_project_value_buffer(v76, qword_27FD0DB18);

  v77 = sub_25E9D7F00();
  v78 = sub_25E9D8120();

  v79 = os_log_type_enabled(v77, v78);
  v80 = v114;
  if (v79)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v119 = v82;
    *v81 = 136315138;
    v83 = sub_25E9A7C94();
    v85 = sub_25E9887EC(v83, v84, &v119);

    *(v81 + 4) = v85;
    v80 = v114;
    _os_log_impl(&dword_25E971000, v77, v78, "Found developerDefinedError: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x25F8C51A0](v82, -1, -1);
    MEMORY[0x25F8C51A0](v81, -1, -1);
  }

  v87 = v112;
  v86 = v113;
  v88 = v116;
  type metadata accessor for PNRFailureInfo();
  v89 = swift_allocObject();
  *(v89 + 16) = 9733;
  *(v89 + 18) = 42;
  *(v89 + 24) = v75;
  *(v89 + 32) = 0u;
  *(v89 + 48) = 0u;

  v91 = sub_25E981274(v90, v89);

  (*(v106 + 8))(v105, v107);
  (*(v87 + 8))(v80, v86);
  (*(v88 + 8))(v115, v117);
  (*(v101 + 8))(v118, v102);
  (*(v41 + 8))(v103, v40);
  return v91;
}

uint64_t _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(uint64_t a1)
{
  v2 = sub_25E9D7D60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v90 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v91 = &v77 - v7;
  v8 = sub_25E9D7C20();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E9D7BB0();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E9D7DC0();
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v14);
  v87 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC78, &qword_25E9DBB78);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v98 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v77 - v21;
  v23 = sub_25E9D7BD0();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v96 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v77 - v28;
  if (qword_27FD0D5A0 != -1)
  {
    swift_once();
  }

  v30 = sub_25E9D7F10();
  v31 = __swift_project_value_buffer(v30, qword_27FD0DB18);
  v92 = v24[2];
  v93 = v24 + 2;
  v92(v29, a1, v23);
  v95 = v31;
  v32 = sub_25E9D7F00();
  v33 = sub_25E9D8120();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v24;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v79 = v2;
    v36 = v35;
    v37 = swift_slowAlloc();
    v80 = a1;
    v78 = v22;
    v38 = v37;
    v99[0] = v37;
    *v36 = 136315138;
    sub_25E9BD07C();
    v39 = sub_25E9D78A0();
    v40 = v3;
    v42 = v41;
    v43 = v24[1];
    v44 = v23;
    v94 = v43;
    v43(v29, v23);
    v45 = sub_25E9887EC(v39, v42, v99);
    v3 = v40;

    *(v36 + 4) = v45;
    _os_log_impl(&dword_25E971000, v32, v33, "Processing criticalError from transcript: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v46 = v38;
    v22 = v78;
    a1 = v80;
    MEMORY[0x25F8C51A0](v46, -1, -1);
    v47 = v36;
    v2 = v79;
    MEMORY[0x25F8C51A0](v47, -1, -1);
  }

  else
  {

    v48 = v24[1];
    v44 = v23;
    v94 = v48;
    v48(v29, v23);
  }

  sub_25E9D7BC0();
  v49 = sub_25E9D7CE0();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 48))(v22, 1, v49);
  v52 = v98;
  if (v51 == 1)
  {
    goto LABEL_7;
  }

  sub_25E9BD0D4(v22, v98);
  v63 = (*(v50 + 88))(v52, v49);
  if (v63 == *MEMORY[0x277D235E8])
  {
    (*(v50 + 96))(v52, v49);
    v64 = v91;
    (*(v3 + 32))(v91, v52, v2);
    v65 = v90;
    (*(v3 + 16))(v90, v64, v2);
    LOBYTE(v99[0]) = 89;
    type metadata accessor for PNRError();
    swift_allocObject();
    v66 = sub_25E9A7B54(v65, v99);
    (*(v3 + 8))(v64, v2);
    type metadata accessor for PNRFailureInfo();
    v67 = swift_allocObject();
    *(v67 + 16) = 16129;
    *(v67 + 18) = 63;
    *(v67 + 24) = v66;
    *(v67 + 32) = 0u;
    *(v67 + 48) = 0u;
    goto LABEL_20;
  }

  if (v63 == *MEMORY[0x277D235D0])
  {
    (*(v50 + 96))(v52, v49);
    v72 = v87;
    v71 = v88;
    v73 = v89;
    (*(v88 + 32))(v87, v52, v89);
    v75.n128_f64[0] = sub_25E9BD158();
LABEL_19:
    v67 = v74;
    (*(v71 + 8))(v72, v73, v75);
    goto LABEL_20;
  }

  if (v63 == *MEMORY[0x277D235D8])
  {
    (*(v50 + 96))(v52, v49);
    v72 = v84;
    v71 = v85;
    v73 = v86;
    (*(v85 + 32))(v84, v52, v86);
    v75.n128_f64[0] = sub_25E982484();
    goto LABEL_19;
  }

  if (v63 == *MEMORY[0x277D235E0])
  {
    (*(v50 + 96))(v52, v49);
    v72 = v81;
    v71 = v82;
    v73 = v83;
    (*(v82 + 32))(v81, v52, v83);
    v74 = sub_25E981D64();
    goto LABEL_19;
  }

  (*(v50 + 8))(v52, v49);
LABEL_7:
  v53 = v96;
  v54 = v44;
  v92(v96, a1, v44);
  v55 = sub_25E9D7F00();
  v56 = sub_25E9D8120();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v99[0] = v58;
    *v57 = 136315138;
    sub_25E9BD07C();
    v59 = sub_25E9D78A0();
    v61 = v60;
    v94(v53, v54);
    v62 = sub_25E9887EC(v59, v61, v99);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_25E971000, v55, v56, "Unrecognized error from criticalError: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x25F8C51A0](v58, -1, -1);
    MEMORY[0x25F8C51A0](v57, -1, -1);
  }

  else
  {

    v94(v53, v44);
  }

  sub_25E9BD07C();
  v68 = sub_25E9D78A0();
  v70 = v69;
  type metadata accessor for PNRFailureInfo();
  v67 = swift_allocObject();
  *(v67 + 16) = 16129;
  *(v67 + 18) = 63;
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 40) = 0;
  *(v67 + 48) = v68;
  *(v67 + 56) = v70;
LABEL_20:
  sub_25E981210(v22, &qword_27FD0DC78, &qword_25E9DBB78);
  return v67;
}

unint64_t sub_25E9BD07C()
{
  result = qword_27FD0DC80;
  if (!qword_27FD0DC80)
  {
    sub_25E9D7BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DC80);
  }

  return result;
}

uint64_t sub_25E9BD0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC78, &qword_25E9DBB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_25E9BD158()
{
  v0 = sub_25E9D7D60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB0, &unk_25E9DBBF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  sub_25E9D7DB0();
  v18 = sub_25E9D7E10();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_25E9BD758(v17, v15);
    v21 = (*(v19 + 88))(v15, v18);
    if (v21 == *MEMORY[0x277D23638])
    {
      (*(v19 + 96))(v15, v18);
      (*(v1 + 32))(v5, v15, v0);
      (*(v1 + 16))(v10, v5, v0);
      v39 = 89;
      type metadata accessor for PNRError();
      swift_allocObject();
      v20 = sub_25E9A7B54(v10, &v39);
      v22 = qword_27FD0D5A0;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = sub_25E9D7F10();
      __swift_project_value_buffer(v23, qword_27FD0DB18);
      v24 = sub_25E9D7F00();
      v25 = sub_25E9D8120();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v38 = v35;
        *v26 = 136315138;
        v27 = sub_25E9A7C94();
        v29 = v1;
        v30 = sub_25E9887EC(v27, v28, &v38);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_25E971000, v24, v25, "Processing TranscriptProtoSessionCoordinatorError.other %s", v26, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x25F8C51A0](v31, -1, -1);
        MEMORY[0x25F8C51A0](v26, -1, -1);

        (*(v29 + 8))(v5, v0);
      }

      else
      {

        (*(v1 + 8))(v5, v0);
      }
    }

    else
    {
      if (v21 == *MEMORY[0x277D23628])
      {
        (*(v19 + 96))(v15, v18);
        (*(v1 + 32))(v10, v15, v0);
        (*(v1 + 16))(v8, v10, v0);
        v37 = 89;
        type metadata accessor for PNRError();
        swift_allocObject();
        v32 = &v37;
      }

      else
      {
        if (v21 != *MEMORY[0x277D23630])
        {
          (*(v19 + 8))(v15, v18);
          v20 = 0;
          goto LABEL_15;
        }

        (*(v19 + 96))(v15, v18);
        (*(v1 + 32))(v10, v15, v0);
        (*(v1 + 16))(v8, v10, v0);
        v36 = 89;
        type metadata accessor for PNRError();
        swift_allocObject();
        v32 = &v36;
      }

      v20 = sub_25E9A7B54(v8, v32);
      (*(v1 + 8))(v10, v0);
    }
  }

LABEL_15:
  sub_25E9BD6F0(v17);
  type metadata accessor for PNRFailureInfo();
  v33 = swift_allocObject();
  *(v33 + 16) = 16130;
  *(v33 + 18) = 63;
  *(v33 + 24) = v20;
  result = 0.0;
  *(v33 + 32) = 0u;
  *(v33 + 48) = 0u;
  return result;
}

uint64_t sub_25E9BD6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB0, &unk_25E9DBBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E9BD758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB0, &unk_25E9DBBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9BD7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCF0, &qword_25E9DBDA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25E9DA580;
  v2 = v0[2];
  *(v1 + 56) = type metadata accessor for RequestGrainDimensionsSpec();
  *(v1 + 64) = &off_2870ACB78;
  *(v1 + 32) = v2;
  v3 = v0[3];
  v4 = type metadata accessor for IETranscriptLatencyIntervalSpec();
  *(v1 + 96) = v4;
  *(v1 + 104) = &off_2870ACB88;
  *(v1 + 72) = v3;
  *(v1 + 136) = v4;
  *(v1 + 144) = &off_2870ACB88;
  v5 = v0[5];
  *(v1 + 112) = v0[4];
  *(v1 + 176) = v4;
  *(v1 + 184) = &off_2870ACB88;
  *(v1 + 152) = v5;
  *(v1 + 216) = v4;
  *(v1 + 224) = &off_2870ACB88;
  v7 = v0[6];
  v6 = v0[7];
  *(v1 + 192) = v7;
  *(v1 + 256) = v4;
  *(v1 + 264) = &off_2870ACB88;
  *(v1 + 232) = v6;

  return v1;
}

uint64_t sub_25E9BD8BC(uint64_t a1)
{
  v2 = sub_25E9BD7C8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_25E986C6C(v4, v8);
      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v6 + 8))(a1, v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

void *IERequestGrainSpec.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return v0;
}

uint64_t IERequestGrainSpec.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

void *sub_25E9BDA40()
{
  type metadata accessor for RequestGrainDimensionsSpec();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 128) = MEMORY[0x277D84F90];
  *(v1 + 136) = v2;
  type metadata accessor for IERequestGrainFeatureTags();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  *(v1 + 144) = v3;
  *(v0 + 16) = v1;
  type metadata accessor for IETranscriptLatencyIntervalSpec();
  v4 = swift_allocObject();
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[1] = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v5 = sub_25E9D7B60();
  v6 = *(v5 - 8);
  v70 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25E9D96A0;
  v74 = *(v6 + 104);
  v9 = v5;
  (v74)(v8 + v7, *MEMORY[0x277D23528], v5);
  Event = type metadata accessor for IETranscriptNextEvent(0);
  v11 = *(Event + 48);
  v12 = *(Event + 52);
  v68 = Event;
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  v15 = sub_25E9D7A10();
  v71 = *(*(v15 - 8) + 56);
  v71(v13 + v14, 1, 1, v15);
  *(v13 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v8;
  v16 = MEMORY[0x277D84F90];
  *(v13 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v17 = type metadata accessor for IETranscriptEventFilter(0);
  v77 = v17;
  v78 = &off_2870ACBA8;
  v76[0] = v13;
  swift_beginAccess();
  sub_25E986D14(v76, (v4 + 1));
  swift_endAccess();
  v18 = v9;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25E9D9690;
  v75 = v7;
  v20 = v19 + v7;
  v21 = v15;
  v66 = *MEMORY[0x277D23508];
  v74(v20);
  v69 = *MEMORY[0x277D23500];
  v74(v20 + v70);
  v22 = type metadata accessor for IETranscriptLastEvent(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v65 = v22;
  v25 = swift_allocObject();
  v71(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v19;
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = v16;
  v77 = v17;
  v78 = &off_2870ACBA8;
  v72 = v17;
  v76[0] = v25;
  swift_beginAccess();
  sub_25E986D14(v76, v4 + 56);
  swift_endAccess();
  v73[3] = v4;
  v26 = swift_allocObject();
  v26[1] = 0u;
  v26[2] = 0u;
  v26[3] = 0u;
  v26[4] = 0u;
  v26[5] = 0u;
  if (qword_27FD0D5D8 != -1)
  {
    swift_once();
  }

  v27 = qword_27FD0F560;
  v28 = *(v68 + 48);
  v29 = *(v68 + 52);
  v30 = swift_allocObject();
  v71(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v27;
  *(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v17;
  v78 = &off_2870ACBA8;
  v76[0] = v30;
  swift_beginAccess();

  sub_25E986D14(v76, (v26 + 1));
  swift_endAccess();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25E9D9690;
  v64 = *MEMORY[0x277D234C0];
  v74(v31 + v75);
  (v74)(v31 + v75 + v70, v69, v18);
  v32 = *(v68 + 48);
  v33 = *(v68 + 52);
  v34 = swift_allocObject();
  v71(v34 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v34 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v31;
  *(v34 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v17;
  v78 = &off_2870ACBA8;
  v76[0] = v34;
  swift_beginAccess();
  sub_25E986D14(v76, v26 + 56);
  swift_endAccess();
  v73[4] = v26;
  v35 = swift_allocObject();
  v35[2] = 0u;
  v35[3] = 0u;
  v35[4] = 0u;
  v35[5] = 0u;
  v35[1] = 0u;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_25E9D96A0;
  (v74)(v36 + v75, *MEMORY[0x277D234C8], v18);
  v37 = type metadata accessor for IETranscriptAllEvent(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v71(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v36;
  *(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v72;
  v78 = &off_2870ACBA8;
  v76[0] = v40;
  swift_beginAccess();
  sub_25E986D14(v76, (v35 + 1));
  swift_endAccess();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_25E9D96A0;
  v67 = *MEMORY[0x277D23520];
  v74(v41 + v75);
  v42 = *(v37 + 48);
  v43 = *(v37 + 52);
  v44 = swift_allocObject();
  v71(v44 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v44 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v41;
  *(v44 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v72;
  v78 = &off_2870ACBA8;
  v76[0] = v44;
  swift_beginAccess();
  sub_25E986D14(v76, v35 + 56);
  swift_endAccess();
  v73[5] = v35;
  v45 = swift_allocObject();
  v45[2] = 0u;
  v45[3] = 0u;
  v45[4] = 0u;
  v45[5] = 0u;
  v45[1] = 0u;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_25E9D9690;
  (v74)(v46 + v75, v64, v18);
  (v74)(v46 + v75 + v70, *MEMORY[0x277D234F0], v18);
  v47 = *(v68 + 48);
  v48 = *(v68 + 52);
  v49 = swift_allocObject();
  v71(v49 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v49 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v46;
  *(v49 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v72;
  v78 = &off_2870ACBA8;
  v76[0] = v49;
  swift_beginAccess();
  sub_25E986D14(v76, (v45 + 1));
  swift_endAccess();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_25E9D96A0;
  (v74)(v50 + v75, v67, v18);
  v51 = *(v65 + 48);
  v52 = *(v65 + 52);
  v53 = swift_allocObject();
  v71(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v50;
  *(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v72;
  v78 = &off_2870ACBA8;
  v76[0] = v53;
  swift_beginAccess();
  sub_25E986D14(v76, v45 + 56);
  swift_endAccess();
  v73[6] = v45;
  v54 = swift_allocObject();
  v54[2] = 0u;
  v54[3] = 0u;
  v54[4] = 0u;
  v54[5] = 0u;
  v54[1] = 0u;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_25E9D96A0;
  (v74)(v55 + v75, v67, v18);
  v56 = *(v65 + 48);
  v57 = *(v65 + 52);
  v58 = swift_allocObject();
  v71(v58 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v15);
  *(v58 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v55;
  *(v58 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v72;
  v78 = &off_2870ACBA8;
  v76[0] = v58;
  swift_beginAccess();
  sub_25E986D14(v76, (v54 + 1));
  swift_endAccess();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_25E9D9690;
  (v74)(v59 + v75, v66, v18);
  (v74)(v59 + v75 + v70, v69, v18);
  v60 = *(v65 + 48);
  v61 = *(v65 + 52);
  v62 = swift_allocObject();
  v71(v62 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v21);
  *(v62 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v59;
  *(v62 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v77 = v72;
  v78 = &off_2870ACBA8;
  v76[0] = v62;
  swift_beginAccess();
  sub_25E986D14(v76, v54 + 56);
  swift_endAccess();
  result = v73;
  v73[7] = v54;
  return result;
}

uint64_t sub_25E9BE6A0(uint64_t a1)
{
  v2 = v1;
  v279 = sub_25E9D7BD0();
  v278 = *(v279 - 1);
  v4 = *(v278 + 64);
  MEMORY[0x28223BE20](v279);
  v277 = &v263 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_25E9D7CA0();
  v271 = *(v272 - 8);
  v6 = *(v271 + 64);
  MEMORY[0x28223BE20](v272);
  v273 = (&v263 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D878, &unk_25E9DBD50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v282 = (&v263 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v270 = (&v263 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v288 = &v263 - v15;
  v289 = sub_25E9D7A40();
  v297 = *(v289 - 1);
  v16 = *(v297 + 64);
  MEMORY[0x28223BE20](v289);
  v305 = &v263 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB8, &qword_25E9DBD60);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v263 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v275 = &v263 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v280 = &v263 - v26;
  MEMORY[0x28223BE20](v25);
  v285 = &v263 - v27;
  v286 = sub_25E9D7B40();
  v293 = *(v286 - 8);
  v28 = *(v293 + 64);
  v29 = MEMORY[0x28223BE20](v286);
  v276 = &v263 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v284 = &v263 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCC0, &qword_25E9DBD68);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v274 = (&v263 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v34);
  v283 = &v263 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v287 = (&v263 - v39);
  MEMORY[0x28223BE20](v38);
  v295 = (&v263 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCC8, &qword_25E9DBD70);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v298 = (&v263 - v43);
  v299 = sub_25E9D7AC0();
  v292 = *(v299 - 8);
  v44 = *(v292 + 64);
  v45 = MEMORY[0x28223BE20](v299);
  v281 = &v263 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v294 = &v263 - v47;
  v303 = sub_25E9D7E00();
  v291 = *(v303 - 8);
  v48 = *(v291 + 64);
  MEMORY[0x28223BE20](v303);
  v304 = &v263 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCD0, &qword_25E9DBD78);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v313 = &v263 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCD8, &qword_25E9DBD80);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v308 = &v263 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v314 = &v263 - v57;
  v58 = sub_25E9D7CD0();
  v59 = *(v58 - 8);
  v311 = v58;
  v312 = v59;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v310 = &v263 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25E9D7980();
  v301 = *(v62 - 8);
  v302 = v62;
  v63 = *(v301 + 64);
  v64 = MEMORY[0x28223BE20](v62);
  v296 = &v263 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v300 = &v263 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE0, &qword_25E9DBD88);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v70 = &v263 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE8, &unk_25E9DBD90);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v74 = &v263 - v73;
  v75 = sub_25E9D7AA0();
  v306 = *(v75 - 8);
  v76 = *(v306 + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v263 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v82 = &v263 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v84 = *(*(v83 - 8) + 64);
  v85 = MEMORY[0x28223BE20](v83 - 8);
  v87 = &v263 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v309 = &v263 - v88;
  if (sub_25E9C1098())
  {
    v89 = sub_25E9D79D0();
    v90 = *(v2 + 15);
    *(v2 + 14) = v89;
    *(v2 + 15) = v91;
  }

  v307 = v2;
  v290 = a1;
  sub_25E9D79A0();
  v92 = sub_25E9D7A80();
  v93 = *(v92 - 8);
  if ((*(v93 + 48))(v82, 1, v92) == 1)
  {
    sub_25E981210(v82, &qword_27FD0D880, &unk_25E9D97C0);
    v94 = sub_25E9D7B90();
    v95 = v309;
    (*(*(v94 - 8) + 56))(v309, 1, 1, v94);
    return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  v269 = v22;
  v96 = v309;
  sub_25E9D7A70();
  v98 = *(v93 + 8);
  v97 = v93 + 8;
  v99 = v92;
  v95 = v96;
  v98(v82, v99);
  v100 = sub_25E9D7B90();
  v101 = *(v100 - 8);
  if ((*(v101 + 48))(v96, 1, v100) == 1)
  {
    return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9811A8(v96, v87, &qword_27FD0D888, &qword_25E9DBDA0);
  result = (*(v101 + 88))(v87, v100);
  if (result == *MEMORY[0x277D23588])
  {
    (*(v101 + 96))(v87, v100);
    v103 = v306;
    (*(v306 + 32))(v78, v87, v75);
    sub_25E9D7A90();
    v97 = sub_25E9D7C70();
    v104 = *(v97 - 8);
    v105 = (*(v104 + 48))(v70, 1, v97);
    v106 = v307;
    if (v105 == 1)
    {
      (*(v103 + 8))(v78, v75);
      sub_25E981210(v70, &qword_27FD0DCE0, &qword_25E9DBD88);
      v107 = sub_25E9D7D20();
      (*(*(v107 - 8) + 56))(v74, 1, 1, v107);
LABEL_15:
      sub_25E981210(v74, &qword_27FD0DCE8, &unk_25E9DBD90);
LABEL_16:
      v125 = *(v106 + 2);
      v110 = __OFADD__(v125, 1);
      v126 = v125 + 1;
      if (!v110)
      {
        *(v106 + 2) = v126;
        return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
      }

      __break(1u);
      goto LABEL_134;
    }

    sub_25E9D7C60();
    v123 = *(v103 + 8);
    v108 = v103 + 8;
    v123(v78, v75);
    (*(v104 + 8))(v70, v97);
    v75 = sub_25E9D7D20();
    v124 = *(v75 - 8);
    if ((*(v124 + 48))(v74, 1, v75) == 1)
    {
      goto LABEL_15;
    }

    v100 = (*(v124 + 88))(v74, v75);
    v70 = *MEMORY[0x277D23600];
    (*(v124 + 8))(v74, v75);
    if (v100 != v70)
    {
      goto LABEL_16;
    }

    v132 = *(v106 + 11);
    v110 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (!v110)
    {
      *(v106 + 11) = v133;
      return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    goto LABEL_137;
  }

  v108 = v307;
  if (result == *MEMORY[0x277D23538])
  {
    (*(v101 + 96))(v87, v100);
    v95 = v300;
    v106 = v301;
    v97 = v302;
    (*(v301 + 32))(v300, v87, v302);
    v109 = *(v108 + 24);
    v110 = __OFADD__(v109, 1);
    v111 = v109 + 1;
    if (!v110)
    {
      *(v108 + 24) = v111;
      if (qword_280F6FE70 == -1)
      {
LABEL_12:
        v112 = sub_25E9D7F10();
        v113 = __swift_project_value_buffer(v112, qword_280F6FE78);
        v114 = v296;
        (*(v106 + 2))(v296, v95, v97);
        v297 = v113;
        v115 = sub_25E9D7F00();
        v116 = sub_25E9D8120();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v315 = v118;
          *v117 = 136315138;
          v119 = sub_25E9D7970();
          v121 = v120;
          v289 = *(v106 + 1);
          v289(v114, v97);
          v122 = sub_25E9887EC(v119, v121, &v315);

          *(v117 + 4) = v122;
          _os_log_impl(&dword_25E971000, v115, v116, "Here is the planResponse%s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v118);
          MEMORY[0x25F8C51A0](v118, -1, -1);
          MEMORY[0x25F8C51A0](v117, -1, -1);
        }

        else
        {

          v289 = *(v106 + 1);
          v289(v114, v97);
        }

        v134 = v313;
        v135 = sub_25E9D7960();
        v95 = v135;
        v136 = *(v135 + 16);
        if (!v136)
        {
LABEL_83:

          v289(v300, v302);
          v95 = v309;
          return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
        }

        v108 = 0;
        v306 = v135 + ((*(v312 + 80) + 32) & ~*(v312 + 80));
        v305 = (v312 + 16);
        v137 = v312 + 8;
        LODWORD(v296) = *MEMORY[0x277D235B0];
        v282 = (v291 + 32);
        v279 = (v292 + 48);
        v278 = v292 + 32;
        v277 = (v292 + 8);
        LODWORD(v290) = *MEMORY[0x277D235A8];
        v291 += 8;
        v270 = (v292 + 16);
        v273 = (v293 + 16);
        LODWORD(v292) = *MEMORY[0x277D235A0];
        v293 += 8;
        LODWORD(v272) = *MEMORY[0x277D23598];
        LODWORD(v271) = *MEMORY[0x277D235B8];
        v138 = &qword_27FD0DCD8;
        v288 = (v312 + 8);
        while (1)
        {
          if (v108 >= *(v95 + 16))
          {
            __break(1u);
            goto LABEL_126;
          }

          v141 = v311;
          v142 = v312;
          v143 = v310;
          (*(v312 + 16))(v310, v306 + *(v312 + 72) * v108, v311);
          sub_25E9D7CC0();
          (*(v142 + 8))(v143, v141);
          v115 = sub_25E9D7B20();
          isa = v115[-1].isa;
          if ((*(isa + 6))(v134, 1, v115) == 1)
          {
            sub_25E981210(v134, &qword_27FD0DCD0, &qword_25E9DBD78);
            v139 = sub_25E9D7C50();
            v140 = v314;
            (*(*(v139 - 8) + 56))(v314, 1, 1, v139);
            goto LABEL_31;
          }

          v97 = v138;
          v145 = v314;
          sub_25E9D7B10();
          (*(isa + 1))(v134, v115);
          v140 = v145;
          v138 = v97;
          v115 = sub_25E9D7C50();
          v146 = v115[-1].isa;
          if ((*(v146 + 6))(v140, 1, v115) == 1)
          {
            goto LABEL_31;
          }

          v147 = v308;
          sub_25E9811A8(v140, v308, v97, &qword_25E9DBD80);
          v148 = (*(v146 + 11))(v147, v115);
          if (v148 == v296)
          {
            *(*(v307 + 18) + 19) = 1;
            v149 = sub_25E9D7F00();
            v150 = sub_25E9D8120();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              *v151 = 0;
              _os_log_impl(&dword_25E971000, v149, v150, "Found hasCall", v151, 2u);
              v152 = v151;
              v138 = v97;
              MEMORY[0x25F8C51A0](v152, -1, -1);
            }

            (*(v146 + 1))(v308, v115);
            v140 = v314;
            goto LABEL_31;
          }

          if (v148 != v290)
          {
            (*(v146 + 1))(v308, v115);
            goto LABEL_31;
          }

          v153 = v308;
          (*(v146 + 12))(v308, v115);
          (*v282)(v304, v153, v303);
          *(*(v307 + 18) + 16) = 1;
          v154 = sub_25E9D7F00();
          v155 = sub_25E9D8120();
          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            *v156 = 0;
            _os_log_impl(&dword_25E971000, v154, v155, "Found Structured Search Request", v156, 2u);
            v157 = v156;
            v140 = v314;
            MEMORY[0x25F8C51A0](v157, -1, -1);
          }

          v158 = *(sub_25E9D7DE0() + 16);

          v159 = v299;
          if (v158)
          {
            break;
          }

          if (*(sub_25E9D7DD0() + 16))
          {
            sub_25E978F5C(0x6562697263736564, 0xE800000000000000);
            v169 = v168;

            if (v169)
            {
              break;
            }
          }

          else
          {
          }

LABEL_46:
          v115 = v298;
          v164 = v304;
          sub_25E9D7DF0();
          if ((*v279)(v115, 1, v159) != 1)
          {
            v165 = v294;
            (*v278)(v294, v115, v159);
            v115 = v295;
            sub_25E9D7AB0();
            v166 = sub_25E9D7BE0();
            v167 = *(v166 - 8);
            v268 = *(v167 + 48);
            if (v268(v115, 1, v166) == 1)
            {
              (*v277)(v165, v159);
              (*v291)(v304, v303);
              goto LABEL_51;
            }

            v170 = v287;
            sub_25E9811A8(v115, v287, &qword_27FD0DCC0, &qword_25E9DBD68);
            v267 = *(v167 + 88);
            v171 = (v267)(v170, v166);
            v172 = v167;
            if (v171 == v292)
            {
              (*(v167 + 96))(v170, v166);
              v268 = *v170;
              v173 = swift_projectBox();
              v174 = v284;
              v175 = v286;
              (*v273)(v284, v173, v286);
              v176 = v285;
              sub_25E9D7B30();
              v177 = sub_25E9D7C80();
              v178 = *(v177 - 8);
              if ((*(v178 + 48))(v176, 1, v177) == 1)
              {
                (*v293)(v174, v175);
                (*v277)(v294, v299);
                (*v291)(v304, v303);
                v137 = v288;
              }

              else
              {
                v185 = v176;
                v186 = v280;
                sub_25E9811A8(v185, v280, &qword_27FD0DCB8, &qword_25E9DBD60);
                v187 = (*(v178 + 88))(v186, v177);
                v137 = v288;
                if (v187 == v271)
                {
                  *(*(v307 + 18) + 18) = 1;
                  v188 = sub_25E9D7F00();
                  v189 = sub_25E9D8120();
                  v267 = v188;
                  v190 = os_log_type_enabled(v188, v189);
                  v191 = v284;
                  if (v190)
                  {
                    v192 = swift_slowAlloc();
                    *v192 = 0;
                    v193 = v189;
                    v194 = v192;
                    _os_log_impl(&dword_25E971000, v267, v193, "Found hasStructuredSearchReturnTypeCustom", v192, 2u);
                    MEMORY[0x25F8C51A0](v194, -1, -1);
                  }

                  (*v293)(v191, v286);
                }

                else
                {
                  (*v293)(v284, v286);
                }

                (*v277)(v294, v299);
                (*v291)(v304, v303);
                (*(v178 + 8))(v186, v177);
                v176 = v285;
              }

              sub_25E981210(v176, &qword_27FD0DCB8, &qword_25E9DBD60);

              v115 = v295;
              v140 = v314;
              v138 = v97;
              goto LABEL_82;
            }

            if (v171 == v272)
            {
              v264 = *(v167 + 96);
              v265 = v167 + 96;
              v264(v170, v166);
              v266 = *v170;
              v179 = swift_projectBox();
              v180 = v281;
              (*v270)(v281, v179, v299);
              v181 = v283;
              sub_25E9D7AB0();
              if (v268(v181, 1, v166) == 1)
              {
                v182 = *v277;
                v183 = v180;
                v184 = v299;
                (*v277)(v183, v299);
                v182(v294, v184);
                (*v291)(v304, v303);
                goto LABEL_74;
              }

              v195 = v274;
              sub_25E9811A8(v283, v274, &qword_27FD0DCC0, &qword_25E9DBD68);
              v196 = (v267)(v195, v166);
              v197 = v276;
              if (v196 == v292)
              {
                v264(v195, v166);
                v198 = *v195;
                v199 = swift_projectBox();
                v200 = v286;
                (*v273)(v197, v199, v286);
                v201 = v275;
                sub_25E9D7B30();
                v202 = sub_25E9D7C80();
                v203 = v202[-1].isa;
                if ((*(v203 + 6))(v201, 1, v202) == 1)
                {
                  (*v293)(v197, v200);
                  v204 = *v277;
                  v205 = v299;
                  (*v277)(v281, v299);
                  v204(v294, v205);
                  (*v291)(v304, v303);
                  v137 = v288;
                }

                else
                {
                  v209 = v269;
                  sub_25E9811A8(v201, v269, &qword_27FD0DCB8, &qword_25E9DBD60);
                  v210 = (*(v203 + 11))(v209, v202);
                  v211 = v281;
                  v137 = v288;
                  v268 = v198;
                  if (v210 == v271)
                  {
                    *(*(v307 + 18) + 18) = 1;
                    v212 = sub_25E9D7F00();
                    v213 = sub_25E9D8120();
                    if (os_log_type_enabled(v212, v213))
                    {
                      v214 = swift_slowAlloc();
                      *v214 = 0;
                      _os_log_impl(&dword_25E971000, v212, v213, "Found hasStructuredSearchReturnTypeCustom in collection", v214, 2u);
                      MEMORY[0x25F8C51A0](v214, -1, -1);
                    }

                    (*v293)(v276, v286);
                    v215 = *v277;
                    v216 = v299;
                    (*v277)(v281, v299);
                    v215(v294, v216);
                    (*v291)(v304, v303);
                    (*(v203 + 1))(v269, v202);
                  }

                  else
                  {
                    (*v293)(v276, v286);
                    v267 = v202;
                    v217 = *v277;
                    v218 = v299;
                    (*v277)(v211, v299);
                    v217(v294, v218);
                    (*v291)(v304, v303);
                    (*(v203 + 1))(v209, v267);
                  }
                }

                sub_25E981210(v275, &qword_27FD0DCB8, &qword_25E9DBD60);

                v208 = v283;
                v115 = v295;
                v140 = v314;
                v138 = v97;
              }

              else
              {
                v206 = *v277;
                v207 = v299;
                (*v277)(v281, v299);
                v206(v294, v207);
                (*v291)(v304, v303);
                (*(v172 + 8))(v195, v166);
LABEL_74:
                v208 = v283;
                v115 = v295;
                v140 = v314;
                v138 = v97;
                v137 = v288;
              }

              sub_25E981210(v208, &qword_27FD0DCC0, &qword_25E9DBD68);
            }

            else
            {
              (*v277)(v294, v299);
              (*v291)(v304, v303);
              (*(v167 + 8))(v170, v166);
              v115 = v295;
LABEL_51:
              v140 = v314;
              v138 = v97;
              v137 = v288;
            }

LABEL_82:
            sub_25E981210(v115, &qword_27FD0DCC0, &qword_25E9DBD68);
            goto LABEL_31;
          }

          (*v291)(v164, v303);
          sub_25E981210(v115, &qword_27FD0DCC8, &qword_25E9DBD70);
          v137 = v288;
LABEL_31:
          ++v108;
          sub_25E981210(v140, v138, &qword_25E9DBD80);
          v134 = v313;
          if (v136 == v108)
          {
            goto LABEL_83;
          }
        }

        *(*(v307 + 18) + 17) = 1;
        v160 = sub_25E9D7F00();
        v161 = sub_25E9D8120();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          _os_log_impl(&dword_25E971000, v160, v161, "Found hasStructuredSearchAnswerSynthesis", v162, 2u);
          v163 = v162;
          v140 = v314;
          MEMORY[0x25F8C51A0](v163, -1, -1);
        }

        goto LABEL_46;
      }

LABEL_135:
      swift_once();
      goto LABEL_12;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (result == *MEMORY[0x277D23540])
  {
    (*(v101 + 96))(v87, v100);
    v106 = v289;
    (*(v297 + 32))(v305, v87, v289);
    v127 = *(v108 + 48);
    v110 = __OFADD__(v127, 1);
    v128 = v127 + 1;
    if (v110)
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      v100 = sub_25E983A64(0, *(v100 + 16) + 1, 1, v100);
      *(v108 + 128) = v100;
LABEL_103:
      v236 = *(v100 + 16);
      v235 = *(v100 + 24);
      if (v236 >= v235 >> 1)
      {
        v100 = sub_25E983A64((v235 > 1), v236 + 1, 1, v100);
      }

      *(v100 + 16) = v236 + 1;
      v237 = v100 + 16 * v236;
      *(v237 + 32) = v70;
      *(v237 + 40) = v97;
      *(v108 + 128) = v100;
      swift_endAccess();
      v238 = v282;
      sub_25E9D7A20();
      v239 = sub_25E9D7D40();
      v240 = *(v239 - 8);
      if ((*(v240 + 48))(v238, 1, v239) == 1)
      {
        sub_25E981210(v238, &qword_27FD0D878, &unk_25E9DBD50);
      }

      else
      {
        v74 = sub_25E9D79E0();
        v75 = v241;
        (*(v240 + 8))(v238, v239);
      }

      swift_beginAccess();
      v242 = *(v108 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v108 + 136) = v242;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v242 = sub_25E983A64(0, *(v242 + 2) + 1, 1, v242);
        *(v108 + 136) = v242;
      }

      v245 = *(v242 + 2);
      v244 = *(v242 + 3);
      if (v245 >= v244 >> 1)
      {
        v242 = sub_25E983A64((v244 > 1), v245 + 1, 1, v242);
      }

      *(v242 + 2) = v245 + 1;
      v246 = &v242[16 * v245];
      *(v246 + 4) = v74;
      *(v246 + 5) = v75;
      *(v108 + 136) = v242;
      swift_endAccess();
      goto LABEL_113;
    }

    *(v108 + 48) = v128;
    v129 = v288;
    sub_25E9D79F0();
    v130 = sub_25E9D7C40();
    v131 = *(v130 - 8);
    if ((*(v131 + 48))(v129, 1, v130) == 1)
    {
      sub_25E981210(v129, &qword_27FD0D8A0, &unk_25E9D97E0);
LABEL_113:
      (*(v297 + 8))(v305, v106);
      return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    v221 = sub_25E9D79E0();
    v223 = v222;
    (*(v131 + 8))(v129, v130);
    if (v221 == 0x6F7365526E616C70 && v223 == 0xEE006E6F6974756CLL)
    {
    }

    else
    {
      v231 = sub_25E9D8300();

      if ((v231 & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    v75 = 0xEB00000000646569;
    v74 = 0x6669636570736E75;
    v232 = sub_25E9D7A30();
    if (v233)
    {
      v70 = v232;
    }

    else
    {
      v70 = 0x6669636570736E75;
    }

    if (v233)
    {
      v97 = v233;
    }

    else
    {
      v97 = 0xEB00000000646569;
    }

    swift_beginAccess();
    v100 = *(v108 + 128);
    v234 = swift_isUniquelyReferenced_nonNull_native();
    *(v108 + 128) = v100;
    if (v234)
    {
      goto LABEL_103;
    }

    goto LABEL_138;
  }

  if (result == *MEMORY[0x277D23568])
  {
    *(*(v307 + 18) + 20) = 1;
LABEL_87:
    (*(v101 + 8))(v87, v100);
    return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23550])
  {
    v219 = *(v307 + 5);
    v110 = __OFADD__(v219, 1);
    v220 = v219 + 1;
    if (!v110)
    {
      *(v307 + 5) = v220;
      goto LABEL_87;
    }

    __break(1u);
    goto LABEL_140;
  }

  if (result == *MEMORY[0x277D23548])
  {
    (*(v101 + 96))(v87, v100);
    v224 = v278;
    v225 = v277;
    v226 = v279;
    result = (*(v278 + 32))(v277, v87, v279);
    v227 = *(v108 + 96);
    v110 = __OFADD__(v227, 1);
    v228 = v227 + 1;
    if (v110)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    *(v108 + 96) = v228;
    v229 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(v225);
    (*(v224 + 8))(v225, v226);
LABEL_94:
    v230 = *(v108 + 104);
    *(v108 + 104) = v229;

    return sub_25E981210(v95, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23578])
  {
    v247 = *(v307 + 9);
    v110 = __OFADD__(v247, 1);
    v248 = v247 + 1;
    if (!v110)
    {
      *(v307 + 9) = v248;
      goto LABEL_87;
    }

    goto LABEL_141;
  }

  if (result == *MEMORY[0x277D23570])
  {
    v249 = *(v307 + 10);
    v110 = __OFADD__(v249, 1);
    v250 = v249 + 1;
    if (!v110)
    {
      *(v307 + 10) = v250;
      goto LABEL_87;
    }

    goto LABEL_142;
  }

  if (result != *MEMORY[0x277D23560])
  {
    goto LABEL_87;
  }

  (*(v101 + 96))(v87, v100);
  v136 = v271;
  v251 = v87;
  v134 = v272;
  result = (*(v271 + 32))(v273, v251, v272);
  v252 = *(v108 + 56);
  v110 = __OFADD__(v252, 1);
  v253 = v252 + 1;
  if (v110)
  {
    goto LABEL_143;
  }

  *(v108 + 56) = v253;
  v137 = v270;
  sub_25E9D79F0();
  v115 = sub_25E9D7C40();
  v97 = v115[-1].isa;
  if ((*(v97 + 48))(v137, 1, v115) == 1)
  {
    sub_25E981210(v137, &qword_27FD0D8A0, &unk_25E9D97E0);
LABEL_132:
    v262 = v273;
    v229 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0();
    (*(v136 + 8))(v262, v134);
    goto LABEL_94;
  }

LABEL_126:
  v254 = sub_25E9D79E0();
  v255 = v137;
  v256 = v254;
  v258 = v257;
  (*(v97 + 8))(v255, v115);
  if (v256 == 0x6F7365526E616C70 && v258 == 0xEE006E6F6974756CLL)
  {
  }

  else
  {
    v259 = sub_25E9D8300();

    if ((v259 & 1) == 0)
    {
      goto LABEL_132;
    }
  }

  v260 = *(v108 + 64);
  v110 = __OFADD__(v260, 1);
  v261 = v260 + 1;
  if (!v110)
  {
    *(v108 + 64) = v261;
    goto LABEL_132;
  }

LABEL_144:
  __break(1u);
  return result;
}

void *RequestGrainDimensionsSpec.deinit()
{
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  return v0;
}

uint64_t RequestGrainDimensionsSpec.__deallocating_deinit()
{
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  return swift_deallocClassInstance();
}

uint64_t sub_25E9C0FA4()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 128) = MEMORY[0x277D84F90];
  *(v0 + 136) = v1;
  type metadata accessor for IERequestGrainFeatureTags();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v0 + 144) = v2;
  return v0;
}

BOOL sub_25E9C1098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_25E9D79A0();
  v11 = sub_25E9D7A80();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_25E981210(v3, &qword_27FD0D880, &unk_25E9D97C0);
    v13 = sub_25E9D7B90();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  else
  {
    sub_25E9D7A70();
    (*(v12 + 8))(v3, v11);
    v14 = sub_25E9D7B90();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) != 1)
    {
      sub_25E9811A8(v10, v8, &qword_27FD0D888, &qword_25E9DBDA0);
      v16 = (*(v15 + 88))(v8, v14) == *MEMORY[0x277D23588];
      (*(v15 + 8))(v8, v14);
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  sub_25E981210(v10, &qword_27FD0D888, &qword_25E9DBDA0);
  return v16;
}

uint64_t sub_25E9C1384(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25E983F80(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25E9C147C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25E9840A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25E9C1574(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25E9842F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25E9C166C(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v142 = a2;
  v143 = a6;
  v130 = a4;
  v131 = a5;
  v156 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v124 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v140 = &v124 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v134 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v135 = &v124 - v24;
  MEMORY[0x28223BE20](v23);
  v138 = &v124 - v25;
  v144 = sub_25E9D7A10();
  v158 = *(v144 - 8);
  v26 = *(v158 + 64);
  v27 = MEMORY[0x28223BE20](v144);
  *&v152 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v157 = &v124 - v29;
  v30 = sub_25E9D7940();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25E9D78F0();
  v127 = *(v35 - 8);
  v128 = v35;
  v36 = *(v127 + 64);
  MEMORY[0x28223BE20](v35);
  v132 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD0D590 != -1)
  {
    swift_once();
  }

  v146 = sub_25E9D7F10();
  v38 = __swift_project_value_buffer(v146, qword_27FD0DAE8);

  v147 = v38;
  v39 = sub_25E9D7F00();
  v40 = sub_25E9D8140();

  v41 = os_log_type_enabled(v39, v40);
  v141 = a7;
  v148 = a3;
  v125 = v12;
  v137 = v17;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v162[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_25E9887EC(v142, a3, v162);
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_25E9887EC(v143, a7, v162);
    _os_log_impl(&dword_25E971000, v39, v40, "start for sessionId: %s clientRequestId: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v43, -1, -1);
    MEMORY[0x25F8C51A0](v42, -1, -1);
  }

  v44 = v157;
  v163 = MEMORY[0x277D84F90];
  (*(v127 + 16))(v132, v156, v128);
  sub_25E9D78E0();
  v45 = sub_25E9D7930();
  (*(v31 + 8))(v34, v30);
  v47 = *(v45 + 16);
  v48 = v144;
  if (!v47)
  {

    goto LABEL_41;
  }

  v49 = 0;
  v156 = *(v158 + 16);
  v50 = (*(v158 + 80) + 32) & ~*(v158 + 80);
  v124 = v45;
  v51 = v45 + v50;
  v155 = (v158 + 8);
  v158 += 16;
  v145 = *(v158 + 56);
  v133 = *MEMORY[0x277D23588];
  v129 = *MEMORY[0x277D23560];
  *&v46 = 136315138;
  v136 = v46;
  v126 = xmmword_25E9D96A0;
  v52 = v140;
  v53 = v138;
  do
  {
    v153 = v51;
    v154 = v47;
    (v156)(v44);
    sub_25E9D79A0();
    v54 = sub_25E9D7A80();
    v55 = *(v54 - 8);
    v150 = *(v55 + 48);
    v151 = v55 + 48;
    v56 = v150(v52, 1, v54);
    v149 = v55;
    if (v56 == 1)
    {
      v57 = v54;
      sub_25E981210(v52, &qword_27FD0D880, &unk_25E9D97C0);
      v58 = sub_25E9D7B90();
      (*(*(v58 - 8) + 56))(v53, 1, 1, v58);
LABEL_11:
      sub_25E981210(v53, &qword_27FD0D888, &qword_25E9DBDA0);
      goto LABEL_12;
    }

    sub_25E9D7A70();
    v57 = v54;
    (*(v55 + 8))(v52, v54);
    v59 = sub_25E9D7B90();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v53, 1, v59) == 1)
    {
      goto LABEL_11;
    }

    v74 = v135;
    sub_25E986774(v53, v135);
    v75 = (*(v60 + 88))(v74, v59);
    if (v75 == v133)
    {
      goto LABEL_20;
    }

    if (v75 != v129)
    {
      (*(v60 + 8))(v74, v59);
      v48 = v144;
      goto LABEL_11;
    }

    v139 = v49;
    v83 = v125;
    sub_25E9D79F0();
    v84 = sub_25E9D7C40();
    v85 = *(v84 - 8);
    if ((*(v85 + 48))(v83, 1, v84) == 1)
    {
      sub_25E981210(v83, &qword_27FD0D8A0, &unk_25E9D97E0);
      v49 = v139;
      v52 = v140;
      v74 = v135;
    }

    else
    {
      v86 = sub_25E9D79E0();
      v88 = v87;
      (*(v85 + 8))(v83, v84);
      if (v86 == 0x726F747563657865 && v88 == 0xE800000000000000)
      {

        v49 = v139;
        v52 = v140;
        v74 = v135;
LABEL_20:
        (*(v60 + 8))(v74, v59);
        sub_25E981210(v53, &qword_27FD0D888, &qword_25E9DBDA0);
        if (v49)
        {
          sub_25E9CA850(v142, v148, v130, v131, v143, v141, v162);
          memcpy(v161, v162, sizeof(v161));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D810, &qword_25E9D9458);
          v76 = swift_allocObject();
          *(v76 + 16) = v126;
          memcpy((v76 + 32), v162, 0x1A0uLL);
          swift_beginAccess();
          sub_25E9C342C(v161, &v159);
          sub_25E9C1574(v76);
          swift_endAccess();
          sub_25E9C3488(v161);
        }

        type metadata accessor for IEPlannerGrainSpec();
        swift_allocObject();
        v49 = sub_25E9CAC80();

        goto LABEL_32;
      }

      v89 = sub_25E9D8300();

      v49 = v139;
      v52 = v140;
      v74 = v135;
      if (v89)
      {
        goto LABEL_20;
      }
    }

    (*(v60 + 8))(v74, v59);
    sub_25E981210(v53, &qword_27FD0D888, &qword_25E9DBDA0);
LABEL_32:
    v48 = v144;
LABEL_12:
    v61 = v152;
    (v156)(v152, v157, v48);
    v62 = sub_25E9D7F00();
    v63 = sub_25E9D8140();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v49;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v162[0] = v66;
      *v65 = v136;
      v67 = v137;
      sub_25E9D79A0();
      if (v150(v67, 1, v57) == 1)
      {
        sub_25E981210(v67, &qword_27FD0D880, &unk_25E9D97C0);
        v68 = 0xE300000000000000;
        v69 = 7104878;
      }

      else
      {
        v139 = v64;
        v71 = v134;
        sub_25E9D7A70();
        (*(v149 + 8))(v67, v57);
        v72 = sub_25E9D7B90();
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v71, 1, v72) == 1)
        {
          sub_25E981210(v71, &qword_27FD0D888, &qword_25E9DBDA0);
          v68 = 0xE300000000000000;
          v69 = 7104878;
        }

        else
        {
          v77 = sub_25E9D7B80();
          v78 = v71;
          v69 = v77;
          v68 = v79;
          (*(v73 + 8))(v78, v72);
        }

        v64 = v139;
      }

      v70 = *v155;
      v80 = v144;
      (*v155)(v152, v144);
      v81 = sub_25E9887EC(v69, v68, v162);

      *(v65 + 4) = v81;
      _os_log_impl(&dword_25E971000, v62, v63, "handling event %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v82 = v66;
      v48 = v80;
      MEMORY[0x25F8C51A0](v82, -1, -1);
      MEMORY[0x25F8C51A0](v65, -1, -1);

      v52 = v140;
      v49 = v64;
      v53 = v138;
      v44 = v157;
      if (v49)
      {
LABEL_25:
        sub_25E9C8F88(v44);
      }
    }

    else
    {

      v70 = *v155;
      (*v155)(v61, v48);
      v44 = v157;
      if (v49)
      {
        goto LABEL_25;
      }
    }

    v70(v44, v48);
    v51 = v153 + v145;
    v47 = v154 - 1;
  }

  while (v154 != 1);

  if (v49)
  {
    v90 = v148;
    v91 = v141;
    v92 = v132;
    sub_25E9CA850(v142, v148, v130, v131, v143, v141, v162);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D810, &qword_25E9D9458);
    v93 = swift_allocObject();
    *(v93 + 16) = v126;
    memcpy((v93 + 32), v162, 0x1A0uLL);
    swift_beginAccess();
    sub_25E9C342C(v162, v161);
    sub_25E9C1574(v93);
    swift_endAccess();
    sub_25E9C3488(v162);
    (*(v127 + 8))(v92, v128);
    goto LABEL_42;
  }

LABEL_41:
  (*(v127 + 8))(v132, v128);
  v91 = v141;
  v90 = v148;
LABEL_42:

  v94 = sub_25E9D7F00();
  v95 = sub_25E9D8140();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = v90;
    v98 = swift_slowAlloc();
    v162[0] = v98;
    *v96 = 136315394;
    *(v96 + 4) = sub_25E9887EC(v142, v97, v162);
    *(v96 + 12) = 2080;
    *(v96 + 14) = sub_25E9887EC(v143, v91, v162);
    _os_log_impl(&dword_25E971000, v94, v95, "end for sessionId: %s clientRequestId: %s", v96, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v98, -1, -1);
    MEMORY[0x25F8C51A0](v96, -1, -1);
  }

  swift_beginAccess();
  v158 = v163;
  v99 = *(v163 + 16);
  if (v99)
  {

    v100 = 0;
    v101 = (v99 - 1);
    v102 = 32;
    *&v103 = 136315906;
    v152 = v103;
    while (1)
    {
      memcpy(v162, (v158 + v102), sizeof(v162));
      sub_25E9C342C(v162, v161);
      if (qword_27FD0D588 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v146, qword_27FD0DAD0);

      sub_25E9C342C(v162, v161);
      v104 = sub_25E9D7F00();
      v105 = sub_25E9D8140();

      sub_25E9C3488(v162);
      if (os_log_type_enabled(v104, v105))
      {
        v106 = v162[10];
        v156 = v104;
        v107 = v162[11];
        v108 = swift_slowAlloc();
        v157 = v101;
        v109 = v108;
        v155 = swift_slowAlloc();
        v160[0] = v155;
        *v109 = v152;
        *(v109 + 4) = sub_25E9887EC(v142, v148, v160);
        LODWORD(v154) = v105;
        *(v109 + 12) = 2080;
        *(v109 + 14) = sub_25E9887EC(v143, v91, v160);
        *(v109 + 22) = 2080;
        if (v107)
        {
          v110 = v106;
        }

        else
        {
          v110 = 7104878;
        }

        if (v107)
        {
          v111 = v107;
        }

        else
        {
          v111 = 0xE300000000000000;
        }

        v112 = sub_25E9887EC(v110, v111, v160);

        *(v109 + 24) = v112;
        *(v109 + 32) = 2080;
        memcpy(v161, v162, sizeof(v161));
        v113 = sub_25E9A4E2C();
        memcpy(v161, v162, sizeof(v161));
        v114 = sub_25E9A5524();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v161[0] = v113;
        sub_25E9A7674(v114, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v161);
        v153 = v100;

        v116 = sub_25E9D7F40();
        v118 = v117;

        v119 = sub_25E9887EC(v116, v118, v160);
        v91 = v141;

        *(v109 + 34) = v119;
        v120 = v156;
        _os_log_impl(&dword_25E971000, v156, v154, "computed for sessionId: %s clientRequestId: %s %s\n%s", v109, 0x2Au);
        v100 = v153;
        v121 = v155;
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v121, -1, -1);
        v122 = v109;
        v101 = v157;
        MEMORY[0x25F8C51A0](v122, -1, -1);
        sub_25E9C3488(v162);

        if (!v101)
        {
LABEL_59:

          break;
        }
      }

      else
      {

        sub_25E9C3488(v162);
        if (!v101)
        {
          goto LABEL_59;
        }
      }

      --v101;
      v102 += 416;
    }
  }

  return v158;
}

char *sub_25E9C2888()
{
  v124 = sub_25E9D78F0();
  v115 = *(v124 - 8);
  v0 = *(v115 + 64);
  v1 = MEMORY[0x28223BE20](v124);
  v3 = (&v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v1);
  v113 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA98, &qword_25E9DA7B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v97 - v10);
  v12 = sub_25E9D7920();
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA0, &qword_25E9DA7B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v97 - v22;
  if (qword_27FD0D590 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v106 = v23;
    v24 = sub_25E9D7F10();
    v97 = __swift_project_value_buffer(v24, qword_27FD0DAE8);
    v25 = sub_25E9D7F00();
    v26 = sub_25E9D8140();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v12;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25E971000, v25, v26, "calculator start", v28, 2u);
      v29 = v28;
      v12 = v27;
      MEMORY[0x25F8C51A0](v29, -1, -1);
    }

    v30 = sub_25E9D7950();
    v31 = 0;
    v32 = *(v30 + 64);
    v99 = v30 + 64;
    v102 = v30;
    v33 = 1 << *(v30 + 32);
    v34 = v33 < 64 ? ~(-1 << v33) : -1;
    v35 = v34 & v32;
    v98 = (v33 + 63) >> 6;
    v100 = v105 + 16;
    v110 = (v105 + 32);
    v111 = v115 + 16;
    v123 = (v115 + 32);
    v117 = (v115 + 8);
    v125 = MEMORY[0x277D84F90];
    v103 = (v105 + 8);
    v114 = v3;
    v112 = v9;
    v122 = v11;
    v36 = v21;
    v107 = v21;
    v104 = v12;
LABEL_9:
    if (v35)
    {
      break;
    }

    if (v98 <= v31 + 1)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = v98;
    }

    v38 = v37 - 1;
    while (1)
    {
      v23 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v23 >= v98)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
        (*(*(v88 - 8) + 56))(v36, 1, 1, v88);
        v109 = 0;
        goto LABEL_19;
      }

      v35 = *(v99 + 8 * v23);
      ++v31;
      if (v35)
      {
        goto LABEL_18;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v23 = v31;
LABEL_18:
  v109 = (v35 - 1) & v35;
  v39 = __clz(__rbit64(v35)) | (v23 << 6);
  v40 = *(v102 + 56);
  v41 = (*(v102 + 48) + 16 * v39);
  v42 = v41[1];
  v120 = *v41;
  v43 = v105;
  v44 = v101;
  (*(v105 + 16))(v101, v40 + *(v105 + 72) * v39, v12);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  v46 = *(v45 + 48);
  v47 = v107;
  *v107 = v120;
  *(v47 + 1) = v42;
  v48 = v44;
  v36 = v47;
  (*(v43 + 32))(&v47[v46], v48, v12);
  (*(*(v45 - 8) + 56))(v36, 0, 1, v45);

  v38 = v23;
LABEL_19:
  v49 = v106;
  sub_25E98B514(v36, v106, &qword_27FD0DAA0, &qword_25E9DA7B8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) != 1)
  {
    v108 = v38;
    v51 = v49[1];
    v119 = *v49;
    v120 = v51;
    (*v110)(v121, v49 + *(v50 + 48), v12);
    v52 = sub_25E9D7910();
    v21 = 0;
    v54 = v52 + 64;
    v53 = *(v52 + 64);
    v116 = v52;
    v55 = 1 << *(v52 + 32);
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v57 = v56 & v53;
    v23 = (v55 + 63) >> 6;
    v118 = v52 + 64;
    while (v57)
    {
      v58 = v21;
LABEL_36:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = v61 | (v58 << 6);
      v63 = v115;
      v64 = (*(v116 + 48) + 16 * v62);
      v66 = *v64;
      v65 = v64[1];
      v67 = v113;
      v68 = v124;
      (*(v115 + 16))(v113, *(v116 + 56) + *(v115 + 72) * v62, v124);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      v70 = *(v69 + 48);
      v71 = v112;
      *v112 = v66;
      *(v71 + 1) = v65;
      v72 = v67;
      v9 = v71;
      (*(v63 + 32))(&v71[v70], v72, v68);
      (*(*(v69 - 8) + 56))(v9, 0, 1, v69);

      v3 = v114;
      v11 = v122;
LABEL_37:
      sub_25E98B514(v9, v11, &qword_27FD0DA98, &qword_25E9DA7B0);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      if ((*(*(v73 - 8) + 48))(v11, 1, v73) == 1)
      {
        v12 = v104;
        (*v103)(v121, v104);

        v36 = v107;
        v31 = v108;
        v35 = v109;
        goto LABEL_9;
      }

      v74 = *v11;
      v75 = v11[1];
      (*v123)(v3, v11 + *(v73 + 48), v124);
      v76 = sub_25E9D7900();
      v78 = sub_25E9C166C(v3, v119, v120, v76, v77, v74, v75);

      v79 = *(v78 + 16);
      v12 = *(v125 + 2);
      v11 = (v12 + v79);
      if (__OFADD__(v12, v79))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v125;
      if (!isUniquelyReferenced_nonNull_native || v11 > *(v125 + 3) >> 1)
      {
        if (v12 <= v11)
        {
          v82 = v12 + v79;
        }

        else
        {
          v82 = v12;
        }

        v81 = sub_25E9842F8(isUniquelyReferenced_nonNull_native, v82, 1, v125);
      }

      v11 = v122;
      v83 = *(v78 + 16);
      v125 = v81;
      if (v83)
      {
        if ((*(v81 + 3) >> 1) - *(v81 + 2) < v79)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v79)
        {
          v84 = *(v125 + 2);
          v85 = __OFADD__(v84, v79);
          v86 = v84 + v79;
          if (v85)
          {
            goto LABEL_62;
          }

          *(v125 + 2) = v86;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_60;
        }
      }

      (*v117)(v3, v124);
      v54 = v118;
    }

    if (v23 <= (v21 + 1))
    {
      v59 = v21 + 1;
    }

    else
    {
      v59 = v23;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v58 >= v23)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
        (*(*(v87 - 8) + 56))(v9, 1, 1, v87);
        v57 = 0;
        v21 = v60;
        goto LABEL_37;
      }

      v57 = *(v54 + 8 * v58);
      ++v21;
      if (v57)
      {
        v21 = v58;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  v89 = v125;

  v90 = sub_25E9D7F00();
  v91 = sub_25E9D8140();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v89 + 2);

    _os_log_impl(&dword_25E971000, v90, v91, "computed metrics for %ld requests", v92, 0xCu);
    MEMORY[0x25F8C51A0](v92, -1, -1);
  }

  else
  {
  }

  v93 = sub_25E9D7F00();
  v94 = sub_25E9D8140();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_25E971000, v93, v94, "calculator end", v95, 2u);
    MEMORY[0x25F8C51A0](v95, -1, -1);
  }

  return v125;
}

BOOL sub_25E9C34DC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_25E9D7B60() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_25E9C8584();
  }

  while ((sub_25E9D7F90() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_25E9C35B4(uint64_t a1)
{
  swift_beginAccess();
  sub_25E9811A8(v1 + 16, v11, &qword_27FD0D8B0, qword_25E9D97F0);
  if (v12)
  {
    sub_25E986C6C(v11, v8);
    sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(*(v4 + 8) + 8))(a1, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
  }

  swift_beginAccess();
  sub_25E9811A8(v1 + 56, v11, &qword_27FD0D8B0, qword_25E9D97F0);
  if (!v12)
  {
    return sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
  }

  sub_25E986C6C(v11, v8);
  sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(*(v6 + 8) + 8))(a1, v5);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_25E9C3758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_25E9811A8(v3 + 16, v24, &qword_27FD0D8B0, qword_25E9D97F0);
  v6 = v25;
  if (v25)
  {
    v7 = v26;
    v8 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v9 + 16))(v12);
    sub_25E981210(v24, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v7 + 16))(v6, v7);
    (*(v9 + 8))(v12, v6);
  }

  else
  {
    sub_25E981210(v24, &qword_27FD0D8B0, qword_25E9D97F0);
    v13 = sub_25E9D7A10();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  swift_beginAccess();
  sub_25E9811A8(v3 + 56, v24, &qword_27FD0D8B0, qword_25E9D97F0);
  v14 = v25;
  if (v25)
  {
    v15 = v26;
    v16 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v17 = *(v14 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v16);
    v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v17 + 16))(v20);
    sub_25E981210(v24, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v15 + 16))(v14, v15);
    return (*(v17 + 8))(v20, v14);
  }

  else
  {
    sub_25E981210(v24, &qword_27FD0D8B0, qword_25E9D97F0);
    v22 = sub_25E9D7A10();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }
}

char *sub_25E9C3AB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v174 = (v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v173 = v164 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v170 = v164 - v9;
  MEMORY[0x28223BE20](v8);
  v169 = v164 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v172 = v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v171 = (v164 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v164 - v18;
  MEMORY[0x28223BE20](v17);
  v168 = v164 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v178 = v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v164 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v164 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v164 - v31;
  v33 = sub_25E9D7A10();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v176 = v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v175 = v164 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = v164 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = v164 - v43;
  swift_beginAccess();
  sub_25E9811A8(v1 + 16, v182, &qword_27FD0D8B0, qword_25E9D97F0);
  v45 = v183;
  v180 = v34;
  if (!v183)
  {
    sub_25E981210(v182, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v34 + 56))(v32, 1, 1, v33);
    goto LABEL_7;
  }

  v166 = v19;
  v167 = v42;
  v177 = v44;
  v46 = v184;
  v47 = __swift_project_boxed_opaque_existential_1(v182, v183);
  v48 = *(v45 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))(v51);
  sub_25E981210(v182, &qword_27FD0D8B0, qword_25E9D97F0);
  v52 = *(v46 + 16);
  v53 = v46;
  v54 = v180;
  v52(v45, v53);
  (*(v48 + 8))(v51, v45);
  v55 = *(v54 + 48);
  if (v55(v32, 1, v33) == 1)
  {
LABEL_7:
    v30 = v32;
    goto LABEL_8;
  }

  v56 = v177;
  v165 = *(v54 + 32);
  v165(v177, v32, v33);
  swift_beginAccess();
  sub_25E9811A8(v1 + 56, v182, &qword_27FD0D8B0, qword_25E9D97F0);
  v57 = v183;
  if (!v183)
  {
    (*(v54 + 8))(v56, v33);
    sub_25E981210(v182, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v54 + 56))(v30, 1, 1, v33);
LABEL_8:
    sub_25E981210(v30, &qword_27FD0DD40, &unk_25E9DC120);
    if (qword_27FD0D580 != -1)
    {
      swift_once();
    }

    v65 = sub_25E9D7F10();
    __swift_project_value_buffer(v65, qword_27FD0DAB8);

    v66 = sub_25E9D7F00();
    v67 = sub_25E9D8120();

    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_28;
    }

    v179 = v33;
    v177 = 7104878;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v181 = v69;
    *v68 = 136315394;
    sub_25E9811A8(v1 + 16, v182, &qword_27FD0D8B0, qword_25E9D97F0);
    v70 = v183;
    if (v183)
    {
      v176 = v69;
      v71 = v184;
      v72 = __swift_project_boxed_opaque_existential_1(v182, v183);
      v73 = *(v70 - 8);
      v74 = *(v73 + 64);
      MEMORY[0x28223BE20](v72);
      v76 = v164 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v73 + 16))(v76);
      sub_25E981210(v182, &qword_27FD0D8B0, qword_25E9D97F0);
      (*(v71 + 16))(v70, v71);
      (*(v73 + 8))(v76, v70);
      v77 = v179;
      v78 = v180;
      if ((*(v180 + 48))(v27, 1, v179) == 1)
      {
        v79 = &qword_27FD0DD40;
        v80 = &unk_25E9DC120;
        v81 = v27;
LABEL_18:
        sub_25E981210(v81, v79, v80);
        v85 = 0xE300000000000000;
        v86 = 7104878;
        v69 = v176;
        goto LABEL_19;
      }

      v175 = v164;
      v87 = v173;
      sub_25E9D79A0();
      v88 = v87;
      (*(v78 + 8))(v27, v77);
      v89 = sub_25E9D7A80();
      v90 = *(v89 - 8);
      if ((*(v90 + 48))(v87, 1, v89) == 1)
      {
        v79 = &qword_27FD0D880;
        v80 = &unk_25E9D97C0;
        v81 = v87;
        goto LABEL_18;
      }

      v129 = v171;
      sub_25E9D7A70();
      (*(v90 + 8))(v88, v89);
      v130 = sub_25E9D7B90();
      v131 = *(v130 - 8);
      v132 = (*(v131 + 48))(v129, 1, v130);
      v69 = v176;
      if (v132 != 1)
      {
        v137 = sub_25E9D7B80();
        v85 = v138;
        (*(v131 + 8))(v129, v130);
        v86 = v137;
LABEL_19:
        v91 = sub_25E9887EC(v86, v85, &v181);

        *(v68 + 4) = v91;
        *(v68 + 12) = 2080;
        swift_beginAccess();
        sub_25E9811A8(v1 + 56, v182, &qword_27FD0D8B0, qword_25E9D97F0);
        v92 = v183;
        if (v183)
        {
          v93 = v184;
          v94 = __swift_project_boxed_opaque_existential_1(v182, v183);
          v95 = *(v92 - 8);
          v96 = *(v95 + 64);
          MEMORY[0x28223BE20](v94);
          v98 = v164 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v95 + 16))(v98);
          sub_25E981210(v182, &qword_27FD0D8B0, qword_25E9D97F0);
          v99 = v178;
          (*(v93 + 16))(v92, v93);
          v100 = v98;
          v101 = v99;
          (*(v95 + 8))(v100, v92);
          v102 = v179;
          v103 = v180;
          if ((*(v180 + 48))(v99, 1, v179) == 1)
          {
            v104 = &qword_27FD0DD40;
            v105 = &unk_25E9DC120;
          }

          else
          {
            v107 = v174;
            sub_25E9D79A0();
            (*(v103 + 8))(v101, v102);
            v108 = sub_25E9D7A80();
            v109 = *(v108 - 8);
            if ((*(v109 + 48))(v107, 1, v108) == 1)
            {
              v104 = &qword_27FD0D880;
              v105 = &unk_25E9D97C0;
              v106 = v107;
              goto LABEL_26;
            }

            v133 = v172;
            sub_25E9D7A70();
            v101 = v133;
            (*(v109 + 8))(v107, v108);
            v134 = sub_25E9D7B90();
            v135 = *(v134 - 8);
            if ((*(v135 + 48))(v101, 1, v134) != 1)
            {
              v177 = sub_25E9D7B80();
              v110 = v139;
              (*(v135 + 8))(v101, v134);
              goto LABEL_27;
            }

            v104 = &qword_27FD0D888;
            v105 = &qword_25E9DBDA0;
          }

          v106 = v101;
        }

        else
        {
          v104 = &qword_27FD0D8B0;
          v105 = qword_25E9D97F0;
          v106 = v182;
        }

LABEL_26:
        sub_25E981210(v106, v104, v105);
        v110 = 0xE300000000000000;
LABEL_27:
        v111 = sub_25E9887EC(v177, v110, &v181);

        *(v68 + 14) = v111;
        _os_log_impl(&dword_25E971000, v66, v67, "calculateInterval - failed for begin: %s, end: %s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v69, -1, -1);
        MEMORY[0x25F8C51A0](v68, -1, -1);
LABEL_28:

        return 0;
      }

      v82 = &qword_27FD0D888;
      v83 = &qword_25E9DBDA0;
      v84 = v129;
    }

    else
    {
      v82 = &qword_27FD0D8B0;
      v83 = qword_25E9D97F0;
      v84 = v182;
    }

    sub_25E981210(v84, v82, v83);
    v85 = 0xE300000000000000;
    v86 = 7104878;
    goto LABEL_19;
  }

  v58 = v184;
  v59 = __swift_project_boxed_opaque_existential_1(v182, v183);
  v164[1] = v164;
  v60 = *(v57 - 8);
  v179 = v33;
  v61 = v60;
  v62 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v64 = v164 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v64);
  sub_25E981210(v182, &qword_27FD0D8B0, qword_25E9D97F0);
  (*(v58 + 16))(v57, v58);
  (*(v61 + 8))(v64, v57);
  v33 = v179;
  if (v55(v30, 1, v179) == 1)
  {
    (*(v180 + 8))(v177, v33);
    goto LABEL_8;
  }

  v113 = v167;
  v165(v167, v30, v33);
  v114 = v177;
  v178 = sub_25E9C85DC(v177, v113);
  v115 = v180;
  if (qword_27FD0D580 != -1)
  {
    swift_once();
  }

  v116 = sub_25E9D7F10();
  __swift_project_value_buffer(v116, qword_27FD0DAB8);
  v117 = *(v115 + 16);
  v118 = v175;
  v117(v175, v114, v33);
  v119 = v176;
  v117(v176, v113, v33);
  v120 = sub_25E9D7F00();
  v121 = sub_25E9D8120();
  if (!os_log_type_enabled(v120, v121))
  {

    v136 = *(v115 + 8);
    v136(v119, v33);
    v136(v118, v33);
    v136(v113, v33);
    v136(v114, v33);
    return v178;
  }

  LODWORD(v173) = v121;
  v174 = v120;
  v122 = swift_slowAlloc();
  v172 = swift_slowAlloc();
  v182[0] = v172;
  *v122 = 136315650;
  v123 = v169;
  sub_25E9D79A0();
  v124 = sub_25E9D7A80();
  v125 = *(v124 - 8);
  v171 = *(v125 + 48);
  if ((v171)(v123, 1, v124) == 1)
  {
    v126 = &qword_27FD0D880;
    v127 = &unk_25E9D97C0;
    v128 = v123;
  }

  else
  {
    v140 = v168;
    sub_25E9D7A70();
    (*(v125 + 8))(v123, v124);
    v141 = sub_25E9D7B90();
    v142 = *(v141 - 8);
    if ((*(v142 + 48))(v140, 1, v141) != 1)
    {
      v144 = sub_25E9D7B80();
      v143 = v145;
      (*(v142 + 8))(v140, v141);
      goto LABEL_46;
    }

    v126 = &qword_27FD0D888;
    v127 = &qword_25E9DBDA0;
    v128 = v140;
  }

  sub_25E981210(v128, v126, v127);
  v143 = 0xE300000000000000;
  v144 = 7104878;
LABEL_46:
  v146 = *(v180 + 8);
  v180 += 8;
  v146(v175, v179);
  v147 = sub_25E9887EC(v144, v143, v182);

  *(v122 + 4) = v147;
  *(v122 + 12) = 2080;
  v148 = v170;
  v149 = v176;
  sub_25E9D79A0();
  if ((v171)(v148, 1, v124) == 1)
  {
    sub_25E981210(v148, &qword_27FD0D880, &unk_25E9D97C0);
    v150 = 0xE300000000000000;
    v151 = 7104878;
  }

  else
  {
    v152 = v166;
    sub_25E9D7A70();
    (*(v125 + 8))(v148, v124);
    v153 = sub_25E9D7B90();
    v154 = *(v153 - 8);
    v151 = 7104878;
    if ((*(v154 + 48))(v152, 1, v153) == 1)
    {
      sub_25E981210(v152, &qword_27FD0D888, &qword_25E9DBDA0);
      v150 = 0xE300000000000000;
    }

    else
    {
      v151 = sub_25E9D7B80();
      v150 = v155;
      (*(v154 + 8))(v152, v153);
    }

    v149 = v176;
  }

  v156 = v179;
  v146(v149, v179);
  v157 = sub_25E9887EC(v151, v150, v182);

  *(v122 + 14) = v157;
  *(v122 + 22) = 2080;
  v158 = v178;
  v159 = sub_25E9D80E0();
  v161 = sub_25E9887EC(v159, v160, v182);

  *(v122 + 24) = v161;
  v162 = v174;
  _os_log_impl(&dword_25E971000, v174, v173, "calculateInterval - begin: %s, end: %s, duration: %s", v122, 0x20u);
  v163 = v172;
  swift_arrayDestroy();
  MEMORY[0x25F8C51A0](v163, -1, -1);
  MEMORY[0x25F8C51A0](v122, -1, -1);

  v146(v167, v156);
  v146(v177, v156);
  return v158;
}

uint64_t sub_25E9C4F38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v147 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v158 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v147 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD50, &qword_25E9DBF78);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v164 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v147 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD58, &qword_25E9DBF80);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v147 - v26;
  v28 = sub_25E9D7A10();
  v178 = *(v28 - 8);
  v29 = *(v178 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v161 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v163 = &v147 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v169 = &v147 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v168 = &v147 - v37;
  MEMORY[0x28223BE20](v36);
  v181 = &v147 - v38;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD60, &qword_25E9DBF88);
  v39 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v176 = &v147 - v40;
  swift_beginAccess();
  sub_25E9811A8(v1 + 16, &v182, &qword_27FD0D8B0, qword_25E9D97F0);
  v41 = v183;
  if (!v183)
  {
    goto LABEL_7;
  }

  v167 = v28;
  v166 = v27;
  v159 = v25;
  v173 = v20;
  v155 = v14;
  v156 = v8;
  v157 = v6;
  v42 = v184;
  v43 = __swift_project_boxed_opaque_existential_1(&v182, v183);
  v44 = *(v41 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v47);
  sub_25E981210(&v182, &qword_27FD0D8B0, qword_25E9D97F0);
  v48 = (*(v42 + 24))(v41, v42);
  (*(v44 + 8))(v47, v41);
  swift_beginAccess();
  sub_25E9811A8(v1 + 56, &v182, &qword_27FD0D8B0, qword_25E9D97F0);
  v49 = v183;
  if (!v183)
  {

LABEL_7:
    sub_25E981210(&v182, &qword_27FD0D8B0, qword_25E9D97F0);
    v69 = 0.0;
    return *&v69;
  }

  v174 = v48;
  v50 = v184;
  v51 = __swift_project_boxed_opaque_existential_1(&v182, v183);
  v52 = *(v49 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v147 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v55);
  sub_25E981210(&v182, &qword_27FD0D8B0, qword_25E9D97F0);
  v56 = (*(v50 + 24))(v49, v50);
  (*(v52 + 8))(v55, v49);
  if (qword_27FD0D580 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v57 = sub_25E9D7F10();
    v58 = __swift_project_value_buffer(v57, qword_27FD0DAB8);
    v59 = v174;

    v154 = v58;
    v60 = sub_25E9D7F00();
    v61 = sub_25E9D8120();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v167;
    v64 = v169;
    v65 = v168;
    v175 = v56;
    if (v62)
    {
      v66 = swift_slowAlloc();
      *v66 = 134218240;
      *(v66 + 4) = *(v59 + 16);

      *(v66 + 12) = 2048;
      *(v66 + 14) = *(v175 + 16);

      _os_log_impl(&dword_25E971000, v60, v61, "sumIntervals beginEvents count: %ld, endEvents count: %ld", v66, 0x16u);
      v67 = v66;
      v56 = v175;
      MEMORY[0x25F8C51A0](v67, -1, -1);
    }

    else
    {
    }

    v171 = *(v59 + 16);
    if (!v171)
    {
      break;
    }

    v70 = 0;
    v180 = v178 + 16;
    v170 = (v178 + 32);
    v172 = (v178 + 8);
    v69 = 0.0;
    *&v68 = 136315650;
    v153 = v68;
    while (v70 < *(v59 + 16))
    {
      v71 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v72 = *(v178 + 72) * v70;
      v73 = *(v178 + 16);
      v73(v181, v59 + v71 + v72, v63);
      v74 = *(v56 + 16);
      if (v70 == v74)
      {
        (*v172)(v181, v63);
        goto LABEL_46;
      }

      if (v70 >= v74)
      {
        goto LABEL_49;
      }

      v179 = v70;
      v75 = v56 + v71;
      v76 = v176;
      v77 = *(v177 + 48);
      v78 = *v170;
      (*v170)(v176, v181, v63);
      v73(&v76[v77], v75 + v72, v63);
      v78(v65, v76, v63);
      v78(v64, &v76[v77], v63);
      v79 = v173;
      sub_25E9D7A00();
      v80 = sub_25E9D7B00();
      v81 = v64;
      v82 = *(v80 - 8);
      v83 = *(v82 + 48);
      if (v83(v79, 1, v80) == 1)
      {
        v84 = *v172;
        (*v172)(v81, v63);
        v84(v65, v63);
        sub_25E981210(v79, &qword_27FD0DD50, &qword_25E9DBF78);
        v64 = v81;
      }

      else
      {
        v85 = v166;
        sub_25E9D7AF0();
        v86 = *(v82 + 8);
        (v86)(v79, v80);
        v87 = sub_25E9D7890();
        v88 = *(v87 - 8);
        v165 = *(v88 + 48);
        if ((v165)(v85, 1, v87) == 1)
        {
          v89 = *v172;
          v64 = v169;
          v90 = v167;
          (*v172)(v169, v167);
          v65 = v168;
          v89(v168, v90);
          v91 = v85;
          v63 = v90;
        }

        else
        {
          v162 = v86;
          sub_25E9D7880();
          v93 = v92;
          v160 = *(v88 + 8);
          v160(v85, v87);
          v94 = v164;
          v95 = v169;
          sub_25E9D7A00();
          if (v83(v94, 1, v80) == 1)
          {
            v96 = *v172;
            v97 = v167;
            (*v172)(v95, v167);
            v65 = v168;
            v96(v168, v97);
            sub_25E981210(v94, &qword_27FD0DD50, &qword_25E9DBF78);
            v63 = v97;
            v64 = v95;
            goto LABEL_21;
          }

          v99 = v159;
          sub_25E9D7AF0();
          v100 = v99;
          (v162)(v94, v80);
          v101 = (v165)(v99, 1, v87);
          v102 = v163;
          if (v101 != 1)
          {
            sub_25E9D7880();
            v105 = v104;
            v160(v99, v87);
            v63 = v167;
            v106 = v161;
            v64 = v169;
            v98 = v179;
            if (v93 >= v105)
            {
              v119 = *v172;
              (*v172)(v169, v167);
              v65 = v168;
              v119(v168, v63);
              v59 = v174;
              v56 = v175;
            }

            else
            {
              v107 = v105 - v93;
              v108 = v168;
              v73(v102, v168, v167);
              v73(v106, v64, v63);
              v109 = sub_25E9D7F00();
              v110 = sub_25E9D8120();
              if (os_log_type_enabled(v109, v110))
              {
                LODWORD(v160) = v110;
                v162 = v109;
                v111 = swift_slowAlloc();
                v152 = swift_slowAlloc();
                v182 = v152;
                *v111 = v153;
                v112 = v156;
                sub_25E9D79A0();
                v113 = sub_25E9D7A80();
                v114 = *(v113 - 8);
                v115 = *(v114 + 48);
                v151 = (v114 + 48);
                v149 = v115;
                v116 = v115(v112, 1, v113);
                v165 = v111;
                v150 = v113;
                v148 = v114;
                if (v116 == 1)
                {
                  sub_25E981210(v112, &qword_27FD0D880, &unk_25E9D97C0);
                  v117 = 0xE300000000000000;
                  v118 = 7104878;
                }

                else
                {
                  v121 = v155;
                  sub_25E9D7A70();
                  (*(v114 + 8))(v112, v113);
                  v122 = sub_25E9D7B90();
                  v123 = *(v122 - 8);
                  if ((*(v123 + 48))(v121, 1, v122) == 1)
                  {
                    sub_25E981210(v121, &qword_27FD0D888, &qword_25E9DBDA0);
                    v117 = 0xE300000000000000;
                    v118 = 7104878;
                  }

                  else
                  {
                    v118 = sub_25E9D7B80();
                    v117 = v124;
                    (*(v123 + 8))(v121, v122);
                  }

                  v64 = v169;
                  v98 = v179;
                  v111 = v165;
                }

                v125 = v161;
                v151 = *v172;
                v151(v102, v63);
                v126 = sub_25E9887EC(v118, v117, &v182);

                *(v111 + 4) = v126;
                *(v111 + 12) = 2080;
                v127 = v157;
                sub_25E9D79A0();
                v128 = v150;
                if (v149(v127, 1, v150) == 1)
                {
                  sub_25E981210(v127, &qword_27FD0D880, &unk_25E9D97C0);
                  v129 = 0xE300000000000000;
                  v130 = 7104878;
                  v59 = v174;
                  v56 = v175;
                }

                else
                {
                  v131 = v127;
                  v132 = v158;
                  sub_25E9D7A70();
                  (*(v148 + 8))(v131, v128);
                  v133 = sub_25E9D7B90();
                  v134 = *(v133 - 8);
                  v135 = (*(v134 + 48))(v132, 1, v133);
                  v59 = v174;
                  if (v135 == 1)
                  {
                    sub_25E981210(v132, &qword_27FD0D888, &qword_25E9DBDA0);
                    v129 = 0xE300000000000000;
                    v130 = 7104878;
                  }

                  else
                  {
                    v130 = sub_25E9D7B80();
                    v136 = v132;
                    v129 = v137;
                    (*(v134 + 8))(v136, v133);
                  }

                  v56 = v175;
                  v98 = v179;
                }

                v138 = v151;
                v151(v125, v63);
                v139 = sub_25E9887EC(v130, v129, &v182);

                v140 = v165;
                *(v165 + 14) = v139;
                *(v140 + 22) = 2080;
                v141 = sub_25E9D80E0();
                v143 = sub_25E9887EC(v141, v142, &v182);

                *(v140 + 24) = v143;
                v144 = v162;
                _os_log_impl(&dword_25E971000, v162, v160, "calculateInterval in sumIntervals - begin: %s, end: %s, duration: %s", v140, 0x20u);
                v145 = v152;
                swift_arrayDestroy();
                MEMORY[0x25F8C51A0](v145, -1, -1);
                MEMORY[0x25F8C51A0](v140, -1, -1);

                v138(v64, v63);
                v65 = v168;
                v138(v168, v63);
              }

              else
              {

                v120 = *v172;
                (*v172)(v106, v63);
                v120(v102, v63);
                v120(v64, v63);
                v120(v108, v63);
                v65 = v108;
                v59 = v174;
                v56 = v175;
              }

              v69 = v69 + v107;
            }

            goto LABEL_22;
          }

          v103 = *v172;
          v64 = v169;
          v63 = v167;
          (*v172)(v169, v167);
          v65 = v168;
          v103(v168, v63);
          v91 = v100;
        }

        sub_25E981210(v91, &qword_27FD0DD58, &qword_25E9DBF80);
      }

LABEL_21:
      v59 = v174;
      v56 = v175;
      v98 = v179;
LABEL_22:
      v70 = v98 + 1;
      if (v171 == v70)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v69 = 0.0;
LABEL_46:

  return *&v69;
}

uint64_t IETranscriptLatencyIntervalSpec.deinit()
{
  sub_25E981210(v0 + 16, &qword_27FD0D8B0, qword_25E9D97F0);
  sub_25E981210(v0 + 56, &qword_27FD0D8B0, qword_25E9D97F0);
  return v0;
}

uint64_t IETranscriptLatencyIntervalSpec.__deallocating_deinit()
{
  sub_25E981210(v0 + 16, &qword_27FD0D8B0, qword_25E9D97F0);
  sub_25E981210(v0 + 56, &qword_27FD0D8B0, qword_25E9D97F0);

  return swift_deallocClassInstance();
}

uint64_t sub_25E9C639C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v120 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v121 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v110 - v9;
  v11 = sub_25E9D7A10();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v119 = &v110 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v110 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v110 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v110 - v25;
  v127 = sub_25E9D7B60();
  v27 = *(v127 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v127);
  v126 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v110 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v110 - v34;
  v125 = a1;
  sub_25E9D79A0();
  v36 = sub_25E9D7A80();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v22, 1, v36) == 1)
  {
    return sub_25E981210(v22, &qword_27FD0D880, &unk_25E9D97C0);
  }

  sub_25E9D7A70();
  (*(v37 + 8))(v22, v36);
  v39 = sub_25E9D7B90();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v26, 1, v39) == 1)
  {
    return sub_25E981210(v26, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9D7B70();
  (*(v40 + 8))(v26, v39);
  v41 = v127;
  (*(v27 + 32))(v35, v33, v127);
  v42 = *(v27 + 104);
  v43 = v126;
  v42(v126, *MEMORY[0x277D234E8], v41);
  v44 = sub_25E9D7B50();
  v46 = v27 + 8;
  v45 = *(v27 + 8);
  v45(v43, v41);
  if ((v44 & 1) == 0)
  {
    return (v45)(v35, v41);
  }

  v117 = v46;
  if (qword_27FD0D580 != -1)
  {
    swift_once();
  }

  v47 = sub_25E9D7F10();
  v48 = __swift_project_value_buffer(v47, qword_27FD0DAB8);
  v50 = v123;
  v49 = v124;
  v113 = *(v123 + 16);
  v114 = v123 + 16;
  v113(v18, v125, v124);
  v112 = v48;
  v51 = sub_25E9D7F00();
  LODWORD(v115) = sub_25E9D8120();
  v52 = os_log_type_enabled(v51, v115);
  v53 = v122;
  v116 = v42;
  if (v52)
  {
    v111 = v51;
    v54 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v128 = v110;
    v55 = v54;
    *v54 = 136315138;
    sub_25E9D79F0();
    v56 = sub_25E9D7C40();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v10, 1, v56) == 1)
    {
      sub_25E981210(v10, &qword_27FD0D8A0, &unk_25E9D97E0);
      v58 = 0xE300000000000000;
      v59 = 7104878;
    }

    else
    {
      v59 = sub_25E9D79E0();
      v58 = v60;
      (*(v57 + 8))(v10, v56);
    }

    (*(v123 + 8))(v18, v124);
    v61 = sub_25E9887EC(v59, v58, &v128);

    *(v55 + 1) = v61;
    v62 = v111;
    _os_log_impl(&dword_25E971000, v111, v115, "handleStatementEvaluated, sender: %s", v55, 0xCu);
    v63 = v110;
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x25F8C51A0](v63, -1, -1);
    MEMORY[0x25F8C51A0](v55, -1, -1);

    v53 = v122;
  }

  else
  {

    (*(v50 + 8))(v18, v49);
  }

  v64 = v121;
  sub_25E9D79F0();
  v65 = sub_25E9D7C40();
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(v64, 1, v65) == 1)
  {
    v45(v35, v127);
    return sub_25E981210(v64, &qword_27FD0D8A0, &unk_25E9D97E0);
  }

  v115 = v45;
  v67 = sub_25E9D79E0();
  v69 = v68;
  v70 = v64;
  v71 = v67;
  (*(v66 + 8))(v70, v65);
  v72 = v127;
  if (v71 == 0x726F747563657865 && v69 == 0xE800000000000000 || (sub_25E9D8300() & 1) != 0)
  {
    v73 = *(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes);
    v74 = v126;
    v116(v126, *MEMORY[0x277D23520], v72);
    LOBYTE(v73) = sub_25E9C34DC(v74, v73);
    v115(v74, v72);
    if (v73)
    {
      v121 = v71;
      v75 = sub_25E9D7F00();
      v76 = sub_25E9D8120();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v123;
      if (v77)
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_25E971000, v75, v76, "handleStatementEvaluated - found event from executor", v79, 2u);
        MEMORY[0x25F8C51A0](v79, -1, -1);
      }

      v80 = v120;
      v81 = v124;
      v82 = v125;
      v83 = v113;
      v113(v120, v125, v124);
      (*(v78 + 56))(v80, 0, 1, v81);
      v84 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
      v53 = v122;
      swift_beginAccess();
      sub_25E9C8514(v80, v53 + v84);
      swift_endAccess();
      v83(v119, v82, v81);
      v85 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList;
      swift_beginAccess();
      v86 = *(v53 + v85);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v53 + v85) = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = sub_25E983888(0, v86[2] + 1, 1, v86);
        *(v53 + v85) = v86;
      }

      v89 = v86[2];
      v88 = v86[3];
      v72 = v127;
      v71 = v121;
      if (v89 >= v88 >> 1)
      {
        v86 = sub_25E983888(v88 > 1, v89 + 1, 1, v86);
      }

      v86[2] = v89 + 1;
      (*(v123 + 32))(v86 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v89, v119, v124);
      *(v53 + v85) = v86;
      swift_endAccess();
    }
  }

  if (v71 == 0x6F7365526E616C70 && v69 == 0xEE006E6F6974756CLL)
  {
  }

  else
  {
    v90 = sub_25E9D8300();

    if ((v90 & 1) == 0)
    {
      return (v115)(v35, v72);
    }
  }

  v91 = *(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes);
  v92 = v126;
  v116(v126, *MEMORY[0x277D23518], v72);
  LOBYTE(v91) = sub_25E9C34DC(v92, v91);
  v93 = v115;
  v115(v92, v72);
  v94 = v124;
  if (v91)
  {
    v95 = v53;
    v96 = sub_25E9D7F00();
    v97 = sub_25E9D8120();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_25E971000, v96, v97, "handleStatementEvaluated - found event from planner", v98, 2u);
      MEMORY[0x25F8C51A0](v98, -1, -1);
    }

    v99 = v120;
    v100 = v125;
    v101 = v113;
    v113(v120, v125, v94);
    (*(v123 + 56))(v99, 0, 1, v94);
    v102 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
    v103 = v95;
    swift_beginAccess();
    sub_25E9C8514(v99, v95 + v102);
    swift_endAccess();
    v104 = v118;
    v101(v118, v100, v94);
    v105 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList;
    swift_beginAccess();
    v106 = *(v103 + v105);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    *(v103 + v105) = v106;
    if ((v107 & 1) == 0)
    {
      v106 = sub_25E983888(0, v106[2] + 1, 1, v106);
      *(v103 + v105) = v106;
    }

    v109 = v106[2];
    v108 = v106[3];
    if (v109 >= v108 >> 1)
    {
      v106 = sub_25E983888(v108 > 1, v109 + 1, 1, v106);
    }

    v106[2] = v109 + 1;
    (*(v123 + 32))(v106 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v109, v104, v94);
    *(v103 + v105) = v106;
    swift_endAccess();
    return (v115)(v35, v72);
  }

  return v93(v35, v72);
}

void sub_25E9C7130()
{
  sub_25E9C71D0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25E9C71D0()
{
  if (!qword_27FD0DD08)
  {
    sub_25E9D7A10();
    v0 = sub_25E9D81C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD0DD08);
    }
  }
}

uint64_t sub_25E9C7228@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  swift_beginAccess();
  return sub_25E9811A8(v3 + v4, a1, &qword_27FD0DD40, &unk_25E9DC120);
}

uint64_t sub_25E9C7294()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_25E9C7324(uint64_t a1)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_25E9D7B60();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v41 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v21 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  swift_beginAccess();
  sub_25E9811A8(v1 + v21, v20, &qword_27FD0DD40, &unk_25E9DC120);
  v22 = sub_25E9D7A10();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v20, 1, v22);
  result = sub_25E981210(v20, &qword_27FD0DD40, &unk_25E9DC120);
  if (v24 == 1)
  {
    v26 = v46;
    sub_25E9D79A0();
    v27 = sub_25E9D7A80();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v5, 1, v27) == 1)
    {
      v29 = &qword_27FD0D880;
      v30 = &unk_25E9D97C0;
      v31 = v5;
    }

    else
    {
      sub_25E9D7A70();
      (*(v28 + 8))(v5, v27);
      v32 = sub_25E9D7B90();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v9, 1, v32) != 1)
      {
        v34 = v42;
        sub_25E9D7B70();
        (*(v33 + 8))(v9, v32);
        v36 = v43;
        v35 = v44;
        v37 = v34;
        v38 = v45;
        v26 = v46;
        (*(v44 + 32))(v43, v37, v45);
        v39 = sub_25E9C34DC(v36, *(v1 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes));
        (*(v35 + 8))(v36, v38);
        if (v39)
        {
          v40 = v41;
          (*(v23 + 16))(v41, v26, v22);
          (*(v23 + 56))(v40, 0, 1, v22);
          swift_beginAccess();
          sub_25E9C8514(v40, v1 + v21);
          swift_endAccess();
        }

        return sub_25E9C639C(v26);
      }

      v29 = &qword_27FD0D888;
      v30 = &qword_25E9DBDA0;
      v31 = v9;
    }

    sub_25E981210(v31, v29, v30);
    return sub_25E9C639C(v26);
  }

  return result;
}

uint64_t sub_25E9C77E0()
{
  sub_25E981210(v0 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, &qword_27FD0DD40, &unk_25E9DC120);
  v1 = *(v0 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList);

  v2 = *(v0 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25E9C789C(uint64_t a1)
{
  v2 = sub_25E9D7A10();
  v3 = *(v2 - 8);
  v79 = v2;
  v80 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v78 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = sub_25E9D7B60();
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = *(v82 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  v84 = a1;
  sub_25E9D79A0();
  v28 = sub_25E9D7A80();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v14, 1, v28) == 1)
  {
    return sub_25E981210(v14, &qword_27FD0D880, &unk_25E9D97C0);
  }

  v75 = v27;
  sub_25E9D7A70();
  v73 = *(v29 + 8);
  v73(v14, v28);
  v32 = sub_25E9D7B90();
  v33 = *(v32 - 8);
  v72 = *(v33 + 48);
  if (v72(v20, 1, v32) == 1)
  {
    return sub_25E981210(v20, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  v74 = v32;
  sub_25E9D7B70();
  v35 = *(v33 + 8);
  v34 = v33 + 8;
  v71 = v35;
  v35(v20, v74);
  v36 = v75;
  (*(v82 + 32))(v75, v25, v83);
  v37 = v81;
  if (sub_25E9C34DC(v36, *(v81 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes)))
  {
    v69 = v34;
    v70 = *(v80 + 16);
    (v70)(v8, v84, v79);
    v38 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList;
    swift_beginAccess();
    v39 = *(v37 + v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + v38) = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_25E983888(0, v39[2] + 1, 1, v39);
      *(v37 + v38) = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    v43 = (v42 + 1);
    if (v42 >= v41 >> 1)
    {
      v68 = (v42 + 1);
      v66 = sub_25E983888(v41 > 1, v42 + 1, 1, v39);
      v43 = v68;
      v39 = v66;
    }

    v39[2] = v43;
    v44 = v8;
    v45 = v79;
    (*(v80 + 32))(v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v42, v44, v79);
    *(v81 + v38) = v39;
    swift_endAccess();
    if (qword_27FD0D580 != -1)
    {
      swift_once();
    }

    v46 = sub_25E9D7F10();
    __swift_project_value_buffer(v46, qword_27FD0DAB8);
    v47 = v78;
    (v70)(v78, v84, v45);
    v48 = v45;
    v49 = sub_25E9D7F00();
    v50 = sub_25E9D8120();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v85 = v68;
      v70 = v51;
      *v51 = 136315138;
      v52 = v77;
      sub_25E9D79A0();
      v53 = v30(v52, 1, v28);
      v54 = v50;
      if (v53 == 1)
      {
        v55 = 7104878;
        v56 = &qword_27FD0D880;
        v57 = &unk_25E9D97C0;
        v58 = v52;
      }

      else
      {
        v59 = v76;
        sub_25E9D7A70();
        v73(v52, v28);
        v60 = v74;
        if (v72(v59, 1, v74) != 1)
        {
          v55 = sub_25E9D7B80();
          v61 = v62;
          v71(v59, v60);
          goto LABEL_20;
        }

        v55 = 7104878;
        v56 = &qword_27FD0D888;
        v57 = &qword_25E9DBDA0;
        v58 = v59;
      }

      sub_25E981210(v58, v56, v57);
      v61 = 0xE300000000000000;
LABEL_20:
      (*(v80 + 8))(v47, v79);
      v63 = sub_25E9887EC(v55, v61, &v85);

      v64 = v70;
      *(v70 + 1) = v63;
      _os_log_impl(&dword_25E971000, v49, v54, "IETranscriptAllEvent: %s", v64, 0xCu);
      v65 = v68;
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x25F8C51A0](v65, -1, -1);
      MEMORY[0x25F8C51A0](v64, -1, -1);

      goto LABEL_21;
    }

    (*(v80 + 8))(v47, v48);
  }

LABEL_21:
  sub_25E9C639C(v84);
  return (*(v82 + 8))(v75, v83);
}

uint64_t sub_25E9C804C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_25E9D7B60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  sub_25E9D79A0();
  v21 = sub_25E9D7A80();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    v23 = &qword_27FD0D880;
    v24 = &unk_25E9D97C0;
    v25 = v8;
LABEL_5:
    sub_25E981210(v25, v23, v24);
    return sub_25E9C639C(a1);
  }

  sub_25E9D7A70();
  (*(v22 + 8))(v8, v21);
  v26 = sub_25E9D7B90();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v12, 1, v26) == 1)
  {
    v23 = &qword_27FD0D888;
    v24 = &qword_25E9DBDA0;
    v25 = v12;
    goto LABEL_5;
  }

  sub_25E9D7B70();
  (*(v27 + 8))(v12, v26);
  (*(v14 + 32))(v20, v18, v13);
  v29 = v37;
  v30 = sub_25E9C34DC(v20, *(v37 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes));
  (*(v14 + 8))(v20, v13);
  if (v30)
  {
    v31 = sub_25E9D7A10();
    v32 = *(v31 - 8);
    v33 = v36;
    (*(v32 + 16))(v36, a1, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
    v34 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
    swift_beginAccess();
    sub_25E9C8514(v33, v29 + v34);
    swift_endAccess();
  }

  return sub_25E9C639C(a1);
}

uint64_t sub_25E9C84A4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E9C8514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E9C8584()
{
  result = qword_27FD0DD48;
  if (!qword_27FD0DD48)
  {
    sub_25E9D7B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DD48);
  }

  return result;
}

uint64_t sub_25E9C85DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD50, &qword_25E9DBF78);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD58, &qword_25E9DBF80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  sub_25E9D7A00();
  v17 = sub_25E9D7B00();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v9, 1, v17) == 1)
  {
    sub_25E981210(v9, &qword_27FD0DD50, &qword_25E9DBF78);
  }

  else
  {
    v33 = v14;
    v34 = a2;
    sub_25E9D7AF0();
    v20 = *(v18 + 8);
    v20(v9, v17);
    v21 = sub_25E9D7890();
    v22 = *(v21 - 8);
    v32 = *(v22 + 48);
    if (v32(v16, 1, v21) == 1)
    {
      sub_25E981210(v16, &qword_27FD0DD58, &qword_25E9DBF80);
    }

    else
    {
      v31 = v20;
      sub_25E9D7880();
      v24 = v23;
      v25 = v16;
      v26 = *(v22 + 8);
      v26(v25, v21);
      sub_25E9D7A00();
      if (v19(v7, 1, v17) == 1)
      {
        sub_25E981210(v7, &qword_27FD0DD50, &qword_25E9DBF78);
      }

      else
      {
        v27 = v33;
        sub_25E9D7AF0();
        v31(v7, v17);
        if (v32(v27, 1, v21) == 1)
        {
          sub_25E981210(v27, &qword_27FD0DD58, &qword_25E9DBF80);
        }

        else
        {
          sub_25E9D7880();
          v29 = v28;
          v26(v27, v21);
          if (v24 < v29)
          {
            *&result = v29 - v24;
            return result;
          }
        }
      }
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t sub_25E9C897C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v0 = sub_25E9D7B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E9DADD0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D234C0], v0);
  v6(v5 + v2, *MEMORY[0x277D234F0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D23518], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D23508], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x277D23500], v0);
  qword_27FD0F568 = v4;
  return result;
}

uint64_t sub_25E9C8B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v0 = sub_25E9D7B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E9DBF90;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D234C0], v0);
  v6(v5 + v2, *MEMORY[0x277D234F0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D23518], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x277D23508], v0);
  qword_27FD0F570 = v4;
  return result;
}

uint64_t sub_25E9C8C88(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v9 = sub_25E9D7B60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25E9D8990;
  v14 = v13 + v12;
  v15 = *a2;
  v16 = *(v10 + 104);
  v16(v14, v15, v9);
  v16(v14 + v11, *a3, v9);
  result = (v16)(v14 + 2 * v11, *a4, v9);
  *a5 = v13;
  return result;
}

uint64_t sub_25E9C8DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCF0, &qword_25E9DBDA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25E9DA800;
  v2 = v0[2];
  *(v1 + 56) = type metadata accessor for PlannerGrainDimensionsSpec();
  *(v1 + 64) = &off_2870ACBC8;
  *(v1 + 32) = v2;
  v3 = v0[3];
  v4 = type metadata accessor for IETranscriptLatencyIntervalSpec();
  *(v1 + 96) = v4;
  *(v1 + 104) = &off_2870ACB88;
  *(v1 + 72) = v3;
  *(v1 + 136) = v4;
  *(v1 + 144) = &off_2870ACB88;
  v12 = v0[5];
  *(v1 + 112) = v0[4];
  *(v1 + 176) = v4;
  *(v1 + 184) = &off_2870ACB88;
  *(v1 + 152) = v12;
  *(v1 + 216) = v4;
  *(v1 + 224) = &off_2870ACB88;
  v11 = v0[7];
  *(v1 + 192) = v0[6];
  *(v1 + 256) = v4;
  *(v1 + 264) = &off_2870ACB88;
  *(v1 + 232) = v11;
  *(v1 + 296) = v4;
  *(v1 + 304) = &off_2870ACB88;
  v5 = v0[9];
  *(v1 + 272) = v0[8];
  *(v1 + 336) = v4;
  *(v1 + 344) = &off_2870ACB88;
  *(v1 + 312) = v5;
  *(v1 + 376) = v4;
  *(v1 + 384) = &off_2870ACB88;
  v6 = v0[11];
  *(v1 + 352) = v0[10];
  *(v1 + 416) = v4;
  *(v1 + 424) = &off_2870ACB88;
  *(v1 + 392) = v6;
  *(v1 + 456) = v4;
  *(v1 + 464) = &off_2870ACB88;
  v7 = v0[13];
  *(v1 + 432) = v0[12];
  *(v1 + 496) = v4;
  *(v1 + 504) = &off_2870ACB88;
  *(v1 + 472) = v7;
  *(v1 + 536) = v4;
  *(v1 + 544) = &off_2870ACB88;
  v8 = v0[15];
  *(v1 + 512) = v0[14];
  *(v1 + 576) = v4;
  *(v1 + 584) = &off_2870ACB88;
  *(v1 + 552) = v8;
  v9 = v0[16];
  *(v1 + 616) = v4;
  *(v1 + 624) = &off_2870ACB88;
  *(v1 + 592) = v9;

  return v1;
}

uint64_t sub_25E9C8F88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D890, &unk_25E9D97D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  v6 = sub_25E9D79C0();
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  result = swift_beginAccess();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      result = sub_25E9CD2F8(&v25, *(*(v6 + 56) + ((v12 << 9) | (8 * v13))));
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= ((v7 + 63) >> 6))
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  swift_endAccess();

  sub_25E9D79B0();
  v14 = sub_25E9D7A60();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    sub_25E981210(v5, &qword_27FD0D890, &unk_25E9D97D0);
  }

  else
  {
    v16 = sub_25E9D7A50();
    (*(v15 + 8))(v5, v14);
    swift_beginAccess();
    sub_25E9CD2F8(&v25, v16);
    swift_endAccess();
  }

  v17 = sub_25E9C8DC4();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_25E986C6C(v19, v22);
      v20 = v23;
      v21 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v21 + 8))(a1, v20, v21);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v19 += 40;
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_25E9C9230@<X0>(unsigned __int8 *a1@<X8>)
{
  v177 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE0, &qword_25E9DBD88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v163 = &v162 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE8, &unk_25E9DBD90);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v162 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v165 = &v162 - v9;
  v10 = sub_25E9D7AA0();
  v170 = *(v10 - 8);
  v171 = v10;
  v11 = *(v170 + 64);
  MEMORY[0x28223BE20](v10);
  v166 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD68, &qword_25E9DC118);
  v13 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v179 = (&v162 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v173 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v172 = &v162 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v162 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v162 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v168 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v167 = &v162 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v164 = &v162 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v169 = &v162 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v176 = &v162 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v162 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v162 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v175 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v174 = &v162 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v184 = &v162 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v183 = &v162 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v162 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v162 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  MEMORY[0x28223BE20](v59);
  v61 = &v162 - v60;
  v188 = 6;
  v62 = *(v1 + 24);
  v181 = v63;
  sub_25E9C3758(&v162 - v60, v63);
  v182 = v61;
  sub_25E9811A8(v61, v58, &qword_27FD0DD40, &unk_25E9DC120);
  v64 = sub_25E9D7A10();
  v65 = *(v64 - 8);
  v185 = *(v65 + 48);
  v186 = v65 + 48;
  v66 = v185(v58, 1, v64);
  v180 = v65;
  if (v66 == 1)
  {
    v67 = &qword_27FD0DD40;
    v68 = &unk_25E9DC120;
    v69 = v58;
LABEL_5:
    sub_25E981210(v69, v67, v68);
    v72 = v181;
    v73 = sub_25E9D7B90();
    (*(*(v73 - 8) + 56))(v42, 1, 1, v73);
    goto LABEL_7;
  }

  sub_25E9D79A0();
  (*(v65 + 8))(v58, v64);
  v70 = sub_25E9D7A80();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v25, 1, v70) == 1)
  {
    v67 = &qword_27FD0D880;
    v68 = &unk_25E9D97C0;
    v69 = v25;
    goto LABEL_5;
  }

  sub_25E9D7A70();
  (*(v71 + 8))(v25, v70);
  v72 = v181;
LABEL_7:
  sub_25E9811A8(v72, v55, &qword_27FD0DD40, &unk_25E9DC120);
  if (v185(v55, 1, v64) == 1)
  {
    v74 = &qword_27FD0DD40;
    v75 = &unk_25E9DC120;
    v76 = v55;
LABEL_11:
    sub_25E981210(v76, v74, v75);
    v79 = v179;
    v80 = sub_25E9D7B90();
    (*(*(v80 - 8) + 56))(v40, 1, 1, v80);
    v81 = v183;
    goto LABEL_13;
  }

  sub_25E9D79A0();
  (*(v180 + 8))(v55, v64);
  v77 = sub_25E9D7A80();
  v78 = *(v77 - 8);
  if ((*(v78 + 48))(v23, 1, v77) == 1)
  {
    v74 = &qword_27FD0D880;
    v75 = &unk_25E9D97C0;
    v76 = v23;
    goto LABEL_11;
  }

  sub_25E9D7A70();
  (*(v78 + 8))(v23, v77);
  v81 = v183;
  v79 = v179;
LABEL_13:
  v82 = *(v178 + 48);
  sub_25E9CDE98(v42, v79);
  sub_25E9CDE98(v40, v79 + v82);
  v83 = sub_25E9D7B90();
  v84 = *(v83 - 8);
  v179 = *(v84 + 48);
  v85 = v179(v79, 1, v83);
  v178 = v84 + 48;
  if (v85 == 1)
  {
LABEL_25:
    v188 = 6;
    v101 = &qword_27FD0DD68;
    v102 = &qword_25E9DC118;
    v103 = v79;
LABEL_26:
    sub_25E981210(v103, v101, v102);
    goto LABEL_27;
  }

  v86 = v176;
  sub_25E9811A8(v79, v176, &qword_27FD0D888, &qword_25E9DBDA0);
  v87 = *(v84 + 88);
  v88 = v87(v86, v83);
  if (v88 != *MEMORY[0x277D23588])
  {
    if (v88 != *MEMORY[0x277D23560])
    {
      (*(v84 + 8))(v176, v83);
      goto LABEL_24;
    }

    v89 = v179(v79 + v82, 1, v83);
    v81 = v183;
    if (v89 == 1)
    {
      (*(v84 + 8))(v176, v83);
      goto LABEL_25;
    }

    v123 = v164;
    sub_25E9811A8(v79 + v82, v164, &qword_27FD0D888, &qword_25E9DBDA0);
    v124 = v87(v123, v83);
    if (v124 == *MEMORY[0x277D23540])
    {
      v188 = 1;
      v125 = *(v84 + 8);
      v126 = v123;
    }

    else
    {
      if (v124 != *MEMORY[0x277D23578])
      {
        v160 = v176;
        if (v124 != *MEMORY[0x277D23570])
        {
          v161 = *(v84 + 8);
          v161(v164, v83);
          v161(v160, v83);
          goto LABEL_25;
        }

        v188 = 4;
        v125 = *(v84 + 8);
        v125(v164, v83);
        goto LABEL_75;
      }

      v188 = 5;
      v125 = *(v84 + 8);
      v126 = v164;
    }

    v160 = v176;
    v125(v126, v83);
LABEL_75:
    v125(v160, v83);
LABEL_83:
    sub_25E981210(v79 + v82, &qword_27FD0D888, &qword_25E9DBDA0);
    v103 = v79;
    v101 = &qword_27FD0D888;
    v102 = &qword_25E9DBDA0;
    goto LABEL_26;
  }

  (*(v84 + 96))(v86, v83);
  if (v179(v79 + v82, 1, v83) == 1)
  {
    (*(v170 + 8))(v86, v171);
LABEL_24:
    v81 = v183;
    goto LABEL_25;
  }

  v90 = v169;
  sub_25E9811A8(v79 + v82, v169, &qword_27FD0D888, &qword_25E9DBDA0);
  v91 = v87(v90, v83);
  if (v91 == *MEMORY[0x277D23540])
  {
    v92 = v170;
    v93 = v171;
    (*(v170 + 32))(v166, v176, v171);
    v94 = v163;
    sub_25E9D7A90();
    v95 = v94;
    v96 = sub_25E9D7C70();
    v97 = *(v96 - 8);
    v98 = *(v97 + 48);
    v176 = v96;
    if (v98(v95, 1) == 1)
    {
      (*(v92 + 8))(v166, v93);
      sub_25E981210(v95, &qword_27FD0DCE0, &qword_25E9DBD88);
      v99 = sub_25E9D7D20();
      v100 = v165;
      (*(*(v99 - 8) + 56))(v165, 1, 1, v99);
      v81 = v183;
    }

    else
    {
      sub_25E9D7C60();
      (*(v92 + 8))(v166, v93);
      (*(v97 + 8))(v95, v176);
      v100 = v165;
      v154 = sub_25E9D7D20();
      v155 = *(v154 - 8);
      v156 = (*(v155 + 48))(v100, 1, v154);
      v81 = v183;
      if (v156 != 1)
      {
        v176 = v154;
        v157 = v162;
        sub_25E9811A8(v100, v162, &qword_27FD0DCE8, &unk_25E9DBD90);
        v158 = v157;
        v159 = v176;
        if ((*(v155 + 88))(v158, v176) == *MEMORY[0x277D23600])
        {
          v188 = 3;
          (*(v155 + 8))(v162, v159);
LABEL_82:
          sub_25E981210(v100, &qword_27FD0DCE8, &unk_25E9DBD90);
          (*(v84 + 8))(v169, v83);
          goto LABEL_83;
        }

        (*(v155 + 8))(v162, v159);
      }
    }

    v188 = 0;
    goto LABEL_82;
  }

  v128 = v170;
  v127 = v171;
  if (v91 != *MEMORY[0x277D23570])
  {
    (*(v84 + 8))(v169, v83);
    (*(v128 + 8))(v176, v127);
    goto LABEL_24;
  }

  v188 = 2;
  (*(v84 + 8))(v169, v83);
  (*(v128 + 8))(v176, v127);
  sub_25E981210(v79 + v82, &qword_27FD0D888, &qword_25E9DBDA0);
  sub_25E981210(v79, &qword_27FD0D888, &qword_25E9DBDA0);
  v81 = v183;
LABEL_27:
  v176 = v84;
  v104 = v182;
  if (qword_27FD0D590 != -1)
  {
    swift_once();
  }

  v105 = sub_25E9D7F10();
  __swift_project_value_buffer(v105, qword_27FD0DAE8);
  sub_25E9811A8(v104, v81, &qword_27FD0DD40, &unk_25E9DC120);
  v106 = v184;
  sub_25E9811A8(v72, v184, &qword_27FD0DD40, &unk_25E9DC120);
  v107 = v188;
  v108 = v72;
  v109 = sub_25E9D7F00();
  v110 = sub_25E9D8120();
  if (os_log_type_enabled(v109, v110))
  {
    LODWORD(v170) = v110;
    v111 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v187[0] = v171;
    *v111 = 136315650;
    v112 = v174;
    sub_25E9811A8(v81, v174, &qword_27FD0DD40, &unk_25E9DC120);
    if (v185(v112, 1, v64) == 1)
    {
      v113 = &qword_27FD0DD40;
      v114 = &unk_25E9DC120;
      v115 = v112;
    }

    else
    {
      v117 = v172;
      sub_25E9D79A0();
      (*(v180 + 8))(v112, v64);
      v118 = sub_25E9D7A80();
      v119 = *(v118 - 8);
      if ((*(v119 + 48))(v117, 1, v118) != 1)
      {
        v122 = v167;
        sub_25E9D7A70();
        (*(v119 + 8))(v117, v118);
        if (v179(v122, 1, v83) == 1)
        {
          sub_25E981210(v122, &qword_27FD0D888, &qword_25E9DBDA0);
          v120 = 0xE300000000000000;
          v121 = 7104878;
        }

        else
        {
          v121 = sub_25E9D7B80();
          v120 = v129;
          (*(v176 + 8))(v122, v83);
        }

        v81 = v183;
LABEL_44:
        sub_25E981210(v81, &qword_27FD0DD40, &unk_25E9DC120);
        v130 = sub_25E9887EC(v121, v120, v187);

        *(v111 + 4) = v130;
        *(v111 + 12) = 2080;
        v131 = v184;
        v132 = v175;
        sub_25E9811A8(v184, v175, &qword_27FD0DD40, &unk_25E9DC120);
        if (v185(v132, 1, v64) == 1)
        {
          sub_25E981210(v132, &qword_27FD0DD40, &unk_25E9DC120);
          v133 = 0xE300000000000000;
          v134 = v182;
        }

        else
        {
          v135 = v173;
          sub_25E9D79A0();
          v136 = v132;
          v137 = v135;
          (*(v180 + 8))(v136, v64);
          v138 = sub_25E9D7A80();
          v139 = *(v138 - 8);
          v140 = (*(v139 + 48))(v137, 1, v138);
          v134 = v182;
          if (v140 == 1)
          {
            v141 = &qword_27FD0D880;
            v142 = &unk_25E9D97C0;
            v143 = v137;
          }

          else
          {
            v144 = v168;
            sub_25E9D7A70();
            (*(v139 + 8))(v137, v138);
            if (v179(v144, 1, v83) != 1)
            {
              v145 = sub_25E9D7B80();
              v133 = v153;
              (*(v176 + 8))(v144, v83);
              v131 = v184;
LABEL_52:
              sub_25E981210(v131, &qword_27FD0DD40, &unk_25E9DC120);
              v146 = sub_25E9887EC(v145, v133, v187);

              *(v111 + 14) = v146;
              *(v111 + 22) = 2080;
              if (v107 > 2)
              {
                if (v107 <= 4)
                {
                  if (v107 == 3)
                  {
                    v147 = 0x800000025E9DCBB0;
                    v148 = 0xD00000000000001ALL;
                  }

                  else
                  {
                    v147 = 0xEE0065736E6F7073;
                    v148 = 0x65526E6F69746361;
                  }

                  goto LABEL_66;
                }

                if (v107 != 5)
                {
                  v147 = 0xE700000000000000;
                  v148 = 0x6E776F6E6B6E75;
                  goto LABEL_66;
                }

                v148 = 0xD000000000000015;
                v149 = "actionWithoutResponse";
                goto LABEL_63;
              }

              if (v107)
              {
                if (v107 != 1)
                {
                  v148 = 0xD000000000000015;
                  v149 = "requestDisambiguation";
LABEL_63:
                  v147 = (v149 - 32) | 0x8000000000000000;
                  goto LABEL_66;
                }

                v147 = 0xEC00000065746169;
                v148 = 0x64656D7265746E69;
              }

              else
              {
                v147 = 0xED00006E6F697463;
                v148 = 0x4174736575716572;
              }

LABEL_66:
              v116 = v177;
              v150 = v171;
              v151 = sub_25E9887EC(v148, v147, v187);

              *(v111 + 24) = v151;
              _os_log_impl(&dword_25E971000, v109, v170, "permutation - begin: %s, end: %s, result: %s", v111, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x25F8C51A0](v150, -1, -1);
              MEMORY[0x25F8C51A0](v111, -1, -1);

              sub_25E981210(v181, &qword_27FD0DD40, &unk_25E9DC120);
              sub_25E981210(v134, &qword_27FD0DD40, &unk_25E9DC120);
              goto LABEL_67;
            }

            v141 = &qword_27FD0D888;
            v142 = &qword_25E9DBDA0;
            v143 = v144;
          }

          sub_25E981210(v143, v141, v142);
          v133 = 0xE300000000000000;
          v131 = v184;
        }

        v145 = 7104878;
        goto LABEL_52;
      }

      v113 = &qword_27FD0D880;
      v114 = &unk_25E9D97C0;
      v115 = v117;
    }

    sub_25E981210(v115, v113, v114);
    v120 = 0xE300000000000000;
    v121 = 7104878;
    goto LABEL_44;
  }

  sub_25E981210(v106, &qword_27FD0DD40, &unk_25E9DC120);
  sub_25E981210(v81, &qword_27FD0DD40, &unk_25E9DC120);
  sub_25E981210(v108, &qword_27FD0DD40, &unk_25E9DC120);
  sub_25E981210(v104, &qword_27FD0DD40, &unk_25E9DC120);
  v116 = v177;
LABEL_67:
  result = swift_beginAccess();
  *v116 = v188;
  return result;
}

__n128 sub_25E9CA850@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  sub_25E9C9230(v86);
  v82 = v86[0];
  v11 = v7[2];
  v10 = v7[3];
  v85 = *(v11 + 152);
  v78 = *(v11 + 40);
  v67 = *(v11 + 48);
  v77 = *(v11 + 56);
  v64 = *(v11 + 64);
  v75 = *(v11 + 32);
  v76 = *(v11 + 24);
  v79 = *(v11 + 144);
  v80 = *(v11 + 136);

  v72 = *(v11 + 72);
  v71 = *(v11 + 104);
  v68 = *(v11 + 120);
  v69 = *(v11 + 88);
  v66 = sub_25E9C3AB4();
  v65 = v12;
  v13 = v8[4];
  v63 = sub_25E9C3AB4();
  v62 = v14;
  v15 = v8[5];
  v61 = sub_25E9C3AB4();
  v60 = v16;
  v17 = v8[6];
  v59 = sub_25E9C3AB4();
  v58 = v18;
  v19 = v8[7];
  v57 = sub_25E9C3AB4();
  v56 = v20;
  v21 = v8[8];
  v55 = sub_25E9C3AB4();
  v54 = v22;
  v23 = v8[9];
  v53 = sub_25E9C3AB4();
  v52 = v24;
  v25 = v8[10];
  v51 = sub_25E9C3AB4();
  v50 = v26;
  v27 = v8[11];
  v49 = sub_25E9C3AB4();
  v48 = v28;
  v29 = v8[12];
  v47 = sub_25E9C3AB4();
  v31 = v30;
  v32 = v8[13];
  v33 = sub_25E9C3AB4();
  v35 = v34;
  v36 = v8[14];
  v37 = sub_25E9C3AB4();
  LOBYTE(v11) = v38;
  v39 = v8[15];
  v40 = sub_25E9C3AB4();
  v42 = v41;
  v43 = v8[16];
  v44 = sub_25E9C3AB4();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v78;
  *(a7 + 56) = v67;
  *(a7 + 64) = v77;
  *(a7 + 72) = v64;
  *(a7 + 80) = v76;
  *(a7 + 88) = v75;
  *(a7 + 96) = v82;
  *(a7 + 168) = v80;
  *(a7 + 176) = v79;
  *(a7 + 120) = v69;
  *(a7 + 104) = v72;
  *(a7 + 152) = v68;
  result = v71;
  *(a7 + 136) = v71;
  *(a7 + 184) = v66;
  *(a7 + 192) = v65 & 1;
  *(a7 + 200) = v63;
  *(a7 + 208) = v62 & 1;
  *(a7 + 216) = v61;
  *(a7 + 224) = v60 & 1;
  *(a7 + 232) = v59;
  *(a7 + 240) = v58 & 1;
  *(a7 + 248) = v57;
  *(a7 + 256) = v56 & 1;
  *(a7 + 264) = v55;
  *(a7 + 272) = v54 & 1;
  *(a7 + 280) = v53;
  *(a7 + 288) = v52 & 1;
  *(a7 + 296) = v51;
  *(a7 + 304) = v50 & 1;
  *(a7 + 312) = v49;
  *(a7 + 320) = v48 & 1;
  *(a7 + 328) = v47;
  *(a7 + 336) = v31 & 1;
  *(a7 + 344) = v33;
  *(a7 + 352) = v35 & 1;
  *(a7 + 360) = v37;
  *(a7 + 368) = v11 & 1;
  *(a7 + 376) = v40;
  *(a7 + 384) = v42 & 1;
  *(a7 + 392) = v44;
  *(a7 + 400) = v46 & 1;
  *(a7 + 408) = v85;
  return result;
}

void *sub_25E9CAB90()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  return v0;
}

uint64_t sub_25E9CAC28()
{
  sub_25E9CAB90();

  return swift_deallocClassInstance();
}

void *sub_25E9CAC80()
{
  type metadata accessor for PlannerGrainDimensionsSpec();
  v1 = swift_allocObject();
  *(v1 + 16) = 6;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v139 = v0;
  v0[2] = v1;
  type metadata accessor for IETranscriptLatencyIntervalSpec();
  v2 = swift_allocObject();
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  if (qword_27FD0D5D8 != -1)
  {
    swift_once();
  }

  v3 = qword_27FD0F560;
  Event = type metadata accessor for IETranscriptNextEvent(0);
  v5 = *(Event + 48);
  v6 = *(Event + 52);
  v133 = Event;
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  v9 = sub_25E9D7A10();
  v10 = *(*(v9 - 8) + 56);
  v138 = v9;
  v10(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v3;
  *(v7 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v11 = type metadata accessor for IETranscriptEventFilter(0);
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v7;
  swift_beginAccess();
  v131 = v3;

  sub_25E986D14(v140, (v2 + 1));
  swift_endAccess();
  if (qword_27FD0D5E0 != -1)
  {
    swift_once();
  }

  v12 = qword_27FD0F568;
  v13 = type metadata accessor for IETranscriptLastEvent(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v10(v16 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v16 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v12;
  v17 = MEMORY[0x277D84F90];
  *(v16 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v16;
  swift_beginAccess();

  sub_25E986D14(v140, v2 + 56);
  swift_endAccess();
  v139[3] = v2;
  v18 = swift_allocObject();
  v18[2] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[5] = 0u;
  v18[1] = 0u;
  v19 = *(v133 + 48);
  v20 = *(v133 + 52);
  v21 = swift_allocObject();
  v10(v21 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v21 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v3;
  *(v21 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = v17;
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v21;
  swift_beginAccess();

  sub_25E986D14(v140, (v18 + 1));
  swift_endAccess();
  if (qword_27FD0D5E8 != -1)
  {
    swift_once();
  }

  v22 = qword_27FD0F570;
  v23 = *(v13 + 48);
  v24 = *(v13 + 52);
  v25 = swift_allocObject();
  v10(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v22;
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v25;
  swift_beginAccess();
  v129 = v22;

  sub_25E986D14(v140, v18 + 56);
  swift_endAccess();
  v139[4] = v18;
  v26 = swift_allocObject();
  v26[2] = 0u;
  v26[3] = 0u;
  v26[4] = 0u;
  v26[5] = 0u;
  v26[1] = 0u;
  v27 = *(v133 + 48);
  v28 = *(v133 + 52);
  v29 = swift_allocObject();
  v10(v29 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v29 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v131;
  *(v29 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v29;
  swift_beginAccess();

  sub_25E986D14(v140, (v26 + 1));
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v134 = sub_25E9D7B60();
  v130 = v13;
  v30 = *(v134 - 8);
  v136 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v137 = v136 + *(v30 + 72);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25E9D96A0;
  v135 = *(v30 + 104);
  v127 = *MEMORY[0x277D23510];
  v135(v31 + v136);
  v32 = *(v133 + 48);
  v33 = *(v133 + 52);
  v34 = swift_allocObject();
  v10(v34 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  v132 = v10;
  *(v34 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v31;
  *(v34 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v34;
  swift_beginAccess();
  sub_25E986D14(v140, v26 + 56);
  swift_endAccess();
  v139[5] = v26;
  v35 = swift_allocObject();
  v35[2] = 0u;
  v35[3] = 0u;
  v35[4] = 0u;
  v35[5] = 0u;
  v35[1] = 0u;
  v36 = *(v133 + 48);
  v37 = *(v133 + 52);
  v38 = swift_allocObject();
  v10(v38 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v38 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v131;
  *(v38 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v38;
  swift_beginAccess();

  sub_25E986D14(v140, (v35 + 1));
  swift_endAccess();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_25E9D96A0;
  v128 = *MEMORY[0x277D234B8];
  v135(v39 + v136);
  v40 = *(v133 + 48);
  v41 = *(v133 + 52);
  v42 = swift_allocObject();
  v10(v42 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v42 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v39;
  *(v42 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v42;
  swift_beginAccess();
  sub_25E986D14(v140, v35 + 56);
  swift_endAccess();
  v139[6] = v35;
  v43 = swift_allocObject();
  v43[2] = 0u;
  v43[3] = 0u;
  v43[4] = 0u;
  v43[5] = 0u;
  v43[1] = 0u;
  v44 = *(v133 + 48);
  v45 = *(v133 + 52);
  v46 = swift_allocObject();
  v10(v46 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v46 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v131;
  *(v46 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v46;
  swift_beginAccess();

  sub_25E986D14(v140, (v43 + 1));
  swift_endAccess();
  if (qword_27FD0D5F0 != -1)
  {
    swift_once();
  }

  v47 = qword_27FD0F578;
  v48 = *(v130 + 48);
  v49 = *(v130 + 52);
  v50 = swift_allocObject();
  v10(v50 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v50 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v47;
  *(v50 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v50;
  swift_beginAccess();

  sub_25E986D14(v140, v43 + 56);
  swift_endAccess();
  v139[7] = v43;
  v51 = swift_allocObject();
  v51[2] = 0u;
  v51[3] = 0u;
  v51[4] = 0u;
  v51[5] = 0u;
  v51[1] = 0u;
  v52 = *(v130 + 48);
  v53 = *(v130 + 52);
  v54 = swift_allocObject();
  v10(v54 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v54 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v22;
  *(v54 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v54;
  swift_beginAccess();

  sub_25E986D14(v140, (v51 + 1));
  swift_endAccess();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_25E9D96A0;
  (v135)(v55 + v136, *MEMORY[0x277D23500], v134);
  v56 = *(v130 + 48);
  v57 = *(v130 + 52);
  v58 = swift_allocObject();
  v10(v58 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v58 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v55;
  *(v58 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v58;
  swift_beginAccess();
  sub_25E986D14(v140, v51 + 56);
  swift_endAccess();
  v139[8] = v51;
  v59 = swift_allocObject();
  v59[2] = 0u;
  v59[3] = 0u;
  v59[4] = 0u;
  v59[5] = 0u;
  v59[1] = 0u;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_25E9D96A0;
  (v135)(v60 + v136, v127, v134);
  v61 = *(v133 + 48);
  v62 = *(v133 + 52);
  v63 = swift_allocObject();
  v10(v63 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v63 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v60;
  *(v63 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v63;
  swift_beginAccess();
  sub_25E986D14(v140, (v59 + 1));
  swift_endAccess();
  v64 = *(v130 + 48);
  v65 = *(v130 + 52);
  v66 = swift_allocObject();
  v10(v66 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v66 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v22;
  *(v66 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v66;
  swift_beginAccess();

  sub_25E986D14(v140, v59 + 56);
  swift_endAccess();
  v139[9] = v59;
  v67 = swift_allocObject();
  v67[2] = 0u;
  v67[3] = 0u;
  v67[4] = 0u;
  v67[5] = 0u;
  v67[1] = 0u;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_25E9D96A0;
  (v135)(v68 + v136, v128, v134);
  v69 = *(v133 + 48);
  v70 = *(v133 + 52);
  v71 = swift_allocObject();
  v10(v71 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v71 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v68;
  *(v71 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v71;
  swift_beginAccess();
  sub_25E986D14(v140, (v67 + 1));
  swift_endAccess();
  v72 = *(v130 + 48);
  v73 = *(v130 + 52);
  v74 = swift_allocObject();
  v10(v74 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v74 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v129;
  *(v74 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v74;
  swift_beginAccess();

  sub_25E986D14(v140, v67 + 56);
  swift_endAccess();
  v139[10] = v67;
  v75 = swift_allocObject();
  v75[2] = 0u;
  v75[3] = 0u;
  v75[4] = 0u;
  v75[5] = 0u;
  v75[1] = 0u;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_25E9D96A0;
  (v135)(v76 + v136, v128, v134);
  v77 = *(v133 + 48);
  v78 = *(v133 + 52);
  v79 = swift_allocObject();
  v10(v79 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v79 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v76;
  *(v79 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v79;
  swift_beginAccess();
  sub_25E986D14(v140, (v75 + 1));
  swift_endAccess();
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_25E9D96A0;
  (v135)(v80 + v136, v127, v134);
  v81 = *(v133 + 48);
  v82 = *(v133 + 52);
  v83 = swift_allocObject();
  v10(v83 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v83 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v80;
  *(v83 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v83;
  swift_beginAccess();
  sub_25E986D14(v140, v75 + 56);
  swift_endAccess();
  v139[11] = v75;
  v84 = swift_allocObject();
  v84[2] = 0u;
  v84[3] = 0u;
  v84[4] = 0u;
  v84[5] = 0u;
  v84[1] = 0u;
  v85 = *(v130 + 48);
  v86 = *(v130 + 52);
  v87 = swift_allocObject();
  v10(v87 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v87 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v47;
  *(v87 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v87;
  swift_beginAccess();

  sub_25E986D14(v140, (v84 + 1));
  swift_endAccess();
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_25E9D96A0;
  (v135)(v88 + v136, v128, v134);
  v89 = *(v133 + 48);
  v90 = *(v133 + 52);
  v91 = swift_allocObject();
  v10(v91 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v91 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v88;
  *(v91 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v91;
  swift_beginAccess();
  sub_25E986D14(v140, v84 + 56);
  swift_endAccess();
  v139[12] = v84;
  v92 = swift_allocObject();
  v92[2] = 0u;
  v92[3] = 0u;
  v92[4] = 0u;
  v92[5] = 0u;
  v92[1] = 0u;
  v93 = *(v133 + 48);
  v94 = *(v133 + 52);
  v95 = swift_allocObject();
  v10(v95 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v95 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v131;
  *(v95 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v95;
  swift_beginAccess();

  sub_25E986D14(v140, (v92 + 1));
  swift_endAccess();
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_25E9D96A0;
  (v135)(v96 + v136, *MEMORY[0x277D234D8], v134);
  v97 = *(v130 + 48);
  v98 = *(v130 + 52);
  v99 = swift_allocObject();
  v10(v99 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v99 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v96;
  *(v99 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v99;
  swift_beginAccess();
  sub_25E986D14(v140, v92 + 56);
  swift_endAccess();
  v139[13] = v92;
  v100 = swift_allocObject();
  v100[2] = 0u;
  v100[3] = 0u;
  v100[4] = 0u;
  v100[5] = 0u;
  v100[1] = 0u;
  v101 = *(v133 + 48);
  v102 = *(v133 + 52);
  v103 = swift_allocObject();
  v10(v103 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v103 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v131;
  *(v103 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v103;
  swift_beginAccess();

  sub_25E986D14(v140, (v100 + 1));
  swift_endAccess();
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_25E9D96A0;
  (v135)(v104 + v136, *MEMORY[0x277D234D0], v134);
  v105 = *(v130 + 48);
  v106 = *(v130 + 52);
  v107 = swift_allocObject();
  v10(v107 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v107 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v104;
  *(v107 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v107;
  swift_beginAccess();
  sub_25E986D14(v140, v100 + 56);
  swift_endAccess();
  v139[14] = v100;
  v108 = swift_allocObject();
  v108[2] = 0u;
  v108[3] = 0u;
  v108[4] = 0u;
  v108[5] = 0u;
  v108[1] = 0u;
  v109 = *(v133 + 48);
  v110 = *(v133 + 52);
  v111 = swift_allocObject();
  v10(v111 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v111 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v131;
  *(v111 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v111;
  swift_beginAccess();

  sub_25E986D14(v140, (v108 + 1));
  swift_endAccess();
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_25E9D96A0;
  (v135)(v112 + v136, *MEMORY[0x277D234E0], v134);
  v113 = *(v130 + 48);
  v114 = *(v130 + 52);
  v115 = swift_allocObject();
  v10(v115 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v115 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v112;
  *(v115 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v115;
  swift_beginAccess();
  sub_25E986D14(v140, v108 + 56);
  swift_endAccess();
  v139[15] = v108;
  v116 = swift_allocObject();
  v116[2] = 0u;
  v116[3] = 0u;
  v116[4] = 0u;
  v116[5] = 0u;
  v116[1] = 0u;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_25E9D96A0;
  (v135)(v117 + v136, *MEMORY[0x277D234C8], v134);
  v118 = *(v133 + 48);
  v119 = *(v133 + 52);
  v120 = swift_allocObject();
  v132(v120 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v120 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v117;
  *(v120 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v120;
  swift_beginAccess();
  sub_25E986D14(v140, (v116 + 1));
  swift_endAccess();
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_25E9D96A0;
  (v135)(v121 + v136, *MEMORY[0x277D234E8], v134);
  v122 = *(v130 + 48);
  v123 = *(v130 + 52);
  v124 = swift_allocObject();
  v132(v124 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v138);
  *(v124 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v121;
  *(v124 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v141 = v11;
  v142 = &off_2870ACBA8;
  v140[0] = v124;
  swift_beginAccess();
  sub_25E986D14(v140, v116 + 56);
  swift_endAccess();
  v125 = MEMORY[0x277D84FA0];
  result = v139;
  v139[16] = v116;
  v139[17] = v125;
  return result;
}

uint64_t sub_25E9CC728()
{
  v1 = sub_25E9D7BD0();
  v103 = *(v1 - 8);
  v104 = v1;
  v2 = *(v103 + 64);
  MEMORY[0x28223BE20](v1);
  v102 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = &v98 - v6;
  v7 = sub_25E9D7CA0();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  MEMORY[0x28223BE20](v7);
  v101 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE0, &qword_25E9DBD88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v98 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE8, &unk_25E9DBD90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v106 = &v98 - v16;
  v17 = sub_25E9D7AA0();
  v105 = *(v17 - 8);
  v18 = *(v105 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v98 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v98 - v30;
  if (sub_25E9CDA4C())
  {
    v32 = sub_25E9D7990();
    v33 = v0[8];
    v0[7] = v32;
    v0[8] = v34;

    v35 = sub_25E9D79D0();
    v36 = v0[6];
    v0[5] = v35;
    v0[6] = v37;
  }

  v107 = v0;
  sub_25E9D79A0();
  v38 = sub_25E9D7A80();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v24, 1, v38) == 1)
  {
    sub_25E981210(v24, &qword_27FD0D880, &unk_25E9D97C0);
    v40 = sub_25E9D7B90();
    v41 = v31;
    (*(*(v40 - 8) + 56))(v31, 1, 1, v40);
    return sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9D7A70();
  (*(v39 + 8))(v24, v38);
  v41 = v31;
  v42 = sub_25E9D7B90();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v31, 1, v42) == 1)
  {
    return sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9811A8(v31, v29, &qword_27FD0D888, &qword_25E9DBDA0);
  result = (*(v43 + 88))(v29, v42);
  if (result == *MEMORY[0x277D23588])
  {
    (*(v43 + 96))(v29, v42);
    v45 = v105;
    (*(v105 + 32))(v20, v29, v17);
    sub_25E9D7A90();
    v46 = sub_25E9D7C70();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 48))(v13, 1, v46);
    v49 = v107;
    if (v48 == 1)
    {
      (*(v45 + 8))(v20, v17);
      sub_25E981210(v13, &qword_27FD0DCE0, &qword_25E9DBD88);
      v50 = sub_25E9D7D20();
      v51 = v106;
      (*(*(v50 - 8) + 56))(v106, 1, 1, v50);
    }

    else
    {
      v51 = v106;
      sub_25E9D7C60();
      (*(v45 + 8))(v20, v17);
      (*(v47 + 8))(v13, v46);
      v59 = sub_25E9D7D20();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v51, 1, v59) != 1)
      {
        v65 = (*(v60 + 88))(v51, v59);
        v66 = *MEMORY[0x277D23600];
        result = (*(v60 + 8))(v51, v59);
        if (v65 == v66)
        {
          v67 = v49[17];
          v57 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (!v57)
          {
            v49[17] = v68;
            return sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
          }

          goto LABEL_51;
        }

        goto LABEL_14;
      }
    }

    result = sub_25E981210(v51, &qword_27FD0DCE8, &unk_25E9DBD90);
LABEL_14:
    v61 = v49[9];
    v57 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (!v57)
    {
      v49[9] = v62;
      return sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    __break(1u);
    goto LABEL_49;
  }

  v52 = v107;
  if (result == *MEMORY[0x277D23538])
  {
    v53 = sub_25E9D79E0();
    v54 = v52[4];
    v52[3] = v53;
    v52[4] = v55;

    v56 = v52[10];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v52[10] = v58;
LABEL_25:
    (*(v43 + 8))(v29, v42);
    return sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23568])
  {
    v63 = v107[13];
    v57 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v57)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v107[13] = v64;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D23550])
  {
    v69 = v107[11];
    v57 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v57)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v107[11] = v70;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D23548])
  {
    (*(v43 + 96))(v29, v42);
    v72 = v102;
    v71 = v103;
    v73 = v104;
    result = (*(v103 + 32))(v102, v29, v104);
    v74 = v52[18];
    v57 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v57)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v52[18] = v75;
    v76 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(v72);
    (*(v71 + 8))(v72, v73);
LABEL_30:
    v77 = v52[19];
    v52[19] = v76;

    return sub_25E981210(v41, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23558])
  {
    v78 = v107[12];
    v57 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v57)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v107[12] = v79;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D23580])
  {
    v80 = v107[14];
    v57 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v57)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v107[14] = v81;
    goto LABEL_25;
  }

  if (result != *MEMORY[0x277D23560])
  {
    goto LABEL_25;
  }

  (*(v43 + 96))(v29, v42);
  v83 = v99;
  v82 = v100;
  result = (*(v99 + 32))(v101, v29, v100);
  v84 = v52[15];
  v57 = __OFADD__(v84, 1);
  v85 = v84 + 1;
  if (v57)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v52[15] = v85;
  v86 = v98;
  sub_25E9D79F0();
  v87 = sub_25E9D7C40();
  v88 = *(v87 - 8);
  if ((*(v88 + 48))(v86, 1, v87) == 1)
  {
    sub_25E981210(v86, &qword_27FD0D8A0, &unk_25E9D97E0);
LABEL_47:
    v97 = v101;
    v76 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0();
    (*(v83 + 8))(v97, v82);
    goto LABEL_30;
  }

  v89 = sub_25E9D79E0();
  v90 = v86;
  v91 = v89;
  v93 = v92;
  (*(v88 + 8))(v90, v87);
  if (v91 == 0x6F7365526E616C70 && v93 == 0xEE006E6F6974756CLL)
  {
  }

  else
  {
    v94 = sub_25E9D8300();

    if ((v94 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v95 = v52[16];
  v57 = __OFADD__(v95, 1);
  v96 = v95 + 1;
  if (!v57)
  {
    v52[16] = v96;
    goto LABEL_47;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_25E9CD228()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[19];

  return swift_deallocClassInstance();
}

double sub_25E9CD29C()
{
  *(v0 + 16) = 6;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  return result;
}

uint64_t sub_25E9CD2F8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_25E9D8380();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_25E9CD5FC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25E9CD3D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD70, qword_25E9DC130);
  result = sub_25E9D8220();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_25E9D8380();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}