uint64_t sub_1C7264758(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for QueryGenerator() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v56 = v4;
  v57 = v5;
  v58 = v6;
  v7 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v56);
  v8 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v7);

  v9 = sub_1C7265B2C();
  if (*(v8 + 16))
  {
    v55 = v8;
    v49 = 0;
    v10 = 0;
    v11 = v9 + 64;
    v12 = 1 << *(v9 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v9 + 64);
    v15 = (v12 + 63) >> 6;
    v50 = MEMORY[0x1E69E7CC8];
    v52 = v15;
    for (i = v9; ; v9 = i)
    {
      v16 = v10;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_7:
      v10 = v16;
LABEL_11:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = v17 | (v10 << 6);
      v19 = (*(v9 + 48) + 16 * v18);
      v20 = v19[1];
      v51 = *v19;
      v21 = *(*(v9 + 56) + 8 * v18);
      v56 = MEMORY[0x1E69E7CD0];
      v22 = 1 << *(v21 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v21 + 56);
      v25 = (v22 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v54 = v20;
      sub_1C75504FC();
      v26 = 0;
      if (v24)
      {
        while (1)
        {
          v27 = v26;
LABEL_20:
          v28 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v29 = (*(v21 + 48) + ((v27 << 10) | (16 * v28)));
          v30 = *v29;
          v31 = v29[1];
          sub_1C75504FC();
          v32 = sub_1C6FE3768(v30, v31, v55);
          if (!v32)
          {
            v32 = MEMORY[0x1E69E7CC0];
          }

          sub_1C73978C4(v32);

          if (!v24)
          {
            goto LABEL_16;
          }
        }
      }

      while (1)
      {
LABEL_16:
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v27 >= v25)
        {
          break;
        }

        v24 = *(v21 + 56 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_20;
        }
      }

      v33 = v56;
      if (!v56[2])
      {
        break;
      }

      sub_1C6F6E5B4(v49);
      swift_isUniquelyReferenced_nonNull_native();
      v56 = v50;
      v34 = sub_1C6F78124(v51, v54);
      if (__OFADD__(v50[2], (v35 & 1) == 0))
      {
        goto LABEL_43;
      }

      v36 = v34;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
      v38 = sub_1C7551A2C();
      v39 = v56;
      if (v38)
      {
        v40 = v37;
        v41 = v56;
        v42 = sub_1C6F78124(v51, v54);
        if ((v40 & 1) != (v43 & 1))
        {
          goto LABEL_44;
        }

        v36 = v42;
        v39 = v41;
        v37 = v40;
      }

      if (v37)
      {
        v44 = v39;
      }

      else
      {
        v44 = v39;
        sub_1C6FCABE4(v36);
      }

      v50 = v44;
      sub_1C739796C(v33);
      v49 = sub_1C719D928;
      v15 = v52;
    }

    v16 = v10;
    v15 = v52;
    v9 = i;
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        sub_1C6F6E5B4(v49);
        return v50;
      }

      v14 = *(v11 + 8 * v10);
      ++v16;
      if (v14)
      {
        goto LABEL_11;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {

    v46 = sub_1C754FEEC();
    v47 = sub_1C755119C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C6F5C000, v46, v47, "No assets for the given moments", v48, 2u);
      MEMORY[0x1CCA5F8E0](v48, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);

    return sub_1C75504DC();
  }

  return result;
}

void static QueryGenerator.sortOrderFirstDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)()
{
  OUTLINED_FUNCTION_33();
  v97 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v96 = OUTLINED_FUNCTION_30_28();
  OUTLINED_FUNCTION_3_0();
  v93 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v92 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v15);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v87 - v17;
  v18 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v95 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v87 - v24;
  if (qword_1EDD0F3C0 != -1)
  {
    OUTLINED_FUNCTION_9_58();
  }

  v25 = sub_1C754FF1C();
  __swift_project_value_buffer(v25, qword_1EDD28DB0);
  v26 = sub_1C754FEEC();
  v27 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v27))
  {
    v28 = OUTLINED_FUNCTION_127();
    *v28 = 0;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "Created sort order for first moment selection context", v28, 2u);
    OUTLINED_FUNCTION_109();
  }

  v29 = v6[2];
  if (v29)
  {
    v91 = v6;
    v30 = v6[4];
    v31 = v6[5];
    sub_1C75504FC();
    v32 = sub_1C6FE3768(v30, v31, v4);
    if (v32)
    {
      v33 = v32;
      if (*(v32 + 16) >= v97)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1C755BAB0;
        *(v51 + 32) = v30;
        *(v51 + 40) = v31;
        *v8 = v33;
        v8[1] = v51;
        goto LABEL_40;
      }

      v97 = v32;
      v89 = v4;
      v34 = static StoryGenerationUtilities.dateFormatter.getter();
      v90 = v8;
      v35 = v34;
      v36 = sub_1C755065C();
      v37 = [v35 dateFromString_];

      v38 = v90;
      if (!v37)
      {
        goto LABEL_13;
      }

      v88 = v30;
      sub_1C754DF2C();

      if (qword_1EC214168 != -1)
      {
        OUTLINED_FUNCTION_17_0();
      }

      v39 = sub_1C754E24C();
      __swift_project_value_buffer(v39, qword_1EC21C0C8);
      v40 = v92;
      v41 = v93;
      (*(v93 + 104))(v92, *MEMORY[0x1E6969A48], v96);
      v42 = v94;
      sub_1C754E1FC();
      (*(v41 + 8))(v40, v96);
      if (__swift_getEnumTagSinglePayload(v42, 1, v18) == 1)
      {
        (*(v95 + 8))(v99, v18);
        sub_1C70D7CB8(v42);
        v30 = v88;
        v38 = v90;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1C755BAB0;
        *(v43 + 32) = v30;
        *(v43 + 40) = v31;
        *v38 = v97;
        v38[1] = v43;
        goto LABEL_40;
      }

      v52 = v95;
      (*(v95 + 32))(v98, v42, v18);
      v53 = sub_1C754FEEC();
      v54 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_7_0(v54))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v55, v56, v57, v58, v59, 2u);
        OUTLINED_FUNCTION_23_3();
      }

      v97 = (v52 + 8);
      v96 = MEMORY[0x1E69E7CC0];
      v60 = v91 + 5;
      v100 = MEMORY[0x1E69E7CD0];
      while (1)
      {
        v61 = *(v60 - 1);
        v62 = *v60;
        v63 = objc_allocWithZone(MEMORY[0x1E696AB78]);
        sub_1C75504FC();
        v64 = [v63 init];
        sub_1C754E31C();
        v65 = sub_1C754E35C();
        v66 = 0;
        if (__swift_getEnumTagSinglePayload(v0, 1, v65) != 1)
        {
          v66 = sub_1C754E32C();
          (*(*(v65 - 8) + 8))(v0, v65);
        }

        [v64 setTimeZone_];

        OUTLINED_FUNCTION_15_50();
        v67 = sub_1C755065C();
        v68 = [v64 dateFromString_];

        if (v68)
        {
          sub_1C754DF2C();

          sub_1C70BBF78();
          if ((OUTLINED_FUNCTION_13_52() & 1) != 0 || (OUTLINED_FUNCTION_13_52() & 1) != 0 || (v69 = v89, !*(v89 + 16)) || (v70 = sub_1C6F78124(v61, v62), (v71 & 1) == 0))
          {
            v79 = OUTLINED_FUNCTION_6_63();
            v80(v79);
          }

          else
          {
            if (*(*(*(v69 + 56) + 8 * v70) + 16))
            {
              v72 = sub_1C75504FC();
              sub_1C739796C(v72);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v96 = v82;
              }

              v74 = *(v96 + 16);
              v73 = *(v96 + 24);
              if (v74 >= v73 >> 1)
              {
                OUTLINED_FUNCTION_15(v73);
                sub_1C6FB1814();
                v96 = v83;
              }

              v75 = OUTLINED_FUNCTION_6_63();
              v76(v75);
              v77 = v96;
              *(v96 + 16) = v74 + 1;
              v78 = v77 + 16 * v74;
              *(v78 + 32) = v61;
              *(v78 + 40) = v62;
              goto LABEL_37;
            }

            v81 = *v97;
            sub_1C75504FC();
            v81(v1, v18);
          }
        }

LABEL_37:
        v60 += 2;
        if (!--v29)
        {
          v84 = *v97;
          (*v97)(v98, v18);
          v84(v99, v18);
          v85 = v90;
          v86 = v96;
          *v90 = v100;
          v85[1] = v86;
          goto LABEL_40;
        }
      }
    }
  }

  v44 = sub_1C754FEEC();
  v45 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v45))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_17();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  *v8 = 0;
  v8[1] = 0;
LABEL_40:
  OUTLINED_FUNCTION_25_0();
}

void static QueryGenerator.sortOrderLastDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)()
{
  OUTLINED_FUNCTION_33();
  v87 = v2;
  v4 = v3;
  v6 = v5;
  v81 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  OUTLINED_FUNCTION_76(v8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v86 = OUTLINED_FUNCTION_30_28();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v80 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v15);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  v18 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v83 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  if (qword_1EDD0F3C0 != -1)
  {
LABEL_42:
    OUTLINED_FUNCTION_9_58();
  }

  v82 = v25;
  v26 = sub_1C754FF1C();
  v79 = __swift_project_value_buffer(v26, qword_1EDD28DB0);
  v27 = v79;
  v28 = sub_1C754FEEC();
  v29 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v29))
  {
    v30 = OUTLINED_FUNCTION_127();
    *v30 = 0;
    _os_log_impl(&dword_1C6F5C000, v28, v27, "Created sort order for last moment selection context", v30, 2u);
    OUTLINED_FUNCTION_109();
  }

  v31 = sub_1C74ED4C4(v6);
  if (!v32)
  {
    goto LABEL_14;
  }

  v33 = v31;
  v34 = v32;
  v35 = sub_1C6FE3768(v31, v32, v4);
  if (!v35)
  {

LABEL_14:
    v44 = v81;
    *v81 = 0;
    v44[1] = 0;
    goto LABEL_15;
  }

  v36 = v35;
  if (*(v35 + 16) >= v87)
  {
    goto LABEL_12;
  }

  v77 = v6;
  v78 = v4;
  v37 = static StoryGenerationUtilities.dateFormatter.getter();
  v38 = sub_1C755065C();
  v39 = [v37 dateFromString_];

  if (!v39)
  {
    goto LABEL_12;
  }

  sub_1C754DF2C();

  if (qword_1EC214168 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  v40 = sub_1C754E24C();
  __swift_project_value_buffer(v40, qword_1EC21C0C8);
  v6 = v80;
  (*(v11 + 104))(v80, *MEMORY[0x1E6969A48], v86);
  v4 = v84;
  sub_1C754E1FC();
  v41 = *(v11 + 8);
  v11 += 8;
  v41(v6, v86);
  if (__swift_getEnumTagSinglePayload(v4, 1, v18) != 1)
  {

    v45 = v83;
    (*(v83 + 32))(v85, v4, v18);
    v25 = sub_1C754FEEC();
    v46 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v46))
    {
      v4 = OUTLINED_FUNCTION_127();
      *v4 = 0;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    LODWORD(v84) = 0;
    v87 = v77[2];
    v52 = v87 - 1;
    v86 = (v77 + 4);
    v80 = MEMORY[0x1E69E7CC0];
    v83 = v45 + 8;
    v88 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      while (1)
      {
        v53 = v52;
        if (v52 <= 0)
        {
          if ((v52 != 0) | v84 & 1)
          {
            v74 = *v83;
            (*v83)(v85, v18);
            v74(v82, v18);
            v75 = v81;
            v76 = v80;
            *v81 = v88;
            v75[1] = v76;
            goto LABEL_15;
          }

          v52 = 0;
          LODWORD(v84) = 1;
        }

        else
        {
          --v52;
        }

        if (v53 >= v87)
        {
          __break(1u);
          goto LABEL_42;
        }

        v54 = v86 + 16 * v53;
        v4 = *v54;
        v25 = *(v54 + 8);
        v55 = objc_allocWithZone(MEMORY[0x1E696AB78]);
        sub_1C75504FC();
        v56 = [v55 init];
        sub_1C754E31C();
        v11 = sub_1C754E35C();
        v57 = 0;
        if (__swift_getEnumTagSinglePayload(v0, 1, v11) != 1)
        {
          v57 = sub_1C754E32C();
          (*(*(v11 - 8) + 8))(v0, v11);
        }

        [v56 setTimeZone_];

        OUTLINED_FUNCTION_15_50();
        v6 = sub_1C755065C();
        v58 = [v56 dateFromString_];

        if (v58)
        {
          break;
        }

LABEL_34:
      }

      sub_1C754DF2C();

      sub_1C70BBF78();
      if ((OUTLINED_FUNCTION_13_52() & 1) != 0 || (OUTLINED_FUNCTION_13_52() & 1) != 0 || (v59 = v78, !*(v78 + 2)) || (v60 = sub_1C6F78124(v4, v25), (v61 & 1) == 0))
      {
        v63 = OUTLINED_FUNCTION_6_63();
        v64(v63);
        goto LABEL_34;
      }

      if (!*(*(*(v59 + 7) + 8 * v60) + 16))
      {
        v4 = v83;
        v62 = *v83;
        sub_1C75504FC();
        v62(v1, v18);

        goto LABEL_34;
      }

      v65 = sub_1C75504FC();
      sub_1C739796C(v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v80 = v72;
      }

      v67 = v80[2];
      v66 = v80[3];
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_15(v66);
        sub_1C6FB1814();
        v80 = v73;
      }

      v68 = OUTLINED_FUNCTION_6_63();
      v69(v68);
      v70 = v80;
      v80[2] = v67 + 1;
      v71 = &v70[2 * v67];
      v71[4] = v4;
      v71[5] = v25;
    }
  }

  (*(v83 + 8))(v82, v18);
  sub_1C70D7CB8(v4);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C755BAB0;
  *(v42 + 32) = v33;
  *(v42 + 40) = v34;
  v43 = v81;
  *v81 = v36;
  v43[1] = v42;
LABEL_15:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7265B2C()
{
  v1 = sub_1C75504FC();
  if (*(sub_1C71CD90C(v1) + 16))
  {
    v2 = v0 + *(type metadata accessor for QueryGenerator() + 24);
    v3 = *(v2 + 8);
    v4 = *v2;

    v5 = v4;
    v6 = [v5 librarySpecificFetchOptions];
    [v6 setSharingFilter_];

    type metadata accessor for DayEventsFetcher();
    LOBYTE(v41) = 0;
    type metadata accessor for CollectionFetcherOptions();
    swift_initStackObject();
    v7 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v5, 0, &v41, 0);
    v8 = static DayEventsFetcher.basePredicate(using:)(v7);

    [v6 setPredicate_];

    v9 = objc_opt_self();
    v10 = sub_1C7550B3C();

    v38 = v6;
    v11 = [v9 fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs:v10 options:v6];

    v12 = sub_1C75504AC();
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    sub_1C75504FC();
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC8];
    v39 = v17;
    if (v16)
    {
LABEL_9:
      while (1)
      {
        v21 = (v18 << 10) | (16 * __clz(__rbit64(v16)));
        v22 = (*(v12 + 48) + v21);
        v23 = v22[1];
        v40 = *v22;
        v24 = (*(v12 + 56) + v21);
        v25 = *v24;
        v26 = v24[1];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v41 = v19;
        v27 = sub_1C6F78124(v25, v26);
        if (__OFADD__(*(v19 + 16), (v28 & 1) == 0))
        {
          break;
        }

        v29 = v27;
        v30 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
        v31 = sub_1C7551A2C();
        v19 = v41;
        if (v31)
        {
          v32 = sub_1C6F78124(v25, v26);
          if ((v30 & 1) != (v33 & 1))
          {
            goto LABEL_26;
          }

          v29 = v32;
        }

        if (v30)
        {
        }

        else
        {
          sub_1C6FCABE4(v29);
        }

        v17 = v39;
        v13 = v12 + 64;
        v16 &= v16 - 1;
        sub_1C70F082C(&v41, v40, v23);

        if (!v16)
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
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v17)
        {

          return v19;
        }

        v16 = *(v13 + 8 * v20);
        ++v18;
        if (v16)
        {
          v18 = v20;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {

    v35 = sub_1C754FEEC();
    v36 = sub_1C755119C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C6F5C000, v35, v36, "No moments that are used to fetch Day Highlights", v37, 2u);
      MEMORY[0x1CCA5F8E0](v37, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);

    return sub_1C75504DC();
  }

  return result;
}

unint64_t sub_1C7265F94()
{
  result = qword_1EC2155D8;
  if (!qword_1EC2155D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC2155D8);
  }

  return result;
}

unint64_t sub_1C7265FEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1C755098C();

    return v4;
  }

  return result;
}

uint64_t sub_1C7266090()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000043, 0x80000001C75A6E70);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CB8 = 0;
  unk_1EC219CC0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C7266128()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000043, 0x80000001C75A6E70);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  result = MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A7570);
  qword_1EC219CC8 = 0;
  unk_1EC219CD0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C72661E4()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003DLL, 0x80000001C75A74A0);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CD8 = 0;
  unk_1EC219CE0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C726627C()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003CLL, 0x80000001C75A7460);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CE8 = 0;
  unk_1EC219CF0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C7266314()
{
  sub_1C755180C();

  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CF8 = 0xD000000000000010;
  unk_1EC219D00 = 0x80000001C75A7410;
  return result;
}

uint64_t sub_1C72663A8()
{
  sub_1C755180C();

  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219D08 = 0xD000000000000012;
  unk_1EC219D10 = 0x80000001C75A73F0;
  return result;
}

uint64_t sub_1C726643C()
{
  sub_1C755180C();

  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219D18 = 0xD000000000000012;
  unk_1EC219D20 = 0x80000001C75A73D0;
  return result;
}

uint64_t sub_1C72664F8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0D7E8);
  __swift_project_value_buffer(v0, qword_1EDD0D7E8);
  return sub_1C754FEFC();
}

uint64_t StoryGenerationEventRecorder.__allocating_init(options:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StoryGenerationEventRecorder.init(options:)(a1);
  return v2;
}

uint64_t StoryGenerationEventRecorder.init(options:)(uint64_t a1)
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v19 = v5;
  v6 = sub_1C754F61C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_10_14();
  v7 = sub_1C754F3FC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_14();
  v12 = v11;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_logger;
  if (qword_1EDD0D7E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_1EDD0D7E8);
  v15 = *(v3 + 16);
  v15(v20 + v13, v14, v1);
  v16 = v9;
  (*(v9 + 16))(v12, a1, v7);
  sub_1C754F60C();
  v15(v19, v14, v1);
  sub_1C754F41C();
  swift_allocObject();
  v17 = sub_1C754F40C();
  (*(v16 + 8))(a1, v7);
  *(v20 + OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_rootEventRecorder) = v17;
  return v20;
}

uint64_t StoryGenerationEventRecorder.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t StoryGenerationEventRecorder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1C7266998()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C754F3AC();
  sub_1C754F54C();
  swift_allocObject();
  sub_1C754F50C();
  sub_1C754F53C();
  sub_1C754F52C();
  mediaBox.origin.x = v1;
  mediaBox.origin.y = v2;
  mediaBox.size.width = v3;
  mediaBox.size.height = v4;
  v5 = sub_1C754DC8C();
  v6 = CGPDFContextCreateWithURL(v5, &mediaBox, 0);

  if (v6)
  {
    CGPDFContextBeginPage(v6, 0);
    MinX = CGRectGetMinX(mediaBox);
    MaxY = CGRectGetMaxY(mediaBox);
    CGContextTranslateCTM(v6, MinX, MaxY);
    CGContextScaleCTM(v6, 1.0, -1.0);
    sub_1C754F4FC();
    CGPDFContextEndPage(v6);
    CGPDFContextClose(v6);
  }

  else
  {
    v6 = sub_1C754FEEC();
    v9 = sub_1C755119C();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v9, "Unable to render performance diagram: nil CGContext", v10, 2u);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
    }
  }
}

uint64_t sub_1C7266BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754F61C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  (*(v5 + 16))(&v25 - v10, a1, v4, v9);
  sub_1C754F60C();
  sub_1C726E15C(&qword_1EC219D70, MEMORY[0x1E69C19A8]);
  v12 = sub_1C755063C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(v11, v4);
    v14 = MEMORY[0x1E69C18E0];
LABEL_7:
    v17 = *v14;
    v18 = sub_1C754F51C();
    v19 = *(*(v18 - 8) + 104);
    v20 = a2;
    v21 = v17;
    return v19(v20, v21, v18);
  }

  sub_1C754F60C();
  v15 = sub_1C755063C();
  v13(v7, v4);
  if (v15)
  {
    v13(v11, v4);
    v14 = MEMORY[0x1E69C1900];
    goto LABEL_7;
  }

  sub_1C754F60C();
  v16 = sub_1C755063C();
  v13(v7, v4);
  if (v16)
  {
    v13(v11, v4);
    v14 = MEMORY[0x1E69C18F0];
    goto LABEL_7;
  }

  sub_1C754F60C();
  v23 = sub_1C755063C();
  v13(v7, v4);
  v13(v11, v4);
  v18 = sub_1C754F51C();
  v19 = *(*(v18 - 8) + 104);
  if (v23)
  {
    v24 = MEMORY[0x1E69C18F8];
  }

  else
  {
    v24 = MEMORY[0x1E69C18E8];
  }

  v21 = *v24;
  v20 = a2;
  return v19(v20, v21, v18);
}

