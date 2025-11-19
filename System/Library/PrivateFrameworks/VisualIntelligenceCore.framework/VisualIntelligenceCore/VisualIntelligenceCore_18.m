uint64_t sub_1D8924580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for BundleManager.Configuration(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  if (!a1)
  {
    return sub_1D8917FF0(v4, a3, type metadata accessor for BundleManager.Configuration);
  }

  sub_1D8917FF0(v4, &v32 - v12, type metadata accessor for BundleManager.Configuration);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  if (ConfigStorage.isVisualLookUpEagerModeEnabled.getter(ObjectType, a2))
  {
    v15 = *(v8 + 44);
    if (*(v4 + v15) > 1u)
    {
      v32 = a3;
LABEL_10:
      v17 = sub_1D8B16BA0();

      if ((v17 & 1) == 0)
      {
        if (*(v4 + v15) <= 1u && !*(v4 + v15))
        {
          swift_unknownObjectRelease();

LABEL_32:
          a3 = v32;
          return sub_1D8918058(v13, a3, type metadata accessor for BundleManager.Configuration);
        }

        v18 = sub_1D8B16BA0();

        if ((v18 & 1) == 0)
        {
          if (qword_1EE0E44F0 != -1)
          {
            swift_once();
          }

          v19 = sub_1D8B151E0();
          __swift_project_value_buffer(v19, qword_1EE0E44F8);
          sub_1D8917FF0(v4, v11, type metadata accessor for BundleManager.Configuration);
          v20 = sub_1D8B151C0();
          v21 = sub_1D8B161F0();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 136315138;
            v24 = v11[*(v8 + 44)];
            v25 = 0x7265676145;
            v33 = v23;
            v26 = 0xE500000000000000;
            v27 = 0xE900000000000064;
            if (v24 != 2)
            {
              v27 = 0xEF29776172282064;
            }

            if (v24)
            {
              v25 = 0x4520796B63697453;
              v26 = 0xEC00000072656761;
            }

            if (v24 <= 1)
            {
              v28 = v25;
            }

            else
            {
              v28 = 0x6E616D6544206E4FLL;
            }

            if (v24 <= 1)
            {
              v29 = v26;
            }

            else
            {
              v29 = v27;
            }

            v30 = v23;
            sub_1D89388D8(v11, type metadata accessor for BundleManager.Configuration);
            v31 = sub_1D89AC714(v28, v29, &v33);

            *(v22 + 4) = v31;
            _os_log_impl(&dword_1D8783000, v20, v21, "Overriding VisualLookUp mode to .eagerSticky (from %s) based on storage", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x1DA721330](v30, -1, -1);
            MEMORY[0x1DA721330](v22, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            sub_1D89388D8(v11, type metadata accessor for BundleManager.Configuration);
          }

          v13[*(v8 + 44)] = 1;
          goto LABEL_32;
        }
      }

      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    if (!*(v4 + v15))
    {
      v32 = a3;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1D8918058(v13, a3, type metadata accessor for BundleManager.Configuration);
}

uint64_t BundleManager.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_1D8B15EF0();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationMergerTask))
  {

    sub_1D8B15F80();
  }

  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationWorkerTask))
  {

    sub_1D8B15F80();
  }

  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_trackReadingTask))
  {

    sub_1D8B15F80();
  }

  sub_1D89388D8(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_configuration, type metadata accessor for BundleManager.Configuration);

  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  sub_1D8940088(*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 8), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 24), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 40), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 56), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 72), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80));
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_logger;
  v11 = sub_1D8B151E0();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  sub_1D885E5A0(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager__bundleClassificationRunner);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_stillRankingAlgorithm);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_streamingRankingAlgorithm);
  v12 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStream;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t BundleManager.__deallocating_deinit()
{
  BundleManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8924E48@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v239.size.width = a5;
  v239.size.height = a6;
  v239.origin.x = a3;
  v239.origin.y = a4;
  v222 = a2;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v217 = &v216 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v225 = &v216 - v11;
  v232 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v232);
  v13 = &v216 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8B13240();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v244 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v216 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v249 = &v216 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v216 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v221 = &v216 - v26;
  v223 = type metadata accessor for CVBundle(0);
  v238 = *(v223 - 8);
  v27 = MEMORY[0x1EEE9AC00](v223);
  v216 = &v216 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v237 = &v216 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v218 = &v216 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v226 = &v216 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v227 = &v216 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v216 - v37;
  v219 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles;
  v220 = v6;
  v39 = *(v6 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
  v40 = *(v39 + 16);
  v240 = (v6 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v234 = v39;

  v42 = MEMORY[0x1E69E7CC0];
  v224 = v15;
  v233 = v25;
  v231 = v40;
  if (!v40)
  {
LABEL_57:

    v94 = *(v42 + 16);
    if (!v94)
    {

      v96 = 1;
      v95 = v221;
LABEL_61:
      v97 = v238;
      v98 = v223;
      (*(v238 + 56))(v95, v96, 1, v223);
      sub_1D87A0E38(v95, v25, &qword_1ECA67980);
      if ((*(v97 + 48))(v25, 1, v98) == 1)
      {
        sub_1D87A14E4(v25, &qword_1ECA67980);
      }

      else
      {
        v99 = v218;
        v100 = sub_1D8918058(v25, v218, type metadata accessor for CVBundle);
        v101 = v240[3];
        v279 = v240[2];
        v280 = v101;
        v102 = v240[5];
        v281 = v240[4];
        v282 = v102;
        v103 = v240[1];
        v277 = *v240;
        v278 = v103;
        if (v102)
        {
          v104 = *(v220 + v219);
          v105 = v240[3];
          v267 = v240[2];
          v268 = v105;
          v269 = v240[4];
          v106 = v240[1];
          v265 = *v240;
          v266 = v106;
          MEMORY[0x1EEE9AC00](v100);
          *(&v216 - 4) = &v265;
          *(&v216 - 3) = v107;
          *(&v216 - 2) = v108;
          swift_bridgeObjectRetain_n();
          sub_1D87A0E38(&v277, &v271, &qword_1ECA64858);
          v109 = sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v216 - 6), v104, type metadata accessor for CVBundle);

          sub_1D87A14E4(&v277, &qword_1ECA64858);
          sub_1D87A14E4(v95, &qword_1ECA67980);
          v273 = v267;
          v274 = v268;
          v275 = v269;
          v271 = v265;
          v272 = v266;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECA64880);
          v111 = v222 + *(v110 + 48);
          sub_1D8918058(v99, v222, type metadata accessor for CVBundle);
          *v111 = v104;
          v112 = v271;
          *(v111 + 24) = v272;
          v113 = v274;
          *(v111 + 40) = v273;
          *(v111 + 56) = v113;
          *(v111 + 72) = v275;
          *(v111 + 8) = v112;
          *(v111 + 11) = v109;
          type metadata accessor for BundleManager.SelectionResult(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1D89388D8(v99, type metadata accessor for CVBundle);
      }

      v172 = v240[3];
      v279 = v240[2];
      v280 = v172;
      v173 = v240[5];
      v281 = v240[4];
      v282 = v173;
      v174 = v240[1];
      v277 = *v240;
      v278 = v174;
      if (v173)
      {
        v249 = v279;
        v247 = v278;
        v175 = v240[3];
        v267 = v240[2];
        v268 = v175;
        v176 = v240[5];
        v269 = v240[4];
        v270 = v176;
        v177 = v240[1];
        v265 = *v240;
        v266 = v177;
        v178 = type metadata accessor for SyntheticDetectionResult();
        v179 = swift_allocBox();
        v181 = v180;
        sub_1D88C7A20(&v265, &v250);
        v182 = v244;
        sub_1D8B13230();
        x = v239.origin.x;
        y = v239.origin.y;
        width = v239.size.width;
        height = v239.size.height;
        MinX = CGRectGetMinX(v239);
        v300.origin.x = x;
        v300.origin.y = y;
        v300.size.width = width;
        v300.size.height = height;
        MinY = CGRectGetMinY(v300);
        v301.origin.x = x;
        v301.origin.y = y;
        v301.size.width = width;
        v301.size.height = height;
        v243 = COERCE_CHAR_(CGRectGetMaxX(v301));
        v302.origin.x = x;
        v302.origin.y = y;
        v302.size.width = width;
        v302.size.height = height;
        v187 = CGRectGetMinY(v302);
        v303.origin.x = x;
        v303.origin.y = y;
        v303.size.width = width;
        v303.size.height = height;
        v188 = CGRectGetMinX(v303);
        v304.origin.x = x;
        v304.origin.y = y;
        v304.size.width = width;
        v304.size.height = height;
        MaxY = CGRectGetMaxY(v304);
        v305.origin.x = x;
        v305.origin.y = y;
        v305.size.width = width;
        v305.size.height = height;
        MaxX = CGRectGetMaxX(v305);
        v306.origin.x = x;
        v306.origin.y = y;
        v306.size.width = width;
        v306.size.height = height;
        v191 = CGRectGetMaxY(v306);
        sub_1D87A14E4(&v277, &qword_1ECA64858);
        (*(v224 + 32))(v181, v182, v14);
        v192 = (v181 + v178[5]);
        v193 = MinY;
        *v192 = MinX;
        v192[1] = v193;
        *(v192 + 2) = v243;
        v192[3] = v187;
        v192[4] = v188;
        v192[5] = MaxY;
        v192[6] = MaxX;
        v192[7] = v191;
        *(v181 + v178[6]) = 1;
        *(v181 + v178[7]) = v247;
        *(v181 + v178[8]) = v249;
        *(v181 + v178[9]) = 0xF000000000000007;
        *&v250 = v179 | 0xB000000000000000;
        LOBYTE(v283) = 2;
        v194 = v217;
        v195 = sub_1D8AC0D00(&v250, &v283, v217);
        v196 = v240[3];
        v273 = v240[2];
        v274 = v196;
        v197 = v240[5];
        v275 = v240[4];
        v276 = v197;
        v198 = v240[1];
        v271 = *v240;
        v272 = v198;
        if (v197)
        {
          v199 = *(v220 + v219);
          v200 = v240[3];
          v285 = v240[2];
          v286 = v200;
          v287 = v240[4];
          v201 = v240[1];
          v283 = *v240;
          v284 = v201;
          MEMORY[0x1EEE9AC00](v195);
          *(&v216 - 4) = &v283;
          *(&v216 - 3) = v202;
          *(&v216 - 2) = v203;
          swift_bridgeObjectRetain_n();
          sub_1D87A0E38(&v271, &v250, &qword_1ECA64858);
          v204 = sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v216 - 6), v199, type metadata accessor for CVBundle);
          sub_1D87A14E4(&v271, &qword_1ECA64858);

          v252 = v285;
          v253 = v286;
          v254 = v287;
          v250 = v283;
          v251 = v284;
          v205 = v216;
          sub_1D8917FF0(v194, v216, type metadata accessor for CVTrackSnapshot);
          swift_storeEnumTagMultiPayload();
          v206 = MEMORY[0x1E69E7CC0];
          v207 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
          sub_1D89388D8(v194, type metadata accessor for CVTrackSnapshot);
          sub_1D87A14E4(v95, &qword_1ECA67980);
          v208 = v223;
          *(v205 + *(v223 + 20)) = v206;
          *(v205 + *(v208 + 24)) = v206;
          *(v205 + *(v208 + 28)) = v207;
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECA64880);
          v210 = v222 + *(v209 + 48);
          sub_1D8918058(v205, v222, type metadata accessor for CVBundle);
          *v210 = v199;
          v211 = v250;
          *(v210 + 24) = v251;
          v212 = v253;
          *(v210 + 40) = v252;
          *(v210 + 56) = v212;
          *(v210 + 72) = v254;
          *(v210 + 8) = v211;
          *(v210 + 11) = v204;
          type metadata accessor for BundleManager.SelectionResult(0);
          return swift_storeEnumTagMultiPayload();
        }

        v213 = 0x80000001D8B44790;
        sub_1D89388D8(v194, type metadata accessor for CVTrackSnapshot);
        sub_1D87A14E4(v95, &qword_1ECA67980);
        v214 = 0xD00000000000002FLL;
      }

      else
      {
        v213 = 0x80000001D8B44750;
        sub_1D87A14E4(v95, &qword_1ECA67980);
        v214 = 0xD00000000000003DLL;
      }

      v215 = v222;
      *v222 = v214;
      v215[1] = v213;
      type metadata accessor for BundleManager.SelectionResult(0);
      return swift_storeEnumTagMultiPayload();
    }

    v247 = (v42 + ((*(v238 + 80) + 32) & ~*(v238 + 80)));
    result = sub_1D8917FF0(v247, v227, type metadata accessor for CVBundle);
    if (v94 == 1)
    {
LABEL_59:

      v95 = v221;
      sub_1D8918058(v227, v221, type metadata accessor for CVBundle);
      v96 = 0;
      v25 = v233;
      goto LABEL_61;
    }

    v114 = 1;
    while (1)
    {
      if (v114 >= *(v42 + 16))
      {
        goto LABEL_153;
      }

      v116 = v42;
      sub_1D8917FF0(v247 + *(v238 + 72) * v114, v237, type metadata accessor for CVBundle);
      CVBundle.latestEstimate.getter(&v264);
      *&v271 = v264;
      CVDetection.detection.getter(&v277);
      v117 = *(&v278 + 1);
      v118 = v279;
      __swift_project_boxed_opaque_existential_1(&v277, *(&v278 + 1));
      (*(v118 + 64))(&v283, v117, v118);
      __swift_destroy_boxed_opaque_existential_1(&v277);

      v119 = *&v283;
      if (*&v284 >= *&v283)
      {
        v120 = *&v283;
      }

      else
      {
        v120 = *&v284;
      }

      if (*&v285 < v120)
      {
        v120 = *&v285;
      }

      if (*&v286 >= v120)
      {
        v121 = v120;
      }

      else
      {
        v121 = *&v286;
      }

      if (*(&v284 + 1) >= *(&v283 + 1))
      {
        v122 = *(&v283 + 1);
      }

      else
      {
        v122 = *(&v284 + 1);
      }

      if (*(&v285 + 1) < v122)
      {
        v122 = *(&v285 + 1);
      }

      if (*(&v286 + 1) >= v122)
      {
        v123 = v122;
      }

      else
      {
        v123 = *(&v286 + 1);
      }

      if (*&v283 <= *&v284)
      {
        v119 = *&v284;
      }

      if (v119 <= *&v285)
      {
        v119 = *&v285;
      }

      if (v119 > *&v286)
      {
        v124 = v119;
      }

      else
      {
        v124 = *&v286;
      }

      if (*(&v283 + 1) > *(&v284 + 1))
      {
        v125 = *(&v283 + 1);
      }

      else
      {
        v125 = *(&v284 + 1);
      }

      v126 = v240[5];
      v281 = v240[4];
      v282 = v126;
      v127 = v240[3];
      if (v125 <= *(&v285 + 1))
      {
        v125 = *(&v285 + 1);
      }

      v279 = v240[2];
      v280 = v127;
      if (v125 > *(&v286 + 1))
      {
        v128 = v125;
      }

      else
      {
        v128 = *(&v286 + 1);
      }

      v129 = v240[1];
      v277 = *v240;
      v278 = v129;
      v130 = *(&v280 + 1);
      v131 = *&v280;
      v132 = *(&v281 + 1);
      v133 = *&v281;
      v134 = v240[1];
      v271 = *v240;
      v272 = v134;
      v273 = v240[2];
      v274 = v280;
      v275 = v281;
      if (v282)
      {
        v276 = v282;
        sub_1D87A0E38(&v277, &v265, &qword_1ECA64858);
        sub_1D87A14E4(&v271, &qword_1ECA64858);
      }

      else
      {
        v276 = __PAIR128__(*(&v282 + 1), 0);
        sub_1D87A0E38(&v277, &v265, &qword_1ECA64858);
        sub_1D87A14E4(&v271, &qword_1ECA64858);
        v133 = 1.0;
        v131 = 0.0;
        v130 = 0.0;
        v132 = 1.0;
      }

      v292.size.width = v124 - v121;
      v292.size.height = v128 - v123;
      v292.origin.x = v121;
      v292.origin.y = v123;
      v310.origin.x = v131;
      v310.origin.y = v130;
      v310.size.width = v133;
      v310.size.height = v132;
      v293 = CGRectIntersection(v292, v310);
      v135 = v293.origin.x;
      v136 = v293.origin.y;
      v137 = v293.size.width;
      v138 = v293.size.height;
      v311.origin.x = v131;
      v311.origin.y = v130;
      v311.size.width = v133;
      v311.size.height = v132;
      v294 = CGRectIntersection(v239, v311);
      v312.origin.x = v294.origin.x;
      v312.origin.y = v294.origin.y;
      v139 = v294.size.width;
      v140 = v294.size.height;
      v294.origin.x = v135;
      v294.origin.y = v136;
      v294.size.width = v137;
      v294.size.height = v138;
      v312.size.width = v139;
      v312.size.height = v140;
      v295 = CGRectIntersection(v294, v312);
      v141 = v295.size.width;
      v142 = v295.size.height;
      IsNull = CGRectIsNull(v295);
      v144 = 0.0;
      if (!IsNull)
      {
        v144 = v141 * v142 / (v137 * v138 + v139 * v140 - v141 * v142);
      }

      *&v249 = v144;
      CVBundle.latestEstimate.getter(&v263);
      *&v265 = v263;
      CVDetection.detection.getter(&v271);
      v145 = *(&v272 + 1);
      v146 = v273;
      __swift_project_boxed_opaque_existential_1(&v271, *(&v272 + 1));
      (*(v146 + 64))(&v255, v145, v146);
      __swift_destroy_boxed_opaque_existential_1(&v271);

      v147 = v255;
      if (v257 >= v255)
      {
        v148 = v255;
      }

      else
      {
        v148 = v257;
      }

      if (v259 < v148)
      {
        v148 = v259;
      }

      if (v261 >= v148)
      {
        v149 = v148;
      }

      else
      {
        v149 = v261;
      }

      if (v258 >= v256)
      {
        v150 = v256;
      }

      else
      {
        v150 = v258;
      }

      if (v260 < v150)
      {
        v150 = v260;
      }

      if (v262 >= v150)
      {
        v151 = v150;
      }

      else
      {
        v151 = v262;
      }

      if (v255 <= v257)
      {
        v147 = v257;
      }

      if (v147 <= v259)
      {
        v147 = v259;
      }

      if (v147 > v261)
      {
        v152 = v147;
      }

      else
      {
        v152 = v261;
      }

      if (v256 > v258)
      {
        v153 = v256;
      }

      else
      {
        v153 = v258;
      }

      v154 = v240[5];
      v275 = v240[4];
      v276 = v154;
      v155 = v240[3];
      if (v153 <= v260)
      {
        v153 = v260;
      }

      v273 = v240[2];
      v274 = v155;
      if (v153 > v262)
      {
        v156 = v153;
      }

      else
      {
        v156 = v262;
      }

      v157 = v240[1];
      v271 = *v240;
      v272 = v157;
      v158 = *(&v274 + 1);
      v159 = *&v274;
      v160 = *(&v275 + 1);
      v161 = *&v275;
      v162 = v240[1];
      v265 = *v240;
      v266 = v162;
      v267 = v240[2];
      v268 = v274;
      v269 = v275;
      if (v276)
      {
        v270 = v276;
        sub_1D87A0E38(&v271, &v250, &qword_1ECA64858);
        sub_1D87A14E4(&v265, &qword_1ECA64858);
      }

      else
      {
        v270 = __PAIR128__(*(&v276 + 1), 0);
        sub_1D87A0E38(&v271, &v250, &qword_1ECA64858);
        sub_1D87A14E4(&v265, &qword_1ECA64858);
        v161 = 1.0;
        v159 = 0.0;
        v158 = 0.0;
        v160 = 1.0;
      }

      v296.size.width = v152 - v149;
      v296.size.height = v156 - v151;
      v296.origin.x = v149;
      v296.origin.y = v151;
      v313.origin.x = v159;
      v313.origin.y = v158;
      v313.size.width = v161;
      v313.size.height = v160;
      v297 = CGRectIntersection(v296, v313);
      v163 = v297.origin.x;
      v164 = v297.origin.y;
      v165 = v297.size.width;
      v166 = v297.size.height;
      v314.origin.x = v159;
      v314.origin.y = v158;
      v314.size.width = v161;
      v314.size.height = v160;
      v298 = CGRectIntersection(v239, v314);
      v315.origin.x = v298.origin.x;
      v315.origin.y = v298.origin.y;
      v167 = v298.size.width;
      v168 = v298.size.height;
      v298.origin.x = v163;
      v298.origin.y = v164;
      v298.size.width = v165;
      v298.size.height = v166;
      v315.size.width = v167;
      v315.size.height = v168;
      v299 = CGRectIntersection(v298, v315);
      v169 = v299.size.width;
      v170 = v299.size.height;
      if (CGRectIsNull(v299))
      {
        if (*&v249 >= 0.0)
        {
          goto LABEL_143;
        }
      }

      else
      {
        v171 = v169 * v170 / (v165 * v166 + v167 * v168 - v169 * v170);
        if (*&v249 >= v171)
        {
LABEL_143:
          result = sub_1D89388D8(v237, type metadata accessor for CVBundle);
          goto LABEL_67;
        }
      }

      v115 = v227;
      sub_1D89388D8(v227, type metadata accessor for CVBundle);
      result = sub_1D8918058(v237, v115, type metadata accessor for CVBundle);
LABEL_67:
      v42 = v116;
      if (v94 == ++v114)
      {
        goto LABEL_59;
      }
    }
  }

  v43 = 0;
  v228 = (v15 + 32);
  v229 = v20;
  *&MinY = a1 + 56;
  *&MinX = v15 + 16;
  v247 = (v15 + 8);
  v248 = v14;
  v230 = v13;
  v44 = v234;
  v243 = v38;
  while (v43 < *(v44 + 16))
  {
    v241 = v43;
    v242 = v42;
    v236 = (*(v238 + 80) + 32) & ~*(v238 + 80);
    v235 = *(v238 + 72);
    sub_1D8917FF0(v44 + v236 + v235 * v43, v38, type metadata accessor for CVBundle);
    sub_1D8917FF0(v38, v13, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = v228;
    if (EnumCaseMultiPayload == 1)
    {
      v47 = *v228;
      (*v228)(v20, v13, v14);
    }

    else
    {
      v48 = v225;
      sub_1D8918058(v13, v225, type metadata accessor for CVTrackSnapshot);
      (**&MinX)(v20, v48, v14);
      sub_1D89388D8(v48, type metadata accessor for CVTrackSnapshot);
      v47 = *v46;
    }

    v47(v249, v20, v14);
    if (*(a1 + 16) && (sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]), v49 = sub_1D8B15790(), v50 = -1 << *(a1 + 32), v51 = v49 & ~v50, ((*(*&MinY + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
    {
      v52 = ~v50;
      v53 = *(v224 + 72);
      v54 = *(v224 + 16);
      while (1)
      {
        v55 = a1;
        v56 = *(a1 + 48) + v53 * v51;
        v57 = v244;
        v58 = v248;
        v54(v244, v56, v248);
        sub_1D893FD6C(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
        v59 = sub_1D8B158C0();
        v60 = *v247;
        (*v247)(v57, v58);
        if (v59)
        {
          break;
        }

        v51 = (v51 + 1) & v52;
        a1 = v55;
        if (((*(*&MinY + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v93 = v248;
      v60(v249, v248);
      v38 = v243;
      result = sub_1D89388D8(v243, type metadata accessor for CVBundle);
      v42 = v242;
      a1 = v55;
      v14 = v93;
      v20 = v229;
      v13 = v230;
      v25 = v233;
      v44 = v234;
    }

    else
    {
LABEL_14:
      v14 = v248;
      (*v247)(v249, v248);
      CVBundle.latestEstimate.getter(&v255);
      *&v271 = v255;
      CVDetection.detection.getter(&v277);
      v61 = *(&v278 + 1);
      v62 = v279;
      __swift_project_boxed_opaque_existential_1(&v277, *(&v278 + 1));
      (*(v62 + 64))(&v250, v61, v62);
      __swift_destroy_boxed_opaque_existential_1(&v277);

      v63 = *&v250;
      if (*&v251 >= *&v250)
      {
        v64 = *&v250;
      }

      else
      {
        v64 = *&v251;
      }

      if (*&v252 < v64)
      {
        v64 = *&v252;
      }

      if (*&v253 >= v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = *&v253;
      }

      if (*(&v251 + 1) >= *(&v250 + 1))
      {
        v66 = *(&v250 + 1);
      }

      else
      {
        v66 = *(&v251 + 1);
      }

      if (*(&v252 + 1) < v66)
      {
        v66 = *(&v252 + 1);
      }

      if (*(&v253 + 1) >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = *(&v253 + 1);
      }

      if (*&v250 <= *&v251)
      {
        v63 = *&v251;
      }

      if (v63 <= *&v252)
      {
        v63 = *&v252;
      }

      if (v63 > *&v253)
      {
        v68 = v63;
      }

      else
      {
        v68 = *&v253;
      }

      if (*(&v250 + 1) > *(&v251 + 1))
      {
        v69 = *(&v250 + 1);
      }

      else
      {
        v69 = *(&v251 + 1);
      }

      v70 = v240[5];
      v281 = v240[4];
      v282 = v70;
      v71 = v240[3];
      if (v69 <= *(&v252 + 1))
      {
        v69 = *(&v252 + 1);
      }

      v279 = v240[2];
      v280 = v71;
      if (v69 > *(&v253 + 1))
      {
        v72 = v69;
      }

      else
      {
        v72 = *(&v253 + 1);
      }

      v73 = v240[1];
      v277 = *v240;
      v278 = v73;
      v74 = *(&v280 + 1);
      v75 = *&v280;
      v76 = *(&v281 + 1);
      v77 = *&v281;
      v78 = v240[1];
      v271 = *v240;
      v272 = v78;
      v273 = v240[2];
      v274 = v280;
      v275 = v281;
      if (v282)
      {
        v276 = v282;
        sub_1D87A0E38(&v277, &v265, &qword_1ECA64858);
        sub_1D87A14E4(&v271, &qword_1ECA64858);
      }

      else
      {
        v276 = __PAIR128__(*(&v282 + 1), 0);
        sub_1D87A0E38(&v277, &v265, &qword_1ECA64858);
        sub_1D87A14E4(&v271, &qword_1ECA64858);
        v77 = 1.0;
        v75 = 0.0;
        v74 = 0.0;
        v76 = 1.0;
      }

      v25 = v233;
      v44 = v234;
      v42 = v242;
      v288.size.width = v68 - v65;
      v288.size.height = v72 - v67;
      v288.origin.x = v65;
      v288.origin.y = v67;
      v307.origin.x = v75;
      v307.origin.y = v74;
      v307.size.width = v77;
      v307.size.height = v76;
      v289 = CGRectIntersection(v288, v307);
      v79 = v289.origin.x;
      v80 = v289.origin.y;
      v81 = v289.size.width;
      v82 = v289.size.height;
      v308.origin.x = v75;
      v308.origin.y = v74;
      v308.size.width = v77;
      v308.size.height = v76;
      v290 = CGRectIntersection(v239, v308);
      v309.origin.x = v290.origin.x;
      v309.origin.y = v290.origin.y;
      v83 = v290.size.width;
      v84 = v290.size.height;
      v290.origin.x = v79;
      v290.origin.y = v80;
      v290.size.width = v81;
      v290.size.height = v82;
      v309.size.width = v83;
      v309.size.height = v84;
      v291 = CGRectIntersection(v290, v309);
      v85 = v291.size.width;
      v86 = v291.size.height;
      v87 = CGRectIsNull(v291);
      v88 = 0.0;
      v13 = v230;
      v38 = v243;
      if (!v87)
      {
        v88 = v85 * v86 / (v81 * v82 + v83 * v84 - v85 * v86);
      }

      v89 = sub_1D8940278();
      v20 = v229;
      if (v89 > v88)
      {
        result = sub_1D89388D8(v38, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8918058(v38, v226, type metadata accessor for CVBundle);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v283 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4074(0, *(v42 + 16) + 1, 1);
          v42 = v283;
        }

        v92 = *(v42 + 16);
        v91 = *(v42 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_1D87F4074(v91 > 1, v92 + 1, 1);
          v42 = v283;
        }

        *(v42 + 16) = v92 + 1;
        result = sub_1D8918058(v226, v42 + v236 + v92 * v235, type metadata accessor for CVBundle);
        v38 = v243;
      }
    }

    v43 = v241 + 1;
    if (v241 + 1 == v231)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

void sub_1D892668C(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v67 - v6;
  v7 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - v14;
  v16 = type metadata accessor for CVTrackSnapshot(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v79 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v67 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v67 - v24;
  sub_1D8917FF0(a1, v15, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = type metadata accessor for CVBundle.BundleType;
    v27 = v15;
LABEL_13:
    sub_1D89388D8(v27, v26);
    v41 = sub_1D8B151C0();
    v42 = sub_1D8B16210();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D8783000, v41, v42, "Cannot insert of wrong type", v43, 2u);
      MEMORY[0x1DA721330](v43, -1, -1);
    }

    return;
  }

  sub_1D8918058(v15, v25, type metadata accessor for CVTrackSnapshot);
  if (*&v25[*(v16 + 24)] >> 60 != 11)
  {
    goto LABEL_12;
  }

  v28 = type metadata accessor for SyntheticDetectionResult();
  if ((*(swift_projectBox() + *(v28 + 24)) & 1) == 0)
  {
    v29 = sub_1D8B16BA0();

    if (v29)
    {
      goto LABEL_7;
    }

LABEL_12:
    v26 = type metadata accessor for CVTrackSnapshot;
    v27 = v25;
    goto LABEL_13;
  }

LABEL_7:
  v30 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_otherSyntheticTracks;
  swift_beginAccess();
  v31 = *(*(v1 + v30) + 16);
  v74 = v1;
  if (v31)
  {
    swift_isUniquelyReferenced_nonNull_native();
    *&v84[0] = *(v1 + v30);
    *(v1 + v30) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B50);
    sub_1D8B165B0();
    *(v74 + v30) = *&v84[0];
  }

  swift_endAccess();
  v32 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_logger;
  sub_1D8917FF0(a1, v9, type metadata accessor for CVBundle);
  sub_1D8917FF0(v25, v23, type metadata accessor for CVTrackSnapshot);
  v33 = sub_1D8B151C0();
  v34 = sub_1D8B16200();
  if (os_log_type_enabled(v33, v34))
  {
    v69 = v34;
    v71 = v33;
    v72 = v32;
    v73 = v30;
    v35 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v85 = v68;
    v70 = v35;
    *v35 = 136315394;
    sub_1D8917FF0(v9, v13, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v77;
      v37 = *(v77 + 32);
      v38 = v75;
      v39 = v13;
      v40 = v78;
      v37(v75, v39, v78);
    }

    else
    {
      v44 = v80;
      sub_1D8918058(v13, v80, type metadata accessor for CVTrackSnapshot);
      v36 = v77;
      v40 = v78;
      v38 = v75;
      (*(v77 + 16))(v75, v44, v78);
      sub_1D89388D8(v44, type metadata accessor for CVTrackSnapshot);
      v37 = *(v36 + 32);
    }

    v45 = v76;
    v37(v76, v38, v40);
    sub_1D893FD6C(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v46 = sub_1D8B16B50();
    v48 = v47;
    (*(v36 + 8))(v45, v40);
    sub_1D89388D8(v9, type metadata accessor for CVBundle);
    v49 = sub_1D89AC714(v46, v48, &v85);

    v50 = v70;
    *(v70 + 1) = v49;
    *(v50 + 6) = 2080;
    v51 = sub_1D8B16B50();
    v53 = v52;
    sub_1D89388D8(v23, type metadata accessor for CVTrackSnapshot);
    v54 = sub_1D89AC714(v51, v53, &v85);

    *(v50 + 14) = v54;
    v55 = v71;
    _os_log_impl(&dword_1D8783000, v71, v69, "insertNewSynthetic: Adding synthetic bundle %s with track %s", v50, 0x16u);
    v56 = v68;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v56, -1, -1);
    MEMORY[0x1DA721330](v50, -1, -1);
  }

  else
  {

    sub_1D89388D8(v23, type metadata accessor for CVTrackSnapshot);
    sub_1D89388D8(v9, type metadata accessor for CVBundle);
  }

  v57 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v87 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v88 = v57;
  v58 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v89 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v90 = v58;
  v59 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v85 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v86 = v59;
  v93 = v87;
  v94 = v57;
  v95 = v89;
  v91 = v85;
  v92 = v59;
  v60 = v58;
  if (v58)
  {
    v61 = *(&v90 + 1);
    v62 = v79;
    sub_1D8917FF0(v25, v79, type metadata accessor for CVTrackSnapshot);
    swift_beginAccess();
    v84[2] = v87;
    v84[3] = v88;
    v84[4] = v89;
    v84[5] = v90;
    v84[0] = v85;
    v84[1] = v86;
    sub_1D88C7A20(v84, v81);
    v63 = v80;
    sub_1D87FD030(v80, v62);
    sub_1D89388D8(v63, type metadata accessor for CVTrackSnapshot);
    swift_endAccess();
    v81[2] = v93;
    v81[3] = v94;
    v81[4] = v95;
    v81[0] = v91;
    v81[1] = v92;
    v82 = v60;
    v83 = v61;
    sub_1D89293D8(v81);
    sub_1D89388D8(v25, type metadata accessor for CVTrackSnapshot);
    sub_1D87A14E4(&v85, &qword_1ECA64858);
  }

  else
  {
    v64 = sub_1D8B151C0();
    v65 = sub_1D8B16210();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1D8783000, v64, v65, "Failed to get latest frame metadata during insertNewSynthetic", v66, 2u);
      MEMORY[0x1DA721330](v66, -1, -1);
    }

    sub_1D89388D8(v25, type metadata accessor for CVTrackSnapshot);
  }
}

uint64_t sub_1D8926FE4()
{
  v0 = sub_1D8B13240();
  __swift_allocate_value_buffer(v0, qword_1EE0ED758);
  v1 = __swift_project_value_buffer(v0, qword_1EE0ED758);
  if (qword_1EE0E3EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActionPin(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE0E3EC0);
  v4 = *(*(v0 - 8) + 16);

  return v4(v1, v3, v0);
}

uint64_t sub_1D89270B0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v69 - v4;
  v82 = type metadata accessor for CVBundle(0);
  v81 = *(v82 - 8);
  v5 = MEMORY[0x1EEE9AC00](v82);
  v69 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v71 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - v9;
  v11 = type metadata accessor for CVTrackSnapshot(0);
  v76 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MinX = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  MinY = &v69 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v69 - v16;
  v99 = *a1;
  v18 = *(a1 + 2);
  v73 = *(a1 + 3);
  v19 = *(a1 + 4);
  v98 = *(a1 + 40);
  v97[0] = *(a1 + 41);
  *(v97 + 3) = *(a1 + 11);
  v20 = *(a1 + 6);
  v21 = *(a1 + 7);
  v23 = *(a1 + 8);
  v22 = *(a1 + 9);
  v24 = *(a1 + 10);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v27 = 0;
    v28 = v76;
    v78 = v11;
    v77 = v25;
    while (v27 < *(v24 + 16))
    {
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = *(v28 + 72);
      sub_1D8917FF0(v24 + v29 + v30 * v27, v17, type metadata accessor for CVTrackSnapshot);
      if (*&v17[*(v11 + 24)] >> 60)
      {
        sub_1D89388D8(v17, type metadata accessor for CVTrackSnapshot);
      }

      else
      {
        sub_1D8918058(v17, MinY, type metadata accessor for CVTrackSnapshot);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v83 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4628(0, *(v26 + 16) + 1, 1);
          v28 = v76;
          v26 = v83;
        }

        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D87F4628(v32 > 1, v33 + 1, 1);
          v28 = v76;
          v26 = v83;
        }

        *(v26 + 16) = v33 + 1;
        sub_1D8918058(MinY, v26 + v29 + v33 * v30, type metadata accessor for CVTrackSnapshot);
        v11 = v78;
        v25 = v77;
      }

      if (v25 == ++v27)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v28 = v76;
LABEL_13:
  v34 = *(v26 + 16);
  if (v34)
  {
    *&v83 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v34, 0);
    v35 = v83;
    v36 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v37 = *(v28 + 72);
    do
    {
      v38 = MinX;
      sub_1D8917FF0(v36, MinX, type metadata accessor for CVTrackSnapshot);
      sub_1D8917FF0(v38, v10, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v38, type metadata accessor for CVTrackSnapshot);
      v39 = v82;
      v40 = MEMORY[0x1E69E7CC0];
      *&v10[*(v82 + 20)] = MEMORY[0x1E69E7CC0];
      *&v10[*(v39 + 24)] = v40;
      *&v10[*(v39 + 28)] = MEMORY[0x1E69E7CC8];
      *&v83 = v35;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D87F4074(v41 > 1, v42 + 1, 1);
        v35 = v83;
      }

      *(v35 + 16) = v42 + 1;
      sub_1D8918058(v10, v35 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v42, type metadata accessor for CVBundle);
      v36 += v37;
      --v34;
    }

    while (v34);

    v43 = &OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_stillRankingAlgorithm;
    if (!v98)
    {
      v43 = &OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_streamingRankingAlgorithm;
    }

    sub_1D87C1470(v74 + *v43, v94);
    v44 = v95;
    v45 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v93 = v35;
    v83 = v99;
    v84 = v18;
    v85 = v73;
    v86 = v19;
    v87 = v98;
    *v88 = v97[0];
    *&v88[3] = *(v97 + 3);
    v89 = v20;
    v90 = v21;
    v91 = v23;
    v92 = v22;
    v46 = *(v45 + 24);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758);
    v48 = sub_1D881CF20(&qword_1ECA65B48, &qword_1ECA65758);
    v49 = v46(&v93, &v83, v82, v47, &protocol witness table for CVBundle, v48, v44, v45);

    if (*(v49 + 16))
    {
      v50 = v72;
      sub_1D87A0E38(v49 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v72, &qword_1ECA63DC0);

      v51 = v50;
      v52 = v69;
      sub_1D8918058(v51, v69, type metadata accessor for CVBundle);
      v53 = v52;
      v54 = v71;
      sub_1D8918058(v53, v71, type metadata accessor for CVBundle);
      CVBundle.latestEstimate.getter(&v83);
      sub_1D89388D8(v54, type metadata accessor for CVBundle);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v27 = v83;
      goto LABEL_25;
    }

    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
  }

  v27 = 0xF000000000000007;
LABEL_25:
  v81 = v19;
  v82 = v18;
  v25 = type metadata accessor for SyntheticDetectionResult();
  v28 = swift_allocBox();
  v11 = v55;
  if (qword_1EE0E8648 != -1)
  {
LABEL_28:
    swift_once();
  }

  v56 = sub_1D8B13240();
  v57 = __swift_project_value_buffer(v56, qword_1EE0ED758);
  v100.origin.x = v20;
  v100.origin.y = v21;
  v100.size.width = v23;
  v100.size.height = v22;
  MinX = CGRectGetMinX(v100);
  v101.origin.x = v20;
  v101.origin.y = v21;
  v101.size.width = v23;
  v101.size.height = v22;
  MinY = CGRectGetMinY(v101);
  v102.origin.x = v20;
  v102.origin.y = v21;
  v102.size.width = v23;
  v102.size.height = v22;
  MaxX = CGRectGetMaxX(v102);
  v103.origin.x = v20;
  v103.origin.y = v21;
  v103.size.width = v23;
  v103.size.height = v22;
  v59 = CGRectGetMinY(v103);
  v104.origin.x = v20;
  v104.origin.y = v21;
  v104.size.width = v23;
  v104.size.height = v22;
  v60 = CGRectGetMinX(v104);
  v105.origin.x = v20;
  v105.origin.y = v21;
  v105.size.width = v23;
  v105.size.height = v22;
  MaxY = CGRectGetMaxY(v105);
  v106.origin.x = v20;
  v106.origin.y = v21;
  v106.size.width = v23;
  v106.size.height = v22;
  v62 = CGRectGetMaxX(v106);
  v63 = v20;
  v64 = v62;
  v107.origin.x = v63;
  v107.origin.y = v21;
  v107.size.width = v23;
  v107.size.height = v22;
  v65 = CGRectGetMaxY(v107);
  (*(*(v56 - 8) + 16))(v11, v57, v56);
  v66 = (v11 + v25[5]);
  v67 = MinY;
  *v66 = MinX;
  *(v66 + 1) = v67;
  v66[2] = MaxX;
  v66[3] = v59;
  v66[4] = v60;
  v66[5] = MaxY;
  v66[6] = v64;
  v66[7] = v65;
  *(v11 + v25[6]) = 0;
  *(v11 + v25[7]) = v82;
  *(v11 + v25[8]) = v81;
  *(v11 + v25[9]) = v27;
  *&v83 = v28 | 0xB000000000000000;
  LOBYTE(v94[0]) = 2;
  return sub_1D8AC0D00(&v83, v94, v75);
}

uint64_t sub_1D8927ABC(uint64_t *a1, uint64_t a2)
{
  CVBundle.latestEstimate.getter(&v39);
  v3 = sub_1D8921A48();

  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *v5++;
      if (v7 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D87C9284(0, *(v6 + 2) + 1, 1, v6);
        }

        v9 = *(v6 + 2);
        v8 = *(v6 + 3);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          v6 = sub_1D87C9284((v8 > 1), v9 + 1, 1, v6);
        }

        *(v6 + 2) = v10;
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v6 + 2);
  if (!v37)
  {
  }

  v11 = 0;
  while (v11 < *(v6 + 2))
  {
    v12 = *a1;
    if (*(*a1 + 16) && (v13 = sub_1D881C1D8(), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0);
    v16 = *(type metadata accessor for CVBundle(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D8B1AB90;
    sub_1D8917FF0(a2, v18 + v17, type metadata accessor for CVBundle);
    v19 = v15[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v21 = v15[3] >> 1, v21 <= v19))
    {
      v15 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v15);
      v21 = v15[3] >> 1;
    }

    if (v21 <= v15[2])
    {
      goto LABEL_37;
    }

    swift_arrayInitWithCopy();

    ++v15[2];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *a1;
    v23 = v39;
    v25 = sub_1D881C1D8();
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_38;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if (v22)
      {
        v32 = v39;
        if (v24)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1D896AFA0();
        v32 = v39;
        if (v29)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_1D8974920(v28, v22);
      v30 = sub_1D881C1D8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_40;
      }

      v25 = v30;
      v32 = v39;
      if (v29)
      {
LABEL_13:
        *(*(v32 + 56) + 8 * v25) = v15;

        goto LABEL_14;
      }
    }

    *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    *(*(v32 + 56) + 8 * v25) = v15;
    v33 = *(v32 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_39;
    }

    *(v32 + 16) = v35;
LABEL_14:
    ++v11;
    *a1 = v32;
    if (v37 == v11)
    {
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8927E98(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = 0;
  v13 = a1;
  v10 = *(a4 + 16);
  while (v10 != v9)
  {
    v11 = *(a5(0) - 8);
    a2(&v13, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++);
    if (v5)
    {
    }
  }

  return v13;
}

uint64_t sub_1D8927F8C(uint64_t a1, uint64_t a2)
{
  v158 = a2;
  v3 = type metadata accessor for CVBundle(0);
  v171 = *(v3 - 8);
  v172 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v164 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v156 = &v155 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v155 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v155 - v11;
  v170 = type metadata accessor for CVTrackSnapshot(0);
  v13 = MEMORY[0x1EEE9AC00](v170);
  v163 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v161 = &v155 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v157 = &v155 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v155 = &v155 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v155 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v155 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v169 = &v155 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v155 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = a1;
  v35 = &v155 - v34;
  v36 = *(v33 + 16);
  v159 = v33;
  v160 = v32;
  v173 = v36;
  if (v36)
  {
    v37 = 0;
    v38 = *(v32 + 72);
    v162 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v168 = v33 + v162;
    v165 = v31;
    v166 = MEMORY[0x1E69E7CC0];
    do
    {
      v39 = v168 + v38 * v37++;
      sub_1D8917FF0(v39, v35, type metadata accessor for CVTrackSnapshot);
      v40 = *(v170 + 24);
      v175 = *&v35[v40];
      v41 = sub_1D8921A48();
      v42 = *(v41 + 2);
      v43 = (v41 + 32);
      do
      {
        if (!v42)
        {

LABEL_4:
          sub_1D89388D8(v35, type metadata accessor for CVTrackSnapshot);
          goto LABEL_5;
        }

        v44 = *v43++;
        --v42;
      }

      while (v44 != 2);

      v175 = *&v35[v40];
      v45 = sub_1D8A5BE40();
      if (!v45)
      {
        goto LABEL_4;
      }

      v46 = *(v45 + 16);

      if (!v46)
      {
        goto LABEL_4;
      }

      sub_1D8918058(v35, v31, type metadata accessor for CVTrackSnapshot);
      v47 = v166;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F4628(0, *(v47 + 16) + 1, 1);
        v47 = v176;
      }

      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D87F4628(v49 > 1, v50 + 1, 1);
        v47 = v176;
      }

      *(v47 + 16) = v50 + 1;
      v166 = v47;
      v51 = v47 + v162 + v50 * v38;
      v31 = v165;
      sub_1D8918058(v165, v51, type metadata accessor for CVTrackSnapshot);
LABEL_5:
      ;
    }

    while (v37 != v173);
  }

  else
  {
    v166 = MEMORY[0x1E69E7CC0];
  }

  v52 = *(v166 + 16);
  if (v52)
  {
    v165 = v26;
    v53 = v23;
    v176 = MEMORY[0x1E69E7CC0];
    v54 = v166;
    sub_1D87F4074(0, v52, 0);
    v55 = v176;
    v56 = v54 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v57 = *(v160 + 72);
    do
    {
      v58 = v169;
      sub_1D8917FF0(v56, v169, type metadata accessor for CVTrackSnapshot);
      sub_1D8917FF0(v58, v12, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v58, type metadata accessor for CVTrackSnapshot);
      v59 = v172;
      v60 = MEMORY[0x1E69E7CC0];
      *&v12[*(v172 + 20)] = MEMORY[0x1E69E7CC0];
      *&v12[*(v59 + 24)] = v60;
      *&v12[*(v59 + 28)] = MEMORY[0x1E69E7CC8];
      v176 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D87F4074(v61 > 1, v62 + 1, 1);
        v55 = v176;
      }

      *(v55 + 16) = v62 + 1;
      sub_1D8918058(v12, v55 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v62, type metadata accessor for CVBundle);
      v56 += v57;
      --v52;
    }

    while (v52);
    v168 = v55;

    v23 = v53;
    v26 = v165;
  }

  else
  {

    v168 = MEMORY[0x1E69E7CC0];
  }

  if (v173)
  {
    v63 = 0;
    v64 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v65 = *(v160 + 72);
    v66 = v159 + v64;
    v165 = MEMORY[0x1E69E7CC0];
    do
    {
      v67 = v66 + v65 * v63++;
      sub_1D8917FF0(v67, v26, type metadata accessor for CVTrackSnapshot);
      v68 = *(v170 + 24);
      v175 = *&v26[v68];
      v69 = sub_1D8921A48();
      v70 = *(v69 + 2);
      v71 = (v69 + 32);
      do
      {
        if (!v70)
        {

LABEL_27:
          sub_1D89388D8(v26, type metadata accessor for CVTrackSnapshot);
          goto LABEL_28;
        }

        v72 = *v71++;
        --v70;
      }

      while (v72 != 2);

      v175 = *&v26[v68];
      v73 = sub_1D8A5BE40();
      if (v73)
      {
        v74 = *(v73 + 16);

        if (v74)
        {
          goto LABEL_27;
        }
      }

      sub_1D8918058(v26, v23, type metadata accessor for CVTrackSnapshot);
      v75 = v165;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v176 = v75;
      if ((v76 & 1) == 0)
      {
        sub_1D87F4628(0, *(v75 + 16) + 1, 1);
        v75 = v176;
      }

      v78 = *(v75 + 16);
      v77 = *(v75 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1D87F4628(v77 > 1, v78 + 1, 1);
        v75 = v176;
      }

      *(v75 + 16) = v78 + 1;
      v165 = v75;
      sub_1D8918058(v23, v75 + v64 + v78 * v65, type metadata accessor for CVTrackSnapshot);
LABEL_28:
      ;
    }

    while (v63 != v173);
  }

  else
  {
    v165 = MEMORY[0x1E69E7CC0];
  }

  v79 = *(v165 + 2);
  if (v79)
  {
    v176 = MEMORY[0x1E69E7CC0];
    v80 = v165;
    sub_1D87F4074(0, v79, 0);
    v81 = v176;
    v82 = v80 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v166 = *(v160 + 72);
    do
    {
      v83 = v169;
      v84 = sub_1D8917FF0(v82, v169, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1EEE9AC00](v84);
      v85 = v167;
      v86 = v168;
      *(&v155 - 2) = v83;
      *(&v155 - 1) = v85;

      v87 = sub_1D87C6A8C(sub_1D8943AD0, (&v155 - 4), v86);
      sub_1D8917FF0(v83, v10, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      v88 = MEMORY[0x1E69E7CC0];
      v89 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v90 = v172;
      *&v10[*(v172 + 20)] = v88;
      *&v10[*(v90 + 24)] = v87;
      *&v10[*(v90 + 28)] = v89;
      sub_1D89388D8(v83, type metadata accessor for CVTrackSnapshot);
      v176 = v81;
      v92 = *(v81 + 16);
      v91 = *(v81 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1D87F4074(v91 > 1, v92 + 1, 1);
        v81 = v176;
      }

      *(v81 + 16) = v92 + 1;
      sub_1D8918058(v10, v81 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v92, type metadata accessor for CVBundle);
      v82 += v166;
      --v79;
    }

    while (v79);
  }

  else
  {

    v81 = MEMORY[0x1E69E7CC0];
  }

  v165 = v81;
  v93 = MEMORY[0x1E69E7CC0];
  v94 = v157;
  if (v173)
  {
    v95 = 0;
    v96 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v97 = v159 + v96;
    v98 = *(v160 + 72);
    v99 = v155;
    do
    {
      sub_1D8917FF0(v97 + v98 * v95++, v99, type metadata accessor for CVTrackSnapshot);
      v175 = *(v99 + *(v170 + 24));
      v100 = sub_1D8921A48();
      v101 = *(v100 + 2);
      v102 = (v100 + 32);
      do
      {
        if (!v101)
        {

          sub_1D89388D8(v99, type metadata accessor for CVTrackSnapshot);
          goto LABEL_50;
        }

        v103 = *v102++;
        --v101;
      }

      while (v103 != 1);

      sub_1D8918058(v99, v94, type metadata accessor for CVTrackSnapshot);
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v176 = v93;
      if ((v104 & 1) == 0)
      {
        sub_1D87F4628(0, *(v93 + 2) + 1, 1);
        v93 = v176;
      }

      v106 = *(v93 + 2);
      v105 = *(v93 + 3);
      v107 = v93;
      if (v106 >= v105 >> 1)
      {
        sub_1D87F4628(v105 > 1, v106 + 1, 1);
        v107 = v176;
      }

      *(v107 + 16) = v106 + 1;
      sub_1D8918058(v94, v107 + v96 + v106 * v98, type metadata accessor for CVTrackSnapshot);
      v93 = v107;
LABEL_50:
      ;
    }

    while (v95 != v173);
  }

  v108 = *(v93 + 2);
  if (v108)
  {
    v176 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v108, 0);
    v109 = v93;
    v110 = v176;
    v111 = *(v160 + 80);
    v157 = v109;
    v112 = &v109[(v111 + 32) & ~v111];
    v162 = *(v160 + 72);
    v113 = v156;
    do
    {
      v166 = v108;
      v114 = v169;
      v115 = sub_1D8917FF0(v112, v169, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1EEE9AC00](v115);
      v116 = v167;
      *(&v155 - 2) = v114;
      *(&v155 - 1) = v116;
      v117 = v165;

      v118 = sub_1D87C6A8C(sub_1D8943AF0, (&v155 - 4), v117);
      MEMORY[0x1EEE9AC00](v118);
      *(&v155 - 2) = v114;
      *(&v155 - 1) = v116;
      v119 = v168;

      v120 = sub_1D87C6A8C(sub_1D894474C, (&v155 - 4), v119);
      sub_1D8917FF0(v114, v113, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      v121 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v122 = v172;
      *(v113 + *(v172 + 20)) = v118;
      *(v113 + *(v122 + 24)) = v120;
      *(v113 + *(v122 + 28)) = v121;
      sub_1D89388D8(v114, type metadata accessor for CVTrackSnapshot);
      v176 = v110;
      v124 = *(v110 + 16);
      v123 = *(v110 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_1D87F4074(v123 > 1, v124 + 1, 1);
        v110 = v176;
      }

      *(v110 + 16) = v124 + 1;
      sub_1D8918058(v113, v110 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v124, type metadata accessor for CVBundle);
      v112 += v162;
      v108 = v166 - 1;
    }

    while (v166 != 1);
    v166 = v110;
  }

  else
  {

    v166 = MEMORY[0x1E69E7CC0];
  }

  v125 = v161;
  v126 = MEMORY[0x1E69E7CC0];
  if (v173)
  {
    v127 = 0;
    v128 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v129 = v159 + v128;
    v130 = *(v160 + 72);
    do
    {
      sub_1D8917FF0(v129 + v130 * v127++, v125, type metadata accessor for CVTrackSnapshot);
      v175 = *(v125 + *(v170 + 24));
      v131 = sub_1D8921A48();
      v132 = *(v131 + 2);
      v133 = (v131 + 32);
      do
      {
        if (!v132)
        {

          sub_1D89388D8(v125, type metadata accessor for CVTrackSnapshot);
          goto LABEL_69;
        }

        v134 = *v133++;
        --v132;
      }

      while (v134);

      sub_1D8918058(v125, v163, type metadata accessor for CVTrackSnapshot);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v176 = v126;
      if ((v135 & 1) == 0)
      {
        sub_1D87F4628(0, *(v126 + 16) + 1, 1);
        v126 = v176;
      }

      v137 = *(v126 + 16);
      v136 = *(v126 + 24);
      if (v137 >= v136 >> 1)
      {
        sub_1D87F4628(v136 > 1, v137 + 1, 1);
        v126 = v176;
      }

      *(v126 + 16) = v137 + 1;
      sub_1D8918058(v163, v126 + v128 + v137 * v130, type metadata accessor for CVTrackSnapshot);
      v125 = v161;
LABEL_69:
      ;
    }

    while (v127 != v173);
  }

  v138 = *(v126 + 16);
  if (v138)
  {
    v176 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v138, 0);
    v139 = v176;
    v140 = v126 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v173 = *(v160 + 72);
    v141 = v169;
    do
    {
      v142 = sub_1D8917FF0(v140, v141, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1EEE9AC00](v142);
      v143 = v167;
      v144 = v168;
      *(&v155 - 2) = v141;
      *(&v155 - 1) = v143;

      v145 = sub_1D87C6A8C(sub_1D894474C, (&v155 - 4), v144);
      v146 = v164;
      sub_1D8917FF0(v141, v164, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      v147 = MEMORY[0x1E69E7CC0];
      v148 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v149 = v172;
      *(v146 + *(v172 + 20)) = v147;
      *(v146 + *(v149 + 24)) = v145;
      *(v146 + *(v149 + 28)) = v148;
      sub_1D89388D8(v141, type metadata accessor for CVTrackSnapshot);
      v176 = v139;
      v151 = *(v139 + 16);
      v150 = *(v139 + 24);
      if (v151 >= v150 >> 1)
      {
        sub_1D87F4074(v150 > 1, v151 + 1, 1);
        v139 = v176;
      }

      *(v139 + 16) = v151 + 1;
      sub_1D8918058(v146, v139 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v151, type metadata accessor for CVBundle);
      v140 += v173;
      --v138;
    }

    while (v138);
  }

  else
  {

    v139 = MEMORY[0x1E69E7CC0];
  }

  v152 = v166;
  v153 = sub_1D8940998(v166, v158);
  v174 = v152;
  sub_1D88F3C08(v139);
  sub_1D88F3C08(v153);
  return v174;
}

BOOL sub_1D8929094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - v6;
  CVBundle.latestEstimate.getter(v31);
  v32[0] = *&v31[0];
  v8 = sub_1D8A5BE40();

  if (v8)
  {
    sub_1D89C5AE8(v8, v7);

    v9 = sub_1D8B13240();
    if ((*(*(v9 - 8) + 48))(v7, 1, v9) != 1)
    {
      sub_1D87A14E4(v7, &qword_1ECA63178);
      return 0;
    }
  }

  else
  {
    v11 = sub_1D8B13240();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  sub_1D87A14E4(v7, &qword_1ECA63178);
  v35 = *(v3 + *(type metadata accessor for CVTrackSnapshot(0) + 24));
  CVDetection.detection.getter(v32);
  v12 = v33;
  v13 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v13 + 64))(v31, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v32);
  Corners.bounds.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  CVBundle.corners.getter(v31);
  Corners.bounds.getter();
  v38.origin.x = v22;
  v38.origin.y = v23;
  v25 = v24;
  v27 = v26;
  v36.origin.x = v15;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  v38.size.width = v25;
  v38.size.height = v27;
  v37 = CGRectIntersection(v36, v38);
  width = v37.size.width;
  height = v37.size.height;
  CVBundle.latestEstimate.getter(v31);
  v32[0] = *&v31[0];
  CVDetection.detectionType.getter(&v35);

  if (v35 == 2)
  {
    v30 = v19 * v21;
  }

  else
  {
    v30 = v25 * v27;
  }

  return v30 * *(a2 + 8) <= width * height;
}

