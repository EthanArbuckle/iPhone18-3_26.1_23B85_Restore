char *sub_1E3A384DC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = OUTLINED_FUNCTION_43_0();
      sub_1E34AF4E4(v4, v5, v6);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    v7 = OUTLINED_FUNCTION_16_0();
    return MEMORY[0x1E6911E60](v7);
  }

  result = sub_1E4207384();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1E3A38568()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v12) + 0x118))(1);
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 isDeeplinkLaunched];

  if (v14)
  {
    type metadata accessor for VideosUI();
    static VideosUI.handleUnifiedMessagingAppDidFinishLoading()();
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v15(v0);
  v16 = OUTLINED_FUNCTION_102_3();
  sub_1E37E93E8(v16, v17, v18);
  v19 = v4;
  v20 = sub_1E41FFC94();
  v21 = sub_1E42067F4();

  if (os_log_type_enabled(v20, v21))
  {
    v36 = v8;
    OUTLINED_FUNCTION_57_3();
    v22 = swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_15_4();
    v35 = swift_slowAlloc();
    *v22 = 138412546;
    *(v22 + 4) = v19;
    v34 = v23;
    *v23 = v19;
    OUTLINED_FUNCTION_332();
    v24 = OUTLINED_FUNCTION_75();
    sub_1E37E93E8(v24, v25, v26);
    v27 = sub_1E41FE414();
    LODWORD(v23) = __swift_getEnumTagSinglePayload(v2, 1, v27);
    v28 = v19;
    if (v23 == 1)
    {
      sub_1E325F6F0(v2, &unk_1ECF363C0);
      v29 = 0;
    }

    else
    {
      v29 = sub_1E41FE304();
      OUTLINED_FUNCTION_37_1();
      (*(v30 + 8))(v2, v27);
    }

    sub_1E325F6F0(v1, &unk_1ECF363C0);
    v31 = OUTLINED_FUNCTION_16_0();
    sub_1E3270FC8(v31, v32, v33);
    OUTLINED_FUNCTION_50();

    *(v22 + 14) = v29;
    OUTLINED_FUNCTION_347(&dword_1E323F000, v20, v21, "OpenURLHandler::finished handling %@ for %s");
    sub_1E325F6F0(v34, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v10 + 8))(v0, v36);
  }

  else
  {

    sub_1E325F6F0(v1, &unk_1ECF363C0);
    (*(v10 + 8))(v0, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A38918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, void *a24, void *a25, uint64_t a26, char a27, void *a28, char a29, void *a30)
{
  OUTLINED_FUNCTION_31_1();
  v196 = v34;
  v199 = v35;
  v201 = v36;
  v200 = v37;
  v192 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v39);
  v191 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v41);
  sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_47_3();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v44);
  v193 = v45;
  OUTLINED_FUNCTION_219();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_72_13();
  v47 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4_6();
  v51 = v49 - v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_34_1();
  v54 = objc_opt_self();
  v55 = [v54 sharedInstance];
  v56 = [v55 isShowingExtras];

  if (!v200)
  {
    v188 = v31;
    v189 = v30;
    v197 = v47;
    if (v196)
    {
      sub_1E3A3A7F4();
      OUTLINED_FUNCTION_331();
      goto LABEL_5;
    }

    if ((a22 & v56 & 1) != 0 && (OUTLINED_FUNCTION_25(), swift_beginAccess(), v47 = *(a23 + 16), sub_1E32AE9B0(v47)))
    {
      if ((v47 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1E6911E60](0, v47);
        OUTLINED_FUNCTION_92_2();

        v58 = v54;
        v59 = &selRef_setWaitingForTransactionToStart_;
      }

      else
      {
        v58 = v54;
        v59 = &selRef_setWaitingForTransactionToStart_;
        if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v54 = *(v47 + 32);
      }

      v60 = [v58 v59[64]];
      [v60 presentViewControllerOnExtrasNav_];
    }

    else
    {
      if (a24)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v61 = a25[2];
        if (v61)
        {
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (sub_1E32AE9B0(*(a23 + 16)))
          {
            v62 = a24;
            v61;
            v198 = v62;
            v63 = OUTLINED_FUNCTION_244();
            v65 = v32;
            if ([v63 v64] && (v66 = OUTLINED_FUNCTION_305(), (objc_msgSend(v66, v67) & 1) == 0))
            {
              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v97 = *(a26 + 16);
              if (v97 && (objc_opt_self(), OUTLINED_FUNCTION_345()))
              {
                if ((a27 & 1) != 0 && a28)
                {
                  v98 = v97;
                }

                else
                {
                  v160 = v97;
                }

                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                OUTLINED_FUNCTION_67_0();
                sub_1E3A3B4EC();

                v161 = [objc_opt_self() topPresentedViewController];
                if (v161)
                {
                  v162 = v161;
                  v163 = objc_opt_self();
                  OUTLINED_FUNCTION_263(v163, sel_presentViewController_fromViewController_WithConfiguration_completion_);
                }

                else
                {
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_164_0();
                  v172(v33);
                  v173 = sub_1E41FFC94();
                  v174 = sub_1E42067F4();
                  if (OUTLINED_FUNCTION_161(v174))
                  {
                    OUTLINED_FUNCTION_13_13();
                    v175 = swift_slowAlloc();
                    OUTLINED_FUNCTION_15_4();
                    v176 = swift_slowAlloc();
                    v208 = v176;
                    *v175 = 136315138;
                    OUTLINED_FUNCTION_23();
                    *(v175 + 4) = sub_1E3270FC8(0xD000000000000019, v177, &v208);
                    OUTLINED_FUNCTION_82_0();
                    _os_log_impl(v178, v179, v180, v181, v182, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v176);
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                  }

                  else
                  {
                  }

                  v185 = OUTLINED_FUNCTION_120();
                  v186(v185);
                }
              }

              else
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                OUTLINED_FUNCTION_312();
                sub_1E3A3B5DC();
              }

              OUTLINED_FUNCTION_331();
              sub_1E3A38568();
            }

            else if (a29)
            {
              v68 = OUTLINED_FUNCTION_102_3();
              sub_1E37E93E8(v68, v69, v70);
              OUTLINED_FUNCTION_166_1();
              v72 = (v71 + 56) & ~v71;
              v73 = OUTLINED_FUNCTION_340();
              v73[2] = v201;
              v73[3] = a28;
              v73[4] = a23;
              OUTLINED_FUNCTION_158_3();
              *(v74 + 40) = v75;
              OUTLINED_FUNCTION_25_25();
              *(v76 + 48) = a25;
              sub_1E327D738(v32, v76 + v72);
              v77 = a28;

              v78 = a25;
              v201;
              OUTLINED_FUNCTION_341();
            }

            else
            {
              v88 = a30;
              if ((a27 & 1) != 0 && a28)
              {
                v89 = OUTLINED_FUNCTION_312();
              }

              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v91 = *(a26 + 16);
              if (v91 && (objc_opt_self(), OUTLINED_FUNCTION_345()))
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                v92 = v91;
                OUTLINED_FUNCTION_312();
                sub_1E3A3B4EC();

                v93 = [objc_opt_self() topPresentedViewController];
                if (v93)
                {
                  v94 = v93;
                  v95 = objc_opt_self();
                  OUTLINED_FUNCTION_263(v95, sel_presentViewController_fromViewController_WithConfiguration_completion_);
                }

                else
                {
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_107_0();
                  v164(v188);
                  v165 = sub_1E41FFC94();
                  v166 = sub_1E42067F4();
                  v195 = v165;
                  if (os_log_type_enabled(v165, v166))
                  {
                    OUTLINED_FUNCTION_13_13();
                    v167 = swift_slowAlloc();
                    OUTLINED_FUNCTION_15_4();
                    v168 = swift_slowAlloc();
                    v202 = v168;
                    *v167 = 136315138;
                    OUTLINED_FUNCTION_23();
                    *(v167 + 4) = sub_1E3270FC8(0xD000000000000019, v169, &v202);
                    _os_log_impl(&dword_1E323F000, v195, v166, "OpenURLHandler::%s failed to get topPresentedViewController.", v167, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v168);
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                    v65 = v32;
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                  }

                  else
                  {
                  }

                  v183 = OUTLINED_FUNCTION_287();
                  v184(v183, v197);
                  v88 = a30;
                }
              }

              else
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                OUTLINED_FUNCTION_312();
                sub_1E3A3B4EC();
              }

              sub_1E3280A90(0, &qword_1ECF31178);
              swift_getObjCClassFromMetadata();
              v99 = OUTLINED_FUNCTION_305();
              if ([v99 v100])
              {
                sub_1E3280A90(0, &qword_1EE23B1D0);
                v194 = sub_1E4206A04();
                sub_1E4204004();
                sub_1E4204074();
                v101 = OUTLINED_FUNCTION_210();
                v102(v101);
                OUTLINED_FUNCTION_4_0();
                v103 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v104 = OUTLINED_FUNCTION_102_3();
                sub_1E37E93E8(v104, v105, v106);
                v107 = v65;
                v108 = (v193[80] + 56) & ~v193[80];
                v109 = v88;
                v110 = swift_allocObject();
                v110[2] = v103;
                v110[3] = v198;
                v110[4] = v109;
                v110[5] = v201;
                OUTLINED_FUNCTION_25_25();
                *(v111 + 48) = v193;
                sub_1E327D738(v107, v111 + v108);
                v206 = sub_1E3A4A79C;
                v207 = v110;
                OUTLINED_FUNCTION_94_8();
                v203 = 1107296256;
                OUTLINED_FUNCTION_14_1();
                v204 = v112;
                v205 = &block_descriptor_176;
                v113 = _Block_copy(&v202);
                v114 = v109;
                v115 = v198;
                v116 = v201;
                v117 = v193;

                sub_1E4203FE4();
                v202 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_3_101();
                sub_1E3A496B8(v118, v119);
                v120 = OUTLINED_FUNCTION_97_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(v120);
                OUTLINED_FUNCTION_47();
                sub_1E328FCF4(v121, v122);
                OUTLINED_FUNCTION_326();
                sub_1E42072E4();
                MEMORY[0x1E69112E0](v189, v190, v109, v113);
                OUTLINED_FUNCTION_252();

                _Block_release(v113);
                OUTLINED_FUNCTION_15_5();
                v124(v109, v192);
                OUTLINED_FUNCTION_15_5();
                v125(v190, v191);
                OUTLINED_FUNCTION_290();
                v126();
                goto LABEL_68;
              }

              v127 = OUTLINED_FUNCTION_102_3();
              sub_1E37E93E8(v127, v128, v129);
              v130 = (v193[80] + 32) & ~v193[80];
              swift_allocObject();
              OUTLINED_FUNCTION_25_25();
              *(v131 + 16) = v201;
              *(v131 + 24) = v193;
              sub_1E327D738(v65, v131 + v130);
              v201;
              v132 = v193;
              OUTLINED_FUNCTION_74();
              sub_1E3A3B98C();
            }

            OUTLINED_FUNCTION_252();

            goto LABEL_68;
          }
        }

        v79 = OUTLINED_FUNCTION_123_1();
        sub_1E37E93E8(v79, v80, v81);
        OUTLINED_FUNCTION_166_1();
        v83 = (v82 + 32) & ~v82;
        v84 = OUTLINED_FUNCTION_340();
        *(v84 + 16) = v201;
        *(v84 + 24) = v199;
        sub_1E327D738(v32, v84 + v83);
        v85 = a24;
        v201;
        v86 = v199;
        OUTLINED_FUNCTION_341();

LABEL_68:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v54 = a25[2];
      if (!v54)
      {
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (!sub_1E32AE9B0(*(a23 + 16)))
      {
        goto LABEL_68;
      }

      if (a27)
      {
        OUTLINED_FUNCTION_311();
        v87 = v54;
        if (a25)
        {
        }
      }

      else
      {
        v96 = v54;
        OUTLINED_FUNCTION_311();
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v133 = *(v47 + 16);
      if (v133)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_25();
          swift_beginAccess();

          v134 = v133;
          OUTLINED_FUNCTION_53();
          sub_1E3A3B4EC();

          v135 = [objc_opt_self() topPresentedViewController];
          if (v135)
          {
            v136 = v135;
            objc_opt_self();
            v137 = OUTLINED_FUNCTION_123_1();
            sub_1E37E93E8(v137, v138, v139);
            OUTLINED_FUNCTION_166_1();
            v141 = v134;
            v142 = (v140 + 32) & ~v140;
            v143 = swift_allocObject();
            *(v143 + 16) = v201;
            *(v143 + 24) = v199;
            sub_1E327D738(v32, v143 + v142);
            v206 = sub_1E3A4A798;
            v207 = v143;
            OUTLINED_FUNCTION_94_8();
            v203 = 1107296256;
            OUTLINED_FUNCTION_26_41();
            v204 = v144;
            v205 = &block_descriptor_163;
            v145 = _Block_copy(&v202);
            v146 = v201;
            v147 = v199;

            v148 = OUTLINED_FUNCTION_43_0();
            [v148 v149];

            _Block_release(v145);
          }

          else
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_69_8();
            v150(v51);
            v151 = sub_1E41FFC94();
            sub_1E42067F4();
            OUTLINED_FUNCTION_41_15();
            if (os_log_type_enabled(v151, v152))
            {
              OUTLINED_FUNCTION_13_13();
              swift_slowAlloc();
              OUTLINED_FUNCTION_30_35();
              v202 = swift_slowAlloc();
              *v32 = 136315138;
              OUTLINED_FUNCTION_23();
              *(v32 + 4) = sub_1E3270FC8(0xD000000000000019, v153, &v202);
              OUTLINED_FUNCTION_12_17();
              _os_log_impl(v154, v155, v156, v157, v158, 0xCu);
              OUTLINED_FUNCTION_91_6();
              OUTLINED_FUNCTION_7_17();
              MEMORY[0x1E69143B0]();
              v159 = OUTLINED_FUNCTION_19_56();
              MEMORY[0x1E69143B0](v159);
            }

            else
            {
            }

            v170 = OUTLINED_FUNCTION_210();
            v171(v170);
          }

          goto LABEL_68;
        }
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();

      sub_1E3A3B4EC();
    }

    OUTLINED_FUNCTION_331();
    sub_1E3A38568();

    goto LABEL_68;
  }

  OUTLINED_FUNCTION_291();
  sub_1E3A39BA4();
  OUTLINED_FUNCTION_331();
LABEL_5:
  OUTLINED_FUNCTION_25_2();

  sub_1E3A38568();
}

