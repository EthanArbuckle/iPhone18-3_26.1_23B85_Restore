id StoryRemoteConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C71FD10C()
{
  result = qword_1EC2190C8;
  if (!qword_1EC2190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2190C8);
  }

  return result;
}

id StoryRemoteConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryRemoteConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C71FD1A4(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for StoryRemoteConfiguration.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C71FD318()
{
  result = qword_1EC2190D0;
  if (!qword_1EC2190D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2190D0);
  }

  return result;
}

uint64_t AssetDescriber.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t static AssetDescriber.requiredFetchPropertySets.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755D200;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1C755068C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1C755068C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1C755068C();
  *(v0 + 120) = v6;
  return v0;
}

void AssetDescriber.describe(assets:momentByAssetUUID:meaningLabelsByAssetUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = objc_autoreleasePoolPush();
  sub_1C71FD578(a1, v7, a2, a3, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C71FD578@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v6;
  v161 = a2;
  v13 = type metadata accessor for AssetDescriptionInfo(0);
  v159 = *(v13 - 8);
  v160 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v147 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v171 = &v147 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v167 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v170 = &v147 - v24;
  v25 = [a1 fetchPropertySets];
  if (!v25 || (v26 = v25, v27 = sub_1C7550F8C(), v26, Property = static AssetDescriber.requiredFetchPropertySets.getter(), LOBYTE(v26) = sub_1C71EF4E4(Property, v27), , (v26 & 1) == 0))
  {
    sub_1C71FE634();
    v146 = swift_allocError();
    result = swift_willThrow();
    *a5 = v146;
    return result;
  }

  v162 = [a1 count];
  if (v162 < 1)
  {
    result = sub_1C75504DC();
LABEL_107:
    *a6 = result;
    return result;
  }

  v149 = a6;
  v29 = MEMORY[0x1E69E7CC0];
  v30 = [v161 librarySpecificFetchOptions];
  [v30 setPersonContext_];
  v176 = v29;
  sub_1C755195C();
  sub_1C7551EFC();
  sub_1C755192C();
  OUTLINED_FUNCTION_0_104();
  OUTLINED_FUNCTION_3_67();
  sub_1C755193C();
  sub_1C7551EFC();
  sub_1C755192C();
  OUTLINED_FUNCTION_0_104();
  OUTLINED_FUNCTION_3_67();
  sub_1C755193C();
  sub_1C7082AAC(v176, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C75650C0;
  v32 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v31 + 32) = sub_1C6F6AF98(1701869940, 0xE400000000000000, 0);
  v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v31 + 40) = sub_1C6F6AF98(0x724F6C61756E616DLL, 0xEB00000000726564, 1);
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v31 + 48) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v31, v30);
  v35 = objc_opt_self();
  v148 = v30;
  v36 = [v35 fetchPersonsGroupedByAssetLocalIdentifierForAssets:a1 options:v30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F80);
  v158 = sub_1C75504AC();

  v37 = 0;
  v169 = MEMORY[0x1E69E7CC8];
  v155 = a3;
  v156 = a1;
  v157 = v15;
  v38 = v167;
  v150 = a4;
  while (1)
  {
    v39 = [a1 objectAtIndexedSubscript_];
    v173 = sub_1C6FCA214(v39);
    v174 = v40;
    if (!v40)
    {

      goto LABEL_103;
    }

    v41 = *(a3 + 16);
    v163 = v37;
    if (v41)
    {
      v42 = sub_1C6F78124(v173, v174);
      if (v43)
      {
        v44 = [*(*(a3 + 56) + 8 * v42) processedLocation];
        LODWORD(v166) = 0;
        HIDWORD(v166) = v44;
      }

      else
      {
        v166 = 1;
      }

      v38 = v167;
    }

    else
    {
      v166 = 1;
    }

    v45 = [v39 localIdentifier];
    v46 = sub_1C755068C();
    v48 = v47;

    v172 = v39;
    v49 = [v39 creationDate];
    if (v49)
    {
      v50 = v49;
      sub_1C754DF2C();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v38, v51, 1, v52);
    sub_1C6FF51C8(v38, v170);
    v176 = v161;
    v53 = v172;
    sub_1C71FE428(v172, v171);
    v54 = swift_slowAlloc();
    v55 = [v53 photosOneUpProperties];
    if (!v55)
    {
      goto LABEL_118;
    }

    v56 = v55;
    v57 = [v55 localizedGeoDescriptionIsHome_];

    if (v57)
    {
      v58 = sub_1C755068C();
      v164 = v59;
      v165 = v58;
    }

    else
    {
      v164 = 0;
      v165 = 0;
    }

    if (!*(v158 + 16))
    {
      v71 = MEMORY[0x1E69E7CC0];
      v175 = MEMORY[0x1E69E7CC0];
LABEL_74:

      goto LABEL_75;
    }

    v60 = v158;
    v61 = sub_1C6F78124(v46, v48);
    v63 = v62;

    if (v63)
    {
      v64 = [*(*(v60 + 56) + 8 * v61) fetchedObjects];
      if (v64)
      {
        v65 = v64;
        sub_1C71FE810();
        v66 = sub_1C7550B5C();

        v176 = MEMORY[0x1E69E7CC0];
        v67 = sub_1C6FB6304();
        v68 = 0;
        v175 = v66 & 0xFFFFFFFFFFFFFF8;
        while (v67 != v68)
        {
          if ((v66 & 0xC000000000000001) != 0)
          {
            v69 = MEMORY[0x1CCA5DDD0](v68, v66);
          }

          else
          {
            if (v68 >= *(v175 + 16))
            {
              goto LABEL_109;
            }

            v69 = *(v66 + 8 * v68 + 32);
          }

          v70 = v69;
          if (__OFADD__(v68, 1))
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
            goto LABEL_116;
          }

          if ([v69 detectionType] == 1)
          {
            sub_1C755192C();
            OUTLINED_FUNCTION_0_104();
            OUTLINED_FUNCTION_3_67();
            sub_1C755193C();
          }

          else
          {
          }

          ++v68;
        }

        v152 = v66 & 0xC000000000000001;
        v153 = v66;
        v151 = v8;
        v72 = v176;
        v73 = sub_1C6FB6304();
        v74 = 0;
        v154 = MEMORY[0x1E69E7CC0];
        while (v73 != v74)
        {
          if ((v72 & 0xC000000000000001) != 0)
          {
            v75 = MEMORY[0x1CCA5DDD0](v74, v72);
          }

          else
          {
            if (v74 >= *(v72 + 16))
            {
              goto LABEL_111;
            }

            v75 = *(v72 + 8 * v74 + 32);
          }

          v76 = v75;
          v77 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            goto LABEL_110;
          }

          v78 = sub_1C70CAC04(v75);
          v80 = v79;

          ++v74;
          if (v80)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v154 = v85;
            }

            v82 = *(v154 + 16);
            v81 = *(v154 + 24);
            if (v82 >= v81 >> 1)
            {
              OUTLINED_FUNCTION_2_0(v81);
              sub_1C6FB1814();
              v154 = v86;
            }

            v83 = v154;
            *(v154 + 16) = v82 + 1;
            v84 = v83 + 16 * v82;
            *(v84 + 32) = v78;
            *(v84 + 40) = v80;
            v74 = v77;
          }
        }

        sub_1C706D154(v154);
        sub_1C703FD7C();
        v88 = v87;

        v89 = 0;
        v176 = MEMORY[0x1E69E7CC0];
        v90 = v153;
        v91 = v152;
        while (v67 != v89)
        {
          if (v91)
          {
            v92 = MEMORY[0x1CCA5DDD0](v89, v90);
          }

          else
          {
            if (v89 >= *(v175 + 16))
            {
              goto LABEL_113;
            }

            v92 = *(v90 + 8 * v89 + 32);
          }

          v93 = v92;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_112;
          }

          if ([v92 detectionType] == 1)
          {
          }

          else
          {
            sub_1C755192C();
            OUTLINED_FUNCTION_0_104();
            OUTLINED_FUNCTION_3_67();
            sub_1C755193C();
          }

          ++v89;
        }

        v175 = v88;

        v94 = v176;
        v95 = sub_1C6FB6304();
        v96 = 0;
        v97 = MEMORY[0x1E69E7CC0];
        while (v95 != v96)
        {
          if ((v94 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x1CCA5DDD0](v96, v94);
          }

          else
          {
            if (v96 >= *(v94 + 16))
            {
              goto LABEL_115;
            }

            v98 = *(v94 + 8 * v96 + 32);
          }

          v99 = v98;
          v100 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            goto LABEL_114;
          }

          v101 = sub_1C70CAC04(v98);
          v103 = v102;

          ++v96;
          if (v103)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v97 = v107;
            }

            v105 = *(v97 + 16);
            v104 = *(v97 + 24);
            if (v105 >= v104 >> 1)
            {
              OUTLINED_FUNCTION_2_0(v104);
              sub_1C6FB1814();
              v97 = v108;
            }

            *(v97 + 16) = v105 + 1;
            v106 = v97 + 16 * v105;
            *(v106 + 32) = v101;
            *(v106 + 40) = v103;
            v96 = v100;
          }
        }

        sub_1C706D154(v97);
        sub_1C703FD7C();
        v71 = v109;
        v8 = v151;
        a4 = v150;
        goto LABEL_74;
      }
    }

    v71 = MEMORY[0x1E69E7CC0];
    v175 = MEMORY[0x1E69E7CC0];
LABEL_75:
    if (*(a4 + 16) && (v110 = sub_1C6F78124(v173, v174), (v111 & 1) != 0))
    {
      v112 = *(*(a4 + 56) + 8 * v110);
      sub_1C75504FC();
    }

    else
    {
      v112 = 0;
    }

    v113 = v172;
    v114 = [v172 mediaType];
    if (v114 < 2)
    {
      v117 = [v113 cameraCaptureDeviceProperties];
      if (!v117)
      {
        goto LABEL_119;
      }

      v118 = v117;
      v119 = [v117 isSelfie];

      v120 = v119 == 0;
      v121 = v119 ? 0x6569666C6573 : 0x6F746F6870;
      v115 = v120 ? 0xE500000000000000 : 0xE600000000000000;
    }

    else
    {
      v115 = 0xE500000000000000;
      if (v114 == 2)
      {
        v116 = 1701079414;
      }

      else
      {
        v116 = v114 == 3 ? 1768191329 : 1953458288;
      }

      v121 = v116 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    }

    v122 = v168;
    sub_1C717E390(v170, v168, &unk_1EC219230);
    v123 = v160;
    sub_1C717E390(v171, v122 + v160[5], &unk_1EC218C70);
    v124 = (v122 + v123[6]);
    v125 = v164;
    *v124 = v165;
    v124[1] = v125;
    v126 = v122 + v123[7];
    LOBYTE(v125) = v166;
    *v126 = WORD2(v166);
    *(v126 + 2) = v125;
    *(v122 + v123[8]) = v175;
    *(v122 + v123[9]) = v71;
    *(v122 + v123[10]) = v112;
    v127 = (v122 + v123[11]);
    *v127 = v121;
    v127[1] = v115;
    sub_1C71FE688(v122, v157);
    v128 = v169;
    swift_isUniquelyReferenced_nonNull_native();
    v176 = v128;
    v129 = sub_1C6F78124(v173, v174);
    if (__OFADD__(v128[2], (v130 & 1) == 0))
    {
      break;
    }

    v131 = v129;
    v132 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190E8);
    if (sub_1C7551A2C())
    {
      v133 = sub_1C6F78124(v173, v174);
      a1 = v156;
      if ((v132 & 1) != (v134 & 1))
      {
        goto LABEL_120;
      }

      v131 = v133;
    }

    else
    {
      a1 = v156;
    }

    v38 = v167;
    v135 = v176;
    v169 = v176;
    if (v132)
    {
      v136 = OUTLINED_FUNCTION_1_79();
      sub_1C71FE7AC(v136, v137);
    }

    else
    {
      v176[(v131 >> 6) + 8] |= 1 << v131;
      v138 = (v135[6] + 16 * v131);
      v139 = v174;
      *v138 = v173;
      v138[1] = v139;
      v140 = OUTLINED_FUNCTION_1_79();
      sub_1C71FE6EC(v140, v141);
      v142 = v169[2];
      v143 = __OFADD__(v142, 1);
      v144 = v142 + 1;
      if (v143)
      {
        goto LABEL_117;
      }

      v169[2] = v144;
    }

    sub_1C71FE750(v168);
    sub_1C7030CDC(v171, &unk_1EC218C70);
    sub_1C7030CDC(v170, &unk_1EC219230);
    a3 = v155;
    v37 = v163;
LABEL_103:
    if (++v37 == v162)
    {

      a6 = v149;
      result = v169;
      goto LABEL_107;
    }
  }

LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C71FE318()
{
  result = qword_1EC2190D8;
  if (!qword_1EC2190D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2190D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetDescriber.Error(_BYTE *result, int a2, int a3)
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

void sub_1C71FE428(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754E35C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 originalMetadataProperties];
  if (!v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 timeZone];

  if (v11)
  {
    sub_1C754E33C();

    (*(v5 + 32))(a2, v8, v4);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    return;
  }

  v12 = [a1 localDateProperties];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  v16 = [v12 inferredTimeZoneOffset];

  if (v16)
  {
    [v16 integerValue];
    sub_1C754E31C();
    v14 = v16;
  }

  else
  {

    __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

unint64_t sub_1C71FE634()
{
  result = qword_1EC2190E0;
  if (!qword_1EC2190E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2190E0);
  }

  return result;
}

uint64_t sub_1C71FE688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDescriptionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71FE6EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDescriptionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71FE750(uint64_t a1)
{
  v2 = type metadata accessor for AssetDescriptionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C71FE7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDescriptionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C71FE810()
{
  result = qword_1EDD100F0;
  if (!qword_1EDD100F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD100F0);
  }

  return result;
}

void FMSong.maestroKeywords()()
{
  v1 = [v0 weightedKeywords];
  OUTLINED_FUNCTION_19_1();
  sub_1C6FA7014();
  v2 = sub_1C75504AC();

  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  sub_1C75504FC();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
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
            goto LABEL_18;
          }

          v5 = *(v2 + 64 + 8 * v10);
          ++v8;
          if (v5)
          {
            v8 = v10;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_7:
      sub_1C6FB5E8C();
      v11 = sub_1C755152C();
      v12 = *(v11 + 16);
      v13 = *(v9 + 16);
      if (__OFADD__(v13, v12))
      {
        goto LABEL_20;
      }

      v14 = v11;
      if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v9 + 24) >> 1)
      {
        sub_1C6FB1814();
        v9 = v15;
      }

      v5 &= v5 - 1;
      if (!*(v14 + 16))
      {
        break;
      }

      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v12)
      {
        goto LABEL_21;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v16 = *(v9 + 16);
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_22;
        }

        *(v9 + 16) = v18;
      }
    }
  }

  while (!v12);
  __break(1u);
LABEL_18:
}

void FMSong.moodTags()()
{
  OUTLINED_FUNCTION_33();
  v25 = *MEMORY[0x1E69E9840];
  v1 = [v0 tagIDs];
  v2 = sub_1C7550F8C();

  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v21[1] = v21;
    MEMORY[0x1EEE9AC00](v3);
    v21[2] = v5;
    v22 = v21 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v5, v22);
    v23 = 0;
    v7 = 0;
    v2 += 56;
    OUTLINED_FUNCTION_11();
    v6 = v9 & v8;
    v5 = (v10 + 63) >> 6;
    v24 = *MEMORY[0x1E699F6A8];
    while (v6)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_10:
      v15 = v11 | (v7 << 6);
      sub_1C755068C();
      sub_1C75504FC();
      v16 = sub_1C755092C();

      if (v16)
      {
        *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_14:
          sub_1C71FFA70();
          v19 = v18;
          goto LABEL_15;
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        goto LABEL_14;
      }

      ++v12;
      if (*(v2 + 8 * v7))
      {
        OUTLINED_FUNCTION_78_0();
        v6 = v14 & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    sub_1C75504FC();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();

  v19 = sub_1C7201110(v20, v5, v2, sub_1C71FF37C);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1CCA5F8E0](v20, -1, -1);
LABEL_15:
  sub_1C71CD85C(v19);
  OUTLINED_FUNCTION_25_0();
}

