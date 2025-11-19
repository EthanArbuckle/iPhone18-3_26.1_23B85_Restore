uint64_t sub_21E529004()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E52904C()
{
  OUTLINED_FUNCTION_93();
  v1 = sub_21E57B9EC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_21E57BA0C();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  v14 = *(v0 + v12);

  OUTLINED_FUNCTION_100();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_21E52935C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E529394()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21E529444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21E5294E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_21E529530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21E529590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_21E5297C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E529804(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_21E52981C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

id sub_21E52983C(void *a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_21E57B5BC();
    v9 = v8;
    v10 = sub_21E57B5DC();
    v11 = sub_21E57B86C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315394;
      v14 = sub_21E57BC2C();
      v16 = sub_21E5553D8(v14, v15, &v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_21E57BB7C();
      v19 = sub_21E5553D8(v17, v18, &v21);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_21E527000, v10, v11, "%s: Error encountered while fetching app intents from Biome: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v13, -1, -1);
      MEMORY[0x223D5D740](v12, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_21E529A78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

BOOL sub_21E529AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[1] = a6;
  v33 = a5;
  v8 = sub_21E57B5EC();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E57B9EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = a1;
  MEMORY[0x223D5CC60]();
  sub_21E52F358(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_21E57B7CC();
  swift_endAccess();
  sub_21E57B9CC();
  sub_21E57B9DC();
  (*(v13 + 8))(v16, v12);
  v18 = sub_21E57BBFC();
  sub_21E57BBFC();
  v20 = v19 * 1.0e-18 + v18;
  v21 = *(v33 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_fetchPhrasesTimeoutSeconds);
  if (v21 < v20)
  {
    sub_21E57B5BC();
    v22 = sub_21E57B5DC();
    v23 = sub_21E57B85C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315394;
      v26 = sub_21E57BC2C();
      v28 = sub_21E5553D8(v26, v27, &v34);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_21E527000, v22, v23, "%s: %f seconds have passed since requesting SiriKitIntentTranscript events, which is passed our threshold. Not continuing to process more events", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223D5D740](v25, -1, -1);
      MEMORY[0x223D5D740](v24, -1, -1);
    }

    (*(v31 + 8))(v11, v32);
  }

  return v21 >= v20;
}

uint64_t sub_21E529E04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_21E529E5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21E57BA4C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_21E529ED8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_21E534EAC();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_21E529F78()
{
  OUTLINED_FUNCTION_29();
  v1[44] = v2;
  v1[45] = v0;
  v1[42] = v3;
  v1[43] = v4;
  v1[40] = v5;
  v1[41] = v6;
  v1[39] = v7;
  v1[46] = *v0;
  v8 = sub_21E57B5EC();
  v1[47] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[48] = v9;
  v11 = *(v10 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_21E52A094()
{
  v229 = v0;
  v1 = [*(v0 + 312) eventBody];
  *(v0 + 440) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21E52FECC(v1);
    *(v0 + 448) = v3;
    *(v0 + 456) = v4;
    if (v4 >> 60 == 15)
    {
      v222 = v2;
      v5 = *(v0 + 400);
      sub_21E57B5BC();
      v6 = sub_21E57B5DC();
      v7 = sub_21E57B86C();
      v8 = OUTLINED_FUNCTION_48(v7);
      v9 = *(v0 + 400);
      v11 = *(v0 + 376);
      v10 = *(v0 + 384);
      if (v8)
      {
        v12 = *(v0 + 368);
        v13 = OUTLINED_FUNCTION_50();
        v14 = OUTLINED_FUNCTION_43();
        v227 = v14;
        v15 = OUTLINED_FUNCTION_70(4.8149e-34);
        v17 = sub_21E5553D8(v15, v16, &v227);

        *(v13 + 4) = v17;
        OUTLINED_FUNCTION_35();
        _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_20();
      }

      (*(v10 + 8))(v9, v11);
      goto LABEL_9;
    }

    v52 = v3;
    v53 = v4;
    sub_21E535114(0, &qword_2812254E8, 0x277CCAAC8);
    sub_21E535114(0, &qword_281225508, 0x277CD3D58);
    v54 = sub_21E57B88C();
    *(v0 + 464) = v54;
    v55 = v54;
    if (!v54)
    {
      v82 = *(v0 + 408);
      sub_21E57B5BC();
      v83 = sub_21E57B5DC();
      v84 = sub_21E57B86C();
      v85 = OUTLINED_FUNCTION_48(v84);
      v86 = *(v0 + 408);
      v88 = *(v0 + 376);
      v87 = *(v0 + 384);
      if (v85)
      {
        v89 = *(v0 + 368);
        v219 = v52;
        v90 = OUTLINED_FUNCTION_50();
        v224 = v86;
        v227 = OUTLINED_FUNCTION_43();
        v91 = v227;
        *v90 = 136315138;
        v92 = OUTLINED_FUNCTION_105();
        v214 = v88;
        v94 = sub_21E5553D8(v92, v93, &v227);

        *(v90 + 4) = v94;
        _os_log_impl(&dword_21E527000, v83, v84, "%s: Unable to unarchive INInteraction from Biome event", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        OUTLINED_FUNCTION_39();
        v52 = v219;
        OUTLINED_FUNCTION_39();

        (*(v87 + 8))(v224, v214);
      }

      else
      {

        (*(v87 + 8))(v86, v88);
      }

      sub_21E535048(v52, v53);

      goto LABEL_9;
    }

    v56 = sub_21E52FF30(v2, &selRef_bundleID);
    if (!v57)
    {
      v95 = *(v0 + 416);
      sub_21E57B5BC();
      v96 = sub_21E57B5DC();
      v97 = sub_21E57B86C();
      v98 = OUTLINED_FUNCTION_48(v97);
      v99 = *(v0 + 416);
      v101 = *(v0 + 376);
      v100 = *(v0 + 384);
      if (v98)
      {
        v225 = *(v0 + 416);
        v102 = *(v0 + 368);
        v215 = v97;
        v103 = OUTLINED_FUNCTION_50();
        v211 = OUTLINED_FUNCTION_43();
        v227 = v211;
        *v103 = 136315138;
        v104 = sub_21E57BC2C();
        v220 = v101;
        v106 = v52;
        v107 = sub_21E5553D8(v104, v105, &v227);

        *(v103 + 4) = v107;
        v52 = v106;
        _os_log_impl(&dword_21E527000, v96, v215, "%s: nil bundleId", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v211);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        (*(v100 + 8))(v225, v220);
      }

      else
      {

        (*(v100 + 8))(v99, v101);
      }

      sub_21E535048(v52, v53);

      goto LABEL_9;
    }

    v58 = v56;
    v59 = v57;
    v218 = v52;
    v60 = *(v0 + 368);
    v61 = *(v0 + 320);

    v62 = [v55 intent];
    v63 = __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v64 = sub_21E530D48(v58, v59, v62, *v63, v60);
    v66 = v65;

    *(v0 + 472) = v66;

    if (v64 == 0xD000000000000017 && 0x800000021E57EDC0 == v66)
    {
    }

    else
    {
      OUTLINED_FUNCTION_47();
      sub_21E57BB3C();
      OUTLINED_FUNCTION_103();
      if ((v59 & 1) == 0)
      {
        v68 = *__swift_project_boxed_opaque_existential_1(*(v0 + 320), v61[3]);

        OUTLINED_FUNCTION_47();
        sub_21E54A03C();
        OUTLINED_FUNCTION_103();
        if ((v68 & 1) == 0)
        {
          v69 = *(v0 + 432);
          sub_21E57B5BC();
          v70 = sub_21E57B5DC();
          v223 = sub_21E57B86C();
          v71 = OUTLINED_FUNCTION_48(v223);
          v72 = *(v0 + 432);
          v74 = *(v0 + 376);
          v73 = *(v0 + 384);
          if (v71)
          {
            v210 = *(v0 + 368);
            v213 = *(v0 + 432);
            v75 = OUTLINED_FUNCTION_57();
            v227 = swift_slowAlloc();
            *v75 = 136315394;
            v76 = sub_21E57BC2C();
            loga = v70;
            v78 = sub_21E5553D8(v76, v77, &v227);

            *(v75 + 4) = v78;
            *(v75 + 12) = 2080;

            v79 = OUTLINED_FUNCTION_47();
            sub_21E5553D8(v79, v80, v81);
            OUTLINED_FUNCTION_85();

            *(v75 + 14) = v78;
            _os_log_impl(&dword_21E527000, loga, v223, "%s: Skipping INIntent since app is not installed: %s", v75, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_31();

            (*(v73 + 8))(v213, v74);
LABEL_72:
            sub_21E535048(v218, v53);

            goto LABEL_73;
          }

LABEL_71:

          (*(v73 + 8))(v72, v74);
          goto LABEL_72;
        }
      }
    }

    v108 = [v55 intent];
    v109 = [v108 _type];

    if (v109 == 1)
    {
      goto LABEL_41;
    }

    v110 = sub_21E52FF30(v2, &selRef_intentClass);
    if (!v111)
    {
      goto LABEL_41;
    }

    v112 = v111;
    if (v110 == 0xD00000000000001ALL && v111 == 0x800000021E57F1E0)
    {
    }

    else
    {
      v114 = sub_21E57BB3C();

      if ((v114 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v115 = OUTLINED_FUNCTION_47();
    sub_21E52B2A8(v115, v116);
    OUTLINED_FUNCTION_103();
    if ((v112 & 1) == 0)
    {
      v179 = *(v0 + 424);
      sub_21E57B5BC();
      v55 = v55;
      v70 = sub_21E57B5DC();
      v180 = sub_21E57B86C();

      v217 = v180;
      v181 = os_log_type_enabled(v70, v180);
      v72 = *(v0 + 424);
      v74 = *(v0 + 376);
      v73 = *(v0 + 384);
      if (!v181)
      {
        goto LABEL_71;
      }

      v212 = *(v0 + 384);
      v182 = v55;
      v183 = *(v0 + 368);
      v208 = *(v0 + 376);
      v184 = OUTLINED_FUNCTION_43();
      v227 = OUTLINED_FUNCTION_104();
      *v184 = 136315650;
      v185 = sub_21E57BC2C();
      logb = v72;
      v187 = sub_21E5553D8(v185, v186, &v227);

      *(v184 + 4) = v187;
      v226 = v2;
      *(v184 + 12) = 2080;
      v188 = [v182 intent];
      v189 = [v188 _title];

      v190 = sub_21E57B67C();
      v191 = v70;
      v193 = v192;

      v194 = sub_21E5553D8(v190, v193, &v227);

      *(v184 + 14) = v194;
      *(v184 + 22) = 2080;

      v195 = OUTLINED_FUNCTION_47();
      sub_21E5553D8(v195, v196, v197);
      OUTLINED_FUNCTION_85();

      *(v184 + 24) = v193;
      _os_log_impl(&dword_21E527000, v191, v217, "%s: Skipping INIntent that is not supported: %s from bundleId: %s", v184, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(v212 + 8))(logb, v208);
      sub_21E535048(v218, v53);

      goto LABEL_73;
    }

LABEL_41:
    v117 = MEMORY[0x277D84F90];
    *(v0 + 304) = MEMORY[0x277D84F90];
    v118 = [v55 intent];
    v119 = [v118 isGenericIntent];

    if (!v119)
    {
      v161 = *(v0 + 320);

      *(v0 + 480) = [v55 intent];
      v162 = *__swift_project_boxed_opaque_existential_1(v161, v61[3]);
      OUTLINED_FUNCTION_11(&unk_21E57C508);
      v163 = swift_task_alloc();
      *(v0 + 488) = v163;
      *v163 = v0;
      v163[1] = sub_21E52AECC;
      v164 = *(v0 + 336);
      v165 = *(v0 + 344);
      v166 = *(v0 + 328);
      v230 = *(v0 + 360);
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_95();

      __asm { BR              X8 }
    }

    v121 = *(v0 + 352);
    v120 = *(v0 + 360);
    v122 = *(v0 + 320);
    v123 = [v55 &off_278359C78];
    v124 = *__swift_project_boxed_opaque_existential_1(v122, v61[3]);

    sub_21E530E48(v123, v2, v64, v66, v124, v121, v120, (v0 + 16));

    v125 = *(v0 + 24);
    if (v125)
    {
      v126 = *(v0 + 16);
      sub_21E543754();
      v128 = v127;
      v130 = *(v127 + 16);
      v129 = *(v127 + 24);
      if (v130 >= v129 >> 1)
      {
        OUTLINED_FUNCTION_40(v129);
        sub_21E543754();
        v128 = v198;
      }

      *(v128 + 16) = v130 + 1;
      v131 = (v128 + 96 * v130);
      v131[4] = v126;
      v131[5] = v125;
      memcpy(v131 + 6, (v0 + 32), 0x50uLL);
      *(v0 + 304) = v128;
    }

    v132 = *(v0 + 440);
    v133 = sub_21E52FF30(v132, &selRef_intentClass);
    if (v134)
    {
      v135 = v133;
    }

    else
    {
      v135 = 0;
    }

    if (v134)
    {
      v136 = v134;
    }

    else
    {
      v136 = 0xE000000000000000;
    }

    v227 = v135;

    MEMORY[0x223D5CBD0](46, 0xE100000000000000);

    v137 = [v132 identifier];
    v138 = sub_21E57B67C();
    v140 = v139;

    v228 = v136;

    MEMORY[0x223D5CBD0](v138, v140);

    v141 = *(*(v0 + 304) + 16);
    if (v141)
    {
      v199 = v227;
      v200 = v228;
      v227 = v117;
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_61();
      while (1)
      {
        OUTLINED_FUNCTION_97(v142);
        if (*(v0 + 168))
        {
          v216 = *(v0 + 168);
          v221 = *(v0 + 160);
        }

        else
        {

          v221 = v199;
        }

        OUTLINED_FUNCTION_41();
        sub_21E534CEC(v0 + 112, v0 + 208);
        v143 = sub_21E52FF30(v141, &selRef_intentClass);
        v145 = v144;

        if (v145)
        {
          v203 = v143;
        }

        else
        {
          v146 = *(v0 + 184);
          v203 = *(v0 + 176);
        }

        v147 = *(v0 + 192);
        v148 = *(v0 + 200);

        sub_21E534D48(v0 + 112);
        OUTLINED_FUNCTION_81();
        if (v158)
        {
          v160 = OUTLINED_FUNCTION_40(v157);
          v149 = sub_21E562880(v160, v141, 1);
        }

        OUTLINED_FUNCTION_19(v149, v150, v151, v152, v153, v154, v155, v156, v199, v200, v201, v202, v203, log, v207, v209, v216, v221);
        if (!v159)
        {
          break;
        }

        OUTLINED_FUNCTION_80();
      }

      v169 = *(v0 + 464);
      v170 = *(v0 + 472);
      v171 = *(v0 + 440);
      sub_21E535048(*(v0 + 448), *(v0 + 456));

      goto LABEL_9;
    }

    v172 = *(v0 + 464);
    v173 = *(v0 + 472);
    v175 = *(v0 + 448);
    v174 = *(v0 + 456);
    v176 = *(v0 + 440);

    v177 = OUTLINED_FUNCTION_79();
    sub_21E535048(v177, v178);

LABEL_73:

    goto LABEL_9;
  }

  v23 = *(v0 + 392);
  sub_21E57B5BC();
  v24 = sub_21E57B5DC();
  v25 = sub_21E57B86C();
  v26 = OUTLINED_FUNCTION_48(v25);
  v28 = *(v0 + 384);
  v27 = *(v0 + 392);
  v29 = *(v0 + 376);
  if (v26)
  {
    v30 = *(v0 + 368);
    v31 = OUTLINED_FUNCTION_50();
    v32 = OUTLINED_FUNCTION_43();
    v227 = v32;
    *v31 = 136315138;
    v33 = sub_21E57BC2C();
    v35 = sub_21E5553D8(v33, v34, &v227);

    *(v31 + 4) = v35;
    OUTLINED_FUNCTION_12();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_30();
  }

  v41 = OUTLINED_FUNCTION_34();
  v42(v41);
LABEL_9:
  v44 = *(v0 + 424);
  v43 = *(v0 + 432);
  v46 = *(v0 + 408);
  v45 = *(v0 + 416);
  v48 = *(v0 + 392);
  v47 = *(v0 + 400);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_95();

  return v49();
}

uint64_t sub_21E52AECC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = v3[61];
  v5 = v3[60];
  v6 = v3[59];
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v10 + 496) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_21E52AFE4()
{
  sub_21E54A344(v0[62]);
  v1 = v0[55];
  v2 = sub_21E52FF30(v1, &selRef_intentClass);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v59 = v4;

  MEMORY[0x223D5CBD0](46, 0xE100000000000000);

  v6 = [v1 identifier];
  v7 = sub_21E57B67C();
  v9 = v8;

  v60 = v5;

  MEMORY[0x223D5CBD0](v7, v9);

  v10 = *(v0[38] + 16);
  if (v10)
  {
    v49 = v59;
    v50 = v60;
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_61();
    while (1)
    {
      OUTLINED_FUNCTION_97(v11);
      if (v0[21])
      {
        v57 = v0[21];
        v58 = v0[20];
      }

      else
      {

        v58 = v49;
      }

      OUTLINED_FUNCTION_41();
      sub_21E534CEC((v0 + 14), (v0 + 26));
      v12 = sub_21E52FF30(v10, &selRef_intentClass);
      v14 = v13;

      if (v14)
      {
        v53 = v12;
      }

      else
      {
        v15 = v0[23];
        v53 = v0[22];
      }

      v16 = v0[24];
      v17 = v0[25];

      sub_21E534D48((v0 + 14));
      OUTLINED_FUNCTION_81();
      if (v27)
      {
        v29 = OUTLINED_FUNCTION_40(v26);
        v18 = sub_21E562880(v29, v10, 1);
      }

      OUTLINED_FUNCTION_19(v18, v19, v20, v21, v22, v23, v24, v25, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
      if (!v28)
      {
        break;
      }

      OUTLINED_FUNCTION_80();
    }

    v30 = v0[58];
    v31 = v0[59];
    v32 = v0[55];
    sub_21E535048(v0[56], v0[57]);
  }

  else
  {
    v33 = v0[58];
    v34 = v0[59];
    v36 = v0[56];
    v35 = v0[57];
    v37 = v0[55];

    v38 = OUTLINED_FUNCTION_79();
    sub_21E535048(v38, v39);
  }

  v41 = v0[53];
  v40 = v0[54];
  v43 = v0[51];
  v42 = v0[52];
  v45 = v0[49];
  v44 = v0[50];

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_95();

  return v46();
}

BOOL sub_21E52B2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E54335C(&unk_282F92058);
  v11 = v4;
  sub_21E57B56C();
  sub_21E57B55C();
  sub_21E57B54C();

  v5 = sub_21E57B70C();

  if (v5)
  {
    sub_21E576044(&v10, 0xD000000000000010, 0x800000021E57F200);

    v4 = v11;
  }

  v6 = sub_21E52B3AC(v4);
  v7 = sub_21E52E370(v6, v4);
  v8 = sub_21E543EB0(a1, a2, v7);

  return v8;
}

uint64_t sub_21E52B3AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x277D84F90];
  sub_21E562860(0, v1, 0);
  v2 = v38;
  result = sub_21E530844(v3);
  v7 = result;
  v8 = 0;
  v37 = v3 + 56;
  v32 = v3 + 64;
  v33 = v1;
  v34 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v9 = v7 >> 6;
      if ((*(v37 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_29;
      }

      v36 = v6;
      v35 = v5;
      v10 = v2;
      v11 = (*(v3 + 48) + 16 * v7);
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_21E57B1DC();
      if (*(v14 + 16))
      {
        v15 = sub_21E52F7C4();
        if (v16)
        {
          v17 = (*(v14 + 56) + 16 * v15);
          v13 = *v17;
          v18 = v17[1];

          v12 = v18;
        }
      }

      v2 = v10;
      v39 = v10;
      v19 = *(v10 + 16);
      v20 = *(v2 + 24);
      if (v19 >= v20 >> 1)
      {
        result = sub_21E562860((v20 > 1), v19 + 1, 1);
        v2 = v39;
      }

      *(v2 + 16) = v19 + 1;
      v21 = v2 + 16 * v19;
      *(v21 + 32) = v13;
      *(v21 + 40) = v12;
      if (v36)
      {
        goto LABEL_33;
      }

      v3 = v34;
      v22 = 1 << *(v34 + 32);
      if (v7 >= v22)
      {
        goto LABEL_30;
      }

      v23 = *(v37 + 8 * v9);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_31;
      }

      if (*(v34 + 36) != v35)
      {
        goto LABEL_32;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v25 = v33;
      }

      else
      {
        v26 = v2;
        v27 = v9 << 6;
        v28 = v9 + 1;
        v25 = v33;
        v29 = (v32 + 8 * v9);
        while (v28 < (v22 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_21E5350B4(v7, v35, 0);
            v22 = __clz(__rbit64(v30)) + v27;
            goto LABEL_22;
          }
        }

        result = sub_21E5350B4(v7, v35, 0);
LABEL_22:
        v2 = v26;
      }

      if (++v8 == v25)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v34 + 36);
      v7 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_28:
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
  return result;
}

uint64_t sub_21E52B648(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_21E57BB8C();

        sub_21E57B6AC();
        v18 = sub_21E57BBCC();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_21E57BB3C();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E52B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E52B83C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_91();
  v21 = *(v20 + 24);
  v51 = [*(v20 + 16) _emptyCopy];
  *(v20 + 80) = v51;
  v22 = -1;
  v23 = -1 << *(v21 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v21 + 56);
  v25 = (63 - v23) >> 6;

  v27 = 0;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_9:
      v29 = *(v20 + 16);
      OUTLINED_FUNCTION_37(v28);
      v31 = *v30;
      v32 = v30[1];

      OUTLINED_FUNCTION_59();
      v33 = sub_21E57B66C();
      v34 = [v29 valueForKey_];

      OUTLINED_FUNCTION_59();
      v35 = sub_21E57B66C();

      [v51 setValue:v34 forKey:v35];

      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 >= v25)
    {
      break;
    }

    ++v27;
    if (*(v21 + 56 + 8 * v28))
    {
      v27 = v28;
      goto LABEL_9;
    }
  }

  v37 = *(v20 + 56);
  v36 = *(v20 + 64);
  v38 = *(v20 + 24);

  OUTLINED_FUNCTION_60();
  v39 = sub_21E57B66C();
  v40 = [v51 _titleForLanguage_];

  sub_21E57B67C();
  v42 = v41;

  *(v20 + 88) = v42;
  v43 = swift_task_alloc();
  *(v20 + 96) = v43;
  *v43 = v20;
  v43[1] = sub_21E52BA54;
  v44 = *(v20 + 64);
  v45 = *(v20 + 72);
  v46 = *(v20 + 48);
  v47 = *(v20 + 56);
  v48 = *(v20 + 32);
  v49 = *(v20 + 40);
  OUTLINED_FUNCTION_55();

  return sub_21E52BBB4();
}

uint64_t sub_21E52BA54()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 96);
  v5 = *(v3 + 88);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v9 + 104) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E52BB54()
{
  OUTLINED_FUNCTION_29();

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_21E52BBB4()
{
  OUTLINED_FUNCTION_29();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[9] = v7;
  v1[10] = v8;
  v1[8] = v9;
  v1[17] = *v0;
  v10 = sub_21E57B08C();
  v1[18] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[19] = v11;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8950, &unk_21E57C4D0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v15 = sub_21E57B06C();
  v1[22] = v15;
  OUTLINED_FUNCTION_6(v15);
  v1[23] = v16;
  v18 = *(v17 + 64) + 15;
  v1[24] = swift_task_alloc();
  v19 = sub_21E57B10C();
  v1[25] = v19;
  OUTLINED_FUNCTION_6(v19);
  v1[26] = v20;
  v22 = *(v21 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v23 = sub_21E57B5EC();
  v1[30] = v23;
  OUTLINED_FUNCTION_6(v23);
  v1[31] = v24;
  v26 = *(v25 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v27);
}

char *sub_21E52BDFC()
{
  v176 = v0;
  v1 = *(v0 + 64);
  objc_opt_self();
  OUTLINED_FUNCTION_46();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2;
  v4 = *(v0 + 96);
  v5 = *(v0 + 88);
  v6 = **(v0 + 104);
  v7 = *(v0 + 64);
  v8 = OUTLINED_FUNCTION_60();
  v10 = sub_21E52D23C(v8, v9, v6);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v12 = sub_21E52FD84(v3, &selRef_recipients, &qword_2812254C0, 0x277CD3E90);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if ([v3 speakableGroupName])
  {
    OUTLINED_FUNCTION_85();

    v14 = [v3 spokenPhrase];

    v15 = sub_21E57B67C();
    v17 = v16;

LABEL_10:

    v18 = OUTLINED_FUNCTION_79();
    sub_21E543EB0(v18, v19, v11);
    OUTLINED_FUNCTION_103();
    if (v3)
    {
      v20 = *(v0 + 64);

      goto LABEL_77;
    }

    v30 = *(v0 + 272);
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v33 = *(v0 + 88);

    sub_21E576044(&v175, v15, v17);

    v34 = *v32;
    swift_isUniquelyReferenced_nonNull_native();
    v175 = *v32;
    sub_21E545AB0();
    *v32 = v175;
    sub_21E57B5BC();

    v35 = sub_21E57B5DC();
    v36 = sub_21E57B85C();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 272);
    v40 = *(v0 + 240);
    v39 = *(v0 + 248);
    if (v37)
    {
      v41 = *(v0 + 136);
      v164 = *(v0 + 88);
      v165 = *(v0 + 96);
      v168 = *(v0 + 64);
      v171 = *(v0 + 240);
      v42 = OUTLINED_FUNCTION_43();
      v175 = OUTLINED_FUNCTION_104();
      *v42 = 136315650;
      v43 = OUTLINED_FUNCTION_105();
      v166 = v38;
      v45 = sub_21E5553D8(v43, v44, &v175);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = OUTLINED_FUNCTION_79();
      v49 = sub_21E5553D8(v46, v47, v48);

      *(v42 + 14) = v49;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_21E5553D8(v164, v165, &v175);
      _os_log_impl(&dword_21E527000, v35, v36, "%s: Added %s to inSendMessageIntentCache for %s", v42, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_39();

      (*(v39 + 8))(v166, v171);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }

LABEL_30:
    v50 = *(v0 + 64);
    objc_opt_self();
    OUTLINED_FUNCTION_46();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = *(v0 + 64);
      v54 = sub_21E52FD84(v52, &selRef_contacts, &qword_2812254C0, 0x277CD3E90);
      if (v54)
      {
        v55 = sub_21E529E5C(v54);

        if (v55 >= 2)
        {
          v56 = *(v0 + 208);
          v58 = *(v0 + 88);
          v57 = *(v0 + 96);
          (*(v56 + 104))(*(v0 + 232), *MEMORY[0x277D60F20], *(v0 + 200));
          v59 = sub_21E57B0FC();
          v61 = v60;
          v62 = *(v56 + 8);
          v63 = OUTLINED_FUNCTION_59();
          v64(v63);
          if (v59 == v58 && v61 == v57)
          {
          }

          else
          {
            v66 = *(v0 + 88);
            v67 = *(v0 + 96);
            v68 = sub_21E57BB3C();

            if ((v68 & 1) == 0)
            {
LABEL_72:
              v128 = *(v0 + 264);
              v129 = *(v0 + 96);
              v130 = *(v0 + 80);
              sub_21E57B5BC();

              v131 = sub_21E57B5DC();
              sub_21E57B85C();

              v132 = OUTLINED_FUNCTION_77();
              v133 = *(v0 + 264);
              v135 = *(v0 + 240);
              v134 = *(v0 + 248);
              if (v132)
              {
                v136 = *(v0 + 136);
                v137 = *(v0 + 88);
                v173 = *(v0 + 80);
                v167 = *(v0 + 96);
                v169 = *(v0 + 72);
                v174 = *(v0 + 264);
                v138 = OUTLINED_FUNCTION_43();
                v175 = OUTLINED_FUNCTION_104();
                *v138 = 136315650;
                v139 = OUTLINED_FUNCTION_105();
                v141 = sub_21E5553D8(v139, v140, &v175);

                *(v138 + 4) = v141;
                *(v138 + 12) = 2080;
                *(v138 + 14) = sub_21E5553D8(v137, v167, &v175);
                *(v138 + 22) = 2080;
                *(v138 + 24) = sub_21E5553D8(v169, v173, &v175);
                OUTLINED_FUNCTION_12();
                _os_log_impl(v142, v143, v144, v145, v146, 0x20u);
                OUTLINED_FUNCTION_64();
                swift_arrayDestroy();
                OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_30();

                (*(v134 + 8))(v174, v135);
              }

              else
              {

                (*(v134 + 8))(v133, v135);
              }

LABEL_76:

              goto LABEL_77;
            }
          }

          if ([v52 callCapability] != 2)
          {
            goto LABEL_72;
          }

LABEL_71:
          OUTLINED_FUNCTION_51();
          v126 = *(v0 + 64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
          v127 = OUTLINED_FUNCTION_107();
          OUTLINED_FUNCTION_13(v127, xmmword_21E57C390);

          goto LABEL_77;
        }
      }
    }

    v69 = *(v0 + 64);
    objc_opt_self();
    OUTLINED_FUNCTION_46();
    v70 = swift_dynamicCastObjCClass();
    if (!v70)
    {
      goto LABEL_45;
    }

    v71 = v70;
    v72 = *(v0 + 64);
    v73 = [v71 mediaContainer];
    if (v73)
    {

      goto LABEL_43;
    }

    v114 = sub_21E52FD84(v71, &selRef_mediaItems, &qword_281225510, 0x277CD3DB8);
    if (v114)
    {
      v3 = v114;
      if (sub_21E5351E4(v114))
      {
        sub_21E55BF7C(0, (v3 & 0xC000000000000001) == 0, v3);
        if ((v3 & 0xC000000000000001) != 0)
        {
          goto LABEL_96;
        }

        goto LABEL_43;
      }
    }

    goto LABEL_76;
  }

  if (!sub_21E5351E4(v13) || (v21 = OUTLINED_FUNCTION_85(), v170 = sub_21E529E5C(v21), v170 > 3))
  {
LABEL_26:

    goto LABEL_77;
  }

  v22 = 0;
  v23 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v3 == v22)
    {
      if (v170)
      {
        v175 = MEMORY[0x277D84F90];
        result = sub_21E562860(0, v170 & ~(v170 >> 63), 0);
        if (v170 < 0)
        {
          __break(1u);
          return result;
        }

        v149 = 0;
        v3 = v175;
        do
        {
          if (v23)
          {
            v150 = MEMORY[0x223D5CE50](v149, v13);
          }

          else
          {
            v150 = *(v13 + 8 * v149 + 32);
          }

          v151 = v150;
          v152 = [v150 displayName];
          v153 = sub_21E57B67C();
          v155 = v154;

          v175 = v3;
          v157 = *(v3 + 16);
          v156 = *(v3 + 24);
          if (v157 >= v156 >> 1)
          {
            v159 = OUTLINED_FUNCTION_40(v156);
            sub_21E562860(v159, v157 + 1, 1);
            v3 = v175;
          }

          ++v149;
          *(v3 + 16) = v157 + 1;
          v158 = v3 + 16 * v157;
          *(v158 + 32) = v153;
          *(v158 + 40) = v155;
        }

        while (v170 != v149);
      }

      else
      {

        v3 = MEMORY[0x277D84F90];
      }

      v175 = v3;

      sub_21E578154();

      *(v0 + 56) = v3;
      v161 = OUTLINED_FUNCTION_38();
      __swift_instantiateConcreteTypeFromMangledNameV2(v161, v162);
      sub_21E535154(&qword_281225538, &qword_27CEC8958, &unk_21E57C580);
      LOBYTE(v3) = v0 + 56;
      v15 = sub_21E57B64C();
      v17 = v163;

      goto LABEL_10;
    }

    if (v23)
    {
      v24 = MEMORY[0x223D5CE50](v22, v13);
    }

    else
    {
      if (v22 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v24 = *(v13 + 8 * v22 + 32);
    }

    v25 = v24;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v26 = sub_21E52FF30(v24, &selRef_contactIdentifier);
    v28 = v27;

    if (v28)
    {

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      ++v22;
      if (v29)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  MEMORY[0x223D5CE50](0, v3);

  swift_unknownObjectRelease();
LABEL_43:
  v74 = *(v0 + 88);
  v75 = *(v0 + 96);
  if ((sub_21E57B70C() & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_45:
  v76 = *(v0 + 224);
  v77 = *(v0 + 200);
  v78 = *(v0 + 208);
  v79 = *(v0 + 88);
  v80 = *(v0 + 96);
  v172 = *(v78 + 104);
  v172(v76, *MEMORY[0x277D60EA8], v77);
  v81 = sub_21E57B0FC();
  v83 = v82;
  v84 = *(v78 + 8);
  v84(v76, v77);
  if (v81 == v79 && v83 == v80)
  {
  }

  else
  {
    v86 = OUTLINED_FUNCTION_102();

    if ((v86 & 1) == 0)
    {
      v87 = *(v0 + 64);
      objc_opt_self();
      OUTLINED_FUNCTION_46();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_56;
      }

      v88 = *(v0 + 216);
      v89 = *(v0 + 200);
      v91 = *(v0 + 88);
      v90 = *(v0 + 96);
      v172(v88, *MEMORY[0x277D60F48], v89);
      v92 = sub_21E57B0FC();
      v94 = v93;
      v84(v88, v89);
      if (v92 == v91 && v94 == v90)
      {
      }

      else
      {
        v96 = OUTLINED_FUNCTION_102();

        if ((v96 & 1) == 0)
        {
LABEL_56:
          v98 = *(v0 + 152);
          v97 = *(v0 + 160);
          v99 = *(v0 + 144);
          v101 = *(v0 + 72);
          v100 = *(v0 + 80);
          v102 = *(v0 + 64);
          sub_21E534F3C(*(v0 + 128) + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider, v0 + 16);
          v103 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
          *v97 = v102;
          (*(v98 + 104))(v97, *MEMORY[0x277D60918], v99);
          v104 = *v103;
          v105 = v102;
          v106 = swift_task_alloc();
          *(v0 + 304) = v106;
          *v106 = v0;
          v106[1] = sub_21E52CD94;
          v107 = *(v0 + 160);
          OUTLINED_FUNCTION_56();

          return sub_21E560D3C();
        }
      }

      OUTLINED_FUNCTION_51();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
      v160 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_13(v160, xmmword_21E57C390);

LABEL_77:
      OUTLINED_FUNCTION_23();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_56();

      __asm { BRAA            X2, X16 }
    }
  }

  v111 = *(v0 + 168);
  v110 = *(v0 + 176);
  v112 = *(v0 + 136);
  v113 = *(v0 + 64);
  sub_21E52D324();
  if (__swift_getEnumTagSinglePayload(v111, 1, v110) == 1)
  {
    sub_21E5350C0(*(v0 + 168), &qword_27CEC8950, &unk_21E57C4D0);
    goto LABEL_77;
  }

  v116 = *(v0 + 184);
  v115 = *(v0 + 192);
  v117 = *(v0 + 176);
  v118 = *(v0 + 128);
  (*(v116 + 32))(v115, *(v0 + 168), v117);
  v119 = __swift_project_boxed_opaque_existential_1((v118 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider), *(v118 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8930, &unk_21E57C4B0);
  v120 = *(v116 + 72);
  v121 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v122 = swift_allocObject();
  *(v0 + 280) = v122;
  *(v122 + 16) = xmmword_21E57C390;
  (*(v116 + 16))(v122 + v121, v115, v117);
  v123 = *v119;
  v124 = swift_task_alloc();
  *(v0 + 288) = v124;
  *v124 = v0;
  v124[1] = sub_21E52CBA8;
  OUTLINED_FUNCTION_56();

  return sub_21E5615B8();
}

uint64_t sub_21E52CBA8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 288);
  v5 = *(v3 + 280);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v9 + 296) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E52CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  v14 = v12[23];
  v13 = v12[24];
  v15 = v12[22];
  if (v12[37])
  {
    sub_21E52EA08(v12[37], v12[11], v12[12]);
  }

  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_55();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_21E52CD94()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = v3[38];
  v5 = v3[20];
  v6 = v3[19];
  v7 = v3[18];
  v8 = *v0;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v11 + 312) = v10;

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_90();
  v14(v13);
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_21E52CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_92();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  v26 = v22[39];
  __swift_destroy_boxed_opaque_existential_0Tm(v22 + 2);
  if (v26)
  {
    sub_21E52EA08(v22[39], v22[11], v22[12]);
  }

  else
  {
    v27 = v22[32];
    v28 = v22[10];
    sub_21E57B5BC();

    v29 = sub_21E57B5DC();
    sub_21E57B85C();

    v30 = OUTLINED_FUNCTION_77();
    v32 = v22[31];
    v31 = v22[32];
    v33 = v22[30];
    if (v30)
    {
      v34 = v22[17];
      a9 = v22[9];
      a10 = v22[10];
      OUTLINED_FUNCTION_57();
      a11 = OUTLINED_FUNCTION_69();
      *v23 = 136315394;
      v35 = sub_21E57BC2C();
      sub_21E5553D8(v35, v36, &a11);

      *(v23 + 14) = OUTLINED_FUNCTION_68(v37, v38);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      OUTLINED_FUNCTION_64();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_30();
    }

    v44 = OUTLINED_FUNCTION_34();
    v45(v44);
    OUTLINED_FUNCTION_51();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
    v46 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_13(v46, xmmword_21E57C390);
  }

  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_54();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21E52D0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_21E52F7C4(), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 24 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21E52D130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E52F7C4();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_21E52D180@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_21E52F7C4(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_21E534EE0(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21E52D1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E52F7C4();
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E52D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E52F7C4();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_21E52D28C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_21E52F914(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_21E52D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_21E52F7C4(), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 16 * v4);
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return OUTLINED_FUNCTION_87();
}

void sub_21E52D324()
{
  OUTLINED_FUNCTION_93();
  v138 = v0;
  v2 = v1;
  v152 = v3;
  v4 = sub_21E57B5EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v141 = v6;
  v142 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v140 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8960, &unk_21E57C4E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v136 - v13;
  v145 = sub_21E57AB6C();
  v15 = OUTLINED_FUNCTION_0(v145);
  v139 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v143 = v20 - v19;
  v21 = sub_21E57ACDC();
  v22 = OUTLINED_FUNCTION_0(v21);
  v144 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14();
  v28 = v27 - v26;
  v146 = sub_21E57AFEC();
  v29 = OUTLINED_FUNCTION_0(v146);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14();
  v147 = (v35 - v34);
  v36 = sub_21E57B03C();
  v37 = OUTLINED_FUNCTION_0(v36);
  v150 = v38;
  v151 = v37;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v37);
  v148 = &v136 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v149 = &v136 - v43;
  v44 = [v2 _className];
  v45 = sub_21E57B67C();
  v47 = v46;

  v48 = v45 == 0xD000000000000013 && 0x800000021E57F160 == v47;
  if (!v48 && (OUTLINED_FUNCTION_67() & 1) == 0)
  {
    OUTLINED_FUNCTION_58();
    v137 = v70;
    v71 = v45 == 0xD000000000000013 && 0x800000021E57F180 == v47;
    if (v71 || (OUTLINED_FUNCTION_67() & 1) != 0)
    {

      v72 = sub_21E57B66C();
      v73 = [v2 valueForKeyPath_];

      if (v73)
      {
        sub_21E57B8EC();
        swift_unknownObjectRelease();
      }

      else
      {
        v154 = 0u;
        v155 = 0u;
      }

      v156 = v154;
      v157 = v155;
      if (*(&v155 + 1))
      {
        sub_21E535114(0, &qword_2812254F8, 0x277CBEAB8);
        if (swift_dynamicCast())
        {
          v74 = v153;
          sub_21E57ACBC();
          v75 = sub_21E57AC9C();
          (*(v144 + 8))(v28, v21);
          [v74 setCalendar_];

          v76 = v146;
          v77 = v147;
          v78 = v137;
          *v147 = 0xD000000000000063;
          v77[1] = v78;
          (*(v31 + 104))(v77, *MEMORY[0x277D60868], v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8970, &unk_21E57C4F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21E57C3A0;
          *(inited + 32) = 1701669236;
          *(inited + 40) = 0xE400000000000000;
          *(inited + 72) = v145;
          v80 = MEMORY[0x277CC8990];
          *(inited + 80) = sub_21E535198(&qword_2812260D0, MEMORY[0x277CC8990]);
          OUTLINED_FUNCTION_28();
          *(inited + 88) = sub_21E535198(v81, v80);
          OUTLINED_FUNCTION_27();
          *(inited + 96) = sub_21E535198(v82, v80);
          __swift_allocate_boxed_opaque_existential_3((inited + 48));
          sub_21E57AB5C();
          OUTLINED_FUNCTION_36();
          *(inited + 104) = v83;
          *(inited + 112) = v84;
          OUTLINED_FUNCTION_58();
          v61 = MEMORY[0x277D837D0];
          v85 = MEMORY[0x277D83808];
          *(inited + 144) = MEMORY[0x277D837D0];
          *(inited + 152) = v85;
          v86 = MEMORY[0x277D837F8];
          *(inited + 160) = MEMORY[0x277D837D8];
          *(inited + 168) = v86;
          *(inited + 120) = 0xD000000000000012;
          *(inited + 128) = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
          OUTLINED_FUNCTION_106();
          OUTLINED_FUNCTION_96();
          v89 = v150;
          v88 = v151;
          v90 = OUTLINED_FUNCTION_62();
          v91(v90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
          OUTLINED_FUNCTION_106();
          OUTLINED_FUNCTION_49();
          sub_21E57B05C();

          (*(v89 + 8))(v31 + 104, v88);
          goto LABEL_8;
        }

LABEL_39:
        v69 = 1;
        v61 = v152;
        goto LABEL_40;
      }

      v92 = &qword_27CEC8968;
      v93 = qword_21E57D170;
      v94 = &v156;
    }

    else
    {
      if (v45 == 0xD000000000000011 && 0x800000021E57F1A0 == v47)
      {
      }

      else
      {
        v96 = OUTLINED_FUNCTION_67();

        if ((v96 & 1) == 0)
        {
          v97 = v140;
          sub_21E57B5BC();
          v98 = v2;
          v99 = sub_21E57B5DC();
          v100 = sub_21E57B85C();

          if (OUTLINED_FUNCTION_77())
          {
            v101 = OUTLINED_FUNCTION_57();
            *&v156 = swift_slowAlloc();
            *v101 = 136315394;
            v102 = sub_21E57BC2C();
            v104 = sub_21E5553D8(v102, v103, &v156);

            *(v101 + 4) = v104;
            *(v101 + 12) = 2080;
            v105 = [v98 _className];
            sub_21E57B67C();

            v106 = OUTLINED_FUNCTION_83();
            v109 = sub_21E5553D8(v106, v107, v108);

            *(v101 + 14) = v109;
            _os_log_impl(&dword_21E527000, v99, v100, "%s: Not indexing time intent - %s", v101, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_39();
          }

          (*(v141 + 8))(v97, v142);
          goto LABEL_39;
        }
      }

      v110 = sub_21E57B66C();
      v111 = [v2 valueForKeyPath_];

      if (v111)
      {
        sub_21E57B8EC();
        swift_unknownObjectRelease();
      }

      else
      {
        v154 = 0u;
        v155 = 0u;
      }

      v112 = v145;
      v156 = v154;
      v157 = v155;
      if (*(&v155 + 1))
      {
        v113 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v14, v113 ^ 1u, 1, v112);
        if (__swift_getEnumTagSinglePayload(v14, 1, v112) != 1)
        {
          v114 = v139;
          v115 = v143;
          (*(v139 + 32))(v143, v14, v112);
          v116 = v146;
          v117 = v147;
          v118 = v137;
          *v147 = 0xD000000000000063;
          v117[1] = v118;
          (*(v31 + 104))(v117, *MEMORY[0x277D60868], v116);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8970, &unk_21E57C4F0);
          v119 = swift_initStackObject();
          *(v119 + 16) = xmmword_21E57C3A0;
          *(v119 + 32) = 1701669236;
          *(v119 + 40) = 0xE400000000000000;
          *(v119 + 72) = v112;
          v120 = MEMORY[0x277CC8990];
          *(v119 + 80) = sub_21E535198(&qword_2812260D0, MEMORY[0x277CC8990]);
          OUTLINED_FUNCTION_28();
          *(v119 + 88) = sub_21E535198(v121, v120);
          OUTLINED_FUNCTION_27();
          *(v119 + 96) = sub_21E535198(v122, v120);
          boxed_opaque_existential_3 = __swift_allocate_boxed_opaque_existential_3((v119 + 48));
          (*(v114 + 16))(boxed_opaque_existential_3, v115, v112);
          OUTLINED_FUNCTION_36();
          *(v119 + 104) = v124;
          *(v119 + 112) = v125;
          OUTLINED_FUNCTION_58();
          v126 = MEMORY[0x277D83808];
          *(v119 + 144) = MEMORY[0x277D837D0];
          *(v119 + 152) = v126;
          v127 = MEMORY[0x277D837F8];
          *(v119 + 160) = MEMORY[0x277D837D8];
          *(v119 + 168) = v127;
          *(v119 + 120) = 0xD000000000000012;
          *(v119 + 128) = v128;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
          v61 = MEMORY[0x277D837E0];
          OUTLINED_FUNCTION_38();
          sub_21E57B62C();
          v129 = v149;
          sub_21E57B00C();
          v131 = v150;
          v130 = v151;
          (*(v150 + 16))(v148, v129, v151);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
          sub_21E57B62C();
          OUTLINED_FUNCTION_49();
          sub_21E57B05C();
          (*(v131 + 8))(v129, v130);
          (*(v114 + 8))(v143, v112);
          goto LABEL_8;
        }
      }

      else
      {
        sub_21E5350C0(&v156, &qword_27CEC8968, qword_21E57D170);
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v132, v133, v134, v112);
      }

      v92 = &qword_27CEC8960;
      v93 = &unk_21E57C4E0;
      v94 = v14;
    }

    sub_21E5350C0(v94, v92, v93);
    goto LABEL_39;
  }

  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (!v49)
  {
    goto LABEL_39;
  }

  v50 = v49;
  OUTLINED_FUNCTION_58();
  v51 = v146;
  v52 = v147;
  *v147 = 0xD00000000000005ELL;
  v52[1] = v53;
  (*(v31 + 104))(v52, *MEMORY[0x277D60868], v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8970, &unk_21E57C4F0);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_21E57C3A0;
  *(v54 + 32) = 0x6E6F697461727564;
  *(v54 + 40) = 0xE800000000000000;
  v55 = v2;
  [v50 duration];
  v56 = MEMORY[0x277D83A30];
  *(v54 + 72) = MEMORY[0x277D839F8];
  *(v54 + 80) = v56;
  v57 = MEMORY[0x277D83A28];
  *(v54 + 88) = MEMORY[0x277D83A08];
  *(v54 + 96) = v57;
  *(v54 + 48) = v58;
  OUTLINED_FUNCTION_36();
  *(v54 + 104) = v59;
  *(v54 + 112) = v60;
  OUTLINED_FUNCTION_58();
  v61 = MEMORY[0x277D837D0];
  v62 = MEMORY[0x277D83808];
  *(v54 + 144) = MEMORY[0x277D837D0];
  *(v54 + 152) = v62;
  v63 = MEMORY[0x277D837F8];
  *(v54 + 160) = MEMORY[0x277D837D8];
  *(v54 + 168) = v63;
  *(v54 + 120) = 0xD000000000000012;
  *(v54 + 128) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_96();
  v66 = v150;
  v65 = v151;
  v67 = OUTLINED_FUNCTION_62();
  v68(v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_49();
  sub_21E57B05C();

  (*(v66 + 8))(v31 + 104, v65);
LABEL_8:
  v69 = 0;
LABEL_40:
  v135 = sub_21E57B06C();
  __swift_storeEnumTagSinglePayload(v61, v69, 1, v135);
  OUTLINED_FUNCTION_100();
}

void sub_21E52E01C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_21E57B10C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  (*(v13 + 104))(v17 - v16, *MEMORY[0x277D60E80], v10);
  v19 = sub_21E57B0FC();
  v21 = v20;
  (*(v13 + 8))(v18, v10);
  if (v19 == v7 && v21 == v5)
  {
  }

  else
  {
    v23 = sub_21E57BB3C();

    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    if ((v23 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_21E540E54(v7, v5, v3, v1, v30);
  v24 = v30[0];
  v25 = v30[1];
  v26 = v30[2];
  v27 = v30[3];
  v28 = v30[4];
  v29 = v30[5];
LABEL_9:
  *v9 = v24;
  v9[1] = v25;
  v9[2] = v26;
  v9[3] = v27;
  v9[4] = v28;
  v9[5] = v29;
  OUTLINED_FUNCTION_100();
}

void sub_21E52E1B8()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = sub_21E57B5EC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  sub_21E57B5BC();
  v14 = sub_21E57B5DC();
  v15 = sub_21E57B84C();
  if (os_log_type_enabled(v14, v15))
  {
    v22 = v3;
    v16 = OUTLINED_FUNCTION_50();
    v17 = OUTLINED_FUNCTION_43();
    v23 = v17;
    *v16 = 136315138;
    v18 = sub_21E57BC2C();
    v20 = sub_21E5553D8(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_21E527000, v14, v15, "%s: Ranking SiriKit Intent phrases", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_31();
    v3 = v22;
    OUTLINED_FUNCTION_39();
  }

  (*(v8 + 8))(v13, v5);
  v21 = *(v1 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram);

  sub_21E5427F8(v3);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_21E52E370(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_21E576044(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E52E418(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v10 = a2;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  if ((v4 & *(result + 56)) != 0)
  {
    while (1)
    {
      v5 = v2;
LABEL_9:
      OUTLINED_FUNCTION_37(v5);
      v7 = *v6;
      v8 = v6[1];

      sub_21E576044(&v9, v7, v8);
    }
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v5 >= ((v3 + 63) >> 6))
    {

      return v10;
    }

    ++v2;
    if (*(result + 56 + 8 * v5))
    {
      v2 = v5;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E52E500()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_source;
  v2 = sub_21E57B3DC();
  OUTLINED_FUNCTION_82(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E52E574()
{
  sub_21E52E500();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SiriKitIntentSource()
{
  result = qword_2812260B0;
  if (!qword_2812260B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E52E620()
{
  result = sub_21E57B3DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E52E6D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E52E750(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E52E824;

  return (sub_21E532DE4)(v8, a2, a3, v7);
}

uint64_t sub_21E52E824()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21E52E970(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t sub_21E52EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a2;
  v95 = a3;
  v93 = sub_21E57B23C();
  v4 = *(v93 - 8);
  v5 = *(v4 + 64);
  (MEMORY[0x28223BE20])();
  v92 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21E57AFDC();
  v7 = *(v91 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v78 - v11;
  v12 = sub_21E57AF9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E57B5EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v81 = v21;
    v79 = v18;
    v80 = v17;
    v26 = *(v13 + 16);
    v25 = v13 + 16;
    v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v85 = *(v25 + 56);
    v86 = v26;
    v83 = (v4 + 8);
    v84 = (v7 + 8);
    v82 = (v25 - 8);
    v28 = MEMORY[0x277D84F90];
    v87 = v25;
    v88 = v12;
    do
    {
      v86(v16, v27, v12);
      v29 = v89;
      sub_21E57AF5C();
      v30 = sub_21E57AFAC();
      v98 = v31;
      v99 = v30;
      v32 = *v84;
      v33 = v29;
      v34 = v91;
      (*v84)(v33, v91);
      v35 = v90;
      sub_21E57AF5C();
      v36 = sub_21E57AFCC();
      v96 = v37;
      v97 = v36;
      v32(v35, v34);
      v38 = v94;
      v39 = v95;
      if (!v95)
      {
        v38 = sub_21E57AF8C();
        v39 = v40;
      }

      v41 = v92;
      sub_21E57AF6C();
      v42 = sub_21E57B22C();
      v44 = v43;
      (*v83)(v41, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = *(v28 + 16);
        sub_21E543754();
        v28 = v53;
      }

      v46 = *(v28 + 16);
      v45 = *(v28 + 24);
      v100 = v28;
      if (v46 >= v45 >> 1)
      {
        sub_21E543754();
        v100 = v54;
      }

      v12 = v88;
      (*v82)(v16, v88);
      v48 = v99;
      v47 = v100;
      *(v100 + 16) = v46 + 1;
      v28 = v47;
      v49 = v47 + 96 * v46;
      v50 = v97;
      v51 = v98;
      *(v49 + 32) = v48;
      *(v49 + 40) = v51;
      *(v49 + 48) = v50;
      *(v49 + 56) = v96;
      *(v49 + 64) = v38;
      *(v49 + 72) = v39;
      *(v49 + 80) = v42;
      *(v49 + 88) = v44;
      *(v49 + 96) = 0u;
      *(v49 + 112) = 0u;
      v27 += v85;
      --v24;
    }

    while (v24);
    v55 = v28;
    v56 = v81;
    sub_21E57B5BC();

    v57 = sub_21E57B5DC();
    v58 = sub_21E57B85C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v60;
      v102 = v60;
      *v59 = 136315138;
      v62 = *(v55 + 16);
      v63 = MEMORY[0x277D84F90];
      if (v62)
      {
        v98 = v60;
        v99 = v59;
        v101 = MEMORY[0x277D84F90];
        sub_21E562860(0, v62, 0);
        v63 = v101;
        v64 = (v55 + 40);
        do
        {
          v66 = *(v64 - 1);
          v65 = *v64;
          v101 = v63;
          v68 = *(v63 + 16);
          v67 = *(v63 + 24);

          if (v68 >= v67 >> 1)
          {
            sub_21E562860((v67 > 1), v68 + 1, 1);
            v63 = v101;
          }

          *(v63 + 16) = v68 + 1;
          v69 = v63 + 16 * v68;
          *(v69 + 32) = v66;
          *(v69 + 40) = v65;
          v64 += 12;
          --v62;
        }

        while (v62);
        v56 = v81;
        v61 = v98;
        v59 = v99;
      }

      v73 = MEMORY[0x223D5CC90](v63, MEMORY[0x277D837D0]);
      v75 = v74;

      v76 = sub_21E5553D8(v73, v75, &v102);

      *(v59 + 4) = v76;
      v55 = v100;

      _os_log_impl(&dword_21E527000, v57, v58, "SuggestionsForIntentProvider: Extracted suggestion phrases: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x223D5D740](v61, -1, -1);
      MEMORY[0x223D5D740](v59, -1, -1);

      (*(v79 + 8))(v56, v80);
    }

    else
    {

      (*(v79 + 8))(v56, v80);
    }
  }

  else
  {
    sub_21E57B5BC();
    v70 = sub_21E57B5DC();
    v71 = sub_21E57B85C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_21E527000, v70, v71, "SuggestionsForIntentProvider: Empty suggestion list", v72, 2u);
      MEMORY[0x223D5D740](v72, -1, -1);
    }

    (*(v18 + 8))(v23, v17);
    return MEMORY[0x277D84F90];
  }

  return v55;
}

id sub_21E52F134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_21E57AC4C();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_21E57AC1C();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_21E57AC1C();
    v15 = *(*(v12 - 8) + 8);
    v16 = OUTLINED_FUNCTION_83();
    v17(v16);
  }

  v18 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v18;
}

uint64_t sub_21E52F26C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21E52F298@<X0>(_WORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21E52F2C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E54A2F8();
  *a1 = result;
  return result;
}

uint64_t sub_21E52F2F8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_21E52F358(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_21E57B7AC();
  }

  return result;
}

uint64_t sub_21E52F3B4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_21E52F3FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_21E52F4A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 96);
  return v4;
}

size_t sub_21E52F54C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21E52F640(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8938, &qword_21E57E680);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_21E52F6C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_21E52F6F0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_21E52F78C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_21E52F7C4()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75();
  v2 = sub_21E57BBCC();

  return sub_21E52F9AC(v1, v0, v2);
}

unint64_t sub_21E52F81C()
{
  OUTLINED_FUNCTION_66();
  MEMORY[0x223D5D090](0);
  OUTLINED_FUNCTION_75();
  v2 = sub_21E57BBCC();

  return sub_21E52F9AC(v1, v0, v2);
}

unint64_t sub_21E52F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_21E57BB8C();
  sub_21E57B6AC();
  OUTLINED_FUNCTION_75();
  v10 = sub_21E57BBCC();

  return sub_21E52FA60(a1, a2, a3, a4, v10);
}

unint64_t sub_21E52F914(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21E57AC6C();
  sub_21E535198(&qword_27CEC8990, MEMORY[0x277CC95F0]);
  v5 = sub_21E57B63C();

  return sub_21E52FB5C(a1, v5);
}

unint64_t sub_21E52F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21E57BB3C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21E52FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_21E57BB3C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_21E57BB3C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_21E52FB5C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_21E57AC6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_21E535198(&qword_27CEC8998, MEMORY[0x277CC95F0]);
    v10 = sub_21E57B65C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21E52FD18(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E57B60C();

  return v3;
}

uint64_t sub_21E52FD84(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_21E535114(0, a3, a4);
  v8 = sub_21E57B78C();

  return v8;
}

uint64_t sub_21E52FDF8(void *a1)
{
  v1 = [a1 _validParameterCombinations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
  sub_21E535114(0, &qword_2812254D8, 0x277CD3E58);
  sub_21E535154(&qword_281225528, &qword_27CEC88E0, &unk_21E57C450);
  v3 = sub_21E57B60C();

  return v3;
}

uint64_t sub_21E52FECC(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E57AC0C();

  return v3;
}

uint64_t sub_21E52FF30(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_21E57B67C();
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21E52FF88(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 96 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0x60uLL);
      memmove(v11, v18, 0x60uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 96;
      result = sub_21E534CEC(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    sub_21E534CEC(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21E53011C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E530274(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E5303D0(void *a1, uint64_t a2, uint64_t a3)
{
  v41 = sub_21E57B5EC();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E57B10C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DefaultEligibilityCriteria();
  v43[3] = v15;
  v43[4] = &off_282F92F38;
  v43[0] = a2;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v39 = v6;
    v40 = v11;

    v18 = a1;
    if ([v17 preferredCallProvider] != 1)
    {
      goto LABEL_5;
    }

    v37 = __swift_project_boxed_opaque_existential_1(v43, v15);
    v19 = v40;
    v20 = *(v40 + 104);
    v35 = *MEMORY[0x277D60EC8];
    v34 = v20;
    v20(v14);
    sub_21E57B0FC();
    v38 = a3;
    v36 = *(v19 + 8);
    v36(v14, v10);
    v21 = *v37;
    LOBYTE(v21) = sub_21E54A03C();

    if (v21)
    {
      v34(v14, v35, v10);
      v22 = sub_21E57B0FC();

      v36(v14, v10);
    }

    else
    {
LABEL_5:
      if ([v17 preferredCallProvider] == 2)
      {
        v23 = v40;
        (*(v40 + 104))(v14, *MEMORY[0x277D60F20], v10);
        v22 = sub_21E57B0FC();

        (*(v23 + 8))(v14, v10);
      }

      else
      {
        sub_21E57B5BC();
        v24 = sub_21E57B5DC();
        v25 = sub_21E57B85C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = v18;
          v28 = swift_slowAlloc();
          v42 = v28;
          *v26 = 136315138;
          v29 = sub_21E57BC2C();
          v31 = sub_21E5553D8(v29, v30, &v42);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_21E527000, v24, v25, "%s: Can't map com.apple.InCallService to appropriate bundleId", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          v32 = v28;
          v18 = v27;
          MEMORY[0x223D5D740](v32, -1, -1);
          MEMORY[0x223D5D740](v26, -1, -1);
        }

        (*(v39 + 8))(v9, v41);
        v22 = 0xD000000000000017;
      }
    }
  }

  else
  {
    v22 = 0xD000000000000017;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  return v22;
}

uint64_t sub_21E530844(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_21E57B8FC();
  v4 = *(a1 + 36);
  return result;
}

BOOL sub_21E530884(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v52 = a4;
  v12 = *a7;
  v13 = sub_21E57B5EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DefaultEligibilityCriteria();
  v54[3] = v18;
  v54[4] = &off_282F92F38;
  v54[0] = a6;

  v19 = sub_21E52FF30(a3, &selRef_intentClass);
  if (!v20)
  {
    sub_21E57B5BC();
    v32 = sub_21E57B5DC();
    v33 = sub_21E57B85C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53 = v35;
      *v34 = 136315138;
      v36 = sub_21E57BC2C();
      v38 = sub_21E5553D8(v36, v37, &v53);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_21E527000, v32, v33, "%s: Unable to fetch intent class for BMAppIntent", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x223D5D740](v35, -1, -1);
      MEMORY[0x223D5D740](v34, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    goto LABEL_18;
  }

  v21 = v19;
  v22 = v20;
  if (qword_281225880 != -1)
  {
    swift_once();
  }

  if ((sub_21E5693C4(v21, v22, v52) & 1) == 0)
  {
    v23 = 0x6C7070612E6D6F63;
    if (sub_21E57B70C())
    {
      goto LABEL_8;
    }

    v24 = __swift_project_boxed_opaque_existential_1(v54, v18);
    v25 = *(*__swift_project_boxed_opaque_existential_1((*v24 + 16), *(*v24 + 40)) + 16);

    sub_21E52D0C0(a1, a2, v25);
    v27 = v26;
    v29 = v28;

    if (!v27 || (v30 = sub_21E543EB0(v21, v22, v29), , , v30))
    {
LABEL_8:
      if (!sub_21E543EB0(0xD00000000000001ALL, 0x800000021E57F220, a5))
      {
        v31 = v21 == 0xD000000000000013 && v22 == 0x800000021E57F240;
        if (!v31 && (sub_21E57BB3C() & 1) == 0)
        {
          v41 = 0xEE007377656E2E65;
          v42 = a1 == 0x6C7070612E6D6F63 && a2 == 0xEE007377656E2E65;
          if (!v42 && (sub_21E57BB3C() & 1) == 0)
          {
            v43 = sub_21E57B1DC();
            if (*(v43 + 16))
            {
              v44 = sub_21E52F7C4();
              if (v45)
              {
                v46 = (*(v43 + 56) + 16 * v44);
                v23 = *v46;
                v41 = v46[1];
              }
            }

            if (v23 == a1 && v41 == a2)
            {
            }

            else
            {
              v48 = sub_21E57BB3C();

              if ((v48 & 1) == 0)
              {

LABEL_40:
                v39 = 1;
                goto LABEL_19;
              }
            }
          }

          if (v21 == 0xD000000000000011 && v22 == 0x800000021E57F260)
          {
          }

          else
          {
            v50 = sub_21E57BB3C();

            if ((v50 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v39 = !sub_21E543EB0(0x657449616964656DLL, 0xEA0000000000736DLL, v52);
          goto LABEL_19;
        }
      }
    }
  }

LABEL_18:
  v39 = 0;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  return v39;
}

uint64_t sub_21E530D48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultEligibilityCriteria();
  v14[3] = v10;
  v14[4] = &off_282F92F38;
  v14[0] = a4;
  v11 = a1 == 0xD000000000000017 && 0x800000021E57EDC0 == a2;
  if (v11 || (sub_21E57BB3C() & 1) != 0)
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v14, v10);

    a1 = sub_21E5303D0(a3, v12, a5);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return a1;
}

uint64_t sub_21E530E48@<X0>(void *a1@<X0>, void (**a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v46 = a6;
  v47 = a2;
  v48 = a4;
  v13 = *a7;
  v14 = sub_21E57B5EC();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DefaultEligibilityCriteria();
  v49[3] = v19;
  v49[4] = &off_282F92F38;
  v49[0] = a5;

  if (!sub_21E52FD18(a1))
  {
    v46 = v14;
    v47 = v15;
    sub_21E57B5BC();
    v35 = v48;

    v36 = sub_21E57B5DC();
    v37 = sub_21E57B86C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50 = v39;
      *v38 = 136315394;
      v40 = sub_21E57BC2C();
      v42 = sub_21E5553D8(v40, v41, &v50);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_21E5553D8(a3, v35, &v50);
      _os_log_impl(&dword_21E527000, v36, v37, "%s: parametersByName was unexpectedly empty for generic intent from bundleId: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v39, -1, -1);
      MEMORY[0x223D5D740](v38, -1, -1);
    }

    (v47)[1](v18, v46);
    goto LABEL_12;
  }

  sub_21E54341C(v20);
  v22 = v21;
  v23 = __swift_project_boxed_opaque_existential_1(v49, v19);
  v24 = sub_21E530884(a3, v48, v47, v22, v22, *v23, a7);

  if (!v24)
  {

LABEL_12:
    v26 = 0;
    v25 = 0;
LABEL_13:
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v34 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v30 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_14;
  }

  sub_21E52E01C();

  v25 = v51;
  if (!v51)
  {
    v26 = 0;
    goto LABEL_13;
  }

  v26 = v50;
  v27 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v27 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    sub_21E5350C0(&v50, &qword_27CEC8988, &unk_21E57C510);
    goto LABEL_12;
  }

  v28 = v60;
  v29 = v61;
  v31 = v58;
  v30 = v59;
  v32 = v56;
  v33 = v57;
  v34 = v55;
  v46 = v54;
  v47 = v53;
  v48 = v52;
LABEL_14:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v49);
  *a8 = v26;
  a8[1] = v25;
  v44 = v47;
  a8[2] = v48;
  a8[3] = v44;
  a8[4] = v46;
  a8[5] = v34;
  a8[6] = v32;
  a8[7] = v33;
  a8[8] = v31;
  a8[9] = v30;
  a8[10] = v28;
  a8[11] = v29;
  return result;
}

uint64_t sub_21E5311E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a8;
  v8[38] = v15;
  v8[35] = a6;
  v8[36] = a7;
  v8[33] = a3;
  v8[34] = a4;
  v8[31] = a1;
  v8[32] = a2;
  v8[39] = *v15;
  v10 = sub_21E57B5EC();
  v8[40] = v10;
  v11 = *(v10 - 8);
  v8[41] = v11;
  v12 = *(v11 + 64) + 15;
  v8[42] = swift_task_alloc();
  v8[29] = type metadata accessor for DefaultEligibilityCriteria();
  v8[30] = &off_282F92F38;
  v8[26] = a5;

  return MEMORY[0x2822009F8](sub_21E531300);
}

uint64_t sub_21E531300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_92();
  a21 = v25;
  a22 = v26;
  a20 = v22;
  v27 = *(v22 + 272);
  v28 = [v27 _nonNilParameters];
  *(v22 + 344) = sub_21E57B80C();

  result = sub_21E52FDF8(v27);
  *(v22 + 352) = result;
  if (!result)
  {
LABEL_18:

    v53 = *(v22 + 336);
    v54 = *(v22 + 256);
    sub_21E57B5BC();

    v55 = sub_21E57B5DC();
    sub_21E57B86C();

    v56 = OUTLINED_FUNCTION_77();
    v58 = *(v22 + 328);
    v57 = *(v22 + 336);
    v59 = *(v22 + 320);
    if (v56)
    {
      v60 = *(v22 + 312);
      a9 = *(v22 + 248);
      a10 = *(v22 + 256);
      OUTLINED_FUNCTION_57();
      a11 = OUTLINED_FUNCTION_69();
      *v23 = 136315394;
      v61 = sub_21E57BC2C();
      sub_21E5553D8(v61, v62, &a11);

      *(v23 + 14) = OUTLINED_FUNCTION_68(v63, v64);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
      OUTLINED_FUNCTION_64();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_30();
    }

    v70 = OUTLINED_FUNCTION_34();
    v71(v70);
LABEL_21:
    v72 = *(v22 + 336);
    __swift_destroy_boxed_opaque_existential_0Tm((v22 + 208));

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_54();

    return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14);
  }

  if (!*(result + 16))
  {

    goto LABEL_18;
  }

  v30 = 0;
  v31 = *(result + 32);
  *(v22 + 408) = v31;
  v32 = 1 << v31;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(result + 64);
  *(v22 + 400) = MEMORY[0x277D84F90];
  if (v34)
  {
    while (1)
    {
      v35 = *(v22 + 352);
LABEL_12:
      *(v22 + 360) = v34;
      *(v22 + 368) = v30;
      v37 = *(v22 + 344);
      v38 = *(v35 + 48);
      OUTLINED_FUNCTION_94(__clz(__rbit64(v34)));
      if (sub_21E52B648(v37, v24))
      {
        v39 = *(v22 + 344);
        v40 = *(v22 + 304);
        v42 = *(v22 + 256);
        v41 = *(v22 + 264);
        v43 = *(v22 + 248);
        v44 = __swift_project_boxed_opaque_existential_1((v22 + 208), *(v22 + 232));
        v45 = OUTLINED_FUNCTION_45(v44);
        if (sub_21E530884(v45, v46, v47, v48, v49, v50, v40))
        {
          break;
        }
      }

      v34 &= v34 - 1;

      if (!v34)
      {
        goto LABEL_8;
      }
    }

    v81 = swift_task_alloc();
    *(v22 + 384) = v81;
    *v81 = v22;
    OUTLINED_FUNCTION_16(v81);
    OUTLINED_FUNCTION_54();

    return sub_21E52B808(v82, v83, v84, v85, v86, v87, v88);
  }

  else
  {
LABEL_8:
    while (1)
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v35 = *(v22 + 352);
      if (v36 >= (((1 << *(v22 + 408)) + 63) >> 6))
      {
        v51 = *(v22 + 344);

        v52 = *(v22 + 400);
        goto LABEL_21;
      }

      v34 = *(v35 + 8 * v36 + 64);
      ++v30;
      if (v34)
      {
        v30 = v36;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E53160C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 384);
  v5 = *(v3 + 376);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v9 + 392) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

void sub_21E53170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  v14 = *(v12 + 392);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 32);
    v18 = *(v12 + 400);
    v19 = v15 - 1;
    while (1)
    {
      if (v16 >= v15)
      {
        goto LABEL_43;
      }

      memcpy((v12 + 16), v17, 0x60uLL);
      v20 = *(v12 + 16);
      v13 = *(v12 + 24);
      OUTLINED_FUNCTION_15();
      if (v21)
      {
        v22 = *__swift_project_boxed_opaque_existential_1((v12 + 208), *(v12 + 232));
        sub_21E534CEC(v12 + 16, v12 + 112);
        v23 = OUTLINED_FUNCTION_21();
        if (sub_21E54A0B4(v23, v24))
        {
          sub_21E534D48(v12 + 16);
        }

        else
        {
          v25 = sub_21E52FF30(*(v12 + 264), &selRef_intentClass);
          if (v26)
          {
            if (v25 == 0xD000000000000011 && v26 == 0x800000021E57F260)
            {
              v64 = *(v12 + 392);
              v65 = *(v12 + 344);

LABEL_38:

              v68 = *(v12 + 352);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
              v69 = OUTLINED_FUNCTION_107();
              *(v69 + 16) = xmmword_21E57C390;
              memcpy((v69 + 32), (v12 + 16), 0x60uLL);

              goto LABEL_33;
            }

            v28 = sub_21E57BB3C();

            if (v28)
            {
              v66 = *(v12 + 392);
              v67 = *(v12 + 344);
              goto LABEL_38;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v18 + 16);
            sub_21E543754();
            v18 = v31;
          }

          v13 = *(v18 + 16);
          v29 = *(v18 + 24);
          if (v13 >= v29 >> 1)
          {
            OUTLINED_FUNCTION_40(v29);
            sub_21E543754();
            v18 = v32;
          }

          *(v18 + 16) = v13 + 1;
          memcpy((v18 + 96 * v13 + 32), (v12 + 16), 0x60uLL);
        }
      }

      if (v19 == v16)
      {
        v33 = *(v12 + 392);

        v34 = *(v12 + 368);
        v35 = (*(v12 + 360) - 1) & *(v12 + 360);
        *(v12 + 400) = v18;
        if (v35)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v15 = *(v14 + 16);
      v17 += 96;
      ++v16;
    }
  }

  v36 = *(v12 + 392);

  v34 = *(v12 + 368);
  v35 = (*(v12 + 360) - 1) & *(v12 + 360);
  if (v35)
  {
    goto LABEL_23;
  }

LABEL_24:
  while (1)
  {
    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v37 = *(v12 + 352);
    if (v38 >= (((1 << *(v12 + 408)) + 63) >> 6))
    {
      v53 = *(v12 + 344);

      v54 = *(v12 + 400);
LABEL_33:
      v55 = *(v12 + 336);
      __swift_destroy_boxed_opaque_existential_0Tm((v12 + 208));

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_55();

      v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
      return;
    }

    v35 = *(v37 + 8 * v38 + 64);
    ++v34;
    if (v35)
    {
      v34 = v38;
      while (1)
      {
        *(v12 + 360) = v35;
        *(v12 + 368) = v34;
        v39 = *(v12 + 344);
        v40 = *(v37 + 48);
        OUTLINED_FUNCTION_94(__clz(__rbit64(v35)));
        if (sub_21E52B648(v39, v13))
        {
          v41 = *(v12 + 344);
          v42 = *(v12 + 304);
          v44 = *(v12 + 256);
          v43 = *(v12 + 264);
          v45 = *(v12 + 248);
          v46 = __swift_project_boxed_opaque_existential_1((v12 + 208), *(v12 + 232));
          v47 = OUTLINED_FUNCTION_45(v46);
          if (sub_21E530884(v47, v48, v49, v50, v51, v52, v42))
          {
            break;
          }
        }

        v35 &= v35 - 1;

        if (!v35)
        {
          goto LABEL_24;
        }

LABEL_23:
        v37 = *(v12 + 352);
      }

      v70 = swift_task_alloc();
      *(v12 + 384) = v70;
      *v70 = v12;
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_55();

      sub_21E52B808(v71, v72, v73, v74, v75, v76, v77);
      return;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_21E531AAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v3[32] = a1;
  v7 = sub_21E57B5EC();
  v3[33] = v7;
  v8 = *(v7 - 8);
  v3[34] = v8;
  v9 = *(v8 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8918, &qword_21E57C498) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v11 = type metadata accessor for DefaultEligibilityCriteria();
  v3[38] = v11;
  v3[17] = v11;
  v3[18] = &off_282F92F38;
  v3[14] = a2;
  v3[22] = v6;
  v3[23] = &off_282F930A8;
  v3[19] = a3;

  return MEMORY[0x2822009F8](sub_21E531C28);
}

uint64_t sub_21E531C28()
{
  v51 = v0;
  v1 = *(v0 + 256);
  if (*(v1 + 56))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 56);
  }

  OUTLINED_FUNCTION_90();
  v4 = sub_21E54354C();

  if ((v4 & 1) == 0)
  {
    v5 = *(v0 + 256);
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 304));
    v7 = *(*__swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40)) + 16);
    v9 = *(v5 + 32);
    v8 = *(v5 + 40);

    v10 = OUTLINED_FUNCTION_90();
    v12 = sub_21E52D0C0(v10, v11, v7);
    v14 = v13;

    *(v0 + 312) = v12;
    *(v0 + 320) = v14;
    if (v14)
    {

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15 && (v16 = *(v0 + 256), *(v0 + 192) = *(v16 + 64), v17 = *(v0 + 200), *(v0 + 328) = *(v0 + 192), (*(v0 + 336) = v17) != 0))
      {
        v18 = *(v0 + 296);
        v19 = *(v16 + 8);
        *(v0 + 208) = *v16;
        *(v0 + 216) = v19;
        *(v0 + 224) = v12;
        *(v0 + 232) = v14;
        sub_21E57AC7C();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
        sub_21E534DE8();

        sub_21E57B8CC();
        v25 = v24;
        sub_21E5350C0(v18, &qword_27CEC8918, &qword_21E57C498);

        if (v25)
        {
          v26 = *__swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
          v27 = swift_task_alloc();
          *(v0 + 344) = v27;
          *v27 = v0;
          v27[1] = sub_21E532034;
          OUTLINED_FUNCTION_83();

          return sub_21E55FF74();
        }

        v29 = *(v0 + 288);
        v30 = *(v0 + 256);
        sub_21E57B5BC();

        sub_21E534CEC(v30, v0 + 16);
        v31 = sub_21E57B5DC();
        v32 = sub_21E57B85C();

        sub_21E534D48(v30);
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 288);
        v36 = *(v0 + 264);
        v35 = *(v0 + 272);
        if (v33)
        {
          v49 = *(v0 + 264);
          v37 = OUTLINED_FUNCTION_43();
          v50 = OUTLINED_FUNCTION_104();
          *v37 = 136315650;
          *(v37 + 4) = sub_21E5553D8(0xD000000000000018, 0x800000021E57F070, &v50);
          *(v37 + 12) = 2080;
          v38 = OUTLINED_FUNCTION_60();
          v41 = sub_21E5553D8(v38, v39, v40);

          *(v37 + 14) = v41;
          *(v37 + 22) = 2080;
          v42 = OUTLINED_FUNCTION_59();
          *(v37 + 24) = sub_21E5553D8(v42, v43, v44);
          _os_log_impl(&dword_21E527000, v31, v32, "%s: %s already in %s, not adding app mention suffix", v37, 0x20u);
          OUTLINED_FUNCTION_64();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_39();

          (*(v35 + 8))(v34, v49);
        }

        else
        {

          (*(v35 + 8))(v34, v36);
        }
      }

      else
      {
      }
    }
  }

  v45 = *(v0 + 288);
  v46 = *(v0 + 296);
  v47 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));

  v48 = *(v0 + 8);

  return v48(0, 0);
}

uint64_t sub_21E532034()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 344);
  *v2 = *v0;
  *(v1 + 352) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E53211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_92();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  if (sub_21E529E5C(v22[44]) == 1)
  {
    v26 = v22[44];
    v27 = v22[40];
    v28 = v22[35];

    sub_21E57B5BC();

    sub_21E534E3C((v22 + 24), (v22 + 30));
    v29 = sub_21E57B5DC();
    sub_21E57B85C();
    sub_21E5350C0((v22 + 24), &qword_27CEC8920, &qword_21E57C4A0);
    v30 = OUTLINED_FUNCTION_77();
    v31 = v22[44];
    if (v30)
    {
      v33 = v22[41];
      v32 = v22[42];
      v34 = v22[34];
      a9 = v22[33];
      a10 = v22[35];
      OUTLINED_FUNCTION_43();
      a11 = OUTLINED_FUNCTION_69();
      *v23 = 136315650;
      *(v23 + 4) = sub_21E5553D8(0xD000000000000018, 0x800000021E57F070, &a11);
      *(v23 + 12) = 2048;
      v35 = sub_21E529E5C(v31);

      *(v23 + 14) = v35;

      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_21E5553D8(v33, v32, &a11);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v36, v37, v38, v39, v40, 0x20u);
      OUTLINED_FUNCTION_64();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_30();

      (*(v34 + 8))(a10, a9);
    }

    else
    {
      v45 = v22[34];
      v44 = v22[35];
      v46 = v22[33];
      v47 = v22[44];
      swift_bridgeObjectRelease_n();

      (*(v45 + 8))(v44, v46);
    }

    OUTLINED_FUNCTION_78();
  }

  else
  {
    v41 = v22[44];

    v42 = v22[39];
    v43 = v22[40];
  }

  v49 = v22[36];
  v48 = v22[37];
  v50 = v22[35];
  __swift_destroy_boxed_opaque_existential_0Tm(v22 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v22 + 19);

  v51 = v22[1];
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_54();

  return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21E532350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[65] = a5;
  v5[63] = a1;
  v5[64] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470) - 8) + 64) + 15;
  v5[66] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620) - 8) + 64) + 15;
  v5[67] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0) - 8) + 64) + 15;
  v5[68] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480) - 8) + 64) + 15;
  v5[69] = swift_task_alloc();
  v12 = sub_21E57B3DC();
  v5[70] = v12;
  v13 = *(v12 - 8);
  v5[71] = v13;
  v14 = *(v13 + 64) + 15;
  v5[72] = swift_task_alloc();
  v5[45] = type metadata accessor for DefaultEligibilityCriteria();
  v5[46] = &off_282F92F38;
  v5[42] = a2;
  v5[50] = type metadata accessor for DefaultAppFinderForIntentProvider();
  v5[51] = &off_282F930A8;
  v5[47] = a3;

  return MEMORY[0x2822009F8](sub_21E532548);
}

