uint64_t sub_1E3F7DED4(void *a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 432))();
  if (v3)
  {

    return -1;
  }

  else
  {

    return [a1 presentationStyle];
  }
}

void sub_1E3F7DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  LODWORD(v269) = v24;
  v256 = v25;
  v26 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v263 = v31 - v30;
  OUTLINED_FUNCTION_138();
  v264 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v262 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v261 = v35 - v34;
  OUTLINED_FUNCTION_138();
  v259 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v258 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v40 = (v39 - v38);
  v268 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v260 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v43);
  v267 = &v241 - v44;
  OUTLINED_FUNCTION_138();
  v45 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_6();
  v266 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v241 - v59;
  OUTLINED_FUNCTION_26_3();
  v62 = (*((*MEMORY[0x1E69E7D40] & v61) + 0x1C8))();
  if (!v62)
  {
    goto LABEL_6;
  }

  v63 = v62;
  v251 = v28;
  v253 = v20;
  OUTLINED_FUNCTION_1_13();
  v65 = (*(v64 + 928))();
  if (!v65)
  {

    goto LABEL_6;
  }

  v66 = v65;
  v248 = v26;
  v67 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
  swift_beginAccess();
  if (*(&v63->isa + v67))
  {

LABEL_6:
    if (v269)
    {
      v68 = sub_1E324FBDC();
      (*(v47 + 16))(v21, v68, v45);
      v69 = sub_1E41FFC94();
      v70 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v70))
      {
        v71 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v71);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v72, v73, v74, v75, v76, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      (*(v47 + 8))(v21, v45);
    }

LABEL_40:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v244 = v67;
  v252 = v47;
  v250 = v45;
  v249 = v66;
  v247 = v63;
  OUTLINED_FUNCTION_1_13();
  v78 = (*(v77 + 632))();
  v79 = 0;
  v80 = *(v78 + 16);
  v81 = v78 + 32;
  v82 = &qword_1ECF2F0F0;
  while (1)
  {
    if (v80 == v79)
    {
LABEL_16:

      v82 = &selRef_setWaitingForTransactionToStart_;
      v83 = [objc_opt_self() sharedInstance];
      v246 = [v83 isPlaybackUIBeingShown];

      OUTLINED_FUNCTION_26_3();
      v85 = (*((*MEMORY[0x1E69E7D40] & v84) + 0x1B8))();
      v86 = sub_1E374E8E4(v85, 2);
      v87 = *(*v249 + 952);

      v245 = v87(v88);

      v89 = v253;
      v90 = [v253 presentedViewController];
      v47 = MEMORY[0x1E69E7CC0];
      if (v90)
      {
      }

      else
      {
        v91 = [objc_opt_self() sharedInstance];
        v92 = [v91 isPurchaseInProgress];

        if (!v92)
        {
          if (!v86)
          {
            v117 = 0;
            v118 = 0;
            goto LABEL_29;
          }

          if (v80 == v79 || v246)
          {
            goto LABEL_50;
          }

          v117 = 0;
LABEL_46:
          OUTLINED_FUNCTION_45();
          if ((*(v137 + 480))() & 1) != 0 || (v245)
          {
            goto LABEL_27;
          }

          if (v117)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_45();
          if (((*(v138 + 504))() & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_50:
          v117 = 0;
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_45();
      if (((*(v93 + 504))() & 1) == 0)
      {
        v243 = v86;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_36_64();
        v94 = v250;
        v95(v60);
        v96 = sub_1E41FFC94();
        v97 = sub_1E4206814();
        if (OUTLINED_FUNCTION_161(v97))
        {
          v98 = OUTLINED_FUNCTION_125_0();
          *v98 = 0;
          OUTLINED_FUNCTION_136();
          _os_log_impl(v99, v100, v101, v102, v98, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v252 + 8))(v60, v94);
        OUTLINED_FUNCTION_39();
        (*((*MEMORY[0x1E69E7D40] & v103) + 0x200))(1);
        sub_1E3280A90(0, &qword_1EE23B1D0);
        v242 = sub_1E4206A04();
        v104 = v257;
        sub_1E4204004();
        *v40 = 5;
        (*(v258 + 104))(v40, *MEMORY[0x1E69E7F48], v259);
        MEMORY[0x1E690E9C0](v104, v40);
        v105 = OUTLINED_FUNCTION_55_39();
        v106(v105);
        v260 = *(v260 + 8);
        (v260)(v104, v268);
        OUTLINED_FUNCTION_4_0();
        v107 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v275 = sub_1E3F81478;
        v276 = v107;
        OUTLINED_FUNCTION_15_123();
        *(&v272 + 1) = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v273 = v108;
        v274 = &block_descriptor_12_3;
        v109 = _Block_copy(&v272);

        v110 = v261;
        sub_1E4203FE4();
        *&v272 = v47;
        sub_1E37E7A8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
        OUTLINED_FUNCTION_47();
        sub_1E328FCF4(v111, v112);
        OUTLINED_FUNCTION_31_79();
        v89 = v253;
        sub_1E42072E4();
        v113 = v267;
        v114 = OUTLINED_FUNCTION_55_39();
        v115 = v242;
        MEMORY[0x1E69112E0](v114);
        _Block_release(v109);

        v116 = v47;
        v47 = MEMORY[0x1E69E7CC0];
        (*(v251 + 8))(v116, &unk_1E429B000);
        (*(v262 + 8))(v110, v264);
        (v260)(v113, v268);
        v82 = &selRef_setWaitingForTransactionToStart_;
        LOBYTE(v86) = v243;
      }

      if (!v86)
      {
        v118 = 0;
        v117 = 1;
        goto LABEL_29;
      }

      if (v80 == v79 || (v246 & 1) != 0)
      {
LABEL_26:
        v117 = 1;
LABEL_27:
        v118 = 1;
LABEL_29:
        if (v269)
        {
          LODWORD(v269) = v117;
          sub_1E324FBDC();
          OUTLINED_FUNCTION_36_64();
          v119 = v265;
          v120(v265);
          v121 = v89;
          v122 = sub_1E41FFC94();
          v123 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v123))
          {
            v124 = OUTLINED_FUNCTION_106_18();
            *v124 = 67110656;
            *(v124 + 4) = v118;
            *(v124 + 8) = 1024;
            *(v124 + 10) = v119;
            *(v124 + 14) = 1024;
            *(v124 + 16) = v246;
            *(v124 + 20) = 1024;
            v125 = MEMORY[0x1E69E7D40];
            *(v124 + 22) = (*((*MEMORY[0x1E69E7D40] & *v121) + 0x1E0))() & 1;

            *(v124 + 26) = 1024;
            *(v124 + 28) = v245 & 1;
            *(v124 + 32) = 1024;
            *(v124 + 34) = v269;
            *(v124 + 38) = 1024;
            *(v124 + 40) = (*((*v125 & *v121) + 0x1F8))() & 1;

            _os_log_impl(&dword_1E323F000, v122, v123, "    RootSplitViewController:: account message: post animated sidebar opening: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v124, 0x2Cu);
            v119 = v265;
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_63_32();
            OUTLINED_FUNCTION_107_11();
          }

          else
          {

            OUTLINED_FUNCTION_63_32();
            v122 = v247;
          }

          OUTLINED_FUNCTION_15_5();
          v135 = v119;
        }

        else
        {
          sub_1E324FBDC();
          OUTLINED_FUNCTION_36_64();
          v126 = v266;
          v127(v266);
          v128 = v89;
          v129 = sub_1E41FFC94();
          v130 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v130))
          {
            v131 = v117;
            v132 = OUTLINED_FUNCTION_106_18();
            *v132 = 67110656;
            *(v132 + 4) = v118;
            *(v132 + 8) = 1024;
            *(v132 + 10) = v126;
            *(v132 + 14) = 1024;
            *(v132 + 16) = v246;
            *(v132 + 20) = 1024;
            v133 = MEMORY[0x1E69E7D40];
            *(v132 + 22) = (*((*MEMORY[0x1E69E7D40] & *v128) + 0x1E0))() & 1;

            *(v132 + 26) = 1024;
            *(v132 + 28) = v245 & 1;
            *(v132 + 32) = 1024;
            *(v132 + 34) = v131;
            *(v132 + 38) = 1024;
            v126 = v266;
            *(v132 + 40) = (*((*v133 & *v128) + 0x1F8))() & 1;

            _os_log_impl(&dword_1E323F000, v129, v130, "    RootSplitViewController:: account message: can't show message because:\n    mode is sidebar = %{BOOL}d, have items besides library = %{BOOL}d,\n    is playback happening = %{BOOL}d, sidebar opening in progress = %{BOOL}d,\n    waiting for UM update = %{BOOL}d, something presented overtop = %{BOOL}d,\n    waiting for presentation dismissal = %{BOOL}d", v132, 0x2Cu);
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_63_32();
            OUTLINED_FUNCTION_107_11();
          }

          else
          {

            OUTLINED_FUNCTION_63_32();
            v129 = v247;
          }

          OUTLINED_FUNCTION_15_5();
          v135 = v126;
        }

        v136 = &v277;
        goto LABEL_39;
      }

      v117 = 1;
      goto LABEL_46;
    }

    if (v79 >= *(v78 + 16))
    {
      break;
    }

    sub_1E327F454(v81, &v272);
    sub_1E3251BE8(&v272, &v277);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    type metadata accessor for LibrarySidebarItem();
    if (!swift_dynamicCast())
    {
      goto LABEL_16;
    }

    ++v79;

    v81 += 40;
  }

  __break(1u);
LABEL_53:
  v139 = [objc_opt_self() v82[64]];
  v140 = [v139 accountMessageConfig];

  v141 = type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  v142 = v247;
  v143 = sub_1E375D4BC();
  if (!v143)
  {
    v277 = 0u;
    v278 = 0u;
    goto LABEL_58;
  }

  v270 = sub_1E4205F14();
  v271 = v144;

  sub_1E4207414();
  sub_1E375D7E8(&v272, v143, &v277);

  sub_1E375D84C(&v272);
  if (!*(&v278 + 1))
  {
LABEL_58:
    sub_1E325F7FC(&v277, &unk_1ECF296E0);
    if (v143)
    {
      goto LABEL_59;
    }

    v277 = 0u;
    v278 = 0u;
    v145 = 1;
    goto LABEL_64;
  }

  if (OUTLINED_FUNCTION_105_14())
  {
    v145 = v272;
    goto LABEL_60;
  }

LABEL_59:
  v145 = 1;
LABEL_60:
  v270 = sub_1E4205F14();
  v271 = v146;

  sub_1E4207414();
  sub_1E375D7E8(&v272, v143, &v277);

  sub_1E375D84C(&v272);
  if (!*(&v278 + 1))
  {
LABEL_64:
    sub_1E325F7FC(&v277, &unk_1ECF296E0);
    goto LABEL_65;
  }

  if (OUTLINED_FUNCTION_105_14())
  {
    v147 = v272;
    goto LABEL_66;
  }

LABEL_65:
  v147 = 1;
LABEL_66:
  LODWORD(v268) = v147;
  v148 = v47;
  if ([v140 alwaysForceOpenSidebarAnimated])
  {
    v149 = 1;
  }

  else
  {
    v150 = [v140 alwaysForceOpenSidebarNonAnimated];
    v149 = (v150 ^ 1) & v145 & v256;
  }

  OUTLINED_FUNCTION_44_59();
  v152 = [v141 v151] == 3 || objc_msgSend(v141, sel_displayMode) == 2;
  OUTLINED_FUNCTION_21();
  if ((*(v153 + 328))())
  {

    if (v269)
    {
      v154 = sub_1E324FBDC();
      v155 = v252;
      v156 = v254;
      v157 = v250;
      (*(v252 + 16))(v254, v154, v250);
      v158 = sub_1E41FFC94();
      v159 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v159))
      {
        v160 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v160);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v161, v162, v163, v164, v165, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      (*(v155 + 8))(v156, v157);
      goto LABEL_40;
    }

LABEL_82:
    OUTLINED_FUNCTION_63_32();
    goto LABEL_40;
  }

  v267 = v140;
  if (v269)
  {
    v166 = v252;
    if (!v152)
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v167 = OUTLINED_FUNCTION_70_28();
      v168(v167);
      v169 = sub_1E41FFC94();
      v170 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v170))
      {
        v171 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v171);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v172, v173, v174, v175, v176, 2u);
        OUTLINED_FUNCTION_51_2();
      }

      (*(v166 + 8))(v148, v142);
      OUTLINED_FUNCTION_68_5();
      v177 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_21();
      v179 = (*(v178 + 232))();
      goto LABEL_102;
    }

LABEL_86:

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v186 = OUTLINED_FUNCTION_70_28();
    v187(v186);
    v188 = v148;
    v189 = sub_1E41FFC94();
    v190 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v190))
    {
      v191 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v191);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v192, v193, v194, v195, v196, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    (*(v166 + 8))(v148, v142);
LABEL_89:
    OUTLINED_FUNCTION_68_5();
    v197 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    (*(v198 + 232))();
    OUTLINED_FUNCTION_7_5();
    v200 = v247;
    (*((*v197 & v199) + 0x168))(v247, 1);

    OUTLINED_FUNCTION_63_32();
    *(&v200->isa + v244) = 1;

    goto LABEL_40;
  }

  v180 = sub_1E324FBDC();
  v181 = v255;
  v269 = *(v252 + 16);
  v269(v255, v180, v250);
  v182 = sub_1E41FFC94();
  v183 = sub_1E4206814();
  if (OUTLINED_FUNCTION_6_33(v183))
  {
    v184 = swift_slowAlloc();
    *v184 = 67109632;
    *(v184 + 4) = v145;
    *(v184 + 8) = 1024;
    *(v184 + 10) = v149;
    *(v184 + 14) = 1024;
    *(v184 + 16) = v268;
    _os_log_impl(&dword_1E323F000, v182, v181, "    RootSplitViewController:: account message: present opening sidebar = %{BOOL}d,\n    animating sidebar open = %{BOOL}d, animating message in = %{BOOL}d", v184, 0x14u);
    OUTLINED_FUNCTION_6_0();
  }

  v166 = v252;
  v142 = (v252 + 8);
  v177 = *(v252 + 8);
  v185 = OUTLINED_FUNCTION_61_28(&v281);
  v177(v185);
  if (v152)
  {
    goto LABEL_86;
  }

  v201 = MEMORY[0x1E69E7D40];
  if (!v145)
  {

    OUTLINED_FUNCTION_44_59();
    OUTLINED_FUNCTION_1_13();
    v179 = (*(v223 + 232))();
LABEL_102:
    v224 = OUTLINED_FUNCTION_83_19();
    v225(v224);

    OUTLINED_FUNCTION_63_32();
    OUTLINED_FUNCTION_86_17();

    goto LABEL_40;
  }

  v202 = v177;
  if ((v268 & 1) == 0)
  {
    OUTLINED_FUNCTION_44_59();
    OUTLINED_FUNCTION_1_13();
    (*(v203 + 232))();
    OUTLINED_FUNCTION_7_5();
    v204 = OUTLINED_FUNCTION_83_19();
    v205(v204);

    OUTLINED_FUNCTION_86_17();
  }

  OUTLINED_FUNCTION_44_59();
  OUTLINED_FUNCTION_1_13();
  if ((*(v206 + 408))())
  {
    sub_1E324FBDC();
    v207 = OUTLINED_FUNCTION_65_34(&v279);
    v208(v207);
    v209 = sub_1E41FFC94();
    v210 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v210))
    {
      v211 = OUTLINED_FUNCTION_125_0();
      *v211 = 0;
      _os_log_impl(&dword_1E323F000, v209, v181, "RootSplitViewController:: clearing user preferred display mode due to account message", v211, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v212 = OUTLINED_FUNCTION_61_28(&v279);
    v202(v212);
    OUTLINED_FUNCTION_44_59();
    OUTLINED_FUNCTION_26_3();
    (*((*v201 & v213) + 0x1A0))(0);
    [v181 setPreferredDisplayMode_];
  }

  if (v149)
  {

    (*((*v201 & *v253) + 0x1E8))(1);
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v214 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v215 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v216 = swift_allocObject();
    *(v216 + 16) = v215;
    *(v216 + 24) = v268;
    *(v216 + 25) = v256 & 1;
    v275 = sub_1E3F81468;
    v276 = v216;
    OUTLINED_FUNCTION_15_123();
    *(&v272 + 1) = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v273 = v217;
    v274 = &block_descriptor_8_3;
    v218 = _Block_copy(&v272);

    v219 = v261;
    sub_1E4203FE4();
    *&v272 = v148;
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v220, v221);
    OUTLINED_FUNCTION_31_79();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v219, v149, v218);

    _Block_release(v218);
    OUTLINED_FUNCTION_63_32();
    OUTLINED_FUNCTION_107_11();

    OUTLINED_FUNCTION_15_5();
    v222(v149, &unk_1E429B000);
    OUTLINED_FUNCTION_15_5();
    v135 = v219;
    v136 = &a17;
LABEL_39:
    v134(v135, *(v136 - 32));
    goto LABEL_40;
  }

  v226 = [v253 vuiView];
  if (v226)
  {
    v227 = v226;

    v188 = [v227 window];

    if (v188)
    {
      v228 = [v188 windowScene];

      if (v228)
      {
        v188 = [v228 interfaceOrientation];

        if (UIDeviceOrientationIsLandscape(v188))
        {
          v229 = 2;
          goto LABEL_110;
        }

        if (UIInterfaceOrientationIsPortrait(v188))
        {
          v229 = 3;
LABEL_110:
          [v253 setPreferredDisplayMode_];
        }
      }
    }

    sub_1E324FBDC();
    v230 = OUTLINED_FUNCTION_65_34(v280);
    v231(v230);
    v232 = sub_1E41FFC94();
    v233 = sub_1E4206814();
    if (OUTLINED_FUNCTION_6_33(v233))
    {
      v234 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v234);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v235, v236, v237, v238, v239, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v240 = OUTLINED_FUNCTION_61_28(v280);
    v202(v240);
    if (!v268)
    {
      OUTLINED_FUNCTION_107_11();

      goto LABEL_82;
    }

    goto LABEL_89;
  }

  __break(1u);
}

void sub_1E3F7F9FC()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_101();
    v4(v3);
    v5 = sub_1E41FFC94();
    v6 = sub_1E4206814();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v7);
      OUTLINED_FUNCTION_108_12(&dword_1E323F000, v5, v6, "RootSplitViewController:: account message: dispatch timer ended, attempting to present");
      OUTLINED_FUNCTION_21_0();
    }

    v8 = OUTLINED_FUNCTION_16_0();
    v9(v8);
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v10) + 0x200))(0);
    sub_1E3F7DFAC(1, 0);
  }
}

void sub_1E3F7FB94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v62 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v59 = v6;
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v57 = v8 - v7;
  OUTLINED_FUNCTION_138();
  v58 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v56 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v53 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v61 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v55 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v51 - v23;
  OUTLINED_FUNCTION_138();
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    [Strong showColumn_];
  }

  if (v62)
  {
    LODWORD(v52) = v3;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v30(v0);
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v32))
    {
      v33 = OUTLINED_FUNCTION_125_0();
      v51 = v13;
      *v33 = 0;
      _os_log_impl(&dword_1E323F000, v31, v32, "RootSplitViewController:: animating sidebar open, will try to present account message in 0.5s", v33, 2u);
      v13 = v51;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v26 + 8))(v0, v24);
    LOBYTE(v3) = v52;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
    goto LABEL_10;
  }

  v35 = v34;
  v36 = [v34 vuiView];

  if (v36)
  {
    [v36 setUserInteractionEnabled_];

LABEL_10:
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v52 = sub_1E4206A04();
    sub_1E4204004();
    *v19 = 500;
    (*(v15 + 104))(v19, *MEMORY[0x1E69E7F38], v53);
    v37 = v54;
    MEMORY[0x1E690E9C0](v1, v19);
    v38 = OUTLINED_FUNCTION_13_8();
    v39(v38);
    v55 = *(v55 + 8);
    (v55)(v1, v61);
    OUTLINED_FUNCTION_4_0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = v62 & 1;
    *(v42 + 25) = v3 & 1;
    v63[4] = sub_1E3F81480;
    v63[5] = v42;
    OUTLINED_FUNCTION_15_123();
    v63[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v63[2] = v43;
    v63[3] = &block_descriptor_19_4;
    v44 = _Block_copy(v63);

    sub_1E4203FE4();
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v45, v46);
    v47 = v57;
    v48 = v60;
    v49 = v60;
    sub_1E42072E4();
    OUTLINED_FUNCTION_90_2();
    MEMORY[0x1E69112E0]();
    _Block_release(v44);

    (*(v59 + 8))(v47, v48);
    OUTLINED_FUNCTION_15_5();
    v50(v13, v58);
    (v55)(v37, v61);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3F80188()
{
  OUTLINED_FUNCTION_31_1();
  v132 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v121 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v121 - v19;
  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  OUTLINED_FUNCTION_19_3();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_44;
  }

  v22 = v21;
  v127 = v1;
  v125 = v10;
  OUTLINED_FUNCTION_21();
  v23 += 57;
  v24 = *v23;
  v25 = v23;

  v130 = v24;
  v131 = v0;
  v129 = v25;
  v27 = (v24)(v26);
  v124 = v16;
  if (v27)
  {
    v28 = v27;
    v29 = sub_1E3A517DC();
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*v22 + 896);

  v32 = v30(v31);

  v34 = (v130)(v33);
  if (v34)
  {
    v35 = v34;
    v36 = v32;
    v37 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    HIDWORD(v128) = v35[v37];
    v32 = v36;
  }

  else
  {
    HIDWORD(v128) = 0;
  }

  v38 = v29;
  if (!v32)
  {
    if (!v29)
    {

      goto LABEL_44;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v65(v7);
    v66 = sub_1E41FFC94();
    v67 = sub_1E4206814();
    if (os_log_type_enabled(v66, v67))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_103_12(&dword_1E323F000, v68, v69, "RootSplitViewController:: account message: removed");
      OUTLINED_FUNCTION_6_0();
    }

    v70 = OUTLINED_FUNCTION_13_8();
    v71(v70);
    v72 = v131;
    OUTLINED_FUNCTION_26_3();
    v73 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & v74) + 0x1D0))(0);
    OUTLINED_FUNCTION_21();
    (*(v75 + 232))();
    OUTLINED_FUNCTION_7_5();
    (*((*v73 & v76) + 0x168))(0, 1);

