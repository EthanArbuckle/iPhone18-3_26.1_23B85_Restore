uint64_t PersonalTraitMomentGraphDataSource.generateTraits(for:progressReporter:)(uint64_t a1, uint64_t *a2)
{
  v25 = a2;
  v27 = sub_22F740510();
  v26 = *(v27 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F7405F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810AC5A0 != -1)
  {
    swift_once();
  }

  v24 = v6;
  v12 = sub_22F740B90();
  __swift_project_value_buffer(v12, qword_2810B5038);

  v13 = sub_22F740B70();
  v14 = sub_22F7415F0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&dword_22F0FC000, v13, v14, "[PersonalTraitMomentGraphDataSource] Converting %ld assets to moments", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {
  }

  v16 = *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) + 20);
  sub_22F7407E0();
  v17 = MEMORY[0x277D84F90];
  v18 = sub_22F740590();
  if (v2)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v19 = v18;
    (*(v8 + 8))(v11, v7);
    v20 = v24;
    sub_22F740500();
    v17 = PersonalTraitMomentGraphDataSource.generateTraits(for:extendedTokenCollection:progressReporter:)(v19, v21, v25);
    (*(v26 + 8))(v20, v27);
  }

  return v17;
}

uint64_t PersonalTraitMomentGraphDataSource.generateTraits(for:extendedTokenCollection:progressReporter:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v231 = sub_22F73FFA0();
  v215 = *(v231 - 8);
  v5 = *(v215 + 64);
  MEMORY[0x28223BE20](v231);
  v243 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F73FFB0();
  v217 = *(v7 - 1);
  v8 = *(v217 + 64);
  MEMORY[0x28223BE20](v7);
  v242 = (&v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v234 = &v204 - v11;
  v239 = sub_22F73FFC0();
  v240 = *(v239 - 8);
  v12 = *(v240 + 64);
  MEMORY[0x28223BE20](v239);
  v227 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v232 = (&v204 - v15);
  v233 = type metadata accessor for PersonalTraitInfo(0);
  v245 = *(v233 - 8);
  v16 = *(v245 + 64);
  MEMORY[0x28223BE20](v233);
  v18 = &v204 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v241 = (&v204 - v20);
  MEMORY[0x28223BE20](v21);
  v237 = (&v204 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v204 - v24;
  MEMORY[0x28223BE20](v26);
  v229 = &v204 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v204 - v29;
  MEMORY[0x28223BE20](v31);
  v246 = (&v204 - v32);
  if (qword_2810A9B88 != -1)
  {
LABEL_162:
    swift_once();
  }

  v238 = v7;
  v33 = qword_2810B4E68;
  *&v34 = CACurrentMediaTime();
  sub_22F1B560C("PersonalTraitMomentGraphDataSource generateTraits", 49, 2u, v34, 0, v33, v250);
  v35 = a1[2];
  v230 = a3;
  v236 = v18;
  v226 = a1;
  v225 = v35;
  if (v35)
  {
    v248 = MEMORY[0x277D84F90];
    sub_22F146454(0, v35, 0);
    v36 = v248;
    v37 = a1 + 5;
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v248 = v36;
      v41 = v36[2];
      v40 = v36[3];

      if (v41 >= v40 >> 1)
      {
        sub_22F146454((v40 > 1), v41 + 1, 1);
        v36 = v248;
      }

      v36[2] = v41 + 1;
      v42 = &v36[2 * v41];
      v42[4] = v38;
      v42[5] = v39;
      v37 += 3;
      --v35;
    }

    while (v35);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  if (qword_2810AC5A0 != -1)
  {
    swift_once();
  }

  v43 = sub_22F740B90();
  v44 = __swift_project_value_buffer(v43, qword_2810B5038);

  v45 = v36;
  v46 = sub_22F740B70();
  v47 = sub_22F7415F0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v45[2];

    _os_log_impl(&dword_22F0FC000, v46, v47, "[PersonalTraitMomentGraphDataSource] Found %ld representative moments", v48, 0xCu);
    MEMORY[0x2319033A0](v48, -1, -1);

    if (v45[2])
    {
      goto LABEL_13;
    }

LABEL_26:

    v69 = v235;
    sub_22F7416A0();
    if (v69)
    {
LABEL_27:
      sub_22F1B2BBC(1);
    }

    else
    {
      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }
  }

  if (!v45[2])
  {
    goto LABEL_26;
  }

LABEL_13:
  v228 = v25;
  v211 = v44;
  v49 = objc_opt_self();
  v221 = v45;
  v50 = sub_22F741160();
  v51 = *(v244 + *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) + 24));
  v52 = [v49 momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:v50 inGraph:v51];

  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  v18 = sub_22F740CA0();

  v53 = objc_allocWithZone(PGGraphMomentNodeCollection);

  v54 = [v53 initWithGraph_];
  v55 = 1 << *(v18 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v18 + 64);
  v58 = (v55 + 63) >> 6;

  a3 = v54;
  v7 = 0;
  v25 = &selRef_assetIsSafeForWidgetDisplay_;
  a1 = a3;
  if (v57)
  {
    while (1)
    {
      v59 = v7;
LABEL_21:
      v60 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v61 = [a1 collectionByFormingUnionWith_];
      v62 = a1;
      a1 = v61;

      if (!v57)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
LABEL_17:
    v59 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    if (v59 >= v58)
    {
      break;
    }

    v57 = *(v18 + 64 + 8 * v59);
    v7 = (v7 + 1);
    if (v57)
    {
      v7 = v59;
      goto LABEL_21;
    }
  }

  v63 = v18;
  v64 = v230;
  v65 = [v230 childProgressReporterFromStart:0.0 toEnd:0.4];
  v66 = v235;
  v67 = sub_22F2ED588(a1, v65);
  if (v66)
  {

    sub_22F1B2BBC(1);
  }

  v210 = v67;
  v209 = v63;
  v70 = [v64 childProgressReporterFromStart:0.4 toEnd:0.8];
  v71 = sub_22F2EE9C0(a1, v70);
  v224 = 0;
  v222 = a1;
  v25 = v210;

  v72 = sub_22F740B70();
  a1 = sub_22F7415F0();
  v73 = os_log_type_enabled(v72, a1);
  v208 = v71;
  v206 = v70;
  if (v73)
  {
    v74 = swift_slowAlloc();
    *v74 = 134218240;
    *(v74 + 4) = *(v25 + 16);

    *(v74 + 12) = 2048;
    *(v74 + 14) = *(v71 + 16);

    _os_log_impl(&dword_22F0FC000, v72, a1, "[PersonalTraitMomentGraphDataSource] Found unfiltered traits %ld from scenes, %ld from meanings", v74, 0x16u);
    MEMORY[0x2319033A0](v74, -1, -1);
  }

  else
  {
  }

  v75 = sub_22F740B70();
  v76 = sub_22F7415F0();

  v77 = os_log_type_enabled(v75, v76);
  v207 = v65;
  if (v77)
  {
    LODWORD(v235) = v76;
    v78 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v248 = v223;
    *v78 = 136380675;
    v79 = v25;
    v80 = *(v25 + 16);
    v25 = MEMORY[0x277D84F90];
    if (v80)
    {
      v219 = v78;
      v220 = v75;
      v249 = MEMORY[0x277D84F90];
      sub_22F146454(0, v80, 0);
      v25 = v249;
      v81 = v79 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
      v244 = *(v245 + 72);
      do
      {
        v82 = v246;
        sub_22F2F3FA0(v81, v246, type metadata accessor for PersonalTraitInfo);
        v83 = *v82;
        v84 = v82[1];

        sub_22F2F4070(v82, type metadata accessor for PersonalTraitInfo);
        v249 = v25;
        v86 = *(v25 + 16);
        v85 = *(v25 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_22F146454((v85 > 1), v86 + 1, 1);
          v25 = v249;
        }

        *(v25 + 16) = v86 + 1;
        v87 = v25 + 16 * v86;
        *(v87 + 32) = v83;
        *(v87 + 40) = v84;
        v81 += v244;
        --v80;
      }

      while (v80);
      v75 = v220;
      v78 = v219;
    }

    a1 = MEMORY[0x231900D40](v25, MEMORY[0x277D837D0]);
    v89 = v88;

    v90 = sub_22F145F20(a1, v89, &v248);

    *(v78 + 4) = v90;
    _os_log_impl(&dword_22F0FC000, v75, v235, "[PersonalTraitMomentGraphDataSource] Unfiltered traits from scenes: %{private}s", v78, 0xCu);
    v91 = v223;
    __swift_destroy_boxed_opaque_existential_0(v223);
    MEMORY[0x2319033A0](v91, -1, -1);
    MEMORY[0x2319033A0](v78, -1, -1);
  }

  v92 = v208;

  v18 = sub_22F740B70();
  v93 = sub_22F7415F0();

  if (os_log_type_enabled(v18, v93))
  {
    v25 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    v248 = v244;
    *v25 = 136380675;
    v94 = *(v92 + 16);
    v95 = MEMORY[0x277D84F90];
    if (v94)
    {
      v220 = v25;
      LODWORD(v223) = v93;
      v235 = v18;
      v249 = MEMORY[0x277D84F90];
      sub_22F146454(0, v94, 0);
      v95 = v249;
      v96 = v92 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
      v97 = *(v245 + 72);
      do
      {
        v98 = v246;
        sub_22F2F3FA0(v96, v246, type metadata accessor for PersonalTraitInfo);
        v99 = *v98;
        v100 = v98[1];

        sub_22F2F4070(v98, type metadata accessor for PersonalTraitInfo);
        v249 = v95;
        v102 = *(v95 + 2);
        v101 = *(v95 + 3);
        if (v102 >= v101 >> 1)
        {
          sub_22F146454((v101 > 1), v102 + 1, 1);
          v95 = v249;
        }

        *(v95 + 2) = v102 + 1;
        v103 = &v95[16 * v102];
        *(v103 + 4) = v99;
        *(v103 + 5) = v100;
        v96 += v97;
        --v94;
      }

      while (v94);
      v92 = v208;
      v18 = v235;
      LOBYTE(v93) = v223;
      v25 = v220;
    }

    a1 = MEMORY[0x231900D40](v95, MEMORY[0x277D837D0]);
    v105 = v104;

    v106 = sub_22F145F20(a1, v105, &v248);

    *(v25 + 4) = v106;
    _os_log_impl(&dword_22F0FC000, v18, v93, "[PersonalTraitMomentGraphDataSource] Unfiltered traits from meanings: %{private}s", v25, 0xCu);
    v107 = v244;
    __swift_destroy_boxed_opaque_existential_0(v244);
    MEMORY[0x2319033A0](v107, -1, -1);
    MEMORY[0x2319033A0](v25, -1, -1);
  }

  v244 = *(v92 + 16);
  if (v244)
  {
    a1 = ((*(v245 + 80) + 32) & ~*(v245 + 80));
    v235 = a1 + v92;
    v108 = *(v245 + 72);
    v109 = v210;

    v110 = 0;
    while (1)
    {
      sub_22F2F3FA0(&v235[v108 * v110], v30, type metadata accessor for PersonalTraitInfo);
      if (*(v30 + 24) >= 1 && (v111 = *(v109 + 2)) != 0)
      {
        v25 = 0;
        v112 = a1;
        while (1)
        {
          v18 = v109;
          v113 = (v112 + v109);
          v114 = *v113 == *v30 && v113[1] == *(v30 + 8);
          if (v114 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          ++v25;
          v112 = (v112 + v108);
          v109 = v18;
          if (v111 == v25)
          {
            goto LABEL_62;
          }
        }

        v119 = v113;
        v120 = v246;
        sub_22F2F3FA0(v119, v246, type metadata accessor for PersonalTraitInfo);
        sub_22F2EED50(v30, v229);
        sub_22F2F4070(v120, type metadata accessor for PersonalTraitInfo);
        v109 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_22F2F2CBC(v18);
        }

        if (v25 >= *(v109 + 2))
        {
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        sub_22F2F3B58(v229, v112 + v109);
      }

      else
      {
LABEL_62:
        v115 = v228;
        sub_22F2F3FA0(v30, v228, type metadata accessor for PersonalTraitInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_22F13FA8C(0, *(v109 + 2) + 1, 1, v109);
        }

        v117 = *(v109 + 2);
        v116 = *(v109 + 3);
        v118 = v109;
        if (v117 >= v116 >> 1)
        {
          v118 = sub_22F13FA8C(v116 > 1, v117 + 1, 1, v109);
        }

        *(v118 + 16) = v117 + 1;
        v109 = v118;
        sub_22F2F4008(v115, a1 + v118 + v117 * v108, type metadata accessor for PersonalTraitInfo);
      }

      v110 = (v110 + 1);
      sub_22F2F4070(v30, type metadata accessor for PersonalTraitInfo);
      if (v110 == v244)
      {
        goto LABEL_71;
      }
    }
  }

  v109 = v210;

LABEL_71:
  v229 = v109;
  v121 = *(v109 + 2);
  v30 = MEMORY[0x277D84F90];
  if (v121)
  {
    v122 = 0;
    v244 = MEMORY[0x277D84F90];
    v7 = v222;
    a3 = v237;
    while (v122 < *(v229 + 2))
    {
      v123 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v25 = *(v245 + 72);
      sub_22F2F3FA0(&v229[v123 + v25 * v122], a3, type metadata accessor for PersonalTraitInfo);
      if (a3[3] < 1)
      {
        sub_22F2F4070(a3, type metadata accessor for PersonalTraitInfo);
      }

      else
      {
        sub_22F2F4008(a3, v241, type metadata accessor for PersonalTraitInfo);
        v124 = v244;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v248 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146B50(0, v124[2] + 1, 1);
          v124 = v248;
        }

        v127 = v124[2];
        v126 = v124[3];
        a1 = (v127 + 1);
        if (v127 >= v126 >> 1)
        {
          sub_22F146B50(v126 > 1, v127 + 1, 1);
          v124 = v248;
        }

        v124[2] = a1;
        v244 = v124;
        sub_22F2F4008(v241, v124 + v123 + v127 * v25, type metadata accessor for PersonalTraitInfo);
        v7 = v222;
        a3 = v237;
      }

      if (v121 == ++v122)
      {
        goto LABEL_83;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v244 = MEMORY[0x277D84F90];
  v7 = v222;
LABEL_83:
  v128 = [v7 numberOfAssetsByMomentUUID];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v129 = sub_22F740CA0();

  v130 = v224;
  v224 = sub_22F2F2AFC(v129);

  v131 = sub_22F161C68(v226);
  if (*(v131 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1230, &qword_22F770AE0);
    v132 = sub_22F741DF0();
  }

  else
  {
    v132 = MEMORY[0x277D84F98];
  }

  v133 = v236;
  v134 = v225;
  v248 = v132;
  sub_22F2F3674(v131, 1, &v248);
  v18 = v130;
  if (v130)
  {
LABEL_166:

    v203 = v18;
LABEL_169:

    __break(1u);
    return result;
  }

  v246 = v248;
  if (v134)
  {
    v241 = 0;
    v248 = v30;
    sub_22F14663C(0, v134, 0);
    v135 = v134;
    v30 = v248;
    v136 = v226 + 6;
    do
    {
      v138 = *(v136 - 2);
      v137 = *(v136 - 1);
      v25 = *(*v136 + 16);
      v248 = v30;
      v140 = *(v30 + 16);
      v139 = *(v30 + 24);

      if (v140 >= v139 >> 1)
      {
        sub_22F14663C((v139 > 1), v140 + 1, 1);
        v30 = v248;
      }

      *(v30 + 16) = v140 + 1;
      v141 = (v30 + 24 * v140);
      v141[4] = v138;
      v141[5] = v137;
      v141[6] = v25;
      v136 += 3;
      --v135;
    }

    while (v135);
    a1 = v238;
    v133 = v236;
    v18 = v241;
    goto LABEL_95;
  }

  if (*(v30 + 16))
  {
    a1 = v238;
LABEL_95:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
    v142 = sub_22F741DF0();
    goto LABEL_96;
  }

  v142 = MEMORY[0x277D84F98];
  a1 = v238;
LABEL_96:
  v248 = v142;
  sub_22F2F38DC(v30, 1, &v248);
  v7 = v221;
  v143 = v244;
  v205 = v18;
  if (v18)
  {

    v203 = v205;
    goto LABEL_169;
  }

  v223 = v248;
  v144 = *(v143 + 16);
  v145 = MEMORY[0x277D84F90];
  if (v144)
  {
    v249 = MEMORY[0x277D84F90];
    a3 = &v249;
    v214 = v144;
    sub_22F146ACC(0, v144, 0);
    v146 = v244;
    v30 = 0;
    v237 = v249;
    v220 = (v244 + ((*(v245 + 80) + 32) & ~*(v245 + 80)));
    v147 = (v217 + 16);
    v219 = (v217 + 88);
    v218 = *MEMORY[0x277D3C030];
    v217 += 8;
    v216 = *MEMORY[0x277D3C018];
    v215 += 104;
    v213 = v240 + 32;
    v225 = v147;
    while (v30 < *(v146 + 16))
    {
      sub_22F2F3FA0(v220 + *(v245 + 72) * v30, v133, type metadata accessor for PersonalTraitInfo);
      v148 = v133[4];
      sub_22F7402F0();
      v149 = *(v233 + 32);
      v18 = *v147;
      v150 = v234;
      (*v147)(v234, v133 + v149, a1);
      v7 = (*v219)(v150, a1);
      (*v217)(v150, a1);
      a3 = MEMORY[0x277D84F90];
      v241 = MEMORY[0x277D84F90];
      if (v7 == v218)
      {
        v226 = v149;
        v228 = v18;
        v235 = v30;
        a1 = (v148 + 64);
        v151 = 1 << *(v148 + 32);
        if (v151 < 64)
        {
          v152 = ~(-1 << v151);
        }

        else
        {
          v152 = -1;
        }

        v30 = v152 & *(v148 + 64);
        v25 = (v151 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v153 = 0;
        v154 = a3;
LABEL_119:
        v162 = v148;
        while (v30)
        {
          v155 = v30;
LABEL_111:
          v30 = (v155 - 1) & v155;
          if (v246[2])
          {
            v148 = v162;
            v157 = (*(v162 + 48) + ((v153 << 10) | (16 * __clz(__rbit64(v155)))));
            v158 = *v157;
            v7 = v157[1];

            a3 = v246;
            v159 = sub_22F1229E8(v158, v7);
            if ((v160 & 1) == 0)
            {

              goto LABEL_119;
            }

            a3 = *(v246[7] + 8 * v159);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v154 = sub_22F13EB2C(0, v154[2] + 1, 1, v154);
            }

            v18 = v154[2];
            v161 = v154[3];
            v7 = (v18 + 1);
            if (v18 >= v161 >> 1)
            {
              v154 = sub_22F13EB2C((v161 > 1), v18 + 1, 1, v154);
            }

            v162 = v148;
            v154[2] = v7;
            v154[v18 + 4] = a3;
          }
        }

        while (1)
        {
          v156 = v153 + 1;
          if (__OFADD__(v153, 1))
          {
            goto LABEL_158;
          }

          if (v156 >= v25)
          {
            v212 = v162;

            v247 = MEMORY[0x277D84FA0];
            v163 = v154[2];
            if (v163)
            {
              v164 = 0;
              v25 = (v154 + 4);
              while (v164 < v154[2])
              {
                a1 = *(v25 + 8 * v164);
                v30 = a1[2];

                if (v30)
                {
                  v18 = (a1 + 5);
                  do
                  {
                    v7 = *(v18 - 8);
                    v165 = *v18;

                    a3 = &v247;
                    sub_22F10BBDC(&v248, v7, v165);

                    v18 += 16;
                    --v30;
                  }

                  while (v30);
                }

                ++v164;

                if (v164 == v163)
                {
                  goto LABEL_128;
                }
              }

              goto LABEL_159;
            }

LABEL_128:

            v166 = v247;
            v167 = *(v247 + 16);
            if (v167)
            {
              v241 = sub_22F10B348(*(v247 + 16), 0);
              v168 = sub_22F11A438(&v248, v241 + 4, v167, v166);
              sub_22F0FF590();
              v133 = v236;
              a3 = MEMORY[0x277D84F90];
              v30 = v235;
              v147 = v225;
              v18 = v228;
              v149 = v226;
              if (v168 != v167)
              {
                goto LABEL_165;
              }

              a1 = v238;
            }

            else
            {

              a3 = MEMORY[0x277D84F90];
              v241 = MEMORY[0x277D84F90];
              a1 = v238;
              v133 = v236;
              v30 = v235;
              v147 = v225;
              v18 = v228;
              v149 = v226;
            }

            break;
          }

          v155 = a1[v156];
          ++v153;
          if (v155)
          {
            v153 = v156;
            goto LABEL_111;
          }
        }
      }

      v169 = *v133;
      v235 = v133[1];
      (*v215)(v243, v216, v231);
      (v18)(v242, v133 + v149, a1);
      v170 = v133[2];
      v171 = *(v170 + 16);
      if (v171)
      {
        v226 = v169;
        v18 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
        v25 = swift_allocObject();
        v172 = _swift_stdlib_malloc_size(v25);
        v173 = v172 - 32;
        if (v172 < 32)
        {
          v173 = v172 - 17;
        }

        *(v25 + 16) = v171;
        *(v25 + 24) = 2 * (v173 >> 4);
        v228 = sub_22F11A438(&v248, (v25 + 32), v171, v170);

        sub_22F0FF590();
        if (v228 != v171)
        {
          __break(1u);
          goto LABEL_164;
        }

        v147 = v225;
        v133 = v236;
      }

      else
      {

        v25 = a3;
      }

      a3 = v232;
      sub_22F73FF80();
      sub_22F2F4070(v133, type metadata accessor for PersonalTraitInfo);
      v174 = v237;
      v249 = v237;
      v18 = v237[2];
      v175 = v237[3];
      v7 = (v18 + 1);
      a1 = v238;
      if (v18 >= v175 >> 1)
      {
        sub_22F146ACC(v175 > 1, v18 + 1, 1);
        a3 = v232;
        v174 = v249;
      }

      ++v30;
      *(v174 + 2) = v7;
      v176 = (*(v240 + 80) + 32) & ~*(v240 + 80);
      v237 = v174;
      (*(v240 + 32))(&v174[v176 + *(v240 + 72) * v18], a3, v239);
      v146 = v244;
      if (v30 == v214)
      {
        v145 = v237;
        goto LABEL_142;
      }
    }

    goto LABEL_161;
  }

LABEL_142:
  v248 = v145;
  v237 = v145;

  v177 = v205;
  sub_22F2EAB30(&v248);
  v178 = v177;
  v179 = v222;
  v180 = v207;
  if (v177)
  {
    v203 = v177;
    goto LABEL_169;
  }

  v181 = v248;

  v182 = sub_22F740B70();
  v183 = sub_22F7415F0();

  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    v248 = v244;
    *v184 = 136380675;
    v185 = v181[2];
    if (v185)
    {
      v238 = v184;
      LODWORD(v241) = v183;
      v242 = v182;
      v243 = 0;
      v249 = MEMORY[0x277D84F90];
      sub_22F146454(0, v185, 0);
      v186 = v249;
      v246 = *(v240 + 16);
      v187 = (*(v240 + 80) + 32) & ~*(v240 + 80);
      v236 = v181;
      v188 = v181 + v187;
      v245 = *(v240 + 72);
      v240 += 16;
      v189 = (v240 - 8);
      do
      {
        v190 = v227;
        v191 = v239;
        (v246)(v227, v188, v239);
        v192 = sub_22F73FF90();
        v194 = v193;
        (*v189)(v190, v191);
        v249 = v186;
        v196 = *(v186 + 2);
        v195 = *(v186 + 3);
        if (v196 >= v195 >> 1)
        {
          sub_22F146454((v195 > 1), v196 + 1, 1);
          v186 = v249;
        }

        *(v186 + 2) = v196 + 1;
        v197 = &v186[16 * v196];
        *(v197 + 4) = v192;
        *(v197 + 5) = v194;
        v188 += v245;
        --v185;
      }

      while (v185);

      v180 = v207;
      v182 = v242;
      v178 = v243;
      LOBYTE(v183) = v241;
      v184 = v238;
    }

    else
    {

      v186 = MEMORY[0x277D84F90];
    }

    v198 = MEMORY[0x231900D40](v186, MEMORY[0x277D837D0]);
    v200 = v199;

    v201 = sub_22F145F20(v198, v200, &v248);

    *(v184 + 4) = v201;
    _os_log_impl(&dword_22F0FC000, v182, v183, "[PersonalTraitMomentGraphDataSource] Reduced and filtered traits: %{private}s", v184, 0xCu);
    v202 = v244;
    __swift_destroy_boxed_opaque_existential_0(v244);
    MEMORY[0x2319033A0](v202, -1, -1);
    MEMORY[0x2319033A0](v184, -1, -1);

    v179 = v222;
  }

  else
  {
  }

  sub_22F7416A0();
  if (v178)
  {

    goto LABEL_27;
  }

  sub_22F1B2BBC(0);

  return v237;
}

uint64_t sub_22F2ED588(void *a1, void *a2)
{
  v183 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11F8, &unk_22F783C90);
  v167 = *(v4 - 8);
  v168 = v4;
  v5 = *(v167 + 64);
  MEMORY[0x28223BE20](v4);
  v166 = &v144 - v6;
  v7 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v8 = v7 - 8;
  v170 = *(v7 - 8);
  v9 = v170[8];
  MEMORY[0x28223BE20](v7);
  v171 = v10;
  v176 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F7407F0();
  v12 = objc_opt_self();
  v13 = sub_22F741410();
  v14 = *(v8 + 32);
  v172 = v2;
  v15 = *(v2 + v14);
  v16 = [v12 sceneNodesForSceneNames:v13 inGraph:v15];

  v17 = [a1 searchConfidenceSceneNodes];
  v179 = v16;
  v181 = v17;
  v18 = [v16 collectionByIntersecting_];
  v19 = objc_opt_self();
  v177 = v11;
  v20 = sub_22F741410();
  v173 = v15;
  v21 = [v19 sceneNodesForSceneNames:v20 inGraph:v15];

  v174 = a1;
  v22 = [a1 searchConfidenceEntityNetSceneNodes];
  v182 = v21;
  v180 = v22;
  v23 = [v21 collectionByIntersecting_];
  v201 = MEMORY[0x277D84F98];
  v202 = MEMORY[0x277D84F98];
  v203 = MEMORY[0x277D84F98];
  v194 = sub_22F120634(0, &qword_2810A8FE8, off_27887B390);
  v195 = &off_2843EB068;
  aBlock = v18;
  v24 = __swift_project_boxed_opaque_existential_1(&aBlock, v194);
  v25 = v18;
  v26 = [*v24 graph];
  v27 = v194;
  v28 = v195;
  __swift_project_boxed_opaque_existential_1(&aBlock, v194);
  v188 = &v201;
  p_aBlock = &aBlock;
  v190 = v26;
  (*(v28 + 4))(sub_22F2F41C0, v187, v27, v28);
  v29 = v194;
  v30 = v195;
  __swift_project_boxed_opaque_existential_1(&aBlock, v194);
  v186[2] = &v201;
  v31 = *(v30 + 5);
  v32 = v30;
  v33 = v25;
  v31(sub_22F2F41CC, v186, v29, v32);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v194 = sub_22F120634(0, &qword_2810A8F40, off_27887AD68);
  v195 = &off_2843EB098;
  aBlock = v23;
  v34 = __swift_project_boxed_opaque_existential_1(&aBlock, v194);
  v35 = v23;
  v36 = v183;
  v37 = [*v34 graph];
  v38 = v194;
  v39 = v195;
  __swift_project_boxed_opaque_existential_1(&aBlock, v194);
  v185[2] = &v201;
  v185[3] = &aBlock;
  v185[4] = v37;
  (*(v39 + 4))(sub_22F2F45E8, v185, v38, v39);
  v40 = v194;
  v41 = v195;
  __swift_project_boxed_opaque_existential_1(&aBlock, v194);
  v184[2] = &v201;
  (*(v41 + 5))(sub_22F2F4608, v184, v40, v41);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v42 = v36;
  v43 = v178;
  sub_22F741690();
  if (v43)
  {

LABEL_10:

    return v42;
  }

  v200 = MEMORY[0x277D84F90];
  v44 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8FF0, off_27887AD50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = [ObjCClassFromMetadata dominantSceneAssetsFilter];
  v165 = 0;
  v154 = v44;
  v46 = v174;
  v163 = v35;
  v47 = [v44 edgesFrom:v174 to:v35 matching:v45];

  v48 = objc_opt_self();
  v144 = objc_opt_self();
  v49 = [v144 dominantSceneAssetsFilter];
  v146 = v48;
  v162 = v33;
  v50 = [v48 edgesFrom:v46 to:v33 matching:v49];

  v158 = v50;
  v51 = [v50 elementIdentifiers];
  v157 = v47;
  v52 = [v47 elementIdentifiers];
  v53 = [v51 identifierSetByFormingUnion_];

  v54 = objc_allocWithZone(PGGraphEdgeCollection);
  v156 = v53;
  v161 = [v54 initWithGraph:v173 elementIdentifiers:v53];
  v55 = v172;
  v56 = sub_22F740810();
  v57 = v165;
  v58 = sub_22F2EA170(v56);
  v155 = v57;

  v175 = sub_22F1515F8(v58);

  v169 = v201;
  v164 = v202;
  v178 = v203;
  v165 = @"numberOfDominantSceneAssets";
  v160 = [v36 childProgressReporterFromStart:0.2 toEnd:0.3];
  v198 = 1;
  v199 = MEMORY[0x277D84F90];
  v197 = 0;
  v159 = type metadata accessor for PersonalTraitMomentGraphDataSource;
  sub_22F2F3FA0(v55, v176, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v59 = *(v170 + 80);
  v60 = (v59 + 16) & ~v59;
  v61 = (v171 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 31) & 0xFFFFFFFFFFFFFFF8;
  v64 = ((v63 + 15) & 0xFFFFFFFFFFFFFFF8);
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v171 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = ((v171 + 15) & 0xFFFFFFFFFFFFFFF8);
  v147 = v59;
  v67 = swift_allocObject();
  v148 = v60;
  sub_22F2F4008(v176, v67 + v60, v159);
  v149 = v62;
  v150 = v61;
  *(v67 + v61) = v175;
  v68 = v67;
  v69 = (v67 + v62);
  v70 = v164;
  *v69 = v169;
  v69[1] = v70;
  v69[2] = v178;
  v152 = v65;
  v153 = v63;
  *(v68 + v63) = &v199;
  v159 = v64;
  v71 = v160;
  *(v64 + v68) = v160;
  *(v68 + v65) = &v198;
  v72 = v161;
  *(v68 + v171) = v161;
  v151 = v66;
  *&v66[v68] = &v197;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_22F2F41D4;
  *(v73 + 24) = v68;
  v170 = v68;
  v195 = sub_22F2F41D8;
  v196 = v73;
  aBlock = MEMORY[0x277D85DD0];
  v192 = 1107296256;
  v193 = sub_22F2F0180;
  v194 = &block_descriptor_50;
  v74 = _Block_copy(&aBlock);

  v75 = v71;
  v76 = v72;

  v77 = v165;
  [v76 enumerateUnsignedIntegerPropertyValuesForKey:v165 withBlock:v74];

  _Block_release(v74);
  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if (v77)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v197)
  {
    v78 = v197;

    swift_willThrow();

    v79 = v163;
LABEL_8:

    v42 = v199;

LABEL_9:

    goto LABEL_10;
  }

  v80 = v155;
  sub_22F7416A0();
  v81 = v182;
  v79 = v163;
  v82 = v177;
  if (v80)
  {

    goto LABEL_8;
  }

  v84 = v199;
  v85 = v197;

  sub_22F145888(v84);
  v86 = [ObjCClassFromMetadata searchConfidenceAssetsFilter];
  v165 = 0;
  v87 = v174;
  v88 = [v154 edgesFrom:v174 to:v79 matching:v86];

  v89 = [v144 searchConfidenceAssetsFilter];
  v90 = [v146 &:v87 OBJC:v162 LABEL:v89 PROTOCOL:? :? :?PGGraphEvent + 1];

  v170 = v90;
  v91 = [v90 elementIdentifiers];
  v160 = v88;
  v92 = [v88 elementIdentifiers];
  v93 = [v91 identifierSetByFormingUnion_];

  v94 = objc_allocWithZone(PGGraphEdgeCollection);
  v95 = v173;
  v173 = v93;
  v174 = [v94 initWithGraph:v95 elementIdentifiers:v93];
  v96 = v165;
  v97 = sub_22F2EA170(v82);
  v165 = v96;

  v98 = sub_22F1515F8(v97);

  v99 = v175[2];
  v100 = *(v98 + 16);
  v161 = v76;
  if (v99 <= v100 >> 3)
  {
    aBlock = v98;
    sub_22F3E7FB8(v175);

    v101 = aBlock;
  }

  else
  {
    v101 = sub_22F1E999C(v175, v98);
  }

  v102 = v172;
  v103 = v176;
  v177 = @"numberOfSearchConfidenceAssets";
  v104 = [v183 childProgressReporterFromStart:0.4 toEnd:0.5];
  v176 = v104;
  v198 = 1;
  v199 = MEMORY[0x277D84F90];
  v197 = 0;
  sub_22F2F3FA0(v102, v103, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v105 = v151;
  v106 = swift_allocObject();
  sub_22F2F4008(v103, v106 + v148, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v107 = v149;
  *(v106 + v150) = v101;
  v108 = (v106 + v107);
  v66 = v169;
  v109 = v164;
  *v108 = v169;
  v108[1] = v109;
  v108[2] = v178;
  *(v106 + v153) = &v199;
  *(v159 + v106) = v104;
  *(v106 + v152) = &v198;
  v110 = v174;
  *(v106 + v171) = v174;
  *&v105[v106] = &v197;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_22F2F45DC;
  *(v111 + 24) = v106;
  v195 = sub_22F2F4614;
  v196 = v111;
  aBlock = MEMORY[0x277D85DD0];
  v192 = 1107296256;
  v193 = sub_22F2F0180;
  v194 = &block_descriptor_61;
  v112 = _Block_copy(&aBlock);

  v113 = v176;
  v114 = v110;

  v175 = v114;
  v115 = v177;
  [v114 enumerateUnsignedIntegerPropertyValuesForKey:v177 withBlock:v112];

  _Block_release(v112);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_35;
  }

  v118 = v180;
  v117 = v181;
  v119 = v179;
  v120 = v163;
  if (v197)
  {
    v121 = v197;

    swift_willThrow();

LABEL_20:
    v42 = v199;

    goto LABEL_9;
  }

  v122 = v165;
  sub_22F7416A0();
  if (v122)
  {

    goto LABEL_20;
  }

  v123 = v199;
  v124 = v197;

  sub_22F145888(v123);
  v125 = v200;
  v126 = v200[2];
  v127 = MEMORY[0x277D84F90];
  v174 = v200;
  if (v126)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_22F146A8C(0, v126, 0);
    v127 = aBlock;
    v177 = type metadata accessor for PersonalTraitInfo(0);
    v128 = v125 + ((*(v177[-1].length + 80) + 32) & ~*(v177[-1].length + 80));
    v176 = *(v177[-1].length + 72);
    v129 = v168;
    v130 = v166;
    do
    {
      v131 = v130 + *(v129 + 48);
      sub_22F2F3FA0(v128, v131, type metadata accessor for PersonalTraitInfo);
      isa_low = SLODWORD(v177[1].isa);
      v133 = sub_22F73FFB0();
      (*(*(v133 - 8) + 16))(v130, v131 + isa_low, v133);
      aBlock = v127;
      v135 = *(v127 + 16);
      v134 = *(v127 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_22F146A8C(v134 > 1, v135 + 1, 1);
        v127 = aBlock;
      }

      *(v127 + 16) = v135 + 1;
      sub_22F2F44F8(v130, v127 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v135);
      v128 += v176;
      --v126;
      v129 = v168;
    }

    while (v126);
  }

  if (*(v127 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0AB8, &qword_22F770C50);
    v136 = sub_22F741DF0();
  }

  else
  {
    v136 = MEMORY[0x277D84F98];
  }

  aBlock = v136;
  sub_22F2F31DC(v127, 1, &aBlock);

  v137 = aBlock;
  sub_22F7416A0();
  v138 = *(v137 + 16);
  v66 = v180;
  v139 = v163;
  if (!v138)
  {

    v42 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v42 = sub_22F10B560(*(v137 + 16), 0);
  v140 = *(type metadata accessor for PersonalTraitInfo(0) - 8);
  v141 = sub_22F11C024(&aBlock, v42 + ((*(v140 + 80) + 32) & ~*(v140 + 80)), v138, v137);
  sub_22F0FF590();
  if (v141 == v138)
  {

LABEL_33:
    v142 = v182;
    v143 = v160;

    return v42;
  }

LABEL_36:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F2EE9C0(void *a1, void *a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(v7 + 36);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = objc_allocWithZone(PGGraphMeaningNodeCollection);
  v12 = [v9 sources];
  v13 = [v11 initWithGraph:v10 elementIdentifiers:v12];
  v36 = v13;

  v35 = [v13 count];
  v42 = MEMORY[0x277D84F90];
  v40 = 1;
  v41 = 0;
  sub_22F2F3FA0(v3, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonalTraitMomentGraphDataSource);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_22F2F4008(v34, v20 + v14, type metadata accessor for PersonalTraitMomentGraphDataSource);
  v21 = v37;
  *(v20 + v15) = v37;
  *(v20 + v16) = &v42;
  v22 = v38;
  *(v20 + v17) = v38;
  *(v20 + v18) = &v40;
  v23 = v36;
  *(v20 + v19) = v35;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v41;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22F2F40D0;
  *(v24 + 24) = v20;
  aBlock[4] = sub_22F20AE34;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  aBlock[3] = &block_descriptor_39_0;
  v25 = _Block_copy(aBlock);
  v26 = v21;
  v22;

  [v23 enumerateIdentifiersAsCollectionsWithBlock_];
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    v28 = v41;
    if (v41)
    {
      swift_willThrow();
      v29 = v28;
    }

    else
    {
      v30 = v33;
      sub_22F7416A0();

      if (!v30)
      {
        v31 = v42;
        v32 = v41;

        return v31;
      }
    }

    v31 = v42;

    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2EED50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3490, &qword_22F783C88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  v8 = sub_22F73FFB0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v47 - v13;
  v14 = v2[4];
  v15 = *(a1 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v14;
  sub_22F2F2F58(v15, sub_22F2F2D5C, 0, isUniquelyReferenced_nonNull_native, &v53);

  v17 = v53;
  v47 = type metadata accessor for PersonalTraitInfo(0);
  v18 = *(v47 + 32);
  v19 = *(v4 + 48);
  v20 = v9[2];
  v20(v7, v2 + v18, v8);
  v49 = a1;
  v20(&v7[v19], (a1 + v18), v8);
  v50 = v9;
  v21 = v9[11];
  if (v21(v7, v8) == *MEMORY[0x277D3C020] && v21(&v7[v19], v8) == *MEMORY[0x277D3C030])
  {
    v22 = v50[1];
    v22(&v7[v19], v8);
    v23 = (v49 + v18);
    v24 = v51;
    v20(v51, v23, v8);
    v22(v7, v8);
  }

  else
  {
    v25 = v2 + v18;
    v24 = v51;
    v20(v51, v25, v8);
    sub_22F120ADC(v7, &qword_27DAB3490, &qword_22F783C88);
  }

  v26 = v2[2];
  v27 = *(v49 + 16);

  v29 = sub_22F144608(v28, v26);
  v30 = *v2;
  v31 = v2[1];
  v20(v52, v24, v8);
  v32 = 0;
  v33 = 0;
  v34 = v48;
  *v48 = v30;
  *(v34 + 1) = v31;
  *(v34 + 4) = v17;
  v35 = 1 << *(v17 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v17 + 64);
  v38 = (v35 + 63) >> 6;
  v39 = v50;
  while (v37)
  {
    v40 = v32;
LABEL_14:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = *(*(v17 + 56) + ((v40 << 9) | (8 * v41)));
    v43 = __OFADD__(v33, v42);
    v33 += v42;
    if (v43)
    {
      __break(1u);
LABEL_17:
      v44 = v39;
      v45 = v39[1];

      v45(v51, v8);

      *(v34 + 3) = v33;
      result = (v44[4])(&v34[*(v47 + 32)], v52, v8);
      *(v34 + 2) = v29;
      return result;
    }
  }

  while (1)
  {
    v40 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v40 >= v38)
    {
      goto LABEL_17;
    }

    v37 = *(v17 + 64 + 8 * v40);
    ++v32;
    if (v37)
    {
      v32 = v40;
      goto LABEL_14;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F2EF17C()
{
  sub_22F73FF70();
  v1 = v0;
  sub_22F73FF70();
  if (v1 == v2)
  {
    sub_22F73FF90();
    sub_22F160DE4();
    v3 = sub_22F7418F0();

    sub_22F73FF90();
    v4 = sub_22F7418F0();

    if (v3 == v4)
    {
      v5 = sub_22F73FF90();
      v7 = v6;
      if (v5 == sub_22F73FF90() && v7 == v8)
      {

        v9 = 0;
      }

      else
      {
        v9 = sub_22F742040();
      }
    }

    else
    {
      v9 = v3 < v4;
    }
  }

  else
  {
    sub_22F73FF70();
    v11 = v10;
    sub_22F73FF70();
    v9 = v12 < v11;
  }

  return v9 & 1;
}

uint64_t sub_22F2EF2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9, uint64_t a10, void *a11, void *a12)
{
  v42 = a7;
  v43 = a8;
  v39 = a5;
  v40 = a6;
  v41 = a4;
  v38 = a3;
  v46 = a11;
  v44 = a12;
  v45 = a10;
  v14 = type metadata accessor for PersonalTraitInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3498, &unk_22F783CA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v38 - v27;
  sub_22F2EF674(a1, a2, v39, v40, v42, v43, &v38 - v27);
  sub_22F13BA9C(v28, v25, &qword_27DAB3498, &unk_22F783CA0);
  if ((*(v15 + 48))(v25, 1, v14) == 1)
  {
    sub_22F120ADC(v25, &qword_27DAB3498, &unk_22F783CA0);
  }

  else
  {
    sub_22F2F4008(v25, v21, type metadata accessor for PersonalTraitInfo);
    sub_22F2F3FA0(v21, v18, type metadata accessor for PersonalTraitInfo);
    v29 = *a9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a9 = v29;
    v31 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_22F13FA8C(0, v29[2] + 1, 1, v29);
      *a9 = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      *a9 = sub_22F13FA8C(v32 > 1, v33 + 1, 1, v29);
    }

    sub_22F2F4070(v21, type metadata accessor for PersonalTraitInfo);
    v34 = *a9;
    v34[2] = v33 + 1;
    sub_22F2F4008(v31, v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v33, type metadata accessor for PersonalTraitInfo);
  }

  v35 = v46;
  v36 = *v46;
  [v44 count];
  sub_22F741680();
  result = sub_22F120ADC(v28, &qword_27DAB3498, &unk_22F783CA0);
  if (__OFADD__(*v35, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v35;
  }

  return result;
}

uint64_t sub_22F2EF674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v110 = a6;
  v111 = a4;
  v104 = a2;
  v114 = a7;
  v11 = type metadata accessor for PersonalTraitInfo(0);
  v115 = *(v11 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x28223BE20](v11);
  v107 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22F73FFB0();
  v109 = *(v106 - 8);
  v14 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = (&v103 - v17);
  v18 = *(v7 + *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) + 24));
  v19 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  v20 = v18;
  v21 = [v19 initWithElementIdentifier_];
  v22 = [objc_allocWithZone(MEMORY[0x277D22C18]) initWithGraph:v20 elementIdentifiers:v21];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0AA8, &qword_22F770C40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v112 = v22;
  v113 = [ObjCClassFromMetadata targetNodesOfEdges_];
  v24 = [v113 elementIdentifiers];
  v25 = [v24 firstElement];

  if (*(a5 + 16) && (v26 = sub_22F122B68(v25), (v27 & 1) != 0))
  {
    v103 = v11;
    v28 = (*(a5 + 56) + 16 * v26);
    v11 = *v28;
    v29 = v28[1];

    if ((sub_22F15E910(v11, v29, a3) & 1) == 0)
    {
      if (qword_2810AC5A0 == -1)
      {
LABEL_32:
        v78 = sub_22F740B90();
        __swift_project_value_buffer(v78, qword_2810B5038);

        v79 = sub_22F740B70();
        v80 = sub_22F7415D0();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v116[0] = v82;
          *v81 = 136315138;
          v83 = sub_22F145F20(v11, v29, v116);

          *(v81 + 4) = v83;
          _os_log_impl(&dword_22F0FC000, v79, v80, "[PersonalTraitMomentGraphDataSource] Skipping scene %s that is not accepted for personal traits.", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v82);
          MEMORY[0x2319033A0](v82, -1, -1);
          MEMORY[0x2319033A0](v81, -1, -1);
        }

        else
        {
        }

        v74 = v114;
        v75 = *(v115 + 56);
        v76 = v103;
        goto LABEL_28;
      }

LABEL_49:
      swift_once();
      goto LABEL_32;
    }

    v30 = objc_allocWithZone(MEMORY[0x277D22BB0]);
    v31 = v20;
    v32 = [v30 initWithElementIdentifier_];
    v33 = [objc_allocWithZone(PGGraphEdgeCollection) initWithGraph:v31 elementIdentifiers:v32];

    v34 = [objc_opt_self() sourceNodesOfEdges_];
    v35 = [v34 uuids];
    v36 = sub_22F741420();

    v37 = sub_22F15ABD4(v36);
    v39 = v38;

    if (!v39)
    {
      v84 = v103;
      if (qword_2810AC5A0 != -1)
      {
        swift_once();
      }

      v85 = sub_22F740B90();
      __swift_project_value_buffer(v85, qword_2810B5038);
      v86 = sub_22F740B70();
      v87 = sub_22F7415E0();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v116[0] = v89;
        *v88 = 136315138;
        v90 = sub_22F741750();
        v92 = sub_22F145F20(v90, v91, v116);

        *(v88 + 4) = v92;
        _os_log_impl(&dword_22F0FC000, v86, v87, "[PersonalTraitMomentGraphDataSource] Missing moment node at source of graph edge with identifier %s.", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x2319033A0](v89, -1, -1);
        MEMORY[0x2319033A0](v88, -1, -1);
      }

      v74 = v114;
      v75 = *(v115 + 56);
      v76 = v84;
      goto LABEL_28;
    }

    v40 = v111;
    v11 = v103;
    if (*(v111 + 16))
    {
      v41 = sub_22F122B68(v25);
      if (v42)
      {
        if (*(v110 + 16))
        {
          v43 = *(*(v40 + 56) + 8 * v41);
          v44 = sub_22F122B68(v25);
          if (v45)
          {
            v46 = (*(v110 + 56) + 16 * v44);
            v48 = *v46;
            v47 = v46[1];

            if (sub_22F740F10() >= 1)
            {
              v111 = v48;
              v49 = v108;
              *v108 = v43;
              v50 = v106;
              (*(v109 + 104))(v49, *MEMORY[0x277D3C020], v106);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11C8, qword_22F783CB0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_22F771340;
              *(inited + 32) = v37;
              v52 = inited + 32;
              v53 = v104;
              *(inited + 40) = v39;
              *(inited + 48) = v53;
              v29 = sub_22F14F1C0(inited);
              swift_setDeallocating();
              sub_22F120ADC(v52, &qword_27DAB11D0, &qword_22F771600);
              v54 = v105;
              (*(v109 + 16))(v105, v49, v50);
              v55 = 0;
              v56 = 0;
              v57 = v107;
              *v107 = v111;
              *(v57 + 1) = v47;
              *(v57 + 4) = v29;
              v58 = 1 << *(v29 + 32);
              v59 = -1;
              if (v58 < 64)
              {
                v59 = ~(-1 << v58);
              }

              v60 = v59 & *(v29 + 64);
              v61 = (v58 + 63) >> 6;
              while (v60)
              {
                v62 = v55;
LABEL_19:
                v63 = __clz(__rbit64(v60));
                v60 &= v60 - 1;
                v64 = *(*(v29 + 56) + ((v62 << 9) | (8 * v63)));
                v65 = __OFADD__(v56, v64);
                v56 += v64;
                if (v65)
                {
                  __break(1u);
                  goto LABEL_22;
                }
              }

              while (1)
              {
                v62 = v55 + 1;
                if (__OFADD__(v55, 1))
                {
                  break;
                }

                if (v62 >= v61)
                {

                  v93 = v109;
                  (*(v109 + 8))(v108, v50);

                  *(v57 + 3) = v56;
                  (*(v93 + 32))(&v57[*(v11 + 32)], v54, v50);
                  *(v57 + 2) = MEMORY[0x277D84FA0];
                  v94 = v114;
                  sub_22F2F4008(v57, v114, type metadata accessor for PersonalTraitInfo);
                  return (*(v115 + 56))(v94, 0, 1, v11);
                }

                v60 = *(v29 + 64 + 8 * v62);
                ++v55;
                if (v60)
                {
                  v55 = v62;
                  goto LABEL_19;
                }
              }

              __break(1u);
              goto LABEL_49;
            }
          }
        }
      }
    }

    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v95 = sub_22F740B90();
    __swift_project_value_buffer(v95, qword_2810B5038);
    v96 = sub_22F740B70();
    v97 = sub_22F7415E0();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v116[0] = v99;
      *v98 = 136315138;
      v100 = sub_22F741750();
      v102 = sub_22F145F20(v100, v101, v116);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_22F0FC000, v96, v97, "Unexpectedly encountered node identifier %s that wasn't cached before.", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x2319033A0](v99, -1, -1);
      MEMORY[0x2319033A0](v98, -1, -1);
    }
  }

  else
  {
LABEL_22:
    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v66 = sub_22F740B90();
    __swift_project_value_buffer(v66, qword_2810B5038);
    v67 = sub_22F740B70();
    v68 = sub_22F7415E0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v116[0] = v70;
      *v69 = 136315138;
      v71 = sub_22F741750();
      v73 = sub_22F145F20(v71, v72, v116);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_22F0FC000, v67, v68, "[PersonalTraitMomentGraphDataSource] Missing localized name for graph node with element id %s.", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x2319033A0](v70, -1, -1);
      MEMORY[0x2319033A0](v69, -1, -1);
    }
  }

  v74 = v114;
  v75 = *(v115 + 56);
  v76 = v11;