uint64_t sub_21E532548()
{
  v1 = *(v0 + 504);
  *(v0 + 496) = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  *(v0 + 584) = v2;
  if (v2)
  {
    *(v0 + 688) = *MEMORY[0x277D55868];
    *(v0 + 592) = 0;
    memcpy((v0 + 144), (v1 + 32), 0x60uLL);
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_11(&unk_21E57C488);
    v14 = v3;
    v4 = swift_task_alloc();
    *(v0 + 664) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_17(v4);

    return v14(v5);
  }

  else
  {
    v7 = *(v0 + 576);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_21E5326A8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 664);
  *v2 = *v0;
  *(v1 + 672) = v5;
  *(v1 + 680) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E532794()
{
  v1 = *(v0 + 680);
  if (v1)
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 656);
    v4 = *(v0 + 648);
    v100 = *(v0 + 640);
    v101 = *(v0 + 632);
    v99 = *(v0 + 624);
    v103 = *(v0 + 616);
    v105 = *(v0 + 608);
    v87 = *(v0 + 600);
    v92 = *(v0 + 688);
    v5 = *(v0 + 568);
    v90 = *(v0 + 576);
    v91 = *(v0 + 560);
    v93 = *(v0 + 552);
    v94 = *(v0 + 544);
    v95 = *(v0 + 536);
    v96 = *(v0 + 528);
    v88 = *(v0 + 512);
    v89 = *(v0 + 520);
    type metadata accessor for CATDialogProvider();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8910, &qword_21E57C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E57C3A0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000021E57EEF0;
    v7 = MEMORY[0x277D837D0];
    *(inited + 48) = v4;
    *(inited + 56) = v3;
    *(inited + 72) = v7;
    *(inited + 80) = 0x656D614E707061;
    *(inited + 120) = v7;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = v2;
    *(inited + 104) = v1;

    v8 = sub_21E57B62C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_21E55E854(v10, 0xD000000000000021, 0x800000021E57EEC0, v8, v88, v89, 0xD00000000000001ALL, 0x800000021E57EF10);

    (*(v5 + 104))(v90, v92, v91);
    v11 = sub_21E57B1FC();
    OUTLINED_FUNCTION_7(v93, v12, v13, v11);
    v14 = sub_21E57AC4C();
    OUTLINED_FUNCTION_7(v94, v15, v16, v14);
    v17 = sub_21E57B5FC();
    OUTLINED_FUNCTION_7(v95, v18, v19, v17);
    v20 = sub_21E57B04C();
    OUTLINED_FUNCTION_7(v96, v21, v22, v20);
    v23 = sub_21E57B5AC();

    v24 = sub_21E57B59C();
    v25 = MEMORY[0x277D55898];
    *(v0 + 480) = v23;
    *(v0 + 488) = v25;
    *(v0 + 456) = v24;
    v26 = sub_21E57B4AC();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v86 = 0;
    v84 = v90;
    v85 = v93;
    sub_21E57B44C();
    v29 = sub_21E534D48(v0 + 144);
    MEMORY[0x223D5CC60](v29);
    OUTLINED_FUNCTION_88();
    if (v31)
    {
      OUTLINED_FUNCTION_40(v30);
      sub_21E57B7AC();
    }

    OUTLINED_FUNCTION_60();
    sub_21E57B7CC();
  }

  else
  {
    v102 = *(v0 + 672);
    v32 = *(v0 + 656);
    v33 = *(v0 + 640);
    v34 = *(v0 + 624);
    v104 = *(v0 + 616);
    v106 = *(v0 + 648);
    v35 = *(v0 + 608);
    v36 = *(v0 + 688);
    v97 = *(v0 + 576);
    v98 = *(v0 + 632);
    v37 = *(v0 + 560);
    v38 = *(v0 + 552);
    v39 = *(v0 + 544);
    v40 = *(v0 + 536);
    if (v35)
    {
      v41 = *(v0 + 600);
    }

    v42 = *(v0 + 528);
    if (v35)
    {
      v43 = *(v0 + 608);
    }

    (*(*(v0 + 568) + 104))();
    v44 = sub_21E57B1FC();
    OUTLINED_FUNCTION_7(v38, v45, v46, v44);
    v47 = sub_21E57AC4C();
    OUTLINED_FUNCTION_7(v39, v48, v49, v47);
    v50 = sub_21E57B5FC();
    OUTLINED_FUNCTION_7(v40, v51, v52, v50);
    v53 = sub_21E57B04C();
    OUTLINED_FUNCTION_7(v42, v54, v55, v53);
    v56 = sub_21E57B5AC();

    v57 = sub_21E57B59C();
    v58 = MEMORY[0x277D55898];
    *(v0 + 440) = v56;
    *(v0 + 448) = v58;
    *(v0 + 416) = v57;
    v59 = sub_21E57B4AC();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v85 = v38;
    v86 = v102;
    v84 = v97;
    sub_21E57B44C();
    sub_21E534D48(v0 + 144);

    MEMORY[0x223D5CC60](v62);
    OUTLINED_FUNCTION_88();
    if (v31)
    {
      OUTLINED_FUNCTION_40(v63);
      sub_21E57B7AC();
    }

    OUTLINED_FUNCTION_60();
    sub_21E57B7CC();
  }

  v64 = *(v0 + 592) + 1;
  if (v64 == *(v0 + 584))
  {
    v65 = *(v0 + 496);
    v66 = *(v0 + 576);
    v67 = *(v0 + 552);
    v68 = *(v0 + 544);
    v69 = *(v0 + 536);
    v70 = *(v0 + 528);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));

    v71 = OUTLINED_FUNCTION_5();

    return v72(v71);
  }

  else
  {
    *(v0 + 592) = v64;
    memcpy((v0 + 144), (*(v0 + 504) + 96 * v64 + 32), 0x60uLL);
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_11(&unk_21E57C488);
    v107 = v74;
    v75 = swift_task_alloc();
    *(v0 + 664) = v75;
    *v75 = v0;
    v83 = OUTLINED_FUNCTION_17(v75, v76, v77, v78, v79, v80, v81, v82, v84, v85, v86, 0, 0);

    return v107(v83);
  }
}