uint64_t FMSong.dictionary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7576D70;
  *(inited + 32) = 6580597;
  *(inited + 40) = 0xE300000000000000;
  v2 = [v0 uid];
  v3 = sub_1C755068C();
  v5 = v4;

  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v7 = [v0 songName];
  v8 = sub_1C755068C();
  v10 = v9;

  *(inited + 96) = v8;
  *(inited + 104) = v10;
  *(inited + 120) = v6;
  *(inited + 128) = 0x747369747261;
  *(inited + 136) = 0xE600000000000000;
  v11 = [v0 artistName];
  v12 = sub_1C755068C();
  v14 = v13;

  *(inited + 144) = v12;
  *(inited + 152) = v14;
  *(inited + 168) = v6;
  *(inited + 176) = 0x734449676174;
  *(inited + 184) = 0xE600000000000000;
  v15 = [v0 tagIDs];
  v16 = sub_1C7550F8C();

  v17 = sub_1C71CD85C(v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  *(inited + 192) = v17;
  *(inited + 216) = v18;
  *(inited + 224) = 0x7364726F7779656BLL;
  *(inited + 232) = 0xE800000000000000;
  v19 = [v0 keywords];
  v20 = sub_1C7550F8C();

  *(inited + 240) = sub_1C71CD85C(v20);
  *(inited + 264) = v18;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x80000001C75A47B0;
  v21 = FMSong.weightedKeywordArrayOfDictionaries()();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190F0);
  *(inited + 288) = v21;
  *(inited + 312) = v22;
  *(inited + 320) = 0x6C6173756F7261;
  *(inited + 328) = 0xE700000000000000;
  v23 = sub_1C71FF3DC();
  v24 = MEMORY[0x1E69E63B0];
  v25 = MEMORY[0x1E69E6530];
  if (v23)
  {
    v26 = v23;
    [v23 doubleValue];
    v28 = v27;

    v35 = v24;
    *&v34 = v28;
    sub_1C6F9ED18(&v34, (inited + 336));
  }

  else
  {
    *(inited + 360) = MEMORY[0x1E69E6530];
    *(inited + 336) = 0;
  }

  *(inited + 368) = 0x65636E656C6176;
  *(inited + 376) = 0xE700000000000000;
  v29 = sub_1C71FF3DC();
  if (v29)
  {
    v30 = v29;
    [v29 doubleValue];
    v32 = v31;

    v35 = v24;
    *&v34 = v32;
    sub_1C6F9ED18(&v34, (inited + 384));
  }

  else
  {
    *(inited + 408) = v25;
    *(inited + 384) = 0;
  }

  return sub_1C75504DC();
}

uint64_t FMSong.weightedKeywordArrayOfDictionaries()()
{
  v1 = [v0 weightedKeywords];
  OUTLINED_FUNCTION_19_1();
  sub_1C6FA7014();
  v2 = sub_1C75504AC();

  v3 = *(v2 + 16);
  if (v3)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C716E60C(0, v3, 0);
    v4 = v33;
    result = sub_1C70D4544(v2);
    v7 = result;
    v8 = 0;
    v9 = v2 + 64;
    v10 = *(v2 + 32);
    v31 = v3;
    v32 = v6;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << v10)
    {
      v11 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v2 + 36) != v6)
      {
        goto LABEL_24;
      }

      v12 = (*(v2 + 48) + 16 * v7);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(v2 + 56) + 8 * v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = v14;
      *(inited + 40) = v13;
      swift_bridgeObjectRetain_n();
      v17 = v15;
      [v17 doubleValue];
      *(inited + 48) = v18;
      v19 = sub_1C75504DC();

      v21 = *(v33 + 16);
      v20 = *(v33 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1C716E60C((v20 > 1), v21 + 1, 1);
      }

      *(v33 + 16) = v21 + 1;
      *(v33 + 8 * v21 + 32) = v19;
      v10 = *(v2 + 32);
      v22 = 1 << v10;
      if (v7 >= 1 << v10)
      {
        goto LABEL_25;
      }

      v9 = v2 + 64;
      v23 = *(v2 + 64 + 8 * v11);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v6 = v32;
      if (*(v2 + 36) != v32)
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v25 = v31;
      }

      else
      {
        v26 = v11 << 6;
        v27 = v11 + 1;
        v25 = v31;
        v28 = (v2 + 72 + 8 * v11);
        while (v27 < (v22 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            v22 = __clz(__rbit64(v29)) + v26;
            break;
          }
        }
      }

      ++v8;
      v7 = v22;
      if (v8 == v25)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C71FF37C()
{
  sub_1C755068C();
  v0 = sub_1C755092C();

  return v0 & 1;
}

