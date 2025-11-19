uint64_t sub_267E222F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 488);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E223D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  (*(v20[51] + 8))(v20[52], v20[50]);
  OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_62_11();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E224D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 496);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E225B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 504);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E2269C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 512);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E22780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_62_11();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E22868()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 520);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E2294C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 528);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E22A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t), uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_0();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_66_1();
  a26 = v28;
  OUTLINED_FUNCTION_58_13();
  if (!v199)
  {
    OUTLINED_FUNCTION_0();
  }

  v32 = *(v28 + 456);
  v33 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
  v34 = v32;
  v35 = sub_267EF89F8();
  v36 = sub_267EF95C8();

  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v28 + 456);
  if (v37)
  {
    v39 = OUTLINED_FUNCTION_48();
    v29 = swift_slowAlloc();
    *v39 = 138543362;
    v40 = v38;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v29 = v41;
    _os_log_impl(&dword_267B93000, v35, v36, "#SendMessageConfirmIntentFlow failed to cancel send on disappear command, possibly delayed action command was already cancelled: %{public}@", v39, 0xCu);
    sub_267B9F98C(v29, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  *(v28 + 464) = 0;
  v42 = *(v28 + 440);
  v43 = *(v28 + 424);
  v44 = *(v28 + 216);
  v45 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  OUTLINED_FUNCTION_85_12();
  sub_267E28344(v44 + v45, v42);
  OUTLINED_FUNCTION_108();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = **(v28 + 440);
      OUTLINED_FUNCTION_58_13();
      if (!v199)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v47 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_48();
        a17 = OUTLINED_FUNCTION_52();
        *v49 = 136446210;
        if (v46)
        {
          v50 = 0x74756F68746977;
        }

        else
        {
          v50 = 1752459639;
        }

        if (v46)
        {
          v51 = 0xE700000000000000;
        }

        else
        {
          v51 = 0xE400000000000000;
        }

        sub_267BA33E8(v50, v51, &a17);
        OUTLINED_FUNCTION_105_11();
        *(v49 + 4) = v29;
        OUTLINED_FUNCTION_87_3(&dword_267B93000, v52, v43, "#SendMessageConfirmIntentFlow empty input, pushing confirmation flow %{public}s prompt");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_32_0();
      }

      v53 = *(*(v28 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v53 + 42) = 2;
      *(v53 + 72) = v46;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v28 + 512) = v54;
      *v54 = v55;
      OUTLINED_FUNCTION_30_29();
      goto LABEL_42;
    case 2u:
      v82 = *(v28 + 264);
      v83 = *(v28 + 256);
      (*(v83 + 32))(*(v28 + 272), *(v28 + 440), *(v28 + 248));
      v84 = *(v83 + 16);
      v85 = OUTLINED_FUNCTION_19();
      a15 = v87;
      a16 = v86;
      v87(v85);
      v88 = *(v83 + 88);
      v89 = OUTLINED_FUNCTION_37_1();
      if (v90(v89) != *MEMORY[0x277D5BC38])
      {
        (*(*(v28 + 256) + 8))(*(v28 + 264), *(v28 + 248));
        goto LABEL_53;
      }

      v91 = *(v28 + 280);
      v92 = *(v28 + 240);
      v93 = *(v28 + 224);
      v94 = *(v28 + 232);
      (*(*(v28 + 256) + 96))(*(v28 + 264), *(v28 + 248));
      v95 = *(v94 + 32);
      OUTLINED_FUNCTION_182();
      v96();
      sub_267EF4478();
      sub_267EF44F8();
      v97 = OUTLINED_FUNCTION_54();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v92);
      v99 = *(v28 + 280);
      if (EnumTagSinglePayload == 1)
      {
        v100 = OUTLINED_FUNCTION_22_26();
        v101(v100);
        sub_267B9F98C(v99, &qword_280229310, &unk_267EFCF70);
LABEL_53:
        v145 = *(*(*(v28 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 216);

        sub_267D0F73C();

        goto LABEL_54;
      }

      OUTLINED_FUNCTION_23();
      v157 = v156;
      v159 = *(v158 + 88);
      v160 = OUTLINED_FUNCTION_19();
      v162 = v161(v160);
      v163 = *(v28 + 280);
      if (v162 != *MEMORY[0x277D5BED8])
      {
        v177 = OUTLINED_FUNCTION_22_26();
        v178(v177);
        v179 = *(v157 + 8);
        v180 = OUTLINED_FUNCTION_19();
        v181(v180);
        goto LABEL_53;
      }

      v164 = *(v28 + 216);
      v165 = *(v157 + 8);
      v166 = OUTLINED_FUNCTION_19();
      v167(v166);
      v168 = v164[5];
      v169 = v164[6];
      OUTLINED_FUNCTION_69_12(v164 + 2);
      v170 = OUTLINED_FUNCTION_54();
      v171(v170, v169);
      v172 = *(v28 + 40);
      v173 = *(v28 + 48);
      OUTLINED_FUNCTION_13_37((v28 + 16));
      LOBYTE(v172) = OUTLINED_FUNCTION_28_3();
      __swift_destroy_boxed_opaque_existential_0((v28 + 16));
      if ((v172 & 1) == 0)
      {
        goto LABEL_93;
      }

      sub_267EF6FF8();
      v174 = sub_267EF6FC8();
      if (v174)
      {
        v175 = *(v28 + 360);
        sub_267EF6FA8();

        sub_267EF8698();

        v176 = 0;
      }

      else
      {
        v176 = 1;
      }

      v249 = *(v28 + 352);
      v248 = *(v28 + 360);
      v251 = *(v28 + 320);
      v250 = *(v28 + 328);
      OUTLINED_FUNCTION_57_16(v174, v176);
      v252 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v252, v253, v254, v164);
      v255 = *(v251 + 48);
      v256 = OUTLINED_FUNCTION_19();
      v258 = v257;
      sub_267BB170C(v256, v259, v257, v260);
      a14 = v255;
      sub_267BB170C(v249, v250 + v255, v258, &unk_267EFDCA0);
      v261 = OUTLINED_FUNCTION_221();
      OUTLINED_FUNCTION_5_1(v261, v262, v164);
      if (v199)
      {
        v263 = *(v28 + 360);
        v264 = *(v28 + 296);
        sub_267B9F98C(*(v28 + 352), &qword_2802295B0, &unk_267EFDCA0);
        v265 = OUTLINED_FUNCTION_14_1();
        sub_267B9F98C(v265, v266, &unk_267EFDCA0);
        OUTLINED_FUNCTION_7_0(v250 + v255);
        if (v199)
        {
          sub_267B9F98C(*(v28 + 328), &qword_2802295B0, &unk_267EFDCA0);
          goto LABEL_93;
        }

        goto LABEL_87;
      }

      v267 = *(v28 + 296);
      sub_267BB170C(*(v28 + 328), *(v28 + 344), &qword_2802295B0, &unk_267EFDCA0);
      v268 = __swift_getEnumTagSinglePayload(v250 + v255, 1, v267);
      v269 = *(v28 + 360);
      a12 = v269;
      a13 = *(v28 + 344);
      if (v268 == 1)
      {
        v270 = *(v28 + 296);
        v271 = *(v28 + 304);
        sub_267B9F98C(*(v28 + 352), &qword_2802295B0, &unk_267EFDCA0);
        sub_267B9F98C(a12, &qword_2802295B0, &unk_267EFDCA0);
        (*(v271 + 8))(a13, v270);
LABEL_87:
        sub_267B9F98C(*(v28 + 328), &qword_28022BB78, &unk_267F08340);
        goto LABEL_88;
      }

      a10 = *(v28 + 352);
      a11 = *(v28 + 328);
      v282 = *(v28 + 304);
      v283 = *(v28 + 312);
      v284 = *(v28 + 296);
      (*(v282 + 32))(v283, v250 + v255, v284);
      OUTLINED_FUNCTION_2_57();
      sub_267E282FC(v285, v286);
      LODWORD(a14) = sub_267EF8FE8();
      v287 = *(v282 + 8);
      v287(v283, v284);
      OUTLINED_FUNCTION_182();
      sub_267B9F98C(v288, v289, v290);
      OUTLINED_FUNCTION_182();
      sub_267B9F98C(v291, v292, v293);
      v287(a13, v284);
      OUTLINED_FUNCTION_182();
      sub_267B9F98C(v294, v295, v296);
      if (a14)
      {
        goto LABEL_93;
      }

LABEL_88:
      OUTLINED_FUNCTION_58_13();
      if (!v199)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v272 = sub_267EF89F8();
      v273 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v273))
      {
        v274 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v274);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v275, v276, v277, v278, v279, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_93:
      v280 = OUTLINED_FUNCTION_22_26();
      v281(v280);
LABEL_54:
      v146 = *(v28 + 424);
      v147 = *(v28 + 432);
      v148 = *(v28 + 272);
      v149 = *(v28 + 248);
      v150 = *(v28 + 256);
      v151 = *(v28 + 208);
      v152 = OUTLINED_FUNCTION_108();
      a15(v152);
      OUTLINED_FUNCTION_66();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3();
      sub_267E283A8(v147, v44 + v45);
      swift_endAccess();
      sub_267EF4018();
      v153 = *(v150 + 8);
      v154 = OUTLINED_FUNCTION_37_1();
      v155(v154);
LABEL_74:
      OUTLINED_FUNCTION_4_57();
      OUTLINED_FUNCTION_61_14();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_46_0();

      return v226(v225, v226, v227, v228, v229, v230, v231, v232, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    case 4u:
      v75 = *(v28 + 216);
      if ((sub_267E242A8() & 1) == 0)
      {
        OUTLINED_FUNCTION_58_13();
        if (!v199)
        {
          OUTLINED_FUNCTION_0();
        }

        v125 = __swift_project_value_buffer(v33, qword_280240FB0);
        v126 = sub_267EF89F8();
        sub_267EF95C8();
        OUTLINED_FUNCTION_12_3();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v128);
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v129, v130, v131, v132, v133, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        v134 = *(v28 + 216);

        v135 = *(v134 + 40);
        v136 = *(v134 + 48);
        OUTLINED_FUNCTION_69_12((v134 + 16));
        v137 = OUTLINED_FUNCTION_54();
        v138(v137, v136);
        v139 = *(v28 + 80);
        v140 = *(v28 + 88);
        OUTLINED_FUNCTION_13_37((v28 + 56));
        v141 = OUTLINED_FUNCTION_28_3();
        __swift_destroy_boxed_opaque_existential_0((v28 + 56));
        if ((v141 & 1) == 0)
        {
          goto LABEL_73;
        }

        sub_267EF6FF8();
        v142 = sub_267EF6FC8();
        a16 = v125;
        if (v142)
        {
          v143 = *(v28 + 384);
          sub_267EF6FA8();

          sub_267EF8698();

          v144 = 0;
        }

        else
        {
          v144 = 1;
        }

        v136 = *(v28 + 376);
        v182 = *(v28 + 384);
        v141 = *(v28 + 336);
        v183 = *(v28 + 320);
        OUTLINED_FUNCTION_57_16(v142, v144);
        v184 = OUTLINED_FUNCTION_3_19();
        __swift_storeEnumTagSinglePayload(v184, v185, v186, v125);
        v134 = *(v183 + 48);
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v187, v188, v189, v190);
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v191, v192, v193, v194);
        v195 = OUTLINED_FUNCTION_221();
        OUTLINED_FUNCTION_5_1(v195, v196, v125);
        if (v199)
        {
          v140 = *(v28 + 384);
          v136 = *(v28 + 296);
          v125 = &qword_2802295B0;
          sub_267B9F98C(*(v28 + 376), &qword_2802295B0, &unk_267EFDCA0);
          v197 = OUTLINED_FUNCTION_14_1();
          sub_267B9F98C(v197, v198, &unk_267EFDCA0);
          OUTLINED_FUNCTION_7_0(v141 + v134);
          if (v199)
          {
            sub_267B9F98C(*(v28 + 336), &qword_2802295B0, &unk_267EFDCA0);
LABEL_73:
            OUTLINED_FUNCTION_84_11();
            v217 = *MEMORY[0x277D5BED8];
            v218 = sub_267EF44F8();
            OUTLINED_FUNCTION_22(v218);
            (*(v219 + 104))(v125, v217, v218);
            OUTLINED_FUNCTION_9();
            __swift_storeEnumTagSinglePayload(v220, v221, v222, v218);
            v223 = *(v140 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
            sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
            v224 = v223;
            OUTLINED_FUNCTION_102_8();
            (*(v141 + 104))(v134, *MEMORY[0x277D5BC38], v136);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_3();
            sub_267E283A8(v134, v44 + v45);
            swift_endAccess();
            sub_267EF4018();
            goto LABEL_74;
          }
        }

        else
        {
          v140 = *(v28 + 296);
          sub_267BB170C(*(v28 + 336), *(v28 + 368), &qword_2802295B0, &unk_267EFDCA0);
          OUTLINED_FUNCTION_107_9();
          if (!v199)
          {
            v233 = OUTLINED_FUNCTION_48_24();
            v234(v233);
            OUTLINED_FUNCTION_2_57();
            sub_267E282FC(v235, v236);
            OUTLINED_FUNCTION_86_11();
            v237 = OUTLINED_FUNCTION_91_11();
            (v141)(v237);
            v134 = &unk_267EFDCA0;
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v238, v239, v240);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v241, v242, v243);
            v244 = OUTLINED_FUNCTION_37_1();
            (v141)(v244);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v245, v246, v247);
            v141 = v125;
            if (a13)
            {
              goto LABEL_73;
            }

LABEL_70:
            v141 = sub_267EF89F8();
            v210 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_10_2(v210))
            {
              v211 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v211);
              OUTLINED_FUNCTION_21();
              _os_log_impl(v212, v213, v214, v215, v216, 2u);
              OUTLINED_FUNCTION_26();
            }

            goto LABEL_73;
          }

          v201 = *(v28 + 296);
          v200 = *(v28 + 304);
          v125 = &qword_2802295B0;
          v202 = OUTLINED_FUNCTION_76_11();
          sub_267B9F98C(v202, v203, v204);
          v205 = OUTLINED_FUNCTION_44_0();
          sub_267B9F98C(v205, v206, &unk_267EFDCA0);
          v207 = *(v200 + 8);
          v134 = v200 + 8;
          v208 = OUTLINED_FUNCTION_19();
          v209(v208);
        }

        sub_267B9F98C(*(v28 + 336), &qword_28022BB78, &unk_267F08340);
        goto LABEL_70;
      }

      v76 = *(v28 + 216);
      v77 = OUTLINED_FUNCTION_71_8(OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v28 + 536) = v77 & 1;
      if (v77)
      {
        v78 = *(v28 + 216);
        sub_267C99228();
      }

      v79 = swift_task_alloc();
      *(v28 + 480) = v79;
      *v79 = v28;
      OUTLINED_FUNCTION_26_28(v79);
      OUTLINED_FUNCTION_46_0();

      return sub_267E25C70();
    case 5u:
      OUTLINED_FUNCTION_58_13();
      if (!v199)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v102 = sub_267EF89F8();
      v103 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v103))
      {
        v104 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v104);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v105, v106, v107, v108, v109, 2u);
        OUTLINED_FUNCTION_26();
      }

      v110 = *(v28 + 216);

      *(*(v110 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 1;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v28 + 520) = v111;
      *v111 = v112;
      OUTLINED_FUNCTION_31_23();
      goto LABEL_42;
    case 6u:
      OUTLINED_FUNCTION_58_13();
      if (!v199)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v113 = sub_267EF89F8();
      v114 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v114))
      {
        v115 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v115);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v116, v117, v118, v119, v120, 2u);
        OUTLINED_FUNCTION_26();
      }

      v121 = *(v28 + 216);

      *(*(v121 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 0;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v28 + 528) = v122;
      *v122 = v123;
      OUTLINED_FUNCTION_32_20();
LABEL_42:
      *(v56 + 8) = v57;
      OUTLINED_FUNCTION_74_11();
      OUTLINED_FUNCTION_46_0();

      return sub_267E24418();
    default:
      OUTLINED_FUNCTION_58_13();
      if (!v199)
      {
        OUTLINED_FUNCTION_0();
      }

      v58 = *(v28 + 216);
      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);

      v59 = sub_267EF89F8();
      v60 = sub_267EF95E8();

      if (os_log_type_enabled(v59, v60))
      {
        v62 = *(v28 + 424);
        v61 = *(v28 + 432);
        OUTLINED_FUNCTION_48();
        v63 = OUTLINED_FUNCTION_64_2();
        a17 = v63;
        *v58 = 136315138;
        sub_267E28344(v44 + v45, v61);
        OUTLINED_FUNCTION_44_0();
        v64 = sub_267EF9098();
        v66 = sub_267BA33E8(v64, v65, &a17);

        *(v58 + 4) = v66;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_26();
      }

      v72 = *(v28 + 440);
      v73 = *(v28 + 208);
      sub_267EF4018();
      OUTLINED_FUNCTION_1_71();
      sub_267E28EE0(v72, v74);
      goto LABEL_74;
  }
}

uint64_t sub_267E23A58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  sub_267E28344(v1 + v10, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
    OUTLINED_FUNCTION_22(v11);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_26_0();
    return v15(v14);
  }

  else
  {
    sub_267C4BE60();
    v17 = swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    *a1 = v17;
    *(a1 + 8) = 0;
    v19 = *MEMORY[0x277D5BC30];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
    OUTLINED_FUNCTION_22(v20);
    (*(v21 + 104))(a1, v19);
    OUTLINED_FUNCTION_1_71();
    return sub_267E28EE0(v9, v22);
  }
}

uint64_t sub_267E23BC8()
{
  *(v1 + 24) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267E23BF0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  v0[4] = v1;
  v2 = *(v1 + 328);
  v0[5] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D857C8] + 4);

    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC00, &unk_267F08390);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    *v4 = v0;
    v4[1] = sub_267E23DB4;
    v7 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v2, v5, v6, v7);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v10))
    {
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v11);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_26();
    }

    v17 = v0[4];

    v18 = *(v17 + 328);
    *(v17 + 328) = 0;

    OUTLINED_FUNCTION_17();

    return v19();
  }
}

uint64_t sub_267E23DB4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *(v2 + 48);
  *v4 = *v1;
  *(v3 + 56) = v0;

  v6 = *(v2 + 40);

  if (v0)
  {
    v7 = sub_267E241C4;
  }

  else
  {
    v7 = sub_267E23EE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E23EE4()
{
  v44 = v0;
  v1 = *(v0 + 16);
  if (!v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_26();
    }

    v22 = *(v0 + 32);

    v23 = *(v22 + 328);
    *(v22 + 328) = 0;

    goto LABEL_13;
  }

  v2 = *(v0 + 32);
  v3 = *(v2 + 328);
  *(v2 + 328) = 0;

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v7);
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_29_1();
    }

LABEL_13:
    OUTLINED_FUNCTION_17();
    goto LABEL_19;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = v1;
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_48();
    v30 = OUTLINED_FUNCTION_52();
    v43 = v30;
    *v29 = 136315138;
    v31 = [v26 debugDescription];
    v32 = sub_267EF9028();
    v34 = v33;

    v35 = sub_267BA33E8(v32, v34, &v43);

    *(v29 + 4) = v35;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  sub_267C4BE60();
  swift_allocError();
  *v41 = 0;
  v41[1] = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_17();
LABEL_19:

  return v24();
}

uint64_t sub_267E241C4()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_17();
  return v2();
}

BOOL sub_267E24200()
{
  sub_267E6E78C();
  v2 = v1;
  v3 = v0[5];
  v4 = v0[6];
  OUTLINED_FUNCTION_106_5(v0 + 2);
  v5 = OUTLINED_FUNCTION_16_1();
  v6(v5);
  __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  OUTLINED_FUNCTION_16_1();
  sub_267EF3BD8();
  __swift_destroy_boxed_opaque_existential_0(v11);
  v7 = OUTLINED_FUNCTION_108();
  v9 = sub_267BC2F78(v7, v8, v2);

  return v9;
}

uint64_t sub_267E242A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  if (sub_267D60D40())
  {
    v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 32);
    __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences), *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 24));
    v3 = *(v2 + 8);
    v4 = OUTLINED_FUNCTION_16_1();
    if (v5(v4))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v6 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
      v7 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_12_3();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_13;
      }

      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v9);
      v12 = "#SendMessageConfirmIntentFlow spoken message reply without confirmation";
LABEL_12:
      OUTLINED_FUNCTION_5_54(&dword_267B93000, v10, v11, v12);
      OUTLINED_FUNCTION_32_0();
LABEL_13:

      return 0;
    }
  }

  if (*(v1 + 41) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v7 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (!os_log_type_enabled(v7, v14))
    {
      goto LABEL_13;
    }

    v15 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_10(v15);
    v12 = "#SendMessageConfirmIntentFlow message sent from snippet. Skip confirmation";
    goto LABEL_12;
  }

  return 1;
}