uint64_t sub_1D8929348(uint64_t a1, uint64_t a2)
{
  CVBundle.latestEstimate.getter(&v7);
  v3 = sub_1D8A5BE40();
  if (v3)
  {
    v4 = v3;

    v5 = sub_1D89A5880(a2, v4);

    return v5 & 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D89293D8(__int128 *a1)
{
  v2 = v1;
  v209 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v209);
  v219 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RefinementState(0);
  v241 = *(v6 - 8);
  v242 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v208 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v240 = &v194 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v239 = &v194 - v11;
  v12 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v237 = *(v12 - 8);
  v238 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v236 = &v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BundleClassification.ClassificationType(0);
  v235 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v247 = &v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0);
  v205 = *(v16 - 8);
  v206 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v200 = &v194 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B28);
  v198 = *(v18 - 8);
  v199 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v197 = &v194 - v19;
  v20 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v195 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v213 = (&v194 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v225 = &v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D8B13240();
  v227 = *(v24 - 8);
  v228 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v221 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v223 = &v194 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v212 = &v194 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v194 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v244 = &v194 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v194 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v224 = &v194 - v39;
  isUniquelyReferenced_nonNull_native = type metadata accessor for CVBundle.BundleType(0);
  v41 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v222 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v214 = &v194 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v194 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v226 = &v194 - v48;
  v217 = type metadata accessor for CVBundle(0);
  v233 = *(v217 - 8);
  v49 = MEMORY[0x1EEE9AC00](v217);
  v231 = &v194 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v230 = &v194 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v216 = &v194 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v194 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650E0);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v245 = &v194 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v234 = (&v194 - v60);
  v61 = type metadata accessor for LoggingSignposter(0);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v194 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1[3];
  v261 = a1[2];
  v262 = v65;
  v66 = a1[5];
  v263 = a1[4];
  v264 = v66;
  v67 = a1[1];
  v259 = *a1;
  v260 = v67;
  if (qword_1EE0E6340 != -1)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v68 = __swift_project_value_buffer(v62, qword_1EE0E6348);
    sub_1D8917FF0(v68, v64, type metadata accessor for LoggingSignposter);
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("BundleManager.updateWithTrackManagerState", 41, 2u, 1, 0, v256);
    sub_1D89388D8(v64, type metadata accessor for LoggingSignposter);
    v69 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_logger;
    sub_1D88C7A20(&v259, &v250);
    v204 = v2;
    v196 = v69;
    v70 = sub_1D8B151C0();
    v71 = sub_1D8B16200();
    sub_1D8943A60(&v259);
    v72 = os_log_type_enabled(v70, v71);
    v232 = isUniquelyReferenced_nonNull_native;
    v211 = v33;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v249[0] = v74;
      *v73 = 136315138;
      v252 = v261;
      v253 = v262;
      v254 = v263;
      v255 = v264;
      v250 = v259;
      v251 = v260;
      v75 = TrackManager.State.description.getter();
      v77 = v38;
      v78 = sub_1D89AC714(v75, v76, v249);

      *(v73 + 4) = v78;
      v38 = v77;
      _os_log_impl(&dword_1D8783000, v70, v71, "updateWithTrackManagerState received: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1DA721330](v74, -1, -1);
      MEMORY[0x1DA721330](v73, -1, -1);
    }

    v33 = v214;
    v79 = v261;
    if ((BYTE8(v261) & 1) == 0)
    {
      v80 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_otherSyntheticTracks;
      v81 = v204;
      swift_beginAccess();
      *(v81 + v80) = MEMORY[0x1E69E7CD0];
    }

    v82 = v264;
    v252 = v261;
    v253 = v262;
    v254 = v263;
    v255 = v264;
    v250 = v259;
    v251 = v260;

    v83 = v234;
    v84 = v204;
    sub_1D89270B0(&v250, v234);
    *&v250 = v82;
    v85 = v245;
    sub_1D87A0E38(v83, v245, &qword_1ECA650E0);
    sub_1D88F53D4(v85);
    sub_1D87A14E4(v83, &qword_1ECA650E0);
    v86 = v250;
    swift_beginAccess();
    *&v250 = v86;

    sub_1D88F4D10(v87);
    v88 = v250;
    v89 = sub_1D893EF20(MEMORY[0x1E69E7CC0]);
    v202 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles;
    v203 = v89;
    v90 = *(v84 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
    v234 = *(v90 + 16);
    if (v234)
    {
      v201 = v88;
      v229 = v90 + ((*(v233 + 80) + 32) & ~*(v233 + 80));
      v220 = v227 + 8;
      v210 = (v227 + 16);
      v91 = (v227 + 32);
      v207 = v227 + 40;
      v245 = v90;

      v62 = v245;
      v33 = 0;
      v218 = v91;
      v2 = v91 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v64 = v228;
      isUniquelyReferenced_nonNull_native = v232;
      v92 = v203;
      v215 = v47;
      v93 = v226;
      do
      {
        if (v33 >= *(v62 + 16))
        {
          goto LABEL_86;
        }

        sub_1D8917FF0(v229 + *(v233 + 72) * v33, v56, type metadata accessor for CVBundle);
        sub_1D8917FF0(v56, v93, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v220)(v93, v64);
          sub_1D8917FF0(v56, v47, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v94 = *v218;
            (*v218)(v38, v47, v64);
          }

          else
          {
            v95 = v92;
            v96 = v225;
            sub_1D8918058(v47, v225, type metadata accessor for CVTrackSnapshot);
            (*v210)(v38, v96, v64);
            v97 = v96;
            v92 = v95;
            sub_1D89388D8(v97, type metadata accessor for CVTrackSnapshot);
            v94 = *v218;
          }

          v98 = v224;
          v47 = v38;
          v94(v224, v38, v64);
          v94(v244, v98, v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v250 = v92;
          v64 = sub_1D881C1D8();
          v100 = v92[2];
          v101 = (v99 & 1) == 0;
          v62 = v100 + v101;
          if (__OFADD__(v100, v101))
          {
            goto LABEL_90;
          }

          v38 = v99;
          if (v92[3] >= v62)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D896AD68();
            }
          }

          else
          {
            sub_1D89745C8(v62, isUniquelyReferenced_nonNull_native);
            v102 = sub_1D881C1D8();
            if ((v38 & 1) != (v103 & 1))
            {
              result = sub_1D8B16C30();
              __break(1u);
              return result;
            }

            v64 = v102;
          }

          isUniquelyReferenced_nonNull_native = v232;
          v92 = v250;
          if (v38)
          {
            v104 = *(v250 + 56) + *(v227 + 72) * v64;
            v64 = v228;
            (*(v227 + 40))(v104, v244, v228);
            sub_1D89388D8(v56, type metadata accessor for CVBundle);
          }

          else
          {
            *(v250 + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v105 = v92[7] + *(v227 + 72) * v64;
            v64 = v228;
            v94(v105, v244, v228);
            v62 = sub_1D89388D8(v56, type metadata accessor for CVBundle);
            v106 = v92[2];
            v107 = __OFADD__(v106, 1);
            v108 = v106 + 1;
            if (v107)
            {
              goto LABEL_91;
            }

            v92[2] = v108;
          }

          v38 = v47;
          v47 = v215;
          v93 = v226;
        }

        else
        {
          sub_1D89388D8(v56, type metadata accessor for CVBundle);
          sub_1D89388D8(v93, type metadata accessor for CVBundle.BundleType);
        }

        v62 = v245;
        ++v33;
      }

      while (v234 != v33);
      v203 = v92;

      v33 = v214;
      v88 = v201;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v232;
    }

    v109 = sub_1D8927F8C(v88, v203);

    v201 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundleIdToBundleClassifier;
    v252 = v261;
    v253 = v262;
    v254 = v263;
    v255 = v264;
    v250 = v259;
    v251 = v260;

    v224 = v109;
    v220 = sub_1D892AEC8(v110, v109, &v250);
    v38 = v111;

    v47 = v222;
    v2 = v223;
    if (*(v38 + 16))
    {
      sub_1D88C7A20(&v259, &v250);

      v112 = sub_1D8B151C0();
      v113 = sub_1D8B16200();
      sub_1D8943A60(&v259);
      v114 = os_log_type_enabled(v112, v113);
      v64 = v228;
      if (v114)
      {
        LODWORD(v229) = v113;
        v115 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        *&v250 = v226;
        *v115 = 134218498;
        *(v115 + 4) = *(v38 + 16);

        *(v115 + 12) = 2048;
        *(v115 + 14) = v79;
        *(v115 + 22) = 2080;
        v116 = *(v38 + 16);
        v117 = MEMORY[0x1E69E7CC0];
        if (v116)
        {
          v210 = v115;
          v215 = v112;
          v248 = MEMORY[0x1E69E7CC0];
          sub_1D87F3EE0(0, v116, 0);
          v117 = v248;
          v118 = (*(v195 + 80) + 32) & ~*(v195 + 80);
          v218 = v38;
          v119 = v38 + v118;
          v120 = *(v195 + 72);
          v234 = (v227 + 16);
          v244 = (v227 + 32);
          v245 = v120;
          do
          {
            v121 = v213;
            sub_1D8917FF0(v119, v213, type metadata accessor for BundleManager.BundleClassificationRequest);
            sub_1D8917FF0(v121, v33, type metadata accessor for CVBundle.BundleType);
            sub_1D89388D8(v121, type metadata accessor for BundleManager.BundleClassificationRequest);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v122 = *v244;
              v123 = v212;
              (*v244)(v212, v33, v64);
            }

            else
            {
              v124 = v225;
              sub_1D8918058(v33, v225, type metadata accessor for CVTrackSnapshot);
              v123 = v212;
              (*v234)(v212, v124, v64);
              sub_1D89388D8(v124, type metadata accessor for CVTrackSnapshot);
              v122 = *v244;
            }

            v125 = v211;
            v122(v211, v123, v64);
            v248 = v117;
            v127 = *(v117 + 16);
            v126 = *(v117 + 24);
            if (v127 >= v126 >> 1)
            {
              sub_1D87F3EE0(v126 > 1, v127 + 1, 1);
              v117 = v248;
            }

            *(v117 + 16) = v127 + 1;
            v122((v117 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v127), v125, v64);
            v119 += v245;
            --v116;
            v33 = v214;
          }

          while (v116);
          isUniquelyReferenced_nonNull_native = v232;
          v38 = v218;
          v112 = v215;
          v115 = v210;
        }

        v128 = MEMORY[0x1DA71F1E0](v117, v64);
        v130 = v129;

        v131 = v128;
        v64 = v228;
        v132 = sub_1D89AC714(v131, v130, &v250);

        *(v115 + 24) = v132;
        _os_log_impl(&dword_1D8783000, v112, v229, "Created classificationRequests for %ld bundles @ %f. Bundle ids: %s", v115, 0x20u);
        v133 = v226;
        __swift_destroy_boxed_opaque_existential_1(v226);
        MEMORY[0x1DA721330](v133, -1, -1);
        MEMORY[0x1DA721330](v115, -1, -1);

        v47 = v222;
        v2 = v223;
      }

      else
      {
      }

      v134 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
      v135 = v204;
      swift_beginAccess();
      v136 = v205;
      v137 = v135 + v134;
      v138 = v200;
      v139 = v206;
      v205[2](v200, v137, v206);
      *&v250 = v38;
      v33 = v197;
      sub_1D8B15EE0();
      (v136[1])(v138, v139);
      (*(v198 + 8))(v33, v199);
    }

    else
    {

      v64 = v228;
    }

    v140 = *(v224 + 2);
    v56 = v221;
    if (!v140)
    {
      break;
    }

    *&v250 = MEMORY[0x1E69E7CC0];
    v218 = v140;
    sub_1D87F4074(0, v140, 0);
    v141 = v224;
    v229 = v250;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0);
    v142 = 0;
    v210 = ((*(v233 + 80) + 32) & ~*(v233 + 80));
    v215 = (v210 + v141);
    v205 = (v227 + 16);
    v211 = (v227 + 8);
    v212 = v62;
    v213 = (v227 + 32);
    v214 = ((v227 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    while (1)
    {
      if (v142 >= *(v141 + 2))
      {
        goto LABEL_87;
      }

      v143 = *(v233 + 72);
      v234 = v142;
      v227 = v143;
      v144 = v230;
      sub_1D8917FF0(v215 + v143 * v142, v230, type metadata accessor for CVBundle);
      sub_1D8917FF0(v144, v231, type metadata accessor for CVBundle);
      sub_1D8917FF0(v144, v47, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v145 = *v213;
        (*v213)(v56, v47, v64);
      }

      else
      {
        v146 = v225;
        sub_1D8918058(v47, v225, type metadata accessor for CVTrackSnapshot);
        (*v205)(v56, v146, v64);
        sub_1D89388D8(v146, type metadata accessor for CVTrackSnapshot);
        v145 = *v213;
      }

      v62 = v145(v2, v56, v64);
      v147 = v220;
      if (!*(v220 + 16))
      {
        break;
      }

      v62 = sub_1D87EF764(v2);
      if ((v148 & 1) == 0)
      {
        goto LABEL_89;
      }

      v234 = (v234 + 1);
      v149 = *(*(v147 + 56) + 8 * v62);
      v150 = *v211;

      v150(v2, v64);
      v151 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
      swift_beginAccess();
      v226 = v149;
      v2 = *(v149 + v151);
      v152 = sub_1D8B168F0();
      v153 = v152;
      isUniquelyReferenced_nonNull_native = v2 + 64;
      v154 = 1 << *(v2 + 32);
      if (v154 < 64)
      {
        v155 = ~(-1 << v154);
      }

      else
      {
        v155 = -1;
      }

      v64 = v155 & *(v2 + 64);
      v56 = ((v154 + 63) >> 6);
      v244 = (v152 + 64);
      v245 = v2;

      v47 = 0;
      if (v64)
      {
        while (1)
        {
          v156 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
LABEL_61:
          v38 = v156 | (v47 << 6);
          v159 = v245;
          v33 = *(v235 + 72) * v38;
          sub_1D8917FF0(*(v245 + 48) + v33, v247, type metadata accessor for BundleClassification.ClassificationType);
          v160 = v236;
          sub_1D8917FF0(*(v159 + 56) + *(v237 + 72) * v38, v236, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D8917FF0(v160 + *(v238 + 20), v246, type metadata accessor for RefinementStateInternal);
          sub_1D89388D8(v160, type metadata accessor for BundleClassifier.ClassificationInfo);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 2)
          {
            break;
          }

          if (EnumCaseMultiPayload != 3)
          {
            v163 = v240;
LABEL_72:
            swift_storeEnumTagMultiPayload();
            goto LABEL_73;
          }

          v167 = v219;
          sub_1D8918058(v246, v219, type metadata accessor for BundleClassification);
          v168 = v167;
          v169 = (v167 + *(v209 + 20));
          v170 = *v169;
          if (v170 == 2)
          {
            v171 = v208;
            sub_1D8918058(v168, v208, type metadata accessor for BundleClassification);
          }

          else
          {
            v177 = *(v169 + 4);
            v178 = *(v169 + 2);
            v206 = *(v169 + 1);
            v179 = v169[24];
            LODWORD(v207) = v179;
            sub_1D8912A68(v206, v178, v179);
            sub_1D89388D8(v219, type metadata accessor for BundleClassification);
            v180 = v170 & 1;
            v171 = v208;
            *v208 = v180;
            *(v171 + 1) = v206;
            *(v171 + 2) = v178;
            v171[24] = v207;
            *(v171 + 4) = v177;
          }

          swift_storeEnumTagMultiPayload();
          v163 = v240;
          sub_1D8918058(v171, v240, type metadata accessor for RefinementState);
LABEL_73:
          v2 = type metadata accessor for RefinementState;
          v173 = v163;
          v174 = v239;
          sub_1D8918058(v173, v239, type metadata accessor for RefinementState);
          *&v244[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          sub_1D8918058(v247, v153[6] + v33, type metadata accessor for BundleClassification.ClassificationType);
          v62 = sub_1D8918058(v174, v153[7] + *(v241 + 72) * v38, type metadata accessor for RefinementState);
          v175 = v153[2];
          v107 = __OFADD__(v175, 1);
          v176 = v175 + 1;
          if (v107)
          {
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v153[2] = v176;
          if (!v64)
          {
            goto LABEL_56;
          }
        }

        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v162 = v246;
          }

          else
          {
            v172 = v246;

            v162 = v172 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48);
          }

          v163 = v240;
          sub_1D881F6FC(v162, v240, &qword_1ECA641B8);
        }

        else
        {
          v164 = v246;
          v165 = *(v246 + 24);
          v166 = *(v246 + 32);
          v163 = v240;
          *v240 = *v246;
          *(v163 + 8) = *(v164 + 8);
          v163[24] = v165;
          *(v163 + 4) = v166;
        }

        goto LABEL_72;
      }

LABEL_56:
      v157 = v47;
      while (1)
      {
        v47 = v157 + 1;
        if (__OFADD__(v157, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        if (v47 >= v56)
        {
          break;
        }

        v158 = *(isUniquelyReferenced_nonNull_native + 8 * v47);
        ++v157;
        if (v158)
        {
          v156 = __clz(__rbit64(v158));
          v64 = (v158 - 1) & v158;
          goto LABEL_61;
        }
      }

      sub_1D89388D8(v230, type metadata accessor for CVBundle);
      v181 = *(v217 + 28);
      v182 = v231;

      *(v182 + v181) = v153;
      v183 = v182;
      v184 = v216;
      sub_1D8918058(v183, v216, type metadata accessor for CVBundle);
      v185 = v229;
      *&v250 = v229;
      v187 = *(v229 + 16);
      v186 = *(v229 + 24);
      if (v187 >= v186 >> 1)
      {
        sub_1D87F4074(v186 > 1, v187 + 1, 1);
        v185 = v250;
      }

      *(v185 + 16) = v187 + 1;
      v229 = v185;
      v62 = sub_1D8918058(v184, v210 + v185 + v187 * v227, type metadata accessor for CVBundle);
      v142 = v234;
      v64 = v228;
      v56 = v221;
      v47 = v222;
      v2 = v223;
      v141 = v224;
      isUniquelyReferenced_nonNull_native = v232;
      if (v234 == v218)
      {

        v188 = v229;
        goto LABEL_83;
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
    v193 = v62;
    swift_once();
    v62 = v193;
  }

  v188 = MEMORY[0x1E69E7CC0];
LABEL_83:
  v189 = v204;
  *(v204 + v201) = v220;

  v252 = v261;
  v253 = v262;
  v254 = v263;
  v255 = v264;
  v250 = v259;
  v251 = v260;
  sub_1D8923290(&v250, v188);
  v190 = v257;
  v191 = v258;
  __swift_project_boxed_opaque_existential_1(v256, v257);
  (*(v191 + 8))(v190, v191);
  __swift_destroy_boxed_opaque_existential_1(v256);
  *(v189 + v202) = v188;
}

uint64_t sub_1D892AEC8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v125 = a1;
  v5 = 0;
  v129 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v129);
  v133 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v110 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v104 - v11;
  v12 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v115 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v109 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D8B13240();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v105 = &v104 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v104 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v104 - v26;
  v28 = type metadata accessor for CVBundle(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v114 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v104 - v32;
  v34 = a3[3];
  v142 = a3[2];
  v143 = v34;
  v35 = a3[5];
  v144 = a3[4];
  v145 = v35;
  v36 = a3[1];
  v140 = *a3;
  v141 = v36;
  v37 = a2;
  v38 = *(a2 + 16);
  v39 = type metadata accessor for BundleClassifier(0);
  v40 = sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  v130 = v17;
  v113 = v39;
  v132 = MEMORY[0x1DA71EC30](v38, v17, v39, v40);
  v107 = v18;
  if (v38)
  {
    v120 = v25;
    v112 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_configuration;
    v111 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_vapClient;
    v41 = v37 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v119 = *(v29 + 72);
    v108 = (v18 + 16);
    v118 = (v18 + 32);
    v117 = (v18 + 8);
    v131 = MEMORY[0x1E69E7CC0];
    v42 = v130;
    v43 = v124;
    do
    {
      sub_1D8917FF0(v41, v33, type metadata accessor for CVBundle);
      sub_1D8917FF0(v33, v43, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v43;
        v46 = *v118;
        v47 = v120;
        (*v118)(v120, v45, v42);
      }

      else
      {
        v48 = v43;
        v49 = v109;
        v50 = v5;
        v51 = v41;
        v52 = v38;
        v53 = v33;
        v54 = v27;
        v55 = v118;
        sub_1D8918058(v48, v109, type metadata accessor for CVTrackSnapshot);
        v47 = v120;
        (*v108)(v120, v49, v42);
        sub_1D89388D8(v49, type metadata accessor for CVTrackSnapshot);
        v46 = *v55;
        v27 = v54;
        v33 = v53;
        v38 = v52;
        v41 = v51;
        v5 = v50;
      }

      v46(v27, v47, v42);
      v56 = v125;
      if (*(v125 + 16) && (v57 = sub_1D87EF764(v27), (v58 & 1) != 0))
      {
        v59 = *(*(v56 + 56) + 8 * v57);
      }

      else
      {
        v60 = v114;
        sub_1D8917FF0(v33, v114, type metadata accessor for CVBundle);
        v61 = v116;
        v62 = v115;
        sub_1D8917FF0(v116 + v112, v115, type metadata accessor for BundleManager.Configuration);
        v63 = *(v61 + v111);
        swift_allocObject();

        v59 = sub_1D8930B7C(v60, v62, v63);
      }

      v136 = v142;
      v137 = v143;
      v138 = v144;
      v139 = v145;
      v134 = v140;
      v135 = v141;

      sub_1D8931F84(v33, &v134);
      v64 = v132;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v64;
      sub_1D8B05D58(v59, v27, isUniquelyReferenced_nonNull_native);
      v132 = v134;
      v66 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
      v67 = swift_beginAccess();
      v68 = *(v59 + v66);
      MEMORY[0x1EEE9AC00](v67);
      *(&v104 - 4) = v33;
      *(&v104 - 3) = &v140;
      *(&v104 - 2) = v59;

      v69 = sub_1D8AD04F0(sub_1D8944770, (&v104 - 6), v68);

      if (v69)
      {
        v136 = v142;
        v137 = v143;
        v138 = v144;
        v139 = v145;
        v134 = v140;
        v135 = v141;
        v70 = v122;
        sub_1D8933880(v33, &v134, v122);
        sub_1D8917FF0(v70, v123, type metadata accessor for BundleManager.BundleClassificationRequest);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1D87C925C(0, v131[2] + 1, 1, v131);
        }

        v72 = v131[2];
        v71 = v131[3];
        if (v72 >= v71 >> 1)
        {
          v131 = sub_1D87C925C(v71 > 1, v72 + 1, 1, v131);
        }

        sub_1D89388D8(v122, type metadata accessor for BundleManager.BundleClassificationRequest);
        v42 = v130;
        (*v117)(v27, v130);
        v73 = v131;
        v131[2] = v72 + 1;
        sub_1D8918058(v123, v73 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v72, type metadata accessor for BundleManager.BundleClassificationRequest);
      }

      else
      {
        v44 = v130;
        (*v117)(v27, v130);
        v42 = v44;
      }

      sub_1D89388D8(v33, type metadata accessor for CVBundle);
      v41 += v119;
      --v38;
      v43 = v124;
    }

    while (v38);
  }

  else
  {
    v131 = MEMORY[0x1E69E7CC0];
  }

  v75 = sub_1D87C2FA0(v74);

  v77 = sub_1D87C2FA0(v76);
  if (*(v77 + 16) <= *(v75 + 16) >> 3)
  {
    *&v134 = v75;
    sub_1D88B8588(v77);

    v78 = v134;
  }

  else
  {
    v78 = sub_1D88BA124(v77, v75);
  }

  v79 = v107;
  v80 = v106;
  v81 = v78 + 56;
  v82 = 1 << *(v78 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v78 + 56);
  v85 = (v82 + 63) >> 6;
  v123 = v107 + 16;
  v122 = v107 + 32;
  v120 = (v107 + 8);

  v87 = 0;
  v121 = v78;
  v88 = v126;
  while (v84)
  {
LABEL_32:
    v90 = *(v78 + 48) + *(v79 + 72) * (__clz(__rbit64(v84)) | (v87 << 6));
    v91 = v105;
    v92 = v130;
    (*(v79 + 16))(v105, v90, v130);
    result = (*(v79 + 32))(v80, v91, v92);
    v93 = v125;
    if (!*(v125 + 16))
    {
      goto LABEL_47;
    }

    result = sub_1D87EF764(v80);
    if ((v94 & 1) == 0)
    {
      goto LABEL_48;
    }

    v124 = v5;
    v84 &= v84 - 1;
    v95 = *(*(v93 + 56) + 8 * result);

    result = sub_1D8931AE4();
    v96 = result;
    v97 = *(result + 16);
    if (v97)
    {
      v98 = 0;
      while (1)
      {
        if (v98 >= *(v96 + 16))
        {
          goto LABEL_46;
        }

        sub_1D8917FF0(v96 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v98, v88, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D8917FF0(v88 + *(v128 + 20), v133, type metadata accessor for RefinementStateInternal);
        sub_1D89388D8(v88, type metadata accessor for BundleClassifier.ClassificationInfo);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          break;
        }

        if (EnumCaseMultiPayload == 1)
        {

          v100 = v133;
LABEL_43:
          sub_1D87A14E4(v100, &qword_1ECA641B8);
          v102 = v132;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          *&v134 = v102;
          v80 = v106;
          sub_1D8B05D58(v95, v106, v103);
          v132 = v134;
          result = (*v120)(v80, v130);
          goto LABEL_26;
        }

        ++v98;
        result = sub_1D89388D8(v133, type metadata accessor for RefinementStateInternal);
        if (v97 == v98)
        {
          goto LABEL_25;
        }
      }

      v101 = v133;

      v100 = v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48);
      goto LABEL_43;
    }

LABEL_25:
    v80 = v106;
    (*v120)(v106, v130);

LABEL_26:
    v5 = v124;
    v79 = v107;
    v78 = v121;
  }

  while (1)
  {
    v89 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v89 >= v85)
    {

      return v132;
    }

    v84 = *(v81 + 8 * v89);
    ++v87;
    if (v84)
    {
      v87 = v89;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1D892BD60(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v30 = a1;
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13240();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v20 = a3[3];
  v31[2] = a3[2];
  v31[3] = v20;
  v31[4] = a3[4];
  v21 = a3[1];
  v31[0] = *a3;
  v31[1] = v21;
  v22 = sub_1D891DCA0(v31, v29, *(v28 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_vapClient));
  sub_1D8917FF0(a2, v12, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v14 + 32);
    v23(v17, v12, v13);
  }

  else
  {
    sub_1D8918058(v12, v9, type metadata accessor for CVTrackSnapshot);
    (*(v14 + 16))(v17, v9, v13);
    sub_1D89388D8(v9, type metadata accessor for CVTrackSnapshot);
    v23 = *(v14 + 32);
  }

  v23(v19, v17, v13);
  v24 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v31[0] = *v24;
  sub_1D8B05F24(v22, v19, isUniquelyReferenced_nonNull_native);
  result = (*(v14 + 8))(v19, v13);
  *v24 = *&v31[0];
  return result;
}

uint64_t sub_1D892C038()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8);
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v79 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v80 = &v58 - v12;
  v71 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v58 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0);
  v75 = *(v78 - 8);
  v15 = MEMORY[0x1EEE9AC00](v78);
  v77 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v58 - v17;
  v70 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationWorkerTask;
  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationWorkerTask))
  {

    sub_1D8B15F80();
  }

  v72 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationMergerTask;
  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationMergerTask))
  {

    sub_1D8B15F80();
  }

  v18 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
  v63 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
  swift_beginAccess();
  v19 = v75;
  v20 = *(v75 + 16);
  v21 = v1 + v18;
  v22 = v73;
  v23 = v78;
  v65 = v75 + 16;
  v64 = v20;
  v20(v73, v21, v78);
  sub_1D8B15EF0();
  v68 = *(v19 + 8);
  v69 = v19 + 8;
  v68(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649F8);
  LODWORD(v62) = *MEMORY[0x1E69E8650];
  v61 = *(v5 + 104);
  v61(v7);
  v24 = v76;
  sub_1D8B15EB0();
  v60 = *(v5 + 8);
  v60(v7, v4);
  v59 = v4;
  v25 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStream;
  swift_beginAccess();
  v26 = v81;
  (*(v81 + 40))(v1 + v25, v24, v82);
  swift_endAccess();
  v27 = v63;
  swift_beginAccess();
  (*(v75 + 40))(v1 + v27, v22, v23);
  swift_endAccess();
  v28 = v59;
  (v61)(v7, v62, v59);
  sub_1D8B15EB0();
  v60(v7, v28);
  v29 = v26 + 16;
  v30 = *(v26 + 16);
  v30(v79, v1 + v25, v82);
  v31 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager__bundleClassificationRunner;
  Strong = swift_unknownObjectWeakLoadStrong();
  v66 = v1;
  if (Strong)
  {
    v33 = Strong;
    v34 = *(v31 + 8);
  }

  else
  {
    swift_unknownObjectRetain();
    v34 = &off_1F542F4A8;
    v33 = v1;
  }

  v63 = v33;
  v61 = sub_1D8B15EA0();
  v35 = *(v61 - 1);
  v60 = *(v35 + 56);
  v62 = v35 + 56;
  (v60)(v74, 1, 1, v61);
  v36 = swift_allocObject();
  *(v36 + 24) = v34;
  swift_unknownObjectWeakInit();
  v37 = v73;
  v38 = v78;
  v64(v73, v77, v78);
  v30(v76, v79, v82);
  v39 = v75;
  v40 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v41 = v81;
  v42 = *(v81 + 80);
  v65 = v29;
  v43 = (v67 + v42 + v40) & ~v42;
  v67 = v42 | 7;
  v71 += 7;
  v64 = v30;
  v44 = (v71 + v43) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  (*(v39 + 32))(v45 + v40, v37, v38);
  v75 = *(v41 + 32);
  v46 = v76;
  (v75)(v45 + v43, v76, v82);
  *(v45 + v44) = v36;
  v47 = v74;
  v48 = sub_1D8AD1984(0, 0, v74, &unk_1D8B2BF80, v45);
  sub_1D87A14E4(v47, &unk_1ECA675E0);
  v49 = v66;
  *(v66 + v70) = v48;

  (v60)(v47, 1, 1, v61);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = v82;
  v64(v46, v80, v82);
  v52 = (v42 + 32) & ~v42;
  v53 = (v71 + v52) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  (v75)(v54 + v52, v46, v51);
  *(v54 + v53) = v50;
  v55 = sub_1D8891CA0(0, 0, v47, &unk_1D8B2BF90, v54);
  swift_unknownObjectRelease();
  v56 = *(v81 + 8);
  v56(v79, v51);
  v68(v77, v78);
  v56(v80, v51);
  *(v49 + v72) = v55;
}

