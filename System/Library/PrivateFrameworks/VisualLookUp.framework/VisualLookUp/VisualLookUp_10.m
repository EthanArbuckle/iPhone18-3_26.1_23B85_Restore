uint64_t sub_1D9A4A684(char *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = sub_1D9A15C94(*a1);
  if (*(v8 + 16))
  {
    v11 = sub_1D99ED894(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_1D9A4A9E4(*(v8 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      v14 = v7[4];
      sub_1D9A4AA4C(v7, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      return v14;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D9A4A7C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D9B67DFC();
  v8[2] = a1;
  v5 = sub_1D9BE8434(sub_1D9A4AAAC, v8, v4);

  v6 = sub_1D9BC1C48(v5);

  *a2 = v6;
  *(a2 + 4) = BYTE4(v6) & 1;
  return result;
}

uint64_t sub_1D9A4A868@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  v11 = sub_1D9A15C94(*a1);
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v13 = sub_1D99ED894(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_5:
    v19 = 0;
    v18 = 1;
    goto LABEL_6;
  }

  sub_1D9A4A9E4(*(v10 + 56) + *(v7 + 72) * v13, v9, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
  v17 = *v9;
  result = sub_1D9A4AA4C(v9, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
  v18 = v17 < 1;
  v19 = v17 & ~(v17 >> 31);
LABEL_6:
  *a3 = v19;
  *(a3 + 4) = v18;
  return result;
}

uint64_t sub_1D9A4A9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A4AA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A4AAC8()
{
  sub_1D9A4D570(v0 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_config, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9A4D570(v0 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_groundingConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DomainSelectionProcessor()
{
  result = qword_1EDD32818;
  if (!qword_1EDD32818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A4ABE4()
{
  result = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(319);
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

uint64_t sub_1D9A4AC94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v278 = a5;
  v275 = a2;
  v274 = a1;
  v315 = sub_1D9C7D8DC();
  v8 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v295 = &v272 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v298 = &v272 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v281 = &v272 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v290 = &v272 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v272 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v307 = &v272 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v284 = &v272 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v292 = &v272 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v285 = &v272 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v279 = &v272 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v289 = &v272 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v286 = &v272 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v283 = &v272 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v291 = &v272 - v36;
  v302 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v311 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302);
  v301 = &v272 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v272 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v310 = &v272 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC8);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v300 = &v272 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v299 = (&v272 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v272 - v48);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v272 - v51);
  v273 = *a3;
  v53 = OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainConfigMap;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = sub_1D9A463EC(MEMORY[0x1E69E7CC0]);
  v282 = v53;
  *(v5 + v53) = v55;
  v56 = OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainConfigMapForGroundingModel;
  v57 = sub_1D9A463EC(v54);
  v294 = v5;
  v280 = v56;
  *(v5 + v56) = v57;
  v277 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  v58 = *(v277 + 20);
  v276 = a4;
  v59 = *(a4 + v58);
  swift_beginAccess();
  v60 = *(v59 + 16);
  v61 = v60 + 64;
  v62 = 1 << *(v60 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v60 + 64);
  v287 = (v62 + 63) >> 6;
  v308 = 0x80000001D9CA3A40;
  v313 = (v8 + 8);
  v314 = (v8 + 16);
  v288 = (v8 + 32);
  v297 = v60;

  v66 = 0;
  *&v67 = 136315138;
  v296 = v67;
  v312 = v40;
  v304 = v61;
  v293 = v18;
  v306 = v49;
  v305 = v52;
LABEL_8:
  if (v64)
  {
    v68 = v18;
    v69 = v66;
    goto LABEL_18;
  }

  if (v287 <= v66 + 1)
  {
    v70 = v66 + 1;
  }

  else
  {
    v70 = v287;
  }

  v71 = v70 - 1;
  while (1)
  {
    v69 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v69 >= v287)
    {
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
      (*(*(v115 - 8) + 56))(v49, 1, 1, v115);
      v64 = 0;
      v66 = v71;
      goto LABEL_19;
    }

    v64 = *(v61 + 8 * v69);
    ++v66;
    if (v64)
    {
      v68 = v18;
      v66 = v69;
LABEL_18:
      v72 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v73 = v72 | (v69 << 6);
      v74 = (*(v297 + 48) + 16 * v73);
      v75 = *v74;
      v76 = v74[1];
      v77 = v310;
      sub_1D99F4754(*(v297 + 56) + *(v311 + 72) * v73, v310);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
      v79 = *(v78 + 48);
      *v49 = v75;
      *(v49 + 1) = v76;
      sub_1D9A4D6A8(v77, v49 + v79, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      (*(*(v78 - 8) + 56))(v49, 0, 1, v78);

      v18 = v68;
      v40 = v312;
LABEL_19:
      sub_1D9A4D500(v49, v52);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
      v81 = *(v80 - 8);
      v82 = *(v81 + 48);
      if (v82(v52, 1, v80) == 1)
      {
        v306 = v82;
        v307 = (v81 + 48);

        v167 = *(v278 + *(v277 + 20));
        swift_beginAccess();
        v168 = *(v167 + 16);
        v169 = v168 + 64;
        v170 = 1 << *(v168 + 32);
        v171 = -1;
        if (v170 < 64)
        {
          v171 = ~(-1 << v170);
        }

        v172 = v171 & *(v168 + 64);
        v293 = (v170 + 63) >> 6;
        v309 = (v81 + 56);
        v304 = v168;

        v173 = 0;
        v174 = v301;
        v175 = v300;
        v305 = v80;
        v297 = v169;
        if (!v172)
        {
          goto LABEL_107;
        }

        while (1)
        {
LABEL_106:
          v176 = v173;
LABEL_115:
          v179 = __clz(__rbit64(v172));
          v172 &= v172 - 1;
          v180 = v179 | (v176 << 6);
          v181 = (*(v304 + 48) + 16 * v180);
          v183 = *v181;
          v182 = v181[1];
          v184 = v310;
          sub_1D99F4754(*(v304 + 56) + *(v311 + 72) * v180, v310);
          v185 = *(v80 + 48);
          *v175 = v183;
          v175[1] = v182;
          sub_1D9A4D6A8(v184, v175 + v185, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
          (*v309)(v175, 0, 1, v80);

LABEL_116:
          v186 = v299;
          sub_1D9A4D500(v175, v299);
          if (v306(v186, 1, v80) == 1)
          {

            v316 = v273;
            type metadata accessor for DomainSignalsExtractor();
            swift_allocObject();
            v270 = sub_1D9AF64E8(v274, &v316, v275);
            v271 = v294;
            *(v294 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainSignalsExtractor) = v270;
            sub_1D9A4D6A8(v276, v271 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_config, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
            sub_1D9A4D6A8(v278, v271 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_groundingConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
            return v271;
          }

          v188 = *v186;
          v187 = v186[1];
          sub_1D9A4D6A8(v186 + *(v80 + 48), v174, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

          v189 = v187;
          v190 = sub_1D9A163E0();
          v312 = v188;
          if (v190 == 27)
          {
            break;
          }

          LODWORD(v303) = v190;
          v198 = *(v174 + *(v302 + 20));
          v199 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
          swift_beginAccess();
          v200 = v289;
          sub_1D9A4D5D0(v198 + v199, v289);
          v201 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
          v202 = *(v201 - 8);
          v203 = *(v202 + 48);
          if (v203(v200, 1, v201) == 1)
          {
            sub_1D9A4D640(v200);
            if (qword_1EDD354B8 != -1)
            {
              swift_once();
            }

            v204 = byte_1EDD354C0;
            v169 = v297;
            v205 = v189;
            if (byte_1EDD354C0 != 1)
            {
              goto LABEL_177;
            }

            v206 = [objc_opt_self() mainBundle];
            v207 = [v206 bundleIdentifier];

            if (v207)
            {
              v208 = sub_1D9C7DC7C();
              v210 = v209;

              if (v208 == 0xD00000000000002BLL && v308 == v210)
              {

LABEL_169:
                v245 = &off_1ECB51BA8;
                if (qword_1ECB50988 != -1)
                {
                  swift_once();
                  v245 = &off_1ECB51BA8;
                }

LABEL_173:
                v246 = *(*v245 + 32);

                v247 = sub_1D9C7DC4C();
                LODWORD(v246) = [v246 BOOLForKey_];

                if (v246)
                {
                  if (qword_1EDD2C988 != -1)
                  {
                    swift_once();
                  }

                  v248 = v315;
                  v249 = __swift_project_value_buffer(v315, qword_1EDD2C990);
                  v250 = *v314;
                  (*v314)(v290, v249, v248);
                  goto LABEL_180;
                }

LABEL_177:
                if (qword_1EDD354D0 != -1)
                {
                  swift_once();
                }

                v251 = v315;
                v252 = __swift_project_value_buffer(v315, qword_1EDD354D8);
                v250 = *v314;
                (*v314)(v290, v252, v251);
                if ((v204 & 1) == 0)
                {
                  goto LABEL_191;
                }

LABEL_180:
                v253 = [objc_opt_self() mainBundle];
                v254 = [v253 bundleIdentifier];

                if (v254)
                {
                  v255 = sub_1D9C7DC7C();
                  v257 = v256;

                  if (v255 == 0xD00000000000002BLL && v308 == v257)
                  {

LABEL_185:
                    v259 = &off_1ECB51BA8;
                    if (qword_1ECB50988 != -1)
                    {
                      swift_once();
                      v259 = &off_1ECB51BA8;
                    }

LABEL_189:
                    v260 = *(*v259 + 32);

                    v261 = sub_1D9C7DC4C();
                    LODWORD(v260) = [v260 BOOLForKey_];

                    if (v260)
                    {
                      v262 = v281;
                      (*v288)(v281, v290, v315);
LABEL_194:

                      v265 = sub_1D9C7D8BC();
                      v266 = sub_1D9C7E09C();

                      if (os_log_type_enabled(v265, v266))
                      {
                        v267 = swift_slowAlloc();
                        v268 = swift_slowAlloc();
                        v316 = v268;
                        *v267 = v296;
                        v269 = sub_1D9A0E224(v312, v205, &v316);

                        *(v267 + 4) = v269;
                        _os_log_impl(&dword_1D9962000, v265, v266, "No domain selection config for domain %s.", v267, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0Tm(v268);
                        MEMORY[0x1DA7405F0](v268, -1, -1);
                        MEMORY[0x1DA7405F0](v267, -1, -1);
                      }

                      else
                      {
                      }

                      (*v313)(v262, v315);
                      goto LABEL_105;
                    }

LABEL_191:
                    if (qword_1EDD354D0 != -1)
                    {
                      swift_once();
                    }

                    v263 = v315;
                    v264 = __swift_project_value_buffer(v315, qword_1EDD354D8);
                    v262 = v281;
                    v250(v281, v264, v263);
                    (*v313)(v290, v263);
                    goto LABEL_194;
                  }

                  v258 = sub_1D9C7E7DC();

                  if (v258)
                  {
                    goto LABEL_185;
                  }
                }

                v259 = &qword_1EDD355A8;
                if (qword_1EDD355A0 != -1)
                {
                  swift_once();
                  v259 = &qword_1EDD355A8;
                }

                goto LABEL_189;
              }

              v244 = sub_1D9C7E7DC();

              if (v244)
              {
                goto LABEL_169;
              }
            }

            v245 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v245 = &qword_1EDD355A8;
            }

            goto LABEL_173;
          }

          sub_1D9A4D640(v200);
          v211 = v198 + v199;
          v212 = v285;
          sub_1D9A4D5D0(v211, v285);
          if (v203(v212, 1, v201) == 1)
          {
            v213 = v279;
            *v279 = 0;
            v214 = MEMORY[0x1E69E7CC0];
            *(v213 + 1) = MEMORY[0x1E69E7CC0];
            *(v213 + 2) = v214;
            *(v213 + 6) = 0;
            *(v213 + 4) = 0;
            v213[40] = 1;
            sub_1D9C7D3BC();
            v215 = *(v201 + 40);
            v216 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
            (*(*(v216 - 8) + 56))(&v213[v215], 1, 1, v216);
            v217 = v203(v212, 1, v201);
            v175 = v300;
            if (v217 != 1)
            {
              sub_1D9A4D640(v285);
            }
          }

          else
          {
            v213 = v279;
            sub_1D9A4D6A8(v212, v279, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
            v175 = v300;
          }

          (*(v202 + 56))(v213, 0, 1, v201);
          swift_beginAccess();
          sub_1D9AC7BBC(v213, v303);
          swift_endAccess();
          v174 = v301;
          result = sub_1D9A4D570(v301, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
          v80 = v305;
          v169 = v297;
          if (!v172)
          {
LABEL_107:
            if (v293 <= v173 + 1)
            {
              v177 = v173 + 1;
            }

            else
            {
              v177 = v293;
            }

            v178 = v177 - 1;
            while (1)
            {
              v176 = v173 + 1;
              if (__OFADD__(v173, 1))
              {
                goto LABEL_200;
              }

              if (v176 >= v293)
              {
                (*v309)(v175, 1, 1, v80);
                v172 = 0;
                v173 = v178;
                goto LABEL_116;
              }

              v172 = *(v169 + 8 * v176);
              ++v173;
              if (v172)
              {
                v173 = v176;
                goto LABEL_115;
              }
            }
          }
        }

        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v191 = byte_1EDD354C0;
        v192 = v187;
        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_149;
        }

        v193 = [objc_opt_self() mainBundle];
        v194 = [v193 bundleIdentifier];

        if (v194)
        {
          v195 = sub_1D9C7DC7C();
          v197 = v196;

          if (v195 == 0xD00000000000002BLL && v308 == v197)
          {

LABEL_141:
            v219 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v219 = &off_1ECB51BA8;
            }

LABEL_145:
            v220 = *(*v219 + 32);

            v221 = sub_1D9C7DC4C();
            LODWORD(v220) = [v220 BOOLForKey_];

            if (v220)
            {
              if (qword_1EDD2C988 != -1)
              {
                swift_once();
              }

              v222 = v315;
              v223 = __swift_project_value_buffer(v315, qword_1EDD2C990);
              v224 = *v314;
              (*v314)(v298, v223, v222);
              goto LABEL_152;
            }

LABEL_149:
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
            }

            v225 = v315;
            v226 = __swift_project_value_buffer(v315, qword_1EDD354D8);
            v224 = *v314;
            (*v314)(v298, v226, v225);
            if ((v191 & 1) == 0)
            {
LABEL_163:
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
              }

              v237 = v315;
              v238 = __swift_project_value_buffer(v315, qword_1EDD354D8);
              v236 = v295;
              v224(v295, v238, v237);
              (*v313)(v298, v237);
              goto LABEL_166;
            }

LABEL_152:
            v227 = [objc_opt_self() mainBundle];
            v228 = [v227 bundleIdentifier];

            if (v228)
            {
              v229 = sub_1D9C7DC7C();
              v231 = v230;

              if (v229 == 0xD00000000000002BLL && v308 == v231)
              {

LABEL_157:
                v233 = &off_1ECB51BA8;
                if (qword_1ECB50988 != -1)
                {
                  swift_once();
                  v233 = &off_1ECB51BA8;
                }

                goto LABEL_161;
              }

              v232 = sub_1D9C7E7DC();

              if (v232)
              {
                goto LABEL_157;
              }
            }

            v233 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v233 = &qword_1EDD355A8;
            }

LABEL_161:
            v234 = *(*v233 + 32);

            v235 = sub_1D9C7DC4C();
            LODWORD(v234) = [v234 BOOLForKey_];

            if (!v234)
            {
              goto LABEL_163;
            }

            v236 = v295;
            (*v288)(v295, v298, v315);
LABEL_166:

            v239 = sub_1D9C7D8BC();
            v240 = sub_1D9C7E09C();

            if (os_log_type_enabled(v239, v240))
            {
              v241 = swift_slowAlloc();
              v242 = swift_slowAlloc();
              v316 = v242;
              *v241 = v296;
              v243 = sub_1D9A0E224(v312, v192, &v316);

              *(v241 + 4) = v243;
              _os_log_impl(&dword_1D9962000, v239, v240, "Failed to convert visual domain %s.", v241, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v242);
              MEMORY[0x1DA7405F0](v242, -1, -1);
              MEMORY[0x1DA7405F0](v241, -1, -1);

              (*v313)(v295, v315);
            }

            else
            {

              (*v313)(v236, v315);
            }

LABEL_105:
            v174 = v301;
            result = sub_1D9A4D570(v301, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
            v175 = v300;
            v80 = v305;
            if (!v172)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          }

          v218 = sub_1D9C7E7DC();

          if (v218)
          {
            goto LABEL_141;
          }
        }

        v219 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v219 = &qword_1EDD355A8;
        }

        goto LABEL_145;
      }

      v83 = *v52;
      v84 = *(v80 + 48);
      v85 = v52[1];
      sub_1D9A4D6A8(v52 + v84, v40, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

      v86 = sub_1D9A163E0();
      v309 = v83;
      if (v86 != 27)
      {
        v93 = v86;
        v303 = v85;
        v94 = *&v40[*(v302 + 20)];
        v95 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
        swift_beginAccess();
        v96 = v291;
        sub_1D9A4D5D0(v94 + v95, v291);
        v97 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
        v98 = *(v97 - 8);
        v99 = *(v98 + 48);
        if (v99(v96, 1, v97) != 1)
        {

          sub_1D9A4D640(v96);
          v107 = v94 + v95;
          v108 = v286;
          sub_1D9A4D5D0(v107, v286);
          if (v99(v108, 1, v97) == 1)
          {
            v109 = v283;
            *v283 = 0;
            v110 = MEMORY[0x1E69E7CC0];
            *(v109 + 1) = MEMORY[0x1E69E7CC0];
            *(v109 + 2) = v110;
            *(v109 + 6) = 0;
            *(v109 + 4) = 0;
            v109[40] = 1;
            sub_1D9C7D3BC();
            v111 = *(v97 + 40);
            v112 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
            (*(*(v112 - 8) + 56))(&v109[v111], 1, 1, v112);
            v113 = v99(v108, 1, v97);
            v114 = v109;
            v18 = v293;
            if (v113 != 1)
            {
              sub_1D9A4D640(v286);
            }
          }

          else
          {
            v114 = v283;
            sub_1D9A4D6A8(v108, v283, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
            v18 = v293;
          }

          (*(v98 + 56))(v114, 0, 1, v97);
          swift_beginAccess();
          sub_1D9AC7BBC(v114, v93);
          swift_endAccess();
          goto LABEL_6;
        }

        sub_1D9A4D640(v96);
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v100 = byte_1EDD354C0;
        v18 = v293;
        v101 = v303;
        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_81;
        }

        v102 = [objc_opt_self() mainBundle];
        v103 = [v102 bundleIdentifier];

        if (v103)
        {
          v104 = sub_1D9C7DC7C();
          v106 = v105;

          if (v104 == 0xD00000000000002BLL && v308 == v106)
          {

            goto LABEL_73;
          }

          v141 = sub_1D9C7E7DC();

          if (v141)
          {
LABEL_73:
            v142 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v142 = &off_1ECB51BA8;
            }

            goto LABEL_77;
          }
        }

        v142 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v142 = &qword_1EDD355A8;
        }

LABEL_77:
        v143 = *(*v142 + 32);

        v144 = sub_1D9C7DC4C();
        LODWORD(v143) = [v143 BOOLForKey_];

        if (v143)
        {
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
          }

          v145 = v315;
          v146 = __swift_project_value_buffer(v315, qword_1EDD2C990);
          v147 = *v314;
          (*v314)(v292, v146, v145);
          goto LABEL_84;
        }

LABEL_81:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v148 = v315;
        v149 = __swift_project_value_buffer(v315, qword_1EDD354D8);
        v147 = *v314;
        (*v314)(v292, v149, v148);
        if ((v100 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_84:
        v150 = [objc_opt_self() mainBundle];
        v151 = [v150 bundleIdentifier];

        if (v151)
        {
          v152 = sub_1D9C7DC7C();
          v154 = v153;

          if (v152 == 0xD00000000000002BLL && v308 == v154)
          {

            goto LABEL_89;
          }

          v155 = sub_1D9C7E7DC();

          if (v155)
          {
LABEL_89:
            v156 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v156 = &off_1ECB51BA8;
            }

            goto LABEL_93;
          }
        }

        v156 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v156 = &qword_1EDD355A8;
        }

LABEL_93:
        v157 = *(*v156 + 32);

        v158 = sub_1D9C7DC4C();
        LODWORD(v157) = [v157 BOOLForKey_];

        if (v157)
        {
          v159 = v284;
          (*v288)(v284, v292, v315);
LABEL_98:

          v162 = sub_1D9C7D8BC();
          v163 = sub_1D9C7E09C();

          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v317 = v165;
            *v164 = v296;
            v166 = sub_1D9A0E224(v309, v101, &v317);

            *(v164 + 4) = v166;
            _os_log_impl(&dword_1D9962000, v162, v163, "No domain selection config for domain %s.", v164, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v165);
            MEMORY[0x1DA7405F0](v165, -1, -1);
            MEMORY[0x1DA7405F0](v164, -1, -1);
          }

          else
          {
          }

          (*v313)(v159, v315);
LABEL_6:
          v40 = v312;
          goto LABEL_7;
        }

LABEL_95:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v160 = v315;
        v161 = __swift_project_value_buffer(v315, qword_1EDD354D8);
        v159 = v284;
        v147(v284, v161, v160);
        (*v313)(v292, v160);
        goto LABEL_98;
      }

      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v87 = byte_1EDD354C0;
      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_51;
      }

      v88 = [objc_opt_self() mainBundle];
      v89 = [v88 bundleIdentifier];

      if (!v89)
      {
        goto LABEL_45;
      }

      v90 = sub_1D9C7DC7C();
      v92 = v91;

      if (v90 != 0xD00000000000002BLL || v308 != v92)
      {
        v116 = sub_1D9C7E7DC();

        if (v116)
        {
          goto LABEL_43;
        }

LABEL_45:
        v117 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v117 = &qword_1EDD355A8;
        }

        goto LABEL_47;
      }

LABEL_43:
      v117 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v117 = &off_1ECB51BA8;
      }

LABEL_47:
      v118 = *(*v117 + 32);

      v119 = sub_1D9C7DC4C();
      LODWORD(v118) = [v118 BOOLForKey_];

      if (v118)
      {
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
        }

        v120 = v315;
        v121 = __swift_project_value_buffer(v315, qword_1EDD2C990);
        v122 = *v314;
        (*v314)(v307, v121, v120);
        goto LABEL_54;
      }

LABEL_51:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v123 = v315;
      v124 = __swift_project_value_buffer(v315, qword_1EDD354D8);
      v122 = *v314;
      (*v314)(v307, v124, v123);
      if ((v87 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_54:
      v125 = [objc_opt_self() mainBundle];
      v126 = [v125 bundleIdentifier];

      if (!v126)
      {
        goto LABEL_61;
      }

      v127 = sub_1D9C7DC7C();
      v129 = v128;

      if (v127 != 0xD00000000000002BLL || v308 != v129)
      {
        v130 = sub_1D9C7E7DC();

        if (v130)
        {
          goto LABEL_59;
        }

LABEL_61:
        v131 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v131 = &qword_1EDD355A8;
        }

        goto LABEL_63;
      }

LABEL_59:
      v131 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v131 = &off_1ECB51BA8;
      }

LABEL_63:
      v132 = *(*v131 + 32);

      v133 = sub_1D9C7DC4C();
      LODWORD(v132) = [v132 BOOLForKey_];

      if (v132)
      {
        (*v288)(v18, v307, v315);
        goto LABEL_68;
      }

LABEL_65:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v134 = v315;
      v135 = __swift_project_value_buffer(v315, qword_1EDD354D8);
      v122(v18, v135, v134);
      (*v313)(v307, v134);
LABEL_68:
      v40 = v312;

      v136 = sub_1D9C7D8BC();
      v137 = sub_1D9C7E09C();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v317 = v139;
        *v138 = v296;
        v140 = sub_1D9A0E224(v309, v85, &v317);

        *(v138 + 4) = v140;
        _os_log_impl(&dword_1D9962000, v136, v137, "Failed to convert visual domain %s.", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v139);
        MEMORY[0x1DA7405F0](v139, -1, -1);
        MEMORY[0x1DA7405F0](v138, -1, -1);
      }

      else
      {
      }

      (*v313)(v18, v315);
LABEL_7:
      result = sub_1D9A4D570(v40, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v49 = v306;
      v52 = v305;
      v61 = v304;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
  return result;
}

uint64_t sub_1D9A4D500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A4D570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A4D5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A4D640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9A4D6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A4D710(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 16);
  if (!v41)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(v3 + 80);
  v39 = *(v3 + 72);
  v40 = a1 + ((v8 + 32) & ~v8);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_1D99B1BBC(v40 + v39 * v6, v5);
    v9 = *(v5 + 6);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v9 + 32;
      v13 = v10 - 1;
      v14 = MEMORY[0x1E69E7CC0];
      do
      {
        v15 = (v12 + 160 * v11);
        v16 = v11;
        while (1)
        {
          if (v16 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v17 = v15[1];
          v46 = *v15;
          v47 = v17;
          v18 = v15[2];
          v19 = v15[3];
          v20 = v15[5];
          v50 = v15[4];
          v51 = v20;
          v48 = v18;
          v49 = v19;
          v21 = v15[6];
          v22 = v15[7];
          v23 = v15[8];
          *(v54 + 13) = *(v15 + 141);
          v53 = v22;
          v54[0] = v23;
          v52 = v21;
          v11 = v16 + 1;
          if (BYTE13(v22))
          {
            break;
          }

          v15 += 10;
          ++v16;
          if (v10 == v11)
          {
            goto LABEL_17;
          }
        }

        v43 = v13;
        v44 = v12;
        sub_1D99AE054(&v46, &v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v14;
        v42 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D99FE2D8(0, *(v14 + 16) + 1, 1);
          v14 = v55;
        }

        v13 = v43;
        v12 = v44;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D99FE2D8((v25 > 1), v26 + 1, 1);
          v13 = v43;
          v12 = v44;
          v14 = v55;
        }

        *(v14 + 16) = v26 + 1;
        v27 = (v14 + 160 * v26);
        v28 = v47;
        v27[2] = v46;
        v27[3] = v28;
        v29 = v48;
        v30 = v49;
        v31 = v51;
        v27[6] = v50;
        v27[7] = v31;
        v27[4] = v29;
        v27[5] = v30;
        v32 = v52;
        v33 = v53;
        v34 = v54[0];
        *(v27 + 173) = *(v54 + 13);
        v27[9] = v33;
        v27[10] = v34;
        v27[8] = v32;
        v5 = v38;
        v7 = v42;
      }

      while (v13 != v16);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

LABEL_17:
    *&v46 = v14;

    sub_1D9BE9B70(&v46);
    if (v7)
    {
      break;
    }

    ++v6;

    sub_1D99B1C88(v5);
    v35 = *(v46 + 16);

    result = v35 != 0;
    if (v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = v6 == v41;
    }

    if (v37)
    {
      return result;
    }
  }

LABEL_26:

  __break(1u);
  return result;
}

void sub_1D9A4D9D4(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v5);
  v44[0] = 0xD00000000000001DLL;
  v44[1] = 0x80000001D9CA47C0;
  v44[2] = "NSFW Model Preprocess Input";
  v44[3] = 27;
  v45 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  sub_1D9AFD4B8(v44, a3);

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 24))(v6, v7);
  sub_1D9AFCCA4();
  v42[0] = 0xD00000000000001DLL;
  v42[1] = 0x80000001D9CA47C0;
  v42[2] = "NSFW Model Execution";
  v42[3] = 20;
  v43 = 2;
  swift_allocObject();

  v9 = sub_1D9AFD4B8(v42, a3);

  v38 = v8;
  v10 = [a2 generateClassificationScoresForPixelBuffer_];
  sub_1D99CC024();
  v11 = sub_1D9C7DB4C();

  v37 = v9;
  sub_1D9AFCCA4();
  v12 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v41 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v19 = MEMORY[0x1E69E7CC0];
  __asm { FMOV            V0.2D, #1.0 }

  v40 = _Q0;
  if ((v16 & v13) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v25 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v25 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v25);
    ++v12;
    if (v17)
    {
      v12 = v25;
      do
      {
LABEL_8:
        v26 = __clz(__rbit64(v17)) | (v12 << 6);
        v27 = (*(v41 + 48) + 16 * v26);
        v28 = *v27;
        v29 = v27[1];
        v30 = *(*(v41 + 56) + 8 * v26);

        v31 = v30;
        [v31 floatValue];
        v33 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D9AF92E0(0, *(v19 + 2) + 1, 1, v19);
        }

        v35 = *(v19 + 2);
        v34 = *(v19 + 3);
        if (v35 >= v34 >> 1)
        {
          v19 = sub_1D9AF92E0((v34 > 1), v35 + 1, 1, v19);
        }

        v17 &= v17 - 1;

        *(v19 + 2) = v35 + 1;
        v36 = &v19[56 * v35];
        *(v36 + 4) = v28;
        *(v36 + 5) = v29;
        *(v36 + 12) = v33;
        *(v36 + 7) = 0;
        *(v36 + 8) = 0;
        *(v36 + 72) = v40;
      }

      while (v17);
    }
  }

  __break(1u);
}

