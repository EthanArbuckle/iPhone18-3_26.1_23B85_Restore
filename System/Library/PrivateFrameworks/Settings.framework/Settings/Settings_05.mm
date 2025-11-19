uint64_t sub_21CE51DD0()
{
  v66 = v0;
  v65[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  swift_willThrow();

  v3 = *(v0 + 784);
  *(v0 + 480) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 488);
    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v6 = sub_21CE6BDA0();
    __swift_project_value_buffer(v6, qword_2812165F0);
    v7 = v5;
    v8 = sub_21CE6BD80();
    v9 = sub_21CE6CF20();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 768);
    v12 = *(v0 + 760);
    v13 = *(v0 + 752);
    if (v10)
    {
      v62 = *(v0 + 752);
      v14 = swift_slowAlloc();
      v59 = v11;
      v15 = swift_slowAlloc();
      v65[0] = v15;
      *v14 = 136315138;
      v16 = [v7 localizedDescription];
      v17 = sub_21CE6CC50();
      v19 = v18;

      v20 = sub_21CDF2CC8(v17, v19, v65);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_21CDE1000, v8, v9, "Error performing entity query %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CF1BD50](v15, -1, -1);
      MEMORY[0x21CF1BD50](v14, -1, -1);
    }

    else
    {
    }

    v32 = *(v0 + 744);
    v33 = *(v0 + 720);
    v34 = *(v0 + 696);
    v35 = *(v0 + 672);
    v36 = *(v0 + 664);
    v37 = *(v0 + 656);
    v38 = *(v0 + 648);
    v39 = *(v0 + 640);
    v40 = *(v0 + 632);
    v41 = *(v0 + 624);
    v50 = *(v0 + 616);
    v52 = *(v0 + 608);
    v54 = *(v0 + 600);
    v56 = *(v0 + 592);
    v58 = *(v0 + 584);
    v61 = *(v0 + 576);
    v64 = *(v0 + 568);

    v42 = *(v0 + 8);
    v43 = *MEMORY[0x277D85DE8];
    v44 = MEMORY[0x277D84F90];

    return v42(v44);
  }

  else
  {
    v21 = *(v0 + 768);
    v22 = *(v0 + 752);
    v23 = *(v0 + 744);
    v24 = *(v0 + 720);
    v25 = *(v0 + 696);
    v26 = *(v0 + 672);
    v27 = *(v0 + 664);
    v28 = *(v0 + 656);
    v45 = *(v0 + 648);
    v46 = *(v0 + 640);
    v47 = *(v0 + 632);
    v48 = *(v0 + 624);
    v49 = *(v0 + 616);
    v51 = *(v0 + 608);
    v53 = *(v0 + 600);
    v55 = *(v0 + 592);
    v57 = *(v0 + 584);
    v60 = *(v0 + 576);
    v63 = *(v0 + 568);

    v29 = *(v0 + 8);
    v30 = *MEMORY[0x277D85DE8];

    return v29();
  }
}

uint64_t sub_21CE522B8()
{
  v229 = v0;
  v228[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 872);
  swift_willThrow();
  v2 = &unk_281213000;
  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 872);
  v4 = *(v0 + 856);
  v226 = sub_21CE6BDA0();
  __swift_project_value_buffer(v226, qword_2812165F0);
  v5 = v4;
  v6 = v3;
  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF20();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 872);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 832);
  if (v9)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v17 = [v11 identifier];
    *(v15 + 4) = v17;
    *v16 = v17;
    *(v15 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    v16[1] = v19;
    _os_log_impl(&dword_21CDE1000, v7, v8, "LNEntity<%@> url fetch error: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40D20, &qword_21CE70EA0);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v16, -1, -1);
    v20 = v15;
    v2 = &unk_281213000;
    MEMORY[0x21CF1BD50](v20, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 824);
  v22 = *(v0 + 816) + 1;
  if (v22 == *(v0 + 808))
  {
LABEL_7:
    v23 = *(v0 + 800);
    v24 = *(v0 + 792);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);
    v27 = *(v0 + 760);
    v28 = *(v0 + 752);

    v29 = *(v0 + 744);
    v30 = *(v0 + 720);
    v31 = *(v0 + 696);
    v32 = *(v0 + 672);
    v33 = *(v0 + 664);
    v34 = *(v0 + 656);
    v35 = *(v0 + 648);
    v36 = *(v0 + 640);
    v37 = *(v0 + 632);
    v208 = *(v0 + 624);
    v210 = *(v0 + 616);
    v213 = *(v0 + 608);
    logb = *(v0 + 600);
    v220 = *(v0 + 592);
    v224 = *(v0 + 584);
    v225 = *(v0 + 576);
    v227 = *(v0 + 568);

    v38 = *(v0 + 8);
    v39 = *MEMORY[0x277D85DE8];

    return v38(v21);
  }

  v41 = &off_278323000;
  while (1)
  {
    *(v0 + 824) = v21;
    *(v0 + 816) = v22;
    v42 = *(v0 + 800);
    v43 = (v42 & 0xC000000000000001) != 0 ? MEMORY[0x21CF1B2A0]() : *(v42 + 8 * v22 + 32);
    v44 = v43;
    *(v0 + 832) = v43;
    v45 = [v43 v41[491]];
    *(v0 + 840) = v45;
    if (v45)
    {
      break;
    }

LABEL_12:
    v22 = *(v0 + 816) + 1;
    if (v22 == *(v0 + 808))
    {
      goto LABEL_7;
    }
  }

  v46 = v45;
  v47 = *(v0 + 544);
  sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
  v48 = v46;
  v49 = sub_21CE4BFC0(v48);
  *(v0 + 848) = v49;
  v50 = [v47 identifier];
  if (!v50)
  {
    sub_21CE6CC50();
    v50 = sub_21CE6CC20();
  }

  [v49 setIdentifier_];

  v51 = [v44 value];
  sub_21CE6D190();
  swift_unknownObjectRelease();
  sub_21CDE40C8(0, &qword_2812119C0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  log = *(v0 + 512);
  *(v0 + 856) = log;
  v52 = [v44 exportedContent];
  if (!v52)
  {
    v56 = v2;
    v59 = *(*(v0 + 560) + 56);
    v59(*(v0 + 656), 1, 1, *(v0 + 552));
    goto LABEL_27;
  }

  v53 = v52;
  v54 = [v52 content];

  v55 = [v54 fileURL];
  v56 = v2;
  if (v55)
  {
    v57 = *(v0 + 648);
    sub_21CE6B9F0();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v60 = *(v0 + 656);
  v61 = *(v0 + 648);
  v62 = *(v0 + 560);
  v63 = *(v0 + 552);
  v59 = *(v62 + 56);
  v59(v61, v58, 1, v63);
  sub_21CE53750(v61, v60);
  if ((*(v62 + 48))(v60, 1, v63) != 1)
  {
    v72 = *(v0 + 664);
    v73 = *(v0 + 592);
    v74 = *(v0 + 552);
    v75 = *(*(v0 + 560) + 32);
    v75(v73, *(v0 + 656), v74);
    v75(v72, v73, v74);
    v59(v72, 0, 1, v74);
    v76 = v59;
    v2 = v56;
    v77 = v76;
    goto LABEL_39;
  }

LABEL_27:
  v221 = v59;
  *(v0 + 864) = v59;
  sub_21CDE5494(*(v0 + 656), &unk_27CE40310, &qword_21CE71470);
  v64 = [v44 exportedContent];
  if (!v64)
  {
    goto LABEL_78;
  }

  v65 = v64;
  v2 = v56;
  v66 = [v64 content];

  v67 = [v66 data];
  v68 = sub_21CE6BA90();
  v70 = v69;

  v71 = v70 >> 62;
  if ((v70 >> 62) <= 1)
  {
    if (!v71)
    {
      sub_21CDF32E8(v68, v70);
      if ((v70 & 0xFF000000000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_37;
    }

    sub_21CDF32E8(v68, v70);
    v78 = v68;
    v79 = v68 >> 32;
LABEL_36:
    if (v78 == v79)
    {
      goto LABEL_78;
    }

LABEL_37:
    v80 = [v44 exportedContent];
    if (!v80)
    {
      goto LABEL_78;
    }

    v81 = v80;
    v82 = *(v0 + 664);
    v83 = *(v0 + 640);
    v84 = *(v0 + 552);
    v85 = *(v0 + 560) + 56;
    v86 = [v80 content];

    v87 = [v86 data];
    v88 = sub_21CE6BA90();
    v90 = v89;

    v221(v83, 1, 1, v84);
    v77 = v221;
    sub_21CE6B9A0();
    sub_21CDF32E8(v88, v90);
    sub_21CDE5494(v83, &unk_27CE40310, &qword_21CE71470);
LABEL_39:
    v91 = *(v0 + 672);
    v92 = *(v0 + 616);
    v93 = *(v0 + 560);
    v94 = *(v0 + 552);
    sub_21CE53750(*(v0 + 664), v91);
    sub_21CE0D9E4(v91, v92);
    v95 = *(v93 + 48);
    if (v95(v92, 1, v94) == 1)
    {
      sub_21CDE5494(*(v0 + 616), &unk_27CE40310, &qword_21CE71470);
      if (v2[83] != -1)
      {
        swift_once();
      }

      v96 = *(v0 + 544);
      __swift_project_value_buffer(v226, qword_2812165F0);
      v97 = v96;
      v98 = sub_21CE6BD80();
      v99 = sub_21CE6CF20();

      v100 = os_log_type_enabled(v98, v99);
      v101 = *(v0 + 856);
      v102 = *(v0 + 848);
      v103 = *(v0 + 840);
      v104 = *(v0 + 672);
      if (v100)
      {
        v222 = *(v0 + 672);
        v105 = *(v0 + 544);
        v214 = *(v0 + 832);
        v106 = swift_slowAlloc();
        logc = v101;
        v107 = swift_slowAlloc();
        v228[0] = v107;
        *v106 = 136315138;
        v108 = [v105 description];
        v209 = v102;
        v211 = v103;
        v109 = sub_21CE6CC50();
        v111 = v110;

        v112 = sub_21CDF2CC8(v109, v111, v228);

        *(v106 + 4) = v112;
        _os_log_impl(&dword_21CDE1000, v98, v99, "Unable to export or fetch entity URL for %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        MEMORY[0x21CF1BD50](v107, -1, -1);
        MEMORY[0x21CF1BD50](v106, -1, -1);

        v113 = v222;
      }

      else
      {

        v113 = v104;
      }

      sub_21CDE5494(v113, &unk_27CE40310, &qword_21CE71470);
      v21 = *(v0 + 824);
      v41 = &off_278323000;
    }

    else
    {
      v114 = *(v0 + 848);
      (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 616), *(v0 + 552));
      v115 = sub_21CE6B9B0();
      [v114 setURL_];

      if (URL.relatedAppBundleIdentifier()().value._object)
      {
        v116 = sub_21CE6CC20();
      }

      else
      {
        v116 = 0;
      }

      v117 = MEMORY[0x277D837D0];
      v118 = *(v0 + 848);
      v119 = *(v0 + 576);
      [v118 setRelatedAppBundleIdentifier_];

      v120 = sub_21CE4BBC4();
      [v118 setRankingHint_];

      if (v2[83] != -1)
      {
        swift_once();
      }

      v121 = *(v0 + 848);
      __swift_project_value_buffer(v226, qword_2812165F0);
      v122 = v121;
      v123 = sub_21CE6BD80();
      v124 = sub_21CE6CF00();

      if (os_log_type_enabled(v123, v124))
      {
        v215 = v124;
        v223 = v95;
        v125 = *(v0 + 848);
        v126 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        *(v0 + 520) = v212;
        *v126 = 141559811;
        *(v126 + 4) = 1752392040;
        *(v126 + 12) = 2081;
        v127 = [v125 title];
        loga = v123;
        if (v127)
        {
          v128 = v127;
          v129 = sub_21CE6CC50();
          v131 = v130;
        }

        else
        {
          v131 = 0xE200000000000000;
          v129 = 10023;
        }

        v132 = *(v0 + 848);
        v133 = sub_21CDF2CC8(v129, v131, (v0 + 520));

        *(v126 + 14) = v133;
        *(v126 + 22) = 2160;
        *(v126 + 24) = 1752392040;
        *(v126 + 32) = 2081;
        v134 = [v132 subtitle];
        if (v134)
        {
          v135 = v134;
          v136 = sub_21CE6CC50();
          v138 = v137;
        }

        else
        {
          v138 = 0xE200000000000000;
          v136 = 10023;
        }

        v139 = *(v0 + 848);
        v140 = sub_21CDF2CC8(v136, v138, (v0 + 520));

        *(v126 + 34) = v140;
        *(v126 + 42) = 2160;
        *(v126 + 44) = 1752392040;
        *(v126 + 52) = 2081;
        v141 = [v139 keywords];
        if (v141)
        {
          v142 = v141;
          v143 = sub_21CE6CD40();
        }

        else
        {
          v143 = MEMORY[0x277D84F90];
        }

        v144 = *(v0 + 848);
        v145 = MEMORY[0x21CF1AD30](v143, v117);
        v147 = v146;

        v148 = sub_21CDF2CC8(v145, v147, (v0 + 520));

        *(v126 + 54) = v148;
        *(v126 + 62) = 2160;
        *(v126 + 64) = 1752392040;
        *(v126 + 72) = 2081;
        v149 = [v144 URL];
        if (v149)
        {
          v150 = *(v0 + 600);
          v151 = v149;
          sub_21CE6B9F0();

          v152 = 0;
        }

        else
        {
          v152 = 1;
        }

        v153 = *(v0 + 608);
        v154 = *(v0 + 600);
        v155 = *(v0 + 552);
        v156 = *(v0 + 560) + 56;
        v77(v154, v152, 1, v155);
        sub_21CE53750(v154, v153);
        v157 = v223(v153, 1, v155);
        v158 = *(v0 + 608);
        if (v157)
        {
          sub_21CDE5494(*(v0 + 608), &unk_27CE40310, &qword_21CE71470);
          v159 = 0xE200000000000000;
          v160 = 10023;
        }

        else
        {
          v161 = *(v0 + 568);
          v162 = *(v0 + 560);
          v163 = *(v0 + 552);
          (*(v162 + 16))(v161, *(v0 + 608), v163);
          sub_21CDE5494(v158, &unk_27CE40310, &qword_21CE71470);
          v164 = sub_21CE6B980();
          v159 = v165;
          (*(v162 + 8))(v161, v163);
          v160 = v164;
        }

        v166 = sub_21CDF2CC8(v160, v159, (v0 + 520));

        *(v126 + 74) = v166;
        _os_log_impl(&dword_21CDE1000, loga, v215, "LNEntityMetadata: CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v126, 0x52u);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v212, -1, -1);
        MEMORY[0x21CF1BD50](v126, -1, -1);
      }

      else
      {
      }

      v167 = *(v0 + 544);
      v168 = *(v0 + 536);
      *(v0 + 400) = *(v0 + 528);
      *(v0 + 408) = v168;

      v169 = [v167 mangledTypeNameByBundleIdentifier];
      v170 = sub_21CE6CB60();

      v171 = sub_21CE4B3D4(v170);
      v173 = v172;

      if (v173)
      {

        *(v0 + 416) = v171;
        *(v0 + 424) = v173;
        *(v0 + 432) = 0x6C7070612E6D6F63;
        *(v0 + 440) = 0xEA00000000002E65;
        sub_21CE537C0();
        sub_21CE6CED0();

        v174 = *(v0 + 352);
        v175 = *(v0 + 360);
        *(v0 + 448) = 46;
        *(v0 + 456) = 0xE100000000000000;
        *(v0 + 368) = *(v0 + 336);
        *(v0 + 384) = v174;
        *(v0 + 392) = v175;
        sub_21CE53814();
        sub_21CE6CCC0();

        MEMORY[0x21CF1ACB0](*(v0 + 448), *(v0 + 456));
      }

      else
      {
        v176 = *(v0 + 544);
        v177 = sub_21CE6BD80();
        v178 = sub_21CE6CF10();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = *(v0 + 544);
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v228[0] = v181;
          *v180 = 136315138;
          v182 = [v179 description];
          v183 = sub_21CE6CC50();
          v185 = v184;

          v186 = sub_21CDF2CC8(v183, v185, v228);

          *(v180 + 4) = v186;
          _os_log_impl(&dword_21CDE1000, v177, v178, "Unknown bundle domain for %s", v180, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v181);
          MEMORY[0x21CF1BD50](v181, -1, -1);
          MEMORY[0x21CF1BD50](v180, -1, -1);
        }
      }

      v187 = *(v0 + 848);
      v188 = *(v0 + 576);
      sub_21CE6B980();
      v189 = *(v0 + 400);
      v190 = *(v0 + 408);
      v191 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v192 = v187;
      v193 = sub_21CE6CC20();

      v194 = sub_21CE6CC20();

      [v191 initWithUniqueIdentifier:v193 domainIdentifier:v194 attributeSet:v192];

      MEMORY[0x21CF1AD00]();
      if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v203 = *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21CE6CD60();
      }

      v195 = *(v0 + 856);
      v196 = *(v0 + 848);
      v197 = *(v0 + 840);
      v198 = *(v0 + 832);
      v199 = *(v0 + 672);
      v200 = *(v0 + 576);
      v201 = *(v0 + 560);
      v202 = *(v0 + 552);
      sub_21CE6CD80();

      (*(v201 + 8))(v200, v202);
      sub_21CDE5494(v199, &unk_27CE40310, &qword_21CE71470);
      v21 = *(v0 + 464);
      v2 = &unk_281213000;
      v41 = &off_278323000;
    }

    goto LABEL_12;
  }

  if (v71 == 2)
  {
    v78 = *(v68 + 16);
    v79 = *(v68 + 24);
    sub_21CDF32E8(v68, v70);
    goto LABEL_36;
  }

  sub_21CDF32E8(v68, v70);
LABEL_78:
  v204 = *(v0 + 776);
  v205 = *(v0 + 632);
  *(v0 + 80) = v0;
  *(v0 + 120) = v205;
  *(v0 + 88) = sub_21CE5098C;
  v206 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4E508;
  *(v0 + 232) = &block_descriptor_11;
  *(v0 + 240) = v206;
  [v204 fetchEntityURL:log completionHandler:v0 + 208];
  v207 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 80);
}

void *sub_21CE536B4(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 16 * a2);
    v9 = v8[1];
    *result = *v8;
    result[1] = v9;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CE53750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE537C0()
{
  result = qword_281211AE8[0];
  if (!qword_281211AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281211AE8);
  }

  return result;
}

unint64_t sub_21CE53814()
{
  result = qword_281211AE0;
  if (!qword_281211AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211AE0);
  }

  return result;
}