uint64_t sub_1D892C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  type metadata accessor for CVBundle(0);
  v6[36] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B28);
  v6[37] = v7;
  v6[38] = *(v7 - 8);
  v6[39] = swift_task_alloc();
  v8 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BD8);
  v6[43] = v9;
  v6[44] = *(v9 - 8);
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D892CAD0, 0, 0);
}

uint64_t sub_1D892CAD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1D892CBB8;
  v2 = *(v0 + 344);

  return MEMORY[0x1EEE6D9C8](v0 + 232, 0, 0, v2);
}

uint64_t sub_1D892CBB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D892CCB4, 0, 0);
}

uint64_t sub_1D892CCB4()
{
  v1 = v0[29];
  v0[47] = v1;
  if (!v1)
  {
    (*(v0[44] + 8))(v0[45], v0[43]);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0);
    sub_1D8B15EF0();

    v4 = v0[1];

    return v4();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[48] = Strong;
  if (!Strong)
  {
    (*(v0[44] + 8))(v0[45], v0[43]);
    goto LABEL_7;
  }

  v3 = Strong;
  if (sub_1D8B15F90())
  {
    (*(v0[44] + 8))(v0[45], v0[43]);
    swift_unknownObjectRelease();
LABEL_7:

    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D892CE34, v3, 0);
}

