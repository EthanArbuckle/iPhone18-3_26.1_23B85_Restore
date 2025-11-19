uint64_t sub_1B9EA190C()
{
  v2 = *(v0 + OBJC_IVAR___TTRReport_component);

  return v2;
}

char *sub_1B9EA194C()
{
  type metadata accessor for TTRReport();
  v7 = sub_1B9ED8B1C();
  v4 = v0;
  v5 = sub_1B9ED8B1C();
  v6 = v1;
  type metadata accessor for TTRReportComponent();
  v2 = sub_1B9EA1704();
  return sub_1B9EA1A2C(v7, v4, v5, v6, v2);
}

char *sub_1B9EA1AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  v18 = a1;
  v19 = a2;
  v16 = a3;
  v17 = a4;
  v15 = a5;

  v5 = OBJC_IVAR___TTRReport_title;
  *OBJC_IVAR___TTRReport_title = a1;
  *(v5 + 8) = a2;

  v6 = &v20[OBJC_IVAR___TTRReport_desc];
  *v6 = a3;
  *(v6 + 1) = a4;

  *&v20[OBJC_IVAR___TTRReport_component] = a5;
  v14.receiver = v20;
  v14.super_class = type metadata accessor for TTRReport();
  v13 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x1E69E5928](v13);
  v20 = v13;

  MEMORY[0x1E69E5920](v20);
  return v13;
}

char *sub_1B9EA1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1B9ED8B1C();
  v7 = v3;

  v10 = sub_1B9EA1A2C(a1, a2, v6, v7, a3);
  MEMORY[0x1E69E5928](v10);

  MEMORY[0x1E69E5920](v10);
  return v10;
}

char *sub_1B9EA1D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B9ED8B1C();
  v6 = v3;

  v10 = sub_1B9EA1A2C(v5, v6, a1, a2, a3);
  MEMORY[0x1E69E5928](v10);

  MEMORY[0x1E69E5920](v10);
  return v10;
}

char *sub_1B9EA1DC8(uint64_t a1)
{
  v4 = sub_1B9ED8B1C();
  v5 = v1;
  v6 = sub_1B9ED8B1C();
  v7 = v2;

  v9 = sub_1B9EA1A2C(v4, v5, v6, v7, a1);
  MEMORY[0x1E69E5928](v9);

  MEMORY[0x1E69E5920](v9);
  return v9;
}

id sub_1B9EA1F24()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRReport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9EA1FD4()
{
  v2 = *(v0 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928]();
  return v2;
}

id sub_1B9EA2058(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  MEMORY[0x1E69E5928](a1);
  *OBJC_IVAR___TTRReporter_report = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for TTRReporter();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t sub_1B9EA218C()
{
  v203 = *MEMORY[0x1E69E9840];
  v171 = 0;
  v195 = 0;
  v194 = 0;
  v162 = 0;
  v191 = 0;
  v163 = sub_1B9ED85DC();
  v164 = *(v163 - 8);
  v165 = v164;
  v167 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v163 - 8);
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v44 - v169;
  MEMORY[0x1EEE9AC00](&v44 - v169);
  v168 = &v44 - v169;
  MEMORY[0x1EEE9AC00](&v44 - v169);
  v170 = &v44 - v169;
  v172 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v183 = &v44 - v172;
  v173 = &v44 - v172;
  v184 = sub_1B9ED842C();
  v174 = v184;
  v175 = *(v184 - 8);
  v182 = v175;
  v176 = v175;
  v178 = *(v175 + 64);
  v177 = v178;
  MEMORY[0x1EEE9AC00](v184 - 8);
  v180 = (v178 + 15) & 0xFFFFFFFFFFFFFFF0;
  v179 = &v44 - v180;
  MEMORY[0x1EEE9AC00](&v44 - v180);
  v181 = &v44 - v180;
  v195 = &v44 - v180;
  v194 = v0;
  sub_1B9EA3A18(v1);
  if ((*(v182 + 48))(v183, 1, v184) == 1)
  {
    v21 = v168;
    sub_1B9EA4804(v173);
    v22 = sub_1B9EA02C8();
    (*(v165 + 16))(v21, v22, v163);
    v104 = sub_1B9ED85BC();
    v101 = v104;
    v103 = sub_1B9ED8DCC();
    v102 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
    v105 = sub_1B9ED914C();
    if (os_log_type_enabled(v104, v103))
    {
      v23 = v162;
      v92 = sub_1B9ED8E8C();
      v88 = v92;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v90 = 0;
      v93 = sub_1B9E945DC(0);
      v91 = v93;
      v94 = sub_1B9E945DC(v90);
      v193 = v92;
      v202 = v93;
      v201 = v94;
      v95 = 0;
      v96 = &v193;
      sub_1B9E94630(0, &v193);
      sub_1B9E94630(v95, v96);
      v192[2] = v105;
      v97 = &v44;
      MEMORY[0x1EEE9AC00](&v44);
      v98 = &v44 - 6;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320);
      sub_1B9E96D38();
      sub_1B9ED8BDC();
      v100 = v23;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B9E4B000, v101, v102, "TTR: failed getting a scheme url to report.", v88, 2u);
        v86 = 0;
        sub_1B9E94690(v91);
        sub_1B9E94690(v94);
        sub_1B9ED8E6C();

        v87 = v100;
      }
    }

    else
    {

      v87 = v162;
    }

    v85 = v87;

    (*(v165 + 8))(v168, v163);
    return v85;
  }

  else
  {
    v159 = *(v176 + 32);
    v160 = (v176 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v159(v181, v173, v174);
    v200 = 0;
    v161 = [objc_opt_self() defaultWorkspace];
    if (v161)
    {
      v158 = v161;
    }

    else
    {
      sub_1B9ED8FFC();
      __break(1u);
    }

    v156 = v158;
    v149 = *(v176 + 16);
    v150 = (v176 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v149(v179, v181, v174);
    v155 = sub_1B9ED83AC();
    v151 = *(v176 + 8);
    v152 = (v176 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v151(v179, v174);
    v192[0] = v200;
    v157 = [v156 openURL:v155 configuration:0 error:v192];
    v153 = v157;
    v154 = v192[0];
    v2 = v192[0];
    v3 = v200;
    v200 = v154;

    if (v157)
    {
      v148 = v153;
      v4 = v170;
      v126 = v153;
      sub_1B9ED89EC();

      v5 = sub_1B9EA02C8();
      (*(v165 + 16))(v4, v5, v163);
      v149(v179, v181, v174);
      v127 = (*(v176 + 80) + 16) & ~*(v176 + 80);
      v128 = swift_allocObject();
      v159((v128 + v127), v179, v174);

      v131 = 32;
      v135 = 32;
      v136 = 7;
      v6 = swift_allocObject();
      v7 = v128;
      v137 = v6;
      *(v6 + 16) = sub_1B9EA4ACC;
      *(v6 + 24) = v7;

      v147 = sub_1B9ED85BC();
      v129 = v147;
      v146 = sub_1B9ED8DDC();
      v130 = v146;
      v132 = 17;
      v140 = swift_allocObject();
      v133 = v140;
      *(v140 + 16) = v131;
      v141 = swift_allocObject();
      v134 = v141;
      *(v141 + 16) = 8;
      v8 = swift_allocObject();
      v9 = v137;
      v138 = v8;
      *(v8 + 16) = sub_1B9EA4B40;
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v138;
      v144 = v10;
      v139 = v10;
      *(v10 + 16) = sub_1B9E96AFC;
      *(v10 + 24) = v11;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v142 = sub_1B9ED914C();
      v143 = v12;

      v13 = v140;
      v14 = v143;
      *v143 = sub_1B9E96AF4;
      v14[1] = v13;

      v15 = v141;
      v16 = v143;
      v143[2] = sub_1B9E96AF4;
      v16[3] = v15;

      v17 = v143;
      v18 = v144;
      v143[4] = sub_1B9E96B08;
      v17[5] = v18;
      sub_1B9E8B398();

      if (os_log_type_enabled(v147, v146))
      {
        v19 = v162;
        v119 = sub_1B9ED8E8C();
        v116 = v119;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v120 = sub_1B9E945DC(0);
        v118 = v120;
        v122 = 1;
        v121 = sub_1B9E945DC(1);
        v187 = v119;
        v197 = v120;
        v196 = v121;
        v123 = &v187;
        sub_1B9E94630(2, &v187);
        sub_1B9E94630(v122, v123);
        v185 = sub_1B9E96AF4;
        v186 = v133;
        sub_1B9E94644(&v185, v123, &v197, &v196);
        v124 = v19;
        v125 = v19;
        if (v19)
        {
          v114 = 0;

          __break(1u);
        }

        else
        {
          v185 = sub_1B9E96AF4;
          v186 = v134;
          sub_1B9E94644(&v185, &v187, &v197, &v196);
          v112 = 0;
          v113 = 0;
          v185 = sub_1B9E96B08;
          v186 = v139;
          sub_1B9E94644(&v185, &v187, &v197, &v196);
          v110 = 0;
          v111 = 0;
          _os_log_impl(&dword_1B9E4B000, v129, v130, "TTR: reporting scheme url:%s", v116, 0xCu);
          sub_1B9E94690(v118);
          sub_1B9E94690(v121);
          sub_1B9ED8E6C();

          v115 = v110;
        }
      }

      else
      {
        v20 = v162;

        v115 = v20;
      }

      v108 = v115;

      (*(v165 + 8))(v170, v163);
      v109 = v108;
    }

    else
    {
      v62 = v200;
      v65 = sub_1B9ED832C();
      v63 = v65;

      swift_willThrow();
      v25 = v166;
      v64 = 0;
      v26 = v65;
      v191 = v65;
      v27 = sub_1B9EA02C8();
      (*(v165 + 16))(v25, v27, v163);
      v28 = v65;
      v73 = 7;
      v71 = swift_allocObject();
      *(v71 + 16) = v65;
      sub_1B9E9EF40();

      v84 = sub_1B9ED85BC();
      v66 = v84;
      v83 = sub_1B9ED8DCC();
      v67 = v83;
      v68 = 17;
      v77 = swift_allocObject();
      v69 = v77;
      *(v77 + 16) = 64;
      v78 = swift_allocObject();
      v70 = v78;
      *(v78 + 16) = 8;
      v72 = 32;
      v29 = swift_allocObject();
      v30 = v71;
      v74 = v29;
      *(v29 + 16) = sub_1B9E9F664;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v74;
      v75 = v31;
      *(v31 + 16) = sub_1B9EA4AC0;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v75;
      v81 = v33;
      v76 = v33;
      *(v33 + 16) = sub_1B9E9F2BC;
      *(v33 + 24) = v34;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v79 = sub_1B9ED914C();
      v80 = v35;

      v36 = v77;
      v37 = v80;
      *v80 = sub_1B9E96AF4;
      v37[1] = v36;

      v38 = v78;
      v39 = v80;
      v80[2] = sub_1B9E96AF4;
      v39[3] = v38;

      v40 = v80;
      v41 = v81;
      v80[4] = sub_1B9E9F44C;
      v40[5] = v41;
      sub_1B9E8B398();

      if (os_log_type_enabled(v84, v83))
      {
        v42 = v64;
        v55 = sub_1B9ED8E8C();
        v52 = v55;
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v58 = 1;
        v56 = sub_1B9E945DC(1);
        v54 = v56;
        v57 = sub_1B9E945DC(0);
        v190 = v55;
        v199 = v56;
        v198 = v57;
        v59 = &v190;
        sub_1B9E94630(2, &v190);
        sub_1B9E94630(v58, v59);
        v188 = sub_1B9E96AF4;
        v189 = v69;
        sub_1B9E94644(&v188, v59, &v199, &v198);
        v60 = v42;
        v61 = v42;
        if (v42)
        {
          v50 = 0;

          __break(1u);
        }

        else
        {
          v188 = sub_1B9E96AF4;
          v189 = v70;
          sub_1B9E94644(&v188, &v190, &v199, &v198);
          v48 = 0;
          v49 = 0;
          v188 = sub_1B9E9F44C;
          v189 = v76;
          sub_1B9E94644(&v188, &v190, &v199, &v198);
          v46 = 0;
          v47 = 0;
          _os_log_impl(&dword_1B9E4B000, v66, v67, "TTR: failed opening scheme url:%@", v52, 0xCu);
          sub_1B9E94690(v54);
          sub_1B9E94690(v57);
          sub_1B9ED8E6C();

          v51 = v46;
        }
      }

      else
      {
        v43 = v64;

        v51 = v43;
      }

      v45 = v51;

      (*(v165 + 8))(v166, v163);
      v109 = v45;
    }

    v106 = v109;
    v151(v181, v174);
    return v106;
  }
}

uint64_t *sub_1B9EA3A18@<X0>(void *a1@<X8>)
{
  v68 = a1;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v75 = 0;
  v70 = sub_1B9ED842C();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v16 - v73;
  v76 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v16 - v76;
  v78 = sub_1B9ED82FC();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v82 = &v16 - v81;
  v105 = &v16 - v81;
  v83 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v16 - v83;
  v104 = &v16 - v83;
  v85 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v16 - v85;
  v103 = &v16 - v85;
  v87 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v16 - v87;
  v89 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v16 - v89;
  v102 = &v16 - v89;
  v101 = v1;
  v100 = sub_1B9ED89CC();
  v92 = *(v1 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928](v92);
  v91 = *(v92 + OBJC_IVAR___TTRReport_title);
  v93 = *(v92 + OBJC_IVAR___TTRReport_title + 8);

  MEMORY[0x1E69E5920](v92);
  if (v93)
  {
    v66 = v91;
    v67 = v93;
    v65 = v93;
    v63 = v91;
    v94 = v91;
    v95 = v93;
    v62 = sub_1B9ED8B1C();
    v64 = v10;

    sub_1B9ED82EC();

    (*(v79 + 16))(v88, v90, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6250);
    sub_1B9ED8C4C();
    (*(v79 + 8))(v90, v78);
  }

  v60 = *(v69 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928](v60);
  v59 = *(v60 + OBJC_IVAR___TTRReport_desc);
  v61 = *(v60 + OBJC_IVAR___TTRReport_desc + 8);

  MEMORY[0x1E69E5920](v60);
  if (v61)
  {
    v57 = v59;
    v58 = v61;
    v55 = v61;
    v56 = v59;
    v97 = v59;
    v98 = v61;
    v96 = v90;
    v53 = sub_1B9ED8B1C();
    v54 = v11;

    sub_1B9ED82EC();

    (*(v79 + 16))(v88, v90, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6250);
    sub_1B9ED8C4C();
    (*(v79 + 8))(v90, v78);
  }

  v51 = 1;
  v29 = sub_1B9ED8B1C();
  v32 = v12;
  p_opt_class_meths = &OBJC_PROTOCOL___NSCoding.opt_class_meths;
  v27 = *(v69 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928](v27);
  v40 = &OBJC_PROTOCOL___NSCoding.opt_class_meths;
  v28 = *(v27 + OBJC_IVAR___TTRReport_component);

  MEMORY[0x1E69E5920](v27);
  v30 = *(v28 + 16);
  v31 = *(v28 + 24);

  sub_1B9ED82EC();

  v35 = sub_1B9ED8B1C();
  v38 = v13;
  v33 = *(p_opt_class_meths[73] + v69);
  MEMORY[0x1E69E5928](v33);
  v34 = *(v40[72] + v33);

  MEMORY[0x1E69E5920](v33);
  v36 = *(v34 + 32);
  v37 = *(v34 + 40);

  sub_1B9ED82EC();

  v43 = sub_1B9ED8B1C();
  v46 = v14;
  v41 = *(p_opt_class_meths[73] + v69);
  MEMORY[0x1E69E5928](v41);
  v42 = *(v40[72] + v41);

  MEMORY[0x1E69E5920](v41);
  v44 = *(v42 + 48);
  v45 = *(v42 + 56);

  sub_1B9ED82EC();

  v49 = *(v79 + 16);
  v48 = v79 + 16;
  v49(v90, v86, v78);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6250);
  v47 = &v100;
  sub_1B9ED8C4C();
  v49(v90, v84, v78);
  sub_1B9ED8C4C();
  v49(v90, v82, v78);
  sub_1B9ED8C4C();
  sub_1B9EA4C1C();
  sub_1B9ED8B1C();
  v52 = sub_1B9EA48AC();
  v99 = v52;
  MEMORY[0x1E69E5928](v52);
  if (v52)
  {
    v26 = v52;
    v25 = v52;
    v23 = v100;

    v24 = sub_1B9ED8BFC();

    [v25 setQueryItems_];
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](v25);
  }

  MEMORY[0x1E69E5928](v52);
  if (v52)
  {
    v22 = v52;
    v20 = v52;
    v21 = [v52 URL];
    if (v21)
    {
      v19 = v21;
      v18 = v21;
      sub_1B9ED83EC();
      (*(v71 + 32))(v77, v74, v70);
      (*(v71 + 56))(v77, 0, 1, v70);
      MEMORY[0x1E69E5920](v18);
    }

    else
    {
      (*(v71 + 56))(v77, 1, 1, v70);
    }

    sub_1B9EA4C80(v77, v68);
    MEMORY[0x1E69E5920](v20);
  }

  else
  {
    (*(v71 + 56))(v68, 1, 1, v70);
  }

  MEMORY[0x1E69E5920](v52);
  v17 = *(v79 + 8);
  v16 = v79 + 8;
  v17(v82, v78);
  v17(v84, v78);
  v17(v86, v78);
  result = &v100;
  sub_1B9E9895C();
  return result;
}

