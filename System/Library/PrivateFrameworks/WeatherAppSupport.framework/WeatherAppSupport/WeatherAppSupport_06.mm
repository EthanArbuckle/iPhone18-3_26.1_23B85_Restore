uint64_t NextPrecipitation.init<A>(hourlyForecast:date:timeZone:limitInHours:precipitationChanceThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v163 = a7;
  AssociatedConformanceWitness = a6;
  v153 = a3;
  v160 = a2;
  v154 = a1;
  v150 = a8;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  v13 = OUTLINED_FUNCTION_6(Precipitation);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v140 = v17 - v16;
  v18 = OUTLINED_FUNCTION_6_1();
  v139 = type metadata accessor for PrecipitationEvent(v18);
  v19 = OUTLINED_FUNCTION_6(v139);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v138 = v23 - v22;
  v24 = *(*(a6 + 8) + 8);
  v25 = *(v24 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v156 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22();
  v143 = v31;
  OUTLINED_FUNCTION_6_1();
  v32 = sub_220DC0AE0();
  OUTLINED_FUNCTION_18(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22();
  v158 = v36;
  v146 = v24;
  swift_getAssociatedTypeWitness();
  v155 = *(swift_getAssociatedConformanceWitness() + 8);
  v162 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(v162);
  v147 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22();
  v161 = v41;
  v151 = *(a5 - 8);
  v42 = *(v151 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v144 = (v45 - v44);
  OUTLINED_FUNCTION_6_1();
  v46 = swift_checkMetadataState();
  v47 = OUTLINED_FUNCTION_0(v46);
  v152 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  v142 = v51 - v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v53);
  v55 = &v138 - v54;
  v56 = sub_220DBE6E0();
  v57 = OUTLINED_FUNCTION_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1();
  v64 = v63 - v62;
  v159 = sub_220DBE560();
  v65 = OUTLINED_FUNCTION_0(v159);
  v141 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4();
  v71 = v69 - v70;
  MEMORY[0x28223BE20](v72);
  v74 = &v138 - v73;
  v75 = a4 * 3600.0;
  sub_220DBE600();
  v76 = v160;
  sub_220DBE3A0();
  (*(v59 + 8))(v64, v56);
  (*(v151 + 16))(v144, v154, a5);
  v164 = a5;
  v165 = AssociatedConformanceWitness;
  v77 = v163;
  v166 = v163;
  v167 = v76;
  v145 = v74;
  v168 = v74;
  v148 = a5;
  v78 = v143;
  sub_220DC08D0();
  v79 = *(v152 + 16);
  v144 = v55;
  v79(v142, v55, v46);
  sub_220DC06D0();
  v146 = v46;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = (v156 + 32);
  v81 = (v141 + 8);
  v155 = v77 + 3;
  while (1)
  {
    v82 = v158;
    sub_220DC0AF0();
    if (__swift_getEnumTagSinglePayload(v82, 1, AssociatedTypeWitness) == 1)
    {
      v93 = sub_220DBE740();
      OUTLINED_FUNCTION_6(v93);
      (*(v94 + 8))(v153);
      v95 = OUTLINED_FUNCTION_5_22();
      v96(v95);
      v97 = OUTLINED_FUNCTION_12_17();
      v98(v97);
      v99 = OUTLINED_FUNCTION_6_15();
      v100(v99);
      v87 = *v81;
LABEL_9:
      v111 = v159;
      v87(v145, v159);
      v87(v160, v111);
      return __swift_storeEnumTagSinglePayload(v150, 1, 1, Precipitation);
    }

    (*v80)(v78, v82, AssociatedTypeWitness);
    v83 = v78;
    v84 = v163[1];
    v84(AssociatedTypeWitness);
    sub_220DBE410();
    v86 = v85;
    v87 = *v81;
    (*v81)(v71, v159);
    if (v86 < 0.0)
    {
      goto LABEL_6;
    }

    if (v86 > v75)
    {
      v101 = sub_220DBE740();
      OUTLINED_FUNCTION_6(v101);
      (*(v102 + 8))(v153);
      v103 = OUTLINED_FUNCTION_5_22();
      v104(v103);
      v105 = OUTLINED_FUNCTION_18_10();
      v106(v105);
      v107 = OUTLINED_FUNCTION_12_17();
      v108(v107);
      v109 = OUTLINED_FUNCTION_6_15();
      v110(v109);
      goto LABEL_9;
    }

    v88 = v163[3];
    v156 = v84;
    v89 = v88(AssociatedTypeWitness);
    v90 = v156;
    if (v89 >= a9)
    {
      break;
    }

LABEL_6:
    v91 = OUTLINED_FUNCTION_18_10();
    v92(v91);
    v78 = v83;
  }

  if (v86 <= 3600.0)
  {
    v86 = 3600.0;
  }

  v113 = v163;
  v114 = v163[2];
  v115 = v138;
  v158 = v87;
  v114(AssociatedTypeWitness, v163);
  v116 = v90;
  v117 = v139;
  v118 = v115 + *(v139 + 24);
  v116(AssociatedTypeWitness, v113);
  v119 = (v88)(AssociatedTypeWitness, v113);
  v120 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v120);
  (*(v121 + 8))(v153);
  v122 = OUTLINED_FUNCTION_5_22();
  v123(v122);
  v124 = OUTLINED_FUNCTION_18_10();
  v125(v124);
  v126 = OUTLINED_FUNCTION_12_17();
  v127(v126);
  v128 = OUTLINED_FUNCTION_6_15();
  v129(v128);
  v130 = v115 + *(v117 + 20);
  *v130 = v86;
  *(v130 + 8) = 0;
  v131 = v115 + *(v117 + 28);
  *v131 = v119;
  *(v131 + 8) = 0;
  OUTLINED_FUNCTION_0_19();
  v132 = v140;
  sub_220D619B4(v115, v140);
  v133 = Precipitation;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_29();
  v134 = v132;
  v135 = v150;
  sub_220D619B4(v134, v150);
  v137 = v158;
  v136 = v159;
  v158(v145, v159);
  __swift_storeEnumTagSinglePayload(v135, 0, 1, v133);
  return (v137)(v160, v136);
}

uint64_t sub_220D609A0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v135 = a6;
  v130 = a5;
  v112 = a3;
  v114 = a2;
  v113 = a1;
  v110 = a7;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  v11 = *(*(Precipitation - 8) + 64);
  MEMORY[0x28223BE20](Precipitation);
  v99 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PrecipitationEvent(0);
  v13 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_220DBF410();
  v136 = *(v117 - 8);
  v15 = *(v136 + 8);
  MEMORY[0x28223BE20](v117);
  v124 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_220DBE1A0();
  v122 = *(v125 - 8);
  v17 = *(v122 + 64);
  MEMORY[0x28223BE20](v125);
  v138 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(a5 + 1) + 8);
  v20 = *(v19 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v118 = *(AssociatedTypeWitness - 8);
  v21 = *(v118 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v129 = &v96 - v22;
  v23 = sub_220DC0AE0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v128 = &v96 - v25;
  v131 = v19;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = *(swift_getAssociatedConformanceWitness() + 8);
  v134 = swift_getAssociatedTypeWitness();
  v106 = *(v134 - 8);
  v26 = *(v106 + 64);
  v27 = MEMORY[0x28223BE20](v134);
  v133 = &v96 - v28;
  v29 = *(a4 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_checkMetadataState();
  v111 = *(v33 - 8);
  v34 = *(v111 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v126 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v96 - v37;
  v132 = sub_220DBE560();
  v121 = *(v132 - 8);
  v39 = *(v121 + 64);
  v40 = MEMORY[0x28223BE20](v132);
  v123 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v137 = &v96 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v96 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v96 - v47;
  v103 = sub_220DBE6E0();
  v102 = *(v103 - 8);
  v49 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v51 = &v96 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE600();
  v52 = v114;
  sub_220DBE390();
  v101 = v29;
  (*(v29 + 16))(v32, v113, a4);
  v139 = a4;
  v140 = v130;
  v53 = v135;
  v141 = v135;
  v142 = v52;
  v105 = v48;
  v143 = v48;
  v108 = a4;
  v54 = AssociatedTypeWitness;
  sub_220DC08D0();
  v55 = v132;
  v130 = v46;
  v131 = v51;
  v56 = v129;
  sub_220DBE5F0();
  v57 = *(v111 + 16);
  v104 = v38;
  v57(v126, v38, v33);
  sub_220DC06D0();
  v107 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v120 = (v118 + 32);
  v126 = (v53 + 8);
  v58 = (v121 + 8);
  v119 = *MEMORY[0x277CC9968];
  v115 = v53 + 24;
  v121 = v122 + 8;
  v122 = v118 + 8;
  v116 = (v136 + 8);
  v118 = xmmword_220DC17A0;
  while (1)
  {
    v59 = v128;
    sub_220DC0AF0();
    if (__swift_getEnumTagSinglePayload(v59, 1, v54) == 1)
    {
      v78 = sub_220DBE740();
      (*(*(v78 - 8) + 8))(v112, v78);
      (*(v101 + 8))(v113, v108);
      (*(v106 + 8))(v133, v134);
      v75 = *v58;
      (*v58)(v130, v55);
LABEL_13:
      (*(v111 + 8))(v104, v107);
      (*(v102 + 8))(v131, v103);
      v75(v105, v55);
      v75(v114, v55);
      return __swift_storeEnumTagSinglePayload(v110, 1, 1, Precipitation);
    }

    (*v120)(v56, v59, v54);
    v60 = *(v135 + 8);
    v61 = v123;
    v62 = v54;
    v60(v54);
    sub_220DBE5F0();
    v63 = v61;
    v64 = v58;
    v136 = *v58;
    v136(v63, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v65 = sub_220DBE6C0();
    v66 = *(v65 - 8);
    v67 = *(v66 + 72);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v118;
    (*(v66 + 104))(v69 + v68, v119, v65);
    sub_220CE05C8(v69);
    sub_220DBE620();

    v70 = sub_220DBE150();
    if (v71)
    {
      sub_220DBF3E0();
      v72 = sub_220DBF3F0();
      v73 = sub_220DC0980();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_220CD1000, v72, v73, "unexpectedly failed to obtain day difference", v74, 2u);
        MEMORY[0x223D98FB0](v74, -1, -1);
      }

      (*v116)(v124, v117);
      v54 = v62;
      v56 = v129;
      v58 = v64;
      v75 = v136;
      goto LABEL_10;
    }

    v76 = v70;
    v54 = v62;
    v56 = v129;
    v58 = v64;
    v75 = v136;
    if ((v70 & 0x8000000000000000) != 0)
    {
      goto LABEL_10;
    }

    if (v70 > 0xA)
    {
      v79 = sub_220DBE740();
      (*(*(v79 - 8) + 8))(v112, v79);
      (*(v101 + 8))(v113, v108);
      (*v121)(v138, v125);
      v55 = v132;
      v75(v137, v132);
      (*v122)(v56, v54);
      (*(v106 + 8))(v133, v134);
      v75(v130, v55);
      goto LABEL_13;
    }

    v77 = *(v135 + 24);
    if (v77(v54) >= a8)
    {
      break;
    }

LABEL_10:
    (*v121)(v138, v125);
    v55 = v132;
    v75(v137, v132);
    (*v122)(v56, v54);
  }

  v81 = v76 * 86400.0;
  v82 = v135;
  v83 = v54;
  v84 = v97;
  (*(v135 + 16))(v83, v135);
  v85 = v98;
  v86 = v84 + *(v98 + 24);
  (v60)(v83, v82);
  v87 = (v77)(v83, v82);
  v88 = sub_220DBE740();
  (*(*(v88 - 8) + 8))(v112, v88);
  (*(v101 + 8))(v113, v108);
  (*v121)(v138, v125);
  v89 = v132;
  v75(v137, v132);
  (*v122)(v56, v83);
  (*(v106 + 8))(v133, v134);
  v75(v130, v89);
  (*(v111 + 8))(v104, v107);
  (*(v102 + 8))(v131, v103);
  v90 = v84 + *(v85 + 20);
  *v90 = v81;
  *(v90 + 8) = 0;
  v91 = v84 + *(v85 + 28);
  *v91 = v87;
  *(v91 + 8) = 0;
  v92 = v99;
  sub_220D619B4(v84, v99);
  v93 = Precipitation;
  swift_storeEnumTagMultiPayload();
  v94 = v92;
  v95 = v110;
  sub_220D619B4(v94, v110);
  v75(v105, v89);
  __swift_storeEnumTagSinglePayload(v95, 0, 1, v93);
  return (v75)(v114, v89);
}

uint64_t sub_220D619B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_20();
  v9(v8);
  return a2;
}

uint64_t sub_220D61A0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v489 = a1;
  v490 = a2;
  v499 = a3;
  v3 = sub_220DBE1A0();
  v4 = *(v3 - 8);
  v491 = v3;
  v492 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v469 = &v419 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v468 = &v419 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v465 = &v419 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v464 = &v419 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v461 = &v419 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v460 = &v419 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v455 = &v419 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v454 = &v419 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v470 = &v419 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v471 = &v419 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v485 = &v419 - v27;
  MEMORY[0x28223BE20](v26);
  v488 = &v419 - v28;
  v29 = sub_220DBE6E0();
  v30 = *(v29 - 8);
  v493 = v29;
  v494 = v30;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v467 = &v419 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v466 = &v419 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v463 = &v419 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v462 = &v419 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v459 = &v419 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v458 = &v419 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v449 = &v419 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v448 = &v419 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v474 = &v419 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v478 = &v419 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v484 = &v419 - v53;
  MEMORY[0x28223BE20](v52);
  v497 = &v419 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v451 = &v419 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v450 = &v419 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v443 = &v419 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v442 = &v419 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v437 = &v419 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v434 = &v419 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v431 = &v419 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v430 = &v419 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v477 = &v419 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v481 = &v419 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v487 = &v419 - v78;
  MEMORY[0x28223BE20](v77);
  v80 = &v419 - v79;
  v498 = sub_220DBE560();
  v495 = *(v498 - 8);
  v81 = *(v495 + 64);
  v82 = MEMORY[0x28223BE20](v498);
  v456 = &v419 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v82);
  v457 = &v419 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v452 = &v419 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v453 = &v419 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v446 = &v419 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v447 = &v419 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v444 = &v419 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v445 = &v419 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v438 = &v419 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v440 = &v419 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v435 = &v419 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v436 = &v419 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v428 = &v419 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v429 = &v419 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v426 = &v419 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v427 = &v419 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v472 = &v419 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v473 = &v419 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v475 = &v419 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v476 = &v419 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v486 = &v419 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v483 = &v419 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v128 = &v419 - v127;
  MEMORY[0x28223BE20](v126);
  v496 = &v419 - v129;
  v130 = sub_220DBEC20();
  v131 = *(v130 - 8);
  v132 = *(v131 + 64);
  v133 = MEMORY[0x28223BE20](v130);
  v441 = &v419 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = MEMORY[0x28223BE20](v133);
  v439 = &v419 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v433 = &v419 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v432 = &v419 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v425 = &v419 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v424 = &v419 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v423 = &v419 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v422 = &v419 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v479 = &v419 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v480 = &v419 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v155 = &v419 - v154;
  MEMORY[0x28223BE20](v153);
  v157 = &v419 - v156;
  v158 = sub_220DBED10();
  v159 = *(v158 - 8);
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v158);
  v162 = &v419 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBED30();
  v420 = v159;
  v163 = *(v159 + 88);
  v421 = v158;
  v164 = v163(v162, v158);
  if (v164 == *MEMORY[0x277CE3520])
  {
    goto LABEL_2;
  }

  v171 = v164;
  v482 = v131;
  v172 = v130;
  if (v164 == *MEMORY[0x277CE35D8])
  {
    goto LABEL_6;
  }

  if (v164 == *MEMORY[0x277CE35C0])
  {
    goto LABEL_9;
  }

  if (v164 == *MEMORY[0x277CE3660])
  {
    goto LABEL_6;
  }

  if (v164 == *MEMORY[0x277CE3668])
  {
LABEL_9:
    v176 = v482;
    (*(v482 + 104))(v155, *MEMORY[0x277CE3398], v130);
    v177 = v487;
    sub_220DBED20();
    v178 = v498;
    if (__swift_getEnumTagSinglePayload(v177, 1, v498) != 1)
    {
      v481 = v172;
      v207 = v495;
      v208 = v483;
      (*(v495 + 32))(v483, v177, v178);
      (*(v207 + 16))(v486, v489, v178);
      v209 = v484;
      sub_220DBE600();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
      v210 = sub_220DBE6C0();
      v211 = *(v210 - 8);
      v212 = *(v211 + 72);
      v213 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v214 = swift_allocObject();
      *(v214 + 16) = xmmword_220DC17A0;
      (*(v211 + 104))(v214 + v213, *MEMORY[0x277CC99A0], v210);
      sub_220CE05C8(v214);
      v215 = v485;
      sub_220DBE620();

      v216 = sub_220DBE170();
      LOBYTE(v210) = v217;
      (*(v492 + 8))(v215, v491);
      v218 = v499;
      if ((v210 & 1) == 0 && (v216 - 60) >= 0xFFFFFFFFFFFFFFC5)
      {
        v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
        v219 = v218 + *(v497 + 12);
        v220 = v481;
        (*(v176 + 16))(v218, v155, v481);
        v221 = v486;
        sub_220DBE410();
        v223 = v222;
        (*(v494 + 8))(v209, v493);
        v224 = *(v207 + 8);
        v225 = v498;
        v224(v221, v498);
        v224(v208, v225);
        (*(v176 + 8))(v155, v220);
        *v219 = v223;
        *(v219 + 8) = 1;
        v168 = v218;
        v169 = 0;
        v170 = v497;
        return __swift_storeEnumTagSinglePayload(v168, v169, 1, v170);
      }

      (*(v494 + 8))(v209, v493);
      v226 = *(v207 + 8);
      v227 = v498;
      v226(v486, v498);
      v226(v208, v227);
      (*(v176 + 8))(v155, v481);
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
      v168 = v218;
      goto LABEL_49;
    }

    (*(v176 + 8))(v155, v172);
    v175 = v177;
    goto LABEL_11;
  }

  v131 = v482;
  if (v164 == *MEMORY[0x277CE3708])
  {
LABEL_2:
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v166 = v499;
    v167 = v499 + *(v165 + 48);
    (*(v131 + 104))(v499, *MEMORY[0x277CE3398], v130);
LABEL_3:
    *v167 = 0;
    *(v167 + 8) = 2;
    v168 = v166;
LABEL_4:
    v169 = 0;
    v170 = v165;
    return __swift_storeEnumTagSinglePayload(v168, v169, 1, v170);
  }

  if (v164 == *MEMORY[0x277CE3498])
  {
LABEL_6:
    v173 = v482;
    (*(v482 + 104))(v157, *MEMORY[0x277CE3398], v130);
    sub_220DBED20();
    v174 = v498;
    if (__swift_getEnumTagSinglePayload(v80, 1, v498) != 1)
    {
      v481 = v130;
      v179 = v80;
      v180 = v495;
      (*(v495 + 32))(v496, v179, v174);
      (*(v180 + 16))(v128, v489, v174);
      sub_220DBE600();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
      v181 = sub_220DBE6C0();
      v182 = *(v181 - 8);
      v183 = *(v182 + 72);
      v184 = (*(v182 + 80) + 32) & ~*(v182 + 80);
      v185 = swift_allocObject();
      *(v185 + 16) = xmmword_220DC17A0;
      (*(v182 + 104))(v185 + v184, *MEMORY[0x277CC99A0], v181);
      sub_220CE05C8(v185);
      v186 = v488;
      sub_220DBE620();

      v187 = sub_220DBE170();
      LOBYTE(v181) = v188;
      (*(v492 + 8))(v186, v491);
      if ((v181 & 1) == 0 && (v187 - 60) >= 0xFFFFFFFFFFFFFFC5)
      {
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
        v189 = v499;
        v190 = v499 + *(v165 + 48);
        v191 = v481;
        (*(v173 + 16))(v499, v157, v481);
        v192 = v496;
        sub_220DBE410();
        v194 = v193;
        (*(v494 + 8))(v497, v493);
        v195 = *(v180 + 8);
        v196 = v128;
        v197 = v498;
        v195(v196, v498);
        v195(v192, v197);
        (*(v173 + 8))(v157, v191);
        *v190 = v194;
        *(v190 + 8) = 0;
        v168 = v189;
        goto LABEL_4;
      }

      (*(v494 + 8))(v497, v493);
      v204 = *(v180 + 8);
      v205 = v498;
      v204(v128, v498);
      v204(v496, v205);
      (*(v173 + 8))(v157, v481);
      goto LABEL_48;
    }

    (*(v173 + 8))(v157, v130);
    v175 = v80;
    goto LABEL_11;
  }

  if (v164 == *MEMORY[0x277CE3490])
  {
    goto LABEL_9;
  }

  if (v164 == *MEMORY[0x277CE3538])
  {
    goto LABEL_6;
  }

  if (v164 == *MEMORY[0x277CE3540])
  {
    goto LABEL_9;
  }

  v131 = v482;
  if (v164 == *MEMORY[0x277CE36E8])
  {
    goto LABEL_2;
  }

  if (v164 == *MEMORY[0x277CE3748])
  {
    goto LABEL_6;
  }

  if (v164 == *MEMORY[0x277CE3720])
  {
    goto LABEL_9;
  }

  if (v164 == *MEMORY[0x277CE34E0])
  {
    goto LABEL_6;
  }

  if (v164 == *MEMORY[0x277CE34E8])
  {
    goto LABEL_9;
  }

  v131 = v482;
  if (v164 == *MEMORY[0x277CE3738])
  {
    goto LABEL_2;
  }

  if (v164 == *MEMORY[0x277CE3500])
  {
    goto LABEL_6;
  }

  if (v164 == *MEMORY[0x277CE34C8] || v164 == *MEMORY[0x277CE3588])
  {
    goto LABEL_9;
  }

  if (v164 == *MEMORY[0x277CE3580])
  {
    goto LABEL_6;
  }

  v199 = v130;
  if (v164 == *MEMORY[0x277CE3578] || v164 == *MEMORY[0x277CE3590] || v164 == *MEMORY[0x277CE3528] || v164 == *MEMORY[0x277CE3438])
  {
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v166 = v499;
    v167 = v499 + *(v165 + 48);
    v203 = MEMORY[0x277CE3398];
LABEL_46:
    (*(v482 + 104))(v166, *v203, v130);
    goto LABEL_3;
  }

  if (v164 == *MEMORY[0x277CE3630] || v164 == *MEMORY[0x277CE3640] || v164 == *MEMORY[0x277CE35E8] || v164 == *MEMORY[0x277CE3448])
  {
    goto LABEL_67;
  }

  if (v164 == *MEMORY[0x277CE3610] || v164 == *MEMORY[0x277CE3618] || v164 == *MEMORY[0x277CE35C8] || v164 == *MEMORY[0x277CE3440])
  {
    goto LABEL_80;
  }

  v258 = v164 == *MEMORY[0x277CE36A0] || v164 == *MEMORY[0x277CE36B0];
  v259 = v258 || v164 == *MEMORY[0x277CE3670];
  if (v259 || v164 == *MEMORY[0x277CE3450])
  {
LABEL_67:
    (*(v482 + 104))(v480, *MEMORY[0x277CE3398], v130);
    v231 = v481;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v231, 1, v498) == 1)
    {
      (*(v482 + 8))(v480, v130);
      v175 = v481;
LABEL_11:
      sub_220CDA548(v175, &qword_27CF951E0, &unk_220DC1D80);
LABEL_48:
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
      v168 = v499;
LABEL_49:
      v169 = 1;
      return __swift_storeEnumTagSinglePayload(v168, v169, 1, v170);
    }

    v237 = v495;
    v238 = v498;
    (*(v495 + 32))(v476, v481, v498);
    (*(v237 + 16))(v475, v489, v238);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v239 = sub_220DBE6C0();
    v240 = *(v239 - 8);
    v241 = *(v240 + 72);
    v242 = (*(v240 + 80) + 32) & ~*(v240 + 80);
    v243 = swift_allocObject();
    *(v243 + 16) = xmmword_220DC17A0;
    (*(v240 + 104))(v243 + v242, *MEMORY[0x277CC99A0], v239);
    sub_220CE05C8(v243);
    v244 = v471;
    sub_220DBE620();

    v245 = sub_220DBE170();
    LOBYTE(v239) = v246;
    (*(v492 + 8))(v244, v491);
    if ((v239 & 1) != 0 || (v245 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v478, v493);
      v284 = *(v495 + 8);
      v285 = v498;
      v284(v475, v498);
      v284(v476, v285);
      (*(v482 + 8))(v480, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v248 = v499 + *(v165 + 48);
    v249 = v482;
    v250 = v480;
    (*(v482 + 16))(v499, v480, v199);
    v251 = v475;
    v252 = v476;
    sub_220DBE410();
    v254 = v253;
    (*(v494 + 8))(v478, v493);
LABEL_86:
    v255 = *(v495 + 8);
    v256 = v251;
    v257 = v498;
    v255(v256, v498);
    v255(v252, v257);
    (*(v249 + 8))(v250, v199);
    *v248 = v254;
    *(v248 + 8) = 0;
LABEL_113:
    v168 = v247;
    goto LABEL_4;
  }

  if (v164 == *MEMORY[0x277CE36A8] || v164 == *MEMORY[0x277CE36B8] || v164 == *MEMORY[0x277CE3678] || v164 == *MEMORY[0x277CE3458])
  {
LABEL_80:
    (*(v482 + 104))(v479, *MEMORY[0x277CE3398], v130);
    v235 = v477;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v235, 1, v498) == 1)
    {
      (*(v482 + 8))(v479, v130);
      v236 = &v500;
LABEL_82:
      v175 = *(v236 - 32);
      goto LABEL_11;
    }

    v264 = v495;
    v265 = v498;
    (*(v495 + 32))(v473, v477, v498);
    (*(v264 + 16))(v472, v489, v265);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v266 = sub_220DBE6C0();
    v267 = *(v266 - 8);
    v268 = *(v267 + 72);
    v269 = (*(v267 + 80) + 32) & ~*(v267 + 80);
    v270 = swift_allocObject();
    *(v270 + 16) = xmmword_220DC17A0;
    (*(v267 + 104))(v270 + v269, *MEMORY[0x277CC99A0], v266);
    sub_220CE05C8(v270);
    v271 = v470;
    sub_220DBE620();

    v272 = sub_220DBE170();
    LOBYTE(v266) = v273;
    (*(v492 + 8))(v271, v491);
    if ((v266 & 1) != 0 || (v272 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v474, v493);
      v286 = *(v495 + 8);
      v287 = v498;
      v286(v472, v498);
      v286(v473, v287);
      (*(v482 + 8))(v479, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v274 = v499 + *(v165 + 48);
    v275 = v482;
    v276 = v479;
    (*(v482 + 16))(v499, v479, v199);
    v277 = v472;
    v278 = v473;
    sub_220DBE410();
    v280 = v279;
    (*(v494 + 8))(v474, v493);
    goto LABEL_112;
  }

  if (v164 == *MEMORY[0x277CE3548])
  {
LABEL_108:
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v166 = v499;
    v167 = v499 + *(v165 + 48);
    v203 = MEMORY[0x277CE33A0];
    goto LABEL_46;
  }

  if (v164 == *MEMORY[0x277CE35F8])
  {
    goto LABEL_119;
  }

  if (v164 == *MEMORY[0x277CE35E0])
  {
    goto LABEL_126;
  }

  if (v164 == *MEMORY[0x277CE3690])
  {
LABEL_119:
    (*(v482 + 104))(v422, *MEMORY[0x277CE33A0], v130);
    v288 = v430;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v288, 1, v498) == 1)
    {
      (*(v482 + 8))(v422, v130);
      v236 = &v462;
      goto LABEL_82;
    }

    v289 = v495;
    v290 = v498;
    (*(v495 + 32))(v427, v430, v498);
    (*(v289 + 16))(v426, v489, v290);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v291 = sub_220DBE6C0();
    v292 = *(v291 - 8);
    v293 = *(v292 + 72);
    v294 = (*(v292 + 80) + 32) & ~*(v292 + 80);
    v295 = swift_allocObject();
    *(v295 + 16) = xmmword_220DC17A0;
    (*(v292 + 104))(v295 + v294, *MEMORY[0x277CC99A0], v291);
    sub_220CE05C8(v295);
    v296 = v454;
    sub_220DBE620();

    v297 = sub_220DBE170();
    LOBYTE(v291) = v298;
    (*(v492 + 8))(v296, v491);
    if ((v291 & 1) != 0 || (v297 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v448, v493);
      v300 = *(v495 + 8);
      v301 = v498;
      v300(v426, v498);
      v300(v427, v301);
      (*(v482 + 8))(v422, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v248 = v499 + *(v165 + 48);
    v249 = v482;
    v250 = v422;
    (*(v482 + 16))(v499, v422, v199);
    v251 = v426;
    v252 = v427;
    sub_220DBE410();
    v254 = v299;
    (*(v494 + 8))(v448, v493);
    goto LABEL_86;
  }

  if (v164 == *MEMORY[0x277CE3698])
  {
    goto LABEL_126;
  }

  if (v164 == *MEMORY[0x277CE3710])
  {
    goto LABEL_108;
  }

  if (v164 == *MEMORY[0x277CE34B0])
  {
    goto LABEL_119;
  }

  if (v164 == *MEMORY[0x277CE34A0])
  {
    goto LABEL_126;
  }

  if (v164 == *MEMORY[0x277CE3558])
  {
    goto LABEL_119;
  }

  if (v164 == *MEMORY[0x277CE3560])
  {
    goto LABEL_126;
  }

  if (v164 == *MEMORY[0x277CE36F0])
  {
    goto LABEL_108;
  }

  if (v164 == *MEMORY[0x277CE3758])
  {
    goto LABEL_119;
  }

  if (v164 == *MEMORY[0x277CE3728])
  {
    goto LABEL_126;
  }

  if (v164 == *MEMORY[0x277CE34F0])
  {
    goto LABEL_119;
  }

  if (v164 == *MEMORY[0x277CE34F8])
  {
    goto LABEL_126;
  }

  if (v164 == *MEMORY[0x277CE3740])
  {
    goto LABEL_108;
  }

  if (v164 == *MEMORY[0x277CE3508])
  {
    goto LABEL_119;
  }

  if (v164 == *MEMORY[0x277CE34D0] || v164 == *MEMORY[0x277CE35A0])
  {
LABEL_126:
    (*(v482 + 104))(v423, *MEMORY[0x277CE33A0], v130);
    v302 = v431;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v302, 1, v498) == 1)
    {
      (*(v482 + 8))(v423, v130);
      v236 = &v463;
      goto LABEL_82;
    }

    v303 = v495;
    v304 = v498;
    (*(v495 + 32))(v429, v431, v498);
    (*(v303 + 16))(v428, v489, v304);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v305 = sub_220DBE6C0();
    v306 = *(v305 - 8);
    v307 = *(v306 + 72);
    v308 = (*(v306 + 80) + 32) & ~*(v306 + 80);
    v309 = swift_allocObject();
    *(v309 + 16) = xmmword_220DC17A0;
    (*(v306 + 104))(v309 + v308, *MEMORY[0x277CC99A0], v305);
    sub_220CE05C8(v309);
    v310 = v455;
    sub_220DBE620();

    v311 = sub_220DBE170();
    LOBYTE(v305) = v312;
    (*(v492 + 8))(v310, v491);
    if ((v305 & 1) != 0 || (v311 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v449, v493);
      v314 = *(v495 + 8);
      v315 = v498;
      v314(v428, v498);
      v314(v429, v315);
      (*(v482 + 8))(v423, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v274 = v499 + *(v165 + 48);
    v275 = v482;
    v276 = v423;
    (*(v482 + 16))(v499, v423, v199);
    v277 = v428;
    v278 = v429;
    sub_220DBE410();
    v280 = v313;
    (*(v494 + 8))(v449, v493);
    goto LABEL_112;
  }

  if (v164 == *MEMORY[0x277CE3598])
  {
    goto LABEL_119;
  }

  if (v164 == *MEMORY[0x277CE35B0] || v164 == *MEMORY[0x277CE35B8] || v164 == *MEMORY[0x277CE3530] || v164 == *MEMORY[0x277CE3460])
  {
    goto LABEL_108;
  }

  if (v164 == *MEMORY[0x277CE3650] || v164 == *MEMORY[0x277CE3658] || v164 == *MEMORY[0x277CE35F0] || v164 == *MEMORY[0x277CE3470])
  {
    goto LABEL_190;
  }

  if (v164 == *MEMORY[0x277CE3638] || v164 == *MEMORY[0x277CE3648] || v164 == *MEMORY[0x277CE35D0] || v164 == *MEMORY[0x277CE3468])
  {
    goto LABEL_207;
  }

  v326 = v164 == *MEMORY[0x277CE36C0] || v164 == *MEMORY[0x277CE36D0];
  v327 = v326 || v164 == *MEMORY[0x277CE3680];
  if (v327 || v164 == *MEMORY[0x277CE3478])
  {
LABEL_190:
    (*(v482 + 104))(v424, *MEMORY[0x277CE33A0], v130);
    v329 = v434;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v329, 1, v498) == 1)
    {
      (*(v482 + 8))(v424, v130);
      v236 = &v466;
      goto LABEL_82;
    }

    v330 = v495;
    v331 = v498;
    (*(v495 + 32))(v436, v434, v498);
    (*(v330 + 16))(v435, v489, v331);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v332 = sub_220DBE6C0();
    v333 = *(v332 - 8);
    v334 = *(v333 + 72);
    v335 = (*(v333 + 80) + 32) & ~*(v333 + 80);
    v336 = swift_allocObject();
    *(v336 + 16) = xmmword_220DC17A0;
    (*(v333 + 104))(v336 + v335, *MEMORY[0x277CC99A0], v332);
    sub_220CE05C8(v336);
    v337 = v460;
    sub_220DBE620();

    v338 = sub_220DBE170();
    LOBYTE(v332) = v339;
    (*(v492 + 8))(v337, v491);
    if ((v332 & 1) != 0 || (v338 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v458, v493);
      v341 = *(v495 + 8);
      v342 = v498;
      v341(v435, v498);
      v341(v436, v342);
      (*(v482 + 8))(v424, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v248 = v499 + *(v165 + 48);
    v249 = v482;
    v250 = v424;
    (*(v482 + 16))(v499, v424, v199);
    v251 = v435;
    v252 = v436;
    sub_220DBE410();
    v254 = v340;
    (*(v494 + 8))(v458, v493);
    goto LABEL_86;
  }

  if (v164 == *MEMORY[0x277CE36C8] || v164 == *MEMORY[0x277CE36D8] || v164 == *MEMORY[0x277CE3688] || v164 == *MEMORY[0x277CE3480])
  {
LABEL_207:
    (*(v482 + 104))(v425, *MEMORY[0x277CE33A0], v130);
    v346 = v437;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v346, 1, v498) == 1)
    {
      (*(v482 + 8))(v425, v130);
      v236 = &v469;
      goto LABEL_82;
    }

    v347 = v495;
    v348 = v498;
    (*(v495 + 32))(v440, v437, v498);
    (*(v347 + 16))(v438, v489, v348);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v349 = sub_220DBE6C0();
    v350 = *(v349 - 8);
    v351 = *(v350 + 72);
    v352 = (*(v350 + 80) + 32) & ~*(v350 + 80);
    v353 = swift_allocObject();
    *(v353 + 16) = xmmword_220DC17A0;
    (*(v350 + 104))(v353 + v352, *MEMORY[0x277CC99A0], v349);
    sub_220CE05C8(v353);
    v354 = v461;
    sub_220DBE620();

    v355 = sub_220DBE170();
    LOBYTE(v349) = v356;
    (*(v492 + 8))(v354, v491);
    if ((v349 & 1) != 0 || (v355 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v459, v493);
      v358 = *(v495 + 8);
      v359 = v498;
      v358(v438, v498);
      v358(v440, v359);
      (*(v482 + 8))(v425, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v274 = v499 + *(v165 + 48);
    v275 = v482;
    v276 = v425;
    (*(v482 + 16))(v499, v425, v199);
    v277 = v438;
    v278 = v440;
    sub_220DBE410();
    v280 = v357;
    (*(v494 + 8))(v459, v493);
    goto LABEL_112;
  }

  if (v164 == *MEMORY[0x277CE34D8])
  {
LABEL_214:
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v166 = v499;
    v167 = v499 + *(v165 + 48);
    v203 = MEMORY[0x277CE33B0];
    goto LABEL_46;
  }

  if (v164 == *MEMORY[0x277CE35A8])
  {
    goto LABEL_223;
  }

  if (v164 == *MEMORY[0x277CE3570])
  {
    goto LABEL_230;
  }

  if (v164 == *MEMORY[0x277CE3620])
  {
LABEL_223:
    (*(v482 + 104))(v432, *MEMORY[0x277CE33B0], v130);
    v360 = v442;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v360, 1, v498) == 1)
    {
      (*(v482 + 8))(v432, v130);
      v236 = &v474;
      goto LABEL_82;
    }

    v361 = v495;
    v362 = v498;
    (*(v495 + 32))(v445, v442, v498);
    (*(v361 + 16))(v444, v489, v362);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v363 = sub_220DBE6C0();
    v364 = *(v363 - 8);
    v365 = *(v364 + 72);
    v366 = (*(v364 + 80) + 32) & ~*(v364 + 80);
    v367 = swift_allocObject();
    *(v367 + 16) = xmmword_220DC17A0;
    (*(v364 + 104))(v367 + v366, *MEMORY[0x277CC99A0], v363);
    sub_220CE05C8(v367);
    v368 = v464;
    sub_220DBE620();

    v369 = sub_220DBE170();
    LOBYTE(v363) = v370;
    (*(v492 + 8))(v368, v491);
    if ((v363 & 1) != 0 || (v369 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v462, v493);
      v372 = *(v495 + 8);
      v373 = v498;
      v372(v444, v498);
      v372(v445, v373);
      (*(v482 + 8))(v432, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v248 = v499 + *(v165 + 48);
    v249 = v482;
    v250 = v432;
    (*(v482 + 16))(v499, v432, v199);
    v251 = v444;
    v252 = v445;
    sub_220DBE410();
    v254 = v371;
    (*(v494 + 8))(v462, v493);
    goto LABEL_86;
  }

  if (v164 == *MEMORY[0x277CE3628])
  {
    goto LABEL_230;
  }

  if (v164 == *MEMORY[0x277CE3700])
  {
    goto LABEL_214;
  }

  if (v164 == *MEMORY[0x277CE3488])
  {
    goto LABEL_223;
  }

  if (v164 == *MEMORY[0x277CE3750])
  {
    goto LABEL_230;
  }

  if (v164 == *MEMORY[0x277CE3510])
  {
    goto LABEL_223;
  }

  if (v164 == *MEMORY[0x277CE3518])
  {
LABEL_230:
    (*(v482 + 104))(v433, *MEMORY[0x277CE33B0], v130);
    v374 = v443;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v374, 1, v498) == 1)
    {
      (*(v482 + 8))(v433, v130);
      v236 = &v475;
      goto LABEL_82;
    }

    v375 = v495;
    v376 = v498;
    (*(v495 + 32))(v447, v443, v498);
    (*(v375 + 16))(v446, v489, v376);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v377 = sub_220DBE6C0();
    v378 = *(v377 - 8);
    v379 = *(v378 + 72);
    v380 = (*(v378 + 80) + 32) & ~*(v378 + 80);
    v381 = swift_allocObject();
    *(v381 + 16) = xmmword_220DC17A0;
    (*(v378 + 104))(v381 + v380, *MEMORY[0x277CC99A0], v377);
    sub_220CE05C8(v381);
    v382 = v465;
    sub_220DBE620();

    v383 = sub_220DBE170();
    LOBYTE(v377) = v384;
    (*(v492 + 8))(v382, v491);
    if ((v377 & 1) != 0 || (v383 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v463, v493);
      v386 = *(v495 + 8);
      v387 = v498;
      v386(v446, v498);
      v386(v447, v387);
      (*(v482 + 8))(v433, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v274 = v499 + *(v165 + 48);
    v275 = v482;
    v276 = v433;
    (*(v482 + 16))(v499, v433, v199);
    v277 = v446;
    v278 = v447;
    sub_220DBE410();
    v280 = v385;
    (*(v494 + 8))(v463, v493);
    goto LABEL_112;
  }

  if (v164 == *MEMORY[0x277CE34A8] || v164 == *MEMORY[0x277CE3568])
  {
    goto LABEL_248;
  }

  if (v164 == *MEMORY[0x277CE3550])
  {
    goto LABEL_251;
  }

  if (v164 == *MEMORY[0x277CE3600])
  {
LABEL_248:
    (*(v482 + 104))(v439, *MEMORY[0x277CE3388], v130);
    v389 = v450;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v389, 1, v498) == 1)
    {
      (*(v482 + 8))(v439, v130);
      v236 = &v482;
      goto LABEL_82;
    }

    v391 = v495;
    v392 = v498;
    (*(v495 + 32))(v453, v450, v498);
    (*(v391 + 16))(v452, v489, v392);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v393 = sub_220DBE6C0();
    v394 = *(v393 - 8);
    v395 = *(v394 + 72);
    v396 = (*(v394 + 80) + 32) & ~*(v394 + 80);
    v397 = swift_allocObject();
    *(v397 + 16) = xmmword_220DC17A0;
    (*(v394 + 104))(v397 + v396, *MEMORY[0x277CC99A0], v393);
    sub_220CE05C8(v397);
    v398 = v468;
    sub_220DBE620();

    v399 = sub_220DBE170();
    LOBYTE(v393) = v400;
    (*(v492 + 8))(v398, v491);
    if ((v393 & 1) != 0 || (v399 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v466, v493);
      v415 = *(v495 + 8);
      v416 = v498;
      v415(v452, v498);
      v415(v453, v416);
      (*(v482 + 8))(v439, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v248 = v499 + *(v165 + 48);
    v249 = v482;
    v250 = v439;
    (*(v482 + 16))(v499, v439, v199);
    v251 = v452;
    v252 = v453;
    sub_220DBE410();
    v254 = v401;
    (*(v494 + 8))(v466, v493);
    goto LABEL_86;
  }

  if (v164 == *MEMORY[0x277CE3608])
  {
    goto LABEL_251;
  }

  if (v164 == *MEMORY[0x277CE36E0])
  {
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v166 = v499;
    v167 = v499 + *(v165 + 48);
    v203 = MEMORY[0x277CE3388];
    goto LABEL_46;
  }

  if (v164 == *MEMORY[0x277CE3730])
  {
    goto LABEL_248;
  }

  if (v164 == *MEMORY[0x277CE3718])
  {
    goto LABEL_251;
  }

  if (v164 == *MEMORY[0x277CE34B8])
  {
    goto LABEL_248;
  }

  if (v164 == *MEMORY[0x277CE34C0])
  {
LABEL_251:
    (*(v482 + 104))(v441, *MEMORY[0x277CE3388], v130);
    v390 = v451;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v390, 1, v498) == 1)
    {
      (*(v482 + 8))(v441, v130);
      v236 = &v483;
      goto LABEL_82;
    }

    v404 = v495;
    v405 = v498;
    (*(v495 + 32))(v457, v451, v498);
    (*(v404 + 16))(v456, v489, v405);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v406 = sub_220DBE6C0();
    v407 = *(v406 - 8);
    v408 = *(v407 + 72);
    v409 = (*(v407 + 80) + 32) & ~*(v407 + 80);
    v410 = swift_allocObject();
    *(v410 + 16) = xmmword_220DC17A0;
    (*(v407 + 104))(v410 + v409, *MEMORY[0x277CC99A0], v406);
    sub_220CE05C8(v410);
    v411 = v469;
    sub_220DBE620();

    v412 = sub_220DBE170();
    LOBYTE(v406) = v413;
    (*(v492 + 8))(v411, v491);
    if ((v406 & 1) != 0 || (v412 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v494 + 8))(v467, v493);
      v417 = *(v495 + 8);
      v418 = v498;
      v417(v456, v498);
      v417(v457, v418);
      (*(v482 + 8))(v441, v199);
      goto LABEL_48;
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v247 = v499;
    v274 = v499 + *(v165 + 48);
    v275 = v482;
    v276 = v441;
    (*(v482 + 16))(v499, v441, v199);
    v277 = v456;
    v278 = v457;
    sub_220DBE410();
    v280 = v414;
    (*(v494 + 8))(v467, v493);
