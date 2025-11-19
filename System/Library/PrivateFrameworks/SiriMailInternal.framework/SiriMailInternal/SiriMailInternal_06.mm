uint64_t sub_267662B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailStateChangeEventHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_267662B8C(uint64_t a1)
{
  v3 = *(type metadata accessor for MailStateChangeEventHandler(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2676B2C44(a1, v1 + v4, v5);
}

uint64_t sub_267662C60(uint64_t a1)
{
  v2 = type metadata accessor for ResolveSendMailIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267662CBC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;
  OUTLINED_FUNCTION_14_11();

  return sub_26765EC58();
}

uint64_t sub_267662D68()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;
  OUTLINED_FUNCTION_14_11();

  return sub_26765ED84(v2, v3, v4);
}

id sub_267662E60(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_267662E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267662EC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_33_6()
{

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_36_8()
{
  v2 = *(*(v1 - 224) + 8);
  result = v0;
  v4 = *(v1 - 208);
  v5 = *(v1 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_4()
{
  v2 = *(v0 - 192);

  return sub_2676C987C();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 216);

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  v2 = *(v0 - 200);
  v4 = *(v0 - 168);
  v3 = *(v0 - 160);

  return sub_2676C98AC();
}

void OUTLINED_FUNCTION_57_5()
{
  v1 = *(v0 - 248);
  v2 = *(v1 + 16);
  v3 = *(v1 + 80);
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_65_3()
{
  v2 = *(v0 - 264);

  return sub_2676CA3DC();
}

uint64_t OUTLINED_FUNCTION_66_3()
{

  return sub_2676C97EC();
}

void OUTLINED_FUNCTION_68_2()
{
  v2 = *(v0 + 16) + 1;

  sub_26760719C(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_84_1()
{
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[25];
}

uint64_t sub_2676632C4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void (*sub_267663304(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  v2[4] = v3;
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v2[5] = v4;
  v2[6] = __swift_coroFrameAllocStub(*(v6 + 64));
  (*(v5 + 16))();
  v2[7] = sub_2676C978C();
  return sub_26765BF6C;
}

uint64_t sub_267663414(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  (*(v5 + 16))(&v12 - v9, v1 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan__replyMessageTask, v3);
  a1(v3);
  return (*(v5 + 8))(v10, v3);
}

void sub_267663510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v24;
  a20 = v25;
  v314 = v20;
  v27 = v26;
  v316 = v28;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v299);
  v298 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v33);
  v306 = sub_2676CB0DC();
  v34 = OUTLINED_FUNCTION_3(v306);
  v305 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v39 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v41 = OUTLINED_FUNCTION_74_1(v40);
  OUTLINED_FUNCTION_3(v41);
  v303 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  v312 = sub_2676C9EAC();
  v47 = OUTLINED_FUNCTION_3(v312);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_2();
  v54 = v53 - v52;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v286);
  v285 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v61 = OUTLINED_FUNCTION_3(v60);
  v308 = v62;
  v309 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_1();
  v307 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v68 = OUTLINED_FUNCTION_4_1(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_54_5();
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3(v293);
  v291 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_50_3();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v86);
  v88 = &v277 - v87;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  v89 = OUTLINED_FUNCTION_3(v296);
  v292 = v90;
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v95);
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_9_1();
  v313 = v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  v101 = OUTLINED_FUNCTION_3(v100);
  v297 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v106);
  v107 = sub_2676C9EBC();
  v108 = OUTLINED_FUNCTION_3(v107);
  KeyPath = v109;
  v318 = v108;
  v111 = *(v110 + 64);
  v112 = MEMORY[0x28223BE20](v108);
  v114 = &v277 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v116);
  v118 = &v277 - v117;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v295 = v88;
  v290 = v21;
  v288 = v22;
  v315[0] = v100;
  v310 = v54;
  v311 = v49;
  v119 = sub_2676CBE4C();
  v315[1] = __swift_project_value_buffer(v119, qword_2801CDC90);
  v120 = sub_2676CBE2C();
  v121 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v121))
  {
    v122 = OUTLINED_FUNCTION_17_3();
    *v122 = 0;
    _os_log_impl(&dword_2675D4000, v120, v121, "#ReplyMailSceneHostPlan accept(input:)", v122, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C9E5C();
  v124 = KeyPath;
  v123 = v318;
  v125 = *(KeyPath + 88);
  v126 = v125(v118, v318);
  v127 = *MEMORY[0x277D5C160];
  v128 = v118;
  v129 = *(v124 + 8);
  v129(v128, v123);
  if (v126 != v127)
  {
    goto LABEL_15;
  }

  v279 = v27;
  sub_2676C9E5C();
  sub_2676371E0();
  if (!v130)
  {
    v129(v23, v123);
    v132 = v313;
    v147 = OUTLINED_FUNCTION_33_4();
    __swift_storeEnumTagSinglePayload(v147, v148, 1, v315[0]);
    goto LABEL_14;
  }

  v131 = sub_2676CA77C();

  v132 = v313;
  sub_267698EA0(v131);
  v123 = v318;

  v129(v23, v123);
  v133 = OUTLINED_FUNCTION_33_4();
  v134 = v315[0];
  OUTLINED_FUNCTION_21_3(v133, v135, v315[0]);
  if (v160)
  {
LABEL_14:
    sub_267662EC4(v132, &qword_2801CC640, &unk_2676CF550);
    goto LABEL_15;
  }

  v278 = v129;
  OUTLINED_FUNCTION_23_8(&v323);
  v137 = v300;
  (*(v136 + 32))(v300, v132, v134);
  v140 = *(v123 + 2);
  v138 = v123 + 16;
  v139 = v140;
  v141 = v294;
  v140(v294, v137, v134);
  sub_2676CBA6C();
  OUTLINED_FUNCTION_0_21();
  v144 = sub_26766B3A8(v142, v143);
  v145 = v295;
  v313 = v144;
  sub_2676CA3FC();
  OUTLINED_FUNCTION_21_3(v145, 1, v296);
  if (!v160)
  {
    OUTLINED_FUNCTION_23_8(&v321);
    v196 = *(v195 + 32);
    v197 = v289;
    v198 = OUTLINED_FUNCTION_53_0();
    v199(v198);
    OUTLINED_FUNCTION_65_4();
    sub_267666C0C(v197, v114, v200, v201, v202, v203, v204, v205, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
    v206 = OUTLINED_FUNCTION_82_2();
    v207(v206);
    v208 = sub_2676CBE2C();
    v209 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v209))
    {
      v211 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v211);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v212, v213, "#ReplyMailSceneHostPlan accept(input:) processed reply task, returning .yes");
      OUTLINED_FUNCTION_4_6();
    }

    sub_2676C974C();
    v214 = *(v138 + 8);
    v215 = OUTLINED_FUNCTION_53_0();
    v216(v215);
    OUTLINED_FUNCTION_27_5(&v323);
    v218 = v300;
    v219 = v134;
LABEL_39:
    v217(v218, v219);
    goto LABEL_40;
  }

  sub_267662EC4(v145, &qword_2801CC620, &unk_2676D0C30);
  v139(v141, v300, v134);
  sub_2676CBADC();
  sub_26766B3A8(&qword_2801CCA48, MEMORY[0x277D5C8A8]);
  OUTLINED_FUNCTION_23_8(&v319);
  sub_2676CA3FC();
  OUTLINED_FUNCTION_21_3(v138, 1, v293);
  if (!v160)
  {
    v231 = *(v291 + 32);
    v232 = OUTLINED_FUNCTION_45_4();
    v233(v232);
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_23();
    sub_26766B3A8(v234, v235);
    OUTLINED_FUNCTION_23_8(&v316);
    OUTLINED_FUNCTION_42_3();
    sub_2676CA3EC();

    v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v138, 1, v236);
    sub_267662EC4(v138, &qword_2801CC428, &unk_2676CEDD0);
    if (EnumTagSinglePayload == 1)
    {
      sub_26761F9A8();
      swift_getKeyPath();
      OUTLINED_FUNCTION_43_3(&v314);
      v238 = v309;
      sub_2676C97EC();

      v239 = OUTLINED_FUNCTION_40_3();
      v240(v239, v238);
      v241 = v286;
      sub_2676C983C();
      OUTLINED_FUNCTION_27_5(v315);
      v242(v141, v241);
      swift_getKeyPath();
      v243 = sub_267663304(&v322);
      v244 = sub_2676CA3DC();
      if (__swift_getEnumTagSinglePayload(v245, 1, v236))
      {
        v246 = OUTLINED_FUNCTION_29_9();
        v244(v246);

        v247 = OUTLINED_FUNCTION_30_8();
        v243(v247);
        v248 = v288;
      }

      else
      {
        v318 = v243;
        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        v265 = v280;
        OUTLINED_FUNCTION_42_3();
        v248 = v288;
        sub_2676CA3EC();

        OUTLINED_FUNCTION_21_3(v265, 1, v236);
        if (v160)
        {
          sub_267662EC4(v265, &qword_2801CC428, &unk_2676CEDD0);
        }

        else
        {
          swift_getKeyPath();
          sub_2676CA89C();

          OUTLINED_FUNCTION_14_2(v236);
          (*(v266 + 8))(v265, v236);
        }

        sub_2676CA8AC();
        v267 = OUTLINED_FUNCTION_29_9();
        v244(v267);

        v268 = OUTLINED_FUNCTION_30_8();
        v318(v268);
      }

      v269 = sub_2676CBE2C();
      v270 = sub_2676CC23C();
      v271 = OUTLINED_FUNCTION_5_5(v270);
      v272 = v293;
      if (v271)
      {
        v273 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v273);
        OUTLINED_FUNCTION_4_18(&dword_2675D4000, v274, v275, "#ReplyMailSceneHostPlan accept(input:) processed generic update message task, returning .yes");
        OUTLINED_FUNCTION_4_6();
      }

      sub_2676C974C();
      OUTLINED_FUNCTION_27_5(v320);
      v276(v248, v272);
      OUTLINED_FUNCTION_27_5(&v323);
      v218 = OUTLINED_FUNCTION_45_4();
    }

    else
    {
      v249 = sub_2676CBE2C();
      v250 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v250))
      {
        v251 = OUTLINED_FUNCTION_17_3();
        *v251 = 0;
        _os_log_impl(&dword_2675D4000, v249, v250, "#ReplyMailSceneHostPlan accept(input:) processed update message task, returning .yes", v251, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_43_3(&v312);
      OUTLINED_FUNCTION_42_3();
      sub_2676CA3EC();

      __swift_storeEnumTagSinglePayload(v283, 1, 1, v236);
      OUTLINED_FUNCTION_34_7(&v311);
      OUTLINED_FUNCTION_14_14();
      sub_2676CA3CC();
      OUTLINED_FUNCTION_65_4();
      v252 = OUTLINED_FUNCTION_58_1();
      sub_267666C0C(v252, v253, v254, v255, v256, v257, v258, v259, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v260 = OUTLINED_FUNCTION_82_2();
      v261(v260);
      sub_2676C974C();
      OUTLINED_FUNCTION_27_5(&v321);
      v262(v236, v296);
      OUTLINED_FUNCTION_27_5(v320);
      v263 = OUTLINED_FUNCTION_53_0();
      v264(v263);
      OUTLINED_FUNCTION_27_5(&v323);
      v218 = v300;
      v219 = v315[0];
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_27_5(&v323);
  v146(v300, v134);
  sub_267662EC4(v138, &qword_2801CD290, &qword_2676D24C0);
  v123 = v318;
  v129 = v278;
LABEL_15:
  sub_2676C9E5C();
  if (v125(v114, v123) != *MEMORY[0x277D5C150])
  {
    v129(v114, v123);
    goto LABEL_28;
  }

  (*(KeyPath + 96))(v114, v123);
  v150 = v310;
  v149 = v311;
  v151 = v312;
  (*(v311 + 32))(v310, v114, v312);
  v152 = sub_2676C9E8C();
  v154 = v153;
  v155 = sub_2676C96CC();
  v156 = [v155 identifier];

  v157 = sub_2676CBF6C();
  v159 = v158;

  v160 = v152 == v157 && v154 == v159;
  if (v160)
  {

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_11_16();
  v161 = sub_2676CC59C();

  if (v161)
  {
LABEL_32:
    v177 = sub_2676CBE2C();
    v178 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v178))
    {
      v179 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v179);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v180, v181, "#ReplyMailSceneHostPlan got confirm DI, accepting parse");
      OUTLINED_FUNCTION_4_6();
    }

    v182 = v307;
    sub_26761F9A8();
    swift_getKeyPath();
    v183 = v301;
    v184 = v309;
    sub_2676C97EC();

    (*(v308 + 8))(v182, v184);
    v185 = *MEMORY[0x277D5CA00];
    OUTLINED_FUNCTION_23_8(&a17);
    v187 = v302;
    v188 = v306;
    (*(v186 + 104))(v302);
    v189 = v304;
    sub_2676C984C();
    (*(v184 + 8))(v187, v188);
    OUTLINED_FUNCTION_27_5(&a15);
    v190(v183, v189);
    OUTLINED_FUNCTION_23_8(&a9);
    sub_26761F98C();
    LOBYTE(v322) = 1;
    v191 = v299;
    sub_2676C984C();
    OUTLINED_FUNCTION_27_5(&a10);
    v193 = v184 + 8;
    v194 = v191;
    goto LABEL_35;
  }

  v162 = sub_2676C9E8C();
  v164 = v163;
  v165 = sub_2676C96BC();
  v166 = [v165 identifier];

  v167 = sub_2676CBF6C();
  v169 = v168;

  if (v162 == v167 && v164 == v169)
  {

    goto LABEL_42;
  }

  OUTLINED_FUNCTION_11_16();
  v171 = sub_2676CC59C();

  if (v171)
  {
LABEL_42:
    v220 = sub_2676CBE2C();
    v221 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v221))
    {
      v222 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v222);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v223, v224, "#ReplyMailSceneHostPlan got reject DI, accepting parse");
      OUTLINED_FUNCTION_4_6();
    }

    v225 = v307;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0(&a13);
    v226 = v309;
    sub_2676C97EC();

    (*(v308 + 8))(v225, v226);
    v227 = *MEMORY[0x277D5CA20];
    OUTLINED_FUNCTION_34_7(&a17);
    v229 = v302;
    v230 = v306;
    (*(v228 + 104))(v302);
    sub_2676C984C();
    (*(v226 + 8))(v229, v230);
    OUTLINED_FUNCTION_27_5(&a15);
    v193 = OUTLINED_FUNCTION_45_4();
LABEL_35:
    v192(v193, v194);
    sub_2676C974C();
    (*(v149 + 8))(v150, v151);
    goto LABEL_40;
  }

  (*(v149 + 8))(v150, v151);
LABEL_28:
  v172 = sub_2676CBE2C();
  v173 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v173))
  {
    v174 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v174);
    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v175, v176, "#ReplyMailSceneHostPlan accept(input:): got a non USO parse, rejecting parse");
    OUTLINED_FUNCTION_4_6();
  }

  sub_2676C973C();
LABEL_40:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676649B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v21;
  a20 = v22;
  v169 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v30 = OUTLINED_FUNCTION_3(v29);
  v171 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v39);
  v41 = v151 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3(v42);
  v44 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  v49 = v151 - v48;
  v50 = type metadata accessor for ResolveSiriMailMessageIntent();
  v51 = OUTLINED_FUNCTION_2_6(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_2();
  v56 = v55 - v54;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2D8, &qword_2676D2460);
  OUTLINED_FUNCTION_3(v155);
  v157 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_9_1();
  v170 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2E0, &qword_2676D2468);
  v63 = OUTLINED_FUNCTION_74_1(v62);
  OUTLINED_FUNCTION_3(v63);
  v160 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v68);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2E8, &qword_2676D2470);
  OUTLINED_FUNCTION_3(v161);
  v162 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2F0, &qword_2676D2478);
  v163 = OUTLINED_FUNCTION_3(v74);
  v164 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2F8, &qword_2676D2480);
  v165 = OUTLINED_FUNCTION_3(v80);
  v166 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD300, &unk_2676D2488);
  v167 = OUTLINED_FUNCTION_3(v86);
  v168 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v91);
  sub_2676633FC();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_0_21();
  v152 = sub_26766B3A8(v93, v94);
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v95, v96);
  sub_2676C9A2C();

  (*(v44 + 8))(v49, v42);
  sub_26761F9A8();
  swift_getKeyPath();
  v97 = v56 + v50[5];
  v151[2] = v41;
  sub_2676C97EC();

  v99 = v171 + 8;
  v98 = *(v171 + 8);
  v100 = OUTLINED_FUNCTION_45_4();
  v98(v100);
  OUTLINED_FUNCTION_43_3(&v175);
  sub_26761F9A8();
  swift_getKeyPath();
  v101 = v56 + v50[6];
  v102 = v29;
  sub_2676C97EC();

  (v98)(KeyPath, v29);
  OUTLINED_FUNCTION_23_8(&v177);
  sub_26761F9A8();
  swift_getKeyPath();
  v103 = v56 + v50[7];
  sub_2676C97EC();

  (v98)(v29, v29);
  OUTLINED_FUNCTION_60_0(&v178);
  sub_26761F9A8();
  swift_getKeyPath();
  v104 = v50[8];
  OUTLINED_FUNCTION_44_4();

  v105 = OUTLINED_FUNCTION_78_2();
  v98(v105);
  OUTLINED_FUNCTION_60_0(&v179);
  sub_26761F9A8();
  swift_getKeyPath();
  v106 = v50[9];
  OUTLINED_FUNCTION_44_4();

  v107 = OUTLINED_FUNCTION_78_2();
  v98(v107);
  OUTLINED_FUNCTION_60_0(&v180);
  sub_26761F9A8();
  swift_getKeyPath();
  v108 = v50[10];
  OUTLINED_FUNCTION_44_4();

  v109 = OUTLINED_FUNCTION_78_2();
  v98(v109);
  v171 = v99;
  v151[0] = v98;
  OUTLINED_FUNCTION_60_0(&v181);
  sub_26761F9A8();
  swift_getKeyPath();
  v110 = v50[11];
  OUTLINED_FUNCTION_44_4();

  v111 = OUTLINED_FUNCTION_78_2();
  v98(v111);
  v112 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo;
  swift_beginAccess();
  sub_2675F95E4(v20 + v112, v56 + v50[12], &qword_2801CC3D0, &qword_2676D1D80);
  v113 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  swift_beginAccess();
  v114 = v56;
  sub_2675F95E4(v20 + v113, v56 + v50[13], &qword_2801CC6A8, &unk_2676CF5F0);
  v115 = v56 + v50[14];
  *(v115 + 32) = 0;
  *v115 = 0u;
  *(v115 + 16) = 0u;
  v116 = *(v20 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals);
  v117 = v50;
  *(v114 + v50[15]) = v116;
  v118 = v116;
  v119 = v156;
  sub_26761F98C();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v119, 0, 1, v120);
  v121 = sub_2676CBA6C();

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_6();
  v125 = sub_26766B3A8(v123, v124);
  v126 = v152;
  sub_2676C955C();

  sub_267662EC4(v119, &qword_2801CD230, &unk_2676D4670);
  sub_26766B21C(v114);
  OUTLINED_FUNCTION_34_7(&v176);
  sub_26761F9A8();
  v172 = v117;
  v173 = v121;
  v174 = v122;
  v175 = v125;
  v176 = v126;
  OUTLINED_FUNCTION_21_8();
  v127 = OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_9_20();
  v130 = sub_26766B3A8(v128, v129);
  v131 = v153;
  v132 = v155;
  v133 = v170;
  sub_2676C94EC();
  (v151[0])(v114, v102);
  OUTLINED_FUNCTION_27_5(&a14);
  v134(v133, v132);

  v172 = v132;
  v173 = v127;
  v174 = v130;
  OUTLINED_FUNCTION_19_4();
  v135 = OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0(&a9);
  v136 = v159;
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  OUTLINED_FUNCTION_27_5(&a17);
  v137(v131, v136);

  v172 = v136;
  v173 = &type metadata for SendMailResult;
  v174 = v135;
  OUTLINED_FUNCTION_27_8();
  v138 = OUTLINED_FUNCTION_63_3();
  v139 = v154;
  v140 = v161;
  sub_2676C954C();

  v141 = OUTLINED_FUNCTION_40_3();
  v142(v141, v140);
  v172 = v140;
  v173 = v138;
  OUTLINED_FUNCTION_26_7();
  v143 = OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0(&a12);
  v144 = v163;
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  (*(v164 + 8))(v139, v144);

  v172 = v144;
  v173 = &type metadata for SendMailResult;
  v174 = v143;
  OUTLINED_FUNCTION_25_10();
  v145 = OUTLINED_FUNCTION_63_3();
  v146 = v158;
  v147 = v165;
  sub_2676C94FC();

  v148 = OUTLINED_FUNCTION_40_3();
  v149(v148, v147);
  v172 = v147;
  v173 = v145;
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_63_3();
  v150 = v167;
  sub_2676C933C();
  (*(v168 + 8))(v146, v150);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676655C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_2676CB0DC();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[12] = v12;
  v13 = *(v12 - 8);
  v3[13] = v13;
  v14 = *(v13 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[16] = v15;
  v16 = *(v15 - 8);
  v3[17] = v16;
  v17 = *(v16 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_2676CC1CC();
  v3[20] = sub_2676CC1BC();
  v19 = sub_2676CC18C();
  v3[21] = v19;
  v3[22] = v18;

  return MEMORY[0x2822009F8](sub_267665874, v19, v18);
}

uint64_t sub_267665874()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v47 = *(v0 + 64);
  v8 = *(v0 + 24);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v9 = *(v3 + 8);
  v9(v1, v2);
  sub_2676C97FC();
  v10 = *(v6 + 8);
  v10(v4, v5);
  if (__swift_getEnumTagSinglePayload(v7, 1, v47) == 1)
  {
    sub_267662EC4(*(v0 + 88), &qword_2801CCA20, &qword_2676CFEB8);
  }

  else
  {
    v11 = *(v0 + 72);
    v12 = *(v11 + 88);
    v13 = OUTLINED_FUNCTION_11_16();
    v15 = v14(v13);
    v16 = *MEMORY[0x277D5CA08];
    v17 = *(v11 + 8);
    v18 = OUTLINED_FUNCTION_11_16();
    v17(v18);
    if (v15 == v16)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v45 = v9;
      v46 = v17;
      v48 = v10;
      v19 = sub_2676CBE4C();
      __swift_project_value_buffer(v19, qword_2801CDC90);
      v20 = sub_2676CBE2C();
      v21 = sub_2676CC26C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v22);
        _os_log_impl(&dword_2675D4000, v20, v21, "#ReplyMailSceneHostPlan confirmed via voice, updating state to .sent and isConfirmed to true", v15, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v23 = *(v0 + 144);
      v24 = *(v0 + 128);
      v25 = *(v0 + 112);
      v26 = *(v0 + 72);
      v27 = *(v0 + 80);
      v28 = *(v0 + 64);
      v44 = *(v0 + 48);
      v42 = *(v0 + 56);
      v43 = *(v0 + 40);
      v40 = *(v0 + 96);
      v41 = *(v0 + 24);

      sub_26761F9A8();
      swift_getKeyPath();
      sub_2676C97EC();

      v45(v23, v24);
      (*(v26 + 104))(v27, *MEMORY[0x277D5CA00], v28);
      sub_2676C984C();
      (v46)(v27, v28);
      v29 = OUTLINED_FUNCTION_58_1();
      v48(v29);
      sub_26761F98C();
      *(v0 + 192) = 1;
      sub_2676C984C();
      (*(v44 + 8))(v42, v43);
    }
  }

  v30 = *(v0 + 32);
  sub_2676C8BFC();
  v31 = OUTLINED_FUNCTION_33_4();
  __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 184) = v34;
  *v34 = v35;
  v34[1] = sub_267665C10;
  v37 = *(v0 + 24);
  v36 = *(v0 + 32);
  v38 = *(v0 + 16);

  return sub_26761FD10();
}

uint64_t sub_267665C10()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  sub_267662EC4(v3, &qword_2801CC3D0, &qword_2676D1D80);
  v6 = *(v1 + 176);
  v7 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_267665D58, v7, v6);
}

uint64_t sub_267665D58()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];
  v9 = v0[4];

  OUTLINED_FUNCTION_15_0();

  return v10();
}

uint64_t sub_267665E24(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761FAAC(&v3);
}

uint64_t sub_267665E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_2676CB0DC();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD310, &unk_2676D4F10);
  v3[32] = v13;
  v14 = *(v13 - 8);
  v3[33] = v14;
  v15 = *(v14 + 64) + 15;
  v3[34] = swift_task_alloc();
  v16 = sub_2676C9CCC();
  v3[35] = v16;
  v17 = *(v16 - 8);
  v3[36] = v17;
  v18 = *(v17 + 64) + 15;
  v3[37] = swift_task_alloc();
  sub_2676CC1CC();
  v3[38] = sub_2676CC1BC();
  v20 = sub_2676CC18C();
  v3[39] = v20;
  v3[40] = v19;

  return MEMORY[0x2822009F8](sub_2676660F4, v20, v19);
}

uint64_t sub_2676660F4()
{
  v76 = v0;
  v1 = (v0 + 128);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_2676CBE4C();
  __swift_project_value_buffer(v2, qword_2801CDC90);
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC26C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_17_3();
    *v5 = 0;
    _os_log_impl(&dword_2675D4000, v3, v4, "#ReplyMailSceneHostPlan handling error", v5, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 280);
  v8 = *(v0 + 168);

  *(v0 + 128) = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (OUTLINED_FUNCTION_66_4())
  {
    v10 = (v0 + 296);
    v11 = (v0 + 280);
    v12 = 288;
LABEL_9:
    (*(*(v0 + v12) + 8))(*v10, *v11);

    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    v24 = *(v0 + 176);
    v71 = *(v0 + 184);
    v73 = *(v0 + 208);
    sub_26761F9A8();
    swift_getKeyPath();
    sub_2676C97EC();

    v25 = *(v18 + 8);
    v26 = OUTLINED_FUNCTION_53_0();
    v27(v26);
    (*(v22 + 104))(v23, *MEMORY[0x277D5CA20], v71);
    sub_2676C984C();
    (*(v22 + 8))(v23, v71);
    (*(v21 + 8))(v19, v73);
    v28 = sub_2676CBE2C();
    v29 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v29))
    {
      v30 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v30);
      _os_log_impl(&dword_2675D4000, v28, v29, "#ReplyMailSceneHostPlan user cancelled or rejected, returning IntentCancelled", v19, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 328) = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_57_6(v31);
    OUTLINED_FUNCTION_87_2();

    return sub_26762E11C();
  }

  v1 = (v0 + 136);
  v13 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 168);

  *(v0 + 136) = v15;
  v16 = v15;
  if (OUTLINED_FUNCTION_66_4())
  {
    v10 = (v0 + 272);
    v11 = (v0 + 256);
    v12 = 264;
    goto LABEL_9;
  }

  v35 = *(v0 + 168);

  *(v0 + 144) = v35;
  v36 = v35;
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 88);
    v38 = *(v0 + 96);
    *(v0 + 344) = v37;
    *(v0 + 352) = v38;
    v39 = *(v0 + 104);
    if (v39 == 1)
    {
      v40 = sub_2676CBE2C();
      v41 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v41))
      {
        v42 = OUTLINED_FUNCTION_17_3();
        *v42 = 0;
        _os_log_impl(&dword_2675D4000, v40, v41, "#ReplyMailSceneHostPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v42, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v43 = *(v0 + 176);

      sub_2675E5D38(v43 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory, v0 + 24);
      *(v0 + 16) = v37;
      sub_267651D60(v37, v38, 1);
      swift_task_alloc();
      OUTLINED_FUNCTION_15_3();
      *(v0 + 360) = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_57_6(v44);
      OUTLINED_FUNCTION_87_2();

      return sub_2676BFAF0();
    }

    sub_267651D40(v37, v38, v39);
  }

  v48 = *(v0 + 240);
  v47 = *(v0 + 248);
  v49 = *(v0 + 224);
  v50 = *(v0 + 232);
  v51 = *(v0 + 216);
  v52 = *(v0 + 192);
  v53 = *(v0 + 200);
  v54 = *(v0 + 176);
  v70 = *(v0 + 184);
  v72 = *(v0 + 208);
  v74 = *(v0 + 168);

  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  (*(v48 + 8))(v47, v50);
  (*(v52 + 104))(v53, *MEMORY[0x277D5CA10], v70);
  sub_2676C984C();
  (*(v52 + 8))(v53, v70);
  (*(v51 + 8))(v49, v72);
  v55 = v74;
  v56 = sub_2676CBE2C();
  v57 = sub_2676CC26C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 168);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75 = v60;
    *v59 = 136315138;
    swift_getErrorValue();
    v62 = *(v0 + 64);
    v61 = *(v0 + 72);
    v63 = *(v0 + 80);
    v64 = sub_2676CC5FC();
    v66 = sub_2676B0B84(v64, v65, &v75);

    *(v59 + 4) = v66;
    _os_log_impl(&dword_2675D4000, v56, v57, "#ReplyMailSceneHostPlan error: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_4_6();
  }

  type metadata accessor for GenericError();
  *(v0 + 376) = swift_initStackObject();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 384) = v67;
  *v67 = v68;
  OUTLINED_FUNCTION_57_6(v67);
  OUTLINED_FUNCTION_87_2();

  return sub_2676C1B78();
}

