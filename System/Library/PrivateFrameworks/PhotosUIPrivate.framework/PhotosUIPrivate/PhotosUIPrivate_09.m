void sub_1B37DB698()
{
  OUTLINED_FUNCTION_20_11();
  v4 = v0;
  v187[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8550C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v164 - v6;
  v8 = sub_1B3C9A1E8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  sub_1B3C9A558();
  OUTLINED_FUNCTION_0();
  v185 = v15;
  v186 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v183 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v164 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17_13();
  MEMORY[0x1EEE9AC00](v23);
  *&v184 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v164 - v26;
  sub_1B3C9A3B8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v164 - v33;
  if (*(v4 + 112) > 0.0)
  {
    if (*(v4 + 32))
    {
      v35 = *(v4 + 24);
      if (v35)
      {
        v176 = v32;
        v181 = v30;
        v180 = v31;
        v179 = v35;
        sub_1B3C9A2B8();
        v36 = sub_1B3C9A378();
        v182 = v34;
        v37 = sub_1B3C9A388();
        v38 = *(v4 + 56);
        v39 = *(v4 + 64);
        v41 = *(v4 + 80);
        v40 = *(v4 + 88);
        v42 = *(v4 + 96);
        v43 = *(v4 + 104);
        v172 = *(v4 + 48);
        v44 = v172 - v41;
        v45 = 0.0;
        v46 = 0.0;
        if (v42 != 0.0)
        {
          v44 = v44 / v42;
          v46 = v39 / v42;
        }

        v170 = v39;
        v174 = v42;
        v47 = v36;
        v48 = v37;
        v175 = v40;
        v171 = v38;
        v49 = v38 - v40;
        if (v43 != 0.0)
        {
          v49 = v49 / v43;
          v45 = *(v4 + 72) / v43;
        }

        v169 = *(v4 + 72);
        v173 = v43;
        v50 = v44 * v47 + 0.0;
        v51 = v46 * v47;
        v52 = v45 * v48;
        v53 = v48 - (v45 * v48 + v49 * v48 + 0.0);
        v54 = sub_1B3C9A2C8();
        sub_1B3C9A3A8();
        v56 = -v55;
        sub_1B3C9A3A8();
        OUTLINED_FUNCTION_16_12(v57);
        *(v58 - 256) = v50;
        v188.origin.x = v50;
        v177 = v53;
        v188.origin.y = v53;
        v178 = v51;
        v188.size.width = v51;
        v188.size.height = v52;
        CGRectOffset(v188, v56, v59);
        OUTLINED_FUNCTION_18_13();
        sub_1B3C9A398();
        v61 = v60;
        sub_1B3C9A398();
        v63 = v62;
        v189.origin.x = OUTLINED_FUNCTION_5_19();
        if (!CGRectContainsRect(v189, v196))
        {
          v190.origin.x = OUTLINED_FUNCTION_5_19();
          CGRectIntersection(v190, v197);
          OUTLINED_FUNCTION_18_13();
          if (CGRectIsEmpty(v191))
          {
            sub_1B3C9A3C8();

            v64 = sub_1B3C9A538();
            v65 = sub_1B3C9CAC8();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v184 = COERCE_DOUBLE(swift_slowAlloc());
              v187[0] = *&v184;
              *v66 = 136316162;
              v183 = v54;
              v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v51, *&v53, *&v2, *&v3];
              sub_1B3C9C5E8();
              OUTLINED_FUNCTION_14_15();
              OUTLINED_FUNCTION_6_19();
              OUTLINED_FUNCTION_13_14();
              *(v66 + 4) = v67;
              *(v66 + 12) = 2080;
              v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", 0, 0, *&v61, *&v63];
              sub_1B3C9C5E8();
              OUTLINED_FUNCTION_14_15();
              OUTLINED_FUNCTION_6_19();
              OUTLINED_FUNCTION_13_14();
              *(v66 + 14) = v68;
              *(v66 + 22) = 2080;
              v69 = objc_alloc(MEMORY[0x1E696AEC0]);
              v70 = OUTLINED_FUNCTION_3_23();
              v72 = [v71 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v70];
              sub_1B3C9C5E8();
              OUTLINED_FUNCTION_14_15();
              OUTLINED_FUNCTION_6_19();
              OUTLINED_FUNCTION_13_14();
              *(v66 + 24) = v72;
              *(v66 + 32) = 2080;
              v73 = objc_alloc(MEMORY[0x1E696AEC0]);
              v74 = OUTLINED_FUNCTION_2_25();
              v76 = [v75 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v74];
              sub_1B3C9C5E8();
              OUTLINED_FUNCTION_14_15();
              OUTLINED_FUNCTION_6_19();
              OUTLINED_FUNCTION_13_14();
              *(v66 + 34) = v76;
              *(v66 + 42) = 2080;
              v77 = objc_alloc(MEMORY[0x1E696AEC0]);
              v78 = OUTLINED_FUNCTION_4_22();
              v80 = [v79 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v41, *&v78, *&v174, *&v175];
              v81 = sub_1B3C9C5E8();
              v83 = v82;

              v84 = sub_1B3749364(v81, v83, v187);

              *(v66 + 44) = v84;
              _os_log_impl(&dword_1B36F3000, v64, v65, "AOD background rect is empty %s, bgExtent:%s styleRect:%s styleFrame:%s spatialFrame:%s", v66, 0x34u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_3_5();
              OUTLINED_FUNCTION_3_5();
            }

            OUTLINED_FUNCTION_15_15();
            swift_unknownObjectRelease();
            (*(v186 + 8))(v27, v185);
            goto LABEL_25;
          }
        }

        sub_1B3C9A2A8();
        v90 = sub_1B3C9A1C8();
        (*(v10 + 8))(v14, v8);
        if ((v90 & 1) == 0 || (v91 = sub_1B3C9A2E8()) == 0)
        {
LABEL_19:
          v94 = v179;
          v95 = OUTLINED_FUNCTION_10_15();
          [v96 v97];

          swift_unknownObjectRelease();
LABEL_25:
          v88 = *(v180 + 8);
          v102 = v181;
          v89 = v182;
          goto LABEL_26;
        }

        v92 = v91;
        sub_1B3C9A2D8();
        v93 = v181;
        if (__swift_getEnumTagSinglePayload(v7, 1, v181) == 1)
        {
          swift_unknownObjectRelease();
          sub_1B37DC5A8(v7);
          goto LABEL_19;
        }

        v166 = v41;
        (*(v180 + 32))(v176, v7, v93);
        sub_1B3C9A3A8();
        v104 = -v103;
        sub_1B3C9A3A8();
        OUTLINED_FUNCTION_16_12(v105);
        v192.origin.x = *(v106 - 256);
        v192.origin.y = v177;
        v192.size.width = v178;
        v192.size.height = v52;
        v193 = CGRectOffset(v192, v104, v107);
        x = v193.origin.x;
        y = v193.origin.y;
        width = v193.size.width;
        height = v193.size.height;
        sub_1B3C9A398();
        v111 = v110;
        sub_1B3C9A398();
        v194.size.height = v112;
        v194.origin.x = 0.0;
        v194.origin.y = 0.0;
        v165 = v111;
        v194.size.width = v111;
        v164 = v112;
        v198.origin.x = x;
        v198.origin.y = y;
        v198.size.width = width;
        v198.size.height = height;
        v195 = CGRectIntersection(v194, v198);
        v113 = v195.origin.x;
        v114 = v195.origin.y;
        v115 = v195.size.width;
        x = v195.size.height;
        if (CGRectIsEmpty(v195))
        {
          v116 = v184;
          sub_1B3C9A3C8();

          v117 = sub_1B3C9A538();
          v118 = sub_1B3C9CAC8();

          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            height = COERCE_DOUBLE(swift_slowAlloc());
            v187[0] = *&height;
            *v119 = 136316162;
            v120 = objc_alloc(MEMORY[0x1E696AEC0]);
            v121 = [v120 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v113, *&v114, *&v115, *&x];
            sub_1B3C9C5E8();
            v183 = v54;

            OUTLINED_FUNCTION_8_16();
            OUTLINED_FUNCTION_23_5();
            *(v119 + 4) = v121;
            *(v119 + 12) = 2080;
            v122 = objc_alloc(MEMORY[0x1E696AEC0]);
            v123 = [v122 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", 0, 0, *&v165, *&v164];
            sub_1B3C9C5E8();

            OUTLINED_FUNCTION_8_16();
            OUTLINED_FUNCTION_23_5();
            *(v119 + 14) = v123;
            *(v119 + 22) = 2080;
            v124 = objc_alloc(MEMORY[0x1E696AEC0]);
            v125 = OUTLINED_FUNCTION_3_23();
            v127 = [v126 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v125];
            sub_1B3C9C5E8();

            OUTLINED_FUNCTION_8_16();
            OUTLINED_FUNCTION_23_5();
            *(v119 + 24) = v127;
            *(v119 + 32) = 2080;
            v128 = objc_alloc(MEMORY[0x1E696AEC0]);
            v129 = OUTLINED_FUNCTION_2_25();
            v131 = [v130 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v129];
            sub_1B3C9C5E8();

            OUTLINED_FUNCTION_8_16();
            OUTLINED_FUNCTION_23_5();
            *(v119 + 34) = v131;
            *(v119 + 42) = 2080;
            v132 = objc_alloc(MEMORY[0x1E696AEC0]);
            v133 = OUTLINED_FUNCTION_4_22();
            v135 = [v134 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v166, *&v133, *&v174, *&v175];
            sub_1B3C9C5E8();
            OUTLINED_FUNCTION_14_15();
            OUTLINED_FUNCTION_6_19();
            OUTLINED_FUNCTION_13_14();
            *(v119 + 44) = v135;
            _os_log_impl(&dword_1B36F3000, v117, v118, "AOD foreground rect is empty %s, fgExtent:%s styleRect:%s styleFrame:%s spatialFrame:%s", v119, 0x34u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_3_5();
            OUTLINED_FUNCTION_3_5();

            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_15_15();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_11_12();
            v137 = v184;
          }

          else
          {

            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_15_15();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_11_12();
            v137 = v116;
          }
        }

        else
        {
          v187[0] = 0;
          v138 = v179;
          v139 = OUTLINED_FUNCTION_10_15();
          v142 = [v140 v141];
          v143 = v187[0];
          if (v142)
          {
            v184 = v115;
            v187[0] = 0;
            v144 = v143;
            v145 = [v138 partialApplyStyleToTexture:v54 at:v187 subrect:-v51 error:{-v53, v51, v53, v2, v3}];
            v146 = v187[0];
            v147 = v183;
            if (v145)
            {
              v187[0] = 0;
              v148 = v146;
              v149 = [v138 partialApplyStyleToTexture:v92 at:v187 subrect:v113 - v51 error:{v114 - v53, v113, v114, v184, x}];
              v146 = v187[0];
              if (v149)
              {
                v150 = v187[0];
                [v138 endPartialApplyStyleWithCompletion_];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
LABEL_43:
                v162 = *(v180 + 8);
                v163 = v181;
                v162(v176, v181);
                v162(v182, v163);
                goto LABEL_27;
              }
            }

            v153 = v146;
            v152 = sub_1B3C97F28();

            swift_willThrow();
            [v138 endPartialApplyStyleWithCompletion_];
          }

          else
          {
            v151 = v187[0];
            v152 = sub_1B3C97F28();

            swift_willThrow();
            v147 = v183;
          }

          sub_1B3C9A3C8();
          v154 = v152;
          v155 = sub_1B3C9A538();
          v156 = sub_1B3C9CAC8();

          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v187[0] = v158;
            *v157 = 136446210;
            swift_getErrorValue();
            v159 = sub_1B3C9D748();
            v161 = sub_1B3749364(v159, v160, v187);

            *(v157 + 4) = v161;
            _os_log_impl(&dword_1B36F3000, v155, v156, "Failed to apply style: %{public}s.", v157, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v158);
            OUTLINED_FUNCTION_3_5();
            OUTLINED_FUNCTION_3_5();

            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_15_15();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_11_12();
          v137 = *&v147;
        }

        v136(*&v137, v185);
        goto LABEL_43;
      }

      sub_1B3C9A3C8();
      v98 = sub_1B3C9A538();
      v99 = sub_1B3C9CAC8();
      if (OUTLINED_FUNCTION_22_5(v99))
      {
        *OUTLINED_FUNCTION_12_13() = 0;
        OUTLINED_FUNCTION_21_10(&dword_1B36F3000, v100, v101, "Failed to create or prepare style engine, cannot render effect");
        OUTLINED_FUNCTION_3_5();
      }

      OUTLINED_FUNCTION_11_12();
      v89 = v1;
    }

    else
    {
      sub_1B3C9A3C8();
      v85 = sub_1B3C9A538();
      v86 = sub_1B3C9CAA8();
      if (OUTLINED_FUNCTION_22_5(v86))
      {
        v87 = OUTLINED_FUNCTION_12_13();
        *v87 = 0;
        _os_log_impl(&dword_1B36F3000, v85, v86, "Style engine not yet prepared, skipping inactive effect", v87, 2u);
        OUTLINED_FUNCTION_3_5();
      }

      OUTLINED_FUNCTION_11_12();
      v89 = v21;
    }

    v102 = v185;
LABEL_26:
    v88(v89, v102);
  }

LABEL_27:
  OUTLINED_FUNCTION_19_11();
}

uint64_t sub_1B37DC540()
{
  sub_1B37DC508();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1B37DC5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8550C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B37DC644(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t OUTLINED_FUNCTION_6_19()
{

  return sub_1B3749364(v0, v1, (v2 - 168));
}

unint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_1B3749364(v0, v1, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_14()
{
}

void OUTLINED_FUNCTION_14_15()
{
}

void OUTLINED_FUNCTION_15_15()
{
  v2 = *(v0 - 272);
}

void OUTLINED_FUNCTION_21_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_22_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_5()
{
}

uint64_t static OneUpChromeBackgroundColorOverrideMode.mode(isAnimatingPresentationSize:isChromeCoveringContent:hasUserZoomedIn:isVideoTimelineControlInteracting:)@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, char a4@<W3>, char *a5@<X8>)
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a2 & a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (result)
  {
    v6 = 3;
  }

  *a5 = v6;
  return result;
}

uint64_t OneUpChromeBackgroundColorOverrideMode.hashValue.getter()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

unint64_t sub_1B37DC928()
{
  result = qword_1EB855140;
  if (!qword_1EB855140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855140);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeBackgroundColorOverrideMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id sub_1B37DCA58(void *a1, uint64_t a2, char a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    [v7 size];
    v10 = v9;
    [v7 size];
    v12 = v11;

    if (v12 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = *&a2;
    if (a3)
    {
      v13 = 1080.0;
    }
  }

  return [a1 sizeWithMinDimension_];
}

void sub_1B37DCB1C(char a1)
{
  v2 = *(v1 + 48);
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v6[4] = sub_1B37DEFB8;
      v6[5] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1B386A148;
      v6[3] = &block_descriptor_30;
      v5 = _Block_copy(v6);

      [v3 performChanges_];
      _Block_release(v5);
    }
  }
}

void sub_1B37DCC00(void *a1, char a2)
{
  v4 = sub_1B3C9C5A8();
  [a1 setPerformingExportOperation:a2 & 1 withIdentifier:v4];
}

void sub_1B37DCC78(char a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  sub_1B37DCB1C(v2);
}

uint64_t sub_1B37DCC88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 24) = a1;
  swift_unknownObjectWeakAssign();

  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1B37DCCFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 48) & 1) == 0)
  {
    v6 = result;
    sub_1B37DCC78(1);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = sub_1B3C9CBF8();
      }

      OUTLINED_FUNCTION_20();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a2;
      *(v10 + 32) = a3;
      v11 = v6;

      sub_1B370A6FC(a2);
      sub_1B37DCEB8(v8, sub_1B37DEFC0, v10);
    }
  }

  return result;
}