LABEL_28:

  return v75(v74, 1, 1, v76);
}

void sub_22F2F01B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v101 = a6;
  v103 = a4;
  v95 = a10;
  v97 = a9;
  v98 = a7;
  v102 = sub_22F73FFB0();
  v14 = *(v102 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v102);
  v17 = (&v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for PersonalTraitInfo(0);
  v96 = *(v99 - 8);
  v18 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v20 = (&v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v100 = &v89 - v23;
  v24 = [a2 localizedNames];
  v25 = sub_22F741420();

  v104 = sub_22F15ABD4(v25);
  v27 = v26;

  if (!v27)
  {
LABEL_10:
    if (qword_2810AC5A0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

  v93 = a8;
  v28 = a3;
  v29 = [a2 labels];
  v30 = sub_22F741420();

  v94 = sub_22F15ABD4(v30);
  v32 = v31;

  if (!v32)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (sub_22F740F10() < 1)
  {

    goto LABEL_9;
  }

  v90 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v33 = v103 + *(v90 + 28);
  v35 = *v33;
  v34 = *(v33 + 8);
  v36 = [a2 elementIdentifiers];
  v37 = [v35 targetsForSources_];

  v38 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:v34 elementIdentifiers:v37];
  v91 = v38;
  v92 = [v38 collectionByIntersecting_];
  v39 = sub_22F740E20();
  v41 = v94;
  v89 = v28;
  if (v94 == v39 && v32 == v40)
  {
    v42 = 32;
    v43 = v14;
    v44 = v102;
LABEL_7:
    v45 = v90;

LABEL_19:
    v55 = v103 + *(v45 + v42);
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = v92;
    v59 = [v92 elementIdentifiers];
    v60 = [v56 targetsForSources_];

    v61 = [objc_allocWithZone(PGGraphPersonNodeCollection) initWithGraph:v57 elementIdentifiers:v60];
    v62 = [v61 uuids];

    v63 = sub_22F741420();
    goto LABEL_20;
  }

  v54 = sub_22F742040();

  v43 = v14;
  if (v54)
  {
    v42 = 32;
    v44 = v102;
LABEL_18:
    v45 = v90;
    goto LABEL_19;
  }

  v86 = sub_22F740E20();
  v44 = v102;
  if (v41 == v86 && v32 == v87)
  {
    v42 = 36;
    goto LABEL_7;
  }

  v88 = sub_22F742040();

  if (v88)
  {
    v42 = 36;
    goto LABEL_18;
  }

  v63 = MEMORY[0x277D84FA0];
  v58 = v92;
LABEL_20:
  *v17 = v94;
  v17[1] = v32;
  (*(v43 + 104))(v17, *MEMORY[0x277D3C030], v44);
  v64 = [v58 numberOfAssetsByMomentUUID];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v65 = sub_22F740CA0();

  v66 = sub_22F2F2AFC(v65);

  v67 = 0;
  v68 = 0;
  *v20 = v104;
  v20[1] = v27;
  v20[4] = v66;
  v69 = 1 << LOBYTE(v66[4].isa);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  isa = v70 & v66[8].isa;
  v72 = (v69 + 63) >> 6;
  while (isa)
  {
    v73 = v67;
LABEL_29:
    v74 = __clz(__rbit64(isa));
    isa &= isa - 1;
    v75 = *(v66[7].isa + ((v73 << 9) | (8 * v74)));
    v76 = __OFADD__(v68, v75);
    v68 = (v68 + v75);
    if (v76)
    {
      __break(1u);
LABEL_32:
      v20[3] = v68;
      (*(v43 + 32))(v20 + *(v99 + 32), v17, v44);
      v20[2] = v63;
      v77 = v100;
      sub_22F2F4008(v20, v100, type metadata accessor for PersonalTraitInfo);
      v78 = v101;
      v79 = *v101;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v78 = v79;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v79 = sub_22F13FA8C(0, v79[2] + 1, 1, v79);
        *v78 = v79;
      }

      v81 = v96;
      v83 = v79[2];
      v82 = v79[3];
      if (v83 >= v82 >> 1)
      {
        v79 = sub_22F13FA8C(v82 > 1, v83 + 1, 1, v79);
        *v78 = v79;
      }

      v79[2] = v83 + 1;
      sub_22F2F4008(v77, v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v83, type metadata accessor for PersonalTraitInfo);
      v84 = v93;
      v85 = *v93;
      sub_22F741680();

      if (__OFADD__(*v84, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v84;
      }

      return;
    }
  }

  while (1)
  {
    v73 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v73 >= v72)
    {
      goto LABEL_32;
    }

    isa = v66[v73 + 8].isa;
    ++v67;
    if (isa)
    {
      v67 = v73;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_11:
  v46 = sub_22F740B90();
  __swift_project_value_buffer(v46, qword_2810B5038);
  v104 = sub_22F740B70();
  v47 = sub_22F7415E0();
  if (os_log_type_enabled(v104, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v105 = v49;
    *v48 = 136315138;
    v50 = sub_22F741750();
    v52 = sub_22F145F20(v50, v51, &v105);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_22F0FC000, v104, v47, "[PersonalTraitMomentGraphDataSource] Missing localized name for PGGraphMeaningNode with element id %s.", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x2319033A0](v49, -1, -1);
    MEMORY[0x2319033A0](v48, -1, -1);
  }

  else
  {
    v53 = v104;
  }
}

uint64_t sub_22F2F0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v11 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = *a4;
  *a4 = 0x8000000000000000;
  sub_22F131FC0(a2, a1, isUniquelyReferenced_nonNull_native);
  v13 = *a4;
  *a4 = v29[0];

  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  DynamicType = swift_getDynamicType();
  v15 = a5[4];
  v16 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  swift_unknownObjectRetain();
  v17 = [v16 initWithElementIdentifier_];
  v18 = *(v15 + 24);
  v29[3] = DynamicType;
  v29[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v29);
  v18(a6, v17, DynamicType, v15);
  v19 = (*(v15 + 16))(DynamicType, v15);
  sub_22F15ABD4(v19);
  v21 = v20;

  if (v21)
  {
    v22 = sub_22F740EA0();
    v24 = v23;

    v25 = a4[1];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v28 = a4[1];
    a4[1] = 0x8000000000000000;
    sub_22F1319BC(v22, v24, a1, v26);
    a4[1] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_0(v29);
}

unint64_t sub_22F2F0C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  result = sub_22F1319BC(a2, a3, a1, isUniquelyReferenced_nonNull_native);
  *(a5 + 16) = v12;
  return result;
}

uint64_t sub_22F2F0D14()
{
  v1 = [*v0 labels];
  v2 = sub_22F741420();

  return v2;
}

void sub_22F2F0D6C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGraph:a1 elementIdentifiers:a2];
  swift_unknownObjectRelease();

  *a3 = v5;
}