void *sub_1C71FF3DC()
{
  v1 = [v0 tagIDs];
  v2 = sub_1C7550F8C();

  result = sub_1C71CD85C(v2);
  v4 = result;
  v5 = result[2];
  if (v5)
  {
    v6 = 0;
    v7 = (result + 5);
    while (v6 < v4[2])
    {
      sub_1C6FB5E8C();
      sub_1C75504FC();
      if ((sub_1C75515AC() & 1) != 0 && (v8 = sub_1C755152C(), , v8[2] == 2))
      {
        v9 = v8[6];
        v10 = v8[7];
        sub_1C75504FC();

        v11 = sub_1C720120C(v9, v10);

        if (v11)
        {

          v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          LODWORD(v13) = 0;
          return [v12 initWithFloat_];
        }
      }

      else
      {
      }

      ++v6;
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

void sub_1C71FF5B8()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  OUTLINED_FUNCTION_10_49();
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v26 = v7;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0)
  {
LABEL_30:

LABEL_31:
    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (*(v5 + 16) == v0)
  {
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219100);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_20();
  if (v10 != v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v2;
  }

  v13 = 0;
  v14 = v3 + 56;
  v25[1] = v5;
  while (v12)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_16:
    v28 = *(v26 + 72);
    OUTLINED_FUNCTION_6_10();
    sub_1C7201304(v18, v9);
    sub_1C7551F3C();
    sub_1C75505AC();
    switch(v9[16])
    {
      case 1:
        OUTLINED_FUNCTION_25_10();
        break;
      default:
        break;
    }

    sub_1C75505AC();

    sub_1C754F58C();
    sub_1C72013D0(&qword_1EC215238, MEMORY[0x1E69C1928]);
    sub_1C755059C();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v19)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v19)
        {
          if (v20)
          {
            goto LABEL_33;
          }
        }

        OUTLINED_FUNCTION_35_15();
        if (v19)
        {
          v21 = 0;
        }

        if (*(v14 + 8 * v21) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_28;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_28:
    OUTLINED_FUNCTION_21_34();
    OUTLINED_FUNCTION_26_28();
    *(v14 + v22) = v23;
    OUTLINED_FUNCTION_6_10();
    sub_1C720135C(v9, v24);
    OUTLINED_FUNCTION_16_33();
    if (v11)
    {
      goto LABEL_34;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v1)
    {
      goto LABEL_30;
    }

    ++v15;
    if (v2[v13])
    {
      OUTLINED_FUNCTION_78_0();
      v12 = v17 & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1C71FF8E8()
{
  OUTLINED_FUNCTION_223();
  v5 = v4;
  if (!v6)
  {
LABEL_5:

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_39();
  if (v7)
  {
LABEL_6:
    OUTLINED_FUNCTION_224_0();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219148);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_28_0();
  if (v8 != v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v2;
  }

  v11 = 0;
  while (v10)
  {
    OUTLINED_FUNCTION_88();
LABEL_16:
    v16 = *(*(v5 + 48) + (v12 | (v11 << 6)));
    sub_1C7551F3C();
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v7)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v7)
        {
          if (v18)
          {
            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_37_22();
        if (!v7)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_24;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_24:
    *(v3 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + v17) = v16;
    OUTLINED_FUNCTION_5_7();
    if (v9)
    {
      goto LABEL_29;
    }

    if (!v0)
    {
      goto LABEL_5;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v1)
    {
      goto LABEL_5;
    }

    ++v13;
    if (v2[v11])
    {
      OUTLINED_FUNCTION_78_0();
      v10 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1C71FFA70()
{
  OUTLINED_FUNCTION_223();
  v5 = v4;
  if (!v3)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (*(v4 + 16) == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_224_0();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_28_0();
  if (v6 != v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v1;
  }

  v9 = 0;
  v10 = v2 + 56;
  v27 = v5;
  while (v8)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_16:
    v16 = (*(v5 + 48) + 16 * (v11 | (v9 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v19)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v19)
        {
          if (v21)
          {
            goto LABEL_29;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v10 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_26:
    OUTLINED_FUNCTION_21_34();
    OUTLINED_FUNCTION_26_28();
    *(v10 + v23) = v24;
    v26 = (*(v2 + 48) + 16 * v25);
    *v26 = v17;
    v26[1] = v18;
    OUTLINED_FUNCTION_5_7();
    if (v7)
    {
      goto LABEL_30;
    }

    v5 = v27;
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v0)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_40_21();
    if (v13)
    {
      OUTLINED_FUNCTION_78_0();
      v8 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C71FFBFC()
{
  OUTLINED_FUNCTION_223();
  if (v5)
  {
    OUTLINED_FUNCTION_11_39();
    if (!v6)
    {
      OUTLINED_FUNCTION_19_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219108);
      OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_28_0();
      if (v7 != v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = *v2;
      }

      OUTLINED_FUNCTION_44_17();
      while (2)
      {
        if (v9)
        {
          OUTLINED_FUNCTION_88();
        }

        else
        {
          v10 = v4;
          do
          {
            v4 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              JUMPOUT(0);
            }

            if (v4 >= v1)
            {
              goto LABEL_5;
            }

            OUTLINED_FUNCTION_39_21();
          }

          while (!v11);
          OUTLINED_FUNCTION_78_0();
          v9 = v13 & v12;
        }

        OUTLINED_FUNCTION_25_22();
        switch(v3)
        {
          case 0:
          case 2:
          case 3:
          case 4:
            goto LABEL_18;
          case 1:
            OUTLINED_FUNCTION_25_10();
LABEL_18:
            sub_1C75505AC();

            sub_1C7551FAC();
            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_20_6();
            if (v6)
            {
              OUTLINED_FUNCTION_15_0();
              do
              {
                OUTLINED_FUNCTION_95_2();
                if (v6 && (v14 & 1) != 0)
                {
                  goto LABEL_30;
                }

                OUTLINED_FUNCTION_35_15();
                OUTLINED_FUNCTION_27_27();
              }

              while (v6);
              OUTLINED_FUNCTION_14_1();
            }

            else
            {
              OUTLINED_FUNCTION_16();
            }

            OUTLINED_FUNCTION_98_0();
            OUTLINED_FUNCTION_14_40();
            *(v16 + v15) = v3;
            OUTLINED_FUNCTION_5_7();
            if (v8)
            {
              goto LABEL_31;
            }

            if (!v0)
            {
              goto LABEL_5;
            }

            continue;
          default:
            goto LABEL_32;
        }
      }
    }
  }

  else
  {
LABEL_5:
  }

  OUTLINED_FUNCTION_224_0();
}

void sub_1C71FFDC0()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  if (!v5)
  {
LABEL_5:

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_39();
  if (v6)
  {
LABEL_6:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219128);
  v7 = OUTLINED_FUNCTION_34_18();
  v8 = v7;
  if (v1 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v2;
  }

  v10 = 0;
  v11 = v7 + 56;
  while (v9)
  {
    OUTLINED_FUNCTION_88();
LABEL_16:
    v16 = *(*(v4 + 48) + 8 * (v12 | (v10 << 6)));
    v17 = sub_1C7551F2C() & ~(-1 << *(v8 + 32));
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v6)
        {
          if (v18)
          {
            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_37_22();
        if (!v6)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_24;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_24:
    OUTLINED_FUNCTION_98_0();
    *(v11 + v19) |= v20;
    *(*(v8 + 48) + 8 * v21) = v16;
    ++*(v8 + 16);
    if (__OFSUB__(v0--, 1))
    {
      goto LABEL_29;
    }

    if (!v0)
    {
      goto LABEL_5;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v1)
    {
      goto LABEL_5;
    }

    ++v13;
    if (v2[v10])
    {
      OUTLINED_FUNCTION_78_0();
      v9 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1C71FFF30()
{
  OUTLINED_FUNCTION_223();
  v5 = v4;
  if (!v6)
  {
LABEL_5:

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_39();
  if (v7)
  {
LABEL_6:
    OUTLINED_FUNCTION_224_0();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219140);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_28_0();
  if (v8 != v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v2;
  }

  v11 = 0;
  while (v10)
  {
    OUTLINED_FUNCTION_88();
LABEL_16:
    v16 = *(*(v5 + 48) + (v12 | (v11 << 6)));
    sub_1C7551F3C();
    StoryMusicTermTag.rawValue.getter();
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v7)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v7)
        {
          if (v17)
          {
            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_37_22();
        if (!v7)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_24;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_24:
    OUTLINED_FUNCTION_98_0();
    *(v3 + 56 + v18) |= v19;
    *(*(v3 + 48) + v20) = v16;
    OUTLINED_FUNCTION_5_7();
    if (v9)
    {
      goto LABEL_29;
    }

    if (!v0)
    {
      goto LABEL_5;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v1)
    {
      goto LABEL_5;
    }

    ++v13;
    if (v2[v11])
    {
      OUTLINED_FUNCTION_78_0();
      v10 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1C72000B4()
{
  OUTLINED_FUNCTION_223();
  if (!v5)
  {
LABEL_5:

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_39();
  if (v6)
  {
LABEL_6:
    OUTLINED_FUNCTION_224_0();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219138);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_28_0();
  if (v7 != v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v2;
  }

  OUTLINED_FUNCTION_44_17();
  while (v9)
  {
    OUTLINED_FUNCTION_88();
LABEL_16:
    OUTLINED_FUNCTION_25_22();
    MEMORY[0x1CCA5E460](v3);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v6)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v6)
        {
          if (v14)
          {
            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_35_15();
        OUTLINED_FUNCTION_27_27();
        if (!v6)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_24;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_24:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_14_40();
    *(v16 + v15) = v3;
    OUTLINED_FUNCTION_5_7();
    if (v8)
    {
      goto LABEL_29;
    }

    if (!v0)
    {
      goto LABEL_5;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v1)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_39_21();
    if (v11)
    {
      OUTLINED_FUNCTION_78_0();
      v9 = v13 & v12;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1C72001EC()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  OUTLINED_FUNCTION_10_49();
  sub_1C754F0FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_43(v6, v20);
  if (!v0)
  {
LABEL_23:

LABEL_24:
    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219130);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_13_45();
  while (v7)
  {
    OUTLINED_FUNCTION_17_41();
LABEL_13:
    v12 = OUTLINED_FUNCTION_8_45();
    v13(v12);
    sub_1C72013D0(&qword_1EC2167B8, MEMORY[0x1E69C1790]);
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v14)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v14)
        {
          if (v15)
          {
            goto LABEL_26;
          }
        }

        OUTLINED_FUNCTION_38_19();
        if (!v14)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_21;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_21:
    OUTLINED_FUNCTION_98_0();
    v17 = OUTLINED_FUNCTION_9_50(v16);
    v18(v17);
    OUTLINED_FUNCTION_16_33();
    if (v19)
    {
      goto LABEL_27;
    }

    v7 = v21;
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_40_21();
    if (v9)
    {
      OUTLINED_FUNCTION_78_0();
      v21 = v11 & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C72003E4()
{
  OUTLINED_FUNCTION_223();
  if (v5)
  {
    OUTLINED_FUNCTION_11_39();
    if (!v6)
    {
      OUTLINED_FUNCTION_19_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216880);
      OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_28_0();
      if (v7 != v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = *v2;
      }

      OUTLINED_FUNCTION_44_17();
      while (2)
      {
        if (v9)
        {
          OUTLINED_FUNCTION_88();
        }

        else
        {
          v10 = v4;
          do
          {
            v4 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:
              JUMPOUT(0);
            }

            if (v4 >= v1)
            {
              goto LABEL_5;
            }

            OUTLINED_FUNCTION_39_21();
          }

          while (!v11);
          OUTLINED_FUNCTION_78_0();
          v9 = v13 & v12;
        }

        OUTLINED_FUNCTION_25_22();
        switch(v3)
        {
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
            sub_1C75505AC();

            sub_1C7551FAC();
            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_20_6();
            if (v6)
            {
              OUTLINED_FUNCTION_15_0();
              do
              {
                OUTLINED_FUNCTION_95_2();
                if (v6 && (v14 & 1) != 0)
                {
                  goto LABEL_29;
                }

                OUTLINED_FUNCTION_35_15();
                OUTLINED_FUNCTION_27_27();
              }

              while (v6);
              OUTLINED_FUNCTION_14_1();
            }

            else
            {
              OUTLINED_FUNCTION_16();
            }

            OUTLINED_FUNCTION_98_0();
            OUTLINED_FUNCTION_14_40();
            *(v16 + v15) = v3;
            OUTLINED_FUNCTION_5_7();
            if (v8)
            {
              goto LABEL_30;
            }

            if (!v0)
            {
              goto LABEL_5;
            }

            continue;
          default:
            goto LABEL_31;
        }
      }
    }
  }

  else
  {
LABEL_5:
  }

  OUTLINED_FUNCTION_224_0();
}

void sub_1C720074C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  if (!v6)
  {
LABEL_5:

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_39();
  if (v7)
  {
LABEL_6:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_28_0();
  if (v9 != v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v2;
  }

  OUTLINED_FUNCTION_44_17();
  while (v11)
  {
    OUTLINED_FUNCTION_88();
LABEL_16:
    v17 = *(*(v5 + 48) + 8 * (v12 | (v3 << 6)));
    sub_1C75513DC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v7)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v7)
        {
          if (v18)
          {
            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_27_27();
        if (!v7)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_24;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_24:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_14_40();
    *(v20 + 8 * v19) = v17;
    OUTLINED_FUNCTION_5_7();
    if (v10)
    {
      goto LABEL_29;
    }

    if (!v0)
    {
      goto LABEL_5;
    }
  }

  v13 = v3;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v1)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_39_21();
    if (v14)
    {
      OUTLINED_FUNCTION_78_0();
      v11 = v16 & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1C7200888()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  if (!v3)
  {

LABEL_29:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (*(v4 + 16) == v3)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219120);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_28_0();
  if (v6 != v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v1;
  }

  v9 = 0;
  v10 = v2 + 56;
  v22 = v5;
  while (v8)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_16:
    memcpy(__dst, (*(v5 + 48) + 192 * (v11 | (v9 << 6))), 0xC0uLL);
    sub_1C7551F3C();
    sub_1C7080654(__dst, v23);
    sub_1C75505AC();
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v16)
    {
      OUTLINED_FUNCTION_15_0();
      v5 = v22;
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v16)
        {
          if (v17)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_35_15();
        if (v16)
        {
          v18 = 0;
        }

        if (*(v10 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_16();
    v5 = v22;
LABEL_26:
    OUTLINED_FUNCTION_21_34();
    OUTLINED_FUNCTION_26_28();
    *(v10 + v19) = v20;
    memcpy((*(v2 + 48) + 192 * v21), __dst, 0xC0uLL);
    OUTLINED_FUNCTION_5_7();
    if (v7)
    {
      goto LABEL_32;
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v0)
    {

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_40_21();
    if (v13)
    {
      OUTLINED_FUNCTION_78_0();
      v8 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C7200AF4()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  OUTLINED_FUNCTION_10_49();
  sub_1C754E97C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_43(v6, v20);
  if (!v0)
  {
LABEL_23:

LABEL_24:
    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219118);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_13_45();
  while (v7)
  {
    OUTLINED_FUNCTION_17_41();
LABEL_13:
    v12 = OUTLINED_FUNCTION_8_45();
    v13(v12);
    sub_1C72013D0(&qword_1EDD0CB30, MEMORY[0x1E69A0F90]);
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v14)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v14)
        {
          if (v15)
          {
            goto LABEL_26;
          }
        }

        OUTLINED_FUNCTION_38_19();
        if (!v14)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_21;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_21:
    OUTLINED_FUNCTION_98_0();
    v17 = OUTLINED_FUNCTION_9_50(v16);
    v18(v17);
    OUTLINED_FUNCTION_16_33();
    if (v19)
    {
      goto LABEL_27;
    }

    v7 = v21;
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_40_21();
    if (v9)
    {
      OUTLINED_FUNCTION_78_0();
      v21 = v11 & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C7200CEC()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  OUTLINED_FUNCTION_10_49();
  sub_1C754E9AC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_43(v6, v20);
  if (!v0)
  {
LABEL_23:

LABEL_24:
    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219110);
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_13_45();
  while (v7)
  {
    OUTLINED_FUNCTION_17_41();
LABEL_13:
    v12 = OUTLINED_FUNCTION_8_45();
    v13(v12);
    sub_1C72013D0(&qword_1EDD100A0, MEMORY[0x1E69A1168]);
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v14)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v14)
        {
          if (v15)
          {
            goto LABEL_26;
          }
        }

        OUTLINED_FUNCTION_38_19();
        if (!v14)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_21;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_21:
    OUTLINED_FUNCTION_98_0();
    v17 = OUTLINED_FUNCTION_9_50(v16);
    v18(v17);
    OUTLINED_FUNCTION_16_33();
    if (v19)
    {
      goto LABEL_27;
    }

    v7 = v21;
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_40_21();
    if (v9)
    {
      OUTLINED_FUNCTION_78_0();
      v21 = v11 & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C7200EE4()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_10_49();
  v6 = type metadata accessor for Hastings.Asset(v5);
  v26[2] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0)
  {
LABEL_28:

LABEL_29:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190F8);
  v9 = OUTLINED_FUNCTION_34_18();
  v10 = v9;
  if (v1 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v2;
  }

  v12 = 0;
  v13 = v9 + 56;
  v26[1] = v4;
  while (v11)
  {
    v11 &= v11 - 1;
LABEL_16:
    OUTLINED_FUNCTION_4_20();
    sub_1C7201304(v18, v8);
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v19)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v19)
        {
          if (v20)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_35_15();
        if (v19)
        {
          v21 = 0;
        }

        if (*(v13 + 8 * v21) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_26:
    OUTLINED_FUNCTION_21_34();
    OUTLINED_FUNCTION_26_28();
    *(v13 + v22) = v23;
    OUTLINED_FUNCTION_4_20();
    sub_1C720135C(v8, v24);
    ++*(v10 + 16);
    if (__OFSUB__(v0--, 1))
    {
      goto LABEL_32;
    }

    if (!v0)
    {
      goto LABEL_28;
    }
  }

  v14 = v12;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= v1)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_39_21();
    if (v15)
    {
      OUTLINED_FUNCTION_78_0();
      v11 = v17 & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void *sub_1C7201110(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    sub_1C721A4E4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

_BYTE *sub_1C72011A0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1C720120C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1C75517CC();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtof_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1C7201304(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_84_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C720135C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_84_0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C72013D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StoryMusicCache.read(cacheType:)(_BYTE *a1)
{
  v3 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  LOBYTE(v61[0]) = *a1;
  sub_1C7203C8C(v61);
  sub_1C754DCDC();
  v5 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_10_50();
  v6 = sub_1C755065C();
  v7 = [v5 fileExistsAtPath_];

  if (!v7)
  {
    if (qword_1EDD0B8B0 != -1)
    {
      OUTLINED_FUNCTION_0_105();
    }

    v12 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v12, qword_1EDD0B8B8);
    sub_1C75504FC();
    v13 = sub_1C754FEEC();
    v14 = sub_1C755119C();

    v15 = os_log_type_enabled(v13, v14);
    v62 = v1;
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_41_0();
      v17 = OUTLINED_FUNCTION_20_1();
      v61[0] = v17;
      *v16 = 136315138;
      v18 = OUTLINED_FUNCTION_10_50();
      v21 = sub_1C6F765A4(v18, v19, v20);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "Embeddings cache doesn't exist at %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F68);
    v22 = sub_1C75504DC();
    v23 = OUTLINED_FUNCTION_6_56();
    v25 = v3;
LABEL_10:
    v24(v23, v25);
    return v22;
  }

  sub_1C754DB8C();
  swift_allocObject();
  sub_1C754DB7C();
  v8 = sub_1C754DD6C();
  if (!v1)
  {
    v26 = v8;
    v27 = v9;
    v60 = v3;
    sub_1C7204304();
    sub_1C754DB5C();
    v58 = v27;
    v59 = v26;
    v28 = *v61;
    v22 = v61[2];
    static StoryMusicCache.cacheVersion()();
    v40 = v29;
    v62 = 0;
    v41 = v3;
    if (qword_1EDD0B8B0 != -1)
    {
      OUTLINED_FUNCTION_0_105();
    }

    v42 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v42, qword_1EDD0B8B8);
    sub_1C75504FC();
    sub_1C75504FC();
    v43 = sub_1C754FEEC();
    v44 = sub_1C755118C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v44;
      v46 = swift_slowAlloc();
      v47 = OUTLINED_FUNCTION_20_1();
      v61[0] = v47;
      *v46 = 134218754;
      *(v46 + 4) = v40;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v28;
      *(v46 + 22) = 2048;
      *(v46 + 24) = *(v22 + 16);

      *(v46 + 32) = 2080;
      v48 = OUTLINED_FUNCTION_10_50();
      v51 = sub_1C6F765A4(v48, v49, v50);

      *(v46 + 34) = v51;
      v52 = v45;
      v41 = v60;
      _os_log_impl(&dword_1C6F5C000, v43, v52, "Cache read: expectedCacheVersion:%f  Read Version: %f, Entries: %ld, File: %s", v46, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    if (v40 == v28)
    {
      v53 = OUTLINED_FUNCTION_6_56();
      v54(v53, v41);
      sub_1C6FC1640(v59, v58);

      return v22;
    }

    v55 = sub_1C754FEEC();
    v56 = sub_1C755117C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1C6F5C000, v55, v56, "[Warning-Music] Cache version is different, so consider it expired", v57, 2u);
      OUTLINED_FUNCTION_109();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F68);
    v22 = sub_1C75504DC();
    sub_1C6FC1640(v59, v58);

    v23 = OUTLINED_FUNCTION_6_56();
    v25 = v41;
    goto LABEL_10;
  }

  v10 = OUTLINED_FUNCTION_6_56();
  v11(v10, v3);

  if (qword_1EDD0B8B0 != -1)
  {
    OUTLINED_FUNCTION_0_105();
  }

  v30 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v30, qword_1EDD0B8B8);
  v31 = v1;
  v32 = sub_1C754FEEC();
  v33 = sub_1C755119C();

  v34 = os_log_type_enabled(v32, v33);
  v62 = 0;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_41_0();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v1;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_1C6F5C000, v32, v33, "Error reading maestro embeddings cache: %@", v35, 0xCu);
    sub_1C6FC15D8(v36);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F68);
  return sub_1C75504DC();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryMusicCache.write(cacheType:using:)(PhotosIntelligence::StoryMusicEmbeddingType cacheType, Swift::OpaquePointer using)
{
  OUTLINED_FUNCTION_124();
  v44 = v3;
  v5 = v4;
  v52 = *MEMORY[0x1E69E9840];
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v47 = v7;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v11 = *v5;
  LOBYTE(v49) = *v5;
  sub_1C7203C8C(&v49);
  v12 = v10;
  v13 = sub_1C754DCDC();
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  v46 = v13;
  v18 = sub_1C755065C();
  LODWORD(v13) = [v17 fileExistsAtPath_];

  if (v13)
  {
    v19 = [v16 defaultManager];
    v20 = sub_1C755065C();
    v49 = 0;
    v21 = [v19 removeItemAtPath:v20 error:&v49];

    if (!v21)
    {
      v25 = v49;

      sub_1C754DBEC();

      swift_willThrow();
      (*(v47 + 8))(v12, v48);
      goto LABEL_14;
    }

    v22 = v49;
  }

  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  static StoryMusicCache.cacheVersion()();
  if (v2)
  {

    v24 = v12;
    if (qword_1EDD0B8B0 != -1)
    {
      OUTLINED_FUNCTION_0_105();
    }

    v29 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v29, qword_1EDD0B8B8);
    v30 = v2;
    v31 = sub_1C754FEEC();
    v32 = sub_1C755119C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_41_0();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Error writing to cache: %@", v33, 0xCu);
      sub_1C6FC15D8(v34);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }
  }

  else
  {
    v49 = v23;
    v50 = v11;
    v51 = v44;
    sub_1C7204358();
    sub_1C75504FC();
    v24 = v12;
    v26 = sub_1C754DBAC();
    v28 = v27;

    sub_1C754DE1C();
    v43 = v28;
    if (qword_1EDD0B8B0 != -1)
    {
      OUTLINED_FUNCTION_0_105();
    }

    v37 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v37, qword_1EDD0B8B8);
    sub_1C75504FC();
    v38 = sub_1C754FEEC();
    v39 = sub_1C755117C();

    v45 = v38;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_41_0();
      v41 = OUTLINED_FUNCTION_20_1();
      v49 = v41;
      *v40 = 136315138;
      v42 = sub_1C6F765A4(v46, v15, &v49);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_1C6F5C000, v45, v39, "Embeddings saved to cache at %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    sub_1C6FC1640(v26, v43);
  }

  (*(v47 + 8))(v24, v48);
LABEL_14:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7202094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B6F72747365616DLL && a2 == 0xEE0064726F777965;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7779654B646F6F6DLL && a2 == 0xEC0000007364726FLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001C75A4850 == a2)
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

uint64_t sub_1C72021B8(char a1)
{
  if (!a1)
  {
    return 0x4B6F72747365616DLL;
  }

  if (a1 == 1)
  {
    return 0x7779654B646F6F6DLL;
  }

  return 0xD000000000000018;
}

uint64_t sub_1C7202228(uint64_t a1)
{
  v2 = sub_1C7204400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7202264(uint64_t a1)
{
  v2 = sub_1C7204400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72022A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7202094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72022D0(uint64_t a1)
{
  v2 = sub_1C72043AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C720230C(uint64_t a1)
{
  v2 = sub_1C72043AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7202348(uint64_t a1)
{
  v2 = sub_1C72044A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7202384(uint64_t a1)
{
  v2 = sub_1C72044A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72023C0(uint64_t a1)
{
  v2 = sub_1C7204454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72023FC(uint64_t a1)
{
  v2 = sub_1C7204454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryMusicEmbeddingType.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219158);
  OUTLINED_FUNCTION_3_0();
  v32 = v2;
  v33 = v1;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219160);
  OUTLINED_FUNCTION_3_0();
  v29 = v6;
  v30 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219168);
  OUTLINED_FUNCTION_3_0();
  v26 = v10;
  v27 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219170);
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v20 = *v0;
  v21 = OUTLINED_FUNCTION_10_50();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_1C72043AC();
  sub_1C755200C();
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1C7204454();
      v13 = v28;
      OUTLINED_FUNCTION_153();
      sub_1C7551C6C();
      v24 = v29;
      v23 = v30;
    }

    else
    {
      sub_1C7204400();
      v13 = v31;
      OUTLINED_FUNCTION_153();
      sub_1C7551C6C();
      v24 = v32;
      v23 = v33;
    }
  }

  else
  {
    sub_1C72044A8();
    OUTLINED_FUNCTION_153();
    sub_1C7551C6C();
    v24 = v26;
    v23 = v27;
  }

  (*(v24 + 8))(v13, v23);
  (*(v16 + 8))(v19, v14);
  OUTLINED_FUNCTION_125();
}

void StoryMusicEmbeddingType.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v61 = v0;
  v2 = v1;
  v56 = v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219180);
  OUTLINED_FUNCTION_3_0();
  v57 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v48 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219188);
  OUTLINED_FUNCTION_3_0();
  v54 = v8;
  v55 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219190);
  OUTLINED_FUNCTION_3_0();
  v53 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219198);
  OUTLINED_FUNCTION_3_0();
  v58 = v18;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C72043AC();
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
          sub_1C7204454();
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
          sub_1C7204400();
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
        sub_1C72044A8();
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
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v42 = &type metadata for StoryMusicEmbeddingType;
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

uint64_t sub_1C7202D28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65707954656C6966 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69646465626D65 && a2 == 0xEA00000000007367)
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

uint64_t sub_1C7202E40(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 0x65707954656C6966;
  }

  return 0x6E69646465626D65;
}

uint64_t sub_1C7202EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7202D28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7202ECC(uint64_t a1)
{
  v2 = sub_1C72044FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7202F08(uint64_t a1)
{
  v2 = sub_1C72044FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryMusicCacheData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2191A0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v13 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72044FC();
  sub_1C755200C();
  v18 = 0;
  sub_1C7551CEC();
  if (!v2)
  {
    v17 = v13;
    v16 = 1;
    sub_1C7204550();
    sub_1C7551D2C();
    v15 = v10;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2191B0);
    sub_1C72045A4();
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t StoryMusicCacheData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2191C8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72044FC();
  sub_1C7551FFC();
  if (!v2)
  {
    v20 = 0;
    sub_1C7551BDC();
    v12 = v11;
    v18 = 1;
    sub_1C7204654();
    OUTLINED_FUNCTION_153();
    sub_1C7551C1C();
    v14 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2191B0);
    v16[15] = 2;
    sub_1C72046A8();
    sub_1C7551C1C();
    (*(v7 + 8))(v10, v5);
    v15 = v17;
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C7203398()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0B8B8);
  __swift_project_value_buffer(v0, qword_1EDD0B8B8);
  return sub_1C754FEFC();
}

void static StoryMusicCache.cacheVersion()()
{
  v0 = [objc_opt_self() modelVersion];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 integerValue];

    if (qword_1EDD0B8B0 != -1)
    {
      OUTLINED_FUNCTION_0_105();
    }

    v3 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v3, qword_1EDD0B8B8);
    v4 = sub_1C754FEEC();
    v5 = sub_1C755117C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_41_0();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1C6F5C000, v4, v5, "PNTextEmbeddingService modelVersion: %ld", v6, 0xCu);
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    sub_1C72047C4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
  }
}

void sub_1C720356C(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C754DD2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  v9 = sub_1C754DCEC();
  v11 = sub_1C71153E8(v9, v10, v8);

  if ((v11 & 1) == 0)
  {
    v28 = v7;
    if (qword_1EDD0B8B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C754FF1C();
    __swift_project_value_buffer(v12, qword_1EDD0B8B8);
    (*(v4 + 16))(v6, a1, v3);
    v13 = sub_1C754FEEC();
    v14 = sub_1C755118C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27[2] = v1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136315138;
      sub_1C7106F84();
      v18 = sub_1C7551D8C();
      v27[1] = a1;
      v20 = v19;
      (*(v4 + 8))(v6, v3);
      v21 = sub_1C6F765A4(v18, v20, v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "Creating cache directory: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v22 = [v28 defaultManager];
    sub_1C754DCEC();
    v23 = sub_1C755065C();

    v29[0] = 0;
    v24 = [v22 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:v29];

    if (v24)
    {
      v25 = v29[0];
    }

    else
    {
      v26 = v29[0];
      sub_1C754DBEC();

      swift_willThrow();
    }
  }
}

void sub_1C72038CC()
{
  OUTLINED_FUNCTION_124();
  v2 = v0;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence15StoryMusicCache_cacheDirectoryURL;
  v14 = *(v8 + 16);
  v14(&v2[OBJC_IVAR____TtC18PhotosIntelligence15StoryMusicCache_cacheDirectoryURL], v4, v6);
  v14(v12, &v2[v13], v6);
  sub_1C720356C(v12);
  if (v1)
  {
    v15 = *(v8 + 8);
    v15(v4, v6);
    v15(v12, v6);
    v15(&v2[v13], v6);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = *(v8 + 8);
    v16(v12, v6);
    v17.receiver = v2;
    v17.super_class = ObjectType;
    objc_msgSendSuper2(&v17, sel_init);
    v16(v4, v6);
  }

  OUTLINED_FUNCTION_125();
}

void StoryMusicCache.__allocating_init(photoLibrary:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = v20 - v12;
  v20[0] = 0;
  v14 = [v3 urlForApplicationDataFolderIdentifier:14 error:{v20, v11}];
  v15 = v20[0];
  if (v14)
  {
    v16 = v14;
    sub_1C754DCCC();
    v17 = v15;

    (*(v6 + 16))(v9, v13, v4);
    v18 = objc_allocWithZone(v0);
    sub_1C72038CC();
    if (!v1)
    {
      (*(v6 + 8))(v13, v4);

      goto LABEL_7;
    }

    (*(v6 + 8))(v13, v4);
  }

  else
  {
    v19 = v20[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

LABEL_7:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7203C8C(_BYTE *a1)
{
  v1 = 0xE400000000000000;
  v2 = 1685024589;
  if (*a1 != 1)
  {
    v2 = 0x654B686372616553;
    v1 = 0xED000064726F7779;
  }

  if (*a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6F72747365614DLL;
  }

  if (*a1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v3, v4);

  MEMORY[0x1CCA5CD70](0x7473696C702ELL, 0xE600000000000000);
  sub_1C754DC9C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryMusicCache.deleteCacheDirectory()()
{
  v1 = v0;
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  sub_1C754DCEC();
  v4 = sub_1C755065C();

  v5 = [v3 fileExistsAtPath_];

  if (v5)
  {
    if (qword_1EDD0B8B0 != -1)
    {
      OUTLINED_FUNCTION_0_105();
    }

    v6 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v6, qword_1EDD0B8B8);
    v7 = v1;
    v8 = sub_1C754FEEC();
    v9 = sub_1C755117C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_41_0();
      v20[0] = OUTLINED_FUNCTION_20_1();
      v11 = v20[0];
      *v10 = 136315138;
      sub_1C754DD2C();
      sub_1C7106F84();
      v12 = sub_1C7551D8C();
      v14 = sub_1C6F765A4(v12, v13, v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "Removing cache directory at %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v15 = [v2 defaultManager];
    v16 = sub_1C754DC8C();
    v20[0] = 0;
    v17 = [v15 removeItemAtURL:v16 error:v20];

    if (v17)
    {
      v18 = v20[0];
    }

    else
    {
      v19 = v20[0];
      sub_1C754DBEC();

      swift_willThrow();
    }
  }
}

id StoryMusicCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoryMusicCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryMusicCache.createInvalidCacheForTesting(cacheType:)(PhotosIntelligence::StoryMusicEmbeddingType cacheType)
{
  v3 = v1;
  v4 = cacheType;
  swift_getObjectType();
  v5 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = *v4;
  sub_1C720356C(v3 + OBJC_IVAR____TtC18PhotosIntelligence15StoryMusicCache_cacheDirectoryURL);
  if (!v2)
  {
    v17 = v12;
    sub_1C7203C8C(&v17);
    sub_1C754DE1C();
    if (qword_1EDD0B8B0 != -1)
    {
      OUTLINED_FUNCTION_0_105();
    }

    v13 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v13, qword_1EDD0B8B8);
    v14 = sub_1C754FEEC();
    v15 = sub_1C755117C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "Empty cache file created to mock error case", v16, 2u);
      OUTLINED_FUNCTION_109();
    }

    (*(v7 + 8))(v11, v5);
  }
}

unint64_t sub_1C7204304()
{
  result = qword_1EDD0A510;
  if (!qword_1EDD0A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A510);
  }

  return result;
}

unint64_t sub_1C7204358()
{
  result = qword_1EC219150;
  if (!qword_1EC219150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219150);
  }

  return result;
}

unint64_t sub_1C72043AC()
{
  result = qword_1EDD097C0;
  if (!qword_1EDD097C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD097C0);
  }

  return result;
}

unint64_t sub_1C7204400()
{
  result = qword_1EC219178;
  if (!qword_1EC219178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219178);
  }

  return result;
}

unint64_t sub_1C7204454()
{
  result = qword_1EDD097A8;
  if (!qword_1EDD097A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD097A8);
  }

  return result;
}

unint64_t sub_1C72044A8()
{
  result = qword_1EDD09790;
  if (!qword_1EDD09790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09790);
  }

  return result;
}

unint64_t sub_1C72044FC()
{
  result = qword_1EDD0A528;
  if (!qword_1EDD0A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A528);
  }

  return result;
}

unint64_t sub_1C7204550()
{
  result = qword_1EC2191A8;
  if (!qword_1EC2191A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2191A8);
  }

  return result;
}

unint64_t sub_1C72045A4()
{
  result = qword_1EC2191B8;
  if (!qword_1EC2191B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2191B0);
    sub_1C7204758(&qword_1EC2191C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2191B8);
  }

  return result;
}

unint64_t sub_1C7204654()
{
  result = qword_1EDD09778;
  if (!qword_1EDD09778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09778);
  }

  return result;
}

unint64_t sub_1C72046A8()
{
  result = qword_1EDD06C38;
  if (!qword_1EDD06C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2191B0);
    sub_1C7204758(&qword_1EDD06A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06C38);
  }

  return result;
}

uint64_t sub_1C7204758(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214F68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C72047C4()
{
  result = qword_1EC2191D0;
  if (!qword_1EC2191D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2191D0);
  }

  return result;
}

unint64_t sub_1C720481C()
{
  result = qword_1EC2191D8;
  if (!qword_1EC2191D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2191D8);
  }

  return result;
}

unint64_t sub_1C7204874()
{
  result = qword_1EC2191E0;
  if (!qword_1EC2191E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2191E0);
  }

  return result;
}