unint64_t sub_1C7266F60(uint64_t a1)
{
  v1 = 0xD000000000000024;
  v2 = a1 + 40;
  v3 = *(a1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 16;
    sub_1C75504FC();
    v5 = sub_1C755092C();

    v2 = v4;
    if (v5)
    {
      return v1;
    }
  }

  return 0xD000000000000025;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryGenerationEventRecorder.oneLiners(llmQULatency:)(Swift::Double_optional llmQULatency)
{
  v3 = v1;
  v4 = *&llmQULatency.is_nil;
  v5 = sub_1C7267160();
  if (!v2)
  {
    v7 = v5;
    v8 = sub_1C75504FC();
    v9 = sub_1C72671DC(v8);

    if ((v3 & 1) == 0)
    {
      if (qword_1EC213F40 != -1)
      {
        OUTLINED_FUNCTION_1_88();
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C755BAB0;
      *(v10 + 32) = v4;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C6FC9178();
    }

    v11 = sub_1C72674EC(v9, v7);
    v13 = v12;

    v5 = v11;
    v6 = v13;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1C7267160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D50);
  result = sub_1C754F39C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C72671DC(uint64_t a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v33 = sub_1C7267160();
    if (v1)
    {
      return v2;
    }

    v3 = v33;
  }

  v4 = v3 + 64;
  OUTLINED_FUNCTION_56_17();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  sub_1C75504FC();
  sub_1C75504FC();
  v10 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v35 = v3;
  v36 = v9;
  v37 = v3 + 64;
  if (v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v11 >= v9)
    {

      return v2;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
  }

  while (!v7);
  v10 = v11;
  while (1)
  {
LABEL_8:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = v13[1];
    v38 = *v13;
    v15 = *(*(v3 + 56) + 8 * v12);
    v16 = *(v15 + 16);
    if (v16)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C716DA70();
      v17 = v39;
      v18 = *(v39 + 16);
      v19 = (v15 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v22 = *(v39 + 24);
        if (v18 >= v22 >> 1)
        {
          OUTLINED_FUNCTION_15(v22);
          sub_1C716DA70();
        }

        *(v39 + 16) = v18 + 1;
        *(v39 + 8 * v18 + 32) = v21 - v20;
        v19 += 2;
        ++v18;
        --v16;
      }

      while (v16);
      v3 = v35;
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      v17 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_1C6F78124(v38, v14);
    if (__OFADD__(v2[2], (v24 & 1) == 0))
    {
      break;
    }

    v25 = v23;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152B8);
    if (sub_1C7551A2C())
    {
      v27 = sub_1C6F78124(v38, v14);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_32;
      }

      v25 = v27;
    }

    if (v26)
    {
      *(v2[7] + 8 * v25) = v17;
    }

    else
    {
      v2[(v25 >> 6) + 8] |= 1 << v25;
      v29 = (v2[6] + 16 * v25);
      *v29 = v38;
      v29[1] = v14;
      *(v2[7] + 8 * v25) = v17;

      v30 = v2[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_31;
      }

      v2[2] = v32;
    }

    v7 &= v7 - 1;
    v9 = v36;
    v4 = v37;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C72674EC(void *a1, uint64_t a2)
{
  [objc_opt_self() enableMediaAnalysisEmbeddingSearch];
  v5 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v5);

  v6 = OUTLINED_FUNCTION_4_66();
  v330 = sub_1C7268E80(v6, v7, v8);

  if (qword_1EC213F40 != -1)
  {
    OUTLINED_FUNCTION_1_88();
    swift_once();
  }

  v9 = OUTLINED_FUNCTION_17_51(&qword_1EC219CC8);
  v336 = sub_1C7268E80(v9, v10, v11);
  OUTLINED_FUNCTION_47_19();
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD00000000000005DLL, 0x80000001C75A75C0);
  v12 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v12);

  v13 = OUTLINED_FUNCTION_4_66();
  v337 = sub_1C7268E80(v13, v14, v15);

  OUTLINED_FUNCTION_47_19();
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD00000000000005DLL, 0x80000001C75A75C0);
  v16 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v16);

  v17 = OUTLINED_FUNCTION_4_66();
  v331 = sub_1C7268E80(v17, v18, v19);

  OUTLINED_FUNCTION_47_19();
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD000000000000052, 0x80000001C75A6FA0);
  v20 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v20);

  v21 = OUTLINED_FUNCTION_4_66();
  v335 = sub_1C7268E80(v21, v22, v23);

  OUTLINED_FUNCTION_47_19();
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  v24 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v24);

  v25 = OUTLINED_FUNCTION_4_66();
  sub_1C7268E80(v25, v26, v27);
  OUTLINED_FUNCTION_54_21();
  OUTLINED_FUNCTION_47_19();
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD000000000000052, 0x80000001C75A6FA0);
  v28 = OUTLINED_FUNCTION_67_14();
  MEMORY[0x1CCA5CD70](v28);

  v29 = OUTLINED_FUNCTION_4_66();
  v32 = sub_1C7268E80(v29, v30, v31);

  v33 = sub_1C75504FC();
  v34 = sub_1C71CD90C(v33);
  sub_1C7266F60(v34);
  OUTLINED_FUNCTION_65_18();
  sub_1C734ACA0();
  OUTLINED_FUNCTION_10_2();
  sub_1C734ACA0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_35_18();
  v35 = OUTLINED_FUNCTION_40_27();
  MEMORY[0x1CCA5CD70](v35);

  v36 = OUTLINED_FUNCTION_4_66();
  v39 = sub_1C6FE3768(v36, v37, v38);

  if (v39)
  {
  }

  v40 = sub_1C734ACA0();
  v42 = v41;
  sub_1C734ACA0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_35_18();
  v43 = OUTLINED_FUNCTION_40_27();
  MEMORY[0x1CCA5CD70](v43);

  v44 = OUTLINED_FUNCTION_4_66();
  v47 = sub_1C7268E80(v44, v45, v46);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A70F0);
  v48 = OUTLINED_FUNCTION_50_21();
  MEMORY[0x1CCA5CD70](v48);

  v49 = OUTLINED_FUNCTION_4_66();
  v52 = sub_1C7268E80(v49, v50, v51);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x646574617275432ELL, 0xEE002E79726F7453);
  v53 = OUTLINED_FUNCTION_67_14();
  MEMORY[0x1CCA5CD70](v53);

  v54 = OUTLINED_FUNCTION_4_66();
  sub_1C7268E80(v54, v55, v56);
  OUTLINED_FUNCTION_63_16();
  sub_1C75504FC();
  OUTLINED_FUNCTION_35_18();
  v57 = OUTLINED_FUNCTION_40_27();
  MEMORY[0x1CCA5CD70](v57);

  v58 = OUTLINED_FUNCTION_4_66();
  v61 = sub_1C7268E80(v58, v59, v60);

  v332 = v40;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A70F0);
  v62 = OUTLINED_FUNCTION_50_21();
  MEMORY[0x1CCA5CD70](v62);

  v63 = OUTLINED_FUNCTION_4_66();
  v66 = sub_1C7268E80(v63, v64, v65);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75A7710);
  v67 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v67);

  v68 = OUTLINED_FUNCTION_4_66();
  v71 = sub_1C7268E80(v68, v69, v70);

  v312 = v47;
  v316 = v61;
  if (v47 > v61)
  {
    v72 = v47;
  }

  else
  {
    v72 = v61;
  }

  if (v2 > v71)
  {
    v73 = v2;
  }

  else
  {
    v73 = v71;
  }

  v333 = v336 + v335 + v72 + v73;
  v314 = v52;
  if (v52 > v66)
  {
    v74 = v52;
  }

  else
  {
    v74 = v66;
  }

  v318 = v74;
  v319 = v66;
  v329 = v3;
  v328 = v32;
  v317 = v337 + v3 + v32;
  OUTLINED_FUNCTION_3_1();
  sub_1C755184C();
  OUTLINED_FUNCTION_53_23();

  v75 = OUTLINED_FUNCTION_4_66();
  v78 = sub_1C7268E80(v75, v76, v77);

  OUTLINED_FUNCTION_3_1();
  v315 = v79;
  sub_1C755184C();
  OUTLINED_FUNCTION_53_23();

  v80 = OUTLINED_FUNCTION_4_66();
  sub_1C7268E80(v80, v81, v82);
  OUTLINED_FUNCTION_63_16();
  sub_1C755184C();
  OUTLINED_FUNCTION_53_23();

  v83 = OUTLINED_FUNCTION_4_66();
  sub_1C7268E80(v83, v84, v85);
  OUTLINED_FUNCTION_54_21();
  OUTLINED_FUNCTION_3_1();
  sub_1C755184C();
  OUTLINED_FUNCTION_53_23();

  v86 = OUTLINED_FUNCTION_4_66();
  v89 = sub_1C7268E80(v86, v87, v88);

  sub_1C755184C();
  OUTLINED_FUNCTION_53_23();

  v90 = OUTLINED_FUNCTION_4_66();
  v93 = sub_1C7268E80(v90, v91, v92);

  MEMORY[0x1CCA5CD70](0x646574617275432ELL, 0xEE002E79726F7453);
  v94 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v94);

  v95 = OUTLINED_FUNCTION_4_66();
  v98 = sub_1C7268E80(v95, v96, v97);

  MEMORY[0x1CCA5CD70](0x646574617275432ELL, 0xEE002E79726F7453);
  v99 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v99);

  v100 = OUTLINED_FUNCTION_4_66();
  v103 = sub_1C7268E80(v100, v101, v102);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_35_18();
  v104 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v104);

  v105 = OUTLINED_FUNCTION_4_66();
  v323 = sub_1C7268E80(v105, v106, v107);

  v320 = v103;
  v313 = v98;
  if (v98 > v103)
  {
    v103 = v98;
  }

  v327 = v3;
  v324 = v78;
  v325 = v93;
  v326 = v89;
  v108 = v78 + v2 + v3 + v89 + v93;
  OUTLINED_FUNCTION_43_23();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD00000000000006ELL, 0x80000001C75A78B0);
  v109 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v109);

  v110 = OUTLINED_FUNCTION_4_66();
  sub_1C7268E80(v110, v111, v112);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_43_23();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD00000000000006ELL, 0x80000001C75A78B0);
  v113 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v113);

  v114 = OUTLINED_FUNCTION_4_66();
  sub_1C7268E80(v114, v115, v116);
  OUTLINED_FUNCTION_54_21();
  OUTLINED_FUNCTION_43_23();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD00000000000006ELL, 0x80000001C75A78B0);
  v117 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v117);

  v118 = OUTLINED_FUNCTION_4_66();
  v121 = sub_1C7268E80(v118, v119, v120);

  v122 = v2 + v3 + v121;
  v123 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v123);

  v124 = sub_1C7268ED4(0xD000000000000020, v315, a1);

  OUTLINED_FUNCTION_43_23();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD00000000000006ELL, 0x80000001C75A7940);
  v125 = OUTLINED_FUNCTION_67_14();
  MEMORY[0x1CCA5CD70](v125);

  v126 = OUTLINED_FUNCTION_4_66();
  v129 = sub_1C7268E80(v126, v127, v128);

  v130 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v130);

  v131 = OUTLINED_FUNCTION_4_66();
  sub_1C7268E80(v131, v132, v133);
  OUTLINED_FUNCTION_63_16();
  v321 = v122;
  v322 = v124;
  v134 = v122 + v124;
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v135 = OUTLINED_FUNCTION_95();
  v136 = MEMORY[0x1E69E63B0];
  *(v135 + 16) = xmmword_1C755BAB0;
  v137 = MEMORY[0x1E69E6438];
  *(v135 + 56) = v136;
  *(v135 + 64) = v137;
  *(v135 + 32) = v330;
  OUTLINED_FUNCTION_2_81();
  v138 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v138);

  v139 = OUTLINED_FUNCTION_36_21();
  MEMORY[0x1CCA5CD70](v139);
  if (v39)
  {
    OUTLINED_FUNCTION_8_55();
    v338 = v140;
    v141 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v141);
    *(v142 + 32) = v312;
    OUTLINED_FUNCTION_2_81();
    v143 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v143);

    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A7C40);
    v144 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v144);
    *(v145 + 32) = v316;
    OUTLINED_FUNCTION_2_81();
    v146 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v146);

    v147 = OUTLINED_FUNCTION_36_21();
    MEMORY[0x1CCA5CD70](v147);
    v149 = v338;
    v148 = 0xED0000203A656761;
    OUTLINED_FUNCTION_8_55();
    v339 = v150;
    v340 = 0xED0000203A656761;
    v151 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v151);
    *(v152 + 32) = v2;
    OUTLINED_FUNCTION_2_81();
    v153 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v153);

    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A7C40);
    v154 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v154);
    *(v155 + 32) = v71;
    OUTLINED_FUNCTION_2_81();
    v156 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v156);

    v157 = OUTLINED_FUNCTION_36_21();
  }

  else
  {
    v158 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v158);
    *(v159 + 32) = v316;
    OUTLINED_FUNCTION_2_81();
    v160 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v160);

    v161 = OUTLINED_FUNCTION_30_29();
    MEMORY[0x1CCA5CD70](v161);
    v149 = 0x6F6C6F6E6F726863;
    v148 = 0xEF203A6C61636967;
    v339 = 0x6F6C6F6E6F726863;
    v340 = 0xEF203A6C61636967;
    v162 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v162);
    *(v163 + 32) = v71;
    OUTLINED_FUNCTION_2_81();
    v164 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v164);

    v157 = OUTLINED_FUNCTION_30_29();
  }

  MEMORY[0x1CCA5CD70](v157);
  v165 = v108 + v103;
  v166 = v129;
  v167 = v134 + v129;
  v168 = v317 + v318;
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0x28204D4C4C5551, 0xE700000000000000);
  v169 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v169);
  *(v170 + 32) = v336;
  OUTLINED_FUNCTION_2_81();
  v171 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v171);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A79D0);
  v172 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v172);
  *(v173 + 32) = v335;
  OUTLINED_FUNCTION_2_81();
  v174 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v174);

  OUTLINED_FUNCTION_52_20();
  MEMORY[0x1CCA5CD70](v149, v148);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  MEMORY[0x1CCA5CD70](v339, v340);

  MEMORY[0x1CCA5CD70](540876841, 0xE400000000000000);
  v175 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v175);
  *(v176 + 32) = v333;
  OUTLINED_FUNCTION_2_81();
  v177 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v177);

  v178 = OUTLINED_FUNCTION_30_29();
  MEMORY[0x1CCA5CD70](v178);
  if (v39)
  {
    v179 = OUTLINED_FUNCTION_5_59();
    OUTLINED_FUNCTION_0_119(v179);
    *(v180 + 32) = v314;
    OUTLINED_FUNCTION_2_81();
    v181 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v181);

    OUTLINED_FUNCTION_44_21();
    v182 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v182);
    *(v183 + 32) = v319;
    OUTLINED_FUNCTION_2_81();
    v184 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v184);

    v185 = OUTLINED_FUNCTION_36_21();
  }

  else
  {
    v186 = OUTLINED_FUNCTION_6_64();
    OUTLINED_FUNCTION_0_119(v186);
    *(v187 + 32) = v319;
    OUTLINED_FUNCTION_2_81();
    v188 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v188);

    v185 = OUTLINED_FUNCTION_30_29();
  }

  MEMORY[0x1CCA5CD70](v185);
  v189 = v165 + v323;
  v190 = v167 + v2;
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0x6569727465525551, 0xED000028206C6176);
  v191 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v191);
  *(v192 + 32) = v337;
  OUTLINED_FUNCTION_2_81();
  v193 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v193);

  MEMORY[0x1CCA5CD70](0xD000000000000028, 0x80000001C75A7A30);
  v194 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v194);
  *(v195 + 32) = v329;
  OUTLINED_FUNCTION_2_81();
  v196 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v196);

  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75A7A60);
  v197 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v197);
  *(v198 + 32) = v328;
  OUTLINED_FUNCTION_2_81();
  v199 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v199);

  MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C75A7A80);
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  MEMORY[0x1CCA5CD70](540876841, 0xE400000000000000);
  v200 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v200);
  *(v201 + 32) = v168;
  OUTLINED_FUNCTION_2_81();
  v202 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v202);

  v203 = OUTLINED_FUNCTION_30_29();
  MEMORY[0x1CCA5CD70](v203);
  if (v39)
  {
    v204 = OUTLINED_FUNCTION_5_59();
    OUTLINED_FUNCTION_0_119(v204);
    *(v205 + 32) = v313;
    OUTLINED_FUNCTION_2_81();
    v206 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v206);

    OUTLINED_FUNCTION_44_21();
    v207 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_0_119(v207);
    *(v208 + 32) = v320;
    OUTLINED_FUNCTION_2_81();
    v209 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v209);

    v210 = OUTLINED_FUNCTION_36_21();
  }

  else
  {
    v211 = OUTLINED_FUNCTION_6_64();
    OUTLINED_FUNCTION_0_119(v211);
    *(v212 + 32) = v320;
    OUTLINED_FUNCTION_2_81();
    v213 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v213);

    v210 = OUTLINED_FUNCTION_30_29();
  }

  MEMORY[0x1CCA5CD70](v210);
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75A7AA0);
  v214 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v214);
  *(v215 + 32) = v324;
  OUTLINED_FUNCTION_2_81();
  v216 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v216);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75A7AC0);
  v217 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v217);
  *(v218 + 32) = v331;
  OUTLINED_FUNCTION_2_81();
  v219 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v219);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A7AE0);
  v220 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v220);
  *(v221 + 32) = v2;
  OUTLINED_FUNCTION_2_81();
  v222 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v222);

  OUTLINED_FUNCTION_52_20();
  v223 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v223);
  *(v224 + 32) = v327;
  OUTLINED_FUNCTION_2_81();
  v225 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v225);

  OUTLINED_FUNCTION_52_20();
  v226 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v226);
  *(v227 + 32) = v326;
  OUTLINED_FUNCTION_2_81();
  v228 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v228);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A7B40);
  v229 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v229);
  *(v230 + 32) = v325;
  OUTLINED_FUNCTION_2_81();
  v231 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v231);

  MEMORY[0x1CCA5CD70](0x79654B202B202973, 0xEF28207465737341);
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  v232 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v232);
  *(v233 + 32) = v323;
  OUTLINED_FUNCTION_2_81();
  v234 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v234);

  MEMORY[0x1CCA5CD70](0x203D202973, 0xE500000000000000);
  v235 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v235);
  *(v236 + 32) = v189;
  OUTLINED_FUNCTION_2_81();
  v237 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v237);

  v238 = OUTLINED_FUNCTION_30_29();
  MEMORY[0x1CCA5CD70](v238);
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  OUTLINED_FUNCTION_44_21();
  v239 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v239);
  *(v240 + 32) = v321;
  OUTLINED_FUNCTION_2_81();
  v241 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v241);

  OUTLINED_FUNCTION_44_21();
  v242 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v242);
  *(v243 + 32) = v322;
  OUTLINED_FUNCTION_2_81();
  v244 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v244);

  MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75A7BC0);
  v245 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v245);
  *(v246 + 32) = v166;
  OUTLINED_FUNCTION_2_81();
  v247 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v247);

  MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75A7BE0);
  v248 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v248);
  *(v249 + 32) = v2;
  OUTLINED_FUNCTION_2_81();
  v250 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v250);

  MEMORY[0x1CCA5CD70](0x203D202973, 0xE500000000000000);
  v251 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_0_119(v251);
  *(v252 + 32) = v190;
  OUTLINED_FUNCTION_2_81();
  v253 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v253);

  v254 = OUTLINED_FUNCTION_30_29();
  MEMORY[0x1CCA5CD70](v254);
  sub_1C75504FC();
  OUTLINED_FUNCTION_48_0();
  v255 = OUTLINED_FUNCTION_40_27();
  MEMORY[0x1CCA5CD70](v255);

  v256 = OUTLINED_FUNCTION_12_47();
  sub_1C7268F30(v256, v257, a2);
  v259 = v258;

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A70F0);
  v260 = OUTLINED_FUNCTION_50_21();
  MEMORY[0x1CCA5CD70](v260);

  v261 = OUTLINED_FUNCTION_12_47();
  sub_1C7268F30(v261, v262, a2);
  OUTLINED_FUNCTION_54_21();
  if (v259 - v167 < 0.0)
  {
    v263 = 0.0;
  }

  else
  {
    v263 = v259 - v167;
  }

  sub_1C75504FC();
  OUTLINED_FUNCTION_35_18();
  v264 = OUTLINED_FUNCTION_40_27();
  MEMORY[0x1CCA5CD70](v264);

  v265 = OUTLINED_FUNCTION_12_47();
  sub_1C7268F30(v265, v266, a2);
  v268 = v267;

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A70F0);
  v269 = OUTLINED_FUNCTION_50_21();
  MEMORY[0x1CCA5CD70](v269);

  v270 = OUTLINED_FUNCTION_12_47();
  sub_1C7268F30(v270, v271, a2);
  OUTLINED_FUNCTION_54_21();
  if (v268 - v167 < 0.0)
  {
    v272 = 0.0;
  }

  else
  {
    v272 = v268 - v167;
  }

  v273 = sub_1C7268E80(0xD00000000000001FLL, 0x80000001C75A3CD0, a1);
  if (v39)
  {
    v274 = OUTLINED_FUNCTION_5_59();
    OUTLINED_FUNCTION_3_75(v274);
    v275 = MEMORY[0x1E69E63B0];
    *(v276 + 56) = MEMORY[0x1E69E63B0];
    v277 = MEMORY[0x1E69E6438];
    *(v276 + 64) = MEMORY[0x1E69E6438];
    *(v276 + 32) = v263;
    OUTLINED_FUNCTION_2_81();
    v278 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v278);

    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A7C40);
    v279 = OUTLINED_FUNCTION_10_57();
    OUTLINED_FUNCTION_3_75(v279);
    *(v280 + 56) = v275;
    *(v280 + 64) = v277;
    *(v280 + 32) = v272;
    OUTLINED_FUNCTION_2_81();
    v281 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v281);

    v282 = OUTLINED_FUNCTION_36_21();
  }

  else
  {
    v283 = OUTLINED_FUNCTION_6_64();
    OUTLINED_FUNCTION_3_75(v283);
    v275 = MEMORY[0x1E69E63B0];
    *(v284 + 56) = MEMORY[0x1E69E63B0];
    v277 = MEMORY[0x1E69E6438];
    *(v284 + 64) = MEMORY[0x1E69E6438];
    *(v284 + 32) = v272;
    OUTLINED_FUNCTION_2_81();
    v285 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v285);

    v282 = OUTLINED_FUNCTION_30_29();
  }

  MEMORY[0x1CCA5CD70](v282);
  sub_1C755180C();
  OUTLINED_FUNCTION_15_51();
  MEMORY[0x1CCA5CD70](0x28204D4C4CLL, 0xE500000000000000);
  v286 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_3_75(v286);
  *(v287 + 56) = v275;
  *(v287 + 64) = v277;
  *(v287 + 32) = v333;
  OUTLINED_FUNCTION_2_81();
  v288 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v288);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  v289 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_3_75(v289);
  *(v290 + 56) = v275;
  *(v290 + 64) = v277;
  *(v290 + 32) = v168;
  OUTLINED_FUNCTION_2_81();
  v291 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v291);

  MEMORY[0x1CCA5CD70](0x65764F202D202973, 0xEE00282070616C72);
  MEMORY[0x1CCA5CD70](v332, v42);

  MEMORY[0x1CCA5CD70](0x65626E49202B2029, 0xEF28206E65657774);
  v292 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_3_75(v292);
  *(v293 + 56) = v275;
  *(v293 + 64) = v277;
  *(v293 + 32) = v189;
  OUTLINED_FUNCTION_2_81();
  v294 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v294);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  v295 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_3_75(v295);
  *(v296 + 56) = v275;
  *(v296 + 64) = v277;
  *(v296 + 32) = v190;
  OUTLINED_FUNCTION_2_81();
  v297 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v297);

  MEMORY[0x1CCA5CD70](0x203D202973, 0xE500000000000000);
  v298 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_3_75(v298);
  if (v263 > v272)
  {
    v300 = v263;
  }

  else
  {
    v300 = v272;
  }

  *(v299 + 56) = v275;
  *(v299 + 64) = v277;
  *(v299 + 32) = v190 + v189 + v168 + v333 - v300;
  OUTLINED_FUNCTION_2_81();
  v301 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v301);

  MEMORY[0x1CCA5CD70](0x6175746361282073, 0xEA0000000000206CLL);
  v302 = OUTLINED_FUNCTION_10_57();
  OUTLINED_FUNCTION_3_75(v302);
  *(v303 + 7) = v275;
  *(v303 + 8) = v277;
  v303[4] = v273;
  OUTLINED_FUNCTION_2_81();
  v304 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v304);

  v305 = OUTLINED_FUNCTION_36_21();
  MEMORY[0x1CCA5CD70](v305);
  sub_1C75504FC();
  v306 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v306);

  OUTLINED_FUNCTION_14_44();
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_14_44();
  v307 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v307);

  OUTLINED_FUNCTION_14_44();
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_14_44();
  v308 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v308);

  OUTLINED_FUNCTION_14_44();
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_14_44();
  v309 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v309);

  OUTLINED_FUNCTION_14_44();
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_14_44();
  v310 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v310);

  OUTLINED_FUNCTION_14_44();
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  return 0xD000000000000012;
}