LABEL_112:
    v281 = *(v495 + 8);
    v282 = v277;
    v283 = v498;
    v281(v282, v498);
    v281(v278, v283);
    (*(v275 + 8))(v276, v199);
    *v274 = v280;
    *(v274 + 8) = 1;
    goto LABEL_113;
  }

  v402 = *MEMORY[0x277CE36F8];
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
  result = __swift_storeEnumTagSinglePayload(v499, 1, 1, v403);
  if (v171 != v402)
  {
    return (*(v420 + 8))(v162, v421);
  }

  return result;
}

uint64_t sub_220D65678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D656E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_20();
  v9(v8);
  return a2;
}

uint64_t sub_220D65744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_11_0();
  v8 = sub_220DBE560();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = *(a6 + 8);
  v18 = *(*(*(a5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = a6;
  v17(AssociatedTypeWitness, a6);
  v20 = sub_220DBE440();
  v21 = *(v11 + 8);
  v21(v16, v8);
  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v17(AssociatedTypeWitness, v24);
    v22 = sub_220DBE430();
    v21(v16, v8);
  }

  return v22 & 1;
}

uint64_t static NextPrecipitation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationEvent(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v45 = v8 - v9;
  OUTLINED_FUNCTION_23();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v44 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  v17 = OUTLINED_FUNCTION_6(Precipitation);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v44 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CA0, &qword_220DC52A0);
  OUTLINED_FUNCTION_18(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_34();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v44 - v34;
  v36 = *(v33 + 56);
  sub_220D5F0D8(a1, &v44 - v34);
  sub_220D5F0D8(a2, &v35[v36]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_220D5F0D8(v35, v26);
      if (OUTLINED_FUNCTION_26_6() == 1)
      {
        sub_220D619B4(&v35[v36], v13);
        v39 = static PrecipitationEvent.== infix(_:_:)(v26, v13);
        sub_220D65BF8(v13, type metadata accessor for PrecipitationEvent);
        v40 = v26;
        v41 = type metadata accessor for PrecipitationEvent;
        goto LABEL_15;
      }

      v22 = v26;
      goto LABEL_11;
    case 2u:
      sub_220D5F0D8(v35, v22);
      if (OUTLINED_FUNCTION_26_6() != 2)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_8_14();
      v37 = &v35[v36];
      v38 = v45;
      sub_220D619B4(v37, v45);
      v39 = static PrecipitationEvent.== infix(_:_:)(v22, v38);
      sub_220D65BF8(v38, v13);
      v40 = v22;
      goto LABEL_14;
    case 3u:
      if (OUTLINED_FUNCTION_26_6() != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_11_12();
      v39 = 1;
      return v39 & 1;
    default:
      sub_220D5F0D8(v35, v28);
      if (OUTLINED_FUNCTION_26_6())
      {
        v22 = v28;
LABEL_11:
        OUTLINED_FUNCTION_9_17();
        sub_220D65BF8(v22, v42);
LABEL_12:
        sub_220CDA548(v35, &qword_27CF95CA0, &qword_220DC52A0);
        v39 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_8_14();
        sub_220D619B4(&v35[v36], v15);
        v39 = static PrecipitationEvent.== infix(_:_:)(v28, v15);
        sub_220D65BF8(v15, v13);
        v40 = v28;
LABEL_14:
        v41 = v13;
LABEL_15:
        sub_220D65BF8(v40, v41);
        OUTLINED_FUNCTION_11_12();
      }

      return v39 & 1;
  }
}

uint64_t sub_220D65BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_220D65C80()
{
  sub_220DBEC20();
  if (v0 <= 0x3F)
  {
    sub_220DBE560();
    if (v1 <= 0x3F)
    {
      sub_220D65D24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220D65D24()
{
  if (!qword_280FA77C8)
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA77C8);
    }
  }
}

uint64_t sub_220D65D84()
{
  result = type metadata accessor for PrecipitationEvent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WeatherDataModel.nextHourPrecipitationShift(startDate:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a2;
  v130 = a1;
  v122 = a3;
  v136 = sub_220DBED10();
  v3 = OUTLINED_FUNCTION_0(v136);
  v124 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9();
  v137 = v7;
  MEMORY[0x28223BE20](v8);
  v135 = &v112 - v9;
  OUTLINED_FUNCTION_6_1();
  v10 = sub_220DBED40();
  v11 = OUTLINED_FUNCTION_0(v10);
  v127 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v134 = v16 - v15;
  OUTLINED_FUNCTION_6_1();
  v17 = sub_220DBED00();
  v18 = OUTLINED_FUNCTION_0(v17);
  v138 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v117 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v115 = &v112 - v25;
  MEMORY[0x28223BE20](v24);
  v116 = &v112 - v26;
  OUTLINED_FUNCTION_6_1();
  v131 = sub_220DBEE20();
  v27 = OUTLINED_FUNCTION_0(v131);
  v129 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v128 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CA8, &unk_220DC5430);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v112 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E8, &qword_220DC3C78);
  v38 = OUTLINED_FUNCTION_0(v37);
  v140 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v139 = &v112 - v42;
  OUTLINED_FUNCTION_6_1();
  v121 = sub_220DBE560();
  v43 = OUTLINED_FUNCTION_0(v121);
  v120 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v119 = sub_220DBE6E0();
  v50 = OUTLINED_FUNCTION_0(v119);
  v118 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1();
  v56 = v55 - v54;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C78, &qword_220DC5440);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v60 = &v112 - v59;
  v61 = sub_220DBE740();
  v62 = OUTLINED_FUNCTION_0(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1();
  v69 = v68 - v67;
  sub_220D668DC(v133, v60);
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
  {
    sub_220CE1ABC(v60, &qword_27CF95C78, &qword_220DC5440);
    return __swift_storeEnumTagSinglePayload(v122, 1, 1, v10);
  }

  v64[4](v69, v60, v61);
  sub_220DBE600();
  sub_220DBE310();
  v71 = v132;
  sub_220DBEBD0();
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    (*(v118 + 8))(v56, v119);
    (v64[1])(v69, v61);
    sub_220CE1ABC(v36, &qword_27CF95CA8, &unk_220DC5430);
    goto LABEL_12;
  }

  v113 = v69;
  v114 = v56;
  v132 = v64;
  v133 = v61;
  v72 = v140;
  v71 = v139;
  (*(v140 + 32))();
  v74 = v128;
  v73 = v129;
  v75 = v131;
  (*(v129 + 104))(v128, *MEMORY[0x277CE3790], v131);
  v76 = sub_220DBEFB0();
  (*(v73 + 8))(v74, v75);
  if ((v76 & 1) == 0)
  {
    (*(v72 + 8))(v71, v37);
    v95 = OUTLINED_FUNCTION_1_30();
    v96(v95);
    v97 = OUTLINED_FUNCTION_6_16();
    v98(v97);
LABEL_12:
    v99 = OUTLINED_FUNCTION_3_24();
LABEL_13:
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v10);
    return (*(v71 + 1))(v49, v37);
  }

  v131 = v37;
  v77 = sub_220DBEFA0();
  MEMORY[0x28223BE20](v77);
  *(&v112 - 2) = v130;
  v79 = sub_220CFAD2C(sub_220D66B58, (&v112 - 4), v78);
  MEMORY[0x28223BE20](v79);
  v112 = v49;
  *(&v112 - 2) = v49;
  v141[0] = sub_220CFAD2C(sub_220D66CA8, (&v112 - 4), v80);

  sub_220D66E3C(v141);

  v81 = 0;
  v82 = v141[0];
  v130 = *(v141[0] + 16);
  ++v127;
  v128 = v138 + 16;
  v126 = *MEMORY[0x277CE36F8];
  v83 = v124++;
  v125 = (v83 + 13);
  v129 = v138 + 8;
  v84 = v117;
  v85 = v140;
  v87 = v132;
  v86 = v133;
  v123 = v10;
  while (1)
  {
    v37 = v131;
    v88 = v139;
    if (v130 == v81)
    {

      v100 = *(v85 + 8);
      v71 = (v85 + 8);
      v100(v88, v37);
      v101 = OUTLINED_FUNCTION_1_30();
      v102(v101);
      (*(v87 + 1))(v113, v86);
      v99 = OUTLINED_FUNCTION_3_24();
      v49 = v112;
      goto LABEL_13;
    }

    if (v81 >= *(v82 + 16))
    {
      break;
    }

    v89 = v82;
    (*(v138 + 16))(v84, v82 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v81, v17);
    v90 = v134;
    sub_220DBECF0();
    v91 = v135;
    sub_220DBED30();
    (*v127)(v90, v10);
    v92 = v136;
    v93 = v137;
    (*v125)(v137, v126, v136);
    sub_220D68748(&qword_27CF95CB0, MEMORY[0x277CE3760]);
    LOBYTE(v90) = sub_220DC05B0();
    v94 = *v124;
    (*v124)(v93, v92);
    v94(v91, v92);
    if ((v90 & 1) == 0)
    {

      v104 = v138 + 32;
      v103 = *(v138 + 32);
      v105 = v115;
      v103(v115, v84, v17);
      v106 = v116;
      v103(v116, v105, v17);
      v107 = v122;
      sub_220DBECF0();
      (*(v104 - 24))(v106, v17);
      (*(v140 + 8))(v139, v131);
      v108 = OUTLINED_FUNCTION_1_30();
      v109(v108);
      v110 = OUTLINED_FUNCTION_6_16();
      v111(v110);
      __swift_storeEnumTagSinglePayload(v107, 0, 1, v123);
      return (*(v120 + 8))(v112, v121);
    }

    ++v81;
    (*v129)(v84, v17);
    v10 = v123;
    v85 = v140;
    v87 = v132;
    v86 = v133;
    v82 = v89;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_220D668DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C78, &qword_220DC5440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_220D6694C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - v5;
  v7 = sub_220DBE560();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBECD0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    (*(v8 + 16))(v11, a2, v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_220CE1ABC(v6, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_220D68748(&qword_280FA7798, MEMORY[0x277CC9578]);
  v12 = sub_220DC0580();
  (*(v8 + 8))(v11, v7);
  return (v12 & 1) == 0;
}

BOOL sub_220D66B78()
{
  v0 = sub_220DBE560();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBECE0();
  sub_220D68748(&qword_280FA7798, MEMORY[0x277CC9578]);
  v5 = sub_220DC0580();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

uint64_t sub_220D66D40(void (*a1)(void), void (*a2)(uint64_t, double))
{
  v4 = sub_220DBEBA0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  a1();
  v13 = sub_220DBEB80();
  result = (*(v7 + 8))(v12, v4);
  if (v13)
  {
    a2(result, 0.0);
    return sub_220DC07C0();
  }

  return result;
}

uint64_t sub_220D66E3C(uint64_t *a1)
{
  v2 = *(sub_220DBED00() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A4C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D67028(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D66F5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_220D67028(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_220DC0C60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220DBED00();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220DBED00() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220D674F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_220D67158(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D67158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_220DBE560();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_220DBED00();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_220DBECE0();
        v34 = v61;
        sub_220DBECE0();
        v64 = sub_220DBE440();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D674F0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v136 = a1;
  v160 = sub_220DBE560();
  v8 = *(v160 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v160);
  v159 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v133 - v12;
  v13 = sub_220DBED00();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v139 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v157 = &v133 - v21;
  MEMORY[0x28223BE20](v20);
  v161 = &v133 - v22;
  v145 = a3;
  v23 = a3[1];
  v140 = v14;
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_101:
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = (v25 + 16);
      v127 = *(v25 + 16);
      while (v127 >= 2)
      {
        if (!*v145)
        {
          goto LABEL_139;
        }

        v128 = v25;
        v129 = (v25 + 16 * v127);
        v130 = *v129;
        v131 = &v126[2 * v127];
        v25 = *(v131 + 1);
        sub_220D680DC(*v145 + v140[9] * *v129, *v145 + v140[9] * *v131, *v145 + v140[9] * v25, v162);
        if (v5)
        {
          break;
        }

        if (v25 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        v129[1] = v25;
        v132 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        sub_220D81848(v131 + 16, v132, v131);
        *v126 = v127;
        v25 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v25 = sub_220D81650(v25);
    goto LABEL_103;
  }

  v134 = a4;
  v24 = 0;
  v154 = (v8 + 8);
  v155 = v14 + 2;
  v152 = v14 + 4;
  v153 = (v14 + 1);
  v25 = MEMORY[0x277D84F90];
  v156 = v13;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v135 = v25;
      v28 = v24;
      v137 = v24;
      v146 = v5;
      v147 = v24 + 1;
      v29 = *v145;
      v162 = v29;
      v30 = v14;
      v31 = v14[9];
      v148 = v23;
      v149 = v31;
      v32 = v29 + v31 * v27;
      v33 = v13;
      v34 = v30[2];
      v34(v161, v32, v13);
      v35 = v157;
      v143 = v34;
      v34(v157, v29 + v31 * v28, v33);
      v5 = v158;
      v25 = v161;
      sub_220DBECE0();
      v36 = v159;
      sub_220DBECE0();
      LODWORD(v144) = sub_220DBE440();
      v37 = *v154;
      v38 = v160;
      (*v154)(v36, v160);
      v142 = v37;
      (v37)(v5, v38);
      v39 = v140[1];
      v39(v35, v33);
      v141 = v39;
      v39(v25, v33);
      v40 = v148;
      v41 = v137 + 2;
      v42 = v162 + v149 * (v137 + 2);
      while (1)
      {
        v43 = v41;
        if (++v147 >= v40)
        {
          break;
        }

        v5 = v161;
        v44 = v156;
        v45 = v143;
        v162 = v41;
        (v143)(v161, v42, v156);
        v25 = v157;
        v45(v157, v32, v44);
        v46 = v158;
        sub_220DBECE0();
        v47 = v159;
        sub_220DBECE0();
        LOBYTE(v151) = sub_220DBE440() & 1;
        LODWORD(v151) = v151;
        v48 = v47;
        v49 = v160;
        v50 = v142;
        (v142)(v48, v160);
        v50(v46, v49);
        v51 = v141;
        v141(v25, v44);
        v51(v5, v44);
        v43 = v162;
        v40 = v148;
        v42 += v149;
        v32 += v149;
        v41 = v162 + 1;
        if ((v144 & 1) != v151)
        {
          goto LABEL_9;
        }
      }

      v147 = v40;
LABEL_9:
      if (v144)
      {
        v27 = v147;
        v26 = v137;
        v13 = v156;
        if (v147 < v137)
        {
          goto LABEL_133;
        }

        if (v137 >= v147)
        {
          v5 = v146;
          v14 = v140;
          v25 = v135;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v52 = v43;
        }

        else
        {
          v52 = v40;
        }

        v53 = v149 * (v52 - 1);
        v54 = v149 * v52;
        v55 = v137;
        v56 = v137 * v149;
        v5 = v146;
        v14 = v140;
        do
        {
          if (v55 != --v27)
          {
            v57 = v5;
            v58 = *v145;
            if (!*v145)
            {
              goto LABEL_140;
            }

            v162 = *v152;
            (v162)(v139, v58 + v56, v13);
            v59 = v56 < v53 || v58 + v56 >= v58 + v54;
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v162)(v58 + v53, v139, v13);
            v5 = v57;
            v14 = v140;
          }

          ++v55;
          v53 -= v149;
          v54 -= v149;
          v56 += v149;
        }

        while (v55 < v27);
        v25 = v135;
      }

      else
      {
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v13 = v156;
      }

      v27 = v147;
      v26 = v137;
    }

LABEL_32:
    v60 = v145[1];
    if (v27 < v60)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_132;
      }

      if (v27 - v26 < v134)
      {
        break;
      }
    }

LABEL_48:
    if (v27 < v26)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = *(v25 + 16);
      sub_220D562D4();
      v25 = v124;
    }

    v80 = *(v25 + 16);
    v81 = v80 + 1;
    if (v80 >= *(v25 + 24) >> 1)
    {
      sub_220D562D4();
      v25 = v125;
    }

    *(v25 + 16) = v81;
    v82 = (v25 + 32);
    v83 = (v25 + 32 + 16 * v80);
    *v83 = v26;
    v83[1] = v27;
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_141;
    }

    v147 = v27;
    if (v80)
    {
      v151 = (v25 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v25 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v25 + 32);
          v88 = *(v25 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v145)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_220D680DC(*v145 + v14[9] * *v116, *v145 + v14[9] * *v119, *v145 + v14[9] * v120, v162);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v146 = 0;
        v5 = v14;
        v121 = v25;
        v25 = *(v25 + 16);
        if (v118 > v25)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v25)
        {
          goto LABEL_115;
        }

        v81 = v25 - 1;
        sub_220D81848(v119 + 16, v25 - 1 - v118, v119);
        *(v121 + 16) = v25 - 1;
        v122 = v25 > 2;
        v25 = v121;
        v14 = v5;
        v5 = v146;
        v82 = v151;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v23 = v145[1];
    v24 = v147;
    if (v147 >= v23)
    {
      goto LABEL_101;
    }
  }

  v61 = (v26 + v134);
  if (__OFADD__(v26, v134))
  {
    goto LABEL_134;
  }

  if (v61 >= v60)
  {
    v61 = v145[1];
  }

  if (v61 < v26)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v27 == v61)
  {
    goto LABEL_48;
  }

  v135 = v25;
  v146 = v5;
  v62 = *v145;
  v63 = v14[9];
  v151 = v14[2];
  v64 = v62 + v63 * (v27 - 1);
  v148 = -v63;
  v137 = v26;
  v65 = (v26 - v27);
  v149 = v62;
  v138 = v63;
  v66 = (v62 + v27 * v63);
  v141 = v61;
LABEL_41:
  v147 = v27;
  v142 = v66;
  v143 = v65;
  v144 = v64;
  v67 = v64;
  while (1)
  {
    v68 = v161;
    v69 = v151;
    (v151)(v161, v66, v13);
    v70 = v157;
    (v69)(v157, v67, v13);
    v71 = v158;
    sub_220DBECE0();
    v72 = v159;
    sub_220DBECE0();
    LODWORD(v162) = sub_220DBE440();
    v73 = *v154;
    v74 = v72;
    v75 = v160;
    (*v154)(v74, v160);
    v76 = v71;
    v13 = v156;
    v73(v76, v75);
    v77 = *v153;
    (*v153)(v70, v13);
    v77(v68, v13);
    if ((v162 & 1) == 0)
    {
LABEL_46:
      v27 = v147 + 1;
      v64 = v144 + v138;
      v65 = v143 - 1;
      v66 = &v142[v138];
      if ((v147 + 1) == v141)
      {
        v27 = v141;
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v26 = v137;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v149)
    {
      break;
    }

    v78 = *v152;
    v79 = v150;
    (*v152)(v150, v66, v13);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v13);
    v67 += v148;
    v66 += v148;
    v59 = __CFADD__(v65++, 1);
    if (v59)
    {
      goto LABEL_46;
    }
  }

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
}