uint64_t sub_1B37DCE3C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B37DCC78(0);
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_1B37DCEB8(void *a1, void (*a2)(void), void (*a3)(void))
{
  v6 = v3;
  v95 = a2;
  v91 = a1;
  v8 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v79 - v16;
  v18 = *(v3 + 24);
  [objc_msgSend(v18 timeline];
  OUTLINED_FUNCTION_58();
  swift_unknownObjectRelease();
  if (v5 >= v4)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v90 = a3;
    v22 = sub_1B37DD648(v18);
    if (v22)
    {
      v88 = v22;
      v89 = v21;
      sub_1B37DDCAC(v22, v17);
      v23 = [v18 resourcesDataSourceManager];
      v24 = [v23 dataSource];

      v25 = [v24 keyAssetResource];
      v92 = v17;
      v93 = v8;
      if (v25)
      {
        v26 = [v25 px_storyResourceDisplayAsset];
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
      }

      v27 = [v18 extendedTraitCollection];
      [v27 displayScale];

      v28 = objc_allocWithZone(MEMORY[0x1E69C3AD0]);
      v29 = OUTLINED_FUNCTION_0_25();
      v32 = [v30 v31];
      v82 = v32;
      v33 = [v18 extendedTraitCollection];
      v34 = [v33 snapshot];

      v35 = objc_opt_self();
      v36 = objc_allocWithZone(MEMORY[0x1E69C3AE0]);
      v37 = v32;
      v38 = [v36 initWithUserInterfaceOrientation_];
      v85 = v37;
      v39 = [v35 defaultAspectRatioWithFullSizePlayerAspect:v37 orientation:v38];

      v87 = v10;
      v40 = *(v10 + 16);
      v41 = v94;
      v81 = v10 + 16;
      v80 = v40;
      v40(v94, v92, v93);
      v42 = *(v6 + 40);
      objc_allocWithZone(type metadata accessor for StoryExportActivityItemProvider());
      swift_unknownObjectRetain();
      v43 = v39;
      v44 = v34;
      v45 = v88;
      swift_unknownObjectRetain();
      v88 = v45;
      v84 = v43;
      v83 = v44;
      v86 = v26;
      v46 = sub_1B373CDC4(v41, v45, v43, v44, v26, v42);
      v47 = [v18 errorReporter];
      v48 = objc_allocWithZone(type metadata accessor for StoryExportActivityViewController());
      v49 = sub_1B37D0B2C(v46, v47, v82);
      v82 = v46;
      swift_unknownObjectWeakAssign();
      v50 = v49;
      v51 = v89;
      [v89 presentViewController:v50 animated:1 completion:0];
      [v91 bounds];
      OUTLINED_FUNCTION_58();
      v52 = [v51 view];
      v53 = OUTLINED_FUNCTION_0_25();
      [v54 v55];
      OUTLINED_FUNCTION_58();

      v56 = [v50 popoverPresentationController];
      if (v56)
      {
        v57 = v56;
        v58 = [v51 view];
        [v57 setSourceView_];
      }

      v59 = [v50 popoverPresentationController];

      v79 = v50;
      v60 = OUTLINED_FUNCTION_0_25();
      [v61 v62];

      OUTLINED_FUNCTION_20();
      v91 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_20();
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_20();
      v64 = swift_allocObject();
      swift_weakInit();
      v65 = v94;
      v80(v94, v92, v93);
      v66 = v87;
      v67 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v68 = (v12 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      v72 = v71 + v67;
      v73 = v93;
      (*(v66 + 32))(v72, v65, v93);
      *(v71 + v68) = v64;
      *(v71 + v69) = v63;
      *(v71 + v70) = v91;
      v74 = (v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8));
      v75 = v95;
      v76 = v90;
      *v74 = v95;
      v74[1] = v76;
      aBlock[4] = sub_1B37DEBFC;
      aBlock[5] = v71;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B37D2298;
      aBlock[3] = &block_descriptor_33;
      v77 = _Block_copy(aBlock);
      sub_1B370A6FC(v75);

      v78 = v79;
      [v79 setCompletionWithItemsHandler_];

      _Block_release(v77);
      swift_unknownObjectRelease();

      (*(v66 + 8))(v92, v73);
      return;
    }
  }

  if (v95)
  {
    v95();
  }
}

id sub_1B37DD648(void *a1)
{
  v2 = [a1 configuration];
  if (![v2 assetCollection])
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v25 = v2;
    goto LABEL_9;
  }

  v4 = v3;
  v55 = v2;
  swift_unknownObjectRetain();
  result = [v4 photoLibrary];
  if (result)
  {
    v6 = result;
    v7 = [result librarySpecificFetchOptions];

    v9 = OUTLINED_FUNCTION_3_24(v8, sel_setIncludePendingMemories_);
    v10 = OUTLINED_FUNCTION_3_24(v9, sel_setIncludeRejectedMemories_);
    v11 = OUTLINED_FUNCTION_3_24(v10, sel_setIncludeLocalMemories_);
    OUTLINED_FUNCTION_3_24(v11, sel_setIncludeStoryMemories_);
    v12 = objc_opt_self();
    v13 = [v4 assetCollectionType];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B3CF6CE0;
    v15 = [v4 localIdentifier];
    v16 = sub_1B3C9C5E8();
    v18 = v17;

    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = MEMORY[0x1E69E6158];
    v20 = sub_1B3C9C778();

    v21 = [v12 fetchAssetCollectionsWithType:v13 localIdentifiers:v20 options:v7];

    v22 = [v21 firstObject];
    if (!v22)
    {
      v54 = v7;
      type metadata accessor for PXStoryError(0);
      v56[12] = 10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8571B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B3CF6CE0;
      *(inited + 32) = sub_1B3C9C5E8();
      *(inited + 40) = v32;
      sub_1B3C9D378();

      v56[0] = 0xD00000000000001BLL;
      v56[1] = 0x80000001B3D181A0;
      v33 = [v4 localIdentifier];
      swift_unknownObjectRelease();
      v34 = sub_1B3C9C5E8();
      v36 = v35;

      MEMORY[0x1B8C69C10](v34, v36);

      *(inited + 72) = v19;
      *(inited + 48) = 0xD00000000000001BLL;
      *(inited + 56) = 0x80000001B3D181A0;
      sub_1B3C9C4D8();
      sub_1B37DEF60();
      sub_1B3C97F08();
      v37 = v56[0];
      v38 = sub_1B3C9CAC8();
      if (qword_1EB84FFB8 != -1)
      {
        swift_once();
      }

      v39 = qword_1EB878C60;
      if (os_log_type_enabled(qword_1EB878C60, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v56[0] = v41;
        *v40 = 136315138;
        v42 = v37;
        v43 = [v4 localIdentifier];
        v44 = sub_1B3C9C5E8();
        v46 = v45;

        v47 = sub_1B3749364(v44, v46, v56);

        *(v40 + 4) = v47;
        v37 = v42;
        _os_log_impl(&dword_1B36F3000, v39, v38, "cannot find asset collection %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x1B8C6EC70](v41, -1, -1);
        MEMORY[0x1B8C6EC70](v40, -1, -1);
      }

      v48 = [a1 errorReporter];
      if (v48)
      {
        v49 = v48;
        v50 = v37;
        v51 = sub_1B3C97F18();

        v52 = sub_1B3C9C5A8();
        [v49 setError:v51 forComponent:v52];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
      return 0;
    }

    swift_unknownObjectRelease();
    v23 = v22;
    v2 = v55;
    v24 = [v55 keyAsset];
    v25 = [objc_allocWithZone(MEMORY[0x1E69C3AA0]) initWithAssetCollection:v23 keyAsset:v24];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v25)
    {

      return 0;
    }

LABEL_9:
    v26 = v25;
    v27 = [a1 recipeManager];
    v28 = [v27 recipeAttributes];

    if ((v28 & 2) != 0)
    {
      v29 = [a1 currentSongResource];
      if (v29)
      {
        v30 = [v29 px_storyResourceSongAsset];
        swift_unknownObjectRelease();
      }

      sub_1B37DEF1C();
      v53 = sub_1B3851178();
      [v26 setSongsConfiguration_];
    }

    else
    {
    }

    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37DDCAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_1B3C98068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = NSTemporaryDirectory();
  sub_1B3C9C5E8();

  sub_1B3C98008();

  v15 = [a1 assetCollection];
  if (v15)
  {
    v16 = v15;
    v27[1] = a2;
    v17 = [v15 localizedTitle];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1B3C9C5E8();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = [v16 localizedSubtitle];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1B3C9C5E8();
    }

    else
    {
      v24 = 0;
    }

    sub_1B37DE770(v19, v21, v24);

    (*(v8 + 16))(v6, v13, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    v10 = v27[0];
    sub_1B3C97FF8();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B37DE770(0, 0, 0);
    (*(v8 + 16))(v6, v13, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    sub_1B3C97FF8();
  }

  sub_1B37DEEB4(v6);
  sub_1B3C97FE8();
  v25 = *(v8 + 8);
  v25(v10, v7);
  return (v25)(v13, v7);
}

uint64_t sub_1B37DDFE0(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  v36[3] = *MEMORY[0x1E69E9840];
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1B3C98018();
  v36[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v36];

  if (v13)
  {
    v14 = v36[0];
  }

  else
  {
    v15 = v36[0];
    v16 = sub_1B3C97F28();

    swift_willThrow();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a4)
    {
      v18 = *(result + 24);
      v19 = a4;
      v20 = [v18 errorReporter];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1B3C97F18();
        v23 = sub_1B3C9C5A8();
        [v21 setError:v22 forComponent:v23];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = [Strong activity];

      if (v26)
      {
        swift_beginAccess();
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          v35 = a2;
          v29 = [swift_getObjCClassFromObject() activityCategory];
          v30 = [objc_allocWithZone(MEMORY[0x1E69C3AE8]) init];
          MEMORY[0x1EEE9AC00](v30);
          v34[2] = v26;
          v34[3] = v29;
          objc_allocWithZone(MEMORY[0x1E69C3AC0]);
          v31 = v30;
          v32 = v28;
          v33 = sub_1B37DECF8(v32, v31, sub_1B37DECF0, v34);
          if (a4)
          {
            a4 = sub_1B3C97F18();
          }

          [objc_opt_self() collectDataContinuationAnalyticsForExportWithConfiguration:v33 withSuccess:v35 & 1 error:a4];

          v26 = a4;
        }
      }
    }

    if (a9)
    {
      a9();
    }
  }

  return result;
}

void sub_1B37DE328(void *a1, id a2)
{
  v3 = [a2 activityType];
  [a1 setActivityType_];

  v4 = sub_1B3C9C5A8();

  [a1 setActivityCategory_];
}

id sub_1B37DE418(void *a1)
{
  result = sub_1B37DD648(a1);
  if (result)
  {
    v3 = result;
    v4 = sub_1B37DE4C4(a1);
    MEMORY[0x1EEE9AC00](v4);
    v6[2] = a1;
    v5 = objc_allocWithZone(MEMORY[0x1E69C3AC0]);
    return sub_1B37DECF8(v3, v4, sub_1B37DEFCC, v6);
  }

  return result;
}

id sub_1B37DE4C4(void *a1)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69C3AE8]) init];
  [v4 setFrameRate_];
  [objc_msgSend(a1 timeline)];
  OUTLINED_FUNCTION_58();
  swift_unknownObjectRelease();
  if (v2 >= v1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [a1 extendedTraitCollection];
  [v6 displayScale];

  v7 = objc_allocWithZone(MEMORY[0x1E69C3AD0]);
  v8 = OUTLINED_FUNCTION_0_25();
  v11 = [v9 v10];
  v12 = objc_opt_self();
  v13 = objc_allocWithZone(MEMORY[0x1E69C3AE0]);
  v14 = v11;
  v15 = [v13 initWithUserInterfaceOrientation_];
  v16 = [v12 defaultAspectRatioWithFullSizePlayerAspect:v14 orientation:v15];

  sub_1B37DCA58(v16, 0, 1);
  [v4 setResolution_];
  v17 = [a1 extendedTraitCollection];
  v18 = [v17 snapshot];

  [v4 setFullSizePlayerExtendedTraitCollectionSnapshot_];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    OUTLINED_FUNCTION_3_24(v19, sel_setPrefersExportLayoutMatchesPlayback_);
    [v20 scale];
    [v4 setScale_];
    v21 = v16;
  }

  else
  {
    v21 = v18;
    v18 = v14;
    v14 = v16;
  }

  return v4;
}

uint64_t sub_1B37DE708(void *a1, id a2)
{
  [a1 setErrorReporter_];

  return swift_unknownObjectRelease();
}

void sub_1B37DE770(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  v35 = sub_1B3C97D98();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultHelper];

  v9 = sub_1B3C9C5A8();

  v10 = [v8 displayableTextForTitle:v9 intent:1];

  v11 = sub_1B3C9C5E8();
  v13 = v12;

  v41 = v11;
  v42 = v13;
  sub_1B3C97D88();
  sub_1B371B158();
  v14 = sub_1B3C9D1C8();
  v15 = *(v4 + 8);
  v33 = v4 + 8;
  v34 = v16;
  v17 = v35;
  v15(v7, v35);

  v18 = sub_1B3C9C5A8();

  v36 = v8;
  v19 = [v8 displayableTextForTitle:v18 intent:1];

  v20 = sub_1B3C9C5E8();
  v22 = v21;

  v41 = v20;
  v42 = v22;
  sub_1B3C97D88();
  v23 = sub_1B3C9D1C8();
  v25 = v24;
  v15(v7, v17);
  v26 = v34;

  v27 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v26) & 0xF;
  }

  v28 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v28 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    if (v28)
    {
      v41 = v14;
      v42 = v26;

      MEMORY[0x1B8C69C10](2108704, 0xE300000000000000);
      MEMORY[0x1B8C69C10](v23, v25);
      v14 = v41;
      v29 = v42;
    }

    else
    {

      v29 = v26;
    }
  }

  else if (v28)
  {

    v14 = v23;
    v29 = v25;
  }

  else
  {
    v29 = 0xEB0000000074726FLL;
    v14 = 0x70784579726F7453;
  }

  v41 = v14;
  v42 = v29;
  v39 = 47;
  v40 = 0xE100000000000000;
  v37 = 58;
  v38 = 0xE100000000000000;
  sub_1B3C9D1D8();

  v30 = sub_1B3C9C5A8();
  v31 = sub_1B3C9C5A8();
  v32 = [v30 stringByAppendingPathExtension_];

  if (v32)
  {

    sub_1B3C9C5E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B37DEB6C()
{
  MEMORY[0x1B8C6EDB0](v0 + 16);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B37DEBA4()
{
  sub_1B37DEB6C();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t sub_1B37DEBFC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1B3C98068() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B37DDFE0(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B37DECF8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v14[4] = sub_1B37DEE38;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B37DEE60;
  v14[3] = &block_descriptor_24;
  v11 = _Block_copy(v14);

  v12 = [v5 initWithConfiguration:a1 videoOptions:a2 builder:v11];

  _Block_release(v11);

  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if ((a2 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37DEE60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B37DEEB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B37DEF1C()
{
  result = qword_1EB857220;
  if (!qword_1EB857220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB857220);
  }

  return result;
}

unint64_t sub_1B37DEF60()
{
  result = qword_1EB852340;
  if (!qword_1EB852340)
  {
    type metadata accessor for PXStoryError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852340);
  }

  return result;
}

id OUTLINED_FUNCTION_3_24(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1B37DEFFC()
{
  v1 = sub_1B3C981D8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = sub_1B3C98248();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853720);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  (*(v10 + 16))(v14, v0, v8);
  v18 = MEMORY[0x1E6969B50];
  sub_1B37E5D58(&unk_1EB855400, MEMORY[0x1E6969B50]);
  sub_1B3C9C738();
  sub_1B37E5D58(&unk_1EB853730, v18);
  OUTLINED_FUNCTION_20_12();
  sub_1B37E5D58(&unk_1EB855410, MEMORY[0x1E6969B18]);
  OUTLINED_FUNCTION_18_14();
  v31 = v19;
  v20 = sub_1B3C9C528();
  v21 = *(v3 + 8);
  v32 = v3 + 8;
  v21(v7, v1);
  v22 = 0;
  if ((v20 & 1) == 0)
  {
    v30[3] = v20;
    v23 = OUTLINED_FUNCTION_15_16();
    v22 = *v24;
    v23(v33, 0);
    sub_1B3C9C9E8();
    while (1)
    {
      OUTLINED_FUNCTION_20_12();
      OUTLINED_FUNCTION_18_14();
      v25 = sub_1B3C9C528();
      v21(v7, v1);
      if (v25)
      {
        break;
      }

      v26 = OUTLINED_FUNCTION_15_16();
      v28 = *v27;
      v26(v33, 0);
      sub_1B3C9C9E8();
      if (v22 <= v28)
      {
        v22 = v28;
      }
    }
  }

  sub_1B370EEB0(v17, &unk_1EB853720);
  return v22;
}

uint64_t sub_1B37DF328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_1B37DF36C()
{
  result = -2.0;
  xmmword_1EB8551B0 = xmmword_1B3D03F80;
  *&qword_1EB8551C0 = xmmword_1B3D03F80;
  return result;
}

double sub_1B37DF384()
{
  result = -14.0;
  xmmword_1EB8551D0 = xmmword_1B3D03F90;
  *&qword_1EB8551E0 = xmmword_1B3D03F90;
  return result;
}

id sub_1B37DF39C()
{
  [objc_opt_self() systemFontSize];
  result = PXMonospacedNumberFontWithSize();
  qword_1EB8551F0 = result;
  return result;
}

id sub_1B37DF3DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  if (qword_1EB850060 != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  [v0 setTextAlignment_];
  return v0;
}

id sub_1B37DF4B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [v0 layer];
  [v1 setMasksToBounds_];

  v2 = [objc_opt_self() systemYellowColor];
  [v0 setBackgroundColor_];

  return v0;
}

void sub_1B37DF554(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label;
  *&v4[v9] = sub_1B37DF3DC();
  v10 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground;
  *&v4[v10] = sub_1B37DF4B0();
  v22.receiver = v4;
  v22.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  v11 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFB680;
  v13 = *&v11[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground];
  *(inited + 32) = v13;
  v14 = *&v11[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label];
  *(inited + 40) = v14;
  v15 = v11;
  v16 = v13;
  v17 = v14;
  v18 = [v15 contentView];
  for (i = 0; ; ++i)
  {
    if (i == 2)
    {

      swift_setDeallocating();
      sub_1B389E7C0();

      sub_1B37DF93C();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v20 = MEMORY[0x1B8C6A930](i, inited);
LABEL_6:
    v21 = v20;
    [v18 addSubview_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(inited + 8 * i + 32);
    goto LABEL_6;
  }

  __break(1u);
}

id sub_1B37DF7F8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_1B37DF894(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  return sub_1B37DF93C();
}

void sub_1B37DF8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label);
  sub_1B371B158();
  v2 = sub_1B3C9D1B8();
  sub_1B383C9E4(v2, v3, v1);
}

id sub_1B37DF93C()
{
  v1 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label];
  v2 = [v0 isSelected];
  v3 = objc_opt_self();
  v4 = &selRef_blackColor;
  if (!v2)
  {
    v4 = &selRef_secondaryLabelColor;
  }

  v5 = [v3 *v4];
  [v1 setTextColor_];

  if ([v0 isHighlighted] && !objc_msgSend(v0, sel_isSelected))
  {
    v6 = 0.7;
  }

  else
  {
    v6 = 1.0;
  }

  [v1 setAlpha_];
  v7 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground];
  v8 = [v0 isSelected];
  v9 = 0.0;
  if (v8)
  {
    v9 = 1.0;
  }

  return [v7 setAlpha_];
}

void sub_1B37DFA54()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label];
  [v1 sizeToFit];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  Width = CGRectGetWidth(v29);
  [v1 frame];
  v12 = (Width - CGRectGetWidth(v30)) * 0.5;
  v13 = [v0 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v31.origin.x = v15;
  v31.origin.y = v17;
  v31.size.width = v19;
  v31.size.height = v21;
  Height = CGRectGetHeight(v31);
  [v1 frame];
  v23 = (Height - CGRectGetHeight(v32)) * 0.5;
  [v1 frame];
  [v1 setFrame_];
  [v1 frame];
  if (qword_1EB850050 != -1)
  {
    swift_once();
  }

  sub_1B3C9CEB8();
  v25 = v24;
  v26 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground];
  [v26 frame];
  [v26 setFrame_];
  [v1 center];
  [v26 setCenter_];
  v27 = [v26 layer];
  [v27 setCornerRadius_];
}