uint64_t sub_1B9EA4804(uint64_t a1)
{
  v3 = sub_1B9ED842C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

id sub_1B9EA4980()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B9EA4A0C()
{
  v2 = sub_1B9ED8A9C();
  v3 = [v1 initWithString_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

uint64_t sub_1B9EA4A70(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B9EA4ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B9ED842C();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B9EA3968(v3, a1);
}

uint64_t sub_1B9EA4B40()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B9ED842C();
  v1 = sub_1B9EA4B9C();

  return sub_1B9E946F8(v5, v3, v4, v1);
}

unint64_t sub_1B9EA4B9C()
{
  v2 = qword_1EBBE62F0;
  if (!qword_1EBBE62F0)
  {
    sub_1B9ED842C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9EA4C1C()
{
  v2 = qword_1EBBE6258;
  if (!qword_1EBBE6258)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6258);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B9EA4C80(const void *a1, void *a2)
{
  v6 = sub_1B9ED842C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id SFSecureWindow.__allocating_init(windowScene:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithWindowScene_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id SFSecureWindow.init(windowScene:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  v4.receiver = 0;
  v4.super_class = type metadata accessor for SFSecureWindow();
  v3 = objc_msgSendSuper2(&v4, sel_initWithWindowScene_, a1);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

id SFSecureWindow.init(frame:)(double a1, double a2, double a3, double a4)
{
  v15 = 0;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v10.receiver = 0;
  v10.super_class = type metadata accessor for SFSecureWindow();
  v9 = objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
  MEMORY[0x1E69E5928](v9);
  v15 = v9;
  MEMORY[0x1E69E5920](v9);
  return v9;
}

id SFSecureWindow.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id SFSecureWindow.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for SFSecureWindow();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id SFSecureWindow.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFSecureWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9EA52CC()
{
  v1 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v1, qword_1EBBE6260);
  __swift_project_value_buffer(v1, qword_1EBBE6260);
  return sub_1B9ED85AC();
}

uint64_t sub_1B9EA5318()
{
  if (qword_1EBBE5D08 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE6260);
}

uint64_t sub_1B9EA53DC()
{
  v2 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v2, qword_1EBBE6280);
  v3 = __swift_project_value_buffer(v2, qword_1EBBE6280);
  v0 = sub_1B9EA02C8();
  return (*(*(v2 - 8) + 16))(v3, v0);
}

uint64_t sub_1B9EA545C()
{
  if (qword_1EBBE5D10 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE6280);
}

uint64_t SFAirDropUtilities.FileLoadResult.dataType.getter()
{
  v2 = *(v0 + *(type metadata accessor for SFAirDropUtilities.FileLoadResult() + 20));

  return v2;
}

uint64_t type metadata accessor for SFAirDropUtilities.FileLoadResult()
{
  v1 = qword_1EBBE6480;
  if (!qword_1EBBE6480)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SFAirDropUtilities.FileLoadResult.previewImage.getter()
{
  v2 = *(v0 + *(type metadata accessor for SFAirDropUtilities.FileLoadResult() + 24));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

int *sub_1B9EA56AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = sub_1B9ED88CC();
  (*(*(v6 - 8) + 32))(a6, a1);
  result = type metadata accessor for SFAirDropUtilities.FileLoadResult();
  v8 = (a6 + result[5]);
  *v8 = a2;
  v8[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t *sub_1B9EA57C4()
{
  v9 = sub_1B9ED858C();
  v8 = sub_1B9ED914C();
  v7 = v0;
  sub_1B9ED84FC();
  v5 = *(v9 - 8);
  v6 = *(v5 + 72);
  v1 = sub_1B9EA59E0();
  (*(v5 + 16))(v7 + v6, v1, v9);
  sub_1B9ED856C();
  sub_1B9ED853C();
  sub_1B9ED852C();
  sub_1B9ED84EC();
  sub_1B9ED857C();
  sub_1B9ED850C();
  sub_1B9ED84BC();
  sub_1B9E8B398();
  v12 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0);
  v2 = sub_1B9EA6380();
  v4 = sub_1B9EA5A9C(sub_1B9EA5A4C, 0, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v11);
  result = &v12;
  sub_1B9E9895C();
  qword_1EBBE6298 = v4;
  return result;
}

uint64_t sub_1B9EA59E0()
{
  if (qword_1EBBE5D20 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED858C();
  return __swift_project_value_buffer(v0, qword_1EBBE7AD0);
}

uint64_t sub_1B9EA5A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9ED84AC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B9EA5A9C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v15 - v65;
  v67 = sub_1B9ED8D4C();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = sub_1B9ED8F5C();
  v33 = sub_1B9ED8F6C();
  sub_1B9ED8F3C();
  result = sub_1B9ED8D3C();
  if (v67 < 0)
  {
    sub_1B9ED8FFC();
    __break(1u);
LABEL_24:
    v17 = sub_1B9ED8C2C();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_1B9ED8D5C();
    swift_getAssociatedConformanceWitness();
    v22 = sub_1B9ED8A8C();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_1B9ED904C();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_1B9ED8FFC();
      __break(1u);
LABEL_18:
      sub_1B9ED904C();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_1B9ED8DAC();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_1B9E93A50();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_1B9ED8F4C();
    sub_1B9ED8D6C();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B9EA6380()
{
  v2 = qword_1EBBE62A8;
  if (!qword_1EBBE62A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE62A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9EA6408()
{
  if (qword_1EBBE5D18 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE6298;
}

uint64_t static SFAirDropUtilities.standardTypeIdentifiers.getter()
{
  v1 = *sub_1B9EA6408();

  return v1;
}

uint64_t sub_1B9EA64A0(void *a1, id a2, void *a3)
{
  v3 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
    if (swift_dynamicCast())
    {
      v22 = v27;
      v23 = v28;
    }

    else
    {
      v22 = 0;
      v23 = -1;
    }

    v20 = v22;
    v21 = v23;
  }

  else
  {
    v20 = 0;
    v21 = -1;
  }

  if (v21 == 255)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a2;
      sub_1B9EC88D4();
      v17 = swift_allocError();
      *v7 = a2;
      *(v7 + 8) = 0;

      return v17;
    }

    else
    {
      v8 = a3;
      if (a3)
      {
        v9 = a3;
        sub_1B9EC88D4();
        v16 = swift_allocError();
        *v10 = a3;
        *(v10 + 8) = 0;

        return v16;
      }

      else
      {
        v14 = [a1 registeredTypeIdentifiers];
        v13 = sub_1B9ED8C0C();
        sub_1B9EC88D4();
        v15 = swift_allocError();
        *v11 = v13;
        *(v11 + 8) = 1;
        MEMORY[0x1E69E5920](v14);
        return v15;
      }
    }
  }

  else
  {
    sub_1B9EC8950(v20, v21);
    sub_1B9EC88D4();
    v18 = swift_allocError();
    *v4 = v20;
    *(v4 + 8) = v21;
    sub_1B9EC89AC(v20, v21);
    return v18;
  }
}

uint64_t static SFAirDropUtilities.suggestedAirDropThumbnailSize()()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  MEMORY[0x1E69E5920](v1);
  return SFSuggestedAirDropThumbnailSize();
}

CGImageSource *static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(uint64_t a1, double a2, double a3)
{
  v136 = a1;
  v176 = a2;
  v177 = a3;
  v4 = v3;
  v5 = v136;
  v178 = v4;
  v137 = sub_1B9EA4ACC;
  v138 = sub_1B9EA4B40;
  v139 = sub_1B9E96AFC;
  v140 = sub_1B9E96AF4;
  v141 = sub_1B9E96AF4;
  v142 = sub_1B9E96B08;
  v207 = 0;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  v202 = 0.0;
  v203 = 0;
  v201 = 0;
  v143 = 0;
  v193 = 0;
  v190 = 0;
  v188 = 0;
  v189 = 0;
  v166 = 0;
  v144 = sub_1B9ED85DC();
  v145 = *(v144 - 8);
  v146 = v144 - 8;
  v147 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v144);
  v148 = &v51 - v147;
  v149 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v166);
  v150 = &v51 - v149;
  v151 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v51 - v151;
  v153 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v51 - v153;
  v155 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v156 = &v51 - v155;
  v157 = sub_1B9ED842C();
  v159 = *(v157 - 8);
  v158 = v157 - 8;
  v160 = v159;
  v161 = *(v159 + 64);
  v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v157);
  v163 = &v51 - v162;
  v207 = &v51 - v162;
  v164 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v165 = &v51 - v164;
  v167 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v51 - v167;
  v169 = sub_1B9ED858C();
  v170 = *(v169 - 8);
  v171 = v169 - 8;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v169);
  v173 = &v51 - v172;
  v174 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v51 - v172);
  v175 = &v51 - v174;
  v206 = &v51 - v174;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62D0);
  v180 = *(*(v15 - 8) + 64);
  v179 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v181 = &v51 - v179;
  v182 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](&v51 - v179);
  v183 = &v51 - v182;
  v205 = &v51 - v182;
  v204 = v5;
  v202 = v16;
  v203 = v17;
  v201 = v18;
  if (sub_1B9ED833C())
  {
    v19 = v143;
    v200 = 0;
    v128 = type metadata accessor for URLResourceKey();
    v127 = sub_1B9ED914C();
    sub_1B9EC8A08(MEMORY[0x1E695DAA0], v20);
    v21 = v127;
    sub_1B9E8B398();
    v131 = &v199;
    v199 = v21;
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE62D8);
    v130 = sub_1B9E98444();
    sub_1B9EC8A48();
    v132 = sub_1B9ED8D1C();
    sub_1B9ED836C();
    v133 = v19;
    v134 = v19;
    if (v19)
    {
      v52 = v134;
      v53 = 0;

      v50 = sub_1B9ED831C();
      (*(*(v50 - 8) + 56))(v183, 1);
      v126 = v53;
    }

    else
    {

      v22 = sub_1B9ED831C();
      (*(*(v22 - 8) + 56))(v183, 0, 1);
      v126 = v133;
    }

    v122 = v126;
    sub_1B9EC8AD0(v183, v181);
    v123 = sub_1B9ED831C();
    v124 = *(v123 - 8);
    v125 = v123 - 8;
    if ((*(v124 + 48))(v181, 1) == 1)
    {
      sub_1B9EC8BF8(v181);
      (*(v170 + 56))(v168, 1, 1, v169);
    }

    else
    {
      sub_1B9ED830C();
      (*(v124 + 8))(v181, v123);
    }

    if ((*(v170 + 48))(v168, 1, v169) == 1)
    {
      v33 = v148;
      sub_1B9EC8CA0(v168);
      v34 = sub_1B9EA545C();
      (*(v145 + 16))(v33, v34, v144);
      v65 = v160;
      (*(v159 + 16))(v165, v136, v157);
      v66 = (*(v65 + 80) + 16) & ~*(v65 + 80);
      v70 = 7;
      v67 = swift_allocObject();
      (*(v159 + 32))(v67 + v66, v165, v157);

      v69 = 32;
      v35 = swift_allocObject();
      v36 = v67;
      v71 = v35;
      *(v35 + 16) = v137;
      *(v35 + 24) = v36;

      v79 = sub_1B9ED85BC();
      v80 = sub_1B9ED8DCC();
      v68 = 17;
      v73 = swift_allocObject();
      *(v73 + 16) = 32;
      v74 = swift_allocObject();
      *(v74 + 16) = 8;
      v37 = swift_allocObject();
      v38 = v71;
      v72 = v37;
      *(v37 + 16) = v138;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v72;
      v76 = v39;
      *(v39 + 16) = v139;
      *(v39 + 24) = v40;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v75 = sub_1B9ED914C();
      v77 = v41;

      v42 = v73;
      v43 = v77;
      *v77 = v140;
      v43[1] = v42;

      v44 = v74;
      v45 = v77;
      v77[2] = v141;
      v45[3] = v44;

      v46 = v76;
      v47 = v77;
      v77[4] = v142;
      v47[5] = v46;
      sub_1B9E8B398();

      if (os_log_type_enabled(v79, v80))
      {
        v48 = v122;
        v58 = sub_1B9ED8E8C();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v59 = sub_1B9E945DC(0);
        v60 = sub_1B9E945DC(1);
        v61 = &v198;
        v198 = v58;
        v62 = &v197;
        v197 = v59;
        v63 = &v196;
        v196 = v60;
        sub_1B9E94630(2, &v198);
        sub_1B9E94630(1, v61);
        v194 = v140;
        v195 = v73;
        sub_1B9E94644(&v194, v61, v62, v63);
        v64 = v48;
        if (v48)
        {

          __break(1u);
        }

        else
        {
          v194 = v141;
          v195 = v74;
          sub_1B9E94644(&v194, &v198, &v197, &v196);
          v56 = 0;
          v194 = v142;
          v195 = v76;
          sub_1B9E94644(&v194, &v198, &v197, &v196);
          _os_log_impl(&dword_1B9E4B000, v79, v80, "Could not find content type for URL %s", v58, 0xCu);
          sub_1B9E94690(v59);
          sub_1B9E94690(v60);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v79);
      (*(v145 + 8))(v148, v144);
      goto LABEL_44;
    }

    (*(v170 + 32))(v175, v168, v169);
    sub_1B9ED852C();
    v121 = sub_1B9ED854C();
    v119 = *(v170 + 8);
    v120 = v170 + 8;
    v119(v173, v169);
    if (v121)
    {
      (*(v159 + 16))(v165, v136, v157);
      v117 = sub_1B9ED83AC();
      (*(v159 + 8))(v165, v157);
      v23 = SFScreenScale();
      v184 = v176;
      v185 = v177;
      v118 = SFCreateThumbnailImage(v117, v176, v177, v23);
      MEMORY[0x1E69E5920](v117);
      v24 = v200;
      v200 = v118;
      MEMORY[0x1E69E5920](v24);
LABEL_36:
      v119(v175, v169);
LABEL_44:
      v54 = &v200;
      v55 = v200;
      MEMORY[0x1E69E5928](v200);
      sub_1B9EC8BF8(v183);
      sub_1B9E9F1DC(v54);
      return v55;
    }

    sub_1B9ECA9A0();
    v112 = *(v159 + 16);
    v113 = v159 + 16;
    v112(v156, v136, v157);
    v114 = *(v159 + 56);
    v115 = v159 + 56;
    v114(v156, 0, 1, v157);
    v116 = sub_1B9EA8418(v156);
    if (v116)
    {
      v111 = v116;
      v109 = v116;
      v190 = v116;
      v25 = [v116 imagePath];
      v110 = v25;
      if (v25)
      {
        v108 = v110;
        v103 = v110;
        v104 = sub_1B9ED8AAC();
        v105 = v26;
        MEMORY[0x1E69E5920](v103);
        v106 = v104;
        v107 = v105;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      v101 = v107;
      v102 = v106;
      if (v107)
      {
        v99 = v102;
        v100 = v101;
        v98 = v101;
        v188 = v102;
        v189 = v101;
        sub_1B9ED837C();
        v96 = sub_1B9ED83AC();
        (*(v159 + 8))(v165, v157);
        v27 = SFScreenScale();
        v186 = v176;
        v187 = v177;
        v97 = SFCreateThumbnailImage(v96, v176, v177, v27);
        MEMORY[0x1E69E5920](v96);
        v28 = v200;
        v200 = v97;
        MEMORY[0x1E69E5920](v28);

        MEMORY[0x1E69E5920](v109);
        goto LABEL_36;
      }

      MEMORY[0x1E69E5920](v109);
    }

    sub_1B9ECAA04();
    v112(v165, v136, v157);
    v95 = sub_1B9EA8458(v165);
    if (v95)
    {
      v94 = v95;
      v92 = v95;
      v193 = v95;
      v29 = [v95 photoURL];
      v93 = v29;
      if (v29)
      {
        v91 = v93;
        v90 = v93;
        sub_1B9ED83EC();
        (*(v159 + 32))(v152, v165, v157);
        v114(v152, 0, 1, v157);
        MEMORY[0x1E69E5920](v90);
      }

      else
      {
        v114(v152, 1, 1, v157);
      }

      MEMORY[0x1E69E5928](v92);
      v88 = *(v159 + 48);
      v89 = v159 + 48;
      if (v88(v152, 1, v157) == 1)
      {
        v87 = [v92 fullSizePhotoURL];
        if (v87)
        {
          v86 = v87;
          v85 = v87;
          sub_1B9ED83EC();
          (*(v159 + 32))(v150, v165, v157);
          v114(v150, 0, 1, v157);
          MEMORY[0x1E69E5920](v85);
        }

        else
        {
          v114(v150, 1, 1, v157);
        }

        sub_1B9EA4C80(v150, v154);
        if (v88(v152, 1, v157) != 1)
        {
          sub_1B9EA4804(v152);
        }
      }

      else
      {
        (*(v159 + 32))(v154, v152, v157);
        v114(v154, 0, 1, v157);
      }

      MEMORY[0x1E69E5920](v92);
      if (v88(v154, 1, v157) == 1)
      {
        sub_1B9EA4804(v154);
      }

      else
      {
        v30 = v165;
        (*(v159 + 32))(v163, v154, v157);
        v112(v30, v163, v157);
        v81 = sub_1B9ED83AC();
        v84 = *(v159 + 8);
        v83 = v159 + 8;
        v84(v165, v157);
        v31 = SFScreenScale();
        v191 = v176;
        v192 = v177;
        v82 = SFCreateThumbnailImage(v81, v176, v177, v31);
        MEMORY[0x1E69E5920](v81);
        v32 = v200;
        v200 = v82;
        MEMORY[0x1E69E5920](v32);
        v84(v163, v157);
      }

      MEMORY[0x1E69E5920](v92);
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_1B9EA8498(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v271 = a4;
  v270 = a3;
  v273 = a2;
  v281 = a1;
  v331 = *MEMORY[0x1E69E9840];
  v272 = 0;
  v309 = 0;
  v308 = 0;
  v330 = 0;
  v329 = 0;
  v307 = 0;
  v322 = 0;
  v321 = 0;
  v320 = 0;
  v319 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v292 = 0;
  v313 = 0;
  v312 = 0;
  v288 = 0;
  v287 = 0;
  v260 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v261 = v73 - v260;
  v262 = sub_1B9ED858C();
  v263 = *(v262 - 8);
  v264 = v263;
  MEMORY[0x1EEE9AC00](v272);
  v265 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_1B9ED8AEC();
  v267 = *(v266 - 8);
  v268 = v267;
  MEMORY[0x1EEE9AC00](v272);
  v269 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_1B9ED85DC();
  v275 = *(v274 - 8);
  v276 = v275;
  v277 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v281);
  v279 = (v277 + 15) & 0xFFFFFFFFFFFFFFF0;
  v278 = v73 - v279;
  MEMORY[0x1EEE9AC00](v7);
  v280 = v73 - v279;
  v309 = v8;
  v308 = v9;
  v329 = v10;
  v330 = v11;
  v307 = v4;
  v327 = v12;
  v328 = 0xF000000000000000;
  v325 = v12;
  v326 = v12;
  swift_unknownObjectRetain();
  objc_opt_self();
  v282 = swift_dynamicCastObjCClass();
  if (v282)
  {
    v258 = v282;
  }

  else
  {
    swift_unknownObjectRelease();
    v258 = 0;
  }

  v257 = v258;
  if (v258)
  {
    v256 = v257;
    v13 = v280;
    v247 = v257;
    v299 = v257;
    v14 = sub_1B9EA545C();
    v248 = *(v276 + 16);
    v249 = (v276 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v248(v13, v14, v274);
    v254 = sub_1B9ED85BC();
    v250 = v254;
    v253 = sub_1B9ED8DBC();
    v251 = v253;
    v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
    v255 = sub_1B9ED914C();
    if (os_log_type_enabled(v254, v253))
    {
      v245 = v259;
      v237 = sub_1B9ED8E8C();
      v233 = v237;
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v235 = 0;
      v238 = sub_1B9E945DC(0);
      v236 = v238;
      v239 = sub_1B9E945DC(v235);
      v286 = v237;
      v311 = v238;
      v310 = v239;
      v240 = 0;
      v241 = &v286;
      sub_1B9E94630(0, &v286);
      sub_1B9E94630(v240, v241);
      v285 = v255;
      v242 = v73;
      MEMORY[0x1EEE9AC00](v73);
      v243 = &v73[-6];
      v73[-4] = v15;
      v73[-3] = &v311;
      v73[-2] = &v310;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320);
      sub_1B9E96D38();
      v16 = v245;
      sub_1B9ED8BDC();
      v246 = v16;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B9E4B000, v250, v251, "Converting NSAttributedString item to HTML", v233, 2u);
        v231 = 0;
        sub_1B9E94690(v236);
        sub_1B9E94690(v239);
        sub_1B9ED8E6C();

        v232 = v246;
      }
    }

    else
    {

      v232 = v259;
    }

    v210 = v232;

    v211 = *(v276 + 8);
    v212 = (v276 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v211(v280, v274);
    v226 = [v247 length];
    v225 = 0;
    v297 = 0;
    v298 = v226;
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6310);
    v215 = sub_1B9ED914C();
    v213 = v17 + 1;
    sub_1B9EC8A08(MEMORY[0x1E69DB628], v17);
    sub_1B9EC8A08(MEMORY[0x1E69DB658], v213);
    v18 = v215;
    sub_1B9E8B398();
    v216 = v18;
    v220 = type metadata accessor for DocumentAttributeKey();
    v219 = type metadata accessor for DocumentType();
    v222 = sub_1B9E983C4();
    v224 = sub_1B9ED89FC();
    v217 = v224;
    v296 = v224;
    v218 = [v247 string];
    v294 = sub_1B9ED8AAC();
    v295 = v19;

    v316 = v225;

    v221 = MEMORY[0x1E69E7CA0] + 8;
    v223 = sub_1B9ED901C();
    v229 = sub_1B9ED89DC();

    v293 = v316;
    v283 = v225;
    v284 = v226;
    v230 = [v247 dataFromRange:v225 documentAttributes:v226 error:{v229, &v293}];
    v227 = v230;
    v228 = v293;
    v20 = v293;
    v21 = v316;
    v316 = v228;

    if (v230)
    {
      v209 = v227;
      v202 = v227;
      v205 = sub_1B9ED844C();
      v206 = v22;
      v203 = v205;
      v204 = v22;
      v312 = v205;
      v313 = v22;

      sub_1B9ED8ADC();
      v207 = sub_1B9ED8ACC();
      v208 = v23;
      if (v23)
      {
        v200 = v207;
        v201 = v208;
        v199 = v208;
        v198 = v207;
        v287 = v207;
        v288 = v208;

        v294 = v198;
        v295 = v199;
      }

      sub_1B9ECAAB8(v203, v204);
      v197 = v210;
    }

    else
    {
      v98 = v316;
      v102 = sub_1B9ED832C();
      v99 = v102;

      swift_willThrow();
      v42 = v278;
      v100 = 0;
      v43 = v102;
      v292 = v102;
      v44 = sub_1B9EA545C();
      v248(v42, v44, v274);
      v45 = v247;
      v101 = 24;
      v117 = 7;
      v46 = swift_allocObject();
      v47 = v102;
      v107 = v46;
      *(v46 + 16) = v247;
      v48 = v47;
      v115 = swift_allocObject();
      *(v115 + 16) = v102;
      sub_1B9E9EF40();

      v130 = sub_1B9ED85BC();
      v103 = v130;
      v129 = sub_1B9ED8DCC();
      v104 = v129;
      v111 = 17;
      v121 = swift_allocObject();
      v105 = v121;
      v110 = 64;
      *(v121 + 16) = 64;
      v122 = swift_allocObject();
      v106 = v122;
      v113 = 8;
      *(v122 + 16) = 8;
      v116 = 32;
      v49 = swift_allocObject();
      v50 = v107;
      v108 = v49;
      *(v49 + 16) = sub_1B9ECAD68;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v108;
      v123 = v51;
      v109 = v51;
      *(v51 + 16) = sub_1B9E9F2BC;
      *(v51 + 24) = v52;
      v124 = swift_allocObject();
      v112 = v124;
      *(v124 + 16) = v110;
      v125 = swift_allocObject();
      v114 = v125;
      *(v125 + 16) = v113;
      v53 = swift_allocObject();
      v54 = v115;
      v118 = v53;
      *(v53 + 16) = sub_1B9E9F664;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v118;
      v119 = v55;
      *(v55 + 16) = sub_1B9EA4AC0;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v119;
      v128 = v57;
      v120 = v57;
      *(v57 + 16) = sub_1B9E9F2BC;
      *(v57 + 24) = v58;
      v126 = sub_1B9ED914C();
      v127 = v59;

      v60 = v121;
      v61 = v127;
      *v127 = sub_1B9E96AF4;
      v61[1] = v60;

      v62 = v122;
      v63 = v127;
      v127[2] = sub_1B9E96AF4;
      v63[3] = v62;

      v64 = v123;
      v65 = v127;
      v127[4] = sub_1B9E9F44C;
      v65[5] = v64;

      v66 = v124;
      v67 = v127;
      v127[6] = sub_1B9E96AF4;
      v67[7] = v66;

      v68 = v125;
      v69 = v127;
      v127[8] = sub_1B9E96AF4;
      v69[9] = v68;

      v70 = v127;
      v71 = v128;
      v127[10] = sub_1B9E9F44C;
      v70[11] = v71;
      sub_1B9E8B398();

      if (os_log_type_enabled(v130, v129))
      {
        v95 = v100;
        v90 = sub_1B9ED8E8C();
        v87 = v90;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v93 = 2;
        v91 = sub_1B9E945DC(2);
        v89 = v91;
        v92 = sub_1B9E945DC(0);
        v291 = v90;
        v315 = v91;
        v314 = v92;
        v94 = &v291;
        sub_1B9E94630(v93, &v291);
        sub_1B9E94630(v93, v94);
        v72 = v95;
        v289 = sub_1B9E96AF4;
        v290 = v105;
        sub_1B9E94644(&v289, v94, &v315, &v314);
        v96 = v72;
        v97 = v72;
        if (v72)
        {
          v85 = 0;

          __break(1u);
        }

        else
        {
          v289 = sub_1B9E96AF4;
          v290 = v106;
          sub_1B9E94644(&v289, &v291, &v315, &v314);
          v83 = 0;
          v84 = 0;
          v289 = sub_1B9E9F44C;
          v290 = v109;
          sub_1B9E94644(&v289, &v291, &v315, &v314);
          v81 = 0;
          v82 = 0;
          v289 = sub_1B9E96AF4;
          v290 = v112;
          sub_1B9E94644(&v289, &v291, &v315, &v314);
          v79 = 0;
          v80 = 0;
          v289 = sub_1B9E96AF4;
          v290 = v114;
          sub_1B9E94644(&v289, &v291, &v315, &v314);
          v77 = 0;
          v78 = 0;
          v289 = sub_1B9E9F44C;
          v290 = v120;
          sub_1B9E94644(&v289, &v291, &v315, &v314);
          v75 = 0;
          v76 = 0;
          _os_log_impl(&dword_1B9E4B000, v103, v104, "Failed to convert NSAttributedString [%@] to HTML due to: %@", v87, 0x16u);
          sub_1B9E94690(v89);
          sub_1B9E94690(v92);
          sub_1B9ED8E6C();

          v86 = v75;
        }
      }

      else
      {

        v86 = v100;
      }

      v74 = v86;

      v211(v278, v274);
      v197 = v74;
    }

    v195 = v197;
    sub_1B9ED857C();
    v189 = sub_1B9ED84AC();
    v190 = v24;
    (*(v264 + 8))(v265, v262);
    v325 = v189;
    v326 = v190;

    v191 = v294;
    v192 = v295;

    sub_1B9ED8ADC();
    sub_1B9E8EC5C();
    v193 = sub_1B9ED8ABC();
    v194 = v25;
    (*(v268 + 8))(v269, v266);

    v26 = v327;
    v27 = v328;
    v327 = v193;
    v328 = v194;
    sub_1B9ECABB0(v26, v27);
    sub_1B9E96F0C();

    v196 = v195;
  }

  else
  {
    swift_unknownObjectRetain();
    v306 = v281;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308);
    if (swift_dynamicCast())
    {
      v186 = v304;
      v187 = v305;
    }

    else
    {
      v186 = 0;
      v187 = 0;
    }

    v184 = v187;
    v185 = v186;
    if (v187)
    {
      v182 = v185;
      v183 = v184;
      v181 = v184;
      v178 = v185;
      v300 = v185;
      v301 = v184;
      sub_1B9ED857C();
      v176 = sub_1B9ED84AC();
      v177 = v28;
      (*(v264 + 8))(v265, v262);
      v325 = v176;
      v326 = v177;

      sub_1B9ED8ADC();
      sub_1B9E8EC5C();
      v179 = sub_1B9ED8ABC();
      v180 = v29;
      (*(v268 + 8))(v269, v266);
      v30 = v327;
      v31 = v328;
      v327 = v179;
      v328 = v180;
      sub_1B9ECABB0(v30, v31);
    }

    else
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v175 = swift_dynamicCastObjCClass();
      if (v175)
      {
        v174 = v175;
      }

      else
      {
        swift_unknownObjectRelease();
        v174 = 0;
      }

      v173 = v174;
      if (v174)
      {
        v172 = v173;
        v170 = v173;
        v302 = v173;
        v171 = UIImageJPEGRepresentation(v173, 1.0);
        if (v171)
        {
          v169 = v171;
          v164 = v171;
          v165 = sub_1B9ED844C();
          v166 = v32;

          v167 = v165;
          v168 = v166;
        }

        else
        {
          v167 = 0;
          v168 = 0xF000000000000000;
        }

        v33 = v327;
        v34 = v328;
        v327 = v167;
        v328 = v168;
        sub_1B9ECABB0(v33, v34);
        sub_1B9ECAC40(v273, v261);
        if ((*(v264 + 48))(v261, 1, v262) == 1)
        {
          sub_1B9EC8CA0(v261);
          v162 = 0;
          v163 = 0;
        }

        else
        {
          v160 = sub_1B9ED84DC();
          v161 = v35;
          (*(v264 + 8))(v261, v262);
          v162 = v160;
          v163 = v161;
        }

        v317 = v162;
        v318 = v163;
        v159 = v163 == 0;
        v158 = v159;
        sub_1B9E96F0C();
        if (v158)
        {
          sub_1B9ED851C();
          v156 = sub_1B9ED84AC();
          v157 = v36;
          (*(v264 + 8))(v265, v262);
          v325 = v156;
          v326 = v157;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v303 = v281;
        if (swift_dynamicCast())
        {
          v154 = v323;
          v155 = v324;
        }

        else
        {
          v154 = 0;
          v155 = 0xF000000000000000;
        }

        v152 = v155;
        v153 = v154;
        if (v155 >> 60 == 15)
        {
          sub_1B9EC88D4();
          v147 = 0;
          v148 = swift_allocError();
          *v37 = 2;
          *(v37 + 8) = 2;
          swift_willThrow();
          sub_1B9E96F0C();
          sub_1B9ECAA68(&v327);
          v149 = v148;
          return v73[1];
        }

        v150 = v153;
        v151 = v152;
        v146 = v152;
        v145 = v153;
        v321 = v153;
        v322 = v152;
        sub_1B9ECAB34(v153, v152);
        v38 = v327;
        v39 = v328;
        v327 = v145;
        v328 = v146;
        sub_1B9ECABB0(v38, v39);

        v325 = v270;
        v326 = v271;

        sub_1B9ECAAB8(v145, v146);
      }
    }

    v196 = v259;
  }

  v141 = v196;
  v142 = v327;
  v144 = v328;
  v143 = v328;
  sub_1B9ECABF8(v327, v328);
  if (v144 >> 60 != 15)
  {
    v139 = v142;
    v140 = v143;
    v133 = v143;
    v134 = v142;
    v137 = v141;
    v319 = v142;
    v320 = v143;
    v135 = v325;
    v136 = v326;

    sub_1B9E96F0C();
    sub_1B9ECAA68(&v327);
    v138 = v137;
    return v134;
  }

  sub_1B9EC88D4();
  v131 = 0;
  v132 = swift_allocError();
  *v41 = v131;
  *(v41 + 8) = 2;
  swift_willThrow();
  sub_1B9E96F0C();
  sub_1B9ECAA68(&v327);
  v149 = v132;
  return v73[1];
}

uint64_t sub_1B9EA9DC0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, double a6, double a7)
{
  *(v8 + 264) = v7;
  *(v8 + 256) = a5;
  *(v8 + 248) = a7;
  *(v8 + 240) = a6;
  *(v8 + 354) = a4 & 1;
  *(v8 + 353) = a3 & 1;
  *(v8 + 232) = a2;
  *(v8 + 224) = a1;
  *(v8 + 176) = v8;
  *(v8 + 184) = 0;
  *(v8 + 352) = 0;
  *(v8 + 360) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 192) = 0;
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 216) = 0;
  sub_1B9ED88CC();
  *(v8 + 272) = swift_task_alloc();
  type metadata accessor for SFAirDropUtilities.FileLoadResult();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6330);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v9 = sub_1B9ED842C();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 184) = a2;
  *(v8 + 352) = a3 & 1;
  *(v8 + 360) = a4 & 1;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 192) = a5;
  *(v8 + 200) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B9EAA084, 0);
}

uint64_t sub_1B9EAA084()
{
  v1 = *(v0 + 353);
  *(v0 + 176) = v0;
  if (v1)
  {
    v2 = *(v7 + 304);
    v6 = *(v7 + 232);
    *(v7 + 16) = *(v7 + 176);
    *(v7 + 56) = v2;
    *(v7 + 24) = sub_1B9EAA334;
    v5 = swift_continuation_init();
    *(v7 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6338);
    *(v7 + 112) = v5;
    *(v7 + 80) = MEMORY[0x1E69E9820];
    *(v7 + 88) = 1107296256;
    *(v7 + 92) = 0;
    *(v7 + 96) = sub_1B9EAAB68;
    *(v7 + 104) = &block_descriptor_0;
    [v6 loadFileURLRequiringOpenInPlace:0 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v7 + 16);
  }

  else
  {
    sub_1B9EA64A0(*(v7 + 232), *(v7 + 256), 0);
    swift_willThrow();

    v3 = *(*(v7 + 176) + 8);

    return v3();
  }
}

