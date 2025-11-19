void sub_1D9AD2D30(uint64_t a1, unint64_t a2, void (*a3)(void, void), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v256 = a8;
  v253 = a7;
  v260 = a6;
  v261 = a5;
  v257 = a3;
  v249 = a2;
  v250 = a1;
  v255 = a9;
  v268 = *MEMORY[0x1E69E9840];
  v245 = sub_1D9C7CF9C();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v243 = &v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_1D9C7CC0C();
  v258 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v246 = &v230 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1D9C7D42C();
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v13 = &v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9C7D3FC();
  v251 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v230 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v230 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v230 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v230 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v252 = &v230 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v254 = &v230 - v32;
  v33 = sub_1D9C7D8DC();
  v34 = *(v33 - 8);
  v262 = v33;
  v263 = v34;
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](&v230 - v36);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v230 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v53 = &v230 - v52;
  if (a4)
  {
    v54 = a4;
    static Logger.argos.getter(v53);
    v55 = a4;
    v56 = sub_1D9C7D8BC();
    v57 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v264 = v59;
      *v58 = 136315138;
      swift_getErrorValue();
      v60 = sub_1D9C7E85C();
      v62 = sub_1D9A0E224(v60, v61, &v264);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1D9962000, v56, v57, "**** Error: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x1DA7405F0](v59, -1, -1);
      MEMORY[0x1DA7405F0](v58, -1, -1);
    }

    (*(v263 + 8))(v53, v262);
    v63 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    v64 = v261;
    swift_beginAccess();
    v65 = *(v64 + v63);
    if (!*(v65 + 16))
    {
      goto LABEL_7;
    }

    v66 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v67 = sub_1D99EE518(v260 + v66);
    if (v68)
    {
      v69 = *(*(v65 + 56) + 16 * v67);

      v70 = sub_1D9C7CBEC();
      v71 = *(v70 - 8);
      v72 = v254;
      (*(v71 + 16))(v254, v253, v70);
      (*(v71 + 56))(v72, 0, 1, v70);
      v73 = v252;
      (*(v258 + 56))(v252, 1, 1, v259);
      v266 = v256;
      v267 = v255;
      v265 = a4;
      v74 = a4;
      v69(v72, v73, &v266, &v265);

      sub_1D99A6AE0(v73, &qword_1ECB53000);
      sub_1D99A6AE0(v72, &qword_1ECB519C8);
LABEL_7:
      v75 = a4;
LABEL_8:

      return;
    }

    goto LABEL_20;
  }

  v233 = v47;
  v231 = v46;
  v238 = v16;
  v239 = v25;
  v236 = v51;
  v235 = v13;
  v237 = v22;
  v234 = v50;
  v232 = v49;
  v242 = v28;
  v240 = v19;
  v241 = v14;
  v76 = v257;
  if (!v257 || (v77 = v48, v78 = v45, objc_opt_self(), (v79 = swift_dynamicCastObjCClass()) == 0))
  {
    static Logger.argos.getter(v43);
    v88 = sub_1D9C7D8BC();
    v89 = sub_1D9C7E0AC();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v259;
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_1D9962000, v88, v89, "**** Invalid response", v92, 2u);
      MEMORY[0x1DA7405F0](v92, -1, -1);
    }

    (*(v263 + 8))(v43, v262);
    v93 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    v94 = v261;
    swift_beginAccess();
    v95 = *(v94 + v93);
    if (!*(v95 + 16))
    {
      return;
    }

    v96 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v97 = sub_1D99EE518(v260 + v96);
    if ((v98 & 1) == 0)
    {
LABEL_20:

      return;
    }

    v99 = *(*(v95 + 56) + 16 * v97);

    v100 = sub_1D9C7CBEC();
    v101 = *(v100 - 8);
    v102 = v254;
    (*(v101 + 16))(v254, v253, v100);
    (*(v101 + 56))(v102, 0, 1, v100);
    v103 = v252;
    (*(v258 + 56))(v252, 1, 1, v91);
    sub_1D99DF020();
    v104 = swift_allocError();
    *v105 = 0xD000000000000010;
    *(v105 + 8) = 0x80000001D9CA94C0;
    *(v105 + 16) = 0;
    v266 = v256;
    v267 = v255;
    v265 = v104;
    v99(v102, v103, &v266, &v265);

    sub_1D99A6AE0(v103, &qword_1ECB53000);
    v106 = v102;
LABEL_37:
    sub_1D99A6AE0(v106, &qword_1ECB519C8);
    v75 = v104;
    goto LABEL_8;
  }

  v80 = v79;
  v81 = v76;
  v82 = &off_1E858B000;
  if ([v80 statusCode] != 200)
  {
    static Logger.argos.getter(v77);
    v107 = v81;
    v108 = sub_1D9C7D8BC();
    v109 = sub_1D9C7E0AC();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v263;
    if (v110)
    {
      v112 = swift_slowAlloc();
      *v112 = 134217984;
      *(v112 + 4) = [v80 statusCode];

      _os_log_impl(&dword_1D9962000, v108, v109, "**** Invalid status code: %ld", v112, 0xCu);
      MEMORY[0x1DA7405F0](v112, -1, -1);
    }

    else
    {

      v108 = v107;
    }

    v126 = v262;

    v128 = *(v111 + 8);
    v127 = v111 + 8;
    v257 = v128;
    v128(v77, v126);
    v129 = v78;
    static Logger.argos.getter(v78);
    v130 = v107;
    v131 = sub_1D9C7D8BC();
    v132 = sub_1D9C7E09C();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v264 = v251;
      *v133 = 136315138;
      v134 = [v80 allHeaderFields];
      v263 = v127;
      v135 = v134;
      sub_1D9C7DB4C();

      v82 = &off_1E858B000;
      v136 = sub_1D9C7DB5C();
      v138 = v137;

      v139 = sub_1D9A0E224(v136, v138, &v264);

      *(v133 + 4) = v139;
      _os_log_impl(&dword_1D9962000, v131, v132, "Response headers: %s", v133, 0xCu);
      v140 = v251;
      __swift_destroy_boxed_opaque_existential_0Tm(v251);
      MEMORY[0x1DA7405F0](v140, -1, -1);
      MEMORY[0x1DA7405F0](v133, -1, -1);

      v257(v129, v262);
    }

    else
    {

      v257(v129, v126);
    }

    v141 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    v142 = v261;
    swift_beginAccess();
    v143 = *(v142 + v141);
    if (!*(v143 + 16))
    {

      return;
    }

    v144 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v145 = sub_1D99EE518(v260 + v144);
    if ((v146 & 1) == 0)
    {

      return;
    }

    v147 = *(*(v143 + 56) + 16 * v145);

    v148 = sub_1D9C7CBEC();
    v149 = *(v148 - 8);
    v150 = v254;
    (*(v149 + 16))(v254, v253, v148);
    (*(v149 + 56))(v150, 0, 1, v148);
    v151 = v252;
    (*(v258 + 56))(v252, 1, 1, v259);
    v266 = 0;
    v267 = 0xE000000000000000;
    sub_1D9C7E40C();

    v266 = 0xD000000000000015;
    v267 = 0x80000001D9CA94E0;
    v265 = [v80 v82[373]];
    v152 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v152);

    v153 = v266;
    v154 = v267;
    sub_1D99DF020();
    v104 = swift_allocError();
    *v155 = v153;
    *(v155 + 8) = v154;
    *(v155 + 16) = 0;
    v266 = v256;
    v267 = v255;
    v265 = v104;
    v147(v150, v151, &v266, &v265);

    sub_1D99A6AE0(v151, &qword_1ECB53000);
    v106 = v150;
    goto LABEL_37;
  }

  v83 = v249;
  v257 = v81;
  if (v249 >> 60 == 15)
  {
    v84 = v259;
    v85 = v251;
    v86 = v242;
    v87 = v250;
  }

  else
  {
    v113 = objc_opt_self();
    sub_1D99AF2FC(v250, v83);
    v114 = sub_1D9C7B86C();
    v264 = 0;
    v115 = [v113 JSONObjectWithData:v114 options:0 error:&v264];

    v84 = v259;
    v85 = v251;
    v86 = v242;
    if (v115)
    {
      v116 = v264;
      sub_1D9C7E32C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8);
      if (swift_dynamicCast())
      {
        v117 = v266;
      }

      else
      {
        v117 = 0;
      }

      v118 = v233;
      static Logger.argos.getter(v233);

      v119 = sub_1D9C7D8BC();
      v120 = sub_1D9C7E09C();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v264 = v122;
        *v121 = 136315138;
        v266 = v117;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53018);
        v123 = sub_1D9C7DCEC();
        v125 = sub_1D9A0E224(v123, v124, &v264);

        *(v121 + 4) = v125;
        v83 = v249;
        _os_log_impl(&dword_1D9962000, v119, v120, "**** Response JSON: %s", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v122);
        v85 = v251;
        MEMORY[0x1DA7405F0](v122, -1, -1);
        MEMORY[0x1DA7405F0](v121, -1, -1);
      }

      else
      {
      }

      v169 = v250;
      sub_1D99B3C44(v250, v83);

      v87 = v169;
      (*(v263 + 8))(v118, v262);
    }

    else
    {
      v156 = v264;
      v157 = sub_1D9C7B70C();

      swift_willThrow();
      v158 = v231;
      static Logger.argos.getter(v231);
      v159 = v157;
      v160 = sub_1D9C7D8BC();
      v161 = sub_1D9C7E0AC();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v264 = v163;
        *v162 = 136315138;
        swift_getErrorValue();
        v164 = sub_1D9C7E85C();
        v166 = sub_1D9A0E224(v164, v165, &v264);

        *(v162 + 4) = v166;
        _os_log_impl(&dword_1D9962000, v160, v161, "**** Error parsing JSON: %s", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v163);
        v167 = v163;
        v84 = v259;
        MEMORY[0x1DA7405F0](v167, -1, -1);
        v168 = v162;
        v83 = v249;
        MEMORY[0x1DA7405F0](v168, -1, -1);
        v87 = v250;
        sub_1D99B3C44(v250, v83);
      }

      else
      {
        v87 = v250;
        sub_1D99B3C44(v250, v83);
      }

      (*(v263 + 8))(v158, v262);
      v85 = v251;
    }
  }

  v170 = v240;
  sub_1D9C7D3EC();
  sub_1D9C7D3DC();
  (v85)[2](v238, v170, v241);
  sub_1D99DF410(v87, v83);
  sub_1D9ADC3B8(&qword_1ECB53010, MEMORY[0x1E69BD778]);
  sub_1D9C7D64C();
  v171 = v248;
  v172 = v239;
  v173 = v258;
  (*(v258 + 56))(v86, 0, 1, v84);
  sub_1D99AB100(v86, v172, &qword_1ECB53000);
  v174 = *(v173 + 48);
  if (v174(v172, 1, v84) == 1)
  {
    sub_1D99A6AE0(v172, &qword_1ECB53000);
    v175 = 0;
    v176 = 0xE000000000000000;
  }

  else
  {
    v177 = v235;
    sub_1D9C7D41C();
    v175 = sub_1D9C7D62C();
    v176 = v178;
    (*(v247 + 8))(v177, v171);
    (*(v258 + 8))(v172, v84);
  }

  v179 = v236;
  static Logger.argos.getter(v236);

  v180 = sub_1D9C7D8BC();
  v181 = sub_1D9C7E09C();

  v182 = os_log_type_enabled(v180, v181);
  v183 = v251;
  if (v182)
  {
    v184 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v264 = v185;
    *v184 = 136315138;
    v186 = sub_1D9A0E224(v175, v176, &v264);

    *(v184 + 4) = v186;
    _os_log_impl(&dword_1D9962000, v180, v181, "**** success **** %s", v184, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v185);
    MEMORY[0x1DA7405F0](v185, -1, -1);
    v187 = v184;
    v183 = v251;
    MEMORY[0x1DA7405F0](v187, -1, -1);
  }

  else
  {
  }

  v188 = v262;
  v189 = *(v263 + 8);
  v189(v179, v262);
  v190 = v237;
  sub_1D99AB100(v242, v237, &qword_1ECB53000);
  v191 = v259;
  v192 = v174(v190, 1, v259);
  v193 = v258;
  if (v192 == 1)
  {
    sub_1D99A6AE0(v190, &qword_1ECB53000);
  }

  else
  {
    v194 = v246;
    (*(v258 + 32))(v246, v190, v191);
    v195 = *(sub_1D9C7CBFC() + 16);

    if (v195)
    {
      v196 = sub_1D9C7CBFC();
      if (!*(v196 + 16))
      {
        __break(1u);
      }

      v197 = v244;
      v198 = v243;
      v199 = v245;
      (*(v244 + 16))(v243, v196 + ((*(v197 + 80) + 32) & ~*(v197 + 80)), v245);

      v200 = sub_1D9C7CF8C();
      (*(v197 + 8))(v198, v199);
      v201 = *(v200 + 16);

      v264 = v201;
      v202 = sub_1D9C7E7AC();
      v204 = v203;
      v205 = v232;
      static Logger.argos.getter(v232);

      v206 = sub_1D9C7D8BC();
      v207 = sub_1D9C7E09C();

      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v264 = v209;
        *v208 = 136315138;
        v210 = sub_1D9A0E224(v202, v204, &v264);

        *(v208 + 4) = v210;
        _os_log_impl(&dword_1D9962000, v206, v207, "**** sectionCount = %s", v208, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v209);
        MEMORY[0x1DA7405F0](v209, -1, -1);
        MEMORY[0x1DA7405F0](v208, -1, -1);

        v189(v205, v262);
        (*(v258 + 8))(v246, v191);
      }

      else
      {

        v189(v205, v188);
        (*(v258 + 8))(v194, v191);
      }

      v215 = v241;
      v183 = v251;
      v216 = v240;
      goto LABEL_64;
    }

    (*(v193 + 8))(v194, v191);
  }

  v211 = v234;
  static Logger.argos.getter(v234);
  v212 = sub_1D9C7D8BC();
  v213 = sub_1D9C7E09C();
  v214 = os_log_type_enabled(v212, v213);
  v215 = v241;
  v216 = v240;
  if (v214)
  {
    v217 = swift_slowAlloc();
    *v217 = 0;
    _os_log_impl(&dword_1D9962000, v212, v213, "**** sectionCount = 0 (missing)", v217, 2u);
    MEMORY[0x1DA7405F0](v217, -1, -1);
  }

  v189(v211, v188);
LABEL_64:
  v218 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
  v219 = v261;
  swift_beginAccess();
  v220 = *(v219 + v218);
  if (*(v220 + 16))
  {
    v221 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v222 = sub_1D99EE518(v260 + v221);
    if (v223)
    {
      v224 = *(*(v220 + 56) + 16 * v222);

      v225 = sub_1D9C7CBEC();
      v226 = v183;
      v227 = *(v225 - 8);
      v228 = v254;
      (*(v227 + 16))(v254, v253, v225);
      (*(v227 + 56))(v228, 0, 1, v225);
      v266 = v256;
      v267 = v255;
      v265 = 0;
      v229 = v242;
      v224(v228, v242, &v266, &v265);

      sub_1D99A6AE0(v228, &qword_1ECB519C8);
      sub_1D99A6AE0(v229, &qword_1ECB53000);
      (v226)[1](v216, v215);
      return;
    }
  }

  else
  {
  }

  sub_1D99A6AE0(v242, &qword_1ECB53000);
  (v183)[1](v216, v215);
}

uint64_t sub_1D9AD4A28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D9C7B87C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D99B3C44(v6, v10);
}

uint64_t sub_1D9AD4AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = sub_1D9C7DA2C();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_1D9C7DA4C();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = sub_1D9C7CF5C();
  v6[25] = v9;
  v10 = *(v9 - 8);
  v6[26] = v10;
  v6[27] = *(v10 + 64);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v11 = sub_1D9C7D1BC();
  v6[30] = v11;
  v6[31] = *(v11 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53060);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v12 = sub_1D9C7CC6C();
  v6[36] = v12;
  v6[37] = *(v12 - 8);
  v6[38] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050) - 8);
  v6[39] = v13;
  v6[40] = *(v13 + 64);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD4E10, 0, 0);
}

uint64_t sub_1D9AD4E10()
{
  v1 = v0[44];
  v2 = v0[25];
  v3 = v0[26];
  v4 = *(v3 + 56);
  v0[45] = v4;
  v0[46] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_1D9C7CC5C();
  sub_1D9C7CC4C();
  v9 = (*MEMORY[0x1E69BDBA0] + MEMORY[0x1E69BDBA0]);
  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_1D9AD4F14;
  v6 = v0[38];
  v7 = v0[35];

  return v9(v7, v6);
}

uint64_t sub_1D9AD4F14()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9AD5010, 0, 0);
}

uint64_t sub_1D9AD5010()
{
  sub_1D99AB100(v0[35], v0[34], &qword_1ECB53060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[37];
    v1 = v0[38];
    v4 = v0[35];
    v3 = v0[36];
    v5 = v0[32];
    v6 = v0[30];
    v7 = *(v0[31] + 32);
    v7(v5, v0[34], v6);
    sub_1D9ADC3B8(&qword_1ECB52FF8, MEMORY[0x1E69BDBB0]);
    swift_willThrowTypedImpl();
    v50 = swift_allocError();
    v7(v8, v5, v6);
    sub_1D99A6AE0(v4, &qword_1ECB53060);
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    v9 = v0[45];
    v10 = v0[43];
    v11 = v0[44];
    v12 = v0[42];
    v13 = v0[34];
    v14 = v0[25];
    v15 = v0[26];
    sub_1D99A6AE0(v11, &qword_1ECB53050);
    v58 = *(v15 + 32);
    v58(v10, v13, v14);
    v9(v10, 0, 1, v14);
    sub_1D99B1C20(v10, v11, &qword_1ECB53050);
    sub_1D99AB100(v11, v12, &qword_1ECB53050);
    v16 = (*(v15 + 48))(v12, 1, v14);
    v17 = v0[42];
    v19 = v0[37];
    v18 = v0[38];
    v20 = v0[36];
    if (v16 == 1)
    {
      sub_1D99A6AE0(v0[35], &qword_1ECB53060);
      (*(v19 + 8))(v18, v20);
      sub_1D99A6AE0(v17, &qword_1ECB53050);
    }

    else
    {
      v57 = v0[38];
      v21 = v0[28];
      v22 = v0[29];
      v23 = v0[26];
      v24 = v0[25];
      v44 = v0[24];
      v52 = v22;
      v53 = v0[23];
      v54 = v0[22];
      v51 = v0[20];
      v46 = v0[21];
      v48 = v0[19];
      v55 = v0[35];
      v56 = v0[36];
      v25 = v0[16];
      v58(v22, v17, v24);
      (*(v23 + 16))(v21, v22, v24);
      v26 = (*(v23 + 80) + 24) & ~*(v23 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      v58(v27 + v26, v21, v24);
      v0[12] = sub_1D9ADC058;
      v0[13] = v27;
      v0[8] = MEMORY[0x1E69E9820];
      v0[9] = 1107296256;
      v0[10] = sub_1D9A0A1E0;
      v0[11] = &block_descriptor_97;
      v28 = _Block_copy(v0 + 8);

      sub_1D9C7DA3C();
      v0[15] = MEMORY[0x1E69E7CC0];
      sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
      sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
      sub_1D9C7E34C();
      MEMORY[0x1DA73E300](0, v44, v46, v28);
      _Block_release(v28);
      (*(v51 + 8))(v46, v48);
      (*(v53 + 8))(v44, v54);
      (*(v23 + 8))(v52, v24);
      sub_1D99A6AE0(v55, &qword_1ECB53060);
      (*(v19 + 8))(v57, v56);
    }

    v50 = 0;
  }

  v45 = v0[44];
  v29 = v0[41];
  v31 = v0[39];
  v30 = v0[40];
  v47 = v0[23];
  v49 = v0[22];
  v40 = v0[24];
  v41 = v0[21];
  v42 = v0[19];
  v33 = v0[17];
  v32 = v0[18];
  aBlock = v0[20];
  sub_1D99AB100(v45, v29, &qword_1ECB53050);
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v32;
  sub_1D99B1C20(v29, v35 + v34, &qword_1ECB53050);
  *(v35 + ((v30 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v0[6] = sub_1D9ADBFB8;
  v0[7] = v35;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D9A0A1E0;
  v0[5] = &block_descriptor_90;
  v36 = _Block_copy(v0 + 2);

  v37 = v50;
  sub_1D9C7DA3C();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v40, v41, v36);
  _Block_release(v36);

  aBlock[1](v41, v42);
  (*(v47 + 8))(v40, v49);
  sub_1D99A6AE0(v45, &qword_1ECB53050);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1D9AD582C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9C7B90C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7B8FC();
  sub_1D9A57658(a2, 1, v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D9AD5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_1D9C7DA2C();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_1D9C7DA4C();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v10 = sub_1D9C7D02C();
  v7[19] = v10;
  v11 = *(v10 - 8);
  v7[20] = v11;
  v7[21] = *(v11 + 64);
  v7[22] = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0) - 8);
  v7[23] = v12;
  v7[24] = *(v12 + 64);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD5B14, 0, 0);
}

uint64_t sub_1D9AD5B14()
{
  v5 = (*MEMORY[0x1E69BDBA8] + MEMORY[0x1E69BDBA8]);
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1D9AD5BD0;
  v2 = v0[26];
  v3 = v0[10];

  return v5(v2, v3);
}

uint64_t sub_1D9AD5BD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9AD5CCC, 0, 0);
}

uint64_t sub_1D9AD5CCC()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v18 = v4;
  v6 = v0[19];
  v5 = v0[20];
  v20 = v0[18];
  v24 = v0[26];
  v25 = v0[17];
  v26 = v0[16];
  v21 = v0[15];
  v22 = v0[13];
  v7 = v0[12];
  v19 = v0[11];
  v8 = v0[9];
  v23 = v0[14];
  sub_1D99AB100(v24, v1, &qword_1ECB52FF0);
  (*(v5 + 16))(v4, v7, v6);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v5 + 80) + v11 + 8) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1D99B1C20(v1, v13 + v9, &qword_1ECB52FF0);
  *(v13 + v10) = v8;
  *(v13 + v11) = v19;
  (*(v5 + 32))(v13 + v12, v18, v6);
  v0[6] = sub_1D9ADA7FC;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D9A0A1E0;
  v0[5] = &block_descriptor_76;
  v14 = _Block_copy(v0 + 2);

  v15 = v19;
  sub_1D9C7DA3C();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v20, v21, v14);
  _Block_release(v14);
  (*(v23 + 8))(v21, v22);
  (*(v25 + 8))(v20, v26);
  sub_1D99A6AE0(v24, &qword_1ECB52FF0);

  v16 = v0[1];

  return v16();
}

