uint64_t sub_1C71EDA20(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = a4[1];
  v11 = *a4;
  v12[0] = v9;
  *(v12 + 10) = *(a4 + 26);
  return (*(a2 + 72))(&v11, a5, ObjectType, a2);
}

uint64_t sub_1C71EDA98(int a1, uint64_t a2, int a3, void *__src, uint64_t a5)
{
  v7 = memcpy(v15, __src, sizeof(v15));
  v8 = ExtendedTokenCollection.allTokens.getter(v7);
  if (qword_1EDD0EC20 != -1)
  {
    swift_once();
  }

  v9 = sub_1C754FF1C();
  __swift_project_value_buffer(v9, qword_1EDD0EC28);
  sub_1C75504FC();
  v10 = sub_1C754FEEC();
  v11 = sub_1C75511BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(v8 + 16);

    _os_log_impl(&dword_1C6F5C000, v10, v11, "Sending %ld final tokens to delegate", v12, 0xCu);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
  }

  else
  {
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 24))(v8, a5, ObjectType, a2);
}

void sub_1C71EDC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  sub_1C6FB0C38();
  v6 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v7 = *(a1 + 48);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 32 * v6;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = v5;
  *(v8 + 56) = 8;
  *(a1 + 48) = v7;
  sub_1C6FB0C38();
  v9 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v10 = *(a1 + 48);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 32 * v9;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = a3;
  *(v11 + 56) = 9;
  *(a1 + 48) = v10;
}

uint64_t sub_1C71EDCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EDD0EC20 != -1)
  {
    swift_once();
  }

  v10 = sub_1C754FF1C();
  __swift_project_value_buffer(v10, qword_1EDD0EC28);
  sub_1C75504FC();
  sub_1C75504FC();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = *(a4 + 16);

    *(v13 + 12) = 2048;
    *(v13 + 14) = *(a5 + 16);

    _os_log_impl(&dword_1C6F5C000, v11, v12, "Sending %ld traits, %ld extended asset UUIDs, and global trait prompt to delegate", v13, 0x16u);
    MEMORY[0x1CCA5F8E0](v13, -1, -1);
  }

  else
  {
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 32))(a4, a6, ObjectType, a2);
  v15 = sub_1C75504FC();
  v16 = sub_1C71CD85C(v15);
  (*(a2 + 64))(v16, a6, ObjectType, a2);
}

BOOL StoryOrchestrator.useFallbackMemory(for:storyState:)(_OWORD *a1, uint64_t a2)
{
  if (*(v2 + 322) == 1)
  {
    v4 = sub_1C754FEEC();
    sub_1C75511BC();
    v5 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      v12 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v12);
    }

    return 1;
  }

  else
  {
    v15 = a1[1];
    v22[0] = *a1;
    v22[1] = v15;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v16 = *(a2 + 160);
    sub_1C754F41C();
    v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
    v21[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_0(v21);
    v17 = sub_1C75504FC();
    MEMORY[0x1CCA5B6D0](v17);
    v18 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v22, v16, v21);

    __swift_destroy_boxed_opaque_existential_1(v21);
    if (!v3)
    {
      v19 = *(v18 + 16);

      return v19 < 0x1E;
    }
  }

  return v13;
}

uint64_t sub_1C71EE030(uint64_t a1, uint64_t a2)
{
  v157 = MEMORY[0x1E69E7CD0];
  v3 = *(a2 + 16);
  for (i = (a2 + 32); v3; --v3)
  {
    memcpy(__dst, i, sizeof(__dst));
    memcpy(v155, i, sizeof(v155));
    sub_1C6FCA6E4(__dst, v154);
    QueryToken.selectedEventMomentUUIDs()();
    sub_1C739796C(v5);
    sub_1C6FDD548(__dst);
    i += 120;
  }

  v146 = v157;
  v6 = *(v147 + 24);
  v7 = *(v147 + 32);
  __dst[0] = *(v147 + 16);
  LOWORD(__dst[1]) = v6;
  __dst[2] = v7;
  v8 = __dst[0];

  v149 = a1;
  v9 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, __dst);
  v10 = __dst[0];

  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
  v153 = v9;
  sub_1C75504FC();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v148 = v9 + 64;
  if (v14)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      OUTLINED_FUNCTION_321_1();
      v21 = (v20 + v19);
      v22 = *v21;
      v23 = v21[1];
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v17;
      v24 = sub_1C6F78124(v22, v23);
      if (__OFADD__(v17[2], (v25 & 1) == 0))
      {
        break;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
      v28 = sub_1C7551A2C();
      v17 = __dst[0];
      if (v28)
      {
        v29 = sub_1C6F78124(v22, v23);
        if ((v27 & 1) != (v30 & 1))
        {
          goto LABEL_118;
        }

        v26 = v29;
      }

      if (v27)
      {
      }

      else
      {
        v17[(v26 >> 6) + 8] |= 1 << v26;
        v31 = (v17[6] + 16 * v26);
        *v31 = v22;
        v31[1] = v23;
        *(v17[7] + 8 * v26) = 0;
        v32 = v17[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_117;
        }

        v17[2] = v34;
      }

      v35 = v17[7];
      v36 = *(v35 + 8 * v26);
      v33 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      v11 = v9 + 64;
      if (v33)
      {
        goto LABEL_116;
      }

      v14 &= v14 - 1;
      *(v35 + 8 * v26) = v37;

      v16 = v18;
      if (!v14)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_7:
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_106;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    sub_1C75504FC();
    sub_1C75504FC();
    v38 = sub_1C754FEEC();
    sub_1C75511BC();
    v39 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_20_1();
      __dst[0] = OUTLINED_FUNCTION_20_1();
      *v41 = 134218498;
      *(v41 + 4) = *(v149 + 16);

      *(v41 + 12) = 2048;
      *(v41 + 14) = v17[2];

      *(v41 + 22) = 2080;
      sub_1C75504FC();
      sub_1C703FF98();
      v43 = v42;

      v44 = MEMORY[0x1CCA5D090](v43, MEMORY[0x1E69E6530]);
      v46 = v45;

      v47 = sub_1C6F765A4(v44, v46, __dst);

      *(v41 + 24) = v47;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v48, v49, v50, v51, v41, 0x20u);
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v52 = 0;
    v53 = 1 << *(v17 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & v17[8];
    v56 = (v53 + 63) >> 6;
    for (j = 0.0; v55; j = j + *(v17[7] + ((v58 << 9) | (8 * v59))))
    {
      v58 = v52;
LABEL_32:
      v59 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
    }

    while (1)
    {
      v58 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v60 = v17[2];
        v61 = j / v60;
        v62 = MEMORY[0x1E69E7CC0];
        if (!v60)
        {
LABEL_54:
          v86 = *(v62 + 2);
          if (v86)
          {
            v87 = v62 + 4;
            v88 = 0.0;
            do
            {
              v89 = *v87++;
              v88 = v88 + v89;
              --v86;
            }

            while (v86);
          }

          else
          {
            v88 = 0.0;
          }

          v90 = sqrt(v88 / v17[2]);
          v91 = v90 * 0.5;
          if (v90 * 0.5 <= v61 * 0.6)
          {
            v91 = v61 * 0.6;
          }

          v92 = v61 - v91;
          v93 = sub_1C754FEEC();
          v94 = sub_1C75511BC();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = OUTLINED_FUNCTION_20_1();
            *v95 = 134218496;
            *(v95 + 4) = v61;
            *(v95 + 12) = 2048;
            *(v95 + 14) = v90;
            *(v95 + 22) = 2048;
            *(v95 + 24) = v92;
            _os_log_impl(&dword_1C6F5C000, v93, v94, "[assetsInFilteredMoments] meanScore = %f, standardDeviation = %f, threshold = %f", v95, 0x20u);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v96 = 1 << *(v17 + 32);
          v97 = -1;
          if (v96 < 64)
          {
            v97 = ~(-1 << v96);
          }

          v98 = v97 & v17[8];
          v99 = (v96 + 63) >> 6;
          sub_1C75504FC();
          v100 = 0;
          v101 = MEMORY[0x1E69E7CC0];
          v102 = (v17 + 8);
          while (v98)
          {
LABEL_71:
            v104 = __clz(__rbit64(v98));
            v98 &= v98 - 1;
            v105 = v104 | (v100 << 6);
            if (v92 <= *(v17[7] + 8 * v105))
            {
              v106 = (v17[6] + 16 * v105);
              v108 = *v106;
              v107 = v106[1];
              sub_1C75504FC();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB1814();
                v101 = v112;
              }

              v110 = *(v101 + 16);
              v109 = *(v101 + 24);
              v102 = (v17 + 8);
              if (v110 >= v109 >> 1)
              {
                OUTLINED_FUNCTION_15(v109);
                sub_1C6FB1814();
                v102 = (v17 + 8);
                v101 = v113;
              }

              *(v101 + 16) = v110 + 1;
              v111 = v101 + 16 * v110;
              *(v111 + 32) = v108;
              *(v111 + 40) = v107;
            }
          }

          while (1)
          {
            v103 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              goto LABEL_107;
            }

            if (v103 >= v99)
            {

              v114 = sub_1C70739AC(v101, v146);
              v115 = 1 << *(v153 + 32);
              if (v115 < 64)
              {
                v116 = ~(-1 << v115);
              }

              else
              {
                v116 = -1;
              }

              v117 = v116 & *(v153 + 64);
              v118 = (v115 + 63) >> 6;
              sub_1C75504FC();
              v119 = 0;
              v120 = MEMORY[0x1E69E7CC0];
LABEL_81:
              while (v117)
              {
                v121 = v117;
LABEL_87:
                v117 = (v121 - 1) & v121;
                if (*(v114 + 16))
                {
                  OUTLINED_FUNCTION_321_1();
                  v124 = v123[1];
                  v151 = *v123;
                  v152 = v120;
                  v127 = (v126 + v125);
                  v129 = *v127;
                  v128 = v127[1];
                  sub_1C7551F3C();
                  sub_1C75504FC();
                  sub_1C75504FC();
                  sub_1C75505AC();
                  v130 = sub_1C7551FAC();
                  v131 = ~(-1 << *(v114 + 32));
                  do
                  {
                    v132 = v130 & v131;
                    if (((*(v114 + 56 + (((v130 & v131) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v130 & v131)) & 1) == 0)
                    {

                      v120 = v152;
                      goto LABEL_81;
                    }

                    v133 = (*(v114 + 48) + 16 * v132);
                    if (*v133 == v129 && v133[1] == v128)
                    {
                      break;
                    }

                    v135 = sub_1C7551DBC();
                    v130 = v132 + 1;
                  }

                  while ((v135 & 1) == 0);

                  v120 = v152;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C6FB1814();
                    v120 = v139;
                  }

                  v137 = *(v120 + 16);
                  v136 = *(v120 + 24);
                  if (v137 >= v136 >> 1)
                  {
                    OUTLINED_FUNCTION_15(v136);
                    sub_1C6FB1814();
                    v120 = v140;
                  }

                  *(v120 + 16) = v137 + 1;
                  v138 = v120 + 16 * v137;
                  *(v138 + 32) = v151;
                  *(v138 + 40) = v124;
                }
              }

              while (1)
              {
                v122 = v119 + 1;
                if (__OFADD__(v119, 1))
                {
                  goto LABEL_108;
                }

                if (v122 >= v118)
                {

                  sub_1C75504FC();
                  sub_1C75504FC();
                  v141 = sub_1C754FEEC();
                  v142 = sub_1C75511BC();
                  if (os_log_type_enabled(v141, v142))
                  {
                    v143 = OUTLINED_FUNCTION_23_1();
                    *v143 = 134218240;
                    *(v143 + 4) = *(v120 + 16);

                    *(v143 + 12) = 2048;
                    v144 = *(v114 + 16);

                    *(v143 + 14) = v144;

                    _os_log_impl(&dword_1C6F5C000, v141, v142, "[assetsInFilteredMoments] %ld assets from %ld filtered moments", v143, 0x16u);
                    OUTLINED_FUNCTION_235();
                    MEMORY[0x1CCA5F8E0]();
                  }

                  else
                  {

                    swift_bridgeObjectRelease_n();
                  }

                  return sub_1C706D154(v120);
                }

                v121 = *(v148 + 8 * v122);
                ++v119;
                if (v121)
                {
                  v119 = v122;
                  goto LABEL_87;
                }
              }
            }

            v98 = *&v102[8 * v103];
            ++v100;
            if (v98)
            {
              v100 = v103;
              goto LABEL_71;
            }
          }
        }

        __dst[0] = MEMORY[0x1E69E7CC0];
        v150 = v60;
        sub_1C716DA70();
        v62 = __dst[0];
        v63 = sub_1C70D4544(v17);
        v66 = v150;
        v65 = (v17 + 8);
        v67 = v63;
        v69 = v68;
        v70 = 0;
        v71 = 1;
        v72 = -2;
        if ((v63 & 0x8000000000000000) == 0)
        {
          while (v67 < v71 << *(v17 + 32))
          {
            v73 = v67 >> 6;
            v74 = v71 << v67;
            if ((*&v65[8 * (v67 >> 6)] & (v71 << v67)) == 0)
            {
              goto LABEL_110;
            }

            if (*(v17 + 9) != v69)
            {
              goto LABEL_111;
            }

            v75 = *(v17[7] + 8 * v67);
            __dst[0] = v62;
            v77 = *(v62 + 2);
            v76 = *(v62 + 3);
            if (v77 >= v76 >> 1)
            {
              OUTLINED_FUNCTION_15(v76);
              sub_1C716DA70();
              OUTLINED_FUNCTION_255_1();
              v62 = __dst[0];
            }

            *(v62 + 2) = v77 + 1;
            v62[v77 + 4] = (v75 - v61) * (v75 - v61);
            v78 = v71 << *(v17 + 32);
            if (v67 >= v78)
            {
              goto LABEL_112;
            }

            v79 = *&v65[8 * v73];
            if ((v79 & v74) == 0)
            {
              goto LABEL_113;
            }

            if (*(v17 + 9) != v69)
            {
              goto LABEL_114;
            }

            v80 = v79 & (v72 << (v67 & 0x3F));
            if (v80)
            {
              v78 = __clz(__rbit64(v80)) | v67 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v81 = v73 << 6;
              v82 = v73 + 1;
              v83 = &v17[v73 + 9];
              while (v82 < (v78 + 63) >> 6)
              {
                v85 = *v83++;
                v84 = v85;
                v81 += 64;
                ++v82;
                if (v85)
                {
                  sub_1C6F9ED50(v67, v69, v64 & 1);
                  OUTLINED_FUNCTION_255_1();
                  v78 = __clz(__rbit64(v84)) + v81;
                  goto LABEL_51;
                }
              }

              sub_1C6F9ED50(v67, v69, v64 & 1);
              OUTLINED_FUNCTION_255_1();
            }

LABEL_51:
            if (++v70 == v66)
            {
              goto LABEL_54;
            }

            v64 = 0;
            v69 = *(v17 + 9);
            v67 = v78;
            if (v78 < 0)
            {
              goto LABEL_109;
            }
          }
        }

        goto LABEL_109;
      }

      v55 = v17[v58 + 8];
      ++v52;
      if (v55)
      {
        v52 = v58;
        goto LABEL_32;
      }
    }

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
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C71EEBB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v20 - v6);
  v8 = sub_1C754F2FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754F2BC();
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = *(a2 + 24);
  (*(v9 + 32))(v7, v11, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v15 = objc_autoreleasePoolPush();
  v16 = v22;
  sub_1C71C32FC(1000, v7, v12, v14, v13, a1, &v23, &v24);
  if (v16)
  {
    objc_autoreleasePoolPop(v15);
    result = __swift_getEnumTagSinglePayload(v7, 1, v8);
    if (result != 1)
    {
      return sub_1C6FB5FC8(v7, &unk_1EC218C90);
    }
  }

  else
  {
    v18 = v21;
    objc_autoreleasePoolPop(v15);
    v19 = v24;
    result = __swift_getEnumTagSinglePayload(v7, 1, v8);
    if (result != 1)
    {
      result = sub_1C6FB5FC8(v7, &unk_1EC218C90);
    }

    *v18 = v19;
  }

  return result;
}

void sub_1C71EEDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C6FB0C38();
  v12 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v13 = *(a1 + 48);
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 32 * v12;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = a2;
  *(v14 + 56) = 10;
  *(a1 + 48) = v13;
  sub_1C6FB0C38();
  v15 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v16 = *(a1 + 48);
  *(v16 + 16) = v15 + 1;
  v17 = v16 + 32 * v15;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 32) = a3;
  *(v17 + 56) = 11;
  *(a1 + 48) = v16;
  sub_1C6FB0C38();
  v18 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v19 = *(a1 + 48);
  *(v19 + 16) = v18 + 1;
  v20 = v19 + 32 * v18;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  *(v20 + 32) = a4;
  *(v20 + 56) = 12;
  *(a1 + 48) = v19;
  sub_1C6FB0C38();
  v21 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v22 = *(a1 + 48);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 32 * v21;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 32) = a5;
  *(v23 + 56) = 13;
  *(a1 + 48) = v22;
  sub_1C6FB0C38();
  v24 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v25 = *(a1 + 48);
  *(v25 + 16) = v24 + 1;
  v26 = v25 + 32 * v24;
  *(v26 + 40) = 0;
  *(v26 + 48) = 0;
  *(v26 + 32) = a6;
  *(v26 + 56) = 14;
  *(a1 + 48) = v25;
}