uint64_t sub_1C72048D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C7204918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for StoryMusicCache()
{
  result = qword_1EDD0B898;
  if (!qword_1EDD0B898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C72049BC()
{
  result = sub_1C754DD2C();
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

_BYTE *storeEnumTagSinglePayload for StoryMusicCache.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7204B50(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7204C60()
{
  result = qword_1EC2191E8;
  if (!qword_1EC2191E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2191E8);
  }

  return result;
}

unint64_t sub_1C7204CB8()
{
  result = qword_1EC2191F0;
  if (!qword_1EC2191F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2191F0);
  }

  return result;
}

unint64_t sub_1C7204D10()
{
  result = qword_1EDD0A518;
  if (!qword_1EDD0A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A518);
  }

  return result;
}

unint64_t sub_1C7204D68()
{
  result = qword_1EDD0A520;
  if (!qword_1EDD0A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A520);
  }

  return result;
}

unint64_t sub_1C7204DC0()
{
  result = qword_1EDD09780;
  if (!qword_1EDD09780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09780);
  }

  return result;
}

unint64_t sub_1C7204E18()
{
  result = qword_1EDD09788;
  if (!qword_1EDD09788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09788);
  }

  return result;
}

unint64_t sub_1C7204E70()
{
  result = qword_1EDD09798;
  if (!qword_1EDD09798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09798);
  }

  return result;
}

unint64_t sub_1C7204EC8()
{
  result = qword_1EDD097A0;
  if (!qword_1EDD097A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD097A0);
  }

  return result;
}

unint64_t sub_1C7204F20()
{
  result = qword_1EDD097C8;
  if (!qword_1EDD097C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD097C8);
  }

  return result;
}

unint64_t sub_1C7204F78()
{
  result = qword_1EDD097D0;
  if (!qword_1EDD097D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD097D0);
  }

  return result;
}

unint64_t sub_1C7204FD0()
{
  result = qword_1EDD097B0;
  if (!qword_1EDD097B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD097B0);
  }

  return result;
}

unint64_t sub_1C7205028()
{
  result = qword_1EDD097B8;
  if (!qword_1EDD097B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD097B8);
  }

  return result;
}

uint64_t sub_1C7205098(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  sub_1C75504FC();
  v8 = 0;
  v26 = v7;
  v27 = v3;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = *(*(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v9 << 6)));
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      v29 = *a2;
      *a2 = 0x8000000000000000;
      v12 = sub_1C6FC329C(v10);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        break;
      }

      v14 = v12;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2192F0);
      if (sub_1C7551A2C())
      {
        v16 = sub_1C6FC329C(v10);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_23;
        }

        v14 = v16;
      }

      *a2 = v29;

      v18 = *a2;
      if ((v15 & 1) == 0)
      {
        v18[(v14 >> 6) + 8] |= 1 << v14;
        *(v18[6] + v14) = v10;
        *(v18[7] + 8 * v14) = 0;
        v19 = v18[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_22;
        }

        v18[2] = v21;
      }

      v22 = v18[7];
      v23 = *(v22 + 8 * v14);
      v20 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v20)
      {
        goto LABEL_21;
      }

      v6 &= v6 - 1;
      *(v22 + 8 * v14) = v24;

      v8 = v9;
      v7 = v26;
      v3 = v27;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t static Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.Source.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1)
      {
LABEL_4:
        sub_1C6F65BE8(0, &qword_1EDD10100);
        v5 = v3;
        v6 = v2;
        v7 = sub_1C75513EC();

        return v7 & 1;
      }
    }

    else if (v4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a2 + 8))
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.Source.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  sub_1C75513FC();
  return sub_1C7551FAC();
}

uint64_t sub_1C720540C()
{
  sub_1C7551F3C();
  Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.Source.hash(into:)();
  return sub_1C7551FAC();
}

id Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.source.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source);
  v3 = *(v1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t sub_1C7205618()
{
  sub_1C7551FBC();
  MEMORY[0x1CCA5E460](*(v0 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8));
  sub_1C75513FC();
  memcpy(__dst, v2, sizeof(__dst));
  return sub_1C7551F9C();
}

id Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.init(with:score:)(uint64_t *a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = &v3[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source];
  *v11 = *a1;
  v11[8] = v10;
  v15 = v9;
  v16 = v10;
  Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.Source.creationDate.getter(v8);
  sub_1C6FF51C8(v8, &v3[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_creationDate]);
  *&v3[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_score] = a2;
  v12 = type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
  v14.receiver = v3;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.Source.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_4_54();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22();
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v25 - v9;
  v11 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v12 = [v11 startDate];
      if (v12)
      {
        v13 = v12;
        sub_1C754DF2C();

        v14 = sub_1C754DF6C();
        v15 = 0;
      }

      else
      {
        v14 = sub_1C754DF6C();
        v15 = 1;
      }

      __swift_storeEnumTagSinglePayload(v2, v15, 1, v14);
      v10 = v2;
    }

    else
    {
      v20 = [v11 startDate];
      if (v20)
      {
        v21 = v20;
        sub_1C754DF2C();

        v22 = sub_1C754DF6C();
        v23 = 0;
      }

      else
      {
        v22 = sub_1C754DF6C();
        v23 = 1;
      }

      __swift_storeEnumTagSinglePayload(v3, v23, 1, v22);
      v10 = v3;
    }
  }

  else
  {
    v16 = [v11 creationDate];
    if (v16)
    {
      v17 = v16;
      sub_1C754DF2C();

      v18 = sub_1C754DF6C();
      v19 = 0;
    }

    else
    {
      v18 = sub_1C754DF6C();
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v19, 1, v18);
  }

  return sub_1C6FF51C8(v10, a1);
}

uint64_t type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate()
{
  result = qword_1EC2192D0;
  if (!qword_1EC2192D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C72059DC(uint64_t a1)
{
  sub_1C717E390(a1, &v12, &qword_1EC219770);
  if (!v14)
  {
    sub_1C7030CDC(&v12, &qword_1EC219770);
    goto LABEL_5;
  }

  type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v2 = v10;
  v4 = *(v1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8);
  v12 = *(v1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source);
  v3 = v12;
  v13 = v4;
  v5 = v10[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8];
  v10 = *&v10[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source];
  v11 = v5;
  v6 = v10;
  v7 = v3;
  v8 = static Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.Source.== infix(_:_:)(&v12, &v10);

  return v8 & 1;
}

id Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7205C5C()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC219200 = result;
  return result;
}

uint64_t sub_1C7205CD4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219208);
  __swift_project_value_buffer(v0, qword_1EC219208);
  if (qword_1EC213EC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC219200;
  return sub_1C754FF2C();
}

uint64_t Spatial3DCuration.WallpaperSuggester.init(suggestionContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = objc_opt_self();
  sub_1C754DF3C();
  v11 = sub_1C754DECC();
  (*(v6 + 8))(v9, v4);
  v12 = [v10 randomNumberGeneratorForWallpaperDonationWithDate_];

  *a2 = v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  *(a2 + 40) = (*(v14 + 8))(v13, v14);
  sub_1C6FB5E28(a1, a2 + 48);
  v19 = 1;
  sub_1C6FB5E28(a1, v18);
  static AssetGating.EligibilityChecker<>.buildSpatial3DEligibilityCheckerForWallpaperSuggestions(curationStage:suggestionContext:)(&v19, v18, v20);
  sub_1C7030CDC(v18, &unk_1EC219240);
  v15 = v21;
  *(a2 + 8) = v20[0];
  *(a2 + 16) = v15;
  v19 = 1;
  sub_1C6FB5E28(a1, v18);
  static AssetGating.EligibilityChecker<>.buildSpatial3DEligibilityChecker(for:suggestionContext:)(&v19, v18, v20);
  sub_1C7030CDC(v18, &unk_1EC219240);
  v16 = v21;
  *(a2 + 24) = v20[0];
  *(a2 + 32) = v16;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Spatial3DCuration.WallpaperSuggester.execute(progressReporter:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C754F2FC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7206030, 0, 0);
}