void sub_1D9AD6034(void (*a1)(uint64_t, uint64_t, uint64_t *, void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v46 = a3;
  v47 = a1;
  v5 = sub_1D9C7D1BC();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51518);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = &v42 - v11;
  v12 = sub_1D9C7D04C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  sub_1D99AB100(v47, &v42 - v17, &qword_1ECB52FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v13;
    v20 = v45;
    (*(v45 + 32))(v7, v18, v5);
    v21 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
    swift_beginAccess();
    v22 = *(a2 + v21);
    if (*(v22 + 16))
    {
      v23 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

      v24 = sub_1D99EE518(v46 + v23);
      if (v25)
      {
        v47 = *(*(v22 + 56) + 16 * v24);

        v26 = sub_1D9C7D02C();
        v27 = *(v26 - 8);
        v28 = v43;
        (*(v27 + 16))(v43, v42, v26);
        (*(v27 + 56))(v28, 0, 1, v26);
        v29 = v44;
        (*(v19 + 56))(v44, 1, 1, v12);
        sub_1D9ADC3B8(&qword_1ECB52FF8, MEMORY[0x1E69BDBB0]);
        v30 = swift_allocError();
        (*(v20 + 16))(v31, v7, v5);
        v49 = 0;
        v50 = 0xE000000000000000;
        v48 = v30;
        v47(v28, v29, &v49, &v48);

        sub_1D99A6AE0(v29, &qword_1ECB51518);
        sub_1D99A6AE0(v28, &qword_1ECB52FD0);
        (*(v20 + 8))(v7, v5);

        return;
      }
    }

    (*(v20 + 8))(v7, v5);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v32 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
    swift_beginAccess();
    v33 = *(a2 + v32);
    if (*(v33 + 16))
    {
      v34 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

      v35 = sub_1D99EE518(v46 + v34);
      if (v36)
      {
        v37 = *(*(v33 + 56) + 16 * v35);

        v38 = sub_1D9C7D02C();
        v39 = *(v38 - 8);
        v40 = v43;
        (*(v39 + 16))(v43, v42, v38);
        (*(v39 + 56))(v40, 0, 1, v38);
        v41 = v44;
        (*(v13 + 16))(v44, v15, v12);
        (*(v13 + 56))(v41, 0, 1, v12);
        v49 = 0;
        v50 = 0xE000000000000000;
        v48 = 0;
        v37(v40, v41, &v49, &v48);

        sub_1D99A6AE0(v41, &qword_1ECB51518);
        sub_1D99A6AE0(v40, &qword_1ECB52FD0);
      }

      else
      {
      }
    }

    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1D9AD6698(uint64_t a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-1] - v8;
  if (a2)
  {
    v10 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_batchEncryptedCompletions;
    result = swift_beginAccess();
    v12 = *(v3 + v10);
    if (*(v12 + 16))
    {
      v13 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
      v14 = a2;

      v15 = sub_1D99EE518(a3 + v13);
      if (v16)
      {
        v17 = *(*(v12 + 56) + 16 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FE8);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D9C85660;
        *(v18 + 32) = a2;
        v25 = MEMORY[0x1E69E7CC0];
        v26 = a1;
        v24[0] = 0;
        v24[1] = 0xE000000000000000;
        v23 = v18;
        v19 = a2;
        v17(&v26, &v25, v24, &v23);
      }
    }
  }

  else
  {
    v20 = sub_1D9C7DFBC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a1;
    v21[5] = v3;
    v21[6] = a3;

    v22 = a3;
    sub_1D9BC1E20(0, 0, v9, &unk_1D9C93A88, v21);
  }

  return result;
}

uint64_t sub_1D9AD68D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1D9C7D1BC();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_1D9C7D04C();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v9 = sub_1D9C7DA2C();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = sub_1D9C7DA4C();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD6B00, 0, 0);
}

uint64_t sub_1D9AD6B00()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v0[28] = v2;
  if (v2)
  {
    v0[29] = *(v0[10] + OBJC_IVAR____TtC12VisualLookUp14NetworkService_vluEncryptedSearchClient);
    v3 = *(sub_1D9C7D02C() - 8);
    v4 = *(v3 + 80);
    *(v0 + 70) = v4;
    v5 = (v4 + 32) & ~v4;
    v6 = *(v3 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    v0[32] = MEMORY[0x1E69E7CC0];
    v0[33] = v7;
    v0[30] = v6;
    v0[31] = 0;
    v24 = (*MEMORY[0x1E69BDBA8] + MEMORY[0x1E69BDBA8]);
    v8 = swift_task_alloc();
    v0[34] = v8;
    *v8 = v0;
    v8[1] = sub_1D9AD6EB8;
    v9 = v0[27];

    return v24(v9, v1 + v5);
  }

  else
  {
    v11 = v0[24];
    v12 = v0[21];
    v22 = v0[23];
    v23 = v0[22];
    v13 = v0[19];
    v14 = v0[10];
    v15 = v0[11];
    v21 = v0[20];
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v17 = MEMORY[0x1E69E7CC0];
    v16[4] = v1;
    v16[5] = v17;
    v16[6] = v17;
    v0[6] = sub_1D9ADA398;
    v0[7] = v16;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D9A0A1E0;
    v0[5] = &block_descriptor_4;
    v18 = _Block_copy(v0 + 2);

    v19 = v15;

    sub_1D9C7DA3C();
    v0[8] = v17;
    sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
    sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v11, v12, v18);
    _Block_release(v18);
    (*(v21 + 8))(v12, v13);
    (*(v22 + 8))(v11, v23);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1D9AD6EB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9AD6FB4, 0, 0);
}

uint64_t sub_1D9AD6FB4()
{
  sub_1D99AB100(v0[27], v0[26], &qword_1ECB52FF0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    (*(v4 + 32))(v3, v2, v5);
    sub_1D9ADC3B8(&qword_1ECB52FF8, MEMORY[0x1E69BDBB0]);
    v6 = swift_allocError();
    (*(v4 + 16))(v7, v3, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[33];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1D9AF94C0(0, v9[2] + 1, 1, v0[33]);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1D9AF94C0((v10 > 1), v11 + 1, 1, v9);
    }

    v12 = v0[27];
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_1D99A6AE0(v12, &qword_1ECB52FF0);
    v9[2] = v11 + 1;
    v9[v11 + 4] = v6;
    v13 = v0[32];
  }

  else
  {
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[15];
    v17 = v0[16];
    v18 = *(v17 + 32);
    v18(v14, v2, v16);
    (*(v17 + 16))(v15, v14, v16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v13 = v0[32];
    if ((v19 & 1) == 0)
    {
      v13 = sub_1D9AFAC98(0, v13[2] + 1, 1, v0[32]);
    }

    v21 = v13[2];
    v20 = v13[3];
    if (v21 >= v20 >> 1)
    {
      v13 = sub_1D9AFAC98(v20 > 1, v21 + 1, 1, v13);
    }

    v22 = v0[27];
    v23 = v0[17];
    v24 = v0[15];
    v25 = v0[16];
    (*(v25 + 8))(v0[18], v24);
    sub_1D99A6AE0(v22, &qword_1ECB52FF0);
    v13[2] = v21 + 1;
    v18(v13 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v23, v24);
    v9 = v0[33];
  }

  v26 = v0[31] + 1;
  if (v26 == v0[28])
  {
    v27 = v0[24];
    v28 = v0[21];
    v42 = v0[23];
    v43 = v0[22];
    v29 = v0[19];
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[9];
    v41 = v0[20];
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = v30;
    v33[4] = v32;
    v33[5] = v13;
    v33[6] = v9;
    v0[6] = sub_1D9ADA398;
    v0[7] = v33;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D9A0A1E0;
    v0[5] = &block_descriptor_4;
    v34 = _Block_copy(v0 + 2);

    v35 = v30;

    sub_1D9C7DA3C();
    v0[8] = MEMORY[0x1E69E7CC0];
    sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
    sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v27, v28, v34);
    _Block_release(v34);
    (*(v41 + 8))(v28, v29);
    (*(v42 + 8))(v27, v43);

    v36 = v0[1];

    return v36();
  }

  else
  {
    v0[32] = v13;
    v0[33] = v9;
    v0[31] = v26;
    v38 = v0[9] + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + v0[30] * v26;
    v44 = (*MEMORY[0x1E69BDBA8] + MEMORY[0x1E69BDBA8]);
    v39 = swift_task_alloc();
    v0[34] = v39;
    *v39 = v0;
    v39[1] = sub_1D9AD6EB8;
    v40 = v0[27];

    return v44(v40, v38);
  }
}

uint64_t sub_1D9AD7598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_batchEncryptedCompletions;
  result = swift_beginAccess();
  v12 = *(a1 + v10);
  if (*(v12 + 16))
  {
    v13 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v14 = sub_1D99EE518(a2 + v13);
    if (v15)
    {
      v16 = *(*(v12 + 56) + 16 * v14);

      v19 = a4;
      v20 = a3;
      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      v17 = a5;
      v16(&v20, &v19, v18, &v17);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D9AD7684()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_requestTimeout;
  v2 = sub_1D9C7DA1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1D9AD776C()
{
  sub_1D9AD7684();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9AD77EC()
{
  result = sub_1D9C7DA1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9AD78B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v17;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v9 = sub_1D9C7DA2C();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v10 = sub_1D9C7DA4C();
  v8[25] = v10;
  v8[26] = *(v10 - 8);
  v8[27] = swift_task_alloc();
  v11 = sub_1D9C7CBEC();
  v8[28] = v11;
  v12 = *(v11 - 8);
  v8[29] = v12;
  v8[30] = *(v12 + 64);
  v8[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  v8[32] = v13;
  v14 = *(v13 - 8);
  v8[33] = v14;
  v8[34] = *(v14 + 64);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD7AC0, 0, 0);
}

uint64_t sub_1D9AD7AC0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 136);
  v5 = *(v0 + 128) + OBJC_IVAR____TtC12VisualLookUp14NetworkService_requestTimeout;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v3 + 16);
  *(v0 + 296) = v7;
  *(v0 + 304) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  v8 = *(v3 + 80);
  *(v0 + 360) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 312) = v10;
  *(v10 + 16) = v6;
  v11 = *(v3 + 32);
  *(v0 + 320) = v11;
  *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v2);
  v12 = swift_task_alloc();
  *(v0 + 336) = v12;
  v12[2] = &unk_1D9C93B98;
  v12[3] = v10;
  v12[4] = v5;
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_1D9AD7C90;
  v14 = *(v0 + 288);

  return MEMORY[0x1EEE6DD58](v14);
}

uint64_t sub_1D9AD7C90()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D9AD811C;
  }

  else
  {

    v2 = sub_1D9AD7DB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AD7DB8()
{
  v21 = v0[40];
  v1 = *(v0 + 360);
  v3 = v0[35];
  v2 = v0[36];
  v25 = v2;
  v4 = v0[33];
  v18 = v0[34];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[28];
  v22 = v0[27];
  v27 = v0[26];
  v28 = v0[25];
  v26 = v0[23];
  v23 = v0[24];
  v24 = v0[22];
  v19 = v0[20];
  v20 = v0[21];
  v8 = v0[18];
  v9 = v0[16];
  (v0[37])(v6, v0[19], v7);
  sub_1D99AB100(v2, v3, &qword_1ECB53000);
  v10 = (v1 + 32) & ~v1;
  v11 = (v5 + v10 + *(v4 + 80)) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  v21(v12 + v10, v6, v7);
  sub_1D99B1C20(v3, v12 + v11, &qword_1ECB53000);
  v13 = (v12 + ((v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v19;
  v13[1] = v20;
  v0[12] = sub_1D9ADCAD4;
  v0[13] = v12;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D9A0A1E0;
  v0[11] = &block_descriptor_169;
  v14 = _Block_copy(v0 + 8);

  v15 = v8;

  sub_1D9C7DA3C();
  v0[15] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v22, v23, v14);
  _Block_release(v14);
  (*(v26 + 8))(v23, v24);
  (*(v27 + 8))(v22, v28);
  sub_1D99A6AE0(v25, &qword_1ECB53000);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D9AD811C()
{
  v21 = v0[44];
  v20 = v0[40];
  v1 = *(v0 + 360);
  v2 = v0[37];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[28];
  v22 = v0[27];
  v26 = v0[26];
  v27 = v0[25];
  v25 = v0[23];
  v23 = v0[24];
  v24 = v0[22];
  v6 = v0[19];
  v18 = v0[20];
  v19 = v0[21];
  v17 = v0[18];
  v7 = v0[16];

  v2(v4, v6, v5);
  v8 = (v1 + 32) & ~v1;
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v17;
  v20(v10 + v8, v4, v5);
  v11 = (v10 + v9);
  *v11 = v18;
  v11[1] = v19;
  *(v10 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v0[6] = sub_1D9ADCA34;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D9A0A1E0;
  v0[5] = &block_descriptor_162;
  v12 = _Block_copy(v0 + 2);

  v13 = v17;

  v14 = v21;
  sub_1D9C7DA3C();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v22, v23, v12);
  _Block_release(v12);

  (*(v25 + 8))(v23, v24);
  (*(v26 + 8))(v22, v27);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D9AD8448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9AD846C, 0, 0);
}

uint64_t sub_1D9AD846C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[8] = *(Strong + OBJC_IVAR____TtC12VisualLookUp14NetworkService_vluCameraSearchClient);

    v9 = (*MEMORY[0x1E69BDB68] + MEMORY[0x1E69BDB68]);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1D9AD85DC;
    v3 = v0[7];
    v4 = v0[5];

    return v9(v4, v3);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_1D9C7CC0C();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D9AD85DC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D9AD8798;
  }

  else
  {

    v2 = sub_1D9AD86F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AD86F8()
{
  v1 = *(v0 + 40);
  v2 = sub_1D9C7CC0C();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D9AD8798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9AD87FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25[-1] - v13;
  v15 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
  result = swift_beginAccess();
  v17 = *(a1 + v15);
  if (*(v17 + 16))
  {
    v18 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v19 = sub_1D99EE518(a2 + v18);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 16 * v19);

      v22 = sub_1D9C7CBEC();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v14, a3, v22);
      (*(v23 + 56))(v14, 0, 1, v22);
      v25[0] = a5;
      v25[1] = a6;
      v24 = 0;
      v21(v14, a4, v25, &v24);

      return sub_1D99A6AE0(v14, &qword_1ECB519C8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D9AD89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29[-1] - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29[-1] - v16;
  v18 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
  result = swift_beginAccess();
  v20 = *(a1 + v18);
  if (*(v20 + 16))
  {
    v21 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v22 = sub_1D99EE518(a2 + v21);
    if (v23)
    {
      v24 = *(*(v20 + 56) + 16 * v22);

      v25 = sub_1D9C7CBEC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(v17, a3, v25);
      (*(v26 + 56))(v17, 0, 1, v25);
      v27 = sub_1D9C7CC0C();
      (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
      v29[0] = a4;
      v29[1] = a5;
      v28 = a6;
      v24(v17, v14, v29, &v28);

      sub_1D99A6AE0(v14, &qword_1ECB53000);
      return sub_1D99A6AE0(v17, &qword_1ECB519C8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D9AD8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a7;
  v68 = a8;
  v63 = a6;
  v74 = a4;
  v75 = a5;
  v76 = a3;
  v9 = sub_1D9C7CBEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v59 - v13;
  v65 = sub_1D9C7BA9C();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C7DA7C();
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v71 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D9C7B93C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v59 = v10;
    v60 = v9;
    strcpy(v90, "E2E - Search");
    HIBYTE(v90[6]) = 0;
    v90[7] = -5120;
    v91 = "Search On Server";
    v92 = 16;
    v93 = 2;
    type metadata accessor for DurationMeasurement();
    swift_allocObject();

    v70 = sub_1D9AFD4B8(v90, a2);

    v23 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v69 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v18 + 16))(&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v76 + v23, v17);
    v25 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    (*(v18 + 32))(v27 + v25, v20, v17);
    *(v27 + v26) = v70;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    v29 = v75;
    *v28 = v74;
    v28[1] = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D9ADD0A4;
    *(v30 + 24) = v27;
    v31 = v69;
    v32 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v22 + v32);
    *(v22 + v32) = 0x8000000000000000;
    v34 = v76;
    sub_1D9C11DAC(sub_1D9ADD0A0, v30, v76 + v31, isUniquelyReferenced_nonNull_native);
    *(v22 + v32) = v89;
    v35 = v34;
    swift_endAccess();
    if (sub_1D9ADA01C(v34))
    {
      sub_1D9ACA298(v34 + v31);
    }

    sub_1D9ACBE3C(v34);
    v36 = *(v22 + 16);
    v38 = v71;
    v37 = v72;
    *v71 = v36;
    v39 = v73;
    (*(v37 + 104))(v38, *MEMORY[0x1E69E8020], v73);
    v40 = v36;
    LOBYTE(v36) = sub_1D9C7DA9C();
    result = (*(v37 + 8))(v38, v39);
    if (v36)
    {
      if (sub_1D9ADA01C(v35))
      {
      }

      type metadata accessor for NetworkService(0);
      v41 = v61;
      v42 = v68;
      sub_1D9ACC130(v68);
      type metadata accessor for ServerSearchProcessor();
      v43 = v63;
      v44 = *(v63 + 144);
      v85 = *(v63 + 128);
      v86 = v44;
      v87 = *(v63 + 160);
      v88 = *(v63 + 176);
      v45 = *(v63 + 80);
      v81 = *(v63 + 64);
      v82 = v45;
      v46 = *(v63 + 112);
      v83 = *(v63 + 96);
      v84 = v46;
      v47 = *(v63 + 16);
      v77 = *v63;
      v78 = v47;
      v48 = *(v63 + 48);
      v79 = *(v63 + 32);
      v80 = v48;
      v49 = v64;
      v50 = v67;
      sub_1D99D4180(&v77, v67, v41, v42, v64);
      v51 = *(v43 + 144);
      v85 = *(v43 + 128);
      v86 = v51;
      v87 = *(v43 + 160);
      v88 = *(v43 + 176);
      v52 = *(v43 + 80);
      v81 = *(v43 + 64);
      v82 = v52;
      v53 = *(v43 + 112);
      v83 = *(v43 + 96);
      v84 = v53;
      v54 = *(v43 + 16);
      v77 = *v43;
      v78 = v54;
      v55 = *(v43 + 48);
      v79 = *(v43 + 32);
      v80 = v55;
      v56 = v66;
      sub_1D99D4CDC(&v77, v50, v41, v42, v66);
      sub_1D9ACC68C(v49, v56, v35);

      v57 = v60;
      v58 = *(v59 + 8);
      v58(v56, v60);
      v58(v49, v57);
      return (*(v62 + 8))(v41, v65);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D9AD92C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53070);
  v5[7] = swift_task_alloc();
  v6 = sub_1D9C7DA1C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD9408, 0, 0);
}

uint64_t sub_1D9AD9408()
{
  v1 = v0[12];
  v2 = v0[9];
  v16 = v0[11];
  v3 = v0[5];
  v14 = v0[6];
  v15 = v0[8];
  v4 = v0[4];
  v5 = sub_1D9C7DFBC();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  sub_1D9AD9B0C(v1, &unk_1D9C93BC0, v7);
  sub_1D99A6AE0(v1, &unk_1ECB540E0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v16, v14, v15);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v2 + 32))(v9 + v8, v16, v15);
  sub_1D9AD9B0C(v1, &unk_1D9C93BD0, v9);
  sub_1D99A6AE0(v1, &unk_1ECB540E0);
  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53078);
  *v10 = v0;
  v10[1] = sub_1D9AD9664;
  v12 = v0[7];

  return MEMORY[0x1EEE6DAC8](v12, 0, 0, v11);
}

uint64_t sub_1D9AD9664()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D9AD98A8;
  }

  else
  {
    v2 = sub_1D9AD9778;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AD9778()
{
  v1 = v0[7];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  result = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D99B1C20(v1, v0[2], &qword_1ECB53000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
    sub_1D9C7DFEC();

    v4 = v0[1];

    return v4();
  }

  return result;
}

uint64_t sub_1D9AD98A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9AD9920(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D9AD9A18;

  return v8(a1);
}

uint64_t sub_1D9AD9A18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D9AD9B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1D99AB100(a1, v18 - v8, &unk_1ECB540E0);
  v10 = sub_1D9C7DFBC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D99A6AE0(v9, &unk_1ECB540E0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1D9C7DF9C();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D9C7DFAC();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1D9AD9D28()
{
  v1 = sub_1D9C1C0D4();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1D9AD9DC8;

  return MEMORY[0x1EEE6DA60](v1);
}

uint64_t sub_1D9AD9DC8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9AD9EF8, 0, 0);
  }
}