double sub_1C7268E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0.0;
  if (*(a3 + 16))
  {
    v5 = sub_1C6F78124(a1, a2);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 8 * v5);
      if (*(v7 + 16))
      {
        return *(v7 + 32);
      }
    }
  }

  return v3;
}

double sub_1C7268ED4(uint64_t a1, unint64_t a2, void *a3)
{
  sub_1C726B430(a1, a2, a3);
  if (!v3)
  {
    return 0.0;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = 0.0;
    do
    {
      v7 = *v5++;
      v6 = v6 + v7;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

double sub_1C7268F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0.0;
  if (*(a3 + 16))
  {
    v5 = sub_1C6F78124(a1, a2);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 8 * v5);
      if (*(v7 + 16))
      {
        return *(v7 + 32);
      }
    }
  }

  return v3;
}

void sub_1C7268F90(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v96 - v6;
  v101 = sub_1C754F3CC();
  v8 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1C754DFFC();
  v10 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v107 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v114 = v96 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v129 = v96 - v15;
  v128 = sub_1C754F37C();
  v16 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C754F36C();
  MEMORY[0x1EEE9AC00](v18);
  v104 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v126 = v96 - v21;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = v96 - v23;
  v27 = *a1;
  v125 = *(*a1 + 16);
  if (!v125)
  {
    v95 = MEMORY[0x1E69E7CC8];
LABEL_46:
    *a2 = v95;
    return;
  }

  v103 = v7;
  v96[0] = a2;
  v96[1] = v2;
  v105 = 0;
  v28 = 0;
  v124 = v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v123 = (v16 + 88);
  v119 = (v24 + 8);
  v122 = *MEMORY[0x1E69C1870];
  v97 = (v16 + 8);
  v115 = (v10 + 8);
  v113 = *MEMORY[0x1E69C1858];
  v111 = (v24 + 32);
  v98 = (v8 + 8);
  v110 = *MEMORY[0x1E69C1868];
  v112 = v10;
  v109 = v10 + 16;
  v108 = (v24 + 40);
  v29 = MEMORY[0x1E69E7CC8];
  v102 = *MEMORY[0x1E69C1860];
  v106 = MEMORY[0x1E69E7CC8];
  v30 = v114;
  v120 = v24 + 16;
  v121 = v96 - v23;
  v117 = v27;
  v118 = v24;
  while (v28 < *(v27 + 16))
  {
    v31 = *(v24 + 72);
    v134 = v28;
    v32 = *(v24 + 16);
    v32(v26, v124 + v31 * v28, v18, v25);
    v33 = v18;
    v34 = v127;
    sub_1C754F32C();
    v35 = (*v123)(v34, v128);
    if (v35 == v122)
    {
      sub_1C754F33C();
      (v32)(v126, v26, v33);
      swift_isUniquelyReferenced_nonNull_native();
      v132 = v29;
      sub_1C6FC2D10();
      if (__OFADD__(v29[2], (v37 & 1) == 0))
      {
        goto LABEL_48;
      }

      v38 = v36;
      v39 = v37;
      v18 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D60);
      if (sub_1C7551A2C())
      {
        sub_1C6FC2D10();
        v26 = v121;
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_52;
        }

        v38 = v40;
      }

      else
      {
        v26 = v121;
      }

      v29 = v132;
      if (v39)
      {
        (*v108)(*(v132 + 56) + v38 * v31, v126, v33);
        (*v115)(v129, v116);
        (*v119)(v26, v33);
      }

      else
      {
        *(v132 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        v63 = v112;
        v64 = v129;
        v65 = v116;
        (*(v112 + 16))(v29[6] + *(v112 + 72) * v38, v129, v116);
        (*v111)(v29[7] + v38 * v31, v126, v33);
        (*(v63 + 8))(v64, v65);
        (*v119)(v26, v33);
        v66 = v29[2];
        v67 = __OFADD__(v66, 1);
        v68 = v66 + 1;
        if (v67)
        {
          goto LABEL_49;
        }

        v29[2] = v68;
      }

      goto LABEL_42;
    }

    v42 = v35;
    if (v35 != v113)
    {
      v18 = v33;
      v26 = v121;
      if (v35 == v110)
      {
        v54 = v107;
        sub_1C754F33C();
        sub_1C6FC2D10();
        if (v56)
        {
          v57 = v55;
          swift_isUniquelyReferenced_nonNull_native();
          v132 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D60);
          sub_1C7551A2C();
          v29 = v132;
          v58 = *(v132 + 48) + *(v112 + 72) * v57;
          v99 = *(v112 + 8);
          v59 = v116;
          v99(v58, v116);
          v60 = v103;
          (*v111)(v103, (v29[7] + v57 * v31), v33);
          sub_1C726E15C(&qword_1EDD0CBA8, MEMORY[0x1E69695A8]);
          sub_1C7551A4C();
          v61 = v59;
          v30 = v114;
          v99(v107, v61);
          (*v119)(v26, v33);
          v62 = 0;
        }

        else
        {
          (*v115)(v54, v116);
          (*v119)(v26, v33);
          v62 = 1;
          v60 = v103;
        }

        __swift_storeEnumTagSinglePayload(v60, v62, 1, v33);
        sub_1C6FB5FC8(v60, &qword_1EC219D58);
      }

      else
      {
        (*v119)(v121, v33);
        if (v42 != v102)
        {
          (*v97)(v127, v128);
        }
      }

      goto LABEL_43;
    }

    v26 = v121;
    sub_1C754F33C();
    v18 = v33;
    if (v29[2])
    {
      sub_1C6FC2D10();
      if (v44)
      {
        (v32)(v104, v29[7] + v43 * v31, v33);
        (*v115)(v30, v116);
        v45 = v100;
        sub_1C754F31C();
        v46 = sub_1C754F3BC();
        (*v98)(v45, v101);
        if (*(v46 + 16))
        {
          v132 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          sub_1C703328C();
          v47 = sub_1C75505FC();
          v49 = v48;

          v132 = 46;
          v133 = 0xE100000000000000;
          v50 = sub_1C754F34C();
          MEMORY[0x1CCA5CD70](v50);

          v130 = v47;
          v131 = v49;
          sub_1C75504FC();
          v130 = sub_1C755097C();
          v131 = v51;
          sub_1C755083C();

          v52 = v130;
          v53 = v131;
        }

        else
        {

          v52 = sub_1C754F34C();
          v53 = v69;
        }

        sub_1C754F35C();
        v71 = v70;
        sub_1C754F35C();
        v73 = v72;
        sub_1C6F6E5B4(v105);
        v74 = v106;
        swift_isUniquelyReferenced_nonNull_native();
        v132 = v74;
        v105 = v52;
        v99 = sub_1C6F78124(v52, v53);
        if (__OFADD__(*(v74 + 16), (v75 & 1) == 0))
        {
          goto LABEL_50;
        }

        v76 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D68);
        if (sub_1C7551A2C())
        {
          v77 = v53;
          v78 = sub_1C6F78124(v105, v53);
          if ((v76 & 1) != (v79 & 1))
          {
            goto LABEL_52;
          }

          v80 = v78;
        }

        else
        {
          v77 = v53;
          v80 = v99;
        }

        v81 = v132;
        if (v76)
        {
          v82 = v132;

          v81 = v82;
        }

        else
        {
          *(v132 + 8 * (v80 >> 6) + 64) |= 1 << v80;
          v83 = (v81[6] + 16 * v80);
          *v83 = v105;
          v83[1] = v77;
          *(v81[7] + 8 * v80) = MEMORY[0x1E69E7CC0];
          v84 = v81[2];
          v67 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v67)
          {
            goto LABEL_51;
          }

          v81[2] = v85;
        }

        v106 = v81;
        v86 = v81[7];
        v87 = *(v86 + 8 * v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v86 + 8 * v80) = v87;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C6FB4270();
          v87 = v93;
          *(v86 + 8 * v80) = v93;
        }

        v89 = *(v87 + 16);
        if (v89 >= *(v87 + 24) >> 1)
        {
          sub_1C6FB4270();
          *(v86 + 8 * v80) = v94;
        }

        v105 = (v89 + 1);
        v90 = *v119;
        (*v119)(v104, v33);
        v90(v26, v33);
        v91 = *(v86 + 8 * v80);
        *(v91 + 16) = v105;
        v92 = v91 + 16 * v89;
        *(v92 + 32) = v71;
        *(v92 + 40) = v73;
        v105 = sub_1C6FC0A88;
LABEL_42:
        v30 = v114;
        goto LABEL_43;
      }
    }

    (*v115)(v30, v116);
    (*v119)(v26, v33);
LABEL_43:
    v27 = v117;
    v24 = v118;
    v28 = v134 + 1;
    if (v125 == v134 + 1)
    {

      sub_1C6F6E5B4(v105);
      a2 = v96[0];
      v95 = v106;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7269D30()
{
  v0 = sub_1C75504FC();
  v1 = sub_1C71CD90C(v0);
  sub_1C7266F60(v1);

  sub_1C734ACA0();
  v3 = v2;
  sub_1C755180C();
  sub_1C75504FC();

  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_48_0();
  v4 = OUTLINED_FUNCTION_40_27();
  MEMORY[0x1CCA5CD70](v4);

  OUTLINED_FUNCTION_11_47();
  v8 = sub_1C6FE3768(v5, v6, v7);

  if (v8)
  {
  }

  sub_1C734ACA0();
  sub_1C755180C();

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  v9 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v9);

  sub_1C755180C();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  v10 = sub_1C726A368();
  MEMORY[0x1CCA5CD70](v10);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  if (qword_1EC213F38 != -1)
  {
    OUTLINED_FUNCTION_9_59();
  }

  OUTLINED_FUNCTION_17_51(&qword_1EC219CB8);
  v11 = sub_1C726A368();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](0x4D4C4C0A63657320, 0xED0000203A555120);
  if (qword_1EC213F40 != -1)
  {
    OUTLINED_FUNCTION_1_88();
    swift_once();
  }

  OUTLINED_FUNCTION_17_51(&qword_1EC219CC8);
  v12 = sub_1C726A368();
  MEMORY[0x1CCA5CD70](v12);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_29_29();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000005DLL, 0x80000001C75A72C0);
  v13 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v13);

  OUTLINED_FUNCTION_11_47();
  v14 = sub_1C726A368();
  v16 = v15;

  MEMORY[0x1CCA5CD70](v14, v16);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  if (qword_1EC213F50 != -1)
  {
    OUTLINED_FUNCTION_26_33();
  }

  OUTLINED_FUNCTION_17_51(&qword_1EC219CE8);
  v17 = sub_1C726A368();
  MEMORY[0x1CCA5CD70](v17);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  if (v8)
  {
    OUTLINED_FUNCTION_29_29();
    sub_1C755180C();

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_40_27();
    OUTLINED_FUNCTION_55_21();

    OUTLINED_FUNCTION_11_47();
    v18 = sub_1C726A368();
    OUTLINED_FUNCTION_65_18();
  }

  else
  {

    v3 = 0xE100000000000000;
    v18 = 45;
  }

  MEMORY[0x1CCA5CD70](v18, v3);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_29_29();
  sub_1C755180C();

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_40_27();
  OUTLINED_FUNCTION_55_21();

  OUTLINED_FUNCTION_11_47();
  v19 = sub_1C726A368();
  v21 = v20;

  MEMORY[0x1CCA5CD70](v19, v21);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  if (qword_1EC213F60 != -1)
  {
    OUTLINED_FUNCTION_25_29();
  }

  OUTLINED_FUNCTION_17_51(&qword_1EC219D08);
  v22 = sub_1C726A4B0();
  MEMORY[0x1CCA5CD70](v22);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  if (qword_1EC213F68 != -1)
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_17_51(&qword_1EC219D18);
  v23 = sub_1C726A4B0();
  MEMORY[0x1CCA5CD70](v23);

  MEMORY[0x1CCA5CD70](0x754D0A0A63657320, 0xED0000203A636973);
  v24 = sub_1C726A368();
  v26 = v25;

  MEMORY[0x1CCA5CD70](v24, v26);

  v27 = OUTLINED_FUNCTION_27_31();
  MEMORY[0x1CCA5CD70](v27);
  return 0;
}

uint64_t sub_1C726A368()
{
  OUTLINED_FUNCTION_58_19();
  if (*(v3 + 16))
  {
    v4 = v3;
    v5 = sub_1C6F78124(v1, v2);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      if (*(v7 + 16) == 1)
      {
        v8 = *(v7 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
        v9 = OUTLINED_FUNCTION_95();
        v10 = MEMORY[0x1E69E63B0];
        *(v9 + 16) = xmmword_1C755BAB0;
        v11 = MEMORY[0x1E69E6438];
        *(v9 + 56) = v10;
        *(v9 + 64) = v11;
        *(v9 + 32) = v8;
        OUTLINED_FUNCTION_2_81();
        return sub_1C75506BC();
      }

      else
      {
        sub_1C75504FC();
        sub_1C755180C();

        OUTLINED_FUNCTION_3_1();
        v12 = MEMORY[0x1CCA5D090](v7, MEMORY[0x1E69E63B0]);
        v14 = v13;

        MEMORY[0x1CCA5CD70](v12, v14);

        return 0xD000000000000020;
      }
    }
  }

  return v0;
}

uint64_t sub_1C726A4B0()
{
  OUTLINED_FUNCTION_58_19();
  sub_1C726B430(v1, v2, v3);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 0.0;
      do
      {
        v8 = *(v4 + 8 * v6++ + 32);
        v7 = v7 + v8;
      }

      while (v5 != v6);
      v9 = 0;
      v10 = 0.0;
      while (v5 != v9)
      {
        v11 = v4 + 8 * v9++;
        if (v10 <= *(v11 + 32))
        {
          v10 = *(v11 + 32);
        }
      }

      OUTLINED_FUNCTION_29_29();
      sub_1C755180C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v12 = OUTLINED_FUNCTION_95();
      v13 = MEMORY[0x1E69E63B0];
      *(v12 + 16) = xmmword_1C755BAB0;
      v14 = MEMORY[0x1E69E6438];
      *(v12 + 56) = v13;
      *(v12 + 64) = v14;
      *(v12 + 32) = v7;
      OUTLINED_FUNCTION_2_81();
      sub_1C75506BC();
      OUTLINED_FUNCTION_55_21();

      MEMORY[0x1CCA5CD70](0x3D677661202CLL, 0xE600000000000000);
      v15 = OUTLINED_FUNCTION_95();
      OUTLINED_FUNCTION_57_20(v15, v16, v17, v18, v19, v20, v21, v22, v23);
      *(v24 + 32) = v7 / v5;
      OUTLINED_FUNCTION_2_81();
      sub_1C75506BC();
      OUTLINED_FUNCTION_55_21();

      MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
      sub_1C7551D8C();
      OUTLINED_FUNCTION_55_21();

      MEMORY[0x1CCA5CD70](0x297365756C617620, 0xEE003D78616D202CLL);
      v25 = OUTLINED_FUNCTION_95();
      OUTLINED_FUNCTION_57_20(v25, v26, v27, v28, v29, v30, v31, v32, v33);
      *(v34 + 32) = v10;
      OUTLINED_FUNCTION_2_81();
      v35 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v35);

      return 0x3D6C61746F74;
    }

    else
    {
    }
  }

  return v0;
}

uint64_t sub_1C726A6CC(void *a1)
{
  v2 = sub_1C75504FC();
  v3 = sub_1C71CD90C(v2);
  v4 = sub_1C7266F60(v3);
  v6 = v5;

  v42 = v4;
  v43 = v6;
  v7 = sub_1C734ACA0();
  v9 = v8;
  sub_1C755180C();
  sub_1C75504FC();

  OUTLINED_FUNCTION_20_44();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_40_27();
  OUTLINED_FUNCTION_48_19();

  v10 = sub_1C6FE3768(v7, v9, a1);

  if (v10)
  {
  }

  v41 = v10;
  sub_1C734ACA0();
  sub_1C755180C();
  OUTLINED_FUNCTION_20_44();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_60_15();
  sub_1C755180C();
  OUTLINED_FUNCTION_59_17();
  OUTLINED_FUNCTION_64_14();
  sub_1C755184C();
  OUTLINED_FUNCTION_46_21();

  OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_33_25();
  OUTLINED_FUNCTION_34_24();

  OUTLINED_FUNCTION_20_44();
  MEMORY[0x1CCA5CD70]();
  if (qword_1EC213F40 != -1)
  {
LABEL_36:
    OUTLINED_FUNCTION_1_88();
    swift_once();
  }

  sub_1C726A368();
  OUTLINED_FUNCTION_48_19();

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_60_15();
  sub_1C755180C();
  OUTLINED_FUNCTION_59_17();
  OUTLINED_FUNCTION_64_14();
  sub_1C755184C();
  OUTLINED_FUNCTION_46_21();

  OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_33_25();
  OUTLINED_FUNCTION_34_24();

  MEMORY[0x1CCA5CD70](0x7546090A63657320, 0xEC000000203A6C6CLL);
  if (qword_1EC213F38 != -1)
  {
    OUTLINED_FUNCTION_9_59();
  }

  sub_1C726A368();
  OUTLINED_FUNCTION_48_19();

  OUTLINED_FUNCTION_20_44();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_60_15();
  sub_1C755180C();
  OUTLINED_FUNCTION_59_17();
  OUTLINED_FUNCTION_64_14();
  OUTLINED_FUNCTION_40_27();
  OUTLINED_FUNCTION_46_21();

  OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_33_25();
  OUTLINED_FUNCTION_34_24();

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_60_15();
  sub_1C755180C();
  OUTLINED_FUNCTION_59_17();
  OUTLINED_FUNCTION_64_14();
  OUTLINED_FUNCTION_67_14();
  OUTLINED_FUNCTION_46_21();

  OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_33_25();
  OUTLINED_FUNCTION_34_24();

  OUTLINED_FUNCTION_39_25();
  if (qword_1EC213F48 != -1)
  {
    OUTLINED_FUNCTION_23_34();
  }

  sub_1C726A368();
  OUTLINED_FUNCTION_48_19();

  OUTLINED_FUNCTION_20_44();
  MEMORY[0x1CCA5CD70]();
  if (v41)
  {
    OUTLINED_FUNCTION_66_18();
    sub_1C75504FC();

    OUTLINED_FUNCTION_19_47();
    OUTLINED_FUNCTION_40_27();
    OUTLINED_FUNCTION_46_21();

    v11 = OUTLINED_FUNCTION_16_43();
    v13 = v12;
  }

  else
  {
    v13 = 0xE100000000000000;
    v11 = 45;
  }

  MEMORY[0x1CCA5CD70](v11, v13);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A7090);
  if (v41)
  {
    sub_1C755180C();

    MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A70F0);
    OUTLINED_FUNCTION_50_21();
    OUTLINED_FUNCTION_46_21();

    v14 = OUTLINED_FUNCTION_16_43();
    v16 = v15;
  }

  else
  {

    v16 = 0xE100000000000000;
    v14 = 45;
  }

  MEMORY[0x1CCA5CD70](v14, v16);

  MEMORY[0x1CCA5CD70](0x2020200A63657320, 0xEF203A6C6C754620);
  if (v41)
  {
    if (qword_1EC213F58 != -1)
    {
      OUTLINED_FUNCTION_7_53();
    }

    v17 = sub_1C726A368();
    v19 = v18;
  }

  else
  {
    v19 = 0xE100000000000000;
    v17 = 45;
  }

  MEMORY[0x1CCA5CD70](v17, v19);

  OUTLINED_FUNCTION_20_44();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_66_18();
  sub_1C75504FC();

  OUTLINED_FUNCTION_19_47();
  v20 = OUTLINED_FUNCTION_40_27();
  MEMORY[0x1CCA5CD70](v20);

  OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_65_18();
  OUTLINED_FUNCTION_51_17();

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A7090);
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A70F0);
  v21 = OUTLINED_FUNCTION_50_21();
  MEMORY[0x1CCA5CD70](v21);

  OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_65_18();
  OUTLINED_FUNCTION_51_17();

  MEMORY[0x1CCA5CD70](0x2020200A63657320, 0xEF203A6C6C754620);
  v22 = a1;
  if (qword_1EC213F58 != -1)
  {
    OUTLINED_FUNCTION_7_53();
  }

  sub_1C726A368();
  OUTLINED_FUNCTION_48_19();

  v23 = OUTLINED_FUNCTION_27_31();
  MEMORY[0x1CCA5CD70](v23);
  v41 = ".ChapterCuration.";
  a1 = MEMORY[0x1E69E7CC0];
  v24 = 1;
  while (1)
  {
    sub_1C755180C();
    sub_1C75504FC();

    OUTLINED_FUNCTION_20_44();
    MEMORY[0x1CCA5CD70]();
    sub_1C7551D8C();
    OUTLINED_FUNCTION_48_19();

    sub_1C755180C();
    sub_1C75504FC();

    OUTLINED_FUNCTION_20_44();
    MEMORY[0x1CCA5CD70]();
    sub_1C7551D8C();
    OUTLINED_FUNCTION_48_19();

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    v25 = sub_1C755184C();
    MEMORY[0x1CCA5CD70](v25);

    v26 = sub_1C6FE3768(v42, v43, v22);

    if (!v26)
    {
      goto LABEL_33;
    }

    if (!*(v26 + 16))
    {
      break;
    }

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    v27 = sub_1C755184C();
    MEMORY[0x1CCA5CD70](v27);

    v28 = sub_1C6FE3768(v42, v43, v22);

    if (!v28)
    {
LABEL_33:

      goto LABEL_35;
    }

    if (!*(v28 + 16))
    {
      break;
    }

    sub_1C755180C();
    OUTLINED_FUNCTION_20_44();
    MEMORY[0x1CCA5CD70]();
    v29 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v29);

    MEMORY[0x1CCA5CD70](0x6C706D6F43090A3ALL, 0xEF203A6E6F697465);
    OUTLINED_FUNCTION_66_18();

    OUTLINED_FUNCTION_19_47();
    sub_1C755184C();
    OUTLINED_FUNCTION_46_21();

    sub_1C726A368();
    OUTLINED_FUNCTION_33_25();
    OUTLINED_FUNCTION_34_24();

    OUTLINED_FUNCTION_20_44();
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_66_18();

    OUTLINED_FUNCTION_19_47();
    sub_1C755184C();
    OUTLINED_FUNCTION_46_21();

    sub_1C726B360(v42, v43, v22);

    OUTLINED_FUNCTION_51_17();

    OUTLINED_FUNCTION_39_25();
    sub_1C7550F5C();
    v30 = OUTLINED_FUNCTION_27_31();
    MEMORY[0x1CCA5CD70](v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB1814();
      a1 = v35;
    }

    v32 = a1[2];
    v31 = a1[3];
    if (v32 >= v31 >> 1)
    {
      OUTLINED_FUNCTION_15(v31);
      sub_1C6FB1814();
      a1 = v36;
    }

    a1[2] = v32 + 1;
    v33 = &a1[2 * v32];
    v33[4] = 0;
    v33[5] = 0xE000000000000000;
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
      goto LABEL_36;
    }
  }

