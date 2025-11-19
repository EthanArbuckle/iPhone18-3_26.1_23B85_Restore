void sub_261B4E720(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  v4 = *(*a1 + 448);
  v5 = v3[1];
  *v2 = *v3;
  *(v2 + 16) = v5;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[5];
  *(v2 + 64) = v3[4];
  *(v2 + 80) = v8;
  *(v2 + 32) = v6;
  *(v2 + 48) = v7;
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[9];
  *(v2 + 128) = v3[8];
  *(v2 + 144) = v11;
  *(v2 + 96) = v9;
  *(v2 + 112) = v10;
  v12 = v3[10];
  v13 = v3[11];
  v14 = v3[13];
  *(v2 + 192) = v3[12];
  *(v2 + 208) = v14;
  *(v2 + 160) = v12;
  *(v2 + 176) = v13;
  v15 = *(v2 + 168);
  *(v2 + 456) = v4;
  if (a2)
  {
    sub_261CFD104();
    sub_261B4E63C(v2, (v2 + 224));
    sub_261CFCBC4();
    sub_261B4E674(v2);
    v16 = *(v2 + 448);
  }

  else
  {
    sub_261B4E63C(v2, (v2 + 224));
    sub_261CFCBC4();
    sub_261B4E674(v2);
  }

  free(v2);
}

uint64_t UpdateReminderAppIntent.hashtags.getter()
{
  v1 = *(v0 + 176);
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4E81C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.hashtags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 176);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.urls.getter()
{
  v1 = *(v0 + 184);
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4E9A8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.urls.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 184);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.images.getter()
{
  v1 = *(v0 + 192);
  sub_261CFCBB4();
  return v3;
}

uint64_t *sub_261B4EB34(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[11];
  v12[10] = a2[10];
  v12[11] = v3;
  v4 = a2[13];
  v12[12] = a2[12];
  v12[13] = v4;
  v5 = a2[7];
  v12[6] = a2[6];
  v12[7] = v5;
  v6 = a2[9];
  v12[8] = a2[8];
  v12[9] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  v11[28] = v2;
  sub_261CFD104();
  sub_261B4E63C(v12, v11);
  sub_261CFCBC4();
  return sub_261B4E674(v12);
}

uint64_t (*UpdateReminderAppIntent.images.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 192);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v239 = a1;
  v214 = sub_261CFC894();
  v217 = *(v214 - 8);
  v1 = *(v217 + 64);
  MEMORY[0x28223BE20](v214);
  v213 = v195 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v210 = v195 - v5;
  v226 = sub_261CFD674();
  v232 = *(v226 - 8);
  v6 = *(v232 + 64);
  MEMORY[0x28223BE20](v226);
  v231 = v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v230 = v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFFA44();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v235 = v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD6A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v222 = v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v229 = v195 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v206 = v195 - v23;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA28, &unk_261D035E0);
  v215 = *(v212 - 8);
  v24 = *(v215 + 64);
  MEMORY[0x28223BE20](v212);
  v207 = v195 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v228 = v195 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v221 = v195 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v220 = v195 - v34;
  v233 = sub_261CFD184();
  v35 = *(v233 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v233);
  v38 = v195 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v224 = v195 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = v195 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = v195 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = v195 - v51;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  v238 = *(v15 + 56);
  v240 = v15 + 56;
  v238(v52, 1, 1, v14);
  LOBYTE(v246) = 2;
  v53 = sub_261CFFCE4();
  (*(*(v53 - 8) + 56))(v48, 1, 1, v53);
  v54 = sub_261CFC834();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v241 = v55 + 56;
  v244 = v54;
  v56(v44, 1, 1, v54);
  v242 = v56;
  v243 = *MEMORY[0x277CBA308];
  v234 = *(v35 + 104);
  v237 = v35 + 104;
  v57 = v233;
  v234(v38);
  v225 = v52;
  v58 = v38;
  v59 = sub_261CFCD34();
  v60 = v239;
  *v239 = v59;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA38, &qword_261D10210);
  v61 = v238;
  v238(v52, 1, 1, v14);
  v62 = sub_261CFD524();
  (*(*(v62 - 8) + 56))(v220, 1, 1, v62);
  v56(v44, 1, 1, v54);
  v236 = v58;
  v63 = v58;
  v64 = v234;
  (v234)(v63, v243, v57);
  v65 = v225;
  v60[1] = sub_261CFCCB4();
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA40, &unk_261D03600);
  v227 = v14;
  v61(v65, 1, 1, v14);
  *&v246 = 0;
  v219 = sub_261CFF994();
  v66 = *(v219 - 8);
  v218 = *(v66 + 56);
  v220 = (v66 + 56);
  v218(v221, 1, 1, v219);
  v67 = v244;
  v242(v44, 1, 1, v244);
  v68 = v236;
  (v64)(v236, v243, v233);
  v69 = v68;
  v239[2] = sub_261CFCD04();
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA48, &unk_261D10230);
  v238(v65, 1, 1, v14);
  v70 = sub_261CFD4E4();
  (*(*(v70 - 8) + 56))(v228, 1, 1, v70);
  v71 = v242;
  v242(v44, 1, 1, v67);
  v199 = *MEMORY[0x277CB9EF0];
  v72 = *(v215 + 104);
  v215 += 104;
  v200 = v72;
  v72(v207);
  v73 = v69;
  v74 = v69;
  v75 = v233;
  v76 = v234;
  (v234)(v74, v243, v233);
  v77 = v225;
  v239[3] = sub_261CFCC94();
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA50, &qword_261D03610);
  v78 = v77;
  v79 = v227;
  v80 = v238;
  v238(v78, 1, 1, v227);
  v71(v44, 1, 1, v244);
  (v76)(v73, v243, v75);
  v81 = v225;
  v82 = sub_261CFCCD4();
  v83 = v239;
  v239[4] = v82;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA58, &qword_261D03618);
  v84 = v81;
  v85 = v80;
  v80(v84, 1, 1, v79);
  *&v246 = 0;
  v86 = v244;
  v71(v44, 1, 1, v244);
  v71(v224, 1, 1, v86);
  v87 = v243;
  (v234)(v236, v243, v233);
  v216 = sub_261B517D0(&qword_280D22358, type metadata accessor for ReminderEntity);
  v88 = v225;
  v83[5] = sub_261CFCC14();
  v195[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  v89 = v227;
  v85(v88, 1, 1, v227);
  v197 = type metadata accessor for ListEntity();
  v90 = *(v197 - 8);
  v196 = *(v90 + 56);
  v198 = v90 + 56;
  v196(v206, 1, 1, v197);
  v91 = v244;
  v92 = v242;
  v242(v44, 1, 1, v244);
  v92(v224, 1, 1, v91);
  v93 = v233;
  v94 = v234;
  (v234)(v236, v87, v233);
  v195[0] = sub_261B517D0(&qword_280D227A0, type metadata accessor for ListEntity);
  v95 = sub_261CFCC14();
  v96 = v239;
  v239[6] = v95;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  v238(v88, 1, 1, v89);
  v97 = type metadata accessor for SectionEntity();
  (*(*(v97 - 8) + 56))(v229, 1, 1, v97);
  v98 = v244;
  v99 = v242;
  v242(v44, 1, 1, v244);
  v99(v224, 1, 1, v98);
  (v94)(v236, v243, v93);
  sub_261B517D0(&qword_280D224E0, type metadata accessor for SectionEntity);
  v100 = v225;
  v96[7] = sub_261CFCC14();
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v229) = *MEMORY[0x277CC9110];
  v101 = *(v232 + 104);
  v232 += 104;
  v228 = v101;
  v102 = v226;
  (v101)(v231);
  sub_261CFD6B4();
  v238(v100, 1, 1, v227);
  v203 = type metadata accessor for ReminderEntity();
  v103 = *(v203 - 8);
  v202 = *(v103 + 56);
  v204 = v103 + 56;
  v202(v210, 1, 1, v203);
  v104 = v244;
  v105 = v242;
  v242(v44, 1, 1, v244);
  v105(v224, 1, 1, v104);
  v106 = v236;
  (v234)(v236, v243, v233);
  v107 = v106;
  v239[8] = sub_261CFCC34();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v228)(v231, v229, v102);
  sub_261CFD6B4();
  v108 = v100;
  v109 = v227;
  v110 = v238;
  v238(v108, 1, 1, v227);
  v246 = 0uLL;
  v218(v221, 1, 1, v219);
  v242(v44, 1, 1, v244);
  v111 = v233;
  (v234)(v107, v243, v233);
  v112 = sub_261CFCD24();
  v113 = v239;
  v239[9] = v112;
  v211 = 0xD000000000000025;
  sub_261CFF9B4();
  sub_261CFD874();
  (v228)(v231, v229, v226);
  sub_261CFD6C4();
  v114 = v225;
  v110(v225, 1, 1, v109);
  v196(v206, 1, 1, v197);
  v115 = v44;
  v116 = v44;
  v117 = v244;
  v118 = v242;
  v242(v116, 1, 1, v244);
  v118(v224, 1, 1, v117);
  v119 = v243;
  v120 = v111;
  v121 = v234;
  (v234)(v236, v243, v120);
  v122 = v114;
  v123 = v115;
  v113[10] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  v124 = v231;
  (v228)(v231, v229, v226);
  sub_261CFD6C4();
  v125 = v238;
  v238(v122, 1, 1, v227);
  v242(v123, 1, 1, v244);
  v200(v207, v199, v212);
  v121(v236, v119, v233);
  v239[11] = sub_261CFCCA4();
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA70, &qword_261D03640);
  sub_261CFF9B4();
  sub_261CFD874();
  (v228)(v124, v229, v226);
  sub_261CFD6C4();
  v126 = v227;
  v125(v122, 1, 1, v227);
  v246 = 0u;
  v247 = 0u;
  v223 = v123;
  v127 = v123;
  v128 = v244;
  v129 = v242;
  v242(v127, 1, 1, v244);
  v129(v224, 1, 1, v128);
  v130 = v233;
  (v234)(v236, v243, v233);
  sub_261B51818();
  v239[12] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  v131 = v226;
  (v228)(v124, v229, v226);
  sub_261CFD6C4();
  v132 = v126;
  v133 = v126;
  v134 = v238;
  v238(v225, 1, 1, v132);
  v242(v223, 1, 1, v244);
  (v234)(v236, v243, v130);
  v239[13] = sub_261CFCCF4();
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA80, &qword_261D03648);
  sub_261CFF9B4();
  sub_261CFD874();
  v135 = v229;
  v136 = v131;
  v137 = v228;
  (v228)(v231, v229, v136);
  sub_261CFD6C4();
  v134(v225, 1, 1, v133);
  *&v247 = 0;
  v246 = 0uLL;
  v138 = v244;
  v139 = v242;
  v242(v223, 1, 1, v244);
  v139(v224, 1, 1, v138);
  (v234)(v236, v243, v233);
  sub_261B5186C();
  v239[14] = sub_261CFCC34();
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA88, &unk_261D03650);
  sub_261CFF9B4();
  sub_261CFD874();
  (v137)(v231, v135, v226);
  sub_261CFD6C4();
  v140 = v225;
  v238(v225, 1, 1, v227);
  v139(v223, 1, 1, v244);
  LODWORD(v212) = *MEMORY[0x277CB9CE0];
  v141 = *(v217 + 104);
  v217 += 104;
  v208 = v141;
  v141(v213);
  v142 = v243;
  v143 = v233;
  v144 = v234;
  (v234)(v236, v243, v233);
  v145 = sub_261CFCC84();
  v146 = v239;
  v239[15] = v145;
  sub_261CFF9B4();
  sub_261CFD874();
  v147 = v228;
  (v228)(v231, v229, v226);
  sub_261CFD6C4();
  v238(v140, 1, 1, v227);
  v148 = v223;
  v242(v223, 1, 1, v244);
  v208(v213, v212, v214);
  v149 = v236;
  v144(v236, v142, v143);
  v146[16] = sub_261CFCC84();
  v217 = 0xD000000000000026;
  sub_261CFF9B4();
  sub_261CFD874();
  v150 = v226;
  (v147)(v231, v229, v226);
  sub_261CFD6C4();
  v151 = v227;
  v238(v140, 1, 1, v227);
  v246 = 0uLL;
  v218(v221, 1, 1, v219);
  v242(v148, 1, 1, v244);
  (v234)(v149, v243, v233);
  v239[17] = sub_261CFCD24();
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA90, &qword_261D10240);
  sub_261CFF9B4();
  sub_261CFD874();
  (v228)(v231, v229, v150);
  sub_261CFD6C4();
  v152 = v225;
  v238(v225, 1, 1, v151);
  LOBYTE(v246) = 3;
  v153 = v244;
  v154 = v242;
  v242(v148, 1, 1, v244);
  v155 = v224;
  v154(v224, 1, 1, v153);
  v156 = v243;
  v157 = v234;
  (v234)(v236, v243, v233);
  sub_261B52470();
  v239[18] = sub_261CFCC04();
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAA0, &unk_261D03660);
  sub_261CFF9B4();
  sub_261CFD874();
  v158 = v229;
  (v228)(v231, v229, v226);
  sub_261CFD6C4();
  v159 = v152;
  v160 = v238;
  v238(v152, 1, 1, v227);
  LOBYTE(v246) = 4;
  v161 = v244;
  v162 = v242;
  v242(v223, 1, 1, v244);
  v162(v155, 1, 1, v161);
  v157(v236, v156, v233);
  sub_261B524C4();
  v239[19] = sub_261CFCC04();
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v163 = v226;
  (v228)(v231, v158, v226);
  sub_261CFD6C4();
  v164 = v227;
  v160(v159, 1, 1, v227);
  v202(v210, 1, 1, v203);
  v165 = v244;
  v166 = v242;
  v242(v223, 1, 1, v244);
  v166(v224, 1, 1, v165);
  v167 = v234;
  (v234)(v236, v243, v233);
  v168 = v225;
  v169 = sub_261CFCC34();
  v170 = v239;
  v239[20] = v169;
  sub_261CFF9B4();
  sub_261CFD874();
  (v228)(v231, v229, v163);
  sub_261CFD6C4();
  v171 = v168;
  v238(v168, 1, 1, v164);
  *&v246 = 0;
  v172 = v223;
  v173 = v244;
  v174 = v242;
  v242(v223, 1, 1, v244);
  v174(v224, 1, 1, v173);
  v175 = v236;
  v176 = v233;
  (v167)(v236, v243, v233);
  v177 = v171;
  v178 = v172;
  v179 = v175;
  v170[21] = sub_261CFCC34();
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB8, &qword_261D03670);
  sub_261CFF9B4();
  sub_261CFD874();
  v180 = v231;
  (v228)(v231, v229, v226);
  sub_261CFD6C4();
  v238(v177, 1, 1, v227);
  *&v246 = 0;
  v218(v221, 1, 1, v219);
  v242(v178, 1, 1, v244);
  v181 = v176;
  v182 = v176;
  v183 = v234;
  (v234)(v179, v243, v181);
  v184 = sub_261CFCD24();
  v185 = v239;
  v239[22] = v184;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAC0, &qword_261D03678);
  sub_261CFF9B4();
  sub_261CFD874();
  (v228)(v180, v229, v226);
  sub_261CFD6C4();
  v186 = v225;
  v238(v225, 1, 1, v227);
  *&v246 = 0;
  v187 = v223;
  v242(v223, 1, 1, v244);
  v188 = v236;
  (v183)(v236, v243, v182);
  v189 = v187;
  v190 = v188;
  v185[23] = sub_261CFCCC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAC8, &unk_261D03680);
  sub_261CFF9B4();
  sub_261CFD874();
  (v228)(v231, v229, v226);
  sub_261CFD6C4();
  v238(v186, 1, 1, v227);
  *&v246 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAD0, &qword_261D10220);
  v191 = *(sub_261CFF6A4() - 8);
  v192 = *(v191 + 72);
  v193 = (*(v191 + 80) + 32) & ~*(v191 + 80);
  *(swift_allocObject() + 16) = xmmword_261D03450;
  sub_261CFF684();
  v242(v189, 1, 1, v244);
  (v234)(v190, v243, v182);
  v185[24] = sub_261CFCC64();
  v185[25] = 0;
  v185[26] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAD8, &qword_261D03690);
  v245 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v185[27] = result;
  return result;
}