uint64_t sub_1C71EEF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  v10 = a5;
  return (*(a2 + 8))(&v10, a4, ObjectType, a2);
}

uint64_t sub_1C71EEFDC(uint64_t a1, uint64_t a2)
{
  *(a1 + 17) = *(a2 + *(type metadata accessor for FreeformStory() + 44));
  v3 = FreeformStory.description.getter();
  v5 = v4;

  *(a1 + 192) = v3;
  *(a1 + 200) = v5;
  return result;
}

uint64_t sub_1C71EF034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1C7550E5C())
  {
    v6 = 10;
  }

  else
  {
    v6 = 9;
  }

  ObjectType = swift_getObjectType();
  v9 = v6;
  return (*(a2 + 8))(&v9, a4, ObjectType, a2);
}

uint64_t StoryOrchestrator.setSelected(tokens:in:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v5 = *(a2 + 120);
  if ((v5 >> 61) >= 3 && (v5 >> 61 == 3 || (v5 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x60), v5 >> 61 == 3)))
  {
    v52 = a2;
    swift_retain_n();
    memcpy(__dst, ((v5 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    sub_1C6FD7F70();

    v9 = memcpy(__src, __dst, 0x50uLL);
    v10 = ExtendedTokenCollection.allTokens.getter(v9);
    v11 = *(v10 + 16);
    v59 = a1;
    if (v11)
    {
      v53[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_317_1();
      sub_1C6F7ED9C();
      v12 = v53[0];
      v51 = v10;
      v13 = v10 + 32;
      do
      {
        sub_1C6FB5E28(v13, v56);
        v14 = v56[4];
        __swift_project_boxed_opaque_existential_1(v56, v56[3]);
        v15 = OUTLINED_FUNCTION_24_2();
        v17 = v16(v15, v14);
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_1(v56);
        v53[0] = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          OUTLINED_FUNCTION_15(v20);
          OUTLINED_FUNCTION_347_0();
          v12 = v53[0];
        }

        *(v12 + 16) = v21 + 1;
        v22 = v12 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v13 += 40;
        --v11;
      }

      while (v11);

      a1 = v59;
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v23 = sub_1C706D154(v12);
    v24 = v23;
    v25 = *(a1 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v51 = v23;
      v56[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_317_1();
      sub_1C6F7ED9C();
      v26 = v56[0];
      v27 = a1 + 32;
      do
      {
        sub_1C6FB5E28(v27, __src);
        v28 = __src[4];
        __swift_project_boxed_opaque_existential_1(__src, __src[3]);
        v29 = OUTLINED_FUNCTION_24_2();
        v31 = v30(v29, v28);
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_1(__src);
        v56[0] = v26;
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_15(v34);
          OUTLINED_FUNCTION_347_0();
          v26 = v56[0];
        }

        *(v26 + 16) = v35 + 1;
        v36 = v26 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        v27 += 40;
        --v25;
      }

      while (v25);
      a1 = v59;
      v24 = v51;
    }

    v37 = sub_1C71EF4E4(v26, v24);

    if (v37)
    {
      memcpy(v56, __dst, sizeof(v56));
      v38 = OUTLINED_FUNCTION_90();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v38);
      v55 = sub_1C6F65C70(&qword_1EDD06BD0, &qword_1EC214D18);
      sub_1C75504FC();
      ExtendedTokenCollection.intersecting(_:)(v53, v39, v40, v41, v42, v43, v44, v45, v50, v51, v52, v2, v5 & 0x1FFFFFFFFFFFFFFFLL, a1, v53[1], v53[2], v54, v55, v56[0], v56[1]);
      __swift_destroy_boxed_opaque_existential_1(v53);
      sub_1C7027A58(__dst);
      OUTLINED_FUNCTION_153_1();
      v46 = swift_allocObject();
      v47 = OUTLINED_FUNCTION_155_0(v46);
      memcpy(v47, __src, 0x50uLL);
      qword_1EC214D78 = v5;
      v56[0] = 0x80000001EC214D18;

      sub_1C71937C4();
    }

    else
    {
      sub_1C7027A58(__dst);
      type metadata accessor for StoryOrchestrator.Error(0);
      OUTLINED_FUNCTION_0_99();
      sub_1C71F28F0(v48, v49);
      OUTLINED_FUNCTION_68_15();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v6 = swift_allocError();
    *v7 = v5;
    OUTLINED_FUNCTION_71_9(v6, v7);
    swift_willThrow();
  }
}

uint64_t sub_1C71EF4E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v16 = result + 32;
  v6 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_14:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v7 = (v16 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v10 = sub_1C7551FAC();
      v11 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v6 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(a2 + 48) + 16 * v12);
        if (*v13 != v9 || v13[1] != v8)
        {
          v15 = sub_1C7551DBC();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t StoryOrchestrator.setSelected(traits:in:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v4 = *(a2 + 136);
  if (!(v4 >> 62))
  {
    goto LABEL_4;
  }

  if (v4 >> 62 != 1)
  {
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v13 = v4;
    OUTLINED_FUNCTION_137_5(v13, 3);
    return swift_willThrow();
  }

  v4 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  if (v4 >> 62)
  {
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v27 = v4;
    OUTLINED_FUNCTION_137_5(v27, 3);
    swift_willThrow();
  }

  else
  {
LABEL_4:

    v5 = *(v4 + 16);

    sub_1C75504FC();
    v28 = v4;

    v29 = a1;
    if (*(v5 + 16))
    {
      v33 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_334_0();
      v6 = v33;
      do
      {
        sub_1C6FB5E28(v5 + 32, v30);
        v7 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        OUTLINED_FUNCTION_276_1();
        v8 = OUTLINED_FUNCTION_312_1();
        v9(v8, v7);
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_297_1();
        if (v11)
        {
          OUTLINED_FUNCTION_15(v10);
          OUTLINED_FUNCTION_347_0();
          v6 = v33;
        }

        OUTLINED_FUNCTION_266_1();
      }

      while (!v12);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v15 = sub_1C706D154(v6);
    v16 = MEMORY[0x1E69E7CC0];
    if (*(a1 + 16))
    {
      v33 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_334_0();
      v17 = v33;
      v18 = a1 + 32;
      do
      {
        sub_1C6FB5E28(v18, v30);
        v19 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        OUTLINED_FUNCTION_276_1();
        v20 = OUTLINED_FUNCTION_312_1();
        v21(v20, v19);
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_297_1();
        if (v11)
        {
          OUTLINED_FUNCTION_15(v22);
          OUTLINED_FUNCTION_347_0();
          v17 = v33;
        }

        OUTLINED_FUNCTION_266_1();
      }

      while (!v12);
      a1 = v29;
      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v23 = sub_1C71EF4E4(v17, v15);

    if (v23)
    {
      OUTLINED_FUNCTION_3_16();
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v28;
      *(v24 + 32) = v16;
      v30[0] = v24 | 0x4000000000000000;

      sub_1C75504FC();
      sub_1C7194268(v30);
    }

    else
    {
      type metadata accessor for StoryOrchestrator.Error(0);
      OUTLINED_FUNCTION_0_99();
      sub_1C71F28F0(v25, v26);
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

uint64_t sub_1C71EF9B8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_1C754E5EC();
  v47[3] = v5;
  v47[4] = sub_1C71F28F0(&qword_1EDD0F9B0, MEMORY[0x1E69BDD60]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD28], v5);
  v7 = sub_1C754E3AC();
  __swift_destroy_boxed_opaque_existential_1(v47);
  v46 = 0;
  v8 = objc_opt_self();
  if ([v8 storyGenerationPipeline] == 3 && (v7 & 1) != 0)
  {
    if (qword_1EDD0EC20 != -1)
    {
      swift_once();
    }

    v9 = sub_1C754FF1C();
    __swift_project_value_buffer(v9, qword_1EDD0EC28);
    v10 = sub_1C754FEEC();
    v11 = sub_1C75511BC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47[0] = v13;
      *v12 = 136315138;
      v45 = [v8 storyGenerationPipeline];
      type metadata accessor for PNUserDefaultsFreeformStoryGenerationPipeline(0);
      v14 = sub_1C75506EC();
      v16 = sub_1C6F765A4(v14, v15, v47);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1C6F5C000, v10, v11, "Overriding pipeline type with user default value: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
    }

    v17 = 1;
LABEL_8:
    v46 = v17;
    goto LABEL_22;
  }

  if ([v8 storyGenerationPipeline] == 2)
  {
    if (qword_1EDD0EC20 != -1)
    {
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EDD0EC28);
    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47[0] = v22;
      *v21 = 136315138;
      v45 = [v8 storyGenerationPipeline];
      type metadata accessor for PNUserDefaultsFreeformStoryGenerationPipeline(0);
      v23 = sub_1C75506EC();
      v25 = sub_1C6F765A4(v23, v24, v47);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Overriding pipeline type with user default value: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1CCA5F8E0](v22, -1, -1);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
    }

    v46 = 0;
  }

  else
  {
    if ([v8 storyGenerationPipeline] == 1)
    {
      if (qword_1EDD0EC20 != -1)
      {
        swift_once();
      }

      v26 = sub_1C754FF1C();
      __swift_project_value_buffer(v26, qword_1EDD0EC28);
      v27 = sub_1C754FEEC();
      v28 = sub_1C75511BC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v47[0] = v30;
        *v29 = 136315138;
        v45 = [v8 storyGenerationPipeline];
        type metadata accessor for PNUserDefaultsFreeformStoryGenerationPipeline(0);
        v31 = sub_1C75506EC();
        v33 = sub_1C6F765A4(v31, v32, v47);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_1C6F5C000, v27, v28, "Overriding pipeline type with user default value: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v29, -1, -1);
      }

      v17 = 2;
      goto LABEL_8;
    }

    type metadata accessor for MemoryCreationAvailabilityMonitor(0);
    static MemoryCreationAvailabilityMonitor.gmAvailabilityPolicyForMemoryCreation()();
    v34 = sub_1C754EA4C();
    __swift_getEnumTagSinglePayload(v4, 1, v34);
    sub_1C6FB5FC8(v4, &qword_1EC219080);
  }

LABEL_22:
  if (qword_1EDD0EC20 != -1)
  {
    swift_once();
  }

  v35 = sub_1C754FF1C();
  __swift_project_value_buffer(v35, qword_1EDD0EC28);
  v36 = v46;
  v37 = sub_1C754FEEC();
  v38 = sub_1C75511BC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47[0] = v40;
    *v39 = 136315138;
    LOBYTE(v45) = v36;
    v41 = sub_1C75506EC();
    v43 = sub_1C6F765A4(v41, v42, v47);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1C6F5C000, v37, v38, "Using pipeline type %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1CCA5F8E0](v40, -1, -1);
    MEMORY[0x1CCA5F8E0](v39, -1, -1);
  }

  result = swift_beginAccess();
  *a1 = v46;
  return result;
}

uint64_t static StoryOrchestrator.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDD0A988 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_1EC218F88;
  return result;
}

uint64_t StoryOrchestrator.deinit()
{
  v1 = *(v0 + 16);

  memcpy(__dst, (v0 + 40), 0x11DuLL);
  sub_1C71F2810(__dst);
  sub_1C71F29F8(v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyPlaceholderAssetsGenerator, type metadata accessor for StoryPlaceholderAssetsGenerator);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetsFetcher);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_safetyController);

  v2 = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  v4 = v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationReasonAndIssuedDate;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FB0);
  sub_1C6FB5FC8(v4 + *(v5 + 28), &qword_1EC218FA0);
  return v0;
}

uint64_t StoryOrchestrator.__deallocating_deinit()
{
  StoryOrchestrator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C71F02D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C754FD2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_1C754FADC();
  sub_1C6FB5FC8(v2, &unk_1EC219230);
  v8 = sub_1C754FD1C();
  result = (*(v4 + 8))(v6, v3);
  qword_1EC218F90 = v8;
  return result;
}

uint64_t sub_1C71F0430(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

id sub_1C71F04B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C755065C();

  if (a4)
  {
    v8 = sub_1C755048C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1C71F0564@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  sub_1C6FD7F70();
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    v14 = sub_1C754DF6C();
    v15 = a1;
    v16 = 1;
  }

  else
  {
    sub_1C7091CBC();
    sub_1C6FD7F70();
    v17 = *(v2 + 48);
    *v4 = *v7;
    v18 = sub_1C754DF6C();
    v19 = *(v18 - 8);
    (*(v19 + 32))(&v4[v17], &v7[v17], v18);
    (*(v19 + 16))(a1, &v4[v17], v18);
    sub_1C6FB5FC8(v4, &qword_1EC218FA8);
    sub_1C6FB5FC8(v10, &qword_1EC218FA8);
    v15 = a1;
    v16 = 0;
    v14 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

unint64_t sub_1C71F07F0()
{
  result = qword_1EC218F98;
  if (!qword_1EC218F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218F98);
  }

  return result;
}

uint64_t sub_1C71F08A0()
{
  OUTLINED_FUNCTION_49_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_75();

  return sub_1C71D2980(v3, v4, v5, v6, v7);
}

uint64_t sub_1C71F0944()
{
  OUTLINED_FUNCTION_123();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_75();

  return sub_1C71D2B98(v5, v6, v7, v2, v8);
}

uint64_t sub_1C71F09F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C71F0E9C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C71F0BEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C71F0AF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C71F1690(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C71F0DAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C71F0BEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v28 = a3;
      v20 = v6;
      v21 = v5;
      while (1)
      {
        sub_1C6FB5E28(v5, &v25);
        sub_1C6FB5E28(v5 - 40, v22);
        v7 = v26;
        v8 = v27;
        __swift_project_boxed_opaque_existential_1(&v25, v26);
        v9 = (*(v8 + 32))(v7, v8);
        v11 = v10;
        v13 = v23;
        v12 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        if (v9 == (*(v12 + 32))(v13, v12) && v11 == v14)
        {
          break;
        }

        v16 = sub_1C7551DBC();

        __swift_destroy_boxed_opaque_existential_1(v22);
        result = __swift_destroy_boxed_opaque_existential_1(&v25);
        if (v16)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          sub_1C6F699F8(v5, &v25);
          v17 = *(v5 - 24);
          *v5 = *(v5 - 40);
          *(v5 + 16) = v17;
          *(v5 + 32) = *(v5 - 8);
          result = sub_1C6F699F8(&v25, v5 - 40);
          v5 -= 40;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
      result = __swift_destroy_boxed_opaque_existential_1(&v25);
LABEL_14:
      a3 = v28 + 1;
      v5 = v21 + 40;
      v6 = v20 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C71F0DAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 120 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = v10[2];
        if (result == *(v10 - 13) && v10[3] == *(v10 - 12))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 15, 0x78uLL);
        result = memcpy(v10 - 15, __dst, 0x78uLL);
        v10 -= 15;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 120;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C71F0E9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_106;
    }

    goto LABEL_140;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    v110 = v5;
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_1C6FB5E28(*a3 + 40 * v8, &v121);
      sub_1C6FB5E28(v9 + 40 * v7, v118);
      v10 = v124;
      LODWORD(v116) = sub_1C71ED934(&v121, v118);
      v124 = v10;
      if (v10)
      {
        __swift_destroy_boxed_opaque_existential_1(v118);
        __swift_destroy_boxed_opaque_existential_1(&v121);
LABEL_114:

        return;
      }

      v107 = v6;
      __swift_destroy_boxed_opaque_existential_1(v118);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v113 = 40 * v7;
      v11 = v9 + 40 * v7 + 80;
      v12 = (v7 + 2);
      while (1)
      {
        v13 = v12;
        if (v8 + 1 >= v4)
        {
          break;
        }

        v14 = v8;
        sub_1C6FB5E28(v11, &v121);
        sub_1C6FB5E28(v11 - 40, v118);
        v15 = v122;
        v16 = v123;
        __swift_project_boxed_opaque_existential_1(&v121, v122);
        v17 = (*(v16 + 32))(v15, v16);
        v19 = v18;
        v21 = v119;
        v20 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        if (v17 == (*(v20 + 32))(v21, v20) && v19 == v22)
        {
          v24 = 0;
        }

        else
        {
          v24 = sub_1C7551DBC();
        }

        __swift_destroy_boxed_opaque_existential_1(v118);
        __swift_destroy_boxed_opaque_existential_1(&v121);
        v11 += 40;
        v8 = v14 + 1;
        v12 = v13 + 1;
        if ((v116 ^ v24))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v116)
      {
        v25 = v110;
        v6 = v107;
        if (v8 < v110)
        {
          goto LABEL_139;
        }

        if (v110 >= v8)
        {
          v7 = v110;
        }

        else
        {
          if (v4 >= v13)
          {
            v26 = v13;
          }

          else
          {
            v26 = v4;
          }

          v27 = 40 * v26 - 40;
          v28 = v8;
          v29 = v113;
          do
          {
            if (v25 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v31 = v8;
              v32 = v30 + v29;
              v33 = v30 + v27;
              sub_1C6F699F8((v30 + v29), &v121);
              v34 = *(v33 + 32);
              v35 = *(v33 + 16);
              *v32 = *v33;
              *(v32 + 16) = v35;
              *(v32 + 32) = v34;
              sub_1C6F699F8(&v121, v33);
              v8 = v31;
            }

            ++v25;
            v27 -= 40;
            v29 += 40;
          }

          while (v25 < v28);
          v7 = v110;
        }
      }

      else
      {
        v7 = v110;
        v6 = v107;
      }
    }

    v36 = a3[1];
    if (v8 < v36)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_136;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v8 < v7)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v96;
    }

    v53 = *(v6 + 2);
    v54 = v53 + 1;
    v116 = v8;
    if (v53 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v97;
    }

    *(v6 + 2) = v54;
    v55 = v6 + 32;
    v56 = &v6[16 * v53 + 32];
    *v56 = v110;
    *(v56 + 1) = v116;
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        v58 = &v55[16 * v54 - 16];
        v59 = &v6[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v6 + 4);
          v61 = *(v6 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_72:
          if (v63)
          {
            goto LABEL_122;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_125;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_130;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v54 < 2)
        {
          goto LABEL_124;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_87:
        if (v78)
        {
          goto LABEL_127;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v85 < v77)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v57 - 1 >= v54)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v89 = v6;
        v90 = &v55[16 * v57 - 16];
        v91 = *v90;
        v92 = &v55[16 * v57];
        v93 = *(v92 + 1);
        v94 = v124;
        sub_1C71F1D0C((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v115);
        v124 = v94;
        if (v94)
        {
          goto LABEL_114;
        }

        if (v93 < v91)
        {
          goto LABEL_117;
        }

        v95 = *(v89 + 2);
        if (v57 > v95)
        {
          goto LABEL_118;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        if (v57 >= v95)
        {
          goto LABEL_119;
        }

        v54 = v95 - 1;
        sub_1C7423CF4(v92 + 16, v95 - 1 - v57, &v55[16 * v57]);
        v6 = v89;
        *(v89 + 2) = v95 - 1;
        if (v95 <= 2)
        {
          goto LABEL_101;
        }
      }

      v64 = &v55[16 * v54];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_120;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_121;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_123;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_126;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_134;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v5 = v116;
    v4 = a3[1];
    if (v116 >= v4)
    {
      goto LABEL_104;
    }
  }

  v37 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_137;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v7)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v6 = sub_1C7420830();