LABEL_37:

    goto LABEL_44;
  }

  v39 = sub_1E324FBDC();
  v40 = v3;
  v41 = *(v3 + 16);
  v126 = v32;
  v123 = v39;
  if (v38 && v32 == v38)
  {
    v42 = v132;
    v43 = v41;
    v41(v13, v39, v132);
    v44 = sub_1E41FFC94();
    v45 = sub_1E4206814();
    if (OUTLINED_FUNCTION_161(v45))
    {
      v46 = OUTLINED_FUNCTION_125_0();
      *v46 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v47, v48, v49, v50, v46, 2u);
      v42 = v132;
      OUTLINED_FUNCTION_6_0();
    }

    v51 = *(v40 + 8);
    v51(v13, v42);
    if ((v128 & 0x100000000) == 0)
    {
      v43(v125, v123, v42);
      v52 = sub_1E41FFC94();
      v53 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v53))
      {
        v54 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v54);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_108_12(v55, v56, v57, v58);
        OUTLINED_FUNCTION_21_0();
      }

      v51(v125, v42);
      sub_1E3F7DFAC(1, 0, v59, v60, v61, v62, v63, v64, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
    }

LABEL_43:

    goto LABEL_44;
  }

  v121 = v41;
  v122 = v3 + 16;
  v41(v20, v39, v132);
  v77 = sub_1E41FFC94();
  v78 = sub_1E4206814();
  if (OUTLINED_FUNCTION_161(v78))
  {
    v79 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v79);
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_108_12(v80, v81, v82, v83);
    OUTLINED_FUNCTION_21_0();
  }

  v84 = *(v3 + 8);
  v85 = v132;
  v125 = (v3 + 8);
  v84(v20, v132);
  if (v38)
  {
    v121(v127, v123, v85);
    v86 = sub_1E41FFC94();
    v87 = sub_1E4206814();
    if (OUTLINED_FUNCTION_161(v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 67109120;
      *(v88 + 4) = HIDWORD(v128);
      OUTLINED_FUNCTION_136();
      _os_log_impl(v89, v90, v91, v92, v88, 8u);
      OUTLINED_FUNCTION_21_0();
    }

    v84(v127, v85);
  }

  else
  {
    HIDWORD(v128) = 0;
  }

  v93 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v94 = v130();
  v134 = 0;
  memset(v133, 0, sizeof(v133));
  v95 = sub_1E39C4090(v22, v94, v133);

  sub_1E325F7FC(v133, &qword_1ECF296C0);
  v96 = v126;
  if (!v95)
  {

    goto LABEL_37;
  }

  type metadata accessor for AccountMessageViewController();
  v97 = swift_dynamicCastClass();
  if (v97)
  {
    v98 = v97;
    v99 = v131;
    v100 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v102 = *(v101 + 464);
    v103 = v95;
    v104 = v102(v98);
    v105 = v99;
    v106 = (v130)(v104);
    if (v106)
    {
      v107 = v106;
      sub_1E3A51794(0);
    }

    if ((v128 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_154();
      (*(v108 + 232))();
      OUTLINED_FUNCTION_7_5();
      (*((*v100 & v109) + 0x168))(v98, 1);
    }

    else
    {

      v110 = v132;
      v121(v124, v123, v132);
      v111 = sub_1E41FFC94();
      v112 = sub_1E4206814();
      if (os_log_type_enabled(v111, v112))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_103_12(&dword_1E323F000, v113, v114, "RootSplitViewController:: account message: did update, attempting to present");
        v110 = v132;
        OUTLINED_FUNCTION_6_0();
      }

      v84(v124, v110);
      sub_1E3F7DFAC(1, 0, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
    }

    goto LABEL_43;
  }

LABEL_44:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F80A30()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_101();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_100();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_1E4206E64();
    v9 = sub_1E3270FC8(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1E323F000, v3, v4, "UnifiedMessaging::didUpdate newSize %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  v10 = OUTLINED_FUNCTION_16_0();
  return v11(v10);
}

uint64_t sub_1E3F80C24()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_101();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "UnifiedMessaging::didFailWithError", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v6 = OUTLINED_FUNCTION_16_0();
  return v7(v6);
}

void sub_1E3F80DAC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v68 = v4;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v69 = v6;
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v67 = v8 - v7;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v66 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v65 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v20 = sub_1E324FBDC();
  v21 = *(v11 + 16);
  v71 = v20;
  v72 = v21;
  (v21)(v19);
  v22 = v3;
  v23 = sub_1E41FFC94();
  v24 = sub_1E42067E4();

  v25 = &selRef_needsAdamIdToCanonicalIdConversion;
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412546;
    *(v26 + 4) = v22;
    *v27 = v22;
    *(v26 + 12) = 2112;
    v28 = [v22 originalRequest];
    *(v26 + 14) = v28;
    v27[1] = v28;
    _os_log_impl(&dword_1E323F000, v23, v24, "UnifiedMessaging::Action dialogResult: %@, request: %@", v26, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_51_2();
    v25 = &selRef_needsAdamIdToCanonicalIdConversion;
    OUTLINED_FUNCTION_6_0();
  }

  v29 = OUTLINED_FUNCTION_16_0();
  v73 = v30;
  (v30)(v29);
  [v1 dismissViewControllerAnimated:1 completion:0];
  v31 = [v22 v25[138]];
  v32 = [v22 selectedActionIdentifier];
  v33 = sub_1E4205F14();
  v35 = v34;

  v36 = sub_1E3A7C950(v33, v35, v31);
  if (!v36)
  {
    v45 = v66;
    v72(v66, v71, v9);
    v46 = v22;
    v47 = sub_1E41FFC94();
    v48 = sub_1E42067E4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_6_21();
      v50 = OUTLINED_FUNCTION_100();
      v74 = v50;
      *v49 = 136315138;
      v51 = [v46 selectedActionIdentifier];
      sub_1E4205F14();

      v52 = OUTLINED_FUNCTION_39_0();
      v55 = sub_1E3270FC8(v52, v53, v54);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_1E323F000, v47, v48, "UnifiedMessaging::Action Could not find action for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    v56 = v45;
    goto LABEL_12;
  }

  v37 = [v36 deepLink];
  if (!v37)
  {
    v57 = v65;
    v72(v65, v71, v9);
    v58 = sub_1E41FFC94();
    v59 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_161(v59))
    {
      v60 = OUTLINED_FUNCTION_125_0();
      *v60 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v61, v62, v63, v64, v60, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v56 = v57;
LABEL_12:
    v73(v56, v9);
    goto LABEL_13;
  }

  v38 = v37;
  v39 = v67;
  sub_1E41FE3C4();

  v40 = _s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  v41 = *v40;
  OUTLINED_FUNCTION_38();
  sub_1E3B60024();

  v42 = *v40;
  nullsub_1(v43, v44);

  (*(v69 + 8))(v39, v70);
LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F81310(uint64_t a1, char a2, void *a3)
{
  sub_1E3280A90(0, &qword_1EE23B250);
  v5 = sub_1E42062A4();

  [a3 setViewControllers:v5 animated:a2 & 1];
}

void sub_1E3F813A4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8))(0);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = OUTLINED_FUNCTION_106();
    sub_1E3F7D644(v2);
  }
}

void sub_1E3F81480()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong vuiView];

    if (!v5)
    {
      __break(1u);
      return;
    }

    [v5 setUserInteractionEnabled_];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1E8))(0);
  }

  if (v1)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_1E3F7DFAC(v2, 1);
    }
  }
}

void sub_1E3F815B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  v6 = OUTLINED_FUNCTION_101();
  v7(v6);
  v8 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];
  v9 = *(v1 + 16);
  v10 = v8;
  v11 = OUTLINED_FUNCTION_114_0();
  v12 = v9(v11);
  sub_1E37FB7F0(v12, v13, v10, &selRef_setVuiViewControllerIdentifier_);
  [v10 setMaxNavControllerStackDepth_];
  v14 = *(v1 + 8);
  v15 = OUTLINED_FUNCTION_114_0();
  v16 = v14(v15);
  sub_1E37FB7F0(v16, v17, v10, &selRef_setTitle_);
  v18 = [v10 tabBarItem];
  if (v18)
  {
    v19 = v18;
    v20 = OUTLINED_FUNCTION_114_0();
    v21 = v14(v20);
    sub_1E37FB7F0(v21, v22, v19, &selRef_setTitle_);

    v23 = [v10 tabBarItem];
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_114_0();
      v26 = sub_1E395DF10(v24, v25);
      [v23 setImage_];

      [v10 vui:*(v3 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager) addControllerObserver:?];
      v27 = OUTLINED_FUNCTION_16_0();
      v28(v27);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void OUTLINED_FUNCTION_103_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_106_18()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_107_11()
{
  v2 = *(v0 - 440);
}

void OUTLINED_FUNCTION_108_12(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_1E3F818F0()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(* + 1696);
  v3 = *v2();
  (*(v3 + 1808))(3);

  v5 = (v2)(v4);
  sub_1E39537A8();
  v26[0] = v6;
  v26[1] = v7;
  v26[2] = v8;
  v26[3] = v9;
  v27 = 0;
  (*(*v5 + 560))(v26);

  v11 = (v2)(v10);
  v12.n128_u64[0] = 0.5;
  v24[0] = j__OUTLINED_FUNCTION_7_78(v12);
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v25 = 0;
  (*(*v11 + 1856))(v24);

  v17 = (v2)(v16);
  v18 = *sub_1E3E60CFC();
  v19 = *(*v17 + 1832);
  v20 = v18;
  v19(v18);

  v22 = (*(*v1 + 1696))(v21);
  sub_1E3C37CBC(v22, 39);

  return v1;
}

id sub_1E3F81BB8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel;
  *&v2[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout] = 0;
  *&v2[v4] = a1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for LeagueStandingsLegendItem();

  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);

  return v5;
}

uint64_t sub_1E3F81C84(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems;

  *(v1 + v2) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout) = 0;

  type metadata accessor for LeagueStandingsLegendItem();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1E3F81D34(uint64_t a1, void *a2)
{
  if (!(*(*a1 + 392))())
  {
    return 0;
  }

  type metadata accessor for LeagueStandingsLegendItemLayout();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  if (a2 && (type metadata accessor for LeagueStandingsLegendItem(), (v6 = swift_dynamicCastClass()) != 0))
  {
    v7 = v6;
    v8 = a2;
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for LeagueStandingsLegendItem());

    v7 = sub_1E3F81BB8(v10, 0);
  }

  *&v7[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout] = v5;

  *&v7[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_viewModel] = a1;

  v11 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems;
  swift_beginAccess();
  v41 = v11;
  v12 = *&v7[v11];
  v13 = *(v12 + 16);

  v14 = 0;
  v15 = 32;
  while (v13 != v14)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);

      __break(1u);
      return result;
    }

    ++v14;
    [*(v12 + v15) removeFromSuperview];
    v15 += 16;
  }

  *&v7[v41] = MEMORY[0x1E69E7CC0];

  v17 = (*(*a1 + 488))(v16);
  if (v17)
  {
    v42 = v5;
    *&v43[0] = sub_1E3B892B8(v17);
    sub_1E3F8271C(v43);
    v40 = 0;

    v18 = *&v43[0];
    v19 = sub_1E32AE9B0(*&v43[0]);
    v20 = 0;
    v21 = v18 & 0xC000000000000001;
    while (v19 != v20)
    {
      if (v21)
      {
        v22 = MEMORY[0x1E6911E60](v20, v18);
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_43;
        }

        v22 = *(v18 + 8 * v20 + 32);
      }

      if (__OFADD__(v20, 1))
      {
        goto LABEL_42;
      }

      if (sub_1E373F6E0())
      {
        v23 = v19;
        type metadata accessor for LeagueStandingsLegendIndicatorView();
        v24 = sub_1E3D21A5C();
        v25 = *v42;
        if (v24)
        {
          v26 = (*(v25 + 1760))();
        }

        else
        {
          v26 = (*(v25 + 1736))();
        }

        v30 = v26;

        v31 = sub_1E3D20E14(v22, 0, v30);

        if (v31)
        {
          OUTLINED_FUNCTION_2_226();
          v32 = v31;

          sub_1E3F83324();
          OUTLINED_FUNCTION_1_265();
          OUTLINED_FUNCTION_0_303();
          LODWORD(v33) = 1144750080;
          [v32 setContentHuggingPriority:0 forAxis:v33];
          LODWORD(v34) = 1144750080;
          [v32 setContentCompressionResistancePriority:0 forAxis:v34];
        }

        else
        {
        }

        v19 = v23;
        v21 = v18 & 0xC000000000000001;
      }

      else
      {
        type metadata accessor for UIFactory();
        v27 = sub_1E373C4DC();
        memset(v43, 0, sizeof(v43));
        v44 = 0;
        v28 = sub_1E393D92C(v22, 0, v43, 0, v27);
        sub_1E373C624(v43);
        if (v28)
        {
          [v28 setIsAccessibilityElement_];
          OUTLINED_FUNCTION_2_226();

          v29 = v28;
          sub_1E3F83324();
          OUTLINED_FUNCTION_1_265();
          OUTLINED_FUNCTION_0_303();
        }
      }

      ++v20;
    }
  }

  else
  {
    v40 = 0;
  }

  v35 = *&v7[v41];
  v36 = *(v35 + 16);

  v37 = 0;
  v38 = 32;
  while (v36 != v37)
  {
    if (v37 >= *(v35 + 16))
    {
      goto LABEL_41;
    }

    ++v37;
    [v7 addSubview_];
    v38 += 16;
  }

  return v7;
}

void sub_1E3F82274(char a1, double a2, double a3)
{
  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_layout];
  if (v5)
  {
    v45.receiver = v4;
    v45.super_class = type metadata accessor for LeagueStandingsLegendItem();

    objc_msgSendSuper2(&v45, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
    v9 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendItem_stackItems;
    swift_beginAccess();
    v10 = *(*&v4[v9] + 16);
    if (v10)
    {
      v11 =  + 40;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = a2;
      do
      {
        v14 = *(*v11 + 98);
        v15 = *(v11 - 8);

        if (sub_1E38504C4(v14))
        {
          [v15 vui:v13 sizeThatFits:0.0];
        }

        else
        {
          [v15 vui:a1 & 1 layoutSubviews:a2 computationOnly:a3];
        }

        v18 = v16;
        v19 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1E385A4A0(0, v12[2] + 1, 1, v12);
        }

        v21 = v12[2];
        v20 = v12[3];
        if (v21 >= v20 >> 1)
        {
          v12 = sub_1E385A4A0((v20 > 1), v21 + 1, 1, v12);
        }

        v12[2] = v21 + 1;
        v22 = &v12[3 * v21];
        *(v22 + 4) = v15;
        v22[5] = v18;
        *(v22 + 6) = v19;
        if (v13 - v18 < 0.0)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = v13 - v18;
        }

        v11 += 16;
        --v10;
      }

      while (v10);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(*v5 + 1152);

    v23(v24);
    v25 = v12[2];
    v26 = 0.0;
    v27 = 5;
    for (i = v25; i; --i)
    {
      v26 = v26 + *&v12[v27];
      v27 += 3;
    }

    v29 = 0.0;
    v30 = 6;
    v31 = v12[2];
    if (v25)
    {
      do
      {
        if (v29 <= *&v12[v30])
        {
          v29 = *&v12[v30];
        }

        v30 += 3;
        --v31;
      }

      while (v31);
    }

    if (!v25 || (a1 & 1) != 0)
    {
LABEL_34:
    }

    else
    {
      v32 = 0;
      v33 = v25 - 1;
      v34 = (v12 + 6);
      v35 = 0.0;
      while (v32 < v25)
      {
        v37 = *(v34 - 1);
        v36 = *v34;
        v38 = (v29 - *v34) * 0.5;
        v39 = *(v34 - 2);
        v40 = [v39 setFrame_];
        v41 = v35 + v37;
        v42 = COERCE_DOUBLE((v23)(v40));
        v44 = v43;

        if (v44)
        {
          if (v33 == v32)
          {
            goto LABEL_34;
          }

          v35 = v41 + 0.0;
        }

        else
        {
          if (v33 == v32)
          {
            goto LABEL_34;
          }

          v35 = v41 + v42;
        }

        v25 = v12[2];
        v34 += 3;
        ++v32;
      }

      __break(1u);
    }
  }
}

id sub_1E3F82690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeagueStandingsLegendItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3F8271C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3F82798(v6);
  return sub_1E4207554();
}