uint64_t sub_1B37DFD00()
{
  sub_1B371B158();
  sub_1B3C9D1B8();
  v0 = sub_1B3C9C5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CF6CE0;
  v2 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v3 = qword_1EB850060;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB8551F0;
  *(inited + 64) = sub_1B3710718(0, &unk_1EB8553D0);
  *(inited + 40) = v5;
  type metadata accessor for Key(0);
  sub_1B37E5D58(&qword_1EB850B88, type metadata accessor for Key);
  v6 = v5;
  sub_1B3C9C4D8();
  v7 = sub_1B3C9C4A8();

  [v0 sizeWithAttributes_];

  if (qword_1EB850050 != -1)
  {
    swift_once();
  }

  sub_1B3C9CEB8();
  if (qword_1EB850058 != -1)
  {
    swift_once();
  }

  return sub_1B3C9CEB8();
}

void sub_1B37DFF4C()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_label;
  *(v0 + v1) = sub_1B37DF3DC();
  v2 = OBJC_IVAR____TtC15PhotosUIPrivateP33_8BF9023972CBF50D2A1FAA417D58CBA832PUAudioMixModeCollectionViewCell_labelBackground;
  *(v0 + v2) = sub_1B37DF4B0();
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B37DFFF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUAudioMixModeCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B37E009C()
{
  v0 = [objc_opt_self() currentTheme];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_1B3C9C5A8();
  v3 = PULocalizedString(v2);

  v4 = sub_1B3C9C5E8();
  v6 = v5;

  v13 = v4;
  sub_1B371B158();
  v7 = sub_1B3C9D1B8();
  v9 = v8;

  sub_1B383C9E4(v7, v9, v1);
  if (v0)
  {
    v10 = [v0 photoEditingTopToolbarToolLabelButtonColor];
    [v1 setTextColor_];

    v11 = [v0 topToolbarToolLabelFont];
  }

  else
  {
    [v1 setTextColor_];
    v11 = 0;
  }

  [v1 setFont_];
  swift_unknownObjectRelease();

  return v1;
}

id sub_1B37E0238()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  [v0 setMinimumLineSpacing_];
  [v0 setMinimumInteritemSpacing_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v0 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for PUAudioMixModeCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1B3C9C5A8();
  [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  v4 = objc_opt_self();
  v5 = v1;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  v7 = v5;
  [v7 setContentInsetAdjustmentBehavior_];
  [v7 setAllowsSelection_];
  [v7 setAllowsMultipleSelection_];
  [v7 setShowsHorizontalScrollIndicator_];
  [v7 setShowsVerticalScrollIndicator_];
  [v7 setDecelerationRate_];

  return v7;
}

id sub_1B37E03F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  result = [objc_opt_self() currentTheme];
  if (result)
  {
    v2 = [result photoEditingToolbarMainButtonColor];
    swift_unknownObjectRelease();
    [v0 setTextColor_];

    [objc_opt_self() systemFontSize];
    v3 = PXMonospacedNumberFontWithSize();
    [v0 setFont_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37E04E0()
{
  v1 = sub_1B37E0774();
  v2 = sub_1B3C9C5E8();
  v4 = v3;
  if (v2 == sub_1B3C9C5E8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B3C9D6A8();
  }

  v8 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
  if ((v7 & 1) != 0 || (v9 = 1.0, (v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] & 1) == 0) && ([v0 isPerformingLiveInteraction] & 1) == 0)
  {
    v9 = 0.0;
  }

  return [v8 setAlpha_];
}

id sub_1B37E05E4()
{
  v0 = [objc_opt_self() createEditSlider];
  [v0 setMinimumValue_];
  [v0 setMaximumValue_];
  if (qword_1EB850068 != -1)
  {
    swift_once();
  }

  [v0 setMarkedValue_];
  return v0;
}

id sub_1B37E0694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1B3C9C5A8();

  if (a4)
  {
    v10 = sub_1B3C9C5A8();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B3C9C5A8();

  v12 = [swift_getObjCClassFromMetadata() buttonWithImageNamed:v9 selectedImageNamed:v10 accessibilityLabel:v11 spec:a7];

  return v12;
}

id sub_1B37E0774()
{
  v1 = [v0 compositionController];
  v2 = [v1 cinematicAudioAdjustmentController];

  if (v2)
  {
    v3 = [v2 renderingStyle];

    return v3;
  }

  else
  {
    v5 = *MEMORY[0x1E69BDFB8];

    return v5;
  }
}

void sub_1B37E0818()
{
  v1 = [v0 compositionController];
  v2 = [v1 cinematicAudioAdjustmentController];

  if (v2)
  {
    [v2 dialogMixBias];
  }

  else
  {
    v3 = sub_1B37E0774();
    v4 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
    swift_beginAccess();
    sub_1B3898F60(v3, *&v0[v4]);
    v6 = v5;
    swift_endAccess();

    if ((v6 & 1) != 0 && qword_1EB850068 != -1)
    {
      swift_once();
    }
  }
}

void sub_1B37E0930()
{
  v0 = *MEMORY[0x1E69BDFB0];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 dialogMixBiasKey];
  if (!v3)
  {
    sub_1B3C9C5E8();
    v3 = sub_1B3C9C5A8();
  }

  v4 = [objc_opt_self() defaultValueForAdjustmentKey:v2 settingKey:v3];

  if (v4)
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
    sub_1B370ED44(&v5, &v6);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

id sub_1B37E0A3C()
{
  v1 = [v0 compositionController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 adjustmentControllerForKey_];

    if (v3)
    {
      v2 = [v3 enabled];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_1B37E0ACC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider) != (a1 & 1))
  {
    [v1 setPerformingLiveInteraction_];
    v2 = [v1 isPerformingLiveInteraction];
    sub_1B3710718(0, &qword_1EB8553C0);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    v4 = v3;
    v5 = &selRef_hideUIForInteractionFadeOutDuration;
    if (!v2)
    {
      v5 = &selRef_hideUIForInteractionFadeInDuration;
    }

    [v3 *v5];
    v7 = v6;

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v19 = sub_1B37E5D24;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B370C014;
    v18 = &block_descriptor_14_0;
    v10 = _Block_copy(&v15);
    v11 = v1;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v19 = sub_1B37E5D2C;
    v20 = v12;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B386A14C;
    v18 = &block_descriptor_20_0;
    v13 = _Block_copy(&v15);
    v14 = v11;

    [v8 animateWithDuration:4 delay:v10 options:v13 animations:v7 completion:0.0];
    _Block_release(v13);
    _Block_release(v10);
  }
}

id sub_1B37E0CF0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView);
  v3 = 1.0;
  if (*(a1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider))
  {
    v3 = 0.0;
  }

  [v2 setAlpha_];
  return sub_1B37E04E0();
}

void sub_1B37E0D48(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8553C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1B3C98298();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider) == 1)
  {
    v12 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView);
    v13 = [v12 indexPathsForSelectedItems];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1B3C9C788();

      sub_1B387CB04(v15, v6);

      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        v16 = sub_1B3C98258();
        [v12 scrollToItemAtIndexPath:v16 atScrollPosition:16 animated:1];

        (*(v8 + 8))(v11, v7);
        return;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    }

    sub_1B370EEB0(v6, &qword_1EB8553C8);
  }
}

void sub_1B37E0F60(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider) = a1;
  sub_1B37E0ACC(v2);
}

id sub_1B37E0F78()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result setUserInteractionEnabled_];

  v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
  [v3 setDelegate_];
  [v3 setDataSource_];
  v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView];
  [v4 addSubview_];
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [result addSubview_];

  result = [v0 toolContainerView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result addSubview_];

  v7 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
  [v7 setDelegate_];
  result = [v0 toolContainerView];
  if (result)
  {
    v8 = result;
    [result addSubview_];

    v9 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton];
    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_1B37E5D50;
    v12[5] = v10;
    OUTLINED_FUNCTION_1_0();
    v12[1] = 1107296256;
    v12[2] = sub_1B37D2F2C;
    v12[3] = &block_descriptor_49;
    v11 = _Block_copy(v12);

    [v9 setActionBlock_];
    _Block_release(v11);
    sub_1B37E13C8();
    sub_1B37E16FC();
    sub_1B37E1994();
    return [v9 setSelected_];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1B37E11CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1B37E0A3C();
    v3 = [v1 compositionController];
    v4 = v3;
    if (v2)
    {
      if (v3)
      {
        v5 = *MEMORY[0x1E69BE048];
        [v4 removeAdjustmentWithKey_];
      }
    }

    else if (v3)
    {
      v6 = *MEMORY[0x1E69BE048];
      aBlock[4] = sub_1B37E1378;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B37E137C;
      aBlock[3] = &block_descriptor_52;
      v7 = _Block_copy(aBlock);
      v8 = v6;

      [v4 modifyAdjustmentWithKey:v8 modificationBlock:v7];

      _Block_release(v7);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_1B37E137C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1B37E13C8()
{
  v1 = sub_1B3C98298();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
  result = [v6 window];
  if (result)
  {

    result = [v0 compositionController];
    if (result)
    {
      v31 = v6;
      v32 = v5;
      v33 = v2;
      v34 = v1;

      v8 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes];
      result = sub_1B3711890(v8);
      v9 = result;
      v10 = 0;
      v35 = v8 & 0xFFFFFFFFFFFFFF8;
      v36 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v9 == v10)
        {
          v10 = 0;
          goto LABEL_19;
        }

        if (v36)
        {
          v11 = MEMORY[0x1B8C6A930](v10, v8);
        }

        else
        {
          if (v10 >= *(v35 + 16))
          {
            __break(1u);
LABEL_27:
            __break(1u);
            return result;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = [v11 renderingStyle];
        v14 = sub_1B37E0774();
        v15 = sub_1B3C9C5E8();
        v17 = v16;
        if (v15 == sub_1B3C9C5E8() && v17 == v18)
        {
          break;
        }

        v20 = sub_1B3C9D6A8();

        if (v20)
        {
          goto LABEL_19;
        }

        if (__OFADD__(v10++, 1))
        {
          goto LABEL_27;
        }
      }

LABEL_19:
      v22 = v32;
      MEMORY[0x1B8C65800](v10, 0);
      v23 = v31;
      v24 = [v31 indexPathsForSelectedItems];
      v25 = v34;
      if (v24)
      {
        v26 = v24;
        v27 = sub_1B3C9C788();
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1EEE9AC00](v24);
      *(&v30 - 2) = v22;
      v28 = sub_1B3876FFC(sub_1B37E5D04, (&v30 - 4), v27);

      if (!v28)
      {
        v29 = sub_1B3C98258();
        [v23 selectItemAtIndexPath:v29 animated:0 scrollPosition:16];
      }

      return (*(v33 + 8))(v22, v25);
    }
  }

  return result;
}

uint64_t sub_1B37E16FC()
{
  v1 = v0;
  v2 = sub_1B37E0774();
  v3 = sub_1B3C9C5E8();
  v5 = v4;
  if (v3 == sub_1B3C9C5E8() && v5 == v6)
  {

    v9 = 0.0;
  }

  else
  {
    v8 = sub_1B3C9D6A8();

    v9 = 0.0;
    if ((v8 & 1) == 0)
    {
      v9 = 1.0;
      if (([v1 isActivelyAdjusting] & 1) == 0)
      {
        v10 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
        v11 = [v10 delegate];
        [v10 setDelegate_];
        sub_1B37E0818();
        [v10 setValue_];
        [v10 setDelegate_];
        swift_unknownObjectRelease();
      }
    }
  }

  [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider] alpha];
  if (v12 != v9)
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v9;
    aBlock[4] = sub_1B37E5CF8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B370C014;
    aBlock[3] = &block_descriptor_8;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    [v13 animateWithDuration:v15 animations:0.2];
    _Block_release(v15);
  }

  v17 = sub_1B37E0774();
  sub_1B37E0818();
  v19 = v18;
  v20 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *&v1[v20];
  sub_1B371FF20(v17, v19);
  *&v1[v20] = v22;

  return swift_endAccess();
}