uint64_t sub_267666764()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *v1;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = v2[41];
  *v4 = *v1;
  *(v3 + 336) = v0;

  v6 = v2[40];
  v7 = v2[39];
  if (v0)
  {
    v8 = sub_267666BD4;
  }

  else
  {
    v8 = sub_267666894;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_267666894()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 304);

  OUTLINED_FUNCTION_67_2();

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_267666918()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[46] = v0;

  sub_267662E0C((v3 + 2));
  v9 = v3[39];
  v10 = v3[40];
  if (v0)
  {
    v11 = sub_267666BB8;
  }

  else
  {
    v11 = sub_267666A1C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_267666A1C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 304);

  sub_267651D40(v1, v2, 1);

  OUTLINED_FUNCTION_67_2();

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_267666ABC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[49] = v0;

  v9 = v3[39];
  v10 = v3[40];
  if (v0)
  {
    v11 = sub_267666BF0;
  }

  else
  {
    v11 = sub_26766B3F0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

void sub_267666C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v21;
  a20 = v22;
  v182 = v23;
  v183 = v20;
  v173 = v24;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3(v175);
  v167 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3(v174);
  v171 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  v36 = OUTLINED_FUNCTION_3(v35);
  v180 = v37;
  v181 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  v179 = v41;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v42 = OUTLINED_FUNCTION_2_6(v166);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v47);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v169);
  v168 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v54 = OUTLINED_FUNCTION_3(v53);
  v177 = v55;
  v178 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_1();
  v176 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD288, &qword_2676D1EC0);
  OUTLINED_FUNCTION_3(v60);
  v62 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_50_3();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3(v66);
  v68 = v67;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v71);
  v73 = v161 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_3(v74);
  v170 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  v80 = v161 - v79;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_0_21();
  v172 = sub_26766B3A8(v81, v82);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v83, v84);
  sub_2676C988C();

  (*(v68 + 8))(v73, v66);
  swift_getKeyPath();
  v184 = v80;
  v185 = v74;
  sub_2676C989C();

  LOBYTE(v73) = sub_2676C987C();
  v87 = *(v62 + 8);
  v86 = v62 + 8;
  v85 = v87;
  v88 = OUTLINED_FUNCTION_14_14();
  v87(v88);
  if (v73)
  {
    v163 = v86;
    v164 = v85;
    v89 = v176;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7(&a12);
    v90 = v178;
    sub_2676C97EC();

    (*(v177 + 8))(v89, v90);
    v91 = v169;
    sub_2676C983C();
    (*(v168 + 8))(v85, v91);
    KeyPath = swift_getKeyPath();
    v93 = sub_267663304(v186);
    v94 = sub_2676CA3DC();
    v96 = v95;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v98 = OUTLINED_FUNCTION_33_4();
    if (__swift_getEnumTagSinglePayload(v98, v99, v97))
    {
      v100 = OUTLINED_FUNCTION_29_9();
      v94(v100);

      v101 = OUTLINED_FUNCTION_30_8();
      v93(v101);
      v85 = v164;
    }

    else
    {
      v161[2] = v96;
      v161[3] = KeyPath;
      v162 = v93;
      v161[1] = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_34_7(&v187);
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v93, 1, v97);
      if (v102)
      {
        sub_267662EC4(v93, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2(v97);
        (*(v103 + 8))(v93, v97);
      }

      sub_2676CA8AC();
      v104 = OUTLINED_FUNCTION_29_9();
      v94(v104);

      v105 = OUTLINED_FUNCTION_30_8();
      v162(v105);
      v85 = v164;
    }
  }

  swift_getKeyPath();
  sub_2676C989C();

  v106 = sub_2676C987C();
  v107 = OUTLINED_FUNCTION_14_14();
  v85(v107);
  v108 = v180;
  if (v106)
  {
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_3(&a12);
    OUTLINED_FUNCTION_81_3();
    sub_2676C97EC();

    v109 = *(v177 + 8);
    v110 = OUTLINED_FUNCTION_79_2();
    v111(v110);
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&a13);
    v112 = OUTLINED_FUNCTION_14_14();
    v113(v112);
    swift_getKeyPath();
    v114 = sub_267663304(v186);
    v115 = sub_2676CA3DC();
    v117 = v116;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (__swift_getEnumTagSinglePayload(v117, 1, v118))
    {
      v119 = OUTLINED_FUNCTION_29_9();
      v115(v119);

      v120 = OUTLINED_FUNCTION_30_8();
      v114(v120);
    }

    else
    {
      v169 = v114;
      v168 = swift_getKeyPath();
      swift_getKeyPath();
      v121 = v165;
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v121, 1, v118);
      if (v102)
      {
        sub_267662EC4(v121, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2(v118);
        (*(v122 + 8))(v121, v118);
      }

      v123 = v169;
      OUTLINED_FUNCTION_11_16();
      sub_2676CA8AC();
      v124 = OUTLINED_FUNCTION_29_9();
      v115(v124);

      v125 = OUTLINED_FUNCTION_30_8();
      v123(v125);
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_8_21();
  sub_26766B3A8(v126, v127);
  OUTLINED_FUNCTION_42_3();
  sub_2676C98AC();

  OUTLINED_FUNCTION_81_3();
  v128 = sub_2676C987C();
  v129 = *(v108 + 8);
  v130 = OUTLINED_FUNCTION_79_2();
  v129(v130);
  v131 = v171;
  v180 = v108 + 8;
  if (v128)
  {
    OUTLINED_FUNCTION_69_2();
    v131 = v176;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_41_4();

    v132 = OUTLINED_FUNCTION_51_5();
    v133(v132);
    sub_2676C983C();
    v134 = OUTLINED_FUNCTION_62_3();
    v135(v134);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_42_3();
  sub_2676C98AC();

  OUTLINED_FUNCTION_81_3();
  v136 = sub_2676C987C();
  v137 = OUTLINED_FUNCTION_79_2();
  v129(v137);
  if (v136)
  {
    OUTLINED_FUNCTION_69_2();
    v131 = v176;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_41_4();

    v138 = OUTLINED_FUNCTION_51_5();
    v139(v138);
    sub_2676C983C();
    v140 = OUTLINED_FUNCTION_62_3();
    v141(v140);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_42_3();
  sub_2676C98AC();

  OUTLINED_FUNCTION_81_3();
  v142 = sub_2676C987C();
  v143 = OUTLINED_FUNCTION_79_2();
  v129(v143);
  if (v142)
  {
    OUTLINED_FUNCTION_69_2();
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7(&a18);
    v144 = v178;
    sub_2676C97EC();

    v145 = OUTLINED_FUNCTION_40_3();
    v146(v145, v144);
    sub_2676C983C();
    v147 = *(v131 + 8);
    v131 += 8;
    v148 = OUTLINED_FUNCTION_58_1();
    v149(v148);
  }

  v150 = v175;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v151 = sub_2676CBE4C();
  __swift_project_value_buffer(v151, qword_2801CDC90);

  v152 = sub_2676CBE2C();
  v153 = sub_2676CC23C();

  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v186[0] = v155;
    *v154 = 136315138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_3(&a10);
    sub_2676632EC();
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5(&a11);
    v156(v131, v150);
    v157 = sub_2676CBFBC();
    v159 = sub_2676B0B84(v157, v158, v186);

    *(v154 + 4) = v159;
    _os_log_impl(&dword_2675D4000, v152, v153, "#ReplyMailSceneHostPlan accept(input:) returning .yes() with updated target: %s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v155);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_27_5(&a15);
  v160(v184, v185);
  OUTLINED_FUNCTION_20_1();
}

void sub_267667B18()
{
  OUTLINED_FUNCTION_21_1();
  v205 = v0;
  v212 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v197 - v15;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v17 = OUTLINED_FUNCTION_3(v214);
  v204 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v211 = v21;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_1();
  v213 = v23;
  v24 = sub_2676CA43C();
  v25 = OUTLINED_FUNCTION_3(v24);
  v208 = v26;
  v209 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_2();
  isa = v30 - v29;
  v32 = sub_2676C9EBC();
  v33 = OUTLINED_FUNCTION_3(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v33);
  v40 = &v197 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v197 - v41;
  v210 = v4;
  v43 = sub_26762F80C(v6);
  v206 = v6;
  if (v43)
  {
    if (qword_2801CBAA0 != -1)
    {
LABEL_102:
      OUTLINED_FUNCTION_0();
    }

    v44 = sub_2676CBE4C();
    v45 = __swift_project_value_buffer(v44, qword_2801CDC90);
    v46 = *(v35 + 16);
    v47 = v210;
    v46(v42, v210, v32);
    v46(v40, v47, v32);
    v207 = v45;
    v48 = sub_2676CBE2C();
    v49 = sub_2676CC23C();
    v50 = os_log_type_enabled(v48, v49);
    v212 = v16;
    if (v50)
    {
      LODWORD(v202) = v49;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v215[0] = OUTLINED_FUNCTION_74_1(v52);
      *v51 = 136315650;
      v53 = v206;
      v203 = v48;
      v199 = v40;
      if (v206)
      {
        if (v206 == 1)
        {
          v54 = 17219;
        }

        else
        {
          v54 = 4408130;
        }

        if (v206 == 1)
        {
          v55 = 0xE200000000000000;
        }

        else
        {
          v55 = 0xE300000000000000;
        }
      }

      else
      {
        v55 = 0xE200000000000000;
        v54 = 20308;
      }

      v74 = sub_2676B0B84(v54, v55, v215);

      *(v51 + 4) = v74;
      *(v51 + 12) = 1024;
      v75 = *MEMORY[0x277D5E478];
      v76 = v208;
      v198 = v51;
      v201 = *(v208 + 104);
      v77 = v209;
      v201(isa, v75, v209);
      v78 = sub_2676308A4(v53);
      v197 = &v197;
      MEMORY[0x28223BE20](v78);
      OUTLINED_FUNCTION_81_2();
      v80 = sub_2676A2650(sub_267630B6C, v79, v78);

      v208 = *(v76 + 8);
      (v208)(isa, v77);
      LODWORD(v78) = v80 & 1;
      v197 = *(v35 + 8);
      v197(v42, v32);
      v81 = v198;
      *(v198 + 14) = v78;
      *(v81 + 18) = 1024;
      v201(isa, *MEMORY[0x277D5E470], v77);
      v40 = v199;
      v82 = sub_2676308A4(v206);
      MEMORY[0x28223BE20](v82);
      OUTLINED_FUNCTION_81_2();
      v84 = sub_2676A2650(sub_267630B90, v83, v82);
      v201 = 0;

      (v208)(isa, v209);
      v65 = v206;
      v197(v40, v32);
      *(v81 + 20) = v84 & 1;
      v85 = v203;
      _os_log_impl(&dword_2675D4000, v203, v202, "#ReplyMailSceneHostPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v81, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v200);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();

      v16 = v212;
    }

    else
    {
      v64 = *(v35 + 8);
      v64(v40, v32);
      v64(v42, v32);

      v201 = 0;
      v65 = v206;
    }

    v86 = sub_26762F9DC(v65);
    v87 = v213;
    if (*(v86 + 16))
    {
      v88 = sub_2676CBE2C();
      v89 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v89))
      {
        v90 = swift_slowAlloc();
        v215[0] = swift_slowAlloc();
        *v90 = 136315394;
        if (v65)
        {
          if (v65 == 1)
          {
            v91 = 17219;
          }

          else
          {
            v91 = 4408130;
          }

          if (v65 == 1)
          {
            v92 = 0xE200000000000000;
          }

          else
          {
            v92 = 0xE300000000000000;
          }
        }

        else
        {
          v92 = 0xE200000000000000;
          v91 = 20308;
        }

        v102 = sub_2676B0B84(v91, v92, v215);

        *(v90 + 4) = v102;
        *(v90 + 12) = 2080;
        v103 = MEMORY[0x26D5FDDD0](v86, v214);
        v105 = sub_2676B0B84(v103, v104, v215);

        *(v90 + 14) = v105;
        _os_log_impl(&dword_2675D4000, v88, v89, "#ReplyMailSceneHostPlan Adding these %s recipients: %s", v90, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_33_6();
        OUTLINED_FUNCTION_4_6();
      }

      swift_getKeyPath();
      v106 = sub_267663304(v215);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_21();
      v40 = sub_26766B3A8(v107, v108);
      OUTLINED_FUNCTION_1_23();
      sub_26766B3A8(v109, v110);
      v111 = sub_2676CA3DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v112 = OUTLINED_FUNCTION_33_4();
      if (__swift_getEnumTagSinglePayload(v112, v113, v114))
      {

        v115 = OUTLINED_FUNCTION_29_9();
        v111(v115);

        v116 = OUTLINED_FUNCTION_30_8();
        v106(v116);
        v65 = v206;
      }

      else
      {
        v117 = v206;
        sub_2675DFEE4(v206, v86);

        v118 = OUTLINED_FUNCTION_29_9();
        v111(v118);
        v65 = v117;
        v87 = v213;

        v119 = OUTLINED_FUNCTION_30_8();
        v106(v119);
      }

      v16 = v212;
    }

    else
    {
    }

    v120 = sub_267630350(v65);
    if (v120[2].isa)
    {
      v121 = sub_2676CBE2C();
      v122 = sub_2676CC23C();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v215[0] = swift_slowAlloc();
        *v123 = 136315394;
        if (v65)
        {
          if (v65 == 1)
          {
            v124 = 0xE200000000000000;
            v125 = 17219;
          }

          else
          {
            v124 = 0xE300000000000000;
            v125 = 4408130;
          }
        }

        else
        {
          v124 = 0xE200000000000000;
          v125 = 20308;
        }

        v126 = sub_2676B0B84(v125, v124, v215);

        *(v123 + 4) = v126;
        *(v123 + 12) = 2080;
        v127 = MEMORY[0x26D5FDDD0](v120, v214);
        v40 = sub_2676B0B84(v127, v128, v215);

        *(v123 + 14) = v40;
        _os_log_impl(&dword_2675D4000, v121, v122, "#ReplyMailSceneHostPlan Removing these %s recipients: %s", v123, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        v16 = v212;
      }

      else
      {
      }

      v42 = MEMORY[0x277D84F90];
      isa = v120[2].isa;
      v203 = v120;
      v202 = isa;
      if (isa)
      {
        v215[0] = MEMORY[0x277D84F90];
        sub_2676C2B08(0, isa, 0);
        OUTLINED_FUNCTION_57_5();
        v42 = v215[0];
        v40 = v120 + v129;
        v209 = *(v130 + 56);
        v210 = v131;
        v207 = v130;
        v208 = v130 - 8;
        v132 = v214;
        do
        {
          (v210)(v87, v40, v132);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_21();
          sub_26766B3A8(&qword_2801CBF70, v133);
          sub_26766B3A8(&qword_2801CC2D0, MEMORY[0x277D5C640]);
          sub_2676CA87C();

          v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
          OUTLINED_FUNCTION_21_3(v16, 1, v134);
          if (v63)
          {
            (*v208)(v87, v132);
            sub_267662EC4(v16, &qword_2801CC068, &unk_2676D4E00);
            v135 = 0;
            v137 = 0;
          }

          else
          {
            swift_getKeyPath();
            v135 = sub_2676CA89C();
            v137 = v136;

            (*v208)(v87, v132);
            OUTLINED_FUNCTION_14_2(v134);
            v139 = *(v138 + 8);
            v140 = OUTLINED_FUNCTION_11_16();
            v141(v140);
          }

          v215[0] = v42;
          v143 = *(v42 + 2);
          v142 = *(v42 + 3);
          v32 = v143 + 1;
          if (v143 >= v142 >> 1)
          {
            v145 = OUTLINED_FUNCTION_23_1(v142);
            sub_2676C2B08(v145, v143 + 1, 1);
            v132 = v214;
            v42 = v215[0];
          }

          *(v42 + 2) = v32;
          v144 = &v42[16 * v143];
          *(v144 + 4) = v135;
          *(v144 + 5) = v137;
          v40 += v209;
          --isa;
          v16 = v212;
          v87 = v213;
        }

        while (isa);
        v120 = v203;
      }

      else
      {
        v32 = *(MEMORY[0x277D84F90] + 16);
      }

      v35 = 0;
      v146 = MEMORY[0x277D84F90];
      v147 = MEMORY[0x277D84F90];
LABEL_70:
      v148 = 16 * v35 + 40;
      while (v32 != v35)
      {
        if (v35 >= *(v42 + 2))
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        ++v35;
        v149 = v148 + 16;
        v150 = *&v42[v148];
        v148 += 16;
        if (v150)
        {
          v40 = *&v42[v149 - 24];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v147 = v153;
          }

          isa = *(v147 + 16);
          v151 = *(v147 + 24);
          v16 = (isa + 1);
          if (isa >= v151 >> 1)
          {
            v154 = OUTLINED_FUNCTION_23_1(v151);
            sub_26760719C(v154, isa + 1, 1, v147);
            v147 = v155;
          }

          *(v147 + 16) = v16;
          v152 = v147 + 16 * isa;
          *(v152 + 32) = v40;
          *(v152 + 40) = v150;
          v120 = v203;
          goto LABEL_70;
        }
      }

      v156 = sub_2676A1BFC(v147);
      v40 = v156;
      v35 = v202;
      if (v202)
      {
        v210 = v156;
        v215[0] = v146;
        sub_2676C2B08(0, v202, 0);
        v32 = v215[0];
        OUTLINED_FUNCTION_57_5();
        v158 = v120 + v157;
        v212 = *(v159 + 7);
        v213 = v160;
        v42 = v159;
        v161 = v159 - 8;
        v162 = v214;
        v163 = v35;
        do
        {
          v164 = v211;
          v213(v211, v158, v162);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_21();
          sub_26766B3A8(&qword_2801CBF70, v165);
          v166 = sub_2676CA89C();
          v162 = v214;
          v35 = v166;
          v168 = v167;

          (*v161)(v164, v162);
          v215[0] = v32;
          isa = *(v32 + 16);
          v169 = *(v32 + 24);
          if (isa >= v169 >> 1)
          {
            v171 = OUTLINED_FUNCTION_23_1(v169);
            sub_2676C2B08(v171, isa + 1, 1);
            v162 = v214;
            v32 = v215[0];
          }

          *(v32 + 16) = isa + 1;
          v170 = v32 + 16 * isa;
          *(v170 + 32) = v35;
          *(v170 + 40) = v168;
          v158 += v212;
          --v163;
        }

        while (v163);

        v40 = v210;
      }

      else
      {

        v32 = MEMORY[0x277D84F90];
      }

      v172 = 0;
      v16 = *(v32 + 16);
      v173 = MEMORY[0x277D84F90];
LABEL_87:
      v174 = 16 * v172 + 40;
      while (v16 != v172)
      {
        if (v172 >= *(v32 + 16))
        {
          goto LABEL_101;
        }

        ++v172;
        v175 = v174 + 16;
        v176 = *(v32 + v174);
        v174 += 16;
        if (v176)
        {
          v177 = *(v32 + v175 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v173 = v180;
          }

          v35 = *(v173 + 16);
          v178 = *(v173 + 24);
          v42 = (v35 + 1);
          if (v35 >= v178 >> 1)
          {
            v181 = OUTLINED_FUNCTION_23_1(v178);
            sub_26760719C(v181, v35 + 1, 1, v173);
            v173 = v182;
          }

          *(v173 + 16) = v42;
          v179 = v173 + 16 * v35;
          *(v179 + 32) = v177;
          *(v179 + 40) = v176;
          goto LABEL_87;
        }
      }

      v183 = sub_2676A1BFC(v173);
      swift_getKeyPath();
      v184 = sub_267663304(v215);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_21();
      sub_26766B3A8(v185, v186);
      OUTLINED_FUNCTION_1_23();
      sub_26766B3A8(v187, v188);
      v189 = sub_2676CA3DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v190 = OUTLINED_FUNCTION_33_4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v190, v191, v192);
      if (!EnumTagSinglePayload)
      {
        MEMORY[0x28223BE20](EnumTagSinglePayload);
        *(&v197 - 4) = v40;
        v194 = v206;
        *(&v197 - 24) = v206;
        *(&v197 - 2) = v183;
        sub_2675E0008(v194);
      }

      v195 = OUTLINED_FUNCTION_29_9();
      v189(v195);

      v196 = OUTLINED_FUNCTION_30_8();
      v184(v196);
    }

    else
    {
    }
  }

  else
  {
    swift_getKeyPath();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
    OUTLINED_FUNCTION_0_21();
    v59 = sub_26766B3A8(v57, v58);
    OUTLINED_FUNCTION_1_23();
    sub_26766B3A8(v60, v61);
    sub_2676CA3EC();

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    OUTLINED_FUNCTION_21_3(v1, 1, v62);
    if (v63)
    {
      sub_267662EC4(v1, &qword_2801CC428, &unk_2676CEDD0);
      v66 = MEMORY[0x277D84F90];
    }

    else
    {
      v66 = sub_2675DFE20(v6);
      OUTLINED_FUNCTION_14_2(v62);
      (*(v67 + 8))(v1, v62);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v68 = sub_2676CBE4C();
    __swift_project_value_buffer(v68, qword_2801CDC90);

    v69 = sub_2676CBE2C();
    v70 = sub_2676CC23C();

    if (os_log_type_enabled(v69, v70))
    {
      v212 = v59;
      v71 = swift_slowAlloc();
      v215[0] = swift_slowAlloc();
      *v71 = 136315394;
      v213 = v56;
      if (v206)
      {
        if (v206 == 1)
        {
          v72 = 17219;
        }

        else
        {
          v72 = 4408130;
        }

        if (v206 == 1)
        {
          v73 = 0xE200000000000000;
        }

        else
        {
          v73 = 0xE300000000000000;
        }
      }

      else
      {
        v73 = 0xE200000000000000;
        v72 = 20308;
      }

      v93 = sub_2676B0B84(v72, v73, v215);

      *(v71 + 4) = v93;
      *(v71 + 12) = 2080;
      v94 = MEMORY[0x26D5FDDD0](v66, v214);
      v96 = sub_2676B0B84(v94, v95, v215);

      *(v71 + 14) = v96;
      _os_log_impl(&dword_2675D4000, v69, v70, "#ReplyMailSceneHostPlan Replacing %s recipients with these recipients: %s", v71, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4_6();
    }

    else
    {
    }

    swift_getKeyPath();
    v97 = sub_267663304(v215);
    v98 = sub_2676CA3DC();
    if (!__swift_getEnumTagSinglePayload(v99, 1, v62))
    {
      sub_2675E025C(v206, v66);
    }

    v100 = OUTLINED_FUNCTION_29_9();
    v98(v100);

    v101 = OUTLINED_FUNCTION_30_8();
    v97(v101);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267668EC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v36) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_26766B3A8(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
  sub_26766B3A8(&qword_2801CC2D0, MEMORY[0x277D5C640]);
  sub_2676CA87C();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_267662EC4(v9, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v11 = sub_2676CA89C();
  v13 = v12;

  (*(*(v10 - 8) + 8))(v9, v10);
  if (!v13)
  {
LABEL_16:
    swift_getKeyPath();
    v22 = sub_2676CA89C();
    v24 = v23;

    if (v24)
    {
      if (sub_2676A1CB8(v22, v24, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v25 = sub_2676CBE4C();
        __swift_project_value_buffer(v25, qword_2801CDC90);

        v16 = sub_2676CBE2C();
        v26 = sub_2676CC23C();

        if (os_log_type_enabled(v16, v26))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v37 = v19;
          *v18 = 136315394;
          if (BYTE4(v36))
          {
            if (BYTE4(v36) == 1)
            {
              v27 = 17219;
            }

            else
            {
              v27 = 4408130;
            }

            if (BYTE4(v36) == 1)
            {
              v28 = 0xE200000000000000;
            }

            else
            {
              v28 = 0xE300000000000000;
            }
          }

          else
          {
            v28 = 0xE200000000000000;
            v27 = 20308;
          }

          v30 = sub_2676B0B84(v27, v28, &v37);

          *(v18 + 4) = v30;
          *(v18 + 12) = 2080;
          v31 = sub_2676B0B84(v22, v24, &v37);

          *(v18 + 14) = v31;
          v32 = "#ReplyMailSceneHostPlan Removing %s recipient with name %s";
          v33 = v26;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v16, v33, v32, v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v19, -1, -1);
          MEMORY[0x26D5FEA80](v18, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v11, v13, a2))
  {

    goto LABEL_16;
  }

  v14 = v11;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v15 = sub_2676CBE4C();
  __swift_project_value_buffer(v15, qword_2801CDC90);

  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315394;
    if (BYTE4(v36))
    {
      if (BYTE4(v36) == 1)
      {
        v20 = 17219;
      }

      else
      {
        v20 = 4408130;
      }

      if (BYTE4(v36) == 1)
      {
        v21 = 0xE200000000000000;
      }

      else
      {
        v21 = 0xE300000000000000;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v20 = 20308;
    }

    v34 = sub_2676B0B84(v20, v21, &v37);

    *(v18 + 4) = v34;
    *(v18 + 12) = 2080;
    v35 = sub_2676B0B84(v14, v13, &v37);

    *(v18 + 14) = v35;
    v32 = "#ReplyMailSceneHostPlan Removing %s recipient with email %s";
    v33 = v17;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}

void sub_267669420()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v0;
  v59 = v3;
  v4 = sub_2676CB48C();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v60 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v61 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  v16 = OUTLINED_FUNCTION_3(v15);
  v57 = v17;
  v58 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v62 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v57 - v32;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v34 = sub_2676CBE4C();
  __swift_project_value_buffer(v34, qword_2801CDC90);
  v35 = sub_2676CBE2C();
  v36 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v36))
  {
    v37 = OUTLINED_FUNCTION_17_3();
    *v37 = 0;
    _os_log_impl(&dword_2675D4000, v35, v36, "#ReplyMailSceneHostPlan making ConfirmationPrompt", v37, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_2676632EC();
  OUTLINED_FUNCTION_0_21();
  sub_26766B3A8(v38, v39);
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v40, v41);
  sub_2676CA3EC();

  (*(v28 + 8))(v33, v26);
  sub_2676CBA6C();
  sub_2676C98BC();
  swift_getKeyPath();
  v42 = v58;
  sub_2676C988C();

  (*(v57 + 8))(v1, v42);
  v43 = *(v2 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_confirmIntentOptions);
  v44 = type metadata accessor for ConfirmSendSceneHostProducer(0);
  v66[3] = v44;
  v66[4] = sub_26766B3A8(&qword_2801CD2D0, type metadata accessor for ConfirmSendSceneHostProducer);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v46 = *(v44 + 24);
  v47 = sub_2676CB18C();
  OUTLINED_FUNCTION_2_6(v47);
  (*(v48 + 16))(boxed_opaque_existential_1 + v46, v59);
  LOBYTE(v42) = sub_2676698D4();
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  v49 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v43;
  *(boxed_opaque_existential_1 + *(v44 + 28)) = v42 & 1;
  *boxed_opaque_existential_1 = v49;
  v50 = sub_2676C9B9C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_2676C9B8C();
  v64 = v50;
  v65 = MEMORY[0x277D5BD58];
  v63 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD228, &unk_2676D1DA0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676698D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_54_5();
  sub_26761F970();
  sub_2676C97FC();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_58_1();
  v8(v7);
  return v10 & 1;
}

uint64_t sub_26766999C()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan__replyMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  return sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);
}

uint64_t sub_267669A18()
{
  v0 = MailSendingSceneHostPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan__replyMessageTask;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for ReplyMailSceneHostPlan()
{
  result = qword_2801CD2A8;
  if (!qword_2801CD2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267669B3C()
{
  sub_267661A74();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_267661AD8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_267669D58()
{
  type metadata accessor for ReplyMailSceneHostPlan();

  return sub_2676C950C();
}

uint64_t sub_267669DCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void sub_267669E20()
{
  OUTLINED_FUNCTION_21_1();
  v161 = v2;
  v3 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  v4 = *(v3 - 8);
  v155 = (v3 - 8);
  v160 = v4;
  v159 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_11_5(v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v9 = OUTLINED_FUNCTION_74_1(v8);
  OUTLINED_FUNCTION_3(v9);
  v156 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v14);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3(v147);
  v148 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v19);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v154);
  v152 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v24);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v25 = OUTLINED_FUNCTION_3(v151);
  v150 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  v164 = v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_1();
  v175 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  v33 = OUTLINED_FUNCTION_3(v32);
  v168 = v34;
  v169 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  v162 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  v174 = v39;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v40 = OUTLINED_FUNCTION_3(v165);
  v167 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4();
  v180 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_4();
  v179 = v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_4();
  v173 = v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_24_1();
  v172 = v50;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v51 = OUTLINED_FUNCTION_3(v163);
  v166 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4();
  v178 = v55;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_4();
  v177 = v57;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_4();
  v176 = v59;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_10_4();
  v171 = v61;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_10_4();
  v170 = v63;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v64);
  v146[12] = v146 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v67 = OUTLINED_FUNCTION_3(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v82 = MEMORY[0x28223BE20](v81);
  v84 = v146 - v83;
  v85 = MEMORY[0x28223BE20](v82);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v86);
  v88 = v146 - v87;
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89 = *(v69 + 8);
  v89(v88, v66);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89(v1, v66);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v90 = OUTLINED_FUNCTION_53_0();
  (v89)(v90);
  sub_26761F9A8();
  KeyPath = swift_getKeyPath();
  sub_2676C97EC();

  v89(v84, v66);
  OUTLINED_FUNCTION_34_7(&v166);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89(KeyPath, v66);
  OUTLINED_FUNCTION_34_7(&v167);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v89(KeyPath, v66);
  OUTLINED_FUNCTION_23_8(&v168);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v92 = OUTLINED_FUNCTION_85_0();
  (v89)(v92);
  OUTLINED_FUNCTION_23_8(&v169);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v93 = OUTLINED_FUNCTION_85_0();
  (v89)(v93);
  OUTLINED_FUNCTION_23_8(&v170);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v94 = OUTLINED_FUNCTION_85_0();
  (v89)(v94);
  OUTLINED_FUNCTION_23_8(&v171);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v95 = OUTLINED_FUNCTION_85_0();
  (v89)(v95);
  OUTLINED_FUNCTION_23_8(&v172);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v96 = OUTLINED_FUNCTION_85_0();
  (v89)(v96);
  OUTLINED_FUNCTION_23_8(&v173);
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_2();

  v97 = OUTLINED_FUNCTION_85_0();
  (v89)(v97);
  OUTLINED_FUNCTION_23_8(&v174);
  sub_26761F9A8();
  swift_getKeyPath();
  v98 = v162;
  OUTLINED_FUNCTION_58_2();

  v99 = OUTLINED_FUNCTION_85_0();
  (v89)(v99);
  OUTLINED_FUNCTION_23_8(&v175);
  sub_26761F9A8();
  swift_getKeyPath();
  v100 = v164;
  OUTLINED_FUNCTION_58_2();

  v101 = OUTLINED_FUNCTION_85_0();
  (v89)(v101);
  OUTLINED_FUNCTION_43_3(&v176);
  sub_26761F970();
  OUTLINED_FUNCTION_23_8(&v177);
  sub_2676633FC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_21();
  sub_26766B3A8(v102, v103);
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v104, v105);
  v106 = v149;
  v107 = v147;
  sub_2676C9A2C();

  OUTLINED_FUNCTION_27_5(&v180);
  v108(v0, v107);
  v109 = *(v166 + 16);
  v110 = v153;
  v111 = v163;
  v109(v153, v176, v163);
  v112 = v155;
  v109(v110 + v155[7], v177, v111);
  v109(v110 + v112[8], v178, v111);
  v113 = *(v167 + 16);
  v114 = v165;
  v113(v110 + v112[9], v179, v165);
  v113(v110 + v112[10], v180, v114);
  v115 = OUTLINED_FUNCTION_73_1(v112[11]);
  v116(v115, v98);
  v117 = v150;
  v118 = OUTLINED_FUNCTION_73_1(v112[12]);
  v119 = v151;
  v120(v118, v100, v151);
  v121 = v112[13];
  v122 = v112;
  v123 = v156;
  v124 = OUTLINED_FUNCTION_73_1(v121);
  v125 = v157;
  v126(v124, v106, v157);
  v127 = v152;
  v128 = OUTLINED_FUNCTION_73_1(v122[14]);
  v129 = v154;
  v130(v128, v89, v154);
  v131 = type metadata accessor for MetricsSnippetEventHandler();
  v132 = *(v131 + 48);
  v133 = *(v131 + 52);
  v134 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2676C958C();
  (*(v123 + 8))(v106, v125);
  (*(v127 + 8))(v89, v129);
  (*(v117 + 8))(v164, v119);
  (*(v168 + 8))(v162, v169);
  v135 = *(v167 + 8);
  v136 = v165;
  v135(v180, v165);
  v135(v179, v136);
  v137 = *(v166 + 8);
  v138 = v163;
  v137(v178, v163);
  v137(v177, v138);
  v137(v176, v138);
  v139 = v158;
  sub_26766B0E4(v110, v158);
  v140 = (*(v160 + 80) + 16) & ~*(v160 + 80);
  v141 = (v159 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
  v142 = swift_allocObject();
  sub_26766B0E4(v139, v142 + v140);
  *(v142 + v141) = v134;
  v180 = sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9C0, &unk_2676D22C0);
  sub_2676CB0DC();
  sub_2676CB18C();
  sub_26766B3A8(&qword_2801CD1E0, MEMORY[0x277D5C900]);
  v143 = MEMORY[0x277D5C970];
  sub_26766B3A8(&qword_2801CD1E8, MEMORY[0x277D5C970]);
  sub_26766B3A8(&qword_2801CD1F0, v143);
  OUTLINED_FUNCTION_9_20();
  sub_26766B3A8(v144, v145);
  sub_2676C9BBC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26766AE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_2676CB05C() + 16);

  if (v4)
  {
    goto LABEL_7;
  }

  v5 = *(sub_2676CB02C() + 16);

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = *(sub_2676CB07C() + 16);

  if (v6 || (v7 = sub_2676CB16C(), v9 = sub_2676632C4(v7, v8), , (v9 & 1) == 0) || (v10 = sub_2676CB09C(), v12 = sub_2676632C4(v10, v11), , (v12 & 1) == 0))
  {
LABEL_7:
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v16 = sub_2676CBE4C();
    __swift_project_value_buffer(v16, qword_2801CDC90);
    v17 = sub_2676CBE2C();
    v18 = sub_2676CC23C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2675D4000, v17, v18, "#modelTransformer returning MailPluginModel", v19, 2u);
      MEMORY[0x26D5FEA80](v19, -1, -1);
    }

    v20 = sub_2676CB18C();
    (*(*(v20 - 8) + 16))(a2, a1, v20);
    v21 = sub_2676C916C();
    swift_storeEnumTagMultiPayload();
    v14 = a2;
    v15 = 0;
    v13 = v21;
  }

  else
  {
    v13 = sub_2676C916C();
    v14 = a2;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
}

uint64_t sub_26766B0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26766B148(uint64_t a1)
{
  v3 = *(type metadata accessor for MailSceneHostStateChangeEventHandler(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2676B2964(a1, v1 + v4, v5);
}

uint64_t sub_26766B21C(uint64_t a1)
{
  v2 = type metadata accessor for ResolveSiriMailMessageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26766B278()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_2676655C0(v3, v4, v5);
}

uint64_t sub_26766B314()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_267665E68(v3, v4, v5);
}

uint64_t sub_26766B3A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_41_4()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 216);

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_62_3()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  v2 = *(v0 - 392);
  v3 = *(v0 - 496);

  return sub_2676C9E5C();
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_67_2()
{
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[25];
}

void OUTLINED_FUNCTION_69_2()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 176);

  sub_267667B18();
}

