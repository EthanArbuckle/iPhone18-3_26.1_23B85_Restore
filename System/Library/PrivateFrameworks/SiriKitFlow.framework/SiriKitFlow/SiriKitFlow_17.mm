uint64_t sub_1DCC999D4(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 84);
  v5 = v4 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v3 + 64);
  if (!v4)
  {
    ++v6;
  }

  if (v5 > 1)
  {
    goto LABEL_22;
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = (~(-1 << v7) - v5 + 2) >> v7;
    if (v9 > 0xFFFE)
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFE)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (!v9)
    {
LABEL_22:
      if (v4 < 2)
      {
        return 0;
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v4, v2);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1DCC99B44(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  if (v8 <= 1)
  {
    if (v10 <= 3)
    {
      v12 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v12 > 0xFFFE)
      {
        v4 = 4;
      }

      else
      {
        if (v12 < 0xFF)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        if (v12)
        {
          v4 = v13;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    else
    {
      v4 = 1;
    }
  }

  if (v8 >= a2)
  {
    switch(v4)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_56:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v7 >= 2)
          {
            if (a2 >= v7)
            {
              if (v9 <= 3)
              {
                v18 = ~(-1 << (8 * v9));
              }

              else
              {
                v18 = -1;
              }

              if (v9)
              {
                v19 = v18 & (a2 - v7);
                if (v9 <= 3)
                {
                  v20 = v9;
                }

                else
                {
                  v20 = 4;
                }

                bzero(a1, v9);
                switch(v20)
                {
                  case 2:
                    *a1 = v19;
                    break;
                  case 3:
                    *a1 = v19;
                    a1[2] = BYTE2(v19);
                    break;
                  case 4:
                    *a1 = v19;
                    break;
                  default:
                    *a1 = v19;
                    break;
                }
              }
            }

            else
            {
              v17 = a2 + 1;

              __swift_storeEnumTagSinglePayload(a1, v17, v7, v5);
            }
          }
        }

        break;
    }
  }

  else
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> v11) + 1;
      if (v10)
      {
        v16 = v14 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v10 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
    }

    switch(v4)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1DCC99DF4(unint64_t a1, void *a2)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1DCC2315C(a1, a2);
  }
}

void sub_1DCC99E18(unint64_t a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1DCC99E2C(a1, a2, SBYTE1(a2));
  }
}

void sub_1DCC99E2C(unint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_1DCBF44A0(a1);
  }
}

void sub_1DCC99E48(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1DCC99E58(unint64_t a1)
{
  if ((a1 & 0xF000000000000006) != 0xB000000000000006)
  {
    sub_1DCBB1234(a1);
  }
}

uint64_t sub_1DCC99EC4(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCC99F14(a1, a2);
  return v4;
}

uint64_t sub_1DCC99F14(__int128 *a1, __int128 *a2)
{
  sub_1DCAFF9E8(a1, v2 + 56);
  sub_1DCAFF9E8(a2, v2 + 16);
  return v2;
}

void sub_1DCC99F4C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_30_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA33E8, &qword_1DD10CAB0);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_28_10();
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  (*(v9 + 8))(v8, v9);
  OUTLINED_FUNCTION_49_3();
  swift_storeEnumTagMultiPayload();
  v1(v2);
  sub_1DCB0E9D8(v2, qword_1ECCA33E8, &qword_1DD10CAB0);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t *), uint64_t a22)
{
  OUTLINED_FUNCTION_50();
  v23 = v22;
  v25 = v24;
  v263 = a22;
  v264 = a21;
  v26 = *v23;
  v261 = v27;
  v262 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v29 = OUTLINED_FUNCTION_20_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  v257 = v255 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v34, v35);
  v255[1] = v255 - v36;
  OUTLINED_FUNCTION_29_0();
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = v255 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = v255 - v44;
  MEMORY[0x1EEE9AC00](v43, v46);
  v256 = v255 - v47;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v48, v49);
  v255[2] = v255 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  v52 = OUTLINED_FUNCTION_20_0(v51);
  v54 = *(v53 + 64);
  v56 = MEMORY[0x1EEE9AC00](v52, v55);
  v58 = v255 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v56, v59);
  v62 = v255 - v61;
  v64 = MEMORY[0x1EEE9AC00](v60, v63);
  v66 = v255 - v65;
  v68 = MEMORY[0x1EEE9AC00](v64, v67);
  v70 = v255 - v69;
  v72 = MEMORY[0x1EEE9AC00](v68, v71);
  v74 = v255 - v73;
  v76 = MEMORY[0x1EEE9AC00](v72, v75);
  v78 = v255 - v77;
  MEMORY[0x1EEE9AC00](v76, v79);
  v259 = v255 - v80;
  OUTLINED_FUNCTION_29_0();
  v83 = MEMORY[0x1EEE9AC00](v81, v82);
  v85 = v255 - v84;
  MEMORY[0x1EEE9AC00](v83, v86);
  v258 = v255 - v87;
  v272 = &unk_1F5898308;
  v260 = swift_dynamicCastObjCProtocolConditional();
  if (!v260)
  {
    v259 = v62;
    v260 = v70;
    v96 = v257;
    v256 = v45;
    v258 = v41;
    v97 = v261;
    v271 = &unk_1F58986B0;
    v98 = swift_dynamicCastObjCProtocolConditional();
    v255[0] = v25;
    if (v98)
    {
      v99 = v98;
      v100 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
      v267 = 0;
      v268 = 0xE000000000000000;
      v101 = v97;
      v102 = [v97 fullName];
      if (v102)
      {
        v103 = v102;
        sub_1DD0DDFBC();
      }

      v146 = v78;
      v147 = OUTLINED_FUNCTION_49_3();
      MEMORY[0x1E12A6780](v147);

      v148 = sub_1DD0DDF8C();

      v149 = [v100 personNameComponentsFromString_];

      v150 = v260;
      if (v149)
      {
        sub_1DD0DAD5C();

        v151 = 0;
      }

      else
      {
        v151 = 1;
      }

      v152 = sub_1DD0DAD7C();
      __swift_storeEnumTagSinglePayload(v74, v151, 1, v152);
      sub_1DCC9DCF0(v74, v146);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      OUTLINED_FUNCTION_92_2();
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_1DD0E15D0;
      v154 = objc_allocWithZone(MEMORY[0x1E696E948]);
      OUTLINED_FUNCTION_13_19();
      sub_1DCB09910(v146, v150, &qword_1ECCA32B0, &qword_1DD0E8538);
      v155 = [v97 internalGUID];
      if (v155)
      {
        v156 = v155;
        v157 = sub_1DD0DDFBC();
        v159 = v158;
      }

      else
      {
        v157 = 0;
        v159 = 0;
      }

      v160 = objc_allocWithZone(MEMORY[0x1E696E940]);
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_18_14();
      *(v153 + 32) = sub_1DCC9DA88(v161, v162, v163, v164, v165, v157, v159, 0, v255[0]);
      v166 = sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
      v167 = sub_1DD0DE2DC();

      [v99 setRecipients_];

      v168 = *(v262 + 80);
      if (!swift_dynamicCastUnknownClass())
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v227 = OUTLINED_FUNCTION_36_15();
        __swift_project_value_buffer(v227, qword_1EDE57E00);
        OUTLINED_FUNCTION_19_15();
        v229 = v228;
        v230 = *(v228 + 16);
        v231 = OUTLINED_FUNCTION_16_14();
        v232(v231);
        OUTLINED_FUNCTION_35_2();
        v233 = v166;
        v234 = v258;
        sub_1DCB09910(v233, v258, &unk_1ECCA7470, &qword_1DD0E16E0);
        OUTLINED_FUNCTION_38_2(v234);
        if (v218)
        {
          sub_1DCB0E9D8(v258, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v241 = sub_1DD0DD8EC();
          v242 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v267 = swift_slowAlloc();
            *v243 = 136315650;
            v244 = sub_1DD0DEC3C();
            v246 = sub_1DCB10E9C(v244, v245, &v267);

            *(v243 + 4) = v246;
            *(v243 + 12) = 2048;
            *(v243 + 14) = 49;
            *(v243 + 22) = 2080;
            *(v243 + 24) = sub_1DCB10E9C(v99 + 14, v101 | 0x8000000000000000, &v267);
            OUTLINED_FUNCTION_37_14(&dword_1DCAFC000, v247, v248, "FatalError at %s:%lu - %s");
            OUTLINED_FUNCTION_60_1();
            OUTLINED_FUNCTION_92_0();
            MEMORY[0x1E12A8390](v243, -1, -1);
          }

          (*(v229 + 8))(v258, v227);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(v99 + 14, v101 | 0x8000000000000000);
      }

      v169 = v255[0];
      v170 = [v99 recipients];
      if (v170)
      {
        v171 = v170;
        v172 = sub_1DD0DE2EC();

        if (sub_1DCB08B14(v172))
        {
          v173 = OUTLINED_FUNCTION_31_10();
          sub_1DCB35460(v173, v174, v172);
          if ((v172 & 0xC000000000000001) != 0)
          {
            v175 = MEMORY[0x1E12A72C0](0, v172);
          }

          else
          {
            v175 = *(v172 + 32);
          }

          v176 = v175;

          *(&v266 + 1) = v166;
          *&v265 = v176;
          goto LABEL_40;
        }
      }

      v265 = 0u;
      v266 = 0u;
LABEL_40:
      OUTLINED_FUNCTION_35_13();
      v269 = 0;
      v177 = v169;
LABEL_56:
      v207 = v177;
      v264(&v267);

      type metadata accessor for IntentPromptAnswer();
      sub_1DD0DE97C();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v208 = sub_1DD0DF22C();
      OUTLINED_FUNCTION_2(v208);
      (*(v209 + 8))(&v267);
      v137 = v146;
      goto LABEL_57;
    }

    v270 = &unk_1F58989A0;
    v138 = swift_dynamicCastObjCProtocolConditional();
    if (!v138)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v235 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v235, qword_1EDE57E00);
      OUTLINED_FUNCTION_19_15();
      v237 = v236;
      v238 = *(v236 + 16);
      v239 = OUTLINED_FUNCTION_16_14();
      v240(v239);
      OUTLINED_FUNCTION_35_2();
      sub_1DCB09910(v25, v96, &unk_1ECCA7470, &qword_1DD0E16E0);
      OUTLINED_FUNCTION_38_2(v96);
      if (v218)
      {
        sub_1DCB0E9D8(v96, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v249 = sub_1DD0DD8EC();
        v250 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          *v251 = 136315650;
          v252 = sub_1DD0DEC3C();
          v254 = sub_1DCB10E9C(v252, v253, &v267);

          *(v251 + 4) = v254;
          *(v251 + 12) = 2048;
          *(v251 + 14) = 61;
          *(v251 + 22) = 2080;
          *(v251 + 24) = sub_1DCB10E9C(0xD000000000000013, 0x80000001DD116890, &v267);
          _os_log_impl(&dword_1DCAFC000, v249, v250, "FatalError at %s:%lu - %s", v251, 0x20u);
          OUTLINED_FUNCTION_60_1();
          OUTLINED_FUNCTION_92_0();
          MEMORY[0x1E12A8390](v251, -1, -1);
        }

        (*(v237 + 8))(v96, v235);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000013, 0x80000001DD116890);
    }

    v139 = v138;
    v140 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    v141 = 0xE000000000000000;
    v267 = 0;
    v268 = 0xE000000000000000;
    v142 = [v97 fullName];
    if (v142)
    {
      v143 = v142;
      v144 = sub_1DD0DDFBC();
      v141 = v145;
    }

    else
    {
      v144 = 0;
    }

    v146 = v66;
    MEMORY[0x1E12A6780](v144, v141);

    v178 = sub_1DD0DDF8C();

    v179 = [v140 personNameComponentsFromString_];

    if (v179)
    {
      v180 = v259;
      sub_1DD0DAD5C();

      v181 = 0;
    }

    else
    {
      v181 = 1;
      v180 = v259;
    }

    v182 = sub_1DD0DAD7C();
    __swift_storeEnumTagSinglePayload(v180, v181, 1, v182);
    sub_1DCC9DCF0(v180, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v183 = swift_allocObject();
    *(v183 + 16) = xmmword_1DD0E15D0;
    v184 = objc_allocWithZone(MEMORY[0x1E696E948]);
    OUTLINED_FUNCTION_13_19();
    sub_1DCB09910(v66, v58, &qword_1ECCA32B0, &qword_1DD0E8538);
    v185 = [v97 internalGUID];
    if (v185)
    {
      v186 = v185;
      v187 = sub_1DD0DDFBC();
      v189 = v188;
    }

    else
    {
      v187 = 0;
      v189 = 0;
    }

    v190 = objc_allocWithZone(MEMORY[0x1E696E940]);
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_18_14();
    *(v183 + 32) = sub_1DCC9DA88(v191, v192, v193, v194, v195, v187, v189, 0, v255[0]);
    v196 = sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
    v197 = sub_1DD0DE2DC();

    [v139 setSenders_];

    OUTLINED_FUNCTION_33_11();
    v198 = swift_dynamicCastUnknownClassUnconditional();
    v199 = v255[0];
    v200 = [v139 senders];
    if (v200)
    {
      v201 = v200;
      v202 = sub_1DD0DE2EC();

      if (sub_1DCB08B14(v202))
      {
        v203 = OUTLINED_FUNCTION_31_10();
        sub_1DCB35460(v203, v204, v202);
        if ((v202 & 0xC000000000000001) != 0)
        {
          v205 = MEMORY[0x1E12A72C0](0, v202);
        }

        else
        {
          v205 = *(v202 + 32);
        }

        v206 = v205;

        *(&v266 + 1) = v196;
        *&v265 = v206;
        goto LABEL_55;
      }
    }

    v265 = 0u;
    v266 = 0u;
LABEL_55:
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v265, v198, &v267);
    v269 = 0;
    v177 = v199;
    goto LABEL_56;
  }

  v88 = v25;
  v89 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v90 = 0xE000000000000000;
  v267 = 0;
  v268 = 0xE000000000000000;
  v91 = v261;
  v92 = [v261 fullName];
  if (v92)
  {
    v93 = v92;
    v94 = sub_1DD0DDFBC();
    v90 = v95;
  }

  else
  {
    v94 = 0;
  }

  v104 = v258;
  MEMORY[0x1E12A6780](v94, v90);

  v105 = sub_1DD0DDF8C();

  v106 = [v89 personNameComponentsFromString_];

  v107 = v259;
  if (v106)
  {
    sub_1DD0DAD5C();

    v108 = 0;
  }

  else
  {
    v108 = 1;
  }

  v109 = sub_1DD0DAD7C();
  __swift_storeEnumTagSinglePayload(v85, v108, 1, v109);
  sub_1DCC9DCF0(v85, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  OUTLINED_FUNCTION_92_2();
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1DD0E15D0;
  v111 = objc_allocWithZone(MEMORY[0x1E696E948]);
  OUTLINED_FUNCTION_13_19();
  sub_1DCB09910(v104, v107, &qword_1ECCA32B0, &qword_1DD0E8538);
  v112 = [v91 internalGUID];
  if (v112)
  {
    v113 = v112;
    v114 = sub_1DD0DDFBC();
    v116 = v115;
  }

  else
  {
    v114 = 0;
    v116 = 0;
  }

  v117 = v260;
  v118 = objc_allocWithZone(MEMORY[0x1E696E940]);
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_18_14();
  *(v110 + 32) = sub_1DCC9DA88(v119, v120, v121, v122, v123, v114, v116, 0, v255[0]);
  v124 = sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  v125 = sub_1DD0DE2DC();

  [v117 setContacts_];

  OUTLINED_FUNCTION_33_11();
  if (!swift_dynamicCastUnknownClass())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v210 = OUTLINED_FUNCTION_36_15();
    __swift_project_value_buffer(v210, qword_1EDE57E00);
    OUTLINED_FUNCTION_19_15();
    v212 = v211;
    v213 = *(v211 + 16);
    v214 = OUTLINED_FUNCTION_16_14();
    v215(v214);
    OUTLINED_FUNCTION_35_2();
    v216 = v124;
    v217 = v256;
    sub_1DCB09910(v216, v256, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_38_2(v217);
    if (v218)
    {
      sub_1DCB0E9D8(v256, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v219 = sub_1DD0DD8EC();
      v220 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        *v221 = 136315650;
        v222 = sub_1DD0DEC3C();
        v224 = sub_1DCB10E9C(v222, v223, &v267);

        *(v221 + 4) = v224;
        *(v221 + 12) = 2048;
        *(v221 + 14) = 40;
        *(v221 + 22) = 2080;
        *(v221 + 24) = sub_1DCB10E9C(v104 + 20, 0x80000001E696E940, &v267);
        OUTLINED_FUNCTION_37_14(&dword_1DCAFC000, v225, v226, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_60_1();
        OUTLINED_FUNCTION_92_0();
        MEMORY[0x1E12A8390](v221, -1, -1);
      }

      (*(v212 + 8))(v256, v210);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v104 + 20, 0x80000001E696E940);
  }

  v126 = v88;
  v127 = [v117 contacts];
  if (v127)
  {
    v128 = v127;
    v129 = sub_1DD0DE2EC();

    if (sub_1DCB08B14(v129))
    {
      v130 = OUTLINED_FUNCTION_31_10();
      sub_1DCB35460(v130, v131, v129);
      if ((v129 & 0xC000000000000001) != 0)
      {
        v132 = MEMORY[0x1E12A72C0](0, v129);
      }

      else
      {
        v132 = *(v129 + 32);
      }

      v133 = v132;

      *(&v266 + 1) = v124;
      *&v265 = v133;
      goto LABEL_22;
    }
  }

  v265 = 0u;
  v266 = 0u;
LABEL_22:
  OUTLINED_FUNCTION_35_13();
  v269 = 0;
  v134 = v126;
  v264(&v267);

  type metadata accessor for IntentPromptAnswer();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v135 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_2(v135);
  (*(v136 + 8))(&v267);
  v137 = v104;
LABEL_57:
  sub_1DCB0E9D8(v137, &qword_1ECCA32B0, &qword_1DD0E8538);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9B3B4()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  v5 = *v0;
  v6 = type metadata accessor for Parse(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  OUTLINED_FUNCTION_6_27();
  v11 = sub_1DD0DC76C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v18 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_1_34(v18);
  sub_1DCC9D84C(v4 + v19, v1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v30 = *(v5 + 80);
      type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError();
      OUTLINED_FUNCTION_0_28();
      v31 = OUTLINED_FUNCTION_10_5();
      *v32 = 3;
      v38 = 1;
      v37[0] = v31;
      memcpy(&v37[1], v39, 0x48uLL);
      v33 = OUTLINED_FUNCTION_34_13(1);
      v34(v33);
      memcpy(v40, v37, 0x51uLL);
      sub_1DCB0E9D8(v40, &unk_1ECCA32A0, &qword_1DD0E94B8);
      OUTLINED_FUNCTION_2_40();
      sub_1DCB42DC0(v1, v35);
      goto LABEL_6;
    }

    v22 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
  }

  v23 = OUTLINED_FUNCTION_11_24(v14);
  v24(v23);
  OUTLINED_FUNCTION_21_8();
  (*(v5 + 24))(v36, v2, v1, v5);
  v25 = *(v14 + 8);
  v26 = OUTLINED_FUNCTION_49_3();
  v27(v26);
  v39[0] = 0;
  memcpy(v37, v36, 0x50uLL);
  v28 = OUTLINED_FUNCTION_34_13(0);
  v29(v28);
  memcpy(v40, v37, 0x51uLL);
  sub_1DCB0E9D8(v40, &unk_1ECCA32A0, &qword_1DD0E94B8);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_92_2();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a9;
  v11[4] = v10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9B6B8(uint64_t a1, void (*a2)(void **), uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for AceOutput();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = *a1;
  if ((*(a1 + 72) & 1) == 0)
  {
    v27 = *a1;
    v17 = *(a1 + 24);
    v28 = *(a1 + 8);
    v29 = v17;
    v18 = *(a1 + 56);
    v30 = *(a1 + 40);
    v31 = v18;
    v19 = a4[10];
    v20 = a4[11];
    __swift_project_boxed_opaque_existential_1(a4 + 7, v19);
    (*(v20 + 96))(v19, v20);
    v21 = a4[5];
    v22 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v21);
    (*(v22 + 40))(v21, v22);
    v23 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v23);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  v27 = *a1;
  LOBYTE(v30) = 1;
  v16 = v15;
  a2(&v27);
  return sub_1DCB0E9D8(&v27, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCC9B9B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4A548;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCC9BA4C@<X0>(uint64_t a1@<X6>, char *a2@<X8>)
{
  v6 = type metadata accessor for Parse(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = sub_1DD0DC76C();
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  v21 = OUTLINED_FUNCTION_6_27();
  v22 = type metadata accessor for Input(v21);
  OUTLINED_FUNCTION_1_34(v22);
  sub_1DCC9D84C(a1 + v23, v13, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *a2 = 2;
      OUTLINED_FUNCTION_2_40();
      return sub_1DCB42DC0(v13, v32);
    }

    v26 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
  }

  (*(v17 + 32))(v3, v13, v14);
  v27 = v2[5];
  v28 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v27);
  v29 = (*(v28 + 16))(v3, v27, v28);
  result = (*(v17 + 8))(v3, v14);
  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  *a2 = v31;
  return result;
}

void sub_1DCC9BC08()
{
  OUTLINED_FUNCTION_30_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3250, &qword_1DD0E9428);
  v1 = swift_allocObject();
  *(v1 + 24) = v0;
  *(v1 + 16) = 0;

  sub_1DD0DCF8C();
}

void sub_1DCC9BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(id *))
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v27 = v26;
  v75 = *v21;
  v28 = type metadata accessor for Parse(0);
  v29 = OUTLINED_FUNCTION_2(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  OUTLINED_FUNCTION_6_27();
  v33 = sub_1DD0DC76C();
  v34 = OUTLINED_FUNCTION_9(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34, v39);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v40 = *v25;
  v41 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_1_34(v41);
  sub_1DCC9D84C(v27 + v42, v22, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v64 = *(v75 + 80);
      type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError();
      OUTLINED_FUNCTION_0_28();
      v65 = OUTLINED_FUNCTION_10_5();
      *v66 = 3;
      v77[0] = v65;
      LOWORD(v77[1]) = 0;
      BYTE2(v77[1]) = 1;
      a21(v77);
      sub_1DCC9DC8C(v77[0], LOWORD(v77[1]), SBYTE2(v77[1]));
      OUTLINED_FUNCTION_2_40();
      sub_1DCB42DC0(v22, v67);
      goto LABEL_36;
    }

    v45 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
  }

  v46 = OUTLINED_FUNCTION_11_24(v36);
  v47(v46);
  OUTLINED_FUNCTION_21_8();
  (*(v27 + 24))(v76, v23, v22, v27);
  v48 = *(v36 + 8);
  v49 = OUTLINED_FUNCTION_49_3();
  v50(v49);
  memcpy(v77, v76, 0x50uLL);
  v51 = sub_1DCB08B14(v40);
  v52 = 0;
  v53 = v40 & 0xC000000000000001;
  while (1)
  {
    if (v51 == v52)
    {
      sub_1DCB0E9D8(v77, &qword_1ECCA3298, &qword_1DD0E94A0);
      if (!v51)
      {
        v71 = *(v75 + 80);
        type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError();
        OUTLINED_FUNCTION_0_28();
        v72 = OUTLINED_FUNCTION_10_5();
        *v73 = 0;
        v76[0] = v72;
        LOWORD(v76[1]) = 0;
        BYTE2(v76[1]) = 1;
        a21(v76);
        goto LABEL_35;
      }

      v68 = OUTLINED_FUNCTION_31_10();
      sub_1DCB35460(v68, v69, v40);
      if (v53)
      {
        goto LABEL_39;
      }

      v70 = *(v40 + 32);
LABEL_30:
      v55 = v70;
      goto LABEL_34;
    }

    if (v53)
    {
      v54 = MEMORY[0x1E12A72C0](v52, v40);
    }

    else
    {
      if (v52 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v54 = *(v40 + 8 * v52 + 32);
    }

    v55 = v54;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v70 = MEMORY[0x1E12A72C0](0, v40);
      goto LABEL_30;
    }

    v56 = sub_1DCCC331C(v54);
    v58 = v57;
    if (v77[1] == 1)
    {
      if (!v57)
      {
        goto LABEL_33;
      }

LABEL_12:

      goto LABEL_24;
    }

    v59 = v56;
    v61 = v77[6];
    v60 = v77[7];

    if (!v58)
    {
      if (!v60)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (!v60)
    {
      goto LABEL_12;
    }

    if (v59 == v61 && v58 == v60)
    {
      break;
    }

    v63 = sub_1DD0DF0AC();

    if (v63)
    {
      goto LABEL_33;
    }

LABEL_23:

LABEL_24:
    ++v52;
  }

LABEL_33:
  sub_1DCB0E9D8(v77, &qword_1ECCA3298, &qword_1DD0E94A0);
LABEL_34:
  v76[0] = v55;
  LOWORD(v76[1]) = 0;
  BYTE2(v76[1]) = 0;
  v74 = v55;
  a21(v76);

LABEL_35:
  sub_1DCC9DC8C(v76[0], LOWORD(v76[1]), SBYTE2(v76[1]));
LABEL_36:
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24[-v17];
  v19 = a7[1];
  v25 = *a7;
  v26[0] = v19;
  *(v26 + 9) = *(a7 + 25);
  v20 = swift_allocObject();
  *(v20 + 16) = a8;
  *(v20 + 24) = a9;
  v21 = a7[1];
  *(v20 + 32) = *a7;
  *(v20 + 48) = v21;
  *(v20 + 57) = *(a7 + 25);
  *(v20 + 80) = v9;
  v22 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = sub_1DCC9D968;
  v23[5] = v20;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9C214(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AceOutput();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = *(a1 + 24);
  v60 = *(a1 + 8);
  v61 = v21;
  v22 = *(a1 + 56);
  v62 = *(a1 + 40);
  v63 = v22;
  if (*(a1 + 72))
  {
    v54 = v20;
    LOBYTE(v57) = 1;
    v23 = v20;
    a2(&v54);
    return sub_1DCB0E9D8(&v54, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }

  else
  {
    v45 = v20;
    v48 = a5;
    v24 = *a4;
    v25 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
    v26 = sub_1DCB08B14(v24);
    v52 = a2;
    v51 = a3;
    v50 = v19;
    v49 = v14;
    v47 = v15;
    v46 = v25;
    if (!v26)
    {
LABEL_12:
      sub_1DCB10E5C(0, &qword_1ECCAB500, 0x1E69C7B70);
      v33 = sub_1DD0DE2DC();

      v34 = v46;
      [v46 setItems_];

      v54 = v45;
      v55 = v60;
      v56 = v61;
      v57 = v62;
      v58 = v63;
      v35 = v48;
      v36 = v48[10];
      v37 = v48[11];
      __swift_project_boxed_opaque_existential_1(v48 + 7, v36);
      (*(v37 + 96))(v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1DD0E15D0;
      *(v38 + 32) = v34;
      v39 = v35[5];
      v40 = v35[6];
      __swift_project_boxed_opaque_existential_1(v35 + 2, v39);
      v41 = *(v40 + 48);
      v46 = v34;
      v42 = v49;
      v41(v24, v39, v40);
      v43 = type metadata accessor for NLContextUpdate();
      __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
      memset(v53, 0, sizeof(v53));
      static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    }

    v27 = v26;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    if ((v27 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1E12A72C0](v28, v24);
        }

        else
        {
          if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v30 = *(v24 + 8 * v28 + 32);
        }

        v31 = v30;
        v59 = v30;
        sub_1DCC9C6F0(&v59, v53);

        sub_1DD0DECDC();
        v32 = v54[2];
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
        ++v28;
        if (v29 == v27)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1DCC9C6F0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69C7B70]) init];
  [v4 setObject_];
  sub_1DCCC331C(v3);
  if (v5)
  {
    v6 = sub_1DD0DDF8C();
  }

  else
  {
    v6 = 0;
  }

  [v4 setSelectionText_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69C7AB0]) init];
  sub_1DCCC331C(v3);
  if (v8)
  {
    v9 = sub_1DD0DDF8C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setUtterance_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD0E15D0;
  *(v11 + 32) = v7;
  v12 = v7;
  sub_1DCC6589C(v11, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E15D0;
  *(v13 + 32) = v10;
  v14 = v10;
  sub_1DCC9DC0C(v13, v4);

  *a2 = v4;
}

void sub_1DCC9C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - v17;
  v19 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a11;
  v20[5] = 0;
  v20[6] = a8;
  v20[7] = a9;
  sub_1DD0DCF8C();
}