unint64_t sub_21CE53868()
{
  result = qword_281211A00;
  if (!qword_281211A00)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211A00);
  }

  return result;
}

uint64_t type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView()
{
  result = qword_27CE40D40;
  if (!qword_27CE40D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CE53944()
{
  sub_21CE3B428();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_21CE539D4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C3E0();
  v4 = sub_21CE53C6C();
  v32 = 0;
  sub_21CE54090(v1, &v18);
  v44 = v28;
  v45 = v29;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v34 = v18;
  v35 = v19;
  v47[10] = v28;
  v47[11] = v29;
  v47[6] = v24;
  v47[7] = v25;
  v47[9] = v27;
  v47[8] = v26;
  v47[1] = v19;
  v47[2] = v20;
  v47[3] = v21;
  v47[5] = v23;
  v47[4] = v22;
  v46 = v30;
  v48 = v30;
  v47[0] = v18;
  sub_21CDFAA5C(&v34, v17, &qword_27CE40D50, &qword_21CE73698);
  sub_21CDE5494(v47, &qword_27CE40D50, &qword_21CE73698);
  *&v31[151] = v43;
  *&v31[167] = v44;
  *&v31[183] = v45;
  *&v31[87] = v39;
  *&v31[103] = v40;
  *&v31[119] = v41;
  *&v31[135] = v42;
  *&v31[23] = v35;
  *&v31[39] = v36;
  *&v31[55] = v37;
  *&v31[71] = v38;
  *&v31[199] = v46;
  *&v31[7] = v34;
  v5 = v32;
  KeyPath = swift_getKeyPath();
  sub_21CE6CAE0();
  sub_21CE6C0E0();
  *&v33[55] = v21;
  *&v33[71] = v22;
  *&v33[87] = v23;
  *&v33[103] = v24;
  *&v33[7] = v18;
  *&v33[23] = v19;
  *&v33[39] = v20;
  *(a1 + 8) = v4;
  v7 = *&v31[128];
  *(a1 + 161) = *&v31[144];
  v8 = *&v31[176];
  *(a1 + 177) = *&v31[160];
  *(a1 + 193) = v8;
  *(a1 + 208) = *&v31[191];
  v9 = *&v31[64];
  *(a1 + 97) = *&v31[80];
  v10 = *&v31[112];
  *(a1 + 113) = *&v31[96];
  *(a1 + 129) = v10;
  *(a1 + 145) = v7;
  v11 = *v31;
  *(a1 + 33) = *&v31[16];
  v12 = *&v31[48];
  *(a1 + 49) = *&v31[32];
  *(a1 + 65) = v12;
  *a1 = v3;
  *(a1 + 16) = v5;
  *(a1 + 81) = v9;
  *(a1 + 17) = v11;
  *(a1 + 224) = KeyPath;
  *(a1 + 232) = 0;
  v13 = *&v33[80];
  *(a1 + 297) = *&v33[64];
  *(a1 + 313) = v13;
  *(a1 + 329) = *&v33[96];
  *(a1 + 344) = *&v33[111];
  v14 = *&v33[16];
  *(a1 + 233) = *v33;
  *(a1 + 249) = v14;
  result = *&v33[32];
  v16 = *&v33[48];
  *(a1 + 265) = *&v33[32];
  *(a1 + 281) = v16;
  return result;
}

double sub_21CE53C6C()
{
  v0 = sub_21CE6C4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C58, &qword_21CE73390);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_21CE58778(&v26 - v17);
  (*(v1 + 104))(v16, *MEMORY[0x277CE0560], v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_21CDFAA5C(v18, v8, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDFAA5C(v16, &v8[v19], &qword_27CE40C28, &qword_21CE73360);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) == 1)
  {
    sub_21CDE5494(v16, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v18, &qword_27CE40C28, &qword_21CE73360);
    if (v20(&v8[v19], 1, v0) == 1)
    {
      sub_21CDE5494(v8, &qword_27CE40C28, &qword_21CE73360);
      return 20.0;
    }

    goto LABEL_6;
  }

  sub_21CDFAA5C(v8, v13, &qword_27CE40C28, &qword_21CE73360);
  if (v20(&v8[v19], 1, v0) == 1)
  {
    sub_21CDE5494(v16, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v18, &qword_27CE40C28, &qword_21CE73360);
    (*(v1 + 8))(v13, v0);
LABEL_6:
    sub_21CDE5494(v8, &qword_27CE40C58, &qword_21CE73390);
    return 15.0;
  }

  v22 = &v8[v19];
  v23 = v27;
  (*(v1 + 32))(v27, v22, v0);
  sub_21CE54A68();
  v24 = sub_21CE6CBA0();
  v25 = *(v1 + 8);
  v25(v23, v0);
  sub_21CDE5494(v16, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDE5494(v18, &qword_27CE40C28, &qword_21CE73360);
  v25(v13, v0);
  sub_21CDE5494(v8, &qword_27CE40C28, &qword_21CE73360);
  result = 15.0;
  if (v24)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_21CE54090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView() + 20);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  v7 = *(v4 + 80);
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_21CDEFF74();
  v8 = sub_21CE6C3E0();
  v9 = sub_21CE543BC();
  v24[0] = 0;
  sub_21CE547E0(a1, &v42);
  v34 = *&v43[48];
  v35 = *&v43[64];
  v36 = *&v43[80];
  v37 = *&v43[96];
  v30 = v42;
  v31 = *v43;
  v32 = *&v43[16];
  v33 = *&v43[32];
  v38[0] = v42;
  v38[1] = *v43;
  v38[2] = *&v43[16];
  v38[3] = *&v43[32];
  v38[4] = *&v43[48];
  v38[5] = *&v43[64];
  v38[6] = *&v43[80];
  v39 = *&v43[96];
  sub_21CDFAA5C(&v30, &v40, &qword_27CE40D58, &qword_21CE73728);
  sub_21CDE5494(v38, &qword_27CE40D58, &qword_21CE73728);
  *&v29[71] = v34;
  *&v29[87] = v35;
  *&v29[103] = v36;
  *&v29[119] = v37;
  *&v29[7] = v30;
  *&v29[23] = v31;
  *&v29[39] = v32;
  *&v29[55] = v33;
  *&v40 = v8;
  *(&v40 + 1) = v9;
  v41[0] = 0;
  *&v41[1] = *v29;
  v10 = *v29;
  v11 = *&v29[16];
  *&v41[17] = *&v29[16];
  v12 = *&v29[48];
  *&v41[33] = *&v29[32];
  *&v41[112] = *&v29[111];
  *&v41[97] = *&v29[96];
  v14 = *&v29[80];
  v13 = *&v29[96];
  *&v41[81] = *&v29[80];
  v15 = *&v29[64];
  *&v41[65] = *&v29[64];
  v16 = *&v29[32];
  *&v41[49] = *&v29[48];
  *&v25[23] = *v41;
  *&v25[103] = *&v41[80];
  *&v25[87] = *&v41[64];
  *&v25[39] = *&v41[16];
  *&v25[119] = *&v41[96];
  *&v25[135] = *&v41[112];
  *&v25[55] = *&v41[32];
  *&v25[71] = *&v41[48];
  *&v25[7] = v40;
  v17 = *&v25[112];
  *(a2 + 145) = *&v25[96];
  *(a2 + 161) = v17;
  *(a2 + 177) = *&v25[128];
  v18 = *&v25[48];
  *(a2 + 81) = *&v25[32];
  *(a2 + 97) = v18;
  v19 = *&v25[80];
  *(a2 + 113) = *&v25[64];
  *(a2 + 129) = v19;
  v20 = *&v25[16];
  *(a2 + 49) = *v25;
  *(a2 + 65) = v20;
  *(&v42 + 1) = v9;
  *&v43[65] = v15;
  *&v43[81] = v14;
  *&v43[97] = v13;
  *&v43[112] = *&v29[111];
  *&v43[1] = v10;
  *&v43[17] = v11;
  v28 = 0;
  v27 = 0;
  v26 = v7;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v22;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 192) = *&v25[143];
  *&v42 = v8;
  v43[0] = 0;
  *&v43[33] = v16;
  *&v43[49] = v12;
  sub_21CDEC9F0(KeyPath, 0);
  sub_21CDEC9F0(v22, 0);
  sub_21CDEFF74();
  sub_21CDFAA5C(&v40, v24, &qword_27CE40D60, &unk_21CE73730);
  sub_21CDE5494(&v42, &qword_27CE40D60, &unk_21CE73730);
  sub_21CDEC9FC(KeyPath, 0);
  sub_21CDEC9FC(v22, 0);
  return sub_21CDEFF7C();
}

double sub_21CE543BC()
{
  v0 = sub_21CE6C4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C58, &qword_21CE73390);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_21CE58778(&v26 - v17);
  (*(v1 + 104))(v16, *MEMORY[0x277CE0560], v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_21CDFAA5C(v18, v8, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDFAA5C(v16, &v8[v19], &qword_27CE40C28, &qword_21CE73360);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) == 1)
  {
    sub_21CDE5494(v16, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v18, &qword_27CE40C28, &qword_21CE73360);
    if (v20(&v8[v19], 1, v0) == 1)
    {
      sub_21CDE5494(v8, &qword_27CE40C28, &qword_21CE73360);
      return 8.0;
    }

    goto LABEL_6;
  }

  sub_21CDFAA5C(v8, v13, &qword_27CE40C28, &qword_21CE73360);
  if (v20(&v8[v19], 1, v0) == 1)
  {
    sub_21CDE5494(v16, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v18, &qword_27CE40C28, &qword_21CE73360);
    (*(v1 + 8))(v13, v0);
LABEL_6:
    sub_21CDE5494(v8, &qword_27CE40C58, &qword_21CE73390);
    return 4.0;
  }

  v22 = &v8[v19];
  v23 = v27;
  (*(v1 + 32))(v27, v22, v0);
  sub_21CE54A68();
  v24 = sub_21CE6CBA0();
  v25 = *(v1 + 8);
  v25(v23, v0);
  sub_21CDE5494(v16, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDE5494(v18, &qword_27CE40C28, &qword_21CE73360);
  v25(v13, v0);
  sub_21CDE5494(v8, &qword_27CE40C28, &qword_21CE73360);
  result = 4.0;
  if (v24)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_21CE547E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v20 = *(v3 + 16);
  *&v21 = v4;
  *(&v21 + 1) = v5;
  LOBYTE(v22) = v20;
  v23 = 0uLL;
  *(&v22 + 1) = v6;
  sub_21CE037E4(v4, v5, v20);

  sub_21CE037E4(v4, v5, v20);

  sub_21CE6C9B0();
  v18 = *(&v27 + 1);
  v19 = v27;
  v7 = v28;
  v8 = v30;
  v16 = v31;
  v17 = v29;
  LOBYTE(v21) = v28;
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v21 = v27;
  LOBYTE(v22) = v28;
  *(&v22 + 1) = v29;
  v23 = v30;
  *&v24 = v31;
  *(&v24 + 1) = v4;
  *&v25 = v5;
  BYTE8(v25) = v20;
  v26 = v6;
  v13 = v22;
  *a2 = v27;
  *(a2 + 16) = v13;
  v14 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v14;
  *(a2 + 64) = v25;
  *(a2 + 80) = v6;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  *(a2 + 104) = v11;
  *(a2 + 112) = v12;
  sub_21CE037E4(v9, v10, v11);

  sub_21CE549B8(&v21, &v27);
  sub_21CE037E4(v9, v10, v11);

  sub_21CE037F4(v9, v10, v11);

  *&v27 = v19;
  *(&v27 + 1) = v18;
  v28 = v7;
  v29 = v17;
  v30 = v8;
  v31 = v16;
  v32 = v4;
  v33 = v5;
  v34 = v20;
  v35 = v6;
  return sub_21CE54A14(&v27);
}

unint64_t sub_21CE54A68()
{
  result = qword_2812131C0;
  if (!qword_2812131C0)
  {
    sub_21CE6C4A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131C0);
  }

  return result;
}

unint64_t sub_21CE54AC0()
{
  result = qword_27CE40D68;
  if (!qword_27CE40D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40D70, &qword_21CE73740);
    sub_21CE54B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40D68);
  }

  return result;
}

unint64_t sub_21CE54B4C()
{
  result = qword_27CE40D78;
  if (!qword_27CE40D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40D80, &qword_21CE73748);
    sub_21CDE4158(&qword_27CE40D88, &qword_27CE40D90, qword_21CE73750);
    sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40D78);
  }

  return result;
}

uint64_t sub_21CE54C50()
{
  sub_21CE54E08();
  sub_21CE6C2B0();
  return v1;
}

uint64_t sub_21CE54CC0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 3);
  v5 = *(a1 + 48);
  v6 = *(a1 + 7);
  v7 = *(a3 + 24);
  v8 = *(a1 + 80);
  v10 = *a1;
  v11 = v3;
  v12 = v4;
  v13 = a1[2];
  v14 = v5;
  v15 = v6;
  v16 = a1[4];
  v17 = v8;
  return v7(&v10);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21CE54D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE54DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CE54E08()
{
  result = qword_27CE40D98;
  if (!qword_27CE40D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40D98);
  }

  return result;
}

uint64_t EnvironmentValues.settingsFeatureDescriptionViewSupported.getter()
{
  sub_21CE54EC0();
  sub_21CE6C290();
  return v1;
}

unint64_t sub_21CE54EC0()
{
  result = qword_27CE40DA8;
  if (!qword_27CE40DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40DA8);
  }

  return result;
}

uint64_t static SettingsFeatureDescriptionViewSupportedTrait.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CE40DA0 = a1;
  return result;
}

uint64_t sub_21CE5502C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CE40DA0;
  return result;
}

uint64_t UITraitCollection.settingsFeatureDescriptionViewSupported.getter()
{
  sub_21CE550B0();

  return sub_21CE6CFD0();
}

unint64_t sub_21CE550B0()
{
  result = qword_27CE40DB0;
  if (!qword_27CE40DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40DB0);
  }

  return result;
}

unint64_t sub_21CE55128()
{
  result = qword_27CE40DB8;
  if (!qword_27CE40DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40DB8);
  }

  return result;
}

uint64_t sub_21CE5517C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE550B0();

  return MEMORY[0x2821DCE18](a1, &type metadata for SettingsFeatureDescriptionViewSupportedTrait, &type metadata for SettingsFeatureDescriptionViewSupportedTrait, v6, a2, a3);
}

uint64_t sub_21CE551DC@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE550B0();
  result = sub_21CE6CFD0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21CE55220(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return sub_21CE5517C(v2, v3, v4);
}

uint64_t sub_21CE5526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E48, &qword_21CE73C98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v70 - v5;
  v6 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = v6 - 8;
  v77 = v6 - 8;
  MEMORY[0x28223BE20](v6 - 8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E50, &qword_21CE73CA0);
  v10 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v70 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E58, &qword_21CE73CA8);
  v81 = *(v83 - 1);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v79 = &v70 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E60, &qword_21CE73CB0);
  v82 = *(v84 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v80 = &v70 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E68, &qword_21CE73CB8);
  v16 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E70, &qword_21CE73CC0);
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = *(v89 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v70 - v20;
  v21 = *(v9 + 36);
  v22 = v2;
  v71 = v2;
  v23 = v2 + v21;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v95 = *v23;
  v25 = v95;
  v96 = v24;
  LOBYTE(v97) = v26;
  v98 = v27;
  v76 = v27;
  v85 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier;
  v70 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE5A690(v22, v70, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  v28 = *(v7 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = v29 + v8;
  v31 = swift_allocObject();
  sub_21CE59070(&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v29);
  sub_21CE037E4(v25, v24, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E78, &qword_21CE73CC8);
  sub_21CDE4158(&qword_27CE40E80, &qword_27CE40E78, &qword_21CE73CC8);
  sub_21CE59154();
  v32 = v74;
  v33 = v75;
  sub_21CE6C8D0();
  v34 = v32;

  sub_21CE037F4(v25, v24, v26);

  v35 = v71;
  v36 = v70;
  sub_21CE5A690(v71, v70, v85);
  v85 = v28;
  v92 = v30;
  v37 = swift_allocObject();
  v93 = v29;
  v38 = v36;
  sub_21CE59070(v36, v37 + v29);
  v39 = &v32[*(v33 + 36)];
  *v39 = sub_21CE59368;
  v39[1] = v37;
  v39[2] = 0;
  v39[3] = 0;
  v40 = v35;
  v41 = (v35 + *(v77 + 32));
  v43 = *v41;
  v42 = v41[1];
  v77 = v43;
  v95 = v43;
  v96 = v42;
  v73 = v42;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  v44 = v94;
  swift_getKeyPath();
  v95 = v44;
  v72 = sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();
  v45 = 1;

  v46 = *(v44 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);
  v47 = v78;

  if (v46 <= 0.0)
  {
    sub_21CE6C480();
    v45 = 0;
  }

  v48 = sub_21CE6C490();
  (*(*(v48 - 8) + 56))(v47, v45, 1, v48);
  v49 = sub_21CE593C8();
  v50 = v79;
  sub_21CE6C8A0();
  sub_21CDE5494(v47, &qword_27CE40E48, &qword_21CE73C98);
  v51 = sub_21CDE5494(v34, &qword_27CE40E50, &qword_21CE73CA0);
  MEMORY[0x28223BE20](v51);
  *(&v70 - 2) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EA8, &qword_21CE73D00);
  v95 = v33;
  v96 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EB0, &qword_21CE73D08);
  v53 = sub_21CE594E0();
  v95 = v52;
  v96 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v80;
  v55 = v83;
  sub_21CE6C890();
  (*(v81 + 8))(v50, v55);
  v56 = v38;
  v83 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier;
  sub_21CE5A690(v40, v38, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  v57 = swift_allocObject();
  sub_21CE59070(v38, v57 + v93);
  v58 = v86;
  (*(v82 + 32))(v86, v54, v84);
  v59 = v87;
  v60 = (v58 + *(v87 + 36));
  *v60 = sub_21CE567B0;
  v60[1] = 0;
  v60[2] = sub_21CE595D4;
  v60[3] = v57;
  v95 = v77;
  v96 = v73;
  sub_21CE6C9C0();
  v61 = v94;
  swift_getKeyPath();
  v95 = v61;
  sub_21CE6BB70();

  v62 = *(v61 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);

  v95 = v62;
  sub_21CE5A690(v40, v56, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  v63 = swift_allocObject();
  v64 = v93;
  sub_21CE59070(v56, v63 + v93);
  v65 = sub_21CE596D0();
  v66 = v88;
  sub_21CE6C8E0();

  sub_21CDE5494(v58, &qword_27CE40E68, &qword_21CE73CB8);
  swift_getKeyPath();
  sub_21CE5A690(v40, v56, v83);
  v67 = swift_allocObject();
  sub_21CE59070(v56, v67 + v64);
  v95 = v59;
  v96 = MEMORY[0x277D839F8];
  v97 = v65;
  v98 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40EE8, MEMORY[0x277CDF3E0]);
  v68 = v90;
  sub_21CE6C820();

  return (*(v89 + 8))(v66, v68);
}

uint64_t sub_21CE55D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21CE6C280();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v22[1] = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v14 = (a3 + *(v13 + 24));
  v16 = *v14;
  v15 = v14[1];
  v22[4] = v16;
  v22[5] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  v17 = a3 + *(v13 + 20);
  sub_21CE58948(v9);
  v18 = sub_21CE6C670();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  sub_21CE55EC0(v18, v20);
}