uint64_t sub_21E532DE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[79] = *a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0) - 8) + 64) + 15;
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v7 = sub_21E57B9EC();
  v4[82] = v7;
  v8 = *(v7 - 8);
  v4[83] = v8;
  v4[84] = *(v8 + 64);
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v9 = sub_21E57BA0C();
  v4[87] = v9;
  v10 = *(v9 - 8);
  v4[88] = v10;
  v4[89] = *(v10 + 64);
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v11 = sub_21E57B5EC();
  v4[92] = v11;
  v12 = *(v11 - 8);
  v4[93] = v12;
  v13 = *(v12 + 64) + 15;
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[65] = type metadata accessor for DefaultEligibilityCriteria();
  v4[66] = &off_282F92F38;
  v4[62] = a1;

  return MEMORY[0x2822009F8](sub_21E533048);
}

uint64_t sub_21E533048()
{
  v136 = v0;
  v1 = v0[97];
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = OUTLINED_FUNCTION_48(v3);
  v5 = v0[97];
  v6 = v0[93];
  v7 = v0[92];
  if (v4)
  {
    v8 = v0[79];
    v9 = OUTLINED_FUNCTION_50();
    v10 = OUTLINED_FUNCTION_43();
    v135 = v10;
    *v9 = 136315138;
    v11 = sub_21E57BC2C();
    v13 = sub_21E5553D8(v11, v12, &v135);

    *(v9 + 4) = v13;
    OUTLINED_FUNCTION_12();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_30();
  }

  v19 = OUTLINED_FUNCTION_34();
  v20(v19);
  v0[98] = v6;
  v21 = v0[91];
  v126 = v0[89];
  v121 = v0[88];
  v123 = v0[87];
  v124 = v0[90];
  v22 = v0[86];
  v133 = v0[85];
  v125 = v0[84];
  v131 = v0[83];
  v23 = v0[82];
  v24 = v0[81];
  v25 = v0[80];
  v26 = v0[79];
  v119 = v23;
  v127 = v0[78];
  v27 = v0[77];
  v28 = v0[76];
  v29 = MEMORY[0x277D84F90];
  v0[74] = MEMORY[0x277D84F90];
  v122 = swift_allocObject();
  v0[99] = v122;
  *(v122 + 16) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
  v0[75] = sub_21E57B62C();
  sub_21E57B9FC();
  sub_21E57B9CC();
  type metadata accessor for MapsGenericIntentTitleProvider();
  inited = swift_initStackObject();
  v0[100] = inited;
  *(inited + 16) = v28;
  *(inited + 24) = v27;

  v31 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v32 = [v31 Intent];
  swift_unknownObjectRelease();
  v33 = sub_21E57AC4C();
  OUTLINED_FUNCTION_26();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_26();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  v40 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v41 = sub_21E52F134(v24, v25, 50000, 0, 1);
  v120 = [v32 publisherWithOptions_];

  v42 = swift_allocObject();
  *(v42 + 16) = v26;
  v0[54] = sub_21E534BCC;
  v0[55] = v42;
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_21E529A78;
  v0[53] = &block_descriptor;
  aBlock = _Block_copy(v0 + 50);
  v43 = v0[55];

  (*(v131 + 16))(v133, v22, v23);
  v44 = v123;
  (*(v121 + 16))(v124, v21, v123);
  v45 = (*(v131 + 80) + 24) & ~*(v131 + 80);
  v46 = (v125 + *(v121 + 80) + v45) & ~*(v121 + 80);
  v47 = (v126 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v122;
  (*(v131 + 32))(v48 + v45, v133, v119);
  (*(v121 + 32))(v48 + v46, v124, v123);
  *(v48 + v47) = v127;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v0[60] = sub_21E534BEC;
  v0[61] = v48;
  v0[56] = MEMORY[0x277D85DD0];
  v0[57] = 1107296256;
  v0[58] = sub_21E529E04;
  v0[59] = &block_descriptor_30;
  v49 = _Block_copy(v0 + 56);
  v50 = v0[61];

  v51 = [v120 sinkWithCompletion:aBlock shouldContinue:v49];
  _Block_release(v49);
  _Block_release(aBlock);

  swift_beginAccess();
  v52 = *(v122 + 16);
  v0[101] = v52;
  v53 = sub_21E5351E4(v52);
  v0[102] = v53;
  v54 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_fetchPhrasesTimeoutSeconds;
  v0[103] = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_fetchPhrasesTimeoutSeconds;

  v56 = v0[101];
  if (!v53)
  {
    v83 = v0[75];

    goto LABEL_15;
  }

  if ((v56 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v57 = *(v56 + 32);
    while (1)
    {
      v0[104] = v57;
      v0[105] = 1;
      v58 = v0[91];
      v59 = v0[86];
      v60 = v0[85];
      v61 = v0[83];
      v62 = v0[82];
      v63 = v0[78];
      sub_21E57B9CC();
      sub_21E57B9DC();
      v65 = *(v61 + 8);
      v64 = v61 + 8;
      v66 = OUTLINED_FUNCTION_59();
      v67(v66);
      OUTLINED_FUNCTION_38();
      v68 = sub_21E57BBFC();
      OUTLINED_FUNCTION_38();
      sub_21E57BBFC();
      if (*(v63 + v54) >= v69 * 1.0e-18 + v68)
      {
        break;
      }

      v70 = v0[101];
      v71 = v0[95];
      v72 = v0[75];

      sub_21E57B5BC();
      v56 = sub_21E57B5DC();
      v44 = sub_21E57B85C();
      OUTLINED_FUNCTION_48(v44);
      OUTLINED_FUNCTION_89();
      if (v73)
      {
        v134 = v64;
        v74 = v0[79];
        OUTLINED_FUNCTION_57();
        v75 = OUTLINED_FUNCTION_43();
        v135 = v75;
        v76 = OUTLINED_FUNCTION_70(4.8151e-34);
        sub_21E5553D8(v76, v77, &v135);

        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_35();
        _os_log_impl(v78, v79, v80, v81, v82, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_20();

        (*(v71 + 8))(v134, v60);
      }

      else
      {

        (*(v71 + 8))(v64, v60);
      }

LABEL_15:
      v86 = sub_21E542EF0(v0[74]);
      v87 = sub_21E57B62C();
      v88 = *(v86 + 16);
      if (!v88)
      {
LABEL_33:

        OUTLINED_FUNCTION_73();

        v105 = sub_21E57B5DC();
        v106 = sub_21E57B84C();
        if (OUTLINED_FUNCTION_48(v106))
        {
          v107 = OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_72(v107, 3.852e-34);
          *(v107 + 4) = v44;

          OUTLINED_FUNCTION_44(&dword_21E527000, v108, v109, "SiriKitIntentSource: created %ld phrases from App.Intent biome stream");
          OUTLINED_FUNCTION_39();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v110 = OUTLINED_FUNCTION_18();
        v111(v110);

        OUTLINED_FUNCTION_3();
        v114 = sub_21E529ED8(v112, v113, sub_21E52FF88);
        OUTLINED_FUNCTION_71(v114);
        swift_initStaticObject();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_11(&unk_21E57C468);
        v115 = swift_task_alloc();
        v0[108] = v115;
        *v115 = v0;
        OUTLINED_FUNCTION_1(v115);
        OUTLINED_FUNCTION_65();

        __asm { BR              X5 }
      }

      v89 = v0[78];
      v44 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      v90 = v88 - 1;
      v91 = 32;
      v132 = v89;
      v129 = v88 - 1;
      v130 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      while (v88)
      {
        memcpy(v0 + 2, (v86 + v91), 0x60uLL);
        OUTLINED_FUNCTION_42();

        v92 = OUTLINED_FUNCTION_21();
        sub_21E542680(v92, v93, v94);

        OUTLINED_FUNCTION_15();
        if (!v95 || *(v87 + 16) && (, OUTLINED_FUNCTION_21(), sub_21E52F7C4(), v56 = v96, , (v56 & 1) != 0))
        {
          sub_21E534D48((v0 + 2));
        }

        else
        {
          OUTLINED_FUNCTION_74();
          swift_isUniquelyReferenced_nonNull_native();
          v135 = v87;
          OUTLINED_FUNCTION_21();
          v56 = v87;
          v97 = sub_21E52F7C4();
          OUTLINED_FUNCTION_33(v97, v98);
          if (v100)
          {
            goto LABEL_43;
          }

          v101 = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F0, &qword_21E57C460);
          v56 = &v135;
          if (sub_21E57BA1C())
          {
            v56 = v135;
            OUTLINED_FUNCTION_21();
            sub_21E52F7C4();
            OUTLINED_FUNCTION_52();
            if (!v102)
            {
              OUTLINED_FUNCTION_65();

              return sub_21E57BB6C();
            }
          }

          if (v101)
          {
            v87 = v135;
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_76();
            sub_21E534D48((v0 + 38));
            sub_21E534D48((v0 + 2));
          }

          else
          {
            v87 = v135;
            OUTLINED_FUNCTION_4();

            sub_21E534D48((v0 + 2));
            v103 = *(v87 + 16);
            v100 = __OFADD__(v103, 1);
            v104 = v103 + 1;
            if (v100)
            {
              goto LABEL_44;
            }

            *(v87 + 16) = v104;
          }

          v86 = v89;
          v89 = v132;
          v90 = v129;
          v44 = v130;
        }

        if (!v90)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_53();
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v57 = MEMORY[0x223D5CE50](0, v56);
      v54 = v0[103];
    }

    v84 = swift_task_alloc();
    v0[110] = v84;
    *v84 = v0;
    OUTLINED_FUNCTION_2(v84);
    OUTLINED_FUNCTION_65();

    return sub_21E529F78();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E533AF4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 864);
  v5 = *(v3 + 856);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v9 + 872) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E533BF4()
{
  v1 = v0[109];
  v2 = v0[106];
  v3 = v0[100];
  v15 = v0[99];
  v16 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v4 = v0[91];
  v19 = v0[94];
  v20 = v0[90];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[83];
  v9 = v0[82];
  v21 = v0[85];
  v22 = v0[81];
  v23 = v0[80];
  v10 = v0[78];
  sub_21E52E1B8();
  swift_setDeallocating();
  v11 = *(v3 + 24);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 62);

  v12 = v0[1];
  v13 = v0[109];

  return v12(v13);
}

uint64_t sub_21E533D7C(uint64_t a1)
{
  OUTLINED_FUNCTION_32();
  v5 = v4;
  v6 = *(v4 + 880);
  v7 = *v2;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v5 + 888) = v1;

  if (v1)
  {
    v9 = sub_21E53445C;
  }

  else
  {
    *(v5 + 896) = a1;
    v9 = sub_21E533E98;
  }

  return MEMORY[0x2822009F8](v9);
}

void sub_21E533E98()
{
  v72 = v0;
  v3 = v0 + 74;
  v4 = v0[104];
  sub_21E54A344(v0[112]);

  v5 = v0[105];
  v6 = v0[101];
  if (v5 == v0[102])
  {
    v7 = v0[75];

    while (1)
    {
      v3 = sub_21E542EF0(*v3);
      v37 = sub_21E57B62C();
      if (!v3[2])
      {
LABEL_32:

        OUTLINED_FUNCTION_73();

        v52 = sub_21E57B5DC();
        v53 = sub_21E57B84C();
        if (OUTLINED_FUNCTION_48(v53))
        {
          v54 = OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_72(v54, 3.852e-34);
          *(v54 + 4) = v1;

          OUTLINED_FUNCTION_44(&dword_21E527000, v55, v56, "SiriKitIntentSource: created %ld phrases from App.Intent biome stream");
          OUTLINED_FUNCTION_39();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v57 = OUTLINED_FUNCTION_18();
        v58(v57);

        OUTLINED_FUNCTION_3();
        v61 = sub_21E529ED8(v59, v60, sub_21E52FF88);
        OUTLINED_FUNCTION_71(v61);
        swift_initStaticObject();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_11(&unk_21E57C468);
        v62 = swift_task_alloc();
        v0[108] = v62;
        *v62 = v0;
        OUTLINED_FUNCTION_1(v62);
        OUTLINED_FUNCTION_22();

        __asm { BR              X5 }
      }

      v38 = v0[78];
      v1 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      OUTLINED_FUNCTION_86();
      while (v39)
      {
        OUTLINED_FUNCTION_101();
        OUTLINED_FUNCTION_42();

        v40 = OUTLINED_FUNCTION_21();
        sub_21E542680(v40, v41, v42);

        OUTLINED_FUNCTION_15();
        if (!v43 || *(v37 + 16) && (, OUTLINED_FUNCTION_21(), sub_21E52F7C4(), v5 = v44, , (v5 & 1) != 0))
        {
          sub_21E534D48((v0 + 2));
        }

        else
        {
          OUTLINED_FUNCTION_74();
          swift_isUniquelyReferenced_nonNull_native();
          v71 = v37;
          OUTLINED_FUNCTION_21();
          v5 = v37;
          v45 = sub_21E52F7C4();
          OUTLINED_FUNCTION_33(v45, v46);
          if (v48)
          {
            goto LABEL_42;
          }

          v3 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F0, &qword_21E57C460);
          if (OUTLINED_FUNCTION_99())
          {
            v5 = v71;
            OUTLINED_FUNCTION_21();
            sub_21E52F7C4();
            OUTLINED_FUNCTION_52();
            if (!v49)
            {
              OUTLINED_FUNCTION_22();

              sub_21E57BB6C();
              return;
            }
          }

          if (v3)
          {
            v37 = v71;
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_76();
            sub_21E534D48((v0 + 38));
            sub_21E534D48((v0 + 2));
          }

          else
          {
            v37 = v71;
            OUTLINED_FUNCTION_4();

            sub_21E534D48((v0 + 2));
            v50 = *(v37 + 16);
            v48 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v48)
            {
              goto LABEL_43;
            }

            *(v37 + 16) = v51;
          }

          v3 = v38;
          v1 = v68;
          v38 = v69;
          v2 = v67;
        }

        if (!v2)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_53();
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v66 = OUTLINED_FUNCTION_38();
      v8 = MEMORY[0x223D5CE50](v66);
LABEL_6:
      v0[104] = v8;
      v0[105] = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v70 = v8;
      v9 = v0[103];
      v10 = v0[91];
      v11 = v0[86];
      v12 = v0[85];
      v13 = v0[83];
      v14 = v0[82];
      v15 = v0[78];
      sub_21E57B9CC();
      sub_21E57B9DC();
      v16 = *(v13 + 8);
      v2 = (v13 + 8);
      v17 = OUTLINED_FUNCTION_83();
      v18(v17);
      v19 = sub_21E57BBFC();
      sub_21E57BBFC();
      v21 = v20 * 1.0e-18 + v19;
      if (*(v15 + v9) >= v21)
      {
        break;
      }

      v22 = v0[101];
      v23 = v0[95];
      v24 = v0[75];

      sub_21E57B5BC();
      v5 = sub_21E57B5DC();
      v25 = sub_21E57B85C();
      v26 = OUTLINED_FUNCTION_48(v25);
      v27 = v0[98];
      v28 = v0[95];
      v1 = v0[93];
      v29 = v0[92];
      if (v26)
      {
        v30 = v0[79];
        v69 = v0[92];
        v31 = OUTLINED_FUNCTION_57();
        v2 = OUTLINED_FUNCTION_43();
        v71 = v2;
        *v31 = 136315394;
        v32 = sub_21E57BC2C();
        v68 = v28;
        v34 = sub_21E5553D8(v32, v33, &v71);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2048;
        *(v31 + 14) = v21;
        _os_log_impl(&dword_21E527000, v5, v25, "%s: %f seconds have passed since processing SiriKitIntentTranscript events, which is passed our threshold. Not continuing to process more events", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v2);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        (*(v1 + 8))(v68, v69);
      }

      else
      {

        (*(v1 + 8))(v28, v29);
      }
    }

    v35 = swift_task_alloc();
    v0[110] = v35;
    *v35 = v0;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_22();

    sub_21E529F78();
  }

  else
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_44;
    }

    if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 8 * v5 + 32);
      goto LABEL_6;
    }