uint64_t sub_261B517D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261B51818()
{
  result = qword_27FEDAA78;
  if (!qword_27FEDAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAA78);
  }

  return result;
}

unint64_t sub_261B5186C()
{
  result = qword_280D22110;
  if (!qword_280D22110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22110);
  }

  return result;
}

uint64_t UpdateReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 464) = a1;
  v3 = v1[11];
  *(v2 + 176) = v1[10];
  *(v2 + 192) = v3;
  v4 = v1[13];
  *(v2 + 208) = v1[12];
  *(v2 + 224) = v4;
  v5 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v5;
  v6 = v1[9];
  *(v2 + 144) = v1[8];
  *(v2 + 160) = v6;
  v7 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v7;
  v8 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v8;
  v9 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v9;
  sub_261CFFD24();
  *(v2 + 472) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v2 + 480) = v11;
  *(v2 + 488) = v10;

  return MEMORY[0x2822009F8](sub_261B51990, v11, v10);
}

uint64_t sub_261B51990()
{
  sub_261B4E63C(v0 + 2, v0 + 30);
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_261B51A58;
  v2 = v0[58];

  return sub_261C55268(v2, "UpdateReminderAppIntent", 23, 2, (v0 + 2));
}

uint64_t sub_261B51A58()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 488);
  v6 = *(v2 + 480);
  if (v0)
  {
    v7 = sub_261B53108;
  }

  else
  {
    v7 = sub_261B5310C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B51B94(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  sub_261CFFD24();
  v2[37] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[38] = v4;
  v2[39] = v3;

  return MEMORY[0x2822009F8](sub_261B51C2C, v4, v3);
}

uint64_t sub_261B51C2C()
{
  v1 = *(v0 + 288);
  sub_261B11B20(1);
  v2 = *(v1 + 216);
  sub_261CFC664();
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_1((v0 + 240), v3);
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = *(v1 + 80);
  v8 = *(v1 + 32);
  v7 = *(v1 + 48);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 96) = v6;
  *(v0 + 48) = v8;
  *(v0 + 64) = v7;
  v9 = *(v1 + 144);
  v11 = *(v1 + 96);
  v10 = *(v1 + 112);
  *(v0 + 144) = *(v1 + 128);
  *(v0 + 160) = v9;
  *(v0 + 112) = v11;
  *(v0 + 128) = v10;
  v12 = *(v1 + 208);
  v14 = *(v1 + 160);
  v13 = *(v1 + 176);
  *(v0 + 208) = *(v1 + 192);
  *(v0 + 224) = v12;
  *(v0 + 176) = v14;
  *(v0 + 192) = v13;
  v15 = *(v4 + 8);
  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 320) = v17;
  *v17 = v0;
  v17[1] = sub_261B51DB8;
  v18 = *(v0 + 280);

  return v20(v18, v0 + 16, v3, v4);
}

uint64_t sub_261B51DB8()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v8 = *v1;
  *(*v1 + 328) = v0;

  v4 = *(v2 + 304);
  v5 = *(v2 + 312);
  if (v0)
  {
    v6 = sub_261B51F38;
  }

  else
  {
    v6 = sub_261B51ECC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261B51ECC()
{
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  v2 = v0[1];

  return v2();
}

uint64_t sub_261B51F38()
{
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  v2 = v0[1];
  v3 = v0[41];

  return v2();
}

uint64_t sub_261B51FA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9878 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B52094(uint64_t a1)
{
  *(v2 + 464) = a1;
  v3 = v1[11];
  *(v2 + 176) = v1[10];
  *(v2 + 192) = v3;
  v4 = v1[13];
  *(v2 + 208) = v1[12];
  *(v2 + 224) = v4;
  v5 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v5;
  v6 = v1[9];
  *(v2 + 144) = v1[8];
  *(v2 + 160) = v6;
  v7 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v7;
  v8 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v8;
  v9 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v9;
  sub_261CFFD24();
  *(v2 + 472) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v2 + 480) = v11;
  *(v2 + 488) = v10;

  return MEMORY[0x2822009F8](sub_261B52164, v11, v10);
}

uint64_t sub_261B52164()
{
  sub_261B4E63C(v0 + 2, v0 + 30);
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_261B5222C;
  v2 = v0[58];

  return sub_261C55268(v2, "UpdateReminderAppIntent", 23, 2, (v0 + 2));
}

uint64_t sub_261B5222C()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 488);
  v6 = *(v2 + 480);
  if (v0)
  {
    v7 = sub_261B523CC;
  }

  else
  {
    v7 = sub_261B52368;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B52368()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261B523CC()
{
  v1 = v0[59];

  v2 = v0[1];
  v3 = v0[63];

  return v2();
}

uint64_t sub_261B52434(uint64_t a1)
{
  v2 = sub_261B31CE4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B52470()
{
  result = qword_27FEDAA98;
  if (!qword_27FEDAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAA98);
  }

  return result;
}

unint64_t sub_261B524C4()
{
  result = qword_27FEDAAA8;
  if (!qword_27FEDAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAA8);
  }

  return result;
}

unint64_t sub_261B5251C()
{
  result = qword_27FEDAAE0;
  if (!qword_27FEDAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAE0);
  }

  return result;
}

unint64_t sub_261B52574()
{
  result = qword_27FEDAAE8;
  if (!qword_27FEDAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAE8);
  }

  return result;
}

uint64_t keypath_get_53Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 168);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t destroy for UpdateReminderAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];

  v9 = a1[7];

  v10 = a1[8];

  v11 = a1[9];

  v12 = a1[10];

  v13 = a1[11];

  v14 = a1[12];

  v15 = a1[13];

  v16 = a1[14];

  v17 = a1[15];

  v18 = a1[16];

  v19 = a1[17];

  v20 = a1[18];

  v21 = a1[19];

  v22 = a1[20];

  v23 = a1[21];

  v24 = a1[22];

  v25 = a1[23];

  v26 = a1[24];

  v27 = a1[26];

  v28 = a1[27];
}

void *initializeWithCopy for UpdateReminderAppIntent(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v11 = a2[11];
  a1[10] = a2[10];
  a1[11] = v11;
  v12 = a2[13];
  a1[12] = a2[12];
  a1[13] = v12;
  v13 = a2[15];
  a1[14] = a2[14];
  a1[15] = v13;
  v14 = a2[17];
  a1[16] = a2[16];
  a1[17] = v14;
  v15 = a2[19];
  a1[18] = a2[18];
  a1[19] = v15;
  v16 = a2[21];
  a1[20] = a2[20];
  a1[21] = v16;
  v8 = a2[23];
  a1[22] = a2[22];
  a1[23] = v8;
  v9 = a2[25];
  a1[24] = a2[24];
  a1[25] = v9;
  v17 = a2[27];
  a1[26] = a2[26];
  a1[27] = v17;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v7 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v8 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v9 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v10 = a1[6];
  a1[6] = a2[6];
  sub_261CFCDA4();

  v11 = a1[7];
  a1[7] = a2[7];
  sub_261CFCDA4();

  v12 = a1[8];
  a1[8] = a2[8];
  sub_261CFCDA4();

  v13 = a1[9];
  a1[9] = a2[9];
  sub_261CFCDA4();

  v14 = a1[10];
  a1[10] = a2[10];
  sub_261CFCDA4();

  v15 = a1[11];
  a1[11] = a2[11];
  sub_261CFCDA4();

  v16 = a1[12];
  a1[12] = a2[12];
  sub_261CFCDA4();

  v17 = a1[13];
  a1[13] = a2[13];
  sub_261CFCDA4();

  v18 = a1[14];
  a1[14] = a2[14];
  sub_261CFCDA4();

  v19 = a1[15];
  a1[15] = a2[15];
  sub_261CFCDA4();

  v20 = a1[16];
  a1[16] = a2[16];
  sub_261CFCDA4();

  v21 = a1[17];
  a1[17] = a2[17];
  sub_261CFCDA4();

  v22 = a1[18];
  a1[18] = a2[18];
  sub_261CFCDA4();

  v23 = a1[19];
  a1[19] = a2[19];
  sub_261CFCDA4();

  v24 = a1[20];
  a1[20] = a2[20];
  sub_261CFCDA4();

  v25 = a1[21];
  a1[21] = a2[21];
  sub_261CFCDA4();

  v26 = a1[22];
  a1[22] = a2[22];
  sub_261CFCDA4();

  v27 = a1[23];
  a1[23] = a2[23];
  sub_261CFCDA4();

  v28 = a1[24];
  a1[24] = a2[24];
  sub_261CFCDA4();

  a1[25] = a2[25];
  v29 = a1[26];
  a1[26] = a2[26];
  sub_261CFD104();

  v30 = a2[27];
  v31 = a1[27];
  a1[27] = v30;
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

void *assignWithTake for UpdateReminderAppIntent(void *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = *(a2 + 32);

  v10 = a1[6];

  v11 = a1[7];
  *(a1 + 3) = *(a2 + 48);

  v12 = a1[8];

  v13 = a1[9];
  *(a1 + 4) = *(a2 + 64);

  v14 = a1[10];

  v15 = a1[11];
  *(a1 + 5) = *(a2 + 80);

  v16 = a1[12];

  v17 = a1[13];
  *(a1 + 6) = *(a2 + 96);

  v18 = a1[14];

  v19 = a1[15];
  *(a1 + 7) = *(a2 + 112);

  v20 = a1[16];

  v21 = a1[17];
  *(a1 + 8) = *(a2 + 128);

  v22 = a1[18];

  v23 = a1[19];
  *(a1 + 9) = *(a2 + 144);

  v24 = a1[20];

  v25 = a1[21];
  *(a1 + 10) = *(a2 + 160);

  v26 = a1[22];

  v27 = a1[23];
  *(a1 + 11) = *(a2 + 176);

  v28 = a1[24];
  a1[24] = *(a2 + 192);

  a1[25] = *(a2 + 200);
  v29 = a1[26];

  v30 = a1[27];
  *(a1 + 13) = *(a2 + 208);

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateReminderAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateReminderAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of UpdateReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_261B53008()
{
  result = qword_27FEDAAF0;
  if (!qword_27FEDAAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAAF8, &qword_261D13230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAAF0);
  }

  return result;
}

uint64_t sub_261B5306C(uint64_t result)
{
  if (result)
  {
    sub_261CFCDA4();
    sub_261CFCDA4();

    return sub_261CFCDA4();
  }

  return result;
}

uint64_t sub_261B530B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_261CFD104();
    sub_261CFCDA4();

    return sub_261CFCDA4();
  }

  return result;
}

void sub_261B53114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_261CFCA04();
  if (v27)
  {
    v4 = sub_261D00614();

    if ((v4 & 1) == 0)
    {

      return;
    }
  }

  else
  {
  }

  sub_261CFCA04();
  if (v27)
  {
    v5 = [v27 region];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v7 = [v27 name];
        if (v7)
        {
          v8 = v7;
          sub_261CFFA74();
        }

        sub_261B05020(0, &qword_27FEDAB20, 0x277D44868);
        v26 = v27;
        v22 = v6;
        v23 = sub_261D00024();
        sub_261CFCA04();

        [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStructuredLocation:v23 proximity:v27];

        return;
      }
    }

    else
    {
    }

    if (qword_27FED9880 != -1)
    {
      swift_once();
    }

    v13 = sub_261CFF7A4();
    __swift_project_value_buffer(v13, qword_27FEDAB00);
    v14 = v27;
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315138;
      if ([v14 region])
      {
        sub_261B05020(0, &qword_27FEDAB18, 0x277CBFC70);
        v19 = sub_261CFFAB4();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v24 = sub_261B879C8(v19, v21, &v27);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_261AE2000, v15, v16, "locationAlarmEntity.placemark.region is not a CLCircularRegion, unable to create REMAlarmLocationTrigger. {region: %s}", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v25 = 29;
    swift_willThrow();
  }

  else
  {

    if (qword_27FED9880 != -1)
    {
      swift_once();
    }

    v9 = sub_261CFF7A4();
    __swift_project_value_buffer(v9, qword_27FEDAB00);
    v10 = sub_261CFF784();
    v11 = sub_261CFFE64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261AE2000, v10, v11, "locationAlarmEntity.placemark is nil, unable to create REMAlarmLocationTrigger.", v12, 2u);
      MEMORY[0x26671D560](v12, -1, -1);
    }
  }
}

id sub_261B535B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_261CFCA04();
  if (v7 == 1)
  {

LABEL_4:
    sub_261CFCA04();

    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEvent_];
  }

  v4 = sub_261D00614();

  if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_261B536B8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAB00);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAB00);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261B53780(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v14 = *MEMORY[0x277CC9110];
  v15 = *(v4 + 104);
  v15(v7, v14, v3);
  sub_261CFD6C4();
  sub_261B54038();
  v20 = sub_261CFCA34();
  *a2 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v7, v14, v3);
  sub_261CFD6C4();
  sub_261B5408C();
  v21 = sub_261CFCA34();
  a2[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v7, v14, v3);
  sub_261CFD6C4();
  a2[2] = sub_261CFCB64();
  v25 = 0;
  sub_261CFCA14();
  v16 = v22;
  v17 = [v22 structuredLocation];
  v18 = sub_261D00014();

  v24 = v18;
  v19 = v18;
  sub_261CFCA14();

  sub_261B53F34([v16 proximity], "Unexpected REMAlarmProximity value when converting to RemindersAppIntents SpatialEvent {value: %ld}", &v23);
  sub_261CFCA14();
}