char *sub_1D9A4DE30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v4);
  v8 = *(a1 + 16);
  if (v8)
  {
    v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *(a2 + 16);
    v51 = 0x80000001D9CA3A40;
    v53 = (v5 + 8);
    v54 = (v5 + 16);
    v58 = MEMORY[0x1E69E7CC0];
    v10 = a1 + 40;
    *&v7 = 136315394;
    v52 = v7;
    v55 = v9;
    v57 = v4;
    while (1)
    {
      if (*(v9 + 16))
      {
        v12 = *(v10 - 8);
        v11 = *v10;
        v13 = *(v10 + 8);
        v14 = *(v10 + 16);
        v59 = *(v10 + 32);
        v60 = v14;
        swift_bridgeObjectRetain_n();
        v15 = sub_1D99ED894(v12, v11);
        v17 = v16;

        if (v17)
        {
          v18 = *(v9 + 56) + 16 * v15;
          v19 = *v18;
          v20 = *(v18 + 8);

          v21 = sub_1D9C7DC4C();

          v22 = v20 ? v19 : 2;
          v23 = [objc_opt_self() isSensitiveLabelScore:v21 confidenceScore:v22 classificationMode:v13];

          if (v23)
          {
            if (qword_1EDD354B8 != -1)
            {
              swift_once();
            }

            if (byte_1EDD354C0 != 1)
            {
              goto LABEL_26;
            }

            v24 = [objc_opt_self() mainBundle];
            v25 = [v24 bundleIdentifier];

            if (v25)
            {
              v26 = sub_1D9C7DC7C();
              v28 = v27;

              if (v26 == 0xD00000000000002BLL && v51 == v28)
              {

LABEL_19:
                v30 = &off_1ECB51BA8;
                if (qword_1ECB50988 != -1)
                {
                  swift_once();
                  v30 = &off_1ECB51BA8;
                }

LABEL_23:
                v31 = *(*v30 + 32);

                v32 = sub_1D9C7DC4C();
                LODWORD(v31) = [v31 BOOLForKey_];

                if (v31)
                {
                  v33 = qword_1EDD2C990;
                  if (qword_1EDD2C988 != -1)
                  {
                    swift_once();
                    v33 = qword_1EDD2C990;
                  }

LABEL_28:
                  v34 = v57;
                  v35 = __swift_project_value_buffer(v57, v33);
                  v36 = v56;
                  (*v54)(v56, v35, v34);

                  v37 = sub_1D9C7D8BC();
                  v38 = sub_1D9C7E09C();

                  if (os_log_type_enabled(v37, v38))
                  {
                    v39 = swift_slowAlloc();
                    v40 = swift_slowAlloc();
                    v61 = v40;
                    *v39 = v52;

                    v41 = sub_1D9A0E224(v12, v11, &v61);

                    *(v39 + 4) = v41;
                    *(v39 + 12) = 2048;
                    *(v39 + 14) = v13;
                    _os_log_impl(&dword_1D9962000, v37, v38, "Query image contains sensitive label %s with score %f", v39, 0x16u);
                    __swift_destroy_boxed_opaque_existential_0Tm(v40);
                    MEMORY[0x1DA7405F0](v40, -1, -1);
                    v42 = v39;
                    v34 = v57;
                    MEMORY[0x1DA7405F0](v42, -1, -1);
                  }

                  (*v53)(v36, v34);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v9 = v55;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v58 = sub_1D9AF92E0(0, *(v58 + 2) + 1, 1, v58);
                  }

                  v45 = *(v58 + 2);
                  v44 = *(v58 + 3);
                  if (v45 >= v44 >> 1)
                  {
                    v58 = sub_1D9AF92E0((v44 > 1), v45 + 1, 1, v58);
                  }

                  v46 = v58;
                  *(v58 + 2) = v45 + 1;
                  v47 = &v46[56 * v45];
                  *(v47 + 4) = v12;
                  *(v47 + 5) = v11;
                  *(v47 + 12) = v13;
                  v48 = v59;
                  *(v47 + 56) = v60;
                  *(v47 + 72) = v48;
                  goto LABEL_4;
                }

LABEL_26:
                v33 = qword_1EDD354D8;
                if (qword_1EDD354D0 != -1)
                {
                  swift_once();
                  v33 = qword_1EDD354D8;
                }

                goto LABEL_28;
              }

              v29 = sub_1D9C7E7DC();

              if (v29)
              {
                goto LABEL_19;
              }
            }

            v30 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v30 = &qword_1EDD355A8;
            }

            goto LABEL_23;
          }
        }
      }

LABEL_4:
      v10 += 56;
      if (!--v8)
      {
        return v58;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9A4E438()
{
  v1 = sub_1D9C7D3FC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D9C7DCDC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (sub_1D9C7B72C() == 0x7478746270 && v3 == 0xE500000000000000)
  {

LABEL_5:
    v5 = [objc_opt_self() defaultManager];
    sub_1D9C7B73C();
    v6 = sub_1D9C7DC4C();

    v7 = [v5 contentsAtPath_];

    if (v7)
    {
      v8 = sub_1D9C7B87C();
      v10 = v9;

      sub_1D9C7DCBC();
      sub_1D9C7DC9C();
      type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
      sub_1D9A4E970(&qword_1EDD2FFE0, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
      sub_1D9C7D69C();
      v11 = v8;
      v12 = v10;
      return sub_1D99A5748(v11, v12);
    }

    sub_1D9C7E40C();

    sub_1D9C7B80C();
    sub_1D9A4E970(&qword_1ECB52420, MEMORY[0x1E6968FB0]);
    v14 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v14);

    v16 = 0x80000001D9CA6210;
    v15 = 0xD00000000000001CLL;
    v17 = 7;
    goto LABEL_9;
  }

  v4 = sub_1D9C7E7DC();

  if (v4)
  {
    goto LABEL_5;
  }

  if (sub_1D9C7B72C() == 1852797802 && v19 == 0xE400000000000000)
  {
  }

  else
  {
    v20 = sub_1D9C7E7DC();

    if ((v20 & 1) == 0)
    {
      sub_1D9C7E40C();

      v24 = sub_1D9C7B72C();
      MEMORY[0x1DA73DF90](v24);

      v16 = 0x80000001D9CA61E0;
      v15 = 0xD00000000000002ELL;
      v17 = 5;
LABEL_9:
      sub_1D99A182C();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = v16;
      *(v18 + 16) = v17;
      return swift_willThrow();
    }
  }

  result = sub_1D9C7B81C();
  if (!v0)
  {
    v22 = result;
    v23 = v21;
    sub_1D9C7DCBC();
    sub_1D9C7DC9C();
    type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
    sub_1D9C7D3EC();
    sub_1D9A4E970(&qword_1EDD2FFE0, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
    sub_1D9C7D61C();
    v11 = v22;
    v12 = v23;
    return sub_1D99A5748(v11, v12);
  }

  return result;
}

BOOL sub_1D9A4E8F8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = 0;
  if (a1 && a3)
  {
    if (a2)
    {
      a1 = qword_1D9C8BE30[a1 - 1];
    }

    if (a4)
    {
      a3 = qword_1D9C8BE30[a3 - 1];
    }

    return a1 == a3;
  }

  return v4;
}

BOOL sub_1D9A4E934(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = 10 * a1;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = 10 * a3;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  v6 = v4 == v5;
  if (!a3)
  {
    v6 = 0;
  }

  return a1 && v6;
}

uint64_t sub_1D9A4E970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9A4E9B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v118 = a3;
  v113 = a4;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v109 - v11;
  v140 = _s14DetectedResultVMa();
  v117 = *(v140 - 1);
  MEMORY[0x1EEE9AC00](v140);
  v130 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v109 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v109 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v109 - v22;
  v24 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v122 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = 0;
  result = 0;
  v28 = 0;
  v29 = *a2;
  v30 = a2[4];
  v110 = a2[3];
  v111 = v30;
  v31 = *(a2 + 5);
  v115 = v31;
  v112 = a2[7];
  v114 = v29;
  if (v29 != 1)
  {
    v28 = a2[1];
    v116 = a2[2];
  }

  if (*v118 == 1)
  {
    v32 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v33 = result;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    v136 = v33;
    if (v28)
    {
      v32 = v28;
    }

    v141 = v32;
    v121 = *(a1 + 16);
    if (v121)
    {
      v34 = 0;
      v120 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v135 = (v7 + 8);
      v119 = *(v25 + 72);
      *&v31 = 136315394;
      v126 = v31;
      v129 = v6;
      v128 = v9;
      v35 = v131;
      v127 = v15;
      v36 = 0;
      v37 = v122;
      v132 = v20;
      do
      {
        sub_1D99CC070(v120 + v119 * v36, v37, type metadata accessor for VisualUnderstanding.ImageRegion);
        v38 = *(v37 + 104);
        v123 = v36;
        if ((v38 & 1) == 0)
        {
          v39 = *(v37 + 56);
          v40 = *(v39 + 16);
          if (v40)
          {
            v41 = *(v118 + 24);
            v138 = *(v118 + 32);
            v139 = v41;
            v42 = v39 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
            v137 = *(v117 + 72);
            do
            {
              v144 = v40;
              v43 = sub_1D99CC070(v42, v23, _s14DetectedResultVMa);
              v44 = v140[6];
              v45 = &v23[v140[7]];
              v46 = *&v23[v140[8]];
              v47 = *(v45 + 3);
              v142 = *(v45 + 2);
              v48 = *&v23[v44];
              v49 = *&v23[v44 + 8];
              v50 = *&v23[v44 + 16];
              v51 = *&v23[v44 + 24];
              MEMORY[0x1EEE9AC00](v43);
              *(&v109 - 2) = v23;

              isUniquelyReferenced_nonNull_native = sub_1D9BC1698(sub_1D9A4F714, (&v109 - 4), v139);
              v143 = v47;
              if (isUniquelyReferenced_nonNull_native)
              {
                v134 = v34;
                static Logger.argos.getter(v35);
                sub_1D99CC070(v23, v20, _s14DetectedResultVMa);
                v53 = v133;
                sub_1D99CC070(v23, v133, _s14DetectedResultVMa);
                v54 = sub_1D9C7D8BC();
                v55 = v20;
                v56 = sub_1D9C7E09C();
                if (os_log_type_enabled(v54, v56))
                {
                  v57 = swift_slowAlloc();
                  v125 = swift_slowAlloc();
                  v147 = v125;
                  *v57 = v126;
                  v58 = v140;
                  v59 = v55 + v140[7];
                  v60 = *(v59 + 16);
                  v61 = *(v59 + 24);

                  sub_1D9A4F6B4(v55, _s14DetectedResultVMa);
                  v62 = sub_1D9A0E224(v60, v61, &v147);

                  *(v57 + 4) = v62;
                  *(v57 + 12) = 2080;
                  v63 = v58[6];
                  v64 = v133;
                  v65 = (v133 + v63);
                  v66 = v65[1];
                  v145 = *v65;
                  v146 = v66;
                  v67 = NormalizedRect.loggingDescription.getter();
                  v69 = v68;
                  v35 = v131;
                  sub_1D9A4F6B4(v64, _s14DetectedResultVMa);
                  v70 = sub_1D9A0E224(v67, v69, &v147);
                  v9 = v128;

                  *(v57 + 14) = v70;
                  _os_log_impl(&dword_1D9962000, v54, v56, "Annotated face kg id %s to region %s", v57, 0x16u);
                  v71 = v125;
                  swift_arrayDestroy();
                  MEMORY[0x1DA7405F0](v71, -1, -1);
                  v72 = v57;
                  v6 = v129;
                  MEMORY[0x1DA7405F0](v72, -1, -1);

                  (*v135)(v35, v6);
                  v20 = v132;
                }

                else
                {

                  sub_1D9A4F6B4(v53, _s14DetectedResultVMa);
                  sub_1D9A4F6B4(v55, _s14DetectedResultVMa);
                  (*v135)(v35, v6);
                  v20 = v55;
                }

                v73 = v143;

                v74 = v136;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = sub_1D9AF92E0(0, *(v74 + 16) + 1, 1, v74);
                  v74 = isUniquelyReferenced_nonNull_native;
                }

                v76 = *(v74 + 16);
                v75 = *(v74 + 24);
                if (v76 >= v75 >> 1)
                {
                  isUniquelyReferenced_nonNull_native = sub_1D9AF92E0((v75 > 1), v76 + 1, 1, v74);
                  v74 = isUniquelyReferenced_nonNull_native;
                }

                *(v74 + 16) = v76 + 1;
                v136 = v74;
                v77 = v74 + 56 * v76;
                *(v77 + 32) = v142;
                *(v77 + 40) = v73;
                *(v77 + 48) = v46;
                *(v77 + 56) = v48;
                *(v77 + 64) = v49;
                *(v77 + 72) = v50;
                *(v77 + 80) = v51;
                v34 = v134;
              }

              MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
              *(&v109 - 2) = v23;
              if (sub_1D9BC1698(sub_1D9A4F694, (&v109 - 4), v138))
              {
                v134 = v34;
                static Logger.argos.getter(v9);
                v78 = v127;
                sub_1D99CC070(v23, v127, _s14DetectedResultVMa);
                v79 = v130;
                sub_1D99CC070(v23, v130, _s14DetectedResultVMa);
                v80 = sub_1D9C7D8BC();
                v81 = sub_1D9C7E09C();
                if (os_log_type_enabled(v80, v81))
                {
                  v82 = swift_slowAlloc();
                  v125 = swift_slowAlloc();
                  v147 = v125;
                  *v82 = v126;
                  v124 = v81;
                  v83 = v140;
                  v84 = v78 + v140[7];
                  v85 = *(v84 + 16);
                  v86 = *(v84 + 24);

                  sub_1D9A4F6B4(v78, _s14DetectedResultVMa);
                  v87 = sub_1D9A0E224(v85, v86, &v147);

                  *(v82 + 4) = v87;
                  *(v82 + 12) = 2080;
                  v88 = (v79 + v83[6]);
                  v89 = v88[1];
                  v145 = *v88;
                  v146 = v89;
                  v90 = NormalizedRect.loggingDescription.getter();
                  v92 = v91;
                  v9 = v128;
                  sub_1D9A4F6B4(v79, _s14DetectedResultVMa);
                  v93 = sub_1D9A0E224(v90, v92, &v147);
                  v35 = v131;

                  *(v82 + 14) = v93;
                  _os_log_impl(&dword_1D9962000, v80, v124, "Annotated human kg id %s to region %s", v82, 0x16u);
                  v94 = v125;
                  swift_arrayDestroy();
                  MEMORY[0x1DA7405F0](v94, -1, -1);
                  v95 = v82;
                  v6 = v129;
                  MEMORY[0x1DA7405F0](v95, -1, -1);
                }

                else
                {

                  sub_1D9A4F6B4(v79, _s14DetectedResultVMa);
                  sub_1D9A4F6B4(v78, _s14DetectedResultVMa);
                }

                (*v135)(v9, v6);
                v96 = swift_isUniquelyReferenced_nonNull_native();
                v20 = v132;
                v97 = v143;
                if ((v96 & 1) == 0)
                {
                  v141 = sub_1D9AF92E0(0, *(v141 + 2) + 1, 1, v141);
                }

                v99 = *(v141 + 2);
                v98 = *(v141 + 3);
                if (v99 >= v98 >> 1)
                {
                  v141 = sub_1D9AF92E0((v98 > 1), v99 + 1, 1, v141);
                }

                v100 = v141;
                *(v141 + 2) = v99 + 1;
                v101 = &v100[56 * v99];
                *(v101 + 4) = v142;
                *(v101 + 5) = v97;
                *(v101 + 12) = v46;
                *(v101 + 7) = v48;
                *(v101 + 8) = v49;
                *(v101 + 9) = v50;
                *(v101 + 10) = v51;
                v34 = v134;
              }

              else
              {
              }

              sub_1D9A4F6B4(v23, _s14DetectedResultVMa);
              v42 += v137;
              v40 = v144 - 1;
            }

            while (v144 != 1);
          }
        }

        v36 = v123 + 1;
        v37 = v122;
        result = sub_1D9A4F6B4(v122, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      while (v36 != v121);
    }
  }

  else
  {

    v141 = 0;
    v136 = 0;
  }

  v102 = v112;
  v103 = v111;
  v104 = v110;
  if (v114 == 1)
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0uLL;
  }

  else
  {

    v105 = v115;
  }

  v106 = v113;
  v107 = v116;
  v108 = v141;
  *v113 = v136;
  v106[1] = v108;
  v106[2] = v107;
  v106[3] = v104;
  v106[4] = v103;
  *(v106 + 5) = v105;
  v106[7] = v102;
  return result;
}