void sub_1DCC9C9E0()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = type metadata accessor for Parse(0);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_6_27();
  v12 = sub_1DD0DC76C();
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v19 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_1_34(v19);
  sub_1DCC9D84C(v5 + v20, v1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v35 = *(v6 + 80);
      type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError();
      OUTLINED_FUNCTION_0_28();
      v36 = OUTLINED_FUNCTION_10_5();
      *v37 = 3;
      v39 = v36;
      v40 = 1;
      v3(&v39);
      sub_1DCB79378(v39, v40);
      OUTLINED_FUNCTION_2_40();
      sub_1DCB42DC0(v1, v38);
      goto LABEL_8;
    }

    v23 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
  }

  v24 = OUTLINED_FUNCTION_11_24(v15);
  v25(v24);
  OUTLINED_FUNCTION_21_8();
  v26 = OUTLINED_FUNCTION_11_24(v5);
  v28 = v27(v26);
  v29 = *(v15 + 8);
  v30 = OUTLINED_FUNCTION_49_3();
  v31(v30);
  if (v28 == 2)
  {
    v32 = *(v6 + 80);
    type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter.UnsetRelationshipError();
    OUTLINED_FUNCTION_0_28();
    v33 = OUTLINED_FUNCTION_10_5();
    *v34 = 1;
    v39 = v33;
    v40 = 1;
    v3(&v39);
    sub_1DCB79378(v39, v40);
  }

  else
  {
    v39 = (v28 & 1) == 0;
    v40 = 0;
    v3(&v39);
  }

LABEL_8:
  OUTLINED_FUNCTION_49();
}

void sub_1DCC9CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_92_2();
  v11 = swift_allocObject();
  v11[2] = a9;
  v11[3] = a10;
  v11[4] = v10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9CCD0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v19 - v11;
  memcpy(__dst, a1, 0x49uLL);
  v13 = __dst[0];
  if ((__dst[9] & 1) == 0)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    *(v16 + 32) = v13;
    *(v16 + 40) = *(a1 + 8);
    *(v16 + 56) = *(a1 + 24);
    *(v16 + 72) = *(a1 + 40);
    *(v16 + 88) = *(a1 + 56);
    *(v16 + 104) = a4;
    v17 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = sub_1DCC9D794;
    v18[5] = v16;
    sub_1DCB09910(__dst, v19, &unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DCF8C();
  }

  v19[0] = __dst[0];
  v20 = 1;
  v14 = __dst[0];
  a2(v19);
  return sub_1DCB0E9D8(v19, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCC9CEA8(void *a1, char a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for AceOutput();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  if ((a2 & 1) == 0)
  {
    v34 = v20;
    memcpy(__dst, a5, sizeof(__dst));
    v22 = a6[10];
    v23 = a6[11];
    __swift_project_boxed_opaque_existential_1(a6 + 7, v22);
    v24 = *(v23 + 96);
    v35 = a4;
    v32[1] = v24(v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DD0E15D0;
    *(v25 + 32) = a1;
    v32[0] = a5[7] != 1;
    v33 = a3;
    v26 = a6[5];
    v27 = a6[6];
    __swift_project_boxed_opaque_existential_1(a6 + 2, v26);
    v28 = *(v27 + 56);
    v29 = a1;
    v28(v26, v27);
    v30 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v30);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  __dst[0] = a1;
  LOBYTE(__dst[5]) = 1;
  v21 = a1;
  a3(__dst);
  return sub_1DCB0E9D8(__dst, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

void sub_1DCC9D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v19 - v15;
  v17 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1DD0E9458;
  v18[5] = 0;
  v18[6] = a9;
  v18[7] = a10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC9D290()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB193FC;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCC9D350(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  v4 = *(a2 + 16);
  sub_1DCBB1180(v6, *v2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC9D398()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_1DCC9D3C0()
{
  sub_1DCC9D398();

  return swift_deallocClassInstance();
}

void sub_1DCC9D4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a8;
  *(v10 + 24) = a9;
  sub_1DD0DCF8C();
}

unint64_t sub_1DCC9D6A8()
{
  result = qword_1ECCA3248;
  if (!qword_1ECCA3248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCA3250, &qword_1DD0E9428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA3248);
  }

  return result;
}

uint64_t sub_1DCC9D70C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCC9D748(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1DCC9D7A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_9(v6);

  return sub_1DCCA48B4(v8, v9, v10, v11, v3);
}

uint64_t sub_1DCC9D84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCC9D8C4()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();

  return sub_1DCC100AC();
}

uint64_t sub_1DCC9D978()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_9(v6);

  return sub_1DD052160(v8, v9, v10, v11, v3);
}

id sub_1DCC9DA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DD0DDF8C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_1DCC9DA88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_1DD0DAD7C();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1DD0DAD3C();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1DD0DDF8C();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_1DD0DDF8C();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_1DD0DDF8C();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

void sub_1DCC9DC0C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2DC();

  [a2 setCommands_];
}

void sub_1DCC9DC8C(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DCC9DC9C(a1, a2, BYTE1(a2) & 1);
  }
}