void sub_1E3A39BA4()
{
  OUTLINED_FUNCTION_31_1();
  v119 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v114 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v115 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_8();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v117 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v116 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_6();
  v19 = sub_1E4205F94();
  v20 = v18;
  v21 = v19 == 0x736E6F6361707076 && v18 == 0xEB00000000746E65;
  v22 = v21;
  v118 = v22;
  if (v21 || (OUTLINED_FUNCTION_169_0(), (OUTLINED_FUNCTION_180_1() & 1) != 0))
  {
    v23 = OUTLINED_FUNCTION_144_4();
    v24(v23);
    if (v25)
    {
      v0 = [objc_opt_self() sharedInstance];
      OUTLINED_FUNCTION_75();
      v26 = sub_1E4205ED4();

      if (v119)
      {
        v27 = sub_1E4205C44();
      }

      else
      {
        v27 = 0;
      }

      v123 = sub_1E3A4D108;
      v124 = 0;
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
      v121 = sub_1E3A3E484;
      v122 = &block_descriptor_185;
      v42 = _Block_copy(v120);
      v43 = OUTLINED_FUNCTION_123_3();
      [v43 v44];
      _Block_release(v42);
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_131_0();
      v28(v2);
      v0 = sub_1E41FFC94();
      sub_1E42067F4();
      OUTLINED_FUNCTION_101_3();
      if (os_log_type_enabled(v0, v29))
      {
        OUTLINED_FUNCTION_13_13();
        v30 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v120[0] = swift_slowAlloc();
        *v30 = 136315138;
        *(v30 + 4) = OUTLINED_FUNCTION_214("processNativePageLink(_:_:_:)");
        OUTLINED_FUNCTION_122_0();
        _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
        OUTLINED_FUNCTION_248();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      v36 = OUTLINED_FUNCTION_139_0();
      v37(v36);
    }

    if (v118)
    {
      goto LABEL_28;
    }

LABEL_27:
    OUTLINED_FUNCTION_169_0();
    if (OUTLINED_FUNCTION_180_1())
    {
LABEL_28:

      v45 = OUTLINED_FUNCTION_144_4();
      v47 = v46(v45);
      if (v48)
      {
        v49 = v47;
        v50 = [objc_opt_self() sharedInstance];
        OUTLINED_FUNCTION_57();
        sub_1E4205ED4();
        OUTLINED_FUNCTION_38();

        if (v119)
        {
          v51 = sub_1E4205C44();
        }

        else
        {
          v51 = 0;
        }

        v123 = sub_1E3A3E778;
        v124 = 0;
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
        v121 = sub_1E3A3E484;
        v122 = &block_descriptor_182;
        v75 = _Block_copy(v120);
        [v50 startVPPAConsentFlowForDeeplink:v49 channelsResponse:v51 completion:v75];
        _Block_release(v75);
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_88_4();
        v65(v116);
        v66 = sub_1E41FFC94();
        v67 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_161(v67))
        {
          OUTLINED_FUNCTION_13_13();
          v68 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v69 = swift_slowAlloc();
          v120[0] = v69;
          *v68 = 136315138;
          *(v68 + 4) = OUTLINED_FUNCTION_214("processNativePageLink(_:_:_:)");
          OUTLINED_FUNCTION_82_0();
          _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (*(v117 + 8))(v116, v11);
      }

      goto LABEL_70;
    }

    v52 = v19 == 0x6269726373627573 && v20 == 0xE900000000000065;
    v53 = MEMORY[0x1E69E7D40];
    if (v52 || (OUTLINED_FUNCTION_169_0(), (sub_1E42079A4() & 1) != 0))
    {

      if ([objc_opt_self() isSUIEnabled])
      {
        v54 = sub_1E40C4340();
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v55 = *v54;
        if (*v54)
        {
LABEL_38:
          sub_1E41FE414();
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
          sub_1E4205F14();
          OUTLINED_FUNCTION_26_3();
          v61 = *((*v53 & v60) + 0x220);
          v62 = v55;
          v63 = OUTLINED_FUNCTION_242();
          v61(v63);

          v64 = v3;
LABEL_69:
          sub_1E325F6F0(v64, &unk_1ECF363C0);
        }

LABEL_70:
        OUTLINED_FUNCTION_25_2();
        return;
      }

LABEL_44:
      v76 = objc_opt_self();
      v77 = sub_1E4205F14();
      sub_1E3A49A04(0, v77, v78, 0, v76);
      goto LABEL_70;
    }

    if (v19 != 0x6D6565646572 || v20 != 0xE600000000000000)
    {
      OUTLINED_FUNCTION_169_0();
      if ((sub_1E42079A4() & 1) == 0)
      {
        if (v19 != 0x73676E6974746573 || v20 != 0xE800000000000000)
        {
          OUTLINED_FUNCTION_169_0();
          if ((sub_1E42079A4() & 1) == 0)
          {
            if (v19 == 0x732D796C696D6166 && v20 == 0xEC00000070757465)
            {
            }

            else
            {
              OUTLINED_FUNCTION_169_0();
              v113 = sub_1E42079A4();

              if ((v113 & 1) == 0)
              {
                goto LABEL_70;
              }
            }

            sub_1E3A3E8D8();
            goto LABEL_70;
          }
        }

        if ([objc_opt_self() isSUIEnabled])
        {
          v111 = sub_1E40C4340();
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v55 = *v111;
          if (!*v111)
          {
            goto LABEL_70;
          }

          goto LABEL_38;
        }

        goto LABEL_44;
      }
    }

    sub_1E4205F14();
    v91 = v90;
    sub_1E41FE404();

    if ([objc_opt_self() isSUIEnabled])
    {
      v92 = sub_1E40C4340();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v93 = *v92;
      if (!*v92)
      {
LABEL_68:
        v64 = v115;
        goto LABEL_69;
      }

      v94 = *((*v53 & *v93) + 0x220);
      v95 = v93;
      v96 = OUTLINED_FUNCTION_16_5();
      v94(v96, 0, 0, 0);
    }

    else
    {
      sub_1E37E93E8(v115, v114, &unk_1ECF363C0);
      sub_1E41FE414();
      v103 = OUTLINED_FUNCTION_92_2();
      v0 = 0;
      if (__swift_getEnumTagSinglePayload(v103, 1, v91) != 1)
      {
        v0 = sub_1E41FE364();
        OUTLINED_FUNCTION_37_1();
        v104 = OUTLINED_FUNCTION_13_8();
        v105(v104);
      }

      [objc_opt_self() handleAccountSettingsEventWithUrl:v0 amsBagKey:0 useAMSWebView:0];
    }

    goto LABEL_68;
  }

  v38 = v19 == 0x656D2D6775626564 && v20 == 0xEA0000000000756ELL;
  if (v38 || (OUTLINED_FUNCTION_169_0(), (sub_1E42079A4() & 1) != 0))
  {
    v39 = [objc_opt_self() sharedInstance];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 debugUIEnabled];

      if (!v41)
      {

        sub_1E324FBDC();
        v79 = OUTLINED_FUNCTION_101();
        v80(v79);
        v81 = sub_1E41FFC94();
        sub_1E42067F4();
        OUTLINED_FUNCTION_101_3();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_34_10(v83);
          OUTLINED_FUNCTION_70_12();
          _os_log_impl(v84, v85, v86, v87, v88, 2u);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (*(v117 + 8))(v0, v11);
        goto LABEL_70;
      }

      v0 = [objc_allocWithZone(VUIDebugViewController) init];
      sub_1E3A3E4E4();
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    if (v19 != 0xD000000000000010 || 0x80000001E426D210 != v20)
    {
      OUTLINED_FUNCTION_169_0();
      if ((sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v98 = [objc_opt_self() sharedInstance];
    if (v98)
    {
      v99 = v98;
      v100 = [v98 pagePerformanceEnabled];

      if (!v100)
      {

        sub_1E324FBDC();
        OUTLINED_FUNCTION_88_4();
        v106(v1);
        v107 = sub_1E41FFC94();
        v108 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_161(v108))
        {
          v109 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_34_10(v109);
          _os_log_impl(&dword_1E323F000, v107, v19, "Tried to local metrics view but feature is disabled", v100, 2u);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (*(v117 + 8))(v1, v11);
        goto LABEL_70;
      }

      v101 = *MetricsDiskManager.shared.unsafeMutableAddressor();
      type metadata accessor for MetricsRenderSessionListViewController();
      v102 = v101;
      v0 = MetricsRenderSessionListViewController.__allocating_init(storageDataSource:)(v102);
      sub_1E3A3E4E4();

LABEL_23:
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1E3A3A7F4()
{
  OUTLINED_FUNCTION_31_1();
  v98 = v3;
  v99 = v4;
  v6 = v5;
  v93 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v92[1] = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_8();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v12);
  v13 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v95 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v16);
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_226();
  v100 = 0x64692D6D616461;
  v101 = 0xE700000000000000;
  sub_1E4207414();
  sub_1E375D7E8(&v107, v6, &v102);
  sub_1E375D84C(&v107);
  v96 = v13;
  v97 = v10;
  if (!v104)
  {
    sub_1E325F6F0(&v102, &unk_1ECF296E0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v92[0] = v0;
  if ((v101 & 0xF00000000000000) == 0)
  {

    v0 = v92[0];
LABEL_16:
    v100 = 6580592;
    v101 = 0xE300000000000000;
    sub_1E4207414();
    sub_1E375D7E8(&v107, v6, &v102);
    sub_1E375D84C(&v107);
    if (v104)
    {
      OUTLINED_FUNCTION_77_8();
      if (swift_dynamicCast())
      {
        v92[0] = v0;
        v31 = v101;
        v32 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        OUTLINED_FUNCTION_27_0();
        v33 = sub_1E4205ED4();

        v34 = [v32 numberFromString_];

        if ([objc_opt_self() vui:v34 mediaItemForPersistentIdentifier:?])
        {
          OUTLINED_FUNCTION_118();
          sub_1E3A3C02C();
          [objc_opt_self() recordPlayOfMediaItem_];
          sub_1E3280A90(0, &qword_1EE23B350);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          OUTLINED_FUNCTION_5_10();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1E4298880;
          *(v35 + 32) = v31;
          v93 = v31;
          v36 = sub_1E3A3F498(5, v35, &qword_1EE23B3F8, 0x1E69705D0, &selRef_initWithPlaybackContext_mpMediaItems_);
          [v36 setIntent_];
          v37 = sub_1E41FE514();
          v38 = sub_1E41FE514();
          [v36 setUserPlaybackInitiationDate:v37 openURLCompletionDate:v38];

          sub_1E3280A90(0, &qword_1EE23B1D0);
          v39 = sub_1E4206A04();
          OUTLINED_FUNCTION_4_0();
          v40 = swift_allocObject();
          *(v40 + 16) = v36;
          v111 = sub_1E3A4D040;
          v112 = v40;
          OUTLINED_FUNCTION_96_1();
          v108 = 1107296256;
          OUTLINED_FUNCTION_14_1();
          v109 = v41;
          v110 = &block_descriptor_191;
          v42 = _Block_copy(&v107);
          v43 = v36;

          sub_1E4203FE4();
          v107 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_3_101();
          sub_1E3A496B8(v44, v45);
          v46 = OUTLINED_FUNCTION_153_2();
          __swift_instantiateConcreteTypeFromMangledNameV2(v46);
          OUTLINED_FUNCTION_47();
          sub_1E328FCF4(v47, v48);
          sub_1E42072E4();
          OUTLINED_FUNCTION_90();
          MEMORY[0x1E6911380]();
          _Block_release(v42);
          OUTLINED_FUNCTION_329();

          v50 = OUTLINED_FUNCTION_39_3();
          v51(v50);
          OUTLINED_FUNCTION_15_5();
          v52(v94, v96);
        }

        else
        {
          sub_1E324FBDC();
          OUTLINED_FUNCTION_326();
          v61 = OUTLINED_FUNCTION_101();
          v62 = v93;
          v63(v61);
          v64 = sub_1E41FFC94();
          sub_1E42067F4();
          OUTLINED_FUNCTION_101_3();
          if (os_log_type_enabled(v64, v65))
          {
            OUTLINED_FUNCTION_13_13();
            v66 = swift_slowAlloc();
            OUTLINED_FUNCTION_15_4();
            v67 = swift_slowAlloc();
            v107 = v67;
            *v66 = 136315138;
            OUTLINED_FUNCTION_23();
            v68 = OUTLINED_FUNCTION_327();
            *(v66 + 4) = sub_1E3270FC8(v68, v69, v70);
            OUTLINED_FUNCTION_70_12();
            _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v67);
            v76 = OUTLINED_FUNCTION_19_56();
            MEMORY[0x1E69143B0](v76);
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();
          }

          (*(v21 + 8))(v1, v62);
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v102, &unk_1ECF296E0);
    }

    goto LABEL_30;
  }

  v107 = v100;
  v108 = v101 & 0xFFFFFFFFFFFFFFLL;
  if ((v101 & 0xF00000000000000) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_4();
      if (!v25 & v24)
      {
        break;
      }

      OUTLINED_FUNCTION_32_6();
      if (!v25)
      {
        break;
      }

      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        break;
      }

      OUTLINED_FUNCTION_132();
      if (v25)
      {
        goto LABEL_15;
      }
    }
  }

  v28 = 0;
  v29 = 1;
LABEL_15:
  LOBYTE(v102) = v29;
  v30 = v29;

  v0 = v92[0];
  if (v30)
  {
    goto LABEL_16;
  }

  v53 = *(v19 + 16);
  v53(v2, v98, v17);
  v53(v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v99, v17);
  v54 = *(v19 + 80);
  v55 = (v54 + 16) & ~v54;
  v56 = (v21 + v54 + v55) & ~v54;
  v57 = swift_allocObject();
  v58 = *(v19 + 32);
  v58(v57 + v55, v2, v17);
  v58(v57 + v56, v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v100 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42A76D0;
  v60 = objc_opt_self();
  *(inited + 32) = [v60 movie];
  *(inited + 40) = [v60 show];
  *(inited + 48) = [v60 movieRental];
  *(inited + 56) = [v60 season];
  *(inited + 64) = [v60 episode];
  if (sub_1E32AE9B0(inited))
  {
    sub_1E3A490C8(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1E377D458();
  }

  sub_1E3280A90(0, &qword_1ECF31180);
  v77 = sub_1E3A3F524();
  v78 = VUIMediaEntityFetchRequestAllPropertiesSet();
  v79 = sub_1E4206624();

  sub_1E3A49A80(v79, v77);
  v80 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v81 = OUTLINED_FUNCTION_121();
  [v81 v82];

  v83 = v77;
  MEMORY[0x1E6910BF0]();
  if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E42062F4();
  }

  OUTLINED_FUNCTION_39_3();
  sub_1E4206324();
  v84 = [objc_opt_self() defaultManager];
  v85 = [v84 deviceMediaLibrary];

  OUTLINED_FUNCTION_53();
  v86 = sub_1E42062A4();

  OUTLINED_FUNCTION_2_4();
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1E3A4A8E8;
  *(v87 + 24) = v57;
  v105 = sub_1E3A4A978;
  v106 = v87;
  *&v102 = MEMORY[0x1E69E9820];
  *(&v102 + 1) = 1107296256;
  v103 = sub_1E3A3F5B8;
  v104 = &block_descriptor_200;
  v88 = _Block_copy(&v102);

  v89 = OUTLINED_FUNCTION_123_3();
  v91 = [v89 v90];
  _Block_release(v88);

LABEL_30:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3B4EC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  if (!(v0 >> 62))
  {
    v6 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v6 = sub_1E4207384();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1E32AE9B0(v3);
    v8 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      for (i = 0; i != v6; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E6911E60](i, v3);
        }

        else
        {
          v10 = *(v3 + 8 * i + 32);
        }

        v11 = v10;
        if (((v8 == i) & v2) == 0)
        {
          if (v5)
          {
            [v5 pushViewController:v10 animated:0];
          }
        }
      }

      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1E3A3B5DC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_11_14();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33_0();
  v6 = MEMORY[0x1E69E7CC0];
  if ((v2 & 1) == 0 && v0)
  {
    v7 = [v0 viewControllers];
    sub_1E3280A90(0, &qword_1EE23B250);
    v6 = sub_1E42062B4();
  }

  v42 = v6;

  sub_1E3A3E0D0(v8);
  v9 = sub_1E32AE9B0(v6);

  if (!v9)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1E42074B4();
    v12 = sub_1E3280A90(0, &qword_1EE23B250);
    MEMORY[0x1E6910C30](v4, v12);
    OUTLINED_FUNCTION_16_11();

    v40 = v4;
    v41 = 0;
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000010);
    if (v0)
    {
      v13 = sub_1E3280A90(0, &unk_1EE23B090);
      v14 = v0;
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v37 = 0;
      v38 = 0;
    }

    v36 = v14;
    v39 = v13;
    v15 = v0;
    v16 = sub_1E3294FA4(&v36);
    MEMORY[0x1E69109E0](v16);

    MEMORY[0x1E69109E0](0x74537261656C6320, 0xED0000203A6B6361);
    v17 = sub_1E328692C(v2 & 1);
    MEMORY[0x1E69109E0](v17);

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v18 = OUTLINED_FUNCTION_33_14();
    v19(v18);

    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_57_3();
      v22 = swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_72_0();
      *v22 = 136315394;
      v23 = sub_1E3270FC8(0xD00000000000001DLL, 0x80000001E426D5E0, &v36);
      OUTLINED_FUNCTION_121_0(v23);
      v24 = OUTLINED_FUNCTION_53();
      v27 = sub_1E3270FC8(v24, v25, v26);

      *(v22 + 14) = v27;
      OUTLINED_FUNCTION_189();
      _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v33 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v33);
    }

    else
    {
    }

    v34 = OUTLINED_FUNCTION_13_8();
    v35(v34);
    goto LABEL_16;
  }

  if (!v0)
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E3280A90(0, &qword_1EE23B250);
  [v0 setViewControllers:sub_1E42062A4() animated:1];
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A3B98C()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_10_9();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v4[5] = v0;
  v5 = v2;

  v6 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF604(v6);
  sub_1E3A3E17C();
}

void sub_1E3A3BA40()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_198_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v6 = OUTLINED_FUNCTION_8_0(v5);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OUTLINED_FUNCTION_146();
    sub_1E37E93E8(v11, v12, v13);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v2;
    sub_1E327D738(v0, v15 + v14);
    v16 = v4;
    v17 = v2;
    OUTLINED_FUNCTION_16_0();
    sub_1E3A3B98C();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, char a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, char a29, void *a30)
{
  OUTLINED_FUNCTION_31_1();
  v89 = v32;
  v90 = v33;
  v93 = v35;
  v94 = v34;
  v95 = v36;
  v96 = v37;
  v91 = v38;
  v40 = v39;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2_10();
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_179_1();
  v92 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25_3();
  v49 = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v51 = OUTLINED_FUNCTION_8_0(v50);
  v53 = v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_93_2();
  v88 = v40;
  if (v40)
  {
    sub_1E37E93E8(v89, v31, &unk_1ECF363C0);
    v54 = *(v42 + 16);
    v86 = v49;
    v54(v49, a21, v30);
    v54(v92, a22, v30);
    v55 = (*(v53 + 80) + 48) & ~*(v53 + 80);
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_302();
    v58 = v57 & ~v56;
    v59 = (v44 + v56 + v58) & ~v56;
    v84 = v59 + v44;
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_230();
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = OUTLINED_FUNCTION_268();
    *(v62 + 2) = v91;
    *(v62 + 3) = v94;
    *(v62 + 4) = v95;
    *(v62 + 5) = v96;
    sub_1E327D738(v31, &v62[v55]);
    *&v62[v53] = v93;
    *&v62[v30] = v90;
    v63 = *(v42 + 32);
    v63(&v62[v58], v86, v30);
    v63(&v62[v59], v92, v30);
    v62[v84] = a23 & 1;
    OUTLINED_FUNCTION_165_3();
    *(v64 + 8) = a24;
    OUTLINED_FUNCTION_290();
    *&v62[v65] = a25;
    *&v62[v61] = a26;
    OUTLINED_FUNCTION_165_3();
    *v66 = a27;
    *(v66 + 8) = a28 & 1;
    v67 = &v62[(v61 + 31) & 0xFFFFFFFFFFFFFFF8];
    *v67 = v88;
    v67[8] = a29 & 1;
    OUTLINED_FUNCTION_252();
    *&v62[v68] = a30;
    v97[4] = sub_1E3A4D03C;
    v97[5] = v62;
    OUTLINED_FUNCTION_24_35();
    v97[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v97[2] = v69;
    v97[3] = &block_descriptor_157;
    v70 = _Block_copy(v97);
    v71 = a30;
    v72 = v88;

    v73 = v95;

    v74 = v93;

    v75 = a25;

    [v72 vui:1 dismissViewControllerAnimated:v70 completion:{(v61 + 47) & 0xFFFFFFFFFFFFFFF8, (v61 + 15) & 0xFFFFFFFFFFFFFFF8}];
    _Block_release(v70);
  }

  else
  {
    LOBYTE(v78) = a29 & 1;
    LOBYTE(v77) = a28 & 1;
    LOBYTE(v76) = a23 & 1;
    sub_1E3A38918(v91, v94, v95, v96, v89, v93, v90, a21, a22, v76, a24, a25, a26, a27, v77, 0, v78, a30, v79, v80, v81, v82, v83, v85, v87, 0, a22, a21, v89, v90);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3C02C()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_50_19();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v3 = OUTLINED_FUNCTION_21_16();
  v4(v3);
  v5 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v12 = OUTLINED_FUNCTION_63_0();
  v13(v12);
  v14 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v20 = v1;
    v21 = v0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v18 = v15;
    v19 = &block_descriptor_150;
    v1 = _Block_copy(&v16);
  }

  [v14 dismissPlaybackAnimated:0 leaveGroupActivitySession:0 completion:{v1, v16, v17}];
  _Block_release(v1);

  OUTLINED_FUNCTION_95();
}

void sub_1E3A3C1E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33_0();
  v4 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *v4;
  if (v0)
  {
    if (v5)
    {
      type metadata accessor for Router();
      v6 = v5;
      v7 = v0;
      v8 = sub_1E4206F64();

      if (v8)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v5)
  {
LABEL_4:
    v2();
    goto LABEL_9;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v9 = OUTLINED_FUNCTION_33_14();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_57_3();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v16 = *v4;
    *(v14 + 4) = v16;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v16;
    v15[1] = v0;
    v17 = v11;
    v18 = v16;
    OUTLINED_FUNCTION_189();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v24 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v24);
  }

  v25 = OUTLINED_FUNCTION_13_8();
  v26(v25);
LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A3C3F4()
{
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v0 = OUTLINED_FUNCTION_301();
  return sub_1E3B79200(v0, v1);
}

void sub_1E3A3C474()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v24 = v5;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_12();
  v23 = sub_1E4204014();
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_8();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v22 = sub_1E4206A04();
  sub_1E4204004();
  sub_1E4204074();
  v10 = *(v7 + 8);
  v10(v2, v23);
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  v26[4] = sub_1E3A4BB2C;
  v26[5] = v11;
  OUTLINED_FUNCTION_12_0();
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v26[2] = v12;
  v26[3] = &block_descriptor_352;
  v13 = _Block_copy(v26);

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v14, v15);
  v16 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v17, v18);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v19 = OUTLINED_FUNCTION_168();
  MEMORY[0x1E69112E0](v19);
  _Block_release(v13);

  OUTLINED_FUNCTION_215();
  v20 = OUTLINED_FUNCTION_11_6();
  v21(v20);
  (*(v24 + 8))(v0, v25);
  v10(v1, v23);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3C778()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v2 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v2;
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v1;
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1F8);
    v5 = v3;

    v6 = v1;
    v7 = OUTLINED_FUNCTION_8_6();
    v4(v7);
  }

  OUTLINED_FUNCTION_140_0();
}

void sub_1E3A3C884()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v9;
  v12[4] = v7;
  if (v5 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_11_3();
    v13 = v7;
    v14 = v11;
    v15 = v9;
    v16 = v5;
    v17 = sub_1E3A3CBC8();
    swift_endAccess();

    v18 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v19 = *v18;
    if (v19)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_89();
      v20 = swift_allocObject();
      v20[2] = v1;
      v20[3] = v3;
      v20[4] = v16;
      v20[5] = sub_1E3A4D11C;
      v20[6] = v12;
      OUTLINED_FUNCTION_21();
      v22 = *(v21 + 504);
      v23 = v3;

      v16 = v16;
      v24 = v19;
      OUTLINED_FUNCTION_16_5();

      v25 = v1;
      v26 = OUTLINED_FUNCTION_39_3();
      v22(v26);
    }
  }

  else
  {
    v27 = v7;
    v28 = v11;
    v29 = v9;
    v30 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v31 = *v30;
    if (v31)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_2_4();
      v32 = swift_allocObject();
      *(v32 + 16) = sub_1E3A4D11C;
      *(v32 + 24) = v12;
      OUTLINED_FUNCTION_21();
      v34 = *(v33 + 504);

      v35 = v31;
      OUTLINED_FUNCTION_31_4();

      v34(v36, v3, 0, sub_1E37D1918, v32);
    }
  }

  OUTLINED_FUNCTION_140_0();
}

uint64_t sub_1E3A3CB44()
{
  OUTLINED_FUNCTION_198_1();
  v1 = v0;
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_16_0();
  sub_1E3A3B98C();
}

unint64_t sub_1E3A3CBC8()
{
  result = sub_1E32AE9B0(*v0);
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = sub_1E3A4ADDC();
  if (result)
  {
    return result;
  }

  v2 = sub_1E32AE9B0(*v0);
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    goto LABEL_8;
  }

  return sub_1E37EF010(result);
}

uint64_t sub_1E3A3CC20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (*v8)
  {
    v10 = *v8;
    [a3 isAnimated];
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x200);

    v13 = OUTLINED_FUNCTION_16_0();
    v12(v13);
  }

  return result;
}

void sub_1E3A3CDA0()
{
  OUTLINED_FUNCTION_193();
  v3 = v2;
  v5 = v4;
  if (v0 && (v6 = v1, v7 = v0, objc_opt_self(), OUTLINED_FUNCTION_20_2(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_11_3();
    v8 = v7;
    v9 = sub_1E3A3CBC8();
    swift_endAccess();

    v10 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = *v10;
    if (v11)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_10_9();
      v12 = swift_allocObject();
      v12[2] = v6;
      v12[3] = v5;
      v12[4] = v8;
      v12[5] = v3;
      v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x1F8);
      v14 = v5;
      v15 = v3;
      v16 = v8;
      v17 = v11;
      OUTLINED_FUNCTION_16_5();

      v18 = v6;
      v19 = OUTLINED_FUNCTION_38_0();
      v13(v19);
    }

    else
    {
    }
  }

  else
  {
    v20 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v21 = *v20;
    if (v21)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_4_0();
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      v23 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x1F8);
      v24 = v3;
      v25 = v21;
      OUTLINED_FUNCTION_31_4();

      v23(v26, v5, 0, sub_1E3A4D044, v22);
    }
  }

  OUTLINED_FUNCTION_140_0();
}

