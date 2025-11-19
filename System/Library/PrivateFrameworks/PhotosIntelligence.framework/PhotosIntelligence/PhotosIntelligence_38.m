void sub_1C722FE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = v3;
    v6 = OBJC_IVAR___PNPetPromoter_metrics;
    swift_beginAccess();
    v7 = *(v4 + v6);
    sub_1C75504FC();
    v8 = OUTLINED_FUNCTION_58();
    v10 = sub_1C6FE376C(v8, v9, v7);

    if (v10)
    {
      v11 = [v10 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    v12 = __CFADD__(v11, a3);
    v13 = &v11[a3];
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      swift_beginAccess();
      if (v14)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v4 + v6);
        sub_1C6FC884C();
        *(v4 + v6) = v16;
      }

      else
      {
        OUTLINED_FUNCTION_58();
        sub_1C7236D0C();
      }

      swift_endAccess();
    }
  }
}

void static PetPromoter.status(with:delegate:)()
{
  OUTLINED_FUNCTION_72_13();
  v304 = v1;
  v305 = v2;
  v3 = v0;
  v271 = v4;
  v6 = v5;
  v267 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v269 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v266 = v10 - v9;
  OUTLINED_FUNCTION_99_3();
  sub_1C6F65BE8(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215640);
  OUTLINED_FUNCTION_99_3();
  sub_1C7080178(v13, v14);
  v15 = sub_1C75504DC();
  objc_allocWithZone(PNPromoterPhotoLibrary);
  v16 = v6;
  v17 = sub_1C7232AD8(v16, v15, 1);
  v272 = v16;
  v18 = [v16 librarySpecificFetchOptions];
  v273 = v3;
  v19 = sub_1C72298C0();
  sub_1C7082AAC(v19, v18);
  [v18 setPersonContext_];
  v20 = objc_opt_self();
  v21 = v18;
  v22 = [(SEL *)v20 fetchPersonsWithOptions:v21];
  [v21 setPersonContext_];
  i = [(SEL *)v20 fetchPersonsWithOptions:v21];
  v275 = v21;

  v24 = [v22 fetchedObjects];
  if (!v24)
  {
    sub_1C6FB1814();
    v45 = v44;
    OUTLINED_FUNCTION_38_21();
    if (v36)
    {
      OUTLINED_FUNCTION_2_0(v46);
      sub_1C6FB1814();
      v45 = v244;
    }

    OUTLINED_FUNCTION_3_1();
    *(v45 + 16) = v21;
    OUTLINED_FUNCTION_51_16();
    *(v49 + 32) = v47 + 54;
    *(v49 + 40) = v48;
    v298 = v45;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_59_16();
    OUTLINED_FUNCTION_69_15();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_92_11();

    goto LABEL_12;
  }

  v25 = v24;
  v264 = v22;
  v26 = sub_1C6F65BE8(0, &qword_1EDD100F0);
  v27 = sub_1C7550B5C();

  v28 = [i fetchedObjects];
  if (!v28)
  {

    sub_1C6FB1814();
    v51 = v50;
    OUTLINED_FUNCTION_38_21();
    if (v36)
    {
      OUTLINED_FUNCTION_2_0(v52);
      sub_1C6FB1814();
      v51 = v247;
    }

    OUTLINED_FUNCTION_3_1();
    *(v51 + 16) = v25;
    OUTLINED_FUNCTION_51_16();
    *(v55 + 32) = v53 + 56;
    *(v55 + 40) = v54;
    v298 = v51;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_59_16();
    OUTLINED_FUNCTION_69_15();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_92_11();

LABEL_12:
    goto LABEL_145;
  }

  v29 = v28;
  v254 = v26;
  v30 = sub_1C7550B5C();

  v257 = v27;
  v31 = sub_1C7229928(v27, v17);
  v256 = v30;
  v274 = sub_1C7229928(v30, v17);
  v32 = [objc_allocWithZone(PNPersonClusterManager) initWithPhotoLibrary:v17 detectionType:2 promoterDelegate:v271];
  sub_1C6FB1814();
  v34 = v33;
  OUTLINED_FUNCTION_38_21();
  if (!v36)
  {
    goto LABEL_4;
  }

LABEL_150:
  OUTLINED_FUNCTION_2_0(v35);
  sub_1C6FB1814();
  v34 = v243;
LABEL_4:
  v258 = v20;
  OUTLINED_FUNCTION_3_1();
  *(v34 + 16) = v29;
  OUTLINED_FUNCTION_51_16();
  *(v39 + 32) = v37 + 14;
  *(v39 + 40) = v38;
  v291 = v32;
  if ((v31 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    OUTLINED_FUNCTION_99_3();
    sub_1C6F65BE8(v40, v41);
    OUTLINED_FUNCTION_99_3();
    v32 = v291;
    sub_1C7080178(v42, v43);
    sub_1C7550FEC();
    v29 = v297[0];
    v20 = v297[1];
  }

  else
  {
    v29 = 0;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_31_26();
    v20 = (v56 & v57);
  }

  v292 = 0;
  v280 = 0x80000001C75A5410;
  v263 = "0 merge candidates";
  OUTLINED_FUNCTION_3_1();
  v262 = v58;
  v261 = v274 & 0xC000000000000001;
  v59 = v274 & 0xFFFFFFFFFFFFFF8;
  if (v274 < 0)
  {
    v59 = v274;
  }

  v260 = v59;
  v255 = v274 + 56;
  OUTLINED_FUNCTION_3_1();
  v276 = v60;
  OUTLINED_FUNCTION_3_1();
  v259 = v64;
  v270 = v17;
  v283 = i;
  v282 = v61;
  v281 = v62;
  v279 = v63;
LABEL_17:
  while ((v61 & 0x8000000000000000) == 0)
  {
    v35 = v29;
    v31 = v29;
    if (!v20)
    {
      do
      {
        v31 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_149;
        }

        if (v31 >= v63)
        {
          goto LABEL_82;
        }

        ++v35;
      }

      while (!*(v62 + 8 * v31));
    }

    OUTLINED_FUNCTION_78_0();
    v285 = v66 & v65;
    v68 = OUTLINED_FUNCTION_94_11(v67);
    if (!v68)
    {
      goto LABEL_81;
    }

LABEL_26:
    v294 = 0xD000000000000027;
    v295 = v280;
    v70 = [v68 localIdentifier];
    sub_1C755068C();

    v71 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v71);

    MEMORY[0x1CCA5CD70](2960672, 0xE300000000000000);
    v72 = v294;
    v73 = v295;
    v75 = *(v34 + 16);
    v74 = *(v34 + 24);
    if (v75 >= v74 >> 1)
    {
      OUTLINED_FUNCTION_2_0(v74);
      sub_1C6FB1814();
      v34 = v140;
    }

    i = MEMORY[0x1E69E7CA0];
    *(v34 + 16) = v75 + 1;
    v76 = v34 + 16 * v75;
    *(v76 + 32) = v72;
    *(v76 + 40) = v73;
    v32 = v291;
    v20 = &selRef_clsSceneClassifications;
    v77 = [objc_msgSend(v291 pn:v68) fetchFacesForPerson:sel_fetchedObjects];
    OUTLINED_FUNCTION_24_2();
    swift_unknownObjectRelease();
    sub_1C7550B5C();

    sub_1C71BC2E0();
    OUTLINED_FUNCTION_24_2();

    v290 = v72;
    if (v72)
    {
      v78 = [objc_msgSend(v32 pn:v68) fetchCandidatePersonsForPerson:sel_fetchedObjects];
      OUTLINED_FUNCTION_24_2();
      swift_unknownObjectRelease();
      i = sub_1C7550B5C();

      v29 = sub_1C71BC2B8();

      if (v29)
      {
        v294 = 9;
        v295 = 0xE100000000000000;
        v79 = sub_1C6FB6304();
        OUTLINED_FUNCTION_23_30(v79);
        v80 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v80);

        MEMORY[0x1CCA5CD70](0x202C736563616620, 0xE800000000000000);
        v81 = sub_1C6FB6304();
        OUTLINED_FUNCTION_23_30(v81);
        v82 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v82);

        OUTLINED_FUNCTION_22_38();
        v83 = v294;
        v84 = v295;
        v17 = *(v34 + 16);
        v85 = *(v34 + 24);
        v268 = v31;
        if (v17 >= v85 >> 1)
        {
          OUTLINED_FUNCTION_15_2(v85);
          sub_1C6FB1814();
          v34 = v141;
        }

        *(v34 + 16) = v17 + 1;
        v86 = v34 + 16 * v17;
        *(v86 + 32) = v83;
        *(v86 + 40) = v84;
        v296 = v34;
        v87 = sub_1C6FB6304();
        for (i = 0; ; ++i)
        {
          if (v87 == i)
          {

            v32 = v296;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v32 = v142;
            }

            v90 = v68;
            v91 = v32[2];
            OUTLINED_FUNCTION_38_21();
            if (v36)
            {
              OUTLINED_FUNCTION_2_0(v92);
              sub_1C6FB1814();
              v32 = v143;
            }

            v32[2] = v29;
            v93 = &v32[2 * v91];
            v94 = v262;
            v93[4] = 0xD0000000000000D7;
            v93[5] = v94;
            v296 = v32;
            if (v261)
            {
              sub_1C75504FC();
              sub_1C755165C();
              sub_1C6F65BE8(0, &unk_1EDD0CE60);
              sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60);
              sub_1C7550FEC();
              v96 = v298;
              v95 = v299;
              v97 = v300;
              v29 = v301;
              i = v302;
            }

            else
            {
              v96 = v274;
              v104 = -1 << *(v274 + 32);
              v97 = ~v104;
              v105 = -v104;
              if (v105 < 64)
              {
                v106 = ~(-1 << v105);
              }

              else
              {
                v106 = -1;
              }

              i = v106 & *(v274 + 56);
              sub_1C75504FC();
              v29 = 0;
              v95 = v255;
            }

            v265 = v97;
            v17 = (v97 + 64) >> 6;
            v286 = v96;
            v287 = v95;
            v278 = v17;
            v277 = v68;
            if ((v96 & 0x8000000000000000) == 0)
            {
LABEL_58:
              v35 = v29;
              v31 = v29;
              if (i)
              {
LABEL_62:
                OUTLINED_FUNCTION_78_0();
                v109 = (v108 & v107);
                v111 = OUTLINED_FUNCTION_94_11(v110);
                if (v111)
                {
                  goto LABEL_66;
                }

LABEL_78:
                v90 = v68;
                OUTLINED_FUNCTION_75_9();
LABEL_79:
                sub_1C6F61E88();

                v29 = v268;
                v20 = v285;
                v17 = v270;
                i = v283;
                v61 = OUTLINED_FUNCTION_29_25();
                v63 = v279;
                v34 = v32;
                v32 = v291;
                goto LABEL_17;
              }

              while (1)
              {
                v31 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_148;
                }

                if (v31 >= v17)
                {
                  goto LABEL_79;
                }

                ++v35;
                if (*&v95[8 * v31])
                {
                  goto LABEL_62;
                }
              }
            }

            while (1)
            {
              v112 = sub_1C75516FC();
              if (!v112)
              {
                goto LABEL_79;
              }

              v293 = v112;
              sub_1C6F65BE8(0, &unk_1EDD0CE60);
              OUTLINED_FUNCTION_93_11();
              v111 = v294;
              v31 = v29;
              v109 = i;
              if (!v294)
              {
                goto LABEL_78;
              }

LABEL_66:
              v113 = v32;
              v289 = objc_autoreleasePoolPush();
              v114 = v291;
              v115 = [v291 numberOfMomentsInCommonBetweenPerson:v68 andPerson:v111];
              if (v115)
              {
                v116 = v115;
                v288 = v109;
                v117 = [objc_msgSend(v114 pn:v111) fetchFacesForPerson:v20[230]];
                OUTLINED_FUNCTION_50_19();
                swift_unknownObjectRelease();
                sub_1C7550B5C();

                sub_1C71BC2E0();
                OUTLINED_FUNCTION_50_19();

                if (!v32)
                {
                  OUTLINED_FUNCTION_33_22();
                  if (v36)
                  {
                    OUTLINED_FUNCTION_2_0(v133);
                    sub_1C6FB1814();
                    v113 = v139;
                  }

                  OUTLINED_FUNCTION_28_23();
                  v135 = v134 + 13;
                  v136 = v276;
                  *(v137 + 32) = v135;
                  *(v137 + 40) = v136;
                  v32 = v113;
                  v296 = v113;
                  v109 = v288;
                  goto LABEL_75;
                }

                v294 = 0;
                v295 = 0xE000000000000000;
                sub_1C755180C();
                OUTLINED_FUNCTION_67_13();
                MEMORY[0x1CCA5CD70](2313, 0xE200000000000000);
                v118 = [v111 localIdentifier];
                v119 = v114;
                v120 = sub_1C755068C();
                v284 = v32;
                v122 = v121;

                MEMORY[0x1CCA5CD70](v120, v122);

                MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
                v293 = v116;
                v123 = sub_1C7551D8C();
                MEMORY[0x1CCA5CD70](v123);

                OUTLINED_FUNCTION_30_17();
                OUTLINED_FUNCTION_23_30([v119 numberOfAssetsInCommonBetweenPerson:v68 andPerson:v111]);
                OUTLINED_FUNCTION_216();
                v124 = sub_1C7551D8C();
                MEMORY[0x1CCA5CD70](v124);

                OUTLINED_FUNCTION_30_17();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2196B0);
                sub_1C7550B3C();
                OUTLINED_FUNCTION_65_17();
                v125 = sub_1C7550B3C();
                [v119 animalprintBasedDistanceBetweenPetFaces:&v294 andPetFaces:v125];

                sub_1C7550F6C();
                OUTLINED_FUNCTION_30_17();
                sub_1C7550B3C();
                OUTLINED_FUNCTION_65_17();
                v126 = sub_1C7550B3C();

                [v119 distanceBetweenPetFaces:&v294 andPetFaces:v126];

                sub_1C7550F6C();
                OUTLINED_FUNCTION_30_17();
                v113 = v284;
                [v119 momentBasedDistanceBetweenPet:v277 andPet:v111];
                sub_1C7550F6C();
                v127 = v294;
                v128 = v295;
                v130 = *(v113 + 16);
                v129 = *(v113 + 24);
                if (v130 >= v129 >> 1)
                {
                  OUTLINED_FUNCTION_2_0(v129);
                  sub_1C6FB1814();
                  v113 = v138;
                }

                v17 = v278;
                *(v113 + 16) = v130 + 1;
                v131 = v113 + 16 * v130;
                *(v131 + 32) = v127;
                *(v131 + 40) = v128;
                v32 = v113;
                v296 = v113;
                v20 = &selRef_clsSceneClassifications;
                v109 = v288;
              }

              v132 = v289;
LABEL_75:
              objc_autoreleasePoolPop(v132);

              v29 = v31;
              i = v109;
              v90 = v68;
              OUTLINED_FUNCTION_75_9();
              v95 = v287;
              if ((v113 & 0x8000000000000000) == 0)
              {
                goto LABEL_58;
              }
            }
          }

          v32 = v291;
          if ((v29 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1CCA5DDD0](i, v29);
          }

          else
          {
            v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (i >= v35)
            {
              goto LABEL_147;
            }

            v17 = *(v29 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if (__OFADD__(i, 1))
          {
            break;
          }

          v31 = objc_autoreleasePoolPush();
          v88 = v32;
          v89 = v292;
          sub_1C7231E50(v17, &v296, v88, v68);
          v292 = v89;
          objc_autoreleasePoolPop(v31);
          swift_unknownObjectRelease();
        }

        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_33_22();
      if (v36)
      {
        OUTLINED_FUNCTION_2_0(v102);
        sub_1C6FB1814();
        v34 = v145;
      }

      OUTLINED_FUNCTION_88_8();
      OUTLINED_FUNCTION_28_23();
      *(v99 + 32) = v103 + 1;
      v101 = &v291;
    }

    else
    {
      OUTLINED_FUNCTION_33_22();
      if (v36)
      {
        OUTLINED_FUNCTION_2_0(v98);
        sub_1C6FB1814();
        v34 = v144;
      }

      OUTLINED_FUNCTION_88_8();
      OUTLINED_FUNCTION_28_23();
      *(v99 + 32) = v100 + 13;
      v101 = &v303;
    }

    *(v99 + 40) = *(v101 - 32);
    v29 = v31;
    v61 = OUTLINED_FUNCTION_29_25();
    v63 = v279;
  }

  v69 = sub_1C75516FC();
  if (v69)
  {
    v293 = v69;
    sub_1C6F65BE8(0, &unk_1EDD0CE60);
    OUTLINED_FUNCTION_93_11();
    v68 = v294;
    v31 = v29;
    v285 = v20;
    if (v294)
    {
      goto LABEL_26;
    }
  }

LABEL_81:
  OUTLINED_FUNCTION_29_25();