uint64_t sub_1E3F82798(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_1E4207914();
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1E39623D8(v3 / 2);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_1E3F829CC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_1E3F82878(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1E3F82878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1E3742F1C();
    v7 = v5 - v4;
    v8 = (v6 + 8 * v4);
    while (2)
    {
      v16 = v7;
      v17 = v4;
      v15 = v8;
      v9 = v7;
      do
      {
        sub_1E4206254();
        sub_1E4206254();
        if (v20 == v18 && v21 == v19)
        {
        }

        else
        {
          v11 = sub_1E42079A4();

          if ((v11 & 1) == 0)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v8;
        *v8 = *(v8 - 1);
        *--v8 = v12;
      }

      while (!__CFADD__(v9++, 1));
      v4 = v17 + 1;
      v7 = v16 - 1;
      v8 = v15 + 1;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3F829CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        result = sub_1E373F6E0();
        v9 = result;
        for (i = v7 + 2; i < v4; ++i)
        {
          sub_1E3742F1C();
          sub_1E4206254();
          sub_1E4206254();
          if (v92 == v90 && v93 == v91)
          {

            if ((v9 & 1) == 0)
            {
              v8 = i;
              goto LABEL_28;
            }
          }

          else
          {
            v12 = sub_1E42079A4();

            if ((v9 ^ v12))
            {
              v8 = i;
              goto LABEL_15;
            }
          }
        }

        v8 = v4;
LABEL_15:
        if (v9)
        {
          if (v8 < v7)
          {
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
            return result;
          }

          if (v7 < v8)
          {
            if (v4 >= i)
            {
              v13 = i;
            }

            else
            {
              v13 = v4;
            }

            v14 = 8 * v13 - 8;
            v15 = 8 * v7;
            v16 = v8;
            v17 = v7;
            do
            {
              if (v17 != --v16)
              {
                v18 = *a3;
                if (!*a3)
                {
                  goto LABEL_142;
                }

                v19 = *(v18 + v15);
                *(v18 + v15) = *(v18 + v14);
                *(v18 + v14) = v19;
              }

              ++v17;
              v14 -= 8;
              v15 += 8;
            }

            while (v17 < v16);
          }
        }
      }

LABEL_28:
      v20 = a3[1];
      if (v8 < v20)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_134;
        }

        if (v8 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_135;
          }

          if (v7 + a4 >= v20)
          {
            v21 = a3[1];
          }

          else
          {
            v21 = (v7 + a4);
          }

          if (v21 < v7)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (v8 != v21)
          {
            v80 = v6;
            v22 = *a3;
            sub_1E3742F1C();
            v82 = v7;
            v23 = v7 - v8;
            v24 = (v22 + 8 * v8);
            v84 = v21;
            do
            {
              v86 = v8;
              v25 = v24;
              v26 = v23;
              do
              {
                sub_1E4206254();
                sub_1E4206254();
                if (v92 == v90 && v93 == v91)
                {
                }

                else
                {
                  v28 = sub_1E42079A4();

                  if ((v28 & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v22)
                {
                  goto LABEL_139;
                }

                v29 = *v25;
                *v25 = *(v25 - 1);
                *--v25 = v29;
              }

              while (!__CFADD__(v26++, 1));
              ++v8;
              --v23;
              ++v24;
            }

            while ((v86 + 1) != v84);
            v8 = v84;
            v6 = v80;
            v7 = v82;
          }
        }
      }

      if (v8 < v7)
      {
        goto LABEL_133;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v32 = *(v6 + 16);
      v31 = *(v6 + 24);
      v33 = v32 + 1;
      v87 = v8;
      if (v32 >= v31 >> 1)
      {
        result = sub_1E37FFF70((v31 > 1), v32 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v33;
      v34 = v6 + 32;
      v35 = (v6 + 32 + 16 * v32);
      *v35 = v7;
      v35[1] = v8;
      v85 = *v83;
      if (!*v83)
      {
        goto LABEL_143;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = (v34 + 16 * (v33 - 1));
          v38 = (v6 + 16 * v33);
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = *(v6 + 32);
            v40 = *(v6 + 40);
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_71:
            if (v42)
            {
              goto LABEL_120;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_123;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_126;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_128;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          if (v33 < 2)
          {
            goto LABEL_122;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_86:
          if (v57)
          {
            goto LABEL_125;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_127;
          }

          if (v64 < v56)
          {
            goto LABEL_100;
          }

LABEL_93:
          if (v36 - 1 >= v33)
          {
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
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_140;
          }

          v68 = (v34 + 16 * (v36 - 1));
          v69 = *v68;
          v70 = (v34 + 16 * v36);
          v71 = v70[1];
          sub_1E3F83064((*a3 + 8 * *v68), (*a3 + 8 * *v70), (*a3 + 8 * v71), v85);
          if (v89)
          {
          }

          if (v71 < v69)
          {
            goto LABEL_115;
          }

          v8 = v6;
          v6 = *(v6 + 16);
          if (v36 > v6)
          {
            goto LABEL_116;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v36 >= v6)
          {
            goto LABEL_117;
          }

          v33 = v6 - 1;
          result = memmove((v34 + 16 * v36), v70 + 2, 16 * (v6 - 1 - v36));
          *(v8 + 16) = v6 - 1;
          v72 = v6 > 2;
          v6 = v8;
          if (!v72)
          {
            goto LABEL_100;
          }
        }

        v43 = v34 + 16 * v33;
        v44 = *(v43 - 64);
        v45 = *(v43 - 56);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_118;
        }

        v48 = *(v43 - 48);
        v47 = *(v43 - 40);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_119;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_121;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_124;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_132;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_71;
      }

LABEL_100:
      v5 = v87;
      v4 = a3[1];
      if (v87 >= v4)
      {
        goto LABEL_103;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_103:
  v8 = *v83;
  if (!*v83)
  {
    goto LABEL_144;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_137:
    result = sub_1E37FFF5C(v6);
    v6 = result;
  }

  v73 = (v6 + 16);
  v74 = *(v6 + 16);
  while (v74 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_141;
    }

    v75 = v6;
    v76 = (v6 + 16 * v74);
    v6 = *v76;
    v77 = &v73[2 * v74];
    v78 = v77[1];
    sub_1E3F83064((*a3 + 8 * *v76), (*a3 + 8 * *v77), (*a3 + 8 * v78), v8);
    if (v89)
    {
      break;
    }

    if (v78 < v6)
    {
      goto LABEL_129;
    }

    if (v74 - 2 >= *v73)
    {
      goto LABEL_130;
    }

    *v76 = v6;
    v76[1] = v78;
    v79 = *v73 - v74;
    if (*v73 < v74)
    {
      goto LABEL_131;
    }

    v74 = *v73 - 1;
    result = memmove(v77, v77 + 2, 16 * v79);
    *v73 = v74;
    v6 = v75;
  }
}

uint64_t sub_1E3F83064(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v17 = v7;
        goto LABEL_48;
      }

      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      v13 = v26 == v24 && v27 == v25;
      if (v13)
      {
        break;
      }

      v14 = sub_1E42079A4();

      if (v14)
      {
        goto LABEL_21;
      }

      v15 = v4;
      v13 = v7 == v4;
      v4 += 8;
      if (!v13)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 8;
    }

LABEL_21:
    v15 = v6;
    v13 = v7 == v6;
    v6 += 8;
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    *v7 = *v15;
    goto LABEL_23;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
LABEL_30:
  v17 = v6;
  for (v5 -= 8; v11 > v4 && v6 > v7; v5 -= 8)
  {
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v26 == v24 && v27 == v25)
    {

LABEL_45:
      v6 -= 8;
      if (v5 + 8 != v17)
      {
        *v5 = *v6;
      }

      goto LABEL_30;
    }

    v20 = sub_1E42079A4();

    if (v20)
    {
      goto LABEL_45;
    }

    if (v11 != v5 + 8)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 8;
  }

LABEL_48:
  v21 = (v11 - v4) / 8;
  if (v17 != v4 || v17 >= &v4[8 * v21])
  {
    memmove(v17, v4, 8 * v21);
  }

  return 1;
}

void *sub_1E3F83324()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3DA7FD4(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3F83370(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E3DA7FD4((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1E3F83404(void *a1)
{
  v2 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = a1;
  v12 = sub_1E4205334();
  v16[4] = &type metadata for SportsRunningClockLocalization;
  v16[5] = sub_1E376DC98();

  sub_1E4205394();
  v13 = sub_1E42056A4();
  sub_1E4205044();

  (*(v4 + 104))(v8, *MEMORY[0x1E69D3B78], v2);
  LOBYTE(v13) = sub_1E3823168();
  v14 = *(v4 + 8);
  v14(v8, v2);
  v14(v10, v2);
  if ((v13 & 1) == 0)
  {
  }

  sub_1E4205364();

  return v12;
}

uint64_t sub_1E3F835FC()
{
  v0 = sub_1E42053E4();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

id SportsRunningClockLocalization.hasSeparatorGlyph.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    sub_1E3797E30(0xD000000000000021, 0x80000001E428B0B0, result);

    OUTLINED_FUNCTION_9_169();
    sub_1E32822E0();
    v2 = sub_1E4207254();

    return (v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SportsRunningClockLocalization.localizedString(key:)(uint64_t a1)
{
  v3 = sub_1E4205344();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v3, v7);
  LODWORD(result) = (*(v5 + 88))(v9, v3);
  if (result != *MEMORY[0x1E69D3A70])
  {
    if (result == *MEMORY[0x1E69D3A68])
    {
      v17 = OUTLINED_FUNCTION_7_203();
      v18(v17);
      v3 = *v9;
      v9 = *(v9 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_5_212(inited, xmmword_1E4297BE0);
      v76 = sub_1E4205CB4();
      v20 = [objc_opt_self() sharedInstance];
      if (v20)
      {
        v21 = v20;
        OUTLINED_FUNCTION_7_13();
        sub_1E3797E30(v22 + 20, v23 | 0x8000000000000000, v21);
        OUTLINED_FUNCTION_49_4();

        if (a1)
        {
          OUTLINED_FUNCTION_1_266();
          if (v3)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0);
              OUTLINED_FUNCTION_14_163();

              OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198();
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v1 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_44;
        }

LABEL_45:

        return 0;
      }

      __break(1u);
LABEL_101:
      (*(v5 + 8))(v9, v3);
      return 0;
    }

    if (result == *MEMORY[0x1E69D3A90])
    {
      v24 = OUTLINED_FUNCTION_7_203();
      v25(v24);
      v26 = *v9;
      v9 = *(v9 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      v27 = swift_initStackObject();
      OUTLINED_FUNCTION_5_212(v27, xmmword_1E4297BE0);
      v76 = sub_1E4205CB4();
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v28 = result;
        OUTLINED_FUNCTION_7_13();
        sub_1E3797E30(v29 + 15, v30 | 0x8000000000000000, v28);
        OUTLINED_FUNCTION_49_4();

        if (a1)
        {
          OUTLINED_FUNCTION_1_266();
          if (v26)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0);
              OUTLINED_FUNCTION_14_163();

              OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198();
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v1 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_44;
        }

        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_103;
    }

    if (result == *MEMORY[0x1E69D3A80])
    {
      v31 = OUTLINED_FUNCTION_7_203();
      v32(v31);
      v33 = *v9;
      v34 = *(v9 + 8);
      v9 = TVAppFeature.isEnabled.getter(10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_1E4297BE0;
      *(v35 + 32) = 0x4065726F63734040;
      *(v35 + 40) = 0xE900000000000040;
      *(v35 + 48) = v33;
      *(v35 + 56) = v34;
      v76 = sub_1E4205CB4();
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v36 = result;
        v37 = "TV.Scores.Shootout.PENS";
        if (v9)
        {
          v37 = "TV.Scores.Shootout.Pens";
        }

        v38 = v37 - 32;
        sub_1E3797E30(0xD000000000000017, (v37 - 32) | 0x8000000000000000, result);
        OUTLINED_FUNCTION_49_4();

        if (v34)
        {
          OUTLINED_FUNCTION_1_266();
          if (v38)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0);
              OUTLINED_FUNCTION_14_163();

              OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198();
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v1 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_44;
        }

        goto LABEL_45;
      }

LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (result == *MEMORY[0x1E69D3AD0] || result == *MEMORY[0x1E69D3A98])
    {
      v39 = OUTLINED_FUNCTION_7_203();
      v40(v39);
      OUTLINED_FUNCTION_7_13();
      sub_1E3F844B8(v41);
      OUTLINED_FUNCTION_49_4();
      return v9;
    }

    if (result == *MEMORY[0x1E69D3A60])
    {
      v42 = OUTLINED_FUNCTION_7_203();
      v43(v42);
      v44 = *v9;
      v45 = *(v9 + 8);
      v46 = *(v9 + 16);
      v47 = *(v9 + 24);
      v9 = objc_opt_self();
      result = [v9 sharedInstance];
      if (result)
      {
        v48 = result;
        OUTLINED_FUNCTION_7_13();
        v51 = sub_1E3797E30(v49 + 15, v50 | 0x8000000000000000, v48);
        v53 = v52;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
        v54 = swift_initStackObject();
        *(v54 + 16) = xmmword_1E4297BD0;
        *(v54 + 32) = 0x616E6964726F4040;
        *(v54 + 40) = 0xEB0000000040406CLL;
        *(v54 + 48) = v44;
        *(v54 + 56) = v45;
        OUTLINED_FUNCTION_9_169();
        v55[8] = v56;
        v55[9] = v57;
        v55[10] = 47042;
        v55[11] = 0xA200000000000000;
        v55[12] = 0x406B636F6C634040;
        v55[13] = 0xE900000000000040;
        v55[14] = v46;
        v55[15] = v47;
        result = [v9 sharedInstance];
        if (result)
        {
          v58 = result;
          if (v53)
          {
            v59 = v51;
          }

          else
          {
            v53 = 0xE000000000000000;
            v59 = 0;
          }

          sub_1E3797E30(v59, v53, v58);
          OUTLINED_FUNCTION_49_4();

          OUTLINED_FUNCTION_1_266();
          if (v51)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_304(0);
              OUTLINED_FUNCTION_14_163();

              OUTLINED_FUNCTION_3_229();
              OUTLINED_FUNCTION_6_198();
              OUTLINED_FUNCTION_8_180();
            }
          }

          while (v45 > 1)
          {
            OUTLINED_FUNCTION_13_165();
          }

          goto LABEL_44;
        }

        goto LABEL_105;
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (result == *MEMORY[0x1E69D3AA0])
    {
      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69D3AE0])
    {
      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v9 = result;
      v64 = "TV.Scores.Halftime";
    }

    else
    {
      if (result != *MEMORY[0x1E69D3AD8])
      {
        if (result == *MEMORY[0x1E69D3AB8])
        {
          result = [objc_opt_self() sharedInstance];
          if (!result)
          {
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          v62 = OUTLINED_FUNCTION_11_169();
          v63 = v68 | 0xEF6C616E69460000;
        }

        else
        {
          if (result != *MEMORY[0x1E69D3AB0])
          {
            if (result != *MEMORY[0x1E69D3AE8])
            {
              if (result == *MEMORY[0x1E69D3A78])
              {
                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_112:
                  __break(1u);
                  goto LABEL_113;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v62 = v70 + 6;
              }

              else if (result == *MEMORY[0x1E69D3A88])
              {
                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_113:
                  __break(1u);
                  goto LABEL_114;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v62 = v71 + 7;
              }

              else if (result == *MEMORY[0x1E69D3AF0])
              {
                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_114:
                  __break(1u);
                  goto LABEL_115;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v62 = v72 | 1;
              }

              else
              {
                if (result != *MEMORY[0x1E69D3AA8])
                {
                  if (result == *MEMORY[0x1E69D3AF8])
                  {
                    result = [objc_opt_self() sharedInstance];
                    if (result)
                    {
                      v9 = result;
LABEL_85:
                      OUTLINED_FUNCTION_7_13();
                      v62 = v74 + 11;
                      goto LABEL_50;
                    }

                    goto LABEL_116;
                  }

                  if (result == *MEMORY[0x1E69D3AC8])
                  {
                    result = [objc_opt_self() sharedInstance];
                    if (!result)
                    {
LABEL_117:
                      __break(1u);
                      goto LABEL_118;
                    }

                    v9 = result;
                    v75 = "TV.Sports.GameState.Forfeit";
                  }

                  else
                  {
                    if (result == *MEMORY[0x1E69D3B00])
                    {
                      result = [objc_opt_self() sharedInstance];
                      if (result)
                      {
LABEL_49:
                        v9 = result;
                        OUTLINED_FUNCTION_7_13();
                        v62 = v61 + 10;
                        goto LABEL_50;
                      }

                      __break(1u);
                    }

                    if (result != *MEMORY[0x1E69D3AC0])
                    {
                      goto LABEL_97;
                    }

                    result = [objc_opt_self() sharedInstance];
                    if (!result)
                    {
LABEL_118:
                      __break(1u);
                      goto LABEL_119;
                    }

                    v9 = result;
                    v75 = "TV.Sports.GameState.Delayed";
                  }

                  v60 = v75 - 32;
                  v62 = 0xD00000000000001BLL;
                  goto LABEL_50;
                }

                result = [objc_opt_self() sharedInstance];
                if (!result)
                {
LABEL_115:
                  __break(1u);
LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }

                v9 = result;
                OUTLINED_FUNCTION_7_13();
                v62 = v73 | 0xC;
              }

LABEL_50:
              v63 = v60 | 0x8000000000000000;
              goto LABEL_58;
            }

            result = [objc_opt_self() sharedInstance];
            if (!result)
            {
LABEL_111:
              __break(1u);
              goto LABEL_112;
            }

            v9 = result;
            v64 = "TV.Scores.Overtime";
            goto LABEL_57;
          }

          result = [objc_opt_self() sharedInstance];
          if (!result)
          {
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          v62 = OUTLINED_FUNCTION_11_169();
          v63 = v69 | 0xED0000646E450000;
        }

LABEL_58:
        v65 = sub_1E3797E30(v62, v63, v9);
        v67 = v66;

        if (v67)
        {
          return v65;
        }

        else
        {
          return 0;
        }
      }

      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v9 = result;
      v64 = "TV.Scores.Fulltime";
    }

LABEL_57:
    v63 = (v64 - 32) | 0x8000000000000000;
    v62 = 0xD000000000000012;
    goto LABEL_58;
  }

  v11 = OUTLINED_FUNCTION_7_203();
  v12(v11);
  v3 = *v9;
  v9 = *(v9 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v13 = swift_initStackObject();
  OUTLINED_FUNCTION_5_212(v13, xmmword_1E4297BE0);
  v76 = sub_1E4205CB4();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v14 = result;
    OUTLINED_FUNCTION_7_13();
    sub_1E3797E30(v15 + 17, v16 | 0x8000000000000000, v14);
    OUTLINED_FUNCTION_49_4();

    if (a1)
    {
      OUTLINED_FUNCTION_1_266();
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_304(0);
          OUTLINED_FUNCTION_14_163();

          OUTLINED_FUNCTION_3_229();
          OUTLINED_FUNCTION_6_198();
          OUTLINED_FUNCTION_8_180();
        }
      }

      while (v1 > 1)
      {
        OUTLINED_FUNCTION_13_165();
      }

LABEL_44:

      return v9;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_97:
  if (result != *MEMORY[0x1E69D3B08])
  {
    goto LABEL_101;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v9 = result;
    goto LABEL_85;
  }

LABEL_119:
  __break(1u);
  return result;
}

id sub_1E3F844B8(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_10_151();
      v1 = 0x74737269462ELL;
      goto LABEL_33;
    case 2:
      OUTLINED_FUNCTION_10_151();
      v1 = 0x646E6F6365532ELL;
      goto LABEL_19;
    case 3:
      OUTLINED_FUNCTION_10_151();
      v1 = 0x64726968542ELL;
      goto LABEL_33;
    case 4:
      OUTLINED_FUNCTION_10_151();
      v8 = 0x7472756F462ELL;
      goto LABEL_17;
    case 5:
      OUTLINED_FUNCTION_10_151();
      v6 = 1718175278;
      goto LABEL_32;
    case 6:
      OUTLINED_FUNCTION_10_151();
      v6 = 2020168494;
      goto LABEL_32;
    case 7:
      OUTLINED_FUNCTION_10_151();
      v5 = 0x6E657665532ELL;
      goto LABEL_26;
    case 8:
      OUTLINED_FUNCTION_10_151();
      v8 = 0x74686769452ELL;
LABEL_17:
      v1 = v8 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
LABEL_19:
      v3 = 0xE700000000000000;
      goto LABEL_47;
    case 9:
      OUTLINED_FUNCTION_10_151();
      v6 = 1852395054;
      goto LABEL_32;
    case 10:
      OUTLINED_FUNCTION_10_151();
      v6 = 1852134446;
LABEL_32:
      v1 = v6 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
LABEL_33:
      v3 = 0xE600000000000000;
      goto LABEL_47;
    case 11:
      OUTLINED_FUNCTION_10_151();
      v1 = 0x746E6576656C452ELL;
      v3 = 0xE900000000000068;
      goto LABEL_47;
    case 12:
      OUTLINED_FUNCTION_10_151();
      v5 = 0x666C6577542ELL;
LABEL_26:
      v1 = v5 & 0xFFFFFFFFFFFFLL | 0x6874000000000000;
      v3 = 0xE800000000000000;
      goto LABEL_47;
    case 13:
      OUTLINED_FUNCTION_10_151();
      v1 = 0x656974726968542ELL;
      goto LABEL_29;
    case 14:
      OUTLINED_FUNCTION_10_151();
      v9 = 0x7472756F462ELL;
      goto LABEL_28;
    case 15:
      OUTLINED_FUNCTION_10_151();
      v4 = 1718175278;
      goto LABEL_14;
    case 16:
      OUTLINED_FUNCTION_10_151();
      v4 = 2020168494;
LABEL_14:
      v1 = v4 | 0x6E65657400000000;
      goto LABEL_46;
    case 17:
      OUTLINED_FUNCTION_10_151();
      v1 = 0x65746E657665532ELL;
      v3 = 0xEC00000068746E65;
      goto LABEL_47;
    case 18:
      OUTLINED_FUNCTION_10_151();
      v9 = 0x74686769452ELL;
      goto LABEL_28;
    case 19:
      OUTLINED_FUNCTION_10_151();
      v9 = 0x74656E694E2ELL;
LABEL_28:
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
LABEL_29:
      v3 = 0xEB0000000068746ELL;
      goto LABEL_47;
    case 20:
      OUTLINED_FUNCTION_10_151();
      v13 = 0x746E6577542ELL;
      goto LABEL_45;
    case 21:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v10 = 0x7473726946;
      goto LABEL_42;
    case 22:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v11 = 0x646E6F636553;
      goto LABEL_39;
    case 23:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v10 = 0x6472696854;
      goto LABEL_42;
    case 24:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v2 = 1920298822;
      goto LABEL_38;
    case 25:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v7 = 1952868678;
      goto LABEL_41;
    case 26:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v7 = 1954048339;
      goto LABEL_41;
    case 27:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v3 = 0xEF68746E65766553;
      goto LABEL_47;
    case 28:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v2 = 1751607621;
LABEL_38:
      v11 = v2 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
LABEL_39:
      v3 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      goto LABEL_47;
    case 29:
      OUTLINED_FUNCTION_10_151();
      v1 = OUTLINED_FUNCTION_2_227();
      v7 = 1953392974;
LABEL_41:
      v10 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
LABEL_42:
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      goto LABEL_47;
    case 30:
      OUTLINED_FUNCTION_10_151();
      v13 = 0x74726968542ELL;
LABEL_45:
      v1 = v13 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
LABEL_46:
      v3 = 0xEA00000000006874;
LABEL_47:
      MEMORY[0x1E69109E0](v1, v3);
      v12 = v18;
      if (!v19)
      {
        return v12;
      }

      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v15 = result;
        v12 = sub_1E3797E30(v18, v19, result);
        v17 = v16;

        if (!v17)
        {
          return 0;
        }

        return v12;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      return 0;
  }
}

uint64_t type metadata accessor for SportsRunningClockViewModel()
{
  result = qword_1EE294650;
  if (!qword_1EE294650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F8494C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI12HintListCell_layout;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3F849E4()
{
  v1 = OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F84A18(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3F84AA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView];
  }

  else
  {
    v4 = v0;
    OUTLINED_FUNCTION_21();
    if ((*(v5 + 120))())
    {
      OUTLINED_FUNCTION_30();
      v7 = (*(v6 + 1728))();
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
    if (v7)
    {
      v9 = *(*v7 + 1944);

      v11 = v9(v10);
    }

    else
    {
      v11 = 0;
    }

    sub_1E3280A90(0, &qword_1EE23AE00);
    v12 = OUTLINED_FUNCTION_3_230();
    v14 = sub_1E3F84CDC(v12, v13, v11);
    [v8 setImage_];
    if (v7)
    {
      v15 = *(*v7 + 672);

      v17 = v15(v16);
    }

    else
    {
      v17 = 0;
    }

    [v8 _setTintColor_];

    v18 = [v4 vuiContentView];
    [v18 addSubview_];

    v19 = *&v4[v1];
    *&v4[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v20 = v2;
  return v3;
}

id sub_1E3F84CDC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

id sub_1E3F84D5C()
{
  v1 = OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView];
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 vuiContentView];
    [v5 addSubview_];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3F84E08(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v52 = sub_1E41FFCB4();
  v4 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - v11;
  OUTLINED_FUNCTION_21();
  v14 = *(v13 + 120);
  v53 = v2;
  if (v14())
  {
    OUTLINED_FUNCTION_30();
    v16 = (*(v15 + 1704))();
  }

  else
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_18();
  v17 = sub_1E3C287F4(v16);

  if (v17)
  {
    v18 = [v17 string];
    v19 = sub_1E4205F14();
    v21 = v20;

    v50 = v19;
    v56 = v19;
    v57 = v21;
    v54 = a1;
    v55 = v51;
    v22 = sub_1E41FE6C4();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v22);
    sub_1E32822E0();
    v23 = sub_1E4207234();
    v51 = v24;
    LOBYTE(v18) = v25;
    v26 = sub_1E3F863D8(v12);
    if (v18)
    {

      v27 = sub_1E324FBDC();
      v28 = v52;
      (*(v4 + 16))(v9, v27, v52);
      v29 = sub_1E41FFC94();
      v30 = sub_1E4206814();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1E323F000, v29, v30, "HintListCell: query does not exist in hint provided", v31, 2u);
        MEMORY[0x1E69143B0](v31, -1, -1);
      }

      (*(v4 + 8))(v9, v28);
      sub_1E3F85430(v17);
    }

    else
    {
      if ((v14)(v26) && (OUTLINED_FUNCTION_30(), (*(v37 + 1704))(), v38 = OUTLINED_FUNCTION_30_6(), v39 = (*(*v4 + 864))(v38), , v39))
      {
        v40 = v23;
      }

      else
      {
        v40 = v23;
        v39 = *sub_1E3E5FD88();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35760);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v42 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      *(inited + 40) = v39;
      type metadata accessor for Key(0);
      sub_1E3280A90(0, &qword_1EE23AE20);
      sub_1E3B9794C(&qword_1EE23B100);
      v43 = v42;
      v44 = v39;
      v45 = sub_1E4205CB4();
      v46 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      sub_1E3C28388(v45);

      v47 = sub_1E4205C44();

      v56 = v40;
      v57 = v51;
      v54 = v50;
      v55 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3B0);
      sub_1E3F86440();
      v48 = sub_1E4207044();
      [v46 addAttributes:v47 range:{v48, v49}];

      sub_1E3F85430(v46);
    }
  }

  else
  {
    v32 = sub_1E324FBDC();
    v33 = v52;
    (*(v4 + 16))(v6, v32, v52);
    v34 = sub_1E41FFC94();
    v35 = sub_1E4206814();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1E323F000, v34, v35, "HintListCell: no value provided in hint text view model, cannot get attributed string", v36, 2u);
      MEMORY[0x1E69143B0](v36, -1, -1);
    }

    (*(v4 + 8))(v6, v33);
  }
}

void sub_1E3F85430(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v16 = *&v1[OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel];
  v6 = v5();
  if (v6)
  {
    v7 = v6;
    sub_1E3280A90(0, &qword_1EE23AD40);
    v8 = *(*(*v7 + 1704))();
    v9 = (*(v8 + 2408))();

    v10 = *&v1[v4];
    v11 = v10;
    v12 = a1;
    v13 = sub_1E3889680(a1, v9, v10);
    v14 = *&v2[v4];
    *&v2[v4] = v13;
    v15 = v13;

    [v2 vui:v15 addSubview:v16 oldView:?];
  }
}

id sub_1E3F855D0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator) = 1;
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel);
  v6 = type metadata accessor for HintListCell();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  [v4 setAutoresizingMask_];
  return v4;
}