uint64_t OUTLINED_FUNCTION_82_2()
{
  result = v0;
  v3 = *(v1 - 160);
  v4 = *(v1 - 504);
  return result;
}

uint64_t sub_26766B674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_267671E30(a1, &v6 - v4, &qword_2801CC3D0, &qword_2676D1D80);
  return sub_2676C8D7C();
}

uint64_t sub_26766B71C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2676CB01C();
}

void sub_26766B75C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v2 = sub_2676C9E6C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = sub_2676CBE4C();
  __swift_project_value_buffer(v11, qword_2801CDC90);
  (*(v5 + 16))(v10, v1, v2);
  v12 = sub_2676CBE2C();
  v13 = sub_2676CC23C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    v16 = sub_2676C9E4C();
    v18 = v17;
    v19 = *(v5 + 8);
    v20 = OUTLINED_FUNCTION_65_0();
    v21(v20);
    v22 = sub_2676B0B84(v16, v18, &v26);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_2675D4000, v12, v13, "#ReplyMessageFlow accept(input: Input) returning .yes() for input %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v23 = *(v5 + 8);
    v24 = OUTLINED_FUNCTION_65_0();
    v25(v24);
  }

  sub_2676C974C();
  OUTLINED_FUNCTION_20_1();
}

void sub_26766B950()
{
  OUTLINED_FUNCTION_21_1();
  v352 = v0;
  v351[1] = v1;
  v344 = sub_2676C9E3C();
  v2 = OUTLINED_FUNCTION_3(v344);
  v343 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v6);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  v7 = OUTLINED_FUNCTION_3(v333);
  v331 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v12);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD378, &qword_2676D26D0);
  OUTLINED_FUNCTION_3(v340);
  v339 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v19 = OUTLINED_FUNCTION_4_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v28);
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD380, &qword_2676D26D8);
  OUTLINED_FUNCTION_3(v336);
  v335[1] = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v33);
  v347 = sub_2676C8BFC();
  v34 = OUTLINED_FUNCTION_3(v347);
  v346 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_4_1(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  OUTLINED_FUNCTION_4_1(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v56 = OUTLINED_FUNCTION_4_1(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v60);
  v318 = sub_2676C9BFC();
  v61 = OUTLINED_FUNCTION_3(v318);
  v317 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v65);
  Mail = type metadata accessor for GetMail();
  v66 = OUTLINED_FUNCTION_2_6(Mail);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v69);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEE0, &qword_2676D13A0);
  OUTLINED_FUNCTION_3(v324);
  v323 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v74);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEE8, &qword_2676D13A8);
  OUTLINED_FUNCTION_3(v326);
  v325 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF08, &unk_2676D26E0);
  v81 = OUTLINED_FUNCTION_3(v80);
  v348 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v85);
  v87 = &v304 - v86;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF10, &unk_2676D13D0);
  v88 = OUTLINED_FUNCTION_3(v349);
  v90 = v89;
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v94);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF18, &unk_2676D26F0);
  OUTLINED_FUNCTION_3(v316);
  v315 = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v99);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF20, &unk_2676D13E0);
  OUTLINED_FUNCTION_3(v311);
  v310 = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF28, &unk_2676D2700);
  OUTLINED_FUNCTION_3(v105);
  v307 = v106;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v109);
  v111 = &v304 - v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF30, &unk_2676D13F0);
  OUTLINED_FUNCTION_3(v112);
  v308 = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v116);
  v118 = &v304 - v117;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF38, &unk_2676D2710);
  OUTLINED_FUNCTION_3(v314);
  v313 = v119;
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v123);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v124 = sub_2676CBE4C();
  __swift_project_value_buffer(v124, qword_2801CDC90);
  v125 = sub_2676CBE2C();
  v126 = sub_2676CC23C();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_2675D4000, v125, v126, "#ReplyMessageFlow executing action", v127, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v128 = v352;
  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  v129 = *(v128 + 16);
  switch(v129 >> 62)
  {
    case 1uLL:
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD370, &unk_2676D26C0);
      v161 = swift_projectBox();
      v162 = (v161 + *(v160 + 48));
      v163 = *v162;
      v164 = v162[1];
      v165 = v346;
      v166 = (v346 + 16);
      v167 = *(v346 + 16);
      v168 = v347;
      v167(v351[0], v161, v347);
      v169 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_replyOption);
      v344 = v129;
      sub_26766FF60(v129);

      v170 = v350;
      sub_267697B4C(v169, v350);
      sub_2676C919C();
      if (sub_2676C918C())
      {
        sub_2676149CC(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider, &v363);
        v171 = v345;
        v167(v345, v170, v168);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v172, v173, v174, v168);
        v175 = OUTLINED_FUNCTION_53_5(OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_globals);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
        v176 = OUTLINED_FUNCTION_7_13(v175);
        v177 = v166;
        sub_2676C9B8C();
        OUTLINED_FUNCTION_92_0();
        v178 = type metadata accessor for ReplyMailSceneHostPlan();
        v179 = OUTLINED_FUNCTION_7_13(v178);
        sub_26766FFC0(&v363, v171, v163, v164, v177, &v360, v176, &v356, v179, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314);
        *&v363 = v180;
        v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF60, &qword_2676D1410);
        OUTLINED_FUNCTION_7_13(v181);
        OUTLINED_FUNCTION_51_6();
        *&v363 = sub_2676C94CC();
        OUTLINED_FUNCTION_31_4();
        v183 = sub_2676148C4(v182, &qword_2801CCF60, &qword_2676D1410);

        OUTLINED_FUNCTION_34_8();
        OUTLINED_FUNCTION_23_8(&v358);
        sub_2676C938C();

        v184 = v336;
        *(&v361 + 1) = v336;
        *&v363 = v181;
        *(&v363 + 1) = v183;
        OUTLINED_FUNCTION_1_20();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(&v360);
        OUTLINED_FUNCTION_9_21(&v359);
        v185();
        sub_2676C960C();
        __swift_destroy_boxed_opaque_existential_1(&v360);
        OUTLINED_FUNCTION_24_8();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(&v363);
        (*(v181 + 8))(&qword_2676D1410, v184);
      }

      else
      {
        if (v164)
        {
          v186 = v337;
          sub_2676C8EAC();
          v187 = 0;
        }

        else
        {
          v187 = 1;
          v186 = v337;
        }

        v188 = sub_2676C8EBC();
        __swift_storeEnumTagSinglePayload(v186, v187, 1, v188);
        sub_2676149CC(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider, &v363);
        v167(v345, v170, v168);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v189, v190, v191, v168);
        sub_267671E30(v186, v334, &qword_2801CBFE0, &qword_2676D1070);
        v192 = OUTLINED_FUNCTION_53_5(OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_globals);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
        OUTLINED_FUNCTION_7_13(v192);
        v193 = v166;
        sub_2676C9B8C();
        OUTLINED_FUNCTION_92_0();
        v194 = type metadata accessor for ReplyMailPlan();
        OUTLINED_FUNCTION_7_13(v194);
        sub_267670F48();
        *&v363 = v195;
        v196 = OUTLINED_FUNCTION_8_10();
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(v196, v197);
        OUTLINED_FUNCTION_7_13(v198);
        OUTLINED_FUNCTION_51_6();
        *&v363 = sub_2676C94CC();
        OUTLINED_FUNCTION_31_4();
        v170 = v350;
        v200 = sub_2676148C4(v199, &qword_2801CCF50, &qword_2676D1408);

        OUTLINED_FUNCTION_34_8();
        OUTLINED_FUNCTION_40_2(&v361);
        sub_2676C938C();

        *(&v361 + 1) = v340;
        *&v363 = v198;
        *(&v363 + 1) = v200;
        OUTLINED_FUNCTION_1_20();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(&v360);
        OUTLINED_FUNCTION_23_8(&v361 + 8);
        (*(v201 + 16))();
        sub_2676C960C();
        __swift_destroy_boxed_opaque_existential_1(&v360);
        OUTLINED_FUNCTION_24_8();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(&v363);
        v202 = *(v198 + 8);
        v203 = OUTLINED_FUNCTION_28_3();
        v204(v203);
        sub_2675EB7EC(v186, &qword_2801CBFE0, &qword_2676D1070);
      }

      sub_2676C961C();
      sub_2676C961C();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v355);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(&v363);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v355);
      OUTLINED_FUNCTION_36_9();
      v205 = *(v165 + 8);
      v205(v170, v168);
      v205(v351[0], v168);
      goto LABEL_17;
    case 2uLL:
      v142 = *((v129 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v143 = *((v129 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_26766FF60(*(v128 + 16));

      v144 = v342;
      OUTLINED_FUNCTION_28_3();
      sub_2676C9E2C();
      v145 = v344;
      *(&v364 + 1) = v344;
      v365 = MEMORY[0x277D5C0F0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v363);
      v147 = v343;
      (*(v343 + 16))(boxed_opaque_existential_1, v144, v145);
      OUTLINED_FUNCTION_24_8();
      sub_2676C961C();
      OUTLINED_FUNCTION_7_20();
      sub_2676C961C();
      OUTLINED_FUNCTION_18_9();
      sub_2676C961C();
      OUTLINED_FUNCTION_36_9();
      (*(v147 + 8))(v144, v145);
      v148 = v129;
      goto LABEL_18;
    case 3uLL:
      switch(__ROR8__(v129 + 0x4000000000000000, 3))
      {
        case 1:
          v237 = sub_2676C9FCC();
          v238 = OUTLINED_FUNCTION_7_13(v237);

          *&v363 = sub_2676C9FDC();

          v239 = MEMORY[0x277D5C1C8];
          OUTLINED_FUNCTION_34_8();
          v240 = v309;
          sub_2676C938C();

          OUTLINED_FUNCTION_41_5(&v337);
          *&v360 = v237;
          *(&v360 + 1) = v239;
          OUTLINED_FUNCTION_1_20();
          v241 = swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_43_4(v241);
          OUTLINED_FUNCTION_40_2(&v336);
          v243 = *(v242 + 16);
          OUTLINED_FUNCTION_57_7();
          v244();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
          goto LABEL_41;
        case 2:
          v211 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput);
          v212 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_globals);
          v365 = 0;
          v363 = 0u;
          v364 = 0u;
          OpaqueTypeConformance2 = 0;
          v360 = 0u;
          v361 = 0u;
          v105 = &unk_2676D27D0;
          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD000, &unk_2676D27D0);
          v213 = OUTLINED_FUNCTION_7_13(v155);

          v214 = v212;
          v156 = v213;
          sub_2676A2C54();
          *&v363 = v215;
          v216 = sub_2676148C4(&qword_2801CD008, &qword_2801CD000, &unk_2676D27D0);

          OUTLINED_FUNCTION_34_8();
          OUTLINED_FUNCTION_23_8(&v341);
          sub_2676C938C();

          OUTLINED_FUNCTION_41_5(&v343);
          *&v360 = v155;
          *(&v360 + 1) = v216;
          OUTLINED_FUNCTION_1_20();
          v217 = swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_43_4(v217);
          OUTLINED_FUNCTION_9_21(&v342);
          v218();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          goto LABEL_23;
        case 3:
          v220 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput);
          v219 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput + 8);
          v221 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isReadInput);
          v222 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v223 = Mail;
          v224 = v319;
          sub_267671E30(v128 + v222, v319 + Mail[6], &qword_2801CBFE8, &unk_2676CD9E0);
          v225 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          sub_267671E30(v128 + v225, v224 + v223[7], &qword_2801CC380, &unk_2676CEF40);
          LOBYTE(v225) = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput);
          v226 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isMostRecent);
          v227 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_shouldResolveOnscreenEntity);
          v228 = v224 + v223[11];
          *(v228 + 32) = 0;
          *v228 = 0u;
          *(v228 + 16) = 0u;
          v229 = v224 + v223[12];
          *(v229 + 24) = &type metadata for MailFeatureFlags;
          *(v229 + 32) = &off_2878ADBB0;
          sub_2676149CC(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider, v224 + v223[14]);
          *v224 = v220;
          *(v224 + 8) = v219;
          *(v224 + 16) = v221;
          *(v224 + v223[8]) = v225;
          *(v224 + v223[9]) = v226;
          *(v224 + v223[10]) = v227;
          *(v224 + v223[13]) = 0;
          (*(v317 + 104))(v321, *MEMORY[0x277D5BDF0], v318);
          v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCFB0, &unk_2676D27C0);
          OUTLINED_FUNCTION_7_13(v230);
          sub_267671D9C(&qword_2801CCFB8, type metadata accessor for GetMail);

          *&v363 = sub_2676C9F5C();

          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCFC0, &qword_2676D1500);
          v105 = sub_2676148C4(&qword_2801CCFC8, &qword_2801CCFB0, &unk_2676D27C0);
          OUTLINED_FUNCTION_34_8();
          v231 = v322;
          sub_2676C942C();

          *&v363 = v230;
          *(&v363 + 1) = v155;
          *&v364 = v105;
          v232 = OUTLINED_FUNCTION_3_20();
          OUTLINED_FUNCTION_23_8(&v352);
          v233 = v324;
          v156 = v231;
          sub_2676C941C();

          OUTLINED_FUNCTION_27_5(v351);
          v234(v231, v233);
          OUTLINED_FUNCTION_41_5(&v354);
          *&v360 = v233;
          *(&v360 + 1) = v155;
          *&v361 = v232;
          v235 = OUTLINED_FUNCTION_4_21();
          OUTLINED_FUNCTION_43_4(v235);
          OUTLINED_FUNCTION_9_21(&v353);
          v236();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
          goto LABEL_25;
        case 4:
          v351[0] = v80;
          v206 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput + 8);
          v350 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput);
          v207 = *(v128 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput);
          OUTLINED_FUNCTION_40_2(&v344);
          sub_267698E74(v207);
          v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v111, 1, v208);
          v347 = v206;
          if (EnumTagSinglePayload == 1)
          {

            sub_2675EB7EC(v111, &qword_2801CC168, &unk_2676CF510);
            v210 = 0;
            v346 = 0;
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_21_9();
            sub_267671D9C(v259, v260);

            OUTLINED_FUNCTION_57_7();
            v261 = sub_2676CA89C();
            v263 = v262;

            OUTLINED_FUNCTION_14_2(v208);
            (*(v264 + 8))(v111, v208);
            OUTLINED_FUNCTION_56_2();
            if (v263)
            {
              *&v363 = v261;
              *(&v363 + 1) = v263;
              *&v360 = 39;
              *(&v360 + 1) = 0xE100000000000000;
              v265 = sub_2676C911C();
              v345 = v261;
              v266 = v306;
              __swift_storeEnumTagSinglePayload(v306, 1, 1, v265);
              sub_2675E69E4();
              OUTLINED_FUNCTION_17_13();
              sub_2676CC36C();
              v268 = v267;
              sub_2675EB7EC(v266, &qword_2801CCED8, &unk_2676D1390);
              if (v268)
              {
                v346 = v263;
                v210 = v345;
              }

              else
              {
                *&v363 = v345;
                *(&v363 + 1) = v263;
                v210 = sub_2676CC38C();
                v270 = v269;

                v346 = v270;
              }
            }

            else
            {
              v210 = 0;
              v346 = 0;
            }
          }

          sub_267698E74(v207);
          v271 = __swift_getEnumTagSinglePayload(v105, 1, v208);
          v305 = v90;
          if (v271 == 1)
          {
            v272 = v210;
            v273 = &qword_2801CC168;
            v274 = &unk_2676CF510;
            v275 = v105;
LABEL_38:
            sub_2675EB7EC(v275, v273, v274);
            v280 = 0;
            v281 = 0;
            goto LABEL_40;
          }

          swift_getKeyPath();
          OUTLINED_FUNCTION_21_9();
          sub_267671D9C(v276, v277);
          sub_267671D9C(&qword_2801CC2D0, MEMORY[0x277D5C640]);
          OUTLINED_FUNCTION_57_7();
          sub_2676CA87C();

          OUTLINED_FUNCTION_14_2(v208);
          (*(v278 + 8))(v105, v208);
          v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
          v272 = v210;
          if (__swift_getEnumTagSinglePayload(v111, 1, v279) == 1)
          {
            v273 = &qword_2801CC068;
            v274 = &unk_2676D4E00;
            v275 = v111;
            goto LABEL_38;
          }

          swift_getKeyPath();
          v280 = sub_2676CA89C();
          v281 = v282;

          OUTLINED_FUNCTION_14_2(v279);
          (*(v283 + 8))(v111, v279);
LABEL_40:
          v284 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange;
          v285 = v352;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v286 = v330;
          sub_267671E30(v285 + v284, v330, &qword_2801CC380, &unk_2676CEF40);
          v287 = *(v285 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput);
          v288 = type metadata accessor for NoResults();
          *(&v364 + 1) = v288;
          v289 = sub_267671D9C(&qword_2801CCFA8, type metadata accessor for NoResults);
          v290 = OUTLINED_FUNCTION_43_4(v289);
          v291 = v347;
          *v290 = v350;
          v290[1] = v291;
          v292 = v346;
          v290[2] = v272;
          v290[3] = v292;
          v290[4] = v280;
          v290[5] = v281;
          sub_267671D50(v286, v290 + v288[7], &qword_2801CC380, &unk_2676CEF40);
          *(v290 + v288[8]) = v287 & 1;
          *(v290 + v288[9]) = 0;
          v293 = sub_2676C9EFC();
          OUTLINED_FUNCTION_7_13(v293);
          OUTLINED_FUNCTION_51_6();
          *&v363 = sub_2676C9F0C();
          v237 = sub_2676C9EEC();

          v294 = MEMORY[0x277D5C188];
          OUTLINED_FUNCTION_34_8();
          v295 = v328;
          sub_2676C942C();

          *&v363 = v293;
          *(&v363 + 1) = v237;
          *&v364 = v294;
          v296 = OUTLINED_FUNCTION_3_20();
          v240 = v329;
          v297 = v351[0];
          v238 = v295;
          sub_2676C941C();

          OUTLINED_FUNCTION_27_5(&v365);
          v298(v295, v297);
          OUTLINED_FUNCTION_41_5(&v366);
          *&v360 = v297;
          *(&v360 + 1) = v237;
          *&v361 = v296;
          v299 = OUTLINED_FUNCTION_4_21();
          OUTLINED_FUNCTION_43_4(v299);
          OUTLINED_FUNCTION_40_2(&v332);
          v301 = *(v300 + 16);
          OUTLINED_FUNCTION_57_7();
          v302();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