uint64_t sub_1B9EAA334()
{
  v4 = *v0;
  v4[22] = *v0;
  v1 = v4[6];
  v4[43] = v1;
  if (v1)
  {
    v2 = sub_1B9EAA9AC;
  }

  else
  {
    v2 = sub_1B9EAA48C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EAA48C()
{
  v18 = *(v0 + 336);
  v16 = *(v0 + 320);
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v17 = v2;
  v15 = *(v0 + 288);
  v21 = *(v0 + 354);
  *(v0 + 176) = v0;
  v3 = sub_1B9ECB1B4(v1, v2);
  v4 = (v17 + *(v15 + 48));
  v19 = *v4;
  v20 = v4[1];
  (*(v16 + 32))(v18, v3);
  *(v0 + 160) = v19;
  *(v0 + 168) = v20;
  if (v21)
  {
    v13 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v14 + 336), *(v14 + 240), *(v14 + 248));
  }

  else
  {
    v13 = 0;
  }

  v5 = *(v14 + 320);
  *(v14 + 216) = v13;
  (*(v5 + 16))();
  sub_1B9E8EC5C();
  sub_1B9ED88DC();
  v11 = *(v14 + 336);
  v10 = *(v14 + 312);
  v12 = *(v14 + 280);
  v8 = *(v14 + 224);
  v9 = *(v14 + 320);
  sub_1B9EA56AC(*(v14 + 272), v19, v20, v13, 0, v12);
  sub_1B9ECB244(v12, v8);
  sub_1B9ECB350(v12);
  (*(v9 + 8))(v11, v10);

  v6 = *(*(v14 + 176) + 8);

  return v6();
}

uint64_t sub_1B9EAA9AC()
{
  v0[22] = v0;
  swift_willThrow();
  v7 = v0[43];
  v5 = v0[32];
  v6 = v0[29];
  v1 = v7;
  v0[26] = v7;
  v2 = v7;
  sub_1B9EA64A0(v6, v5, v7);

  swift_willThrow();

  v3 = *(v0[22] + 8);

  return v3();
}

uint64_t sub_1B9EAAB68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = a1;
  v23 = a2;
  v27 = a3;
  v29 = a4;
  v18 = sub_1B9ED842C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v15 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6330);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v15 - v25;
  MEMORY[0x1E69E5928](v4);
  MEMORY[0x1E69E5928](v27);
  MEMORY[0x1E69E5928](v29);
  v30 = *__swift_project_boxed_opaque_existential_1((v28 + 32), *(v28 + 56));
  if (v29)
  {
    v17 = v29;
    v15 = v29;
    v14 = v29;
    sub_1B9EAADD0(v30, v15, v24);
  }

  else
  {
    MEMORY[0x1E69E5928](v23);
    sub_1B9ED83EC();
    (*(v19 + 32))(v26, v22, v18);
    v16 = &v26[*(v24 + 48)];
    MEMORY[0x1E69E5928](v27);
    v5 = sub_1B9ED8AAC();
    v6 = v16;
    v7 = v24;
    v8 = v5;
    v9 = v30;
    v11 = v10;
    v12 = v26;
    *v16 = v8;
    *(v6 + 1) = v11;
    sub_1B9EAAE34(v9, v12, v7);
    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v23);
  }

  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v27);
  return MEMORY[0x1E69E5920](v23);
}

uint64_t sub_1B9EAADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
  return sub_1B9ECA820(v7, a1, a3, v3);
}

uint64_t sub_1B9EAAE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9, double a10)
{
  *(v11 + 632) = v10;
  *(v11 + 624) = v34;
  *(v11 + 616) = v33;
  *(v11 + 608) = v32;
  *(v11 + 600) = v31;
  *(v11 + 592) = v30;
  *(v11 + 584) = v29;
  *(v11 + 576) = v28;
  *(v11 + 568) = a10;
  *(v11 + 560) = a9;
  *(v11 + 300) = v27 & 1;
  *(v11 + 299) = a8 & 1;
  *(v11 + 298) = a7 & 1;
  *(v11 + 297) = a6 & 1;
  *(v11 + 552) = a5;
  *(v11 + 544) = a4;
  *(v11 + 536) = a3;
  *(v11 + 528) = a2;
  *(v11 + 520) = a1;
  *(v11 + 320) = v11;
  *(v11 + 328) = 0;
  *(v11 + 336) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 1128) = 0;
  *(v11 + 1136) = 0;
  *(v11 + 1144) = 0;
  *(v11 + 1152) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 344) = 0;
  *(v11 + 352) = 0;
  *(v11 + 360) = 0;
  *(v11 + 368) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 392) = 0;
  *(v11 + 408) = 0;
  *(v11 + 424) = 0;
  *(v11 + 440) = 0;
  *(v11 + 304) = 0;
  *(v11 + 312) = 0;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 192) = 0;
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 216) = 0;
  *(v11 + 1160) = 0;
  *(v11 + 488) = 0;
  *(v11 + 496) = 0;
  *(v11 + 504) = 0;
  *(v11 + 512) = 0;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8);
  *(v11 + 640) = swift_task_alloc();
  v16 = sub_1B9ED88CC();
  *(v11 + 648) = v16;
  *(v11 + 656) = *(v16 - 8);
  *(v11 + 664) = swift_task_alloc();
  *(v11 + 672) = swift_task_alloc();
  *(v11 + 680) = swift_task_alloc();
  *(v11 + 688) = swift_task_alloc();
  v17 = sub_1B9ED858C();
  *(v11 + 696) = v17;
  *(v11 + 704) = *(v17 - 8);
  *(v11 + 712) = swift_task_alloc();
  v18 = sub_1B9ED842C();
  *(v11 + 720) = v18;
  *(v11 + 728) = *(v18 - 8);
  *(v11 + 736) = swift_task_alloc();
  *(v11 + 744) = swift_task_alloc();
  *(v11 + 752) = swift_task_alloc();
  *(v11 + 760) = swift_task_alloc();
  *(v11 + 768) = swift_task_alloc();
  *(v11 + 776) = swift_task_alloc();
  *(v11 + 784) = swift_task_alloc();
  *(v11 + 792) = swift_task_alloc();
  *(v11 + 800) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
  *(v11 + 808) = swift_task_alloc();
  *(v11 + 816) = swift_task_alloc();
  *(v11 + 824) = swift_task_alloc();
  *(v11 + 832) = swift_task_alloc();
  *(v11 + 840) = swift_task_alloc();
  *(v11 + 848) = swift_task_alloc();
  v19 = sub_1B9ED85DC();
  *(v11 + 856) = v19;
  *(v11 + 864) = *(v19 - 8);
  *(v11 + 872) = swift_task_alloc();
  *(v11 + 880) = swift_task_alloc();
  *(v11 + 888) = swift_task_alloc();
  type metadata accessor for SFAirDropUtilities.FileLoadResult();
  *(v11 + 896) = swift_task_alloc();
  *(v11 + 904) = swift_task_alloc();
  *(v11 + 912) = swift_task_alloc();
  *(v11 + 920) = swift_task_alloc();
  *(v11 + 928) = swift_task_alloc();
  *(v11 + 936) = swift_task_alloc();
  *(v11 + 328) = a2;
  *(v11 + 336) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 1128) = a6 & 1;
  *(v11 + 1136) = a7 & 1;
  *(v11 + 1144) = a8 & 1;
  *(v11 + 1152) = v27 & 1;
  *(v11 + 32) = a9;
  *(v11 + 40) = a10;
  *(v11 + 48) = v28;
  *(v11 + 56) = v29;
  *(v11 + 64) = v30;
  *(v11 + 72) = v31;
  *(v11 + 344) = v32;
  *(v11 + 352) = v33;
  *(v11 + 360) = v34;
  *(v11 + 368) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B9EAB614, 0);
}

uint64_t sub_1B9EAB614()
{
  v95 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v0[40] = v0;
  v82 = static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)(v2, v1);
  v83 = v3;
  v0[118] = v82;
  v0[119] = v3;
  v0[10] = v82;
  v0[11] = v3;

  if (v83)
  {
    v4 = *(v81 + 616);
    *(v81 + 96) = v82;
    *(v81 + 104) = v83;
    *(v81 + 376) = v4;
    *(v81 + 112) = v82;
    *(v81 + 120) = v83;
    *(v81 + 960) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340);
    sub_1B9ECB4A4();
    if (sub_1B9ED8BEC())
    {
      v57 = *(v81 + 624);
      v58 = *(v81 + 528);
      v12 = v57;
      *(v81 + 384) = v57;
      MEMORY[0x1E69E5928](v58);
      if (*(v81 + 384))
      {
        v84 = *(v81 + 384);
      }

      else
      {
        v56 = [*(v81 + 528) registeredTypeIdentifiers];
        v55 = sub_1B9ED8C0C();
        sub_1B9EC88D4();
        v84 = swift_allocError();
        *v13 = v55;
        *(v13 + 8) = 1;
        MEMORY[0x1E69E5920](v56);
        if (*(v81 + 384))
        {
          sub_1B9ECB52C((v81 + 384));
        }
      }

      v14 = *(v81 + 880);
      v34 = *(v81 + 856);
      v35 = *(v81 + 528);
      v33 = *(v81 + 864);
      MEMORY[0x1E69E5920](v35);
      *(v81 + 392) = v84;
      v15 = sub_1B9EA545C();
      (*(v33 + 16))(v14, v15, v34);

      v36 = swift_allocObject();
      *(v36 + 16) = v82;
      *(v36 + 24) = v83;
      MEMORY[0x1E69E5928](v35);
      v38 = swift_allocObject();
      *(v38 + 16) = v35;
      v16 = v84;
      v40 = swift_allocObject();
      *(v40 + 16) = v84;
      sub_1B9E9EF40();

      log = sub_1B9ED85BC();
      v54 = sub_1B9ED8DCC();
      v43 = swift_allocObject();
      *(v43 + 16) = 32;
      v44 = swift_allocObject();
      *(v44 + 16) = 8;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1B9ECB558;
      *(v37 + 24) = v36;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1B9E96AFC;
      *(v45 + 24) = v37;
      v46 = swift_allocObject();
      *(v46 + 16) = 64;
      v47 = swift_allocObject();
      *(v47 + 16) = 8;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_1B9ECAD68;
      *(v39 + 24) = v38;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1B9E9F2BC;
      *(v48 + 24) = v39;
      v49 = swift_allocObject();
      *(v49 + 16) = 64;
      v50 = swift_allocObject();
      *(v50 + 16) = 8;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1B9E9F664;
      *(v41 + 24) = v40;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_1B9EA4AC0;
      *(v42 + 24) = v41;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1B9E9F2BC;
      *(v51 + 24) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      sub_1B9ED914C();
      v52 = v17;

      *v52 = sub_1B9E96AF4;
      v52[1] = v43;

      v52[2] = sub_1B9E96AF4;
      v52[3] = v44;

      v52[4] = sub_1B9E96B08;
      v52[5] = v45;

      v52[6] = sub_1B9E96AF4;
      v52[7] = v46;

      v52[8] = sub_1B9E96AF4;
      v52[9] = v47;

      v52[10] = sub_1B9E9F44C;
      v52[11] = v48;

      v52[12] = sub_1B9E96AF4;
      v52[13] = v49;

      v52[14] = sub_1B9E96AF4;
      v52[15] = v50;

      v52[16] = sub_1B9E9F44C;
      v52[17] = v51;
      sub_1B9E8B398();

      if (os_log_type_enabled(log, v54))
      {
        v30 = sub_1B9ED8E8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v31 = sub_1B9E945DC(2);
        v32 = sub_1B9E945DC(1);
        v85 = v30;
        v86 = v31;
        v87 = v32;
        sub_1B9E94630(2, &v85);
        sub_1B9E94630(3, &v85);
        v88 = sub_1B9E96AF4;
        v89 = v43;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E96AF4;
        v89 = v44;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E96B08;
        v89 = v45;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E96AF4;
        v89 = v46;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E96AF4;
        v89 = v47;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E9F44C;
        v89 = v48;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E96AF4;
        v89 = v49;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E96AF4;
        v89 = v50;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        v88 = sub_1B9E9F44C;
        v89 = v51;
        sub_1B9E94644(&v88, &v85, &v86, &v87);
        _os_log_impl(&dword_1B9E4B000, log, v54, "Attempting to load data type %s which was already attempted. Aborting load for item provider %@ with error %@", v30, 0x20u);
        sub_1B9E94690(v31);
        sub_1B9E94690(v32);
        sub_1B9ED8E6C();
      }

      else
      {
      }

      v28 = *(v81 + 880);
      v29 = *(v81 + 856);
      v27 = *(v81 + 864);
      MEMORY[0x1E69E5920](log);
      (*(v27 + 8))(v28, v29);
      swift_willThrow();

      v18 = *(*(v81 + 320) + 8);

      return v18();
    }

    else
    {
      v5 = *(v81 + 888);
      v66 = *(v81 + 856);
      v67 = *(v81 + 528);
      v65 = *(v81 + 864);
      v6 = sub_1B9EA545C();
      v7 = *(v65 + 16);
      *(v81 + 968) = v7;
      *(v81 + 976) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v5, v6, v66);

      v68 = swift_allocObject();
      *(v68 + 16) = v82;
      *(v68 + 24) = v83;
      MEMORY[0x1E69E5928](v67);
      v70 = swift_allocObject();
      *(v70 + 16) = v67;
      oslog = sub_1B9ED85BC();
      v80 = sub_1B9ED8DBC();
      v72 = swift_allocObject();
      *(v72 + 16) = 32;
      v73 = swift_allocObject();
      *(v73 + 16) = 8;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_1B9ECB558;
      *(v69 + 24) = v68;
      v74 = swift_allocObject();
      *(v74 + 16) = sub_1B9E96AFC;
      *(v74 + 24) = v69;
      v75 = swift_allocObject();
      *(v75 + 16) = 64;
      v76 = swift_allocObject();
      *(v76 + 16) = 8;
      v71 = swift_allocObject();
      *(v71 + 16) = sub_1B9ECAD68;
      *(v71 + 24) = v70;
      v77 = swift_allocObject();
      *(v77 + 16) = sub_1B9E9F2BC;
      *(v77 + 24) = v71;
      *(v81 + 984) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      sub_1B9ED914C();
      v78 = v8;

      *v78 = sub_1B9E96AF4;
      v78[1] = v72;

      v78[2] = sub_1B9E96AF4;
      v78[3] = v73;

      v78[4] = sub_1B9E96B08;
      v78[5] = v74;

      v78[6] = sub_1B9E96AF4;
      v78[7] = v75;

      v78[8] = sub_1B9E96AF4;
      v78[9] = v76;

      v78[10] = sub_1B9E9F44C;
      v78[11] = v77;
      sub_1B9E8B398();

      if (os_log_type_enabled(oslog, v80))
      {
        buf = sub_1B9ED8E8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v63 = sub_1B9E945DC(1);
        v64 = sub_1B9E945DC(1);
        v90 = buf;
        v91 = v63;
        v92 = v64;
        sub_1B9E94630(2, &v90);
        sub_1B9E94630(2, &v90);
        v93 = sub_1B9E96AF4;
        v94 = v72;
        sub_1B9E94644(&v93, &v90, &v91, &v92);
        v93 = sub_1B9E96AF4;
        v94 = v73;
        sub_1B9E94644(&v93, &v90, &v91, &v92);
        v93 = sub_1B9E96B08;
        v94 = v74;
        sub_1B9E94644(&v93, &v90, &v91, &v92);
        v93 = sub_1B9E96AF4;
        v94 = v75;
        sub_1B9E94644(&v93, &v90, &v91, &v92);
        v93 = sub_1B9E96AF4;
        v94 = v76;
        sub_1B9E94644(&v93, &v90, &v91, &v92);
        v93 = sub_1B9E9F44C;
        v94 = v77;
        sub_1B9E94644(&v93, &v90, &v91, &v92);
        _os_log_impl(&dword_1B9E4B000, oslog, v80, "Loading data type %s from item provider %@", buf, 0x16u);
        sub_1B9E94690(v63);
        sub_1B9E94690(v64);
        sub_1B9ED8E6C();
      }

      else
      {
      }

      v60 = *(v81 + 888);
      v61 = *(v81 + 856);
      v59 = *(v81 + 864);
      MEMORY[0x1E69E5920](oslog);
      v9 = *(v59 + 8);
      *(v81 + 992) = v9;
      *(v81 + 1000) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9(v60, v61);
      v10 = swift_task_alloc();
      *(v81 + 1008) = v10;
      *v10 = *(v81 + 320);
      v10[1] = sub_1B9EADB24;

      return sub_1B9EB82D8(v82, v83);
    }
  }

  else
  {
    v19 = swift_task_alloc();
    *(v81 + 1064) = v19;
    *v19 = *(v81 + 320);
    v19[1] = sub_1B9EB3588;
    v20 = *(v81 + 904);
    v21 = *(v81 + 624);
    v22 = *(v81 + 568);
    v23 = *(v81 + 560);
    v24 = *(v81 + 528);
    v25 = *(v81 + 297) & 1;
    v26 = *(v81 + 299) & 1;

    return sub_1B9EA9DC0(v20, v24, v25, v26, v21, v23, v22);
  }
}

uint64_t sub_1B9EADB24(uint64_t a1)
{
  v5 = *v2;
  v5[40] = *v2;
  v5[127] = a1;
  v5[128] = v1;

  if (v1)
  {
    v3 = sub_1B9EB3F9C;
  }

  else
  {
    v3 = sub_1B9EADC98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0);
}

uint64_t sub_1B9EADC98()
{
  v243 = v0;
  v232 = v0[127];
  v231 = v0[119];
  v230 = v0[118];
  v0[40] = v0;
  swift_unknownObjectRetain();
  v0[50] = v232;

  v0[16] = v230;
  v0[17] = v231;
  objc_opt_self();
  v233 = swift_dynamicCastObjCClass();
  if (v233)
  {
    v228 = v233;
  }

  else
  {
    swift_unknownObjectRelease();
    v228 = 0;
  }

  if (v228)
  {
    v223 = [v228 string];
    v224 = sub_1B9ED8AAC();
    v225 = v1;
    MEMORY[0x1E69E5920](v228);
    MEMORY[0x1E69E5920](v223);
    v226 = v224;
    v227 = v225;
  }

  else
  {
    v226 = 0;
    v227 = 0;
  }

  *(v229 + 160) = v226;
  *(v229 + 168) = v227;
  if (*(v229 + 168))
  {
    *(v229 + 144) = *(v229 + 160);
  }

  else
  {
    v222 = *(v229 + 400);
    swift_unknownObjectRetain();
    *(v229 + 464) = v222;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v229 + 144) = 0;
      *(v229 + 152) = 0;
    }

    if (*(v229 + 168))
    {
      sub_1B9E96F0C();
    }
  }

  v220 = *(v229 + 144);
  v221 = *(v229 + 152);
  *(v229 + 1032) = v221;
  *(v229 + 176) = v220;
  *(v229 + 184) = v221;

  if (v221)
  {
    v216 = *(v229 + 848);
    v219 = *(v229 + 840);
    v218 = *(v229 + 720);
    v217 = *(v229 + 728);
    *(v229 + 256) = v220;
    *(v229 + 264) = v221;
    sub_1B9ED840C();
    sub_1B9ECB644(v216, v219);
    if ((*(v217 + 48))(v219, 1, v218) == 1)
    {
      sub_1B9EA4804(*(v229 + 840));
    }

    else
    {
      (*(*(v229 + 728) + 32))(*(v229 + 800), *(v229 + 840), *(v229 + 720));
      *(v229 + 272) = sub_1B9ED83FC();
      *(v229 + 280) = v2;
      v215 = *(v229 + 280) != 0;
      sub_1B9E96F0C();
      if (v215)
      {
        v212 = *(v229 + 800);
        v206 = *(v229 + 792);
        v213 = *(v229 + 720);
        v208 = *(v229 + 712);
        v209 = *(v229 + 696);
        v205 = *(v229 + 728);
        v207 = *(v229 + 704);
        (*(v205 + 16))(v206);
        *(v229 + 400) = sub_1B9ED83AC();
        swift_unknownObjectRelease();
        v214 = *(v205 + 8);
        v214(v206, v213);
        sub_1B9ED84FC();
        v210 = sub_1B9ED84AC();
        v211 = v3;
        (*(v207 + 8))(v208, v209);
        *(v229 + 128) = v210;
        *(v229 + 136) = v211;

        v214(v212, v213);
      }

      else
      {
        (*(*(v229 + 728) + 8))(*(v229 + 800), *(v229 + 720));
      }
    }

    sub_1B9EA4804(*(v229 + 848));
  }

  v204 = *(v229 + 400);
  swift_unknownObjectRetain();
  *(v229 + 472) = v204;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308);
  if (swift_dynamicCast())
  {
    (*(*(v229 + 728) + 56))(*(v229 + 832), 0, 1, *(v229 + 720));
  }

  else
  {
    (*(*(v229 + 728) + 56))(*(v229 + 832), 1, 1, *(v229 + 720));
  }

  v4 = (*(v229 + 728) + 48);
  v203 = *v4;
  if ((*v4)(*(v229 + 832), 1, *(v229 + 720)) != 1)
  {
    v202 = *(v229 + 299);
    (*(*(v229 + 728) + 32))(*(v229 + 784), *(v229 + 832), *(v229 + 720));
    if (v202)
    {
      v201 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v229 + 784), *(v229 + 560), *(v229 + 568));
    }

    else
    {
      v201 = 0;
    }

    *(v229 + 1040) = v201;
    v5 = *(v229 + 300);
    *(v229 + 512) = v201;
    if (v5)
    {
      v6 = swift_task_alloc();
      *(v229 + 1048) = v6;
      *v6 = *(v229 + 320);
      v6[1] = sub_1B9EB2EF0;
      v7 = *(v229 + 784);
      v8 = *(v229 + 688);
      v9 = *(v229 + 584);
      v10 = *(v229 + 576);

      return sub_1B9EBB740(v8, v7, v10, v9);
    }

    v12 = *(v229 + 1024);
    (*(*(v229 + 728) + 16))();
    sub_1B9E8EC5C();
    sub_1B9ED88DC();
    if (!v12)
    {
      v192 = *(v229 + 1040);
      v194 = *(v229 + 936);
      v193 = *(v229 + 928);
      v199 = *(v229 + 784);
      v200 = *(v229 + 720);
      v197 = *(v229 + 688);
      v189 = *(v229 + 680);
      v196 = *(v229 + 648);
      v198 = *(v229 + 728);
      v195 = *(v229 + 656);
      (*(v195 + 16))();
      v190 = *(v229 + 128);
      v191 = *(v229 + 136);

      sub_1B9EA56AC(v189, v190, v191, v192, 0, v193);
      v13 = sub_1B9ECB3F0(v193, v194);
      (*(v195 + 8))(v197, v196, v13);
      (*(v198 + 8))(v199, v200);
LABEL_83:

      sub_1B9E96F0C();
      swift_unknownObjectRelease();

      v97 = *(v229 + 936);
      sub_1B9ECB244(v97, *(v229 + 520));
      sub_1B9ECB350(v97);

      v26 = *(*(v229 + 320) + 8);

      return v26();
    }

    v58 = *(v229 + 784);
    v59 = *(v229 + 720);
    v57 = *(v229 + 728);
    MEMORY[0x1E69E5920](v201);
    (*(v57 + 8))(v58, v59);

    sub_1B9E96F0C();
    swift_unknownObjectRelease();
    v186 = v12;
    goto LABEL_87;
  }

  v188 = *(v229 + 298);
  sub_1B9EA4804(*(v229 + 832));

  if (v188)
  {
    v241 = v220;
    v242 = v221;
    v187 = v221 != 0;
  }

  else
  {
    v187 = 0;
  }

  if (v187)
  {
    sub_1B9EC88D4();
    v185 = swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 2;
    swift_willThrow();

    sub_1B9E96F0C();
    swift_unknownObjectRelease();
    v186 = v185;
    goto LABEL_87;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v184 = swift_dynamicCastObjCClass();
  if (v184)
  {
    v183 = v184;
  }

  else
  {
    swift_unknownObjectRelease();
    v183 = 0;
  }

  if (!v183)
  {
LABEL_66:
    v18 = *(v229 + 1024);
    v127 = *(v229 + 640);
    v129 = *(v229 + 552);
    v128 = *(v229 + 544);
    v124 = *(v229 + 128);
    v125 = *(v229 + 136);

    sub_1B9EBC2BC(v124, v125, 1, v127);
    v126 = *(v229 + 400);
    swift_unknownObjectRetain();
    v130 = sub_1B9EA8498(v126, v127, v128, v129);
    v131 = v19;
    v132 = v20;
    v133 = v21;
    if (!v18)
    {
      swift_unknownObjectRelease();
      *(v229 + 192) = v130;
      *(v229 + 200) = v131;
      *(v229 + 208) = v132;
      *(v229 + 216) = v133;

      *(v229 + 240) = v132;
      *(v229 + 248) = v133;
      if (*(v229 + 248))
      {
        *(v229 + 224) = *(v229 + 240);
      }

      else
      {
        sub_1B9E9F4E4((v229 + 128), (v229 + 224));
        if (*(v229 + 248))
        {
          sub_1B9E96F0C();
        }
      }

      v123 = *(v229 + 584);
      v120 = *(v229 + 224);
      v121 = *(v229 + 232);

      *(v229 + 128) = v120;
      *(v229 + 136) = v121;

      sub_1B9ECAB34(v130, v131);
      v119 = sub_1B9ED843C();
      sub_1B9ECAAB8(v130, v131);
      v122 = sub_1B9ED8A9C();

      if (v123)
      {
        v117 = sub_1B9ED8A9C();

        v118 = v117;
      }

      else
      {
        v118 = 0;
      }

      v113 = *(v229 + 792);
      v112 = *(v229 + 744);
      v114 = *(v229 + 720);
      v116 = *(v229 + 299);
      v111 = *(v229 + 728);

      v110 = sub_1B9ED8A9C();

      v115 = SFSaveDataToTempFile();
      MEMORY[0x1E69E5920](v110);
      MEMORY[0x1E69E5920](v118);
      MEMORY[0x1E69E5920](v122);
      MEMORY[0x1E69E5920](v119);
      sub_1B9ED83EC();
      (*(v111 + 32))(v112, v113, v114);
      MEMORY[0x1E69E5920](v115);
      *(v229 + 480) = 0;
      if (v116)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v109 = swift_dynamicCastObjCClass();
        if (v109)
        {
          v108 = v109;
        }

        else
        {
          swift_unknownObjectRelease();
          v108 = 0;
        }

        if (v108)
        {
          *(v229 + 488) = v108;
          MEMORY[0x1E69E5928](v108);
          v22 = *(v229 + 480);
          *(v229 + 480) = v108;
          MEMORY[0x1E69E5920](v22);
          MEMORY[0x1E69E5920](v108);
        }

        else
        {
          v23 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v229 + 744), *(v229 + 560), *(v229 + 568));
          v24 = *(v229 + 480);
          *(v229 + 480) = v23;
          MEMORY[0x1E69E5920](v24);
        }
      }

      v239 = v220;
      v240 = v221;
      v25 = *(v229 + 728);
      *(v229 + 1160) = v221 != 0;
      (*(v25 + 16))();
      sub_1B9E8EC5C();
      sub_1B9ED88DC();
      v103 = *(v229 + 936);
      v102 = *(v229 + 912);
      v106 = *(v229 + 744);
      v105 = *(v229 + 720);
      v101 = *(v229 + 664);
      v107 = *(v229 + 640);
      v104 = *(v229 + 728);
      v98 = *(v229 + 128);
      v99 = *(v229 + 136);

      v100 = *(v229 + 480);
      MEMORY[0x1E69E5928](v100);
      sub_1B9EA56AC(v101, v98, v99, v100, v221 != 0, v102);
      sub_1B9ECB3F0(v102, v103);
      sub_1B9E9F1DC((v229 + 480));
      (*(v104 + 8))(v106, v105);

      sub_1B9ECAAB8(v130, v131);
      sub_1B9EC8CA0(v107);
      goto LABEL_83;
    }

    v54 = *(v229 + 640);
    swift_unknownObjectRelease();
    sub_1B9EC8CA0(v54);

    sub_1B9E96F0C();
    swift_unknownObjectRelease();
    v186 = v18;
    goto LABEL_87;
  }

  *(v229 + 496) = v183;
  v182 = [v183 imageURL];
  if (v182)
  {
    v181 = *(v229 + 824);
    v179 = *(v229 + 792);
    v180 = *(v229 + 720);
    v178 = *(v229 + 728);
    sub_1B9ED83EC();
    (*(v178 + 32))(v181, v179, v180);
    (*(v178 + 56))(v181, 0, 1, v180);
    MEMORY[0x1E69E5920](v182);
  }

  else
  {
    (*(*(v229 + 728) + 56))(*(v229 + 824), 1, 1, *(v229 + 720));
  }

  if (v203(*(v229 + 824), 1, *(v229 + 720)) == 1)
  {
    sub_1B9EA4804(*(v229 + 824));
    MEMORY[0x1E69E5920](v183);
    goto LABEL_66;
  }

  v177 = *(v229 + 299);
  v15 = (*(v229 + 728) + 32);
  v176 = *v15;
  (*v15)(*(v229 + 768), *(v229 + 824), *(v229 + 720));
  if (v177)
  {
    v175 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v229 + 768), *(v229 + 560), *(v229 + 568));
  }

  else
  {
    v175 = 0;
  }

  v171 = *(v229 + 792);
  v170 = *(v229 + 720);
  v167 = *(v229 + 600);
  v168 = *(v229 + 592);
  v169 = *(v229 + 728);
  *(v229 + 504) = v175;
  type metadata accessor for SFAirDropUtilities();
  sub_1B9EBC0F4(v168, v167, v171);
  v172 = sub_1B9ED83AC();
  v173 = *(v169 + 8);
  v173(v171, v170);
  v174 = [v183 videoURL];
  if (v174)
  {
    v166 = *(v229 + 816);
    v163 = *(v229 + 792);
    v165 = *(v229 + 720);
    v164 = *(v229 + 728);
    sub_1B9ED83EC();
    v176(v166, v163, v165);
    (*(v164 + 56))(v166, 0, 1, v165);
    MEMORY[0x1E69E5920](v174);
  }

  else
  {
    (*(*(v229 + 728) + 56))(*(v229 + 816), 1, 1, *(v229 + 720));
  }

  if (v203(*(v229 + 816), 1, *(v229 + 720)) == 1)
  {
    v162 = 0;
  }

  else
  {
    v160 = *(v229 + 816);
    v159 = *(v229 + 720);
    v161 = sub_1B9ED83AC();
    v173(v160, v159);
    v162 = v161;
  }

  v158 = [v183 imageURL];
  if (v158)
  {
    v157 = *(v229 + 808);
    v154 = *(v229 + 792);
    v156 = *(v229 + 720);
    v155 = *(v229 + 728);
    sub_1B9ED83EC();
    v176(v157, v154, v156);
    (*(v155 + 56))(v157, 0, 1, v156);
    MEMORY[0x1E69E5920](v158);
  }

  else
  {
    (*(*(v229 + 728) + 56))(*(v229 + 808), 1, 1, *(v229 + 720));
  }

  if (v203(*(v229 + 808), 1, *(v229 + 720)) == 1)
  {
    v153 = 0;
  }

  else
  {
    v151 = *(v229 + 808);
    v150 = *(v229 + 720);
    v152 = sub_1B9ED83AC();
    v173(v151, v150);
    v153 = v152;
  }

  v16 = *(v229 + 1024);
  v144 = *(v229 + 792);
  v147 = *(v229 + 760);
  v149 = *(v229 + 752);
  v148 = *(v229 + 720);
  v146 = *(v229 + 728);
  v142 = [v183 uniqueIdentifier];
  sub_1B9ED8AAC();
  v143 = sub_1B9ED8A9C();

  MEMORY[0x1E69E5920](v142);
  v145 = SFCreateLivePhotoBundle();
  MEMORY[0x1E69E5920](v143);
  MEMORY[0x1E69E5920](v153);
  MEMORY[0x1E69E5920](v162);
  MEMORY[0x1E69E5920](v172);
  sub_1B9ED83EC();
  v176(v147, v144, v148);
  MEMORY[0x1E69E5920](v145);
  (*(v146 + 16))(v149, v147, v148);
  sub_1B9E8EC5C();
  sub_1B9ED88DC();
  if (!v16)
  {
    v138 = *(v229 + 936);
    v137 = *(v229 + 920);
    v140 = *(v229 + 768);
    v139 = *(v229 + 760);
    v141 = *(v229 + 720);
    v134 = *(v229 + 672);
    v135 = *(v229 + 128);
    v136 = *(v229 + 136);

    sub_1B9EA56AC(v134, v135, v136, v175, 0, v137);
    v17 = sub_1B9ECB3F0(v137, v138);
    (v173)(v139, v141, v17);
    v173(v140, v141);
    MEMORY[0x1E69E5920](v183);
    goto LABEL_83;
  }

  v55 = *(v229 + 768);
  v56 = *(v229 + 720);
  (v173)(*(v229 + 760));
  MEMORY[0x1E69E5920](v175);
  v173(v55, v56);
  MEMORY[0x1E69E5920](v183);

  sub_1B9E96F0C();
  swift_unknownObjectRelease();
  v186 = v16;