void sub_1DCC9DC9C(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCC9DCF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1DCC9DD60(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC9DE58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1DCC9DEDC(v2, v3);
}

uint64_t sub_1DCC9DE98()
{
  OUTLINED_FUNCTION_156();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DCC9DEDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1DCC9DF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC9DFA4(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1DCC9DF6C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1DCC9DFE0(&v4);
}

uint64_t sub_1DCC9DFA4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_156();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1DCC9DFE0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t ConfirmationFlowFrame.__allocating_init(renderer:dialogFactoryFn:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConfirmationFlowFrame.init(renderer:dialogFactoryFn:)(a1, a2, a3);
  return v6;
}

uint64_t ConfirmationFlowFrame.init(renderer:dialogFactoryFn:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0xD000000000000029;
  *(v3 + 24) = 0x80000001DD113770;
  *(v3 + 32) = 4;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  sub_1DCAFF9E8(a1, v3 + 56);
  return v3;
}

uint64_t ConfirmationFlowFrame.__allocating_init(dialogProvider:renderer:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DCB17CA0(a2, v9);
  sub_1DCB17CA0(a1, v8);
  v5 = swift_allocObject();
  sub_1DCAFF9E8(v8, v5 + 16);
  v6 = (*(v2 + 160))(v9, sub_1DCC9E1E0, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_1DCC9E178(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t ConfirmationFlowFrame.__allocating_init(dialog:renderer:)(uint64_t a1, uint64_t *a2)
{
  sub_1DCB17CA0(a2, v7);
  v5 = (*(v2 + 160))(v7, sub_1DCC9E268, a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v5;
}

uint64_t sub_1DCC9E2A0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  v13 = *(a2 + *(type metadata accessor for SiriKitFlowFrameInput() + 20));
  switch(v13)
  {
    case 1:
    case 2:
    case 3:
      v14 = sub_1DD0DF0AC();

      if (v14)
      {
        goto LABEL_4;
      }

      swift_beginAccess();
      *(v3 + 32) = v13;
      v15 = MEMORY[0x1E699F740];
      break;
    default:

LABEL_4:
      v15 = MEMORY[0x1E699F738];
      break;
  }

  v16 = *v15;
  v17 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v17);
  (*(v18 + 104))(v12, v16);
  swift_storeEnumTagMultiPayload();
  a3(v12);
  return sub_1DCB0E9D8(v12, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCC9E4B0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_156();
  if (*(v3 + 32) == 4)
  {
    v14 = *(v3 + 40);
    v13 = *(v3 + 48);
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = v3;
    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitFlowFrameInput();
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a2(v12);
  return sub_1DCB0E9D8(v12, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCC9E5FC(void *a1, char a2, void (*a3)(void *), uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v19 - v12);
  if ((a2 & 1) == 0)
  {
    v16 = a5[11];
    __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = *(v16 + 8);
    sub_1DD0DCF8C();
  }

  *v13 = a1;
  swift_storeEnumTagMultiPayload();
  v14 = a1;
  a3(v13);
  return sub_1DCB0E9D8(v13, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCC9E780(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - v9);
  if (a2)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    v11 = a1;
  }

  else
  {
    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DB30C();
    swift_storeEnumTagMultiPayload();
  }

  a3(v10);
  return sub_1DCB0E9D8(v10, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCC9E884@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25 - v10;
  result = OUTLINED_FUNCTION_156();
  v13 = *(v1 + 32);
  if (v13 == 4)
  {
    v14 = v8;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    v16 = __swift_project_value_buffer(v15, qword_1EDE57E00);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v11, v16, v15);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
    sub_1DCBCF6C8(v11, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v15) == 1)
    {
      sub_1DCB0E9D8(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v18 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315650;
        v22 = sub_1DD0DEC3C();
        v24 = sub_1DCB10E9C(v22, v23, &v25);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2048;
        *(v20 + 14) = 116;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_1DCB10E9C(0xD00000000000003CLL, 0x80000001DD1169D0, &v25);
        _os_log_impl(&dword_1DCAFC000, v18, v19, "FatalError at %s:%lu - %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v21, -1, -1);
        MEMORY[0x1E12A8390](v20, -1, -1);
      }

      (*(v17 + 8))(v14, v15);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003CLL, 0x80000001DD1169D0);
  }

  *a1 = v13;
  return result;
}

void *ConfirmationFlowFrame.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  return v0;
}

uint64_t ConfirmationFlowFrame.__deallocating_deinit()
{
  ConfirmationFlowFrame.deinit();

  return swift_deallocClassInstance();
}

unsigned __int8 *getEnumTagSinglePayload for ConfirmationFlowFrameState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 4;
    v8 = v6 - 4;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmationFlowFrameState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC9EE74(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DCC9EE88(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1DCC9F07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = type metadata accessor for Input(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v124 - v13;
  v128 = sub_1DD0DB5BC();
  v124 = *(v128 - 8);
  v15 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v128, v16);
  v129 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for USOParse();
  v18 = OUTLINED_FUNCTION_2(v127);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v125 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v126 = &v124 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v124 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v130 = &v124 - v32;
  v33 = type metadata accessor for Parse(0);
  v34 = OUTLINED_FUNCTION_2(v33);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = (&v124 - v42);
  v44 = *(v3 + 20);
  sub_1DCE2FF24();
  if (v45)
  {
    OUTLINED_FUNCTION_7_27();
    if (!v85)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v46 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v46, qword_1EDE57E00);
    v47 = sub_1DD0DD8EC();
    v48 = sub_1DD0DE6DC();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v131;
    if (v49)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v51, v52, "[ConfirmationInputResolver] Detected user cancellation, returning UserCancellationError.");
      OUTLINED_FUNCTION_80();
    }

    sub_1DCC9FB70();
    result = swift_allocError();
    v54 = 1;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_4_28();
  sub_1DCB24688(a1 + v44, v43, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v71 = *v43;
    v70 = v43[1];
    v72 = v43[2];
    OUTLINED_FUNCTION_7_27();
    if (!v85)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v73 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v73, qword_1EDE57E00);

    v74 = sub_1DD0DD8EC();
    v75 = sub_1DD0DE6CC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_151();
      v77 = OUTLINED_FUNCTION_83();
      v132[2] = v72;
      v133 = v77;
      *v76 = 136315138;
      v132[0] = v71;
      v132[1] = v70;

      v78 = sub_1DD0DE02C();
      v80 = sub_1DCB10E9C(v78, v79, &v133);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_1DCAFC000, v74, v75, "[ConfirmationInputResolver] Checking if parse contains confirmation DI: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v50 = v131;
    if (qword_1ECCA12D8 != -1)
    {
      swift_once();
    }

    v81 = [qword_1ECCA5FD0 identifier];
    v82 = sub_1DD0DDFBC();
    v84 = v83;

    v85 = v82 == v71 && v84 == v70;
    if (v85)
    {

      v54 = 0;
      result = 1;
    }

    else
    {
      v86 = sub_1DD0DF0AC();

      result = v86 & 1;
      v54 = (v86 & 1) - 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v130;
      sub_1DCC6D300(v43, v130);
      OUTLINED_FUNCTION_7_27();
      if (!v85)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v58 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v58, qword_1EDE57E00);
      OUTLINED_FUNCTION_1_35();
      sub_1DCB24688(v57, v30, v59);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6CC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_151();
        v63 = OUTLINED_FUNCTION_83();
        v132[0] = v63;
        *v62 = 136315138;
        OUTLINED_FUNCTION_1_35();
        sub_1DCB24688(v30, v126, v64);
        v65 = sub_1DD0DE02C();
        v67 = v66;
        OUTLINED_FUNCTION_0_29();
        sub_1DCC9FB18(v30, v68);
        v69 = sub_1DCB10E9C(v65, v67, v132);
        v57 = v130;

        *(v62 + 4) = v69;
        _os_log_impl(&dword_1DCAFC000, v60, v61, "[ConfirmationInputResolver] Checking if parse contains confirmation: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_0_29();
        sub_1DCC9FB18(v30, v99);
      }

      v100 = v129;
      Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
      v101 = v128;
      if (__swift_getEnumTagSinglePayload(v14, 1, v128) == 1)
      {
        sub_1DCC6D410(v14);
        OUTLINED_FUNCTION_1_35();
        v102 = v125;
        sub_1DCB24688(v57, v125, v103);
        v104 = sub_1DD0DD8EC();
        v105 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = OUTLINED_FUNCTION_151();
          v107 = OUTLINED_FUNCTION_83();
          v132[0] = v107;
          *v106 = 136315138;
          OUTLINED_FUNCTION_1_35();
          sub_1DCB24688(v102, v126, v108);
          v109 = sub_1DD0DE02C();
          v111 = v110;
          sub_1DCC9FB18(v102, type metadata accessor for USOParse);
          v112 = sub_1DCB10E9C(v109, v111, v132);

          *(v106 + 4) = v112;
          _os_log_impl(&dword_1DCAFC000, v104, v105, "[ConfirmationInputResolver] Cannot extract task: parse has no UDAs: %s", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v107);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        else
        {

          sub_1DCC9FB18(v102, type metadata accessor for USOParse);
        }

        sub_1DCC9FB18(v57, type metadata accessor for USOParse);
        result = 0;
        v54 = -1;
        goto LABEL_44;
      }

      v113 = v124;
      (*(v124 + 32))(v100, v14, v101);
      if (sub_1DD0DB53C())
      {
        (*(v113 + 8))(v100, v101);
        OUTLINED_FUNCTION_0_29();
        sub_1DCC9FB18(v57, v114);
        v54 = 0;
        result = 1;
LABEL_44:
        v50 = v131;
        goto LABEL_45;
      }

      v120 = sub_1DD0DB52C();
      v121 = v113;
      v122 = v120;
      (*(v121 + 8))(v100, v101);
      OUTLINED_FUNCTION_0_29();
      sub_1DCC9FB18(v57, v123);
      v50 = v131;
      if (v122)
      {
        result = 0;
        v54 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_27();
      if (!v85)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v87 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v87, qword_1EDE57E00);
      sub_1DCB24688(a1, v9, type metadata accessor for Input);
      v88 = sub_1DD0DD8EC();
      v89 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = OUTLINED_FUNCTION_151();
        v91 = OUTLINED_FUNCTION_83();
        v132[0] = v91;
        *v90 = 136315138;
        v92 = *(v3 + 20);
        OUTLINED_FUNCTION_4_28();
        sub_1DCB24688(&v9[v93], v40, v94);
        v95 = sub_1DD0DE02C();
        v97 = v96;
        OUTLINED_FUNCTION_5_32();
        v98 = sub_1DCB10E9C(v95, v97, v132);

        *(v90 + 4) = v98;
        _os_log_impl(&dword_1DCAFC000, v88, v89, "[ConfirmationInputResolver] Determined that the parse has a confirmation but it is an unsupported parse %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_5_32();
      }

      v50 = v131;
      sub_1DCC9FB18(v43, type metadata accessor for Parse);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v115 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v115, qword_1EDE57E00);
    v116 = sub_1DD0DD8EC();
    v117 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v116, v117))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v118, v119, "[ConfirmationInputResolver] No confirmation found in parse");
      OUTLINED_FUNCTION_80();
    }

    result = 0;
    v54 = -1;
  }

LABEL_45:
  *v50 = result;
  *(v50 + 8) = v54;
  return result;
}

uint64_t sub_1DCC9FB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DCC9FB70()
{
  result = qword_1ECCA34D0;
  if (!qword_1ECCA34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA34D0);
  }

  return result;
}

id sub_1DCC9FBC4()
{
  OUTLINED_FUNCTION_66();
  v2 = v0 + *(v1 + 144);
  v3 = *v2;
  *v4 = *v2;
  v5 = *(v2 + 8);
  *(v4 + 8) = v5;
  return sub_1DCCA3578(v3, v5);
}

void sub_1DCC9FBFC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_66();
  v5 = v1 + *(v4 + 144);
  v6 = *v5;
  *v5 = v7;
  v8 = *(v5 + 8);
  *(v5 + 8) = v9;
  sub_1DCCA092C(v6, v8);
}

uint64_t ConfirmationPrompt.__allocating_init(valueToConfirm:usoKeyPath:responseBundleProducer:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ConfirmationPrompt.init(valueToConfirm:usoKeyPath:responseBundleProducer:responseFactory:)(a1, a2, a3, a4);
  return v11;
}

char *ConfirmationPrompt.init(valueToConfirm:usoKeyPath:responseBundleProducer:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v39 = a2;
  v46 = a1;
  v8 = *(*v4 + 88);
  v40 = *(v8 - 8);
  v43 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v37 - v9;
  v37 = &v37 - v9;
  v42 = *(v11 + 80);
  v41 = *(v11 + 96);
  v12 = type metadata accessor for USOKeyPath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v37 - v16;
  v45 = a3;
  sub_1DCB17CA0(a3, (v4 + 16));
  v44 = a4;
  sub_1DCB17CA0(a4, (v4 + 56));
  (*(v13 + 16))(v17, a2, v12);
  v18 = v40;
  v38 = *(v40 + 16);
  v38(v10, v46, v8);
  v19 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v20 = v18;
  v21 = (v14 + *(v18 + 80) + v19) & ~*(v18 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 2) = v42;
  *(v22 + 3) = v8;
  *(v22 + 4) = v23;
  v24 = &v22[v19];
  v25 = v20;
  v26 = v8;
  (*(v13 + 32))(v24, v17, v12);
  (*(v25 + 32))(&v22[v21], v37, v8);
  *(v4 + 12) = sub_1DCCA0220;
  *(v4 + 13) = v22;
  v27 = v46;
  OUTLINED_FUNCTION_66();
  v38(&v4[*(v28 + 128)], v27, v8);
  v29 = v39;
  if (*(v39 + 24))
  {
    v30 = *(v39 + 16);
    v31 = *(v39 + 24);
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  (*(v13 + 8))(v29, v12);
  (*(v25 + 8))(v27, v26);
  OUTLINED_FUNCTION_66();
  v33 = &v4[*(v32 + 136)];
  *v33 = v30;
  *(v33 + 1) = v31;
  OUTLINED_FUNCTION_66();
  v35 = &v4[*(v34 + 144)];
  *v35 = 0;
  v35[8] = 0x80;
  return v4;
}

uint64_t sub_1DCCA0010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v20[1] = a4;
  v20[2] = a1;
  v21 = a5;
  v7 = sub_1DD0DE97C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v20 - v11;
  v13 = sub_1DD0DBAAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v20 - v17;
  (*(*(a3 - 8) + 16))(v12, a2, a3);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
  type metadata accessor for USOKeyPath();
  USOKeyPath.createTask(with:)();
  (*(v8 + 8))(v12, v7);
  sub_1DD004D3C(v18, v21);
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1DCCA0220@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for USOKeyPath() - 8);
  v7 = *(v6 + 80);
  return sub_1DCCA0010(v1 + ((v7 + 40) & ~v7), v1 + ((((v7 + 40) & ~v7) + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80)), v4, v5, a1);
}

void sub_1DCCA0310(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  sub_1DCC9FBC4();
  v3 = v12;
  v4 = v13;
  v5 = v13 >> 6;
  if (v5)
  {
    if (v5 != 1)
    {
      sub_1DCB17CA0(v1 + 16, &v8);
      sub_1DCB17CA0(v1 + 56, v9);
      v6 = *(v1 + 96);
      v7 = *(v1 + 104);
      sub_1DD0DCF8C();
    }

    v8 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    __swift_allocate_boxed_opaque_existential_1Tm(a1);
    OUTLINED_FUNCTION_3_37();
    ActingFlow.abort(reason:)(0, 0xE000000000000000, a1);
    sub_1DCCA092C(v3, v4);
  }

  else
  {
    v10 = v12;
    LOBYTE(v11) = v13 & 1;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA34D8, &unk_1DD0E96C8);
    a1[4] = &protocol witness table for Conclude<A>;
    __swift_allocate_boxed_opaque_existential_1Tm(a1);
    OUTLINED_FUNCTION_3_37();
    ActingFlow.conclude(with:)(&v10, a1);
    sub_1DCCA092C(v3, v4);
  }
}

void sub_1DCCA092C(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
    sub_1DCB79378(a1, a2 & 1);
  }
}

uint64_t sub_1DCCA094C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for SiriKitEventPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57DA0);

  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DCB10E9C(a1, a2, &v23);
    _os_log_impl(&dword_1DCAFC000, v13, v14, "[ConfirmationPrompt#instrumentOnReprompt(%s)] user supplied no input; logging .resolveSlotConfirm again", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A8390](v16, -1, -1);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  type metadata accessor for SiriKitEvent(0);
  *v11 = 53;
  *(v11 + 1) = a1;
  *(v11 + 2) = a2;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2468, &unk_1DD0E97C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DD0E07C0;
  v18 = *(*a3 + 128);
  v19 = *(v6 + 88);
  *(v17 + 56) = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v17 + 32));
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1Tm, a3 + v18, v19);
  *(v11 + 10) = v17;
  *(v11 + 88) = 0u;
  *(v11 + 104) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 168) = 0u;
  v11[184] = 29;
  swift_storeEnumTagMultiPayload();

  return SiriKitEvent.__allocating_init(_:builder:)(v11, 0);
}

void sub_1DCCA0C18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DCB8D4CC(v1, v2);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  sub_1DCB79378(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    v12 = v1;
    *v6 = 136315138;
    v13 = v2;
    sub_1DCB8D4CC(v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3600, &unk_1DD0E97D0);
    v8 = sub_1DD0DE02C();
    v10 = sub_1DCB10E9C(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "[ConfirmationPrompt] successfully received value %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  v12 = v1;
  v13 = v2;
  sub_1DCB8D4CC(v1, v2);
  sub_1DCC9FBFC(&v12);
}

void sub_1DCCA0DD4(void *a1)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = a1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "[ConfirmationPrompt] failed to prompt for value. error: %@", v6, 0xCu);
    sub_1DCB16D50(v7, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v13 = a1;
  if (swift_dynamicCast())
  {
    v11 = 1;
  }

  else
  {
    v11 = 64;
  }

  v14 = v11;
  v12 = a1;
  sub_1DCC9FBFC(&v13);
}

void sub_1DCCA0F94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57DA0);

  sub_1DD0DCF8C();
}

void sub_1DCCA12B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA1338(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  if (*(a3 + 8))
  {
    v52 = *a3;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      if (qword_1EDE4D8C8 != -1)
      {
        swift_once();
      }

      v16 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v16, qword_1EDE57DA0);

      sub_1DD0DCF8C();
    }

    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v31 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v31, qword_1EDE57DA0);

    sub_1DCB8D4CC(v14, 1);
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6DC();

    sub_1DCB79378(v14, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51 = v9;
      v36 = v35;
      v52 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1DCB10E9C(a1, a2, &v52);
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v37 = sub_1DD0DF18C();
      v39 = a1;
      v40 = sub_1DCB10E9C(v37, v38, &v52);

      *(v34 + 14) = v40;
      a1 = v39;
      _os_log_impl(&dword_1DCAFC000, v32, v33, "[ConfirmationPrompt#instrumentOnSuccess(%s)] result had failure; error=%s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v36, -1, -1);
      MEMORY[0x1E12A8390](v34, -1, -1);
    }

    type metadata accessor for SiriKitEvent(0);
    *v13 = 6;
    *(v13 + 1) = a1;
    *(v13 + 2) = a2;
    bzero(v13 + 24, 0x90uLL);
    swift_getErrorValue();

    *(v13 + 21) = sub_1DD0DF18C();
    *(v13 + 22) = v41;
    v13[184] = 92;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v51 = v9;
    if (v14)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57DA0);

    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();

    v50 = v19;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      *v21 = 136315394;
      *(v21 + 4) = sub_1DCB10E9C(a1, a2, &v52);
      *(v21 + 12) = 2080;
      if (v14)
      {
        v22 = 0x44455443454A4552;
      }

      else
      {
        v22 = 0x454D5249464E4F43;
      }

      if (v14)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xE900000000000044;
      }

      v24 = v17;
      v25 = a2;
      v26 = v8;
      v27 = a1;
      v28 = sub_1DCB10E9C(v22, v23, &v52);

      *(v21 + 14) = v28;
      a1 = v27;
      v8 = v26;
      a2 = v25;
      v17 = v24;
      v29 = v50;
      _os_log_impl(&dword_1DCAFC000, v50, v20, "[ConfirmationPrompt#instrumentOnSuccess(%s)] user supplied response; confirmationState=%s", v21, 0x16u);
      v30 = v49;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v30, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    else
    {
    }

    type metadata accessor for SiriKitEvent(0);
    *v13 = v17;
    *(v13 + 1) = 0;
    *(v13 + 2) = a1;
    *(v13 + 3) = a2;
    v42 = *a4;
    v43 = (a4 + *(*a4 + 136));
    v44 = v43[1];
    *(v13 + 4) = *v43;
    *(v13 + 5) = v44;
    v45 = *(v42 + 128);
    v46 = *(v8 + 88);
    *(v13 + 9) = v46;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v13 + 6);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_1Tm, a4 + v45, v46);
    *(v13 + 10) = 0;
    v13[88] = 0;
    swift_storeEnumTagMultiPayload();
  }

  return SiriKitEvent.__allocating_init(_:builder:)(v13, 0);
}

void sub_1DCCA1A68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_92_2();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA1AFC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v28 = type metadata accessor for SiriKitEventPayload(0);
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v27[1] = a4;
  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57DA0);

  v13 = a3;
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27[0] = v12;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315394;
    v19 = a1;
    *(v17 + 4) = sub_1DCB10E9C(a1, a2, &v29);
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1DD0DF18C();
    v22 = sub_1DCB10E9C(v20, v21, &v29);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1DCAFC000, v14, v15, "[ConfirmationPrompt#instrumentOnFailure(%s)]: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v18, -1, -1);
    v23 = v17;
    v12 = v27[0];
    MEMORY[0x1E12A8390](v23, -1, -1);
  }

  else
  {
    v19 = a1;
  }

  v29 = a3;
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_1EDE57E00);

    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitEvent(0);
  *v11 = 6;
  *(v11 + 1) = v19;
  *(v11 + 2) = a2;
  bzero(v11 + 24, 0x90uLL);
  swift_getErrorValue();

  *(v11 + 21) = sub_1DD0DF18C();
  *(v11 + 22) = v25;
  v11[184] = 92;
  swift_storeEnumTagMultiPayload();
  return SiriKitEvent.__allocating_init(_:builder:)(v11, 0);
}