uint64_t sub_267E24418()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 2088) = v0;
  *(v1 + 2224) = v2;
  *(v1 + 2080) = v3;
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  *(v1 + 2096) = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64) + 15;
  *(v1 + 2104) = swift_task_alloc();
  *(v1 + 2112) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  *(v1 + 2120) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v1 + 2128) = v8;
  v10 = *(v9 + 64);
  *(v1 + 2136) = OUTLINED_FUNCTION_2();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v1 + 2144) = OUTLINED_FUNCTION_2();
  v14 = sub_267EF68A8();
  *(v1 + 2152) = v14;
  OUTLINED_FUNCTION_30_0(v14);
  *(v1 + 2160) = v15;
  v17 = *(v16 + 64);
  *(v1 + 2168) = OUTLINED_FUNCTION_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  OUTLINED_FUNCTION_18(v18);
  v20 = *(v19 + 64) + 15;
  *(v1 + 2176) = swift_task_alloc();
  *(v1 + 2184) = swift_task_alloc();
  *(v1 + 2192) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  *(v1 + 2200) = v21;
  OUTLINED_FUNCTION_30_0(v21);
  *(v1 + 2208) = v22;
  v24 = *(v23 + 64);
  *(v1 + 2216) = OUTLINED_FUNCTION_2();
  v25 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_267E24618()
{
  v200 = v0;
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 2224);
  v4 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_app);
  v5 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
  v6 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intentResponse);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  sub_267BA9F38(0, &qword_280229718, 0x277CD4080);

  v7 = v5;
  v8 = v6;
  OUTLINED_FUNCTION_14_1();
  sub_267EF4658();
  v9 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  v9[211] = v3;
  v10 = sub_267E27360();
  v9[212] = v10 & 1;
  v9[210] = v3 & v10;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = *(v0 + 2088);
  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);

  v13 = sub_267EF89F8();
  v14 = sub_267EF95C8();
  v15 = OUTLINED_FUNCTION_10_2(v14);
  v16 = *(v0 + 2088);
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 67240704;
    *(v17 + 4) = v9[210];
    *(v17 + 8) = 1026;
    *(v17 + 10) = v9[211];
    *(v17 + 14) = 1026;
    *(v17 + 16) = v9[212];

    _os_log_impl(&dword_267B93000, v13, v1, "#SendMessageConfirmIntentFlow#pushConfirmIntentFlow shouldAutoSend=%{BOOL,public}d, isAutoSendHighConfidence=%{BOOL,public}d, autoSendEnabled=%{BOOL,public}d", v17, 0x14u);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v18 = *(v0 + 2088);
  }

  v197 = (v0 + 808);

  v19 = *(v0 + 2192);
  v20 = *(v0 + 2168);
  v21 = *(v0 + 2120);
  v185 = *(v0 + 2088);
  sub_267B9AFEC(v185 + 16, v0 + 208);
  v22 = OUTLINED_FUNCTION_221();
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  v24 = sub_267EF8938();

  v25 = sub_267EF8928();
  v174 = v24;
  *(v0 + 1392) = v24;
  *(v0 + 1400) = MEMORY[0x277D5FDD8];
  *(v0 + 1368) = v25;
  v181 = sub_267EF3AA8();
  sub_267EF3838();
  v26 = type metadata accessor for NetworkStatusProvider();
  v27 = swift_allocObject();
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00((v0 + 1968));
  sub_267EF8668();
  v28 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  *(v0 + 352) = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  *(v0 + 360) = &off_2878CF540;
  *(v0 + 328) = v28;
  v29 = sub_267EF72E8();
  sub_267EF6898();
  ConversationEventStore.init()(v0 + 16);
  v193 = v9;
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v180 = *(v0 + 2192);
  v191 = *(v0 + 2184);
  v178 = *(v0 + 2176);
  v30 = *(v0 + 2168);
  v31 = *(v0 + 2160);
  v195 = v31;
  v32 = *(v0 + 2152);
  v179 = *(v0 + 2120);
  v33 = qword_280240A10;
  v176 = *(v0 + 2144);
  *(v0 + 432) = type metadata accessor for EligibleAppFinder();
  *(v0 + 440) = sub_267E282FC(&qword_28022A688, type metadata accessor for EligibleAppFinder);
  *(v0 + 408) = v33;
  v34 = type metadata accessor for ShareSheetProvider();
  v35 = swift_allocObject();
  *(v0 + 472) = &type metadata for CATProvider;
  *(v0 + 480) = &off_2878CE7A0;
  *(v0 + 512) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 520) = off_2878D1228;
  *(v0 + 552) = v26;
  *(v0 + 560) = &off_2878D2ED0;
  *(v0 + 528) = v27;
  *(v0 + 592) = &type metadata for TTSUtil;
  *(v0 + 568) = v29;
  *(v0 + 600) = &off_2878D0CB0;
  *(v0 + 576) = &off_2878D0918;
  v189 = v32;
  *(v0 + 632) = v32;
  *(v0 + 640) = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 608));
  v36 = *(v31 + 16);
  OUTLINED_FUNCTION_97_12();
  v37();
  *(v0 + 672) = v34;
  *(v0 + 680) = &off_2878D0D48;
  *(v0 + 648) = v35;
  v38 = type metadata accessor for SendMessageConfirmIntentFlowStrategy();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v183 = v38;
  v41 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 448, *(v0 + 472));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 488, *(v0 + 512));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 528, *(v0 + 552));
  OUTLINED_FUNCTION_23();
  v43 = v42;
  v45 = *(v44 + 64);
  v46 = OUTLINED_FUNCTION_2();
  v47 = *(v43 + 16);
  OUTLINED_FUNCTION_136();
  v48();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 568, *(v0 + 592));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 608, *(v0 + 632));
  OUTLINED_FUNCTION_23();
  v51 = v50;
  v53 = *(v52 + 64);
  v54 = v26;
  v177 = v26;
  v55 = OUTLINED_FUNCTION_2();
  v56 = *(v51 + 16);
  OUTLINED_FUNCTION_92_10();
  v57();
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 648, v34);
  OUTLINED_FUNCTION_23();
  v60 = v59;
  v62 = *(v61 + 64);
  v63 = OUTLINED_FUNCTION_2();
  (*(v60 + 16))(v63, v58, v34);
  v64 = *v46;
  v65 = *v63;
  v66 = *v49;
  *(v0 + 712) = &type metadata for CATProvider;
  *(v0 + 720) = &off_2878CE7A0;
  *(v0 + 752) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 760) = off_2878D1228;
  *(v0 + 792) = v54;
  *(v0 + 800) = &off_2878D2ED0;
  *(v0 + 768) = v64;
  *(v0 + 832) = &type metadata for TTSUtil;
  *(v0 + 840) = &off_2878D0CB0;
  *v197 = v66;
  *(v0 + 872) = v189;
  *(v0 + 880) = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 848));
  v175 = *(v195 + 32);
  (v175)(boxed_opaque_existential_0, v55, v189);
  *(v0 + 912) = v34;
  *(v0 + 920) = &off_2878D0D48;
  *(v0 + 888) = v65;
  *(v41 + OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_autoSendTimeout) = 0x4014000000000000;
  v68 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_confirmationResponse;
  v69 = sub_267EF44F8();
  __swift_storeEnumTagSinglePayload(v41 + v68, 1, 1, v69);
  *(v41 + OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand) = 0;
  sub_267B9AFEC(v0 + 208, v0 + 928);
  sub_267B9AFEC(v0 + 688, v0 + 968);
  sub_267BB170C(v180, v191, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v0 + 728, v0 + 1008);
  sub_267B9AFEC(v0 + 1368, v0 + 1048);
  sub_267B9AFEC(v0 + 368, v0 + 1088);
  sub_267B9AFEC(v0 + 768, v0 + 1128);
  sub_267B9AFEC(v0 + 1968, v0 + 1168);
  sub_267B9AFEC(v0 + 288, v0 + 1208);
  sub_267B9AFEC(v0 + 328, v0 + 1248);
  sub_267B9AFEC(v197, v0 + 1288);
  sub_267B9AFEC(v0 + 848, v0 + 1328);
  sub_267BEB520(v0 + 16, v0 + 112);
  sub_267B9AFEC(v0 + 408, v0 + 1408);
  sub_267B9AFEC(v0 + 888, v0 + 1448);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 968, *(v0 + 992));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1008, *(v0 + 1032));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1128, *(v0 + 1152));
  OUTLINED_FUNCTION_23();
  v71 = v70;
  v73 = *(v72 + 64);
  v74 = OUTLINED_FUNCTION_2();
  v75 = *(v71 + 16);
  OUTLINED_FUNCTION_288();
  v76();
  v77 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1288, *(v0 + 1312));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1328, *(v0 + 1352));
  OUTLINED_FUNCTION_23();
  v79 = v78;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2();
  v82 = *(v79 + 16);
  OUTLINED_FUNCTION_97_12();
  v83();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1448, *(v0 + 1472));
  OUTLINED_FUNCTION_23();
  v85 = v84;
  v87 = *(v86 + 64);
  v88 = OUTLINED_FUNCTION_2();
  v89 = *(v85 + 16);
  OUTLINED_FUNCTION_92_10();
  v90();
  v91 = *v74;
  v92 = *v88;
  v93 = *v77;
  *(v0 + 1512) = &type metadata for CATProvider;
  *(v0 + 1520) = &off_2878CE7A0;
  *(v0 + 1552) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 1560) = off_2878D1228;
  *(v0 + 1592) = v177;
  *(v0 + 1600) = &off_2878D2ED0;
  *(v0 + 1568) = v91;
  *(v0 + 1632) = &type metadata for TTSUtil;
  *(v0 + 1640) = &off_2878D0CB0;
  *(v0 + 1608) = v93;
  *(v0 + 1672) = v189;
  *(v0 + 1680) = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 1648));
  OUTLINED_FUNCTION_56_17();
  v175();
  *(v0 + 1712) = v34;
  *(v0 + 1720) = &off_2878D0D48;
  *(v0 + 1688) = v92;
  v41[7] = v193;
  sub_267B9AFEC(v0 + 1488, (v41 + 8));
  type metadata accessor for SendMessageCATs();

  sub_267EF7B68();
  v41[13] = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  *(v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  type metadata accessor for MessagesCATs();
  sub_267EF7B68();
  v41[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0((v0 + 1488), *(v0 + 1512));
  v41[14] = sub_267BB4A3C();
  sub_267BB170C(v191, v178, &qword_2802299A8, &unk_267F00CF0);
  v94 = OUTLINED_FUNCTION_221();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, v95, v179);
  v97 = *(v0 + 2176);
  if (EnumTagSinglePayload == 1)
  {
    v98 = *(v0 + 2136);
    v99 = *(v0 + 2120);
    *(v0 + 1752) = *(v0 + 2152);
    *(v0 + 1760) = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0((v0 + 1728));
    sub_267EF6898();
    v100 = sub_267EF8928();
    *(v0 + 1792) = v174;
    *(v0 + 1800) = MEMORY[0x277D5FDD8];
    *(v0 + 1768) = v100;
    sub_267B9AFEC(v0 + 928, v0 + 1808);
    sub_267B9AFEC(v0 + 1728, v0 + 1848);
    sub_267B9AFEC(v0 + 1768, v0 + 1888);
    v101 = swift_allocObject();
    sub_267B9A5E8((v0 + 1808), v101 + 16);
    sub_267B9A5E8((v0 + 1848), v101 + 56);
    sub_267B9A5E8((v0 + 1888), v101 + 96);
    sub_267EF4C08();
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0((v0 + 1768));
    __swift_destroy_boxed_opaque_existential_0((v0 + 1728));
    OUTLINED_FUNCTION_7_0(v97);
    if (!v102)
    {
      sub_267B9F98C(*(v0 + 2176), &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    (*(*(v0 + 2128) + 32))(*(v0 + 2136), *(v0 + 2176), *(v0 + 2120));
  }

  v103 = *(v0 + 2192);
  v104 = *(v0 + 2184);
  v105 = *(v0 + 2168);
  v106 = *(v0 + 2160);
  v107 = *(v0 + 2152);
  v108 = *(v0 + 2144);
  v109 = *(v0 + 2088);
  (*(*(v0 + 2128) + 32))(v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, *(v0 + 2136), *(v0 + 2120));
  sub_267B9AFEC(v0 + 1528, v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(v0 + 1048, v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v110 = (v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v110 = v181;
  v110[1] = &off_2878D5360;
  sub_267B9AFEC(v0 + 1088, v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v0 + 1568, v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v0 + 1168, v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  v111 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  v112 = sub_267EF78E8();
  v113 = (v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v113[3] = v111;
  v113[4] = &off_2878D1100;
  *v113 = v112;
  __swift_destroy_boxed_opaque_existential_0((v0 + 1168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1088));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1048));
  sub_267B9F98C(v104, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9EF14(v0 + 16);
  (*(v106 + 8))(v105, v107);
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  v114 = OUTLINED_FUNCTION_61_0();
  sub_267B9F98C(v114, v115, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1368));
  __swift_destroy_boxed_opaque_existential_0((v0 + 888));
  __swift_destroy_boxed_opaque_existential_0((v0 + 848));
  __swift_destroy_boxed_opaque_existential_0(v197);
  __swift_destroy_boxed_opaque_existential_0((v0 + 768));
  __swift_destroy_boxed_opaque_existential_0((v0 + 728));
  __swift_destroy_boxed_opaque_existential_0((v0 + 688));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1568));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1528));
  sub_267B9A5E8((v0 + 1208), v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8((v0 + 1248), v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8((v0 + 1608), v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8((v0 + 1648), v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, (v0 + 112), 0x60uLL);
  sub_267B9A5E8((v0 + 1408), v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8((v0 + 1688), v41 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8((v0 + 928), (v41 + 2));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1448));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1328));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1128));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1008));
  __swift_destroy_boxed_opaque_existential_0((v0 + 968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 648));

  __swift_destroy_boxed_opaque_existential_0((v0 + 608));

  __swift_destroy_boxed_opaque_existential_0((v0 + 568));
  __swift_destroy_boxed_opaque_existential_0((v0 + 528));

  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  v116 = *(v109 + 48);
  __swift_project_boxed_opaque_existential_0((v185 + 16), *(v109 + 40));
  v117 = *(v116 + 8);
  v118 = OUTLINED_FUNCTION_38_0();
  v119(v118);
  LOBYTE(v116) = sub_267D60DB0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1928));
  v120 = sub_267EF89F8();
  v121 = sub_267EF95C8();
  v122 = OUTLINED_FUNCTION_10_2(v121);
  if (v116)
  {
    if (v122)
    {
      v123 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v123);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v124, v125, v126, v127, v128, 2u);
      OUTLINED_FUNCTION_26();
    }

    v129 = *(v0 + 2088);

    v131 = *(v129 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper);
    v130 = *(v129 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper + 8);
    *(v0 + 2072) = v41;
    v132 = *(v130 + 16);
    OUTLINED_FUNCTION_37_20();
    v135 = sub_267E282FC(v133, v134);
    v136 = v132(v0 + 2072, v183, v135, v131, v130);
  }

  else
  {
    if (v122)
    {
      v138 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v138);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v139, v140, v141, v142, v143, 2u);
      OUTLINED_FUNCTION_26();
    }

    v144 = *(v0 + 2088);

    v146 = *(v144 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper);
    v145 = *(v144 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper + 8);
    *(v0 + 2064) = v41;
    v147 = *(v145 + 8);
    OUTLINED_FUNCTION_37_20();
    v150 = sub_267E282FC(v148, v149);
    v136 = v147(v0 + 2064, v183, v150, v146, v145);
  }

  v151 = v136;
  v152 = v137;
  v153 = *(v0 + 2216);
  v154 = *(*(v0 + 2088) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_childFlowFactory);

  v155 = v151(v154, v153);

  if (v193[210] == 1)
  {
    sub_267B9AFEC(*(v0 + 2088) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender, v0 + 248);
    v154 = *(v0 + 272);
    __swift_project_boxed_opaque_existential_0((v0 + 248), v154);
    swift_getObjCClassFromMetadata();
    OUTLINED_FUNCTION_54();

    result = sub_267BB41B0(v152);
    if (!v157)
    {
      __break(1u);
      return result;
    }

    sub_267EF3B18();
    v199 = 1;
    OUTLINED_FUNCTION_29_25();
    sub_267EF3B08();
    sub_267EF3848();

    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    if (!v155)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (!v155)
    {
LABEL_22:
      v158 = sub_267EF89F8();
      v159 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v159))
      {
        v160 = OUTLINED_FUNCTION_48();
        v161 = OUTLINED_FUNCTION_52();
        v198 = v161;
        *v160 = 136315138;
        *(v160 + 4) = sub_267BA33E8(0xD00000000000002BLL, 0x8000000267F19AF0, &v198);
        OUTLINED_FUNCTION_87_3(&dword_267B93000, v162, v159, "Fatal error: %s");
        __swift_destroy_boxed_opaque_existential_0(v161);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_32_0();
      }

      return sub_267EF9C98();
    }
  }

  v163 = sub_267EF89F8();
  v164 = sub_267EF95C8();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v165);
    _os_log_impl(&dword_267B93000, v163, v164, "#SendMessageConfirmIntentFlow pushing confirm intent flow", v154, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v166 = *(v0 + 2208);
  v184 = *(v0 + 2200);
  v186 = *(v0 + 2216);
  v187 = *(v0 + 2192);
  v188 = *(v0 + 2184);
  v190 = *(v0 + 2176);
  v192 = *(v0 + 2168);
  v194 = *(v0 + 2144);
  v196 = *(v0 + 2136);
  v167 = *(v0 + 2112);
  v168 = *(v0 + 2104);
  v169 = *(v0 + 2096);
  v170 = *(v0 + 2088);
  v182 = *(v0 + 2080);

  v171 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  sub_267E28344(v170 + v171, v167);
  v172 = swift_getEnumCaseMultiPayload() != 4;
  sub_267E28EE0(v167, type metadata accessor for SendMessageConfirmIntentFlow.State);
  *v168 = v172;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  sub_267E283A8(v168, v170 + v171);
  swift_endAccess();
  *(v0 + 2056) = v155;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C768, &qword_267F0B308);
  sub_267E28414();
  OUTLINED_FUNCTION_117_0();
  sub_267EF3FA8();

  (*(v166 + 8))(v186, v184);

  OUTLINED_FUNCTION_17();

  return v173();
}

uint64_t sub_267E25B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  sub_267E283A8(v7, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_267E25C70()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 192) = v0;
  *(v1 + 336) = v2;
  v3 = sub_267EF8B38();
  *(v1 + 200) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v1 + 208) = v4;
  v6 = *(v5 + 64) + 15;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E25D50()
{
  v136 = v0;
  v1 = *(*(v0 + 192) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
  v2 = [v1 recipients];
  if (v2)
  {
    v3 = v2;
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v4 = sub_267EF92F8();

    sub_267DEC034(v4);
    LOBYTE(v3) = v5;

    if (v3)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v6 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
      v7 = sub_267EF89F8();
      v8 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v8))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  if (sub_267EF96E8())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v7 = sub_267EF89F8();
    v10 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v10))
    {
      goto LABEL_55;
    }

    goto LABEL_11;
  }

  v17 = *(*(v0 + 192) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  *(v0 + 256) = v17;
  if (*(v17 + 144))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v7 = sub_267EF89F8();
    v19 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v19))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (*(v17 + 16) == 5)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v7 = sub_267EF89F8();
    v21 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v21))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (!sub_267D60D8C())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v34 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v34, qword_280240FB0);
    v7 = sub_267EF89F8();
    v35 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v35))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v22 = [v1 content];
  if (!v22)
  {
    if (sub_267EF9718())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v36 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
      v7 = sub_267EF89F8();
      v37 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v37))
      {
        goto LABEL_55;
      }

LABEL_11:
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v11);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_26();
      goto LABEL_55;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v40 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);
    v7 = sub_267EF89F8();
    v41 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_10_2(v41))
    {
      goto LABEL_55;
    }

LABEL_54:
    v42 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v42);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
    OUTLINED_FUNCTION_26();
LABEL_55:

    goto LABEL_56;
  }

  if (*(v17 + 209) != 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v7 = sub_267EF89F8();
    v39 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v39))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v23 = *(v0 + 192);
  if (!sub_267E241E8())
  {
    v24 = *(v0 + 192);
    if (!sub_267E241F4())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v73 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
      v7 = sub_267EF89F8();
      v74 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v74))
      {
        goto LABEL_55;
      }

      goto LABEL_11;
    }
  }

  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00((v0 + 16));
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v25);
  v27 = (*(v26 + 16))(0x7541737361707942, 0xEE00646E65536F74, v25, v26);
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v31 = v29 == 0xD000000000000010 && v30 == 0x8000000267F1B5B0;
    if (v31 || (OUTLINED_FUNCTION_61_0(), (sub_267EF9EA8() & 1) != 0))
    {

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v32 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);
      v7 = sub_267EF89F8();
      v33 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v33))
      {
        goto LABEL_55;
      }

      goto LABEL_11;
    }

    if (v29 == 0x576D7269666E6F63 && v30 == 0xEF72657355687469)
    {

      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_0();
    v76 = sub_267EF9EA8();

    if (v76)
    {
LABEL_86:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v79 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v79, qword_280240FB0);
      v7 = sub_267EF89F8();
      v80 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v80))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v55 = *(v17 + 112);
  *(v0 + 264) = v55;
  if (!v55)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v77 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v77, qword_280240FB0);
    v7 = sub_267EF89F8();
    v78 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_10_2(v78))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  sub_267EF6FF8();

  if (!sub_267EF6FC8())
  {
LABEL_96:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v89 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v89, qword_280240FB0);
    v90 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v92);
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_29_1();
    }