LABEL_87:
  *(v229 + 1080) = v186;
  v80 = *(v229 + 968);
  v81 = *(v229 + 944);
  v27 = *(v229 + 872);
  v79 = *(v229 + 856);
  v82 = *(v229 + 952);
  v28 = v186;
  *(v229 + 408) = v186;
  v29 = sub_1B9EA545C();
  v80(v27, v29, v79);

  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  *(v83 + 24) = v82;
  v30 = v186;
  v85 = swift_allocObject();
  *(v85 + 16) = v186;
  sub_1B9E9EF40();

  oslog = sub_1B9ED85BC();
  v96 = sub_1B9ED8DCC();
  v88 = swift_allocObject();
  *(v88 + 16) = 32;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1B9ECB558;
  *(v84 + 24) = v83;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1B9E96AFC;
  *(v90 + 24) = v84;
  v91 = swift_allocObject();
  *(v91 + 16) = 64;
  v92 = swift_allocObject();
  *(v92 + 16) = 8;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1B9E9F664;
  *(v86 + 24) = v85;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1B9EA4AC0;
  *(v87 + 24) = v86;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_1B9E9F2BC;
  *(v93 + 24) = v87;
  sub_1B9ED914C();
  v94 = v31;

  *v94 = sub_1B9E96AF4;
  v94[1] = v88;

  v94[2] = sub_1B9E96AF4;
  v94[3] = v89;

  v94[4] = sub_1B9E96B08;
  v94[5] = v90;

  v94[6] = sub_1B9E96AF4;
  v94[7] = v91;

  v94[8] = sub_1B9E96AF4;
  v94[9] = v92;

  v94[10] = sub_1B9E9F44C;
  v94[11] = v93;
  sub_1B9E8B398();

  if (os_log_type_enabled(oslog, v96))
  {
    buf = sub_1B9ED8E8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
    v77 = sub_1B9E945DC(1);
    v78 = sub_1B9E945DC(1);
    v234 = buf;
    v235 = v77;
    v236 = v78;
    sub_1B9E94630(2, &v234);
    sub_1B9E94630(2, &v234);
    v237 = sub_1B9E96AF4;
    v238 = v88;
    sub_1B9E94644(&v237, &v234, &v235, &v236);
    v237 = sub_1B9E96AF4;
    v238 = v89;
    sub_1B9E94644(&v237, &v234, &v235, &v236);
    v237 = sub_1B9E96B08;
    v238 = v90;
    sub_1B9E94644(&v237, &v234, &v235, &v236);
    v237 = sub_1B9E96AF4;
    v238 = v91;
    sub_1B9E94644(&v237, &v234, &v235, &v236);
    v237 = sub_1B9E96AF4;
    v238 = v92;
    sub_1B9E94644(&v237, &v234, &v235, &v236);
    v237 = sub_1B9E9F44C;
    v238 = v93;
    sub_1B9E94644(&v237, &v234, &v235, &v236);
    _os_log_impl(&dword_1B9E4B000, oslog, v96, "Failed to load item for type identifier %s with error: %@", buf, 0x16u);
    sub_1B9E94690(v77);
    sub_1B9E94690(v78);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v70 = *(v229 + 992);
  v72 = *(v229 + 944);
  v68 = *(v229 + 872);
  v69 = *(v229 + 856);
  v71 = *(v229 + 536);
  v73 = *(v229 + 952);
  MEMORY[0x1E69E5920](oslog);
  v70(v68, v69);

  *(v229 + 416) = v71;

  v74 = swift_task_alloc();
  *(v74 + 16) = v72;
  *(v74 + 24) = v73;
  sub_1B9ECB594();
  v75 = sub_1B9ED8F2C();
  *(v229 + 1088) = v75;

  *(v229 + 424) = v75;
  v32 = v186;
  *(v229 + 432) = v186;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
  if (swift_dynamicCast())
  {
    v66 = *(v229 + 288);
    v67 = *(v229 + 296);
  }

  else
  {
    v66 = 0;
    v67 = -1;
  }

  if (v67 == 255)
  {
    goto LABEL_100;
  }

  *(v229 + 304) = v66;
  *(v229 + 312) = v67;
  sub_1B9EC8950(v66, v67);
  if (v67 != 2 || v66 != 1)
  {
    sub_1B9EC89AC(v66, v67);
    sub_1B9EC89AC(v66, v67);
LABEL_100:
    v61 = *(v229 + 944);
    v65 = *(v229 + 624);
    v62 = *(v229 + 952);
    sub_1B9ED914C();
    v63 = v35;

    *v63 = v61;
    v63[1] = v62;
    sub_1B9E8B398();
    v64 = sub_1B9ED8C1C();
    *(v229 + 1096) = v64;

    *(v229 + 440) = v64;
    v36 = v65;
    *(v229 + 456) = v65;
    v37 = v186;
    if (*(v229 + 456))
    {
      *(v229 + 448) = *(v229 + 456);
    }

    else
    {
      v38 = v186;
      *(v229 + 448) = v186;
      if (*(v229 + 456))
      {
        sub_1B9ECB52C((v229 + 456));
      }
    }

    v60 = *(v229 + 448);
    *(v229 + 1104) = v60;
    v39 = swift_task_alloc();
    *(v229 + 1112) = v39;
    *v39 = *(v229 + 320);
    v39[1] = sub_1B9EB3A3C;
    v40 = *(v229 + 896);
    v41 = *(v229 + 608);
    v42 = *(v229 + 600);
    v43 = *(v229 + 592);
    v44 = *(v229 + 584);
    v45 = *(v229 + 576);
    v46.n128_u64[0] = *(v229 + 568);
    v47.n128_u64[0] = *(v229 + 560);
    v48 = *(v229 + 299);
    v49 = *(v229 + 298);
    v50 = *(v229 + 297);
    v51 = *(v229 + 552);
    v52 = *(v229 + 544);
    v53 = *(v229 + 528);
    v245 = *(v229 + 300);
    v246 = v45;
    v247 = v44;
    v248 = v43;
    v249 = v42;
    v250 = v41;
    v251 = v64;
    v252 = v60;

    return sub_1B9EAAE90(v40, v53, v75, v52, v51, v50 & 1, v49 & 1, v48 & 1, v47, v46);
  }

  sub_1B9EC8950(1, v67);
  sub_1B9EC88D4();
  swift_allocError();
  *v33 = 1;
  *(v33 + 8) = v67;
  swift_willThrow();
  sub_1B9EC89AC(1, v67);

  v34 = *(*(v229 + 320) + 8);

  return v34();
}

uint64_t sub_1B9EB2EF0()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1056) = v0;

  if (v0)
  {
    v2 = sub_1B9EB5908;
  }

  else
  {
    v2 = sub_1B9EB305C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EB305C()
{
  v0[40] = v0;
  v7 = v0[130];
  v9 = v0[117];
  v8 = v0[116];
  v14 = v0[98];
  v13 = v0[91];
  v15 = v0[90];
  v12 = v0[86];
  v4 = v0[85];
  v10 = v0[82];
  v11 = v0[81];
  (*(v10 + 16))();
  v5 = v0[16];
  v6 = v0[17];

  sub_1B9EA56AC(v4, v5, v6, v7, 0, v8);
  v1 = sub_1B9ECB3F0(v8, v9);
  (*(v10 + 8))(v12, v11, v1);
  (*(v13 + 8))(v14, v15);

  sub_1B9E96F0C();
  swift_unknownObjectRelease();

  v16 = v0[117];
  sub_1B9ECB244(v16, v0[65]);
  sub_1B9ECB350(v16);

  v2 = *(v0[40] + 8);

  return v2();
}

uint64_t sub_1B9EB3588()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1072) = v0;

  if (v0)
  {
    v2 = sub_1B9EB766C;
  }

  else
  {
    v2 = sub_1B9EB36F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EB36F4()
{
  v1 = v0[117];
  v2 = v0[113];
  v0[40] = v0;
  sub_1B9ECB3F0(v2, v1);
  v5 = v0[117];
  sub_1B9ECB244(v5, v0[65]);
  sub_1B9ECB350(v5);

  v3 = *(v0[40] + 8);

  return v3();
}

uint64_t sub_1B9EB3A3C()
{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 320) = *v1;
  *(v5 + 1120) = v0;

  if (v0)
  {
    v2 = sub_1B9EB72E4;
  }

  else
  {

    v2 = sub_1B9EB3BC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EB3BC0()
{
  v5 = v0[135];
  v1 = v0[117];
  v2 = v0[112];
  v0[40] = v0;
  sub_1B9ECB3F0(v2, v1);

  v6 = v0[117];
  sub_1B9ECB244(v6, v0[65]);
  sub_1B9ECB350(v6);

  v3 = *(v0[40] + 8);

  return v3();
}

uint64_t sub_1B9EB3F9C()
{
  v72 = v0;
  *(v0 + 320) = v0;
  v52 = *(v0 + 1024);
  *(v0 + 1080) = v52;
  v49 = *(v0 + 968);
  v51 = *(v0 + 952);
  v50 = *(v0 + 944);
  v1 = *(v0 + 872);
  v48 = *(v0 + 856);
  v2 = v52;
  *(v0 + 408) = v52;
  v3 = sub_1B9EA545C();
  v49(v1, v3, v48);

  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v51;
  v4 = v52;
  v55 = swift_allocObject();
  *(v55 + 16) = v52;
  sub_1B9E9EF40();

  oslog = sub_1B9ED85BC();
  v66 = sub_1B9ED8DCC();
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1B9ECB558;
  *(v54 + 24) = v53;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1B9E96AFC;
  *(v60 + 24) = v54;
  v61 = swift_allocObject();
  *(v61 + 16) = 64;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1B9E9F664;
  *(v56 + 24) = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1B9EA4AC0;
  *(v57 + 24) = v56;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1B9E9F2BC;
  *(v63 + 24) = v57;
  sub_1B9ED914C();
  v64 = v5;

  *v64 = sub_1B9E96AF4;
  v64[1] = v58;

  v64[2] = sub_1B9E96AF4;
  v64[3] = v59;

  v64[4] = sub_1B9E96B08;
  v64[5] = v60;

  v64[6] = sub_1B9E96AF4;
  v64[7] = v61;

  v64[8] = sub_1B9E96AF4;
  v64[9] = v62;

  v64[10] = sub_1B9E9F44C;
  v64[11] = v63;
  sub_1B9E8B398();

  if (os_log_type_enabled(oslog, v66))
  {
    buf = sub_1B9ED8E8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
    v46 = sub_1B9E945DC(1);
    v47 = sub_1B9E945DC(1);
    v67 = buf;
    v68 = v46;
    v69 = v47;
    sub_1B9E94630(2, &v67);
    sub_1B9E94630(2, &v67);
    v70 = sub_1B9E96AF4;
    v71 = v58;
    sub_1B9E94644(&v70, &v67, &v68, &v69);
    v70 = sub_1B9E96AF4;
    v71 = v59;
    sub_1B9E94644(&v70, &v67, &v68, &v69);
    v70 = sub_1B9E96B08;
    v71 = v60;
    sub_1B9E94644(&v70, &v67, &v68, &v69);
    v70 = sub_1B9E96AF4;
    v71 = v61;
    sub_1B9E94644(&v70, &v67, &v68, &v69);
    v70 = sub_1B9E96AF4;
    v71 = v62;
    sub_1B9E94644(&v70, &v67, &v68, &v69);
    v70 = sub_1B9E9F44C;
    v71 = v63;
    sub_1B9E94644(&v70, &v67, &v68, &v69);
    _os_log_impl(&dword_1B9E4B000, oslog, v66, "Failed to load item for type identifier %s with error: %@", buf, 0x16u);
    sub_1B9E94690(v46);
    sub_1B9E94690(v47);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v39 = *(v0 + 992);
  v41 = *(v0 + 944);
  v37 = *(v0 + 872);
  v38 = *(v0 + 856);
  v40 = *(v0 + 536);
  v42 = *(v0 + 952);
  MEMORY[0x1E69E5920](oslog);
  v39(v37, v38);

  *(v0 + 416) = v40;

  v43 = swift_task_alloc();
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  sub_1B9ECB594();
  v44 = sub_1B9ED8F2C();
  *(v0 + 1088) = v44;

  *(v0 + 424) = v44;
  v6 = v52;
  *(v0 + 432) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
  if (swift_dynamicCast())
  {
    v35 = *(v0 + 288);
    v36 = *(v0 + 296);
  }

  else
  {
    v35 = 0;
    v36 = -1;
  }

  if (v36 == 255)
  {
    goto LABEL_14;
  }

  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  sub_1B9EC8950(v35, v36);
  if (v36 != 2 || v35 != 1)
  {
    sub_1B9EC89AC(v35, v36);
    sub_1B9EC89AC(v35, v36);
LABEL_14:
    v30 = *(v0 + 944);
    v34 = *(v0 + 624);
    v31 = *(v0 + 952);
    sub_1B9ED914C();
    v32 = v10;

    *v32 = v30;
    v32[1] = v31;
    sub_1B9E8B398();
    v33 = sub_1B9ED8C1C();
    *(v0 + 1096) = v33;

    *(v0 + 440) = v33;
    v11 = v34;
    *(v0 + 456) = v34;
    v12 = v52;
    if (*(v0 + 456))
    {
      *(v0 + 448) = *(v0 + 456);
    }

    else
    {
      v13 = v52;
      *(v0 + 448) = v52;
      if (*(v0 + 456))
      {
        sub_1B9ECB52C((v0 + 456));
      }
    }

    v29 = *(v0 + 448);
    *(v0 + 1104) = v29;
    v14 = swift_task_alloc();
    *(v0 + 1112) = v14;
    *v14 = *(v0 + 320);
    v14[1] = sub_1B9EB3A3C;
    v15 = *(v0 + 896);
    v16 = *(v0 + 608);
    v17 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);
    v20 = *(v0 + 576);
    v21.n128_u64[0] = *(v0 + 568);
    v22.n128_u64[0] = *(v0 + 560);
    v23 = *(v0 + 299);
    v24 = *(v0 + 298);
    v25 = *(v0 + 297);
    v26 = *(v0 + 552);
    v27 = *(v0 + 544);
    v28 = *(v0 + 528);
    v74 = *(v0 + 300);
    v75 = v20;
    v76 = v19;
    v77 = v18;
    v78 = v17;
    v79 = v16;
    v80 = v33;
    v81 = v29;

    return sub_1B9EAAE90(v15, v28, v44, v27, v26, v25 & 1, v24 & 1, v23 & 1, v22, v21);
  }

  sub_1B9EC8950(1, v36);
  sub_1B9EC88D4();
  swift_allocError();
  *v7 = 1;
  *(v7 + 8) = v36;
  swift_willThrow();
  sub_1B9EC89AC(1, v36);

  v8 = *(*(v0 + 320) + 8);

  return v8();
}

uint64_t sub_1B9EB5908()
{
  v77 = v0;
  v1 = v0[130];
  v50 = v0[98];
  v49 = v0[91];
  v51 = v0[90];
  v0[40] = v0;
  MEMORY[0x1E69E5920](v1);
  (*(v49 + 8))(v50, v51);

  sub_1B9E96F0C();
  swift_unknownObjectRelease();
  v57 = *(v52 + 1056);
  *(v52 + 1080) = v57;
  v54 = *(v52 + 968);
  v56 = *(v52 + 952);
  v55 = *(v52 + 944);
  v2 = *(v52 + 872);
  v53 = *(v52 + 856);
  v3 = v57;
  *(v52 + 408) = v57;
  v4 = sub_1B9EA545C();
  v54(v2, v4, v53);

  v58 = swift_allocObject();
  *(v58 + 16) = v55;
  *(v58 + 24) = v56;
  v5 = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  sub_1B9E9EF40();

  oslog = sub_1B9ED85BC();
  v71 = sub_1B9ED8DCC();
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1B9ECB558;
  *(v59 + 24) = v58;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1B9E96AFC;
  *(v65 + 24) = v59;
  v66 = swift_allocObject();
  *(v66 + 16) = 64;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1B9E9F664;
  *(v61 + 24) = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1B9EA4AC0;
  *(v62 + 24) = v61;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1B9E9F2BC;
  *(v68 + 24) = v62;
  sub_1B9ED914C();
  v69 = v6;

  *v69 = sub_1B9E96AF4;
  v69[1] = v63;

  v69[2] = sub_1B9E96AF4;
  v69[3] = v64;

  v69[4] = sub_1B9E96B08;
  v69[5] = v65;

  v69[6] = sub_1B9E96AF4;
  v69[7] = v66;

  v69[8] = sub_1B9E96AF4;
  v69[9] = v67;

  v69[10] = sub_1B9E9F44C;
  v69[11] = v68;
  sub_1B9E8B398();

  if (os_log_type_enabled(oslog, v71))
  {
    buf = sub_1B9ED8E8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
    v47 = sub_1B9E945DC(1);
    v48 = sub_1B9E945DC(1);
    v72 = buf;
    v73 = v47;
    v74 = v48;
    sub_1B9E94630(2, &v72);
    sub_1B9E94630(2, &v72);
    v75 = sub_1B9E96AF4;
    v76 = v63;
    sub_1B9E94644(&v75, &v72, &v73, &v74);
    v75 = sub_1B9E96AF4;
    v76 = v64;
    sub_1B9E94644(&v75, &v72, &v73, &v74);
    v75 = sub_1B9E96B08;
    v76 = v65;
    sub_1B9E94644(&v75, &v72, &v73, &v74);
    v75 = sub_1B9E96AF4;
    v76 = v66;
    sub_1B9E94644(&v75, &v72, &v73, &v74);
    v75 = sub_1B9E96AF4;
    v76 = v67;
    sub_1B9E94644(&v75, &v72, &v73, &v74);
    v75 = sub_1B9E9F44C;
    v76 = v68;
    sub_1B9E94644(&v75, &v72, &v73, &v74);
    _os_log_impl(&dword_1B9E4B000, oslog, v71, "Failed to load item for type identifier %s with error: %@", buf, 0x16u);
    sub_1B9E94690(v47);
    sub_1B9E94690(v48);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v40 = *(v52 + 992);
  v42 = *(v52 + 944);
  v38 = *(v52 + 872);
  v39 = *(v52 + 856);
  v41 = *(v52 + 536);
  v43 = *(v52 + 952);
  MEMORY[0x1E69E5920](oslog);
  v40(v38, v39);

  *(v52 + 416) = v41;

  v44 = swift_task_alloc();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  sub_1B9ECB594();
  v45 = sub_1B9ED8F2C();
  *(v52 + 1088) = v45;

  *(v52 + 424) = v45;
  v7 = v57;
  *(v52 + 432) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
  if (swift_dynamicCast())
  {
    v36 = *(v52 + 288);
    v37 = *(v52 + 296);
  }

  else
  {
    v36 = 0;
    v37 = -1;
  }

  if (v37 == 255)
  {
    goto LABEL_14;
  }

  *(v52 + 304) = v36;
  *(v52 + 312) = v37;
  sub_1B9EC8950(v36, v37);
  if (v37 != 2 || v36 != 1)
  {
    sub_1B9EC89AC(v36, v37);
    sub_1B9EC89AC(v36, v37);
LABEL_14:
    v31 = *(v52 + 944);
    v35 = *(v52 + 624);
    v32 = *(v52 + 952);
    sub_1B9ED914C();
    v33 = v11;

    *v33 = v31;
    v33[1] = v32;
    sub_1B9E8B398();
    v34 = sub_1B9ED8C1C();
    *(v52 + 1096) = v34;

    *(v52 + 440) = v34;
    v12 = v35;
    *(v52 + 456) = v35;
    v13 = v57;
    if (*(v52 + 456))
    {
      *(v52 + 448) = *(v52 + 456);
    }

    else
    {
      v14 = v57;
      *(v52 + 448) = v57;
      if (*(v52 + 456))
      {
        sub_1B9ECB52C((v52 + 456));
      }
    }

    v30 = *(v52 + 448);
    *(v52 + 1104) = v30;
    v15 = swift_task_alloc();
    *(v52 + 1112) = v15;
    *v15 = *(v52 + 320);
    v15[1] = sub_1B9EB3A3C;
    v16 = *(v52 + 896);
    v17 = *(v52 + 608);
    v18 = *(v52 + 600);
    v19 = *(v52 + 592);
    v20 = *(v52 + 584);
    v21 = *(v52 + 576);
    v22.n128_u64[0] = *(v52 + 568);
    v23.n128_u64[0] = *(v52 + 560);
    v24 = *(v52 + 299);
    v25 = *(v52 + 298);
    v26 = *(v52 + 297);
    v27 = *(v52 + 552);
    v28 = *(v52 + 544);
    v29 = *(v52 + 528);
    v79 = *(v52 + 300);
    v80 = v21;
    v81 = v20;
    v82 = v19;
    v83 = v18;
    v84 = v17;
    v85 = v34;
    v86 = v30;

    return sub_1B9EAAE90(v16, v29, v45, v28, v27, v26 & 1, v25 & 1, v24 & 1, v23, v22);
  }

  sub_1B9EC8950(1, v37);
  sub_1B9EC88D4();
  swift_allocError();
  *v8 = 1;
  *(v8 + 8) = v37;
  swift_willThrow();
  sub_1B9EC89AC(1, v37);

  v9 = *(*(v52 + 320) + 8);

  return v9();
}

uint64_t sub_1B9EB72E4()
{
  v1 = v0[138];
  v4 = v0[135];
  v0[40] = v0;

  v2 = *(v0[40] + 8);

  return v2();
}

uint64_t sub_1B9EB766C()
{
  *(v0 + 320) = v0;

  v1 = *(*(v0 + 320) + 8);

  return v1();
}

uint64_t static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)(void *a1, uint64_t a2)
{
  v64 = a1;
  v63 = a2;
  v69 = 0;
  v72 = sub_1B9EBCEF4;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  v83 = 0;
  v84 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v71 = sub_1B9ED858C();
  v57 = *(v71 - 8);
  v58 = v71 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v60 = &v13 - v59;
  v61 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v59);
  v62 = &v13 - v61;
  v92 = &v13 - v61;
  v65 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v13 - v65;
  v67 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v13 - v67;
  v91 = v6;
  v90 = v7;
  v89 = v2;
  v86 = v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340);
  sub_1B9ECB4A4();
  v8 = sub_1B9ED8B9C();
  v73 = 0;
  v74 = v8;
  v85 = v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0);
  v55 = sub_1B9EA6380();
  sub_1B9ED8D9C();
  for (i = v73; ; i = v51)
  {
    v51 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6358);
    sub_1B9ED8FDC();
    v52 = *(v57 + 48);
    v53 = (v57 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v52(v68, 1, v71) == 1)
    {
      break;
    }

    v9 = v60;
    (*(v57 + 32))(v62, v68, v71);
    (*(v57 + 16))(v9, v62, v71);
    v41 = sub_1B9ED84CC();
    v43 = *(v57 + 8);
    v40 = v57 + 8;
    v44 = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v60, v71);
    v42 = [v64 registeredContentTypesConformingToContentType_];
    MEMORY[0x1E69E5920](v41);
    v45 = sub_1B9ED8C0C();
    v77 = v45;
    MEMORY[0x1E69E5920](v42);
    v76 = v45;
    v10 = sub_1B9ED8D8C();
    v46 = v43;
    v47 = v44;
    v48 = v45;
    v49 = v52;
    v50 = v53;
    if ((v10 & 1) == 0)
    {
      v38 = v50;
      v39 = v49;
      v35 = v48;
      v36 = v47;
      v37 = v46;
      v75 = v48;
      sub_1B9ED8D7C();
      if (v39(v66, 1, v71) == 1)
      {
        sub_1B9EC8CA0(v66);
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v31 = sub_1B9ED84AC();
        v32 = v11;
        v37(v66, v71);
        v33 = v31;
        v34 = v32;
      }

      v28 = v34;
      v27 = v33;

      v37(v62, v71);
      sub_1B9E9895C();
      v29 = v27;
      v30 = v28;
      return v29;
    }

    v43(v62, v71);
  }

  sub_1B9E9895C();

  v82 = v63;
  sub_1B9ECB76C();
  sub_1B9ED8D9C();
  for (j = v51; ; j = v23)
  {
    v23 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6368);
    sub_1B9ED8FDC();
    v24 = v80;
    v25 = v81;
    if (!v81)
    {
      break;
    }

    v21 = v24;
    v22 = v25;
    v17 = v25;
    v16 = v24;
    v78 = v24;
    v79 = v25;

    v15 = sub_1B9ED8A9C();

    v18 = [v64 hasItemConformingToTypeIdentifier_];
    MEMORY[0x1E69E5920](v15);
    v19 = v16;
    v20 = v17;
    if (v18)
    {
      v14 = v20;
      v13 = v19;
      sub_1B9E9895C();
      v29 = v13;
      v30 = v14;
      return v29;
    }
  }

  sub_1B9E9895C();
  v29 = 0;
  v30 = 0;
  return v29;
}