uint64_t sub_220D680DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_220DBE560();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v85 = sub_220DBED00();
  v12 = *(*(v85 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_220CFB664(a2, v21 / v19, v86);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_220DBECE0();
      v59 = v80;
      sub_220DBECE0();
      LODWORD(v74) = sub_220DBE440();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_220CFB664(a1, (a2 - a1) / v19, v86);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_220DBECE0();
      v32 = v80;
      sub_220DBECE0();
      v33 = sub_220DBE440();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_220D81750(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_220D68748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Double.pluralRuleInteger.getter(double a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 1.0)
  {
    return 1;
  }

  if (a1 == 2.0)
  {
    return 2;
  }

  v2 = fmax(floor(a1), 3.0);
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_13:
  __break(1u);
  return result;
}

void Double.chartValueAccessibilityDescription(for:units:)(void (*a1)(char *, uint64_t), uint64_t a2, double a3)
{
  v228 = a2;
  v229 = a1;
  v231 = *&a3;
  v4 = sub_220DC0920();
  v5 = OUTLINED_FUNCTION_0(v4);
  v218 = v6;
  v219 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_21();
  v217 = v9;
  OUTLINED_FUNCTION_6_1();
  v10 = sub_220DC0910();
  v11 = OUTLINED_FUNCTION_0(v10);
  v224 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v223 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v215 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v19 = OUTLINED_FUNCTION_0(v18);
  v221 = v20;
  v222 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22();
  v220 = v24;
  OUTLINED_FUNCTION_6_1();
  v211 = sub_220DC02F0();
  v25 = OUTLINED_FUNCTION_0(v211);
  v210 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v29);
  v209 = sub_220DC0960();
  v30 = OUTLINED_FUNCTION_0(v209);
  v207 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v34);
  v216 = sub_220DC0950();
  v35 = OUTLINED_FUNCTION_0(v216);
  v214 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_57();
  v205 = v40;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0(v213);
  v212 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22();
  v226 = v45;
  OUTLINED_FUNCTION_6_1();
  v197 = sub_220DBEE60();
  v46 = OUTLINED_FUNCTION_0(v197);
  v196 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v50);
  v204 = sub_220DBEE90();
  v51 = OUTLINED_FUNCTION_0(v204);
  v230 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  v56 = MEMORY[0x28223BE20](v55);
  v58 = &v188 - v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v60);
  v203 = sub_220DC09B0();
  v61 = OUTLINED_FUNCTION_0(v203);
  v202 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_57();
  v198 = v66;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0(v201);
  v200 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_14(v71);
  v72 = sub_220DC0300();
  v73 = OUTLINED_FUNCTION_0(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  v79 = &v188 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60) - 8) + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_22();
  v227 = v82;
  OUTLINED_FUNCTION_6_1();
  v83 = sub_220DC0A40();
  v84 = OUTLINED_FUNCTION_0(v83);
  v225 = v85;
  v87 = *(v86 + 64);
  v88 = MEMORY[0x28223BE20](v84);
  v90 = &v188 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v92 = &v188 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v96);
  v99 = &v188 - v98;
  if ((v231 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v189 = v10;
    v190 = v79;
    v191 = v75;
    v231 = v72;
    v100 = *v228;
    v101 = *(v228 + 8);
    v102 = *(v228 + 16);
    v103 = *(v228 + 40);
    switch(*v229)
    {
      case 1:
        goto LABEL_23;
      case 2:
        v111 = sub_220DBEE80();
        v112 = v111;
        v113 = *(v111 + 16);
        if (!v113)
        {

          v117 = v204;
          goto LABEL_39;
        }

        v114 = 0;
        v115 = v111 + ((*(v230 + 80) + 32) & ~*(v230 + 80));
        v116 = (v230 + 8);
        v231 = (v230 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v117 = v204;
        while (v114 < *(v112 + 16))
        {
          v118 = *(v230 + 16);
          v118(v58, v115 + *(v230 + 72) * v114, v117);
          sub_220DBEE70();
          if (v120 <= a3 && v119 > a3)
          {

            v183 = v230;
            v184 = *(v230 + 32);
            v185 = v192;
            v184(v192, v58, v117);
            v186 = v193;
            v184(v193, v185, v117);
            v118(v194, v186, v117);
LABEL_40:
            v187 = v195;
            sub_220DBEE40();
            sub_220DBEE30();
            OUTLINED_FUNCTION_10_16();
            (*(v196 + 8))(v187, v197);
            (*(v183 + 8))(v186, v117);
            return;
          }

          ++v114;
          (*v116)(v58, v117);
          if (v113 == v114)
          {

LABEL_39:
            v183 = v230;
            v186 = v193;
            (*(v230 + 104))(v193, *MEMORY[0x277CE3798], v117);
            (*(v183 + 16))(v194, v186, v117);
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_42;
      case 3:
      case 4:
        v230 = v97;
        sub_220CD8184(0, &qword_27CF95688, 0x277CCAE48);
        v104 = v100;
        sub_220DBE040();
        v105 = sub_220DBE5E0();
        v106 = v227;
        OUTLINED_FUNCTION_18_11(v227, v107, v108, v105);
        sub_220DC0870();
        sub_220DC02C0();

        sub_220D69B34(v106);
        sub_220DC0A10();
        v229 = *(v225 + 8);
        v229(v92, v83);
        v109 = v191;
        v110 = v190;
        (*(v191 + 104))(v190, *MEMORY[0x277D7B408], v231);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D69B9C(&qword_280FA6610, MEMORY[0x277D7B508]);
        sub_220DBE0B0();
        OUTLINED_FUNCTION_10_16();

        (*(v109 + 8))(v110, v231);
        v229(v90, v83);
        (*(v230 + 8))(v99, v93);
        return;
      case 5:
        if (a3 <= -9.22337204e18)
        {
          goto LABEL_43;
        }

        if (a3 >= 9.22337204e18)
        {
          goto LABEL_46;
        }

        v232 = a3;
        sub_220DC0C70();
        OUTLINED_FUNCTION_10_16();
        return;
      case 6:
        sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
        v162 = v103;
        sub_220DBE040();
        v163 = v207;
        v164 = v206;
        v165 = v209;
        (*(v207 + 104))(v206, *MEMORY[0x277D7B4B0], v209);
        v166 = sub_220DBE5E0();
        v167 = v227;
        OUTLINED_FUNCTION_18_11(v227, v168, v169, v166);
        sub_220DC0810();
        v170 = v210;
        v171 = v208;
        v172 = v211;
        (*(v210 + 104))(v208, *MEMORY[0x277D7B3F8], v211);
        v173 = v205;
        sub_220DC0280();

        (*(v170 + 8))(v171, v172);
        sub_220D69B34(v167);
        (*(v163 + 8))(v164, v165);
        sub_220DC0940();
        v230 = *(v214 + 8);
        (v230)(v173, v216);
        v174 = *MEMORY[0x277D7B408];
        v175 = OUTLINED_FUNCTION_2_25();
        v176(v175);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D69B9C(&qword_280FA6620, MEMORY[0x277D7B4A8]);
        OUTLINED_FUNCTION_12_18();
        v138 = v213;
        v129 = v226;
        sub_220DBE0B0();
        OUTLINED_FUNCTION_10_16();

        v177 = OUTLINED_FUNCTION_11_13();
        v178(v177);
        v179 = OUTLINED_FUNCTION_13_12();
        v180(v179);
        v143 = &v233;
        goto LABEL_29;
      case 7:
        sub_220CD8184(0, &qword_27CF95668, 0x277CCAE40);
        v144 = v102;
        v145 = v220;
        sub_220DBE040();
        v147 = v217;
        v146 = v218;
        v148 = v219;
        (*(v218 + 104))(v217, *MEMORY[0x277D7B490], v219);
        v149 = sub_220DBE5E0();
        v150 = v227;
        OUTLINED_FUNCTION_18_11(v227, v151, v152, v149);
        sub_220DC07E0();
        v153 = v215;
        sub_220DC0270();

        sub_220D69B34(v150);
        (*(v146 + 8))(v147, v148);
        sub_220DC0900();
        v230 = *(v224 + 8);
        (v230)(v153, v189);
        v154 = *MEMORY[0x277D7B408];
        v155 = OUTLINED_FUNCTION_2_25();
        v156(v155);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D69B9C(&qword_27CF95748, MEMORY[0x277D7B488]);
        OUTLINED_FUNCTION_12_18();
        v138 = v222;
        v129 = v145;
        sub_220DBE0B0();
        OUTLINED_FUNCTION_10_16();

        v157 = OUTLINED_FUNCTION_11_13();
        v158(v157);
        v159 = OUTLINED_FUNCTION_13_12();
        v160(v159);
        v161 = v221;
        goto LABEL_30;
      case 8:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_44;
      default:
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_6_17();
        OUTLINED_FUNCTION_15_12();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v122 = swift_allocObject();
        v124 = OUTLINED_FUNCTION_9_18(v122, xmmword_220DC17A0);
        if (v126 ^ v127 | v125)
        {
          if (v124 <= -9.22337204e18)
          {
            goto LABEL_45;
          }

          if (v124 >= 9.22337204e18)
          {
            __break(1u);
LABEL_23:
            sub_220CD8184(0, &qword_27CF956B0, 0x277CCAE38);
            v128 = v101;
            v129 = v199;
            sub_220DBE040();
            v130 = sub_220DBE5E0();
            v131 = v227;
            OUTLINED_FUNCTION_18_11(v227, v132, v133, v130);
            sub_220DC0840();
            v134 = v198;
            sub_220DC02A0();

            sub_220D69B34(v131);
            sub_220DC09A0();
            v230 = *(v202 + 8);
            (v230)(v134, v203);
            v135 = *MEMORY[0x277D7B408];
            v136 = OUTLINED_FUNCTION_2_25();
            v137(v136);
            sub_220DBF100();
            sub_220DBF0D0();
            sub_220D69B9C(&qword_27CF95760, MEMORY[0x277D7B4E8]);
            OUTLINED_FUNCTION_12_18();
            v138 = v201;
            sub_220DBE0B0();
            OUTLINED_FUNCTION_10_16();

            v139 = OUTLINED_FUNCTION_11_13();
            v140(v139);
            v141 = OUTLINED_FUNCTION_13_12();
            v142(v141);
            v143 = &v230;
LABEL_29:
            v161 = *(v143 - 32);
LABEL_30:
            (*(v161 + 8))(v129, v138);
            return;
          }
        }

        else
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          OUTLINED_FUNCTION_10();
LABEL_33:
          OUTLINED_FUNCTION_6_17();
          OUTLINED_FUNCTION_15_12();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v181 = swift_allocObject();
          v124 = OUTLINED_FUNCTION_9_18(v181, xmmword_220DC17A0);
          if (!(v126 ^ v127 | v125))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (v124 <= -9.22337204e18)
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (v124 >= 9.22337204e18)
          {
LABEL_48:
            __break(1u);
            return;
          }
        }

        v182 = MEMORY[0x277D83C10];
        v123[7] = MEMORY[0x277D83B88];
        v123[8] = v182;
        v123[4] = v124;
        sub_220DC05F0();

        return;
    }
  }

  if (qword_280FA6600 != -1)
  {
LABEL_42:
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6_17();
  sub_220DBE240();
}

uint64_t sub_220D69B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D69B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SevereAlertComponentStringsBuilder.Strings.alertTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_20();
}

uint64_t SevereAlertComponentStringsBuilder.Strings.alertSummary.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v4 = v1[6];
  v3 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t SevereAlertComponentStringsBuilder.Strings.alertDescription.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_20();
}

uint64_t SevereAlertComponentStringsBuilder.Strings.alertFooter.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_20();
}