LABEL_56:
    v49 = *(v0 + 240);
    v48 = *(v0 + 248);
    v51 = *(v0 + 224);
    v50 = *(v0 + 232);
    v52 = *(v0 + 216);

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 272) = sub_267EF6FA8();

  v56 = sub_267EF86A8();
  *(v0 + 280) = v56;
  if (!v56)
  {

    goto LABEL_96;
  }

  v57 = v56;
  v58 = sub_267EF8688();
  if (v58 == 2 || (v58 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v81 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v81, qword_280240FB0);
    v82 = sub_267EF89F8();
    v83 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v83))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_64_4();
      _os_log_impl(v84, v85, v86, v87, v88, 2u);
      OUTLINED_FUNCTION_45_2();
    }

    goto LABEL_56;
  }

  v59 = *(v0 + 192);
  v60 = v59[6];
  __swift_project_boxed_opaque_existential_0(v59 + 2, v59[5]);
  v61 = *(v60 + 8);
  v62 = OUTLINED_FUNCTION_10_0();
  v63(v62);
  v64 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  v65 = sub_267EF3B58();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (v65)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v66 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v66, qword_280240FB0);
    v7 = sub_267EF89F8();
    v67 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v67))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_64_4();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      OUTLINED_FUNCTION_45_2();
    }

    goto LABEL_55;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v98 = sub_267EF8A08();
  *(v0 + 288) = OUTLINED_FUNCTION_30_1(v98, qword_280240FB0);

  v99 = sub_267EF89F8();
  v100 = sub_267EF95D8();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v101 = 136315650;
    *(v0 + 160) = sub_267EF8678();
    *(v0 + 168) = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v103 = sub_267EF9098();
    sub_267BA33E8(v103, v104, &v135);
    OUTLINED_FUNCTION_94_10();

    *(v101 + 4) = v100;
    *(v101 + 12) = 2080;
    *(v0 + 176) = sub_267EF86C8();
    *(v0 + 184) = v105;
    v106 = sub_267EF9098();
    sub_267BA33E8(v106, v107, &v135);
    OUTLINED_FUNCTION_94_10();

    *(v101 + 14) = v100;
    *(v101 + 22) = 1024;
    *(v101 + 24) = 1;
    _os_log_impl(&dword_267B93000, v99, v100, "#SendMessageConfirmIntentFlow reqId: %s rcId: %s, asrOnDevice: %{BOOL}d", v101, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v108 = [v1 recipients];
  if (!v108)
  {
    goto LABEL_115;
  }

  v109 = v108;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v110 = sub_267EF92F8();

  if (sub_267BAF0DC(v110) != 1)
  {

    goto LABEL_115;
  }

  v111 = sub_267C8F008();

  if (!v111)
  {
LABEL_115:
    v117 = 0;
    goto LABEL_116;
  }

  v112 = sub_267DE9B04();
  v114 = v113;
  OUTLINED_FUNCTION_85_12();
  v115 = *(v17 + 192);

  sub_267C8EB98(v112, v114, v115);
  v117 = v116;

  if (v117)
  {
  }

  swift_bridgeObjectRetain_n();
  v118 = sub_267EF89F8();
  v119 = sub_267EF95C8();

  v133 = v119;
  v134 = v118;
  if (os_log_type_enabled(v118, v119))
  {
    v120 = OUTLINED_FUNCTION_48();
    v132 = OUTLINED_FUNCTION_52();
    v135 = v132;
    *v120 = 136315138;
    if (!v117)
    {
      sub_267EF8F28();
    }

    v121 = sub_267EF8F08();
    v123 = v122;

    sub_267BA33E8(v121, v123, &v135);
    OUTLINED_FUNCTION_94_10();

    *(v120 + 4) = v121;
    _os_log_impl(&dword_267B93000, v134, v133, "#SendMessageConfirmIntentFlow: retrieved recipient CRR signals %s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v132);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

LABEL_116:
  *(v0 + 296) = v117;
  sub_267EF8678();
  *(v0 + 304) = v124;
  sub_267EF86C8();
  *(v0 + 312) = v125;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 320) = v126;
  *v126 = v127;
  v126[1] = sub_267E26BCC;
  v128 = *(v0 + 240);
  v129 = *(v0 + 336);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_89();

  return sub_267DE7BE0();
}

uint64_t sub_267E26BCC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = v5[40];
  v7 = v5[39];
  v5[38];
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 328) = v0;

  if (v0)
  {
    v10 = *(v3 + 296);

    v11 = sub_267E271B4;
  }

  else
  {
    v11 = sub_267E26D30;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267E26D30()
{
  v77 = v1;
  v2 = *(v1 + 336);
  (*(*(v1 + 208) + 32))(*(v1 + 248), *(v1 + 240), *(v1 + 200));
  if (v2 == 1)
  {
    *(*(*(*(v1 + 256) + 216) + 16) + 33) = 1;
  }

  v3 = *(v1 + 288);
  v4 = *(v1 + 248);
  v5 = *(v1 + 232);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  *(*(v1 + 256) + 209) = 0;
  v8 = *(v7 + 16);
  v8(v5, v4, v6);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95C8();
  v11 = OUTLINED_FUNCTION_10_2(v10);
  v12 = *(v1 + 232);
  if (v11)
  {
    v13 = *(v1 + 224);
    v15 = *(v1 + 200);
    v14 = *(v1 + 208);
    OUTLINED_FUNCTION_48();
    v72 = OUTLINED_FUNCTION_64_2();
    v76 = v72;
    *v0 = 136315138;
    v16 = OUTLINED_FUNCTION_76_11();
    (v8)(v16);
    v17 = sub_267EF9098();
    v74 = v8;
    v19 = v18;
    v20 = v15;
    v21 = *(v14 + 8);
    v21(v12, v20);
    v22 = sub_267BA33E8(v17, v19, &v76);
    v8 = v74;

    *(v0 + 4) = v22;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v28 = *(v1 + 200);
    v29 = *(v1 + 208);

    v21 = *(v29 + 8);
    v21(v12, v28);
  }

  v30 = *(v1 + 208);
  v8(*(v1 + 216), *(v1 + 248), *(v1 + 200));
  v31 = *(v30 + 88);
  v32 = OUTLINED_FUNCTION_66();
  if (v33(v32) != *MEMORY[0x277D55960])
  {
    v44 = *(v1 + 296);
    v46 = *(v1 + 208);
    v45 = *(v1 + 216);
    v48 = *(v1 + 192);
    v47 = *(v1 + 200);

    v21(v45, v47);
    if (sub_267E241F4())
    {
      v49 = *(v1 + 288);
      v50 = sub_267EF89F8();
      v51 = sub_267EF95C8();
      v52 = OUTLINED_FUNCTION_5_2(v51);
      v53 = *(v1 + 272);
      v54 = *(v1 + 280);
      v55 = *(v1 + 264);
      v56 = *(v1 + 248);
      v57 = *(v1 + 200);
      if (v52)
      {
        v58 = OUTLINED_FUNCTION_32();
        *v58 = 0;
        _os_log_impl(&dword_267B93000, v50, v51, "#SendMessageConfirmIntentFlow shadowlogging locale is autosendable", v58, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
        v63 = *(v1 + 272);
      }

      v59 = OUTLINED_FUNCTION_26_0();
      (v21)(v59);
    }

    else
    {
      v60 = *(v1 + 272);
      v61 = *(v1 + 280);
      v62 = *(v1 + 264);
      v21(*(v1 + 248), *(v1 + 200));
    }

LABEL_15:
    v65 = *(v1 + 240);
    v64 = *(v1 + 248);
    v67 = *(v1 + 224);
    v66 = *(v1 + 232);
    v68 = *(v1 + 216);

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X2, X16 }
  }

  v34 = *(v1 + 192);
  v73 = *(v1 + 208) + 8;
  v21(*(v1 + 216), *(v1 + 200));
  sub_267B9AFEC(v34 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender, v1 + 96);
  v71 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  v75 = v21;
  if (v37)
  {
    v38 = *(v1 + 296);
    v40 = *(v1 + 272);
    v39 = *(v1 + 280);
    v41 = *(v1 + 264);
    v42 = *(v1 + 248);
    v43 = *(v1 + 200);

    sub_267EF3B18();
    OUTLINED_FUNCTION_29_25();
    sub_267EF3B08();
    sub_267EF3848();

    v75(v42, v43);
    __swift_destroy_boxed_opaque_existential_0((v1 + 96));
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_267E271B4()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  v8 = v0[34];
  v9 = v0[35];
  v10 = v0[33];
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_48();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    sub_267B9F98C(v12, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();
  }

  else
  {
    v20 = v0[34];
  }

  *(v0[32] + 209) = 0;
  v22 = v0[30];
  v21 = v0[31];
  v24 = v0[28];
  v23 = v0[29];
  v25 = v0[27];

  OUTLINED_FUNCTION_4_3();

  return v26(1);
}

uint64_t sub_267E27360()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_28022C758, &qword_267F0EDF0);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v86 - v6);
  v8 = sub_267EF7168();
  OUTLINED_FUNCTION_23();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  v20 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v21 = *(v20 + 8);
  v22 = OUTLINED_FUNCTION_10_0();
  v23(v22);
  __swift_project_boxed_opaque_existential_0(v92, v93);
  if (sub_267DBF878())
  {
    __swift_destroy_boxed_opaque_existential_0(v92);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_9_45();
  v24 = OUTLINED_FUNCTION_10_0();
  v25(v24);
  __swift_project_boxed_opaque_existential_0(v90, v91);
  OUTLINED_FUNCTION_10_0();
  v26 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v90);
  __swift_destroy_boxed_opaque_existential_0(v92);
  if (v26)
  {
LABEL_5:
    OUTLINED_FUNCTION_9_45();
    v31 = OUTLINED_FUNCTION_10_0();
    v32(v31);
    __swift_project_boxed_opaque_existential_0(v92, v93);
    OUTLINED_FUNCTION_10_0();
    if (sub_267EF3B58())
    {
      __swift_destroy_boxed_opaque_existential_0(v92);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_9_45();
    v33 = OUTLINED_FUNCTION_10_0();
    v34(v33);
    __swift_project_boxed_opaque_existential_0(v90, v91);
    OUTLINED_FUNCTION_10_0();
    v35 = sub_267EF3C28();
    __swift_destroy_boxed_opaque_existential_0(v90);
    __swift_destroy_boxed_opaque_existential_0(v92);
    if (v35)
    {
      goto LABEL_20;
    }

    sub_267EF6FF8();
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();
      OUTLINED_FUNCTION_94_10();

      sub_267EF86B8();

      OUTLINED_FUNCTION_5_1(v7, 1, v8);
      if (!v36)
      {
        v37 = v10[4];
        OUTLINED_FUNCTION_97_12();
        v38();
        sub_267EF7128();
        v39 = sub_267EF7158();
        v7 = v10[1];
        v40 = OUTLINED_FUNCTION_89_0();
        v7(v40);
        if (v39)
        {
          goto LABEL_13;
        }

        sub_267EF7138();
        v41 = sub_267EF7158();
        v42 = OUTLINED_FUNCTION_89_0();
        v7(v42);
        if (v41 & 1) != 0 || (sub_267EF7148(), v43 = sub_267EF7158(), v44 = OUTLINED_FUNCTION_89_0(), v7(v44), (v43))
        {
LABEL_13:
          v89 = v7;
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v45 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
          v46 = v10[2];
          (v46)(v16, v19, v8);
          v47 = sub_267EF89F8();
          v48 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v48))
          {
            v49 = OUTLINED_FUNCTION_48();
            v88 = v48;
            v50 = v49;
            v87 = OUTLINED_FUNCTION_52();
            v92[0] = v87;
            *v50 = 136315138;
            OUTLINED_FUNCTION_288();
            v46();
            OUTLINED_FUNCTION_89_0();
            v51 = sub_267EF9098();
            v53 = v52;
            v7 = v89;
            (v89)(v16, v8);
            v54 = sub_267BA33E8(v51, v53, v92);

            *(v50 + 4) = v54;
            _os_log_impl(&dword_267B93000, v47, v88, "#SendMessageConfirmIntentFlow audio destination is %s", v50, 0xCu);
            OUTLINED_FUNCTION_11_42();
            OUTLINED_FUNCTION_32_0();
          }

          else
          {

            v7 = v89;
            (v89)(v16, v8);
          }

          v83 = (v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences);
          v84 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 24);
          v85 = v83[4];
          __swift_project_boxed_opaque_existential_0(v83, v84);
          v63 = (*(v85 + 32))(v84, v85);
          (v7)(v19, v8);
          goto LABEL_21;
        }

        (v7)(v19, v8);
LABEL_19:
        v55 = v1[5];
        v56 = v1[6];
        OUTLINED_FUNCTION_106_5(v1 + 2);
        v57 = OUTLINED_FUNCTION_16_1();
        v58(v57);
        v59 = v93;
        OUTLINED_FUNCTION_13_37(v92);
        sub_267DBF878();
        OUTLINED_FUNCTION_104_8();
        if ((v59 & 1) == 0)
        {
          v70 = v1[5];
          v71 = v1[6];
          OUTLINED_FUNCTION_106_5(v1 + 2);
          v72 = OUTLINED_FUNCTION_16_1();
          v73(v72);
          v8 = v93;
          __swift_project_boxed_opaque_existential_0(v92, v93);
          OUTLINED_FUNCTION_16_1();
          sub_267EF3C48();
          OUTLINED_FUNCTION_104_8();
          v63 = 0;
          goto LABEL_21;
        }

LABEL_20:
        v8 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 32);
        __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 24));
        v60 = *(v8 + 16);
        v61 = OUTLINED_FUNCTION_38_0();
        v63 = v62(v61);
LABEL_21:
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v64 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v64, qword_280240FB0);
        v65 = sub_267EF89F8();
        v66 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_5_2(v66))
        {
          OUTLINED_FUNCTION_48();
          v92[0] = OUTLINED_FUNCTION_64_2();
          *v8 = 136446210;
          if (v63)
          {
            v67 = 0x64656C62616E65;
          }

          else
          {
            v67 = 0x64656C6261736964;
          }

          if (v63)
          {
            v68 = 0xE700000000000000;
          }

          else
          {
            v68 = 0xE800000000000000;
          }

          sub_267BA33E8(v67, v68, v92);
          OUTLINED_FUNCTION_105_11();
          *(v8 + 4) = v7;
          _os_log_impl(&dword_267B93000, v65, v66, "#SendMessageConfirmIntentFlow AutoSend setting is %{public}s", v8, 0xCu);
          OUTLINED_FUNCTION_11_42();
          OUTLINED_FUNCTION_26();
        }

        return v63 & 1;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    }

    sub_267B9F98C(v7, &dword_28022C758, &qword_267F0EDF0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_9_45();
  v27 = OUTLINED_FUNCTION_10_0();
  v28(v27);
  __swift_project_boxed_opaque_existential_0(v92, v93);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3C28();
  OUTLINED_FUNCTION_104_8();
  OUTLINED_FUNCTION_9_45();
  v29 = OUTLINED_FUNCTION_10_0();
  v30(v29);
  __swift_project_boxed_opaque_existential_0(v92, v93);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3B58();
  OUTLINED_FUNCTION_104_8();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v74 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v74, qword_280240FB0);
  v75 = sub_267EF89F8();
  v76 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_36(v76))
  {
    v77 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v77);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v78, v79, v80, v81, v82, 2u);
    OUTLINED_FUNCTION_26();
  }

  v63 = 0;
  return v63 & 1;
}

uint64_t sub_267E27B5C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  *(*(*(v2 + 216) + 16) + 16) = a1;
  v3 = [*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent) content];
  if (v3)
  {
    v4 = v3;
    v5 = sub_267EF9028();

    v6 = *(*(v2 + 216) + 16);

    OUTLINED_FUNCTION_108();
    sub_267EF9138();
    OUTLINED_FUNCTION_54();

    *(v6 + 40) = v5;
  }

  sub_267EF6FF8();
  result = sub_267EF6FC8();
  if (result)
  {
    sub_267EF6FA8();

    v8 = sub_267EF86A8();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for AutoSendPersonalizationDataRecorder();
      sub_267D0FB70(v9);
      v11 = v10;

      *(*(*(v2 + 216) + 16) + 24) = v11;
      return result;
    }
  }

  *(*(*(v2 + 216) + 16) + 24) = 0;
  return result;
}

uint64_t sub_267E27DE8()
{
  OUTLINED_FUNCTION_1_71();
  sub_267E28EE0(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_childFlowFactory);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_app);

  v5 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender));
  v6 = v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_conversationEventStore;

  return sub_267B9EF14(v6);
}

uint64_t sub_267E27EAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_1_71();
  sub_267E28EE0(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_childFlowFactory);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_app);

  v5 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender));
  sub_267B9EF14(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_conversationEventStore);
  return v0;
}

uint64_t sub_267E27F70()
{
  sub_267E27EAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267E27FF0()
{
  result = type metadata accessor for SendMessageConfirmIntentFlow.State(319);
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

void sub_267E280E4()
{
  sub_267D75CF8();
  if (v0 <= 0x3F)
  {
    sub_267E28158();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267E28158()
{
  if (!qword_28022C748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C750, qword_267F0B260);
    v0 = sub_267EF3D98();
    if (!v1)
    {
      atomic_store(v0, &qword_28022C748);
    }
  }
}

uint64_t sub_267E281F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267E20A10();
}

uint64_t sub_267E282FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E28344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E283A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_267E28414()
{
  result = qword_28022C770;
  if (!qword_28022C770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C768, &qword_267F0B308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C770);
  }

  return result;
}

uint64_t sub_267E28478(uint64_t a1, void *a2)
{
  v89 = a2;
  v4 = sub_267EF70D8();
  OUTLINED_FUNCTION_23();
  v84 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v82 = v10 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB78, &unk_267F08340);
  v11 = OUTLINED_FUNCTION_22(v86);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6();
  v83 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v80 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - v26;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v28, qword_280240FB0);
  v29 = OUTLINED_FUNCTION_14_1();
  sub_267BB170C(v29, v30, v31, v32);
  v88 = v2;
  v33 = sub_267EF89F8();
  v34 = sub_267EF95D8();
  v35 = OUTLINED_FUNCTION_5_2(v34);
  v87 = a1;
  v85 = v24;
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_48();
    v37 = OUTLINED_FUNCTION_52();
    v81 = v15;
    v38 = v37;
    v91[0] = v37;
    *v36 = 136315138;
    OUTLINED_FUNCTION_97_12();
    sub_267BB170C(v39, v40, v41, &unk_267EFDCA0);
    v42 = sub_267EF9098();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_89_0();
    sub_267B9F98C(v45, v46, &unk_267EFDCA0);
    v47 = sub_267BA33E8(v42, v44, v91);

    *(v36 + 4) = v47;
    _os_log_impl(&dword_267B93000, v33, v34, "#AutoSendEnablementUtils currentRespondMode is: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v15 = v81;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    sub_267B9F98C(v27, &qword_2802295B0, &unk_267EFDCA0);
  }

  sub_267B9AFEC(v89, v91);
  v48 = sub_267EF89F8();
  v49 = sub_267EF95D8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_48();
    v90 = OUTLINED_FUNCTION_52();
    *v50 = 136315138;
    OUTLINED_FUNCTION_13_37(v91);
    if (sub_267DBF878())
    {
      v51 = 1702195828;
    }

    else
    {
      v51 = 0x65736C6166;
    }

    __swift_destroy_boxed_opaque_existential_0(v91);
    v52 = OUTLINED_FUNCTION_108();
    sub_267BA33E8(v52, v53, v54);
    OUTLINED_FUNCTION_54();

    *(v50 + 4) = v51;
    _os_log_impl(&dword_267B93000, v48, v49, "#AutoSendEnablementUtils deviceState supports compact view is: %s", v50, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  v55 = v85;
  sub_267EF70A8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v4);
  v59 = *(v86 + 48);
  sub_267BB170C(v87, v15, &qword_2802295B0, &unk_267EFDCA0);
  sub_267BB170C(v55, &v15[v59], &qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_5_1(v15, 1, v4);
  if (!v61)
  {
    v60 = v83;
    sub_267BB170C(v15, v83, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_5_1(&v15[v59], 1, v4);
    if (!v61)
    {
      v62 = v84;
      v63 = &v15[v59];
      v64 = v82;
      (*(v84 + 32))(v82, v63, v4);
      OUTLINED_FUNCTION_2_57();
      sub_267E282FC(v65, v66);
      v67 = sub_267EF8FE8();
      v68 = *(v62 + 8);
      v68(v64, v4);
      sub_267B9F98C(v55, &qword_2802295B0, &unk_267EFDCA0);
      v68(v60, v4);
      sub_267B9F98C(v15, &qword_2802295B0, &unk_267EFDCA0);
      if ((v67 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    sub_267B9F98C(v55, &qword_2802295B0, &unk_267EFDCA0);
    (*(v84 + 8))(v60, v4);
LABEL_20:
    sub_267B9F98C(v15, &qword_28022BB78, &unk_267F08340);
    goto LABEL_25;
  }

  sub_267B9F98C(v55, &qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_5_1(&v15[v59], 1, v4);
  if (!v61)
  {
    goto LABEL_20;
  }

  sub_267B9F98C(v15, &qword_2802295B0, &unk_267EFDCA0);
LABEL_22:
  v69 = v89[4];
  __swift_project_boxed_opaque_existential_0(v89, v89[3]);
  OUTLINED_FUNCTION_61_0();
  if (sub_267DBF878())
  {
    v91[3] = &type metadata for Features;
    v91[4] = sub_267BAFCAC();
    LOBYTE(v91[0]) = 8;
    v70 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v91);
    if (v70)
    {
      return 1;
    }

    v72 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v72, v78))
    {
      v79 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v79);
      v77 = "#AutoSendEnablementUtils Auto Send Enablement feature flag is not enabled.";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_25:
  v72 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_10(v74);
    v77 = "#AutoSendEnablementUtils device type and/or response mode is not eligible for auto-enablement.";
LABEL_27:
    OUTLINED_FUNCTION_5_54(&dword_267B93000, v75, v76, v77);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_28:

  return 0;
}

uint64_t sub_267E28B54(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - v6;
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    v8 = sub_267EF70D8();
    v9 = 0;
  }

  else
  {
    v8 = sub_267EF70D8();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  if ((sub_267E28478(v7, a1) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "#AutoSendEnablementUtils user is not being considered for AutoEnablement";
    goto LABEL_20;
  }

  ConversationEventStore.init()(v34);
  v19 = sub_267C9810C(v34, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  sub_267B9EF14(v34);
  if ((v19 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "#AutoSendEnablementUtils user is not eligible because they have used AutoSend in the past, and turned it off";
LABEL_20:
    _os_log_impl(&dword_267B93000, v27, v28, v30, v29, 2u);
    MEMORY[0x26D60A7B0](v29, -1, -1);
LABEL_21:

    v32 = 0;
    goto LABEL_24;
  }

  sub_267E579A0(v34);
  v20 = sub_267E57BAC(0);
  sub_267C48D80(v34);
  if (v20)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_267B93000, v22, v23, "#AutoSendEnablementUtils: In manual testing mode", v24, 2u);
      MEMORY[0x26D60A7B0](v24, -1, -1);
    }

    v25 = -2400.0;
  }

  else
  {
    v25 = -5184000.0;
  }

  v32 = sub_267C981F4(a2, 16, 0.71, v25);
LABEL_24:
  sub_267B9F98C(v7, &qword_2802295B0, &unk_267EFDCA0);
  return v32 & 1;
}

uint64_t sub_267E28EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_267E28F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_267E28F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_267BA9F38(0, &qword_28022C788, 0x277D47AE8);
  v6 = sub_267BF88F4();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = sub_267EF8FF8();
  [v6 setNotificationId_];

  v10 = *MEMORY[0x277D48758];
  v11 = sub_267EF9028();
  sub_267E2A280(v11, v12, v6);
  v13 = sub_267E298E0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_267B93000, v15, v16, "#PlayNotificationSoundAction Playing notification sound", v17, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v18 = *(v3 + 32);
  v19 = v18[5];
  v20 = v18[6];
  __swift_project_boxed_opaque_existential_0(v18 + 2, v19);
  (*(v20 + 16))(v23, v19, v20);
  __swift_project_boxed_opaque_existential_0(v23, v23[3]);
  v21 = swift_allocObject();
  v21[2] = v13;
  v21[3] = a1;
  v21[4] = a2;
  sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);

  sub_267EF4268();

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t sub_267E29180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = sub_267EF43D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  sub_267E2A2F0(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = a2;
    (*(v16 + 32))(v22, v14, v15);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    (*(v16 + 16))(v20, v22, v15);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v47 = a4;
      v27 = v26;
      v46 = swift_slowAlloc();
      v50 = v46;
      *v27 = 136315138;
      sub_267E2A480(&qword_28022B5B0, 255, MEMORY[0x277D5BE90]);
      v28 = sub_267EF9E58();
      v45 = a3;
      v30 = v29;
      v31 = *(v16 + 8);
      v31(v20, v15);
      v32 = sub_267BA33E8(v28, v30, &v50);
      a3 = v45;

      *(v27 + 4) = v32;
      _os_log_impl(&dword_267B93000, v24, v25, "#PlayNotificationSoundAction Playing notification sound failed: %s", v27, 0xCu);
      v33 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26D60A7B0](v33, -1, -1);
      v34 = v27;
      a4 = v47;
      MEMORY[0x26D60A7B0](v34, -1, -1);

      v31(v22, v15);
    }

    else
    {

      v35 = *(v16 + 8);
      v35(v20, v15);
      v35(v22, v15);
    }

    a2 = v48;
  }

  else
  {
    sub_267E2A360(v14);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v36 = sub_267EF8A08();
  __swift_project_value_buffer(v36, qword_280240FB0);
  v37 = sub_267EF89F8();
  v38 = sub_267EF95D8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = a3;
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_267B93000, v37, v38, "#PlayNotificationSoundAction Finished playing notification sound", v40, 2u);
    v41 = v40;
    a3 = v39;
    MEMORY[0x26D60A7B0](v41, -1, -1);
  }

  v42 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v42);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = a2;
  v43[5] = a3;
  v43[6] = a4;

  sub_267E8FA18();
}