uint64_t sub_1D892CE34()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2 < 2)
  {
    if (v2)
    {
      v9 = *(v0 + 336);
      v10 = *(*(v0 + 328) + 80);
      *(v0 + 440) = v10;
      sub_1D8917FF0(v1 + ((v10 + 32) & ~v10), v9, type metadata accessor for BundleManager.BundleClassificationRequest);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63338);
      v11 = swift_allocObject();
      *(v0 + 416) = v11;
      *(v11 + 16) = xmmword_1D8B1AB90;
      v12 = sub_1D892D300;
    }

    else
    {

      *(v0 + 408) = MEMORY[0x1E69E7CC0];
      v12 = sub_1D892D1E8;
    }

    return MEMORY[0x1EEE6DFA0](v12, 0, 0);
  }

  else
  {
    v3 = *(v0 + 384);
    v4 = sub_1D893FD6C(&qword_1EE0E85E0, type metadata accessor for BundleManager);
    v5 = swift_task_alloc();
    *(v0 + 392) = v5;
    *(v5 + 16) = v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649F8);
    v7 = swift_task_alloc();
    *(v0 + 400) = v7;
    *v7 = v0;
    v7[1] = sub_1D892D04C;
    v8 = *(v0 + 320);

    return MEMORY[0x1EEE6DBF8](v0 + 256, v8, v6, v3, v4, &unk_1D8B2BFC8, v5, v8);
  }
}

uint64_t sub_1D892D04C()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x1EEE6DFA0](sub_1D892D178, v1, 0);
}

uint64_t sub_1D892D178()
{

  *(v0 + 408) = *(v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D892D1E8, 0, 0);
}

uint64_t sub_1D892D1E8()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v0[31] = v0[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0);
  sub_1D8B15EE0();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_1D892CBB8;
  v5 = v0[43];

  return MEMORY[0x1EEE6D9C8](v0 + 29, 0, 0, v5);
}

uint64_t sub_1D892D300()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 288);
  sub_1D8917FF0(v1, v3, type metadata accessor for CVBundle);
  v4 = (v1 + *(v2 + 20));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  *(v0 + 80) = v4[4];
  *(v0 + 96) = v7;
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  v8 = v4[1];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v8;
  v9 = *(v1 + *(v2 + 28));
  v10 = type metadata accessor for BundleClassification(0);
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  v11[2] = v9;
  v11[3] = v3;
  v11[4] = v0 + 16;
  v11[5] = v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BE0);
  sub_1D88C7A20(v0 + 16, v0 + 112);
  v13 = swift_task_alloc();
  *(v0 + 432) = v13;
  *v13 = v0;
  v13[1] = sub_1D892D47C;

  return MEMORY[0x1EEE6DBF8](v0 + 240, v10, v12, 0, 0, &unk_1D8B2BFB0, v11, v10);
}

uint64_t sub_1D892D47C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D892D594, 0, 0);
}

uint64_t sub_1D892D594()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 288);
  v5 = *(v0 + 416) + ((*(v0 + 440) + 32) & ~*(v0 + 440));
  v6 = *(v0 + 240);
  sub_1D8917FF0(v4, v5, type metadata accessor for CVBundle);
  sub_1D8917FF0(v2 + v3[6], v5 + v3[6], type metadata accessor for BundleManager.Configuration);
  v7 = *(v2 + v3[8]);
  v8 = (v5 + v3[5]);
  v9 = *(v0 + 96);
  v11 = *(v0 + 48);
  v10 = *(v0 + 64);
  v8[4] = *(v0 + 80);
  v8[5] = v9;
  v8[2] = v11;
  v8[3] = v10;
  v12 = *(v0 + 32);
  *v8 = *(v0 + 16);
  v8[1] = v12;
  *(v5 + v3[7]) = v6;
  *(v5 + v3[8]) = v7;

  sub_1D89388D8(v4, type metadata accessor for CVBundle);

  return MEMORY[0x1EEE6DFA0](sub_1D892D6C8, v1, 0);
}

uint64_t sub_1D892D6C8()
{
  sub_1D89388D8(v0[42], type metadata accessor for BundleManager.BundleClassificationRequest);

  v0[51] = v0[52];

  return MEMORY[0x1EEE6DFA0](sub_1D892D1E8, 0, 0);
}

uint64_t sub_1D892D758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BD8);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D892D824, 0, 0);
}

uint64_t sub_1D892D824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D892D90C;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

uint64_t sub_1D892D90C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D892DA08, 0, 0);
}

uint64_t sub_1D892DA08()
{
  v1 = v0[5];
  v0[12] = v1;
  if (!v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_8:

    v4 = v0[1];

    return v4();
  }

  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_7;
  }

  v3 = Strong;
  if (sub_1D8B15F90())
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

LABEL_7:

    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D892DB2C, v3, 0);
}