LABEL_46:
    __break(1u);
  }
}

id sub_21E53445C()
{
  v94 = v0;
  v1 = v0[111];
  v2 = v0[94];
  sub_21E57B5BC();
  v3 = v1;
  v4 = sub_21E57B5DC();
  v5 = sub_21E57B86C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[111];
  v8 = v0[104];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[92];
  if (v6)
  {
    v91 = v0[93];
    v12 = v0[79];
    v90 = v0[98];
    v13 = OUTLINED_FUNCTION_57();
    v89 = v11;
    v14 = swift_slowAlloc();
    v88 = v9;
    v15 = OUTLINED_FUNCTION_43();
    v93 = v15;
    *v13 = 136315394;
    v16 = OUTLINED_FUNCTION_105();
    v10 = v17;
    v18 = sub_21E5553D8(v16, v17, &v93);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    sub_21E5350C0(v14, &qword_27CEC88E8, &qword_21E57C660);
    OUTLINED_FUNCTION_31();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_20();

    result = (*(v91 + 8))(v88, v89);
  }

  else
  {

    result = (*(v10 + 8))(v9, v11);
  }

  v27 = v0[105];
  v28 = v0[101];
  if (v27 == v0[102])
  {
    v29 = v0[75];

    while (1)
    {
      v30 = sub_21E542EF0(v0[74]);
      v31 = sub_21E57B62C();
      if (!*(v30 + 16))
      {
LABEL_31:

        OUTLINED_FUNCTION_73();

        v71 = sub_21E57B5DC();
        v72 = sub_21E57B84C();
        if (OUTLINED_FUNCTION_48(v72))
        {
          v73 = OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_72(v73, 3.852e-34);
          *(v73 + 4) = v5;

          OUTLINED_FUNCTION_44(&dword_21E527000, v74, v75, "SiriKitIntentSource: created %ld phrases from App.Intent biome stream");
          OUTLINED_FUNCTION_39();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v76 = OUTLINED_FUNCTION_18();
        v77(v76);

        OUTLINED_FUNCTION_3();
        v80 = sub_21E529ED8(v78, v79, sub_21E52FF88);
        OUTLINED_FUNCTION_71(v80);
        swift_initStaticObject();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_11(&unk_21E57C468);
        v81 = swift_task_alloc();
        v0[108] = v81;
        *v81 = v0;
        OUTLINED_FUNCTION_1(v81);
        OUTLINED_FUNCTION_22();

        __asm { BR              X5 }
      }

      v32 = v0[78];
      v5 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram;
      OUTLINED_FUNCTION_86();
      while (v33)
      {
        OUTLINED_FUNCTION_101();
        OUTLINED_FUNCTION_42();

        v34 = OUTLINED_FUNCTION_21();
        sub_21E542680(v34, v35, v36);

        OUTLINED_FUNCTION_15();
        if (!v37 || *(v31 + 16) && (, OUTLINED_FUNCTION_21(), sub_21E52F7C4(), v27 = v38, , (v27 & 1) != 0))
        {
          sub_21E534D48((v0 + 2));
        }

        else
        {
          OUTLINED_FUNCTION_74();
          swift_isUniquelyReferenced_nonNull_native();
          v93 = v31;
          OUTLINED_FUNCTION_21();
          v27 = v31;
          v39 = sub_21E52F7C4();
          OUTLINED_FUNCTION_33(v39, v40);
          if (v42)
          {
            goto LABEL_45;
          }

          v43 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F0, &qword_21E57C460);
          if (OUTLINED_FUNCTION_99())
          {
            v27 = v93;
            OUTLINED_FUNCTION_21();
            sub_21E52F7C4();
            OUTLINED_FUNCTION_52();
            if (!v44)
            {
              OUTLINED_FUNCTION_22();

              return sub_21E57BB6C();
            }
          }

          if (v43)
          {
            v31 = v93;
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_76();
            sub_21E534D48((v0 + 38));
            sub_21E534D48((v0 + 2));
          }

          else
          {
            v31 = v93;
            OUTLINED_FUNCTION_4();

            sub_21E534D48((v0 + 2));
            v45 = *(v31 + 16);
            v42 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v42)
            {
              goto LABEL_46;
            }

            *(v31 + 16) = v46;
          }

          v5 = v89;
          v10 = v88;
        }

        if (!v10)
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_53();
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v87 = OUTLINED_FUNCTION_90();
      result = MEMORY[0x223D5CE50](v87);
LABEL_27:
      v47 = result;
      v0[104] = result;
      v0[105] = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v48 = v0[103];
      v49 = v0[91];
      v50 = v0[86];
      v51 = v0[85];
      v52 = v0[83];
      v53 = v0[82];
      v10 = v0[78];
      sub_21E57B9CC();
      sub_21E57B9DC();
      v55 = v54;
      (*(v52 + 8))(v51, v53);
      v56 = sub_21E57BBFC();
      sub_21E57BBFC();
      if (*(v10 + v48) >= v57 * 1.0e-18 + v56)
      {
        break;
      }

      v58 = v0[101];
      v59 = v0[95];
      v60 = v0[75];

      sub_21E57B5BC();
      v27 = sub_21E57B5DC();
      v5 = sub_21E57B85C();
      OUTLINED_FUNCTION_48(v5);
      OUTLINED_FUNCTION_89();
      if (v61)
      {
        v92 = v48;
        v62 = v0[79];
        OUTLINED_FUNCTION_57();
        v63 = OUTLINED_FUNCTION_43();
        v93 = v63;
        v64 = OUTLINED_FUNCTION_70(4.8151e-34);
        v10 = sub_21E5553D8(v64, v65, &v93);

        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_35();
        _os_log_impl(v66, v67, v68, v69, v70, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_20();

        (*(v59 + 8))(v92, v55);
      }

      else
      {

        (*(v59 + 8))(v48, v55);
      }
    }

    v84 = swift_task_alloc();
    v0[110] = v84;
    *v84 = v0;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_22();

    return sub_21E529F78();
  }

  else
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    if (v27 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      result = *(v28 + 8 * v27 + 32);
      goto LABEL_27;
    }

LABEL_49:
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_21E534BEC(void *a1)
{
  v3 = sub_21E57B9EC();
  OUTLINED_FUNCTION_6(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_21E57BA0C();
  OUTLINED_FUNCTION_6(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 16);
  v16 = *(v1 + v14);
  v17 = *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_21E529AE0(a1, v15, v1 + v5, v1 + v13, v16, v17);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_21E534DE8()
{
  result = qword_281225550;
  if (!qword_281225550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225550);
  }

  return result;
}

uint64_t sub_21E534E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8920, &qword_21E57C4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E534EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E534F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_3(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_21E535048(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21E53505C(a1, a2);
  }

  return a1;
}

uint64_t sub_21E53505C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21E5350B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21E5350C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_82(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_21E535114(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21E535154(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21E535198(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{
  *(a1 + 8) = sub_21E533AF4;
  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result)
{
  *(result + 8) = sub_21E533D7C;
  v2 = v1[100];
  v3 = v1[78];
  v4 = v1[77];
  v5 = v1[76];
  return result;
}

void *OUTLINED_FUNCTION_4()
{
  *(v0 + 8 * (v4 >> 6) + 64) |= 1 << v4;
  v6 = (*(v0 + 48) + 16 * v4);
  *v6 = v3;
  v6[1] = v2;
  v7 = (*(v0 + 56) + 96 * v4);

  return memcpy(v7, (v1 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_11@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = v7;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v2;
  *(a1 + 64) = v6;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{
  *(a1 + 8) = sub_21E53160C;
  v2 = v1[37];
  v3 = v1[38];
  v4 = v1[35];
  v5 = v1[36];
  v6 = v1[31];
  v7 = v1[32];
  return v1[34];
}

uint64_t OUTLINED_FUNCTION_18()
{
  v1 = v0[98];
  result = v0[96];
  v3 = v0[92];
  v4 = *(v0[93] + 8);
  return result;
}

void OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 + 16) = v20;
  v27 = (v19 + 96 * v25);
  v27[4] = a14;
  v27[5] = v24;
  v27[6] = a15;
  v27[7] = v23;
  v27[8] = a16;
  v27[9] = v22;
  v27[10] = a18;
  v27[11] = a17;
  v27[12] = a13;
  v27[13] = v26;
  v27[14] = v18;
  v27[15] = v21;
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_23()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
}

void *OUTLINED_FUNCTION_24()
{
  v4 = (*(v0 + 56) + 96 * v2);

  return memcpy((v1 + 304), v4, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_25()
{
  *(v0 + 600) = *(v0 + 192);
  v1 = *(v0 + 184);
  *(v0 + 616) = *(v0 + 176);
  *(v0 + 624) = v1;
  *(v0 + 632) = *(v0 + 160);
  v2 = *(v0 + 152);
  *(v0 + 648) = *(v0 + 144);
  *(v0 + 656) = v2;
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
  v5 = *v3;
  v6 = *v4;

  return sub_21E534CEC(v0 + 144, v0 + 240);
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x223D5D740);
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x223D5D740);
}

void OUTLINED_FUNCTION_39()
{

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_41()
{
  v2 = v0[55];
  v3 = v0[19];
  v4 = v0[17];
  v8 = v0[16];
  v9 = v0[18];
  v5 = v0[15];
  v7 = v0[14];

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_42()
{
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v1 + v2);

  return sub_21E534CEC(v0 + 16, v0 + 112);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_48(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_51()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
}

uint64_t OUTLINED_FUNCTION_57()
{

  return swift_slowAlloc();
}

uint64_t *OUTLINED_FUNCTION_63()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 496), *(v0 + 520));
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_66()
{
  v2 = *(v0 + 40);

  return sub_21E57BB8C();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_21E57BB3C();
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, unint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 4) = v3;
  *(v2 + 12) = 2080;

  return sub_21E5553D8(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_70(float a1)
{
  *v1 = a1;

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{
  *(v1 + 856) = a1;

  return type metadata accessor for DefaultAppFinderForIntentProvider();
}

uint64_t OUTLINED_FUNCTION_72(float *a1, float a2)
{
  *a1 = a2;
  v4 = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_73()
{
  *(v1 + 848) = v0;
  v3 = *(v1 + 768);

  return sub_21E57B5BC();
}

uint64_t OUTLINED_FUNCTION_74()
{

  return sub_21E534CEC(v0 + 16, v0 + 208);
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_21E57B6AC();
}

void *OUTLINED_FUNCTION_76()
{

  return memcpy(v0, (v1 + 16), 0x60uLL);
}

BOOL OUTLINED_FUNCTION_77()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_84()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
}

void OUTLINED_FUNCTION_89()
{
  v1 = v0[98];
  v2 = v0[95];
  v3 = v0[93];
  v4 = v0[92];
}

uint64_t OUTLINED_FUNCTION_94@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 376) = *(v1 + (v2 | (8 * a1)));
}

uint64_t OUTLINED_FUNCTION_96()
{
  v2 = *(v0 + 104);

  return sub_21E57B00C();
}

void *OUTLINED_FUNCTION_97@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 112), (v2 + a1), 0x60uLL);
}

char *OUTLINED_FUNCTION_98()
{

  return sub_21E562880(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_21E57BA1C();
}

void *OUTLINED_FUNCTION_101()
{

  return memcpy((v2 + 16), (v1 + v0), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_102()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return sub_21E57BB3C();
}

uint64_t OUTLINED_FUNCTION_103()
{
}

uint64_t OUTLINED_FUNCTION_104()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_106()
{

  return sub_21E57B62C();
}

uint64_t OUTLINED_FUNCTION_107()
{

  return swift_allocObject();
}

unint64_t sub_21E535D08(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t *sub_21E535D98()
{
  type metadata accessor for DenyListManager();
  swift_allocObject();
  result = sub_21E535DD4();
  qword_281226A58 = result;
  return result;
}

uint64_t *sub_21E535DD4()
{
  v1 = *v0;
  v2 = sub_21E535EE0();
  v3 = sub_21E53626C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2;
  sub_21E537EA0(v3, sub_21E538C64, 0, isUniquelyReferenced_nonNull_native, &v10);
  v11 = v10;
  v5 = sub_21E57AE2C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_21E57AE1C();
  sub_21E5387E0(&v11, v8);

  v0[2] = v11;
  return v0;
}

uint64_t sub_21E535EE0()
{
  v0 = sub_21E57ABEC();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E57B5EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  sub_21E57B5BC();
  v12 = sub_21E57B5DC();
  v13 = sub_21E57B85C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v4;
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21E527000, v12, v13, "DenyListManager: loading deny list from project resources.", v15, 2u);
    v16 = v15;
    v4 = v14;
    MEMORY[0x223D5D740](v16, -1, -1);
  }

  v17 = *(v5 + 8);
  v17(v11, v4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_21E57B66C();
  v21 = v4;
  v22 = sub_21E57B66C();
  v23 = [v19 URLForResource:v20 withExtension:v22];

  if (v23)
  {
    sub_21E57ABDC();

    v24 = sub_21E536B8C();
    (*(v29 + 8))(v3, v30);
  }

  else
  {
    sub_21E57B5BC();
    v25 = sub_21E57B5DC();
    v26 = sub_21E57B86C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E527000, v25, v26, "DenyListManager: unable to get path to the deny list file", v27, 2u);
      MEMORY[0x223D5D740](v27, -1, -1);
    }

    v17(v9, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    return sub_21E57B62C();
  }

  return v24;
}

uint64_t sub_21E53626C()
{
  v0 = sub_21E57ABEC();
  v46 = *(v0 - 8);
  v1 = *(v46 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - v4;
  v49 = sub_21E57ADEC();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E57B5EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v47 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = [objc_opt_self() clientWithIdentifier_];
  sub_21E57B5BC();
  v19 = sub_21E57B5DC();
  v20 = sub_21E57B85C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0;
    v22 = v10;
    v23 = v9;
    v24 = v18;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_21E527000, v19, v20, "DenyListManager: looking for deny list on Trial.", v25, 2u);
    v26 = v25;
    v18 = v24;
    v9 = v23;
    v10 = v22;
    v0 = v21;
    MEMORY[0x223D5D740](v26, -1, -1);
  }

  v48 = *(v10 + 8);
  v48(v17, v9);
  sub_21E57AD9C();
  v27 = sub_21E57B66C();

  v28 = v49;
  (*(v5 + 104))(v8, *MEMORY[0x277D60418], v49);
  sub_21E57ADDC();
  (*(v5 + 8))(v8, v28);
  v29 = sub_21E57B66C();

  v30 = [v18 levelForFactor:v27 withNamespaceName:v29];

  v31 = sub_21E57AD8C();
  if (v32)
  {
    v50 = v31;
    v51 = v32;

    MEMORY[0x223D5CBD0](47, 0xE100000000000000);

    v33 = v44;
    sub_21E57ABBC();

    v34 = v45;
    sub_21E57ABCC();
    v35 = *(v46 + 8);
    v35(v33, v0);
    v36 = sub_21E536B8C();

    v35(v34, v0);
  }

  else
  {
    v38 = v43;
    sub_21E57B5BC();
    v39 = sub_21E57B5DC();
    v40 = sub_21E57B85C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21E527000, v39, v40, "DenyListManager: No deny list on Trial.", v41, 2u);
      MEMORY[0x223D5D740](v41, -1, -1);
    }

    v48(v38, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    v36 = sub_21E57B62C();
  }

  return v36;
}

uint64_t (*sub_21E536938(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_21E53815C(v6, a2, a3);
  return sub_21E539008;
}

uint64_t (*sub_21E5369AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v10;
  v10[4] = sub_21E5381F4(v10, a2, a3, a4, a5);
  return sub_21E536A38;
}

void sub_21E536A3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_21E536A88(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_21E576044(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21E536B8C()
{
  v0 = sub_21E57B5EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v53 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
  v64 = sub_21E57B62C();
  v9 = sub_21E57AB9C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_21E57AB8C();
  v13 = sub_21E57ABFC();
  v63 = v0;
  v60 = v6;
  v14 = v13;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89B8, &qword_21E57C578);
  sub_21E538DD4();
  sub_21E57AB7C();
  v54 = v14;
  v55 = v16;
  v56 = v12;
  v57 = v1;
  v58 = 0;
  v33 = 0;
  v34 = v65[0];
  v61 = 0x800000021E57F2E0;
  v62 = 0x800000021E57F2C0;
  v35 = (v1 + 8);
  *&v36 = 136315138;
  v59 = v36;
  do
  {
    v37 = byte_282F921A8[v33++ + 32];
    if (*(v34 + 16))
    {
      v38 = sub_21E52F7C4();
      v40 = v39;

      if (v40)
      {
        v41 = *(*(v34 + 56) + 8 * v38);
        switch(v37)
        {
          case 0:
          case 1:
          case 2:
          case 3:

            sub_21E54335C(v50);
            v51 = v64;
            swift_isUniquelyReferenced_nonNull_native();
            v65[0] = v51;
            sub_21E545AB0();

            v64 = v65[0];
            continue;
          default:
            goto LABEL_33;
        }
      }
    }

    else
    {
    }

    sub_21E57B5BC();
    v42 = sub_21E57B5DC();
    v43 = sub_21E57B86C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65[0] = v45;
      *v44 = v59;
      v46 = 0xE800000000000000;
      v47 = v45;
      v48 = 0x6449656C646E7562;
      switch(v37)
      {
        case 0:
          v48 = 0xD000000000000010;
          v46 = v61;
          goto LABEL_27;
        case 1:
          goto LABEL_27;
        case 2:
          v46 = 0xE600000000000000;
          v48 = 0x657361726870;
          goto LABEL_27;
        case 3:
          v48 = 0xD00000000000001BLL;
          v46 = v62;
LABEL_27:
          v49 = sub_21E5553D8(v48, v46, v65);

          *(v44 + 4) = v49;
          _os_log_impl(&dword_21E527000, v42, v43, "DenyListManager: Unable to find attribute in the deny list: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          MEMORY[0x223D5D740](v47, -1, -1);
          MEMORY[0x223D5D740](v44, -1, -1);

          v0 = v63;
          (*v35)(v8, v63);
          continue;
        default:
          goto LABEL_33;
      }
    }

    (*v35)(v8, v0);
  }

  while (v33 != 4);
  sub_21E53505C(v54, v55);

  v52 = v57;
  v17 = 0;
  v18 = 0;
  v19 = v64;
  v20 = 1 << *(v64 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v64 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = v60;
  while (v22)
  {
    v25 = v17;
LABEL_11:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = *(*(*(v64 + 56) + ((v25 << 9) | (8 * v26))) + 16);
    v28 = __OFADD__(v18, v27);
    v18 += v27;
    if (v28)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_33:
      JUMPOUT(0);
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v64 + 64 + 8 * v25);
    ++v17;
    if (v22)
    {
      v17 = v25;
      goto LABEL_11;
    }
  }

LABEL_14:
  sub_21E57B5BC();
  v29 = sub_21E57B5DC();
  v30 = sub_21E57B85C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v18;
    _os_log_impl(&dword_21E527000, v29, v30, "DenyListManager: loaded %ld records", v31, 0xCu);
    MEMORY[0x223D5D740](v31, -1, -1);
  }

  (*(v52 + 8))(v24, v0);
  return v19;
}

uint64_t sub_21E537304(uint64_t a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v51[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v51[-v14];
  v16 = sub_21E57B40C();
  v18 = sub_21E53778C(v16, v17, 0);

  if (v18)
  {
    sub_21E57B5BC();

    v19 = sub_21E57B5DC();
    v20 = sub_21E57B85C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_50();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_3_0(v22);
      *v21 = 136315138;
      v23 = sub_21E57B40C();
      OUTLINED_FUNCTION_4_0(v23, v24);
      OUTLINED_FUNCTION_6_0();
      *(v21 + 4) = a1;
      _os_log_impl(&dword_21E527000, v19, v20, "Phrase is not being added to the index since the actionIdentifier is in the deny list: %s", v21, 0xCu);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_39();
    }

    (*(v3 + 8))(v15, v2);
  }

  else
  {
    v25 = sub_21E57B47C();
    v27 = v26;
    v28 = sub_21E53778C(v25, v26, 1);

    if (v28)
    {
      sub_21E57B5BC();

      v29 = sub_21E57B5DC();
      v30 = sub_21E57B85C();

      if (os_log_type_enabled(v29, v30))
      {
        OUTLINED_FUNCTION_50();
        v31 = OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_3_0(v31);
        *v27 = 136315138;
        v32 = sub_21E57B47C();
        OUTLINED_FUNCTION_4_0(v32, v33);
        OUTLINED_FUNCTION_6_0();
        *(v27 + 4) = a1;
        _os_log_impl(&dword_21E527000, v29, v30, "Phrase is not being added to the index since the bundleId is in the deny list: %s", v27, 0xCu);
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_39();
      }

      (*(v3 + 8))(v13, v2);
    }

    else
    {
      v34 = sub_21E57B45C();
      v36 = sub_21E53778C(v34, v35, 2);

      if (v36)
      {
        sub_21E57B5BC();

        v37 = sub_21E57B5DC();
        v38 = sub_21E57B85C();

        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_50();
          v39 = OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_3_0(v39);
          *v27 = 136315138;
          v40 = sub_21E57B45C();
          OUTLINED_FUNCTION_4_0(v40, v41);
          OUTLINED_FUNCTION_6_0();
          *(v27 + 4) = a1;
          _os_log_impl(&dword_21E527000, v37, v38, "Phrase is not being added to the index since the phrase is in the deny list: %s", v27, 0xCu);
          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_39();
        }

        (*(v3 + 8))(v10, v2);
      }

      else
      {
        v42 = sub_21E537AAC();
        v44 = sub_21E53778C(v42, v43, 3);

        if (!v44)
        {
          return 0;
        }

        sub_21E57B5BC();

        v45 = sub_21E57B5DC();
        v46 = sub_21E57B85C();

        if (os_log_type_enabled(v45, v46))
        {
          OUTLINED_FUNCTION_50();
          v47 = OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_3_0(v47);
          *v27 = 136315138;
          v48 = sub_21E537AAC();
          OUTLINED_FUNCTION_4_0(v48, v49);
          OUTLINED_FUNCTION_6_0();
          *(v27 + 4) = a1;
          _os_log_impl(&dword_21E527000, v45, v46, "Phrase is not being added to the index since the bundleId and ActionIdentifier pair is in the deny list: %s)", v27, 0xCu);
          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_39();
        }

        (*(v3 + 8))(v7, v2);
      }
    }
  }

  return 1;
}

BOOL sub_21E53778C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = 0x6449656C646E7562;
  v8 = sub_21E57B5EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0xE800000000000000;
  v14 = 0x6449656C646E7562;
  switch(a3)
  {
    case 1:
      break;
    case 2:
      v13 = 0xE600000000000000;
      v14 = 0x657361726870;
      break;
    case 3:
      v13 = 0x800000021E57F2C0;
      v14 = 0xD00000000000001BLL;
      break;
    default:
      v14 = 0xD000000000000010;
      v13 = 0x800000021E57F2E0;
      break;
  }

  v15 = sub_21E5351EC(v14, v13, *(v3 + 16));

  if (v15)
  {
    v16 = sub_21E543EB0(a1, a2, v15);

    return v16;
  }

  else
  {
    sub_21E57B5BC();
    v18 = sub_21E57B5DC();
    v19 = sub_21E57B86C();
    if (os_log_type_enabled(v18, v19))
    {
      v25 = v9;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = 0xE800000000000000;
      v23 = v21;
      switch(a3)
      {
        case 0:
          v7 = 0xD000000000000010;
          v22 = 0x800000021E57F2E0;
          break;
        case 1:
          break;
        case 2:
          v22 = 0xE600000000000000;
          v7 = 0x657361726870;
          break;
        case 3:
          v22 = 0x800000021E57F2C0;
          v7 = 0xD00000000000001BLL;
          break;
        default:
          JUMPOUT(0);
      }

      v24 = sub_21E5553D8(v7, v22, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_21E527000, v18, v19, "DenyListManager: Unable to find attribute in the deny list: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223D5D740](v23, -1, -1);
      MEMORY[0x223D5D740](v20, -1, -1);

      (*(v25 + 8))(v12, v8);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return 0;
  }
}

uint64_t sub_21E537AAC()
{
  v4 = sub_21E57B47C();

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);

  v0 = sub_21E57B40C();
  v2 = v1;

  MEMORY[0x223D5CBD0](v0, v2);

  return v4;
}

uint64_t sub_21E537B54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21E537BB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89B0, &qword_21E57C570);
  v38 = a2;
  result = sub_21E57BA5C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_21E575FE0(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_21E57BB8C();
    sub_21E57B6AC();
    result = sub_21E57BBCC();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_21E537E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_21E537EA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  sub_21E538D98(a1, a2, a3, v46);
  v6 = v46[1];
  v7 = v46[3];
  v8 = v46[4];
  v42 = v46[5];
  v43 = v46[0];
  v9 = (v46[2] + 64) >> 6;

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v43 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v43 + 56) + 8 * v12);
      v45[0] = *v13;
      v45[1] = v14;
      v45[2] = v15;

      v42(v44, v45);

      v16 = v44[0];
      v17 = v44[1];
      v18 = v44[2];
      v19 = *v47;
      v21 = sub_21E52F7C4();
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A8, &unk_21E57C560);
          sub_21E57BA2C();
        }
      }

      else
      {
        v26 = v47;
        sub_21E537BB0(v24, a4 & 1);
        v27 = *v26;
        v28 = sub_21E52F7C4();
        if ((v25 & 1) != (v29 & 1))
        {
          goto LABEL_23;
        }

        v21 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v47;
      if (v25)
      {
        v31 = *(v30[7] + 8 * v21);

        v32 = sub_21E52E418(v18, v31);

        v33 = v30[7];
        v34 = *(v33 + 8 * v21);
        *(v33 + 8 * v21) = v32;
      }

      else
      {
        v30[(v21 >> 6) + 8] |= 1 << v21;
        v35 = (v30[6] + 16 * v21);
        *v35 = v16;
        v35[1] = v17;
        *(v30[7] + 8 * v21) = v18;
        v36 = v30[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_22;
        }

        v30[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_21E534EAC();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_21E57BB6C();
  __break(1u);
  return result;
}

uint64_t (*sub_21E53815C(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_21E538784(v7);
  v7[9] = sub_21E538308(v7 + 4, a2, a3);
  return sub_21E53900C;
}

uint64_t (*sub_21E5381F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v11 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v11;
  v12 = *v5;
  swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_21E5387AC(v11);
  v11[9] = sub_21E538524(v11 + 4, a2, a3, a4, a5);
  return sub_21E5382A4;
}

void sub_21E5382A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_21E538308(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_21E52F7C4();
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A8, &unk_21E57C560);
  if (sub_21E57BA1C())
  {
    v14 = *v4;
    v15 = sub_21E52F7C4();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_21E538448;
}

void sub_21E538448(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_21E5461B8(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_21E538D44(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    sub_21E57BA3C();
  }

  v6 = *v1;

  free(v1);
}

void (*sub_21E538524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1)
{
  v6 = v5;
  v12 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v12;
  v12[5] = a5;
  v12[6] = v6;
  v12[3] = a3;
  v12[4] = a4;
  v12[2] = a2;
  v13 = *v6;
  v14 = sub_21E52F880(a2, a3, a4, a5);
  *(v12 + 64) = v15 & 1;
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89C0, &qword_21E57D420);
  if (sub_21E57BA1C())
  {
    v18 = *v6;
    v19 = sub_21E52F880(a2, a3, a4, a5);
    if ((v17 & 1) == (v20 & 1))
    {
      v16 = v19;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

LABEL_5:
  v12[7] = v16;
  v21 = 0uLL;
  if (v17)
  {
    v21 = *(*(*v6 + 56) + 16 * v16);
  }

  *v12 = v21;
  return sub_21E53868C;
}

void sub_21E53868C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = **a1;
  v4 = *(*a1 + 64);
  v5 = (*a1)[1];
  if (v3)
  {
    v6 = v1[7];
    v7 = *v1[6];
    if (v4)
    {
      *(v7[7] + 16 * v6) = v2;
    }

    else
    {
      sub_21E546224(v6, v1[2], v1[3], v1[4], v1[5], v3, v5, v7);
    }
  }

  else if ((*a1)[8])
  {
    sub_21E538F5C(*(*v1[6] + 48) + 32 * v1[7]);
    sub_21E538FB0();
    sub_21E57BA3C();
  }

  v8 = *v1;
  v9 = v1[1];
  sub_21E538EDC(v3);
  sub_21E538F1C(v8);

  free(v1);
}

uint64_t (*sub_21E538784(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21E539004;
}

uint64_t (*sub_21E5387AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21E5387D4;
}

uint64_t sub_21E5387E0(uint64_t a1, uint64_t *a2)
{
  v32[1] = a1;
  v3 = *a2;
  v4 = sub_21E57B5EC();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A0, &qword_21E57C558);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v32 - v11;
  v13 = sub_21E57AE5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[5] = a2;

  sub_21E57ADFC();

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  (*(v14 + 32))(v17, v12, v13);
  v18 = *(sub_21E57AE3C() + 16);

  v19 = *(sub_21E57AE4C() + 16);

  v21 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    v22 = v14;
    sub_21E57B5BC();
    v23 = sub_21E57B5DC();
    v24 = sub_21E57B85C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v21;
      _os_log_impl(&dword_21E527000, v23, v24, "DenyListManager: loaded %ld records from suggestions deny list.", v25, 0xCu);
      MEMORY[0x223D5D740](v25, -1, -1);
    }

    (*(v33 + 8))(v8, v34);
    v26 = sub_21E536938(v35, 0xD000000000000010, 0x800000021E57F2E0);
    if (*v27)
    {
      v28 = sub_21E57AE3C();
      sub_21E536A88(v28);
    }

    (v26)(v35, 0);
    v29 = sub_21E536938(v35, 0xD000000000000010, 0x800000021E57F2E0);
    if (*v30)
    {
      v31 = sub_21E57AE4C();
      sub_21E536A88(v31);
    }

    (v29)(v35, 0);
    return (*(v22 + 8))(v17, v13);
  }

  return result;
}

uint64_t sub_21E538C64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E537E54(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_21E538CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A0, &qword_21E57C558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_21E538D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_21E538DD4()
{
  result = qword_2812264E0;
  if (!qword_2812264E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC89B8, &qword_21E57C578);
    sub_21E538E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812264E0);
  }

  return result;
}

unint64_t sub_21E538E60()
{
  result = qword_2812264D8;
  if (!qword_2812264D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8958, &unk_21E57C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812264D8);
  }

  return result;
}