uint64_t sub_267E29690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_267E296B4, 0, 0);
}

uint64_t sub_267E296B4()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D84F78];
  v3 = MEMORY[0x277D84A98];
  v4 = MEMORY[0x277D84AC0];
  sub_267EF9418();
  v5 = *(MEMORY[0x277D857D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_267E29790;
  v7 = *(v0 + 16);

  return MEMORY[0x282200440](v0 + 48, v7, v2 + 8, v3, v4);
}

uint64_t sub_267E29790()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 40);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_267E29880, 0, 0);
}

uint64_t sub_267E29880()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E298E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26[-1] - v3;
  v5 = sub_267EF2E38();
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v12 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26[-1] - v13;
  v15 = *(v0 + 32);
  v16 = *(sub_267BE4AD0() + 16);

  v17 = v15[5];
  v18 = v15[6];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v17);
  (*(v18 + 8))(v26, v17, v18);
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  sub_267EF3B68();
  __swift_destroy_boxed_opaque_existential_0(v26);
  v19 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  (*(v8 + 16))(v12, v14, v5);
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v16;
  (*(v8 + 32))(&v21[v20], v12, v5);
  *&v21[(v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v25;

  sub_267E8FA18();
  v23 = v22;
  (*(v8 + 8))(v14, v5);
  return v23;
}

uint64_t sub_267E29B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_267E29B8C, 0, 0);
}

uint64_t sub_267E29B8C()
{
  if (qword_280228818 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[2];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = sub_267BAF0DC(v6);

    _os_log_impl(&dword_267B93000, v3, v4, "#PlayNotificationSoundAction Converting %ld conversation members", v7, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v8 = v0[2];
  }

  v9 = v0[4];
  v10 = v0[2];
  v11 = sub_267BAF0DC(v10);
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v14 = v10 & 0xFFFFFFFFFFFFFF8;
  v15 = v10 + 32;
  while (v11 != v12)
  {
    if (v13)
    {
      v16 = MEMORY[0x26D609870](v12, v0[2]);
    }

    else
    {
      if (v12 >= *(v14 + 16))
      {
        goto LABEL_23;
      }

      v16 = *(v15 + 8 * v12);
    }

    v17 = v16;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_267EF9448())
    {
      v22 = sub_267EF89F8();
      v23 = sub_267EF95D8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_267B93000, v22, v23, "#PlayNotificationSoundAction Converting conversation members cancelled", v24, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      goto LABEL_19;
    }

    v18 = v0[3];
    v19 = *(*(v9 + 32) + 416);

    sub_267BC20F4(v18, 0, 0, v19, v17);

    ++v12;
  }

  v17 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  if (os_log_type_enabled(v17, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_267B93000, v17, v20, "#PlayNotificationSoundAction Finished converting conversation members", v21, 2u);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_19:

  OUTLINED_FUNCTION_17();

  return v25();
}

void *sub_267E29E68()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_267E29E98()
{
  sub_267E29E68();

  return swift_deallocClassInstance();
}

uint64_t sub_267E29EF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267E29F94()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_267E29FDC(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D5C180] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267BF1CB4;

  return MEMORY[0x2821BBC58](a1, a2);
}

uint64_t sub_267E2A084()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267E2A160()
{
  v2 = *(sub_267EF2E38() - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_267BF1CB4;
  v8 = OUTLINED_FUNCTION_2_58();

  return sub_267E29B68(v8, v9, v10, v11, v12, v6);
}

void sub_267E2A280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setNotificationType_];
}

uint64_t sub_267E2A2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E2A360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267E2A3C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_267CFB43C;
  v8 = OUTLINED_FUNCTION_2_58();

  return sub_267E29690(v8, v9, v10, v11, v5, v6);
}

uint64_t sub_267E2A480(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267E2A4D0()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v1[19] = *v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_267EF48A8();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E2A614()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[18];
  v0[25] = *(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_nextConversation) + 128);
  v2 = *__swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns + 24));

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_267E2A6E0;

  return sub_267D4088C();
}

uint64_t sub_267E2A6E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 208);
  *v3 = *v1;
  *(v2 + 216) = v6;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E2A7E4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  sub_267EF3CA8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267EF7C18();
  v0[29] = v6;
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v7);
  (*(v8 + 8))(v7, v8);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_267EF3B98();
  sub_267EDFEC8((v0 + 7));
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_267E2A984;
  v11 = v0[20];

  return sub_267BF57AC();
}

uint64_t sub_267E2A984()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *(v4 + 232);
  v7 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E2AA98()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  sub_267EF4818();
  v5 = sub_267EF4198();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[31] = sub_267EF4188();
  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v8);
  (*(v9 + 8))(v8, v9);
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  v11 = sub_267EF3C48();
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_267E2ABF8;
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[17];

  return sub_267BCF3A4(v16, v13, v14, v15, v11 & 1);
}

uint64_t sub_267E2ABF8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *(v5 + 248);
  v8 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v9 = v8;
  *(v3 + 264) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E2AD24()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E2ADA4()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];

  (*(v5 + 8))(v3, v4);

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267E2AE54()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];

  (*(v5 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v6 = v0[33];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267E2AF00()
{
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_confirmedResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_catProvider));
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_nextConversation);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_featureFlags));
  v2 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns);

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_267E2AF70()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_confirmedResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_catProvider));
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_nextConversation);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns));
  return v0;
}

uint64_t sub_267E2AFE0()
{
  sub_267E2AF70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContinueToReadOfferFlowStrategy()
{
  result = qword_28022C7A8;
  if (!qword_28022C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E2B08C()
{
  result = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
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

uint64_t sub_267E2B154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267E2B1EC;

  return sub_267E2A4D0();
}

uint64_t sub_267E2B1EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E2B2D0()
{
  v1 = *v0;
  v2 = sub_267E2D7A4(*v0, &selRef_conversationIdentifiers);
  if (!v2 || (v3 = *(v2 + 16), , v3 != 1))
  {
    v4 = sub_267E2D7A4(v1, &selRef_notificationIdentifiers);
    if (!v4 || (v5 = *(v4 + 16), , !v5))
    {
      v6 = sub_267E2D71C(v1, &selRef_senders, &qword_28022BB60, 0x277CD3E90);
      if (!v6 || (v7 = sub_267BAF0DC(v6), , !v7))
      {
        v8 = sub_267E2D71C(v1, &selRef_speakableGroupNames, &qword_280229ED0, 0x277CD4188);
        if (!v8 || (v9 = sub_267BAF0DC(v8), , !v9))
        {
          v10 = *(v0 + 8);
          if (*(v0 + 16))
          {
            if (*(v0 + 16) != 1 || v10 != 1)
            {
              return 0;
            }
          }

          else if (v10 != 1)
          {
            return 0;
          }
        }
      }
    }
  }

  return 1;
}

BOOL sub_267E2B428()
{
  v1 = *(v0 + 80) == 2 && *(v0 + 72) == 0;
  result = 0;
  if (v1)
  {
    v2 = *(v0 + 64);
    if (([v2 attributes] & 2) != 0)
    {
      v3 = sub_267E2D7A4(v2, &selRef_conversationIdentifiers);
      if (!v3)
      {
        return 1;
      }

      v4 = *(v3 + 16);

      if (!v4)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_267E2B4DC()
{
  if (sub_267BF42CC() == 1 && (sub_267BE4AD0(), sub_267DE1640(), v1 = sub_267D3281C(), , , v1 == 1))
  {
    return [*(v0 + 64) attributes] == 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E2B564()
{
  if (sub_267BF42CC() != 1)
  {
    return 0;
  }

  sub_267BE4AD0();
  sub_267DE1640();
  v1 = sub_267D3281C(v0);

  if (v1 == 1)
  {
    return 1;
  }

  sub_267BE4AD0();
  v3 = sub_267BF4920();

  return v3;
}

BOOL sub_267E2B5FC()
{
  if (sub_267E2B4DC())
  {
    sub_267BE4AD0();
    v0 = sub_267BF4920();

    return !v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E2B648()
{
  if (sub_267BF42CC() == 1)
  {
    OUTLINED_FUNCTION_83();
    v1 = *(v0 + 56);
    if (sub_267BAF0DC(v1))
    {
      v2 = v1 & 0xC000000000000001;
      sub_267BBD0EC(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {

        MEMORY[0x26D609870](0, v1);
        OUTLINED_FUNCTION_43();
      }

      else
      {
        v2 = *(v1 + 32);
      }

      OUTLINED_FUNCTION_83();
      sub_267BE4994(v2 + 40, &v5);

      if (*(&v6 + 1))
      {
        v3 = 1;
LABEL_10:
        sub_267B9FF34(&v5, &qword_280229910, &unk_267EFEB70);
        return v3;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }

    v3 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_267E2B73C(char a1, void *a2)
{
  v3 = v2;
  *(&v68 + 1) = &type metadata for Features;
  *&v69 = sub_267BAFCAC();
  LOBYTE(v67) = 12;
  v6 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v67);
  if ((v6 & 1) == 0 || (a1 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_83();
  sub_267BE4994((a2 + 5), &v64);
  if (!*(&v65 + 1))
  {
    sub_267B9FF34(&v64, &qword_280229910, &unk_267EFEB70);
LABEL_10:
    if (qword_280228818 != -1)
    {
LABEL_32:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v16))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v17, v18, "#ConversationStateManager using non-summary components for readableComponents before creating navigation map");
      OUTLINED_FUNCTION_32_0();
    }

    v19 = a2[4];
    OUTLINED_FUNCTION_36_22();
    v20 = a2[3];
    a2[3] = v19;

    goto LABEL_14;
  }

  sub_267BE58F4(&v64, &v67);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v7 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v9))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_1_1(&dword_267B93000, v10, v11, "#ConversationStateManager using ConversationSummaryComponent for readableComponents before creating navigation map");
    OUTLINED_FUNCTION_32_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B38, &unk_267F02C60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267EFC020;
  sub_267BE58F4(&v67, v12 + 32);
  OUTLINED_FUNCTION_36_22();
  v13 = a2[3];
  a2[3] = v12;
LABEL_14:

  OUTLINED_FUNCTION_83();
  v21 = a2[3];
  v61 = *(v21 + 16);
  v58 = v21 + 32;
  v59 = v21;

  for (i = a2; ; a2 = i)
  {
    *&v23 = OUTLINED_FUNCTION_6_45();
    if (!v26)
    {
      if (v22 >= *(v59 + 16))
      {
        goto LABEL_30;
      }

      *&v64 = v22;
      sub_267B9AFEC(v58 + 40 * v22, &v64 + 8);
      v25 = v64;
      v24 = v65;
      v23 = v66;
    }

    v67 = v25;
    v68 = v24;
    v69 = v23;
    if (!v23)
    {
    }

    v62 = v25;
    sub_267BE58F4((&v67 + 8), &v64);
    v27 = v66;
    __swift_project_boxed_opaque_existential_0(&v64, *(&v65 + 1));
    v28 = *(v27 + 32);
    v29 = OUTLINED_FUNCTION_33();
    v31 = v30(v29);
    v33 = v32;
    v34 = a2[11];
    v35 = a2[12];
    OUTLINED_FUNCTION_66_3();

    v36 = *(v3 + 392);
    swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v3 + 392);
    a2 = v3;
    *(v3 + 392) = 0x8000000000000000;
    sub_267BA9948();
    OUTLINED_FUNCTION_5_55();
    if (__OFADD__(v39, v40))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v3 = v37;
    v41 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
    if (sub_267EF9C68())
    {
      break;
    }

LABEL_23:
    if (v41)
    {

      v44 = v63;
      OUTLINED_FUNCTION_13_38();
      v47 = (v45 + v3 * v46);
      v48 = v47[2];
      *v47 = v62;
      v47[1] = v34;
      v47[2] = v35;
    }

    else
    {
      v44 = v63;
      OUTLINED_FUNCTION_7_44(v63 + 8 * (v3 >> 6));
      v50 = (v49 + 16 * v3);
      *v50 = v31;
      v50[1] = v33;
      OUTLINED_FUNCTION_13_38();
      v53 = (v51 + v3 * v52);
      *v53 = v62;
      v53[1] = v34;
      v53[2] = v35;
      v54 = *(v63 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_31;
      }

      *(v63 + 16) = v56;
    }

    v3 = a2;
    a2[49] = v44;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(&v64);
  }

  v42 = sub_267BA9948();
  if ((v41 & 1) == (v43 & 1))
  {
    v3 = v42;
    goto LABEL_23;
  }

  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267E2BBA0(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = sub_267EF2D28();
  v3[34] = v4;
  v5 = *(v4 - 8);
  v3[35] = v5;
  v6 = *(v5 + 64) + 15;
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for ConversationSummaryComponent();
  v3[37] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_267E2BC8C()
{
  v2 = v1[33];
  OUTLINED_FUNCTION_83();
  v3 = *(v2 + 56);
  v1[39] = v3;
  if (v3 >> 62)
  {
LABEL_32:
    v4 = OUTLINED_FUNCTION_12_38();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_29_26();
  }

  v1[40] = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  v6 = 0;
  while (1)
  {
    v7 = v1[39];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v0 = MEMORY[0x26D609870](v6);
    }

    else
    {
      OUTLINED_FUNCTION_15_36(v5, v7);
      if (v9)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_23_24(v8 + 8 * v6);
    }

    v1[41] = v0;
    v1[42] = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_83();
    v10 = *(v0 + 24);
    if (*(v10 + 16))
    {
      break;
    }

LABEL_14:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_2_59(v17);
      OUTLINED_FUNCTION_32_0();
    }

    v6 = v1[42];
    if (v6 == v1[40])
    {
      v23 = v1[39];

LABEL_27:
      v24 = v1[38];
      v25 = v1[36];

      v26 = v1[1];
      OUTLINED_FUNCTION_40();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_267B9AFEC(v10 + 32, (v1 + 2));
  v11 = OUTLINED_FUNCTION_3_66();
  v12(v11);
  OUTLINED_FUNCTION_17_27();
  if (!v13)
  {
    if (OUTLINED_FUNCTION_29_26())
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (!OUTLINED_FUNCTION_12_38())
  {
LABEL_13:

    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    goto LABEL_14;
  }

LABEL_21:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v29 = OUTLINED_FUNCTION_22_27();
    v19 = MEMORY[0x26D609870](v29);
LABEL_24:
    v1[43] = v19;

    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    v20 = swift_task_alloc();
    v1[44] = v20;
    *v20 = v1;
    OUTLINED_FUNCTION_1_72(v20);
    OUTLINED_FUNCTION_40();

    sub_267DE2334(v21);
  }

  else
  {
    OUTLINED_FUNCTION_28_30();
    if (v18)
    {
      v19 = *(v6 + 32);
      goto LABEL_24;
    }

    __break(1u);
  }
}

uint64_t sub_267E2BF20()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 352);
  v11 = *v0;
  *(v2 + 360) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267E2C010()
{
  if (*(v1 + 360) >= 10.0)
  {
    v21 = *(v1 + 328);
    v22 = *(v1 + 264);
    sub_267DE1640();
    *(v1 + 368) = sub_267C8F198(v23);

    v24 = *__swift_project_boxed_opaque_existential_0((v22 + 472), *(v22 + 496));
    v25 = swift_task_alloc();
    *(v1 + 376) = v25;
    *v25 = v1;
    v25[1] = sub_267E2C33C;
    v26 = *(v1 + 328);
    v27 = *(v1 + 248);
    v28 = *(v1 + 256);
    OUTLINED_FUNCTION_40();

    __asm { BR              X4 }
  }

  v2 = *(v1 + 328);

  {
    v4 = *(v1 + 336);
    v5 = *(v1 + 312);
    if (v4 == *(v1 + 320))
    {
      v31 = *(v1 + 312);

      v32 = *(v1 + 304);
      v33 = *(v1 + 288);

      v34 = *(v1 + 8);
      OUTLINED_FUNCTION_40();

      __asm { BRAA            X1, X16 }
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v0 = MEMORY[0x26D609870](*(v1 + 336));
    }

    else
    {
      OUTLINED_FUNCTION_15_36(i, v5);
      if (v7)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_23_24(v6 + 8 * v4);
    }

    *(v1 + 328) = v0;
    *(v1 + 336) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v37 = OUTLINED_FUNCTION_22_27();
      v17 = MEMORY[0x26D609870](v37);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_83();
    v8 = *(v0 + 24);
    if (!*(v8 + 16))
    {
      goto LABEL_13;
    }

    sub_267B9AFEC(v8 + 32, v1 + 16);
    v9 = OUTLINED_FUNCTION_3_66();
    v10(v9);
    OUTLINED_FUNCTION_17_27();
    if (!v11)
    {
      if (OUTLINED_FUNCTION_29_26())
      {
        break;
      }

      goto LABEL_12;
    }

    if (OUTLINED_FUNCTION_12_38())
    {
      break;
    }

LABEL_12:

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
LABEL_13:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v14))
    {
      v15 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_2_59(v15);
      OUTLINED_FUNCTION_32_0();
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_28_30();
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = *(v4 + 32);
LABEL_22:
  *(v1 + 344) = v17;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v18 = swift_task_alloc();
  *(v1 + 352) = v18;
  *v18 = v1;
  OUTLINED_FUNCTION_1_72();
  OUTLINED_FUNCTION_40();

  sub_267DE2334(v19);
}

uint64_t sub_267E2C33C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 376);
  *v3 = *v0;
  *(v2 + 384) = v6;
  *(v2 + 392) = v7;

  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_267E2C42C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 328);
  v3 = *(v2 + 160);
  *(v2 + 152) = *(v0 + 384);
  *(v2 + 160) = v1;

  if (v1)
  {
    v4 = *(v0 + 368);
    v5 = *(v0 + 344);
    v6 = *(v0 + 328);
    v7 = *(v0 + 304);
    v48 = v4;
    v49 = *(v0 + 296);
    v50 = *(v0 + 288);
    v51 = *(v0 + 384);
    v8 = *(v0 + 264);
    v52 = *(v0 + 280);
    v53 = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFCA40;
    *(inited + 32) = v5;
    v54 = v5;
    v10 = sub_267BE2268(inited);
    v46 = v11;
    v47 = v10;
    v12 = v8[5];
    v13 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v12);
    v14 = *(v13 + 8);
    v15 = v4;
    v14(v12, v13);
    v16 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    v17 = v7 + *(v49 + 48);
    sub_267EF3B68();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    *(v7 + 32) = v51;
    *(v7 + 40) = v1;
    *(v7 + 48) = 0;
    *(v7 + 56) = v47;
    *(v7 + 64) = v46;
    sub_267EF2D18();
    v18 = sub_267EF2CE8();
    v20 = v19;
    (*(v52 + 8))(v50, v53);
    *(v7 + 72) = v18;
    *(v7 + 80) = v20;
    *(v7 + 88) = v48;
    *(v7 + 96) = 0;
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v21 = v6[4];
    v6[4] = v6[3];

    *(v0 + 160) = v49;
    *(v0 + 168) = sub_267BFBF08(&qword_28022C7C0, type metadata accessor for ConversationSummaryComponent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
    sub_267E2DFFC(v7, boxed_opaque_existential_0);

    OUTLINED_FUNCTION_66_3();
    sub_267E2E060(v0 + 136, (v6 + 5));
    swift_endAccess();
  }

  else
  {
    v6 = *(v0 + 368);
    v24 = *(v0 + 328);
  }

  while (1)
  {
    v25 = *(v0 + 336);
    v26 = *(v0 + 312);
    if (v25 == *(v0 + 320))
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D609870](*(v0 + 336));
    }

    else
    {
      OUTLINED_FUNCTION_15_36(v23, v26);
      if (v28)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_23_24(v27 + 8 * v25);
    }

    *(v0 + 328) = v6;
    *(v0 + 336) = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v45 = OUTLINED_FUNCTION_22_27();
      v38 = MEMORY[0x26D609870](v45);
LABEL_23:
      *(v0 + 344) = v38;

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v39 = swift_task_alloc();
      *(v0 + 352) = v39;
      *v39 = v0;
      v40 = OUTLINED_FUNCTION_1_72();

      sub_267DE2334(v40);
      return;
    }

    OUTLINED_FUNCTION_83();
    v29 = v6[3];
    if (*(v29 + 16))
    {
      sub_267B9AFEC(v29 + 32, v0 + 16);
      v30 = OUTLINED_FUNCTION_3_66();
      v31(v30);
      OUTLINED_FUNCTION_17_27();
      if (v32)
      {
        if (OUTLINED_FUNCTION_12_38())
        {
LABEL_20:
          if ((v25 & 0xC000000000000001) != 0)
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_28_30();
          if (!v37)
          {
            __break(1u);
            return;
          }

          v38 = *(v25 + 32);
          goto LABEL_23;
        }
      }

      else if (OUTLINED_FUNCTION_29_26())
      {
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v33 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
    v34 = sub_267EF89F8();
    v35 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v35))
    {
      v36 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_2_59(v36);
      OUTLINED_FUNCTION_32_0();
    }
  }

  v41 = *(v0 + 312);

  v42 = *(v0 + 304);
  v43 = *(v0 + 288);

  v44 = *(v0 + 8);

  v44();
}

uint64_t sub_267E2C8B0()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_4_58();
  v3 = *(v1 + 56);
  v11 = MEMORY[0x277D84F90];
  v4 = sub_267BAF0DC(v3);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v11;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](i, v3);
      v7 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = *(v7 + 112);
    if (v8 && (*(v7 + 104) == v2 ? (v9 = v8 == v0) : (v9 = 0), v9 || (sub_267EF9EA8() & 1) != 0))
    {
      sub_267EF9BD8();
      v10 = *(v11 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      result = sub_267EF9BE8();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_267E2C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64[1] = a4;
  OUTLINED_FUNCTION_83();
  v9 = *(v5 + 384);

  v67 = a1;
  v10 = sub_267BD9C8C(a1, a2, v9);

  v65 = a3;
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = v65 + 32;
    OUTLINED_FUNCTION_83();
    v66 = v10;
    do
    {
      sub_267B9AFEC(v12, v74);
      v13 = v75;
      v14 = v76;
      __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
      v15 = *(v14 + 48);
      OUTLINED_FUNCTION_218();
      v16();
      v17 = *(v5 + 56);
      v68 = v11;
      if ((v17 & 0xC000000000000001) != 0)
      {

        v13 = MEMORY[0x26D609870](v10, v17);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
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
          __break(1u);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_28_30();
        if (v10 >= v18)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_23_24(v17 + 8 * v10);
      }

      sub_267B9AFEC(v74, v71);
      OUTLINED_FUNCTION_66_3();
      v19 = v72;
      v20 = v73;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
      v22 = *(*(v19 - 8) + 64);
      MEMORY[0x28223BE20](v21);
      v24 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      sub_267BE2B94(v24, (v13 + 24), v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v71);
      swift_endAccess();

      v26 = v76;
      __swift_project_boxed_opaque_existential_0(v74, v75);
      v27 = *(v26 + 32);
      v28 = OUTLINED_FUNCTION_43();
      v69 = v29(v28, v26);
      v31 = v30;
      v32 = *(v5 + 56);
      if ((v32 & 0xC000000000000001) != 0)
      {
        v52 = *(v5 + 56);

        v19 = MEMORY[0x26D609870](v10, v32);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v10 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_25_31(v32 + 8 * v10);
      }

      OUTLINED_FUNCTION_83();
      v33 = *(v19 + 24);

      v34 = *(v33 + 16);

      OUTLINED_FUNCTION_66_3();
      v35 = a2;

      v36 = *(v5 + 392);
      swift_isUniquelyReferenced_nonNull_native();
      v70 = *(v5 + 392);
      v10 = v5;
      *(v5 + 392) = 0x8000000000000000;
      sub_267BA9948();
      OUTLINED_FUNCTION_5_55();
      if (__OFADD__(v39, v40))
      {
        goto LABEL_32;
      }

      v5 = v37;
      v41 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
      if (sub_267EF9C68())
      {
        v42 = sub_267BA9948();
        if ((v41 & 1) != (v43 & 1))
        {
          result = sub_267EF9F28();
          __break(1u);
          return result;
        }

        v5 = v42;
      }

      v44 = v34 - 1;
      v45 = v70;
      if (v41)
      {
        v46 = *(v70[7] + 24 * v5 + 16);
        OUTLINED_FUNCTION_26_29(v44);
        a2 = v35;
      }

      else
      {
        v70[(v5 >> 6) + 8] |= 1 << v5;
        v47 = (v45[6] + 16 * v5);
        *v47 = v69;
        v47[1] = v31;
        v48 = v45[7] + 24 * v5;
        OUTLINED_FUNCTION_26_29(v44);
        v49 = v45[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_34;
        }

        a2 = v35;
        v45[2] = v51;
      }

      v5 = v10;
      *(v10 + 392) = v45;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(v74);
      v12 += 40;
      v11 = v68 - 1;
      v10 = v66;
    }

    while (v68 != 1);
  }

  if (qword_280228818 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v53 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v53, qword_280240FB0);
  v54 = sub_267EF89F8();
  v55 = sub_267EF95D8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_61(v56);
    OUTLINED_FUNCTION_90_0(&dword_267B93000, v54, v55, "ConversationStateManager.appendComponentsToConversation Relogging isGroupMessage and readMessageType signals  here. Components are being appended to conversation and the signals logged in Conversation.init need to be logged again");
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_83();
  v57 = *(v5 + 56);
  v58 = v57 & 0xC000000000000001;
  sub_267BBD0EC(v10, (v57 & 0xC000000000000001) == 0, v57);
  if ((v57 & 0xC000000000000001) != 0)
  {

    MEMORY[0x26D609870](v10, v57);
    OUTLINED_FUNCTION_43();
  }

  else
  {
    OUTLINED_FUNCTION_25_31(v57 + 8 * v10);
  }

  v59 = *((v57 & 0xC000000000000001) + 0xA8);
  v60 = *(v58 + 168);

  v61 = v65;
  sub_267C38060(v65);

  OUTLINED_FUNCTION_66_3();
  sub_267BE5E38(v61);
  swift_endAccess();
  OUTLINED_FUNCTION_66_3();

  sub_267E2CFC8(v62);
  return swift_endAccess();
}

uint64_t sub_267E2CFC8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_267D302A8(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_267E2D070(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v57 = sub_267BAF0DC(a1);
  if (!v57)
  {
LABEL_23:
    OUTLINED_FUNCTION_66_3();

    sub_267E2CFC8(v52);
    return swift_endAccess();
  }

  v4 = 0;
  v55 = v3;
  v56 = v3 & 0xC000000000000001;
  v54 = v3 + 32;
  while (2)
  {
    sub_267BBD0EC(v4, v56 == 0, v3);
    if (v56)
    {
      v5 = MEMORY[0x26D609870](v4, v3);
    }

    else
    {
      v5 = *(v54 + 8 * v4);
    }

    v6 = __OFADD__(v4, 1);
    v7 = v4 + 1;
    if (v6)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      v58 = v7;
      *(v5 + 80) = 1;
      OUTLINED_FUNCTION_66_3();

      MEMORY[0x26D608F90](v8);
      sub_267BDECD0(*((v2[7] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_267EF9368();
      v9 = v2[7];
      swift_endAccess();
      v10 = *(v5 + 88);
      v11 = *(v5 + 96);
      if (!__OFSUB__(sub_267BAF0DC(v9), 1))
      {
        OUTLINED_FUNCTION_66_3();
        v12 = v2[48];
        swift_isUniquelyReferenced_nonNull_native();
        *&v65 = v2[48];
        OUTLINED_FUNCTION_218();
        sub_267BE4A04();
        v2[48] = v65;
        swift_endAccess();
        OUTLINED_FUNCTION_83();
        v13 = *(v5 + 24);
        v62 = *(v13 + 16);
        v59 = v13 + 32;
        v60 = v13;

        for (i = v5; ; v5 = i)
        {
          *&v15 = OUTLINED_FUNCTION_6_45();
          if (!v18)
          {
            if (v14 >= *(v60 + 16))
            {
              goto LABEL_25;
            }

            *&v65 = v14;
            sub_267B9AFEC(v59 + 40 * v14, &v65 + 8);
            v17 = v65;
            v16 = v66;
            v15 = v67;
          }

          v68[0] = v17;
          v68[1] = v16;
          v68[2] = v15;
          if (!v15)
          {
            break;
          }

          v63 = v17;
          sub_267BE58F4((v68 + 8), &v65);
          v19 = v67;
          __swift_project_boxed_opaque_existential_0(&v65, *(&v66 + 1));
          v20 = *(v19 + 32);
          v21 = OUTLINED_FUNCTION_43();
          v23 = v22(v21, v19);
          v25 = v24;
          v27 = *(v5 + 88);
          v26 = *(v5 + 96);
          OUTLINED_FUNCTION_66_3();

          v28 = v2[49];
          swift_isUniquelyReferenced_nonNull_native();
          v64 = v2[49];
          v29 = v2;
          v2[49] = 0x8000000000000000;
          OUTLINED_FUNCTION_33();
          sub_267BA9948();
          OUTLINED_FUNCTION_5_55();
          if (__OFADD__(v32, v33))
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v34 = v30;
          v35 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
          if (sub_267EF9C68())
          {
            OUTLINED_FUNCTION_33();
            v36 = sub_267BA9948();
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_29;
            }

            v34 = v36;
          }

          if (v35)
          {

            v38 = v64;
            OUTLINED_FUNCTION_13_38();
            v41 = (v39 + v34 * v40);
            v42 = v41[2];
            *v41 = v63;
            v41[1] = v27;
            v41[2] = v26;
          }

          else
          {
            v38 = v64;
            OUTLINED_FUNCTION_7_44(v64 + 8 * (v34 >> 6));
            v44 = (v43 + 16 * v34);
            *v44 = v23;
            v44[1] = v25;
            OUTLINED_FUNCTION_13_38();
            v47 = (v45 + v34 * v46);
            *v47 = v63;
            v47[1] = v27;
            v47[2] = v26;
            v48 = *(v64 + 16);
            v6 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v6)
            {
              goto LABEL_26;
            }

            *(v64 + 16) = v49;
          }

          v2 = v29;
          v29[49] = v38;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_0(&v65);
        }

        v50 = *(v5 + 24);
        OUTLINED_FUNCTION_66_3();

        sub_267BE5E38(v51);
        swift_endAccess();

        v4 = v58;
        v3 = v55;
        if (v58 != v57)
        {
          continue;
        }

        goto LABEL_23;
      }
    }

    break;
  }

  __break(1u);
LABEL_29:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

BOOL sub_267E2D478()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_83();
  v3 = *(v1 + 400);

  v4 = sub_267BC2F78(v2, v0, v3);

  return v4;
}

uint64_t sub_267E2D4E0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 128);

  v6 = *(v0 + 144);

  sub_267B9EF14(v0 + 152);
  v7 = *(v0 + 248);

  v8 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9FF34(v0 + 344, &qword_280229128, &unk_267EFC860);
  v9 = *(v0 + 384);

  v10 = *(v0 + 392);

  v11 = *(v0 + 400);

  v12 = *(v0 + 416);

  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  return __swift_destroy_boxed_opaque_existential_0((v0 + 472));
}

uint64_t getEnumTagSinglePayload for LongMessageInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LongMessageInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_267E2D648(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_267E2D688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267E2D71C(void *a1, SEL *a2, uint64_t a3, uint64_t *a4)
{
  v5 = [a1 *a2];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = OUTLINED_FUNCTION_22_27();
  sub_267BA9F38(v7, v8, a4);
  v9 = sub_267EF92F8();

  return v9;
}

uint64_t sub_267E2D7A4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267EF92F8();

  return v4;
}

uint64_t sub_267E2D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  v4[5] = type metadata accessor for MessageSummaryProvider();
  v4[6] = &off_2878D8D98;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_267E2D888, 0, 0);
}