void *ConfirmationPrompt.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[13];

  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(v3 + 128));
  OUTLINED_FUNCTION_66();
  v5 = *(v0 + *(v4 + 136) + 8);

  OUTLINED_FUNCTION_66();
  sub_1DCCA092C(*(v0 + *(v6 + 144)), *(v0 + *(v6 + 144) + 8));
  return v0;
}

uint64_t ConfirmationPrompt.__deallocating_deinit()
{
  ConfirmationPrompt.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCCA2118(void *a1, __int16 a2, void (*a3)(id *), uint64_t a4, void (*a5)(id *))
{
  v8 = a1;
  v9 = a2 & 0x1FF;
  a3(&v8);
  if ((v9 & 0x100) == 0)
  {
    v6 = v8;
    v7 = v9 & 1;
    sub_1DCB8D4CC(v8, v9 & 1);
    a5(&v6);
    sub_1DCB79378(v6, v7);
  }
}

uint64_t sub_1DCCA21A8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = a1;
  v9 = a2 & 1;
  result = a3(&v8);
  if ((v9 & 1) == 0)
  {
    v7 = v8 & 1;
    return a5(&v7);
  }

  return result;
}

void sub_1DCCA223C(void *a1, __int16 a2, void (*a3)(id *), uint64_t a4, void (*a5)(id))
{
  v9 = a1;
  v10 = a2 & 0x1FF;
  a3(&v9);
  if (HIBYTE(v10) == 1)
  {
    v6 = v9;
    v7 = v10;
    v8 = v9;
    a5(v6);

    sub_1DCCA382C(v6, v7, 1);
  }
}

void sub_1DCCA22F8(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(id))
{
  v8 = a1;
  v9 = a2 & 1;
  a3(&v8);
  if (v9 == 1)
  {
    v6 = v8;
    v7 = v8;
    a5(v6);

    sub_1DCB79378(v6, 1);
  }
}

void sub_1DCCA239C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCCA23E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  sub_1DD0DCA6C();
}

void sub_1DCCA2BD0(uint64_t a1, char a2)
{
  v2 = a1;
  v3 = a2 & 1;
  sub_1DCCA27C0();
}

uint64_t sub_1DCCA2D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA2D40, 0, 0);
}

void sub_1DCCA2D40()
{
  v4 = v0;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57DA0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA301C()
{
  v1 = *(*v0 + 48);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void sub_1DCCA3108(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_1DCBF7DC0(&qword_1ECCA3138, &qword_1ECCA3130, &unk_1DD0E9170);
  sub_1DD00BD84();
}

uint64_t sub_1DCCA3208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCCA32D8;

  return sub_1DCCA2D1C(a1, a2, a3, v12, a5, a6);
}

uint64_t sub_1DCCA32D8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1DCCA3464(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1DCCA3578(id result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
    return sub_1DCB8D4CC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1DCCA35A8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCCA3578(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCCA092C(v5, v6);
  return a1;
}

uint64_t sub_1DCCA35FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCCA092C(v4, v5);
  return a1;
}

void sub_1DCCA36AC(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1DCCA3200(a1, v1 + 2);
}

unint64_t sub_1DCCA36B8()
{
  result = qword_1ECCA35F0;
  if (!qword_1ECCA35F0)
  {
    type metadata accessor for MetricsEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA35F0);
  }

  return result;
}

uint64_t sub_1DCCA3710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DCCA32D8;

  return sub_1DCCA3208(a1, v4, v5, v1 + 4, v6, (v1 + 6));
}

void sub_1DCCA37E0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1DCCA33C4(a1, v1 + 2);
}

void sub_1DCCA37EC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1DCCA33E4(v0 + 2);
}

void sub_1DCCA382C(id a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DCB79378(a1, a2 & 1);
  }
}

id sub_1DCCA3878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v32 - v10;
  v12 = *(a1 + 40);
  if (!v12[2] || (v13 = *(a2 + 40), !v13[2]))
  {
    v32 = v9;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    v21 = __swift_project_value_buffer(v20, qword_1EDE57E00);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v11, v21, v20);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
    v23 = v11;
    v24 = v32;
    sub_1DCB28B08(v23, v32, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v20) == 1)
    {
      sub_1DCBCF738(v32);
    }

    else
    {
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v28;
        *v27 = 136315650;
        v29 = sub_1DD0DEC3C();
        v31 = sub_1DCB10E9C(v29, v30, &v33);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2048;
        *(v27 + 14) = 149;
        *(v27 + 22) = 2080;
        *(v27 + 24) = sub_1DCB10E9C(0xD000000000000056, 0x80000001DD116BB0, &v33);
        _os_log_impl(&dword_1DCAFC000, v25, v26, "FatalError at %s:%lu - %s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v28, -1, -1);
        MEMORY[0x1E12A8390](v27, -1, -1);
      }

      (*(v22 + 8))(v32, v20);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000056, 0x80000001DD116BB0);
  }

  v15 = v12[4];
  v14 = v12[5];
  v16 = v13[4];
  v17 = v13[5];

  v18 = sub_1DCCA4DBC(v15, v14, v16, v17);

  return v18;
}

void sub_1DCCA3C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if ((*(v7 + 16))(v6, v7))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    sub_1DD0DCF8C();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA3D50(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4, void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, void))
{
  a5(a1, a2 & 1);
  a3(a1, a2 & 1);

  return a6(a1, a2 & 1);
}

void sub_1DCCA3DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a7;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  (*(v13 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v19 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  (*(v13 + 32))(&v20[v19], v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v21 = *(a5 + 296);
  sub_1DD0DCF8C();
}

id sub_1DCCA3F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v16 = v15;
  if (v13[2])
  {
    v17 = v13[5];
    v55 = v13[4];
  }

  else
  {
    v55 = 0;
    v18 = 0;
  }

  v56 = v18;
  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v20 = v19;
  if (v14[2])
  {
    v21 = v14[4];
    v22 = v14[5];
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69C7A20]) init];
  sub_1DD0DB03C();
  v24 = sub_1DD0DAFFC();
  v26 = v25;
  (*(v6 + 8))(v12, v4);
  sub_1DCB4D8E8(v24, v26, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3610, &qword_1DD0E97F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E32B0;
  v29 = v55;
  v28 = v56;
  *(inited + 32) = v16;
  *(inited + 40) = v29;
  *(inited + 48) = v28;
  *(inited + 56) = v20;
  v52[1] = v21;
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v30 = v28;
  v58 = MEMORY[0x1E69E7CC0];

  v31 = v16;
  v54 = v20;

  sub_1DD0DED0C();
  v32 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  v33 = v31;

  v34 = [v32 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v35 = OUTLINED_FUNCTION_52_2();
  v53 = xmmword_1DD0E15D0;
  *(v35 + 16) = xmmword_1DD0E15D0;
  *(v35 + 32) = v33;
  v57 = v33;
  sub_1DCFA3860(v35, v34);
  v36 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  if (v30)
  {
    v37 = sub_1DD0DDF8C();
  }

  else
  {
    v37 = 0;
  }

  [v36 setText_];

  v38 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v38 setCentered_];
  [v38 setDecoratedLabel_];
  v39 = v34;
  [v38 setAction_];

  sub_1DD0DECDC();
  v40 = *(v58 + 16);
  sub_1DD0DED1C();
  sub_1DD0DED2C();
  sub_1DD0DECEC();
  v41 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  v42 = v54;

  v43 = [v41 init];
  v44 = OUTLINED_FUNCTION_52_2();
  *(v44 + 16) = v53;
  *(v44 + 32) = v42;
  v45 = v42;
  sub_1DCFA3860(v44, v43);
  v46 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  if (v22)
  {
    v47 = sub_1DD0DDF8C();
  }

  else
  {
    v47 = 0;
  }

  [v46 setText_];

  v48 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v48 setCentered_];
  [v48 setDecoratedLabel_];
  v49 = v43;
  [v48 setAction_];

  sub_1DD0DECDC();
  v50 = *(v58 + 16);
  sub_1DD0DED1C();
  sub_1DD0DED2C();
  sub_1DD0DECEC();
  swift_setDeallocating();
  sub_1DCC65780();
  sub_1DCFA387C(v58, v23);

  return v23;
}

void sub_1DCCA4430(void *__src, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x49uLL);
  if ((__dst[72] & 1) == 0)
  {
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    memcpy(v16 + 4, __src, 0x48uLL);
    v17 = *(a6 + 304);
    sub_1DCB28B08(__dst, v18, &unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD0E07C0;
  v19 = 0;
  v20 = 0xE000000000000000;
  memcpy(v18, __src, 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  sub_1DD0DEDBC();
  v11 = v19;
  v12 = v20;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DCB34060();
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1DD0DD7EC();

  type metadata accessor for CommandFailure();
  swift_allocObject();
  v13 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000014, 0x80000001DD116B50);
  sub_1DCC7AE30();
  v14 = OUTLINED_FUNCTION_4_29();
  *v15 = v13;
  a2(v14, 1);
}

void sub_1DCCA46AC(_BYTE *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _BYTE *))
{
  v7 = a1[72];
  if (v7)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DD0E07C0;
    v16 = 0;
    v17 = 0xE000000000000000;
    memcpy(__dst, a1, 0x48uLL);
    __dst[72] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DEDBC();
    v9 = v16;
    v10 = v17;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1DCB34060();
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    sub_1DD0DD7EC();

    type metadata accessor for CommandFailure();
    swift_allocObject();
    v11 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000013, 0x80000001DD116B90);
    sub_1DCC7AE30();
    v12 = OUTLINED_FUNCTION_4_29();
    *v13 = v11;
    a2(v12, 1);
  }

  else
  {
    v14 = a5(a4, a1);
    a2(v14, 0);
  }
}

uint64_t sub_1DCCA48B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1DCCA4948;

  return static LabelTemplates.yes()();
}

uint64_t sub_1DCCA4948(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 32);
  v5 = *v3;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCCA4C94, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v5[8] = v6;
    *v6 = v5;
    v6[1] = sub_1DCCA4AB8;

    return static LabelTemplates.no()();
  }
}

uint64_t sub_1DCCA4AB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = sub_1DCCA4D24;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v9 = sub_1DCCA4BEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCCA4BEC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1DCCA4DBC(v0[5], v0[6], v0[11], v0[10]);

  v2(v3, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DCCA4C94()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DCCA4D24()
{
  v1 = v0[6];

  v2 = v0[9];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v2;
  v4(v2, 1);

  v6 = v0[1];

  return v6();
}

id sub_1DCCA4DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v10 = v9;
  swift_setDeallocating();
  sub_1DCB19D2C();
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_3_38(v11, v12, v13, v14, v15, v16, v17, v18, v74, a2, a1, v86, v90, a3, v19);
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;

  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v22 = v21;
  swift_setDeallocating();
  sub_1DCB19D2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v23 = OUTLINED_FUNCTION_52_2();
  *(v23 + 16) = xmmword_1DD0E15D0;
  *(v23 + 32) = v10;
  v24 = *MEMORY[0x1E69C82D8];
  v25 = sub_1DD0DDFBC();
  v27 = v26;
  v28 = objc_allocWithZone(MEMORY[0x1E69C7B28]);
  v87 = v10;
  v29 = [v28 init];
  [v29 setActive_];
  v30 = v83;
  sub_1DCC6591C(v83, a2, v29);
  sub_1DCC65970(v23, v29);

  sub_1DCC659E4(v25, v27, v29);

  v31 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_3_38(v31, v32, v33, v34, v35, v36, v37, v38, v75, v79, v83, v87, a4, v94, v39);
  *(v40 + 32) = v22;
  v41 = *MEMORY[0x1E69C82E0];
  v42 = sub_1DD0DDFBC();
  v44 = v43;
  v45 = objc_allocWithZone(MEMORY[0x1E69C7B28]);
  v76 = v22;
  v46 = [v45 init];
  [v46 setActive_];
  v48 = v91;
  v47 = v95;
  sub_1DCC6591C(v95, v91, v46);
  sub_1DCC65970(v31, v46);

  sub_1DCC659E4(v42, v44, v46);

  v49 = [objc_allocWithZone(MEMORY[0x1E69C7B30]) init];
  sub_1DCCA5298(v30, v80, v49);
  v50 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_3_38(v50, v51, v52, v53, v54, v55, v56, v57, v76, v80, v84, v88, v91, v95, v58);
  *(v59 + 32) = v89;
  v60 = v89;
  sub_1DCCA5348(v50, v49, &selRef_setConfirmCommands_);
  sub_1DCCA52F0(v47, v48, v49);
  v61 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_3_38(v61, v62, v63, v64, v65, v66, v67, v68, v77, v81, v85, v89, v92, v96, v69);
  *(v70 + 32) = v78;
  v71 = v78;
  sub_1DCCA5348(v61, v49, &selRef_setDenyCommands_);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1DD0E97E0;
  *(v72 + 32) = v29;
  *(v72 + 40) = v46;
  sub_1DCCA53D0(v72, v49);

  return v49;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  if (v0[11] >= 3uLL)
  {
  }

  v7 = v0[12];

  return swift_deallocObject();
}

void sub_1DCCA5298(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setConfirmText_];
}

void sub_1DCCA52F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDenyText_];
}

void sub_1DCCA5348(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v5 = sub_1DD0DE2DC();

  [a2 *a3];
}

void sub_1DCCA53D0(uint64_t a1, void *a2)
{
  sub_1DCCA5444();
  v3 = sub_1DD0DE2DC();

  [a2 setAllConfirmationOptions_];
}

unint64_t sub_1DCCA5444()
{
  result = qword_1ECCA3618[0];
  if (!qword_1ECCA3618[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECCA3618);
  }

  return result;
}

void sub_1DCCA5614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v20 - v16;
  v18 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a9;
  v19[5] = 0;
  v19[6] = a4;
  v19[7] = a5;
  sub_1DD0DCF8C();
}

void ConfirmIntentFlowStrategy.makeErrorResponse(app:intent:intentResponse:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = OUTLINED_FUNCTION_20_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17 - v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DD0E9838;
  v16[5] = 0;
  v16[6] = a5;
  v16[7] = a6;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA5810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAA568();
}

uint64_t sub_1DCCA58A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCCA5934()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCCA59CC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCCA5A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

uint64_t ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 16);
  *(v10 + 16) = *v11;
  *(v10 + 32) = v12;
  v14 = *(v13 + 40);
  OUTLINED_FUNCTION_8();
  v28 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  *(v10 + 40) = v18;
  *v18 = v10;
  v18[1] = sub_1DCB63F5C;
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_47();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1DCCA5C44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCCA5D60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA568();
}

uint64_t sub_1DCCA5E7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCCA5F98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)();
}

uint64_t ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t ConfirmIntentFlowStrategyAsync.actionForInputWrapper(_:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 72) = *(a3 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCA60E0()
{
  OUTLINED_FUNCTION_39();
  v11 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v9 = *(v0 + 56);
  v10 = v1;
  (*(v2 + 24))(v4, &v9, v5);
  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCCA616C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v5 = v3;

  return a1;
}

uint64_t sub_1DCCA61AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:)()
{
  OUTLINED_FUNCTION_41();
  v11 = (OUTLINED_FUNCTION_38_0(v0, v1, v2, v3, v4) + 32);
  v12 = *v11 + **v11;
  v5 = (*v11)[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_57_4();

  return v9();
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 48);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 64);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 72);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)()
{
  OUTLINED_FUNCTION_41();
  v11 = (OUTLINED_FUNCTION_38_0(v0, v1, v2, v3, v4) + 80);
  v12 = *v11 + **v11;
  v5 = (*v11)[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_57_4();

  return v9();
}

uint64_t sub_1DCCA697C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1DCCA69BC();
  return v3;
}

uint64_t sub_1DCCA69BC()
{
  v1 = *(*v0 + 96);
  OUTLINED_FUNCTION_112(*(*v0 + 80));
  (*(v2 + 32))(v0 + v3);
  return v0;
}

uint64_t sub_1DCCA6A2C(uint64_t a1, void *a2)
{
  v3 = *(*(*v2 + 88) + 24);
  v4 = *(*v2 + 80);
  v5 = v2 + *(*v2 + 96);
  return v3(a1, *a2, a2[1], a2[2], v4);
}

uint64_t sub_1DCCA6AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 48) = *a3;
  *(v4 + 64) = *(a3 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCA6AFC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v8 = *(v2 + 80);
  v7 = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer();
  OUTLINED_FUNCTION_17();
  *v6 = v9;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v10);
}

uint64_t sub_1DCCA6C08()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1DCCA6C64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v8 = *a2;
  v9 = *(*a2 + 88);
  v10 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DE47C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v21 - v15;
  v17 = *(v8 + 96);
  (*(v12 + 16))(&v21 - v15, a1, v11);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  *(v19 + 24) = v9;
  (*(v12 + 32))(v19 + v18, v16, v11);
  (*(v9 + 32))(a3, v22, v23, v24, sub_1DCCAB8A8, v19, v10, v9);
}

uint64_t sub_1DCCA6E78(__int128 *a1)
{
  v1 = *(a1 + 16);
  v4 = *a1;
  v5 = v1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  return sub_1DD05EBE4(&v4, v2);
}

uint64_t sub_1DCCA6F3C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCA7008()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCA7124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 40))(a3, v18, v19, sub_1DCC11344, v16, v7[10]);
}

uint64_t sub_1DCCA7300()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCA73CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 48))(a3, v18, v19, sub_1DCC11344, v16, v7[10]);
}

uint64_t sub_1DCCA75A8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCA7674(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 56))(a3, v18, v19, sub_1DCC11344, v16, v7[10]);
}

uint64_t sub_1DCCA7850()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCA791C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 64))(a3, v18, v19, sub_1DCC11344, v16, v7[10]);
}

uint64_t sub_1DCCA7AF8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCCA7BC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCA7CE0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1DCCA7D3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 72))(a3, v18, v19, sub_1DCC111BC, v16, v7[10]);
}

uint64_t sub_1DCCA7EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 56) = *(a3 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCA7F1C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCCA8008()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCA8124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - v13;
  v15 = v8[12];
  (*(v10 + 16))(&v19 - v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v14, v9);
  (*(v8[11] + 80))(a3, v20, v21, v22, sub_1DCC11344, v17, v8[10]);
}