uint64_t sub_21E538EDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21E538F1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_21E538FB0()
{
  result = qword_2812261B8;
  if (!qword_2812261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261B8);
  }

  return result;
}

void OUTLINED_FUNCTION_0_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, unint64_t a2)
{

  return sub_21E5553D8(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_6_0()
{
}

uint64_t sub_21E53909C()
{
  v1 = *v0;
  v2 = sub_21E57B5EC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = sub_21E57ABEC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v35 - v20;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_21E546314(0xD00000000000001BLL, 0x800000021E57F340, 0x7473696C70, 0xE500000000000000, v23);

  if (v24)
  {
    sub_21E57ABDC();

    (*(v14 + 32))(v21, v19, v11);
    v25 = sub_21E57AB9C();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_21E57AB8C();
    v28 = sub_21E57ABFC();
    v30 = v29;
    sub_21E53C0E8();
    sub_21E57AB7C();
    (*(v14 + 8))(v21, v11);
    sub_21E53505C(v28, v30);

    return v35[2];
  }

  else
  {
    sub_21E57B5BC();
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21E527000, v31, v32, "BaseSetAppIntentSuggestionSource: unable to get URL to filePath. Returning 0 phrases", v33, 2u);
      OUTLINED_FUNCTION_39();
    }

    (*(v5 + 8))(v10, v2);
    return 0;
  }
}