uint64_t sub_1B9EB82D8(uint64_t a1, uint64_t a2)
{
  v3[68] = v2;
  v3[67] = a2;
  v3[66] = a1;
  v3[56] = v3;
  v3[50] = 0;
  v3[51] = 0;
  v3[57] = 0;
  v3[60] = 0;
  v3[54] = 0;
  v3[55] = 0;
  v3[63] = 0;
  v3[64] = 0;
  v4 = sub_1B9ED842C();
  v3[69] = v4;
  v3[70] = *(v4 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v5 = sub_1B9ED85DC();
  v3[73] = v5;
  v3[74] = *(v5 - 8);
  v3[75] = swift_task_alloc();
  v6 = sub_1B9ED858C();
  v3[76] = v6;
  v3[77] = *(v6 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[50] = a1;
  v3[51] = a2;
  v3[57] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B9EB85DC, 0);
}

uint64_t sub_1B9EB85DC()
{
  v19 = v0[83];
  v22 = v0[82];
  v20 = v0[77];
  v21 = v0[76];
  v18 = v0[67];
  v17 = v0[66];
  v0[56] = v0;

  sub_1B9EBC2BC(v17, v18, 1, v19);
  sub_1B9ECAC40(v19, v22);
  v1 = *(v20 + 48);
  v0[84] = v1;
  v0[85] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v1(v22, 1, v21) == 1)
  {
    sub_1B9EC8CA0(*(v16 + 656));
    goto LABEL_9;
  }

  v13 = *(v16 + 632);
  v12 = *(v16 + 608);
  v11 = *(v16 + 616);
  (*(v11 + 32))(*(v16 + 640), *(v16 + 656));
  sub_1B9ED84EC();
  v15 = sub_1B9ED854C();
  v14 = *(v11 + 8);
  *(v16 + 688) = v14;
  *(v16 + 696) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v13, v12);
  if ((v15 & 1) == 0 || (v10 = *(v16 + 544), sub_1B9ECB93C(), ([v10 canLoadObjectOfClass_] & 1) == 0))
  {
    v14(*(v16 + 640), *(v16 + 608));
LABEL_9:
    v6 = *(v16 + 544);

    v5 = sub_1B9ED8A9C();
    *(v16 + 720) = v5;

    *(v16 + 16) = *(v16 + 448);
    *(v16 + 56) = v16 + 472;
    *(v16 + 24) = sub_1B9EB9CC0;
    v4 = swift_continuation_init();
    *(v16 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6370);
    *(v16 + 240) = v4;
    *(v16 + 208) = MEMORY[0x1E69E9820];
    *(v16 + 216) = 1107296256;
    *(v16 + 220) = 0;
    *(v16 + 224) = sub_1B9EC8EA8;
    *(v16 + 232) = &block_descriptor_204;
    [v6 loadItemForTypeIdentifier:v5 options:0 completionHandler:?];
    v2 = v16 + 16;

    return MEMORY[0x1EEE6DEC8](v2);
  }

  v9 = *(v16 + 544);

  v8 = sub_1B9ED8A9C();
  *(v16 + 704) = v8;

  *(v16 + 144) = *(v16 + 448);
  *(v16 + 184) = v16 + 520;
  *(v16 + 152) = sub_1B9EB8B20;
  v7 = swift_continuation_init();
  *(v16 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6398);
  *(v16 + 368) = v7;
  *(v16 + 336) = MEMORY[0x1E69E9820];
  *(v16 + 344) = 1107296256;
  *(v16 + 348) = 0;
  *(v16 + 352) = sub_1B9EC8DAC;
  *(v16 + 360) = &block_descriptor_230;
  [v9 sfui:v8 loadAttributedStringForTypeIdentifier:? completionHandler:?];
  v2 = v16 + 144;

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B9EB8B20()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 176);
  *(v5 + 712) = v1;
  if (v1)
  {
    v2 = sub_1B9EBB208;
  }

  else
  {
    v2 = sub_1B9EB8CEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EB8CEC()
{
  v62 = v0;
  v61[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 704);
  v52 = *(v0 + 688);
  v50 = *(v0 + 640);
  v51 = *(v0 + 608);
  *(v0 + 448) = v0;
  *(v0 + 464) = *(v0 + 520);
  MEMORY[0x1E69E5920](v1);
  v52(v50, v51);
  v54 = *(v0 + 672);
  v55 = *(v0 + 648);
  v53 = *(v0 + 608);
  sub_1B9ECAC40(*(v0 + 664), v55);
  if (v54(v55, 1, v53) == 1)
  {
    sub_1B9EC8CA0(*(v49 + 648));
  }

  else
  {
    v46 = *(v49 + 632);
    v45 = *(v49 + 608);
    v44 = *(v49 + 616);
    (*(v44 + 32))(*(v49 + 624), *(v49 + 648));
    sub_1B9ED84FC();
    v48 = sub_1B9ED854C();
    v47 = *(v44 + 8);
    v47(v46, v45);
    if ((v48 & 1) == 0 || ((v43 = *(v49 + 464), swift_unknownObjectRetain(), *(v49 + 488) = v43, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308), (swift_dynamicCast() & 1) == 0) ? (v41 = 0, v42 = 0xF000000000000000) : (v41 = *(v49 + 416), v42 = *(v49 + 424)), (v42 & 0xF000000000000000) == 0xF000000000000000))
    {
      v47(*(v49 + 624), *(v49 + 608));
    }

    else
    {
      *(v49 + 432) = v41;
      *(v49 + 440) = v42;
      v59 = 0;
      v36 = objc_opt_self();
      sub_1B9ECAB34(v41, v42);
      v39 = sub_1B9ED843C();
      sub_1B9ECAAB8(v41, v42);

      v38 = sub_1B9ED8A9C();

      *(v49 + 496) = 0;
      v40 = [v36 objectWithItemProviderData:v39 typeIdentifier:v38 error:v49 + 496];
      v37 = *(v49 + 496);
      MEMORY[0x1E69E5928](v37);
      v2 = v59;
      v59 = v37;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v38);
      MEMORY[0x1E69E5920](v39);
      if (v40)
      {
        v35 = v40;
      }

      else
      {
        v9 = sub_1B9ED832C();
        MEMORY[0x1E69E5920](v59);
        swift_willThrow();

        v35 = 0;
      }

      if (v35)
      {
        *(v49 + 512) = v35;
        MEMORY[0x1E69E5928](v35);
        *(v49 + 464) = v35;
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v35);
      }

      else
      {
        sub_1B9ECB874();
        sub_1B9ECB8D8();
        v34 = sub_1B9ED8DEC();
        if (v34)
        {
          *(v49 + 504) = v34;
          MEMORY[0x1E69E5928](v34);
          *(v49 + 464) = v34;
          swift_unknownObjectRelease();
          MEMORY[0x1E69E5920](v34);
        }

        else
        {
          v3 = *(v49 + 600);
          v24 = *(v49 + 584);
          v25 = *(v49 + 544);
          v23 = *(v49 + 592);
          v4 = sub_1B9EA545C();
          (*(v23 + 16))(v3, v4, v24);
          MEMORY[0x1E69E5928](v25);
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          oslog = sub_1B9ED85BC();
          v33 = sub_1B9ED8DCC();
          v28 = swift_allocObject();
          *(v28 + 16) = 64;
          v29 = swift_allocObject();
          *(v29 + 16) = 8;
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1B9ECAD68;
          *(v27 + 24) = v26;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_1B9E9F2BC;
          *(v30 + 24) = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
          sub_1B9ED914C();
          v31 = v5;

          *v31 = sub_1B9E96AF4;
          v31[1] = v28;

          v31[2] = sub_1B9E96AF4;
          v31[3] = v29;

          v31[4] = sub_1B9E9F44C;
          v31[5] = v30;
          sub_1B9E8B398();

          if (os_log_type_enabled(oslog, v33))
          {
            buf = sub_1B9ED8E8C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
            v21 = sub_1B9E945DC(1);
            v22 = sub_1B9E945DC(0);
            v56 = buf;
            v60 = v21;
            v61[0] = v22;
            sub_1B9E94630(2, &v56);
            sub_1B9E94630(1, &v56);
            v57 = sub_1B9E96AF4;
            v58 = v28;
            sub_1B9E94644(&v57, &v56, &v60, v61);
            v57 = sub_1B9E96AF4;
            v58 = v29;
            sub_1B9E94644(&v57, &v56, &v60, v61);
            v57 = sub_1B9E9F44C;
            v58 = v30;
            sub_1B9E94644(&v57, &v56, &v60, v61);
            _os_log_impl(&dword_1B9E4B000, oslog, v33, "Unable to coerce URL-typed item to an NSURL for item provider: %@", buf, 0xCu);
            sub_1B9E94690(v21);
            sub_1B9E94690(v22);
            sub_1B9ED8E6C();
          }

          else
          {
          }

          v18 = *(v49 + 600);
          v19 = *(v49 + 584);
          v17 = *(v49 + 592);
          MEMORY[0x1E69E5920](oslog);
          (*(v17 + 8))(v18, v19);
        }
      }

      v15 = *(v49 + 624);
      v16 = *(v49 + 608);
      sub_1B9ECAAB8(v41, v42);
      v47(v15, v16);
    }
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v13 = v14;
  }

  else
  {
    swift_unknownObjectRelease();
    v13 = 0;
  }

  *(v49 + 736) = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  *(v49 + 480) = v13;
  if (([v13 isFileURL] & 1) == 0)
  {
    MEMORY[0x1E69E5920](v13);
LABEL_30:
    v11 = *(v49 + 664);
    v10 = *(v49 + 464);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1B9EC8CA0(v11);

    v7 = *(*(v49 + 448) + 8);

    return v7(v10);
  }

  v6 = *(v49 + 576);
  *(v49 + 80) = *(v49 + 448);
  *(v49 + 120) = v6;
  *(v49 + 88) = sub_1B9EBAE2C;
  v12 = swift_continuation_init();
  *(v49 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6378);
  *(v49 + 304) = v12;
  *(v49 + 272) = MEMORY[0x1E69E9820];
  *(v49 + 280) = 1107296256;
  *(v49 + 284) = 0;
  *(v49 + 288) = sub_1B9EC8FE0;
  *(v49 + 296) = &block_descriptor_208;
  [v13 coordinateReadingWithSaveToTempDir:1 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v49 + 80);
}

uint64_t sub_1B9EB9CC0()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 728) = v1;
  if (v1)
  {
    v2 = sub_1B9EBB3E4;
  }

  else
  {
    v2 = sub_1B9EB9E8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EB9E8C()
{
  v59 = v0;
  v58[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 720);
  *(v0 + 448) = v0;
  *(v0 + 464) = *(v0 + 472);
  MEMORY[0x1E69E5920](v1);
  v51 = *(v0 + 672);
  v52 = *(v0 + 648);
  v50 = *(v0 + 608);
  sub_1B9ECAC40(*(v0 + 664), v52);
  if (v51(v52, 1, v50) == 1)
  {
    sub_1B9EC8CA0(*(v49 + 648));
  }

  else
  {
    v46 = *(v49 + 632);
    v45 = *(v49 + 608);
    v44 = *(v49 + 616);
    (*(v44 + 32))(*(v49 + 624), *(v49 + 648));
    sub_1B9ED84FC();
    v48 = sub_1B9ED854C();
    v47 = *(v44 + 8);
    v47(v46, v45);
    if ((v48 & 1) == 0 || ((v43 = *(v49 + 464), swift_unknownObjectRetain(), *(v49 + 488) = v43, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308), (swift_dynamicCast() & 1) == 0) ? (v41 = 0, v42 = 0xF000000000000000) : (v41 = *(v49 + 416), v42 = *(v49 + 424)), (v42 & 0xF000000000000000) == 0xF000000000000000))
    {
      v47(*(v49 + 624), *(v49 + 608));
    }

    else
    {
      *(v49 + 432) = v41;
      *(v49 + 440) = v42;
      v56 = 0;
      v36 = objc_opt_self();
      sub_1B9ECAB34(v41, v42);
      v39 = sub_1B9ED843C();
      sub_1B9ECAAB8(v41, v42);

      v38 = sub_1B9ED8A9C();

      *(v49 + 496) = 0;
      v40 = [v36 objectWithItemProviderData:v39 typeIdentifier:v38 error:v49 + 496];
      v37 = *(v49 + 496);
      MEMORY[0x1E69E5928](v37);
      v2 = v56;
      v56 = v37;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v38);
      MEMORY[0x1E69E5920](v39);
      if (v40)
      {
        v35 = v40;
      }

      else
      {
        v9 = sub_1B9ED832C();
        MEMORY[0x1E69E5920](v56);
        swift_willThrow();

        v35 = 0;
      }

      if (v35)
      {
        *(v49 + 512) = v35;
        MEMORY[0x1E69E5928](v35);
        *(v49 + 464) = v35;
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v35);
      }

      else
      {
        sub_1B9ECB874();
        sub_1B9ECB8D8();
        v34 = sub_1B9ED8DEC();
        if (v34)
        {
          *(v49 + 504) = v34;
          MEMORY[0x1E69E5928](v34);
          *(v49 + 464) = v34;
          swift_unknownObjectRelease();
          MEMORY[0x1E69E5920](v34);
        }

        else
        {
          v3 = *(v49 + 600);
          v24 = *(v49 + 584);
          v25 = *(v49 + 544);
          v23 = *(v49 + 592);
          v4 = sub_1B9EA545C();
          (*(v23 + 16))(v3, v4, v24);
          MEMORY[0x1E69E5928](v25);
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          oslog = sub_1B9ED85BC();
          v33 = sub_1B9ED8DCC();
          v28 = swift_allocObject();
          *(v28 + 16) = 64;
          v29 = swift_allocObject();
          *(v29 + 16) = 8;
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1B9ECAD68;
          *(v27 + 24) = v26;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_1B9E9F2BC;
          *(v30 + 24) = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
          sub_1B9ED914C();
          v31 = v5;

          *v31 = sub_1B9E96AF4;
          v31[1] = v28;

          v31[2] = sub_1B9E96AF4;
          v31[3] = v29;

          v31[4] = sub_1B9E9F44C;
          v31[5] = v30;
          sub_1B9E8B398();

          if (os_log_type_enabled(oslog, v33))
          {
            buf = sub_1B9ED8E8C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
            v21 = sub_1B9E945DC(1);
            v22 = sub_1B9E945DC(0);
            v53 = buf;
            v57 = v21;
            v58[0] = v22;
            sub_1B9E94630(2, &v53);
            sub_1B9E94630(1, &v53);
            v54 = sub_1B9E96AF4;
            v55 = v28;
            sub_1B9E94644(&v54, &v53, &v57, v58);
            v54 = sub_1B9E96AF4;
            v55 = v29;
            sub_1B9E94644(&v54, &v53, &v57, v58);
            v54 = sub_1B9E9F44C;
            v55 = v30;
            sub_1B9E94644(&v54, &v53, &v57, v58);
            _os_log_impl(&dword_1B9E4B000, oslog, v33, "Unable to coerce URL-typed item to an NSURL for item provider: %@", buf, 0xCu);
            sub_1B9E94690(v21);
            sub_1B9E94690(v22);
            sub_1B9ED8E6C();
          }

          else
          {
          }

          v18 = *(v49 + 600);
          v19 = *(v49 + 584);
          v17 = *(v49 + 592);
          MEMORY[0x1E69E5920](oslog);
          (*(v17 + 8))(v18, v19);
        }
      }

      v15 = *(v49 + 624);
      v16 = *(v49 + 608);
      sub_1B9ECAAB8(v41, v42);
      v47(v15, v16);
    }
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v13 = v14;
  }

  else
  {
    swift_unknownObjectRelease();
    v13 = 0;
  }

  *(v49 + 736) = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  *(v49 + 480) = v13;
  if (([v13 isFileURL] & 1) == 0)
  {
    MEMORY[0x1E69E5920](v13);
LABEL_30:
    v11 = *(v49 + 664);
    v10 = *(v49 + 464);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1B9EC8CA0(v11);

    v7 = *(*(v49 + 448) + 8);

    return v7(v10);
  }

  v6 = *(v49 + 576);
  *(v49 + 80) = *(v49 + 448);
  *(v49 + 120) = v6;
  *(v49 + 88) = sub_1B9EBAE2C;
  v12 = swift_continuation_init();
  *(v49 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6378);
  *(v49 + 304) = v12;
  *(v49 + 272) = MEMORY[0x1E69E9820];
  *(v49 + 280) = 1107296256;
  *(v49 + 284) = 0;
  *(v49 + 288) = sub_1B9EC8FE0;
  *(v49 + 296) = &block_descriptor_208;
  [v13 coordinateReadingWithSaveToTempDir:1 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v49 + 80);
}

uint64_t sub_1B9EBAE2C()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 744) = v1;
  if (v1)
  {
    v2 = sub_1B9EBB58C;
  }

  else
  {
    v2 = sub_1B9EBAFF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EBAFF8()
{
  v7 = v0[92];
  v1 = v0[72];
  v5 = v0[71];
  v4 = v0[70];
  v6 = v0[69];
  v0[56] = v0;
  (*(v4 + 32))(v5, v1);
  v0[58] = sub_1B9ED83AC();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v5, v6);
  MEMORY[0x1E69E5920](v7);
  v9 = v0[83];
  v8 = v0[58];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1B9EC8CA0(v9);

  v2 = *(v0[56] + 8);

  return v2(v8);
}

uint64_t sub_1B9EBB208()
{
  v3 = v0[88];
  v6 = v0[86];
  v7 = v0[83];
  v4 = v0[80];
  v5 = v0[76];
  v0[56] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v3);
  v6(v4, v5);
  sub_1B9EC8CA0(v7);

  v1 = *(v0[56] + 8);

  return v1();
}

uint64_t sub_1B9EBB3E4()
{
  v3 = v0[90];
  v4 = v0[83];
  v0[56] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v3);
  sub_1B9EC8CA0(v4);

  v1 = *(v0[56] + 8);

  return v1();
}

uint64_t sub_1B9EBB58C()
{
  v3 = v0[92];
  v4 = v0[83];
  v0[56] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v3);
  swift_unknownObjectRelease();
  sub_1B9EC8CA0(v4);

  v1 = *(v0[56] + 8);

  return v1();
}

uint64_t sub_1B9EBB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[11] = a3;
  v5[10] = a2;
  v5[9] = a1;
  v5[6] = v5;
  v5[7] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[8] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v6 = sub_1B9ED842C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_1B9ED88CC();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[7] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBB8F8, 0);
}

uint64_t sub_1B9EBB8F8()
{
  v1 = *(v0 + 112);
  *(v0 + 48) = v0;
  (*(v1 + 16))();
  sub_1B9E8EC5C();
  sub_1B9ED88DC();
  v18 = v19[12];

  if (!v18)
  {
LABEL_8:
    v10 = v19[18];
    v9 = v19[16];
    v8 = v19[17];
    (*(v8 + 16))(v19[9]);
    (*(v8 + 8))(v10, v9);

    v6 = *(v19[6] + 8);

    return v6();
  }

  v17 = v19[12];
  v19[4] = v19[11];
  v19[5] = v17;
  if (sub_1B9ED8B3C())
  {

    goto LABEL_8;
  }

  v14 = v19[18];
  v12 = v19[16];
  v15 = v19[11];
  v11 = v19[17];
  v13 = sub_1B9ED914C();
  (*(v11 + 16))(v2, v14, v12);
  sub_1B9E8B398();
  v19[19] = v13;

  v16 = swift_task_alloc();
  v19[20] = v16;
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v17;
  v3 = swift_task_alloc();
  v19[21] = v3;
  *v3 = v19[6];
  v3[1] = sub_1B9EBBD28;
  v4 = v19[16];
  v5 = v19[9];

  return MEMORY[0x1EEE38078](v5, v13, &unk_1B9EDF7F8, v16, v4);
}