LABEL_82:
  sub_1C6F61E88();

  v146 = *(v34 + 16);
  OUTLINED_FUNCTION_64_13();
  if (!(!v148 & v36))
  {
    OUTLINED_FUNCTION_2_0(v147);
    sub_1C6FB1814();
    v34 = v245;
  }

  *(v34 + 16) = v29;
  OUTLINED_FUNCTION_63_15();
  if (v150 != v151)
  {
    OUTLINED_FUNCTION_15_2(v149);
    sub_1C6FB1814();
    v34 = v246;
  }

  OUTLINED_FUNCTION_3_1();
  *(v34 + 16) = v146;
  OUTLINED_FUNCTION_51_16();
  *(v154 + 32) = v152 + 61;
  *(v154 + 40) = v153;
  v155 = [v272 librarySpecificFetchOptions];
  type metadata accessor for PetPromoter();
  v156 = sub_1C72298C0();
  v157 = sub_1C722C934();
  v294 = v156;
  sub_1C6FD3574(v157);
  sub_1C7082AAC(v294, v155);
  [v155 setPersonContext_];
  v284 = v155;
  v158 = [(SEL *)v258 fetchPersonsWithOptions:v155];
  v159 = [v158 fetchedObjects];

  if (!v159)
  {
    OUTLINED_FUNCTION_81_12();

    OUTLINED_FUNCTION_33_22();
    if (!v36)
    {
LABEL_102:
      OUTLINED_FUNCTION_3_1();
      *(v34 + 16) = v159;
      OUTLINED_FUNCTION_51_16();
      *(v180 + 32) = v178 + 48;
      *(v180 + 40) = v179;
      v294 = v34;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      OUTLINED_FUNCTION_59_16();
      OUTLINED_FUNCTION_69_15();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_92_11();

      goto LABEL_145;
    }

LABEL_154:
    OUTLINED_FUNCTION_2_0(v163);
    sub_1C6FB1814();
    v34 = v253;
    goto LABEL_102;
  }

  v160 = sub_1C7550B5C();

  v161 = sub_1C75504FC();
  v294 = sub_1C71CC970(v161);
  v32 = v292;
  sub_1C72329B8(&v294);
  if (v32)
  {

    __break(1u);
    return;
  }

  v292 = v294;
  v162 = sub_1C6FB6304();
  v163 = " detectionType = ";
  v286 = v160;
  if (!v162)
  {
    v164 = v34;
    goto LABEL_104;
  }

  v159 = v162;
  if (v162 < 1)
  {
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v164 = v34;
  v165 = 0;
  v289 = "\tPerson localIdentifier = ";
  v290 = "om PHFetchResult!";
  OUTLINED_FUNCTION_45_20(" detectionType = ");
  do
  {
    if (v287)
    {
      v166 = MEMORY[0x1CCA5DDD0](v165, v292);
    }

    else
    {
      v166 = *(v292 + 8 * v165 + 32);
    }

    v167 = v166;
    v294 = 0;
    v295 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_67_13();
    MEMORY[0x1CCA5CD70](0xD00000000000001BLL, v290 | 0x8000000000000000);
    v168 = [v167 localIdentifier];
    sub_1C755068C();

    OUTLINED_FUNCTION_70_14();

    OUTLINED_FUNCTION_17_44();
    v169 = sub_1C72372BC(v167);
    if (v170)
    {
      v171 = v170;
    }

    else
    {
      v169 = 0;
      v171 = 0xE000000000000000;
    }

    MEMORY[0x1CCA5CD70](v169, v171);

    OUTLINED_FUNCTION_89_10();
    OUTLINED_FUNCTION_23_30([v167 verifiedType]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_22_38();
    LOWORD(v293) = [v167 detectionType];
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_11_43();
    OUTLINED_FUNCTION_23_30([v167 faceCount]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    MEMORY[0x1CCA5CD70](0x4F6C61756E616D20, 0xEF203D2072656472);
    OUTLINED_FUNCTION_23_30([v167 manualOrder]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    v172 = v294;
    v173 = v295;
    v175 = *(v164 + 16);
    v174 = *(v164 + 24);
    if (v175 >= v174 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v174);
      sub_1C6FB1814();
      v164 = v177;
    }

    ++v165;

    *(v164 + 16) = v175 + 1;
    v176 = v164 + 16 * v175;
    *(v176 + 32) = v172;
    *(v176 + 40) = v173;
  }

  while (v159 != v165);
LABEL_104:

  v181 = v164;
  v182 = *(v164 + 16);
  OUTLINED_FUNCTION_64_13();
  if (!(!v148 & v36))
  {
    OUTLINED_FUNCTION_2_0(v183);
    sub_1C6FB1814();
    v181 = v248;
  }

  v32 = v270;
  v184 = v269;
  OUTLINED_FUNCTION_56_16();
  OUTLINED_FUNCTION_63_15();
  if (v150 != v151)
  {
    OUTLINED_FUNCTION_15_2(v185);
    sub_1C6FB1814();
    v181 = v249;
  }

  OUTLINED_FUNCTION_3_1();
  *(v181 + 16) = v182;
  OUTLINED_FUNCTION_51_16();
  *(v188 + 32) = v186 + 81;
  *(v188 + 40) = v187;
  v189 = v271;
  v17 = sub_1C722D4E8(v286, v32, v271, CGRectMake, 0);

  v159 = v266;
  sub_1C754FF0C();
  v191 = static PetPromoter.calculateOrderOfPetsWithinPeopleAndPetsHome(in:pnPhotoLibrary:clusterManager:delegate:logger:persistOrder:updateBlock:)(v272, v32, v190, v189, v159, 0, CGRectMake, 0);
  v193 = *(v184 + 8);
  i = v184 + 8;
  v192 = v193;
  v193(v159, v267);
  v292 = v191;
  v194 = sub_1C6FB6304();
  if (!v194)
  {

    goto LABEL_124;
  }

  v282 = v192;
  v163 = v297;
  v269 = i;
  if (v194 < 1)
  {
    goto LABEL_152;
  }

  v195 = v181;
  v159 = 0;
  v289 = "\tPerson localIdentifier = ";
  v290 = "om PHFetchResult!";
  v288 = " verifiedType = ";
  v287 = "interestingScore:\n";
  v286 = v292 & 0xC000000000000001;
  v285 = v17;
  do
  {
    v196 = v194;
    if (v286)
    {
      v197 = MEMORY[0x1CCA5DDD0](v159, v292);
    }

    else
    {
      v197 = *(v292 + 8 * v159 + 32);
    }

    v198 = v197;
    v294 = 0;
    v295 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_67_13();
    MEMORY[0x1CCA5CD70](0xD00000000000001BLL, v290 | 0x8000000000000000);
    v199 = [v198 localIdentifier];
    sub_1C755068C();

    OUTLINED_FUNCTION_70_14();

    OUTLINED_FUNCTION_17_44();
    v200 = sub_1C72372BC(v198);
    if (v201)
    {
      v202 = v201;
    }

    else
    {
      v200 = 0;
      v202 = 0xE000000000000000;
    }

    MEMORY[0x1CCA5CD70](v200, v202);

    OUTLINED_FUNCTION_89_10();
    OUTLINED_FUNCTION_23_30([v198 verifiedType]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_22_38();
    LOWORD(v293) = [v198 detectionType];
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_11_43();
    OUTLINED_FUNCTION_23_30([v198 faceCount]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    MEMORY[0x1CCA5CD70](0xD000000000000014, v287 | 0x8000000000000000);
    v203 = [v198 localIdentifier];
    v204 = sub_1C755068C();
    v206 = v205;

    if (*(v285 + 16))
    {
      sub_1C6F78124(v204, v206);
    }

    sub_1C7550F5C();
    v207 = v294;
    v208 = v295;
    v210 = *(v195 + 16);
    v209 = *(v195 + 24);
    if (v210 >= v209 >> 1)
    {
      OUTLINED_FUNCTION_15(v209);
      sub_1C6FB1814();
      v195 = v212;
    }

    ++v159;

    *(v195 + 16) = v210 + 1;
    v211 = v195 + 16 * v210;
    *(v211 + 32) = v207;
    *(v211 + 40) = v208;
    v194 = v196;
  }

  while (v196 != v159);

  v181 = v195;
  v192 = v282;
LABEL_124:

  v213 = *(v181 + 16);
  OUTLINED_FUNCTION_64_13();
  if (!(!v148 & v36))
  {
    OUTLINED_FUNCTION_2_0(v214);
    sub_1C6FB1814();
    v181 = v250;
  }

  OUTLINED_FUNCTION_56_16();
  OUTLINED_FUNCTION_63_15();
  if (v150 != v151)
  {
    OUTLINED_FUNCTION_15_2(v215);
    sub_1C6FB1814();
    v181 = v251;
  }

  OUTLINED_FUNCTION_3_1();
  *(v181 + 16) = v213;
  v216 = v181 + 16 * v159;
  *(v216 + 32) = 0xD00000000000004ALL;
  *(v216 + 40) = v217;
  v294 = v256;
  sub_1C6FD35B4(v257);
  v218 = v294;
  v219 = v266;
  sub_1C754FF0C();
  v220 = sub_1C722A140(v218, v272, 10, MEMORY[0x1E69E7CD0], v219);
  v192(v219, v267);
  v294 = 0;
  v295 = 0xE000000000000000;
  sub_1C755180C();
  OUTLINED_FUNCTION_67_13();
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A5390);
  v292 = v220;
  v293 = sub_1C6FB6304();
  i = MEMORY[0x1E69E6590];
  OUTLINED_FUNCTION_49_3();
  v221 = sub_1C7551D8C();
  v17 = v222;
  MEMORY[0x1CCA5CD70](v221);

  MEMORY[0x1CCA5CD70](2109216, 0xE300000000000000);
  sub_1C6FB6304();
  OUTLINED_FUNCTION_24_2();

  v293 = &v294;
  OUTLINED_FUNCTION_49_3();
  v223 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v223);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75A53B0);
  v224 = v294;
  v32 = v295;
  v226 = *(v181 + 16);
  v225 = *(v181 + 24);
  if (v226 >= v225 >> 1)
  {
    OUTLINED_FUNCTION_2_0(v225);
    sub_1C6FB1814();
    v181 = v252;
  }

  *(v181 + 16) = v226 + 1;
  v227 = v181 + 16 * v226;
  *(v227 + 32) = v224;
  *(v227 + 40) = v32;
  v228 = sub_1C6FB6304();
  if (!v228)
  {
    v229 = v181;
    goto LABEL_144;
  }

  v159 = v228;
  if (v228 < 1)
  {
    goto LABEL_153;
  }

  v229 = v181;
  v230 = 0;
  v289 = "\tPet localIdentifier = ";
  v290 = " pets will get promoted.";
  OUTLINED_FUNCTION_45_20(" detectionType = ");
  do
  {
    if (v287)
    {
      v231 = MEMORY[0x1CCA5DDD0](v230, v292);
    }

    else
    {
      v231 = *(v292 + 8 * v230 + 32);
    }

    v232 = v231;
    v294 = 0;
    v295 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_67_13();
    MEMORY[0x1CCA5CD70](0xD000000000000018, v290 | 0x8000000000000000);
    v233 = [v232 localIdentifier];
    sub_1C755068C();

    OUTLINED_FUNCTION_70_14();

    OUTLINED_FUNCTION_17_44();
    v234 = sub_1C72372BC(v232);
    if (v235)
    {
      v236 = v235;
    }

    else
    {
      v234 = 0;
      v236 = 0xE000000000000000;
    }

    MEMORY[0x1CCA5CD70](v234, v236);

    MEMORY[0x1CCA5CD70](0xD000000000000019, v289 | 0x8000000000000000);
    OUTLINED_FUNCTION_23_30([v232 verifiedType]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_22_38();
    LOWORD(v293) = [v232 detectionType];
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_11_43();
    OUTLINED_FUNCTION_23_30([v232 faceCount]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    v237 = v294;
    v238 = v295;
    v240 = *(v229 + 16);
    v239 = *(v229 + 24);
    if (v240 >= v239 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v239);
      sub_1C6FB1814();
      v229 = v242;
    }

    ++v230;

    *(v229 + 16) = v240 + 1;
    v241 = v229 + 16 * v240;
    *(v241 + 32) = v237;
    *(v241 + 40) = v238;
  }

  while (v159 != v230);
LABEL_144:

  v294 = v229;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_69_15();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_92_11();

LABEL_145:
  OUTLINED_FUNCTION_73_13();
}

void sub_1C7231E50(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v45 = a4;
    swift_unknownObjectRetain();
    v10 = [objc_msgSend(a3 pn:v9) fetchFacesForPerson:sel_fetchedObjects];
    swift_unknownObjectRelease();
    sub_1C7550B5C();

    v11 = sub_1C71BC2E0();

    if (v11)
    {
      v12 = [objc_msgSend(a3 pn:v9) fetchMomentsForPerson:sel_fetchedObjects];
      swift_unknownObjectRelease();
      sub_1C7550B5C();

      sub_1C755180C();

      v13 = [a1 localIdentifier];
      v14 = sub_1C755068C();
      v16 = v15;

      MEMORY[0x1CCA5CD70](v14, v16);

      MEMORY[0x1CCA5CD70](0x2068746977202CLL, 0xE700000000000000);
      sub_1C6FB6304();
      v17 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v17);

      MEMORY[0x1CCA5CD70](0x6120736563616620, 0xEB0000000020646ELL);

      v18 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v18);

      MEMORY[0x1CCA5CD70](0x73746E656D6F6D20, 0xE800000000000000);
      sub_1C6FB0600();
      v19 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v20 = *a2;
      *(v20 + 16) = v19 + 1;
      v21 = v20 + 16 * v19;
      *(v21 + 32) = 0xD000000000000012;
      *(v21 + 40) = 0x80000001C75A5830;
      sub_1C755180C();

      [a3 numberOfMomentsInCommonBetweenPerson:v45 andPerson:v9];
      v22 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v22);

      MEMORY[0x1CCA5CD70](0x73746E656D6F6D20, 0xE800000000000000);
      sub_1C6FB0600();
      v23 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v24 = *a2;
      *(v24 + 16) = v23 + 1;
      v25 = v24 + 16 * v23;
      *(v25 + 32) = 0xD000000000000012;
      *(v25 + 40) = 0x80000001C75A5850;
      sub_1C755180C();

      [a3 numberOfAssetsInCommonBetweenPerson:v45 andPerson:v9];
      v26 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v26);

      MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
      sub_1C6FB0600();
      v27 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v28 = *a2;
      *(v28 + 16) = v27 + 1;
      v29 = v28 + 16 * v27;
      *(v29 + 32) = 0xD000000000000011;
      *(v29 + 40) = 0x80000001C75A5870;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000003DLL, 0x80000001C75A5890);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2196B0);
      v30 = sub_1C7550B3C();
      v31 = sub_1C7550B3C();
      [a3 animalprintBasedDistanceBetweenPetFaces:v30 andPetFaces:v31];

      sub_1C7550F6C();
      sub_1C6FB0600();
      v32 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v33 = *a2;
      *(v33 + 16) = v32 + 1;
      v34 = v33 + 16 * v32;
      *(v34 + 32) = 0;
      *(v34 + 40) = 0xE000000000000000;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000002CLL, 0x80000001C75A58D0);
      v35 = sub_1C7550B3C();
      v36 = sub_1C7550B3C();

      [a3 distanceBetweenPetFaces:v35 andPetFaces:v36];

      sub_1C7550F6C();
      sub_1C6FB0600();
      v37 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v38 = *a2;
      *(v38 + 16) = v37 + 1;
      v39 = v38 + 16 * v37;
      *(v39 + 32) = 0;
      *(v39 + 40) = 0xE000000000000000;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000004ALL, 0x80000001C75A5900);
      [a3 momentBasedDistanceBetweenPet:v45 andPet:v9];
      sub_1C7550F6C();
      v41 = 0;
      v40 = 0xE000000000000000;
      sub_1C6FB0600();
      v42 = *(*a2 + 16);
      sub_1C6FB0EFC();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0x80000001C75A5800;
      sub_1C6FB0600();
      v42 = *(*a2 + 16);
      sub_1C6FB0EFC();
      swift_unknownObjectRelease();
      v41 = 0xD000000000000025;
    }
  }

  else
  {
    v40 = 0x80000001C75A57B0;
    sub_1C6FB0600();
    v42 = *(*a2 + 16);
    sub_1C6FB0EFC();
    v41 = 0xD00000000000004CLL;
  }

  v43 = *a2;
  *(v43 + 16) = v42 + 1;
  v44 = v43 + 16 * v42;
  *(v44 + 32) = v41;
  *(v44 + 40) = v40;
}

void sub_1C7232664(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a3;
  v4 = objc_allocWithZone(type metadata accessor for PetPromoter());
  v5 = PetPromoter.init(with:delegate:)(a1, 0);
  sub_1C7227714();
}

void static PetPromoter.promoteUnverifiedPets(in:with:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for PetPromoter());
  v3 = PetPromoter.init(with:delegate:)(a1, 0);
  sub_1C7227714();
}

id PetPromoter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PetPromoter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PetPromoter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C723291C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A2C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C75504FC();
  sub_1C7232C58(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C72329B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C7232EBC(v6);
  return sub_1C755193C();
}

uint64_t sub_1C7232A34(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1C7423D10();
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C75504FC();
  sub_1C7232D90(v8, a2);
  sub_1C755193C();
  return swift_bridgeObjectRelease_n();
}

id sub_1C7232AD8(void *a1, uint64_t a2, char a3)
{
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215640);
  sub_1C7080178(&qword_1EDD0CD00, &qword_1EDD108E0);
  v6 = sub_1C755048C();

  v7 = [v3 initWithPhotoLibrary:a1 rawClusters:v6 includesPets:a3 & 1];

  return v7;
}

id sub_1C7232BB4(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  v6 = sub_1C755048C();

  v7 = [v3 initWithPersonClusterManager:a1 andInvalidCandidatesMapping:v6 profile:a3];

  return v7;
}