LABEL_106:
    v98 = (v6 + 16);
    for (i = *(v6 + 2); i >= 2; *v98 = i)
    {
      if (!*a3)
      {
        goto LABEL_143;
      }

      v100 = &v6[16 * i];
      v101 = *v100;
      v102 = &v98[2 * i];
      v103 = *(v102 + 1);
      v104 = v124;
      sub_1C71F1D0C((*a3 + 40 * *v100), (*a3 + 40 * *v102), *a3 + 40 * v103, v116);
      v124 = v104;
      if (v104)
      {
        break;
      }

      if (v103 < v101)
      {
        goto LABEL_131;
      }

      if (i - 2 >= *v98)
      {
        goto LABEL_132;
      }

      *v100 = v101;
      *(v100 + 1) = v103;
      v105 = *v98 - i;
      if (*v98 < i)
      {
        goto LABEL_133;
      }

      i = *v98 - 1;
      sub_1C7423CF4(v102 + 16, v105, v102);
    }

    goto LABEL_114;
  }

  if (v8 == v37)
  {
    goto LABEL_52;
  }

  v108 = v6;
  v38 = *a3;
  v39 = *a3 + 40 * v8;
  v40 = &v7[-v8];
  v111 = v37;
LABEL_39:
  v114 = v39;
  v116 = v8;
  v112 = v40;
  while (1)
  {
    sub_1C6FB5E28(v39, &v121);
    sub_1C6FB5E28(v39 - 40, v118);
    v41 = v122;
    v42 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, v122);
    v43 = (*(v42 + 32))(v41, v42);
    v45 = v44;
    v46 = v119;
    v47 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    if (v43 == (*(v47 + 32))(v46, v47) && v45 == v48)
    {

      __swift_destroy_boxed_opaque_existential_1(v118);
      __swift_destroy_boxed_opaque_existential_1(&v121);
LABEL_50:
      v8 = (v116 + 1);
      v39 = v114 + 40;
      v40 = v112 - 1;
      if (v116 + 1 == v111)
      {
        v8 = v111;
        v6 = v108;
        v7 = v110;
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    v50 = sub_1C7551DBC();

    __swift_destroy_boxed_opaque_existential_1(v118);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    if ((v50 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v38)
    {
      break;
    }

    sub_1C6F699F8(v39, &v121);
    v51 = *(v39 - 24);
    *v39 = *(v39 - 40);
    *(v39 + 16) = v51;
    *(v39 + 32) = *(v39 - 8);
    sub_1C6F699F8(&v121, v39 - 40);
    v39 -= 40;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_50;
    }
  }

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
}

void sub_1C71F1690(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = *a3;
        v10 = *a3 + 120 * i;
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);
        v13 = *a3 + 120 * v8;
        if (v11 == *(v13 + 16) && v12 == *(v13 + 24))
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v16 = 120 * v8;
        v17 = (v9 + 120 * v8 + 264);
        for (i = v8 + 2; i < v5; ++i)
        {
          if (*(v17 - 1) == *(v17 - 16) && *v17 == *(v17 - 15))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          v17 += 15;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_122;
        }

        if (v8 < i)
        {
          v19 = 120 * i - 120;
          v20 = i;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x78uLL);
              memcpy((v22 + v19), __dst, 0x78uLL);
            }

            ++v21;
            v19 -= 120;
            v16 += 120;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (i < v23)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_121;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
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
            return;
          }

          if (i != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 120 * i;
            v27 = v8 - i;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = v29[2] == *(v29 - 13) && v29[3] == *(v29 - 12);
                if (v30 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 15, 0x78uLL);
                memcpy(v29 - 15, __dst, 0x78uLL);
                v29 -= 15;
              }

              while (!__CFADD__(v28++, 1));
              ++i;
              v26 += 120;
              --v27;
            }

            while (i != v24);
            i = v24;
            v7 = v78;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v74;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = i;
      v79 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_105:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1C71F20A8((*a3 + 120 * *v69), (*a3 + 120 * *v71), (*a3 + 120 * v72), v79);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (i >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C71F1BD4(&v82, *a1, a3);
LABEL_103:
}

uint64_t sub_1C71F1BD4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C71F20A8((*a3 + 120 * *v4), (*a3 + 120 * *v9), (*a3 + 120 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C71F1D0C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1C7423D14(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    v59 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      sub_1C6FB5E28(v6, v56);
      sub_1C6FB5E28(v4, v53);
      v12 = v57;
      v13 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v14 = (*(v13 + 32))(v12, v13);
      v16 = v15;
      v17 = v54;
      v18 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v20 = v14 == (*(v18 + 32))(v17, v18) && v16 == v19;
      if (v20)
      {

        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v56);
      }

      else
      {
        v21 = sub_1C7551DBC();

        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v56);
        if (v21)
        {
          v22 = v6;
          v23 = v7 == v6;
          v6 += 40;
          goto LABEL_15;
        }
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 40;
LABEL_15:
      v5 = v59;
      if (!v23)
      {
        v24 = *v22;
        v25 = *(v22 + 1);
        *(v7 + 4) = *(v22 + 4);
        *v7 = v24;
        *(v7 + 1) = v25;
      }

      v7 += 40;
    }
  }

  sub_1C7423D14(a2, (a3 - a2) / 40, a4);
  v26 = &v4[40 * v9];
  v51 = v7;
LABEL_19:
  v27 = (v6 - 40);
  v28 = v5 - 40;
  v29 = (v26 - 40);
  for (i = v6 - 40; ; v27 = i)
  {
    v10 = (v29 + 40);
    if (v29 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v59 = v29 + 40;
    v31 = v28;
    v32 = v6;
    v33 = v4;
    sub_1C6FB5E28(v29, v56);
    sub_1C6FB5E28(v27, v53);
    v34 = v57;
    v35 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v36 = (*(v35 + 32))(v34, v35);
    v38 = v37;
    v40 = v54;
    v39 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    if (v36 == (*(v39 + 32))(v40, v39) && v38 == v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = sub_1C7551DBC();
    }

    v5 = v31;

    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v4 = v33;
    if (v43)
    {
      v26 = (v29 + 40);
      v20 = v31 + 40 == v32;
      v7 = v51;
      v6 = i;
      if (!v20)
      {
        v46 = *i;
        v47 = *(i + 1);
        *(v31 + 32) = *(i + 4);
        *v31 = v46;
        *(v31 + 16) = v47;
        v6 = i;
      }

      goto LABEL_19;
    }

    v6 = v32;
    if (v59 != v31 + 40)
    {
      v44 = *v29;
      v45 = *(v29 + 16);
      *(v31 + 32) = *(v29 + 32);
      *v31 = v44;
      *(v31 + 16) = v45;
    }

    v28 = v31 - 40;
    v29 -= 40;
    v7 = v51;
  }

LABEL_38:
  v48 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v48])
  {
    memmove(v6, v4, 40 * v48);
  }

  return 1;
}

uint64_t sub_1C71F20A8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 120;
  v9 = (a3 - a2) / 120;
  if (v8 < v9)
  {
    sub_1C741E370(a1, (a2 - a1) / 120, a4);
    v10 = &v4[120 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v12 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 120;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 120;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 120;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v13, 0x78uLL);
    goto LABEL_17;
  }

  sub_1C741E370(a2, (a3 - a2) / 120, a4);
  v10 = &v4[120 * v9];
LABEL_19:
  for (v5 -= 120; v10 > v4 && v6 > v7; v5 -= 120)
  {
    v15 = *(v10 - 13) == *(v6 - 13) && *(v10 - 12) == *(v6 - 12);
    if (!v15 && (sub_1C7551DBC() & 1) != 0)
    {
      v16 = v6 - 120;
      v12 = v5 + 120 == v6;
      v6 -= 120;
      if (!v12)
      {
        memmove(v5, v16, 0x78uLL);
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 120)
    {
      memmove(v5, v10 - 120, 0x78uLL);
    }

    v10 -= 120;
  }

LABEL_36:
  v17 = (v10 - v4) / 120;
  if (v6 != v4 || v6 >= &v4[120 * v17])
  {
    memmove(v6, v4, 120 * v17);
  }

  return 1;
}

uint64_t sub_1C71F226C(const void *a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a6;
  v52 = a8;
  v16 = sub_1C754FF1C();
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v60[3] = type metadata accessor for SafetyController(0);
  v60[4] = &protocol witness table for SafetyController;
  v60[0] = a7;
  v58 = type metadata accessor for StoryAppleIntelligenceEventReporter();
  v59 = &protocol witness table for StoryAppleIntelligenceEventReporter;
  *&v57 = a9;
  v23 = OBJC_IVAR____TtC18PhotosIntelligence14TraitGenerator_logger;
  sub_1C754FEFC();
  memcpy((a10 + 16), a1, 0xA8uLL);
  *(a10 + 184) = a2;
  v24 = v51;
  v25 = v52;
  *(a10 + 192) = a3;
  *(a10 + 200) = a4;
  v53 = a5;
  sub_1C6FB5E28(a5, a10 + 208);
  *(a10 + 296) = v24;
  sub_1C6FB5E28(v60, a10 + 248);
  *(a10 + 304) = v25;
  v26 = objc_opt_self();

  v27 = [v26 globalAndPersonalTraitsSeed];
  if (v27)
  {
    v28 = v27;
    v29 = a10 + v23;
    v30 = v54;
    (*(v55 + 16))(v22, v29, v54);
    v31 = v28;
    v32 = sub_1C754FEEC();
    v33 = sub_1C755117C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = v22;
      v35 = v34;
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v31;
      *v36 = v28;
      v37 = v31;
      _os_log_impl(&dword_1C6F5C000, v32, v33, "TraitGenerator random number generator seed = %@, per user defaults", v35, 0xCu);
      sub_1C6FB5FC8(v36, &qword_1EC215190);
      MEMORY[0x1CCA5F8E0](v36, -1, -1);
      v38 = v35;
      v22 = v50;
      v30 = v54;
      MEMORY[0x1CCA5F8E0](v38, -1, -1);
    }

    (*(v55 + 8))(v22, v30);
    sub_1C755103C();
    v39 = sub_1C755104C();
    v40 = sub_1C7551FCC();

    v41 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  else
  {
    v56 = 0;
    MEMORY[0x1CCA5F900](&v56, 8);
    v42 = v55;
    v43 = v56;
    v44 = v54;
    (*(v55 + 16))(v19, a10 + v23, v54);
    v45 = sub_1C754FEEC();
    v46 = sub_1C755117C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v43;
      _os_log_impl(&dword_1C6F5C000, v45, v46, "TraitGenerator random number generator seed = %llu, randomly set", v47, 0xCu);
      MEMORY[0x1CCA5F8E0](v47, -1, -1);
    }

    (*(v42 + 8))(v19, v44);
    v41 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v60);
  *(a10 + 288) = v41;
  sub_1C6F699F8(&v57, a10 + 312);
  return a10;
}

uint64_t sub_1C71F26EC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = type metadata accessor for SafetyController(0);
  v15 = &protocol witness table for SafetyController;
  *&v13 = a4;
  sub_1C754FEFC();
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  sub_1C6F699F8(&v13, a6 + 40);
  *(a6 + 80) = a5;
  return a6;
}

uint64_t sub_1C71F2840()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_75();

  return sub_1C71D5FE8(v5, v6, v7, v2);
}

uint64_t sub_1C71F28F0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C71F2938(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_1C71F2948(id a1)
{
  if (a1 != 4)
  {
    sub_1C71F2958(a1);
  }
}

void sub_1C71F2958(id a1)
{
  if (a1 >= 4)
  {
  }
}

id sub_1C71F2968(id result)
{
  if (result != 4)
  {
    return sub_1C71F2938(result);
  }

  return result;
}

uint64_t sub_1C71F29A0()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C71F29F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C71F2C28()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C71F2C80()
{
  OUTLINED_FUNCTION_115_0();
  v1 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_44();

  return sub_1C71EC908(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C71F2E10()
{
  OUTLINED_FUNCTION_58_9();
  Generator = type metadata accessor for QueryGenerator();
  OUTLINED_FUNCTION_18(Generator);
  v2 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_129();

  return sub_1C71ECE14(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C71F2FE0()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  v4 = OUTLINED_FUNCTION_119_3();

  return sub_1C71ED420(v4, v0);
}

void *sub_1C71F30CC(void *result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t objectdestroy_37Tm(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 24));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t objectdestroy_57Tm()
{

  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1C71F32C8()
{
  result = qword_1EC219028;
  if (!qword_1EC219028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219028);
  }

  return result;
}

unint64_t sub_1C71F3368()
{
  result = qword_1EC219030;
  if (!qword_1EC219030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219030);
  }

  return result;
}

unint64_t sub_1C71F33C0()
{
  result = qword_1EC219038;
  if (!qword_1EC219038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219038);
  }

  return result;
}

void sub_1C71F343C()
{
  sub_1C754DF6C();
  if (v0 <= 0x3F)
  {
    sub_1C6F65BE8(319, &qword_1EC219050);
    if (v1 <= 0x3F)
    {
      sub_1C6FC0BE0();
      if (v2 <= 0x3F)
      {
        sub_1C710A06C(319, &qword_1EC219058);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C71F3538()
{
  type metadata accessor for StoryPlaceholderAssetsGenerator();
  if (v0 <= 0x3F)
  {
    sub_1C754FF1C();
    if (v1 <= 0x3F)
    {
      sub_1C71F36B0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C71F36B0()
{
  if (!qword_1EDD0F9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218FA0);
    v0 = sub_1C754E5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0F9A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence17StoryOrchestratorC18CancellationReasonO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C71F372C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C71F3780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryOrchestrator.StoryOrchestratorCancellationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

ValueMetadata *sub_1C71F38C8()
{
  sub_1C71F3980();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C71F3A14();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v5 = sub_1C71F3AA0();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1C71F3AC8();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1C71F3980()
{
  if (!qword_1EDD06998)
  {
    sub_1C6F65BE8(255, &qword_1EDD0CE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219068);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDD06998);
    }
  }
}

void sub_1C71F3A14()
{
  if (!qword_1EDD06850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219230);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD06850);
    }
  }
}

ValueMetadata *sub_1C71F3AA0()
{
  result = qword_1EDD09D10;
  if (!qword_1EDD09D10)
  {
    result = &type metadata for FreeformStoryGenerator.Error;
    atomic_store(&type metadata for FreeformStoryGenerator.Error, &qword_1EDD09D10);
  }

  return result;
}

void sub_1C71F3AC8()
{
  if (!qword_1EDD06848)
  {
    v0 = sub_1C710A06C(0, &qword_1EDD06840);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD06848);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StoryOrchestrator.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryOrchestrator.PipelineType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C71F3CE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 285))
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

uint64_t sub_1C71F3D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 284) = 0;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 285) = 1;
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

    *(result + 285) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryOrchestrator.DelegateChannel.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroy_156Tm()
{

  v0 = OUTLINED_FUNCTION_66_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, 7);
}

uint64_t objectdestroy_7Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_3_16();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_40_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *v17 = a17;
  *(v17 + 4) = v18;
  *(v17 + 12) = 2085;

  return sub_1C71930BC();
}

uint64_t OUTLINED_FUNCTION_56_13()
{
  *(v0 + 96) = *(v1 + 120);
  *(v2 + 464) = v0 | 0x8000000000000000;
}

unint64_t OUTLINED_FUNCTION_60_12()
{

  return sub_1C6FE0D14();
}

void OUTLINED_FUNCTION_88_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  sub_1C71DFB44(v16, v15, a15, v17);
}