uint64_t sub_1B9EBBD28()
{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B9EBBFC8;
  }

  else
  {

    v2 = sub_1B9EBBEC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EBBEC4()
{
  v4 = v0[18];
  v3 = v0[17];
  v5 = v0[16];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_1B9EBBFC8()
{
  v4 = v0[18];
  v3 = v0[17];
  v5 = v0[16];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_1B9EBC0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v21 = a1;
  v22 = a2;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v24 = sub_1B9ED842C();
  v17 = *(v24 - 8);
  v18 = v24 - 8;
  v12 = *(v17 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v19 = &v10 - v11;
  v13 = v11;
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v10 - v13;
  v28 = v4;
  v29 = v5;
  v27 = v6;
  v15 = NSTemporaryDirectory();
  sub_1B9ED8AAC();
  v14 = v7;
  sub_1B9ED837C();

  MEMORY[0x1E69E5920](v15);
  sub_1B9ED8B1C();
  v16 = v8;
  sub_1B9ED83BC();

  v26 = *(v17 + 8);
  v25 = v17 + 8;
  v26(v19, v24);
  sub_1B9ED83BC();
  return (v26)(v23, v24);
}

uint64_t sub_1B9EBC2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v20 = a4;
  v37 = a1;
  v38 = a2;
  v25 = a3;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8);
  v21 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v12 - v21;
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v21);
  v24 = &v12 - v23;
  v26 = 0;
  v27 = sub_1B9ED858C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v33 = *(v28 + 64);
  v30 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v12 - v30;
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v12 - v32;
  v45 = &v12 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v12 - v35;
  v44 = &v12 - v35;
  v42 = v8;
  v43 = v9;
  v39 = 1;
  v41 = v10 & 1;
  sub_1B9ECBAC0();

  v40 = sub_1B9EC65E4(v37, v38, v39 & 1);
  if (!v40 || (v19 = v40, v18 = v40, MEMORY[0x1E69E5928](v40), sub_1B9ECBB24(), sub_1B9ED919C(), MEMORY[0x1E69E5920](v18), MEMORY[0x1E69E5920](v18), (*(v28 + 48))(v22, 1, v27) == 1))
  {
    (*(v28 + 56))(v24, 1, 1, v27);
  }

  else
  {
    (*(v28 + 32))(v24, v22, v27);
    (*(v28 + 56))(v24, 0, 1, v27);
  }

  if ((*(v28 + 48))(v24, 1, v27) == 1)
  {
    sub_1B9EC8CA0(v24);

    return (*(v28 + 56))(v20, 1, 1, v27);
  }

  else
  {
    v13 = *(v28 + 32);
    v12 = v28 + 32;
    v13(v34, v24, v27);
    v15 = *(v28 + 16);
    v14 = v28 + 16;
    v15(v31, v34, v27);
    v13(v36, v31, v27);
    v17 = *(v28 + 8);
    v16 = v28 + 8;
    v17(v34, v27);
    v15(v20, v36, v27);
    (*(v28 + 56))(v20, 0, 1, v27);

    return (v17)(v36, v27);
  }
}

uint64_t static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9, double a10)
{
  *(v11 + 216) = v10;
  *(v11 + 208) = v19;
  *(v11 + 200) = v18;
  *(v11 + 192) = v17;
  *(v11 + 184) = v16;
  *(v11 + 176) = v15;
  *(v11 + 168) = a10;
  *(v11 + 160) = a9;
  *(v11 + 252) = v14 & 1;
  *(v11 + 251) = a8 & 1;
  *(v11 + 250) = a7 & 1;
  *(v11 + 249) = a6 & 1;
  *(v11 + 152) = a5;
  *(v11 + 144) = a4;
  *(v11 + 136) = a3;
  *(v11 + 128) = a2;
  *(v11 + 120) = a1;
  *(v11 + 80) = v11;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 248) = 0;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  *(v11 + 272) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 88) = a2;
  *(v11 + 96) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 248) = a6 & 1;
  *(v11 + 256) = a7 & 1;
  *(v11 + 264) = a8 & 1;
  *(v11 + 272) = v14 & 1;
  *(v11 + 32) = a9;
  *(v11 + 40) = a10;
  *(v11 + 48) = v15;
  *(v11 + 56) = v16;
  *(v11 + 64) = v17;
  *(v11 + 72) = v18;
  *(v11 + 104) = v19;
  *(v11 + 112) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBCAA0, 0);
}

uint64_t sub_1B9EBCAA0()
{
  *(v0 + 80) = v0;
  *(v0 + 224) = sub_1B9ED914C();
  v1 = swift_task_alloc();
  *(v13 + 232) = v1;
  *v1 = *(v13 + 80);
  v1[1] = sub_1B9EBCC08;
  v2 = *(v13 + 168);
  v3 = *(v13 + 160);
  v4 = *(v13 + 152);
  v5 = *(v13 + 144);
  v6 = *(v13 + 136);
  v7 = *(v13 + 128);
  v8 = *(v13 + 120);
  v9 = *(v13 + 249) & 1;
  v10 = *(v13 + 250) & 1;
  v11 = *(v13 + 251) & 1;

  return sub_1B9EAAE90(v8, v7, v6, v5, v4, v9, v10, v11, v3, v2);
}

uint64_t sub_1B9EBCC08()
{
  v4 = *v1;
  *(v4 + 80) = *v1;
  *(v4 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B9EBCE2C, 0);
  }

  else
  {

    v2 = *(*(v4 + 80) + 8);

    return v2();
  }
}

uint64_t sub_1B9EBCE2C()
{
  *(v0 + 80) = v0;

  v1 = *(*(v0 + 80) + 8);

  return v1();
}

uint64_t sub_1B9EBCEF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v5 = a1[1];

  return sub_1B9EBC2BC(v3, v5, 1, a2);
}

uint64_t static SFAirDropUtilities.guessedDataType(for:dataTypesToTry:)(void *a1, uint64_t a2)
{
  v40 = a1;
  v43 = a2;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v44 = v58;
  v58[0] = 0;
  v58[1] = 0;
  v46 = 0;
  v47 = 0;
  v35 = sub_1B9ED858C();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v8 - v38;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v8 - v41;
  v63 = v3;
  v62 = v4;
  v61 = v2;
  v59 = 0;
  v60 = 0;

  v57 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340);
  sub_1B9ECB76C();
  sub_1B9ED8D9C();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6368);
    sub_1B9ED8FDC();
    v33 = v55;
    v34 = v56;
    if (!v56)
    {
      break;
    }

    v31 = v33;
    v32 = v34;
    v27 = v34;
    v26 = v33;
    v46 = v33;
    v47 = v34;

    v25 = sub_1B9ED8A9C();

    v28 = [v40 hasItemConformingToTypeIdentifier_];
    MEMORY[0x1E69E5920](v25);
    v29 = v26;
    v30 = v27;
    if (v28)
    {
      v24 = v30;
      v23 = v29;

      v59 = v23;
      v60 = v24;

      break;
    }
  }

  sub_1B9E9895C();
  v21 = v59;
  v22 = v60;

  v53 = v21;
  v54 = v22;
  v20 = v22 == 0;
  v19 = v20;
  sub_1B9E96F0C();
  if (v19)
  {
    v16 = [v40 registeredContentTypes];
    v18 = sub_1B9ED8C0C();
    v48 = v18;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0);
    sub_1B9EA6380();
    sub_1B9ED8D7C();

    if ((*(v36 + 48))(v42, 1, v35) == 1)
    {
      MEMORY[0x1E69E5920](v16);
      sub_1B9EC8CA0(v42);
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = sub_1B9ED84AC();
      v13 = v5;
      (*(v36 + 8))(v42, v35);
      MEMORY[0x1E69E5920](v16);
      v14 = v12;
      v15 = v13;
    }

    v59 = v14;
    v60 = v15;
  }

  v10 = v59;
  v11 = v60;

  v49 = v10;
  v50 = v11;
  if (v11)
  {
    v51 = v49;
    v52 = v50;
  }

  else
  {
    sub_1B9ED84FC();
    v51 = sub_1B9ED84AC();
    v52 = v6;
    (*(v36 + 8))(v39, v35);
    if (v50)
    {
      sub_1B9E96F0C();
    }
  }

  v9 = v51;
  v8 = v52;
  sub_1B9E96F0C();
  return v9;
}

uint64_t static SFAirDropUtilities.imageData(for:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    v5 = [a1 CGImage];
    MEMORY[0x1E69E5920](a1);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  v2 = SFDataFromCGImage();
  v3 = sub_1B9ED844C();
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t static SFAirDropUtilities.shouldIgnoreString(for:)(uint64_t a1)
{
  v91 = a1;
  v94 = 0;
  v98 = sub_1B9EBE558;
  v72 = sub_1B9ECBCB4;
  v73 = sub_1B9ECBCBC;
  v74 = sub_1B9E96AFC;
  v75 = sub_1B9E96AF4;
  v76 = sub_1B9E96AF4;
  v77 = sub_1B9E96B08;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v105[2] = 0;
  v105[3] = 0;
  v78 = 0;
  v79 = sub_1B9ED85DC();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v83 = &v23 - v82;
  v84 = sub_1B9ED858C();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v88 = &v23 - v87;
  v89 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v87);
  v90 = &v23 - v89;
  v112 = &v23 - v89;
  v92 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v23 - v92;
  v111 = v3;
  v110 = v1;
  v109 = 0;
  v108 = 0;
  v107 = v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63B0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0);
  v97 = sub_1B9ECBBA4();
  sub_1B9ECBC2C();
  v4 = sub_1B9ED8BCC();
  v99 = 0;
  v100 = v4;
  v69 = v4;
  v106 = v4;

  v105[1] = v69;
  sub_1B9EA6380();
  sub_1B9ED8D9C();
  v70 = 0;
  for (i = v99; ; i = v66)
  {
    v66 = i;
    v67 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6358);
    sub_1B9ED8FDC();
    v5 = (*(v85 + 48))(v93, 1, v84);
    v68 = v67;
    if (v5 == 1)
    {
      break;
    }

    (*(v85 + 32))(v90, v93, v84);
    sub_1B9ED857C();
    v65 = sub_1B9ED854C();
    v63 = *(v85 + 8);
    v64 = v85 + 8;
    v63(v88, v84);
    if (v65)
    {
      v109 = 1;
      v62 = v67 | 0x100000000;
    }

    else
    {
      sub_1B9ED852C();
      v61 = sub_1B9ED854C();
      v63(v88, v84);
      if (v61)
      {
        v60 = 1;
      }

      else
      {
        sub_1B9ED84FC();
        v59 = sub_1B9ED854C();
        v63(v88, v84);
        v60 = v59;
      }

      if (v60)
      {
        v58 = 1;
      }

      else
      {
        sub_1B9ED850C();
        v57 = sub_1B9ED854C();
        v63(v88, v84);
        v58 = v57;
      }

      if (v58)
      {
        sub_1B9ED84EC();
        v55 = sub_1B9ED854C();
        v63(v88, v84);
        v56 = v55 ^ 1;
      }

      else
      {
        v56 = 0;
      }

      if (v56)
      {
        v108 = 1;
        v54 = 1;
      }

      else
      {
        v54 = v67;
      }

      v62 = __PAIR64__(HIDWORD(v67), v54);
    }

    v53 = v62;
    v63(v90, v84);
    v70 = v53;
  }

  v52 = v68;
  sub_1B9E9895C();
  if ((v52 & 0x100000000) != 0)
  {
    v50 = v52;
  }

  else
  {
    v50 = 0;
  }

  v51 = v52;
  v49 = v52;
  if (v50)
  {
    v6 = v83;
    v7 = sub_1B9EA545C();
    (*(v80 + 16))(v6, v7, v79);

    v38 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v91;

    v37 = 32;
    v8 = swift_allocObject();
    v9 = v35;
    v39 = v8;
    *(v8 + 16) = v72;
    *(v8 + 24) = v9;

    v47 = sub_1B9ED85BC();
    v48 = sub_1B9ED8DDC();
    v36 = 17;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v39;
    v40 = v10;
    *(v10 + 16) = v73;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v40;
    v44 = v12;
    *(v12 + 16) = v74;
    *(v12 + 24) = v13;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
    v43 = sub_1B9ED914C();
    v45 = v14;

    v15 = v41;
    v16 = v45;
    *v45 = v75;
    v16[1] = v15;

    v17 = v42;
    v18 = v45;
    v45[2] = v76;
    v18[3] = v17;

    v19 = v44;
    v20 = v45;
    v45[4] = v77;
    v20[5] = v19;
    sub_1B9E8B398();

    if (os_log_type_enabled(v47, v48))
    {
      v21 = v66;
      v28 = sub_1B9ED8E8C();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v29 = sub_1B9E945DC(0);
      v30 = sub_1B9E945DC(1);
      v31 = v105;
      v105[0] = v28;
      v32 = &v104;
      v104 = v29;
      v33 = &v103;
      v103 = v30;
      sub_1B9E94630(2, v105);
      sub_1B9E94630(1, v31);
      v101 = v75;
      v102 = v41;
      sub_1B9E94644(&v101, v31, v32, v33);
      v34 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v101 = v76;
        v102 = v42;
        sub_1B9E94644(&v101, v105, &v104, &v103);
        v26 = 0;
        v101 = v77;
        v102 = v44;
        sub_1B9E94644(&v101, v105, &v104, &v103);
        _os_log_impl(&dword_1B9E4B000, v47, v48, "Returning shouldIgnoreString = true for item providers %s", v28, 0xCu);
        sub_1B9E94690(v29);
        sub_1B9E94690(v30);
        sub_1B9ED8E6C();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v47);
    (*(v80 + 8))(v83, v79);
  }

  if ((v52 & 0x100000000) != 0)
  {
    v25 = v49;
  }

  else
  {
    v25 = 0;
  }

  v24 = v25;

  return v24 & 1;
}

uint64_t sub_1B9EBE558@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*a1 registeredContentTypes];
  sub_1B9ED858C();
  *a2 = sub_1B9ED8C0C();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B9EBE5D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9EBE608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[16] = a3;
  v5[15] = a2;
  v5[14] = a1;
  v5[8] = v5;
  v5[9] = 0;
  v5[10] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[13] = 0;
  v6 = sub_1B9ED85DC();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = sub_1B9ED834C();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
  v5[25] = swift_task_alloc();
  v8 = sub_1B9ED842C();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[9] = a2;
  v5[10] = a3;
  v5[2] = a4;
  v5[3] = a5;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBE90C, 0);
}

uint64_t sub_1B9EBE90C()
{
  v76 = v0;
  v75[1] = *MEMORY[0x1E69E9840];
  v67 = v0[27];
  v69 = v0[26];
  v68 = v0[25];
  v1 = v0[15];
  v0[8] = v0;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63D0);
  sub_1B9ECBDAC();
  sub_1B9ED8D7C();
  if ((*(v67 + 48))(v68, 1, v69) == 1)
  {
    v64 = v66[16];
    v65 = v66[14];
    sub_1B9EA4804(v66[25]);
    v2 = sub_1B9ED88CC();
    (*(*(v2 - 8) + 16))(v65, v64);
  }

  else
  {
    v53 = v66[32];
    v54 = v66[30];
    v58 = v66[29];
    v56 = v66[26];
    v50 = v66[24];
    v51 = v66[22];
    v48 = v66[18];
    v47 = v66[17];
    v52 = v66[27];
    v49 = v66[23];
    (*(v52 + 32))(v53, v66[25]);
    v66[4] = sub_1B9ED835C();
    v66[5] = v3;
    sub_1B9ED83DC();
    v66[6] = v47;
    v66[7] = v48;
    sub_1B9ECD28C();
    sub_1B9EBFA20(v50);
    sub_1B9ED841C();
    (*(v49 + 8))(v50, v51);
    sub_1B9ED83CC();
    v57 = *(v52 + 8);
    v57(v58, v56);
    v73 = 0;
    v62 = [objc_opt_self() defaultManager];
    v55 = *(v52 + 16);
    (v55)(v58, v53, v56);
    v61 = sub_1B9ED83AC();
    v57(v58, v56);
    (v55)(v58, v54, v56);
    v60 = sub_1B9ED83AC();
    v57(v58, v56);
    v66[12] = 0;
    v63 = [v62 moveItemAtURL:v61 toURL:v60 error:v66 + 12];
    v59 = v66[12];
    MEMORY[0x1E69E5928](v59);
    v4 = v73;
    v73 = v59;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v60);
    MEMORY[0x1E69E5920](v61);
    MEMORY[0x1E69E5920](v62);
    if (v63)
    {
      v55();
      sub_1B9E8EC5C();
      sub_1B9ED88DC();
      v45 = v66[32];
      v44 = v66[31];
      v46 = v66[26];
      (v57)(v66[30]);
      v57(v44, v46);

      v57(v45, v46);
    }

    else
    {
      v13 = sub_1B9ED832C();
      MEMORY[0x1E69E5920](v73);
      swift_willThrow();
      v7 = v66[21];
      v27 = v66[19];
      v29 = v66[18];
      v28 = v66[17];
      v26 = v66[20];
      v8 = v13;
      v66[13] = v13;
      v9 = sub_1B9EA545C();
      (*(v26 + 16))(v7, v9, v27);

      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      v10 = v13;
      v32 = swift_allocObject();
      *(v32 + 16) = v13;
      sub_1B9E9EF40();

      oslog = sub_1B9ED85BC();
      v43 = sub_1B9ED8DCC();
      v35 = swift_allocObject();
      *(v35 + 16) = 32;
      v36 = swift_allocObject();
      *(v36 + 16) = 8;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1B9ECB558;
      *(v31 + 24) = v30;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1B9E96AFC;
      *(v37 + 24) = v31;
      v38 = swift_allocObject();
      *(v38 + 16) = 64;
      v39 = swift_allocObject();
      *(v39 + 16) = 8;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1B9E9F664;
      *(v33 + 24) = v32;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1B9EA4AC0;
      *(v34 + 24) = v33;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1B9E9F2BC;
      *(v40 + 24) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      sub_1B9ED914C();
      v41 = v11;

      *v41 = sub_1B9E96AF4;
      v41[1] = v35;

      v41[2] = sub_1B9E96AF4;
      v41[3] = v36;

      v41[4] = sub_1B9E96B08;
      v41[5] = v37;

      v41[6] = sub_1B9E96AF4;
      v41[7] = v38;

      v41[8] = sub_1B9E96AF4;
      v41[9] = v39;

      v41[10] = sub_1B9E9F44C;
      v41[11] = v40;
      sub_1B9E8B398();

      if (os_log_type_enabled(oslog, v43))
      {
        buf = sub_1B9ED8E8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v24 = sub_1B9E945DC(1);
        v25 = sub_1B9E945DC(1);
        v70 = buf;
        v74 = v24;
        v75[0] = v25;
        sub_1B9E94630(2, &v70);
        sub_1B9E94630(2, &v70);
        v71 = sub_1B9E96AF4;
        v72 = v35;
        sub_1B9E94644(&v71, &v70, &v74, v75);
        v71 = sub_1B9E96AF4;
        v72 = v36;
        sub_1B9E94644(&v71, &v70, &v74, v75);
        v71 = sub_1B9E96B08;
        v72 = v37;
        sub_1B9E94644(&v71, &v70, &v74, v75);
        v71 = sub_1B9E96AF4;
        v72 = v38;
        sub_1B9E94644(&v71, &v70, &v74, v75);
        v71 = sub_1B9E96AF4;
        v72 = v39;
        sub_1B9E94644(&v71, &v70, &v74, v75);
        v71 = sub_1B9E9F44C;
        v72 = v40;
        sub_1B9E94644(&v71, &v70, &v74, v75);
        _os_log_impl(&dword_1B9E4B000, oslog, v43, "Failed to rename file to filename %s: %@", buf, 0x16u);
        sub_1B9E94690(v24);
        sub_1B9E94690(v25);
        sub_1B9ED8E6C();
      }

      else
      {
      }

      v21 = v66[32];
      v20 = v66[31];
      v19 = v66[30];
      v22 = v66[26];
      v15 = v66[21];
      v16 = v66[19];
      v17 = v66[16];
      v18 = v66[14];
      v14 = v66[20];
      MEMORY[0x1E69E5920](oslog);
      (*(v14 + 8))(v15, v16);
      v12 = sub_1B9ED88CC();
      (*(*(v12 - 8) + 16))(v18, v17);

      v57(v19, v22);
      v57(v20, v22);

      v57(v21, v22);
    }
  }

  v5 = *(v66[8] + 8);

  return v5();
}

uint64_t sub_1B9EBFA20@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6968F70];
  v1 = sub_1B9ED834C();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t static SFAirDropUtilities.standardPreviewImage(for:size:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 136) = v3;
  *(v4 + 128) = a3;
  *(v4 + 120) = a2;
  *(v4 + 112) = a1;
  *(v4 + 48) = v4;
  *(v4 + 56) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 88) = 0;
  v5 = sub_1B9ED88CC();
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_1B9ED842C();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 56) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBFCC4, 0);
}

{
  *(v4 + 136) = v3;
  *(v4 + 128) = a3;
  *(v4 + 120) = a2;
  *(v4 + 112) = a1;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
  *(v4 + 144) = swift_task_alloc();
  v5 = sub_1B9ED842C();
  *(v4 + 152) = v5;
  *(v4 + 160) = *(v5 - 8);
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_1B9ED898C();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 40) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC3384, 0);
}

uint64_t sub_1B9EBFCC4()
{
  v25 = v0[14];
  v0[6] = v0;
  v0[9] = sub_1B9ED914C();

  v0[10] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63D0);
  sub_1B9ECBDAC();
  sub_1B9ED8D9C();
  while (1)
  {
    v22 = *(v24 + 208);
    v23 = *(v24 + 176);
    v21 = *(v24 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE63E0);
    sub_1B9ED8FDC();
    if ((*(v21 + 48))(v22, 1, v23) == 1)
    {
      break;
    }

    (*(*(v24 + 184) + 32))(*(v24 + 200), *(v24 + 208), *(v24 + 176));
    if ((sub_1B9ED833C() & 1) == 0)
    {
      v1 = swift_task_alloc();
      *(v24 + 216) = v1;
      *v1 = *(v24 + 48);
      v1[1] = sub_1B9EC0378;
      v2 = *(v24 + 200);

      return static SFAirDropUtilities.generateWebPreviewImage(url:)(v2);
    }

    v20 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v24 + 200), *(v24 + 120), *(v24 + 128));
    if (v20)
    {
      v4 = *(v24 + 200);
      v5 = *(v24 + 184);
      v6 = *(v24 + 176);
      *(v24 + 88) = v20;
      (*(v5 + 8))(v4, v6);
      sub_1B9E9895C();
      sub_1B9E9895C();

      v7 = *(*(v24 + 48) + 8);

      return v7(v20);
    }

    (*(*(v24 + 184) + 16))();
    sub_1B9E8EC5C();
    sub_1B9ED88DC();
    v18 = *(v24 + 200);
    v19 = *(v24 + 176);
    v15 = *(v24 + 168);
    v16 = *(v24 + 144);
    v17 = *(v24 + 184);
    v14 = *(v24 + 152);
    (*(v14 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE63F0);
    sub_1B9ED8C4C();
    (*(v14 + 8))(v15, v16);
    (*(v17 + 8))(v18, v19);
  }

  sub_1B9E9895C();
  v13 = *(v24 + 72);
  *(v24 + 232) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6600);
  v11 = sub_1B9ED914C();
  *(v24 + 240) = v11;
  v12 = sub_1B9ED914C();
  *(v24 + 248) = v12;
  v8 = swift_task_alloc();
  *(v24 + 256) = v8;
  *v8 = *(v24 + 48);
  v8[1] = sub_1B9EC0678;
  v9 = *(v24 + 128);
  v10 = *(v24 + 120);

  return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(v13, v11, v12, v10, v9);
}

uint64_t sub_1B9EC0378(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 48) = *v1;
  *(v3 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC0494, 0);
}

uint64_t sub_1B9EC0494()
{
  v1 = v0[28];
  v0[6] = v0;
  v0[13] = v1;
  if (v0[13])
  {
    v5[12] = v5[13];
  }

  else
  {
    sub_1B9ECBE34();
    v5[12] = sub_1B9E9CA54();
    if (v5[13])
    {
      sub_1B9E9F1DC(v5 + 13);
    }
  }

  v4 = v5[12];
  (*(v5[23] + 8))(v5[25], v5[22]);
  sub_1B9E9895C();
  sub_1B9E9895C();

  v2 = *(v5[6] + 8);

  return v2(v4);
}

uint64_t sub_1B9EC0678(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[33] = a1;
  v5[34] = v1;

  if (v1)
  {
    v3 = sub_1B9EC0920;
  }

  else
  {

    v3 = sub_1B9EC081C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0);
}

uint64_t sub_1B9EC081C()
{
  *(v0 + 48) = v0;
  sub_1B9E9895C();
  v3 = *(v0 + 264);

  v1 = *(*(v0 + 48) + 8);

  return v1(v3);
}

uint64_t sub_1B9EC0920()
{
  *(v0 + 48) = v0;

  sub_1B9E9895C();

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t static SFAirDropUtilities.generateWebPreviewImage(url:)(uint64_t a1)
{
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B9EC0A8C, 0);
}

uint64_t sub_1B9EC0A8C()
{
  v5 = v0[6];
  v0[2] = v0;
  v7 = sub_1B9ED8B1C();
  v8 = v1;
  v0[7] = v1;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *(v9 + 16) = v5;
  v2 = swift_task_alloc();
  *(v6 + 72) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6400);
  *v2 = *(v6 + 16);
  v2[1] = sub_1B9EC0BD0;

  return MEMORY[0x1EEE6DDE0](v6 + 40, 0, 0, v7, v8, sub_1B9ECBE98, v9, v3);
}

uint64_t sub_1B9EC0BD0()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC0D28, 0);
}

uint64_t static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 280) = a5;
  *(v6 + 272) = a4;
  *(v6 + 264) = a3;
  *(v6 + 256) = a2;
  *(v6 + 248) = a1;
  *(v6 + 128) = v6;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 160) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 208) = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  v7 = sub_1B9ED85DC();
  *(v6 + 288) = v7;
  *(v6 + 296) = *(v7 - 8);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
  *(v6 + 320) = swift_task_alloc();
  v8 = sub_1B9ED842C();
  *(v6 + 328) = v8;
  *(v6 + 336) = *(v8 - 8);
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8);
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  v9 = sub_1B9ED858C();
  *(v6 + 384) = v9;
  *(v6 + 392) = *(v9 - 8);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6408);
  *(v6 + 440) = swift_task_alloc();
  v10 = sub_1B9ED88CC();
  *(v6 + 448) = v10;
  *(v6 + 456) = *(v10 - 8);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  *(v6 + 152) = a3;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 160) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC11B0, 0);
}