id sub_1B37E1994()
{
  v0 = sub_1B3C97FD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8553A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  sub_1B3C98168();
  sub_1B37E5BC4();
  sub_1B3C97F78();
  MEMORY[0x1B8C654E0](v5, 100.0);
  v15 = v8;
  v16 = *(v6 + 8);
  v16(v15, v5);
  sub_1B3C97FC8();
  MEMORY[0x1B8C65500](v3, v5);
  (*(v1 + 8))(v3, v0);
  v17 = v35;
  v16(v11, v5);
  v18 = *&v17[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
  sub_1B37E0818();
  v42 = v19;
  sub_1B37E5C18();
  sub_1B37E5C6C();
  sub_1B3C9C498();
  sub_1B383C9E4(aBlock, v37, v18);
  result = [v17 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  [result setNeedsLayout];

  v22 = sub_1B37E0774();
  v23 = sub_1B3C9C5E8();
  v25 = v24;
  if (v23 == sub_1B3C9C5E8() && v25 == v26)
  {
  }

  else
  {
    v28 = sub_1B3C9D6A8();

    v29 = 1.0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v29 = 0.0;
LABEL_10:
  [v18 alpha];
  if (v30 != v29)
  {
    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = v17;
    *(v32 + 24) = v29;
    v40 = sub_1B37E5CD0;
    v41 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1B370C014;
    v39 = &block_descriptor_34;
    v33 = _Block_copy(&aBlock);
    v34 = v17;

    [v31 animateWithDuration:v33 animations:0.2];
    _Block_release(v33);
  }

  return (v16)(v14, v5);
}

void sub_1B37E1E64(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 bringSubviewToFront_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1B37E1F40(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  return sub_1B37E13C8();
}

void sub_1B37E1FE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B3C98298();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v169.receiver = v1;
  v169.super_class = ObjectType;
  objc_msgSendSuper2(&v169, sel_viewDidLayoutSubviews);
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_60;
  }

  v11 = v10;
  [v10 frame];
  OUTLINED_FUNCTION_6();

  v170.origin.x = OUTLINED_FUNCTION_17();
  Height = CGRectGetHeight(v170);
  v13 = [v1 view];
  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_21_11(v13);
  OUTLINED_FUNCTION_3_1();

  v171.origin.x = OUTLINED_FUNCTION_2_26();
  Width = CGRectGetWidth(v171);
  v15 = [v1 photoEditSpec];
  if (!v15)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v16 = v15;
  v17 = [v15 currentLayoutStyle];

  v18 = [v1 delegate];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 toolControllerMainContainerView_];
    swift_unknownObjectRelease();
    if (v20)
    {
      v166 = v17;
      v164 = v5;
      v165 = v20;
      v21 = [v1 layoutOrientation] & 0xFFFFFFFFFFFFFFFELL;
      if (v21 == 2)
      {
        v36 = OUTLINED_FUNCTION_16_13();
        if (v36)
        {
          v37 = v36;
          [v165 bounds];
          [v37 convertRect:v165 fromCoordinateSpace:?];
          v39 = v38;
          v41 = v40;
          v163 = v42;
          v162 = v43;

          v22 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
          v44 = [v1 0x1FC41B8C1];
          if (v44)
          {
            v45 = v44;
            v161 = Height;
            [v44 frame];
            v47 = v46;
            v49 = v48;
            v51 = v50;
            v53 = v52;

            v179.origin.x = v47;
            v179.origin.y = v49;
            v179.size.width = v51;
            v179.size.height = v53;
            CGRectGetHeight(v179);
            [v22 bounds];
            [v22 setBounds_];
            v54 = [v1 0x1FC41B8C1];
            if (v54)
            {
              v55 = v54;
              v56 = v39;
              [v54 frame];
              v58 = v57;
              v60 = v59;
              v62 = v61;
              v64 = v63;

              v180.origin.x = v58;
              v180.origin.y = v60;
              v180.size.width = v62;
              v180.size.height = v64;
              v65 = CGRectGetWidth(v180);
              v66 = [v1 0x1FC41B8C1];
              if (v66)
              {
                v67 = v66;
                v21 = 2;
                v68 = v65 + -33.0;
                [v66 frame];
                v70 = v69;
                v72 = v71;
                v74 = v73;
                v76 = v75;

                v181.origin.x = v70;
                v181.origin.y = v72;
                v181.size.width = v74;
                v181.size.height = v76;
                v77 = CGRectGetHeight(v181);
                v182.origin.x = v56;
                v182.origin.y = v41;
                v182.size.width = v163;
                v182.size.height = v162;
                [v22 setCenter_];
                OUTLINED_FUNCTION_19_12();
                CGAffineTransformRotate(&v167, &v168, -1.57079633);
                v168 = v167;
                [v22 setTransform_];
                v78 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
                [v78 sizeToFit];
                [v22 center];
                v80 = v79;
                [v22 frame];
                v81 = v80 - CGRectGetWidth(v183) * 0.5;
                OUTLINED_FUNCTION_10_16();
                v82 = v81 - CGRectGetWidth(v184) + -16.0;
                [v22 center];
                v84 = v83;
                OUTLINED_FUNCTION_10_16();
                v85 = v84 - CGRectGetHeight(v185) * 0.5;
                OUTLINED_FUNCTION_10_16();
                [v78 setFrame_];
                v87 = Width >= v161 && v17 != 4;
                v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = v87;
                goto LABEL_23;
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            goto LABEL_67;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      v22 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
      v23 = OUTLINED_FUNCTION_16_13();
      if (v23)
      {
        OUTLINED_FUNCTION_21_11(v23);
        OUTLINED_FUNCTION_6();

        v172.origin.x = OUTLINED_FUNCTION_17();
        CGRectGetWidth(v172);
        [v22 bounds];
        [v22 setBounds_];
        v24 = OUTLINED_FUNCTION_16_13();
        if (v24)
        {
          OUTLINED_FUNCTION_21_11(v24);
          OUTLINED_FUNCTION_6();

          v173.origin.x = OUTLINED_FUNCTION_17();
          v25 = CGRectGetWidth(v173);
          v26 = OUTLINED_FUNCTION_16_13();
          if (v26)
          {
            v27 = v26;
            [v26 frame];
            OUTLINED_FUNCTION_3_1();

            v174.origin.x = OUTLINED_FUNCTION_2_26();
            [v22 setCenter_];
            OUTLINED_FUNCTION_19_12();
            [v22 v28];
            v29 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel];
            [v29 sizeToFit];
            v30 = OUTLINED_FUNCTION_16_13();
            if (v30)
            {
              v31 = v30;
              [v30 frame];
              OUTLINED_FUNCTION_6();

              v175.origin.x = OUTLINED_FUNCTION_17();
              v32 = CGRectGetWidth(v175);
              OUTLINED_FUNCTION_10_16();
              v33 = (v32 - CGRectGetWidth(v176)) * 0.5;
              [v22 frame];
              MinY = CGRectGetMinY(v177);
              OUTLINED_FUNCTION_10_16();
              v35 = MinY - CGRectGetHeight(v178) + -16.0;
              OUTLINED_FUNCTION_10_16();
              [v29 setFrame_];
              v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = 0;
LABEL_23:
              sub_1B37E04E0();
              sub_1B37E2CD0(v21 != 2, v1);
              v89 = v88;
              v91 = v90;
              v92 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
              v93 = [v92 collectionViewLayout];
              objc_opt_self();
              [swift_dynamicCastObjCClassUnconditional() setScrollDirection_];

              if (v21 != 2)
              {
                v94 = [v1 view];
                v95 = v94;
                if (v166 == 4)
                {
                  if (!v94)
                  {
LABEL_78:
                    __break(1u);
                    goto LABEL_79;
                  }

                  OUTLINED_FUNCTION_10_16();
                  OUTLINED_FUNCTION_3_1();

                  v188.origin.x = OUTLINED_FUNCTION_2_26();
                  v105 = CGRectGetHeight(v188);
                  v106 = [v1 view];
                  if (!v106)
                  {
LABEL_80:
                    __break(1u);
                    goto LABEL_81;
                  }

                  v107 = v106;
                  v108 = v105 - v91;
                  [v106 safeAreaInsets];
                  v110 = v109;

                  v100 = v108 - v110 + -16.0;
                }

                else
                {
                  if (!v94)
                  {
LABEL_77:
                    __break(1u);
                    goto LABEL_78;
                  }

                  [v22 frame];
                  OUTLINED_FUNCTION_3_1();
                  v96 = OUTLINED_FUNCTION_16_13();
                  v97 = OUTLINED_FUNCTION_2_26();
                  [v98 v99];
                  OUTLINED_FUNCTION_3_1();

                  v186.origin.x = OUTLINED_FUNCTION_2_26();
                  v100 = CGRectGetMinY(v186) - v91;
                }

                v111 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView];
                v112 = [v1 view];
                if (v112)
                {
                  OUTLINED_FUNCTION_21_11(v112);
                  OUTLINED_FUNCTION_14_16();
                  OUTLINED_FUNCTION_11_13();
                  v113 = 0.0;
                  [v111 setFrame_];
                  [v111 bounds];
                  [v92 setFrame_];
                  MEMORY[0x1B8C65800](0, 0);
                  v114 = sub_1B3C98258();
                  (*(v164 + 8))(v9, v3);
                  v115 = [v92 cellForItemAtIndexPath_];

                  if (v115)
                  {
                    OUTLINED_FUNCTION_10_16();
                    OUTLINED_FUNCTION_6();

                    v190.origin.x = OUTLINED_FUNCTION_17();
                    v113 = CGRectGetWidth(v190);
                  }

                  [v92 frame];
                  v116 = CGRectGetWidth(v191);
                  [v92 setContentInset_];
                  v117 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_gradientMask];
                  [v111 bounds];
                  [v117 setFrame_];
                  [v117 setGradientDirection_];
                  [v117 setGradientDimensions_];
                  [v111 setMaskView_];
LABEL_57:

                  return;
                }

                goto LABEL_71;
              }

              if (v166 == 4)
              {
                v118 = OUTLINED_FUNCTION_12_14();
                if (!v118)
                {
LABEL_79:
                  __break(1u);
                  goto LABEL_80;
                }

                [v118 frame];
                OUTLINED_FUNCTION_14_16();
                OUTLINED_FUNCTION_11_13();
                MinX = CGRectGetWidth(v192) - v89 + -50.0;
              }

              else
              {
                v101 = [v1 layoutOrientation];
                v102 = OUTLINED_FUNCTION_12_14();
                v103 = v102;
                if (v101 == 2)
                {
                  if (!v102)
                  {
LABEL_82:
                    __break(1u);
                    goto LABEL_83;
                  }

                  OUTLINED_FUNCTION_10_16();
                  OUTLINED_FUNCTION_14_16();
                  OUTLINED_FUNCTION_11_13();
                  MinX = CGRectGetMinX(v187);
                }

                else
                {
                  if (!v102)
                  {
LABEL_83:
                    __break(1u);
                    return;
                  }

                  [v102 safeAreaInsets];
                  MinX = v119;
                }
              }

              v120 = OUTLINED_FUNCTION_12_14();
              if (v120)
              {
                v121 = v120;
                v122 = [v120 superview];

                if (!v122)
                {
                  v123 = OUTLINED_FUNCTION_12_14();
                  if (!v123)
                  {
LABEL_81:
                    __break(1u);
                    goto LABEL_82;
                  }

                  v122 = v123;
                }

                OUTLINED_FUNCTION_10_16();
                v125 = v124;
                v127 = v126;
                v129 = v128;
                v131 = v130;

                v193.origin.x = v125;
                v193.origin.y = v127;
                v193.size.width = v129;
                v193.size.height = v131;
                CGRectGetHeight(v193);
                v132 = OUTLINED_FUNCTION_12_14();
                if (v132)
                {
                  v133 = v132;
                  v134 = OUTLINED_FUNCTION_12_14();
                  if (v134)
                  {
                    v135 = v134;
                    v136 = CGSizeMake(v134);
                    v137 = [v135 superview];

                    [v133 convertPoint:v137 fromView:{0.0, v136}];
                    v139 = v138;

                    v140 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView];
                    v141 = OUTLINED_FUNCTION_12_14();
                    if (v141)
                    {
                      v142 = v141;
                      [v141 safeAreaInsets];
                      v144 = v143;

                      if (v144 > v139)
                      {
                        v139 = v144;
                      }

                      v145 = OUTLINED_FUNCTION_12_14();
                      if (v145)
                      {
                        v146 = v145;
                        [v145 frame];
                        v148 = v147;
                        v150 = v149;
                        v152 = v151;
                        v154 = v153;

                        v194.origin.x = v148;
                        v194.origin.y = v150;
                        v194.size.width = v152;
                        v194.size.height = v154;
                        v155 = CGRectGetHeight(v194);
                        v156 = OUTLINED_FUNCTION_12_14();
                        if (v156)
                        {
                          v157 = v156;
                          [v156 safeAreaInsets];
                          v159 = v158;

                          if (v91 >= v155 - v159)
                          {
                            v160 = v155 - v159;
                          }

                          else
                          {
                            v160 = v91;
                          }

                          [v140 &selRef:MinX setFeedbackUIFCS:{v139, v89, v160}];
                          [v140 bounds];
                          [v92 &selRef_setFeedbackUIFCS_];
                          [v92 setContentInset_];
                          [v140 setMaskView_];
                          goto LABEL_57;
                        }

                        goto LABEL_76;
                      }

LABEL_75:
                      __break(1u);
LABEL_76:
                      __break(1u);
                      goto LABEL_77;
                    }

LABEL_74:
                    __break(1u);
                    goto LABEL_75;
                  }

LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            goto LABEL_68;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

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
      goto LABEL_69;
    }
  }
}

void sub_1B37E2CD0(char a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  v4 = sub_1B3711890(v3);
  v5 = v4;
  if ((a1 & 1) == 0)
  {
    if (v4)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1B37EACA0(0, v4 & ~(v4 >> 63), 0);
      if (v5 < 0)
      {
LABEL_51:
        __break(1u);
        return;
      }

      v16 = v43;
      type metadata accessor for PUAudioMixModeCollectionViewCell();
      v17 = 0;
      v18 = v3 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v19 = MEMORY[0x1B8C6A930](v17, v3);
        }

        else
        {
          v19 = *(v3 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = [v19 localizedTitle];
        sub_1B3C9C5E8();

        sub_1B37DFD00();
        v23 = v22;

        v25 = *(v43 + 16);
        v24 = *(v43 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B37EACA0((v24 > 1), v25 + 1, 1);
        }

        ++v17;
        *(v43 + 16) = v25 + 1;
        *(v43 + 8 * v25 + 32) = v23;
      }

      while (v5 != v17);
    }

    else
    {
      v18 = v3 & 0xC000000000000001;
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1B37DF328(v16);

    v34 = 0.0;
    v35 = sub_1B3711890(v3);
    for (i = 0; v35 != i; ++i)
    {
      if (v18)
      {
        v37 = MEMORY[0x1B8C6A930](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v37 = *(v3 + 8 * i + 32);
      }

      v38 = v37;
      if (__OFADD__(i, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      type metadata accessor for PUAudioMixModeCollectionViewCell();
      v39 = [v38 localizedTitle];
      sub_1B3C9C5E8();

      sub_1B37DFD00();
      v41 = v40;

      v34 = v34 + v41;
    }

    if (!__OFSUB__(sub_1B3711890(v3), 1))
    {
      return;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!v4)
  {
    v8 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1B37EACA0(0, v4 & ~(v4 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_50;
  }

  v6 = v42;
  type metadata accessor for PUAudioMixModeCollectionViewCell();
  v7 = 0;
  v8 = v3 & 0xC000000000000001;
  do
  {
    if (v8)
    {
      v9 = MEMORY[0x1B8C6A930](v7, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 localizedTitle];
    sub_1B3C9C5E8();

    sub_1B37DFD00();
    v13 = v12;

    v15 = *(v42 + 16);
    v14 = *(v42 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B37EACA0((v14 > 1), v15 + 1, 1);
    }

    ++v7;
    *(v42 + 16) = v15 + 1;
    *(v42 + 8 * v15 + 32) = v13;
  }

  while (v5 != v7);
LABEL_23:
  sub_1B37DF328(v6);

  v26 = 0.0;
  v27 = sub_1B3711890(v3);
  for (j = 0; v27 != j; ++j)
  {
    if (v8)
    {
      v29 = MEMORY[0x1B8C6A930](j, v3);
    }

    else
    {
      if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v29 = *(v3 + 8 * j + 32);
    }

    v30 = v29;
    if (__OFADD__(j, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    type metadata accessor for PUAudioMixModeCollectionViewCell();
    v31 = [v30 localizedTitle];
    sub_1B3C9C5E8();

    sub_1B37DFD00();
    v33 = v32;

    v26 = v26 + v33;
  }

  if (__OFSUB__(sub_1B3711890(v3), 1))
  {
    goto LABEL_48;
  }
}

void sub_1B37E31C8(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1B37E5D48;
  v9[5] = v7;
  OUTLINED_FUNCTION_1_0();
  v9[1] = 1107296256;
  v9[2] = sub_1B372B6C8;
  v9[3] = &block_descriptor_45_0;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_1B37E32C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B37E3318();
  }
}

id sub_1B37E3318()
{
  v1 = sub_1B3C98298();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
  result = [v6 window];
  if (!result)
  {
    return result;
  }

  result = [v0 compositionController];
  if (!result)
  {
    return result;
  }

  v24 = v6;
  v25 = v5;
  v26 = v2;
  v27 = v1;

  v8 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes];
  result = sub_1B3711890(v8);
  v9 = result;
  v10 = 0;
  v28 = v8 & 0xFFFFFFFFFFFFFF8;
  v29 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v9 == v10)
    {
      v10 = 0;
LABEL_19:
      v22 = v25;
      MEMORY[0x1B8C65800](v10, 0);
      v23 = sub_1B3C98258();
      [v24 scrollToItemAtIndexPath:v23 atScrollPosition:16 animated:0];

      return (*(v26 + 8))(v22, v27);
    }

    if (!v29)
    {
      break;
    }

    v11 = MEMORY[0x1B8C6A930](v10, v8);
LABEL_8:
    v12 = v11;
    v13 = [v11 renderingStyle];
    v14 = sub_1B37E0774();
    v15 = sub_1B3C9C5E8();
    v17 = v16;
    if (v15 == sub_1B3C9C5E8() && v17 == v18)
    {

      goto LABEL_19;
    }

    v20 = sub_1B3C9D6A8();

    if (v20)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_22;
    }
  }

  if (v10 < *(v28 + 16))
  {
    v11 = *(v8 + 8 * v10 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_1B37E3624()
{
  v1 = [v0 layoutOrientation];
  if (v1 != 3)
  {
    if (v1 != 2)
    {
      if (v1 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_1B3CFB680;
        v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
        v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
        *(v2 + 32) = v3;
        *(v2 + 40) = v4;
        v5 = v3;
LABEL_11:
        v11 = v4;
        return v2;
      }

      return MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v6 = OUTLINED_FUNCTION_17_2();
    v2 = v6;
    *(v6 + 16) = xmmword_1B3CF9810;
    v7 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
LABEL_10:
    v4 = *&v0[v7];
    *(v6 + 32) = v4;
    goto LABEL_11;
  }

  result = [v0 photoEditSpec];
  if (result)
  {
    v9 = result;
    v10 = [result currentLayoutStyle];

    if (v10 == 4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v6 = OUTLINED_FUNCTION_17_2();
    v2 = v6;
    *(v6 + 16) = xmmword_1B3CF9810;
    v7 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1B37E379C()
{
  v1 = [v0 layoutOrientation];
  if (v1 != 3)
  {
    if (v1 != 2)
    {
      if (v1 != 1)
      {
        return MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v2 = OUTLINED_FUNCTION_17_2();
    v3 = v2;
    *(v2 + 16) = xmmword_1B3CF9810;
    v4 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
    goto LABEL_11;
  }

  result = [v0 photoEditSpec];
  if (result)
  {
    v6 = result;
    v7 = [result currentLayoutStyle];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    if (v7 == 4)
    {
LABEL_8:
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1B3CFB680;
      v8 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView];
      v9 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider];
      *(v3 + 32) = v8;
      *(v3 + 40) = v9;
      v10 = v8;
LABEL_12:
      v11 = v9;
      return v3;
    }

    v2 = OUTLINED_FUNCTION_17_2();
    v3 = v2;
    *(v2 + 16) = xmmword_1B3CF9810;
    v4 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
LABEL_11:
    v9 = *&v0[v4];
    *(v2 + 32) = v9;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1B37E3918(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1B3710718(0, &unk_1EB84F790);
  sub_1B3C9C778();
  OUTLINED_FUNCTION_22_6();

  return v4;
}

id sub_1B37E39C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_toolTitleLabel;
  *&v4[v5] = sub_1B37E009C();
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView;
  *&v4[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
  *&v4[v7] = sub_1B37E0238();
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_gradientMask;
  v9 = [objc_allocWithZone(MEMORY[0x1E6993848]) init];
  [v9 setEdgeGradientStyleMask];
  *&v4[v8] = v9;
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel;
  *&v4[v10] = sub_1B37E03F8();
  v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = 0;
  v11 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
  *&v4[v11] = sub_1B37E05E4();
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController] = 0;
  v12 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton;
  sub_1B3710718(0, &qword_1EB8553E0);
  v13 = sub_1B3C9C5A8();
  v14 = PULocalizedString(v13);

  v15 = sub_1B3C9C5E8();
  v17 = v16;

  *&v4[v12] = sub_1B37E0694(0xD000000000000013, 0x80000001B3D18660, 0xD000000000000012, 0x80000001B3D18680, v15, v17, [objc_allocWithZone(PUPhotoEditViewControllerSpec) init]);
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes;
  v19 = [objc_opt_self() audioMixModes];
  sub_1B3710718(0, &qword_1EB8553E8);
  v20 = sub_1B3C9C788();

  *&v4[v18] = v20;
  v21 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  type metadata accessor for PICinematicAudioRenderingStyle(0);
  v23 = v22;
  OUTLINED_FUNCTION_6_20();
  sub_1B37E5D58(v24, v25);
  *&v4[v21] = sub_1B3C9C4D8();
  v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider] = 0;
  if (a2)
  {
    sub_1B3C9C5A8();
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    v23 = 0;
  }

  v32.receiver = v4;
  v32.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, v23, a3, a1);

  return v26;
}

id sub_1B37E3D04(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_toolTitleLabel;
  *&v2[v3] = sub_1B37E009C();
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionViewContainerView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixModeCollectionView;
  *&v2[v5] = sub_1B37E0238();
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_gradientMask;
  v7 = [objc_allocWithZone(MEMORY[0x1E6993848]) init];
  [v7 setEdgeGradientStyleMask];
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabel;
  *&v2[v8] = sub_1B37E03F8();
  v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_mixBiasLabelAlwaysVisible] = 0;
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_slider;
  *&v2[v9] = sub_1B37E05E4();
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController] = 0;
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton;
  sub_1B3710718(0, &qword_1EB8553E0);
  v11 = sub_1B3C9C5A8();
  v12 = PULocalizedString(v11);

  v13 = sub_1B3C9C5E8();
  v15 = v14;

  *&v2[v10] = sub_1B37E0694(0xD000000000000013, 0x80000001B3D18660, 0xD000000000000012, 0x80000001B3D18680, v13, v15, [objc_allocWithZone(PUPhotoEditViewControllerSpec) init]);
  v16 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes;
  v17 = [objc_opt_self() audioMixModes];
  sub_1B3710718(0, &qword_1EB8553E8);
  v18 = sub_1B3C9C788();

  *&v2[v16] = v18;
  v19 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  type metadata accessor for PICinematicAudioRenderingStyle(0);
  OUTLINED_FUNCTION_6_20();
  sub_1B37E5D58(v20, v21);
  *&v2[v19] = sub_1B3C9C4D8();
  v2[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_isPerformingLiveInteractionWithSlider] = 0;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v26, sel_initWithCoder_, a1);

  if (v22)
  {
  }

  return v22;
}

uint64_t sub_1B37E40DC(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v6 = sub_1B3C9C5A8();
  v7 = sub_1B3C98258();
  v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

  type metadata accessor for PUAudioMixModeCollectionViewCell();
  v9 = swift_dynamicCastClassUnconditional();
  v10 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  v11 = sub_1B3C98278();
  OUTLINED_FUNCTION_9_13(v11);
  if (v6)
  {
    v12 = MEMORY[0x1B8C6A930](a2, v10);
  }

  else
  {
    v12 = *(v10 + 8 * a2 + 32);
  }

  v13 = v12;
  v14 = [v12 localizedTitle];

  sub_1B3C9C5E8();
  sub_1B37DF8E8();

  return v9;
}

uint64_t sub_1B37E4320()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  if (v1 >> 62)
  {
    return sub_1B3C9D2C8();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

double sub_1B37E4374(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes);
  v8 = sub_1B3C98278();
  OUTLINED_FUNCTION_9_13(v8);
  if (v4)
  {
    v9 = MEMORY[0x1B8C6A930](a3, v6);
  }

  else
  {
    v9 = *(v6 + 8 * a3 + 32);
  }

  v10 = v9;
  type metadata accessor for PUAudioMixModeCollectionViewCell();
  v11 = [v10 localizedTitle];

  sub_1B3C9C5E8();
  sub_1B37DFD00();
  v13 = v12;

  [a1 frame];
  Width = CGRectGetWidth(v16);
  if (Width < v13)
  {
    v13 = Width;
  }

  [a1 frame];
  CGRectGetHeight(v17);
  return v13;
}

id sub_1B37E45AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B3C98258();
  [a1 scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:1];

  v7 = *&v3[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_audioMixModes];
  v8 = sub_1B3C98278();
  OUTLINED_FUNCTION_9_13(v8);
  if (v6)
  {
    v9 = MEMORY[0x1B8C6A930](a2, v7);
  }

  else
  {
    v9 = *(v7 + 8 * a2 + 32);
  }

  v10 = v9;
  v11 = [v9 renderingStyle];
  v12 = sub_1B37E0774();
  v13 = sub_1B3C9C5E8();
  v15 = v14;
  if (v13 == sub_1B3C9C5E8() && v15 == v16)
  {

    goto LABEL_14;
  }

  v18 = sub_1B3C9D6A8();

  if (v18)
  {
LABEL_14:

    v26 = 0;
    return sub_1B36F9DA0(v26);
  }

  v19 = [v10 renderingStyle];
  v20 = sub_1B3C9C5E8();
  v22 = v21;
  if (v20 == sub_1B3C9C5E8() && v22 == v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_1B3C9D6A8();
  }

  [v3 willModifyAdjustment];
  v27 = &selRef_componentsSeparatedByCharactersInSet_;
  v28 = [v3 compositionController];
  isEscapingClosureAtFileLocation = &selRef_refreshThumbnail;
  if (v28)
  {
    v30 = v28;
    [v28 removeAdjustmentWithKey_];
  }

  if ((v25 & 1) == 0)
  {
LABEL_21:
    v33 = [v3 compositionController];
    if (!v33)
    {
LABEL_26:
      v26 = 0;
      goto LABEL_27;
    }

    v34 = v33;
    v35 = *MEMORY[0x1E69BDFB0];
    v36 = swift_allocObject();
    *(v36 + 16) = v3;
    *(v36 + 24) = v10;
    *(v36 + 32) = v25 & 1;
    v37 = swift_allocObject();
    v26 = sub_1B37E5D3C;
    *(v37 + 16) = sub_1B37E5D3C;
    *(v37 + 24) = v36;
    v58 = sub_1B37E5DE0;
    v59 = v37;
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5_20();
    v56 = v38;
    v57 = &block_descriptor_39;
    v27 = _Block_copy(&v54);
    v39 = v35;
    v40 = v3;
    v41 = v10;

    [v34 modifyAdjustmentWithKey:v39 modificationBlock:v27];

    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_27:
      OUTLINED_FUNCTION_13_0();
      v44 = sub_1B3C9C5A8();
      v45 = PULocalizedString(v44);

      v46 = sub_1B3C9C5E8();
      v48 = v47;

      v54 = v46;
      v55 = v48;
      MEMORY[0x1B8C69C10](32, 0xE100000000000000);
      v49 = [v10 localizedTitle];
      v50 = sub_1B3C9C5E8();
      v52 = v51;

      MEMORY[0x1B8C69C10](v50, v52);

      v53 = sub_1B383C9F0(v54, v55, v3);

      return sub_1B36F9DA0(v26);
    }

    __break(1u);
LABEL_24:
    v42 = [v3 v27[4]];
    if (v42)
    {
      v43 = v42;
      [v42 *(isEscapingClosureAtFileLocation + 648)];
    }

    goto LABEL_26;
  }

  result = [v3 delegate];
  if (result)
  {
    v32 = [result isPortraitVideo];
    swift_unknownObjectRelease();
    if (!v32)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_1B37E4A4C(uint64_t a1, char *a2, void *a3, char a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  v8 = [a3 renderingStyle];
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_dialogMixBiasCache;
  swift_beginAccess();
  v10 = sub_1B3898F60(v8, *&a2[v9]);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    swift_endAccess();
    [v7 setDialogMixBias_];
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_endAccess();
  if (qword_1EB850068 != -1)
  {
    swift_once();
  }

  [v7 setDialogMixBias_];
  v13 = [a3 renderingStyle];
  [v7 dialogMixBias];
  v15 = v14;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *&a2[v9];
  sub_1B371FF20(v13, v15);
  *&a2[v9] = v20;

  swift_endAccess();
  if (a4)
  {
LABEL_7:
    v16 = [v7 adjustment];
    [v16 reset];
  }

LABEL_8:
  v17 = [a3 renderingStyle];
  [v7 setRenderingStyle_];

  result = [a2 delegate];
  if (result)
  {
    v19 = [result cinematicAudioRenderingVersion];
    swift_unknownObjectRelease();
    [v7 setRenderingVersion_];
    return [v7 setEnabled_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37E4DD4(id a1)
{
  if (qword_1EB850068 != -1)
  {
    swift_once();
  }

  [a1 xOffsetForValue_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69C3C28]) initWithSnappingTarget_];
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController;
  v6 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController] = v4;

  v7 = *&v1[v5];
  if (v7)
  {
    [v7 setRetentionOffsetThreshold_];
    v8 = *&v1[v5];
    if (v8)
    {
      [v8 setAttractionOffsetThreshold_];
      v9 = *&v1[v5];
      if (v9)
      {
        [v9 setAttractionVelocityThreshold_];
        v10 = *&v1[v5];
        if (v10)
        {
          [v10 setAccumulateOffsetWhileSnapped_];
        }
      }
    }
  }

  [v1 setActivelyAdjusting_];
  sub_1B37E0F60(1);
  [v1 willModifyAdjustment];
  result = *&v1[v5];
  if (result)
  {

    return [result interactionBegan];
  }

  return result;
}

id sub_1B37E4F9C(double a1, uint64_t a2, uint64_t a3)
{
  result = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController);
  if (result)
  {
    return [result updateOffset:a3 withVelocity:0 shouldSnap:0 shouldBreak:-a1];
  }

  return result;
}

id sub_1B37E5044(void *a1)
{
  v3 = sub_1B37E0774();
  v4 = sub_1B3C9C5E8();
  v6 = v5;
  if (v4 == sub_1B3C9C5E8() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1B3C9D6A8();

    if ((v9 & 1) == 0)
    {
      v11 = [v1 compositionController];
      if (v11)
      {
        v12 = v11;
        [v11 removeAdjustmentWithKey_];
      }

      [a1 value];
      v14 = v13;
      result = [v1 compositionController];
      if (result)
      {
        v15 = result;
        v16 = *MEMORY[0x1E69BDFB0];
        OUTLINED_FUNCTION_20();
        v17 = swift_allocObject();
        *(v17 + 16) = v14;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_1B37E5D34;
        *(v18 + 24) = v17;
        v22[4] = sub_1B37DEE38;
        v22[5] = v18;
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_5_20();
        v22[2] = v19;
        v22[3] = &block_descriptor_29;
        v20 = _Block_copy(v22);
        v21 = v16;

        [v15 modifyAdjustmentWithKey:v21 modificationBlock:v20];

        _Block_release(v20);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if (v15)
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

id sub_1B37E52A4(double a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  [v2 setDialogMixBias_];

  return [v2 setEnabled_];
}

id sub_1B37E53F8()
{
  [v0 setActivelyAdjusting_];
  sub_1B37E0F60(0);
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1B3C9C5A8();
  v2 = PULocalizedString(v1);

  v3 = sub_1B3C9C5E8();
  v5 = v4;

  result = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_sliderSnappingController];
  if (result)
  {

    return [result interactionEnded];
  }

  return result;
}

id sub_1B37E5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_setupWithAsset_compositionController_editSource_valuesCalculator_, a1, a2, a3, a4);
  result = [v4 view];
  if (result)
  {
    v10 = result;
    [result setUserInteractionEnabled_];

    sub_1B37E13C8();
    sub_1B37E16FC();
    sub_1B37E1994();
    return [*&v4[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton] setSelected_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37E56BC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = ObjectType;
  if (a1)
  {
    v5 = sub_1B3C9C968();
    v12.receiver = v1;
    v12.super_class = v4;
    objc_msgSendSuper2(&v12, sel_compositionControllerDidChangeForAdjustments_, v5);

    v6 = sub_1B3C9C5E8();
    LOBYTE(v5) = sub_1B373F33C(v6, v7, a1);

    if (v5)
    {
      sub_1B37E13C8();
      sub_1B37E16FC();
      sub_1B37E1994();
    }

    v8 = sub_1B3C9C5E8();
    v10 = sub_1B373F33C(v8, v9, a1);

    if (v10)
    {
      return [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton] setSelected_];
    }
  }

  else
  {
    v12.receiver = v1;
    v12.super_class = ObjectType;
    result = objc_msgSendSuper2(&v12, sel_compositionControllerDidChangeForAdjustments_, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37E58D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v1 = OUTLINED_FUNCTION_17_2();
  *(v1 + 16) = xmmword_1B3CF9810;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_muteButton);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

void *sub_1B37E5964()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate21PUAudioToolController_toolTitleLabel);
  v2 = v1;
  return v1;
}

uint64_t sub_1B37E59B4()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  return v2;
}

id sub_1B37E5A7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B3C9C5A8();
  OUTLINED_FUNCTION_22_6();

  return v3;
}

id sub_1B37E5AE0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    sub_1B3C9C5A8();
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B37E5B54()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PELocalizedString();

  v2 = sub_1B3C9C5E8();
  return v2;
}

unint64_t sub_1B37E5BC4()
{
  result = qword_1EB8553A8;
  if (!qword_1EB8553A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8553A8);
  }

  return result;
}

unint64_t sub_1B37E5C18()
{
  result = qword_1EB8553B0;
  if (!qword_1EB8553B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8553B0);
  }

  return result;
}

unint64_t sub_1B37E5C6C()
{
  result = qword_1EB8553B8;
  if (!qword_1EB8553B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8553A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8553B8);
  }

  return result;
}

uint64_t sub_1B37E5D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1)
{

  return sub_1B37ED0BC(a1, (v1 & 0xC000000000000001) == 0, v1);
}

id OUTLINED_FUNCTION_10_16()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_12_14()
{

  return [v0 (v1 + 2808)];
}

void OUTLINED_FUNCTION_14_16()
{
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return sub_1B3C9C9F8();
}

void OUTLINED_FUNCTION_19_12()
{
  *(v0 - 224) = 0x3FF0000000000000;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0x3FF0000000000000;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

uint64_t OUTLINED_FUNCTION_20_12()
{

  return sub_1B3C9C9D8();
}

id OUTLINED_FUNCTION_21_11(void *a1)
{

  return [a1 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_22_6()
{
}

unint64_t sub_1B37E5F18()
{
  result = qword_1EB8554E0;
  if (!qword_1EB8554E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8554E0);
  }

  return result;
}

unint64_t sub_1B37E5F70()
{
  result = qword_1EB8554E8;
  if (!qword_1EB8554E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8554E8);
  }

  return result;
}

uint64_t sub_1B37E5FE0()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878E00);
  __swift_project_value_buffer(v6, qword_1EB878E00);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37E61CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855508);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855510);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37E73A0();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855518);
  sub_1B3C97C88();

  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855520);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  OUTLINED_FUNCTION_18_10();
  return sub_1B3C97C78();
}

uint64_t sub_1B37E63B0()
{
  OUTLINED_FUNCTION_0_0();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  sub_1B3C9C888();
  v0[8] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[9] = v5;
  v0[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37E6448, v5, v4);
}

uint64_t sub_1B37E6448()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1B3C97B28();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1B37E73A0();
  *v5 = v0;
  v5[1] = sub_1B37E6574;
  v6 = v0[5];

  return MEMORY[0x1EEE2CA70](v6, 0, 0, 0, 0, v3, 0, &unk_1B3D04170);
}

uint64_t sub_1B37E6574()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1B37E66D4;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1B37E6678;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37E6678()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37E66D4()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37E673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1B3C9C888();
  v3[6] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37E67D8, v5, v4);
}