void sub_1E3F85688()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI12HintListCell_shouldShowBottomSeparator) = 1;
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel);
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3F85734(char a1, double a2, double a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 120);
  if (!v9() || (OUTLINED_FUNCTION_30(), (*(v10 + 176))(v60), v11 = *v60, v12 = *&v60[1], v13 = *&v60[2], v14 = *&v60[3], , (v61 & 1) != 0))
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v15 = sub_1E3952BE0(v11, v12, v13, v14);
  v16 = sub_1E3F84AA8();
  [v16 vui:a2 sizeThatFits:a3];
  v56 = v17;
  v57 = v18;

  v19 = 0.0;
  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v20 + 1728))();
    v21 = OUTLINED_FUNCTION_30_6();
    (*(*v4 + 152))(&v62, v21);
  }

  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v22 + 1728))();
    v23 = OUTLINED_FUNCTION_30_6();
    (*(*v4 + 152))(v63, v23);
    v24 = *v63;
    v25 = *&v63[1];
    v26 = *&v63[2];
    v27 = *&v63[3];

    if ((v64 & 1) == 0)
    {
      v19 = sub_1E3952BE0(v24, v25, v26, v27);
    }
  }

  v28 = v9();
  v29 = 0.0;
  v30 = 0.0;
  if (v28)
  {
    OUTLINED_FUNCTION_30();
    (*(v31 + 1704))();
    v32 = OUTLINED_FUNCTION_30_6();
    (*(*v4 + 152))(v65, v32);

    v30 = *&v65[3];
    if (v66)
    {
      v30 = 0.0;
    }
  }

  v33 = OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel;
  v34 = *(v5 + OBJC_IVAR____TtC8VideosUI12HintListCell_titleLabel);
  if (v34)
  {
    v35 = a2 - v15 - (v56 + v19 + v30);
    v36 = v34;
    v37 = 0.0;
    if ((v9)([v36 sizeThatFits_]))
    {
      OUTLINED_FUNCTION_30();
      v39 = (*(v38 + 1704))();

      (*(*v39 + 152))(v67, v40);

      if (v68)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v67[0];
      }
    }

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v42 = (*(v41 + 1704))();

      (*(*v42 + 152))(v69, v43);

      if (v70)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = *&v69[2];
      }
    }

    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      [v36 bottomMarginWithBaselineMargin_];
    }

    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      sub_1E3C8B6B4(0, v37);
    }

    v72.origin.x = OUTLINED_FUNCTION_4_228();
    v72.size.width = v56;
    v72.size.height = v57;
    CGRectGetMinX(v72);
    v73.origin.x = OUTLINED_FUNCTION_4_228();
    v73.size.width = v56;
    v73.size.height = v57;
    CGRectGetWidth(v73);
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v45 = (*(v44 + 1728))();

      (*(*v45 + 152))(v71, v46);
    }

    else
    {
    }
  }

  if ((*((*v7 & *v5) + 0x90))())
  {
    v47 = sub_1E3F84D5C();
    (*((*v7 & *v47) + 0x70))();

    v48 = *(v5 + OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___bottomSeparatorView);
    v49 = *((*v7 & *v48) + 0x70);
    v50 = v48;
    v49();
  }

  if ((a1 & 1) == 0)
  {
    [v5 vuiIsRTL];
    v51 = *(v5 + OBJC_IVAR____TtC8VideosUI12HintListCell____lazy_storage___accessoryImageView);
    [v5 vuiBounds];
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_4_228();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v51 setFrame_];

    v52 = *(v5 + v33);
    if (v52)
    {
      v53 = v52;
      [v5 vuiBounds];
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v53 setFrame_];
    }

    v54 = sub_1E3F84D5C();
    [v5 vuiBounds];
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v54 setFrame_];
  }

  return a2;
}

void sub_1E3F85F10(char a1)
{
  v8 = type metadata accessor for HintListCell();
  v3 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v4, v5, v3, v1, v8);
  v6 = OUTLINED_FUNCTION_6_12();
  sub_1E3F85734(a1, v6, v7);
}

id sub_1E3F85FCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HintListCell();
  objc_msgSendSuper2(&v2, sel_prepareForReuse);
  if ([v0 vui_highlighted])
  {
    [v0 vui:0 setHighlighted:?];
  }

  result = [v0 isSelected];
  if (result)
  {
    return [v0 setSelected:0 animated:1];
  }

  return result;
}

void sub_1E3F8609C(char a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HintListCell();
  objc_msgSendSuper2(&v12, sel_vui_setHighlighted_, a1 & 1);
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 120);
  if (v5())
  {
    OUTLINED_FUNCTION_30();
    v7 = (*(v6 + 744))();

    if (v7)
    {
      v9 = (v5)(v8);
      if (v9)
      {
        v10 = (*(*v9 + 864))();

        if (v10)
        {
          if (a1)
          {
            v11 = v10;
            [v2 setBackgroundColor_];
          }

          else
          {
            [v2 setBackgroundColor_];
            v11 = v7;
            v7 = v10;
          }
        }
      }
    }
  }
}

id sub_1E3F8625C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HintListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E3F862F8@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  [v6 vui:a2 sizeThatFits:1.79769313e308];
  sub_1E41A300C(v15);
  v12 = OUTLINED_FUNCTION_4_228();
  sub_1E41A2FE8(v12, v13);
  *&v15[6] = a3;
  *&v15[7] = a4;
  *&v15[8] = a5;
  *&v15[9] = a6;
  return memcpy(a1, v15, 0x50uLL);
}

uint64_t sub_1E3F863D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3F86440()
{
  result = qword_1ECF3D3B8;
  if (!qword_1ECF3D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3B8);
  }

  return result;
}

uint64_t sub_1E3F864C8(uint64_t a1)
{
  type metadata accessor for ViewModel();

  j___s8VideosUI9ViewModelCMa();
  v2 = sub_1E39C1CF8(59);

  result = sub_1E32AE9B0(v2);
  if (!result)
  {
    goto LABEL_5;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v2);
    goto LABEL_5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F8658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1E4203DA4();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3C0);
  sub_1E3F8660C(a1, a2, (a3 + *(v7 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3C8);
  *(a3 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1E3F8660C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = *sub_1E3E6011C();
  v22 = sub_1E38F08C4(v21);

  if (a2)
  {

    v24 = sub_1E3EC24F4(v23, 0, 0, 0);
    v25 = (*(*a1 + 392))(v24);
    if (v25 && ((*(*v25 + 176))(v51), v26 = v51[0], v27 = v51[1], v28 = v51[2], v29 = v51[3], , (v52 & 1) == 0))
    {
      v30.n128_u64[0] = v26;
      v31.n128_u64[0] = v27;
      v32.n128_u64[0] = v28;
      v33.n128_u64[0] = v29;
      v34 = j_nullsub_1(v30, v31, v32, v33);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_5_8();
    }

    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = sub_1E4202734();

    (*(v48 + 32))(v11, v7, v49);
    v44 = &v11[*(v8 + 36)];
    *v44 = v43;
    *(v44 + 1) = v39;
    *(v44 + 2) = v40;
    *(v44 + 3) = v41;
    *(v44 + 4) = v42;
    v44[40] = 0;
    sub_1E32DD814(v11, v14);
    sub_1E32DD814(v14, v20);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v38, 1, v8);
  sub_1E32DD74C(v20, v17);
  v45 = v50;
  *v50 = v22;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3E8);
  sub_1E32DD74C(v17, v45 + *(v46 + 48));

  sub_1E32DD7B4(v20);
  sub_1E32DD7B4(v17);
}

unint64_t sub_1E3F869B4()
{
  result = qword_1ECF3D3D0;
  if (!qword_1ECF3D3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D3C8);
    sub_1E3F86A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3D0);
  }

  return result;
}

unint64_t sub_1E3F86A40()
{
  result = qword_1ECF3D3D8;
  if (!qword_1ECF3D3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3D8);
  }

  return result;
}

double sub_1E3F86AA4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1E3F86AD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1E3F86AE0()
{
  OUTLINED_FUNCTION_156();
  (*(*v0 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1E3BC0C44(v1);
  }

  result = sub_1E3AF9DBC(v3, &unk_1F5D8F9D0);
  if (result)
  {
    OUTLINED_FUNCTION_47_0();
    v6 = (*(v5 + 464))();
    if (v6)
    {
      v7 = v6;
      result = sub_1E32AE9B0(v6);
      v8 = result;
      v9 = 0;
      do
      {
        if (v8 == v9)
        {

          goto LABEL_17;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }
        }

        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        OUTLINED_FUNCTION_26_0();
        v11 = v10;

        ++v9;
      }

      while (v11 != _TtC8VideosUI13TextViewModel);
    }

    else
    {
LABEL_17:
      OUTLINED_FUNCTION_111();
      v12 += 262;
      v13 = *v12;
      (*v12)();
      OUTLINED_FUNCTION_30();
      (*(v14 + 2168))(11);

      (v13)(v15);
      OUTLINED_FUNCTION_2_1();
      (*(v16 + 2024))(3, 0);
    }
  }

  return result;
}