uint64_t sub_1C7232C58(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1C75504FC();
      sub_1C7233590(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1C7232F9C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C7232D90(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1C7551D7C();
  if (result < v5)
  {
    v7 = result;
    v8 = sub_1C739D588(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_1C75504FC();
    result = sub_1C7234018(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1C7233224(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1C7232EBC(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D588(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C7234AA4(v8, v9, a1, v5);
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
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C72334A0(0, v3, 1, a1);
  }
}

void sub_1C7232F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  if (a3 != a2)
  {
    v29 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = a1 - a3;
    while (2)
    {
      v25 = v6;
      v26 = a3;
      v8 = (v29 + 16 * a3);
      v10 = *v8;
      v9 = v8[1];
      v24 = v7;
      while (*(v5 + 16))
      {
        v11 = *(v6 - 2);
        v12 = *(v6 - 1);
        sub_1C75504FC();
        sub_1C75504FC();
        v13 = sub_1C6F78124(v10, v9);
        if ((v14 & 1) == 0)
        {

          break;
        }

        if (*(v5 + 16))
        {
          v30 = *(*(v5 + 56) + 8 * v13);
          v15 = sub_1C6F78124(v11, v12);
          if (v16)
          {
            v17 = *(*(v5 + 56) + 8 * v15);
            v28 = [v30 integerValue];
            if (v28 == [v17 integerValue])
            {
              if (v10 == v11 && v9 == v12)
              {

                v5 = a5;
                break;
              }

              v19 = sub_1C7551DBC();

              v5 = a5;
              if ((v19 & 1) == 0)
              {
                break;
              }
            }

            else
            {
              v20 = [v30 integerValue];
              v21 = [v17 integerValue];

              v5 = a5;
              if (v21 >= v20)
              {
                break;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }

        if (!v29)
        {
          __break(1u);
          return;
        }

        v10 = *v6;
        v9 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v9;
        *(v6 - 2) = v10;
        v6 -= 2;
        if (__CFADD__(v7++, 1))
        {
          break;
        }
      }

      a3 = v26 + 1;
      v6 = v25 + 2;
      v7 = v24 - 1;
      if (v26 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C7233224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
    goto LABEL_31;
  }

  v6 = *a4;
  v7 = *a4 + 8 * a3 - 8;
  v8 = a1 - a3;
  while (2)
  {
    v43 = a3;
    v9 = *(v6 + 8 * a3);
    v41 = v8;
    v42 = v7;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      v13 = [v11 localIdentifier];
      v14 = sub_1C755068C();
      v16 = v15;

      v17 = 0.0;
      if (*(a5 + 16))
      {
        v18 = sub_1C6F78124(v14, v16);
        if (v19)
        {
          v17 = *(*(a5 + 56) + 8 * v18);
        }
      }

      v20 = [v12 localIdentifier];
      v21 = sub_1C755068C();
      v23 = v22;

      if (!*(a5 + 16))
      {
        break;
      }

      v24 = sub_1C6F78124(v21, v23);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = *(*(a5 + 56) + 8 * v24);

      if (v17 == v26)
      {
        goto LABEL_12;
      }

LABEL_24:

      if (v26 >= v17)
      {
        goto LABEL_30;
      }

LABEL_25:
      if (!v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v38 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v38;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_30;
      }
    }

    if (v17 != 0.0)
    {
      v26 = 0.0;
      goto LABEL_24;
    }

LABEL_12:
    v27 = [v11 faceCount];
    v28 = [v12 faceCount];
    if (v27 != v28)
    {
      v37 = v28;

      if (v37 >= v27)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v29 = sub_1C70CAC04(v11);
    if (!v30)
    {
      goto LABEL_34;
    }

    v31 = v29;
    v32 = v30;
    v33 = sub_1C70CAC04(v12);
    if (!v34)
    {
      goto LABEL_33;
    }

    if (v31 != v33 || v32 != v34)
    {
      v36 = sub_1C7551DBC();

      if ((v36 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

LABEL_30:
    a3 = v43 + 1;
    v7 = v42 + 8;
    v8 = v41 - 1;
    if (v43 + 1 != a2)
    {
      continue;
    }

    break;
  }

LABEL_31:
}

void sub_1C72334A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v17 = v7;
      v18 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = [v10 manualOrder];
        v13 = [v11 manualOrder];

        if (v12 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v14 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v14;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v18 + 8;
      v7 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C7233590(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_128:
    v141 = *a1;
    if (!*a1)
    {
      goto LABEL_172;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_130;
    }

    goto LABEL_166;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
      goto LABEL_40;
    }

    v10 = *a3;
    v11 = (*a3 + 16 * v9);
    v12 = v11[1];
    v146[0] = *v11;
    v146[1] = v12;
    v13 = (v10 + 16 * v7);
    v14 = v13[1];
    v145[0] = *v13;
    v145[1] = v14;
    sub_1C75504FC();
    sub_1C75504FC();
    LODWORD(v147) = sub_1C722CBF0(v146, v145, v5);
    if (v143)
    {
      swift_bridgeObjectRelease_n();

LABEL_126:
    }

    v126 = v8;

    v15 = v7;
    v16 = v7 + 2;
    v123 = v15;
    v17 = 16 * v15;
    v18 = v13 + 5;
    v138 = v6;
    while (v16 < v6)
    {
      ++v9;
      if (!*(a5 + 16))
      {
        goto LABEL_18;
      }

      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = *(v18 - 3);
      v22 = *(v18 - 2);
      sub_1C75504FC();
      sub_1C75504FC();
      v23 = sub_1C6F78124(v19, v20);
      if ((v24 & 1) == 0)
      {

        v6 = v138;
LABEL_18:
        if (v147)
        {
          v6 = v16;
          v5 = a5;
          v7 = v123;
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      if (!*(a5 + 16))
      {

        goto LABEL_22;
      }

      v141 = *(*(a5 + 56) + 8 * v23);
      v25 = sub_1C6F78124(v21, v22);
      if ((v26 & 1) == 0)
      {

LABEL_22:
        v6 = v138;
        if ((v147 & 1) == 0)
        {
          v6 = v16;
          v5 = a5;
          v8 = v126;
          v7 = v123;
          goto LABEL_40;
        }

        goto LABEL_23;
      }

      v136 = v9;
      v27 = *(*(a5 + 56) + 8 * v25);
      v132 = [v141 integerValue];
      if (v132 == [v27 integerValue])
      {
        v133 = v27;
        if (v19 == v21 && v20 == v22)
        {
          v29 = 0;
        }

        else
        {
          v29 = sub_1C7551DBC();
        }

        v9 = v136;

        v6 = v138;
        if ((v147 ^ v29))
        {
          v6 = v136;
          break;
        }
      }

      else
      {
        v134 = [v141 integerValue];
        v30 = [v27 integerValue];

        v9 = v136;
        v6 = v138;
        if ((v147 & 1) == v30 >= v134)
        {
          v6 = v16;
          break;
        }
      }

LABEL_23:
      ++v16;
      v18 += 2;
    }

    v5 = a5;
    v7 = v123;
    if ((v147 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (v6 < v7)
    {
      goto LABEL_163;
    }

    if (v7 < v6)
    {
      v31 = 0;
      v32 = 16 * v6;
      v33 = v7;
      do
      {
        if (v33 != v6 + v31 - 1)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_170;
          }

          v35 = (v34 + v17);
          v36 = v34 + v32;
          v37 = *v35;
          v38 = v35[1];
          *v35 = *(v36 - 16);
          *(v36 - 16) = v37;
          *(v36 - 8) = v38;
        }

        ++v33;
        --v31;
        v32 -= 16;
        v17 += 16;
      }

      while (v33 < v6 + v31);
    }

LABEL_39:
    v8 = v126;
LABEL_40:
    v39 = a3[1];
    if (v6 < v39)
    {
      if (__OFSUB__(v6, v7))
      {
        goto LABEL_162;
      }

      if (v6 - v7 < a4)
      {
        break;
      }
    }

LABEL_73:
    if (v6 < v7)
    {
      goto LABEL_161;
    }

    v130 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v8 = v108;
    }

    v61 = *(v8 + 2);
    v62 = v61 + 1;
    if (v61 >= *(v8 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v8 = v109;
    }

    *(v8 + 2) = v62;
    v63 = (v8 + 32);
    v64 = &v8[16 * v61 + 32];
    *v64 = v7;
    *(v64 + 1) = v130;
    v147 = *a1;
    if (!v147)
    {
      goto LABEL_171;
    }

    if (v61)
    {
      v141 = (v8 + 32);
      while (1)
      {
        v65 = v62 - 1;
        v66 = &v63[2 * v62 - 2];
        v67 = &v8[16 * v62];
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v68 = *(v8 + 4);
          v69 = *(v8 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_94:
          if (v71)
          {
            goto LABEL_148;
          }

          v83 = *v67;
          v82 = *(v67 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_151;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_156;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v65 = v62 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v62 < 2)
        {
          goto LABEL_150;
        }

        v90 = *v67;
        v89 = *(v67 + 1);
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_109:
        if (v86)
        {
          goto LABEL_153;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_155;
        }

        if (v93 < v85)
        {
          goto LABEL_123;
        }

LABEL_116:
        if (v65 - 1 >= v62)
        {
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
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v97 = *a3;
        if (!*a3)
        {
          goto LABEL_168;
        }

        v98 = v8;
        v99 = &v63[2 * v65 - 2];
        v100 = *v99;
        v101 = v65;
        v102 = &v63[2 * v65];
        v103 = v102[1];
        v104 = (v97 + 16 * *v99);
        v105 = (v97 + 16 * *v102);
        v106 = (v97 + 16 * v103);
        sub_1C75504FC();
        sub_1C72350F4(v104, v105, v106, v147, a5);
        if (v143)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_126;
        }

        if (v103 < v100)
        {
          goto LABEL_143;
        }

        v107 = *(v98 + 2);
        if (v101 > v107)
        {
          goto LABEL_144;
        }

        *v99 = v100;
        v99[1] = v103;
        if (v101 >= v107)
        {
          goto LABEL_145;
        }

        v62 = v107 - 1;
        sub_1C7423CF4(v102 + 16, v107 - 1 - v101, v102);
        v8 = v98;
        *(v98 + 2) = v107 - 1;
        v5 = a5;
        v63 = v141;
        if (v107 <= 2)
        {
          goto LABEL_123;
        }
      }

      v72 = &v63[2 * v62];
      v73 = *(v72 - 8);
      v74 = *(v72 - 7);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_146;
      }

      v77 = *(v72 - 6);
      v76 = *(v72 - 5);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_147;
      }

      v79 = *(v67 + 1);
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_149;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_152;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_160;
        }

        if (v70 < v96)
        {
          v65 = v62 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_123:
    v6 = a3[1];
    v7 = v130;
    if (v130 >= v6)
    {
      goto LABEL_128;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_164;
  }

  if (v7 + a4 < v39)
  {
    v39 = v7 + a4;
  }

  if (v39 < v7)
  {
LABEL_165:
    __break(1u);
LABEL_166:
    v8 = sub_1C7420830();
LABEL_130:
    v111 = v8 + 16;
    v110 = *(v8 + 2);
    for (i = v8; ; v8 = i)
    {
      if (v110 < 2)
      {

        return swift_bridgeObjectRelease_n();
      }

      v112 = *a3;
      if (!*a3)
      {
        goto LABEL_169;
      }

      v113 = &v8[16 * v110];
      v114 = *v113;
      v115 = v111;
      v116 = &v111[16 * v110];
      v117 = *(v116 + 1);
      v118 = (v112 + 16 * *v113);
      v119 = (v112 + 16 * *v116);
      v147 = (v112 + 16 * v117);
      sub_1C75504FC();
      sub_1C72350F4(v118, v119, v147, v141, a5);
      if (v143)
      {
        break;
      }

      if (v117 < v114)
      {
        goto LABEL_157;
      }

      if (v110 - 2 >= *v115)
      {
        goto LABEL_158;
      }

      v111 = v115;
      *v113 = v114;
      *(v113 + 1) = v117;
      v120 = *v115 - v110;
      if (*v115 < v110)
      {
        goto LABEL_159;
      }

      v110 = *v115 - 1;
      sub_1C7423CF4(v116 + 16, v120, v116);
      *v115 = v110;
    }

    swift_bridgeObjectRelease_n();
  }

  if (v6 == v39)
  {
    goto LABEL_73;
  }

  v127 = v8;
  v129 = v39;
  v40 = *a3;
  v41 = (*a3 + 16 * v6);
  v124 = v7;
  v42 = v7 - v6;
  v137 = *a3;
LABEL_49:
  v139 = v6;
  v43 = (v40 + 16 * v6);
  v45 = *v43;
  v44 = v43[1];
  v131 = v42;
  v135 = v41;
  while (1)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_70;
    }

    v46 = *(v41 - 2);
    v47 = *(v41 - 1);
    sub_1C75504FC();
    sub_1C75504FC();
    v48 = sub_1C6F78124(v45, v44);
    if ((v49 & 1) == 0)
    {

      goto LABEL_70;
    }

    if (*(v5 + 16))
    {
      v147 = *(*(v5 + 56) + 8 * v48);
      v50 = sub_1C6F78124(v46, v47);
      if (v51)
      {
        v52 = *(*(v5 + 56) + 8 * v50);
        v142 = [v147 integerValue];
        v53 = v52;
        if (v142 == [v52 integerValue])
        {
          v141 = v52;
          v54 = v147;
          if (v45 == v46 && v44 == v47)
          {

            v5 = a5;
            v40 = v137;
LABEL_70:
            v6 = v139 + 1;
            v41 = v135 + 2;
            v42 = v131 - 1;
            if (v139 + 1 == v129)
            {
              v8 = v127;
              v6 = v129;
              v7 = v124;
              goto LABEL_73;
            }

            goto LABEL_49;
          }

          v56 = sub_1C7551DBC();

          v5 = a5;
          v40 = v137;
          if ((v56 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v57 = v147;
          v141 = [v147 integerValue];
          v58 = [v52 integerValue];

          v59 = v58 < v141;
          v5 = a5;
          v40 = v137;
          if (!v59)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }

    if (!v40)
    {
      break;
    }

    v45 = *v41;
    v44 = v41[1];
    *v41 = *(v41 - 1);
    *(v41 - 1) = v44;
    *(v41 - 2) = v45;
    v41 -= 2;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_70;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_168:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_169:

  __break(1u);
LABEL_170:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_171:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_172:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1C7234018(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v163 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_135;
    }

LABEL_181:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  else
  {
    v150 = a4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v165 = a5;
    while (1)
    {
      v9 = v7 + 1;
      v159 = v8;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
        goto LABEL_40;
      }

      v10 = *a3;
      v168 = *(*a3 + 8 * v9);
      v11 = v7;
      v12 = *(v10 + 8 * v7);
      v167 = v12;
      v13 = v168;
      v14 = v12;
      v157 = sub_1C722D970(&v168, &v167, a5);
      if (v164)
      {
        swift_bridgeObjectRelease_n();
      }

      v15 = v10 + 8 * v11;
      v151 = v11;
      v16 = 8 * v11;
      v17 = (v15 + 16);
      v8 = v159;
      v163 = v6;
      while (v9 + 1 < v6)
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v20 = v18;
        v21 = [v19 localIdentifier];
        v22 = sub_1C755068C();
        v24 = v23;

        v25 = 0.0;
        if (*(a5 + 16))
        {
          v26 = sub_1C6F78124(v22, v24);
          a5 = v165;
          if (v27)
          {
            v25 = *(*(v165 + 56) + 8 * v26);
          }
        }

        v28 = [v20 localIdentifier];
        v29 = sub_1C755068C();
        v31 = v30;

        if (*(a5 + 16) && (v32 = sub_1C6F78124(v29, v31), a5 = v165, (v33 & 1) != 0))
        {
          v34 = *(*(v165 + 56) + 8 * v32);

          v8 = v159;
          if (v25 != v34)
          {
            goto LABEL_25;
          }
        }

        else
        {

          v8 = v159;
          if (v25 != 0.0)
          {
            v34 = 0.0;
LABEL_25:

            v44 = v34 < v25;
            goto LABEL_26;
          }
        }

        v35 = [v19 faceCount];
        v36 = [v20 faceCount];
        if (v35 == v36)
        {
          v37 = sub_1C70CAC04(v19);
          if (!v38)
          {
            goto LABEL_177;
          }

          v39 = v37;
          v40 = v38;
          v41 = sub_1C70CAC04(v20);
          if (!v42)
          {
            goto LABEL_178;
          }

          if (v39 == v41 && v40 == v42)
          {

            v8 = v159;
            v6 = v163;
            if (v157)
            {
              v6 = v9 + 1;
              v7 = v151;
              goto LABEL_33;
            }

            goto LABEL_27;
          }

          v44 = sub_1C7551DBC();

          v8 = v159;
        }

        else
        {
          v45 = v36;

          v44 = v45 < v35;
        }

LABEL_26:
        v6 = v163;
        if ((v157 ^ v44))
        {
          v6 = v9 + 1;
          break;
        }

LABEL_27:
        ++v17;
        ++v9;
      }

      v7 = v151;
      if ((v157 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_33:
      if (v6 < v7)
      {
        goto LABEL_168;
      }

      if (v7 < v6)
      {
        v46 = 8 * v6 - 8;
        v47 = v6;
        v48 = v7;
        do
        {
          if (v48 != --v47)
          {
            v49 = *a3;
            if (!*a3)
            {
              goto LABEL_179;
            }

            v50 = *(v49 + v16);
            *(v49 + v16) = *(v49 + v46);
            *(v49 + v46) = v50;
          }

          ++v48;
          v46 -= 8;
          v16 += 8;
        }

        while (v48 < v47);
      }

LABEL_40:
      v51 = a3[1];
      if (v6 >= v51)
      {
        goto LABEL_48;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_167;
      }

      if (v6 - v7 >= v150)
      {
LABEL_48:
        v53 = v6;
        goto LABEL_49;
      }

      v52 = (v7 + v150);
      if (__OFADD__(v7, v150))
      {
        goto LABEL_169;
      }

      if (v52 >= v51)
      {
        v52 = a3[1];
      }

      if (v52 < v7)
      {
        break;
      }

      if (v6 == v52)
      {
        goto LABEL_48;
      }

      v102 = *a3;
      v103 = *a3 + 8 * v6 - 8;
      v152 = v7;
      v104 = v7 - v6;
      v155 = v52;
      while (2)
      {
        v163 = v6;
        v105 = *(v102 + 8 * v6);
        v156 = v104;
        v158 = v103;
        while (2)
        {
          v106 = *v103;
          v107 = v105;
          v108 = v106;
          v109 = [v107 localIdentifier];
          v110 = sub_1C755068C();
          v112 = v111;

          v113 = 0.0;
          if (*(a5 + 16))
          {
            v114 = sub_1C6F78124(v110, v112);
            a5 = v165;
            if (v115)
            {
              v113 = *(*(v165 + 56) + 8 * v114);
            }
          }

          v116 = [v108 localIdentifier];
          v117 = sub_1C755068C();
          v119 = v118;

          if (!*(a5 + 16) || (v120 = sub_1C6F78124(v117, v119), a5 = v165, (v121 & 1) == 0))
          {

            if (v113 == 0.0)
            {
              goto LABEL_111;
            }

            v122 = 0.0;
LABEL_123:

            if (v122 >= v113)
            {
              goto LABEL_129;
            }

LABEL_124:
            if (v102)
            {
              v134 = *v103;
              v105 = *(v103 + 8);
              *v103 = v105;
              *(v103 + 8) = v134;
              v103 -= 8;
              if (__CFADD__(v104++, 1))
              {
                goto LABEL_129;
              }

              continue;
            }

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_176:

            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_180:
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_181;
          }

          break;
        }

        v122 = *(*(v165 + 56) + 8 * v120);

        if (v113 != v122)
        {
          goto LABEL_123;
        }

LABEL_111:
        v123 = [v107 faceCount];
        v124 = [v108 faceCount];
        if (v123 != v124)
        {
          v133 = v124;

          if (v133 >= v123)
          {
            goto LABEL_129;
          }

          goto LABEL_124;
        }

        v125 = sub_1C70CAC04(v107);
        if (!v126)
        {
          goto LABEL_174;
        }

        v127 = v125;
        v128 = v126;
        v129 = sub_1C70CAC04(v108);
        if (!v130)
        {
          goto LABEL_173;
        }

        if (v127 != v129 || v128 != v130)
        {
          v132 = sub_1C7551DBC();

          if ((v132 & 1) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_124;
        }

LABEL_129:
        v6 = v163 + 1;
        v103 = v158 + 8;
        v104 = v156 - 1;
        v53 = v155;
        if ((v163 + 1) != v155)
        {
          continue;
        }

        break;
      }

      v8 = v159;
      v7 = v152;
LABEL_49:
      if (v53 < v7)
      {
        goto LABEL_166;
      }

      v154 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v136;
      }

      v54 = *(v8 + 2);
      v55 = v54 + 1;
      v56 = v154;
      if (v54 >= *(v8 + 3) >> 1)
      {
        sub_1C6FB17EC();
        v56 = v154;
        v8 = v137;
      }

      *(v8 + 2) = v55;
      v57 = v8 + 32;
      v58 = &v8[16 * v54 + 32];
      *v58 = v7;
      *(v58 + 1) = v56;
      v163 = *a1;
      if (!*a1)
      {
        goto LABEL_180;
      }

      if (v54)
      {
        v160 = v8 + 32;
        while (1)
        {
          v59 = v55 - 1;
          v60 = &v57[16 * v55 - 16];
          v61 = &v8[16 * v55];
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v62 = *(v8 + 4);
            v63 = *(v8 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_70:
            if (v65)
            {
              goto LABEL_153;
            }

            v77 = *v61;
            v76 = *(v61 + 1);
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_156;
            }

            v81 = *(v60 + 1);
            v82 = v81 - *v60;
            if (__OFSUB__(v81, *v60))
            {
              goto LABEL_159;
            }

            if (__OFADD__(v79, v82))
            {
              goto LABEL_161;
            }

            if (v79 + v82 >= v64)
            {
              if (v64 < v82)
              {
                v59 = v55 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v55 < 2)
          {
            goto LABEL_155;
          }

          v84 = *v61;
          v83 = *(v61 + 1);
          v72 = __OFSUB__(v83, v84);
          v79 = v83 - v84;
          v80 = v72;
LABEL_85:
          if (v80)
          {
            goto LABEL_158;
          }

          v86 = *v60;
          v85 = *(v60 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_160;
          }

          if (v87 < v79)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v59 - 1 >= v55)
          {
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
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
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
            goto LABEL_170;
          }

          v91 = *a3;
          if (!*a3)
          {
            goto LABEL_175;
          }

          v92 = v8;
          v93 = &v57[16 * v59 - 16];
          v94 = *v93;
          v95 = v59;
          v96 = &v57[16 * v59];
          v97 = *(v96 + 1);
          v98 = (v91 + 8 * *v93);
          v99 = (v91 + 8 * *v96);
          v100 = (v91 + 8 * v97);
          a5 = v165;
          sub_1C75504FC();
          sub_1C72355FC(v98, v99, v100, v163, v165);
          if (v164)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v97 < v94)
          {
            goto LABEL_148;
          }

          v8 = v92;
          v101 = *(v92 + 2);
          if (v95 > v101)
          {
            goto LABEL_149;
          }

          *v93 = v94;
          *(v93 + 1) = v97;
          if (v95 >= v101)
          {
            goto LABEL_150;
          }

          v55 = v101 - 1;
          sub_1C7423CF4(v96 + 16, v101 - 1 - v95, v96);
          *(v92 + 2) = v101 - 1;
          v57 = v160;
          if (v101 <= 2)
          {
            goto LABEL_99;
          }
        }

        v66 = &v57[16 * v55];
        v67 = *(v66 - 8);
        v68 = *(v66 - 7);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_151;
        }

        v71 = *(v66 - 6);
        v70 = *(v66 - 5);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_152;
        }

        v73 = *(v61 + 1);
        v74 = v73 - *v61;
        if (__OFSUB__(v73, *v61))
        {
          goto LABEL_154;
        }

        v72 = __OFADD__(v64, v74);
        v75 = v64 + v74;
        if (v72)
        {
          goto LABEL_157;
        }

        if (v75 >= v69)
        {
          v89 = *v60;
          v88 = *(v60 + 1);
          v72 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v72)
          {
            goto LABEL_165;
          }

          if (v64 < v90)
          {
            v59 = v55 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v154;
      a5 = v165;
      if (v154 >= v6)
      {
        goto LABEL_133;
      }
    }

LABEL_170:
    __break(1u);
LABEL_171:
    v8 = sub_1C7420830();
LABEL_135:
    v138 = v8 + 16;
    v139 = *(v8 + 2);
    for (i = v8; ; v8 = i)
    {
      if (v139 < 2)
      {

        return swift_bridgeObjectRelease_n();
      }

      v140 = *a3;
      if (!*a3)
      {
        goto LABEL_176;
      }

      v141 = &v8[16 * v139];
      v142 = *v141;
      v143 = v138;
      v144 = &v138[16 * v139];
      v145 = *(v144 + 1);
      v146 = (v140 + 8 * *v141);
      v147 = (v140 + 8 * *v144);
      v166 = (v140 + 8 * v145);
      sub_1C75504FC();
      sub_1C72355FC(v146, v147, v166, v163, a5);
      if (v164)
      {
        break;
      }

      if (v145 < v142)
      {
        goto LABEL_162;
      }

      if (v139 - 2 >= *v143)
      {
        goto LABEL_163;
      }

      v138 = v143;
      *v141 = v142;
      *(v141 + 1) = v145;
      v148 = *v143 - v139;
      if (*v143 < v139)
      {
        goto LABEL_164;
      }

      v139 = *v143 - 1;
      sub_1C7423CF4(v144 + 16, v148, v144);
      *v143 = v139;
    }

    swift_bridgeObjectRelease_n();
  }

  return result;
}

void sub_1C7234AA4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v96 = v8 + 16;
      v97 = *(v8 + 2);
      while (v97 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v98 = v8;
        v99 = &v8[16 * v97];
        v100 = *v99;
        v101 = &v96[2 * v97];
        v102 = *(v101 + 1);
        sub_1C7235914((*a3 + 8 * *v99), (*a3 + 8 * *v101), (*a3 + 8 * v102), v117);
        if (v5)
        {
          break;
        }

        if (v102 < v100)
        {
          goto LABEL_120;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_121;
        }

        *v99 = v100;
        *(v99 + 1) = v102;
        v103 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_122;
        }

        v97 = *v96 - 1;
        sub_1C7423CF4(v101 + 16, v103, v101);
        *v96 = v97;
        v8 = v98;
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = sub_1C7420830();
    goto LABEL_96;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v106 = v8;
      v11 = (*a3 + 8 * v7);
      v104 = 8 * v7;
      v14 = *v11;
      v13 = (v11 + 2);
      v12 = v14;
      v15 = *(*a3 + 8 * v10);
      v16 = v14;
      v113 = OUTLINED_FUNCTION_91_9();
      v112 = [v5 v14 + 3036];

      v109 = v9;
      v17 = v9 + 2;
      while (1)
      {
        v18 = v17;
        v19 = v10 + 1;
        if (v19 >= v6)
        {
          break;
        }

        LODWORD(v117) = v113 < v112;
        v20 = *(v13 - 1);
        v21 = *v13;
        v22 = v20;
        v23 = v19;
        v24 = OUTLINED_FUNCTION_91_9();
        v25 = [v5 v12 + 3036];

        v26 = v24 < v25;
        v10 = v23;
        v27 = !v26;
        v28 = v117 ^ v27;
        ++v13;
        v17 = v18 + 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v113 >= v112)
      {
        v8 = v106;
        v9 = v109;
      }

      else
      {
        v9 = v109;
        if (v10 < v109)
        {
          goto LABEL_126;
        }

        if (v109 >= v10)
        {
          v8 = v106;
        }

        else
        {
          if (v6 >= v18)
          {
            v29 = v18;
          }

          else
          {
            v29 = v6;
          }

          v30 = 8 * v29 - 8;
          v31 = v10;
          v32 = v109;
          v8 = v106;
          v33 = v104;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v35 = *(v34 + v33);
              *(v34 + v33) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v32;
            v30 -= 8;
            v33 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v36 = a3[1];
    if (v10 < v36)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v8 = v94;
    }

    v51 = *(v8 + 2);
    v52 = v51 + 1;
    if (v51 >= *(v8 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v8 = v95;
    }

    *(v8 + 2) = v52;
    v53 = v8 + 32;
    v54 = &v8[16 * v51 + 32];
    *v54 = v9;
    *(v54 + 1) = v10;
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v117 = v10;
    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v8[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v8 + 4);
          v59 = *(v8 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_62:
          if (v61)
          {
            goto LABEL_111;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_114;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_119;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v52 < 2)
        {
          goto LABEL_113;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_77:
        if (v76)
        {
          goto LABEL_116;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v83 < v75)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v55 - 1 >= v52)
        {
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

        if (!*a3)
        {
          goto LABEL_131;
        }

        v87 = v8;
        v88 = &v53[16 * v55 - 16];
        v89 = *v88;
        v90 = v55;
        v91 = &v53[16 * v55];
        v92 = *(v91 + 1);
        sub_1C7235914((*a3 + 8 * *v88), (*a3 + 8 * *v91), (*a3 + 8 * v92), v115);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v92 < v89)
        {
          goto LABEL_106;
        }

        v5 = *(v87 + 2);
        if (v90 > v5)
        {
          goto LABEL_107;
        }

        *v88 = v89;
        *(v88 + 1) = v92;
        if (v90 >= v5)
        {
          goto LABEL_108;
        }

        v93 = v90;
        v52 = (v5 - 1);
        sub_1C7423CF4(v91 + 16, &v5[-v93 - 1], v91);
        v8 = v87;
        *(v87 + 2) = v5 - 1;
        v26 = v5 > 2;
        v5 = 0;
        if (!v26)
        {
          goto LABEL_91;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_109;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_110;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_112;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_115;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_123;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v117;
    if (v117 >= v6)
    {
      goto LABEL_94;
    }
  }

  v37 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_127;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v37)
  {
    goto LABEL_42;
  }

  v107 = v8;
  v108 = v5;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v110 = v9;
  v40 = v9 - v10;
  v114 = v37;
LABEL_35:
  v117 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    v47 = [v45 manualOrder];
    v48 = [v46 manualOrder];

    if (v47 >= v48)
    {
LABEL_40:
      v10 = v117 + 1;
      v39 += 8;
      --v40;
      if ((v117 + 1) == v114)
      {
        v10 = v114;
        v8 = v107;
        v5 = v108;
        v9 = v110;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v38)
    {
      break;
    }

    v49 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v49;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_40;
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

uint64_t sub_1C72350F4(char *a1, char *a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 < v10)
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v11 = &v5[2 * v9];
    v12 = a5;
    v13 = v7;
    v64 = v6;
    v62 = v11;
    while (1)
    {
      if (v5 >= v11 || v13 >= v6)
      {
        v33 = v8;
        goto LABEL_64;
      }

      if (!*(v12 + 16))
      {
        goto LABEL_20;
      }

      v15 = *v13;
      v16 = v13[1];
      v17 = *v5;
      v18 = v5[1];
      sub_1C75504FC();
      sub_1C75504FC();
      v19 = sub_1C6F78124(v15, v16);
      if ((v20 & 1) == 0)
      {

LABEL_19:
        v11 = v62;
LABEL_20:
        v28 = v5;
        v26 = v8 == v5;
        v5 += 2;
        if (v26)
        {
          goto LABEL_22;
        }

LABEL_21:
        *v8 = *v28;
        goto LABEL_22;
      }

      if (!*(v12 + 16))
      {
        break;
      }

      v21 = *(*(v12 + 56) + 8 * v19);
      v22 = sub_1C6F78124(v17, v18);
      if ((v23 & 1) == 0)
      {

        v6 = v64;
        goto LABEL_25;
      }

      v55 = v13;
      v59 = v8;
      v24 = *(*(v12 + 56) + 8 * v22);
      v25 = [v21 integerValue];
      if (v25 == [v24 integerValue])
      {
        v26 = v15 == v17 && v16 == v18;
        if (v26)
        {

          v12 = a5;
          v8 = v59;
          v6 = v64;
          v13 = v55;
          goto LABEL_19;
        }

        v27 = sub_1C7551DBC();

        v12 = a5;
        v8 = v59;
        v6 = v64;
        v13 = v55;
        v11 = v62;
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v29 = [v21 integerValue];
        v30 = [v24 integerValue];

        v34 = v30 < v29;
        v12 = a5;
        v8 = v59;
        v6 = v64;
        v13 = v55;
        v11 = v62;
        if (!v34)
        {
          goto LABEL_20;
        }
      }

LABEL_26:
      v28 = v13;
      v26 = v8 == v13;
      v13 += 2;
      if (!v26)
      {
        goto LABEL_21;
      }

LABEL_22:
      v8 += 2;
    }

LABEL_25:
    v11 = v62;
    goto LABEL_26;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v11 = &v5[2 * v10];
  v31 = a5;
  v32 = v8;
  v60 = v8;
LABEL_34:
  v33 = v7;
  v56 = v7 - 2;
  v6 -= 2;
  v61 = v7;
  while (1)
  {
    v34 = v11 > v5 && v33 > v32;
    if (!v34)
    {
      break;
    }

    v35 = v11 - 2;
    v36 = *(v11 - 2);
    if (!*(v31 + 16))
    {
      goto LABEL_54;
    }

    v65 = v6;
    v37 = *(v11 - 1);
    v38 = *(v33 - 2);
    v39 = *(v33 - 1);
    sub_1C75504FC();
    sub_1C75504FC();
    v40 = sub_1C6F78124(v36, v37);
    if ((v41 & 1) == 0)
    {

LABEL_52:
      v6 = v65;
      v33 = v61;
      goto LABEL_54;
    }

    if (!*(v31 + 16))
    {

LABEL_60:
      v6 = v65;
      v33 = v61;
LABEL_61:
      v7 = v56;
      if (v6 + 2 != v33)
      {
        *v6 = *v56;
      }

      goto LABEL_34;
    }

    v42 = *(*(v31 + 56) + 8 * v40);
    v43 = sub_1C6F78124(v38, v39);
    if ((v44 & 1) == 0)
    {

      v32 = v60;
      goto LABEL_60;
    }

    v57 = v38;
    v63 = v11;
    v45 = *(*(v31 + 56) + 8 * v43);
    v46 = [v42 integerValue];
    if (v46 == [v45 integerValue])
    {
      v47 = v45;
      v48 = v36 == v57 && v37 == v39;
      v11 = v63;
      if (v48)
      {

        v31 = a5;
        v32 = v60;
        goto LABEL_52;
      }

      v49 = sub_1C7551DBC();

      v31 = a5;
      v32 = v60;
      v6 = v65;
      v33 = v61;
      if (v49)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v50 = [v42 integerValue];
      v51 = [v45 integerValue];

      v34 = v51 < v50;
      v31 = a5;
      v32 = v60;
      v6 = v65;
      v33 = v61;
      v11 = v63;
      if (v34)
      {
        goto LABEL_61;
      }
    }

LABEL_54:
    if (v11 != v6 + 2)
    {
      *v6 = *v35;
    }

    v6 -= 2;
    v11 = v35;
  }

LABEL_64:
  v52 = (v11 - v5) / 16;
  if (v33 != v5 || v33 >= &v5[2 * v52])
  {
    memmove(v33, v5, 16 * v52);
  }

  return 1;
}

uint64_t sub_1C72355FC(id *a1, id *a2, void **a3, void **a4, uint64_t a5)
{
  v6 = v5;
  v8 = a2;
  v9 = a1;
  v10 = a2 - a1;
  v11 = a3 - a2;
  if (v10 >= v11)
  {
    sub_1C7423CF8(a2);
    v12 = &a4[v11];
    v26 = -a4;
    v27 = a3;
    v49 = v9;
    v50 = a4;
LABEL_15:
    v28 = v8 - 1;
    v29 = v27 - 1;
    v30 = v12 + v26;
    v51 = v8;
    while (1)
    {
      if (v12 <= a4 || v8 <= v9)
      {
LABEL_29:
        v43 = v12 - a4;
        v44 = v8 < a4 || v8 >= &a4[v43];
        if (v44 || v8 != a4)
        {
          memmove(v8, a4, 8 * v43);
        }

        goto LABEL_51;
      }

      v32 = v29;
      v33 = v6;
      v34 = v12;
      v35 = v12 - 1;
      v55 = *(v12 - 1);
      v36 = v28;
      v54 = *v28;
      v37 = v54;
      v38 = v55;
      v39 = v37;
      v40 = sub_1C722D970(&v55, &v54, a5);
      if (v33)
      {
        break;
      }

      v41 = v40;

      v27 = v32;
      v42 = v32 + 1;
      if (v41)
      {
        a4 = v50;
        v8 = v36;
        v9 = v49;
        v12 = v34;
        v6 = 0;
        if (v42 != v51)
        {
          *v27 = *v36;
          v8 = v36;
        }

        goto LABEL_15;
      }

      v28 = v36;
      if (v34 != v42)
      {
        *v32 = *v35;
      }

      v29 = v32 - 1;
      v30 -= 8;
      v12 = v35;
      v9 = v49;
      a4 = v50;
      v8 = v51;
      v6 = 0;
    }

    v47 = v51 < v50 || v51 >= &v50[v30 / 8];
    if (v47 || v51 != v50)
    {
      memmove(v51, v50, 8 * (v30 / 8));
    }
  }

  else
  {
    sub_1C7423CF8(a1);
    v12 = &a4[v10];
    v13 = a3;
    while (1)
    {
      if (a4 >= v12 || v8 >= v13)
      {
        v8 = v9;
        goto LABEL_29;
      }

      v15 = v12;
      v16 = v9;
      v55 = *v8;
      v17 = a4;
      v18 = *a4;
      v54 = v18;
      v19 = v55;
      v20 = v18;
      v21 = sub_1C722D970(&v55, &v54, a5);
      if (v5)
      {
        break;
      }

      v22 = v21;

      if (v22)
      {
        v23 = v8;
        v24 = v16;
        v25 = v16 == v8++;
        a4 = v17;
      }

      else
      {
        v23 = v17;
        a4 = v17 + 1;
        v24 = v16;
        v25 = v16 == v17;
      }

      v13 = a3;
      v12 = v15;
      if (!v25)
      {
        *v24 = *v23;
      }

      v9 = v24 + 1;
    }

    v45 = v15 - v17;
    v46 = v9 < v17 || v9 >= &v17[v45];
    if (v46 || v9 != v17)
    {
      memmove(v9, v17, 8 * v45);
    }
  }

LABEL_51:

  return 1;
}

uint64_t sub_1C7235914(id *a1, id *a2, id *a3, void **a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1);
    v10 = &a4[v8];
    for (i = v5; ; v5 = i)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *a4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 manualOrder];
      v17 = [v15 manualOrder];

      if (v16 >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = v19 + 1;
    }

    v18 = a4;
    v19 = v12;
    v20 = v12 == a4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2);
  v10 = &a4[v9];
  v33 = v7;
  v34 = a4;
LABEL_15:
  v21 = v6 - 1;
  --v5;
  while (v10 > a4 && v6 > v7)
  {
    v23 = v21;
    v24 = *v21;
    v25 = *(v10 - 1);
    v26 = v24;
    v27 = [v25 manualOrder];
    v28 = [v26 manualOrder];

    v29 = v5 + 1;
    if (v27 < v28)
    {
      v20 = v29 == v6;
      v6 = v23;
      v7 = v33;
      a4 = v34;
      if (!v20)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v29)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v33;
    a4 = v34;
    v21 = v23;
  }

LABEL_28:
  v30 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v30])
  {
    memmove(v6, a4, 8 * v30);
  }

  return 1;
}

void sub_1C7235B6C()
{
  OUTLINED_FUNCTION_72_13();
  v1 = v0;

  v2 = sub_1C75516BC();
  v3 = swift_unknownObjectRetain();
  sub_1C70F6964(v3, v2);
  v5 = v4;
  v12 = v4;

  sub_1C75513DC();
  OUTLINED_FUNCTION_9_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = sub_1C75513EC();

    if (v11)
    {

      sub_1C72368E4();
      OUTLINED_FUNCTION_64();
      if (sub_1C75513EC())
      {
        *v1 = v12;
        OUTLINED_FUNCTION_73_13();
        return;
      }

      __break(1u);
      break;
    }

    v6 = v9 + 1;
  }

  __break(1u);
}

void sub_1C7235C98()
{
  OUTLINED_FUNCTION_72_13();
  v2 = v1;
  v4 = v3;
  v14 = v0;

  v5 = sub_1C75516BC();
  v6 = swift_unknownObjectRetain();
  v7 = v4(v6, v5);

  sub_1C75513DC();
  OUTLINED_FUNCTION_9_2();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((*(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v10)) & 1) == 0)
    {
      break;
    }

    sub_1C6F65BE8(0, v2);
    v12 = *(*(v7 + 48) + 8 * v11);
    v13 = sub_1C75513EC();

    if (v13)
    {

      sub_1C72368E4();
      OUTLINED_FUNCTION_64();
      if (sub_1C75513EC())
      {
        *v14 = v7;
        OUTLINED_FUNCTION_73_13();
        return;
      }

      __break(1u);
      break;
    }

    v8 = v11 + 1;
  }

  __break(1u);
}

void sub_1C7235DDC(int64_t a1)
{
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_1C755161C();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = (v14 + 1) & v13;
      v33 = *(v4 + 72);
      while (1)
      {
        v16 = v10;
        v17 = v33 * v12;
        sub_1C72373C4(*(v9 + 48) + v33 * v12, v8);
        sub_1C7551F3C();
        sub_1C75505AC();
        sub_1C75505AC();

        sub_1C754F58C();
        sub_1C7237428(&qword_1EC215238, MEMORY[0x1E69C1928]);
        sub_1C755059C();
        v18 = sub_1C7551FAC();
        sub_1C7237470(v8, type metadata accessor for Hastings.Feature);
        v19 = v18 & v13;
        if (a1 >= v15)
        {
          if (v19 < v15 || a1 < v19)
          {
            goto LABEL_24;
          }
        }

        else if (v19 < v15 && a1 < v19)
        {
          goto LABEL_24;
        }

        v22 = *(v9 + 48);
        v23 = v33 * a1;
        v24 = v22 + v33 * a1;
        v25 = v22 + v17 + v33;
        if (v33 * a1 < v17 || v24 >= v25)
        {
          break;
        }

        a1 = v12;
        if (v23 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v13;
        v10 = v16;
        if (((*(v16 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v12;
      goto LABEL_24;
    }

LABEL_25:

    OUTLINED_FUNCTION_44_19();
    *(v10 + v27) = v28;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v10 + v30) = v29;
  }

  OUTLINED_FUNCTION_43_21();
  if (v32)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v31);
  }
}

void sub_1C723614C(int64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 56;
  OUTLINED_FUNCTION_6_58();
  v7 = v6 & ~v5;
  if (((1 << v7) & *(v4 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v5;

    v9 = sub_1C755161C();
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v10 = (v9 + 1) & v8;
      v29 = v4;
      do
      {
        v11 = v3;
        v12 = v10;
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v13 = sub_1C7551FAC();

        v10 = v12;
        v14 = v13 & v8;
        if (a1 >= v12)
        {
          if (v14 >= v12 && a1 >= v14)
          {
LABEL_9:
            v3 = v11;
            v16 = *(v11 + 48);
            v17 = v16 + 40 * a1;
            v18 = (v16 + 40 * v7);
            v19 = a1 != v7 || v17 >= v18 + 40;
            v4 = v29;
            if (v19)
            {
              v20 = *v18;
              v21 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v20;
              *(v17 + 16) = v21;
              a1 = v7;
            }

            goto LABEL_21;
          }
        }

        else if (v14 >= v12 || a1 >= v14)
        {
          goto LABEL_9;
        }

        v4 = v29;
        v3 = v11;
LABEL_21:
        v7 = (v7 + 1) & v8;
      }

      while (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_44_19();
    *(v4 + v23) = v24;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v4 + v26) = v25;
  }

  OUTLINED_FUNCTION_43_21();
  if (v28)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v27);
  }
}

void sub_1C723634C()
{
  OUTLINED_FUNCTION_5_54();
  if (v8)
  {
    OUTLINED_FUNCTION_9_54(v7);
  }

  else
  {
    OUTLINED_FUNCTION_95_10();
    OUTLINED_FUNCTION_58();
    v9 = sub_1C755161C();
    if ((*(v2 + 8 * v1) & v5) != 0)
    {
      v10 = (v9 + 1) & v4;
      do
      {
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v11 = sub_1C7551FAC();

        v12 = v11 & v4;
        if (v3 >= v10)
        {
          if (v12 >= v10 && v3 >= v12)
          {
LABEL_15:
            v15 = *(v0 + 48);
            v16 = (v15 + 16 * v3);
            v17 = (v15 + 16 * v6);
            if (v3 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v3 = v6;
            }
          }
        }

        else if (v12 >= v10 || v3 >= v12)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_12_45();
      }

      while ((v19 & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_30_26(v20);
  }

  OUTLINED_FUNCTION_43_21();
  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v21);
  }
}

void sub_1C7236474(int64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 56;
  OUTLINED_FUNCTION_6_58();
  v7 = v6 & ~v5;
  if (((1 << v7) & *(v4 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v5;

    OUTLINED_FUNCTION_85_9();
    v9 = sub_1C755161C();
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v10 = (v9 + 1) & v8;
      do
      {
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v7);
        v13 = sub_1C7551F2C() & v8;
        if (a1 >= v10)
        {
          if (v13 >= v10 && a1 >= v13)
          {
LABEL_15:
            v16 = (v11 + 8 * a1);
            if (a1 != v7 || v16 >= v12 + 1)
            {
              *v16 = *v12;
              a1 = v7;
            }
          }
        }

        else if (v13 >= v10 || a1 >= v13)
        {
          goto LABEL_15;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    OUTLINED_FUNCTION_44_19();
    *(v4 + v18) = v19;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v4 + v21) = v20;
  }

  OUTLINED_FUNCTION_43_21();
  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v22);
  }
}

void sub_1C72365C4()
{
  OUTLINED_FUNCTION_5_54();
  if (v8)
  {
    OUTLINED_FUNCTION_9_54(v7);
  }

  else
  {
    OUTLINED_FUNCTION_95_10();
    OUTLINED_FUNCTION_58();
    v9 = sub_1C755161C();
    if ((*(v2 + 8 * v1) & v5) != 0)
    {
      v10 = (v9 + 1) & v4;
      do
      {
        sub_1C7551F3C();
        sub_1C75505AC();

        v11 = sub_1C7551FAC() & v4;
        if (v3 >= v10)
        {
          if (v11 >= v10 && v3 >= v11)
          {
LABEL_15:
            v14 = *(v0 + 48);
            v15 = (v14 + v3);
            v16 = (v14 + v6);
            if (v3 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v3 = v6;
            }
          }
        }

        else if (v11 >= v10 || v3 >= v11)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_12_45();
      }

      while ((v18 & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_30_26(v19);
  }

  OUTLINED_FUNCTION_43_21();
  if (v21)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v20);
  }
}

void sub_1C72368E4()
{
  OUTLINED_FUNCTION_5_54();
  if (v8)
  {
    OUTLINED_FUNCTION_9_54(v7);
  }

  else
  {
    OUTLINED_FUNCTION_95_10();
    OUTLINED_FUNCTION_58();
    v9 = sub_1C755161C();
    if ((*(v2 + 8 * v1) & v5) != 0)
    {
      v10 = (v9 + 1) & v4;
      do
      {
        v11 = *(*(v0 + 48) + 8 * v6);
        v12 = sub_1C75513DC();

        v13 = v12 & v4;
        if (v3 >= v10)
        {
          if (v13 >= v10 && v3 >= v13)
          {
LABEL_15:
            v16 = *(v0 + 48);
            v17 = (v16 + 8 * v3);
            v18 = (v16 + 8 * v6);
            if (v3 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v3 = v6;
            }
          }
        }

        else if (v13 >= v10 || v3 >= v13)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_12_45();
      }

      while ((v20 & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_30_26(v21);
  }

  OUTLINED_FUNCTION_43_21();
  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v22);
  }
}

void sub_1C72369E8(int64_t a1)
{
  v4 = *v1;
  v5 = *v1 + 56;
  OUTLINED_FUNCTION_6_58();
  v8 = v7 & ~v6;
  if (((1 << v8) & *(v5 + 8 * (v8 >> 6))) != 0)
  {
    OUTLINED_FUNCTION_95_10();
    v9 = sub_1C755161C();
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v10 = (v9 + 1) & v2;
      v25 = v5;
      do
      {
        memcpy(__dst, (*(v4 + 48) + 192 * v8), 0xC0uLL);
        sub_1C7551F3C();
        sub_1C7080654(__dst, v26);
        sub_1C75505AC();
        sub_1C75505AC();

        v11 = sub_1C7551FAC();
        sub_1C70806B0(__dst);
        v12 = v11 & v2;
        v5 = v25;
        if (a1 >= v10)
        {
          if (v12 >= v10 && a1 >= v12)
          {
LABEL_15:
            v15 = *(v4 + 48);
            v16 = (v15 + 192 * a1);
            v17 = (v15 + 192 * v8);
            if (a1 != v8 || v16 >= v17 + 192)
            {
              memmove(v16, v17, 0xC0uLL);
              a1 = v8;
            }
          }
        }

        else if (v12 >= v10 || a1 >= v12)
        {
          goto LABEL_15;
        }

        v8 = (v8 + 1) & v2;
      }

      while (((*(v25 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    OUTLINED_FUNCTION_8_49();
    OUTLINED_FUNCTION_44_19();
    *(v5 + v19) = v20;
  }

  else
  {
    OUTLINED_FUNCTION_46_20();
    *(v5 + v22) = v21;
  }

  OUTLINED_FUNCTION_43_21();
  if (v24)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_58(v23);
  }
}

void sub_1C7236C60()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_66_17();
  sub_1C6F78124(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_36_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0);
    OUTLINED_FUNCTION_21_37();
    OUTLINED_FUNCTION_90_12();
    sub_1C6F9ED18((*(v1 + 56) + 32 * v2), v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    OUTLINED_FUNCTION_85_9();
    sub_1C7551A4C();
    *v0 = v1;
  }

  else
  {
    *v3 = 0u;
    v3[1] = 0u;
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7236D0C()
{
  OUTLINED_FUNCTION_72_13();
  v2 = v1;
  v4 = v3;
  sub_1C6F78124(v5, v6);
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(v4);
    sub_1C7551A2C();

    sub_1C6F65BE8(0, v2);
    sub_1C7551A4C();
    *v0 = v8;
  }

  OUTLINED_FUNCTION_73_13();
}

void sub_1C7236DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_66_17();
  sub_1C6FC2F4C();
  if (v13)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_36_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197E0);
    OUTLINED_FUNCTION_21_37();
    v14 = *(a10 + 48);
    v15 = sub_1C7551A1C();
    OUTLINED_FUNCTION_12();
    (*(v16 + 8))(v14 + *(v16 + 72) * v11, v15);
    sub_1C6F9ED18((*(a10 + 56) + 32 * v11), v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    OUTLINED_FUNCTION_85_9();
    sub_1C7551A4C();
    *v10 = a10;
  }

  else
  {
    *v12 = 0u;
    v12[1] = 0u;
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7236EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_12();
  sub_1C6F78124(v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_76_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152A0);
    OUTLINED_FUNCTION_87_12();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750);
    OUTLINED_FUNCTION_64();
    sub_1C7551A4C();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7236F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_12();
  v12 = v10;
  sub_1C6FC3130();
  if (v13)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_76_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219740);
    OUTLINED_FUNCTION_87_12();
    v14 = *(a10 + 48);
    type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_12();
    sub_1C7237470(v14 + *(v15 + 72) * v11, type metadata accessor for PromptSuggestion);
    sub_1C7237428(&qword_1EC219748, type metadata accessor for PromptSuggestion);
    OUTLINED_FUNCTION_49_3();
    sub_1C7551A4C();
    *v12 = a10;
  }

  OUTLINED_FUNCTION_22_14();
}

uint64_t sub_1C72370A0()
{
  OUTLINED_FUNCTION_23_12();
  v2 = v1;
  v5 = sub_1C6F78124(v3, v4);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D0);
    OUTLINED_FUNCTION_21_37();

    v8 = *(v16 + 56);
    type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_12();
    sub_1C7159368(v8 + *(v9 + 72) * v7, v2);
    sub_1C7551A4C();
    *v0 = v16;
  }

  else
  {
    type metadata accessor for PromptSuggestion(0);
  }

  OUTLINED_FUNCTION_22_14();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_1C72371B4()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_66_17();
  sub_1C6F78124(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_36_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219730);
    OUTLINED_FUNCTION_21_37();
    OUTLINED_FUNCTION_90_12();
    sub_1C6F699F8((*(v1 + 56) + 40 * v2), v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738);
    OUTLINED_FUNCTION_85_9();
    sub_1C7551A4C();
    *v0 = v1;
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  OUTLINED_FUNCTION_22_14();
}

uint64_t sub_1C72372BC(void *a1)
{
  v2 = [a1 name];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1C755068C();
  OUTLINED_FUNCTION_69_15();

  return v1;
}

uint64_t sub_1C72373C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Feature();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7237428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C7237470(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_26Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1C7237528()
{
  sub_1C754FF1C();
  v1 = *(v0 + 16);

  sub_1C722CF74(v1);
}

void sub_1C723758C()
{
  v1 = *(sub_1C754FF1C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_1C722F944(v6, v7, v0 + v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_21_37()
{

  return sub_1C7551A2C();
}

void OUTLINED_FUNCTION_61_13()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_70_14()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_74_9()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_87_12()
{

  return sub_1C7551A2C();
}

void OUTLINED_FUNCTION_88_8()
{
}

void OUTLINED_FUNCTION_89_10()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_90_12()
{
}

id OUTLINED_FUNCTION_91_9()
{

  return [v0 manualOrder];
}

void OUTLINED_FUNCTION_92_11()
{
  v2 = *(v0 - 368);
}

uint64_t OUTLINED_FUNCTION_93_11()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_94_11@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + (v2 | (8 * a1)));

  return v4;
}

uint64_t OUTLINED_FUNCTION_95_10()
{
}

uint64_t OUTLINED_FUNCTION_96_7()
{

  return sub_1C75516BC();
}

uint64_t sub_1C7237954()
{
  v1 = *(v0 + 16);
  v39 = sub_1C6FB6304();
  if (v39)
  {
    v2 = 0;
    v38 = v1 & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v37 = v1;
    while (1)
    {
      v4 = sub_1C6FB6330(v2, v38 == 0, v1);

      v6 = __OFADD__(v2, 1);
      v7 = v2 + 1;
      if (v6)
      {
        break;
      }

      v40 = v7;
      v41 = v3;
      v42 = v5;
      v8 = *(v5 + 32);
      v9 = 0;
      v43 = sub_1C6FB6304();
      v10 = MEMORY[0x1E69E7CC0];
      while (v43 != v9)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA5DDD0](v9, v8);
        }

        else
        {
          if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }
        }

        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        type metadata accessor for FeatureSurveySmileyQuestion();
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = v11;
          v14 = *(v11 + 72);
          v13 = *(v11 + 80);
          swift_beginAccess();
          v15 = *(v12 + 89);
          v16 = 0xEA00000000006465;
          v17 = 0x726577736E616E55;
          switch(v15)
          {
            case 1:
              v17 = 0xD000000000000011;
              v16 = 0x80000001C759E030;
              break;
            case 2:
              v16 = 0xE800000000000000;
              v17 = 0x6565726761736944;
              break;
            case 3:
              v16 = 0xE700000000000000;
              v17 = 0x6C61727475654ELL;
              break;
            case 4:
              v16 = 0xE500000000000000;
              v17 = 0x6565726741;
              break;
            case 5:
              v17 = 0x796C676E6F727453;
              v16 = 0xEE00656572676120;
              break;
            default:
              break;
          }
        }

        else
        {
          type metadata accessor for FeatureSurveyStringQuestion();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v19 = v18;
            v14 = *(v18 + 72);
            v13 = *(v18 + 80);
            swift_beginAccess();
            v16 = *(v19 + 104);
            if (v16)
            {
              v17 = *(v19 + 96);
              sub_1C75504FC();
            }

            else
            {
              v16 = 0xE900000000000072;
              v17 = 0x6577736E61206F4ELL;
            }
          }

          else
          {
            type metadata accessor for FeatureSurveyYesNoQuestion();
            v20 = swift_dynamicCastClass();
            if (!v20)
            {
              goto LABEL_50;
            }

            v21 = v20;
            v14 = *(v20 + 72);
            v13 = *(v20 + 80);
            swift_beginAccess();
            v22 = *(v21 + 89);
            v23 = 7562585;
            if (v22 != 1)
            {
              v23 = 28494;
            }

            v24 = 0xE300000000000000;
            if (v22 != 1)
            {
              v24 = 0xE200000000000000;
            }

            if (*(v21 + 89))
            {
              v17 = v23;
            }

            else
            {
              v17 = 0x726577736E616E55;
            }

            if (*(v21 + 89))
            {
              v16 = v24;
            }

            else
            {
              v16 = 0xEA00000000006465;
            }
          }
        }

        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB4164();
          v10 = v27;
        }

        v25 = *(v10 + 16);
        if (v25 >= *(v10 + 24) >> 1)
        {
          sub_1C6FB4164();
          v10 = v28;
        }

        *(v10 + 16) = v25 + 1;
        v26 = (v10 + 48 * v25);
        v26[4] = 0;
        v26[5] = 0;
        v26[6] = v14;
        v26[7] = v13;
        v26[8] = v17;
        v26[9] = v16;
        ++v9;
      }

      v30 = *(v42 + 16);
      v29 = *(v42 + 24);
      sub_1C75504FC();
      v3 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB4134();
        v3 = v33;
      }

      v1 = v37;
      v2 = v40;
      v31 = *(v3 + 16);
      if (v31 >= *(v3 + 24) >> 1)
      {
        sub_1C6FB4134();
        v3 = v34;
      }

      *(v3 + 16) = v31 + 1;
      v32 = (v3 + 24 * v31);
      v32[4] = v30;
      v32[5] = v29;
      v32[6] = v10;
      if (v40 == v39)
      {
        goto LABEL_46;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:

    result = sub_1C7551AAC();
    __break(1u);
  }

  else
  {
LABEL_46:
    sub_1C754D7AC();
    swift_allocObject();
    sub_1C754D79C();
    sub_1C7238518();
    v35 = sub_1C754D78C();

    return v35;
  }

  return result;
}

uint64_t sub_1C7237E60()
{
  v1 = *(v0 + 16);
  v2 = sub_1C6FB6304();
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  while (1)
  {
    v5 = v3;
    if (v2 == v3)
    {
      return v2 != v5;
    }

    v6 = sub_1C6FB6330(v3, v4 == 0, v1);

    if (__OFADD__(v5, 1))
    {
      break;
    }

    sub_1C72B9920();
    v9 = v8;

    v3 = v5 + 1;
    if (v9)
    {
      return v2 != v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7237F1C()
{
  v1 = *(v0 + 16);
  v2 = sub_1C6FB6304();
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      v17 = sub_1C75505FC();

      return v17;
    }

    v6 = sub_1C6FB6330(v3, v4 == 0, v1);

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_1C72B99FC();
    v10 = v9;
    v12 = v11;

    ++v3;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v5 = v15;
      }

      v13 = *(v5 + 16);
      if (v13 >= *(v5 + 24) >> 1)
      {
        sub_1C6FB1814();
        v5 = v16;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v12;
      v3 = v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72380D8(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6FB6304();
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v5)
    {
      return v10;
    }

    v7 = sub_1C6FB6330(v5, v6 == 0, v3);

    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = a1(result);
    sub_1C6FD35F4(v9);

    ++v5;
  }

  __break(1u);
  return result;
}

void sub_1C72381F4(uint64_t a1)
{
  v3 = (*(*v1 + 152))();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = a1;
  sub_1C75504FC();
  v9 = 0;
  v30 = v8;
  v31 = a1 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (v32[6] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v32[7] + 8 * v11);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_1C6F78124(v14, v13);
      if (__OFADD__(v3[2], (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
      if (sub_1C7551A2C())
      {
        v20 = sub_1C6F78124(v14, v13);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_24;
        }

        v18 = v20;
      }

      v7 &= v7 - 1;
      if (v19)
      {

        v22 = v3[7];
        v23 = *(v22 + 8 * v18);
        *(v22 + 8 * v18) = v15;
      }

      else
      {
        v3[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v3[6] + 16 * v18);
        *v24 = v14;
        v24[1] = v13;
        *(v3[7] + 8 * v18) = v15;

        v25 = v3[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_23;
        }

        v3[2] = v27;
      }

      v9 = v10;
      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v28 = objc_opt_self();
    v29 = sub_1C755065C();
    sub_1C6FEAF80();
    v33 = sub_1C755048C();

    [v28 sendEvent:v29 withPayload:v33];
  }
}

uint64_t FeatureSurveyDataSource.deinit()
{

  return v0;
}

uint64_t FeatureSurveyDataSource.__deallocating_deinit()
{
  FeatureSurveyDataSource.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C7238518()
{
  result = qword_1EC219860;
  if (!qword_1EC219860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219860);
  }

  return result;
}

uint64_t dispatch thunk of FeatureSurveyDataSource.makeAttachmentsForTTR()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C70E8468;

  return v4();
}

uint64_t sub_1C72388D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1C75516BC();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v9 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    a3(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_1C75516BC() / 8 >= v9)
  {
    goto LABEL_14;
  }

  v11 = sub_1C75516BC();
  a2 = a5(v10, v11);
LABEL_11:

  return a4(a1, a2);
}

uint64_t sub_1C7238A14(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

uint64_t StoryAsset.Collection.init()@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
  OUTLINED_FUNCTION_3_70();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CD0];
  a1[1] = v3;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t StoryAsset.Manager.collection(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
  OUTLINED_FUNCTION_3_70();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = MEMORY[0x1E69E7CD0];
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  *a2 = a1;
  a2[1] = v5;
  a2[2] = v5;
  a2[3] = v4;

  return sub_1C75504FC();
}

void StoryAsset.Collection.union(with:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  if (sub_1C7043F5C(v7, v4))
  {
    sub_1C75504FC();
    sub_1C7069AB4(v4, v7);
    v11 = v10;
    sub_1C75504FC();
    sub_1C7069AB4(v6, v9);
    v13 = v12;
    sub_1C75504FC();
    v14 = sub_1C75504FC();
    v15 = sub_1C70738FC(v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
    OUTLINED_FUNCTION_3_70();
    v16 = swift_allocObject();
    *(OUTLINED_FUNCTION_13_48(v16) + 16) = MEMORY[0x1E69E7CC8];
    sub_1C72B86EC();
    if (v17)
    {
      *a2 = v15;
      a2[1] = v11;
      a2[2] = v13;
      a2[3] = v5;
    }

    else
    {

      sub_1C723A15C();
      v20 = OUTLINED_FUNCTION_166_0();
      OUTLINED_FUNCTION_5_55(v20, v21);
    }
  }

  else
  {
    sub_1C723A15C();
    v18 = OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_5_55(v18, v19);
    sub_1C75504FC();
    sub_1C75504FC();
  }
}

uint64_t static StoryAsset.Collection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1C7036A90(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return sub_1C7043F5C(v2, v3);
}

uint64_t StoryAsset.Manager.__allocating_init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[2];
  v6 = MEMORY[0x1E69E7CC8];
  *(result + 40) = 0;
  *(result + 48) = v6;
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(result + 32) = v5;
  return result;
}

void StoryAsset.Collection.subtracting(_:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  sub_1C72B86EC();
  if (v9)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = sub_1C7238A14(v5, v6, sub_1C7420F88, sub_1C74C35FC);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
    OUTLINED_FUNCTION_3_70();
    v11 = swift_allocObject();
    *(OUTLINED_FUNCTION_13_48(v11) + 16) = MEMORY[0x1E69E7CC8];
    sub_1C72B86EC();
    if (v12)
    {
      *a2 = v10;
      a2[1] = v7;
      a2[2] = v8;
      a2[3] = v4;
    }

    else
    {

      sub_1C723A15C();
      v15 = OUTLINED_FUNCTION_166_0();
      *v16 = v7;
      v16[1] = v8;
      OUTLINED_FUNCTION_8_50(v15, v16);
    }
  }

  else
  {
    sub_1C723A15C();
    v13 = OUTLINED_FUNCTION_166_0();
    *v14 = v4;
    v14[1] = v7;
    OUTLINED_FUNCTION_8_50(v13, v14);
    sub_1C75504FC();
    sub_1C75504FC();
  }
}

uint64_t sub_1C7239378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465646E65747865 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701208435 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001C75A5B20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7239490(char a1)
{
  if (!a1)
  {
    return 0x6465646E65747865;
  }

  if (a1 == 1)
  {
    return 1701208435;
  }

  return 0xD000000000000010;
}

uint64_t sub_1C72394EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7239378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7239514(uint64_t a1)
{
  v2 = sub_1C723B78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7239550(uint64_t a1)
{
  v2 = sub_1C723B78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C723958C(uint64_t a1)
{
  v2 = sub_1C723B888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72395C8(uint64_t a1)
{
  v2 = sub_1C723B888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7239604(uint64_t a1)
{
  v2 = sub_1C723B834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7239640(uint64_t a1)
{
  v2 = sub_1C723B834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C723967C(uint64_t a1)
{
  v2 = sub_1C723B7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72396B8(uint64_t a1)
{
  v2 = sub_1C723B7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryAsset.Filter.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219870);
  OUTLINED_FUNCTION_3_0();
  v32 = v4;
  v33 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219878);
  OUTLINED_FUNCTION_3_0();
  v29 = v8;
  v30 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219880);
  OUTLINED_FUNCTION_3_0();
  v26 = v12;
  v27 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219888);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v22 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C723B78C();
  sub_1C755200C();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1C723B834();
      v15 = v28;
      OUTLINED_FUNCTION_4_59();
      v24 = v29;
      v23 = v30;
    }

    else
    {
      sub_1C723B7E0();
      v15 = v31;
      OUTLINED_FUNCTION_4_59();
      v24 = v32;
      v23 = v33;
    }
  }

  else
  {
    sub_1C723B888();
    OUTLINED_FUNCTION_4_59();
    v24 = v26;
    v23 = v27;
  }

  (*(v24 + 8))(v15, v23);
  (*(v18 + 8))(v21, v16);
  OUTLINED_FUNCTION_125();
}

uint64_t StoryAsset.Filter.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void StoryAsset.Filter.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v61 = v0;
  v2 = v1;
  v56 = v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198B0);
  OUTLINED_FUNCTION_3_0();
  v57 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v48 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198B8);
  OUTLINED_FUNCTION_3_0();
  v54 = v8;
  v55 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198C0);
  OUTLINED_FUNCTION_3_0();
  v53 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198C8);
  OUTLINED_FUNCTION_3_0();
  v58 = v18;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C723B78C();
  v22 = v61;
  sub_1C7551FFC();
  if (v22)
  {
    goto LABEL_10;
  }

  v50 = v12;
  v51 = v16;
  v52 = v11;
  v24 = v59;
  v23 = v60;
  v61 = v2;
  v25 = sub_1C7551C5C();
  sub_1C6FD80E0(v25, 0);
  if (v27 == v28 >> 1)
  {
    goto LABEL_9;
  }

  v49 = 0;
  if (v27 < (v28 >> 1))
  {
    LODWORD(v29) = *(v26 + v27);
    sub_1C6FD80C8(v27 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v31 == v33 >> 1;
    v35 = v57;
    if (v34)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          sub_1C723B834();
          v36 = v52;
          OUTLINED_FUNCTION_595();
          v37 = v56;
          v38 = v17;
          v39 = v58;
          swift_unknownObjectRelease();
          (*(v54 + 8))(v36, v55);
          (*(v39 + 8))(v21, v38);
        }

        else
        {
          LODWORD(v55) = v29;
          sub_1C723B7E0();
          v44 = v49;
          sub_1C7551B4C();
          v37 = v56;
          v29 = v17;
          v45 = v58;
          if (v44)
          {
            (*(v58 + 8))(v21, v29);
            swift_unknownObjectRelease();
            v2 = v61;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v35 + 8))(v24, v23);
          (*(v45 + 8))(v21, v29);
          LOBYTE(v29) = v55;
        }
      }

      else
      {
        sub_1C723B888();
        v43 = v51;
        OUTLINED_FUNCTION_595();
        swift_unknownObjectRelease();
        (*(v53 + 8))(v43, v50);
        v46 = OUTLINED_FUNCTION_12_44();
        v47(v46);
        v37 = v56;
      }

      *v37 = v29;
      __swift_destroy_boxed_opaque_existential_1(v61);
      goto LABEL_11;
    }

LABEL_9:
    v40 = sub_1C75518EC();
    OUTLINED_FUNCTION_166_0();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v42 = &type metadata for StoryAsset.Filter;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v21, v17);
    v2 = v61;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  __break(1u);
}

uint64_t StoryAsset.Manager.init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = a1[2];
  v5 = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = 0;
  *(v1 + 48) = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return v1;
}