uint64_t sub_1B37E67D8()
{
  sub_1B3C97B28();
  v0[9] = v0[2];
  sub_1B3C97B28();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1B37B2BF0;

  return sub_1B37E6898();
}

uint64_t sub_1B37E6898()
{
  OUTLINED_FUNCTION_0_0();
  *(v0 + 96) = v1;
  *(v0 + 16) = v2;
  v3 = sub_1B3C9A558();
  *(v0 + 24) = v3;
  *(v0 + 32) = *(v3 - 8);
  *(v0 + 40) = swift_task_alloc();
  sub_1B3C9C888();
  *(v0 + 48) = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37E698C, v5, v4);
}

uint64_t sub_1B37E698C()
{
  v21 = v0;
  v1 = MEMORY[0x1B8C66290](*(v0 + 16));
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);
  if (v6)
  {
    v19 = *(v0 + 40);
    v10 = v1;
    v11 = *(v0 + 96);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 67109378;
    *(v12 + 4) = v11;
    *(v12 + 8) = 2082;
    v14 = sub_1B3749364(v10, v3, &v20);

    *(v12 + 10) = v14;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { clockwise: %{BOOL}d, assets: %{public}s }", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1B8C6EC70](v13, -1, -1);
    MEMORY[0x1B8C6EC70](v12, -1, -1);

    (*(v8 + 8))(v19, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v16 = swift_allocObject();
  *(v0 + 72) = v16;
  *(v16 + 16) = xmmword_1B3CF9810;
  *(v16 + 32) = [objc_allocWithZone(MEMORY[0x1E69C4228]) initWithClockwise_];
  type metadata accessor for PXEditAppDependencyManager();
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_1B37B3108;

  return sub_1B37BDFEC();
}

uint64_t sub_1B37E6BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v44 = v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851468);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v43 = v37 - v5;
  v6 = sub_1B3C97CC8();
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v46 = v9 - v8;
  v10 = sub_1B3C97C18();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v42 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v45 = v37 - v16;
  v17 = sub_1B3C97F38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v19 = sub_1B3C98188();
  v20 = OUTLINED_FUNCTION_8_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v21 = sub_1B3C9C598();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v23 = sub_1B3C97F48();
  v39 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v37[1] = v25 - v24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A28);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v26 = *(v18 + 104);
  v27 = OUTLINED_FUNCTION_9_14();
  v37[3] = v17;
  v26(v27);
  v37[2] = v18 + 104;
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v28 = OUTLINED_FUNCTION_9_14();
  v26(v28);
  v29 = v45;
  OUTLINED_FUNCTION_0_26();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v23);
  v50 = 0;
  sub_1B3C97C08();
  v40 = *MEMORY[0x1E695A500];
  v30 = *(v48 + 104);
  v48 += 104;
  v41 = v30;
  v30(v46);
  sub_1B370ED54(&qword_1EB852A30, &qword_1EB852A38);
  sub_1B374FC40();
  v42 = sub_1B3C97BD8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851470);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v31 = OUTLINED_FUNCTION_9_14();
  v26(v31);
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v32 = OUTLINED_FUNCTION_9_14();
  v26(v32);
  v33 = v45;
  OUTLINED_FUNCTION_0_26();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v39);
  v49 = 0;
  v34 = sub_1B3C9C828();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v34);
  v35 = sub_1B3C97AE8();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v35);
  v41(v46, v40, v47);
  sub_1B3C97B98();
  return v42;
}