void sub_1E3F86D44()
{
  OUTLINED_FUNCTION_31_1();
  v149 = v1;
  v150 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  memcpy(v163, v0, sizeof(v163));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v133 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D550);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v133 - v14;
  v147 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v133 - v22;
  v24 = v3;
  if (!v3)
  {
    v24 = (*(*v7 + 392))(v21);
    if (!v24)
    {
      goto LABEL_137;
    }
  }

  v152 = v7;
  type metadata accessor for ButtonLayout();
  OUTLINED_FUNCTION_20_2();
  v151 = swift_dynamicCastClass();
  if (!v151)
  {

    goto LABEL_137;
  }

  v146 = v24;
  v143 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v23;
  v141 = v16;
  v142 = v18;
  if (v5)
  {
    objc_opt_self();
    swift_dynamicCastObjCClass();
  }

  v25 = v152;
  sub_1E3F880F4();
  v28 = v26;
  if (!v26)
  {
LABEL_136:

LABEL_137:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v29 = v27;
  v145 = v26;
  if ((v27 & 0x100) == 0 || (OUTLINED_FUNCTION_8(), (v31 = (*(v30 + 464))()) == 0))
  {
LABEL_108:
    if (v29)
    {
      v140 = v11;
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      v100 = v152;
      swift_weakInit();
      v101 = 0xE000000000000000;
      v158[0] = 0;
      v158[1] = 0xE000000000000000;

      sub_1E42074B4();

      strcpy(v158, "SelectAction<");
      HIWORD(v158[1]) = -4864;
      v102 = *(v100 + 24);
      if (v102)
      {
        v103 = *(v100 + 16);
      }

      else
      {
        v103 = 0;
      }

      if (v102)
      {
        v101 = v102;
      }

      MEMORY[0x1E69109E0](v103, v101);

      MEMORY[0x1E69109E0](62, 0xE100000000000000);
      sub_1E3F89E60();
      v105 = v104;
      v107 = v106;

      if (v105)
      {
        v158[4] = v105;
        v158[5] = v107;
        v158[0] = MEMORY[0x1E69E9820];
        v158[1] = 1107296256;
        v158[2] = sub_1E37C0588;
        v158[3] = &block_descriptor_7_2;
        v105 = _Block_copy(v158);
      }

      [v145 setSelectActionHandler_];
      _Block_release(v105);
      strcpy(v158, "LongPress<");
      BYTE3(v158[1]) = 0;
      HIDWORD(v158[1]) = -369098752;
      if (*(v152 + 24))
      {
        v108 = *(v152 + 16);
        v109 = *(v152 + 24);
      }

      else
      {
        v108 = 0;
        v109 = 0xE000000000000000;
      }

      MEMORY[0x1E69109E0](v108, v109);

      MEMORY[0x1E69109E0](62, 0xE100000000000000);
      sub_1E3F89E60();
      v111 = v110;
      v113 = v112;

      if (v111)
      {
        v158[4] = v111;
        v158[5] = v113;
        v158[0] = MEMORY[0x1E69E9820];
        v158[1] = 1107296256;
        v158[2] = sub_1E37C0588;
        v158[3] = &block_descriptor_144;
        v111 = _Block_copy(v158);
      }

      v11 = v140;
      v28 = v145;
      [v145 setLongPressActionHandler_];
      _Block_release(v111);
    }

    v158[3] = &unk_1F5D5D0A8;
    v158[4] = &off_1F5D5C758;
    LOBYTE(v158[0]) = 1;
    sub_1E39C29A4(v158);
    v115 = v114;
    __swift_destroy_boxed_opaque_existential_1(v158);
    if (v115)
    {
      v116 = sub_1E4205ED4();
    }

    else
    {
      v116 = 0;
    }

    [v28 setGroupName_];

    v158[3] = &unk_1F5D5D0A8;
    v158[4] = &off_1F5D5C758;
    LOBYTE(v158[0]) = 2;
    v117 = j__OUTLINED_FUNCTION_18();
    v118 = sub_1E39C29F0(v158, v117 & 1);
    __swift_destroy_boxed_opaque_existential_1(v158);
    [v28 setHasDisclaimerText_];
    sub_1E3F88F44();
    objc_opt_self();
    v119 = swift_dynamicCastObjCClass();
    if (!v119)
    {
LABEL_133:
      [v28 configureWithLayoutProperties];
      if (TVAppFeature.isEnabled.getter(7))
      {

        v124 = v148;
        sub_1E3CF1174();
        if (__swift_getEnumTagSinglePayload(v124, 1, v147) == 1)
        {

          sub_1E325F6F0(v124, &qword_1ECF2D550);
        }

        else
        {
          v125 = v144;
          sub_1E38E7DBC(v124, v144);
          v126 = sub_1E4206474();
          __swift_storeEnumTagSinglePayload(v11, 1, 1, v126);
          v127 = v143;
          sub_1E38E7FC4(v125, v143);
          sub_1E4206434();
          v128 = v28;
          v129 = sub_1E4206424();
          v130 = (*(v141 + 80) + 40) & ~*(v141 + 80);
          v131 = swift_allocObject();
          v132 = MEMORY[0x1E69E85E0];
          v131[2] = v129;
          v131[3] = v132;
          v131[4] = v128;
          sub_1E38E7DBC(v127, v131 + v130);
          sub_1E376FE58(0, 0, v11, &unk_1E42E1070, v131);

          sub_1E38E80FC(v125);
        }

        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v120 = v119;
    v121 = v28;
    LOBYTE(v157[0]) = 0;
    OUTLINED_FUNCTION_8();
    (*(v122 + 776))(v158, v157, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (v158[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && sub_1E32772D8(v157[0]))
      {
        v123 = sub_1E4206614();

LABEL_132:
        [v120 setTransactionIDs_];

        goto LABEL_133;
      }
    }

    else
    {
      sub_1E325F6F0(v158, &unk_1ECF296E0);
    }

    v123 = 0;
    goto LABEL_132;
  }

  v32 = v31;
  v33 = sub_1E32AE9B0(v31);
  if (!v33)
  {

    v34 = 0;
    v35 = 0;
    v37 = 0;
    v95 = 0;
    v96 = 0;
LABEL_103:
    v97 = v145;
    [v145 setTextContentView_];
    v139 = v95;
    [v97 setSubtitleContentView_];
    [v97 setImageView_];
    [v97 setProgressBarView_];
    v98 = [v37 image];
    [v97 setSelectionImage_];

    if (v96)
    {
      [v96 setEnabled_];
    }

    if (v139)
    {
      v99 = v139;
      [v139 setEnabled_];

      v35 = v34;
      v34 = v99;
    }

    v28 = v145;
    goto LABEL_108;
  }

  v136 = v29;
  v140 = v11;
  if (v33 >= 1)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v139 = 0;
    v137 = 0;
    v153 = v32 & 0xC000000000000001;
    v154 = v33;
    v38 = v32 & 0xFFFFFFFFFFFFFF8;
    v134 = v32 & 0xFFFFFFFFFFFFFF8;
    if (v32 < 0)
    {
      v38 = v32;
    }

    v133 = v38;
    v155 = v32;
    while (1)
    {
      v156 = v35;
      v39 = v37;
      v40 = v34;
      if (v153)
      {
        v41 = MEMORY[0x1E6911E60](v36, v32);
      }

      else
      {
        v41 = *(v32 + 8 * v36 + 32);
      }

      OUTLINED_FUNCTION_44_60();
      v162 = 3;
      v42 = sub_1E3742F1C();
      OUTLINED_FUNCTION_17_135();
      OUTLINED_FUNCTION_21_106();
      OUTLINED_FUNCTION_6_199();
      OUTLINED_FUNCTION_7_204();
      v43 = v43 && v34 == v25;
      if (v43)
      {
        break;
      }

      OUTLINED_FUNCTION_24_41();
      OUTLINED_FUNCTION_39_60();

      if ((&qword_1F5D5CE68 & 1) == 0)
      {
        OUTLINED_FUNCTION_44_60();
        v162 = 11;
        OUTLINED_FUNCTION_17_135();
        OUTLINED_FUNCTION_21_106();
        OUTLINED_FUNCTION_6_199();
        OUTLINED_FUNCTION_7_204();
        if (v43 && v34 == v25)
        {
          break;
        }

        OUTLINED_FUNCTION_24_41();
        OUTLINED_FUNCTION_39_60();

        if ((&qword_1F5D5CE68 & 1) == 0)
        {
          if (*v41 != _TtC8VideosUI13TextViewModel)
          {
            type metadata accessor for ImageViewModel();
            v51 = swift_dynamicCastClass();
            if (v51)
            {
              v138 = v51;
              LOWORD(v159) = *(v152 + 98);
              v162 = 65;

              OUTLINED_FUNCTION_17_135();
              OUTLINED_FUNCTION_21_106();
              OUTLINED_FUNCTION_6_199();
              OUTLINED_FUNCTION_7_204();
              if (v43 && v34 == v25)
              {
              }

              else
              {
                OUTLINED_FUNCTION_24_41();
                OUTLINED_FUNCTION_39_60();

                if ((&qword_1F5D5CE68 & 1) == 0)
                {
LABEL_73:
                  if (v155 >> 62)
                  {
                    v75 = sub_1E4207384();
                  }

                  else
                  {
                    v75 = *(v134 + 16);
                  }

                  v76 = v138;
                  if (v75 >= 2)
                  {

                    v77 = sub_1E37D027C(v155);
                    v158[0] = v76;
                    if (v77)
                    {
                      v34 = v77;
                      v157[0] = v77;
                      type metadata accessor for ViewModel();
                      sub_1E388C264();
                      v25 = sub_1E4205E84();

                      if (v25)
                      {
                        [v145 setImageTrailsTextContent_];
                      }
                    }

                    else
                    {
                    }
                  }

                  sub_1E3F86AE0();
                  LOWORD(v159) = v76[49];
                  v162 = 44;

                  OUTLINED_FUNCTION_17_135();
                  OUTLINED_FUNCTION_21_106();
                  OUTLINED_FUNCTION_6_199();
                  OUTLINED_FUNCTION_7_204();
                  if (v43 && v34 == v25)
                  {
                  }

                  else
                  {
                    OUTLINED_FUNCTION_24_41();
                    OUTLINED_FUNCTION_39_60();

                    if ((&qword_1F5D5CE68 & 1) == 0)
                    {
                      v82 = [v145 imageView];
                      OUTLINED_FUNCTION_43_62();
                      if (v83)
                      {
                        v90 = *(v42 + 88);
                        *(&v160 + 1) = &unk_1F5D869A0;
                        v161 = &off_1F5D868A0;
                        v91 = swift_allocObject();
                        OUTLINED_FUNCTION_38_65(v91);
                        *(v25 + 88) = &qword_1F5D5CE68;
                        *(v25 + 96) = v90;
                        memcpy(v158, v163, 0x5AuLL);
                        sub_1E3F8B6F0(v158, v157);
                      }

                      else
                      {
                        v161 = 0;
                        v159 = 0u;
                        v160 = 0u;
                      }

                      type metadata accessor for UIFactory();
                      OUTLINED_FUNCTION_8();
                      v93 = (*(v92 + 2096))();
                      v94 = sub_1E3280A90(0, &qword_1EE23B360);
                      v25 = sub_1E393D92C(v138, v82, &v159, v93, v94);

                      sub_1E325F6F0(&v159, &qword_1ECF296C0);
                      v34 = v40;
                      v37 = v39;
                      v35 = v25;
                      goto LABEL_38;
                    }
                  }

                  OUTLINED_FUNCTION_43_62();
                  if (v83)
                  {
                    v84 = *(v42 + 88);
                    *(&v160 + 1) = &unk_1F5D869A0;
                    v161 = &off_1F5D868A0;
                    v85 = swift_allocObject();
                    OUTLINED_FUNCTION_38_65(v85);
                    *(v25 + 88) = &qword_1F5D5CE68;
                    *(v25 + 96) = v84;
                    memcpy(v158, v163, 0x5AuLL);
                    sub_1E3F8B6F0(v158, v157);
                  }

                  else
                  {
                    v161 = 0;
                    v159 = 0u;
                    v160 = 0u;
                  }

                  v86 = type metadata accessor for UIFactory();
                  OUTLINED_FUNCTION_8();
                  v88 = (*(v87 + 2120))();
                  v89 = sub_1E3280A90(0, &qword_1EE23B360);
                  v25 = v86;
                  v37 = sub_1E393D92C(v138, 0, &v159, v88, v89);

                  sub_1E325F6F0(&v159, &qword_1ECF296C0);
LABEL_96:
                  v34 = v40;
                  goto LABEL_37;
                }
              }

              v71 = [objc_opt_self() configurationWithPointSize:7 weight:11.0];
              OUTLINED_FUNCTION_29_91();
              (*(v72 + 2096))();
              OUTLINED_FUNCTION_2_1();
              v135 = v73 + 1952;
              v74 = *(v73 + 1952);
              v34 = v71;
              v74(v71);

              goto LABEL_73;
            }

            OUTLINED_FUNCTION_44_60();
            v162 = 115;
            OUTLINED_FUNCTION_17_135();
            OUTLINED_FUNCTION_21_106();
            OUTLINED_FUNCTION_6_199();
            OUTLINED_FUNCTION_7_204();
            if (v43 && v34 == v25)
            {

              v37 = v39;
LABEL_80:
              v78 = TVAppFeature.isEnabled.getter(10);
              v35 = v156;
              if (v78)
              {
                type metadata accessor for UIFactory();

                v79 = [v145 progressBarView];
                v80 = sub_1E3280A90(0, &qword_1EE23AE80);
                memset(v158, 0, 40);
                v25 = sub_1E393D92C(v41, v79, v158, 0, v80);
                OUTLINED_FUNCTION_157();

                sub_1E325F6F0(v158, &qword_1ECF296C0);
                v34 = v25;
              }

              else
              {
              }

              goto LABEL_38;
            }

            OUTLINED_FUNCTION_24_41();
            OUTLINED_FUNCTION_39_60();

            v37 = v39;
            if (&qword_1F5D5CE68)
            {
              goto LABEL_80;
            }

            goto LABEL_96;
          }

          OUTLINED_FUNCTION_44_60();
          v162 = 15;
          OUTLINED_FUNCTION_157();
          swift_retain_n();
          OUTLINED_FUNCTION_17_135();
          OUTLINED_FUNCTION_21_106();
          OUTLINED_FUNCTION_6_199();
          OUTLINED_FUNCTION_7_204();
          if (v43 && v34 == v25)
          {
          }

          else
          {
            OUTLINED_FUNCTION_24_41();
            OUTLINED_FUNCTION_39_60();

            if ((&qword_1F5D5CE68 & 1) == 0)
            {
              v46 = [v145 textContentView];
              OUTLINED_FUNCTION_29_91();
              v48 = *(v47 + 2048);
              v138 = v49;
              v50 = v48();
              goto LABEL_49;
            }
          }

          v53 = [v145 subtitleContentView];
          OUTLINED_FUNCTION_29_91();
          v55 = *(v54 + 2072);
          v138 = v56;
          v50 = v55();
LABEL_49:
          v57 = v50;

          v58 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          memset(v158, 0, 40);
          v59 = v58;
          v60 = v138;
          v61 = sub_1E393D9C4(v41, v138, v158, v57);

          v135 = v57;

          sub_1E325F6F0(v158, &qword_1ECF296C0);
          if (v61)
          {
            objc_opt_self();
            OUTLINED_FUNCTION_20_2();
            v62 = swift_dynamicCastObjCClass();
            if (!v62)
            {
            }
          }

          else
          {
            v62 = 0;
          }

          v64 = *(v41 + 98);

          LOWORD(v159) = v64;
          v162 = 15;
          OUTLINED_FUNCTION_17_135();
          OUTLINED_FUNCTION_21_106();
          OUTLINED_FUNCTION_6_199();
          if (v158[0] == v157[0] && v158[1] == v157[1])
          {
          }

          else
          {
            v66 = OUTLINED_FUNCTION_97_0();

            if ((v66 & 1) == 0)
            {
              v25 = v137;
              v137 = v62;
LABEL_67:
              v67 = v145;
              v68 = v62;

              if ([v67 buttonType] == 7)
              {
                v25 = v151;
                OUTLINED_FUNCTION_8();
                v70 = *(v69 + 752);

                v70(0);
                OUTLINED_FUNCTION_157();
              }

              else
              {
                OUTLINED_FUNCTION_157();
              }

              goto LABEL_36;
            }
          }

          v25 = v139;
          v139 = v62;
          goto LABEL_67;
        }
      }

LABEL_35:

LABEL_36:
      v34 = v40;
      v37 = v39;
LABEL_37:
      v35 = v156;
LABEL_38:
      ++v36;
      v32 = v155;
      if (v154 == v36)
      {

        v95 = v139;
        v11 = v140;
        LOBYTE(v29) = v136;
        v96 = v137;
        goto LABEL_103;
      }
    }

    goto LABEL_35;
  }

  __break(1u);
}

void sub_1E3F880F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v1[10] == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v1;
  }

  OUTLINED_FUNCTION_47_0();
  v9 += 223;
  v10 = *v9;
  v95 = v9;
  v96 = v10;
  v10();
  OUTLINED_FUNCTION_13_5();
  if (v12)
  {
    v94 = 0;
  }

  else
  {
    v94 = sub_1E3BC0C44(v11);
  }

  LOBYTE(v101[0]) = 0;
  OUTLINED_FUNCTION_111();
  v13 = OUTLINED_FUNCTION_27_89();
  v14(v13);
  if (v99)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    if (swift_dynamicCast())
    {
      v15 = *(v101[0] + 16);

      if (v15)
      {
        if (v5 && (objc_opt_self(), OUTLINED_FUNCTION_22_93(), (v16 = swift_dynamicCastObjCClass()) != 0))
        {
          v17 = v16;
          v18 = v5;
        }

        else
        {
          v17 = [objc_allocWithZone(VUITransactionButton) initWithType:v94 interfaceStyle:v8];
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    sub_1E325F6F0(v98, &unk_1ECF296E0);
  }

  v19 = sub_1E373F6E0();
  if (v19)
  {
    v17 = sub_1E3F8A898(v7, v3, v8, v5);
    v93 = 0;
    goto LABEL_22;
  }

  if (v5)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_22_93();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v19 = [v19 setTransactionIDs_];
    }
  }

  p_vtable = &v91;
  v101[0] = v5;
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D408);
  v20 = OUTLINED_FUNCTION_30_78();
  sub_1E4148C68(v20, v21, v22);
  v17 = v98[0];
LABEL_21:
  v93 = 1;
LABEL_22:
  if ((sub_1E373F6E0() & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_45_65();
  v23();
  OUTLINED_FUNCTION_13_5();
  if (v12)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1E3BC0C44(v24);
  }

  p_vtable = VUIDownloadCollectionViewCell.vtable;
  if (v5 && (objc_opt_self(), OUTLINED_FUNCTION_22_93(), (v26 = swift_dynamicCastObjCClass()) != 0))
  {
    v27 = v26;
    v28 = v5;
  }

  else
  {
    v27 = [objc_allocWithZone(VUIAccountSettingsButton) initWithType:v25 interfaceStyle:v8];
  }

  OUTLINED_FUNCTION_47_0();
  v30 = (*(v29 + 200))();
  if (v31 & 1) != 0 || (v32 = *&v30, OUTLINED_FUNCTION_47_0(), v34 = COERCE_DOUBLE((*(v33 + 304))()), (v35))
  {

    if (!v27)
    {
      goto LABEL_38;
    }

LABEL_36:
    v17 = v27;
    goto LABEL_39;
  }

  if (v27)
  {
    [v27 setPreferedContentSize_];

    goto LABEL_36;
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  v36 = sub_1E373F6E0();
  if (v36)
  {
    if (v5)
    {
      type metadata accessor for SportsBridgeButton();
      OUTLINED_FUNCTION_22_93();
      v36 = swift_dynamicCastClass();
      v37 = v36;
      if (v36)
      {
        v36 = v5;
      }
    }

    else
    {
      v37 = 0;
    }

    p_vtable = &v91;
    v101[0] = v37;
    MEMORY[0x1EEE9AC00](v36);
    OUTLINED_FUNCTION_28_81();
    *(v38 - 16) = v94;
    *(v38 - 8) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D418);
    v39 = OUTLINED_FUNCTION_30_78();
    sub_1E4148C68(v39, v40, v41);

    v42 = v98[0];
    sub_1E37C0398();

    v17 = v42;
  }

  if (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_45_65();
    v43();
    OUTLINED_FUNCTION_13_5();
    if (!v12)
    {
      LOBYTE(v98[0]) = v44;
      LOBYTE(v101[0]) = 5;
      sub_1E3751DB0();
      v45 = sub_1E4205E84();
      if (v45)
      {
        if (v5)
        {
          type metadata accessor for SeeAllButton();
          OUTLINED_FUNCTION_22_93();
          v45 = swift_dynamicCastClass();
          v46 = v45;
          if (v45)
          {
            v45 = v5;
          }
        }

        else
        {
          v46 = 0;
        }

        p_vtable = &v91;
        v101[0] = v46;
        MEMORY[0x1EEE9AC00](v45);
        OUTLINED_FUNCTION_28_81();
        *(v47 - 16) = v94;
        *(v47 - 8) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D410);
        v48 = OUTLINED_FUNCTION_30_78();
        sub_1E4148C68(v48, v49, v50);

        v51 = v98[0];
        sub_1E3DFC234();

        v17 = v51;
      }
    }
  }

  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    if (v5)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_22_93();
      v5 = swift_dynamicCastObjCClass();
    }

    type metadata accessor for LibDownloadButtonViewModel();
    v52 = swift_dynamicCastClass();
    if (v52)
    {
      v53 = [*(v52 + 280) videosPlayable];
      if (v53)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    OUTLINED_FUNCTION_111();
    if (!(*(v59 + 552))())
    {
      goto LABEL_101;
    }

    v99 = &unk_1F5D7BE68;
    v100 = &off_1F5D7BC48;
    LOBYTE(v98[0]) = 8;
    p_vtable = MEMORY[0x1E69E7CA0];
    sub_1E3F9F164(v98);
    if (!v102)
    {

      __swift_destroy_boxed_opaque_existential_1(v98);
      sub_1E325F6F0(v101, &unk_1ECF296E0);
      goto LABEL_101;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    if ((OUTLINED_FUNCTION_54_47() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v98);
      goto LABEL_101;
    }

    v92 = v97;
    __swift_destroy_boxed_opaque_existential_1(v98);
    v99 = &unk_1F5D7BE68;
    v100 = &off_1F5D7BC48;
    LOBYTE(v98[0]) = 6;
    sub_1E3F9F164(v98);

    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (OUTLINED_FUNCTION_54_47())
      {
        v60 = v97;
        __swift_destroy_boxed_opaque_existential_1(v98);
        goto LABEL_92;
      }

      __swift_destroy_boxed_opaque_existential_1(v98);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v98);
      sub_1E325F6F0(v101, &unk_1ECF296E0);
    }

    v60 = 0;
LABEL_92:
    sub_1E388A824(v92);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    v74 = sub_1E42062A4();

    if (v60)
    {
      sub_1E3744600(v60);

      v60 = sub_1E4205C44();
    }

    v75 = [objc_opt_self() videosPlayablesFromDictionaries:v74 andMetadataDictionary:v60];

    if (v75)
    {
      sub_1E3280A90(0, &qword_1EE23B1C0);
      v76 = sub_1E42062B4();

      if (sub_1E32AE9B0(v76))
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x1E6911E60](0, v76);
        }

        else
        {
          if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v77 = *(v76 + 32);
        }

        v53 = v77;

LABEL_60:
        v54 = v53;
        if (v5)
        {
          v55 = v5;
          v56 = [v55 buttonType];
          if (v56 == v94)
          {
            OUTLINED_FUNCTION_47_0();
            (*(v57 + 2048))();
            OUTLINED_FUNCTION_30();
            (*(v58 + 2408))();
            OUTLINED_FUNCTION_122();

            [v55 updateWithPlayable:v54 textLayout:p_vtable];

LABEL_78:
            [v55 setImageTrailsTextContent_];

            v17 = v5;
LABEL_79:
            v65 = v55;
            OUTLINED_FUNCTION_45_65();
            v66();
            OUTLINED_FUNCTION_13_5();
            if (!v12)
            {
              LOBYTE(v98[0]) = v67;
              LOBYTE(v101[0]) = 8;
              sub_1E3751DB0();
              if (sub_1E4205E84())
              {
                [v65 setTranslatesAutoresizingMaskIntoConstraints_];
              }
            }

            LOBYTE(v101[0]) = 1;
            OUTLINED_FUNCTION_111();
            v69 = *(v68 + 776);
            v70 = v17;
            v71 = OUTLINED_FUNCTION_27_89();
            v69(v71);
            if (v99)
            {
              if (swift_dynamicCast())
              {
                v72 = v101[0];
                v73 = v101[1];
                [v70 vui:1 isAccessibilityElement:?];
                sub_1E37FB7F0(v72, v73, v70, &selRef_vui_setAccessibilityText_);
              }
            }

            else
            {

              sub_1E325F6F0(v98, &unk_1ECF296E0);
            }

            goto LABEL_108;
          }
        }

        if (TVAppFeature.isEnabled.getter(16) & 1) != 0 && (sub_1E373F6E0())
        {
          sub_1E3280A90(0, &qword_1ECF3D428);
          (*(*v3 + 2048))();
          OUTLINED_FUNCTION_2_1();
          v62 = (*(v61 + 2408))();

          v63 = &selRef_initWithRemotePlayable_type_textLayout_;
        }

        else
        {
          sub_1E3280A90(0, &qword_1ECF3D428);
          (*(*v3 + 2048))();
          OUTLINED_FUNCTION_2_1();
          v62 = (*(v64 + 2408))();

          v63 = &selRef_initWithPlayable_type_textLayout_;
        }

        v55 = sub_1E3F8B5B8(v54, v94, v62, v63);
        if (v55)
        {
LABEL_77:
          v5 = v55;
          goto LABEL_78;
        }

        goto LABEL_105;
      }
    }

LABEL_101:
    LOBYTE(v101[0]) = 15;
    OUTLINED_FUNCTION_111();
    v78 = OUTLINED_FUNCTION_27_89();
    v79(v78);
    if (!v99)
    {
      sub_1E325F6F0(v98, &unk_1ECF296E0);
      goto LABEL_107;
    }

    if (!OUTLINED_FUNCTION_21_4() || (v101[0] & 1) == 0)
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_47_0();
    (*(v80 + 2048))();
    OUTLINED_FUNCTION_30();
    v82 = (*(v81 + 2408))();

    v83 = objc_allocWithZone(VUIDownloadButton);
    v55 = [v83 initTVShowDownloadButtonWithType:v94 textLayout:v82];

    v54 = 0;
    if (v55)
    {
      goto LABEL_77;
    }

LABEL_105:

LABEL_107:
    v17 = 0;
    goto LABEL_108;
  }

  if (v17)
  {
    v55 = v17;
    goto LABEL_79;
  }