uint64_t sub_1D892DB2C()
{
  sub_1D892DC50(*(v0 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1D892DBA0, 0, 0);
}

uint64_t sub_1D892DBA0()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D892D90C;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

void sub_1D892DC50(uint64_t a1)
{
  v102 = type metadata accessor for CVBundle(0);
  v83 = *(v102 - 8);
  v3 = MEMORY[0x1EEE9AC00](v102);
  v118 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v98 = &v83 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v83 - v7;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v115);
  v108 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v83 - v12;
  v109 = sub_1D8B13240();
  v14 = *(v109 - 8);
  v15 = MEMORY[0x1EEE9AC00](v109);
  v105 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v104 = &v83 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v83 - v22;
  v92 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v24 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  v116 = v1;
  v26 = sub_1D8B151C0();
  v27 = sub_1D8B16200();
  v28 = os_log_type_enabled(v26, v27);
  v93 = v23;
  v94 = v13;
  v84 = v21;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    v30 = *(a1 + 16);
    *(v29 + 4) = v30;

    *(v29 + 12) = 2048;
    if (v30)
    {
      v31 = v24;
      v32 = *(a1 + *(v92 + 20) + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + 32);
    }

    else
    {
      v31 = v24;
      v32 = 0x7FF8000000000000;
    }

    *(v29 + 14) = v32;
    _os_log_impl(&dword_1D8783000, v26, v27, "Merging classificationResponses for %ld bundles @ %f", v29, 0x16u);
    MEMORY[0x1DA721330](v29, -1, -1);

    v23 = v93;
    v13 = v94;
    v33 = v109;
    v21 = v84;
  }

  else
  {
    v31 = v24;

    v33 = v109;
  }

  v34 = v89;
  v97 = *(a1 + 16);
  if (!v97)
  {
    return;
  }

  v35 = 0;
  v114 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundleIdToBundleClassifier;
  v85 = (v116 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v86 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles;
  v96 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v100 = (v14 + 16);
  v36 = (v14 + 32);
  v37 = (v14 + 8);
  v38 = *(v31 + 72);
  v95 = v36;
  v112 = v37;
  v113 = v36 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v91 = v38;
  while (1)
  {
    sub_1D8917FF0(v96 + v38 * v35, v34, type metadata accessor for BundleManager.BundleClassificationRequest);
    sub_1D8917FF0(v34, v13, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v99 = v35;
    if (EnumCaseMultiPayload == 1)
    {
      v41 = *v95;
      v42 = v33;
      (*v95)(v21, v13, v33);
    }

    else
    {
      v43 = v101;
      sub_1D8918058(v13, v101, type metadata accessor for CVTrackSnapshot);
      v42 = v33;
      (*v100)(v21, v43, v33);
      sub_1D89388D8(v43, type metadata accessor for CVTrackSnapshot);
      v41 = *v95;
    }

    v44 = v21;
    v111 = v41;
    v41(v23, v21, v42);
    v45 = *(v116 + v114);
    v46 = v98;
    if (!*(v45 + 16))
    {
      goto LABEL_10;
    }

    v47 = sub_1D87EF764(v23);
    if (v48)
    {
      break;
    }

LABEL_10:
    (*v112)(v23, v33);
    sub_1D89388D8(v34, type metadata accessor for BundleManager.BundleClassificationRequest);
    v39 = v99;
    v21 = v44;
LABEL_11:
    v35 = v39 + 1;
    if (v35 == v97)
    {
      return;
    }
  }

  v49 = *(*(v45 + 56) + 8 * v47);
  v50 = v34;
  v51 = *v112;

  v110 = v51;
  v51(v23, v33);
  v34 = v50;

  sub_1D8934680(v50);
  v52 = v50 + *(v92 + 20);
  if ((*(v52 + 40) & 1) == 0)
  {
    sub_1D89388D8(v50, type metadata accessor for BundleManager.BundleClassificationRequest);

    v39 = v99;
    v38 = v91;
    v21 = v44;
    v23 = v93;
    v13 = v94;
    goto LABEL_11;
  }

  v90 = v49;
  v53 = *(v116 + v86);
  v54 = *(v53 + 16);
  if (!v54)
  {
    v21 = v44;
    v72 = MEMORY[0x1E69E7CC0];
    v23 = v93;
    v13 = v94;
LABEL_31:
    v73 = v85[3];
    v136[2] = v85[2];
    v136[3] = v73;
    v74 = v85[5];
    v136[4] = v85[4];
    v137 = v74;
    v75 = v85[1];
    v136[0] = *v85;
    v136[1] = v75;
    v76 = v74;
    v34 = v89;
    v38 = v91;
    if (v74)
    {
      v77 = v85[3];
      v133 = v85[2];
      v134 = v77;
      v135 = v85[4];
      v78 = v85[1];
      v131 = *v85;
      v132 = v78;
      v79 = *(&v137 + 1);
    }

    else
    {
      v80 = *(v52 + 48);
      v127 = *(v52 + 32);
      v128 = v80;
      v81 = *(v52 + 80);
      v129 = *(v52 + 64);
      v130 = v81;
      v82 = *(v52 + 16);
      v125 = *v52;
      v126 = v82;
      v79 = *(&v81 + 1);
      v76 = v81;
      sub_1D88C7A20(&v125, &v119);
      v133 = v127;
      v134 = v128;
      v135 = v129;
      v131 = v125;
      v132 = v126;
    }

    v121 = v133;
    v122 = v134;
    v123 = v135;
    v119 = v131;
    v120 = v132;
    *&v124 = v76;
    *(&v124 + 1) = v79;
    sub_1D87A0E38(v136, &v125, &qword_1ECA64858);
    sub_1D8923290(&v119, v72);

    v127 = v121;
    v128 = v122;
    v129 = v123;
    v130 = v124;
    v125 = v119;
    v126 = v120;
    sub_1D8943A60(&v125);
    sub_1D89388D8(v34, type metadata accessor for BundleManager.BundleClassificationRequest);
    v33 = v109;
    v39 = v99;
    goto LABEL_11;
  }

  v88 = v52;
  *&v136[0] = MEMORY[0x1E69E7CC0];

  sub_1D87F4074(0, v54, 0);
  v55 = *&v136[0];
  v56 = *(v83 + 80);
  v87 = v53;
  v107 = (v56 + 32) & ~v56;
  v57 = v53 + v107;
  v106 = *(v83 + 72);
  v58 = v108;
  while (1)
  {
    v117 = v55;
    sub_1D8917FF0(v57, v46, type metadata accessor for CVBundle);
    sub_1D8917FF0(v46, v118, type metadata accessor for CVBundle);
    sub_1D8917FF0(v46, v58, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v105;
      v60 = v58;
      v61 = v111;
      v111(v105, v60, v33);
    }

    else
    {
      v62 = v101;
      sub_1D8918058(v58, v101, type metadata accessor for CVTrackSnapshot);
      v59 = v105;
      (*v100)(v105, v62, v33);
      sub_1D89388D8(v62, type metadata accessor for CVTrackSnapshot);
      v61 = v111;
    }

    v63 = v104;
    v61(v104, v59, v33);
    if (!*(*(v116 + v114) + 16))
    {
      break;
    }

    sub_1D87EF764(v63);
    if ((v64 & 1) == 0)
    {
      goto LABEL_37;
    }

    v65 = v118;

    v110(v63, v33);

    v66 = sub_1D893144C();

    sub_1D89388D8(v46, type metadata accessor for CVBundle);
    v67 = *(v102 + 28);

    *(v65 + v67) = v66;
    v68 = v103;
    sub_1D8918058(v65, v103, type metadata accessor for CVBundle);
    v55 = v117;
    *&v136[0] = v117;
    v70 = *(v117 + 16);
    v69 = *(v117 + 24);
    if (v70 >= v69 >> 1)
    {
      sub_1D87F4074(v69 > 1, v70 + 1, 1);
      v68 = v103;
      v55 = *&v136[0];
    }

    *(v55 + 16) = v70 + 1;
    v71 = v106;
    sub_1D8918058(v68, v55 + v107 + v70 * v106, type metadata accessor for CVBundle);
    v57 += v71;
    --v54;
    v58 = v108;
    v33 = v109;
    if (!v54)
    {
      v72 = v55;

      v23 = v93;
      v13 = v94;
      v21 = v84;
      v52 = v88;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1D892E760(uint64_t a1)
{
  v2 = sub_1D89401D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892E79C(uint64_t a1)
{
  v2 = sub_1D89401D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D892E7D8()
{
  v1 = 0x6E69666552746F6ELL;
  v2 = 0x676E696E69666572;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x6E696665526E6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D892E860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D894105C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D892E888(uint64_t a1)
{
  v2 = sub_1D89400D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892E8C4(uint64_t a1)
{
  v2 = sub_1D89400D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D892E900(uint64_t a1)
{
  v2 = sub_1D8940128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892E93C(uint64_t a1)
{
  v2 = sub_1D8940128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D892E98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D892EA10(uint64_t a1)
{
  v2 = sub_1D8940224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892EA4C(uint64_t a1)
{
  v2 = sub_1D8940224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D892EAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73756F6976657270 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D892EB28(uint64_t a1)
{
  v2 = sub_1D894017C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892EB64(uint64_t a1)
{
  v2 = sub_1D894017C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RefinementState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657D0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v37 - v3;
  v48 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657D8);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v37 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657E0);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657E8);
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for RefinementState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657F0);
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89400D4();
  sub_1D8B16DD0();
  sub_1D8917FF0(v49, v16, type metadata accessor for RefinementState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = v44;
      sub_1D8918058(v16, v44, type metadata accessor for BundleClassification);
      v52 = 3;
      sub_1D8940128();
      v29 = v45;
      v30 = v51;
      sub_1D8B16A40();
      sub_1D893FD6C(&qword_1ECA65808, type metadata accessor for BundleClassification);
      v31 = v47;
      sub_1D8B16AE0();
      (*(v46 + 8))(v29, v31);
      sub_1D89388D8(v28, type metadata accessor for BundleClassification);
      return (*(v50 + 8))(v19, v30);
    }

    else
    {
      v52 = 1;
      sub_1D89401D0();
      v36 = v51;
      sub_1D8B16A40();
      (*(v37 + 8))(v10, v39);
      return (*(v50 + 8))(v19, v36);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v32 = v40;
    sub_1D881F6FC(v16, v40, &qword_1ECA641B8);
    v52 = 2;
    sub_1D894017C();
    v33 = v41;
    v34 = v51;
    sub_1D8B16A40();
    sub_1D893FD6C(&qword_1ECA65808, type metadata accessor for BundleClassification);
    v35 = v43;
    sub_1D8B16A80();
    (*(v42 + 8))(v33, v35);
    sub_1D87A14E4(v32, &qword_1ECA641B8);
    return (*(v50 + 8))(v19, v34);
  }

  else
  {
    v21 = *v16;
    v22 = *(v16 + 1);
    v23 = *(v16 + 2);
    v24 = *(v16 + 4);
    v25 = v16[24];
    v52 = 0;
    sub_1D8940224();
    v26 = v51;
    sub_1D8B16A40();
    v52 = v21;
    v53 = v22;
    v54 = v23;
    v55 = v25;
    v56 = v24;
    sub_1D8912AFC();
    sub_1D8B16AE0();
    (*(v38 + 8))(v13, v11);
    (*(v50 + 8))(v19, v26);
    return sub_1D88E1004(v22, v23, v25);
  }
}

uint64_t RefinementState.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for RefinementState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v11, type metadata accessor for RefinementState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D881F6FC(v11, v8, &qword_1ECA641B8);
      MEMORY[0x1DA720210](2);
      sub_1D8939554(a1);
      return sub_1D87A14E4(v8, &qword_1ECA641B8);
    }

    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    v15 = v11[24];
    v16 = *(v11 + 4);
    MEMORY[0x1DA720210](0);
    sub_1D8B16D40();
    v17 = v15 >> 6;
    if (v15 >> 6 > 1)
    {
      if (v17 == 2)
      {
        v18 = 3;
        goto LABEL_25;
      }
    }

    else
    {
      if (v17)
      {
        v18 = 2;
        goto LABEL_25;
      }

      MEMORY[0x1DA720210](0);
      if (!v15)
      {
        v18 = 5;
        goto LABEL_25;
      }

      if (v15 == 1)
      {
        v18 = 6;
LABEL_25:
        MEMORY[0x1DA720210](v18);
        sub_1D8B15A60();
LABEL_40:
        v29 = 0.0;
        if (v16 != 0.0)
        {
          v29 = v16;
        }

        MEMORY[0x1DA720250](*&v29);
        return sub_1D88E1004(v13, v14, v15);
      }

      if (v13 > 1)
      {
        if (v13 ^ 2 | v14)
        {
          if (v13 ^ 3 | v14)
          {
            v27 = 4;
          }

          else
          {
            v27 = 3;
          }
        }

        else
        {
          v27 = 2;
        }

        goto LABEL_39;
      }

      if (!(v13 | v14))
      {
        v27 = 0;
LABEL_39:
        MEMORY[0x1DA720210](v27);
        goto LABEL_40;
      }
    }

    v27 = 1;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 2)
  {
    return MEMORY[0x1DA720210](1);
  }

  sub_1D8918058(v11, v5, type metadata accessor for BundleClassification);
  MEMORY[0x1DA720210](3);
  BundleClassification.ClassificationType.hash(into:)(a1);
  v19 = &v5[*(v3 + 20)];
  if (*v19 != 2)
  {
    v22 = *(v19 + 1);
    v21 = *(v19 + 2);
    v23 = *(v19 + 4);
    v24 = v19[24];
    sub_1D8B16D40();
    sub_1D8B16D40();
    v25 = v24 >> 6;
    if (v24 >> 6 > 1)
    {
      if (v25 == 2)
      {
        v26 = 3;
        goto LABEL_31;
      }
    }

    else
    {
      if (v25)
      {
        v26 = 2;
        goto LABEL_31;
      }

      MEMORY[0x1DA720210](0);
      if (!v24)
      {
        v26 = 5;
        goto LABEL_31;
      }

      if (v24 == 1)
      {
        v26 = 6;
LABEL_31:
        MEMORY[0x1DA720210](v26);
        sub_1D8B15A60();
LABEL_49:
        if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v30 = v23;
        }

        else
        {
          v30 = 0;
        }

        MEMORY[0x1DA720250](v30);
        goto LABEL_53;
      }

      if (v22 > 1)
      {
        if (v22 ^ 2 | v21)
        {
          if (v22 ^ 3 | v21)
          {
            v28 = 4;
          }

          else
          {
            v28 = 3;
          }
        }

        else
        {
          v28 = 2;
        }

        goto LABEL_48;
      }

      if (!(v22 | v21))
      {
        v28 = 0;
LABEL_48:
        MEMORY[0x1DA720210](v28);
        goto LABEL_49;
      }
    }

    v28 = 1;
    goto LABEL_48;
  }

  sub_1D8B16D40();
LABEL_53:
  v31 = *&v5[*(v3 + 24)];
  if (v31 == 0.0)
  {
    v31 = 0.0;
  }

  MEMORY[0x1DA720250](*&v31);
  return sub_1D89388D8(v5, type metadata accessor for BundleClassification);
}

uint64_t RefinementState.hashValue.getter()
{
  sub_1D8B16D20();
  RefinementState.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t RefinementState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65828);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65830);
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65838);
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v67 = &v55 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65840);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v69 = &v55 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65848);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v12 = &v55 - v11;
  v13 = type metadata accessor for RefinementState(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v55 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - v23;
  v25 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D89400D4();
  v26 = v74;
  sub_1D8B16DB0();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v55 = v22;
  v57 = v19;
  v56 = v16;
  v27 = v69;
  v29 = v71;
  v28 = v72;
  v58 = v24;
  v74 = v13;
  v30 = v68;
  v31 = v73;
  v32 = v70;
  v33 = sub_1D8B16A20();
  v34 = (2 * *(v33 + 16)) | 1;
  v79 = v33;
  v80 = v33 + 32;
  v81 = 0;
  v82 = v34;
  v35 = sub_1D881F7BC();
  if (v35 == 4 || v81 != v82 >> 1)
  {
    v36 = sub_1D8B16770();
    swift_allocError();
    v37 = v12;
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v39 = v74;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v36 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v30 + 8))(v37, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v75 = 2;
      sub_1D894017C();
      v41 = v29;
      sub_1D8B16950();
      type metadata accessor for BundleClassification(0);
      sub_1D893FD6C(&qword_1ECA65850, type metadata accessor for BundleClassification);
      v42 = v63;
      sub_1D8B169B0();
      v69 = 0;
      (*(v64 + 8))(v41, v42);
      (*(v30 + 8))(v12, v32);
      swift_unknownObjectRelease();
      v53 = v57;
      swift_storeEnumTagMultiPayload();
      v54 = v53;
    }

    else
    {
      v75 = 3;
      sub_1D8940128();
      v44 = v28;
      sub_1D8B16950();
      type metadata accessor for BundleClassification(0);
      sub_1D893FD6C(&qword_1ECA65850, type metadata accessor for BundleClassification);
      v51 = v56;
      v52 = v65;
      sub_1D8B16A10();
      v69 = 0;
      (*(v66 + 8))(v44, v52);
      (*(v30 + 8))(v12, v32);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v54 = v51;
    }

    v50 = v58;
    sub_1D8918058(v54, v58, type metadata accessor for RefinementState);
    v45 = v31;
  }

  else if (v35)
  {
    v75 = 1;
    sub_1D89401D0();
    v43 = v67;
    sub_1D8B16950();
    v69 = 0;
    v45 = v31;
    (*(v62 + 8))(v43, v59);
    (*(v30 + 8))(v12, v32);
    swift_unknownObjectRelease();
    v50 = v58;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v75 = 0;
    sub_1D8940224();
    sub_1D8B16950();
    v45 = v31;
    sub_1D8912B50();
    v46 = v61;
    sub_1D8B16A10();
    (*(v60 + 8))(v27, v46);
    (*(v30 + 8))(v12, v32);
    swift_unknownObjectRelease();
    v69 = 0;
    v47 = v77;
    v48 = v78;
    v49 = v55;
    *v55 = v75;
    *(v49 + 8) = v76;
    *(v49 + 24) = v47;
    *(v49 + 32) = v48;
    swift_storeEnumTagMultiPayload();
    v50 = v58;
    sub_1D8918058(v49, v58, type metadata accessor for RefinementState);
  }

  sub_1D8918058(v50, v45, type metadata accessor for RefinementState);
  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_1D8930270(__int128 *a1)
{
  v3 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v11, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D881F6FC(v11, v8, &qword_1ECA641B8);
        MEMORY[0x1DA720210](3);
        sub_1D8939554(a1);
      }

      else
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88);
        sub_1D881F6FC(&v11[*(v21 + 48)], v8, &qword_1ECA641B8);
        MEMORY[0x1DA720210](4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
        sub_1D8B15F60();
        sub_1D8939554(a1);
      }

      return sub_1D87A14E4(v8, &qword_1ECA641B8);
    }

    v14 = *(v11 + 1);
    v15 = *(v11 + 2);
    v16 = v11[24];
    v17 = *(v11 + 4);
    MEMORY[0x1DA720210](1);
    sub_1D8B16D40();
    v18 = v16 >> 6;
    if (v16 >> 6 > 1)
    {
      if (v18 == 2)
      {
        v19 = 3;
        goto LABEL_31;
      }
    }

    else
    {
      if (v18)
      {
        v19 = 2;
        goto LABEL_31;
      }

      MEMORY[0x1DA720210](0);
      if (!v16)
      {
        v19 = 5;
        goto LABEL_31;
      }

      if (v16 == 1)
      {
        v19 = 6;
LABEL_31:
        MEMORY[0x1DA720210](v19);
        sub_1D8B15A60();
LABEL_46:
        v31 = 0.0;
        if (v17 != 0.0)
        {
          v31 = v17;
        }

        MEMORY[0x1DA720250](*&v31);
        return sub_1D88E1004(v14, v15, v16);
      }

      if (v14 > 1)
      {
        if (v14 ^ 2 | v15)
        {
          if (v14 ^ 3 | v15)
          {
            v29 = 4;
          }

          else
          {
            v29 = 3;
          }
        }

        else
        {
          v29 = 2;
        }

        goto LABEL_45;
      }

      if (!(v14 | v15))
      {
        v29 = 0;
LABEL_45:
        MEMORY[0x1DA720210](v29);
        goto LABEL_46;
      }
    }

    v29 = 1;
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    return MEMORY[0x1DA720210](v13);
  }

  sub_1D8918058(v11, v5, type metadata accessor for BundleClassification);
  MEMORY[0x1DA720210](5);
  BundleClassification.ClassificationType.hash(into:)(a1);
  v20 = &v5[*(v3 + 20)];
  if (*v20 != 2)
  {
    v24 = *(v20 + 1);
    v23 = *(v20 + 2);
    v25 = *(v20 + 4);
    v26 = v20[24];
    sub_1D8B16D40();
    sub_1D8B16D40();
    v27 = v26 >> 6;
    if (v26 >> 6 > 1)
    {
      if (v27 == 2)
      {
        v28 = 3;
        goto LABEL_37;
      }
    }

    else
    {
      if (v27)
      {
        v28 = 2;
        goto LABEL_37;
      }

      MEMORY[0x1DA720210](0);
      if (!v26)
      {
        v28 = 5;
        goto LABEL_37;
      }

      if (v26 == 1)
      {
        v28 = 6;
LABEL_37:
        MEMORY[0x1DA720210](v28);
        sub_1D8B15A60();
LABEL_55:
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = v25;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x1DA720250](v32);
        goto LABEL_59;
      }

      if (v24 > 1)
      {
        if (v24 ^ 2 | v23)
        {
          if (v24 ^ 3 | v23)
          {
            v30 = 4;
          }

          else
          {
            v30 = 3;
          }
        }

        else
        {
          v30 = 2;
        }

        goto LABEL_54;
      }

      if (!(v24 | v23))
      {
        v30 = 0;
LABEL_54:
        MEMORY[0x1DA720210](v30);
        goto LABEL_55;
      }
    }

    v30 = 1;
    goto LABEL_54;
  }

  sub_1D8B16D40();
LABEL_59:
  v33 = *&v5[*(v3 + 24)];
  if (v33 == 0.0)
  {
    v33 = 0.0;
  }

  MEMORY[0x1DA720250](*&v33);
  return sub_1D89388D8(v5, type metadata accessor for BundleClassification);
}

uint64_t sub_1D89307B4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8930818(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D893085C()
{
  v1 = v0;
  v2 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  sub_1D8917FF0(v1, v4, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D89388D8(v4, type metadata accessor for RefinementStateInternal);
      return 0x74656C706D6F632ELL;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0x696665526E61632ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      v4 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48);
    }

    sub_1D881F6FC(v4, v7, &qword_1ECA641B8);
    v9 = type metadata accessor for BundleClassification(0);
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    sub_1D87A14E4(v7, &qword_1ECA641B8);
    if (v10 == 1)
    {
      return 0x6E696E696665722ELL;
    }

    else
    {
      return 0x696665722D65722ELL;
    }
  }

  else
  {
    v12 = *v4;
    v13 = *(v4 + 1);
    v14 = *(v4 + 2);
    v15 = *(v4 + 4);
    v16 = v4[24];
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D8B16720();

    v26 = 0xD000000000000014;
    v27 = 0x80000001D8B446E0;
    LOBYTE(v21) = v12;
    v22 = v13;
    v23 = v14;
    v24 = v16;
    v25 = v15;
    sub_1D88E0E0C();
    v17 = sub_1D8B16C90();
    v19 = v18;
    sub_1D88E1004(v13, v14, v16);
    MEMORY[0x1DA71EFA0](v17, v19);

    return v26;
  }
}