uint64_t sub_21CE55EC0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  v6 = *(v2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title) == a1 && *(v2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8), (sub_21CE6D400() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
    sub_21CE6BB60();
  }
}

uint64_t sub_21CE5602C(uint64_t a1)
{
  v21 = sub_21CE6C280();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v7 = (a1 + v6[6]);
  v9 = *v7;
  v8 = v7[1];
  v22 = v9;
  v23 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  v10 = (a1 + v6[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  v15 = a1 + v6[5];
  sub_21CE58948(v5);
  v16 = sub_21CE6C670();
  v18 = v17;
  (*(v2 + 8))(v5, v21);
  sub_21CE55EC0(v16, v18);
}

uint64_t sub_21CE561B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F00, &qword_21CE73DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = v29 - v7;
  v8 = sub_21CE6C420();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EC0, &qword_21CE73D10);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EB0, &qword_21CE73D08);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  if (*(a1 + *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) + 32)))
  {
    (*(v5 + 56))(v18, 1, 1, v4);
    v21 = sub_21CDE4158(&qword_27CE40EC8, &qword_27CE40EC0, &qword_21CE73D10);
    v32 = v10;
    v33 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF1A450](v18, v4, OpaqueTypeConformance2);
    sub_21CDE5494(v18, &qword_27CE40EB0, &qword_21CE73D08);
  }

  else
  {
    v23 = sub_21CE6C410();
    v29[0] = v14;
    MEMORY[0x28223BE20](v23);
    v29[1] = a2;
    v29[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F08, &qword_21CE73DB8);
    sub_21CE5A1EC();
    sub_21CE6BF60();
    v14 = v29[0];
    v24 = sub_21CDE4158(&qword_27CE40EC8, &qword_27CE40EC0, &qword_21CE73D10);
    v25 = v31;
    MEMORY[0x21CF1A440](v13, v10, v24);
    (*(v5 + 16))(v18, v25, v4);
    (*(v5 + 56))(v18, 0, 1, v4);
    v32 = v10;
    v33 = v24;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF1A450](v18, v4, v26);
    sub_21CDE5494(v18, &qword_27CE40EB0, &qword_21CE73D08);
    (*(v5 + 8))(v25, v4);
    (*(v30 + 8))(v13, v10);
  }

  v27 = sub_21CE594E0();
  MEMORY[0x21CF1A440](v20, v14, v27);
  return sub_21CDE5494(v20, &qword_27CE40EB0, &qword_21CE73D08);
}

uint64_t sub_21CE56648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v5 = (a1 + *(v4 + 28));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  sub_21CE6C660();
  v10 = sub_21CE6C740();
  v12 = v11;
  LOBYTE(v9) = v13;
  v15 = v14;

  v16 = (a1 + *(v4 + 24));
  v20 = *v16;
  v21 = v16[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  v17 = *(v19 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_21CE567B0@<X0>(void *a1@<X8>)
{
  result = sub_21CE6BFB0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CE567DC(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) + 24));
  v7 = *v3;
  v8 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
  sub_21CE6C9C0();
  if (*(v6 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) == v2)
  {
    *(v6 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
    sub_21CE6BB60();
  }
}

uint64_t sub_21CE56974(uint64_t a1)
{
  v2 = sub_21CE6C570();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  if (*(a1 + *(result + 32)) == 1)
  {
    v8 = (a1 + *(result + 24));
    v10 = *v8;
    v9 = v8[1];
    v11[2] = v10;
    v11[3] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
    sub_21CE6C9C0();
    sub_21CE58B28(v6);
    sub_21CE56AA8();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21CE56AA8()
{
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  v2 = (v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  v3 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8);
  v4 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    swift_getKeyPath();
    sub_21CE6BB70();

    v6 = *v2;
    v7 = v2[1];
    MEMORY[0x28223BE20](v5);

    sub_21CE6C560();
  }

  return result;
}

uint64_t sub_21CE56C14(uint64_t a1)
{
  v2 = sub_21CE6BF30();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C100();
}

uint64_t sub_21CE56CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21CE6C570();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  if (*(a3 + *(result + 32)) == 1)
  {
    v10 = (a3 + *(result + 24));
    v12 = *v10;
    v11 = v10[1];
    v13[2] = v12;
    v13[3] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E90, &qword_21CE73CD0);
    sub_21CE6C9C0();
    sub_21CE58B28(v8);
    sub_21CE56AA8();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_21CE56E10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  v3 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  return sub_21CDFAA5C(v5 + v3, a1, &qword_27CE40F18, &qword_21CE73DD0);
}

uint64_t sub_21CE56EE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  v4 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  return sub_21CDFAA5C(v3 + v4, a2, &qword_27CE40F18, &qword_21CE73DD0);
}

uint64_t sub_21CE56FC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_21CDFAA5C(a1, &v10 - v6, &qword_27CE40F18, &qword_21CE73DD0);
  v8 = *a2;
  return sub_21CE5706C(v7);
}

uint64_t sub_21CE5706C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  sub_21CDFAA5C(v1 + v7, v6, &qword_27CE40F18, &qword_21CE73DD0);
  v8 = sub_21CE5A288(v6, a1);
  sub_21CDE5494(v6, &qword_27CE40F18, &qword_21CE73DD0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
    sub_21CE6BB60();
  }

  else
  {
    swift_beginAccess();
    sub_21CE5A5A8(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_21CDE5494(a1, &qword_27CE40F18, &qword_21CE73DD0);
}

uint64_t sub_21CE57258(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  swift_beginAccess();
  sub_21CE5A5A8(a2, a1 + v4);
  return swift_endAccess();
}

double sub_21CE572D8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  return *(v2 + *a2);
}

double sub_21CE57378@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_21CE57454(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
    sub_21CE6BB60();
  }

  return result;
}

uint64_t sub_21CE57560()
{
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  v1 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  v2 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8);

  return v1;
}

uint64_t sub_21CE5761C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  v4 = *(v3 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  a2[1] = v4;
}

uint64_t sub_21CE576D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F30, &qword_21CE73E08);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token;
  v11 = sub_21CE6D020();
  v12 = *(v11 - 8);
  v17 = *(v12 + 56);
  v18 = v12 + 56;
  v17(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) = 0;
  *(v1 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = 0;
  v13 = (v1 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  sub_21CE6BB80();
  v14 = [objc_opt_self() defaultCenter];
  sub_21CE5A634();
  sub_21CE6D030();
  swift_allocObject();
  swift_weakInit();
  sub_21CDE4158(&qword_27CE40F40, &qword_27CE40F30, &qword_21CE73E08);
  sub_21CE6CFE0();

  (*(v19 + 8))(v5, v2);
  v17(v9, 0, 1, v11);
  sub_21CE5706C(v9);
  return v1;
}

uint64_t sub_21CE579A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 0.0 || (v2 = *(a1 + 40), swift_beginAccess(), (Strong = swift_weakLoadStrong()) == 0))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    if (*(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) == 0.0)
    {
      *(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = 0;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
    goto LABEL_16;
  }

  v4 = Strong;
  swift_getKeyPath();
  sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
  sub_21CE6BB70();

  v5 = *(v4 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset);

  v6 = (v5 - v2) / v1;
  if (v6 <= 0.0)
  {
    v6 = 0.0;
  }

  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) == v7)
    {
      *(result + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = v7;
    }

    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
LABEL_16:
    sub_21CE6BB60();
  }

  return result;
}

uint64_t sub_21CE57C98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_21CE6D020();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21CE5706C(v4);
  sub_21CDE5494(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__token, &qword_27CE40F18, &qword_21CE73DD0);
  v6 = *(v0 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title + 8);

  v7 = OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState___observationRegistrar;
  v8 = sub_21CE6BB90();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

void sub_21CE57DFC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40EF0, &unk_21CE73D78) - 8) + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v27 - v6;
  if (v5)
  {
    v8 = [v5 navigationItem];
    if (v8)
    {
      v9 = v8;
      v30 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
      v10 = [v30 titleTextAttributes];
      type metadata accessor for Key(0);
      sub_21CE59380(&qword_27CE3FC58, type metadata accessor for Key);
      v11 = sub_21CE6CB60();

      v35 = v11;
      v12 = *(v11 + 16);
      v13 = *MEMORY[0x277D740C0];
      v14 = v13;
      if (v12 && (v15 = sub_21CE669F0(v13), (v16 & 1) != 0) && (sub_21CDE66C8(*(v11 + 56) + 32 * v15, &v33), v17 = sub_21CE59A40(), (swift_dynamicCast() & 1) != 0))
      {
        v29 = *&v32[0];
        swift_getKeyPath();
        v28 = v17;
        *&v33 = a2;
        sub_21CE59380(&qword_27CE40E98, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState);
        sub_21CE6BB70();

        v18 = *(a2 + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle);
        v19 = v29;
        v20 = [v29 colorWithAlphaComponent_];

        v34 = v28;
        *&v33 = v20;
        sub_21CDFA678(&v33, v32);
        v21 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v21;
        sub_21CE06BA8(v32, v14, isUniquelyReferenced_nonNull_native);

        v35 = v31;
      }

      else
      {
        sub_21CE599A0(v14, &v33);

        sub_21CDE5494(&v33, &qword_27CE40410, &qword_21CE71B10);
      }

      v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v24 = sub_21CE6CC20();
      v25 = sub_21CE6CB50();
      [v23 initWithString:v24 attributes:v25];

      sub_21CE6B8D0();
      v26 = sub_21CE6B8A0();
      (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
      sub_21CE6CF40();
    }
  }
}

uint64_t sub_21CE58224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v35 = a2;
  v36 = a4;
  v41 = a8;
  v12 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = a5;
  v44 = a6;
  v37 = MEMORY[0x277CDE888];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v38 = OpaqueTypeMetadata2;
  v39 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v34 - v19;
  a3 &= 1u;
  sub_21CE6C800();
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v21 = v12[5];
  *(v15 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC8, &qword_21CE73B98);
  swift_storeEnumTagMultiPayload();
  v22 = (v15 + v12[6]);
  v23 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  sub_21CE576D4();
  v42 = v26;
  sub_21CE6C9B0();
  v27 = v44;
  *v22 = v43;
  v22[1] = v27;
  v28 = v15 + v12[7];
  v29 = v35;
  v30 = v36;
  *v28 = a1;
  *(v28 + 1) = v29;
  v28[16] = a3;
  *(v28 + 3) = v30;
  *(v15 + v12[8]) = v40;
  sub_21CE037E4(a1, v29, a3);

  v43 = a5;
  v44 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v38;
  MEMORY[0x21CF1A890](v15, v38, v12, OpaqueTypeConformance2);
  sub_21CE5A6F8(v15, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  return (*(v39 + 8))(v20, v32);
}

uint64_t sub_21CE58500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21CE6C780();
  v12 = v11;
  v14 = v13;
  a6();
  sub_21CE037F4(v10, v12, v14 & 1);
}

uint64_t sub_21CE58648(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_21CE6B960();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10 = sub_21CE6C770();
  v12 = v11;
  v14 = v13;
  a4();
  sub_21CE037F4(v10, v12, v14 & 1);
}

uint64_t sub_21CE58778@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_21CDFAA5C(v2, &v16 - v11, &qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21CE3B624(v12, a1);
  }

  v14 = *v12;
  sub_21CE6CF20();
  v15 = sub_21CE6C580();
  sub_21CE6BD70();

  sub_21CE6C270();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CE58948@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC8, &qword_21CE73B98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_21CDFAA5C(v2, &v16 - v11, &qword_27CE40DC8, &qword_21CE73B98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v12, v4);
  }

  v14 = *v12;
  sub_21CE6CF20();
  v15 = sub_21CE6C580();
  sub_21CE6BD70();

  sub_21CE6C270();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CE58B28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_21CDFAA5C(v2, &v17 - v11, &qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CE6C570();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_21CE6CF20();
    v16 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_21CE58D74()
{
  sub_21CE58FF0(319, &qword_27CE40E08, MEMORY[0x277CC9D88], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21CE6BB90();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CE58EAC()
{
  sub_21CE58FF0(319, &qword_281213230, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21CE58FF0(319, &qword_27CE40E38, MEMORY[0x277CE0040], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21CE58FF0(319, &qword_27CE40E40, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier.ModifierState, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CE58FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21CE59070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE590D4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CE55D4C(a1, a2, v6);
}

unint64_t sub_21CE59154()
{
  result = qword_27CE40E88;
  if (!qword_27CE40E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40E88);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CE6C570();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC8, &qword_21CE73B98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CE6C280();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[v1[6]];
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = &v5[v1[7]];
  sub_21CE037F4(*v14, *(v14 + 1), v14[16]);
  v15 = *(v14 + 3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CE59380(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CE593C8()
{
  result = qword_27CE40EA0;
  if (!qword_27CE40EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E50, &qword_21CE73CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E78, &qword_21CE73CC8);
    sub_21CDE4158(&qword_27CE40E80, &qword_27CE40E78, &qword_21CE73CC8);
    sub_21CE59154();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40EA0);
  }

  return result;
}

unint64_t sub_21CE594E0()
{
  result = qword_27CE40EB8;
  if (!qword_27CE40EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EB0, &qword_21CE73D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EC0, &qword_21CE73D10);
    sub_21CDE4158(&qword_27CE40EC8, &qword_27CE40EC0, &qword_21CE73D10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40EB8);
  }

  return result;
}

uint64_t sub_21CE595D4(double *a1)
{
  v3 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CE567DC(a1, v4);
}

uint64_t sub_21CE5965C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21CE596D0()
{
  result = qword_27CE40ED0;
  if (!qword_27CE40ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E68, &qword_21CE73CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E58, &qword_21CE73CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EA8, &qword_21CE73D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E50, &qword_21CE73CA0);
    sub_21CE593C8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40EB0, &qword_21CE73D08);
    sub_21CE594E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CDE4158(&qword_27CE40ED8, &qword_27CE40EE0, &qword_21CE73D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40ED0);
  }

  return result;
}

uint64_t sub_21CE59870(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CE56CDC(a1, a2, v6);
}

void sub_21CE598F0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_21CE57DFC(a1, v1[2]);
}

double sub_21CE598FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21CE66850(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CE470C0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21CDFA678((*(v12 + 56) + 32 * v9), a3);
    sub_21CE59E08(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_21CE599A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_21CE669F0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CE473EC();
      v11 = v13;
    }

    sub_21CDFA678((*(v11 + 56) + 32 * v8), a2);
    sub_21CE59FB8(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_21CE59A40()
{
  result = qword_27CE40EF8;
  if (!qword_27CE40EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE40EF8);
  }

  return result;
}

unint64_t sub_21CE59A8C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v35 = (sub_21CE6D1D0() + 1) & ~v11;
    v36 = v13;
    v14 = *(v5 + 72);
    do
    {
      v15 = v14;
      v16 = v14 * v12;
      sub_21CE5A690(*(a2 + 48) + v14 * v12, v9, type metadata accessor for SettingsPaneRecipe);
      v17 = *(a2 + 40);
      sub_21CE6D4B0();
      v18 = *v9;
      v19 = v9[1];
      sub_21CE6CCA0();
      v20 = v9[2];
      v21 = v9[3];
      sub_21CE6CCA0();
      v22 = v9 + *(v4 + 24);
      sub_21CE6BA60();
      sub_21CE59380(&qword_2812132C0, MEMORY[0x277CC9260]);
      sub_21CE6CB80();
      v23 = &v22[*(type metadata accessor for NSBundle.PluginLocation(0) + 20)];
      v24 = *v23;
      v25 = *(v23 + 1);
      sub_21CE6CCA0();
      sub_21CDFAA5C(v9 + *(v4 + 28), &v39, qword_27CE40D00, &qword_21CE706F0);
      if (*(&v40 + 1))
      {
        v37[0] = v39;
        v37[1] = v40;
        v38 = v41;
        sub_21CE6D4D0();
        sub_21CE6D220();
        sub_21CE00770(v37);
      }

      else
      {
        sub_21CE6D4D0();
      }

      v26 = sub_21CE6D4E0();
      result = sub_21CE5A6F8(v9, type metadata accessor for SettingsPaneRecipe);
      v27 = v26 & v36;
      if (a1 >= v35)
      {
        v14 = v15;
        if (v27 < v35)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = v15;
        if (v27 >= v35)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v27)
      {
LABEL_13:
        v28 = *(a2 + 48);
        result = v28 + v14 * a1;
        if (v14 * a1 < v16 || result >= v28 + v16 + v14)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 * a1 != v16)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v29 = *(a2 + 56);
        v30 = (v29 + 8 * a1);
        v31 = (v29 + 8 * v12);
        if (a1 != v12 || v30 >= v31 + 1)
        {
          *v30 = *v31;
          a1 = v12;
        }
      }

LABEL_4:
      v12 = (v12 + 1) & v36;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CE59E08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CE6D1D0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_21CE6D4B0();

      sub_21CE6CCA0();
      v14 = sub_21CE6D4E0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21CE59FB8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CE6D1D0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_21CE6CC50();
      sub_21CE6D4B0();
      v12 = v11;
      sub_21CE6CCA0();
      v13 = sub_21CE6D4E0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_21CE5A180()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__title);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

double sub_21CE5A1CC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__topSafeAreaInset) = result;
  return result;
}

unint64_t sub_21CE5A1EC()
{
  result = qword_27CE40F10;
  if (!qword_27CE40F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40F08, &qword_21CE73DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F10);
  }

  return result;
}