unint64_t sub_21E539508(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89F8, &qword_21E57C658);
    v4 = sub_21E57BA6C();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_1_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_3_1(v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
    swift_dynamicCast();
    sub_21E53C0D0(v24, v26);
    sub_21E53C0D0(v26, v27);
    sub_21E53C0D0(v27, &v25);
    result = sub_21E52F7C4();
    v14 = result;
    if (v15)
    {
      OUTLINED_FUNCTION_8_0();
      v17 = v16[1];
      *v16 = v2;
      v16[1] = v1;

      v1 = (v4[7] + 48 * v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v1);
      result = sub_21E53C0D0(&v25, v1);
      v11 = v12;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_1();
      *(v4 + v18 + 64) |= v19;
      OUTLINED_FUNCTION_8_0();
      *v20 = v2;
      v20[1] = v1;
      result = sub_21E53C0D0(&v25, (v4[7] + 48 * v14));
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_18;
      }

      v4[2] = v23;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v4;
    }

    v7 = *(v3 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_21E539720(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89F0, &qword_21E57C648);
    v4 = sub_21E57BA6C();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_1_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_3_1(v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v27 = v28;
    v28 = v29;
    v29 = v30;
    *&v30 = v31;
    v13 = sub_21E52F7C4();
    if (v14)
    {
      OUTLINED_FUNCTION_8_0();
      v16 = v15[1];
      *v15 = v2;
      v15[1] = v1;

      sub_21E53C060(&v27, v4[7] + 56 * v13);
      v10 = v11;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_1();
      *(v4 + v17 + 64) |= v18;
      OUTLINED_FUNCTION_8_0();
      *v19 = v2;
      v19[1] = v1;
      v20 = v4[7] + 56 * v13;
      v21 = v27;
      v22 = v28;
      v23 = v29;
      *(v20 + 48) = v30;
      *(v20 + 16) = v22;
      *(v20 + 32) = v23;
      *v20 = v21;
      v24 = v4[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v4[2] = v26;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_21E53994C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_histogram);

  sub_21E5427F8(a1);
}

uint64_t sub_21E53999C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_source;
  v2 = sub_21E57B3DC();
  OUTLINED_FUNCTION_82(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_histogram);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E539A10()
{
  sub_21E53999C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for BaseSetAppIntentPhrasesSource()
{
  result = qword_27CEC89D0;
  if (!qword_27CEC89D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E539ABC()
{
  result = sub_21E57B3DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E539B64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000021E57F360 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E57BB3C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E539C14()
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](0);
  return sub_21E57BBCC();
}

uint64_t sub_21E539C80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E539CFC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E539DD0;

  return (sub_21E53B354)(v8, a2, a3, v7);
}

uint64_t sub_21E539DD0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v5 = v4;

  OUTLINED_FUNCTION_9_0();

  return v6(a1);
}

uint64_t sub_21E539ED0()
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](0);
  return sub_21E57BBCC();
}