LABEL_108:
  v99 = &unk_1F5D5DAC8;
  v100 = &off_1F5D5C998;
  LOBYTE(v98[0]) = 46;
  v84 = j__OUTLINED_FUNCTION_18();
  v85 = sub_1E39C29F0(v98, v84 & 1);
  __swift_destroy_boxed_opaque_existential_1(v98);
  if (v17)
  {
    [v17 setEnabled_];
  }

  OUTLINED_FUNCTION_45_65();
  v86();
  OUTLINED_FUNCTION_13_5();
  if (!v12)
  {
    [v17 setButtonType_];
  }

  OUTLINED_FUNCTION_47_0();
  v89 = (*(v88 + 1880))();
  if (v89 != 3)
  {
    [v17 setButtonShape_];
  }

  type metadata accessor for Accessibility();
  v90 = v17;
  sub_1E40A91FC(v17, 0, v7);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F88F44()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 304))();
  OUTLINED_FUNCTION_5_213(v3, v4);
  v95[34] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  OUTLINED_FUNCTION_40_65(sub_1E3BE812C);
  OUTLINED_FUNCTION_12_6();
  v7 = (*(v6 + 200))();
  OUTLINED_FUNCTION_5_213(v7, v8);
  v95[30] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE8140);
  OUTLINED_FUNCTION_12_6();
  v10 = (*(v9 + 224))();
  OUTLINED_FUNCTION_5_213(v10, v11);
  v95[26] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE8154);
  OUTLINED_FUNCTION_12_6();
  v13 = (*(v12 + 248))();
  OUTLINED_FUNCTION_5_213(v13, v14);
  v95[22] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE8168);
  OUTLINED_FUNCTION_3_11();
  v16 = (*(v15 + 328))();
  OUTLINED_FUNCTION_5_213(v16, v17);
  v95[18] = v1;
  OUTLINED_FUNCTION_40_65(sub_1E3BE817C);
  OUTLINED_FUNCTION_3_11();
  v19 = (*(v18 + 352))();
  OUTLINED_FUNCTION_5_213(v19, v20);
  v95[14] = v1;
  v95[3] = v5;
  sub_1E4148DE0(sub_1E3BE8190);
  OUTLINED_FUNCTION_3_11();
  v22 = (*(v21 + 2288))();
  OUTLINED_FUNCTION_5_213(v22, v23);
  v95[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D3F0);
  sub_1E4148DE0(sub_1E3F8B728);
  OUTLINED_FUNCTION_12_6();
  (*(v24 + 176))(v102);
  v95[6] = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
  OUTLINED_FUNCTION_40_65(sub_1E3F8B73C);
  if (sub_1E39DFFC8() & 1) != 0 && (OUTLINED_FUNCTION_12_6(), (*(v26 + 792))(), OUTLINED_FUNCTION_13_5(), !v28) && (LOBYTE(v102[0]) = v27, LOBYTE(v100[0]) = 9, sub_1E3F8B7D8(), (sub_1E4205E84()))
  {
    v29 = sub_1E3C8BE74();
    [v1 vuiEnableGlassBackgroundWithIsEnabled:1 tint:0 type:v29 flexible:OUTLINED_FUNCTION_18() & 1];
  }

  else
  {
    v30 = sub_1E3C8BE74();
    [v1 vuiEnableGlassBackgroundWithIsEnabled:0 tint:0 type:v30 flexible:OUTLINED_FUNCTION_18() & 1];
    OUTLINED_FUNCTION_3_11();
    v32 = (*(v31 + 744))();
    *&v102[0] = v32;
    MEMORY[0x1EEE9AC00](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
    v33 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v33);
  }

  OUTLINED_FUNCTION_12_6();
  v35 = (*(v34 + 2312))();
  LOBYTE(v102[0]) = v35;
  MEMORY[0x1EEE9AC00](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
  v36 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v36);
  OUTLINED_FUNCTION_3_11();
  v38 = (*(v37 + 864))();
  *&v102[0] = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_51_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
  v39 = OUTLINED_FUNCTION_3_34();
  v95[1] = v40;
  sub_1E4148DE0(v39);

  OUTLINED_FUNCTION_3_11();
  v42 = (*(v41 + 552))(v102);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_228();
  v43 = OUTLINED_FUNCTION_3_34();
  v95[2] = v25;
  sub_1E4148DE0(v43);
  OUTLINED_FUNCTION_3_11();
  v45 = *(v44 + 1880);
  v46 = v45();
  LOBYTE(v102[0]) = v46;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_51_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C70);
  v47 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v47);
  OUTLINED_FUNCTION_3_11();
  v49 = (*(v48 + 600))();
  *&v102[0] = v49;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_28_81();
  *(v50 - 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C68);
  v51 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v51);

  v52 = v45();
  LOBYTE(v102[0]) = v52;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_228();
  v53 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v53);
  OUTLINED_FUNCTION_3_11();
  v55 = (*(v54 + 1976))();
  [v1 setSecondaryBackgroundColor_];

  OUTLINED_FUNCTION_3_11();
  v57 = (*(v56 + 1928))();
  [v1 setBorderColor_];

  OUTLINED_FUNCTION_3_11();
  (*(v58 + 1952))(v100);
  v59 = v100[0];
  if (v101)
  {
    v59 = 0.0;
  }

  [v1 setBorderWidth_];
  OUTLINED_FUNCTION_3_11();
  v61 = (*(v60 + 1832))();
  if (v61 == 2)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_1E385EBA8(v61 & 1);
  }

  [v1 setUberButtonType_];
  OUTLINED_FUNCTION_3_11();
  v64 = *(v63 + 2096);
  v64();
  OUTLINED_FUNCTION_30();
  (*(v65 + 248))();

  OUTLINED_FUNCTION_32_80();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_2_228();
  v67 = OUTLINED_FUNCTION_3_34();
  v68 = sub_1E4148DE0(v67);
  (v64)(v68);
  OUTLINED_FUNCTION_2_1();
  (*(v69 + 352))();

  OUTLINED_FUNCTION_32_80();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_228();
  v71 = OUTLINED_FUNCTION_3_34();
  v72 = sub_1E4148DE0(v71);
  (v64)(v72);
  OUTLINED_FUNCTION_2_1();
  (*(v73 + 672))();
  OUTLINED_FUNCTION_122();

  *&v102[0] = v95;
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_2_228();
  v75 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v75);

  v64();
  OUTLINED_FUNCTION_2_1();
  (*(v76 + 864))();
  OUTLINED_FUNCTION_122();

  *&v102[0] = v95;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_2_228();
  v78 = OUTLINED_FUNCTION_3_34();
  sub_1E4148DE0(v78);

  v64();
  OUTLINED_FUNCTION_30();
  (*(v79 + 152))(v102);

  v97 = v102[0];
  v98 = v102[1];
  v99 = v103;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_2_228();
  sub_1E4148DE0(sub_1E3F8B7B4);
  if (sub_1E39DFFC8())
  {
    v64();
    OUTLINED_FUNCTION_26_0();
    v82 = (*(v81 + 504))();

    if (v82 == 18)
    {
      v83 = 0;
    }

    else
    {
      LOBYTE(v97) = v82;
      v96 = 1;
      sub_1E39E67F4();
      v83 = sub_1E4205E84();
    }

    [v1 setVerticallyCenterContent_];
  }

  if (sub_1E39E01A4())
  {
    OUTLINED_FUNCTION_12_6();
    v84 += 66;
    v85 = *v84;
    v86 = (*v84)();
    if (v86 == 4)
    {
      v87 = 0;
    }

    else
    {
      v87 = sub_1E4125C2C(v86);
    }

    v88 = (v85)([v1 _setMonochromaticTreatment_]);
    if (v88 == 4)
    {
      v89 = 0;
    }

    else
    {
      v89 = sub_1E4125B78(v88);
    }

    [v1 _setEnableMonochromaticTreatment_];
  }

  OUTLINED_FUNCTION_12_6();
  v91 = (*(v90 + 2264))();
  if (v92)
  {
    v93 = 0;
  }

  else
  {
    v93 = v91;
  }

  v94 = [objc_opt_self() uiContentSizeCategoryFor_];
  [v1 setMaximumContentSizeCategory_];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F89CFC()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D568);
  OUTLINED_FUNCTION_17_2(v3);
  v0[4] = swift_task_alloc();
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  v5 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F89DC4, v5, v4);
}

uint64_t sub_1E3F89DC4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 32);

  sub_1E3CF14B0();
  v2 = sub_1E41FDCC4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1E4206EA4();

  OUTLINED_FUNCTION_54();

  return v3();
}

void sub_1E3F89E60()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v29 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_156();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v28 = v0;

    v15 = sub_1E324FBDC();
    (*(v11 + 16))(v14, v15, v9);

    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v8;
      v19 = v18;
      v20 = OUTLINED_FUNCTION_100();
      v27 = v6;
      v21 = v20;
      v30 = v20;
      *v19 = 136315138;
      v22 = v29;
      *(v19 + 4) = sub_1E3270FC8(v29, v3, &v30);
      _os_log_impl(&dword_1E323F000, v16, v17, "ButtonViewFactory:%s overriding handler", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v6 = v27;
      OUTLINED_FUNCTION_6_0();
      v8 = v26;
      OUTLINED_FUNCTION_6_0();

      (*(v11 + 8))(v14, v9);
    }

    else
    {

      (*(v11 + 8))(v14, v9);
      v22 = v29;
    }

    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v3;
    v24 = v28;
    v23[4] = v1;
    v23[5] = v24;
    v23[6] = v8;
    v23[7] = v6;
  }

  sub_1E34AF604(v1);
  OUTLINED_FUNCTION_25_2();
}

void (*sub_1E3F8A0A4())()
{
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  return sub_1E3F8B82C;
}

void sub_1E3F8A0FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1E324FBDC();
    (*(v4 + 16))(v7, v10, v2);

    v11 = sub_1E41FFC94();
    v12 = sub_1E4206814();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v1;
      v14 = v13;
      v15 = OUTLINED_FUNCTION_100();
      v24[0] = v15;
      *v14 = 136315138;
      v16 = (*(*v9 + 368))();
      v18 = sub_1E3270FC8(v16, v17, v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1E323F000, v11, v12, "Button(%s) dispatching select event", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_6_0();
      v1 = v22;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v7, v2);
    sub_1E379D7E4(v1, v24, &unk_1ECF296E0);
    if (v24[3])
    {
      sub_1E3280A90(0, &qword_1EE23B3D0);
      if (OUTLINED_FUNCTION_21_4())
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      sub_1E325F6F0(v24, &unk_1ECF296E0);
      v19 = 0;
    }

    v23 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D400);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    sub_1E4148F70(sub_1E3F8A444, 0, v20, v21, v24);
    (*(*v9 + 800))(2, v24[0], v19, 0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F8A444@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseImpressionManager();
  v2 = OUTLINED_FUNCTION_20_2();
  result = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v2);
  *a1 = result;
  return result;
}

void sub_1E3F8A490()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37[-v18];
  sub_1E379D7E4(v10, &v43, &unk_1ECF296E0);
  if (*(&v44 + 1))
  {
    v20 = sub_1E3280A90(0, &qword_1EE23ACF0);
    if (swift_dynamicCast())
    {
      v40 = v42;
      v21 = v1();
      v22 = sub_1E324FBDC();
      (*(v13 + 16))(v19, v22, v11);

      v23 = sub_1E41FFC94();
      v24 = sub_1E4206814();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v38 = v21;
        v26 = v25;
        v27 = OUTLINED_FUNCTION_100();
        v39 = v4;
        v28 = v27;
        *&v43 = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_1E3270FC8(v8, v6, &v43);
        *(v26 + 12) = 1024;
        v29 = v38;
        *(v26 + 14) = v38 & 1;
        _os_log_impl(&dword_1E323F000, v23, v24, "ButtonViewFactory:%s event was handled %{BOOL}d", v26, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v4 = v39;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v13 + 8))(v19, v11);
        if (v29)
        {
          goto LABEL_15;
        }
      }

      else
      {

        (*(v13 + 8))(v19, v11);
        if (v21)
        {
          goto LABEL_15;
        }
      }

      if (v4)
      {
        *(&v44 + 1) = v20;
        *&v43 = v40;
        v36 = v40;
        v4(&v43);

        goto LABEL_11;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    sub_1E325F6F0(&v43, &unk_1ECF296E0);
  }

  v30 = sub_1E324FBDC();
  (*(v13 + 16))(v17, v30, v11);

  v31 = sub_1E41FFC94();
  v32 = sub_1E4206814();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v4;
    v35 = OUTLINED_FUNCTION_100();
    *&v43 = v35;
    *v33 = 136315138;
    *(v33 + 4) = sub_1E3270FC8(v8, v6, &v43);
    _os_log_impl(&dword_1E323F000, v31, v32, "ButtonViewFactory:%s button is invalid, invoking original handler", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v4 = v34;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v13 + 8))(v17, v11);
  if (v4)
  {
    v43 = 0u;
    v44 = 0u;
    v4(&v43);
LABEL_11:
    sub_1E325F6F0(&v43, &unk_1ECF296E0);
  }

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F8A898(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (*(*a2 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v18)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1E3BC0C44(v7);
  }

  if (a4 && (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) != 0))
  {
    v10 = v9;
    v11 = a4;
  }

  else
  {
    v10 = [objc_allocWithZone(VUIUpNextButton) initWithType:v8 interfaceStyle:a3];
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    [v12 setStateDidChangeHandler_];
  }

LABEL_10:
  v91 = [v10 properties];
  LOBYTE(v93) = 4;
  v13 = *(*a1 + 776);
  v14 = OUTLINED_FUNCTION_48_50();
  (v13)(v14, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!*(&v96 + 1))
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_47_53();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v15 = a1;
  v16 = sub_1E3F8BA40(v91);
  if (v17)
  {
    v18 = v16 == v93 && v17 == v94;
    if (v18)
    {

LABEL_22:

      goto LABEL_23;
    }

    v19 = OUTLINED_FUNCTION_97_0();

    if (v19)
    {
      goto LABEL_22;
    }
  }

  [v91 removeNotificationObserver];
  sub_1E37FB7F0(v93, v94, v91, &selRef_setCanonicalID_);
  [v91 setupNotificationObserver];
LABEL_23:
  a1 = v15;
LABEL_24:
  *(&v96 + 1) = &unk_1F5D5D0A8;
  v97 = &off_1F5D5C758;
  LOBYTE(aBlock) = 19;
  v20 = j__OUTLINED_FUNCTION_18();
  v21 = sub_1E39C29F0(&aBlock, v20 & 1);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v21)
  {
    [v91 setRemoveTitleForSquareAspectRatio_];
  }

  LOBYTE(v93) = 5;
  v22 = OUTLINED_FUNCTION_48_50();
  v13(v22);
  if (*(&v96 + 1))
  {
    OUTLINED_FUNCTION_47_53();
    if (OUTLINED_FUNCTION_21_4())
    {
      if (v93 == sub_1E4205F14() && v94 == v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = OUTLINED_FUNCTION_97_0();
      }

      [v91 setIsWatchListed_];
    }
  }

  else
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
  }

  v26 = OUTLINED_FUNCTION_48_50();
  v13(v26);
  if (*(&v96 + 1))
  {
    OUTLINED_FUNCTION_47_53();
    v27 = v91;
    if (OUTLINED_FUNCTION_21_4())
    {
      [v91 setDismissOnSelect_];
    }
  }

  else
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
    v27 = v91;
  }

  [v10 setProperties_];
  v87 = v10;
  v28 = [v27 setDelegate_];
  v29 = (*a2 + 2096);
  v30 = *v29;
  (*v29)(v28);
  OUTLINED_FUNCTION_30();
  (*(v31 + 200))();
  v33 = v32;

  v30(v34);
  OUTLINED_FUNCTION_2_1();
  (*(v35 + 304))();
  v37 = v36;

  v39 = (*(*a1 + 464))(v38);
  if (!v39)
  {
    goto LABEL_72;
  }

  v40 = v39;
  result = sub_1E32AE9B0(v39);
  if (!result)
  {
LABEL_71:

LABEL_72:
    [v27 updateButtonContentView];
    OUTLINED_FUNCTION_4_0();
    v80 = swift_allocObject();
    swift_weakInit();
    v97 = sub_1E3F8BB58;
    v98 = v80;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v96 = sub_1E37C0588;
    *(&v96 + 1) = &block_descriptor_43_3;
    v81 = _Block_copy(&aBlock);
    v82 = v87;

    [v82 setSelectActionHandler_];
    _Block_release(v81);

    OUTLINED_FUNCTION_4_0();
    v83 = swift_allocObject();
    swift_weakInit();
    v97 = sub_1E3F8BE58;
    v98 = v83;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v96 = sub_1E37C0588;
    *(&v96 + 1) = &block_descriptor_47_0;
    v84 = _Block_copy(&aBlock);

    [v82 setStateDidChangeHandler_];
    _Block_release(v84);

    return v87;
  }

  v42 = result;
  if (result >= 1)
  {
    v43 = 0;
    v44 = v40 & 0xC000000000000001;
    HIDWORD(v85) = v33 & 1;
    LODWORD(v85) = v37 & 1;
    v89 = v40;
    v90 = result;
    v86 = v40 & 0xC000000000000001;
    do
    {
      if (v44)
      {
        v45 = MEMORY[0x1E6911E60](v43, v40);
      }

      else
      {
        v45 = *(v40 + 8 * v43 + 32);
      }

      LOBYTE(v93) = 28;
      v46 = OUTLINED_FUNCTION_48_50();
      v47(v46, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (*(&v96 + 1))
      {
        OUTLINED_FUNCTION_47_53();
        if (swift_dynamicCast())
        {
          if (v93 == sub_1E4205F14() && v94 == v48)
          {

            v52 = 0;
            v51 = &selRef_addedStateView;
          }

          else
          {
            v50 = OUTLINED_FUNCTION_97_0();

            v51 = &selRef_removedStateView;
            if (v50)
            {
              v51 = &selRef_addedStateView;
            }

            v52 = v50 ^ 1;
          }

          v53 = [v27 *v51];
          if (*v45 == _TtC8VideosUI13TextViewModel)
          {
            v54 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
            v55 = [v53 label];
            v97 = 0;
            aBlock = 0u;
            v96 = 0u;
            v56 = (*(*a2 + 2048))();
            v57 = sub_1E393D9C4(v45, v55, &aBlock, v56);

            sub_1E325F6F0(&aBlock, &qword_1ECF296C0);
            if (v57)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_20_2();
              v58 = swift_dynamicCastObjCClass();
              v40 = v89;
              v42 = v90;
              if (!v58)
              {
              }
            }

            else
            {
              v58 = 0;
              v40 = v89;
              v42 = v90;
            }

            [v53 setLabel_];
          }

          else
          {
            type metadata accessor for ImageViewModel();
            v59 = swift_dynamicCastClass();
            if (v59)
            {
              v60 = v59;
              v61 = sub_1E3F86AE0();
              v30(v61);
              OUTLINED_FUNCTION_30();
              v63 = (*(v62 + 200))();
              v88 = v60;
              LOBYTE(v60) = v64;

              *&aBlock = v63;
              BYTE8(aBlock) = v60 & 1;
              MEMORY[0x1EEE9AC00](v65);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
              v66 = sub_1E4148DE0(sub_1E3F8BFFC);
              v30(v66);
              OUTLINED_FUNCTION_2_1();
              v68 = (*(v67 + 304))();
              v70 = v69;

              *&aBlock = v68;
              v72 = v70 & 1;
              v27 = v91;
              BYTE8(aBlock) = v72;
              MEMORY[0x1EEE9AC00](v71);
              v73 = sub_1E4148DE0(sub_1E3F8C098);
              v74 = (v30)(v73);
              v75 = sub_1E37E9528(v88, v74);

              [v53 setImage_];
              if ((v52 & 1) != [v91 isWatchListed])
              {
                v76 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                v77 = [v91 currentImageView];
                v97 = 0;
                aBlock = 0u;
                v96 = 0u;
                v78 = (v30)();
                v79 = sub_1E393D9C4(v88, v77, &aBlock, v78);

                v27 = v91;

                sub_1E325F6F0(&aBlock, &qword_1ECF296C0);
                [v91 setCurrentImageView_];
              }

              v40 = v89;
              v42 = v90;
              v44 = v86;
            }

            else
            {

              v42 = v90;
            }
          }
        }

        else
        {
        }
      }

      else
      {

        sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
      }

      ++v43;
    }

    while (v42 != v43);
    goto LABEL_71;
  }

  __break(1u);
  return result;
}

id sub_1E3F8B5B8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  OUTLINED_FUNCTION_122();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a4];

  return v8;
}

uint64_t sub_1E3F8B620()
{
  OUTLINED_FUNCTION_27_2();
  v1 = type metadata accessor for ViewModelLinkEntity(0);
  OUTLINED_FUNCTION_17_2(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1E37E1058;

  return sub_1E3F89CFC();
}

unint64_t sub_1E3F8B7D8()
{
  result = qword_1ECF3D3F8;
  if (!qword_1ECF3D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D3F8);
  }

  return result;
}

uint64_t sub_1E3F8B834(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 90))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F8B894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3F8B90C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1E3F8B960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1E3F8B9F0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIButton) initWithType:*(v1 + 16) interfaceStyle:*(v1 + 24)];
  *a1 = result;
  return result;
}

uint64_t sub_1E3F8BA40(void *a1)
{
  v1 = [a1 canonicalID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3F8BAFC@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  a1(0);
  result = a2(v7, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1E3F8BB58(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1E379D7E4(a1, v20, &unk_1ECF296E0);
    if (v21)
    {
      sub_1E3280A90(0, &qword_1ECF3D420);
      if (OUTLINED_FUNCTION_21_4())
      {
        v4 = v19[0];
        type metadata accessor for BaseImpressionManager();
        v5 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v19[0]);
        if ((*(*v3 + 576))())
        {
          OUTLINED_FUNCTION_26_0();
          v7 = (*(v6 + 192))(v20);
          if (*v8)
          {
            v9 = sub_1E4205F14();
            v11 = v10;
            v12 = [v19[0] properties];
            [v12 isWatchListed];

            v13 = sub_1E4205F14();
            v19[3] = MEMORY[0x1E69E6158];
            v19[0] = v13;
            v19[1] = v14;
            sub_1E3946774(v19, v9, v11);
            v7(v20, 0);
          }

          else
          {
            v7(v20, 0);
          }

          OUTLINED_FUNCTION_111();
          v16 = *(v15 + 584);

          v16(v17);
          (*(*v3 + 808))(2, v5);
        }

        ViewModelEvent.rawValue.getter(2);
        v18 = sub_1E4205ED4();

        [v4 selectButtonAction_];
      }
    }

    else
    {

      return sub_1E325F6F0(v20, &unk_1ECF296E0);
    }
  }

  return result;
}

uint64_t sub_1E3F8BE58(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1E379D7E4(a1, v9, &unk_1ECF296E0);
    if (!v10)
    {

      return sub_1E325F6F0(v9, &unk_1ECF296E0);
    }

    sub_1E3280A90(0, &qword_1ECF3D420);
    if (OUTLINED_FUNCTION_21_4())
    {
      v4 = v8;
      v5 = [v8 properties];
      [v5 isWatchListed];

      v6 = sub_1E4205F14();
      LOBYTE(v8) = 28;
      v10 = MEMORY[0x1E69E6158];
      v9[0] = v6;
      v9[1] = v7;
      (*(*v3 + 784))(&v8, v9, &unk_1F5D5DAC8, &off_1F5D5C998);

      return sub_1E325F6F0(v9, &unk_1ECF296E0);
    }
  }

  return result;
}