uint64_t sub_1D9A4F600(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(_s14DetectedResultVMa() + 28);
  if (v2 == *(v4 + 16) && v3 == *(v4 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9C7E7DC() & 1;
  }
}

uint64_t sub_1D9A4F6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A4F730(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  swift_getDynamicType();
  sub_1D99BB148();
  v15 = swift_dynamicCastMetatype();
  v16 = *(v3 + 16);
  if (!v15)
  {
    v16(v14, v1, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522B8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      goto LABEL_4;
    }

    v16(v8, v1, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522C0);
    if (swift_dynamicCast())
    {
      sub_1D9979B9C(v29, v26);
      v23 = v27;
      v24 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v25 = (*(v24 + 8))(v23, v24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522C8);
      if (!swift_dynamicCast())
      {
        v16(v5, v1, a1);
        v21 = sub_1D9C7DD0C();
        goto LABEL_15;
      }

      sub_1D9979B9C(v29, v26);
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v25 = sub_1D9C7E7EC();
    }

    v21 = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
LABEL_15:
    (*(v3 + 8))(v8, a1);
    return v21;
  }

LABEL_4:
  v16(v11, v1, a1);
  v17 = sub_1D9C7E7BC();
  if (v17)
  {
    v18 = v17;
    (*(v3 + 8))(v11, a1);
  }

  else
  {
    v18 = swift_allocError();
    (*(v3 + 32))(v19, v11, a1);
  }

  v20 = sub_1D9C7B6FC();

  v21 = sub_1D9A4FABC();
  return v21;
}

uint64_t sub_1D9A4FABC()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1D9C7DB4C();

  v5 = sub_1D9A502C8(v4);

  v40[0] = 0x6E69616D6F64;
  v40[1] = 0xE600000000000000;
  v6 = [v1 domain];
  v7 = sub_1D9C7DC7C();
  v9 = v8;

  v40[2] = v7;
  v40[3] = v9;
  v40[5] = v3;
  v40[6] = 1701080931;
  v40[7] = 0xE400000000000000;
  v40[8] = [v1 code];
  v40[11] = MEMORY[0x1E69E6530];
  v40[12] = 0x7470697263736564;
  v40[13] = 0xEB000000006E6F69;
  v37 = 34;
  v38 = 0xE100000000000000;
  v10 = [v1 localizedDescription];
  v11 = sub_1D9C7DC7C();
  v13 = v12;

  MEMORY[0x1DA73DF90](v11, v13);

  MEMORY[0x1DA73DF90](34, 0xE100000000000000);
  v40[14] = 34;
  v40[15] = 0xE100000000000000;
  v40[17] = v3;
  v40[18] = 0x6F666E4972657375;
  v40[19] = 0xE800000000000000;
  if (v5[2])
  {
    v14 = MEMORY[0x1E69E6158];
    v15 = sub_1D9C7DB5C();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
    v14 = 0;
    v40[22] = 0;
  }

  v40[20] = v15;
  v40[21] = v17;
  v40[23] = v14;
  v40[24] = 0xD000000000000010;
  v40[25] = 0x80000001D9CA6270;
  result = sub_1D9A4FF94();
  if (v19)
  {
    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    result = 0;
    v20 = 0;
    v40[28] = 0;
  }

  v21 = 0;
  v40[26] = result;
  v40[27] = v19;
  v40[29] = v20;
  v33 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v22 = 5;
  if (v21 > 5)
  {
    v22 = v21;
  }

  v23 = -v22;
  v24 = &v40[6 * v21++];
  while (v23 + v21 != 1)
  {
    sub_1D99AB100(v24, &v37, &qword_1ECB522B0);
    v25 = v37;
    v26 = v38;
    sub_1D99AB100(&v39, &v34, &unk_1ECB53AC0);
    if (v35)
    {
      sub_1D9A17E50(&v34, v36);
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      MEMORY[0x1DA73DF90](v25, v26);
      MEMORY[0x1DA73DF90](8250, 0xE200000000000000);
      sub_1D9C7E4DC();
      v27 = v34;
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      sub_1D99A6AE0(&v37, &qword_1ECB522B0);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF83AC(0, *(v33 + 16) + 1, 1, v33);
        v33 = result;
      }

      v29 = *(v33 + 16);
      v28 = *(v33 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1D9AF83AC((v28 > 1), v29 + 1, 1, v33);
        v33 = result;
      }

      *(v33 + 16) = v29 + 1;
      *(v33 + 16 * v29 + 32) = v27;
      if (v21 == 5)
      {
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522B0);
        swift_arrayDestroy();
        v37 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
        sub_1D99A584C();
        v30 = sub_1D9C7DC0C();
        v32 = v31;

        v37 = 91;
        v38 = 0xE100000000000000;
        MEMORY[0x1DA73DF90](v30, v32);

        MEMORY[0x1DA73DF90](93, 0xE100000000000000);
        return v37;
      }

      goto LABEL_8;
    }

    sub_1D99A6AE0(&v34, &unk_1ECB53AC0);
    result = sub_1D99A6AE0(&v37, &qword_1ECB522B0);
    ++v21;
    v24 += 6;
    if (v21 == 6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A4FF94()
{
  v1 = [v0 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
  v2 = sub_1D9C7DF2C();

  v3 = *(v2 + 16);

  if (!v3)
  {
    return 0;
  }

  v4 = [v0 underlyingErrors];
  v5 = sub_1D9C7DF2C();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D99FE164(0, v6, 0);
    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      swift_getErrorValue();
      v9 = v8;
      v10 = (sub_1D9A4F730)();
      v12 = v11;

      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D99FE164((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
  sub_1D99A584C();
  v17 = sub_1D9C7DC0C();
  v19 = v18;

  MEMORY[0x1DA73DF90](v17, v19);

  MEMORY[0x1DA73DF90](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1D9A501C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C85490;
  *(v0 + 32) = sub_1D9C7DC7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D9C7DC7C();
  *(v0 + 56) = v2;
  result = sub_1D9C7DC7C();
  *(v0 + 64) = result;
  *(v0 + 72) = v4;
  qword_1ECB522A8 = v0;
  return result;
}

unint64_t *sub_1D9A50250(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D9A50428(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D9A502C8(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D9A50428(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D9A50250(v8, v4, v2);
  result = MEMORY[0x1DA7405F0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D9A50428(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = result;
  v25 = 0;
  v26 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v26 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1D99A579C(*(v26 + 56) + 32 * v12, v30);
    v28[0] = v14;
    v28[1] = v15;
    sub_1D99A579C(v30, &v29);
    v16 = qword_1ECB509C0;
    v17 = swift_bridgeObjectRetain_n();
    if (v16 != -1)
    {
      v17 = swift_once();
    }

    v18 = qword_1ECB522A8;
    v27[0] = v14;
    v27[1] = v15;
    MEMORY[0x1EEE9AC00](v17);
    v22[2] = v27;

    v19 = v31;
    v20 = sub_1D9BC1698(sub_1D99A40D8, v22, v18);
    v31 = v19;

    sub_1D99A6AE0(v28, &qword_1ECB522D0);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);

    if ((v20 & 1) == 0)
    {
      *(v24 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v25++, 1))
      {
        goto LABEL_19;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1D9A50654(v24, v23, v25, v26);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D9A50654(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52248);
  result = sub_1D9C7E54C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1D99A579C(v17 + 32 * v16, v33);
    sub_1D9A17E50(v33, v32);
    sub_1D9C7E8DC();

    sub_1D9C7DD6C();
    result = sub_1D9C7E93C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1D9A17E50(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D9A508A4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v110 = a3;
  v7 = type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v109 = (&v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v124 = (&v104 - v11);
  v12 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v105 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v123 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v104 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522D8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v108 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v104 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - v23;
  v116 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v126 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v104 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = (&v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v104 - v31;
  v32 = a2[1];
  v106 = *a2;
  v107 = v32;
  v150 = a1;
  v33 = *(a4 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  swift_beginAccess();
  v34 = *(v33 + 16);
  v35 = *(v34 + 64);
  v118 = v34 + 64;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v127 = v37 & v35;
  v111 = a1;
  v112 = (v36 + 63) >> 6;
  v134 = (v8 + 48);
  v129 = 0x80000001D9CA2910;
  v130 = 0x80000001D9CA2950;
  v38 = v24;

  v115 = v34;

  v40 = 0;
  v120 = v24;
  v128 = v7;
  v138 = v16;
  v122 = v21;
  while (1)
  {
    v41 = v127;
    if (!v127)
    {
      break;
    }

    v125 = v40;
    v42 = v40;
LABEL_16:
    v127 = (v41 - 1) & v41;
    v46 = __clz(__rbit64(v41)) | (v42 << 6);
    v47 = (*(v115 + 48) + 16 * v46);
    v49 = *v47;
    v48 = v47[1];
    v50 = v113;
    sub_1D9A5521C(*(v115 + 56) + *(v114 + 72) * v46, v113, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
    v52 = *(v51 + 48);
    v53 = v121;
    *v121 = v49;
    v53[1] = v48;
    v54 = v50;
    v45 = v53;
    sub_1D9A552E4(v54, v53 + v52, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    (*(*(v51 - 8) + 56))(v45, 0, 1, v51);

    v38 = v120;
LABEL_17:
    v55 = v117;
    sub_1D99B1C20(v45, v117, &qword_1ECB51AC8);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
    {

      return v150;
    }

    v57 = v55 + *(v56 + 48);
    v58 = v126;
    sub_1D9A552E4(v57, v126, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v59 = *(v58 + *(v116 + 20));
    v60 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
    swift_beginAccess();
    v131 = v60;
    v132 = v59;
    sub_1D9A51A1C(v59 + v60, v38);
    v133 = *v134;
    if (v133(v38, 1, v7) == 1)
    {

      sub_1D99A6AE0(v38, &qword_1ECB522D8);
    }

    else
    {
      sub_1D99A6AE0(v38, &qword_1ECB522D8);
      v61 = sub_1D9A163E0();
      v62 = v61;
      v63 = v61;
      v137 = *(v111 + 16);
      if (v137)
      {
        v7 = 0;
        v119 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v136 = v111 + v119;
        v139 = *(v105 + 72);
        v135 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          result = sub_1D9A5521C(v136 + v139 * v7, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
          v64 = *(v16 + 6);
          v38 = *(v64 + 16);
          if (!v38)
          {
LABEL_21:
            v16 = v138;
            sub_1D9A55284(v138, type metadata accessor for VisualUnderstanding.ImageRegion);
            goto LABEL_22;
          }

          v65 = 0;
          v16 = (v64 + 32);
LABEL_25:
          if (v65 >= *(v64 + 16))
          {
            break;
          }

          v66 = *(v16 + 1);
          v141 = *v16;
          v142 = v66;
          v67 = *(v16 + 2);
          v68 = *(v16 + 3);
          v69 = *(v16 + 5);
          v145 = *(v16 + 4);
          v146 = v69;
          v143 = v67;
          v144 = v68;
          v70 = *(v16 + 6);
          v71 = *(v16 + 7);
          v72 = *(v16 + 8);
          *(v149 + 13) = *(v16 + 141);
          v148 = v71;
          v149[0] = v72;
          v147 = v70;
          ++v65;
          v73 = 0xE300000000000000;
          v74 = 7631457;
          switch(v141)
          {
            case 1:
              v73 = 0xE600000000000000;
              v74 = 0x65727574616ELL;
              break;
            case 2:
              v73 = 0xE800000000000000;
              v74 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v74 = 0x4C6C61727574616ELL;
              v73 = 0xEF6B72616D646E61;
              break;
            case 4:
              v73 = 0xE500000000000000;
              v74 = 0x616964656DLL;
              break;
            case 5:
              v73 = 0xE400000000000000;
              v74 = 1802465122;
              break;
            case 6:
              v73 = 0xE500000000000000;
              v74 = 0x6D75626C61;
              break;
            case 7:
              v73 = 0xE400000000000000;
              v74 = 1937006947;
              break;
            case 8:
              v73 = 0xE400000000000000;
              v74 = 1936158564;
              break;
            case 9:
              v73 = 0xE700000000000000;
              v75 = 1835626081;
              goto LABEL_45;
            case 10:
              v73 = 0xE500000000000000;
              v74 = 0x7364726962;
              break;
            case 11:
              v73 = 0xE700000000000000;
              v74 = 0x73746365736E69;
              break;
            case 12:
              v73 = 0xE800000000000000;
              v74 = 0x73656C6974706572;
              break;
            case 13:
              v73 = 0xE700000000000000;
              v75 = 1835884909;
LABEL_45:
              v74 = v75 | 0x736C6100000000;
              break;
            case 14:
              v74 = 0xD000000000000010;
              v73 = v129;
              break;
            case 15:
              v73 = 0xE700000000000000;
              v74 = 0x6C657261707061;
              break;
            case 16:
              v74 = 0x726F737365636361;
              v73 = 0xEB00000000736569;
              break;
            case 17:
              v73 = 0xE400000000000000;
              v74 = 1685024614;
              break;
            case 18:
              v73 = 0xEA0000000000746ELL;
              v74 = 0x6F726665726F7473;
              break;
            case 19:
              v76 = 1852270963;
              goto LABEL_52;
            case 20:
              v74 = 0xD000000000000011;
              v73 = v130;
              break;
            case 21:
              v76 = 1869903201;
LABEL_52:
              v74 = v76 | 0x626D795300000000;
              v73 = 0xEA00000000006C6FLL;
              break;
            case 22:
              v74 = 0x676F4C646E617262;
              v73 = 0xEF6C6F626D79536FLL;
              break;
            case 23:
              v73 = 0xE700000000000000;
              v74 = 0x65646F63726162;
              break;
            case 24:
              v74 = 0x727574706C756373;
              v73 = 0xE900000000000065;
              break;
            case 25:
              v73 = 0xE700000000000000;
              v74 = 0x656E696C796B73;
              break;
            case 26:
              v73 = 0xE800000000000000;
              v74 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          v77 = 0xE300000000000000;
          v78 = 7631457;
          switch(v62)
          {
            case 0:
              goto LABEL_105;
            case 1:
              v77 = 0xE600000000000000;
              if (v74 != 0x65727574616ELL)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 2:
              v77 = 0xE800000000000000;
              if (v74 != 0x6B72616D646E616CLL)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 3:
              v77 = 0xEF6B72616D646E61;
              if (v74 != 0x4C6C61727574616ELL)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 4:
              v77 = 0xE500000000000000;
              if (v74 != 0x616964656DLL)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 5:
              v77 = 0xE400000000000000;
              if (v74 != 1802465122)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 6:
              v77 = 0xE500000000000000;
              if (v74 != 0x6D75626C61)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 7:
              v77 = 0xE400000000000000;
              if (v74 != 1937006947)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 8:
              v77 = 0xE400000000000000;
              if (v74 != 1936158564)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 9:
              v77 = 0xE700000000000000;
              v80 = 1835626081;
              goto LABEL_88;
            case 10:
              v77 = 0xE500000000000000;
              if (v74 != 0x7364726962)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 11:
              v77 = 0xE700000000000000;
              v79 = 0x746365736E69;
              goto LABEL_89;
            case 12:
              v77 = 0xE800000000000000;
              if (v74 != 0x73656C6974706572)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 13:
              v77 = 0xE700000000000000;
              v80 = 1835884909;
LABEL_88:
              v79 = v80 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_89:
              if (v74 != (v79 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 14:
              v77 = v129;
              if (v74 != 0xD000000000000010)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 15:
              v77 = 0xE700000000000000;
              if (v74 != 0x6C657261707061)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 16:
              v77 = 0xEB00000000736569;
              if (v74 != 0x726F737365636361)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 17:
              v77 = 0xE400000000000000;
              if (v74 != 1685024614)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 18:
              v77 = 0xEA0000000000746ELL;
              if (v74 != 0x6F726665726F7473)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 19:
              v81 = 1852270963;
              goto LABEL_102;
            case 20:
              v77 = v130;
              if (v74 != 0xD000000000000011)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 21:
              v81 = 1869903201;
LABEL_102:
              v77 = 0xEA00000000006C6FLL;
              if (v74 != (v81 | 0x626D795300000000))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 22:
              v77 = 0xEF6C6F626D79536FLL;
              if (v74 != 0x676F4C646E617262)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 23:
              v77 = 0xE700000000000000;
              v78 = 0x65646F63726162;
LABEL_105:
              if (v74 == v78)
              {
                goto LABEL_106;
              }

              goto LABEL_107;
            case 24:
              v77 = 0xE900000000000065;
              if (v74 != 0x727574706C756373)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 25:
              v77 = 0xE700000000000000;
              if (v74 != 0x656E696C796B73)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            case 26:
              v77 = 0xE800000000000000;
              if (v74 != 0x44327463656A626FLL)
              {
                goto LABEL_107;
              }

LABEL_106:
              if (v73 != v77)
              {
LABEL_107:
                v82 = sub_1D9C7E7DC();
                sub_1D99AE054(&v141, v140);

                result = sub_1D99AE0B0(&v141);
                if (v82)
                {
                  goto LABEL_113;
                }

                v16 += 20;
                if (v38 == v65)
                {
                  goto LABEL_21;
                }

                goto LABEL_25;
              }

              sub_1D99AE054(&v141, v140);

              sub_1D99AE0B0(&v141);
LABEL_113:
              v16 = v138;
              v83 = *v138;
              v84 = v138[1];
              v85 = v138[2];
              v86 = v138[3];
              v151.origin.x = *v138;
              v151.origin.y = v84;
              v151.size.width = v85;
              v151.size.height = v86;
              Width = CGRectGetWidth(v151);
              v152.origin.x = v83;
              v152.origin.y = v84;
              v152.size.width = v85;
              v152.size.height = v86;
              Height = CGRectGetHeight(v152);
              v89 = v122;
              sub_1D9A51A1C(v132 + v131, v122);
              v90 = v128;
              v91 = v133;
              if (v133(v89, 1, v128) == 1)
              {
                v92 = v124;
                *v124 = 0;
                *(v92 + 2) = 0;
                sub_1D9C7D3BC();
                if (v91(v89, 1, v90) != 1)
                {
                  sub_1D99A6AE0(v89, &qword_1ECB522D8);
                }
              }

              else
              {
                v92 = v124;
                sub_1D9A552E4(v89, v124, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
              }

              v93 = Width * Height;
              v94 = *v92;
              sub_1D9A55284(v92, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
              if (v94 <= v93)
              {
                goto LABEL_21;
              }

              sub_1D9A5521C(v16, v123, type metadata accessor for VisualUnderstanding.ImageRegion);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v135 = sub_1D9AF8A90(0, v135[2] + 1, 1, v135);
              }

              v96 = v135[2];
              v95 = v135[3];
              if (v96 >= v95 >> 1)
              {
                v135 = sub_1D9AF8A90(v95 > 1, v96 + 1, 1, v135);
              }

              sub_1D9A55284(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
              v97 = v135;
              v135[2] = v96 + 1;
              sub_1D9A552E4(v123, v97 + v119 + v96 * v139, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_22:
              if (++v7 == v137)
              {
                goto LABEL_125;
              }

              break;
            default:
              goto LABEL_5;
          }
        }

        __break(1u);
        goto LABEL_132;
      }

      v135 = MEMORY[0x1E69E7CC0];
LABEL_125:
      v141 = v106;
      v142 = v107;
      LOBYTE(v140[0]) = v63;
      v99 = v108;
      sub_1D9A51A1C(v132 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig, v108);
      v7 = v128;
      v100 = v133;
      if (v133(v99, 1, v128) == 1)
      {
        v101 = v100;
        v102 = v109;
        *v109 = 0;
        *(v102 + 2) = 0;
        sub_1D9C7D3BC();
        if (v101(v99, 1, v7) != 1)
        {
          sub_1D99A6AE0(v99, &qword_1ECB522D8);
        }
      }

      else
      {
        v102 = v109;
        sub_1D9A552E4(v99, v109, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
      }

      v103 = sub_1D9A53218(v135, &v141, v140, v110, v102);

      sub_1D9A55284(v102, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
      sub_1D9A18738(v103);
      v38 = v120;
    }

LABEL_5:
    result = sub_1D9A55284(v126, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v40 = v125;
  }

  if (v112 <= v40 + 1)
  {
    v43 = v40 + 1;
  }

  else
  {
    v43 = v112;
  }

  v44 = v43 - 1;
  v45 = v121;
  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v112)
    {
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0);
      (*(*(v98 - 8) + 56))(v45, 1, 1, v98);
      v127 = 0;
      v125 = v44;
      goto LABEL_17;
    }

    v41 = *(v118 + 8 * v42);
    ++v40;
    if (v41)
    {
      v125 = v42;
      goto LABEL_16;
    }
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D9A51A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A51A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v181 = a4;
  v184 = a5;
  v8 = _s14DetectedResultVMa();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v191 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1D9C7D8DC();
  v183 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v177 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v187 = &v177 - v12;
  v186 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v186);
  v190 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v189 = &v177 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v182 = &v177 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v194 = &v177 - v19;
  MEMORY[0x1EEE9AC00](v20);
  *&v199 = &v177 - v22;
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  v200 = *a3;
  v198 = *(a1 + 16);
  v185 = v21;
  v178 = a1;
  if (v198)
  {
    v203 = 0;
    v207 = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v205 = 0;
    v27 = 0;
    LODWORD(v202) = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *&v193 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v195 = 0x80000001D9CA2910;
    v196 = 0x80000001D9CA2950;
    v31 = 0.0;
    v32 = 0.0;
    Width = *(v21 + 72);
    v204 = MEMORY[0x1E69E7CC0];
    v33 = *&v199;
    while (1)
    {
      v197 = v30;
      sub_1D9A5521C(v193 + *&Width * v30, v33, type metadata accessor for VisualUnderstanding.ImageRegion);
      v36 = *(v33 + 48);
      v37 = *(v36 + 16);
      if (v37)
      {
        break;
      }

      LODWORD(v34) = v205;
      LODWORD(v35) = v202;
LABEL_4:
      LODWORD(v202) = v35;
      v205 = v34;
      v30 = v197 + 1;
      v33 = *&v199;
      sub_1D9A55284(*&v199, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v30 == v198)
      {
        goto LABEL_83;
      }
    }

    v38 = (v36 + 32);
    v34 = v205;
    v35 = v202;
    while (1)
    {
      v39 = v38[1];
      v237[0] = *v38;
      v237[1] = v39;
      v40 = v38[2];
      v41 = v38[3];
      v42 = v38[5];
      v239 = v38[4];
      v240 = v42;
      v237[2] = v40;
      v238 = v41;
      v43 = v38[6];
      v44 = v38[7];
      v45 = v38[8];
      *(v243 + 13) = *(v38 + 141);
      v242 = v44;
      v243[0] = v45;
      v241 = v43;
      v46 = 0xE300000000000000;
      v47 = 7631457;
      switch(LOBYTE(v237[0]))
      {
        case 1:
          v46 = 0xE600000000000000;
          v47 = 0x65727574616ELL;
          break;
        case 2:
          v46 = 0xE800000000000000;
          v47 = 0x6B72616D646E616CLL;
          break;
        case 3:
          v47 = 0x4C6C61727574616ELL;
          v46 = 0xEF6B72616D646E61;
          break;
        case 4:
          v46 = 0xE500000000000000;
          v47 = 0x616964656DLL;
          break;
        case 5:
          v46 = 0xE400000000000000;
          v47 = 1802465122;
          break;
        case 6:
          v46 = 0xE500000000000000;
          v47 = 0x6D75626C61;
          break;
        case 7:
          v46 = 0xE400000000000000;
          v47 = 1937006947;
          break;
        case 8:
          v46 = 0xE400000000000000;
          v47 = 1936158564;
          break;
        case 9:
          v46 = 0xE700000000000000;
          v48 = 1835626081;
          goto LABEL_32;
        case 0xA:
          v46 = 0xE500000000000000;
          v47 = 0x7364726962;
          break;
        case 0xB:
          v46 = 0xE700000000000000;
          v47 = 0x73746365736E69;
          break;
        case 0xC:
          v46 = 0xE800000000000000;
          v47 = 0x73656C6974706572;
          break;
        case 0xD:
          v46 = 0xE700000000000000;
          v48 = 1835884909;
LABEL_32:
          v47 = v48 | 0x736C6100000000;
          break;
        case 0xE:
          v47 = 0xD000000000000010;
          v46 = v195;
          break;
        case 0xF:
          v46 = 0xE700000000000000;
          v47 = 0x6C657261707061;
          break;
        case 0x10:
          v47 = 0x726F737365636361;
          v46 = 0xEB00000000736569;
          break;
        case 0x11:
          v46 = 0xE400000000000000;
          v47 = 1685024614;
          break;
        case 0x12:
          v46 = 0xEA0000000000746ELL;
          v47 = 0x6F726665726F7473;
          break;
        case 0x13:
          v49 = 1852270963;
          goto LABEL_39;
        case 0x14:
          v47 = 0xD000000000000011;
          v46 = v196;
          break;
        case 0x15:
          v49 = 1869903201;
LABEL_39:
          v47 = v49 | 0x626D795300000000;
          v46 = 0xEA00000000006C6FLL;
          break;
        case 0x16:
          v47 = 0x676F4C646E617262;
          v46 = 0xEF6C6F626D79536FLL;
          break;
        case 0x17:
          v46 = 0xE700000000000000;
          v47 = 0x65646F63726162;
          break;
        case 0x18:
          v47 = 0x727574706C756373;
          v46 = 0xE900000000000065;
          break;
        case 0x19:
          v46 = 0xE700000000000000;
          v47 = 0x656E696C796B73;
          break;
        case 0x1A:
          v46 = 0xE800000000000000;
          v47 = 0x44327463656A626FLL;
          break;
        default:
          break;
      }

      v206 = v29;
      v50 = 0xE300000000000000;
      v205 = v28;
      v51 = v27;
      v52 = 7631457;
      switch(v200)
      {
        case 1:
          v50 = 0xE600000000000000;
          v52 = 0x65727574616ELL;
          break;
        case 2:
          v50 = 0xE800000000000000;
          v52 = 0x6B72616D646E616CLL;
          break;
        case 3:
          v52 = 0x4C6C61727574616ELL;
          v50 = 0xEF6B72616D646E61;
          break;
        case 4:
          v50 = 0xE500000000000000;
          v52 = 0x616964656DLL;
          break;
        case 5:
          v50 = 0xE400000000000000;
          v52 = 1802465122;
          break;
        case 6:
          v50 = 0xE500000000000000;
          v52 = 0x6D75626C61;
          break;
        case 7:
          v50 = 0xE400000000000000;
          v52 = 1937006947;
          break;
        case 8:
          v50 = 0xE400000000000000;
          v52 = 1936158564;
          break;
        case 9:
          v50 = 0xE700000000000000;
          v53 = 1835626081;
          goto LABEL_61;
        case 10:
          v50 = 0xE500000000000000;
          v52 = 0x7364726962;
          break;
        case 11:
          v50 = 0xE700000000000000;
          v52 = 0x73746365736E69;
          break;
        case 12:
          v50 = 0xE800000000000000;
          v52 = 0x73656C6974706572;
          break;
        case 13:
          v50 = 0xE700000000000000;
          v53 = 1835884909;
LABEL_61:
          v52 = v53 | 0x736C6100000000;
          break;
        case 14:
          v52 = 0xD000000000000010;
          v50 = v195;
          break;
        case 15:
          v50 = 0xE700000000000000;
          v52 = 0x6C657261707061;
          break;
        case 16:
          v52 = 0x726F737365636361;
          v50 = 0xEB00000000736569;
          break;
        case 17:
          v50 = 0xE400000000000000;
          v52 = 1685024614;
          break;
        case 18:
          v50 = 0xEA0000000000746ELL;
          v52 = 0x6F726665726F7473;
          break;
        case 19:
          v54 = 1852270963;
          goto LABEL_68;
        case 20:
          v52 = 0xD000000000000011;
          v50 = v196;
          break;
        case 21:
          v54 = 1869903201;
LABEL_68:
          v52 = v54 | 0x626D795300000000;
          v50 = 0xEA00000000006C6FLL;
          break;
        case 22:
          v52 = 0x676F4C646E617262;
          v50 = 0xEF6C6F626D79536FLL;
          break;
        case 23:
          v50 = 0xE700000000000000;
          v52 = 0x65646F63726162;
          break;
        case 24:
          v52 = 0x727574706C756373;
          v50 = 0xE900000000000065;
          break;
        case 25:
          v50 = 0xE700000000000000;
          v52 = 0x656E696C796B73;
          break;
        case 26:
          v50 = 0xE800000000000000;
          v52 = 0x44327463656A626FLL;
          break;
        default:
          break;
      }

      v55 = v35;
      v56 = v34;
      if (v47 == v52 && v46 == v50)
      {
        break;
      }

      v57 = sub_1D9C7E7DC();
      sub_1D99AE054(v237, &v213);

      if (v57)
      {
        goto LABEL_75;
      }

      sub_1D99AE0B0(v237);
      v34 = v56;
      v27 = v51;
      v35 = v55;
      v28 = v205;
      v29 = v206;
LABEL_12:
      v38 += 10;
      if (!--v37)
      {
        goto LABEL_4;
      }
    }

    sub_1D99AE054(v237, &v213);

LABEL_75:
    v58 = **&v199;
    v201 = *(*&v199 + 16);
    v202 = v58;
    v59 = v204;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1D9AF9040(0, *(v59 + 2) + 1, 1, v59);
    }

    v61 = v207;
    v60 = v208;
    v63 = *(v59 + 2);
    v62 = *(v59 + 3);
    v65 = v209;
    v64 = v210;
    if (v63 >= v62 >> 1)
    {
      v73 = sub_1D9AF9040((v62 > 1), v63 + 1, 1, v59);
      v60 = v208;
      v65 = v209;
      v64 = v210;
      v59 = v73;
    }

    v66 = *(&v242 + 1);
    *(v59 + 2) = v63 + 1;
    v204 = v59;
    v67 = &v59[32 * v63];
    v68 = v201;
    *(v67 + 2) = v202;
    *(v67 + 3) = v68;
    v69 = v61;
    v70 = v64;
    v71 = v65;
    v72 = v60;
    if (v31 < v66)
    {
      v70 = *(&v240 + 1);
      v69 = v240;
      v72 = *(&v241 + 1);
      v71 = v241;
    }

    sub_1D99FE1B4(v69, v70);
    sub_1D99FEF84(v207, v210);
    sub_1D99AE0B0(v237);
    if (v66 > v31)
    {
      v31 = v66;
    }

    LODWORD(v203) = (v203 | BYTE12(v242)) & 1;
    v34 = (v56 | BYTE13(v242)) & 1;
    v35 = (v55 | HIBYTE(v242)) & 1;
    v27 = (BYTE14(v242) | v51) & 1;
    v28 = (LOBYTE(v243[0]) | v205) & 1;
    v29 = (BYTE1(v243[0]) | v206) & 1;
    HIDWORD(v203) = (BYTE8(v237[2]) | BYTE4(v203)) & 1;
    if (*(&v242 + 2) > v32)
    {
      v32 = *(&v242 + 2);
    }

    v207 = v69;
    v208 = v72;
    v209 = v71;
    v210 = v70;
    goto LABEL_12;
  }

  v203 = 0;
  v204 = MEMORY[0x1E69E7CC0];
  v207 = 0;
  v208 = 0;
  v209 = 0;
  v210 = 0;
  v205 = 0;
  LODWORD(v27) = 0;
  LODWORD(v202) = 0;
  v29 = 0;
  v31 = 0.0;
  v32 = 0.0;
  LOBYTE(v28) = 0;
LABEL_83:
  v206 = v29;
  v74 = *(v204 + 2);
  if (v74)
  {
    *&v201 = v26;
    v199 = v25;
    v75 = v204 + 56;
    v76 = *(v204 + 7);
    v77 = *(v204 + 4);
    v78 = *(v204 + 5);
    v79 = *(v204 + 6);
    v80 = v188;
    do
    {
      *&v77 = CGRectUnion(*&v77, *(v75 - 24));
      v75 += 32;
      --v74;
    }

    while (v74);
    LODWORD(v177) = v27;
    v81 = v77 - v23;
    v82 = v78 - v24;
    v83 = v77;
    v195 = *&v78;
    v196 = *&v77;
    v84 = v78;
    v85 = v79;
    *&v193 = v79;
    v86 = *&v76;
    v197 = v76;
    Width = CGRectGetWidth(*&v77);
    v248.origin.x = v83;
    v248.origin.y = v84;
    v248.size.width = v85;
    v248.size.height = v86;
    Height = CGRectGetHeight(v248);
    v88 = 1.0 / v199;
    v89 = 1.0 / *&v201;
    *&v201 = 1.0 / v199 * v81;
    v199 = v89 * v82;
    v249.origin.x = v81;
    v249.origin.y = v82;
    v90 = Width;
    v249.size.width = Width;
    v249.size.height = Height;
    v91 = v88 * CGRectGetWidth(v249);
    v250.origin.x = v81;
    v250.origin.y = v82;
    v250.size.width = v90;
    v250.size.height = Height;
    v92 = v89 * CGRectGetHeight(v250);
    v93 = *&v201;
    *&v251.origin.x = v201;
    v94 = v199;
    v251.origin.y = v199;
    v251.size.width = v91;
    v251.size.height = v92;
    v95 = CGRectGetWidth(v251);
    v252.origin.x = v93;
    v252.origin.y = v94;
    v252.size.width = v91;
    v252.size.height = v92;
    v96 = CGRectGetHeight(v252);
    sub_1D9B1EFAC(v93, v94, v95, v96);
    *&v93 = v97;
    v98 = v186;
    v99 = v194;
    sub_1D9C7B92C();
    v100 = v195;
    *v99 = v196;
    *(v99 + 8) = v100;
    v101 = v197;
    *(v99 + 16) = v193;
    *(v99 + 24) = v101;
    *(v99 + 32) = 1;
    v102 = MEMORY[0x1E69E7CC0];
    *(v99 + 40) = MEMORY[0x1E69E7CC0];
    *(v99 + 48) = v102;
    *(v99 + 56) = v102;
    *(v99 + 64) = v102;
    *(v99 + 72) = 0;
    *(v99 + 76) = LODWORD(v93);
    *(v99 + 88) = 0;
    *(v99 + 96) = 0;
    *(v99 + 80) = 0;
    *(v99 + 104) = 0;
    *(v99 + 112) = v102;
    *(v99 + *(v98 + 64)) = 0;
    *(v99 + *(v98 + 68)) = v102;
    v103 = v187;
    v104 = v182;
    if (v198)
    {
      v105 = v185;
      v106 = v178 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
      swift_beginAccess();
      v107 = v106;
      v199 = *(v105 + 72);
      Width = COERCE_DOUBLE(0x80000001D9CA3A40);
      v196 = v183 + 8;
      v197 = (v183 + 16);
      *&v108 = 136315394;
      v193 = v108;
      while (1)
      {
        *&v201 = v107;
        sub_1D9A5521C(v107, v104, type metadata accessor for VisualUnderstanding.ImageRegion);
        v109 = v189;
        v110 = v194;
        sub_1D9B66D50(v104, v194, v189);
        sub_1D99B1DB0(v109, v110);
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v111 = v190;
        if (byte_1EDD354C0 != 1)
        {
LABEL_107:
          v122 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v122 = qword_1EDD354D8;
          }

          goto LABEL_109;
        }

        v112 = [objc_opt_self() mainBundle];
        v113 = [v112 bundleIdentifier];

        if (!v113)
        {
          break;
        }

        v114 = sub_1D9C7DC7C();
        v116 = v115;

        if (v114 == 0xD00000000000002BLL && *&Width == v116)
        {
        }

        else
        {
          v118 = sub_1D9C7E7DC();

          if ((v118 & 1) == 0)
          {
            break;
          }
        }

        v119 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v119 = &off_1ECB51BA8;
        }

LABEL_104:
        v120 = *(*v119 + 32);

        v121 = sub_1D9C7DC4C();
        LODWORD(v120) = [v120 BOOLForKey_];

        if (!v120)
        {
          goto LABEL_107;
        }

        v122 = qword_1EDD2C990;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v122 = qword_1EDD2C990;
        }

LABEL_109:
        v123 = __swift_project_value_buffer(v80, v122);
        (*v197)(v103, v123, v80);
        sub_1D9A5521C(v104, v111, type metadata accessor for VisualUnderstanding.ImageRegion);
        v124 = sub_1D9C7D8BC();
        v125 = sub_1D9C7E09C();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v213 = v195;
          *v126 = v193;
          v127 = v111[1];
          v237[0] = *v111;
          v237[1] = v127;
          v128 = NormalizedRect.loggingDescription.getter();
          v130 = v129;
          sub_1D9A55284(v111, type metadata accessor for VisualUnderstanding.ImageRegion);
          v131 = sub_1D9A0E224(v128, v130, &v213);

          *(v126 + 4) = v131;
          *(v126 + 12) = 2080;
          v132 = *(v194 + 16);
          v237[0] = *v194;
          v237[1] = v132;
          v80 = v188;
          v133 = NormalizedRect.loggingDescription.getter();
          v135 = sub_1D9A0E224(v133, v134, &v213);

          *(v126 + 14) = v135;
          _os_log_impl(&dword_1D9962000, v124, v125, "Merge region %s to %s", v126, 0x16u);
          v136 = v195;
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v136, -1, -1);
          v137 = v126;
          v103 = v187;
          MEMORY[0x1DA7405F0](v137, -1, -1);
        }

        else
        {

          sub_1D9A55284(v111, type metadata accessor for VisualUnderstanding.ImageRegion);
        }

        (*v196)(v103, v80);
        sub_1D9A55284(v104, type metadata accessor for VisualUnderstanding.ImageRegion);
        v107 = v201 + *&v199;
        if (!--v198)
        {
          goto LABEL_111;
        }
      }

      v119 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v119 = &qword_1EDD355A8;
      }

      goto LABEL_104;
    }

LABEL_111:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51728);
    v138 = swift_allocObject();
    LOBYTE(v237[0]) = v200;
    *(v237 + 1) = v247[0];
    DWORD1(v237[0]) = *(v247 + 3);
    *(v237 + 8) = 0u;
    *(&v237[1] + 8) = 0u;
    v139 = v203;
    BYTE8(v237[2]) = BYTE4(v203);
    *(&v237[2] + 9) = v246[0];
    HIDWORD(v237[2]) = *(v246 + 3);
    v238 = 0u;
    v239 = 0u;
    *&v240 = v207;
    *(&v240 + 1) = v210;
    *&v241 = v209;
    *(&v241 + 1) = v208;
    LODWORD(v242) = 0;
    *(&v242 + 4) = __PAIR64__(LODWORD(v32), LODWORD(v31));
    BYTE12(v242) = v203;
    v140 = v205;
    BYTE13(v242) = v205;
    v141 = v177;
    BYTE14(v242) = v177;
    v142 = v202;
    HIBYTE(v242) = v202;
    LOBYTE(v243[0]) = v28;
    BYTE1(v243[0]) = v206;
    WORD3(v243[0]) = v245;
    *(v243 + 2) = v244;
    *&v243[1] = 0;
    *(&v243[0] + 1) = 0;
    *(&v243[1] + 5) = 0;
    v143 = v237[0];
    v144 = v237[1];
    v138[1] = xmmword_1D9C85660;
    v138[2] = v143;
    v145 = v237[2];
    v146 = v239;
    v147 = v240;
    v138[5] = v238;
    v138[6] = v146;
    v138[3] = v144;
    v138[4] = v145;
    v148 = v241;
    v149 = v242;
    *(v138 + 173) = *(v243 + 13);
    v150 = v243[0];
    v138[9] = v149;
    v138[10] = v150;
    v138[7] = v147;
    v138[8] = v148;
    v151 = v194;
    swift_beginAccess();
    *(v151 + 48) = v138;
    sub_1D99AE054(v237, &v213);

    v152 = *(v151 + 56);
    v212 = v152;
    swift_bridgeObjectRetain_n();
    sub_1D9A53F94(&v212);

    LOBYTE(v213) = v200;
    *(&v213 + 1) = v247[0];
    HIDWORD(v213) = *(v247 + 3);
    v214 = 0u;
    v215 = 0u;
    v216 = BYTE4(v203);
    *v217 = v246[0];
    *&v217[3] = *(v246 + 3);
    v218 = 0u;
    v219 = 0u;
    v220 = v207;
    v221 = v210;
    v222 = v209;
    v223 = v208;
    v224 = 0;
    v225 = v31;
    v226 = v32;
    v227 = v139;
    v228 = v140;
    v229 = v141;
    v230 = v142;
    v231 = v28;
    v232 = v206;
    v234 = v245;
    v233 = v244;
    *(v236 + 5) = 0;
    v235 = 0;
    v236[0] = 0;
    sub_1D99AE0B0(&v213);
    v153 = v212;
    v154 = v212[2];
    if (v154)
    {
      v208 = v152;
      v211 = MEMORY[0x1E69E7CC0];
      sub_1D99FE258(0, v154, 0);
      v155 = v211;
      v156 = v180;
      v157 = *(v179 + 80);
      v207 = v153;
      v158 = v153 + ((v157 + 32) & ~v157);
      v209 = *(v179 + 72);
      do
      {
        v159 = v191;
        sub_1D9A5521C(v158, v191, _s14DetectedResultVMa);
        v160 = (v159 + *(v156 + 28));
        v162 = *v160;
        v161 = v160[1];
        v163 = v160[3];
        v210 = v160[2];

        sub_1D9A55284(v159, _s14DetectedResultVMa);
        v211 = v155;
        v165 = *(v155 + 16);
        v164 = *(v155 + 24);
        if (v165 >= v164 >> 1)
        {
          sub_1D99FE258((v164 > 1), v165 + 1, 1);
          v156 = v180;
          v155 = v211;
        }

        *(v155 + 16) = v165 + 1;
        v166 = (v155 + 32 * v165);
        v166[4] = v162;
        v166[5] = v161;
        v166[6] = v210;
        v166[7] = v163;
        v158 += v209;
        --v154;
      }

      while (v154);
    }

    else
    {

      v155 = MEMORY[0x1E69E7CC0];
    }

    v175 = v194;
    *(v194 + 40) = v155;
    *(v175 + 56) = MEMORY[0x1E69E7CC0];

    v176 = v184;
    sub_1D9A5521C(v175, v184, type metadata accessor for VisualUnderstanding.ImageRegion);
    (*(v185 + 56))(v176, 0, 1, v186);
    return sub_1D9A55284(v175, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  else
  {
    LOBYTE(v237[0]) = v200;
    *(v237 + 1) = v247[0];
    DWORD1(v237[0]) = *(v247 + 3);
    *(v237 + 8) = 0u;
    *(&v237[1] + 8) = 0u;
    BYTE8(v237[2]) = BYTE4(v203);
    *(&v237[2] + 9) = v246[0];
    HIDWORD(v237[2]) = *(v246 + 3);
    v238 = 0u;
    v239 = 0u;
    *&v240 = v207;
    *(&v240 + 1) = v210;
    *&v241 = v209;
    *(&v241 + 1) = v208;
    LODWORD(v242) = 0;
    *(&v242 + 4) = __PAIR64__(LODWORD(v32), LODWORD(v31));
    BYTE12(v242) = v203;
    BYTE13(v242) = v205;
    BYTE14(v242) = v27;
    HIBYTE(v242) = v202;
    LOBYTE(v243[0]) = v28;
    BYTE1(v243[0]) = v206;
    WORD3(v243[0]) = v245;
    *(v243 + 2) = v244;
    *(&v243[1] + 5) = 0;
    *(&v243[0] + 1) = 0;
    *&v243[1] = 0;
    sub_1D99AE0B0(v237);

    v167 = v177;
    static Logger.argos.getter(v177);
    v168 = sub_1D9C7D8BC();
    v169 = sub_1D9C7E0AC();
    v170 = os_log_type_enabled(v168, v169);
    v171 = v185;
    v172 = v188;
    if (v170)
    {
      v173 = swift_slowAlloc();
      *v173 = 0;
      _os_log_impl(&dword_1D9962000, v168, v169, "Failed to merge boxes", v173, 2u);
      MEMORY[0x1DA7405F0](v173, -1, -1);
    }

    (*(v183 + 8))(v167, v172);
    return (*(v171 + 56))(v184, 1, 1, v186);
  }
}

void *sub_1D9A53218(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v128 = a4;
  v145 = a2;
  v146 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v120 - v8;
  v127 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v10 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v121 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v120 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v120 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v120 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0);
  v144 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v135 = (&v120 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v134 = (&v120 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v120 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v120 - v34);
  v136 = a1;
  v36 = *(a1 + 16);
  v129 = a5;
  v37 = *(a5 + 4);
  if (v36 <= v37)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v133 = v33;
  v126 = v37;
  v38 = *(v145 + 1);
  v125 = *v145;
  v124 = v38;
  v123 = *v146;
  v39 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v39 = sub_1D9B8E10C(v36, 0);
    if (sub_1D99F65F4(v148, (v39 + 4), v36, 0, v36) != v36)
    {
      goto LABEL_91;
    }
  }

  v140 = (*&v144 + 48);
  v141 = (*&v144 + 56);

  v40 = 0;
  v122 = v9;
  v137 = v24;
  v132 = v23;
  v131 = v31;
  v130 = v35;
  while (1)
  {
    if (v40 == v36)
    {
      v41 = 1;
      v138 = v36;
    }

    else
    {
      if (v40 >= v36)
      {
        goto LABEL_86;
      }

      v42 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        goto LABEL_87;
      }

      v43 = v136 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v40;
      v44 = *(v24 + 48);
      v45 = v135;
      *v135 = v40;
      sub_1D9A5521C(v43, v45 + v44, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99B1C20(v45, v31, &qword_1ECB510F0);
      v41 = 0;
      v138 = v42;
    }

    v46 = *v141;
    (*v141)(v31, v41, 1, v24);
    sub_1D99B1C20(v31, v35, &qword_1ECB510F8);
    v47 = *v140;
    if ((*v140)(v35, 1, v24) == 1)
    {
      v144 = *&v47;
      v74 = sub_1D9A43BB4(MEMORY[0x1E69E7CC0]);
      v75 = 0;
      v76 = 0;
      v145 = v46;
      while (1)
      {
        v77 = v144;
        if (v76 == v36)
        {
          v78 = 1;
          v146 = v36;
          v79 = v133;
        }

        else
        {
          if (v76 >= v36)
          {
            goto LABEL_88;
          }

          v80 = (v76 + 1);
          if (__OFADD__(v76, 1))
          {
            goto LABEL_89;
          }

          v81 = v136 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v76;
          v82 = *(v24 + 48);
          v83 = v135;
          *v135 = v76;
          sub_1D9A5521C(v81, v83 + v82, type metadata accessor for VisualUnderstanding.ImageRegion);
          v84 = v83;
          v79 = v133;
          sub_1D99B1C20(v84, v133, &qword_1ECB510F0);
          v78 = 0;
          v146 = v80;
          v46 = v145;
        }

        v46(v79, v78, 1, v24);
        v85 = v134;
        sub_1D99B1C20(v79, v134, &qword_1ECB510F8);
        if ((*&v77)(v85, 1, v24) == 1)
        {

          v106 = 0;
          v107 = 1 << *(v74 + 32);
          v108 = -1;
          if (v107 < 64)
          {
            v108 = ~(-1 << v107);
          }

          v109 = v108 & v74[8];
          v110 = (v107 + 63) >> 6;
          v146 = (v10 + 48);
          v145 = MEMORY[0x1E69E7CC0];
          while (v109)
          {
LABEL_70:
            v112 = __clz(__rbit64(v109));
            v109 &= v109 - 1;
            if (*(*(v74[7] + ((v106 << 9) | (8 * v112))) + 16) > v126)
            {
              v148[0] = v125;
              v148[1] = v124;
              v147 = v123;

              v114 = v122;
              sub_1D9A51A8C(v113, v148, &v147, v128, v122);

              if ((*v146)(v114, 1, v127) == 1)
              {
                sub_1D99A6AE0(v114, &qword_1ECB51220);
              }

              else
              {
                v115 = v114;
                v116 = v120;
                sub_1D9A552E4(v115, v120, type metadata accessor for VisualUnderstanding.ImageRegion);
                sub_1D9A5521C(v116, v121, type metadata accessor for VisualUnderstanding.ImageRegion);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v145 = sub_1D9AF8A90(0, v145[2] + 1, 1, v145);
                }

                v118 = v145[2];
                v117 = v145[3];
                if (v118 >= v117 >> 1)
                {
                  v145 = sub_1D9AF8A90(v117 > 1, v118 + 1, 1, v145);
                }

                sub_1D9A55284(v120, type metadata accessor for VisualUnderstanding.ImageRegion);
                v119 = v145;
                v145[2] = v118 + 1;
                sub_1D9A552E4(v121, v119 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v118, type metadata accessor for VisualUnderstanding.ImageRegion);
              }
            }
          }

          while (1)
          {
            v111 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              goto LABEL_84;
            }

            if (v111 >= v110)
            {

              sub_1D9979BF4(v75);
              return v145;
            }

            v109 = v74[v111 + 8];
            ++v106;
            if (v109)
            {
              v106 = v111;
              goto LABEL_70;
            }
          }
        }

        v86 = *v85;
        sub_1D9A552E4(v85 + *(v24 + 48), v142, type metadata accessor for VisualUnderstanding.ImageRegion);
        do
        {
          v87 = v86;
          if ((v86 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v86 >= v39[2])
          {
            break;
          }

          v86 = v39[v86 + 4];
        }

        while (v87 != v86);
        sub_1D9A5521C(v142, v139, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9979BF4(v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v148[0] = v74;
        v90 = sub_1D99F0BB0(v87);
        v91 = v74[2];
        v92 = (v89 & 1) == 0;
        v93 = v91 + v92;
        if (__OFADD__(v91, v92))
        {
          goto LABEL_85;
        }

        v94 = v89;
        if (v74[3] >= v93)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v89)
            {
              goto LABEL_55;
            }
          }

          else
          {
            sub_1D9C13ABC();
            v74 = *&v148[0];
            if (v94)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          sub_1D9C08A14(v93, isUniquelyReferenced_nonNull_native);
          v74 = *&v148[0];
          v95 = sub_1D99F0BB0(v87);
          if ((v94 & 1) != (v96 & 1))
          {
            goto LABEL_92;
          }

          v90 = v95;
          if (v94)
          {
            goto LABEL_55;
          }
        }

        v74[(v90 >> 6) + 8] |= 1 << v90;
        *(v74[6] + 8 * v90) = v87;
        *(v74[7] + 8 * v90) = MEMORY[0x1E69E7CC0];
        v97 = v74[2];
        v98 = __OFADD__(v97, 1);
        v99 = v97 + 1;
        if (v98)
        {
          goto LABEL_90;
        }

        v74[2] = v99;
LABEL_55:
        v100 = v74[7];
        v101 = *(v100 + 8 * v90);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        *(v100 + 8 * v90) = v101;
        if ((v102 & 1) == 0)
        {
          v101 = sub_1D9AF8A90(0, v101[2] + 1, 1, v101);
          *(v100 + 8 * v90) = v101;
        }

        v104 = v101[2];
        v103 = v101[3];
        if (v104 >= v103 >> 1)
        {
          *(v100 + 8 * v90) = sub_1D9AF8A90(v103 > 1, v104 + 1, 1, v101);
        }

        sub_1D9A55284(v142, type metadata accessor for VisualUnderstanding.ImageRegion);
        v105 = *(v100 + 8 * v90);
        *(v105 + 16) = v104 + 1;
        sub_1D9A552E4(v139, v105 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v104, type metadata accessor for VisualUnderstanding.ImageRegion);
        v75 = sub_1D9979D3C;
        v24 = v137;
        v46 = v145;
        v76 = v146;
      }
    }

    v48 = v35;
    v49 = *v35;
    sub_1D9A552E4(v48 + *(v24 + 48), v23, type metadata accessor for VisualUnderstanding.ImageRegion);
    v50 = (v49 + 1);
    if (__OFADD__(v49, 1))
    {
      goto LABEL_82;
    }

    if (v36 < v50)
    {
      goto LABEL_83;
    }

    if (v50 != v36)
    {
      break;
    }

LABEL_5:
    v23 = v132;
    sub_1D9A55284(v132, type metadata accessor for VisualUnderstanding.ImageRegion);
    v24 = v137;
    v31 = v131;
    v35 = v130;
    v40 = v138;
  }

  v51 = *v23;
  v145 = *(v23 + 1);
  v146 = v51;
  v52 = v23[3];
  v144 = v23[2];
  v143 = *(v129 + 8);
  v53 = v136 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v54 = v49 + 1;
  while (v54 < v36)
  {
    if ((v50 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    sub_1D9A5521C(v53 + *(v10 + 72) * v54, v20, type metadata accessor for VisualUnderstanding.ImageRegion);
    v56 = v145;
    v55 = *&v146;
    *&v149.origin.x = v146;
    *&v149.origin.y = v145;
    v57 = v144;
    v149.size.width = v144;
    v149.size.height = v52;
    MidX = CGRectGetMidX(v149);
    v150.origin.x = v55;
    *&v150.origin.y = v56;
    v150.size.width = v57;
    v150.size.height = v52;
    MidY = CGRectGetMidY(v150);
    v60 = *v20;
    v61 = v20[1];
    v62 = v20[2];
    v63 = v20[3];
    v151.origin.x = *v20;
    v151.origin.y = v61;
    v151.size.width = v62;
    v151.size.height = v63;
    v64 = CGRectGetMidX(v151);
    v152.origin.x = v60;
    v152.origin.y = v61;
    v152.size.width = v62;
    v152.size.height = v63;
    v65 = CGRectGetMidY(v152);
    v66 = sqrt((MidX - v64) * (MidX - v64) + (MidY - v65) * (MidY - v65));
    sub_1D9A55284(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
    v67 = v66;
    if (v143 > v67)
    {
      v68 = (v39 + 4);
      v69 = v54;
      do
      {
        v70 = v69;
        if ((v69 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v69 >= v39[2])
        {
          break;
        }

        v69 = *&v68[8 * v69];
      }

      while (v70 != v69);
      v71 = v49;
      do
      {
        v72 = v71;
        if ((v71 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v71 >= v39[2])
        {
          break;
        }

        v71 = *&v68[8 * v71];
      }

      while (v72 != v71);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v70 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v39 = sub_1D9B1A6C0(v39);
        if ((v70 & 0x8000000000000000) != 0)
        {
LABEL_33:
          __break(1u);
          return MEMORY[0x1E69E7CC0];
        }
      }

      if (v70 >= v39[2])
      {
        goto LABEL_81;
      }

      v39[v70 + 4] = v72;
    }

    if (++v54 == v36)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

void sub_1D9A53F94(void **a1)
{
  v2 = *(_s14DetectedResultVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E918C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9A5403C(v5);
  *a1 = v3;
}

void sub_1D9A5403C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        _s14DetectedResultVMa();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(_s14DetectedResultVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9A543C0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9A54168(0, v2, 1, a1);
  }
}

void sub_1D9A54168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1D9A5521C(v23, v17, _s14DetectedResultVMa);
      sub_1D9A5521C(v20, v13, _s14DetectedResultVMa);
      v24 = *(v8 + 32);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_1D9A55284(v13, _s14DetectedResultVMa);
      sub_1D9A55284(v17, _s14DetectedResultVMa);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1D9A552E4(v23, v10, _s14DetectedResultVMa);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9A552E4(v10, v20, _s14DetectedResultVMa);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9A543C0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = _s14DetectedResultVMa();
  v118 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v107 - v16;
  v120 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_129:
      v102 = sub_1D99E8FDC(a4);
    }

    v124 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *&v102[16 * a4];
        v104 = v102;
        v105 = *&v102[16 * a4 + 24];
        sub_1D9A54D24(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *&v102[16 * a4 + 16], *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D99E8FDC(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_1D99E8F50(a4 - 1);
        v102 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v114 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v118 + 72);
      v5 = *v120 + v23 * v22;
      v117 = *v120;
      v24 = v117;
      sub_1D9A5521C(v117 + v23 * v22, v17, _s14DetectedResultVMa);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v122;
      sub_1D9A5521C(v25, v122, _s14DetectedResultVMa);
      v28 = *(v9 + 32);
      v29 = *&v17[v28];
      v30 = *(v27 + v28);
      sub_1D9A55284(v27, _s14DetectedResultVMa);
      sub_1D9A55284(v17, _s14DetectedResultVMa);
      v108 = v26;
      v31 = v26 + 2;
      v119 = v23;
      v32 = v117 + v23 * (v26 + 2);
      while (v18 != v31)
      {
        sub_1D9A5521C(v32, v17, _s14DetectedResultVMa);
        v33 = v122;
        sub_1D9A5521C(v5, v122, _s14DetectedResultVMa);
        v34 = *(v123 + 32);
        v35 = *&v17[v34];
        v36 = *(v33 + v34);
        sub_1D9A55284(v33, _s14DetectedResultVMa);
        sub_1D9A55284(v17, _s14DetectedResultVMa);
        ++v31;
        v32 += v119;
        v5 += v119;
        if (v30 < v29 == v36 >= v35)
        {
          v18 = v31 - 1;
          break;
        }
      }

      v21 = v108;
      a4 = v109;
      v9 = v123;
      if (v30 < v29)
      {
        if (v18 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v18)
        {
          v107 = v6;
          v37 = v119 * (v18 - 1);
          v38 = v18 * v119;
          v39 = v18;
          v40 = v18;
          v41 = v108;
          v42 = v108 * v119;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v43 + v42;
              sub_1D9A552E4(v43 + v42, v113, _s14DetectedResultVMa);
              if (v42 < v37 || v5 >= v43 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9A552E4(v113, v43 + v37, _s14DetectedResultVMa);
            }

            ++v41;
            v37 -= v119;
            v38 -= v119;
            v42 += v119;
          }

          while (v41 < v40);
          v6 = v107;
          v21 = v108;
          a4 = v109;
          v9 = v123;
          v18 = v39;
        }
      }
    }

    v44 = v120[1];
    if (v18 < v44)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v44)
        {
          v45 = v120[1];
        }

        else
        {
          v45 = v21 + a4;
        }

        if (v45 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v45)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v114;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v114 + 2) + 1, 1, v114);
    }

    a4 = *(v20 + 2);
    v46 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      v20 = sub_1D99E8FF0((v46 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v47 = &v20[16 * a4];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v20 + 4);
          v51 = *(v20 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v20[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v20[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v20[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v20[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v87 = v20;
        v88 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v49 + 40];
        sub_1D9A54D24(*v120 + *(v118 + 72) * v88, *v120 + *(v118 + 72) * *&v20[16 * v49 + 32], *v120 + *(v118 + 72) * v5, v48);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v87;
        }

        else
        {
          v89 = sub_1D99E8FDC(v87);
        }

        v9 = v123;
        if (a4 >= *(v89 + 2))
        {
          goto LABEL_110;
        }

        v90 = &v89[16 * a4];
        *(v90 + 4) = v88;
        *(v90 + 5) = v5;
        v124 = v89;
        sub_1D99E8F50(v49);
        v20 = v124;
        v5 = *(v124 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v20[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v20[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v20[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v120[1];
    a4 = v109;
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v21;
  a4 = *v120;
  v91 = *(v118 + 72);
  v92 = *v120 + v91 * (v18 - 1);
  v93 = -v91;
  v94 = v21 - v18;
  v111 = v91;
  v112 = v45;
  v5 = a4 + v18 * v91;
LABEL_86:
  v119 = v18;
  v115 = v5;
  v116 = v94;
  v117 = v92;
  v95 = v123;
  while (1)
  {
    sub_1D9A5521C(v5, v17, _s14DetectedResultVMa);
    v96 = v122;
    sub_1D9A5521C(v92, v122, _s14DetectedResultVMa);
    v97 = *(v95 + 32);
    v98 = *&v17[v97];
    v99 = *(v96 + v97);
    sub_1D9A55284(v96, _s14DetectedResultVMa);
    sub_1D9A55284(v17, _s14DetectedResultVMa);
    if (v99 >= v98)
    {
LABEL_85:
      v18 = v119 + 1;
      v19 = v112;
      v92 = v117 + v111;
      v94 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v21 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v100 = v121;
    sub_1D9A552E4(v5, v121, _s14DetectedResultVMa);
    v95 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9A552E4(v100, v92, _s14DetectedResultVMa);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_1D9A54D24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v46);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v24 = a4 + v17;
    if (v17 < 1)
    {
      v27 = a4 + v17;
    }

    else
    {
      v25 = -v13;
      v26 = a4 + v17;
      v27 = v24;
      v43 = v25;
      v44 = a4;
      do
      {
        v41[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v47;
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v27;
          v47 += v25;
          v32 = v26 + v25;
          sub_1D9A5521C(v32, v11, _s14DetectedResultVMa);
          v33 = v29;
          v34 = v29;
          v35 = v11;
          v36 = v45;
          sub_1D9A5521C(v34, v45, _s14DetectedResultVMa);
          v37 = *(v46 + 32);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v11 = v35;
          sub_1D9A55284(v40, _s14DetectedResultVMa);
          sub_1D9A55284(v35, _s14DetectedResultVMa);
          if (v39 < v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v44;
          v25 = v43;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v47 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v25 = v43;
        }

        else
        {
          v27 = v42;
          v25 = v43;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        sub_1D9A5521C(a2, v11, _s14DetectedResultVMa);
        v20 = v45;
        sub_1D9A5521C(a4, v45, _s14DetectedResultVMa);
        v21 = *(v46 + 32);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_1D9A55284(v20, _s14DetectedResultVMa);
        sub_1D9A55284(v11, _s14DetectedResultVMa);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_59:
  sub_1D9B01600(&v50, &v49, &v48);
}

uint64_t sub_1D9A5521C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A55284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A552E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D9A5534C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9C7B90C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 coordinate];
  v10 = v9;
  v11 = __exp10(a1);
  v12 = round(v11 * v10) / v11;
  [v2 coordinate];
  v14 = round(v11 * v13) / v11;
  [v2 horizontalAccuracy];
  v16 = round(v11 * v15) / v11;
  [v2 course];
  v18 = round(v11 * v17) / v11;
  sub_1D9C7B8FC();
  v19 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v20 = sub_1D9C7B8BC();
  v21 = [v19 initWithCoordinate:v20 altitude:v12 horizontalAccuracy:v14 verticalAccuracy:0.0 course:v16 speed:0.0 timestamp:{v18, 0.0}];

  (*(v5 + 8))(v8, v4);
  return v21;
}

uint64_t sub_1D9A554FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - v9;
  if (a1 <= 0)
  {
    static Logger.argos.getter(v35 - v9);
    v28 = sub_1D9C7D8BC();
    v29 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = a1;
      _os_log_impl(&dword_1D9962000, v28, v29, "Invalid s2 query level %ld", v30, 0xCu);
      MEMORY[0x1DA7405F0](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v18 = 0.0;
  }

  else
  {
    [v2 coordinate];
    v13 = v12 * 0.0174532925;
    [v2 coordinate];
    v15 = v14 * 0.0174532925;
    v16 = __sincos_stret(v13);
    v17 = __sincos_stret(v15);
    v35[0] = v16.__cosval * v17.__cosval;
    v35[1] = v16.__cosval * v17.__sinval;
    v35[2] = v16.__sinval;
    S2CellId.init(point:)(v35, &v36);
    v18 = v36;
    static Logger.argos.getter(v7);
    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E09C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      if (LOBYTE(v18))
      {
        v27 = 30;
      }

      else
      {
        v22 = HIDWORD(*&v18);
        if (LODWORD(v18))
        {
          LODWORD(v22) = LODWORD(v18);
        }

        v23 = -v22;
        if (__OFSUB__(0, v22))
        {
          goto LABEL_33;
        }

        v24 = 15;
        if (!LODWORD(v18))
        {
          v24 = -1;
        }

        v25 = v23 & v22;
        v26 = v24 + 8;
        if ((v25 & 0x5555) == 0)
        {
          v26 = v24;
        }

        if ((v25 & 0x550055) != 0)
        {
          v26 += 4;
        }

        if ((v25 & 0x5050505) != 0)
        {
          v26 += 2;
        }

        if ((v25 & 0x11111111) != 0)
        {
          v27 = v26 + 1;
        }

        else
        {
          v27 = v26;
        }
      }

      *(v21 + 4) = v27;
      v31 = v20;
      v32 = v21;
      _os_log_impl(&dword_1D9962000, v19, v31, "Level %ld", v21, 0xCu);
      MEMORY[0x1DA7405F0](v32, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v35[0] = v18;
    if (S2CellId.level.getter() > a1)
    {
      LOBYTE(v22) = 30;
      if (a1 <= 0x400000000000001ELL)
      {
        v22 = 2 * a1;
        if ((2 * a1 - 125) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          goto LABEL_26;
        }

        v23 = 60 - v22;
        if (((60 - v22) & 0x8000000000000000) == 0)
        {
          v33 = 1 << v23;
          if (v23 >= 0x40)
          {
            v33 = 0;
          }

          goto LABEL_30;
        }

LABEL_34:
        if (v23 > 0xFFFFFFFFFFFFFFC0)
        {
          v33 = 1uLL >> ((v22 + 4) & 0x3E);
          goto LABEL_30;
        }

LABEL_26:
        v33 = 0;
LABEL_30:
        *&v18 = *&v18 & -v33 | v33;
        return *&v18;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  return *&v18;
}

__CVBuffer *sub_1D9A55898(int a1)
{
  v2 = v1;
  v42 = sub_1D9C7D8DC();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  if (a1 == 1)
  {
    static Logger.argos.getter(v18);
    sub_1D9A3E0E0(v15);
    v25 = *(v4 + 8);
    v26 = v42;
    v25(v18, v42);
    v27 = sub_1D9C7D8BC();
    v28 = sub_1D9C7E09C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D9962000, v27, v28, "No rotation needed. Returned self without rotation.", v29, 2u);
      MEMORY[0x1DA7405F0](v29, -1, -1);
    }

    v25(v15, v26);
    return v2;
  }

  if (!a1)
  {
    static Logger.argos.getter(&v41 - v20);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9962000, v22, v23, "Invalid from orientation. Returned self without rotation.", v24, 2u);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    (*(v4 + 8))(v21, v42);
    return v2;
  }

  if (CVPixelBufferGetWidth(v2) < 1 || CVPixelBufferGetHeight(v2) <= 0)
  {
    static Logger.argos.getter(v12);
    sub_1D9A3E0E0(v9);
    v35 = *(v4 + 8);
    v36 = v42;
    v35(v12, v42);
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D9962000, v37, v38, "Do not rotate the image since its height or width is not larger than 0.", v39, 2u);
      MEMORY[0x1DA7405F0](v39, -1, -1);
    }

    v35(v9, v36);
    v34 = 1;
    goto LABEL_20;
  }

  result = VIRotateCVPixelBufferUsingVTSessionToUp(v2, a1);
  if (!result)
  {
    static Logger.argos.getter(v6);
    v31 = sub_1D9C7D8BC();
    v32 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D9962000, v31, v32, "Failed to rotate CVPixelBuffer", v33, 2u);
      MEMORY[0x1DA7405F0](v33, -1, -1);
    }

    (*(v4 + 8))(v6, v42);
    v34 = 0;
LABEL_20:
    sub_1D9A55D0C();
    swift_allocError();
    *v40 = v34;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D9A55D0C()
{
  result = qword_1ECB522E0;
  if (!qword_1ECB522E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB522E0);
  }

  return result;
}

unint64_t sub_1D9A55D74()
{
  result = qword_1ECB522E8;
  if (!qword_1ECB522E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB522E8);
  }

  return result;
}

uint64_t sub_1D9A55DC8(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52390);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52398);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB523A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A5A0BC();
  sub_1D9C7E96C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D9A5A110();
    sub_1D9C7E6AC();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D9A5A164();
    sub_1D9C7E6AC();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1D9A56090(uint64_t a1)
{
  v2 = sub_1D9A5A164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A560CC(uint64_t a1)
{
  v2 = sub_1D9A5A164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9A56108()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1D9A56144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000015 && 0x80000001D9CA6370 == a2;
  if (v6 || (sub_1D9C7E7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9CA6390 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9C7E7DC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9A56224(uint64_t a1)
{
  v2 = sub_1D9A5A0BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A56260(uint64_t a1)
{
  v2 = sub_1D9A5A0BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9A5629C(uint64_t a1)
{
  v2 = sub_1D9A5A110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A562D8(uint64_t a1)
{
  v2 = sub_1D9A5A110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9A56314@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9A58F44(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D9A56360()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_1D9C7D8DC();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7B80C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:13 inDomains:1];

  v17 = sub_1D9C7DF2C();
  if (*(v17 + 16))
  {
    (*(v9 + 16))(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    (*(v9 + 32))(v14, v11, v8);
    sub_1D9C7B79C();
    (*(v9 + 8))(v14, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    sub_1D9A59E80(v4, v1 + OBJC_IVAR____TtC12VisualLookUp14FileCacheUtils_cacheDirectoryURL);
  }

  else
  {
    v18 = v24;

    (*(v9 + 56))(v1 + OBJC_IVAR____TtC12VisualLookUp14FileCacheUtils_cacheDirectoryURL, 1, 1, v8);
    static Logger.argos.getter(v7);
    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D9962000, v19, v20, "FileCacheUtils init failed. The cachesDirectory is not available.", v21, 2u);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    (*(v18 + 8))(v7, v5);
  }

  return v1;
}

uint64_t sub_1D9A566F8()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v16 - v2;
  v4 = sub_1D9C7B80C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A58830(v0 + OBJC_IVAR____TtC12VisualLookUp14FileCacheUtils_cacheDirectoryURL, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D99A6AE0(v3, &qword_1ECB51FD0);
    sub_1D9A59974();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_1D9C7B77C();
    v16[0] = 0;
    v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v16];

    if (v12)
    {
      v13 = *(v5 + 8);
      v14 = v16[0];
      return v13(v7, v4);
    }

    else
    {
      v15 = v16[0];
      sub_1D9C7B70C();

      swift_willThrow();
      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1D9A56990@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v117 = *MEMORY[0x1E69E9840];
  v3 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9C7CF5C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7B50C();
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for EncryptedVisualSearchConfigCacheWrapper(0);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7D8DC();
  v109 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v94 - v20;
  v22 = sub_1D9C7B80C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v106 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v107 = &v94 - v29;
  v108 = v2;
  sub_1D9A58830(v2 + OBJC_IVAR____TtC12VisualLookUp14FileCacheUtils_cacheDirectoryURL, v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v94 = v13;
    v95 = v11;
    v96 = v6;
    v97 = v5;
    v32 = *(v23 + 32);
    v32(v25, v21, v22);
    v33 = NSHomeDirectory();
    v34 = sub_1D9C7DC7C();
    v36 = v35;

    *&v113[0] = sub_1D9C7B7DC();
    *(&v113[0] + 1) = v37;
    v115 = v34;
    v116 = v36;
    v111 = 0;
    v112 = 0xE000000000000000;
    sub_1D99A57F8();
    v38 = sub_1D9C7E2CC();
    v40 = v39;

    sub_1D9A59400(v38, v40);

    sub_1D9A566F8();
    v41 = (v23 + 8);
    v49 = v106;
    sub_1D9C7B79C();
    v50 = *(v23 + 8);
    (*v41)(v25, v22);
    v51 = v107;
    v52 = v32;
    v53 = v22;
    v52(v107, v49, v22);
    v54 = objc_opt_self();
    v55 = [v54 defaultManager];
    sub_1D9C7B7DC();
    v56 = sub_1D9C7DC4C();

    v57 = [v55 fileExistsAtPath_];

    if (v57)
    {
      v108 = v53;
      v58 = sub_1D9C7B81C();
      v60 = v59;
      v106 = v50;
      sub_1D9C7B54C();
      swift_allocObject();
      sub_1D9C7B53C();
      (*(v102 + 104))(v101, *MEMORY[0x1E6967F30], v103);
      sub_1D9C7B51C();
      sub_1D9A599E8(&qword_1ECB52308, type metadata accessor for EncryptedVisualSearchConfigCacheWrapper);
      v62 = v104;
      v61 = v105;
      sub_1D9C7B52C();
      v63 = v94;

      sub_1D99A5748(v58, v60);
      v64 = sub_1D9A59A8C(v61 + *(v62 + 24));
      v65 = v61;
      v66 = v110;
      if (v64)
      {
        v67 = v65[1];
        v115 = *v65;
        v116 = v67;
        v114 = 0;
        memset(v113, 0, sizeof(v113));
        sub_1D99AF2FC(v115, v67);
        sub_1D9C7D43C();
        sub_1D9A599E8(&qword_1ECB522F8, MEMORY[0x1E69BD9E8]);
        v68 = v100;
        v31 = v97;
        sub_1D9C7D67C();
        sub_1D9A59A30(v65);
        (v106)(v107, v108);
        v6 = v96;
        v93 = v68;
        v30 = v66;
        (*(v96 + 32))(v66, v93, v31);
        v47 = 0;
        return (*(v6 + 56))(v30, v47, 1, v31);
      }

      v69 = v98;
      static Logger.argos.getter(v98);
      v70 = sub_1D9C7D8BC();
      v71 = sub_1D9C7E08C();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v109;
      if (v72)
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1D9962000, v70, v71, "Failed to readEncryptedVisualSearchConfigCache due to expiration", v74, 2u);
        MEMORY[0x1DA7405F0](v74, -1, -1);
      }

      (*(v73 + 8))(v69, v95);
      v75 = [v54 defaultManager];
      v76 = v107;
      v77 = sub_1D9C7B77C();
      *&v113[0] = 0;
      v78 = [v75 removeItemAtURL:v77 error:v113];

      if (v78)
      {
        v79 = *&v113[0];
        sub_1D9A59A30(v105);
        (v106)(v76, v108);
        v47 = 1;
        v31 = v97;
        v6 = v96;
        v30 = v66;
        return (*(v6 + 56))(v30, v47, 1, v31);
      }

      v80 = *&v113[0];
      v81 = sub_1D9C7B70C();

      swift_willThrow();
      sub_1D9A59A30(v105);
      v31 = v97;
      v82 = v95;
      v30 = v66;
      v83 = v106;
      static Logger.argos.getter(v63);
      v84 = v81;
      v85 = sub_1D9C7D8BC();
      v86 = sub_1D9C7E0AC();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v87 = 138477827;
        v89 = v81;
        v90 = _swift_stdlib_bridgeErrorToNSError();
        *(v87 + 4) = v90;
        *v88 = v90;
        _os_log_impl(&dword_1D9962000, v85, v86, "Failed to readEncryptedVisualSearchConfigCache due to error %{private}@", v87, 0xCu);
        sub_1D99A6AE0(v88, &qword_1ECB510E8);
        v91 = v88;
        v63 = v94;
        MEMORY[0x1DA7405F0](v91, -1, -1);
        v92 = v87;
        v82 = v95;
        MEMORY[0x1DA7405F0](v92, -1, -1);
      }

      (*(v73 + 8))(v63, v82);
      v83(v107, v108);
      v47 = 1;
    }

    else
    {
      (v50)(v51, v53);
      v47 = 1;
      v30 = v110;
      v31 = v97;
    }

    v6 = v96;
    return (*(v6 + 56))(v30, v47, 1, v31);
  }

  sub_1D99A6AE0(v21, &qword_1ECB51FD0);
  v30 = v110;
  v31 = v5;
  static Logger.argos.getter(v18);
  v42 = sub_1D9C7D8BC();
  v43 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v11;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v113[0] = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_1D9A0E224(0x686361632D737665, 0xE900000000000065, v113);
    _os_log_impl(&dword_1D9962000, v42, v43, "Failed to readEncryptedVisualSearchConfigCache->getFileURL for %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x1DA7405F0](v46, -1, -1);
    MEMORY[0x1DA7405F0](v45, -1, -1);

    (*(v109 + 8))(v18, v44);
  }

  else
  {

    (*(v109 + 8))(v18, v11);
  }

  v47 = 1;
  return (*(v6 + 56))(v30, v47, 1, v31);
}

uint64_t sub_1D9A57658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v61 = a2;
  v68 = a1;
  v65 = sub_1D9C7B55C();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for EncryptedVisualSearchConfigCacheWrapper(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D9C7D8DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - v15;
  v17 = sub_1D9C7B80C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v69 = v4;
  v27 = v4 + OBJC_IVAR____TtC12VisualLookUp14FileCacheUtils_cacheDirectoryURL;
  v29 = v28;
  sub_1D9A58830(v27, v16);
  v30 = v18[6];
  v70 = v29;
  if (v30(v16, 1, v29) == 1)
  {
    sub_1D99A6AE0(v16, &qword_1ECB51FD0);
    static Logger.argos.getter(v13);
    v40 = sub_1D9C7D8BC();
    v41 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v75[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1D9A0E224(0x686361632D737665, 0xE900000000000065, v75);
      _os_log_impl(&dword_1D9962000, v40, v41, "Failed to getFileURL for %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x1DA7405F0](v43, -1, -1);
      MEMORY[0x1DA7405F0](v42, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    return 0;
  }

  else
  {
    v57 = v10;
    v58 = v26;
    v67 = v8;
    v59 = v7;
    v31 = v18[4];
    v31(v20, v16, v70);
    v32 = NSHomeDirectory();
    v33 = sub_1D9C7DC7C();
    v35 = v34;

    v75[0] = sub_1D9C7B7DC();
    v75[1] = v36;
    v73 = v33;
    v74 = v35;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1D99A57F8();
    v37 = sub_1D9C7E2CC();
    v39 = v38;

    sub_1D9A59400(v37, v39);

    sub_1D9A566F8();
    sub_1D9C7B79C();
    v44 = v18[1];
    v45 = v70;
    v44(v20, v70);
    v31(v58, v23, v45);
    sub_1D9C7CF5C();
    sub_1D9A599E8(&qword_1ECB522F8, MEMORY[0x1E69BD9E8]);
    v46 = sub_1D9C7D66C();
    v48 = v47;
    v49 = *(v64 + 24);
    v50 = sub_1D9C7B90C();
    v51 = v66;
    (*(*(v50 - 8) + 16))(v66 + v49, v60, v50);
    *v51 = v46;
    v51[1] = v48;
    v51[2] = v61;
    sub_1D9C7B59C();
    swift_allocObject();
    sub_1D9C7B58C();
    (*(v63 + 104))(v62, *MEMORY[0x1E6967FC8], v65);
    sub_1D9C7B56C();
    sub_1D9A599E8(&qword_1ECB52300, type metadata accessor for EncryptedVisualSearchConfigCacheWrapper);
    v52 = sub_1D9C7B57C();
    v54 = v53;
    v55 = v58;
    sub_1D9C7B89C();

    sub_1D99A5748(v52, v54);
    sub_1D9A59A30(v51);
    v44(v55, v70);
    return 1;
  }
}

uint64_t sub_1D9A57EEC()
{
  v76[2] = *MEMORY[0x1E69E9840];
  v1 = sub_1D9C7D8DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v71 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v64 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v64 - v10;
  v12 = sub_1D9C7B80C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  sub_1D9A58830(v0 + OBJC_IVAR____TtC12VisualLookUp14FileCacheUtils_cacheDirectoryURL, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D99A6AE0(v11, &qword_1ECB51FD0);
    static Logger.argos.getter(v8);
    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v76[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1D9A0E224(0x686361632D737665, 0xE900000000000065, v76);
      _os_log_impl(&dword_1D9962000, v32, v33, "Failed to getFileURL for %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1DA7405F0](v35, -1, -1);
      MEMORY[0x1DA7405F0](v34, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
    return 0;
  }

  v65 = v21;
  v68 = v2;
  v69 = v1;
  v66 = *(v13 + 32);
  v67 = v0;
  v66(v15, v11, v12);
  v22 = NSHomeDirectory();
  v23 = sub_1D9C7DC7C();
  v25 = v24;

  v76[0] = sub_1D9C7B7DC();
  v76[1] = v26;
  v74 = v23;
  v75 = v25;
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1D99A57F8();
  v27 = sub_1D9C7E2CC();
  v29 = v28;

  sub_1D9A59400(v27, v29);
  v30 = v12;
  v31 = v66;

  sub_1D9A566F8();
  sub_1D9C7B79C();
  v37 = v15;
  v38 = *(v13 + 8);
  v38(v37, v30);
  v39 = v65;
  v31(v65, v18, v30);
  v40 = v39;
  v41 = [objc_opt_self() defaultManager];
  v42 = sub_1D9C7B77C();
  v76[0] = 0;
  v43 = [v41 removeItemAtURL:v42 error:v76];

  if (v43)
  {
    v44 = v76[0];
    v38(v40, v30);
    return 1;
  }

  v45 = v76[0];
  v46 = sub_1D9C7B70C();

  swift_willThrow();
  v47 = sub_1D9C7B6FC();
  v48 = [v47 code];

  if (v48 != 4)
  {
    v54 = v71;
    static Logger.argos.getter(v71);
    v55 = v46;
    v56 = sub_1D9C7D8BC();
    v57 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = v38;
      v60 = swift_slowAlloc();
      *v58 = 138477827;
      v61 = v46;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_1D9962000, v56, v57, "Failed to deleteEncryptedVisualSearchConfigCache due to error %{private}@", v58, 0xCu);
      sub_1D99A6AE0(v60, &qword_1ECB510E8);
      v63 = v60;
      v38 = v59;
      MEMORY[0x1DA7405F0](v63, -1, -1);
      MEMORY[0x1DA7405F0](v58, -1, -1);
    }

    (*(v68 + 8))(v54, v69);
    v38(v40, v30);
    return 0;
  }

  v49 = v38;
  v50 = v70;
  static Logger.argos.getter(v70);
  v51 = sub_1D9C7D8BC();
  v52 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1D9962000, v51, v52, "Skipped deleteEncryptedVisualSearchConfigCache. File does not exists.", v53, 2u);
    MEMORY[0x1DA7405F0](v53, -1, -1);
  }

  (*(v68 + 8))(v50, v69);
  v49(v40, v30);
  return 1;
}

uint64_t sub_1D9A586AC()
{
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtC12VisualLookUp14FileCacheUtils_cacheDirectoryURL, &qword_1ECB51FD0);

  return swift_deallocClassInstance();
}

void sub_1D9A58748()
{
  sub_1D9A587D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D9A587D8()
{
  if (!qword_1EDD35450)
  {
    sub_1D9C7B80C();
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD35450);
    }
  }
}

uint64_t sub_1D9A58830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A588A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52338);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A5A004();
  sub_1D9C7E96C();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1D99AF2FC(v12, v9);
  sub_1D99DF2FC();
  sub_1D9C7E74C();
  sub_1D99A5748(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D9C7E72C();
    type metadata accessor for EncryptedVisualSearchConfigCacheWrapper(0);
    LOBYTE(v12) = 2;
    sub_1D9C7B90C();
    sub_1D9A599E8(&qword_1ECB52348, MEMORY[0x1E6969530]);
    sub_1D9C7E74C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D9A58AA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_1D9C7B90C();
  v17 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52350);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for EncryptedVisualSearchConfigCacheWrapper(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A5A004();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = a1;
  v12 = v19;
  v11 = v20;
  v23 = 0;
  sub_1D99DF350();
  sub_1D9C7E65C();
  v13 = v10;
  *v10 = v22;
  LOBYTE(v22) = 1;
  *(v10 + 2) = sub_1D9C7E63C();
  LOBYTE(v22) = 2;
  sub_1D9A599E8(&qword_1ECB52358, MEMORY[0x1E6969530]);
  v14 = v21;
  sub_1D9C7E65C();
  (*(v12 + 8))(v7, v14);
  (*(v17 + 32))(v13 + *(v8 + 24), v5, v11);
  sub_1D9A5A058(v13, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return sub_1D9A59A30(v13);
}

unint64_t sub_1D9A58E10()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x4164657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D9A58E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9A5A568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9A58E9C(uint64_t a1)
{
  v2 = sub_1D9A5A004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A58ED8(uint64_t a1)
{
  v2 = sub_1D9A5A004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9A58F44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52360);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52368);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52370);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A5A0BC();
  v11 = v26;
  sub_1D9C7E95C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D9C7E69C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D9A2E25C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D9C7E46C();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51D10);
    *v19 = &type metadata for FileCacheUtilsError;
    sub_1D9C7E59C();
    sub_1D9C7E45C();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D9A5A110();
    sub_1D9C7E58C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D9A5A164();
    sub_1D9C7E58C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v31 & 1;
}

uint64_t sub_1D9A59400(uint64_t a1, unint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = sub_1D9C7D8DC();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - v6;
  v47 = sub_1D9C7B5EC();
  v7 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_1D9C7DC4C();
  v11 = [v9 arrayForEntitlement_];

  v12 = sub_1D9C7DF2C();
  v13 = sub_1D9B80518(v12);

  if (v13)
  {
    v4 = (v13 & 0xFFFFFFFFFFFFFF8);
    if (v13 >> 62)
    {
LABEL_26:
      v45 = sub_1D9C7E50C();
    }

    else
    {
      v45 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v43 = v13;
    v44 = v13 & 0xC000000000000001;
    v41 = v4;
    v42 = (v7 + 8);
    while (1)
    {
      if (v45 == v14)
      {

        v30 = v38;
        static Logger.argos.getter(v38);
        v31 = v49;

        v32 = sub_1D9C7D8BC();
        v33 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v51 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_1D9A0E224(v48, v31, &v51);
          _os_log_impl(&dword_1D9962000, v32, v33, "VI verifyCacheDirectoryEntitlement failed. Value not found %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          MEMORY[0x1DA7405F0](v35, -1, -1);
          MEMORY[0x1DA7405F0](v34, -1, -1);
        }

        (*(v39 + 8))(v30, v40);
        goto LABEL_22;
      }

      if (v44)
      {
        v16 = MEMORY[0x1DA73E610](v14, v13);
        if (__OFADD__(v14, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        if (v14 >= *(v4 + 2))
        {
          __break(1u);
          goto LABEL_26;
        }

        v16 = *(v13 + 8 * v14 + 32);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_15;
        }
      }

      v53 = v16;
      v51 = sub_1D9C7DC7C();
      v52 = v17;
      v18 = v46;
      sub_1D9C7B5AC();
      sub_1D99A57F8();
      v19 = sub_1D9C7E2BC();
      v50 = v20;
      v21 = *v42;
      v7 = v47;
      (*v42)(v18, v47);

      v51 = v48;
      v52 = v49;
      sub_1D9C7B5AC();
      v22 = sub_1D9C7E2BC();
      v24 = v23;
      v25 = v18;
      v26 = v50;
      v21(v25, v7);
      if (v19 == v22 && v26 == v24)
      {
        break;
      }

      v15 = sub_1D9C7E7DC();

      ++v14;
      v13 = v43;
      v4 = v41;
      if (v15)
      {
      }
    }
  }

  else
  {
LABEL_16:
    static Logger.argos.getter(v4);
    v27 = sub_1D9C7D8BC();
    v28 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D9962000, v27, v28, "VI verifyCacheDirectoryEntitlement failed. Cannot cast read-write entitlement array.", v29, 2u);
      MEMORY[0x1DA7405F0](v29, -1, -1);
    }

    (*(v39 + 8))(v4, v40);
LABEL_22:
    sub_1D9A59974();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }
}

unint64_t sub_1D9A59974()
{
  result = qword_1ECB522F0;
  if (!qword_1ECB522F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB522F0);
  }

  return result;
}

uint64_t sub_1D9A599E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9A59A30(uint64_t a1)
{
  v2 = type metadata accessor for EncryptedVisualSearchConfigCacheWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9A59A8C(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1D9C7B9BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D9C7B9CC();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1D9C7B90C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v23 = &v22 - v16;
  sub_1D9C7B9AC();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A48], v1);
  sub_1D9C7B8EC();
  sub_1D9C7B99C();
  v22 = *(v12 + 8);
  v22(v14, v11);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v25);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D99A6AE0(v10, &qword_1ECB52310);
  }

  else
  {
    v17 = v23;
    (*(v12 + 32))(v23, v10, v11);
    sub_1D9A599E8(&qword_1ECB52318, MEMORY[0x1E6969530]);
    if ((sub_1D9C7DC1C() & 1) == 0)
    {
      sub_1D9C7B8EC();
      v19 = sub_1D9C7DC1C();
      v20 = v22;
      v22(v14, v11);
      v20(v17, v11);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    v22(v17, v11);
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D9A59E80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A59F18()
{
  result = sub_1D9C7B90C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9A59FB0()
{
  result = qword_1ECB52330;
  if (!qword_1ECB52330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52330);
  }

  return result;
}

unint64_t sub_1D9A5A004()
{
  result = qword_1ECB52340;
  if (!qword_1ECB52340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52340);
  }

  return result;
}

uint64_t sub_1D9A5A058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptedVisualSearchConfigCacheWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9A5A0BC()
{
  result = qword_1ECB52378;
  if (!qword_1ECB52378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52378);
  }

  return result;
}

unint64_t sub_1D9A5A110()
{
  result = qword_1ECB52380;
  if (!qword_1ECB52380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52380);
  }

  return result;
}

unint64_t sub_1D9A5A164()
{
  result = qword_1ECB52388;
  if (!qword_1ECB52388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52388);
  }

  return result;
}

unint64_t sub_1D9A5A1FC()
{
  result = qword_1ECB523A8;
  if (!qword_1ECB523A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523A8);
  }

  return result;
}

unint64_t sub_1D9A5A254()
{
  result = qword_1ECB523B0;
  if (!qword_1ECB523B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523B0);
  }

  return result;
}

unint64_t sub_1D9A5A2AC()
{
  result = qword_1ECB523B8;
  if (!qword_1ECB523B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523B8);
  }

  return result;
}

unint64_t sub_1D9A5A304()
{
  result = qword_1ECB523C0;
  if (!qword_1ECB523C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523C0);
  }

  return result;
}

unint64_t sub_1D9A5A35C()
{
  result = qword_1ECB523C8;
  if (!qword_1ECB523C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523C8);
  }

  return result;
}

unint64_t sub_1D9A5A3B4()
{
  result = qword_1ECB523D0;
  if (!qword_1ECB523D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523D0);
  }

  return result;
}

unint64_t sub_1D9A5A40C()
{
  result = qword_1ECB523D8;
  if (!qword_1ECB523D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523D8);
  }

  return result;
}

unint64_t sub_1D9A5A464()
{
  result = qword_1ECB523E0;
  if (!qword_1ECB523E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523E0);
  }

  return result;
}

unint64_t sub_1D9A5A4BC()
{
  result = qword_1ECB523E8;
  if (!qword_1ECB523E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523E8);
  }

  return result;
}

unint64_t sub_1D9A5A514()
{
  result = qword_1ECB523F0;
  if (!qword_1ECB523F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB523F0);
  }

  return result;
}

uint64_t sub_1D9A5A568(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D9CA6350 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9A5A698@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v36 - v19;
  sub_1D9A5AFF0(a3, v36 - v19);
  v21 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
LABEL_10:
    sub_1D9A5B060(&v37);
    static Logger.argos.getter(v11);
    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v32, v33, "Failed to get label converter", v34, 2u);
      MEMORY[0x1DA7405F0](v34, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v35 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
    return (*(*(v35 - 8) + 56))(a4, 1, 1, v35);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(&v38 + 1) = type metadata accessor for SignSymbolConverter();
    v39 = &off_1F552F5B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    v31 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
  }

  else
  {
    *(&v38 + 1) = type metadata accessor for QIDConverter();
    v39 = &off_1F552F1B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    v31 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
  }

  sub_1D9A5B1E0(v20, boxed_opaque_existential_1, v31);
  if (!*(&v38 + 1))
  {
    goto LABEL_10;
  }

  v36[1] = a4;
  sub_1D9979B9C(&v37, v40);
  static Logger.argos.getter(v17);
  sub_1D9A3E0E0(v14);
  v22 = *(v9 + 8);
  v22(v17, v8);

  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E09C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v37 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1D9A0E224(a1, a2, &v37);
    _os_log_impl(&dword_1D9962000, v23, v24, "Encoding caching label %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x1DA7405F0](v26, -1, -1);
    MEMORY[0x1DA7405F0](v25, -1, -1);
  }

  v22(v14, v8);
  v27 = v41;
  v28 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(v28 + 8))(a1, a2, v27, v28);
  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

uint64_t sub_1D9A5AB18(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  sub_1D9A5AFF0(a2, &v41 - v17);
  v19 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *(&v44 + 1) = type metadata accessor for SignSymbolConverter();
      v45 = &off_1F552F5B8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
      v33 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
    }

    else
    {
      *(&v44 + 1) = type metadata accessor for QIDConverter();
      v45 = &off_1F552F1B8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
      v33 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
    }

    sub_1D9A5B1E0(v18, boxed_opaque_existential_1, v33);
    if (*(&v44 + 1))
    {
      sub_1D9979B9C(&v43, v46);
      static Logger.argos.getter(v15);
      sub_1D9A3E0E0(v12);
      v20 = *(v7 + 8);
      v20(v15, v6);
      sub_1D9A5B0C8(v42, v5);
      v21 = sub_1D9C7D8BC();
      v22 = sub_1D9C7E09C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v41 = v6;
        v25 = v24;
        *&v43 = v24;
        *v23 = 136315138;
        sub_1D9A5B188();
        v26 = sub_1D9C7E7EC();
        v28 = v27;
        sub_1D9A5B12C(v5);
        v29 = sub_1D9A0E224(v26, v28, &v43);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_1D9962000, v21, v22, "Decoding caching label %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x1DA7405F0](v25, -1, -1);
        MEMORY[0x1DA7405F0](v23, -1, -1);

        v30 = v12;
        v31 = v41;
      }

      else
      {

        sub_1D9A5B12C(v5);
        v30 = v12;
        v31 = v6;
      }

      v20(v30, v31);
      v34 = v47;
      v35 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v36 = (*(v35 + 16))(v42, v34, v35);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      return v36;
    }
  }

  sub_1D9A5B060(&v43);
  static Logger.argos.getter(v9);
  v37 = sub_1D9C7D8BC();
  v38 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D9962000, v37, v38, "Failed to get label converter", v39, 2u);
    MEMORY[0x1DA7405F0](v39, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

uint64_t sub_1D9A5AFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A5B060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB523F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9A5B0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A5B12C(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9A5B188()
{
  result = qword_1EDD2D860;
  if (!qword_1EDD2D860)
  {
    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2D860);
  }

  return result;
}

uint64_t sub_1D9A5B1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A5B260(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      sub_1D99A17C8(v5, v10);
      sub_1D9979B9C(v10, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51140);
      type metadata accessor for E5Request();
      a1 = swift_dynamicCast();
      if ((a1 & 1) != 0 && v9)
      {
        MEMORY[0x1DA73E0E0]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D9C7DF4C();
        }

        a1 = sub_1D9C7DF6C();
        v3 = v11;
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  MEMORY[0x1EEE9AC00](a1);
  v7[2] = v2;
  sub_1D9B1858C(sub_1D9A5BBBC, v7, v3);
}

double sub_1D9A5B3C0()
{
  result = -5.48612928e303;
  dword_1EDD417B0 = -16777216;
  return result;
}

uint64_t sub_1D9A5B3D0()
{
  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo);
  v1 = OBJC_IVAR____TtC12VisualLookUp7E5Model_bundleURL;
  v2 = sub_1D9C7B80C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for E5Model()
{
  result = qword_1EDD2AA78;
  if (!qword_1EDD2AA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A5B4E0()
{
  result = type metadata accessor for MLModelInfo(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D9C7B80C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D9A5B5C4()
{

  swift_unknownObjectRelease();
  sub_1D9979BF4(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D9A5B678()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52410);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9C85660;
  *(v2 + 56) = type metadata accessor for E5Request();
  *(v2 + 64) = &off_1F552E2B0;
  *(v2 + 32) = v1;

  return v2;
}

uint64_t sub_1D9A5B6E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52450);
  v0 = swift_allocObject();
  v1 = sub_1D9A467F4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52458);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 24) = v2;
  result = sub_1D9B76440();
  qword_1EDD2B4F0 = result;
  return result;
}

uint64_t sub_1D9A5B770()
{
  v0 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D9C7E10C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A0835C(0, &qword_1EDD35490);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D9C7DA3C();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D9A5FB50(&qword_1EDD354A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460);
  sub_1D9A5FB98();
  sub_1D9C7E34C();
  result = sub_1D9C7E13C();
  qword_1EDD2B4D8 = result;
  return result;
}

id sub_1D9A5B9B0()
{
  result = [objc_opt_self() hasANE];
  byte_1EDD2B4C0 = result;
  return result;
}

id sub_1D9A5B9E4()
{
  result = MTLCreateSystemDefaultDevice();
  qword_1ECB52408 = result;
  return result;
}

uint64_t sub_1D9A5BA04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDD2B4C8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDD2B4D8;
  sub_1D9A5BFE0(a2, v13);
  v5 = swift_allocObject();
  v6 = v13[3];
  *(v5 + 48) = v13[2];
  *(v5 + 64) = v6;
  *(v5 + 80) = v13[4];
  v7 = v13[1];
  *(v5 + 16) = v13[0];
  *(v5 + 32) = v7;
  *(v5 + 96) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D9A5C018;
  *(v8 + 24) = v5;
  v12[4] = sub_1D9A5C04C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D9A5C074;
  v12[3] = &block_descriptor_1;
  v9 = _Block_copy(v12);

  dispatch_sync(v4, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1D9A5BBD8(void *a1, uint64_t a2)
{
  v4 = sub_1D9C7B80C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D9C7D8DC();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = MEMORY[0x1DA73F560](v6);
  sub_1D9A5C0B4(a2, a1, &v9);
  objc_autoreleasePoolPop(v7);
  v8 = *(a2 + 40);
  if (v8)
  {
    v8(a2, 0);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9A5C0B4(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v52 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 88))
  {
    v11 = *(a1 + 88);
  }

  else
  {
    sub_1D99A3FE8(*(a1 + 16) + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo, v10);
    v11 = sub_1D99AA820();
    sub_1D99A404C(v10);
  }

  v12 = qword_1EDD2B4E0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_1D9A5CA38(a1, v11);
  v14 = v5;
  if (v5)
  {

LABEL_17:
    *a3 = v14;
    return;
  }

  v15 = v13;
  v49 = a3;
  v16 = [v13 inputNames];
  v17 = sub_1D9C7DF2C();

  v18 = *(v17 + 16);

  if (v18 != 1)
  {
    goto LABEL_14;
  }

  v19 = [v15 inputNames];
  v20 = sub_1D9C7DF2C();

  if (!*(v20 + 16))
  {

LABEL_14:

    v26 = 0x80000001D9CA6470;
    sub_1D99A182C();
    v14 = swift_allocError();
    v28 = 0xD00000000000002ELL;
LABEL_15:
    *v27 = v28;
    *(v27 + 8) = v26;
    *(v27 + 16) = 2;
    swift_willThrow();
LABEL_16:

    a3 = v49;
    goto LABEL_17;
  }

  v21 = sub_1D9C7DC4C();

  v22 = [v15 getInputImageBuffer_];

  if (!v22)
  {

    v26 = 0x80000001D9CA64A0;
    sub_1D99A182C();
    v14 = swift_allocError();
    v28 = 0xD000000000000028;
    goto LABEL_15;
  }

  v23 = *(a1 + 16);
  v47 = *(v8 + 32);
  v24 = v23 + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo;
  v25 = *(v23 + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo + v47);
  v48 = v22;
  if (v25 < 2 && v25)
  {

    v29 = v47;
  }

  else
  {
    v30 = sub_1D9C7E7DC();

    if (v30)
    {
      v29 = v47;
    }

    else
    {
      v31 = v24;
      v32 = a2[8];
      v33 = a2[9];
      __swift_project_boxed_opaque_existential_1(a2 + 5, v32);
      v34 = *(v23 + OBJC_IVAR____TtC12VisualLookUp7E5Model_borderFillBGRA);
      v35 = *(a1 + 24);
      v29 = v47;
      v46 = v31;
      v36 = *(v31 + v47);
      v37 = *(a1 + 72);
      v50[0] = *(a1 + 56);
      v50[1] = v37;
      (*(v33 + 8))(v36, a2, v48, v34, v35, v50, *(a1 + 104), v32, v33);
      v24 = v46;
    }
  }

  if (qword_1EDD2B4B0 != -1)
  {
    swift_once();
  }

  if ((byte_1EDD2B4C0 & 1) == 0)
  {
    if (qword_1ECB509C8 != -1)
    {
      swift_once();
    }

    if (qword_1ECB52408)
    {
      v38 = v48;
      CVPixelBufferLockBaseAddress(v48, 0);
      CVPixelBufferUnlockBaseAddress(v38, 0);
    }
  }

  sub_1D99A7E00(*(v24 + v29), v51);
  v39 = *(a1 + 104);
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  sub_1D9AFD4B8(v51, v39);

  v40 = sub_1D9C7DF1C();
  *&v50[0] = 0;
  v41 = [v15 executeAndGet:v40 error:v50];

  v42 = *&v50[0];
  if (!v41)
  {
    v45 = *&v50[0];

    v14 = sub_1D9C7B70C();

    swift_willThrow();

    goto LABEL_16;
  }

  sub_1D9A0835C(0, &qword_1EDD2C450);
  v43 = sub_1D9C7DB4C();
  v44 = v42;

  type metadata accessor for EngineResult();
  swift_allocObject();
  *(a1 + 96) = sub_1D9BDC864(v11, v43);

  sub_1D9AFCCA4();
}

uint64_t sub_1D9A5C808(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = a2(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v22[1] = v7;
  result = sub_1D9C7E79C();
  if (result >= v7)
  {
    if (v7 >= 2)
    {
      v12 = -1;
      v13 = 1;
      v14 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      do
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v13);
        v16 = v12;
        v17 = v14;
        do
        {
          v18 = *v17;
          if (*(*v17 + *(**v17 + 112)) >= *(v15 + *(*v15 + 112)))
          {
            break;
          }

          *v17 = v15;
          v17[1] = v18;
          --v17;
        }

        while (!__CFADD__(v16++, 1));
        ++v13;
        v14 += 8;
        --v12;
      }

      while (v13 != v7);
    }
  }

  else
  {
    v9 = result;
    v10 = v7 >> 1;
    if (v7 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      v11 = sub_1D9C7DF5C();
      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
    v20[1] = v10;
    sub_1D9A5EAE0(v20, v21, v22, v9);
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1D9A5C9A0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

unint64_t sub_1D9A5CA38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9C7D8DC();
  v38 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v42 = a1;
  v40[0] = 0x656E69676E454C4DLL;
  v40[1] = 0xE800000000000000;
  v40[2] = "RunnerCache.getRunner";
  v40[3] = 21;
  v11 = 2;
  v41 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v34 = sub_1D9AFD4B8(v40, 0);
  sub_1D9B7667C();
  v12 = *(a1 + 16) + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo;
  v13 = *(v12 + *(type metadata accessor for MLModelInfo(0) + 32));
  v35 = v2;
  v36 = a2;
  if (v13 <= 3)
  {
    if (v13 >= 3)
    {
      v11 = 1;
      v33 = 2;
      v16 = 1;
    }

    else
    {
      v16 = 0;
      v33 = 1;
    }

    v14 = v5;
    v15 = v38;
    goto LABEL_12;
  }

  if (v13 <= 5)
  {
    v14 = v5;
    goto LABEL_9;
  }

  v14 = v5;
  if (v13 == 6)
  {
LABEL_9:
    v11 = 1;
    v33 = 2;
    v16 = 1;
    v15 = v38;
    goto LABEL_12;
  }

  v15 = v38;
  if (v13 == 7)
  {
    v16 = 1;
    v33 = 2;
    v11 = 1;
  }

  else
  {
    v11 = 1;
    v33 = 2;
    v16 = 1;
  }

LABEL_12:
  static Logger.argos.getter(v10);
  sub_1D9A3E0E0(v8);
  v19 = *(v15 + 8);
  v17 = v15 + 8;
  v18 = v19;
  v19(v10, v14);
  v20 = sub_1D9C7D8BC();
  v21 = sub_1D9C7E09C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v14;
    v24 = v23;
    v39 = v23;
    *v22 = 136315394;
    if (v16)
    {
      v25 = 0x686372616573;
    }

    else
    {
      v25 = 0x6573726170;
    }

    v38 = v17;
    if (v16)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v26 = sub_1D9A0E224(v25, v17, &v39);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v11;
    _os_log_impl(&dword_1D9962000, v20, v21, "RunnerCache.getRunner: %s %ld", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x1DA7405F0](v24, -1, -1);
    MEMORY[0x1DA7405F0](v22, -1, -1);

    v27 = v18(v8, v32);
  }

  else
  {

    v27 = v18(v8, v14);
  }

  v28 = *(v35 + 24);
  MEMORY[0x1EEE9AC00](v27);
  *(&v31 - 4) = v11;
  *(&v31 - 24) = v33;
  *(&v31 - 2) = &v42;
  *(&v31 - 1) = v36;

  os_unfair_lock_lock(v28 + 6);
  v29 = v37;
  sub_1D9A5F694(&v28[4], &v39);
  os_unfair_lock_unlock(v28 + 6);
  if (!v29)
  {
    v17 = v39;
  }

  sub_1D9AFCCA4();

  return v17;
}

unint64_t sub_1D9A5CE6C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9C7D8DC();
  v38 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v42 = a1;
  v40[0] = 0x656E69676E454C4DLL;
  v40[1] = 0xE800000000000000;
  v40[2] = "RunnerCache.getRunner";
  v40[3] = 21;
  v11 = 2;
  v41 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v34 = sub_1D9AFD4B8(v40, 0);
  sub_1D9B7667C();
  v12 = a1 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model;
  v13 = *(v12 + *(type metadata accessor for MLModelInfo(0) + 32));
  v35 = v2;
  v36 = a2;
  if (v13 <= 3)
  {
    if (v13 >= 3)
    {
      v11 = 1;
      v33 = 2;
      v16 = 1;
    }

    else
    {
      v16 = 0;
      v33 = 1;
    }

    v14 = v5;
    v15 = v38;
    goto LABEL_12;
  }

  if (v13 <= 5)
  {
    v14 = v5;
    goto LABEL_9;
  }

  v14 = v5;
  if (v13 == 6)
  {
LABEL_9:
    v11 = 1;
    v33 = 2;
    v16 = 1;
    v15 = v38;
    goto LABEL_12;
  }

  v15 = v38;
  if (v13 == 7)
  {
    v16 = 1;
    v33 = 2;
    v11 = 1;
  }

  else
  {
    v11 = 1;
    v33 = 2;
    v16 = 1;
  }

LABEL_12:
  static Logger.argos.getter(v10);
  sub_1D9A3E0E0(v8);
  v19 = *(v15 + 8);
  v17 = v15 + 8;
  v18 = v19;
  v19(v10, v14);
  v20 = sub_1D9C7D8BC();
  v21 = sub_1D9C7E09C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v14;
    v24 = v23;
    v39 = v23;
    *v22 = 136315394;
    if (v16)
    {
      v25 = 0x686372616573;
    }

    else
    {
      v25 = 0x6573726170;
    }

    v38 = v17;
    if (v16)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v26 = sub_1D9A0E224(v25, v17, &v39);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v11;
    _os_log_impl(&dword_1D9962000, v20, v21, "RunnerCache.getRunner: %s %ld", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x1DA7405F0](v24, -1, -1);
    MEMORY[0x1DA7405F0](v22, -1, -1);

    v27 = v18(v8, v32);
  }

  else
  {

    v27 = v18(v8, v14);
  }

  v28 = *(v35 + 24);
  MEMORY[0x1EEE9AC00](v27);
  *(&v31 - 4) = v11;
  *(&v31 - 24) = v33;
  *(&v31 - 2) = &v42;
  *(&v31 - 1) = v36;

  os_unfair_lock_lock(v28 + 6);
  v29 = v37;
  sub_1D9A5FBFC(&v28[4], &v39);
  os_unfair_lock_unlock(v28 + 6);
  if (!v29)
  {
    v17 = v39;
  }

  sub_1D9AFCCA4();

  return v17;
}

uint64_t sub_1D9A5D2A0(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (*(*a1 + 16) && (sub_1D99EE458(a3), (v10 & 1) != 0))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52430);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52438);
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 16) = MEMORY[0x1E69E7CC0];
    *(v11 + 16) = a2;
    *(v11 + 24) = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    sub_1D9C118B0(v11, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v17;
  }

  v18[0] = 0x656E69676E454C4DLL;
  v18[1] = 0xE800000000000000;
  v18[2] = "RunnerCacheCategory.getRunner";
  v18[3] = 29;
  v19 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v18, 0);
  v14 = sub_1D9A5D6A8(a4, a5);
  if (v14)
  {
    a5 = v14;
  }

  else
  {
    sub_1D99A182C();
    swift_allocError();
    *v15 = 0xD000000000000020;
    *(v15 + 8) = 0x80000001D9CA6510;
    *(v15 + 16) = 6;
    swift_willThrow();
  }

  sub_1D9AFCCA4();

  return a5;
}