uint64_t sub_22F2F0DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[4] = a6;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22F2F0CB8;
  v16[3] = a7;
  v14 = _Block_copy(v16);

  [v12 enumerateSceneIdentifiersUsingBlock_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F2F0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[4] = a6;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22F2136B4;
  v16[3] = a7;
  v14 = _Block_copy(v16);

  [v12 enumerateLocalizedNamesUsingBlock_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

void sub_22F2F1038(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F73FFC0();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F73FFC0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2F1538(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2F1164(0, v2, 1, a1);
  }
}

void sub_22F2F1164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F73FFC0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v50 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = *(v20 + 56);
    v60 = (v20 - 8);
    v61 = v21;
    v62 = v20;
    v23 = (v19 + v22 * (a3 - 1));
    v56 = -v22;
    v57 = (v20 + 16);
    v24 = a1 - a3;
    v58 = v19;
    v49 = v22;
    v25 = v19 + v22 * a3;
    v55 = v8;
LABEL_6:
    v53 = v23;
    v54 = a3;
    v51 = v25;
    v52 = v24;
    while (1)
    {
      v27 = v61;
      (v61)(v18, v25, v8, v16);
      v27(v13, v23, v8);
      sub_22F73FF70();
      v29 = v28;
      sub_22F73FF70();
      if (v29 == v30)
      {
        v63 = sub_22F73FF90();
        v64 = v31;
        sub_22F160DE4();
        v32 = v18;
        v33 = sub_22F7418F0();

        v63 = sub_22F73FF90();
        v64 = v34;
        v35 = sub_22F7418F0();

        if (v33 == v35)
        {
          v36 = sub_22F73FF90();
          v38 = v37;
          v18 = v32;
          if (v36 == sub_22F73FF90() && v38 == v39)
          {

            v26 = *v60;
            v8 = v55;
            (*v60)(v13, v55);
            v26(v18, v8);
LABEL_5:
            a3 = v54 + 1;
            v23 = &v53[v49];
            v24 = v52 - 1;
            v25 = v51 + v49;
            if (v54 + 1 == v50)
            {
              return;
            }

            goto LABEL_6;
          }

          v40 = sub_22F742040();
        }

        else
        {
          v40 = v33 < v35;
          v18 = v32;
        }

        v8 = v55;
      }

      else
      {
        sub_22F73FF70();
        v42 = v41;
        sub_22F73FF70();
        v40 = v43 < v42;
      }

      v44 = *v60;
      (*v60)(v13, v8);
      v44(v18, v8);
      if ((v40 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v45 = *v57;
      v46 = v59;
      (*v57)(v59, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      v45(v23, v46, v8);
      v23 += v56;
      v25 += v56;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F2F1538(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v157 = a1;
  v6 = sub_22F73FFC0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v164 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v177 = &v154 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v154 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v154 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v154 - v19;
  MEMORY[0x28223BE20](v21);
  v170 = &v154 - v22;
  MEMORY[0x28223BE20](v23);
  v154 = &v154 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v158 = &v154 - v27;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_116:
    a4 = *v157;
    if (!*v157)
    {
      goto LABEL_158;
    }

    v20 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v173;
    if (isUniquelyReferenced_nonNull_native)
    {
      v148 = v20;
    }

    else
    {
LABEL_152:
      v148 = sub_22F3F5F98(v20);
    }

    v184 = v148;
    v20 = *(v148 + 2);
    if (v20 >= 2)
    {
      while (*a3)
      {
        v149 = *&v148[16 * v20];
        v150 = v148;
        v151 = *&v148[16 * v20 + 24];
        sub_22F2F22E8(*a3 + v7[9] * v149, *a3 + v7[9] * *&v148[16 * v20 + 16], *a3 + v7[9] * v151, a4);
        if (v17)
        {
          goto LABEL_130;
        }

        if (v151 < v149)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_22F3F5F98(v150);
        }

        if (v20 - 2 >= *(v150 + 2))
        {
          goto LABEL_146;
        }

        v152 = &v150[16 * v20];
        *v152 = v149;
        *(v152 + 1) = v151;
        v184 = v150;
        sub_22F3F5F0C(v20 - 1);
        v148 = v184;
        v20 = *(v184 + 2);
        if (v20 <= 1)
        {
          goto LABEL_130;
        }
      }

      goto LABEL_156;
    }

    goto LABEL_130;
  }

  v29 = 0;
  v180 = v7 + 2;
  v181 = v7 + 1;
  v179 = v7 + 4;
  v30 = MEMORY[0x277D84F90];
  v161 = a3;
  v174 = v6;
  v156 = a4;
  v171 = v14;
  v162 = v20;
  v155 = v7;
  v160 = v17;
  while (1)
  {
    v31 = v29 + 1;
    v165 = v30;
    if (v29 + 1 < v28)
    {
      v172 = v28;
      v159 = v29;
      v32 = *a3;
      v33 = v7[9];
      v34 = (*a3 + v33 * v31);
      v35 = v7[2];
      v35(v158, v34, v6, v26);
      v178 = v32;
      v176 = v33;
      v36 = &v32[v33 * v159];
      v37 = v154;
      v169 = v35;
      (v35)(v154, v36, v6);
      v38 = v173;
      LODWORD(v175) = sub_22F2EF17C();
      if (!v38)
      {
        v173 = 0;
        v39 = *v181;
        (*v181)(v37, v6);
        v168 = v39;
        (v39)(v158, v6);
        v40 = v159 + 2;
        v41 = v176;
        v42 = &v178[v176 * (v159 + 2)];
        do
        {
          if (v172 == v40)
          {
            v63 = v172;
            goto LABEL_21;
          }

          v48 = v169;
          v49 = v170;
          (v169)(v170, v42, v6);
          v48(v20, v34, v6);
          v50 = v20;
          sub_22F73FF70();
          v52 = v51;
          sub_22F73FF70();
          v178 = v34;
          if (v52 == v53)
          {
            v182 = sub_22F73FF90();
            v183 = v54;
            sub_22F160DE4();
            v55 = sub_22F7418F0();

            v182 = sub_22F73FF90();
            v183 = v56;
            v57 = sub_22F7418F0();

            if (v55 == v57)
            {
              v58 = sub_22F73FF90();
              v60 = v59;
              v61 = sub_22F73FF90();
              v14 = v171;
              if (v58 == v61 && v60 == v62)
              {

                v46 = 0;
              }

              else
              {
                v46 = sub_22F742040();
              }

              v6 = v174;
              v50 = v162;
              v49 = v170;
            }

            else
            {
              v46 = v55 < v57;
              v6 = v174;
              v14 = v171;
            }
          }

          else
          {
            sub_22F73FF70();
            v44 = v43;
            sub_22F73FF70();
            v46 = v45 < v44;
          }

          v47 = v168;
          (v168)(v50, v6);
          v47(v49, v6);
          ++v40;
          v41 = v176;
          v42 += v176;
          v34 = &v178[v176];
          v20 = v50;
        }

        while (((v175 ^ v46) & 1) == 0);
        v63 = v40 - 1;
LABEL_21:
        a3 = v161;
        v7 = v155;
        v64 = v165;
        a4 = v156;
        v17 = v160;
        v29 = v159;
        if (v175)
        {
          if (v63 < v159)
          {
            goto LABEL_151;
          }

          if (v159 < v63)
          {
            v20 = v41 * (v63 - 1);
            v65 = v63 * v41;
            v172 = v63;
            v66 = v63;
            v67 = v159;
            v68 = v159 * v41;
            do
            {
              if (v67 != --v66)
              {
                v70 = *a3;
                if (!v70)
                {
                  goto LABEL_155;
                }

                v71 = *v179;
                (*v179)(v164, &v70[v68], v174, v64);
                if (v68 < v20 || &v70[v68] >= &v70[v65])
                {
                  v69 = v174;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v69 = v174;
                  if (v68 != v20)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v71(&v70[v20], v164, v69);
                a3 = v161;
                v64 = v165;
                v14 = v171;
                v17 = v160;
                v41 = v176;
              }

              ++v67;
              v20 -= v41;
              v65 -= v41;
              v68 += v41;
            }

            while (v67 < v66);
            v7 = v155;
            v6 = v174;
            a4 = v156;
            v29 = v159;
            v63 = v172;
          }
        }

        goto LABEL_35;
      }

      v153 = *v181;
      (*v181)(v37, v6);
      v153(v158, v6);
LABEL_130:

      return;
    }

    v63 = v29 + 1;
LABEL_35:
    v72 = a3[1];
    if (v63 >= v72)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v63, v29))
    {
      goto LABEL_148;
    }

    if (v63 - v29 >= a4)
    {
LABEL_44:
      v74 = v63;
      if (v63 < v29)
      {
        goto LABEL_147;
      }

      goto LABEL_45;
    }

    if (__OFADD__(v29, a4))
    {
      goto LABEL_149;
    }

    if (v29 + a4 >= v72)
    {
      v73 = a3[1];
    }

    else
    {
      v73 = v29 + a4;
    }

    if (v73 < v29)
    {
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v63 == v73)
    {
      goto LABEL_44;
    }

    v122 = *a3;
    v123 = v7[9];
    v178 = v7[2];
    v124 = &v122[v123 * (v63 - 1)];
    v175 = -v123;
    v159 = v29;
    v125 = (v29 - v63);
    v176 = v122;
    v163 = v123;
    a4 = &v122[v63 * v123];
    v166 = v73;
LABEL_98:
    v172 = v63;
    v167 = a4;
    v168 = v125;
    v169 = v124;
    v127 = v124;
LABEL_99:
    v128 = v178;
    (v178)(v17, a4, v6, v26);
    v128(v14, v127, v6);
    sub_22F73FF70();
    v130 = v129;
    sub_22F73FF70();
    if (v130 != v131)
    {
      sub_22F73FF70();
      v143 = v142;
      sub_22F73FF70();
      v141 = v144 < v143;
      goto LABEL_106;
    }

    v182 = sub_22F73FF90();
    v183 = v132;
    sub_22F160DE4();
    v133 = v17;
    v134 = sub_22F7418F0();

    v182 = sub_22F73FF90();
    v183 = v135;
    v136 = sub_22F7418F0();

    if (v134 != v136)
    {
      break;
    }

    v137 = sub_22F73FF90();
    v139 = v138;
    v17 = v133;
    if (v137 != sub_22F73FF90() || v139 != v140)
    {
      v141 = sub_22F742040();

      v6 = v174;
      goto LABEL_106;
    }

    v20 = v181;
    v126 = *v181;
    v6 = v174;
    (*v181)(v14, v174);
    v126(v133, v6);
LABEL_97:
    v63 = v172 + 1;
    v124 = &v169[v163];
    v125 = v168 - 1;
    v74 = v166;
    a4 = v167 + v163;
    if (v172 + 1 != v166)
    {
      goto LABEL_98;
    }

    a3 = v161;
    v7 = v155;
    v29 = v159;
    if (v166 < v159)
    {
      goto LABEL_147;
    }

LABEL_45:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = v165;
    }

    else
    {
      v30 = sub_22F13D970(0, *(v165 + 2) + 1, 1, v165);
    }

    v76 = *(v30 + 2);
    v75 = *(v30 + 3);
    v20 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v30 = sub_22F13D970((v75 > 1), v76 + 1, 1, v30);
    }

    *(v30 + 2) = v20;
    v77 = &v30[16 * v76];
    *(v77 + 4) = v29;
    *(v77 + 5) = v74;
    v166 = v74;
    v78 = *v157;
    if (!*v157)
    {
      goto LABEL_157;
    }

    if (v76)
    {
      while (2)
      {
        a4 = v20 - 1;
        if (v20 >= 4)
        {
          v83 = &v30[16 * v20 + 32];
          v84 = *(v83 - 64);
          v85 = *(v83 - 56);
          v89 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          if (v89)
          {
            goto LABEL_134;
          }

          v88 = *(v83 - 48);
          v87 = *(v83 - 40);
          v89 = __OFSUB__(v87, v88);
          v81 = v87 - v88;
          v82 = v89;
          if (v89)
          {
            goto LABEL_135;
          }

          v90 = &v30[16 * v20];
          v92 = *v90;
          v91 = *(v90 + 1);
          v89 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v89)
          {
            goto LABEL_137;
          }

          v89 = __OFADD__(v81, v93);
          v94 = v81 + v93;
          if (v89)
          {
            goto LABEL_140;
          }

          if (v94 >= v86)
          {
            v112 = &v30[16 * a4 + 32];
            v114 = *v112;
            v113 = *(v112 + 1);
            v89 = __OFSUB__(v113, v114);
            v115 = v113 - v114;
            if (v89)
            {
              goto LABEL_144;
            }

            if (v81 < v115)
            {
              a4 = v20 - 2;
            }
          }

          else
          {
LABEL_64:
            if (v82)
            {
              goto LABEL_136;
            }

            v95 = &v30[16 * v20];
            v97 = *v95;
            v96 = *(v95 + 1);
            v98 = __OFSUB__(v96, v97);
            v99 = v96 - v97;
            v100 = v98;
            if (v98)
            {
              goto LABEL_139;
            }

            v101 = &v30[16 * a4 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v89 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v89)
            {
              goto LABEL_142;
            }

            if (__OFADD__(v99, v104))
            {
              goto LABEL_143;
            }

            if (v99 + v104 < v81)
            {
              goto LABEL_78;
            }

            if (v81 < v104)
            {
              a4 = v20 - 2;
            }
          }
        }

        else
        {
          if (v20 == 3)
          {
            v79 = *(v30 + 4);
            v80 = *(v30 + 5);
            v89 = __OFSUB__(v80, v79);
            v81 = v80 - v79;
            v82 = v89;
            goto LABEL_64;
          }

          v105 = &v30[16 * v20];
          v107 = *v105;
          v106 = *(v105 + 1);
          v89 = __OFSUB__(v106, v107);
          v99 = v106 - v107;
          v100 = v89;
LABEL_78:
          if (v100)
          {
            goto LABEL_138;
          }

          v108 = &v30[16 * a4];
          v110 = *(v108 + 4);
          v109 = *(v108 + 5);
          v89 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v89)
          {
            goto LABEL_141;
          }

          if (v111 < v99)
          {
            break;
          }
        }

        v116 = a4 - 1;
        if (a4 - 1 >= v20)
        {
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
          goto LABEL_150;
        }

        if (!*a3)
        {
          goto LABEL_154;
        }

        v117 = v30;
        v20 = *&v30[16 * v116 + 32];
        v118 = *&v30[16 * a4 + 40];
        v119 = v173;
        sub_22F2F22E8(*a3 + v7[9] * v20, *a3 + v7[9] * *&v30[16 * a4 + 32], *a3 + v7[9] * v118, v78);
        v173 = v119;
        if (v119)
        {
          goto LABEL_130;
        }

        if (v118 < v20)
        {
          goto LABEL_132;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v120 = v117;
        }

        else
        {
          v120 = sub_22F3F5F98(v117);
        }

        v14 = v171;
        if (v116 >= *(v120 + 2))
        {
          goto LABEL_133;
        }

        v121 = &v120[16 * v116];
        *(v121 + 4) = v20;
        *(v121 + 5) = v118;
        v184 = v120;
        sub_22F3F5F0C(a4);
        v30 = v184;
        v20 = *(v184 + 2);
        v6 = v174;
        if (v20 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = a3[1];
    v29 = v166;
    a4 = v156;
    v20 = v162;
    if (v166 >= v28)
    {
      goto LABEL_116;
    }
  }

  v141 = v134 < v136;
  v6 = v174;
  v17 = v133;
LABEL_106:
  v20 = *v181;
  (*v181)(v14, v6);
  (v20)(v17, v6);
  if ((v141 & 1) == 0)
  {
    goto LABEL_97;
  }

  if (v176)
  {
    v20 = *v179;
    v145 = v177;
    (*v179)(v177, a4, v6);
    swift_arrayInitWithTakeFrontToBack();
    (v20)(v127, v145, v6);
    v127 += v175;
    a4 += v175;
    if (__CFADD__(v125++, 1))
    {
      goto LABEL_97;
    }

    goto LABEL_99;
  }

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

void sub_22F2F22E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v88 = sub_22F73FFC0();
  v8 = *(v88 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v88);
  v83 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v76 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v76 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v86 = *(v19 + 72);
  if (!v86)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return;
  }

  v89 = a2;
  if (a2 - a1 == 0x8000000000000000 && v86 == -1)
  {
    goto LABEL_80;
  }

  v20 = a3 - v89;
  if (a3 - v89 == 0x8000000000000000 && v86 == -1)
  {
    goto LABEL_81;
  }

  v21 = (a2 - a1) / v86;
  v93 = a4;
  v94 = a1;
  if (v21 >= v20 / v86)
  {
    v23 = v20 / v86 * v86;
    if (a4 < v89 || v89 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v89)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v23;
    if (v23 >= 1)
    {
      v48 = -v86;
      v79 = (v8 + 8);
      v80 = (v8 + 16);
      v49 = a4 + v23;
      v87 = a4;
      v84 = -v86;
      do
      {
        v77 = v47;
        v50 = v89;
        v89 += v48;
        v81 = v50;
        while (1)
        {
          if (v50 <= a1)
          {
            v94 = v50;
            v92 = v77;
            goto LABEL_78;
          }

          v51 = a3;
          v78 = v47;
          v52 = v84;
          v53 = *v80;
          v54 = v82;
          v85 = v49 + v84;
          v86 = v49;
          v55 = v88;
          v53(v82);
          v56 = v83;
          (v53)(v83, v89, v55);
          sub_22F73FF70();
          v58 = v57;
          sub_22F73FF70();
          if (v58 == v59)
          {
            v90 = sub_22F73FF90();
            v91 = v60;
            sub_22F160DE4();
            v61 = sub_22F7418F0();

            v90 = sub_22F73FF90();
            v91 = v62;
            v63 = sub_22F7418F0();

            if (v61 == v63)
            {
              v64 = sub_22F73FF90();
              v66 = v65;
              if (v64 == sub_22F73FF90() && v66 == v67)
              {

                v68 = 0;
              }

              else
              {
                v68 = sub_22F742040();
              }

              a4 = v87;
              v54 = v82;
              v56 = v83;
            }

            else
            {
              v68 = v61 < v63;
              a4 = v87;
            }

            v52 = v84;
          }

          else
          {
            sub_22F73FF70();
            v70 = v69;
            sub_22F73FF70();
            v68 = v71 < v70;
          }

          a3 = v51 + v52;
          v72 = *v79;
          v73 = v56;
          v74 = v88;
          (*v79)(v73, v88);
          v72(v54, v74);
          if (v68)
          {
            break;
          }

          v75 = v85;
          v47 = v85;
          if (v51 < v86 || a3 >= v86)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v51 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v47;
          v50 = v81;
          if (v75 <= a4)
          {
            v89 = v81;
            goto LABEL_77;
          }
        }

        if (v51 < v81 || a3 >= v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v47 = v78;
        }

        else
        {
          v47 = v78;
          if (v51 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v49 = v86;
        v48 = v84;
      }

      while (v86 > a4);
    }

LABEL_77:
    v94 = v89;
    v92 = v47;
  }

  else
  {
    v22 = v21 * v86;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v84 = a3;
    v85 = a4 + v22;
    v92 = a4 + v22;
    v24 = v88;
    if (v22 >= 1 && v89 < a3)
    {
      v26 = v89;
      v82 = *(v8 + 16);
      v83 = (v8 + 16);
      v81 = (v8 + 8);
      do
      {
        v27 = v82;
        (v82)(v18, v26, v24);
        v27(v15, a4, v24);
        sub_22F73FF70();
        v29 = v28;
        sub_22F73FF70();
        if (v29 == v30)
        {
          v87 = a4;
          v89 = v26;
          v90 = sub_22F73FF90();
          v91 = v31;
          sub_22F160DE4();
          v32 = sub_22F7418F0();

          v90 = sub_22F73FF90();
          v91 = v33;
          v34 = sub_22F7418F0();

          if (v32 == v34)
          {
            v35 = sub_22F73FF90();
            v37 = v36;
            if (v35 == sub_22F73FF90() && v37 == v38)
            {

              v39 = *v81;
              (*v81)(v15, v24);
              v39(v18, v24);
              v26 = v89;
              a4 = v87;
              goto LABEL_35;
            }

            v43 = sub_22F742040();
          }

          else
          {
            v43 = v32 < v34;
          }

          v26 = v89;
          a4 = v87;
        }

        else
        {
          sub_22F73FF70();
          v41 = v40;
          sub_22F73FF70();
          v43 = v42 < v41;
        }

        v44 = *v81;
        (*v81)(v15, v24);
        v44(v18, v24);
        if (v43)
        {
          v45 = v86;
          if (a1 < v26 || a1 >= v26 + v86)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 += v45;
          goto LABEL_43;
        }

LABEL_35:
        v45 = v86;
        v46 = a4 + v86;
        if (a1 < a4 || a1 >= v46)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v93 = v46;
        a4 += v45;
LABEL_43:
        a1 += v45;
        v94 = a1;
      }

      while (a4 < v85 && v26 < v84);
    }
  }

LABEL_78:
  sub_22F3B6708(&v94, &v93, &v92);
}

void *sub_22F2F2AFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
  result = sub_22F741DC0();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v25 + 56) + 8 * v15);

      result = [v19 integerValue];
      *&v24[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = result;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2F2CF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22F741A00();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_22F741B50();
}

uint64_t sub_22F2F2D5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_22F2F2D94(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_22F10BBDC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_22F2F2E24(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_22F2F3FA0(v11, v5, type metadata accessor for Song);
      sub_22F10C40C(v9, v5);
      sub_22F2F4070(v9, type metadata accessor for Song);
      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_22F2F2F58(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    a2(&v45, v48);

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_22F1229E8(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_28;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_22F1341B0();
      }
    }

    else
    {
      v30 = v49;
      sub_22F125704(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_22F1229E8(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_30;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {
      v12 = *(v34[7] + 8 * v25);

      if (v22 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v22;
      }

      *(v34[7] + 8 * v25) = v13;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_29;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_22F0FF590();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F2F31DC(uint64_t a1, char a2, uint64_t *a3)
{
  v60 = a3;
  v5 = type metadata accessor for PersonalTraitInfo(0);
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v59 = &v48 - v11;
  v12 = sub_22F73FFB0();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11F8, &unk_22F783C90);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v57 = &v48 - v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = *(v18 + 48);
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v54 = *(v19 + 72);
    v55 = v22;
    v58 = (v52 + 32);
    v49 = (v52 + 8);
    while (1)
    {
      v31 = v57;
      sub_22F13BA9C(v23, v57, &qword_27DAB11F8, &unk_22F783C90);
      v32 = *v58;
      (*v58)(v15, v31, v12);
      sub_22F2F4008(v31 + v55, v59, type metadata accessor for PersonalTraitInfo);
      v33 = *v60;
      v35 = sub_22F1233A4(v15);
      v36 = *(v33 + 16);
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        break;
      }

      v39 = v34;
      if (*(v33 + 24) >= v38)
      {
        if ((a2 & 1) == 0)
        {
          sub_22F13706C();
        }
      }

      else
      {
        v40 = v60;
        sub_22F12A868(v38, a2 & 1);
        v41 = *v40;
        v42 = sub_22F1233A4(v15);
        if ((v39 & 1) != (v43 & 1))
        {
          goto LABEL_17;
        }

        v35 = v42;
      }

      v44 = *v60;
      if (v39)
      {
        v24 = v44[7];
        v53 = *(v56 + 72) * v35;
        v25 = v51;
        sub_22F2F3FA0(v24 + v53, v51, type metadata accessor for PersonalTraitInfo);
        v26 = v50;
        v27 = v15;
        v28 = v12;
        v29 = v59;
        sub_22F2EED50(v59, v50);
        sub_22F2F4070(v25, type metadata accessor for PersonalTraitInfo);
        v30 = v29;
        v12 = v28;
        v15 = v27;
        sub_22F2F4070(v30, type metadata accessor for PersonalTraitInfo);
        (*v49)(v27, v12);
        sub_22F2F3B58(v26, v44[7] + v53);
      }

      else
      {
        v44[(v35 >> 6) + 8] |= 1 << v35;
        v32((v44[6] + *(v52 + 72) * v35), v15, v12);
        sub_22F2F4008(v59, v44[7] + *(v56 + 72) * v35, type metadata accessor for PersonalTraitInfo);
        v45 = v44[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_16;
        }

        v44[2] = v47;
      }

      v23 += v54;
      a2 = 1;
      if (!--v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_22F7420C0();
    __break(1u);
  }
}

unint64_t sub_22F2F3674(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    v12 = *v4;

    result = sub_22F1229E8(v10, v9);
    v14 = v12[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      sub_22F127C90(v17, a2 & 1);
      v19 = *v4;
      result = sub_22F1229E8(v10, v9);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v21 = *v4;
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v31 = result;
    sub_22F135844();
    result = v31;
    v4 = a3;
    v21 = *a3;
    if ((v18 & 1) == 0)
    {
LABEL_25:
      v21[(result >> 6) + 8] |= 1 << result;
      v32 = (v21[6] + 16 * result);
      *v32 = v10;
      v32[1] = v9;
      *(v21[7] + 8 * result) = v11;
      v33 = v21[2];
      v16 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v16)
      {
        goto LABEL_30;
      }

      v21[2] = v34;
      goto LABEL_5;
    }

LABEL_12:
    v22 = *(v21[7] + 8 * result);
    v23 = *(v11 + 16);
    v24 = *(v22 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_29;
    }

    v36 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v27 = *(v22 + 3) >> 1, v27 < v25))
    {
      if (v24 <= v25)
      {
        v28 = v24 + v23;
      }

      else
      {
        v28 = v24;
      }

      v22 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v28, 1, v22);
      v27 = *(v22 + 3) >> 1;
    }

    v4 = a3;
    if (*(v11 + 16))
    {
      if (v27 - *(v22 + 2) < v23)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v29 = *(v22 + 2);
        v16 = __OFADD__(v29, v23);
        v30 = v29 + v23;
        if (v16)
        {
          goto LABEL_33;
        }

        *(v22 + 2) = v30;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_31;
      }
    }

    v7 = v21[7];
    v8 = *(v7 + 8 * v36);
    *(v7 + 8 * v36) = v22;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F2F38DC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_22F1229E8(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_22F125704(v15, v5 & 1);
    v17 = *a3;
    result = sub_22F1229E8(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_12:
    v19[(result >> 6) + 8] |= 1 << result;
    v23 = (v19[6] + 16 * result);
    *v23 = v8;
    v23[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v24 = v19[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19[2] = v25;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_15;
    }

    return result;
  }

  v22 = result;
  sub_22F1341B0();
  result = v22;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v20 = result;
  v21 = *(v19[7] + 8 * result);

  if (__OFADD__(v21, v9))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  *(v19[7] + 8 * v20) = v21 + v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_15:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v29 = *a3;

      result = sub_22F1229E8(v7, v6);
      v31 = v29[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_25;
      }

      v8 = v30;
      if (v29[3] < v33)
      {
        sub_22F125704(v33, 1);
        v34 = *a3;
        result = sub_22F1229E8(v7, v6);
        if ((v8 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      v36 = *a3;
      if (v8)
      {
        v37 = result;
        v38 = *(v36[7] + 8 * result);

        if (__OFADD__(v38, v9))
        {
          goto LABEL_27;
        }

        *(v36[7] + 8 * v37) = v38 + v9;
      }

      else
      {
        v36[(result >> 6) + 8] |= 1 << result;
        v26 = (v36[6] + 16 * result);
        *v26 = v7;
        v26[1] = v6;
        *(v36[7] + 8 * result) = v9;
        v27 = v36[2];
        v14 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        v36[2] = v28;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_22F2F3B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F2F3BE4()
{
  sub_22F740820();
  if (v0 <= 0x3F)
  {
    sub_22F740620();
    if (v1 <= 0x3F)
    {
      sub_22F120634(319, &qword_2810A8EE8, off_27887AB78);
      if (v2 <= 0x3F)
      {
        sub_22F2F3CC0();
        if (v3 <= 0x3F)
        {
          sub_22F2F3D48();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22F2F3CC0()
{
  if (!qword_2810A9F18[0])
  {
    sub_22F120634(255, &qword_2810A8FA0, off_27887B088);
    sub_22F120634(255, &qword_2810A8FC8, off_27887B108);
    v0 = type metadata accessor for NodeCollectionBinaryAdjacency();
    if (!v1)
    {
      atomic_store(v0, qword_2810A9F18);
    }
  }
}

void sub_22F2F3D48()
{
  if (!qword_27DAB3480)
  {
    sub_22F120634(255, &qword_2810A8FC8, off_27887B108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3478, &unk_22F783BA0);
    v0 = type metadata accessor for NodeCollectionBinaryAdjacency();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAB3480);
    }
  }
}

void sub_22F2F3DF4()
{
  sub_22F2F3EA8();
  if (v0 <= 0x3F)
  {
    sub_22F2F3F00();
    if (v1 <= 0x3F)
    {
      sub_22F73FFB0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22F2F3EA8()
{
  if (!qword_27DAB3488)
  {
    v0 = sub_22F741490();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAB3488);
    }
  }
}

void sub_22F2F3F00()
{
  if (!qword_2810A9398)
  {
    v0 = sub_22F740CE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2810A9398);
    }
  }
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2F3F78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22F2F3FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F2F4008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F2F4070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22F2F40D0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22F2F01B4(a1, a2, a3, v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22F2F41D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_43Tm()
{
  v1 = (type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v3;
  v9 = sub_22F740820();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v1[7];
  v11 = sub_22F740620();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);

  v12 = v8 + v1[9];
  v13 = *(v12 + 8);
  swift_unknownObjectRelease();
  v14 = v8 + v1[10];

  v15 = *(v14 + 8);
  swift_unknownObjectRelease();
  v16 = v8 + v1[11];

  v17 = *(v16 + 8);
  swift_unknownObjectRelease();
  v18 = *(v0 + v4);

  v19 = *(v0 + v5);

  v20 = *(v0 + v5 + 8);

  v21 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22F2F43EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v3 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_22F2EF2F8(a1, a2, a3, v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), *(v3 + v10 + 16), *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + v14));
}

uint64_t sub_22F2F44F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11F8, &unk_22F783C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F2F4568()
{
  result = qword_2810A9520;
  if (!qword_2810A9520)
  {
    type metadata accessor for SongEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9520);
  }

  return result;
}

uint64_t EventFeatureExtractors.init(graphFeatureExtractors:momentNodeFeatureExtractors:assetFetchResultFeatureExtractors:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  if (a1 >> 62)
  {
    v8 = sub_22F741A00();
    a1 = v7;
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = a1;
  v9 = MEMORY[0x277D84F90];
  v73 = a4;
  if (v8)
  {
    v75 = MEMORY[0x277D84F90];

    result = sub_22F146454(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v11 = v75;
    v12 = v7;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        MEMORY[0x2319016F0](v13, v12);
        v14 = [swift_unknownObjectRetain() name];
        v15 = sub_22F740E20();
        v17 = v16;
        swift_unknownObjectRelease_n();

        v19 = *(v75 + 16);
        v18 = *(v75 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22F146454((v18 > 1), v19 + 1, 1);
        }

        ++v13;
        *(v75 + 16) = v19 + 1;
        v20 = v75 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v12 = v74;
      }

      while (v8 != v13);
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(v12 + v21);
        v23 = [v22 name];
        v24 = sub_22F740E20();
        v26 = v25;

        v28 = *(v75 + 16);
        v27 = *(v75 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22F146454((v27 > 1), v28 + 1, 1);
        }

        *(v75 + 16) = v28 + 1;
        v29 = v75 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v21 += 8;
        --v8;
        v12 = v74;
      }

      while (v8);
    }

    v7 = v12;

    v9 = MEMORY[0x277D84F90];
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v30 = sub_22F1515F8(v11);

  if (!(a2 >> 62))
  {
    v31 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_19;
    }

LABEL_33:

    v32 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v31 = sub_22F741A00();
  if (!v31)
  {
    goto LABEL_33;
  }

LABEL_19:
  result = sub_22F146454(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v71 = v30;
  v32 = v9;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v33 = 0;
    do
    {
      MEMORY[0x2319016F0](v33, a2);
      v34 = [swift_unknownObjectRetain() name];
      v35 = sub_22F740E20();
      v37 = v36;
      swift_unknownObjectRelease_n();

      v39 = *(v9 + 16);
      v38 = *(v9 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22F146454((v38 > 1), v39 + 1, 1);
      }

      ++v33;
      *(v9 + 16) = v39 + 1;
      v40 = v9 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
    }

    while (v31 != v33);
  }

  else
  {
    v41 = 32;
    do
    {
      v42 = *(a2 + v41);
      v43 = [v42 name];
      v44 = sub_22F740E20();
      v46 = v45;

      v48 = *(v32 + 16);
      v47 = *(v32 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_22F146454((v47 > 1), v48 + 1, 1);
      }

      *(v32 + 16) = v48 + 1;
      v49 = v32 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v41 += 8;
      --v31;
    }

    while (v31);
  }

  v7 = v74;
  v9 = MEMORY[0x277D84F90];
  v30 = v71;
LABEL_34:
  v50 = sub_22F151690(v32, v30);

  if (!(a3 >> 62))
  {
    v51 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      goto LABEL_36;
    }

LABEL_49:

    v52 = MEMORY[0x277D84F90];
LABEL_50:
    v70 = sub_22F151690(v52, v50);

    *v73 = v70;
    v73[1] = v7;
    v73[2] = a2;
    v73[3] = a3;
    return result;
  }

  v51 = sub_22F741A00();
  if (!v51)
  {
    goto LABEL_49;
  }

LABEL_36:
  result = sub_22F146454(0, v51 & ~(v51 >> 63), 0);
  if ((v51 & 0x8000000000000000) == 0)
  {
    v72 = v50;
    v52 = v9;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v53 = 0;
      do
      {
        MEMORY[0x2319016F0](v53, a3);
        v54 = [swift_unknownObjectRetain() name];
        v55 = sub_22F740E20();
        v57 = v56;
        swift_unknownObjectRelease_n();

        v59 = *(v9 + 16);
        v58 = *(v9 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_22F146454((v58 > 1), v59 + 1, 1);
        }

        ++v53;
        *(v9 + 16) = v59 + 1;
        v60 = v9 + 16 * v59;
        *(v60 + 32) = v55;
        *(v60 + 40) = v57;
      }

      while (v51 != v53);
    }

    else
    {
      v61 = 32;
      do
      {
        v62 = *(a3 + v61);
        v63 = [v62 name];
        v64 = sub_22F740E20();
        v66 = v65;

        v68 = *(v52 + 16);
        v67 = *(v52 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_22F146454((v67 > 1), v68 + 1, 1);
        }

        *(v52 + 16) = v68 + 1;
        v69 = v52 + 16 * v68;
        *(v69 + 32) = v64;
        *(v69 + 40) = v66;
        v61 += 8;
        --v51;
      }

      while (v51);
    }

    v7 = v74;
    v50 = v72;
    goto LABEL_50;
  }

LABEL_53:
  __break(1u);
  return result;
}

id sub_22F2F4C28(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v37[1] = *MEMORY[0x277D85DE8];
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = sub_22F741670();
  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v31 = v4 & 0xFFFFFFFFFFFFFF8;
    v32 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F98];
    v8 = 4;
    v30 = v4;
    v29 = i;
    while (1)
    {
      v9 = v8 - 4;
      if (!v32)
      {
        break;
      }

      v10 = MEMORY[0x2319016F0](v8 - 4, v4);
      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

LABEL_7:
      v35 = v11;
      v36 = v8 - 4;
      v12 = v7;
      v13 = v10;
      v14 = [v13 name];
      v15 = sub_22F740E20();
      v17 = v16;

      v37[0] = 0;
      v18 = [v13 floatVectorWithEntity:a1 error:v37];

      v19 = v37[0];
      if (!v18)
      {
        v26 = v19;

        sub_22F73F370();

        swift_willThrow();
LABEL_20:
        v22 = v12;
        goto LABEL_28;
      }

      v4 = v3;
      v20 = [v18 array];

      sub_22F170D8C();
      v3 = sub_22F741180();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v12;
      sub_22F1307D0(v3, v15, v17, isUniquelyReferenced_nonNull_native);

      v22 = v37[0];
      if ((v34 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2319016F0](v36, v34);
      }

      else
      {
        if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v23 = *(v34 + 8 * v8);
      }

      v24 = v23;
      v25 = v4;
      sub_22F7416A0();
      v3 = v4;

      v4 = v30;
      if (v25)
      {

        goto LABEL_20;
      }

      ++v8;
      v7 = v22;
      if (v35 == v29)
      {
        goto LABEL_26;
      }
    }

    if (v9 >= *(v31 + 16))
    {
      goto LABEL_22;
    }

    v10 = *(v4 + 8 * v8);
    v11 = v8 - 3;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_22F741A00();
    v34 = sub_22F741670();
  }

  v22 = MEMORY[0x277D84F98];
LABEL_26:

  sub_22F7416A0();
  if (v3)
  {
  }

LABEL_28:
  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

id sub_22F2F4FAC(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_22F10327C(a1, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MusicKitCatalogPlaylistResponse.data.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22F2F504C(uint64_t a1)
{
  v2 = sub_22F2F5244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2F5088(uint64_t a1)
{
  v2 = sub_22F2F5244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB34A0, &unk_22F783D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2F5244();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F30, &qword_22F777828);
    sub_22F2F5298();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F2F5244()
{
  result = qword_27DAB34A8;
  if (!qword_27DAB34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34A8);
  }

  return result;
}

unint64_t sub_22F2F5298()
{
  result = qword_2810A9310;
  if (!qword_2810A9310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1F30, &qword_22F777828);
    sub_22F1A8E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9310);
  }

  return result;
}

unint64_t sub_22F2F5358()
{
  result = qword_27DAB34B0;
  if (!qword_27DAB34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34B0);
  }

  return result;
}

unint64_t sub_22F2F53B0()
{
  result = qword_27DAB34B8;
  if (!qword_27DAB34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34B8);
  }

  return result;
}

unint64_t sub_22F2F5408()
{
  result = qword_27DAB34C0;
  if (!qword_27DAB34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34C0);
  }

  return result;
}

void sub_22F2F545C(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F65A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F2F6B28(v5);
  *a1 = v3;
}

unint64_t sub_22F2F5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0xD00000000000004ALL;
    }

    if (a2 == 1)
    {
      return 0xD000000000000056;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0xD00000000000002ELL;
      case 3:
        return 0xD000000000000063;
      case 4:
        return 0xD000000000000016;
    }
  }

  sub_22F741B00();

  strcpy(v9, "Cannot cast ");
  MEMORY[0x231900B10](a1, a2);
  MEMORY[0x231900B10](544175136, 0xE400000000000000);
  MEMORY[0x231900B10](a3, a4);
  MEMORY[0x231900B10](46, 0xE100000000000000);
  return v9[0];
}

uint64_t static TripTitleGenerator.title(for:locationHelper:)(void *a1, void *a2)
{
  v4 = [a1 tripFeatureNodes];
  v5 = [a1 momentNodes];
  v6 = static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v4, v5, a2);

  return v6;
}