LABEL_35:

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](2570, 0xE200000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v37 = sub_1C75505FC();
  v39 = v38;

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v37, v39);

  return 0;
}

uint64_t sub_1C726B360(uint64_t a1, unint64_t a2, void *a3)
{
  sub_1C726B430(a1, a2, a3);
  if (!v3)
  {
    return 0x20676E697373694DLL;
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v5 = OUTLINED_FUNCTION_95();
  v6 = MEMORY[0x1E69E63B0];
  *(v5 + 16) = xmmword_1C755BAB0;
  v7 = MEMORY[0x1E69E6438];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 32);
    v10 = 0.0;
    do
    {
      v11 = *v9++;
      v10 = v10 + v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  *(v5 + 32) = v10;
  OUTLINED_FUNCTION_2_81();
  return sub_1C75506BC();
}

void sub_1C726B430(uint64_t a1, unint64_t a2, void *a3)
{
  if (sub_1C755092C())
  {
    sub_1C6FB5E8C();
    swift_bridgeObjectRetain_n();
    v6 = sub_1C75507DC();
    v7 = sub_1C7265FEC(v6, a1, a2);
    v26 = v8;
    v27 = v7;
    v10 = v9;
    v12 = v11;
    OUTLINED_FUNCTION_56_17();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    sub_1C75504FC();
    v18 = 0;
    if (v15)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = a3[v19 + 8];
      ++v18;
      if (v15)
      {
        v18 = v19;
        do
        {
LABEL_7:
          v20 = __clz(__rbit64(v15)) | (v18 << 6);
          v21 = (a3[6] + 16 * v20);
          v22 = *v21;
          v23 = v21[1];
          v24 = *(a3[7] + 8 * v20);
          sub_1C75504FC();
          sub_1C75504FC();
          LOBYTE(v22) = sub_1C726DFA4(v27, v26, v10, v12, v22, v23);

          if ((v22 & 1) == 0)
          {

            v24 = MEMORY[0x1E69E7CC0];
          }

          v15 &= v15 - 1;
          sub_1C6FD3300(v24);
        }

        while (v15);
      }
    }

    __break(1u);
  }

  else if (a3[2])
  {
    sub_1C6F78124(a1, a2);
    if (v25)
    {
      sub_1C75504FC();
    }
  }
}

double sub_1C726B60C(uint64_t a1, unint64_t a2, void *a3)
{
  sub_1C726B430(a1, a2, a3);
  v4 = 0.0;
  if (v3)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = *(v3 + 8 * i + 32);
        v4 = v4 + v7;
      }

      return v4 / v5;
    }

    else
    {
    }
  }

  return v4;
}

unint64_t StoryGenerationEventRecorder.analyticsPayload()()
{
  v0 = sub_1C72671DC(0);
  v1 = sub_1C75504FC();
  v2 = sub_1C71CD90C(v1);
  v3 = sub_1C7266F60(v2);
  v5 = v4;

  sub_1C755180C();

  MEMORY[0x1CCA5CD70](0xD00000000000002BLL, 0x80000001C75A6BC0);
  v6 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v6);

  OUTLINED_FUNCTION_10_2();
  sub_1C7268E80(0xD00000000000001FLL, v7, v0);
  sub_1C7550F2C();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_31_27();
  sub_1C6FC7E40();
  if (qword_1EC213F38 != -1)
  {
    OUTLINED_FUNCTION_9_59();
  }

  v8 = OUTLINED_FUNCTION_17_51(&qword_1EC219CB8);
  sub_1C7268E80(v8, v9, v10);
  sub_1C7550F2C();
  OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_13_53();
  sub_1C6FC7E40();
  if (qword_1EC213F48 != -1)
  {
    OUTLINED_FUNCTION_23_34();
  }

  v11 = OUTLINED_FUNCTION_17_51(&qword_1EC219CD8);
  sub_1C7268E80(v11, v12, v13);
  sub_1C7550F2C();
  OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_13_53();
  sub_1C6FC7E40();
  if (qword_1EC213F50 != -1)
  {
    OUTLINED_FUNCTION_26_33();
  }

  v14 = OUTLINED_FUNCTION_17_51(&qword_1EC219CE8);
  sub_1C7268E80(v14, v15, v16);
  sub_1C7550F2C();
  OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_13_53();
  sub_1C6FC7E40();
  if (qword_1EC213F58 != -1)
  {
    OUTLINED_FUNCTION_7_53();
  }

  v17 = OUTLINED_FUNCTION_17_51(&qword_1EC219CF8);
  sub_1C7268E80(v17, v18, v19);
  sub_1C7550F2C();
  OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_31_27();
  sub_1C6FC7E40();
  if (qword_1EC213F60 != -1)
  {
    OUTLINED_FUNCTION_25_29();
  }

  v20 = OUTLINED_FUNCTION_17_51(&qword_1EC219D08);
  sub_1C726B60C(v20, v21, v22);
  sub_1C7550F2C();
  OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_13_53();
  sub_1C6FC7E40();
  if (qword_1EC213F68 != -1)
  {
    OUTLINED_FUNCTION_24_27();
  }

  v23 = OUTLINED_FUNCTION_17_51(&qword_1EC219D18);
  sub_1C726B60C(v23, v24, v25);
  sub_1C7550F2C();
  OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_13_53();
  sub_1C6FC7E40();
  sub_1C7268E80(v3, v5, v0);

  sub_1C7550F2C();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_31_27();
  sub_1C6FC7E40();
  return v3;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryGenerationEventRecorder.recentEventsSummary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D28);
  v1 = sub_1C754F39C();
  if (!v0)
  {
    v9 = 0;
    sub_1C739CBFC(v40, v2, v3, v4, v5, v6, v7, v8, v32, v33, v34, v36, v38, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v40 = v10;
    sub_1C726D184(&v40);

    sub_1C7033F04(10, v40);
    v39 = v13 >> 1;
    v14 = (v13 >> 1) - v12;
    if (__OFSUB__(v13 >> 1, v12))
    {
      goto LABEL_20;
    }

    if (v14)
    {
      v15 = v11;
      v35 = v12;
      v45 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      if ((v14 & 0x8000000000000000) != 0)
      {
LABEL_21:
        __break(1u);

        __break(1u);
        goto LABEL_22;
      }

      v16 = 0;
      v17 = v45;
      v18 = v35;
      v19 = (v15 + 24 * v35 + 8);
      v37 = v14;
      while (1)
      {
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ((v18 + v16) >= v39 || v16 >= v14)
        {
          goto LABEL_19;
        }

        v22 = *v19;
        v40 = *(v19 - 1);
        v41 = v22;
        sub_1C726C8C8(&v40, &v42);
        v23 = v42;
        v9 = v43;
        v45 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_15(v24);
          sub_1C6F7ED9C();
          v18 = v35;
          v17 = v45;
        }

        *(v17 + 16) = v25 + 1;
        v26 = v17 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v9;
        ++v16;
        v19 = (v19 + 24);
        v14 = v37;
        if (v20 == v37)
        {
          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v40 = 0;
    *&v41 = 0xE000000000000000;
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v40 = 0xD000000000000017;
    *&v41 = v27;
    v42 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_42_2();
    v28 = sub_1C75505FC();
    v30 = v29;

    MEMORY[0x1CCA5CD70](v28, v30);

    v1 = v40;
    v2 = v41;
  }

LABEL_22:
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void sub_1C726BDFC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v111 = sub_1C754F37C();
  v5 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1C754F3CC();
  v7 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C754F36C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v106 = *(*a1 + 16);
  if (!v106)
  {
    v16 = MEMORY[0x1E69E7CC8];
LABEL_58:
    *a2 = v16;
    return;
  }

  v89 = a2;
  v90 = v2;
  v109 = 0;
  v96 = 0;
  v94 = 0;
  v15 = 0;
  v105 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v103 = (v7 + 8);
  v104 = v10 + 16;
  v102 = (v5 + 88);
  v101 = *MEMORY[0x1E69C1870];
  v95 = *MEMORY[0x1E69C1858];
  v99 = (v10 + 8);
  v91 = (v5 + 8);
  v16 = MEMORY[0x1E69E7CC8];
  v93 = *MEMORY[0x1E69C1868];
  v92 = *MEMORY[0x1E69C1860];
  v97 = v10;
  v98 = v9;
  v100 = v14;
  while (v15 < *(v14 + 16))
  {
    (*(v10 + 16))(v13, v105 + *(v10 + 72) * v15, v9, v11);
    v17 = v107;
    sub_1C754F31C();
    v18 = sub_1C754F3BC();
    (*v103)(v17, v108);
    if (*(v18 + 16))
    {
      v114 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      v19 = sub_1C75505FC();
      v21 = v20;

      v114 = 46;
      v115 = 0xE100000000000000;
      v22 = sub_1C754F34C();
      MEMORY[0x1CCA5CD70](v22);

      v112 = v19;
      v113 = v21;
      v112 = sub_1C755097C();
      v113 = v23;
      sub_1C755083C();

      v24 = v112;
      v25 = v113;
    }

    else
    {

      v24 = sub_1C754F34C();
      v25 = v26;
    }

    v27 = v110;
    sub_1C754F32C();
    v28 = (*v102)(v27, v111);
    if (v28 == v101)
    {
      sub_1C754F35C();
      v30 = v29;
      sub_1C6F6E5B4(v109);
      swift_isUniquelyReferenced_nonNull_native();
      v114 = v16;
      v31 = sub_1C6F78124(v24, v25);
      if (__OFADD__(v16[2], (v32 & 1) == 0))
      {
        goto LABEL_60;
      }

      v33 = v31;
      v34 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D48);
      if (sub_1C7551A2C())
      {
        v35 = sub_1C6F78124(v24, v25);
        v9 = v98;
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_66;
        }

        v33 = v35;
      }

      else
      {
        v9 = v98;
      }

      v16 = v114;
      if (v34)
      {
      }

      else
      {
        *(v114 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v54 = (v16[6] + 16 * v33);
        *v54 = v24;
        v54[1] = v25;
        *(v16[7] + 8 * v33) = MEMORY[0x1E69E7CC0];
        v55 = v16[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_62;
        }

        v16[2] = v57;
      }

      v58 = v16[7];
      v59 = *(v58 + 8 * v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v58 + 8 * v33) = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6FB37DC();
        v59 = v82;
        *(v58 + 8 * v33) = v82;
      }

      v61 = *(v59 + 16);
      if (v61 >= *(v59 + 24) >> 1)
      {
        sub_1C6FB37DC();
        *(v58 + 8 * v33) = v83;
      }

      (*v99)(v13, v9);
      v62 = *(v58 + 8 * v33);
      *(v62 + 16) = v61 + 1;
      v63 = (v62 + 24 * v61);
      v63[4] = 0x2064657472617453;
      v63[5] = 0xEA00000000007461;
      v63[6] = v30;
      v109 = sub_1C6FC0A88;
    }

    else
    {
      v37 = v28;
      if (v28 == v95)
      {
        sub_1C754F35C();
        v39 = v38;
        sub_1C6F6E5B4(v96);
        swift_isUniquelyReferenced_nonNull_native();
        v114 = v16;
        v40 = sub_1C6F78124(v24, v25);
        if (__OFADD__(v16[2], (v41 & 1) == 0))
        {
          goto LABEL_61;
        }

        v42 = v40;
        v43 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D48);
        if (sub_1C7551A2C())
        {
          v44 = sub_1C6F78124(v24, v25);
          v9 = v98;
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_66;
          }

          v42 = v44;
        }

        else
        {
          v9 = v98;
        }

        v16 = v114;
        if (v43)
        {
        }

        else
        {
          *(v114 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v64 = (v16[6] + 16 * v42);
          *v64 = v24;
          v64[1] = v25;
          *(v16[7] + 8 * v42) = MEMORY[0x1E69E7CC0];
          v65 = v16[2];
          v56 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v56)
          {
            goto LABEL_64;
          }

          v16[2] = v66;
        }

        v67 = v16[7];
        v68 = *(v67 + 8 * v42);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *(v67 + 8 * v42) = v68;
        if ((v69 & 1) == 0)
        {
          sub_1C6FB37DC();
          v68 = v84;
          *(v67 + 8 * v42) = v84;
        }

        v70 = *(v68 + 16);
        if (v70 >= *(v68 + 24) >> 1)
        {
          sub_1C6FB37DC();
          *(v67 + 8 * v42) = v85;
        }

        (*v99)(v13, v9);
        v71 = *(v67 + 8 * v42);
        *(v71 + 16) = v70 + 1;
        v72 = (v71 + 24 * v70);
        v72[4] = 0x7461206465646E45;
        v72[5] = 0xE800000000000000;
        v72[6] = v39;
        v96 = sub_1C6FC0A88;
      }

      else
      {
        if (v28 != v93)
        {
          (*v99)(v13, v9);

          if (v37 != v92)
          {
            (*v91)(v110, v111);
          }

          goto LABEL_55;
        }

        sub_1C754F35C();
        v47 = v46;
        sub_1C6F6E5B4(v94);
        swift_isUniquelyReferenced_nonNull_native();
        v114 = v16;
        v48 = sub_1C6F78124(v24, v25);
        if (__OFADD__(v16[2], (v49 & 1) == 0))
        {
          goto LABEL_63;
        }

        v50 = v48;
        v51 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D48);
        if (sub_1C7551A2C())
        {
          v52 = sub_1C6F78124(v24, v25);
          v9 = v98;
          if ((v51 & 1) != (v53 & 1))
          {
            goto LABEL_66;
          }

          v50 = v52;
        }

        else
        {
          v9 = v98;
        }

        v16 = v114;
        if (v51)
        {
        }

        else
        {
          *(v114 + 8 * (v50 >> 6) + 64) |= 1 << v50;
          v73 = (v16[6] + 16 * v50);
          *v73 = v24;
          v73[1] = v25;
          *(v16[7] + 8 * v50) = MEMORY[0x1E69E7CC0];
          v74 = v16[2];
          v56 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v56)
          {
            goto LABEL_65;
          }

          v16[2] = v75;
        }

        v76 = v16[7];
        v77 = *(v76 + 8 * v50);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        *(v76 + 8 * v50) = v77;
        if ((v78 & 1) == 0)
        {
          sub_1C6FB37DC();
          v77 = v86;
          *(v76 + 8 * v50) = v86;
        }

        v79 = *(v77 + 16);
        if (v79 >= *(v77 + 24) >> 1)
        {
          sub_1C6FB37DC();
          *(v76 + 8 * v50) = v87;
        }

        (*v99)(v13, v9);
        v80 = *(v76 + 8 * v50);
        *(v80 + 16) = v79 + 1;
        v81 = v80 + 24 * v79;
        strcpy((v81 + 32), "Cancelled at");
        *(v81 + 45) = 0;
        *(v81 + 46) = -5120;
        *(v81 + 48) = v47;
        v94 = sub_1C6FC0A88;
      }
    }

    v10 = v97;
LABEL_55:
    v14 = v100;
    if (v106 == ++v15)
    {
      sub_1C6F6E5B4(v109);
      sub_1C6F6E5B4(v96);
      sub_1C6F6E5B4(v94);
      a2 = v89;
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C726C8C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v15 = *a1;
  v16 = a1[1];
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](5972026, 0xE300000000000000);
  v4 = *(v3 + 16);
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v5 = v3 + 48;
    do
    {
      v6 = *(v5 - 16);
      v7 = *(v5 - 8);
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v6, v7);
      MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
      sub_1C7550F5C();

      v8 = *(v14 + 16);
      if (v8 >= *(v14 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v10 = sub_1C75505FC();
  v12 = v11;

  MEMORY[0x1CCA5CD70](v10, v12);

  result = MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  *a2 = v15;
  a2[1] = v16;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryGenerationEventRecorder.extractMetrics(cancellationCleanupTime:llmQULatency:)(Swift::Double_optional cancellationCleanupTime, Swift::Double_optional llmQULatency)
{
  v5 = v3;
  object = v2;
  LOBYTE(v7) = llmQULatency.is_nil;
  v8 = sub_1C72671DC(0);
  if (!v4)
  {
    v66 = v8;
    if (v5)
    {
      goto LABEL_5;
    }

    v65 = 0;
    if (qword_1EC213F40 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C755BAB0;
      *(v11 + 32) = object;
      swift_isUniquelyReferenced_nonNull_native();
      v75 = v66;
      sub_1C6FC9178();
      v66 = v75;
LABEL_5:
      v12 = object;
      v13 = StoryGenerationEventRecorder.oneLiners(llmQULatency:)(*&v10);
      if (v14)
      {
        break;
      }

      object = v13._object;
      if (v7)
      {
        v63 = 0xE000000000000000;
        v15 = 0;
      }

      else
      {
        v75 = 0;
        v76 = 0xE000000000000000;
        sub_1C755180C();
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x1CCA5CD70](0xD00000000000001DLL);
        sub_1C7550F5C();
        v16 = OUTLINED_FUNCTION_27_31();
        MEMORY[0x1CCA5CD70](v16);
        v15 = v75;
        v63 = v76;
      }

      v17 = StoryGenerationEventRecorder.recentEventsSummary()();
      if (v18)
      {

        break;
      }

      v56 = sub_1C7269D30();
      v58 = v19;
      v20 = sub_1C726A6CC(v66);
      sub_1C739CC3C(v66, v21, v22, v23, v24, v25, v26, v27, v51, v15, v17._object, v17._countAndFlagsBits, v13._countAndFlagsBits, v56, v58, v13._object, v20, v21, v63, v65, v66, v67, v68, v69, v70, v71);
      v75 = v28;
      sub_1C726D228(&v75);
      v65 = 0;
      v29 = 0;
      v7 = 0;
      v68 = v75[2];
      v69 = v75;
      v67 = (v75 + 4);
      for (i = 0xE000000000000000; ; i = v76)
      {
        if (v29 == v68)
        {

          v75 = v55;
          v76 = v60;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v52, v64);

          OUTLINED_FUNCTION_18_36();
          OUTLINED_FUNCTION_41_25();

          v47 = v75;
          v46 = v76;
          v75 = v54;
          v76 = v53;
          OUTLINED_FUNCTION_41_25();
          v48 = v75;
          v49 = v76;
          v75 = v47;
          v76 = v46;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v48, v49);

          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1CCA5CD70](v57, v59);

          OUTLINED_FUNCTION_18_36();
          OUTLINED_FUNCTION_41_25();

          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1CCA5CD70](v61, v62);

          OUTLINED_FUNCTION_18_36();
          OUTLINED_FUNCTION_41_25();

          OUTLINED_FUNCTION_18_36();
          MEMORY[0x1CCA5CD70](v7, i);

          v8 = v75;
          v9 = v76;
          goto LABEL_27;
        }

        if (v29 >= *(v69 + 16))
        {
          break;
        }

        v31 = (v67 + 24 * v29);
        v33 = v31[1];
        v32 = v31[2];
        v34 = *v31;
        v75 = v7;
        v76 = i;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v34, v33);
        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1CCA5CD70](542842938, 0xE400000000000000);

        v35 = v76;
        v73 = v75;
        v36 = *(v32 + 16);
        if (v36)
        {
          v70 = v76;
          v71 = v33;
          v72 = v29;
          v74 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v37 = v74;
          v38 = v32 + 32;
          do
          {
            v75 = 0;
            v76 = 0xE000000000000000;
            sub_1C7550F5C();
            v39 = v75;
            v40 = v76;
            v42 = *(v74 + 16);
            v41 = *(v74 + 24);
            if (v42 >= v41 >> 1)
            {
              OUTLINED_FUNCTION_15(v41);
              sub_1C6F7ED9C();
            }

            *(v74 + 16) = v42 + 1;
            v43 = v74 + 16 * v42;
            *(v43 + 32) = v39;
            *(v43 + 40) = v40;
            v38 += 8;
            --v36;
          }

          while (v36);
          v29 = v72;
          v35 = v70;
        }

        else
        {
          v37 = MEMORY[0x1E69E7CC0];
        }

        ++v29;
        v75 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        sub_1C703328C();
        v44 = sub_1C75505FC();
        object = v45;

        v75 = v73;
        v76 = v35;
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v44, object);

        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1CCA5CD70](679200, 0xE300000000000000);

        v7 = v75;
      }

      __break(1u);
LABEL_26:
      OUTLINED_FUNCTION_1_88();
      swift_once();
    }
  }

LABEL_27:
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t StoryGenerationEventRecorder.events()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D30);
  *(a1 + 32) = sub_1C726DDD4();
  result = sub_1C754F39C();
  if (v1)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_1C726D184(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422E1C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C726D2CC(v6, &qword_1EC2182B0, &unk_1C7571150, sub_1C726D4A0, sub_1C726D3E8);
  *a1 = v2;
  return result;
}

uint64_t sub_1C726D228(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422E34();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C726D2CC(v6, &qword_1EC2182A8, &unk_1C7571140, sub_1C70B5198, sub_1C70B4A38);
  *a1 = v2;
  return result;
}

uint64_t sub_1C726D2CC(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v13 = sub_1C7550BBC();
        *(v13 + 16) = v12;
      }

      v14[0] = v13 + 32;
      v14[1] = v12;
      a4(v14, v15, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

uint64_t sub_1C726D3E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = result - a3;
  v6 = *a4 + 24 * a3;
  while (2)
  {
    v7 = *(v4 + 24 * a3 + 16);
    v8 = v6;
    v9 = v5;
    do
    {
      v10 = *(v8 - 1);
      v11 = *(v7 + 16);
      if (v11)
      {
        v12 = *(v7 + 8 + 24 * v11 + 16);
        v13 = *(v10 + 16);
        if (!v13)
        {
          if (v12 <= 0.0)
          {
            break;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v13 = *(v10 + 16);
        if (!v13)
        {
          break;
        }

        v12 = 0.0;
      }

      if (*(v10 + 24 * v13 + 24) >= v12)
      {
        break;
      }

LABEL_11:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v14 = *v8;
      result = v8[1];
      *v8 = *(v8 - 3);
      v8[2] = *(v8 - 1);
      *(v8 - 2) = result;
      *(v8 - 1) = v7;
      *(v8 - 3) = v14;
      v8 -= 3;
    }

    while (!__CFADD__(v9++, 1));
    ++a3;
    --v5;
    v6 += 24;
    if (a3 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_1C726D4A0(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v97 = v9 + 16;
      v98 = *(v9 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_145;
        }

        v99 = v9;
        v100 = &v9[16 * v98];
        v101 = *v100;
        v102 = &v97[2 * v98];
        v103 = *(v102 + 1);
        sub_1C726DBBC(&(*a3)[24 * *v100], &(*a3)[24 * *v102], &(*a3)[24 * v103], v110);
        if (v5)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_133;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_134;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_135;
        }

        v98 = *v97 - 1;
        sub_1C7423CF4(v102 + 16, v104, v102);
        *v97 = v98;
        v9 = v99;
      }

LABEL_117:

      return;
    }

LABEL_142:
    v9 = sub_1C7420830();
    goto LABEL_109;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v6)
    {
      v110 = *a3;
      v12 = *&(*a3)[24 * v8 + 16];
      sub_1C74ED68C(*&(*a3)[24 * v11 + 16]);
      v108 = v11;
      v105 = v10;
      if (v14)
      {
        v15 = v13;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
      }

      else
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v15 = 0.0;
      }

      sub_1C74ED68C(v12);
      v17 = v16;
      v19 = v18;

      if (v17)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0.0;
      }

      v7 = a4;

      v10 = v105;
      v21 = v105 + 2;
      if (v6 <= v105 + 2)
      {
        v22 = v105 + 2;
      }

      else
      {
        v22 = v6;
      }

      v23 = v108;
      v24 = 24 * v105;
      v25 = &v110[24 * v105 + 40];
      while (v21 < v6)
      {
        v26 = *(v25 + 3);
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = *(v26 + 24 * v27 + 24);
        }

        else
        {
          v28 = 0.0;
        }

        ++v23;
        v29 = *(*v25 + 16);
        if (v29)
        {
          if (v20 < v15 == *(*v25 + 24 * v29 + 24) >= v28)
          {
            v22 = v21;
            break;
          }
        }

        else if (v20 < v15 == v28 <= 0.0)
        {
          v22 = v23;
          break;
        }

        v25 += 24;
        ++v21;
      }

      if (v20 < v15)
      {
        if (v22 < v105)
        {
          goto LABEL_139;
        }

        if (v105 < v22)
        {
          v30 = 0;
          v31 = 24 * v22;
          v32 = v105;
          do
          {
            if (v32 != v22 + v30 - 1)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_146;
              }

              v34 = &v33[v24];
              v35 = &v33[v31];
              v36 = *v34;
              v37 = *(v34 + 8);
              v38 = *(v35 - 24);
              *(v34 + 2) = *(v35 - 1);
              *v34 = v38;
              *(v35 - 3) = v36;
              *(v35 - 1) = v37;
            }

            ++v32;
            --v30;
            v31 -= 24;
            v24 += 24;
          }

          while (v32 < v22 + v30);
        }
      }

      v11 = v22;
    }

    v39 = a3[1];
    if (v11 < v39)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_138;
      }

      if (v11 - v10 < v7)
      {
        break;
      }
    }