uint64_t sub_1C7206030()
{
  sub_1C754F2CC();
  if (qword_1EC213EC8 != -1)
  {
    OUTLINED_FUNCTION_2_71();
    swift_once();
  }

  v1 = qword_1EC219200;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v2 = v1;
  PerformanceMeasure.init(name:log:)();
  from._rawValue = MEMORY[0x1E69E7CC0];
  Spatial3DCuration.WallpaperSuggester.getCandidatesFromExistingGyroPosterSuggestions()();
  sub_1C6FD3534(v3);
  if (qword_1EC213ED0 != -1)
  {
    OUTLINED_FUNCTION_0_106();
    swift_once();
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EC219208);
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_51(&dword_1C6F5C000, v7, v8, "[execute] Finding candidates from wallpapers...");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v10 = v0[8];
  v9 = v0[9];
  v12 = v0[4];
  v11 = v0[5];

  sub_1C754F2BC();
  v13 = *(v11 + 32);
  v13(v10, v9, v12);
  sub_1C7206B04(v10);
  v15 = v14;
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();
  v18 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_41_0();
    *v20 = 134217984;
    *(v20 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v16, v17, "[execute] Found %ld candidates from wallpapers...", v20, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  sub_1C6FD3534(v15);
  v21 = sub_1C754FEEC();
  v22 = sub_1C75511BC();
  if (os_log_type_enabled(v21, v22))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_51(&dword_1C6F5C000, v23, v24, "[execute] Finding candidates from highlights...");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[4];

  sub_1C754F2BC();
  v13(v26, v25, v27);
  v30 = sub_1C7207904(v26);
  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();
  v33 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v33, v34))
  {
    v36 = OUTLINED_FUNCTION_41_0();
    *v36 = 134217984;
    *(v36 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v31, v32, "[execute] Found %ld candidates from highlights...", v36, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  sub_1C6FD3534(v30);
  sub_1C754F2DC();
  v37 = Spatial3DCuration.WallpaperSuggester.electSuggestionsToKeepAndDiscard(from:)(from);

  sub_1C754F2DC();
  v38 = Spatial3DCuration.WallpaperSuggester.process(electionResults:)(v37);

  if (v39)
  {
    v41 = v0[4];
    v40 = v0[5];
    v42 = v0[2];
    sub_1C6F85170();

    (*(v40 + 8))(v42, v41);

    v28 = v0[1];

    return v28();
  }

  else
  {
    sub_1C754F2EC();
    sub_1C6F85170();

    v43 = v0[1];

    return v43(v38.persistedCount, v38.retiredCount);
  }
}

void Spatial3DCuration.WallpaperSuggester.getCandidatesFromExistingGyroPosterSuggestions()()
{
  v53 = MEMORY[0x1E69E7CC0];
  v1 = objc_opt_self();
  v2 = *(v0 + 40);
  v3 = [v1 fetchGyroPosterSuggestionsInPhotoLibrary:v2 limit:0];
  v4 = [v2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAA0;
  *(v5 + 32) = sub_1C755068C();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_1C755068C();
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_1C755068C();
  *(v5 + 72) = v8;
  sub_1C6FCA0EC(v5, v4);
  v9 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v3 options:v4];
  if (!v9)
  {
    if (qword_1EC213ED0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v10 = v9;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v11 = sub_1C75504AC();

  v12 = [v3 count];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    OUTLINED_FUNCTION_0_106();
    swift_once();
LABEL_23:
    v42 = sub_1C754FF1C();
    __swift_project_value_buffer(v42, qword_1EC219208);
    v43 = sub_1C754FEEC();
    v44 = sub_1C755119C();
    v45 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1C6F5C000, v43, v44, "No assets found for existing suggestions.", v47, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v3 = v43;
LABEL_26:

    return;
  }

  v13 = v12;
  v48 = v4;
  v14 = 0;
  v4 = &selRef_mergedPersonIdentifiers;
  v50 = v11;
  v49 = v12;
  while (1)
  {
    if (v13 == v14)
    {

      v4 = v48;
      goto LABEL_26;
    }

    if (v14 >= v13)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_28;
    }

    v16 = [v3 v4[45]];
    v17 = sub_1C6FCA214(v16);
    if (!v18)
    {
      break;
    }

    if (*(v11 + 16))
    {
      v19 = sub_1C6F78124(v17, v18);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }

      v22 = *(*(v11 + 56) + 8 * v19);
      v51 = v16;
      v52 = 2;
      v23 = v16;
      v24 = v22;
      [v24 clsWallpaperScore];
      v26 = v25;
      v27 = objc_allocWithZone(type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate());
      Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.init(with:score:)(&v51, v26);
      MEMORY[0x1CCA5D040]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();

      v14 = v15;
      v11 = v50;
    }

    else
    {

LABEL_14:
      if (qword_1EC213ED0 != -1)
      {
        OUTLINED_FUNCTION_0_106();
        swift_once();
      }

      v28 = sub_1C754FF1C();
      __swift_project_value_buffer(v28, qword_1EC219208);
      v29 = v16;
      v30 = sub_1C754FEEC();
      v31 = sub_1C755119C();
      v32 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v4;
        v35 = v3;
        v36 = OUTLINED_FUNCTION_41_0();
        v37 = swift_slowAlloc();
        v51 = v37;
        *v36 = 136315138;
        v38 = sub_1C70CAC04(v29);
        v40 = v39;

        if (!v40)
        {
          goto LABEL_32;
        }

        v41 = sub_1C6F765A4(v38, v40, &v51);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1C6F5C000, v30, v31, "Could not fetch key asset for suggestion %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v3 = v35;
        v11 = v50;
        v4 = v34;
        v13 = v49;
      }

      else
      {
      }

      ++v14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C7206B04(uint64_t a1)
{
  v3 = v1;
  sub_1C754F2CC();
  if (v2)
  {
    v5 = sub_1C754F2FC();
    (*(*(v5 - 8) + 8))(a1, v5);
    return;
  }

  if (qword_1EC213EC8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC219200;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v7 = v6;
  PerformanceMeasure.init(name:log:)();
  v8 = sub_1C7209D40();
  v9 = [*(v1 + 40) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C755BAA0;
  *(v10 + 32) = sub_1C755068C();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_1C755068C();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_1C755068C();
  *(v10 + 72) = v13;
  sub_1C6FCA0EC(v10, v9);
  v98 = v9;
  v14 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v8 options:v9];
  v102 = v8;
  if (v14)
  {
    v15 = v14;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v16 = sub_1C75504AC();

    v114 = MEMORY[0x1E69E7CC8];
    v113 = MEMORY[0x1E69E7CC0];
    v17 = [v8 count];
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    if (!v17)
    {

      goto LABEL_56;
    }

    v99 = v3;
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    *&v18 = 136315394;
    v96 = v18;
    v107 = v16;
    v103 = v17;
    while (1)
    {
      if (!(v19 % 0x64))
      {
        [v8 count];
        sub_1C754F2DC();
      }

      v21 = [v8 objectAtIndexedSubscript:v19, v96];
      v22 = sub_1C6FCA214(v21);
      if (!v23)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        return;
      }

      if (!*(v16 + 16))
      {
        break;
      }

      v24 = sub_1C6F78124(v22, v23);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      v27 = *(*(v16 + 56) + 8 * v24);
      if (v20 >> 62)
      {
        v71 = *(*(v16 + 56) + 8 * v24);
        v28 = sub_1C75516BC();
        v27 = v71;
      }

      else
      {
        v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28 >= 400)
      {
        v77 = v27;

        if (qword_1EC213ED0 != -1)
        {
          swift_once();
        }

        v78 = sub_1C754FF1C();
        __swift_project_value_buffer(v78, qword_1EC219208);
        v79 = v8;
        v80 = sub_1C754FEEC();
        v81 = sub_1C755118C();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 134218496;
          *(v82 + 4) = 400;
          *(v82 + 12) = 2048;
          *(v82 + 14) = v19;
          *(v82 + 22) = 2048;
          *(v82 + 24) = [v79 count];

          _os_log_impl(&dword_1C6F5C000, v80, v81, "Reached max assets of %ld. Iteration %ld/%ld", v82, 0x20u);
          MEMORY[0x1CCA5F8E0](v82, -1, -1);
        }

        else
        {
        }

        v8 = v102;
LABEL_56:
        if (qword_1EC213ED0 == -1)
        {
LABEL_57:
          v83 = sub_1C754FF1C();
          __swift_project_value_buffer(v83, qword_1EC219208);
          v84 = v8;
          sub_1C75504FC();
          v85 = sub_1C754FEEC();
          v86 = sub_1C75511BC();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 134218240;
            *(v87 + 4) = sub_1C6FB6304();

            *(v87 + 12) = 2048;
            *(v87 + 14) = [v84 count];

            _os_log_impl(&dword_1C6F5C000, v85, v86, "Accepted %ld/%ld (#candidates/#(total suggestions fetched))", v87, 0x16u);
            MEMORY[0x1CCA5F8E0](v87, -1, -1);
          }

          else
          {

            v85 = v84;
          }

          v88 = sub_1C754FEEC();
          v89 = sub_1C75511BC();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v112 = v91;
            *v90 = 136315138;
            swift_beginAccess();
            sub_1C70E2254();
            sub_1C75504FC();
            v92 = sub_1C75504BC();
            v94 = v93;

            v95 = sub_1C6F765A4(v92, v94, &v112);

            *(v90 + 4) = v95;
            _os_log_impl(&dword_1C6F5C000, v88, v89, "| Rejection reasons: %s", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v91);
            MEMORY[0x1CCA5F8E0](v91, -1, -1);
            MEMORY[0x1CCA5F8E0](v90, -1, -1);
          }

          sub_1C754F2EC();

          sub_1C6F85170();

          return;
        }

LABEL_64:
        swift_once();
        goto LABEL_57;
      }

      v29 = *(v99 + 16);
      v30 = MEMORY[0x1E69E7CD0];
      v112 = MEMORY[0x1E69E7CD0];
      v31 = *(v29 + 16);
      v100 = v27;
      if (v31)
      {
        v104 = v19;
        v32 = v20;
        v33 = v29 + 32;
        v34 = v27;
        sub_1C75504FC();
        do
        {
          sub_1C6FB5E28(v33, &v108);
          v36 = v110;
          v35 = v111;
          __swift_project_boxed_opaque_existential_1(&v108, v110);
          v37 = (*(v35 + 32))(v34, v36, v35);
          sub_1C7397F54(v37);
          __swift_destroy_boxed_opaque_existential_1(&v108);
          v33 += 40;
          --v31;
        }

        while (v31);

        v30 = v112;
        v8 = v102;
        v20 = v32;
        v19 = v104;
        v16 = v107;
      }

      else
      {
        v49 = v27;
      }

      if (*(v30 + 16))
      {
        sub_1C7205098(v30, &v114);
        if (qword_1EC213ED0 != -1)
        {
          swift_once();
        }

        v50 = sub_1C754FF1C();
        __swift_project_value_buffer(v50, qword_1EC219208);
        v51 = v100;
        sub_1C75504FC();
        v52 = sub_1C754FEEC();
        v53 = sub_1C755118C();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v108 = v101;
          *v54 = v96;
          v55 = [v51 localIdentifier];
          v106 = v51;
          v56 = sub_1C755068C();
          v97 = v53;
          v57 = v19;
          v58 = v20;
          v60 = v59;

          v61 = sub_1C6F765A4(v56, v60, &v108);
          v20 = v58;
          v19 = v57;

          *(v54 + 4) = v61;
          *(v54 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2192E0);
          sub_1C7099594(&qword_1EC2192E8, &qword_1EC2192E0);
          v62 = sub_1C7550F9C();
          v64 = v63;

          v65 = sub_1C6F765A4(v62, v64, &v108);
          v8 = v102;

          *(v54 + 14) = v65;
          _os_log_impl(&dword_1C6F5C000, v52, v97, "Asset %s did not pass gating due to %s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v101, -1, -1);
          v66 = v54;
          v16 = v107;
          MEMORY[0x1CCA5F8E0](v66, -1, -1);
        }

        else
        {
        }

        goto LABEL_38;
      }

      v108 = v21;
      v109 = 1;
      v67 = v21;
      [v100 clsWallpaperScore];
      v69 = v68;
      v70 = objc_allocWithZone(type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate());
      Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.init(with:score:)(&v108, v69);
      MEMORY[0x1CCA5D040]();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();

      v20 = v113;
LABEL_37:
      v16 = v107;
LABEL_38:
      if (++v19 == v103)
      {

        goto LABEL_56;
      }
    }

LABEL_22:
    if (qword_1EC213ED0 != -1)
    {
      swift_once();
    }

    v38 = sub_1C754FF1C();
    __swift_project_value_buffer(v38, qword_1EC219208);
    v39 = v21;
    v40 = sub_1C754FEEC();
    v41 = sub_1C755119C();
    if (os_log_type_enabled(v40, v41))
    {
      v105 = v19;
      v42 = v20;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v108 = v44;
      *v43 = 136315138;
      v45 = sub_1C70CAC04(v39);
      v47 = v46;

      if (!v47)
      {
        goto LABEL_66;
      }

      v48 = sub_1C6F765A4(v45, v47, &v108);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1C6F5C000, v40, v41, "Could not fetch key asset for suggestion %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1CCA5F8E0](v44, -1, -1);
      MEMORY[0x1CCA5F8E0](v43, -1, -1);

      v8 = v102;
      v20 = v42;
      v19 = v105;
    }

    else
    {
    }

    goto LABEL_37;
  }

  sub_1C754F2EC();
  if (qword_1EC213ED0 != -1)
  {
    swift_once();
  }

  v72 = sub_1C754FF1C();
  __swift_project_value_buffer(v72, qword_1EC219208);
  v73 = sub_1C754FEEC();
  v74 = sub_1C755119C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_1C6F5C000, v73, v74, "No assets found for existing suggestions.", v75, 2u);
    v76 = v75;
    v8 = v102;
    MEMORY[0x1CCA5F8E0](v76, -1, -1);
  }

  sub_1C6F85170();
}

uint64_t sub_1C7207904(unint64_t a1)
{
  v3 = v1;
  sub_1C754F2CC();
  if (v2)
  {
    v40 = sub_1C754F2FC();
    return (*(*(v40 - 8) + 8))(a1, v40);
  }

  else
  {
    if (qword_1EC213EC8 != -1)
    {
LABEL_46:
      swift_once();
    }

    v5 = qword_1EC219200;
    type metadata accessor for PerformanceMeasure();
    swift_allocObject();
    v6 = v5;
    PerformanceMeasure.init(name:log:)();
    v7 = sub_1C720A1FC();
    v77 = MEMORY[0x1E69E7CC0];
    v76 = MEMORY[0x1E69E7CC8];
    v8 = &selRef_clsSceneClassifications;
    v70 = [v7 count];
    if ((v70 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_48:
      swift_once();
    }

    else
    {
      v65 = v3;
      v9 = 0;
      v10 = MEMORY[0x1E69E7CC0];
      v66 = v7;
      v67 = a1;
LABEL_5:
      v68 = v10 & 0xFFFFFFFFFFFFFF8;
      v62 = v10;
      v69 = v10 >> 62;
      while (1)
      {
        v3 = "QueryTokenCategoryTypeString";
        if (v9 == v70)
        {
          v42 = v70;
          goto LABEL_35;
        }

        if (v9 >= v70)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_45;
        }

        [v7 v8[32]];
        sub_1C754F2DC();
        v12 = v69 ? sub_1C75516BC() : *(v68 + 16);
        if (v12 >= 400)
        {
          break;
        }

        [v7 v8[32]];
        sub_1C754F2DC();
        v13 = [v7 objectAtIndexedSubscript_];
        v14 = *(v65 + 4);
        v15 = MEMORY[0x1E69E7CD0];
        v75 = MEMORY[0x1E69E7CD0];
        v16 = *(v14 + 16);
        if (v16)
        {
          v17 = v11;
          v18 = v14 + 32;
          sub_1C75504FC();
          do
          {
            sub_1C6FB5E28(v18, &v71);
            v19 = v73;
            v20 = v74;
            __swift_project_boxed_opaque_existential_1(&v71, v73);
            v21 = (*(v20 + 32))(v13, v19, v20);
            sub_1C7397F54(v21);
            __swift_destroy_boxed_opaque_existential_1(&v71);
            v18 += 40;
            --v16;
          }

          while (v16);

          v15 = v75;
          v11 = v17;
        }

        if (!*(v15 + 16))
        {

          v71 = v13;
          v72 = 0;
          v36 = v13;
          [v36 clsWallpaperScore];
          v38 = v37;
          v39 = objc_allocWithZone(type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate());
          Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.init(with:score:)(&v71, v38);
          MEMORY[0x1CCA5D040]();
          v8 = &selRef_clsSceneClassifications;
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();

          v10 = v77;
          v7 = v66;
          a1 = v67;
          v9 = v11;
          goto LABEL_5;
        }

        sub_1C7205098(v15, &v76);
        if (qword_1EC213ED0 != -1)
        {
          swift_once();
        }

        v22 = sub_1C754FF1C();
        __swift_project_value_buffer(v22, qword_1EC219208);
        v23 = v13;
        sub_1C75504FC();
        v24 = sub_1C754FEEC();
        v25 = sub_1C755118C();

        if (os_log_type_enabled(v24, v25))
        {
          v64 = v11;
          v26 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v71 = v63;
          *v26 = 136315394;
          v27 = [v23 localIdentifier];
          v28 = sub_1C755068C();
          v30 = v29;

          v31 = sub_1C6F765A4(v28, v30, &v71);

          *(v26 + 4) = v31;
          *(v26 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2192E0);
          sub_1C7099594(&qword_1EC2192E8, &qword_1EC2192E0);
          v32 = sub_1C7550F9C();
          v34 = v33;

          v35 = sub_1C6F765A4(v32, v34, &v71);

          *(v26 + 14) = v35;
          _os_log_impl(&dword_1C6F5C000, v24, v25, "Asset %s did not pass gating due to %s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v63, -1, -1);
          MEMORY[0x1CCA5F8E0](v26, -1, -1);

          v9 = v64;
        }

        else
        {

          v9 = v11;
        }

        v7 = v66;
        a1 = v67;
        v8 = &selRef_clsSceneClassifications;
      }

      v42 = (v9 + 1);
      if (qword_1EC213ED0 != -1)
      {
        swift_once();
      }

      v43 = sub_1C754FF1C();
      __swift_project_value_buffer(v43, qword_1EC219208);
      v44 = v7;
      v45 = sub_1C754FEEC();
      v46 = sub_1C755118C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134218496;
        *(v47 + 4) = 400;
        *(v47 + 12) = 2048;
        *(v47 + 14) = v9;
        *(v47 + 22) = 2048;
        *(v47 + 24) = [v44 count];

        _os_log_impl(&dword_1C6F5C000, v45, v46, "Reached max assets of %ld. Iteration %ld/%ld", v47, 0x20u);
        v48 = v47;
        v8 = &selRef_clsSceneClassifications;
        MEMORY[0x1CCA5F8E0](v48, -1, -1);
      }

      else
      {

        v45 = v44;
      }

      v7 = v66;
LABEL_35:
      v70 = 0;
      a1 = v42;
      if (qword_1EC213ED0 != -1)
      {
        goto LABEL_48;
      }
    }

    v49 = sub_1C754FF1C();
    __swift_project_value_buffer(v49, qword_1EC219208);
    v50 = v7;
    sub_1C75504FC();
    v51 = sub_1C754FEEC();
    v52 = sub_1C75511BC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = *(v3 + 334);
      *(v53 + 4) = sub_1C6FB6304();

      *(v53 + 12) = 2048;
      *(v53 + 14) = a1;
      *(v53 + 22) = 2048;
      *(v53 + 24) = [v50 v8[32]];

      _os_log_impl(&dword_1C6F5C000, v51, v52, "Accepted %ld/%ld/%ld (#candidates/#assets tested/#total highlights fetched)", v53, 0x20u);
      MEMORY[0x1CCA5F8E0](v53, -1, -1);
    }

    else
    {

      v51 = v50;
    }

    v54 = sub_1C754FEEC();
    v55 = sub_1C75511BC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75 = v57;
      *v56 = 136315138;
      swift_beginAccess();
      sub_1C70E2254();
      sub_1C75504FC();
      v58 = sub_1C75504BC();
      v60 = v59;

      v61 = sub_1C6F765A4(v58, v60, &v75);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1C6F5C000, v54, v55, "| Rejection reasons: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1CCA5F8E0](v57, -1, -1);
      MEMORY[0x1CCA5F8E0](v56, -1, -1);
    }

    sub_1C754F2EC();
    if (v70)
    {

      sub_1C6F85170();
    }

    else
    {

      sub_1C6F85170();

      return v62;
    }
  }
}