uint64_t SevereAlertComponentStringsBuilder.Strings.longAlertDescription.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_20();
}

uint64_t SevereAlertComponentStringsBuilder.SevereAlertSummary.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_20();
}

uint64_t SevereAlertComponentStringsBuilder.SevereAlertSummary.footer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_20();
}

void SevereAlertComponentStringsBuilder.makeStrings(events:location:currentDate:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = sub_220DC01D0();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (sub_220DC0670() < 26)
    {
      v25 = v10;
      v26 = v11;
      goto LABEL_6;
    }
  }

  v25 = sub_220DC01E0();
  v26 = v12;
LABEL_6:
  v27 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CC8, &unk_220DC5560);
  sub_220CE161C(&qword_27CF95CD0, &qword_27CF95CC8, &unk_220DC5560);
  v13 = sub_220DC06E0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_8();
  *(v15 - 32) = v2;
  *(v15 - 24) = v14;
  *(v15 - 16) = 0;
  v17 = sub_220D46710(sub_220D6E54C, v16, v13);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_8();
  *(v18 - 32) = v2;
  *(v18 - 24) = v13;
  *(v18 - 16) = 1;
  v20 = sub_220D46710(sub_220D6EA64, v19, v13);
  SevereAlertComponentStringsBuilder.summary(alertDescriptions:events:location:currentDate:)();
  SevereAlertComponentStringsBuilder.longAlertDescription(for:location:)();
  v22 = v21;
  v24 = v23;

  *v6 = v25;
  v6[1] = v26;
  v6[2] = v17;
  v6[3] = v20;
  v6[4] = v27;
  v6[5] = v28;
  v6[6] = v29;
  v6[7] = v30;
  v6[8] = v27;
  v6[9] = v28;
  v6[10] = v29;
  v6[11] = v30;
  v6[12] = v22;
  v6[13] = v24;

  OUTLINED_FUNCTION_24();
}

Swift::String __swiftcall SevereAlertComponentStringsBuilder.title(for:characterLimit:)(Swift::OpaquePointer a1, Swift::Int characterLimit)
{
  v4 = *v2;
  sub_220DC01D0();
  if (!v5)
  {
    goto LABEL_4;
  }

  if (sub_220DC0670() > characterLimit)
  {

LABEL_4:
    sub_220DC01E0();
  }

  v6 = OUTLINED_FUNCTION_15_13();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_220D69FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220DBEB40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SevereAlertComponentStringsBuilder.descriptions(for:location:currentDate:bulletString:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6[2] = *v4;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a1;
  v7 = a4;
  return sub_220D46710(sub_220D6EA64, v6, a1);
}

void SevereAlertComponentStringsBuilder.summary(alertDescriptions:events:location:currentDate:)()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v107 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v104 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CD8, &qword_220DC5570);
  v12 = OUTLINED_FUNCTION_18(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v104 - v18;
  v20 = sub_220DBEB60();
  v21 = OUTLINED_FUNCTION_0(v20);
  v111 = v22;
  v112 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9();
  v113 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  v28 = v104 - v27;
  v29 = SevereAlertComponentStringsBuilder.footer(for:)(v1);
  v109 = *(v1 + 16);
  if (!v109)
  {
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_11();
    v35 = sub_220DBE240();
    v36 = v107;
    v107->_countAndFlagsBits = v35;
    v36->_object = v37;
LABEL_8:
    v36[1] = v29;
LABEL_30:
    OUTLINED_FUNCTION_24();
    return;
  }

  v30 = sub_220D6E58C(v1);
  v31 = v3[2];
  v106 = v29;
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v30;
  v105 = v28;
  v33 = v3[5];
  v110 = v3[4];
  v116 = v110;
  v117 = v33;
  sub_220D100B0(v1, v19);
  v34 = v112;
  if (__swift_getEnumTagSinglePayload(v19, 1, v112) == 1)
  {
    sub_220CE1ABC(v19, &qword_27CF95CD8, &qword_220DC5570);
    goto LABEL_18;
  }

  v38 = *(v111 + 32);
  v39 = v105;
  v40 = OUTLINED_FUNCTION_5_13();
  v41(v40);

  sub_220DBEB50();
  v42 = sub_220DBE560();
  v43 = __swift_getEnumTagSinglePayload(v10, 1, v42) != 1;
  sub_220CE1ABC(v10, &qword_27CF951E0, &unk_220DC1D80);
  if (((v43 | v32) & 1) == 0)
  {
    (*(v111 + 8))(v39, v34);

LABEL_18:
    v116 = MEMORY[0x277D84F90];
    v60 = v109;
    sub_220CFB7F4(0, v109, 0);
    v61 = v116;
    OUTLINED_FUNCTION_27_5();
    v63 = v1 + v62;
    v110 = *(v64 + 56);
    v111 = v65;
    v66 = (v64 - 8);
    do
    {
      v68 = v112;
      v67 = v113;
      v69 = OUTLINED_FUNCTION_5_13();
      (v111)(v69);
      v70 = sub_220DBEB40();
      v72 = v71;
      (*v66)(v67, v68);
      v116 = v61;
      v74 = *(v61 + 2);
      v73 = *(v61 + 3);
      if (v74 >= v73 >> 1)
      {
        sub_220CFB7F4((v73 > 1), v74 + 1, 1);
        v61 = v116;
      }

      *(v61 + 2) = v74 + 1;
      v75 = v61 + 16 * v74;
      *(v75 + 32) = v70;
      *(v75 + 40) = v72;
      v63 += v110;
      v60 = (v60 - 1);
    }

    while (v60);
    v116 = v61;
    v76 = OUTLINED_FUNCTION_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
    OUTLINED_FUNCTION_9_19(&qword_27CF95758);
    v78 = sub_220DC0570();
    v80 = v79;

    if (v109 == 1)
    {
      p_countAndFlagsBits = &v107->_countAndFlagsBits;
      countAndFlagsBits = v106._countAndFlagsBits;
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_11_14();
    }

    else
    {
      p_countAndFlagsBits = &v107->_countAndFlagsBits;
      countAndFlagsBits = v106._countAndFlagsBits;
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_14_0();
    }

    sub_220DBE240();
    OUTLINED_FUNCTION_16_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v83 = OUTLINED_FUNCTION_24_3();
    *(v83 + 16) = xmmword_220DC17A0;
    *(v83 + 56) = MEMORY[0x277D837D0];
    *(v83 + 64) = sub_220CEFDB0();
    *(v83 + 32) = v78;
    *(v83 + 40) = v80;
    OUTLINED_FUNCTION_15_13();
    v84 = sub_220DC05F0();
    v86 = v85;

    *p_countAndFlagsBits = v84;
    p_countAndFlagsBits[1] = v86;
    object = v106._object;
    p_countAndFlagsBits[2] = countAndFlagsBits;
    p_countAndFlagsBits[3] = object;
    goto LABEL_30;
  }

  v115 = v1;
  sub_220D100B0(v1, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v34) != 1)
  {

    sub_220CE1ABC(v17, &qword_27CF95CD8, &qword_220DC5570);
    sub_220D6E7B0(0, 1);
    v44 = v115;
    v45 = *(v115 + 16);
    if (v45)
    {
      v114 = MEMORY[0x277D84F90];
      sub_220CFB7F4(0, v45, 0);
      v46 = v114;
      v47 = v112;
      OUTLINED_FUNCTION_27_5();
      v104[1] = v44;
      v49 = v44 + v48;
      v108 = *(v50 + 56);
      v109 = v51;
      v111 = v50 - 8;
      do
      {
        v52 = v113;
        v53 = OUTLINED_FUNCTION_5_13();
        v109(v53);
        v54 = sub_220DBEB40();
        v56 = v55;
        v110 = *v111;
        (v110)(v52, v47);
        v114 = v46;
        v58 = *(v46 + 16);
        v57 = *(v46 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_220CFB7F4((v57 > 1), v58 + 1, 1);
          v46 = v114;
        }

        *(v46 + 16) = v58 + 1;
        v59 = v46 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
        v49 += v108;
        --v45;
      }

      while (v45);

      v114 = v46;
      v88 = OUTLINED_FUNCTION_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
      OUTLINED_FUNCTION_9_19(&qword_27CF95758);
      v90 = sub_220DC0570();
      v92 = v91;
      v93 = *(v46 + 16);

      if (v93 == 1)
      {
        OUTLINED_FUNCTION_19();
        v95 = v106._countAndFlagsBits;
        v94 = v106._object;
        v96 = v105;
        v97 = v107;
        if (!v98)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      else
      {
        OUTLINED_FUNCTION_19();
        v95 = v106._countAndFlagsBits;
        v94 = v106._object;
        v96 = v105;
        v97 = v107;
        if (!v98)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      OUTLINED_FUNCTION_14_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_16_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v99 = OUTLINED_FUNCTION_24_3();
      *(v99 + 16) = xmmword_220DC17A0;
      *(v99 + 56) = MEMORY[0x277D837D0];
      *(v99 + 64) = sub_220CEFDB0();
      *(v99 + 32) = v90;
      *(v99 + 40) = v92;
      OUTLINED_FUNCTION_15_13();
      v100 = sub_220DC05F0();
      v102 = v101;

      MEMORY[0x223D982B0](v100, v102);

      (v110)(v96, v112);
      v103 = v117;
      v97->_countAndFlagsBits = v116;
      v97->_object = v103;
      v97[1]._countAndFlagsBits = v95;
      v97[1]._object = v94;
      goto LABEL_30;
    }

    (*(v111 + 8))(v105, v112);

    v36 = v107;
    v107->_countAndFlagsBits = v110;
    v36->_object = v33;
    goto LABEL_8;
  }

  __break(1u);
}

void SevereAlertComponentStringsBuilder.longAlertDescription(for:location:)()
{
  OUTLINED_FUNCTION_25();
  v163 = v0;
  v164 = v1;
  v3 = v2;
  v145 = sub_220DBE360();
  v4 = OUTLINED_FUNCTION_0(v145);
  v144 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v143 = v9 - v8;
  OUTLINED_FUNCTION_6_1();
  v10 = sub_220DBE6C0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v148 = v12;
  v149 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v147 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v18 = OUTLINED_FUNCTION_18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v150 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  v155 = v140 - v23;
  OUTLINED_FUNCTION_6_1();
  v156 = sub_220DBE560();
  v24 = OUTLINED_FUNCTION_0(v156);
  v154 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9();
  v153 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  v157 = v140 - v30;
  OUTLINED_FUNCTION_6_1();
  v31 = sub_220DBEAF0();
  v32 = OUTLINED_FUNCTION_0(v31);
  v159 = v33;
  v160 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9();
  v158 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v37);
  v39 = v140 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CD8, &qword_220DC5570);
  v41 = OUTLINED_FUNCTION_18(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = v140 - v44;
  v46 = sub_220DBEB60();
  v47 = OUTLINED_FUNCTION_0(v46);
  v162 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1();
  v161 = v52 - v51;
  OUTLINED_FUNCTION_6_1();
  v53 = sub_220DBE6E0();
  v54 = OUTLINED_FUNCTION_0(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1();
  v61 = v60 - v59;
  v62 = sub_220DBE740();
  v63 = OUTLINED_FUNCTION_0(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1();
  v70 = v69 - v68;
  v141 = *v163;
  v142 = v3;
  sub_220DBF1C0();
  v71 = v70;
  v72 = v61;
  sub_220DBE600();
  if (*(v164 + 16) == 1)
  {
    v151 = v53;
    v152 = v62;
    v146 = v56;
    v163 = v65;
    sub_220D100B0(v164, v45);
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
    {
      v73 = OUTLINED_FUNCTION_28_4();
      v74(v73);
      (*(v163 + 8))(v71, v152);
      v75 = &qword_27CF95CD8;
      v76 = &qword_220DC5570;
      v77 = v45;
LABEL_12:
      sub_220CE1ABC(v77, v75, v76);
      goto LABEL_13;
    }

    v78 = v46;
    v164 = v71;
    v79 = v161;
    v80 = v162;
    (*(v162 + 32))(v161, v45, v46);
    sub_220DBEB00();
    v81 = v159;
    v82 = v160;
    (*(v159 + 104))(v158, *MEMORY[0x277D7B3B0], v160);
    v83 = sub_220DBEAE0();
    v84 = *(v81 + 8);
    v85 = OUTLINED_FUNCTION_24_8();
    v84(v85);
    (v84)(v39, v82);
    if (v83)
    {
      v86 = v155;
      sub_220DBEB50();
      v87 = v156;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v156);
      v89 = v163;
      v91 = v151;
      v90 = v152;
      v92 = v146;
      if (EnumTagSinglePayload == 1)
      {
        v93 = *(v80 + 8);
        v94 = OUTLINED_FUNCTION_15_13();
        v95(v94);
        (*(v92 + 8))(v72, v91);
        (*(v89 + 8))(v164, v90);
LABEL_11:
        v75 = &qword_27CF951E0;
        v76 = &unk_220DC1D80;
        v77 = v86;
        goto LABEL_12;
      }

      v160 = v78;
      v101 = v154;
      v102 = v87;
      v103 = v79;
      v104 = *(v154 + 32);
      v104(v157, v86, v102);
      v86 = v150;
      sub_220DBEB30();
      if (__swift_getEnumTagSinglePayload(v86, 1, v102) == 1)
      {
        (*(v101 + 8))(v157, v102);
        (*(v80 + 8))(v103, v160);
        (*(v92 + 8))(v72, v151);
        (*(v89 + 8))(v164, v152);
        goto LABEL_11;
      }

      v104(v153, v86, v102);
      v105 = *MEMORY[0x277CC99B8];
      v106 = v148;
      v107 = v149;
      v108 = v72;
      v109 = v147;
      v159 = *(v148 + 104);
      (v159)(v147, v105, v149);
      sub_220DBE6D0();
      v110 = *(v106 + 8);
      v110(v109, v107);
      v111 = sub_220DBE510();
      if (v111 == 7)
      {
        v112 = *(v154 + 8);
        v112(v153, v102);
        v112(v157, v102);
        (*(v162 + 8))(v161, v160);
        (*(v92 + 8))(v108, v151);
LABEL_18:
        (*(v163 + 8))(v164, v152);
        goto LABEL_13;
      }

      v158 = v111;
      (v159)(v109, v105, v107);
      v113 = v153;
      sub_220DBE6D0();
      v110(v109, v107);
      v114 = sub_220DBE510();
      if (v114 == 7)
      {
        v115 = *(v154 + 8);
        v116 = v156;
        v115(v113, v156);
        v115(v157, v116);
        (*(v162 + 8))(v161, v160);
        (*(v92 + 8))(v108, v151);
        goto LABEL_18;
      }

      v117 = v114;
      v159 = v108;
      v118 = v141;
      v165 = v141;
      v149 = sub_220D6CCD0();
      v140[1] = v119;
      v165 = v118;
      v150 = sub_220D6CCD0();
      v121 = v120;
      v141 = sub_220DBE4E0();
      v142 = v122;
      v147 = sub_220DBE4E0();
      v148 = v123;
      v124 = v143;
      sub_220DBDFF0();
      sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8]);
      v125 = v145;
      sub_220DBE550();
      v126 = *(v144 + 8);
      v126(v124, v125);
      v144 = v165;
      sub_220DBDFF0();
      sub_220DBE550();
      v126(v124, v125);
      v127 = v165;
      v155 = v121;
      switch(v158)
      {
        case 1:
          switch(v117)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
          }

          break;
        case 2:
          switch(v117)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
          }

          break;
        case 3:
          switch(v117)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
          }

          break;
        case 4:
          switch(v117)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
          }

          break;
        case 5:
          switch(v117)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
          }

          break;
        case 6:
          switch(v117)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
          }

          break;
        default:
          switch(v117)
          {
            case 1:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 2:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 3:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 4:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 5:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            case 6:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
            default:
              OUTLINED_FUNCTION_6_18();
              OUTLINED_FUNCTION_19();
              if (!v128)
              {
                OUTLINED_FUNCTION_10();
              }

              break;
          }

          break;
      }

      OUTLINED_FUNCTION_2_26();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_16_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_220DC5550;
      v130 = v161;
      v131 = sub_220DBEB40();
      v133 = v132;
      v134 = MEMORY[0x277D837D0];
      *(v129 + 56) = MEMORY[0x277D837D0];
      v135 = sub_220CEFDB0();
      v136 = MEMORY[0x277D83B88];
      v137 = MEMORY[0x277D83C10];
      *(v129 + 32) = v131;
      *(v129 + 40) = v133;
      *(v129 + 96) = v136;
      *(v129 + 104) = v137;
      *(v129 + 64) = v135;
      *(v129 + 72) = v144;
      *(v129 + 136) = v134;
      *(v129 + 144) = v135;
      *(v129 + 112) = v141;
      *(v129 + 120) = v142;
      *(v129 + 176) = v136;
      *(v129 + 184) = v137;
      *(v129 + 152) = v127;
      *(v129 + 216) = v134;
      *(v129 + 224) = v135;
      *(v129 + 192) = v147;
      *(v129 + 200) = v148;
      *(v129 + 256) = v134;
      *(v129 + 264) = v135;
      *(v129 + 232) = v149;
      *(v129 + 240) = v113;
      *(v129 + 296) = v134;
      *(v129 + 304) = v135;
      *(v129 + 272) = v150;
      *(v129 + 280) = v155;
      OUTLINED_FUNCTION_15_13();
      sub_220DC05F0();

      v138 = *(v154 + 8);
      v139 = v156;
      v138(v153, v156);
      v138(v157, v139);
      (*(v162 + 8))(v130, v160);
      (*(v146 + 8))(v159, v151);
      (*(v163 + 8))(v164, v152);
    }

    else
    {
      v96 = *(v80 + 8);
      v97 = OUTLINED_FUNCTION_15_13();
      v98(v97);
      v99 = OUTLINED_FUNCTION_28_4();
      v100(v99);
      (*(v163 + 8))(v164, v152);
    }
  }

  else
  {
    (*(v56 + 8))(v61, v53);
    (*(v65 + 8))(v71, v62);
  }