uint64_t sub_1D9AD9EF8()
{
  sub_1D9C7E40C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA73DF90](0xD000000000000020, 0x80000001D9CA9610);
  sub_1D9C7DA1C();
  sub_1D9C7E4DC();
  MEMORY[0x1DA73DF90](46, 0xE100000000000000);
  v1 = v0[2];
  v2 = v0[3];
  sub_1D9ADCD90();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9ADA01C(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v6 + 4);
  v7 = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled);
  os_unfair_lock_unlock(v6 + 4);
  if (v7 == 1)
  {
    static Logger.argos.getter(v5);
    v8 = sub_1D9C7D8BC();
    v9 = sub_1D9C7E09C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D9962000, v8, v9, "checkCancel(): has already been canceled", v10, 2u);
      MEMORY[0x1DA7405F0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

uint64_t sub_1D9ADA1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_1D9C7B93C() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9ACBB04(a1, a2, a3, a4, a5, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9ADA2D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9ADD09C;

  return sub_1D9AD68D4(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9ADA3C0(uint64_t a1, unint64_t a2, void (*a3)(void, void), void *a4)
{
  v9 = *(sub_1D9C7CBEC() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D9AD2D30(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *v11, v11[1]);
}

uint64_t objectdestroy_54Tm()
{
  v1 = sub_1D9C7CBEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9ADA5A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1D9C7CBEC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_1D9ADA658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9ADA6B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D9C7D02C() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + v8 + 8) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D9ADD09C;

  return sub_1D9AD5918(a1, v10, v11, v12, v1 + v7, v13, v1 + v9);
}

void sub_1D9ADA7FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1D9C7D02C() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  sub_1D9AD6034((v0 + v2), v6, v7, v8);
}

void sub_1D9ADA8F0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1D9C7D02C() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  sub_1D9ADB4D4(a1, v7, v8, v9, v1 + v4, v10, v11);
}

uint64_t sub_1D9ADA9E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9ADD09C;

  return sub_1D9AD4AF0(a1, v4, v5, v6, v7, v8);
}

void sub_1D9ADAAB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v89 = a4;
  v90 = a6;
  v83 = a2;
  v84 = a3;
  v7 = sub_1D9C7D8DC();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7C8DC();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7D36C();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53058);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v72 - v22;
  v24 = sub_1D9C7CF5C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_projectBox();
  sub_1D99AB100(a1, v23, &qword_1ECB53050);
  v88 = v25;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D99A6AE0(v23, &qword_1ECB53050);
    sub_1D99DF020();
    v29 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 2;
    swift_willThrow();
    v31 = v90;
    v63 = v85;
    static Logger.argos.getter(v85);
    v64 = v29;
    v65 = sub_1D9C7D8BC();
    v66 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v69 = v29;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *v68 = v70;
      _os_log_impl(&dword_1D9962000, v65, v66, "performEncryptedPegasusRequestForPEC(): processingConfigError %@", v67, 0xCu);
      sub_1D99A6AE0(v68, &qword_1ECB510E8);
      MEMORY[0x1DA7405F0](v68, -1, -1);
      MEMORY[0x1DA7405F0](v67, -1, -1);
    }

    (*(v86 + 8))(v63, v87);
    sub_1D9A57EEC();
    v71 = v29;
    sub_1D9AD6698(MEMORY[0x1E69E7CC0], v29, v31);
  }

  else
  {
    v72 = v28;
    v32 = *(v88 + 32);
    v75 = v24;
    v32(v27, v23, v24);
    v33 = sub_1D9C7CF4C();
    v34 = *(v33 + 16);
    v74 = v27;
    if (v34)
    {
      v35 = sub_1D99ED894(0xD000000000000014, 0x80000001D9CA37C0);
      v36 = v20;
      if (v37)
      {
        v38 = v35;
        v39 = *(v33 + 56);
        v40 = sub_1D9C7CC3C();
        v41 = *(v40 - 8);
        (*(v41 + 16))(v20, v39 + *(v41 + 72) * v38, v40);

        (*(v41 + 56))(v20, 0, 1, v40);
      }

      else
      {

        v40 = sub_1D9C7CC3C();
        (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
      }
    }

    else
    {

      v40 = sub_1D9C7CC3C();
      v36 = v20;
      (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
    }

    sub_1D99AB100(v36, v17, &qword_1ECB53058);
    sub_1D9C7CC3C();
    v42 = *(v40 - 8);
    v43 = *(v42 + 48);
    if (v43(v17, 1, v40) == 1)
    {
      sub_1D99A6AE0(v17, &qword_1ECB53058);
      v44 = 0;
      v45 = 0xC000000000000000;
    }

    else
    {
      v46 = v80;
      sub_1D9C7CC1C();
      (*(v42 + 8))(v17, v40);
      v44 = sub_1D9C7D34C();
      v45 = v47;
      (*(v81 + 8))(v46, v82);
    }

    v73 = v36;
    v48 = v79;
    sub_1D99AB100(v36, v79, &qword_1ECB53058);
    if (v43(v48, 1, v40) == 1)
    {
      sub_1D99A6AE0(v48, &qword_1ECB53058);
      v49 = 0;
      v50 = 0xC000000000000000;
    }

    else
    {
      v51 = v80;
      sub_1D9C7CC2C();
      (*(v42 + 8))(v48, v40);
      v49 = sub_1D9C7D34C();
      v50 = v52;
      (*(v81 + 8))(v51, v82);
    }

    v53 = v90;
    v54 = v83;
    v55 = v84;
    ObjectType = swift_getObjectType();
    (*(v55 + 24))(v44, v45, v49, v50, ObjectType, v55);
    v84 = v44;
    v89 = v45;
    v57 = v72;
    swift_beginAccess();
    v58 = v55;
    v60 = v76;
    v59 = v77;
    v61 = v57;
    v62 = v78;
    (*(v77 + 16))(v76, v61, v78);
    sub_1D9ACE75C(v60, v54, v58, v53);
    sub_1D99A5748(v49, v50);
    sub_1D99A5748(v84, v89);
    (*(v59 + 8))(v60, v62);
    sub_1D99A6AE0(v73, &qword_1ECB53058);
    (*(v88 + 8))(v74, v75);
  }
}

void sub_1D9ADB4D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v89 = a5;
  v90 = a7;
  v96 = a3;
  v97 = a6;
  v95 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51518);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v85 - v12;
  v13 = sub_1D9C7D8DC();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C7D36C();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53058);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v85 - v28;
  v30 = sub_1D9C7CF5C();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v35 = v34;
  v37 = v36;
  sub_1D99AB100(v33, v29, &qword_1ECB53050);
  if ((*(v37 + 48))(v29, 1, v35) == 1)
  {
    sub_1D99A6AE0(v29, &qword_1ECB53050);
    sub_1D99DF020();
    v38 = swift_allocError();
    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = 2;
    swift_willThrow();
    v60 = v98;
    static Logger.argos.getter(v98);
    v61 = v38;
    v62 = sub_1D9C7D8BC();
    v63 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v62, v63))
    {
      v65 = swift_slowAlloc();
      v66 = a4;
      v67 = swift_slowAlloc();
      *v65 = 138412290;
      v68 = v38;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_1D9962000, v62, v63, "performEncryptedPegasusRequestForPIR(): processingConfigError %@", v65, 0xCu);
      sub_1D99A6AE0(v67, &qword_1ECB510E8);
      v70 = v67;
      a4 = v66;
      MEMORY[0x1DA7405F0](v70, -1, -1);
      MEMORY[0x1DA7405F0](v65, -1, -1);
    }

    (*(v99 + 8))(v60, v100);
    sub_1D9A57EEC();
    v71 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
    swift_beginAccess();
    v72 = *(a4 + v71);
    if (!*(v72 + 16))
    {
      goto LABEL_19;
    }

    v73 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v74 = v38;
    v75 = v38;

    v76 = sub_1D99EE518(v97 + v73);
    if (v77)
    {
      v78 = *(*(v72 + 56) + 16 * v76);

      v79 = sub_1D9C7D02C();
      v80 = *(v79 - 8);
      v81 = v91;
      (*(v80 + 16))(v91, v90, v79);
      (*(v80 + 56))(v81, 0, 1, v79);
      v82 = sub_1D9C7D04C();
      v83 = v92;
      (*(*(v82 - 8) + 56))(v92, 1, 1, v82);
      v102[0] = 0;
      v102[1] = 0xE000000000000000;
      v101 = v38;
      v84 = v38;
      v78(v81, v83, v102, &v101);

      sub_1D99A6AE0(v83, &qword_1ECB51518);
      sub_1D99A6AE0(v81, &qword_1ECB52FD0);
LABEL_19:

      return;
    }
  }

  else
  {
    v40 = *(v37 + 32);
    v87 = v35;
    v40(v32, v29, v35);
    v41 = sub_1D9C7CF4C();
    v42 = *(v41 + 16);
    v88 = a4;
    v86 = v37;
    v85 = v32;
    if (v42 && (v43 = sub_1D99ED894(0xD000000000000016, 0x80000001D9CA37E0), (v44 & 1) != 0))
    {
      v45 = v43;
      v46 = *(v41 + 56);
      v47 = sub_1D9C7CC3C();
      v48 = *(v47 - 8);
      (*(v48 + 16))(v26, v46 + *(v48 + 72) * v45, v47);

      (*(v48 + 56))(v26, 0, 1, v47);
    }

    else
    {

      v47 = sub_1D9C7CC3C();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
    }

    sub_1D99AB100(v26, v23, &qword_1ECB53058);
    sub_1D9C7CC3C();
    v49 = *(v47 - 8);
    v50 = *(v49 + 48);
    if (v50(v23, 1, v47) == 1)
    {
      sub_1D99A6AE0(v23, &qword_1ECB53058);
      v51 = 0;
      v52 = 0xC000000000000000;
    }

    else
    {
      sub_1D9C7CC1C();
      (*(v49 + 8))(v23, v47);
      v51 = sub_1D9C7D34C();
      v52 = v53;
      (*(v93 + 8))(v17, v94);
    }

    sub_1D99AB100(v26, v20, &qword_1ECB53058);
    if (v50(v20, 1, v47) == 1)
    {
      sub_1D99A6AE0(v20, &qword_1ECB53058);
      v54 = 0;
      v55 = 0xC000000000000000;
    }

    else
    {
      sub_1D9C7CC2C();
      (*(v49 + 8))(v20, v47);
      v54 = sub_1D9C7D34C();
      v55 = v56;
      (*(v93 + 8))(v17, v94);
    }

    v57 = v95;
    ObjectType = swift_getObjectType();
    v59 = v96;
    (*(v96 + 24))(v51, v52, v54, v55, ObjectType, v96);
    sub_1D9ACFDB0(v89, v57, v59, v97);
    sub_1D99A5748(v54, v55);
    sub_1D99A5748(v51, v52);
    sub_1D99A6AE0(v26, &qword_1ECB53058);
    (*(v86 + 8))(v85, v87);
  }
}

uint64_t sub_1D9ADBFB8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  return (*(v0 + 16))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_46Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 56, 7);
}

uint64_t objectdestroy_82Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9ADC13C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9AD9A18;

  return sub_1D9AD4AF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9ADC284(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1D9ADC304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9ADC36C()
{
  result = qword_1EDD35490;
  if (!qword_1EDD35490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD35490);
  }

  return result;
}