uint64_t sub_1B37E71D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850070 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878E00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37E7280()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37E63B0();
}

uint64_t sub_1B37E732C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37E6BE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37E7354(uint64_t a1)
{
  v2 = sub_1B37E73A0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B37E73A0()
{
  result = qword_1EB855500;
  if (!qword_1EB855500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855500);
  }

  return result;
}

uint64_t sub_1B37E73F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B3714CE0;

  return sub_1B37E673C(a1, v5, v4);
}

void sub_1B37E74AC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_17(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B37EBB7C(v4, 1, sub_1B370EE80);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B37E7564(unint64_t a1)
{
  v3 = sub_1B370EA28(a1);
  v4 = sub_1B370EA28(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B37EBBF4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B37EC320(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1B37E7628(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  v5 = sub_1B370EA28(a1);
  v6 = sub_1B370EA28(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B37EBBF4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1B37E76F4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_17(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B37EBB7C(v4, 1, sub_1B370FF00);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B37E77C4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_17(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B37EBB7C(v4, 1, MEMORY[0x1E69E6AB8]);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855550);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_1B37E78AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1B37E7918(char *a1)
{
  v85 = a1;
  v82 = sub_1B3C9A488();
  v84 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v89 = MEMORY[0x1E69E7CC0];
  v5 = &qword_1EB850000;
  v6 = &OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleConfiguration_symbol;
  if (!v4)
  {
    goto LABEL_6;
  }

  LOBYTE(v7) = sub_1B3C9CAE8();
  if (qword_1EB8500A0 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v8 = v6[440];
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v88 = v5;
      *v9 = 136315138;
      v10 = MEMORY[0x1B8C69D10](v4, MEMORY[0x1E69E6158]);
      v12 = sub_1B3749364(v10, v11, &v88);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_1B36F3000, v8, v7, "Found local identifier in content configuration. These will not sync with ICPL. %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    sub_1B37E74AC(v4);
LABEL_6:
    if (!v3)
    {
      break;
    }

    isa = v3[2].isa;
    v14 = MEMORY[0x1E69E7CC0];
    if (isa)
    {
      v15 = v3 + 5;
      do
      {
        v16 = v15[-1].isa;
        v17 = v15->isa;
        v18 = v16 == 0x657469726F766166 && v17 == 0xE900000000000073;
        if (v18 || (sub_1B3C9D6A8() & 1) != 0)
        {
          v19 = [v85 librarySpecificFetchOptions];
          [v19 setWantsIncrementalChangeDetails_];
          v5 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v19];
          v20 = [v5 firstObject];

          if (v20)
          {
            v21 = [v20 localIdentifier];

            v22 = sub_1B3C9C5E8();
            v24 = v23;

            v5 = v89;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_36_6();
              sub_1B370EE80();
              v5 = v30;
            }

            v26 = *(v5 + 16);
            v25 = *(v5 + 24);
            if (v26 >= v25 >> 1)
            {
              OUTLINED_FUNCTION_20_0(v25);
              sub_1B370EE80();
              v5 = v31;
            }

            *(v5 + 16) = v26 + 1;
            v27 = v5 + 16 * v26;
            *(v27 + 32) = v22;
            *(v27 + 40) = v24;
            v89 = v5;
          }

          else
          {
          }
        }

        else
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_6();
            sub_1B370EE80();
            v14 = v32;
          }

          v5 = *(v14 + 16);
          v28 = *(v14 + 24);
          if (v5 >= v28 >> 1)
          {
            OUTLINED_FUNCTION_20_0(v28);
            sub_1B370EE80();
            v14 = v33;
          }

          *(v14 + 16) = v5 + 1;
          v29 = v14 + 16 * v5;
          *(v29 + 32) = v16;
          *(v29 + 40) = v17;
        }

        v15 += 2;
        isa = (isa - 1);
      }

      while (isa);
    }

    if (!*(v14 + 16))
    {

      break;
    }

    sub_1B3C9CD08();
    if (qword_1EB8500A0 != -1)
    {
      OUTLINED_FUNCTION_6_1();
    }

    v3 = qword_1EB855DC0;
    v34 = v81;
    sub_1B3C9A478();
    OUTLINED_FUNCTION_43_3();
    v35 = *(v84 + 8);
    v84 += 8;
    v74 = v35;
    v35(v34, v82);
    v36 = *(v14 + 16);
    v83 = v3;
    if (v36)
    {
      v88 = MEMORY[0x1E69E7CC0];
      sub_1B3C9D428();
      v37 = v14 + 40;
      do
      {
        v38 = *(v37 - 8);
        v39 = objc_allocWithZone(MEMORY[0x1E6978738]);
        OUTLINED_FUNCTION_30_0();

        sub_1B3C9C5A8();
        OUTLINED_FUNCTION_44_3();
        v5 = [v5 initWithStringValue_];

        sub_1B3C9D408();
        sub_1B3C9D438();
        sub_1B3C9D448();
        sub_1B3C9D418();
        v37 += 16;
        --v36;
      }

      while (v36);

      v3 = v83;
    }

    else
    {
    }

    v7 = sub_1B3C9CB08();

    v41 = 0;
    v43 = v7 + 64;
    v42 = *(v7 + 8);
    v85 = v7;
    v44 = 1 << v7[32];
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v4 = v45 & v42;
    v6 = ((v44 + 63) >> 6);
    *&v40 = 138412546;
    v75 = v40;
    while (v4)
    {
LABEL_44:
      v47 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v48 = v47 | (v41 << 6);
      v49 = *(*(v85 + 6) + 8 * v48);
      v50 = *(v85 + 7) + 24 * v48;
      v52 = *v50;
      v51 = *(v50 + 8);
      if (*(v50 + 16))
      {
        sub_1B37ED090(v52, v51, 1);
        v7 = v49;
        v5 = sub_1B3C9CAD8();
        if (os_log_type_enabled(v3, v5))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v78 = v54;
          v80 = swift_slowAlloc();
          v88 = v80;
          *v53 = v75;
          *(v53 + 4) = v7;
          *v54 = v7;
          *(v53 + 12) = 2080;
          swift_getErrorValue();
          v76 = v86;
          v77 = v5;
          v5 = v87;
          v79 = v7;
          v3 = v83;
          v55 = sub_1B3C9D748();
          sub_1B3749364(v55, v56, &v88);
          OUTLINED_FUNCTION_30_0();

          *(v53 + 14) = v5;
          _os_log_impl(&dword_1B36F3000, v3, v77, "failed to get local identifier for cloud identifier %@ with error: %s", v53, 0x16u);
          sub_1B3732918(v78);
          OUTLINED_FUNCTION_3_5();
          LOBYTE(v7) = v80;
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
          OUTLINED_FUNCTION_3_5();
          OUTLINED_FUNCTION_3_5();
        }

        else
        {
        }

        sub_1B37ED0A0(v52, v51, 1);
      }

      else
      {
        v7 = v89;
        v57 = OUTLINED_FUNCTION_37_2();
        sub_1B37ED090(v57, v58, v59);
        v60 = OUTLINED_FUNCTION_37_2();
        sub_1B37ED090(v60, v61, v62);
        v63 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_36_6();
          sub_1B370EE80();
          v7 = v70;
        }

        v65 = *(v7 + 2);
        v64 = *(v7 + 3);
        v5 = v65 + 1;
        if (v65 >= v64 >> 1)
        {
          OUTLINED_FUNCTION_20_0(v64);
          sub_1B370EE80();
          v7 = v71;
        }

        *(v7 + 2) = v5;
        v66 = &v7[16 * v65];
        *(v66 + 4) = v52;
        *(v66 + 5) = v51;
        v67 = OUTLINED_FUNCTION_37_2();
        sub_1B37ED0A0(v67, v68, v69);
        v89 = v7;
        v3 = v83;
      }
    }

    while (1)
    {
      v46 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v46 >= v6)
      {

        sub_1B3C9CCF8();
        v72 = v81;
        sub_1B3C9A478();
        OUTLINED_FUNCTION_43_3();
        v74(v72, v82);
        goto LABEL_55;
      }

      v4 = *&v43[8 * v46];
      ++v41;
      if (v4)
      {
        v41 = v46;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_59:
    OUTLINED_FUNCTION_6_1();
  }

LABEL_55:
  if (!*(v89 + 2))
  {
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B37E8118()
{
  OUTLINED_FUNCTION_57_0();
  v1 = v0;
  sub_1B381284C(v2, v3);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1B3C9C5A8();

  v6 = [v4 stringForKey_];

  if (v6)
  {
    v7 = sub_1B3C9C5E8();
    v9 = v8;

    v10 = [v1 librarySpecificFetchOptions];
    [v10 setFetchLimit_];
    [v10 setWantsIncrementalChangeDetails_];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B3CF6CE0;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    v13 = sub_1B3C9C778();

    v14 = [v11 fetchAssetsWithLocalIdentifiers:v13 options:v10];

    v15 = [v14 firstObject];
    v16 = sub_1B37EA410(v15, v1);

    if ((v16 & 1) == 0)
    {
    }
  }

  OUTLINED_FUNCTION_37_1();
}

uint64_t AmbientPhotoFrameContentConfiguration.fetchAssets(photoLibrary:keyAsset:countLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 272) = a4;
  *(v5 + 120) = a2;
  *(v5 + 128) = a3;
  *(v5 + 112) = a1;
  v6 = sub_1B3C9A488();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  *(v5 + 152) = v7;
  *(v5 + 160) = v8;
  *(v5 + 273) = *(v4 + 8);
  *(v5 + 168) = *(v4 + 1);
  *(v5 + 184) = v4[4];

  return MEMORY[0x1EEE6DFA0](sub_1B37E83F4, 0, 0);
}

uint64_t sub_1B37E8A34(uint64_t a1)
{
  *(*v2 + 240) = a1;

  if (v1)
  {

    v3 = sub_1B37E9624;
  }

  else
  {
    v3 = sub_1B37E8B50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B37E90A8(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B37E91C8, 0, 0);
}

uint64_t sub_1B37E91C8()
{
  v7 = (v2 + 88);
  sub_1B37E7628(*(v2 + 264), sub_1B37EC614);
  v8 = *(v2 + 88);
  if (*(v2 + 120) && sub_1B3711890(*(v2 + 88)))
  {
    v9 = *(v2 + 112);
    v10 = *(v2 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360);
    v11 = OUTLINED_FUNCTION_51_0();
    *(v11 + 16) = xmmword_1B3CF6CE0;
    *(v11 + 56) = sub_1B3710718(0, &qword_1EB84F770);
    *(v11 + 32) = v10;
    sub_1B3C9C5E8();
    OUTLINED_FUNCTION_50_2();
    v3 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v4 = v9;
    v12 = v10;
    OUTLINED_FUNCTION_1_28();
    v7 = v3;
    sub_1B37EA828(v13, v14, v15, v16, v17, v18, v19, v20, &selRef_initWithObjects_photoLibrary_fetchType_fetchPropertySets_identifier_registerIfNeeded_);
    v21 = OUTLINED_FUNCTION_30();
    sub_1B37EBC98(v21, v8);
    if (sub_1B370EA28(v8) < 0)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v22 = sub_1B370EA28(v8);
    v0 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v23 = v3;
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_12_15();

    v8 = *(v2 + 88);
  }

  v67 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  if (sub_1B3711890(v8))
  {
    OUTLINED_FUNCTION_7_21();
    while (1)
    {
      if (v68)
      {
        MEMORY[0x1B8C6A930](v4, v8);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v32)
        {
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_61_0(v24, v25, v26, v27, v28, v29, v30, v31, v63, v64);
      }

      OUTLINED_FUNCTION_49_2();
      if (v33)
      {
        break;
      }

      if ([v0 fetchedObjectIDs])
      {
        v34 = OUTLINED_FUNCTION_30();
        sub_1B3710718(v34, &unk_1EB855530);
        v35 = OUTLINED_FUNCTION_34_5();

        if (v35 >> 62)
        {
          v5 = OUTLINED_FUNCTION_32_3();
        }

        else
        {
          OUTLINED_FUNCTION_47_3();
        }

        if (v5)
        {
          v69 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_17_14();
          if (v5 < 0)
          {
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_21_12();
          do
          {
            if (v8)
            {
              OUTLINED_FUNCTION_68_1();
            }

            else
            {
              v36 = OUTLINED_FUNCTION_60_1();
            }

            OUTLINED_FUNCTION_20_13(v36);
            OUTLINED_FUNCTION_31_4();
            OUTLINED_FUNCTION_9_15();
            if (v32)
            {
              OUTLINED_FUNCTION_11_14(v37);
              v7 = v69;
            }

            OUTLINED_FUNCTION_8_17();
          }

          while (!v38);

          v8 = v66;
        }

        else
        {

          v7 = MEMORY[0x1E69E7CC0];
        }

        OUTLINED_FUNCTION_67_1();
        v39 = OUTLINED_FUNCTION_44_3();
        OUTLINED_FUNCTION_66_1(v39, sel_addObjectsFromArray_, v40, v41, v42, v43, v44, v45, v63, v64, v65, v66, v67);
      }

      OUTLINED_FUNCTION_54_1();
      if (v38)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_33:
  v46 = *(v2 + 272);

  v47 = [v67 array];
  v48 = sub_1B3C9C788();

  if (v46)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_10_17();
  if ((v3 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_1B3C9D6C8();
  OUTLINED_FUNCTION_35_5();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_52_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_46_4();
    if (v38)
    {
      swift_dynamicCastClass();
      OUTLINED_FUNCTION_30_0();
      swift_unknownObjectRelease();
      if (v48)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  swift_unknownObjectRelease();
LABEL_35:
  OUTLINED_FUNCTION_16_14();
LABEL_42:
  swift_unknownObjectRelease();
LABEL_43:
  OUTLINED_FUNCTION_5_21();
  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_53_2();
  v49 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v50 = v8;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_1_28();
  sub_1B37EA828(v51, v52, v53, v54, v55, v56, v57, v58, &selRef_initWithOids_photoLibrary_fetchType_fetchPropertySets_identifier_registerIfNeeded_);
  sub_1B3C9CCF8();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_13_15();

  v59 = OUTLINED_FUNCTION_26_8();
  v6(v59);

  v60 = OUTLINED_FUNCTION_14_17();

  return v61(v60);
}

uint64_t sub_1B37E9AAC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1B37ECFD0(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1B37E78AC(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37E9B40()
{
  v0 = sub_1B3C98118();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B3C981C8();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1B3C97DF8();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C981A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855660);
  v8 = sub_1B3C981B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B3CFC4D0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A78], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v8);
  v14(v13 + 3 * v10, *MEMORY[0x1E6969A58], v8);
  sub_1B3749F9C();
  sub_1B3C98108();
  sub_1B3C98198();

  (*(v30 + 8))(v2, v31);
  (*(v3 + 8))(v5, v28);
  v15 = sub_1B3C97DD8();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = sub_1B3C97DE8() << 8;
  if (v19)
  {
    v18 = 0;
  }

  v20 = v18 ^ v17;
  v21 = sub_1B3C97DC8();
  v23 = v22;
  (*(v27 + 8))(v7, v29);
  v24 = v21 << 16;
  if (v23)
  {
    v24 = 0;
  }

  result = v20 ^ v24;
  if ((v20 ^ v24) < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37E9ED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B37E9EF8, 0, 0);
}

void sub_1B37E9EF8()
{
  v57 = MEMORY[0x1E69E7CC0];
  v1 = [*(v0 + 24) librarySpecificFetchOptions];
  [v1 setWantsIncrementalChangeDetails_];
  v2 = objc_opt_self();
  v3 = sub_1B3C9C778();
  v4 = [v2 fetchAssetCollectionsWithLocalIdentifiers:v3 options:v1];

  v5 = [v4 fetchedObjects];
  if (v5)
  {
    sub_1B3710718(0, &qword_1EB84F1A0);
    v6 = sub_1B3C9C788();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 48);
  v55 = [*(v0 + 24) librarySpecificFetchOptions];
  [v55 setWantsIncrementalChangeDetails_];
  if ((v7 & 1) == 0)
  {
    [v55 setFetchLimit_];
  }

  if (!v6)
  {
    v46 = v55;
LABEL_39:

    v47 = OUTLINED_FUNCTION_14_17();

    v48(v47);
    return;
  }

  if (*(v0 + 48))
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = *(v0 + 32);
  }

  sub_1B3710718(0, &qword_1EB84F200);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [v9 curatedAssetsLimit];

  if (v10 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_1B3711890(v6);
  v49 = v1;
  if (!v12)
  {
LABEL_38:

    v1 = v55;
    v46 = v49;
    goto LABEL_39;
  }

  v13 = v12;
  v54 = objc_opt_self();
  if (v13 < 1)
  {
    goto LABEL_43;
  }

  v14 = 0;
  v53 = v6 & 0xC000000000000001;
  v51 = v11;
  v52 = v6;
  v50 = v13;
  while (1)
  {
    v15 = v53 ? MEMORY[0x1B8C6A930](v14, v6) : *(v6 + 8 * v14 + 32);
    v16 = v15;
    v17 = *(v0 + 40);
    v18 = [v54 fetchAssetsInAssetCollection:v15 options:v55];
    v19 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
    v20 = [v18 fetchedObjectIDs];
    if (v20)
    {
      break;
    }

LABEL_35:
    if (v13 == ++v14)
    {
      goto LABEL_38;
    }
  }

  v21 = v20;
  v56 = v16;
  sub_1B3710718(0, &unk_1EB855530);
  v22 = sub_1B3C9C788();

  sub_1B370BA40(v22);
  OUTLINED_FUNCTION_30_0();

  v23 = sub_1B3C9C778();

  v24 = PFShuffledArrayWithRandomNumberGenerator();

  v25 = sub_1B3C9C788();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    if (v26 >= v11)
    {
      v27 = v11;
    }

    else
    {
      v27 = *(v25 + 16);
    }

    if (v11)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v26 == v28)
    {
    }

    else if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360);
      v29 = OUTLINED_FUNCTION_46_0();
      _swift_stdlib_malloc_size(v29);
      OUTLINED_FUNCTION_48_1();
      v29[2] = v28;
      v29[3] = v30;
      swift_arrayInitWithCopy();
    }

    v31 = v0;
    v32 = *(v0 + 24);
    sub_1B3C9C5E8();
    v33 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v34 = v32;
    OUTLINED_FUNCTION_1_28();
    sub_1B37EA828(v35, v36, v37, v38, v39, v40, v41, v42, &selRef_initWithOids_photoLibrary_fetchType_fetchPropertySets_identifier_registerIfNeeded_);
    v44 = v43;
    MEMORY[0x1B8C69CE0]();
    v45 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
    {
      OUTLINED_FUNCTION_20_0(v45);
      sub_1B3C9C7E8();
    }

    sub_1B3C9C808();

    v0 = v31;
    v11 = v51;
    v6 = v52;
    v13 = v50;
    goto LABEL_35;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

char *sub_1B37EA410(void *a1, char *a2)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  if (*v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 1;
  }

  if (v3 != 1)
  {
    goto LABEL_11;
  }

  v5 = a1;
  sub_1B37E7918(a2);
  if (!v6)
  {
LABEL_24:

LABEL_25:
    v14 = 0;
    return (v14 & 1);
  }

  v7 = v6;
  v8 = [a2 librarySpecificFetchOptions];
  [v8 setWantsIncrementalChangeDetails_];
  if ([v5 isFavorite])
  {
    v9 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v8];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 localIdentifier];

      sub_1B3C9C5E8();
      MEMORY[0x1EEE9AC00](v12);
      v13 = sub_1B3876E2C();

      if (v13)
      {

LABEL_11:
        v14 = 1;
        return (v14 & 1);
      }
    }
  }

  v15 = [objc_opt_self() fetchAssetCollectionsContainingAsset:v5 withType:1 options:v8];
  v16 = [v15 fetchedObjects];

  if (!v16)
  {

    goto LABEL_24;
  }

  v36 = v8;
  sub_1B3710718(0, &qword_1EB84F1A0);
  v17 = sub_1B3C9C788();

  v18 = sub_1B370EA28(v17);
  if (!v18)
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v32 = sub_1B370B65C(v22);
    v33 = sub_1B37EC0B8(v7, v32);

    v14 = v33 ^ 1;
    return (v14 & 1);
  }

  v19 = v18;
  v34 = v7;
  v35 = v5;
  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1B37EABC0(0, v18 & ~(v18 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v37;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B8C6A930](v21, v17);
      }

      else
      {
        v23 = *(v17 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v24 localIdentifier];
      v26 = sub_1B3C9C5E8();
      v28 = v27;

      v30 = *(v37 + 16);
      v29 = *(v37 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B37EABC0((v29 > 1), v30 + 1, 1);
      }

      ++v21;
      *(v37 + 16) = v30 + 1;
      v31 = v37 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    while (v19 != v21);

    v7 = v34;
    v5 = v35;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_1B37EA828(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, SEL *a9)
{
  v15 = sub_1B3C9C778();

  if (a4)
  {
    v16 = sub_1B3C9C5A8();
  }

  else
  {
    v16 = 0;
  }

  if (!a5)
  {
    v17 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v17 = sub_1B3C9C968();

  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = sub_1B3C9C5A8();

LABEL_9:
  [v9 *a9];

  OUTLINED_FUNCTION_27();
}

unint64_t sub_1B37EA954(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_1B37EA978(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_27(a3, result);
  }

  return result;
}

uint64_t sub_1B37EA9C8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_28_8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_28_8();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B37EAAA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_27(a3, result);
  }

  return result;
}

char *sub_1B37EAAC0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_27(a3, result);
  }

  return result;
}

void sub_1B37EAAE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360);
      v7 = OUTLINED_FUNCTION_46_0();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_48_1();
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