double sub_21CE5A270()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV8Settings53SettingsFeatureDescriptionNavigationTitleViewModifier13ModifierState__opacityForTitle) = result;
  return result;
}

uint64_t sub_21CE5A288(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6D020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F20, &qword_21CE73E00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21CDFAA5C(a1, &v24 - v16, &qword_27CE40F18, &qword_21CE73DD0);
  sub_21CDFAA5C(a2, &v17[v18], &qword_27CE40F18, &qword_21CE73DD0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21CDFAA5C(v17, v12, &qword_27CE40F18, &qword_21CE73DD0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_21CE59380(&qword_27CE40F28, MEMORY[0x277CC9D88]);
      v21 = sub_21CE6CBA0();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_21CDE5494(v17, &qword_27CE40F18, &qword_21CE73DD0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21CDE5494(v17, &qword_27CE40F20, &qword_21CE73E00);
    v20 = 1;
    return v20 & 1;
  }

  sub_21CDE5494(v17, &qword_27CE40F18, &qword_21CE73DD0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21CE5A5A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F18, &qword_21CE73DD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE5A634()
{
  result = qword_27CE40F38;
  if (!qword_27CE40F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F38);
  }

  return result;
}

uint64_t sub_21CE5A690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CE5A6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CE5A788()
{
  v1 = sub_21CE6C280();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v8 = *(v0 + 24);
    sub_21CDED370(*(v0 + 16));
  }

  else
  {

    sub_21CE6CF20();
    v9 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();
    sub_21CE5BA9C(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11;
  }

  return v7;
}

uint64_t sub_21CE5A8EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C280();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SettingsFeatureDescriptionView();
  sub_21CE5C234(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CE6C570();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21CE6CF20();
    v16 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21CE5AB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  v18 = type metadata accessor for SettingsFeatureDescriptionView();
  v19 = v18[6];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v20 = v18[7];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  result = swift_storeEnumTagMultiPayload();
  v22 = a9 + v18[8];
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3 & 1;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
  *(v22 + 48) = a7 & 1;
  *(v22 + 56) = a8;
  *(v22 + 64) = a10;
  *(v22 + 72) = a11;
  *(v22 + 80) = a12;
  return result;
}

uint64_t sub_21CE5ACB0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char a3@<W6>, uint64_t a4@<X8>)
{
  sub_21CE6C370();
  v6 = sub_21CE6C750();
  v24 = v7;
  v25 = v6;
  v9 = v8;
  v11 = v10;
  sub_21CE6C370();
  v12 = sub_21CE6C750();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v19 = type metadata accessor for SettingsFeatureDescriptionView();
  v20 = v19[6];
  *(a4 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v21 = v19[7];
  *(a4 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  result = swift_storeEnumTagMultiPayload();
  v23 = a4 + v19[8];
  *v23 = v25;
  *(v23 + 8) = v24;
  *(v23 + 16) = v9 & 1;
  *(v23 + 24) = v11;
  *(v23 + 32) = v12;
  *(v23 + 40) = v14;
  *(v23 + 48) = v16 & 1;
  *(v23 + 56) = v18;
  *(v23 + 64) = a1;
  *(v23 + 72) = a2;
  *(v23 + 80) = a3;
  return result;
}

uint64_t sub_21CE5AE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v38 = a3;
  v39 = a4;
  v9 = sub_21CE6B960();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v10[2];
  v14(v13, a1, v9);
  v15 = sub_21CE6C770();
  v34 = v16;
  v35 = v15;
  v18 = v17;
  v36 = v19;
  v14(v13, a2, v9);
  v20 = sub_21CE6C770();
  v22 = v21;
  LOBYTE(v13) = v23;
  v33 = v24;
  v25 = v10[1];
  v25(a2, v9);
  v25(a1, v9);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  v26 = type metadata accessor for SettingsFeatureDescriptionView();
  v27 = v26[6];
  *(a6 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v28 = v26[7];
  *(a6 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  result = swift_storeEnumTagMultiPayload();
  v44 = v18 & 1;
  v42 = v13 & 1;
  v40 = v37;
  v30 = a6 + v26[8];
  *v30 = v35;
  *(v30 + 8) = v34;
  *(v30 + 16) = v18 & 1;
  *(v30 + 17) = *v43;
  *(v30 + 20) = *&v43[3];
  *(v30 + 24) = v36;
  *(v30 + 32) = v20;
  *(v30 + 40) = v22;
  *(v30 + 48) = v13 & 1;
  *(v30 + 49) = *v41;
  *(v30 + 52) = *&v41[3];
  v32 = v38;
  v31 = v39;
  *(v30 + 56) = v33;
  *(v30 + 64) = v32;
  *(v30 + 72) = v31;
  *(v30 + 80) = v40;
  return result;
}

uint64_t SettingsFeatureDescriptionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SettingsFeatureDescriptionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = v1 + *(MEMORY[0x28223BE20](v3 - 8) + 40);
  v7 = *(v6 + 32);
  v8 = *(v6 + 64);
  v25 = *(v6 + 48);
  v26 = v8;
  v27 = *(v6 + 80);
  v9 = *(v6 + 16);
  v22 = *v6;
  v23 = v9;
  v24 = v7;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v10 = a1 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView() + 20);
  v11 = v25;
  v12 = v26;
  *(v10 + 2) = v24;
  *(v10 + 3) = v11;
  *(v10 + 4) = v12;
  v10[80] = v27;
  v13 = v23;
  *v10 = v22;
  *(v10 + 1) = v13;
  KeyPath = swift_getKeyPath();
  sub_21CE5BA38(v1, &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_21CE5BAA8(&v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F48, &unk_21CE73F00) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F50, &qword_21CE74AB0) + 28);
  sub_21CE5BB10(&v22, v21);
  result = sub_21CE6C000();
  *v17 = KeyPath;
  return result;
}

uint64_t sub_21CE5B304(uint64_t a1)
{
  v2 = sub_21CE6C010();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C260();
}

void sub_21CE5B3CC(uint64_t a1)
{
  v2 = sub_21CE6C570();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CE5A788();
  if (v7)
  {
    v8 = v7;
    v7(a1);
    sub_21CE6BFF0();

    sub_21CDEEA58(v8);
    return;
  }

  v9 = sub_21CE6BA30();
  if (v10)
  {
    if (v9 == 0x74696B706C6568 && v10 == 0xE700000000000000)
    {

      goto LABEL_10;
    }

    v11 = sub_21CE6D400();

    if (v11)
    {
LABEL_10:
      v12 = sub_21CE6B9B0();
      v13 = [objc_opt_self() helpViewControllerWithURL_];

      if (v13)
      {
        [v13 setShowTopicViewOnLoad_];
        v14 = sub_21CE5A8EC(v6);
        MEMORY[0x28223BE20](v14);
        *(&v15 - 2) = v13;
        sub_21CE6C560();
        (*(v3 + 8))(v6, v2);
        sub_21CE6BFF0();

        return;
      }
    }
  }

  MEMORY[0x282130C20](a1);
}

void sub_21CE5B638(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v3 setModalPresentationStyle_];
  if (a1)
  {
    [a1 presentViewController:v3 animated:1 completion:0];
  }
}

uint64_t sub_21CE5B6C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = v2 + *(MEMORY[0x28223BE20](a1 - 8) + 40);
  v7 = *(v6 + 32);
  v8 = *(v6 + 64);
  v25 = *(v6 + 48);
  v26 = v8;
  v27 = *(v6 + 80);
  v9 = *(v6 + 16);
  v22 = *v6;
  v23 = v9;
  v24 = v7;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v10 = a2 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView() + 20);
  v11 = v25;
  v12 = v26;
  *(v10 + 2) = v24;
  *(v10 + 3) = v11;
  *(v10 + 4) = v12;
  v10[80] = v27;
  v13 = v23;
  *v10 = v22;
  *(v10 + 1) = v13;
  KeyPath = swift_getKeyPath();
  sub_21CE5BA38(v2, &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_21CE5BAA8(&v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F48, &unk_21CE73F00) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F50, &qword_21CE74AB0) + 28);
  sub_21CE5BB10(&v22, v21);
  result = sub_21CE6C000();
  *v17 = KeyPath;
  return result;
}

uint64_t sub_21CE5B8B8()
{
  sub_21CE5C2A4();
  sub_21CE6C2B0();
  return v1;
}

uint64_t View.onSettingsFeatureDescriptionOpenURL(perform:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_21CDED370(a1);
  sub_21CE6C7B0();

  return sub_21CDEEA58(a1);
}

uint64_t sub_21CE5B998(uint64_t *a1)
{
  v2 = a1[1];
  sub_21CDED370(*a1);
  sub_21CE5C2A4();
  return sub_21CE6C2C0();
}

uint64_t type metadata accessor for SettingsFeatureDescriptionView()
{
  result = qword_27CE40F58;
  if (!qword_27CE40F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE5BA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFeatureDescriptionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5BA9C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_21CDEEA58(result);
  }

  else
  {
  }
}

uint64_t sub_21CE5BAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFeatureDescriptionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21CE5BBB0()
{
  sub_21CE5BC9C();
  if (v0 <= 0x3F)
  {
    sub_21CE5BCEC(319, &qword_27CE40F70, &qword_27CE40F78, &unk_21CE73FB0);
    if (v1 <= 0x3F)
    {
      sub_21CE5BCEC(319, &qword_281213238, &qword_27CE40C28, &qword_21CE73360);
      if (v2 <= 0x3F)
      {
        sub_21CE5BD40();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CE5BC9C()
{
  if (!qword_27CE40F68)
  {
    v0 = sub_21CE6BF50();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE40F68);
    }
  }
}

void sub_21CE5BCEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CE6BF50();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21CE5BD40()
{
  if (!qword_281213230)
  {
    sub_21CE6C570();
    v0 = sub_21CE6BF50();
    if (!v1)
    {
      atomic_store(v0, &qword_281213230);
    }
  }
}

unint64_t sub_21CE5BD98()
{
  result = qword_27CE40F80;
  if (!qword_27CE40F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40F48, &unk_21CE73F00);
    sub_21CE5BE3C();
    sub_21CE5BF18(&qword_2812131B0, &qword_27CE40F50, &qword_21CE74AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F80);
  }

  return result;
}

unint64_t sub_21CE5BE3C()
{
  result = qword_27CE40F88;
  if (!qword_27CE40F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40F90, &qword_21CE73FC0);
    sub_21CE5BEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F88);
  }

  return result;
}

unint64_t sub_21CE5BEC0()
{
  result = qword_27CE40F98;
  if (!qword_27CE40F98)
  {
    type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40F98);
  }

  return result;
}

uint64_t sub_21CE5BF18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for SettingsFeatureDescriptionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_21CE54C34(*(v0 + v4), *(v0 + v4 + 8));
  sub_21CE5BA9C(*(v5 + 16), *(v5 + 24), *(v5 + 32));
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CE6C4A0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
    v9 = *(v5 + v6);
  }

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CE6C570();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v5 + v1[8];
  sub_21CE037F4(*v13, *(v13 + 8), *(v13 + 16));
  v14 = *(v13 + 24);

  sub_21CE037F4(*(v13 + 32), *(v13 + 40), *(v13 + 48));
  v15 = *(v13 + 56);

  v16 = *(v13 + 64);
  v17 = *(v13 + 72);
  v18 = *(v13 + 80);
  sub_21CDEFF7C();

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

void sub_21CE5C1B8(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsFeatureDescriptionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_21CE5B3CC(a1);
}

uint64_t sub_21CE5C234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE5C2A4()
{
  result = qword_27CE40FB0;
  if (!qword_27CE40FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FB0);
  }

  return result;
}

uint64_t sub_21CE5C314@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41018, &qword_21CE74308);
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v28 - v3;
  v4 = sub_21CE6C280();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40FF8, &qword_21CE742F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v20 = sub_21CE6CC20();
  if (v18)
  {
    [v19 initWithType_];

    v35 = *(v1 + 8);
    v21 = *v1;
    v34 = v21;
    if (v35 == 1)
    {
      v22 = v21;
    }

    else
    {

      sub_21CE6CF20();
      v25 = sub_21CE6C580();
      sub_21CE6BD70();

      sub_21CE6C270();
      swift_getAtKeyPath();
      sub_21CDE5494(&v34, &qword_27CE41020, &qword_21CE74310);
      (*(v28 + 8))(v7, v29);
      v22 = v33;
    }

    [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v22}];
    sub_21CE6BD10();
    v15 = v13;
  }

  else
  {
    [v19 initWithBundleIdentifier_];

    v35 = *(v1 + 8);
    v23 = *v1;
    v34 = v23;
    if (v35 == 1)
    {
      v24 = v23;
    }

    else
    {

      sub_21CE6CF20();
      v26 = sub_21CE6C580();
      sub_21CE6BD70();

      sub_21CE6C270();
      swift_getAtKeyPath();
      sub_21CDE5494(&v34, &qword_27CE41020, &qword_21CE74310);
      (*(v28 + 8))(v7, v29);
      v24 = v33;
    }

    [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v24}];
    sub_21CE6BD10();
  }

  (*(v9 + 16))(v31, v15, v8);
  swift_storeEnumTagMultiPayload();
  sub_21CDE4158(&qword_27CE40FF0, &qword_27CE40FF8, &qword_21CE742F0);
  sub_21CE6C400();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_21CE5C7C0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_21CE6C280();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 24);
  v10 = *(a1 + 16);
  v13 = v10;
  if (v14 != 1)
  {

    sub_21CE6CF20();
    v11 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();
    sub_21CDE5494(&v13, &qword_27CE41010, &qword_21CE74300);
    result = (*(v5 + 8))(v9, v4);
    LOBYTE(v10) = v12[15];
  }

  *a2 = (v10 & 1) == 0;
  return result;
}

uint64_t sub_21CE5C938()
{
  sub_21CE5D360();
  sub_21CE6C2B0();
  return v1;
}

uint64_t sub_21CE5C974@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE5D360();
  result = sub_21CE6C2B0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CE5C9C4(char *a1)
{
  v2 = *a1;
  sub_21CE5D360();
  return sub_21CE6C2C0();
}

uint64_t sub_21CE5CA10@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40FD0, &qword_21CE742E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v10;
  v19[2] = *(v1 + 32);
  v20 = *(v1 + 48);
  sub_21CE5C314(&v17[-v8]);
  v11 = sub_21CE6CAC0();
  v13 = v12;
  sub_21CE5C7C0(v19, &v18);
  v14 = &v9[*(v3 + 36)];
  *v14 = v18;
  *(v14 + 1) = v11;
  *(v14 + 2) = v13;
  if (qword_27CE3F9F0 != -1)
  {
    swift_once();
  }

  sub_21CDFAA5C(v9, v7, &qword_27CE40FD0, &qword_21CE742E0);
  sub_21CE5D48C();
  v15 = sub_21CE6CA40();
  result = sub_21CDE5494(v9, &qword_27CE40FD0, &qword_21CE742E0);
  *a1 = v15;
  return result;
}

uint64_t sub_21CE5CB90@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41030, &qword_21CE743E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41038, &qword_21CE743E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41040, &qword_21CE743F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41048, &qword_21CE743F8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41050, &qword_21CE74400);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v36[0] = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v36 - v21;
  v23 = sub_21CE6B900();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  sub_21CE5D620();
  v25 = sub_21CE6D100();
  if (!v25)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = v25;
  v27 = sub_21CE6B8E0();
  v29 = v28;

  v36[2] = v27;
  v36[3] = v29;
  sub_21CE1570C();
  sub_21CE6D180();

  sub_21CE6B8F0();
  sub_21CE6B8B0();
  sub_21CE6C6A0();
  v30 = sub_21CE6C6B0();
  (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
  sub_21CE6C6C0();
  v31 = sub_21CE6C6D0();
  (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
  sub_21CE6C6E0();
  v32 = sub_21CE6C6F0();
  (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
  v33 = sub_21CE6C690();
  (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
  sub_21CE6C920();
  sub_21CE6C700();
  v34 = sub_21CE6C710();
  (*(*(v34 - 8) + 56))(v22, 0, 1, v34);
  sub_21CDFAA5C(v22, v36[0], &qword_27CE41050, &qword_21CE74400);
  sub_21CE5D66C();
  sub_21CE6B8C0();
  return sub_21CDE5494(v22, &qword_27CE41050, &qword_21CE74400);
}

double sub_21CE5D084@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41028, &qword_21CE74378);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_21CE6B8A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21CE5CB90(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_21CE6C760();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21CE6CAD0();
  sub_21CE6BFA0();
  v15 = v12 & 1;
  v30 = v12 & 1;
  sub_21CE6C610();
  v16 = *MEMORY[0x277CE09A0];
  v17 = sub_21CE6C5F0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v5, v16, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  v19 = sub_21CE6C620();
  sub_21CDE5494(v5, &qword_27CE41028, &qword_21CE74378);
  KeyPath = swift_getKeyPath();
  v21 = sub_21CE6C940();
  v22 = swift_getKeyPath();
  LOBYTE(v16) = sub_21CE6C590();
  sub_21CE6BF20();
  *a1 = v29;
  *(a1 + 8) = v10;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  v23 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v23;
  *(a1 + 64) = v33;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v19;
  *(a1 + 96) = v22;
  *(a1 + 104) = v21;
  *(a1 + 112) = v16;
  *(a1 + 120) = v24;
  *(a1 + 128) = v25;
  *(a1 + 136) = v26;
  *(a1 + 144) = v27;
  *(a1 + 152) = 0;
  result = 17.0;
  *(a1 + 160) = xmmword_21CE74090;
  return result;
}

uint64_t View.settingsFeatureDescriptionShowOverlayBetaBadge(_:)()
{
  swift_getKeyPath();
  sub_21CE6C7B0();
}

unint64_t sub_21CE5D360()
{
  result = qword_27CE40FC8;
  if (!qword_27CE40FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FC8);
  }

  return result;
}

uint64_t sub_21CE5D3C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
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

uint64_t sub_21CE5D40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_21CE5D48C()
{
  result = qword_27CE40FD8;
  if (!qword_27CE40FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FD0, &qword_21CE742E0);
    sub_21CE5D544();
    sub_21CDE4158(&qword_27CE41000, &qword_27CE41008, &qword_21CE742F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FD8);
  }

  return result;
}

unint64_t sub_21CE5D544()
{
  result = qword_27CE40FE0;
  if (!qword_27CE40FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FE8, &qword_21CE742E8);
    sub_21CDE4158(&qword_27CE40FF0, &qword_27CE40FF8, &qword_21CE742F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40FE0);
  }

  return result;
}