uint64_t static TripTitleGenerator.title(for:momentNodes:locationHelper:)(void *a1, void *a2, void *a3)
{
  v5 = [a1 array];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23E0, &qword_22F779828);
  v6 = sub_22F741180();

  v17 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v15 = a2;
    v16 = a3;
    v8 = 0;
    a3 = (v6 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2319016F0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      a2 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        sub_22F741BA0();
        v9 = *(v17 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
      }

      else
      {
      }

      ++v8;
      if (a2 == i)
      {
        v12 = v17;
        a2 = v15;
        a3 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:

  v13 = sub_22F2F5A78(v12, a2, a3);

  return v13;
}

uint64_t sub_22F2F5A78(unint64_t a1, void *a2, void *a3)
{
  v6 = (a1 >> 62);
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_42:
    sub_22F2F6AD4();
    swift_allocError();
    *v46 = 0u;
    v46[1] = 0u;
    goto LABEL_43;
  }

LABEL_41:
  v43 = a3;
  v44 = a2;
  v45 = sub_22F741A00();
  a2 = v44;
  a3 = v43;
  v7 = v45;
  if (!v45)
  {
    goto LABEL_42;
  }

LABEL_3:
  v8 = v4;
  v53 = a2;
  v54 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7727B0;
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v10;
  *(inited + 48) = sub_22F740E20();
  *(inited + 56) = v11;
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v12;
  result = sub_22F740E20();
  *(inited + 80) = result;
  *(inited + 88) = v14;
  v58 = a1 & 0xC000000000000001;
  v52 = @"Country";
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v15 = MEMORY[0x2319016F0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(a1 + 32);
LABEL_6:
    v16 = v15;
    v17 = [v15 label];

    if (v17)
    {
      v49 = v6;
      v50 = v3;
      v6 = sub_22F740E20();
      v19 = v18;

      v3 = &v48;
      v57[0] = v6;
      v57[1] = v19;
      MEMORY[0x28223BE20](v20);
      v47[2] = v57;
      v4 = v8;
      v8 = sub_22F1C0E04(sub_22F15A388, v47, inited);
      v51 = v4;
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v8)
      {
        v21 = 0;
        v55 = a1 & 0xFFFFFFFFFFFFFF8;
        v56 = v19;
        v22 = v7;
        do
        {
          if (v58)
          {
            v23 = MEMORY[0x2319016F0](v21, a1);
          }

          else
          {
            if (v21 >= *(v55 + 16))
            {
              __break(1u);
              goto LABEL_46;
            }

            v23 = *(a1 + 8 * v21 + 32);
          }

          inited = v23;
          v7 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          v24 = [v23 label];
          if (!v24)
          {

            goto LABEL_27;
          }

          v8 = v24;
          v3 = sub_22F740E20();
          v26 = v25;

          if (v3 == v6 && v26 == v56)
          {
          }

          else
          {
            v8 = sub_22F742040();

            if ((v8 & 1) == 0)
            {

LABEL_27:
              sub_22F2F6AD4();
              swift_allocError();
              v29 = xmmword_22F783EE0;
              goto LABEL_28;
            }
          }

          ++v21;
        }

        while (v7 != v22);
        if (v6 == sub_22F740E20() && v56 == v30)
        {

          v31 = v53;
          v32 = v54;
          v3 = v50;
          v33 = v51;
          goto LABEL_33;
        }

        v34 = sub_22F742040();

        v31 = v53;
        v32 = v54;
        v3 = v50;
        v33 = v51;
        if (v34)
        {
LABEL_33:
          if (v49)
          {
            v41 = sub_22F741A00();
            v31 = v53;
            v32 = v54;
            if (v41 >= 5)
            {
              goto LABEL_35;
            }
          }

          else if (*(v55 + 16) >= 5)
          {
LABEL_35:

            type metadata accessor for LocalizedString();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v36 = [objc_opt_self() bundleForClass_];
            v37 = sub_22F740DF0();
            v38 = sub_22F740DF0();
            v39 = sub_22F740DF0();
            v40 = [v36 localizedStringForKey:v37 value:v38 table:v39];

            v3 = sub_22F740E20();
            return v3;
          }
        }

        v42 = sub_22F2F7D4C(a1, v31, v32);
        if (!v33)
        {
          v3 = v42;
        }

        return v3;
      }
    }

    else
    {
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    sub_22F2F6AD4();
    swift_allocError();
    v29 = xmmword_22F782950;
LABEL_28:
    *v28 = v29;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
LABEL_43:
    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

void static TripTitleGenerator.titleTuple(highlightGroupNode:locationHelper:)(void *a1, void *a2)
{
  v4 = [a1 collection];
  v5 = [v4 tripFeatureNodes];
  v6 = [v4 momentNodes];
  static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v5, v6, a2);

  if (!v2)
  {
    v7 = sub_22F740DF0();

    v8 = objc_opt_self();
    v9 = [v8 titleWithString:v7 category:4];

    v10 = sub_22F740DF0();
    v11 = [v8 titleWithString:v10 category:0];

    [objc_allocWithZone(PGTitleTuple) initWithWithTitle:v9 subtitle:v11];
  }
}

uint64_t sub_22F2F6328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v54 = a4;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v49 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v49 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v49 - v29;
  v55 = [objc_opt_self() edgesFromNodes:a3 toNodes:a1];
  v31 = [v55 universalStartDate];
  v56 = v12;
  if (v31)
  {
    v32 = v31;
    sub_22F73F640();

    v33 = *(v7 + 56);
    v33(v27, 0, 1, v6);
  }

  else
  {
    v33 = *(v7 + 56);
    v33(v27, 1, 1, v6);
  }

  sub_22F1207AC(v27, v30, &qword_27DAB0920, &qword_22F770B20);
  sub_22F13BA9C(v30, v24, &qword_27DAB0920, &qword_22F770B20);
  v34 = *(v7 + 48);
  if (v34(v24, 1, v6) == 1)
  {
    sub_22F120ADC(v30, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    v50 = *(v7 + 32);
    v50(v56, v24, v6);
    v35 = v54;
    swift_beginAccess();
    v36 = *(v35 + 16);
    if (*(v36 + 16) && (v37 = sub_22F123478(v53), (v38 & 1) != 0))
    {
      (*(v7 + 16))(v21, *(v36 + 56) + *(v7 + 72) * v37, v6);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v49[1] = v7 + 56;
    v33(v21, v39, 1, v6);
    sub_22F1207AC(v21, v18, &qword_27DAB0920, &qword_22F770B20);
    v40 = v34(v18, 1, v6);
    v41 = v52;
    if (v40 == 1)
    {
      sub_22F73F570();
      sub_22F120ADC(v18, &qword_27DAB0920, &qword_22F770B20);
    }

    else
    {
      v50(v52, v18, v6);
    }

    v42 = v56;
    swift_endAccess();
    v43 = sub_22F73F5D0();
    v44 = v41;
    v45 = v43;
    v46 = *(v7 + 8);
    v46(v44, v6);
    if (v45)
    {
      v47 = v51;
      (*(v7 + 16))(v51, v42, v6);
      v33(v47, 0, 1, v6);
      swift_beginAccess();
      sub_22F121E34(v47, v53);
      swift_endAccess();
    }

    v46(v42, v6);
    v24 = v30;
  }

  return sub_22F120ADC(v24, &qword_27DAB0920, &qword_22F770B20);
}

void sub_22F2F6834(int a1, void *a2, int a3, id a4, uint64_t a5, uint64_t a6)
{
  v9 = [a4 addressNodesFromLocationNodes_];
  sub_22F2F6328(v9, a2, a5, a6);
}

void sub_22F2F68B0(int a1, void *a2, int a3, id a4, uint64_t a5, uint64_t a6)
{
  v13 = [a4 addressNodesFromAreaNodes_];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    sub_22F2F6328(v13, v10, a5, a6);

    v12 = v11;
  }

  else
  {
    sub_22F7415E0();
    if (qword_27DAAFD08 != -1)
    {
      swift_once();
    }

    sub_22F740A80();
    v12 = v13;
  }
}

id TripTitleGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TripTitleGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripTitleGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TripTitleGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripTitleGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2F6AD4()
{
  result = qword_27DAB34C8;
  if (!qword_27DAB34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB34C8);
  }

  return result;
}