uint64_t sub_1DCCA82E4()
{
  v1 = *(*v0 + 96);
  OUTLINED_FUNCTION_112(*(*v0 + 80));
  (*(v2 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1DCCA8350()
{
  sub_1DCCA82E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCA83E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCCA6AAC(a1, a2, a3);
}

uint64_t sub_1DCCA8498(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCA6F18(a1, a2);
}

uint64_t sub_1DCCA8544(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCA72DC(a1, a2);
}

uint64_t sub_1DCCA85F0(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCA7584(a1, a2);
}

uint64_t sub_1DCCA869C(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCA782C(a1, a2);
}

uint64_t sub_1DCCA8748(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCCA7AD4(a1, a2);
}

uint64_t sub_1DCCA87F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCCA7EF4(a1, a2, a3);
}

void sub_1DCCA88A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_58_6(a1, a2, a3);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_43_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_43_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_43_10();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v74 - v20;
  v23 = v19[1];
  v86 = *v19;
  v22 = v86;
  v85 = v23;
  v24 = v19[2];
  sub_1DCB17CA0(v25, v98);
  v95 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = OUTLINED_FUNCTION_48_9();
  sub_1DCAFF9E8(v26, v27);
  v99 = v22;
  v100 = v23;
  type metadata accessor for ConfirmIntentAnswer();
  v81 = type metadata accessor for AnyPromptForConfirmationFlowStrategy();
  v92 = *(v8 + 16);
  v97 = v8 + 16;
  v93 = v4;
  (v92)(v21, v4, a3);
  v28 = *(v8 + 80);
  v29 = v8;
  v30 = (v28 + 32) & ~v28;
  v84 = v10 + 7;
  v31 = (v10 + 7 + v30) & 0xFFFFFFFFFFFFFFF8;
  v89 = v28;
  v32 = swift_allocObject();
  v33 = a3;
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  v34 = *(v29 + 32);
  v96 = v29 + 32;
  v80 = v32;
  v35 = v33;
  v34(v32 + v30, v21);
  v91 = v34;
  v36 = (v32 + v31);
  v37 = v86;
  v38 = v85;
  *v36 = v86;
  v36[1] = v38;
  v83 = v24;
  v36[2] = v24;
  v39 = v90;
  v40 = v4;
  v41 = v92;
  (v92)(v90, v40, v35);
  v42 = swift_allocObject();
  v79 = v42;
  v43 = v95;
  *(v42 + 16) = v35;
  *(v42 + 24) = v43;
  (v34)(v42 + v30, v39, v35);
  v44 = (v42 + v31);
  *v44 = v37;
  v44[1] = v38;
  v44[2] = v24;
  v87 = type metadata accessor for ConfirmActivityLogger();
  OUTLINED_FUNCTION_112(v87);
  v46 = *(v45 + 16);
  v88 = v45 + 16;
  v47 = OUTLINED_FUNCTION_48_9();
  v46(v47);
  OUTLINED_FUNCTION_60_2();
  v41();
  v48 = (v89 + 88) & ~v89;
  AssociatedTypeWitness = v48;
  v84 = (v84 + v48) & 0xFFFFFFFFFFFFFFF8;
  v49 = v84;
  v50 = swift_allocObject();
  v51 = v95;
  *(v50 + 16) = v35;
  *(v50 + 24) = v51;
  v52 = OUTLINED_FUNCTION_15_21(v50);
  v54 = v53 + v48;
  v78 = v50;
  v55 = v91;
  (v91)(v54, v39, v35, v52);
  v56 = (v50 + v49);
  v57 = v85;
  *v56 = v86;
  v56[1] = v57;
  v58 = v83;
  v56[2] = v83;
  v59 = OUTLINED_FUNCTION_48_9();
  v82 = v46;
  v46(v59);
  OUTLINED_FUNCTION_60_2();
  v60 = v92;
  v92();
  v61 = v84;
  v62 = swift_allocObject();
  v75 = v35;
  *(v62 + 16) = v35;
  *(v62 + 24) = v51;
  OUTLINED_FUNCTION_15_21(v62);
  OUTLINED_FUNCTION_49_6();
  v66 = v65;
  v77 = v65;
  v55(v63 + v64, v90);
  v67 = (v66 + v61);
  v68 = v85;
  *v67 = v86;
  v67[1] = v68;
  v67[2] = v58;
  v69 = OUTLINED_FUNCTION_48_9();
  v82(v69);
  OUTLINED_FUNCTION_60_2();
  v70 = v75;
  v60();
  v71 = swift_allocObject();
  v72 = v95;
  *(v71 + 16) = v70;
  *(v71 + 24) = v72;
  OUTLINED_FUNCTION_15_21(v71);
  v76 = v73;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCA9224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v13 = *(a8 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v8[5] = v15;
  *v15 = v8;
  v15[1] = sub_1DCB63F5C;

  return (v17)(a1, a2, v8 + 2, a7, a8);
}

uint64_t sub_1DCCA9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA93A8, 0, 0);
}

uint64_t sub_1DCCA93A8()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v2);
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15();
  *v0 = v3;
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_29_10();

  return sub_1DCCA97DC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCCA946C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCA9588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v11 = *(a7 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[5] = v13;
  *v13 = v7;
  v13[1] = sub_1DCCA96C8;

  return (v15)(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCA96C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCCA97DC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a1;
  v6[12] = a2;
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  v6[15] = v9;
  *v9 = v6;
  v9[1] = sub_1DCCA98E4;

  return v11(a1);
}

uint64_t sub_1DCCA98E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 120);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DCCA99FC()
{
  OUTLINED_FUNCTION_33();
  v26 = v0;
  v1 = v0[11];
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_1DCB651D0(v2))
  {
    v3 = v0[12];
    v5 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[11], v5);
    (*(v4 + 8))(v5, v4);
    v7 = v0[13];
    v6 = v0[14];
    if (v3)
    {
      if (v3 == 1)
      {
        v22 = 3;
        v23 = 68;
        v8 = (v0 + 2);
        v9 = &v22;
        v10 = &v23;
      }

      else
      {
        if (v3 != 2)
        {
          v11 = v0[12];
          v18 = 6;
          v19 = 17;
          swift_getErrorValue();
          v12 = v0[7];
          v13 = v0[9];
          v14 = sub_1DCEE0FD4(v0[8]);
          sub_1DCCAA9D8((v0 + 2), &v18, &v19, v14, v15);
        }

        v20 = 5;
        v21 = 68;
        v8 = (v0 + 2);
        v9 = &v20;
        v10 = &v21;
      }
    }

    else
    {
      v24 = 48;
      v25 = 29;
      v8 = (v0 + 2);
      v9 = &v24;
      v10 = &v25;
    }

    sub_1DCCAA9D8(v8, v9, v10, 0, 0);
  }

  OUTLINED_FUNCTION_29();

  return v16();
}

uint64_t sub_1DCCA9BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA9BF0, 0, 0);
}

uint64_t sub_1DCCA9BF0()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v2);
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15();
  *v0 = v3;
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_29_10();

  return sub_1DCCA97DC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCCA9CB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCA9DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v11 = *(a7 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[5] = v13;
  *v13 = v7;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCA9F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCCA9F44, 0, 0);
}

uint64_t sub_1DCCA9F44()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v2);
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15();
  *v0 = v3;
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_29_10();

  return sub_1DCCA97DC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCCAA008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v11 = *(a7 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[5] = v13;
  *v13 = v7;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCAA148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCAA174, 0, 0);
}

uint64_t sub_1DCCAA174()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v3);
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15();
  *v0 = v4;
  v5 = OUTLINED_FUNCTION_50_6();

  return sub_1DCCA97DC(v5, 1, dword_1DD0E9B30, v1, v6);
}

uint64_t sub_1DCCAA244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v11 = *(a7 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[5] = v13;
  *v13 = v7;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCAA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCAA3B0, 0, 0);
}

uint64_t sub_1DCCAA3B0()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_14_24(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_53_4(v3);
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_18_15();
  *v0 = v4;
  v5 = OUTLINED_FUNCTION_50_6();

  return sub_1DCCA97DC(v5, 2, dword_1DD0E9B20, v1, v6);
}

uint64_t sub_1DCCAA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v11 = *(a7 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[5] = v13;
  *v13 = v7;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCCAA5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCAA5F8, 0, 0);
}

uint64_t sub_1DCCAA5F8()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = v7;
  *(v6 + 64) = v3;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_15();
  *v8 = v10;
  v8[1] = sub_1DCCAA70C;
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);

  return sub_1DCCA97DC(v12, v5, dword_1DD0E9B08, v6, v9);
}

uint64_t sub_1DCCAA70C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 88);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCCAA828()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_1DCCAA884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v13 = *(a8 + 80);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v8[5] = v15;
  *v15 = v8;
  v15[1] = sub_1DCB63F5C;

  return (v17)(a1, a3, v8 + 2, a7, a8);
}

void sub_1DCCAA9D8(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a4;
  v25 = a5;
  v23 = a1;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  HIDWORD(v22) = *a3;
  v15 = [*(v5 + 48) typeName];
  v16 = sub_1DD0DDFBC();
  v18 = v17;

  v19 = v6[4];
  v20 = v6[5];
  memset(v26, 0, sizeof(v26));
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  type metadata accessor for SiriKitEvent(0);
  *v13 = v14;
  *(v13 + 1) = v16;
  *(v13 + 2) = v18;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 3) = v20;
  sub_1DCB09910(v26, (v13 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  *(v13 + 10) = 0;
  *(v13 + 11) = 0;
  sub_1DCB09910(v23, (v13 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  v21 = v25;
  *(v13 + 21) = v24;
  *(v13 + 22) = v21;
  v13[184] = BYTE4(v22);
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCCAABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy();

  return ConfirmIntentFlowStrategy.makeRepromptOnEmptyParse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v15, a7);
}

void sub_1DCCAAC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 80);
  v9 = *(a6 + 88);
  v10 = type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy();
  ConfirmIntentFlowStrategy.makeRepromptOnLowConfidence(app:intent:intentResponse:_:)(v10, v11, v12, a4, a5, v13, v14);
}

uint64_t sub_1DCCAAC7C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_58_6(a1, a2, *(v2 + 16));
  v6 = (v2 + ((*(v5 + 64) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v6 + 2);
  v12 = *v6;
  v13 = v7;
  return (*(v8 + 24))(v9, &v12, v10);
}

uint64_t objectdestroy_49Tm()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1DCCAADC4()
{
  OUTLINED_FUNCTION_125();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = (v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;

  return sub_1DCCA9224(v4, v2, v0 + v8, v11, v12, v13, v5, v6);
}

uint64_t sub_1DCCAAF08()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22(*(v3 + 64) + v0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_41(v5);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCA9374(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCCAAFCC()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22(*(v3 + 64) + v0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_41(v5);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCA9BBC(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCCAB090()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22(*(v3 + 64) + v0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_41(v5);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCA9F10(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCCAB154()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_61_8();
  OUTLINED_FUNCTION_9_22(*(v6 + 64) + v1);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_27_12(v8);

  return sub_1DCCAA148(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1DCCAB234()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_61_8();
  OUTLINED_FUNCTION_9_22(*(v6 + 64) + v1);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_27_12(v8);

  return sub_1DCCAA384(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v7 = *(v0 + 72);

  (*(v3 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_1DCCAB400()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_10_24();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_9_22(*(v3 + 64) + v0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_41(v5);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCCAA5C0(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCCAB4C4()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v9[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_30_12();

  return sub_1DCCAA884(v11, v12, v4, v5, v6, v7, v1, v2);
}

uint64_t sub_1DCCAB590()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCAA480(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB61C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCAA244(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB6A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCAA008(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB734()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCA9DD0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB7C0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_36(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCA9588(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCAB8A8(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 80);

  return sub_1DCCA6E78(a1);
}

void sub_1DCCAB984(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v2 = a1[5];

  v3 = a1[6];
}

void sub_1DCCAB9C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  sub_1DD0DCF8C();
}

void sub_1DCCABA30(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a1[5];
  a1[5] = a2[5];
  sub_1DD0DCF8C();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DCCABAAC(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for If.ConditionBodyPair(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for If.ConditionBodyPair(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1DCCABC04()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_42(v1, v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = OUTLINED_FUNCTION_4_30();
  v12(v11);
  OUTLINED_FUNCTION_126();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_3_39(v13);
  OUTLINED_FUNCTION_11_25();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  v14 = *(v0 + 72);
  sub_1DD0DCF8C();
}

void sub_1DCCABD4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = type metadata accessor for AceOutput();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  memcpy(__dst, a2, sizeof(__dst));
  sub_1DCB17CA0(a3 + 64, v26);
  v24 = *(*(a3 + 16) + 16);
  v20 = a2[7];
  (*(a12 + 320))(a6, a11, a12);
  LOBYTE(v25[0]) = 48;
  v21 = (*(a12 + 304))(v25, a6, a7, a11, a12);
  v22 = v21;
  if (v21)
  {
    v23 = type metadata accessor for DefaultFlowActivity();
    v21 = sub_1DCCAE20C();
  }

  else
  {
    v23 = 0;
    v25[1] = 0;
    v25[2] = 0;
  }

  v25[0] = v22;
  v25[3] = v23;
  v25[4] = v21;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

void sub_1DCCAC058()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_42(v1, v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = OUTLINED_FUNCTION_4_30();
  v12(v11);
  OUTLINED_FUNCTION_126();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_3_39(v13);
  OUTLINED_FUNCTION_11_25();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  v14 = *(v0 + 120);
  sub_1DD0DCF8C();
}

void sub_1DCCAC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v67 = v26;
  v68 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_10();
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v46 = &v59 - v45;
  v47 = *v37;
  v48 = *(v37 + 72);
  if ((v48 & 1) == 0)
  {
    v64 = v46;
    v66 = a24;
    v60 = a23;
    v62 = v25;
    v63 = v29;
    v49 = *(a22 + 152);
    v70 = v47;
    v50 = *(v37 + 3);
    v71 = *(v37 + 1);
    v72 = v50;
    v51 = *(v37 + 7);
    v73 = *(v37 + 5);
    v74 = v51;
    v75 = v48;
    v61 = v43;
    v65 = v44;
    sub_1DCBBF670(&v70, &v69);
    v49(a21, a22);
    OUTLINED_FUNCTION_14_25();
    v52 = swift_allocObject();
    *(v52 + 16) = a21;
    *(v52 + 24) = a22;
    *(v52 + 32) = v35;
    *(v52 + 40) = v33;
    v60 = v33;
    v54 = v67;
    v53 = v68;
    *(v52 + 48) = v31;
    *(v52 + 56) = v54;
    *(v52 + 64) = v53;
    *(v52 + 72) = v47;
    v55 = *(v37 + 3);
    *(v52 + 80) = *(v37 + 1);
    *(v52 + 96) = v55;
    v56 = *(v37 + 7);
    *(v52 + 112) = *(v37 + 5);
    *(v52 + 128) = v56;
    v57 = v63;
    *(v52 + 144) = v62;
    *(v52 + 152) = v57;
    v58 = *(swift_getAssociatedConformanceWitness() + 56);
    sub_1DD0DCF8C();
  }

  v35(*v37, 1);
  OUTLINED_FUNCTION_49();
}

void sub_1DCCAC43C()
{
  OUTLINED_FUNCTION_50();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v22 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_9(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  (*(v2 + 176))(v4, v2);
  OUTLINED_FUNCTION_126();
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = v2;
  v21[4] = v22;
  v21[5] = v6;
  v21[6] = v15;
  v21[7] = v13;
  v21[8] = v11;
  v21[9] = v9;
  v21[10] = v24;
  OUTLINED_FUNCTION_11_25();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  v23 = *(v2 + 96);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCAC5FC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v18 = *a1;
  v19 = *(a1 + 72);
  if ((v19 & 1) == 0)
  {
    v29 = a5;
    v22 = *(a10 + 152);
    v34 = *a1;
    v23 = *(a1 + 3);
    v35 = *(a1 + 1);
    v36 = v23;
    v24 = *(a1 + 7);
    v37 = *(a1 + 5);
    v38 = v24;
    v39 = v19;
    sub_1DCBBF670(&v34, v33);
    v22(a9, a10);
    v25 = swift_allocObject();
    *(v25 + 16) = a9;
    *(v25 + 24) = a10;
    *(v25 + 32) = a2;
    *(v25 + 40) = a3;
    *(v25 + 48) = a4;
    *(v25 + 56) = a6;
    *(v25 + 64) = a7;
    *(v25 + 72) = v18;
    v26 = *(a1 + 3);
    *(v25 + 80) = *(a1 + 1);
    *(v25 + 96) = v26;
    v27 = *(a1 + 7);
    *(v25 + 112) = *(a1 + 5);
    *(v25 + 128) = v27;
    *(v25 + 144) = a8;
    *(v25 + 152) = v29;
    v28 = *(swift_getAssociatedConformanceWitness() + 64);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DD0E07C0;
  v33[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1DCB34060();
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  return a2(v18, 1);
}

void sub_1DCCAC9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v50 = v25;
  v51 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41, v42);
  if ((v35 & 1) == 0)
  {
    v49 = v31;
    v44 = v27;
    v45 = v37;
    v46 = *(a24 + 192);

    v46(a23, a24);
    v47 = swift_allocObject();
    v47[2] = a23;
    v47[3] = a24;
    memcpy(v47 + 4, v50, 0x48uLL);
    v47[13] = a21;
    v47[14] = v45;
    v47[15] = v29;
    v47[16] = v51;
    v47[17] = v44;
    v47[18] = a22;
    v47[19] = v33;
    v47[20] = v49;
    v48 = *(swift_getAssociatedConformanceWitness() + 56);
    sub_1DCBBF670(v50, &v52);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1DCB34060();
  *(v43 + 32) = 0;
  *(v43 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  v33(v37, 1);
  OUTLINED_FUNCTION_49();
}

void sub_1DCCACD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  OUTLINED_FUNCTION_50();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = type metadata accessor for AceOutput();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8, v36);
  memcpy(v44, v32, sizeof(v44));
  sub_1DCB17CA0(v30 + 64, &v43);
  v41 = *(*(v30 + 16) + 16);
  v37 = v32[7];
  (*(a24 + 320))(v28, a23, a24);
  LOBYTE(v42[0]) = a25;
  v38 = (*(a24 + 304))(v42, v28, v26, a23, a24);
  v39 = v38;
  if (v38)
  {
    v40 = type metadata accessor for DefaultFlowActivity();
    v38 = sub_1DCCAE20C();
  }

  else
  {
    v40 = 0;
    v42[1] = 0;
    v42[2] = 0;
  }

  v42[0] = v39;
  v42[3] = v40;
  v42[4] = v38;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

void sub_1DCCAD020()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v20 = v5;
  v22 = v6;
  v23 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  (*(v2 + 176))(v4, v2);
  OUTLINED_FUNCTION_126();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = v2;
  v19[4] = v20;
  v19[5] = v22;
  v19[6] = v0;
  v19[7] = v13;
  v19[8] = v9;
  v19[9] = v23;
  v19[10] = v11;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_15();
  v21 = *(v2 + 88);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCAD1F8(const void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v60 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v59[13] = v59 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v59[16] = v59 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v59[11] = v59 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v59[10] = v59 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v59[12] = v59 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v59[15] = v59 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v59[14] = v59 - v42;
  MEMORY[0x1EEE9AC00](v41, v43);
  v59[18] = v59 - v44;
  v45 = type metadata accessor for AceOutput();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45, v47);
  v59[17] = v59 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(__src, a1, 0x49uLL);
  if (LOBYTE(__src[9]) != 1)
  {
    v59[1] = v21;
    v59[2] = v45;
    v59[6] = a8;
    v59[9] = a3;
    memcpy(v70, a1, sizeof(v70));
    sub_1DCB17CA0(a4 + 64, v69);
    v59[5] = a4;
    v54 = *(*(a4 + 16) + 16);
    LOBYTE(v61[0]) = 5;
    v55 = *(a10 + 304);
    sub_1DCBBF670(__src, &v62);
    v59[7] = a6;
    v59[8] = a7;
    v59[3] = a9;
    v59[4] = a10;
    v56 = v55(v61, a6, a7, a9, a10);
    v57 = v56;
    if (v56)
    {
      v58 = type metadata accessor for DefaultFlowActivity();
      v56 = sub_1DCCAE20C();
    }

    else
    {
      v58 = 0;
      v66 = 0;
      v65 = 0;
    }

    v64 = v57;
    v67 = v58;
    v68 = v56;
    sub_1DCBBA39C(v69);
  }

  v49 = __src[0];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1DD0E07C0;
  v62 = 0;
  v63 = 0xE000000000000000;
  v61[0] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v51 = v62;
  v52 = v63;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1DCB34060();
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  sub_1DD0DD7EC();

  return v60(v49, 1);
}

uint64_t sub_1DCCAE0CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  if ((a2 & 1) == 0)
  {
    v16 = a13;
    v15 = a14;
    sub_1DCFA6B38((a3 + 104), &v16, a4, a5, a6, a7, &v15, *a8, a8[1], a11, a12);
  }

  return a9(a1, 1);
}

unint64_t sub_1DCCAE20C()
{
  result = qword_1ECCA3720[0];
  if (!qword_1ECCA3720[0])
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA3720);
  }

  return result;
}

uint64_t sub_1DCCAE338()
{
  OUTLINED_FUNCTION_13_20();
  v16 = v0;
  v15 = v1;
  OUTLINED_FUNCTION_7_28();
  return sub_1DCCAE0CC(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16);
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  v10 = *(v0 + 152);

  OUTLINED_FUNCTION_14_25();

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  if (*(v0 + 88) >= 3uLL)
  {
  }

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);
  swift_unknownObjectRelease();

  v10 = *(v0 + 144);

  v11 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  OUTLINED_FUNCTION_14_25();

  return swift_deallocObject();
}

uint64_t sub_1DCCAE6DC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v12 = *(v7 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

void sub_1DCCAE7CC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  v6 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v22 - v13;
  v15 = *(v3 + 120);
  OUTLINED_FUNCTION_156();
  v16 = *(v9 + 16);
  v16(v14, &v0[v15], v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v19 = v14[8];
      *v2 = *v14;
      *(v2 + 8) = v19;
      v18 = 1;
      break;
    case 4:
      v18 = v14[16];
      *v2 = *v14;
      break;
    case 1:
      (*(v9 + 8))(v14, v6);
      *v2 = xmmword_1DD0E5100;
      v18 = 2;
      break;
    default:
      type metadata accessor for ConfirmIntentWithAutoHandleFlow.ConfirmIntentWithAutoHandleError();
      OUTLINED_FUNCTION_5_33();
      swift_getWitnessTable();
      v20 = swift_allocError();
      v16(v21, &v0[v15], v6);
      *v2 = v20;
      *(v2 + 8) = 0;
      *(v2 + 16) = 1;
      (*(v9 + 8))(v14, v6);
      goto LABEL_9;
  }

  *(v2 + 16) = v18;
LABEL_9:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCAE9CC(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1DCCAEA34(a1, a2, a3, a4);
  return v11;
}

uint64_t *sub_1DCCAEA34(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = *v4;
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 96), a1, *(*v4 + 80));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v4 + *(v9 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a2, v4 + *(v10 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v4 + *(v11 + 128));
  OUTLINED_FUNCTION_66();
  v13 = *(v12 + 120);
  v14 = *(v8 + 88);
  type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  swift_storeEnumTagMultiPayload();
  return v4;
}

void sub_1DCCAEB64()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v28 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v17 = OUTLINED_FUNCTION_9(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  v24 = (&v28 - v23);
  sub_1DCCAE9CC(v13, v11, v4, v2);
  *v24 = v9;
  v24[1] = v7;
  v24[2] = v28;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  v26 = *(v25 + 120);
  swift_beginAccess();
  v27 = *(v19 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCCAECB0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 88);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8, v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v59 - v18);
  v20 = *(v4 + 120);
  OUTLINED_FUNCTION_156();
  (*(v10 + 16))(v19, v1 + v20, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v19;
    v21 = v19[1];
    v23 = v19[2];
    v24 = v19[4];
    v62 = v19[3];
    v63 = v24;
    v25 = v3;
    v26 = *(*v1 + 96);
    v27 = *(v6 + 24);
    v61 = v25;
    v64 = v23;
    v65 = v21;
    v27(&v69);
    if (v69)
    {
      if (v69 != 1)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v51 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v51, qword_1EDE57E00);
        v52 = sub_1DD0DD8EC();
        v53 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_1DCAFC000, v52, v53, "ConfirmIntentWithAutoHandleFlow received ignore, checking if autohandle should cancel.", v54, 2u);
          OUTLINED_FUNCTION_80();
        }

        v55 = swift_allocObject();
        v57 = v62;
        v56 = v63;
        v55[2] = v1;
        v55[3] = v57;
        v55[4] = v56;
        v58 = *(v6 + 32);
        sub_1DD0DCF8C();
      }

      v60 = v22;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v28 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v29, v30))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_56_5(&dword_1DCAFC000, v31, v32, "ConfirmIntentWithAutoHandleFlow received handle action from delegate. Transitioning to responseReceivedInput state.");
        OUTLINED_FUNCTION_80();
      }

      v66 = type metadata accessor for Input(255);
      v67 = sub_1DD0DD1FC();
      v68 = OUTLINED_FUNCTION_13_21();
      v33 = OUTLINED_FUNCTION_13_21();
      v34 = OUTLINED_FUNCTION_8_32(v33, MEMORY[0x1E69E6158]);
      v35 = v34[12];
      v36 = v34[16];
      v37 = v34[20];
      v38 = (v16 + v34[24]);
      sub_1DCC174D4(v61, v16);
      *(v16 + v35) = v60;
      v39 = v64;
      *(v16 + v36) = v65;
      *(v16 + v37) = v39;
      v40 = v63;
      *v38 = v62;
      v38[1] = v40;
    }

    else
    {
      v41 = v22;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v42 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v42, qword_1EDE57E00);
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v43, v44))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_56_5(&dword_1DCAFC000, v45, v46, "ConfirmIntentWithAutoHandleFlow received cancel action from delegate. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      v48 = v64;
      v47 = v65;
      *v16 = v41;
      v16[1] = v47;
      v50 = v62;
      v49 = v63;
      v16[2] = v48;
      v16[3] = v50;
      v16[4] = v49;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v10 + 40))(v1 + v20, v16, v7);
    swift_endAccess();
  }

  else
  {
    (*(v10 + 8))(v19, v7);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCCAF1C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    oslog = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DCAFC000, oslog, v3, "ConfirmIntentWithAutoHandleFlow autohandle check if cancel received non-cancel result.", v4, 2u);
      MEMORY[0x1E12A8390](v4, -1, -1);
    }
  }

  else
  {
    v6 = *a1;
    v5 = *(a1 + 8);
    if (*a1 == 2 || (v6 & 1) == 0)
    {
      v17 = qword_1EDE4F900;
      v18 = v5;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v19, qword_1EDE57E00);
      v20 = sub_1DD0DD8EC();
      v21 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DCAFC000, v20, v21, "ConfirmIntentWithAutoHandleFlow autohandle response is not rejected.", v22, 2u);
        MEMORY[0x1E12A8390](v22, -1, -1);
      }

      sub_1DCCB7284(v6, v5, 0);
    }

    else
    {
      v8 = qword_1EDE4F900;
      v9 = v5;
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v10, qword_1EDE57E00);
      v11 = sub_1DD0DD8EC();
      v12 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1DCAFC000, v11, v12, "ConfirmIntentWithAutoHandleFlow autoHandle rejected initial autoHandle intent, cancel autoHandle.", v13, 2u);
        MEMORY[0x1E12A8390](v13, -1, -1);
      }

      sub_1DCB17D04(a2 + *(*a2 + 112), v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA3830, &unk_1DD0E9D70);
      type metadata accessor for ResolveConfirmHandleService();
      if (!swift_dynamicCast())
      {
        sub_1DD0DCF8C();
      }

      sub_1DCF44CE0();
      v14 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DCAFC000, v14, v15, "Hack from rdar://81999269 used to ensure synchronous autoHandle cancellation.", v16, 2u);
        MEMORY[0x1E12A8390](v16, -1, -1);
      }

      sub_1DCCB7284(v6, v5, 0);
    }
  }
}