LABEL_41:
          __swift_destroy_boxed_opaque_existential_1(&v363);
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          (*(v237 + 8))(v240, v238);
LABEL_19:
          sub_2676C961C();
          __swift_destroy_boxed_opaque_existential_1(&v363);
          OUTLINED_FUNCTION_20_1();
          return;
        case 5:
          v245 = v327;
          sub_2676C9F8C();
          *(&v364 + 1) = &type metadata for Cancelled;
          v365 = sub_26765170C();
          v246 = sub_2676C9EFC();
          OUTLINED_FUNCTION_7_13(v246);
          OUTLINED_FUNCTION_51_6();
          v247 = sub_2676C9F0C();
          *(&v364 + 1) = v246;
          v365 = MEMORY[0x277D5C188];
          *&v363 = v247;
          OUTLINED_FUNCTION_23_8(&v356 + 8);
          v248 = v333;
          sub_2676C9F6C();
          v249 = v331;
          v250 = *(v331 + 8);
          v250(v245, v248);
          __swift_destroy_boxed_opaque_existential_1(&v363);
          *(&v364 + 1) = v248;
          v251 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
          v252 = OUTLINED_FUNCTION_43_4(v251);
          (*(v249 + 16))(v252, v105, v248);
          OUTLINED_FUNCTION_24_8();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
          __swift_destroy_boxed_opaque_existential_1(&v363);
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          v253 = OUTLINED_FUNCTION_65_0();
          (v250)(v253);
          goto LABEL_19;
        case 6:
          v254 = v332;
          sub_2676C9F8C();
          v255 = v333;
          *(&v364 + 1) = v333;
          v256 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
          v257 = OUTLINED_FUNCTION_43_4(v256);
          v258 = v331;
          (*(v331 + 16))(v257, v254, v255);
          OUTLINED_FUNCTION_24_8();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          (*(v258 + 8))(v254, v255);
          goto LABEL_19;
        default:
          v149 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory;
          *(&v364 + 1) = &unk_2878AFC00;
          v365 = sub_267651BE0();
          *&v363 = swift_allocObject();
          sub_2676149CC(v128 + v149, v363 + 16);
          v150 = sub_2676C9EFC();
          OUTLINED_FUNCTION_7_13(v150);
          OUTLINED_FUNCTION_51_6();
          *&v363 = sub_2676C9F0C();
          v151 = sub_2676C9EEC();
          v152 = MEMORY[0x277D5C188];
          sub_2676C937C();

          *&v363 = v150;
          *(&v363 + 1) = v151;
          *&v364 = v152;
          v153 = swift_getOpaqueTypeConformance2();
          sub_2676C942C();

          OUTLINED_FUNCTION_27_5(&v334);
          v154(v111, v105);

          *&v363 = v105;
          *(&v363 + 1) = v151;
          *&v364 = v153;
          v155 = OUTLINED_FUNCTION_3_20();
          OUTLINED_FUNCTION_23_8(&v338);
          v156 = v118;
          sub_2676C941C();

          OUTLINED_FUNCTION_27_5(v335);
          v157(v118, v112);
          OUTLINED_FUNCTION_41_5(&v340);
          *&v360 = v112;
          *(&v360 + 1) = v151;
          *&v361 = v155;
          v158 = OUTLINED_FUNCTION_4_21();
          OUTLINED_FUNCTION_43_4(v158);
          OUTLINED_FUNCTION_9_21(&v339);
          v159();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
LABEL_23:
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
LABEL_25:
          __swift_destroy_boxed_opaque_existential_1(&v363);
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          (*(v155 + 8))(v105, v156);
          goto LABEL_19;
      }

    default:
      v130 = *(v129 + 16);
      v131 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory;
      *(&v364 + 1) = &unk_2878AFC80;
      v365 = sub_267651B74();
      v132 = swift_allocObject();
      *&v363 = v132;
      sub_2676149CC(v128 + v131, v132 + 24);
      *(v132 + 16) = v130;
      v133 = sub_2676C9EFC();
      OUTLINED_FUNCTION_7_13(v133);
      swift_retain_n();
      sub_26766FF60(v129);
      v134 = sub_2676C9F0C();
      v344 = v129;
      *&v363 = v134;
      v135 = sub_2676C9EEC();

      v136 = MEMORY[0x277D5C188];
      OUTLINED_FUNCTION_34_8();
      sub_2676C942C();

      *&v363 = v133;
      *(&v363 + 1) = v135;
      *&v364 = v136;
      v137 = OUTLINED_FUNCTION_3_20();
      v138 = v341;
      sub_2676C941C();

      OUTLINED_FUNCTION_27_5(&v365);
      v139(v87, v80);
      OUTLINED_FUNCTION_41_5(&v366);
      *&v360 = v80;
      *(&v360 + 1) = v135;
      *&v361 = v137;
      v140 = OUTLINED_FUNCTION_4_21();
      v141 = OUTLINED_FUNCTION_43_4(v140);
      (*(v90 + 16))(v141, v138, v87);
      OUTLINED_FUNCTION_24_8();
      sub_2676C960C();
      OUTLINED_FUNCTION_7_20();
      sub_2676C961C();
      OUTLINED_FUNCTION_18_9();
      sub_2676C961C();
      OUTLINED_FUNCTION_14_15();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(&v363);
      OUTLINED_FUNCTION_18_9();
      sub_2676C961C();

      OUTLINED_FUNCTION_36_9();
      (*(v90 + 8))(v138, v87);
LABEL_17:
      v148 = v344;
LABEL_18:
      sub_26766FF90(v148);
      goto LABEL_19;
  }
}

unint64_t sub_26766DBA0(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = sub_2676CBE4C();
  __swift_project_value_buffer(v5, qword_2801CDC90);
  sub_26766FF60(v4);
  sub_26766FF60(a1);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  sub_26766FF90(v4);
  sub_26766FF90(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    sub_26766FF60(v4);
    v9 = sub_26766F5FC();
    v11 = v10;
    sub_26766FF90(v4);
    v12 = sub_2676B0B84(v9, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_26766F5FC();
    v15 = sub_2676B0B84(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2675D4000, v6, v7, "#ReplyMessageFlow change state from: %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
    sub_26766FF90(v4);
  }

  else
  {

    sub_26766FF90(v4);
  }

  *v2 = a1;

  return sub_26766FF60(a1);
}

uint64_t sub_26766DD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-1] - v4;
  sub_267671E30(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, &v18[-1] - v4, &qword_2801CC1E8, &qword_2676CF570);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
  __swift_getEnumTagSinglePayload(v5, 1, v6);
  v7 = sub_2676C9E0C();
  sub_2675EB7EC(v5, &qword_2801CC1E8, &qword_2676CF570);

  v8 = sub_2676C9E1C();
  v9 = MEMORY[0x277D5C060];
  v19 = v7;
  v20 = MEMORY[0x277D5C060];
  v18[0] = v8;
  v10 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  v11 = *(*(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput) + 16);

  v12 = sub_2676C9E1C();
  v19 = v7;
  v20 = v9;
  v18[0] = v12;
  v13 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2676CDE10;
  *(v14 + 32) = v10;
  *(v14 + 40) = v13;
  v15 = MEMORY[0x26D5FB6C0]();

  return v15;
}

uint64_t sub_26766DF64(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolveDateTime();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267671E30(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, v10, &qword_2801CC1E8, &qword_2676CF570);
  sub_2676149CC(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeResolver, &v10[v7[5]]);
  v10[v7[6]] = *(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput);
  v10[v7[7]] = 0;
  (*(v3 + 104))(v6, *MEMORY[0x277D5BDF0], v2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD040, &unk_2676D1530);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_267671D9C(&qword_2801CD048, type metadata accessor for ResolveDateTime);
  v20[4] = sub_2676C9F5C();
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD050, &qword_2676D2800);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC380, &unk_2676CEF40);
  v15 = sub_2676148C4(&qword_2801CD058, &qword_2801CD040, &unk_2676D1530);
  v20[1] = v11;
  v20[2] = v14;
  v20[3] = v15;
  v21[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v21);

  sub_2676C942C();

  v16 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2676CDE20;
  *(v17 + 32) = v16;
  v18 = MEMORY[0x26D5FB6C0]();

  return v18;
}

void sub_26766E2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange;
  swift_beginAccess();
  sub_267671DE4(a1, a2 + v8, &qword_2801CC380, &unk_2676CEF40);
  swift_endAccess();
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v9 = sub_2676CBE4C();
  __swift_project_value_buffer(v9, qword_2801CDC90);

  v10 = sub_2676CBE2C();
  v11 = sub_2676CC23C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    sub_267671E30(a2 + v8, v7, &qword_2801CC380, &unk_2676CEF40);
    v14 = sub_2676CBFBC();
    v16 = sub_2676B0B84(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2675D4000, v10, v11, "#ReplyMessageFlow resolved dateTime %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D5FEA80](v13, -1, -1);
    MEMORY[0x26D5FEA80](v12, -1, -1);
  }
}

uint64_t sub_26766E4B4(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolveSender();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v10[*(v7 + 20)];
  sub_267698E74(*(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput));
  *v10 = 0;
  v10[*(v7 + 24)] = 0;
  (*(v3 + 104))(v6, *MEMORY[0x277D5BDF0], v2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD020, &unk_2676D1520);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_267671D9C(&qword_2801CD028, type metadata accessor for ResolveSender);
  v21[4] = sub_2676C9F5C();
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD030, &unk_2676D27F0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v16 = sub_2676148C4(&qword_2801CD038, &qword_2801CD020, &unk_2676D1520);
  v21[1] = v12;
  v21[2] = v15;
  v21[3] = v16;
  v22[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v22);

  sub_2676C942C();

  v17 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2676CDE20;
  *(v18 + 32) = v17;
  v19 = MEMORY[0x26D5FB6C0]();

  return v19;
}

uint64_t sub_26766E7BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_2676C8C8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267671E30(a1, v10, &qword_2801CBFE8, &unk_2676CD9E0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2675EB7EC(v10, &qword_2801CBFE8, &unk_2676CD9E0);
    swift_beginAccess();
    sub_26766DBA0(0xC000000000000010);
    return swift_endAccess();
  }

  else
  {
    v26 = v4;
    (*(v12 + 32))(v15, v10, v11);
    (*(v12 + 16))(v8, v15, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    v17 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender;
    swift_beginAccess();
    sub_267671E7C(v8, a2 + v17, &qword_2801CBFE8, &unk_2676CD9E0);
    swift_endAccess();
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v18 = sub_2676CBE4C();
    __swift_project_value_buffer(v18, qword_2801CDC90);

    v19 = sub_2676CBE2C();
    v20 = sub_2676CC23C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136380675;
      sub_267671E30(a2 + v17, v8, &qword_2801CBFE8, &unk_2676CD9E0);
      v23 = sub_2676CBFBC();
      v25 = sub_2676B0B84(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2675D4000, v19, v20, "#ReplyMessageFlow resolved sender %{private}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D5FEA80](v22, -1, -1);
      MEMORY[0x26D5FEA80](v21, -1, -1);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_26766EB60(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a2 + 16) != 0xC000000000000010)
  {
    swift_beginAccess();
    sub_26766DBA0(0xC000000000000018);
    return swift_endAccess();
  }

  return result;
}

void sub_26766EBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_2676C8C8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(a1 + 8))
  {
    v43 = *a1;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
    if (swift_dynamicCast())
    {
      v19 = v40;
      v18 = v41;
      if (v42 == 1)
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v20 = sub_2676CBE4C();
        __swift_project_value_buffer(v20, qword_2801CDC90);
        v21 = sub_2676CBE2C();
        v22 = sub_2676CC23C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_2675D4000, v21, v22, "#ReplyMessageFlow requested sender does not have email handle", v23, 2u);
          MEMORY[0x26D5FEA80](v23, -1, -1);
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v19;
        swift_beginAccess();
        sub_267651D60(v19, v18, 1);
        sub_26766DBA0(v24);
        swift_endAccess();

        sub_267651D40(v19, v18, 1);
        return;
      }

      sub_267651D40(v40, v41, v42);
    }

    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v30 = sub_2676CBE4C();
    __swift_project_value_buffer(v30, qword_2801CDC90);
    v31 = v16;
    v32 = sub_2676CBE2C();
    v33 = sub_2676CC26C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = sub_2676CC5FC();
      v38 = v37;
      sub_267651D34(v16, 1);
      v39 = sub_2676B0B84(v36, v38, &v40);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2675D4000, v32, v33, "#ReplyMessageFlow error from ResolveRecipientsFlow: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D5FEA80](v35, -1, -1);
      MEMORY[0x26D5FEA80](v34, -1, -1);
    }

    else
    {

      sub_267651D34(v16, 1);
    }
  }

  else
  {
    sub_267698E44(*a1);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_2675EB7EC(v10, &qword_2801CBFE8, &unk_2676CD9E0);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      (*(v12 + 16))(v8, v15, v11);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
      v25 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender;
      swift_beginAccess();
      sub_267671E7C(v8, a2 + v25, &qword_2801CBFE8, &unk_2676CD9E0);
      swift_endAccess();
      if (qword_2801CBAA0 != -1)
      {
        swift_once();
      }

      v26 = sub_2676CBE4C();
      __swift_project_value_buffer(v26, qword_2801CDC90);
      v27 = sub_2676CBE2C();
      v28 = sub_2676CC23C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2675D4000, v27, v28, "#ReplyMessageFlow resolved sender", v29, 2u);
        MEMORY[0x26D5FEA80](v29, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
    }

    swift_beginAccess();
    sub_26766DBA0(0xC000000000000018);
    swift_endAccess();
  }
}

uint64_t sub_26766F1B4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED0, &unk_2676D1380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_267698F3C(*a1);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2675EB7EC(v7, &qword_2801CCED0, &unk_2676D1380);
    swift_beginAccess();
    sub_26766DBA0(0xC000000000000020);
    return swift_endAccess();
  }

  else
  {
    sub_267671D50(v7, v14, &qword_2801CC3D8, &unk_2676CEC00);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD370, &unk_2676D26C0);
    v17 = swift_allocBox();
    v19 = v18;
    v20 = (v18 + *(v16 + 48));
    sub_267671E30(v14, v12, &qword_2801CC3D8, &unk_2676CEC00);
    v21 = *&v12[*(v8 + 48) + 8];

    v22 = sub_2676C8BFC();
    (*(*(v22 - 8) + 32))(v19, v12, v22);
    v23 = *(a2 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_messageBodyPayload + 8);
    *v20 = *(a2 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_messageBodyPayload);
    v20[1] = v23;
    swift_beginAccess();

    sub_26766DBA0(v17 | 0x4000000000000000);
    swift_endAccess();

    return sub_2675EB7EC(v14, &qword_2801CC3D8, &unk_2676CEC00);
  }
}

uint64_t sub_26766F43C()
{
  OUTLINED_FUNCTION_70();
  sub_26766DBA0(0xC000000000000030);
  return swift_endAccess();
}

uint64_t sub_26766F488()
{
  OUTLINED_FUNCTION_92_0();
  v1 = sub_2676C9CCC();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (swift_dynamicCast())
  {
    v8 = *(v4 + 8);
    v9 = OUTLINED_FUNCTION_65_0();
    v10(v9);
    OUTLINED_FUNCTION_70();
    sub_26766DBA0(0xC000000000000028);
    return swift_endAccess();
  }

  else
  {
    v12 = swift_allocObject();
    swift_getErrorValue();
    *(v12 + 16) = sub_2676CC5FC();
    *(v12 + 24) = v13;
    OUTLINED_FUNCTION_70();
    sub_26766DBA0(v12 | 0x8000000000000000);
    swift_endAccess();
  }
}

unint64_t sub_26766F5FC()
{
  OUTLINED_FUNCTION_92_0();
  v1 = sub_2676C8BFC();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_2_6(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  switch(v0 >> 62)
  {
    case 1uLL:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD370, &unk_2676D26C0);
      v24 = swift_projectBox();
      v25 = (v24 + *(v23 + 48));
      v27 = *v25;
      v26 = v25[1];
      (*(v4 + 16))(v9, v24, v1);
      v31 = 0;
      v32 = 0xE000000000000000;

      sub_2676CC3FC();
      MEMORY[0x26D5FDD00](0x4D6F54796C706572, 0xEF28656761737365);
      sub_2676CC49C();
      MEMORY[0x26D5FDD00](0xD000000000000010, 0x80000002676D74C0);
      v30[0] = v27;
      v30[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
      v28 = sub_2676CBFBC();
      MEMORY[0x26D5FDD00](v28);

      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      v22 = v31;
      (*(v4 + 8))(v9, v1);
      break;
    case 2uLL:
      v20 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v31 = 0x28726F727265;
      v32 = 0xE600000000000000;
      MEMORY[0x26D5FDD00](v20, v21);
      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      goto LABEL_4;
    case 3uLL:
      v22 = 0x6E4964656B636F6CLL;
      switch(__ROR8__(v0 + 0x4000000000000000, 3))
      {
        case 1:
          v22 = 0xD000000000000016;
          break;
        case 2:
          v22 = 0x4365766C6F736572;
          break;
        case 3:
          v22 = 0x6C69614D746567;
          break;
        case 4:
          v22 = 0x746C757365526F6ELL;
          break;
        case 5:
          v22 = 0x656C6C65636E6163;
          break;
        case 6:
          v22 = 1701736292;
          break;
        default:
          return v22;
      }

      break;
    default:
      v16 = *(v0 + 16);
      v31 = 0;
      v32 = 0xE000000000000000;

      sub_2676CC3FC();

      v31 = 0xD00000000000001ELL;
      v32 = 0x80000002676D6490;
      sub_2676CB35C();
      v17 = sub_2676CC2EC();
      v19 = v18;
      sub_2675EB7EC(v15, &qword_2801CBFD0, &qword_2676CDEA0);
      MEMORY[0x26D5FDD00](v17, v19);

LABEL_4:
      v22 = v31;
      break;
  }

  return v22;
}

uint64_t sub_26766FA0C()
{
  sub_26766FF90(*(v0 + 16));
  v1 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow__replyMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender, &qword_2801CBFE8, &unk_2676CD9E0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory));
  v5 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput + 8);

  v6 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_messageBodyPayload + 8);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange, &qword_2801CC380, &unk_2676CEF40);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeResolver));

  return v0;
}