uint64_t sub_267E2D888()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[19];
    OUTLINED_FUNCTION_83();
    sub_267C8F7C0(*(v2 + 24), (v0 + 7));
    if (v0[10])
    {
      v3 = v0[11];
      __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
      v4 = *(v3 + 16);
      v5 = OUTLINED_FUNCTION_37_1();
      v7 = v6(v5);
      if (sub_267BAF0DC(v7))
      {
        sub_267BBD0EC(0, (v7 & 0xC000000000000001) == 0, v7);
        if ((v7 & 0xC000000000000001) != 0)
        {
          v29 = OUTLINED_FUNCTION_22_27();
          v8 = MEMORY[0x26D609870](v29);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v9 = v8;

        v10 = [v9 identifier];

        sub_267EF9028();
        v12 = v11;

        v0[20] = v12;
        __swift_destroy_boxed_opaque_existential_0(v0 + 7);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v13 = sub_267EF8A08();
        v0[21] = OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);

        v14 = sub_267EF89F8();
        v15 = sub_267EF95D8();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v16 = 136315138;
          v17 = OUTLINED_FUNCTION_37_1();
          *(v16 + 4) = sub_267BA33E8(v17, v18, v19);
          _os_log_impl(&dword_267B93000, v14, v15, "#Conversation: getting message summary for messagesID: %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        v20 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
        v21 = swift_task_alloc();
        v0[22] = v21;
        *v21 = v0;
        v21[1] = sub_267E2DB90;
        v22 = v0[17];
        v23 = OUTLINED_FUNCTION_37_1();

        return sub_267EADC9C(v23, v24, v25, v1);
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    }

    else
    {
      sub_267B9FF34((v0 + 7), &qword_280229910, &unk_267EFEB70);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v27 = OUTLINED_FUNCTION_27_27();

  return v28(v27);
}

uint64_t sub_267E2DB90()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v7 + 184) = v6;

  v8 = *(v2 + 160);
  if (v0)
  {

    v9 = sub_267E2DE9C;
  }

  else
  {

    v9 = sub_267E2DCD8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267E2DCD8()
{
  v17 = v0;
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = [*(v0 + 184) string];

    v3 = sub_267EF9028();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 168);
  swift_bridgeObjectRetain_n();
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v0 + 120) = v3;
    *(v0 + 128) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v11 = sub_267EF9098();
    v13 = sub_267BA33E8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_267B93000, v7, v8, "#Conversation: summary is %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v14 = *(v0 + 8);

  return v14(v3, v5);
}