void sub_1DCCAF6F4()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DCAFC000, oslog, v1, "ConfirmIntentWithAutoHandleFlow autoHandle returned.", v2, 2u);
    MEMORY[0x1E12A8390](v2, -1, -1);
  }
}

void sub_1DCCAF7DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);

  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DCB10E9C(a1, a2, &v19);
    _os_log_impl(&dword_1DCAFC000, v11, v12, "ConfirmIntentWithAutoHandleFlow autoHandle execute cancelled, aceId:%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A8390](v14, -1, -1);
    MEMORY[0x1E12A8390](v13, -1, -1);
  }

  v15 = (v5 + *(*v5 + 112));
  v16 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = *(v16 + 88);
  sub_1DD0DCF8C();
}

void sub_1DCCAF9DC()
{
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  v19 = type metadata accessor for ExecuteResponse(0);
  v2 = OUTLINED_FUNCTION_2(v19);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_11_2();
  v18 = type metadata accessor for Input(0);
  v6 = OUTLINED_FUNCTION_2(v18);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_11_2();
  v20 = *(v1 + 88);
  v21 = *(v1 + 80);
  v10 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCCB00CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DCAFC000, v13, v14, "ConfirmIntentWithAutoHandleFlow sending auto handle command and prompt", v15, 2u);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  v16 = swift_allocObject();
  v16[2] = v6;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  sub_1DD0DCF8C();
}

void sub_1DCCB0258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DCAFC000, v15, v16, "ConfirmIntentWithAutoHandleFlow cancelling auto send and sending cancellation response", v17, 2u);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a6;
  v18[7] = a7;
  sub_1DD0DCF8C();
}

void sub_1DCCB03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v33 = a7;
  v34 = a8;
  v35 = a5;
  v36 = a6;
  v14 = *v8;
  v15 = type metadata accessor for Input(0);
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v19, v20))
  {
    v31 = v14;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "ConfirmIntentWithAutoHandleFlow cancelling auto send and parsing response from user", v25, 2u);
    v26 = v25;
    a1 = v24;
    a4 = v23;
    a3 = v22;
    a2 = v21;
    v14 = v31;
    MEMORY[0x1E12A8390](v26, -1, -1);
  }

  sub_1DCC174D4(a1, &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v32 + 80) + 80) & ~*(v32 + 80);
  v28 = swift_allocObject();
  v28[2] = *(v14 + 80);
  v28[3] = *(v14 + 88);
  v28[4] = v9;
  v28[5] = a2;
  v28[6] = a3;
  v29 = v33;
  v30 = v34;
  v28[7] = a4;
  v28[8] = v29;
  v28[9] = v30;
  sub_1DCC333DC(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_1DD0DCF8C();
}

void sub_1DCCB0670(void *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    sub_1DCCB0808(a5, a6, a7, a1, a8, a9);
  }

  v16 = *a4;
  v20 = *(*a4 + 96);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a1;
  v17[9] = a2;
  v19 = *(*(v16 + 88) + 40);
  sub_1DCCB6F38(a1, a2, 0);
  v18 = *(v16 + 80);
  sub_1DD0DCF8C();
}

void sub_1DCCB0808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v15 = *(*v6 + 96);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;
  v14 = *(*(v12 + 88) + 80);
  sub_1DD0DCF8C();
}

void sub_1DCCB094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v16[8] = a3;
  v16[9] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCCB0A3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30[1] = a7;
  v31 = a6;
  v33 = a1;
  v34 = a9;
  v35 = a8;
  v14 = *a2;
  v15 = type metadata accessor for ExecuteResponse(0);
  v16 = *(v15 - 8);
  v32 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v18);
  v19 = *(v14 + 80);
  v20 = *(v14 + 88);
  v21 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = (v30 - v25);
  *v26 = a3;
  v26[1] = a4;
  v27 = v31;
  v26[2] = a5;
  v26[3] = v27;
  v26[4] = a7;
  swift_storeEnumTagMultiPayload();
  v28 = *(*a2 + 120);
  swift_beginAccess();
  v29 = *(v22 + 40);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB0D2C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v45 = a4;
  v46 = a6;
  v17 = type metadata accessor for SiriKitEventPayload(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = *a9;
  sub_1DCB09910(a1, v48, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v49 == 1)
  {
    return sub_1DCB16DB0(v48, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }

  v44 = v22;
  sub_1DCAFF9E8(v48, v50);
  v25 = v51;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  if (sub_1DCB651D0(v25))
  {
    v43 = a3;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    HIDWORD(v40) = v23;
    v41 = a7;
    v42 = a8;
    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57E00);

    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v48[0] = v30;
      *v29 = 136315394;
      v47 = v44;
      v31 = ActivityType.rawValue.getter();
      v33 = sub_1DCB10E9C(v31, v32, v48);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = v45;
      *(v29 + 14) = sub_1DCB10E9C(v45, a5, v48);
      _os_log_impl(&dword_1DCAFC000, v27, v28, "#ConfirmIntentWithAutoHandleFlow logging Task step: %s for Task type: %s", v29, 0x16u);
      swift_arrayDestroy();
      v35 = v30;
      v36 = v44;
      MEMORY[0x1E12A8390](v35, -1, -1);
      MEMORY[0x1E12A8390](v29, -1, -1);
    }

    else
    {

      v34 = v45;
      v36 = v44;
    }

    v37 = (v10 + *(*v10 + 128));
    memset(v48, 0, sizeof(v48));
    v38 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    type metadata accessor for SiriKitEvent(0);
    *v21 = v36;
    *(v21 + 1) = v34;
    *(v21 + 2) = a5;
    *(v21 + 4) = 0;
    *(v21 + 5) = 0;
    *(v21 + 3) = v43;
    sub_1DCB09910(v48, (v21 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v21 + 10) = 0;
    *(v21 + 11) = 0;
    sub_1DCB09910(v46, (v21 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v21 + 136) = 0u;
    *(v21 + 152) = 0u;
    v39 = v42;
    *(v21 + 21) = v41;
    *(v21 + 22) = v39;
    v21[184] = BYTE4(v40);
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

uint64_t sub_1DCCB1100(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v10 = *v5;
  v11 = type metadata accessor for ExecuteResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = *(v10 + 80);
  v17 = *(v10 + 88);
  v18 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v32[-v22 - 8];
  sub_1DCB09910(a1, v33, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v34 != 1)
  {
    sub_1DCAFF9E8(v33, v32);
    sub_1DCCB2D64(v32, a2, v31, a4, a5);
  }

  v24 = *&v33[0];
  *v23 = *&v33[0];
  v23[8] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = *(*v5 + 120);
  swift_beginAccess();
  v26 = v24;
  (*(v19 + 40))(v5 + v25, v23, v18);
  swift_endAccess();
  v27 = *(v11 + 36);
  v28 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v15[v27], 1, 1, v28);
  *v15 = 1;
  *(v15 + 1) = 0;
  v15[16] = 0;
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  *(v15 + 3) = 0;
  v15[48] = -4;
  v29 = &v15[*(v11 + 40)];
  *v29 = 0u;
  v29[1] = 0u;
  a2(v15);

  return sub_1DCCB6E70(v15, type metadata accessor for ExecuteResponse);
}

void sub_1DCCB1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);
  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DCAFC000, v10, v11, "ConfirmIntentWithAutoHandleFlow execute autoHandle", v12, 2u);
    MEMORY[0x1E12A8390](v12, -1, -1);
  }

  v13 = (v5 + *(*v5 + 112));
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(v14 + 80);
  v18 = *(v8 + 80);
  v17 = *(v8 + 88);
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void sub_1DCCB1574(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    sub_1DCCB0808(a4, a5, a6, a1, a7, a8);
  }

  sub_1DCCB15D4(a4, a5, a6, a7, a8);
}

void sub_1DCCB15D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 96);
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  v13 = *(*(v10 + 88) + 72);
  v14 = *(v10 + 80);
  sub_1DD0DCF8C();
}

void sub_1DCCB1704(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    sub_1DCCB0808(a4, a5, a6, a1, a7, a8);
  }

  sub_1DCCB1768(a9, a4, a5, a6, a7, a8);
}

void sub_1DCCB1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v16 = *(*v6 + 96);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  v14 = *(*(v12 + 88) + 32);
  v15 = *(v12 + 80);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB18B0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v34[1] = a6;
  v35 = a5;
  v10 = *a2;
  v11 = type metadata accessor for ExecuteResponse(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v10 + 80);
  v18 = *(v10 + 88);
  v19 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v34 - v23;
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 2;
  swift_storeEnumTagMultiPayload();
  v25 = *(*a2 + 120);
  swift_beginAccess();
  (*(v20 + 40))(a2 + v25, v24, v19);
  swift_endAccess();
  v39 = 5;
  v26 = [a4 typeName];
  v27 = sub_1DD0DDFBC();
  v29 = v28;

  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 70;
  sub_1DCCB0D2C(a1, &v39, a3, v27, v29, v37, 0, 0, &v36);

  sub_1DCB16DB0(v37, &unk_1ECCA3280, &unk_1DD0E23D0);
  v30 = *(v12 + 44);
  v31 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v16[v30], 1, 1, v31);
  *v16 = 1;
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 3) = 0;
  v16[48] = -4;
  v32 = &v16[*(v12 + 48)];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v35(v16);
  return sub_1DCCB6E70(v16, type metadata accessor for ExecuteResponse);
}