uint64_t sub_1D9A5D4A4(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (*(*a1 + 16) && (sub_1D99EE458(a3), (v10 & 1) != 0))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52470);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52478);
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 16) = MEMORY[0x1E69E7CC0];
    *(v11 + 16) = a2;
    *(v11 + 24) = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    sub_1D9C1255C(v11, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v17;
  }

  v18[0] = 0x656E69676E454C4DLL;
  v18[1] = 0xE800000000000000;
  v18[2] = "RunnerCacheCategory.getRunner";
  v18[3] = 29;
  v19 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v18, 0);
  v14 = sub_1D9A5D94C(a4, a5);
  if (v14)
  {
    a5 = v14;
  }

  else
  {
    sub_1D99A182C();
    swift_allocError();
    *v15 = 0xD000000000000020;
    *(v15 + 8) = 0x80000001D9CA6510;
    *(v15 + 16) = 6;
    swift_willThrow();
  }

  sub_1D9AFCCA4();

  return a5;
}

uint64_t sub_1D9A5D6A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9C7B80C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52440);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v24 = a1;
  v25[0] = 0x656E69676E454C4DLL;
  v25[1] = 0xE800000000000000;
  v25[2] = "RunnerCacheCategory.requireRunner";
  v25[3] = 33;
  v26 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v25, 0);
  v13 = *(a1 + 16) + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo;
  v14 = type metadata accessor for MLModelInfo(0);
  (*(v7 + 16))(v9, v13 + *(v14 + 20), v6);
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = [*(a1 + 32) registryID];
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(v7 + 32))(v12, v9, v6);
  v18 = &v12[*(v10 + 36)];
  *v18 = v16;
  v18[8] = v15 == 0;
  *&v12[*(v10 + 40)] = a2;
  v19 = *(v3 + 24);
  MEMORY[0x1EEE9AC00](v17);
  *(&v22 - 4) = v12;
  *(&v22 - 3) = &v24;
  *(&v22 - 2) = v3;
  *(&v22 - 1) = a2;

  os_unfair_lock_lock((v19 + 24));
  sub_1D9A5F6C0((v19 + 16), &v23);
  os_unfair_lock_unlock((v19 + 24));
  v20 = v23;
  sub_1D99A6AE0(v12, &unk_1ECB52440);
  sub_1D9AFCCA4();

  return v20;
}