void sub_1E3A3CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, unint64_t a24, char a25, void *a26, char a27, void *a28, void *a29)
{
  OUTLINED_FUNCTION_31_1();
  v31 = v30;
  v33 = v32;
  v154 = v34;
  v156 = v35;
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v37 = OUTLINED_FUNCTION_101();
  v38(v37);
  v39 = v29;
  v40 = sub_1E41FFC94();
  v41 = sub_1E4206814();
  v157 = v39;

  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_57_3();
    v42 = swift_slowAlloc();
    v148 = v33;
    v43 = swift_slowAlloc();
    *v42 = 138412546;
    v44 = v31;
    v45 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v46 = *v45;
    *(v42 + 4) = v46;
    *(v42 + 12) = 2112;
    *(v42 + 14) = v157;
    *v43 = v46;
    v43[1] = v29;
    v47 = v157;
    v48 = v46;
    v31 = v44;
    _os_log_impl(&dword_1E323F000, v40, v41, "OpenURLHandler:: continue processRouterDataSource after dismiss %@ before %@", v42, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
    OUTLINED_FUNCTION_343();
    v33 = v148;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v49 = OUTLINED_FUNCTION_210();
  v50(v49);
  v51 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v52 = *v51;
  if (!v29)
  {
    if (v52)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (v154 && v156)
    {
      sub_1E3A39BA4();
      OUTLINED_FUNCTION_39();
      (*((*MEMORY[0x1E69E7D40] & v56) + 0x118))(1);
      goto LABEL_13;
    }

    if (v31)
    {
      OUTLINED_FUNCTION_124();
      sub_1E3A3A7F4();
      OUTLINED_FUNCTION_39();
      (*((*MEMORY[0x1E69E7D40] & v57) + 0x118))(1);
      goto LABEL_13;
    }

    if (a22)
    {
      if (a23)
      {
        OUTLINED_FUNCTION_4_0();
        v58 = swift_allocObject();
        v59 = v58;
        if (a24)
        {
          *(v58 + 16) = a24;
          if (sub_1E32AE9B0(a24))
          {
            v158 = v59;

            v60 = a22;
            v61 = a23;
            if (([v60 respondsToSelector_] & 1) != 0 && (objc_msgSend(v60, sel_canPerformNow) & 1) == 0)
            {
              OUTLINED_FUNCTION_5_10();
              v94 = swift_allocObject();
              v94[2] = v158;
              v94[3] = a26;
              v94[4] = v33;
              if (a25)
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v95 = *v51;
                if (*v51)
                {
                  OUTLINED_FUNCTION_5_10();
                  v96 = swift_allocObject();
                  v96[2] = v95;
                  v96[3] = sub_1E3A4D120;
                  v96[4] = v94;
                  OUTLINED_FUNCTION_21();
                  v98 = *(v97 + 496);
                  v99 = a26;
                  swift_retain_n();
                  v100 = v95;
                  OUTLINED_FUNCTION_16_5();

                  v90 = v95;
                  v101 = v33;
                  v102 = OUTLINED_FUNCTION_137_3();
                  v98(v102);

                  goto LABEL_41;
                }

                v138 = a26;
                swift_retain_n();
                v139 = v33;
              }

              else
              {
                v120 = a26;
                swift_retain_n();
                v121 = v33;
                OUTLINED_FUNCTION_25_45();
                OUTLINED_FUNCTION_16_0();
                sub_1E3A3C778();
              }

              goto LABEL_54;
            }

            if (a27)
            {
              OUTLINED_FUNCTION_10_9();
              v62 = swift_allocObject();
              *(v62 + 16) = v33;
              *(v62 + 24) = a25 & 1;
              *(v62 + 32) = v59;
              *(v62 + 40) = a26;
              v63 = a26;

              v33;
              OUTLINED_FUNCTION_277();
              sub_1E3A3B98C();

              goto LABEL_13;
            }

            [objc_opt_self() setAnimationsEnabled_];
            OUTLINED_FUNCTION_67_6();
            v81 = swift_allocObject();
            v81[2] = v33;
            v81[3] = v60;
            v81[4] = a28;
            v81[5] = a29;
            v81[6] = v158;
            v81[7] = a26;
            v81[8] = v61;
            if (a25)
            {
              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v82 = *v51;
              if (v82)
              {
                OUTLINED_FUNCTION_5_10();
                v83 = swift_allocObject();
                v83[2] = v82;
                v83[3] = sub_1E3A4D050;
                v83[4] = v81;
                v84 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x1F0);
                v85 = a28;

                v86 = v82;
                v60 = v60;
                v61 = v61;
                v87 = v33;
                v88 = a26;
                v89 = a29;

                v90 = v86;
                v91 = OUTLINED_FUNCTION_137_3();
                v84(v91);

LABEL_41:

LABEL_49:

LABEL_54:

LABEL_55:
                goto LABEL_56;
              }

              v134 = a28;
              v135 = v33;
              v136 = a26;
              v137 = a29;
            }

            else
            {
              OUTLINED_FUNCTION_5_10();
              v103 = swift_allocObject();
              v103[2] = v33;
              v103[3] = v60;
              v155 = v103;
              v103[4] = a28;
              if (!a29 || (objc_opt_self(), OUTLINED_FUNCTION_20_2(), !swift_dynamicCastObjCClass()))
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v122 = *v51;
                if (!*v51)
                {
                  v140 = a29;
                  swift_retain_n();
                  v141 = a28;
                  v142 = v60;
                  v143 = v33;
                  v144 = v141;
                  v145 = v143;
                  v146 = a26;

                  goto LABEL_56;
                }

                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v147 = *(v158 + 16);
                OUTLINED_FUNCTION_2_4();
                v153 = swift_allocObject();
                *(v153 + 16) = sub_1E3A4D11C;
                *(v153 + 24) = v155;
                v150 = *((*MEMORY[0x1E69E7D40] & *v122) + 0x1F8);
                v123 = a29;
                swift_retain_n();
                v124 = a28;

                v125 = v122;

                v126 = v60;
                v127 = v33;
                v128 = v124;
                v60 = v126;
                v61 = v61;
                v129 = v127;
                v130 = a26;
                v150(v147, a26, 0, sub_1E37D1918, v153);

                goto LABEL_49;
              }

              OUTLINED_FUNCTION_11_3();
              v151 = a26;
              v104 = a29;
              OUTLINED_FUNCTION_31_4();
              swift_retain_n();
              v105 = a28;
              v106 = v60;
              v107 = v33;
              v108 = a29;
              v109 = v105;
              v152 = v106;
              v61 = v61;
              v110 = v107;
              v111 = sub_1E3A3CBC8();
              swift_endAccess();

              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v112 = *v51;
              if (!*v51)
              {
                OUTLINED_FUNCTION_194_0();

                goto LABEL_55;
              }

              OUTLINED_FUNCTION_89();
              v113 = swift_allocObject();
              v113[2] = v61;
              v113[3] = a26;
              v113[4] = v108;
              v113[5] = sub_1E3A4D11C;
              v113[6] = v155;
              OUTLINED_FUNCTION_21();
              v115 = *(v114 + 504);
              v149 = v61;
              v116 = v151;
              v117 = v108;
              v118 = v112;

              v119 = OUTLINED_FUNCTION_142();
              v115(v119);
            }

            goto LABEL_56;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_0();
          swift_deallocUninitializedObject();
        }
      }

      OUTLINED_FUNCTION_4_0();
      *(swift_allocObject() + 16) = v33;
      v80 = a22;
      v33;
      OUTLINED_FUNCTION_169_0();
      sub_1E3A3B98C();

      goto LABEL_56;
    }

    if (!a23)
    {
      goto LABEL_13;
    }

    v64 = v33;
    OUTLINED_FUNCTION_4_0();
    v65 = swift_allocObject();
    v66 = v65;
    if (!a24)
    {
      OUTLINED_FUNCTION_4_0();
      swift_deallocUninitializedObject();
      goto LABEL_13;
    }

    *(v65 + 16) = a24;
    if (sub_1E32AE9B0(a24))
    {
      v67 = objc_opt_self();

      v68 = a23;
      [v67 setAnimationsEnabled_];
      OUTLINED_FUNCTION_89();
      v69 = swift_allocObject();
      v69[2] = a29;
      v69[3] = v66;
      v69[4] = a26;
      v69[5] = v68;
      v69[6] = v64;
      if (a25)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v70 = *v51;
        if (!*v51)
        {
          v131 = a29;
          v132 = v64;
          v133 = a26;
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_5_10();
        v71 = swift_allocObject();
        v71[2] = v70;
        v71[3] = sub_1E3A4D04C;
        v71[4] = v69;
        v72 = *((*MEMORY[0x1E69E7D40] & *v70) + 0x1F0);
        v73 = a29;
        v74 = v70;
        OUTLINED_FUNCTION_16_5();

        OUTLINED_FUNCTION_194_0();
        swift_retain_n();
        v75 = a29;
        v76 = v68;
        v77 = v64;
        v78 = a26;
        v79 = OUTLINED_FUNCTION_137_3();
        v72(v79);
        OUTLINED_FUNCTION_194_0();
      }

      else
      {
        v92 = a29;
        OUTLINED_FUNCTION_194_0();
        swift_retain_n();
        v76 = v68;
        v64;
        v93 = a26;
        OUTLINED_FUNCTION_63_0();
        sub_1E3A3CDA0();
        OUTLINED_FUNCTION_194_0();
      }
    }

    else
    {
    }

LABEL_56:

    goto LABEL_13;
  }

  if (v52)
  {
    type metadata accessor for Router();
    v53 = v157;
    v54 = v52;
    OUTLINED_FUNCTION_27_0();
    v55 = sub_1E4206F64();

    if (v55)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, char a24, void *a25, char a26, void *a27, void *a28)
{
  OUTLINED_FUNCTION_31_1();
  v76 = v28;
  v78 = v29;
  v83 = v30;
  v84 = v31;
  v80 = v33;
  v82 = v32;
  v35 = v34;
  v79 = v36;
  v37 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_179_1();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25_3();
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_219();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v53 = v52;
  v54 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v55 = *v54;
  if (*v54)
  {
    sub_1E37E93E8(v80, v53, &unk_1ECF363C0);
    v81 = v35;
    v56 = *(v39 + 16);
    v75 = v47;
    v56(v47, v76, v37);
    v57 = v44;
    v56(v44, v78, v37);
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_53_23();
    v74 = (v41 + v58 + v53) & ~v58;
    v77 = (v41 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 47) & 0xFFFFFFFFFFFFFFF8;
    v61 = OUTLINED_FUNCTION_268();
    *(v61 + 2) = v55;
    *(v61 + 3) = v79;
    *(v61 + 4) = v82;
    *(v61 + 5) = v81;
    *(v61 + 6) = v83;
    sub_1E327D738(v53, v56 + v61);
    *&v61[v50] = v84;
    v62 = *(v39 + 32);
    v62(&v61[v53], v75, v37);
    v62(&v61[v74], v57, v37);
    *&v61[v77] = a21;
    *&v61[v59] = a22;
    v63 = &v61[(v59 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v63 = a23;
    v63[8] = a24 & 1;
    v64 = &v61[(v59 + 31) & 0xFFFFFFFFFFFFFFF8];
    *v64 = a25;
    v64[8] = a26 & 1;
    *&v61[v60] = a27;
    *&v61[(v60 + 15) & 0xFFFFFFFFFFFFFFF8] = a28;
    v65 = *((*MEMORY[0x1E69E7D40] & *v55) + 0x208);
    v66 = a28;
    v67 = v55;

    v68 = v83;

    v69 = a21;
    v70 = a22;

    v71 = a25;
    v72 = a27;
    v73 = OUTLINED_FUNCTION_137_3();
    v65(v73);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A3E0D0(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3A4A0AC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1E3A3E17C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_118();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  if ([v0 isAccountRequired] && (v4 = objc_opt_self(), (objc_msgSend(v4, sel_userHasActiveAccount) & 1) == 0) && objc_msgSend(v4, sel_allowsAccountModification))
  {
    OUTLINED_FUNCTION_5_10();
    v5 = swift_allocObject();
    v5[2] = v0;
    v5[3] = v2;
    v5[4] = v1;
    v25 = sub_1E3A4B2A4;
    v26 = v5;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
    v23 = sub_1E326FFE4;
    v24 = &block_descriptor_222;
    v6 = _Block_copy(v22);
    v7 = v0;
    v8 = OUTLINED_FUNCTION_53();
    sub_1E34AF604(v8);

    [v4 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v6];
    _Block_release(v6);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v9 = OUTLINED_FUNCTION_43_0();
    v10(v9);
    v11 = v7;
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067D4();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_57_3();
      v14 = swift_slowAlloc();
      v15 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_15_4();
      v22[0] = swift_slowAlloc();
      *v14 = 136315394;
      OUTLINED_FUNCTION_23();
      *(v14 + 4) = sub_1E3270FC8(0xD000000000000023, v16, v22);
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v11;
      v17 = v11;
      _os_log_impl(&dword_1E323F000, v12, v13, "OpenURLHandler::%s authentication requested for action: [%@]", v14, 0x16u);
      sub_1E325F6F0(v15, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v18 = OUTLINED_FUNCTION_16_0();
    v19(v18);
  }

  else
  {
    if (v2)
    {
      v25 = v2;
      v26 = v1;
      OUTLINED_FUNCTION_12_0();
      v22[1] = 1107296256;
      OUTLINED_FUNCTION_26_41();
      v23 = v20;
      v24 = &block_descriptor_216;
      v21 = _Block_copy(v22);
    }

    else
    {
      v21 = 0;
    }

    [v0 performWithTargetResponder:0 completionHandler:v21];
    _Block_release(v21);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A3E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_1E3A3E4E4()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  v2 = sub_1E4205ED4();
  v3 = MGGetBoolAnswer();

  if (v3)
  {
    if ([objc_opt_self() isSUIEnabled])
    {
      v4 = sub_1E40C4340();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v5 = *v4;
      if (*v4)
      {
        v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x218);
        v7 = v5;
        v8 = OUTLINED_FUNCTION_50();
        v6(v8, 1, 1, 1, 0, 0);
      }
    }

    else
    {
      v16 = [objc_opt_self() sharedInstance];
      v17 = [v16 appController];

      if (v17)
      {
        v18 = [v17 navigationController];

        [v18 pushViewController:v0 animated:1];
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    v9 = OUTLINED_FUNCTION_101();
    v10(v9);
    v11 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_101_3();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v13);
      _os_log_impl(&dword_1E323F000, v11, v2, "Ignored Open Debug event due to invalid config due to internal build being false", v3, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v14 = OUTLINED_FUNCTION_57();
    v15(v14);
  }
}

void sub_1E3A3E77C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v4 = OUTLINED_FUNCTION_43_0();
  v5(v4);
  v6 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_13();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v14 = swift_slowAlloc();
    *v8 = 136315138;
    v9 = sub_1E328692C(v2 & 1);
    v11 = sub_1E3270FC8(v9, v10, &v14);

    *(v8 + 4) = v11;
    OUTLINED_FUNCTION_50_6(&dword_1E323F000, v6, v0, "OpenURLHandler::VPPA consent deeplink was successful %s");
    OUTLINED_FUNCTION_91_6();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v12 = OUTLINED_FUNCTION_16_0();
  v13(v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3E8D8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v6 = OUTLINED_FUNCTION_123_3();
  v7(v6);
  v8 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_13_13();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v29 = swift_slowAlloc();
    *v10 = 136315138;
    OUTLINED_FUNCTION_23();
    *(v10 + 4) = sub_1E3270FC8(0xD000000000000016, v11, &v29);
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v17 = OUTLINED_FUNCTION_63_0();
  v18(v17);
  v19 = [objc_allocWithZone(VUIFamilyInviteManager) init];
  v20 = OUTLINED_FUNCTION_13_8();
  sub_1E37E93E8(v20, v21, v22);
  sub_1E41FE414();
  v23 = OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_52(v23, 1, v2);
  if (v24)
  {

    sub_1E325F6F0(v0, &unk_1ECF363C0);
  }

  else
  {
    sub_1E39E6E90();
    v26 = v25;
    OUTLINED_FUNCTION_34_34();
    v27 = OUTLINED_FUNCTION_27_0();
    v28(v27);
    sub_1E37E4D10(v26);
    OUTLINED_FUNCTION_12_1();

    sub_1E3A49974(v0, 0, v19);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A3EB34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    result = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1E3A3EDFC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_12();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v70 = v6;
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_72_13();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  if (v1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      sub_1E3280A90(0, &qword_1EE23B350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      OUTLINED_FUNCTION_5_10();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E4298880;
      *(v16 + 32) = v15;
      v17 = v1;
      v18 = sub_1E3A3F498(5, v16, &unk_1ECF311A8, off_1E8728428, &selRef_initWithPlaybackContext_vuiMediaItems_);
      [v18 setIntent_];
      v19 = sub_1E41FE514();
      v20 = sub_1E41FE514();
      [v18 setUserPlaybackInitiationDate:v19 openURLCompletionDate:v20];

      [v18 setAutomaticPlaybackStart_];
      objc_opt_self();
      v21 = v18;
      v22 = OUTLINED_FUNCTION_43_0();
      [v22 v23];
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v24 = sub_1E4206A04();
      OUTLINED_FUNCTION_4_0();
      v25 = swift_allocObject();
      *(v25 + 16) = v21;
      v76 = sub_1E3A4ABBC;
      v77 = v25;
      OUTLINED_FUNCTION_12_0();
      v73 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v74 = v26;
      v75 = &block_descriptor_206;
      v27 = _Block_copy(&v72);
      v28 = v21;

      sub_1E4203FE4();
      v72 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_101();
      sub_1E3A496B8(v29, v30);
      v31 = OUTLINED_FUNCTION_153_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v31);
      OUTLINED_FUNCTION_47();
      sub_1E328FCF4(v32, v33);
      OUTLINED_FUNCTION_250();
      sub_1E42072E4();
      OUTLINED_FUNCTION_168_0();
      MEMORY[0x1E6911380]();
      _Block_release(v27);

      v34 = OUTLINED_FUNCTION_39_3();
      v35(v34);
      (*(v70 + 8))(v2, v71);
    }

    else
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      v49 = v1;
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000040, 0x80000001E426D570);
      v50 = [v49 description];
      sub_1E4205F14();

      v51 = OUTLINED_FUNCTION_75();
      MEMORY[0x1E69109E0](v51);

      sub_1E324FBDC();
      OUTLINED_FUNCTION_89_5();
      v52(v3);

      v53 = sub_1E41FFC94();
      v54 = sub_1E42067F4();

      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_57_3();
        v55 = swift_slowAlloc();
        v72 = OUTLINED_FUNCTION_72_0();
        *v55 = 136315394;
        OUTLINED_FUNCTION_23();
        v56 = OUTLINED_FUNCTION_327();
        v59 = sub_1E3270FC8(v56, v57, v58);
        OUTLINED_FUNCTION_121_0(v59);
        v60 = OUTLINED_FUNCTION_53();
        v63 = sub_1E3270FC8(v60, v61, v62);

        *(v55 + 14) = v63;
        OUTLINED_FUNCTION_189();
        _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        v69 = OUTLINED_FUNCTION_19_56();
        MEMORY[0x1E69143B0](v69);
      }

      else
      {
      }

      (*(v8 + 8))(v3, v0);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_89_5();
    v36(v12);
    v37 = sub_1E41FFC94();
    v38 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_161(v38))
    {
      OUTLINED_FUNCTION_13_13();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v40 = swift_slowAlloc();
      v72 = v40;
      *v39 = 136315138;
      OUTLINED_FUNCTION_23();
      v41 = OUTLINED_FUNCTION_327();
      *(v39 + 4) = sub_1E3270FC8(v41, v42, v43);
      OUTLINED_FUNCTION_82_0();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v8 + 8))(v12, v0);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3A3F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  OUTLINED_FUNCTION_260();
  v8 = v7;
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_91();
  sub_1E3280A90(v10, v11);
  v12 = sub_1E42062A4();

  v13 = [v5 *a5];

  return v13;
}

id sub_1E3A3F524()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1E3280A90(0, &qword_1ECF31190);
  sub_1E3A4AB54();
  v1 = sub_1E4206614();

  v2 = [v0 initWithMediaEntityTypes_];

  return v2;
}

uint64_t sub_1E3A3F5B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E3280A90(0, &qword_1ECF31188);
    v4 = sub_1E42062B4();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1E3A3F65C()
{
  OUTLINED_FUNCTION_31_1();
  v39 = v1;
  v40 = v2;
  v38 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_106();
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_278();
  v12 = v11 - (v10 & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE3F4();
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = sub_1E4205F94();
  v16 = v15;

  if (v14 == 0x736F65646976 && v16 == 0xE600000000000000)
  {
  }

  else
  {
    v18 = sub_1E42079A4();

    if ((v18 & 1) == 0)
    {
LABEL_7:
      v19 = [objc_opt_self() vui_defaultBag];
      if (v19)
      {
        v20 = v19;
        v21 = objc_allocWithZone(MEMORY[0x1E698C820]);
        v22 = v20;
        v23 = sub_1E41FE364();
        v37 = [v21 initWithURL:v23 bag:v22];

        v24 = [v37 perform];
        OUTLINED_FUNCTION_28_13();
        v25(v12, v0, v6);
        OUTLINED_FUNCTION_272();
        v27 = v26 & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        *(v28 + 16) = v5;
        OUTLINED_FUNCTION_240();
        v29();
        *(v28 + v8) = v38;
        v30 = (v28 + v27);
        *v30 = v39;
        v30[1] = v40;
        v41[4] = sub_1E3A4C83C;
        v41[5] = v28;
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_23_40(COERCE_DOUBLE(1107296256));
        v41[2] = v31;
        v41[3] = &block_descriptor_498;
        v32 = _Block_copy(v41);
        v33 = v38;

        v34 = OUTLINED_FUNCTION_11_6();
        sub_1E34AF604(v34);

        [v24 addFinishBlock_];
        _Block_release(v32);

LABEL_14:
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        OUTLINED_FUNCTION_98_6();
        OUTLINED_FUNCTION_313();
        sub_1E3A40514();
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v24 = v35;
    OUTLINED_FUNCTION_313();
    sub_1E3A3F984();
    goto LABEL_14;
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3F984()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v1;
  v58 = v2;
  v52 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_317();
  v56 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v55 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v53 = v10;
  sub_1E41FE5C4();
  v11 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v13 = *(v12 + 16);
  v14 = OUTLINED_FUNCTION_151_1();
  v13(v14);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  OUTLINED_FUNCTION_26_3();
  inited = *((*MEMORY[0x1E69E7D40] & v18) + 0x270);
  v59 = 0xE700000000000000;
  v60 = 0x64692D6D616461;
  v20 = (inited)(v0, 0x64692D6D616461, 0xE700000000000000);
  v22 = v21;
  sub_1E325F6F0(v0, &unk_1ECF363C0);
  v57 = v5;
  if (v22)
  {
    OUTLINED_FUNCTION_203_0();
    goto LABEL_5;
  }

  v60 = 6580592;
  v23 = OUTLINED_FUNCTION_151_1();
  v13(v23);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  v20 = (inited)(v0, 6580592, 0xE300000000000000);
  v22 = v27;
  sub_1E325F6F0(v0, &unk_1ECF363C0);
  if (v22)
  {
    v59 = 0xE300000000000000;
    OUTLINED_FUNCTION_203_0();
LABEL_5:
    v28 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F758);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1E4297BE0;
    *(v30 + 32) = v60;
    *(v30 + 40) = v59;
    *(v30 + 48) = v20;
    *(v30 + 56) = v22;
    *(inited + 48) = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    OUTLINED_FUNCTION_38_0();
    sub_1E4205CB4();
    sub_1E3280A90(0, &qword_1ECF31170);
    v31 = OUTLINED_FUNCTION_50();
    sub_1E3A3EB34(v31);
    OUTLINED_FUNCTION_87_0();

    v32 = v52;
    v33 = OUTLINED_FUNCTION_34();
    v35 = sub_1E3A355A4(v33, v34);
    if (v35)
    {
      OUTLINED_FUNCTION_273();
      v50();
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
      v35 = v35;
      sub_1E3A32608(v35, v52, 1, v53, v0, v39, v40, v41, v47, v48, v49, v50, v51, v52, 1, 2, v54, v55, v56, v57);

      sub_1E325F6F0(v0, &unk_1ECF363C0);
      v42 = v58;
    }

    else
    {
      v42 = v58;
      OUTLINED_FUNCTION_273();
    }

    goto LABEL_9;
  }

  v35 = 0;
  v42 = v58;
  OUTLINED_FUNCTION_273();
  v28 = v53;
LABEL_9:
  sub_1E3A407C0();
  if (v42)
  {
    v43 = sub_1E4205F14();
    v42(inited, v43, v44, 1, 0);

    OUTLINED_FUNCTION_15_5();
    v45(v28, v56);
  }

  else
  {
    OUTLINED_FUNCTION_15_5();
    v46(v28, v56);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3FE68()
{
  OUTLINED_FUNCTION_31_1();
  v78 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_144_0();
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v84 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v83 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v80 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v82 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_8();
  v18 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v85 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_47_3();
  v86 = v2;
  if (v5)
  {
    sub_1E324FBDC();
    v24 = OUTLINED_FUNCTION_21_16();
    v25(v24);
    v26 = v5;
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_13_13();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_238();
      v90 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v89 = v87;
      __swift_allocate_boxed_opaque_existential_1(v88);
      OUTLINED_FUNCTION_34_34();
      (*(v31 + 16))(v32);
      v33 = sub_1E3294FA4(v88);
      v35 = sub_1E3270FC8(v33, v34, &v90);

      *(v29 + 4) = v35;
      OUTLINED_FUNCTION_50_6(&dword_1E323F000, v27, v28, "OpenURLHandler::error returned in campaignAttributionTask: %s");
      __swift_destroy_boxed_opaque_existential_1(v0);
      v0 = v79;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0](v36);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0](v37);
    }

    v38 = OUTLINED_FUNCTION_153_2();
    v39(v38);
    v2 = v86;
  }

  if (v0)
  {
    v81 = v18;
    v40 = OUTLINED_FUNCTION_47_12(v0);
    v42 = [v40 v41];
    if (v42)
    {
      v43 = v42;
      sub_1E41FE3C4();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    __swift_storeEnumTagSinglePayload(v1, v44, 1, v6);
    v45 = OUTLINED_FUNCTION_146();
    sub_1E327D738(v45, v46);
    sub_1E324FBDC();
    v47 = OUTLINED_FUNCTION_101();
    v48(v47);
    sub_1E37E93E8(v2, v82, &unk_1ECF363C0);
    v49 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_13_13();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v52 = swift_slowAlloc();
      v90 = v52;
      *v51 = 136315138;
      sub_1E37E93E8(v82, v80, &unk_1ECF363C0);
      OUTLINED_FUNCTION_52(v80, 1, v6);
      if (v53)
      {
        v56 = v6;
        sub_1E325F6F0(v80, &unk_1ECF363C0);
        OUTLINED_FUNCTION_2_85();
      }

      else
      {
        v89 = v6;
        __swift_allocate_boxed_opaque_existential_1(v88);
        OUTLINED_FUNCTION_322();
        v56 = v6;
        v57();
      }

      sub_1E3294FA4(v88);
      OUTLINED_FUNCTION_9_9();
      sub_1E325F6F0(v82, &unk_1ECF363C0);
      v58 = OUTLINED_FUNCTION_34();
      v61 = sub_1E3270FC8(v58, v59, v60);

      *(v51 + 4) = v61;
      _os_log_impl(&dword_1E323F000, v49, v1, "OpenURLHandler::redirectURL returned in campaignAttributionTask: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v20 + 8))(v85, v81);
      v6 = v56;
      v2 = v86;
    }

    else
    {

      sub_1E325F6F0(v82, &unk_1ECF363C0);
      v54 = OUTLINED_FUNCTION_16_0();
      v55(v54);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v64 = OUTLINED_FUNCTION_123_1();
      sub_1E37E93E8(v64, v65, v66);
      v67 = OUTLINED_FUNCTION_245();
      OUTLINED_FUNCTION_52(v67, v68, v6);
      if (v53)
      {
        v69 = OUTLINED_FUNCTION_259();
        v70(v69);
        v71 = OUTLINED_FUNCTION_245();
        OUTLINED_FUNCTION_52(v71, v72, v6);
        if (!v53)
        {
          sub_1E325F6F0(v83, &unk_1ECF363C0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_322();
        v74(v84, v83, v6);
      }

      OUTLINED_FUNCTION_98_6();
      sub_1E3A40514();

      OUTLINED_FUNCTION_143();
      v76 = OUTLINED_FUNCTION_27_0();
      v77(v76);
    }

    else
    {
      OUTLINED_FUNCTION_143();
    }

    sub_1E325F6F0(v2, &unk_1ECF363C0);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A40514()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v3;
  v46 = v4;
  v47 = v5;
  v44 = v6;
  v45 = v7;
  v48 = v1;
  v43 = v8;
  OUTLINED_FUNCTION_50_19();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_138();
  v51 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_77_0();
  sub_1E41FE5C4();
  v49 = v0;
  if (v0)
  {
    v41 = v9;
    v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = OUTLINED_FUNCTION_8_6();
    v22(v21);
    OUTLINED_FUNCTION_28_13();
    v23 = OUTLINED_FUNCTION_39_9();
    v24(v23);
    v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (*(v16 + 80) + v27 + 8) & ~*(v16 + 80);
    v29 = swift_allocObject();
    (*(v11 + 32))(v29 + v25, v42, v41);
    v31 = v48;
    v30 = v49;
    *(v29 + v26) = v48;
    *(v29 + v27) = v30;
    (*(v16 + 32))(v29 + v28, &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
    v32 = (v29 + ((v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v43;
    *v32 = v44;
    v32[1] = v33;
    v52[4] = v46;
    v52[5] = v29;
    OUTLINED_FUNCTION_12_0();
    v52[1] = 1107296256;
    OUTLINED_FUNCTION_7_6();
    v52[2] = v34;
    v52[3] = v47;
    v35 = _Block_copy(v52);
    v36 = v31;
    v30;
    v37 = OUTLINED_FUNCTION_168();
    v50(v37);

    v38 = OUTLINED_FUNCTION_43_0();
    [v38 v39];
    _Block_release(v35);
  }

  (*(v16 + 8))(v2, v51);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A407C0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_0();
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_12();
  v6 = [objc_opt_self() isSUIEnabled];
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v7 = sub_1E4206A04();
  if (v6)
  {
    v22 = sub_1E3A465C0;
    v23 = 0;
    OUTLINED_FUNCTION_12_0();
    v19 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v9 = &block_descriptor_420;
  }

  else
  {
    v22 = sub_1E3A465DC;
    v23 = 0;
    OUTLINED_FUNCTION_12_0();
    v19 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v9 = &block_descriptor_417;
  }

  v20 = v8;
  v21 = v9;
  v10 = _Block_copy(&v18);
  sub_1E4203FE4();
  v18 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v13, v14);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v0, v10);
  _Block_release(v10);

  OUTLINED_FUNCTION_215();
  v15 = OUTLINED_FUNCTION_13_8();
  v16(v15);
  (*(v4 + 8))(v1, v17);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A40A38()
{
  OUTLINED_FUNCTION_31_1();
  v52 = v2;
  v53 = v3;
  v50 = v5;
  v51 = v4;
  v55 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_304();
  v9 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_132_3();
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v0 objectForKeyedSubscript_];
  if (!v22)
  {
    goto LABEL_4;
  }

  v54 = v22;
  v49 = @"getOpenURLRouterDataSource";
  if ([v22 hasProperty_])
  {
    v23 = sub_1E41FE314();
    v47 = v24;
    v48 = v23;
    OUTLINED_FUNCTION_88_4();
    OUTLINED_FUNCTION_114_3();
    v25();
    OUTLINED_FUNCTION_131_0();
    v46 = v9;
    v26(v1, v50, v9);
    OUTLINED_FUNCTION_303();
    v27 = (v19 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v11 + 80);
    v50 = v0;
    v29 = (v28 + v27 + 8) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v55;
    (*(v17 + 32))(v30 + v8, v21, v15);
    v31 = v51;
    *(v30 + v27) = v51;
    (*(v11 + 32))(v30 + v29, v1, v46);
    v32 = (v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v53;
    *v32 = v52;
    v32[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v34 = OUTLINED_FUNCTION_28_30();
    *(v34 + 16) = xmmword_1E4299720;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v35 = v47;
    *(v34 + 32) = v48;
    *(v34 + 40) = v35;
    v36 = sub_1E3280A90(0, &qword_1EE23AE50);
    v37 = v31;
    v38 = v55;
    v39 = OUTLINED_FUNCTION_38_0();
    sub_1E34AF604(v39);
    v40 = sub_1E3A242D8(v50, sub_1E3A4CD24, v30);
    *(v34 + 88) = v36;
    *(v34 + 64) = v40;
    v41 = sub_1E4205F14();
    v43 = sub_1E3780E30(v41, v42, v34, v54);

LABEL_4:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A40D68()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_12();
  if (!sub_1E32AE9B0(v10))
  {
    OUTLINED_FUNCTION_200_0();
LABEL_13:
    sub_1E325F6F0(&v30, &unk_1ECF296E0);
    v19 = 0;
    goto LABEL_14;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v28 = OUTLINED_FUNCTION_321();
    v15 = MEMORY[0x1E6911E60](v28);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v15 = *(v10 + 32);
  }

  v16 = v15;
  v17 = [v15 toObject];

  if (v17)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
  }

  OUTLINED_FUNCTION_128_5();
  if (!v18)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_47_23();
  if (swift_dynamicCast())
  {
    v19 = v29[8];
  }

  else
  {
    v19 = 0;
  }

LABEL_14:
  v20 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v21 = OUTLINED_FUNCTION_146();
  v22(v21);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v20);
  v26 = sub_1E3280A90(0, &qword_1EE23B1D0);
  MEMORY[0x1EEE9AC00](v26);
  v29[2] = v0;
  v29[3] = v19;
  v29[4] = v6;
  v29[5] = v4;
  v29[6] = v2;
  v29[7] = v8;
  OUTLINED_FUNCTION_346(v27, v29);
  sub_1E325F6F0(v0, &unk_1ECF363C0);
  if ([objc_opt_self() valueWithUndefinedInContext_])
  {

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1E3A40FD4()
{
  OUTLINED_FUNCTION_31_1();
  v47 = v2;
  v48 = v3;
  v49 = v4;
  v50 = v5;
  v52 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_106();
  v9 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_132_3();
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_227();
  v23 = v21 - v22;
  v24 = [v0 objectForKeyedSubscript_];
  if (!v24)
  {
    goto LABEL_4;
  }

  v51 = v24;
  if ([v24 hasProperty_])
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v46 = v0;
    sub_1E3B79200(sub_1E3A41334, 0);
    v25 = v8;
    v26 = sub_1E41FE314();
    v44 = v27;
    v45 = v26;
    OUTLINED_FUNCTION_66_4();
    v28 = OUTLINED_FUNCTION_8_6();
    v29(v28);
    OUTLINED_FUNCTION_88_4();
    v30(v1, v47, v9);
    OUTLINED_FUNCTION_303();
    v31 = (v19 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_53_23();
    v32 = swift_allocObject();
    *(v32 + 16) = v52;
    (*(v17 + 32))(v32 + v25, v23, v15);
    *(v32 + v31) = v49;
    (*(v11 + 32))(v32 + v9, v1, v9);
    v33 = (v32 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v50;
    v33[1] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v34 = OUTLINED_FUNCTION_28_30();
    *(v34 + 16) = xmmword_1E4299720;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 32) = v45;
    *(v34 + 40) = v44;
    v35 = sub_1E3280A90(0, &qword_1EE23AE50);
    v36 = v49;
    v37 = v52;
    sub_1E34AF604(v50);
    v38 = sub_1E3A242D8(v46, sub_1E3A4B564, v32);
    *(v34 + 88) = v35;
    *(v34 + 64) = v38;
    v39 = sub_1E4205F14();
    v41 = sub_1E3780E30(v39, v40, v34, v51);

LABEL_4:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A41334()
{
  v0 = objc_opt_self();
  v1 = [v0 loadingScreen];
  v2 = [v1 isVisible];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 loadingScreen];
    [v3 setLoadingDelay_];
    [v3 setTimeout_];
    [v3 showOverKeyWindowWithSpinnerOnly_];
  }
}

void sub_1E3A41418()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  if (!sub_1E32AE9B0(v12))
  {
    OUTLINED_FUNCTION_200_0();
LABEL_13:
    sub_1E325F6F0(&v33, &unk_1ECF296E0);
    v21 = 0;
    goto LABEL_14;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E6911E60](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v17 = *(v12 + 32);
  }

  v18 = v17;
  v19 = [v17 toObject];

  if (v19)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
  }

  OUTLINED_FUNCTION_128_5();
  if (!v20)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_47_23();
  if (swift_dynamicCast())
  {
    v21 = v32;
  }

  else
  {
    v21 = 0;
  }

LABEL_14:
  v22 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_39_0();
  v24(v23);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v22);
  v28 = sub_1E3280A90(0, &qword_1EE23B1D0);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_228();
  *(v29 - 64) = v0;
  *(v29 - 56) = v21;
  *(v29 - 48) = v10;
  *(v29 - 40) = v4;
  *(v29 - 32) = v2;
  *(v29 - 24) = v8;
  *(v29 - 16) = v6;
  OUTLINED_FUNCTION_346(v30, v31);
  sub_1E325F6F0(v0, &unk_1ECF363C0);
  if ([objc_opt_self() valueWithUndefinedInContext_])
  {

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1E3A41684()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v111 = v7;
  v112 = v6;
  OUTLINED_FUNCTION_123_2();
  v8 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v108 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = OUTLINED_FUNCTION_27_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v101 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v102 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v113 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_78();
  v23 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v114 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_47_3();
  sub_1E324FBDC();
  v29 = OUTLINED_FUNCTION_101();
  v105 = v30;
  v104 = v31;
  (v31)(v29);
  v106 = v2;
  v32 = OUTLINED_FUNCTION_102_3();
  sub_1E37E93E8(v32, v33, &unk_1ECF363C0);
  v34 = sub_1E41FFC94();
  v35 = sub_1E42067D4();
  v103 = v8;
  if (os_log_type_enabled(v34, v35))
  {
    v107 = v23;
    v98 = v25;
    v109 = v5;
    OUTLINED_FUNCTION_57_3();
    v37 = v36;
    v39 = v38;
    v40 = swift_slowAlloc();
    v117[0] = OUTLINED_FUNCTION_72_0();
    *v40 = *(v39 + 352);
    v41 = sub_1E3270FC8(0xD000000000000031, (v37 - 32) | 0x8000000000000000, v117);
    OUTLINED_FUNCTION_121_0(v41);
    v42 = OUTLINED_FUNCTION_283();
    sub_1E37E93E8(v42, v43, v44);
    OUTLINED_FUNCTION_52(v3, 1, v8);
    if (v45)
    {
      sub_1E325F6F0(v3, &unk_1ECF363C0);
      OUTLINED_FUNCTION_2_85();
    }

    else
    {
      v116 = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v115);
      (*(v108 + 32))(boxed_opaque_existential_1, v3, v8);
    }

    sub_1E3294FA4(v115);
    sub_1E325F6F0(v1, &unk_1ECF363C0);
    v49 = OUTLINED_FUNCTION_39_9();
    v52 = sub_1E3270FC8(v49, v50, v51);

    *(v40 + 14) = v52;
    _os_log_impl(&dword_1E323F000, v34, v35, "OpenURLHandler::%s back from %s", v40, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v53 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v53);

    v46 = *(v98 + 8);
    v23 = v107;
    v46(v0, v107);
    v5 = v109;
  }

  else
  {

    sub_1E325F6F0(v1, &unk_1ECF363C0);
    v46 = *(v25 + 8);
    v47 = OUTLINED_FUNCTION_153_2();
    (v46)(v47);
  }

  if (v112)
  {
    sub_1E3280A90(0, &qword_1ECF31170);
    v54 = v111;

    v56 = sub_1E3A355A4(v55, v111);
    if (v56)
    {
      v57 = v56;
      v104(v114, v105, v23);
      sub_1E37E93E8(v106, v113, &unk_1ECF363C0);
      v58 = sub_1E41FFC94();
      v59 = sub_1E42067D4();
      v110 = v5;
      if (os_log_type_enabled(v58, v59))
      {
        OUTLINED_FUNCTION_57_3();
        v60 = swift_slowAlloc();
        v117[0] = OUTLINED_FUNCTION_72_0();
        *v60 = 136315394;
        OUTLINED_FUNCTION_23();
        *(v60 + 4) = sub_1E3270FC8(0xD000000000000031, v61, v117);
        *(v60 + 12) = 2080;
        sub_1E37E93E8(v113, v102, &unk_1ECF363C0);
        OUTLINED_FUNCTION_52(v102, 1, v103);
        if (v45)
        {
          sub_1E325F6F0(v102, &unk_1ECF363C0);
          OUTLINED_FUNCTION_2_85();
        }

        else
        {
          v116 = v103;
          v64 = __swift_allocate_boxed_opaque_existential_1(v115);
          (*(v108 + 32))(v64, v102, v103);
        }

        sub_1E3294FA4(v115);
        OUTLINED_FUNCTION_16_11();
        sub_1E325F6F0(v113, &unk_1ECF363C0);
        v65 = OUTLINED_FUNCTION_146();
        v68 = sub_1E3270FC8(v65, v66, v67);

        *(v60 + 14) = v68;
        _os_log_impl(&dword_1E323F000, v58, v59, "OpenURLHandler::%s process data source %s", v60, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        v62 = v114;
        v63 = v23;
      }

      else
      {

        sub_1E325F6F0(v113, &unk_1ECF363C0);
        v62 = v114;
        v63 = v23;
      }

      v46(v62, v63);
      v69 = sub_1E3A49AF4(v57);
      if (v69)
      {
        v70 = v69;
        if (sub_1E32AE9B0(v69))
        {
          sub_1E3A384DC(v70);
          OUTLINED_FUNCTION_12_1();

          if (v59)
          {
            if (v111)
            {
              v71 = objc_opt_self();
              v72 = v54;
              v73 = [v71 sharedInstance];
              v74 = [v73 viewControllerWithDocumentDataSource:v59 appContext:v72];

              if (v74)
              {
                if (v110)
                {
                  v110(v74, 0);
                }

                goto LABEL_44;
              }
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      v75 = [v57 action];
      if (v75)
      {
        v59 = v75;
        objc_opt_self();
        v76 = OUTLINED_FUNCTION_345();
        if (v76 && v111)
        {
          v77 = v76;
          v78 = v54;
          v79 = [v77 document];
          v80 = [objc_opt_self() sharedInstance];
          v81 = [v80 viewControllerWithDocumentDataSource:v79 appContext:v78];

          if (v81)
          {
            if (v110)
            {
              v82 = v81;
              v110(v81, 0);
            }

            else
            {
            }
          }

          else
          {
          }

LABEL_44:

          goto LABEL_45;
        }
      }

      v83 = [v57 action];
      if (v83)
      {
        v84 = v83;
        objc_opt_self();
        v85 = OUTLINED_FUNCTION_345();
        if (v85)
        {
          v86 = [v85 offerURLString];
          sub_1E4205F14();
          OUTLINED_FUNCTION_9_9();

          OUTLINED_FUNCTION_34();
          sub_1E41FE404();

          v87 = OUTLINED_FUNCTION_88_3();
          OUTLINED_FUNCTION_52(v87, v88, v103);
          if (!v45)
          {
            (*(v108 + 32))(v100, v101, v103);
            OUTLINED_FUNCTION_28_13();
            v89 = OUTLINED_FUNCTION_123_1();
            v90(v89);
            OUTLINED_FUNCTION_114();
            __swift_storeEnumTagSinglePayload(v91, v92, v93, v103);
            OUTLINED_FUNCTION_26_3();
            v94 = OUTLINED_FUNCTION_168();
            v95(v94);

            sub_1E325F6F0(v99, &unk_1ECF363C0);
            v96 = OUTLINED_FUNCTION_8_6();
            v97(v96);
            goto LABEL_45;
          }

          sub_1E325F6F0(v101, &unk_1ECF363C0);
        }

        else
        {
        }
      }

      objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v59 = sub_1E3A48F5C(0xD000000000000037, 0x80000001E426D880, 1, 0);
      if (v110)
      {
        v110(0, v59);
      }

      goto LABEL_44;
    }

    if (v5)
    {
      v5(0, 0);
    }
  }

LABEL_45:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A420EC()
{
  OUTLINED_FUNCTION_31_1();
  v208 = v3;
  v217 = v4;
  v203 = v5;
  v206 = v6;
  v214 = v7;
  v223 = v8;
  OUTLINED_FUNCTION_123_2();
  v202 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v201 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v11);
  v200 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v198 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v14);
  v196 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v195 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v20);
  v21 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v212 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = OUTLINED_FUNCTION_169_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v25);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v189 - v34;
  v36 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_6();
  v219 = v43;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_47_3();
  sub_1E324FBDC();
  v46 = OUTLINED_FUNCTION_101();
  v220 = v47;
  v221 = v48;
  v224 = v36;
  v222 = v49;
  v48(v46);
  v215 = v2;
  v50 = OUTLINED_FUNCTION_168();
  sub_1E37E93E8(v50, v51, &unk_1ECF363C0);
  v52 = sub_1E41FFC94();
  v53 = sub_1E42067D4();
  v54 = os_log_type_enabled(v52, v53);
  v218 = v21;
  if (v54)
  {
    v209 = v38;
    OUTLINED_FUNCTION_57_3();
    v55 = swift_slowAlloc();
    *&v231 = OUTLINED_FUNCTION_72_0();
    *v55 = 136315394;
    *(v55 + 4) = OUTLINED_FUNCTION_185_0("rPurchaseOrLinkHelper(error:)");
    *(v55 + 12) = 2080;
    v56 = OUTLINED_FUNCTION_53();
    sub_1E37E93E8(v56, v57, v58);
    OUTLINED_FUNCTION_52(v1, 1, v21);
    if (v59)
    {
      sub_1E325F6F0(v1, &unk_1ECF363C0);
      v225 = 0u;
      v226 = 0u;
    }

    else
    {
      *(&v226 + 1) = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v225);
      (*(v212 + 32))(boxed_opaque_existential_1, v1, v21);
    }

    v61 = v219;
    sub_1E3294FA4(&v225);
    sub_1E325F6F0(v35, &unk_1ECF363C0);
    v63 = OUTLINED_FUNCTION_125();
    v66 = sub_1E3270FC8(v63, v64, v65);

    *(v55 + 14) = v66;
    _os_log_impl(&dword_1E323F000, v52, v53, "OpenURLHandler::%s back from %s", v55, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    OUTLINED_FUNCTION_326();
    v60 = *(v67 + 8);
    v68 = OUTLINED_FUNCTION_16_0();
    v60(v68);
  }

  else
  {

    sub_1E325F6F0(v35, &unk_1ECF363C0);
    v60 = *(v38 + 8);
    (v60)(v0, v224);
    v53 = v38;
    v61 = v219;
  }

  v69 = v223;
  if (v223)
  {
    v229 = sub_1E4205F14();
    v230 = v70;
    v71 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    sub_1E375D7E8(&v225, v69, &v231);
    sub_1E375D84C(&v225);
    if (v232)
    {
      OUTLINED_FUNCTION_77_8();
      if ((swift_dynamicCast() & 1) != 0 && v229 == 1)
      {
        v72 = v191;
        OUTLINED_FUNCTION_78_7();
        v73();
        v74 = OUTLINED_FUNCTION_81_6();
        v75 = v192;
        sub_1E37E93E8(v74, v192, v76);
        v77 = sub_1E41FFC94();
        sub_1E42067D4();
        OUTLINED_FUNCTION_41_15();
        if (os_log_type_enabled(v77, v78))
        {
          OUTLINED_FUNCTION_13_13();
          v79 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v223 = swift_slowAlloc();
          *&v231 = v223;
          *v79 = 136315138;
          v80 = v190;
          sub_1E37E93E8(v75, v190, &unk_1ECF363C0);
          v81 = OUTLINED_FUNCTION_88_3();
          v82 = v218;
          OUTLINED_FUNCTION_52(v81, v83, v218);
          if (v59)
          {
            sub_1E325F6F0(v80, &unk_1ECF363C0);
            v225 = 0u;
            v226 = 0u;
          }

          else
          {
            v182 = sub_1E41FE314();
            *(&v226 + 1) = v71;
            *&v225 = v182;
            *(&v225 + 1) = v183;
            OUTLINED_FUNCTION_15_5();
            v72 = v191;
            v75 = v192;
            v184(v80, v82);
          }

          v185 = sub_1E3294FA4(&v225);
          sub_1E325F6F0(v75, &unk_1ECF363C0);
          v186 = OUTLINED_FUNCTION_57();
          sub_1E3270FC8(v186, v187, v188);
          OUTLINED_FUNCTION_38();

          *(v79 + 4) = v185;
          _os_log_impl(&dword_1E323F000, v77, v35, "OpenURLHandler::silent failure for url: %s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v223);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        else
        {

          sub_1E325F6F0(v75, &unk_1ECF363C0);
        }

        (v60)(v72, v224);
LABEL_60:
        sub_1E3A407C0();
        goto LABEL_61;
      }
    }

    else
    {
      sub_1E325F6F0(&v231, &unk_1ECF296E0);
    }

    *&v231 = sub_1E4205F14();
    *(&v231 + 1) = v84;
    sub_1E4207414();
    sub_1E375D7E8(&v225, v69, &v231);
    sub_1E375D84C(&v225);
    if (v232)
    {
      OUTLINED_FUNCTION_77_8();
      v85 = swift_dynamicCast();
      if (v85)
      {
        v86 = v229;
      }

      else
      {
        v86 = 0;
      }

      if (v85)
      {
        v87 = v230;
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      sub_1E325F6F0(&v231, &unk_1ECF296E0);
      v86 = 0;
      v87 = 0;
    }

    v88 = v216;
    OUTLINED_FUNCTION_78_7();
    v89();

    v90 = sub_1E41FFC94();
    v91 = sub_1E42067D4();

    v92 = os_log_type_enabled(v90, v91);
    v192 = v86;
    if (v92)
    {
      v219 = v60;
      OUTLINED_FUNCTION_57_3();
      v93 = swift_slowAlloc();
      *&v231 = OUTLINED_FUNCTION_72_0();
      *v93 = 136315394;
      *(v93 + 4) = OUTLINED_FUNCTION_185_0("rPurchaseOrLinkHelper(error:)");
      *(v93 + 12) = 2080;
      v94 = v53;
      if (v87)
      {
        v95 = MEMORY[0x1E69E6158];
        v96 = v86;
        v97 = v87;
      }

      else
      {
        v96 = 0;
        v97 = 0;
        v95 = 0;
        *&v226 = 0;
      }

      *&v225 = v96;
      *(&v225 + 1) = v97;
      *(&v226 + 1) = v95;

      v98 = sub_1E3294FA4(&v225);
      v100 = sub_1E3270FC8(v98, v99, &v231);

      *(v93 + 14) = v100;
      _os_log_impl(&dword_1E323F000, v90, v91, "OpenURLHandler::%s deep linking to tab: %s", v93, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      v53 = v94;
      v101 = OUTLINED_FUNCTION_32_12();
      v60 = v219;
      v219(v101);
      v88 = v216;
    }

    else
    {

      (v60)(v61, v224);
    }

    v102 = v215;
    v103 = v210;
    sub_1E37E93E8(v215, v210, &unk_1ECF363C0);
    v104 = OUTLINED_FUNCTION_88_3();
    v105 = v218;
    OUTLINED_FUNCTION_52(v104, v106, v218);
    v107 = v214;
    if (v59)
    {

      sub_1E325F6F0(v103, &unk_1ECF363C0);
      v108 = v205;
      OUTLINED_FUNCTION_78_7();
      v109();
      v110 = sub_1E41FFC94();
      v111 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_262(v111))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v112, v113, "OpenURLHandler::skip completion as url is nil");
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      (v60)(v108, v224);
      LODWORD(v118) = 1;
    }

    else
    {
      v114 = v212;
      v115 = OUTLINED_FUNCTION_67_0();
      v116(v115);
      sub_1E3A43404();
      LODWORD(v118) = v117;
      sub_1E3A43404();
      if (v206)
      {
        if (v87)
        {
          v120 = v192;
        }

        else
        {
          v120 = 0;
        }

        v121 = v60;
        v122 = v53;
        v123 = v118;
        v118 = v88;
        if (v87)
        {
          v124 = v87;
        }

        else
        {
          v124 = 0xE000000000000000;
        }

        v206(v118, v120, v124, v123 & 1, v119 & 1);

        v125 = v118;
        LODWORD(v118) = v123;
        v53 = v122;
        v60 = v121;
        (*(v114 + 8))(v125, v218);
      }

      else
      {
        (*(v114 + 8))(v88, v105);
      }
    }

    v126 = v213;
    sub_1E3280A90(0, &qword_1ECF31170);
    v127 = v217;
    v128 = v217;

    v130 = sub_1E3A355A4(v129, v127);
    v131 = v211;
    if (v130)
    {
      v132 = v130;
      OUTLINED_FUNCTION_78_7();
      v133();
      v134 = OUTLINED_FUNCTION_11_6();
      sub_1E37E93E8(v134, v135, v136);
      v137 = sub_1E41FFC94();
      sub_1E42067D4();
      OUTLINED_FUNCTION_41_15();
      if (os_log_type_enabled(v137, v138))
      {
        v219 = v60;
        OUTLINED_FUNCTION_57_3();
        v139 = swift_slowAlloc();
        *&v231 = OUTLINED_FUNCTION_72_0();
        *v139 = 136315394;
        OUTLINED_FUNCTION_23();
        *(v139 + 4) = sub_1E3270FC8(0xD000000000000024, v140, &v231);
        *(v139 + 12) = 2080;
        v141 = v204;
        sub_1E37E93E8(v131, v204, &unk_1ECF363C0);
        v142 = v218;
        OUTLINED_FUNCTION_52(v141, 1, v218);
        v209 = v53;
        LODWORD(v216) = v118;
        if (v59)
        {
          sub_1E325F6F0(v141, &unk_1ECF363C0);
          v225 = 0u;
          v226 = 0u;
        }

        else
        {
          *(&v226 + 1) = v142;
          v146 = __swift_allocate_boxed_opaque_existential_1(&v225);
          (*(v212 + 32))(v146, v141, v142);
        }

        sub_1E3294FA4(&v225);
        sub_1E325F6F0(v131, &unk_1ECF363C0);
        v147 = OUTLINED_FUNCTION_139_0();
        v118 = sub_1E3270FC8(v147, v148, v149);

        *(v139 + 14) = v118;
        OUTLINED_FUNCTION_258();
        _os_log_impl(v150, v151, v152, v153, v139, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        v53 = v209;
        v60 = v219;
        (v219)(v213, v224);
        v102 = v215;
        v107 = v214;
        LOBYTE(v118) = v216;
      }

      else
      {

        sub_1E325F6F0(v131, &unk_1ECF363C0);
        (v60)(v126, v224);
      }

      sub_1E3A32608(v132, v217, v118 & 1, v208, v102, v143, v144, v145, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200);
    }

    v154 = (*((*MEMORY[0x1E69E7D40] & *v107) + 0x270))(v102, 0x6E6F69746361, 0xE600000000000000);
    if (v155)
    {
      *&v225 = v154;
      *(&v225 + 1) = v155;
      *&v231 = 0xD000000000000015;
      *(&v231 + 1) = 0x80000001E426D250;
      sub_1E41FE6C4();
      v156 = v207;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
      sub_1E32822E0();
      OUTLINED_FUNCTION_25();
      v161 = OUTLINED_FUNCTION_265();
      sub_1E325F6F0(v156, &qword_1ECF2FBA0);

      if (!v161)
      {
        v162 = v193;
        OUTLINED_FUNCTION_78_7();
        v163();
        v164 = sub_1E41FFC94();
        v165 = sub_1E42067D4();
        if (OUTLINED_FUNCTION_262(v165))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_15_14(&dword_1E323F000, v166, v167, "OpenURLHandler::scan network for supported TV+ devices");
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (v60)(v162, v224);
        sub_1E3280A90(0, &qword_1EE23B1D0);
        (*(v195 + 104))(v194, *MEMORY[0x1E69E7F98], v196);
        v168 = sub_1E4206A54();
        v169 = OUTLINED_FUNCTION_39_3();
        v170(v169);
        v227 = sub_1E3A43674;
        v228 = 0;
        *&v225 = MEMORY[0x1E69E9820];
        *(&v225 + 1) = 1107296256;
        OUTLINED_FUNCTION_0_48();
        *&v226 = v171;
        *(&v226 + 1) = &block_descriptor_273;
        v172 = _Block_copy(&v225);
        OUTLINED_FUNCTION_326();
        sub_1E4203FE4();
        *&v231 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_101();
        sub_1E3A496B8(v173, v174);
        v175 = OUTLINED_FUNCTION_32_7();
        __swift_instantiateConcreteTypeFromMangledNameV2(v175);
        OUTLINED_FUNCTION_47();
        sub_1E328FCF4(v176, v177);
        sub_1E42072E4();
        v178 = OUTLINED_FUNCTION_321();
        MEMORY[0x1E6911380](v178);
        _Block_release(v172);

        OUTLINED_FUNCTION_15_5();
        v179 = OUTLINED_FUNCTION_168();
        v180(v179);
        OUTLINED_FUNCTION_15_5();
        v181(v53, v200);
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A43404()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_260();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  v6 = OUTLINED_FUNCTION_146();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_317();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_99_0();
  v11(v10);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v15) + 0x270))(v3, v2, v1);
  v17 = v16;
  v18 = OUTLINED_FUNCTION_151_1();
  sub_1E325F6F0(v18, v19);
  if (v17)
  {
    v20 = sub_1E41FE6C4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
    sub_1E32822E0();
    OUTLINED_FUNCTION_25();
    v24 = OUTLINED_FUNCTION_265();
    sub_1E325F6F0(v0, &qword_1ECF2FBA0);
    if (v24)
    {
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_265();
      sub_1E325F6F0(v0, &qword_1ECF2FBA0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A43674()
{
  sub_1E4146278();

  sub_1E41462B8();
}

void sub_1E3A436B8()
{
  OUTLINED_FUNCTION_31_1();
  v41 = v1;
  v42 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_9_5();
  v8 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_131_0();
  v43 = v15;
  v19(v2);
  OUTLINED_FUNCTION_107_0();
  v40 = v0;
  v20(v14, v0, v8);
  v21 = sub_1E41FFC94();
  v22 = sub_1E42067D4();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_13_13();
    v39 = v5;
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v23 = 136315138;
    OUTLINED_FUNCTION_6_83();
    sub_1E3A496B8(v24, v25);
    sub_1E4207944();
    v38 = v7;
    (*(v10 + 8))(v14, v8);
    v26 = OUTLINED_FUNCTION_97_1();
    v29 = sub_1E3270FC8(v26, v27, v28);

    *(v23 + 4) = v29;
    OUTLINED_FUNCTION_50_6(&dword_1E323F000, v21, v22, "OpenURLHandler::bundleOffer prepare for [%s]");
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v5 = v39;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  (*(v17 + 8))(v2, v43);
  v30 = [objc_opt_self() vui_defaultBag];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1E3280A90(0, &qword_1EE23B1D0);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v40;
    *(&v36 - 6) = v41;
    *(&v36 - 5) = v7;
    *(&v36 - 4) = v5;
    *(&v36 - 3) = v33;
    v34 = v42;
    *(&v36 - 2) = v31;
    *(&v36 - 1) = v34;
    sub_1E3B79200(sub_1E3A4C5A0, (&v36 - 8));
  }

  else if (v7)
  {
    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v44[3] = sub_1E3280A90(0, &qword_1EE23ADD0);
    v44[0] = v35;
    v7(v44);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A43A44()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_11_14();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isPlaybackUIBeingShown];

  if (v10)
  {
    OUTLINED_FUNCTION_69_8();
    v11 = OUTLINED_FUNCTION_75();
    v12(v11);
    v13 = (*(*(v5 + 80) + 0x7E8) & ~*(v5 + 80)) + v7;
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_91();
    v15();
    *(v14 + v13) = v3 & 1;
    *(v14 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8) = v1;
    v16 = v1;
    sub_1E3A3C02C();

LABEL_9:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (![objc_opt_self() isSUIEnabled])
  {
    v18 = [objc_opt_self() currentNavigationController];
    if (v18)
    {
      v19 = v18;
      OUTLINED_FUNCTION_69_8();
      v20 = OUTLINED_FUNCTION_75();
      v21(v20);
      v22 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + v7;
      v23 = swift_allocObject();
      OUTLINED_FUNCTION_91();
      v24();
      *(v23 + v22) = v3 & 1;
      *(v23 + (v22 & 0xFFFFFFFFFFFFFFF8) + 8) = v1;
      v28[4] = sub_1E3A4D058;
      v28[5] = v23;
      OUTLINED_FUNCTION_12_0();
      v28[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v28[2] = v25;
      v28[3] = &block_descriptor_459;
      v26 = _Block_copy(v28);
      v27 = v1;

      [v19 dismissViewControllerAnimated:0 completion:v26];
      _Block_release(v26);
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_25_2();

  sub_1E3A43D18();
}

void sub_1E3A43D18()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_11_14();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_12();
  v8 = [objc_opt_self() isSUIEnabled];
  v9 = MEMORY[0x1E69E7D40];
  if (v8)
  {
    v10 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = sub_1E41FE414();
      OUTLINED_FUNCTION_2();
      v13 = OUTLINED_FUNCTION_124();
      v14(v13);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v12);
      v18 = *((*v9 & *v11) + 0x220);
      v19 = v11;
      v18(v0, 0, 0, v4 & 1);
      v9 = MEMORY[0x1E69E7D40];

      sub_1E325F6F0(v0, &unk_1ECF363C0);
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = sub_1E41FE364();
    [v20 handleAccountSettingsEventWithUrl:v21 amsBagKey:0 useAMSWebView:v4 & 1];
  }

  sub_1E3A407C0();
  v22 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_124();
  v24(v23);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v22);
  OUTLINED_FUNCTION_39();
  LOBYTE(v22) = (*((*v9 & v28) + 0x260))(v0);
  sub_1E325F6F0(v0, &unk_1ECF363C0);
  if (v22)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v29 = OUTLINED_FUNCTION_33_14();
    v30(v29);
    v31 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_101_3();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v33);
      OUTLINED_FUNCTION_122_0();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v39 = OUTLINED_FUNCTION_13_8();
    v40(v39);
  }

  else
  {
    (*((*v9 & *v2) + 0x118))(1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A440B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v49 = v3;
  v50 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9_5();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_227();
  v15 = v13 - v14;
  v16 = &v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion];
  v17 = *&v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion];
  *v16 = v8;
  *(v16 + 1) = v6;
  v18 = OUTLINED_FUNCTION_99_0();
  sub_1E34AF604(v18);
  sub_1E34AF594(v17);
  v19 = [objc_opt_self() sharedInstance];
  LODWORD(v6) = [v19 isPlaybackUIBeingShown];

  v20 = &unk_1E429A000;
  if (v6)
  {
    OUTLINED_FUNCTION_28_13();
    v21(v15, v49, v9);
    OUTLINED_FUNCTION_134_4();
    v23 = v22 & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v0;
    OUTLINED_FUNCTION_168_0();
    v25();
    *(v24 + v11) = v50;
    *(v24 + v23) = v2;
    v20 = &unk_1E429A000;

    v26 = v0;
    v27 = v50;
    sub_1E3A3C02C();

    v28 = v50;
  }

  else
  {
    v28 = v50;
    if ([objc_opt_self() currentNavigationController])
    {
      OUTLINED_FUNCTION_28_13();
      v48 = v29;
      v30(v15, v49, v9);
      OUTLINED_FUNCTION_134_4();
      v32 = v31 & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      *(v33 + 16) = v0;
      v20 = &unk_1E429A000;
      OUTLINED_FUNCTION_168_0();
      v34();
      *(v33 + v11) = v50;
      *(v33 + v32) = v2;
      v28 = v50;
      v54 = sub_1E3A4C5B0;
      v55 = v33;
      OUTLINED_FUNCTION_12_0();
      v51[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v52 = v35;
      v53 = &block_descriptor_471;
      v36 = _Block_copy(v51);

      v37 = v0;
      v38 = v50;

      [v48 dismissViewControllerAnimated:0 completion:v36];
      _Block_release(v36);
    }
  }

  v39 = objc_allocWithZone(MEMORY[0x1E698C820]);
  v40 = v28;
  v41 = sub_1E41FE364();
  v42 = [v39 initWithURL:v41 bag:v40];

  v43 = [v42 perform];
  v54 = sub_1E3A44D3C;
  v55 = 0;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_23_40(v20[375]);
  v52 = v44;
  v53 = &block_descriptor_465;
  v45 = _Block_copy(v51);
  v46 = OUTLINED_FUNCTION_121();
  [v46 v47];
  _Block_release(v45);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A44474()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v70 = v5;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v9);
  sub_1E41FE314();
  OUTLINED_FUNCTION_16_11();
  v10 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID);
  *v10 = 0;
  v10[1] = 0;

  v11 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
  *v11 = v1;
  v11[1] = v2;

  *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData) = v4;

  if (v4)
  {
    v12 = sub_1E4205F14();
    OUTLINED_FUNCTION_306(v12);

    sub_1E4207414();
    sub_1E375D7E8(&v74, v4, &v80);
    sub_1E375D84C(&v74);
    if (*(&v81 + 1))
    {
      OUTLINED_FUNCTION_77_8();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_285();
        (*(v13 + 256))();
      }

      goto LABEL_7;
    }
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
  }

  sub_1E325F6F0(&v80, &unk_1ECF296E0);
  if (!v4)
  {
    v80 = 0u;
    v81 = 0u;
    goto LABEL_11;
  }

LABEL_7:
  v14 = sub_1E4205F14();
  OUTLINED_FUNCTION_306(v14);
  sub_1E4207414();
  sub_1E375D7E8(&v74, v4, &v80);
  sub_1E375D84C(&v74);
  if (!*(&v81 + 1))
  {
LABEL_11:
    sub_1E325F6F0(&v80, &unk_1ECF296E0);
    v16 = 2;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_77_8();
  v15 = swift_dynamicCast();
  v16 = v74;
  if (!v15)
  {
    v16 = 2;
  }

LABEL_12:
  v71 = v16;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 controllerPresenter];

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v69 = v4;
    swift_unknownObjectRetain_n();
  }

  else
  {
    swift_unknownObjectRelease();
    v21 = [objc_opt_self() topMostVisibleViewController];
    if (!v21)
    {
      v57 = 0;
      goto LABEL_20;
    }

    v69 = v4;
    v20 = v21;
  }

  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1E42074B4();
  OUTLINED_FUNCTION_81_6();

  *&v80 = 0xD000000000000012;
  *(&v80 + 1) = 0x80000001E426D810;
  v77 = sub_1E3280A90(0, &qword_1EE23B250);
  v74 = v20;
  v22 = v20;
  v23 = sub_1E3294FA4(&v74);
  MEMORY[0x1E69109E0](v23);

  v24 = *(&v80 + 1);
  v67 = v80;
  v25 = [objc_allocWithZone(MEMORY[0x1E698C908]) init];
  v26 = sub_1E41FE364();
  v27 = OUTLINED_FUNCTION_244();
  [v27 v28];

  sub_1E41FE9C4();
  v29 = sub_1E41FE9B4();
  v30 = OUTLINED_FUNCTION_244();
  [v30 v31];

  [v25 setPresentationStyle_];
  sub_1E3A45198();
  v68 = v25;
  v32 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:v25 bag:v70 presentingViewController:v22];
  OUTLINED_FUNCTION_285();
  [v32 setAllowMultiplePresentations_];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_28_13();
  v34();
  v35 = v32;
  OUTLINED_FUNCTION_92_2();

  v36 = sub_1E41FFC94();
  v37 = v6;
  v38 = sub_1E4206814();

  if (os_log_type_enabled(v36, v38))
  {
    OUTLINED_FUNCTION_57_3();
    v66 = v1;
    v39 = swift_slowAlloc();
    v65 = v37;
    v40 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_15_4();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_275(v41);
    *v39 = 138412546;
    *(v39 + 4) = v32;
    *v40 = v32;
    *(v39 + 12) = 2080;
    v42 = v32;
    v43 = sub_1E3270FC8(v67, v24, &v74);

    *(v39 + 14) = v43;
    OUTLINED_FUNCTION_189();
    _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
    sub_1E325F6F0(v40, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_91_6();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v1 = v66;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v73 + 8))(v72, v65);
    OUTLINED_FUNCTION_273();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_120();
    v50(v49);
  }

  v51 = [v32 presentEngagement];
  OUTLINED_FUNCTION_4_0();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_10();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v71;
  *(v53 + 32) = v69;
  v78 = sub_1E3A4C70C;
  v79 = v53;
  v74 = MEMORY[0x1E69E9820];
  v75 = 1107296256;
  v76 = sub_1E3A4D110;
  v77 = &block_descriptor_481;
  v54 = _Block_copy(&v74);

  v55 = OUTLINED_FUNCTION_121();
  [v55 v56];
  _Block_release(v54);
  v57 = v22;

LABEL_20:
  v58 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v60 = sub_1E4205F14();
  OUTLINED_FUNCTION_275(v60);
  v75 = v61;
  v62 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  *(inited + 96) = v62;
  *(inited + 72) = v1;
  *(inited + 80) = v2;
  v63 = sub_1E4205CB4();
  sub_1E37E7460(@"VUIPurchaseOrSubscribeRequestDidStartNotification", 0, v63, v58);

  sub_1E3A407C0();
  OUTLINED_FUNCTION_290();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A44D3C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47_3();
  if (v3)
  {
    sub_1E324FBDC();
    v17 = OUTLINED_FUNCTION_101();
    v18(v17);
    v19 = v3;
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_13_13();
      v52 = v9;
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v51 = v5;
      v23 = swift_slowAlloc();
      v54 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v56 = v53;
      __swift_allocate_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_37_1();
      (*(v24 + 16))();
      v25 = sub_1E3294FA4(v55);
      v27 = sub_1E3270FC8(v25, v26, &v54);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1E323F000, v20, v21, "OpenURLHandler::error returned in campaignAttributionTask: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v5 = v51;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v9 = v52;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v28 = OUTLINED_FUNCTION_153_2();
    v29(v28);
  }

  if (v5)
  {
    v30 = v5;
    v31 = [v30 redirectURL];
    if (v31)
    {
      v0 = v31;
      sub_1E41FE3C4();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    sub_1E41FE414();
    v33 = OUTLINED_FUNCTION_16_5();
    __swift_storeEnumTagSinglePayload(v33, v32, 1, v0);
    v34 = OUTLINED_FUNCTION_53();
    sub_1E327D738(v34, v35);
    OUTLINED_FUNCTION_52(v1, 1, v0);
    if (v36)
    {
      sub_1E325F6F0(v1, &unk_1ECF363C0);
      OUTLINED_FUNCTION_200_0();
    }

    else
    {
      v56 = v0;
      __swift_allocate_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_37_1();
      (*(v37 + 32))();
    }

    sub_1E3294FA4(v55);
    OUTLINED_FUNCTION_9_9();
    sub_1E324FBDC();
    OUTLINED_FUNCTION_164_0();
    v38(v15);

    v39 = sub_1E41FFC94();
    v40 = sub_1E42067D4();

    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_13_13();
      v41 = v15;
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v55[0] = swift_slowAlloc();
      *v42 = 136315138;
      v43 = OUTLINED_FUNCTION_34();
      v46 = sub_1E3270FC8(v43, v44, v45);

      *(v42 + 4) = v46;
      OUTLINED_FUNCTION_258();
      _os_log_impl(v47, v48, v49, v50, v42, 0xCu);
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v11 + 8))(v41, v9);
    }

    else
    {

      (*(v11 + 8))(v15, v9);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A45198()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_123_2();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 getMetricsOverlayForBundleOffer];

  sub_1E4205C64();
  v9 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData);
  if (!v9)
  {
    OUTLINED_FUNCTION_2_85();
    goto LABEL_6;
  }

  sub_1E4205F14();

  sub_1E4207414();
  sub_1E375D7E8(v29, v9, &v30);

  sub_1E375D84C(v29);
  if (!v31)
  {
LABEL_6:
    sub_1E325F6F0(&v30, &unk_1ECF296E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v11;
    *(inited + 48) = sub_1E4205F14();
    *(inited + 56) = v12;
    v13 = sub_1E4205CB4();
    sub_1E37E4D10(v13);
    OUTLINED_FUNCTION_16_5();
  }

  v14 = OUTLINED_FUNCTION_57();
  v16 = sub_1E3A4653C(v14, v15);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_88_4();
  v17(v1);

  v18 = sub_1E41FFC94();
  v19 = sub_1E42067D4();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_13_13();
    v28 = v3;
    v20 = v2;
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v29[0] = swift_slowAlloc();
    *v21 = 136315138;
    v22 = sub_1E4205C74();
    v24 = sub_1E3270FC8(v22, v23, v29);

    *(v21 + 4) = v24;
    _os_log_impl(&dword_1E323F000, v18, v19, "OpenURLHandler::bundleOffer metrics overlay: %s", v21, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v2 = v20;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v5 + 8))(v1, v28);
  }

  else
  {

    v25 = OUTLINED_FUNCTION_220();
    v27(v25, v26);
  }

  sub_1E3A4A02C(v16, v2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A45524()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v27 = v3;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v29 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_12();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v28 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_89();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v27;
  *(v14 + 32) = v7;
  *(v14 + 40) = v5;
  *(v14 + 48) = v2;
  v30[4] = sub_1E3A4C71C;
  v30[5] = v14;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v30[2] = v15;
  v30[3] = &block_descriptor_488;
  v16 = _Block_copy(v30);
  v17 = v7;
  v18 = v5;

  sub_1E4203FE4();
  v30[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v19, v20);
  v21 = OUTLINED_FUNCTION_210();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v22, v23);
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v24 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v24);
  _Block_release(v16);

  v25 = OUTLINED_FUNCTION_11_6();
  v26(v25);
  (*(v10 + 8))(v0, v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A457F0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_9_5();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v137 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_77;
  }

  v18 = Strong;
  if (v10 != 2 && (v10 & 1) != 0)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_69_8();
    v19(v2);
    v18 = v18;
    v20 = sub_1E41FFC94();
    v21 = sub_1E4206814();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_13_13();
      swift_slowAlloc();
      OUTLINED_FUNCTION_30_35();
      *&v142 = swift_slowAlloc();
      *v1 = 136315138;
      v140 = *&v18[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      v23 = sub_1E41494B4(v22);
      v25 = sub_1E3270FC8(v23, v24, &v142);

      *(v1 + 4) = v25;
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v31 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v31);

      v32 = OUTLINED_FUNCTION_120();
      v33(v32);
    }

    else
    {

      v46 = OUTLINED_FUNCTION_120();
      v47(v46);
    }

    sub_1E3A3472C(3);
    goto LABEL_76;
  }

  if (v8)
  {
    v34 = [v8 purchaseResult];
    if (!v34)
    {
      goto LABEL_10;
    }

    v35 = v34;
    if (v6)
    {

LABEL_10:
      v36 = [v8 carrierLinkResult];
      if (v36)
      {
        v37 = v36;
        if (!v6)
        {
          v63 = OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
          if (v63)
          {
            v65 = *v64;
            v66 = MEMORY[0x1E69E6158];
          }

          else
          {
            v65 = 0;
            v66 = 0;
            *&v141 = 0;
          }

          *&v140 = v65;
          *(&v140 + 1) = v63;
          *(&v141 + 1) = v66;

          v138 = sub_1E3294FA4(&v140);
          v97 = v96;
          OUTLINED_FUNCTION_342();

          OUTLINED_FUNCTION_299("ementResult8@NSError16");
          *(&v141 + 1) = sub_1E3280A90(0, &qword_1ECF311B8);
          *&v140 = v37;
          v98 = v37;
          v99 = sub_1E3294FA4(&v140);
          MEMORY[0x1E69109E0](v99);

          OUTLINED_FUNCTION_239();
          OUTLINED_FUNCTION_152_3();
          v100 = sub_1E3294FA4(&v140);
          MEMORY[0x1E69109E0](v100);

          v101 = *(&v142 + 1);
          sub_1E324FBDC();
          OUTLINED_FUNCTION_107_0();
          v102(v0);

          v103 = sub_1E41FFC94();
          v104 = sub_1E4206814();

          if (os_log_type_enabled(v103, v104))
          {
            OUTLINED_FUNCTION_57_3();
            v105 = swift_slowAlloc();
            OUTLINED_FUNCTION_72_0();
            OUTLINED_FUNCTION_238();
            *&v140 = v106;
            *v105 = 136315394;
            v107 = sub_1E3270FC8(v138, v97, &v140);
            v108 = v98;
            v109 = v107;

            *(v105 + 4) = v109;
            v98 = v108;
            OUTLINED_FUNCTION_332();
            v110 = OUTLINED_FUNCTION_46_12();
            v112 = sub_1E3270FC8(v110, v101, v111);

            *(v105 + 14) = v112;
            OUTLINED_FUNCTION_347(&dword_1E323F000, v103, v104, "OpenURLHandler::ActivateCarrierOffer %s] returned, %s");
            OUTLINED_FUNCTION_343();
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();
          }

          else
          {
          }

          v113 = OUTLINED_FUNCTION_287();
          v114(v113, v11);
          v115 = sub_1E3A49BE0([v98 linkParams]);
          v116 = &v18[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID];
          *v116 = v115;
          v116[1] = v117;

          sub_1E3A3472C(2);

          goto LABEL_76;
        }
      }

      goto LABEL_13;
    }

    v48 = OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
    if (v48)
    {
      v50 = *v49;
      v51 = MEMORY[0x1E69E6158];
    }

    else
    {
      v50 = 0;
      v51 = 0;
      *&v141 = 0;
    }

    *&v140 = v50;
    *(&v140 + 1) = v48;
    *(&v141 + 1) = v51;

    v67 = sub_1E3294FA4(&v140);
    OUTLINED_FUNCTION_275(v67);
    v69 = v68;
    OUTLINED_FUNCTION_342();

    OUTLINED_FUNCTION_299("ementResult8@NSError16");
    *(&v141 + 1) = sub_1E3280A90(0, &qword_1ECF311C0);
    *&v140 = v35;
    OUTLINED_FUNCTION_47_12(v35);
    v70 = sub_1E3294FA4(&v140);
    MEMORY[0x1E69109E0](v70);

    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_152_3();
    v71 = sub_1E3294FA4(&v140);
    MEMORY[0x1E69109E0](v71);

    v72 = *(&v142 + 1);
    v73 = sub_1E324FBDC();
    v74 = v11;
    (*(v137 + 16))(v1, v73, v11);

    v75 = sub_1E41FFC94();
    v76 = sub_1E4206814();

    v77 = v69;

    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_57_3();
      v78 = swift_slowAlloc();
      v79 = OUTLINED_FUNCTION_72_0();
      v136 = v74;
      *&v140 = OUTLINED_FUNCTION_306(v79);
      *v78 = 136315394;
      v80 = sub_1E3270FC8(v135, v77, &v140);

      *(v78 + 4) = v80;
      *(v78 + 12) = 2080;
      v81 = OUTLINED_FUNCTION_116_1();
      v83 = sub_1E3270FC8(v81, v72, v82);

      *(v78 + 14) = v83;
      OUTLINED_FUNCTION_258();
      _os_log_impl(v84, v85, v86, v87, v78, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v137 + 8))(v1, v136);
    }

    else
    {

      v88 = OUTLINED_FUNCTION_146();
      v89(v88);
    }

    v90 = OUTLINED_FUNCTION_46_12();
    v92 = [v90 v91];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 buyParams];

      v95 = [v94 parameterForKey_];
      if (v95)
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_130_5();
      }

      v140 = v142;
      v141 = v143;
      if (*(&v143 + 1))
      {
        v118 = OUTLINED_FUNCTION_338();
        v120 = *(&v142 + 1);
        v119 = v142;
        if (!v118)
        {
          v119 = 0;
          v120 = 0;
        }

LABEL_43:
        v121 = &v18[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID];
        *v121 = v119;
        *(v121 + 1) = v120;

        if (v4)
        {
          *&v142 = sub_1E4205F14();
          *(&v142 + 1) = v122;
          sub_1E4207414();
          sub_1E375D7E8(&v140, v4, &v142);
          sub_1E375D84C(&v140);
          if (*(&v143 + 1))
          {
            v123 = OUTLINED_FUNCTION_182_1();
            if (v123)
            {
              v124 = v140;
            }

            else
            {
              v124 = 0;
            }

            if (v123)
            {
              v125 = *(&v140 + 1);
            }

            else
            {
              v125 = 0;
            }

LABEL_53:
            OUTLINED_FUNCTION_143();
            v127 = v126;
            v128 = sub_1E3A49B64(v127, &selRef_responseDictionary);
            if (v128)
            {
              v129 = v128;
              sub_1E4207414();
              sub_1E375D7E8(&v140, v129, &v142);

              sub_1E375D84C(&v140);
              if (*(&v143 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8);
                if ((OUTLINED_FUNCTION_182_1() & 1) != 0 && v140)
                {
                  sub_1E3A2F770(v140, &v140);

                  if (*(&v141 + 1))
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
                    if (OUTLINED_FUNCTION_338())
                    {
                      v130 = v142;
                      if (v142)
                      {
                        sub_1E4207414();
                        sub_1E375D7E8(&v140, v130, &v142);

                        sub_1E375D84C(&v140);
                        if (*(&v143 + 1))
                        {
                          v131 = OUTLINED_FUNCTION_182_1();
                          v132 = v140;
                          if (v131)
                          {
                            v133 = *(&v140 + 1);
                          }

                          else
                          {
                            v132 = 0;
                            v133 = 0;
                          }

                          if (v125)
                          {
                            if (v133)
                            {
                              *&v140 = v132;
                              *(&v140 + 1) = v133;
                              *&v142 = v124;
                              *(&v142 + 1) = v125;
                              sub_1E32822E0();
                              v134 = sub_1E4207254();

LABEL_75:

                              sub_1E3A3472C(v134 & 1);

LABEL_76:
                              goto LABEL_77;
                            }

LABEL_74:
                            v134 = 0;
                            goto LABEL_75;
                          }

LABEL_73:

                          goto LABEL_74;
                        }

LABEL_72:
                        sub_1E325F6F0(&v142, &unk_1ECF296E0);
                        if (v125)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_73;
                      }
                    }

LABEL_71:
                    OUTLINED_FUNCTION_130_5();
                    goto LABEL_72;
                  }

LABEL_70:
                  sub_1E325F6F0(&v140, &unk_1ECF296E0);
                  goto LABEL_71;
                }

LABEL_69:
                OUTLINED_FUNCTION_152_3();
                goto LABEL_70;
              }
            }

            else
            {
              OUTLINED_FUNCTION_130_5();
            }

            sub_1E325F6F0(&v142, &unk_1ECF296E0);
            goto LABEL_69;
          }
        }

        else
        {
          OUTLINED_FUNCTION_130_5();
        }

        sub_1E325F6F0(&v142, &unk_1ECF296E0);
        v124 = 0;
        v125 = 0;
        goto LABEL_53;
      }
    }

    else
    {
      OUTLINED_FUNCTION_152_3();
    }

    sub_1E325F6F0(&v140, &unk_1ECF296E0);
    v119 = 0;
    v120 = 0;
    goto LABEL_43;
  }

LABEL_13:
  sub_1E324FBDC();
  v38 = OUTLINED_FUNCTION_101();
  v39(v38);
  v40 = v6;
  v41 = sub_1E41FFC94();
  v42 = sub_1E42067F4();

  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_13_13();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_35();
    *&v142 = swift_slowAlloc();
    *v137 = 136315138;
    if (v6)
    {
      swift_getErrorValue();
      *(&v141 + 1) = v139;
      __swift_allocate_boxed_opaque_existential_1(&v140);
      OUTLINED_FUNCTION_37_1();
      (*(v43 + 16))();
    }

    else
    {
      OUTLINED_FUNCTION_152_3();
    }

    v52 = sub_1E3294FA4(&v140);
    v54 = sub_1E3270FC8(v52, v53, &v142);

    *(v137 + 4) = v54;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v60 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v60);

    v61 = OUTLINED_FUNCTION_57();
    v62(v61);
  }

  else
  {

    v44 = OUTLINED_FUNCTION_57();
    v45(v44);
  }