void *OUTLINED_FUNCTION_92_10(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 16), 0x50uLL);
}

void OUTLINED_FUNCTION_93_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  sub_1C71DFB44(v17, v15, a15, v16);
}

uint64_t OUTLINED_FUNCTION_106_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(v2 + 456) = a1 | 0x4000000000000000;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_109_8()
{
}

void OUTLINED_FUNCTION_130_3()
{
  v2 = *(v0 + 1432);
}

void OUTLINED_FUNCTION_134_5()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_143_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_151_2()
{

  return sub_1C754F1CC();
}

uint64_t OUTLINED_FUNCTION_184_0()
{
}

uint64_t OUTLINED_FUNCTION_187_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_193_0()
{

  return sub_1C755180C();
}

uint64_t OUTLINED_FUNCTION_195_1()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 952);

  return sub_1C71F3078(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_198_0()
{

  return sub_1C71F29F8(v0, type metadata accessor for FreeformStory);
}

uint64_t OUTLINED_FUNCTION_223_0()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_233_1()
{
}

void *OUTLINED_FUNCTION_234_1(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_239_1()
{

  return sub_1C7091CBC();
}

uint64_t OUTLINED_FUNCTION_240_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_242_0()
{

  return sub_1C7551AAC();
}

uint64_t OUTLINED_FUNCTION_243_1()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_244_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *v18 = a17;
  *(v18 + 4) = v17;
  *(v18 + 12) = 2085;

  return sub_1C71930BC();
}

uint64_t OUTLINED_FUNCTION_245_1()
{

  return sub_1C75515AC();
}

uint64_t OUTLINED_FUNCTION_249_1(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_250_1()
{
  v3 = v0[90];
  *(v1 - 104) = v0[93];
  *(v1 - 96) = v3;
  *(v1 - 88) = v0[89];
}

uint64_t OUTLINED_FUNCTION_251_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1C6F765A4(a1, a2, va);
}

void OUTLINED_FUNCTION_252_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_257_1()
{
}

BOOL OUTLINED_FUNCTION_261_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_262_1()
{
}

void OUTLINED_FUNCTION_266_1()
{
  *(v4 + 16) = v2;
  v5 = v4 + 16 * v0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_281_1()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_282_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_283_1()
{
}

void OUTLINED_FUNCTION_284_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

id OUTLINED_FUNCTION_285_0()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_286_1(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_287_1()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_290_1(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v2;
  result = *(v1 + 42);
  *(a1 + 42) = result;
  return result;
}

void OUTLINED_FUNCTION_315_1()
{
  v1 = *(v0 - 136);
  *(v0 - 144) = *(v0 - 144);
  *(v0 - 136) = v1;
}

uint64_t OUTLINED_FUNCTION_331_0()
{
}

uint64_t OUTLINED_FUNCTION_332_0(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_333_0(uint64_t a1)
{
  *(a1 + 32) = v2;
  *(v1 + 456) = a1 | 0x4000000000000000;

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_334_0()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_335_0()
{

  return StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v2 - 128, v1, v0);
}

uint64_t OUTLINED_FUNCTION_336_0()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_337_0()
{

  return memcpy((v0 + 624), (v0 + 16), 0x130uLL);
}

uint64_t OUTLINED_FUNCTION_339_0()
{

  return StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)();
}

uint64_t OUTLINED_FUNCTION_340_0(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_342_0()
{

  return sub_1C75519EC();
}

uint64_t OUTLINED_FUNCTION_343()
{
}

uint64_t OUTLINED_FUNCTION_346_0()
{

  return sub_1C7551D8C();
}

void OUTLINED_FUNCTION_347_0()
{

  sub_1C6F7ED9C();
}

void OUTLINED_FUNCTION_348_0()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t sub_1C71F5110(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1C754F38C();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C71F51D0()
{
  v21 = v0;
  v1 = *(v0 + 96);
  v2 = v1 + *(type metadata accessor for StoryMusicCurationOptions() + 88);
  v3 = *(v2 + 8);
  *(v0 + 144) = v3;
  v4 = *(v2 + 16);
  *(v0 + 152) = v4;
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
    sub_1C75504FC();
    sub_1C754F1CC();
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, &dword_1EDD28D48);
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v7 = sub_1C755118C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136642819;
      *(v8 + 4) = sub_1C6F765A4(v3, v4, &v20);
      _os_log_impl(&dword_1C6F5C000, v6, v7, "(Keywords) curateKeywordsForStoryPrompt using prompt : %{sensitive}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_1C71F54EC;
    v11 = *(v0 + 104);
    v12 = *(v0 + 96);

    return sub_1C71F58BC(v3, v4, v12, v11);
  }

  else
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, &dword_1EDD28D48);
    v15 = sub_1C754FEEC();
    v16 = sub_1C755119C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C6F5C000, v15, v16, "(Keywords) Missing story prompt for music curation.", v17, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C70EB0F0();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1C71F54EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
  }

  else
  {
    *(v4 + 176) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C71F5618()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v14 = v0[15];
  v7 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CF8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
  *(v8 + 32) = sub_1C75504DC();
  v10 = v6 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  swift_beginAccess();
  v11 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v10 + v11);
  sub_1C6FC8A40();
  *(v10 + v11) = v15;
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1C754F1AC();
  (*(v5 + 8))(v4, v14);

  OUTLINED_FUNCTION_129();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C71F5804()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C71F58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_1C754E15C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219088);
  v5[20] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71F59B8()
{
  v1 = type metadata accessor for MaestroKeywordResolver();
  *(v0 + 168) = static MaestroKeywordResolver.allMaestroKeywordsAndAliases()(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_1C71F5A78;

  return StoryMusicCurator.generateMusicKeywords(forStoryPrompt:keywords:with:shouldTokenizeInput:eventRecorder:)();
}

uint64_t sub_1C71F5A78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (!v1)
  {
    *(v4 + 192) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C71F5BB8()
{
  v27 = v0;
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v25 = v0[17];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CF8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
  *(v8 + 32) = sub_1C75504DC();
  v10 = v5 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  swift_beginAccess();
  v11 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v10 + v11);
  sub_1C6FC8A40();
  *(v10 + v11) = v26;
  swift_endAccess();
  v12 = static StoryMusicEmbeddingTerms.filterKeywordsBelowTermThreshold(from:minScoreThreshold:)(v1, 0x3FE4CCCCCCCCCCCDLL, 0);

  sub_1C754E11C();
  sub_1C754E10C();
  (*(v4 + 8))(v3, v25);
  v13 = sub_1C754E0EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v13);
  v15 = v0[20];
  if (EnumTagSinglePayload == 1)
  {
    sub_1C7030CDC(v0[20], &qword_1EC219088);
    v16 = 0xE200000000000000;
    v17 = 21333;
  }

  else
  {
    v17 = sub_1C754E05C();
    v16 = v18;
    (*(*(v13 - 8) + 8))(v15, v13);
  }

  v19 = v0[23];
  StoryMusicCurator.postProcess(keywords:with:deviceRegion:)(v12, v0[14], v17, v16);

  v20 = sub_1C75504FC();
  v26 = sub_1C71CC894(v20);
  sub_1C70CCDF0(&v26);
  if (!v19)
  {

    OUTLINED_FUNCTION_129();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_129();
}

uint64_t sub_1C71F5EDC()
{
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v1 = *(v0 + 184);
  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, &dword_1EDD28D48);
  v3 = v1;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "(Keywords) Falling back to generic curation since generateMusicKeywords failed with error: %@", v7, 0xCu);
    sub_1C7030CDC(v8, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v11 = *(v0 + 184);

  v12 = *(v0 + 8);
  v13 = MEMORY[0x1E69E7CC0];

  return v12(v13);
}

uint64_t sub_1C71F6070()
{
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  result = sub_1C75513CC();
  qword_1EC219090 = result;
  return result;
}

uint64_t sub_1C71F60B8()
{
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  result = sub_1C75513CC();
  qword_1EC219098 = result;
  return result;
}

uint64_t static PNSuggestionWallpaperUtilities.fetchFeaturedGyroPosterSuggestions(in:avoiding:limit:)(unint64_t *a1, void *a2, void *a3)
{
  v4 = a2;
  if (!a3)
  {
    if (qword_1EC213EB0 != -1)
    {
      OUTLINED_FUNCTION_0_100();
    }

    v6 = qword_1EC219098;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = a3;
    goto LABEL_8;
  }

  v6 = a3;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = a3;
  v4 = sub_1C7550F7C();
LABEL_8:
  v34 = v6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (qword_1EC213EA8 != -1)
  {
LABEL_46:
    OUTLINED_FUNCTION_1_76();
  }

  a1 = [ObjCClassFromMetadata fetchRankedGyroPosterSuggestionsInPhotoLibrary:a1 avoiding:v4 limit:qword_1EC219090];

  sub_1C6F65BE8(0, &qword_1EDD0CEB0);
  OUTLINED_FUNCTION_63();
  ObjCClassFromMetadata = sub_1C7550B5C();

  v10 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6FB6304();
  v11 = 0;
  v12 = ObjCClassFromMetadata & 0xC000000000000001;
  while (v4 != v11)
  {
    if (v12)
    {
      v13 = MEMORY[0x1CCA5DDD0](v11, ObjCClassFromMetadata);
    }

    else
    {
      if (v11 >= *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v13 = *(ObjCClassFromMetadata + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v35 = 1;
    a1 = v13;
    v37 = PHSuggestion.disparityScore(using:)(&v35);
    if ((v15 & 1) != 0 || *&v37.is_nil <= 0.4)
    {
    }

    else
    {
      sub_1C755192C();
      OUTLINED_FUNCTION_2_68();
      sub_1C755196C();
      OUTLINED_FUNCTION_2_68();
      sub_1C755197C();
      a1 = &v36;
      sub_1C755193C();
    }

    ++v11;
  }

  v16 = 0;
  v17 = v36;
  v36 = v10;
  while (v4 != v16)
  {
    if (v12)
    {
      v18 = MEMORY[0x1CCA5DDD0](v16, ObjCClassFromMetadata);
    }

    else
    {
      if (v16 >= *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v18 = *(ObjCClassFromMetadata + 8 * v16 + 32);
    }

    v19 = v18;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_44;
    }

    v35 = 1;
    a1 = v18;
    PHSuggestion.disparityScore(using:)(&v35);
    if (v20)
    {
      sub_1C755192C();
      OUTLINED_FUNCTION_2_68();
      sub_1C755196C();
      OUTLINED_FUNCTION_2_68();
      sub_1C755197C();
      a1 = &v36;
      sub_1C755193C();
    }

    else
    {
    }

    ++v16;
  }

  v21 = v36;
  v36 = v17;
  sub_1C6FD3084(v21);
  v22 = sub_1C70341EC([v34 integerValue], v36);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v28 >> 1, v26))
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v31 != (v28 >> 1) - v26)
  {
LABEL_48:
    swift_unknownObjectRelease();
LABEL_33:
    sub_1C739CC7C(v22, v24, v26, v28);
    goto LABEL_39;
  }

  v29 = swift_dynamicCastClass();
  if (!v29)
  {

    swift_unknownObjectRelease_n();
    return MEMORY[0x1E69E7CC0];
  }

LABEL_39:
  v32 = v29;
  swift_unknownObjectRelease();

  return v32;
}

uint64_t static PNSuggestionWallpaperUtilities.fetchRankedGyroPosterSuggestions(in:avoiding:limit:)(void *a1, unint64_t a2, unint64_t *a3)
{
  v3 = a3;
  v77 = a1;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  if (a3)
  {
    sub_1C75504FC();
    v5 = v3;
  }

  else
  {
    v6 = qword_1EC213EB0;
    sub_1C75504FC();
    if (v6 != -1)
    {
LABEL_72:
      OUTLINED_FUNCTION_0_100();
    }

    v5 = qword_1EC219098;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = qword_1EC213EA8;
  v9 = v3;
  if (v8 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v10 = [ObjCClassFromMetadata fetchGyroPosterSuggestionsInPhotoLibrary:v77 limit:qword_1EC219090];
    v11 = [v10 count];
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    ObjCClassFromMetadata = v11;
    v75 = v5;
    v79 = v10;
    if (v11)
    {
      break;
    }

    v14 = MEMORY[0x1E69E7CC8];
LABEL_35:

    v5 = [v77 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C755BAB0;
    *(v35 + 32) = sub_1C755068C();
    *(v35 + 40) = v36;
    sub_1C6FCA0EC(v35, v5);
    v37 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v10 options:v5];
    if (!v37)
    {

      v54 = MEMORY[0x1E69E7CC0];
      v55 = v75;
LABEL_65:

      return v54;
    }

    v38 = v37;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    ObjCClassFromMetadata = sub_1C75504AC();

    sub_1C739CC90(ObjCClassFromMetadata, v39, v40, v41, v42, v43, v44, v45, v74, v75, v77, v78, v79, v81, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11]);
    v82[0] = v46;
    sub_1C71F7424(v82);
    v81 = v5;

    v3 = v82[0];
    v47 = *(v82[0] + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v82[0] = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v49 = v82[0];
      v50 = v3 + 5;
      do
      {
        v51 = *(v50 - 1);
        v5 = *v50;
        v82[0] = v49;
        v52 = *(v49 + 16);
        ObjCClassFromMetadata = *(v49 + 24);
        sub_1C75504FC();
        if (v52 >= ObjCClassFromMetadata >> 1)
        {
          ObjCClassFromMetadata = v82;
          sub_1C6F7ED9C();
          v49 = v82[0];
        }

        *(v49 + 16) = v52 + 1;
        v53 = v49 + 16 * v52;
        *(v53 + 32) = v51;
        *(v53 + 40) = v5;
        v50 += 3;
        --v47;
      }

      while (v47);

      v48 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v49 = MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v82[0] = v48;
    v56 = *(v49 + 16);
    v57 = v49 + 40;
    v78 = v49 + 40;
LABEL_45:
    for (i = (v57 + 16 * v4); ; i += 2)
    {
      if (v56 == v4)
      {

        v62 = sub_1C755103C();
        v63 = sub_1C70341EC(v62, v48);
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v55 = v80;
        if (v68)
        {
          sub_1C7551DEC();
          swift_unknownObjectRetain_n();
          v71 = swift_dynamicCastClass();
          if (!v71)
          {
            swift_unknownObjectRelease();
            v71 = MEMORY[0x1E69E7CC0];
          }

          v72 = *(v71 + 16);

          if (__OFSUB__(v69 >> 1, v67))
          {
            __break(1u);
          }

          else if (v72 == (v69 >> 1) - v67)
          {
            v54 = swift_dynamicCastClass();

            if (!v54)
            {
              swift_unknownObjectRelease();
              v54 = MEMORY[0x1E69E7CC0];
            }

            swift_unknownObjectRelease();
            goto LABEL_65;
          }

          swift_unknownObjectRelease();
        }

        sub_1C739CC7C(v63, v65, v67, v69);
        v54 = v70;

        swift_unknownObjectRelease();

        v55 = v76;
        goto LABEL_65;
      }

      if (v4 >= v56)
      {
        break;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_67;
      }

      if (v14[2])
      {
        v3 = *(i - 1);
        v5 = *i;
        sub_1C75504FC();
        ObjCClassFromMetadata = v14;
        v59 = sub_1C6F78124(v3, v5);
        if (v60)
        {
          v3 = *(v14[7] + 8 * v59);

          MEMORY[0x1CCA5D040](v61);
          v5 = *((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v5 >= *((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          ObjCClassFromMetadata = v82;
          sub_1C7550BEC();
          v48 = v82[0];
          ++v4;
          v57 = v49 + 40;
          goto LABEL_45;
        }
      }

      ++v4;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    OUTLINED_FUNCTION_1_76();
  }

  v12 = 0;
  v13 = v4 + 56;
  v14 = MEMORY[0x1E69E7CC8];
  v78 = v4;
  v81 = v11;
  while (1)
  {
    v15 = [v10 objectAtIndexedSubscript_];
    v16 = sub_1C6FCA214(v15);
    if (v17)
    {
      break;
    }

LABEL_32:
    if (++v12 == ObjCClassFromMetadata)
    {
      goto LABEL_35;
    }
  }

  v18 = v16;
  v3 = v17;
  if (*(v4 + 16))
  {
    sub_1C7551F3C();
    sub_1C75505AC();
    v19 = sub_1C7551FAC();
    v20 = ~(-1 << *(v4 + 32));
    do
    {
      v5 = v19 & v20;
      if (((*(v13 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
      {
        goto LABEL_23;
      }

      v21 = (*(v4 + 48) + 16 * v5);
      if (*v21 == v18 && v3 == v21[1])
      {
        break;
      }

      v23 = sub_1C7551DBC();
      v19 = v5 + 1;
    }

    while ((v23 & 1) == 0);

    ObjCClassFromMetadata = v81;
    goto LABEL_32;
  }

LABEL_23:
  v24 = v15;
  swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v14;
  ObjCClassFromMetadata = v14;
  v25 = sub_1C6F78124(v18, v3);
  if (__OFADD__(v14[2], (v26 & 1) == 0))
  {
    goto LABEL_68;
  }

  v4 = v25;
  v5 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190A0);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_27:
    ObjCClassFromMetadata = v81;
    if (v5)
    {

      v14 = v82[0];
      v29 = *(v82[0] + 56);
      v30 = *(v29 + 8 * v4);
      *(v29 + 8 * v4) = v24;
    }

    else
    {
      v14 = v82[0];
      *(v82[0] + 8 * (v4 >> 6) + 64) |= 1 << v4;
      v31 = (v14[6] + 16 * v4);
      *v31 = v18;
      v31[1] = v3;
      *(v14[7] + 8 * v4) = v24;

      v32 = v14[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_69;
      }

      v14[2] = v34;
    }

    v4 = v78;
    v10 = v79;
    goto LABEL_32;
  }

  v27 = sub_1C6F78124(v18, v3);
  if ((v5 & 1) == (v28 & 1))
  {
    v4 = v27;
    goto LABEL_27;
  }

  sub_1C7551E4C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C71F6DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  v4 = v2;
  if ([v3 isFavorite] && (objc_msgSend(v4, sel_isFavorite) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (([v3 isFavorite] & 1) == 0 && objc_msgSend(v4, sel_isFavorite))
  {
    goto LABEL_8;
  }

  v5 = [v3 mediaAnalysisProperties];
  [v5 wallpaperScore];
  v7 = v6;

  v8 = [v4 mediaAnalysisProperties];
  [v8 wallpaperScore];
  v10 = v9;

  [v3 overallAestheticScore];
  v12 = v11;
  [v4 overallAestheticScore];
  if ((v10 + v13) < (v7 + v12))
  {
LABEL_6:

    v14 = 1;
    return v14 & 1;
  }

  if ((v7 + v12) < (v10 + v13))
  {
    goto LABEL_8;
  }

  if (v10 < v7)
  {
    goto LABEL_6;
  }

  if (v7 < v10)
  {
    goto LABEL_8;
  }

  if (v13 < v12)
  {
    goto LABEL_6;
  }

  if (v12 < v13)
  {
LABEL_8:

    v14 = 0;
    return v14 & 1;
  }

  v16 = [v3 localIdentifier];
  v17 = sub_1C755068C();
  v19 = v18;

  v20 = [v4 localIdentifier];
  v21 = sub_1C755068C();
  v23 = v22;

  if (v21 == v17 && v23 == v19)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1C7551DBC();
  }

  return v14 & 1;
}

id sub_1C71F7020(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(id, uint64_t, void *))
{
  if (a4)
  {
    v9 = sub_1C7550F8C();
  }

  else
  {
    v9 = 0;
  }

  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  a6(v10, v9, a5);

  sub_1C6F65BE8(0, &qword_1EDD0CEB0);
  v12 = sub_1C7550B3C();

  return v12;
}

id static PNSuggestionWallpaperUtilities.fetchGyroPosterSuggestions(in:limit:)(void *a1, void *a2)
{
  v3 = [a1 librarySpecificFetchOptions];
  if (a2)
  {
    v4 = a2;
    [v3 setFetchLimit_];
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C75650C0;
  v6 = objc_opt_self();
  *(v5 + 32) = [v6 predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper];
  *(v5 + 40) = [swift_getObjCClassFromMetadata() internalPredicateForSuggestionFetchIncludingAvailableFeatures_];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C75604F0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6F6D524();
  *(v7 + 32) = 0x6574617473;
  *(v7 + 40) = 0xE500000000000000;
  v8 = MEMORY[0x1E69E7660];
  *(v7 + 96) = MEMORY[0x1E69E75F8];
  *(v7 + 104) = v8;
  *(v7 + 72) = 2;
  *(v5 + 48) = sub_1C755112C();
  v9 = sub_1C6F6E5C4();
  [v3 setInternalPredicate_];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C7564A90;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v10 + 32) = sub_1C6F6AF98(0x7461447472617473, 0xE900000000000065, 0);
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v10 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v10, v3);
  v13 = [v6 fetchSuggestionsWithOptions_];

  return v13;
}

void sub_1C71F7424(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422E4C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1C71F7490(v5);
  *a1 = v2;
}

void sub_1C71F7490(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1C7551D7C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182C8);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C71F78D0(v7, v8, a1, v4);
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
    sub_1C71F7594(0, v2, 1, a1);
  }
}

void sub_1C71F7594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v39 = *a4;
  v4 = (*a4 + 24 * a3);
  v5 = a1 - a3;
  while (2)
  {
    v35 = v4;
    v36 = a3;
    v6 = *(v39 + 24 * a3 + 16);
    v34 = v5;
    while (1)
    {
      v7 = *(v4 - 1);
      v8 = v6;
      v9 = v7;
      v10 = v8;
      v11 = v9;
      sub_1C75504FC();
      sub_1C75504FC();
      if (![v10 isFavorite] || objc_msgSend(v11, sel_isFavorite))
      {
        if ([v10 isFavorite] & 1) == 0 && (objc_msgSend(v11, sel_isFavorite))
        {
LABEL_25:

          goto LABEL_26;
        }

        v12 = [v10 mediaAnalysisProperties];
        [v12 wallpaperScore];
        v14 = v13;

        v15 = [v11 mediaAnalysisProperties];
        [v15 wallpaperScore];
        v17 = v16;

        [v10 overallAestheticScore];
        v19 = v18;
        [v11 overallAestheticScore];
        if ((v17 + v20) >= (v14 + v19))
        {
          if ((v14 + v19) < (v17 + v20))
          {
            goto LABEL_25;
          }

          if (v17 >= v14)
          {
            if (v14 < v17)
            {
              goto LABEL_25;
            }

            if (v20 >= v19)
            {
              break;
            }
          }
        }
      }

LABEL_14:
      if (!v39)
      {
        __break(1u);
        return;
      }

      v21 = *v4;
      v22 = v4[1];
      v6 = v4[2];
      *v4 = *(v4 - 3);
      v4[2] = *(v4 - 1);
      *(v4 - 2) = v22;
      *(v4 - 1) = v6;
      *(v4 - 3) = v21;
      v4 -= 3;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_26;
      }
    }

    if (v19 < v20)
    {
      goto LABEL_25;
    }

    v24 = [v10 localIdentifier];
    v25 = sub_1C755068C();
    v37 = v26;
    v38 = v25;

    v27 = [v11 localIdentifier];
    v28 = sub_1C755068C();
    v30 = v29;

    if (v28 != v38 || v30 != v37)
    {
      v32 = sub_1C7551DBC();

      if ((v32 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

LABEL_26:
    a3 = v36 + 1;
    v4 = v35 + 3;
    v5 = v34 - 1;
    if (v36 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_1C71F78D0(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_134:
    v160 = *a1;
    if (!*a1)
    {
      goto LABEL_176;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_136;
    }

    goto LABEL_170;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    v145 = v7;
    if (v5 >= v4)
    {
      goto LABEL_47;
    }

    v151 = v4;
    v8 = *a3;
    v9 = v5;
    v10 = &(*a3)[24 * v5];
    v11 = *(v10 + 1);
    v12 = *(v10 + 2);
    v162[0] = *v10;
    v162[1] = v11;
    v162[2] = v12;
    v13 = &v8[24 * v7];
    v14 = *(v13 + 1);
    v15 = *(v13 + 2);
    v161[0] = *v13;
    v161[1] = v14;
    v161[2] = v15;
    sub_1C75504FC();
    v16 = v12;
    sub_1C75504FC();
    v17 = v15;
    v155 = sub_1C71F6DF0(v162, v161);
    if (v159)
    {

LABEL_144:

      return;
    }

    v149 = 24 * v7;
    v18 = v7;
    v19 = &v8[24 * v7 + 64];
    v20 = (v18 + 2);
    v5 = v9;
    v21 = v151;
    v153 = v6;
    while (1)
    {
      v22 = v20;
      if (v5 + 1 >= v21)
      {
        break;
      }

      v160 = v20;
      v23 = *(v19 - 3);
      v24 = *v19;
      v25 = v23;
      v26 = v24;
      v27 = v25;
      sub_1C75504FC();
      sub_1C75504FC();
      if ([v26 isFavorite] && (objc_msgSend(v27, sel_isFavorite) & 1) == 0)
      {
        v28 = v5;

        v29 = 1;
        goto LABEL_18;
      }

      if ([v26 isFavorite] & 1) == 0 && (objc_msgSend(v27, sel_isFavorite))
      {
        v28 = v5;

        v29 = 0;
LABEL_18:
        v22 = v160;
        goto LABEL_19;
      }

      v30 = [v26 mediaAnalysisProperties];
      [v30 wallpaperScore];
      v32 = v31;

      v33 = [v27 mediaAnalysisProperties];
      [v33 wallpaperScore];
      v35 = v34;

      [v26 overallAestheticScore];
      v37 = v36;
      [v27 overallAestheticScore];
      if ((v35 + v38) < (v32 + v37))
      {
        v28 = v5;

        v29 = 1;
        v21 = v151;
        goto LABEL_18;
      }

      v21 = v151;
      v22 = v160;
      if ((v32 + v37) < (v35 + v38))
      {
        goto LABEL_15;
      }

      if (v35 < v32)
      {
        goto LABEL_22;
      }

      if (v32 < v35)
      {
LABEL_15:
        v28 = v5;
      }

      else
      {
        if (v38 < v37)
        {
LABEL_22:
          v28 = v5;

          v29 = 1;
          goto LABEL_19;
        }

        v28 = v5;
        if (v37 >= v38)
        {
          v40 = [v26 localIdentifier];
          v146 = sub_1C755068C();
          v142 = v41;

          v42 = [v27 localIdentifier];
          v141 = sub_1C755068C();
          v44 = v43;

          if (v141 == v146 && v44 == v142)
          {
            v29 = 0;
          }

          else
          {
            v29 = sub_1C7551DBC();
          }

          goto LABEL_19;
        }
      }

      v29 = 0;
LABEL_19:

      v39 = v155 ^ v29;
      v19 += 3;
      v5 = v28 + 1;
      v20 = v22 + 1;
      v6 = v153;
      if (v39)
      {
        goto LABEL_34;
      }
    }

    v5 = v21;
LABEL_34:
    if ((v155 & 1) == 0)
    {
      v7 = v145;
      goto LABEL_47;
    }

    v7 = v145;
    if (v5 < v145)
    {
      goto LABEL_169;
    }

    if (v145 < v5)
    {
      if (v21 >= v22)
      {
        v46 = v22;
      }

      else
      {
        v46 = v21;
      }

      v47 = 24 * v46;
      v48 = v5;
      v49 = v145;
      v50 = v149;
      do
      {
        if (v49 != --v48)
        {
          v51 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v52 = &v51[v50];
          v53 = &v51[v47];
          v54 = *v52;
          v55 = *(v52 + 8);
          v56 = *(v53 - 24);
          *(v52 + 2) = *(v53 - 1);
          *v52 = v56;
          *(v53 - 3) = v54;
          *(v53 - 1) = v55;
        }

        ++v49;
        v47 -= 24;
        v50 += 24;
      }

      while (v49 < v48);
    }

LABEL_47:
    v57 = a3[1];
    if (v5 < v57)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_166;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_82:
    if (v5 < v7)
    {
      goto LABEL_165;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v131;
    }

    v89 = *(v6 + 2);
    v90 = v89 + 1;
    if (v89 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v132;
    }

    *(v6 + 2) = v90;
    v91 = v6 + 32;
    v92 = &v6[16 * v89 + 32];
    *v92 = v145;
    *(v92 + 1) = v5;
    v160 = *a1;
    if (!*a1)
    {
      goto LABEL_175;
    }

    if (v89)
    {
      while (1)
      {
        v93 = v90 - 1;
        v94 = &v91[16 * v90 - 16];
        v95 = &v6[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v96 = *(v6 + 4);
          v97 = *(v6 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_102:
          if (v99)
          {
            goto LABEL_152;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_155;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_158;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_160;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v90 - 2;
            }

            goto LABEL_124;
          }

          goto LABEL_117;
        }

        if (v90 < 2)
        {
          goto LABEL_154;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_117:
        if (v114)
        {
          goto LABEL_157;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_159;
        }

        if (v121 < v113)
        {
          goto LABEL_131;
        }

LABEL_124:
        if (v93 - 1 >= v90)
        {
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
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*a3)
        {
          goto LABEL_172;
        }

        v125 = v5;
        v126 = &v91[16 * v93 - 16];
        v127 = *v126;
        v128 = &v91[16 * v93];
        v129 = *(v128 + 1);
        sub_1C71F8448(&(*a3)[24 * *v126], &(*a3)[24 * *v128], &(*a3)[24 * v129], v160);
        if (v159)
        {
          goto LABEL_144;
        }

        if (v129 < v127)
        {
          goto LABEL_147;
        }

        v130 = *(v6 + 2);
        if (v93 > v130)
        {
          goto LABEL_148;
        }

        *v126 = v127;
        *(v126 + 1) = v129;
        if (v93 >= v130)
        {
          goto LABEL_149;
        }

        v90 = v130 - 1;
        sub_1C7423CF4(v128 + 16, v130 - 1 - v93, &v91[16 * v93]);
        *(v6 + 2) = v130 - 1;
        v5 = v125;
        if (v130 <= 2)
        {
          goto LABEL_131;
        }
      }

      v100 = &v91[16 * v90];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_150;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_151;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_153;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_156;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_164;
        }

        if (v98 < v124)
        {
          v93 = v90 - 2;
        }

        goto LABEL_124;
      }

      goto LABEL_102;
    }

LABEL_131:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_134;
    }
  }

  v58 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_167;
  }

  if (v58 >= v57)
  {
    v58 = a3[1];
  }

  if (v58 < v7)
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    v6 = sub_1C7420830();
LABEL_136:
    v133 = v6 + 16;
    v134 = *(v6 + 2);
    while (v134 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_173;
      }

      v135 = v6;
      v136 = &v6[16 * v134];
      v137 = *v136;
      v138 = &v133[2 * v134];
      v139 = *(v138 + 1);
      sub_1C71F8448(&(*a3)[24 * *v136], &(*a3)[24 * *v138], &(*a3)[24 * v139], v160);
      if (v159)
      {
        break;
      }

      if (v139 < v137)
      {
        goto LABEL_161;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_162;
      }

      *v136 = v137;
      *(v136 + 1) = v139;
      v140 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_163;
      }

      v134 = *v133 - 1;
      sub_1C7423CF4(v138 + 16, v140, v138);
      *v133 = v134;
      v6 = v135;
    }

    goto LABEL_144;
  }

  if (v5 == v58)
  {
    goto LABEL_82;
  }

  v154 = v6;
  v160 = *a3;
  v59 = &(*a3)[24 * v5];
  v60 = v7 - v5;
  v147 = v58;
LABEL_56:
  v150 = v59;
  v152 = v5;
  v61 = *&v160[24 * v5 + 16];
  v148 = v60;
  v62 = v60;
  while (1)
  {
    v63 = *(v59 - 1);
    v64 = v61;
    v65 = v63;
    v66 = v64;
    v67 = v65;
    sub_1C75504FC();
    sub_1C75504FC();
    if ([v66 isFavorite])
    {
      if (![v67 isFavorite])
      {
        goto LABEL_66;
      }
    }

    if ([v66 isFavorite] & 1) == 0 && (objc_msgSend(v67, sel_isFavorite))
    {
LABEL_78:

      goto LABEL_79;
    }

    v68 = [v66 mediaAnalysisProperties];
    [v68 wallpaperScore];
    v70 = v69;

    v71 = [v67 mediaAnalysisProperties];
    [v71 wallpaperScore];
    v73 = v72;

    [v66 overallAestheticScore];
    v75 = v74;
    [v67 overallAestheticScore];
    if ((v73 + v76) < (v70 + v75))
    {
      goto LABEL_66;
    }

    if ((v70 + v75) < (v73 + v76))
    {
      goto LABEL_78;
    }

    if (v73 < v70)
    {
      goto LABEL_66;
    }

    if (v70 < v73)
    {
      goto LABEL_78;
    }

    if (v76 >= v75)
    {
      if (v75 < v76)
      {
        goto LABEL_78;
      }

      v80 = [v66 localIdentifier];
      v81 = sub_1C755068C();
      v156 = v82;
      v157 = v81;

      v83 = [v67 localIdentifier];
      v84 = sub_1C755068C();
      v86 = v85;

      if (v84 == v157 && v86 == v156)
      {

LABEL_79:
        v5 = v152 + 1;
        v59 = v150 + 24;
        v60 = v148 - 1;
        if (v152 + 1 == v147)
        {
          v5 = v147;
          v6 = v154;
          v7 = v145;
          goto LABEL_82;
        }

        goto LABEL_56;
      }

      v88 = sub_1C7551DBC();

      if ((v88 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else
    {
LABEL_66:
    }

    if (!v160)
    {
      break;
    }

    v77 = *v59;
    v78 = *(v59 + 1);
    v61 = *(v59 + 2);
    *v59 = *(v59 - 24);
    *(v59 + 2) = *(v59 - 1);
    *(v59 - 2) = v78;
    *(v59 - 1) = v61;
    *(v59 - 3) = v77;
    v59 -= 24;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
}

uint64_t sub_1C71F8448(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 < v10)
  {
    v70 = v4;
    sub_1C6F9EE48(a1, (a2 - a1) / 24, a4);
    v12 = a4;
    v13 = &a4[24 * v9];
    for (i = v13; ; v13 = i)
    {
      if (v12 >= v13 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v15 = v6;
      v62 = v8;
      v16 = *(v7 + 1);
      v17 = v7;
      v18 = *(v7 + 2);
      v67 = *v7;
      v68 = v16;
      v69 = v18;
      v19 = *(v12 + 1);
      v20 = v12;
      v21 = *(v12 + 2);
      v64 = *v12;
      v65 = v19;
      v66 = v21;
      sub_1C75504FC();
      v22 = v18;
      sub_1C75504FC();
      v23 = v21;
      v24 = v70;
      v25 = sub_1C71F6DF0(&v67, &v64);
      v70 = v24;
      if (v24)
      {

        v51 = v62;
        v52 = (i - v20) / 24;
        if (v62 < v20 || v62 >= &v20[24 * v52])
        {
          v50 = 24 * v52;
          v12 = v20;
          goto LABEL_47;
        }

        if (v62 != v20)
        {
          v50 = 24 * v52;
          v12 = v20;
          goto LABEL_47;
        }

        return 1;
      }

      v26 = v25;

      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = v17;
      v7 = v17 + 24;
      v28 = v62;
      v6 = v15;
      v12 = v20;
      if (v62 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 = (v28 + 24);
    }

    v27 = v20;
    v12 = v20 + 24;
    v28 = v62;
    v7 = v17;
    v6 = v15;
    if (v62 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    v29 = *v27;
    *(v28 + 16) = *(v27 + 2);
    *v28 = v29;
    goto LABEL_13;
  }

  sub_1C6F9EE48(a2, (a3 - a2) / 24, a4);
  v12 = a4;
  v61 = &a4[24 * v10];
  v63 = v8;
  v58 = a4;
LABEL_15:
  v31 = 0;
  v57 = v7 - 24;
  v59 = v7;
  while (1)
  {
    v13 = &v61[v31];
    if (&v61[v31] <= v12 || v7 <= v8)
    {
LABEL_29:
      v48 = (v13 - v12) / 24;
      v49 = v7 < v12 || v7 >= &v12[24 * v48];
      if (v49 || v7 != v12)
      {
        v50 = 24 * v48;
        v51 = v7;
        goto LABEL_47;
      }

      return 1;
    }

    v33 = v6;
    v70 = v5;
    v34 = *(v13 - 3);
    v36 = *(v13 - 2);
    v35 = v13 - 24;
    v37 = *(v35 + 2);
    v67 = v34;
    v68 = v36;
    v69 = v37;
    v38 = *(v7 - 2);
    v39 = *(v7 - 1);
    v64 = *(v7 - 3);
    v65 = v38;
    v66 = v39;
    sub_1C75504FC();
    v40 = v37;
    sub_1C75504FC();
    v41 = v39;
    v42 = v70;
    v43 = sub_1C71F6DF0(&v67, &v64);
    v70 = v42;
    if (v42)
    {
      break;
    }

    v44 = v43;

    v45 = (v33 + v31 - 24);
    if (v44)
    {
      v8 = v63;
      v61 += v31;
      v6 = v33 + v31 - 24;
      v12 = v58;
      v7 = v57;
      v5 = v70;
      if (v33 + v31 != v59)
      {
        v47 = *v57;
        *(v33 + v31 - 8) = *(v57 + 2);
        *v45 = v47;
        v7 = v57;
        v6 = v33 + v31 - 24;
      }

      goto LABEL_15;
    }

    v6 = v33;
    v7 = v59;
    v8 = v63;
    if (&v61[v31] != (v33 + v31))
    {
      v46 = *v35;
      *(v33 + v31 - 8) = *(v35 + 2);
      *v45 = v46;
    }

    v31 -= 24;
    v5 = v70;
    v12 = v58;
  }

  v12 = v58;
  v51 = v59;
  v54 = (v61 - v58 + v31) / 24;
  if (v59 < v58 || v59 >= &v58[24 * v54])
  {
    v50 = 24 * v54;
    goto LABEL_47;
  }

  if (v59 != v58)
  {
    v50 = 24 * v54;
LABEL_47:
    memmove(v51, v12, v50);
  }

  return 1;
}

void sub_1C71F8834(uint64_t a1, void *a2)
{
  sub_1C6F65BE8(0, &qword_1EDD108F0);
  OUTLINED_FUNCTION_63();
  v3 = sub_1C7550B3C();

  [a2 setSortDescriptors_];
}

uint64_t sub_1C71F88B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[118] = a5;
  v5[117] = a4;
  v5[116] = a3;
  v5[115] = a2;
  v5[114] = a1;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71F88F0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 912) + 16);
  *(v0 + 952) = v1;
  *(v0 + 968) = MEMORY[0x1E69E7CC0];
  *(v0 + 960) = 0;
  if (v1)
  {
    OUTLINED_FUNCTION_23_27((v0 + 16));
    OUTLINED_FUNCTION_23_27((v0 + 144));
    sub_1C6FB7BB8(v0 + 16, v0 + 400);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 976) = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_1_77(v2);

    return sub_1C6FB9EF0();
  }

  else
  {

    OUTLINED_FUNCTION_116();
    v6 = MEMORY[0x1E69E7CC0];

    return v5(v6);
  }
}

uint64_t sub_1C71F89F0()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v2 + 984) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71F8AFC()
{
  OUTLINED_FUNCTION_49_0();
  memcpy((v0 + 656), (v0 + 272), 0x80uLL);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 968);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C6FB1B04();
    v2 = v9;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_1C6FB1B04();
    v2 = v10;
  }

  memcpy((v0 + 784), (v0 + 144), 0x80uLL);
  sub_1C6FBC664(v0 + 784);
  *(v2 + 16) = v3 + 1;
  memcpy((v2 + (v3 << 7) + 32), (v0 + 656), 0x80uLL);
  v4 = *(v0 + 960) + 1;
  *(v0 + 968) = v2;
  *(v0 + 960) = v4;
  if (v4 == *(v0 + 952))
  {

    OUTLINED_FUNCTION_116();

    return v5(v2);
  }

  else
  {
    OUTLINED_FUNCTION_23_27((v0 + 16));
    OUTLINED_FUNCTION_23_27((v0 + 144));
    sub_1C6FB7BB8(v0 + 16, v0 + 400);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 976) = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_1_77();

    return sub_1C6FB9EF0();
  }
}

uint64_t sub_1C71F8CAC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[115];
  memcpy(v0 + 66, v0 + 18, 0x80uLL);
  sub_1C6FBC664((v0 + 66));

  v2 = v0[1];

  return v2();
}

uint64_t Sequence.asyncMap<A>(_:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_20_38(v1, v2, v3, v4, v5);
  v0[9] = OUTLINED_FUNCTION_77();
  v0[10] = OUTLINED_FUNCTION_4_53();
  OUTLINED_FUNCTION_29();
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_77();
  sub_1C755149C();
  v0[13] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_29();
  v0[14] = v7;
  v0[15] = OUTLINED_FUNCTION_77();
  v8 = OUTLINED_FUNCTION_4_53();
  v0[16] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[17] = v9;
  v0[18] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C71F8EE4()
{
  v1 = sub_1C755043C();
  v2 = OUTLINED_FUNCTION_8_43(v1);
  v3(v2);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_19_35();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_5_51();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_9_49();
    v6(v5);
    v7 = *(v0 + 16);

    OUTLINED_FUNCTION_116();
    v14 = v7;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_21_33();
    v10(v9);
    OUTLINED_FUNCTION_0_101();
    v16 = v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 152) = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_3_66(v12);
    v8 = v16;
  }

  return v8(v14);
}

uint64_t sub_1C71F9084()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v2 + 160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71F9190()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1C7550C3C();
  sub_1C7550C0C();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_19_35();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_5_51();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_9_49();
    v6(v5);
    v7 = v0[2];

    OUTLINED_FUNCTION_116();
    v14 = v7;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_21_33();
    v10(v9);
    OUTLINED_FUNCTION_0_101();
    v16 = v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[19] = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_3_66();
    v8 = v16;
  }

  return v8(v14);
}