void sub_22F2F6B28(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F2F6ED4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2F6C6C(0, v2, 1, a1);
  }
}

void sub_22F2F6C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    v22 = v19;
    v23 = v39;
    while (1)
    {
      sub_22F13BA9C(v21, v16, &unk_27DAB0DD0, &qword_22F771178);
      sub_22F13BA9C(v22, v12, &unk_27DAB0DD0, &qword_22F771178);
      v24 = &v16[*(v23 + 64)];
      v25 = sub_22F73F660();
      sub_22F120ADC(v12, &unk_27DAB0DD0, &qword_22F771178);
      sub_22F120ADC(v16, &unk_27DAB0DD0, &qword_22F771178);
      v26 = v25 == -1;
      v23 = v39;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_22F1207AC(v21, v38, &unk_27DAB0DD0, &qword_22F771178);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v27, v22, &unk_27DAB0DD0, &qword_22F771178);
      v22 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F2F6ED4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v109 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  v117 = *(v124 - 8);
  v8 = *(v117 + 64);
  MEMORY[0x28223BE20](v124);
  v110 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v105 - v11;
  MEMORY[0x28223BE20](v12);
  v123 = &v105 - v13;
  MEMORY[0x28223BE20](v14);
  v122 = &v105 - v15;
  v118 = a3;
  v16 = *(a3 + 8);
  if (v16 >= 1)
  {
    v106 = a4;
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v19 = &unk_27DAB0DD0;
    while (1)
    {
      v20 = v17;
      if (v17 + 1 >= v16)
      {
        v34 = v17 + 1;
        v35 = v124;
      }

      else
      {
        v119 = v16;
        v108 = v5;
        v21 = *v118;
        v114 = v21;
        v22 = *(v117 + 72);
        a3 = v21 + v22 * (v17 + 1);
        v23 = v122;
        sub_22F13BA9C(a3, v122, v19, &qword_22F771178);
        v24 = v123;
        sub_22F13BA9C(v21 + v22 * v17, v123, v19, &qword_22F771178);
        v25 = v23 + *(v124 + 64);
        v116 = sub_22F73F660();
        sub_22F120ADC(v24, v19, &qword_22F771178);
        sub_22F120ADC(v23, v19, &qword_22F771178);
        v107 = v17;
        v26 = v17 + 2;
        v120 = v22;
        v27 = v114 + v22 * (v17 + 2);
        v115 = v18;
        while (v119 != v26)
        {
          v28 = v116 == -1;
          v29 = v122;
          sub_22F13BA9C(v27, v122, v19, &qword_22F771178);
          v30 = v123;
          sub_22F13BA9C(a3, v123, v19, &qword_22F771178);
          v31 = v29 + *(v124 + 64);
          v32 = sub_22F73F660();
          sub_22F120ADC(v30, v19, &qword_22F771178);
          sub_22F120ADC(v29, v19, &qword_22F771178);
          v33 = v28 ^ (v32 != -1);
          v18 = v115;
          ++v26;
          v27 += v120;
          a3 += v120;
          if ((v33 & 1) == 0)
          {
            v34 = v26 - 1;
            v35 = v124;
            goto LABEL_11;
          }
        }

        v35 = v124;
        v34 = v119;
LABEL_11:
        v20 = v107;
        v5 = v108;
        if (v116 == -1)
        {
          if (v34 < v107)
          {
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
            return;
          }

          if (v107 < v34)
          {
            v36 = v120 * (v34 - 1);
            v37 = v34 * v120;
            v38 = v34;
            v39 = v34;
            v40 = v107;
            a3 = v107 * v120;
            do
            {
              if (v40 != --v39)
              {
                v41 = *v118;
                if (!*v118)
                {
                  goto LABEL_133;
                }

                sub_22F1207AC(v41 + a3, v110, v19, &qword_22F771178);
                if (a3 < v36 || v41 + a3 >= v41 + v37)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a3 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_22F1207AC(v110, v41 + v36, v19, &qword_22F771178);
              }

              ++v40;
              v36 -= v120;
              v37 -= v120;
              a3 += v120;
            }

            while (v40 < v39);
            v20 = v107;
            v5 = v108;
            v18 = v115;
            v35 = v124;
            v34 = v38;
          }
        }
      }

      v42 = v118[1];
      if (v34 >= v42)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v34, v20))
      {
        goto LABEL_125;
      }

      if (v34 - v20 >= v106)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v20, v106))
      {
        goto LABEL_126;
      }

      if (v20 + v106 >= v42)
      {
        v43 = v118[1];
      }

      else
      {
        v43 = v20 + v106;
      }

      if (v43 < v20)
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (v34 == v43)
      {
LABEL_34:
        v17 = v34;
        if (v34 < v20)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v115 = v18;
        v107 = v20;
        v108 = v5;
        v89 = *(v117 + 72);
        v90 = *v118 + v89 * (v34 - 1);
        v91 = -v89;
        v92 = v20 - v34;
        v120 = *v118;
        v111 = v89;
        v112 = v43;
        a3 = v120 + v34 * v89;
        do
        {
          v119 = v34;
          v113 = a3;
          v114 = v92;
          v116 = v90;
          while (1)
          {
            v93 = v122;
            sub_22F13BA9C(a3, v122, v19, &qword_22F771178);
            v94 = v123;
            sub_22F13BA9C(v90, v123, v19, &qword_22F771178);
            v95 = v93 + *(v35 + 64);
            v96 = sub_22F73F660();
            sub_22F120ADC(v94, v19, &qword_22F771178);
            sub_22F120ADC(v93, v19, &qword_22F771178);
            if (v96 != -1)
            {
              break;
            }

            if (!v120)
            {
              goto LABEL_130;
            }

            v97 = v19;
            v98 = v121;
            sub_22F1207AC(a3, v121, v97, &qword_22F771178);
            v35 = v124;
            swift_arrayInitWithTakeFrontToBack();
            v99 = v98;
            v19 = v97;
            sub_22F1207AC(v99, v90, v97, &qword_22F771178);
            v90 += v91;
            a3 += v91;
            if (__CFADD__(v92++, 1))
            {
              goto LABEL_87;
            }
          }

          v35 = v124;
LABEL_87:
          v34 = v119 + 1;
          v17 = v112;
          v90 = v116 + v111;
          v92 = v114 - 1;
          a3 = v113 + v111;
        }

        while (v119 + 1 != v112);
        v20 = v107;
        v5 = v108;
        v18 = v115;
        if (v112 < v107)
        {
          goto LABEL_124;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_22F13D970(0, *(v18 + 2) + 1, 1, v18);
      }

      a3 = *(v18 + 2);
      v44 = *(v18 + 3);
      v45 = a3 + 1;
      if (a3 >= v44 >> 1)
      {
        v18 = sub_22F13D970((v44 > 1), a3 + 1, 1, v18);
      }

      *(v18 + 2) = v45;
      v46 = &v18[16 * a3];
      *(v46 + 4) = v20;
      *(v46 + 5) = v17;
      if (!*v109)
      {
        goto LABEL_134;
      }

      if (a3)
      {
        v47 = *v109;
        while (1)
        {
          a3 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v48 = *(v18 + 4);
            v49 = *(v18 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_55:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v18[16 * v45];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v18[16 * a3 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                a3 = v45 - 2;
              }

              goto LABEL_76;
            }

            goto LABEL_69;
          }

          v74 = &v18[16 * v45];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_69:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v18[16 * a3];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_76:
          v85 = a3 - 1;
          if (a3 - 1 >= v45)
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
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
            goto LABEL_127;
          }

          if (!*v118)
          {
            goto LABEL_131;
          }

          v86 = *&v18[16 * v85 + 32];
          v87 = *&v18[16 * a3 + 40];
          sub_22F2F7820(*v118 + *(v117 + 72) * v86, *v118 + *(v117 + 72) * *&v18[16 * a3 + 32], *v118 + *(v117 + 72) * v87, v47);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v87 < v86)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_22F3F5F98(v18);
          }

          if (v85 >= *(v18 + 2))
          {
            goto LABEL_110;
          }

          v88 = &v18[16 * v85];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          v125 = v18;
          sub_22F3F5F0C(a3);
          v18 = v125;
          v45 = *(v125 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v52 = &v18[16 * v45 + 32];
        v53 = *(v52 - 64);
        v54 = *(v52 - 56);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_111;
        }

        v57 = *(v52 - 48);
        v56 = *(v52 - 40);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_112;
        }

        v59 = &v18[16 * v45];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_114;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_117;
        }

        if (v63 >= v55)
        {
          v81 = &v18[16 * a3 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_121;
          }

          if (v50 < v84)
          {
            a3 = v45 - 2;
          }

          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_3:
      v16 = v118[1];
      if (v17 >= v16)
      {
        goto LABEL_97;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_97:
  a3 = *v109;
  if (!*v109)
  {
    goto LABEL_135;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_128:
    v18 = sub_22F3F5F98(v18);
  }

  v125 = v18;
  v101 = *(v18 + 2);
  if (v101 >= 2)
  {
    while (*v118)
    {
      v102 = *&v18[16 * v101];
      v103 = *&v18[16 * v101 + 24];
      sub_22F2F7820(*v118 + *(v117 + 72) * v102, *v118 + *(v117 + 72) * *&v18[16 * v101 + 16], *v118 + *(v117 + 72) * v103, a3);
      if (v5)
      {
        goto LABEL_107;
      }

      if (v103 < v102)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_22F3F5F98(v18);
      }

      if (v101 - 2 >= *(v18 + 2))
      {
        goto LABEL_123;
      }

      v104 = &v18[16 * v101];
      *v104 = v102;
      *(v104 + 1) = v103;
      v125 = v18;
      sub_22F3F5F0C(v101 - 1);
      v18 = v125;
      v101 = *(v125 + 2);
      if (v101 <= 1)
      {
        goto LABEL_107;
      }
    }

    goto LABEL_132;
  }

LABEL_107:
}