uint64_t sub_1D8930B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v62 = a2;
  v4 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - v8;
  v10 = type metadata accessor for BundleClassification.ClassificationType(0);
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D8B13240();
  v20 = *(v63 - 8);
  v21 = MEMORY[0x1EEE9AC00](v63);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  v59 = a1;
  sub_1D8917FF0(a1, v19, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = v20;
  if (EnumCaseMultiPayload == 1)
  {
    v27 = *(v20 + 32);
    v27(v23, v19, v63);
  }

  else
  {
    sub_1D8918058(v19, v16, type metadata accessor for CVTrackSnapshot);
    (*(v20 + 16))(v23, v16, v63);
    sub_1D89388D8(v16, type metadata accessor for CVTrackSnapshot);
    v27 = *(v20 + 32);
  }

  v28 = v63;
  v27(v25, v23, v63);
  v29 = v61;
  v27((v61 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id), v25, v28);
  v55 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration;
  v30 = v62;
  v31 = sub_1D8917FF0(v62, v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration, type metadata accessor for BundleManager.Configuration);
  v32 = *v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v60;
  *(&v55 - 2) = v30;
  *(&v55 - 1) = v33;
  v34 = MEMORY[0x1E69E7CC8];
  *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_classifiers) = sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D8943AB4, (&v55 - 4), v32, type metadata accessor for BundleClassification.ClassificationType);
  *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_vapClient) = v33;
  v67 = v34;
  v35 = *(v32 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B20);
  sub_1D8B15760();
  if (!v35)
  {

    v40 = v67;
LABEL_20:
    sub_1D89388D8(v59, type metadata accessor for CVBundle);
    *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo) = v40;
    sub_1D89388D8(v62, type metadata accessor for BundleManager.Configuration);
    return v29;
  }

  v36 = v32 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v37 = *(v58 + 72);
  while (1)
  {
    sub_1D8917FF0(v36, v13, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v36, v9, type metadata accessor for BundleClassification.ClassificationType);
    v38 = type metadata accessor for BundleClassification(0);
    v39 = &v9[*(v38 + 20)];
    *v39 = 2;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v39 = 2;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *&v9[*(v38 + 24)] = 0xFFF0000000000000;
    type metadata accessor for RefinementStateInternal(0);
    swift_storeEnumTagMultiPayload();
    sub_1D8918058(v9, v7, type metadata accessor for BundleClassifier.ClassificationInfo);
    v40 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v40;
    v42 = sub_1D87EF6AC(v13);
    v44 = v40[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      break;
    }

    v48 = v43;
    if (v40[3] < v47)
    {
      sub_1D8974160(v47, isUniquelyReferenced_nonNull_native);
      v40 = v66;
      v42 = sub_1D87EF6AC(v13);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v40 = v66;
      if (v48)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v53 = v42;
    sub_1D896AA68();
    v42 = v53;
    v40 = v66;
    if (v48)
    {
LABEL_6:
      sub_1D89439D4(v7, v40[7] + *(v64 + 72) * v42, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v13, type metadata accessor for BundleClassification.ClassificationType);
      goto LABEL_7;
    }

LABEL_14:
    v40[(v42 >> 6) + 8] |= 1 << v42;
    v50 = v42;
    sub_1D8917FF0(v13, v40[6] + v42 * v37, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v7, v40[7] + *(v64 + 72) * v50, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D89388D8(v13, type metadata accessor for BundleClassification.ClassificationType);
    v51 = v40[2];
    v46 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v46)
    {
      goto LABEL_22;
    }

    v40[2] = v52;
LABEL_7:
    v67 = v40;
    v36 += v37;
    if (!--v35)
    {

      v29 = v61;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1D8B16C30();
  __break(1u);

  (*(v56 + 8))(v40 + 2, v63);
  sub_1D89388D8(v55 + 2, type metadata accessor for BundleManager.Configuration);
  type metadata accessor for BundleClassifier(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1D8931378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D8917FF0(a2, v8, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D891B79C(a2, a4, v11);
  return sub_1D895F1D8(v11, v8);
}

uint64_t sub_1D893144C()
{
  v54 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RefinementState(0);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v50 - v8;
  v9 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BundleClassification.ClassificationType(0);
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  swift_beginAccess();
  v14 = *(v0 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0);
  v15 = sub_1D8B168F0();
  v16 = v15;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;
  v56 = v15 + 64;

  for (i = 0; v19; v16[2] = v45)
  {
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_10:
    v26 = v23 | (i << 6);
    v27 = *(v57 + 72) * v26;
    sub_1D8917FF0(*(v14 + 48) + v27, v67, type metadata accessor for BundleClassification.ClassificationType);
    v28 = v58;
    sub_1D8917FF0(*(v14 + 56) + *(v59 + 72) * v26, v58, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D8917FF0(v28 + *(v60 + 20), v66, type metadata accessor for RefinementStateInternal);
    sub_1D89388D8(v28, type metadata accessor for BundleClassifier.ClassificationInfo);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v30 = v65;
      if (EnumCaseMultiPayload == 3)
      {
        v35 = v55;
        sub_1D8918058(v66, v55, type metadata accessor for BundleClassification);
        v36 = v35;
        v37 = (v35 + *(v54 + 20));
        v38 = *v37;
        if (v38 == 2)
        {
          v39 = v53;
          sub_1D8918058(v36, v53, type metadata accessor for BundleClassification);
        }

        else
        {
          v46 = *(v37 + 4);
          v47 = *(v37 + 2);
          v51 = *(v37 + 1);
          v48 = v37[24];
          v52 = v48;
          sub_1D8912A68(v51, v47, v48);
          sub_1D89388D8(v55, type metadata accessor for BundleClassification);
          v49 = v38 & 1;
          v39 = v53;
          *v53 = v49;
          *(v39 + 1) = v51;
          *(v39 + 2) = v47;
          v39[24] = v52;
          *(v39 + 4) = v46;
        }

        swift_storeEnumTagMultiPayload();
        v30 = v65;
        sub_1D8918058(v39, v65, type metadata accessor for RefinementState);
        goto LABEL_22;
      }
    }

    else
    {
      v30 = v65;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v31 = v66;
        }

        else
        {
          v40 = v66;

          v31 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48);
        }

        sub_1D881F6FC(v31, v30, &qword_1ECA641B8);
      }

      else
      {
        v32 = v66;
        v33 = *(v66 + 24);
        v34 = *(v66 + 32);
        *v65 = *v66;
        *(v30 + 8) = *(v32 + 8);
        v30[24] = v33;
        *(v30 + 4) = v34;
      }
    }

    swift_storeEnumTagMultiPayload();
LABEL_22:
    v41 = v30;
    v42 = v61;
    sub_1D8918058(v41, v61, type metadata accessor for RefinementState);
    *(v56 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    sub_1D8918058(v67, v16[6] + v27, type metadata accessor for BundleClassification.ClassificationType);
    result = sub_1D8918058(v42, v16[7] + *(v62 + 72) * v26, type metadata accessor for RefinementState);
    v43 = v16[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_29;
    }
  }

  v24 = i;
  while (1)
  {
    i = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (i >= v20)
    {

      return v16;
    }

    v25 = *(v14 + 64 + 8 * i);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v19 = (v25 - 1) & v25;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D8931AE4()
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B18);
  v1 = MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v49 = &v43 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v43 - v5;
  v6 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  swift_beginAccess();
  v11 = *(*(v0 + v10) + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v55 = MEMORY[0x1E69E7CC0];

  sub_1D87F4A94(0, v11, 0);
  v14 = v13;
  v12 = v55;
  v15 = v13 + 64;
  result = sub_1D8B16580();
  v17 = result;
  v18 = 0;
  v43 = v13 + 72;
  v44 = v11;
  v46 = v13;
  v47 = v9;
  v45 = v13 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v14 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_22;
    }

    v21 = *(v14 + 36);
    v52 = v18;
    v53 = v21;
    v22 = v51;
    v23 = *(v51 + 48);
    v24 = *(v14 + 48);
    v25 = v24 + *(*(type metadata accessor for BundleClassification.ClassificationType(0) - 8) + 72) * v17;
    v26 = v12;
    v27 = v48;
    sub_1D8917FF0(v25, v48, type metadata accessor for BundleClassification.ClassificationType);
    v28 = *(v14 + 56);
    v54 = *(v7 + 72);
    sub_1D8917FF0(v28 + v54 * v17, v27 + v23, type metadata accessor for BundleClassifier.ClassificationInfo);
    v29 = v49;
    sub_1D8918058(v27, v49, type metadata accessor for BundleClassification.ClassificationType);
    v30 = v27 + v23;
    v12 = v26;
    sub_1D8918058(v30, v29 + *(v22 + 48), type metadata accessor for BundleClassifier.ClassificationInfo);
    v31 = v50;
    sub_1D881F6FC(v29, v50, &qword_1ECA65B18);
    v32 = *(v22 + 48);
    v33 = v47;
    sub_1D8918058(v31 + v32, v47, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D89388D8(v31, type metadata accessor for BundleClassification.ClassificationType);
    v55 = v26;
    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1D87F4A94(v34 > 1, v35 + 1, 1);
      v12 = v55;
    }

    *(v12 + 16) = v35 + 1;
    result = sub_1D8918058(v33, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v35 * v54, type metadata accessor for BundleClassifier.ClassificationInfo);
    v14 = v46;
    v19 = 1 << *(v46 + 32);
    if (v17 >= v19)
    {
      goto LABEL_23;
    }

    v15 = v45;
    v36 = *(v45 + 8 * v20);
    if ((v36 & (1 << v17)) == 0)
    {
      goto LABEL_24;
    }

    if (v53 != *(v46 + 36))
    {
      goto LABEL_25;
    }

    v37 = v36 & (-2 << (v17 & 0x3F));
    if (v37)
    {
      v19 = __clz(__rbit64(v37)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = v20 << 6;
      v39 = v20 + 1;
      v40 = (v43 + 8 * v20);
      while (v39 < (v19 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_1D87977B4(v17, v53, 0);
          v19 = __clz(__rbit64(v41)) + v38;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v17, v53, 0);
    }

LABEL_4:
    v18 = v52 + 1;
    v17 = v19;
    if (v52 + 1 == v44)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D8931F84(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v180 = type metadata accessor for BundleClassification.ClassificationType(0);
  v157 = *(v180 - 8);
  v6 = MEMORY[0x1EEE9AC00](v180);
  v176 = v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v167 = (v145 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v181 = v145 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v151 = v145 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v152 = v145 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v150 = v145 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v145 - v18);
  v158 = type metadata accessor for BundleClassification(0);
  v20 = MEMORY[0x1EEE9AC00](v158);
  v22 = v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v145 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v173 = v145 - v26;
  *&v177 = type metadata accessor for RefinementStateInternal(0);
  v27 = MEMORY[0x1EEE9AC00](v177);
  v159 = v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v166 = v145 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B10);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v165 = v145 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v145 - v33;
  v171 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v35 = *(v171 - 8);
  v36 = MEMORY[0x1EEE9AC00](v171);
  v178 = v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v182 = v145 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v164 = v145 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v163 = v145 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v183 = v145 - v44;
  v45 = a2[3];
  v198 = a2[2];
  v199 = v45;
  v46 = a2[5];
  v200 = a2[4];
  v201 = v46;
  v47 = a2[1];
  v196 = *a2;
  v197 = v47;
  v48 = sub_1D8931AE4();
  v50 = *(v48 + 16);
  v170 = v35;
  if (!v50)
  {

    v117 = MEMORY[0x1E69E7CC0];
    v118 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v118)
    {
    }

    goto LABEL_97;
  }

  v153 = v22;
  v162 = a1;
  v147 = v3 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  v51 = *(v35 + 80);
  v145[1] = v48;
  v154 = (v51 + 32) & ~v51;
  v155 = v19;
  v52 = v48 + v154;
  v156 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_classifiers;
  v175 = (v35 + 56);
  v160 = v25;
  v161 = (v35 + 48);
  v172 = MEMORY[0x1E69E7CC0];
  v174 = *(v35 + 72);
  *&v49 = 136315650;
  v146 = v49;
  v145[0] = 0xE900000000000064;
  v53 = v166;
  v54 = v171;
  v169 = v34;
  while (1)
  {
    v179 = v50;
    v55 = v183;
    sub_1D8917FF0(v52, v183, type metadata accessor for BundleClassifier.ClassificationInfo);
    v56 = *v175;
    (*v175)(v34, 1, 1, v54);
    v57 = *(v54 + 20);
    sub_1D8917FF0(v55 + v57, v53, type metadata accessor for RefinementStateInternal);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v168 = v56;
      if ((EnumCaseMultiPayload - 4) < 2)
      {
        goto LABEL_23;
      }

      v60 = v160;
      sub_1D8918058(v53, v160, type metadata accessor for BundleClassification);
      CVBundle.latestEstimate.getter(v193);
      v190[0] = v193[0];
      CVDetection.detection.getter(&v184);
      v61 = *(&v185 + 1);
      v62 = v186;
      __swift_project_boxed_opaque_existential_1(&v184, *(&v185 + 1));
      v63 = (*(v62 + 88))(v61, v62);

      __swift_destroy_boxed_opaque_existential_1(&v184);
      v64 = *(v60 + *(v158 + 24));
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v65 = v63 - v64;
      v66 = qword_1EE0E54C8;
      v67 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
      swift_beginAccess();
      v34 = v169;
      v54 = v171;
      if (*(v66 + v67))
      {
        v68 = v172;
        if (v65 == INFINITY)
        {
LABEL_14:
          if (qword_1EE0E44F0 != -1)
          {
            swift_once();
          }

          v69 = sub_1D8B151E0();
          __swift_project_value_buffer(v69, qword_1EE0E44F8);
          v70 = v153;
          sub_1D8917FF0(v160, v153, type metadata accessor for BundleClassification);

          v71 = sub_1D8B151C0();
          v72 = sub_1D8B16210();

          if (os_log_type_enabled(v71, v72))
          {
            v149 = v72;
            v73 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            *&v184 = v148;
            *v73 = v146;
            sub_1D8917FF0(v70, v151, type metadata accessor for BundleClassification.ClassificationType);
            v74 = swift_getEnumCaseMultiPayload();
            if (v74 > 4)
            {
              if (v74 <= 6)
              {
                if (v74 == 5)
                {
                  sub_1D89388D8(v151, type metadata accessor for BundleClassification.ClassificationType);
                  v76 = 0x6974634174786574;
                  v75 = 0xEB00000000736E6FLL;
                }

                else
                {
                  v75 = 0xE500000000000000;
                  v76 = 0x746E657665;
                }
              }

              else
              {
                v104 = 0x74616C736E617274;
                if (v74 != 8)
                {
                  v104 = 0x7A6972616D6D7573;
                }

                if (v74 == 7)
                {
                  v76 = 0x756F6C4164616572;
                }

                else
                {
                  v76 = v104;
                }

                if (v74 == 7)
                {
                  v75 = v145[0];
                }

                else
                {
                  v75 = 0xE900000000000065;
                }
              }
            }

            else if (v74 <= 1)
            {
              if (v74)
              {
                sub_1D89388D8(v151, type metadata accessor for BundleClassification.ClassificationType);
                v75 = 0xE800000000000000;
                v76 = 0x796669746E656469;
              }

              else
              {
                sub_1D89388D8(v151, type metadata accessor for BundleClassification.ClassificationType);
                v75 = 0xE400000000000000;
                v76 = 1936744813;
              }
            }

            else if (v74 == 2)
            {
              sub_1D89388D8(v151, type metadata accessor for BundleClassification.ClassificationType);
              v75 = 0xE700000000000000;
              v76 = 0x65646F63726162;
            }

            else if (v74 == 3)
            {
              v75 = 0xE600000000000000;
              v76 = 0x686372616573;
            }

            else
            {
              sub_1D89388D8(v151, type metadata accessor for BundleClassification.ClassificationType);
              v75 = 0xE400000000000000;
              v76 = 1667459446;
            }

            sub_1D89388D8(v153, type metadata accessor for BundleClassification);
            v107 = sub_1D89AC714(v76, v75, &v184);

            *(v73 + 4) = v107;
            *(v73 + 12) = 2048;
            *(v73 + 14) = v65;
            *(v73 + 22) = 2080;
            sub_1D8B13240();
            sub_1D893FD6C(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
            v108 = sub_1D8B16B50();
            v110 = sub_1D89AC714(v108, v109, &v184);

            *(v73 + 24) = v110;
            _os_log_impl(&dword_1D8783000, v71, v149, "Classification of type %s is too old (%fs) and is transitioning from .completed to .canRefine for (bundle: %s).", v73, 0x20u);
            v111 = v148;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v111, -1, -1);
            MEMORY[0x1DA721330](v73, -1, -1);

            v98 = v34;
          }

          else
          {

            sub_1D89388D8(v70, type metadata accessor for BundleClassification);
            v98 = v34;
          }

          sub_1D87A14E4(v98, &qword_1ECA65B10);
          v112 = v160;
          sub_1D8917FF0(v160, v34, type metadata accessor for BundleClassification);
          swift_storeEnumTagMultiPayload();
          sub_1D89388D8(v112, type metadata accessor for BundleClassification);
          v168(v34, 0, 1, v54);
          goto LABEL_87;
        }
      }

      else
      {
        v96 = v152;
        sub_1D8917FF0(v160, v152, type metadata accessor for BundleClassification.ClassificationType);
        v97 = swift_getEnumCaseMultiPayload();
        sub_1D89388D8(v96, type metadata accessor for BundleClassification.ClassificationType);
        v68 = v172;
        if (v97 == 1)
        {
          if (v65 >= 3.0)
          {
            goto LABEL_14;
          }
        }

        else if (v65 >= 2.0)
        {
          goto LABEL_14;
        }
      }

      v102 = v160[*(v158 + 20)];
      if (v102 != 2)
      {
        v92 = v165;
        if (v102)
        {
          sub_1D87A14E4(v34, &qword_1ECA65B10);
          v103 = v160;
          sub_1D8917FF0(v160, v34, type metadata accessor for BundleClassification);
          swift_storeEnumTagMultiPayload();
          sub_1D89388D8(v103, type metadata accessor for BundleClassification);
          goto LABEL_41;
        }

        sub_1D89388D8(v160, type metadata accessor for BundleClassification);
LABEL_88:
        sub_1D87A0E38(v34, v92, &qword_1ECA65B10);
        if ((*v161)(v92, 1, v54) == 1)
        {
          sub_1D87A14E4(v34, &qword_1ECA65B10);
          sub_1D89388D8(v183, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D87A14E4(v92, &qword_1ECA65B10);
          v53 = v166;
        }

        else
        {
          v113 = v92;
          v114 = v163;
          sub_1D8918058(v113, v163, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D8917FF0(v114, v164, type metadata accessor for BundleClassifier.ClassificationInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_1D87C9234(0, v68[2] + 1, 1, v68);
          }

          v116 = v68[2];
          v115 = v68[3];
          if (v116 >= v115 >> 1)
          {
            v68 = sub_1D87C9234(v115 > 1, v116 + 1, 1, v68);
          }

          sub_1D89388D8(v163, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D87A14E4(v34, &qword_1ECA65B10);
          sub_1D89388D8(v183, type metadata accessor for BundleClassifier.ClassificationInfo);
          v68[2] = v116 + 1;
          v172 = v68;
          sub_1D8918058(v164, v68 + v154 + v116 * v174, type metadata accessor for BundleClassifier.ClassificationInfo);
          v53 = v166;
          v54 = v171;
        }

        goto LABEL_4;
      }

      sub_1D89388D8(v160, type metadata accessor for BundleClassification);
LABEL_87:
      v92 = v165;
      goto LABEL_88;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    v34 = v169;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D87A14E4(v169, &qword_1ECA65B10);
      sub_1D89388D8(v183, type metadata accessor for BundleClassifier.ClassificationInfo);
      v59 = v53;
    }

    else
    {
      sub_1D87A14E4(v169, &qword_1ECA65B10);
      sub_1D89388D8(v183, type metadata accessor for BundleClassifier.ClassificationInfo);

      v59 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48);
    }

    sub_1D87A14E4(v59, &qword_1ECA641B8);
LABEL_4:
    v52 += v174;
    v50 = v179 - 1;
    if (v179 == 1)
    {

      v117 = v172;
      v118 = v172[2];
      if (!v118)
      {
      }

LABEL_97:
      v119 = 0;
      v120 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
      v183 = v117 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      LODWORD(v179) = *MEMORY[0x1E69C9C08];
      v177 = xmmword_1D8B190C0;
      while (1)
      {
        if (v119 >= v117[2])
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v121 = *(v170 + 72);
        v122 = v182;
        sub_1D8917FF0(v183 + v121 * v119, v182, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D8917FF0(v122, v176, type metadata accessor for BundleClassification.ClassificationType);
        v123 = swift_getEnumCaseMultiPayload();
        if (v123 > 4)
        {
          v124 = v167;
          if (v123 == 5)
          {
            sub_1D89388D8(v176, type metadata accessor for BundleClassification.ClassificationType);
            *v124 = MEMORY[0x1E69E7CD0];
          }
        }

        else
        {
          v124 = v167;
          if (v123 <= 1)
          {
            if (v123)
            {
              v126 = type metadata accessor for VisualLookupClassifier.Result(0);
              (*(*(v126 - 8) + 56))(v124, 1, 1, v126);
              goto LABEL_114;
            }

            sub_1D89388D8(v176, type metadata accessor for BundleClassification.ClassificationType);
            *v124 = MEMORY[0x1E69E7CC0];
            v124[1] = 0xBFF0000000000000;
          }

          else if (v123 == 2)
          {
            sub_1D89388D8(v176, type metadata accessor for BundleClassification.ClassificationType);
            *v124 = v177;
            v124[2] = 0xE700000000000000;
            v124[3] = 0x7974706D65;
            v124[4] = 0xE500000000000000;
            v124[5] = 0;
          }

          else
          {
            if (v123 != 3)
            {
              *v167 = 0x7974706D65;
              v124[1] = 0xE500000000000000;
              v125 = sub_1D8B145A0();
              (*(*(v125 - 8) + 104))(v124, v179, v125);
LABEL_114:
              swift_storeEnumTagMultiPayload();
              sub_1D89388D8(v176, type metadata accessor for BundleClassification.ClassificationType);
              goto LABEL_116;
            }

            *v167 = 0;
          }
        }

        swift_storeEnumTagMultiPayload();
LABEL_116:
        v127 = v181;
        sub_1D8918058(v124, v181, type metadata accessor for BundleClassification.ClassificationType);
        swift_beginAccess();
        sub_1D8917FF0(v182, v178, type metadata accessor for BundleClassifier.ClassificationInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v193[0] = *(v3 + v120);
        v129 = v193[0];
        *(v3 + v120) = 0x8000000000000000;
        v130 = sub_1D87EF6AC(v127);
        v132 = *(v129 + 16);
        v133 = (v131 & 1) == 0;
        v134 = __OFADD__(v132, v133);
        v135 = v132 + v133;
        if (v134)
        {
          goto LABEL_128;
        }

        v136 = v131;
        if (*(v129 + 24) < v135)
        {
          sub_1D8974160(v135, isUniquelyReferenced_nonNull_native);
          v130 = sub_1D87EF6AC(v181);
          if ((v136 & 1) != (v137 & 1))
          {
            goto LABEL_132;
          }

LABEL_121:
          v138 = v193[0];
          if (v136)
          {
            goto LABEL_98;
          }

          goto LABEL_122;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_121;
        }

        v143 = v130;
        sub_1D896AA68();
        v130 = v143;
        v138 = v193[0];
        if (v136)
        {
LABEL_98:
          sub_1D89439D4(v178, v138[7] + v130 * v121, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D89388D8(v181, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_99;
        }

LABEL_122:
        v138[(v130 >> 6) + 8] |= 1 << v130;
        v139 = v130;
        v140 = v181;
        sub_1D8917FF0(v181, v138[6] + *(v157 + 72) * v130, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D8918058(v178, v138[7] + v139 * v121, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D89388D8(v140, type metadata accessor for BundleClassification.ClassificationType);
        v141 = v138[2];
        v134 = __OFADD__(v141, 1);
        v142 = v141 + 1;
        if (v134)
        {
          goto LABEL_131;
        }

        v138[2] = v142;
LABEL_99:
        ++v119;
        *(v3 + v120) = v138;

        swift_endAccess();
        sub_1D89388D8(v182, type metadata accessor for BundleClassifier.ClassificationInfo);
        if (v118 == v119)
        {
        }
      }
    }
  }

  v168 = v56;
  sub_1D89388D8(v53, type metadata accessor for RefinementStateInternal);
LABEL_23:
  sub_1D8917FF0(v183, v173, type metadata accessor for BundleClassification);
  v77 = v155;
  v78 = *(v3 + v156);
  BundleClassification.ClassificationType.asEmpty.getter(v155);
  if (!*(v78 + 16))
  {
    goto LABEL_129;
  }

  v79 = sub_1D87EF6AC(v77);
  if (v80)
  {
    sub_1D87C1470(*(v78 + 56) + 40 * v79, v193);
    sub_1D89388D8(v77, type metadata accessor for BundleClassification.ClassificationType);
    v81 = v162;
    CVBundle.latestEstimate.getter(v190);
    v192 = v190[0];
    CVDetection.detection.getter(&v184);
    v82 = *(&v185 + 1);
    v83 = v186;
    __swift_project_boxed_opaque_existential_1(&v184, *(&v185 + 1));
    v84 = (*(v83 + 88))(v82, v83);

    __swift_destroy_boxed_opaque_existential_1(&v184);
    CVBundle.workState.getter(&v184);
    if (v184 == 2)
    {
      v85 = v194;
      v86 = v195;
      __swift_project_boxed_opaque_existential_1(v193, v194);
      v186 = v198;
      v187 = v199;
      v188 = v200;
      v189 = v201;
      v184 = v196;
      v185 = v197;
      (*(v86 + 8))(v190, v81, &v184, v85, v86);
      v87 = v191;
      v68 = v172;
      if (v191 != 255)
      {
        v88 = v190[0];
        v89 = v190[1];
        __swift_destroy_boxed_opaque_existential_1(v193);
        if (v87 == 2 && v88 == 1 && !v89)
        {
          v90 = v159;
          swift_storeEnumTagMultiPayload();
          goto LABEL_37;
        }

        v84 = *(v173 + *(v158 + 24));
LABEL_36:
        v91 = v159;
        *v159 = 0;
        *(v91 + 1) = v88;
        *(v91 + 2) = v89;
        v90 = v91;
        v91[24] = v87;
        *(v91 + 4) = v84;
        swift_storeEnumTagMultiPayload();
LABEL_37:
        v92 = v165;
        v54 = v171;
LABEL_38:
        if (sub_1D893AE50(v183 + v57, v90))
        {
          sub_1D89388D8(v90, type metadata accessor for RefinementStateInternal);
          sub_1D89388D8(v173, type metadata accessor for BundleClassification);
          v34 = v169;
          goto LABEL_88;
        }

        v34 = v169;
        sub_1D87A14E4(v169, &qword_1ECA65B10);
        sub_1D8918058(v173, v34, type metadata accessor for BundleClassification);
        sub_1D8918058(v90, &v34[*(v54 + 20)], type metadata accessor for RefinementStateInternal);
LABEL_41:
        v168(v34, 0, 1, v54);
        goto LABEL_88;
      }

      v93 = *(v173 + *(v158 + 24));
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v94 = qword_1EE0E54C8;
      v95 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
      swift_beginAccess();
      v90 = v159;
      v54 = v171;
      if (*(v94 + v95) != 1)
      {
        v99 = v150;
        sub_1D8917FF0(v173, v150, type metadata accessor for BundleClassification.ClassificationType);
        v100 = swift_getEnumCaseMultiPayload();
        sub_1D89388D8(v99, type metadata accessor for BundleClassification.ClassificationType);
        v68 = v172;
        if (v100 == 1)
        {
          v101 = v93 + 3.0;
        }

        else
        {
          v101 = v93 + 2.0;
        }

        v92 = v165;
        if (v84 < v101)
        {
          goto LABEL_69;
        }

LABEL_73:
        __swift_destroy_boxed_opaque_existential_1(v193);
LABEL_74:
        swift_storeEnumTagMultiPayload();
        goto LABEL_38;
      }

      v68 = v172;
      v92 = v165;
      if (v84 >= v93 + INFINITY)
      {
        goto LABEL_73;
      }

LABEL_69:
      v105 = (v173 + *(v158 + 20));
      v106 = *v105;
      if (v106 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1(v193);
        if (v84 <= v93)
        {
          sub_1D8917FF0(v183 + v57, v90, type metadata accessor for RefinementStateInternal);
          goto LABEL_38;
        }

        goto LABEL_74;
      }

      if (v106)
      {
        goto LABEL_73;
      }

      v88 = *(v105 + 1);
      v89 = *(v105 + 2);
      LOBYTE(v87) = v105[24];
      v84 = *(v105 + 4);
      sub_1D8912A68(v88, v89, v87);
    }

    else
    {
      v89 = 0;
      LOBYTE(v87) = 2;
      v88 = 1;
      v68 = v172;
    }

    __swift_destroy_boxed_opaque_existential_1(v193);
    goto LABEL_36;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8933880@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v102 = a3;
  v7 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for BundleClassification.ClassificationType(0);
  v106 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v127 = (&v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v125 = &v97 - v20;
  v108 = type metadata accessor for BundleClassification(0);
  v119 = *(v108 - 8);
  v21 = MEMORY[0x1EEE9AC00](v108);
  v99 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v104 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v128 = &v97 - v25;
  v118 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v120 = *(v118 - 8);
  v26 = MEMORY[0x1EEE9AC00](v118);
  v116 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v126 = &v97 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v115 = &v97 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v114 = &v97 - v32;
  v33 = a2[3];
  v134 = a2[2];
  v135 = v33;
  v34 = a2[5];
  v136 = a2[4];
  v137 = v34;
  v35 = a2[1];
  v132 = *a2;
  v133 = v35;
  v36 = sub_1D8931AE4();
  v100 = a1;
  v129[2] = a1;
  v129[3] = &v132;
  v129[4] = v4;
  v37 = sub_1D87C70C4(sub_1D8943A3C, v129, v36);
  v38 = v37;
  v39 = *(v37 + 16);
  v117 = v37;
  v113 = v39;
  if (!v39)
  {
LABEL_29:
    sub_1D8917FF0(v100, v103, type metadata accessor for CVBundle);
    v80 = v101;
    sub_1D8917FF0(v4 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration, v101, type metadata accessor for BundleManager.Configuration);
    v81 = *(v38 + 16);
    if (v81)
    {
      sub_1D88C7A20(&v132, v130);
      v130[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F3FCC(0, v81, 0);
      v82 = v130[0];
      v83 = v38 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v84 = *(v120 + 72);
      v85 = v99;
      do
      {
        v86 = v116;
        sub_1D8917FF0(v83, v116, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D8917FF0(v86, v85, type metadata accessor for BundleClassification);
        sub_1D89388D8(v86, type metadata accessor for BundleClassifier.ClassificationInfo);
        v130[0] = v82;
        v88 = *(v82 + 16);
        v87 = *(v82 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_1D87F3FCC(v87 > 1, v88 + 1, 1);
          v85 = v99;
          v82 = v130[0];
        }

        *(v82 + 16) = v88 + 1;
        sub_1D8918058(v85, v82 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v88, type metadata accessor for BundleClassification);
        v83 += v84;
        --v81;
      }

      while (v81);
    }

    else
    {
      sub_1D88C7A20(&v132, v130);

      v82 = MEMORY[0x1E69E7CC0];
    }

    v89 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_vapClient);
    v90 = v102;
    sub_1D8918058(v103, v102, type metadata accessor for CVBundle);
    v91 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
    v92 = (v90 + v91[5]);
    v93 = v135;
    v92[2] = v134;
    v92[3] = v93;
    v94 = v137;
    v92[4] = v136;
    v92[5] = v94;
    v95 = v133;
    *v92 = v132;
    v92[1] = v95;
    sub_1D8918058(v80, v90 + v91[6], type metadata accessor for BundleManager.Configuration);
    *(v90 + v91[7]) = v82;
    *(v90 + v91[8]) = v89;
  }

  v40 = 0;
  v41 = *(v118 + 20);
  v111 = v37 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
  v112 = v41;
  v107 = (v119 + 56);
  v124 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  v42 = &qword_1ECA641B8;
  v43 = &unk_1D8B23AC0;
  v109 = v12;
  v110 = v4;
  while (v40 < *(v38 + 16))
  {
    v44 = *(v120 + 72);
    v45 = v114;
    sub_1D8917FF0(v111 + v44 * v40, v114, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D8918058(v45, v128, type metadata accessor for BundleClassification);
    sub_1D8918058(v45 + v112, v121, type metadata accessor for RefinementStateInternal);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v122 = v40;
    v123 = v44;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_13;
      }

      v48 = v104;
      sub_1D8918058(v121, v104, type metadata accessor for BundleClassification);
      if (*(v48 + *(v108 + 20)) == 2)
      {
        v49 = v48;
        v50 = v105;
        sub_1D8918058(v49, v105, type metadata accessor for BundleClassification);
        v51 = 0;
      }

      else
      {
        sub_1D89388D8(v48, type metadata accessor for BundleClassification);
        v51 = 1;
        v50 = v105;
      }

      (*v107)(v50, v51, 1, v108);
      v47 = v50;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D89388D8(v121, type metadata accessor for RefinementStateInternal);
LABEL_13:
        (*v107)(v19, 1, 1, v108);
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v47 = v121;
      }

      else
      {
        v52 = v121;

        v47 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48);
      }
    }

    sub_1D881F6FC(v47, v19, v42);
LABEL_20:
    v53 = v19;
    v54 = v125;
    sub_1D881F6FC(v19, v125, v42);
    v56 = v127;
    v55 = v128;
    BundleClassification.ClassificationType.asEmpty.getter(v127);
    v57 = v115;
    sub_1D8917FF0(v55, v115, type metadata accessor for BundleClassification);
    v58 = v54;
    v59 = v42;
    v60 = v43;
    sub_1D87A0E38(v58, v57 + *(v118 + 20), v42);
    swift_storeEnumTagMultiPayload();
    v61 = v124;
    v62 = v110;
    swift_beginAccess();
    sub_1D8918058(v57, v126, type metadata accessor for BundleClassifier.ClassificationInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131 = *(v62 + v61);
    v64 = v131;
    v65 = v62;
    *(v62 + v61) = 0x8000000000000000;
    v67 = sub_1D87EF6AC(v56);
    v68 = v64[2];
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      goto LABEL_38;
    }

    v71 = v66;
    if (v64[3] >= v70)
    {
      v43 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D896AA68();
      }
    }

    else
    {
      sub_1D8974160(v70, isUniquelyReferenced_nonNull_native);
      v72 = sub_1D87EF6AC(v127);
      if ((v71 & 1) != (v73 & 1))
      {
        goto LABEL_40;
      }

      v67 = v72;
      v43 = v60;
    }

    v19 = v53;
    v74 = v131;
    v75 = v123;
    if (v71)
    {
      sub_1D89439D4(v126, v131[7] + v67 * v123, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v127, type metadata accessor for BundleClassification.ClassificationType);
    }

    else
    {
      v131[(v67 >> 6) + 8] |= 1 << v67;
      v76 = v127;
      sub_1D8917FF0(v127, v74[6] + *(v106 + 72) * v67, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8918058(v126, v74[7] + v67 * v75, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v76, type metadata accessor for BundleClassification.ClassificationType);
      v77 = v74[2];
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_39;
      }

      v74[2] = v79;
    }

    v40 = v122 + 1;
    v4 = v65;
    *(v65 + v124) = v74;

    swift_endAccess();
    v42 = v59;
    sub_1D87A14E4(v125, v59);
    sub_1D89388D8(v128, type metadata accessor for BundleClassification);
    v38 = v117;
    if (v113 == v40)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D893441C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v29 = a2;
  v7 = type metadata accessor for RefinementStateInternal(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v27 = *(a4 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_classifiers);
  v16 = *(type metadata accessor for BundleClassifier.ClassificationInfo(0) + 20);
  sub_1D8917FF0(a1 + v16, v15, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D89388D8(v15, type metadata accessor for RefinementStateInternal);
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  sub_1D8917FF0(a1 + v16, v13, type metadata accessor for RefinementStateInternal);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 == 1)
  {
    v19 = v13;
    goto LABEL_6;
  }

  if (v18 == 2)
  {

    v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48)];
LABEL_6:
    sub_1D87A14E4(v19, &qword_1ECA641B8);
    goto LABEL_7;
  }

  sub_1D89388D8(v13, type metadata accessor for RefinementStateInternal);
  swift_storeEnumTagMultiPayload();
  v22 = sub_1D893AE50(a1 + v16, v10);
  sub_1D89388D8(v10, type metadata accessor for RefinementStateInternal);
  if ((v22 & 1) == 0)
  {
    v23 = a3[3];
    v28[2] = a3[2];
    v28[3] = v23;
    v24 = a3[5];
    v28[4] = a3[4];
    v28[5] = v24;
    v25 = a3[1];
    v28[0] = *a3;
    v28[1] = v25;
    v20 = sub_1D890F760(v29, v28, v27);
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D8934680(uint64_t a1)
{
  v2 = v1;
  v100 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v100);
  v91 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v103 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v99 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v86 - v13;
  v86 = type metadata accessor for BundleClassification.ClassificationType(0);
  v92 = *(v86 - 8);
  v14 = MEMORY[0x1EEE9AC00](v86);
  v108 = (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = (&v86 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v86 - v18);
  v20 = type metadata accessor for BundleClassification(0);
  v101 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v106 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v86 - v26;
  v27 = *(a1 + *(type metadata accessor for BundleManager.BundleClassificationRequest(0) + 28));
  v28 = *(v27 + 16);
  v29 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  v89 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  result = swift_beginAccess();
  v98 = v28;
  if (v28)
  {
    v32 = 0;
    v97 = (v103 + 56);
    *&v31 = 136315650;
    v88 = v31;
    v104 = v25;
    v87 = v8;
    v96 = v19;
    v95 = v27;
    v105 = v29;
    while (v32 < *(v27 + 16))
    {
      sub_1D8917FF0(v27 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v32, v109, type metadata accessor for BundleClassification);
      BundleClassification.ClassificationType.asEmpty.getter(v19);
      v33 = *(v2 + v29);
      v34 = *(v33 + 16);

      if (!v34)
      {
        goto LABEL_30;
      }

      v35 = sub_1D87EF6AC(v19);
      if ((v36 & 1) == 0)
      {
        goto LABEL_30;
      }

      v37 = *(v33 + 56);
      v38 = v102;
      v39 = v103;
      v107 = *(v103 + 72);
      sub_1D8917FF0(v37 + v107 * v35, v102, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);

      v40 = *(v39 + 56);
      v41 = v5;
      v40(v38, 0, 1, v5);
      sub_1D87A14E4(v38, &qword_1ECA65B10);
      if (qword_1EE0E44F0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D8B151E0();
      __swift_project_value_buffer(v42, qword_1EE0E44F8);
      v43 = v109;
      sub_1D8917FF0(v109, v25, type metadata accessor for BundleClassification);
      v5 = v106;
      sub_1D8917FF0(v43, v106, type metadata accessor for BundleClassification);
      swift_retain_n();
      v44 = sub_1D8B151C0();
      v45 = sub_1D8B16200();
      if (os_log_type_enabled(v44, v45))
      {
        v94 = v45;
        v46 = v25;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v111[0] = v48;
        *v47 = v88;
        v49 = BundleClassification.ClassificationType.caseDescription.getter();
        v51 = v50;
        sub_1D89388D8(v46, type metadata accessor for BundleClassification);
        v52 = sub_1D89AC714(v49, v51, v111);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2080;
        v53 = v93;
        BundleClassification.ClassificationType.asEmpty.getter(v93);
        v54 = *(v2 + v105);
        if (!*(v54 + 16))
        {
          goto LABEL_27;
        }

        v55 = sub_1D87EF6AC(v53);
        v5 = v56;

        if ((v5 & 1) == 0)
        {
          goto LABEL_28;
        }

        v57 = v90;
        sub_1D8917FF0(*(v54 + 56) + v55 * v107, v90, type metadata accessor for BundleClassifier.ClassificationInfo);

        sub_1D89388D8(v53, type metadata accessor for BundleClassification.ClassificationType);
        v58 = v41;
        v59 = v91;
        sub_1D8917FF0(v57 + *(v41 + 20), v91, type metadata accessor for RefinementStateInternal);
        sub_1D89388D8(v57, type metadata accessor for BundleClassifier.ClassificationInfo);
        v60 = sub_1D893085C();
        v62 = v61;
        sub_1D89388D8(v59, type metadata accessor for RefinementStateInternal);
        sub_1D89388D8(v106, type metadata accessor for BundleClassification);
        v63 = sub_1D89AC714(v60, v62, v111);

        *(v47 + 14) = v63;
        *(v47 + 22) = 2080;
        sub_1D8B13240();
        sub_1D893FD6C(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v64 = sub_1D8B16B50();
        v66 = sub_1D89AC714(v64, v65, v111);

        *(v47 + 24) = v66;
        _os_log_impl(&dword_1D8783000, v44, v94, "Classification of type %s is being set to .completed from %s for (bundle: %s).", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v48, -1, -1);
        MEMORY[0x1DA721330](v47, -1, -1);

        v8 = v87;
      }

      else
      {

        sub_1D89388D8(v5, type metadata accessor for BundleClassification);
        sub_1D89388D8(v25, type metadata accessor for BundleClassification);
        v58 = v41;
      }

      v5 = v108;
      v67 = v109;
      BundleClassification.ClassificationType.asEmpty.getter(v108);
      v68 = v99;
      sub_1D8917FF0(v67, v99, type metadata accessor for BundleClassification);
      v69 = v58;
      sub_1D8917FF0(v67, v68 + *(v58 + 20), type metadata accessor for BundleClassification);
      swift_storeEnumTagMultiPayload();
      v29 = v105;
      swift_beginAccess();
      sub_1D8918058(v68, v8, type metadata accessor for BundleClassifier.ClassificationInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = *(v2 + v29);
      v71 = v110;
      *(v2 + v29) = 0x8000000000000000;
      v72 = sub_1D87EF6AC(v5);
      v74 = v71[2];
      v75 = (v73 & 1) == 0;
      v76 = __OFADD__(v74, v75);
      v77 = v74 + v75;
      if (v76)
      {
        goto LABEL_26;
      }

      v78 = v73;
      if (v71[3] >= v77)
      {
        v5 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = v72;
          sub_1D896AA68();
          v72 = v85;
        }
      }

      else
      {
        sub_1D8974160(v77, isUniquelyReferenced_nonNull_native);
        v72 = sub_1D87EF6AC(v108);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_31;
        }

        v5 = v69;
      }

      v25 = v104;
      v80 = v110;
      if (v78)
      {
        sub_1D89439D4(v8, v110[7] + v72 * v107, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D89388D8(v108, type metadata accessor for BundleClassification.ClassificationType);
      }

      else
      {
        v110[(v72 >> 6) + 8] |= 1 << v72;
        v81 = v72;
        v82 = v108;
        sub_1D8917FF0(v108, v80[6] + *(v92 + 72) * v72, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D8918058(v8, v80[7] + v81 * v107, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D89388D8(v82, type metadata accessor for BundleClassification.ClassificationType);
        v83 = v80[2];
        v76 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v76)
        {
          goto LABEL_29;
        }

        v80[2] = v84;
        v25 = v104;
      }

      ++v32;
      *(v2 + v29) = v80;

      swift_endAccess();
      result = sub_1D89388D8(v109, type metadata accessor for BundleClassification);
      v27 = v95;
      v19 = v96;
      if (v98 == v32)
      {
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    (*v97)(v102, 1, 1, v5);
    __break(1u);
LABEL_31:
    result = sub_1D8B16C30();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D89351DC(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  type metadata accessor for CVBundle(0);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D893526C, 0, 0);
}

uint64_t sub_1D893526C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  sub_1D8917FF0(v2, v1, type metadata accessor for CVBundle);
  v3 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  *(v0 + 240) = v3;
  v4 = (v2 + *(v3 + 20));
  v5 = v4[1];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v5;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  *(v0 + 80) = v4[4];
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v9 = *(v2 + *(v3 + 28));
  v10 = type metadata accessor for BundleClassification(0);
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  v11[2] = v9;
  v11[3] = v1;
  v11[4] = v0 + 16;
  v11[5] = v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BE0);
  sub_1D88C7A20(v0 + 16, v0 + 112);
  v13 = swift_task_alloc();
  *(v0 + 256) = v13;
  *v13 = v0;
  v13[1] = sub_1D89353EC;

  return MEMORY[0x1EEE6DBF8](v0 + 208, v10, v12, 0, 0, &unk_1D8B2C020, v11, v10);
}

uint64_t sub_1D89353EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8935504, 0, 0);
}

uint64_t sub_1D8935504()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  sub_1D8917FF0(v1, v3, type metadata accessor for CVBundle);
  sub_1D8917FF0(v4 + v2[6], v3 + v2[6], type metadata accessor for BundleManager.Configuration);
  v6 = *(v4 + v2[8]);
  v7 = (v3 + v2[5]);
  v8 = *(v0 + 96);
  v10 = *(v0 + 48);
  v9 = *(v0 + 64);
  v7[4] = *(v0 + 80);
  v7[5] = v8;
  v7[2] = v10;
  v7[3] = v9;
  v11 = *(v0 + 32);
  *v7 = *(v0 + 16);
  v7[1] = v11;
  *(v3 + v2[7]) = v5;
  *(v3 + v2[8]) = v6;

  sub_1D89388D8(v1, type metadata accessor for CVBundle);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D893561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[35] = a3;
  v6[36] = a4;
  v6[33] = a1;
  v6[34] = a2;
  v7 = *(type metadata accessor for BundleManager.BundleClassificationRequest(0) - 8);
  v6[39] = v7;
  v6[40] = *(v7 + 64);
  v6[41] = swift_task_alloc();
  v8 = *(type metadata accessor for CVBundle(0) - 8);
  v6[42] = v8;
  v6[43] = *(v8 + 64);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  v6[47] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BF8);
  v6[48] = v9;
  v6[49] = *(v9 - 8);
  v6[50] = swift_task_alloc();
  v10 = type metadata accessor for BundleClassification(0);
  v6[51] = v10;
  v11 = *(v10 - 8);
  v6[52] = v11;
  v6[53] = *(v11 + 64);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89358A8, 0, 0);
}

uint64_t sub_1D89358A8()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 416);
    v43 = *(v0 + 312);
    v44 = *(v0 + 336);
    v42 = **(v0 + 272);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v40 = v4 + *(v0 + 424);
    v41 = v4;
    v38 = *(v3 + 72);
    v39 = *(v0 + 344) + 7;
    do
    {
      v51 = v2;
      v9 = *(v0 + 440);
      v10 = *(v0 + 448);
      v46 = v9;
      v11 = *(v0 + 368);
      v48 = v11;
      v49 = *(v0 + 360);
      v12 = *(v0 + 352);
      v13 = *(v0 + 328);
      v14 = *(v0 + 296);
      v45 = *(v0 + 304);
      v15 = *(v0 + 288);
      v50 = v5;
      sub_1D8917FF0(v5, v10, type metadata accessor for BundleClassification);
      v16 = sub_1D8B15EA0();
      v47 = *(v16 - 8);
      (*(v47 + 56))(v11, 1, 1, v16);
      sub_1D8917FF0(v10, v9, type metadata accessor for BundleClassification);
      sub_1D8917FF0(v15, v12, type metadata accessor for CVBundle);
      sub_1D8917FF0(v45, v13, type metadata accessor for BundleManager.BundleClassificationRequest);
      v17 = (v40 + *(v44 + 80)) & ~*(v44 + 80);
      v18 = (v39 + v17) & 0xFFFFFFFFFFFFFFF8;
      v19 = (*(v43 + 80) + v18 + 96) & ~*(v43 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = (v20 + 16);
      *(v20 + 24) = 0;
      sub_1D8918058(v46, v20 + v41, type metadata accessor for BundleClassification);
      sub_1D8918058(v12, v20 + v17, type metadata accessor for CVBundle);
      v22 = (v20 + v18);
      v23 = v14[1];
      *v22 = *v14;
      v22[1] = v23;
      v24 = v14[5];
      v26 = v14[2];
      v25 = v14[3];
      v22[4] = v14[4];
      v22[5] = v24;
      v22[2] = v26;
      v22[3] = v25;
      sub_1D8918058(v13, v20 + v19, type metadata accessor for BundleManager.BundleClassificationRequest);
      sub_1D87A0E38(v48, v49, &unk_1ECA675E0);
      v27 = (*(v47 + 48))(v49, 1, v16);
      v28 = *(v0 + 360);
      v29 = *(v0 + 296);
      if (v27 == 1)
      {
        sub_1D88C7A20(v29, v0 + 16);
        sub_1D87A14E4(v28, &unk_1ECA675E0);
        if (*v21)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D88C7A20(v29, v0 + 112);
        sub_1D8B15E90();
        (*(v47 + 8))(v28, v16);
        if (*v21)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v30 = sub_1D8B15E00();
          v31 = v32;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v30 = 0;
      v31 = 0;
LABEL_10:
      v33 = swift_allocObject();
      *(v33 + 16) = &unk_1D8B2C010;
      *(v33 + 24) = v20;

      if (v31 | v30)
      {
        v6 = v0 + 208;
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v30;
        *(v0 + 232) = v31;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 448);
      v8 = *(v0 + 368);
      *(v0 + 240) = 1;
      *(v0 + 248) = v6;
      *(v0 + 256) = v42;
      swift_task_create();

      sub_1D87A14E4(v8, &unk_1ECA675E0);
      sub_1D89388D8(v7, type metadata accessor for BundleClassification);
      v5 = v50 + v38;
      v2 = v51 - 1;
    }

    while (v51 != 1);
  }

  sub_1D8B15E30();
  *(v0 + 456) = MEMORY[0x1E69E7CC0];
  v34 = swift_task_alloc();
  *(v0 + 464) = v34;
  *v34 = v0;
  v34[1] = sub_1D8935DAC;
  v35 = *(v0 + 376);
  v36 = *(v0 + 384);

  return MEMORY[0x1EEE6D8A8](v35, 0, 0, v36);
}

uint64_t sub_1D8935DAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8935EA8, 0, 0);
}

uint64_t sub_1D8935EA8()
{
  v1 = v0[47];
  v2 = (*(v0[52] + 48))(v1, 1, v0[51]);
  v3 = v0[57];
  if (v2 == 1)
  {
    v4 = v0[33];
    (*(v0[49] + 8))(v0[50], v0[48]);
    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_1D8918058(v1, v0[54], type metadata accessor for BundleClassification);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[57];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D87C7D74(0, v8[2] + 1, 1, v0[57]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D87C7D74(v9 > 1, v10 + 1, 1, v8);
    }

    v11 = v0[54];
    v12 = v0[52];
    v8[2] = v10 + 1;
    sub_1D8918058(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, type metadata accessor for BundleClassification);
    v0[57] = v8;
    v13 = swift_task_alloc();
    v0[58] = v13;
    *v13 = v0;
    v13[1] = sub_1D8935DAC;
    v14 = v0[47];
    v15 = v0[48];

    return MEMORY[0x1EEE6D8A8](v14, 0, 0, v15);
  }
}

uint64_t sub_1D893611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v7[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8936144, 0, 0);
}

uint64_t sub_1D8936144()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  v4 = v1[5];
  v6 = v1[2];
  v5 = v1[3];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v4;
  *(v0 + 48) = v6;
  *(v0 + 64) = v5;
  v7 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v8 = *(v7 + 24);
  v9 = *(v2 + *(v7 + 32));
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_1D8936220;
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);

  return sub_1D890DE44(v12, v11, (v0 + 16), v2 + v8, v9);
}

uint64_t sub_1D8936220()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8936314()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  v2 = sub_1D8B13240();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D89388D8(v0 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration, type metadata accessor for BundleManager.Configuration);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8936404@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  v5 = sub_1D8B13240();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t BundleManager.Configuration.classificationTypesEnabled.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BundleManager.Configuration.summarizationSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 32);
  v4 = sub_1D8B15340();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BundleManager.Configuration.summarizationSource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 32);
  v4 = sub_1D8B15340();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BundleManager.Configuration.suppressedDataDetectorTypes.getter()
{
  type metadata accessor for BundleManager.Configuration(0);
}

uint64_t BundleManager.Configuration.suppressedDataDetectorTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t BundleManager.Configuration.vapWorkflow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 40);
  v4 = sub_1D8B150F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BundleManager.Configuration.vapWorkflow.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 40);
  v4 = sub_1D8B150F0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BundleManager.Configuration.visualLookUpMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BundleManager.Configuration(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t BundleManager.Configuration.visualLookUpMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BundleManager.Configuration(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t _s22VisualIntelligenceCore13BundleManagerC13ConfigurationV15factorySettingsAEvgZ_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(a1 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(a1 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v2 = type metadata accessor for InternalSettings();
  v3 = sub_1D8B15940();
  LODWORD(v2) = [v2 BOOLForKey:v3 defaultValue:0];

  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(a1 + 13) = v4;
  v5 = type metadata accessor for BundleManager.Configuration(0);
  v6 = v5[8];
  v7 = *MEMORY[0x1E69C9A80];
  v8 = sub_1D8B15340();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  *(a1 + v5[9]) = MEMORY[0x1E69E7CD0];
  v9 = v5[10];
  v10 = *MEMORY[0x1E69DFC20];
  v11 = sub_1D8B150F0();
  result = (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  *(a1 + v5[11]) = 2;
  return result;
}

uint64_t static BundleManager.Configuration.cameraSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = type metadata accessor for BundleClassification.ClassificationType(0);
  v70 = *(v74 - 8);
  v2 = MEMORY[0x1EEE9AC00](v74);
  v68 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v67 = &v53 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = (&v53 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v53 - v8;
  v9 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(a1 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v10 = type metadata accessor for InternalSettings();
    v11 = sub_1D8B15940();
    LODWORD(v10) = [v10 BOOLForKey:v11 defaultValue:0];

    v12 = v10 ? 1 : 2;
    *(a1 + 13) = v12;
    v13 = type metadata accessor for BundleManager.Configuration(0);
    v14 = v13[8];
    v15 = *MEMORY[0x1E69C9A80];
    v16 = sub_1D8B15340();
    v17 = *(v16 - 8);
    v18 = *(v17 + 104);
    v65 = v14;
    v64 = v15;
    v62 = v17 + 104;
    v63 = v16;
    v60 = v17;
    v61 = v18;
    (v18)(a1 + v14, v15);
    *(a1 + v13[9]) = MEMORY[0x1E69E7CD0];
    v19 = v13[10];
    v20 = *MEMORY[0x1E69DFC20];
    v21 = sub_1D8B150F0();
    v22 = *(v21 - 8);
    v23 = *(v22 + 104);
    v58 = v21;
    v59 = v19;
    v57 = v22 + 104;
    v55 = v22;
    v56 = v23;
    result = (v23)(a1 + v19, v20);
    v25 = v13[11];
    v66 = a1;
    v54 = v25;
    *(a1 + v25) = 2;
    v69 = v9[2];
    v75 = v9;
    if (!v69)
    {
      break;
    }

    v26 = 0;
    v71 = *MEMORY[0x1E69C9C08];
    v27 = v72;
    while (1)
    {
      if (v26 >= v9[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      v28 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      a1 = *(v70 + 72);
      v29 = v73;
      sub_1D8917FF0(v9 + v28 + a1 * v26, v73, type metadata accessor for BundleClassification.ClassificationType);
      *v27 = 0x7974706D65;
      v27[1] = 0xE500000000000000;
      v30 = sub_1D8B145A0();
      v31 = *(*(v30 - 8) + 104);
      (v31)(v27, v71, v30);
      swift_storeEnumTagMultiPayload();
      v32 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v29, v27);
      sub_1D89388D8(v27, type metadata accessor for BundleClassification.ClassificationType);
      result = sub_1D89388D8(v29, type metadata accessor for BundleClassification.ClassificationType);
      v33 = v26 + 1;
      if (v32)
      {
        break;
      }

      ++v26;
      v9 = v75;
      if (v69 == v33)
      {
        v33 = v75[2];
        v34 = v33;
        v35 = v66;
        goto LABEL_31;
      }
    }

    v69 = v28;
    v70 = a1;
    v9 = v75;
    v36 = v75[2];
    if (v36 - 1 == v26)
    {
      v35 = v66;
      v34 = v26;
      goto LABEL_31;
    }

    v37 = v69 + v70 * v33;
    a1 = v31;
    v34 = v26;
    v38 = v30;
    while (v33 < v36)
    {
      v75 = v9;
      v40 = v73;
      sub_1D8917FF0(v9 + v37, v73, type metadata accessor for BundleClassification.ClassificationType);
      v41 = v72;
      *v72 = 0x7974706D65;
      *(v41 + 8) = 0xE500000000000000;
      (v31)(v41, v71, v38);
      swift_storeEnumTagMultiPayload();
      v42 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v40, v41);
      sub_1D89388D8(v41, type metadata accessor for BundleClassification.ClassificationType);
      result = sub_1D89388D8(v40, type metadata accessor for BundleClassification.ClassificationType);
      if (v42)
      {
        v9 = v75;
        v39 = v70;
      }

      else
      {
        if (v33 == v34)
        {
          v9 = v75;
        }

        else
        {
          v9 = v75;
          v43 = v69;
          if (v34 < 0)
          {
            goto LABEL_41;
          }

          v44 = v75[2];
          if (v34 >= v44)
          {
            goto LABEL_42;
          }

          v45 = v34 * v70;
          sub_1D8917FF0(v75 + v69 + v34 * v70, v67, type metadata accessor for BundleClassification.ClassificationType);
          if (v33 >= v44)
          {
            goto LABEL_43;
          }

          sub_1D8917FF0(v9 + v37, v68, type metadata accessor for BundleClassification.ClassificationType);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1D8939478(v75);
          }

          v9 = v75;
          sub_1D89439D4(v68, v75 + v43 + v45, type metadata accessor for BundleClassification.ClassificationType);
          if (v33 >= v9[2])
          {
            goto LABEL_44;
          }

          result = sub_1D89439D4(v67, v9 + v37, type metadata accessor for BundleClassification.ClassificationType);
        }

        v39 = v70;
        ++v34;
      }

      ++v33;
      v36 = v9[2];
      v37 += v39;
      if (v33 == v36)
      {
        v75 = v9;
        v35 = v66;
        if (v33 < v34)
        {
          __break(1u);
        }

        else if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_48;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v33 = 0;
  v34 = 0;
  v35 = v66;
LABEL_31:
  if (__OFADD__(v33, v34 - v33))
  {
LABEL_48:
    __break(1u);
  }

  else
  {
    v46 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v46;
    if (!isUniquelyReferenced_nonNull_native || v34 > v46[3] >> 1)
    {
      if (v33 <= v34)
      {
        v48 = v34;
      }

      else
      {
        v48 = v33;
      }

      v46 = sub_1D87C9378(isUniquelyReferenced_nonNull_native, v48, 1, v46);
      *v35 = v46;
    }

    sub_1D88641F8(v34, v33, 0);
    *v35 = v46;
    *(v35 + 12) = 1;
    *(v35 + v54) = 1;
    v50 = v58;
    v49 = v59;
    (*(v55 + 8))(v35 + v59, v58);
    v56(v35 + v49, *MEMORY[0x1E69DFC18], v50);
    v51 = v65;
    v52 = v63;
    (*(v60 + 8))(v35 + v65, v63);
    return v61(v35 + v51, v64, v52);
  }

  return result;
}

unint64_t sub_1D8937244()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x666B726F57706176;
    if (v1 != 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD00000000000001BLL;
    if (v1 == 4)
    {
      v6 = 0xD000000000000013;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000002BLL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000028;
    if (!*v0)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D893735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8943738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8937390(uint64_t a1)
{
  v2 = sub_1D89411D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89373CC(uint64_t a1)
{
  v2 = sub_1D89411D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleManager.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65858);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89411D4();
  sub_1D8B16DD0();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65868);
  sub_1D8941228();
  sub_1D8B16AE0();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D8B16AC0();
    LOBYTE(v12) = 2;
    sub_1D8B16AA0();
    LOBYTE(v12) = *(v3 + 13);
    HIBYTE(v11) = 3;
    sub_1D89412DC();
    sub_1D8B16AE0();
    v9 = type metadata accessor for BundleManager.Configuration(0);
    LOBYTE(v12) = 4;
    sub_1D8B15340();
    sub_1D893FD6C(&qword_1ECA65880, MEMORY[0x1E69C9A90]);
    sub_1D8B16AE0();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65888);
    sub_1D8941330();
    sub_1D8B16AE0();
    LOBYTE(v12) = 6;
    sub_1D8B150F0();
    sub_1D893FD6C(&qword_1ECA658A0, MEMORY[0x1E69DFC28]);
    sub_1D8B16AE0();
    LOBYTE(v12) = *(v3 + *(v9 + 44));
    HIBYTE(v11) = 7;
    sub_1D89413E4();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BundleManager.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1D8B150F0();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B15340();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA658B0);
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *v14 = v45;
  *(v14 + 2) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  v14[12] = (byte_1EE0ED6C0 & 1) == 0;
  v15 = type metadata accessor for InternalSettings();
  v16 = sub_1D8B15940();
  LODWORD(v15) = [v15 BOOLForKey:v16 defaultValue:0];

  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v14[13] = v17;
  v18 = v14;
  v19 = v12[8];
  (*(v6 + 104))(&v18[v19], *MEMORY[0x1E69C9A80], v5);
  v43 = v6;
  v20 = v12[9];
  *&v18[v20] = MEMORY[0x1E69E7CD0];
  v46 = v5;
  v21 = v12[10];
  (*(v52 + 104))(&v18[v21], *MEMORY[0x1E69DFC20], v53);
  v22 = v12[11];
  v50 = a1;
  v51 = v18;
  v18[v22] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89411D4();
  v23 = v49;
  sub_1D8B16DB0();
  if (v23)
  {
    v28 = v51;
    __swift_destroy_boxed_opaque_existential_1(v50);
    v36 = v28;
  }

  else
  {
    v49 = v19;
    v39 = v21;
    v40 = v20;
    v38 = v22;
    v24 = v46;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65868);
    v54 = 0;
    sub_1D8941438();
    v26 = v47;
    sub_1D8B16A10();
    v27 = v11;

    v30 = v51;
    *v51 = v55;
    LOBYTE(v55) = 1;
    sub_1D8B169F0();
    *(v30 + 2) = v31;
    LOBYTE(v55) = 2;
    *(v30 + 12) = sub_1D8B169D0() & 1;
    v54 = 3;
    sub_1D89414EC();
    sub_1D8B16A10();
    *(v30 + 13) = v55;
    LOBYTE(v55) = 4;
    sub_1D893FD6C(&qword_1ECA658C8, MEMORY[0x1E69C9A90]);
    v32 = v44;
    sub_1D8B16A10();
    (*(v43 + 40))(v30 + v49, v32, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65888);
    v54 = 5;
    sub_1D8941540();
    sub_1D8B16A10();
    *(v30 + v40) = v55;
    LOBYTE(v55) = 6;
    sub_1D893FD6C(&qword_1ECA658E0, MEMORY[0x1E69DFC28]);
    v33 = v42;
    sub_1D8B16A10();
    v34 = v50;
    (*(v52 + 40))(v30 + v39, v33, v25);
    v54 = 7;
    sub_1D89415F4();
    sub_1D8B16A10();
    (*(v48 + 8))(v27, v26);
    v35 = v51;
    v51[v38] = v55;
    sub_1D8917FF0(v35, v41, type metadata accessor for BundleManager.Configuration);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v36 = v35;
  }

  return sub_1D89388D8(v36, type metadata accessor for BundleManager.Configuration);
}

uint64_t sub_1D8937F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BE8);
  v3[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BF0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v3[18] = *(v6 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8938140, 0, 0);
}

uint64_t sub_1D8938140()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    v30 = **(v0 + 80);
    v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v29;
    v28 = *(v3 + 72);
    v5 = sub_1D8B15EA0();
    v6 = *(v5 - 8);
    v27 = *(v6 + 56);
    v25 = v5;
    v26 = (v6 + 48);
    v24 = (v6 + 8);
    do
    {
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);
      v11 = *(v0 + 160);
      v27(v9, 1, 1, v5);
      sub_1D8917FF0(v4, v11, type metadata accessor for BundleManager.BundleClassificationRequest);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      sub_1D8918058(v11, v12 + v29, type metadata accessor for BundleManager.BundleClassificationRequest);
      sub_1D87A0E38(v9, v10, &unk_1ECA675E0);
      v14 = (*v26)(v10, 1, v5);
      v15 = *(v0 + 168);
      if (v14 == 1)
      {
        sub_1D87A14E4(*(v0 + 168), &unk_1ECA675E0);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D8B15E90();
        (*v24)(v15, v5);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_1D8B15E00();
          v17 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1D8B2BFE8;
      *(v19 + 24) = v12;

      if (v17 | v16)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v17;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_1D87A14E4(v8, &unk_1ECA675E0);
      v4 += v28;
      --v2;
      v5 = v25;
    }

    while (v2);
  }

  sub_1D8B15E30();
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *v20 = v0;
  v20[1] = sub_1D89384E4;
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);

  return MEMORY[0x1EEE6D8A8](v21, 0, 0, v22);
}