LABEL_55:
    if (v11 < v10)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v9 = v95;
    }

    v53 = *(v9 + 2);
    v54 = v53 + 1;
    v109 = v11;
    if (v53 >= *(v9 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v9 = v96;
    }

    *(v9 + 2) = v54;
    v55 = v9 + 32;
    v56 = &v9[16 * v53 + 32];
    *v56 = v10;
    *(v56 + 1) = v109;
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        v58 = &v55[16 * v54 - 16];
        v59 = &v9[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v9 + 4);
          v61 = *(v9 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_75:
          if (v63)
          {
            goto LABEL_124;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_127;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_130;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_132;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        if (v54 < 2)
        {
          goto LABEL_126;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_90:
        if (v78)
        {
          goto LABEL_129;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_131;
        }

        if (v85 < v77)
        {
          goto LABEL_104;
        }

LABEL_97:
        if (v57 - 1 >= v54)
        {
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v89 = v9;
        v90 = &v55[16 * v57 - 16];
        v91 = *v90;
        v92 = &v55[16 * v57];
        v93 = *(v92 + 1);
        sub_1C726DBBC(&(*a3)[24 * *v90], &(*a3)[24 * *v92], &(*a3)[24 * v93], v110);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v93 < v91)
        {
          goto LABEL_119;
        }

        v5 = *(v89 + 2);
        if (v57 > v5)
        {
          goto LABEL_120;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        if (v57 >= v5)
        {
          goto LABEL_121;
        }

        v54 = v5 - 1;
        sub_1C7423CF4(v92 + 16, v5 - 1 - v57, &v55[16 * v57]);
        v9 = v89;
        *(v89 + 2) = v5 - 1;
        v94 = v5 > 2;
        v5 = 0;
        if (!v94)
        {
          goto LABEL_104;
        }
      }

      v64 = &v55[16 * v54];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_122;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_123;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_125;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_128;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_136;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_75;
    }

LABEL_104:
    v6 = a3[1];
    v8 = v109;
    v7 = a4;
    if (v109 >= v6)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, v7))
  {
    goto LABEL_140;
  }

  if (v10 + v7 < v39)
  {
    v39 = (v10 + v7);
  }

  if (v39 < v10)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v11 == v39)
  {
    goto LABEL_55;
  }

  v40 = *a3;
  v41 = v10 - v11;
  v42 = &(*a3)[24 * v11];
LABEL_42:
  v43 = *&v40[24 * v11 + 16];
  v44 = v42;
  v45 = v41;
  while (1)
  {
    v46 = *(v44 - 1);
    v47 = *(v43 + 16);
    if (v47)
    {
      v48 = *(v43 + 8 + 24 * v47 + 16);
      v49 = *(v46 + 16);
      if (!v49)
      {
        if (v48 <= 0.0)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v49 = *(v46 + 16);
      if (!v49)
      {
        goto LABEL_53;
      }

      v48 = 0.0;
    }

    if (*(v46 + 24 * v49 + 24) >= v48)
    {
      goto LABEL_53;
    }

LABEL_50:
    if (!v40)
    {
      break;
    }

    v50 = *v44;
    v51 = v44[1];
    *v44 = *(v44 - 3);
    v44[2] = *(v44 - 1);
    *(v44 - 2) = v51;
    *(v44 - 1) = v43;
    *(v44 - 3) = v50;
    v44 -= 3;
    if (__CFADD__(v45++, 1))
    {
LABEL_53:
      ++v11;
      --v41;
      v42 += 24;
      if (v11 == v39)
      {
        v11 = v39;
        goto LABEL_55;
      }

      goto LABEL_42;
    }
  }

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
}

uint64_t sub_1C726DBBC(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C7423D18(a1);
    v10 = &a4[24 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v20 = v7;
        goto LABEL_39;
      }

      v12 = *(v6 + 2);
      v13 = *(a4 + 2);
      v14 = *(v12 + 16);
      if (v14)
      {
        v15 = *(v12 + 24 * v14 + 24);
        v16 = *(v13 + 16);
        if (!v16)
        {
          if (v15 <= 0.0)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v16 = *(v13 + 16);
        if (!v16)
        {
          goto LABEL_17;
        }

        v15 = 0.0;
      }

      if (*(v13 + 24 * v16 + 24) >= v15)
      {
LABEL_17:
        v17 = a4;
        v18 = v7 == a4;
        a4 += 24;
        if (v18)
        {
          goto LABEL_19;
        }

LABEL_18:
        v19 = *v17;
        *(v7 + 2) = *(v17 + 2);
        *v7 = v19;
        goto LABEL_19;
      }

LABEL_14:
      v17 = v6;
      v18 = v7 == v6;
      v6 += 24;
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 24;
    }
  }

  sub_1C7423D18(a2);
  v10 = &a4[24 * v9];
LABEL_21:
  v20 = v6;
  v21 = v5;
  while (v10 > a4 && v6 > v7)
  {
    v23 = *(v10 - 1);
    v24 = *(v6 - 1);
    v25 = *(v23 + 16);
    if (v25)
    {
      v26 = *(v23 + 24 * v25 + 24);
      v5 = v21 - 24;
      v27 = *(v24 + 16);
      if (!v27)
      {
        if (v26 > 0.0)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v5 = v21 - 24;
      v27 = *(v24 + 16);
      if (!v27)
      {
        goto LABEL_34;
      }

      v26 = 0.0;
    }

    if (*(v24 + 24 * v27 + 24) < v26)
    {
LABEL_36:
      v6 -= 24;
      if (v21 != v20)
      {
        v30 = *v6;
        *(v5 + 2) = *(v20 - 1);
        *v5 = v30;
      }

      goto LABEL_21;
    }

LABEL_34:
    v28 = v10 - 24;
    v18 = v10 == v21;
    v21 = v5;
    v10 -= 24;
    if (!v18)
    {
      v29 = *v28;
      *(v5 + 2) = *(v28 + 2);
      *v5 = v29;
      v21 = v5;
      v10 = v28;
    }
  }

LABEL_39:
  v31 = (v10 - a4) / 24;
  if (v20 != a4 || v20 >= &a4[24 * v31])
  {
    memmove(v20, a4, 24 * v31);
  }

  return 1;
}

unint64_t sub_1C726DDD4()
{
  result = qword_1EC219D38;
  if (!qword_1EC219D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219D30);
    sub_1C726E15C(&qword_1EC219D40, MEMORY[0x1E69C1848]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219D38);
  }

  return result;
}

uint64_t type metadata accessor for StoryGenerationEventRecorder()
{
  result = qword_1EDD0FC60;
  if (!qword_1EDD0FC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C726DEDC()
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C726DFA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v7 = a5;
  }

  v8 = 7;
  if (((a6 >> 60) & ((a5 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v9 = v8 | (v7 << 16);
  while (1)
  {
    v11 = (v9 & 0xFFFFFFFFFFFFC000) != 0;
    if (v9 < 0x4000)
    {
      break;
    }

    v9 = sub_1C755081C();
    v12 = sub_1C755095C();
    v14 = v13;
    if ((a2 ^ a1) < 0x4000)
    {
      goto LABEL_18;
    }

    v15 = v12;
    a2 = sub_1C75514BC();
    if (v15 == sub_1C75514EC() && v14 == v16)
    {
    }

    else
    {
      v18 = sub_1C7551DBC();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((a2 ^ a1) >= 0x4000)
  {
    sub_1C75514BC();
    sub_1C75514EC();
LABEL_18:

    return v11;
  }

  return 1;
}

uint64_t sub_1C726E15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_24_27()
{

  return swift_once();
}

void OUTLINED_FUNCTION_35_18()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_40_27()
{

  return sub_1C755184C();
}

uint64_t OUTLINED_FUNCTION_43_23()
{
  *(v1 - 168) = 0;
  *(v1 - 160) = v0;

  return sub_1C755180C();
}

uint64_t OUTLINED_FUNCTION_50_21()
{

  return sub_1C755184C();
}

void OUTLINED_FUNCTION_53_23()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_54_21()
{
}

void OUTLINED_FUNCTION_55_21()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_63_16()
{
}

void OUTLINED_FUNCTION_64_14()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_66_18()
{

  return sub_1C755180C();
}

char *sub_1C726E2E8(void *a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  v10 = &selRef_clsSceneClassifications;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v11 = 136380931;
    v12 = a2;
    v13 = [v7 title];
    v14 = sub_1C755068C();
    v16 = v15;

    v17 = sub_1C6F765A4(v14, v16, v54);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = [v7 localIdentifier];
    v19 = sub_1C755068C();
    v21 = v20;

    v22 = v19;
    a2 = v12;
    v23 = sub_1C6F765A4(v22, v21, v54);

    *(v11 + 14) = v23;
    v10 = &selRef_clsSceneClassifications;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Start electing assets for Memory (%{private}s) %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_65();
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  v24 = sub_1C70A65EC(a2);
  result = [objc_opt_self() fetchCuratedAssetsInAssetCollection:v7 options:v24];
  if (result)
  {
    v26 = result;
    if ([result count])
    {
      sub_1C70A51F4(v26, a2);
      v28 = v27;
      v29 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v30 = AssetElectionResult.init(fetchResult:)(v28);

      sub_1C6F85170();

      return v30;
    }

    else
    {
      v31 = v7;
      v32 = sub_1C754FEEC();
      v33 = sub_1C755117C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        v35 = v54[0];
        *v34 = 136315138;
        v36 = [v31 v10[481]];
        v37 = v31;
        v38 = sub_1C755068C();
        v40 = v39;

        v41 = v38;
        v31 = v37;
        v42 = sub_1C6F765A4(v41, v40, v54);

        *(v34 + 4) = v42;
        v10 = &selRef_clsSceneClassifications;
        _os_log_impl(&dword_1C6F5C000, v32, v33, "Found 0 asset in memory %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_0_65();
        MEMORY[0x1CCA5F8E0](v34, -1, -1);
      }

      v43 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v44 = v26;
      v45 = AssetElectionResult.init(fetchResult:)(v44);
      v46 = [v31 v10[481]];
      v47 = sub_1C755068C();
      v49 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217920);
      sub_1C710D370();
      v50 = swift_allocError();
      *v51 = 4;
      *(v51 + 8) = v47;
      *(v51 + 16) = v49;
      *(v51 + 24) = 1;

      v52 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
      swift_beginAccess();
      v53 = *&v45[v52];
      *&v45[v52] = v50;

      sub_1C6F85170();

      return v45;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MemoryAssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MemoryAssetElector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MemoryAssetElector()
{
  result = qword_1EC219D78;
  if (!qword_1EC219D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AnyPersonCollectionFetcher.predicateForFavorites(_:)(char a1)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75604F0;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1C6F6D524();
  v4 = MEMORY[0x1E69E6530];
  v5 = MEMORY[0x1E69E65A8];
  *(v2 + 32) = 1701869940;
  *(v2 + 40) = 0xE400000000000000;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1 & 1;
  return sub_1C755112C();
}

uint64_t static AnyPersonCollectionFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75650C0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(1701869940, 0xE400000000000000, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x724F6C61756E616DLL, 0xEB00000000726564, (a1 & 1) == 0);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  return v2;
}

uint64_t sub_1C726EA28(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = (v2 + 16);
  v7[4] = sub_1C726F588;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C7067B48;
  v7[3] = &block_descriptor_9_0;
  v4 = _Block_copy(v7);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;
  sub_1C75504FC();

  return v5;
}

uint64_t static AnyPersonCollectionFetcher.describe(collections:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v11[4] = sub_1C726F540;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C7067B48;
  v11[3] = &block_descriptor_22;
  v8 = _Block_copy(v11);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v6 + 16);
  sub_1C75504FC();

  return v9;
}

uint64_t sub_1C726EC8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0xE000000000000000;
  sub_1C755180C();

  sub_1C6F65BE8(0, &qword_1EDD100F0);
  v33 = sub_1C755204C();
  v34 = v7;
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](0x6E6F73726550, 0xE600000000000000);
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v8 = [a1 uuid];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C755068C();
    v6 = v11;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1CCA5CD70](v10, v6);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C755068C();
    v16 = v15;
  }

  else
  {
    v16 = 0xE700000000000000;
    v14 = 0x64656D616E6E75;
  }

  MEMORY[0x1CCA5CD70](v14, v16);

  MEMORY[0x1CCA5CD70](2629676, 0xE300000000000000);
  [a1 verifiedType];
  v17 = PHPersonVerifiedTypeDescription();
  v18 = sub_1C755068C();
  v20 = v19;

  MEMORY[0x1CCA5CD70](v18, v20);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  [a1 type];
  v21 = PHPersonTypeDescription();
  v22 = sub_1C755068C();
  v24 = v23;

  MEMORY[0x1CCA5CD70](v22, v24);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  [a1 detectionType];
  v25 = PHDetectionTypeDescription();
  v26 = sub_1C755068C();
  v28 = v27;

  MEMORY[0x1CCA5CD70](v26, v28);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v29 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v30 = *(a4 + 16);
  *(v30 + 16) = v29 + 1;
  v31 = v30 + 16 * v29;
  *(v31 + 32) = v33;
  *(v31 + 40) = v34;
  *(a4 + 16) = v30;
  return swift_endAccess();
}

uint64_t sub_1C726EF70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0xE000000000000000;
  sub_1C755180C();
  sub_1C6F65BE8(0, &qword_1EDD100F0);
  v11 = sub_1C755204C();
  v13 = v12;

  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  v14 = (*(*(*(a6 + 8) + 8) + 16))(a5);
  MEMORY[0x1CCA5CD70](v14);

  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v15 = [a1 uuid];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C755068C();
    v10 = v18;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1CCA5CD70](v17, v10);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v19 = [a1 name];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1C755068C();
    v23 = v22;
  }

  else
  {
    v23 = 0xE700000000000000;
    v21 = 0x64656D616E6E75;
  }

  MEMORY[0x1CCA5CD70](v21, v23);

  MEMORY[0x1CCA5CD70](2629676, 0xE300000000000000);
  [a1 verifiedType];
  v24 = PHPersonVerifiedTypeDescription();
  v25 = sub_1C755068C();
  v27 = v26;

  MEMORY[0x1CCA5CD70](v25, v27);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  [a1 type];
  v28 = PHPersonTypeDescription();
  v29 = sub_1C755068C();
  v31 = v30;

  MEMORY[0x1CCA5CD70](v29, v31);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  [a1 detectionType];
  v32 = PHDetectionTypeDescription();
  v33 = sub_1C755068C();
  v35 = v34;

  MEMORY[0x1CCA5CD70](v33, v35);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v36 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v37 = *(a4 + 16);
  *(v37 + 16) = v36 + 1;
  v38 = v37 + 16 * v36;
  *(v38 + 32) = v11;
  *(v38 + 40) = v13;
  *(a4 + 16) = v37;
  return swift_endAccess();
}

unint64_t static AnyPersonCollectionFetcher.uuidKey()@<X0>(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  result = sub_1C6F6D524();
  a1[4] = result;
  *a1 = 0x55556E6F73726570;
  a1[1] = 0xEA00000000004449;
  return result;
}

uint64_t sub_1C726F2F4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219D88);
  __swift_project_value_buffer(v0, qword_1EC219D88);
  return sub_1C754FEFC();
}

uint64_t static PersonFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213F78 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC219D88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static PersonFetcher.fetchCollections(using:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (![v2 personContext])
  {
    [v2 setPersonContext_];
  }

  sub_1C7065E14(a1);
  v3 = [objc_opt_self() fetchPersonsWithOptions_];

  return v3;
}

uint64_t LocationInfo.init(name:normalizedName:matchType:numberOfMatchingAssets:momentUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t MomentBasedGroundingAndAssetsFetchingProcessor.init(storyPhotoLibraryContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1C726F5D8(uint64_t a1)
{
  v2 = sub_1C726F784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C726F614(uint64_t a1)
{
  v2 = sub_1C726F784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalEventMomentGroundingResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DA0);
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  OUTLINED_FUNCTION_34_1(v24);
  sub_1C726F784();
  sub_1C75504FC();
  OUTLINED_FUNCTION_16_44();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  OUTLINED_FUNCTION_6_3(&qword_1EDD0CEF0);
  OUTLINED_FUNCTION_22_42();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C726F784()
{
  result = qword_1EC219DA8;
  if (!qword_1EC219DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219DA8);
  }

  return result;
}

void PersonalEventMomentGroundingResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DB0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_1(v12);
  sub_1C726F784();
  OUTLINED_FUNCTION_26_34();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_9_30(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_21_42();
    v16 = OUTLINED_FUNCTION_32_24();
    v17(v16);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_125();
}

void static LocationInfo.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (sub_1C7551DBC() & 1) != 0)
  {
    v11 = v2 == v6 && v3 == v7;
    if (v11 || (sub_1C7551DBC()) && v4 == v8 && v5 == v9)
    {
      v13 = OUTLINED_FUNCTION_90();

      sub_1C7036A90(v13, v14);
    }
  }
}

uint64_t sub_1C726FA88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEE00656D614E6465;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x707954686374616DLL && a2 == 0xE900000000000065;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C75A7E10 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x5555746E656D6F6DLL && a2 == 0xEB00000000734449)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C726FC44(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x7A696C616D726F6ELL;
      break;
    case 2:
      result = 0x707954686374616DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x5555746E656D6F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C726FCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C726FA88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C726FD24(uint64_t a1)
{
  v2 = sub_1C72725B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C726FD60(uint64_t a1)
{
  v2 = sub_1C72725B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationInfo.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v14 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DB8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = v0[2];
  v13[4] = v0[3];
  v13[5] = v10;
  v11 = v0[4];
  v13[2] = v0[5];
  v13[3] = v11;
  v13[1] = v0[6];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C72725B8();
  sub_1C755200C();
  v12 = v14;
  sub_1C7551CCC();
  if (!v12)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    v15 = 2;
    type metadata accessor for PHSearchIndexEntityResultMatchType(0);
    sub_1C727260C(&qword_1EDD068B0);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_97();
    sub_1C7551D0C();
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_6_3(&qword_1EDD0CEF0);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_125();
}

uint64_t LocationInfo.hash(into:)(void *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  sub_1C75505AC();
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v3);
  MEMORY[0x1CCA5E460](v4);

  return sub_1C7041DF0(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t LocationInfo.hashValue.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v1);
  MEMORY[0x1CCA5E460](v2);
  sub_1C7041DF0(v11, v3, v4, v5, v6, v7, v8, v9);
  return sub_1C7551FAC();
}

void LocationInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DC0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C72725B8();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    OUTLINED_FUNCTION_8_56();
    v16 = sub_1C7551BBC();
    v25 = v17;
    LOBYTE(a10) = 1;
    OUTLINED_FUNCTION_8_56();
    v23 = sub_1C7551BBC();
    v24 = v18;
    type metadata accessor for PHSearchIndexEntityResultMatchType(0);
    sub_1C727260C(&qword_1EDD068A8);
    OUTLINED_FUNCTION_11_48();
    sub_1C7551C1C();
    v22 = a10;
    LOBYTE(a10) = 3;
    OUTLINED_FUNCTION_8_56();
    v21 = sub_1C7551BFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_9_30(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_11_48();
    sub_1C7551C1C();
    v19 = OUTLINED_FUNCTION_6_65();
    v20(v19);
    *v14 = v16;
    v14[1] = v25;
    v14[2] = v23;
    v14[3] = v24;
    v14[4] = v22;
    v14[5] = v21;
    v14[6] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C72703F0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v1);
  MEMORY[0x1CCA5E460](v2);
  sub_1C7041DF0(v11, v3, v4, v5, v6, v7, v8, v9);
  return sub_1C7551FAC();
}

uint64_t sub_1C72704A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000023 && 0x80000001C75A7E30 == a2)
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

uint64_t sub_1C7270540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72704A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C727056C(uint64_t a1)
{
  v2 = sub_1C7272650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72705A8(uint64_t a1)
{
  v2 = sub_1C7272650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MomentLocationHierarchyFilterRecipe.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DC8);
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  OUTLINED_FUNCTION_34_1(v24);
  sub_1C7272650();
  sub_1C75504FC();
  OUTLINED_FUNCTION_16_44();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DD0);
  sub_1C72726A4();
  OUTLINED_FUNCTION_22_42();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_125();
}

uint64_t MomentLocationHierarchyFilterRecipe.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_106();
  sub_1C7090B94(v3, v1);
  return sub_1C7551FAC();
}

void MomentLocationHierarchyFilterRecipe.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DE8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_1(v12);
  sub_1C7272650();
  OUTLINED_FUNCTION_26_34();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DD0);
    sub_1C72727B4();
    OUTLINED_FUNCTION_21_42();
    v16 = OUTLINED_FUNCTION_32_24();
    v17(v16);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C72708A4()
{
  v1 = *v0;
  sub_1C7551F3C();
  sub_1C7090B94(v3, v1);
  return sub_1C7551FAC();
}

uint64_t MomentLocationHierarchyFilterResult.init(exactMatchingLocationNamesToInclude:partiallyMatchingLocationNamesToInclude:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static MomentLocationHierarchyFilterResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C7036A90(*a1, *a2);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_90();

    sub_1C7036A90(v3, v4);
  }
}

uint64_t sub_1C7270958(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000023 && 0x80000001C75A7E60 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001C75A7E90 == a2)
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