LABEL_77:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A464B8()
{
  OUTLINED_FUNCTION_198_1();
  v3 = *(v2 + 32);

  v6 = v1;
  v4 = v0;
  v5 = OUTLINED_FUNCTION_16_0();
  v3(v5);
}

uint64_t sub_1E3A4653C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E3A4928C(a1, sub_1E397BCA4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1E3A465F8()
{
  OUTLINED_FUNCTION_198_1();
  v2 = [objc_opt_self() *v1];
  [v2 *v0];
}

void sub_1E3A46658()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID + 8))
  {
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_21_16();
    v4(v3);
    v5 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_13_13();
      swift_slowAlloc();
      OUTLINED_FUNCTION_30_35();
      v30[0] = swift_slowAlloc();
      *v1 = 136315138;
      OUTLINED_FUNCTION_23();
      *(v1 + 4) = sub_1E3270FC8(0xD000000000000011, v7, v30);
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v13 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v13);
    }

    v14 = OUTLINED_FUNCTION_57();
    v15(v14);
  }

  v16 = sub_1E4205CB4();
  v17 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
  v18 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString + 8);
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *v17;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = *v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1E4205F14();

    v21 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_337();
    v29 = v21;
    *&v28 = v19;
    *(&v28 + 1) = v18;
    sub_1E329504C(&v28, v27);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1E377DF14(v27, v30);
    sub_1E375D84C(v30);
    *v17 = 0;
    v17[1] = 0;

    *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData) = 0;

    *&v28 = sub_1E4205F14();
    *(&v28 + 1) = v22;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_201_1();
    sub_1E325F6F0(&v28, &unk_1ECF296E0);
    v23 = sub_1E375D924(v30);
    if (v24)
    {
      v25 = v23;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0);
      sub_1E4207644();
      sub_1E375D84C(*(v16 + 48) + 40 * v25);
      sub_1E329504C((*(v16 + 56) + 32 * v25), v27);
      OUTLINED_FUNCTION_67_0();
      sub_1E4207664();
    }

    else
    {
      OUTLINED_FUNCTION_152_3();
    }

    sub_1E375D84C(v30);
    sub_1E325F6F0(v27, &unk_1ECF296E0);
    v26 = [objc_opt_self() defaultCenter];
    sub_1E37E7460(@"VUISubscribeRequestDidFinishNotification", 0, v16, v26);
  }

  else
  {
LABEL_11:
  }

  sub_1E3A469E8(0);
  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E3A469E8(char a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion);
  if (v4)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v7 = [v6 initWithBool_];
    v11[3] = sub_1E3280A90(0, &qword_1EE23ADD0);
    v11[0] = v7;
    v4(v11);
    v8 = OUTLINED_FUNCTION_34();
    sub_1E34AF594(v8);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v9 = *v3;
    *v3 = 0;
    v3[1] = 0;
    sub_1E34AF594(v9);
  }

  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x118))(1);
}