uint64_t sub_1C71F9340()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncCompactMap<A>(_:)()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  OUTLINED_FUNCTION_20_38(v3, v4, v5, v1, v6);
  v7 = sub_1C755149C();
  v0[9] = v7;
  OUTLINED_FUNCTION_18(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_77();
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = OUTLINED_FUNCTION_4_53();
  OUTLINED_FUNCTION_29();
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_77();
  sub_1C755149C();
  v0[18] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_29();
  v0[19] = v10;
  v0[20] = OUTLINED_FUNCTION_77();
  v11 = OUTLINED_FUNCTION_4_53();
  v0[21] = v11;
  OUTLINED_FUNCTION_18(v11);
  v0[22] = v12;
  v0[23] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C71F9650()
{
  v1 = sub_1C755043C();
  v2 = OUTLINED_FUNCTION_8_43(v1);
  v3(v2);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_19_35();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_5_51();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_7_45();
    v6(v5);
    v7 = *(v0 + 16);

    OUTLINED_FUNCTION_116();
    v12 = v7;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_32();
    v9(v8);
    OUTLINED_FUNCTION_0_101();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 192) = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_2_69(v10);
  }

  return v13(v12);
}

uint64_t sub_1C71F9804()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v2 + 200) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71F9910()
{
  v1 = v0[11];
  v2 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    (*(v5 + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v11 + 32))(v9, v1, v2);
    (*(v11 + 16))(v10, v9, v2);
    sub_1C7550C3C();
    sub_1C7550C0C();
    (*(v11 + 8))(v9, v2);
    (*(v5 + 8))(v4, v6);
  }

  OUTLINED_FUNCTION_19_35();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_5_51();
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_7_45();
    v14(v13);
    v15 = v0[2];

    OUTLINED_FUNCTION_116();
    v20 = v15;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_16_32();
    v17(v16);
    OUTLINED_FUNCTION_0_101();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[24] = v18;
    *v18 = v19;
    v20 = OUTLINED_FUNCTION_2_69();
  }

  return v21(v20);
}