uint64_t sub_1B9EC11B0()
{
  v84 = *(v0 + 248);
  *(v0 + 128) = v0;

  if (v84)
  {
    *(v83 + 240) = *(v83 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE63F0);
    sub_1B9ECC190();
    sub_1B9ED8D7C();
  }

  else
  {
    (*(*(v83 + 456) + 56))(*(v83 + 440), 1, 1, *(v83 + 448));
  }

  if ((*(*(v83 + 456) + 48))(*(v83 + 440), 1, *(v83 + 448)) != 1)
  {
    v77 = *(v83 + 464);
    v78 = *(v83 + 448);
    v81 = *(v83 + 280);
    v80 = *(v83 + 272);
    v76 = *(v83 + 456);
    (*(v76 + 32))();
    v79 = sub_1B9ED914C();
    (*(v76 + 16))(v1, v77, v78);
    sub_1B9E8B398();
    *(v83 + 472) = v79;
    v82 = swift_task_alloc();
    *(v83 + 480) = v82;
    *(v82 + 16) = v80;
    *(v82 + 24) = v81;
    v2 = swift_task_alloc();
    *(v83 + 488) = v2;
    v3 = sub_1B9ECBE34();
    *v2 = *(v83 + 128);
    v2[1] = sub_1B9EC25C4;

    return MEMORY[0x1EEE38078](v83 + 232, v79, &unk_1B9EDF868, v82, v3);
  }

  v73 = *(v83 + 256);
  sub_1B9ECBEA0(*(v83 + 440));
  *(v83 + 168) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6410);
  sub_1B9ECBF48();
  sub_1B9ED8D7C();
  v74 = *(v83 + 32);
  v75 = *(v83 + 40);
  *(v83 + 504) = v75;
  if (v75 == 1)
  {
    goto LABEL_26;
  }

  *(v83 + 48) = v74;
  *(v83 + 56) = v75;

  if (!v75)
  {

    goto LABEL_26;
  }

  v71 = *(v83 + 384);
  v70 = *(v83 + 376);
  v69 = *(v83 + 392);
  *(v83 + 64) = v74;
  *(v83 + 72) = v75;

  sub_1B9EBC2BC(v74, v75, 1, v70);
  v72 = *(v69 + 48);
  if (v72(v70, 1, v71) == 1)
  {
    sub_1B9EC8CA0(*(v83 + 376));

LABEL_26:
    v11 = *(v83 + 304);
    v25 = *(v83 + 288);
    v24 = *(v83 + 296);
    v12 = sub_1B9EA545C();
    (*(v24 + 16))(v11, v12, v25);
    oslog = sub_1B9ED85BC();
    v26 = sub_1B9ED8DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
    v28 = sub_1B9ED914C();
    if (os_log_type_enabled(oslog, v26))
    {
      buf = sub_1B9ED8E8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v21 = sub_1B9E945DC(0);
      v22 = sub_1B9E945DC(0);
      *(v83 + 176) = buf;
      *(v83 + 184) = v21;
      *(v83 + 192) = v22;
      sub_1B9E94630(0, (v83 + 176));
      sub_1B9E94630(0, (v83 + 176));
      *(v83 + 200) = v28;
      v23 = swift_task_alloc();
      v23[2] = v83 + 176;
      v23[3] = v83 + 184;
      v23[4] = v83 + 192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320);
      sub_1B9E96D38();
      sub_1B9ED8BDC();

      _os_log_impl(&dword_1B9E4B000, oslog, v26, "Missing fileTypeID", buf, 2u);
      sub_1B9E94690(v21);
      sub_1B9E94690(v22);
      sub_1B9ED8E6C();
    }

    v17 = *(v83 + 304);
    v18 = *(v83 + 288);
    v16 = *(v83 + 296);
    MEMORY[0x1E69E5920](oslog);
    (*(v16 + 8))(v17, v18);
    v19 = sub_1B9ED889C();
    sub_1B9ECBFD0();
    swift_allocError();
    (*(*(v19 - 8) + 104))(v13, *MEMORY[0x1E69CDC58]);
    swift_willThrow();

    v14 = *(*(v83 + 128) + 8);

    return v14();
  }

  v64 = *(v83 + 432);
  v65 = *(v83 + 424);
  v68 = *(v83 + 384);
  v67 = *(v83 + 368);
  v63 = *(v83 + 392);
  v62 = *(v63 + 32);
  v62();
  v66 = *(v63 + 16);
  v66(v65, v64, v68);
  v4 = sub_1B9ED8B1C();
  sub_1B9EBC2BC(v4, v5, 1, v67);
  if (v72(v67, 1, v68) == 1)
  {
    sub_1B9EC8CA0(*(v83 + 368));
  }

  else
  {
    v62();
    if ((sub_1B9ED854C() & 1) == 0 || (*(v83 + 224) = *(v83 + 264), sub_1B9ED8D7C(), v60 = *(v83 + 80), v61 = *(v83 + 88), v61 == 1))
    {
      (*(*(v83 + 392) + 8))(*(v83 + 416), *(v83 + 384));
    }

    else
    {
      *(v83 + 96) = v60;
      *(v83 + 104) = v61;

      if (v61)
      {
        v59 = *(v83 + 384);
        v58 = *(v83 + 360);
        *(v83 + 112) = v60;
        *(v83 + 120) = v61;

        sub_1B9EBC2BC(v60, v61, 1, v58);
        if (v72(v58, 1, v59) == 1)
        {
          v53 = *(v83 + 416);
          v54 = *(v83 + 384);
          v52 = *(v83 + 392);
          sub_1B9EC8CA0(*(v83 + 360));

          (*(v52 + 8))(v53, v54);
        }

        else
        {
          v47 = *(v83 + 424);
          v49 = *(v83 + 416);
          v48 = *(v83 + 408);
          v46 = *(v83 + 400);
          v50 = *(v83 + 384);
          v45 = *(v83 + 392);
          v62();
          v66(v46, v48, v50);
          (*(v45 + 40))(v47, v46, v50);
          v51 = *(v45 + 8);
          v51(v48, v50);

          v51(v49, v50);
        }
      }

      else
      {
        v56 = *(v83 + 416);
        v57 = *(v83 + 384);
        v55 = *(v83 + 392);

        (*(v55 + 8))(v56, v57);
      }
    }
  }

  sub_1B9ED8B1C();
  sub_1B9ED840C();

  sub_1B9ED8B1C();
  sub_1B9ED8B1C();
  sub_1B9ED8E9C();
  v36 = *(v83 + 424);
  v39 = *(v83 + 400);
  v38 = *(v83 + 384);
  v32 = *(v83 + 352);
  v33 = *(v83 + 344);
  v31 = *(v83 + 328);
  v29 = *(v83 + 320);
  v34 = *(v83 + 280);
  v35 = *(v83 + 272);
  v37 = *(v83 + 392);
  v30 = *(v83 + 336);

  sub_1B9EA4804(v29);
  sub_1B9ECC050();
  (*(v30 + 16))(v33, v32, v31);
  v6 = SFScreenScale();
  v41 = sub_1B9EC4D44(v33, v35, v34, v6);
  *(v83 + 512) = v41;
  *(v83 + 208) = v41;
  v66(v39, v36, v38);
  v40 = sub_1B9ED84CC();
  v7 = *(v37 + 8);
  *(v83 + 520) = v7;
  *(v83 + 528) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v39, v38);
  [v41 setContentType_];
  MEMORY[0x1E69E5920](v40);
  [v41 setIconMode_];
  [v41 setIconVariant_];
  v42 = sub_1B9ED8B1C();
  v43 = v8;
  *(v83 + 536) = v8;
  MEMORY[0x1E69E5928](v41);
  v44 = swift_task_alloc();
  *(v83 + 544) = v44;
  *(v44 + 16) = v41;
  v9 = swift_task_alloc();
  *(v83 + 552) = v9;
  v10 = sub_1B9ECBE34();
  *v9 = *(v83 + 128);
  v9[1] = sub_1B9EC2914;

  return MEMORY[0x1EEE6DE38](v83 + 216, 0, 0, v42, v43, sub_1B9ECC0B4, v44, v10);
}

uint64_t sub_1B9EC25C4()
{
  v4 = *v1;
  *(v4 + 128) = *v1;
  *(v4 + 496) = v0;

  if (v0)
  {
    v2 = sub_1B9EC2D18;
  }

  else
  {

    v2 = sub_1B9EC2750;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EC2750()
{
  v1 = v0[58];
  v2 = v0[57];
  v3 = v0[56];
  v0[16] = v0;
  v6 = v0[29];
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[16] + 8);

  return v4(v6);
}

uint64_t sub_1B9EC2914()
{
  v5 = *v1;
  v5[16] = *v1;
  v5[70] = v0;

  if (v0)
  {
    v2 = sub_1B9EC2F04;
  }

  else
  {
    v4 = v5[64];

    v2 = sub_1B9EC2AB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EC2AB0()
{
  v10 = v0[65];
  v1 = v0[64];
  v8 = v0[54];
  v7 = v0[53];
  v9 = v0[48];
  v5 = v0[44];
  v4 = v0[42];
  v6 = v0[41];
  v0[16] = v0;
  v11 = v0[27];
  MEMORY[0x1E69E5920](v1);
  (*(v4 + 8))(v5, v6);
  v10(v7, v9);
  v10(v8, v9);

  v2 = *(v0[16] + 8);

  return v2(v11);
}

uint64_t sub_1B9EC2D18()
{
  v4 = v0[58];
  v3 = v0[57];
  v5 = v0[56];
  v0[16] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[16] + 8);

  return v1();
}

uint64_t sub_1B9EC2F04()
{
  v10 = v0[65];
  v3 = v0[64];
  v8 = v0[54];
  v7 = v0[53];
  v9 = v0[48];
  v5 = v0[44];
  v4 = v0[42];
  v6 = v0[41];
  v0[16] = v0;

  MEMORY[0x1E69E5920](v3);

  MEMORY[0x1E69E5920](v3);
  (*(v4 + 8))(v5, v6);
  v10(v7, v9);
  v10(v8, v9);

  v1 = *(v0[16] + 8);

  return v1();
}

uint64_t sub_1B9EC3384()
{
  v20 = v0[24];
  v19 = v0[23];
  v21 = v0[22];
  v0[4] = v0;
  sub_1B9ED884C();
  if ((*(v19 + 88))(v20, v21) != *MEMORY[0x1E69CDDB8])
  {
    (*(*(v18 + 23) + 8))(*(v18 + 24), *(v18 + 22));
LABEL_8:
    *(v18 + 7) = sub_1B9ED882C();
    if (*(v18 + 7))
    {
      v22 = *(v18 + 7);
    }

    else
    {
      v22 = sub_1B9ED883C();
      if (*(v18 + 7))
      {
        sub_1B9E9F1DC(v18 + 7);
      }
    }

    if (v22)
    {
      *(v18 + 10) = v22;
      sub_1B9ECBE34();
      v14 = sub_1B9EC3F78(v22);

      v4 = *(*(v18 + 4) + 8);

      return v4(v14);
    }

    else
    {
      *(v18 + 8) = sub_1B9ED885C();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6438);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6600);
      v12 = sub_1B9ECC218();
      v13 = sub_1B9EA5A9C(sub_1B9EC3FB8, 0, v9, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
      *(v18 + 27) = v13;
      sub_1B9E9895C();
      *(v18 + 9) = sub_1B9ED885C();
      v8 = sub_1B9EA5A9C(sub_1B9EC4008, 0, v9, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
      *(v18 + 28) = v8;
      sub_1B9E9895C();
      v5 = swift_task_alloc();
      *(v18 + 29) = v5;
      *v5 = *(v18 + 4);
      v5[1] = sub_1B9EC3C8C;
      v6 = v18[16];
      v7 = v18[15];

      return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(0, v13, v8, v7, v6);
    }
  }

  v17 = *(v18 + 19);
  v16 = *(v18 + 18);
  v15 = *(v18 + 20);
  (*(*(v18 + 23) + 8))(*(v18 + 24), *(v18 + 22));
  *(v18 + 11) = sub_1B9ED888C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6448);
  sub_1B9ECC2A0();
  sub_1B9ED8D7C();
  if ((*(v15 + 48))(v16, 1, v17) == 1)
  {
    sub_1B9EA4804(*(v18 + 18));

    goto LABEL_8;
  }

  (*(*(v18 + 20) + 32))(*(v18 + 21), *(v18 + 18), *(v18 + 19));

  v1 = swift_task_alloc();
  *(v18 + 25) = v1;
  *v1 = *(v18 + 4);
  v1[1] = sub_1B9EC39C4;
  v2 = *(v18 + 21);

  return static SFAirDropUtilities.generateWebPreviewImage(url:)(v2);
}

uint64_t sub_1B9EC39C4(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC3AE0, 0);
}

uint64_t sub_1B9EC3AE0()
{
  v1 = v0[26];
  v0[4] = v0;
  v0[13] = v1;
  if (v0[13])
  {
    v5[12] = v5[13];
  }

  else
  {
    sub_1B9ECBE34();
    v5[12] = sub_1B9E9CA54();
    if (v5[13])
    {
      sub_1B9E9F1DC(v5 + 13);
    }
  }

  v4 = v5[12];
  (*(v5[20] + 8))(v5[21], v5[19]);

  v2 = *(v5[4] + 8);

  return v2(v4);
}

uint64_t sub_1B9EC3C8C(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 32) = *v2;
  *(v6 + 240) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B9EC3E90, 0);
  }

  else
  {

    v3 = *(*(v6 + 32) + 8);

    return v3(a1);
  }
}

uint64_t sub_1B9EC3E90()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_1B9EC3FB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9ED887C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B9EC4008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9ED886C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B9EC4058(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 120) = a4;
  *(v4 + 112) = a3;
  *(v4 + 104) = a2;
  *(v4 + 96) = a1;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 88) = 0;
  v5 = sub_1B9ED85DC();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
  *(v4 + 152) = swift_task_alloc();
  v6 = sub_1B9ED842C();
  *(v4 + 160) = v6;
  *(v4 + 168) = *(v6 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 40) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC424C, 0);
}

uint64_t sub_1B9EC424C()
{
  v36 = v0[21];
  v38 = v0[20];
  v37 = v0[19];
  v1 = v0[13];
  v0[4] = v0;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63D0);
  sub_1B9ECBDAC();
  sub_1B9ED8D7C();
  if ((*(v36 + 48))(v37, 1, v38) == 1)
  {
    v2 = *(v35 + 144);
    v31 = *(v35 + 128);
    v30 = *(v35 + 136);
    sub_1B9EA4804(*(v35 + 152));
    v3 = sub_1B9EA545C();
    (*(v30 + 16))(v2, v3, v31);
    v33 = sub_1B9ED85BC();
    v32 = sub_1B9ED8DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
    v34 = sub_1B9ED914C();
    if (os_log_type_enabled(v33, v32))
    {
      buf = sub_1B9ED8E8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v17 = sub_1B9E945DC(0);
      v18 = sub_1B9E945DC(0);
      *(v35 + 56) = buf;
      *(v35 + 64) = v17;
      *(v35 + 72) = v18;
      sub_1B9E94630(0, (v35 + 56));
      sub_1B9E94630(0, (v35 + 56));
      *(v35 + 80) = v34;
      v19 = swift_task_alloc();
      v19[2] = v35 + 56;
      v19[3] = v35 + 64;
      v19[4] = v35 + 72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320);
      sub_1B9E96D38();
      sub_1B9ED8BDC();

      _os_log_impl(&dword_1B9E4B000, v33, v32, "Missing URLs for preview", buf, 2u);
      sub_1B9E94690(v17);
      sub_1B9E94690(v18);
      sub_1B9ED8E6C();
    }

    v13 = *(v35 + 144);
    v14 = *(v35 + 128);
    v12 = *(v35 + 136);
    MEMORY[0x1E69E5920](v33);
    (*(v12 + 8))(v13, v14);
    v15 = sub_1B9ED889C();
    sub_1B9ECBFD0();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v9, *MEMORY[0x1E69CDC58]);
    swift_willThrow();

    v10 = *(*(v35 + 32) + 8);

    return v10();
  }

  else
  {
    v22 = *(v35 + 184);
    v23 = *(v35 + 176);
    v21 = *(v35 + 160);
    v24 = *(v35 + 120);
    v25 = *(v35 + 112);
    v20 = *(v35 + 168);
    (*(v20 + 32))();
    sub_1B9ECC050();
    (*(v20 + 16))(v23, v22, v21);
    v4 = SFScreenScale();
    v26 = sub_1B9EC4D44(v23, v25, v24, v4);
    *(v35 + 192) = v26;
    *(v35 + 88) = v26;
    [v26 setIconMode_];
    [v26 setIconVariant_];
    v27 = sub_1B9ED8B1C();
    v28 = v5;
    *(v35 + 200) = v5;
    MEMORY[0x1E69E5928](v26);
    v29 = swift_task_alloc();
    *(v35 + 208) = v29;
    *(v29 + 16) = v26;
    v6 = swift_task_alloc();
    *(v35 + 216) = v6;
    v7 = sub_1B9ECBE34();
    *v6 = *(v35 + 32);
    v6[1] = sub_1B9EC4948;
    v8 = *(v35 + 96);

    return MEMORY[0x1EEE6DE38](v8, 0, 0, v27, v28, sub_1B9ECD048, v29, v7);
  }
}

uint64_t sub_1B9EC4948()
{
  v5 = *v1;
  v5[4] = *v1;
  v5[28] = v0;

  if (v0)
  {
    v2 = sub_1B9EC4BF4;
  }

  else
  {
    v4 = v5[24];

    v2 = sub_1B9EC4AE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EC4AE4()
{
  v1 = v0[24];
  v6 = v0[23];
  v4 = v0[21];
  v5 = v0[20];
  v0[4] = v0;
  MEMORY[0x1E69E5920](v1);
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[4] + 8);

  return v2();
}

uint64_t sub_1B9EC4BF4()
{
  v3 = v0[24];
  v5 = v0[23];
  v4 = v0[21];
  v6 = v0[20];
  v0[4] = v0;

  MEMORY[0x1E69E5920](v3);

  MEMORY[0x1E69E5920](v3);
  (*(v4 + 8))(v5, v6);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_1B9EC4DA4(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v16 = a2;
  v14 = sub_1B9ECD050;
  v27 = 0;
  v26 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = v9;
  v8 = *(v9 + 64);
  v5 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v5 - v5;
  v27 = v2;
  v26 = v3;
  v18 = [objc_opt_self() sharedGenerator];
  (*(v9 + 16))(v12, v6, v13);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v11, v12, v13);
  v24 = v14;
  v25 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_1B9EC51EC;
  v23 = &block_descriptor_367;
  v17 = _Block_copy(&aBlock);

  [v18 generateBestRepresentationForRequest:v16 completionHandler:v17];
  _Block_release(v17);
  return MEMORY[0x1E69E5920](v18);
}

void sub_1B9EC5000(void *a1, void *a2)
{
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    [a1 UIImage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
    sub_1B9ED8C8C();
    MEMORY[0x1E69E5920](a1);
  }

  else
  {
    v2 = a2;
    if (a2)
    {
      v4 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
      sub_1B9ED8C7C();
    }

    else
    {
      v5 = sub_1B9ED889C();
      sub_1B9ECBFD0();
      swift_allocError();
      (*(*(v5 - 8) + 104))(v3, *MEMORY[0x1E69CDC58]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
      sub_1B9ED8C7C();
    }
  }
}

uint64_t sub_1B9EC51EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5(a2);

  MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B9EC52B8(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v16 = a2;
  v14 = sub_1B9ECD050;
  v27 = 0;
  v26 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = v9;
  v8 = *(v9 + 64);
  v5 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v5 - v5;
  v27 = v2;
  v26 = v3;
  v18 = [objc_opt_self() sharedGenerator];
  (*(v9 + 16))(v12, v6, v13);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v11, v12, v13);
  v24 = v14;
  v25 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_1B9EC51EC;
  v23 = &block_descriptor_373;
  v17 = _Block_copy(&aBlock);

  [v18 generateBestRepresentationForRequest:v16 completionHandler:v17];
  _Block_release(v17);
  return MEMORY[0x1E69E5920](v18);
}

uint64_t sub_1B9EC5514(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v8 = a2;
  v22 = sub_1B9ECD1A4;
  v34 = 0;
  v33 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64B8);
  v17 = *(v21 - 8);
  v18 = v21 - 8;
  v15 = v17;
  v16 = *(v17 + 64);
  v7 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v6 - v7;
  v12 = sub_1B9ED842C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v13 = &v6 - v9;
  v34 = v3;
  v33 = v4;
  (*(v10 + 16))(&v6 - v9, v2);
  v25 = sub_1B9ED83AC();
  (*(v10 + 8))(v13, v12);
  (*(v17 + 16))(v20, v14, v21);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  (*(v17 + 32))(v23 + v19, v20, v21);
  v31 = v22;
  v32 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = 0;
  v29 = sub_1B9EC5888;
  v30 = &block_descriptor_379;
  v24 = _Block_copy(&aBlock);

  SFGenerateWebPreviewImage(v25, v24);
  _Block_release(v24);
  return MEMORY[0x1E69E5920](v25);
}

uint64_t sub_1B9EC580C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64B8);
  return sub_1B9ED8C8C();
}

uint64_t sub_1B9EC5888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
  MEMORY[0x1E69E5920](a2);
}

uint64_t static SFAirDropUtilities.createItemPromises(from:sessionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a1;
  v79 = a2;
  v80 = a3;
  v62 = &unk_1B9EDF8A8;
  v118 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v89 = v110;
  memset(v110, 0, sizeof(v110));
  v104 = 0;
  v103 = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v82 = 0;
  v81 = sub_1B9ED87DC();
  v63 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v64 = &v28 - v63;
  v65 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v66 = &v28 - v65;
  v67 = sub_1B9ED87FC();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v71 = &v28 - v70;
  v72 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v28 - v72;
  v118 = &v28 - v72;
  v74 = sub_1B9ED858C();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v28 - v77;
  v83 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v28 - v83;
  v117 = v86;
  v115 = v6;
  v116 = v7;
  v114 = v3;
  v113 = sub_1B9ED914C();
  v85 = static SFAirDropUtilities.shouldIgnoreString(for:)(v86);
  v112 = v85 & 1;
  v87 = *sub_1B9EA6408();

  v111 = v87;
  v108 = v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63B0);
  v8 = sub_1B9ECBBA4();
  MEMORY[0x1BFAE9D40](&v109, v88, v8);
  v107 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6460);
  sub_1B9ED902C();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6468);
    sub_1B9ED903C();
    v59 = v105;
    v60 = v106;
    if (!v106)
    {
      break;
    }

    v57 = v59;
    v58 = v60;
    v56 = v60;
    v55 = v59;
    v104 = v59;
    v103 = v60;
    v99 = static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)(v60, v87);
    v100 = v9;
    MEMORY[0x1E69E5928](v56);

    if (v100)
    {
      v101 = v99;
      v102 = v100;
    }

    else
    {
      v101 = static SFAirDropUtilities.guessedDataType(for:dataTypesToTry:)(v56, v87);
      v102 = v10;
      if (v100)
      {
        sub_1B9E96F0C();
      }
    }

    MEMORY[0x1E69E5920](v56);

    v53 = v101;
    v54 = v102;
    v97 = v101;
    v98 = v102;

    sub_1B9ED859C();
    if ((*(v75 + 48))(v84, 1, v74) == 1)
    {
      sub_1B9EC8CA0(v84);
      v52 = 2;
    }

    else
    {
      sub_1B9ED855C();
      v51 = sub_1B9ED854C();
      v50 = *(v75 + 8);
      v49 = v75 + 8;
      v50(v78, v74);
      v50(v84, v74);
      v52 = v51 & 1;
    }

    v96 = v52;
    if (v52 == 2)
    {
      v48 = 0;
    }

    else
    {
      v48 = v96;
    }

    v45 = v48;
    v46 = 1;
    v95 = v48 & 1;
    sub_1B9ECBAC0();

    v47 = sub_1B9EC65E4(v53, v54, v46 & 1);
    if (v47)
    {
      v44 = v47;
      v41 = v47;
      v90 = v47;
      sub_1B9ED857C();
      v40 = sub_1B9ED84CC();
      (*(v75 + 8))(v78, v74);
      v42 = [v41 conformsToType_];
      MEMORY[0x1E69E5920](v40);
      v94 = v42;
      MEMORY[0x1E69E5920](v41);
      v43 = v42;
    }

    else
    {
      v94 = 0;
      v43 = 0;
    }

    v39 = v43;
    if (v85)
    {
      v38 = v39;
    }

    else
    {
      v38 = 0;
    }

    if (v38)
    {
    }

    else
    {
      static SFAirDropUtilities.suggestedAirDropThumbnailSize()();
      v33 = v11;
      v34 = v12;
      v92 = v11;
      v93 = v12;
      v36 = 0;
      v32 = 1;
      v31 = sub_1B9ED8B1C();
      v30 = v13;
      sub_1B9EC6664();
      sub_1B9ED87EC();
      v14 = sub_1B9ED8CDC();
      (*(*(v14 - 8) + 56))(v66, v32);
      MEMORY[0x1E69E5928](v56);

      v15 = swift_allocObject();
      v16 = v87;
      v17 = v32;
      v18 = v85;
      v19 = v33;
      v20 = v34;
      v21 = v79;
      v22 = v80;
      v23 = v55;
      v24 = v61;
      v25 = v56;
      v35 = v15;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = v25;
      *(v15 + 40) = v16;
      *(v15 + 48) = v18 & v17;
      *(v15 + 56) = v19;
      *(v15 + 64) = v20;
      *(v15 + 72) = v21;
      *(v15 + 80) = v22;
      *(v15 + 88) = v23;
      *(v15 + 96) = v24;
      v26 = sub_1B9ED881C();
      v37 = sub_1B9E8E6AC(v36, v36, v66, v62, v35, v26);
      v91 = v37;

      (*(v68 + 16))(v71, v73, v67);
      sub_1B9ED87CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6470);
      sub_1B9ED8C4C();

      (*(v68 + 8))(v73, v67);
    }

    MEMORY[0x1E69E5920](v56);
  }

  sub_1B9E9895C();
  v28 = &v113;
  v29 = v113;

  sub_1B9E9895C();
  return v29;
}

id sub_1B9EC65E4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1B9ED8A9C();
  v6 = [swift_getObjCClassFromMetadata() _typeWithIdentifier_allowUndeclared_];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