unint64_t sub_1C7270A2C(char a1)
{
  if (a1)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_1C7270A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7270958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7270A94(uint64_t a1)
{
  v2 = sub_1C727293C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7270AD0(uint64_t a1)
{
  v2 = sub_1C727293C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MomentLocationHierarchyFilterResult.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219DF8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v10 = *(v0 + 8);
  OUTLINED_FUNCTION_34_1(v2);
  v9 = sub_1C727293C();
  sub_1C75504FC();
  OUTLINED_FUNCTION_16_44();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  OUTLINED_FUNCTION_6_3(&qword_1EDD0CEF0);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_97();
  sub_1C7551D2C();

  if (!v9)
  {
    v11 = 1;
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

uint64_t MomentLocationHierarchyFilterResult.hash(into:)(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C7041DF0(a1, *v8, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_90();

  return sub_1C7041DF0(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t MomentLocationHierarchyFilterResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_106();
  sub_1C7041DF0(v16, v1, v3, v4, v5, v6, v7, v8);
  sub_1C7041DF0(v16, v2, v9, v10, v11, v12, v13, v14);
  return sub_1C7551FAC();
}

void MomentLocationHierarchyFilterResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219E00);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_1(v12);
  sub_1C727293C();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_9_30(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_52();
    v16 = OUTLINED_FUNCTION_282();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7270F14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C7551F3C();
  sub_1C7041DF0(v16, v1, v3, v4, v5, v6, v7, v8);
  sub_1C7041DF0(v16, v2, v9, v10, v11, v12, v13, v14);
  return sub_1C7551FAC();
}

uint64_t MomentBasedGroundingAndAssetsFetchingProcessor.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t MomentBasedGroundingAndAssetsFetchingProcessor.personalEventGroundingResultByQueryToken(with:associatedPersonUUID:scopedAssetUUIDs:retrievalResultsByQueryToken:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  *(v1 + 112) = OUTLINED_FUNCTION_77();
  *(v1 + 120) = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  *(v1 + 128) = v8;
  v9 = OUTLINED_FUNCTION_77();
  v10 = *v0;
  *(v1 + 136) = v9;
  *(v1 + 144) = v10;
  *(v1 + 232) = *(v0 + 4);
  *(v1 + 152) = v0[2];
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C72716CC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72717F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  v17 = v16[28];
  v18 = v16[2];
  v19 = v16[3];
  sub_1C754DB8C();
  OUTLINED_FUNCTION_137();
  sub_1C754DB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219E10);
  sub_1C7272B5C();
  OUTLINED_FUNCTION_95_1();
  sub_1C754DB5C();
  v20 = v16[20];
  v43 = v16[21];
  v44 = v16[17];
  if (v17)
  {
    sub_1C6FF6930(v16[14]);

    sub_1C6FC1640(v18, v19);

    OUTLINED_FUNCTION_40_28();

    OUTLINED_FUNCTION_25_30();
    OUTLINED_FUNCTION_95_1();
    sub_1C754F1AC();
    v21 = OUTLINED_FUNCTION_31_28();
    v22(v21);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_129();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, v43, v44, a13, a14, a15, a16);
  }

  else
  {
    v32 = v16[16];
    v41 = v16[15];
    v42 = v16[14];
    sub_1C6FF6930(v42);

    sub_1C6FC1640(v18, v19);

    OUTLINED_FUNCTION_40_28();

    OUTLINED_FUNCTION_25_30();
    OUTLINED_FUNCTION_95_1();
    sub_1C754F1AC();
    (*(v32 + 8))(v44, v41);

    OUTLINED_FUNCTION_129();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a13, a14, a15, a16);
  }
}

uint64_t sub_1C72719EC()
{
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[20];
  v5 = v0[13];
  v4 = v0[14];

  sub_1C6FC1640(v2, v1);

  sub_1C6FF6930(v4);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C7271B10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C726F598(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C7271B3C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_1C75504FC();

  *a2 = v3;
  return result;
}

uint64_t MomentBasedGroundingAndAssetsFetchingProcessor.filterLocationsByMomentLocationHierarchy(for:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v5;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v1[7] = OUTLINED_FUNCTION_77();
  v1[8] = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  v1[9] = v6;
  v7 = OUTLINED_FUNCTION_77();
  v8 = *v3;
  v1[10] = v7;
  v1[11] = v8;
  v1[12] = *v0;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7271C60()
{
  v1 = v0[12];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_71_2();
  v3 = [v1 photoAnalysisClient];
  v0[13] = v3;
  if (!v3)
  {
    v19 = v0[6];
    sub_1C7272990();
    swift_allocError();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v19, v2[3]);
    OUTLINED_FUNCTION_27();
    v20 = OUTLINED_FUNCTION_31_28();
    v21(v20);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E69BE620]);
  v6 = v4;
  v7 = [v5 initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    OUTLINED_FUNCTION_5_60();
  }

  v29 = v0[11];
  v8 = v0[7];
  v9 = sub_1C754FF1C();
  v10 = __swift_project_value_buffer(v9, qword_1EC219F58);
  (*(*(v9 - 8) + 16))(v8, v10, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  v12 = (v8 + *(v11 + 28));
  v13 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v14 = [v13 processName];

  v15 = sub_1C755068C();
  v17 = v16;

  *v12 = v15;
  v12[1] = v17;
  *(v8 + *(v11 + 32)) = v7;
  sub_1C754DBCC();
  OUTLINED_FUNCTION_137();
  v0[14] = sub_1C754DBBC();
  v0[4] = v29;
  sub_1C7272C3C();
  v0[15] = sub_1C754DBAC();
  v0[16] = v18;
  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_1C7271FA0;
  OUTLINED_FUNCTION_17_1();

  return PhotoAnalysisMomentGraphService.requestFilterLocationsByMomentLocationHierarchy(for:)(v25, v26);
}

uint64_t sub_1C7271FA0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3[18] = v1;
  v3[19] = v2;
  v3[20] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72720AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  v17 = *(v16 + 160);
  sub_1C754DB8C();
  OUTLINED_FUNCTION_137();
  sub_1C754DB7C();
  sub_1C7272C90();
  sub_1C754DB5C();
  v18 = *(v16 + 104);
  v36 = *(v16 + 80);
  if (v17)
  {
    sub_1C6FF6930(*(v16 + 56));

    OUTLINED_FUNCTION_40_28();
    v19 = OUTLINED_FUNCTION_282();
    sub_1C6FC1640(v19, v20);

    OUTLINED_FUNCTION_25_30();
    OUTLINED_FUNCTION_95_1();
    sub_1C754F1AC();
    v21 = OUTLINED_FUNCTION_31_28();
    v22(v21);
  }

  else
  {
    v23 = *(v16 + 72);
    v24 = *(v16 + 48);
    a10 = *(v16 + 64);
    a11 = *(v16 + 56);
    a9 = *(v16 + 40);
    sub_1C6FF6930(a11);

    OUTLINED_FUNCTION_40_28();
    v25 = OUTLINED_FUNCTION_282();
    sub_1C6FC1640(v25, v26);

    *a9 = *(v16 + 16);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    OUTLINED_FUNCTION_95_1();
    sub_1C754F1AC();
    (*(v23 + 8))(v36, a10);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, v36, a13, a14, a15, a16);
}

uint64_t sub_1C7272264()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  sub_1C6FC1640(v0[15], v0[16]);

  sub_1C6FF6930(v2);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C754F1AC();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7272344()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7272418;

  return MomentBasedGroundingAndAssetsFetchingProcessor.personalEventGroundingResultByQueryToken(with:associatedPersonUUID:scopedAssetUUIDs:retrievalResultsByQueryToken:eventRecorder:)();
}

uint64_t sub_1C7272418()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C7272508()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return MomentBasedGroundingAndAssetsFetchingProcessor.filterLocationsByMomentLocationHierarchy(for:eventRecorder:)();
}

unint64_t sub_1C72725B8()
{
  result = qword_1EDD0F5D0;
  if (!qword_1EDD0F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F5D0);
  }

  return result;
}

uint64_t sub_1C727260C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PHSearchIndexEntityResultMatchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7272650()
{
  result = qword_1EDD0D240[0];
  if (!qword_1EDD0D240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0D240);
  }

  return result;
}

unint64_t sub_1C72726A4()
{
  result = qword_1EC219DD8;
  if (!qword_1EC219DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219DD0);
    sub_1C7272870(&qword_1EDD06BE0, sub_1C7272760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219DD8);
  }

  return result;
}

unint64_t sub_1C7272760()
{
  result = qword_1EDD0C318;
  if (!qword_1EDD0C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C318);
  }

  return result;
}

unint64_t sub_1C72727B4()
{
  result = qword_1EC219DF0;
  if (!qword_1EC219DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219DD0);
    sub_1C7272870(&qword_1EDD06BD8, sub_1C72728E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219DF0);
  }

  return result;
}

uint64_t sub_1C7272870(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219DE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C72728E8()
{
  result = qword_1EDD0C310;
  if (!qword_1EDD0C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C310);
  }

  return result;
}

unint64_t sub_1C727293C()
{
  result = qword_1EDD0D228;
  if (!qword_1EDD0D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D228);
  }

  return result;
}

unint64_t sub_1C7272990()
{
  result = qword_1EC219E08;
  if (!qword_1EC219E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E08);
  }

  return result;
}

unint64_t sub_1C72729E4()
{
  result = qword_1EDD0D068;
  if (!qword_1EDD0D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219068);
    sub_1C7224B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D068);
  }

  return result;
}

uint64_t sub_1C7272A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = v10[2];
  v16 = v10[3];
  v17 = v10[4];
  v18 = v10[5];
  v19 = swift_task_alloc();
  *(v11 + 16) = v19;
  *v19 = v11;
  v19[1] = sub_1C6F738F4;

  return sub_1C72A7334(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

unint64_t sub_1C7272B5C()
{
  result = qword_1EC219E18;
  if (!qword_1EC219E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219E10);
    sub_1C7224E6C();
    sub_1C7272BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E18);
  }

  return result;
}

unint64_t sub_1C7272BE8()
{
  result = qword_1EC219E20;
  if (!qword_1EC219E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E20);
  }

  return result;
}

unint64_t sub_1C7272C3C()
{
  result = qword_1EDD07158[0];
  if (!qword_1EDD07158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD07158);
  }

  return result;
}

unint64_t sub_1C7272C90()
{
  result = qword_1EDD07150;
  if (!qword_1EDD07150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07150);
  }

  return result;
}

unint64_t sub_1C7272CE8()
{
  result = qword_1EC219E28;
  if (!qword_1EC219E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E28);
  }

  return result;
}

unint64_t sub_1C7272D40()
{
  result = qword_1EC219E30;
  if (!qword_1EC219E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E30);
  }

  return result;
}

unint64_t sub_1C7272D98()
{
  result = qword_1EC219E38;
  if (!qword_1EC219E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E38);
  }

  return result;
}

unint64_t sub_1C7272DF0()
{
  result = qword_1EC219E40;
  if (!qword_1EC219E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E40);
  }

  return result;
}

void dispatch thunk of MomentBasedGroundingAndAssetsProvider.personalEventGroundingResultByQueryToken(with:associatedPersonUUID:scopedAssetUUIDs:retrievalResultsByQueryToken:eventRecorder:)()
{
  OUTLINED_FUNCTION_15_3();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7115A34;
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of MomentBasedGroundingAndAssetsProvider.filterLocationsByMomentLocationHierarchy(for:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15_3();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1C6F739D4;

  return v14(a1, a2, a3, a4, a5);
}

_BYTE *storeEnumTagSinglePayload for MomentLocationHierarchyFilterResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LocationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C72732E4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7273394()
{
  result = qword_1EC219E48;
  if (!qword_1EC219E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E48);
  }

  return result;
}

unint64_t sub_1C72733EC()
{
  result = qword_1EC219E50;
  if (!qword_1EC219E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E50);
  }

  return result;
}

unint64_t sub_1C7273444()
{
  result = qword_1EC219E58;
  if (!qword_1EC219E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E58);
  }

  return result;
}

unint64_t sub_1C727349C()
{
  result = qword_1EC219E60;
  if (!qword_1EC219E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E60);
  }

  return result;
}

unint64_t sub_1C72734F4()
{
  result = qword_1EDD0D218;
  if (!qword_1EDD0D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D218);
  }

  return result;
}

unint64_t sub_1C727354C()
{
  result = qword_1EDD0D220;
  if (!qword_1EDD0D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D220);
  }

  return result;
}

unint64_t sub_1C72735A4()
{
  result = qword_1EDD0D230;
  if (!qword_1EDD0D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D230);
  }

  return result;
}

unint64_t sub_1C72735FC()
{
  result = qword_1EDD0D238;
  if (!qword_1EDD0D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D238);
  }

  return result;
}

unint64_t sub_1C7273654()
{
  result = qword_1EDD0F5C0;
  if (!qword_1EDD0F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F5C0);
  }

  return result;
}

unint64_t sub_1C72736AC()
{
  result = qword_1EDD0F5C8;
  if (!qword_1EDD0F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F5C8);
  }

  return result;
}

unint64_t sub_1C7273704()
{
  result = qword_1EC219E68;
  if (!qword_1EC219E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E68);
  }

  return result;
}

unint64_t sub_1C727375C()
{
  result = qword_1EC219E70;
  if (!qword_1EC219E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219E70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_42()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_40_28()
{

  return sub_1C6FC1640(v1, v0);
}

uint64_t sub_1C727381C(void (*a1)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  a1(&v11, v10, &v9);

  if (!v6)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1C72738F0(uint64_t a1, void *a2)
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
  v29 = v7;
  v30 = v3;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v13 = *a2;
      v33 = *a2;
      *a2 = 0x8000000000000000;
      v32 = v11;
      v14 = sub_1C6F78124(v11, v12);
      if (__OFADD__(v13[2], (v15 & 1) == 0))
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
      if (sub_1C7551A2C())
      {
        v18 = sub_1C6F78124(v32, v12);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_24;
        }

        v16 = v18;
      }

      *a2 = v33;

      v20 = *a2;
      if (v17)
      {
      }

      else
      {
        v20[(v16 >> 6) + 8] |= 1 << v16;
        v21 = (v20[6] + 16 * v16);
        *v21 = v32;
        v21[1] = v12;
        *(v20[7] + 8 * v16) = 0;
        v22 = v20[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_23;
        }

        v20[2] = v24;
      }

      v25 = v20[7];
      v26 = *(v25 + 8 * v16);
      v23 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v23)
      {
        goto LABEL_22;
      }

      v6 &= v6 - 1;
      *(v25 + 8 * v16) = v27;

      v8 = v9;
      v7 = v29;
      v3 = v30;
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
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t GlobalTraitGenerator.__allocating_init(configuration:storyPhotoLibraryContext:storyAssetsFetcher:safetyController:storyAssetManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  GlobalTraitGenerator.init(configuration:storyPhotoLibraryContext:storyAssetsFetcher:safetyController:storyAssetManager:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t GlobalTraitGenerator.generatePromptBindings(about:extendedTokens:assetCaptions:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  memcpy(v1 + 2, v8, 0x50uLL);
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7273C18()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1C7273CB8;
  v2 = OUTLINED_FUNCTION_61_3(*(v0 + 96));

  return sub_1C730AB84(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C7273CB8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 160) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v12(v3);
  }
}

uint64_t sub_1C7273DF4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  v4 = v3;
  *(v0 + 416) = v29;
  *(v0 + 424) = v30;
  *(v0 + 384) = v27;
  *(v0 + 400) = v28;
  *(v0 + 368) = v5;
  *(v0 + 376) = v6;
  *(v0 + 352) = v7;
  *(v0 + 360) = v8;
  *(v0 + 344) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AD0);
  *(v0 + 432) = v10;
  OUTLINED_FUNCTION_76(v10);
  *(v0 + 440) = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219E78);
  *(v0 + 448) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v0 + 456) = OUTLINED_FUNCTION_77();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219E80);
  OUTLINED_FUNCTION_76(v12);
  *(v0 + 464) = swift_task_alloc();
  *(v0 + 472) = swift_task_alloc();
  v13 = type metadata accessor for GlobalTrait();
  *(v0 + 480) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v0 + 488) = v14;
  *(v0 + 496) = swift_task_alloc();
  *(v0 + 504) = swift_task_alloc();
  *(v0 + 512) = swift_task_alloc();
  *(v0 + 520) = swift_task_alloc();
  *(v0 + 528) = swift_task_alloc();
  *(v0 + 536) = swift_task_alloc();
  *(v0 + 544) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v15);
  *(v0 + 552) = OUTLINED_FUNCTION_77();
  v16 = sub_1C754F2FC();
  *(v0 + 560) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v0 + 568) = v17;
  *(v0 + 576) = swift_task_alloc();
  *(v0 + 584) = swift_task_alloc();
  *(v0 + 592) = swift_task_alloc();
  *(v0 + 600) = swift_task_alloc();
  *(v0 + 608) = swift_task_alloc();
  *(v0 + 616) = swift_task_alloc();
  v18 = sub_1C754F38C();
  *(v0 + 624) = v18;
  OUTLINED_FUNCTION_18(v18);
  *(v0 + 632) = v19;
  *(v0 + 640) = OUTLINED_FUNCTION_77();
  v20 = v4[1];
  *(v0 + 648) = *v4;
  *(v0 + 664) = v20;
  v21 = v2[1];
  *(v0 + 680) = *v2;
  *(v0 + 696) = v21;
  v22 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C72740D0()
{
  OUTLINED_FUNCTION_163_3();
  OUTLINED_FUNCTION_197_2();
  v1 = v0[48];
  v2 = v0[46];
  v3 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_187_2();
  if (v1)
  {
    OUTLINED_FUNCTION_261_2();
  }

  v0[89] = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  v5 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_58_20();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_260_2(&dword_1C6F5C000, v7, v8, "Global Trait generation started.");
    OUTLINED_FUNCTION_37();
  }

  sub_1C754F2CC();
  v29 = v0[50];
  __swift_project_boxed_opaque_existential_1(v0[46], *(v2 + 24));
  OUTLINED_FUNCTION_170_2();
  OUTLINED_FUNCTION_259_0();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v9 = *(v29 + 104);
  v10 = sub_1C754FEEC();
  v11 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v11))
  {
    v12 = OUTLINED_FUNCTION_102();
    *v12 = 67109120;
    v12[1] = v9;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v13, v14, v15, v16, v17, 8u);
    OUTLINED_FUNCTION_23_3();
  }

  if (v9)
  {
    type metadata accessor for GlobalTraitCompletionGeneration();
    OUTLINED_FUNCTION_233_2();
    v0[90] = v18;
    v19 = OUTLINED_FUNCTION_90();
    v20(v19);
    v21 = swift_task_alloc();
    v0[91] = v21;
    *v21 = v0;
    v21[1] = sub_1C72744FC;
    OUTLINED_FUNCTION_169_3();
    OUTLINED_FUNCTION_329();

    return static GlobalTraitCompletionGeneration.generateGlobalTraitCompletion(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)();
  }

  else
  {
    type metadata accessor for GlobalTraitCompletionGeneration();
    OUTLINED_FUNCTION_233_2();
    v0[93] = v24;
    v25 = OUTLINED_FUNCTION_90();
    v26(v25);
    v27 = swift_task_alloc();
    v0[94] = v27;
    *v27 = v0;
    v27[1] = sub_1C72745F4;
    OUTLINED_FUNCTION_61_3(v0[43]);
    OUTLINED_FUNCTION_329();

    return static GlobalTraitCompletionGeneration.generateGlobalTraitCompletions_DeprecatedGMS(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)();
  }
}

uint64_t sub_1C72744FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 736) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72745F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 760) = v4;
  *(v2 + 768) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7274FC8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 832) = v5;
  *(v3 + 840) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72750F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_163_3();
  OUTLINED_FUNCTION_197_2();
  v25 = v24[105];
  v56 = v24[101];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C6FD32D4();
  v24[106] = v56;
  sub_1C754F2DC();
  if (v25)
  {
    v26 = v24[79];
    v51 = v24[75];
    v52 = v24[80];
    v27 = v24[71];
    v49 = v24[100];
    v50 = v24[70];
    v54 = v24[78];
    v55 = v24[53];
    v28 = v24[46];
    v53 = v24[47];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v24 + 7));
    v29 = *(v27 + 8);
    v29(v51, v50);
    __swift_destroy_boxed_opaque_existential_1((v24 + 2));
    OUTLINED_FUNCTION_10_3(v28);
    OUTLINED_FUNCTION_206_3();
    (*(v26 + 8))(v52, v54);
    v29(v53, v50);

    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_2_82();
    OUTLINED_FUNCTION_9_60();

    OUTLINED_FUNCTION_22_43();
    OUTLINED_FUNCTION_329();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, v49, v50, v51, v52, v53, v54, v55, v25, v56, a21, a22, a23, a24);
  }

  else
  {
    v39 = swift_task_alloc();
    v24[107] = v39;
    v24[108] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    *v39 = v24;
    v39[1] = sub_1C7275608;
    OUTLINED_FUNCTION_195_2();
    OUTLINED_FUNCTION_329();

    return MEMORY[0x1EEE6DE18](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

uint64_t sub_1C7275418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_63_0();
  v23 = v22[80];
  v24 = v22[79];
  v25 = v22[75];
  v26 = v22[71];
  v27 = v22[70];
  OUTLINED_FUNCTION_174_1();
  v28 = v22[46];
  v39 = v22[47];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1((v22 + 7));
  v29 = *(v26 + 8);
  v29(v25, v27);
  __swift_destroy_boxed_opaque_existential_1((v22 + 2));
  OUTLINED_FUNCTION_18_0(v28, v28[3]);
  sub_1C754F1AC();
  (*(v24 + 8))(v23, a18);
  v29(v39, v27);

  v40 = v22[105];
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_166_3();
  OUTLINED_FUNCTION_2_82();
  OUTLINED_FUNCTION_9_60();

  OUTLINED_FUNCTION_22_43();
  OUTLINED_FUNCTION_128_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, v39, a18, v40, a20, a21, a22);
}