void sub_261B53B70(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v14 = *MEMORY[0x277CC9110];
  v15 = *(v4 + 104);
  v17 = v3;
  v15(v7, v14, v3);
  sub_261CFD6C4();
  sub_261B54038();
  v18 = sub_261CFCA34();
  *a2 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v7, v14, v3);
  sub_261CFD6C4();
  sub_261B5408C();
  a2[1] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v7, v14, v17);
  sub_261CFD6C4();
  a2[2] = sub_261CFCB64();
  v22 = 1;
  sub_261CFCA14();
  v21 = 0;
  sub_261CFCA14();
  v16 = v19;
  sub_261B53F34([v19 event], "Unexpected REMAlarmVehicleTriggerEvent value when converting to RemindersAppIntents SpatialEvent {value: %ld}", &v20);
  sub_261CFCA14();
}

void sub_261B53F34(unint64_t a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1;
  if (a1 >= 3)
  {
    if (qword_27FED9880 != -1)
    {
      swift_once();
    }

    v6 = sub_261CFF7A4();
    __swift_project_value_buffer(v6, qword_27FEDAB00);
    v7 = sub_261CFF784();
    v8 = sub_261CFFE74();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v3;
      _os_log_impl(&dword_261AE2000, v7, v8, a2, v9, 0xCu);
      MEMORY[0x26671D560](v9, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  *a3 = v3;
}

unint64_t sub_261B54038()
{
  result = qword_27FEDAB30;
  if (!qword_27FEDAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAB30);
  }

  return result;
}

unint64_t sub_261B5408C()
{
  result = qword_27FEDAB40;
  if (!qword_27FEDAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAB40);
  }

  return result;
}

uint64_t sub_261B540E0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAB50);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAB50);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.perform(_:)(uint64_t a1, _OWORD *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v6 = type metadata accessor for ReminderEntity();
  *(v3 + 144) = v6;
  v7 = *(v6 - 8);
  *(v3 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v9 = sub_261CFD7E4();
  *(v3 + 168) = v9;
  v10 = *(v9 - 8);
  *(v3 + 176) = v10;
  *(v3 + 184) = *(v10 + 64);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v11 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  *(v3 + 224) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v13 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v3 + 240) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v16 = _s20CategorizedRemindersV12EditableItemOMa(0);
  *(v3 + 280) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v18 = a2[1];
  *(v3 + 304) = *a2;
  *(v3 + 320) = v18;
  sub_261CFFD24();
  *(v3 + 336) = sub_261CFFD14();
  v19 = sub_261CFFCF4();
  v21 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B54494, v19, v20);
}

{
  v8 = *MEMORY[0x277D85DE8];
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *a2;
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B71EBC, v4, v5);
}

{
  *(v2 + 48) = a1;
  v4 = sub_261CFD754();
  *(v2 + 56) = v4;
  v5 = *(v4 - 8);
  *(v2 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = *a2;
  sub_261CFFD24();
  *(v2 + 96) = sub_261CFFD14();
  v8 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BA02B0, v8, v7);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v7 = *(*(type metadata accessor for AppEntityID() - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = type metadata accessor for ReminderEntity();
  *(v2 + 56) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v10 = a2[1];
  *(v2 + 72) = *a2;
  *(v2 + 88) = v10;
  *(v2 + 104) = a2[2];
  sub_261CFFD24();
  *(v2 + 120) = sub_261CFFD14();
  v12 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BAEE4C, v12, v11);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v7 = *(*(type metadata accessor for AppEntityID() - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = type metadata accessor for ListEntity();
  *(v2 + 56) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;
  sub_261CFFD24();
  *(v2 + 88) = sub_261CFFD14();
  v11 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BAF514, v11, v10);
}

{
  v24 = *MEMORY[0x277D85DE8];
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBFF0, &qword_261D090B8);
  *(v3 + 152) = v5;
  v6 = *(v5 - 8);
  *(v3 + 160) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBFF8, &qword_261D090C0);
  *(v3 + 176) = v8;
  v9 = *(v8 - 8);
  *(v3 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90) - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v12 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  *(v3 + 216) = v12;
  v13 = *(v12 - 8);
  *(v3 + 224) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  v15 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v3 + 264) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  v17 = _s20CategorizedRemindersV12EditableItemOMa(0);
  *(v3 + 280) = v17;
  v18 = *(v17 - 8);
  *(v3 + 288) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *a2;
  *(v3 + 320) = sub_261CFFD24();
  *(v3 + 328) = sub_261CFFD14();
  v20 = sub_261CFFCF4();
  *(v3 + 336) = v20;
  *(v3 + 344) = v21;
  v22 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BDAD90, v20, v21);
}

{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = a2[1];
  *(v3 + 104) = *a2;
  *(v3 + 120) = v4;
  sub_261CFFD24();
  *(v3 + 136) = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  *(v3 + 144) = v6;
  *(v3 + 152) = v5;

  return MEMORY[0x2822009F8](sub_261BF41E8, v6, v5);
}

{
  v27 = *MEMORY[0x277D85DE8];
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v6 = *(type metadata accessor for ReminderEntity() - 8);
  *(v3 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v8 = sub_261CFD7E4();
  *(v3 + 192) = v8;
  v9 = *(v8 - 8);
  *(v3 + 200) = v9;
  *(v3 + 208) = *(v9 + 64);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v11 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  *(v3 + 272) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v13 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v3 + 288) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  v15 = _s20CategorizedRemindersV12EditableItemOMa(0);
  *(v3 + 304) = v15;
  v16 = *(v15 - 8);
  *(v3 + 312) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA620, &qword_261D031E0);
  *(v3 + 336) = v18;
  v19 = *(v18 - 8);
  *(v3 + 344) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 352) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCCF8, &qword_261D0C3D8) - 8) + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v22 = a2[1];
  *(v3 + 376) = *a2;
  *(v3 + 392) = v22;
  sub_261CFFD24();
  *(v3 + 408) = sub_261CFFD14();
  v23 = sub_261CFFCF4();
  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261C24E74, v23, v24);
}

{
  v13 = *MEMORY[0x277D85DE8];
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for GroupEntity();
  *(v3 + 112) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v7 = *(type metadata accessor for ListEntity() - 8);
  *(v3 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = *a2;
  sub_261CFFD24();
  *(v3 + 160) = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261C2E888, v9, v10);
}

{
  *(v2 + 24) = a1;
  v4 = sub_261CFD754();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = *a2;
  sub_261CFFD24();
  *(v2 + 72) = sub_261CFFD14();
  v8 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C653A4, v8, v7);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = *a2;
  sub_261CFFD24();
  *(v2 + 64) = sub_261CFFD14();
  v8 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C6634C, v8, v7);
}

{
  *(v2 + 16) = a1;
  v4 = sub_261CFD754();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v7 = *(*(type metadata accessor for AppEntityID() - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = type metadata accessor for GroupEntity();
  *(v2 + 56) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;
  sub_261CFFD24();
  *(v2 + 88) = sub_261CFFD14();
  v11 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CA61E4, v11, v10);
}

{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for GroupEntity();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v7 = a2[1];
  *(v3 + 48) = *a2;
  *(v3 + 64) = v7;
  sub_261CFFD24();
  *(v3 + 80) = sub_261CFFD14();
  v9 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261CA830C, v9, v8);
}

{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = a2[1];
  *(v3 + 104) = *a2;
  *(v3 + 120) = v4;
  sub_261CFFD24();
  *(v3 + 136) = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  *(v3 + 144) = v6;
  *(v3 + 152) = v5;

  return MEMORY[0x2822009F8](sub_261CAE6C8, v6, v5);
}

{
  v85 = *MEMORY[0x277D85DE8];
  *(v3 + 520) = v2;
  *(v3 + 512) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0) - 8) + 64) + 15;
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE170, &qword_261D11180);
  *(v3 + 544) = v6;
  v7 = *(v6 - 8);
  *(v3 + 552) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 560) = swift_task_alloc();
  *(v3 + 568) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE178, &qword_261D11188);
  *(v3 + 576) = v9;
  v10 = *(v9 - 8);
  *(v3 + 584) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE180, &qword_261D11190);
  *(v3 + 608) = v12;
  v13 = *(v12 - 8);
  *(v3 + 616) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0) - 8) + 64) + 15;
  *(v3 + 640) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE188, &qword_261D11198);
  *(v3 + 648) = v16;
  v17 = *(v16 - 8);
  *(v3 + 656) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 664) = swift_task_alloc();
  *(v3 + 672) = swift_task_alloc();
  v19 = sub_261CFD524();
  *(v3 + 680) = v19;
  v20 = *(v19 - 8);
  *(v3 + 688) = v20;
  v21 = *(v20 + 64) + 15;
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE190, &qword_261D111A0);
  *(v3 + 712) = v22;
  v23 = *(v22 - 8);
  *(v3 + 720) = v23;
  v24 = *(v23 + 64) + 15;
  *(v3 + 728) = swift_task_alloc();
  *(v3 + 736) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA988, &unk_261D03480) - 8) + 64) + 15;
  *(v3 + 744) = swift_task_alloc();
  v26 = sub_261CFD844();
  *(v3 + 752) = v26;
  v27 = *(v26 - 8);
  *(v3 + 760) = v27;
  v28 = *(v27 + 64) + 15;
  *(v3 + 768) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0) - 8) + 64) + 15;
  *(v3 + 776) = swift_task_alloc();
  v30 = sub_261CFC954();
  *(v3 + 784) = v30;
  v31 = *(v30 - 8);
  *(v3 + 792) = v31;
  v32 = *(v31 + 64) + 15;
  *(v3 + 800) = swift_task_alloc();
  *(v3 + 808) = swift_task_alloc();
  *(v3 + 816) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE198, &qword_261D111A8);
  *(v3 + 824) = v33;
  v34 = *(v33 - 8);
  *(v3 + 832) = v34;
  v35 = *(v34 + 64) + 15;
  *(v3 + 840) = swift_task_alloc();
  *(v3 + 848) = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1A0, &qword_261D111B0);
  *(v3 + 856) = v36;
  v37 = *(v36 - 8);
  *(v3 + 864) = v37;
  v38 = *(v37 + 64) + 15;
  *(v3 + 872) = swift_task_alloc();
  *(v3 + 880) = swift_task_alloc();
  v39 = sub_261CFDA54();
  *(v3 + 888) = v39;
  v40 = *(v39 - 8);
  *(v3 + 896) = v40;
  v41 = *(v40 + 64) + 15;
  *(v3 + 904) = swift_task_alloc();
  *(v3 + 912) = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1A8, &qword_261D111B8);
  *(v3 + 920) = v42;
  v43 = *(v42 - 8);
  *(v3 + 928) = v43;
  v44 = *(v43 + 64) + 15;
  *(v3 + 936) = swift_task_alloc();
  *(v3 + 944) = swift_task_alloc();
  v45 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220) - 8) + 64) + 15;
  *(v3 + 952) = swift_task_alloc();
  *(v3 + 960) = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1B0, &qword_261D111C0);
  *(v3 + 968) = v46;
  v47 = *(*(v46 - 8) + 64) + 15;
  *(v3 + 976) = swift_task_alloc();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1B8, &qword_261D111C8);
  *(v3 + 984) = v48;
  v49 = *(v48 - 8);
  *(v3 + 992) = v49;
  v50 = *(v49 + 64) + 15;
  *(v3 + 1000) = swift_task_alloc();
  *(v3 + 1008) = swift_task_alloc();
  *(v3 + 1016) = swift_task_alloc();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1C0, &qword_261D111D0);
  *(v3 + 1024) = v51;
  v52 = *(v51 - 8);
  *(v3 + 1032) = v52;
  v53 = *(v52 + 64) + 15;
  *(v3 + 1040) = swift_task_alloc();
  *(v3 + 1048) = swift_task_alloc();
  v54 = sub_261CFDCE4();
  *(v3 + 1056) = v54;
  v55 = *(v54 - 8);
  *(v3 + 1064) = v55;
  v56 = *(v55 + 64) + 15;
  *(v3 + 1072) = swift_task_alloc();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1C8, &qword_261D111D8);
  *(v3 + 1080) = v57;
  v58 = *(v57 - 8);
  *(v3 + 1088) = v58;
  v59 = *(v58 + 64) + 15;
  *(v3 + 1096) = swift_task_alloc();
  v60 = type metadata accessor for ListEntity();
  *(v3 + 1104) = v60;
  v61 = *(v60 - 8);
  *(v3 + 1112) = v61;
  v62 = *(v61 + 64) + 15;
  *(v3 + 1120) = swift_task_alloc();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1D0, &qword_261D111E0);
  *(v3 + 1128) = v63;
  v64 = *(v63 - 8);
  *(v3 + 1136) = v64;
  v65 = *(v64 + 64) + 15;
  *(v3 + 1144) = swift_task_alloc();
  *(v3 + 1152) = swift_task_alloc();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1D8, &qword_261D111E8);
  *(v3 + 1160) = v66;
  v67 = *(v66 - 8);
  *(v3 + 1168) = v67;
  v68 = *(v67 + 64) + 15;
  *(v3 + 1176) = swift_task_alloc();
  v69 = type metadata accessor for AppEntityID();
  *(v3 + 1184) = v69;
  v70 = *(*(v69 - 8) + 64) + 15;
  *(v3 + 1192) = swift_task_alloc();
  v71 = type metadata accessor for ReminderEntity();
  *(v3 + 1200) = v71;
  v72 = *(v71 - 8);
  *(v3 + 1208) = v72;
  v73 = *(v72 + 64) + 15;
  *(v3 + 1216) = swift_task_alloc();
  *(v3 + 1224) = swift_task_alloc();
  v74 = a2[11];
  *(v3 + 176) = a2[10];
  *(v3 + 192) = v74;
  v75 = a2[13];
  *(v3 + 208) = a2[12];
  *(v3 + 224) = v75;
  v76 = a2[7];
  *(v3 + 112) = a2[6];
  *(v3 + 128) = v76;
  v77 = a2[9];
  *(v3 + 144) = a2[8];
  *(v3 + 160) = v77;
  v78 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v78;
  v79 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v79;
  v80 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v80;
  sub_261CFFD24();
  *(v3 + 1232) = sub_261CFFD14();
  v81 = sub_261CFFCF4();
  v83 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261CB7F84, v81, v82);
}