Swift::tuple_keep_OpaquePointer_discard_OpaquePointer __swiftcall Spatial3DCuration.WallpaperSuggester.electSuggestionsToKeepAndDiscard(from:)(Swift::OpaquePointer from)
{
  if (qword_1EC213ED0 != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_0_106();
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC219208);
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  sub_1C755117C();
  v4 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_41_0();
    *v6 = 134217984;
    *(v6 + 4) = sub_1C6FB6304();

    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v7, v8, "[elect] Received %ld candidates as input for election");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7565670;
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v9 + 32) = sub_1C6F6AF98(0x65726F6373, 0xE500000000000000, 0);
  sub_1C75504FC();
  if (from._rawValue >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2192B0);
    sub_1C7551ABC();
  }

  else
  {
    sub_1C7551DDC();
  }

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2192B0);
  v12 = sub_1C7550B3C();

  sub_1C6F65BE8(0, &qword_1EDD108F0);
  v13 = sub_1C7550B3C();

  v14 = [v11 sortedDedupedCandidatesFromCandidates:v12 sortDescriptors:v13 timeIntervalForCandidateDeduping:60.0];

  v15 = sub_1C7550B5C();
  if (v15 >> 62)
  {
    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    sub_1C75504FC();
    v58 = sub_1C7551ABC();
    swift_bridgeObjectRelease_n();
    v15 = v58;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    sub_1C75504FC();
    sub_1C7551DDC();
    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    if (swift_dynamicCastMetatype() || (v56 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_9:
    }

    else
    {
      v57 = v16 + 32;
      while (swift_dynamicCastClass())
      {
        v57 += 8;
        if (!--v56)
        {
          goto LABEL_9;
        }
      }

      v15 = v16 | 1;
    }
  }

  sub_1C75504FC();
  sub_1C75504FC();
  v17 = sub_1C754FEEC();
  sub_1C75511BC();
  v18 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = sub_1C6FB6304();

    *(v20 + 12) = 2048;
    *(v20 + 14) = sub_1C6FB6304();

    OUTLINED_FUNCTION_8_46();
    _os_log_impl(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  sub_1C75504FC();
  v27 = sub_1C703433C(400, v15);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if ((v32 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v33 >> 1, v31))
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v37 != (v33 >> 1) - v31)
  {
LABEL_49:
    swift_unknownObjectRelease();
LABEL_14:
    sub_1C739CCD0(v27, v29, v31, v33);
    v35 = v34;
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v35)
  {
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_22:
  v60 = MEMORY[0x1E69E7CC0];
  v38 = sub_1C6FB6304();
  v39 = 0;
  from._rawValue = (v15 & 0xC000000000000001);
  while (v38 != v39)
  {
    if (from._rawValue)
    {
      v40 = MEMORY[0x1CCA5DDD0](v39, v15);
    }

    else
    {
      if (v39 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v40 = *(v15 + 8 * v39 + 32);
    }

    v41 = v40;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v42 = &v40[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source];
    swift_beginAccess();
    if (v42[8] == 2)
    {
    }

    else
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    ++v39;
  }

  v43 = Spatial3DCuration.WallpaperSuggester.backfillIfNeeded(candidates:withSortedNewCandidates:)(v35, v60);

  v44 = sub_1C75504FC();
  v45 = sub_1C706EF70(v44);
  v46 = sub_1C75504FC();
  v47 = sub_1C706EF70(v46);
  v48 = sub_1C7238894(v47, v45);

  v49 = sub_1C739CCE8(v48);

  sub_1C75504FC();
  sub_1C75504FC();

  v50 = sub_1C754FEEC();
  v51 = sub_1C75511BC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134218752;
    *(v52 + 4) = sub_1C6FB6304();

    *(v52 + 12) = 2048;
    *(v52 + 14) = sub_1C6FB6304();
    *(v52 + 22) = 2048;
    *(v52 + 24) = sub_1C6FB6304();

    *(v52 + 32) = 2048;
    v53 = sub_1C6FB6304();

    *(v52 + 34) = v53;

    _os_log_impl(&dword_1C6F5C000, v50, v51, "[elect] Keeping %ld/%ld candidates, discarding %ld/%ld", v52, 0x2Au);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v54 = v43;
  v55 = v49;
  result.discard._rawValue = v55;
  result.keep._rawValue = v54;
  return result;
}

Swift::tuple_persistedCount_Int_retiredCount_Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Spatial3DCuration.WallpaperSuggester.process(electionResults:)(Swift::tuple_keep_OpaquePointer_discard_OpaquePointer electionResults)
{
  rawValue = electionResults.discard._rawValue;
  v3 = electionResults.keep._rawValue;
  __src[11] = *MEMORY[0x1E69E9840];
  if (qword_1EC213EC8 != -1)
  {
    OUTLINED_FUNCTION_2_71();
    swift_once();
  }

  v4 = qword_1EC219200;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v5 = v4;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EC213ED0 != -1)
  {
    OUTLINED_FUNCTION_0_106();
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC219208);
  sub_1C75504FC();
  sub_1C75504FC();
  v7 = sub_1C754FEEC();
  v8 = sub_1C755117C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = sub_1C6FB6304();
    *(v9 + 12) = 2048;
    *(v9 + 14) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v7, v8, "[process] Keeping %ld candidates, retiring or ignoring %ld", v9, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = *(v1 + 40);
  sub_1C720A728(v1, __src);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = rawValue;
  memcpy(v12 + 4, __src, 0x58uLL);
  v12[15] = v10;
  v31[4] = sub_1C720A760;
  v31[5] = v12;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = sub_1C6FD8F68;
  v31[3] = &block_descriptor_17;
  v13 = _Block_copy(v31);
  sub_1C75504FC();
  sub_1C75504FC();

  __src[0] = 0;
  v14 = [v11 performChangesAndWait:v13 error:__src];
  _Block_release(v13);
  v15 = __src[0];
  if (v14)
  {
    swift_retain_n();
    v16 = v15;
    v17 = sub_1C754FEEC();
    sub_1C75511BC();
    v18 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      swift_beginAccess();
      *(v20 + 4) = *(v10 + 16);

      *(v20 + 12) = 2048;
      *(v20 + 14) = *(v10 + 24);

      OUTLINED_FUNCTION_8_46();
      _os_log_impl(v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    swift_beginAccess();
    v15 = *(v10 + 16);
    v14 = *(v10 + 24);

    sub_1C6F85170();
  }

  else
  {
    v27 = __src[0];
    sub_1C754DBEC();

    swift_willThrow();

    sub_1C6F85170();
  }

  v28 = v15;
  v29 = v14;
  result.retiredCount = v29;
  result.persistedCount = v28;
  return result;
}

uint64_t Spatial3DCuration.WallpaperSuggester.backfillIfNeeded(candidates:withSortedNewCandidates:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C75504FC();
  v4 = sub_1C706EF70(v3);
  v5 = sub_1C6FB6304();
  v6 = 0;
  v7 = 0;
  v8 = &qword_1EC219000;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCA5DDD0](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v9 = *(a1 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v10 = v9[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8];

    v11 = v10 < 2;
    ++v6;
    v12 = __OFADD__(v7, v11);
    v7 += v11;
    if (v12)
    {
      goto LABEL_75;
    }
  }

  v71 = MEMORY[0x1E69E7CC0];
  v69 = 20 - v7;
  if (__OFSUB__(20, v7))
  {
    goto LABEL_78;
  }

  if (qword_1EC213ED0 == -1)
  {
    goto LABEL_13;
  }

LABEL_79:
  OUTLINED_FUNCTION_0_106();
  swift_once();
LABEL_13:
  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EC219208);
  v14 = sub_1C754FEEC();
  v15 = sub_1C755117C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_41_0();
    *v16 = 134217984;
    *(v16 + 4) = v7;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "[backfill] %ld new candidates are already in the best n candidates", v16, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (v69 < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = sub_1C754FEEC();
    sub_1C755117C();
    v18 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_41_0();
      *v20 = 134217984;
      *(v20 + 4) = v69;
      OUTLINED_FUNCTION_19(&dword_1C6F5C000, v21, v22, "[backfill] Will try to backfill with %ld new candidates");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v23 = 0;
    v8 = (v4 + 56);
    v24 = MEMORY[0x1E69E7CC0];
    v68 = a1;
LABEL_19:
    v25 = v24 & 0xFFFFFFFFFFFFFF8;
    v67 = v24;
    v70 = v24 >> 62;
    while (1)
    {
      v26 = a2 >> 62 ? sub_1C75516BC() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23 == v26)
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1CCA5DDD0](v23, a2);
      }

      else
      {
        if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v27 = *(a2 + 32 + 8 * v23);
      }

      v7 = v27;
      v12 = __OFADD__(v23++, 1);
      if (v12)
      {
        goto LABEL_76;
      }

      if (v70)
      {
        v28 = sub_1C75516BC();
      }

      else
      {
        v28 = *(v25 + 16);
      }

      if (v28 >= v69)
      {

        break;
      }

      if ((v4 & 0xC000000000000001) == 0)
      {
        if (*(v4 + 16))
        {
          type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
          v31 = sub_1C75513DC();
          v32 = ~(-1 << *(v4 + 32));
          while (1)
          {
            v33 = v31 & v32;
            if (((*(v8 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
            {
              break;
            }

            v34 = *(*(v4 + 48) + 8 * v33);
            v35 = sub_1C75513EC();

            v31 = v33 + 1;
            if (v35)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_41:
        v36 = v7;
        MEMORY[0x1CCA5D040]();
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v24 = v71;
        a1 = v68;
        goto LABEL_19;
      }

      v29 = v7;
      v30 = sub_1C755170C();

      if ((v30 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_38:

      a1 = v68;
    }

    v8 = &qword_1EC219000;
    v37 = v67;
  }

  sub_1C75504FC();
  v38 = sub_1C754FEEC();
  v39 = sub_1C755117C();
  v40 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_41_0();
    *v42 = 134217984;
    *(v42 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v38, v39, "[backfill] Found %ld candidates for backfilling", v42, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C6FD3534(a1);
  v43 = v37;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v43 = sub_1C70E43B4(v37);
  }

  v44 = 0;
  v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = (v43 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_55:
  v47 = v8[69];
  v48 = (v46 + 8 * v44);
  while (v44 < v45)
  {
    v49 = *v48;
    if (*(*v48 + v47 + 8) == 2)
    {
      v50 = v45 - 1;
      v51 = (v46 + 8 * v45);
      while (v44 < v50)
      {
        v53 = *--v51;
        v52 = v53;
        --v50;
        if (*(v53 + v47 + 8) != 2)
        {
          *v48 = v52;
          *v51 = v49;
          ++v44;
          v45 = v50 + 1;
          goto LABEL_55;
        }
      }

      break;
    }

    ++v44;
    ++v48;
  }

  v54 = sub_1C703433C(400, v43);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  if ((v59 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = MEMORY[0x1E69E7CC0];
  }

  v64 = *(v63 + 16);

  if (__OFSUB__(v60 >> 1, v58))
  {
    __break(1u);
    goto LABEL_81;
  }

  if (v64 != (v60 >> 1) - v58)
  {
LABEL_81:
    swift_unknownObjectRelease();
LABEL_64:
    sub_1C739CCD0(v54, v56, v58, v60);
    v62 = v61;
LABEL_71:
    swift_unknownObjectRelease();
    return v62;
  }

  v62 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v62)
  {
    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_71;
  }

  return v62;
}

void sub_1C720946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v57 = sub_1C754DF6C();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = sub_1C6FB6304();
  v62 = a4;
  if (!v14)
  {
LABEL_21:
    v39 = v53;
    v40 = sub_1C6FB6304();
    if (!v40)
    {
      return;
    }

    v41 = v40;
    if (v40 < 1)
    {
      goto LABEL_43;
    }

    swift_beginAccess();
    v42 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1CCA5DDD0](v42, v39);
      }

      else
      {
        v43 = *(v39 + 8 * v42 + 32);
      }

      v44 = v43;
      if (v43[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8] && v43[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8] != 1)
      {
        v45 = *&v43[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source];
        v46 = [v45 subtype];
        v47 = [objc_opt_self() changeRequestForSuggestion_];
        v48 = v47;
        if (v46 == 683)
        {
          [v47 markRetired];

          v49 = v62;
          if (v48)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v49 = v62;
          if (v47)
          {
            [v47 setAvailableFeatures_];

            v48 = v45;
LABEL_35:

            v50 = *(v49 + 24);
            v37 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v37)
            {
              goto LABEL_41;
            }

            *(v49 + 24) = v51;
            goto LABEL_38;
          }
        }
      }

      else
      {
      }

LABEL_38:
      if (v41 == ++v42)
      {
        return;
      }
    }
  }

  v15 = v14;
  if (v14 < 1)
  {
    goto LABEL_42;
  }

  v64 = a1 & 0xC000000000000001;
  swift_beginAccess();
  v16 = 0;
  v17 = (v6 + 8);
  v54 = xmmword_1C7565670;
  v63 = v13;
  v59 = (v6 + 8);
  v55 = v15;
  v56 = a1;
  while (1)
  {
    v18 = v64 ? MEMORY[0x1CCA5DDD0](v16, a1) : *(a1 + 8 * v16 + 32);
    v19 = v18;
    v20 = *&v18[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source];
    if (!v18[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8])
    {
      break;
    }

    if (v18[OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8] == 1)
    {
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 changeRequestForSuggestion_];
      if (v23)
      {
        v24 = v23;
        [v23 setAvailableFeatures_];

        goto LABEL_13;
      }

LABEL_17:
      v17 = v59;
      goto LABEL_18;
    }

LABEL_18:
    if (v15 == ++v16)
    {
      goto LABEL_21;
    }
  }

  v25 = v20;
  sub_1C754DF5C();
  sub_1C754DEBC();
  v60 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v26 = swift_allocObject();
  *(v26 + 16) = v54;
  *(v26 + 32) = v25;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v61 = v25;
  v27 = sub_1C7550B3C();

  v28 = v58;
  sub_1C754DF5C();
  v29 = v10;
  v30 = sub_1C754DECC();
  v31 = *v17;
  v32 = v57;
  (*v17)(v28, v57);
  v33 = v32;
  v34 = sub_1C754DECC();
  v35 = [v60 creationRequestForSuggestionWithType:6 subtype:683 keyAssets:v27 representativeAssets:0 creationDate:v30 relevantUntilDate:v34 version:3];

  if (!v35)
  {

    v31(v29, v33);
    v31(v63, v33);
    a4 = v62;
    v15 = v55;
    a1 = v56;
    v10 = v29;
    goto LABEL_18;
  }

  [v35 setAvailableFeatures_];

  v31(v29, v33);
  v31(v63, v33);
  v19 = v35;
  a4 = v62;
  v15 = v55;
  a1 = v56;
  v10 = v29;
LABEL_13:

  v36 = *(a4 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(a4 + 16) = v38;
    goto LABEL_17;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

id Spatial3DCuration.WallpaperSuggester.suggestionChangeRequest(toPersist:)(uint64_t a1)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_54();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = *(a1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source);
  v13 = *(a1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8);
  if (*(a1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8))
  {
    v14 = 0;
    if (v13 == 1)
    {
      v15 = objc_opt_self();
      v16 = v12;
      v14 = [v15 changeRequestForSuggestion_];
      if (v14)
      {
        [v14 setAvailableFeatures_];
      }
    }
  }

  else
  {
    v17 = v12;
    sub_1C754DF5C();
    sub_1C754DEBC();
    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C7565670;
    *(v19 + 32) = v17;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v26 = v17;
    v20 = sub_1C7550B3C();

    sub_1C754DF5C();
    v21 = sub_1C754DECC();
    v22 = *(v6 + 8);
    v22(v2, v4);
    v23 = sub_1C754DECC();
    v14 = [v18 creationRequestForSuggestionWithType:6 subtype:683 keyAssets:v20 representativeAssets:0 creationDate:v21 relevantUntilDate:v23 version:3];

    if (v14)
    {
      [v14 setAvailableFeatures_];
    }

    v22(v1, v4);
    v22(v11, v4);
  }

  return v14;
}

id Spatial3DCuration.WallpaperSuggester.suggestionChangeRequest(toRetire:)(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source + 8) < 2u)
  {
    return 0;
  }

  v2 = *(a1 + OBJC_IVAR____TtCVO18PhotosIntelligence17Spatial3DCuration18WallpaperSuggester19SuggestionCandidate_source);
  v3 = Spatial3DCuration.WallpaperSuggester.retirementRequest(for:)(v2);

  return v3;
}