void sub_1C7275608()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 872) = v0;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_41();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C7275738()
{
  v205 = v0;
  v4 = 0;
  v185 = v0 + 81;
  v188 = v0[68];
  v191 = v0[61];
  v195 = v0[106];
  v5 = v0[40];
  v198 = *(v195 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = v4;
  for (i = v6; ; v6 = i)
  {
    v0[110] = v6;
    if (v7 == v198)
    {
      break;
    }

    if (v7 >= *(v195 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v8 = v0[68];
    v9 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v3 = *(v191 + 72);
    v4 = v7 + 1;
    OUTLINED_FUNCTION_0_120();
    sub_1C72853C8(v10, v8, v11);
    if (*(v5 + 16))
    {
      v1 = *v8;
      v2 = *(v188 + 8);
      sub_1C7551F3C();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_7();
      while (1)
      {
        OUTLINED_FUNCTION_38_23();
        if ((v12 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_222_0(*(v5 + 48)) != v1 || v13 != v2)
        {
          sub_1C7551DBC();
          OUTLINED_FUNCTION_220_1();
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        v0 = v200;
        sub_1C7285088(v200[68], v200[63]);
        v6 = i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C716E538();
          v6 = i;
        }

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        v1 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_15(v16);
          sub_1C716E538();
          v6 = i;
        }

        v18 = v200[63];
        *(v6 + 16) = v1;
        sub_1C7285088(v18, v6 + v9 + v17 * v3);
        goto LABEL_2;
      }
    }

    v0 = v200;
    sub_1C7285288(v200[68]);
    v7 = v4;
  }

  v3 = v0;

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v19 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_58_20();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[98];
    v22 = *(v3 + 776);
    v23 = OUTLINED_FUNCTION_20_1();
    result = OUTLINED_FUNCTION_221_1(v23, 3.8522e-34);
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v27 = result;
      v28 = *(v3 + 784);
      *(result + 4) = v25;

      OUTLINED_FUNCTION_202_1();

      if (!__OFADD__(v22, v28))
      {
        *(v27 + 14) = v22 + v28;

        *(v27 + 22) = v21;
        *(v27 + 24) = *(i + 16);
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v29, v30, v31, v32, v27, 0x20u);
        OUTLINED_FUNCTION_37();
        goto LABEL_25;
      }
    }

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_25:

  v33 = objc_opt_self();
  v34 = [v33 globalTraitsUseMomentValidation];
  if (([v33 globalTraitsUseMomentValidation] & 1) == 0)
  {
    v2 = v200;
    v50 = v200[109];
    v200[114] = i;
    if (*(v200[50] + 56))
    {
      v51 = v200[44];
      sub_1C75504FC();
    }

    else
    {
      v51 = MEMORY[0x1E69E7CC0];
    }

    v52 = v185[1];
    v204[0] = *v185;
    v204[1] = v52;
    v53 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v204, v51, v200 + 2);
    if (v50)
    {
      v54 = v200[79];
      v196 = v200[78];
      v186 = v200[75];
      v189 = v200[80];
      v55 = v200[71];
      v56 = v200[70];
      v57 = v200[46];
      v192 = v200[47];

      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1((v200 + 7));
      v58 = *(v55 + 8);
      v58(v186, v56);
      __swift_destroy_boxed_opaque_existential_1((v200 + 2));
      OUTLINED_FUNCTION_10_3(v57);
      OUTLINED_FUNCTION_206_3();
      (*(v54 + 8))(v189, v196);
      v58(v192, v56);
    }

    else
    {
      v1 = v53;

      *&v204[0] = v1;
      v59 = *(i + 16);
      if (v59)
      {
        v60 = v200[61];
        OUTLINED_FUNCTION_191();
        v63 = v61 + v62;
        sub_1C75504FC();
        v64 = *(v60 + 72);
        do
        {
          v65 = v200[67];
          OUTLINED_FUNCTION_0_120();
          v66 = OUTLINED_FUNCTION_49_3();
          sub_1C72853C8(v66, v67, v68);
          v69 = sub_1C75504FC();
          sub_1C73978C4(v69);
          sub_1C7285288(v65);
          v63 += v64;
          --v59;
        }

        while (v59);

        v1 = *&v204[0];
      }

      v200[115] = *(v1 + 16);

      sub_1C754F2CC();
      *&v204[0] = i;
      swift_bridgeObjectRetain_n();
      sub_1C7283ED8(v204);

      v72 = *&v204[0];
      v200[116] = *&v204[0];
      v73 = *(v72 + 16);
      v200[117] = v73;
      if (v73)
      {
        v74 = v200[57];
        OUTLINED_FUNCTION_152_2();
        *v74 = 0;
        OUTLINED_FUNCTION_0_120();
        OUTLINED_FUNCTION_272_1(v75, v76);
        v77 = OUTLINED_FUNCTION_90();
        sub_1C72852E4(v77, v78, v79);
        OUTLINED_FUNCTION_248_2();
      }

      else
      {
LABEL_48:
        OUTLINED_FUNCTION_246_2();
      }

      v2[118] = v80;
      v81 = v2[56];
      v82 = OUTLINED_FUNCTION_137_6();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
      v85 = OUTLINED_FUNCTION_90();
      sub_1C72852E4(v85, v86, v87);
      v88 = OUTLINED_FUNCTION_69_2();
      if (__swift_getEnumTagSinglePayload(v88, v89, v81) == 1)
      {

        sub_1C754F2EC();
        sub_1C754F2EC();
        v115 = v2[102];
        v140 = v2[46];

        OUTLINED_FUNCTION_82();
        sub_1C7550E1C();

        OUTLINED_FUNCTION_54_22();
        OUTLINED_FUNCTION_12_2(v140);
        sub_1C754F1AC();
        OUTLINED_FUNCTION_14_45();
        v141(v115);

        OUTLINED_FUNCTION_25();
LABEL_42:
        OUTLINED_FUNCTION_142_0();

        __asm { BRAA            X1, X16 }
      }

      sub_1C7285088(v2[59] + *(v2[56] + 48), v2[66]);
      OUTLINED_FUNCTION_210_1();
      v2[119] = v81;
      if (!v81)
      {
        OUTLINED_FUNCTION_240();
        if (GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(v2[66], v2[115]))
        {
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v116, v117, v118);
          v119 = sub_1C754FEEC();
          v120 = sub_1C75511BC();
          v121 = OUTLINED_FUNCTION_52_21(v120);
          v122 = v2[65];
          if (v121)
          {
            OUTLINED_FUNCTION_41_0();
            *&v204[0] = OUTLINED_FUNCTION_31_0();
            *v1 = 136642819;
            GlobalTrait.description.getter();
            OUTLINED_FUNCTION_53_24();
            v123 = OUTLINED_FUNCTION_98_1();
            sub_1C6F765A4(v123, v124, v125);
            OUTLINED_FUNCTION_159_3();
            *(v1 + 4) = v122;
            OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v126, v127, "Calling result iterator with GlobalTrait: %{sensitive}s.");
            OUTLINED_FUNCTION_33_26();
            v2 = v200;
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_37();
          }

          else
          {

            sub_1C7285288(v122);
          }

          if (v2[48])
          {
            v142 = v2[66];
            OUTLINED_FUNCTION_264_1();

            OUTLINED_FUNCTION_76_12();
            v2[34] = v143;
            v2[35] = v3;
            MEMORY[0x1CCA5CD70](*v142, v142[1]);
            v144 = OUTLINED_FUNCTION_4_67();
            MEMORY[0x1CCA5CD70](v144);
            OUTLINED_FUNCTION_126_6();
            v2[42] = v145;
            v146 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v146);

            v147 = OUTLINED_FUNCTION_7_54();
            MEMORY[0x1CCA5CD70](v147, 0xE800000000000000);
            OUTLINED_FUNCTION_138_2(v2[34]);
          }

          v148 = v2[55];
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v149, v148, v150);
          OUTLINED_FUNCTION_66_2();
          swift_storeEnumTagMultiPayload();
          v151 = swift_task_alloc();
          v2[120] = v151;
          *v151 = v2;
          OUTLINED_FUNCTION_13_54();
          *(v152 + 8) = v153;
          v154 = v2[55];
        }

        else
        {
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v128, v129, v130);
          v131 = sub_1C754FEEC();
          v132 = sub_1C75511BC();
          v133 = OUTLINED_FUNCTION_52_21(v132);
          v134 = v2[64];
          if (v133)
          {
            OUTLINED_FUNCTION_41_0();
            *&v204[0] = OUTLINED_FUNCTION_31_0();
            *v1 = 136642819;
            GlobalTrait.description.getter();
            OUTLINED_FUNCTION_53_24();
            v135 = OUTLINED_FUNCTION_98_1();
            sub_1C6F765A4(v135, v136, v137);
            OUTLINED_FUNCTION_159_3();
            *(v1 + 4) = v134;
            OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v138, v139, "Not enough assets matching GlobalTrait: %{sensitive}s.");
            OUTLINED_FUNCTION_33_26();
            v2 = v200;
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_37();
          }

          else
          {

            sub_1C7285288(v134);
          }

          if (v2[48])
          {
            v155 = v2[66];
            OUTLINED_FUNCTION_263_0();

            OUTLINED_FUNCTION_76_12();
            v2[30] = v156;
            v2[31] = v3;
            MEMORY[0x1CCA5CD70](*v155, v155[1]);
            v157 = OUTLINED_FUNCTION_1_89();
            MEMORY[0x1CCA5CD70](v157);
            OUTLINED_FUNCTION_126_6();
            v2[41] = v158;
            v159 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v159);

            v160 = OUTLINED_FUNCTION_7_54();
            MEMORY[0x1CCA5CD70](v160, 0xE800000000000000);
            OUTLINED_FUNCTION_138_2(v2[30]);
          }

          v161 = v2[66];
          v162 = v2[55];
          type metadata accessor for GlobalTraitGenerator.Error(0);
          sub_1C7285360();
          v163 = v2;
          v164 = OUTLINED_FUNCTION_66_8();
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v161, v165, v166);
          OUTLINED_FUNCTION_94_2();
          swift_storeEnumTagMultiPayload();
          *v162 = v164;
          OUTLINED_FUNCTION_57_0();
          swift_storeEnumTagMultiPayload();
          v167 = swift_task_alloc();
          v168 = OUTLINED_FUNCTION_239_2(v167);
          *v168 = v169;
          OUTLINED_FUNCTION_10_59();
          *(v170 + 8) = v171;
          v154 = v163[55];
        }

        OUTLINED_FUNCTION_61_3(v154);
        OUTLINED_FUNCTION_142_0();

        return sub_1C711E948();
      }

      v90 = v2;
      v91 = v2[80];
      v92 = v90[79];
      v203 = v90[78];
      v93 = v90[71];
      v94 = v90[66];
      v95 = v90[46];
      v193 = v90[75];
      v197 = v90[47];

      sub_1C7285288(v94);

      sub_1C7550E1C();

      v96 = __swift_destroy_boxed_opaque_existential_1((v90 + 7));
      v97 = *(v93 + 8);
      v105 = OUTLINED_FUNCTION_192_1(v96, v98, v99, v100, v101, v102, v103, v104, v173, v175, v177, v179, v181, v183, v185, v188, v193);
      v97(v105);
      __swift_destroy_boxed_opaque_existential_1((v90 + 2));
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      sub_1C754F1AC();
      v106 = (*(v92 + 8))(v91, v203);
      v114 = OUTLINED_FUNCTION_173_2(v106, v107, v108, v109, v110, v111, v112, v113, v174, v176, v178, v180, v182, v184, v187, v190, v194, v197);
      v97(v114);
    }

    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_2_82();
    OUTLINED_FUNCTION_228_2();

    OUTLINED_FUNCTION_22_43();
    goto LABEL_42;
  }

  v35 = v200;
  v36 = sub_1C754FEEC();
  v37 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v37))
  {
    v38 = OUTLINED_FUNCTION_102();
    *v38 = 67109120;
    v38[1] = v34;
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v39, v40, v41, v42, v43, 8u);
    v35 = v200;
    OUTLINED_FUNCTION_109();
  }

  v199 = v185[1];
  v201 = *v185;

  *(v35 + 13) = v201;
  *(v35 + 14) = v199;
  sub_1C75504FC();
  v44 = swift_task_alloc();
  v35[111] = v44;
  *v44 = v35;
  v44[1] = sub_1C72767AC;
  OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_142_0();

  return sub_1C7280D88(v45, v46, v47, v48);
}

uint64_t sub_1C72767AC()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 896) = v0;

  if (v0)
  {
  }

  else
  {

    *(v5 + 904) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72768DC()
{
  v100 = v0;

  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  *(v0 + 912) = v1;
  if (*(*(v0 + 400) + 56) == 1)
  {
    v3 = *(v0 + 352);
    sub_1C75504FC();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v0 + 664);
  v99[0] = *(v0 + 648);
  v99[1] = v4;
  v5 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v99, v3, v0 + 16);
  if (v2)
  {
    v6 = *(v0 + 568);
    v96 = *(v0 + 560);
    v97 = *(v0 + 600);
    v98 = *(v0 + 376);
    v7 = *(v0 + 368);

    OUTLINED_FUNCTION_90();
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v8 = *(v6 + 8);
    v8(v97, v96);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    OUTLINED_FUNCTION_10_3(v7);
    OUTLINED_FUNCTION_34_20();
    sub_1C754F1AC();
    v9 = OUTLINED_FUNCTION_226_1();
    v10(v9);
    v8(v98, v96);

    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_2_82();
    OUTLINED_FUNCTION_43_24();

    OUTLINED_FUNCTION_43();
    goto LABEL_11;
  }

  v11 = v5;

  *&v99[0] = v11;
  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = *(v0 + 488);
    OUTLINED_FUNCTION_191();
    v15 = v1 + v14;
    sub_1C75504FC();
    v16 = *(v13 + 72);
    do
    {
      v17 = *(v0 + 536);
      OUTLINED_FUNCTION_0_120();
      v18 = OUTLINED_FUNCTION_57_0();
      sub_1C72853C8(v18, v19, v20);
      v21 = sub_1C75504FC();
      sub_1C73978C4(v21);
      sub_1C7285288(v17);
      v15 += v16;
      --v12;
    }

    while (v12);

    v11 = *&v99[0];
  }

  *(v0 + 920) = *(v11 + 16);

  sub_1C754F2CC();
  *&v99[0] = v1;
  swift_bridgeObjectRetain_n();
  sub_1C7283ED8(v99);

  v24 = *&v99[0];
  *(v0 + 928) = *&v99[0];
  v25 = *(v24 + 16);
  *(v0 + 936) = v25;
  if (v25)
  {
    v26 = *(v0 + 456);
    OUTLINED_FUNCTION_152_2();
    *v26 = 0;
    OUTLINED_FUNCTION_0_120();
    OUTLINED_FUNCTION_272_1(v27, v28);
    v29 = OUTLINED_FUNCTION_90();
    sub_1C72852E4(v29, v30, v31);
    OUTLINED_FUNCTION_248_2();
  }

  else
  {
    OUTLINED_FUNCTION_246_2();
  }

  *(v0 + 944) = v32;
  v33 = *(v0 + 448);
  v34 = OUTLINED_FUNCTION_137_6();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  v37 = OUTLINED_FUNCTION_90();
  sub_1C72852E4(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_69_2();
  if (__swift_getEnumTagSinglePayload(v40, v41, v33) == 1)
  {

    sub_1C754F2EC();
    sub_1C754F2EC();
    OUTLINED_FUNCTION_80_9();

    OUTLINED_FUNCTION_82();
    sub_1C7550E1C();

    OUTLINED_FUNCTION_54_22();
    v67 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_18_0(v67, v68);
    sub_1C754F1AC();
    OUTLINED_FUNCTION_14_45();
    v69 = OUTLINED_FUNCTION_18_37();
    v70(v69);

    OUTLINED_FUNCTION_25();
LABEL_11:
    OUTLINED_FUNCTION_88_9();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_69_16();
  OUTLINED_FUNCTION_29_30();
  sub_1C754F2DC();
  *(v0 + 952) = 0;
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_121_6();
  if (v42)
  {
    OUTLINED_FUNCTION_0_120();
    sub_1C72853C8(v43, v44, v45);
    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();
    v48 = OUTLINED_FUNCTION_52_21(v47);
    v49 = *(v0 + 520);
    if (v48)
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_95_11();
      *v12 = 136642819;
      GlobalTrait.description.getter();
      OUTLINED_FUNCTION_53_24();
      v50 = OUTLINED_FUNCTION_98_1();
      sub_1C6F765A4(v50, v51, v52);
      OUTLINED_FUNCTION_159_3();
      *(v12 + 4) = v49;
      OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v53, v54, "Calling result iterator with GlobalTrait: %{sensitive}s.");
      OUTLINED_FUNCTION_27_32();
      OUTLINED_FUNCTION_37();
    }

    else
    {

      sub_1C7285288(v49);
    }

    if (*(v0 + 384))
    {
      v71 = *(v0 + 528);
      OUTLINED_FUNCTION_57_21();

      OUTLINED_FUNCTION_76_12();
      *(v0 + 272) = v72;
      *(v0 + 280) = v1;
      MEMORY[0x1CCA5CD70](*v71, v71[1]);
      v73 = OUTLINED_FUNCTION_4_67();
      MEMORY[0x1CCA5CD70](v73);
      OUTLINED_FUNCTION_25_31();
      *(v0 + 336) = v74;
      sub_1C7551D8C();
      OUTLINED_FUNCTION_208_2();

      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_204_3();
      OUTLINED_FUNCTION_119_9();
    }

    v75 = *(v0 + 440);
    OUTLINED_FUNCTION_0_120();
    sub_1C72853C8(v76, v75, v77);
    OUTLINED_FUNCTION_66_2();
    swift_storeEnumTagMultiPayload();
    v78 = swift_task_alloc();
    v79 = OUTLINED_FUNCTION_146_4(v78);
    *v79 = v80;
    OUTLINED_FUNCTION_13_54();
  }

  else
  {
    OUTLINED_FUNCTION_0_120();
    sub_1C72853C8(v55, v56, v57);
    v58 = sub_1C754FEEC();
    v59 = sub_1C75511BC();
    v60 = OUTLINED_FUNCTION_52_21(v59);
    v61 = *(v0 + 512);
    if (v60)
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_95_11();
      *v12 = 136642819;
      GlobalTrait.description.getter();
      OUTLINED_FUNCTION_53_24();
      v62 = OUTLINED_FUNCTION_98_1();
      sub_1C6F765A4(v62, v63, v64);
      OUTLINED_FUNCTION_159_3();
      *(v12 + 4) = v61;
      OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v65, v66, "Not enough assets matching GlobalTrait: %{sensitive}s.");
      OUTLINED_FUNCTION_27_32();
      OUTLINED_FUNCTION_37();
    }

    else
    {

      sub_1C7285288(v61);
    }

    v83 = *(v0 + 384);
    if (v83)
    {
      v84 = *(v0 + 528);
      OUTLINED_FUNCTION_56_18();

      OUTLINED_FUNCTION_76_12();
      *(v0 + 240) = v85;
      *(v0 + 248) = v1;
      MEMORY[0x1CCA5CD70](*v84, v84[1]);
      v86 = OUTLINED_FUNCTION_1_89();
      MEMORY[0x1CCA5CD70](v86);
      OUTLINED_FUNCTION_25_31();
      *(v0 + 328) = v87;
      v61 = v0 + 328;
      sub_1C7551D8C();
      OUTLINED_FUNCTION_209_2();

      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_203_2();
      OUTLINED_FUNCTION_116_8();
    }

    OUTLINED_FUNCTION_185_2();
    v88 = OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_0_120();
    sub_1C72853C8(v61, v89, v90);
    OUTLINED_FUNCTION_94_2();
    swift_storeEnumTagMultiPayload();
    *v83 = v88;
    OUTLINED_FUNCTION_57_0();
    swift_storeEnumTagMultiPayload();
    v91 = swift_task_alloc();
    v92 = OUTLINED_FUNCTION_239_2(v91);
    *v92 = v93;
    OUTLINED_FUNCTION_10_59();
  }

  *(v81 + 8) = v82;
  OUTLINED_FUNCTION_81_14();
  OUTLINED_FUNCTION_88_9();

  return sub_1C711E948();
}

uint64_t sub_1C7277394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_63_0();
  v23 = v22[80];
  v24 = v22[79];
  v25 = v22[71];
  v26 = v22[70];
  OUTLINED_FUNCTION_174_1();
  v27 = v22[46];
  v39 = v22[47];

  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1((v22 + 7));
  v28 = *(v25 + 8);
  v29 = OUTLINED_FUNCTION_229_0();
  v28(v29);
  __swift_destroy_boxed_opaque_existential_1((v22 + 2));
  OUTLINED_FUNCTION_18_0(v27, v27[3]);
  OUTLINED_FUNCTION_231_1();
  sub_1C754F1AC();
  (*(v24 + 8))(v23, a18);
  (v28)(v39, v26);

  v40 = v22[112];
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_166_3();
  OUTLINED_FUNCTION_2_82();
  OUTLINED_FUNCTION_9_60();

  OUTLINED_FUNCTION_22_43();
  OUTLINED_FUNCTION_128_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, v39, a18, v40, a20, a21, a22);
}

uint64_t sub_1C7277560()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *(v1 + 440);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  sub_1C6FD7FC8(v2, &qword_1EC217AD0);
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7277DEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *(v1 + 440);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  sub_1C6FD7FC8(v2, &qword_1EC217AD0);
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t GlobalTraitGenerator.generateGlobalTraits(using:extendedTokens:retrievedAssets:scopingAssets:assetPertinenceFilter:textEmbeddingService:eventRecorder:progressReporter:storyGenerationDiagnosticContext:aiEventReporting:resultIterator:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  *(v1 + 408) = v30;
  *(v1 + 416) = v0;
  *(v1 + 400) = v29;
  *(v1 + 384) = v28;
  *(v1 + 368) = v6;
  *(v1 + 376) = v7;
  *(v1 + 352) = v8;
  *(v1 + 360) = v9;
  *(v1 + 344) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AD0);
  *(v1 + 424) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 432) = OUTLINED_FUNCTION_77();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219E78);
  *(v1 + 440) = v12;
  OUTLINED_FUNCTION_76(v12);
  *(v1 + 448) = OUTLINED_FUNCTION_77();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219E80);
  OUTLINED_FUNCTION_76(v13);
  *(v1 + 456) = OUTLINED_FUNCTION_81_0();
  *(v1 + 464) = swift_task_alloc();
  v14 = type metadata accessor for GlobalTrait();
  *(v1 + 472) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v1 + 480) = v15;
  *(v1 + 488) = OUTLINED_FUNCTION_81_0();
  *(v1 + 496) = swift_task_alloc();
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  *(v1 + 528) = swift_task_alloc();
  *(v1 + 536) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v16);
  *(v1 + 544) = OUTLINED_FUNCTION_77();
  v17 = sub_1C754F2FC();
  *(v1 + 552) = v17;
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 560) = v18;
  *(v1 + 568) = OUTLINED_FUNCTION_81_0();
  *(v1 + 576) = swift_task_alloc();
  *(v1 + 584) = swift_task_alloc();
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  v19 = sub_1C754F38C();
  *(v1 + 616) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v1 + 624) = v20;
  *(v1 + 632) = OUTLINED_FUNCTION_77();
  v21 = v5[1];
  *(v1 + 640) = *v5;
  *(v1 + 656) = v21;
  v22 = v3[1];
  *(v1 + 672) = *v3;
  *(v1 + 688) = v22;
  v23 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1C7279358()
{
  OUTLINED_FUNCTION_163_3();
  OUTLINED_FUNCTION_197_2();
  v1 = v0[48];
  v2 = v0[46];
  v3 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_187_2();
  if (v1)
  {
    OUTLINED_FUNCTION_261_2();
  }

  v0[88] = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  v5 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_58_20();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_260_2(&dword_1C6F5C000, v7, v8, "Global Trait generation started.");
    OUTLINED_FUNCTION_37();
  }

  sub_1C754F2CC();
  v29 = v0[52];
  __swift_project_boxed_opaque_existential_1(v0[46], *(v2 + 24));
  OUTLINED_FUNCTION_170_2();
  OUTLINED_FUNCTION_259_0();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v9 = *(v29 + 104);
  v10 = sub_1C754FEEC();
  v11 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v11))
  {
    v12 = OUTLINED_FUNCTION_102();
    *v12 = 67109120;
    v12[1] = v9;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v13, v14, v15, v16, v17, 8u);
    OUTLINED_FUNCTION_23_3();
  }

  if (v9)
  {
    type metadata accessor for GlobalTraitCompletionGeneration();
    OUTLINED_FUNCTION_233_2();
    v0[89] = v18;
    v19 = OUTLINED_FUNCTION_90();
    v20(v19);
    v21 = swift_task_alloc();
    v0[90] = v21;
    *v21 = v0;
    v21[1] = sub_1C727976C;
    OUTLINED_FUNCTION_169_3();
    OUTLINED_FUNCTION_329();

    return static GlobalTraitCompletionGeneration.generateGlobalTraitCompletion(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)();
  }

  else
  {
    type metadata accessor for GlobalTraitCompletionGeneration();
    OUTLINED_FUNCTION_233_2();
    v0[92] = v24;
    v25 = OUTLINED_FUNCTION_90();
    v26(v25);
    v27 = swift_task_alloc();
    v0[93] = v27;
    *v27 = v0;
    v27[1] = sub_1C7279FCC;
    OUTLINED_FUNCTION_61_3(v0[43]);
    OUTLINED_FUNCTION_329();

    return static GlobalTraitCompletionGeneration.generateGlobalTraitCompletions_DeprecatedGMS(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)();
  }
}