{
  v30 = *MEMORY[0x277D85DE8];
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  v5 = *(*(sub_261CFD754() - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v3 + 208) = v6;
  v7 = *(v6 - 8);
  *(v3 + 216) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v10 = sub_261CFD674();
  *(v3 + 248) = v10;
  v11 = *(v10 - 8);
  *(v3 + 256) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  v13 = sub_261CFD884();
  *(v3 + 272) = v13;
  v14 = *(v13 - 8);
  *(v3 + 280) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  v16 = *(*(sub_261CFFA44() - 8) + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  v17 = *(*(sub_261CFD6A4() - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v18 = type metadata accessor for SectionEntity();
  *(v3 + 312) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  v20 = *(*(type metadata accessor for SectionEntityID() - 8) + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v21 = type metadata accessor for ListEntity();
  *(v3 + 344) = v21;
  v22 = *(v21 - 8);
  *(v3 + 352) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298) - 8) + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  v25 = a2[1];
  *(v3 + 400) = *a2;
  *(v3 + 416) = v25;
  sub_261CFFD24();
  *(v3 + 432) = sub_261CFFD14();
  v26 = sub_261CFFCF4();
  v28 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261CBC038, v26, v27);
}

uint64_t sub_261B54494()
{
  v188 = v0;
  v187[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);

  v5 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA670, &qword_261D03228);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D03450;
  sub_261CFCBB4();
  v185 = v0;
  v9 = sub_261B9A654(v8, 1);
  v11 = v10;
  v12 = *(v0 + 296);
  v13 = *(v0 + 144);
  swift_setDeallocating();
  v14 = *(v8 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_261B9B45C(3, v9, v11, v12);
  v15 = *(v0 + 288);
  v16 = *(v0 + 296);
  v17 = *(v0 + 280);
  v18 = *(v0 + 240);

  sub_261B575F8(v16, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *(v0 + 288);
  v21 = *(v0 + 272);
  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    sub_261B579D4(v20, v23, _s20CategorizedRemindersV17RecurrentInstanceVMa);
    v26 = *(v23 + *(v22 + 20));
    v27 = *(v23 + *(v18 + 20));
    v28 = [v26 date];
    sub_261CFD7C4();

    sub_261B57A3C(v23, _s20CategorizedRemindersV17RecurrentInstanceVMa);
    (*(v25 + 56))(v21, 0, 1, v24);
  }

  else
  {
    v29 = *(v0 + 248);
    v30 = *(v0 + 168);
    v31 = *(v0 + 176);
    sub_261B579D4(v20, v29, _s20CategorizedRemindersV15FetchedReminderVMa);
    v32 = *(v29 + *(v18 + 20));
    sub_261B57A3C(v29, _s20CategorizedRemindersV15FetchedReminderVMa);
    (*(v31 + 56))(v21, 1, 1, v30);
    v27 = v32;
  }

  if (qword_27FED9888 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 320);
  v34 = *(v0 + 328);
  v36 = *(v0 + 304);
  v35 = *(v0 + 312);
  v37 = sub_261CFF7A4();
  __swift_project_value_buffer(v37, qword_27FEDAB50);
  v38 = v27;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v39 = sub_261CFF784();
  v40 = sub_261CFFE84();

  v41 = os_log_type_enabled(v39, v40);
  v43 = *(v0 + 320);
  v42 = *(v0 + 328);
  v44 = *(v0 + 304);
  v45 = *(v0 + 312);
  if (v41)
  {
    v181 = v38;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138543618;
    v48 = [v181 objectID];

    *(v46 + 4) = v48;
    *v47 = v48;
    *(v46 + 12) = 1026;
    sub_261CFCBB4();
    *(v46 + 14) = *(v0 + 347);

    _os_log_impl(&dword_261AE2000, v39, v40, "[CompleteReminderAppIntent] Complete reminder with id: %{public}@, completeSubtasks: %{BOOL,public}d", v46, 0x12u);
    sub_261AE6A40(v47, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v47, -1, -1);
    v49 = v46;
    v38 = v181;
    MEMORY[0x26671D560](v49, -1, -1);
  }

  else
  {
    v50 = *(v0 + 304);

    v39 = v38;
  }

  v51 = *(v0 + 264);
  v52 = *(v0 + 168);
  v53 = *(v0 + 176);
  sub_261AFB668(*(v0 + 272), v51, &qword_27FEDAB68, &unk_261D11C90);
  v178 = *(v53 + 48);
  if (v178(v51, 1, v52) == 1)
  {
    sub_261AE6A40(*(v0 + 264), &qword_27FEDAB68, &unk_261D11C90);
  }

  else
  {
    v54 = *(v0 + 208);
    v55 = *(v0 + 216);
    v56 = *(v0 + 168);
    v57 = *(v0 + 176);
    (*(v57 + 32))(v55, *(v0 + 264), v56);
    (*(v57 + 16))(v54, v55, v56);
    v58 = sub_261CFF784();
    v59 = sub_261CFFE84();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 208);
    v62 = *(v0 + 216);
    v64 = *(v0 + 168);
    v63 = *(v0 + 176);
    if (v60)
    {
      v182 = v38;
      v65 = swift_slowAlloc();
      v172 = v62;
      v66 = swift_slowAlloc();
      v187[0] = v66;
      *v65 = 136315138;
      sub_261B57AE8(&qword_27FEDA198, MEMORY[0x277CC9578]);
      v67 = sub_261D005F4();
      v69 = v68;
      v70 = *(v63 + 8);
      v70(v61, v64);
      v71 = sub_261B879C8(v67, v69, v187);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_261AE2000, v58, v59, "[CompleteReminderAppIntent] afterDateForAdvancingForwardRecurrence: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x26671D560](v66, -1, -1);
      v72 = v65;
      v38 = v182;
      MEMORY[0x26671D560](v72, -1, -1);

      v70(v172, v64);
    }

    else
    {

      v73 = *(v63 + 8);
      v73(v61, v64);
      v73(v62, v64);
    }
  }

  v74 = *(v0 + 320);
  sub_261CFCBB4();
  if (*(v0 + 344) == 1)
  {
    sub_261CFC488(v38);
  }

  v75 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v75 setSaveIsNoopIfNoChangedKeys_];
  v76 = [v38 parentReminder];
  if (v76)
  {
    v77 = v76;
    v78 = v38;
    v175 = [v75 updateReminder_];
  }

  else
  {
    v78 = v38;
    v175 = 0;
  }

  v79 = v185[40];
  v80 = v185[39];
  v81 = sub_261CFDFF4();
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  sub_261CFDFD4();
  sub_261CFE144();
  memset(v187, 0, 40);
  v84 = v78;
  v85 = v75;
  sub_261CFE134();
  sub_261CFCBB4();
  v86 = *(v185 + 345);
  sub_261CFCDA4();
  sub_261CFE114();

  v87 = v185;
  sub_261CFCBB4();
  v88 = 0;
  if (*(v185 + 346) == 1)
  {
    v89 = sub_261CFDFE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D030F0;
    *(inited + 32) = [v84 objectID];
    if ((v89 & 0xC000000000000001) != 0)
    {
      if (v89 >= 0)
      {
        v89 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v91 = sub_261D00274();
      v89 = sub_261B558DC(v89, v91);
    }

    v92 = sub_261B55ABC(inited, v89);
    swift_setDeallocating();
    v93 = *(inited + 16);
    swift_arrayDestroy();
    v94 = v85;
    sub_261B57750(v92, v94);
    v88 = v95;
  }

  v96 = v185[32];
  v97 = v185[21];
  sub_261AFB668(v185[34], v96, &qword_27FEDAB68, &unk_261D11C90);
  v98 = v178(v96, 1, v97);
  v99 = v185[32];
  v173 = v84;
  if (v98 == 1)
  {
    sub_261AE6A40(v99, &qword_27FEDAB68, &unk_261D11C90);
  }

  else
  {
    v100 = v185[25];
    v179 = v100;
    v101 = v185[24];
    v102 = v185[23];
    v103 = v185[22];
    v104 = v185[21];
    v105 = *(v103 + 32);
    v105(v100, v99, v104);
    (*(v103 + 16))(v101, v100, v104);
    v106 = v88;
    v107 = v85;
    v108 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v109 = swift_allocObject();
    v110 = v109 + v108;
    v85 = v107;
    v88 = v106;
    v105(v110, v101, v104);
    v185[6] = sub_261B5765C;
    v185[7] = v109;
    v185[2] = MEMORY[0x277D85DD0];
    v185[3] = 1107296256;
    v185[4] = sub_261B556E0;
    v185[5] = &block_descriptor;
    v87 = v185;
    v111 = _Block_copy(v185 + 2);
    v112 = v185[7];

    _Block_release(v111);
    (*(v103 + 8))(v179, v104);
  }

  v87[13] = 0;
  v113 = [v85 saveSynchronouslyWithError_];
  v114 = v87[13];
  if (!v113)
  {
    v123 = v87[37];
    v124 = v87[34];
    v125 = v114;

    sub_261CFD654();

    swift_willThrow();

    sub_261AE6A40(v124, &qword_27FEDAB68, &unk_261D11C90);
    v126 = v123;
LABEL_35:
    sub_261B57A3C(v126, _s20CategorizedRemindersV12EditableItemOMa);
    v134 = v87[36];
    v133 = v87[37];
    v136 = v87[33];
    v135 = v87[34];
    v138 = v87[31];
    v137 = v87[32];
    v139 = v87[29];
    v140 = v87[27];
    v141 = v185[26];
    v142 = v185[25];
    v174 = v185[24];
    v177 = v185[20];
    v180 = v185[17];
    v183 = v185[16];

    v143 = v185[1];
    v144 = *MEMORY[0x277D85DE8];
    goto LABEL_36;
  }

  v115 = v87[17];
  v116 = v114;
  v117 = sub_261CFDF94();
  v118 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v118 - 8) + 56))(v115, 1, 1, v118);
  v119 = v175;
  v120 = [v117 listChangeItem];
  if (!v120 || (v121 = v120, v122 = [v120 storage], v121, !v122))
  {
    v127 = v119;
    v128 = v117;
    v129 = v87[37];
    v130 = v87[34];
    v131 = v87[17];

    sub_261B01D70();
    swift_allocError();
    *v132 = 11;
    swift_willThrow();

    sub_261AE6A40(v131, &qword_27FEDA108, &unk_261D020C0);
    sub_261AE6A40(v130, &qword_27FEDAB68, &unk_261D11C90);
    v126 = v129;
    goto LABEL_35;
  }

  v168 = [v117 storage];
  v167 = [v117 accountCapabilities];
  if (v175)
  {
    v176 = [v119 storage];
  }

  else
  {
    v176 = 0;
  }

  v169 = v117;
  v170 = v119;
  aBlock = v122;
  if (v88)
  {
    if (v88 >> 62)
    {
      v146 = sub_261D00274();
      if (v146)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v146 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v146)
      {
LABEL_43:
        v187[0] = MEMORY[0x277D84F90];
        sub_261D003A4();
        if (v146 < 0)
        {
          __break(1u);
        }

        v147 = 0;
        do
        {
          if ((v88 & 0xC000000000000001) != 0)
          {
            v148 = MEMORY[0x26671CA10](v147, v88);
          }

          else
          {
            v148 = *(v88 + 8 * v147 + 32);
          }

          v149 = v148;
          ++v147;
          v150 = [v148 storage];

          sub_261D00374();
          v151 = *(v187[0] + 16);
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (v146 != v147);

        v152 = v187[0];
        v87 = v185;
        goto LABEL_53;
      }
    }

    v152 = MEMORY[0x277D84F90];
  }

  else
  {
    v152 = 0;
  }

LABEL_53:
  v159 = v87[37];
  v160 = v87[36];
  v158 = v87[34];
  v161 = v87[33];
  v162 = v87[32];
  v163 = v87[31];
  v164 = v87[29];
  v165 = v87[27];
  v166 = v87[26];
  v184 = v87[25];
  v186 = v87[24];
  v153 = v87[20];
  v154 = v87[17];
  v155 = v87[16];
  v156 = v87[14];
  sub_261AFB668(v154, v155, &qword_27FEDA108, &unk_261D020C0);
  sub_261C7EDC4(v168, aBlock, v167, v176, v152, v155, v153);

  sub_261AE6A40(v154, &qword_27FEDA108, &unk_261D020C0);
  sub_261B57AE8(&qword_280D22350, type metadata accessor for ReminderEntity);
  sub_261CFC994();

  sub_261B57A3C(v153, type metadata accessor for ReminderEntity);
  sub_261AE6A40(v158, &qword_27FEDAB68, &unk_261D11C90);
  sub_261B57A3C(v159, _s20CategorizedRemindersV12EditableItemOMa);

  v143 = v87[1];
  v157 = *MEMORY[0x277D85DE8];
LABEL_36:

  return v143();
}

id sub_261B556E0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_261CFCDA4();
  v10 = a2;
  v9();

  v11 = sub_261CFD7E4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_261CFD794();
    (*(v12 + 8))(v7, v11);
    v14 = v15;
  }

  return v14;
}