LABEL_13:
  OUTLINED_FUNCTION_24();
}

Swift::String __swiftcall SevereAlertComponentStringsBuilder.footer(for:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = sub_220DBEB60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = *(v2 + 16);
  if (!v12)
  {
    v26 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_25;
  }

  v15 = *(v6 + 16);
  v14 = v6 + 16;
  v13 = v15;
  v16 = v2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v17 = (v14 - 8);
  v18 = *(v14 + 56);
  v41 = v12;
  while (1)
  {
    v19 = OUTLINED_FUNCTION_5_13();
    v13(v19);
    v20 = sub_220DBEB20();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      break;
    }

    (*v17)(v11, v3);
    v16 += v18;
    if (!--v12)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_10;
    }
  }

  v24 = sub_220DBEB20();
  v25 = v28;
  (*v17)(v11, v3);
LABEL_10:
  if (v41 != 1)
  {
    v27 = 0;
    v26 = 0;
    goto LABEL_18;
  }

  v29 = sub_220DBEB10();
  v26 = v30;
  if (!v30)
  {
    v27 = 0;
    if (v25)
    {
      goto LABEL_19;
    }

LABEL_25:
    v35 = 1;
    goto LABEL_26;
  }

  v27 = v29;
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
LABEL_18:
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v27 = 0;
  v26 = 0;
  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (!v26)
  {
    v35 = 0;
LABEL_26:
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_11();
    sub_220DBE240();
    if (v35)
    {
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v36 = OUTLINED_FUNCTION_24_3();
        *(v36 + 16) = xmmword_220DC17A0;
        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 64) = sub_220CEFDB0();
        *(v36 + 32) = v27;
        *(v36 + 40) = v26;
        sub_220DC05F0();
        OUTLINED_FUNCTION_21();
      }
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v37 = OUTLINED_FUNCTION_24_3();
      *(v37 + 16) = xmmword_220DC17A0;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = sub_220CEFDB0();
      *(v37 + 32) = v24;
      *(v37 + 40) = v25;
      sub_220DC05F0();
      OUTLINED_FUNCTION_21();
    }

    goto LABEL_32;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_220DC17C0;
  v33 = MEMORY[0x277D837D0];
  *(v32 + 56) = MEMORY[0x277D837D0];
  v34 = sub_220CEFDB0();
  *(v32 + 32) = v24;
  *(v32 + 40) = v25;
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  *(v32 + 64) = v34;
  *(v32 + 72) = v27;
  *(v32 + 80) = v26;
  sub_220DC05F0();
  OUTLINED_FUNCTION_21();

LABEL_32:

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_24();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t sub_220D6C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a1;
  v5 = sub_220DBE6C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DBE6E0();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220DBE360();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v4;
  v19 = sub_220D6CCD0();
  v38 = v20;
  v39 = v19;
  v21 = sub_220DBE4E0();
  v40 = v22;
  v41 = v21;
  sub_220DBDFF0();
  sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8]);
  sub_220DBE550();
  (*(v15 + 8))(v18, v14);
  v23 = v45;
  sub_220DBE600();
  (*(v6 + 104))(v9, *MEMORY[0x277CC99B8], v5);
  sub_220DBE6D0();
  (*(v6 + 8))(v9, v5);
  switch(sub_220DBE510())
  {
    case 1u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_220DC1CE0;
  v27 = sub_220DBEB40();
  v29 = v28;
  v30 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  v31 = sub_220CEFDB0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  *(v26 + 96) = v30;
  *(v26 + 104) = v31;
  v32 = v38;
  v33 = v39;
  *(v26 + 64) = v31;
  *(v26 + 72) = v33;
  *(v26 + 80) = v32;
  v34 = MEMORY[0x277D83C10];
  *(v26 + 136) = MEMORY[0x277D83B88];
  *(v26 + 144) = v34;
  *(v26 + 112) = v23;
  *(v26 + 176) = v30;
  *(v26 + 184) = v31;
  v35 = v40;
  *(v26 + 152) = v25;
  *(v26 + 160) = v35;
  v36 = sub_220DC05F0();

  (*(v24 + 8))(v13, v44);
  return v36;
}

uint64_t sub_220D6CCD0()
{
  v0 = sub_220DBE540();
  v2 = v1;
  sub_220DBF1A0();
  v3 = sub_220DBF170();
  v5 = v4;
  if (v3 == sub_220DBF170() && v5 == v6)
  {
LABEL_15:

    return v0;
  }

  v8 = sub_220DC0CA0();

  if ((v8 & 1) == 0)
  {
    v9 = sub_220DBE700();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_220DC17C0;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_220CEFDB0();
    *(v13 + 32) = v0;
    *(v13 + 40) = v2;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v11;
    *(v13 + 80) = v12;
    v0 = sub_220DC05F0();
    goto LABEL_15;
  }

  return v0;
}