uint64_t sub_1E3F8BFFC()
{
  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 2096))();
    OUTLINED_FUNCTION_30();
    (*(v2 + 208))(0, 1);
  }

  return result;
}

uint64_t sub_1E3F8C098()
{
  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 2096))();
    OUTLINED_FUNCTION_2_1();
    (*(v2 + 312))(0, 1);
  }

  return result;
}

uint64_t sub_1E3F8C18C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v26 = &type metadata for ViewModelKeys.Sports;
  v27 = &off_1F5D7BC68;
  v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v23, 31);
  sub_1E3F9F164(v9);

  v10 = OUTLINED_FUNCTION_86_18(v25);
  if (!v17)
  {
LABEL_6:
    sub_1E325F7A8(v28, &unk_1ECF296E0);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_61_1(v10, v11, v12, MEMORY[0x1E69E6370], v13, v14, v15, v16, v24, v25[0]);
  if (OUTLINED_FUNCTION_32_13())
  {
    v18 = v25[0];
    goto LABEL_8;
  }

LABEL_7:
  v18 = 2;
LABEL_8:
  OUTLINED_FUNCTION_8();
  v20 = (*(v19 + 2048))();
  v21 = v20 & v18;
  if (v18 == 2)
  {
    v21 = v20;
  }

  return v21 & 1;
}

uint64_t sub_1E3F8C2A4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (v1)
  {
    v5[3] = &type metadata for ViewModelKeys.Sports;
    v5[4] = &off_1F5D7BC68;
    LOBYTE(v5[0]) = 12;
    OUTLINED_FUNCTION_21_107(v1);

    OUTLINED_FUNCTION_86_18(v5);
    if (v2)
    {
      v3 = OUTLINED_FUNCTION_13_166();
      return OUTLINED_FUNCTION_10_115(v3, v5[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v6, &unk_1ECF296E0);
  return 0;
}

uint64_t sub_1E3F8C37C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (v1)
  {
    v5[3] = &type metadata for ViewModelKeys.Sports;
    v5[4] = &off_1F5D7BC68;
    LOBYTE(v5[0]) = 17;
    OUTLINED_FUNCTION_21_107(v1);

    OUTLINED_FUNCTION_86_18(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v3 = OUTLINED_FUNCTION_13_166();
      return OUTLINED_FUNCTION_10_115(v3, v5[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v6, &unk_1ECF296E0);
  return 0;
}

uint64_t sub_1E3F8C45C(char a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1112))();
  if (v3)
  {
    v7[3] = &type metadata for ViewModelKeys.Sports;
    v7[4] = &off_1F5D7BC68;
    LOBYTE(v7[0]) = a1;
    OUTLINED_FUNCTION_21_107(v3);

    OUTLINED_FUNCTION_86_18(v7);
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_13_166();
      return OUTLINED_FUNCTION_10_115(v5, v7[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v8, &unk_1ECF296E0);
  return 0;
}

uint64_t sub_1E3F8C53C()
{
  OUTLINED_FUNCTION_8();
  v0 += 69;
  v1 = *v0;
  v2 = (*v0)();
  if (!v2)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v42 = &type metadata for ViewModelKeys.Sports;
  v43 = &off_1F5D7BC68;
  v10 = OUTLINED_FUNCTION_23_36(v2, v3, v4, v5, v6, v7, v8, v9, v39, 10);
  sub_1E3F9F164(v10);

  OUTLINED_FUNCTION_86_18(v41);
  if (!v11)
  {
LABEL_6:
    v19 = sub_1E325F7A8(v44, &unk_1ECF296E0);
    goto LABEL_7;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0);
  OUTLINED_FUNCTION_61_1(v12, v13, v14, v12, v15, v16, v17, v18, v39, v41[0]);
  v19 = OUTLINED_FUNCTION_32_13();
  if (v19)
  {
    return v41[0];
  }

LABEL_7:
  v21 = (v1)(v19);
  if (v21)
  {
    v42 = &type metadata for ViewModelKeys.Sports;
    v43 = &off_1F5D7BC68;
    v29 = OUTLINED_FUNCTION_23_36(v21, v22, v23, v24, v25, v26, v27, v28, v39, 9);
    sub_1E3F9F164(v29);

    OUTLINED_FUNCTION_86_18(v41);
    if (v30)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8F0);
      OUTLINED_FUNCTION_61_1(v31, v32, v33, v31, v34, v35, v36, v37, v40, v41[0]);
      v38 = OUTLINED_FUNCTION_32_13();
      return OUTLINED_FUNCTION_10_115(v38, v41[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F7A8(v44, &unk_1ECF296E0);
  return 0;
}

uint64_t sub_1E3F8C6C8()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1160))();
  v2 = result;
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = *(result + 16);
  while (1)
  {
    if (v5 == v3)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v18[3] = &type metadata for ViewModelKeys;
    v18[4] = &off_1F5D7BCA8;
    LOBYTE(v18[0]) = 7;

    sub_1E3F9F164(v18);

    if (!v20)
    {
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = sub_1E325F7A8(v19, &unk_1ECF296E0);
      goto LABEL_14;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v21 = 0;
      v22 = 0;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v18);
    v6 = v22;
    if (v22)
    {
      v17 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E3740F88(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v7 = v4;
      v8 = *(v4 + 16);
      v9 = v7;
      v10 = *(v7 + 24);
      v11 = v8 + 1;
      if (v8 >= v10 >> 1)
      {
        v13 = OUTLINED_FUNCTION_35(v10);
        v16 = v14;
        result = sub_1E3740F88(v13, v14, 1, v15);
        v11 = v16;
        v9 = result;
      }

      ++v3;
      *(v9 + 16) = v11;
      v12 = v9 + 16 * v8;
      v4 = v9;
      *(v12 + 32) = v17;
      *(v12 + 40) = v6;
    }

    else
    {
LABEL_14:
      ++v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F8C8B0(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  result = sub_1E32AE9B0(a3);
  v7 = result;
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  v10 = MEMORY[0x1E69E7CC0];
  v18 = a1;
  while (1)
  {
    if (v7 == v8)
    {
      return v10;
    }

    if (v9)
    {
      result = MEMORY[0x1E6911E60](v8, v4);
      v11 = result;
    }

    else
    {
      if (v8 >= *(v19 + 16))
      {
        goto LABEL_19;
      }

      v11 = *(v4 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v22 = v11;
    a1(&v20, &v22);
    if (v3)
    {

      return v10;
    }

    if ((v21 & 1) == 0)
    {
      v12 = v4;
      v13 = v7;
      v14 = v9;
      v15 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E3997AA8(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1E3997AA8((v16 > 1), v17 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v17 + 1;
      *(v10 + 8 * v17 + 32) = v15;
      a1 = v18;
      v9 = v14;
      v7 = v13;
      v4 = v12;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

BOOL sub_1E3F8CA58()
{
  OUTLINED_FUNCTION_8();
  v1 = *((*(v0 + 1160))() + 16);

  return v1 != 0;
}

uint64_t sub_1E3F8CAAC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1112))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v4[3] = &type metadata for ViewModelKeys.Sports;
  v4[4] = &off_1F5D7BC68;
  LOBYTE(v4[0]) = 6;
  OUTLINED_FUNCTION_21_107(v1);

  OUTLINED_FUNCTION_86_18(v4);
  if (!v2)
  {
LABEL_6:
    sub_1E325F7A8(v5, &unk_1ECF296E0);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if (OUTLINED_FUNCTION_13_166())
  {
    return v4[0];
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E3F8CB88()
{
  v27 = *MEMORY[0x1E69E9840];
  sub_1E41FDE24();
  swift_allocObject();
  sub_1E41FDE14();
  if (!(*(*v0 + 552))())
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_6;
  }

  v23 = &type metadata for ViewModelKeys.Sports;
  v24 = &off_1F5D7BC68;
  LOBYTE(v22[0]) = 6;
  sub_1E3F9F164(v22);

  __swift_destroy_boxed_opaque_existential_1(v22);
  if (!*(&v26 + 1))
  {
LABEL_6:
    sub_1E325F7A8(&v25, &unk_1ECF296E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_32_13() & 1) == 0)
  {
LABEL_7:
    v1 = sub_1E4205CB4();
    goto LABEL_8;
  }

  v1 = v22[0];
LABEL_8:
  v20 = MEMORY[0x1E69E7CC0];
  *&v25 = MEMORY[0x1E69E7CC0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_16:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_1E328438C(*(v1 + 56) + ((v6 << 11) | (32 * v8)), v22);
    v9 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v10 = sub_1E4207994();
    v21 = 0;
    v11 = [v9 dataWithJSONObject:v10 options:0 error:&v21];
    swift_unknownObjectRelease();
    v12 = v21;
    if (v11)
    {
      sub_1E41FE464();

      sub_1E4205A54();
      sub_1E3F9C2EC(&unk_1EE23B660, MEMORY[0x1E69D3C38]);
      sub_1E41FDE04();
      v15 = OUTLINED_FUNCTION_17_11();
      sub_1E38DCCB0(v15, v16);
      v17 = __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E6910BF0](v17);
      v18 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v18 >> 1)
      {
        OUTLINED_FUNCTION_35(v18);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v20 = v25;
    }

    else
    {
      v13 = v12;
      v14 = sub_1E41FE274();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_16;
    }
  }

  return v20;
}

uint64_t sub_1E3F8CF6C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1136))();
  if (!v1)
  {
    goto LABEL_6;
  }

  if (!*(v1 + 16) || (v2 = *(v1 + 32), , , !*(v2 + 16)))
  {

LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = 12589;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 12589;
  *(inited + 56) = 0xE200000000000000;
  v4 = sub_1E3F8D068(inited, v2);

  swift_setDeallocating();
  sub_1E38272B0();
  v5 = v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_1E3F8D068(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v5 = a2 + 32;
  for (i = (result + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v7 = 0;
      v8 = 0;
      v2 = v3;
      goto LABEL_9;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_27;
    }

    v9 = (v5 + 16 * v2);
    v8 = *v9;
    v7 = v9[1];

    if (!v4)
    {
      if (v7)
      {
        goto LABEL_23;
      }

      return 1;
    }

    ++v2;
LABEL_9:
    v11 = *(i - 1);
    v10 = *i;

    if (!v7)
    {
      if (v10)
      {
LABEL_23:

        return 0;
      }

      return 1;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    if (v8 == v11 && v7 == v10)
    {
    }

    else
    {
      v13 = sub_1E42079A4();

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E3F8D1A4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1520))();
  v4 = v3 == 3 && (v1 | v2) == 0;
  v5 = !v4;
  if (!v4)
  {
    sub_1E3827608(v1, v2, v3);
  }

  return v5;
}

uint64_t sub_1E3F8D208()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = v1;
    result = sub_1E32AE9B0(v1);
    v4 = result;
    v5 = 0;
    while (1)
    {
      v6 = v4 != v5;
      if (v4 == v5)
      {
        goto LABEL_17;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = OUTLINED_FUNCTION_38_0();
        result = MEMORY[0x1E6911E60](v9);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }
      }

      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v12 == v10 && v13 == v11)
      {

LABEL_17:

        return v6;
      }

      v8 = OUTLINED_FUNCTION_97_0();

      ++v5;
      if (v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E3F8D39C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1E3F9C2EC(a4, a5);
  OUTLINED_FUNCTION_55_39();
  sub_1E4206254();
  OUTLINED_FUNCTION_55_39();
  sub_1E4206254();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

BOOL sub_1E3F8D46C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1E3F8D550()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 1208))())
  {
    v1 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v1 = (*(v2 + 1216))() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1E3F8D5C8()
{
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_36();
  (*(v4 + 2216))();
  v5 = OUTLINED_FUNCTION_33_14();
  v6(v5);
  OUTLINED_FUNCTION_0_305();
  v7 = OUTLINED_FUNCTION_74();
  v12 = sub_1E3F8D39C(v7, v8, v9, v10, v11);
  v13 = *(v1 + 8);
  v14 = OUTLINED_FUNCTION_13_8();
  v13(v14);
  v15 = OUTLINED_FUNCTION_11_6();
  v13(v15);
  return v12 & 1;
}

void sub_1E3F8D740()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_36();
  v5 = *(v4 + 1568);
  if ((v5() & 1) == 0 && (v5() & 0x100) == 0)
  {
    OUTLINED_FUNCTION_8();
    v39 = *(v6 + 2216);
    v39(v7);
    v8 = *(v1 + 104);
    v9 = OUTLINED_FUNCTION_33_14();
    v8(v9);
    OUTLINED_FUNCTION_0_305();
    v10 = OUTLINED_FUNCTION_74();
    v15 = sub_1E3F8D39C(v10, v11, v12, v13, v14);
    v16 = *(v1 + 8);
    v17 = OUTLINED_FUNCTION_13_8();
    v16(v17);
    v18 = OUTLINED_FUNCTION_11_6();
    v19 = (v16)(v18);
    if (v15)
    {
      OUTLINED_FUNCTION_8();
      if ((*(v20 + 552))())
      {
        v40[3] = &type metadata for ViewModelKeys.Sports;
        v40[4] = &off_1F5D7BC68;
        LOBYTE(v40[0]) = 34;
        sub_1E3F9F164(v40);

        __swift_destroy_boxed_opaque_existential_1(v40);
        if (*(&v42 + 1))
        {
          OUTLINED_FUNCTION_111_11();
          goto LABEL_9;
        }
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      sub_1E325F7A8(&v41, &unk_1ECF296E0);
      goto LABEL_9;
    }

    v39(v19);
    v21 = OUTLINED_FUNCTION_33_14();
    v8(v21);
    OUTLINED_FUNCTION_0_305();
    v22 = OUTLINED_FUNCTION_74();
    v27 = sub_1E3F8D39C(v22, v23, v24, v25, v26);
    v28 = OUTLINED_FUNCTION_13_8();
    v16(v28);
    v29 = OUTLINED_FUNCTION_11_6();
    v30 = (v16)(v29);
    if ((v27 & 1) == 0)
    {
      v39(v30);
      v31 = OUTLINED_FUNCTION_33_14();
      v8(v31);
      OUTLINED_FUNCTION_0_305();
      v32 = OUTLINED_FUNCTION_74();
      sub_1E3F8D39C(v32, v33, v34, v35, v36);
      v37 = OUTLINED_FUNCTION_13_8();
      v16(v37);
      v38 = OUTLINED_FUNCTION_11_6();
      v16(v38);
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F8DAEC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v5 = &type metadata for ViewModelKeys.Sports;
  v6 = &off_1F5D7BC68;
  v4[0] = 29;
  OUTLINED_FUNCTION_21_107(v1);

  OUTLINED_FUNCTION_86_18(v4);
  if (!v2)
  {
LABEL_6:
    sub_1E325F7A8(v7, &unk_1ECF296E0);
    return 0;
  }

  if (OUTLINED_FUNCTION_13_166())
  {
    return v4[0];
  }

  return 0;
}

uint64_t sub_1E3F8DBB4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 648))();
  if (!v1 || (v2 = v1, OUTLINED_FUNCTION_5_0(), v3 = *(v2 + 56), , , !v3) || (OUTLINED_FUNCTION_8(), v5 = (*(v4 + 1024))(), , !v5))
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_11;
  }

  sub_1E3277E60(0xD000000000000012, 0x80000001E428B400, v5, &v8);

  if (!v9)
  {
LABEL_11:
    sub_1E325F7A8(&v8, &unk_1ECF296E0);
LABEL_12:
    OUTLINED_FUNCTION_34_31();
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_13_166() & 1) == 0 || !v7)
  {
    goto LABEL_12;
  }

  sub_1E3277E60(0x656372756F73, 0xE600000000000000, v7, &v8);

  if (!v9)
  {
LABEL_13:
    sub_1E325F7A8(&v8, &unk_1ECF296E0);
    return OUTLINED_FUNCTION_32_0();
  }

  if (OUTLINED_FUNCTION_13_166())
  {
    sub_1E3DE5560();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F8DD90()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_6;
  }

  v22[3] = &type metadata for ViewModelKeys.Sports;
  v22[4] = &off_1F5D7BC68;
  v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v20, 30);
  sub_1E3F9F164(v9);

  v10 = OUTLINED_FUNCTION_86_18(v22);
  if (!v17)
  {
LABEL_6:
    sub_1E325F7A8(v23, &unk_1ECF296E0);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_61_1(v10, v11, v12, MEMORY[0x1E69E6158], v13, v14, v15, v16, v21, v22[0]);
  if (OUTLINED_FUNCTION_32_13())
  {
    return sub_1E4205774();
  }

LABEL_7:
  v19 = sub_1E4205784();
  return OUTLINED_FUNCTION_56_3(v19);
}

BOOL sub_1E3F8DE84()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1616))();
  v2 = sub_1E3F8DEE8(1, v1);

  return v2;
}

BOOL sub_1E3F8DEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_1E381AB4C();
  }

  while ((sub_1E4205E84() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1E3F8DF6C()
{
  OUTLINED_FUNCTION_15_0();
  v0 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F8DFA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  v5 = *(v2 + 248);
  v6 = *(v2 + 256);
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3F8E064()
{
  OUTLINED_FUNCTION_14_0();
  swift_weakAssign();
}

void (*sub_1E3F8E0A8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_weakLoadStrong();
  return sub_1E3F8E11C;
}

void sub_1E3F8E11C()
{
  OUTLINED_FUNCTION_106_2();
  swift_weakAssign();
  if (v1)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t sub_1E3F8E1BC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 280) = a1;
}

uint64_t sub_1E3F8E224(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 288) = a1;
}

uint64_t sub_1E3F8E28C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 296) = a1;
}

uint64_t sub_1E3F8E2DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1424))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8E38C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34550);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8E484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1472))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8E534()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34550);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8E618()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3F8E68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1520))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E3F8E734()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3F8E7D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D438);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8E8B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  if (v3)
  {
    v0 = 256;
  }

  else
  {
    v0 = 0;
  }

  return v0 | v2;
}

uint64_t sub_1E3F8E93C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1568))();
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1E3F8E9D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3F8EA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D450);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8EB64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1616))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8EBF8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_115_10();

  OUTLINED_FUNCTION_37_72();
  return sub_1E4200684();
}

uint64_t sub_1E3F8EC70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C8);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8ED68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1664))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8EE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8EF10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1712))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8EFC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8F0B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1760))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8F168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8F260@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1808))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8F310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8F3F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3F8F464@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1856))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8F4E0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3F8F56C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D468);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8F650()
{
  v1 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3F8F688(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F8F708()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_72_3();
  swift_weakAssign();
}

void (*sub_1E3F8F758(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerPresenter;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_weakLoadStrong();
  return sub_1E3F8F7D4;
}

void sub_1E3F8F7D4()
{
  OUTLINED_FUNCTION_106_2();
  swift_weakAssign();
  if (v1)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t sub_1E3F8F85C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1952))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8F90C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8FA04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2000))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F8FAB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8FBAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2048))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3F8FC40()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_115_10();

  OUTLINED_FUNCTION_37_72();
  return sub_1E4200684();
}