void sub_1E3A46B04()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_294();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v23 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_12();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v9 = sub_1E4206A04();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v6;
  *(v10 + 32) = v4;
  *(v10 + 40) = v2;
  v24[4] = sub_1E3A4B498;
  v24[5] = v10;
  OUTLINED_FUNCTION_12_0();
  v24[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v24[2] = v11;
  v24[3] = &block_descriptor_241;
  v12 = _Block_copy(v24);

  sub_1E4203FE4();
  v24[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v13, v14);
  v15 = OUTLINED_FUNCTION_210();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v16, v17);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v18 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v18);
  _Block_release(v12);

  OUTLINED_FUNCTION_215();
  v19 = OUTLINED_FUNCTION_11_6();
  v20(v19);
  v21 = OUTLINED_FUNCTION_287();
  v22(v21, v23);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A46D60()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_247();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OUTLINED_FUNCTION_124();
      sub_1E3A46FBC(v7, v8, v1);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = &v9[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle];
      *v10 = 0;
      *(v10 + 1) = 0;
    }
  }

  else
  {
    sub_1E324FBDC();
    v11 = OUTLINED_FUNCTION_21_16();
    v12(v11);
    v13 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v13, v14))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v20 = OUTLINED_FUNCTION_63_0();
    v21(v20);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = &v22[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle];
      *v23 = 0;
      *(v23 + 1) = 0;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = &v24[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink];
      *v25 = 0;
      *(v25 + 1) = 0;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_1E3A4717C();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      sub_1E3A47770();
    }
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E3A46FBC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E3280A90(0, &qword_1ECF311B0);

  OUTLINED_FUNCTION_16_0();
  v4 = sub_1E3A47920();
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_325();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = a3;
  v12[4] = sub_1E3A4C064;
  v12[5] = v8;
  OUTLINED_FUNCTION_3_4();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v12[2] = v9;
  v12[3] = &block_descriptor_430;
  v10 = _Block_copy(v12);
  v11 = v4;

  sub_1E34AF604(sub_1E3A4C064);

  [v11 setCompletionBlock_];
  _Block_release(v10);

  [v5 addOperation_];
}