uint64_t sub_261B55830(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B558DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
    v2 = sub_261D00304();
    v16 = v2;
    sub_261D00234();
    if (sub_261D002A4())
    {
      sub_261B57A9C();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_261B9CBD8(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_261D000E4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_261D002A4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_261B55ABC(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v56[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v56[0] = a1;
    v47 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v38 = a1;
      v3 = sub_261D00274();
      a1 = v38;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = a1;
    a1 = sub_261CFD104();
    if (v3)
    {
      v4 = 0;
      v53 = v52 & 0xC000000000000001;
      v51 = v52 & 0xFFFFFFFFFFFFFF8;
      v49 = v52 + 32;
      v55 = (v2 + 56);
      while (1)
      {
        if (v53)
        {
          a1 = MEMORY[0x26671CA10](v4, v52);
        }

        else
        {
          if (v4 >= *(v51 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v49 + 8 * v4);
        }

        v54 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = *(v2 + 40);
        v7 = sub_261D000E4();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v55[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v12 = ~v8;
      sub_261B57A9C();
      while (1)
      {
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_261D000F4();

        if (v14)
        {
          break;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v55[v9 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v56[1] = v4;

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v45 = v18;
      if (v17 <= 0xD)
      {
LABEL_19:
        v46 = &v44;
        MEMORY[0x28223BE20](v15);
        v20 = &v44 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v20, v55, v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v10] & ~v11;
        v50 = v20;
        *&v20[8 * v10] = v22;
        v48 = v21 - 1;
        if (v47)
        {
          a1 = sub_261D00274();
          v54 = a1;
        }

        else
        {
          v54 = *(v51 + 16);
        }

        while (1)
        {
          if (v4 == v54)
          {
            v2 = sub_261B571E0(v50, v45, v48, v2);
            goto LABEL_40;
          }

          if (v53)
          {
            a1 = MEMORY[0x26671CA10](v4, v52);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v51 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v49 + 8 * v4);
          }

          v23 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v24 = *(v2 + 40);
          v25 = sub_261D000E4();
          v26 = v2;
          v27 = -1 << *(v2 + 32);
          v28 = v25 & ~v27;
          v29 = v28 >> 6;
          v30 = 1 << v28;
          if (((1 << v28) & v55[v28 >> 6]) != 0)
          {
            v31 = ~v27;
            while (1)
            {
              v32 = *(*(v26 + 48) + 8 * v28);
              v33 = sub_261D000F4();

              if (v33)
              {
                break;
              }

              v28 = (v28 + 1) & v31;
              v29 = v28 >> 6;
              v30 = 1 << v28;
              if (((1 << v28) & v55[v28 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v34 = v50[v29];
            v50[v29] = v34 & ~v30;
            v2 = v26;
            if ((v34 & v30) != 0)
            {
              v35 = v48 - 1;
              if (__OFSUB__(v48, 1))
              {
                __break(1u);
              }

              --v48;
              if (!v35)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v26;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v39 = 8 * v18;
      sub_261CFCDA4();
      v40 = v2;
      v41 = v39;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v40;
        goto LABEL_19;
      }

      v42 = swift_slowAlloc();
      memcpy(v42, v55, v41);
      sub_261B56AF4(v42, v45, v40, v9, v56);
      v2 = v43;

      MEMORY[0x26671D560](v42, -1, -1);
    }

LABEL_40:
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_261B55F8C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);
  v13 = sub_261CFD104();
  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_261D006C4();
    sub_261CFD104();
    sub_261CFFB14();
    v24 = sub_261D006F4();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_261D00614() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_261B573D4(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_261D006C4();
            sub_261CFD104();
            sub_261CFFB14();
            v43 = sub_261D006F4();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_261D00614() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;
    sub_261CFCDA4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_261B56D24(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x26671D560](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_261AE6F74();
    goto LABEL_53;
  }

  result = MEMORY[0x26671D560](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_261B564FC(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v78 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
    goto LABEL_64;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_261D00424();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
  }

  v73 = v8;
  v74 = v5;
  v65 = v5;
  v75 = v6;
  v76 = 0;
  v12 = (v6 + 64) >> 6;
  v70 = (v3 + 56);
  v77 = v7;
  sub_261CFD104();
  v14 = 0;
  v64 = v6;
  v67 = v12;
  v68 = v8;
  v69 = v3;
  while (1)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      v24 = sub_261D004C4();
      if (!v24)
      {
        goto LABEL_63;
      }

      v71 = v24;
      sub_261B57A9C();
      swift_dynamicCast();
      v22 = v72;
      if (!v72)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v15 = v7;
      v16 = v14;
      if (v7)
      {
LABEL_20:
        v21 = (v15 - 1) & v15;
        v22 = *(*(v8 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v23 = v22;
        v18 = v16;
        v20 = v65;
      }

      else
      {
        v17 = v12 <= v14 + 1 ? v14 + 1 : v12;
        v18 = v17 - 1;
        v19 = v14;
        v20 = v65;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v12)
          {
            break;
          }

          v15 = *(v65 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v22 = 0;
        v21 = 0;
      }

      v73 = v8;
      v74 = v20;
      v75 = v6;
      v76 = v18;
      v77 = v21;
      if (!v22)
      {
        goto LABEL_63;
      }

      v7 = v21;
      v14 = v18;
    }

    v25 = *(v3 + 40);
    v26 = sub_261D000E4();
    v27 = -1 << *(v3 + 32);
    v6 = v26 & ~v27;
    v8 = v6 >> 6;
    v2 = 1 << v6;
    if (((1 << v6) & v70[v6 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v6 = v64;
    v12 = v67;
    v8 = v68;
  }

  v28 = ~v27;
  sub_261B57A9C();
  while (1)
  {
    v29 = *(*(v3 + 48) + 8 * v6);
    v30 = sub_261D000F4();

    if (v30)
    {
      break;
    }

    v6 = (v6 + 1) & v28;
    v8 = v6 >> 6;
    v3 = v69;
    v2 = 1 << v6;
    if (((1 << v6) & v70[v6 >> 6]) == 0)
    {
      goto LABEL_10;
    }
  }

  v3 = v69;

  v32 = *(v69 + 32);
  v62[0] = ((1 << v32) + 63) >> 6;
  v13 = 8 * v62[0];
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62[1] = v62;
    MEMORY[0x28223BE20](v31);
    v34 = v62 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v34, v70, v33);
    v35 = *&v34[8 * v8] & ~v2;
    v36 = *(v3 + 16);
    v63 = v34;
    *&v34[8 * v8] = v35;
    v8 = v36 - 1;
    v37 = v67;
    v38 = v68;
LABEL_33:
    v66 = v8;
    while ((v38 & 0x8000000000000000) != 0)
    {
      v40 = sub_261D004C4();
      if (!v40)
      {
        goto LABEL_62;
      }

      v71 = v40;
      swift_dynamicCast();
      v6 = v72;
      if (!v72)
      {
        goto LABEL_62;
      }

LABEL_51:
      v46 = *(v3 + 40);
      v47 = sub_261D000E4();
      v48 = -1 << *(v3 + 32);
      v49 = v47 & ~v48;
      v50 = v49 >> 6;
      v2 = 1 << v49;
      if (((1 << v49) & v70[v49 >> 6]) != 0)
      {
        v51 = ~v48;
        while (1)
        {
          v52 = *(*(v3 + 48) + 8 * v49);
          v53 = sub_261D000F4();

          if (v53)
          {
            break;
          }

          v49 = (v49 + 1) & v51;
          v50 = v49 >> 6;
          v3 = v69;
          v2 = 1 << v49;
          if (((1 << v49) & v70[v49 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v54 = v63[v50];
        v63[v50] = v54 & ~v2;
        v38 = v68;
        v3 = v69;
        v8 = v66;
        v37 = v67;
        if ((v54 & v2) != 0)
        {
          v8 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_63;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v37 = v67;
        v38 = v68;
        v8 = v66;
      }
    }

    if (v7)
    {
      v39 = v14;
LABEL_48:
      v44 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v6 = *(*(v38 + 48) + ((v39 << 9) | (8 * v44)));
      v45 = v6;
      v42 = v39;
      v43 = v65;
LABEL_49:
      v73 = v38;
      v74 = v43;
      v75 = v64;
      v76 = v42;
      v77 = v7;
      if (!v6)
      {
LABEL_62:
        v3 = sub_261B571E0(v63, v62[0], v8, v3);
        goto LABEL_63;
      }

      v14 = v42;
      goto LABEL_51;
    }

    if (v37 <= v14 + 1)
    {
      v41 = v14 + 1;
    }

    else
    {
      v41 = v37;
    }

    v42 = v41 - 1;
    v43 = v65;
    while (1)
    {
      v39 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        v6 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v65 + 8 * v39);
      ++v14;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v57 = v13;
    sub_261CFCDA4();
    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v70, v58);
  sub_261B56F5C(v59, v62[0], v3, v6, &v73);
  v61 = v60;

  MEMORY[0x26671D560](v59, -1, -1);
  v3 = v61;
LABEL_63:
  sub_261AE6F74();
LABEL_64:
  v55 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_261B56AF4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v32 = a3 + 56;
  while (2)
  {
    v29 = v8;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (*v5 >> 62)
        {
          if (v9 < 0)
          {
            v27 = *v5;
          }

          v10 = sub_261D00274();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v5[1];
        if (v11 == v10)
        {
          sub_261CFCDA4();
          sub_261B571E0(a1, a2, v29, a3);
          return;
        }

        v12 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x26671CA10](v5[1]);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }

          if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v5[1] = v11 + 1;
        v15 = *(a3 + 40);
        v16 = sub_261D000E4();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_261B57A9C();
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_261D000F4();

      if ((v22 & 1) == 0)
      {
        v23 = ~v17;
        do
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = sub_261D000F4();
        }

        while ((v25 & 1) == 0);
      }

      v5 = a5;

      v26 = a1[v19];
      a1[v19] = v26 & ~v20;
    }

    while ((v26 & v20) == 0);
    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_30;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_261B56D24(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;
          sub_261CFCDA4();
          return sub_261B573D4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_261D006C4();
        sub_261CFD104();
        sub_261CFFB14();
        v20 = sub_261D006F4();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_261D00614() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_261B56F5C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_261D004C4())
          {
            goto LABEL_29;
          }

          sub_261B57A9C();
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:
            sub_261CFCDA4();
            sub_261B571E0(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_261D000E4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_261B57A9C();
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_261D000F4();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_261D000F4();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_261B571E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  result = sub_261D00314();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_261D000E4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_261B573D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  result = sub_261D00314();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_261D006C4();
    sub_261CFD104();
    sub_261CFFB14();
    result = sub_261D006F4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_261B575F8(uint64_t a1, uint64_t a2)
{
  v4 = _s20CategorizedRemindersV12EditableItemOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B5765C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD7E4();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v1 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

void sub_261B57750(uint64_t a1, void *a2)
{
  v2 = a1;
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_261D00234();
    sub_261B57A9C();
    sub_261B57AE8(&qword_27FEDA570, sub_261B57A9C);
    sub_261CFFDA4();
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_261CFD104();
    v5 = 0;
  }

LABEL_7:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_261D002A4() || (sub_261B57A9C(), swift_dynamicCast(), v14 = v18, v5 = v10, v6 = v11, !v18))
      {
LABEL_21:
        sub_261AE6F74();
        return;
      }

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_17:
    v15 = [a2 _trackedReminderChangeItemForObjectID_];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x26671C310]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_261CFFC84();
      }

      sub_261CFFCB4();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_261B579D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B57A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_261B57A9C()
{
  result = qword_280D21DF0;
  if (!qword_280D21DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D21DF0);
  }

  return result;
}

uint64_t sub_261B57AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261B57B34()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDAB80);
  __swift_project_value_buffer(v9, qword_27FEDAB80);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListIsPinnedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9890 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAB80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListIsPinnedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B580DC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListIsPinnedAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListIsPinnedAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListIsPinnedAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B58334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t (*UpdateListIsPinnedAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5843C()
{
  result = swift_getKeyPath();
  qword_27FEDAB98 = result;
  return result;
}

uint64_t static UpdateListIsPinnedAppIntent.binding.getter()
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListIsPinnedAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAB98 = a1;
}

uint64_t (*static UpdateListIsPinnedAppIntent.binding.modify())()
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B585E4@<X0>(void *a1@<X8>)
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAB98;
  return sub_261CFCDA4();
}

uint64_t sub_261B58664(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9898;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAB98 = v1;
}

uint64_t UpdateListIsPinnedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v51 - v3;
  v71 = sub_261CFD184();
  v74 = *(v71 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - v16;
  v18 = sub_261CFD674();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFD884();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_261CFFA44();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_261CFD6A4();
  v55 = v27;
  v73 = *(v27 - 8);
  v28 = *(v73 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v66 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v65 = &v51 - v32;
  MEMORY[0x28223BE20](v31);
  v68 = &v51 - v33;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v34 = *MEMORY[0x277CC9110];
  v36 = v19 + 104;
  v35 = *(v19 + 104);
  v53 = v18;
  v35(v22, v34, v18);
  v52 = v35;
  v54 = v36;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v22, v34, v18);
  v51 = v17;
  sub_261CFD6C4();
  v37 = *(v73 + 56);
  v73 += 56;
  v56 = v37;
  v37(v17, 0, 1, v27);
  v38 = type metadata accessor for ListEntity();
  (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
  v39 = sub_261CFC834();
  v62 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v61 = v41;
  v63 = v40 + 56;
  v41(v69, 1, 1, v39);
  v41(v64, 1, 1, v39);
  v59 = *MEMORY[0x277CBA308];
  v42 = *(v74 + 104);
  v74 += 104;
  v60 = v42;
  v42(v70);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity);
  v43 = v51;
  *v72 = sub_261CFCC34();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v53;
  v45 = v52;
  v52(v22, v34, v53);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6C4();
  v56(v43, 0, 1, v55);
  v76 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  v46 = v67;
  sub_261CFFCD4();
  v47 = sub_261CFFCE4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v61(v69, 1, 1, v62);
  v60(v70, v59, v71);
  v48 = sub_261CFCD44();
  v49 = v72;
  v72[1] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v75 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v49[2] = result;
  return result;
}

uint64_t UpdateListIsPinnedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  v4 = *(v3 - 8);
  *(v2 + 408) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v2 + 424) = v6;
  v7 = *(v6 - 8);
  *(v2 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 464) = v10;
  v11 = *(v10 - 8);
  *(v2 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 480) = swift_task_alloc();
  v13 = type metadata accessor for ListEntity();
  *(v2 + 488) = v13;
  v14 = *(v13 - 8);
  *(v2 + 496) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = *v1;
  *(v2 + 536) = *(v1 + 16);
  *(v2 + 544) = sub_261CFFD24();
  *(v2 + 552) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 560) = v17;
  *(v2 + 568) = v16;

  return MEMORY[0x2822009F8](sub_261B593C4, v17, v16);
}

uint64_t sub_261B593C4()
{
  v14 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 352, v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v5);
  v6 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v13[6];
  v7 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v7;
  v8 = v13[3];
  *(v0 + 48) = v13[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v9 = *(v0 + 72);
  *(v0 + 617) = *(v0 + 616);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B12A4C(0, v4, v3, v2);
  *(v0 + 576) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v0 + 584) = v11;
  *(v0 + 592) = v10;

  return MEMORY[0x2822009F8](sub_261B5951C, v11, v10);
}

uint64_t sub_261B5951C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B595E4;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B595E4()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 592);
  v6 = *(v2 + 584);
  if (v0)
  {
    v7 = sub_261B59CB8;
  }

  else
  {
    v7 = sub_261B59720;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B59720()
{
  v1 = v0[72];

  v2 = v0[71];
  v3 = v0[70];

  return MEMORY[0x2822009F8](sub_261B59788, v3, v2);
}

uint64_t sub_261B59788()
{
  v53 = v0;
  v1 = v0[69];
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261B425D4(v6, v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[51];
    v8 = v0[52];
    v10 = v0[50];
    sub_261B59E9C(v0[56]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v52);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v52);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v36 = v0[59];
    v35 = v0[60];
    v38 = v0[57];
    v37 = v0[58];
    sub_261B01D70();
    swift_allocError();
    *v39 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v38);
    (*(v36 + 8))(v35, v37);
    v41 = v0[63];
    v40 = v0[64];
    v42 = v0[60];
    v44 = v0[56];
    v43 = v0[57];
    v45 = v0[55];
    v46 = v0[52];

    v34 = v0[1];
  }

  else
  {
    v21 = v0[59];
    v20 = v0[60];
    v23 = v0[57];
    v22 = v0[58];
    sub_261B01E2C(v0[56], v0[63]);
    sub_261B59E9C(v23);
    (*(v21 + 8))(v20, v22);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v24 = v0[63];
    v25 = v0[61];
    v48 = v0[64];
    v49 = v0[60];
    v50 = v0[57];
    v51 = v0[56];
    v27 = v0[54];
    v26 = v0[55];
    v28 = v0[52];
    v29 = v0[53];
    v30 = v0[50];
    v31 = v0[51];
    v32 = v0[49];
    v33 = __swift_project_value_buffer(v30, qword_27FEDB8A8);
    (*(v31 + 16))(v28, v33, v30);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v27 + 8))(v26, v29);
    sub_261B0A1F0(v24);

    v34 = v0[1];
  }

  return v34();
}

uint64_t sub_261B59CB8()
{
  v1 = v0[72];

  v2 = v0[71];
  v3 = v0[70];

  return MEMORY[0x2822009F8](sub_261B59D20, v3, v2);
}

uint64_t sub_261B59D20()
{
  v1 = v0[69];

  sub_261B59E48((v0 + 2));
  v2 = v0[76];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[60];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[55];
  v9 = v0[52];

  v10 = v0[1];

  return v10();
}

uint64_t sub_261B59E9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UpdateListIsPinnedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABB8, &qword_261D03848);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABC0, &qword_261D03850);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31C90();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABC8, &qword_261D03880);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABD0, &unk_261D038B0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B5A0E0(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B5A170(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261B5A1E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5A258()
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B5A2D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9890 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAB80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B5A380(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListIsPinnedAppIntent.perform()(a1);
}

uint64_t sub_261B5A41C(uint64_t a1)
{
  v2 = sub_261B31C90();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B5A458(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261B5A4EC()
{
  result = qword_280D22C20;
  if (!qword_280D22C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C20);
  }

  return result;
}

unint64_t sub_261B5A544()
{
  result = qword_280D22C30;
  if (!qword_280D22C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C30);
  }

  return result;
}

uint64_t sub_261B5A5F8()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDAC00);
  __swift_project_value_buffer(v9, qword_27FEDAC00);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListTypeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98A0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListTypeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B5ABC4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListTypeAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListTypeAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5AE0C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t UpdateListTypeAppIntent.property.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*UpdateListTypeAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5AF50()
{
  result = swift_getKeyPath();
  qword_27FEDAC18 = result;
  return result;
}

uint64_t static UpdateListTypeAppIntent.binding.getter()
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListTypeAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC18 = a1;
}

uint64_t (*static UpdateListTypeAppIntent.binding.modify())()
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B5B0F8@<X0>(void *a1@<X8>)
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAC18;
  return sub_261CFCDA4();
}

uint64_t sub_261B5B178(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98A8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC18 = v1;
}

uint64_t UpdateListTypeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v64 = sub_261CFD184();
  v66 = *(v64 - 8);
  v1 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v62 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = v46 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v57 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v46[1] = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v15 + 104);
  v47 = *MEMORY[0x277CC9110];
  v27 = v47;
  v48 = v14;
  v28(v18, v47, v14);
  v49 = v28;
  v50 = v15 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v46[0] = v18;
  v28(v18, v27, v14);
  v29 = v60;
  sub_261CFD6C4();
  v30 = *(v24 + 56);
  v56 = v24 + 56;
  v58 = v30;
  v30(v29, 0, 1, v23);
  v31 = type metadata accessor for ListEntity();
  (*(*(v31 - 8) + 56))(v59, 1, 1, v31);
  v32 = sub_261CFC834();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v51 = v34;
  v52 = v33 + 56;
  v34(v61, 1, 1, v32);
  v34(v62, 1, 1, v32);
  v53 = *MEMORY[0x277CBA308];
  v35 = *(v66 + 104);
  v66 += 104;
  v54 = v35;
  v35(v63);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity);
  *v65 = sub_261CFCC34();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC20, &unk_261D03A70);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = v46[0];
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v49(v46[0], v47, v48);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v36, v37, v38);
  v40 = v60;
  sub_261CFD6C4();
  v58(v40, 0, 1, v57);
  v68 = 2;
  v41 = v51;
  v51(v61, 1, 1, v32);
  v41(v62, 1, 1, v32);
  v54(v63, v53, v64);
  sub_261AFF54C();
  v42 = sub_261CFCC04();
  v43 = v65;
  v65[1] = v42;
  *(v43 + 16) = 0;
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v67 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v44[3] = result;
  return result;
}