uint64_t sub_1C71F9B90()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

PhotosIntelligence::TraitSelectionStrategy::TraitMatchingOptions __swiftcall TraitSelectionStrategy.TraitMatchingOptions.init(useOnlyGlobalTraits:useOnlyStorytellerSelectedTraits:useAllTraitsAboveThreshold:assetOverlapThreshold:requireAtLeastTwoTraits:)(Swift::Bool useOnlyGlobalTraits, Swift::Bool useOnlyStorytellerSelectedTraits, Swift::Bool useAllTraitsAboveThreshold, Swift::Double assetOverlapThreshold, Swift::Bool requireAtLeastTwoTraits)
{
  *v5 = useOnlyGlobalTraits;
  *(v5 + 1) = useOnlyStorytellerSelectedTraits;
  *(v5 + 2) = useAllTraitsAboveThreshold;
  *(v5 + 8) = assetOverlapThreshold;
  *(v5 + 16) = requireAtLeastTwoTraits;
  result.assetOverlapThreshold = assetOverlapThreshold;
  result.requireAtLeastTwoTraits = useOnlyStorytellerSelectedTraits;
  result.useOnlyGlobalTraits = useOnlyGlobalTraits;
  return result;
}

void static TraitSelectionStrategy.sortedSelectedTraitTitles(from:traits:traitsSelectedByStoryteller:keyAssetUUID:options:)()
{
  OUTLINED_FUNCTION_18_26();
  v1 = v0;
  v109 = v2;
  v110 = v3;
  v108 = v4;
  v6 = v5;
  v8 = v7;
  v123 = *MEMORY[0x1E69E9840];
  v111 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v111);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  if (!v11 || !*(v8 + 16))
  {
LABEL_64:
    OUTLINED_FUNCTION_17_40();
    return;
  }

  v113 = 0;
  v12 = *v1;
  LODWORD(v112) = v1[1];
  v13 = v6 + 32;
  v107 = v1[2];
  v106 = v1[16];
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1C6FB5E28(v13, &v120);
    if (v12)
    {
      sub_1C6FB5E28(&v120, &v116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_1C71FCFD4(v10, type metadata accessor for GlobalTrait);
    }

    if (v112)
    {
      v15 = v122;
      __swift_project_boxed_opaque_existential_1(&v120, v121);
      v16 = OUTLINED_FUNCTION_99_1();
      v116 = v17(v16, v15);
      v117 = v18;
      MEMORY[0x1EEE9AC00](v116);
      OUTLINED_FUNCTION_8_44();
      v19 = v113;
      LOBYTE(v15) = sub_1C70735F4();
      v113 = v19;

      if ((v15 & 1) == 0)
      {
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1(&v120);
        goto LABEL_15;
      }
    }

    sub_1C6FD80E4(&v120, &v116);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C716E46C(0, *(v14 + 16) + 1, 1);
      v14 = v115;
    }

    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      v30 = OUTLINED_FUNCTION_15(v21);
      sub_1C716E46C(v30, v22 + 1, 1);
    }

    v23 = v118;
    v24 = v119;
    v25 = __swift_mutable_project_boxed_opaque_existential_0(&v116, v118);
    v26 = MEMORY[0x1EEE9AC00](v25);
    v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28, v26);
    sub_1C71FCD88(v22, v28, &v115, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(&v116);
    v14 = v115;
LABEL_15:
    v13 += 40;
    --v11;
  }

  while (v11);
  v31 = *(v14 + 16);
  v111 = v8;
  if (!v31)
  {

    v112 = MEMORY[0x1E69E7CC0];
LABEL_39:
    if (qword_1EC213EB8 != -1)
    {
LABEL_65:
      OUTLINED_FUNCTION_1_78();
    }

    v71 = sub_1C754FF1C();
    v72 = __swift_project_value_buffer(v71, qword_1EC2190A8);
    v73 = v112;
    sub_1C75504FC();
    v74 = sub_1C754FEEC();
    v75 = sub_1C75511BC();

    v110 = v74;
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = v77;
      v116 = v77;
      *v76 = 136642819;
      v79 = *(v73 + 16);
      v80 = MEMORY[0x1E69E7CC0];
      if (v79)
      {
        v104 = v77;
        v105 = v76;
        LODWORD(v108) = v75;
        v109 = v72;
        v115 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v80 = v115;
        v81 = (v73 + 64);
        do
        {
          v82 = *(v81 - 4);
          v83 = *(v81 - 3);
          v84 = *(v81 - 16);
          v85 = *v81;
          *&v120 = 0;
          *(&v120 + 1) = 0xE000000000000000;
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0x203A656C746974, 0xE700000000000000);
          MEMORY[0x1CCA5CD70](v82, v83);
          MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75A46A0);
          if (v84)
          {
            v86 = 1702195828;
          }

          else
          {
            v86 = 0x65736C6166;
          }

          if (v84)
          {
            v87 = 0xE400000000000000;
          }

          else
          {
            v87 = 0xE500000000000000;
          }

          MEMORY[0x1CCA5CD70](v86, v87);

          MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A46C0);
          v114 = v85;
          v88 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v88);

          v89 = v120;
          v115 = v80;
          v91 = *(v80 + 16);
          v90 = *(v80 + 24);
          if (v91 >= v90 >> 1)
          {
            OUTLINED_FUNCTION_15(v90);
            sub_1C6F7ED9C();
            v80 = v115;
          }

          v81 += 5;
          *(v80 + 16) = v91 + 1;
          *(v80 + 16 * v91 + 32) = v89;
          --v79;
        }

        while (v79);
        LOBYTE(v75) = v108;
        v76 = v105;
        v78 = v104;
      }

      v92 = MEMORY[0x1CCA5D090](v80, MEMORY[0x1E69E6158]);
      v94 = v93;

      v95 = sub_1C6F765A4(v92, v94, &v116);

      *(v76 + 4) = v95;
      v96 = v110;
      _os_log_impl(&dword_1C6F5C000, v110, v75, "Matching trait infos: %{sensitive}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v67 = v113;
    *&v120 = v112;
    sub_1C75504FC();
    sub_1C71FABCC(&v120);
    if (v67)
    {
      goto LABEL_68;
    }

    if (v107)
    {
      static TraitSelectionStrategy.traitsAboveThreshold(matchingTraitInfos:numberOfCuratedAssets:threshold:)();
    }

    else
    {
      static TraitSelectionStrategy.traitsSummingThreshold(matchingTraitInfos:numberOfCuratedAssets:threshold:)();
    }

    v98 = v97;
    v99 = v106;

    if (v99 && *(v98 + 16) <= 1uLL)
    {

      v100 = sub_1C754FEEC();
      v101 = sub_1C75511BC();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_1C6F5C000, v100, v101, "Fewer than 2 traits, opting to return 0.", v102, 2u);
        OUTLINED_FUNCTION_109();
      }
    }

    goto LABEL_64;
  }

  v32 = v14 + 32;
  v112 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C6FB5E28(v32, &v120);
    v33 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, v121);
    v34 = OUTLINED_FUNCTION_99_1();
    v36 = v35(v34, v33);
    v116 = v36;
    v37 = *(v8 + 32) & 0x3F;
    MEMORY[0x1EEE9AC00](v36);
    *(&v104 - 2) = &v116;
    *(&v104 - 1) = v8;
    v39 = (v38 + 63) >> 6;
    v40 = 8 * v39;
    isStackAllocationSafe = sub_1C75504FC();
    if (v37 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v65 = swift_slowAlloc();
    v66 = v39;
    v67 = v113;
    v68 = sub_1C71FB780(v65, v66, sub_1C702AC5C);
    v113 = v67;
    if (v67)
    {
      goto LABEL_67;
    }

    v45 = v68;

    OUTLINED_FUNCTION_109();

LABEL_21:
    v46 = v45[2];
    if (v46)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v47 = swift_allocObject();
      v48 = _swift_stdlib_malloc_size(v47);
      v47[2] = v46;
      v47[3] = 2 * ((v48 - 32) / 16);
      sub_1C70D065C();
      v50 = v49;
      v51 = sub_1C6F61E88();
      if (v50 != v46)
      {
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
    }

    v52 = v47[2];
    if (v52)
    {
      v116 = v109;
      v117 = v110;
      MEMORY[0x1EEE9AC00](v51);
      OUTLINED_FUNCTION_8_44();
      v53 = v113;
      v54 = sub_1C70735F4();
      v113 = v53;
      v55 = v122;
      __swift_project_boxed_opaque_existential_1(&v120, v121);
      v56 = OUTLINED_FUNCTION_99_1();
      v58 = v57(v56, v55);
      v60 = v59;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v61 = v112;
      }

      else
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB331C();
        v61 = v69;
      }

      v63 = *(v61 + 16);
      v62 = *(v61 + 24);
      if (v63 >= v62 >> 1)
      {
        OUTLINED_FUNCTION_15(v62);
        sub_1C6FB331C();
        v61 = v70;
      }

      *(v61 + 16) = v63 + 1;
      v112 = v61;
      v64 = v61 + 40 * v63;
      *(v64 + 32) = v58;
      *(v64 + 40) = v60;
      *(v64 + 48) = v54;
      *(v64 + 56) = v47;
      *(v64 + 64) = v52;
      v8 = v111;
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v120);
    v32 += 40;
    if (!--v31)
    {

      goto LABEL_39;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1C71FAC38(0, v39, &v104 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0));
  v42 = v39;
  v43 = v113;
  sub_1C71FB7FC(&v104 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0), v42, v36, v8);
  v113 = v43;
  if (!v43)
  {
    v45 = v44;

    goto LABEL_21;
  }

  v103 = v113;
  v67 = v113;
  swift_willThrow();

  __break(1u);