uint64_t sub_1D9A5D94C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9C7B80C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52480);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v24 = a1;
  v25[0] = 0x656E69676E454C4DLL;
  v25[1] = 0xE800000000000000;
  v25[2] = "RunnerCacheCategory.requireRunner";
  v25[3] = 33;
  v26 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v25, 0);
  v13 = a1 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model;
  v14 = type metadata accessor for MLModelInfo(0);
  (*(v7 + 16))(v9, v13 + *(v14 + 20), v6);
  v15 = *(v13 + *(type metadata accessor for EspressoModel(0) + 20));
  if (v15)
  {
    v16 = [v15 registryID];
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(v7 + 32))(v12, v9, v6);
  v18 = &v12[*(v10 + 36)];
  *v18 = v16;
  v18[8] = v15 == 0;
  *&v12[*(v10 + 40)] = a2;
  v19 = *(v3 + 24);
  MEMORY[0x1EEE9AC00](v17);
  *(&v22 - 4) = v12;
  *(&v22 - 3) = &v24;
  *(&v22 - 2) = v3;
  *(&v22 - 1) = a2;

  os_unfair_lock_lock((v19 + 24));
  sub_1D9A5FC6C((v19 + 16), &v23);
  os_unfair_lock_unlock((v19 + 24));
  v20 = v23;
  sub_1D99A6AE0(v12, &qword_1ECB52480);
  sub_1D9AFCCA4();

  return v20;
}