unint64_t sub_21CE5D620()
{
  result = qword_27CE41058;
  if (!qword_27CE41058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE41058);
  }

  return result;
}

unint64_t sub_21CE5D66C()
{
  result = qword_27CE41060;
  if (!qword_27CE41060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41060);
  }

  return result;
}

unint64_t sub_21CE5D6C0()
{
  result = qword_27CE41068;
  if (!qword_27CE41068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41070, &qword_21CE74408);
    sub_21CE5D74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41068);
  }

  return result;
}

unint64_t sub_21CE5D74C()
{
  result = qword_27CE41078;
  if (!qword_27CE41078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41080, &qword_21CE74410);
    sub_21CE5D7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41078);
  }

  return result;
}

unint64_t sub_21CE5D7D8()
{
  result = qword_27CE41088;
  if (!qword_27CE41088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41090, &qword_21CE74418);
    sub_21CE5D890();
    sub_21CDE4158(&qword_27CE410C8, &qword_27CE410D0, &qword_21CE74438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41088);
  }

  return result;
}

unint64_t sub_21CE5D890()
{
  result = qword_27CE41098;
  if (!qword_27CE41098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE410A0, &qword_21CE74420);
    sub_21CE5D948();
    sub_21CDE4158(&qword_27CE410B8, &qword_27CE410C0, &qword_21CE74430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41098);
  }

  return result;
}

unint64_t sub_21CE5D948()
{
  result = qword_27CE410A8;
  if (!qword_27CE410A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE410B0, &qword_21CE74428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE410A8);
  }

  return result;
}

uint64_t sub_21CE5D9D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE5DA1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21CE5DA90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE5DAD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CE5DB58@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v52 = sub_21CE6C3B0();
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE410F8, &qword_21CE746A8);
  v6 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v48 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41100, &qword_21CE746B0);
  v54 = *(v55 - 8);
  v8 = *(v54 + 64);
  v9 = MEMORY[0x28223BE20](v55);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v48 - v11;
  v12 = *(v1 + 56);
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  v15 = *(v2 + 80);
  sub_21CE6C630();
  v16 = sub_21CE6C740();
  v18 = v17;
  LOBYTE(v14) = v19;

  sub_21CE6C600();
  v20 = sub_21CE6C680();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_21CE037F4(v16, v18, v14 & 1);
  v27 = v48;

  v57 = v20;
  v58 = v22;
  v24 &= 1u;
  LOBYTE(v59) = v24;
  v60 = v26;
  sub_21CE6C3A0();
  v28 = v49;
  sub_21CE6C830();
  (*(v50 + 8))(v5, v52);
  sub_21CE037F4(v20, v22, v24);

  v29 = swift_allocObject();
  v30 = *(v2 + 48);
  *(v29 + 48) = *(v2 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(v2 + 64);
  *(v29 + 96) = *(v2 + 80);
  v31 = *(v2 + 16);
  *(v29 + 16) = *v2;
  *(v29 + 32) = v31;
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41108, &qword_21CE746B8) + 36));
  *v32 = sub_21CE5E128;
  v32[1] = 0;
  v32[2] = sub_21CE5EA94;
  v32[3] = v29;
  v33 = swift_allocObject();
  v34 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v34;
  *(v33 + 80) = *(v2 + 64);
  *(v33 + 96) = *(v2 + 80);
  v35 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v35;
  v36 = v27;
  v37 = (v28 + *(v27 + 36));
  *v37 = sub_21CE5E2C8;
  v37[1] = 0;
  v37[2] = sub_21CE5EAFC;
  v37[3] = v33;
  v38 = *(v2 + 16);
  v61 = *v2;
  v62 = v38;
  v63 = *(v2 + 32);
  v64 = *(v2 + 48);
  sub_21CE549B8(v2, &v57);
  sub_21CE549B8(v2, &v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41110, &qword_21CE746C0);
  sub_21CE6C9C0();
  v39 = v57;
  v40 = v58;
  LOBYTE(v22) = v59;
  v41 = sub_21CE5EB34(&qword_27CE41118, &qword_27CE410F8, &qword_21CE746A8, sub_21CE5EB04);
  v42 = sub_21CE5EBE4();
  v43 = v51;
  sub_21CE6C8D0();
  sub_21CE037F4(v39, v40, v22);

  sub_21CDE5494(v28, &qword_27CE410F8, &qword_21CE746A8);
  if (qword_27CE3F9F0 != -1)
  {
    swift_once();
  }

  v44 = v54;
  v45 = v55;
  (*(v54 + 16))(v53, v43, v55);
  v57 = v36;
  v58 = &_s15TitleLayoutInfoVN;
  v59 = v41;
  v60 = v42;
  swift_getOpaqueTypeConformance2();
  v46 = sub_21CE6CA40();
  result = (*(v44 + 8))(v43, v45);
  *v56 = v46;
  return result;
}

uint64_t sub_21CE5E128@<X0>(void *a1@<X8>)
{
  result = sub_21CE6BFC0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CE5E154(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a2 + 6);
  v20 = *a2;
  v21 = *(a2 + 16);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v18 = v4;
  v19 = v6;
  v13 = *a2;
  v14 = v5;
  v15 = v6;
  v16 = a2[2];
  v17 = v4;
  sub_21CE5EC38(&v20, &v8);
  sub_21CDFAA5C(&v19, &v8, &qword_27CE41140, &qword_21CE746D0);
  sub_21CDFAA5C(&v18, &v8, &qword_27CE41148, qword_21CE746D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41110, &qword_21CE746C0);
  sub_21CE6C9C0();
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = v6;
  v11 = a2[2];
  v12 = v4;
  sub_21CE6C9D0();
  sub_21CE5EC94(&v20);
  sub_21CDE5494(&v19, &qword_27CE41140, &qword_21CE746D0);
  return sub_21CDE5494(&v18, &qword_27CE41148, qword_21CE746D8);
}

void sub_21CE5E2C8(CGFloat *a1@<X8>)
{
  v2 = sub_21CE6C430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6C4B0();
  sub_21CE6BFD0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  *a1 = CGRectGetMinY(v16);
}

uint64_t sub_21CE5E3E4(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a2 + 6);
  v20 = *a2;
  v21 = *(a2 + 16);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v18 = v4;
  v19 = v6;
  v13 = *a2;
  v14 = v5;
  v15 = v6;
  v16 = a2[2];
  v17 = v4;
  sub_21CE5EC38(&v20, &v8);
  sub_21CDFAA5C(&v19, &v8, &qword_27CE41140, &qword_21CE746D0);
  sub_21CDFAA5C(&v18, &v8, &qword_27CE41148, qword_21CE746D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41110, &qword_21CE746C0);
  sub_21CE6C9C0();
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = v6;
  v11 = a2[2];
  v12 = v4;
  sub_21CE6C9D0();
  sub_21CE5EC94(&v20);
  sub_21CDE5494(&v19, &qword_27CE41140, &qword_21CE746D0);
  return sub_21CDE5494(&v18, &qword_27CE41148, qword_21CE746D8);
}

uint64_t sub_21CE5E558(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = objc_opt_self();
  sub_21CE037E4(v2, v3, v4);

  v9 = [v8 defaultCenter];
  sub_21CE5A634();
  sub_21CE6D040();

  sub_21CE037F4(v2, v3, v4);
}

uint64_t sub_21CE5E62C@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_21CE5DB58(a1);
}

uint64_t sub_21CE5E694@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v1 = sub_21CE6C3B0();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE410D8, &qword_21CE74698);
  v5 = *(*(v28 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v28);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  sub_21CE6C5D0();
  v10 = sub_21CE6C740();
  v12 = v11;
  v14 = v13;

  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE410E0, &qword_21CE746A0);
  sub_21CDE4158(&qword_27CE410E8, &qword_27CE410E0, &qword_21CE746A0);
  v15 = sub_21CE6C720();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_21CE037F4(v10, v12, v14 & 1);

  v30 = v15;
  v31 = v17;
  v19 &= 1u;
  v32 = v19;
  v33 = v21;
  sub_21CE6C3A0();
  sub_21CE6C830();
  (*(v25 + 8))(v4, v26);
  sub_21CE037F4(v15, v17, v19);

  if (qword_27CE3F9F0 != -1)
  {
    swift_once();
  }

  sub_21CDFAA5C(v9, v27, &qword_27CE410D8, &qword_21CE74698);
  sub_21CE5E9B0();
  v22 = sub_21CE6CA40();
  result = sub_21CDE5494(v9, &qword_27CE410D8, &qword_21CE74698);
  *v29 = v22;
  return result;
}

uint64_t sub_21CE5E998@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  return sub_21CE5E694(a1);
}

unint64_t sub_21CE5E9B0()
{
  result = qword_27CE410F0;
  if (!qword_27CE410F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE410D8, &qword_21CE74698);
    sub_21CE5EA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE410F0);
  }

  return result;
}

unint64_t sub_21CE5EA3C()
{
  result = qword_2812131A0;
  if (!qword_2812131A0)
  {
    sub_21CE6C550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131A0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  sub_21CE037F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  sub_21CE037F4(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  v3 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21CE5EB34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21CDE4158(&qword_27CE41128, &qword_27CE41130, &qword_21CE746C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CE5EBE4()
{
  result = qword_27CE41138;
  if (!qword_27CE41138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41138);
  }

  return result;
}

uint64_t sub_21CE5ECF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE5ED40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_21CE5ED9C(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 16);
  v11 = *(a2 + 3);
  v13 = a2[4];
  v12 = a2[5];
  v14 = sub_21CE6C730();
  result = 0;
  if ((v14 & 1) != 0 && v7 == v13)
  {
    return v6 == v12;
  }

  return result;
}

uint64_t sub_21CE5EE24()
{
  v0 = sub_21CE6C900();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_21CE6C950();
  qword_27CE41150 = result;
  return result;
}

uint64_t SettingsButtonPlacardView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41160, &qword_21CE74828);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820);
  sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828);
  return sub_21CE6C040();
}

uint64_t sub_21CE5F028(uint64_t a1)
{
  v2 = type metadata accessor for SettingsButtonPlacardView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28));
  v6 = v5[1];
  v10[0] = *v5;
  v10[1] = v6;
  sub_21CE5FB8C(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21CE5F508(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_21CE1570C();

  return sub_21CE6CA00();
}

uint64_t SettingsButtonPlacardView.init(title:subtitle:buttonTitle:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a6;
  v38 = a8;
  v34 = a5;
  v35 = a7;
  v36 = a4;
  v39 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41170, &qword_21CE74830);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v34 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = type metadata accessor for SettingsButtonPlacardView();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  SettingsPlacardView<>.init(title:subtitle:)(a1, a2, a3, v36, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_21CE5F430(v15);
    v26 = 1;
    v27 = v39;
  }

  else
  {
    sub_21CE5F498(v15, v20);
    sub_21CE5F498(v20, v25);
    v28 = &v25[*(v21 + 20)];
    v29 = v37;
    *v28 = v34;
    *(v28 + 1) = v29;
    v30 = &v25[*(v21 + 24)];
    v31 = v38;
    v32 = v39;
    *v30 = v35;
    *(v30 + 1) = v31;
    sub_21CE5F508(v25, v32);
    v26 = 0;
    v27 = v32;
  }

  return (*(v22 + 56))(v27, v26, 1, v21);
}

uint64_t type metadata accessor for SettingsButtonPlacardView()
{
  result = qword_27CE41178;
  if (!qword_27CE41178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE5F430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41170, &qword_21CE74830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CE5F498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5F508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsButtonPlacardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SettingsButtonPlacardView.init(title:subtitle:iconUTType:buttonTitle:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 2) = a5;
  *(v18 + 3) = a6;
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v20 = v19[9];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v21 = (a9 + v19[15]);
  *v21 = 0x74696B706C6568;
  v21[1] = 0xE700000000000000;
  v22 = (a9 + v19[16]);

  sub_21CE6C9B0();
  *v22 = v34;
  v22[1] = v35;
  v23 = (a9 + v19[17]);
  sub_21CE6C9B0();
  *v23 = v34;
  v23[1] = v35;
  v24 = (a9 + v19[10]);
  *v24 = sub_21CE5F8A0;
  v24[1] = v18;
  v25 = (a9 + v19[11]);
  *v25 = a1;
  v25[1] = a2;
  v26 = (a9 + v19[12]);
  *v26 = a3;
  v26[1] = a4;
  v27 = (a9 + v19[14]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a9 + v19[13]);
  result = type metadata accessor for SettingsButtonPlacardView();
  *v28 = 0;
  v28[1] = 0;
  v30 = (a9 + *(result + 20));
  *v30 = a7;
  v30[1] = a8;
  v31 = (a9 + *(result + 24));
  *v31 = a10;
  v31[1] = a11;
  return result;
}

uint64_t sub_21CE5F77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41160, &qword_21CE74828);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820);
  sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828);
  return sub_21CE6C040();
}

uint64_t sub_21CE5F8A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_21CE62AC0(a1);
}

void sub_21CE5F8F0()
{
  sub_21CE5F97C();
  if (v0 <= 0x3F)
  {
    sub_21CE00D24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CE5F97C()
{
  if (!qword_27CE41188)
  {
    type metadata accessor for SettingsIconView();
    sub_21CE5F9E0();
    v0 = type metadata accessor for SettingsPlacardView();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE41188);
    }
  }
}

unint64_t sub_21CE5F9E0()
{
  result = qword_27CE41190;
  if (!qword_27CE41190)
  {
    type metadata accessor for SettingsIconView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41190);
  }

  return result;
}

unint64_t sub_21CE5FA38()
{
  result = qword_27CE41198;
  if (!qword_27CE41198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411A0, &qword_21CE74930);
    sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820);
    sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41198);
  }

  return result;
}

uint64_t sub_21CE5FB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5FB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsButtonPlacardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE5FBF0()
{
  v1 = type metadata accessor for SettingsButtonPlacardView();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_21CE5FC64(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_21CE6CB10();
}

uint64_t SettingsPlacardView<>.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_21CE62C18();
  if (v10)
  {
    v11 = v10;
    if (!a2)
    {
      v12 = [v10 localizedName];
      a1 = sub_21CE6CC50();
      a2 = v13;
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *a5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
    v16 = v15[9];
    *(a5 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
    swift_storeEnumTagMultiPayload();
    v17 = (a5 + v15[15]);
    *v17 = 0x74696B706C6568;
    v17[1] = 0xE700000000000000;
    v18 = (a5 + v15[16]);
    v19 = v11;
    sub_21CE6C9B0();
    v20 = v43;
    *v18 = v42;
    v18[1] = v20;
    v21 = (a5 + v15[17]);
    sub_21CE6C9B0();

    v22 = v43;
    *v21 = v42;
    v21[1] = v22;
    v23 = (a5 + v15[10]);
    *v23 = sub_21CE62E98;
    v23[1] = v14;
    v24 = (a5 + v15[11]);
    *v24 = a1;
    v24[1] = a2;
    v25 = (a5 + v15[12]);
    *v25 = a3;
    v25[1] = a4;
    v26 = (a5 + v15[14]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (a5 + v15[13]);
    *v27 = 0;
    v27[1] = 0;
    return (*(*(v15 - 1) + 56))(a5, 0, 1, v15);
  }

  else
  {

    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v29 = sub_21CE6BDA0();
    __swift_project_value_buffer(v29, qword_27CE412C0);
    v30 = sub_21CE6BD80();
    v31 = sub_21CE6CF10();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136446978;
      v34 = sub_21CE6D2B0();
      v36 = sub_21CDF2CC8(v34, v35, &v42);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 178;
      *(v32 + 22) = 2082;
      v37 = sub_21CE6D2B0();
      v39 = sub_21CDF2CC8(v37, v38, &v42);

      *(v32 + 24) = v39;
      *(v32 + 32) = 2082;
      *(v32 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v42);
      _os_log_impl(&dword_21CDE1000, v30, v31, "%{public}s:%ld %{public}s %{public}s", v32, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v33, -1, -1);
      MEMORY[0x21CF1BD50](v32, -1, -1);
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
    v41 = *(*(v40 - 8) + 56);

    return v41(a5, 1, 1, v40);
  }
}

double SettingsPlacardView<>.init(title:subtitle:iconUTType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = a6;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v16 = v15[9];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v17 = (a7 + v15[15]);
  *v17 = 0x74696B706C6568;
  v17[1] = 0xE700000000000000;
  v18 = (a7 + v15[16]);

  sub_21CE6C9B0();
  *v18 = v26;
  *(v18 + 1) = v27;
  v19 = (a7 + v15[17]);
  sub_21CE6C9B0();
  result = v26;
  *v19 = v26;
  *(v19 + 1) = v27;
  v21 = (a7 + v15[10]);
  *v21 = sub_21CE5F8A0;
  v21[1] = v14;
  v22 = (a7 + v15[11]);
  *v22 = a1;
  v22[1] = a2;
  v23 = (a7 + v15[12]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a7 + v15[14]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a7 + v15[13]);
  *v25 = 0;
  v25[1] = 0;
  return result;
}

uint64_t sub_21CE604A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CE6C280();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_21CE5C234(v2 + *(a1 + 36), &v18 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CE6C570();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_21CE6CF20();
    v17 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

double sub_21CE6068C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411E8, &qword_21CE74AC0);
  sub_21CE6C9C0();
  return v4;
}

uint64_t sub_21CE606EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411E8, &qword_21CE74AC0);
  return sub_21CE6C9D0();
}

double sub_21CE6078C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411E8, &qword_21CE74AC0);
  sub_21CE6C9C0();
  return v4;
}

uint64_t sub_21CE607EC(uint64_t a1)
{
  v3 = (v1 + *(a1 + 68));
  v9 = *v3;
  v10 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411E8, &qword_21CE74AC0);
  sub_21CE6C9D0();
  result = a1;
  v5 = v1 + *(a1 + 56);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);
    v8 = sub_21CE6078C(result);
    return v6(v8);
  }

  return result;
}