NSObject *sub_1C7209D40()
{
  v1 = [*(v0 + 40) librarySpecificFetchOptions];
  [v1 setChunkSizeForFetch:200];
  [v1 setCacheSizeForFetch:200];
  v22 = v1;
  [v1 setFetchLimit:1000];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C756AD80;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C75604F0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1C6F6D524();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0x6574617473;
  *(v3 + 40) = 0xE500000000000000;
  v6 = MEMORY[0x1E69E75F8];
  v7 = MEMORY[0x1E69E7660];
  *(v3 + 96) = MEMORY[0x1E69E75F8];
  *(v3 + 104) = v7;
  *(v3 + 72) = 4;
  *(v2 + 32) = sub_1C755112C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C75604F0;
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = 1701869940;
  *(v8 + 40) = 0xE400000000000000;
  *(v8 + 96) = v6;
  *(v8 + 104) = v7;
  *(v8 + 72) = 6;
  *(v2 + 40) = sub_1C755112C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75604F0;
  *(v9 + 56) = v4;
  *(v9 + 64) = v5;
  *(v9 + 32) = 0x65707974627573;
  *(v9 + 40) = 0xE700000000000000;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1C716DDD4();
  v10 = 0;
  v11 = *(v23 + 16);
  do
  {
    v12 = *(&unk_1F46A8B08 + v10 + 32);
    if (v11 >= *(v23 + 24) >> 1)
    {
      sub_1C716DDD4();
    }

    *(v23 + 16) = v11 + 1;
    *(v23 + 2 * v11 + 32) = v12;
    v10 += 2;
    ++v11;
  }

  while (v10 != 8);
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300);
  *(v9 + 104) = sub_1C7099594(&qword_1EDD0CF08, &qword_1EC219300);
  *(v9 + 72) = v23;
  *(v2 + 48) = sub_1C755112C();
  *(v2 + 56) = [objc_opt_self() internalPredicateForSuggestionFetchExcludingAvailableFeatures_];
  v13 = sub_1C6F6E5C4();
  v14 = v22;
  [v22 setInternalPredicate:v13];

  v15 = [objc_opt_self() fetchSuggestionsWithOptions_];
  if (qword_1EC213ED0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EC219208);
  v17 = v15;
  v18 = sub_1C754FEEC();
  v19 = sub_1C755117C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = [v17 count];

    _os_log_impl(&dword_1C6F5C000, v18, v19, "Found %ld suggestions", v20, 0xCu);
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
  }

  else
  {

    v18 = v22;
    v14 = v17;
  }

  return v17;
}

id sub_1C720A1FC()
{
  v1 = [*(v0 + 40) librarySpecificFetchOptions];
  [v1 setFetchLimit_];
  [v1 setChunkSizeForFetch_];
  [v1 setCacheSizeForFetch_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755BAA0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1C6F6AF98(0xD000000000000026, 0x80000001C759E130, 0);
  v5 = sub_1C6F65BE8(0, &qword_1EDD108F0);
  *(v2 + 56) = v5;
  *(v2 + 32) = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, 0);
  *(v2 + 88) = v5;
  *(v2 + 64) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  *(v2 + 120) = v5;
  *(v2 + 96) = v9;
  sub_1C70E7F40(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C755BAA0;
  *(v10 + 32) = sub_1C755068C();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_1C755068C();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_1C755068C();
  *(v10 + 72) = v13;
  sub_1C6FCA0EC(v10, v1);
  v14 = static CurationPredicateBuilder.internalPredicateForGyroPoster()();
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C755BAA0;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1C6F6D524();
  *(v15 + 32) = 0xD000000000000019;
  *(v15 + 40) = 0x80000001C75A4A30;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = 1701869940;
  *(v15 + 80) = 0xE400000000000000;
  v18 = MEMORY[0x1E69E7660];
  *(v15 + 136) = MEMORY[0x1E69E75F8];
  *(v15 + 144) = v18;
  *(v15 + 112) = 6;
  v19 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C7564A90;
  *(v20 + 32) = v14;
  *(v20 + 40) = v19;
  v21 = v14;
  v22 = v19;
  v23 = sub_1C6F6E5C4();
  [v1 setInternalPredicate_];

  v24 = [objc_opt_self() fetchAssetsWithOptions_];
  if (qword_1EC213ED0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C754FF1C();
  __swift_project_value_buffer(v25, qword_1EC219208);
  v26 = v24;
  v27 = sub_1C754FEEC();
  v28 = sub_1C755117C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = [v26 count];

    _os_log_impl(&dword_1C6F5C000, v27, v28, "Found %ld highlight assets", v29, 0xCu);
    MEMORY[0x1CCA5F8E0](v29, -1, -1);
  }

  else
  {

    v22 = v21;
    v21 = v26;
  }

  return v26;
}

id Spatial3DCuration.WallpaperSuggester.retirementRequest(for:)(void *a1)
{
  v2 = [a1 subtype];
  v3 = [objc_opt_self() changeRequestForSuggestion_];
  v4 = v3;
  if (v2 == 683)
  {
    if (v3)
    {
      [v3 markRetired];
    }
  }

  else if (v3)
  {
    [v3 setAvailableFeatures_];
  }

  return v4;
}

unint64_t sub_1C720A774()
{
  result = qword_1EC2192C0;
  if (!qword_1EC2192C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2192C0);
  }

  return result;
}

void sub_1C720A7E0()
{
  sub_1C6F5FB48();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void static PersonalTraitDiagnosticsGenerator.save(finalGlobalAndPersonalTraits:to:)()
{
  OUTLINED_FUNCTION_124();
  v62 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A18);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v61 - v7;
  v67 = type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_3_0();
  v65 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v66 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A20);
  v14 = OUTLINED_FUNCTION_76(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v61 - v15;
  v17 = type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_3_0();
  v64 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v22 = v21 - v20;
  v23 = *(v4 + 16);
  if (v23)
  {
    v61[1] = v2;
    v24 = v4 + 32;
    v25 = MEMORY[0x1E69E7CC0];
    v26 = v24;
    v27 = v23;
    v63 = v21 - v20;
    do
    {
      sub_1C6FB5E28(v26, v69);
      sub_1C6FD80E4(v69, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
      v28 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v16, v28 ^ 1u, 1, v17);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        sub_1C6FD7FC8(v16, &unk_1EC217A20);
      }

      else
      {
        OUTLINED_FUNCTION_69_4();
        sub_1C720C064(v16, v22, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB1D60(v35, v36, v37, v25);
          v25 = v38;
        }

        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        v32 = v25;
        if (v31 >= v30 >> 1)
        {
          sub_1C6FB1D60(v30 > 1, v31 + 1, 1, v25);
          v32 = v39;
        }

        *(v32 + 16) = v31 + 1;
        v25 = v32;
        OUTLINED_FUNCTION_69_4();
        v22 = v63;
        sub_1C720C064(v63, v33, v34);
      }

      v26 += 40;
      --v27;
    }

    while (v27);
    v64 = v25;
    v40 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C6FB5E28(v24, v69);
      sub_1C6FD80E4(v69, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
      v41 = v67;
      v42 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v8, v42 ^ 1u, 1, v41);
      if (__swift_getEnumTagSinglePayload(v8, 1, v41) == 1)
      {
        sub_1C6FD7FC8(v8, &qword_1EC217A18);
      }

      else
      {
        OUTLINED_FUNCTION_66_0();
        sub_1C720C064(v8, v66, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB1D20(v49, v50, v51, v40);
          v40 = v52;
        }

        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1C6FB1D20(v44 > 1, v45 + 1, 1, v40);
          v40 = v53;
        }

        *(v40 + 16) = v45 + 1;
        OUTLINED_FUNCTION_66_0();
        sub_1C720C064(v46, v47, v48);
      }

      v24 += 40;
      --v23;
    }

    while (v23);
    v54 = v64;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
  }

  *&v69[0] = v54;
  sub_1C75504FC();
  v55 = v62;
  sub_1C720BED4(v69);
  if (v55)
  {

    __break(1u);
  }

  else
  {

    v56 = *&v69[0];
    *&v69[0] = v40;
    sub_1C75504FC();
    sub_1C720BDEC(v69);

    v57 = *&v69[0];
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    *&v69[0] = v56;
    *(&v69[0] + 1) = v57;
    sub_1C720BFBC();
    v58 = sub_1C754DBAC();
    v60 = v59;

    sub_1C7161C08();
    sub_1C6FC1640(v58, v60);

    OUTLINED_FUNCTION_125();
  }
}

uint64_t static PersonalTraitDiagnosticsGenerator.save(selectionResult:to:)()
{
  result = PFOSVariantHasInternalDiagnostics();
  if (result)
  {
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    sub_1C720C0C4();
    v2 = sub_1C754DBAC();
    if (v0)
    {
      swift_getErrorValue();
      v4 = sub_1C7551EAC();
      v6 = v5;
      sub_1C720C010();
      swift_allocError();
      *v7 = v4;
      v7[1] = v6;
      swift_willThrow();
    }

    else
    {
      v8 = v2;
      v9 = v3;
      sub_1C7161C08();
      sub_1C6FC1640(v8, v9);
    }
  }

  return result;
}

uint64_t sub_1C720B044(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xEF746C757365526ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C720B0E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219320);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C720C200();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C755200C();
  v10[0] = v7;
  v10[1] = v8;
  sub_1C720C254();
  sub_1C7551D2C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C720B260@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219330);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C720C200();
  sub_1C7551FFC();
  if (!v2)
  {
    sub_1C720C2A8();
    sub_1C7551C1C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C720B3D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C75A4B60 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C75A4B80 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C720B4A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C720B4DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219318);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C720C1AC();
  sub_1C755200C();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848);
  sub_1C720C2FC(&qword_1EDD06BE8, &qword_1EDD0C510);
  sub_1C7551D2C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
    sub_1C720C394(&qword_1EDD06BC8, &qword_1EDD0C088);
    sub_1C7551D2C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C720B70C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219340);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C720C1AC();
  sub_1C7551FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848);
  HIBYTE(v8) = 0;
  sub_1C720C2FC(&qword_1EC219348, &qword_1EDD0C508);
  sub_1C7551C1C();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
  HIBYTE(v8) = 1;
  sub_1C720C394(&qword_1EDD06BC0, &qword_1EDD0C080);
  sub_1C7551C1C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1C720B990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C720B044(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C720B9BC(uint64_t a1)
{
  v2 = sub_1C720C200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C720B9F8(uint64_t a1)
{
  v2 = sub_1C720C200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C720BA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C720B3D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C720BA94(uint64_t a1)
{
  v2 = sub_1C720C1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C720BAD0(uint64_t a1)
{
  v2 = sub_1C720C1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C720BB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C720B70C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t static PersonalTraitDiagnosticsGenerator.makePersonalTraits(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  sub_1C73C6860(0xD000000000000012, 0x80000001C75A4B40, v6);
  if (!v1)
  {
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1C6FD7FC8(v6, &qword_1EC215BD8);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v13, v6, v7);
      sub_1C754DB8C();
      swift_allocObject();
      sub_1C754DB7C();
      v15 = sub_1C754DD6C();
      v17 = v16;
      sub_1C720C118();
      sub_1C754DB5C();
      v18 = OUTLINED_FUNCTION_0_57();
      v19(v18);
      sub_1C6FC1640(v15, v17);

      a1 = v20;
    }
  }

  return a1;
}

void sub_1C720BDEC(uint64_t *a1)
{
  v2 = *(type metadata accessor for PersonalTrait() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C9C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C720C474(v6, type metadata accessor for PersonalTrait);
  *a1 = v3;
}

void sub_1C720BED4(uint64_t *a1)
{
  v2 = *(type metadata accessor for GlobalTrait() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D74();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C720C474(v6, type metadata accessor for GlobalTrait);
  *a1 = v3;
}

unint64_t sub_1C720BFBC()
{
  result = qword_1EDD06FB8;
  if (!qword_1EDD06FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FB8);
  }

  return result;
}

unint64_t sub_1C720C010()
{
  result = qword_1EC219308;
  if (!qword_1EC219308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219308);
  }

  return result;
}

uint64_t sub_1C720C064(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C720C0C4()
{
  result = qword_1EDD09730;
  if (!qword_1EDD09730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09730);
  }

  return result;
}

unint64_t sub_1C720C118()
{
  result = qword_1EC219310;
  if (!qword_1EC219310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219310);
  }

  return result;
}

unint64_t sub_1C720C1AC()
{
  result = qword_1EDD06FD0;
  if (!qword_1EDD06FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FD0);
  }

  return result;
}

unint64_t sub_1C720C200()
{
  result = qword_1EDD09748;
  if (!qword_1EDD09748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09748);
  }

  return result;
}

unint64_t sub_1C720C254()
{
  result = qword_1EC219328;
  if (!qword_1EC219328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219328);
  }

  return result;
}

unint64_t sub_1C720C2A8()
{
  result = qword_1EC219338;
  if (!qword_1EC219338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219338);
  }

  return result;
}