uint64_t sub_1C727976C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 728) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7279FCC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 752) = v4;
  *(v2 + 760) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C727A9A0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 824) = v5;
  *(v3 + 832) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C727AACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_163_3();
  OUTLINED_FUNCTION_197_2();
  v25 = v24[104];
  v55 = v24[100];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C6FD32D4();
  v24[105] = v55;
  sub_1C754F2DC();
  if (v25)
  {
    v26 = v24[78];
    v51 = v24[74];
    v52 = v24[79];
    v27 = v24[70];
    v49 = v24[99];
    v50 = v24[69];
    v28 = v24[46];
    v53 = v24[47];
    v54 = v24[77];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v24 + 7));
    v29 = *(v27 + 8);
    v29(v51, v50);
    __swift_destroy_boxed_opaque_existential_1((v24 + 2));
    OUTLINED_FUNCTION_10_3(v28);
    OUTLINED_FUNCTION_206_3();
    (*(v26 + 8))(v52, v54);
    v29(v53, v50);
    OUTLINED_FUNCTION_3_76();
    OUTLINED_FUNCTION_15_52();

    OUTLINED_FUNCTION_22_43();
    OUTLINED_FUNCTION_329();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, v49, v50, v51, v52, v53, v54, v25, v55, a21, a22, a23, a24);
  }

  else
  {
    v39 = swift_task_alloc();
    v24[106] = v39;
    v24[107] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    *v39 = v24;
    v39[1] = sub_1C727ADE8;
    OUTLINED_FUNCTION_195_2();
    OUTLINED_FUNCTION_329();

    return MEMORY[0x1EEE6DE18](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

void sub_1C727ADE8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 864) = v0;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_41();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C727AF18()
{
  v170 = v0;
  v4 = 0;
  v155 = v0[66];
  v157 = v0[60];
  v5 = v0[40];
  v159 = v0[105];
  v162 = *(v159 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = v4;
  for (i = v6; ; v6 = i)
  {
    v0[109] = v6;
    if (v7 == v162)
    {
      break;
    }

    if (v7 >= *(v159 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v8 = v0[66];
    v3 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v9 = *(v157 + 72);
    v4 = v7 + 1;
    OUTLINED_FUNCTION_0_120();
    sub_1C72853C8(v10, v8, v11);
    if (*(v5 + 16))
    {
      v1 = *v8;
      v2 = *(v155 + 8);
      sub_1C7551F3C();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_7();
      while (1)
      {
        OUTLINED_FUNCTION_38_23();
        if ((v12 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_222_0(*(v5 + 48)) != v1 || v13 != v2)
        {
          sub_1C7551DBC();
          OUTLINED_FUNCTION_220_1();
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        v0 = v164;
        sub_1C7285088(*(v164 + 528), *(v164 + 520));
        v6 = i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C716E538();
          v6 = i;
        }

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        v1 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_15(v16);
          sub_1C716E538();
          v6 = i;
        }

        v18 = *(v164 + 520);
        *(v6 + 16) = v1;
        sub_1C7285088(v18, v6 + v3 + v17 * v9);
        goto LABEL_2;
      }
    }

    v0 = v164;
    sub_1C7285288(*(v164 + 528));
    v7 = v4;
  }

  v19 = v0;
  v4 = v0[97];

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v20 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_58_20();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[97];
    v23 = v19[96];
    v24 = OUTLINED_FUNCTION_20_1();
    result = OUTLINED_FUNCTION_221_1(v24, 3.8522e-34);
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v28 = result;
      v4 = v19[98];
      v29 = v19[97];
      *(result + 4) = v26;

      OUTLINED_FUNCTION_202_1();

      if (!__OFADD__(v23, v29))
      {
        *(v28 + 14) = v23 + v29;

        *(v28 + 22) = v22;
        *(v28 + 24) = *(i + 16);
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v30, v31, v32, v33, v28, 0x20u);
        OUTLINED_FUNCTION_37();
        goto LABEL_25;
      }
    }

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_25:

  v34 = objc_opt_self();
  v35 = [v34 globalTraitsUseMomentValidation];
  if (([v34 globalTraitsUseMomentValidation] & 1) == 0)
  {
    v2 = v164;
    v51 = *(v164 + 864);
    *(v164 + 904) = i;
    if (*(*(v164 + 416) + 56))
    {
      v3 = *(v164 + 352);
      sub_1C75504FC();
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v164 + 656);
    v169[0] = *(v164 + 640);
    v169[1] = v52;
    v53 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v169, v3, v164 + 16);
    if (v51)
    {
      v54 = *(v164 + 624);
      v160 = *(v164 + 616);
      v55 = *(v164 + 592);
      v56 = *(v164 + 560);
      v57 = *(v164 + 552);
      v156 = *(v164 + 632);
      v158 = *(v164 + 376);

      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1(v164 + 56);
      v58 = *(v56 + 8);
      v58(v55, v57);
      v59 = OUTLINED_FUNCTION_178_0();
      OUTLINED_FUNCTION_10_3(v59);
      OUTLINED_FUNCTION_135();
      sub_1C754F1AC();
      (*(v54 + 8))(v156, v160);
      v58(v158, v57);
    }

    else
    {
      v1 = v53;

      *&v169[0] = v1;
      v60 = *(i + 16);
      if (v60)
      {
        v61 = *(v164 + 480);
        v4 = *(*(v164 + 472) + 32);
        OUTLINED_FUNCTION_191();
        v64 = v62 + v63;
        sub_1C75504FC();
        v65 = *(v61 + 72);
        do
        {
          v66 = *(v164 + 512);
          OUTLINED_FUNCTION_0_120();
          v67 = OUTLINED_FUNCTION_49_3();
          sub_1C72853C8(v67, v68, v69);
          v70 = sub_1C75504FC();
          sub_1C73978C4(v70);
          sub_1C7285288(v66);
          v64 += v65;
          --v60;
        }

        while (v60);

        v1 = *&v169[0];
      }

      *(v164 + 912) = *(v1 + 16);

      sub_1C754F2CC();
      *&v169[0] = i;
      swift_bridgeObjectRetain_n();
      sub_1C7283ED8(v169);

      v73 = *&v169[0];
      *(v164 + 920) = *&v169[0];
      v74 = *(v73 + 16);
      *(v164 + 928) = v74;
      if (v74)
      {
        v75 = *(v164 + 448);
        OUTLINED_FUNCTION_152_2();
        *v75 = 0;
        OUTLINED_FUNCTION_0_120();
        OUTLINED_FUNCTION_272_1(v76, v77);
        v78 = OUTLINED_FUNCTION_90();
        sub_1C72852E4(v78, v79, v80);
        OUTLINED_FUNCTION_248_2();
      }

      else
      {
LABEL_48:
        OUTLINED_FUNCTION_246_2();
      }

      v2[117] = v81;
      v82 = v2[55];
      v83 = OUTLINED_FUNCTION_137_6();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v82);
      v86 = OUTLINED_FUNCTION_90();
      sub_1C72852E4(v86, v87, v88);
      v89 = OUTLINED_FUNCTION_69_2();
      if (__swift_getEnumTagSinglePayload(v89, v90, v82) == 1)
      {

        sub_1C754F2EC();
        sub_1C754F2EC();
        v123 = v2[46];

        OUTLINED_FUNCTION_57_3();
        sub_1C7550E1C();

        __swift_destroy_boxed_opaque_existential_1((v2 + 7));
        __swift_destroy_boxed_opaque_existential_1((v2 + 2));
        OUTLINED_FUNCTION_12_2(v123);
        sub_1C754F1AC();
        OUTLINED_FUNCTION_241_1();
        OUTLINED_FUNCTION_145_3();
        v124(v3);

        OUTLINED_FUNCTION_25();
LABEL_42:
        OUTLINED_FUNCTION_144_4();

        __asm { BRAA            X1, X16 }
      }

      sub_1C7285088(v2[58] + *(v2[55] + 48), v2[63]);
      OUTLINED_FUNCTION_210_1();
      v2[118] = v82;
      if (!v82)
      {
        OUTLINED_FUNCTION_240();
        if (GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(v2[63], v2[114]))
        {
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v99, v100, v101);
          v102 = sub_1C754FEEC();
          v103 = sub_1C75511BC();
          v104 = OUTLINED_FUNCTION_52_21(v103);
          v105 = v2[62];
          if (v104)
          {
            OUTLINED_FUNCTION_41_0();
            *&v169[0] = OUTLINED_FUNCTION_31_0();
            *v1 = 136642819;
            GlobalTrait.description.getter();
            OUTLINED_FUNCTION_53_24();
            v106 = OUTLINED_FUNCTION_98_1();
            sub_1C6F765A4(v106, v107, v108);
            OUTLINED_FUNCTION_159_3();
            *(v1 + 4) = v105;
            OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v109, v110, "Calling result iterator with GlobalTrait: %{sensitive}s.");
            OUTLINED_FUNCTION_33_26();
            v2 = v164;
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_37();
          }

          else
          {

            sub_1C7285288(v105);
          }

          if (v2[48])
          {
            v125 = v2[63];
            OUTLINED_FUNCTION_264_1();

            OUTLINED_FUNCTION_76_12();
            v2[34] = v126;
            v2[35] = v3;
            MEMORY[0x1CCA5CD70](*v125, v125[1]);
            v127 = OUTLINED_FUNCTION_4_67();
            MEMORY[0x1CCA5CD70](v127);
            OUTLINED_FUNCTION_126_6();
            v2[42] = v128;
            v129 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v129);

            v130 = OUTLINED_FUNCTION_7_54();
            MEMORY[0x1CCA5CD70](v130, 0xE800000000000000);
            OUTLINED_FUNCTION_138_2(v2[34]);
          }

          v131 = v2[54];
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v132, v131, v133);
          OUTLINED_FUNCTION_66_2();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_6_66();
          v134 = swift_task_alloc();
          v2[119] = v134;
          *v134 = v2;
          OUTLINED_FUNCTION_11_49();
          *(v135 + 8) = v136;
          v137 = v2[54];
        }

        else
        {
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v111, v112, v113);
          v114 = sub_1C754FEEC();
          v115 = sub_1C75511BC();
          v116 = OUTLINED_FUNCTION_52_21(v115);
          v117 = v2[61];
          if (v116)
          {
            OUTLINED_FUNCTION_41_0();
            *&v169[0] = OUTLINED_FUNCTION_31_0();
            *v1 = 136642819;
            GlobalTrait.description.getter();
            OUTLINED_FUNCTION_53_24();
            v118 = OUTLINED_FUNCTION_98_1();
            sub_1C6F765A4(v118, v119, v120);
            OUTLINED_FUNCTION_159_3();
            *(v1 + 4) = v117;
            OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v121, v122, "Not enough assets matching GlobalTrait: %{sensitive}s.");
            OUTLINED_FUNCTION_33_26();
            v2 = v164;
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_37();
          }

          else
          {

            sub_1C7285288(v117);
          }

          if (v2[48])
          {
            v138 = v2[63];
            OUTLINED_FUNCTION_263_0();

            OUTLINED_FUNCTION_76_12();
            v2[30] = v139;
            v2[31] = v3;
            MEMORY[0x1CCA5CD70](*v138, v138[1]);
            v140 = OUTLINED_FUNCTION_1_89();
            MEMORY[0x1CCA5CD70](v140);
            OUTLINED_FUNCTION_126_6();
            v2[41] = v141;
            v142 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v142);

            v143 = OUTLINED_FUNCTION_7_54();
            MEMORY[0x1CCA5CD70](v143, 0xE800000000000000);
            OUTLINED_FUNCTION_138_2(v2[30]);
          }

          v144 = v2[63];
          v145 = v2[54];
          type metadata accessor for GlobalTraitGenerator.Error(0);
          sub_1C7285360();
          OUTLINED_FUNCTION_108_7();
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_0_120();
          sub_1C72853C8(v144, v146, v147);
          OUTLINED_FUNCTION_186();
          swift_storeEnumTagMultiPayload();
          *v145 = v4;
          OUTLINED_FUNCTION_57_0();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_61();
          v148 = swift_task_alloc();
          v149 = OUTLINED_FUNCTION_146_4(v148);
          *v149 = v150;
          OUTLINED_FUNCTION_12_48();
          *(v151 + 8) = v152;
          v137 = v2[54];
        }

        OUTLINED_FUNCTION_61_3(v137);
        OUTLINED_FUNCTION_144_4();

        __asm { BRAA            X1, X16 }
      }

      v91 = v2[79];
      v92 = v2[78];
      v168 = v2[77];
      v161 = v2[74];
      v93 = v2[70];
      v94 = v2[69];
      v95 = v2[63];
      v166 = v2[47];
      v96 = v2;
      v97 = v2[46];

      sub_1C7285288(v95);

      OUTLINED_FUNCTION_229_0();
      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1((v96 + 7));
      v98 = *(v93 + 8);
      v98(v161, v94);
      __swift_destroy_boxed_opaque_existential_1((v96 + 2));
      OUTLINED_FUNCTION_18_0(v97, v97[3]);
      sub_1C754F1AC();
      (*(v92 + 8))(v91, v168);
      v98(v166, v94);
    }

    OUTLINED_FUNCTION_3_76();

    OUTLINED_FUNCTION_43();
    goto LABEL_42;
  }

  v36 = v164;
  v37 = sub_1C754FEEC();
  v38 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v38))
  {
    v39 = OUTLINED_FUNCTION_102();
    *v39 = 67109120;
    v39[1] = v35;
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v40, v41, v42, v43, v44, 8u);
    v36 = v164;
    OUTLINED_FUNCTION_109();
  }

  v163 = *(v36 + 656);
  v165 = *(v36 + 640);

  *(v36 + 208) = v165;
  *(v36 + 224) = v163;
  sub_1C75504FC();
  v45 = swift_task_alloc();
  *(v36 + 880) = v45;
  *v45 = v36;
  v45[1] = sub_1C727BFD0;
  OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_144_4();

  return sub_1C7280D88(v46, v47, v48, v49);
}

uint64_t sub_1C727BFD0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 888) = v0;

  if (v0)
  {
  }

  else
  {

    *(v5 + 896) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C727C100()
{
  v97 = v0;

  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  *(v0 + 904) = v2;
  if (*(*(v0 + 416) + 56) == 1)
  {
    v4 = *(v0 + 352);
    sub_1C75504FC();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v0 + 656);
  v96[0] = *(v0 + 640);
  v96[1] = v5;
  v6 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v96, v4, v0 + 16);
  if (v3)
  {
    v7 = *(v0 + 624);
    v95 = *(v0 + 616);
    v92 = *(v0 + 592);
    v93 = *(v0 + 632);
    v8 = *(v0 + 560);
    v9 = *(v0 + 552);
    v94 = *(v0 + 376);

    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v10 = *(v8 + 8);
    v10(v92, v9);
    v11 = OUTLINED_FUNCTION_178_0();
    OUTLINED_FUNCTION_10_3(v11);
    OUTLINED_FUNCTION_135();
    sub_1C754F1AC();
    (*(v7 + 8))(v93, v95);
    v10(v94, v9);
    OUTLINED_FUNCTION_3_76();
    OUTLINED_FUNCTION_46_22();

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v12 = v6;

    *&v96[0] = v12;
    v13 = *(v2 + 16);
    if (v13)
    {
      v1 = *(v0 + 512);
      v14 = *(v0 + 480);
      OUTLINED_FUNCTION_191();
      v16 = v2 + v15;
      sub_1C75504FC();
      v4 = *(v14 + 72);
      do
      {
        v17 = *(v0 + 512);
        OUTLINED_FUNCTION_0_120();
        v18 = OUTLINED_FUNCTION_49_3();
        sub_1C72853C8(v18, v19, v20);
        v21 = sub_1C75504FC();
        sub_1C73978C4(v21);
        sub_1C7285288(v17);
        v16 += v4;
        --v13;
      }

      while (v13);

      v12 = *&v96[0];
    }

    *(v0 + 912) = *(v12 + 16);

    sub_1C754F2CC();
    *&v96[0] = v2;
    swift_bridgeObjectRetain_n();
    sub_1C7283ED8(v96);

    v24 = *&v96[0];
    *(v0 + 920) = *&v96[0];
    v25 = *(v24 + 16);
    *(v0 + 928) = v25;
    if (v25)
    {
      v26 = *(v0 + 448);
      OUTLINED_FUNCTION_152_2();
      *v26 = 0;
      OUTLINED_FUNCTION_0_120();
      OUTLINED_FUNCTION_272_1(v27, v28);
      v29 = OUTLINED_FUNCTION_90();
      sub_1C72852E4(v29, v30, v31);
      OUTLINED_FUNCTION_248_2();
    }

    else
    {
      OUTLINED_FUNCTION_246_2();
    }

    *(v0 + 936) = v32;
    v33 = *(v0 + 440);
    v34 = OUTLINED_FUNCTION_137_6();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
    v37 = OUTLINED_FUNCTION_90();
    sub_1C72852E4(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v40, v41, v33) != 1)
    {
      OUTLINED_FUNCTION_67_15();
      OUTLINED_FUNCTION_29_30();
      sub_1C754F2DC();
      *(v0 + 944) = 0;
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_212_2();
      OUTLINED_FUNCTION_120_7();
      if (v42)
      {
        OUTLINED_FUNCTION_0_120();
        sub_1C72853C8(v43, v44, v45);
        v46 = sub_1C754FEEC();
        v47 = sub_1C75511BC();
        v48 = OUTLINED_FUNCTION_52_21(v47);
        v49 = *(v0 + 496);
        if (v48)
        {
          OUTLINED_FUNCTION_41_0();
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_95_11();
          *v12 = 136642819;
          GlobalTrait.description.getter();
          OUTLINED_FUNCTION_53_24();
          v50 = OUTLINED_FUNCTION_98_1();
          sub_1C6F765A4(v50, v51, v52);
          OUTLINED_FUNCTION_159_3();
          *(v12 + 4) = v49;
          OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v53, v54, "Calling result iterator with GlobalTrait: %{sensitive}s.");
          OUTLINED_FUNCTION_27_32();
          OUTLINED_FUNCTION_37();
        }

        else
        {

          sub_1C7285288(v49);
        }

        if (*(v0 + 384))
        {
          v70 = *(v0 + 504);
          OUTLINED_FUNCTION_57_21();

          OUTLINED_FUNCTION_76_12();
          *(v0 + 272) = v71;
          *(v0 + 280) = v4;
          MEMORY[0x1CCA5CD70](*v70, v70[1]);
          v72 = OUTLINED_FUNCTION_4_67();
          MEMORY[0x1CCA5CD70](v72);
          OUTLINED_FUNCTION_25_31();
          *(v0 + 336) = v73;
          sub_1C7551D8C();
          OUTLINED_FUNCTION_208_2();

          OUTLINED_FUNCTION_7_54();
          OUTLINED_FUNCTION_204_3();
          OUTLINED_FUNCTION_119_9();
        }

        v74 = *(v0 + 432);
        OUTLINED_FUNCTION_0_120();
        sub_1C72853C8(v75, v74, v76);
        OUTLINED_FUNCTION_66_2();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_66();
        v77 = swift_task_alloc();
        *(v0 + 952) = v77;
        *v77 = v0;
        OUTLINED_FUNCTION_11_49();
      }

      else
      {
        OUTLINED_FUNCTION_0_120();
        sub_1C72853C8(v55, v56, v57);
        v58 = sub_1C754FEEC();
        v59 = sub_1C75511BC();
        v60 = OUTLINED_FUNCTION_52_21(v59);
        v61 = *(v0 + 488);
        if (v60)
        {
          OUTLINED_FUNCTION_41_0();
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_95_11();
          *v12 = 136642819;
          GlobalTrait.description.getter();
          OUTLINED_FUNCTION_53_24();
          v62 = OUTLINED_FUNCTION_98_1();
          sub_1C6F765A4(v62, v63, v64);
          OUTLINED_FUNCTION_159_3();
          *(v12 + 4) = v61;
          OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v65, v66, "Not enough assets matching GlobalTrait: %{sensitive}s.");
          OUTLINED_FUNCTION_27_32();
          OUTLINED_FUNCTION_37();
        }

        else
        {

          sub_1C7285288(v61);
        }

        v80 = *(v0 + 384);
        if (v80)
        {
          v81 = *(v0 + 504);
          OUTLINED_FUNCTION_56_18();

          OUTLINED_FUNCTION_76_12();
          *(v0 + 240) = v82;
          *(v0 + 248) = v4;
          MEMORY[0x1CCA5CD70](*v81, v81[1]);
          v83 = OUTLINED_FUNCTION_1_89();
          MEMORY[0x1CCA5CD70](v83);
          OUTLINED_FUNCTION_25_31();
          *(v0 + 328) = v84;
          v61 = v0 + 328;
          sub_1C7551D8C();
          OUTLINED_FUNCTION_209_2();

          OUTLINED_FUNCTION_7_54();
          OUTLINED_FUNCTION_203_2();
          OUTLINED_FUNCTION_116_8();
        }

        OUTLINED_FUNCTION_156_3();
        OUTLINED_FUNCTION_108_7();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_0_120();
        sub_1C72853C8(v61, v85, v86);
        OUTLINED_FUNCTION_186();
        swift_storeEnumTagMultiPayload();
        *v80 = v1;
        OUTLINED_FUNCTION_57_0();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_61();
        v87 = swift_task_alloc();
        v88 = OUTLINED_FUNCTION_146_4(v87);
        *v88 = v89;
        OUTLINED_FUNCTION_12_48();
      }

      *(v78 + 8) = v79;
      OUTLINED_FUNCTION_82_12();
      OUTLINED_FUNCTION_88_9();

      __asm { BRAA            X1, X16 }
    }

    sub_1C754F2EC();
    sub_1C754F2EC();
    OUTLINED_FUNCTION_115_9();
    v67 = *(v0 + 368);

    OUTLINED_FUNCTION_57_3();
    sub_1C7550E1C();

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_12_2(v67);
    sub_1C754F1AC();
    OUTLINED_FUNCTION_241_1();
    v68 = OUTLINED_FUNCTION_17_52();
    v69(v68);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_88_9();

  __asm { BRAA            X1, X16 }
}