uint64_t UpdateListTypeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  v4 = *(v3 - 8);
  *(v2 + 408) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v2 + 424) = v6;
  v7 = *(v6 - 8);
  *(v2 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 464) = v10;
  v11 = *(v10 - 8);
  *(v2 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 480) = swift_task_alloc();
  v13 = type metadata accessor for ListEntity();
  *(v2 + 488) = v13;
  v14 = *(v13 - 8);
  *(v2 + 496) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = *v1;
  *(v2 + 626) = *(v1 + 16);
  *(v2 + 544) = *(v1 + 24);
  *(v2 + 552) = sub_261CFFD24();
  *(v2 + 560) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 568) = v17;
  *(v2 + 576) = v16;

  return MEMORY[0x2822009F8](sub_261B5BD24, v17, v16);
}

uint64_t sub_261B5BD24()
{
  v30 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 488);
  sub_261CFCBB4();
  LOBYTE(v1) = *(v2 + *(v3 + 84));
  sub_261B0A1F0(v2);
  if (v1)
  {
    v4 = sub_261D00614();

    if ((v4 & 1) == 0)
    {
      v5 = *(v0 + 560);

      sub_261B01D70();
      swift_allocError();
      *v6 = 30;
      swift_willThrow();
      v7 = *(v0 + 520);
      v9 = *(v0 + 504);
      v8 = *(v0 + 512);
      v10 = *(v0 + 480);
      v12 = *(v0 + 448);
      v11 = *(v0 + 456);
      v13 = *(v0 + 440);
      v14 = *(v0 + 416);

      v15 = *(v0 + 8);

      return v15();
    }
  }

  else
  {
  }

  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 626);
  v20 = *(v0 + 536);
  v21 = *(v0 + 528);
  v22 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v22, v0 + 352, v29);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v22);
  v23 = v29[5];
  *(v0 + 80) = v29[4];
  *(v0 + 96) = v23;
  *(v0 + 112) = v29[6];
  v24 = v29[1];
  *(v0 + 16) = v29[0];
  *(v0 + 32) = v24;
  v25 = v29[3];
  *(v0 + 48) = v29[2];
  *(v0 + 64) = v25;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v26 = *(v0 + 112);
  *(v0 + 625) = *(v0 + 624);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B13808(0, v21, v20, v19, v18);
  *(v0 + 584) = sub_261CFFD14();
  v28 = sub_261CFFCF4();
  *(v0 + 592) = v28;
  *(v0 + 600) = v27;

  return MEMORY[0x2822009F8](sub_261B5BFDC, v28, v27);
}

uint64_t sub_261B5BFDC()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 608) = v1;
  *v1 = v0;
  v1[1] = sub_261B5C0A4;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B5C0A4()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 600);
  v6 = *(v2 + 592);
  if (v0)
  {
    v7 = sub_261B5C75C;
  }

  else
  {
    v7 = sub_261B5C1E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B5C1E0()
{
  v1 = v0[73];

  v2 = v0[72];
  v3 = v0[71];

  return MEMORY[0x2822009F8](sub_261B5C248, v3, v2);
}

uint64_t sub_261B5C248()
{
  v50 = v0;
  v1 = v0[70];
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261B425D4(v6, v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[51];
    v8 = v0[52];
    v10 = v0[50];
    sub_261B59E9C(v0[56]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v49);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v49);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v31 = v0[59];
    v30 = v0[60];
    v33 = v0[57];
    v32 = v0[58];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v33);
    (*(v31 + 8))(v30, v32);
    v35 = v0[65];
    v37 = v0[63];
    v36 = v0[64];
    v38 = v0[60];
    v40 = v0[56];
    v39 = v0[57];
    v41 = v0[55];
    v42 = v0[52];

    v29 = v0[1];
  }

  else
  {
    v20 = v0[66];
    v21 = v0[63];
    v22 = v0[64];
    v23 = v0[60];
    v25 = v0[58];
    v24 = v0[59];
    v26 = v0[57];
    v48 = v0[65];
    v27 = v0[54];
    v28 = v0[52];
    v46 = v0[53];
    v47 = v0[61];
    v44 = v0[55];
    v45 = v0[49];
    sub_261B01E2C(v0[56], v21);
    sub_261B59E9C(v26);
    (*(v24 + 8))(v23, v25);
    sub_261CFCBB4();
    sub_261BBF268(v28);
    sub_261B0A1F0(v22);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v27 + 8))(v44, v46);
    sub_261B0A1F0(v21);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_261B5C75C()
{
  v1 = v0[73];

  v2 = v0[72];
  v3 = v0[71];

  return MEMORY[0x2822009F8](sub_261B5C7C4, v3, v2);
}

uint64_t sub_261B5C7C4()
{
  v1 = v0[70];

  sub_261B59E48((v0 + 2));
  v2 = v0[77];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[60];
  v8 = v0[56];
  v7 = v0[57];
  v9 = v0[55];
  v10 = v0[52];

  v11 = v0[1];

  return v11();
}

uint64_t static UpdateListTypeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC28, &qword_261D03A90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC30, &qword_261D03A98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31C3C();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC38, &qword_261D03AC8);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC40, &qword_261D03AF8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B5CA8C(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B5CB1C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261B5CBB4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5CC28()
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B5CCA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98A0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B5CD50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListTypeAppIntent.perform()(a1);
}

uint64_t sub_261B5CDEC(uint64_t a1)
{
  v2 = sub_261B31C3C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B5CE74()
{
  result = qword_280D22C80;
  if (!qword_280D22C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C80);
  }

  return result;
}

unint64_t sub_261B5CECC()
{
  result = qword_280D22C90;
  if (!qword_280D22C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C90);
  }

  return result;
}

uint64_t destroy for UpdateListTypeAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[3];
}

uint64_t initializeWithCopy for UpdateListTypeAppIntent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateListTypeAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  *(a1 + 16) = *(a2 + 16);
  v6 = a2[3];
  v7 = a1[3];
  a1[3] = v6;
  sub_261CFCDA4();

  return a1;
}

uint64_t *assignWithTake for UpdateListTypeAppIntent(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  v6 = a1[3];
  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t sub_261B5D0F4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDAC60);
  __swift_project_value_buffer(v9, qword_27FEDAC60);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListSortingStyleAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListSortingStyleAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B5D69C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListSortingStyleAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListSortingStyleAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListSortingStyleAppIntent.property.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*UpdateListSortingStyleAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5D9B4()
{
  result = swift_getKeyPath();
  qword_27FEDAC78 = result;
  return result;
}

uint64_t static UpdateListSortingStyleAppIntent.binding.getter()
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListSortingStyleAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC78 = a1;
}

uint64_t (*static UpdateListSortingStyleAppIntent.binding.modify())()
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B5DB5C@<X0>(void *a1@<X8>)
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAC78;
  return sub_261CFCDA4();
}

uint64_t sub_261B5DBDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98B8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC78 = v1;
}

uint64_t UpdateListSortingStyleAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v63 = sub_261CFD184();
  v65 = *(v63 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v61 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = v45 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v56 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v45[1] = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v15 + 104);
  v46 = *MEMORY[0x277CC9110];
  v27 = v46;
  v47 = v14;
  v28(v18, v46, v14);
  v49 = v28;
  v48 = v15 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v18, v27, v14);
  v29 = v59;
  sub_261CFD6C4();
  v30 = *(v24 + 56);
  v55 = v24 + 56;
  v57 = v30;
  v30(v29, 0, 1, v23);
  v31 = type metadata accessor for ListEntity();
  (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
  v32 = sub_261CFC834();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v50 = v34;
  v51 = v33 + 56;
  v34(v60, 1, 1, v32);
  v34(v61, 1, 1, v32);
  v52 = *MEMORY[0x277CBA308];
  v35 = *(v65 + 104);
  v65 += 104;
  v53 = v35;
  v35(v62);
  sub_261B5F3AC(&qword_280D227A0);
  *v64 = sub_261CFCC34();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC80, &unk_261D03CB0);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = v46;
  v37 = v47;
  v38 = v49;
  v49(v18, v46, v47);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v18, v36, v37);
  v39 = v59;
  sub_261CFD6C4();
  v57(v39, 0, 1, v56);
  v67 = 10;
  v40 = v50;
  v50(v60, 1, 1, v32);
  v40(v61, 1, 1, v32);
  v53(v62, v52, v63);
  sub_261AFF69C();
  v41 = sub_261CFCC04();
  v42 = v64;
  v64[1] = v41;
  *(v42 + 16) = 0;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v66 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v43[3] = result;
  return result;
}

uint64_t UpdateListSortingStyleAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  v4 = *(v3 - 8);
  *(v2 + 408) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 440) = v7;
  v8 = *(v7 - 8);
  *(v2 + 448) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 456) = swift_task_alloc();
  v10 = type metadata accessor for ListEntity();
  *(v2 + 464) = v10;
  v11 = *(v10 - 8);
  *(v2 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 480) = swift_task_alloc();
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = *v1;
  *(v2 + 594) = *(v1 + 16);
  *(v2 + 512) = *(v1 + 24);
  *(v2 + 520) = sub_261CFFD24();
  *(v2 + 528) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  *(v2 + 536) = v14;
  *(v2 + 544) = v13;

  return MEMORY[0x2822009F8](sub_261B5E714, v14, v13);
}

uint64_t sub_261B5E714()
{
  v15 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 594);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v6, v0 + 352, v14);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v6);
  v7 = v14[5];
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v7;
  *(v0 + 112) = v14[6];
  v8 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v8;
  v9 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v9;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v10 = *(v0 + 104);
  *(v0 + 593) = *(v0 + 592);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B145E0(0, v5, v4, v2, v3);
  *(v0 + 552) = sub_261CFFD14();
  v12 = sub_261CFFCF4();
  *(v0 + 560) = v12;
  *(v0 + 568) = v11;

  return MEMORY[0x2822009F8](sub_261B5E878, v12, v11);
}

uint64_t sub_261B5E878()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 576) = v1;
  *v1 = v0;
  v1[1] = sub_261B5E940;
  v2 = *(v0 + 456);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B5E940()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = *(v2 + 568);
  v6 = *(v2 + 560);
  if (v0)
  {
    v7 = sub_261B5EF18;
  }

  else
  {
    v7 = sub_261B5EA7C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B5EA7C()
{
  v1 = v0[69];

  v2 = v0[68];
  v3 = v0[67];

  return MEMORY[0x2822009F8](sub_261B5EAE4, v3, v2);
}

uint64_t sub_261B5EAE4()
{
  v42 = v0;
  v1 = v0[66];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261B425D4(v6, v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v8 = v0[52];
    v9 = v0[50];
    v10 = v0[51];
    sub_261B59E9C(v0[53]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v10 + 8))(v8, v9);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v41);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v41);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v29 = v0[56];
    v28 = v0[57];
    v31 = v0[54];
    v30 = v0[55];
    sub_261B01D70();
    swift_allocError();
    *v32 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v31);
    (*(v29 + 8))(v28, v30);
    v34 = v0[60];
    v33 = v0[61];
    v35 = v0[57];
    v37 = v0[53];
    v36 = v0[54];
    v38 = v0[52];

    v27 = v0[1];
  }

  else
  {
    v20 = v0[60];
    v22 = v0[57];
    v21 = v0[58];
    v24 = v0[55];
    v23 = v0[56];
    v25 = v0[54];
    v40 = v0[52];
    v26 = v0[49];
    sub_261B01E2C(v0[53], v20);
    sub_261B59E9C(v25);
    (*(v23 + 8))(v22, v24);
    sub_261B5F3AC(&qword_280D22790);
    sub_261CFC994();
    sub_261B59E48((v0 + 2));
    sub_261B0A1F0(v20);

    v27 = v0[1];
  }

  return v27();
}