id sub_1D9A5DBFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v21[2] = a2;
  v11 = sub_1D9B18574(sub_1D9A5FCA4, v21, v10);
  if (v11)
  {
    v12 = v11;
    sub_1D9C7B8AC();
    *(v12 + *(*v12 + 112)) = v13;
    v14 = *(v12 + *(*v12 + 104));
  }

  else
  {
    v15 = a3 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model;
    v16 = type metadata accessor for MLModelInfo(0);
    sub_1D99A81F0(*(v15 + *(v16 + 32)), v22);
    v17 = *(a3 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket);
    type metadata accessor for DurationMeasurement();
    swift_allocObject();

    sub_1D9AFD4B8(v22, v17);

    v18 = sub_1D9A5FCD8(a3, a5);
    v14 = v18;
    if (*(a4 + 16) >= 1 && v18)
    {
      v19 = v18;
      sub_1D9A5E494(a1, a2, v19);
    }

    sub_1D9AFCCA4();
  }

  return v14;
}

uint64_t sub_1D9A5DD8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + *(*a1 + 96);
  if ((sub_1D9C7B7BC() & 1) == 0)
  {
    return 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v7 = *(v6 + 36);
  v8 = (v5 + v7);
  v9 = *(v5 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return sub_1D9A1EF04(*(v5 + *(v6 + 40)), *(a2 + *(v6 + 40))) & 1;
}

unint64_t sub_1D9A5DE48(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v65 = a3;
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v59 - v7;
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v59 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - v23;
  static Logger.argos.getter(&v59 - v23);
  sub_1D9A3E0E0(v22);
  v25 = *(v9 + 8);
  v25(v24, v8);
  v26 = sub_1D9C7D8BC();
  v27 = sub_1D9C7E09C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v60 = v4;
    v29 = v8;
    v30 = v25;
    v31 = v14;
    v32 = v17;
    v33 = a1;
    v34 = v28;
    *v28 = 0;
    _os_log_impl(&dword_1D9962000, v26, v27, "RunnerCache.updateCache", v28, 2u);
    v35 = v34;
    a1 = v33;
    v17 = v32;
    v14 = v31;
    v25 = v30;
    v8 = v29;
    v4 = v60;
    MEMORY[0x1DA7405F0](v35, -1, -1);
  }

  v25(v22, v8);
  if (*a1 >> 62)
  {
    if (!sub_1D9C7E50C())
    {
      goto LABEL_15;
    }

    v36 = sub_1D9C7E50C();
  }

  else
  {
    v36 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_15;
    }
  }

  if (v36 == *(v4 + 16))
  {
    v37 = v61;
    static Logger.argos.getter(v61);
    sub_1D9A3E0E0(v17);
    v25(v37, v8);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E09C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v17;
      v41 = a1;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D9962000, v38, v39, "RunnerCache.updateCache: pop oldest", v42, 2u);
      v43 = v42;
      a1 = v41;
      v17 = v40;
      MEMORY[0x1DA7405F0](v43, -1, -1);
    }

    v25(v17, v8);
    sub_1D9A5C808(a1, sub_1D9B1A838, &qword_1ECB51BF0);
    if (*a1 >> 62)
    {
      if (sub_1D9C7E50C())
      {
LABEL_10:
        if (sub_1D9A5F620(sub_1D9B1A838))
        {
LABEL_14:

          goto LABEL_15;
        }

        if (!(*a1 >> 62))
        {
          v44 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v45 = __OFSUB__(v44, 1);
          result = v44 - 1;
          if (!v45)
          {
LABEL_13:
            sub_1D9A5C9A0(result, sub_1D9B1A838);
            goto LABEL_14;
          }

LABEL_26:
          __break(1u);
          return result;
        }

LABEL_24:
        v58 = sub_1D9C7E50C();
        v45 = __OFSUB__(v58, 1);
        result = v58 - 1;
        if (!v45)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }
    }

    else if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  static Logger.argos.getter(v14);
  v47 = v62;
  sub_1D9A3E0E0(v62);
  v25(v14, v8);
  v48 = sub_1D9C7D8BC();
  v49 = sub_1D9C7E09C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1D9962000, v48, v49, "RunnerCache.updateCache: push", v50, 2u);
    MEMORY[0x1DA7405F0](v50, -1, -1);
  }

  v25(v47, v8);
  v51 = v64;
  sub_1D99AB100(v63, v64, &unk_1ECB52440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51BF0);
  v52 = swift_allocObject();
  sub_1D99AB100(v51, v52 + *(*v52 + 96), &unk_1ECB52440);
  v53 = v65;
  *(v52 + *(*v52 + 104)) = v65;
  v54 = v53;
  sub_1D9C7B8AC();
  v56 = v55;
  v57 = sub_1D99A6AE0(v51, &unk_1ECB52440);
  *(v52 + *(*v52 + 112)) = v56;
  MEMORY[0x1DA73E0E0](v57);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D9C7DF4C();
  }

  return sub_1D9C7DF6C();
}