void sub_1E3A4717C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v70 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v69 = v8;
  v9 = sub_1E4205F14();
  v11 = v10;
  v12 = sub_1E4205F14();
  v14 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData;
  v15 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData);
  if (!v15)
  {
    OUTLINED_FUNCTION_2_85();
    goto LABEL_6;
  }

  v74 = v12;
  v75 = v13;

  sub_1E4207414();
  sub_1E375D7E8(v71, v15, &v72);

  sub_1E375D84C(v71);
  if (!v73)
  {
LABEL_6:
    sub_1E325F6F0(&v72, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v74 = 0;
    v75 = 0;
  }

  v16 = *(v0 + v14);
  if (!v16)
  {
    OUTLINED_FUNCTION_2_85();
    goto LABEL_17;
  }

  *&v72 = v9;
  *(&v72 + 1) = v11;

  sub_1E4207414();
  sub_1E375D7E8(v71, v16, &v72);

  sub_1E375D84C(v71);
  if (!v73)
  {
LABEL_17:
    sub_1E325F6F0(&v72, &unk_1ECF296E0);
    v18 = 0;
    v19 = 0;
    goto LABEL_18;
  }

  v17 = swift_dynamicCast();
  if (v17)
  {
    v18 = v71[0];
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v71[1];
  }

  else
  {
    v19 = 0;
  }

LABEL_18:
  *(v0 + v14) = 0;

  v20 = v75;
  if (!v75 && v3 == 2)
  {
    v21 = v18;
    v22 = v5;
    v23 = v1;
    v24 = v19;
    v25 = [objc_opt_self() sharedInstance];
    if (!v25)
    {
      __break(1u);
      goto LABEL_44;
    }

    v26 = v25;
    v27 = sub_1E3741090(0xD000000000000024, 0x80000001E426D700, v25);
    v29 = v28;

    v74 = v27;
    v75 = v29;

    v20 = v75;
    v19 = v24;
    v1 = v23;
    v5 = v22;
    v18 = v21;
  }

  if (!v20)
  {
    v30 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle);
    v31 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle + 8);
    if (v31)
    {
      v32 = v19;
      v33 = *v30;
      v34 = objc_opt_self();

      v35 = [v34 sharedInstance];
      if (v35)
      {
        v36 = v35;

        OUTLINED_FUNCTION_23();
        v37 = OUTLINED_FUNCTION_327();
        sub_1E3741090(v37, v38, v36);
        v40 = v39;

        if (v40)
        {
          v41 = v18;
          v42 = MEMORY[0x1E69E6158];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
          OUTLINED_FUNCTION_67_6();
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1E4297BE0;
          *(v43 + 56) = v42;
          v18 = v41;
          *(v43 + 64) = sub_1E3283528();
          *(v43 + 32) = v33;
          *(v43 + 40) = v31;
          OUTLINED_FUNCTION_123_1();
          v44 = sub_1E4205F44();
          v46 = v45;

          v74 = v44;
          v75 = v46;
        }

        v19 = v32;
        goto LABEL_29;
      }

LABEL_44:
      __break(1u);
      return;
    }
  }