uint64_t sub_1C720C2FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216848);
    sub_1C720C42C(a2, type metadata accessor for GlobalTrait);
    OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C720C394(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2165B8);
    sub_1C720C42C(a2, type metadata accessor for PersonalTrait);
    OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C720C42C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C720C474(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 8);
  if (sub_1C7551D7C() < v3)
  {
    if (v3 >= -1)
    {
      v4 = v3 / 2;
      if (v3 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v5 = sub_1C7550BBC();
        *(v5 + 16) = v4;
      }

      v6 = (a2)(0);
      OUTLINED_FUNCTION_76(v6);
      sub_1C720C818();
      *(v5 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C720C5E0();
  }
}

void sub_1C720C5E0()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v38 = v10(0);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v30 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v30 - v18);
  v32 = v7;
  if (v5 != v7)
  {
    v20 = *(v17 + 72);
    v21 = *v3 + v20 * (v5 - 1);
    v22 = -v20;
    v23 = v9 - v5;
    v37 = *v3;
    v31 = v20;
    v24 = v37 + v20 * v5;
    while (2)
    {
      v35 = v21;
      v36 = v5;
      v33 = v24;
      v34 = v23;
      v25 = v23;
      v26 = v21;
      while (1)
      {
        sub_1C70AE8B4(v24, v19, v1);
        sub_1C70AE8B4(v26, v15, v1);
        if (*v19 == *v15 && v19[1] == v15[1])
        {
          break;
        }

        v28 = sub_1C7551DBC();
        sub_1C720D5B8(v15, v1);
        sub_1C720D5B8(v19, v1);
        if (v28)
        {
          if (!v37)
          {
            __break(1u);
            return;
          }

          sub_1C720C064(v24, v12, v1);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C720C064(v12, v26, v1);
          v26 += v22;
          v24 += v22;
          if (!__CFADD__(v25++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C720D5B8(v15, v1);
      sub_1C720D5B8(v19, v1);
LABEL_14:
      v5 = v36 + 1;
      v21 = v35 + v31;
      v23 = v34 - 1;
      v24 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C720C818()
{
  OUTLINED_FUNCTION_124();
  v142 = v1;
  v143 = v2;
  v4 = v3;
  v149 = v0;
  v6 = v5;
  v8 = v7;
  v135 = v9;
  v151 = v10(0);
  OUTLINED_FUNCTION_3_0();
  v144 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v150 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v153 = v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  v148 = v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v147 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_130();
  v133 = v24;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v25);
  v132 = (&v130 - v27);
  v145 = v8;
  v28 = v8[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v153 = *v135;
    if (!*v135)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v120 = v30;
      v123 = *(v30 + 2);
      v121 = (v30 + 16);
      for (i = v123; i >= 2; *v121 = i)
      {
        if (!*v145)
        {
          goto LABEL_152;
        }

        v124 = &v120[16 * i];
        v125 = *v124;
        v126 = &v121[2 * i];
        v127 = *(v126 + 1);
        v128 = v149;
        sub_1C720D138(*v145 + *(v144 + 72) * *v124, *v145 + *(v144 + 72) * *v126, *v145 + *(v144 + 72) * v127, v153, v4, v142, v4, v143, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
        v149 = v128;
        if (v128)
        {
          break;
        }

        if (v127 < v125)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v121)
        {
          goto LABEL_141;
        }

        *v124 = v125;
        *(v124 + 1) = v127;
        v129 = *v121 - i;
        if (*v121 < i)
        {
          goto LABEL_142;
        }

        i = *v121 - 1;
        sub_1C7423CF4(v126 + 16, v129, v126);
      }

LABEL_124:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_149:
    v30 = sub_1C7420830();
    goto LABEL_116;
  }

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v134 = v6;
  v152 = v26;
  while (1)
  {
    v31 = v29++;
    if (v29 < v28)
    {
      v140 = v28;
      v130 = v30;
      v32 = *v145;
      v33 = *(v144 + 72);
      v34 = v132;
      sub_1C70AE8B4(*v145 + v33 * v29, v132, v4);
      v146 = v33;
      v35 = v32 + v33 * v31;
      v36 = v133;
      sub_1C70AE8B4(v35, v133, v4);
      if (*v34 == *v36 && v34[1] == v36[1])
      {
        LODWORD(v141) = 0;
      }

      else
      {
        LODWORD(v141) = sub_1C7551DBC();
      }

      sub_1C720D5B8(v133, v4);
      sub_1C720D5B8(v132, v4);
      v131 = v31;
      v38 = v31 + 2;
      v39 = v146 * (v31 + 2);
      v40 = v32 + v39;
      v41 = v146 * v29;
      v42 = v32 + v146 * v29;
      do
      {
        v43 = v38;
        v44 = v29;
        v45 = v41;
        v46 = v39;
        if (v38 >= v140)
        {
          break;
        }

        v47 = v147;
        sub_1C70AE8B4(v40, v147, v4);
        v48 = v148;
        sub_1C70AE8B4(v42, v148, v4);
        v49 = *v47 == *v48 && v47[1] == v48[1];
        v50 = v49 ? 0 : sub_1C7551DBC();
        sub_1C720D5B8(v148, v4);
        sub_1C720D5B8(v147, v4);
        v51 = v141 ^ v50;
        v38 = v43 + 1;
        v40 += v146;
        v42 += v146;
        v29 = v44 + 1;
        v41 = v45 + v146;
        v39 = v46 + v146;
      }

      while ((v51 & 1) == 0);
      if (v141)
      {
        if (v43 < v131)
        {
          goto LABEL_146;
        }

        if (v131 >= v43)
        {
          v29 = v43;
          v30 = v130;
          v6 = v134;
          v31 = v131;
          goto LABEL_39;
        }

        v141 = v43;
        v52 = v131 * v146;
        v53 = v131;
        do
        {
          if (v53 != v44)
          {
            v54 = *v145;
            if (!*v145)
            {
              goto LABEL_153;
            }

            sub_1C720C064(v54 + v52, v138, v4);
            v55 = v52 < v45 || v54 + v52 >= (v54 + v46);
            if (v55)
            {
              OUTLINED_FUNCTION_11_40();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v45)
            {
              OUTLINED_FUNCTION_11_40();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C720C064(v138, v54 + v45, v4);
          }

          ++v53;
          v45 -= v146;
          v46 -= v146;
          v52 += v146;
          v56 = v53 < v44--;
        }

        while (v56);
        v29 = v141;
      }

      else
      {
        v29 = v43;
      }

      v30 = v130;
      v6 = v134;
      v31 = v131;
    }

LABEL_39:
    v57 = v145[1];
    if (v29 < v57)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_145;
      }

      if (v29 - v31 < v6)
      {
        break;
      }
    }

LABEL_61:
    if (v29 < v31)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB17EC();
      v30 = v118;
    }

    v74 = *(v30 + 2);
    v75 = v74 + 1;
    if (v74 >= *(v30 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v30 = v119;
    }

    *(v30 + 2) = v75;
    v76 = v30 + 32;
    v77 = &v30[16 * v74 + 32];
    *v77 = v31;
    v77[1] = v29;
    v141 = *v135;
    if (!v141)
    {
      goto LABEL_154;
    }

    if (v74)
    {
      v146 = v29;
      while (1)
      {
        v78 = v75 - 1;
        v79 = &v76[16 * v75 - 16];
        v80 = &v30[16 * v75];
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v81 = *(v30 + 4);
          v82 = *(v30 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_82:
          if (v84)
          {
            goto LABEL_131;
          }

          v96 = *v80;
          v95 = *(v80 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_134;
          }

          v100 = *(v79 + 1);
          v101 = v100 - *v79;
          if (__OFSUB__(v100, *v79))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v98, v101))
          {
            goto LABEL_139;
          }

          if (v98 + v101 >= v83)
          {
            if (v83 < v101)
            {
              v78 = v75 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v75 < 2)
        {
          goto LABEL_133;
        }

        v103 = *v80;
        v102 = *(v80 + 1);
        v91 = __OFSUB__(v102, v103);
        v98 = v102 - v103;
        v99 = v91;
LABEL_97:
        if (v99)
        {
          goto LABEL_136;
        }

        v105 = *v79;
        v104 = *(v79 + 1);
        v91 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v91)
        {
          goto LABEL_138;
        }

        if (v106 < v98)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v78 - 1 >= v75)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
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
          goto LABEL_148;
        }

        if (!*v145)
        {
          goto LABEL_151;
        }

        v110 = v4;
        v111 = &v76[16 * v78 - 16];
        v112 = *v111;
        v4 = v78;
        v113 = &v76[16 * v78];
        v114 = *(v113 + 1);
        v115 = v149;
        sub_1C720D138(*v145 + *(v144 + 72) * *v111, *v145 + *(v144 + 72) * *v113, *v145 + *(v144 + 72) * v114, v141, v110, v142, v110, v143, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
        v149 = v115;
        if (v115)
        {
          goto LABEL_124;
        }

        if (v114 < v112)
        {
          goto LABEL_126;
        }

        v116 = v30;
        v117 = *(v30 + 2);
        if (v4 > v117)
        {
          goto LABEL_127;
        }

        *v111 = v112;
        *(v111 + 1) = v114;
        if (v4 >= v117)
        {
          goto LABEL_128;
        }

        v75 = v117 - 1;
        sub_1C7423CF4(v113 + 16, v117 - 1 - v4, v113);
        *(v116 + 2) = v117 - 1;
        v56 = v117 > 2;
        v30 = v116;
        v29 = v146;
        v4 = v110;
        if (!v56)
        {
          goto LABEL_111;
        }
      }

      v85 = &v76[16 * v75];
      v86 = *(v85 - 8);
      v87 = *(v85 - 7);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_129;
      }

      v90 = *(v85 - 6);
      v89 = *(v85 - 5);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_130;
      }

      v92 = *(v80 + 1);
      v93 = v92 - *v80;
      if (__OFSUB__(v92, *v80))
      {
        goto LABEL_132;
      }

      v91 = __OFADD__(v83, v93);
      v94 = v83 + v93;
      if (v91)
      {
        goto LABEL_135;
      }

      if (v94 >= v88)
      {
        v108 = *v79;
        v107 = *(v79 + 1);
        v91 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v91)
        {
          goto LABEL_143;
        }

        if (v83 < v109)
        {
          v78 = v75 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v28 = v145[1];
    v6 = v134;
    if (v29 >= v28)
    {
      goto LABEL_114;
    }
  }

  v58 = v31 + v6;
  if (__OFADD__(v31, v6))
  {
    goto LABEL_147;
  }

  if (v58 >= v57)
  {
    v58 = v145[1];
  }

  if (v58 < v31)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v29 == v58)
  {
    goto LABEL_61;
  }

  v130 = v30;
  v59 = *v145;
  v60 = *(v144 + 72);
  v61 = *v145 + v60 * (v29 - 1);
  v62 = v29;
  v63 = -v60;
  v131 = v31;
  v64 = v31 - v62;
  v146 = v62;
  v136 = v60;
  v137 = v58;
  v65 = v59 + v62 * v60;
LABEL_48:
  v139 = v65;
  v140 = v64;
  v141 = v61;
  while (1)
  {
    sub_1C70AE8B4(v65, v153, v4);
    v66 = v152;
    sub_1C70AE8B4(v61, v152, v4);
    if (*v153 == *v66 && v153[1] == v66[1])
    {
      sub_1C720D5B8(v66, v4);
      v72 = OUTLINED_FUNCTION_57_3();
      sub_1C720D5B8(v72, v73);
LABEL_59:
      v61 = v141 + v136;
      v64 = v140 - 1;
      v65 = v139 + v136;
      if (++v146 == v137)
      {
        v29 = v137;
        v30 = v130;
        v31 = v131;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v68 = sub_1C7551DBC();
    sub_1C720D5B8(v66, v4);
    v69 = OUTLINED_FUNCTION_57_3();
    sub_1C720D5B8(v69, v70);
    if ((v68 & 1) == 0)
    {
      goto LABEL_59;
    }

    if (!v59)
    {
      break;
    }

    v71 = v150;
    sub_1C720C064(v65, v150, v4);
    OUTLINED_FUNCTION_225();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C720C064(v71, v61, v4);
    v61 += v63;
    v65 += v63;
    v55 = __CFADD__(v64++, 1);
    if (v55)
    {
      goto LABEL_59;
    }
  }

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
}

void sub_1C720D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v20;
  a20 = v21;
  v79 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v86 = v35(0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v78[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v37);
  v84 = &v78[-v38];
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v78[-v40];
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v78[-v44];
  v47 = *(v46 + 72);
  if (!v47)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v48 = v32 - v34 == 0x8000000000000000 && v47 == -1;
  if (v48)
  {
    goto LABEL_72;
  }

  v49 = v30 - v32;
  if (v30 - v32 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_73;
  }

  v51 = v26;
  v52 = (v32 - v34) / v47;
  a10 = v34;
  v88 = v28;
  if (v52 < v49 / v47)
  {
    v51(v34, (v32 - v34) / v47, v28, v43);
    v53 = v32;
    v85 = (v28 + v52 * v47);
    v87 = v85;
    while (1)
    {
      if (v28 >= v85 || v53 >= v30)
      {
        goto LABEL_70;
      }

      v55 = v53;
      sub_1C70AE8B4(v53, v45, v24);
      sub_1C70AE8B4(v28, v41, v24);
      if (*v45 == *v41 && v45[1] == v41[1])
      {
        sub_1C720D5B8(v41, v24);
        sub_1C720D5B8(v45, v24);
      }

      else
      {
        v57 = sub_1C7551DBC();
        sub_1C720D5B8(v41, v24);
        sub_1C720D5B8(v45, v24);
        if (v57)
        {
          if (v34 < v55 || v34 >= v55 + v47)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 != v55)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v55 + v47;
          goto LABEL_40;
        }
      }

      if (v34 < v28 || v34 >= v28 + v47)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v34 != v28)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeBackToFront();
      }

      v88 = v28 + v47;
      v28 += v47;
      v53 = v55;
LABEL_40:
      v34 += v47;
      a10 = v34;
    }
  }

  v60 = v49 / v47;
  v51(v32, v49 / v47, v28, v43);
  v61 = v32;
  v62 = v28 + v60 * v47;
  v63 = -v47;
  v64 = v62;
LABEL_42:
  v82 = v61 + v63;
  v83 = v61;
  v65 = v30;
  v66 = v64;
  v81 = v64;
  while (1)
  {
    if (v62 <= v28)
    {
      a10 = v61;
      v87 = v66;
      goto LABEL_70;
    }

    if (v61 <= v34)
    {
      break;
    }

    v80 = v66;
    v67 = v63;
    v68 = (v62 + v63);
    v69 = v84;
    sub_1C70AE8B4(v62 + v63, v84, v24);
    v70 = v85;
    sub_1C70AE8B4(v82, v85, v24);
    if (*v69 == *v70 && v69[1] == v70[1])
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_1C7551DBC();
    }

    v30 = v65 + v67;
    sub_1C720D5B8(v85, v24);
    sub_1C720D5B8(v84, v24);
    if (v72)
    {
      if (v65 < v83 || v30 >= v83)
      {
        v75 = v82;
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
        v61 = v75;
        v63 = v67;
        v64 = v80;
      }

      else
      {
        v76 = v82;
        v61 = v82;
        v63 = v67;
        v64 = v80;
        if (v65 != v83)
        {
          OUTLINED_FUNCTION_4_55();
          v64 = v77;
          swift_arrayInitWithTakeBackToFront();
          v61 = v76;
        }
      }

      goto LABEL_42;
    }

    if (v65 < v62 || v30 >= v62)
    {
      OUTLINED_FUNCTION_4_55();
      swift_arrayInitWithTakeFrontToBack();
      v65 += v67;
      v62 = v68;
      v66 = v68;
      v61 = v83;
      v63 = v67;
      v64 = v81;
    }

    else
    {
      v66 = v68;
      v48 = v62 == v65;
      v65 += v67;
      v62 = v68;
      v61 = v83;
      v63 = v67;
      v64 = v81;
      if (!v48)
      {
        OUTLINED_FUNCTION_4_55();
        swift_arrayInitWithTakeBackToFront();
        v61 = v83;
        v65 = v30;
        v62 = v68;
        v66 = v68;
      }
    }
  }

  a10 = v61;
  v87 = v64;
LABEL_70:
  v79(&a10, &v88, &v87);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C720D5B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_1C720D610(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for FinalGlobalAndPersonalTraitDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C720D79C()
{
  result = qword_1EC219350;
  if (!qword_1EC219350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219350);
  }

  return result;
}

unint64_t sub_1C720D7F4()
{
  result = qword_1EC219358;
  if (!qword_1EC219358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219358);
  }

  return result;
}

unint64_t sub_1C720D84C()
{
  result = qword_1EDD09738;
  if (!qword_1EDD09738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09738);
  }

  return result;
}

unint64_t sub_1C720D8A4()
{
  result = qword_1EDD09740;
  if (!qword_1EDD09740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09740);
  }

  return result;
}

unint64_t sub_1C720D8FC()
{
  result = qword_1EDD06FC0;
  if (!qword_1EDD06FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FC0);
  }

  return result;
}

unint64_t sub_1C720D954()
{
  result = qword_1EDD06FC8;
  if (!qword_1EDD06FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FC8);
  }

  return result;
}

uint64_t StoryMusicCurator.curateMood(using:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[156] = v0;
  v1[155] = v2;
  v1[154] = v3;
  v1[153] = v4;
  v5 = sub_1C754F38C();
  v1[157] = v5;
  v1[158] = *(v5 - 8);
  v1[159] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C720E188()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 1288) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C720E8F8(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v5[166] = a1;
  v5[167] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[168] = v12;
    *v12 = v7;
    v13 = OUTLINED_FUNCTION_29_23(v12);

    return sub_1C7178040(v13, v14);
  }
}

uint64_t sub_1C720EA60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1352) = v5;
  *(v3 + 1360) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C720EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_1_80();
  v10 = OUTLINED_FUNCTION_9_52();
  v11(v10);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_88_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C720F14C(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v5[175] = a1;
  v5[176] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v5[172];
    v13 = swift_task_alloc();
    v5[177] = v13;
    *v13 = v7;
    v13[1] = sub_1C720F2CC;
    v14 = v5[171];

    return sub_1C7178040(v14, v12);
  }
}

uint64_t sub_1C720F2CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1424) = v4;
  *(v2 + 1432) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C720F3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_1_80();
  v10 = OUTLINED_FUNCTION_9_52();
  v11(v10);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_88_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C720F44C()
{
  v40 = v0;
  v1 = v0[178];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x80uLL);
    sub_1C709D4BC((v0 + 2), (v0 + 18));

    v3 = v0[3];
    v2 = v0[4];
    sub_1C709D4BC((v0 + 2), (v0 + 34));
    v4 = sub_1C754FEEC();
    sub_1C755117C();
    sub_1C713A098((v0 + 2));
    if (OUTLINED_FUNCTION_262_0())
    {
      v5 = OUTLINED_FUNCTION_41_0();
      v6 = OUTLINED_FUNCTION_20_1();
      __dst[0] = v6;
      *v5 = 136315138;
      sub_1C75504FC();
      v7 = OUTLINED_FUNCTION_0_11();
      v10 = sub_1C6F765A4(v7, v8, v9);

      *(v5 + 4) = v10;
      OUTLINED_FUNCTION_88_1();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }

    v16 = v0[155];
    v17 = v0[153];
    v18 = v0[156] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_58_13();
    v19 = type metadata accessor for StoryMusicCurationDiagnostics();
    *(v18 + v19[14]) = 3;
    v20 = (v18 + v19[11]);
    *v20 = v3;
    v20[1] = v2;
    v21 = (v18 + v19[12]);
    *v21 = v3;
    v21[1] = v2;
    swift_bridgeObjectRetain_n();

    memcpy(__dst, v0 + 2, sizeof(__dst));
    MusicMood.descriptionDetails.getter();

    OUTLINED_FUNCTION_57_17();
    memcpy(v17, v0 + 2, 0x80uLL);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_1C754F1AC();
    v22 = OUTLINED_FUNCTION_3_68();
    v23(v22);

    OUTLINED_FUNCTION_25();
  }

  else
  {

    v25 = sub_1C754FEEC();
    v26 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v26))
    {
      v27 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v27);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v28, v29, "(Mood) Unable to curate a mood from prompt");
      OUTLINED_FUNCTION_23_3();
    }

    v30 = v0[156];

    v31 = v30 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18();
    v32 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 60);
    sub_1C6FB0600();
    OUTLINED_FUNCTION_54_18();
    OUTLINED_FUNCTION_48_17();
    *(v33 + 32) = 0xD000000000000020;
    *(v33 + 40) = 0x80000001C75A4BC0;
    *(v31 + v32) = v34;
    swift_endAccess();
    sub_1C70EB0F0();
    swift_allocError();
    *v35 = 11;
    swift_willThrow();

    __swift_project_boxed_opaque_existential_1(v0[155], *(v0[155] + 24));
    sub_1C754F1AC();
    v36 = OUTLINED_FUNCTION_57_0();
    v37(v36);

    v24 = v0[1];
  }

  return v24();
}