uint64_t sub_21E539F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E539B64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E539F5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E539BE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E539F88(uint64_t a1)
{
  v2 = sub_21E53C14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E539FC4(uint64_t a1)
{
  v2 = sub_21E53C14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E53A000(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A30, &qword_21E57C708);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C14C();
  sub_21E57BBEC();
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A18, &qword_21E57C700);
  sub_21E53C1F4(&qword_27CEC8A38, sub_21E53C26C);
  sub_21E57BAFC();
  return (*(v6 + 8))(v11, v4);
}

void *sub_21E53A17C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A08, &qword_21E57C6F8);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C14C();
  sub_21E57BBDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A18, &qword_21E57C700);
    sub_21E53C1F4(&qword_27CEC8A20, sub_21E53C1A0);
    sub_21E57BABC();
    (*(v5 + 8))(v10, v3);
    v12 = v14[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v12;
}

uint64_t sub_21E53A320(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000021E57F380 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E57BB3C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21E53A484(unsigned __int8 a1)
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](a1);
  return sub_21E57BBCC();
}

uint64_t sub_21E53A4CC(char a1)
{
  if (!a1)
  {
    return 0x614E746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0xD000000000000010;
}

uint64_t sub_21E53A534(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A78, &qword_21E57C8D0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C584();
  sub_21E57BBEC();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  sub_21E57BAEC();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    sub_21E57BAEC();
    v20 = v3[4];
    v19[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E53C5D8(&qword_27CEC8A80);
    sub_21E57BADC();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_21E53A700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A60, &unk_21E57C8C0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E53C584();
  sub_21E57BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = sub_21E57BAAC();
  v12 = v11;
  v19 = v10;
  v17 = sub_21E57BAAC();
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
  sub_21E53C5D8(qword_2812260F8);
  sub_21E57BA9C();
  v14 = OUTLINED_FUNCTION_2_1();
  v15(v14);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

void *sub_21E53A968@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21E53A17C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21E53A9CC()
{
  v1 = *v0;
  sub_21E57BB8C();
  MEMORY[0x223D5D090](v1);
  return sub_21E57BBCC();
}

uint64_t sub_21E53AA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E53A320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E53AA60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E53A444();
  *a1 = result;
  return result;
}

uint64_t sub_21E53AA88(uint64_t a1)
{
  v2 = sub_21E53C584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E53AAC4(uint64_t a1)
{
  v2 = sub_21E53C584();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21E53AB00@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21E53A700(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_21E53AB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v5 = sub_21E57B06C();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E8, &unk_21E57C638) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = sub_21E57AFEC();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = sub_21E57B03C();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[5] = type metadata accessor for DefaultEligibilityCriteria();
  v3[6] = &off_282F92F38;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_21E53AD50);
}

uint64_t sub_21E53AD50()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v37 = v0[16];
    v35 = *MEMORY[0x277D60878];
    v33 = (v3 + 16);
    v34 = (v0[15] + 104);
    v32 = (v0[10] + 16);
    v36 = v0[10];
    v31 = (v3 + 8);
    v4 = (v1 + 64);
    v43 = MEMORY[0x277D84F90];
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

      swift_bridgeObjectRetain_n();

      if (sub_21E54A03C())
      {
        v42 = v2;
        v11 = v0[16];
        v12 = v0[14];

        MEMORY[0x223D5CBD0](46, 0xE100000000000000);

        MEMORY[0x223D5CBD0](v5, v6);

        *v11 = v7;
        *(v37 + 8) = v8;
        (*v34)(v11, v35, v12);
        if (!v9)
        {
          v9 = sub_21E57B62C();
        }

        v14 = v0[19];
        v13 = v0[20];
        v15 = v0[16];
        v16 = v0[13];
        v38 = v0[17];
        v39 = v0[12];
        v40 = v0[11];
        v41 = v0[9];

        sub_21E539720(v9);

        v17 = sub_21E57B08C();
        OUTLINED_FUNCTION_11_0(v16, v18, v19, v17);
        sub_21E57AFFC();
        (*v33)(v14, v13, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
        sub_21E57B62C();
        sub_21E57B05C();
        (*v32)(v40, v39, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E5438E4(0, *(v43 + 16) + 1, 1, v43);
          v43 = v26;
        }

        v21 = *(v43 + 16);
        v20 = *(v43 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21E5438E4(v20 > 1, v21 + 1, 1, v43);
          v43 = v27;
        }

        v22 = v0[20];
        v23 = v0[17];
        v24 = v0[11];
        v25 = v0[9];
        (*(v36 + 8))(v0[12], v25);
        (*v31)(v22, v23);
        *(v43 + 16) = v21 + 1;
        (*(v36 + 32))(v43 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v21, v24, v25);
        v2 = v42;
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v4 += 5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v0[21] = v43;
  v28 = *__swift_project_boxed_opaque_existential_1((v0[8] + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_suggestionsForIntentProvider), *(v0[8] + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_suggestionsForIntentProvider + 24));
  v29 = swift_task_alloc();
  v0[22] = v29;
  *v29 = v0;
  v29[1] = sub_21E53B184;

  return sub_21E5615B8();
}

uint64_t sub_21E53B184()
{
  v1 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v0;
  *(v2 + 184) = v6;

  return MEMORY[0x2822009F8](sub_21E53B280);
}

uint64_t sub_21E53B280()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v9(v1);
}

uint64_t sub_21E53B354(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  v4[11] = *a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = sub_21E57B3DC();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E0, &unk_21E57D3C0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = sub_21E57B23C();
  v4[20] = v14;
  v15 = *(v14 - 8);
  v4[21] = v15;
  v16 = *(v15 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v17 = sub_21E57AFDC();
  v4[24] = v17;
  v18 = *(v17 - 8);
  v4[25] = v18;
  v19 = *(v18 + 64) + 15;
  v4[26] = swift_task_alloc();
  v20 = sub_21E57AF9C();
  v4[27] = v20;
  v21 = *(v20 - 8);
  v4[28] = v21;
  v22 = *(v21 + 64) + 15;
  v4[29] = swift_task_alloc();
  v23 = sub_21E57B5EC();
  v4[30] = v23;
  v24 = *(v23 - 8);
  v4[31] = v24;
  v25 = *(v24 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[5] = type metadata accessor for DefaultEligibilityCriteria();
  v4[6] = &off_282F92F38;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_21E53B708);
}

uint64_t sub_21E53B708()
{
  v37 = v0;
  v1 = v0[33];
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  if (v4)
  {
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    v11 = sub_21E57BC2C();
    v13 = sub_21E5553D8(v11, v12, &v36);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21E527000, v2, v3, "%s: Fetching phrases", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[34] = v14;
  v15 = v0[10];
  v0[7] = MEMORY[0x277D84F90];
  v16 = sub_21E53909C();
  v0[35] = v16;
  if (v16)
  {
    v17 = v16;
    v18 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v19 = swift_task_alloc();
    v0[36] = v19;
    *v19 = v0;
    v19[1] = sub_21E53B9C0;
    v20 = v0[10];

    return sub_21E53AB60(v17, v18, v20);
  }

  else
  {
    v22 = v0[32];
    v23 = v0[33];
    v24 = v0[29];
    v25 = v0[26];
    v27 = v0[22];
    v26 = v0[23];
    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[15];
    v33 = v0[14];
    v34 = v0[13];
    v35 = v0[12];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    OUTLINED_FUNCTION_9_0();
    v32 = MEMORY[0x277D84F90];

    return v31(v32);
  }
}

uint64_t sub_21E53B9C0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 280);
  v7 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v8 = v7;
  *(v10 + 296) = v9;

  return MEMORY[0x2822009F8](sub_21E53BAD8);
}

uint64_t sub_21E53BAD8()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[28];
    v4 = v0[25];
    v5 = v0[21];
    v6 = v0[17];
    v72 = v0[9];
    v73 = v0[10];
    sub_21E57B5AC();
    v7 = *(v3 + 16);
    v3 += 16;
    v71 = v7;
    v8 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v69 = *(v3 + 56);
    v70 = OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_source;
    v67 = (v5 + 8);
    v68 = (v4 + 8);
    v65 = (v3 - 8);
    v66 = (v6 + 16);
    do
    {
      v77 = v2;
      v9 = v0[26];
      v11 = v0[23];
      v10 = v0[24];
      v12 = v0[22];
      v13 = v0[19];
      v14 = v0[20];
      v71(v0[29], v8, v0[27]);
      sub_21E57AF5C();
      sub_21E57AFAC();
      (*v68)(v9, v10);
      sub_21E57AF6C();
      sub_21E57B22C();
      v15 = *v67;
      (*v67)(v11, v14);
      sub_21E57AF6C();
      sub_21E57B20C();
      v15(v12, v14);
      v16 = sub_21E57B0CC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v16);
      v18 = v0[19];
      if (EnumTagSinglePayload == 1)
      {
        sub_21E5350C0(v0[19], &qword_27CEC89E0, &unk_21E57D3C0);
      }

      else
      {
        sub_21E57B0BC();
        (*(*(v16 - 8) + 8))(v18, v16);
      }

      v19 = v0[29];
      v20 = v0[15];
      v22 = v0[13];
      v21 = v0[14];
      v23 = v0[12];
      v25 = v0[8];
      v24 = v0[9];
      (*v66)(v0[18], v73 + v70, v0[16]);
      v26 = sub_21E57B1FC();
      OUTLINED_FUNCTION_11_0(v20, v27, v28, v26);
      v29 = sub_21E57AC4C();
      OUTLINED_FUNCTION_11_0(v21, v30, v31, v29);
      sub_21E57AF7C();
      v32 = sub_21E57B04C();
      OUTLINED_FUNCTION_11_0(v23, v33, v34, v32);
      sub_21E57B59C();
      v35 = sub_21E57B4AC();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();

      sub_21E57B44C();

      MEMORY[0x223D5CC60](v38);
      if (*((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E57B7AC();
      }

      v39 = v0[29];
      v40 = v0[27];
      sub_21E57B7CC();

      (*v65)(v39, v40);
      v8 += v69;
      v2 = v77 - 1;
    }

    while (v77 != 1);
    v41 = v0[37];
    v42 = v0[7];
  }

  else
  {
    v43 = v0[37];

    v42 = MEMORY[0x277D84F90];
  }

  v44 = v0[32];
  v45 = v0[10];
  swift_bridgeObjectRetain_n();
  sub_21E53994C(v42);
  sub_21E57B5BC();

  v46 = sub_21E57B5DC();
  v47 = sub_21E57B84C();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[34];
  v51 = v0[31];
  v50 = v0[32];
  v52 = v0[30];
  if (v48)
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    v54 = sub_21E529E5C(v42);

    *(v53 + 4) = v54;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21E527000, v46, v47, "BaseSetAppIntentPhrasesSource: created %ld phrases", v53, 0xCu);
    OUTLINED_FUNCTION_39();

    v49(v50, v52);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v49(v50, v52);
  }

  v56 = v0[32];
  v55 = v0[33];
  v57 = v0[29];
  v58 = v0[26];
  v60 = v0[22];
  v59 = v0[23];
  v62 = v0[18];
  v61 = v0[19];
  v74 = v0[15];
  v75 = v0[14];
  v76 = v0[13];
  v78 = v0[12];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v63(v42);
}