uint64_t sub_1D9ADC3B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_33Tm()
{
  v1 = sub_1D9C7B93C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9ADC530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, void))
{
  v13 = *(sub_1D9C7B93C() - 8);
  v14 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a6(a1, a2, a3, a4, a5, *(v6 + 16), v6 + v14, *(v6 + v15), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9ADC658(uint64_t a1)
{
  v3 = *(sub_1D9C7CBEC() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v5 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v6) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1D9ADD09C;

  return sub_1D9AD78B4(a1, v9, v10, v12, v1 + v5, v11, v1 + v8, v13);
}

uint64_t objectdestroy_93Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D9ADC88C(uint64_t a1)
{
  v4 = *(sub_1D9C7CBEC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9ADD09C;

  return sub_1D9AD8448(a1, v6, v1 + v5);
}

uint64_t sub_1D9ADC970(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D9AD9A18;

  return sub_1D9AD92C8(a1, a2, v6, v7, v8);
}

uint64_t sub_1D9ADCA34()
{
  v1 = *(sub_1D9C7CBEC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);

  return sub_1D9AD89CC(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t sub_1D9ADCAD4()
{
  v1 = *(sub_1D9C7CBEC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1D9AD87FC(v6, v7, v0 + v2, v0 + v5, v9, v10);
}

uint64_t sub_1D9ADCBE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9ADD09C;

  return sub_1D9AD9920(a1, v4, v5, v6);
}

uint64_t sub_1D9ADCCA0(uint64_t a1)
{
  v4 = *(sub_1D9C7DA1C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D9ADD09C;

  return sub_1D9AD9D08(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D9ADCD90()
{
  result = qword_1ECB53080;
  if (!qword_1ECB53080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53080);
  }

  return result;
}

void sub_1D9ADCE0C()
{
  sub_1D9ADD01C(319, &qword_1EDD2C2F0, MEMORY[0x1E69BD720], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9ADD01C(319, &qword_1ECB53098, MEMORY[0x1E69BDA20], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9ADCF30()
{
  sub_1D9ADD01C(319, &qword_1ECB530B0, MEMORY[0x1E69BDA98], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9ADD01C(319, &qword_1ECB530B8, MEMORY[0x1E69BDAB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9ADD01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9ADD10C()
{
  sub_1D9ADD208();
  if (v0 <= 0x3F)
  {
    sub_1D9ADD258(319, &qword_1EDD2C5B8, _s14DetectedResultVMa, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9ADD258(319, qword_1EDD32B68, type metadata accessor for DomainAssignmentSignals.ImageMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9ADD208()
{
  if (!qword_1EDD33BF0[0])
  {
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD33BF0);
    }
  }
}

void sub_1D9ADD258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9ADD304()
{
  sub_1D9ADD258(319, &qword_1EDD35450, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9ADD258(319, &qword_1EDD2C458, sub_1D9A45B98, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9ADD258(319, &unk_1EDD2C398, type metadata accessor for VIQueryContextImageType, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D9A45AD0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D9ADD448()
{
  type metadata accessor for CipherMLPIRClient();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = objc_allocWithZone(MEMORY[0x1E69945C0]);
  v2 = sub_1D9C7DC4C();
  v3 = [v1 initWithUseCase_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69945C8]) initWithClientConfig_];
  *(v0 + 24) = v4;
  *(v0 + 32) = xmmword_1D9C87D50;
  return v0;
}

uint64_t sub_1D9ADD51C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v49 = a3;
  v5 = sub_1D9C7D8DC();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *a1;
  v9 = a1[1];
  v52 = a1[2];
  v53 = v8;
  v54 = a1[3];
  v55 = v9;
  v10 = *a2;
  v45 = 0x80000001D9CA3750;
  while (2)
  {
    v11 = *(&unk_1F5528AE0 + v7 + 32);
    v51 = v7 + 1;
    v50 = v11;
    result = sub_1D9ADDBB8(v11);
    v13 = result;
    v14 = 0;
    v15 = result + 56;
    v16 = 1 << *(result + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(result + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
LABEL_12:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = *(*(v13 + 48) + (v21 | (v14 << 6)));
      v23 = 0xE700000000000000;
      v24 = 0x38343938333851;
      switch(v22)
      {
        case 1:
          v23 = 0xE600000000000000;
          v24 = 0x363736323251;
          break;
        case 2:
          v23 = 0xE900000000000036;
          v24 = 0x3935373131353651;
          break;
        case 3:
          v23 = 0xE600000000000000;
          v24 = 0x343836323151;
          break;
        case 4:
          v23 = 0xE600000000000000;
          v24 = 0x353437343151;
          break;
        case 5:
          v23 = 0xE400000000000000;
          v24 = 909457233;
          break;
        case 6:
          v23 = 0xE400000000000000;
          v24 = 959592273;
          break;
        case 7:
          v23 = 0xE400000000000000;
          v24 = 875835729;
          break;
        case 8:
          v23 = 0xE400000000000000;
          v24 = 909390161;
          break;
        case 9:
          v23 = 0xE500000000000000;
          v24 = 0x3331313551;
          break;
        case 10:
          v23 = 0xE600000000000000;
          v24 = 0x363038333451;
          break;
        case 11:
          v23 = 0xE600000000000000;
          v24 = 0x313138303151;
          break;
        case 12:
          v24 = 0x3937343138373551;
          v23 = 0xE900000000000035;
          break;
        case 13:
          v24 = 0x39363130343351;
          break;
        case 14:
          v23 = 0xE500000000000000;
          v24 = 0x3439323551;
          break;
        case 15:
          v23 = 0xE600000000000000;
          v24 = 0x303634313151;
          break;
        case 16:
          v23 = 0xE400000000000000;
          v24 = 825701713;
          break;
        case 17:
          v24 = 0x39373931313851;
          break;
        case 18:
          v24 = 0x36323436383351;
          break;
        case 19:
          v24 = 909457489;
          v23 = 0xE400000000000000;
          break;
        case 20:
          v23 = 0xE800000000000000;
          v24 = 0x3331323530333351;
          break;
        case 21:
          v25 = 0x393135323151;
          goto LABEL_48;
        case 22:
          v23 = 0xE800000000000000;
          v24 = 0x3130303132393251;
          break;
        case 23:
          v23 = 0xE600000000000000;
          v24 = 0x343330313151;
          break;
        case 24:
          v24 = 0x35383739323451;
          break;
        case 25:
          v24 = 0x34393538303251;
          break;
        case 26:
          v25 = 0x363830363851;
LABEL_48:
          v24 = v25 & 0xFFFFFFFFFFFFLL | 0x31000000000000;
          break;
        case 27:
          v24 = 0x39343536343751;
          break;
        case 28:
          v24 = 0x37333835363451;
          break;
        case 29:
          v23 = 0xE800000000000000;
          v24 = 0x3538393839383851;
          break;
        case 30:
          v23 = 0xE900000000000038;
          v24 = 0x3234353231373151;
          break;
        case 31:
          v23 = 0xE800000000000000;
          v24 = 0x3238303539363351;
          break;
        case 32:
          v23 = 0xE600000000000000;
          v24 = 0x303530303451;
          break;
        case 33:
          v24 = 0xD000000000000011;
          v23 = v45;
          break;
        case 34:
          v24 = 0x33313138353251;
          break;
        case 35:
          v23 = 0xE800000000000000;
          v24 = 0x3432333338373151;
          break;
        default:
          break;
      }

      if (!*(v10 + 16))
      {

LABEL_54:

        v35 = v46;
        static Logger.argos.getter(v46);
        v36 = sub_1D9C7D8BC();
        v37 = sub_1D9C7E0AC();
        v38 = os_log_type_enabled(v36, v37);
        v33 = v49;
        if (v38)
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v59[0] = v40;
          *v39 = 136315138;
          v41 = sub_1D9A72740(v22);
          v43 = sub_1D9A0E224(v41, v42, v59);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_1D9962000, v36, v37, "trying to access domain with kgid %s not present in the specified ontology graph", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          MEMORY[0x1DA7405F0](v40, -1, -1);
          MEMORY[0x1DA7405F0](v39, -1, -1);
        }

        result = (*(v47 + 8))(v35, v48);
        v34 = 27;
        goto LABEL_57;
      }

      v26 = sub_1D99ED894(v24, v23);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        goto LABEL_54;
      }

      v29 = *(*(v10 + 56) + 8 * v26);
      v30 = *(v29 + 16);
      v32 = *(v29 + 32);
      v31 = *(v29 + 40);
      v59[0] = v53;
      v59[1] = v55;
      v59[2] = v52;
      v59[3] = v54;
      v59[4] = v10;
      v56 = v30;
      v57 = v32;
      v58 = v31;
      result = sub_1D9A375A8(v59, &v56);
      if (result)
      {

        v33 = v49;
        v34 = v50;
        goto LABEL_57;
      }
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v20 >= v19)
      {
        break;
      }

      v18 = *(v15 + 8 * v20);
      ++v14;
      if (v18)
      {
        v14 = v20;
        goto LABEL_12;
      }
    }

    v7 = v51;
    if (v51 != 27)
    {
      continue;
    }

    break;
  }

  v34 = 27;
  v33 = v49;
LABEL_57:
  *v33 = v34;
  return result;
}

uint64_t sub_1D9ADDBB8(char a1)
{
  v2 = &unk_1F552A0B8;
  switch(a1)
  {
    case 1:
      result = sub_1D9C20018(&unk_1F552A270);
      break;
    case 2:
      result = sub_1D9C20018(&unk_1F552A298);
      break;
    case 3:
      result = sub_1D9C20018(&unk_1F552A2C0);
      break;
    case 4:
    case 9:
    case 19:
    case 23:
    case 26:
      result = MEMORY[0x1E69E7CD0];
      break;
    case 5:
      result = sub_1D9C20018(&unk_1F552A1F8);
      break;
    case 6:
      result = sub_1D9C20018(&unk_1F552A220);
      break;
    case 7:
      result = sub_1D9C20018(&unk_1F552A2E8);
      break;
    case 8:
      v2 = &unk_1F552A310;
      goto LABEL_4;
    case 10:
      result = sub_1D9C20018(&unk_1F552A338);
      break;
    case 11:
      result = sub_1D9C20018(&unk_1F552A360);
      break;
    case 12:
      result = sub_1D9C20018(&unk_1F552A388);
      break;
    case 13:
      result = sub_1D9C20018(&unk_1F552A3B0);
      break;
    case 14:
LABEL_4:
      result = sub_1D9C20018(v2);
      break;
    case 15:
      result = sub_1D9C20018(&unk_1F552A0E0);
      break;
    case 16:
      result = sub_1D9C20018(&unk_1F552A108);
      break;
    case 17:
      result = sub_1D9C20018(&unk_1F552A130);
      break;
    case 18:
      result = sub_1D9C20018(&unk_1F552A158);
      break;
    case 20:
      result = sub_1D9C20018(&unk_1F552A180);
      break;
    case 21:
      result = sub_1D9C20018(&unk_1F552A1D0);
      break;
    case 22:
      result = sub_1D9C20018(&unk_1F552A1A8);
      break;
    case 24:
      result = sub_1D9C20018(&unk_1F552A3D8);
      break;
    case 25:
      result = sub_1D9C20018(&unk_1F552A400);
      break;
    default:
      result = sub_1D9C20018(&unk_1F552A248);
      break;
  }

  return result;
}

uint64_t type metadata accessor for CoarseClassificationDomainAssignmentRule()
{
  result = qword_1EDD2F578;
  if (!qword_1EDD2F578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9ADDD64()
{
  result = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9ADDDEC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v5 = v4;
  v131 = type metadata accessor for CoarseClassificationDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = &v121[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v121[-v14];
  v15 = sub_1D9C7D8DC();
  v132 = *(v15 - 8);
  v133 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v121[-v19];
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v121[-v23];
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v121[-v27];
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v35 = a1[7];
  v176 = a1[6];
  v177 = v35;
  v178[0] = a1[8];
  *(v178 + 13) = *(a1 + 141);
  v36 = a1[3];
  v172 = a1[2];
  v173 = v36;
  v37 = a1[5];
  v174 = a1[4];
  v175 = v37;
  v38 = a1[1];
  v170 = *a1;
  v171 = v38;
  v130 = a2;
  if ((*(a2 + 104) & 1) == 0)
  {
    v59 = a1[7];
    a4[6] = a1[6];
    a4[7] = v59;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v60 = a1[3];
    a4[2] = a1[2];
    a4[3] = v60;
    v61 = a1[5];
    a4[4] = a1[4];
    a4[5] = v61;
    v62 = a1[1];
    *a4 = *a1;
    a4[1] = v62;
LABEL_15:
    sub_1D99D39B8(&v170, &v161);
    return result;
  }

  v124 = v34;
  v125 = v33;
  v39 = &v121[-v31];
  v123 = v32;
  v126 = a4;
  sub_1D99B1E14(*v5);
  if (!v41)
  {
    static Logger.argos.getter(v20);
    sub_1D9A3E0E0(v17);
    v53 = *(v132 + 8);
    v63 = v20;
    v64 = v133;
    v53(v63, v133);
    v65 = sub_1D9C7D8BC();
    v66 = sub_1D9C7E09C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1D9962000, v65, v66, "No satisfied coarse label", v67, 2u);
      MEMORY[0x1DA7405F0](v67, -1, -1);
    }

    v57 = v17;
    v58 = v64;
    goto LABEL_13;
  }

  v122 = v40;
  v42 = *(v5 + 1);
  v43 = v131;
  if (*(v42 + 16))
  {
    v44 = *(a3 + 24);
    *&v161 = *&v5[*(v131 + 28)];

    v45 = sub_1D9A601D8(v42, &v161, v44);

    v46 = *(v45 + 16);

    if (!v46)
    {

      static Logger.argos.getter(v24);
      sub_1D9A3E0E0(v124);
      v85 = *(v132 + 8);
      v85(v24, v133);
      v86 = sub_1D9C7D8BC();
      v87 = sub_1D9C7E09C();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_1D9962000, v86, v87, "No satisfied allowlist detector results.", v88, 2u);
        MEMORY[0x1DA7405F0](v88, -1, -1);
      }

      v85(v124, v133);
      goto LABEL_14;
    }
  }

  v47 = *(a3 + 24);
  v48 = *(v5 + 2);
  v49 = *(v43 + 28);
  *&v161 = *&v5[v49];

  v50 = sub_1D9A601D8(v48, &v161, v47);

  v51 = *(v50 + 16);

  if (v51)
  {

    static Logger.argos.getter(v28);
    sub_1D9A3E0E0(v125);
    v52 = v133;
    v53 = *(v132 + 8);
    v53(v28, v133);
    v54 = sub_1D9C7D8BC();
    v55 = sub_1D9C7E09C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1D9962000, v54, v55, "Has satisfied denylist detector results.", v56, 2u);
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    v57 = v125;
    v58 = v52;
LABEL_13:
    v53(v57, v58);
LABEL_14:
    v68 = v177;
    v69 = v126;
    v126[6] = v176;
    v69[7] = v68;
    v69[8] = v178[0];
    *(v69 + 141) = *(v178 + 13);
    v70 = v173;
    v69[2] = v172;
    v69[3] = v70;
    v71 = v175;
    v69[4] = v174;
    v69[5] = v71;
    v72 = v171;
    *v69 = v170;
    v69[1] = v72;
    goto LABEL_15;
  }

  if (v5[24] != 1)
  {
    v89 = v123;
    static Logger.argos.getter(v123);
    v127 = v5;
    v90 = v128;
    sub_1D9ADEAAC(v5, v128, type metadata accessor for CoarseClassificationDomainAssignmentRule);
    v91 = v129;
    sub_1D9ADEAAC(v130, v129, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = sub_1D9C7D8BC();
    v93 = sub_1D9C7E09C();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v154[0] = v130;
      *v94 = 136315394;
      v95 = sub_1D9A15C94(v90[*(v131 + 20)]);
      v97 = v96;
      sub_1D9ADEB14(v90, type metadata accessor for CoarseClassificationDomainAssignmentRule);
      v98 = sub_1D9A0E224(v95, v97, v154);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      v99 = v91[1];
      v161 = *v91;
      v162 = v99;
      v100 = NormalizedRect.loggingDescription.getter();
      v102 = v101;
      sub_1D9ADEB14(v91, type metadata accessor for VisualUnderstanding.ImageRegion);
      v103 = sub_1D9A0E224(v100, v102, v154);

      *(v94 + 14) = v103;
      _os_log_impl(&dword_1D9962000, v92, v93, "Assign %s to region: %s", v94, 0x16u);
      v104 = v130;
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v104, -1, -1);
      MEMORY[0x1DA7405F0](v94, -1, -1);

      (*(v132 + 8))(v123, v133);
    }

    else
    {

      sub_1D9ADEB14(v91, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9ADEB14(v90, type metadata accessor for CoarseClassificationDomainAssignmentRule);
      (*(v132 + 8))(v89, v133);
    }

    LOBYTE(v145) = *(v127 + *(v131 + 20));
    v110 = v145;
    *&v154[0] = *(v127 + v49);

    sub_1D9A19958(v154, &v161);

    LOBYTE(v154[0]) = v110;
    *(v154 + 8) = 0u;
    *(&v154[1] + 8) = 0u;
    BYTE8(v154[2]) = 0;
    v155 = 0u;
    v156 = 0u;
    v157 = v161;
    v158 = v162;
    *&v159 = 0;
    *(&v159 + 1) = v122;
    LOWORD(v160[0]) = 0;
    *&v160[1] = 0;
    *(&v160[0] + 1) = 0;
    *(&v160[1] + 5) = 0;
    v161 = v170;
    v162 = v171;
    v165 = v174;
    v166 = v175;
    v163 = v172;
    v164 = v173;
    *(v169 + 13) = *(v178 + 13);
    v168 = v177;
    v169[0] = v178[0];
    v167 = v176;
    if (sub_1D99AE104(&v161) == 1)
    {
      goto LABEL_28;
    }

    v111 = sub_1D9A15C94(v161);
    v113 = v112;
    if (v111 == sub_1D9A15C94(v110) && v113 == v114)
    {
    }

    else
    {
      v115 = sub_1D9C7E7DC();

      if ((v115 & 1) == 0)
      {
LABEL_28:
        v142 = v158;
        v143 = v159;
        v144[0] = v160[0];
        *(v144 + 13) = *(v160 + 13);
        v138 = v154[2];
        v139 = v155;
        v140 = v156;
        v141 = v157;
        v136 = v154[0];
        v137 = v154[1];
        faiss::NormalizationTransform::~NormalizationTransform(&v136);
        v151 = v142;
        v152 = v143;
        v153[0] = v144[0];
        *(v153 + 13) = *(v144 + 13);
LABEL_34:
        v147 = v138;
        v148 = v139;
        v149 = v140;
        v150 = v141;
        v145 = v136;
        v146 = v137;
        v116 = v152;
        v117 = v126;
        v126[6] = v151;
        v117[7] = v116;
        v117[8] = v153[0];
        *(v117 + 141) = *(v153 + 13);
        v118 = v148;
        v117[2] = v147;
        v117[3] = v118;
        v119 = v150;
        v117[4] = v149;
        v117[5] = v119;
        result = *&v145;
        v120 = v146;
        *v117 = v145;
        v117[1] = v120;
        return result;
      }
    }

    v151 = v167;
    v152 = v168;
    v153[0] = v169[0];
    *(v153 + 13) = *(v169 + 13);
    v147 = v163;
    v148 = v164;
    v149 = v165;
    v150 = v166;
    v145 = v161;
    v146 = v162;
    v142 = v158;
    v143 = v159;
    v144[0] = v160[0];
    *(v144 + 13) = *(v160 + 13);
    v138 = v154[2];
    v139 = v155;
    v140 = v156;
    v141 = v157;
    v136 = v154[0];
    v137 = v154[1];
    sub_1D9B67854(&v145, &v136, v134);
    sub_1D99AE0B0(v154);
    v142 = v134[6];
    v143 = v134[7];
    v144[0] = v135[0];
    *(v144 + 13) = *(v135 + 13);
    v138 = v134[2];
    v139 = v134[3];
    v140 = v134[4];
    v141 = v134[5];
    v136 = v134[0];
    v137 = v134[1];
    faiss::NormalizationTransform::~NormalizationTransform(&v136);
    v151 = v142;
    v152 = v143;
    v153[0] = v144[0];
    *(v153 + 13) = *(v144 + 13);
    goto LABEL_34;
  }

  v74 = v39;
  static Logger.argos.getter(v39);
  v75 = v127;
  sub_1D9ADEAAC(v130, v127, type metadata accessor for VisualUnderstanding.ImageRegion);
  v76 = sub_1D9C7D8BC();
  v77 = sub_1D9C7E09C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v154[0] = v79;
    *v78 = 136315138;
    v80 = v75[1];
    v161 = *v75;
    v162 = v80;
    v81 = NormalizedRect.loggingDescription.getter();
    v83 = v82;
    sub_1D9ADEB14(v75, type metadata accessor for VisualUnderstanding.ImageRegion);
    v84 = sub_1D9A0E224(v81, v83, v154);

    *(v78 + 4) = v84;
    _os_log_impl(&dword_1D9962000, v76, v77, "Reject any domain to region: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x1DA7405F0](v79, -1, -1);
    MEMORY[0x1DA7405F0](v78, -1, -1);
  }

  else
  {

    sub_1D9ADEB14(v75, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  (*(v132 + 8))(v74, v133);
  v105 = v126;
  sub_1D99D3B54(&v161);
  v106 = v168;
  v105[6] = v167;
  v105[7] = v106;
  v105[8] = v169[0];
  *(v105 + 141) = *(v169 + 13);
  v107 = v164;
  v105[2] = v163;
  v105[3] = v107;
  v108 = v166;
  v105[4] = v165;
  v105[5] = v108;
  result = *&v161;
  v109 = v162;
  *v105 = v161;
  v105[1] = v109;
  return result;
}

uint64_t sub_1D9ADEAAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9ADEB14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9ADEB74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v229 = a4;
  v254 = a2;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v238 = &v226 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v237 = &v226 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v248 = &v226 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v247 = &v226 - v14;
  v233 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0);
  v255 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v235 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v256 = &v226 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v234 = &v226 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v257 = (&v226 - v21);
  v228 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v260 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v263 = &v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v226 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v259 = &v226 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v258 = &v226 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v246 = (&v226 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v226 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v251 = (&v226 - v36);
  v253 = *a1;
  v243 = sub_1D9A4700C(MEMORY[0x1E69E7CC0]);
  v227 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  v37 = *(v227 + 20);
  v226 = a3;
  v38 = *(a3 + v37);
  swift_beginAccess();
  v39 = *(v38 + 16);
  v40 = *(v39 + 64);
  v236 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v44 = (v41 + 63) >> 6;
  v245 = 0x80000001D9CA3A40;
  v265 = (v7 + 16);
  v264 = (v7 + 8);
  v244 = v39;

  v242 = 0;
  v45 = 0;
  *&v46 = 136315138;
  v252 = v46;
  v261 = v6;
  v249 = v25;
  v250 = v44;
  v262 = v34;
LABEL_4:
  v47 = v45;
  while (1)
  {
    if (!v43)
    {
      if (v44 <= v47 + 1)
      {
        v49 = v47 + 1;
      }

      else
      {
        v49 = v44;
      }

      while (1)
      {
        v48 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v48 >= v44)
        {
          v266 = v49 - 1;
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
          (*(*(v70 - 8) + 56))(v34, 1, 1, v70);
          v43 = 0;
          goto LABEL_16;
        }

        v43 = *(v236 + 8 * v48);
        ++v47;
        if (v43)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
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
      result = sub_1D9C7E84C();
      __break(1u);
      return result;
    }

    v48 = v47;
LABEL_15:
    v50 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v51 = v50 | (v48 << 6);
    v52 = (*(v244 + 48) + 16 * v51);
    v54 = *v52;
    v53 = v52[1];
    v55 = v259;
    sub_1D9AE28B4(*(v244 + 56) + *(v260 + 72) * v51, v259, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
    v57 = *(v56 + 48);
    *v34 = v54;
    v34[1] = v53;
    sub_1D9AE284C(v55, v34 + v57, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    (*(*(v56 - 8) + 56))(v34, 0, 1, v56);

    v266 = v48;
    v6 = v261;
LABEL_16:
    v58 = v251;
    sub_1D99B1C20(v34, v251, &qword_1ECB51AC8);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    if (v61(v58, 1, v59) == 1)
    {
      break;
    }

    v63 = *v58;
    v62 = v58[1];
    sub_1D9AE284C(v58 + *(v59 + 48), v25, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v64 = sub_1D9A163E0();
    if (v64 != 27)
    {
      v83 = v64;
      v84 = *&v25[*(v228 + 20)];
      swift_beginAccess();
      v85 = *(v84 + 16);
      v240 = *(v85 + 16);
      if (v240)
      {
        v239 = v85 + ((*(v255 + 80) + 32) & ~*(v255 + 80));
        v241 = v85;

        v86 = 0;
        v87 = v247;
        v88 = v257;
        while (1)
        {
          if (v86 >= *(v241 + 16))
          {
            goto LABEL_164;
          }

          sub_1D9AE28B4(v239 + *(v255 + 72) * v86, v88, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v272[0] = v83;
          v273 = v253;
          sub_1D99B21D4(v88, v272, &v273, v254, &v269);
          if (v270)
          {
            sub_1D9979B9C(&v269, &v271);
            sub_1D99A17C8(&v271, &v269);
            sub_1D9979BF4(v242);
            v91 = v243;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v273 = v91;
            v94 = sub_1D99EE138(v83);
            v95 = *(v91 + 16);
            v96 = (v93 & 1) == 0;
            v97 = v95 + v96;
            if (__OFADD__(v95, v96))
            {
              goto LABEL_166;
            }

            v98 = v93;
            if (*(v91 + 24) < v97)
            {
              sub_1D9C0CA74(v97, isUniquelyReferenced_nonNull_native);
              v99 = sub_1D99EE138(v83);
              if ((v98 & 1) != (v100 & 1))
              {
                goto LABEL_170;
              }

              v94 = v99;
              v101 = v273;
              if (v98)
              {
                goto LABEL_61;
              }

LABEL_59:
              v101[(v94 >> 6) + 8] |= 1 << v94;
              *(v101[6] + v94) = v83;
              *(v101[7] + 8 * v94) = MEMORY[0x1E69E7CC0];
              v107 = v101[2];
              v108 = __OFADD__(v107, 1);
              v109 = v107 + 1;
              if (v108)
              {
                goto LABEL_168;
              }

              v101[2] = v109;
              goto LABEL_61;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v101 = v273;
              if ((v93 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            else
            {
              sub_1D9C159F0();
              v101 = v273;
              if ((v98 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

LABEL_61:
            v243 = v101;
            v110 = v101[7];
            v111 = *(v110 + 8 * v94);
            v112 = swift_isUniquelyReferenced_nonNull_native();
            *(v110 + 8 * v94) = v111;
            if ((v112 & 1) == 0)
            {
              v111 = sub_1D9AFACC0(0, v111[2] + 1, 1, v111);
              *(v110 + 8 * v94) = v111;
            }

            v114 = v111[2];
            v113 = v111[3];
            if (v114 >= v113 >> 1)
            {
              *(v110 + 8 * v94) = sub_1D9AFACC0((v113 > 1), v114 + 1, 1, v111);
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v271);
            sub_1D9AE291C(v257, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
            v115 = *(v110 + 8 * v94);
            *(v115 + 16) = v114 + 1;
            sub_1D9979B9C(&v269, v115 + 40 * v114 + 32);
            v242 = sub_1D9AE29D4;
            goto LABEL_42;
          }

          sub_1D99A6AE0(&v269, &qword_1ECB530C0);
          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          if (byte_1EDD354C0 != 1)
          {
LABEL_74:
            v120 = qword_1EDD354D8;
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
              v120 = qword_1EDD354D8;
            }

            goto LABEL_76;
          }

          v102 = [objc_opt_self() mainBundle];
          v103 = [v102 bundleIdentifier];

          if (v103)
          {
            v104 = sub_1D9C7DC7C();
            v106 = v105;

            if (v104 == 0xD00000000000002BLL && v245 == v106)
            {

LABEL_67:
              v117 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v117 = &off_1ECB51BA8;
              }

              goto LABEL_71;
            }

            v116 = sub_1D9C7E7DC();

            if (v116)
            {
              goto LABEL_67;
            }
          }

          v117 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v117 = &qword_1EDD355A8;
          }

LABEL_71:
          v118 = *(*v117 + 32);

          v119 = sub_1D9C7DC4C();
          LODWORD(v118) = [v118 BOOLForKey_];

          v87 = v247;
          if (!v118)
          {
            goto LABEL_74;
          }

          v120 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v120 = qword_1EDD2C990;
          }

LABEL_76:
          v121 = __swift_project_value_buffer(v6, v120);
          (*v265)(v87, v121, v6);
          v122 = v257;
          v123 = v234;
          sub_1D9AE28B4(v257, v234, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v124 = sub_1D9C7D8BC();
          v125 = sub_1D9C7E0AC();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            v271 = v231;
            *v126 = v252;
            sub_1D9AE297C();
            v127 = sub_1D9C7E7EC();
            v129 = v128;
            v232 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule;
            sub_1D9AE291C(v123, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
            v130 = sub_1D9A0E224(v127, v129, &v271);
            v6 = v261;

            *(v126 + 4) = v130;
            _os_log_impl(&dword_1D9962000, v124, v125, "Failed to parse rule %s", v126, 0xCu);
            v131 = v231;
            __swift_destroy_boxed_opaque_existential_0Tm(v231);
            MEMORY[0x1DA7405F0](v131, -1, -1);
            MEMORY[0x1DA7405F0](v126, -1, -1);

            (*v264)(v247, v6);
            v89 = v257;
            v90 = v232;
          }

          else
          {

            sub_1D9AE291C(v123, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
            (*v264)(v247, v6);
            v89 = v122;
            v90 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule;
          }

          sub_1D9AE291C(v89, v90);
LABEL_42:
          ++v86;
          v87 = v247;
          v88 = v257;
          v34 = v262;
          if (v240 == v86)
          {

            v25 = v249;
            goto LABEL_82;
          }
        }
      }

      v34 = v262;
LABEL_82:
      sub_1D9AE291C(v25, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v44 = v250;
      v45 = v266;
      goto LABEL_4;
    }

    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_34;
    }

    v65 = [objc_opt_self() mainBundle];
    v66 = [v65 bundleIdentifier];

    if (v66)
    {
      v67 = sub_1D9C7DC7C();
      v69 = v68;

      if (v67 == 0xD00000000000002BLL && v245 == v69)
      {

LABEL_27:
        v72 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v72 = &off_1ECB51BA8;
        }

        goto LABEL_31;
      }

      v71 = sub_1D9C7E7DC();

      if (v71)
      {
        goto LABEL_27;
      }
    }

    v72 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v72 = &qword_1EDD355A8;
    }

LABEL_31:
    v73 = *(*v72 + 32);

    v74 = sub_1D9C7DC4C();
    LODWORD(v73) = [v73 BOOLForKey_];

    if (v73)
    {
      v75 = qword_1EDD2C990;
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
        v75 = qword_1EDD2C990;
      }

      goto LABEL_36;
    }

LABEL_34:
    v75 = qword_1EDD354D8;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
      v75 = qword_1EDD354D8;
    }

LABEL_36:
    v76 = __swift_project_value_buffer(v6, v75);
    v77 = v248;
    (*v265)(v248, v76, v6);

    v78 = sub_1D9C7D8BC();
    v79 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v271 = v81;
      *v80 = v252;
      v82 = sub_1D9A0E224(v63, v62, &v271);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_1D9962000, v78, v79, "Failed to convert visual domain %s.", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      MEMORY[0x1DA7405F0](v81, -1, -1);
      MEMORY[0x1DA7405F0](v80, -1, -1);
    }

    else
    {
    }

    (*v264)(v77, v6);
    v25 = v249;
    sub_1D9AE291C(v249, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v47 = v266;
    v34 = v262;
    v44 = v250;
  }

  v257 = v61;

  *(v230 + 16) = v243;
  v249 = sub_1D9A4700C(MEMORY[0x1E69E7CC0]);
  v132 = *(v229 + *(v227 + 20));
  swift_beginAccess();
  v133 = *(v132 + 16);
  v134 = *(v133 + 64);
  v240 = v133 + 64;
  v135 = 1 << *(v133 + 32);
  v136 = -1;
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  v137 = v136 & v134;
  v239 = (v135 + 63) >> 6;
  v251 = (v60 + 56);
  v250 = v133;

  v248 = 0;
  v138 = 0;
  v139 = v238;
  v140 = v258;
  v266 = v59;
  while (1)
  {
    if (v137)
    {
      v141 = v138;
LABEL_95:
      v143 = __clz(__rbit64(v137));
      v137 &= v137 - 1;
      v144 = v143 | (v141 << 6);
      v145 = (*(v250 + 48) + 16 * v144);
      v147 = *v145;
      v146 = v145[1];
      v148 = v259;
      sub_1D9AE28B4(*(v250 + 56) + *(v260 + 72) * v144, v259, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v149 = v266;
      v150 = *(v266 + 48);
      *v140 = v147;
      v140[1] = v146;
      sub_1D9AE284C(v148, v140 + v150, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      (*v251)(v140, 0, 1, v149);

      v262 = v141;
    }

    else
    {
      v142 = v239 <= v138 + 1 ? v138 + 1 : v239;
      while (1)
      {
        v141 = v138 + 1;
        if (__OFADD__(v138, 1))
        {
          goto LABEL_163;
        }

        if (v141 >= v239)
        {
          break;
        }

        v137 = *(v240 + 8 * v141);
        v138 = (v138 + 1);
        if (v137)
        {
          goto LABEL_95;
        }
      }

      v262 = (v142 - 1);
      (*v251)(v140, 1, 1, v266);
      v137 = 0;
    }

    v151 = v246;
    sub_1D99B1C20(v140, v246, &qword_1ECB51AC8);
    if (v257(v151, 1, v266) == 1)
    {
      break;
    }

    v152 = v6;
    v154 = *v151;
    v153 = v151[1];
    sub_1D9AE284C(v151 + *(v266 + 48), v263, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v155 = sub_1D9A163E0();
    if (v155 == 27)
    {
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_114;
      }

      v156 = [objc_opt_self() mainBundle];
      v157 = [v156 bundleIdentifier];

      if (v157)
      {
        v158 = sub_1D9C7DC7C();
        v160 = v159;

        if (v158 == 0xD00000000000002BLL && v245 == v160)
        {

          goto LABEL_107;
        }

        v161 = sub_1D9C7E7DC();

        if (v161)
        {
LABEL_107:
          v162 = v153;
          v163 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v163 = &off_1ECB51BA8;
          }

          goto LABEL_111;
        }
      }

      v162 = v153;
      v163 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v163 = &qword_1EDD355A8;
      }

LABEL_111:
      v164 = *(*v163 + 32);

      v165 = sub_1D9C7DC4C();
      LODWORD(v164) = [v164 BOOLForKey_];

      v153 = v162;
      if (v164)
      {
        v166 = qword_1EDD2C990;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v166 = qword_1EDD2C990;
        }

LABEL_116:
        v167 = __swift_project_value_buffer(v152, v166);
        (*v265)(v139, v167, v152);

        v168 = sub_1D9C7D8BC();
        v169 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v271 = v171;
          *v170 = v252;
          v172 = sub_1D9A0E224(v154, v153, &v271);

          *(v170 + 4) = v172;
          v6 = v261;
          _os_log_impl(&dword_1D9962000, v168, v169, "Failed to convert visual domain %s for Grounding Model.", v170, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v171);
          MEMORY[0x1DA7405F0](v171, -1, -1);
          MEMORY[0x1DA7405F0](v170, -1, -1);

          (*v264)(v139, v6);
          sub_1D9AE291C(v263, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
          v138 = v262;
          v140 = v258;
        }

        else
        {

          (*v264)(v139, v152);
          sub_1D9AE291C(v263, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
          v138 = v262;
          v140 = v258;
          v6 = v152;
        }

        continue;
      }

LABEL_114:
      v166 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v166 = qword_1EDD354D8;
      }

      goto LABEL_116;
    }

    v173 = v155;
    v174 = *(v263 + *(v228 + 20));
    swift_beginAccess();
    v175 = *(v174 + 16);
    v247 = *(v175 + 16);
    if (v247)
    {
      v244 = v175 + ((*(v255 + 80) + 32) & ~*(v255 + 80));

      v177 = 0;
      LODWORD(v241) = v173;
      v178 = v176;
      v243 = v153;
      v236 = v176;
      while (1)
      {
        if (v177 >= *(v178 + 16))
        {
          goto LABEL_165;
        }

        v180 = v256;
        sub_1D9AE28B4(v244 + *(v255 + 72) * v177, v256, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
        v268 = v173;
        v267 = v253;
        sub_1D99B21D4(v180, &v268, &v267, v254, &v269);
        if (v270)
        {
          sub_1D9979B9C(&v269, &v271);
          sub_1D99A17C8(&v271, &v269);
          sub_1D9979BF4(v248);
          v181 = v249;
          v182 = swift_isUniquelyReferenced_nonNull_native();
          v267 = v181;
          v184 = sub_1D99EE138(v173);
          v185 = *(v181 + 16);
          v186 = (v183 & 1) == 0;
          v187 = v185 + v186;
          if (__OFADD__(v185, v186))
          {
            goto LABEL_167;
          }

          v188 = v183;
          if (*(v181 + 24) >= v187)
          {
            if ((v182 & 1) == 0)
            {
              sub_1D9C159F0();
            }
          }

          else
          {
            sub_1D9C0CA74(v187, v182);
            v189 = sub_1D99EE138(v173);
            if ((v188 & 1) != (v190 & 1))
            {
              goto LABEL_170;
            }

            v184 = v189;
          }

          v140 = v258;
          v199 = v267;
          if ((v188 & 1) == 0)
          {
            v267[(v184 >> 6) + 8] |= 1 << v184;
            *(v199[6] + v184) = v173;
            *(v199[7] + 8 * v184) = MEMORY[0x1E69E7CC0];
            v200 = v199[2];
            v108 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v108)
            {
              goto LABEL_169;
            }

            v199[2] = v201;
          }

          v249 = v199;
          v202 = v199[7];
          v203 = *(v202 + 8 * v184);
          v204 = swift_isUniquelyReferenced_nonNull_native();
          *(v202 + 8 * v184) = v203;
          if ((v204 & 1) == 0)
          {
            v203 = sub_1D9AFACC0(0, v203[2] + 1, 1, v203);
            *(v202 + 8 * v184) = v203;
          }

          v206 = v203[2];
          v205 = v203[3];
          if (v206 >= v205 >> 1)
          {
            *(v202 + 8 * v184) = sub_1D9AFACC0((v205 > 1), v206 + 1, 1, v203);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v271);
          sub_1D9AE291C(v256, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v207 = *(v202 + 8 * v184);
          *(v207 + 16) = v206 + 1;
          sub_1D9979B9C(&v269, v207 + 40 * v206 + 32);
          v248 = sub_1D9AE29D4;
          goto LABEL_122;
        }

        sub_1D99A6AE0(&v269, &qword_1ECB530C0);
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v191 = v237;
        v192 = v235;
        v193 = v256;
        if (byte_1EDD354C0 != 1)
        {
LABEL_154:
          v212 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v212 = qword_1EDD354D8;
          }

          goto LABEL_156;
        }

        v194 = [objc_opt_self() mainBundle];
        v195 = [v194 bundleIdentifier];

        if (v195)
        {
          v196 = sub_1D9C7DC7C();
          v198 = v197;

          if (v196 == 0xD00000000000002BLL && v245 == v198)
          {

LABEL_147:
            v209 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v209 = &off_1ECB51BA8;
            }

            goto LABEL_151;
          }

          v208 = sub_1D9C7E7DC();

          if (v208)
          {
            goto LABEL_147;
          }
        }

        v209 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v209 = &qword_1EDD355A8;
        }

LABEL_151:
        v210 = *(*v209 + 32);

        v211 = sub_1D9C7DC4C();
        LODWORD(v210) = [v210 BOOLForKey_];

        v191 = v237;
        v192 = v235;
        v193 = v256;
        if (!v210)
        {
          goto LABEL_154;
        }

        v212 = qword_1EDD2C990;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v212 = qword_1EDD2C990;
        }

LABEL_156:
        v213 = v261;
        v214 = __swift_project_value_buffer(v261, v212);
        (*v265)(v191, v214, v213);
        sub_1D9AE28B4(v193, v192, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
        v215 = sub_1D9C7D8BC();
        v216 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          v218 = v192;
          v219 = swift_slowAlloc();
          v271 = v219;
          *v217 = v252;
          sub_1D9AE297C();
          v220 = sub_1D9C7E7EC();
          v222 = v221;
          sub_1D9AE291C(v218, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v223 = sub_1D9A0E224(v220, v222, &v271);

          *(v217 + 4) = v223;
          _os_log_impl(&dword_1D9962000, v215, v216, "Failed to parse rule %s for Grounding Model", v217, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v219);
          MEMORY[0x1DA7405F0](v219, -1, -1);
          MEMORY[0x1DA7405F0](v217, -1, -1);

          (*v264)(v237, v261);
          v179 = v256;
        }

        else
        {

          sub_1D9AE291C(v192, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          (*v264)(v191, v213);
          v179 = v193;
        }

        sub_1D9AE291C(v179, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
        v140 = v258;
        v178 = v236;
LABEL_122:
        ++v177;
        v139 = v238;
        v173 = v241;
        if (v247 == v177)
        {

          v6 = v261;
          goto LABEL_160;
        }
      }
    }

    v140 = v258;
    v6 = v152;
LABEL_160:
    sub_1D9AE291C(v263, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v138 = v262;
  }

  sub_1D9AE291C(v229, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9AE291C(v226, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v224 = v230;
  *(v230 + 24) = v249;
  sub_1D9979BF4(v242);
  sub_1D9979BF4(v248);
  return v224;
}

uint64_t sub_1D9AE0E3C(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  LODWORD(v193) = a4;
  v186 = a2;
  v183 = sub_1D9C7D8DC();
  v172 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v181 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v169 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v194 = &v169 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v169 - v14;
  v176 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v170 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v188 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v175 = &v169 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v174 = &v169 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v200 = &v169 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v192 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v187 = &v169 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v185 = &v169 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v169 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v169 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v169 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v199 = (&v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v169 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v169 - v43;
  v190 = type metadata accessor for DomainAssignmentSignals(0);
  MEMORY[0x1EEE9AC00](v190);
  v198 = (&v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v251[0] = 0x6E69616D6F44;
  v251[1] = 0xE600000000000000;
  v251[2] = "Domain assignment";
  v251[3] = 17;
  v252 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v171 = sub_1D9AFD4B8(v251, a5);

  v184 = sub_1D9A19EFC(a1);
  v182 = v46;
  v179 = v47;
  v197 = a1;
  v178 = sub_1D9A1A0A0(a1);
  sub_1D99AB100(a3, v36, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v49 = *(*(Context - 1) + 48);
  v50 = v49(v36, 1, Context);
  v189 = v41;
  if (v50 == 1)
  {
    sub_1D99A6AE0(v36, &unk_1ECB51B10);
    v51 = sub_1D9C7B80C();
    (*(*(v51 - 8) + 56))(v41, 1, 1, v51);
  }

  else
  {
    sub_1D99AB100(&v36[Context[10]], v41, &qword_1ECB51FD0);
    sub_1D9AE291C(v36, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a3, v33, &unk_1ECB51B10);
  v52 = v49(v33, 1, Context);
  v53 = v187;
  if (v52 == 1)
  {
    sub_1D99A6AE0(v33, &unk_1ECB51B10);
    v54 = sub_1D9C7B80C();
    (*(*(v54 - 8) + 56))(v199, 1, 1, v54);
  }

  else
  {
    sub_1D99AB100(&v33[Context[14]], v199, &qword_1ECB51FD0);
    sub_1D9AE291C(v33, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a3, v30, &unk_1ECB51B10);
  v55 = v49(v30, 1, Context);
  v56 = v189;
  if (v55 == 1)
  {
    sub_1D99A6AE0(v30, &unk_1ECB51B10);
    v177 = 0;
  }

  else
  {
    v177 = *&v30[Context[11]];
    v57 = v177;
    sub_1D9AE291C(v30, type metadata accessor for VisualQueryContext);
  }

  v58 = v185;
  sub_1D99AB100(a3, v185, &unk_1ECB51B10);
  v59 = v49(v58, 1, Context);
  if (v59 == 1)
  {
    sub_1D99A6AE0(v58, &unk_1ECB51B10);
    *&v173 = 0;
  }

  else
  {
    *&v173 = *(v58 + 56);
    sub_1D9AE291C(v58, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a3, v53, &unk_1ECB51B10);
  v60 = v49(v53, 1, Context);
  v196 = a3;
  if (v60 == 1)
  {
    sub_1D99A6AE0(v53, &unk_1ECB51B10);
    v61 = sub_1D9A455B8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v61 = *(v53 + 3);

    sub_1D9AE291C(v53, type metadata accessor for VisualQueryContext);
  }

  sub_1D99B1C20(v56, v44, &qword_1ECB51FD0);
  v62 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  sub_1D99B1C20(v199, &v44[v62[5]], &qword_1ECB51FD0);
  *&v44[v62[6]] = v177;
  v63 = &v44[v62[7]];
  *v63 = v173;
  v63[8] = v59 == 1;
  *&v44[v62[8]] = v61;
  (*(*(v62 - 1) + 56))(v44, 0, 1, v62);
  v64 = v198;
  v65 = v182;
  *v198 = v184;
  v64[1] = v65;
  v66 = v178;
  v64[2] = v179;
  v64[3] = v66;
  sub_1D99B1C20(v44, v64 + *(v190 + 24), &qword_1ECB51640);
  v67 = 16;
  if (v193)
  {
    v67 = 24;
  }

  v68 = v196;
  v69 = *(v195 + v67);
  v70 = v192;
  sub_1D99AB100(v196, v192, &unk_1ECB51B10);
  if (v49(v70, 1, Context) == 1)
  {

    sub_1D99A6AE0(v70, &unk_1ECB51B10);
    v71 = 0;
  }

  else
  {
    v72 = *(v70 + 56);

    sub_1D9AE291C(v70, type metadata accessor for VisualQueryContext);
    if ((v72 - 1) >= 5)
    {
      v71 = 0;
    }

    else
    {
      v71 = v72;
    }
  }

  v73 = v183;
  v74 = v194;
  LODWORD(v190) = sub_1D9A1D4B4(v68);
  v189 = *(v197 + 16);
  if (v189)
  {
    v76 = 0;
    v179 = (*(v170 + 80) + 32) & ~*(v170 + 80);
    v77 = v197 + v179;
    v195 = *(v170 + 72);
    v193 = (v172 + 1);
    v177 = 0x80000001D9CA3A40;
    v184 = (v172 + 2);
    v185 = v186 + 56;
    v172 += 4;
    *&v75 = 136315138;
    v173 = v75;
    v196 = MEMORY[0x1E69E7CC0];
    v78 = v200;
    v192 = v69;
    v178 = v197 + v179;
    while (1)
    {
      sub_1D9AE28B4(v77 + v195 * v76, v78, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_beginAccess();
      v79 = *(v78 + 104) & v190;
      v197 = v76;
      if ((v79 & 1) == 0)
      {
        v89 = v186;
        v90 = 1 << *(v186 + 32);
        if (v90 < 64)
        {
          v91 = ~(-1 << v90);
        }

        else
        {
          v91 = -1;
        }

        v199 = (v91 & *(v186 + 56));
        v92 = (v90 + 63) >> 6;

        v94 = 0;
        v187 = MEMORY[0x1E69E7CC0];
        while (2)
        {
          v95 = v185;
LABEL_44:
          while (2)
          {
            v96 = v199;
            while (1)
            {
              if (!v96)
              {
                while (1)
                {
                  v98 = v94 + 1;
                  if (__OFADD__(v94, 1))
                  {
                    __break(1u);
                    return result;
                  }

                  if (v98 >= v92)
                  {
                    break;
                  }

                  v97 = *(v95 + 8 * v98);
                  ++v94;
                  if (v97)
                  {
                    v94 = v98;
                    goto LABEL_51;
                  }
                }

                v132 = sub_1D9A19C84(v187);

                *(v200 + 48) = v132;

                v133 = v180;
                static Logger.argos.getter(v180);
                v134 = v181;
                sub_1D9A3E0E0(v181);
                v73 = v183;
                v199 = *v193;
                v199(v133, v183);
                v135 = sub_1D9C7D8BC();
                v136 = sub_1D9C7E09C();
                if (os_log_type_enabled(v135, v136))
                {
                  v137 = swift_slowAlloc();
                  v187 = swift_slowAlloc();
                  *&v249[0] = v187;
                  *v137 = v173;
                  v138 = v174;
                  sub_1D9AE28B4(v200, v174, type metadata accessor for VisualUnderstanding.ImageRegion);
                  sub_1D9AE28B4(v138, v175, type metadata accessor for VisualUnderstanding.ImageRegion);
                  v139 = sub_1D9C7DD0C();
                  v141 = v140;
                  sub_1D9AE291C(v138, type metadata accessor for VisualUnderstanding.ImageRegion);
                  v142 = sub_1D9A0E224(v139, v141, v249);
                  v69 = v192;

                  *(v137 + 4) = v142;
                  _os_log_impl(&dword_1D9962000, v135, v136, "%s", v137, 0xCu);
                  v143 = v187;
                  __swift_destroy_boxed_opaque_existential_0Tm(v187);
                  v73 = v183;
                  MEMORY[0x1DA7405F0](v143, -1, -1);
                  MEMORY[0x1DA7405F0](v137, -1, -1);
                }

                v199(v134, v73);
                sub_1D9AE28B4(v200, v188, type metadata accessor for VisualUnderstanding.ImageRegion);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v74 = v194;
                v77 = v178;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v196 = sub_1D9AF8A90(0, v196[2] + 1, 1, v196);
                }

                v146 = v196[2];
                v145 = v196[3];
                if (v146 >= v145 >> 1)
                {
                  v196 = sub_1D9AF8A90(v145 > 1, v146 + 1, 1, v196);
                }

                v147 = v195;
                v148 = v196;
                v196[2] = v146 + 1;
                sub_1D9AE284C(v188, v148 + v179 + v146 * v147, type metadata accessor for VisualUnderstanding.ImageRegion);
                goto LABEL_26;
              }

              v97 = v96;
LABEL_51:
              v96 = ((v97 - 1) & v97);
              if (*(v69 + 16))
              {
                v99 = *(*(v89 + 48) + (__clz(__rbit64(v97)) | (v94 << 6)));
                v199 = ((v97 - 1) & v97);
                result = sub_1D99EE138(v99);
                v96 = v199;
                if (v100)
                {
                  break;
                }
              }
            }

            v101 = *(*(v69 + 56) + 8 * result);
            sub_1D99D3B54(v249);
            result = v101;
            v102 = *(v101 + 16);
            if (!v102)
            {
              continue;
            }

            break;
          }

          v103 = result + 32;
          v246 = v249[6];
          v247 = v249[7];
          v248[0] = v250[0];
          *(v248 + 13) = *(v250 + 13);
          v242 = v249[2];
          v243 = v249[3];
          v244 = v249[4];
          v245 = v249[5];
          v240 = v249[0];
          v241 = v249[1];
          v182 = result;

          v104 = v102 - 1;
LABEL_55:
          sub_1D99A17C8(v103, v237);
          v105 = v238;
          v106 = v239;
          __swift_project_boxed_opaque_existential_1(v237, v238);
          v107 = (*(v106 + 16))(v105, v106);
          if (v71 <= 2)
          {
            if (v71)
            {
              if (v71 == 1)
              {
                if (v107 == 1)
                {
                  goto LABEL_76;
                }
              }

              else if (v107 == 2)
              {
                goto LABEL_76;
              }
            }

            else if (!v107)
            {
              goto LABEL_76;
            }

LABEL_71:
            v108 = v238;
            v109 = v239;
            __swift_project_boxed_opaque_existential_1(v237, v238);
            v110 = (*(v109 + 16))(v108, v109);
            if ((v111 & 1) == 0)
            {
              if (v110)
              {
                goto LABEL_79;
              }

              goto LABEL_76;
            }

            if (v110 > 2)
            {
              goto LABEL_82;
            }

            if (v110)
            {
LABEL_79:
              v234 = v246;
              v235 = v247;
              v236[0] = v248[0];
              goto LABEL_83;
            }

LABEL_76:
            v112 = v238;
            v113 = v239;
            __swift_project_boxed_opaque_existential_1(v237, v238);
            if ((*(v113 + 8))(v112, v113))
            {
              v225 = v246;
              v226 = v247;
              v227[0] = v248[0];
              *(v227 + 13) = *(v248 + 13);
              v221 = v242;
              v222 = v243;
              v223 = v244;
              v224 = v245;
              v219 = v240;
              v220 = v241;
              if (sub_1D99AE104(&v219) != 1)
              {
                goto LABEL_81;
              }
            }

            v114 = v238;
            v115 = v239;
            __swift_project_boxed_opaque_existential_1(v237, v238);
            if ((*(v115 + 8))(v114, v115))
            {
              goto LABEL_79;
            }

            v225 = v246;
            v226 = v247;
            v227[0] = v248[0];
            *(v227 + 13) = *(v248 + 13);
            v221 = v242;
            v222 = v243;
            v223 = v244;
            v224 = v245;
            v219 = v240;
            v220 = v241;
            if (sub_1D99AE104(&v219) == 1)
            {
LABEL_81:
              v116 = v238;
              v117 = v239;
              __swift_project_boxed_opaque_existential_1(v237, v238);
              v207 = v246;
              v208 = v247;
              v209[0] = v248[0];
              *(v209 + 13) = *(v248 + 13);
              v203 = v242;
              v204 = v243;
              v205 = v244;
              v206 = v245;
              v201 = v240;
              v202 = v241;
              (*(v117 + 24))(&v219, &v201, v200, v198, v116, v117);
              v216 = v207;
              v217 = v208;
              v218[0] = v209[0];
              *(v218 + 13) = *(v209 + 13);
              v212 = v203;
              v213 = v204;
              v214 = v205;
              v215 = v206;
              v210 = v201;
              v211 = v202;
              sub_1D99A6AE0(&v210, &qword_1ECB510B8);
              v234 = v225;
              v235 = v226;
              v236[0] = v227[0];
              *(v236 + 13) = *(v227 + 13);
              v230 = v221;
              v231 = v222;
              v232 = v223;
              v233 = v224;
              v118 = v219;
              v119 = v220;
            }

            else
            {
LABEL_82:
              v234 = v246;
              v235 = v247;
              v236[0] = v248[0];
LABEL_83:
              *(v236 + 13) = *(v248 + 13);
              v230 = v242;
              v231 = v243;
              v232 = v244;
              v233 = v245;
              v118 = v240;
              v119 = v241;
            }

            v228 = v118;
            v229 = v119;
            __swift_destroy_boxed_opaque_existential_0Tm(v237);
            if (!v104)
            {

              v225 = v234;
              v226 = v235;
              v227[0] = v236[0];
              *(v227 + 13) = *(v236 + 13);
              v221 = v230;
              v222 = v231;
              v223 = v232;
              v224 = v233;
              v219 = v228;
              v220 = v229;
              result = sub_1D99AE104(&v219);
              v69 = v192;
              if (result == 1)
              {
                v89 = v186;
                continue;
              }

              v216 = v234;
              v217 = v235;
              v218[0] = v236[0];
              *(v218 + 13) = *(v236 + 13);
              v212 = v230;
              v213 = v231;
              v214 = v232;
              v215 = v233;
              v210 = v228;
              v211 = v229;
              sub_1D99AE054(&v210, &v201);
              v120 = swift_isUniquelyReferenced_nonNull_native();
              v95 = v185;
              v89 = v186;
              if ((v120 & 1) == 0)
              {
                v187 = sub_1D9AF8974(0, *(v187 + 2) + 1, 1, v187);
              }

              v122 = *(v187 + 2);
              v121 = *(v187 + 3);
              if (v122 >= v121 >> 1)
              {
                v187 = sub_1D9AF8974((v121 > 1), v122 + 1, 1, v187);
              }

              result = sub_1D99A6AE0(&v228, &qword_1ECB510B8);
              v123 = v187;
              *(v187 + 2) = v122 + 1;
              v124 = &v123[160 * v122];
              v125 = v220;
              *(v124 + 2) = v219;
              *(v124 + 3) = v125;
              v126 = v224;
              v128 = v221;
              v127 = v222;
              *(v124 + 6) = v223;
              *(v124 + 7) = v126;
              *(v124 + 4) = v128;
              *(v124 + 5) = v127;
              v130 = v226;
              v129 = v227[0];
              v131 = v225;
              *(v124 + 173) = *(v227 + 13);
              *(v124 + 9) = v130;
              *(v124 + 10) = v129;
              *(v124 + 8) = v131;
              goto LABEL_44;
            }

            v246 = v234;
            v247 = v235;
            v248[0] = v236[0];
            *(v248 + 13) = *(v236 + 13);
            v242 = v230;
            v243 = v231;
            v244 = v232;
            v245 = v233;
            --v104;
            v103 += 40;
            v240 = v228;
            v241 = v229;
            goto LABEL_55;
          }

          break;
        }

        if (v71 == 3)
        {
          if (v107 == 3)
          {
            goto LABEL_76;
          }

          goto LABEL_71;
        }

        if (v71 == 4)
        {
          if (v107 == 4)
          {
            goto LABEL_76;
          }

          goto LABEL_71;
        }

        if (v107 != 5)
        {
          goto LABEL_71;
        }

        goto LABEL_76;
      }

      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v80 = byte_1EDD354C0;
      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_107;
      }

      v81 = [objc_opt_self() mainBundle];
      v82 = [v81 bundleIdentifier];

      if (!v82)
      {
        break;
      }

      v83 = sub_1D9C7DC7C();
      v85 = v84;

      if (v83 == 0xD00000000000002BLL && v177 == v85)
      {
      }

      else
      {
        v87 = sub_1D9C7E7DC();

        if ((v87 & 1) == 0)
        {
          break;
        }
      }

      v88 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v88 = &off_1ECB51BA8;
      }

LABEL_103:
      v149 = *(*v88 + 32);

      v150 = sub_1D9C7DC4C();
      LODWORD(v149) = [v149 BOOLForKey_];

      v74 = v194;
      if (v149)
      {
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
        }

        v151 = __swift_project_value_buffer(v73, qword_1EDD2C990);
        v152 = *v184;
        (*v184)(v191, v151, v73);
        goto LABEL_110;
      }

LABEL_107:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v153 = __swift_project_value_buffer(v73, qword_1EDD354D8);
      v152 = *v184;
      (*v184)(v191, v153, v73);
      if ((v80 & 1) == 0)
      {
LABEL_121:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v164 = __swift_project_value_buffer(v73, qword_1EDD354D8);
        v152(v74, v164, v73);
        v163 = v193;
        (*v193)(v191, v73);
        v69 = v192;
        goto LABEL_124;
      }

LABEL_110:
      v154 = [objc_opt_self() mainBundle];
      v155 = [v154 bundleIdentifier];

      if (v155)
      {
        v156 = sub_1D9C7DC7C();
        v158 = v157;

        if (v156 == 0xD00000000000002BLL && v177 == v158)
        {

LABEL_115:
          v160 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v160 = &off_1ECB51BA8;
          }

          goto LABEL_119;
        }

        v159 = sub_1D9C7E7DC();

        if (v159)
        {
          goto LABEL_115;
        }
      }

      v160 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v160 = &qword_1EDD355A8;
      }

LABEL_119:
      v161 = *(*v160 + 32);

      v162 = sub_1D9C7DC4C();
      LODWORD(v161) = [v161 BOOLForKey_];

      v74 = v194;
      if (!v161)
      {
        goto LABEL_121;
      }

      (*v172)(v194, v191, v73);
      v69 = v192;
      v163 = v193;
LABEL_124:
      v165 = sub_1D9C7D8BC();
      v166 = sub_1D9C7E09C();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&dword_1D9962000, v165, v166, "Skip whole image region", v167, 2u);
        v168 = v167;
        v74 = v194;
        MEMORY[0x1DA7405F0](v168, -1, -1);
      }

      (*v163)(v74, v73);
LABEL_26:
      v76 = v197 + 1;
      v78 = v200;
      sub_1D9AE291C(v200, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v76 == v189)
      {
        goto LABEL_127;
      }
    }

    v88 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v88 = &qword_1EDD355A8;
    }

    goto LABEL_103;
  }

  v196 = MEMORY[0x1E69E7CC0];
LABEL_127:

  sub_1D9AFCCA4();

  sub_1D9AE291C(v198, type metadata accessor for DomainAssignmentSignals);
  return v196;
}

uint64_t sub_1D9AE27E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9AE284C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AE28B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AE291C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9AE297C()
{
  result = qword_1EDD2ED60;
  if (!qword_1EDD2ED60)
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED60);
  }

  return result;
}

unint64_t sub_1D9AE29DC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        v5 = 0x7245656E69676E65;
      }

      else
      {
        v5 = 0x41676E697373696DLL;
      }

LABEL_24:
      v12 = v5;
      if (a2)
      {
        v4 = a2;
      }

      else
      {
        a1 = 0;
        v4 = 0xE000000000000000;
      }

      v6 = a1;
      goto LABEL_28;
    }

    if (a3 != 4)
    {
      v5 = 0x4164696C61766E69;
      goto LABEL_24;
    }
  }

  else
  {
    if (a3 <= 1u)
    {
      v4 = 0xE000000000000000;
      if (a3)
      {
        sub_1D9C7E40C();

        v12 = 0xD000000000000014;
        if (a1)
        {
LABEL_14:
          swift_getErrorValue();
          v6 = sub_1D9C7E85C();
          v4 = v7;
LABEL_28:
          MEMORY[0x1DA73DF90](v6, v4);
          goto LABEL_29;
        }
      }

      else
      {
        sub_1D9C7E40C();

        v12 = 0x616F4C6C65646F6DLL;
        if (a1)
        {
          goto LABEL_14;
        }
      }

      v6 = 0;
      goto LABEL_28;
    }

    if (a3 == 2)
    {
      v5 = 0x4D64696C61766E69;
      goto LABEL_24;
    }
  }

  sub_1D9C7E40C();

  v12 = 0x5264696C61766E69;
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1DA73DF90](v9, v10);
LABEL_29:

  return v12;
}

uint64_t sub_1D9AE2C78()
{
  v1 = sub_1D9AE29DC(*v0, *(v0 + 8), *(v0 + 16));
  MEMORY[0x1DA73DF90](v1);

  return 0x2E726F7272454C4DLL;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9AE2CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9AE2D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9AE2D9C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D9AE2E20()
{
  result = [*(*v0 + 16) pixelBuffer];
  if (!result)
  {
    sub_1D9AE2E94();
    swift_allocError();
    swift_willThrow();
    return 0;
  }

  return result;
}

unint64_t sub_1D9AE2E94()
{
  result = qword_1ECB530C8;
  if (!qword_1ECB530C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530C8);
  }

  return result;
}

unint64_t sub_1D9AE2EFC()
{
  result = qword_1ECB530D0;
  if (!qword_1ECB530D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530D0);
  }

  return result;
}

uint64_t sub_1D9AE2F50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SceneClassificationModelFactory();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *a2 = v4;
}

uint64_t sub_1D9AE2FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = sub_1D9C7DA2C();
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7DA4C();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v37[0] = 0xD000000000000011;
  v37[1] = 0x80000001D9CA9790;
  v37[2] = "Text Lookup Overall";
  v37[3] = 19;
  v38 = 2;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v15 = sub_1D9AFD4B8(v37, 0);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_1D9AE4DC4;
  v16[4] = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D9AE4DCC;
  *(v17 + 24) = v16;
  v28[1] = *(v4 + 80);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1D9AE4C00(a1, v35);
  v19 = swift_allocObject();
  v20 = v35[8];
  *(v19 + 152) = v35[7];
  *(v19 + 168) = v20;
  *(v19 + 184) = v35[9];
  v21 = v35[2];
  *(v19 + 88) = v35[3];
  *(v19 + 104) = v35[4];
  v22 = v35[6];
  *(v19 + 120) = v35[5];
  *(v19 + 136) = v22;
  v23 = v35[1];
  *(v19 + 40) = v35[0];
  *(v19 + 56) = v23;
  *(v19 + 16) = sub_1D9AE4DD8;
  *(v19 + 24) = v17;
  *(v19 + 32) = v18;
  v24 = v36;
  *(v19 + 72) = v21;
  *(v19 + 200) = v24;
  *(v19 + 208) = v13;
  v34[4] = sub_1D9AE4DE4;
  v34[5] = v19;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_1D9A0A1E0;
  v34[3] = &block_descriptor_30;
  v25 = _Block_copy(v34);

  v28[0] = v13;
  sub_1D9C7DA3C();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D9AE54AC(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v26 = v29;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v12, v9, v25);
  _Block_release(v25);

  (*(v32 + 8))(v9, v26);
  (*(v30 + 8))(v12, v31);

  return v28[0];
}

void sub_1D9AE343C(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (VIIsSettingsEnabledForLookup())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1D9AE4C00(a4, v27);
      v14 = swift_allocObject();
      v15 = v27[6];
      *(v14 + 136) = v27[7];
      v16 = v27[9];
      *(v14 + 152) = v27[8];
      *(v14 + 168) = v16;
      v17 = v27[2];
      *(v14 + 72) = v27[3];
      v18 = v27[5];
      *(v14 + 88) = v27[4];
      *(v14 + 104) = v18;
      *(v14 + 120) = v15;
      v19 = v27[1];
      *(v14 + 24) = v27[0];
      *(v14 + 40) = v19;
      *(v14 + 16) = a3;
      v20 = v28;
      *(v14 + 56) = v17;
      *(v14 + 184) = v20;
      *(v14 + 192) = a5;
      *(v14 + 200) = a1;
      *(v14 + 208) = a2;

      v21 = a5;

      sub_1D9B1FFD0(sub_1D9AE4DF8, v14);
    }
  }

  else
  {
    static Logger.argos.getter(v13);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E09C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9962000, v22, v23, "Text lookup disabled by settings", v24, 2u);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    sub_1D9AE4C8C();
    v25 = swift_allocError();
    *v26 = 1;
    a1(v25, 1);
  }
}

void sub_1D9AE36DC(char a1, uint64_t a2, void *a3, char *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D9AE4184(a3, a4, a5, a6);
    }
  }

  else
  {
    sub_1D9AE4C8C();
    v10 = swift_allocError();
    *v11 = 1;
    a5(v10, 1);
  }
}

uint64_t sub_1D9AE37CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = a2;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v61[-v7];
  v70 = type metadata accessor for SceneClassificationModelFactory.Input();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D9C7B93C();
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_1D9C7D8DC();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D9C7DA7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v3[10];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9C7DA9C();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (a1[12] != 1)
    {
      v21 = a1[17];
      if (v21)
      {
        v22 = a1[18];
        v23 = v73;
        *v73 = v21;
        v23[1] = v22;
      }
    }

    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_1D9C7D0BC();
    sub_1D9AE4CE0((a1 + 7), v74);
    v24 = v75;
    if (v75)
    {
      v25 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      sub_1D9B7DE80(v24, v25, &v77);
      v26 = v74;
      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      if (*(&v78 + 1))
      {
        v64 = 0;
        sub_1D9979B9C(&v77, v80);
        v27 = v69;
        static Logger.argos.getter(v69);
        v28 = v68;
        (*(v68 + 16))(v11, v67, v9);
        v29 = sub_1D9C7D8BC();
        v30 = sub_1D9C7E09C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v63 = v31;
          v67 = swift_slowAlloc();
          *&v77 = v67;
          *v31 = 136315138;
          sub_1D9AE54AC(&qword_1ECB53100, MEMORY[0x1E69695A8]);
          v62 = v30;
          v32 = v29;
          v33 = sub_1D9C7E7AC();
          v35 = v34;
          (*(v28 + 8))(v11, v9);
          v36 = sub_1D9A0E224(v33, v35, &v77);

          v37 = v63;
          *(v63 + 1) = v36;
          v38 = v37;
          _os_log_impl(&dword_1D9962000, v32, v62, "Start scene classification for lookup: %s", v37, 0xCu);
          v39 = v67;
          __swift_destroy_boxed_opaque_existential_0Tm(v67);
          MEMORY[0x1DA7405F0](v39, -1, -1);
          MEMORY[0x1DA7405F0](v38, -1, -1);
        }

        else
        {

          (*(v28 + 8))(v11, v9);
        }

        (*(v65 + 8))(v27, v66);
        v41 = a1[20];
        v42 = v71;
        if (v41 && [v41 preferredMetalDevice])
        {
          swift_getObjectType();
          sub_1D9BDBC58(v42);
          swift_unknownObjectRelease();
        }

        else
        {
          v43 = sub_1D9C7D91C();
          (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        }

        v44 = v72;
        *v72 = 0;
        v44[1] = 0;
        __asm { FMOV            V0.2D, #1.0 }

        *(v44 + 1) = _Q0;
        sub_1D99BAFC8(v42, v44 + *(v70 + 20));
        v50 = swift_allocObject();
        sub_1D9AE4C8C();
        v51 = swift_allocError();
        *v52 = 0;
        *(v50 + 16) = v51;
        *(v50 + 24) = 0;
        *(v50 + 32) = 1;
        v53 = v64;
        sub_1D9C19E28();
        if (v53)
        {
          sub_1D9AE4D64(v44, type metadata accessor for SceneClassificationModelFactory.Input);
        }

        else
        {

          sub_1D9A66DFC(v44, sub_1D9AE4D5C, v50, &v77);

          v54 = v80[4];
          __swift_project_boxed_opaque_existential_1(v80, v80[3]);
          v55 = *(&v78 + 1);
          v56 = v79;
          __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
          (*(v56 + 16))(v55, v56);
          (*(v54 + 8))();

          swift_beginAccess();
          v57 = *(v50 + 16);
          if (*(v50 + 32))
          {
            v80[7] = *(v50 + 16);
            v58 = v57;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
            swift_willThrowTypedImpl();
            sub_1D9AE4D64(v72, type metadata accessor for SceneClassificationModelFactory.Input);
            __swift_destroy_boxed_opaque_existential_0Tm(&v77);

            return __swift_destroy_boxed_opaque_existential_0Tm(v80);
          }

          v59 = *(v50 + 24);

          sub_1D9AE4D64(v72, type metadata accessor for SceneClassificationModelFactory.Input);
          v60 = v73;
          *v73 = v57;
          v60[1] = v59;
          __swift_destroy_boxed_opaque_existential_0Tm(&v77);
        }

        v26 = v80;
        return __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }
    }

    else
    {
      sub_1D99A6AE0(v74, &qword_1ECB51B30);
      v77 = 0u;
      v78 = 0u;
      v79 = 0;
    }

    sub_1D99A6AE0(&v77, &qword_1ECB530F8);
    sub_1D9AE4C8C();
    swift_allocError();
    *v40 = 3;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

void sub_1D9AE4080(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 17))
  {
    v5 = *(a1 + 16);
    sub_1D99A182C();
    v6 = swift_allocError();
    *v7 = v3;
    *(v7 + 8) = v4;
    *(v7 + 16) = v5;
    swift_beginAccess();
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    *(a2 + 16) = v6;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    sub_1D99BB04C(v3, v4, v5);
    v11 = v8;
    v12 = v9;
    v13 = v10;
  }

  else
  {
    swift_beginAccess();
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    *(a2 + 16) = v3;
    *(a2 + 24) = v4;
    *(a2 + 32) = 0;

    v11 = v14;
    v12 = v15;
    v13 = v16;
  }

  sub_1D9AE4D50(v11, v12, v13);
}

void sub_1D9AE4184(void *a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v62 = a4;
  v61 = a3;
  v60 = a1;
  v7 = sub_1D9C7DA2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D9C7DA4C();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D9C7D8DC();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7DA7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v5[10];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9C7DA9C();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = *&a2[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
    os_unfair_lock_lock(v20 + 4);
    v21 = a2[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
    os_unfair_lock_unlock(v20 + 4);
    if (v21 == 1)
    {
      sub_1D9AE4C8C();
      v22 = swift_allocError();
      *v23 = 2;
      v61(v22, 1);
    }

    else
    {
      sub_1D9AE37CC(v60, &a2[OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier], v69);
      v24 = *&v69[0];
      v53 = v7;
      aBlock = v69[0];
      sub_1D99E21C0(&aBlock, (v5 + OBJC_IVAR____TtC12VisualLookUp14TextLookupFlow_config), v5[3], v69);
      v50 = *(&v69[0] + 1);
      v51 = *&v69[0];
      static Logger.argos.getter(v12);

      v25 = sub_1D9C7D8BC();
      v26 = sub_1D9C7E09C();

      v27 = os_log_type_enabled(v25, v26);
      v52 = v8;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&aBlock = v29;
        *v28 = 136315138;
        if (v24)
        {
          v30 = *(v24 + 16);
        }

        else
        {
          v30 = 0;
        }

        *&v69[0] = v30;
        BYTE8(v69[0]) = v24 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB530E8);
        v31 = sub_1D9C7DCEC();
        v33 = v32;

        v34 = sub_1D9A0E224(v31, v33, &aBlock);

        *(v28 + 4) = v34;
        _os_log_impl(&dword_1D9962000, v25, v26, "End scene classification for lookup. %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x1DA7405F0](v29, -1, -1);
        MEMORY[0x1DA7405F0](v28, -1, -1);

        (*(v54 + 8))(v12, v55);
      }

      else
      {

        (*(v54 + 8))(v12, v55);
      }

      __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
      v35 = swift_allocObject();
      swift_weakInit();
      sub_1D9AE4C00(v60, v69);
      v36 = swift_allocObject();
      v37 = v69[8];
      *(v36 + 152) = v69[7];
      *(v36 + 168) = v37;
      *(v36 + 184) = v69[9];
      v38 = v69[2];
      *(v36 + 88) = v69[3];
      *(v36 + 104) = v69[4];
      v39 = v69[6];
      *(v36 + 120) = v69[5];
      *(v36 + 136) = v39;
      v40 = v69[1];
      *(v36 + 40) = v69[0];
      *(v36 + 56) = v40;
      v41 = v61;
      *(v36 + 16) = a2;
      *(v36 + 24) = v41;
      *(v36 + 32) = v62;
      v42 = v70;
      *(v36 + 72) = v38;
      v43 = v51;
      *(v36 + 200) = v42;
      *(v36 + 208) = v43;
      *(v36 + 216) = v50;
      *(v36 + 224) = v35;
      v67 = sub_1D9AE4C5C;
      v68 = v36;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v65 = sub_1D9A0A1E0;
      v66 = &block_descriptor_5;
      v44 = _Block_copy(&aBlock);

      v45 = a2;

      v46 = v56;
      sub_1D9C7DA3C();
      v63 = MEMORY[0x1E69E7CC0];
      sub_1D9AE54AC(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
      sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
      v47 = v58;
      v48 = v53;
      sub_1D9C7E34C();
      MEMORY[0x1DA73E300](0, v46, v47, v44);
      _Block_release(v44);

      (*(v52 + 8))(v47, v48);
      (*(v57 + 8))(v46, v59);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9AE49E8()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  sub_1D9AE4D64(v0 + OBJC_IVAR____TtC12VisualLookUp14TextLookupFlow_config, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextLookupFlow()
{
  result = qword_1EDD2BDB0;
  if (!qword_1EDD2BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AE4ADC()
{
  result = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D9AE4BAC()
{
  result = qword_1ECB530E0;
  if (!qword_1ECB530E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530E0);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D9AE4C8C()
{
  result = qword_1ECB530F0;
  if (!qword_1ECB530F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530F0);
  }

  return result;
}

uint64_t sub_1D9AE4CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D9AE4D50(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D9AE4D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D9AE4E0C()
{
  v0 = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v43 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v41 = (v39 - v3);
  v4 = sub_1D9C7D06C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D9C7E10C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[2] = sub_1D9ADC36C();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8098], v8);
  sub_1D9C7DA3C();
  v42[0] = MEMORY[0x1E69E7CC0];
  sub_1D9AE54AC(&qword_1EDD354A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460);
  sub_1D9AE54F4(&qword_1EDD354B0, &unk_1ECB52460);
  sub_1D9C7E34C();
  v12 = sub_1D9C7E13C();
  sub_1D9C7D10C();
  swift_allocObject();
  v13 = sub_1D9C7D0FC();
  v14 = v12;

  sub_1D9C7D0AC();
  v15 = sub_1D9C7D08C();

  sub_1D9C7D0AC();

  v16 = v40;
  sub_1D9C7D09C();

  type metadata accessor for PegasusProxyEnableListener();
  swift_allocObject();
  v40 = sub_1D9B1F858(v14, v15, v16, 5.0);
  LOBYTE(v15) = sub_1D9A75D94();
  type metadata accessor for TrialWrapper();
  swift_initStackObject();
  sub_1D9C04808((v15 & 1) == 0);
  v17 = sub_1D9C04AB0(13, 0, 25200, 0xE200000000000000);
  v18 = v41;
  sub_1D99E1C88(v17, v19, v41);

  v20 = type metadata accessor for TextLookupServerFlow();
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_timeoutSeconds;
  *(v21 + OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_timeoutSeconds) = 10;
  v23 = *MEMORY[0x1E69E7F48];
  v24 = sub_1D9C7DA1C();
  v25 = v21 + v22;
  v26 = v43;
  (*(*(v24 - 8) + 104))(v25, v23, v24);
  v27 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_searchFetches;
  v28 = v14;

  v29 = MEMORY[0x1E69E7CC0];
  *(v21 + v27) = sub_1D9A46E24(MEMORY[0x1E69E7CC0]);
  v30 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_completions;
  *(v21 + v30) = sub_1D9A47100(v29);
  *(v21 + 16) = v13;
  *(v21 + 24) = v28;
  v42[3] = v20;
  v42[4] = &off_1F5530860;
  v42[0] = v21;
  v31 = v18;
  sub_1D99E28D0(v18, v26);
  type metadata accessor for TextLookupFlow();
  v32 = swift_allocObject();
  type metadata accessor for VISceneTaxonomy();
  swift_allocObject();
  v33 = sub_1D9AFD9B0();
  if (v33)
  {
    v34 = v33;
    v32[10] = v28;
    v32[4] = v40;
    sub_1D99A17C8(v42, (v32 + 5));
    v32[3] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53108);
    swift_allocObject();
    v35 = v28;

    v36 = sub_1D9C1B65C(0, sub_1D9AE5548, v34);

    sub_1D9AE4D64(v31, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    v32[2] = v36;
    sub_1D99E3244(v26, v32 + OBJC_IVAR____TtC12VisualLookUp14TextLookupFlow_config);
  }

  else
  {
    sub_1D9AE4C8C();
    swift_allocError();
    *v37 = 4;
    swift_willThrow();

    sub_1D9AE4D64(v26, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);
    sub_1D9AE4D64(v31, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    swift_deallocPartialClassInstance();
  }

  return v32;
}

uint64_t sub_1D9AE54AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9AE54F4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StorefrontDomainAssignmentRule()
{
  result = qword_1EDD317C0;
  if (!qword_1EDD317C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AE55E0()
{
  result = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9AE5664(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v59 = a2;
  v60 = a3;
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D9C7D8DC();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v57 - v17;
  v19 = a1[7];
  v80 = a1[6];
  v81 = v19;
  v82[0] = a1[8];
  *(v82 + 13) = *(a1 + 141);
  v20 = a1[3];
  v76 = a1[2];
  v77 = v20;
  v21 = a1[5];
  v78 = a1[4];
  v79 = v21;
  v22 = a1[1];
  v74 = *a1;
  v75 = v22;
  v23 = *v4;
  v24 = type metadata accessor for DomainAssignmentSignals(0);
  sub_1D99AB100(v60 + *(v24 + 24), v18, &qword_1ECB51640);
  v25 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  if ((*(*(v25 - 8) + 48))(v18, 1, v25) == 1)
  {
    sub_1D9AE5C0C(v18);
    v26 = v61;
LABEL_7:
    static Logger.argos.getter(v26);
    sub_1D99B1BBC(v59, v9);
    v31 = sub_1D9C7D8BC();
    v32 = sub_1D9C7E09C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64 = v34;
      *v33 = 136315138;
      v35 = v9[1];
      v65 = *v9;
      v66 = v35;
      v36 = NormalizedRect.loggingDescription.getter();
      v38 = v37;
      sub_1D9AE5C74(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      v39 = sub_1D9A0E224(v36, v38, &v64);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_1D9962000, v31, v32, "Reject any domain to region %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1DA7405F0](v34, -1, -1);
      MEMORY[0x1DA7405F0](v33, -1, -1);
    }

    else
    {

      sub_1D9AE5C74(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    (*(v62 + 8))(v26, v63);
    sub_1D99D3B54(&v65);
    v40 = v72;
    a4[6] = v71;
    a4[7] = v40;
    a4[8] = v73[0];
    *(a4 + 141) = *(v73 + 13);
    v41 = v68;
    a4[2] = v67;
    a4[3] = v41;
    v42 = v70;
    a4[4] = v69;
    a4[5] = v42;
    v43 = v66;
    *a4 = v65;
    a4[1] = v43;
    return;
  }

  v27 = *&v18[*(v25 + 24)];
  v28 = v27;
  sub_1D9AE5C74(v18, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
  v26 = v61;
  if (!v27)
  {
    goto LABEL_7;
  }

  v29 = v23;
  [v28 horizontalAccuracy];
  if (v23 >= 0.0 && v30 >= v29)
  {

    goto LABEL_7;
  }

  v44 = v57;
  static Logger.argos.getter(v57);
  sub_1D9A3E0E0(v58);
  v45 = v63;
  v46 = *(v62 + 8);
  v46(v44, v63);
  v47 = v28;
  v48 = sub_1D9C7D8BC();
  v49 = sub_1D9C7E09C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    [v47 horizontalAccuracy];
    *(v50 + 4) = v51;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v29;
    _os_log_impl(&dword_1D9962000, v48, v49, "Location horizontalAccuracy %f within the errorThreshold %f", v50, 0x16u);
    MEMORY[0x1DA7405F0](v50, -1, -1);
    v52 = v47;
  }

  else
  {
    v52 = v48;
    v48 = v47;
  }

  v46(v58, v45);
  v53 = v81;
  a4[6] = v80;
  a4[7] = v53;
  a4[8] = v82[0];
  *(a4 + 141) = *(v82 + 13);
  v54 = v77;
  a4[2] = v76;
  a4[3] = v54;
  v55 = v79;
  a4[4] = v78;
  a4[5] = v55;
  v56 = v75;
  *a4 = v74;
  a4[1] = v56;
  sub_1D99AB100(&v74, &v65, &qword_1ECB510B8);
}

uint64_t sub_1D9AE5C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9AE5C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9AE5CD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E9214(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D9AE5E2C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D9AE5E2C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D99E8FDC(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D9AE6388((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v13 >= v14;
        ++v12;
        v13 = v14;
        if ((((v11 < v10) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1D99E8FF0((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1D9AE6388((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*v27 >= v25)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D9AE6388(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D9AE657C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53128);
    v4 = sub_1D9C7DF5C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_1D9AE6640(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v5 = sub_1D9C7DF5C();
    v6 = v5;
    *(v5 + 16) = a2;
    *(v5 + 32) = v4;
    v7 = a2 - 1;
    if (v7)
    {
      v8 = (v5 + 40);
      do
      {
        *v8++ = v4;

        --v7;
      }

      while (v7);
    }

    return v6;
  }

  return result;
}

double sub_1D9AE66D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 0.0;
  if (v2)
  {
    v4 = *(a2 + 16);
    v5 = a1 + 40;
    do
    {
      v6 = sub_1D9C7DCFC();
      if (*(v4 + 16))
      {
        v8 = sub_1D99ED894(v6, v7);
        v10 = v9;

        if ((v10 & 1) != 0 && (*(*(v4 + 56) + 8 * v8) & 0x8000000000000000) == 0)
        {
          return 1.0;
        }
      }

      else
      {
      }

      v5 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1D9AE6774(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_1D9C7E3FC();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_1D9C7E47C();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        sub_1D9C7DD4C();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

void *sub_1D9AE6944(uint64_t a1, unint64_t a2, CGFloat *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v126 = a6;
  v11 = sub_1D9C7B5EC();
  v12 = *(v11 - 8);
  v148 = v11;
  v149 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  v17 = a3[1];
  v141 = *a3;
  v18 = a3[3];
  v128 = a3[2];
  v129 = v17;
  v127 = v18;
  sub_1D9C7B5BC();
  v151[2] = v16;

  v19 = 0;
  sub_1D9AE6774(sub_1D9AE9688, v151, a1, a2);

  v20 = sub_1D9C7DCFC();
  v22 = v21;
  v23 = sub_1D9C7DD7C();
  if (v23)
  {
    v147 = a5;
    v24 = v23;
    v25 = sub_1D9B08F94(v23, 0);

    v26 = sub_1D9B08ECC(v152, v25 + 4, v24, v20, v22);

    if (v26 != v24)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v27 = v25;
    a5 = v147;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v149 + 8);
  v149 += 8;
  v147 = v28;
  v28(v16, v148);
  if (!*(v27 + 16))
  {
LABEL_53:

    return MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1D99E04A4(v27);
  v30 = v141;
  v153.origin.x = v141;
  v32 = v128;
  v31 = v129;
  v153.origin.y = v129;
  v153.size.width = v128;
  v33 = v127;
  v153.size.height = v127;
  Width = CGRectGetWidth(v153);
  v154.origin.x = v30;
  v154.origin.y = v31;
  v154.size.width = v32;
  v154.size.height = v33;
  Height = CGRectGetHeight(v154);
  v146 = *(a4 + 16);
  if (v146 >= a5)
  {
    v36 = a5;
  }

  else
  {
    v36 = v146;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    if (v36)
    {
      v142 = v27;
      v37 = 0;
      v145 = a4 + 32;
      v125 = v141 + Width * 0.5;
      v124 = 0x80000001D9CA9830;
      v123 = v129 + Height * 0.5;
      v121 = 0x80000001D9CA2A20;
      v122 = 0x80000001D9CA9850;
      v119 = 0x80000001D9CA9890;
      v120 = 0x80000001D9CA9870;
      v117 = 0x80000001D9CA2A60;
      v118 = 0x80000001D9CA2A40;
      v115 = 0x80000001D9CA2AA0;
      v116 = 0x80000001D9CA2A80;
      v113 = 0x80000001D9CA2AE0;
      v114 = 0x80000001D9CA2AC0;
      v111 = 0x80000001D9CA2B20;
      v112 = 0x80000001D9CA2B00;
      v109 = 0x80000001D9CA2B60;
      v110 = 0x80000001D9CA2B40;
      v38 = 0.5;
      v108 = xmmword_1D9C941B0;
      v143 = MEMORY[0x1E69E7CC0];
      v144 = v36;
      v140 = v29;
      while (v37 != v146)
      {
        v40 = v145 + 56 * v37;
        v41 = *v40;
        v42 = *(v40 + 8);
        v43 = *(v40 + 24);
        v44 = *(v40 + 32);
        v45 = *(v40 + 40);
        v46 = *(v40 + 48);
        swift_bridgeObjectRetain_n();
        v47 = v150;
        v48 = sub_1D9C7B5BC();
        MEMORY[0x1EEE9AC00](v48);
        *(&v108 - 2) = v47;

        sub_1D9AE6774(sub_1D9AE96A8, (&v108 - 2), v41, v42);

        v49 = sub_1D9C7DCFC();
        v51 = v50;
        v52 = sub_1D9C7DD7C();
        if (v52)
        {
          v53 = v52;
          if (v52 < 1)
          {
            v54 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51668);
            v54 = swift_allocObject();
            v55 = _swift_stdlib_malloc_size(v54);
            v56 = v55 - 32;
            if (v55 < 32)
            {
              v56 = v55 - 17;
            }

            v54[2] = v53;
            v54[3] = 2 * (v56 >> 4);
          }

          v58 = HIBYTE(v51) & 0xF;
          v152[0] = v49;
          v152[1] = v51;
          if ((v51 & 0x2000000000000000) == 0)
          {
            v58 = v49 & 0xFFFFFFFFFFFFLL;
          }

          v152[2] = 0;
          v152[3] = v58;

          if (v53 < 1)
          {
LABEL_55:
            __break(1u);
            break;
          }

          v57 = v19;
          v59 = sub_1D9C7DDDC();
          if (!v60)
          {
            goto LABEL_59;
          }

          v61 = 4;
          while (1)
          {
            v62 = &v54[v61];
            *v62 = v59;
            v62[1] = v60;
            if (!--v53)
            {
              break;
            }

            v61 += 2;
            v59 = sub_1D9C7DDDC();
            if (!v60)
            {
              goto LABEL_59;
            }
          }
        }

        else
        {
          v57 = v19;
          v54 = MEMORY[0x1E69E7CC0];
        }

        v147(v150, v148);
        v63 = v54[2];
        if (!v63)
        {
          goto LABEL_12;
        }

        v64 = 0;
        v65 = v54 + 5;
        do
        {

          v66 = sub_1D9C7DBEC();

          if ((v66 & 1) != 0 && __OFADD__(v64++, 1))
          {
            __break(1u);
            goto LABEL_55;
          }

          v65 += 2;
          --v63;
        }

        while (v63);
        v68 = v64 / v54[2];
        if (vabdd_f64(v29, v68) <= v38)
        {
          v136 = sub_1D99E0BAC(v54, v142, v126);
          v137 = v69;
          v155.origin.x = v43;
          v155.origin.y = v44;
          v155.size.width = v45;
          v155.size.height = v46;
          v70 = v45;
          v71 = CGRectGetWidth(v155);

          v72 = v43 + v71 * v38;
          v156.origin.x = v43;
          v156.origin.y = v44;
          v156.size.width = v70;
          v156.size.height = v46;
          v73 = v44 + CGRectGetHeight(v156) * v38;
          v157.origin.x = v43;
          v157.origin.y = v44;
          v157.size.width = v70;
          v157.size.height = v46;
          v74 = CGRectGetWidth(v157);
          v158.size.height = v46;
          v75 = v74;
          v158.origin.x = v43;
          v158.origin.y = v44;
          v138 = v158.size.height;
          v139 = v70;
          v158.size.width = v70;
          v76 = CGRectGetHeight(v158);
          v77 = v141;
          if (v141 <= v72)
          {
            v159.origin.x = v141;
            v159.size.width = v128;
            v159.origin.y = v129;
            v159.size.height = v127;
            v78 = v72 <= v77 + CGRectGetWidth(v159);
          }

          else
          {
            v78 = 0;
          }

          v79 = 0.0;
          if (v77 <= v73)
          {
            v160.origin.x = v141;
            v160.size.width = v128;
            v80 = v129;
            v160.origin.y = v129;
            v160.size.height = v127;
            v81 = v73 > v80 + CGRectGetHeight(v160);
            v79 = 0.0;
            if (!v81)
            {
              v79 = 1.0;
            }
          }

          v82 = v75 * v76;
          v83 = v79;
          v130 = sqrt((v72 + -0.5) * (v72 + -0.5) + (v73 + -0.5) * (v73 + -0.5));
          v131 = fabs(v72 + -0.5);
          v132 = vabdd_f64(v72, v125);
          v133 = fabs(v73 + -0.5);
          v134 = sqrt((v72 - v125) * (v72 - v125) + (v73 - v123) * (v73 - v123));
          v135 = vabdd_f64(v73, v123);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53110);
          inited = swift_initStackObject();
          *(inited + 32) = 0xD000000000000012;
          *(inited + 16) = v108;
          *(inited + 40) = v124;
          *(inited + 48) = *(v142 + 16);
          v85 = v122;
          *(inited + 56) = 0xD00000000000001CLL;
          *(inited + 64) = v85;
          *(inited + 72) = v140;
          strcpy((inited + 80), "pattern_length");
          *(inited + 95) = -18;
          v86 = v54[2];

          *(inited + 96) = v86;
          v87 = v121;
          *(inited + 104) = 0xD000000000000018;
          *(inited + 112) = v87;
          *(inited + 120) = v68;
          strcpy((inited + 128), "pattern_size_x");
          *(inited + 143) = -18;
          v161.origin.x = v43;
          v161.origin.y = v44;
          v89 = v138;
          v88 = v139;
          v161.size.width = v139;
          v161.size.height = v138;
          *(inited + 144) = CGRectGetWidth(v161);
          strcpy((inited + 152), "pattern_size_y");
          *(inited + 167) = -18;
          v162.origin.x = v43;
          v162.origin.y = v44;
          v162.size.width = v88;
          v162.size.height = v89;
          *(inited + 168) = CGRectGetHeight(v162);
          strcpy((inited + 176), "pattern_area");
          *(inited + 189) = 0;
          *(inited + 190) = -5120;
          *(inited + 192) = v82;
          v90 = v120;
          *(inited + 200) = 0xD000000000000010;
          *(inited + 208) = v90;
          *(inited + 216) = v72;
          v92 = v118;
          v91 = v119;
          *(inited + 224) = 0xD000000000000010;
          *(inited + 232) = v91;
          *(inited + 240) = v73;
          *(inited + 248) = 0xD000000000000019;
          *(inited + 256) = v92;
          *(inited + 264) = v131;
          v93 = v116;
          v94 = v117;
          *(inited + 272) = 0xD000000000000019;
          *(inited + 280) = v94;
          *(inited + 288) = v133;
          *(inited + 296) = 0xD000000000000017;
          *(inited + 304) = v93;
          *(inited + 312) = v130;
          v95 = v114;
          v96 = v115;
          *(inited + 320) = 0xD000000000000017;
          *(inited + 328) = v96;
          *(inited + 336) = v132;
          *(inited + 344) = 0xD000000000000017;
          *(inited + 352) = v95;
          v97 = v134;
          *(inited + 360) = v135;
          v98 = v112;
          v99 = v113;
          *(inited + 368) = 0xD000000000000015;
          *(inited + 376) = v99;
          *(inited + 384) = v97;
          *(inited + 392) = 0xD00000000000001CLL;
          *(inited + 400) = v98;
          v100 = 0.0;
          if (v78)
          {
            v100 = 1.0;
          }

          *(inited + 408) = v100;
          v101 = v111;
          *(inited + 416) = 0xD00000000000001CLL;
          *(inited + 424) = v101;
          *(inited + 432) = v83;
          v102 = v110;
          *(inited + 440) = 0xD00000000000001BLL;
          *(inited + 448) = v102;
          *(inited + 456) = v136;
          *(inited + 464) = 0xD000000000000019;
          *(inited + 472) = v109;
          *(inited + 480) = v137;
          v103 = sub_1D9A44FB4(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53118);
          swift_arrayDestroy();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v104 = v143;
            v39 = v144;
          }

          else
          {
            v104 = sub_1D9AF9B9C(0, v143[2] + 1, 1, v143);
            v39 = v144;
          }

          v38 = 0.5;
          v106 = v104[2];
          v105 = v104[3];
          v29 = v140;
          if (v106 >= v105 >> 1)
          {
            v104 = sub_1D9AF9B9C((v105 > 1), v106 + 1, 1, v104);
          }

          v104[2] = v106 + 1;
          v143 = v104;
          v104[v106 + 4] = v103;
        }

        else
        {
LABEL_12:

          v39 = v144;
        }

        ++v37;
        v19 = v57;
        if (v37 == v39)
        {

          return v143;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_58:
  __break(1u);
LABEL_59:

  __break(1u);
  return result;
}

uint64_t sub_1D9AE73D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v7;
  v10 = *(a1 + 16);
  if (v10 && (v11 = *(a2 + 16)) != 0)
  {
    v42 = v8;
    v43 = v5;
    v44 = v4;
    v12 = sub_1D9C7DF5C();
    *(v12 + 16) = v11;
    bzero((v12 + 32), 4 * v11);
    v13 = sub_1D9AE6640(v12, v10, &qword_1ECB517C0);

    v14 = 0;
    v15 = a1 + 32;
    v16 = (a2 + 40);
    v39 = (a2 + 40);
    v40 = v10;
    while (2)
    {
      v17 = 0;
      v41 = v14 + 1;
      v18 = v16;
      do
      {
        v19 = *(v15 + 8 * v14);
        if (!*(v19 + 16))
        {
          goto LABEL_21;
        }

        v20 = *(v18 - 1);
        v21 = *v18;

        v22 = sub_1D99ED894(v20, v21);
        v24 = v23;

        if ((v24 & 1) == 0)
        {

LABEL_21:

          v32 = v42;
          static Logger.argos.getter(v42);
          v33 = sub_1D9C7D8BC();
          v34 = sub_1D9C7E0AC();
          v35 = os_log_type_enabled(v33, v34);
          v37 = v43;
          v36 = v44;
          if (v35)
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_1D9962000, v33, v34, "A feature name is not in the features.", v38, 2u);
            MEMORY[0x1DA7405F0](v38, -1, -1);
          }

          (*(v37 + 8))(v32, v36);
          return 0;
        }

        v25 = *(*(v19 + 56) + 8 * v22);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A760(v13);
          v13 = result;
        }

        if (v14 >= v13[2])
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v27 = v13[v14 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v13[v14 + 4] = v27;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A6AC(v27);
          v27 = result;
          v13[v14 + 4] = result;
        }

        if (v17 >= *(v27 + 16))
        {
          goto LABEL_27;
        }

        v28 = v25;
        *(v27 + 4 * v17 + 32) = v28;
        v18 += 2;
        ++v17;
      }

      while (v11 != v17);
      v14 = v41;
      v16 = v39;
      if (v41 != v40)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    static Logger.argos.getter(&v39 - v7);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "Input to batchPredictWithLinearModelHelper is empty.", v31, 2u);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  return v13;
}

unint64_t sub_1D9AE777C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v75 = a1;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
  if (a5 < 0)
  {
    goto LABEL_68;
  }

  v15 = v14;
  v72 = a4;
  v73 = a3;
  v71[1] = v13;
  v71[2] = v11;
  v71[3] = v10;
  if (!a5)
  {
LABEL_17:
    v33 = sub_1D9AE73D0(v72, v73);
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + 16);
      v72 = a5;
      v73 = v35;
      if (v35)
      {
        v36 = 0;
        v13 = 0;
        v37 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v36 >= *(v34 + 16))
          {
            goto LABEL_62;
          }

          v38 = *(v34 + 8 * v36 + 32);
          v39 = *(v74 + 24);

          sub_1D9AE80E8(v39, v38, type metadata accessor for OCRTitleModelInput);
          v41 = v40;

          v42 = *(v41 + 16);
          v43 = *(v37 + 2);
          v44 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            goto LABEL_63;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v44 <= *(v37 + 3) >> 1)
          {
            if (!*(v41 + 16))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v43 <= v44)
            {
              v46 = v43 + v42;
            }

            else
            {
              v46 = v43;
            }

            v37 = sub_1D9AF9A74(isUniquelyReferenced_nonNull_native, v46, 1, v37);
            if (!*(v41 + 16))
            {
LABEL_20:

              if (v42)
              {
                goto LABEL_64;
              }

              goto LABEL_21;
            }
          }

          v47 = *(v37 + 2);
          if ((*(v37 + 3) >> 1) - v47 < v42)
          {
            goto LABEL_66;
          }

          memcpy(&v37[8 * v47 + 32], (v41 + 32), 8 * v42);

          if (v42)
          {
            v48 = *(v37 + 2);
            v31 = __OFADD__(v48, v42);
            v49 = v48 + v42;
            if (v31)
            {
              goto LABEL_67;
            }

            *(v37 + 2) = v49;
          }

LABEL_21:
          if (v73 == ++v36)
          {
            goto LABEL_38;
          }
        }
      }

      v37 = MEMORY[0x1E69E7CC0];
LABEL_38:

      v77 = v37;

      sub_1D9AE5CD4(&v77);
      v13 = v77;

      v50 = *(v13 + 2);

      if (v50 >= v72)
      {
        v51 = v72;
      }

      else
      {
        v51 = v50;
      }

      if (v51)
      {
        v52 = 0;
        while (1)
        {
          v77 = v75;
          v78 = a2;

          MEMORY[0x1DA73DF90](95, 0xE100000000000000);
          v76 = v52;
          v54 = sub_1D9C7E7AC();
          MEMORY[0x1DA73DF90](v54);

          if (v52 >= *(v13 + 2))
          {
            goto LABEL_60;
          }

          v56 = v77;
          v55 = v78;
          v57 = *&v13[8 * v52 + 32];
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v77 = v15;
          v59 = sub_1D99ED894(v56, v55);
          v61 = *(v15 + 2);
          v62 = (v60 & 1) == 0;
          v31 = __OFADD__(v61, v62);
          v63 = v61 + v62;
          if (v31)
          {
            goto LABEL_61;
          }

          v64 = v60;
          if (*(v15 + 3) < v63)
          {
            break;
          }

          if (v58)
          {
            goto LABEL_51;
          }

          v69 = v59;
          sub_1D9C14690();
          v59 = v69;
          if (v64)
          {
LABEL_43:
            v53 = v59;

            v15 = v77;
            *(*(v77 + 7) + 8 * v53) = v57;
            goto LABEL_44;
          }

LABEL_52:
          v15 = v77;
          *&v77[8 * (v59 >> 6) + 64] |= 1 << v59;
          v66 = (*(v15 + 6) + 16 * v59);
          *v66 = v56;
          v66[1] = v55;
          *(*(v15 + 7) + 8 * v59) = v57;
          v67 = *(v15 + 2);
          v31 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (v31)
          {
            goto LABEL_65;
          }

          *(v15 + 2) = v68;
LABEL_44:
          if (v51 == ++v52)
          {
            goto LABEL_56;
          }
        }

        sub_1D9C0A1E4(v63, v58);
        v59 = sub_1D99ED894(v56, v55);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_69;
        }

LABEL_51:
        if (v64)
        {
          goto LABEL_43;
        }

        goto LABEL_52;
      }

LABEL_56:
    }

    else
    {

      return sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
    }

    return v15;
  }

  v16 = 0;
  while (1)
  {
    v17 = a5;
    v77 = v75;
    v78 = a2;

    MEMORY[0x1DA73DF90](95, 0xE100000000000000);
    v76 = v16;
    v18 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v18);

    v19 = v77;
    v13 = v78;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v15;
    v22 = sub_1D99ED894(v19, v13);
    v23 = *(v15 + 2);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (*(v15 + 3) >= v25)
    {
      if (v20)
      {
        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D9C14690();
        if (v26)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D9C0A1E4(v25, v20);
      v27 = sub_1D99ED894(v19, v13);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_69;
      }

      v22 = v27;
      if (v26)
      {
LABEL_4:

        v15 = v77;
        *(*(v77 + 7) + 8 * v22) = 0;
        goto LABEL_5;
      }
    }

    v15 = v77;
    *&v77[8 * (v22 >> 6) + 64] |= 1 << v22;
    v29 = (*(v15 + 6) + 16 * v22);
    *v29 = v19;
    v29[1] = v13;
    *(*(v15 + 7) + 8 * v22) = 0;
    v30 = *(v15 + 2);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_59;
    }

    *(v15 + 2) = v32;
LABEL_5:
    ++v16;
    a5 = v17;
    if (v17 == v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:

  sub_1D9C7E84C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D9AE7E40()
{
  v0 = sub_1D9C7BE7C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7BF4C();
  v4 = sub_1D9C7BE2C();
  v20 = v5;
  v21 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1D9C7BF4C();
  v19 = sub_1D9C7BE1C();
  v8 = v7;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v22 = sub_1D9C7BE5C();
  v10 = v9;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v23 = sub_1D9C7BE6C();
  v12 = v11;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v24 = sub_1D9C7BE3C();
  v14 = v13;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v25 = sub_1D9C7BCCC();
  v16 = v15;
  v6(v3, v0);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D9C7E40C();

  v26 = v21;
  v27 = v20;
  MEMORY[0x1DA73DF90](32, 0xE100000000000000);
  MEMORY[0x1DA73DF90](v19, v8);

  MEMORY[0x1DA73DF90](8236, 0xE200000000000000);
  MEMORY[0x1DA73DF90](v22, v10);

  MEMORY[0x1DA73DF90](32, 0xE100000000000000);
  MEMORY[0x1DA73DF90](v23, v12);

  MEMORY[0x1DA73DF90](8236, 0xE200000000000000);
  MEMORY[0x1DA73DF90](v24, v14);

  MEMORY[0x1DA73DF90](32, 0xE100000000000000);
  MEMORY[0x1DA73DF90](v25, v16);

  return v26;
}

void sub_1D9AE80E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D9B438D4(a2, 0);
  if (v3)
  {
    return;
  }

  v7 = v6;
  a3(0);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E695FF08]);
  v10 = v7;
  v11 = [v9 init];
  v12 = *(a1 + 16);
  v32[0] = 0;
  v13 = [v12 predictionFromFeatures:v8 options:v11 error:v32];
  if (!v13)
  {
    v31 = v32[0];
    sub_1D9C7B70C();

    swift_willThrow();

    return;
  }

  v14 = v13;
  v15 = v32[0];

  v16 = sub_1D9C7DC4C();
  v17 = [v14 featureValueForName_];

  if (!v17)
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = [v17 multiArrayValue];

  if (!v18)
  {
LABEL_26:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  v19 = [v18 numberArray];

  sub_1D99CC024();
  v20 = sub_1D9C7DF2C();

  if (v20 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA73E610](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v24 doubleValue];
      v28 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D9AF9A74(0, *(v23 + 2) + 1, 1, v23);
      }

      v30 = *(v23 + 2);
      v29 = *(v23 + 3);
      if (v30 >= v29 >> 1)
      {
        v23 = sub_1D9AF9A74((v29 > 1), v30 + 1, 1, v23);
      }

      *(v23 + 2) = v30 + 1;
      *&v23[8 * v30 + 32] = v28;
      ++v22;
      if (v26 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
}

unint64_t sub_1D9AE8428(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v75 = a1;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
  if (a5 < 0)
  {
    goto LABEL_68;
  }

  v15 = v14;
  v72 = a4;
  v73 = a3;
  v71[1] = v13;
  v71[2] = v11;
  v71[3] = v10;
  if (!a5)
  {
LABEL_17:
    v33 = sub_1D9AE73D0(v72, v73);
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + 16);
      v72 = a5;
      v73 = v35;
      if (v35)
      {
        v36 = 0;
        v13 = 0;
        v37 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v36 >= *(v34 + 16))
          {
            goto LABEL_62;
          }

          v38 = *(v34 + 8 * v36 + 32);
          v39 = *(v74 + 32);

          sub_1D9AE80E8(v39, v38, type metadata accessor for OCRAddressModelInput);
          v41 = v40;

          v42 = *(v41 + 16);
          v43 = *(v37 + 2);
          v44 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            goto LABEL_63;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v44 <= *(v37 + 3) >> 1)
          {
            if (!*(v41 + 16))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v43 <= v44)
            {
              v46 = v43 + v42;
            }

            else
            {
              v46 = v43;
            }

            v37 = sub_1D9AF9A74(isUniquelyReferenced_nonNull_native, v46, 1, v37);
            if (!*(v41 + 16))
            {
LABEL_20:

              if (v42)
              {
                goto LABEL_64;
              }

              goto LABEL_21;
            }
          }

          v47 = *(v37 + 2);
          if ((*(v37 + 3) >> 1) - v47 < v42)
          {
            goto LABEL_66;
          }

          memcpy(&v37[8 * v47 + 32], (v41 + 32), 8 * v42);

          if (v42)
          {
            v48 = *(v37 + 2);
            v31 = __OFADD__(v48, v42);
            v49 = v48 + v42;
            if (v31)
            {
              goto LABEL_67;
            }

            *(v37 + 2) = v49;
          }

LABEL_21:
          if (v73 == ++v36)
          {
            goto LABEL_38;
          }
        }
      }

      v37 = MEMORY[0x1E69E7CC0];
LABEL_38:

      v77 = v37;

      sub_1D9AE5CD4(&v77);
      v13 = v77;

      v50 = *(v13 + 2);

      if (v50 >= v72)
      {
        v51 = v72;
      }

      else
      {
        v51 = v50;
      }

      if (v51)
      {
        v52 = 0;
        while (1)
        {
          v77 = v75;
          v78 = a2;

          MEMORY[0x1DA73DF90](95, 0xE100000000000000);
          v76 = v52;
          v54 = sub_1D9C7E7AC();
          MEMORY[0x1DA73DF90](v54);

          if (v52 >= *(v13 + 2))
          {
            goto LABEL_60;
          }

          v56 = v77;
          v55 = v78;
          v57 = *&v13[8 * v52 + 32];
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v77 = v15;
          v59 = sub_1D99ED894(v56, v55);
          v61 = *(v15 + 2);
          v62 = (v60 & 1) == 0;
          v31 = __OFADD__(v61, v62);
          v63 = v61 + v62;
          if (v31)
          {
            goto LABEL_61;
          }

          v64 = v60;
          if (*(v15 + 3) < v63)
          {
            break;
          }

          if (v58)
          {
            goto LABEL_51;
          }

          v69 = v59;
          sub_1D9C14690();
          v59 = v69;
          if (v64)
          {
LABEL_43:
            v53 = v59;

            v15 = v77;
            *(*(v77 + 7) + 8 * v53) = v57;
            goto LABEL_44;
          }

LABEL_52:
          v15 = v77;
          *&v77[8 * (v59 >> 6) + 64] |= 1 << v59;
          v66 = (*(v15 + 6) + 16 * v59);
          *v66 = v56;
          v66[1] = v55;
          *(*(v15 + 7) + 8 * v59) = v57;
          v67 = *(v15 + 2);
          v31 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (v31)
          {
            goto LABEL_65;
          }

          *(v15 + 2) = v68;
LABEL_44:
          if (v51 == ++v52)
          {
            goto LABEL_56;
          }
        }

        sub_1D9C0A1E4(v63, v58);
        v59 = sub_1D99ED894(v56, v55);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_69;
        }

LABEL_51:
        if (v64)
        {
          goto LABEL_43;
        }

        goto LABEL_52;
      }

LABEL_56:
    }

    else
    {

      return sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
    }

    return v15;
  }

  v16 = 0;
  while (1)
  {
    v17 = a5;
    v77 = v75;
    v78 = a2;

    MEMORY[0x1DA73DF90](95, 0xE100000000000000);
    v76 = v16;
    v18 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v18);

    v19 = v77;
    v13 = v78;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v15;
    v22 = sub_1D99ED894(v19, v13);
    v23 = *(v15 + 2);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (*(v15 + 3) >= v25)
    {
      if (v20)
      {
        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D9C14690();
        if (v26)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D9C0A1E4(v25, v20);
      v27 = sub_1D99ED894(v19, v13);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_69;
      }

      v22 = v27;
      if (v26)
      {
LABEL_4:

        v15 = v77;
        *(*(v77 + 7) + 8 * v22) = 0;
        goto LABEL_5;
      }
    }

    v15 = v77;
    *&v77[8 * (v22 >> 6) + 64] |= 1 << v22;
    v29 = (*(v15 + 6) + 16 * v22);
    *v29 = v19;
    v29[1] = v13;
    *(*(v15 + 7) + 8 * v22) = 0;
    v30 = *(v15 + 2);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_59;
    }

    *(v15 + 2) = v32;
LABEL_5:
    ++v16;
    a5 = v17;
    if (v17 == v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:

  sub_1D9C7E84C();
  __break(1u);

  __break(1u);
  return result;
}

void sub_1D9AE8AEC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v6 = &v1[8 * v4];
      v7 = *(v6 + 4);
      if (v7 == 0.0)
      {
        break;
      }

      if (v7 > 0.0)
      {
        v8 = log(*(v6 + 4));
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_24;
        }

        v5 = v5 + v8;
      }

      if (v2 == ++v4)
      {
        goto LABEL_12;
      }
    }

    v10 = 0.0;
    if (v2 - 1 != v4)
    {
LABEL_12:
      v10 = 0.0;
      if (v7 != 0.0 && v3 != 0)
      {
        v10 = exp(v5 / v3);
      }
    }

    v12 = 32;
    do
    {
      if (*&v1[v12] < 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1D9B1A738(v1);
        }

        *&v1[v12] = v10;
      }

      v12 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

void sub_1D9AE8C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = sub_1D9C7DF5C();
    *(v11 + 16) = v10;
    bzero((v11 + 32), 8 * v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1D9B438D4(a2, 1);
  type metadata accessor for TitleClassificationModelInput();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v15 = *(a4 + 16);
  v40[0] = 0;
  v16 = [v15 predictionFromFeatures:v13 options:v14 error:v40];
  if (!v16)
  {
    v36 = v40[0];
    v37 = sub_1D9C7B70C();

    swift_willThrow();

    return;
  }

  v17 = v16;
  v38 = a5;
  v18 = v40[0];

  v19 = sub_1D9C7DC4C();
  v20 = [v17 featureValueForName_];

  if (!v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = [v20 multiArrayValue];

  if (!v21)
  {
LABEL_29:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  v22 = [v21 numberArray];

  sub_1D99CC024();
  v39 = sub_1D9C7DF2C();

  if (v10)
  {
    v23 = 0;
    v24 = *(a3 + 32);
    v25 = (a1 + 40);
    do
    {
      if (*(v24 + 16) && (v27 = *(v25 - 1), v28 = *v25, , v29 = sub_1D99ED894(v27, v28), v31 = v30, , (v31 & 1) != 0) && (v32 = *(*(v24 + 56) + 8 * v29), (v32 & 0x8000000000000000) == 0))
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1DA73E610]();
        }

        else
        {
          if (v32 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v33 = *(v39 + 32 + 8 * v32);
        }

        v34 = v33;
        [v33 doubleValue];
        v26 = v35;

        if (v23 >= *(v11 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v26 = -1.0;
        if (v23 >= *(v11 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }
      }

      *(v11 + 32 + 8 * v23) = v26;
      v25 += 2;
      ++v23;
    }

    while (v10 != v23);
  }

  if (v38)
  {
    sub_1D9AE8AEC(v11);
  }
}

void sub_1D9AE8F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v6 = a2;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v73 = v7;
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
    if ((a6 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v70 = a4;
  v10 = sub_1D9C7DF5C();
  *(v10 + 16) = v7;
  v11 = v10 + 32;
  bzero((v10 + 32), 8 * v7);
  v12 = 0;
  v69 = v6;
  v72 = v6 + 32;
  v13 = a1 + 32;
  v76 = v10;
  v74 = a1;
  v75 = a1 + 32;
  while (1)
  {
    v14 = *(v72 + 8 * v12);
    v15 = *(v14 + 16);
    if (a5)
    {
      if (v15)
      {
        v84 = v8;

        sub_1D99FE164(0, v15, 0);
        v16 = v84;
        v17 = v14 + 40;
        while (1)
        {
          v83[0] = sub_1D9C7DCFC();
          v83[1] = v18;
          v83[5] = 46;
          v83[6] = 0xE100000000000000;
          sub_1D99A57F8();

          v19 = sub_1D9C7E2AC();

          if (!v19[2])
          {
            break;
          }

          v20 = v19[4];
          v21 = v19[5];

          v84 = v16;
          v23 = *(v16 + 16);
          v22 = *(v16 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1D99FE164((v22 > 1), v23 + 1, 1);
            v16 = v84;
          }

          *(v16 + 16) = v23 + 1;
          v24 = v16 + 16 * v23;
          *(v24 + 32) = v20;
          *(v24 + 40) = v21;
          v17 += 16;
          --v15;
          v13 = v75;
          if (!v15)
          {

            v10 = v76;
            v8 = MEMORY[0x1E69E7CC0];
            goto LABEL_19;
          }
        }

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
        goto LABEL_95;
      }

      v16 = v8;
LABEL_19:
      v34 = sub_1D9B9E654(v16);

      v35 = *(v34 + 16);
      if (!v35)
      {

LABEL_25:
        v25 = v8;
        goto LABEL_26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110);
      v25 = swift_allocObject();
      v36 = _swift_stdlib_malloc_size(v25);
      v37 = v36 - 32;
      if (v36 < 32)
      {
        v37 = v36 - 17;
      }

      v25[2] = v35;
      v25[3] = 2 * (v37 >> 4);
      v38 = sub_1D9B8EA60(v83, v25 + 4, v35, v34);
      sub_1D99C74D4();
      if (v38 != v35)
      {
        goto LABEL_96;
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_25;
      }

      v83[0] = v8;

      sub_1D99FE164(0, v15, 0);
      v25 = v83[0];
      v26 = v14 + 40;
      do
      {
        v27 = sub_1D9C7DCFC();
        v83[0] = v25;
        v30 = v25[2];
        v29 = v25[3];
        if (v30 >= v29 >> 1)
        {
          v32 = v27;
          v33 = v28;
          sub_1D99FE164((v29 > 1), v30 + 1, 1);
          v28 = v33;
          v13 = v75;
          v27 = v32;
          v25 = v83[0];
        }

        v25[2] = v30 + 1;
        v31 = &v25[2 * v30];
        v31[4] = v27;
        v31[5] = v28;
        v26 += 16;
        --v15;
      }

      while (v15);

      v10 = v76;
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_26:
    v79 = v25[2];
    if (v79)
    {
      break;
    }

LABEL_58:
    if (a6)
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_97;
      }

      *(v11 + 8 * v12) = 0xBFF0000000000000;
    }

LABEL_3:
    if (++v12 == v73)
    {
LABEL_85:
      v7 = v73;
      v6 = v69;
      a4 = v70;
      if ((a6 & 1) == 0)
      {
LABEL_63:
        v60 = *(a4 + 16);
        if (v7)
        {
          v61 = v60 == 0;
        }

        else
        {
          v61 = 1;
        }

        if (v61)
        {
          return;
        }

        v62 = 0;
        v78 = v60 + 1;
        v80 = a4 + 40;
        while (1)
        {
          v63 = *(v6 + 32 + 8 * v62);
          v82 = *(v63 + 16);
          if (v82)
          {
            break;
          }

LABEL_79:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D9B1A738(v10);
          }

          if (v62 >= *(v10 + 16))
          {
            goto LABEL_94;
          }

          *(v10 + 8 * v62 + 32) = 0;
LABEL_69:
          if (++v62 == v7)
          {
            return;
          }
        }

        v64 = 0;
        while (v64 < *(v63 + 16))
        {
          ++v64;

          v66 = v78;
          v65 = v80;
          while (--v66)
          {
            v67 = v65 + 16;

            v68 = sub_1D9C7DE4C();

            v65 = v67;
            if (v68)
            {

              v7 = v73;
              goto LABEL_69;
            }
          }

          if (v64 == v82)
          {

            v7 = v73;
            goto LABEL_79;
          }
        }

        goto LABEL_90;
      }

LABEL_62:
      v57 = a4;
      sub_1D9AE8AEC(v10);
      v59 = v58;

      a4 = v57;
      v10 = v59;
      goto LABEL_63;
    }
  }

  v39 = 0;
  for (i = 0; i != v79; ++i)
  {
    if (i >= v25[2])
    {
      __break(1u);
      goto LABEL_88;
    }

    v42 = &v25[2 * i + 4];
    v44 = *v42;
    v43 = v42[1];
    if (a5)
    {
      if (*(*(a3 + 48) + 16))
      {

        sub_1D99ED894(v44, v43);
        v46 = v45;

        if (v46)
        {
        }

        else
        {
          v47 = MEMORY[0x1E69E7CC0];
        }

        v10 = v76;
        v53 = *(v47 + 16);
        if (!v53)
        {
LABEL_45:

          continue;
        }
      }

      else
      {
        v47 = MEMORY[0x1E69E7CC0];
        v53 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v53)
        {
          goto LABEL_45;
        }
      }

      v54 = *(v74 + 16);
      v55 = 32;
      do
      {
        v56 = *(v47 + v55);
        if (v56 < v54)
        {
          if (v56 < 0)
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          if (v12 >= *(v10 + 16))
          {
            goto LABEL_84;
          }

          *(v11 + 8 * v12) = *(v13 + 8 * v56) + *(v11 + 8 * v12);
        }

        v55 += 8;
        --v53;
      }

      while (v53);

      v41 = __OFADD__(v39++, 1);
      if (v41)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v48 = *(a3 + 16);
      if (*(v48 + 16))
      {

        v49 = sub_1D99ED894(v44, v43);
        v51 = v50;

        if ((v51 & 1) == 0 || (v52 = *(*(v48 + 56) + 8 * v49), (v52 & 0x8000000000000000) != 0))
        {
          v10 = v76;
        }

        else
        {
          v10 = v76;
          if (v52 >= *(v74 + 16))
          {
            goto LABEL_91;
          }

          if (v12 >= *(v76 + 16))
          {
            goto LABEL_92;
          }

          *(v11 + 8 * v12) = *(v13 + 8 * v52) + *(v11 + 8 * v12);
          v41 = __OFADD__(v39++, 1);
          if (v41)
          {
            goto LABEL_93;
          }
        }
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v39 < 1)
  {
    goto LABEL_58;
  }

  if (v12 < *(v10 + 16))
  {
    *(v11 + 8 * v12) = *(v11 + 8 * v12) / v39;
    goto LABEL_3;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}