uint64_t sub_261B5EF18()
{
  v1 = v0[69];

  v2 = v0[68];
  v3 = v0[67];

  return MEMORY[0x2822009F8](sub_261B5EF80, v3, v2);
}

uint64_t sub_261B5EF80()
{
  v1 = v0[66];

  sub_261B59E48((v0 + 2));
  v2 = v0[73];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[57];
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[52];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261B5F038(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B5F0C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261B5F13C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5F1B0()
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B5F228@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B5F2D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListSortingStyleAppIntent.perform()(a1);
}

uint64_t sub_261B5F370(uint64_t a1)
{
  v2 = sub_261B31BE8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B5F3AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ListEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261B5F43C()
{
  result = qword_280D22C08;
  if (!qword_280D22C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C08);
  }

  return result;
}

unint64_t sub_261B5F494()
{
  result = qword_280D22C18;
  if (!qword_280D22C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C18);
  }

  return result;
}

uint64_t sub_261B5F57C()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDAC90);
  __swift_project_value_buffer(v9, qword_27FEDAC90);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListListLayoutAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98C0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListListLayoutAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B5FB24(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListListLayoutAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListListLayoutAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListListLayoutAppIntent.property.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*UpdateListListLayoutAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B5FE3C()
{
  result = swift_getKeyPath();
  qword_27FEDACA8 = result;
  return result;
}

uint64_t static UpdateListListLayoutAppIntent.binding.getter()
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListListLayoutAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDACA8 = a1;
}

uint64_t (*static UpdateListListLayoutAppIntent.binding.modify())()
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B5FFE4@<X0>(void *a1@<X8>)
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDACA8;
  return sub_261CFCDA4();
}

uint64_t sub_261B60064(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98C8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDACA8 = v1;
}

uint64_t UpdateListListLayoutAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v63 = a1;
  v62 = sub_261CFD184();
  v65 = *(v62 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v60 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = v45 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v55 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v45[1] = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v15 + 104);
  v46 = *MEMORY[0x277CC9110];
  v27 = v46;
  v47 = v14;
  v28(v18, v46, v14);
  v49 = v28;
  v48 = v15 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v18, v27, v14);
  v29 = v64;
  sub_261CFD6C4();
  v30 = *(v24 + 56);
  v54 = v24 + 56;
  v56 = v30;
  v30(v29, 0, 1, v23);
  v31 = type metadata accessor for ListEntity();
  (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
  v32 = sub_261CFC834();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v50 = v34;
  v51 = v33 + 56;
  v34(v59, 1, 1, v32);
  v34(v60, 1, 1, v32);
  v52 = *MEMORY[0x277CBA308];
  v35 = *(v65 + 104);
  v65 += 104;
  v53 = v35;
  v35(v61);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity);
  *v63 = sub_261CFCC34();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACB0, &unk_261D03E70);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = v46;
  v37 = v47;
  v38 = v49;
  v49(v18, v46, v47);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v18, v36, v37);
  v39 = v64;
  sub_261CFD6C4();
  v56(v39, 0, 1, v55);
  v67 = 0;
  v40 = v50;
  v50(v59, 1, 1, v32);
  v40(v60, 1, 1, v32);
  v53(v61, v52, v62);
  sub_261AFF648();
  v41 = sub_261CFCC04();
  v42 = v63;
  v63[1] = v41;
  *(v42 + 16) = 0;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v66 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v43[3] = result;
  return result;
}

uint64_t UpdateListListLayoutAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  v4 = *(v3 - 8);
  *(v2 + 408) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v2 + 424) = v6;
  v7 = *(v6 - 8);
  *(v2 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 464) = v10;
  v11 = *(v10 - 8);
  *(v2 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 480) = swift_task_alloc();
  v13 = type metadata accessor for ListEntity();
  *(v2 + 488) = v13;
  v14 = *(v13 - 8);
  *(v2 + 496) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = *v1;
  *(v2 + 618) = *(v1 + 16);
  *(v2 + 536) = *(v1 + 24);
  *(v2 + 544) = sub_261CFFD24();
  *(v2 + 552) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 560) = v17;
  *(v2 + 568) = v16;

  return MEMORY[0x2822009F8](sub_261B60C00, v17, v16);
}

uint64_t sub_261B60C00()
{
  v15 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 618);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v6, v0 + 352, v14);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v6);
  v7 = v14[5];
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v7;
  *(v0 + 112) = v14[6];
  v8 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v8;
  v9 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v9;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v10 = *(v0 + 96);
  *(v0 + 617) = *(v0 + 616);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B153B8(0, v5, v4, v3, v2);
  *(v0 + 576) = sub_261CFFD14();
  v12 = sub_261CFFCF4();
  *(v0 + 584) = v12;
  *(v0 + 592) = v11;

  return MEMORY[0x2822009F8](sub_261B60D6C, v12, v11);
}

uint64_t sub_261B60D6C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B60E34;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B60E34()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 592);
  v6 = *(v2 + 584);
  if (v0)
  {
    v7 = sub_261B59CB8;
  }

  else
  {
    v7 = sub_261B60F70;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B60F70()
{
  v1 = v0[72];

  v2 = v0[71];
  v3 = v0[70];

  return MEMORY[0x2822009F8](sub_261B60FD8, v3, v2);
}

uint64_t sub_261B60FD8()
{
  v48 = v0;
  v1 = v0[69];
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261B425D4(v6, v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[51];
    v8 = v0[52];
    v10 = v0[50];
    sub_261B59E9C(v0[56]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v47);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v47);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v31 = v0[59];
    v30 = v0[60];
    v33 = v0[57];
    v32 = v0[58];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v33);
    (*(v31 + 8))(v30, v32);
    v36 = v0[63];
    v35 = v0[64];
    v37 = v0[60];
    v39 = v0[56];
    v38 = v0[57];
    v40 = v0[55];
    v41 = v0[52];

    v29 = v0[1];
  }

  else
  {
    v20 = v0[65];
    v21 = v0[63];
    v22 = v0[64];
    v23 = v0[60];
    v24 = v0[58];
    v25 = v0[59];
    v26 = v0[57];
    v27 = v0[55];
    v45 = v0[61];
    v46 = v0[54];
    v28 = v0[52];
    v43 = v0[49];
    v44 = v0[53];
    sub_261B01E2C(v0[56], v21);
    sub_261B59E9C(v26);
    (*(v25 + 8))(v23, v24);
    sub_261CFCBB4();
    sub_261BBF268(v28);
    sub_261B0A1F0(v22);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v46 + 8))(v27, v44);
    sub_261B0A1F0(v21);

    v29 = v0[1];
  }

  return v29();
}

uint64_t static UpdateListListLayoutAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACB8, &qword_261D03E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACC0, &qword_261D03E98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31B94();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACC8, &qword_261D03EC8);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACD0, &qword_261D03EF8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B616B0(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B61740(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261B617B4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B61828()
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B618A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98C0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B61950(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListListLayoutAppIntent.perform()(a1);
}

uint64_t sub_261B619EC(uint64_t a1)
{
  v2 = sub_261B31B94();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B61A74()
{
  result = qword_280D22D60;
  if (!qword_280D22D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D60);
  }

  return result;
}

unint64_t sub_261B61ACC()
{
  result = qword_280D22D70;
  if (!qword_280D22D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D70);
  }

  return result;
}

uint64_t sub_261B61B80()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDACF0);
  __swift_project_value_buffer(v9, qword_27FEDACF0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListShowsCompletedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98D0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDACF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListShowsCompletedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B62128(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListShowsCompletedAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListShowsCompletedAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListShowsCompletedAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*UpdateListShowsCompletedAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B6244C()
{
  result = swift_getKeyPath();
  qword_27FEDAD08 = result;
  return result;
}

uint64_t static UpdateListShowsCompletedAppIntent.binding.getter()
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListShowsCompletedAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD08 = a1;
}

uint64_t (*static UpdateListShowsCompletedAppIntent.binding.modify())()
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B625F4@<X0>(void *a1@<X8>)
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAD08;
  return sub_261CFCDA4();
}

uint64_t sub_261B62674(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98D8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD08 = v1;
}

uint64_t UpdateListShowsCompletedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v65 = v51 - v3;
  v70 = sub_261CFD184();
  v73 = *(v70 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v51 - v16;
  v18 = sub_261CFD674();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFD884();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_261CFFA44();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_261CFD6A4();
  v54 = v27;
  v72 = *(v27 - 8);
  v28 = *(v72 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v64 = v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v63 = v51 - v32;
  MEMORY[0x28223BE20](v31);
  v67 = v51 - v33;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v34 = *MEMORY[0x277CC9110];
  v36 = v19 + 104;
  v35 = *(v19 + 104);
  v51[0] = v18;
  v35(v22, v34, v18);
  v52 = v35;
  v51[1] = v36;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v22, v34, v18);
  v66 = v17;
  sub_261CFD6C4();
  v37 = *(v72 + 56);
  v72 += 56;
  v55 = v37;
  v37(v17, 0, 1, v27);
  v38 = type metadata accessor for ListEntity();
  (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
  v39 = sub_261CFC834();
  v60 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v59 = v41;
  v61 = v40 + 56;
  v41(v68, 1, 1, v39);
  v41(v62, 1, 1, v39);
  v56 = *MEMORY[0x277CBA308];
  v42 = *(v73 + 104);
  v73 += 104;
  v57 = v42;
  v42(v69);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity);
  v43 = v66;
  *v71 = sub_261CFCC34();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v51[0];
  v45 = v52;
  v52(v22, v34, v51[0]);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6C4();
  v55(v43, 0, 1, v54);
  v75 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  v46 = v65;
  sub_261CFFCD4();
  v47 = sub_261CFFCE4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v59(v68, 1, 1, v60);
  v57(v69, v56, v70);
  v48 = sub_261CFCD44();
  v49 = v71;
  v71[1] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v74 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v49[2] = result;
  return result;
}

uint64_t UpdateListShowsCompletedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  v4 = *(v3 - 8);
  *(v2 + 408) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v2 + 424) = v6;
  v7 = *(v6 - 8);
  *(v2 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 464) = v10;
  v11 = *(v10 - 8);
  *(v2 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 480) = swift_task_alloc();
  v13 = type metadata accessor for ListEntity();
  *(v2 + 488) = v13;
  v14 = *(v13 - 8);
  *(v2 + 496) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = *v1;
  *(v2 + 536) = *(v1 + 16);
  *(v2 + 544) = sub_261CFFD24();
  *(v2 + 552) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 560) = v17;
  *(v2 + 568) = v16;

  return MEMORY[0x2822009F8](sub_261B633D4, v17, v16);
}

uint64_t sub_261B633D4()
{
  v14 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 352, v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v5);
  v6 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v13[6];
  v7 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v7;
  v8 = v13[3];
  *(v0 + 48) = v13[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v9 = *(v0 + 80);
  *(v0 + 617) = *(v0 + 616);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B16190(0, v4, v3, v2);
  *(v0 + 576) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v0 + 584) = v11;
  *(v0 + 592) = v10;

  return MEMORY[0x2822009F8](sub_261B6352C, v11, v10);
}

uint64_t sub_261B6352C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B60E34;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t static UpdateListShowsCompletedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD10, &qword_261D040C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD18, &qword_261D040D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31B40();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD20, &qword_261D04100);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD28, &unk_261D04130);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B637E8(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B63878(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261B638EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B63960()
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B639D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98D0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDACF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B63A88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListShowsCompletedAppIntent.perform()(a1);
}

uint64_t sub_261B63B24(uint64_t a1)
{
  v2 = sub_261B31B40();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B63BAC()
{
  result = qword_280D22BF0;
  if (!qword_280D22BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BF0);
  }

  return result;
}

unint64_t sub_261B63C04()
{
  result = qword_280D22C00;
  if (!qword_280D22C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C00);
  }

  return result;
}

uint64_t sub_261B63CB8()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDAD48);
  __swift_project_value_buffer(v9, qword_27FEDAD48);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListParentAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAD48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListParentAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B64260(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B646D0(a1, &v15 - v9, type metadata accessor for ListEntity);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  sub_261B646D0(v10, v8, type metadata accessor for ListEntity);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B64738(v10, type metadata accessor for ListEntity);
}

uint64_t UpdateListParentAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B646D0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for ListEntity);
}

uint64_t (*UpdateListParentAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B64508(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GroupEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B646D0(a1, &v15 - v9, type metadata accessor for GroupEntity);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[3];
  sub_261B646D0(v10, v8, type metadata accessor for GroupEntity);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B64738(v10, type metadata accessor for GroupEntity);
}

uint64_t UpdateListParentAppIntent.property.setter(uint64_t a1)
{
  v3 = type metadata accessor for GroupEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 8);
  sub_261B646D0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for GroupEntity);
}

uint64_t sub_261B646D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B64738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*UpdateListParentAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B64830()
{
  result = swift_getKeyPath();
  qword_27FEDAD60 = result;
  return result;
}

uint64_t static UpdateListParentAppIntent.binding.getter()
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListParentAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD60 = a1;
}

uint64_t (*static UpdateListParentAppIntent.binding.modify())()
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B649D8@<X0>(void *a1@<X8>)
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAD60;
  return sub_261CFCDA4();
}

uint64_t sub_261B64A58(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98E8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD60 = v1;
}

uint64_t UpdateListParentAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v49 - v3;
  v67 = sub_261CFD184();
  v70 = *(v67 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v65 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v49 - v16;
  v17 = sub_261CFD674();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFD884();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFFA44();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = sub_261CFD6A4();
  v60 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v49 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = *(v18 + 104);
  v50 = *MEMORY[0x277CC9110];
  v30 = v50;
  v51 = v17;
  v31(v21, v50, v17);
  v53 = v31;
  v52 = v18 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v21, v30, v17);
  v32 = v69;
  sub_261CFD6C4();
  v33 = *(v27 + 56);
  v59 = v27 + 56;
  v61 = v33;
  v33(v32, 0, 1, v26);
  v34 = type metadata accessor for ListEntity();
  (*(*(v34 - 8) + 56))(v62, 1, 1, v34);
  v35 = sub_261CFC834();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v54 = v37;
  v55 = v36 + 56;
  v37(v64, 1, 1, v35);
  v37(v65, 1, 1, v35);
  v56 = *MEMORY[0x277CBA308];
  v38 = *(v70 + 104);
  v70 += 104;
  v57 = v38;
  v38(v66);
  sub_261B65438();
  sub_261B66D00(&qword_280D227A0, type metadata accessor for ListEntity);
  *v68 = sub_261CFCC24();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v50;
  v40 = v51;
  v41 = v53;
  v53(v21, v50, v51);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v41(v21, v39, v40);
  v42 = v69;
  sub_261CFD6C4();
  v61(v42, 0, 1, v60);
  v43 = type metadata accessor for GroupEntity();
  (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
  v44 = v54;
  v54(v64, 1, 1, v35);
  v44(v65, 1, 1, v35);
  v57(v66, v56, v67);
  sub_261B66D00(&qword_280D22670, type metadata accessor for GroupEntity);
  v45 = sub_261CFCC34();
  v46 = v68;
  v68[1] = v45;
  *(v46 + 16) = 0;
  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v71 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v47[3] = result;
  return result;
}