unint64_t sub_1D9A5E494(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v65 = a3;
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52480);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v59 - v7;
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v59 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - v23;
  static Logger.argos.getter(&v59 - v23);
  sub_1D9A3E0E0(v22);
  v25 = *(v9 + 8);
  v25(v24, v8);
  v26 = sub_1D9C7D8BC();
  v27 = sub_1D9C7E09C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v60 = v4;
    v29 = v8;
    v30 = v25;
    v31 = v14;
    v32 = v17;
    v33 = a1;
    v34 = v28;
    *v28 = 0;
    _os_log_impl(&dword_1D9962000, v26, v27, "RunnerCache.updateCache", v28, 2u);
    v35 = v34;
    a1 = v33;
    v17 = v32;
    v14 = v31;
    v25 = v30;
    v8 = v29;
    v4 = v60;
    MEMORY[0x1DA7405F0](v35, -1, -1);
  }

  v25(v22, v8);
  if (*a1 >> 62)
  {
    if (!sub_1D9C7E50C())
    {
      goto LABEL_15;
    }

    v36 = sub_1D9C7E50C();
  }

  else
  {
    v36 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_15;
    }
  }

  if (v36 == *(v4 + 16))
  {
    v37 = v61;
    static Logger.argos.getter(v61);
    sub_1D9A3E0E0(v17);
    v25(v37, v8);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E09C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v17;
      v41 = a1;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D9962000, v38, v39, "RunnerCache.updateCache: pop oldest", v42, 2u);
      v43 = v42;
      a1 = v41;
      v17 = v40;
      MEMORY[0x1DA7405F0](v43, -1, -1);
    }

    v25(v17, v8);
    sub_1D9A5C808(a1, sub_1D9B1A838, &qword_1ECB51BF8);
    if (*a1 >> 62)
    {
      if (sub_1D9C7E50C())
      {
LABEL_10:
        if (sub_1D9A5F620(sub_1D9B1A838))
        {
LABEL_14:

          goto LABEL_15;
        }

        if (!(*a1 >> 62))
        {
          v44 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v45 = __OFSUB__(v44, 1);
          result = v44 - 1;
          if (!v45)
          {
LABEL_13:
            sub_1D9A5C9A0(result, sub_1D9B1A838);
            goto LABEL_14;
          }

LABEL_26:
          __break(1u);
          return result;
        }

LABEL_24:
        v58 = sub_1D9C7E50C();
        v45 = __OFSUB__(v58, 1);
        result = v58 - 1;
        if (!v45)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }
    }

    else if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  static Logger.argos.getter(v14);
  v47 = v62;
  sub_1D9A3E0E0(v62);
  v25(v14, v8);
  v48 = sub_1D9C7D8BC();
  v49 = sub_1D9C7E09C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1D9962000, v48, v49, "RunnerCache.updateCache: push", v50, 2u);
    MEMORY[0x1DA7405F0](v50, -1, -1);
  }

  v25(v47, v8);
  v51 = v64;
  sub_1D99AB100(v63, v64, &qword_1ECB52480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51BF8);
  v52 = swift_allocObject();
  sub_1D99AB100(v51, v52 + *(*v52 + 96), &qword_1ECB52480);
  v53 = v65;
  *(v52 + *(*v52 + 104)) = v65;
  v54 = v53;
  sub_1D9C7B8AC();
  v56 = v55;
  v57 = sub_1D99A6AE0(v51, &qword_1ECB52480);
  *(v52 + *(*v52 + 112)) = v56;
  MEMORY[0x1DA73E0E0](v57);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D9C7DF4C();
  }

  return sub_1D9C7DF6C();
}