void sub_22F2F7820(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = v25;
      v43 = -v14;
      v44 = a1;
      v42 = a4;
      do
      {
        v40 = v25;
        v28 = a2 + v26;
        v45 = a2;
        v46 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v51 = a2;
            v25 = v40;
            goto LABEL_57;
          }

          v30 = a3;
          v41 = v25;
          v31 = a3 + v26;
          v32 = v27 + v26;
          sub_22F13BA9C(v32, v12, &unk_27DAB0DD0, &qword_22F771178);
          v33 = v12;
          v34 = v47;
          sub_22F13BA9C(v28, v47, &unk_27DAB0DD0, &qword_22F771178);
          v35 = v33 + *(v48 + 64);
          v36 = sub_22F73F660();
          v37 = v34;
          v12 = v33;
          sub_22F120ADC(v37, &unk_27DAB0DD0, &qword_22F771178);
          sub_22F120ADC(v33, &unk_27DAB0DD0, &qword_22F771178);
          if (v36 == -1)
          {
            break;
          }

          v25 = v32;
          a3 = v31;
          v38 = v42;
          if (v30 < v27 || v31 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v32;
            v28 = v46;
            a1 = v44;
          }

          else
          {
            v28 = v46;
            a1 = v44;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v32;
            }
          }

          v27 = v25;
          v29 = v32 > v38;
          v26 = v43;
          a2 = v45;
          if (!v29)
          {
            goto LABEL_55;
          }
        }

        a3 = v31;
        v39 = v42;
        if (v30 < v45 || v31 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v43;
          a1 = v44;
        }

        else
        {
          a2 = v46;
          v26 = v43;
          a1 = v44;
          if (v30 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v41;
      }

      while (v27 > v39);
    }

LABEL_55:
    v51 = a2;
LABEL_57:
    v49 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v45 = a3;
      do
      {
        v20 = v14;
        v21 = a2;
        sub_22F13BA9C(a2, v12, &unk_27DAB0DD0, &qword_22F771178);
        v22 = v47;
        sub_22F13BA9C(a4, v47, &unk_27DAB0DD0, &qword_22F771178);
        v23 = &v12[*(v48 + 64)];
        v24 = sub_22F73F660();
        sub_22F120ADC(v22, &unk_27DAB0DD0, &qword_22F771178);
        sub_22F120ADC(v12, &unk_27DAB0DD0, &qword_22F771178);
        v14 = v20;
        if (v24 == -1)
        {
          a2 += v20;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v51 = a1;
      }

      while (a4 < v46 && a2 < v45);
    }
  }

  sub_22F3B6808(&v51, &v50, &v49);
}

uint64_t sub_22F2F7D4C(unint64_t a1, void *a2, void *a3)
{
  v160 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB34D0, &unk_22F783F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v163 = (&v144 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0DD0, &qword_22F771178);
  v157 = *(v8 - 1);
  v9 = *(v157 + 64);
  MEMORY[0x28223BE20](v8);
  v145 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  isUniquelyReferenced_nonNull_native = &v144 - v12;
  MEMORY[0x28223BE20](v14);
  v146 = &v144 - v15;
  MEMORY[0x28223BE20](v16);
  v144 = &v144 - v17;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB34E0, &unk_22F783F40);
  v18 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v166 = (&v144 - v19);
  v20 = swift_allocObject();
  v158 = v20;
  *(v20 + 16) = MEMORY[0x277D84F98];
  v154 = v20 + 16;
  v155 = a2;
  v159 = [a2 graph];
  v167 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v165 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  if (a1 >> 62)
  {
    goto LABEL_77;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v162 = v8;
  v147 = isUniquelyReferenced_nonNull_native;
  if (v21)
  {
    v22 = 0;
    v169 = a1 & 0xC000000000000001;
    v23 = MEMORY[0x277D84F98];
    v164 = a1 & 0xFFFFFFFFFFFFFF8;
    v168 = @"Area";
    while (1)
    {
      if (v169)
      {
        v25 = MEMORY[0x2319016F0](v22, a1);
      }

      else
      {
        if (v22 >= *(v164 + 16))
        {
          goto LABEL_76;
        }

        v25 = *(a1 + 8 * v22 + 32);
      }

      v26 = v25;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_73;
      }

      v181 = (v22 + 1);
      v8 = a1;
      v27 = [v25 identifier];
      v28 = v26;
      v29 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v23;
      a1 = sub_22F122B68(v27);
      v31 = v23[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v21 = sub_22F741A00();
        goto LABEL_3;
      }

      v34 = v30;
      if (v29[3] >= v33)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v37 = aBlock;
          if (v30)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_22F1374E4();
          v37 = aBlock;
          if (v34)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_22F12AF88(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_22F122B68(v27);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_81;
        }

        a1 = v35;
        v37 = aBlock;
        if (v34)
        {
LABEL_19:
          v23 = v37;
          v38 = v37[7];
          v39 = *(v38 + 8 * a1);
          *(v38 + 8 * a1) = v28;

          goto LABEL_23;
        }
      }

      v37[(a1 >> 6) + 8] |= 1 << a1;
      *(v37[6] + 8 * a1) = v27;
      *(v37[7] + 8 * a1) = v28;
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_75;
      }

      v23 = v37;
      v37[2] = v42;
LABEL_23:
      v43 = [v28 label];
      a1 = v8;
      if (!v43)
      {
        sub_22F740E20();
LABEL_30:

LABEL_31:
        v24 = v167;
        goto LABEL_6;
      }

      v44 = v43;
      isUniquelyReferenced_nonNull_native = sub_22F740E20();
      v46 = v45;

      v47 = sub_22F740E20();
      if (!v46)
      {
        goto LABEL_30;
      }

      if (isUniquelyReferenced_nonNull_native == v47 && v46 == v48)
      {

        v24 = v165;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = sub_22F742040();

        v24 = v165;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_6:
      [v24 addIdentifier_];

      ++v22;
      if (v181 == v21)
      {
        goto LABEL_33;
      }
    }
  }

  v23 = MEMORY[0x277D84F98];