char *sub_1B37EABA0(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EAE20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EABC0(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EAF2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B37EABE0(void *a1, int64_t a2, char a3)
{
  result = sub_1B37EB034(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAC00(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EB16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B37EAC80(void *a1, int64_t a2, char a3)
{
  result = sub_1B37EB280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EACA0(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EB3B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EACC0(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EB4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EACE0(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EB5B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAD30(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EB780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAD80(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EB898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EADA0(char *a1, int64_t a2, char a3)
{
  result = sub_1B37EB9A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B37EAE20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EAF2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B37EB034(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EB16C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

void *sub_1B37EB280(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB850CA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EB3B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8555B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1B37EB4B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8555C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1B37EB5B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1B37EB6B0(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_3();
    if (v8 != v9)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 2);
  if (v7 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v12 = OUTLINED_FUNCTION_46_0();
    v13 = _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_42_3(v13);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v12 != a4 || &v15[8 * v10] <= v14)
    {
      memmove(v14, v15, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v10);
  }
}

char *sub_1B37EB780(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8555D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EB898(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB850C78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B37EB9A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void sub_1B37EBAA0(char a1, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_3();
    if (v8 != v9)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 2);
  if (v7 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v12 != a4 || &v15[v10] <= v14)
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }
}

uint64_t sub_1B37EBB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1B37EBBF4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B3C9D2C8();
LABEL_9:
  result = sub_1B3C9D3C8();
  *v1 = result;
  return result;
}

uint64_t sub_1B37EBC98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1B3C9D2C8();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1B37EBCF0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855648);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1B3C9D2C8();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1B3C9D2C8();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1B37EBE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1B3710718(0, &qword_1EB84FE50);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1B3C9D2C8();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B3C9D2C8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void sub_1B37EBF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440);
  swift_arrayDestroy();
  v14 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_17;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_26:
  v15 = sub_1B3C9D2C8();
LABEL_6:
  v16 = v15 - v8;
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = (v11 + 8 * v8);
  if (v5 != v17 || &v17[8 * v16] <= v5)
  {
    memmove(v5, v17, 8 * v16);
  }

  if (v9)
  {
    v19 = sub_1B3C9D2C8();
  }

  else
  {
    v19 = *(v10 + 16);
  }

  if (__OFADD__(v19, v12))
  {
    goto LABEL_28;
  }

  *(v10 + 16) = v19 + v12;
LABEL_17:
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_27();

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = v10 + 8 * v6;
    *(v20 + 32) = v4;
    if (v20 + 40 < v5)
    {
      swift_unknownObjectRetain();
      __break(1u);
    }

    OUTLINED_FUNCTION_27();
  }
}

uint64_t sub_1B37EC0B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_1B3C9D7C8();

  sub_1B3C9C668();
  v11 = sub_1B3C9D7F8();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_1B3C9D6A8();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

uint64_t sub_1B37EC320(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
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
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB855630, &qword_1EB855628);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855628);
          v9 = sub_1B37ECD88(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
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

uint64_t sub_1B37EC4A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
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
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for StorySongViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB8555A8, &qword_1EB854040);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854040);
          v9 = sub_1B37ECE1C(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
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

uint64_t sub_1B37EC614(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
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
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855648);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB855658, &qword_1EB855650);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855650);
          v9 = sub_1B37ECE84(v12, i, a3);
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

uint64_t sub_1B37EC8C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
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
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        _s26TitleSubtitleConfigurationCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB8555C0, &qword_1EB8555B8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8555B8);
          v9 = sub_1B37ECE84(v12, i, a3);
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

uint64_t sub_1B37ECA38(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
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
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B3710718(0, &qword_1EB84FE50);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&unk_1EB855598, &qword_1EB855590);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855590);
          v9 = sub_1B37ECE84(v12, i, a3);
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

uint64_t sub_1B37ECBBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B3C9D2C8();
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
    result = sub_1B370EA28(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for StoryMusicEditorSongCollectionViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B37ED03C(&qword_1EB855548, &qword_1EB855540);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855540);
          v9 = sub_1B37ECF10(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
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

uint64_t sub_1B37ECD30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

uint64_t (*sub_1B37ECD88(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1B37052D0(a3);
  sub_1B37EA954(a2, v6, a3);
  if (v6)
  {
    v7 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = MEMORY[0x1B8C6A930](a2, a3);
  }

  *a1 = v7;
  return sub_1B37ECE14;
}

uint64_t sub_1B37ECE1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

uint64_t (*sub_1B37ECE84(void *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1B37052D0(a3);
  sub_1B37EA954(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B8C6A930](a2, a3);
  }

  *a1 = v7;
  return sub_1B37ED0B4;
}

uint64_t sub_1B37ECF10(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1B37ECF70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_27(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_64_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_8();
    v5 = MEMORY[0x1B8C6A930](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1B37ECFD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B37ED03C(unint64_t *a1, uint64_t *a2)
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

id sub_1B37ED090(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1B37ED0A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1B37052D0(a3);

  return sub_1B37EA954(a2, v5, a3);
}

char *OUTLINED_FUNCTION_11_14@<X0>(unint64_t a1@<X8>)
{

  return sub_1B37EABA0((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_12_15()
{

  sub_1B37EBCF0(0, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return sub_1B3C9A458();
}

char *OUTLINED_FUNCTION_17_14()
{

  return sub_1B37EABA0(0, v0 & ~(v0 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_19_13()
{

  return sub_1B37EBBF4(v0);
}

void OUTLINED_FUNCTION_27_8()
{
  v2 = *(v0 + 112);

  sub_1B37E7918(v2);
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return sub_1B3C9D2C8();
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_1B3C9C788();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_1B3C9A458();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return swift_arrayInitWithCopy();
}

id OUTLINED_FUNCTION_60_1()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

id OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8 * v10);

  return v12;
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return sub_1B3C9A478();
}

id OUTLINED_FUNCTION_64_1()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_65_1()
{
  v3 = *(v1 + 128);

  return sub_1B37E9AAC(v3, v0);
}

id OUTLINED_FUNCTION_66_1(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{

  return [a13 a2];
}

uint64_t OUTLINED_FUNCTION_67_1()
{

  return sub_1B3C9C778();
}

void OUTLINED_FUNCTION_68_1()
{

  JUMPOUT(0x1B8C6A930);
}

unint64_t sub_1B37ED5F0(unint64_t result)
{
  if (result >= 3)
  {
    result = OUTLINED_FUNCTION_0_28();
    __break(1u);
  }

  return result;
}

id sub_1B37ED674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchFaceHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B37ED708(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
      return result;
    default:
      result = OUTLINED_FUNCTION_0_28();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1B37ED7F8(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0x706F742D656D6974;
      break;
    case 3:
      result = 0x6E65632D656D6974;
      break;
    case 4:
      result = 0x6769722D656D6974;
      break;
    default:
      result = OUTLINED_FUNCTION_0_28();
      __break(1u);
      break;
  }

  return result;
}

id sub_1B37ED8C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B3C9C5A8();

  v2 = [v0 initWithPath_];

  return v2;
}

id sub_1B37ED938(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1B3C9C5A8();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

uint64_t sub_1B37ED9BC(unint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_watchType] = a1;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_timeConfig] = a2;
  if (a1 >= 3)
  {
    result = OUTLINED_FUNCTION_0_28();
    __break(1u);
  }

  else
  {
    v5 = dbl_1B3D04320[a1];
    v6 = dbl_1B3D04338[a1];
    v32.receiver = v2;
    v32.super_class = type metadata accessor for WatchFaceView();
    v7 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, v5, v6);
    [v7 setClipsToBounds_];
    v8 = [v7 layer];
    [v8 setCornerCurve_];

    v9 = [v7 layer];
    [v9 setCornerRadius_];

    v10 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v11 = v7;
    v12 = [v10 init];
    [v11 setOverlayView_];

    v13 = OUTLINED_FUNCTION_2_28();
    [v13 setContentMode_];

    v14 = OUTLINED_FUNCTION_2_28();
    v15 = [v14 layer];

    v16 = [objc_opt_self() blackColor];
    v17 = [v16 CGColor];

    [v15 setShadowColor_];
    v18 = OUTLINED_FUNCTION_2_28();
    v19 = [v18 layer];

    [v19 setShadowOffset_];
    v20 = OUTLINED_FUNCTION_2_28();
    v21 = [v20 layer];

    [v21 setShadowRadius_];
    v22 = OUTLINED_FUNCTION_2_28();
    v23 = [v22 layer];

    LODWORD(v24) = 1053609165;
    [v23 setShadowOpacity_];

    v25 = OUTLINED_FUNCTION_2_28();
    sub_1B3710718(0, &unk_1EB855690);
    v26 = OUTLINED_FUNCTION_3_26();
    sub_1B3710718(0, &unk_1EB84FE20);
    v27 = sub_1B37ED7F8(a2);
    v29 = sub_1B37ED938(v27, v28, v26, 0);
    [v25 setImage_];

    v30 = OUTLINED_FUNCTION_2_28();
    [v11 addSubview_];

    return v11;
  }

  return result;
}

void sub_1B37EDD9C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for WatchFaceView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = [v0 overlayView];
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_timeConfig;
  v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate13WatchFaceView_timeConfig];
  [v0 bounds];
  sub_1B37ED708(v3);
  [v1 setFrame_];

  v4 = [v0 overlayView];
  v5 = *&v0[v2];
  sub_1B3710718(0, &unk_1EB855690);
  v6 = OUTLINED_FUNCTION_3_26();
  sub_1B3710718(0, &unk_1EB84FE20);
  v7 = sub_1B37ED7F8(v5);
  v9 = sub_1B37ED938(v7, v8, v6, 0);
  [v4 setImage_];
}

id sub_1B37EE090(double a1, double a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = type metadata accessor for WatchFaceCell();
  v9 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B3710718(0, &qword_1EB84F140);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v9;
  v12 = [ObjCClassFromMetadata sharedInstance];
  v13 = [v12 watchType];
  v14 = [v12 watchTimeConfig];
  v15 = objc_allocWithZone(type metadata accessor for WatchFaceView());
  v16 = sub_1B37ED9BC(v13, v14);
  [v11 setWallpaperView_];

  v17 = [v11 contentView];
  v18 = [v11 wallpaperView];

  [v17 addSubview_];
  return v11;
}

void sub_1B37EE23C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchFaceCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = [v0 wallpaperView];
  [v0 bounds];
  [v1 setFrame_];
}

id sub_1B37EE384(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id OUTLINED_FUNCTION_2_28()
{

  return [v0 (v1 + 4040)];
}

id OUTLINED_FUNCTION_3_26()
{

  return sub_1B37ED8C4();
}

uint64_t sub_1B37EE418(uint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1B3711890(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B8C6A930](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = sub_1B3734E90(&v7, v5);

    if (v6)
    {
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      result = sub_1B3C9D418();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B37EE550()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C9A698();

  return v1;
}

uint64_t sub_1B37EE5C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B3C9A6A8();
}

void *sub_1B37EE634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v8 = v7;
  LODWORD(v40) = a7;
  v46 = a5;
  v39 = a4;
  v45 = sub_1B3C9CC48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v44 = v15 - v14;
  v43 = sub_1B3C9CC78();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v42 = v20 - v19;
  v21 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_8();
  v41 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8556F8);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v38 - v28;
  sub_1B3C98148();
  v30 = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsViewModels) = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_rejectedSongIdentifiers) = 0;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongViewModels) = v30;
  v31 = v30;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState) = 1;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_actionPerformerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs) = v31;
  v32 = (v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_name);
  *v32 = a1;
  v32[1] = a2;
  v33 = v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey;
  v34 = *(a3 + 16);
  *v33 = *a3;
  *(v33 + 1) = v34;
  *(v33 + 2) = *(a3 + 32);
  *(v33 + 6) = *(a3 + 48);
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_storyModel) = a6;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsFetchResult) = v46;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_audioCatalog) = v39;
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_shouldShowCategoriesButton) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B3CF9810;
  type metadata accessor for StorySongViewModel();
  swift_allocObject();
  sub_1B37F04B0(a3, v47);
  v40 = a6;
  swift_unknownObjectRetain();
  *(v35 + 32) = sub_1B3723B70(0, 0);
  v47[0] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854040);
  sub_1B3C9A678();
  (*(v26 + 32))(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel__viewableSongs, v29, v24);
  v39 = sub_1B3710718(0, &qword_1EB84FE60);
  v47[0] = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855700);
  sub_1B3C9C608();
  sub_1B3C9C148();
  (*(v17 + 104))(v42, *MEMORY[0x1E69E8098], v43);
  v47[0] = MEMORY[0x1E69E7CC0];
  sub_1B37F054C(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  v36 = sub_1B3C9CCA8();
  swift_unknownObjectRelease();

  sub_1B371B0F4(a3);
  *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsLoadingQueue) = v36;
  return v8;
}