uint64_t sub_267E2DE9C()
{
  v13 = v0;
  v1 = v0[21];
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[15] = 0;
    v0[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v6 = sub_267EF9098();
    v8 = sub_267BA33E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_267B93000, v2, v3, "#Conversation: summary is %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v9 = OUTLINED_FUNCTION_27_27();

  return v10(v9);
}

uint64_t sub_267E2DFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationSummaryComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E2E060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229910, &unk_267EFEB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E2E0DC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_267E2E12C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_267E2E180(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_267E2E198(void *result, int a2)
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

uint64_t sub_267E2E1C8(uint64_t a1, uint64_t a2, char a3)
{
  sub_267B9AFEC(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    v15[0] = v10;
    v15[1] = v11;
    v15[2] = v12;
    v16 = v13;
    type metadata accessor for ReadAudioComponentAction();
    swift_allocObject();
    v6 = sub_267E38820(v15, a2);
    v7 = &unk_280229268;
    v8 = type metadata accessor for ReadAudioComponentAction;
  }

  else
  {
    sub_267B9AFEC(a1, v15);
    type metadata accessor for DefaultReadComponentAction();
    swift_allocObject();
    v6 = sub_267BF902C(v15, a2, a3 & 1);
    v7 = &unk_280229258;
    v8 = type metadata accessor for DefaultReadComponentAction;
  }

  sub_267E2E338(v7, v8);

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v6;
}

uint64_t sub_267E2E338(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_267E2E380(uint64_t a1)
{
  v2 = sub_267E2E87C();
  if (sub_267BAF0DC(v2) == 1)
  {
    v3 = v2 & 0xC000000000000001;
    sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v2);
    }

    else
    {
      v4 = *(v2 + 32);
    }

    v5 = sub_267EF38F8();

    if (v5)
    {
      goto LABEL_20;
    }

    if (v3)
    {
      MEMORY[0x26D609870](0, v2);
    }

    else
    {
      v22 = *(v2 + 32);
    }

    v23 = sub_267EF3908();

    if (v23)
    {
LABEL_20:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_267EFC020;
      *(v12 + 32) = sub_267EF39E8();
      *(v12 + 40) = v24;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_267EFC020;
      if (v3)
      {
        MEMORY[0x26D609870](0, v2);
      }

      else
      {
        v25 = *(v2 + 32);
      }

      v26 = sub_267EF38E8();
      v28 = v27;

      *(v12 + 32) = v26;
      *(v12 + 40) = v28;
    }

    return v12;
  }

  sub_267EF3998();
  sub_267E2EC7C(v2, a1 & 1);
  v7 = v6;

  v8 = sub_267BAF0DC(v7);
  if (!v8)
  {

    return MEMORY[0x277D84F90];
  }

  v9 = v8;
  v30 = MEMORY[0x277D84F90];
  result = sub_267BC7934(0, v8 & ~(v8 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v30;
    v29 = v7 & 0xC000000000000001;
    v13 = v7;
    do
    {
      if (v29)
      {
        MEMORY[0x26D609870](v11, v7);
      }

      else
      {
        v14 = *(v7 + 8 * v11 + 32);
      }

      v15 = a1;
      v16 = sub_267EF38E8();
      v18 = v17;

      v20 = *(v30 + 16);
      v19 = *(v30 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_267BC7934((v19 > 1), v20 + 1, 1);
      }

      ++v11;
      *(v30 + 16) = v20 + 1;
      v21 = v30 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      a1 = v15;
      v7 = v13;
    }

    while (v9 != v11);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_267E2E664()
{
  v0 = sub_267EF3988();
  v1 = sub_267EAD8DC(v0);

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_267D32820(v2);

  return v3 & 1;
}

void sub_267E2E6C0(char a1)
{
  if ((a1 & 1) == 0 || (sub_267E2E664() & 1) == 0)
  {

    return;
  }

  v2 = sub_267EF3988();
  v12 = v2;
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v1 = v2;
  sub_267C8F094(v2, &v10);
  if (v11)
  {
    sub_267C0BFFC(&v10);
    if (*(v1 + 16))
    {
      sub_267CF5D98(0, 1);
      v1 = sub_267EF3948();
      *&v10 = v1;
      if (sub_267BAF0DC(v1))
      {
        if (sub_267BAF0DC(v1))
        {
          sub_267BBD0EC(0, (v1 & 0xC000000000000001) == 0, v1);
          if ((v1 & 0xC000000000000001) == 0)
          {
            v3 = *(v1 + 32);

LABEL_10:
            if (sub_267BAF0DC(v1))
            {
              if (sub_267BAF0DC(v1) < 1)
              {
                __break(1u);
              }

              else
              {
                v4 = sub_267BAF0DC(v1);
                v5 = __OFSUB__(v4, 1);
                v6 = v4 - 1;
                if (!v5)
                {
                  sub_267CA5F78(v6, 1);
                  sub_267C731C8();

                  sub_267EF3958();
                  sub_267EF3968();
                  v7 = sub_267EF3998();
                  v8 = *(v7 + 48);
                  v9 = *(v7 + 52);
                  swift_allocObject();
                  sub_267EF3978();
                  return;
                }
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_23;
          }

LABEL_19:
          MEMORY[0x26D609870](0, v1);
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_267E2E87C()
{
  v1 = v0;
  v2 = sub_267EF3948();
  v3 = sub_267BAF0DC(v2);

  v4 = sub_267EF3948();
  v5 = v4;
  if (v3 < 2)
  {
    return v5;
  }

  sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_53:
    MEMORY[0x26D609870](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = sub_267EF3908();

  if (v7)
  {
    v34 = sub_267EF39E8();
    v9 = v8;
  }

  else
  {
    v34 = 0;
    v9 = 0;
  }

  v5 = v1;
  v10 = sub_267EF3948();
  v11 = sub_267BAF0DC(v10);
  v12 = 0;
  v1 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v1)
    {
      v13 = MEMORY[0x26D609870](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (sub_267EF3908())
    {
      v14 = sub_267EF39E8();
      v16 = v15;

      if (v9)
      {
        if (!v16)
        {
          goto LABEL_44;
        }

        if (v34 == v14 && v9 == v16)
        {
        }

        else
        {
          v18 = sub_267EF9EA8();

          if ((v18 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else if (v16)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    else if (v9)
    {
      goto LABEL_44;
    }

    v5 = v13;
    v19 = sub_267EF3908();

    if (!v19)
    {

LABEL_45:

      return sub_267EF3948();
    }

    ++v12;
  }

  v20 = sub_267EF3948();
  v21 = sub_267BAF0DC(v20);
  if (!v21)
  {

    return MEMORY[0x277D84F90];
  }

  v1 = v21;
  v35 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v1 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](v23, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = sub_267EF38D8();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v25 < 0 || (v25 & 0x4000000000000000) != 0)
      {
        v25 = sub_267D60234(v25);
      }

      v5 = v25 & 0xFFFFFFFFFFFFFF8;
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26 < 2)
      {
        break;
      }

      v27 = v26 - 1;
      v28 = v5 + 40;
      v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x28);
      memmove(v28, (v28 + 8), 8 * v26 - 16);
      ++v23;
      *(v28 - 24) = v27;

      sub_267EF3918();
      v30 = sub_267EF3928();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_267EF38C8();

      sub_267EF9BD8();
      v33 = *(v35 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      if (v1 == v23)
      {

        return v35;
      }
    }

    goto LABEL_52;
  }

  __break(1u);
  return result;
}

void sub_267E2EC7C(uint64_t a1, int a2)
{
  v41 = a2;
  v2 = a1;
  v3 = sub_267BAF0DC(a1);
  v4 = v2 & 0xC000000000000001;
  v43 = v2 & 0xFFFFFFFFFFFFFF8;
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v6)
    {
      v18 = 0;
      v45 = v5;
      v37 = xmmword_267EFCA40;
      v39 = v2 & 0xC000000000000001;
      v40 = v2;
      v38 = v3;
      while (1)
      {
        if (v3 == v18)
        {

          return;
        }

        if (v4)
        {
          MEMORY[0x26D609870](v18, v2);
        }

        else
        {
          if (v18 >= *(v43 + 16))
          {
            goto LABEL_38;
          }

          v19 = *(v2 + 8 * v18 + 32);
        }

        if (__OFADD__(v18, 1))
        {
          goto LABEL_37;
        }

        v20 = sub_267EF3908();
        if (v20)
        {
          break;
        }

LABEL_30:
        MEMORY[0x26D608F90]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        ++v18;
      }

      v21 = v20;
      v22 = sub_267EF39E8();
      v24 = v23;
      v25 = v42;
      v26 = sub_267E2F020(v22, v23, v42);
      v28 = v27;
      v44[0] = v22;
      v44[1] = v24;
      MEMORY[0x28223BE20](v26);
      v36[2] = v44;
      v29 = sub_267DF0CE0(sub_267E2F0D8, v36, v25);
      v31 = v30;

      if (v28)
      {
        v3 = v38;
        if ((v31 & 1) == 0)
        {
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        v3 = v38;
        if ((v31 & 1) != 0 || v26 != v29)
        {
          goto LABEL_28;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v32 = swift_allocObject();
      *(v32 + 16) = v37;
      *(v32 + 32) = v21;

      sub_267EF3918();
      v33 = sub_267EF3928();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_267EF38C8();

LABEL_29:
      v4 = v39;
      v2 = v40;
      goto LABEL_30;
    }

    if (v4)
    {
      MEMORY[0x26D609870](v6, v2);
    }

    else
    {
      if (v6 >= *(v43 + 16))
      {
        goto LABEL_36;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (sub_267EF3908())
    {
      v9 = sub_267EF39E8();
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v42 + 16);
        sub_267BF4EE8();
        v42 = v16;
      }

      v12 = *(v42 + 16);
      if (v12 >= *(v42 + 24) >> 1)
      {
        sub_267BF4EE8();
        v42 = v17;
      }

      v13 = v42;
      *(v42 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 = v8;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_267E2F020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_267EF9EA8() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_267E2F0F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8B8, &qword_267F0B8A8);
  OUTLINED_FUNCTION_58(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_26();
  type metadata accessor for UnsendMessagesRCHFlowStrategy();
  sub_267BC1DB4(&qword_28022C8C0, type metadata accessor for UnsendMessagesRCHFlowStrategy);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_30_30();
  sub_267EF3EC8();
  v5 = OUTLINED_FUNCTION_29_27();
  v6(v5);
  return v0;
}

uint64_t sub_267E2F218()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8A8, &qword_267F0B8A0);
  OUTLINED_FUNCTION_58(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_26();
  type metadata accessor for EditMessageRCHFlowStrategy();
  sub_267BC1DB4(&qword_28022C8B0, type metadata accessor for EditMessageRCHFlowStrategy);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_30_30();
  sub_267EF3EC8();
  v5 = OUTLINED_FUNCTION_29_27();
  v6(v5);
  return v0;
}

uint64_t sub_267E2F338()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8A0, &qword_267F0B898);
  OUTLINED_FUNCTION_58(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_26();
  type metadata accessor for SendMessageRCHFlowStrategy();
  OUTLINED_FUNCTION_19_36();
  sub_267BC1DB4(v5, v6);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_30_30();
  sub_267EF3EC8();
  v7 = OUTLINED_FUNCTION_29_27();
  v8(v7);
  return v0;
}

uint64_t sub_267E2F448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C890, &qword_267F0B868);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  v9[1] = a1;
  type metadata accessor for SearchForMessagesRCHFlowStrategy();
  sub_267BC1DB4(&qword_28022A658, type metadata accessor for SearchForMessagesRCHFlowStrategy);

  sub_267EF3EE8();
  v7 = sub_267EF3EC8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_267E2F5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C890, &qword_267F0B868);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  v9[1] = a1;
  type metadata accessor for SearchForMessagesRCHFlowStrategy();
  sub_267BC1DB4(&qword_28022A658, type metadata accessor for SearchForMessagesRCHFlowStrategy);

  sub_267EF3EE8();
  v7 = sub_267EF3ED8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_267E2F720(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_26();
  sub_267EF93F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_46_19();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = &unk_267F0B888;
  v13[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267E2F818()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BBFC38();
}

uint64_t sub_267E2F8B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 936);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E2F998()
{
  OUTLINED_FUNCTION_56();
  sub_267BBF344(v0 + 160);
  OUTLINED_FUNCTION_10_40();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E2FA1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 944);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E2FB00()
{
  OUTLINED_FUNCTION_56();
  sub_267BBF344(v0 + 112);
  OUTLINED_FUNCTION_10_40();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E2FB84()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 968);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E2FC68()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 952);
  (*(v0 + 960))(*(v0 + 904), *(v0 + 872));
  sub_267BBF344(v0 + 16);
  OUTLINED_FUNCTION_10_40();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E2FD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(a1 + 8) == 1)
  {
    v11 = v10;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_267B93000, v13, v14, "#SearchForMessagesFlow request check failed", v15, 2u);
      MEMORY[0x26D60A7B0](v15, -1, -1);
    }
  }

  else
  {
    if (!v10)
    {
      sub_267B9AFEC(a3, v9);
      v9[40] = 0;
      goto LABEL_14;
    }

    v16 = v10;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v13 = sub_267EF89F8();
    v18 = sub_267EF95C8();
    if (os_log_type_enabled(v13, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_267B93000, v13, v18, "#SearchForMessagesFlow request is not supported", v19, 2u);
      MEMORY[0x26D60A7B0](v19, -1, -1);
    }
  }

  *v9 = v10;
LABEL_14:
  swift_storeEnumTagMultiPayload();
  v20 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  swift_beginAccess();
  sub_267B9FF94(v9, a2 + v20);
  return swift_endAccess();
}

uint64_t sub_267E2FFA0@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for SearchForMessagesFlow.State(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  OUTLINED_FUNCTION_58(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_26();
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_83();
  sub_267BC0ABC(v1 + v17, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      *a1 = *v10;
      *(a1 + 8) = 0;
      goto LABEL_7;
    case 6u:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C898, &unk_267F0B870);
      v18 = *(v13 + 32);
      v18(v2, &v10[*(v19 + 48)], v11);
      sub_267BBF344(v10);
      goto LABEL_5;
    case 7u:
      v18 = *(v13 + 32);
      v18(v2, v10, v11);
LABEL_5:
      result = (v18)(a1, v2, v11);
      break;
    case 8u:
      *a1 = *v10;
      *(a1 + 8) = 1;
LABEL_7:
      result = (*(v13 + 104))(a1, *MEMORY[0x277D5BC98], v11);
      break;
    default:
      sub_267C4BE60();
      v21 = swift_allocError();
      *v22 = 0;
      v22[1] = 0;
      *a1 = v21;
      *(a1 + 8) = 0;
      (*(v13 + 104))(a1, *MEMORY[0x277D5BC98], v11);
      result = sub_267B9F658(v10);
      break;
  }

  return result;
}

uint64_t sub_267E301F8(uint64_t a1)
{
  v4 = type metadata accessor for SearchForMessagesFlow.State(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
  v8 = sub_267EF3488();
  OUTLINED_FUNCTION_30_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_267EFC020;
  sub_267EF3468();
  v13 = sub_267EF2F28();

  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_66_3();
  sub_267B9FF94(v2, v1 + v14);
  swift_endAccess();
  v20 = v13;
  sub_267BBF30C(a1, &v18);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = v19[0];
  *(v15 + 24) = v18;
  *(v15 + 40) = v16;
  *(v15 + 49) = *(v19 + 9);
  sub_267EF3428();

  sub_267EF3FC8();
}

uint64_t sub_267E303E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_267B93000, v11, v12, "#SearchForMessagesFlow RCHFlow completed", v13, 2u);
    MEMORY[0x26D60A7B0](v13, -1, -1);
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C898, &unk_267F0B870) + 48);
  sub_267BBF30C(a3, v9);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  (*(*(v15 - 8) + 16))(&v9[v14], a1, v15);
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  swift_beginAccess();
  sub_267B9FF94(v9, a2 + v16);
  return swift_endAccess();
}

uint64_t sub_267E305D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_267EF4A58();
  type metadata accessor for SearchForMessagesAppResolutionOnDeviceFlowStrategy();
  swift_allocObject();
  *&v20[0] = sub_267CDAF98(a3, v9, &off_2878D7FB0);
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267BA9F38(0, &qword_280229680, 0x277CD4050);
  sub_267BC1DB4(&qword_28022A900, type metadata accessor for SearchForMessagesAppResolutionOnDeviceFlowStrategy);
  v10 = a3;
  v11 = sub_267EF3578();

  v11(a1, a2, v10, a4);
  sub_267B9AFEC(a5 + 16, v20);
  type metadata accessor for SiriKitFlowFactoryImpl();
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v12 = swift_allocObject();
  v13 = v10;

  *&v20[0] = sub_267E33E70(v14, v13, v20, v18, v12);
  type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow(0);
  sub_267BC1DB4(&qword_28022A058, type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow);
  v15 = sub_267EF36F8();

  return v15;
}

uint64_t sub_267E30808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  sub_267B9AFEC(a3 + 16, v24);
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(qword_2802405A0, v23);
  type metadata accessor for CommonTemplateProvider();
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  v14 = sub_267E34134(v24, v13);
  __swift_destroy_boxed_opaque_existential_0(v23);
  *&v24[0] = v14;
  type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
  sub_267BC1DB4(&qword_28022C880, type metadata accessor for SearchForMessageHandleIntentFlowStrategy);
  v15 = sub_267EF3558();
  v17 = v16;

  (*(v9 + 16))(v12, a2, v8);
  sub_267B9AFEC(a3 + 16, v24);
  v18 = type metadata accessor for SearchForMessagesHandleIntentFlow(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  *&v24[0] = sub_267C4AF2C(a1, v12, v24, a4, v15, v17);
  sub_267BC1DB4(&qword_280229688, type metadata accessor for SearchForMessagesHandleIntentFlow);
  v21 = sub_267EF36F8();

  return v21;
}

uint64_t sub_267E30AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v82 = a1;
  v81 = sub_267EF68A8();
  v80 = *(v81 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v76 - v8;
  v10 = sub_267EF44C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v76 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  v83 = a2;
  sub_267EF4938();
  v18 = sub_267EF44B8();
  v20 = v19;
  v21 = *(v11 + 8);
  v21(v17, v10);
  v22 = v18 == 0x6E65697069636572 && v20 == 0xE900000000000074;
  v77 = v9;
  if (v22 || (sub_267EF9EA8() & 1) != 0 || (v18 == 0x7265646E6573 ? (v23 = v20 == 0xE600000000000000) : (v23 = 0), v23 || (sub_267EF9EA8() & 1) != 0))
  {

    sub_267B9AFEC(v78 + 16, &v95);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v24);
    if (qword_2802286F0 != -1)
    {
      swift_once();
    }

    sub_267B9AFEC(qword_2802405A0, v93);
    v25 = sub_267EF3AA8();
    sub_267EF8938();
    v26 = sub_267EF8928();

    v27 = v79;
    sub_267EF6898();
    __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
    v91 = &type metadata for CATProvider;
    v92 = &off_2878CE7A0;
    v88 = &type metadata for MessagesFeatureFlagsImpl;
    v89 = &off_2878D1228;
    v28 = v81;
    v85 = v81;
    v86 = &off_2878D54D8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
    v30 = v80;
    (*(v80 + 16))(boxed_opaque_existential_0, v27, v28);
    v31 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
    __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v35 = v85;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    v37 = *(*(v35 - 8) + 64);
    MEMORY[0x28223BE20](v36);
    v39 = (&v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = sub_267E34278(&v95, v77, v25, &off_2878D5360, v26, v39, v34);

    (*(v30 + 8))(v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v84);
    __swift_destroy_boxed_opaque_existential_0(v87);
    __swift_destroy_boxed_opaque_existential_0(v90);
    __swift_destroy_boxed_opaque_existential_0(v93);
    v95 = v41;
    v42 = &unk_28022C878;
    v43 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy;
    goto LABEL_14;
  }

  if (v18 == 0xD000000000000012 && 0x8000000267F0FD90 == v20)
  {
    goto LABEL_25;
  }

  v48 = sub_267EF9EA8();

  if ((v48 & 1) == 0)
  {
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD000000000000040, 0x8000000267F1B9E0);
    sub_267EF4938();
    v49 = sub_267EF44B8();
    v51 = v50;
    v21(v15, v10);
    MEMORY[0x26D608E60](v49, v51);

    v53 = v95;
    v52 = v96;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v54 = sub_267EF8A08();
    __swift_project_value_buffer(v54, qword_280240FB0);

    v55 = sub_267EF89F8();
    v56 = sub_267EF95E8();

    if (os_log_type_enabled(v55, v56))
    {
      v9 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v95 = v57;
      *v9 = 136315138;
      *(v9 + 4) = sub_267BA33E8(v53, v52, &v95);
      _os_log_impl(&dword_267B93000, v55, v56, "Fatal error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x26D60A7B0](v57, -1, -1);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    sub_267EF9C98();
    __break(1u);
LABEL_25:
  }

  sub_267B9AFEC(v78 + 16, &v95);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v58);
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(qword_2802405A0, v93);
  v59 = sub_267EF3AA8();
  sub_267EF8938();
  v60 = sub_267EF8928();

  v61 = v79;
  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v91 = &type metadata for CATProvider;
  v92 = &off_2878CE7A0;
  v88 = &type metadata for MessagesFeatureFlagsImpl;
  v89 = &off_2878D1228;
  v62 = v81;
  v85 = v81;
  v86 = &off_2878D54D8;
  v63 = __swift_allocate_boxed_opaque_existential_0(v84);
  v64 = v80;
  (*(v80 + 16))(v63, v61, v62);
  v65 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  v69 = v85;
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v71 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = (&v76 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = sub_267E3495C(&v95, v77, v59, &off_2878D5360, v60, v73, v68);

  (*(v64 + 8))(v61, v62);
  __swift_destroy_boxed_opaque_existential_0(v84);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_destroy_boxed_opaque_existential_0(v90);
  __swift_destroy_boxed_opaque_existential_0(v93);
  v95 = v75;
  v42 = &unk_28022AB30;
  v43 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy;
LABEL_14:
  sub_267BC1DB4(v42, v43);
  v44 = sub_267EF35B8();

  v45 = v44(v82, v83);

  return v45;
}

uint64_t sub_267E31510()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = v1[56];
  v5 = v1[55];
  v10 = *v0;
  v2[57] = v6;

  __swift_destroy_boxed_opaque_existential_0(v2 + 17);

  v7 = swift_task_alloc();
  v2[58] = v7;
  *v7 = v10;
  v7[1] = sub_267E31674;
  v8 = v1[44];

  return sub_267E31DBC();
}

uint64_t sub_267E31674()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 464);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E31758()
{
  v1 = v0[57];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[41];
  sub_267E31818();

  v9 = v0[50];
  v8 = v0[51];
  v10 = v0[49];
  v11 = v0[46];

  OUTLINED_FUNCTION_17();

  return v12();
}

void sub_267E31818()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v24 = v2;
  v25 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SearchForMessagesFlow.State(0);
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_66_3();
  sub_267B9FF94(v18, v1 + v19);
  swift_endAccess();
  sub_267BC1DB4(&qword_28022C820, type metadata accessor for SearchForMessagesFlowSource);
  sub_267BC1DB4(&qword_28022C828, type metadata accessor for SearchForMessagesFlowSource);
  v20 = sub_267EF34B8();
  OUTLINED_FUNCTION_97(v20);
  OUTLINED_FUNCTION_43();
  swift_retain_n();
  v26 = sub_267EF34A8();
  (*(v7 + 16))(v11, v24, v4);
  v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  (*(v7 + 32))(v22 + v21, v11, v4);

  sub_267EF3FC8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E31A84(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  if (*a1)
  {
    v11 = v10;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    v13 = v10;
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v10;
      v30 = v17;
      *v16 = 136315138;
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v19 = sub_267EF9098();
      v21 = sub_267BA33E8(v19, v20, &v30);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_267B93000, v14, v15, "#SearchForMessagesFlow reading flow failed: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D60A7B0](v17, -1, -1);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    *v9 = v10;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v22 = sub_267EF8A08();
    __swift_project_value_buffer(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_267B93000, v23, v24, "#SearchForMessagesFlow reading flow successfully completed", v25, 2u);
      MEMORY[0x26D60A7B0](v25, -1, -1);
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
    (*(*(v26 - 8) + 16))(v9, a3, v26);
  }

  swift_storeEnumTagMultiPayload();
  v27 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  swift_beginAccess();
  sub_267B9FF94(v9, a2 + v27);
  return swift_endAccess();
}

uint64_t sub_267E31DBC()
{
  *(v1 + 104) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267E31DE4()
{
  v1 = v0[13];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_43();
  v5(v4, v2);
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_43();
  v7 = sub_267EF3BC8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v7)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v10))
    {
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v11);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_17();

    return v17();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = sub_267EF8A08();
    v0[14] = __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v22);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_26();
    }

    v28 = [objc_allocWithZone(MEMORY[0x277D477D8]) init];
    v0[15] = v28;
    [v28 setTextToSpeechIsMuted_];
    v29 = v1[5];
    v30 = v1[6];
    OUTLINED_FUNCTION_76_12(v1 + 2);
    v32 = *(v31 + 24);
    v33 = OUTLINED_FUNCTION_7_1();
    v34(v33);
    v35 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    v36 = *(MEMORY[0x277D5BFB8] + 4);
    v37 = swift_task_alloc();
    v0[16] = v37;
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
    *v37 = v0;
    v37[1] = sub_267E32090;
    v38 = OUTLINED_FUNCTION_61_0();

    return MEMORY[0x2821BB6A0](v38);
  }
}

uint64_t sub_267E32090()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 136) = v0;

  if (v0)
  {
    v9 = sub_267E32248;
  }

  else
  {

    v9 = sub_267E3219C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267E3219C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95C8();
  v4 = OUTLINED_FUNCTION_10_2(v3);
  v5 = v0[15];
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v6);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267E32248()
{
  v23 = v0;
  v3 = v0[17];
  v4 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v5 = v3;
  v6 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    v7 = v0[17];
    v8 = v0[15];
    OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_55_0();
    v22 = v9;
    *v1 = 136315138;
    v0[12] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v11 = OUTLINED_FUNCTION_110_1();
    sub_267BA33E8(v11, v12, &v22);
    OUTLINED_FUNCTION_79();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v18 = v0[17];
    v19 = v0[15];
  }

  OUTLINED_FUNCTION_17();

  return v20();
}

uint64_t sub_267E323A8()
{
  sub_267B9F658(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent, &unk_28022BBF0, &unk_267F01C60);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs);
}

uint64_t sub_267E32420()
{
  result = type metadata accessor for SearchForMessagesFlow.State(319);
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

unint64_t sub_267E324D0()
{
  v0 = sub_267C1B358();
  if (v1 <= 0x3F)
  {
    sub_267E3257C();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_267E325F0();
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_267E3257C()
{
  if (!qword_28022C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C810, &qword_267F0B718);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022C808);
    }
  }
}

void sub_267E325F0()
{
  if (!qword_28022C818)
  {
    sub_267BA9F38(255, &qword_280229118, 0x277CD4048);
    sub_267BA9F38(255, &qword_280229680, 0x277CD4050);
    v0 = sub_267EF3E08();
    if (!v1)
    {
      atomic_store(v0, &qword_28022C818);
    }
  }
}

uint64_t sub_267E32688()
{
  v1 = *v0;
  sub_267BDC9CC();
  return v2 & 1;
}

uint64_t sub_267E326F8(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_267E31A84(a1, v5, v6);
}

uint64_t sub_267E32774(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - v8;
  v9 = sub_267EF7B88();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_267EF68A8();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v59[3] = &type metadata for CATProvider;
  v59[4] = &off_2878CE7A0;
  v58[3] = type metadata accessor for CommonTemplateProvider();
  v58[4] = &off_2878D2530;
  v58[0] = a2;
  sub_267B9AFEC(v58, a3 + OBJC_IVAR____TtC16SiriMessagesFlow40SearchForMessageHandleIntentFlowStrategy_commonTemplateProvider);
  v35 = a1;
  sub_267B9AFEC(a1, v57);
  sub_267B9AFEC(v59, v56);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v6);
  v33 = sub_267EF3AA8();
  v22 = sub_267EF8938();
  v23 = sub_267EF8928();
  v54 = v22;
  v55 = MEMORY[0x277D5FDD8];
  *&v53 = v23;
  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(v56, v56[3]);
  v51 = &type metadata for CATProvider;
  v52 = &off_2878CE7A0;
  v48 = &type metadata for MessagesFeatureFlagsImpl;
  v49 = &off_2878D1228;
  v45 = v11;
  v46 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
  (*(v38 + 16))(boxed_opaque_existential_0, v14, v11);
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(a3 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v50, v51);
  *(a3 + 64) = sub_267BB4A3C();
  sub_267BB170C(v21, v19, &qword_28022A660, &unk_267F013A0);
  v34 = v19;
  if (__swift_getEnumTagSinglePayload(v19, 1, v6) == 1)
  {
    v43[3] = v11;
    v43[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v43);
    sub_267EF6898();
    v25 = sub_267EF8928();
    v42[3] = v22;
    v42[4] = MEMORY[0x277D5FDD8];
    v42[0] = v25;
    sub_267B9AFEC(v57, v41);
    sub_267B9AFEC(v43, v40);
    sub_267B9AFEC(v42, v39);
    v26 = swift_allocObject();
    sub_267B9A5E8(v41, v26 + 16);
    sub_267B9A5E8(v40, v26 + 56);
    sub_267B9A5E8(v39, v26 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v27 = v36;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v35);
    (*(v38 + 8))(v14, v11);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v58);
    __swift_destroy_boxed_opaque_existential_0(v59);
    __swift_destroy_boxed_opaque_existential_0(v42);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v28 = v34;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v6);
    v30 = v37;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v28, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    (*(v38 + 8))(v14, v11);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v58);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v27 = v36;
    v30 = v37;
    (*(v37 + 32))(v36, v34, v6);
  }

  (*(v30 + 32))(a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v27, v6);
  v31 = (a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  *v31 = v33;
  v31[1] = &off_2878D5360;
  sub_267B9A5E8(&v47, a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(&v53, a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v44, a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v57, a3 + 16);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v56);
  return a3;
}

void *sub_267E32D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v21 - v6);
  v8 = sub_267EF7B88();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_267BC1DB4(&unk_28022BC80, type metadata accessor for ConversationActionGroup);
  v11 = sub_267BE6C54(a1);
  v12 = qword_2802286F0;

  if (v12 != -1)
  {
    swift_once();
  }

  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  v13 = sub_267EF78E8();
  type metadata accessor for DeviceOfflineNotificationAction();
  swift_allocObject();
  v14 = sub_267CD2414(a1, v13);
  v15 = sub_267BC1DB4(&qword_28022A868, type metadata accessor for DeviceOfflineNotificationAction);
  v16 = v11[3];
  v11[3] = v14;
  v11[4] = v15;
  swift_unknownObjectRelease();
  *v7 = a2;
  v7[1] = v10;
  v17 = *MEMORY[0x277D5BF58];
  v18 = sub_267EF4548();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v18);
  v19 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v7, v11 + v19);
  swift_endAccess();

  return v11;
}