uint64_t sub_1C723A05C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 != 1)
  {
    if (!v4)
    {
      return 1;
    }

    return sub_1C723B8DC(a1, a2);
  }

  v6 = sub_1C719D92C(a2);
  v8 = v7;
  v10 = v9;
  result = sub_1C719D934(a2);
  if (v10 & 1) != 0 || (v12)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v8 != v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1C719D700(v6, v8, a2, &v17);
  v13 = *(a1 + 16);
  v14 = (a1 + 32);
  do
  {
    v15 = v13-- != 0;
    result = v15;
    if (!v15)
    {
      break;
    }

    v16 = *v14++;
  }

  while (v16 != v17);
  return result;
}

unint64_t sub_1C723A15C()
{
  result = qword_1EC219868;
  if (!qword_1EC219868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219868);
  }

  return result;
}

uint64_t sub_1C723A1B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*a1 + 16) && (sub_1C6FC330C(), (v3 & 1) != 0))
  {
    result = sub_1C75504FC();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1C723A22C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C754F38C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1CC();
  os_unfair_lock_lock(v3 + 10);
  v13 = v3 + 12;
  v14 = v3;
  v15 = a3;
  v9 = sub_1C75504FC();
  v10 = sub_1C6FD9D4C(v9);
  os_unfair_lock_unlock(v3 + 10);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_1C723A3BC(uint64_t *a1)
{
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *a1;
  result = sub_1C6FC91A0();
  *a1 = v3;
  return result;
}

uint64_t StoryAsset.Manager.collection(from:applying:eventRecorder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  sub_1C75504FC();
  if (sub_1C723A05C(a2, v9))
  {

    v12 = sub_1C75504FC();
    sub_1C706E6A8(v12, v13, v14, v15, v16, v17, v18, v19, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43), v44, v45, v46, v47, a4, v49, v50, v51, v52);
    v21 = v20;
    if (sub_1C7043F5C(v9, v20) & 1) != 0 && (sub_1C7043F5C(v11, v21))
    {

      v22 = v48;
      *v48 = v8;
      v22[1] = v9;
      v22[2] = v11;
      v22[3] = v10;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
    }

    else
    {
      v43 = v8;
      v44 = v9;
      v45 = v11;
      v46 = v10;
      v36 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v43, a2, a3);
      if (v4)
      {
      }

      else
      {
        v37 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
        OUTLINED_FUNCTION_3_70();
        v38 = swift_allocObject();
        *(v38 + 24) = 0;
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        sub_1C72B86EC();
        if (v39)
        {
          v40 = v48;
          *v48 = v37;
          v40[1] = v21;
          v40[2] = v21;
          v40[3] = v38;
          return sub_1C75504FC();
        }

        else
        {

          sub_1C723A15C();
          v41 = OUTLINED_FUNCTION_166_0();
          *v42 = v21;
          v42[1] = v21;
          OUTLINED_FUNCTION_8_50(v41, v42);
          sub_1C75504FC();
        }
      }
    }
  }

  else
  {
    v24 = sub_1C75504FC();
    sub_1C706E6A8(v24, v25, v26, v27, v28, v29, v30, v31, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43), v44, v45, v46, v47, v48, v49, v50, v51, v52);
    v33 = v32;
    sub_1C723A15C();
    v34 = OUTLINED_FUNCTION_166_0();
    *v35 = v33;
    v35[1] = v9;
    return OUTLINED_FUNCTION_8_50(v34, v35);
  }
}