LABEL_33:
  v181 = v23;
  isUniquelyReferenced_nonNull_native = v167;
  v49 = [isUniquelyReferenced_nonNull_native isEmpty];
  v156 = isUniquelyReferenced_nonNull_native;
  if (v49)
  {

    v152 = 0;
    v153 = 0;
  }

  else
  {
    v50 = objc_allocWithZone(PGGraphLocationNodeCollection);
    v51 = v159;
    swift_unknownObjectRetain();
    v52 = [v50 initWithGraph:v51 elementIdentifiers:isUniquelyReferenced_nonNull_native];
    swift_unknownObjectRelease();

    v53 = swift_allocObject();
    a1 = v160;
    v54 = v155;
    v53[2] = v160;
    v53[3] = v54;
    v53[4] = v158;
    v55 = swift_allocObject();
    v152 = sub_22F2F90E4;
    *(v55 + 16) = sub_22F2F90E4;
    *(v55 + 24) = v53;
    v153 = v53;
    v179 = sub_22F264C60;
    v180 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v176 = 1107296256;
    v177 = sub_22F2F92A8;
    v178 = &block_descriptor_26;
    isUniquelyReferenced_nonNull_native = _Block_copy(&aBlock);
    v56 = a1;
    v57 = v54;

    [v52 enumerateIdentifiersAsCollectionsWithBlock_];

    _Block_release(isUniquelyReferenced_nonNull_native);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
      goto LABEL_79;
    }
  }

  v58 = v165;
  v59 = [v58 isEmpty];
  v151 = v58;
  if (v59)
  {

    v149 = 0;
    v150 = 0;
    goto LABEL_39;
  }

  sub_22F2F9108();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = v159;
  swift_unknownObjectRetain();
  v62 = v58;
  v63 = [objc_allocWithZone(ObjCClassFromMetadata) initWithGraph:v61 elementIdentifiers:v58];
  swift_unknownObjectRelease();

  v64 = swift_allocObject();
  v65 = v160;
  a1 = v155;
  v64[2] = v160;
  v64[3] = a1;
  v64[4] = v158;
  v66 = swift_allocObject();
  v149 = sub_22F2F919C;
  *(v66 + 16) = sub_22F2F919C;
  *(v66 + 24) = v64;
  v150 = v64;
  v179 = sub_22F20AE34;
  v180 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v176 = 1107296256;
  v177 = sub_22F2F92A8;
  v178 = &block_descriptor_16_0;
  isUniquelyReferenced_nonNull_native = _Block_copy(&aBlock);
  v67 = v65;
  v68 = a1;

  [v63 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(isUniquelyReferenced_nonNull_native);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if ((v63 & 1) == 0)
  {
LABEL_39:
    v69 = v154;
    swift_beginAccess();
    v70 = *v69;
    v71 = *v69 + 64;
    v72 = 1 << *(*v69 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & *(*v69 + 64);
    v75 = (v72 + 63) >> 6;
    v167 = (v157 + 56);
    v165 = (v157 + 48);
    v169 = v70;
    swift_bridgeObjectRetain_n();
    v76 = 0;
    v155 = MEMORY[0x277D84F90];
    v168 = v75;
LABEL_42:
    v77 = v76;
    if (!v74)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v76 = v77;
LABEL_47:
      v78 = __clz(__rbit64(v74)) | (v76 << 6);
      v79 = *(v169 + 56);
      v80 = *(*(v169 + 48) + 8 * v78);
      isUniquelyReferenced_nonNull_native = sub_22F73F690();
      v81 = *(isUniquelyReferenced_nonNull_native - 8);
      v82 = *(v81 + 16);
      v83 = v79 + *(v81 + 72) * v78;
      v84 = v166;
      v164 = *(v161 + 48);
      v8 = v82;
      (v82)(v166 + v164, v83, isUniquelyReferenced_nonNull_native);
      *v84 = v80;
      v85 = [v80 elementIdentifiers];
      a1 = [v85 firstElement];

      v86 = v181;
      if (!v181[2])
      {
        goto LABEL_52;
      }

      v87 = sub_22F122B68(a1);
      if ((v88 & 1) == 0)
      {
        goto LABEL_52;
      }

      v89 = *(v86[7] + 8 * v87);
      v90 = objc_opt_self();
      v91 = v89;
      v92 = [v90 beautifiedLocationNodeStringWithPlaceNode:v91 locationHelper:v160];
      if (!v92)
      {
        break;
      }

      v93 = v92;
      a1 = sub_22F740E20();
      v154 = v94;

      v96 = v162;
      v95 = v163;
      v97 = *(v162 + 16);
      *v163 = v91;
      v95[1] = a1;
      v95[2] = v154;
      (v8)(v95 + v97, v166 + v164, isUniquelyReferenced_nonNull_native);
      v98 = 0;
LABEL_53:
      v74 &= v74 - 1;
      v99 = v163;
      (*v167)(v163, v98, 1, v96);
      sub_22F120ADC(v166, &qword_27DAB34E0, &unk_22F783F40);
      if ((*v165)(v99, 1, v96) != 1)
      {
        v100 = v99;
        v101 = v144;
        sub_22F1207AC(v100, v144, &unk_27DAB0DD0, &qword_22F771178);
        sub_22F1207AC(v101, v146, &unk_27DAB0DD0, &qword_22F771178);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_22F13FAB4(0, v155[2] + 1, 1, v155);
        }

        isUniquelyReferenced_nonNull_native = v155[2];
        v102 = v155[3];
        v103 = v157;
        if (isUniquelyReferenced_nonNull_native >= v102 >> 1)
        {
          v105 = sub_22F13FAB4(v102 > 1, isUniquelyReferenced_nonNull_native + 1, 1, v155);
          v103 = v157;
          v155 = v105;
        }

        v104 = v155;
        v155[2] = isUniquelyReferenced_nonNull_native + 1;
        sub_22F1207AC(v146, v104 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * isUniquelyReferenced_nonNull_native, &unk_27DAB0DD0, &qword_22F771178);
        v75 = v168;
        goto LABEL_42;
      }

      sub_22F120ADC(v99, &unk_27DAB34D0, &unk_22F783F30);
      v77 = v76;
      v75 = v168;
      if (!v74)
      {
LABEL_44:
        while (1)
        {
          v76 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          if (v76 >= v75)
          {
            v106 = v169;

            if (v155[2])
            {
              v174[0] = v155;

              v107 = v148;
              sub_22F2F545C(v174);
              isUniquelyReferenced_nonNull_native = v107;
              v106 = v156;
              if (v107)
              {
                goto LABEL_82;
              }

              v108 = v174[0];
              v109 = v174[0][2];
              if (v109)
              {
                if (v109 == 1)
                {
                  type metadata accessor for LocalizedString();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
                  v110 = swift_allocObject();
                  *(v110 + 16) = xmmword_22F771340;
                  v111 = v147;
                  sub_22F13BA9C(v108 + ((*(v157 + 80) + 32) & ~*(v157 + 80)), v147, &unk_27DAB0DD0, &qword_22F771178);

                  v112 = *(v111 + 8);
                  v113 = *(v111 + 16);
                  v114 = *(v162 + 16);
                  *(v110 + 56) = MEMORY[0x277D837D0];
                  *(v110 + 64) = sub_22F153470();
                  *(v110 + 32) = v112;
                  *(v110 + 40) = v113;
                  v115 = sub_22F73F690();
                  (*(*(v115 - 8) + 8))(v111 + v114, v115);
                  v116 = static LocalizedString.localizedString(forKey:arguments:)();
                  v118 = v117;

                  v174[0] = v116;
                  v174[1] = v118;
                  v172 = 32;
                  v173 = 0xE100000000000000;
                  v170 = sub_22F740E20();
                  v171 = v119;
                  sub_22F160DE4();
                  v106 = sub_22F7418E0();

                  swift_unknownObjectRelease();
                  sub_22F107E14(v152);
                  sub_22F107E14(v149);
                }

                else
                {
                  v169 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
                  v122 = swift_allocObject();
                  *(v122 + 16) = xmmword_22F770DF0;
                  isUniquelyReferenced_nonNull_native = v157;
                  v123 = v108 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
                  v124 = v147;
                  sub_22F13BA9C(v123, v147, &unk_27DAB0DD0, &qword_22F771178);

                  v125 = *(v124 + 16);
                  v126 = v162;
                  v127 = *(v162 + 16);
                  *(v122 + 32) = *(v124 + 8);
                  *(v122 + 40) = v125;
                  if (v109 > v108[2])
                  {
                    goto LABEL_80;
                  }

                  v128 = v123 + *(isUniquelyReferenced_nonNull_native + 72) * (v109 - 1);
                  v129 = v145;
                  sub_22F13BA9C(v128, v145, &unk_27DAB0DD0, &qword_22F771178);

                  v130 = *(v129 + 16);
                  v131 = *(v126 + 16);
                  *(v122 + 48) = *(v129 + 8);
                  *(v122 + 56) = v130;
                  v132 = sub_22F73F690();
                  v133 = *(*(v132 - 8) + 8);
                  v133(v129 + v131, v132);
                  v133(v124 + v127, v132);
                  v134 = swift_getObjCClassFromMetadata();
                  v135 = [objc_opt_self() bundleForClass_];
                  v136 = sub_22F740DF0();
                  v137 = sub_22F740DF0();
                  v138 = [v135 localizedStringForKey:v136 value:0 table:v137];

                  sub_22F740E20();
                  sub_22F161DB8(v122);
                  sub_22F740E50();

                  v139 = objc_opt_self();
                  v140 = sub_22F740DF0();

                  v141 = sub_22F741160();

                  v142 = [v139 titleWithNoLineBreakSpaceForTitle:v140 andUsedNames:v141];

                  v106 = sub_22F740E20();

                  swift_unknownObjectRelease();
                  sub_22F107E14(v152);
                  sub_22F107E14(v149);
                }

                return v106;
              }

              sub_22F2F6AD4();
              swift_allocError();
              *v121 = xmmword_22F783EF0;
              *(v121 + 16) = 0;
              *(v121 + 24) = 0;
              swift_willThrow();

              swift_unknownObjectRelease();
            }

            else
            {

              sub_22F2F6AD4();
              swift_allocError();
              *v120 = xmmword_22F783EF0;
              *(v120 + 16) = 0;
              *(v120 + 24) = 0;
              swift_willThrow();

              swift_unknownObjectRelease();
            }

            sub_22F107E14(v152);
            sub_22F107E14(v149);
            return v106;
          }

          v74 = *(v71 + 8 * v76);
          ++v77;
          if (v74)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

LABEL_52:
    v98 = 1;
    v96 = v162;
    goto LABEL_53;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  type metadata accessor for KGElementIdentifier(0);
  sub_22F7420C0();
  __break(1u);
LABEL_82:

  __break(1u);
  return result;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F2F9108()
{
  result = qword_2810A8FF8;
  if (!qword_2810A8FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8FF8);
  }

  return result;
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14TripTitleError33_F4CA05ED229D6579DDED1C2A06227364LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22F2F91C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 32))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F2F9218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_22F2F926C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void static ShazamClient.fetchPopularMusic(at:date:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v6 = sub_22F740AD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E48 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(v7 + 8))(v10, v6);
  v11 = objc_opt_self();
  v12 = sub_22F73F5B0();
  v13 = swift_allocObject();
  *(v13 + 16) = "ShazamClient Fetch Popular Music";
  *(v13 + 24) = 32;
  *(v13 + 32) = 2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  aBlock[4] = sub_22F2F99AC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2F99BC;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  [v11 affinityGroupsForLocation:v16 atDate:v12 completionHandler:v14];
  _Block_release(v14);
}

void sub_22F2F94E8(unint64_t a1, void *a2, char **a3, unint64_t a4, int a5, void (*a6)(id *), unint64_t a7)
{
  LODWORD(v9) = a5;
  v14 = sub_22F740AD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v45 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a6;
  if (a1)
  {
    v55 = MEMORY[0x277D84FA0];
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v39 = a3;
      v40 = a4;
      v41 = v9;
      v42 = v15;
      v43 = v14;
      v44 = a7;
      v21 = 0;
      v50 = a1 + 32;
      v51 = a1 & 0xC000000000000001;
      a3 = &selRef_appleMusicID;
      v48 = v19;
      v49 = a1;
      v47 = i;
      while (v51)
      {
        v23 = MEMORY[0x2319016F0](v21, a1, v17);
        v24 = __OFADD__(v21, 1);
        v25 = v21 + 1;
        if (v24)
        {
          goto LABEL_39;
        }

LABEL_10:
        v53 = v23;
        v54 = v25;
        v26 = [v23 mediaItems];
        sub_22F120634(0, &qword_2810A91D8, 0x277CDC730);
        a1 = sub_22F741180();

        v14 = a1 & 0xFFFFFFFFFFFFFF8;
        if (a1 >> 62)
        {
          v15 = sub_22F741A00();
          if (v15)
          {
LABEL_12:
            v19 = 0;
            a4 = a1 & 0xC000000000000001;
            v22 = MEMORY[0x277D84F90];
            do
            {
              v9 = v19;
              while (1)
              {
                if (a4)
                {
                  v27 = MEMORY[0x2319016F0](v9, a1);
                }

                else
                {
                  if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_38;
                  }

                  v27 = *(a1 + 8 * v9 + 32);
                }

                v28 = v27;
                v19 = v9 + 1;
                if (__OFADD__(v9, 1))
                {
                  __break(1u);
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                v29 = [v27 appleMusicID];
                if (v29)
                {
                  break;
                }

                ++v9;
                if (v19 == v15)
                {
                  goto LABEL_6;
                }
              }

              v30 = v29;
              v9 = sub_22F740E20();
              v52 = v31;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_22F13E1A8(0, *(v22 + 2) + 1, 1, v22);
              }

              a7 = *(v22 + 2);
              v32 = *(v22 + 3);
              if (a7 >= v32 >> 1)
              {
                v22 = sub_22F13E1A8((v32 > 1), a7 + 1, 1, v22);
              }

              *(v22 + 2) = a7 + 1;
              v33 = &v22[16 * a7];
              v34 = v52;
              *(v33 + 4) = v9;
              *(v33 + 5) = v34;
            }

            while (v19 != v15);
            goto LABEL_6;
          }
        }

        else
        {
          v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15)
          {
            goto LABEL_12;
          }
        }

        v22 = MEMORY[0x277D84F90];
LABEL_6:

        sub_22F2F2D94(v22);

        v19 = v48;
        v21 = v54;
        a1 = v49;
        if (v54 == v47)
        {
          v37 = v55;
          v14 = v43;
          v15 = v42;
          goto LABEL_43;
        }
      }

      if (v21 >= *(v19 + 16))
      {
        goto LABEL_40;
      }

      v23 = *(v50 + 8 * v21);
      v24 = __OFADD__(v21, 1);
      v25 = v21 + 1;
      if (!v24)
      {
        goto LABEL_10;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v37 = MEMORY[0x277D84FA0];
LABEL_43:
    sub_22F741730();
    if (qword_2810A8E48 != -1)
    {
      swift_once();
    }

    v38 = v45;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v15 + 8))(v38, v14);
    v55 = v37;
    v56 = 0;
  }

  else
  {
    sub_22F741730();
    if (qword_2810A8E48 != -1)
    {
      swift_once();
    }

    v35 = v45;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v15 + 8))(v35, v14);
    v55 = a2;
    v56 = 256;
    v36 = a2;
  }

  v46(&v55);
  sub_22F2F9C14(v55, v56, SHIBYTE(v56));
}

uint64_t sub_22F2F99BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22F120634(0, &unk_2810A9140, 0x277D54F50);
    v4 = sub_22F741180();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static ShazamClient.dateOfEarliestAvailableShazamData.getter()
{
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v0 = qword_2810A9170;
  v1 = sub_22F740DF0();
  v2 = [v0 dateFromString_];

  if (v2)
  {
    sub_22F73F640();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22F2F9B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F2F9BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_22F2F9C14(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_22F2F9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v11 = (v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);
  *v11 = a1;
  v11[1] = a2;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedLocalFactoryScore) = a9;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedState) = 0;
  v12 = (v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText);
  *v12 = a3;
  v12[1] = a4;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_isValidated) = a5;
  v13 = (v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source);
  *v13 = a7;
  v13[1] = a8;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_assetCount) = a6;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_mcAvailabilityStatus) = a10;
  v15.super_class = PGStoryPromptSuggestionQuestion;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t PGStoryPromptSuggestionQuestion.entityIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);
  v2 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier + 8);

  return v1;
}

uint64_t (*PGStoryPromptSuggestionQuestion.state.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedState;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_22F2F9EC0;
}

unint64_t PGStoryPromptSuggestionQuestion.additionalInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F777170;
  v2 = *MEMORY[0x277D3C9D0];
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v3;
  v5 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText);
  v4 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText + 8);
  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  v7 = *MEMORY[0x277D3C9C0];
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v8;
  v9 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_isValidated);
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v9;
  v10 = *MEMORY[0x277D3C9B8];
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v11;
  v12 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_assetCount);
  v13 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v12;
  v14 = *MEMORY[0x277D3C9C8];
  *(inited + 176) = sub_22F740E20();
  *(inited + 184) = v15;
  v16 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_mcAvailabilityStatus);
  *(inited + 216) = v13;
  *(inited + 192) = v16;
  v17 = *MEMORY[0x277D3C8D0];
  *(inited + 224) = sub_22F740E20();
  *(inited + 232) = v18;
  *(inited + 264) = v6;
  *(inited + 240) = v5;
  *(inited + 248) = v4;
  v19 = *MEMORY[0x277D3C9D8];
  *(inited + 272) = sub_22F740E20();
  *(inited + 280) = v20;
  v21 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source);
  v22 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source + 8);
  *(inited + 312) = v6;
  *(inited + 288) = v21;
  *(inited + 296) = v22;
  swift_bridgeObjectRetain_n();

  v23 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  return v23;
}

uint64_t PGStoryPromptSuggestionQuestion.isEquivalent(toPersistedQuestion:)(void *a1)
{
  if ([a1 type] != 30 || objc_msgSend(a1, sel_entityType) != 4)
  {
    goto LABEL_19;
  }

  v3 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);
  v4 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier + 8);
  v5 = [a1 entityIdentifier];
  v6 = sub_22F740E20();
  v8 = v7;

  if (v3 == v6 && v4 == v8)
  {
  }

  else
  {
    v10 = sub_22F742040();

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText);
  v12 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText + 8);
  v13 = [a1 additionalInfo];
  if (!v13)
  {
LABEL_19:
    v24 = 0;
    return v24 & 1;
  }

  v14 = v13;
  v15 = sub_22F740CA0();

  v16 = *MEMORY[0x277D3C9D0];
  v17 = sub_22F740E20();
  if (!*(v15 + 16))
  {

    goto LABEL_18;
  }

  v19 = v1;
  v20 = sub_22F1229E8(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_22F13A100(*(v15 + 56) + 32 * v20, v50);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v11 == v48 && v12 == v49)
  {

    v23 = v19;
  }

  else
  {
    v26 = sub_22F742040();

    v23 = v19;
    if ((v26 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v27 = *(v23 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_isValidated);
  v28 = [a1 additionalInfo];
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  v30 = sub_22F740CA0();

  v31 = *MEMORY[0x277D3C9C0];
  v32 = sub_22F740E20();
  if (!*(v30 + 16))
  {
    goto LABEL_34;
  }

  v34 = sub_22F1229E8(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_22F13A100(*(v30 + 56) + 32 * v34, v50);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v27 != v48)
  {
    goto LABEL_19;
  }

  v37 = *(v19 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source);
  v38 = *(v19 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source + 8);
  v39 = [a1 additionalInfo];
  if (!v39)
  {
    goto LABEL_19;
  }

  v40 = v39;
  v41 = sub_22F740CA0();

  v42 = *MEMORY[0x277D3C9D8];
  v43 = sub_22F740E20();
  if (!*(v41 + 16))
  {
LABEL_34:

    goto LABEL_18;
  }

  v45 = sub_22F1229E8(v43, v44);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_22F13A100(*(v41 + 56) + 32 * v45, v50);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v37 == v48 && v38 == v49)
  {

    v24 = 1;
  }

  else
  {
    v24 = sub_22F742040();
  }

  return v24 & 1;
}

void __swiftcall PGStoryPromptSuggestionQuestion.init()(PGStoryPromptSuggestionQuestion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for PGStoryPromptSuggestionQuestion()
{
  result = qword_2810A8F88;
  if (!qword_2810A8F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8F88);
  }

  return result;
}

uint64_t sub_22F2FA6F0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

id GraphUpdater.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PGGraphUpdater_graphManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id GraphUpdater.init(with:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PGGraphUpdater_graphManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t GraphUpdater.applyChanges(from:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22F2FA870, 0, 0);
}

uint64_t sub_22F2FA870()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3530, &unk_22F784138);
  *v5 = v0;
  v5[1] = sub_22F2FA980;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000024, 0x800000022F799A00, sub_22F2FAE08, v2, v6);
}

uint64_t sub_22F2FA980()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22F2FAB44;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22F2FAA9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F2FAA9C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  else
  {
    sub_22F2FAE14();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F2FAB44()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

void sub_22F2FABA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v18 = *(a2 + OBJC_IVAR___PGGraphUpdater_graphManager);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v24 = sub_22F2FB850;
  v25 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22F2FA6F0;
  v23 = &block_descriptor_28;
  v13 = _Block_copy(&aBlock);
  v14 = a4;

  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v11, v7);
  v24 = sub_22F2FB870;
  v25 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22F2FB078;
  v23 = &block_descriptor_27;
  v17 = _Block_copy(&aBlock);

  [v18 startGraphUpdate:v19 progressBlock:v13 completionBlock:v17];
  _Block_release(v17);
  _Block_release(v13);
}

unint64_t sub_22F2FAE14()
{
  result = qword_27DAB3538;
  if (!qword_27DAB3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3538);
  }

  return result;
}

uint64_t sub_22F2FAFF4(char a1, id a2, void *a3)
{
  if (a1)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
    return sub_22F7412F0();
  }

  else
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
    return sub_22F7412E0();
  }
}

void sub_22F2FB078(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a3;
  v10 = a4;
  v8(a2, v9, a4);
}

uint64_t sub_22F2FB29C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_22F2FB374;

  return GraphUpdater.applyChanges(from:progressReporter:)(v8, v9);
}

uint64_t sub_22F2FB374()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 40);
  if (v2)
  {
    v11 = sub_22F73F360();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v12 = *(v9 + 8);

  return v12();
}

id GraphUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GraphUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2FB670()
{
  result = qword_27DAB3540;
  if (!qword_27DAB3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3540);
  }

  return result;
}

uint64_t sub_22F2FB6C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22F12094C;

  return sub_22F2FB29C(v2, v3, v5, v4);
}

uint64_t sub_22F2FB784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22F20B7C0;

  return sub_22F33C464(a1, v4, v5, v7);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2FB870(char a1, void *a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258) - 8) + 80);

  return sub_22F2FAFF4(a1, a2, a3);
}

void sub_22F2FB90C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2319016F0](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v6 = v4;
      sub_22F10EEDC(&v8, v6);
      v7 = v8;

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 8 * v3 + 32);
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_22F2FBA00(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, &qword_2810A9008, off_27887B6B0);
    sub_22F11FA28(&qword_2810A9000, &qword_2810A9008, off_27887B6B0);
    sub_22F741470();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
  while (v1 < 0)
  {
    if (!sub_22F741A40() || (sub_22F120634(0, &qword_2810A9008, off_27887B6B0), swift_dynamicCast(), (v11 = v16) == 0))
    {
LABEL_22:
      sub_22F0FF590();
      return;
    }

LABEL_17:
    v12 = [v11 node];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();

    if (v13)
    {
      MEMORY[0x231900D00]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_22F2FBCA4@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = sub_22F741CA0();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    result = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1;
    v8 = -1 << *(result + 32);
    v4 = result + 64;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = 0;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_22F2FBD28(void **a1)
{
  v2 = *(sub_22F73F690() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6440(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F30A160(v5);
  *a1 = v3;
}

unint64_t sub_22F2FBDD0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      v10 = 0;
      sub_22F741B00();
      MEMORY[0x231900B10](0x6E6F697461636F4CLL, 0xEF282065646F6E20);
      MEMORY[0x231900B10](v1, v2);
      MEMORY[0x231900B10](0xD000000000000026, 0x800000022F79A3D0);
      v6 = v4;
      v5 = v3;
    }

    else
    {
      sub_22F741B00();

      v10 = 0x6E6F697461636F4CLL;
      MEMORY[0x231900B10](v1, v2);
      v5 = 0x800000022F79A400;
      v6 = 0xD00000000000001BLL;
    }

    goto LABEL_7;
  }

  if (*(v0 + 32) == 2)
  {
    sub_22F741B00();

    v10 = 0x646F6E2061657241;
    MEMORY[0x231900B10](v1, v2);
    v6 = 0xD000000000000025;
    v5 = 0x800000022F79A3A0;
LABEL_7:
    MEMORY[0x231900B10](v6, v5);
    return v10;
  }

  result = 0xD00000000000001BLL;
  if (!(v4 | v2 | v1 | v3))
  {
    return 0xD00000000000003ALL;
  }

  v8 = v4 | v2 | v3;
  if (v1 == 1 && v8 == 0)
  {
    return 0xD000000000000038;
  }

  if (v1 == 2 && !v8)
  {
    return 0xD000000000000043;
  }

  if (v1 != 3 || v8)
  {
    if (v1 != 4 || v8)
    {
      return 0xD00000000000002CLL;
    }

    else
    {
      return 0xD000000000000045;
    }
  }

  return result;
}

uint64_t sub_22F2FC064(uint64_t a1)
{
  v2 = sub_22F30F274();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22F2FC0A0(uint64_t a1)
{
  v2 = sub_22F30F274();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22F2FC0E0()
{
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      return 108;
    }

    else
    {
      v2 = *v0;
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | *v0 | v3)
      {
        v5 = v4 | v3;
        if (v2 == 1 && v5 == 0)
        {
          return 101;
        }

        else if (v2 != 2 || v5)
        {
          if (v2 != 3 || v5)
          {
            if (v5)
            {
              v7 = 0;
            }

            else
            {
              v7 = v2 == 4;
            }

            if (v7)
            {
              return 104;
            }

            else
            {
              return 105;
            }
          }

          else
          {
            return 103;
          }
        }

        else
        {
          return 102;
        }
      }

      else
      {
        return 100;
      }
    }
  }

  else if (*(v0 + 32))
  {
    return 107;
  }

  else
  {
    return 106;
  }
}