uint64_t sub_267E3302C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 912);
  v3 = *(v1 + 904);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E3312C()
{
  v76 = v1;
  OUTLINED_FUNCTION_59_16();
  sub_267BE43E8(1);
  if (!v0)
  {
    v24 = v1[110];

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v27))
    {
      v28 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v28);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_26();
    }

    v34 = v1[98];

    v35 = sub_267E2D6E4(v34);
    if (v35)
    {
      v36 = v35;
      if (sub_267BAF0DC(v35))
      {
        OUTLINED_FUNCTION_1_9();
        if (v34)
        {
          v37 = MEMORY[0x26D609870](0, v36);
        }

        else
        {
          v37 = *(v36 + 32);
        }

        v38 = v37;

        goto LABEL_25;
      }
    }

    v38 = 0;
LABEL_25:
    v71 = v1[109];
    v72 = v1[111];
    v46 = v1[104];
    v47 = v1[100];
    v73 = v1[99];
    v48 = v1[98];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_267EFC020;
    [v48 attributes];
    sub_267EF7958();
    v70 = v38;

    sub_267E80518(v50);
    v51 = *(v2 + 32);
    type metadata accessor for ReadingSummaryAction();
    memset(v74, 0, sizeof(v74));
    v75 = 0;
    swift_allocObject();

    v58 = OUTLINED_FUNCTION_49_21(v52, v53, v54, v55, v56, v57, v74);
    OUTLINED_FUNCTION_23_25();
    v61 = sub_267BC1DB4(v59, v60);
    *(v49 + 32) = v58;
    *(v49 + 40) = v61;
    sub_267EF4548();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    v66 = sub_267EF4338();
    OUTLINED_FUNCTION_97(v66);
    OUTLINED_FUNCTION_50_15();

    OUTLINED_FUNCTION_22_28();
    goto LABEL_26;
  }

  v6 = v1[111];
  v7 = sub_267BE6268();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    v11[1] = v7 & 1;
    OUTLINED_FUNCTION_70_11(&dword_267B93000, v12, v13, "#SearchForMessagesFlowSource Initial group is summary? %{BOOL}d");
    OUTLINED_FUNCTION_29_1();
  }

  v14 = v1[111];

  sub_267BE4AD0();
  v15 = type metadata accessor for ConversationActionGroup();
  OUTLINED_FUNCTION_97(v15);

  v16 = OUTLINED_FUNCTION_66();
  sub_267BE6480(v16, v17, 1, 1);
  if (v7)
  {
    v18 = v1[110];
    if (*(v1[111] + 408))
    {
      v19 = sub_267BF42CC();

      if (v19 != 1)
      {
        v20 = v1[111];
        v21 = type metadata accessor for DeviceOfflineNotificationActionGroup(0);
        OUTLINED_FUNCTION_97(v21);

        v22 = OUTLINED_FUNCTION_66();
        sub_267E32D98(v22, v23);
LABEL_22:
        v42 = OUTLINED_FUNCTION_48_25();
        OUTLINED_FUNCTION_97(v42);
        OUTLINED_FUNCTION_72_13();

        OUTLINED_FUNCTION_77_8();

        OUTLINED_FUNCTION_24_30();
        v45 = sub_267BC1DB4(v43, v44);
        goto LABEL_27;
      }
    }

    else
    {
      v41 = v1[110];
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_77_8();

  OUTLINED_FUNCTION_18_33();
LABEL_26:
  v45 = sub_267BC1DB4(v39, v40);
LABEL_27:
  OUTLINED_FUNCTION_44_22(v45);

  v67 = v1[1];
  v68 = v1[103];

  return v67(v68);
}

uint64_t sub_267E335F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a3;
  v54 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v52 = *(v48 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v45 - v13;
  v14 = sub_267EF7B88();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v47 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v79 = sub_267EF8938();
  v80 = MEMORY[0x277D5FDD8];
  v46 = v79;
  v78[0] = a5;
  v77[3] = &type metadata for CATProvider;
  v77[4] = &off_2878CE7A0;
  v76[3] = &type metadata for MessagesFeatureFlagsImpl;
  v76[4] = &off_2878D1228;
  v22 = sub_267EF68A8();
  v75[3] = v22;
  v75[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
  v24 = *(*(v22 - 8) + 32);
  v24(boxed_opaque_existential_0, a6, v22);
  v25 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
  v26 = sub_267EF44F8();
  __swift_storeEnumTagSinglePayload(a7 + v25, 1, 1, v26);
  v50 = a1;
  sub_267B9AFEC(a1, v74);
  sub_267B9AFEC(v77, v73);
  sub_267B9AFEC(v76, v72);
  v49 = a2;
  sub_267BB170C(a2, v21, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v78, v71);
  sub_267B9AFEC(v75, v69);
  __swift_mutable_project_boxed_opaque_existential_1(v73, v73[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v72, v72[3]);
  v27 = v70;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  v67 = &type metadata for CATProvider;
  v68 = &off_2878CE7A0;
  v64 = &type metadata for MessagesFeatureFlagsImpl;
  v65 = &off_2878D1228;
  v61 = v22;
  v62 = &off_2878D54D8;
  v33 = __swift_allocate_boxed_opaque_existential_0(&v60);
  v24(v33, v31, v22);
  v35 = v47;
  v34 = v48;
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(a7 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v66, v67);
  *(a7 + 64) = sub_267BB4A3C();
  sub_267BB170C(v21, v35, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
  {
    v59[3] = v22;
    v59[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v59);
    sub_267EF6898();
    v36 = v46;
    v37 = sub_267EF8928();
    v58[3] = v36;
    v58[4] = MEMORY[0x277D5FDD8];
    v58[0] = v37;
    sub_267B9AFEC(v74, v57);
    sub_267B9AFEC(v59, v56);
    sub_267B9AFEC(v58, v55);
    v38 = swift_allocObject();
    sub_267B9A5E8(v57, v38 + 16);
    sub_267B9A5E8(v56, v38 + 56);
    sub_267B9A5E8(v55, v38 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v39 = v51;
    sub_267EF7058();
    sub_267B9F98C(v49, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v50);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v78);
    __swift_destroy_boxed_opaque_existential_0(v75);
    __swift_destroy_boxed_opaque_existential_0(v76);
    __swift_destroy_boxed_opaque_existential_0(v77);
    __swift_destroy_boxed_opaque_existential_0(v58);
    __swift_destroy_boxed_opaque_existential_0(v59);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v34);
    v41 = v52;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v35, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    sub_267B9F98C(v49, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v50);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v78);
    __swift_destroy_boxed_opaque_existential_0(v75);
    __swift_destroy_boxed_opaque_existential_0(v76);
    __swift_destroy_boxed_opaque_existential_0(v77);
    v39 = v51;
    v41 = v52;
    (*(v52 + 32))(v51, v35, v34);
  }

  (*(v41 + 32))(a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v39, v34);
  v42 = (a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v43 = v54;
  *v42 = v53;
  v42[1] = v43;
  sub_267B9A5E8(&v63, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v71, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v60, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v74, a7 + 16);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v73);
  return a7;
}

uint64_t sub_267E33CE4(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = sub_267EF7B88();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v18[3] = &type metadata for CATProvider;
  v18[4] = &off_2878CE7A0;
  type metadata accessor for ReportMessageCountFlow();
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for CATProvider);
  v16 = &type metadata for CATProvider;
  v17 = &off_2878CE7A0;
  *(v10 + 112) = 0;
  *(v10 + 56) = 0;
  sub_267C4BE60();
  v11 = swift_allocError();
  *v12 = 0;
  v12[1] = 0;
  *(v10 + 136) = v11;
  *(v10 + 144) = 1;
  sub_267B9AFEC(a1, v10 + 64);
  *(v10 + 104) = a2;
  *(v10 + 112) = a3;
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(v10 + 120) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v15, v16);
  v13 = sub_267BB4A3C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v10 + 128) = v13;
  sub_267B9A5E8(a4, v10 + 16);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v10;
}

uint64_t sub_267E33E70(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SiriKitFlowFactoryImpl();
  v38[3] = v10;
  v38[4] = &off_2878CFE90;
  v38[0] = a5;
  v11 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v38, v10);
  v16 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v36 = v10;
  v37 = &off_2878CFE90;
  *&v35 = v20;
  *(v14 + 56) = a2;
  sub_267BB170C(a4, &v30, &qword_28022C888, &qword_267F0B860);
  if (v31)
  {
    sub_267B9F98C(a4, &qword_28022C888, &qword_267F0B860);
    sub_267B9A5E8(&v30, &v32);
  }

  else
  {
    v21 = *(a3 + 3);
    v22 = *(a3 + 4);
    __swift_project_boxed_opaque_existential_0(a3, v21);
    v23 = *(v22 + 8);
    v33 = &type metadata for SearchForMessagesAuthenticationHandler;
    v34 = &off_2878D7F40;
    v24 = swift_allocObject();
    *&v32 = v24;
    v23(v21, v22);
    v25 = *(a3 + 3);
    v26 = *(a3 + 4);
    __swift_project_boxed_opaque_existential_0(a3, v25);
    (*(v26 + 16))(v25, v26);
    v27 = [objc_allocWithZone(MEMORY[0x277CEF258]) init];
    sub_267B9F98C(a4, &qword_28022C888, &qword_267F0B860);
    *(v24 + 96) = v27;
    if (v31)
    {
      sub_267B9F98C(&v30, &qword_28022C888, &qword_267F0B860);
    }
  }

  sub_267B9A5E8(&v32, v14 + 64);
  sub_267B9A5E8(&v35, v14 + 104);
  *(v14 + OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state) = a1;
  type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8(a3, v14 + 16);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return v14;
}

uint64_t sub_267E34134(uint64_t *a1, uint64_t a2)
{
  v17[3] = &type metadata for CATProvider;
  v17[4] = &off_2878CE7A0;
  v4 = type metadata accessor for CommonTemplateProvider();
  v16[3] = v4;
  v16[4] = &off_2878D2530;
  v16[0] = a2;
  v5 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v17, &type metadata for CATProvider);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v4);
  v10 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_267E32774(a1, *v12, v8);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v14;
}

uint64_t sub_267E34278(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v45 = a6;
  v48 = a3;
  v49 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v47 = *(v43 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v42 - v12;
  v13 = sub_267EF7B88();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v74 = sub_267EF8938();
  v75 = MEMORY[0x277D5FDD8];
  v42 = v74;
  v73[0] = a5;
  v72[3] = &type metadata for CATProvider;
  v72[4] = &off_2878CE7A0;
  v71[3] = &type metadata for MessagesFeatureFlagsImpl;
  v71[4] = &off_2878D1228;
  v22 = sub_267EF68A8();
  v70[3] = v22;
  v70[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
  v24 = *(*(v22 - 8) + 32);
  v24(boxed_opaque_existential_0, v45, v22);
  *(a7 + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons) = MEMORY[0x277D84F90];
  v45 = a1;
  sub_267B9AFEC(a1, v69);
  sub_267B9AFEC(v72, v68);
  sub_267B9AFEC(v71, v67);
  v44 = a2;
  sub_267BB170C(a2, v21, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v73, v66);
  sub_267B9AFEC(v70, v64);
  __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v25 = v65;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v62 = &type metadata for CATProvider;
  v63 = &off_2878CE7A0;
  v59 = &type metadata for MessagesFeatureFlagsImpl;
  v60 = &off_2878D1228;
  v56 = v22;
  v57 = &off_2878D54D8;
  v31 = __swift_allocate_boxed_opaque_existential_0(&v55);
  v24(v31, v29, v22);
  v32 = v43;
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(a7 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v61, v62);
  *(a7 + 64) = sub_267BB4A3C();
  sub_267BB170C(v21, v19, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v32) == 1)
  {
    v54[3] = v22;
    v54[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v54);
    sub_267EF6898();
    v33 = v42;
    v34 = sub_267EF8928();
    v53[3] = v33;
    v53[4] = MEMORY[0x277D5FDD8];
    v53[0] = v34;
    sub_267B9AFEC(v69, v52);
    sub_267B9AFEC(v54, v51);
    sub_267B9AFEC(v53, v50);
    v35 = swift_allocObject();
    sub_267B9A5E8(v52, v35 + 16);
    sub_267B9A5E8(v51, v35 + 56);
    sub_267B9A5E8(v50, v35 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v36 = v46;
    sub_267EF7058();
    sub_267B9F98C(v44, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v73);
    __swift_destroy_boxed_opaque_existential_0(v70);
    __swift_destroy_boxed_opaque_existential_0(v71);
    __swift_destroy_boxed_opaque_existential_0(v72);
    __swift_destroy_boxed_opaque_existential_0(v53);
    __swift_destroy_boxed_opaque_existential_0(v54);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v32);
    v38 = v47;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v19, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    sub_267B9F98C(v44, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v73);
    __swift_destroy_boxed_opaque_existential_0(v70);
    __swift_destroy_boxed_opaque_existential_0(v71);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v36 = v46;
    v38 = v47;
    (*(v47 + 32))(v46, v19, v32);
  }

  (*(v38 + 32))(a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v36, v32);
  v39 = (a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v40 = v49;
  *v39 = v48;
  v39[1] = v40;
  sub_267B9A5E8(&v58, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v66, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v55, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v69, a7 + 16);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v67);
  __swift_destroy_boxed_opaque_existential_0(v68);
  return a7;
}

uint64_t sub_267E3495C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v45 = a6;
  v48 = a3;
  v49 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v47 = *(v43 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v42 - v12;
  v13 = sub_267EF7B88();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v74 = sub_267EF8938();
  v75 = MEMORY[0x277D5FDD8];
  v42 = v74;
  v73[0] = a5;
  v72[3] = &type metadata for CATProvider;
  v72[4] = &off_2878CE7A0;
  v71[3] = &type metadata for MessagesFeatureFlagsImpl;
  v71[4] = &off_2878D1228;
  v22 = sub_267EF68A8();
  v70[3] = v22;
  v70[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
  v24 = *(*(v22 - 8) + 32);
  v24(boxed_opaque_existential_0, v45, v22);
  *(a7 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_selectedGroupName) = 0;
  *(a7 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict) = 0;
  v45 = a1;
  sub_267B9AFEC(a1, v69);
  sub_267B9AFEC(v72, v68);
  sub_267B9AFEC(v71, v67);
  v44 = a2;
  sub_267BB170C(a2, v21, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v73, v66);
  sub_267B9AFEC(v70, v64);
  __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v25 = v65;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v62 = &type metadata for CATProvider;
  v63 = &off_2878CE7A0;
  v59 = &type metadata for MessagesFeatureFlagsImpl;
  v60 = &off_2878D1228;
  v56 = v22;
  v57 = &off_2878D54D8;
  v31 = __swift_allocate_boxed_opaque_existential_0(&v55);
  v24(v31, v29, v22);
  v32 = v43;
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(a7 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v61, v62);
  *(a7 + 64) = sub_267BB4A3C();
  sub_267BB170C(v21, v19, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v32) == 1)
  {
    v54[3] = v22;
    v54[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v54);
    sub_267EF6898();
    v33 = v42;
    v34 = sub_267EF8928();
    v53[3] = v33;
    v53[4] = MEMORY[0x277D5FDD8];
    v53[0] = v34;
    sub_267B9AFEC(v69, v52);
    sub_267B9AFEC(v54, v51);
    sub_267B9AFEC(v53, v50);
    v35 = swift_allocObject();
    sub_267B9A5E8(v52, v35 + 16);
    sub_267B9A5E8(v51, v35 + 56);
    sub_267B9A5E8(v50, v35 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v36 = v46;
    sub_267EF7058();
    sub_267B9F98C(v44, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v73);
    __swift_destroy_boxed_opaque_existential_0(v70);
    __swift_destroy_boxed_opaque_existential_0(v71);
    __swift_destroy_boxed_opaque_existential_0(v72);
    __swift_destroy_boxed_opaque_existential_0(v53);
    __swift_destroy_boxed_opaque_existential_0(v54);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v32);
    v38 = v47;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v19, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    sub_267B9F98C(v44, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v73);
    __swift_destroy_boxed_opaque_existential_0(v70);
    __swift_destroy_boxed_opaque_existential_0(v71);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v36 = v46;
    v38 = v47;
    (*(v47 + 32))(v46, v19, v32);
  }

  (*(v38 + 32))(a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v36, v32);
  v39 = (a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v40 = v49;
  *v39 = v48;
  v39[1] = v40;
  sub_267B9A5E8(&v58, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v66, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v55, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v69, a7 + 16);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v67);
  __swift_destroy_boxed_opaque_existential_0(v68);
  return a7;
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);

  if (*(v0 + 64))
  {
    v2 = *(v0 + 24);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_267E350BC()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E2F818();
}

uint64_t sub_267E35168@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v3;
  v8[2] = *(v1 + 48);
  v9 = *(v1 + 64);
  a1[3] = &type metadata for AudioComponent;
  a1[4] = sub_267DB6C84();
  v4 = swift_allocObject();
  *a1 = v4;
  v5 = *(v1 + 32);
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 48);
  *(v4 + 64) = *(v1 + 64);
  return sub_267DBC244(v8, v7);
}

uint64_t sub_267E351F8()
{
  v1 = *(v0 + 72);
  sub_267E35168(v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  v4 = *(v3 + 32);

  v4(v2, v3);
  v5 = sub_267BFB6B4();

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t sub_267E3529C()
{
  v1 = *(v0 + 72);
  sub_267E35168(v19);
  v2 = v20;
  v3 = v21;
  __swift_project_boxed_opaque_existential_0(v19, v20);
  v4 = *(v3 + 32);

  v5 = v4(v2, v3);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 248);

  sub_267BB7A18(v5, v7, v8);

  v10 = v22[0];
  v9 = v22[1];
  v11 = v23;
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (v11 == 255)
  {
    return 0;
  }

  if (v11 != 1)
  {
    sub_267B9FF34(v22, &qword_280229918, &qword_267F003B0);
    return 0;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);

  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19[0] = v16;
    *v15 = 136315138;
    v17 = sub_267BA33E8(v10, v9, v19);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_267B93000, v13, v14, "#ReadComponentAction processedContent is .differentLanguage(%s)", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D60A7B0](v16, -1, -1);
    MEMORY[0x26D60A7B0](v15, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_267E354DC()
{
  v1 = *(v0 + 72);
  sub_267E35168(v18);
  v2 = v19;
  v3 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v4 = *(v3 + 32);

  v5 = v4(v2, v3);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 248);

  sub_267BB7A18(v5, v7, v8);

  v9 = v21[0];
  v10 = v21[1];
  v11 = v22;
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v11 == 255)
  {
    return 0;
  }

  if (v11 != 1)
  {
    sub_267B9FF34(v21, &qword_280229918, &qword_267F003B0);
    return 0;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);

  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_267BA33E8(v9, v10, v18);
    _os_log_impl(&dword_267B93000, v13, v14, "#ReadComponentAction processedContent is .differentLanguage(%s)", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D60A7B0](v16, -1, -1);
    MEMORY[0x26D60A7B0](v15, -1, -1);
  }

  return v9;
}

uint64_t sub_267E3570C(uint64_t a1, char a2)
{
  *(v3 + 616) = v2;
  *(v3 + 936) = a2;
  *(v3 + 608) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10) - 8) + 64) + 15;
  *(v3 + 624) = swift_task_alloc();
  v5 = sub_267EF4CC8();
  *(v3 + 632) = v5;
  v6 = *(v5 - 8);
  *(v3 + 640) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 648) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0) - 8) + 64) + 15;
  *(v3 + 656) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  *(v3 + 664) = swift_task_alloc();
  v10 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  *(v3 + 672) = swift_task_alloc();
  v11 = sub_267EF48A8();
  *(v3 + 680) = v11;
  v12 = *(v11 - 8);
  *(v3 + 688) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 696) = swift_task_alloc();
  v14 = sub_267EF2CC8();
  *(v3 + 704) = v14;
  v15 = *(v14 - 8);
  *(v3 + 712) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0) - 8) + 64) + 15;
  *(v3 + 736) = swift_task_alloc();
  *(v3 + 744) = swift_task_alloc();
  v18 = sub_267EF6EB8();
  *(v3 + 752) = v18;
  v19 = *(v18 - 8);
  *(v3 + 760) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 768) = swift_task_alloc();
  v21 = sub_267EF8228();
  *(v3 + 776) = v21;
  v22 = *(v21 - 8);
  *(v3 + 784) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 792) = swift_task_alloc();
  v24 = sub_267EF79B8();
  *(v3 + 800) = v24;
  v25 = *(v24 - 8);
  *(v3 + 808) = v25;
  v26 = *(v25 + 64) + 15;
  *(v3 + 816) = swift_task_alloc();
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  *(v3 + 824) = ComponentPatternCommonParameters;
  v28 = *(*(ComponentPatternCommonParameters - 8) + 64) + 15;
  *(v3 + 832) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E35AF4, 0, 0);
}