uint64_t sub_1C723A630(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v7 = *a2;
  v8 = *a3;
  if (*(*a3 + 16) && (v9 = sub_1C6FCABE8(*a2), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
    sub_1C75504FC();
    sub_1C75504FC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
    v13 = MEMORY[0x1E69E7CD0];
  }

  v14 = *a1;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C7238A14(v13, v14, sub_1C7420F88, sub_1C74C35FC);
  v16 = v15;
  if (*(v15 + 16))
  {
    v24 = v7;
    sub_1C723A7E8(v15, &v24, a5);
    v18 = v17;
    sub_1C75504FC();
    sub_1C70738FC(v18, v12);

    sub_1C70738FC(v16, v13);
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *a3;
    sub_1C6FC92A0();
    *a3 = v23;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_1C7069A44();
  v20 = v19;

  *a1 = v20;
  return result;
}

void sub_1C723A7E8(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v4 = v3;
  v88 = sub_1C754E2FC();
  v8 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C754F38C();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a3[3];
  v82 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v79 = v12;
  sub_1C754F1CC();
  v15 = *(v4 + 24);
  v16 = *(v4 + 32);
  v92 = *(v4 + 16);
  v93 = v15;
  v94 = v16;
  v17 = v92;

  v18 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(a1, &v92);
  v19 = v92;

  v20 = *(v4 + 24);
  v21 = *(v4 + 16);

  v22 = [v21 librarySpecificFetchOptions];
  [v22 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v23 = swift_allocObject();
  v90 = xmmword_1C755BAB0;
  *(v23 + 16) = xmmword_1C755BAB0;
  *(v23 + 32) = sub_1C755068C();
  *(v23 + 40) = v24;
  sub_1C6FCA0EC(v23, v22);
  v83 = v22;
  [v22 setChunkSizeForFetch_];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v25 = swift_allocObject();
    if (v13 == 1)
    {
      *(v25 + 16) = xmmword_1C755D200;
      v26 = MEMORY[0x1E69E6158];
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v27 = sub_1C6F6D524();
      *(v25 + 64) = v27;
      v28 = MEMORY[0x1E69E7290];
      *(v25 + 32) = 0xD000000000000028;
      *(v25 + 40) = 0x80000001C75A3700;
      v29 = MEMORY[0x1E69E72E8];
      *(v25 + 96) = v28;
      *(v25 + 104) = v29;
      *(v25 + 72) = 1;
      *(v25 + 136) = v26;
      *(v25 + 144) = v27;
      *(v25 + 112) = 0xD000000000000028;
      *(v25 + 120) = 0x80000001C75A3700;
      *(v25 + 176) = v28;
      *(v25 + 184) = v29;
      *(v25 + 152) = 2;
      *(v25 + 216) = v26;
      *(v25 + 224) = v27;
      *(v25 + 192) = 0xD000000000000028;
      *(v25 + 200) = 0x80000001C75A3700;
      *(v25 + 256) = v28;
      *(v25 + 264) = v29;
      *(v25 + 232) = -1;
    }

    else
    {
      *(v25 + 16) = xmmword_1C755F060;
      v31 = MEMORY[0x1E69E6158];
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v32 = sub_1C6F6D524();
      *(v25 + 64) = v32;
      *(v25 + 32) = 0xD000000000000028;
      *(v25 + 40) = 0x80000001C75A3700;
      v33 = MEMORY[0x1E69E7290];
      v34 = MEMORY[0x1E69E72E8];
      *(v25 + 96) = MEMORY[0x1E69E7290];
      *(v25 + 104) = v34;
      *(v25 + 72) = 1;
      *(v25 + 136) = v31;
      *(v25 + 144) = v32;
      *(v25 + 112) = 0xD000000000000028;
      *(v25 + 120) = 0x80000001C75A3700;
      *(v25 + 176) = v33;
      *(v25 + 184) = v34;
      *(v25 + 152) = -1;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v30 = swift_allocObject();
    *(v30 + 16) = v90;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C6F6D524();
    *(v30 + 32) = 0xD00000000000001CLL;
    *(v30 + 40) = 0x80000001C75A2960;
  }

  v35 = sub_1C755112C();
  v36 = v83;
  [v83 setInternalPredicate_];

  v37 = objc_opt_self();
  sub_1C71BA844(v18, v45, v38, v39, v40, v41, v42, v43, v44, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, v92);
  v47 = v46;

  v48 = v47;
  v49 = v36;
  v50 = sub_1C740A230(v48, v36, v37);
  if (!v50)
  {
    sub_1C75504FC();

LABEL_36:
    __swift_project_boxed_opaque_existential_1(v82, v82[3]);
    v77 = v79;
    sub_1C754F1AC();
    (*(v80 + 8))(v77, v81);
    return;
  }

  v51 = v50;
  v52 = [v50 count];
  if (v52 < 1)
  {

    goto LABEL_36;
  }

  v53 = v52;
  v54 = 0;
  v92 = MEMORY[0x1E69E7CD0];
  v85 = v51;
  v86 = (v8 + 8);
  v84 = v52;
  while (1)
  {
    v55 = v54 + 1000;
    v56 = __OFADD__(v54, 1000);
    v57 = objc_autoreleasePoolPush();
    if (v56)
    {
      break;
    }

    if (v53 >= v55)
    {
      v58 = v54 + 1000;
    }

    else
    {
      v58 = v53;
    }

    if (v58 < v54)
    {
      goto LABEL_39;
    }

    v59 = v57;
    v60 = v87;
    sub_1C754E26C();
    v61 = sub_1C754E28C();
    (*v86)(v60, v88);
    v62 = [v51 objectsAtIndexes_];

    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v63 = sub_1C7550B5C();

    v64 = sub_1C6FB6304();
    if (v64)
    {
      v65 = v64;
      v91 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      if (v65 < 0)
      {
        goto LABEL_40;
      }

      v89 = v59;
      *&v90 = v55;
      v66 = 0;
      v67 = v91;
      while (1)
      {
        v68 = (v63 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v66, v63) : *(v63 + 8 * v66 + 32);
        v69 = v68;
        v70 = [v69 uuid];
        if (v70)
        {
          v71 = v70;
          v72 = sub_1C755068C();
          v74 = v73;
        }

        else
        {
          v72 = 0;
          v74 = 0;
        }

        if (!v74)
        {
          break;
        }

        v91 = v67;
        v75 = *(v67 + 16);
        if (v75 >= *(v67 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v67 = v91;
        }

        ++v66;
        *(v67 + 16) = v75 + 1;
        v76 = v67 + 16 * v75;
        *(v76 + 32) = v72;
        *(v76 + 40) = v74;
        if (v65 == v66)
        {

          v53 = v84;
          v51 = v85;
          v59 = v89;
          v55 = v90;
          goto LABEL_32;
        }
      }

      __break(1u);
      break;
    }

    v67 = MEMORY[0x1E69E7CC0];
LABEL_32:
    sub_1C73978C4(v67);
    objc_autoreleasePoolPop(v59);
    v54 = v55;
    if (v55 >= v53)
    {

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t StoryAsset.Manager.deinit()
{
  v1 = *(v0 + 16);

  sub_1C723BC08(v0 + 48);
  return v0;
}

uint64_t StoryAsset.Manager.__deallocating_deinit()
{
  StoryAsset.Manager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C723B014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6F92554();
  *a1 = result;
  return result;
}

uint64_t sub_1C723B044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C6F925A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C723B078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6F92554();
  *a1 = result;
  return result;
}

uint64_t sub_1C723B0A0(uint64_t a1)
{
  v2 = sub_1C723BC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C723B0DC(uint64_t a1)
{
  v2 = sub_1C723BC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryAsset.Collection.intersection(with:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C7074704();
  v5 = v4;
  sub_1C7074704();
  v7 = v6;
  sub_1C7069A44();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
  OUTLINED_FUNCTION_3_70();
  v10 = swift_allocObject();
  *(OUTLINED_FUNCTION_13_48(v10) + 16) = MEMORY[0x1E69E7CC8];
  sub_1C72B86EC();
  if (v11)
  {
    *a2 = v9;
    a2[1] = v5;
    a2[2] = v7;
    a2[3] = v3;
  }

  else
  {

    sub_1C723A15C();
    v12 = OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_5_55(v12, v13);
  }
}

void StoryAsset.Collection.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198D8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v10 = *(v0 + 8);
  v11[1] = *(v0 + 16);
  v11[2] = v10;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C723BC70();
  sub_1C75504FC();
  sub_1C755200C();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  sub_1C70FBAD0(&qword_1EDD0CEF0);
  sub_1C7551D2C();

  if (!v1)
  {
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152E8);
    sub_1C723BD18(&qword_1EC2198E8, sub_1C723BCC4);
    OUTLINED_FUNCTION_1_5();
    v12 = 2;
    OUTLINED_FUNCTION_1_5();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_125();
}

void StoryAsset.Collection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198F8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
  OUTLINED_FUNCTION_3_70();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C723BC70();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C70FBAD0(&qword_1EDD0CEE8);
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152E8);
    sub_1C723BD18(&qword_1EC219900, sub_1C723BD90);
    OUTLINED_FUNCTION_9_55();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_9_55();
    sub_1C7551C1C();
    v17 = OUTLINED_FUNCTION_2_75();
    v18(v17);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    v14[3] = v16;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C723B78C()
{
  result = qword_1EC219890;
  if (!qword_1EC219890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219890);
  }

  return result;
}

unint64_t sub_1C723B7E0()
{
  result = qword_1EC219898;
  if (!qword_1EC219898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219898);
  }

  return result;
}

unint64_t sub_1C723B834()
{
  result = qword_1EC2198A0;
  if (!qword_1EC2198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2198A0);
  }

  return result;
}

unint64_t sub_1C723B888()
{
  result = qword_1EC2198A8;
  if (!qword_1EC2198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2198A8);
  }

  return result;
}

uint64_t sub_1C723B8DC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v5, v6);
    v7 = sub_1C723BA68(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1C723BB88(v9, v5, sub_1C723C594);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1C723BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (2)
  {
    v10 = *(v9 + v7++);
    sub_1C7551F3C();
    MEMORY[0x1CCA5E460](v10);
    result = sub_1C7551FAC();
    v12 = ~(-1 << *(a4 + 32));
    while (1)
    {
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = 1 << (result & v12);
      if ((v15 & *(v8 + 8 * v14)) == 0)
      {
        break;
      }

      result = v13 + 1;
      if (*(*(a4 + 48) + v13) == v10)
      {
        v16 = *(a1 + 8 * v14);
        *(a1 + 8 * v14) = v16 | v15;
        if ((v16 & v15) == 0)
        {
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
            return result;
          }

          if (v6 == *(a4 + 16))
          {
            return 1;
          }
        }

        break;
      }
    }

    if (v7 != v4)
    {
      continue;
    }

    break;
  }

  return 0;
}