uint64_t sub_220D6CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a1;
  v5 = sub_220DBE6C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DBE6E0();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220DBE360();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v4;
  v19 = sub_220D6CCD0();
  v38 = v20;
  v39 = v19;
  v21 = sub_220DBE4E0();
  v40 = v22;
  v41 = v21;
  sub_220DBDFF0();
  sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8]);
  sub_220DBE550();
  (*(v15 + 8))(v18, v14);
  v23 = v45;
  sub_220DBE600();
  (*(v6 + 104))(v9, *MEMORY[0x277CC99B8], v5);
  sub_220DBE6D0();
  (*(v6 + 8))(v9, v5);
  switch(sub_220DBE510())
  {
    case 1u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7u:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      v24 = v43;
      v25 = v41;
      if (qword_280FA6600 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_220DC1CE0;
  v27 = sub_220DBEB40();
  v29 = v28;
  v30 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  v31 = sub_220CEFDB0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  *(v26 + 96) = v30;
  *(v26 + 104) = v31;
  v32 = v38;
  v33 = v39;
  *(v26 + 64) = v31;
  *(v26 + 72) = v33;
  *(v26 + 80) = v32;
  v34 = MEMORY[0x277D83C10];
  *(v26 + 136) = MEMORY[0x277D83B88];
  *(v26 + 144) = v34;
  *(v26 + 112) = v23;
  *(v26 + 176) = v30;
  *(v26 + 184) = v31;
  v35 = v40;
  *(v26 + 152) = v25;
  *(v26 + 160) = v35;
  v36 = sub_220DC05F0();

  (*(v24 + 8))(v13, v44);
  return v36;
}

uint64_t sub_220D6D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a1;
  v5 = sub_220DBE6C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DBE6E0();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220DBE360();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *v4;
  v19 = sub_220D6CCD0();
  v39 = v20;
  v40 = v19;
  v21 = sub_220DBE4E0();
  v37 = v22;
  v38 = v21;
  sub_220DBDFF0();
  sub_220D6E8E0(&qword_27CF95CE0, MEMORY[0x277D7A9B8]);
  sub_220DBE550();
  (*(v15 + 8))(v18, v14);
  v23 = v44;
  sub_220DBE600();
  (*(v6 + 104))(v9, *MEMORY[0x277CC99B8], v5);
  sub_220DBE6D0();
  (*(v6 + 8))(v9, v5);
  switch(sub_220DBE510())
  {
    case 1u:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2u:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3u:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4u:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5u:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6u:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7u:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      v24 = v42;
      v25 = v40;
      if (qword_280FA6600 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_220DC1CE0;
  v27 = sub_220DBEB40();
  v29 = v28;
  v30 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  v31 = sub_220CEFDB0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v32 = MEMORY[0x277D83C10];
  *(v26 + 96) = MEMORY[0x277D83B88];
  *(v26 + 104) = v32;
  *(v26 + 64) = v31;
  *(v26 + 72) = v23;
  *(v26 + 136) = v30;
  *(v26 + 144) = v31;
  v33 = v37;
  *(v26 + 112) = v38;
  *(v26 + 120) = v33;
  *(v26 + 176) = v30;
  *(v26 + 184) = v31;
  v34 = v39;
  *(v26 + 152) = v25;
  *(v26 + 160) = v34;
  v35 = sub_220DC05F0();

  (*(v24 + 8))(v13, v43);
  return v35;
}

void SevereAlertComponentStringsBuilder.description(for:location:currentDate:eventCount:bulletString:)()
{
  OUTLINED_FUNCTION_25();
  v91 = v0;
  v81 = v1;
  v86 = v2;
  v88 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v80 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  v87 = &v77 - v14;
  OUTLINED_FUNCTION_23();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v77 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  v24 = sub_220DBE560();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  v79 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v31);
  v85 = &v77 - v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  v84 = &v77 - v34;
  OUTLINED_FUNCTION_23();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v77 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v77 - v39;
  v41 = sub_220DBE740();
  v42 = OUTLINED_FUNCTION_0(v41);
  v90 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v82 = *v91;
  v83 = v5;
  v89 = v47 - v46;
  sub_220DBF1C0();
  v91 = v7;
  sub_220DBEB30();
  OUTLINED_FUNCTION_13_0(v23);
  if (v48)
  {
    sub_220CE1ABC(v23, &qword_27CF951E0, &unk_220DC1D80);
    goto LABEL_13;
  }

  v78 = v41;
  v49 = *(v27 + 32);
  v49(v40, v23, v24);
  sub_220D6E8E0(&qword_280FA7798, MEMORY[0x277CC9578]);
  v50 = sub_220DC0580();
  if (v50)
  {
    v51 = *(v27 + 8);
    v52 = OUTLINED_FUNCTION_24_8();
    v53(v52);
    v41 = v78;
    goto LABEL_13;
  }

  sub_220DBEB50();
  OUTLINED_FUNCTION_13_0(v21);
  if (v48)
  {
    sub_220DBE3F0();
    OUTLINED_FUNCTION_13_0(v21);
    if (!v48)
    {
      sub_220CE1ABC(v21, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    v49(v38, v21, v24);
  }

  v54 = sub_220DBE440();
  v55 = *(v27 + 8);
  v55(v38, v24);
  if ((v54 & 1) == 0)
  {
    v58 = OUTLINED_FUNCTION_24_8();
    (v55)(v58);
    v41 = v78;
LABEL_13:
    v59 = v91;
    sub_220DBEB50();
    OUTLINED_FUNCTION_13_0(v18);
    if (v48)
    {
      sub_220CE1ABC(v18, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v60 = v84;
      (*(v27 + 32))(v84, v18, v24);
      v61 = sub_220DBE430();
      if (v61)
      {
        v92 = v82;
        v62 = v89;
        sub_220D6CEC0(v59, v60, v89, v83);
        OUTLINED_FUNCTION_21();
        (*(v27 + 8))(v60, v24);
        (*(v90 + 8))(v62, v41);
        goto LABEL_42;
      }

      (*(v27 + 8))(v60, v24);
    }

    v63 = v87;
    sub_220DBEB50();
    OUTLINED_FUNCTION_13_0(v63);
    if (v48)
    {
      sub_220CE1ABC(v63, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v64 = *(v27 + 32);
      v65 = v85;
      v64(v85, v63, v24);
      v66 = sub_220DBE440();
      if (v66)
      {
        v67 = v80;
        sub_220DBEB30();
        OUTLINED_FUNCTION_13_0(v67);
        if (v48)
        {
          v68 = v79;
          sub_220DBE3F0();
          OUTLINED_FUNCTION_13_0(v67);
          if (!v48)
          {
            sub_220CE1ABC(v67, &qword_27CF951E0, &unk_220DC1D80);
          }
        }

        else
        {
          v68 = v79;
          v64(v79, v67, v24);
        }

        v69 = sub_220DBE430();
        v70 = *(v27 + 8);
        v70(v68, v24);
        if (v69)
        {
          v92 = v82;
          v71 = v85;
          v72 = v89;
          sub_220D6D5B4(v59, v85, v89, v83);
          OUTLINED_FUNCTION_21();
          v70(v71, v24);
          (*(v90 + 8))(v72, v41);
          goto LABEL_42;
        }

        v70(v85, v24);
      }

      else
      {
        (*(v27 + 8))(v65, v24);
      }
    }

    if (v86 == 1)
    {
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_11_14();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      if (v81)
      {
        sub_220DBEB40();
        OUTLINED_FUNCTION_21();
LABEL_41:
        (*(v90 + 8))(v89, v41);
        goto LABEL_42;
      }

      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_11();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v73 = OUTLINED_FUNCTION_24_3();
    *(v73 + 16) = xmmword_220DC17A0;
    v74 = sub_220DBEB40();
    v76 = v75;
    *(v73 + 56) = MEMORY[0x277D837D0];
    *(v73 + 64) = sub_220CEFDB0();
    *(v73 + 32) = v74;
    *(v73 + 40) = v76;
    sub_220DC05F0();
    OUTLINED_FUNCTION_21();

    goto LABEL_41;
  }

  v92 = v82;
  v56 = v89;
  sub_220D6C5DC(v91, v40, v89, v83);
  OUTLINED_FUNCTION_21();
  v57 = OUTLINED_FUNCTION_24_8();
  (v55)(v57);
  (*(v90 + 8))(v56, v78);
LABEL_42:
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_24();
}

void sub_220D6E4F8(uint64_t a1@<X4>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  SevereAlertComponentStringsBuilder.description(for:location:currentDate:eventCount:bulletString:)();
  *a2 = v4;
  a2[1] = v5;
}

void sub_220D6E564(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  sub_220D6E4F8(*(v1 + 40), a1);
}

uint64_t sub_220D6E58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_220DBE560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_5;
  }

  v11 = *(sub_220DBEB60() - 8);
  v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  sub_220DBEB30();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
LABEL_5:
    sub_220CE1ABC(v5, &qword_27CF951E0, &unk_220DC1D80);
    v14 = 0;
    return v14 & 1;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_220D6E8E0(&qword_280FA7798, MEMORY[0x277CC9578]);
  v13 = sub_220DC0580();
  (*(v7 + 8))(v10, v6);
  v14 = v13 ^ 1;
  return v14 & 1;
}

uint64_t sub_220D6E7B0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_220D81974(result, 1);
  v8 = *v2;
  v9 = *(sub_220DBEB60() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_220CFB67C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220D6E8E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220D6E930(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_220D6E970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220D6E9D8(uint64_t a1, int a2)
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

uint64_t sub_220D6EA18(uint64_t result, int a2, int a3)
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

uint64_t DetailChartDataPoint.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220DBE560();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DetailChartDataPoint.value.getter()
{
  v1 = (v0 + *(type metadata accessor for DetailChartDataPoint() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for DetailChartDataPoint()
{
  result = qword_27CF95CE8;
  if (!qword_27CF95CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetailChartDataPoint.init(date:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_220DBE560();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for DetailChartDataPoint();
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t static DetailChartDataPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DetailChartDataPoint() + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t DetailChartLollipopPoint.y.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t static DetailChartLollipopPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_220D6ED08()
{
  sub_220DBE560();
  if (v0 <= 0x3F)
  {
    sub_220D65D24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailChartLollipopPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetailChartLollipopPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

BOOL ChartKind.isBarChart.getter()
{
  v2 = type metadata accessor for ChartKind();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_17();
  sub_220D6EF34(v1, v0);
  OUTLINED_FUNCTION_27_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_220D6F900(v0, type metadata accessor for ChartKind);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780);
    sub_220CDA548(v0 + *(v7 + 48), &qword_27CF95D00, &qword_220DC5788);
    v8 = OUTLINED_FUNCTION_27_0();
    sub_220CDA548(v8, v9, &qword_220DC5788);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t type metadata accessor for ChartKind()
{
  result = qword_27CF95D18;
  if (!qword_27CF95D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D6EF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartKind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ChartKind.isContinuous.getter()
{
  v2 = type metadata accessor for ChartKind();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_17();
  sub_220D6EF34(v1, v0);
  OUTLINED_FUNCTION_27_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_220D6F900(v0, type metadata accessor for ChartKind);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780);
    sub_220CDA548(v0 + *(v7 + 48), &qword_27CF95D00, &qword_220DC5788);
    v8 = OUTLINED_FUNCTION_27_0();
    sub_220CDA548(v8, v9, &qword_220DC5788);
  }

  return EnumCaseMultiPayload != 1;
}

BOOL ChartKind.showSecondLine.getter()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10_17();
  v5 = type metadata accessor for ChartKind();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  sub_220D6EF34(v2, v10 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220D6F900(v11, type metadata accessor for ChartKind);
    return 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780);
    sub_220D6F1E8(v11 + *(v13 + 48), v0);
    v14 = type metadata accessor for ChartLineStyle(0);
    v12 = __swift_getEnumTagSinglePayload(v0, 1, v14) != 1;
    OUTLINED_FUNCTION_9_20(v0);
    OUTLINED_FUNCTION_9_20(v11);
  }

  return v12;
}

uint64_t sub_220D6F1E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ChartKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v96 = type metadata accessor for ChartLineStyle(0);
  v5 = OUTLINED_FUNCTION_6(v96);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v93 = v9 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D08, &qword_220DC5790);
  v10 = OUTLINED_FUNCTION_6(v95);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v94 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_4();
  v92 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v92 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v97 = &v92 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v92 - v28;
  v30 = type metadata accessor for ChartKind();
  v31 = OUTLINED_FUNCTION_6(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v92 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D10, &qword_220DC5798);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  OUTLINED_FUNCTION_10_17();
  v43 = v2 + *(v42 + 56);
  sub_220D6EF34(a1, v2);
  sub_220D6EF34(a2, v43);
  OUTLINED_FUNCTION_27_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_220D6EF34(v2, v39);
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CF8, &qword_220DC5780) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v52, v53, v54);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v55, v56, v57);
LABEL_10:
      sub_220CDA548(v2, &qword_27CF95D10, &qword_220DC5798);
      return 0;
    }

    v58 = v29;
    sub_220D6F1E8(&v39[v51], v29);
    v59 = v97;
    sub_220D6F1E8(v43 + v51, v97);
    v60 = v95;
    v61 = *(v95 + 48);
    sub_220D6F1E8(v39, v17);
    sub_220D6F1E8(v43, &v17[v61]);
    if (__swift_getEnumTagSinglePayload(v17, 1, v96) == 1)
    {
      OUTLINED_FUNCTION_8_4(&v17[v61]);
      if (!v80)
      {
        goto LABEL_18;
      }

      sub_220CDA548(v17, &qword_27CF95D00, &qword_220DC5788);
    }

    else
    {
      sub_220D6F890(v17, v25);
      OUTLINED_FUNCTION_8_4(&v17[v61]);
      if (v80)
      {
        OUTLINED_FUNCTION_2_27();
        sub_220D6F900(v25, v62);
LABEL_18:
        sub_220CDA548(v17, &qword_27CF95D08, &qword_220DC5790);
LABEL_19:
        OUTLINED_FUNCTION_26();
        sub_220CDA548(v63, v64, v65);
        OUTLINED_FUNCTION_26();
LABEL_30:
        sub_220CDA548(v66, v67, v68);
LABEL_31:
        OUTLINED_FUNCTION_4_18();
        return 0;
      }

      v69 = v93;
      sub_220D6F958(&v17[v61], v93);
      static ChartLineStyle.== infix(_:_:)(v25, v69);
      OUTLINED_FUNCTION_1_31();
      sub_220D6F900(v69, v70);
      sub_220D6F900(v25, v30);
      sub_220CDA548(v17, &qword_27CF95D00, &qword_220DC5788);
      if ((v61 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v71 = *(v60 + 48);
    v72 = v94;
    sub_220D6F890(v58, v94);
    sub_220D6F890(v59, v72 + v71);
    OUTLINED_FUNCTION_8_4(v72);
    if (v80)
    {
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v73, v74, v75);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v76, v77, v78);
      OUTLINED_FUNCTION_8_4(v72 + v71);
      if (v80)
      {
        sub_220CDA548(v72, &qword_27CF95D00, &qword_220DC5788);
        goto LABEL_35;
      }
    }

    else
    {
      v79 = v92;
      sub_220D6F890(v72, v92);
      OUTLINED_FUNCTION_8_4(v72 + v71);
      if (!v80)
      {
        v89 = v72 + v71;
        v90 = v93;
        sub_220D6F958(v89, v93);
        static ChartLineStyle.== infix(_:_:)(v79, v90);
        OUTLINED_FUNCTION_1_31();
        sub_220D6F900(v90, v91);
        OUTLINED_FUNCTION_9_20(v97);
        OUTLINED_FUNCTION_9_20(v58);
        sub_220D6F900(v79, v30);
        OUTLINED_FUNCTION_9_20(v72);
        if ((v61 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_35:
        OUTLINED_FUNCTION_4_18();
        return 1;
      }

      OUTLINED_FUNCTION_26();
      sub_220CDA548(v81, v82, v83);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v84, v85, v86);
      OUTLINED_FUNCTION_2_27();
      sub_220D6F900(v79, v87);
    }

    v67 = &qword_27CF95D08;
    v68 = &qword_220DC5790;
    v66 = v72;
    goto LABEL_30;
  }

  sub_220D6EF34(v2, v36);
  v44 = *v36;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_10;
  }

  v46 = *(v36 + 8);
  v45 = *(v36 + 16);
  v47 = *(v43 + 8);
  v48 = *(v43 + 16);
  v49 = MEMORY[0x223D97D10](v44, *v43);

  if (v45 == v48)
  {
    v50 = v49 & (v46 == v47);
  }

  else
  {
    v50 = 0;
  }

  sub_220D6F900(v2, type metadata accessor for ChartKind);
  return v50;
}

uint64_t sub_220D6F890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D00, &qword_220DC5788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D6F900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D6F958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220D6F9C0()
{
  sub_220D6FA34();
  if (v0 <= 0x3F)
  {
    sub_220D6FAA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D6FA34()
{
  if (!qword_27CF95D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D00, &qword_220DC5788);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95D28);
    }
  }
}

ValueMetadata *sub_220D6FAA8()
{
  result = qword_27CF95D30;
  if (!qword_27CF95D30)
  {
    result = &type metadata for DetailChartGradientModel;
    atomic_store(&type metadata for DetailChartGradientModel, &qword_27CF95D30);
  }

  return result;
}

uint64_t sub_220D6FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t *a7)
{
  v10 = *a7;
  v11 = a7[1];
  v13 = a7[2];
  v12 = a7[3];
  v15 = a7[4];
  v14 = a7[5];
  if (sub_220DBE610())
  {
    OUTLINED_FUNCTION_28_5();
    return sub_220D6FC04(a1, a2, a3, v20);
  }

  else if (sub_220DBE640())
  {
    OUTLINED_FUNCTION_28_5();
    return sub_220D705B4(a2, a3, v20);
  }

  else
  {
    OUTLINED_FUNCTION_28_5();
    return sub_220D71634(a4, v17, a2, a3, a6, v20);
  }
}

uint64_t sub_220D6FC04(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v128 = a3;
  v132 = a1;
  v7 = sub_220DC0300();
  v8 = OUTLINED_FUNCTION_0(v7);
  v126 = v9;
  *&v127 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_21();
  v125 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  v119 = v17;
  OUTLINED_FUNCTION_6_1();
  v18 = sub_220DC0920();
  v19 = OUTLINED_FUNCTION_53_1(v18);
  v20 = OUTLINED_FUNCTION_0(v19);
  v118 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_220DC0910();
  v27 = OUTLINED_FUNCTION_0(v26);
  v123 = v28;
  v124 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_21();
  v117 = v31;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0(v122);
  v121 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22();
  v37 = v36;
  OUTLINED_FUNCTION_6_1();
  v130 = sub_220DBEF00();
  v38 = OUTLINED_FUNCTION_0(v130);
  v133 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v43 = &v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v45 = OUTLINED_FUNCTION_18(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  v52 = OUTLINED_FUNCTION_62_0();
  v53 = OUTLINED_FUNCTION_0(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4();
  v131 = (v58 - v59);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v60);
  v62 = &v110 - v61;
  v63 = a4[1];
  v116 = *a4;
  v129 = v63;
  v115 = a4[2];
  sub_220CEF48C(a2, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v52) == 1)
  {
    v50 = v4;
LABEL_5:
    sub_220CE1ABC(v50, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v65 = sub_220DBF410();
    __swift_project_value_buffer(v65, qword_27CF95F48);
    v66 = sub_220DBF3F0();
    v67 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v67))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v68, v69, "Failed to make today platter string for Wind due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  v64 = *(v55 + 32);
  v64(v62, v4, v52);
  sub_220CEF48C(v128, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v52) == 1)
  {
    (*(v55 + 8))(v62, v52);
    goto LABEL_5;
  }

  v114 = v62;
  v128 = v55;
  v64(v131, v50, v52);
  if (sub_220DC08F0())
  {
    OUTLINED_FUNCTION_29();
    if (!v71)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (!v71)
    {
      OUTLINED_FUNCTION_10();
    }
  }

  OUTLINED_FUNCTION_2_0();
  v113 = v72;
  v73 = sub_220DBE240();
  OUTLINED_FUNCTION_29_4(v73);
  v112 = v74;
  sub_220DBEA70();
  v110 = v37;
  sub_220DBEEF0();
  v75 = *(v133 + 8);
  v133 += 8;
  v111 = v75;
  v75(v43, v130);
  v76 = v118;
  v77 = v120;
  (*(v118 + 104))(v25, *MEMORY[0x277D7B490], v120);
  sub_220DBE5E0();
  v78 = v119;
  v79 = OUTLINED_FUNCTION_5_14();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  sub_220DC07E0();
  v83 = v117;
  sub_220DC0270();

  sub_220CE1ABC(v78, &qword_27CF95228, &unk_220DC1E60);
  (*(v76 + 8))(v25, v77);
  v85 = v125;
  v84 = v126;
  v86 = v127;
  (*(v126 + 104))(v125, *MEMORY[0x277D7B408], v127);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220D3A63C();
  v87 = v122;
  v88 = v124;
  v89 = v110;
  v90 = sub_220DBE0B0();
  OUTLINED_FUNCTION_53_1(v90);
  v119 = v91;

  (*(v84 + 8))(v85, v86);
  (*(v123 + 8))(v83, v88);
  (*(v121 + 8))(v89, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v92 = OUTLINED_FUNCTION_15_7();
  v127 = xmmword_220DC17C0;
  *(v92 + 16) = xmmword_220DC17C0;
  v93 = MEMORY[0x277D837D0];
  *(v92 + 56) = MEMORY[0x277D837D0];
  v94 = sub_220CEFDB0();
  *(v92 + 64) = v94;
  v95 = v119;
  *(v92 + 32) = v120;
  *(v92 + 40) = v95;
  sub_220DBEA70();
  sub_220DBEED0();
  v111(v43, v130);
  v96 = sub_220DBEEA0();
  *(v92 + 96) = v93;
  *(v92 + 104) = v94;
  *(v92 + 72) = v96;
  *(v92 + 80) = v97;
  v98 = sub_220DC05F0();
  v132 = v99;
  v133 = v98;

  v134[0] = v116;
  v134[1] = v129;
  v134[2] = v115;
  v100 = v114;
  v101 = v131;
  v102 = sub_220D7336C(v114, v131, v134);
  v104 = v103;
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_2_0();
  sub_220DBE240();
  v105 = OUTLINED_FUNCTION_15_7();
  *(v105 + 16) = v127;
  v106 = MEMORY[0x277D837D0];
  *(v105 + 56) = MEMORY[0x277D837D0];
  *(v105 + 64) = v94;
  v107 = v132;
  *(v105 + 32) = v133;
  *(v105 + 40) = v107;
  *(v105 + 96) = v106;
  *(v105 + 104) = v94;
  *(v105 + 72) = v102;
  *(v105 + 80) = v104;
  v70 = sub_220DC05F0();

  v108 = *(v128 + 8);
  v108(v101, v52);
  v108(v100, v52);
  return v70;
}

uint64_t sub_220D705B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v217 = sub_220DC0300();
  v6 = OUTLINED_FUNCTION_0(v217);
  v224 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_21();
  v213 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  v210 = v15;
  OUTLINED_FUNCTION_6_1();
  v220 = sub_220DC0920();
  v16 = OUTLINED_FUNCTION_0(v220);
  v223 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_21();
  v215 = v20;
  OUTLINED_FUNCTION_6_1();
  v212 = sub_220DC0910();
  v21 = OUTLINED_FUNCTION_0(v212);
  v218 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_21();
  v211 = v25;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v26 = OUTLINED_FUNCTION_0(v225);
  v214 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v219 = v30 - v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  v221 = v194 - v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v34);
  v222 = v194 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v37 = OUTLINED_FUNCTION_18(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v194 - v44;
  v46 = sub_220DBF310();
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  v216 = v52 - v53;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v54);
  v56 = v194 - v55;
  v57 = *(a3 + 16);
  v58 = *(a3 + 24);
  sub_220CEF48C(a1, v45);
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) != 1)
  {
    v59 = *(v49 + 32);
    v59(v56, v45, v46);
    sub_220CEF48C(a2, v42);
    if (__swift_getEnumTagSinglePayload(v42, 1, v46) == 1)
    {
      (*(v49 + 8))(v56, v46);
      goto LABEL_5;
    }

    v208 = v46;
    v209 = v49;
    v66 = v216;
    v67 = OUTLINED_FUNCTION_14_4();
    (v59)(v67);
    sub_220DBF2F0();
    sub_220D3A5F8();
    v68 = v57;
    OUTLINED_FUNCTION_44_1();
    sub_220DBF300();
    v69 = v68;
    OUTLINED_FUNCTION_44_1();
    sub_220DBF2F0();
    v70 = v58;
    OUTLINED_FUNCTION_44_1();
    v71 = OUTLINED_FUNCTION_27_6();
    v207 = v56;
    if ((v71 & 1) != 0 && (sub_220DBE050(), v72 == 0.0) && (sub_220DBE050(), v73 == 0.0))
    {
      if (sub_220DC08F0())
      {
        OUTLINED_FUNCTION_19();
        if (!v74)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      else
      {
        OUTLINED_FUNCTION_19();
        if (!v74)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_21_8();
      v159 = OUTLINED_FUNCTION_10_18();
      OUTLINED_FUNCTION_34_2(v159, v160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v79 = OUTLINED_FUNCTION_15_7();
      *(v79 + 16) = xmmword_220DC17C0;
      v161 = *MEMORY[0x277D7B490];
      v162 = v223;
      OUTLINED_FUNCTION_13_13();
      v163 = OUTLINED_FUNCTION_59_0();
      v164(v163);
      v165 = sub_220DBE5E0();
      OUTLINED_FUNCTION_31_4(v165);
      v84 = v210;
      v166 = OUTLINED_FUNCTION_5_14();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
      sub_220DC07E0();
      OUTLINED_FUNCTION_42_1();

      sub_220CE1ABC(v84, &qword_27CF95228, &unk_220DC1E60);
      v170 = OUTLINED_FUNCTION_26_7();
      v171(v170);
      LODWORD(v201) = *MEMORY[0x277D7B408];
      v91 = v224;
      OUTLINED_FUNCTION_14_16();
      v172 = v217;
      v173(v213);
      v174 = sub_220DBF100();
      v65 = OUTLINED_FUNCTION_40_2(v174, &v228);
      v175 = sub_220D3A63C();
      OUTLINED_FUNCTION_30_5(v175);
      OUTLINED_FUNCTION_25_9();
      OUTLINED_FUNCTION_33_1();

      v176 = OUTLINED_FUNCTION_35_2();
      v177(v176, v172);
      v178 = OUTLINED_FUNCTION_24_9();
      v179(v178);
      *(v79 + 56) = MEMORY[0x277D837D0];
      v195 = sub_220CEFDB0();
      *(v79 + 64) = v195;
      *(v79 + 32) = v162;
      *(v79 + 40) = v66;
    }

    else
    {
      v75 = OUTLINED_FUNCTION_27_6();
      v76 = sub_220DC08F0();
      if ((v75 & 1) == 0)
      {
        if (v76)
        {
          OUTLINED_FUNCTION_19();
          if (!v74)
          {
            OUTLINED_FUNCTION_10();
          }
        }

        else
        {
          OUTLINED_FUNCTION_19();
          if (!v74)
          {
            OUTLINED_FUNCTION_10();
          }
        }

        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_21_8();
        v102 = OUTLINED_FUNCTION_10_18();
        OUTLINED_FUNCTION_29_4(v102);
        v195 = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_220DC1CC0;
        sub_220DC0800();
        v194[3] = *MEMORY[0x277D7B490];
        v105 = v223;
        v196 = *(v223 + 104);
        v206 = v223 + 104;
        v106 = OUTLINED_FUNCTION_59_0();
        v107(v106);
        v108 = sub_220DBE5E0();
        OUTLINED_FUNCTION_53_1(v108);
        v109 = v210;
        v110 = OUTLINED_FUNCTION_5_14();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
        v114 = v211;
        OUTLINED_FUNCTION_45_1();

        sub_220CE1ABC(v109, &qword_27CF95228, &unk_220DC1E60);
        v115 = *(v105 + 8);
        v223 = v105 + 8;
        v205 = v115;
        v116 = OUTLINED_FUNCTION_14_4();
        v117(v116);
        v204 = *MEMORY[0x277D7B408];
        v118 = v224;
        v119 = *(v224 + 104);
        v202 = v224 + 104;
        v203 = v119;
        v120 = v213;
        v119(v213);
        v121 = sub_220DBF100();
        OUTLINED_FUNCTION_40_2(v121, &v231);
        v200 = sub_220D3A63C();
        OUTLINED_FUNCTION_9_9();
        v122 = v212;
        v123 = sub_220DBE0B0();
        v125 = v124;

        v126 = *(v118 + 8);
        v224 = v118 + 8;
        v199 = v126;
        v65 = v217;
        v126(v120, v217);
        v127 = *(v218 + 8);
        v218 += 8;
        v198 = v127;
        v127(v114, v122);
        *(v104 + 56) = MEMORY[0x277D837D0];
        v197 = sub_220CEFDB0();
        *(v104 + 64) = v197;
        *(v104 + 32) = v123;
        *(v104 + 40) = v125;
        OUTLINED_FUNCTION_50_1();
        v128();
        v129 = OUTLINED_FUNCTION_5_14();
        OUTLINED_FUNCTION_63(v129, v130, v131, &v234);
        OUTLINED_FUNCTION_45_1();

        sub_220CE1ABC(v109, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_18_12(&v235);
        v132();
        OUTLINED_FUNCTION_49_1();
        v133();
        sub_220DBF0D0();
        OUTLINED_FUNCTION_9_9();
        v134 = sub_220DBE0B0();
        v136 = v135;

        OUTLINED_FUNCTION_32_3(&v229);
        v137();
        v138 = OUTLINED_FUNCTION_39_2();
        v139(v138);
        OUTLINED_FUNCTION_38_2();
        *(v104 + 96) = v141;
        *(v104 + 104) = v140;
        *(v104 + 72) = v134;
        *(v104 + 80) = v136;
        v142 = *MEMORY[0x277D7B498];
        OUTLINED_FUNCTION_50_1();
        v143();
        v144 = OUTLINED_FUNCTION_5_14();
        OUTLINED_FUNCTION_63(v144, v145, v146, &v234);
        OUTLINED_FUNCTION_45_1();

        sub_220CE1ABC(v109, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_18_12(&v235);
        v147();
        OUTLINED_FUNCTION_49_1();
        v148();
        v149 = v201;
        sub_220DBF0D0();
        OUTLINED_FUNCTION_9_9();
        v150 = v225;
        OUTLINED_FUNCTION_46_1(&v230);
        OUTLINED_FUNCTION_33_1();

        OUTLINED_FUNCTION_32_3(&v229);
        v151();
        v152 = OUTLINED_FUNCTION_39_2();
        v153(v152);
        OUTLINED_FUNCTION_38_2();
        *(v104 + 136) = v155;
        *(v104 + 144) = v154;
        *(v104 + 112) = v149;
        *(v104 + 120) = v66;
        sub_220DC05F0();
        OUTLINED_FUNCTION_17_0();

        v156 = *(v214 + 8);
        v156(v136, v150);
        v156(v221, v150);
        v157 = v222;
        v158 = v150;
        goto LABEL_36;
      }

      if (v76)
      {
        OUTLINED_FUNCTION_19();
        if (!v74)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      else
      {
        OUTLINED_FUNCTION_19();
        if (!v74)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_21_8();
      v77 = OUTLINED_FUNCTION_10_18();
      OUTLINED_FUNCTION_34_2(v77, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v79 = OUTLINED_FUNCTION_15_7();
      *(v79 + 16) = xmmword_220DC17C0;
      v80 = *MEMORY[0x277D7B490];
      OUTLINED_FUNCTION_13_13();
      v81 = OUTLINED_FUNCTION_59_0();
      v82(v81);
      v83 = sub_220DBE5E0();
      OUTLINED_FUNCTION_31_4(v83);
      v84 = v210;
      v85 = OUTLINED_FUNCTION_5_14();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
      sub_220DC07E0();
      OUTLINED_FUNCTION_42_1();

      sub_220CE1ABC(v84, &qword_27CF95228, &unk_220DC1E60);
      v89 = OUTLINED_FUNCTION_26_7();
      v90(v89);
      LODWORD(v201) = *MEMORY[0x277D7B408];
      v91 = v224;
      OUTLINED_FUNCTION_14_16();
      v66 = v217;
      v92(v213);
      v93 = sub_220DBF100();
      v65 = OUTLINED_FUNCTION_40_2(v93, &v228);
      v94 = sub_220D3A63C();
      OUTLINED_FUNCTION_30_5(v94);
      v95 = OUTLINED_FUNCTION_25_9();
      v97 = v96;

      v98 = OUTLINED_FUNCTION_35_2();
      v99(v98, v66);
      v100 = OUTLINED_FUNCTION_24_9();
      v101(v100);
      *(v79 + 56) = MEMORY[0x277D837D0];
      v195 = sub_220CEFDB0();
      *(v79 + 64) = v195;
      *(v79 + 32) = v95;
      *(v79 + 40) = v97;
    }

    v180 = *MEMORY[0x277D7B498];
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_54_0();
    v181();
    v182 = OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_63(v182, v183, v184, &v233);
    OUTLINED_FUNCTION_45_1();

    sub_220CE1ABC(v84, &qword_27CF95228, &unk_220DC1E60);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_18_12(&v232);
    v185();
    OUTLINED_FUNCTION_57_1();
    v186();
    v187 = v198;
    sub_220DBF0D0();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_46_1(&v227);
    OUTLINED_FUNCTION_33_1();

    OUTLINED_FUNCTION_32_3(&v226);
    v188();
    (v218)(v91, v69);
    v189 = v195;
    *(v79 + 96) = MEMORY[0x277D837D0];
    *(v79 + 104) = v189;
    *(v79 + 72) = v187;
    *(v79 + 80) = v66;
    sub_220DC05F0();
    OUTLINED_FUNCTION_17_0();

    v156 = *(v214 + 8);
    v190 = v225;
    v156(v69, v225);
    v156(v221, v190);
    v157 = v222;
    v158 = v190;
LABEL_36:
    v156(v157, v158);
    v191 = v208;
    v192 = *(v209 + 8);
    v192(v216, v208);
    v192(v207, v191);
    return v65;
  }

  v42 = v45;
LABEL_5:
  sub_220CE1ABC(v42, &qword_27CF94F90, &unk_220DC4410);
  if (qword_27CF94F40 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v60 = sub_220DBF410();
  __swift_project_value_buffer(v60, qword_27CF95F48);
  v61 = sub_220DBF3F0();
  v62 = sub_220DC0980();
  if (OUTLINED_FUNCTION_19_10(v62))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_16(&dword_220CD1000, v63, v64, "Failed to make yesterday platter string for Wind due to missing extrema values");
    OUTLINED_FUNCTION_17();
  }

  return 0;
}

uint64_t sub_220D71634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v240 = a1;
  v241 = a5;
  v250 = sub_220DC0300();
  v10 = OUTLINED_FUNCTION_0(v250);
  v257 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_21();
  v245 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22();
  v243 = v19;
  OUTLINED_FUNCTION_6_1();
  v252 = sub_220DC0920();
  v20 = OUTLINED_FUNCTION_0(v252);
  v255 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_21();
  v242 = v24;
  OUTLINED_FUNCTION_6_1();
  v247 = sub_220DC0910();
  v25 = OUTLINED_FUNCTION_0(v247);
  v256 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_21();
  v244 = v29;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v30 = OUTLINED_FUNCTION_0(v254);
  v246 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  v251 = v34 - v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v36);
  v249 = &v223 - v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v38);
  v253 = &v223 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v41 = OUTLINED_FUNCTION_18(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  v48 = OUTLINED_FUNCTION_62_0();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4();
  v248 = (v54 - v55);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v56);
  v58 = &v223 - v57;
  v60 = *(a6 + 16);
  v59 = *(a6 + 24);
  sub_220CEF48C(a3, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v48) != 1)
  {
    v61 = *(v51 + 32);
    v61(v58, v6, v48);
    sub_220CEF48C(a4, v46);
    if (__swift_getEnumTagSinglePayload(v46, 1, v48) == 1)
    {
      (*(v51 + 8))(v58, v48);
      goto LABEL_5;
    }

    v238 = v51;
    v239 = v48;
    v61(v248, v46, v48);
    sub_220DBF2F0();
    sub_220D3A5F8();
    v68 = v60;
    OUTLINED_FUNCTION_44_1();
    sub_220DBF300();
    v69 = v68;
    OUTLINED_FUNCTION_44_1();
    sub_220DBF2F0();
    v70 = v59;
    OUTLINED_FUNCTION_44_1();
    v71 = sub_220DBE520();
    v72 = OUTLINED_FUNCTION_27_6();
    v237 = v58;
    if ((v72 & 1) != 0 && (sub_220DBE050(), v73 == 0.0) && (sub_220DBE050(), v74 == 0.0))
    {
      v75 = sub_220DC08F0();
      switch(v71)
      {
        case 1:
          if (v75)
          {
            OUTLINED_FUNCTION_19();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_19();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          OUTLINED_FUNCTION_2_28();
          goto LABEL_166;
        case 2:
          OUTLINED_FUNCTION_12_19();
          if (v177)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          goto LABEL_165;
        case 3:
          OUTLINED_FUNCTION_12_19();
          if (v178)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          goto LABEL_165;
        case 4:
          OUTLINED_FUNCTION_12_19();
          if (v176)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          goto LABEL_165;
        case 5:
          OUTLINED_FUNCTION_12_19();
          if (v179)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          goto LABEL_165;
        case 6:
          OUTLINED_FUNCTION_12_19();
          if (v180)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          goto LABEL_165;
        default:
          OUTLINED_FUNCTION_12_19();
          if (v76)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

LABEL_165:
          OUTLINED_FUNCTION_2_0();
LABEL_166:
          v181 = OUTLINED_FUNCTION_10_18();
          v240 = v182;
          v241 = v181;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v183 = OUTLINED_FUNCTION_15_7();
          *(v183 + 16) = xmmword_220DC17C0;
          v184 = *MEMORY[0x277D7B490];
          v185 = v255;
          OUTLINED_FUNCTION_13_13();
          v186 = v242;
          OUTLINED_FUNCTION_58_1();
          v187();
          v188 = sub_220DBE5E0();
          OUTLINED_FUNCTION_31_4(v188);
          v189 = v243;
          OUTLINED_FUNCTION_9_8();
          __swift_storeEnumTagSinglePayload(v190, v191, v192, v193);
          sub_220DC07E0();
          v194 = v244;
          sub_220DC0270();

          sub_220CE1ABC(v189, &qword_27CF95228, &unk_220DC1E60);
          v195 = *(v185 + 8);
          v255 = v185 + 8;
          v233 = v195;
          v195(v186, v69);
          v232 = *MEMORY[0x277D7B408];
          v196 = v257;
          OUTLINED_FUNCTION_14_16();
          v197 = v245;
          v198 = v250;
          v199(v245);
          v200 = sub_220DBF100();
          OUTLINED_FUNCTION_40_2(v200, &v260);
          v201 = sub_220D3A63C();
          OUTLINED_FUNCTION_30_5(v201);
          v202 = v194;
          v203 = OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_51_1(v203, v204);

          v205 = *(v196 + 8);
          v257 = v196 + 8;
          v227 = v205;
          v205(v197, v198);
          v206 = *(v256 + 8);
          v256 += 8;
          v226 = v206;
          v206(v194, v194);
          *(v183 + 56) = MEMORY[0x277D837D0];
          v225 = sub_220CEFDB0();
          *(v183 + 64) = v225;
          v207 = v223;
          *(v183 + 32) = v224;
          *(v183 + 40) = v207;
          v208 = *MEMORY[0x277D7B498];
          OUTLINED_FUNCTION_58_1();
          OUTLINED_FUNCTION_54_0();
          v209();
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_63(v210, v211, v212, &v264);
          sub_220DC0270();

          sub_220CE1ABC(v189, &qword_27CF95228, &unk_220DC1E60);
          OUTLINED_FUNCTION_18_12(&v263);
          v213();
          v214 = v250;
          OUTLINED_FUNCTION_57_1();
          v215();
          v67 = sub_220DBF0D0();
          v172 = v254;
          v216 = v251;
          v217 = v251;
          sub_220DBE0B0();
          OUTLINED_FUNCTION_33_1();

          v227(v197, v214);
          OUTLINED_FUNCTION_32_3(v258);
          v218();
          v219 = v225;
          *(v183 + 96) = MEMORY[0x277D837D0];
          *(v183 + 104) = v219;
          *(v183 + 72) = v217;
          *(v183 + 80) = v202;
          OUTLINED_FUNCTION_52();
          sub_220DC05F0();
          OUTLINED_FUNCTION_17_0();

          v128 = *(v246 + 8);
          v128(v216, v172);
          break;
      }
    }

    else
    {
      v78 = OUTLINED_FUNCTION_27_6();
      v79 = sub_220DC08F0();
      if (v78)
      {
        switch(v71)
        {
          case 1:
            OUTLINED_FUNCTION_12_19();
            if (v86)
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            goto LABEL_115;
          case 2:
            OUTLINED_FUNCTION_12_19();
            if (v84)
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            goto LABEL_115;
          case 3:
            if (v79)
            {
              OUTLINED_FUNCTION_19();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            else
            {
              OUTLINED_FUNCTION_19();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            goto LABEL_64;
          case 4:
            OUTLINED_FUNCTION_12_19();
            if (v82)
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            goto LABEL_115;
          case 5:
            if (v79)
            {
              OUTLINED_FUNCTION_19();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            else
            {
              OUTLINED_FUNCTION_19();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

LABEL_64:
            OUTLINED_FUNCTION_2_28();
            goto LABEL_116;
          case 6:
            OUTLINED_FUNCTION_12_19();
            if (v88)
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            goto LABEL_115;
          default:
            OUTLINED_FUNCTION_12_19();
            if (v80)
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v77)
              {
                OUTLINED_FUNCTION_10();
              }
            }

LABEL_115:
            OUTLINED_FUNCTION_2_0();
LABEL_116:
            v90 = OUTLINED_FUNCTION_10_18();
            OUTLINED_FUNCTION_51_1(v90, v91);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
            v92 = OUTLINED_FUNCTION_15_7();
            *(v92 + 16) = xmmword_220DC17C0;
            v93 = *MEMORY[0x277D7B490];
            v94 = v255;
            v95 = *(v255 + 104);
            v240 = v255 + 104;
            v241 = v95;
            v96 = v242;
            OUTLINED_FUNCTION_58_1();
            v97();
            v98 = sub_220DBE5E0();
            OUTLINED_FUNCTION_53_1(v98);
            v99 = v243;
            OUTLINED_FUNCTION_9_8();
            __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
            sub_220DC07E0();
            v104 = v244;
            sub_220DC0270();

            sub_220CE1ABC(v99, &qword_27CF95228, &unk_220DC1E60);
            v105 = *(v94 + 8);
            v255 = v94 + 8;
            v235 = v105;
            v105(v96, v69);
            v234 = *MEMORY[0x277D7B408];
            v106 = v257;
            OUTLINED_FUNCTION_37_2();
            v107 = v245;
            v108 = v250;
            v109(v245);
            v110 = sub_220DBF100();
            OUTLINED_FUNCTION_40_2(v110, &v262);
            v230 = sub_220D3A63C();
            v226 = OUTLINED_FUNCTION_61_0();
            v225 = v111;

            v112 = *(v106 + 8);
            v257 = v106 + 8;
            v229 = v112;
            v112(v107, v108);
            v113 = *(v256 + 8);
            v256 += 8;
            v228 = v113;
            v113(v104, v60);
            *(v92 + 56) = MEMORY[0x277D837D0];
            v227 = sub_220CEFDB0();
            *(v92 + 64) = v227;
            v114 = v225;
            *(v92 + 32) = v226;
            *(v92 + 40) = v114;
            (v241)(v96, *MEMORY[0x277D7B498], v252);
            OUTLINED_FUNCTION_9_8();
            OUTLINED_FUNCTION_63(v115, v116, v117, &v266);
            sub_220DC0270();

            sub_220CE1ABC(v99, &qword_27CF95228, &unk_220DC1E60);
            OUTLINED_FUNCTION_18_12(&v265);
            v118();
            v119 = v250;
            OUTLINED_FUNCTION_16_16();
            v120();
            v67 = sub_220DBF0D0();
            v121 = v254;
            v122 = v251;
            v123 = sub_220DBE0B0();
            v125 = v124;

            v229(v107, v119);
            OUTLINED_FUNCTION_32_3(&v259);
            v126();
            v127 = v227;
            *(v92 + 96) = MEMORY[0x277D837D0];
            *(v92 + 104) = v127;
            *(v92 + 72) = v123;
            *(v92 + 80) = v125;
            OUTLINED_FUNCTION_52();
            sub_220DC05F0();
            OUTLINED_FUNCTION_17_0();

            v128 = *(v246 + 8);
            v128(v122, v121);
            v128(v249, v121);
            v129 = v253;
            v130 = v121;
            break;
        }

        goto LABEL_168;
      }

      switch(v71)
      {
        case 1:
          OUTLINED_FUNCTION_12_19();
          if ((v87 & 1) == 0)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }

            goto LABEL_44;
          }

          OUTLINED_FUNCTION_29();
          if (!v77)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 2:
          OUTLINED_FUNCTION_12_19();
          if (v85)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }

            goto LABEL_44;
          }

          OUTLINED_FUNCTION_29();
          if (!v77)
          {
            OUTLINED_FUNCTION_10();
          }

          goto LABEL_119;
        case 3:
          if (v79)
          {
            OUTLINED_FUNCTION_19();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }

LABEL_112:
            OUTLINED_FUNCTION_3_25();
          }

          else
          {
            OUTLINED_FUNCTION_19();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }

            OUTLINED_FUNCTION_2_28();
          }

          break;
        case 4:
          OUTLINED_FUNCTION_12_19();
          if (v83)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          goto LABEL_119;
        case 5:
          if (v79)
          {
            OUTLINED_FUNCTION_19();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_19();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          goto LABEL_112;
        case 6:
          OUTLINED_FUNCTION_12_19();
          if (v89)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

LABEL_119:
          OUTLINED_FUNCTION_2_0();
          break;
        default:
          OUTLINED_FUNCTION_12_19();
          if (v81)
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }
          }

          else
          {
            OUTLINED_FUNCTION_29();
            if (!v77)
            {
              OUTLINED_FUNCTION_10();
            }

LABEL_44:
            OUTLINED_FUNCTION_36_2();
          }

          break;
      }

      v131 = OUTLINED_FUNCTION_10_18();
      OUTLINED_FUNCTION_29_4(v131);
      v224 = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_220DC1CC0;
      sub_220DC0800();
      LODWORD(v226) = *MEMORY[0x277D7B490];
      v134 = v255;
      v135 = *(v255 + 104);
      v240 = v255 + 104;
      v241 = v135;
      v136 = v242;
      v137 = v252;
      (v135)(v242);
      v235 = sub_220DBE5E0();
      v138 = v243;
      OUTLINED_FUNCTION_9_8();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v143 = v244;
      sub_220DC0270();

      sub_220CE1ABC(v138, &qword_27CF95228, &unk_220DC1E60);
      v144 = *(v134 + 8);
      v255 = v134 + 8;
      v236 = v144;
      v144(v136, v137);
      v234 = *MEMORY[0x277D7B408];
      v145 = v257;
      OUTLINED_FUNCTION_37_2();
      v146 = v245;
      v147(v245);
      v148 = sub_220DBF100();
      OUTLINED_FUNCTION_40_2(v148, &v262);
      v230 = sub_220D3A63C();
      v149 = v247;
      v150 = sub_220DBE0B0();
      v152 = v151;

      v227 = *(v145 + 8);
      v257 = v145 + 8;
      v153 = v250;
      v227(v146, v250);
      v229 = *(v256 + 8);
      v256 += 8;
      v229(v143, v149);
      *(v133 + 56) = MEMORY[0x277D837D0];
      v228 = sub_220CEFDB0();
      *(v133 + 64) = v228;
      *(v133 + 32) = v150;
      *(v133 + 40) = v152;
      OUTLINED_FUNCTION_58_1();
      v241();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_63(v154, v155, v156, &v265);
      v157 = v143;
      sub_220DC0270();

      sub_220CE1ABC(v138, &qword_27CF95228, &unk_220DC1E60);
      OUTLINED_FUNCTION_18_12(&v266);
      v158();
      OUTLINED_FUNCTION_16_16();
      v159();
      sub_220DBF0D0();
      v160 = v247;
      v161 = sub_220DBE0B0();
      v163 = v162;

      v227(v146, v153);
      v229(v157, v160);
      OUTLINED_FUNCTION_38_2();
      *(v133 + 96) = v165;
      *(v133 + 104) = v164;
      *(v133 + 72) = v161;
      *(v133 + 80) = v163;
      (v241)(v136, *MEMORY[0x277D7B498], v252);
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_63(v166, v167, v168, &v265);
      sub_220DC0270();

      sub_220CE1ABC(v138, &qword_27CF95228, &unk_220DC1E60);
      OUTLINED_FUNCTION_18_12(&v266);
      v169();
      OUTLINED_FUNCTION_16_16();
      v170();
      v171 = v231;
      v67 = sub_220DBF0D0();
      v172 = v254;
      OUTLINED_FUNCTION_46_1(&v261);
      OUTLINED_FUNCTION_33_1();

      v173 = OUTLINED_FUNCTION_9_9();
      (v227)(v173);
      v229(v157, v160);
      OUTLINED_FUNCTION_38_2();
      *(v133 + 136) = v175;
      *(v133 + 144) = v174;
      *(v133 + 112) = v171;
      *(v133 + 120) = v160;
      OUTLINED_FUNCTION_52();
      sub_220DC05F0();
      OUTLINED_FUNCTION_17_0();

      v128 = *(v246 + 8);
      v128(v138, v172);
    }

    v128(v249, v172);
    v129 = v253;
    v130 = v172;
LABEL_168:
    v128(v129, v130);
    v220 = *(v238 + 8);
    v221 = v239;
    v220(v248, v239);
    v220(v237, v221);
    return v67;
  }

  v46 = v6;
LABEL_5:
  sub_220CE1ABC(v46, &qword_27CF94F90, &unk_220DC4410);
  if (qword_27CF94F40 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v62 = sub_220DBF410();
  __swift_project_value_buffer(v62, qword_27CF95F48);
  v63 = sub_220DBF3F0();
  v64 = sub_220DC0980();
  if (OUTLINED_FUNCTION_19_10(v64))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_16(&dword_220CD1000, v65, v66, "Failed to make future day platter string for Wind due to missing extrema values");
    OUTLINED_FUNCTION_17();
  }

  return 0;
}