uint64_t sub_267E35AF4()
{
  v71 = v0;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 616);
  v2 = sub_267EF8A08();
  *(v0 + 840) = __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 616);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v70 = v7;
    *v6 = 136315138;
    sub_267E35168((v0 + 552));
    v8 = *(v0 + 576);
    v9 = *(v0 + 584);
    __swift_project_boxed_opaque_existential_0((v0 + 552), v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64) + 15;
    swift_task_alloc();
    (*(v10 + 16))();
    v12 = *(v9 + 8);
    v13 = sub_267EF90A8();
    v15 = v14;

    __swift_destroy_boxed_opaque_existential_0((v0 + 552));
    v16 = sub_267BA33E8(v13, v15, &v70);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_267B93000, v3, v4, "#ReadComponentAction Running RF patterns for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v17 = *(v0 + 616);
  v18 = *(v17 + 72);
  v19 = v18[5];
  v20 = v18[6];
  __swift_project_boxed_opaque_existential_0(v18 + 2, v19);
  v21 = *(v20 + 8);

  v21(v19, v20);

  v64 = sub_267BFA8F4((v0 + 112));
  *(v0 + 848) = v64;
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 832);
  v65 = *(v0 + 816);
  v66 = *(v0 + 824);
  v67 = *(v0 + 808);
  v69 = *(v0 + 800);
  v23 = *(v0 + 792);
  v24 = *(v0 + 784);
  v25 = *(v0 + 776);
  v26 = *(v0 + 616);
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v27 = sub_267BB4A3C();
  *(v0 + 856) = v27;
  sub_267E35168((v0 + 152));
  v28 = *(v17 + 72);
  type metadata accessor for MessagesDialogContext();

  v29 = v17;
  v30 = sub_267BFB110((v0 + 152), v28);
  v31 = sub_267BF4170();
  v63 = sub_267BFBFBC(v30, v31);
  *(v0 + 864) = v63;

  v62 = *(v29 + 72);
  *(v0 + 872) = v62;

  sub_267BF4A24((v0 + 152), v27);
  sub_267EF90F8();

  (*(v67 + 16))(&v22[v66[5]], v65, v69);
  v32 = *MEMORY[0x277D5D508];
  v33 = *(v24 + 104);
  v34 = OUTLINED_FUNCTION_5_56();
  v33(v34);
  v61 = OUTLINED_FUNCTION_7_45();
  v35 = *(v24 + 8);
  v36 = OUTLINED_FUNCTION_68_0();
  v35(v36);
  v37 = *MEMORY[0x277D5D4D0];
  v38 = OUTLINED_FUNCTION_5_56();
  v33(v38);
  v60 = OUTLINED_FUNCTION_7_45();
  v39 = OUTLINED_FUNCTION_68_0();
  v35(v39);
  v40 = *MEMORY[0x277D5D4C0];
  v41 = OUTLINED_FUNCTION_5_56();
  v33(v41);
  v42 = OUTLINED_FUNCTION_7_45();
  v43 = OUTLINED_FUNCTION_68_0();
  v35(v43);
  v44 = *MEMORY[0x277D5D4C8];
  v45 = OUTLINED_FUNCTION_5_56();
  v33(v45);
  v46 = OUTLINED_FUNCTION_7_45();
  v47 = OUTLINED_FUNCTION_68_0();
  v35(v47);
  v48 = *MEMORY[0x277D5D4B8];
  v49 = OUTLINED_FUNCTION_5_56();
  v33(v49);
  v50 = OUTLINED_FUNCTION_7_45();
  v51 = OUTLINED_FUNCTION_68_0();
  v35(v51);
  (*(v67 + 8))(v65, v69);
  *v22 = 1;
  *&v22[v66[6]] = v61;
  *&v22[v66[7]] = v60;
  *&v22[v66[8]] = v42;
  *&v22[v66[9]] = v46;
  *&v22[v66[10]] = v50;
  *(v0 + 216) = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
  *(v0 + 224) = &off_2878D3460;
  *(v0 + 192) = v64;
  v52 = *(v0 + 176);
  v53 = *(v0 + 184);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 152, v52);
  v54 = *(v53 + 72);

  v68 = (v54 + *v54);
  v55 = v54[1];
  v56 = swift_task_alloc();
  *(v0 + 880) = v56;
  *v56 = v0;
  v56[1] = sub_267E3611C;
  v57 = *(v0 + 832);
  v58 = *(v0 + 936);

  return v68(v62, v63, v57, v58, v0 + 192, v52, v53);
}

uint64_t sub_267E3611C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 880);
  *v3 = *v1;
  v2[111] = v6;
  v2[112] = v0;

  if (v0)
  {
    v7 = v2[109];
    sub_267E39618(v2[104]);

    v8 = sub_267E36E10;
  }

  else
  {
    v9 = v2[109];
    sub_267E39618(v2[104]);

    __swift_destroy_boxed_opaque_existential_0(v2 + 24);
    v8 = sub_267E3625C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267E3625C()
{
  v140 = v0;
  v1 = *(*(*(v0 + 616) + 72) + 416);
  if (!v1 || !*(v1 + 112))
  {
    v6 = *(v0 + 896);
    goto LABEL_22;
  }

  v2 = *(v1 + 104);
  v3 = *(*(v0 + 864) + 24);
  if (!v3 || !*(v3 + 32))
  {
    v6 = *(v0 + 896);
    goto LABEL_10;
  }

  v4 = *(*(*(v0 + 616) + 72) + 416);
  v5 = sub_267BF4920();
  v6 = *(v0 + 896);
  if (!v5)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = *(v0 + 768);
  v8 = *(v0 + 744);
  v9 = *(v0 + 728);
  (*(*(v0 + 760) + 104))(v7, *MEMORY[0x277D5FFB8], *(v0 + 752));
  v10 = sub_267EF6EA8();
  OUTLINED_FUNCTION_9_46(v10);

  sub_267EF2CB8();
  v11 = OUTLINED_FUNCTION_117();
  sub_267DA8A74(v11, v12, v13, v14, v7, v8, v9);
  if (v6)
  {
    v15 = *(v0 + 888);
    v16 = *(v0 + 864);
    v17 = *(v0 + 856);
    v18 = *(v0 + 848);
    v134 = *(v0 + 768);
    v19 = *(v0 + 760);
    v130 = *(v0 + 744);
    v132 = *(v0 + 752);
    v128 = *(v0 + 728);
    v20 = *(v0 + 712);
    v21 = *(v0 + 704);

    (*(v20 + 8))(v128, v21);
    sub_267B9FF34(v130, &unk_28022BD40, &unk_267F003E0);
    (*(v19 + 8))(v134, v132);
LABEL_29:
    OUTLINED_FUNCTION_0_64();
    v75 = *(v0 + 728);
    v76 = *(v0 + 720);
    v77 = *(v0 + 696);
    v127 = *(v0 + 672);
    v129 = *(v0 + 664);
    v131 = *(v0 + 656);
    v133 = *(v0 + 648);
    v136 = *(v0 + 624);
    __swift_destroy_boxed_opaque_existential_0((v0 + 152));
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));

    OUTLINED_FUNCTION_17();

    return v78();
  }

  v118 = *(v0 + 760);
  v137 = *(v0 + 752);
  v138 = *(v0 + 768);
  v119 = *(v0 + 744);
  v120 = *(v0 + 728);
  v121 = *(v0 + 712);
  v122 = *(v0 + 704);

  (*(v121 + 8))(v120, v122);
  sub_267B9FF34(v119, &unk_28022BD40, &unk_267F003E0);
  (*(v118 + 8))(v138, v137);
  v6 = 0;
LABEL_11:
  v22 = *(v0 + 616);
  if ((sub_267E3794C() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v23 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_0((v0 + 152), *(v0 + 176));
  v24 = *(v23 + 16);
  v25 = OUTLINED_FUNCTION_68_0();
  v27 = v26(v25);
  if (!sub_267BAF0DC(v27))
  {

    goto LABEL_21;
  }

  sub_267BBD0EC(0, (v27 & 0xC000000000000001) == 0, v27);
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x26D609870](0, v27);
  }

  else
  {
    v28 = *(v27 + 32);
  }

  v29 = v28;

  v30 = [v29 sender];

  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = *(v0 + 840);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_267B93000, v32, v33, "#ReadComponentAction First message from sender, recording", v34, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v35 = *(v0 + 736);
  v36 = *(v0 + 720);

  v37 = sub_267EF6EA8();
  OUTLINED_FUNCTION_9_46(v37);
  sub_267EF2CB8();
  v38 = OUTLINED_FUNCTION_117();
  sub_267BD5008(v38, v39, v40, v41, v35, v36);
  if (v6)
  {
    v42 = *(v0 + 888);
    v43 = *(v0 + 864);
    v44 = *(v0 + 856);
    v45 = *(v0 + 848);
    v135 = *(v0 + 736);
    v46 = *(v0 + 720);
    v47 = *(v0 + 712);
    v48 = *(v0 + 704);

    (*(v47 + 8))(v46, v48);
    sub_267B9FF34(v135, &unk_28022BD40, &unk_267F003E0);
    goto LABEL_29;
  }

  v123 = *(v0 + 736);
  v124 = *(v0 + 720);
  v125 = *(v0 + 712);
  v126 = *(v0 + 704);

  (*(v125 + 8))(v124, v126);
  sub_267B9FF34(v123, &unk_28022BD40, &unk_267F003E0);
  v6 = 0;
LABEL_22:
  v49 = *(v0 + 840);
  v50 = *(v0 + 888);
  v51 = sub_267EF89F8();
  v52 = sub_267EF95D8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = *(v0 + 888);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v139 = v55;
    *v54 = 136315138;
    v56 = [v53 patternId];
    v57 = sub_267EF9028();
    v59 = v58;

    v60 = sub_267BA33E8(v57, v59, &v139);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_267B93000, v51, v52, "#ReadComponentAction pattern %s successfully executed", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v61 = &type metadata for Features;
  *(v0 + 256) = &type metadata for Features;
  v62 = sub_267BAFCAC();
  *(v0 + 264) = v62;
  *(v0 + 232) = 2;
  v63 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  if ((v63 & 1) == 0)
  {
    v64 = *(*(*(v0 + 616) + 72) + 426);
    v65 = sub_267E354DC();
    v67 = v66;
    ConversationEventStore.init()(v0 + 16);
    sub_267C917B0(v64, v65, v67, 0, v0 + 16, 1);

    sub_267B9EF14(v0 + 16);
  }

  v68 = MEMORY[0x277D84F90];
  *(v0 + 592) = MEMORY[0x277D84F90];
  v69 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  if ((sub_267EF3C48() & 1) == 0)
  {
    goto LABEL_34;
  }

  v70 = *(v0 + 616);
  sub_267E37F40(*(v0 + 888));
  if (v6)
  {
    v71 = *(v0 + 888);
    v72 = *(v0 + 864);
    v73 = *(v0 + 856);
    v74 = *(v0 + 848);

    goto LABEL_29;
  }

  v80 = v0 + 592;
  MEMORY[0x26D608F90]();
  if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    sub_267EF9368();
    v68 = *v80;
LABEL_34:
    v81 = (v0 + 600);
    v82 = *(v0 + 840);
    *(v0 + 296) = v61;
    *(v0 + 304) = v62;
    *(v0 + 272) = 14;
    v62 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));
    v83 = sub_267EF89F8();
    v84 = sub_267EF95D8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 67109120;
      *(v85 + 4) = v62 & 1;
      _os_log_impl(&dword_267B93000, v83, v84, "#ReadComponentAction multilingualMessageReading feature enabled : %{BOOL}d", v85, 8u);
      OUTLINED_FUNCTION_32_0();
    }

    if (v62 & 1) != 0 && *(*(*(v0 + 616) + 72) + 425) == 1 && (sub_267E3529C())
    {
      v86 = *(v0 + 616);
      sub_267E37718();
      if (v87)
      {
      }
    }

    *v81 = v68;
    v80 = sub_267BAF0DC(v68);
    v61 = 0x277D47000;
    if (!v80)
    {
      break;
    }

    while (!__OFSUB__(v80--, 1))
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x26D609870](v80, v68);
      }

      else
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v80 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v89 = *(v68 + 32 + 8 * v80);
      }

      v90 = v89;
      objc_opt_self();
      v91 = swift_dynamicCastObjCClass();
      v62 = v91 == 0;

      if (v91 || !v80)
      {
        v81 = (v0 + 600);
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    sub_267EF9328();
  }

  LOBYTE(v62) = 1;
LABEL_52:
  v92 = swift_task_alloc();
  *(v92 + 16) = v81;
  v93 = sub_267C956D0(sub_267C96444, v92, v80, v62);

  if (v93)
  {
    objc_opt_self();
    v94 = swift_dynamicCastObjCClass();
    if (v94)
    {
      v95 = *(v0 + 616);
      sub_267E382E4(v94);
    }
  }

  v96 = *(v0 + 696);
  v97 = *(v0 + 672);
  v98 = *(v0 + 616);
  sub_267EF3CB8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  if (!*(*(v98 + 72) + 88))
  {
    v99 = *(v0 + 696);
    v100 = *(v0 + 664);
    v101 = *(v0 + 176);
    v102 = *(v0 + 184);
    __swift_project_boxed_opaque_existential_0((v0 + 152), v101);
    v103 = (*(v102 + 16))(v101, v102);
    v104 = sub_267C904F0(v103);

    v105 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
    sub_267EF3B98();
    *(v0 + 336) = &type metadata for MessagesFeatureFlagsImpl;
    *(v0 + 344) = off_2878D1228;
    sub_267BBB55C();

    __swift_destroy_boxed_opaque_existential_0((v0 + 312));
    v106 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v106);
    sub_267EF4818();
  }

  v107 = *(v0 + 696);
  v108 = *(v0 + 616);
  sub_267EF4838();
  v109 = sub_267EF4198();
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  swift_allocObject();
  *(v0 + 904) = sub_267EF4188();
  v112 = *(sub_267E351F8() + 128);
  *(v0 + 912) = v112;

  v113 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  v114 = sub_267EF3C48();
  v115 = swift_task_alloc();
  *(v0 + 920) = v115;
  *v115 = v0;
  v115[1] = sub_267E36F24;
  v116 = *(v0 + 888);
  v117 = *(v0 + 696);

  return sub_267BCF3A4(v0 + 392, v116, v117, v112, v114 & 1);
}

uint64_t sub_267E36E10()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v4 = v0[112];
  OUTLINED_FUNCTION_0_64();
  OUTLINED_FUNCTION_1_73();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E36F24()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = v2[115];
  *v4 = *v1;
  *(v3 + 928) = v0;

  v6 = v2[114];
  v7 = v2[113];

  if (v0)
  {
    v8 = sub_267E375E0;
  }

  else
  {
    v8 = sub_267E3706C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267E3706C()
{
  sub_267BE58F4((v0 + 392), v0 + 352);
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_0((v0 + 152), v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = sub_267C904F0(v3);

  if (v4)
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 656);
    v7 = objc_allocWithZone(MEMORY[0x277D47918]);
    v8 = v4;
    v9 = [v7 init];
    sub_267D60504(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = *(v0 + 712);
      v12 = *(v0 + 704);
      v13 = *(v0 + 656);
      v10 = sub_267EF2C48();
      (*(v11 + 8))(v13, v12);
    }

    v14 = *(v0 + 632);
    v15 = *(v0 + 624);
    [v9 setDateReadingStarted_];

    sub_267BA9F38(0, &qword_28022A098, 0x277D47B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0A0, &unk_267F003F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_267EFCA40;
    *(v17 + 32) = v9;
    *(inited + 32) = v17;
    sub_267E7EA58(inited);
    v19 = v18;

    sub_267B9AFEC(v0 + 352, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);
      v22 = *(v0 + 632);
      v23 = *(v0 + 624);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
      (*(v21 + 32))(v20, v23, v22);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_267EFCA40;
      *(v24 + 32) = v19;
      *(v0 + 536) = v22;
      *(v0 + 544) = MEMORY[0x277D5C1D8];
      __swift_allocate_boxed_opaque_existential_0((v0 + 512));
      v25 = v19;
      sub_267D76034();

      (*(v21 + 8))(v20, v22);
      __swift_destroy_boxed_opaque_existential_0((v0 + 352));
      sub_267BE58F4((v0 + 512), v0 + 352);
    }

    else
    {
      v26 = *(v0 + 632);
      v27 = *(v0 + 624);

      __swift_storeEnumTagSinglePayload(v27, 1, 1, v26);
      sub_267B9FF34(v27, &qword_28022BB70, &unk_267F0BA10);
    }
  }

  v28 = *(v0 + 616);
  v29 = sub_267E38694();
  if (v29)
  {
    v30 = v29;
    v31 = *(v0 + 840);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_267B93000, v32, v33, "#ReadComponentAction adding a command to mark as read", v34, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v35 = *(v0 + 608);

    sub_267B9AFEC(v0 + 352, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_267EFCA40;
    *(v36 + 32) = v30;
  }

  else
  {
    sub_267B9AFEC(v0 + 352, *(v0 + 608));
    v36 = MEMORY[0x277D84F90];
  }

  v37 = *(v0 + 888);
  v38 = *(v0 + 864);
  v39 = *(v0 + 856);
  v40 = *(v0 + 848);
  v41 = *(v0 + 832);
  v48 = *(v0 + 816);
  v49 = *(v0 + 792);
  v50 = *(v0 + 768);
  v51 = *(v0 + 744);
  v52 = *(v0 + 736);
  v53 = *(v0 + 728);
  v42 = *(v0 + 696);
  v43 = *(v0 + 688);
  v44 = *(v0 + 680);
  v54 = *(v0 + 720);
  v55 = *(v0 + 672);
  v56 = *(v0 + 664);
  v57 = *(v0 + 656);
  v58 = *(v0 + 648);
  v59 = *(v0 + 624);
  v45 = *(v0 + 608);

  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  (*(v43 + 8))(v42, v44);
  *(v45 + 40) = MEMORY[0x277D84F90];
  *(v45 + 48) = v36;
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  OUTLINED_FUNCTION_17();

  return v46();
}

uint64_t sub_267E375E0()
{
  v1 = v0[111];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[85];

  (*(v6 + 8))(v5, v7);
  v8 = v0[116];
  OUTLINED_FUNCTION_0_64();
  OUTLINED_FUNCTION_1_73();

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267E37718()
{
  v1 = *(v0 + 72);
  sub_267E35168(v17);
  v2 = v18;
  v3 = v19;
  __swift_project_boxed_opaque_existential_0(v17, v18);
  v4 = *(v3 + 32);

  v5 = v4(v2, v3);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 248);

  sub_267BB7A18(v5, v7, v8);

  if (v21 == 255)
  {
    goto LABEL_9;
  }

  if (v21 != 1)
  {
    sub_267B9FF34(v20, &qword_280229918, &qword_267F003B0);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v17);
    return 0;
  }

  v9 = v20[0];
  v10 = v20[1];

  __swift_destroy_boxed_opaque_existential_0(v17);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);

  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_267BA33E8(v9, v10, v17);
    _os_log_impl(&dword_267B93000, v12, v13, "#ReadComponentAction processedContent is .differentLanguage(%s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D60A7B0](v15, -1, -1);
    MEMORY[0x26D60A7B0](v14, -1, -1);
  }

  return v9;
}

uint64_t sub_267E3794C()
{
  v1 = v0;
  v2 = *(v0 + 72);
  sub_267E35168(&v40);
  v3 = *(&v41 + 1);
  v4 = v42;
  __swift_project_boxed_opaque_existential_0(&v40, *(&v41 + 1));
  v5 = *(v4 + 32);

  v5(v3, v4);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v40);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
    }
  }

  else
  {
    sub_267B9FF34(&v29, &qword_280229910, &unk_267EFEB70);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  v6 = *(v0 + 72);
  sub_267E35168(&v37);
  v7 = *(&v38 + 1);
  v8 = v39;
  __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
  v9 = *(v8 + 32);

  v9(v7, v8);
  sub_267BD9E24();

  __swift_destroy_boxed_opaque_existential_0(&v37);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {
    sub_267B9FF34(&v29, &qword_280229910, &unk_267EFEB70);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_267E35168(&v29);
  v10 = v30;
  v11 = v31;
  __swift_project_boxed_opaque_existential_0(&v29, v30);
  v12 = (*(v11 + 16))(v10, v11);
  if (sub_267BAF0DC(v12))
  {
    sub_267BBD0EC(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D609870](0, v12);
    }

    else
    {
      v13 = *(v12 + 32);
    }

    v14 = v13;

    v15 = [v14 sender];
  }

  else
  {

    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v29);
  sub_267E39674(&v40, &v29);
  v16 = v30;
  if (v30)
  {
    v17 = v31;
    __swift_project_boxed_opaque_existential_0(&v29, v30);
    v16 = (*(v17 + 16))(v16, v17);
    __swift_destroy_boxed_opaque_existential_0(&v29);
  }

  else
  {
    sub_267B9FF34(&v29, &qword_280229CE0, &qword_267F00410);
  }

  v18 = *(v1 + 72);
  sub_267E35168(&v29);
  v19 = v30;
  v20 = v31;
  __swift_project_boxed_opaque_existential_0(&v29, v30);
  v21 = *(v20 + 32);

  v21(v19, v20);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v29);
  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      if (*(v33 + 16) == 1)
      {
        v28 = v34;
        if (v32)
        {
        }

        else
        {
          v27 = sub_267C904B4(v33);

          if (v27 != 1)
          {

            v16 = v27;
          }
        }
      }

      else
      {
        v22 = v34;
      }
    }
  }

  else
  {
    sub_267B9FF34(v35, &qword_280229910, &unk_267EFEB70);
  }

  if (!v16)
  {

LABEL_29:
    v25 = 1;
    goto LABEL_30;
  }

  if (!v15)
  {

    goto LABEL_29;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v23 = v15;
  v24 = sub_267EF9818();

  v25 = v24 ^ 1;
LABEL_30:
  sub_267B9FF34(&v37, &qword_280229CE0, &qword_267F00410);
  sub_267B9FF34(&v40, &qword_280229CE0, &qword_267F00410);
  return v25 & 1;
}

id sub_267E37F40(void *a1)
{
  v2 = [a1 dialog];
  sub_267BA9F38(0, &qword_2802295A0, 0x277D052C8);
  v3 = sub_267EF92F8();

  v4 = sub_267BAF0DC(v3);
  v5 = 0;
  v32 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D609870](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v2 = v6;
    v1 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v23 = MEMORY[0x26D609870](0, v2);
      goto LABEL_24;
    }

    v7 = [v6 fullSpeak];
    v8 = sub_267EF9028();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      goto LABEL_15;
    }

    v12 = [v2 supportingSpeak];
    v8 = sub_267EF9028();
    v10 = v13;

    v14 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
LABEL_15:
      v15 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v32 + 16);
        sub_267BF4EE8();
        v15 = v19;
      }

      v16 = *(v15 + 16);
      v2 = v16 + 1;
      if (v16 >= *(v15 + 24) >> 1)
      {
        sub_267BF4EE8();
        v15 = v20;
      }

      *(v15 + 16) = v2;
      v32 = v15;
      v17 = v15 + 16 * v16;
      *(v17 + 32) = v8;
      *(v17 + 40) = v10;
      v5 = v1;
    }

    else
    {

      ++v5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  v3 = sub_267EF8FC8();
  v4 = v21;

  v1 = a1;
  v22 = [a1 dialog];
  v2 = sub_267EF92F8();

  if (sub_267BAF0DC(v2))
  {
    sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    v23 = *(v2 + 32);
LABEL_24:
    v24 = v23;

    v25 = [v24 dialogId];

    v26 = sub_267EF9028();
    v28 = v27;

    goto LABEL_26;
  }

  v26 = 0;
  v28 = 0xE000000000000000;
LABEL_26:
  v29 = sub_267EF92D8();
  [v1 setDialog_];

  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
  return sub_267E7E88C(v3, v4, v26, v28, 0, 0, 0);
}