void *sub_1C723BB88(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1C723BC08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2198D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C723BC70()
{
  result = qword_1EC2198E0;
  if (!qword_1EC2198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2198E0);
  }

  return result;
}

unint64_t sub_1C723BCC4()
{
  result = qword_1EC2198F0;
  if (!qword_1EC2198F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2198F0);
  }

  return result;
}

uint64_t sub_1C723BD18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2152E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C723BD90()
{
  result = qword_1EC219908;
  if (!qword_1EC219908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219908);
  }

  return result;
}

unint64_t sub_1C723BDE8()
{
  result = qword_1EDD0C900;
  if (!qword_1EDD0C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryAsset(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C723BF64(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C723BFA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C723C014(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C723C124()
{
  result = qword_1EC219918;
  if (!qword_1EC219918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219918);
  }

  return result;
}

unint64_t sub_1C723C17C()
{
  result = qword_1EC219920;
  if (!qword_1EC219920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219920);
  }

  return result;
}

unint64_t sub_1C723C1D4()
{
  result = qword_1EC219928;
  if (!qword_1EC219928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219928);
  }

  return result;
}

unint64_t sub_1C723C22C()
{
  result = qword_1EC219930;
  if (!qword_1EC219930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219930);
  }

  return result;
}

unint64_t sub_1C723C284()
{
  result = qword_1EC219938;
  if (!qword_1EC219938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219938);
  }

  return result;
}