LABEL_67:

  OUTLINED_FUNCTION_109();
  __break(1u);
LABEL_68:

  __break(1u);
}

uint64_t sub_1C71FA77C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2190A8);
  __swift_project_value_buffer(v0, qword_1EC2190A8);
  return sub_1C754FEFC();
}

void __swiftcall TraitSelectionStrategy.MatchingTraitInfo.init(title:matchesKeyAsset:matchingAssetUUIDs:)(PhotosIntelligence::TraitSelectionStrategy::MatchingTraitInfo *__return_ptr retstr, Swift::String title, Swift::Bool matchesKeyAsset, Swift::OpaquePointer matchingAssetUUIDs)
{
  retstr->title = title;
  retstr->matchesKeyAsset = matchesKeyAsset;
  v4 = *(matchingAssetUUIDs._rawValue + 2);
  retstr->matchingAssetUUIDs = matchingAssetUUIDs;
  retstr->numberOfMatchingAssets = v4;
}

void static TraitSelectionStrategy.traitsAboveThreshold(matchingTraitInfos:numberOfCuratedAssets:threshold:)()
{
  OUTLINED_FUNCTION_18_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (qword_1EC213EB8 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_1_78();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC2190A8);
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v1;
    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v10, v11, "Using static threshold %f above which any global trait is valid");
    OUTLINED_FUNCTION_109();
  }

  v12 = 0;
  v13 = v3;
  v14 = *(v5 + 16);
  v15 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v16 = (v5 + 40 * v12);
  while (v14 != v12)
  {
    if (v12 >= v14)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

    v18 = v16[8] / v13;
    ++v12;
    v16 += 5;
    if (v18 >= v1)
    {
      v19 = *(v16 - 1);
      v3 = *v16;
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v15 = v23;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_15(v20);
        sub_1C6FB1814();
        v15 = v24;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v3;

      v12 = v17;
      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_17_40();
}

void static TraitSelectionStrategy.traitsSummingThreshold(matchingTraitInfos:numberOfCuratedAssets:threshold:)()
{
  OUTLINED_FUNCTION_18_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (qword_1EC213EB8 != -1)
  {
    OUTLINED_FUNCTION_1_78();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC2190A8);
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v1;
    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v10, v11, "Using threshold %f for which n top traits match the coverage");
    OUTLINED_FUNCTION_109();
  }

  v12 = v3;
  v13 = (v5 + 56);
  v14 = *(v5 + 16) + 1;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CD0];
  while (--v14)
  {
    v18 = *(v13 - 3);
    v17 = *(v13 - 2);
    v19 = *v13;
    sub_1C75504FC();
    swift_bridgeObjectRetain_n();
    sub_1C70739AC(v19, v16);
    OUTLINED_FUNCTION_99_1();
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v15 = v23;
    }

    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    if (v21 >= v20 >> 1)
    {
      OUTLINED_FUNCTION_15(v20);
      sub_1C6FB1814();
      v15 = v24;
    }

    v13 += 5;
    *(v15 + 16) = v21 + 1;
    v22 = v15 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v17;

    if (*(v16 + 16) / v12 >= v1)
    {

      goto LABEL_14;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_17_40();
}

uint64_t sub_1C71FABCC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D14();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C71FAC9C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C71FAC38(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C756A560;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C71FAC9C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C71FAEB0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C71FAD90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C71FAD90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 40 * v4;
      result = *v9;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v9 + 32);
      v13 = v8;
      v14 = v7;
      do
      {
        if ((v11 & 1) == *(v14 + 16))
        {
          v15 = *(v14 + 32);
          if (v12 == v15)
          {
            if (result == *v14 && v10 == *(v14 + 8))
            {
              break;
            }

            result = sub_1C7551DBC();
            if ((result & 1) == 0)
            {
              break;
            }
          }

          else if (v15 >= v12)
          {
            break;
          }
        }

        else if ((v11 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v14 + 40);
        v10 = *(v14 + 48);
        v17 = *(v14 + 16);
        v18 = *(v14 + 32);
        *(v14 + 40) = *v14;
        v11 = *(v14 + 56);
        v19 = *(v14 + 64);
        v12 = *(v14 + 72);
        *(v14 + 56) = v17;
        *(v14 + 72) = v18;
        *v14 = result;
        *(v14 + 8) = v10;
        *(v14 + 16) = v11;
        *(v14 + 24) = v19;
        *(v14 + 32) = v12;
        v14 -= 40;
      }

      while (!__CFADD__(v13++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C71FAEB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v96 = v6 + 16;
      v97 = *(v6 + 2);
      while (v97 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_152;
        }

        v98 = v6;
        v99 = &v6[16 * v97];
        v100 = *v99;
        v101 = &v96[2 * v97];
        v102 = v101[1];
        sub_1C71FB534((*a3 + 40 * *v99), (*a3 + 40 * *v101), *a3 + 40 * v102, v106);
        if (v108)
        {
          break;
        }

        if (v102 < v100)
        {
          goto LABEL_140;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_141;
        }

        *v99 = v100;
        *(v99 + 1) = v102;
        v103 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_142;
        }

        v108 = 0;
        v97 = *v96 - 1;
        memmove(v101, v101 + 2, 16 * v103);
        *v96 = v97;
        v6 = v98;
      }

LABEL_124:

      return;
    }