uint64_t sub_21E53C060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8978, &qword_21E57C650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_21E53C0D0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_21E53C0E8()
{
  result = qword_27CEC8A00;
  if (!qword_27CEC8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A00);
  }

  return result;
}

unint64_t sub_21E53C14C()
{
  result = qword_27CEC8A10;
  if (!qword_27CEC8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A10);
  }

  return result;
}

unint64_t sub_21E53C1A0()
{
  result = qword_27CEC8A28;
  if (!qword_27CEC8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A28);
  }

  return result;
}

uint64_t sub_21E53C1F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A18, &qword_21E57C700);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E53C26C()
{
  result = qword_27CEC8A40;
  if (!qword_27CEC8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BaseSetAppIntentList.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for BaseSetAppIntentList.CodingKeys(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21E53C3E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21E53C424(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21E53C480()
{
  result = qword_27CEC8A48;
  if (!qword_27CEC8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A48);
  }

  return result;
}

unint64_t sub_21E53C4D8()
{
  result = qword_27CEC8A50;
  if (!qword_27CEC8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A50);
  }

  return result;
}

unint64_t sub_21E53C530()
{
  result = qword_27CEC8A58;
  if (!qword_27CEC8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A58);
  }

  return result;
}

unint64_t sub_21E53C584()
{
  result = qword_27CEC8A68;
  if (!qword_27CEC8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8A68);
  }

  return result;
}

uint64_t sub_21E53C5D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A70, &qword_21E57CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAutoCompleteHistogramType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BaseSetAppIntentInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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