uint64_t sub_1D9A5EAE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v103 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v4 = *v103;
    if (*v103)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_128;
    }

    goto LABEL_164;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8 * v8);
    v10 = *v9;
    v11 = *(v9 + *(*v9 + 112));
    v12 = *(*(*a3 + 8 * v6) + *(**(*a3 + 8 * v6) + 112));
    v13 = v6 + 2;
    do
    {
      if (v5 == v13)
      {
        v8 = v5;
        if (v12 >= v11)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v14 = *(*a3 + 8 * v13);
      v15 = (v12 < v11) ^ (*(v9 + *(v10 + 112)) >= *(v14 + *(*v14 + 112)));
      ++v13;
      v10 = *v14;
      v9 = v14;
    }

    while ((v15 & 1) != 0);
    v8 = v13 - 1;
    if (v12 >= v11)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_155;
    }

    if (v6 < v8)
    {
      v16 = 8 * v8 - 8;
      v17 = 8 * v6;
      v18 = v8;
      v19 = v6;
      do
      {
        if (v19 != --v18)
        {
          v20 = *a3;
          if (!*a3)
          {
            goto LABEL_161;
          }

          v21 = *(v20 + v17);
          *(v20 + v17) = *(v20 + v16);
          *(v20 + v16) = v21;
        }

        ++v19;
        v16 -= 8;
        v17 += 8;
      }

      while (v19 < v18);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_154;
      }

      if (v8 - v6 < a4)
      {
        v22 = v6 + a4;
        if (__OFADD__(v6, a4))
        {
          goto LABEL_156;
        }

        if (v22 >= v5)
        {
          v22 = v5;
        }

        if (v22 < v6)
        {
          goto LABEL_157;
        }

        if (v8 != v22)
        {
          v23 = *a3;
          v24 = *a3 + 8 * v8 - 8;
          v25 = v6 - v8;
          do
          {
            v26 = *(v23 + 8 * v8);
            v27 = v25;
            v28 = v24;
            do
            {
              v29 = *v28;
              if (*(*v28 + *(**v28 + 112)) >= *(v26 + *(*v26 + 112)))
              {
                break;
              }

              if (!v23)
              {
                goto LABEL_158;
              }

              *v28 = v26;
              v28[1] = v29;
              --v28;
            }

            while (!__CFADD__(v27++, 1));
            ++v8;
            v24 += 8;
            --v25;
          }

          while (v8 != v22);
          v8 = v22;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v32 = *(v7 + 2);
    v31 = *(v7 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_1D99E8FF0((v31 > 1), v32 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v33;
    v34 = &v7[16 * v32];
    *(v34 + 4) = v6;
    *(v34 + 5) = v8;
    v105 = v8;
    v35 = *v103;
    if (!*v103)
    {
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = v105;
    v5 = a3[1];
    if (v105 >= v5)
    {
      goto LABEL_126;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v7[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_140;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_141;
      }

      v48 = &v7[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_143;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_146;
      }

      if (v52 >= v44)
      {
        v70 = &v7[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_150;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v33 == 3)
    {
      v37 = *(v7 + 4);
      v38 = *(v7 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_56:
      if (v40)
      {
        goto LABEL_142;
      }

      v53 = &v7[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_145;
      }

      v59 = &v7[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_148;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_149;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v63 = &v7[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_70:
    if (v58)
    {
      goto LABEL_144;
    }

    v66 = &v7[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_147;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v36 - 1 >= v33)
    {
      break;
    }

    v74 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v110 = v36;
    v111 = v7;
    v107 = v36 - 1;
    v75 = *&v7[16 * v36 + 32];
    v76 = *&v7[16 * v36 + 40];
    v108 = *&v7[16 * v36 + 16];
    v109 = v76;
    v7 = (8 * v108);
    v77 = (v74 + 8 * v108);
    v78 = 8 * v75;
    v79 = (v74 + 8 * v75);
    v80 = 8 * v76;
    v81 = (v74 + 8 * v76);
    v82 = 8 * v75 - 8 * v108;
    v83 = 8 * v76 - 8 * v75;
    if (v82 < v83)
    {
      if (v77 != v35 || v79 <= v35)
      {
        memmove(v35, (v74 + 8 * v108), 8 * v75 - 8 * v108);
      }

      v84 = &v35[v82];
      v85 = v82 < 1;
      v4 = v111;
      v86 = v109;
      if (v85 || v80 <= v78)
      {
        v87 = v35;
        v91 = v77;
        v88 = v110;
        v89 = v108;
        goto LABEL_116;
      }

      v87 = v35;
      v88 = v110;
      v89 = v108;
      while (1)
      {
        v90 = *v79;
        if (*(*v87 + *(**v87 + 112)) >= *(*v79 + *(**v79 + 112)))
        {
          if (v77 != v87)
          {
            v90 = *v87;
            v87 += 8;
            goto LABEL_91;
          }

          v87 += 8;
        }

        else
        {
          if (v77 != v79)
          {
            v79 += 8;
LABEL_91:
            *v77 = v90;
            goto LABEL_94;
          }

          v79 += 8;
        }

LABEL_94:
        v77 += 8;
        if (v87 >= v84 || v79 >= v81)
        {
          v91 = v77;
          goto LABEL_116;
        }
      }
    }

    if (v79 != v35 || v81 <= v35)
    {
      memmove(v35, (v74 + 8 * v75), 8 * v76 - 8 * v75);
    }

    v84 = &v35[v83];
    v88 = v110;
    if (v83 < 1 || v78 <= v7)
    {
      v87 = v35;
      v91 = v79;
      v4 = v111;
      v89 = v108;
      v86 = v109;
    }

    else
    {
      v4 = v111;
      v89 = v108;
      v86 = v109;
      do
      {
        v91 = v79 - 8;
        v81 -= 8;
        v92 = v84;
        while (1)
        {
          v93 = v81 + 8;
          v95 = *(v92 - 8);
          v92 -= 8;
          v94 = v95;
          if (*(*v91 + *(**v91 + 112)) < *(v95 + *(*v95 + 112)))
          {
            break;
          }

          if (v93 != v84)
          {
            *v81 = v94;
          }

          v81 -= 8;
          v84 = v92;
          if (v92 <= v35)
          {
            v84 = v92;
            v87 = v35;
            v91 = v79;
            goto LABEL_116;
          }
        }

        if (v93 != v79)
        {
          *v81 = *v91;
        }

        v87 = v35;
        if (v84 <= v35)
        {
          break;
        }

        v79 -= 8;
      }

      while (v77 < v91);
    }

LABEL_116:
    v96 = v84 - v87 + (v84 - v87 < 0 ? 7uLL : 0);
    if (v91 != v87 || v91 >= &v87[v96 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v91, v87, 8 * (v96 >> 3));
    }

    if (v86 < v89)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D99E8FDC(v4);
    }

    if (v88 > *(v4 + 2))
    {
      goto LABEL_139;
    }

    v97 = &v4[16 * v107];
    *(v97 + 4) = v89;
    *(v97 + 5) = v86;
    result = sub_1D99E8F50(v88);
    v7 = v4;
    v33 = *(v4 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_138:
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
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  result = sub_1D99E8FDC(v7);
  v7 = result;
LABEL_128:
  v98 = *(v7 + 2);
  if (v98 < 2)
  {
  }

  while (*a3)
  {
    v99 = *&v7[16 * v98];
    v100 = *&v7[16 * v98 + 24];
    sub_1D9A5F328((*a3 + 8 * v99), (*a3 + 8 * *&v7[16 * v98 + 16]), (*a3 + 8 * v100), v4);
    if (v104)
    {
    }

    if (v100 < v99)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D99E8FDC(v7);
    }

    if (v98 - 2 >= *(v7 + 2))
    {
      goto LABEL_153;
    }

    v101 = &v7[16 * v98];
    *v101 = v99;
    *(v101 + 1) = v100;
    result = sub_1D99E8F50(v98 - 1);
    v98 = *(v7 + 2);
    if (v98 <= 1)
    {
    }
  }

LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  return result;
}