uint64_t sub_26766FB50()
{
  sub_26766FA0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ReplyMessageFlow()
{
  result = qword_2801CD360;
  if (!qword_2801CD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26766FBFC()
{
  sub_267651360(319, &qword_2801CD1C8, &qword_2801CC628, &unk_2676CF530, MEMORY[0x277D5B9C8]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2675F9EB0();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_267651360(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_267651360(319, &qword_2801CCE68, &qword_2801CC1F0, &unk_2676CE100, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal16ReplyMessageFlowC5StateO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26766FE38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26766FE8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_26766FEEC(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_26766FF60(unint64_t result)
{
  switch(result >> 62)
  {
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_26766FF90(unint64_t result)
{
  switch(result >> 62)
  {
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

void sub_26766FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (**a21)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_21_1();
  v23 = v22;
  v161 = v25;
  v163 = v24;
  v27 = v26;
  v149 = v28;
  v144 = v29;
  v159 = v30;
  v32 = v31;
  v33 = a21;
  v167 = sub_2676C8C8C();
  v34 = OUTLINED_FUNCTION_3(v167);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_5();
  v165 = v37;
  v166 = sub_2676CB14C();
  v38 = OUTLINED_FUNCTION_3(v166);
  v168 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v139 = v42;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_24_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v46 = OUTLINED_FUNCTION_3(v45);
  v145 = v47;
  v146 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4();
  v143 = v50;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_4();
  v142 = v52;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_24_1();
  v141 = v54;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v157);
  v153 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_1();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v59 = OUTLINED_FUNCTION_3(v155);
  v152 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_24_1();
  v156 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v68 = OUTLINED_FUNCTION_4_1(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_4();
  v160 = v71;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v72);
  v73 = OUTLINED_FUNCTION_64_3();
  v74 = OUTLINED_FUNCTION_3(v73);
  v147 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1_5();
  v158 = v78;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_25_11();
  sub_267671D9C(v79, v80);
  sub_2676C97BC();
  *(a21 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_confirmIntentOptions) = 1;
  v154 = v73;
  __swift_storeEnumTagSinglePayload(a21 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo, 1, 1, v73);
  v150 = v27;
  sub_267671E30(v27, v177, &qword_2801CC6A8, &unk_2676CF5F0);
  v151 = v32;
  sub_2676149CC(v32, v176);
  v175 = 0;
  memset(v174, 0, sizeof(v174));
  v148 = v23;
  sub_267671E30(v23, v173, &off_2801CC6B8, &unk_2676CF600);
  v172[3] = sub_2676C9B9C();
  v172[4] = &protocol witness table for ResponseFactory;
  v172[0] = v161;
  v81 = v163;
  sub_2676C981C();
  sub_2676C981C();
  v82 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__message;
  sub_2676CB18C();
  sub_2676C981C();
  v83 = a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  *(v83 + 32) = 0;
  *v83 = 0u;
  *(v83 + 16) = 0u;
  *(a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v81;
  OUTLINED_FUNCTION_70();
  v84 = v81;
  sub_267671DE4(v177, v83, &qword_2801CC6A8, &unk_2676CF5F0);
  swift_endAccess();
  sub_2676149CC(v176, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
  sub_267671E30(v174, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  sub_2676149CC(v172, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
  sub_267671E30(v173, &v169, &off_2801CC6B8, &unk_2676CF600);
  if (v170)
  {

    sub_2675EB7EC(v173, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v174, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v176);
    sub_2675EB7EC(v177, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v172);
    sub_267614E14(&v169, v171);
  }

  else
  {
    sub_2676C964C();

    sub_2675EB7EC(v173, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v174, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v176);
    sub_2675EB7EC(v177, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v172);
    if (v170)
    {
      sub_2675EB7EC(&v169, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  sub_267614E14(v171, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
  sub_267671E30(v159, v21, &qword_2801CC3D0, &qword_2676D1D80);
  v85 = v155;
  v86 = v158;
  if (__swift_getEnumTagSinglePayload(v21, 1, v154) == 1)
  {
    sub_2675EB7EC(v21, &qword_2801CC3D0, &qword_2676D1D80);
  }

  else
  {
    (*(v147 + 32))(v158, v21, v154);
    (*(v147 + 16))(v160, v158, v154);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v154);
    v90 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo;
    OUTLINED_FUNCTION_70();
    sub_267671E7C(v160, a21 + v90, &qword_2801CC3D0, &qword_2676D1D80);
    swift_endAccess();
    OUTLINED_FUNCTION_54_6();
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_9();
    sub_2676C97EC();

    (*(v152 + 8))(v156, v155);
    v91 = sub_2676C8BAC();
    OUTLINED_FUNCTION_47_3(v91, v92);

    v138 = *(v153 + 8);
    v138(v82, v156);
    v93 = *(sub_2676C8B8C() + 16);

    v82 = MEMORY[0x277D84F90];
    v140 = v84;
    if (v93)
    {
      OUTLINED_FUNCTION_54_6();
      swift_getKeyPath();
      sub_2676C97EC();

      v94 = OUTLINED_FUNCTION_29_10();
      v95(v94);
      v96 = sub_2676C8B8C();
      v97 = *(v96 + 16);
      if (v97)
      {
        v98 = OUTLINED_FUNCTION_44_5();
        sub_2676C27D0(v98, v97, 0);
        v99 = v177[0];
        OUTLINED_FUNCTION_17_16();
        v101 = v96 + v100;
        OUTLINED_FUNCTION_35_6();
        v102 = v139;
        do
        {
          v161(v165, v101, v167);
          sub_2676C8C1C();
          sub_2676C8C4C();
          OUTLINED_FUNCTION_45_5();
          sub_2676CB11C();
          (*a21)(v165, v167);
          v177[0] = v99;
          v104 = *(v99 + 16);
          v103 = *(v99 + 24);
          if (v104 >= v103 >> 1)
          {
            v105 = OUTLINED_FUNCTION_46_4(v103);
            sub_2676C27D0(v105, v104 + 1, 1);
            v102 = v139;
            v99 = v177[0];
          }

          *(v99 + 16) = v104 + 1;
          (*(v168 + 32))(v99 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v104, v102, v166);
          v101 += v160;
          --v97;
        }

        while (v97);

        v33 = a21;
        v85 = v155;
        v84 = v140;
        v106 = v141;
        v82 = MEMORY[0x277D84F90];
      }

      else
      {

        v99 = MEMORY[0x277D84F90];
        v106 = v141;
      }

      v177[0] = v99;
      sub_2676C984C();

      (*(v145 + 8))(v106, v146);
      v86 = v158;
    }

    v107 = *(sub_2676C8A9C() + 16);

    if (v107)
    {
      OUTLINED_FUNCTION_54_6();
      swift_getKeyPath();
      sub_2676C97EC();

      v108 = OUTLINED_FUNCTION_29_10();
      v109(v108);
      v110 = sub_2676C8A9C();
      v111 = *(v110 + 16);
      if (v111)
      {
        v112 = OUTLINED_FUNCTION_44_5();
        sub_2676C27D0(v112, v111, 0);
        OUTLINED_FUNCTION_17_16();
        v114 = v110 + v113;
        OUTLINED_FUNCTION_35_6();
        do
        {
          v161(v165, v114, v167);
          v110 = sub_2676C8C1C();
          sub_2676C8C4C();
          OUTLINED_FUNCTION_45_5();
          sub_2676CB11C();
          (*v33)(v165, v167);
          OUTLINED_FUNCTION_60_2();
          if (v116)
          {
            v119 = OUTLINED_FUNCTION_46_4(v115);
            sub_2676C27D0(v119, v110, 1);
          }

          v117 = OUTLINED_FUNCTION_22_8();
          v118(v117);
          v114 += v160;
          --v111;
        }

        while (v111);

        v85 = v155;
        v86 = v158;
        v82 = MEMORY[0x277D84F90];
      }

      else
      {
      }

      OUTLINED_FUNCTION_61_4();
      sub_2676C984C();

      (*(v145 + 8))(v142, v110);
      v84 = v140;
    }

    v120 = *(sub_2676C8ADC() + 16);

    if (v120)
    {
      OUTLINED_FUNCTION_54_6();
      swift_getKeyPath();
      sub_2676C97EC();

      v121 = OUTLINED_FUNCTION_29_10();
      v122(v121);
      v123 = sub_2676C8ADC();
      v124 = *(v123 + 16);
      if (v124)
      {
        v125 = OUTLINED_FUNCTION_44_5();
        sub_2676C27D0(v125, v124, 0);
        OUTLINED_FUNCTION_17_16();
        v127 = v123 + v126;
        v162 = *(v128 + 56);
        v164 = v129;
        v82 = (v128 - 8);
        do
        {
          v164(v165, v127, v167);
          v123 = sub_2676C8C1C();
          sub_2676C8C4C();
          OUTLINED_FUNCTION_45_5();
          sub_2676CB11C();
          (*v82)(v165, v167);
          OUTLINED_FUNCTION_60_2();
          if (v116)
          {
            v133 = OUTLINED_FUNCTION_46_4(v130);
            sub_2676C27D0(v133, v123, 1);
          }

          v131 = OUTLINED_FUNCTION_22_8();
          v132(v131);
          v127 += v162;
          --v124;
        }

        while (v124);

        v85 = v155;
        v86 = v158;
      }

      else
      {
      }

      OUTLINED_FUNCTION_61_4();
      sub_2676C984C();

      (*(v145 + 8))(v143, v123);
      v84 = v140;
    }

    OUTLINED_FUNCTION_54_6();
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_9();
    sub_2676C97EC();

    v134 = OUTLINED_FUNCTION_29_10();
    v135(v134);
    v136 = sub_2676C8ABC();
    OUTLINED_FUNCTION_47_3(v136, v137);

    v138(v82, v156);
    (*(v147 + 8))(v86, v154);
  }

  if (v149)
  {
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_9();
    sub_2676C97EC();

    (*(v152 + 8))(v156, v85);
    v177[0] = v144;
    v177[1] = v149;
    sub_2676C984C();

    sub_2675EB7EC(v148, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v150, &qword_2801CC6A8, &unk_2676CF5F0);
    sub_2675EB7EC(v159, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v151);

    (*(v153 + 8))(v82, v157);
  }

  else
  {

    sub_2675EB7EC(v148, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v150, &qword_2801CC6A8, &unk_2676CF5F0);
    sub_2675EB7EC(v159, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v151);
  }

  OUTLINED_FUNCTION_20_1();
}

void sub_267670F48()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v4 = v3;
  v171 = v5;
  v7 = v6;
  v183 = v8;
  v181 = v9;
  v186 = v10;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  v14 = OUTLINED_FUNCTION_3(v13);
  v166 = v15;
  v167 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v165 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v164 = v24;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  v176 = v26;
  v178 = sub_2676C8EBC();
  v27 = OUTLINED_FUNCTION_3(v178);
  v163 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_5();
  v177 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD388, &qword_2676D2930);
  v33 = OUTLINED_FUNCTION_3(v32);
  v161 = v34;
  v162 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  v160 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v40 = OUTLINED_FUNCTION_3(v39);
  v169 = v41;
  v170 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_1();
  v168 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v47 = OUTLINED_FUNCTION_3(v46);
  v158 = v48;
  v159 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_1();
  v157 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v54 = OUTLINED_FUNCTION_3(v53);
  v174 = v55;
  v175 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  v60 = &v154 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v62 = OUTLINED_FUNCTION_4_1(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4();
  v173 = v65;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v66);
  v67 = OUTLINED_FUNCTION_64_3();
  v68 = OUTLINED_FUNCTION_3(v67);
  v172 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_1_5();
  v185 = v72;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_25_11();
  sub_267671D9C(v73, v74);
  sub_2676C97BC();
  *(v2 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_confirmIntentOptions) = 1;
  v184 = v67;
  __swift_storeEnumTagSinglePayload(v2 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo, 1, 1, v67);
  v180 = v7;
  sub_267671E30(v7, v196, &qword_2801CC6A8, &unk_2676CF5F0);
  v182 = v12;
  sub_2676149CC(v12, v195);
  v194 = 0;
  memset(v193, 0, sizeof(v193));
  v179 = v4;
  sub_267671E30(v4, v192, &off_2801CC6B8, &unk_2676CF600);
  v191[3] = sub_2676C9B9C();
  v191[4] = &protocol witness table for ResponseFactory;
  v191[0] = v171;
  sub_2676C8D8C();
  v75 = v183;
  sub_2676C981C();
  sub_2676CB0DC();
  sub_2676C981C();
  sub_2676C981C();
  sub_2676C981C();
  v76 = v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  *(v76 + 32) = 0;
  *v76 = 0u;
  *(v76 + 16) = 0u;
  *(v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v75;
  OUTLINED_FUNCTION_70();
  v77 = v75;
  sub_267671DE4(v196, v76, &qword_2801CC6A8, &unk_2676CF5F0);
  swift_endAccess();
  sub_2676149CC(v195, v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
  sub_267671E30(v193, v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  v187 = v2;
  sub_2676149CC(v191, v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
  sub_267671E30(v192, &v188, &off_2801CC6B8, &unk_2676CF600);
  if (v189)
  {

    sub_2675EB7EC(v192, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v193, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v195);
    sub_2675EB7EC(v196, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v191);
    sub_267614E14(&v188, v190);
  }

  else
  {
    sub_2676C964C();

    sub_2675EB7EC(v192, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v193, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v195);
    sub_2675EB7EC(v196, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v191);
    if (v189)
    {
      sub_2675EB7EC(&v188, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  v171 = v77;
  v78 = v187;
  sub_267614E14(v190, v187 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
  sub_267671E30(v186, v0, &qword_2801CC3D0, &qword_2676D1D80);
  v79 = v184;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v184);
  v81 = v175;
  v82 = v185;
  v183 = v60;
  if (EnumTagSinglePayload == 1)
  {
    v83 = v175;
    sub_2675EB7EC(v0, &qword_2801CC3D0, &qword_2676D1D80);
    v84 = v178;
    v85 = v176;
  }

  else
  {
    v86 = v172;
    v87 = *(v172 + 32);
    OUTLINED_FUNCTION_46_0();
    v88();
    v89 = *(v86 + 16);
    v90 = v173;
    v91 = OUTLINED_FUNCTION_8_10();
    v155 = v93;
    v156 = v92;
    (v93)(v91);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v79);
    v97 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo;
    OUTLINED_FUNCTION_70();
    sub_267671E7C(v90, v78 + v97, &qword_2801CC3D0, &qword_2676D1D80);
    swift_endAccess();
    sub_26761D288();
    swift_getKeyPath();
    v98 = v157;
    sub_2676C97EC();

    v99 = *(v174 + 8);
    v99(v183, v81);
    v196[0] = sub_2676C8BAC();
    v196[1] = v100;
    v101 = v159;
    sub_2676C984C();

    v102 = v98;
    v103 = v99;
    v104 = v183;
    (*(v158 + 8))(v102, v101);
    v105 = *(sub_2676C8B8C() + 16);

    if (v105)
    {
      sub_26761D288();
      swift_getKeyPath();
      OUTLINED_FUNCTION_28_7();

      v103(v104, v81);
      v106 = sub_2676C8B8C();
      OUTLINED_FUNCTION_19_5(v106);

      v107 = *(v169 + 8);
      v108 = OUTLINED_FUNCTION_8_10();
      v82 = v185;
      v109(v108);
    }

    v110 = *(sub_2676C8A9C() + 16);

    if (v110)
    {
      sub_26761D288();
      swift_getKeyPath();
      OUTLINED_FUNCTION_28_7();

      v103(v104, v81);
      v111 = sub_2676C8A9C();
      OUTLINED_FUNCTION_19_5(v111);

      v112 = *(v169 + 8);
      v113 = OUTLINED_FUNCTION_8_10();
      v82 = v185;
      v114(v113);
    }

    v115 = *(sub_2676C8ADC() + 16);

    v116 = v103;
    v117 = v82;
    if (v115)
    {
      sub_26761D288();
      swift_getKeyPath();
      OUTLINED_FUNCTION_28_7();

      v116(v104, v81);
      v118 = sub_2676C8ADC();
      OUTLINED_FUNCTION_19_5(v118);

      v119 = *(v169 + 8);
      v120 = OUTLINED_FUNCTION_8_10();
      v121(v120);
    }

    sub_26761D288();
    swift_getKeyPath();
    v122 = v160;
    sub_2676C97EC();

    v123 = v104;
    v83 = v81;
    v116(v123, v81);
    v124 = v173;
    v125 = v184;
    v155(v173, v117, v184);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v125);
    v129 = v162;
    sub_2676C984C();
    sub_2675EB7EC(v124, &qword_2801CC3D0, &qword_2676D1D80);
    (*(v161 + 8))(v122, v129);
    (*(v172 + 8))(v117, v125);
    v84 = v178;
    v85 = v176;
  }

  v130 = OUTLINED_FUNCTION_8_10();
  sub_267671E30(v130, v131, v132, v133);
  if (__swift_getEnumTagSinglePayload(v85, 1, v84) == 1)
  {

    sub_2675EB7EC(v179, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v180, &qword_2801CC6A8, &unk_2676CF5F0);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v134, v135, v136);
    sub_2675EB7EC(v186, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v182);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v137, v138, v139);
  }

  else
  {
    v140 = v163;
    (*(v163 + 32))(v177, v85, v84);
    v141 = v183;
    sub_26761D288();
    swift_getKeyPath();
    v142 = v165;
    sub_2676C97EC();

    (*(v174 + 8))(v141, v83);
    v143 = v177;
    (*(v140 + 16))(v164, v177, v84);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v84);
    v147 = v167;
    sub_2676C984C();

    sub_2675EB7EC(v179, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v180, &qword_2801CC6A8, &unk_2676CF5F0);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v148, v149, v150);
    sub_2675EB7EC(v186, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v182);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v151, v152, v153);
    (*(v166 + 8))(v142, v147);
    (*(v140 + 8))(v143, v84);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267671D50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_28_3();
  v9(v8);
  return v4;
}

uint64_t sub_267671D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267671DE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_28_3();
  v9(v8);
  return v4;
}

uint64_t sub_267671E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_28_3();
  v9(v8);
  return v4;
}

uint64_t sub_267671E7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_28_3();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_17_16()
{
  v1 = *(v0 + 296);
  v2 = *(v1 + 16);
  v3 = *(v1 + 80);
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1)
{
  *(v2 - 128) = a1;
  v4 = *(v1 + 128);

  return sub_2676C984C();
}

unint64_t OUTLINED_FUNCTION_22_8()
{
  *(v1 + 16) = v2;
  v4 = *(v0 + 328);
  result = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
  v6 = *(v4 + 32);
  v7 = *(v0 + 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_7()
{
  v2 = *(v0 + 112);

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_29_10()
{
  result = v1;
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  return result;
}

void OUTLINED_FUNCTION_35_6()
{
  v2[34] = *(v0 + 56);
  v2[35] = v1;
  v2[36] = v0;
  v2[33] = v2[41] + 32;
}

uint64_t OUTLINED_FUNCTION_36_9()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 240));

  return __swift_destroy_boxed_opaque_existential_1((v0 - 192));
}

uint64_t *OUTLINED_FUNCTION_43_4(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2)
{
  *(v3 - 128) = a1;
  *(v3 - 120) = a2;
  v5 = *(v2 + 240);

  return sub_2676C984C();
}

uint64_t OUTLINED_FUNCTION_53_5@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  *(v2 - 160) = 0;
  *(v2 - 192) = 0u;
  *(v2 - 176) = 0u;

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_54_6()
{

  return sub_26761F9A8();
}

void OUTLINED_FUNCTION_60_2()
{
  *(v1 - 128) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_61_4()
{
  *(v2 - 128) = v1;
  result = v2 - 128;
  v4 = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return sub_2676C8BFC();
}

uint64_t sub_26767229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20]();
  v15 = &v17 - v14;
  sub_2676754CC(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

uint64_t sub_267672340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB96C();
  *a1 = result;
  return result;
}

uint64_t sub_26767236C(uint64_t *a1)
{
  v1 = *a1;

  return sub_2676CB97C();
}

uint64_t sub_267672430@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v566 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC88, &qword_2676D0BD0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC90, &qword_2676D0BD8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC98, &qword_2676D0BE0);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCA8, &unk_2676D0BF0);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCB0, &unk_2676D2A70);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCB8, &unk_2676D0C00);
  OUTLINED_FUNCTION_3(v557);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCC0, &unk_2676D2A80);
  OUTLINED_FUNCTION_4_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  v568 = sub_2676CB5AC();
  v39 = OUTLINED_FUNCTION_3(v568);
  v569 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v44 - v43);
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC610, &unk_2676D0C10);
  v45 = OUTLINED_FUNCTION_2_6(v565);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v51 = OUTLINED_FUNCTION_4_1(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v57 = OUTLINED_FUNCTION_4_1(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC618, &qword_2676CF520);
  v63 = OUTLINED_FUNCTION_4_1(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3(v77);
  v574 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v82);
  v547 = sub_2676CB6CC();
  v83 = OUTLINED_FUNCTION_3(v547);
  v556 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v88 - v87);
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB78, &qword_2676D05D8);
  OUTLINED_FUNCTION_2_6(v546);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB80, &unk_2676D2A90);
  v94 = OUTLINED_FUNCTION_4_1(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v100);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v104);
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_3(v567);
  v562 = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v111 = OUTLINED_FUNCTION_4_1(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v118);
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3(v580);
  v575 = v119;
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD0, &unk_2676D0C60);
  OUTLINED_FUNCTION_4_1(v124);
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v128);
  v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  OUTLINED_FUNCTION_3(v581);
  v572 = v129;
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v134);
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_9_1();
  v586 = v138;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  v140 = OUTLINED_FUNCTION_3(v139);
  v142 = v141;
  v144 = *(v143 + 64);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_24_1();
  v582 = v146;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD8, &unk_2676D0C70);
  OUTLINED_FUNCTION_4_1(v147);
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_9_1();
  v596 = v151;
  OUTLINED_FUNCTION_7_3();
  v597 = sub_2676C9C5C();
  v152 = OUTLINED_FUNCTION_3(v597);
  v587 = v153;
  v155 = *(v154 + 64);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_4();
  v584 = v156;
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_24_1();
  v585 = v158;
  OUTLINED_FUNCTION_7_3();
  v159 = sub_2676C9EBC();
  v160 = OUTLINED_FUNCTION_3(v159);
  v599 = v161;
  v600 = v160;
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_4();
  v583 = v164;
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_10_4();
  v589 = v166;
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_24_1();
  v592 = v168;
  OUTLINED_FUNCTION_7_3();
  v169 = sub_2676C9EAC();
  v170 = OUTLINED_FUNCTION_3(v169);
  v594 = v171;
  v595 = v170;
  v173 = *(v172 + 64);
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_3_2();
  v593 = v175 - v174;
  OUTLINED_FUNCTION_7_3();
  v176 = sub_2676C9E6C();
  v177 = OUTLINED_FUNCTION_3(v176);
  v179 = v178;
  v181 = *(v180 + 64);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_3_2();
  v184 = v183 - v182;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v185 = sub_2676CBE4C();
  v186 = __swift_project_value_buffer(v185, qword_2801CDC90);
  v187 = *(v179 + 16);
  v598 = a1;
  v187(v184, a1, v176);
  v590 = v186;
  v188 = sub_2676CBE2C();
  v189 = sub_2676CC23C();
  v576 = v77;
  v591 = v139;
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v579 = v142;
    v191 = swift_slowAlloc();
    v601 = v191;
    *v190 = 136315138;
    sub_267675484(&qword_2801CC160, MEMORY[0x277D5C118]);
    v192 = sub_2676CC56C();
    v193 = a3;
    v195 = v194;
    (*(v179 + 8))(v184, v176);
    v196 = sub_2676B0B84(v192, v195, &v601);
    a3 = v193;

    *(v190 + 4) = v196;
    _os_log_impl(&dword_2675D4000, v188, v189, "#ReplyPromptInterpreter user input: %s", v190, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v191);
    v142 = v579;
    OUTLINED_FUNCTION_2_5();
    v139 = v591;
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v179 + 8))(v184, v176);
  }

  v197 = v600;
  sub_2676C9E5C();
  if ((*(v599 + 88))(v592, v600) == *MEMORY[0x277D5C150])
  {
    (*(v599 + 96))(v592, v600);
    (*(v594 + 32))(v593, v592, v595);
    v199 = sub_2676C9E8C();
    v200 = v198;
    v201 = v199 == 0xD00000000000001ALL && 0x80000002676D5FF0 == v198;
    if (v201 || (sub_2676CC59C() & 1) != 0)
    {
      v202 = OUTLINED_FUNCTION_44_6();
      v203(v202);

      v204 = xmmword_2676D2A60;
LABEL_13:
      *a3 = v204;
LABEL_14:
      *(a3 + 16) = 2;
LABEL_15:
      v205 = MEMORY[0x277D5BC88];
LABEL_54:
      v270 = *v205;
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
      OUTLINED_FUNCTION_4_22(v271);
      return (*(v272 + 104))(a3, v270);
    }

    v588 = a3;
    if (v199 == 0xD000000000000019 && 0x80000002676D6010 == v200)
    {

      v273 = OUTLINED_FUNCTION_44_6();
      v274(v273);
LABEL_56:
      v275 = v588;
      *v588 = 0;
      v275[1] = 0;
      *(v275 + 16) = 0;
      v276 = *MEMORY[0x277D5BC88];
      v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
      OUTLINED_FUNCTION_4_22(v277);
      return (*(v278 + 104))(v275, v276);
    }

    v206 = v142;
    v259 = sub_2676CC59C();

    v260 = OUTLINED_FUNCTION_44_6();
    v261(v260);
    v207 = v599;
    v197 = v600;
    v139 = v591;
    if (v259)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v588 = a3;
    v206 = v142;
    (*(v599 + 8))(v592, v600);
    v207 = v599;
  }

  sub_2676C9E5C();
  sub_267637F04();
  v208 = *(v207 + 8);
  v208(v589, v197);
  OUTLINED_FUNCTION_21_3(v596, 1, v597);
  if (v201)
  {
    sub_2675EB7EC(v596, &qword_2801CCCD8, &unk_2676D0C70);
    sub_2676C9E5C();
    sub_2676371E0();
    if (v209)
    {
      v210 = v197;
      v211 = sub_2676CA77C();

      v212 = v586;
      sub_267698EA0(v211);

      v208(v583, v210);
      v213 = OUTLINED_FUNCTION_33_4();
      OUTLINED_FUNCTION_21_3(v213, v214, v139);
      if (!v201)
      {
        v215 = v206[4];
        v216 = OUTLINED_FUNCTION_88_0();
        v217(v216);
        v218 = v206[2];
        v219 = v578;
        v218(v578, v582, v139);
        sub_2676CB9FC();
        sub_267675484(&qword_2801CC738, MEMORY[0x277D5C7E8]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        OUTLINED_FUNCTION_21_3(v577, 1, v581);
        if (!v201)
        {
          v279 = *(v572 + 32);
          OUTLINED_FUNCTION_52_1();
          v280();
          swift_getKeyPath();
          OUTLINED_FUNCTION_25_12();
          sub_267675484(v281, v282);
          OUTLINED_FUNCTION_51_2(&v599);
          sub_2676CA3EC();

          OUTLINED_FUNCTION_45_6();
          OUTLINED_FUNCTION_21_3(v284, v285, *(v283 - 256));
          v287 = v588;
          if (v286)
          {
            sub_2675EB7EC(v218, &qword_2801CC428, &unk_2676CEDD0);
            v288 = sub_2676CBE2C();
            v289 = sub_2676CC23C();
            v290 = OUTLINED_FUNCTION_5_5(v289);
            if (v566)
            {
              if (v290)
              {
                v291 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v291);
                OUTLINED_FUNCTION_4_18(&dword_2675D4000, v292, v293, "#ReplyPromptInterpreter read -> .readBodyOfSummarizedEmail");
                OUTLINED_FUNCTION_4_6();
              }

              v294 = OUTLINED_FUNCTION_7_21();
              v295(v294);
              v296 = v206[1];
              v297 = v582;
              v298 = v139;
              goto LABEL_63;
            }

            if (v290)
            {
              v324 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v324);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v325, v326, "#ReplyPromptInterpreter read -> .repeat");
              OUTLINED_FUNCTION_4_6();
            }

            v327 = OUTLINED_FUNCTION_7_21();
            v328(v327);
            v329 = v206[1];
            v330 = v582;
            v331 = v139;
LABEL_76:
            v329(v330, v331);
            *v287 = xmmword_2676D0B90;
            goto LABEL_77;
          }

          v311 = *(v575 + 32);
          OUTLINED_FUNCTION_75();
          v312();
          KeyPath = swift_getKeyPath();
          sub_267675484(&qword_2801CCBA0, MEMORY[0x277D5C5A0]);
          OUTLINED_FUNCTION_51_2(&v588);
          OUTLINED_FUNCTION_52_1();
          sub_2676CA87C();

          OUTLINED_FUNCTION_53_6();
          OUTLINED_FUNCTION_21_3(v314, v315, KeyPath);
          if (v316)
          {
            sub_2675EB7EC(v218, &qword_2801CC048, &qword_2676CDAB0);
LABEL_133:
            v406 = sub_2676CBE2C();
            v407 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_5(v407))
            {
              v408 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v408);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v409, v410, "#ReadingInputInterpreter got an off topic read parse, returning .no");
              OUTLINED_FUNCTION_9_22();
            }

            v411 = OUTLINED_FUNCTION_11_21();
            v412(v411);
            v413 = OUTLINED_FUNCTION_7_21();
            v414(v413);
            v415 = OUTLINED_FUNCTION_42_4();
            v416(v415);
            v332 = MEMORY[0x277D5BC80];
            goto LABEL_136;
          }

          (*(v562 + 32))(v560, v218, KeyPath);
          swift_getKeyPath();
          sub_2676CA84C();

          (*(v556 + 104))(v554, *MEMORY[0x277D5C578], v547);
          __swift_storeEnumTagSinglePayload(v554, 0, 1, v547);
          v341 = *(v546 + 48);
          sub_2676754CC(v555, v558, &qword_2801CCB80, &unk_2676D2A90);
          sub_2676754CC(v554, v558 + v341, &qword_2801CCB80, &unk_2676D2A90);
          OUTLINED_FUNCTION_21_3(v558, 1, v547);
          if (v342)
          {
            sub_2675EB7EC(v554, &qword_2801CCB80, &unk_2676D2A90);
            OUTLINED_FUNCTION_58_3(v555);
            OUTLINED_FUNCTION_21_3(&qword_2801CCB80 + v341, 1, v547);
            if (v201)
            {
              sub_2675EB7EC(&qword_2801CCB80, &qword_2801CCB80, &unk_2676D2A90);
              OUTLINED_FUNCTION_53_6();
LABEL_158:
              v492 = sub_2676CBE2C();
              v493 = sub_2676CC23C();
              v494 = OUTLINED_FUNCTION_5_5(v493);
              if (v566)
              {
                if (v494)
                {
                  v495 = OUTLINED_FUNCTION_17_3();
                  OUTLINED_FUNCTION_9_4(v495);
                  OUTLINED_FUNCTION_4_18(&dword_2675D4000, v496, v497, "#ReplyPromptInterpreter read -> .readBodyOfSummarizedEmail");
                  OUTLINED_FUNCTION_9_22();
                }

                v498 = OUTLINED_FUNCTION_10_15();
                v499(v498);
                v500 = OUTLINED_FUNCTION_11_21();
                v501(v500);
                v502 = OUTLINED_FUNCTION_7_21();
                v503(v502);
                v297 = OUTLINED_FUNCTION_42_4();
LABEL_63:
                v296(v297, v298);
                *v287 = 0;
                v287[1] = 0;
LABEL_77:
                *(v287 + 16) = 2;
                v332 = MEMORY[0x277D5BC88];
LABEL_136:
                v417 = *v332;
                v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
                OUTLINED_FUNCTION_4_22(v418);
                return (*(v419 + 104))(v287, v417);
              }

              if (v494)
              {
                v504 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v504);
                OUTLINED_FUNCTION_4_18(&dword_2675D4000, v505, v506, "#ReplyPromptInterpreter read -> .repeat");
                OUTLINED_FUNCTION_9_22();
              }

              v507 = OUTLINED_FUNCTION_10_15();
              v508(v507);
              v509 = OUTLINED_FUNCTION_11_21();
              v510(v509);
              v511 = OUTLINED_FUNCTION_7_21();
              v512(v511);
              v330 = OUTLINED_FUNCTION_42_4();
              goto LABEL_76;
            }
          }

          else
          {
            sub_2676754CC(v558, v539, &qword_2801CCB80, &unk_2676D2A90);
            OUTLINED_FUNCTION_21_3(v558 + v341, 1, v547);
            if (!v402)
            {
              OUTLINED_FUNCTION_36_5(&v583);
              (*(v489 + 32))(v537, v558 + v341, v547);
              sub_267675484(&qword_2801CCBA8, MEMORY[0x277D5C580]);
              LODWORD(v600) = sub_2676CBF1C();
              v490 = off_2801CCB88;
              v491 = OUTLINED_FUNCTION_88_0();
              v490(v491);
              sub_2675EB7EC(v554, &qword_2801CCB80, &unk_2676D2A90);
              sub_2675EB7EC(v555, &qword_2801CCB80, &unk_2676D2A90);
              (v490)(v539, v547);
              OUTLINED_FUNCTION_53_6();
              sub_2675EB7EC(v558, &qword_2801CCB80, &unk_2676D2A90);
              if (v600)
              {
                goto LABEL_158;
              }

              goto LABEL_132;
            }

            sub_2675EB7EC(v554, &qword_2801CCB80, &unk_2676D2A90);
            OUTLINED_FUNCTION_58_3(v555);
            OUTLINED_FUNCTION_27_5(&v583);
            v403(v539, v547);
          }

          sub_2675EB7EC(&qword_2801CCB80, &qword_2801CCB78, &qword_2676D05D8);
          OUTLINED_FUNCTION_53_6();