uint64_t SettingsPlacardView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = *(a1 + 16);
  sub_21CE6C0D0();
  v3 = sub_21CE6C0D0();
  v31 = *(a1 + 24);
  v4 = MEMORY[0x277CDF918];
  v49 = v31;
  v50 = MEMORY[0x277CDF918];
  v34 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v48 = v4;
  v5 = swift_getWitnessTable();
  v43 = v3;
  v44 = MEMORY[0x277D839F8];
  v45 = v5;
  v46 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411A8, &qword_21CE749A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411B0, &unk_21CE749B0);
  swift_getTupleTypeMetadata3();
  sub_21CE6CB00();
  v29[1] = swift_getWitnessTable();
  v6 = sub_21CE6CA30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40058, &qword_21CE70E60);
  v11 = sub_21CE6C0D0();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  v15 = sub_21CE6C0D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v29 - v21;
  v36 = v32;
  v37 = v31;
  v38 = v33;
  sub_21CE6C3D0();
  sub_21CE6CA20();
  v23 = swift_getWitnessTable();
  sub_21CE6C840();
  (*(v7 + 8))(v10, v6);
  sub_21CE6CAD0();
  v24 = sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60);
  v41 = v23;
  v42 = v24;
  v28 = swift_getWitnessTable();
  sub_21CE6C870();
  (*(v30 + 8))(v14, v11);
  v39 = v28;
  v40 = MEMORY[0x277CDFC60];
  v25 = swift_getWitnessTable();
  sub_21CE328C8(v20, v15, v25);
  v26 = *(v16 + 8);
  v26(v20, v15);
  sub_21CE328C8(v22, v15, v25);
  return (v26)(v22, v15);
}

uint64_t sub_21CE60DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v160 = a1;
  v157 = a4;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411C0, &qword_21CE74A68);
  v6 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v154 = &v142 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411B0, &unk_21CE749B0);
  v155 = *(v8 - 8);
  v156 = v8;
  v9 = *(v155 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v176 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v175 = &v142 - v12;
  v13 = sub_21CE6C3B0();
  v150 = *(v13 - 8);
  v151 = v13;
  v14 = *(v150 + 64);
  MEMORY[0x28223BE20](v13);
  v148 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21CE6C640();
  v144 = *(v16 - 8);
  v145 = v16;
  v17 = *(v144 + 64);
  MEMORY[0x28223BE20](v16);
  v143 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411C8, &qword_21CE74A70);
  v19 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v147 = &v142 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411A8, &qword_21CE749A8);
  v152 = *(v21 - 8);
  v153 = v21;
  v22 = *(v152 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v172 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v171 = &v142 - v25;
  v26 = type metadata accessor for SettingsPlacardView();
  v181 = *(v26 - 8);
  v180 = *(v181 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v177 = &v142 - v28;
  v167 = *(a2 - 8);
  v29 = *(v167 + 8);
  MEMORY[0x28223BE20](v27);
  v31 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21CE6C0D0();
  v166 = *(v32 - 8);
  v33 = *(v166 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v142 - v34;
  v36 = sub_21CE6C0D0();
  v149 = *(v36 - 8);
  v37 = *(v149 + 64);
  MEMORY[0x28223BE20](v36);
  v158 = &v142 - v38;
  v39 = MEMORY[0x277CDF918];
  v196 = a3;
  v197 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v194 = WitnessTable;
  v195 = v39;
  OpaqueTypeConformance2 = v36;
  v142 = swift_getWitnessTable();
  *&v198 = v36;
  *(&v198 + 1) = MEMORY[0x277D839F8];
  v40 = MEMORY[0x277D839F8];
  *&v199 = v142;
  *(&v199 + 1) = MEMORY[0x277D83A28];
  v170 = MEMORY[0x277CE0D48];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  v168 = OpaqueTypeMetadata2;
  v169 = v42;
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v178 = &v142 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v179 = &v142 - v47;
  v48 = v26;
  v49 = *(v26 + 40);
  v50 = v160;
  v51 = v160 + v49;
  v52 = *(v51 + 8);
  (*v51)(v46);
  sub_21CE6C5A0();
  v164 = a3;
  sub_21CE6C880();
  v53 = *(v167 + 1);
  v163 = a2;
  v53(v31, a2);
  sub_21CE6C5B0();
  sub_21CE6C880();
  (*(v166 + 8))(v35, v32);
  v54 = v181;
  v55 = *(v181 + 16);
  v166 = v181 + 16;
  v167 = v55;
  v56 = v177;
  v55(v177, v50, v48);
  WitnessTable = *(v54 + 80);
  v57 = (WitnessTable + 32) & ~WitnessTable;
  v161 = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = a2;
  *(v58 + 24) = a3;
  v59 = *(v54 + 32);
  v181 = v54 + 32;
  v162 = v59;
  v159 = v48;
  v59(v58 + v57, v56, v48);
  v60 = MEMORY[0x277D83A28];
  v61 = v178;
  v62 = OpaqueTypeConformance2;
  v63 = v142;
  v64 = v158;
  sub_21CE6C810();

  (*(v149 + 8))(v64, v62);
  *&v198 = v62;
  *(&v198 + 1) = v40;
  *&v199 = v63;
  *(&v199 + 1) = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v168;
  sub_21CE328C8(v61, v168, OpaqueTypeConformance2);
  v66 = *(v169 + 8);
  v149 = v169 + 8;
  v158 = v66;
  (v66)(v61, v65);
  v67 = (v50 + *(v48 + 44));
  v68 = v67[1];
  *&v198 = *v67;
  *(&v198 + 1) = v68;
  sub_21CE1570C();

  v69 = sub_21CE6C780();
  v71 = v70;
  LOBYTE(v60) = v72;
  sub_21CE6C630();
  v74 = v143;
  v73 = v144;
  v75 = v145;
  (*(v144 + 104))(v143, *MEMORY[0x277CE0A08], v145);
  sub_21CE6C650();

  (*(v73 + 8))(v74, v75);
  sub_21CE6C5E0();

  v76 = sub_21CE6C740();
  v78 = v77;
  LOBYTE(v73) = v79;
  v81 = v80;

  sub_21CE037F4(v69, v71, v60 & 1);

  LOBYTE(v68) = sub_21CE6C5B0();
  sub_21CE6BF20();
  LOBYTE(v189[0]) = v73 & 1;
  LOBYTE(v188[0]) = 0;
  *&v190 = v76;
  *(&v190 + 1) = v78;
  LOBYTE(v191) = v73 & 1;
  *(&v191 + 1) = v81;
  LOBYTE(v192) = v68;
  *(&v192 + 1) = v82;
  *&v193[0] = v83;
  *(&v193[0] + 1) = v84;
  *&v193[1] = v85;
  BYTE8(v193[1]) = 0;
  v86 = v148;
  sub_21CE6C3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411D0, &qword_21CE74A78);
  sub_21CE631C4();
  v87 = v147;
  sub_21CE6C830();
  (*(v150 + 8))(v86, v151);
  v200 = v192;
  v201[0] = v193[0];
  *(v201 + 9) = *(v193 + 9);
  v198 = v190;
  v199 = v191;
  sub_21CDE5494(&v198, &qword_27CE411D0, &qword_21CE74A78);
  v88 = v177;
  v90 = v159;
  v89 = v160;
  v167(v177, v160, v159);
  v91 = v161;
  v92 = swift_allocObject();
  v93 = v164;
  *(v92 + 16) = v163;
  *(v92 + 24) = v93;
  v162(v92 + v91, v88, v90);
  v151 = sub_21CE632B0();
  sub_21CE6C810();

  sub_21CDE5494(v87, &qword_27CE411C8, &qword_21CE74A70);
  v94 = (v89 + *(v90 + 48));
  v95 = v89;
  v96 = *v94;
  v97 = v94[1];

  sub_21CE6C370();
  v98 = sub_21CE6C750();
  v100 = v99;
  LOBYTE(v78) = v101;
  sub_21CE6C5C0();
  v150 = sub_21CE6C740();
  v147 = v103;
  v148 = v102;
  LOBYTE(v89) = v104;

  sub_21CE037F4(v98, v100, v78 & 1);

  LODWORD(v145) = sub_21CE6C5B0();
  sub_21CE6BF20();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  LOBYTE(v78) = v89 & 1;
  LOBYTE(v190) = v89 & 1;
  LOBYTE(v189[0]) = 0;
  KeyPath = swift_getKeyPath();
  v114 = v177;
  v115 = v159;
  v167(v177, v95, v159);
  v116 = v161;
  v117 = swift_allocObject();
  v119 = v163;
  v118 = v164;
  *(v117 + 16) = v163;
  *(v117 + 24) = v118;
  v162(v117 + v116, v114, v115);
  v120 = v154;
  v121 = &v154[*(v173 + 36)];
  v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40F50, &qword_21CE74AB0) + 28);
  sub_21CE6C000();
  *v121 = KeyPath;
  v123 = v148;
  *v120 = v150;
  *(v120 + 8) = v123;
  *(v120 + 16) = v78;
  *(v120 + 24) = v147;
  *(v120 + 32) = v145;
  *(v120 + 40) = v106;
  *(v120 + 48) = v108;
  *(v120 + 56) = v110;
  *(v120 + 64) = v112;
  *(v120 + 72) = 0;
  v182 = v119;
  v183 = v118;
  v184 = v95;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41160, &qword_21CE74828);
  v124 = sub_21CE633D4();
  v125 = sub_21CDE4158(&qword_281213180, &qword_27CE41160, &qword_21CE74828);
  v126 = v175;
  sub_21CE6C850();
  sub_21CDE5494(v120, &qword_27CE411C0, &qword_21CE74A68);
  v127 = v168;
  v128 = v178;
  (*(v169 + 16))(v178, v179, v168);
  v189[0] = v128;
  v130 = v152;
  v129 = v153;
  v132 = v171;
  v131 = v172;
  (*(v152 + 16))(v172, v171, v153);
  v189[1] = v131;
  v133 = v155;
  v134 = v176;
  v135 = v126;
  v136 = v156;
  (*(v155 + 16))(v176, v135, v156);
  v189[2] = v134;
  v188[0] = v127;
  v188[1] = v129;
  v137 = v129;
  v188[2] = v136;
  v185 = OpaqueTypeConformance2;
  *&v190 = v174;
  *(&v190 + 1) = MEMORY[0x277D839F8];
  *&v191 = v151;
  *(&v191 + 1) = MEMORY[0x277D83A28];
  v186 = swift_getOpaqueTypeConformance2();
  *&v190 = v173;
  *(&v190 + 1) = v181;
  *&v191 = v124;
  *(&v191 + 1) = v125;
  v187 = swift_getOpaqueTypeConformance2();
  sub_21CE5FC64(v189, 3uLL, v188);
  v138 = *(v133 + 8);
  v138(v175, v136);
  v139 = *(v130 + 8);
  v139(v132, v137);
  v140 = v158;
  (v158)(v179, v127);
  v138(v176, v136);
  v139(v172, v137);
  return v140(v178, v127);
}

void sub_21CE61D20(CGFloat *a1@<X8>)
{
  v2 = sub_21CE6C430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6C4B0();
  sub_21CE6BFD0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  *a1 = CGRectGetMinY(v16);
}

void sub_21CE61E3C(uint64_t a1, double *a2)
{
  if (*a2 > 0.0)
  {
    v2 = type metadata accessor for SettingsPlacardView();
LABEL_6:
    sub_21CE607EC(v2);
    return;
  }

  v3 = fabs(*a2);
  v4 = type metadata accessor for SettingsPlacardView();
  if (v3 == sub_21CE6068C(v4) || sub_21CE6068C(v4) < v3)
  {
LABEL_5:
    v2 = v4;
    goto LABEL_6;
  }

  if (v3 < sub_21CE6068C(v4))
  {
    sub_21CE6068C(v4);
    goto LABEL_5;
  }
}

void sub_21CE61EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21CE6C570();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411D8, &qword_21CE74AB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = sub_21CE6BA30();
  if (!v16)
  {
LABEL_7:
    v20 = v3 + *(a2 + 52);
    v21 = *v20;
    if (*v20)
    {
      v22 = *(v20 + 8);

      v21(a1);

      sub_21CE5C308(v21);
    }

    return;
  }

  v17 = (v3 + *(a2 + 60));
  if (v15 == *v17 && v16 == v17[1])
  {
  }

  else
  {
    v19 = sub_21CE6D400();

    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_21CE6B880();
  v23 = sub_21CE6B890();
  v24 = (*(*(v23 - 8) + 48))(v14, 1, v23);
  sub_21CDE5494(v14, &qword_27CE411D8, &qword_21CE74AB8);
  if (v24 != 1)
  {
    v25 = sub_21CE6B9B0();
    v26 = [objc_opt_self() helpViewControllerWithURL_];

    if (v26)
    {
      [v26 setShowTopicViewOnLoad_];
      v27 = sub_21CE604A0(a2, v10);
      MEMORY[0x28223BE20](v27);
      *(&v28 - 2) = v26;
      sub_21CE6C560();

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_21CE621D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SettingsPlacardView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v17 - v10;
  v12 = (a1 + *(v9 + 48));
  v13 = v12[1];
  v17[0] = *v12;
  v17[1] = v13;
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v7 + 32))(v15 + v14, v11, v6);
  sub_21CE1570C();

  return sub_21CE6CA00();
}

uint64_t sub_21CE62350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsPlacardView();
  v12 = (a1 + *(v11 + 48));
  v13 = *v12;
  v14 = v12[1];
  sub_21CE62508(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_21CDE5494(v5, &unk_27CE40310, &qword_21CE71470);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_21CE61EE8(v10, v11);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21CE62508@<X0>(uint64_t a1@<X8>)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21CE6BA60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v35[0] = 0;
  v8 = [v7 initWithTypes:32 error:v35];
  if (v8)
  {
    v9 = v8;
    v10 = v35[0];
    v11 = sub_21CE6CC20();
    v12 = [v9 matchesInString:v11 options:0 range:{0, sub_21CE6CCB0()}];

    sub_21CE63780();
    v13 = sub_21CE6CD40();

    v33 = a1;
    v34 = v2;
    v31 = v6;
    v32 = v3;
    if (v13 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CE6D360())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x21CF1B2A0](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if ([v16 resultType] == 32)
        {
          v19 = [v17 URL];
          if (v19)
          {
            v20 = v19;

            v21 = v31;
            sub_21CE6B9F0();

            v23 = v32;
            v22 = v33;
            v24 = v21;
            v25 = v34;
            (*(v32 + 32))(v33, v24, v34);
            result = (*(v23 + 56))(v22, 0, 1, v25);
            goto LABEL_19;
          }
        }

        ++v15;
        if (v18 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    result = (*(v32 + 56))(v33, 1, 1, v34);
  }

  else
  {
    v27 = v35[0];
    v28 = sub_21CE6B910();

    swift_willThrow();
    result = (*(v3 + 56))(a1, 1, 1, v2);
  }

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

double SettingsPlacardView.init(localizedTitle:localizedSubtitle:updateNavigationTitleAlpha:linkAction:icon:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for SettingsPlacardView();
  v17 = v16[9];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v18 = (a9 + v16[15]);
  *v18 = 0x74696B706C6568;
  v18[1] = 0xE700000000000000;
  v19 = (a9 + v16[16]);
  sub_21CE6C9B0();
  *v19 = v31;
  *(v19 + 1) = v32;
  v20 = (a9 + v16[17]);
  sub_21CE6C9B0();
  result = v31;
  *v20 = v31;
  *(v20 + 1) = v32;
  v22 = (a9 + v16[10]);
  *v22 = a10;
  v22[1] = a11;
  v23 = (a9 + v16[11]);
  *v23 = a1;
  v23[1] = a2;
  v24 = (a9 + v16[12]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + v16[14]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v16[13]);
  *v26 = a7;
  v26[1] = a8;
  return result;
}

uint64_t sub_21CE629FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 icon];

  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v5 = *(type metadata accessor for SettingsIconView() + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_21CE62AC0@<X0>(uint64_t a1@<X8>)
{

  return sub_21CE62B38(a1);
}

uint64_t sub_21CE62B38@<X0>(uint64_t a1@<X8>)
{

  v2 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v3 = sub_21CE6CC20();

  v4 = [v2 initWithType_];

  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v5 = *(type metadata accessor for SettingsIconView() + 24);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  return result;
}

id sub_21CE62C18()
{
  v0 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CC5DD8]) initWithApplicationExtensionRecord_];

      return v3;
    }
  }

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  __swift_project_value_buffer(v5, qword_27CE412C0);
  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CF10();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446978;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 166;
    *(v8 + 22) = 2082;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v16);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2082;
    *(v8 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v16);
    _os_log_impl(&dword_21CDE1000, v6, v7, "%{public}s:%ld %{public}s %{public}s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  return 0;
}

void sub_21CE62F10()
{
  sub_21CE63074(319, &qword_281213238, &qword_27CE40C28, &qword_21CE73360, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21CE5BD40();
    if (v1 <= 0x3F)
    {
      sub_21CE00D24();
      if (v2 <= 0x3F)
      {
        sub_21CE63074(319, &qword_2812117D0, &qword_27CE411B8, qword_21CE74A50, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CE630D8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CE63074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21CE630D8()
{
  if (!qword_281213190)
  {
    v0 = sub_21CE6C9F0();
    if (!v1)
    {
      atomic_store(v0, &qword_281213190);
    }
  }
}

void sub_21CE63128(uint64_t a1, double *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for SettingsPlacardView() - 8) + 80);

  sub_21CE61E3C(a1, a2);
}

unint64_t sub_21CE631C4()
{
  result = qword_281213228;
  if (!qword_281213228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411D0, &qword_21CE74A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213228);
  }

  return result;
}

uint64_t sub_21CE63248(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for SettingsPlacardView();
  v7 = *a2;
  v8 = v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  return sub_21CE606EC(v6);
}

unint64_t sub_21CE632B0()
{
  result = qword_281213210;
  if (!qword_281213210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411C8, &qword_21CE74A70);
    sub_21CE631C4();
    sub_21CE5EA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213210);
  }

  return result;
}

uint64_t sub_21CE6333C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for SettingsPlacardView();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  sub_21CE61EE8(a1, v5);

  return sub_21CE6BFF0();
}

unint64_t sub_21CE633D4()
{
  result = qword_281213218;
  if (!qword_281213218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411C0, &qword_21CE74A68);
    sub_21CE631C4();
    sub_21CDE4158(&qword_2812131B0, &qword_27CE40F50, &qword_21CE74AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213218);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SettingsPlacardView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CE6C4A0();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v5, 1, v8))
    {
      (*(v9 + 8))(v0 + v5, v8);
    }
  }

  else
  {
    v10 = *v7;
  }

  v11 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CE6C570();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else
  {
    v13 = *&v7[v11];
  }

  v14 = *&v7[v3[10] + 8];

  v15 = *&v7[v3[11] + 8];

  v16 = *&v7[v3[12] + 8];

  v17 = &v7[v3[13]];
  if (*v17)
  {
    v18 = *(v17 + 1);
  }

  v19 = &v7[v3[14]];
  if (*v19)
  {
    v20 = *(v19 + 1);
  }

  v21 = *&v7[v3[15] + 8];

  v22 = *&v7[v3[16] + 8];

  v23 = *&v7[v3[17] + 8];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_21CE636FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SettingsPlacardView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21CE62350(v4);
}