uint64_t sub_1DCCB1B6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v53 = *a2;
  v55 = type metadata accessor for ExecuteResponse(0);
  v14 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v53[11];
  v54 = v53[10];
  v19 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v25 = &v51 - v24;
  v26 = *a1;
  if (*(a1 + 16) == 1)
  {
    sub_1DCCB0808(a3, a4, a5, v26, a6, a7);
  }

  v52 = a7;
  if (v26 == 2)
  {
    *v25 = xmmword_1DD0E5100;
    v25[16] = 2;
    v27 = v22;
    v28 = v23;
    swift_storeEnumTagMultiPayload();
    v29 = *(*a2 + 120);
    swift_beginAccess();
    (*(v28 + 40))(a2 + v29, v25, v27);
    swift_endAccess();
    v30 = v55;
    v31 = *(v55 + 36);
    v32 = type metadata accessor for PluginAction();
    __swift_storeEnumTagSinglePayload(&v17[v31], 1, 1, v32);
    *v17 = 1;
    *(v17 + 1) = 0;
    v17[16] = 0;
    *(v17 + 4) = 0;
    *(v17 + 5) = 0;
    *(v17 + 3) = 0;
    v17[48] = -4;
    v33 = &v17[*(v30 + 40)];
    *v33 = 0u;
    *(v33 + 1) = 0u;
    a6(v17);
  }

  else
  {
    v34 = a6;
    if (v26)
    {
      v35 = v53[12];
      v36 = swift_allocObject();
      v36[2] = a2;
      v36[3] = a6;
      v36[4] = v52;
      v36[5] = a3;
      v37 = a4;
      v36[6] = a4;
      v38 = *(v18 + 64);
      v39 = v37;
      sub_1DD0DCF8C();
    }

    v58[0] = 0;
    v40 = v22;
    v41 = v23;
    swift_getAssociatedTypeWitness();
    ConfirmIntentAnswer.init(confirmationResponse:intent:)(v58, a4, v56);
    v42 = v57;
    *v25 = v56[0];
    *(v25 + 1) = v42;
    v25[16] = 0;
    swift_storeEnumTagMultiPayload();
    v43 = *(*a2 + 120);
    swift_beginAccess();
    v44 = *(v41 + 40);
    v45 = a4;
    v44(a2 + v43, v25, v40);
    swift_endAccess();
    v46 = v55;
    v47 = *(v55 + 36);
    v48 = type metadata accessor for PluginAction();
    __swift_storeEnumTagSinglePayload(&v17[v47], 1, 1, v48);
    *v17 = 1;
    *(v17 + 1) = 0;
    v17[16] = 0;
    *(v17 + 4) = 0;
    *(v17 + 5) = 0;
    *(v17 + 3) = 0;
    v17[48] = -4;
    v49 = &v17[*(v46 + 40)];
    *v49 = 0u;
    *(v49 + 1) = 0u;
    v34(v17);
  }

  return sub_1DCCB6E70(v17, type metadata accessor for ExecuteResponse);
}

void sub_1DCCB2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a3;
  v11[6] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB20CC(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v40 = a6;
  v41 = a5;
  v36 = a4;
  v38 = a1;
  v39 = a3;
  v8 = *a2;
  v9 = type metadata accessor for ExecuteResponse(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v8 + 80);
  v15 = *(v8 + 88);
  v16 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v35 - v20;
  v42[0] = 5;
  v22 = [a4 typeName];
  v23 = sub_1DD0DDFBC();
  v25 = v24;

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 70;
  sub_1DCCB0D2C(v38, v42, v39, v23, v25, v45, 0, 0, &v44);

  sub_1DCB16DB0(v45, &unk_1ECCA3280, &unk_1DD0E23D0);
  LOBYTE(v45[0]) = 1;
  swift_getAssociatedTypeWitness();
  v26 = v36;
  ConfirmIntentAnswer.init(confirmationResponse:intent:)(v45, v36, v42);
  v27 = v43;
  *v21 = v42[0];
  *(v21 + 1) = v27;
  v21[16] = 0;
  swift_storeEnumTagMultiPayload();
  v28 = *(*a2 + 120);
  swift_beginAccess();
  v29 = *(v17 + 40);
  v30 = v26;
  v29(&a2[v28], v21, v16);
  swift_endAccess();
  v31 = *(v10 + 44);
  v32 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v14[v31], 1, 1, v32);
  *v14 = 1;
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  *(v14 + 3) = 0;
  v14[48] = -4;
  v33 = &v14[*(v10 + 48)];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v41(v14);
  return sub_1DCCB6E70(v14, type metadata accessor for ExecuteResponse);
}

uint64_t sub_1DCCB23D0(uint64_t a1, uint64_t (*a2)(void, void, void))
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DCCB6F00(v4, v3, v5);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  sub_1DCCB6F10(v4, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v20 = a2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v21[0] = v4;
    v21[1] = v3;
    v22 = v5;
    sub_1DCCB6F00(v4, v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3828, &qword_1DD0E9D68);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "ConfirmIntentWithAutoHandleFlow executeAutoHandle response %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A8390](v10, -1, -1);
    v14 = v9;
    a2 = v20;
    MEMORY[0x1E12A8390](v14, -1, -1);
  }

  if (v5)
  {
    sub_1DD0DCF8C();
  }

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  sub_1DCCB6F10(v4, v3, 0);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1DCB10E9C(v4, v3, v21);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "ConfirmIntentWithAutoHandleFlow executeAutoHandle success, submitted aceId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A8390](v18, -1, -1);
    MEMORY[0x1E12A8390](v17, -1, -1);
  }

  return a2(v4, v3, 0);
}

uint64_t sub_1DCCB275C(uint64_t a1, char a2, uint64_t (*a3)(void, void))
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "ConfirmIntentWithAutoHandleFlow autoHandle cancelled success.", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  return a3(0, 0);
}

void sub_1DCCB2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a3;
  v13[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCB2A70(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *), uint64_t a7)
{
  v38[1] = a7;
  v39 = a6;
  v38[0] = a4;
  v11 = *a2;
  v12 = type metadata accessor for ExecuteResponse(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 + 80);
  v19 = *(v11 + 88);
  v20 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v38 - v24;
  *v25 = a3;
  v25[8] = 1;
  swift_storeEnumTagMultiPayload();
  v26 = *(*a2 + 120);
  swift_beginAccess();
  v27 = a3;
  (*(v21 + 40))(a2 + v26, v25, v20);
  swift_endAccess();
  v44 = 6;
  v28 = [a5 typeName];
  v29 = sub_1DD0DDFBC();
  v31 = v30;

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  swift_getErrorValue();
  v32 = sub_1DCEE0FD4(v41);
  v40 = 21;
  sub_1DCCB0D2C(a1, &v44, v38[0], v29, v31, v42, v32, v33, &v40);

  sub_1DCB16DB0(v42, &unk_1ECCA3280, &unk_1DD0E23D0);
  v34 = *(v13 + 44);
  v35 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v17[v34], 1, 1, v35);
  *v17 = 1;
  *(v17 + 1) = 0;
  v17[16] = 0;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  *(v17 + 3) = 0;
  v17[48] = -4;
  v36 = &v17[*(v13 + 48)];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v39(v17);
  return sub_1DCCB6E70(v17, type metadata accessor for ExecuteResponse);
}

void sub_1DCCB2D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (v5 + *(*v5 + 104));
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1DCB17D04(a1, v15);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  sub_1DCAFF9E8(v15, (v13 + 4));
  v13[9] = v5;
  v13[10] = a2;
  v13[11] = a3;
  v14 = *(v12 + 8);
  sub_1DD0DCF8C();
}

void sub_1DCCB2E7C(void *a1, char a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(char *), uint64_t a8)
{
  v50 = a8;
  v51 = a7;
  v14 = *a6;
  v49 = type metadata accessor for ExecuteResponse(0);
  v15 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v14 + 80);
  v20 = *(v14 + 88);
  v21 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v45 - v25;
  if (a2)
  {
    v46 = a5;
    v47 = a4;
    v48 = a3;
    v56 = a1;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      v28 = v55;
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v29 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v29, qword_1EDE57E00);
      v30 = v28;
      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v52 = v28;
        v53[0] = v34;
        *v33 = 136315138;
        sub_1DCCB6FA8();
        v35 = sub_1DD0DF18C();
        v37 = sub_1DCB10E9C(v35, v36, v53);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1DCAFC000, v31, v32, "Got a possible barge-in error (will ignore): %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A8390](v34, -1, -1);
        MEMORY[0x1E12A8390](v33, -1, -1);
      }

      v38 = v48;
      sub_1DCB17D04(v46, v53);
      v54 = 0;
      v38(v53);

      sub_1DCB16DB0(v53, &qword_1ECCA1F70, &qword_1DD0E2BD0);
    }

    else
    {

      *v26 = a1;
      v26[8] = 0;
      swift_storeEnumTagMultiPayload();
      v39 = *(*a6 + 120);
      swift_beginAccess();
      v40 = a1;
      (*(v22 + 40))(a6 + v39, v26, v21);
      swift_endAccess();
      v41 = v49;
      v42 = *(v49 + 36);
      v43 = type metadata accessor for PluginAction();
      __swift_storeEnumTagSinglePayload(&v18[v42], 1, 1, v43);
      *v18 = 1;
      *(v18 + 1) = 0;
      v18[16] = 0;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 3) = 0;
      v18[48] = -4;
      v44 = &v18[*(v41 + 40)];
      *v44 = 0u;
      *(v44 + 1) = 0u;
      v51(v18);
      sub_1DCCB6E70(v18, type metadata accessor for ExecuteResponse);
    }
  }

  else
  {
    sub_1DCB17D04(a5, v53);
    v54 = 0;
    a3(v53);
    sub_1DCB16DB0(v53, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  }
}

uint64_t *sub_1DCCB32BC()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v2 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 120);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for ConfirmIntentWithAutoHandleFlow.State();
  OUTLINED_FUNCTION_13_1(v7);
  (*(v8 + 8))(v0 + v5);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v9 + 128)));
  return v0;
}

uint64_t sub_1DCCB33DC()
{
  sub_1DCCB32BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCB3464()
{
  v4 = &unk_1DD0E9C70;
  v5 = "(";
  result = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout();
    v6 = &v3;
    v7 = "(";
    v8 = &unk_1DD0E9CB8;
    v9 = &unk_1DD0E9CD0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCCB355C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = a2[1];
      *a1 = *a2;
      a1[1] = v7;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v20 = a2[1];
      *a1 = *a2;
      a1[1] = v20;
      v21 = a2[3];
      a1[2] = a2[2];
      a1[3] = v21;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = type metadata accessor for Input(0);
      v13 = v12[5];
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 16))(v14, v15, v17);
          goto LABEL_36;
        case 1u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v14, v15, v34);
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v14[*(v35 + 48)] = *&v15[*(v35 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v28 = *(v15 + 1);
          *v14 = *v15;
          *(v14 + 1) = v28;
          *(v14 + 2) = *(v15 + 2);

          goto LABEL_36;
        case 3u:
          *v14 = *v15;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v26 = sub_1DD0DB1EC();
          (*(*(v26 - 8) + 16))(v14, v15, v26);
          goto LABEL_36;
        case 5u:
          v36 = *v15;
          *v14 = *v15;
          v37 = v36;
          goto LABEL_36;
        case 6u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v14, v15, v38);
          v39 = type metadata accessor for USOParse();
          v40 = v39[5];
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v40], &v15[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 16))(&v14[v40], &v15[v40], v41);
            __swift_storeEnumTagSinglePayload(&v14[v40], 0, 1, v41);
          }

          v73 = v39[6];
          v74 = &v14[v73];
          v75 = &v15[v73];
          v76 = *(v75 + 1);
          *v74 = *v75;
          *(v74 + 1) = v76;
          v77 = v39[7];
          v78 = &v14[v77];
          v79 = &v15[v77];
          v78[4] = v79[4];
          *v78 = *v79;

          goto LABEL_36;
        case 7u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v14, v15, v29);
          v30 = type metadata accessor for USOParse();
          v31 = v30[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v31], &v15[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v14[v31], &v15[v31], v32);
            __swift_storeEnumTagSinglePayload(&v14[v31], 0, 1, v32);
          }

          v53 = v30[6];
          v54 = &v14[v53];
          v55 = &v15[v53];
          v56 = *(v55 + 1);
          *v54 = *v55;
          *(v54 + 1) = v56;
          v57 = v30[7];
          v58 = &v14[v57];
          v59 = &v15[v57];
          v58[4] = v59[4];
          *v58 = *v59;
          v60 = type metadata accessor for LinkParse();
          v61 = v60[5];
          v62 = &v14[v61];
          v63 = &v15[v61];
          v64 = *(v63 + 1);
          *v62 = *v63;
          *(v62 + 1) = v64;
          v65 = v60[6];
          v66 = &v14[v65];
          v67 = &v15[v65];
          v68 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v68;
          v69 = v60[7];
          v70 = &v14[v69];
          v71 = &v15[v69];
          v72 = *(v71 + 1);
          *v70 = *v71;
          *(v70 + 1) = v72;

          goto LABEL_36;
        case 8u:
          v43 = sub_1DD0DD12C();
          (*(*(v43 - 8) + 16))(v14, v15, v43);
          v44 = type metadata accessor for NLRouterParse();
          v45 = *(v44 + 20);
          v46 = &v14[v45];
          v47 = &v15[v45];
          v48 = *(v47 + 1);
          *v46 = *v47;
          *(v46 + 1) = v48;
          v49 = *(v44 + 24);
          v107 = v44;
          __dst = &v14[v49];
          v50 = &v15[v49];
          v51 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v50, 1, v51))
          {
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v50, *(*(v52 - 8) + 64));
          }

          else
          {
            v80 = sub_1DD0DB4BC();
            (*(*(v80 - 8) + 16))(__dst, v50, v80);
            v81 = v51[5];
            v106 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v50[v81], 1, v106))
            {
              v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v81], &v50[v81], *(*(v82 - 8) + 64));
            }

            else
            {
              (*(*(v106 - 8) + 16))(&__dst[v81], &v50[v81]);
              __swift_storeEnumTagSinglePayload(&__dst[v81], 0, 1, v106);
            }

            v83 = v51[6];
            v84 = &__dst[v83];
            v85 = &v50[v83];
            v86 = *(v85 + 1);
            *v84 = *v85;
            *(v84 + 1) = v86;
            v87 = v51[7];
            v88 = &__dst[v87];
            v89 = &v50[v87];
            v88[4] = v89[4];
            *v88 = *v89;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v51);
          }

          v90 = *(v107 + 28);
          v91 = *&v15[v90];
          *&v14[v90] = v91;
          v92 = v91;
          goto LABEL_36;
        case 9u:
          v27 = sub_1DD0DD08C();
          (*(*(v27 - 8) + 16))(v14, v15, v27);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v14, v15, *(*(v16 - 8) + 64));
          break;
      }

      *(a1 + v12[6]) = *(a2 + v12[6]);
      v93 = v12[7];
      v94 = a1 + v93;
      v95 = a2 + v93;
      v96 = *(a2 + v93 + 24);

      if (v96)
      {
        v97 = *(v95 + 32);
        *(v94 + 3) = v96;
        *(v94 + 4) = v97;
        (**(v96 - 8))(v94, v95, v96);
      }

      else
      {
        v98 = *(v95 + 16);
        *v94 = *v95;
        *(v94 + 1) = v98;
        *(v94 + 4) = *(v95 + 32);
      }

      *(a1 + v12[8]) = *(a2 + v12[8]);
      sub_1DD0DD1FC();
      v100 = *(a3 + 16);
      v99 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
      *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
      *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
      v102 = TupleTypeMetadata[24];
      v103 = (a1 + v102);
      v104 = (a2 + v102);
      v105 = v104[1];
      *v103 = *v104;
      v103[1] = v105;
      sub_1DD0DCF8C();
    case 3u:
      v18 = a2[1];
      *a1 = *a2;
      a1[1] = v18;
      v19 = a2[3];
      a1[2] = a2[2];
      a1[3] = v19;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v8 = *a2;
      v9 = a2[1];
      v10 = *(a2 + 16);
      sub_1DCBB12F4(v8, v9, v10);
      *a1 = v8;
      a1[1] = v9;
      *(a1 + 16) = v10;
      goto LABEL_41;
    case 5u:
      v22 = *a2;
      v23 = *a2;
      *a1 = v22;
      *(a1 + 8) = *(a2 + 8);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v24 = *(v6 + 64);

      result = memcpy(a1, a2, v24);
      break;
  }

  return result;
}

void sub_1DCCB4024(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v9 = *a1;

      v10 = *(a1 + 16);

      goto LABEL_10;
    case 1u:
    case 3u:
      v4 = *a1;

      v5 = *(a1 + 32);

      break;
    case 2u:
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 8))(a1, v11);
      v12 = type metadata accessor for Input(0);
      v13 = (a1 + v12[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v14 = sub_1DD0DC76C();
          goto LABEL_18;
        case 1u:
          v27 = sub_1DD0DC76C();
          (*(*(v27 - 8) + 8))(v13, v27);
          v28 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v15 = *(v13 + 1);

          v16 = *(v13 + 2);
          goto LABEL_30;
        case 3u:
          v17 = *v13;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v14 = sub_1DD0DB1EC();
          goto LABEL_18;
        case 5u:
          v29 = *v13;
          goto LABEL_36;
        case 6u:
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 8))(v13, v30);
          v31 = type metadata accessor for USOParse();
          v32 = *(v31 + 20);
          v33 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v13[v32], 1, v33))
          {
            (*(*(v33 - 8) + 8))(&v13[v32], v33);
          }

          v26 = *(v31 + 24);
          goto LABEL_29;
        case 7u:
          v18 = sub_1DD0DB4BC();
          (*(*(v18 - 8) + 8))(v13, v18);
          v19 = type metadata accessor for USOParse();
          v20 = *(v19 + 20);
          v21 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v13[v20], 1, v21))
          {
            (*(*(v21 - 8) + 8))(&v13[v20], v21);
          }

          v22 = *&v13[*(v19 + 24) + 8];

          v23 = type metadata accessor for LinkParse();
          v24 = *&v13[v23[5] + 8];

          v25 = *&v13[v23[6] + 8];

          v26 = v23[7];
LABEL_29:
          v34 = *&v13[v26 + 8];
LABEL_30:

          break;
        case 8u:
          v35 = sub_1DD0DD12C();
          (*(*(v35 - 8) + 8))(v13, v35);
          v36 = type metadata accessor for NLRouterParse();
          v37 = *&v13[v36[5] + 8];

          v38 = &v13[v36[6]];
          v39 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v38, 1, v39))
          {
            v40 = sub_1DD0DB4BC();
            (*(*(v40 - 8) + 8))(v38, v40);
            v41 = *(v39 + 20);
            v42 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v38 + v41, 1, v42))
            {
              (*(*(v42 - 8) + 8))(v38 + v41, v42);
            }

            v43 = *(v38 + *(v39 + 24) + 8);
          }

          v29 = *&v13[v36[7]];