LABEL_132:
          v404 = OUTLINED_FUNCTION_10_15();
          v405(v404);
          goto LABEL_133;
        }

        v579 = v206;
        sub_2675EB7EC(v577, &qword_2801CCCD0, &unk_2676D0C60);
        v220 = v139;
        v218(v578, v582, v139);
        sub_2676CBA6C();
        v221 = sub_267675484(&qword_2801CC680, MEMORY[0x277D5C828]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        OUTLINED_FUNCTION_21_3(v571, 1, v576);
        a3 = v588;
        if (!v201)
        {
          v299 = *(v574 + 32);
          OUTLINED_FUNCTION_52_1();
          v300();
          swift_getKeyPath();
          OUTLINED_FUNCTION_25_12();
          v303 = sub_267675484(v301, v302);
          OUTLINED_FUNCTION_36_5(&v587);
          v600 = v221;
          sub_2676CA3EC();

          OUTLINED_FUNCTION_45_6();
          v305 = *(v304 - 256);
          OUTLINED_FUNCTION_21_3(v306, v307, v305);
          v599 = v303;
          if (v308)
          {
            sub_2675EB7EC(v578, &qword_2801CC428, &unk_2676CEDD0);
            OUTLINED_FUNCTION_46_5();
            v309 = v565;
            v310 = v563;
          }

          else
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_26_8();
            sub_267675484(v333, v334);
            OUTLINED_FUNCTION_52_1();
            v335 = sub_2676CA8CC();

            (*(v575 + 8))(v578, v305);
            sub_267698E74(v335);

            v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
            OUTLINED_FUNCTION_21_3(v548, 1, v336);
            v309 = v565;
            v310 = v563;
            if (v337)
            {
              v338 = &qword_2801CC168;
              v339 = &unk_2676CF510;
              v340 = v548;
            }

            else
            {
              v219 = swift_getKeyPath();
              OUTLINED_FUNCTION_23_9();
              sub_267675484(v356, v357);
              sub_2676CA87C();

              OUTLINED_FUNCTION_14_2(v336);
              (*(v358 + 8))(v548, v336);
              v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
              OUTLINED_FUNCTION_21_3(v540, 1, v359);
              if (!v360)
              {
                swift_getKeyPath();
                v220 = v564;
                sub_2676CA84C();

                OUTLINED_FUNCTION_14_2(v359);
                (*(v488 + 8))(v540, v359);
                OUTLINED_FUNCTION_46_5();
                goto LABEL_96;
              }

              v338 = &qword_2801CC050;
              v339 = &unk_2676D0C20;
              v340 = v540;
            }

            sub_2675EB7EC(v340, v338, v339);
            OUTLINED_FUNCTION_46_5();
          }

          v361 = OUTLINED_FUNCTION_50_4(&v593);
          __swift_storeEnumTagSinglePayload(v361, v362, v363, v219);
LABEL_96:
          v364 = *MEMORY[0x277D5C478];
          v365 = *MEMORY[0x277D5C478];
          v598 = *(v569 + 104);
          v598(v310, v365, v219);
          __swift_storeEnumTagSinglePayload(v310, 0, 1, v219);
          v366 = *(v309 + 48);
          sub_2676754CC(v220, v573, &qword_2801CC618, &qword_2676CF520);
          sub_2676754CC(v310, v573 + v366, &qword_2801CC618, &qword_2676CF520);
          OUTLINED_FUNCTION_15_11(v573);
          if (v201)
          {
            v367 = &qword_2801CC618;
            v368 = OUTLINED_FUNCTION_88_0();
            sub_2675EB7EC(v368, v369, &qword_2676CF520);
            OUTLINED_FUNCTION_49_3();
            OUTLINED_FUNCTION_15_11(&qword_2801CC618 + v366);
            if (v201)
            {
              goto LABEL_118;
            }
          }

          else
          {
            sub_2676754CC(v573, v550, &qword_2801CC618, &qword_2676CF520);
            OUTLINED_FUNCTION_15_11(v573 + v366);
            if (!v370)
            {
              LODWORD(v597) = v364;
              OUTLINED_FUNCTION_51_2(&v598);
              (*(v420 + 32))(v545, v573 + v366, v219);
              OUTLINED_FUNCTION_24_9();
              sub_267675484(v421, v422);
              v423 = sub_2676CBF1C();
              MEMORY[0](v545, v219);
              OUTLINED_FUNCTION_75();
              sub_2675EB7EC(v424, v425, v426);
              OUTLINED_FUNCTION_75();
              sub_2675EB7EC(v427, v428, v429);
              v309 = v565;
              MEMORY[0](v550, v219);
              OUTLINED_FUNCTION_75();
              sub_2675EB7EC(v430, v431, v432);
              if (v423)
              {
                goto LABEL_144;
              }

LABEL_105:
              swift_getKeyPath();
              sub_2676CA3EC();

              OUTLINED_FUNCTION_45_6();
              v374 = *(v373 - 256);
              OUTLINED_FUNCTION_21_3(v375, v376, v374);
              if (v201)
              {
                sub_2675EB7EC(v551, &qword_2801CC428, &unk_2676CEDD0);
              }

              else
              {
                swift_getKeyPath();
                OUTLINED_FUNCTION_26_8();
                sub_267675484(v377, v378);
                v379 = sub_2676CA8CC();

                (*(v575 + 8))(v551, v374);
                OUTLINED_FUNCTION_36_5(&v571);
                sub_267698E74(v379);

                v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
                OUTLINED_FUNCTION_21_3(v374, 1, v380);
                if (!v381)
                {
                  swift_getKeyPath();
                  OUTLINED_FUNCTION_23_9();
                  sub_267675484(v441, v442);
                  OUTLINED_FUNCTION_36_5(&v564);
                  sub_2676CA87C();

                  OUTLINED_FUNCTION_14_2(v380);
                  (*(v443 + 8))(v374, v380);
                  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
                  OUTLINED_FUNCTION_21_3(v374, 1, v444);
                  v382 = v597;
                  if (!v445)
                  {
                    swift_getKeyPath();
                    v220 = v552;
                    sub_2676CA84C();

                    OUTLINED_FUNCTION_14_2(v444);
                    (*(v513 + 8))(v374, v444);
                    OUTLINED_FUNCTION_46_5();
                    goto LABEL_113;
                  }

                  sub_2675EB7EC(v374, &qword_2801CC050, &unk_2676D0C20);
LABEL_112:
                  OUTLINED_FUNCTION_50_4(&v579);
                  OUTLINED_FUNCTION_46_5();
                  __swift_storeEnumTagSinglePayload(v383, v384, v385, v374);
LABEL_113:
                  v598(v559, v382, v374);
                  __swift_storeEnumTagSinglePayload(v559, 0, 1, v374);
                  v386 = *(v309 + 48);
                  sub_2676754CC(v220, v553, &qword_2801CC618, &qword_2676CF520);
                  sub_2676754CC(v559, v553 + v386, &qword_2801CC618, &qword_2676CF520);
                  OUTLINED_FUNCTION_15_11(v553);
                  if (!v201)
                  {
                    sub_2676754CC(v553, v544, &qword_2801CC618, &qword_2676CF520);
                    OUTLINED_FUNCTION_15_11(v553 + v386);
                    if (!v387)
                    {
                      v446 = v569;
                      (*(v569 + 32))(v545, v553 + v386, v374);
                      OUTLINED_FUNCTION_24_9();
                      sub_267675484(v447, v448);
                      v449 = sub_2676CBF1C();
                      v450 = *(v446 + 8);
                      v450(v545, v374);
                      sub_2675EB7EC(v559, &qword_2801CC618, &qword_2676CF520);
                      sub_2675EB7EC(v220, &qword_2801CC618, &qword_2676CF520);
                      v450(v544, v374);
                      sub_2675EB7EC(v553, &qword_2801CC618, &qword_2676CF520);
                      if (v449)
                      {
                        goto LABEL_144;
                      }

LABEL_123:
                      v389 = sub_2676CBE2C();
                      v390 = sub_2676CC23C();
                      if (os_log_type_enabled(v389, v390))
                      {
                        *OUTLINED_FUNCTION_17_3() = 0;
                        OUTLINED_FUNCTION_62_0(&dword_2675D4000, v391, v392, "#ReplyPromptInterpreter received reply parse");
                        OUTLINED_FUNCTION_2_5();
                      }

                      swift_getKeyPath();
                      OUTLINED_FUNCTION_33_7(&v572);

                      OUTLINED_FUNCTION_45_6();
                      v394 = *(v393 - 256);
                      OUTLINED_FUNCTION_21_3(v395, v396, v394);
                      v397 = v588;
                      if (v201)
                      {
                        v398 = OUTLINED_FUNCTION_8_22();
                        v399(v398);
                        v400 = OUTLINED_FUNCTION_29_11();
                        v401(v400);
                        sub_2675EB7EC(v220, &qword_2801CC428, &unk_2676CEDD0);
                        v433 = 0;
                        v435 = 0;
                      }

                      else
                      {
                        swift_getKeyPath();
                        v433 = OUTLINED_FUNCTION_57_8();
                        v435 = v434;

                        v436 = OUTLINED_FUNCTION_8_22();
                        v437(v436);
                        v438 = OUTLINED_FUNCTION_29_11();
                        v439(v438);
                        OUTLINED_FUNCTION_27_5(&v602);
                        v440(v220, v394);
                      }

                      *v397 = v433;
                      v397[1] = v435;
                      *(v397 + 16) = 0;
                      goto LABEL_150;
                    }

                    OUTLINED_FUNCTION_29_3(v559);
                    OUTLINED_FUNCTION_29_3(v220);
                    OUTLINED_FUNCTION_27_5(&v598);
                    v388(v544, v374);
LABEL_122:
                    sub_2675EB7EC(v553, &qword_2801CC610, &unk_2676D0C10);
                    goto LABEL_123;
                  }

                  OUTLINED_FUNCTION_29_3(v559);
                  OUTLINED_FUNCTION_29_3(v220);
                  OUTLINED_FUNCTION_15_11(v553 + v386);
                  if (!v201)
                  {
                    goto LABEL_122;
                  }

                  v367 = v553;
LABEL_118:
                  sub_2675EB7EC(v367, &qword_2801CC618, &qword_2676CF520);
LABEL_144:
                  v451 = sub_2676CBE2C();
                  v452 = sub_2676CC23C();
                  if (os_log_type_enabled(v451, v452))
                  {
                    *OUTLINED_FUNCTION_17_3() = 0;
                    OUTLINED_FUNCTION_62_0(&dword_2675D4000, v453, v454, "#ReplyPromptInterpreter received reply all parse");
                    OUTLINED_FUNCTION_2_5();
                  }

                  swift_getKeyPath();
                  OUTLINED_FUNCTION_33_7(&v578);

                  OUTLINED_FUNCTION_45_6();
                  v456 = *(v455 - 256);
                  OUTLINED_FUNCTION_21_3(v457, v458, v456);
                  v397 = v588;
                  if (v201)
                  {
                    v459 = OUTLINED_FUNCTION_8_22();
                    v460(v459);
                    v461 = OUTLINED_FUNCTION_29_11();
                    v462(v461);
                    sub_2675EB7EC(v220, &qword_2801CC428, &unk_2676CEDD0);
                    v463 = 0;
                    v465 = 0;
                  }

                  else
                  {
                    swift_getKeyPath();
                    v463 = OUTLINED_FUNCTION_57_8();
                    v465 = v464;

                    v466 = OUTLINED_FUNCTION_8_22();
                    v467(v466);
                    v468 = OUTLINED_FUNCTION_29_11();
                    v469(v468);
                    OUTLINED_FUNCTION_27_5(&v602);
                    v470(v220, v456);
                  }

                  *v397 = v463;
                  v397[1] = v465;
                  *(v397 + 16) = 1;
LABEL_150:
                  v471 = *MEMORY[0x277D5BC88];
                  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
                  OUTLINED_FUNCTION_4_22(v472);
                  return (*(v473 + 104))(v397, v471);
                }

                sub_2675EB7EC(v374, &qword_2801CC168, &unk_2676CF510);
              }

              v382 = v597;
              goto LABEL_112;
            }

            v371 = OUTLINED_FUNCTION_88_0();
            sub_2675EB7EC(v371, v372, &qword_2676CF520);
            OUTLINED_FUNCTION_49_3();
            (*(v569 + 8))(v550, v219);
          }

          LODWORD(v597) = v364;
          sub_2675EB7EC(&qword_2801CC618, &qword_2801CC610, &unk_2676D0C10);
          goto LABEL_105;
        }

        sub_2675EB7EC(v571, &qword_2801CC620, &unk_2676D0C30);
        v218(v578, v582, v139);
        sub_2676CB4EC();
        sub_267675484(&qword_2801CCA70, MEMORY[0x277D5C3A0]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCE8, &unk_2676D0C80);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v561, 1, v222);
        sub_2675EB7EC(v561, &qword_2801CCCC0, &unk_2676D2A80);
        if (EnumTagSinglePayload != 1)
        {
          v317 = sub_2676CBE2C();
          v318 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v318))
          {
            v319 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v319);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v320, v321, "#ReplyPromptInterpreter received reply parse");
            OUTLINED_FUNCTION_9_22();
          }

          v322 = OUTLINED_FUNCTION_3_21();
          v323(v322);
          *v588 = 0;
          a3[1] = 0;
          *(a3 + 16) = 0;
          goto LABEL_15;
        }

        v224 = OUTLINED_FUNCTION_32_6();
        (v218)(v224);
        sub_2676CB4CC();
        sub_267675484(&qword_2801CCA60, MEMORY[0x277D5C380]);
        sub_2676CA3FC();
        OUTLINED_FUNCTION_21_3(v549, 1, v557);
        if (!v201)
        {
          OUTLINED_FUNCTION_51_2(v570);
          (*(v343 + 32))(v543, v549, v557);
          swift_getKeyPath();
          sub_267675484(&qword_2801CCD28, MEMORY[0x277D5C3C8]);
          OUTLINED_FUNCTION_88_0();
          sub_2676CA3EC();

          v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCA0, &qword_2676D0BE8);
          v345 = __swift_getEnumTagSinglePayload(v541, 1, v344);
          sub_2675EB7EC(v541, &qword_2801CCCA8, &unk_2676D0BF0);
          v346 = sub_2676CBE2C();
          v347 = sub_2676CC23C();
          v348 = OUTLINED_FUNCTION_5_5(v347);
          if (v345 == 1)
          {
            if (v566)
            {
              if (v348)
              {
                v349 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v349);
                OUTLINED_FUNCTION_4_18(&dword_2675D4000, v350, v351, "#ReplyPromptInterpreter read -> .readBodyOfSummarizedEmail");
                OUTLINED_FUNCTION_4_6();
              }

              v352 = OUTLINED_FUNCTION_28_8();
              v353(v352);
              v354 = OUTLINED_FUNCTION_43_5();
              v355(v354);
              *a3 = 0;
              a3[1] = 0;
              goto LABEL_14;
            }

            if (v348)
            {
              v521 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v521);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v522, v523, "#ReplyPromptInterpreter received read -> repeat parse");
              OUTLINED_FUNCTION_4_6();
            }

            v524 = OUTLINED_FUNCTION_28_8();
            v525(v524);
            v526 = OUTLINED_FUNCTION_43_5();
            v527(v526);
            goto LABEL_171;
          }

          if (v348)
          {
            v481 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v481);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v482, v483, "#ReadingInputInterpreter got an off topic read parse, returning .no");
            OUTLINED_FUNCTION_4_6();
          }

          v484 = OUTLINED_FUNCTION_28_8();
          v485(v484);
          v486 = OUTLINED_FUNCTION_43_5();
          v487(v486);
LABEL_53:
          v205 = MEMORY[0x277D5BC80];
          goto LABEL_54;
        }

        sub_2675EB7EC(v549, &qword_2801CCCB0, &unk_2676D2A70);
        v225 = OUTLINED_FUNCTION_32_6();
        (v218)(v225);
        sub_2676CB50C();
        sub_267675484(&qword_2801CCA68, MEMORY[0x277D5C3C0]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCF0, &unk_2676D2AC0);
        v226 = OUTLINED_FUNCTION_33_4();
        v229 = __swift_getEnumTagSinglePayload(v226, v227, v228);
        sub_2675EB7EC(v542, &qword_2801CCC98, &qword_2676D0BE0);
        if (v229 != 1)
        {
          v474 = sub_2676CBE2C();
          v475 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v475))
          {
            v476 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v476);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v477, v478, "#ReplyPromptInterpreter received repeat parse");
            OUTLINED_FUNCTION_9_22();
          }

          v479 = OUTLINED_FUNCTION_3_21();
          v480(v479);
LABEL_171:
          v204 = xmmword_2676D0B90;
          goto LABEL_13;
        }

        v230 = OUTLINED_FUNCTION_32_6();
        (v218)(v230);
        sub_2676CB49C();
        sub_267675484(&qword_2801CCA78, MEMORY[0x277D5C350]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCF8, &unk_2676D0C90);
        v231 = OUTLINED_FUNCTION_33_4();
        v234 = __swift_getEnumTagSinglePayload(v231, v232, v233);
        sub_2675EB7EC(v538, &qword_2801CCC90, &qword_2676D0BD8);
        if (v234 != 1)
        {
          v514 = sub_2676CBE2C();
          v515 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v515))
          {
            v516 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v516);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v517, v518, "#ReplyPromptInterpreter received skip parse");
            OUTLINED_FUNCTION_9_22();
          }

          v519 = OUTLINED_FUNCTION_3_21();
          v520(v519);
          v204 = xmmword_2676D0BB0;
          goto LABEL_13;
        }

        v235 = OUTLINED_FUNCTION_32_6();
        (v218)(v235);
        sub_2676CB4DC();
        sub_267675484(&qword_2801CCA80, MEMORY[0x277D5C390]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD00, &qword_2676D2AD0);
        v236 = OUTLINED_FUNCTION_33_4();
        OUTLINED_FUNCTION_21_3(v236, v237, v238);
        if (!v201)
        {
          sub_2675EB7EC(v536, &qword_2801CCC88, &qword_2676D0BD0);
          v528 = sub_2676CBE2C();
          v529 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v529))
          {
            v531 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v531);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v532, v533, "#ReplyPromptInterpreter received stop parse");
            OUTLINED_FUNCTION_9_22();
          }

          v534 = OUTLINED_FUNCTION_3_21();
          v535(v534);
          v204 = xmmword_2676D0B80;
          goto LABEL_13;
        }

        v239 = OUTLINED_FUNCTION_3_21();
        v240(v239);
        sub_2675EB7EC(v536, &qword_2801CCC88, &qword_2676D0BD0);
LABEL_50:
        v265 = sub_2676CBE2C();
        v266 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_5(v266))
        {
          v267 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v267);
          OUTLINED_FUNCTION_4_18(&dword_2675D4000, v268, v269, "#ReplyPromptInterpreter got an invalid parse or no response, returning .no");
          OUTLINED_FUNCTION_4_6();
        }

        goto LABEL_53;
      }
    }

    else
    {
      v262 = OUTLINED_FUNCTION_34_9();
      (v208)(v262);
      v212 = v586;
      v263 = OUTLINED_FUNCTION_33_4();
      __swift_storeEnumTagSinglePayload(v263, v264, 1, v139);
    }

    sub_2675EB7EC(v212, &qword_2801CC640, &unk_2676CF550);
    a3 = v588;
    goto LABEL_50;
  }

  (*(v587 + 32))(v585, v596, v597);
  (*(v587 + 16))(v584, v585, v597);
  v241 = (*(v587 + 88))(v584, v597);
  if (v241 == *MEMORY[0x277D5BED8])
  {
    v242 = sub_2676CBE2C();
    v243 = sub_2676CC23C();
    v244 = v588;
    if (OUTLINED_FUNCTION_5_5(v243))
    {
      v245 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v245);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v246, v247, "#ReplyPromptInterpreter confirmed confirmation -> .yes");
      OUTLINED_FUNCTION_4_6();
    }

    (*(v587 + 8))(v585, v597);
    v248 = xmmword_2676D0BA0;
LABEL_41:
    *v244 = v248;
    *(v244 + 16) = 2;
    v254 = *MEMORY[0x277D5BC88];
    v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
    OUTLINED_FUNCTION_4_22(v255);
    return (*(v256 + 104))(v244, v254);
  }

  v244 = v588;
  if (v241 == *MEMORY[0x277D5BED0])
  {
    v249 = sub_2676CBE2C();
    v250 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v250))
    {
      v251 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v251);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v252, v253, "#ReplyPromptInterpreter rejected confirmation -> .no");
      OUTLINED_FUNCTION_4_6();
    }

    (*(v587 + 8))(v585, v597);
    v248 = xmmword_2676CF3C0;
    goto LABEL_41;
  }

  result = sub_2676CC58C();
  __break(1u);
  return result;
}

uint64_t sub_267675484(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2676754CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_22(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ReplyPromptInterpreter(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal17ReplyPromptOptionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t OUTLINED_FUNCTION_7_21()
{
  v2 = *(v0 + 8);
  result = *(v1 - 280);
  v4 = *(v1 - 256);
  return result;
}

void OUTLINED_FUNCTION_9_22()
{
  v2 = *(v0 - 248);

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_28_8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 488);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_7@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 304);
  v6 = *(v1 - 112);
  v5 = *(v1 - 104);
  v7 = *(v1 - 320);

  return sub_2676CA3EC();
}

uint64_t OUTLINED_FUNCTION_44_6()
{
  result = *(v0 - 160);
  v2 = *(*(v0 - 152) + 8);
  v3 = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_3()
{
  v5 = v0;
  v6 = *(v3 - 336);

  return sub_2675EB7EC(v2, v5, v1);
}

uint64_t OUTLINED_FUNCTION_57_8()
{

  return sub_2676CA89C();
}

uint64_t OUTLINED_FUNCTION_58_3(uint64_t a1)
{
  v5 = v1;
  v6 = *(v3 - 480);

  return sub_2675EB7EC(a1, v5, v2);
}

uint64_t type metadata accessor for ResolveDateTime()
{
  result = qword_2801CD3A0;
  if (!qword_2801CD3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267675964()
{
  sub_267675A08();
  if (v0 <= 0x3F)
  {
    sub_267675A6C();
    if (v1 <= 0x3F)
    {
      sub_267675AC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_267675A08()
{
  if (!qword_2801CCE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1F0, &unk_2676CE100);
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CCE68);
    }
  }
}

unint64_t sub_267675A6C()
{
  result = qword_2801CD3B0;
  if (!qword_2801CD3B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2801CD3B0);
  }

  return result;
}

void sub_267675AC8()
{
  if (!qword_2801CC3A0)
  {
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC3A0);
    }
  }
}

uint64_t sub_267675B18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267675B38, 0, 0);
}