LABEL_29:
  v47 = v70;
  if (!v75)
  {
    goto LABEL_39;
  }

  v48 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v48 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_88_4();
    v49(v69);
    v50 = sub_1E41FFC94();
    sub_1E42067E4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_125_0();
      *v52 = 0;
      OUTLINED_FUNCTION_258();
      _os_log_impl(v53, v54, v55, v56, v52, 2u);
      v47 = v70;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v5 + 8))(v69, v47);
    OUTLINED_FUNCTION_123_1();
    v57 = sub_1E4205ED4();

    if (v19)
    {
      v58 = v18;
    }

    else
    {
      v58 = 0;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_57();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_38();

    v59 = OUTLINED_FUNCTION_244();
    [v59 v60];
  }

  else
  {
LABEL_39:

    sub_1E324FBDC();
    OUTLINED_FUNCTION_88_4();
    v61(v1);
    v62 = sub_1E41FFC94();
    v63 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_161(v63))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_82_0();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v5 + 8))(v1, v70);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A47770()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    OUTLINED_FUNCTION_5_10();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    sub_1E376FE58(0, 0, v0, &unk_1E42B49C0, v8);
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_141_0();
    aBlock[4] = sub_1E3A4B4A8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E39CF930;
    aBlock[3] = &block_descriptor_245;
    v12 = _Block_copy(aBlock);

    [v10 fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:v12];

    _Block_release(v12);
  }
}

id sub_1E3A47920()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithAdamId_];

  return v2;
}

void sub_1E3A47994()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_247();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v23 = sub_1E4206A04();
      OUTLINED_FUNCTION_325();
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v7;
      *(v8 + 32) = v1;
      v24[4] = sub_1E3A4C070;
      v24[5] = v8;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v24[2] = v9;
      v24[3] = &block_descriptor_436;
      v10 = _Block_copy(v24);
      v22 = v5;
      v21 = v7;

      sub_1E4203FE4();
      v24[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_101();
      sub_1E3A496B8(v11, v12);
      v13 = OUTLINED_FUNCTION_97_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13);
      OUTLINED_FUNCTION_47();
      sub_1E328FCF4(v14, v15);
      OUTLINED_FUNCTION_151_0();
      sub_1E42072E4();
      v16 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1E6911380](v16);
      _Block_release(v10);

      v17 = OUTLINED_FUNCTION_11_6();
      v18(v17);
      v19 = OUTLINED_FUNCTION_39_3();
      v20(v19);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A47C60()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_11_14();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  v2 = [v0 error];
  if (v2)
  {
    v3 = v2;
    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_101();
    v5(v4);
    v6 = v3;
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_57_3();
      v9 = swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_15_4();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      OUTLINED_FUNCTION_23();
      *(v9 + 4) = sub_1E3270FC8(0xD000000000000022, v12, &v32);
      *(v9 + 12) = 2112;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v14;
      *v10 = v14;
      _os_log_impl(&dword_1E323F000, v7, v8, "OpenURLHandler::%s channel lookup by adamID failed, error: %@", v9, 0x16u);
      sub_1E325F6F0(v10, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v15 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v15);
    }

    else
    {
    }

    v28 = OUTLINED_FUNCTION_63_0();
    v29(v28);
    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle);
    *v30 = 0;
    v30[1] = 0;

    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink);
    *v31 = 0;
    v31[1] = 0;
  }

  else
  {
    v16 = [v0 channelResponse];
    v17 = [v16 channelTitle];

    v18 = sub_1E4205F14();
    v20 = v19;

    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle);
    *v21 = v18;
    v21[1] = v20;

    v22 = [v0 channelResponse];
    v23 = [v22 channelLink];

    v24 = sub_1E4205F14();
    v26 = v25;

    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink);
    *v27 = v24;
    v27[1] = v26;
  }

  sub_1E3A4717C();
  sub_1E3A47770();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A47F58()
{
  OUTLINED_FUNCTION_27_2();
  *(v0 + 32) = v1;
  v4 = (type metadata accessor for VUIUTSNetworkManagerProxy() + 96);
  v5 = (*v4 + **v4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1E3A48064;

  return v5(1);
}

uint64_t sub_1E3A48064()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1E3A481CC;
  }

  else
  {

    v7 = sub_1E3A48170;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3A48170()
{
  OUTLINED_FUNCTION_24();
  sub_1E3A482B0();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3A481CC()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3280A90(0, &qword_1ECF30180);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_87_0();
    sub_1E3A482B0();

    OUTLINED_FUNCTION_54();

    return v4();
  }

  return result;
}

uint64_t sub_1E3A482B0()
{
  sub_1E3280A90(0, &qword_1EE23B1D0);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_141_0();
  v0 = OUTLINED_FUNCTION_301();
  sub_1E3B79200(v0, v1);
}