uint64_t sub_1B9EC666C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 168) = v25;
  *(v10 + 160) = v24;
  *(v10 + 152) = a10;
  *(v10 + 144) = a9;
  *(v10 + 136) = a3;
  *(v10 + 128) = a2;
  *(v10 + 337) = a8 & 1;
  *(v10 + 120) = a7;
  *(v10 + 112) = a6;
  *(v10 + 104) = a1;
  *(v10 + 64) = v10;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 336) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  v11 = sub_1B9ED85DC();
  *(v10 + 176) = v11;
  *(v10 + 184) = *(v11 - 8);
  *(v10 + 192) = swift_task_alloc();
  v12 = sub_1B9ED842C();
  *(v10 + 200) = v12;
  *(v10 + 208) = *(v12 - 8);
  *(v10 + 216) = swift_task_alloc();
  *(v10 + 224) = swift_task_alloc();
  v13 = sub_1B9ED88CC();
  *(v10 + 232) = v13;
  *(v10 + 240) = *(v13 - 8);
  *(v10 + 248) = swift_task_alloc();
  *(v10 + 256) = swift_task_alloc();
  v14 = sub_1B9ED87FC();
  *(v10 + 264) = v14;
  *(v10 + 272) = *(v14 - 8);
  *(v10 + 280) = swift_task_alloc();
  *(v10 + 288) = swift_task_alloc();
  *(v10 + 296) = type metadata accessor for SFAirDropUtilities.FileLoadResult();
  *(v10 + 304) = swift_task_alloc();
  *(v10 + 72) = a6;
  *(v10 + 80) = a7;
  *(v10 + 336) = a8 & 1;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a9;
  *(v10 + 40) = a10;
  *(v10 + 88) = v24;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC6A30, 0);
}

uint64_t sub_1B9EC6A30()
{
  *(v0 + 64) = v0;
  sub_1B9ED8B1C();
  *(v0 + 312) = v1;
  v2 = swift_task_alloc();
  *(v10 + 320) = v2;
  *v2 = *(v10 + 64);
  v2[1] = sub_1B9EC6B84;
  v3 = *(v10 + 304);
  v4 = *(v10 + 136);
  v5 = *(v10 + 128);
  v6 = *(v10 + 120);
  v7 = *(v10 + 112);
  v8 = *(v10 + 337) & 1;

  return static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)(v3, v7, v6, 0, 0, 0, v8, 1, v5, v4);
}

uint64_t sub_1B9EC6B84()
{
  v4 = *v1;
  *(v4 + 64) = *v1;
  *(v4 + 328) = v0;

  if (v0)
  {
    v2 = sub_1B9EC7104;
  }

  else
  {

    v2 = sub_1B9EC6D00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EC6D00()
{
  v17 = v0[38];
  v1 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v20 = v0[32];
  v21 = v0[31];
  v6 = v0[30];
  v11 = v0[29];
  v22 = v0[28];
  v23 = v0[27];
  v7 = v0[26];
  v9 = v0[25];
  v0[8] = v0;
  v5 = *(v17 + *(v1 + 24));
  MEMORY[0x1E69E5928](v5);
  v15 = static SFAirDropUtilities.imageData(for:)(v5);
  v16 = v2;
  MEMORY[0x1E69E5920](v5);
  v0[6] = v15;
  v0[7] = v16;
  v12 = *(v6 + 16);
  v12(v20, v17, v11);
  sub_1B9ED88BC();
  v8 = *(v6 + 8);
  v8(v20, v11);
  sub_1B9ED839C();
  v10 = *(v7 + 8);
  v10(v22, v9);

  v12(v21, v17, v11);
  sub_1B9ED88BC();
  v8(v21, v11);
  sub_1B9ED838C();
  v10(v23, v9);
  sub_1B9ECABF8(v15, v16);
  sub_1B9EC6664();
  sub_1B9ED87EC();
  v12(v20, v17, v11);
  (*(v13 + 16))(v19, v18, v14);
  sub_1B9ED880C();
  (*(v13 + 8))(v18, v14);
  sub_1B9ECABB0(v15, v16);
  sub_1B9ECB350(v17);

  v3 = *(v0[8] + 8);

  return v3();
}

uint64_t sub_1B9EC7104()
{
  v46 = v0;
  v21 = v0[41];
  v1 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[20];
  v20 = v0[19];
  v19 = v0[18];
  v0[8] = v0;

  v2 = v21;
  v0[12] = v21;
  v3 = sub_1B9EA545C();
  (*(v16 + 16))(v1, v3, v17);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;

  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v20;
  v4 = v21;
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  sub_1B9E9EF40();

  v39 = sub_1B9ED85BC();
  v40 = sub_1B9ED8DCC();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B9ECCEDC;
  *(v23 + 24) = v22;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B9ECCF20;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B9ECB558;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1B9E96AFC;
  *(v34 + 24) = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = 64;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B9E9F664;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B9EA4AC0;
  *(v28 + 24) = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1B9E9F2BC;
  *(v37 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
  sub_1B9ED914C();
  v38 = v5;

  *v38 = sub_1B9E96AF4;
  v38[1] = v29;

  v38[2] = sub_1B9E96AF4;
  v38[3] = v30;

  v38[4] = sub_1B9ECCF2C;
  v38[5] = v31;

  v38[6] = sub_1B9E96AF4;
  v38[7] = v32;

  v38[8] = sub_1B9E96AF4;
  v38[9] = v33;

  v38[10] = sub_1B9E96B08;
  v38[11] = v34;

  v38[12] = sub_1B9E96AF4;
  v38[13] = v35;

  v38[14] = sub_1B9E96AF4;
  v38[15] = v36;

  v38[16] = sub_1B9E9F44C;
  v38[17] = v37;
  sub_1B9E8B398();

  if (os_log_type_enabled(v39, v40))
  {
    buf = sub_1B9ED8E8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
    v13 = sub_1B9E945DC(1);
    v14 = sub_1B9E945DC(1);
    v41 = buf;
    v42 = v13;
    v43 = v14;
    sub_1B9E94630(2, &v41);
    sub_1B9E94630(3, &v41);
    v44 = sub_1B9E96AF4;
    v45 = v29;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9E96AF4;
    v45 = v30;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9ECCF2C;
    v45 = v31;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9E96AF4;
    v45 = v32;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9E96AF4;
    v45 = v33;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9E96B08;
    v45 = v34;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9E96AF4;
    v45 = v35;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9E96AF4;
    v45 = v36;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    v44 = sub_1B9E9F44C;
    v45 = v37;
    sub_1B9E94644(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_1B9E4B000, v39, v40, "Failed to load item %ld for session %s: %@", buf, 0x20u);
    sub_1B9E94690(v13);
    sub_1B9E94690(v14);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v10 = v15[41];
  v11 = v15[24];
  v9 = v15[22];
  v8 = v15[23];
  MEMORY[0x1E69E5920](v39);
  (*(v8 + 8))(v11, v9);
  swift_willThrow();

  v6 = *(v15[8] + 8);

  return v6();
}

uint64_t SFAirDropUtilities.FileLoadError.description.getter()
{
  v10 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {

      sub_1B9ED913C();
      v4 = sub_1B9ED8B1C();
      MEMORY[0x1BFAEA2C0](v4);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340);
      sub_1B9ECC470();
      sub_1B9ED910C();
      v5 = sub_1B9ED8B1C();
      MEMORY[0x1BFAEA2C0](v5);

      sub_1B9E96F0C();
      v7 = sub_1B9ED8B0C();

      return v7;
    }

    else
    {
      return sub_1B9ED8B1C();
    }
  }

  else
  {
    v1 = v10;
    sub_1B9ED913C();
    v2 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
    sub_1B9ED90FC();
    v3 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v3);

    sub_1B9E96F0C();
    v8 = sub_1B9ED8B0C();

    return v8;
  }
}

uint64_t sub_1B9EC83B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a3;
  v38 = a1;
  v39 = a2;
  v28 = "Fatal error";
  v29 = "SharingUI/SFUISwiftUtilities.swift";
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8);
  v30 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v42 = v15 - v30;
  v44 = sub_1B9ED858C();
  v40 = *(v44 - 8);
  v41 = v44 - 8;
  v34 = *(v40 + 64);
  v31 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v32 = v15 - v31;
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v35 = v15 - v33;
  v52 = v15 - v33;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v37 = v15 - v36;
  v51 = v15 - v36;
  v49 = v6;
  v50 = v7;

  v43 = 1;
  sub_1B9EBC2BC(v38, v39, 0, v42);
  if ((*(v40 + 48))(v42, v43, v44) == 1)
  {
    sub_1B9EC8CA0(v42);

    v15[1] = 46;
    v9 = sub_1B9ED913C();
    v18 = &v47;
    v47 = v9;
    v48 = v10;
    v16 = 1;
    v11 = sub_1B9ED8B1C();
    v15[2] = v12;
    MEMORY[0x1BFAEA2C0](v11);

    v45 = v38;
    v46 = v39;
    sub_1B9ED911C();
    v13 = sub_1B9ED8B1C();
    v17 = v14;
    MEMORY[0x1BFAEA2C0](v13);

    v20 = v47;
    v19 = v48;

    sub_1B9E96F0C();
    sub_1B9ED8B0C();
    result = sub_1B9ED900C();
    __break(1u);
  }

  else
  {
    v22 = *(v40 + 32);
    v21 = v40 + 32;
    v22(v35, v42, v44);
    v24 = *(v40 + 16);
    v23 = v40 + 16;
    v24(v32, v35, v44);
    v22(v37, v32, v44);
    v26 = *(v40 + 8);
    v25 = v40 + 8;
    v26(v35, v44);
    v24(v27, v37, v44);

    return (v26)(v37, v44);
  }

  return result;
}

uint64_t sub_1B9EC8868()
{
  v3 = sub_1B9ED858C();
  __swift_allocate_value_buffer(v3, qword_1EBBE7AD0);
  v4 = __swift_project_value_buffer(v3, qword_1EBBE7AD0);
  v0 = sub_1B9ED8B1C();
  return sub_1B9EC83B8(v0, v1, v4);
}

unint64_t sub_1B9EC88D4()
{
  v2 = qword_1EBBE62B0;
  if (!qword_1EBBE62B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62B0);
    return WitnessTable;
  }

  return v2;
}

id sub_1B9EC8950(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  if (a2 == 1)
  {
  }

  return result;
}

void sub_1B9EC89AC(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
    }
  }

  else
  {
  }
}

void *sub_1B9EC8A08(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1B9EC8A48()
{
  v2 = qword_1EBBE62E8;
  if (!qword_1EBBE62E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBE62D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62E8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B9EC8AD0(const void *a1, void *a2)
{
  v6 = sub_1B9ED831C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B9EC8BF8(uint64_t a1)
{
  v3 = sub_1B9ED831C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9EC8CA0(uint64_t a1)
{
  v3 = sub_1B9ED858C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9EC8D48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9EA59E0();
  v1 = sub_1B9ED858C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B9EC8DAC(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_1B9ECB93C();
    sub_1B9EAADD0(v10, a3, v6);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    v11 = a2;
    v3 = sub_1B9ECB93C();
    sub_1B9EAAE34(v10, &v11, v3);
  }

  MEMORY[0x1E69E5920](a3);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B9EC8EA8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a3);
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308);
    sub_1B9EAADD0(v11, a3, v6);
  }

  else
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_1B9ED916C();
      __break(1u);
    }

    v12 = v7;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308);
    sub_1B9EAAE34(v11, &v12, v3);
  }

  MEMORY[0x1E69E5920](a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B9EC8FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a1;
  v11 = a2;
  v20 = a3;
  v12 = sub_1B9ED842C();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v8 - v15;
  v17 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v8 - v17;
  MEMORY[0x1E69E5928](v5);
  MEMORY[0x1E69E5928](v20);
  v21 = *__swift_project_boxed_opaque_existential_1((v19 + 32), *(v19 + 56));
  if (v20)
  {
    v10 = v20;
    v9 = v20;
    v7 = v20;
    sub_1B9EAADD0(v21, v9, v12);
  }

  else
  {
    MEMORY[0x1E69E5928](v11);
    sub_1B9ED83EC();
    (*(v13 + 32))(v18, v16, v12);
    sub_1B9EAAE34(v21, v18, v12);
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v20);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t SFUIPeopleSuggestionImageProvider.previewCornerIcon(for:)(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B9EC9200, 0);
}

uint64_t sub_1B9EC9200()
{
  v7 = v0[9];
  v6 = v0[8];
  v5 = v0[7];
  v0[4] = v0;
  v9 = sub_1B9ED8B1C();
  v10 = v1;
  v0[10] = v1;

  MEMORY[0x1E69E5928](v7);
  v11 = swift_task_alloc();
  v0[11] = v11;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v2 = swift_task_alloc();
  *(v8 + 96) = v2;
  v3 = sub_1B9ECBE34();
  *v2 = *(v8 + 32);
  v2[1] = sub_1B9EC9380;

  return MEMORY[0x1EEE6DE38](v8 + 48, 0, 0, v9, v10, sub_1B9ECC4F8, v11, v3);
}

uint64_t sub_1B9EC9380()
{
  v5 = *v1;
  v5[4] = *v1;
  v5[13] = v0;

  if (v0)
  {
    v2 = sub_1B9EC9578;
  }

  else
  {
    v4 = v5[9];

    v2 = sub_1B9EC952C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9EC9578()
{
  v3 = *(v0 + 72);
  *(v0 + 32) = v0;

  MEMORY[0x1E69E5920](v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_1B9EC9654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v31 = sub_1B9ECCADC;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v33 = 0;
  v37 = sub_1B9ED899C();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v17 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v16 - v17;
  v41 = sub_1B9ED89BC();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v18 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v16 - v18;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v21 = v26;
  v22 = *(v26 + 64);
  v19 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v16 - v19;
  v54 = v4;
  v52 = v5;
  v53 = v6;
  v51 = v7;
  sub_1B9ECCA78();
  v43 = sub_1B9ED8DFC();

  MEMORY[0x1E69E5928](v25);
  (*(v26 + 16))(v29, v20, v30);
  v28 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v8 = swift_allocObject();
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v32 = v8;
  v8[2] = v23;
  v8[3] = v9;
  v8[4] = v10;
  (*(v11 + 32))(v8 + v12, v13, v14);
  v49 = v31;
  v50 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = 0;
  v47 = sub_1B9E9B7E4;
  v48 = &block_descriptor_291;
  v42 = _Block_copy(&aBlock);
  sub_1B9ECA2AC();
  sub_1B9ECA2C4();
  MEMORY[0x1BFAE9FA0](v33, v40, v36, v42);
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  _Block_release(v42);

  return MEMORY[0x1E69E5920](v43);
}

uint64_t sub_1B9EC9A6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a1;
  v33 = a2;
  v37 = a3;
  v24 = a4;
  v34 = sub_1B9ECCD28;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
  v27 = *(v31 - 8);
  v28 = v31 - 8;
  v25 = v27;
  v26 = *(v27 + 64);
  v15 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v30 = &v15 - v15;
  v50 = v4;
  v51 = v5;
  v49 = v6;
  v48 = v7;
  v23 = 0;
  sub_1B9ECCCC4();
  v17 = "CornerIconProvidingSuggestion";
  v18 = 29;
  v16 = 1;
  v19 = sub_1B9ED8B1C();
  v20 = v8;
  v21 = sub_1B9ED8B1C();
  v22 = v9;

  v39 = sub_1B9EC9DF4(v19, v20, v21, v22, v36, v33, v23, v23, 0);
  v47 = v39;
  MEMORY[0x1E69E5928](v39);
  (*(v27 + 16))(v30, v24, v31);

  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = (v29 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v27 + 32))(v35 + v29, v30, v31);
  v10 = v33;
  v11 = v34;
  v12 = v35;
  v13 = (v35 + v32);
  *v13 = v36;
  v13[1] = v10;
  v45 = v11;
  v46 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = 0;
  v43 = sub_1B9ECA1D8;
  v44 = &block_descriptor_297;
  v38 = _Block_copy(&aBlock);

  [v37 requestTransportImageForPeopleSuggestion:v39 resultHandler:v38];
  _Block_release(v38);
  swift_unknownObjectRelease();
  return MEMORY[0x1E69E5920](v39);
}

void sub_1B9EC9E80(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1E69E5928](a1);
    if (a1)
    {
      MEMORY[0x1E69E5928](a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
      sub_1B9ED8C8C();
      MEMORY[0x1E69E5920](a1);
    }

    else
    {
      v3 = a3;
      if (a3)
      {
        v10 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
        sub_1B9ED8C7C();
      }

      else
      {
        v13 = sub_1B9ED891C();
        sub_1B9ECCE5C();
        swift_allocError();
        v14 = v4;
        sub_1B9ED913C();
        v5 = sub_1B9ED8B1C();
        MEMORY[0x1BFAEA2C0](v5);

        sub_1B9ED911C();
        v6 = sub_1B9ED8B1C();
        MEMORY[0x1BFAEA2C0](v6);

        sub_1B9E96F0C();
        v11 = sub_1B9ED8B0C();
        v12 = v7;
        v8 = sub_1B9ED8B1C();
        *v14 = v11;
        v14[1] = v12;
        v14[2] = v8;
        v14[3] = v9;
        v14[4] = 575;
        (*(*(v13 - 8) + 104))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
        sub_1B9ED8C7C();
      }
    }
  }
}

uint64_t sub_1B9ECA1D8(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v7(a2, a3);

  MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B9ECA2C4()
{
  sub_1B9ECA8B0(0);
  sub_1B9ED899C();
  sub_1B9ECCBBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64A0);
  sub_1B9ECCC3C();
  return sub_1B9ED8EEC();
}

id sub_1B9ECA364(uint64_t a1)
{
  v7 = sub_1B9ED842C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1) == 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = sub_1B9ED83AC();
    (*(v8 + 8))(a1, v7);
    v4 = v3;
  }

  v2 = [v5 initWithBundleAtURL_];
  MEMORY[0x1E69E5920](v4);
  return v2;
}

id sub_1B9ECA470(uint64_t a1)
{
  v4 = sub_1B9ED83AC();
  v6 = [v1 initWithAssetBundleAtURL_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1B9ED842C();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

id sub_1B9ECA514(uint64_t a1)
{
  v4 = [v1 initWithCGImage_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1B9ECA564(uint64_t a1, double a2, double a3, double a4)
{
  v10 = sub_1B9ED83AC();
  v12 = [v4 initWithFileAtURL:a2 size:a3 scale:a4 representationTypes:?];
  MEMORY[0x1E69E5920](v10);
  v5 = sub_1B9ED842C();
  (*(*(v5 - 8) + 8))(a1);
  return v12;
}

id sub_1B9ECA638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1B9ED8A9C();
  v16 = sub_1B9ED8A9C();
  v17 = sub_1B9ED8A9C();
  if (a9)
  {
    v11 = sub_1B9ED8A9C();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = [v14 initWithIdentifier:v15 displayName:v16 transportBundleIdentifier:v17 contact:a7 deviceModelIdentifier:?];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](a7);
  MEMORY[0x1E69E5920](v17);

  MEMORY[0x1E69E5920](v16);

  MEMORY[0x1E69E5920](v15);

  return v10;
}

uint64_t sub_1B9ECA820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B9ECA8B0(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1B9ED899C();
      v1 = sub_1B9ED8C3C();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1B9ED899C();
    return v2;
  }

  return result;
}

unint64_t sub_1B9ECA9A0()
{
  v2 = qword_1EBBE62F8;
  if (!qword_1EBBE62F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE62F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECAA04()
{
  v2 = qword_1EBBE6300;
  if (!qword_1EBBE6300)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6300);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECAA68(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B9ECAAB8(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_1B9ECAAB8(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1B9ECAB34(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1B9ECABB0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B9ECAAB8(result, a2);
  }

  return result;
}

uint64_t sub_1B9ECABF8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B9ECAB34(result, a2);
  }

  return result;
}

void *sub_1B9ECAC40(const void *a1, void *a2)
{
  v6 = sub_1B9ED858C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B9ECAD68()
{
  result = *(v0 + 16);
  sub_1B9EA9D90();
  return result;
}

uint64_t sub_1B9ECAD70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = MEMORY[0x1EEE9AC00](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = sub_1B9ED8FEC() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_1B9ED904C();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    MEMORY[0x1EEE9AC00](v23);
    v16 = v29;
    v17 = v10;
    sub_1B9ECAFAC(v11, sub_1B9ECD018, v15, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, MEMORY[0x1E69E7CA8]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_1B9ECAFAC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1B9ED904C();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = v14(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

__n128 sub_1B9ECB1B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED842C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6330);
  result = *(a1 + *(v3 + 48));
  *(a2 + *(v3 + 48)) = result;
  return result;
}

uint64_t sub_1B9ECB244(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED88CC();
  (*(*(v2 - 8) + 16))(a2, a1);
  v9 = type metadata accessor for SFAirDropUtilities.FileLoadResult();
  v3 = (a1 + v9[5]);
  v5 = (a2 + v9[5]);
  *v5 = *v3;
  v6 = v3[1];

  v5[1] = v6;
  v7 = v9[6];
  v8 = *(a1 + v7);
  MEMORY[0x1E69E5928](v8);
  result = a2;
  *(a2 + v7) = v8;
  *(a2 + v9[7]) = *(a1 + v9[7]);
  return result;
}

uint64_t sub_1B9ECB350(uint64_t a1)
{
  v1 = sub_1B9ED88CC();
  (*(*(v1 - 8) + 8))(a1);
  v3 = type metadata accessor for SFAirDropUtilities.FileLoadResult();

  MEMORY[0x1E69E5920](*(a1 + *(v3 + 24)));
  return a1;
}

__n128 sub_1B9ECB3F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED88CC();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SFAirDropUtilities.FileLoadResult();
  result = *(a1 + v3[5]);
  *(a2 + v3[5]) = result;
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

unint64_t sub_1B9ECB4A4()
{
  v2 = qword_1EBBE6348;
  if (!qword_1EBBE6348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6348);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ECB558()
{
  result = *(v0 + 16);
  sub_1B9EB82A4();
  return result;
}

unint64_t sub_1B9ECB594()
{
  v2 = qword_1EBBE6350;
  if (!qword_1EBBE6350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6350);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B9ECB644(const void *a1, void *a2)
{
  v6 = sub_1B9ED842C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B9ECB76C()
{
  v2 = qword_1EBBE6360;
  if (!qword_1EBBE6360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECB874()
{
  v2 = qword_1EBBE6380;
  if (!qword_1EBBE6380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6380);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECB8D8()
{
  v2 = qword_1EBBE6388;
  if (!qword_1EBBE6388)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6388);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECB93C()
{
  v2 = qword_1EBBE6390;
  if (!qword_1EBBE6390)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6390);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECB9E0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9E93928;

  return sub_1B9EBE608(a1, a2, v8, v9, v10);
}

unint64_t sub_1B9ECBAC0()
{
  v2 = qword_1EBBE63A0;
  if (!qword_1EBBE63A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE63A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECBB24()
{
  v2 = qword_1EBBE63A8;
  if (!qword_1EBBE63A8)
  {
    sub_1B9ED858C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBBA4()
{
  v2 = qword_1EBBE63B8;
  if (!qword_1EBBE63B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE63B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBC2C()
{
  v2 = qword_1EBBE63C0;
  if (!qword_1EBBE63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE62A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ECBCBC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63B0);
  v1 = sub_1B9ECBD24();

  return sub_1B9E946F8(v5, v3, v4, v1);
}

unint64_t sub_1B9ECBD24()
{
  v2 = qword_1EBBE63C8;
  if (!qword_1EBBE63C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE63B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBDAC()
{
  v2 = qword_1EBBE63D8;
  if (!qword_1EBBE63D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE63D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBE34()
{
  v2 = qword_1EBBE5328;
  if (!qword_1EBBE5328)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5328);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECBEA0(uint64_t a1)
{
  v3 = sub_1B9ED88CC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B9ECBF48()
{
  v2 = qword_1EBBE6418;
  if (!qword_1EBBE6418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6410);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBFD0()
{
  v2 = qword_1EBBE6420;
  if (!qword_1EBBE6420)
  {
    sub_1B9ED889C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECC050()
{
  v2 = qword_1EBBE6428;
  if (!qword_1EBBE6428)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6428);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECC0BC(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9E93928;

  return sub_1B9EC4058(a1, a2, v8, v9);
}

unint64_t sub_1B9ECC190()
{
  v2 = qword_1EBBE6430;
  if (!qword_1EBBE6430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBE63F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECC218()
{
  v2 = qword_1EBBE6440;
  if (!qword_1EBBE6440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECC2A0()
{
  v2 = qword_1EBBE6450;
  if (!qword_1EBBE6450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6448);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ECC328(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  v14 = *(v1 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9E93928;

  return sub_1B9EC666C(a1, v11, v12, v6, v7, v8, v9, v10 & 1, v13, v14);
}

unint64_t sub_1B9ECC470()
{
  v2 = qword_1EBBE6478;
  if (!qword_1EBBE6478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6478);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ECC584()
{
  v3 = sub_1B9ED88CC();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B9ECC670();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B9ECC670()
{
  v4 = qword_1EBBE6490;
  if (!qword_1EBBE6490)
  {
    sub_1B9ECBE34();
    v3 = sub_1B9ED8EAC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EBBE6490);
      return v1;
    }
  }

  return v4;
}

uint64_t get_enum_tag_for_layout_string_9SharingUI18SFAirDropUtilitiesC13FileLoadErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3u) < 2)
  {
    return *(a1 + 8) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B9ECC73C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 9))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9ECC860(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFD)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 254;
    if (a3 >= 0xFE)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B9ECCA14(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = a2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 2;
  }

  return result;
}

unint64_t sub_1B9ECCA78()
{
  v2 = qword_1EBBE5380;
  if (!qword_1EBBE5380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5380);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECCADC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1B9EC9A6C(v2, v3, v4, v5);
}

uint64_t block_copy_helper_289(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B9ECCBBC()
{
  v2 = qword_1EBBE5398;
  if (!qword_1EBBE5398)
  {
    sub_1B9ED899C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECCC3C()
{
  v2 = qword_1EBBE5388;
  if (!qword_1EBBE5388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE64A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECCCC4()
{
  v2 = qword_1EBBE5370;
  if (!qword_1EBBE5370)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5370);
    return ObjCClassMetadata;
  }

  return v2;
}