uint64_t sub_267675B38()
{
  v1 = v0[3];
  v2 = type metadata accessor for ResolveDateTime();
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 2 || (v3 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
    v14 = swift_task_alloc();
    v0[4] = v14;
    *v14 = v0;
    v14[1] = sub_267675D74;
    v15 = v0[2];
    v16 = v0[3];

    return sub_2675F14B4();
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v4 = sub_2676CBE4C();
    __swift_project_value_buffer(v4, qword_2801CDC90);
    v5 = sub_2676CBE2C();
    v6 = sub_2676CC23C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2675D4000, v5, v6, "#ResolveDateTime: new emails -> one week interval", v7, 2u);
      MEMORY[0x26D5FEA80](v7, -1, -1);
    }

    v8 = v0[2];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v10 = *(v9 + 48);
    sub_2676C907C();
    v11 = sub_2676C90CC();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    sub_2676C90AC();
    __swift_storeEnumTagSinglePayload(v8 + v10, 0, 1, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_267675D74()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_267675E78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26762C5D8;

  return sub_267675B18(a1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267675F24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_267675F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267675FE4()
{
  v1 = v0[2];
  v3 = v1[1];
  v2 = v1[2];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *__swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_2676760EC;

    return sub_2675ED8D0(v3, v2);
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_2676760EC(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2676761EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675F9B40;

  return sub_267675FC4();
}

uint64_t sub_26767627C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2676CABFC();
  OUTLINED_FUNCTION_5_11();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267676644(a1);
  v28 = v12;
  if (*(v12 + 16))
  {
    v14 = sub_2675EEF84(v12);
    if (v13 == 1)
    {
    }

    else
    {
      v15 = v13;
      v16 = qword_2801D3EB0;
      swift_beginAccess();
      sub_267678824(v2 + v16, &v25);
      if (v26)
      {
        sub_2675DD73C(&v25, v27);
      }

      else
      {
        v17 = sub_2676CAB5C();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        swift_allocObject();
        v20 = sub_2676CAB4C();
        v27[3] = v17;
        v27[4] = &off_2878AD3E8;
        v27[0] = v20;
        if (v26)
        {
          sub_2675E35CC(&v25, &qword_2801CC6A8, &unk_2676CF5F0);
        }
      }

      (*(v6 + 16))(v11, v2 + qword_2801D3EA0, v4);
      v21 = sub_2675EF208(v27, v11);
      (*(v6 + 8))(v11, v4);
      if (v21 < 1)
      {
        sub_267678894(v14, v15);
        __swift_destroy_boxed_opaque_existential_1(v27);
        return v28;
      }

      else
      {
        v22 = sub_26767627C(v28);
        sub_267678894(v14, v15);

        __swift_destroy_boxed_opaque_existential_1(v27);
        return v22;
      }
    }
  }

  else
  {

    return 1;
  }

  return v14;
}

uint64_t sub_267676644(uint64_t a1)
{
  if (*(v1 + 48) == 255)
  {

    return a1;
  }

  else
  {
    v3 = v1;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = OUTLINED_FUNCTION_2_24();
    sub_2676788B8(v6, v7, v8);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v9 = sub_2676CBE4C();
    __swift_project_value_buffer(v9, qword_2801CDC90);
    v10 = sub_2676CBE2C();
    v11 = sub_2676CC23C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2675D4000, v10, v11, "#ResolveRecipientsFlow merging disambiguation response into ContactState", v12, 2u);
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    v13 = -*(a1 + 16);
    for (i = 4; ; ++i)
    {
      if (i - *(a1 + 16) == 4)
      {
        v16 = OUTLINED_FUNCTION_6_18(0xF000000000000007);
        v17 = OUTLINED_FUNCTION_2_24();
        sub_2676788D0(v17, v18, v19);
        if ((~v16 & 0xF000000000000007) == 0)
        {
          goto LABEL_15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC510, &qword_2676CF268);
        a1 = swift_allocObject();
        *(a1 + 16) = xmmword_2676CDE20;
        *(a1 + 32) = v16;
LABEL_20:
        sub_267677180(v3);
        return a1;
      }

      v15 = *(a1 + 8 * i);
      if (v15 >> 62 == 2)
      {
        break;
      }
    }

    v20 = OUTLINED_FUNCTION_6_18(v15);
    v21 = OUTLINED_FUNCTION_2_24();
    sub_2676788D0(v21, v22, v23);
    if ((~v20 & 0xF000000000000007) == 0)
    {

LABEL_15:

      goto LABEL_20;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2675E096C(a1);
      a1 = v26;
    }

    if ((i - 4) < *(a1 + 16))
    {
      v25 = *(a1 + 8 * i);
      *(a1 + 8 * i) = v20;

      goto LABEL_20;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267676864(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2676C2AC8(0, v1, 0);
    v2 = v12;
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00) - 8);
    v5 = (a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v6 = *(v4 + 72);
    do
    {
      sub_26767699C(v5, &v11);
      v7 = v11;
      v12 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2676C2AC8((v8 > 1), v9 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v9 + 1;
      *(v2 + 8 * v9 + 32) = v7;
      v5 = (v5 + v6);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26767699C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v84 = a2;
  v3 = sub_2676C8C8C();
  OUTLINED_FUNCTION_5_11();
  v78 = v4;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v77 = &v74 - v12;
  MEMORY[0x28223BE20](v11);
  v79 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC360, &unk_2676D3660);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v74 - v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
  OUTLINED_FUNCTION_5_11();
  v81 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v80 = &v74 - v29;
  swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v31 = sub_2676787DC(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
  sub_2676787DC(&qword_2801CC2D0, MEMORY[0x277D5C640]);
  v76 = v31;
  v82 = a1;
  sub_2676CA87C();

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v20, 1, v32) == 1)
  {
    sub_2675E35CC(v20, &qword_2801CC068, &unk_2676D4E00);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v83);
    v33 = v84;
LABEL_4:
    sub_2675E35CC(v24, &qword_2801CC360, &unk_2676D3660);
LABEL_5:
    v38 = swift_allocBox();
    result = (*(*(v30 - 8) + 16))(v39, v82, v30);
    v41 = 0x4000000000000000;
    goto LABEL_6;
  }

  v74 = v10;
  v75 = v3;
  OUTLINED_FUNCTION_5_11();
  v35 = v34;
  (*(v36 + 16))(v18, v20, v32);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v32);
  sub_2676CB61C();
  sub_2676CB78C();
  sub_2676787DC(&qword_2801CC378, MEMORY[0x277D5C4C8]);
  v33 = v84;
  sub_2676CA8EC();
  (*(v35 + 8))(v20, v32);
  v37 = v83;
  if (__swift_getEnumTagSinglePayload(v24, 1, v83) == 1)
  {
    goto LABEL_4;
  }

  v42 = v80;
  v43 = v81;
  (*(v81 + 32))(v80, v24, v37);
  swift_getKeyPath();
  v44 = sub_2676CA89C();
  v46 = v45;

  if (!v46)
  {
    (*(v43 + 8))(v42, v37);
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_2676CA89C();
  v48 = v47;

  if (!v48)
  {
  }

  v50 = v78;
  v49 = v79;
  v51 = v74;
  static MailAddresseePrototype.from(name:email:)(v44, v79);

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v52 = sub_2676CBE4C();
  __swift_project_value_buffer(v52, qword_2801CDC90);
  v53 = *(v50 + 16);
  v54 = v77;
  v55 = v75;
  v53(v77, v49, v75);
  v56 = sub_2676CBE2C();
  v57 = sub_2676CC23C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v85 = v82;
    *v58 = 136315138;
    v53(v51, v54, v55);
    v59 = sub_2676CBFBC();
    v61 = v60;
    v62 = OUTLINED_FUNCTION_5_19();
    v63(v62);
    v64 = sub_2676B0B84(v59, v61, &v85);

    *(v58 + 4) = v64;
    OUTLINED_FUNCTION_4_23();
    _os_log_impl(v65, v66, v67, v68, v69, v70);
    __swift_destroy_boxed_opaque_existential_1(v82);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
    v49 = v79;
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  else
  {

    v71 = OUTLINED_FUNCTION_5_19();
    v72(v71);
  }

  (*(v81 + 8))(v80, v83);
  v33 = v84;
  v38 = swift_allocBox();
  result = (*(v50 + 32))(v73, v49, v55);
  v41 = 0xC000000000000000;
LABEL_6:
  *v33 = v41 | v38;
  return result;
}

uint64_t sub_267677114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB5FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267677140(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2676CB60C();
}

uint64_t sub_267677180(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = -1;
  return sub_2676788D0(v2, v1, v3);
}

uint64_t sub_26767719C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v200 = a4;
  v206 = a2;
  v198 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v199 = &v186 - v7;
  v203 = sub_2676CAB1C();
  v8 = *(v203 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v203);
  v12 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v186 - v14;
  MEMORY[0x28223BE20](v13);
  v201 = &v186 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v190 = &v186 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v186 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v197 = &v186 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v194 = (&v186 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v193 = &v186 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v192 = &v186 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v191 = &v186 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v186 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v186 - v45;
  v189 = sub_2676CAA9C();
  v188 = *(v189 - 8);
  v47 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v187 = &v186 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_2676CAECC();
  v204 = *(v202 - 8);
  v49 = *(v204 + 64);
  v50 = MEMORY[0x28223BE20](v202);
  v51 = MEMORY[0x28223BE20](v50);
  v196 = &v186 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v54 = MEMORY[0x28223BE20](v53);
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v186 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v186 - v59;
  MEMORY[0x28223BE20](v58);
  v65 = &v186 - v64;
  v66 = v200;
  v205 = a3;
  v200 = v8;
  switch(v66)
  {
    case 1:
      if ((~v198 & 0xF000000000000007) == 0 || (v198 & 0xE000000000000000) != 0x8000000000000000)
      {
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        v136 = swift_allocBox();
        v203 = v137;
        v204 = v136;
        v138 = sub_2676CB80C();
        __swift_storeEnumTagSinglePayload(v46, 1, 1, v138);
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
        __swift_storeEnumTagSinglePayload(v42, 1, 1, v139);
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
        __swift_storeEnumTagSinglePayload(v191, 1, 1, v140);
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
        __swift_storeEnumTagSinglePayload(v192, 1, 1, v141);
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
        __swift_storeEnumTagSinglePayload(v193, 1, 1, v142);
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
        __swift_storeEnumTagSinglePayload(v194, 1, 1, v143);
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
        __swift_storeEnumTagSinglePayload(v197, 1, 1, v144);
        __swift_storeEnumTagSinglePayload(v23, 1, 1, v135);
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
        __swift_storeEnumTagSinglePayload(v190, 1, 1, v145);

        sub_2676CA7DC();
        return v204 | 0x4000000000000000;
      }

      v199 = v63;
      v197 = v62;
      v121 = *((v198 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v203 = *(v121 + 16);
      sub_2676788B8(v206, a3, 1u);
      v201 = (v204 + 16);
      v122 = (v204 + 8);
      v198 = v204 + 32;

      v123 = 0;
      v200 = MEMORY[0x277D84F90];
      v124 = v202;
      while (v203 != v123)
      {
        if (v123 >= *(v121 + 16))
        {
          __break(1u);
          goto LABEL_84;
        }

        v125 = (*(v204 + 80) + 32) & ~*(v204 + 80);
        a3 = *(v204 + 72);
        (*(v204 + 16))(v57, v121 + v125 + a3 * v123, v124);
        v210 = sub_2676CAD6C();
        v211 = v126;
        v208 = v206;
        v209 = v205;
        sub_2675E69E4();
        v127 = sub_2676CC37C();

        if (v127)
        {
          v128 = *v198;
          (*v198)(v199, v57, v124);
          v129 = v200;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v207 = v129;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2676C2A30(0, *(v129 + 16) + 1, 1);
            v129 = v207;
          }

          v132 = *(v129 + 16);
          v131 = *(v129 + 24);
          v133 = v132 + 1;
          if (v132 >= v131 >> 1)
          {
            v200 = v132 + 1;
            sub_2676C2A30(v131 > 1, v132 + 1, 1);
            v133 = v200;
            v129 = v207;
          }

          ++v123;
          *(v129 + 16) = v133;
          v200 = v129;
          v134 = v129 + v125 + v132 * a3;
          v124 = v202;
          v128(v134, v199, v202);
        }

        else
        {
          (*v122)(v57, v124);
          ++v123;
        }
      }

      v146 = v200;
      if (*(v200 + 16))
      {
        sub_2676788E4(v206, v205, 1u);
        if (*(v146 + 16) == 1)
        {
          v147 = v204;
          v148 = v197;
          (*(v204 + 16))(v197, v146 + ((*(v147 + 80) + 32) & ~*(v147 + 80)), v124);

          v67 = sub_2675EDF8C();
          (*(v147 + 8))(v148, v124);
        }

        else
        {
          v185 = swift_allocObject();
          *(v185 + 16) = v146;
          return v185 | 0x8000000000000000;
        }
      }

      else
      {

        v169 = v187;
        sub_2676CAA8C();
        sub_2676CAA3C();
        v170 = v189;
        v171 = swift_allocBox();
        (*(v188 + 32))(v172, v169, v170);
        return v171 | 0x2000000000000000;
      }

      return v67;
    case 2:
      if ((~v198 & 0xF000000000000007) == 0 || (v198 & 0xE000000000000000) != 0xA000000000000000)
      {
        goto LABEL_58;
      }

      v83 = swift_projectBox();
      v84 = v196;
      (*(v204 + 16))(v196, v83, v202);
      v85 = sub_2676CAE5C();
      v86 = *(v85 + 16);
      if (v86)
      {
        v210 = MEMORY[0x277D84F90];
        sub_2676C2AE8(0, v86, 0);
        v87 = v210;
        v88 = objc_opt_self();
        v198 = *(v8 + 16);
        v199 = v88;
        v89 = *(v8 + 80);
        v195 = v85;
        v90 = v85 + ((v89 + 32) & ~v89);
        v197 = *(v8 + 72);
        v91 = (v8 + 8);
        do
        {
          v92 = v201;
          v93 = v203;
          (v198)(v201, v90, v203);
          sub_2676CAAFC();
          v94 = sub_2676CBF3C();

          v95 = [v199 localizedStringForLabel_];

          v96 = sub_2676CBF6C();
          v98 = v97;

          (*v91)(v92, v93);
          v210 = v87;
          v100 = *(v87 + 16);
          v99 = *(v87 + 24);
          if (v100 >= v99 >> 1)
          {
            sub_2676C2AE8((v99 > 1), v100 + 1, 1);
            v87 = v210;
          }

          *(v87 + 16) = v100 + 1;
          v101 = v87 + 16 * v100;
          *(v101 + 32) = v96;
          *(v101 + 40) = v98;
          v90 += v197;
          --v86;
        }

        while (v86);

        a3 = v205;
        v8 = v200;
        v84 = v196;
      }

      else
      {

        v87 = MEMORY[0x277D84F90];
      }

      v149 = 0;
      v150 = *(v87 + 16);
      v151 = (v87 + 40);
      v152 = v202;
      while (2)
      {
        if (v150 == v149)
        {
          (*(v204 + 8))(v84, v152);

LABEL_58:
          if (qword_2801CBAA0 != -1)
          {
            swift_once();
          }

          v154 = sub_2676CBE4C();
          __swift_project_value_buffer(v154, qword_2801CDC90);
          v155 = v206;
          sub_2676788B8(v206, a3, 2u);
          v75 = sub_2676CBE2C();
          v156 = sub_2676CC24C();
          sub_2676788E4(v155, a3, 2u);
          if (os_log_type_enabled(v75, v156))
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v210 = v158;
            *v157 = 136315138;
            *(v157 + 4) = sub_2676B0B84(v155, a3, &v210);
            v159 = "#ResolveRecipientsFlow contact handle resolver got label response but did not find a matching handle. label=%s";
            goto LABEL_70;
          }

          goto LABEL_72;
        }

        if (v149 >= *(v87 + 16))
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v153 = *v151;
        v210 = *(v151 - 1);
        v211 = v153;
        v208 = v206;
        v209 = a3;
        sub_2675E69E4();
        if ((sub_2676CC35C() & 1) == 0)
        {
          ++v149;
          v151 += 2;
          continue;
        }

        break;
      }

      result = sub_2676CAE5C();
      if (v149 < *(result + 16))
      {
        v161 = v84;
        v162 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v163 = *(v8 + 16);
        v164 = v201;
        v165 = v203;
        v163(v201, result + v162 + *(v8 + 72) * v149, v203);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_2676CDE20;
        v163((v166 + v162), v164, v165);
        sub_2676CAE6C();
        sub_2676C8C8C();
        v167 = swift_allocBox();
        sub_2675E38E4(v168);
        (*(v8 + 8))(v164, v165);
        (*(v204 + 8))(v161, v202);
        return v167 | 0xC000000000000000;
      }

      __break(1u);
      return result;
    case 3:
      if ((~v198 & 0xF000000000000007) == 0 || (v198 & 0xE000000000000000) != 0xA000000000000000)
      {
        goto LABEL_66;
      }

      v191 = v15;
      v102 = v61;
      v103 = swift_projectBox();
      v104 = v202;
      (*(v204 + 16))(v102, v103, v202);
      v192 = v102;
      v105 = sub_2676CAE5C();
      v106 = 0;
      v107 = *(v105 + 16);
      v201 = (v8 + 16);
      v197 = v8 + 8;
      v198 = v107;
      v195 = v12;
      while (2)
      {
        if (v198 != v106)
        {
          if (v106 >= *(v105 + 16))
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v108 = *(v8 + 72);
          v109 = v105;
          v196 = ((*(v8 + 80) + 32) & ~*(v8 + 80));
          v193 = v108;
          v194 = *(v8 + 16);
          v194(v12, &v196[v105 + v108 * v106], v203);
          v210 = sub_2676CAB0C();
          v211 = v110;
          v111 = v199;
          sub_2676C910C();
          v112 = sub_2676C911C();
          __swift_storeEnumTagSinglePayload(v111, 0, 1, v112);
          sub_2675E69E4();
          v113 = sub_2676CC31C();
          v115 = v114;
          sub_2675E35CC(v111, &qword_2801CCED8, &unk_2676D1390);

          v210 = v206;
          v211 = v205;
          sub_2676C910C();
          __swift_storeEnumTagSinglePayload(v111, 0, 1, v112);
          v116 = sub_2676CC31C();
          v118 = v117;
          sub_2675E35CC(v111, &qword_2801CCED8, &unk_2676D1390);
          if (v113 == v116 && v115 == v118)
          {

            v104 = v202;
          }

          else
          {
            v120 = sub_2676CC59C();

            v104 = v202;
            if ((v120 & 1) == 0)
            {
              v12 = v195;
              (*v197)(v195, v203);
              ++v106;
              a3 = v205;
              v8 = v200;
              v105 = v109;
              continue;
            }
          }

          v175 = v200 + 32;
          v176 = v191;
          v177 = v203;
          (*(v200 + 32))(v191, v195, v203);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
          v178 = v196;
          v179 = swift_allocObject();
          *(v179 + 16) = xmmword_2676CDE20;
          v194(&v178[v179], v176, v177);
          v180 = v192;
          sub_2676CAE6C();
          sub_2676C8C8C();
          v167 = swift_allocBox();
          sub_2675E38E4(v181);
          (*(v175 - 24))(v176, v177);
          (*(v204 + 8))(v180, v104);
          return v167 | 0xC000000000000000;
        }

        break;
      }

      (*(v204 + 8))(v192, v104);

LABEL_66:
      if (qword_2801CBAA0 != -1)
      {
        swift_once();
      }

      v173 = sub_2676CBE4C();
      __swift_project_value_buffer(v173, qword_2801CDC90);
      v174 = v206;
      sub_2676788B8(v206, a3, 3u);
      v75 = sub_2676CBE2C();
      v156 = sub_2676CC24C();
      sub_2676788E4(v174, a3, 3u);
      if (!os_log_type_enabled(v75, v156))
      {
        goto LABEL_72;
      }

      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v210 = v158;
      *v157 = 136315138;
      *(v157 + 4) = sub_2676B0B84(v174, a3, &v210);
      v159 = "#ResolveRecipientsFlow contact handle resolver got value response but did not find a matching handle. value=%s";
LABEL_70:
      _os_log_impl(&dword_2675D4000, v75, v156, v159, v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v158);
      MEMORY[0x26D5FEA80](v158, -1, -1);
      v82 = v157;
      goto LABEL_71;
    case 4:
      if (qword_2801CBAA0 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_87;
    default:
      v67 = 0xF000000000000007;
      if ((~v198 & 0xF000000000000007) == 0 || (v198 & 0xE000000000000000) != 0x8000000000000000)
      {
        return v67;
      }

      v68 = *((v198 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v69 = *(v68 + 16);
      v70 = (v204 + 8);

      a3 = 0;
      break;
  }

  while (1)
  {
    if (v69 == a3)
    {

      return 0xF000000000000007;
    }

    if (a3 >= *(v68 + 16))
    {
LABEL_86:
      __break(1u);
LABEL_87:
      swift_once();
LABEL_14:
      v74 = sub_2676CBE4C();
      __swift_project_value_buffer(v74, qword_2801CDC90);
      v75 = sub_2676CBE2C();
      v76 = sub_2676CC24C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v208 = v78;
        *v77 = 136315138;
        v210 = v206;
        v211 = a3;
        v212 = 4;
        v79 = sub_2676CBFBC();
        v81 = sub_2676B0B84(v79, v80, &v208);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_2675D4000, v75, v76, "#ResolveRecipientsFlow contact handle resolver got unexpected prompt response %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x26D5FEA80](v78, -1, -1);
        v82 = v77;
LABEL_71:
        MEMORY[0x26D5FEA80](v82, -1, -1);
      }

LABEL_72:

      return 0xF000000000000007;
    }

    (*(v204 + 16))(v60, v68 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * a3, v202);
    if (sub_2676CADFC() == v206 && v71 == v205)
    {
      break;
    }

    v73 = sub_2676CC59C();

    if (v73)
    {
      goto LABEL_81;
    }

    (*v70)(v60, v202);
    ++a3;
  }

LABEL_81:

  v182 = v204 + 32;
  v183 = v60;
  v184 = v202;
  (*(v204 + 32))(v65, v183, v202);
  v67 = sub_2675EDF8C();
  (*(v182 - 24))(v65, v184);
  return v67;
}

uint64_t sub_2676787DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267678824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6A8, &unk_2676CF5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267678894(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_2676788B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2676788D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2676788E4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2676788E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t a1)
{

  return sub_26767719C(a1, v2, v3, v1);
}

uint64_t sub_2676789A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_20();

  sub_267625A2C();
  sub_2676CBA1C();
  sub_2676790DC(&qword_2801CC670, MEMORY[0x277D5C808]);
  OUTLINED_FUNCTION_8_23();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_2676790DC(v15, v16);
  OUTLINED_FUNCTION_7_22();

  (*(v11 + 8))(v0, v9);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24();
  sub_2676790DC(v17, v18);
  OUTLINED_FUNCTION_6_19();

  return (*(v3 + 8))(v8, v1);
}

uint64_t sub_267678BF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_20();

  sub_267625A2C();
  sub_2676CBA6C();
  sub_2676790DC(&qword_2801CC680, MEMORY[0x277D5C828]);
  OUTLINED_FUNCTION_8_23();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_2676790DC(v15, v16);
  OUTLINED_FUNCTION_7_22();

  (*(v11 + 8))(v0, v9);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24();
  sub_2676790DC(v17, v18);
  OUTLINED_FUNCTION_6_19();

  return (*(v3 + 8))(v8, v1);
}

uint64_t sub_267678E80(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEA0, &qword_2676D1348);
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEA8, &unk_2676D1350);
  OUTLINED_FUNCTION_3(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_20();
  sub_2676CB9FC();
  sub_2676790DC(&qword_2801CC738, MEMORY[0x277D5C7E8]);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  v19 = sub_2676790DC(v17, v18);
  sub_2676C988C();

  (*(v13 + 8))(v2, v11);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_1_24();
  v23 = sub_2676790DC(v21, v22);
  v26(KeyPath, v3, v19, v23);

  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_2676790DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267679124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20]();
  v13 = &v15 - v12;
  sub_267607B28(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t OUTLINED_FUNCTION_6_19()
{

  return sub_2676C98AC();
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_2676C988C();
}

uint64_t OUTLINED_FUNCTION_8_23()
{

  return sub_2676C98BC();
}

uint64_t sub_267679294()
{
  result = sub_2676CABFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_267679368(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_2676C8C8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v24 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = 0;
  v29 = *(a1 + 16);
  v26 = (v4 + 8);
  v27 = v4 + 16;
  v23 = (v4 + 32);
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v29 == v11)
    {

      return v25;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = *(v4 + 72);
    v14 = a1;
    (*(v4 + 16))(v10, a1 + v12 + v13 * v11, v3);
    sub_2676C8C4C();
    v15 = sub_2676ACEBC();

    if (v15)
    {
      v22 = *v23;
      v22(v24, v10, v3);
      v16 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v16;
      v30 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2676C2778(0, *(v16 + 16) + 1, 1);
        v18 = v30;
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        v25 = v3;
        sub_2676C2778(v19 > 1, v20 + 1, 1);
        v3 = v25;
        v18 = v30;
      }

      ++v11;
      *(v18 + 16) = v20 + 1;
      v25 = v18;
      result = (v22)(v18 + v12 + v20 * v13, v24, v3);
      a1 = v14;
    }

    else
    {
      result = (*v26)(v10, v3);
      ++v11;
      a1 = v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267679614(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  sub_267679694(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t *sub_267679694(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *v6;
  v10 = sub_2676CAB6C();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_2();
  v64 = v17 - v16;
  v73 = sub_2676CAC6C();
  v18 = OUTLINED_FUNCTION_3(v73);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_2();
  v74 = v24 - v23;
  v25 = sub_2676CAC1C();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_2();
  v29 = sub_2676C911C();
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F0, &qword_2676D3250);
  OUTLINED_FUNCTION_4_1(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  v66 = v37;
  v69 = sub_2676CABFC();
  v38 = OUTLINED_FUNCTION_3(v69);
  v67 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_2();
  v65 = v43 - v42;
  v6[4] = 0;
  v6[5] = 0;
  *(v6 + 48) = -1;
  v44 = v6 + qword_2801D3EB0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v68 = v44;
  *(v44 + 32) = 0;
  v45 = (v6 + qword_2801CD3D0);
  *v45 = 0;
  v45[1] = 0;
  v46 = (v6 + qword_2801CD3D8);
  *v46 = 0;
  v46[1] = 0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v47 = sub_2676CBE4C();
  __swift_project_value_buffer(v47, qword_2801CDC90);

  v48 = sub_2676CBE2C();
  v49 = sub_2676CC23C();

  if (os_log_type_enabled(v48, v49))
  {
    v63 = v13;
    v50 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v50 = 136315394;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    v52 = MEMORY[0x26D5FDDD0](a1, v51);
    v54 = v20;
    v55 = a1;
    v56 = sub_2676B0B84(v52, v53, v77);

    *(v50 + 4) = v56;
    a1 = v55;
    v20 = v54;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_2676B0B84(a2, a3, v77);
    _os_log_impl(&dword_2675D4000, v48, v49, "#ResolveRecipientsFlow init with %s and parameter %s", v50, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_6();
    v13 = v63;
    OUTLINED_FUNCTION_2_5();
  }

  v57 = sub_267676864(a1);

  v7[2] = v57;
  *(v7 + 24) = 0;
  sub_2676CACCC();
  v58 = sub_2676CACDC();
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v58);
  sub_2676C910C();
  sub_2676CAC0C();
  (*(v20 + 104))(v74, *MEMORY[0x277D56148], v73);
  (*(v13 + 104))(v64, *MEMORY[0x277D560D0], v10);
  sub_2676CABEC();
  (*(v67 + 32))(v7 + qword_2801D3EA0, v65, v69);
  v59 = (v7 + qword_2801D3EA8);
  *v59 = a2;
  v59[1] = a3;
  swift_beginAccess();
  sub_26767D854(a5, v68);
  swift_endAccess();
  v60 = v7 + qword_2801D3EB8;
  v61 = *(a6 + 16);
  *v60 = *a6;
  *(v60 + 16) = v61;
  *(v60 + 32) = *(a6 + 32);
  *(v7 + qword_2801D3EC0) = a4;
  return v7;
}

uint64_t sub_267679C54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD488, &qword_2676D31F8);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = *(v0 + 16);
  switch(*(v0 + 24))
  {
    case 1:
      v33 = *(v0 + 16);
      v34 = 0;

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
      OUTLINED_FUNCTION_19_6(v18);
      v35 = v1;
      OUTLINED_FUNCTION_0_23();
      v36 = sub_2676148C4(v19, v20, v21);
      __swift_allocate_boxed_opaque_existential_1(&v33);
      OUTLINED_FUNCTION_6_20();
      v22();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      goto LABEL_8;
    case 2:
      v33 = *(v0 + 16);
      v34 = 1;
      sub_26767D63C(v9, 2u);
      v12 = v9;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
      OUTLINED_FUNCTION_19_6(v13);
      v35 = v1;
      OUTLINED_FUNCTION_0_23();
      v36 = sub_2676148C4(v14, v15, v16);
      __swift_allocate_boxed_opaque_existential_1(&v33);
      OUTLINED_FUNCTION_6_20();
      v17();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      sub_267678894(v9, 2u);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_9;
    case 3:
      if (v9)
      {
        sub_267679FF0(MEMORY[0x277D84F90], v32);
        sub_2676C961C();
        sub_2676C961C();
LABEL_6:
        sub_2676C961C();
        OUTLINED_FUNCTION_9_23();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(v30);
        __swift_destroy_boxed_opaque_existential_1(v31);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }

      else
      {
        sub_2676C9CCC();
        sub_26767D660();
        v24 = OUTLINED_FUNCTION_20_10();
        sub_2676C9CBC();
        v33 = v24;
        v34 = 1;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
        OUTLINED_FUNCTION_19_6(v25);
        v35 = v1;
        OUTLINED_FUNCTION_0_23();
        v36 = sub_2676148C4(v26, v27, v28);
        __swift_allocate_boxed_opaque_existential_1(&v33);
        OUTLINED_FUNCTION_6_20();
        v29();
        sub_2676C961C();
        OUTLINED_FUNCTION_9_23();
        sub_2676C961C();
LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(v32);
        (*(v3 + 8))(v8, v1);
      }

      sub_2676C961C();
      return __swift_destroy_boxed_opaque_existential_1(&v33);
    default:
      v10 = *(v0 + 16);

      sub_267679FF0(v11, v32);
      sub_267678894(v9, 0);
      sub_2676C961C();
      sub_2676C961C();
      goto LABEL_6;
  }
}

uint64_t sub_267679FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD460, &qword_2676D31D0);
  OUTLINED_FUNCTION_3(v248);
  v246 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v10);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD468, &qword_2676D31D8);
  OUTLINED_FUNCTION_3(v250);
  v249 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v15);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD470, &qword_2676D31E0);
  OUTLINED_FUNCTION_3(v256);
  v255 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v20);
  v244 = sub_2676C9BFC();
  v21 = OUTLINED_FUNCTION_3(v244);
  v243 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_2();
  v27 = v26 - v25;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD478, &unk_2676D31E8);
  OUTLINED_FUNCTION_3(v254);
  v253 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v32);
  v33 = sub_2676CAECC();
  v34 = OUTLINED_FUNCTION_3(v33);
  v257 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4();
  v241 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v236 - v40;
  v42 = sub_2676CAA9C();
  v43 = OUTLINED_FUNCTION_3(v42);
  v260 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  v258 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11_5(&v236 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  OUTLINED_FUNCTION_4_1(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v54);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v55 = sub_2676CBE4C();
  v56 = __swift_project_value_buffer(v55, qword_2801CDC90);

  v57 = sub_2676CBE2C();
  v58 = sub_2676CC23C();

  v59 = os_log_type_enabled(v57, v58);
  v239 = v27;
  v242 = v41;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v238 = v56;
    *&v262 = v61;
    *v60 = 136315394;
    v62 = MEMORY[0x26D5FDDD0](a1, &type metadata for ContactState);
    v259 = v42;
    v64 = a1;
    v65 = a2;
    v66 = sub_2676B0B84(v62, v63, &v262);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2080;
    v67 = *(v3 + 40);
    v68 = *(v3 + 48);
    v266 = *(v3 + 32);
    v267 = v67;
    LOBYTE(v268) = v68;
    sub_26767D820(v266, v67, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4D8, &qword_2676D3238);
    v69 = sub_2676CBFBC();
    v71 = sub_2676B0B84(v69, v70, &v262);
    v42 = v259;

    *(v60 + 14) = v71;
    a2 = v65;
    a1 = v64;
    _os_log_impl(&dword_2675D4000, v57, v58, "#ResolveRecipientsFlow resolving contact states: %s. disambiguationResponse: %s", v60, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v72 = sub_26767627C(a1);
  v74 = v73;
  v75 = *(v3 + 16);
  *(v3 + 16) = v72;
  v76 = *(v3 + 24);
  *(v3 + 24) = v73;
  sub_26767D63C(v72, v73);
  sub_267678894(v75, v76);
  switch(v74)
  {
    case 1u:

      v110 = sub_2676CBE2C();
      v111 = sub_2676CC23C();
      sub_267678894(v72, 1u);
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v266 = v113;
        *v112 = 136315138;
        v114 = sub_2676C8C8C();
        v115 = MEMORY[0x26D5FDDD0](v72, v114);
        v117 = sub_2676B0B84(v115, v116, &v266);

        *(v112 + 4) = v117;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v118, v119, v120, v121, v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v113);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_4_6();
      }

      v266 = v72;
      LOBYTE(v267) = 0;
      goto LABEL_24;
    case 2u:
      v266 = v72;
      goto LABEL_23;
    case 3u:
      if (v72)
      {
        v103 = v261;
        __swift_storeEnumTagSinglePayload(v261, 1, 1, v42);
        v104 = *(v3 + qword_2801D3EA8);
        v105 = *(v3 + qword_2801D3EA8 + 8);

        sub_267680CDC(v103, v104, v105, &v266);

        sub_2675EB7EC(v103, &qword_2801CC300, &unk_2676D09B0);
        v106 = OUTLINED_FUNCTION_15_16();
        sub_2675E5D38(v106, v107);
        v108 = sub_2676C9FBC();
        OUTLINED_FUNCTION_27_9(v108, MEMORY[0x277D5C1C0]);
        OUTLINED_FUNCTION_26_9();
        return __swift_destroy_boxed_opaque_existential_1(&v266);
      }

      sub_2676C9CCC();
      sub_26767D660();
      v123 = OUTLINED_FUNCTION_20_10();
      sub_2676C9CBC();
      v266 = v123;
      goto LABEL_23;
    default:
      v238 = swift_allocObject();
      *(v238 + 16) = v72;
      v77 = sub_2676CBE2C();
      v78 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v78))
      {
        v79 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v79);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v85 = 0;
      v86 = v72[2];
      v87 = v72 + 4;
      while (2)
      {
        if (v86 == v85)
        {

          v124 = sub_2676CBE2C();
          v125 = sub_2676CC24C();
          if (OUTLINED_FUNCTION_5_5(v125))
          {
            v126 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v126);
            OUTLINED_FUNCTION_3_7();
            _os_log_impl(v127, v128, v129, v130, v131, 2u);
            OUTLINED_FUNCTION_4_6();
          }

          sub_2675F05C8();
          v132 = OUTLINED_FUNCTION_20_10();
          *v133 = 0xD00000000000002BLL;
          *(v133 + 8) = 0x80000002676D7A60;
          *(v133 + 16) = 0;
          v266 = v132;
LABEL_23:
          LOBYTE(v267) = 1;
LABEL_24:
          v134 = OUTLINED_FUNCTION_28_3();
          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v134, v135);
          OUTLINED_FUNCTION_0_23();
          a2[4] = sub_2676148C4(v136, &qword_2801CD488, &qword_2676D31F8);
          __swift_allocate_boxed_opaque_existential_1(a2);
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
          return OUTLINED_FUNCTION_18_10(v137);
        }

        else
        {
          v88 = v85++;
          v89 = v87[v88];
          switch(v89 >> 61)
          {
            case 1uLL:
              v180 = swift_projectBox();
              v181 = v260;
              v182 = *(v260 + 16);
              v183 = v240;
              v182(v240, v180, v42);
              v184 = v261;
              v182(v261, v183, v42);
              __swift_storeEnumTagSinglePayload(v184, 0, 1, v42);
              v185 = *(v3 + qword_2801D3EA8);
              v186 = *(v3 + qword_2801D3EA8 + 8);

              sub_267680CDC(v184, v185, v186, &v266);

              sub_2675EB7EC(v184, &qword_2801CC300, &unk_2676D09B0);
              v187 = OUTLINED_FUNCTION_15_16();
              sub_2675E5D38(v187, v188);
              v189 = sub_2676C9FBC();
              OUTLINED_FUNCTION_27_9(v189, MEMORY[0x277D5C1C0]);
              OUTLINED_FUNCTION_26_9();
              __swift_destroy_boxed_opaque_existential_1(&v266);
              (*(v181 + 8))(v183, v42);
              goto LABEL_35;
            case 2uLL:

              v206 = sub_2676CBE2C();
              v207 = sub_2676CC24C();
              if (OUTLINED_FUNCTION_5_5(v207))
              {
                v208 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v208);
                OUTLINED_FUNCTION_3_7();
                _os_log_impl(v209, v210, v211, v212, v213, 2u);
                OUTLINED_FUNCTION_4_6();
              }

              sub_2675F05C8();
              v214 = OUTLINED_FUNCTION_20_10();
              *v215 = 0xD000000000000050;
              *(v215 + 8) = 0x80000002676D7A00;
              *(v215 + 16) = 0;
              v266 = v214;
              LOBYTE(v267) = 1;
              v216 = OUTLINED_FUNCTION_28_3();
              a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v216, v217);
              OUTLINED_FUNCTION_0_23();
              a2[4] = sub_2676148C4(v218, &qword_2801CD488, &qword_2676D31F8);
              __swift_allocate_boxed_opaque_existential_1(a2);
              v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
              OUTLINED_FUNCTION_18_10(v219);
              goto LABEL_35;
            case 3uLL:
              v138 = swift_projectBox();
              v139 = v257;
              v140 = v242;
              (*(v257 + 16))(v242, v138, v33);

              v141 = sub_2676CBE2C();
              v142 = sub_2676CC24C();
              if (OUTLINED_FUNCTION_5_5(v142))
              {
                v143 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v143);
                OUTLINED_FUNCTION_3_7();
                _os_log_impl(v144, v145, v146, v147, v148, 2u);
                OUTLINED_FUNCTION_4_6();
              }

              v149 = sub_2675E3A44();
              sub_2675F05C8();
              v150 = OUTLINED_FUNCTION_20_10();
              *v151 = v149;
              *(v151 + 8) = 0;
              *(v151 + 16) = 1;
              v266 = v150;
              LOBYTE(v267) = 1;
              v152 = OUTLINED_FUNCTION_28_3();
              a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v152, v153);
              OUTLINED_FUNCTION_0_23();
              a2[4] = sub_2676148C4(v154, &qword_2801CD488, &qword_2676D31F8);
              __swift_allocate_boxed_opaque_existential_1(a2);
              v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
              OUTLINED_FUNCTION_18_10(v155);
              (*(v139 + 8))(v140, v33);
              goto LABEL_35;
            case 4uLL:
              v199 = *((v89 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v200 = *(v3 + qword_2801D3EA8);
              v201 = *(v3 + qword_2801D3EA8 + 8);
              v202 = *(v3 + qword_2801D3EC0);

              sub_26767DA20(v199, v200, v201, v202, &v266);

              v203 = OUTLINED_FUNCTION_15_16();
              sub_2675E5D38(v203, v204);
              v205 = sub_2676C9FBC();
              OUTLINED_FUNCTION_27_9(v205, MEMORY[0x277D5C1C0]);
              OUTLINED_FUNCTION_26_9();
              __swift_destroy_boxed_opaque_existential_1(&v266);

              goto LABEL_36;
            case 5uLL:
              v190 = swift_projectBox();
              v191 = v257;
              v192 = v241;
              (*(v257 + 16))(v241, v190, v33);
              v193 = *(v3 + qword_2801D3EA8);
              v194 = *(v3 + qword_2801D3EA8 + 8);
              v195 = *(v3 + qword_2801D3EC0);

              sub_26767EB60(v192, v193, v194, v195, &v266);

              v196 = OUTLINED_FUNCTION_15_16();
              sub_2675E5D38(v196, v197);
              v198 = sub_2676C9FBC();
              OUTLINED_FUNCTION_27_9(v198, MEMORY[0x277D5C1C0]);
              OUTLINED_FUNCTION_26_9();
              __swift_destroy_boxed_opaque_existential_1(&v266);
              (*(v191 + 8))(v192, v33);
              goto LABEL_35;
            case 6uLL:
              continue;
            case 7uLL:
              v260 = v33;
              v156 = *((v89 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v157 = *((v89 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v261 = v89 & 0x1FFFFFFFFFFFFFFFLL;
              sub_26767D764(v3 + qword_2801D3EB8, &v262, &qword_2801CC6B0, &qword_2676CFC80);

              sub_2676B366C(&v262, &v266);
              v158 = v245;
              sub_2676B377C();
              sub_26767D6B8(&v266);
              v159 = swift_allocObject();
              v160 = v238;
              v161 = v85 - 1;
              v159[2] = v238;
              v159[3] = v85 - 1;
              v159[4] = v3;

              v162 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD4A0, &unk_2676D3210);
              v163 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD4A8, &qword_2676D51C0);
              v164 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD4B0, &qword_2676D3220);
              v237 = a2;
              v165 = v164;
              v166 = sub_2676148C4(&qword_2801CD4B8, &qword_2801CD4B0, &qword_2676D3220);
              v266 = v165;
              v267 = v166;
              OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
              v266 = v162;
              v267 = v163;
              v268 = OpaqueTypeConformance2;
              v168 = swift_getOpaqueTypeConformance2();
              v169 = v247;
              v170 = v248;
              v171 = v260;
              sub_2676C942C();

              (*(v246 + 8))(v158, v170);
              v172 = swift_allocObject();
              v172[2] = v160;
              v172[3] = v161;
              v172[4] = v3;

              v266 = v170;
              v267 = v171;
              v268 = v168;
              OUTLINED_FUNCTION_5_21();
              v173 = swift_getOpaqueTypeConformance2();
              v174 = v252;
              v175 = v250;
              sub_2676C941C();

              (*(v249 + 8))(v169, v175);
              v176 = v256;
              v269 = v256;
              *&v262 = v175;
              *(&v262 + 1) = v171;
              v263 = v173;
              v270 = swift_getOpaqueTypeConformance2();
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
              v178 = v255;
              (*(v255 + 16))(boxed_opaque_existential_1, v174, v176);
              v179 = sub_2676C9FBC();
              OUTLINED_FUNCTION_25_13(v179, MEMORY[0x277D5C1C0]);
              sub_2676C9FAC();
              (*(v178 + 8))(v174, v176);

              goto LABEL_36;
            default:
              v90 = v42;
              v91 = v238;
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
              v93 = swift_projectBox();
              v94 = *(v93 + *(v92 + 48));
              v95 = *(v260 + 16);
              v259 = v90;
              v95(v258, v93, v90);

              v96 = sub_2675EC018();
              v98 = v97;
              v99 = qword_2801D3EB0;
              swift_beginAccess();
              sub_26767D764(v3 + v99, &v266, &qword_2801CC6A8, &unk_2676CF5F0);
              v261 = v85 - 1;
              v237 = a2;
              if (v269)
              {
                v100 = OUTLINED_FUNCTION_15_16();
                sub_2675DD73C(v100, v101);
                v102 = v239;
              }

              else
              {
                v220 = sub_2676CAB5C();
                v221 = *(v220 + 48);
                v222 = *(v220 + 52);
                swift_allocObject();
                v223 = sub_2676CAB4C();
                v264 = v220;
                v265 = &off_2878AD3E8;
                *&v262 = v223;
                v102 = v239;
                if (v269)
                {
                  sub_2675EB7EC(&v266, &qword_2801CC6A8, &unk_2676CF5F0);
                }
              }

              LOBYTE(v266) = 0;
              v267 = v96;
              v268 = v98;
              sub_2675DD73C(&v262, &v269);
              (*(v243 + 104))(v102, *MEMORY[0x277D5BDF0], v244);
              v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4C0, &unk_2676D3228);
              v225 = *(v224 + 48);
              v226 = *(v224 + 52);
              swift_allocObject();
              sub_26767D7C0();
              v266 = sub_2676C9F5C();
              v227 = swift_allocObject();
              v228 = v261;
              v227[2] = v91;
              v227[3] = v228;
              v227[4] = v94;
              v227[5] = v3;

              v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
              v230 = sub_2676148C4(&qword_2801CD4D0, &qword_2801CD4C0, &unk_2676D3228);
              v231 = v251;
              sub_2676C942C();

              v232 = v254;
              v269 = v254;
              *&v262 = v224;
              *(&v262 + 1) = v229;
              v263 = v230;
              OUTLINED_FUNCTION_5_21();
              v270 = swift_getOpaqueTypeConformance2();
              v233 = __swift_allocate_boxed_opaque_existential_1(&v266);
              v234 = v253;
              (*(v253 + 16))(v233, v231, v232);
              v235 = sub_2676C9FBC();
              OUTLINED_FUNCTION_25_13(v235, MEMORY[0x277D5C1C0]);
              sub_2676C9FAC();

              (*(v234 + 8))(v231, v232);
              (*(v260 + 8))(v258, v259);
LABEL_35:

LABEL_36:

              break;
          }
        }

        return result;
      }
  }
}