uint64_t sub_1D89384E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89385E0, 0, 0);
}

uint64_t sub_1D89385E0()
{
  v1 = v0[12];
  v2 = (*(v0[17] + 48))(v1, 1, v0[16]);
  v3 = v0[23];
  if (v2 == 1)
  {
    v4 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);
    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_1D8918058(v1, v0[19], type metadata accessor for BundleManager.BundleClassificationRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[23];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D87C925C(0, v8[2] + 1, 1, v0[23]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D87C925C(v9 > 1, v10 + 1, 1, v8);
    }

    v11 = v0[19];
    v12 = v0[17];
    v8[2] = v10 + 1;
    sub_1D8918058(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, type metadata accessor for BundleManager.BundleClassificationRequest);
    v0[23] = v8;
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_1D89384E4;
    v14 = v0[12];
    v15 = v0[13];

    return MEMORY[0x1EEE6D8A8](v14, 0, 0, v15);
  }
}

uint64_t sub_1D8938820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BundleClassifier(0);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1D8864FBC;

  return sub_1D89351DC(a1, a4);
}

uint64_t sub_1D89388D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8938938(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v50 = a4;
  v7 = type metadata accessor for RefinementState(0);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for BundleClassification.ClassificationType(0);
  v47 = *(v40 - 8);
  v9 = MEMORY[0x1EEE9AC00](v40);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C00);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v13;
  v43 = *(a1 + 16);
  if (!v43)
  {
LABEL_19:

    return;
  }

  v14 = 0;
  v41 = a2;
  v42 = a1;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1D8B16C30();
      __break(1u);
      goto LABEL_27;
    }

    v15 = *(v47 + 72);
    sub_1D8917FF0(a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v15 * v14, v12, type metadata accessor for BundleClassification.ClassificationType);
    v16 = *(a2 + 16);
    if (v14 == v16)
    {

      sub_1D89388D8(v12, type metadata accessor for BundleClassification.ClassificationType);
      return;
    }

    if (v14 >= v16)
    {
      goto LABEL_23;
    }

    v48 = v15;
    v17 = *(v46 + 72);
    v18 = a2 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + v17 * v14;
    v19 = v44;
    v20 = *(v45 + 48);
    v21 = v12;
    sub_1D8918058(v12, v44, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v18, v19 + v20, type metadata accessor for RefinementState);
    v22 = v51;
    sub_1D8918058(v19, v51, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v19 + v20, v49, type metadata accessor for RefinementState);
    v23 = *v50;
    v25 = sub_1D87EF6AC(v22);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    v12 = v21;
    if (a3)
    {
      if (v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1D896A53C();
      if (v29)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    v32 = v51;
    v33 = *v50;
    *(*v50 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    sub_1D8918058(v32, v33[6] + v25 * v48, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v49, v33[7] + v25 * v17, type metadata accessor for RefinementState);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_25;
    }

    ++v14;
    v33[2] = v36;
    a3 = 1;
    a1 = v42;
    a2 = v41;
    if (v43 == v14)
    {
      goto LABEL_19;
    }
  }

  sub_1D8973960(v28, a3 & 1);
  v30 = sub_1D87EF6AC(v51);
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_26;
  }

  v25 = v30;
  v12 = v21;
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v37 = swift_allocError();
  swift_willThrow();

  v54 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D89388D8(v49, type metadata accessor for RefinementState);
    sub_1D89388D8(v51, type metadata accessor for BundleClassification.ClassificationType);

    return;
  }