unint64_t sub_1C723C2DC()
{
  result = qword_1EC219940;
  if (!qword_1EC219940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219940);
  }

  return result;
}

unint64_t sub_1C723C334()
{
  result = qword_1EC219948;
  if (!qword_1EC219948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219948);
  }

  return result;
}

unint64_t sub_1C723C38C()
{
  result = qword_1EC219950;
  if (!qword_1EC219950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219950);
  }

  return result;
}

unint64_t sub_1C723C3E4()
{
  result = qword_1EC219958;
  if (!qword_1EC219958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219958);
  }

  return result;
}

unint64_t sub_1C723C43C()
{
  result = qword_1EC219960;
  if (!qword_1EC219960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219960);
  }

  return result;
}

unint64_t sub_1C723C494()
{
  result = qword_1EC219968;
  if (!qword_1EC219968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219968);
  }

  return result;
}

unint64_t sub_1C723C4EC()
{
  result = qword_1EC219970;
  if (!qword_1EC219970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219970);
  }

  return result;
}

uint64_t sub_1C723C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C723BA68(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

void static SocialGroupFetcher.fetchCollections(using:uuids:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  sub_1C75504FC();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(a2 + 48) + ((v9 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];
    sub_1C723CFB0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1C75504FC();
    v17 = sub_1C7082A30(v14, v15, ObjCClassFromMetadata);
    v19 = v18;

    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v10 = v23;
      }

      v20 = *(v10 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v10 + 24) >> 1)
      {
        sub_1C6FB1814();
        v21 = v20 + 1;
        v10 = v24;
      }

      *(v10 + 16) = v21;
      v22 = v10 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_1C706D154(v10);
      static SocialGroupFetcher.fetchCollections(using:localIdentifiers:)(a1);

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C723C790()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219978);
  __swift_project_value_buffer(v0, qword_1EC219978);
  return sub_1C754FEFC();
}

uint64_t static SocialGroupFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213EF8 != -1)
  {
    OUTLINED_FUNCTION_0_110();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC219978);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static SocialGroupFetcher.predicateForFavorites(_:)(char a1)
{
  if (qword_1EC213EF8 != -1)
  {
    OUTLINED_FUNCTION_0_110();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC219978);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_1_83();
    *(v5 + 4) = sub_1C6F765A4(v7, v8, &v11);
    _os_log_impl(&dword_1C6F5C000, v3, v4, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  v9 = [objc_opt_self() predicateWithValue_];

  return v9;
}

uint64_t static SocialGroupFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C756AD80;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0xD000000000000017, 0x80000001C75A5B70, 1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x724F6C61756E616DLL, 0xEB00000000726564, a1);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(0x6974616D6F747561, 0xEE00726564724F63, a1);
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 56) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  return v2;
}

uint64_t static SocialGroupFetcher.describe(collections:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v8[4] = sub_1C723CFF4;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C7067B48;
  v8[3] = &block_descriptor_19;
  v5 = _Block_copy(v8);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v3 + 16);
  sub_1C75504FC();

  return v6;
}

uint64_t sub_1C723CC58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C755180C();
  sub_1C723CFB0();
  v6 = sub_1C755204C();
  v8 = v7;

  v23 = v6;
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](0x72476C6169636F53, 0xEB0000000070756FLL);
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v9 = sub_1C70CAC04(a1);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v9, v11);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v12 = sub_1C723D038(a1);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v12 = 0x64656D616E6E75;
    v14 = 0xE700000000000000;
  }

  MEMORY[0x1CCA5CD70](v12, v14);

  MEMORY[0x1CCA5CD70](2629676, 0xE300000000000000);
  [a1 socialGroupVerifiedType];
  v15 = PHSocialGroupVerifiedTypeDescription();
  v16 = sub_1C755068C();
  v18 = v17;

  MEMORY[0x1CCA5CD70](v16, v18);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v19 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v20 = *(a4 + 16);
  *(v20 + 16) = v19 + 1;
  v21 = v20 + 16 * v19;
  *(v21 + 32) = v23;
  *(v21 + 40) = v8;
  *(a4 + 16) = v20;
  return swift_endAccess();
}

id static SocialGroupFetcher.fetchCollections(using:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1C7066104();
  v2 = [objc_opt_self() fetchSocialGroupsWithOptions_];

  return v2;
}

id static SocialGroupFetcher.fetchCollections(using:localIdentifiers:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1C7066104();
  sub_1C71F8834(MEMORY[0x1E69E7CC0], v1);
  v2 = objc_opt_self();
  v3 = sub_1C75504FC();
  sub_1C71CD85C(v3);
  v4 = sub_1C7550B3C();

  v5 = [v2 fetchSocialGroupsWithLocalIdentifiers:v4 options:v1];

  return v5;
}

unint64_t sub_1C723CFB0()
{
  result = qword_1EDD069C0;
  if (!qword_1EDD069C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD069C0);
  }

  return result;
}

uint64_t sub_1C723D038(void *a1)
{
  v1 = [a1 customTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

void static StoryCompletionProcessor.storyAssets(from:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v42 = a2;
  v9 = *(a1 + 16);
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_38:
    sub_1C71BA830(v11, a9, a2, a3, a4, a5, a6, a7, a8, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1]);

    sub_1C755068C();
    v40 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v41 = v43;
    OUTLINED_FUNCTION_0_111();
    return;
  }

  v10 = 0;
  v49 = a1 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v45 = *(a1 + 16);
  while (1)
  {
    v12 = (v49 + 56 * v10);
    v13 = v12[1];
    v15 = v12[3];
    v14 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    sub_1C75504FC();
    v56 = v15;
    sub_1C75504FC();
    v18 = v14;
    v53 = v16;
    v55 = v17;
    sub_1C75504FC();
    v54 = v18;
    v19 = [v18 fetchedObjects];
    if (v19)
    {
      v20 = v19;
      sub_1C6FDEC1C();
      v21 = sub_1C7550B5C();
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v22 = v21 >> 62 ? sub_1C75516BC() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v11 >> 62;
    v24 = v11 >> 62 ? OUTLINED_FUNCTION_4_60() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v24 + v22;
    if (__OFADD__(v24, v22))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v23)
      {
        v26 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      OUTLINED_FUNCTION_4_60();
      goto LABEL_17;
    }

    if (v23)
    {
      goto LABEL_16;
    }

LABEL_17:
    v11 = OUTLINED_FUNCTION_3_71();
    v26 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v58 = v22;
    v52 = v11;
    v27 = *(v26 + 16);
    v28 = (*(v26 + 24) >> 1) - v27;
    v29 = v26 + 8 * v27;
    v50 = v26;
    if (v21 >> 62)
    {
      v31 = sub_1C75516BC();
      if (v31)
      {
        v32 = v31;
        v51 = v21;
        v48 = sub_1C75516BC();
        if (v28 < v48)
        {
          goto LABEL_42;
        }

        if (v32 < 1)
        {
          goto LABEL_44;
        }

        v46 = v13;
        v47 = v10;
        sub_1C6FC04C0();
        for (i = 0; i != v32; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150);
          v34 = sub_1C6FDD09C(v57, i, v21);
          v36 = *v35;
          OUTLINED_FUNCTION_1_84();
          v34();
          *(v29 + 32 + 8 * i) = v29;
        }

        v9 = v45;
        v10 = v47;
        v30 = v48;
        goto LABEL_28;
      }
    }

    else
    {
      v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        v51 = v21;
        if (v28 < v30)
        {
          goto LABEL_43;
        }

        sub_1C6FDEC1C();
        OUTLINED_FUNCTION_2_76();
LABEL_28:

        if (v30 < v58)
        {
          goto LABEL_40;
        }

        if (v30 > 0)
        {
          v37 = *(v50 + 16);
          v38 = __OFADD__(v37, v30);
          v39 = v37 + v30;
          if (v38)
          {
            goto LABEL_41;
          }

          *(v50 + 16) = v39;
        }

        goto LABEL_33;
      }
    }

    if (v58 > 0)
    {
      goto LABEL_40;
    }