uint64_t sub_220D7336C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v143 = sub_220DC0300();
  v149 = *(v143 - 8);
  v4 = v149[8];
  MEMORY[0x28223BE20](v143);
  v137 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v136 = &v119 - v8;
  v146 = sub_220DC0920();
  v148 = *(v146 - 8);
  v9 = *(v148 + 64);
  MEMORY[0x28223BE20](v146);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_220DC0910();
  v145 = *(v141 - 8);
  v12 = *(v145 + 64);
  MEMORY[0x28223BE20](v141);
  v140 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v139 = *(v14 - 8);
  v15 = *(v139 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v119 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v119 - v22;
  v24 = *(a3 + 16);
  v25 = *(a3 + 24);
  sub_220DBF2F0();
  sub_220D3A5F8();
  v26 = v24;
  sub_220DBE040();
  sub_220DBF300();
  v26;
  sub_220DBE040();
  sub_220DBF2F0();
  sub_220DBE040();
  v27 = sub_220DBE020();
  v147 = v14;
  v138 = v18;
  v142 = v21;
  v144 = v23;
  if (v27)
  {
    sub_220DBE050();
    if (v28 == 0.0)
    {
      sub_220DBE050();
      if (v29 == 0.0)
      {
        if (sub_220DC08F0())
        {
          if (qword_280FA6600 == -1)
          {
            goto LABEL_19;
          }
        }

        else if (qword_280FA6600 == -1)
        {
LABEL_19:
          v134 = sub_220DBE240();
          v135 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_220DC17C0;
          v98 = *MEMORY[0x277D7B490];
          v99 = v148;
          v100 = *(v148 + 104);
          v132 = (v148 + 104);
          v133 = v100;
          v101 = v11;
          v102 = v146;
          v100(v11, v98, v146);
          v131 = sub_220DBE5E0();
          v103 = v136;
          __swift_storeEnumTagSinglePayload(v136, 1, 1, v131);
          sub_220DC07E0();
          v104 = v140;
          sub_220DC0270();

          sub_220CE1ABC(v103, &qword_27CF95228, &unk_220DC1E60);
          v105 = *(v99 + 8);
          v148 = v99 + 8;
          v130 = v105;
          v105(v101, v102);
          LODWORD(v129) = *MEMORY[0x277D7B408];
          v106 = v149[13];
          v125 = (v149 + 13);
          v128 = v106;
          v107 = v137;
          v108 = v143;
          v106(v137);
          v127 = sub_220DBF100();
          sub_220DBF0D0();
          v126 = sub_220D3A63C();
          v109 = v141;
          v110 = sub_220DBE0B0();
          v112 = v111;

          v124 = v149[1];
          ++v149;
          v124(v107, v108);
          v145 = *(v145 + 8);
          (v145)(v104, v109);
          *(v34 + 56) = MEMORY[0x277D837D0];
          v123 = sub_220CEFDB0();
          *(v34 + 64) = v123;
          *(v34 + 32) = v110;
          *(v34 + 40) = v112;
          v113 = v146;
          v133(v101, *MEMORY[0x277D7B498], v146);
          __swift_storeEnumTagSinglePayload(v103, 1, 1, v131);
          sub_220DC07E0();
          sub_220DC0270();

          sub_220CE1ABC(v103, &qword_27CF95228, &unk_220DC1E60);
          v130(v101, v113);
          v114 = v143;
          v128(v107, v129, v143);
          sub_220DBF0D0();
          v55 = v109;
          v56 = v138;
          v57 = sub_220DBE0B0();
          v59 = v115;

          v124(v107, v114);
          v54 = v147;
          v60 = v104;
          goto LABEL_20;
        }

        swift_once();
        goto LABEL_19;
      }
    }
  }

  v30 = sub_220DBE020();
  v31 = sub_220DC08F0();
  if (v30)
  {
    if (v31)
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }
    }

    else if (qword_280FA6600 == -1)
    {
LABEL_15:
      v134 = sub_220DBE240();
      v135 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_220DC17C0;
      v35 = *MEMORY[0x277D7B490];
      v36 = v148;
      v37 = *(v148 + 104);
      v132 = (v148 + 104);
      v133 = v37;
      v38 = v11;
      v39 = v146;
      v37(v11, v35, v146);
      v131 = sub_220DBE5E0();
      v40 = v136;
      __swift_storeEnumTagSinglePayload(v136, 1, 1, v131);
      sub_220DC07E0();
      v41 = v140;
      sub_220DC0270();

      sub_220CE1ABC(v40, &qword_27CF95228, &unk_220DC1E60);
      v42 = *(v36 + 8);
      v148 = v36 + 8;
      v130 = v42;
      v42(v11, v39);
      LODWORD(v129) = *MEMORY[0x277D7B408];
      v43 = v149;
      v44 = v149[13];
      v127 = (v149 + 13);
      v128 = v44;
      v45 = v137;
      v46 = v143;
      v44(v137);
      v126 = sub_220DBF100();
      sub_220DBF0D0();
      v125 = sub_220D3A63C();
      v47 = v41;
      v48 = v141;
      v49 = sub_220DBE0B0();
      v122 = v50;

      v51 = v43[1];
      v149 = v43 + 1;
      v124 = v51;
      v51(v45, v46);
      v145 = *(v145 + 8);
      (v145)(v47, v48);
      *(v34 + 56) = MEMORY[0x277D837D0];
      v123 = sub_220CEFDB0();
      *(v34 + 64) = v123;
      v52 = v122;
      *(v34 + 32) = v49;
      *(v34 + 40) = v52;
      v53 = v146;
      v54 = v147;
      v133(v38, *MEMORY[0x277D7B498], v146);
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v131);
      sub_220DC07E0();
      sub_220DC0270();

      sub_220CE1ABC(v40, &qword_27CF95228, &unk_220DC1E60);
      v130(v38, v53);
      v128(v45, v129, v46);
      sub_220DBF0D0();
      v55 = v141;
      v56 = v138;
      v57 = sub_220DBE0B0();
      v59 = v58;

      v124(v45, v143);
      v60 = v47;
LABEL_20:
      (v145)(v60, v55);
      v116 = v123;
      *(v34 + 96) = MEMORY[0x277D837D0];
      *(v34 + 104) = v116;
      *(v34 + 72) = v57;
      *(v34 + 80) = v59;
      v96 = sub_220DC05F0();
      v88 = v142;
      goto LABEL_21;
    }

    swift_once();
    goto LABEL_15;
  }

  if (v31)
  {
    v32 = v143;
    if (qword_280FA6600 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  v32 = v143;
  if (qword_280FA6600 != -1)
  {
LABEL_23:
    swift_once();
  }

LABEL_17:
  v122 = sub_220DBE240();
  v135 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_220DC1CC0;
  sub_220DC0800();
  v121 = *MEMORY[0x277D7B490];
  v63 = v148;
  v64 = *(v148 + 104);
  v133 = (v148 + 104);
  v134 = v64;
  v65 = v11;
  v66 = v146;
  v64(v11);
  v131 = sub_220DBE5E0();
  v67 = v136;
  __swift_storeEnumTagSinglePayload(v136, 1, 1, v131);
  v68 = v140;
  sub_220DC0270();

  sub_220CE1ABC(v67, &qword_27CF95228, &unk_220DC1E60);
  v69 = *(v63 + 8);
  v148 = v63 + 8;
  v132 = v69;
  v69(v11, v66);
  LODWORD(v130) = *MEMORY[0x277D7B408];
  v70 = v149;
  v71 = v149[13];
  v128 = (v149 + 13);
  v129 = v71;
  v72 = v137;
  v71(v137);
  v123 = sub_220DBF100();
  sub_220DBF0D0();
  v127 = sub_220D3A63C();
  v73 = v141;
  v74 = sub_220DBE0B0();
  v120 = v75;

  v76 = v70[1];
  v149 = v70 + 1;
  v126 = v76;
  v76(v72, v32);
  v77 = *(v145 + 8);
  v145 += 8;
  v125 = v77;
  v77(v68, v73);
  *(v62 + 56) = MEMORY[0x277D837D0];
  v124 = sub_220CEFDB0();
  *(v62 + 64) = v124;
  v78 = v120;
  *(v62 + 32) = v74;
  *(v62 + 40) = v78;
  v79 = v146;
  v134(v65, v121, v146);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v131);
  sub_220DC07E0();
  sub_220DC0270();

  sub_220CE1ABC(v67, &qword_27CF95228, &unk_220DC1E60);
  v132(v65, v79);
  v80 = v32;
  v129(v72, v130, v32);
  sub_220DBF0D0();
  v81 = sub_220DBE0B0();
  v83 = v82;

  v126(v72, v80);
  v84 = v73;
  v125(v68, v73);
  v85 = v124;
  *(v62 + 96) = MEMORY[0x277D837D0];
  *(v62 + 104) = v85;
  *(v62 + 72) = v81;
  *(v62 + 80) = v83;
  v86 = v146;
  v54 = v147;
  v134(v65, *MEMORY[0x277D7B498], v146);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v131);
  sub_220DC07E0();
  sub_220DC0270();

  sub_220CE1ABC(v67, &qword_27CF95228, &unk_220DC1E60);
  v87 = v65;
  v88 = v142;
  v132(v87, v86);
  v89 = v72;
  v90 = v143;
  v129(v72, v130, v143);
  sub_220DBF0D0();
  v91 = v138;
  v92 = sub_220DBE0B0();
  v94 = v93;

  v126(v89, v90);
  v125(v140, v84);
  v95 = v124;
  *(v62 + 136) = MEMORY[0x277D837D0];
  *(v62 + 144) = v95;
  *(v62 + 112) = v92;
  *(v62 + 120) = v94;
  v56 = v91;
  v96 = sub_220DC05F0();