void sub_1B37EEB1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState);
  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState) = 2;
        v2 = swift_allocObject();
        swift_weakInit();

        sub_1B37EF220(sub_1B37F0600, v2);
      }

      else
      {
        v5 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState);
        sub_1B3725570(v1);
        v3 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
        sub_1B3710718(0, &unk_1EB855710);
        if (swift_dynamicCast())
        {
          sub_1B372555C(v1);
        }

        else
        {
          sub_1B372555C(v1);
        }
      }
    }

    else
    {

      sub_1B372555C(0);
    }
  }
}

uint64_t sub_1B37EEC6C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B37EECC4();
  }

  return result;
}

void sub_1B37EECC4()
{
  sub_1B37EED00();
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState) = 3;

  sub_1B372555C(v1);
}

uint64_t sub_1B37EED00()
{
  v11 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongViewModels);

  sub_1B37E7610(v1);
  v2 = sub_1B37EE418(v11);

  v3 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_rejectedSongIdentifiers;
  swift_beginAccess();
  if (!*(v0 + v3))
  {
    return sub_1B37EE5C4();
  }

  v4 = sub_1B3711890(v2);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return sub_1B37EE5C4();
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B8C6A930](i, v2);
      v7 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = *(v7 + 24);
    if (v8 && (v9 = [v8 identifier], sub_1B3C9C5E8(), v9, MEMORY[0x1EEE9AC00](v10), LOBYTE(v9) = sub_1B3876E2C(), , (v9 & 1) != 0))
    {
    }

    else
    {
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      result = sub_1B3C9D418();
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B37EEF38()
{
  v0 = sub_1B37EE550();
  v1 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1B3711890(v0);
  v3 = result;
  v4 = 0;
LABEL_2:
  v5 = v4;
  while (1)
  {
    while (1)
    {
      if (v5 == v3)
      {

        return v1;
      }

      if ((v0 & 0xC000000000000001) == 0)
      {
        break;
      }

      result = MEMORY[0x1B8C6A930](v5, v0);
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_18;
      }

      v8 = *(result + 24);
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      if (v8)
      {
        v4 = v5;
        goto LABEL_12;
      }
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v4 = v5 + 1;
    if (*(*(v0 + 32 + 8 * v5++) + 24))
    {
      result = swift_unknownObjectRetain();
LABEL_12:
      MEMORY[0x1B8C69CE0](result);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B3C9C7E8();
      }

      result = sub_1B3C9C808();
      v1 = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B37EF088(void *a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_rejectedSongIdentifiers;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    *(v1 + v3) = MEMORY[0x1E69E7CC0];
  }

  v4 = [a1 identifier];
  v5 = sub_1B3C9C5E8();
  v7 = v6;
  result = swift_beginAccess();
  if (*(v1 + v3))
  {
    sub_1B370EAC8();
    v9 = *(*(v1 + v3) + 16);
    sub_1B370EC04();
    v10 = *(v1 + v3);
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 16 * v9;
    *(v11 + 32) = v5;
    *(v11 + 40) = v7;
    *(v1 + v3) = v10;
    swift_endAccess();

    sub_1B37EED00();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B389DF24(a1);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37EF1C8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1B3884434();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B37EF220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v24 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v23 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsFetchResult);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = a1;
  v20[5] = a2;
  aBlock[4] = sub_1B37F0538;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_35;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1B3C9C138();
  sub_1B37F054C(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v17, v11, v21);
  _Block_release(v21);
  (*(v24 + 8))(v11, v6);
  (*(v13 + 8))(v17, v23);
}

uint64_t sub_1B37EF518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v6 = sub_1B3C9C118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B3C9C168();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1E69E7CC0];
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v30 = a4;
    v31 = v14;
    v32 = v11;
    v33 = v9;
    v17 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v29 = v10;
      v18 = 0;
      do
      {
        v19 = [a1 objectAtIndex_];
        MEMORY[0x1B8C69CE0]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B3C9C7E8();
        }

        ++v18;
        sub_1B3C9C808();
      }

      while (v16 != v18);
      v20 = v36;
      v10 = v29;
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      sub_1B3710718(0, &qword_1EB84FE60);
      v29 = sub_1B3C9CC88();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v20;
      v24 = v30;
      v23[4] = v34;
      v23[5] = v24;
      aBlock[4] = sub_1B37F05F4;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B370C014;
      aBlock[3] = &block_descriptor_35;
      v25 = _Block_copy(aBlock);

      v26 = v31;
      sub_1B3C9C138();
      aBlock[0] = v17;
      sub_1B37F054C(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
      sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
      v27 = v33;
      sub_1B3C9D278();
      v28 = v29;
      MEMORY[0x1B8C6A210](0, v26, v27, v25);
      _Block_release(v25);

      (*(v7 + 8))(v27, v6);
      return (*(v32 + 8))(v26, v10);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1B37EF930(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1B3711890(a2);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_9:
    *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsViewModels) = v7;

    return a3(v14);
  }

  v8 = v6;
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1B3C9D428();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_storyModel);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B8C6A930](v10, a2);
      }

      else
      {
        v12 = *(a2 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      ++v10;
      type metadata accessor for StorySongViewModel();
      swift_allocObject();
      v13 = v11;
      sub_1B3723B70(v12, v11);
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
    }

    while (v8 != v10);
    v7 = v15;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37EFA84(uint64_t a1)
{
  v22 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs;
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs);
  v4 = sub_1B3711890(v3);
  v5 = sub_1B3711890(a1);
  v26 = v3 & 0xFFFFFFFFFFFFFF8;
  v27 = v3 & 0xC000000000000001;
  v25 = v3 + 32;
  v23 = v3;

  v7 = 0;
  v8 = 0;
  while (1)
  {
    if (v8 == v4)
    {
      v9 = 0;
      v10 = 0;
      v8 = v4;
      if (v5 == v7)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    if (v27)
    {
      result = MEMORY[0x1B8C6A930](v8, v23);
      v9 = result;
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v8 >= *(v26 + 16))
      {
        goto LABEL_43;
      }

      v9 = *(v25 + 8 * v8);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_42;
    }

    if (v5 == v7)
    {
      break;
    }

LABEL_11:
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B8C6A930](v7, a1);
      v10 = result;
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v10 = *(a1 + 8 * v7 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v12 = [v9 isEqual_];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    ++v7;
    if ((v12 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v9)
  {
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
  }

  else
  {
    v10 = 0;
LABEL_25:

    if (!v10)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v13 = v24;
  v14 = *(v24 + v22);
  v15 = sub_1B3711890(v14);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v15;
    v28 = MEMORY[0x1E69E7CC0];

    result = sub_1B3C9D428();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v19 = *(v24 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_storyModel);
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1B8C6A930](v18, v14);
        }

        else
        {
          v20 = *(v14 + 8 * v18 + 32);
          swift_unknownObjectRetain();
        }

        ++v18;
        type metadata accessor for StorySongViewModel();
        swift_allocObject();
        v21 = v19;
        sub_1B3723B70(v20, v19);
        sub_1B3C9D408();
        sub_1B3C9D438();
        sub_1B3C9D448();
        sub_1B3C9D418();
      }

      while (v17 != v18);

      v16 = v28;
      v13 = v24;
      goto LABEL_35;
    }

LABEL_44:
    __break(1u);
    return result;
  }

LABEL_35:
  *(v13 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongViewModels) = v16;

  return sub_1B37EED00();
}

uint64_t sub_1B37EFD98(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_customUserSelectedSongs) = a1;
  sub_1B37EFA84(v2);
}

uint64_t sub_1B37EFDF4()
{
  sub_1B3C98158();
  OUTLINED_FUNCTION_2_29();
  sub_1B37F054C(v0, v1);
  return sub_1B3C9C508();
}

uint64_t sub_1B37EFE68()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_id;
  sub_1B3C98158();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey + 48);

  swift_unknownObjectRelease();

  v4 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel__viewableSongs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8556F8);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v4);
  sub_1B372555C(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_songLoadingState));
  sub_1B370A71C(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_actionPerformerDelegate);

  return v0;
}

uint64_t sub_1B37EFFE0()
{
  sub_1B37EFE68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for StoryMusicEditorSongCollectionViewModel()
{
  result = qword_1EB8556D0;
  if (!qword_1EB8556D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B37F008C()
{
  sub_1B3C98158();
  if (v0 <= 0x3F)
  {
    sub_1B37F0254();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B37F01C8()
{
  sub_1B3C9D7C8();
  sub_1B3C98158();
  OUTLINED_FUNCTION_2_29();
  sub_1B37F054C(v0, v1);
  sub_1B3C9C508();
  return sub_1B3C9D7F8();
}

void sub_1B37F0254()
{
  if (!qword_1EB8556E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854040);
    v0 = sub_1B3C9A6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8556E0);
    }
  }
}

uint64_t sub_1B37F0300@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoryMusicEditorSongCollectionViewModel();
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

uint64_t sub_1B37F0340@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_id;
  v5 = sub_1B3C98158();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1B37F0428()
{
  sub_1B3C9D7C8();
  sub_1B37EFDF4();
  return sub_1B3C9D7F8();
}

uint64_t sub_1B37F054C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_28Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

unint64_t sub_1B37F062C()
{
  result = qword_1EB855720;
  if (!qword_1EB855720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855720);
  }

  return result;
}

unint64_t sub_1B37F0684()
{
  result = qword_1EB855728;
  if (!qword_1EB855728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855728);
  }

  return result;
}

uint64_t sub_1B37F06F4()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878E68);
  __swift_project_value_buffer(v6, qword_1EB878E68);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37F08E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855748);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855750);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37F1ACC();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855758);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}