unint64_t sub_261B65438()
{
  result = qword_27FEDAD68;
  if (!qword_27FEDAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAD68);
  }

  return result;
}

uint64_t static UpdateListParentAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD78, &qword_261D042F8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD80, &qword_261D04300);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31AEC();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD88, &qword_261D04330);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD90, &qword_261D04360);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B65688@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t UpdateListParentAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = type metadata accessor for GroupEntity();
  *(v2 + 400) = v3;
  v4 = *(v3 - 8);
  *(v2 + 408) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_261CFD754();
  *(v2 + 424) = v6;
  v7 = *(v6 - 8);
  *(v2 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  v9 = sub_261CFC9D4();
  *(v2 + 448) = v9;
  v10 = *(v9 - 8);
  *(v2 + 456) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 464) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 488) = v13;
  v14 = *(v13 - 8);
  *(v2 + 496) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440) - 8) + 64) + 15;
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  v17 = type metadata accessor for ListEntity();
  *(v2 + 528) = v17;
  v18 = *(v17 - 8);
  *(v2 + 536) = v18;
  v19 = *(v18 + 64) + 15;
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = *v1;
  *(v2 + 665) = *(v1 + 16);
  *(v2 + 584) = *(v1 + 24);
  *(v2 + 592) = sub_261CFFD24();
  *(v2 + 600) = sub_261CFFD14();
  v21 = sub_261CFFCF4();
  *(v2 + 608) = v21;
  *(v2 + 616) = v20;

  return MEMORY[0x2822009F8](sub_261B659F0, v21, v20);
}

uint64_t sub_261B659F0()
{
  v38 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 528);
  sub_261CFCBB4();
  v4 = *(v2 + *(v3 + 52));
  sub_261CFD2D4();
  v5 = *(v0 + 664);
  sub_261B64738(v2, type metadata accessor for ListEntity);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v36 = *(v0 + 592);
    v19 = *(v0 + 584);
    v34 = *(v0 + 665);
    v20 = *(v0 + 576);
    v21 = *(v0 + 568);
    v22 = *(v0 + 552);
    v23 = *(v0 + 520);
    v24 = *(v0 + 512);
    v26 = *(v0 + 400);
    v25 = *(v0 + 408);
    sub_261CFCBB4();
    sub_261CFC664();
    sub_261B7C4B8(v22, v0 + 352, v37);
    __swift_destroy_boxed_opaque_existential_0((v0 + 352));
    sub_261B64738(v22, type metadata accessor for ListEntity);
    v27 = v37[5];
    *(v0 + 80) = v37[4];
    *(v0 + 96) = v27;
    *(v0 + 112) = v37[6];
    v28 = v37[1];
    *(v0 + 16) = v37[0];
    *(v0 + 32) = v28;
    v29 = v37[3];
    *(v0 + 48) = v37[2];
    *(v0 + 64) = v29;
    sub_261B59DEC(v0 + 16, v0 + 128);
    sub_261CFCBB4();
    (*(v25 + 56))(v23, 0, 1, v26);
    v30 = *(v0 + 64);
    sub_261AFB668(v23, v24, &unk_27FEDD950, &unk_261D01440);
    sub_261CFCBC4();
    sub_261AE6A40(v23, &unk_27FEDD950, &unk_261D01440);
    sub_261B59E48(v0 + 16);
    sub_261B16F4C(0, v21, v20, v34, v19);
    *(v0 + 624) = sub_261CFFD14();
    v32 = sub_261CFFCF4();
    *(v0 + 632) = v32;
    *(v0 + 640) = v31;

    return MEMORY[0x2822009F8](sub_261B65D14, v32, v31);
  }

  else
  {
    v6 = *(v0 + 600);

    sub_261B01D70();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    v8 = *(v0 + 560);
    v9 = *(v0 + 552);
    v10 = *(v0 + 544);
    v11 = *(v0 + 520);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v15 = *(v0 + 472);
    v14 = *(v0 + 480);
    v16 = *(v0 + 464);
    v33 = *(v0 + 440);
    v35 = *(v0 + 416);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_261B65D14()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 648) = v1;
  *v1 = v0;
  v1[1] = sub_261B65DDC;
  v2 = *(v0 + 504);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B65DDC()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 656) = v0;

  v5 = *(v2 + 640);
  v6 = *(v2 + 632);
  if (v0)
  {
    v7 = sub_261B6655C;
  }

  else
  {
    v7 = sub_261B65F18;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B65F18()
{
  v1 = v0[78];

  v2 = v0[77];
  v3 = v0[76];

  return MEMORY[0x2822009F8](sub_261B65F80, v3, v2);
}

uint64_t sub_261B65F80()
{
  v56 = v0;
  v1 = v0[75];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261AFB668(v6, v7, &unk_27FEDE0C0, &unk_261D02500);
  if ((*(v2 + 48))(v7, 1, v3) == 1)
  {
    v9 = v0[54];
    v8 = v0[55];
    v10 = v0[53];
    sub_261AE6A40(v0[59], &unk_27FEDE0C0, &unk_261D02500);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v55);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v55);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v31 = v0[62];
    v30 = v0[63];
    v33 = v0[60];
    v32 = v0[61];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261AE6A40(v33, &unk_27FEDE0C0, &unk_261D02500);
    (*(v31 + 8))(v30, v32);
    v35 = v0[70];
    v36 = v0[69];
    v37 = v0[68];
    v38 = v0[65];
    v40 = v0[63];
    v39 = v0[64];
    v42 = v0[59];
    v41 = v0[60];
    v43 = v0[58];
    v44 = v0[55];
    v53 = v0[52];

    v29 = v0[1];
  }

  else
  {
    v20 = v0[72];
    v50 = v0[70];
    v51 = v0[69];
    v21 = v0[68];
    v22 = v0[63];
    v54 = v0[64];
    v49 = v0[66];
    v24 = v0[61];
    v23 = v0[62];
    v25 = v0[60];
    v52 = v0[65];
    v26 = v0[57];
    v27 = v0[55];
    v48 = v0[56];
    v28 = v0[52];
    v46 = v0[58];
    v47 = v0[49];
    sub_261B01E2C(v0[59], v21);
    sub_261AE6A40(v25, &unk_27FEDE0C0, &unk_261D02500);
    (*(v23 + 8))(v22, v24);
    sub_261CFCBB4();
    sub_261BBF2B0(v27);
    sub_261B64738(v28, type metadata accessor for GroupEntity);
    sub_261CFC9E4();
    sub_261B66D00(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261B66D00(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v26 + 8))(v46, v48);
    sub_261B64738(v21, type metadata accessor for ListEntity);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_261B6655C()
{
  v1 = v0[78];

  v2 = v0[77];
  v3 = v0[76];

  return MEMORY[0x2822009F8](sub_261B665C4, v3, v2);
}

uint64_t sub_261B665C4()
{
  v1 = v0[75];

  sub_261B59E48((v0 + 2));
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[59];
  v8 = v0[60];
  v10 = v0[58];
  v11 = v0[55];
  v14 = v0[52];
  v15 = v0[82];

  v12 = v0[1];

  return v12();
}

uint64_t sub_261B666D0(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B646D0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for ListEntity);
}

uint64_t (*sub_261B6677C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261B667F0(uint64_t a1)
{
  v3 = type metadata accessor for GroupEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 8);
  sub_261B646D0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for GroupEntity);
}

uint64_t (*sub_261B6689C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B66910()
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B66988@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAD48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B66A38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListParentAppIntent.perform()(a1);
}

uint64_t sub_261B66AD4(uint64_t a1)
{
  v2 = sub_261B31AEC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B66B30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  *(v0 + 48) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v1 = sub_261CFC684();
  *(v0 + 24) = v1;
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_261B0AF4C;
  v3 = *(v0 + 16);

  return sub_261C51EBC(v3, "ListEntityQuery.suggestedEntities", 33, 2, v1, 1);
}

uint64_t sub_261B66C68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF4BDC;

  return sub_261B66B10(a1);
}

uint64_t sub_261B66D00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261B66D94()
{
  result = qword_280D22C38;
  if (!qword_280D22C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C38);
  }

  return result;
}

unint64_t sub_261B66DEC()
{
  result = qword_280D22C48;
  if (!qword_280D22C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C48);
  }

  return result;
}

unint64_t sub_261B66E94()
{
  result = qword_27FEDADA0;
  if (!qword_27FEDADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDADA0);
  }

  return result;
}

uint64_t sub_261B66F50()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDADB8);
  __swift_project_value_buffer(v9, qword_27FEDADB8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListBadgeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98F0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListBadgeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B674F8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListBadgeAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListBadgeAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

double sub_261B67740@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFCBB4();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_261B6778C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t UpdateListBadgeAppIntent.property.setter(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[3];
  v7 = a1[4];
  return sub_261CFCBC4();
}

uint64_t (*UpdateListBadgeAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B67918()
{
  result = swift_getKeyPath();
  qword_27FEDADD0 = result;
  return result;
}

uint64_t static UpdateListBadgeAppIntent.binding.getter()
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListBadgeAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDADD0 = a1;
}

uint64_t (*static UpdateListBadgeAppIntent.binding.modify())()
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B67AC0@<X0>(void *a1@<X8>)
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDADD0;
  return sub_261CFCDA4();
}

uint64_t sub_261B67B40(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98F8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDADD0 = v1;
}

uint64_t UpdateListBadgeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v63 = sub_261CFD184();
  v65 = *(v63 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v45 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v56 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v45 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v15 + 104);
  v46 = *MEMORY[0x277CC9110];
  v27 = v46;
  v47 = v14;
  v28(v18, v46, v14);
  v49 = v28;
  v48 = v15 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v18, v27, v14);
  v29 = v59;
  sub_261CFD6C4();
  v30 = *(v24 + 56);
  v55 = v24 + 56;
  v57 = v30;
  v30(v29, 0, 1, v23);
  v31 = type metadata accessor for ListEntity();
  (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
  v32 = sub_261CFC834();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v50 = v34;
  v51 = v33 + 56;
  v34(v60, 1, 1, v32);
  v34(v61, 1, 1, v32);
  v52 = *MEMORY[0x277CBA308];
  v35 = *(v65 + 104);
  v65 += 104;
  v53 = v35;
  v35(v62);
  sub_261B5F3AC(&qword_280D227A0);
  *v64 = sub_261CFCC34();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDADD8, &unk_261D045E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = v46;
  v37 = v47;
  v38 = v49;
  v49(v18, v46, v47);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v18, v36, v37);
  v39 = v59;
  sub_261CFD6C4();
  v57(v39, 0, 1, v56);
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v40 = v50;
  v50(v60, 1, 1, v32);
  v40(v61, 1, 1, v32);
  v53(v62, v52, v63);
  sub_261AFF5F4();
  v41 = sub_261CFCC34();
  v42 = v64;
  v64[1] = v41;
  *(v42 + 16) = 0;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v66 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v43[3] = result;
  return result;
}

uint64_t UpdateListBadgeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 472) = a1;
  v3 = sub_261CFD754();
  *(v2 + 480) = v3;
  v4 = *(v3 - 8);
  *(v2 + 488) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 496) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 520) = v7;
  v8 = *(v7 - 8);
  *(v2 + 528) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 536) = swift_task_alloc();
  v10 = type metadata accessor for ListEntity();
  *(v2 + 544) = v10;
  v11 = *(v10 - 8);
  *(v2 + 552) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = *v1;
  *(v2 + 672) = *(v1 + 16);
  *(v2 + 592) = *(v1 + 24);
  *(v2 + 600) = sub_261CFFD24();
  *(v2 + 608) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  *(v2 + 616) = v14;
  *(v2 + 624) = v13;

  return MEMORY[0x2822009F8](sub_261B6866C, v14, v13);
}

uint64_t sub_261B6866C()
{
  v17 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 672);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v6, v0 + 352, v16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v6);
  v7 = v16[5];
  *(v0 + 80) = v16[4];
  *(v0 + 96) = v7;
  *(v0 + 112) = v16[6];
  v8 = v16[1];
  *(v0 + 16) = v16[0];
  *(v0 + 32) = v8;
  v9 = v16[3];
  *(v0 + 48) = v16[2];
  *(v0 + 64) = v9;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v10 = *(v0 + 416);
  v11 = *(v0 + 424);
  v12 = *(v0 + 56);
  *(v0 + 432) = *(v0 + 392);
  *(v0 + 440) = *(v0 + 400);
  *(v0 + 456) = v10;
  *(v0 + 464) = v11;
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B17D24(0, v5, v4, v3, v2);
  *(v0 + 632) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  *(v0 + 640) = v14;
  *(v0 + 648) = v13;

  return MEMORY[0x2822009F8](sub_261B687E8, v14, v13);
}

uint64_t sub_261B687E8()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 656) = v1;
  *v1 = v0;
  v1[1] = sub_261B688B0;
  v2 = *(v0 + 536);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B688B0()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  *(*v1 + 664) = v0;

  v5 = *(v2 + 648);
  v6 = *(v2 + 640);
  if (v0)
  {
    v7 = sub_261B68EA4;
  }

  else
  {
    v7 = sub_261B689EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B689EC()
{
  v1 = v0[79];

  v2 = v0[78];
  v3 = v0[77];

  return MEMORY[0x2822009F8](sub_261B68A54, v3, v2);
}

uint64_t sub_261B68A54()
{
  v43 = v0;
  v1 = v0[76];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261B425D4(v6, v7);
  if ((*(v2 + 48))(v7, 1, v3) == 1)
  {
    v8 = v0[62];
    v9 = v0[60];
    v10 = v0[61];
    sub_261B59E9C(v0[63]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v10 + 8))(v8, v9);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v42);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v42);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v29 = v0[67];
    v30 = v0[66];
    v31 = v0[65];
    v32 = v0[64];
    sub_261B01D70();
    swift_allocError();
    *v33 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v32);
    (*(v30 + 8))(v29, v31);
    v34 = v0[71];
    v35 = v0[70];
    v36 = v0[67];
    v38 = v0[63];
    v37 = v0[64];
    v39 = v0[62];

    v28 = v0[1];
  }

  else
  {
    v20 = v0[71];
    v21 = v0[70];
    v22 = v0[68];
    v23 = v0[67];
    v24 = v0[66];
    v25 = v0[65];
    v26 = v0[64];
    v41 = v0[62];
    v27 = v0[59];
    sub_261B01E2C(v0[63], v21);
    sub_261B59E9C(v26);
    (*(v24 + 8))(v23, v25);
    sub_261B5F3AC(&qword_280D22790);
    sub_261CFC994();
    sub_261B59E48((v0 + 2));
    sub_261B0A1F0(v21);

    v28 = v0[1];
  }

  return v28();
}