LABEL_27:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B421B0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](39, 0xE100000000000000);
  sub_1D8B168C0();
  __break(1u);
}

void sub_1D8938EE8(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for CVBundle(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63430);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = v51 - v14;
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_22;
  }

  v51[1] = v3;
  v52 = v8;
  v51[0] = v7;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v54 = *(v13 + 72);
  sub_1D87A0E38(a1 + v17, v51 - v14, &qword_1ECA63430);
  sub_1D8918058(v15, v10, type metadata accessor for CVBundle);
  v53 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1D87F0508(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1D8973DB4(v25, a2 & 1);
    v20 = sub_1D87F0508(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1D8B16C30();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_1D896A828();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v58 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1D89388D8(v10, type metadata accessor for CVBundle);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v31[6];
  v52 = *(v52 + 72);
  v33 = v20;
  sub_1D8918058(v10, v32 + v52 * v20, type metadata accessor for CVBundle);
  *(v31[7] + 8 * v33) = v18;
  v34 = v31[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v31[2] = v35;
    if (v55 == 1)
    {
LABEL_22:

      return;
    }

    v36 = a1 + v54 + v17;
    v37 = 1;
    while (v37 < *(a1 + 16))
    {
      sub_1D87A0E38(v36, v15, &qword_1ECA63430);
      sub_1D8918058(v15, v10, type metadata accessor for CVBundle);
      v38 = *&v15[v53];
      v39 = *a3;
      v40 = sub_1D87F0508(v10);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v24 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v24)
      {
        goto LABEL_23;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_1D8973DB4(v44, 1);
        v40 = sub_1D87F0508(v10);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v45)
      {
        goto LABEL_9;
      }

      v47 = *a3;
      *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = v40;
      sub_1D8918058(v10, v47[6] + v52 * v40, type metadata accessor for CVBundle);
      *(v47[7] + 8 * v48) = v38;
      v49 = v47[2];
      v24 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v37;
      v47[2] = v50;
      v36 += v54;
      if (v55 == v37)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B421B0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](39, 0xE100000000000000);
  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D89394F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D8B16610();
  }

  return sub_1D8B16750();
}

uint64_t sub_1D8939554(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BundleClassification(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  sub_1D87A0E38(v2, &v22 - v9, &qword_1ECA641B8);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1D8B16D40();
  }

  sub_1D8918058(v10, v7, type metadata accessor for BundleClassification);
  sub_1D8B16D40();
  BundleClassification.ClassificationType.hash(into:)(a1);
  v12 = &v7[*(v4 + 20)];
  if (*v12 != 2)
  {
    v14 = *(v12 + 1);
    v13 = *(v12 + 2);
    v15 = *(v12 + 4);
    v16 = v12[24];
    sub_1D8B16D40();
    sub_1D8B16D40();
    v17 = v16 >> 6;
    if (v16 >> 6 > 1)
    {
      if (v17 == 2)
      {
        v18 = 3;
        goto LABEL_14;
      }
    }

    else
    {
      if (v17)
      {
        v18 = 2;
        goto LABEL_14;
      }

      MEMORY[0x1DA720210](0);
      if (!v16)
      {
        v18 = 5;
        goto LABEL_14;
      }

      if (v16 == 1)
      {
        v18 = 6;
LABEL_14:
        MEMORY[0x1DA720210](v18);
        sub_1D8B15A60();
LABEL_23:
        if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = 0;
        }

        MEMORY[0x1DA720250](v20);
        goto LABEL_27;
      }

      if (v14 > 1)
      {
        if (v14 ^ 2 | v13)
        {
          if (v14 ^ 3 | v13)
          {
            v19 = 4;
          }

          else
          {
            v19 = 3;
          }
        }

        else
        {
          v19 = 2;
        }

        goto LABEL_22;
      }

      if (!(v14 | v13))
      {
        v19 = 0;
LABEL_22:
        MEMORY[0x1DA720210](v19);
        goto LABEL_23;
      }
    }

    v19 = 1;
    goto LABEL_22;
  }

  sub_1D8B16D40();
LABEL_27:
  v21 = *&v7[*(v4 + 24)];
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1DA720250](*&v21);
  return sub_1D89388D8(v7, type metadata accessor for BundleClassification);
}

uint64_t sub_1D893983C(uint64_t a1, uint64_t a2)
{
  v73 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v69 - v6;
  v80 = type metadata accessor for RefinementState(0);
  v76 = *(v80 - 8);
  v7 = MEMORY[0x1EEE9AC00](v80);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v85 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v69 - v12;
  v13 = type metadata accessor for BundleClassification.ClassificationType(0);
  v77 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v81 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641C8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v69 - v21;
  v23 = *(a2 + 64);
  v82 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v71 = (v24 + 63) >> 6;

  v28 = 0;
  v29 = 0;
  v79 = a2;
  v83 = v20;
  v84 = v22;
  while (1)
  {
    v86 = v28;
    if (!v26)
    {
      break;
    }

    v31 = v29;
LABEL_16:
    v34 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v79;
    v37 = v75;
    sub_1D8917FF0(*(v79 + 48) + *(v77 + 72) * v35, v75, type metadata accessor for BundleClassification.ClassificationType);
    v38 = *(v36 + 56) + *(v76 + 72) * v35;
    v39 = v78;
    sub_1D8917FF0(v38, v78, type metadata accessor for RefinementState);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641D0);
    v41 = *(v40 + 48);
    v42 = v37;
    v20 = v83;
    sub_1D8918058(v42, v83, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v39, &v20[v41], type metadata accessor for RefinementState);
    (*(*(v40 - 8) + 56))(v20, 0, 1, v40);
    v22 = v84;
LABEL_17:
    sub_1D881F6FC(v20, v22, &qword_1ECA641C8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641D0);
    if ((*(*(v43 - 8) + 48))(v22, 1, v43) == 1)
    {

      return MEMORY[0x1DA720210](v86);
    }

    v44 = *(v43 + 48);
    v45 = v81;
    sub_1D8918058(v22, v81, type metadata accessor for BundleClassification.ClassificationType);
    v46 = v85;
    sub_1D8918058(&v22[v44], v85, type metadata accessor for RefinementState);
    v47 = *(a1 + 48);
    v87[2] = *(a1 + 32);
    v87[3] = v47;
    v88 = *(a1 + 64);
    v48 = *(a1 + 16);
    v87[0] = *a1;
    v87[1] = v48;
    BundleClassification.ClassificationType.hash(into:)(v87);
    sub_1D89388D8(v45, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v46, v9, type metadata accessor for RefinementState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v30 = v70;
        sub_1D881F6FC(v9, v70, &qword_1ECA641B8);
        MEMORY[0x1DA720210](2);
        sub_1D8939554(v87);
        v20 = v83;
        sub_1D87A14E4(v30, &qword_1ECA641B8);
        sub_1D89388D8(v85, type metadata accessor for RefinementState);
        v22 = v84;
        goto LABEL_5;
      }

      v50 = *(v9 + 1);
      v51 = *(v9 + 2);
      v52 = v9[24];
      v53 = *(v9 + 4);
      MEMORY[0x1DA720210](0);
      sub_1D8B16D40();
      LODWORD(v74) = v52;
      v54 = v52 >> 6;
      if (v52 >> 6 > 1)
      {
        if (v54 == 2)
        {
          v59 = 3;
          goto LABEL_38;
        }

        MEMORY[0x1DA720210](1);
      }

      else
      {
        if (!v54)
        {
          MEMORY[0x1DA720210](0);
          v22 = v84;
          if (v74)
          {
            if (v74 == 1)
            {
              v55 = 6;
              goto LABEL_50;
            }

            if (v50 <= 1)
            {
              if (v50 | v51)
              {
                MEMORY[0x1DA720210](1);
              }

              else
              {
                MEMORY[0x1DA720210](0);
              }
            }

            else if (v50 ^ 2 | v51)
            {
              if (v50 ^ 3 | v51)
              {
                MEMORY[0x1DA720210](4);
              }

              else
              {
                MEMORY[0x1DA720210](3);
              }
            }

            else
            {
              MEMORY[0x1DA720210](2);
            }
          }

          else
          {
            v55 = 5;
LABEL_50:
            MEMORY[0x1DA720210](v55);
            sub_1D8B15A60();
          }

LABEL_41:
          if (v53 == 0.0)
          {
            v65 = 0.0;
          }

          else
          {
            v65 = v53;
          }

          MEMORY[0x1DA720250](*&v65);
          sub_1D88E1004(v50, v51, v74);
          sub_1D89388D8(v85, type metadata accessor for RefinementState);
          goto LABEL_5;
        }

        v59 = 2;
LABEL_38:
        MEMORY[0x1DA720210](v59);
        sub_1D8B15A60();
      }

      v22 = v84;
      goto LABEL_41;
    }

    if (EnumCaseMultiPayload != 2)
    {
      MEMORY[0x1DA720210](1);
      sub_1D89388D8(v85, type metadata accessor for RefinementState);
      goto LABEL_5;
    }

    v56 = v72;
    sub_1D8918058(v9, v72, type metadata accessor for BundleClassification);
    MEMORY[0x1DA720210](3);
    BundleClassification.ClassificationType.hash(into:)(v87);
    v57 = v56 + *(v73 + 20);
    if (*v57 != 2)
    {
      v61 = *(v57 + 8);
      v60 = *(v57 + 16);
      v74 = *(v57 + 32);
      v62 = *(v57 + 24);
      sub_1D8B16D40();
      sub_1D8B16D40();
      v63 = v62 >> 6;
      if (v62 >> 6 > 1)
      {
        if (v63 == 2)
        {
          v64 = 3;
          goto LABEL_56;
        }

        MEMORY[0x1DA720210](1);
      }

      else
      {
        if (v63)
        {
          v64 = 2;
        }

        else
        {
          MEMORY[0x1DA720210](0);
          if (v62)
          {
            if (v62 == 1)
            {
              v64 = 6;
              goto LABEL_56;
            }

            v22 = v84;
            if (v61 <= 1)
            {
              if (v61 | v60)
              {
                MEMORY[0x1DA720210](1);
              }

              else
              {
                MEMORY[0x1DA720210](0);
              }
            }

            else if (v61 ^ 2 | v60)
            {
              if (v61 ^ 3 | v60)
              {
                MEMORY[0x1DA720210](4);
              }

              else
              {
                MEMORY[0x1DA720210](3);
              }
            }

            else
            {
              MEMORY[0x1DA720210](2);
            }

LABEL_58:
            if ((v74 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v66 = v74;
            }

            else
            {
              v66 = 0;
            }

            MEMORY[0x1DA720250](v66);
            goto LABEL_62;
          }

          v64 = 5;
        }

LABEL_56:
        MEMORY[0x1DA720210](v64);
        sub_1D8B15A60();
      }

      v22 = v84;
      goto LABEL_58;
    }

    sub_1D8B16D40();
LABEL_62:
    v67 = v72;
    v68 = *(v72 + *(v73 + 24));
    if (v68 == 0.0)
    {
      v68 = 0.0;
    }

    MEMORY[0x1DA720250](*&v68);
    sub_1D89388D8(v85, type metadata accessor for RefinementState);
    sub_1D89388D8(v67, type metadata accessor for BundleClassification);
LABEL_5:
    result = sub_1D8B16D80();
    v28 = result ^ v86;
  }

  if (v71 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v71;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v71)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641D0);
      (*(*(v58 - 8) + 56))(v20, 1, 1, v58);
      v26 = 0;
      v29 = v33;
      goto LABEL_17;
    }

    v26 = *(v82 + 8 * v31);
    ++v29;
    if (v26)
    {
      v29 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D893A2B0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v52 = sub_1D8B13240();
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v43 - v9;
  v11 = *(a2 + 64);
  v43[0] = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v43[1] = v3 + 16;
  v51 = (v3 + 32);
  v46 = v3;
  v47 = a2;
  v48 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v19 = &unk_1D8B23B20;
  v44 = v10;
  v45 = v8;
  while (1)
  {
    v20 = v19;
    v53 = v17;
    if (!v14)
    {
      break;
    }

    v21 = v18;
LABEL_13:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v46;
    v27 = v47;
    v28 = v50;
    v29 = v52;
    (*(v46 + 16))(v50, *(v47 + 48) + *(v46 + 72) * v25, v52);
    v30 = *(*(v27 + 56) + 8 * v25);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8);
    v32 = *(v31 + 48);
    v33 = *(v26 + 32);
    v8 = v45;
    v33(v45, v28, v29);
    *&v8[v32] = v30;
    (*(*(v31 - 8) + 56))(v8, 0, 1, v31);

    v23 = v21;
    v19 = v20;
    v10 = v44;
LABEL_14:
    sub_1D881F6FC(v8, v10, &qword_1ECA641F0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8);
    if ((*(*(v34 - 8) + 48))(v10, 1, v34) == 1)
    {

      return MEMORY[0x1DA720210](v53);
    }

    v35 = *(v34 + 48);
    v36 = v52;
    v37 = v23;
    v38 = v50;
    (*v51)(v50, v10, v52);
    v39 = *&v10[v35];
    v40 = *(v49 + 48);
    v54[2] = *(v49 + 32);
    v54[3] = v40;
    v55 = *(v49 + 64);
    v41 = *(v49 + 16);
    v54[0] = *v49;
    v54[1] = v41;
    sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    (*v48)(v38, v36);
    sub_1D8819F6C(v54, v39);

    result = sub_1D8B16D80();
    v17 = result ^ v53;
    v18 = v37;
  }

  if (v15 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v15;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {
      v19 = v20;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8);
      (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
      v14 = 0;
      goto LABEL_14;
    }

    v14 = *(v43[0] + 8 * v21);
    ++v18;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D893A734(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA720210](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1D8B15A60();

        sub_1D8B15A60();

        result = sub_1D8B16D80();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D893A8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v49 = v45 - v6;
  v7 = type metadata accessor for CVTrackSnapshot(0);
  result = MEMORY[0x1EEE9AC00](v7);
  v51 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v53 = 0;
  v10 = 0;
  v45[0] = *(v11 + 80);
  v54 = MEMORY[0x1E69E7CC0];
  v47 = (v45[0] + 32) & ~v45[0];
  v48 = MEMORY[0x1E69E7CC0] + v47;
  v12 = (v11 + 56);
  v45[1] = v11 + 48;
  v46 = v11;
  v52 = result;
LABEL_4:
  v15 = *(a1 + 16);
  if (v10 != v15)
  {
    if (v10 < v15)
    {
      while (1)
      {
        v16 = *(a1 + 32 + 8 * v10);

        if (v16)
        {
          break;
        }

LABEL_9:
        ++v10;
        v17 = *(a1 + 16);
        if (v10 == v17)
        {
          goto LABEL_38;
        }

        if (v10 >= v17)
        {
          goto LABEL_43;
        }
      }

      v13 = *(v16 + 16);
      if (!v13)
      {
        (*v12)(v5, 1, 1, v7);
        result = sub_1D87A14E4(v5, &qword_1ECA63E20);
        goto LABEL_9;
      }

      v14 = 0;
      ++v10;
      while (1)
      {
        if (v14 >= v13)
        {
          goto LABEL_44;
        }

        v18 = v46;
        v19 = *(v46 + 72);
        v55 = v14;
        v50 = v19;
        sub_1D8917FF0(v16 + v47 + v19 * v14, v5, type metadata accessor for CVTrackSnapshot);
        (*(v18 + 56))(v5, 0, 1, v52);
        v20 = v49;
        sub_1D881F6FC(v5, v49, &qword_1ECA63E20);
        v21 = *(v18 + 48);
        v7 = v52;
        if (v21(v20, 1, v52) == 1)
        {
          goto LABEL_39;
        }

        result = sub_1D8918058(v20, v51, type metadata accessor for CVTrackSnapshot);
        v22 = v54;
        if (!v53)
        {
          break;
        }

        v23 = v48;
        v24 = v53 - 1;
        if (__OFSUB__(v53, 1))
        {
          goto LABEL_45;
        }

LABEL_37:
        v53 = v24;
        ++v55;
        result = sub_1D8918058(v51, v23, type metadata accessor for CVTrackSnapshot);
        v48 = v23 + v50;
        v54 = v22;
        v13 = *(v16 + 16);
        v14 = v55;
        if (v55 == v13)
        {
          (*v12)(v5, 1, 1, v7);
          result = sub_1D87A14E4(v5, &qword_1ECA63E20);
          goto LABEL_4;
        }
      }

      v25 = v54[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0);
      v28 = v47;
      v22 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v22);
      v29 = v50;
      if (!v50)
      {
        goto LABEL_48;
      }

      v30 = result - v28;
      if (result - v28 == 0x8000000000000000 && v50 == -1)
      {
        goto LABEL_49;
      }

      v32 = v28;
      v33 = v30 / v50;
      v22[2] = v27;
      v22[3] = 2 * (v30 / v29);
      v34 = v22 + v32;
      v35 = v54;
      v36 = v54[3] >> 1;
      v37 = v36 * v29;
      if (!v54[2])
      {
LABEL_36:
        v23 = &v34[v37];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v39 = __OFSUB__(v38, 1);
        v24 = v38 - 1;
        if (v39)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (v22 < v54 || v34 >= v54 + v32 + v37)
      {
        v53 = v54[3] >> 1;
        v48 = v37;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v22 == v54)
        {
LABEL_35:
          v35[2] = 0;
          goto LABEL_36;
        }

        v53 = v54[3] >> 1;
        v48 = v37;
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v48;
      v36 = v53;
      v35 = v54;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_38:
  v20 = v49;
  (*v12)(v49, 1, 1, v7);
LABEL_39:
  v41 = v53;
  v40 = v54;

  result = sub_1D87A14E4(v20, &qword_1ECA63E20);
  v42 = v40[3];
  if (v42 < 2)
  {
    return v40;
  }

  v43 = v42 >> 1;
  v39 = __OFSUB__(v43, v41);
  v44 = v43 - v41;
  if (!v39)
  {
    v40[2] = v44;
    return v40;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}