void sub_26767B4C4(uint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5)
{
  v206 = a5;
  v207 = a3;
  v217 = a2;
  v7 = sub_2676CAECC();
  v214 = *(v7 - 8);
  v8 = *(v214 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v212 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v199 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v199 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v199 - v18;
  MEMORY[0x28223BE20](v17);
  v211 = &v199 - v20;
  v224 = sub_2676CAB1C();
  v219 = *(v224 - 8);
  v21 = *(v219 + 64);
  MEMORY[0x28223BE20](v224);
  v223 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2676C8C8C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v220 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v226[0] = MEMORY[0x277D84FA0];

  v29 = sub_267679368(v28, v226);
  v216 = 0;

  v30 = sub_26760A9D0(v29);

  if (*(v30 + 16))
  {
    v208 = v23;
    v205 = v16;
    if (qword_2801CBAA0 != -1)
    {
LABEL_99:
      swift_once();
    }

    v31 = sub_2676CBE4C();
    v32 = __swift_project_value_buffer(v31, qword_2801CDC90);
    v33 = a4 & 0x1FFFFFFFFFFFFFFFLL;

    v209 = v32;
    v34 = sub_2676CBE2C();
    v23 = a4;
    v35 = sub_2676CC23C();

    v36 = os_log_type_enabled(v34, v35);
    v213 = v7;
    v215 = v13;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v210 = v19;
      v39 = v38;
      v225 = v23;
      v226[0] = v38;
      *v37 = 136315138;
      v19 = v33;

      v40 = sub_2676CBFBC();
      v42 = v24;
      v43 = sub_2676B0B84(v40, v41, v226);

      *(v37 + 4) = v43;
      v24 = v42;
      _os_log_impl(&dword_2675D4000, v34, v35, "#ResolveRecipientsFlow alternateState: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v44 = v39;
      a4 = v210;
      v13 = v215;
      MEMORY[0x26D5FEA80](v44, -1, -1);
      v45 = v37;
      v7 = v213;
      MEMORY[0x26D5FEA80](v45, -1, -1);
    }

    else
    {
      a4 = v19;
      v19 = v33;
    }

    switch(v23 >> 61)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        v55 = *(v19 + 16);
        v205 = *(v55 + 16);
        if (!v205)
        {
          goto LABEL_17;
        }

        v201 = (*(v214 + 80) + 32) & ~*(v214 + 80);
        v202 = v55 + v201;
        v211 = (v214 + 16);
        v221 = (v219 + 8);
        v222 = (v219 + 16);
        v203 = (v214 + 8);
        v200 = (v214 + 32);

        v57 = 0;
        v204 = v56;
        break;
      case 5uLL:
        v117 = swift_projectBox();
        v118 = *(v214 + 16);
        v23 = a4;
        v220 = v214 + 16;
        v216 = v118;
        (v118)(a4, v117, v7);
        v218 = v30;
        sub_2675E3FBC(v30);
        v120 = v119;
        v121 = *(v119 + 2);
        v210 = a4;
        if (v121)
        {
          v226[0] = MEMORY[0x277D84F90];
          sub_2676C2AE8(0, v121, 0);
          v122 = v226[0];
          v123 = *(v219 + 16);
          v124 = *(v219 + 80);
          v215 = v120;
          v125 = &v120[(v124 + 32) & ~v124];
          v221 = *(v219 + 72);
          v222 = v123;
          v126 = (v219 + 8);
          do
          {
            v127 = v223;
            v128 = v224;
            v222(v223, v125, v224);
            v129 = sub_2676CAB0C();
            v131 = v130;
            (*v126)(v127, v128);
            v226[0] = v122;
            v133 = *(v122 + 16);
            v132 = *(v122 + 24);
            if (v133 >= v132 >> 1)
            {
              sub_2676C2AE8((v132 > 1), v133 + 1, 1);
              v122 = v226[0];
            }

            *(v122 + 16) = v133 + 1;
            v134 = v122 + 16 * v133;
            *(v134 + 32) = v129;
            *(v134 + 40) = v131;
            v125 = v221 + v125;
            --v121;
          }

          while (v121);

          v23 = v210;
        }

        else
        {

          v122 = MEMORY[0x277D84F90];
        }

        v226[0] = v122;
        v151 = sub_2676CAE5C();
        v152 = *(v151 + 16);
        if (v152)
        {
          v225 = MEMORY[0x277D84F90];
          sub_2676C2AE8(0, v152, 0);
          v153 = v225;
          v154 = *(v219 + 16);
          v155 = *(v219 + 80);
          v215 = v151;
          v156 = v151 + ((v155 + 32) & ~v155);
          v221 = *(v219 + 72);
          v222 = v154;
          v219 += 16;
          v157 = (v219 - 8);
          do
          {
            v158 = v223;
            v159 = v224;
            v222(v223, v156, v224);
            v160 = sub_2676CAB0C();
            v162 = v161;
            (*v157)(v158, v159);
            v225 = v153;
            v164 = *(v153 + 16);
            v163 = *(v153 + 24);
            if (v164 >= v163 >> 1)
            {
              sub_2676C2AE8((v163 > 1), v164 + 1, 1);
              v153 = v225;
            }

            *(v153 + 16) = v164 + 1;
            v165 = v153 + 16 * v164;
            *(v165 + 32) = v160;
            *(v165 + 40) = v162;
            v156 += v221;
            --v152;
          }

          while (v152);

          v23 = v210;
        }

        else
        {

          v153 = MEMORY[0x277D84F90];
        }

        v225 = v153;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4E0, &unk_2676D3240);
        sub_2676148C4(&qword_2801CD4E8, &qword_2801CD4E0, &unk_2676D3240);
        v166 = sub_2676CC21C();

        v24 = v213;
        if (v166)
        {
          v167 = v217;
          swift_beginAccess();
          sub_26767CFE8(v218, (v167 + 16), v207);
          swift_endAccess();

          goto LABEL_96;
        }

        a4 = v205;
        v216(v205, v23, v213);
        v146 = v218;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_87;
        }

        goto LABEL_107;
      case 6uLL:
        v91 = swift_projectBox();
        v215 = v24;
        v23 = v220;
        (*(v24 + 16))(v220, v91, v208);
        v218 = v30;
        sub_2675E3FBC(v30);
        v93 = v92;
        a4 = *(v92 + 16);
        if (a4)
        {
          v226[0] = MEMORY[0x277D84F90];
          sub_2676C2AE8(0, a4, 0);
          v94 = v226[0];
          v95 = v219 + 16;
          v96 = *(v219 + 16);
          v97 = *(v219 + 80);
          v219 = v93;
          v98 = (v93 + ((v97 + 32) & ~v97));
          v221 = *(v95 + 56);
          v222 = v96;
          v99 = (v95 - 8);
          do
          {
            v100 = v223;
            v101 = v224;
            v222(v223, v98, v224);
            v102 = sub_2676CAB0C();
            v104 = v103;
            (*v99)(v100, v101);
            v226[0] = v94;
            v106 = *(v94 + 16);
            v105 = *(v94 + 24);
            if (v106 >= v105 >> 1)
            {
              sub_2676C2AE8((v105 > 1), v106 + 1, 1);
              v94 = v226[0];
            }

            *(v94 + 16) = v106 + 1;
            v107 = v94 + 16 * v106;
            *(v107 + 32) = v102;
            *(v107 + 40) = v104;
            v98 = v221 + v98;
            --a4;
          }

          while (a4);

          v7 = v213;
          v23 = v220;
        }

        else
        {

          v94 = MEMORY[0x277D84F90];
        }

        MEMORY[0x28223BE20](v135);
        *(&v199 - 2) = v23;
        v136 = sub_2676A25A0(sub_26767D834, (&v199 - 4), v94);

        if (v136)
        {
          v137 = v217;
          swift_beginAccess();
          sub_26767CFE8(v218, (v137 + 16), v207);
          swift_endAccess();

          v24 = v215;
          goto LABEL_75;
        }

        sub_26760A76C(0xD00000000000001BLL, 0x80000002676D60A0);
        v30 = v218;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v215;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_66;
        }

        goto LABEL_105;
      default:

        v108 = sub_2676CBE2C();
        v109 = sub_2676CC23C();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = v23;
          a4 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v226[0] = v24;
          *a4 = 136315138;
          v111 = sub_2675EECE4(v23);
          v7 = v112;
          v113 = sub_2676B0B84(v111, v112, v226);

          *(a4 + 4) = v113;
          _os_log_impl(&dword_2675D4000, v108, v109, "#ResolveRecipientsFlow restoring alternate contact state %s", a4, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x26D5FEA80](v24, -1, -1);
          v23 = v110;
          MEMORY[0x26D5FEA80](a4, -1, -1);
        }

        v30 = v217;
        swift_beginAccess();
        v49 = *(v30 + 16);

        v114 = swift_isUniquelyReferenced_nonNull_native();
        *(v30 + 16) = v49;
        if (v114)
        {
          goto LABEL_53;
        }

        goto LABEL_102;
    }

    do
    {
      if (v57 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_99;
      }

      v58 = *(v214 + 72);
      v216 = v57;
      v209 = *(v214 + 16);
      v210 = v58;
      v209(v13, v202 + v58 * v57, v7);
      v218 = v30;
      sub_2675E3FBC(v30);
      v60 = v59;
      v61 = *(v59 + 16);
      if (v61)
      {
        v226[0] = MEMORY[0x277D84F90];
        sub_2676C2AE8(0, v61, 0);
        v62 = v226[0];
        v63 = *(v219 + 80);
        v220 = v60;
        v64 = v60 + ((v63 + 32) & ~v63);
        v65 = *(v219 + 72);
        v19 = *(v219 + 16);
        do
        {
          v66 = v223;
          v67 = v224;
          (v19)(v223, v64, v224);
          v68 = sub_2676CAB0C();
          v70 = v69;
          (*v221)(v66, v67);
          v226[0] = v62;
          v72 = *(v62 + 16);
          v71 = *(v62 + 24);
          if (v72 >= v71 >> 1)
          {
            sub_2676C2AE8((v71 > 1), v72 + 1, 1);
            v62 = v226[0];
          }

          *(v62 + 16) = v72 + 1;
          v73 = v62 + 16 * v72;
          *(v73 + 32) = v68;
          *(v73 + 40) = v70;
          v64 += v65;
          --v61;
        }

        while (v61);

        v13 = v215;
      }

      else
      {

        v62 = MEMORY[0x277D84F90];
      }

      v226[0] = v62;
      v74 = sub_2676CAE5C();
      v75 = *(v74 + 16);
      if (v75)
      {
        v225 = MEMORY[0x277D84F90];
        sub_2676C2AE8(0, v75, 0);
        v24 = v225;
        v76 = (*(v219 + 80) + 32) & ~*(v219 + 80);
        v208 = v74;
        v77 = v74 + v76;
        v220 = *(v219 + 72);
        v78 = *(v219 + 16);
        do
        {
          v80 = v223;
          v79 = v224;
          v78(v223, v77, v224);
          v81 = sub_2676CAB0C();
          v83 = v82;
          (*v221)(v80, v79);
          v225 = v24;
          v19 = *(v24 + 16);
          v84 = *(v24 + 24);
          if (v19 >= v84 >> 1)
          {
            sub_2676C2AE8((v84 > 1), v19 + 1, 1);
            v24 = v225;
          }

          *(v24 + 16) = v19 + 1;
          v85 = v24 + 16 * v19;
          *(v85 + 32) = v81;
          *(v85 + 40) = v83;
          v77 += v220;
          --v75;
        }

        while (v75);

        v13 = v215;
      }

      else
      {

        v24 = MEMORY[0x277D84F90];
      }

      v225 = v24;
      a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4E0, &unk_2676D3240);
      sub_2676148C4(&qword_2801CD4E8, &qword_2801CD4E0, &unk_2676D3240);
      v86 = sub_2676CC21C();

      v7 = v213;
      if (v86)
      {
        (*v203)(v13, v213);
        v30 = v218;
      }

      else
      {
        v209(v212, v13, v213);
        v30 = v218;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = *(v30 + 16);
          sub_2676076F0();
          v30 = v89;
        }

        v87 = *(v30 + 16);
        if (v87 >= *(v30 + 24) >> 1)
        {
          sub_2676076F0();
          v30 = v90;
        }

        (*v203)(v13, v7);
        *(v30 + 16) = v87 + 1;
        (*v200)(v30 + v201 + v87 * v210, v212, v7);
      }

      v56 = v204;
      v57 = v216 + 1;
    }

    while (v216 + 1 != v205);

LABEL_17:
    v54 = v217;
    swift_beginAccess();
    sub_26767CFE8(v30, (v54 + 16), v207);
    swift_endAccess();

    goto LABEL_97;
  }

  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v46 = sub_2676CBE4C();
  __swift_project_value_buffer(v46, qword_2801CDC90);
  v47 = sub_2676CBE2C();
  v48 = sub_2676CC23C();
  if (os_log_type_enabled(v47, v48))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2675D4000, v47, v48, "#ResolveRecipientsFlow no results from Mail app, restoring alternate contact state", v30, 2u);
    MEMORY[0x26D5FEA80](v30, -1, -1);
  }

  v49 = v217;
  swift_beginAccess();
  v50 = *(v49 + 16);

  v51 = swift_isUniquelyReferenced_nonNull_native();
  *(v49 + 16) = v50;
  if ((v51 & 1) == 0)
  {
    sub_2675E096C(v50);
    v50 = v189;
    *(v217 + 16) = v189;
  }

  if ((v207 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v50 + 16) > v207)
  {
    v52 = v50 + 8 * v207;
    v53 = *(v52 + 32);
    *(v52 + 32) = a4;
    *(v217 + 16) = v50;
    swift_endAccess();
LABEL_14:

LABEL_97:
    v180 = v217;
    swift_beginAccess();
    v181 = *(v180 + 16);

    v183 = v206;
    v184 = sub_26767627C(v182);
    v186 = v185;

    v187 = *(v183 + 16);
    *(v183 + 16) = v184;
    v188 = *(v183 + 24);
    *(v183 + 24) = v186;
    sub_267678894(v187, v188);
    return;
  }

  __break(1u);
LABEL_102:
  sub_2675E096C(v49);
  v49 = v190;
  *(v217 + 16) = v190;
LABEL_53:
  if ((v207 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v49 + 16) > v207)
  {
    v115 = v49 + 8 * v207;
    v116 = *(v115 + 32);
    *(v115 + 32) = v23;
    *(v217 + 16) = v49;
    swift_endAccess();
    goto LABEL_14;
  }

  __break(1u);
LABEL_105:
  v191 = *(v30 + 16);
  sub_2676076F0();
  v30 = v192;
LABEL_66:
  v139 = *(v30 + 16);
  if (v139 >= *(v30 + 24) >> 1)
  {
    sub_2676076F0();
    v30 = v193;
  }

  *(v30 + 16) = v139 + 1;
  (*(v214 + 32))(v30 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v139, v211, v7);
  v140 = sub_2676CBE2C();
  v141 = sub_2676CC23C();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = v30;
    v143 = swift_slowAlloc();
    *v143 = 0;
    _os_log_impl(&dword_2675D4000, v140, v141, "#ResolveRecipientsFlow one exact match from Contacts and at least one match from Mail, disambiguating together", v143, 2u);
    v144 = v143;
    v30 = v142;
    v24 = v215;
    MEMORY[0x26D5FEA80](v144, -1, -1);
  }

  v145 = swift_allocObject();
  *(v145 + 16) = v30;
  v146 = v217;
  swift_beginAccess();
  v147 = *(v146 + 16);
  v148 = swift_isUniquelyReferenced_nonNull_native();
  *(v146 + 16) = v147;
  if ((v148 & 1) == 0)
  {
    sub_2675E096C(v147);
    v147 = v194;
    *(v217 + 16) = v194;
  }

  if ((v207 & 0x8000000000000000) == 0)
  {
    if (*(v147 + 16) > v207)
    {
      v149 = v147 + 8 * v207;
      v150 = *(v149 + 32);
      *(v149 + 32) = v145 | 0x8000000000000000;
      *(v217 + 16) = v147;
      swift_endAccess();

LABEL_75:
      (*(v24 + 8))(v23, v208);
      goto LABEL_97;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_107:
  v195 = *(v146 + 16);
  sub_2676076F0();
  v146 = v196;
LABEL_87:
  v168 = *(v146 + 16);
  if (v168 >= *(v146 + 24) >> 1)
  {
    sub_2676076F0();
    v146 = v197;
  }

  *(v146 + 16) = v168 + 1;
  (*(v214 + 32))(v146 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v168, a4, v24);
  v169 = sub_2676CBE2C();
  v170 = sub_2676CC23C();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = v146;
    v172 = swift_slowAlloc();
    *v172 = 0;
    _os_log_impl(&dword_2675D4000, v169, v170, "#ResolveRecipientsFlow one contact match from Contacts and at least one match from Mail, disambiguating together", v172, 2u);
    v173 = v172;
    v146 = v171;
    MEMORY[0x26D5FEA80](v173, -1, -1);
  }

  v174 = swift_allocObject();
  *(v174 + 16) = v146;
  v175 = v217;
  swift_beginAccess();
  v176 = *(v175 + 16);
  v177 = swift_isUniquelyReferenced_nonNull_native();
  *(v175 + 16) = v176;
  if ((v177 & 1) == 0)
  {
    sub_2675E096C(v176);
    v176 = v198;
    *(v217 + 16) = v198;
  }

  if ((v207 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (*(v176 + 16) > v207)
  {
    v178 = v176 + 8 * v207;
    v179 = *(v178 + 32);
    *(v178 + 32) = v174 | 0x8000000000000000;
    *(v217 + 16) = v176;
    swift_endAccess();

LABEL_96:
    (*(v214 + 8))(v23, v24);
    goto LABEL_97;
  }

LABEL_110:
  __break(1u);
}