void sub_1E3A4833C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_21_16();
    v5(v4);
    v6 = v0;
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067D4();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_57_3();
      v9 = swift_slowAlloc();
      v21[0] = OUTLINED_FUNCTION_72_0();
      *v9 = 136315394;
      OUTLINED_FUNCTION_23();
      v11 = sub_1E3270FC8(0xD000000000000026, v10, v21);
      OUTLINED_FUNCTION_121_0(v11);
      if (v0)
      {
        swift_getErrorValue();
        v20[3] = v19;
        __swift_allocate_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_37_1();
        (*(v12 + 16))();
      }

      else
      {
        OUTLINED_FUNCTION_201_1();
      }

      v13 = sub_1E3294FA4(v20);
      v15 = sub_1E3270FC8(v13, v14, v21);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_1E323F000, v7, v8, "OpenURLHandler::%s subscription state refreshed, error: %s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v16 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v16);
    }

    v17 = OUTLINED_FUNCTION_57();
    v18(v17);
    sub_1E3A482B0();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A48574()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v8);
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v12);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v86 = v10;
    v85 = v1;
    v89 = v14;
    v21 = v0;
    v22 = sub_1E4205CB4();
    v23 = &v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString];
    v24 = *&v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString + 8];
    if (v24)
    {
      v25 = *v23;
      sub_1E4205F14();

      v26 = MEMORY[0x1E69E6158];
      sub_1E4207414();
      v94 = v26;
      *&v93 = v25;
      *(&v93 + 1) = v24;
      sub_1E329504C(&v93, v91);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_267();
      v22 = v90;
      sub_1E375D84C(v95);
      *v23 = 0;
      *(v23 + 1) = 0;
    }

    if (v5)
    {
      *&v93 = sub_1E4205F14();
      *(&v93 + 1) = v27;
      v28 = v5;
      sub_1E4207414();
      swift_getErrorValue();
      v94 = v92;
      __swift_allocate_boxed_opaque_existential_1(&v93);
      OUTLINED_FUNCTION_37_1();
      (*(v29 + 16))();
      sub_1E329504C(&v93, v91);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_267();
      v22 = v90;
      sub_1E375D84C(v95);
    }

    v30 = [objc_opt_self() defaultCenter];
    sub_1E37E7460(@"VUISubscribeRequestDidFinishNotification", 0, v22, v30);

    v31 = *&v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink + 8];
    v32 = v89;
    if (v31)
    {

      v84 = sub_1E324FBDC();
      v83 = *(v89 + 16);
      v83(v2);

      v33 = sub_1E41FFC94();
      v34 = sub_1E42067D4();

      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_57_3();
        v32 = swift_slowAlloc();
        v95[0] = OUTLINED_FUNCTION_72_0();
        *v32 = 136315394;
        *(v32 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
        *(v32 + 12) = 2080;
        v35 = OUTLINED_FUNCTION_291();
        *(v32 + 14) = sub_1E3270FC8(v35, v31, v36);
        _os_log_impl(&dword_1E323F000, v33, v34, "OpenURLHandler::%s redirect user to channel page: %s", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      v64 = *(v89 + 8);
      v64(v2, v21);
      OUTLINED_FUNCTION_25_25();
      v65 = [objc_opt_self() sharedInstance];
      v66 = [v65 appController];

      sub_1E41FE404();

      v67 = OUTLINED_FUNCTION_88_3();
      OUTLINED_FUNCTION_52(v67, v68, v32);
      if (v69)
      {
        sub_1E325F6F0(v88, &unk_1ECF363C0);
        (v83)(v85, v84, v21);
        v70 = sub_1E41FFC94();
        sub_1E42067F4();
        OUTLINED_FUNCTION_101_3();
        if (os_log_type_enabled(v70, v71))
        {
          OUTLINED_FUNCTION_13_13();
          v72 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v73 = swift_slowAlloc();
          v95[0] = v73;
          *v72 = 136315138;
          *(v72 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
          OUTLINED_FUNCTION_122_0();
          _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          v79 = OUTLINED_FUNCTION_19_56();
          MEMORY[0x1E69143B0](v79);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_143();
        v64(v85, v21);
      }

      else
      {
        (*(v86 + 32))(v87, v88, v32);
        if (v66)
        {
          v80 = [v66 appContext];
        }

        else
        {
          v80 = 0;
        }

        OUTLINED_FUNCTION_11_6();
        sub_1E3A40514();

        v81 = OUTLINED_FUNCTION_75();
        v82(v81);
      }
    }

    else
    {
      if (*&v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion])
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_66_4();
        v51(v3);
        v52 = sub_1E41FFC94();
        sub_1E42067D4();
        OUTLINED_FUNCTION_101_3();
        if (os_log_type_enabled(v52, v53))
        {
          OUTLINED_FUNCTION_13_13();
          v54 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v55 = swift_slowAlloc();
          v95[0] = v55;
          *v54 = 136315138;
          *(v54 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
          OUTLINED_FUNCTION_122_0();
          _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v55);
          v61 = OUTLINED_FUNCTION_19_56();
          MEMORY[0x1E69143B0](v61);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        v62 = OUTLINED_FUNCTION_32_12();
        v63(v62);
        sub_1E3A469E8(1);
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    v37 = OUTLINED_FUNCTION_101();
    v38(v37);
    v39 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_101_3();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_13_13();
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v42 = swift_slowAlloc();
      v95[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
      OUTLINED_FUNCTION_70_12();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v48 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v48);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v49 = OUTLINED_FUNCTION_16_0();
    v50(v49);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A48EB0()
{
  OUTLINED_FUNCTION_198_1();
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 switchTabHandler];

  if (v1)
  {
    OUTLINED_FUNCTION_16_0();
    v2 = sub_1E4205ED4();
    OUTLINED_FUNCTION_107_0();
    v3 = OUTLINED_FUNCTION_13_8();
    v4(v3);

    _Block_release(v1);
  }
}

id sub_1E3A48F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E4205ED4();

  if (a4)
  {
    v8 = sub_1E4205C44();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1E3A4900C()
{
  sub_1E3A496B8(&qword_1ECF310E0, type metadata accessor for AMSBuyParamProperty);
  sub_1E3A496B8(&qword_1ECF31168, type metadata accessor for AMSBuyParamProperty);

  return sub_1E4207764();
}

uint64_t sub_1E3A490C8(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311A0);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &qword_1ECF31190);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1E3A4928C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1E394CDB0(a1, a2, a3, v36);
  v34[2] = v36[0];
  v34[3] = v36[1];
  v34[4] = v36[2];
  v35 = v37;

  while (1)
  {
    sub_1E397C154(&v31);
    if (!*(&v32 + 1))
    {
      sub_1E397C6C4();
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_1E329504C(v34, v27);
    v7 = *a5;
    v9 = sub_1E375D924(&v28);
    v10 = v7[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v7[3] >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E397A924(v12, a4 & 1);
      v14 = sub_1E375D924(&v28);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(v27, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_1E375D84C(&v28);
        v17 = (v16[7] + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1E329504C(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

void sub_1E3A494D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setScheme_];
}

void sub_1E3A49558()
{
  OUTLINED_FUNCTION_50_19();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_13_8();

  sub_1E3A308DC();
}

uint64_t sub_1E3A496B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3A496FC()
{
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();

  sub_1E3A32DF0();
}

uint64_t objectdestroy_35Tm_0()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_241();
  v4(v0 + v3);

  return swift_deallocObject();
}

void sub_1E3A49974(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1E4205C44();

  [a3 presentFamilySetupScreenIfEligible:v5 checkEligibility:a2 & 1];
}

id sub_1E3A49A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_1E4205ED4();

  v9 = [a5 handleAccountSettingsEventWithUrl:a1 amsBagKey:v8 useAMSWebView:a4 & 1];

  return v9;
}

void sub_1E3A49A80(uint64_t a1, void *a2)
{
  v3 = sub_1E4206614();

  [a2 setProperties_];
}

uint64_t sub_1E3A49AF4(void *a1)
{
  v1 = [a1 documentDataSources];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23B0D0);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3A49B64(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1E4205C64();

  return v4;
}

uint64_t sub_1E3A49BE0(void *a1)
{
  v2 = [a1 adamId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E3A49C50()
{
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_281();

  sub_1E3A34CB4();
}

uint64_t sub_1E3A49DD8()
{
  v1 = sub_1E41FE414();
  OUTLINED_FUNCTION_17_2(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_1E3A35630(v3, v4, v5, v6);
}

id sub_1E3A49FB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E42062A4();

  v6 = [a3 invokeMethod:a1 withArguments:v5];

  return v6;
}

void sub_1E3A4A02C(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  [a2 setMetricsOverlay_];
}

uint64_t sub_1E3A4A0AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23B250);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1EE23B4A0, &unk_1ECF396B0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396B0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3A4A244(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1E3A4A2A8(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_1E3A4A2A8(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1E3A4A364(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void *sub_1E3A4A364(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1E37FEA14(v2, 0);

    MEMORY[0x1E6911E40](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1E4207384();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t objectdestroy_140Tm()
{
  OUTLINED_FUNCTION_194();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v1);
  v18 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);

  v7 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_117_4(v7))
  {
    OUTLINED_FUNCTION_34_34();
    v8 = OUTLINED_FUNCTION_187_0();
    v9(v8);
  }

  OUTLINED_FUNCTION_195_0();
  v11 = (((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v12 = (v6 + v4 + v11) & ~v4;
  v13 = (((v12 + v6) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  v15 = *(v3 + 8);
  v15(v0 + v11, v18);
  v15(v0 + v12, v18);

  OUTLINED_FUNCTION_192();

  return swift_deallocObject();
}

void sub_1E3A4A79C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3A3BA40();
}

uint64_t sub_1E3A4A810()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v0);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v1 = OUTLINED_FUNCTION_301();
  return sub_1E3B79200(v1, v2);
}

void sub_1E3A4A8E8()
{
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E3A3EDFC();
}

void sub_1E3A4A978()
{
  OUTLINED_FUNCTION_194();
  i = *(v1 + 16);
  if (!v3)
  {
LABEL_22:
    (i)();
    OUTLINED_FUNCTION_192();

    return;
  }

  v5 = v3;
  v6 = sub_1E32AE9B0(v3);
  if (v6 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    MEMORY[0x1E6911E60](0, v5);
LABEL_19:

    goto LABEL_22;
  }

  v7 = v6;
  v17 = i;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      goto LABEL_21;
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = OUTLINED_FUNCTION_39_3();
      v8 = MEMORY[0x1E6911E60](v12);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v0 = v8;
    v9 = [v8 mediaEntities];
    v10 = OUTLINED_FUNCTION_294();
    sub_1E3280A90(v10, &qword_1EE23B308);
    v11 = sub_1E42062B4();

    v2 = v11 >> 62 ? sub_1E4207384() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      break;
    }
  }

  v13 = [v0 mediaEntities];
  v5 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v5))
  {

LABEL_21:
    i = v17;
    goto LABEL_22;
  }

  i = v17;
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v5 + 32);
    goto LABEL_19;
  }

  __break(1u);
}

unint64_t sub_1E3A4AB54()
{
  result = qword_1ECF31198;
  if (!qword_1ECF31198)
  {
    sub_1E3280A90(255, &qword_1ECF31190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31198);
  }

  return result;
}

id sub_1E3A4ABC0()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 playMediaInfo:v1 watchType:0 isRentAndWatchNow:0];
}

void sub_1E3A4AC10()
{
  OUTLINED_FUNCTION_194();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  if (v1)
  {
    v3 = [v1 viewControllers];
    sub_1E3280A90(0, &qword_1EE23B250);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E42062B4();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E32AE9B0(v4) < 2)
  {

    OUTLINED_FUNCTION_124();
    sub_1E3A3B4EC();
LABEL_14:

    OUTLINED_FUNCTION_27_0();
    sub_1E3A38568();
    OUTLINED_FUNCTION_192();
    return;
  }

  if (!v2)
  {
    sub_1E3A3E0D0(v4);
LABEL_11:

    sub_1E3A3E0D0(v9);
    if (v1)
    {
      sub_1E3280A90(0, &qword_1EE23B250);
      OUTLINED_FUNCTION_20_2();
      v10 = sub_1E42062A4();

      [v1 setViewControllers:v10 animated:0];
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]) < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1E32AE9B0(v4);
    v6 = sub_1E32AE9B0(MEMORY[0x1E69E7CC0]);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      sub_1E3797CDC(v8);
      sub_1E3A4AE40(0, 0, v5, v4);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1E3A4ADDC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1E37EFA58(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3A4AE40(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1E3280A90(0, &qword_1EE23B250);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    goto LABEL_6;
  }

LABEL_28:
  v15 = sub_1E4207384();
LABEL_6:
  v16 = v15 - v7;
  if (__OFSUB__(v15, v7))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_1E3A4A244(v4, sub_1E3A4B098);
    goto LABEL_22;
  }

  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || &v18[8 * v16] <= v17)
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_30;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {

    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
LABEL_22:

    return;
  }

  __break(1u);
}

uint64_t sub_1E3A4B020(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1E3280A90(0, &qword_1EE23B250);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_159Tm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_183(v5))
  {
    OUTLINED_FUNCTION_37_1();
    (*(v6 + 8))(v1 + v4, v0);
  }

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

void sub_1E3A4B19C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3A38568();
}

void sub_1E3A4B208(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  if (v3 && (OUTLINED_FUNCTION_25(), swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v6 = Strong;
    v7 = v3;
    sub_1E3A3E17C();
  }

  else if (v4)
  {
    v4(a1 & 1);
  }
}

void sub_1E3A4B2A4(char a1)
{
  v2 = v1[3];
  v3 = v1[4];
  if (a1)
  {
    v4 = v1[2];
    if (v2)
    {
      v7[4] = v1[3];
      v7[5] = v3;
      OUTLINED_FUNCTION_3_4();
      v7[1] = 1107296256;
      OUTLINED_FUNCTION_26_41();
      v7[2] = v5;
      v7[3] = &block_descriptor_225;
      v6 = _Block_copy(v7);
    }

    else
    {
      v6 = 0;
    }

    [v4 performWithTargetResponder:0 completionHandler:v6];
    _Block_release(v6);
  }

  else if (v2)
  {
    v2(0);
  }
}

uint64_t sub_1E3A4B370(void *a1)
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_23();
  v4 = sub_1E4205ED4();
  v5 = [a1 objectForKeyedSubscript_];

  if (!v5)
  {
    return (v3)(0, 0);
  }

  OUTLINED_FUNCTION_23();
  v6 = sub_1E4205ED4();
  v7 = sub_1E3A49FB0(v6, MEMORY[0x1E69E7CC0], v5);

  if (!v7)
  {
LABEL_5:

    return (v3)(0, 0);
  }

  if ([v7 isUndefined])
  {

    goto LABEL_5;
  }

  v9 = sub_1E32859C4(v7, &selRef_toString);
  v3(v9);
}

uint64_t sub_1E3A4B4B4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3A47F58();
}

void sub_1E3A4B7C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  [objc_opt_self() setAnimationsEnabled_];
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v6 = v3;
  v7 = v1;

  if (v2 == 1)
  {
    v8 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = *v8;
    if (v9)
    {
      OUTLINED_FUNCTION_5_10();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = sub_1E3A4B978;
      v10[4] = v5;
      OUTLINED_FUNCTION_21();
      v12 = *(v11 + 496);
      v13 = v9;
      OUTLINED_FUNCTION_50();

      v14 = OUTLINED_FUNCTION_137_3();
      v12(v14);

      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_6();
    OUTLINED_FUNCTION_39_3();
    sub_1E3A3C778();
  }
}

void sub_1E3A4B9AC()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 280))(1);

  sub_1E3A3C474();
}

void sub_1E3A4BA18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*v5)
  {
    v6 = *v5;
    v7 = [v3 isAnimated];
    OUTLINED_FUNCTION_4_0();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x200);
    v10 = v4;
    v9(v1, v2, v7, sub_1E3A4D044, v8);
  }
}

id sub_1E3A4BB2C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 setAnimationsEnabled_];
}

uint64_t objectdestroy_275Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_194();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_8_0(v13);
  v15 = *(v14 + 64);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v17 = *(v16 + 80);
  v19 = *(v18 + 64);

  v20 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_117_4(v20))
  {
    OUTLINED_FUNCTION_34_34();
    v21 = OUTLINED_FUNCTION_187_0();
    v22(v21);
  }

  OUTLINED_FUNCTION_59_10();
  v23 = OUTLINED_FUNCTION_309();
  v17(v23);
  v24 = OUTLINED_FUNCTION_187_0();
  v17(v24);

  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_192();

  return swift_deallocObject();
}

uint64_t objectdestroy_284Tm()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t objectdestroy_294Tm()
{

  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t objectdestroy_310Tm()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t objectdestroy_313Tm()
{

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_287Tm()
{

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_297Tm()
{
  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_303Tm_0()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t objectdestroy_439Tm()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_229();

  v2 = OUTLINED_FUNCTION_46_23();
  v3(v2);

  OUTLINED_FUNCTION_191_0();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

id sub_1E3A4C17C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_144_0();
  v5 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_195_0();
  result = sub_1E32AE9B0(a3);
  if (result)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v13 = OUTLINED_FUNCTION_321();
      v7 = MEMORY[0x1E6911E60](v13);
    }

    else
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v7 = *(a3 + 32);
    }

    v8 = v7;
    v9 = [v7 toObject];

    if (v9)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
      OUTLINED_FUNCTION_77_8();
      swift_dynamicCast();
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_1E325F6F0(&v16, &unk_1ECF296E0);
LABEL_12:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1E3A333C8();
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v12 = result;

    return v12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E3A4C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_247();
  v8 = v7(v6);
  OUTLINED_FUNCTION_17_2(v8);
  v9 = OUTLINED_FUNCTION_124();
  return a5(v9);
}

uint64_t objectdestroy_455Tm()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

void sub_1E3A4C518()
{
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E3A43D18();
}

uint64_t objectdestroy_467Tm()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_229();

  v2 = OUTLINED_FUNCTION_46_23();
  v3(v2);

  OUTLINED_FUNCTION_191_0();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

void sub_1E3A4C678()
{
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  sub_1E3A44474();
}

uint64_t sub_1E3A4C730()
{
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FE414();
  v5 = *(v2 - 8);
  result = v2 - 8;
  v4 = v5;
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    sub_1E328438C(v1, v12);
    OUTLINED_FUNCTION_77_8();
    if (swift_dynamicCast())
    {
      v8 = v10;
      v9 = v11;
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    v6(v0 + v7, v8, v9, 1, 0);
  }

  return result;
}

void sub_1E3A4C83C()
{
  OUTLINED_FUNCTION_50_19();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_13_8();

  sub_1E3A3FE68();
}

void sub_1E3A4C8D0()
{
  OUTLINED_FUNCTION_50_19();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_13_8();

  sub_1E3A2FC0C();
}

uint64_t objectdestroyTm_20()
{
  OUTLINED_FUNCTION_335();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v13 = v6;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  OUTLINED_FUNCTION_232();
  v8 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_69_11();
  (*(v5 + 8))(v1 + v7, v13);

  (*(v10 + 8))(v1 + v0, v8);
  if (*(v1 + v2))
  {
  }

  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_15_36();

  return swift_deallocObject();
}

uint64_t sub_1E3A4CAC8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_9_5();
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_29_38();
  v11 = *(v3 + v8);
  v12 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = (v3 + v13);
  v15 = *v14;
  v16 = v14[1];

  return a2(v2, v3 + v6, v11, v12, v3 + v10, v15, v16);
}

uint64_t objectdestroy_269Tm()
{
  OUTLINED_FUNCTION_335();
  v12 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  OUTLINED_FUNCTION_232();
  v7 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_69_11();

  (*(v5 + 8))(v1 + v6, v12);
  (*(v9 + 8))(v1 + v0, v7);
  if (*(v1 + v2))
  {
  }

  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_15_36();

  return swift_deallocObject();
}

void sub_1E3A4CD24()
{
  OUTLINED_FUNCTION_11_14();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_53();
  sub_1E3A40D68();
}

uint64_t sub_1E3A4CE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_247();
  v5 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v5);
  v6 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v6);
  OUTLINED_FUNCTION_29_38();
  v7 = OUTLINED_FUNCTION_124();
  return a4(v7);
}

uint64_t OUTLINED_FUNCTION_117_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

unint64_t OUTLINED_FUNCTION_119_4@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3270FC8(0xD00000000000002DLL, a1 | 0x8000000000000000, (v1 - 152));
}

__n128 OUTLINED_FUNCTION_128_5()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

double OUTLINED_FUNCTION_130_5()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v1 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_176_2@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 264) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_180_1()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_182_1()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_185_0@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3270FC8(0xD000000000000024, a1 | 0x8000000000000000, (v1 - 120));
}

double OUTLINED_FUNCTION_201_1()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

void OUTLINED_FUNCTION_203_0()
{
  *(v3 - 440) = v0;
  *(v3 - 432) = v2;
  *(v3 - 424) = v1;
}

unint64_t OUTLINED_FUNCTION_214@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3270FC8(0xD00000000000001DLL, (a1 - 32) | 0x8000000000000000, (v1 - 128));
}

void OUTLINED_FUNCTION_239()
{

  JUMPOUT(0x1E69109E0);
}

id OUTLINED_FUNCTION_263(id a1, SEL a2)
{
  v6 = *(v4 - 320);

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_265()
{

  return sub_1E4207244();
}

_OWORD *OUTLINED_FUNCTION_267()
{
  *(v1 - 256) = v0;

  return sub_1E377DF14((v1 - 248), v1 - 152);
}

uint64_t OUTLINED_FUNCTION_268()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_337()
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_338()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_340()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_341()
{

  return sub_1E3A3B98C();
}

uint64_t OUTLINED_FUNCTION_342()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0xE000000000000000;

  return sub_1E42074B4();
}

uint64_t OUTLINED_FUNCTION_343()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_346(uint64_t a1, uint64_t a2)
{

  return sub_1E3B79200(v2, a2);
}

void sub_1E3A4D974()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner;
    OUTLINED_FUNCTION_5_0();
    sub_1E38B9460(v0 + v2, v5);
    v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
    v4 = v1;
    v3(v5);
  }
}

uint64_t sub_1E3A4DA28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner;
  OUTLINED_FUNCTION_5_0();
  return sub_1E38B9460(v1 + v3, a1);
}

uint64_t sub_1E3A4DA78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner;
  swift_beginAccess();
  sub_1E3A4DAE4(a1, v1 + v3);
  swift_endAccess();
  sub_1E3A4D974();
  return sub_1E3A4DB54(a1);
}

uint64_t sub_1E3A4DAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A4DB54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3A4DBBC(void *a1)
{
  v2 = v1;
  v15 = *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController] = a1;
  v3 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController;
  v4 = *&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  v5 = a1;
  if (v4)
  {
    v6 = v15;
    if (v4 == v15)
    {
      goto LABEL_14;
    }

    if (!v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  [v6 vui:0 willMoveToParentViewController:?];
  v4 = *&v3[v2];
  if (v4)
  {
LABEL_7:
    v7 = v4;
    [v2 addChildViewController_];
    v8 = [v7 vuiView];
    if (v8)
    {
      v9 = v8;
      [v8 setVuiClipsToBounds_];

      v10 = MEMORY[0x1E69E7D40];
      v11 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x1B8))();
      [v11 setVuiClipsToBounds_];

      if ([v2 view])
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for EpicInlineView();
        v12 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

        v13 = [v7 vuiView];
        (*((*v10 & *v12) + 0x210))(v13);

        if (v15)
        {
          [v15 removeFromParentViewController];
        }

        [v7 vui:v2 didMoveToParentViewController:?];

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (![v2 view])
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for EpicInlineView();
  v14 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x210))(0);
  [v15 removeFromParentViewController];
LABEL_14:
}

void sub_1E3A4DEC8()
{
  v1 = v0;
  type metadata accessor for EpicInlineView();
  v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView;
  v3 = *&v36[OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView];
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
  v7 = v3;

  v6(sub_1E3A4E2D0, v4);

  v8 = *&v36[v2];
  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *((*v5 & *v8) + 0x1C8);
  v11 = v8;

  v10(sub_1E3A4E320, v9);

  v12 = [objc_opt_self() defaultCenter];
  v13 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 sharedInstance];
  [v12 addObserver:v1 selector:sel_handleIsPlaybackUIBeingShownDidChange_ name:v15 object:v16];

  v17 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v17, v18, v19, sel_handleAppWillEnterForeground_, *MEMORY[0x1E69DDAB0]);

  v20 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v20, v21, v22, sel_handleAppDidEnterBackground_, *MEMORY[0x1E69DF7E0]);

  v23 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v23, v24, v25, sel_handleVPPAPresented_, @"VUIVPPAPresentedNotification");

  v26 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v26, v27, v28, sel_handleVPPADismissed_, @"VUIVPPADismissedNotification");

  [v1 setView_];
  if (*&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel])
  {
    type metadata accessor for Accessibility();

    sub_1E40A8408();
    v30 = v29;
    v31 = [v1 view];
    if (!v31)
    {
      __break(1u);
      goto LABEL_14;
    }

    v32 = v31;
    if (v30)
    {
      v33 = sub_1E4205ED4();
    }

    else
    {
      v33 = 0;
    }

    [v32 setVuiAccessibilityIdentifier_];
  }

  if ([objc_opt_self() isPad])
  {
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 setVuiClipsToBounds_];

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
}

void sub_1E3A4E2D0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong addChildViewController_];
  }
}

void sub_1E3A4E320(void *a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      [a1 vui:Strong didMoveToParentViewController:?];
    }
  }
}

id sub_1E3A4E3C0(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, sel_vui_willMoveToParentViewController_, a1);
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor];
  if (a1)
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 304);

    v6(v7);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }
}

id sub_1E3A4E500(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v45 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v43 = v12;
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v50.receiver = v2;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, sel_vui_viewDidAppear_, a1 & 1);
  v16 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor])
  {
    result = [v2 view];
    if (!result)
    {
      goto LABEL_18;
    }

    v18 = result;
    while (1)
    {
      v19 = v18;
      v18 = [v18 superview];

      if (!v18)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for ScrollViewVisibilityMonitor();
        v20 = v18;
        OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        v21 = sub_1E414F9CC();
        result = [v2 view];
        if (!result)
        {
          goto LABEL_19;
        }

        v22 = result;
        OUTLINED_FUNCTION_4_0();
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v24 + 288))(v22, v25 & 1, sub_1E3A50DF4, v23);

        OUTLINED_FUNCTION_36();
        (*(v26 + 304))();

        *&v2[v16] = v21;

        break;
      }
    }
  }

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v27 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  v48 = sub_1E3A4EAA4;
  v49 = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  v47 = &block_descriptor_46;
  v29 = _Block_copy(aBlock);
  v30 = v2;
  OUTLINED_FUNCTION_6_19();

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v10, v29);
  _Block_release(v29);

  (*(v45 + 8))(v10, v5);
  (*(v43 + 8))(v15, v44);
  v31 = &v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner];
  result = OUTLINED_FUNCTION_5_0();
  if (!*(v31 + 24))
  {
    goto LABEL_11;
  }

  sub_1E327F454(v31, aBlock);
  v32 = v47;
  v33 = v48;
  __swift_project_boxed_opaque_existential_1(aBlock, v47);
  result = [v2 view];
  if (result)
  {
    v34 = result;
    [result frame];
    v36 = v35;
    v38 = v37;

    (*(*(*(v33 + 1) + 8) + 24))(v32, 0.0, 0.0, v36, v38);
    result = __swift_destroy_boxed_opaque_existential_1(aBlock);
LABEL_11:
    v39 = *&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel];
    if (!v39 || !*(v31 + 24))
    {
      return result;
    }

    sub_1E327F454(v31, aBlock);
    v40 = v47;
    v41 = v48;
    __swift_project_boxed_opaque_existential_1(aBlock, v47);

    result = [v2 view];
    if (result)
    {
      v42 = result;
      (*(*(*(v41 + 1) + 8) + 56))(result, v39, v40);

      return __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}