uint64_t sub_1E3F8FCB8()
{
  OUTLINED_FUNCTION_31_80();
  v0 = OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3F8FD20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3F8FE04()
{
  v1 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3F8FE3C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_1E3F8FE80())()
{
  OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3();
  return j_j__swift_endAccess;
}

uint64_t sub_1E3F8FED4()
{
  v1 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3F8FF0C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F8FF50()
{
  v1 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3F8FF88(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F8FFEC()
{
  OUTLINED_FUNCTION_31_80();
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_72_3();
  v1(v0);
  return swift_endAccess();
}

void sub_1E3F90064()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v40 = v3;
  v4 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  OUTLINED_FUNCTION_5_0();
  v38 = *(v6 + 16);
  v39 = v11;
  v38(v10, v2 + v11, v4);
  v12 = OUTLINED_FUNCTION_34();
  v14 = v13(v12);
  v15 = MEMORY[0x1E69D3BB0];
  if (v14 == *MEMORY[0x1E69D3B90])
  {
    goto LABEL_5;
  }

  if (v14 != *MEMORY[0x1E69D3B68])
  {
    if (v14 != *MEMORY[0x1E69D3B70])
    {
      if (v14 == *MEMORY[0x1E69D3B78])
      {
        goto LABEL_3;
      }

      if (v14 == *MEMORY[0x1E69D3BA8] || v14 == *MEMORY[0x1E69D3BB0] || v14 == *MEMORY[0x1E69D3BA0] || v14 == *MEMORY[0x1E69D3B80] || v14 == *MEMORY[0x1E69D3B88])
      {
        sub_1E3F8F138();
        goto LABEL_7;
      }

      if (v14 != *MEMORY[0x1E69D3B98])
      {
        OUTLINED_FUNCTION_73_6();
        sub_1E3F8F138();
        sub_1E3F8EF90();
        v36 = OUTLINED_FUNCTION_34();
        v37(v36);
        goto LABEL_7;
      }
    }

LABEL_5:
    OUTLINED_FUNCTION_73_6();
    sub_1E3F8F138();
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_73_6();
LABEL_6:
  sub_1E3F8EF90();
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E0);
  v16 = *(v6 + 72);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E429A240;
  v19 = v18 + v17;
  v20 = *(v6 + 104);
  v20(v19, *v15, v4);
  v20(v19 + v16, *MEMORY[0x1E69D3BA0], v4);
  v20(v19 + 2 * v16, *MEMORY[0x1E69D3B80], v4);
  v20(v19 + 3 * v16, *MEMORY[0x1E69D3B88], v4);
  v20(v19 + 4 * v16, *MEMORY[0x1E69D3BA8], v4);
  v22 = v38;
  v21 = v39;
  v23 = (v38)(v1, v2 + v39, v4);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_27();
  *(v24 - 16) = v1;
  OUTLINED_FUNCTION_89_16();
  LOBYTE(v19) = sub_1E3F8D46C(v25, v26, v27, v28);
  swift_setDeallocating();
  sub_1E38272F4();
  v29 = *(v6 + 8);
  v29(v1, v4);
  v30 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled;
  OUTLINED_FUNCTION_3_0();
  *(v2 + v30) = v19 & 1;
  v22(v1, v2 + v21, v4);
  sub_1E3F9C2EC(&qword_1EE23B680, MEMORY[0x1E69D3BB8]);
  LOBYTE(v30) = sub_1E4205E84();
  v29(v1, v4);
  if ((v30 & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    if ((*(v31 + 1928))())
    {
      sub_1E401C810();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F90508@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  OUTLINED_FUNCTION_15_0();
  a2(0);
  OUTLINED_FUNCTION_2();
  return (*(v7 + 16))(a3, v3 + v6);
}

uint64_t sub_1E3F90580(uint64_t a1)
{
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_5_0();
  v6 = OUTLINED_FUNCTION_69_2();
  v7(v6);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_77();
  v8();
  swift_endAccess();
  sub_1E3F90064();
  v9 = *(v4 + 8);
  v9(a1, v1);
  v10 = OUTLINED_FUNCTION_74();
  return (v9)(v10);
}

uint64_t sub_1E3F906A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel);
  }

  else
  {
    v3 = v0;
    OUTLINED_FUNCTION_8();
    (*(v4 + 1096))();
    type metadata accessor for FollowStateViewModel();
    v5 = OUTLINED_FUNCTION_57();
    v2 = sub_1E38486C0(v5, v6);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E3F9076C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider) == 1)
  {
    sub_1E3F907F0();
    *v1 = v2;
    v1[1] = v3;
    swift_unknownObjectRetain();
    v4 = OUTLINED_FUNCTION_24_4();
    sub_1E3BB95CC(v4);
  }

  v5 = OUTLINED_FUNCTION_32_0();
  sub_1E3BB95DC(v5);
  return OUTLINED_FUNCTION_34();
}

void sub_1E3F907F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FE5D4();
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_9_2();
  v4 = (*(v3 + 1096))();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    OUTLINED_FUNCTION_111();
    v9 = (*(v8 + 1120))();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      OUTLINED_FUNCTION_111();
      v14 = (*(v13 + 1128))();
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        OUTLINED_FUNCTION_111();
        if ((*(v18 + 2120))())
        {
          OUTLINED_FUNCTION_111();
          v28 = (*(v19 + 2144))();
          OUTLINED_FUNCTION_111();
          v21 = (*(v20 + 1104))();
          v23 = v22;
          OUTLINED_FUNCTION_9_2();
          v27.n128_u64[1] = (*(v24 + 1232))();
          v27.n128_u64[0] = v23;
          sub_1E3C05940((v28 & 1) == 0, v6, v7, v11, v12, v16, v17, v21, v29, v27, v25);
          type metadata accessor for Tier1PlusLiveUpdateProvider();
          OUTLINED_FUNCTION_50();
          swift_unknownObjectRetain();
          sub_1E3C05C5C();
        }

        else
        {

          type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
          sub_1E41FE594();

          sub_1E376EE58(v26, 2, v0);
          type metadata accessor for Tier1LiveUpdateProvider();

          j__OUTLINED_FUNCTION_18();

          OUTLINED_FUNCTION_74();
          sub_1E3C05A88();
        }

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F90B14(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider);
  *v3 = a1;
  v3[1] = a2;
  return sub_1E3BB95CC(v4);
}

uint64_t (*sub_1E3F90B34(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1E3F9076C();
  a1[1] = v3;
  return sub_1E3F90B7C;
}

uint64_t sub_1E3F90B7C(uint64_t a1, char a2)
{
  *(*(a1 + 16) + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider) = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    v2 = OUTLINED_FUNCTION_32_0();
    sub_1E3BB95CC(v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_32_0();

    return sub_1E3BB95CC(v4);
  }
}

uint64_t sub_1E3F90C0C()
{
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_36();
  (*(v1 + 2192))();
  sub_1E4205BE4();
  OUTLINED_FUNCTION_49_4();
  v2 = OUTLINED_FUNCTION_13_8();
  v3(v2);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_1E3F90CF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerLayout);
  if (!v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_15_0();
  return *(v1 + 120);
}

void sub_1E3F90D94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v98 = v4;
  v99 = v5;
  v97 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v85 = v9;
  OUTLINED_FUNCTION_138();
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v100 = v11;
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v13 - v12);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460);
  OUTLINED_FUNCTION_0_10();
  v95 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v93 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_0_10();
  v106 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v102 = v22;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_128();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_139();
  *(v0 + 31) = 0;
  *(v0 + 32) = 0;
  swift_weakInit();
  *(v0 + 34) = 0;
  *(v0 + 35) = 0;
  v32 = MEMORY[0x1E69E7CC0];
  *(v0 + 36) = MEMORY[0x1E69E7CC0];
  *(v0 + 37) = v32;
  *(v0 + 38) = v32;
  type metadata accessor for SportsVoiceOverViewModel();
  *(v0 + 39) = sub_1E3FE2E1C();
  v33 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresPublisher;
  v108[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
  sub_1E4200634();
  v34 = *(v30 + 32);
  v34(&v0[v33], v1, v28);
  v35 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__secondaryScoresPublisher;
  sub_1E4200634();
  v34(&v0[v35], v1, v28);
  v108[1] = 0;
  v109 = 3;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v36 = OUTLINED_FUNCTION_66_35();
  v37(v36, v2, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D440);
  sub_1E4200634();
  v38 = OUTLINED_FUNCTION_66_35();
  v39(v38, v88, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C0);
  sub_1E4200634();
  v40 = OUTLINED_FUNCTION_66_35();
  v41(v40, v90, v91);
  v42 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventDateText;
  v108[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
  sub_1E4200634();
  v43 = *(v106 + 32);
  v43(&v3[v42], v102, v103);
  v44 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresVisible;
  LOBYTE(v108[0]) = 1;
  sub_1E4200634();
  v45 = *(v93 + 32);
  v45(&v3[v44], v92, v104);
  v46 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__timeBadgeVisible;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v45(&v3[v46], v92, v104);
  v47 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__useLogoFallback;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v45(&v3[v47], v92, v104);
  v48 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__badgeVariant;
  LOBYTE(v108[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D458);
  sub_1E4200634();
  (*(v95 + 32))(&v3[v48], v94, v96);
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_irregularGameStateTextEnabled] = 0;
  swift_weakInit();
  v49 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventName;
  sub_1E4200634();
  v43(&v3[v49], v102, v103);
  v50 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__fallbackEventTitle;
  v108[0] = 0;
  sub_1E4200634();
  v43(&v3[v50], v102, v103);
  v51 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__allowSportsSpoilers;
  OUTLINED_FUNCTION_104_16();
  sub_1E4200634();
  v45(&v3[v51], v92, v104);
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_eventDateTextEnabled] = 1;
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported] = 0;
  v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveStatsSupported] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_cancellables] = MEMORY[0x1E69E7CD0];
  v52 = *MEMORY[0x1E69D3D80];
  v53 = *(v100 + 104);
  v53(&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport], *MEMORY[0x1E69D3D80], v101);
  v54 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  v55 = *MEMORY[0x1E69D3B98];
  sub_1E4205754();
  OUTLINED_FUNCTION_2();
  (*(v56 + 104))(&v3[v54], v55);
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___followStateViewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider] = xmmword_1E42C0270;
  *&v3[OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerLayout] = 0;

  v57 = sub_1E39BEDCC(v97, v98, v99);
  if (!v57)
  {
    goto LABEL_33;
  }

  v107 = v52;
  if (v99)
  {
    v58 = *(*v99 + 392);

    v60 = v58(v59);

    if (v60)
    {
      if (*v60 == _TtC8VideosUI31SportsCanonicalBannerViewLayout)
      {
        *(v57 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_bannerLayout) = v60;
      }
    }
  }

  else
  {
  }

  v61 = [objc_opt_self() sharedPreferences];
  [v61 sportsScoreSpoilersAllowed];

  v62 = sub_1E3F8FC2C();
  v63 = *(*v57 + 552);
  v105 = v53;
  if (!v63(v62))
  {
    v64 = &off_1F5D7BC68;
    v112 = 0u;
    v113 = 0u;
    goto LABEL_13;
  }

  v110 = &type metadata for ViewModelKeys.Sports;
  v111 = &off_1F5D7BC68;
  v64 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_84_20(14);

  __swift_destroy_boxed_opaque_existential_1(v108);
  if (!*(&v113 + 1))
  {
LABEL_13:
    sub_1E325F7A8(&v112, &unk_1ECF296E0);
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_113_11())
  {
    v65 = v108[0];
    goto LABEL_15;
  }

LABEL_14:
  v65 = 0;
LABEL_15:
  v66 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_isLiveUpdatesSupported;
  v67 = OUTLINED_FUNCTION_3_0();
  *(v57 + v66) = v65;
  if (!v63(v67))
  {
    v112 = 0u;
    v113 = 0u;
    v68 = &unk_1EE2AA000;
    goto LABEL_20;
  }

  v110 = &type metadata for ViewModelKeys.Sports;
  v111 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_84_20(15);

  __swift_destroy_boxed_opaque_existential_1(v108);
  v68 = &unk_1EE2AA000;
  if (!*(&v113 + 1))
  {
LABEL_20:
    sub_1E325F7A8(&v112, &unk_1ECF296E0);
    goto LABEL_21;
  }

  if (!OUTLINED_FUNCTION_113_11())
  {
LABEL_21:
    v69 = 0;
    goto LABEL_22;
  }

  v69 = v108[0];
LABEL_22:
  v70 = v68[268];
  v71 = OUTLINED_FUNCTION_3_0();
  *(v57 + v70) = v69;
  (*(*v57 + 1128))(v71);
  if (v72)
  {
    sub_1E4205BD4();
  }

  else
  {
    v64 = v86;
    v105(v86, v107, v101);
  }

  v73 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport;
  OUTLINED_FUNCTION_11_3();
  (*(v100 + 40))(v57 + v73, v86, v101);
  swift_endAccess();
  sub_1E3F93CA4();
  OUTLINED_FUNCTION_30_1();
  v75 = (*(v74 + 464))();

  if (!v75)
  {
    v75 = MEMORY[0x1E69E7CC0];
  }

  (*(*v57 + 2384))(v75, 1);

  if ((*(*v57 + 1216))(v76))
  {
    OUTLINED_FUNCTION_30_1();
    (*(v77 + 1168))();
    OUTLINED_FUNCTION_30_1();
    v64 = v85;
    (*(v78 + 1240))();
    sub_1E3F91C40();

    sub_1E325F7A8(v85, &qword_1ECF2BD98);
    OUTLINED_FUNCTION_10_152();
    sub_1E3F93634();
  }

  OUTLINED_FUNCTION_30_1();
  (*(v79 + 1096))();
  if (v80)
  {
    v81 = v80;
    if (*(v57 + v66) == 1)
    {
      OUTLINED_FUNCTION_118();
      sub_1E4205004();
      v82 = sub_1E4204FF4();
      OUTLINED_FUNCTION_4_0();
      v83 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_5_10();
      v84 = swift_allocObject();
      v84[2] = v83;
      v84[3] = v64;
      v84[4] = v81;

      OUTLINED_FUNCTION_13_8();
      sub_1E4204F34();
    }

    else
    {
    }
  }

LABEL_33:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F91C40()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E3F989B4();
  if (v0)
  {
    sub_1E3F96094();
    OUTLINED_FUNCTION_25_2();

    return;
  }

  OUTLINED_FUNCTION_30_1();
  v3 = (*(v2 + 464))();
  if (!v3)
  {
LABEL_23:
    MEMORY[0x1EEE9AC00](v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AD0);
    sub_1E4148DE0(sub_1E3F9C0C4);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v4 = v3;
  v5 = sub_1E32AE9B0(v3);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_89_16();
      sub_1E3F8C8B0(v11, v12, v13);
      OUTLINED_FUNCTION_11_5();

      goto LABEL_23;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = OUTLINED_FUNCTION_168();
      MEMORY[0x1E6911E60](v9);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v16 == v14 && v17 == v15)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_97_0();

      if ((v8 & 1) == 0)
      {

        continue;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E3F91F2C()
{
  OUTLINED_FUNCTION_31_1();
  v67 = v2;
  v62 = v4;
  v63 = v3;
  v64 = sub_1E4204D64();
  OUTLINED_FUNCTION_0_10();
  v66 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v65 = v11;
  OUTLINED_FUNCTION_138();
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v60 = v13;
  v61 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v59 = v15 - v14;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_50_1();
  v26 = OUTLINED_FUNCTION_11_6();
  sub_1E379D7E4(v26, v27, &qword_1ECF36000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v65;
    v28 = v66;
    v30 = OUTLINED_FUNCTION_11_6();
    v31 = v64;
    v32(v30);
    sub_1E3E37F30();
    OUTLINED_FUNCTION_22_6();
    v33(v21);
    (*(v28 + 16))(v9, v29, v31);

    v34 = sub_1E41FFC94();
    v35 = sub_1E42067E4();

    v36 = v17;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v63 = v1;
      v38 = v37;
      v69[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_1E3270FC8(v62, v67, v69);
      *(v38 + 12) = 2080;
      sub_1E3F9C2EC(&qword_1ECF3DAD0, MEMORY[0x1E69D3990]);
      v39 = sub_1E4207AB4();
      v40 = v36;
      v42 = v41;
      v43 = v9;
      v44 = *(v66 + 8);
      v44(v43, v31);
      v45 = sub_1E3270FC8(v39, v42, v69);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_1E323F000, v34, v35, "SportsCanonicalBannerScoreboardViewModel unable to retrieve subscription: %s error: %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v40 + 8))(v21, v63);
      v44(v65, v64);
    }

    else
    {

      v55 = *(v66 + 8);
      v55(v9, v31);
      (*(v17 + 8))(v21, v1);
      v55(v65, v31);
    }
  }

  else
  {
    v46 = v67;
    v47 = *v0;
    OUTLINED_FUNCTION_5_0();
    if (swift_weakLoadStrong())
    {
      v48 = sub_1E3E37F30();
      (*(v17 + 16))(v24, v48, v1);

      v49 = sub_1E41FFC94();
      v50 = sub_1E42067E4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v68 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1E3270FC8(v62, v46, &v68);
        _os_log_impl(&dword_1E323F000, v49, v50, "SportsCanonicalBannerScoreboardViewModel successfully retrieved subscription: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v53 = OUTLINED_FUNCTION_97_1();
      v54(v53);
      v56 = v59;
      v57 = sub_1E42056A4();
      sub_1E4205044();
      v58 = sub_1E42056D4();
      sub_1E3F92560(v58);
      OUTLINED_FUNCTION_11_5();

      sub_1E3F8EBE4();
      if (sub_1E3C088F4())
      {
        sub_1E3F928D4();
      }

      sub_1E4205024();
      sub_1E3F92AC8();

      (*(v60 + 8))(v56, v61);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F92560(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  v4 = MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4();
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E3F928AC()
{

  return sub_1E3F8EBE4();
}

void sub_1E3F928D4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_247();
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_7();
  sub_1E3F962DC();
  v4 = sub_1E42056A4();
  sub_1E4205044();

  v5 = *(v1 + 104);
  v6 = OUTLINED_FUNCTION_69_2();
  v5(v6);
  OUTLINED_FUNCTION_0_305();
  LOBYTE(v4) = OUTLINED_FUNCTION_116_13(v7, v8, v9, v10, MEMORY[0x1E69D3BB8]);
  v11 = *(v1 + 8);
  v12 = OUTLINED_FUNCTION_74();
  v11(v12);
  v13 = OUTLINED_FUNCTION_39_3();
  v11(v13);
  if (v4 & 1) != 0 || (v14 = sub_1E42056A4(), sub_1E4205044(), v14, v15 = OUTLINED_FUNCTION_69_2(), v5(v15), OUTLINED_FUNCTION_0_305(), LOBYTE(v14) = OUTLINED_FUNCTION_116_13(v16, v17, v18, v19, MEMORY[0x1E69D3BB8]), v20 = OUTLINED_FUNCTION_74(), v11(v20), v21 = OUTLINED_FUNCTION_39_3(), v11(v21), (v14))
  {
    OUTLINED_FUNCTION_10_152();
    sub_1E3F93634();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F92AC8()
{
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_36();
  (*(v1 + 2216))();
  sub_1E3F97540();
  v2 = OUTLINED_FUNCTION_74();
  return v3(v2);
}

uint64_t sub_1E3F92BB0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E37FAED8(*(v0 + 248), *(v0 + 256));
  swift_weakDestroy();

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_72_3();
  v3(v4);
  (v3)(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__secondaryScoresPublisher, v1);
  v5 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__clockPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__winnerPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448);
  OUTLINED_FUNCTION_10();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_2();
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_72_3();
  v13(v14);
  v15 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresVisible;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v18 = *(v17 + 8);
  v18(v0 + v15, v16);
  v18(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__timeBadgeVisible, v16);
  v18(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__useLogoFallback, v16);
  v19 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__badgeVariant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460);
  OUTLINED_FUNCTION_10();
  (*(v20 + 8))(v0 + v19);
  swift_weakDestroy();
  (v13)(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventName, v11);
  (v13)(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__fallbackEventTitle, v11);
  v18(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__allowSportsSpoilers, v16);

  v21 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v22 + 8))(v0 + v21);
  v23 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  sub_1E4205754();
  OUTLINED_FUNCTION_10();
  (*(v24 + 8))(v0 + v23);

  sub_1E3BB95CC(*(v0 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider));
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F92F20()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E3E37F30();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "SportsCanonicalBannerScoreboardViewModel is deallocated", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v11 = OUTLINED_FUNCTION_57();
  v12(v11);
  v13 = ViewModel.deinit();
  sub_1E37FAED8(*(v13 + 248), *(v13 + 256));
  swift_weakDestroy();

  v14 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresPublisher;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548);
  OUTLINED_FUNCTION_2();
  v17 = *(v16 + 8);
  v17(v13 + v14, v15);
  v17(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__secondaryScoresPublisher, v15);
  v18 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__clockPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D430);
  OUTLINED_FUNCTION_10();
  (*(v19 + 8))(v13 + v18);
  v20 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__winnerPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D448);
  OUTLINED_FUNCTION_10();
  (*(v21 + 8))(v13 + v20);
  v22 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_10();
  (*(v23 + 8))(v13 + v22);
  v24 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventDateText;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_2();
  v27 = *(v26 + 8);
  v27(v13 + v24, v25);
  v28 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__scoresVisible;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v31 = *(v30 + 8);
  v31(v13 + v28, v29);
  v31(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__timeBadgeVisible, v29);
  v31(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__useLogoFallback, v29);
  v32 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__badgeVariant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D460);
  OUTLINED_FUNCTION_10();
  (*(v33 + 8))(v13 + v32);
  swift_weakDestroy();
  v27(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__eventName, v25);
  v27(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__fallbackEventTitle, v25);
  v31(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel__allowSportsSpoilers, v29);

  v34 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v35 + 8))(v13 + v34);
  v36 = OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel_progressStatus;
  sub_1E4205754();
  OUTLINED_FUNCTION_10();
  (*(v37 + 8))(v13 + v36);

  sub_1E3BB95CC(*(v13 + OBJC_IVAR____TtC8VideosUI40SportsCanonicalBannerScoreboardViewModel____lazy_storage___liveUpdateProvider));

  OUTLINED_FUNCTION_25_2();
}