unint64_t sub_21CE63780()
{
  result = qword_27CE411E0;
  if (!qword_27CE411E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE411E0);
  }

  return result;
}

double sub_21CE6388C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = [objc_opt_self() mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v19}];
  [v20 setDrawBorder_];
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = v20;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F8, &qword_21CE74B58);
  v23 = v22[9];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v24 = (a9 + v22[15]);
  *v24 = 0x74696B706C6568;
  v24[1] = 0xE700000000000000;
  v25 = (a9 + v22[16]);
  v26 = v20;
  sub_21CE6C9B0();
  *v25 = v37;
  *(v25 + 1) = v38;
  v27 = (a9 + v22[17]);
  sub_21CE6C9B0();

  result = v37;
  *v27 = v37;
  *(v27 + 1) = v38;
  v29 = (a9 + v22[10]);
  *v29 = a11;
  v29[1] = v21;
  v30 = (a9 + v22[11]);
  *v30 = a1;
  v30[1] = a2;
  v31 = (a9 + v22[12]);
  *v31 = a3;
  v31[1] = a4;
  v32 = (a9 + v22[14]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a9 + v22[13]);
  *v33 = a7;
  v33[1] = a8;
  return result;
}

double sub_21CE63B24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = [objc_opt_self() mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v21}];
  [v22 setDrawBorder_];
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = v22;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F8, &qword_21CE74B58);
  v25 = v24[9];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  swift_storeEnumTagMultiPayload();
  v26 = (a9 + v24[15]);
  *v26 = 0x74696B706C6568;
  v26[1] = 0xE700000000000000;
  v27 = (a9 + v24[16]);
  v28 = v22;
  sub_21CE6C9B0();
  *v27 = v39;
  *(v27 + 1) = v40;
  v29 = (a9 + v24[17]);
  sub_21CE6C9B0();

  result = v39;
  *v29 = v39;
  *(v29 + 1) = v40;
  v31 = (a9 + v24[10]);
  *v31 = a13;
  v31[1] = v23;
  v32 = (a9 + v24[11]);
  *v32 = a1;
  v32[1] = a2;
  v33 = (a9 + v24[12]);
  *v33 = a3;
  v33[1] = a4;
  v34 = (a9 + v24[14]);
  *v34 = a7;
  v34[1] = a8;
  v35 = (a9 + v24[13]);
  *v35 = a10;
  v35[1] = a11;
  return result;
}

uint64_t sub_21CE63D8C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_21CE6CC20();
  [v6 *a4];

  v8 = a3;

  return sub_21CE6BD10();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t SettingsTogglePlacardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_21CE6C310();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41200, &unk_21CE74B90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = (v1 + *(type metadata accessor for SettingsTogglePlacardView() + 20));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v27 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820);
  sub_21CE6CA10();
  sub_21CE6C300();
  sub_21CDE4158(&qword_27CE41208, &qword_27CE41200, &unk_21CE74B90);
  sub_21CE649D8(&qword_27CE41210, MEMORY[0x277CDDDF0]);
  v16 = v26;
  v17 = v24;
  sub_21CE6C7E0();
  (*(v25 + 8))(v6, v17);
  (*(v8 + 8))(v11, v7);
  v18 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41218, &qword_21CE74BA0) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41220, &qword_21CE74BA8) + 28);
  v20 = *MEMORY[0x277CDF438];
  v21 = sub_21CE6BF40();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  result = swift_getKeyPath();
  *v18 = result;
  return result;
}

uint64_t type metadata accessor for SettingsTogglePlacardView()
{
  result = qword_27CE41228;
  if (!qword_27CE41228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsTogglePlacardView.init(title:subtitle:toggle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v32 = a7;
  v34 = a6;
  v35 = a5;
  v33 = a4;
  v36 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41170, &qword_21CE74830);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31[-v18];
  v20 = type metadata accessor for SettingsTogglePlacardView();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v31[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SettingsPlacardView<>.init(title:subtitle:)(a1, a2, a3, v33, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_21CE5F430(v14);
    v25 = 1;
    v26 = v36;
  }

  else
  {
    sub_21CE5F498(v14, v19);
    sub_21CE5F498(v19, v24);
    v27 = &v24[*(v20 + 20)];
    v28 = v34;
    *v27 = v35;
    *(v27 + 1) = v28;
    v27[16] = v32 & 1;
    v29 = v36;
    sub_21CE648AC(v24, v36);
    v25 = 0;
    v26 = v29;
  }

  return (*(v21 + 56))(v26, v25, 1, v20);
}

uint64_t sub_21CE644AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_21CE6C310();
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41200, &unk_21CE74B90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = (v2 + *(a1 + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  v29 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  sub_21CDE4158(&qword_27CE41168, &qword_27CE41158, &qword_21CE74820);
  sub_21CE6CA10();
  sub_21CE6C300();
  sub_21CDE4158(&qword_27CE41208, &qword_27CE41200, &unk_21CE74B90);
  sub_21CE649D8(&qword_27CE41210, MEMORY[0x277CDDDF0]);
  v18 = v28;
  v19 = v26;
  sub_21CE6C7E0();
  (*(v27 + 8))(v8, v19);
  (*(v10 + 8))(v13, v9);
  v20 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41218, &qword_21CE74BA0) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41220, &qword_21CE74BA8) + 28);
  v22 = *MEMORY[0x277CDF438];
  v23 = sub_21CE6BF40();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t sub_21CE647E4(uint64_t a1)
{
  v2 = sub_21CE6BF40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x21CF1A100](v5);
}

uint64_t sub_21CE648AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsTogglePlacardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21CE64954()
{
  sub_21CE5F97C();
  if (v0 <= 0x3F)
  {
    sub_21CE64A20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CE649D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21CE64A20()
{
  if (!qword_27CE41238)
  {
    v0 = sub_21CE6CA90();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE41238);
    }
  }
}

unint64_t sub_21CE64A70()
{
  result = qword_27CE41240;
  if (!qword_27CE41240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41218, &qword_21CE74BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41200, &unk_21CE74B90);
    sub_21CE6C310();
    sub_21CDE4158(&qword_27CE41208, &qword_27CE41200, &unk_21CE74B90);
    sub_21CE649D8(&qword_27CE41210, MEMORY[0x277CDDDF0]);
    swift_getOpaqueTypeConformance2();
    sub_21CDE4158(&qword_27CE41248, &qword_27CE41220, &qword_21CE74BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41240);
  }

  return result;
}

id sub_21CE64BE8()
{
  v0 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CC5DD8]) initWithApplicationExtensionRecord_];

      return v3;
    }
  }

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  __swift_project_value_buffer(v5, qword_27CE412C0);
  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CF10();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446978;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 21;
    *(v8 + 22) = 2082;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v16);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2082;
    *(v8 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v16);
    _os_log_impl(&dword_21CDE1000, v6, v7, "%{public}s:%ld %{public}s %{public}s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  return 0;
}

id sub_21CE64E68()
{
  type metadata accessor for SettingsExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CE44240 = result;
  return result;
}

BOOL static NSBundle.PluginLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_21CE6B9E0())
  {
    v4 = *(type metadata accessor for NSBundle.PluginLocation(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (sub_21CE6D400() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

id static NSBundle.settingsExperiencePlugin(name:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_21CE6B9C0();
  v14 = (a3 + *(type metadata accessor for NSBundle.PluginLocation(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = v11;
  sub_21CE6B9D0();
  v18 = *(v7 + 8);
  v18(v11, v6);
  if ((_sSo8NSBundleC8SettingsE30settingsExperiencePluginExists4name8locationSbSS_AbCE0E8LocationVtFZ_0(a1, a2, a3) & 1) != 0 && (v19 = objc_allocWithZone(MEMORY[0x277CCA8D8]), v20 = sub_21CE6B9B0(), v17 = [v19 initWithURL_], v20, v17))
  {
    v18(v13, v6);
  }

  else
  {
    sub_21CE025C0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    v18(v13, v6);
  }

  return v17;
}

uint64_t NSBundle.settingsExperiencePluginLoaderName.getter()
{
  v1 = [v0 infoDictionary];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1;
  v3 = sub_21CE6CB60();

  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v4 = sub_21CE66850(0xD00000000000001CLL, 0x800000021CE78C90);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21CDE66C8(*(v3 + 56) + 32 * v4, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  if (!*(v12 + 16) || (v6 = sub_21CE66850(0xD000000000000024, 0x800000021CE78CB0), (v7 & 1) == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v6, v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v8 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v14[0] = v12;
    v14[1] = v13;

    MEMORY[0x21CF1ACB0](0x6F4C6E6967756C50, 0xEC00000072656461);

    return v14[0];
  }

  v10 = 2;
LABEL_14:
  sub_21CE025C0();
  swift_allocError();
  *v11 = v10;
  return swift_willThrow();
}

uint64_t sub_21CE65308()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_21CE6B970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  __swift_allocate_value_buffer(v9, qword_2812119A8);
  __swift_project_value_buffer(v9, qword_2812119A8);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v10 = sub_21CE6BA60();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_21CE6BA50();
}

uint64_t static NSBundle.SettingsPluginVariant.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812119A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  v3 = __swift_project_value_buffer(v2, qword_2812119A8);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.SettingsPluginVariant);
}

uint64_t sub_21CE65534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_21CE6B970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  __swift_allocate_value_buffer(v9, qword_27CE41250);
  __swift_project_value_buffer(v9, qword_27CE41250);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v10 = sub_21CE6BA60();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_21CE6BA50();
}

uint64_t static NSBundle.SettingsPluginVariant.appleInternal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3FA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.SettingsPluginVariant(0);
  v3 = __swift_project_value_buffer(v2, qword_27CE41250);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.SettingsPluginVariant);
}

uint64_t NSBundle.SettingsPluginVariant.description.getter()
{
  sub_21CE6D290();
  type metadata accessor for NSBundle.SettingsPluginVariant(0);
  v0 = sub_21CE6D4F0();

  MEMORY[0x21CF1ACB0](0xD000000000000013, 0x800000021CE78CE0);
  v1 = sub_21CE6B980();
  MEMORY[0x21CF1ACB0](v1);

  MEMORY[0x21CF1ACB0](32039, 0xE200000000000000);
  return v0;
}

id static NSBundle.settingsPlugin(name:variant:)()
{
  v0 = sub_21CE6BA60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  sub_21CE6B9C0();
  v8 = v5;
  sub_21CE6B9D0();
  v9 = *(v1 + 8);
  v9(v5, v0);
  if ((_sSo8NSBundleC8SettingsE20settingsPluginExists4name7variantSbSS_AbCE0bD7VariantVtFZ_0() & 1) != 0 && (v10 = objc_allocWithZone(MEMORY[0x277CCA8D8]), v11 = sub_21CE6B9B0(), v8 = [v10 initWithURL_], v11, v8))
  {
    v9(v7, v0);
  }

  else
  {
    sub_21CE025C0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v9(v7, v0);
  }

  return v8;
}

uint64_t NSBundle.PluginType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static NSBundle.PluginType.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CE6D400();
  }
}

uint64_t NSBundle.PluginType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21CE6CCA0();
}

uint64_t NSBundle.PluginType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE65B00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE65B4C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21CE6CCA0();
}

uint64_t sub_21CE65B54()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE65B9C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21CE65BCC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CE6D400();
  }
}

uint64_t sub_21CE65BFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_21CE6B970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v9, qword_2812118A8);
  v10 = __swift_project_value_buffer(v9, qword_2812118A8);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v11 = sub_21CE6BA60();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  result = sub_21CE6BA50();
  v13 = (v10 + *(v9 + 20));
  *v13 = 0x73676E6974746573;
  v13[1] = 0xE800000000000000;
  return result;
}

uint64_t NSBundle.PluginLocation.init(path:pluginType:)@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_21CE6B970();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = *a1;
  v11 = a1[1];
  (*(v13 + 104))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91C0]);
  v14 = sub_21CE6BA60();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_21CE6BA50();
  result = type metadata accessor for NSBundle.PluginLocation(0);
  v16 = (a2 + *(result + 20));
  *v16 = v12;
  v16[1] = v11;
  return result;
}

uint64_t static NSBundle.PluginLocation.settings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812118A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_2812118A8);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CE65FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_21CE6B970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v9, qword_27CE41268);
  v10 = __swift_project_value_buffer(v9, qword_27CE41268);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v11 = sub_21CE6BA60();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  result = sub_21CE6BA50();
  v13 = (v10 + *(v9 + 20));
  *v13 = 0x73676E6974746573;
  v13[1] = 0xE800000000000000;
  return result;
}

uint64_t static NSBundle.PluginLocation.appleInternalSettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3FA18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_27CE41268);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CE66240()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_21CE6B970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v9, qword_27CE41280);
  v10 = __swift_project_value_buffer(v9, qword_27CE41280);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v11 = sub_21CE6BA60();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  result = sub_21CE6BA50();
  v13 = (v10 + *(v9 + 20));
  *v13 = 0x656C646E7562;
  v13[1] = 0xE600000000000000;
  return result;
}

uint64_t static NSBundle.PluginLocation.privacyPreferences.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3FA20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_27CE41280);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t NSBundle.PluginLocation.hash(into:)()
{
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260]);
  sub_21CE6CB80();
  v1 = (v0 + *(type metadata accessor for NSBundle.PluginLocation(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_21CE6CCA0();
}

uint64_t NSBundle.PluginLocation.hashValue.getter()
{
  sub_21CE6D4B0();
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260]);
  sub_21CE6CB80();
  v1 = (v0 + *(type metadata accessor for NSBundle.PluginLocation(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE665E0(uint64_t a1)
{
  sub_21CE6D4B0();
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260]);
  sub_21CE6CB80();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE66688(uint64_t a1, uint64_t a2)
{
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260]);
  sub_21CE6CB80();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_21CE6CCA0();
}

uint64_t sub_21CE66724(uint64_t a1, uint64_t a2)
{
  sub_21CE6D4B0();
  sub_21CE6BA60();
  sub_21CDE8B80(&qword_2812132C0, MEMORY[0x277CC9260]);
  sub_21CE6CB80();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE667C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_21CE6B9E0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_21CE6D400();
}

unint64_t sub_21CE66850(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v6 = sub_21CE6D4E0();

  return sub_21CE66A84(a1, a2, v6);
}

unint64_t sub_21CE668C8(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21CE6D4B0();
  sub_21CE6CCA0();

  v5 = sub_21CE6D4E0();

  return sub_21CE66B3C(a1 & 1, v5);
}

unint64_t sub_21CE66984(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)();
  v4 = sub_21CE6D4E0();

  return sub_21CE66C98(a1, v4);
}

unint64_t sub_21CE669F0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21CE6CC50();
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v4 = sub_21CE6D4E0();

  return sub_21CE66F84(a1, v4);
}

unint64_t sub_21CE66A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21CE6D400())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21CE66B3C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x746163696C707061;
    }

    else
    {
      v6 = 0x4963696870617267;
    }

    if (a1)
    {
      v7 = 0xEF6E6F63496E6F69;
    }

    else
    {
      v7 = 0xEB000000006E6F63;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x746163696C707061 : 0x4963696870617267;
      v9 = *(*(v2 + 48) + v4) ? 0xEF6E6F63496E6F69 : 0xEB000000006E6F63;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_21CE6D400();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21CE66C98(uint64_t *a1, uint64_t a2)
{
  v29 = type metadata accessor for SettingsPaneRecipe();
  v5 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2 + 64;
  v30 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return v11;
  }

  v12 = ~v10;
  v13 = *a1;
  v14 = a1[1];
  v15 = *(v6 + 72);
  while (1)
  {
    sub_21CDE9794(*(v30 + 48) + v15 * v11, v8, type metadata accessor for SettingsPaneRecipe);
    v16 = *v8 == v13 && v8[1] == v14;
    if (!v16 && (sub_21CE6D400() & 1) == 0)
    {
      goto LABEL_5;
    }

    v17 = v8[2] == a1[2] && v8[3] == a1[3];
    if (!v17 && (sub_21CE6D400() & 1) == 0)
    {
      goto LABEL_5;
    }

    v18 = *(v29 + 24);
    v19 = v8 + v18;
    v20 = a1 + v18;
    if ((sub_21CE6B9E0() & 1) == 0)
    {
      goto LABEL_5;
    }

    v21 = *(type metadata accessor for NSBundle.PluginLocation(0) + 20);
    v22 = *&v19[v21];
    v23 = *&v19[v21 + 8];
    v24 = &v20[v21];
    v25 = v22 == *v24 && v23 == *(v24 + 1);
    if (!v25 && (sub_21CE6D400() & 1) == 0)
    {
      goto LABEL_5;
    }

    v26 = *(v29 + 28);
    sub_21CE00700(v8 + v26, v34);
    sub_21CE00700(a1 + v26, &v36);
    if (!v35)
    {
      break;
    }

    sub_21CE00700(v34, v33);
    if (!*(&v37 + 1))
    {
      sub_21CE00770(v33);
      goto LABEL_4;
    }

    v31[0] = v36;
    v31[1] = v37;
    v32 = v38;
    v27 = MEMORY[0x21CF1B1E0](v33, v31);
    sub_21CE00770(v31);
    sub_21CE00770(v33);
    sub_21CDE5494(v34, qword_27CE40D00, &qword_21CE706F0);
    if (v27)
    {
      goto LABEL_29;
    }

LABEL_5:
    sub_21CE07D30(v8);
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return v11;
    }
  }

  if (*(&v37 + 1))
  {
LABEL_4:
    sub_21CDE5494(v34, &qword_27CE3FF58, &qword_21CE74E00);
    goto LABEL_5;
  }

  sub_21CDE5494(v34, qword_27CE40D00, &qword_21CE706F0);
LABEL_29:
  sub_21CE07D30(v8);
  return v11;
}

unint64_t sub_21CE66F84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21CE6CC50();
      v9 = v8;
      if (v7 == sub_21CE6CC50() && v9 == v10)
      {
        break;
      }

      v12 = sub_21CE6D400();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t _sSo8NSBundleC8SettingsE20settingsPluginExists4name7variantSbSS_AbCE0bD7VariantVtFZ_0()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = sub_21CE6BA60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  sub_21CE6B9C0();
  sub_21CE6B9D0();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v15 = 0;
  v9 = [objc_opt_self() defaultManager];
  sub_21CE6BA10();
  v10 = sub_21CE6CC20();

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v15];

  v8(v7, v0);
  v12 = *MEMORY[0x277D85DE8];
  return (v11 & v15);
}