LABEL_36:

          break;
        case 9u:
          v14 = sub_1DD0DD08C();
LABEL_18:
          (*(*(v14 - 8) + 8))(v13, v14);
          break;
        default:
          break;
      }

      v44 = *(a1 + v12[6]);

      v45 = (a1 + v12[7]);
      if (v45[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      sub_1DD0DD1FC();
      v48 = a2 + 16;
      v46 = *(a2 + 16);
      v47 = *(v48 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v50 = *(a1 + TupleTypeMetadata[12]);

      v51 = *(a1 + TupleTypeMetadata[24] + 8);

      break;
    case 4u:
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);

      sub_1DCBB1310(v6, v7, v8);
      break;
    case 5u:
      v10 = *a1;

LABEL_10:

      break;
    default:
      return;
  }
}

void *sub_1DCCB467C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 1u:
      v19 = a2[1];
      *a1 = *a2;
      a1[1] = v19;
      v20 = a2[3];
      a1[2] = a2[2];
      a1[3] = v20;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 2u:
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v11 = type metadata accessor for Input(0);
      v12 = v11[5];
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 16))(v13, v14, v16);
          goto LABEL_34;
        case 1u:
          v33 = sub_1DD0DC76C();
          (*(*(v33 - 8) + 16))(v13, v14, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v13[*(v34 + 48)] = *&v14[*(v34 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v27 = *(v14 + 1);
          *v13 = *v14;
          *(v13 + 1) = v27;
          *(v13 + 2) = *(v14 + 2);

          goto LABEL_34;
        case 3u:
          *v13 = *v14;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v25 = sub_1DD0DB1EC();
          (*(*(v25 - 8) + 16))(v13, v14, v25);
          goto LABEL_34;
        case 5u:
          v35 = *v14;
          *v13 = *v14;
          v36 = v35;
          goto LABEL_34;
        case 6u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 16))(v13, v14, v37);
          v38 = type metadata accessor for USOParse();
          v39 = v38[5];
          v40 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v39], 1, v40))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v39], &v14[v39], *(*(v41 - 8) + 64));
          }

          else
          {
            (*(*(v40 - 8) + 16))(&v13[v39], &v14[v39], v40);
            __swift_storeEnumTagSinglePayload(&v13[v39], 0, 1, v40);
          }

          v72 = v38[6];
          v73 = &v13[v72];
          v74 = &v14[v72];
          v75 = *(v74 + 1);
          *v73 = *v74;
          *(v73 + 1) = v75;
          v76 = v38[7];
          v77 = &v13[v76];
          v78 = &v14[v76];
          v77[4] = v78[4];
          *v77 = *v78;

          goto LABEL_34;
        case 7u:
          v28 = sub_1DD0DB4BC();
          (*(*(v28 - 8) + 16))(v13, v14, v28);
          v29 = type metadata accessor for USOParse();
          v30 = v29[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v30], &v14[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 16))(&v13[v30], &v14[v30], v31);
            __swift_storeEnumTagSinglePayload(&v13[v30], 0, 1, v31);
          }

          v52 = v29[6];
          v53 = &v13[v52];
          v54 = &v14[v52];
          v55 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v55;
          v56 = v29[7];
          v57 = &v13[v56];
          v58 = &v14[v56];
          v57[4] = v58[4];
          *v57 = *v58;
          v59 = type metadata accessor for LinkParse();
          v60 = v59[5];
          v61 = &v13[v60];
          v62 = &v14[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;
          v64 = v59[6];
          v65 = &v13[v64];
          v66 = &v14[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;
          v68 = v59[7];
          v69 = &v13[v68];
          v70 = &v14[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;

          goto LABEL_34;
        case 8u:
          v42 = sub_1DD0DD12C();
          (*(*(v42 - 8) + 16))(v13, v14, v42);
          v43 = type metadata accessor for NLRouterParse();
          v44 = *(v43 + 20);
          v45 = &v13[v44];
          v46 = &v14[v44];
          v47 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v47;
          v48 = *(v43 + 24);
          v106 = v43;
          __dst = &v13[v48];
          v49 = &v14[v48];
          v50 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v79 = sub_1DD0DB4BC();
            (*(*(v79 - 8) + 16))(__dst, v49, v79);
            v80 = v50[5];
            v105 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v49[v80], 1, v105))
            {
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v80], &v49[v80], *(*(v81 - 8) + 64));
            }

            else
            {
              (*(*(v105 - 8) + 16))(&__dst[v80], &v49[v80]);
              __swift_storeEnumTagSinglePayload(&__dst[v80], 0, 1, v105);
            }

            v82 = v50[6];
            v83 = &__dst[v82];
            v84 = &v49[v82];
            v85 = *(v84 + 1);
            *v83 = *v84;
            *(v83 + 1) = v85;
            v86 = v50[7];
            v87 = &__dst[v86];
            v88 = &v49[v86];
            v87[4] = v88[4];
            *v87 = *v88;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v50);
          }

          v89 = *(v106 + 28);
          v90 = *&v14[v89];
          *&v13[v89] = v90;
          v91 = v90;
          goto LABEL_34;
        case 9u:
          v26 = sub_1DD0DD08C();
          (*(*(v26 - 8) + 16))(v13, v14, v26);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
          break;
      }

      *(a1 + v11[6]) = *(a2 + v11[6]);
      v92 = v11[7];
      v93 = a1 + v92;
      v94 = a2 + v92;
      v95 = *(a2 + v92 + 24);

      if (v95)
      {
        v96 = *(v94 + 32);
        *(v93 + 3) = v95;
        *(v93 + 4) = v96;
        (**(v95 - 8))(v93, v94, v95);
      }

      else
      {
        v97 = *(v94 + 16);
        *v93 = *v94;
        *(v93 + 1) = v97;
        *(v93 + 4) = *(v94 + 32);
      }

      *(a1 + v11[8]) = *(a2 + v11[8]);
      sub_1DD0DD1FC();
      v99 = *(a3 + 16);
      v98 = *(a3 + 24);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
      *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
      *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
      v101 = TupleTypeMetadata[24];
      v102 = (a1 + v101);
      v103 = (a2 + v101);
      v104 = v103[1];
      *v102 = *v103;
      v102[1] = v104;
      sub_1DD0DCF8C();
    case 3u:
      v17 = a2[1];
      *a1 = *a2;
      a1[1] = v17;
      v18 = a2[3];
      a1[2] = a2[2];
      a1[3] = v18;
      a1[4] = a2[4];
      sub_1DD0DCF8C();
    case 4u:
      v7 = *a2;
      v8 = a2[1];
      v9 = *(a2 + 16);
      sub_1DCBB12F4(v7, v8, v9);
      *a1 = v7;
      a1[1] = v8;
      *(a1 + 16) = v9;
      goto LABEL_39;
    case 5u:
      v21 = *a2;
      v22 = *a2;
      *a1 = v21;
      *(a1 + 8) = *(a2 + 8);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v23 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v23);
      break;
  }

  return result;
}

uint64_t *sub_1DCCB5104(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 - 8);
    (*(v6 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 2u:
        v10 = sub_1DD0DB04C();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = type metadata accessor for Input(0);
        v12 = v11[5];
        v13 = a1 + v12;
        v14 = a2 + v12;
        v15 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v16 = sub_1DD0DC76C();
            (*(*(v16 - 8) + 16))(v13, v14, v16);
            goto LABEL_35;
          case 1u:
            v28 = sub_1DD0DC76C();
            (*(*(v28 - 8) + 16))(v13, v14, v28);
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v13[*(v29 + 48)] = *&v14[*(v29 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v13 = *v14;
            *(v13 + 1) = *(v14 + 1);
            *(v13 + 2) = *(v14 + 2);

            goto LABEL_35;
          case 3u:
            *v13 = *v14;
            swift_unknownObjectRetain();
            goto LABEL_35;
          case 4u:
            v21 = sub_1DD0DB1EC();
            (*(*(v21 - 8) + 16))(v13, v14, v21);
            goto LABEL_35;
          case 5u:
            v30 = *v14;
            *v13 = *v14;
            v31 = v30;
            goto LABEL_35;
          case 6u:
            v32 = sub_1DD0DB4BC();
            (*(*(v32 - 8) + 16))(v13, v14, v32);
            v33 = type metadata accessor for USOParse();
            v34 = v33[5];
            v35 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v34], 1, v35))
            {
              v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v34], &v14[v34], *(*(v36 - 8) + 64));
            }

            else
            {
              (*(*(v35 - 8) + 16))(&v13[v34], &v14[v34], v35);
              __swift_storeEnumTagSinglePayload(&v13[v34], 0, 1, v35);
            }

            v63 = v33[6];
            v64 = &v13[v63];
            v65 = &v14[v63];
            *v64 = *v65;
            *(v64 + 1) = *(v65 + 1);
            v66 = v33[7];
            v67 = &v13[v66];
            v68 = &v14[v66];
            v69 = *v68;
            v67[4] = v68[4];
            *v67 = v69;

            goto LABEL_35;
          case 7u:
            v23 = sub_1DD0DB4BC();
            (*(*(v23 - 8) + 16))(v13, v14, v23);
            v24 = type metadata accessor for USOParse();
            v25 = v24[5];
            v26 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v25], 1, v26))
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v25], &v14[v25], *(*(v27 - 8) + 64));
            }

            else
            {
              (*(*(v26 - 8) + 16))(&v13[v25], &v14[v25], v26);
              __swift_storeEnumTagSinglePayload(&v13[v25], 0, 1, v26);
            }

            v46 = v24[6];
            v47 = &v13[v46];
            v48 = &v14[v46];
            *v47 = *v48;
            *(v47 + 1) = *(v48 + 1);
            v49 = v24[7];
            v50 = &v13[v49];
            v51 = &v14[v49];
            v52 = *v51;
            v50[4] = v51[4];
            *v50 = v52;
            v53 = type metadata accessor for LinkParse();
            v54 = v53[5];
            v55 = &v13[v54];
            v56 = &v14[v54];
            *v55 = *v56;
            *(v55 + 1) = *(v56 + 1);
            v57 = v53[6];
            v58 = &v13[v57];
            v59 = &v14[v57];
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = v53[7];
            v61 = &v13[v60];
            v62 = &v14[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);

            goto LABEL_35;
          case 8u:
            v37 = sub_1DD0DD12C();
            (*(*(v37 - 8) + 16))(v13, v14, v37);
            v38 = type metadata accessor for NLRouterParse();
            v39 = *(v38 + 20);
            v40 = &v13[v39];
            v41 = &v14[v39];
            *v40 = *v41;
            *(v40 + 1) = *(v41 + 1);
            v42 = *(v38 + 24);
            v96 = v38;
            __dst = &v13[v42];
            v43 = &v14[v42];
            v44 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v43, 1, v44))
            {
              v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v43, *(*(v45 - 8) + 64));
            }

            else
            {
              v70 = sub_1DD0DB4BC();
              (*(*(v70 - 8) + 16))(__dst, v43, v70);
              v71 = v44[5];
              v95 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v43[v71], 1, v95))
              {
                v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v71], &v43[v71], *(*(v72 - 8) + 64));
              }

              else
              {
                (*(*(v95 - 8) + 16))(&__dst[v71], &v43[v71]);
                __swift_storeEnumTagSinglePayload(&__dst[v71], 0, 1, v95);
              }

              v73 = v44[6];
              v74 = &__dst[v73];
              v75 = &v43[v73];
              *v74 = *v75;
              *(v74 + 1) = *(v75 + 1);
              v76 = v44[7];
              v77 = &__dst[v76];
              v78 = &v43[v76];
              v79 = *v78;
              v77[4] = v78[4];
              *v77 = v79;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v44);
            }

            v80 = *(v96 + 28);
            v81 = *&v14[v80];
            *&v13[v80] = v81;
            v82 = v81;
            goto LABEL_35;
          case 9u:
            v22 = sub_1DD0DD08C();
            (*(*(v22 - 8) + 16))(v13, v14, v22);
LABEL_35:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v13, v14, *(*(v15 - 8) + 64));
            break;
        }

        *(a1 + v11[6]) = *(a2 + v11[6]);
        v83 = v11[7];
        v84 = a1 + v83;
        v85 = (a2 + v83);
        v86 = *(a2 + v83 + 24);

        if (v86)
        {
          *(v84 + 3) = v86;
          *(v84 + 4) = *(v85 + 4);
          (**(v86 - 8))(v84, v85, v86);
        }

        else
        {
          v87 = *v85;
          v88 = v85[1];
          *(v84 + 4) = *(v85 + 4);
          *v84 = v87;
          *(v84 + 1) = v88;
        }

        *(a1 + v11[8]) = *(a2 + v11[8]);
        sub_1DD0DD1FC();
        v90 = *(a3 + 16);
        v89 = *(a3 + 24);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        *(a1 + TupleTypeMetadata[12]) = *(a2 + TupleTypeMetadata[12]);
        *(a1 + TupleTypeMetadata[16]) = *(a2 + TupleTypeMetadata[16]);
        *(a1 + TupleTypeMetadata[20]) = *(a2 + TupleTypeMetadata[20]);
        v92 = TupleTypeMetadata[24];
        v93 = (a1 + v92);
        v94 = (a2 + v92);
        *v93 = *v94;
        v93[1] = v94[1];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        sub_1DD0DCF8C();
      case 4u:
        v7 = *a2;
        v8 = a2[1];
        v9 = *(a2 + 16);
        sub_1DCBB12F4(v7, v8, v9);
        *a1 = v7;
        a1[1] = v8;
        *(a1 + 16) = v9;
        goto LABEL_40;
      case 5u:
        v17 = *a2;
        v18 = *a2;
        *a1 = v17;
        *(a1 + 8) = *(a2 + 8);
LABEL_40:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v19 = *(v6 + 64);

        return memcpy(a1, a2, v19);
    }
  }

  return a1;
}

_BYTE *sub_1DCCB5C54(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse();
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_26;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse();
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse();
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_26;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse();
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v63 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v62 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v61 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v62;
            memcpy(&v62[v61], &v19[v61], *(*(v41 - 8) + 64));
          }

          else
          {
            v60 = v40;
            (*(*(v40 - 8) + 32))(&v62[v61], &v19[v61], v40);
            v42 = v62;
            __swift_storeEnumTagSinglePayload(&v62[v61], 0, 1, v60);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v63 + 28)] = *&v10[*(v63 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    sub_1DD0DD1FC();
    v58 = *(a3 + 16);
    v57 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

_BYTE *sub_1DCCB6488(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for Input(0);
    v9 = v8[5];
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_27;
      case 1u:
        v23 = sub_1DD0DC76C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v24 + 48)] = *&v11[*(v24 + 48)];
        goto LABEL_27;
      case 4u:
        v26 = sub_1DD0DB1EC();
        (*(*(v26 - 8) + 32))(v10, v11, v26);
        goto LABEL_27;
      case 6u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(v10, v11, v27);
        v28 = type metadata accessor for USOParse();
        v29 = v28[5];
        v30 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v29], 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v29], &v11[v29], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(*(v30 - 8) + 32))(&v10[v29], &v11[v29], v30);
          __swift_storeEnumTagSinglePayload(&v10[v29], 0, 1, v30);
        }

        *&v10[v28[6]] = *&v11[v28[6]];
        v44 = v28[7];
        v45 = &v10[v44];
        v46 = &v11[v44];
        v45[4] = v46[4];
        *v45 = *v46;
        goto LABEL_27;
      case 7u:
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 32))(v10, v11, v32);
        v33 = type metadata accessor for USOParse();
        v34 = v33[5];
        v35 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v35))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v34], &v11[v34], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(*(v35 - 8) + 32))(&v10[v34], &v11[v34], v35);
          __swift_storeEnumTagSinglePayload(&v10[v34], 0, 1, v35);
        }

        *&v10[v33[6]] = *&v11[v33[6]];
        v47 = v33[7];
        v48 = &v10[v47];
        v49 = &v11[v47];
        v48[4] = v49[4];
        *v48 = *v49;
        v50 = type metadata accessor for LinkParse();
        *&v10[v50[5]] = *&v11[v50[5]];
        *&v10[v50[6]] = *&v11[v50[6]];
        *&v10[v50[7]] = *&v11[v50[7]];
        goto LABEL_27;
      case 8u:
        v16 = sub_1DD0DD12C();
        (*(*(v16 - 8) + 32))(v10, v11, v16);
        v17 = type metadata accessor for NLRouterParse();
        *&v10[*(v17 + 20)] = *&v11[*(v17 + 20)];
        v64 = v17;
        v18 = *(v17 + 24);
        v19 = &v10[v18];
        v20 = &v11[v18];
        v21 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v20, 1, v21))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v19, v20, *(*(v22 - 8) + 64));
        }

        else
        {
          v37 = sub_1DD0DB4BC();
          v63 = v19;
          (*(*(v37 - 8) + 32))(v19, v20, v37);
          v38 = v21[5];
          v39 = sub_1DD0DB3EC();
          v62 = v38;
          v40 = &v20[v38];
          v41 = v39;
          if (__swift_getEnumTagSinglePayload(v40, 1, v39))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v43 = v63;
            memcpy(&v63[v62], &v20[v62], *(*(v42 - 8) + 64));
          }

          else
          {
            v61 = v41;
            (*(*(v41 - 8) + 32))(&v63[v62], &v20[v62], v41);
            v43 = v63;
            __swift_storeEnumTagSinglePayload(&v63[v62], 0, 1, v61);
          }

          *(v43 + v21[6]) = *&v20[v21[6]];
          v51 = v21[7];
          v52 = v43 + v51;
          v53 = &v20[v51];
          *(v52 + 4) = v53[4];
          *v52 = *v53;
          __swift_storeEnumTagSinglePayload(v43, 0, 1, v21);
        }

        *&v10[*(v64 + 28)] = *&v11[*(v64 + 28)];
        goto LABEL_27;
      case 9u:
        v25 = sub_1DD0DD08C();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }

    *&a1[v8[6]] = *&a2[v8[6]];
    v54 = v8[7];
    v55 = &a1[v54];
    v56 = &a2[v54];
    v57 = *(v56 + 1);
    *v55 = *v56;
    *(v55 + 1) = v57;
    *(v55 + 4) = *(v56 + 4);
    a1[v8[8]] = a2[v8[8]];
    sub_1DD0DD1FC();
    v59 = *(a3 + 16);
    v58 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    *&a1[TupleTypeMetadata[12]] = *&a2[TupleTypeMetadata[12]];
    *&a1[TupleTypeMetadata[16]] = *&a2[TupleTypeMetadata[16]];
    *&a1[TupleTypeMetadata[20]] = *&a2[TupleTypeMetadata[20]];
    *&a1[TupleTypeMetadata[24]] = *&a2[TupleTypeMetadata[24]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(v6 + 64);

  return memcpy(a1, a2, v14);
}