id TripLocationScore.__allocating_init(locationNode:score:momentNodes:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PGTripLocationScore_locationNode] = a1;
  *&v7[OBJC_IVAR___PGTripLocationScore__score] = a3;
  *&v7[OBJC_IVAR___PGTripLocationScore_momentNodes] = a2;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id TripLocationScore.init(locationNode:score:momentNodes:)(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR___PGTripLocationScore_locationNode] = a1;
  *&v3[OBJC_IVAR___PGTripLocationScore__score] = a3;
  *&v3[OBJC_IVAR___PGTripLocationScore_momentNodes] = a2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for TripLocationScore();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_22F2FC350()
{
  v1 = *(v0 + OBJC_IVAR___PGTripLocationScore_locationNode);
  v2 = *(v0 + OBJC_IVAR___PGTripLocationScore__score);
  v3 = *(v0 + OBJC_IVAR___PGTripLocationScore_momentNodes);
  v4 = type metadata accessor for TripLocationScore();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___PGTripLocationScore_locationNode] = v1;
  *&v5[OBJC_IVAR___PGTripLocationScore__score] = v2;
  *&v5[OBJC_IVAR___PGTripLocationScore_momentNodes] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_22F2FC410()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR___PGTripLocationScore_locationNode) description];
  v3 = sub_22F740E20();
  v5 = v4;

  MEMORY[0x231900B10](v3, v5);

  MEMORY[0x231900B10](8250, 0xE200000000000000);
  v6 = *(v1 + OBJC_IVAR___PGTripLocationScore__score);
  sub_22F7413B0();
  return 0;
}

id TripLocationScore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22F2FC5D0()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2FC6A4()
{
  *v0;
  *v0;
  *v0;
  sub_22F740D60();
}

uint64_t sub_22F2FC764()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2FC834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22F30EC60();
  *a2 = result;
  return result;
}

void sub_22F2FC864(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736270;
  v5 = 0xE500000000000000;
  v6 = 0x6574617453;
  v7 = 0xE700000000000000;
  v8 = 0x7972746E756F43;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000022F78E820;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 2037672259;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_22F2FC8F4()
{
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_locationFrequency) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets) = 0;
  v1 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet) = v1;
  v2 = (v0 + OBJC_IVAR___PGTripFeatureProcessor_currentError);
  *v2 = 0;
  v2[1] = 0;
  sub_22F741D40();
  __break(1u);
}

void *TripFeatureProcessor.init(momentNodes:graph:locationHelper:)(void *a1, void *a2, void *a3)
{
  v51 = a3;
  v49 = sub_22F73F090();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v39 = OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel) = 0;
  v40 = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI) = MEMORY[0x277D84F98];
  v42 = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment) = 0;
  v46 = OBJC_IVAR___PGTripFeatureProcessor_locationFrequency;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_locationFrequency) = 0;
  v48 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel) = 0;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable) = 0;
  v47 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets) = 0;
  v13 = MEMORY[0x277D84FA0];
  v44 = OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes) = MEMORY[0x277D84FA0];
  v45 = OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes) = 0;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel) = 0;
  v41 = OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet) = v13;
  v14 = (v3 + OBJC_IVAR___PGTripFeatureProcessor_currentError);
  v15 = type metadata accessor for TripFeatureProcessorHelper();
  *v14 = 0;
  v14[1] = 0;
  v43 = v14;
  v16 = [objc_allocWithZone(v15) init];
  v17 = OBJC_IVAR___PGTripFeatureProcessor_processorHelper;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper) = v16;
  v18 = OBJC_IVAR___PGTripFeatureProcessor_momentNodes;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes) = a1;
  v19 = OBJC_IVAR___PGTripFeatureProcessor_graph;
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_graph) = a2;
  v20 = a1;
  v21 = a2;
  v22 = [v20 localDateInterval];
  if (v22)
  {
    v23 = v22;
    sub_22F73F020();

    v24 = v49;
    (*(v6 + 32))(v12, v9, v49);
    (*(v6 + 16))(v3 + OBJC_IVAR___PGTripFeatureProcessor_tripDateInterval, v12, v24);
    *(v3 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper) = v51;
    v25 = type metadata accessor for TripFeatureProcessor(0);
    v50.receiver = v3;
    v50.super_class = v25;
    v3 = objc_msgSendSuper2(&v50, sel_init);

    (*(v6 + 8))(v12, v24);
  }

  else
  {
    sub_22F2FCEA4();
    swift_allocError();
    *v26 = 4;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 3;
    swift_willThrow();

    v27 = *(v3 + v39);

    v28 = *(v3 + v40);

    v29 = *(v3 + v42);

    v30 = *(v3 + v46);

    v31 = *(v3 + v48);

    v32 = *(v3 + v47);

    v33 = *(v3 + v44);

    v34 = *(v3 + v41);

    v35 = v43[1];

    type metadata accessor for TripFeatureProcessor(0);
    v36 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v37 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_22F2FCEA4()
{
  result = qword_27DAB3580;
  if (!qword_27DAB3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3580);
  }

  return result;
}

void *sub_22F2FCFC4()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment);
  if (!v1)
  {
    goto LABEL_36;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_22F741CA0() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v3 = ~v6;
    v2 = v1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(v1 + 64);
    v5 = v1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  v11 = MEMORY[0x277D84F98];
  v35 = v2;
  v36 = v10;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v12 = v9;
    v13 = v4;
    v14 = v9;
    if (!v4)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {
          goto LABEL_32;
        }

        v13 = *(v2 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      while (1)
      {
LABEL_36:
        sub_22F741D40();
        __break(1u);
LABEL_37:
        sub_22F120634(0, &qword_2810A90E0, off_27887B100);
        sub_22F7420C0();
        __break(1u);
      }
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v5 + 56) + v16);
    v18 = *(*(v5 + 48) + v16);

    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_20:
    if (*(v17 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8) == 1)
    {
      goto LABEL_36;
    }

    v19 = v5;
    v20 = *(v17 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore);
    v21 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v11;
    v24 = sub_22F1234BC(v21);
    v25 = v11[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_34;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22F137640();
        if (v28)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_22F12B214(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_22F1234BC(v21);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_37;
      }

      v24 = v29;
      if (v28)
      {
LABEL_9:
        *(v11[7] + 8 * v24) = v20;

        goto LABEL_10;
      }
    }

    v11[(v24 >> 6) + 8] |= 1 << v24;
    *(v11[6] + 8 * v24) = v21;
    *(v11[7] + 8 * v24) = v20;

    v31 = v11[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_35;
    }

    v11[2] = v33;
LABEL_10:
    v9 = v14;
    v4 = v15;
    v5 = v19;
    v2 = v35;
    v10 = v36;
  }

  if (sub_22F741D10())
  {
    sub_22F120634(0, &qword_2810A90E0, off_27887B100);
    swift_dynamicCast();
    v18 = v37;
    type metadata accessor for MomentRelevanceData(0);
    swift_dynamicCast();
    v17 = v37;
    v14 = v9;
    v15 = v4;
    if (v37)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  sub_22F0FF590();
  return v11;
}

uint64_t sub_22F2FD5EC(void *a1)
{
  if (*(v1 + *a1))
  {
  }

  sub_22F2FCEA4();
  swift_allocError();
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 3;
  return swift_willThrow();
}

id sub_22F2FD664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + *a4))
  {
    v4 = *(a1 + *a4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35D0, &unk_22F784740);
    v5 = sub_22F740C80();
  }

  else
  {
    sub_22F2FCEA4();
    v7 = swift_allocError();
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 3;
    swift_willThrow();
    if (a3)
    {
      v9 = sub_22F73F360();

      v10 = v9;
      v5 = 0;
      *a3 = v9;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

void sub_22F2FD76C()
{
  v1 = objc_opt_self();
  v2 = sub_22F740DF0();
  _s11PhotosGraph24TripTitleAnalyticsHelperC16analyticsPayload3forSDySSSo8NSObjectCGAA0C16FeatureProcessorC_tFZ_0(v0);
  sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
  v3 = sub_22F740C80();

  [v1 sendEvent:v2 withPayload:v3];
}

uint64_t ***sub_22F2FD92C(uint64_t a1)
{
  v3 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v5 = [v4 childProgressReporterToCheckpoint_];
  v6 = [v4 childProgressReporterToCheckpoint_];
  v7 = [v4 childProgressReporterToCheckpoint_];
  v8 = [v4 childProgressReporterToCheckpoint_];
  v47 = [v4 childProgressReporterToCheckpoint_];
  v46 = [v4 childProgressReporterToCheckpoint_];
  v45 = [v4 childProgressReporterToCheckpoint_];
  v43 = [v4 childProgressReporterToCheckpoint_];
  v44 = v5;
  v9 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v10 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes);
  v11 = sub_22F3EFA48(v10, v5);
  if (v2)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v42 = v6;
  DynamicType = v11;
  v13 = v7;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }

LABEL_9:

    sub_22F2FCEA4();
    swift_allocError();
    *v25 = 1;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 3;
    swift_willThrow();
LABEL_10:
    v6 = v42;
LABEL_11:
    v18 = v8;
    goto LABEL_12;
  }

  if (sub_22F741A00() < 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = sub_22F3084FC(v12, v42);
  v15 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment);
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment) = v14;

  v16 = sub_22F3015FC(v14, v13, &DynamicType);

  v17 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel) = v16;

  sub_22F2FE120();
  v18 = v8;
  if (*(v3 + OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable) != 0.0)
  {
    sub_22F300540(v8);
    v7 = v13;
    v20 = sub_22F305E00(DynamicType, v47);
    v21 = v42;
    v22 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_locationFrequency);
    *(v3 + OBJC_IVAR___PGTripFeatureProcessor_locationFrequency) = v20;

    v23 = sub_22F302DAC();
    v24 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel);
    *(v3 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel) = v23;

    if (sub_22F3031B4())
    {
      goto LABEL_16;
    }

    [v10 graph];
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      v36 = [v34 supersets];
      sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
      sub_22F11FA28(&qword_2810A8FD0, &qword_2810A8FE0, off_27887AD90);
      v37 = sub_22F741420();

      v38 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes);
      *(v3 + OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes) = v37;

      v39 = [v35 supersetStateNodes];
      v40 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes);
      *(v3 + OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes) = v39;

      sub_22F303A90(v35, v45);
      swift_unknownObjectRelease();
      v21 = v42;
      v18 = v8;
LABEL_16:
      p_DynamicType = sub_22F2FE258();

      return p_DynamicType;
    }

    swift_unknownObjectRelease();
    sub_22F2FCEA4();
    swift_allocError();
    *v41 = 5;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_22F2FCEA4();
  swift_allocError();
  *v19 = 3;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 3;
  swift_willThrow();
  v7 = v13;
  v6 = v42;
LABEL_12:
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3590, &unk_22F784320);
  DynamicType = sub_22F740E90();
  v50 = v26;
  MEMORY[0x231900B10](0x2065646F63203ALL, 0xE700000000000000);
  v27 = sub_22F73F360();
  [v27 code];

  v28 = sub_22F742010();
  p_DynamicType = &DynamicType;
  MEMORY[0x231900B10](v28);

  v30 = v50;
  v31 = (v3 + OBJC_IVAR___PGTripFeatureProcessor_currentError);
  v32 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_currentError + 8);
  *v31 = DynamicType;
  v31[1] = v30;

  swift_willThrow();

  return p_DynamicType;
}

void sub_22F2FE120()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (v1)
  {
    v13 = MEMORY[0x277D84FA0];
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    while (v4)
    {
      v7 = v6;
LABEL_10:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = v8 | (v7 << 6);
      v10 = *(*(v1 + 48) + 16 * v9 + 8);
      v11 = *(*(v1 + 56) + 8 * v9);

      sub_22F30F2F0(v12, &v13, v0);
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return;
      }

      v4 = *(v1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F2FE258()
{
  v2 = v1;
  v3 = v0;
  v4 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  v5 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel);
  v6 = v3;
  v7 = v6;
  if (!v5)
  {
    v20 = v6;
LABEL_8:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v8 = sub_22F740E20();
  v10 = v9;
  if (!*(v5 + 16))
  {
    v21 = v7;

    goto LABEL_8;
  }

  v11 = v8;
  v12 = v7;

  v13 = sub_22F1229E8(v11, v10);
  v15 = v14;

  if (v15)
  {
    v16 = *(*(v5 + 56) + 8 * v13);

    v85 = sub_22F36C468(v17);
    v18 = v12;
    sub_22F30EB94(&v85, v18);
    if (v1)
    {
      goto LABEL_115;
    }

    v19 = v85;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

LABEL_10:
  v22 = *(v3 + v4);
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v24 = sub_22F740E20();
  v26 = v25;
  if (*(v22 + 16) && (v27 = v24, , v28 = sub_22F1229E8(v27, v26), v30 = v29, , (v30 & 1) != 0))
  {
    v31 = *(*(v22 + 56) + 8 * v28);

    v85 = sub_22F36C468(v32);
    v18 = v7;
    sub_22F30EB94(&v85, v18);
    if (v2)
    {
      goto LABEL_115;
    }

    v33 = v85;
    v34 = *(v3 + v4);
    if (!v34)
    {
LABEL_15:
      v23 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
    v34 = *(v3 + v4);
    if (!v34)
    {
      goto LABEL_15;
    }
  }

  v35 = sub_22F740E20();
  v37 = v36;
  if (!*(v34 + 16) || (v38 = v35, , v3 = sub_22F1229E8(v38, v37), v40 = v39, , (v40 & 1) == 0))
  {

    v23 = MEMORY[0x277D84F90];
LABEL_23:
    sub_22F741690();
    if (v2)
    {
LABEL_74:

      return v3;
    }

    v3 = sub_22F2FEC74(v19, v7);
    v43 = sub_22F2FF800(v33, v19, v7);

    v44 = sub_22F2FFDF4(v23, v7);

    sub_22F741690();
    v84 = v7;
    if (v3 >> 62)
    {
      goto LABEL_50;
    }

    v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
    v83 = v2;
    if (v45)
    {
      v46 = 0;
      v2 = (v3 & 0xFFFFFFFFFFFFFF8);
      v47 = 0.0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x2319016F0](v46, v3);
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
LABEL_35:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v46 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            v45 = sub_22F741A00();
            goto LABEL_26;
          }

          v48 = *(v3 + 8 * v46 + 32);
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_35;
          }
        }

        v50 = *&v48[OBJC_IVAR___PGTripLocationScore__score];

        v47 = v47 + v50;
        ++v46;
        if (v49 == v45)
        {
          goto LABEL_37;
        }
      }
    }

    v47 = 0.0;
LABEL_37:
    if (v43 >> 62)
    {
      v51 = sub_22F741A00();
      if (v51)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v51 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
LABEL_39:
        v52 = 0;
        v2 = (v43 & 0xFFFFFFFFFFFFFF8);
        v53 = 0.0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x2319016F0](v52, v43);
            v55 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v52 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v54 = *(v43 + 8 * v52 + 32);
            v55 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }
          }

          v56 = *&v54[OBJC_IVAR___PGTripLocationScore__score];

          v53 = v53 + v56;
          ++v52;
          if (v55 == v51)
          {
            goto LABEL_53;
          }
        }
      }
    }

    v53 = 0.0;
LABEL_53:
    if (v44 >> 62)
    {
      goto LABEL_65;
    }

    v57 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
LABEL_55:
      v58 = 0;
      v59 = 0.0;
      while (1)
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x2319016F0](v58, v44);
          v61 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v58 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v60 = *(v44 + 8 * v58 + 32);
          v61 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            v57 = sub_22F741A00();
            if (!v57)
            {
              break;
            }

            goto LABEL_55;
          }
        }

        v62 = *&v60[OBJC_IVAR___PGTripLocationScore__score];

        v59 = v59 + v62;
        ++v58;
        if (v61 == v57)
        {
          goto LABEL_67;
        }
      }
    }

    v59 = 0.0;
LABEL_67:
    if (v47 > v53)
    {
      v63 = v47;
    }

    else
    {
      v63 = v53;
    }

    if (v63 > v59)
    {
      v59 = v63;
    }

    sub_22F741690();
    if (v83)
    {
      v7 = v84;
      goto LABEL_74;
    }

    v65 = OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel;
    *(v84 + OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel) = 3;

    if (v53 == v59)
    {
      *(v84 + v65) = 2;
    }

    else
    {
      v43 = v44;
    }

    v66 = MEMORY[0x277D84F90];

    if (v47 == v59)
    {
      *(v84 + v65) = 1;
    }

    else
    {
      v3 = v43;
    }

    if (v3 >> 62)
    {
      v67 = sub_22F741A00();
      if (v67)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v67 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v67)
      {
LABEL_84:
        v85 = v66;
        sub_22F741BD0();
        if (v67 < 0)
        {
          __break(1u);
          goto LABEL_111;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v68 = 0;
          do
          {
            v69 = v68 + 1;
            v70 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
            swift_unknownObjectRelease();
            sub_22F741BA0();
            v71 = v85[2];
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
            v68 = v69;
          }

          while (v67 != v69);
        }

        else
        {
          v72 = 32;
          do
          {
            v73 = *(*(v3 + v72) + OBJC_IVAR___PGTripLocationScore_locationNode);
            sub_22F741BA0();
            v74 = v85[2];
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
            v72 += 8;
            --v67;
          }

          while (v67);
        }

        v3 = v85;
        v66 = v84;
LABEL_94:
        if (v66[v65] <= 1u && v66[v65])
        {
        }

        else
        {
          v75 = sub_22F742040();

          if ((v75 & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        v76 = sub_22F3001E8();
        v77 = v76;
        if (!(v76 >> 62))
        {
          v78 = v76 & 0xFFFFFFFFFFFFFF8;
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

            sub_22F742060();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35C8, &qword_22F784738);
            if (swift_dynamicCastMetatype() || (v79 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
            {
LABEL_106:
            }

            else
            {
              v80 = (v78 + 32);
              while (1)
              {
                v81 = *v80;
                if (!swift_dynamicCastObjCProtocolConditional())
                {
                  break;
                }

                ++v80;
                if (!--v79)
                {
                  goto LABEL_106;
                }
              }

              v77 = v78 | 1;
            }

            goto LABEL_109;
          }

          goto LABEL_113;
        }

LABEL_111:
        if (sub_22F741A00() >= 1)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35C8, &qword_22F784738);
          v82 = sub_22F741D50();
          swift_bridgeObjectRelease_n();
          v77 = v82;
LABEL_109:
          v66[v65] = 4;
          v3 = v77;
LABEL_114:
          sub_22F7416A0();

          return v3;
        }

LABEL_113:

        goto LABEL_114;
      }
    }

    v3 = MEMORY[0x277D84F90];
    v66 = v84;
    goto LABEL_94;
  }

  v41 = *(*(v34 + 56) + 8 * v3);

  v85 = sub_22F36C468(v42);
  v18 = v7;
  sub_22F30EB94(&v85, v18);
  if (!v2)
  {

    v23 = v85;
    goto LABEL_23;
  }

LABEL_115:

  __break(1u);
  return result;
}