LABEL_21:

  v117 = *(v139 + 8);
  v117(v56, v54);
  v117(v88, v54);
  v117(v144, v54);
  return v96;
}

void OUTLINED_FUNCTION_37_2()
{
  v2 = *(v0 + 104);
  *(v1 - 312) = v0 + 104;
  *(v1 - 304) = v2;
}

uint64_t OUTLINED_FUNCTION_40_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_220DBF0D0();
}

uint64_t OUTLINED_FUNCTION_42_1()
{
  v2 = *(v0 - 224);

  return sub_220DC0270();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_220DBE040();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_220DC0270();
}

uint64_t OUTLINED_FUNCTION_46_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 160);

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t result, uint64_t a2)
{
  *(v2 - 376) = result;
  *(v2 - 384) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_0()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);
  v4 = *(v0 - 192);

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return sub_220DBF310();
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, *(a4 - 256));

  return sub_220DC07E0();
}

uint64_t SunriseSunsetDetailChartContent.init(model:style:sampleBlocks:)@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_220D7B5E8(a1, a4);
  v8 = type metadata accessor for SunriseSunsetDetailChartContent();
  memcpy((a4 + *(v8 + 20)), a2, 0x90uLL);
  v9 = sub_220D7494C(a1, a3);

  result = sub_220D7B644(a1, type metadata accessor for SunriseSunsetDetailChartViewModel);
  *(a4 + *(v8 + 24)) = v9;
  return result;
}

uint64_t type metadata accessor for SunriseSunsetDetailChartContent()
{
  result = qword_27CF95E00;
  if (!qword_27CF95E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D7494C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220DC04A0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = v12;
  v30 = v11;
  v31 = a2;
  v17 = *(v4 + 20);
  v18 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v19 = *(v5 + 72);
  v20 = MEMORY[0x277D84F90];
  do
  {
    sub_220D7B5E8(v18, v8);
    v21 = *&v8[v17];
    sub_220D7B644(v8, type metadata accessor for DetailChartDataElement);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220D56758(0, *(v20 + 16) + 1, 1, v20);
      v20 = v24;
    }

    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_220D56758(v22 > 1, v23 + 1, 1, v20);
      v20 = v25;
    }

    *(v20 + 16) = v23 + 1;
    *(v20 + 8 * v23 + 32) = v21;
    v18 += v19;
    --v16;
  }

  while (v16);

  result = sub_220DC0480();
  if (*(v15 + 16))
  {
    v27 = sub_220DC0490();
    (*(v29 + 8))(v14, v30);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t SunriseSunsetDetailChartContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D38, &qword_220DC5840);
  OUTLINED_FUNCTION_0(v87);
  v88 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_4(&v81 - v7);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D40, &qword_220DC5848);
  v8 = OUTLINED_FUNCTION_0(v104);
  v106 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v103 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_4(&v81 - v14);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D48, &qword_220DC5850);
  v15 = OUTLINED_FUNCTION_0(v102);
  v105 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_4(&v81 - v20);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D50, &qword_220DC5858);
  v21 = OUTLINED_FUNCTION_0(v99);
  v84 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_4(&v81 - v26);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D58, &qword_220DC5860);
  v27 = OUTLINED_FUNCTION_0(v94);
  v100 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v33);
  v35 = &v81 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D60, &qword_220DC5868);
  OUTLINED_FUNCTION_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  v43 = &v81 - v42;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D68, &qword_220DC5870);
  v44 = OUTLINED_FUNCTION_0(v96);
  v95 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v48);
  v50 = &v81 - v49;
  v109 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D70, &qword_220DC5878);
  sub_220D77D34();
  sub_220DBF670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DA8, &qword_220DC5898);
  sub_220CE161C(&qword_27CF95DB0, &qword_27CF95D60, &qword_220DC5868);
  sub_220D7803C();
  v51 = v50;
  v82 = v50;
  sub_220DBF4B0();
  (*(v38 + 8))(v43, v36);
  v81 = v35;
  sub_220D75500(v35);
  v52 = v90;
  sub_220D75BE0(v90);
  v53 = v83;
  sub_220D762C0(v83);
  sub_220D766C4(v97);
  v108 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DD0, &qword_220DC58A8);
  sub_220D7983C();
  v54 = v86;
  sub_220DBF670();
  v107 = v2;
  sub_220DBF590();
  sub_220CE161C(&qword_27CF95DF8, &qword_27CF95D38, &qword_220DC5840);
  v55 = v85;
  v56 = v87;
  sub_220DBF500();
  (*(v88 + 8))(v54, v56);
  v57 = v91;
  (*(v95 + 16))(v91, v51, v96);
  v110[0] = v57;
  v58 = *(v100 + 16);
  v59 = v92;
  v60 = v94;
  v58(v92, v35, v94);
  v110[1] = v59;
  v61 = v93;
  v58(v93, v52, v60);
  v110[2] = v61;
  v62 = v84;
  v63 = v98;
  v64 = v53;
  v65 = v99;
  (*(v84 + 16))(v98, v53, v99);
  v110[3] = v63;
  v66 = v105;
  v67 = v101;
  v68 = v97;
  v69 = v102;
  (*(v105 + 16))(v101, v97, v102);
  v110[4] = v67;
  v70 = v106;
  v71 = v103;
  v72 = v104;
  (*(v106 + 16))(v103, v55, v104);
  v110[5] = v71;
  sub_220D76CC4(v110, v89);
  v73 = *(v70 + 8);
  v106 = v70 + 8;
  v73(v55, v72);
  v74 = *(v66 + 8);
  v105 = v66 + 8;
  v74(v68, v69);
  v75 = *(v62 + 8);
  v75(v64, v65);
  v76 = *(v100 + 8);
  v77 = v94;
  v76(v90, v94);
  v76(v81, v77);
  v78 = *(v95 + 8);
  v79 = v96;
  v78(v82, v96);
  v73(v103, v104);
  v74(v101, v102);
  v75(v98, v99);
  v76(v93, v77);
  v76(v92, v77);
  return (v78)(v91, v79);
}

uint64_t sub_220D75500@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for SunriseSunsetDetailChartContent();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E48, &qword_220DC5978);
  v39 = *(v38 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v36 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E40, &qword_220DC5970);
  v42 = *(v40 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v36 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E38, &qword_220DC5968);
  v44 = *(v43 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v37 = &v36 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E28, &qword_220DC5958);
  v46 = *(v45 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v36 - v15;
  v16 = *(v3 + 32);
  v36 = v1;
  *&v55[0] = *(v1 + v16);
  swift_getKeyPath();
  sub_220D7B5E8(v1, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_220D7AD94(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957B8, &qword_220DC3078);
  sub_220DBF6B0();
  sub_220CE161C(qword_27CF957C0, &qword_27CF957B8, &qword_220DC3078);
  sub_220DC0090();
  v19 = sub_220D7A90C();
  v20 = v38;
  sub_220DBF4F0();
  v21 = v20;
  (*(v39 + 8))(v8, v20);
  v22 = v36;
  v23 = (v36 + *(v3 + 28));
  v24 = v23[4];
  sub_220DBF720();
  *&v55[0] = v21;
  *(&v55[0] + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v40;
  sub_220DBF560();
  sub_220D7AD40(v54);
  (*(v42 + 8))(v11, v27);
  v28 = *v23;

  sub_220DC01B0();
  sub_220DC01C0();
  sub_220DBF7B0();
  v51 = v55[0];
  v52 = v55[1];
  v53 = v56;
  v49 = v27;
  v50 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CDF838];
  v31 = MEMORY[0x277CDF828];
  v32 = v41;
  v33 = v43;
  sub_220DBF4A0();
  sub_220D7AE00(v55);
  (*(v44 + 8))(v26, v33);
  v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E30, &qword_220DC5960);
  *&v51 = v33;
  *(&v51 + 1) = v30;
  *&v52 = v29;
  *(&v52 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  *&v51 = sub_220DBF590();
  *(&v51 + 1) = MEMORY[0x277CBB2F8];
  swift_getOpaqueTypeConformance2();
  v34 = v45;
  sub_220DBF500();
  return (*(v46 + 8))(v32, v34);
}

uint64_t sub_220D75BE0@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for SunriseSunsetDetailChartContent();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E48, &qword_220DC5978);
  v39 = *(v38 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v36 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E40, &qword_220DC5970);
  v42 = *(v40 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v36 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E38, &qword_220DC5968);
  v44 = *(v43 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v37 = &v36 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E28, &qword_220DC5958);
  v46 = *(v45 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v36 - v15;
  v16 = *(v3 + 32);
  v36 = v1;
  *&v55[0] = *(v1 + v16);
  swift_getKeyPath();
  sub_220D7B5E8(v1, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_220D7AD94(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957B8, &qword_220DC3078);
  sub_220DBF6B0();
  sub_220CE161C(qword_27CF957C0, &qword_27CF957B8, &qword_220DC3078);
  sub_220DC0090();
  v19 = sub_220D7A90C();
  v20 = v38;
  sub_220DBF4F0();
  v21 = v20;
  (*(v39 + 8))(v8, v20);
  v22 = v36;
  v23 = v36 + *(v3 + 28);
  v24 = *(v23 + 32);
  sub_220DBF720();
  *&v55[0] = v21;
  *(&v55[0] + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v40;
  sub_220DBF560();
  sub_220D7AD40(v54);
  (*(v42 + 8))(v11, v27);
  v28 = *(v23 + 8);

  sub_220DC01B0();
  sub_220DC01C0();
  sub_220DBF7B0();
  v51 = v55[0];
  v52 = v55[1];
  v53 = v56;
  v49 = v27;
  v50 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CDF838];
  v31 = MEMORY[0x277CDF828];
  v32 = v41;
  v33 = v43;
  sub_220DBF4A0();
  sub_220D7AE00(v55);
  (*(v44 + 8))(v26, v33);
  v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E30, &qword_220DC5960);
  *&v51 = v33;
  *(&v51 + 1) = v30;
  *&v52 = v29;
  *(&v52 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  *&v51 = sub_220DBF590();
  *(&v51 + 1) = MEMORY[0x277CBB2F8];
  swift_getOpaqueTypeConformance2();
  v34 = v45;
  sub_220DBF500();
  return (*(v46 + 8))(v32, v34);
}

uint64_t sub_220D762C0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED0, &unk_220DC59D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_220DBF6D0();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E60, &qword_220DC5988);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E58, &qword_220DC5980);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  sub_220DBFA00();
  v43[0] = 0;
  sub_220DBF5A0();

  sub_220DBF6C0();
  v18 = (v1 + *(type metadata accessor for SunriseSunsetDetailChartContent() + 20));
  v19 = v18[5];
  sub_220DBF720();
  v20 = MEMORY[0x277CBB450];
  sub_220DBF560();
  sub_220D7AD40(v43);
  (*(v32 + 8))(v7, v4);
  v42 = v18[6];
  v38 = v4;
  v39 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x277CE0F78];
  v23 = MEMORY[0x277CE0F60];
  v24 = v33;
  sub_220DBF4A0();
  (*(v34 + 8))(v12, v24);
  v25 = v18[7];
  v26 = v18[8];
  v27 = v18[9];
  v28 = v18[10];
  v38 = v24;
  v39 = v22;
  v40 = OpaqueTypeConformance2;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_220DBF530();
  return (*(v36 + 8))(v17, v29);
}

uint64_t sub_220D766C4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_220DBF5E0();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = sub_220DBF6F0();
  v42 = *(v40 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE0, &qword_220DC58B0);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v37 = &v36 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E68, &qword_220DC5990);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v39 = &v36 - v20;
  sub_220DBFA00();
  v21 = v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 20);
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v52 = *(v21 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  sub_220DBF5A0();

  sub_220DBF6E0();
  v22 = v41;
  sub_220DBF5D0();
  v51 = v1;
  sub_220DC0120();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE8, &qword_220DC58B8);
  v35 = sub_220D79A64();
  v24 = MEMORY[0x277CBB468];
  v25 = v37;
  v26 = v40;
  sub_220DBF480();
  (*(v47 + 8))(v22, v48);
  (*(v42 + 8))(v12, v26);
  v27 = sub_220DBFEE0();
  v55 = v35;
  v56 = v27;
  v52 = v26;
  v53 = v23;
  v54 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x277CE0F78];
  v30 = MEMORY[0x277CE0F60];
  v31 = v39;
  v32 = v43;
  sub_220DBF4A0();

  (*(v44 + 8))(v25, v32);
  v50 = v1;
  sub_220DBF590();
  v52 = v32;
  v53 = v29;
  v54 = OpaqueTypeConformance2;
  v55 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v45;
  sub_220DBF500();
  return (*(v46 + 8))(v31, v33);
}

uint64_t sub_220D76CC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EA8, &unk_220DC59B0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D68, &qword_220DC5870);
  sub_220CE161C(&qword_27CF95DB0, &qword_27CF95D60, &qword_220DC5868);
  sub_220D7803C();
  (*(*(v9 - 8) + 16))(v8, *a1, v9);
  v21[0] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D58, &qword_220DC5860);
  sub_220D7A90C();
  sub_220DBF590();
  v11 = &v8[v5[14]];
  v12 = *(*(v10 - 8) + 16);
  v12(v11, a1[1], v10);
  v21[1] = v11;
  v13 = &v8[v5[18]];
  v12(v13, a1[2], v10);
  v21[2] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D50, &qword_220DC5858);
  sub_220DBF6D0();
  v15 = &v8[v5[22]];
  (*(*(v14 - 8) + 16))(v15, a1[3], v14);
  v21[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D48, &qword_220DC5850);
  sub_220DBF6F0();
  sub_220D79A64();
  v17 = &v8[v5[26]];
  (*(*(v16 - 8) + 16))(v17, a1[4], v16);
  v21[4] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D40, &qword_220DC5848);
  sub_220CE161C(&qword_27CF95DF8, &qword_27CF95D38, &qword_220DC5840);
  v19 = &v8[v5[30]];
  (*(*(v18 - 8) + 16))(v19, a1[5], v18);
  v21[5] = v19;
  return sub_220D7AB1C(v21, a2);
}

uint64_t sub_220D76FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EF8, &unk_220DC5A20);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D88, &qword_220DC5880);
  sub_220D77DC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v8, *a1, v9);
  v12 = *(v5 + 56);
  v11(&v8[v12], a1[1], v9);
  v13 = *(v5 + 72);
  v11(&v8[v13], a1[2], v9);
  v14 = *(v10 + 32);
  v14(a2, v8, v9);
  v14(a2 + *(v5 + 56), &v8[v12], v9);
  return (v14)(a2 + *(v5 + 72), &v8[v13], v9);
}

uint64_t sub_220D77140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC8, &qword_220DC59D0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC0, &qword_220DC59C8);
  sub_220DBF600();
  sub_220DBF6F0();
  sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E68, &qword_220DC5990);
  sub_220D79A64();
  v12 = *(v5 + 56);
  v13 = a1[1];
  v14 = *(v11 - 8);
  (*(v14 + 16))(&v8[v12], v13, v11);
  (*(v10 + 32))(a2, v8, v9);
  return (*(v14 + 32))(a2 + *(v5 + 56), &v8[v12], v11);
}

uint64_t sub_220D77318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E90, &qword_220DC59A8) - 8);
  v5 = *(*v4 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  type metadata accessor for ChartPointMarkSeriesContent(0);
  sub_220D7B1E4(&qword_27CF95E98, type metadata accessor for ChartPointMarkSeriesContent);
  sub_220D7B5E8(*a1, v8);
  type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  sub_220D7B1E4(&qword_27CF95EA0, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
  v9 = v4[14];
  sub_220D7B5E8(a1[1], &v8[v9]);
  sub_220D7AD94(v8, a2);
  return sub_220D7AD94(&v8[v9], a2 + v4[14]);
}

uint64_t sub_220D7749C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E70, &qword_220DC5998) - 8);
  v5 = *(*v4 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  type metadata accessor for StyledLineMark(0);
  sub_220D7B1E4(&qword_27CF95E78, type metadata accessor for StyledLineMark);
  sub_220D7B5E8(*a1, v8);
  sub_220D7A988();
  v9 = v4[14];
  sub_220D7AA3C(a1[1], &v8[v9]);
  sub_220D7AD94(v8, a2);
  return sub_220D7AAAC(&v8[v9], a2 + v4[14]);
}

uint64_t sub_220D775C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for SunriseSunsetDetailChartContent();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D88, &qword_220DC5880);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v63 = v55 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v62 = v55 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v74 = v55 - v19;
  MEMORY[0x28223BE20](v18);
  v69 = v55 - v20;
  v59 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  v21 = *(v59 + 28);
  v22 = a1;
  v57 = a1;
  v23 = *(a1 + v21);
  v70 = (v22 + *(v4 + 28));
  v24 = v70[14];
  v79 = v23;
  v58 = type metadata accessor for SunriseSunsetDetailChartContent;
  sub_220D7B5E8(v22, v7);
  v25 = *(v5 + 80);
  v72 = (v25 + 16) & ~v25;
  v73 = v25;
  v26 = (v6 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = v26;
  v27 = swift_allocObject();
  v71 = type metadata accessor for SunriseSunsetDetailChartContent;
  sub_220D7AD94(v7, v27 + ((v25 + 16) & ~v25));
  *(v27 + v26) = v24;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  v68 = sub_220DBE560();
  v55[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC0, &qword_220DC59C8);
  v29 = sub_220CE161C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D90, &qword_220DC5888);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D98, &qword_220DC5890);
  v32 = sub_220DBF600();
  v75 = sub_220DBF6F0();
  v76 = MEMORY[0x277CBB468];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
  v75 = v31;
  v76 = v32;
  v77 = OpaqueTypeConformance2;
  v78 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v75 = v30;
  v76 = MEMORY[0x277CE0F78];
  v77 = v35;
  v78 = MEMORY[0x277CE0F60];
  v55[1] = swift_getOpaqueTypeConformance2();
  v67 = sub_220D7B1E4(&qword_27CF95EF0, type metadata accessor for DetailChartDataElement);
  v55[4] = v28;
  v55[3] = v29;
  sub_220DC0080();
  v36 = v59;
  v37 = v57;
  v38 = v70[15];
  v75 = *(v57 + *(v59 + 32));
  sub_220D7B5E8(v57, v7);
  v39 = v56;
  v40 = swift_allocObject();
  sub_220D7AD94(v7, v40 + v72);
  *(v40 + v39) = v38;

  sub_220DC0080();
  v41 = v70[16];
  v75 = *(v37 + *(v36 + 36));
  sub_220D7B5E8(v37, v7);
  v42 = swift_allocObject();
  sub_220D7AD94(v7, v42 + v72);
  *(v42 + v39) = v41;

  v43 = v62;
  sub_220DC0080();
  v44 = v60;
  v45 = v61;
  v46 = *(v60 + 16);
  v47 = v63;
  v48 = v69;
  v46(v63, v69, v61);
  v75 = v47;
  v49 = v64;
  v50 = v74;
  v46(v64, v74, v45);
  v76 = v49;
  v51 = v49;
  v52 = v65;
  v46(v65, v43, v45);
  v77 = v52;
  sub_220D76FB8(&v75, v66);
  v53 = *(v44 + 8);
  v53(v43, v45);
  v53(v50, v45);
  v53(v48, v45);
  v53(v52, v45);
  v53(v51, v45);
  return (v53)(v47, v45);
}

unint64_t sub_220D77D34()
{
  result = qword_27CF95D78;
  if (!qword_27CF95D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D70, &qword_220DC5878);
    sub_220D77DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95D78);
  }

  return result;
}

unint64_t sub_220D77DC4()
{
  result = qword_27CF95D80;
  if (!qword_27CF95D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D88, &qword_220DC5880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D90, &qword_220DC5888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D98, &qword_220DC5890);
    sub_220DBF600();
    sub_220DBF6F0();
    swift_getOpaqueTypeConformance2();
    sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95D80);
  }

  return result;
}

uint64_t sub_220D77F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DA8, &qword_220DC5898) + 36);
  v5 = *MEMORY[0x277CE13B8];
  v6 = sub_220DC0150();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DC8, &qword_220DC58A0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

unint64_t sub_220D7803C()
{
  result = qword_27CF95DB8;
  if (!qword_27CF95DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DA8, &qword_220DC5898);
    sub_220CE161C(&qword_27CF95DC0, &qword_27CF95DC8, &qword_220DC58A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95DB8);
  }

  return result;
}

uint64_t sub_220D780F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;
  v15 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = sub_220DBF590();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v16 = *(a1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 60));
  sub_220DBF5A0();

  sub_220DBFA00();
  v16 = 0;
  sub_220DBF5A0();

  sub_220DBF570();
  v11 = *(v14 + *(type metadata accessor for SunriseSunsetDetailChartContent() + 20) + 40) * 0.5;
  sub_220DBF510();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_220D78358@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v39[3] = v39 - v18;
  v42 = sub_220DBE560();
  v19 = OUTLINED_FUNCTION_0(v42);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  OUTLINED_FUNCTION_18(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  v43 = v39 - v30;
  v31 = *a1;
  result = sub_220DBFA00();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v39[2] = v13;
  v33 = *a2;
  if (v31 >= *(*a2 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v39[1] = a5;
  v34 = OUTLINED_FUNCTION_11_0();
  v39[0] = type metadata accessor for DetailChartDataElement(v34);
  OUTLINED_FUNCTION_4_19(v39[0]);
  v37 = v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v36 + 72) * v31;
  v38 = v42;
  (*(v21 + 16))(v25, v37, v42);
  sub_220DBF5A0();

  (*(v21 + 8))(v25, v38);
  result = sub_220DBFA00();
  if (v31 < *(v33 + 16))
  {
    v44 = *(v37 + *(v39[0] + 20));
    sub_220DBF5A0();

    sub_220DBFA00();
    v44 = v40;
    v45 = v41;
    sub_220DBF5A0();

    return sub_220DBF6A0();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220D78718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = sub_220DBF590();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v14 = 0.0;
  sub_220DBF5A0();

  sub_220DBFA00();
  v14 = *(a1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 56)) + 5.0;
  sub_220DBF5A0();

  sub_220DBF570();
  v11 = *(a1 + *(type metadata accessor for SunriseSunsetDetailChartContent() + 20) + 40) * -0.5;
  sub_220DBF510();
  return (*(v7 + 8))(v10, v6);
}