unint64_t sub_21CE67284()
{
  result = qword_27CE41298;
  if (!qword_27CE41298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41298);
  }

  return result;
}

uint64_t sub_21CE67348()
{
  result = sub_21CE6BA60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t (*sub_21CE67408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return sub_21CE67530;
}

uint64_t sub_21CE67470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v4();
  return sub_21CE6CA40();
}

uint64_t sub_21CE67500@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_21CE6753C()
{
  v0 = sub_21CE6CC10();
  __swift_allocate_value_buffer(v0, qword_2812132F0);
  __swift_project_value_buffer(v0, qword_2812132F0);
  sub_21CE6CC00();
  return sub_21CE6CBF0();
}

uint64_t sub_21CE67598()
{
  type metadata accessor for Log();
  result = swift_initStaticObject();
  qword_27CE412A8 = result;
  return result;
}

uint64_t static Log.shared.getter()
{
  type metadata accessor for Log();

  return swift_initStaticObject();
}

void sub_21CE6763C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  if ((a10() & 1) == 0)
  {
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v12 = sub_21CE6BDA0();
    __swift_project_value_buffer(v12, qword_27CE412C0);

    oslog = sub_21CE6BD80();
    v13 = sub_21CE6CF10();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v22 = a1;
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446978;
      v16 = sub_21CE6D2B0();
      v18 = sub_21CDF2CC8(v16, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = a9;
      *(v14 + 22) = 2082;
      v19 = sub_21CE6D2B0();
      v21 = sub_21CDF2CC8(v19, v20, &v24);

      *(v14 + 24) = v21;
      *(v14 + 32) = 2082;
      *(v14 + 34) = sub_21CDF2CC8(v22, a2, &v24);
      _os_log_impl(&dword_21CDE1000, oslog, v13, "%{public}s:%ld %{public}s %{public}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v15, -1, -1);
      MEMORY[0x21CF1BD50](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21CE678D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v11 = sub_21CE6BDA0();
  __swift_project_value_buffer(v11, qword_27CE412C0);

  oslog = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136447235;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a9;
    *(v13 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, &v23);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    *(v13 + 44) = sub_21CDF2CC8(v21, a2, &v23);
    _os_log_impl(&dword_21CDE1000, oslog, v12, "%{public}s:%ld %{public}s %{private,mask.hash}s", v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v14, -1, -1);
    MEMORY[0x21CF1BD50](v13, -1, -1);
  }
}

void sub_21CE67BF0(uint64_t a1, unint64_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void), char a12, const char *a13)
{
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v15 = sub_21CE6BDA0();
  __swift_project_value_buffer(v15, qword_27CE412C0);

  oslog = sub_21CE6BD80();
  v16 = a11();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = vuzp1_s8(a3, v19).u32[0];
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, &v28);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a10;
    *(v17 + 22) = a12;
    *(v17 + 23) = 8;
    v23 = sub_21CE6D2B0();
    v25 = sub_21CDF2CC8(v23, v24, &v28);

    *(v17 + 24) = v25;
    *(v17 + 32) = a12;
    *(v17 + 33) = 8;
    *(v17 + 34) = sub_21CDF2CC8(a1, a2, &v28);
    _os_log_impl(&dword_21CDE1000, oslog, v16, a13, v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v18, -1, -1);
    MEMORY[0x21CF1BD50](v17, -1, -1);
  }
}

uint64_t sub_21CE67E4C()
{
  v0 = sub_21CE6BDA0();
  __swift_allocate_value_buffer(v0, qword_2812165C0);
  __swift_project_value_buffer(v0, qword_2812165C0);

  return sub_21CE6BD90();
}

uint64_t sub_21CE67EFC()
{
  v0 = sub_21CE6BDA0();
  __swift_allocate_value_buffer(v0, qword_2812165D8);
  __swift_project_value_buffer(v0, qword_2812165D8);

  return sub_21CE6BD90();
}

uint64_t SettingsExperiencePluginError.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE68174()
{
  result = qword_27CE412D8;
  if (!qword_27CE412D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412D8);
  }

  return result;
}

unint64_t sub_21CE681EC()
{
  result = qword_27CE412E0;
  if (!qword_27CE412E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412E0);
  }

  return result;
}

uint64_t View.settingsIconSize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE328C8(v9, v12, v13);
  sub_21CE328C8(v11, a2, a3);
  return (*(v7 + 8))(v11, a2);
}

uint64_t sub_21CE68354@<X0>(void *a1@<X8>)
{
  result = sub_21CE6C140();
  *a1 = v3;
  return result;
}

uint64_t SettingsIconView.init<A>(icon:style:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 8))(a2, a3);
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v6 = *(type metadata accessor for SettingsIconView() + 24);
  *(a4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  return result;
}

uint64_t type metadata accessor for SettingsIconView()
{
  result = qword_281212028;
  if (!qword_281212028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsIconView.init<A>(utType:style:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v12 = sub_21CE6CC20();

  v13 = [v11 initWithType_];

  (*(v7 + 16))(v10, a2, a3);
  SettingsIconView.init<A>(icon:style:label:)(v13, v10, a3, a4);
  return (*(v7 + 8))(a2, a3);
}

uint64_t SettingsIconView.init(url:style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CE6BA60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v10 = sub_21CE6B9B0();
  v11 = [v9 initWithURL_];

  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(a1, v4);
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v13 = *(type metadata accessor for SettingsIconView() + 24);
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  *a2 = v11;
  *(a2 + 8) = v15;
  return result;
}

uint64_t SettingsIconView.init<A>(url:style:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CE6BA60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  v16 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v17 = sub_21CE6B9B0();
  v18 = [v16 initWithURL_];

  v19 = *(v12 + 8);
  v19(v15, v11);
  (*(v7 + 16))(v10, a2, a3);
  SettingsIconView.init<A>(icon:style:label:)(v18, v10, a3, v22);
  (*(v7 + 8))(a2, a3);
  return (v19)(a1, v11);
}

uint64_t SettingsIconView.init(utType:style:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v3 = sub_21CE6CC20();

  v4 = [v2 initWithType_];

  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v5 = *(type metadata accessor for SettingsIconView() + 24);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  return result;
}

uint64_t SettingsIconView.init(image:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = *(type metadata accessor for SettingsIconView() + 24);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE411F0, &qword_21CE75110);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 1;
  return result;
}

void SettingsIconView.init<A>(image:style:label:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v12, v13);
  SettingsIconView.init<A>(icon:style:label:)(0, v11, a3, a4);
  (*(v8 + 8))(a2, a3);
  sub_21CE693D4(*a4, *(a4 + 8));
  *a4 = a1;
  *(a4 + 8) = 1;
}

uint64_t sub_21CE68C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41340, &qword_21CE75320);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v24 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41348, &qword_21CE75328);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41328, &qword_21CE75290);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41338, &qword_21CE75298);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v24 - v18;
  v20 = *(a1 + 8);
  if (v20 == 255)
  {
    *v6 = sub_21CE6C930();
    swift_storeEnumTagMultiPayload();
    sub_21CE69798();
    return sub_21CE6C400();
  }

  else
  {
    v24[1] = v11;
    v24[2] = v3;
    v21 = *a1;
    if (v20)
    {
      *v10 = v21;
      swift_storeEnumTagMultiPayload();
      sub_21CE69950(v21, v20);
      sub_21CE69968(v21, 1);
      sub_21CE69824();
      sub_21CE6C400();
      sub_21CE69974(v14, v6);
      swift_storeEnumTagMultiPayload();
      sub_21CE69798();
      sub_21CE6C400();
      sub_21CE693D4(v21, v20);
      return sub_21CE699E4(v14);
    }

    else
    {
      v23 = v17;
      sub_21CE69950(v21, v20);
      sub_21CE69968(v21, 0);
      sub_21CE6BD00();
      (*(v23 + 16))(v10, v19, v15);
      swift_storeEnumTagMultiPayload();
      sub_21CE69824();
      sub_21CE6C400();
      sub_21CE69974(v14, v6);
      swift_storeEnumTagMultiPayload();
      sub_21CE69798();
      sub_21CE6C400();
      sub_21CE693D4(v21, v20);
      sub_21CE699E4(v14);
      return (*(v23 + 8))(v19, v15);
    }
  }
}

uint64_t sub_21CE69058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6C930();
  *a1 = result;
  return result;
}

unint64_t SettingsIconView.Style.description.getter()
{
  v1 = *v0;
  v2 = 0x2072616265646973;
  v3 = 0x616D73206D726F66;
  v4 = 0x64656D206D726F66;
  if (v1 != 4)
  {
    v4 = 0x72616C206D726F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SettingsIconView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE691FC()
{
  v1 = *v0;
  v2 = 0x2072616265646973;
  v3 = 0x616D73206D726F66;
  v4 = 0x64656D206D726F66;
  if (v1 != 4)
  {
    v4 = 0x72616C206D726F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21CE6930C(uint64_t a1)
{
  v2 = sub_21CE6C0A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C190();
}

void sub_21CE693D4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_21CE693EC(a1, a2 & 1);
  }
}

void sub_21CE693EC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_21CE69418()
{
  result = qword_27CE412E8;
  if (!qword_27CE412E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412E8);
  }

  return result;
}

unint64_t sub_21CE69470()
{
  result = qword_27CE412F0;
  if (!qword_27CE412F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE412F0);
  }

  return result;
}

void sub_21CE694EC()
{
  sub_21CE695D0(319, qword_281212038, &type metadata for SettingsIconView.ViewType, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21CE695D0(319, &qword_281213250, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21CE69620();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CE695D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21CE69620()
{
  if (!qword_281213248)
  {
    sub_21CE6C0A0();
    v0 = sub_21CE6BF50();
    if (!v1)
    {
      atomic_store(v0, &qword_281213248);
    }
  }
}

unint64_t sub_21CE69688()
{
  result = qword_27CE41300;
  if (!qword_27CE41300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41308, &qword_21CE75280);
    sub_21CE6970C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41300);
  }

  return result;
}

unint64_t sub_21CE6970C()
{
  result = qword_27CE41310;
  if (!qword_27CE41310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41318, &qword_21CE75288);
    sub_21CE69798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41310);
  }

  return result;
}

unint64_t sub_21CE69798()
{
  result = qword_27CE41320;
  if (!qword_27CE41320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41328, &qword_21CE75290);
    sub_21CE69824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41320);
  }

  return result;
}

unint64_t sub_21CE69824()
{
  result = qword_27CE41330;
  if (!qword_27CE41330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41338, &qword_21CE75298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41330);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21CE698A8(uint64_t a1, unsigned int a2)
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

uint64_t sub_21CE698F0(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_21CE69950(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_21CE69968(result, a2 & 1);
  }

  return result;
}

id sub_21CE69968(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_21CE69974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41328, &qword_21CE75290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE699E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41328, &qword_21CE75290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SettingsNamedIconSize.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t SettingsNamedIconSize.description.getter()
{
  v1 = *v0;
  v2 = 0x2072616265646973;
  v3 = 0x616D73206D726F66;
  v4 = 0x64656D206D726F66;
  if (v1 != 4)
  {
    v4 = 0x72616C206D726F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21CE69BDC()
{
  result = qword_27CE41350;
  if (!qword_27CE41350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41350);
  }

  return result;
}

unint64_t sub_21CE69C34()
{
  result = qword_27CE41358;
  if (!qword_27CE41358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41358);
  }

  return result;
}

uint64_t NumberStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t ManagedBy.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t SettingsRestrictionView.init(in:by:symbol:symbolRenderingMode:text:textStyle:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 *a10)
{
  v12 = *a1;
  v13 = *a2;
  if (a3)
  {
    v14 = a5;
  }

  else
  {
    v14 = a5;
    if (*a2 > 2u)
    {
      v15 = sub_21CE6C990();
    }

    else
    {
      v15 = sub_21CE6C970();
    }

    a3 = v15;
  }

  *a9 = a3;
  v16 = type metadata accessor for SettingsRestrictionView();
  v17 = v16[5];
  v18 = sub_21CE6C3F0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a9[v17], a4, v18);
  v28 = v12;
  v27 = v13;
  sub_21CE6A724(&v28, &v27, v14, a6, a7, a8, 1, v29);
  (*(v19 + 8))(a4, v18);
  v20 = &a9[v16[6]];
  v21 = v29[1];
  *v20 = v29[0];
  *(v20 + 1) = v21;
  v22 = &a9[v16[7]];

  return sub_21CDE4CD8(a10, v22);
}

uint64_t type metadata accessor for SettingsRestrictionView()
{
  result = qword_27CE41380;
  if (!qword_27CE41380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsRestrictionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CE6C360();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for SettingsRestrictionView();
  v7 = &v1[v6[7]];
  v32 = *(v7 + 4);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 3));
  sub_21CE6C350();
  sub_21CE6C340();
  v8 = *v1;
  sub_21CE6C330();
  sub_21CE6C340();
  v9 = &v1[v6[6]];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  v13 = *(v9 + 3);
  sub_21CE6C320();
  sub_21CE6C340();
  sub_21CE6C380();
  if (qword_27CE3F9F8 != -1)
  {
    swift_once();
  }

  v14 = qword_27CE44240;
  v15 = sub_21CE6C750();
  v17 = v16;
  v19 = v18;
  v20 = sub_21CE6C720();
  v22 = v21;
  v24 = v23;
  v33 = v25;
  sub_21CE037F4(v15, v17, v19 & 1);

  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41360, &qword_21CE75480) + 36));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41368, &qword_21CE75488) + 28);
  v28 = v6[5];
  v29 = sub_21CE6C3F0();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v26 + v27, &v2[v28], v29);
  (*(v30 + 56))(v26 + v27, 0, 1, v29);
  result = swift_getKeyPath();
  *v26 = result;
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v33;
  return result;
}

uint64_t sub_21CE6A284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413B0, &qword_21CE75728);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413B8, &qword_21CE75730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  if (v2[4])
  {
    v14 = v2[1];
    v22 = *v2;
    v23 = a2;
    v21 = *(v2 + 16);
    v20[1] = v2[3];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413C0, &qword_21CE75738);
    v16 = sub_21CDE4158(&qword_27CE413C8, &qword_27CE413C0, &qword_21CE75738);
    sub_21CE6C860();
    (*(v10 + 16))(v8, v13, v9);
    swift_storeEnumTagMultiPayload();
    v24 = v15;
    v25 = v16;
    swift_getOpaqueTypeConformance2();
    sub_21CE6C400();
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413C0, &qword_21CE75738);
    (*(*(v18 - 8) + 16))(v8, a1, v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_21CDE4158(&qword_27CE413C8, &qword_27CE413C0, &qword_21CE75738);
    v24 = v18;
    v25 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_21CE6C400();
  }
}

uint64_t View.settingsRestrictionHelp(in:by:text:visible:)(_BYTE *a1, char *a2, _BYTE *a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v15 = *a2;
  LOBYTE(v17[0]) = *a1;
  LOBYTE(v22) = v15;
  sub_21CE6AD50(a3, a4, a5, a6);
  sub_21CE6A724(v17, &v22, a3, a4, a5, a6, a7, &v19);
  v24 = *(&v20 + 1);
  v22 = v19;
  v23 = v20;
  v17[0] = v19;
  v17[1] = v20;
  v18 = v21;
  MEMORY[0x21CF1A890](v17, a8, &type metadata for SettingsRestrictionHelp, a9);
  sub_21CE5EC94(&v22);
  return sub_21CE6AD94(&v24);
}

uint64_t sub_21CE6A694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413D0, &qword_21CE75740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CE6B328(a1, &v6 - v4);
  return sub_21CE6C1F0();
}

_BYTE *sub_21CE6A724@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if (!a6)
  {
    v8 = *a2;
    if (*result)
    {
      v9 = a8;
      v10 = a7;
      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v8 == 2)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (v8 == 3)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v9 = a8;
      v10 = a7;
      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
LABEL_30:
            v11 = qword_27CE44240;
            result = sub_21CE6C750();
            a5 = v12;
            a3 = result;
            a6 = v13;
            a4 = v14;
            a7 = v10;
            a8 = v9;
            goto LABEL_31;
          }
        }

        else
        {
          sub_21CE6C370();
          if (qword_27CE3F9F8 == -1)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v8 == 2)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (v8 == 3)
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_21CE6C370();
        if (qword_27CE3F9F8 == -1)
        {
          goto LABEL_30;
        }
      }
    }

    swift_once();
    goto LABEL_30;
  }

LABEL_31:
  *a8 = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5 & 1;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7 & 1;
  return result;
}

uint64_t sub_21CE6AD50(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21CE037E4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21CE6AD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41140, &qword_21CE746D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CE6AE00()
{
  result = qword_27CE41370;
  if (!qword_27CE41370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41370);
  }

  return result;
}

unint64_t sub_21CE6AE58()
{
  result = qword_27CE41378;
  if (!qword_27CE41378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41378);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedBy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedBy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CE6B050()
{
  result = sub_21CE6C3F0();
  if (v1 <= 0x3F)
  {
    result = sub_21CE6B0EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21CE6B0EC()
{
  result = qword_27CE41390;
  if (!qword_27CE41390)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CE41390);
  }

  return result;
}

unint64_t sub_21CE6B150()
{
  result = qword_27CE41398;
  if (!qword_27CE41398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE41360, &qword_21CE75480);
    sub_21CDE4158(&qword_27CE413A0, &qword_27CE41368, &qword_21CE75488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE41398);
  }

  return result;
}

unint64_t sub_21CE6B208()
{
  result = qword_27CE413A8;
  if (!qword_27CE413A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE413A8);
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

uint64_t sub_21CE6B270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE6B2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CE6B328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE413D0, &qword_21CE75740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE6B398()
{
  result = qword_27CE413D8;
  if (!qword_27CE413D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE413E0, &qword_21CE75748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE413C0, &qword_21CE75738);
    sub_21CDE4158(&qword_27CE413C8, &qword_27CE413C0, &qword_21CE75738);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE413D8);
  }

  return result;
}

double gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshRecentsNotificationName(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshSuggestionsNotificationName(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x2__OBJC_CLASS___ATXSettingsAction(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClient(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClientRequest(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppPredictionClient))
  {
    return dlopenHelper_AppPredictionClient(result);
  }

  return result;
}