LABEL_33:
    ++v10;

    v11 = v52;
    if (v10 == v9)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
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
}

void static StoryCompletionProcessor.storyCuratedAssets(from:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v45 = a2;
  v9 = *(a1 + 16);
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_38:
    sub_1C71BA830(v11, a9, a2, a3, a4, a5, a6, a7, a8, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1]);

    sub_1C755068C();
    v43 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v44 = v46;
    OUTLINED_FUNCTION_0_111();
    return;
  }

  v10 = 0;
  v54 = a1 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v48 = *(a1 + 16);
  while (1)
  {
    v12 = (v54 + 56 * v10);
    v13 = v12[1];
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    sub_1C75504FC();
    sub_1C75504FC();
    v58 = v15;
    v18 = v16;
    v59 = v17;
    sub_1C75504FC();
    v57 = v18;
    v19 = [v18 fetchedObjects];
    if (v19)
    {
      v20 = v19;
      sub_1C6FDEC1C();
      v21 = sub_1C7550B5C();
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v22 = v21 >> 62 ? sub_1C75516BC() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v11 >> 62;
    v24 = v11 >> 62 ? OUTLINED_FUNCTION_4_60() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v22;
    v25 = __OFADD__(v24, v22);
    v26 = v24 + v22;
    if (v25)
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v23)
      {
        v27 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v26 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      OUTLINED_FUNCTION_4_60();
      goto LABEL_17;
    }

    if (v23)
    {
      goto LABEL_16;
    }

LABEL_17:
    v11 = OUTLINED_FUNCTION_3_71();
    v27 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v56 = v11;
    v28 = *(v27 + 16);
    v29 = (*(v27 + 24) >> 1) - v28;
    v30 = v27 + 8 * v28;
    if (v21 >> 62)
    {
      v34 = sub_1C75516BC();
      v35 = v21;
      if (v34)
      {
        v36 = v34;
        v55 = v35;
        v53 = sub_1C75516BC();
        if (v29 < v53)
        {
          goto LABEL_42;
        }

        if (v36 < 1)
        {
          goto LABEL_44;
        }

        v49 = v27;
        v50 = v14;
        v51 = v13;
        v52 = v10;
        sub_1C6FC04C0();
        for (i = 0; i != v36; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150);
          v38 = sub_1C6FDD09C(v60, i, v55);
          v40 = *v39;
          OUTLINED_FUNCTION_1_84();
          v38();
          *(v30 + 32 + 8 * i) = v30;
        }

        v9 = v48;
        v10 = v52;
        v33 = v53;
        goto LABEL_28;
      }
    }

    else
    {
      v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v21;
      if (v31)
      {
        v33 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v55 = v32;
        if (v29 < v31)
        {
          goto LABEL_43;
        }

        sub_1C6FDEC1C();
        OUTLINED_FUNCTION_2_76();
LABEL_28:

        if (v33 < v61)
        {
          goto LABEL_40;
        }

        if (v33 > 0)
        {
          v41 = *(v27 + 16);
          v25 = __OFADD__(v41, v33);
          v42 = v41 + v33;
          if (v25)
          {
            goto LABEL_41;
          }

          *(v27 + 16) = v42;
        }

        goto LABEL_33;
      }
    }

    if (v61 > 0)
    {
      goto LABEL_40;
    }

LABEL_33:
    ++v10;

    v11 = v56;
    if (v10 == v9)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
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
}

uint64_t MaestroMusicLibraryManagerError.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C723D8D4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219990);
  __swift_project_value_buffer(v0, qword_1EC219990);
  return sub_1C754FEFC();
}

uint64_t static MaestroMusicLibraryManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213F00 != -1)
  {
    OUTLINED_FUNCTION_0_112();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC219990);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MaestroMusicLibraryManager.init(photoLibrary:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C723DA10()
{
  v1 = *(v0 + 24);
  v2 = sub_1C75504DC();
  *(v0 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1C723DAE0;
  v4 = *(v0 + 24);

  return static MaestroMusicLibraryManager.requestKeywordsBySongId(_:options:)(v4, v2);
}

uint64_t sub_1C723DAE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = sub_1C723DC68;
  }

  else
  {
    *(v4 + 56) = a1;
    v6 = sub_1C723DC44;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C723DC44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 24);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1C723DC68()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static MaestroMusicLibraryManager.requestKeywordsBySongId(_:options:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C723DCE0()
{
  v25 = v0;
  v1 = [*(v0 + 152) photoAnalysisClient];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    if (qword_1EC213F00 != -1)
    {
      OUTLINED_FUNCTION_0_112();
    }

    v3 = *(v0 + 160);
    v4 = sub_1C754FF1C();
    *(v0 + 176) = __swift_project_value_buffer(v4, qword_1EC219990);
    sub_1C75504FC();
    v5 = sub_1C754FEEC();
    v6 = sub_1C75511BC();

    if (os_log_type_enabled(v5, v6))
    {
      swift_slowAlloc();
      v7 = OUTLINED_FUNCTION_31_0();
      v24 = v7;
      *v3 = 136315138;
      v8 = sub_1C75504BC();
      v10 = sub_1C6F765A4(v8, v9, &v24);

      *(v3 + 4) = v10;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70C10E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    v16 = sub_1C755048C();
    *(v0 + 184) = v16;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1C723E084;
    v17 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199B0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1C723F370;
    *(v0 + 104) = &block_descriptor_20;
    *(v0 + 112) = v17;
    [v2 requestMaestroSongsWithOptions:v16 reply:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EC213F00 != -1)
    {
      OUTLINED_FUNCTION_0_112();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EC219990);
    v19 = sub_1C754FEEC();
    v20 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "(PAD pass thru) requestMaestroSongs photoAnalysisClientNotAvailable", v21, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C723E314();
    swift_allocError();
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1C723E084()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1C723E29C;
  }

  else
  {
    v2 = sub_1C723E194;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C723E194()
{
  v1 = *(v0 + 144);

  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  v4 = OUTLINED_FUNCTION_128(v3);
  v5 = *(v0 + 168);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1 + 16);

    OUTLINED_FUNCTION_39();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(v1);
}

uint64_t sub_1C723E29C()
{
  v1 = v0[23];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1C723E314()
{
  result = qword_1EC2199A8;
  if (!qword_1EC2199A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2199A8);
  }

  return result;
}

void sub_1C723E380()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = v33;
    v5 = sub_1C70D4544(v1);
    v6 = 0;
    v7 = v1 + 64;
    v30 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v1 + 36) != v4)
        {
          goto LABEL_27;
        }

        v31 = v6;
        v32 = v4;
        v9 = (*(v1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v33 + 16);
        v12 = *(v33 + 24);
        sub_1C75504FC();
        if (v13 >= v12 >> 1)
        {
          sub_1C6F7ED9C();
        }

        *(v33 + 16) = v13 + 1;
        v14 = v33 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v15 = 1 << *(v1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_28;
        }

        v7 = v1 + 64;
        v16 = *(v1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v1 + 36) != v32)
        {
          goto LABEL_30;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v30;
        }

        else
        {
          v19 = v8 << 6;
          v18 = v30;
          v20 = (v1 + 72 + 8 * v8);
          v21 = v8 + 1;
          while (v21 < (v15 + 63) >> 6)
          {
            v23 = *v20++;
            v22 = v23;
            v19 += 64;
            ++v21;
            if (v23)
            {
              OUTLINED_FUNCTION_7_49();
              sub_1C6F9ED50(v5, v24, v25);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          OUTLINED_FUNCTION_7_49();
          sub_1C6F9ED50(v5, v26, v27);
        }

LABEL_18:
        v6 = v31 + 1;
        if (v31 + 1 == v18)
        {
          v0 = v29;
          goto LABEL_22;
        }

        v4 = *(v1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
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
    __break(1u);
  }

  else
  {
LABEL_22:
    v28 = *(v0 + 8);

    v28(v3);
  }
}

uint64_t MaestroMusicLibraryManager.allMaestroKeywords(_:)(char a1)
{
  LOBYTE(v42) = a1;
  v3 = *(v1 + 8);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v7)
          {
            goto LABEL_20;
          }

          v6 = *(v3 + 64 + 8 * v10);
          ++v8;
          if (v6)
          {
            v8 = v10;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        OUTLINED_FUNCTION_0_112();
        goto LABEL_21;
      }

LABEL_9:
      v11 = *(*(v3 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      v12 = *(v11 + 16);
      v13 = *(v9 + 16);
      v2 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
        goto LABEL_43;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v2 > *(v9 + 24) >> 1)
      {
        sub_1C6FB1814();
        v9 = v14;
      }

      v6 &= v6 - 1;
      if (!*(v11 + 16))
      {
        break;
      }

      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v12)
      {
        goto LABEL_44;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v15 = *(v9 + 16);
        v16 = __OFADD__(v15, v12);
        v17 = v15 + v12;
        if (v16)
        {
          goto LABEL_45;
        }

        *(v9 + 16) = v17;
      }
    }
  }

  while (!v12);
  __break(1u);
LABEL_20:

  v18 = sub_1C706D154(v9);
  v43[0] = sub_1C71CD85C(v18);
  sub_1C75504FC();
  sub_1C70401E8();

  v2 = v43[0];
  if (qword_1EC213F00 != -1)
  {
    goto LABEL_46;
  }

LABEL_21:
  v19 = sub_1C754FF1C();
  __swift_project_value_buffer(v19, qword_1EC219990);

  v20 = sub_1C754FEEC();
  v21 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v2 + 16);

    _os_log_impl(&dword_1C6F5C000, v20, v21, "Found %ld unique Maestro keywords", v22, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  if ((v42 & 1) == 0)
  {
    return v2;
  }

  v23 = 0;
  v24 = *(v2 + 16);
  v25 = v2 + 40;
  v42 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v26 = (v25 + 16 * v23);
  while (v24 != v23)
  {
    if (v23 >= *(v2 + 16))
    {
      goto LABEL_42;
    }

    v27 = *(v26 - 1);
    v28 = *v26;
    v43[0] = v27;
    v43[1] = v28;
    sub_1C6FB5E8C();
    sub_1C75504FC();
    if ((sub_1C75515AC() & 1) == 0)
    {
      v29 = v42;
      v44 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6F7ED9C();
        v29 = v44;
      }

      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_15(v30);
        sub_1C6F7ED9C();
        v29 = v44;
      }

      ++v23;
      *(v29 + 16) = v31 + 1;
      v42 = v29;
      v32 = v29 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v28;
      v25 = v2 + 40;
      goto LABEL_26;
    }

    v26 += 2;
    ++v23;
  }

  v33 = v42;

  v34 = sub_1C754FEEC();
  v35 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43[0] = v37;
    *v36 = 134218242;
    *(v36 + 4) = *(v42 + 16);

    *(v36 + 12) = 2080;
    v38 = MEMORY[0x1CCA5D090](v42, MEMORY[0x1E69E6158]);
    v40 = sub_1C6F765A4(v38, v39, v43);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_1C6F5C000, v34, v35, "Found %ld Maestro keywords excluding moods: %s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v33;
}

void MaestroMusicLibraryManager.allMoodKeywords(removeMoodTagPrefix:)(int a1)
{
  v2 = MaestroMusicLibraryManager.allMaestroKeywords(_:)(1);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v2 + 40 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v6 - 1);
    v7 = *v6;
    sub_1C75504FC();
    if (sub_1C755092C())
    {
      v24 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6F7ED9C();
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_15(v9);
        sub_1C6F7ED9C();
      }

      ++v3;
      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v8;
      v11[5] = v7;
      a1 = v24;
      goto LABEL_2;
    }

    v6 += 2;
    ++v3;
  }

  if (a1)
  {
    v12 = v5[2];
    if (v12)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v13 = v5 + 5;
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        swift_bridgeObjectRetain_n();
        v16 = sub_1C75507FC();
        v17 = sub_1C70CE56C(v16, v14, v15);
        v18 = MEMORY[0x1CCA5CC40](v17);
        v20 = v19;

        v22 = *(v25 + 16);
        v21 = *(v25 + 24);
        if (v22 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_15(v21);
          sub_1C6F7ED9C();
        }

        *(v25 + 16) = v22 + 1;
        v23 = v25 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v13 += 2;
        --v12;
      }

      while (v12);
    }
  }
}

uint64_t MaestroMusicLibraryManager.songIDsForKeywords(_:)(unint64_t a1)
{
  v4 = *(v1 + 8);
  v47 = a1;
  v5 = sub_1C723F424(v4, sub_1C723F788, v46);
  v6 = v5[2];
  if (v6)
  {
    v42 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v7 = v48;
    v9 = sub_1C70D4544(v5);
    v10 = 0;
    v11 = (v5 + 8);
    v43 = v6;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v5 + 32))
      {
        v12 = v9 >> 6;
        v2 = 1 << v9;
        if ((*&v11[8 * (v9 >> 6)] & (1 << v9)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v5 + 9) != v8)
        {
          goto LABEL_30;
        }

        v44 = v10;
        v45 = v8;
        v13 = (v5[6] + 16 * v9);
        a1 = *v13;
        v14 = v13[1];
        v48 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        sub_1C75504FC();
        if (v16 >= v15 >> 1)
        {
          sub_1C6F7ED9C();
          v7 = v48;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = a1;
        *(v17 + 40) = v14;
        v18 = 1 << *(v5 + 32);
        if (v9 >= v18)
        {
          goto LABEL_31;
        }

        v11 = (v5 + 8);
        v19 = v5[v12 + 8];
        if ((v19 & v2) == 0)
        {
          goto LABEL_32;
        }

        if (*(v5 + 9) != v45)
        {
          goto LABEL_33;
        }

        v20 = v19 & (-2 << (v9 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v21 = v43;
        }

        else
        {
          v2 = v12 << 6;
          v22 = v12 + 1;
          v21 = v43;
          v23 = &v5[v12 + 9];
          while (v22 < (v18 + 63) >> 6)
          {
            v24 = *v23++;
            a1 = v24;
            v2 += 64;
            ++v22;
            if (v24)
            {
              OUTLINED_FUNCTION_7_49();
              sub_1C6F9ED50(v9, v25, v26);
              v18 = __clz(__rbit64(a1)) + v2;
              goto LABEL_18;
            }
          }

          OUTLINED_FUNCTION_7_49();
          sub_1C6F9ED50(v9, v27, v28);
        }

LABEL_18:
        v10 = v44 + 1;
        if (v44 + 1 == v21)
        {

          a1 = v42;
          goto LABEL_23;
        }

        v8 = *(v5 + 9);
        v9 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

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
    goto LABEL_34;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_23:
  if (qword_1EC213F00 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_112();
  }

  v29 = sub_1C754FF1C();
  __swift_project_value_buffer(v29, qword_1EC219990);
  sub_1C75504FC();
  sub_1C75504FC();
  v30 = sub_1C754FEEC();
  v31 = sub_1C755117C();

  if (os_log_type_enabled(v30, v31))
  {
    swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_31_0();
    v48 = v32;
    *v2 = 134218242;
    *(v2 + 4) = *(v7 + 16);

    *(v2 + 12) = 2080;
    v33 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
    v35 = sub_1C6F765A4(v33, v34, &v48);

    *(v2 + 14) = v35;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v7;
}

BOOL sub_1C723F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C75504FC();
  v6 = sub_1C706D154(v5);
  v7 = *(sub_1C72B8CBC(a4, v6) + 16);

  return v7 != 0;
}

uint64_t MaestroMusicLibraryManager.songsForMoods(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = *v1;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v5 = v24;
    v22 = v2;
    v6 = (v2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      sub_1C75504FC();
      if ((sub_1C755092C() & 1) == 0)
      {
        v23[0] = 0x5F646F6F4DLL;
        v23[1] = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](v8, v7);

        v7 = 0xE500000000000000;
        v8 = 0x5F646F6F4DLL;
      }

      v24 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_15(v9);
        sub_1C6F7ED9C();
        v5 = v24;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 2;
      --v4;
    }

    while (v4);
    v2 = v22;
    v3 = v21;
  }

  *v23 = v3;
  v12 = MaestroMusicLibraryManager.songIDsForKeywords(_:)(v5);

  if (qword_1EC213F00 != -1)
  {
    OUTLINED_FUNCTION_0_112();
  }

  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EC219990);
  sub_1C75504FC();
  sub_1C75504FC();
  v14 = sub_1C754FEEC();
  v15 = sub_1C755117C();

  if (os_log_type_enabled(v14, v15))
  {
    swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_31_0();
    v23[0] = v16;
    *v5 = 134218242;
    *(v5 + 4) = *(v12 + 16);

    *(v5 + 12) = 2080;
    v17 = MEMORY[0x1CCA5D090](v2, MEMORY[0x1E69E6158]);
    v19 = sub_1C6F765A4(v17, v18, v23);

    *(v5 + 14) = v19;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Found %ld songs matching moods: %s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1C723F370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v7 = sub_1C75504AC();

    return sub_1C6FF5698(v4, v7);
  }
}

void *sub_1C723F424(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_4_61();
      a3 = sub_1C723F6F8(v13, v14, v15, v16);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C71FAC38(0, v6, v17 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_4_61();
  sub_1C723F584(v7, v8, v9, v10);
  if (!v3)
  {
    return v11;
  }

  swift_willThrow();
  return a3;
}

void sub_1C723F584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484100();
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C723F6F8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C723F584(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1C723F794()
{
  result = qword_1EC2199B8;
  if (!qword_1EC2199B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2199B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MaestroMusicLibraryManagerError(_BYTE *result, int a2, int a3)
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