LABEL_149:
    v6 = sub_1C7420830();
    goto LABEL_116;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_35;
    }

    v8 = *a3;
    v9 = *a3 + 40 * v5;
    v10 = *(v9 + 16);
    v11 = *a3 + 40 * v7;
    if (v10 == *(v11 + 16))
    {
      v12 = *(v9 + 32);
      v13 = *(v11 + 32);
      if (v12 == v13)
      {
        if (*v9 == *v11 && *(v9 + 8) == *(v11 + 8))
        {
          v10 = 0;
        }

        else
        {
          v10 = sub_1C7551DBC();
        }
      }

      else
      {
        v10 = v13 < v12;
      }
    }

    v5 = v7 + 2;
    v15 = (v8 + 40 * v7 + 56);
    while (v5 < v4)
    {
      v16 = v15[40];
      if (v16 == *v15)
      {
        v17 = *(v15 + 7);
        v18 = *(v15 + 2);
        if (v17 == v18)
        {
          if (*(v15 + 3) == *(v15 - 2) && *(v15 + 4) == *(v15 - 1))
          {
            if (v10)
            {
              goto LABEL_28;
            }

            goto LABEL_24;
          }

          v16 = sub_1C7551DBC();
        }

        else
        {
          v16 = v18 < v17;
        }
      }

      if ((v10 ^ v16))
      {
        break;
      }

LABEL_24:
      ++v5;
      v15 += 40;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (v5 < v7)
    {
      goto LABEL_146;
    }

    if (v7 < v5)
    {
      v20 = 40 * v5 - 16;
      v21 = 40 * v7 + 32;
      v22 = v5;
      v23 = v7;
      do
      {
        if (v23 != --v22)
        {
          v24 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v25 = (v24 + v21);
          v26 = (v24 + v20);
          v27 = *(v25 - 4);
          v28 = *(v25 - 3);
          v29 = *(v25 - 16);
          v30 = *(v25 - 1);
          v31 = *v25;
          v32 = v26[1];
          v33 = *(v26 - 1);
          *(v25 - 2) = *(v26 - 3);
          *(v25 - 1) = v33;
          *v25 = v32;
          *(v26 - 3) = v27;
          *(v26 - 2) = v28;
          *(v26 - 8) = v29;
          *v26 = v30;
          v26[1] = v31;
        }

        ++v23;
        v20 -= 40;
        v21 += 40;
      }

      while (v23 < v22);
    }

LABEL_35:
    v34 = a3[1];
    if (v5 >= v34)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v5, v7))
    {
      goto LABEL_145;
    }

    if (v5 - v7 >= a4)
    {
LABEL_62:
      if (v5 < v7)
      {
        goto LABEL_144;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v6 = v94;
      }

      v52 = *(v6 + 2);
      v53 = v52 + 1;
      if (v52 >= *(v6 + 3) >> 1)
      {
        sub_1C6FB17EC();
        v6 = v95;
      }

      *(v6 + 2) = v53;
      v54 = v6 + 32;
      v55 = &v6[16 * v52 + 32];
      *v55 = v7;
      *(v55 + 1) = v5;
      v106 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (!v52)
      {
LABEL_111:
        v4 = a3[1];
        if (v5 >= v4)
        {
          goto LABEL_114;
        }

        continue;
      }

      while (1)
      {
        v56 = v53 - 1;
        v57 = &v54[16 * v53 - 16];
        v58 = &v6[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v6 + 4);
          v60 = *(v6 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_82:
          if (v62)
          {
            goto LABEL_131;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_134;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_139;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v53 < 2)
        {
          goto LABEL_133;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_97:
        if (v77)
        {
          goto LABEL_136;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_138;
        }

        if (v84 < v76)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v56 - 1 >= v53)
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

        if (!*a3)
        {
          goto LABEL_151;
        }

        v88 = v6;
        v89 = &v54[16 * v56 - 16];
        v90 = *v89;
        v91 = &v54[16 * v56];
        v92 = *(v91 + 1);
        sub_1C71FB534((*a3 + 40 * *v89), (*a3 + 40 * *v91), *a3 + 40 * v92, v106);
        if (v108)
        {
          goto LABEL_124;
        }

        if (v92 < v90)
        {
          goto LABEL_126;
        }

        v93 = *(v88 + 2);
        if (v56 > v93)
        {
          goto LABEL_127;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        if (v56 >= v93)
        {
          goto LABEL_128;
        }

        v108 = 0;
        v53 = v93 - 1;
        sub_1C7423CF4(v91 + 16, v93 - 1 - v56, &v54[16 * v56]);
        v6 = v88;
        *(v88 + 2) = v93 - 1;
        if (v93 <= 2)
        {
          goto LABEL_111;
        }
      }

      v63 = &v54[16 * v53];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_129;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_130;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_132;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_135;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_143;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_147;
  }

  if (v7 + a4 >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = v7 + a4;
  }

  if (v35 < v7)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v5 == v35)
  {
    goto LABEL_62;
  }

  v36 = *a3;
  v37 = *a3 + 40 * v5 - 40;
  v38 = v7 - v5;
LABEL_45:
  v39 = (v36 + 40 * v5);
  v40 = *v39;
  v41 = v39[1];
  v42 = *(v39 + 16);
  v43 = v39[4];
  v44 = v38;
  v45 = v37;
  while (1)
  {
    if ((v42 & 1) == *(v45 + 16))
    {
      v46 = *(v45 + 32);
      if (v43 == v46)
      {
        v47 = v40 == *v45 && v41 == *(v45 + 8);
        if (v47 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_60:
          ++v5;
          v37 += 40;
          --v38;
          if (v5 == v35)
          {
            v5 = v35;
            goto LABEL_62;
          }

          goto LABEL_45;
        }
      }

      else if (v46 >= v43)
      {
        goto LABEL_60;
      }
    }

    else if ((v42 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v36)
    {
      break;
    }

    v40 = *(v45 + 40);
    v41 = *(v45 + 48);
    v48 = *(v45 + 16);
    v49 = *(v45 + 32);
    *(v45 + 40) = *v45;
    v42 = *(v45 + 56);
    v50 = *(v45 + 64);
    v43 = *(v45 + 72);
    *(v45 + 56) = v48;
    *(v45 + 72) = v49;
    *v45 = v40;
    *(v45 + 8) = v41;
    *(v45 + 16) = v42;
    *(v45 + 24) = v50;
    *(v45 + 32) = v43;
    v45 -= 40;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_60;
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

uint64_t sub_1C71FB534(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1C6F9A570(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v21 = v7;
        goto LABEL_47;
      }

      v12 = v6[16];
      if (v12 == v4[16])
      {
        v13 = *(v6 + 4);
        v14 = *(v4 + 4);
        if (v13 == v14)
        {
          v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
          if (v15 || (sub_1C7551DBC() & 1) == 0)
          {
LABEL_16:
            v16 = v4;
            v15 = v7 == v4;
            v4 += 40;
            if (v15)
            {
              goto LABEL_18;
            }

LABEL_17:
            v17 = *v16;
            v18 = *(v16 + 1);
            *(v7 + 4) = *(v16 + 4);
            *v7 = v17;
            *(v7 + 1) = v18;
            goto LABEL_18;
          }
        }

        else if (v14 >= v13)
        {
          goto LABEL_16;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

      v16 = v6;
      v15 = v7 == v6;
      v6 += 40;
      if (!v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 40;
    }
  }

  sub_1C6F9A570(a2, (a3 - a2) / 40, a4);
  v19 = &v4[40 * v9];
LABEL_24:
  v20 = 0;
  v21 = v6;
  v6 -= 40;
  while (1)
  {
    v10 = &v19[v20];
    if (&v19[v20] <= v4 || v21 <= v7)
    {
      break;
    }

    v23 = *(v10 - 24);
    if (v23 == *(v21 - 24))
    {
      v24 = *(v10 - 1);
      v25 = *(v21 - 1);
      if (v24 == v25)
      {
        v26 = *(v10 - 5) == *(v21 - 5) && *(v10 - 4) == *(v21 - 4);
        if (!v26 && (sub_1C7551DBC() & 1) != 0)
        {
LABEL_44:
          v30 = (v5 + v20);
          v5 = v5 + v20 - 40;
          v19 += v20;
          if (v30 != v21)
          {
            v31 = *v6;
            v32 = *(v6 + 1);
            *(v5 + 32) = *(v6 + 4);
            *v5 = v31;
            *(v5 + 16) = v32;
          }

          goto LABEL_24;
        }
      }

      else if (v25 < v24)
      {
        goto LABEL_44;
      }
    }

    else if (v23)
    {
      goto LABEL_44;
    }

    if (v10 != (v5 + v20))
    {
      v27 = v5 + v20 - 40;
      v28 = *(v10 - 40);
      v29 = *(v10 - 24);
      *(v27 + 32) = *(v10 - 1);
      *v27 = v28;
      *(v27 + 16) = v29;
    }

    v20 -= 40;
  }

LABEL_47:
  v33 = (v10 - v4) / 40;
  if (v21 != v4 || v21 >= &v4[40 * v33])
  {
    memmove(v21, v4, 40 * v33);
  }

  return 1;
}

void *sub_1C71FB780(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
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

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void sub_1C71FB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_2_70();
    v13 = ~v12;
    do
    {
      v14 = v11 & v13;
      v15 = (v11 & v13) >> 6;
      v16 = 1 << (v11 & v13);
      if ((v16 & *(v7 + 8 * v15)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v17 = (*(a4 + 48) + 16 * v14);
      if (*v17 == v10 && v17[1] == v9)
      {
        break;
      }

      v19 = sub_1C7551DBC();
      v11 = v14 + 1;
    }

    while ((v19 & 1) == 0);

    v20 = *(a1 + 8 * v15);
    *(a1 + 8 * v15) = v20 | v16;
    v6 = v25;
    if ((v20 & v16) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      sub_1C71FFA70();
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1C71FB980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *(a3 + 16);
  if (!v33)
  {
LABEL_78:

    sub_1C71FFF30();
    return;
  }

  v31 = 0;
  v5 = 0;
  v32 = a3 + 32;
  v35 = a4 + 56;
  while (1)
  {
    v6 = *(v32 + v5);
    sub_1C7551F3C();
    StoryMusicTermTag.rawValue.getter();
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_2_70();
    v9 = v8 & ~v7;
    if (((1 << v9) & *(v35 + 8 * (v9 >> 6))) != 0)
    {
      break;
    }

LABEL_77:
    if (++v5 == v33)
    {
      goto LABEL_78;
    }
  }

  v34 = v5;
  v10 = ~v7;
  while (1)
  {
    v11 = 0xE300000000000000;
    v12 = 7105633;
    switch(*(*(a4 + 48) + v9))
    {
      case 1:
        v12 = 0x4B6F72747365616DLL;
        v11 = 0xEE0064726F777965;
        break;
      case 2:
        v12 = 0xD000000000000010;
        v11 = 0x80000001C7596010;
        break;
      case 3:
        OUTLINED_FUNCTION_1_4();
        v12 = v17 + 7;
        v11 = 0x80000001C7596030;
        break;
      case 4:
        OUTLINED_FUNCTION_1_4();
        v12 = v14 + 3;
        v11 = 0x80000001C7596050;
        break;
      case 5:
        v11 = 0xE800000000000000;
        v12 = 0x7974697669746361;
        break;
      case 6:
        v11 = 0xE600000000000000;
        v12 = 0x656C706F6570;
        break;
      case 7:
        v11 = 0xE400000000000000;
        v12 = 1701669236;
        break;
      case 8:
        v11 = 0xE500000000000000;
        v12 = 0x6563616C70;
        break;
      case 9:
        v12 = 0x74617262656C6563;
        v16 = 7237481;
        goto LABEL_34;
      case 0xA:
        v11 = 0xE700000000000000;
        v15 = 0x6164696C6F68;
        goto LABEL_28;
      case 0xB:
        v11 = 0xE400000000000000;
        v12 = 1885958772;
        break;
      case 0xC:
        v11 = 0xE700000000000000;
        v15 = 0x72746E756F63;
LABEL_28:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 0xD:
        v11 = 0xE700000000000000;
        v12 = 0x41535579746963;
        break;
      case 0xE:
        OUTLINED_FUNCTION_1_4();
        v12 = v13 + 1;
        v11 = 0x80000001C75960A0;
        break;
      case 0xF:
        v11 = 0xE600000000000000;
        v12 = 0x6C6175736976;
        break;
      case 0x10:
        v11 = 0xE800000000000000;
        v12 = 0x656E6F54646F6F6DLL;
        break;
      case 0x11:
        v11 = 0xE800000000000000;
        v12 = 0x6E6F697461727563;
        break;
      case 0x12:
        v12 = 7628144;
        break;
      case 0x13:
        v11 = 0xE500000000000000;
        v12 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 0x14:
        v11 = 0xE600000000000000;
        v12 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
        break;
      case 0x15:
        v11 = 0xE600000000000000;
        v12 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
        break;
      case 0x16:
        v11 = 0xE700000000000000;
        v12 = OUTLINED_FUNCTION_8_13() | 0x65726500000000;
        break;
      case 0x17:
        v12 = 0x697254726F467369;
        v11 = 0xE900000000000070;
        break;
      case 0x18:
        v12 = 0x726F5769746C756DLL;
        v11 = 0xEF65736172685064;
        break;
      case 0x19:
        v11 = 0xE700000000000000;
        v12 = 0x646574736F6F62;
        break;
      case 0x1A:
        v12 = 0x54646574736F6F62;
        v16 = 7367026;
LABEL_34:
        v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0x1B:
        v12 = 0x6146656C706F6570;
        v11 = 0xEC000000796C696DLL;
        break;
      default:
        break;
    }

    v18 = 0xE300000000000000;
    v19 = 7105633;
    switch(v6)
    {
      case 1:
        v19 = 0x4B6F72747365616DLL;
        v18 = 0xEE0064726F777965;
        break;
      case 2:
        v19 = 0xD000000000000010;
        v18 = 0x80000001C7596010;
        break;
      case 3:
        OUTLINED_FUNCTION_1_4();
        v19 = v24 + 7;
        v18 = 0x80000001C7596030;
        break;
      case 4:
        OUTLINED_FUNCTION_1_4();
        v19 = v21 + 3;
        v18 = 0x80000001C7596050;
        break;
      case 5:
        v18 = 0xE800000000000000;
        v19 = 0x7974697669746361;
        break;
      case 6:
        v18 = 0xE600000000000000;
        v19 = 0x656C706F6570;
        break;
      case 7:
        v18 = 0xE400000000000000;
        v19 = 1701669236;
        break;
      case 8:
        v18 = 0xE500000000000000;
        v19 = 0x6563616C70;
        break;
      case 9:
        v19 = 0x74617262656C6563;
        v23 = 7237481;
        goto LABEL_64;
      case 10:
        v18 = 0xE700000000000000;
        v22 = 0x6164696C6F68;
        goto LABEL_58;
      case 11:
        v18 = 0xE400000000000000;
        v19 = 1885958772;
        break;
      case 12:
        v18 = 0xE700000000000000;
        v22 = 0x72746E756F63;
LABEL_58:
        v19 = v22 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 13:
        v18 = 0xE700000000000000;
        v19 = 0x41535579746963;
        break;
      case 14:
        OUTLINED_FUNCTION_1_4();
        v19 = v20 + 1;
        v18 = 0x80000001C75960A0;
        break;
      case 15:
        v18 = 0xE600000000000000;
        v19 = 0x6C6175736976;
        break;
      case 16:
        v18 = 0xE800000000000000;
        v19 = 0x656E6F54646F6F6DLL;
        break;
      case 17:
        v18 = 0xE800000000000000;
        v19 = 0x6E6F697461727563;
        break;
      case 18:
        v19 = 7628144;
        break;
      case 19:
        v18 = 0xE500000000000000;
        OUTLINED_FUNCTION_10_16();
        v19 = v28 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 20:
        v18 = 0xE600000000000000;
        OUTLINED_FUNCTION_10_16();
        v19 = v25 & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
        break;
      case 21:
        v18 = 0xE600000000000000;
        OUTLINED_FUNCTION_10_16();
        v19 = v26 & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
        break;
      case 22:
        v18 = 0xE700000000000000;
        OUTLINED_FUNCTION_10_16();
        v19 = v27 | 0x65726500000000;
        break;
      case 23:
        v19 = 0x697254726F467369;
        v18 = 0xE900000000000070;
        break;
      case 24:
        v19 = 0x726F5769746C756DLL;
        v18 = 0xEF65736172685064;
        break;
      case 25:
        v18 = 0xE700000000000000;
        v19 = 0x646574736F6F62;
        break;
      case 26:
        v19 = 0x54646574736F6F62;
        v23 = 7367026;
LABEL_64:
        v18 = v23 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 27:
        v19 = 0x6146656C706F6570;
        v18 = 0xEC000000796C696DLL;
        break;
      default:
        break;
    }

    v29 = v12 == v19 && v11 == v18;
    if (v29)
    {
      break;
    }

    v30 = sub_1C7551DBC();

    if (v30)
    {
      goto LABEL_73;
    }

    v9 = (v9 + 1) & v10;
    if ((*(v35 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_74;
    }
  }

LABEL_73:
  OUTLINED_FUNCTION_12_42();
  if (!v29)
  {
LABEL_74:
    v5 = v34;
    goto LABEL_77;
  }

  v5 = v34;
  if (!__OFADD__(v31, 1))
  {
    ++v31;
    goto LABEL_77;
  }

  __break(1u);
}

void sub_1C71FC07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v24 = a1;
  v6 = sub_1C754F0FC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v33 = &v22 - v12;
  v26 = *(a3 + 16);
  if (v26)
  {
    v23 = 0;
    v13 = 0;
    v30 = *(v10 + 16);
    v31 = v10 + 16;
    v25 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v14 = *(v10 + 72);
    v28 = a4 + 56;
    v29 = v14;
    v15 = (v10 + 8);
    v32 = a4;
    while (2)
    {
      v27 = v13 + 1;
      v30(v33, v25 + v29 * v13, v6, v11);
      sub_1C71FD034(&qword_1EC2167B8);
      v16 = sub_1C755058C();
      v17 = ~(-1 << *(a4 + 32));
      do
      {
        v18 = v16 & v17;
        if (((1 << (v16 & v17)) & *(v28 + 8 * ((v16 & v17) >> 6))) == 0)
        {
          (*v15)(v33, v6);
LABEL_11:
          a4 = v32;
          goto LABEL_12;
        }

        (v30)(v8, *(v32 + 48) + v18 * v29, v6);
        sub_1C71FD034(&qword_1EC217798);
        v19 = sub_1C755063C();
        v20 = *v15;
        (*v15)(v8, v6);
        v16 = v18 + 1;
      }

      while ((v19 & 1) == 0);
      v20(v33, v6);
      OUTLINED_FUNCTION_12_42();
      if (!v21)
      {
        goto LABEL_11;
      }

      a4 = v32;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return;
      }

      ++v23;
LABEL_12:
      v13 = v27;
      if (v27 != v26)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 0;
  }

  sub_1C72001EC();
}

void sub_1C71FC358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *(a3 + 16);
  if (!v39)
  {
LABEL_68:

    sub_1C72003E4();
    return;
  }

  v36 = 0;
  v5 = 0;
  v41 = a4 + 56;
  v38 = a3 + 32;
  while (1)
  {
    v6 = *(v38 + v5++);
    sub_1C7551F3C();
    switch(v6)
    {
      case 4:
      case 19:
        OUTLINED_FUNCTION_188();
        break;
      case 5:
      case 14:
        OUTLINED_FUNCTION_437();
        break;
      case 8:
        OUTLINED_FUNCTION_274();
        break;
      case 13:
        OUTLINED_FUNCTION_207();
        break;
      default:
        break;
    }

    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_2_70();
    v9 = v8 & ~v7;
    v10 = v9 >> 6;
    v11 = 1 << v9;
    if (((1 << v9) & *(v41 + 8 * (v9 >> 6))) == 0)
    {
      goto LABEL_67;
    }

    v40 = v5;
    v12 = ~v7;
    while (1)
    {
      v13 = 0xE400000000000000;
      v14 = 1701736302;
      switch(*(*(a4 + 48) + v9))
      {
        case 1:
          v13 = 0xE600000000000000;
          v15 = 1936876912;
          goto LABEL_28;
        case 2:
          v14 = 0x67416E6F73726570;
          v18 = 0x6570795465;
          goto LABEL_19;
        case 3:
          v14 = 1702125924;
          break;
        case 4:
          OUTLINED_FUNCTION_188();
          v13 = v19 + 20;
          v14 = 0x6144664F74726170;
          break;
        case 5:
          OUTLINED_FUNCTION_437();
          v13 = v20 + 1529;
          v14 = 0x6557664F74726170;
          break;
        case 6:
          v13 = 0xE600000000000000;
          v15 = 1935762803;
LABEL_28:
          v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v13 = 0xE800000000000000;
          v16 = 1633906540;
          goto LABEL_23;
        case 8:
          OUTLINED_FUNCTION_274();
          break;
        case 9:
          v14 = 1952540791;
          break;
        case 0xA:
          v14 = 0x764563696C627570;
          v13 = 0xEB00000000746E65;
          break;
        case 0xB:
          v14 = 0x6C616E6F73726570;
          v18 = 0x746E657645;
LABEL_19:
          v13 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0xC:
          v14 = 0x746954636973756DLL;
          v13 = 0xEA0000000000656CLL;
          break;
        case 0xD:
          OUTLINED_FUNCTION_207();
          v13 = v21 + 1284;
          v14 = 0x747241636973756DLL;
          break;
        case 0xE:
          OUTLINED_FUNCTION_437();
          v13 = v17 + 6;
          v14 = 0x6E6547636973756DLL;
          break;
        case 0xF:
          v14 = 1685024621;
          break;
        case 0x10:
          v13 = 0xE800000000000000;
          v16 = 1634891108;
LABEL_23:
          v14 = v16 | 0x6E6F697400000000;
          break;
        case 0x11:
          v13 = 0xE600000000000000;
          v14 = 0x706972547369;
          break;
        case 0x12:
          v14 = 0x6D69546C6C417369;
          v13 = 0xE900000000000065;
          break;
        case 0x13:
          OUTLINED_FUNCTION_188();
          v13 = v22 + 13;
          v14 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v23 = 0xE400000000000000;
      v24 = 1701736302;
      switch(v6)
      {
        case 1:
          v23 = 0xE600000000000000;
          v25 = 1936876912;
          goto LABEL_51;
        case 2:
          v24 = 0x67416E6F73726570;
          v28 = 0x6570795465;
          goto LABEL_42;
        case 3:
          v24 = 1702125924;
          break;
        case 4:
          OUTLINED_FUNCTION_188();
          v23 = v29 + 20;
          v24 = 0x6144664F74726170;
          break;
        case 5:
          OUTLINED_FUNCTION_437();
          v23 = v30 + 1529;
          v24 = 0x6557664F74726170;
          break;
        case 6:
          v23 = 0xE600000000000000;
          v25 = 1935762803;
LABEL_51:
          v24 = v25 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v23 = 0xE800000000000000;
          v26 = 1633906540;
          goto LABEL_46;
        case 8:
          v24 = 0x4C636972656E6567;
          v23 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v24 = 1952540791;
          break;
        case 10:
          v24 = 0x764563696C627570;
          v23 = 0xEB00000000746E65;
          break;
        case 11:
          v24 = 0x6C616E6F73726570;
          v28 = 0x746E657645;
LABEL_42:
          v23 = v28 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v24 = 0x746954636973756DLL;
          v23 = 0xEA0000000000656CLL;
          break;
        case 13:
          OUTLINED_FUNCTION_207();
          v23 = v31 + 1284;
          v24 = 0x747241636973756DLL;
          break;
        case 14:
          OUTLINED_FUNCTION_437();
          v23 = v27 + 6;
          v24 = 0x6E6547636973756DLL;
          break;
        case 15:
          v24 = 1685024621;
          break;
        case 16:
          v23 = 0xE800000000000000;
          v26 = 1634891108;
LABEL_46:
          v24 = v26 | 0x6E6F697400000000;
          break;
        case 17:
          v23 = 0xE600000000000000;
          v24 = 0x706972547369;
          break;
        case 18:
          v24 = 0x6D69546C6C417369;
          v23 = 0xE900000000000065;
          break;
        case 19:
          OUTLINED_FUNCTION_188();
          v23 = v32 + 13;
          v24 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      if (v14 == v24 && v13 == v23)
      {
        break;
      }

      v34 = sub_1C7551DBC();

      if (v34)
      {
        goto LABEL_64;
      }

      v9 = (v9 + 1) & v12;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        v5 = v40;
        goto LABEL_67;
      }
    }

LABEL_64:
    v35 = *(a1 + 8 * v10);
    *(a1 + 8 * v10) = v35 | v11;
    v5 = v40;
    if ((v35 & v11) != 0)
    {
      goto LABEL_67;
    }

    if (__OFADD__(v36, 1))
    {
      break;
    }

    ++v36;
LABEL_67:
    if (v5 == v39)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
}

void sub_1C71FCADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = type metadata accessor for Hastings.Asset(0) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v29 - v11);
  v34 = *(a3 + 16);
  if (v34)
  {
    v30 = 0;
    v13 = 0;
    v36 = a4 + 56;
    v32 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v33 = (&v29 - v11);
    v37 = *(v10 + 72);
    while (2)
    {
      v35 = v13 + 1;
      sub_1C71FCF70(v32 + v37 * v13, v12);
      sub_1C7551F3C();
      v15 = *v12;
      v14 = v12[1];
      sub_1C75505AC();
      sub_1C7551FAC();
      v16 = a4;
      OUTLINED_FUNCTION_2_70();
      v19 = ~v18;
      while (1)
      {
        v20 = v17 & v19;
        v21 = (v17 & v19) >> 6;
        v22 = 1 << (v17 & v19);
        if ((v22 & *(v36 + 8 * v21)) == 0)
        {
          v12 = v33;
          sub_1C71FCFD4(v33, type metadata accessor for Hastings.Asset);
          goto LABEL_16;
        }

        sub_1C71FCF70(*(v16 + 48) + v20 * v37, v8);
        if (*v8 == v15 && v8[1] == v14)
        {
          break;
        }

        v24 = sub_1C7551DBC();
        OUTLINED_FUNCTION_0_102();
        sub_1C71FCFD4(v8, v25);
        v17 = v20 + 1;
        if (v24)
        {
          goto LABEL_13;
        }
      }

      OUTLINED_FUNCTION_0_102();
      sub_1C71FCFD4(v8, v26);
LABEL_13:
      OUTLINED_FUNCTION_0_102();
      v12 = v33;
      sub_1C71FCFD4(v33, v27);
      v28 = *(v31 + 8 * v21);
      *(v31 + 8 * v21) = v28 | v22;
      if ((v28 & v22) == 0)
      {
        if (__OFADD__(v30, 1))
        {
          __break(1u);
          return;
        }

        ++v30;
      }

LABEL_16:
      a4 = v16;
      v13 = v35;
      if (v35 != v34)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 0;
  }

  sub_1C7200EE4();
}

void sub_1C71FCD58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1C71FB7FC(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1C71FCD88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C6FD80E4(&v12, v10 + 40 * a1 + 32);
}

_BYTE *storeEnumTagSinglePayload for TraitSelectionStrategy(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TraitSelectionStrategy.TraitMatchingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
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

uint64_t storeEnumTagSinglePayload for TraitSelectionStrategy.TraitMatchingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C71FCF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Asset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71FCFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C71FD034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C754F0FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}